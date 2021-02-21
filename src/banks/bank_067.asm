; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

Jump_067_4000:
    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    jp nc, Jump_000_0e4c                          ; $4002: $d2 $4c $0e

    ld d, [hl]                                    ; $4005: $56
    sub c                                         ; $4006: $91
    ld h, e                                       ; $4007: $63
    ld a, [hl-]                                   ; $4008: $3a
    ld l, a                                       ; $4009: $6f
    ld [de], a                                    ; $400a: $12

Jump_067_400b:
    ld b, b                                       ; $400b: $40
    xor b                                         ; $400c: $a8
    ld b, l                                       ; $400d: $45
    add hl, de                                    ; $400e: $19
    ld c, h                                       ; $400f: $4c
    dec sp                                        ; $4010: $3b
    ld c, h                                       ; $4011: $4c
    rst $08                                       ; $4012: $cf
    ld c, l                                       ; $4013: $4d
    ld c, l                                       ; $4014: $4d
    dec c                                         ; $4015: $0d
    ld c, l                                       ; $4016: $4d
    rst $38                                       ; $4017: $ff
    ldh [$fb], a                                  ; $4018: $e0 $fb
    ld [c], a                                     ; $401a: $e2
    ld c, l                                       ; $401b: $4d
    ld l, l                                       ; $401c: $6d
    rst $38                                       ; $401d: $ff
    ld l, l                                       ; $401e: $6d
    ld l, l                                       ; $401f: $6d
    ld l, $2e                                     ; $4020: $2e $2e
    ld c, $6d                                     ; $4022: $0e $6d
    ld l, l                                       ; $4024: $6d

Jump_067_4025:
    ld c, l                                       ; $4025: $4d
    ld de, $ff0d                                  ; $4026: $11 $0d $ff
    ldh [$e6], a                                  ; $4029: $e0 $e6
    ldh [$fb], a                                  ; $402b: $e0 $fb
    db $e3                                        ; $402d: $e3
    dec l                                         ; $402e: $2d
    pop af                                        ; $402f: $f1
    ldh [$dc], a                                  ; $4030: $e0 $dc
    rst $20                                       ; $4032: $e7
    ei                                            ; $4033: $fb
    db $e3                                        ; $4034: $e3
    ldh a, [$e2]                                  ; $4035: $f0 $e2
    pop hl                                        ; $4037: $e1
    db $ec                                        ; $4038: $ec
    add sp, -$36                                  ; $4039: $e8 $ca
    ldh [$c0], a                                  ; $403b: $e0 $c0
    ld [c], a                                     ; $403d: $e2
    ld l, $2e                                     ; $403e: $2e $2e
    ld l, [hl]                                    ; $4040: $6e
    ld l, $23                                     ; $4041: $2e $23
    ld c, [hl]                                    ; $4043: $4e
    ld c, $c4                                     ; $4044: $0e $c4
    ldh [$bf], a                                  ; $4046: $e0 $bf
    ldh [$ee], a                                  ; $4048: $e0 $ee
    ldh [$6d], a                                  ; $404a: $e0 $6d
    cp $e4                                        ; $404c: $fe $e4
    ld a, [c]                                     ; $404e: $f2
    db $e3                                        ; $404f: $e3
    inc a                                         ; $4050: $3c
    cp $f4                                        ; $4051: $fe $f4
    add b                                         ; $4053: $80
    pop hl                                        ; $4054: $e1
    ld l, [hl]                                    ; $4055: $6e
    ld c, $0e                                     ; $4056: $0e $0e
    ld c, l                                       ; $4058: $4d
    rst $08                                       ; $4059: $cf
    ldh [$c2], a                                  ; $405a: $e0 $c2
    ldh [rNR41], a                                ; $405c: $e0 $20
    add b                                         ; $405e: $80
    ldh [$c0], a                                  ; $405f: $e0 $c0
    ldh [$80], a                                  ; $4061: $e0 $80
    ld [c], a                                     ; $4063: $e2

Jump_067_4064:
    adc d                                         ; $4064: $8a
    db $e3                                        ; $4065: $e3
    ld h, d                                       ; $4066: $62
    ldh [$2d], a                                  ; $4067: $e0 $2d
    or e                                          ; $4069: $b3
    ldh [$a0], a                                  ; $406a: $e0 $a0
    ldh [rP1], a                                  ; $406c: $e0 $00
    add b                                         ; $406e: $80
    db $f4                                        ; $406f: $f4
    ld b, b                                       ; $4070: $40
    pop hl                                        ; $4071: $e1
    add b                                         ; $4072: $80
    pop hl                                        ; $4073: $e1
    cp l                                          ; $4074: $bd
    ldh [$c2], a                                  ; $4075: $e0 $c2
    pop hl                                        ; $4077: $e1
    ret nz                                        ; $4078: $c0

    pop hl                                        ; $4079: $e1
    cp [hl]                                       ; $407a: $be
    ld [c], a                                     ; $407b: $e2
    ld sp, $01e0                                  ; $407c: $31 $e0 $01
    dec bc                                        ; $407f: $0b
    rst $38                                       ; $4080: $ff
    db $e3                                        ; $4081: $e3
    cp l                                          ; $4082: $bd
    db $e3                                        ; $4083: $e3
    ld e, e                                       ; $4084: $5b
    db $e3                                        ; $4085: $e3
    and a                                         ; $4086: $a7
    ld [c], a                                     ; $4087: $e2
    dec a                                         ; $4088: $3d
    db $e4                                        ; $4089: $e4
    dec sp                                        ; $408a: $3b
    push hl                                       ; $408b: $e5
    ld b, b                                       ; $408c: $40
    ldh [rNR10], a                                ; $408d: $e0 $10
    and b                                         ; $408f: $a0
    pop hl                                        ; $4090: $e1
    add hl, sp                                    ; $4091: $39
    pop hl                                        ; $4092: $e1
    ret nz                                        ; $4093: $c0

    ld [c], a                                     ; $4094: $e2
    ld [hl], e                                    ; $4095: $73
    pop hl                                        ; $4096: $e1
    dec c                                         ; $4097: $0d
    jp Jump_067_77e1                              ; $4098: $c3 $e1 $77


    db $e3                                        ; $409b: $e3
    di                                            ; $409c: $f3
    jp nz, Jump_000_2d01                          ; $409d: $c2 $01 $2d

    ld e, e                                       ; $40a0: $5b
    ld [c], a                                     ; $40a1: $e2
    and [hl]                                      ; $40a2: $a6
    pop hl                                        ; $40a3: $e1
    call nz, $f2e4                                ; $40a4: $c4 $e4 $f2
    add $80                                       ; $40a7: $c6 $80
    ld [c], a                                     ; $40a9: $e2
    call $80e2                                    ; $40aa: $cd $e2 $80
    db $e4                                        ; $40ad: $e4
    db $e3                                        ; $40ae: $e3
    ld l, l                                       ; $40af: $6d
    ld l, l                                       ; $40b0: $6d
    nop                                           ; $40b1: $00
    ldh [$84], a                                  ; $40b2: $e0 $84
    ld [c], a                                     ; $40b4: $e2
    ret nz                                        ; $40b5: $c0

    rst $20                                       ; $40b6: $e7
    dec c                                         ; $40b7: $0d
    ld l, l                                       ; $40b8: $6d
    dec c                                         ; $40b9: $0d
    ld hl, $800d                                  ; $40ba: $21 $0d $80
    add sp, -$30                                  ; $40bd: $e8 $d0
    pop bc                                        ; $40bf: $c1
    add b                                         ; $40c0: $80
    jp hl                                         ; $40c1: $e9


    or b                                          ; $40c2: $b0
    jp nz, $c00d                                  ; $40c3: $c2 $0d $c0

    pop bc                                        ; $40c6: $c1
    add d                                         ; $40c7: $82
    jp nz, Jump_067_6d03                          ; $40c8: $c2 $03 $6d

    dec c                                         ; $40cb: $0d
    jp nz, $c0ec                                  ; $40cc: $c2 $ec $c0

    db $e3                                        ; $40cf: $e3
    ld e, e                                       ; $40d0: $5b
    db $e3                                        ; $40d1: $e3
    and a                                         ; $40d2: $a7
    pop bc                                        ; $40d3: $c1
    ret nc                                        ; $40d4: $d0

    pop bc                                        ; $40d5: $c1
    ld a, b                                       ; $40d6: $78
    push bc                                       ; $40d7: $c5
    inc b                                         ; $40d8: $04
    ld b, h                                       ; $40d9: $44
    db $e4                                        ; $40da: $e4
    ld e, e                                       ; $40db: $5b
    pop bc                                        ; $40dc: $c1
    ld c, $4b                                     ; $40dd: $0e $4b
    jp $e094                                      ; $40df: $c3 $94 $e0


    cp $ed                                        ; $40e2: $fe $ed
    dec l                                         ; $40e4: $2d
    pop bc                                        ; $40e5: $c1
    dec de                                        ; $40e6: $1b

Call_067_40e7:
    db $e4                                        ; $40e7: $e4
    jr c, @-$49                                   ; $40e8: $38 $b5

    pop bc                                        ; $40ea: $c1
    ld d, b                                       ; $40eb: $50
    call nz, $c245                                ; $40ec: $c4 $45 $c2
    ld l, [hl]                                    ; $40ef: $6e
    ld c, $4e                                     ; $40f0: $0e $4e
    ld [bc], a                                    ; $40f2: $02
    ld [c], a                                     ; $40f3: $e2
    ld hl, sp-$5f                                 ; $40f4: $f8 $a1
    inc c                                         ; $40f6: $0c
    dec bc                                        ; $40f7: $0b
    jp $e709                                      ; $40f8: $c3 $09 $e7


    dec hl                                        ; $40fb: $2b
    dec bc                                        ; $40fc: $0b
    add h                                         ; $40fd: $84
    ret nz                                        ; $40fe: $c0

    pop bc                                        ; $40ff: $c1
    db $e4                                        ; $4100: $e4
    ret c                                         ; $4101: $d8

    and d                                         ; $4102: $a2
    rst $10                                       ; $4103: $d7
    push bc                                       ; $4104: $c5
    ret nz                                        ; $4105: $c0

    add b                                         ; $4106: $80
    rst $20                                       ; $4107: $e7
    ld c, a                                       ; $4108: $4f
    pop bc                                        ; $4109: $c1
    cp [hl]                                       ; $410a: $be
    ldh [$bb], a                                  ; $410b: $e0 $bb
    jp $e35f                                      ; $410d: $c3 $5f $e3


    ret                                           ; $4110: $c9


    add $0b                                       ; $4111: $c6 $0b
    dec bc                                        ; $4113: $0b
    inc bc                                        ; $4114: $03
    dec hl                                        ; $4115: $2b
    dec hl                                        ; $4116: $2b
    cp a                                          ; $4117: $bf
    ld [c], a                                     ; $4118: $e2
    pop bc                                        ; $4119: $c1
    ret nz                                        ; $411a: $c0

    cp h                                          ; $411b: $bc

jr_067_411c:
    and d                                         ; $411c: $a2
    sub e                                         ; $411d: $93
    db $e4                                        ; $411e: $e4
    dec [hl]                                      ; $411f: $35
    db $e3                                        ; $4120: $e3
    sbc l                                         ; $4121: $9d
    and d                                         ; $4122: $a2
    inc e                                         ; $4123: $1c
    push bc                                       ; $4124: $c5
    and c                                         ; $4125: $a1

Jump_067_4126:
    rst $00                                       ; $4126: $c7
    ld [c], a                                     ; $4127: $e2
    ld l, $0e                                     ; $4128: $2e $0e
    ld l, [hl]                                    ; $412a: $6e
    ld [hl], l                                    ; $412b: $75
    ldh [$bd], a                                  ; $412c: $e0 $bd
    ld [c], a                                     ; $412e: $e2
    adc h                                         ; $412f: $8c
    db $e3                                        ; $4130: $e3
    rst $08                                       ; $4131: $cf
    dec c                                         ; $4132: $0d
    dec c                                         ; $4133: $0d
    ld l, e                                       ; $4134: $6b
    ld l, e                                       ; $4135: $6b
    cp a                                          ; $4136: $bf
    ldh [$7b], a                                  ; $4137: $e0 $7b
    jp $2d4d                                      ; $4139: $c3 $4d $2d


    pop bc                                        ; $413c: $c1
    dec l                                         ; $413d: $2d
    ld a, [hl+]                                   ; $413e: $2a
    ret nz                                        ; $413f: $c0

    sub e                                         ; $4140: $93
    add sp, $74                                   ; $4141: $e8 $74
    and [hl]                                      ; $4143: $a6
    ret nz                                        ; $4144: $c0

    and $84                                       ; $4145: $e6 $84
    and b                                         ; $4147: $a0
    ld c, $4e                                     ; $4148: $0e $4e
    ld a, h                                       ; $414a: $7c
    dec [hl]                                      ; $414b: $35
    db $e3                                        ; $414c: $e3
    cp a                                          ; $414d: $bf
    db $e4                                        ; $414e: $e4
    ld c, l                                       ; $414f: $4d
    ld l, e                                       ; $4150: $6b
    ld c, e                                       ; $4151: $4b
    ld c, e                                       ; $4152: $4b
    ld c, e                                       ; $4153: $4b
    dec sp                                        ; $4154: $3b
    push bc                                       ; $4155: $c5
    nop                                           ; $4156: $00
    db $fd                                        ; $4157: $fd
    and l                                         ; $4158: $a5
    jr nz, jr_067_411c                            ; $4159: $20 $c1

    or l                                          ; $415b: $b5
    pop hl                                        ; $415c: $e1
    and b                                         ; $415d: $a0
    and e                                         ; $415e: $a3
    ret nz                                        ; $415f: $c0

    jp nz, $e2ed                                  ; $4160: $c2 $ed $e2

    add [hl]                                      ; $4163: $86
    and b                                         ; $4164: $a0
    dec [hl]                                      ; $4165: $35
    rst $20                                       ; $4166: $e7
    ld e, $7e                                     ; $4167: $1e $7e
    db $e4                                        ; $4169: $e4
    ld l, e                                       ; $416a: $6b
    dec hl                                        ; $416b: $2b
    dec bc                                        ; $416c: $0b
    ld l, e                                       ; $416d: $6b
    ei                                            ; $416e: $fb
    and [hl]                                      ; $416f: $a6
    ld a, c                                       ; $4170: $79
    and b                                         ; $4171: $a0
    ld d, e                                       ; $4172: $53
    and $60                                       ; $4173: $e6 $60
    ld c, b                                       ; $4175: $48
    ret                                           ; $4176: $c9


    ld [bc], a                                    ; $4177: $02
    call nz, $e5c0                                ; $4178: $c4 $c0 $e5
    or h                                          ; $417b: $b4
    jp $c4c1                                      ; $417c: $c3 $c1 $c4


    dec hl                                        ; $417f: $2b
    ld c, e                                       ; $4180: $4b
    cp e                                          ; $4181: $bb
    xor b                                         ; $4182: $a8
    nop                                           ; $4183: $00
    cp h                                          ; $4184: $bc
    and c                                         ; $4185: $a1
    and b                                         ; $4186: $a0
    and e                                         ; $4187: $a3
    sbc b                                         ; $4188: $98
    add b                                         ; $4189: $80
    sub a                                         ; $418a: $97
    add b                                         ; $418b: $80
    sub [hl]                                      ; $418c: $96
    add d                                         ; $418d: $82
    sub e                                         ; $418e: $93
    add b                                         ; $418f: $80
    add a                                         ; $4190: $87
    add d                                         ; $4191: $82
    ld b, h                                       ; $4192: $44
    and c                                         ; $4193: $a1
    ld [$e5c0], sp                                ; $4194: $08 $c0 $e5
    add c                                         ; $4197: $81
    and c                                         ; $4198: $a1
    rst $38                                       ; $4199: $ff
    jp Jump_067_400b                              ; $419a: $c3 $0b $40


    ldh [$f2], a                                  ; $419d: $e0 $f2
    push bc                                       ; $419f: $c5
    dec sp                                        ; $41a0: $3b
    jp nz, $c1d8                                  ; $41a1: $c2 $d8 $c1

    push af                                       ; $41a4: $f5
    ld c, $98                                     ; $41a5: $0e $98
    add c                                         ; $41a7: $81
    ld l, $98                                     ; $41a8: $2e $98
    add b                                         ; $41aa: $80
    ld c, [hl]                                    ; $41ab: $4e
    ld l, $0e                                     ; $41ac: $2e $0e
    dec c                                         ; $41ae: $0d
    ld c, b                                       ; $41af: $48
    or a                                          ; $41b0: $b7
    and $80                                       ; $41b1: $e6 $80
    ld [$c4bd], a                                 ; $41b3: $ea $bd $c4
    dec hl                                        ; $41b6: $2b
    nop                                           ; $41b7: $00
    pop hl                                        ; $41b8: $e1
    ld a, [hl-]                                   ; $41b9: $3a
    and a                                         ; $41ba: $a7
    ld l, l                                       ; $41bb: $6d
    call c, Call_000_0081                         ; $41bc: $dc $81 $00
    ld h, e                                       ; $41bf: $63
    add c                                         ; $41c0: $81
    ld e, b                                       ; $41c1: $58
    add c                                         ; $41c2: $81
    ld d, a                                       ; $41c3: $57
    add c                                         ; $41c4: $81

Call_067_41c5:
    add hl, bc                                    ; $41c5: $09
    db $e3                                        ; $41c6: $e3
    or a                                          ; $41c7: $b7
    ld [c], a                                     ; $41c8: $e2
    inc bc                                        ; $41c9: $03
    and d                                         ; $41ca: $a2
    ld b, b                                       ; $41cb: $40
    db $e4                                        ; $41cc: $e4
    inc bc                                        ; $41cd: $03
    push bc                                       ; $41ce: $c5
    inc bc                                        ; $41cf: $03
    ld a, [bc]                                    ; $41d0: $0a
    ld a, [bc]                                    ; $41d1: $0a
    cp a                                          ; $41d2: $bf
    ret nz                                        ; $41d3: $c0

    ret nz                                        ; $41d4: $c0

    jp hl                                         ; $41d5: $e9


    pop hl                                        ; $41d6: $e1
    ld h, e                                       ; $41d7: $63
    call z, $14a1                                 ; $41d8: $cc $a1 $14

Call_067_41db:
    and $b7                                       ; $41db: $e6 $b7
    push hl                                       ; $41dd: $e5
    ld l, b                                       ; $41de: $68
    ret nz                                        ; $41df: $c0

    db $eb                                        ; $41e0: $eb
    cp a                                          ; $41e1: $bf
    ld h, c                                       ; $41e2: $61
    pop bc                                        ; $41e3: $c1
    ldh [$2a], a                                  ; $41e4: $e0 $2a
    ld b, b                                       ; $41e6: $40
    ldh [$2b], a                                  ; $41e7: $e0 $2b
    ld c, e                                       ; $41e9: $4b
    pop bc                                        ; $41ea: $c1
    rst $20                                       ; $41eb: $e7
    add b                                         ; $41ec: $80
    pop hl                                        ; $41ed: $e1
    ld h, e                                       ; $41ee: $63
    call nc, $89c9                                ; $41ef: $d4 $c9 $89
    pop bc                                        ; $41f2: $c1
    ld c, e                                       ; $41f3: $4b
    and $be                                       ; $41f4: $e6 $be
    and d                                         ; $41f6: $a2
    ret z                                         ; $41f7: $c8

    ld h, b                                       ; $41f8: $60
    ret nz                                        ; $41f9: $c0

    ld h, e                                       ; $41fa: $63
    ld l, e                                       ; $41fb: $6b
    inc bc                                        ; $41fc: $03
    ld a, [hl+]                                   ; $41fd: $2a

Call_067_41fe:
    ld a, [bc]                                    ; $41fe: $0a
    ld b, b                                       ; $41ff: $40
    ldh [$fc], a                                  ; $4200: $e0 $fc
    and b                                         ; $4202: $a0
    pop af                                        ; $4203: $f1
    and h                                         ; $4204: $a4
    ld h, h                                       ; $4205: $64
    ld h, b                                       ; $4206: $60
    pop hl                                        ; $4207: $e1
    ld h, e                                       ; $4208: $63
    ret nz                                        ; $4209: $c0

Call_067_420a:
    ld a, [c]                                     ; $420a: $f2
    jr c, jr_067_4226                             ; $420b: $38 $19

    and l                                         ; $420d: $a5
    dec e                                         ; $420e: $1d
    db $e3                                        ; $420f: $e3
    sub c                                         ; $4210: $91
    add c                                         ; $4211: $81
    ld c, l                                       ; $4212: $4d
    ld a, [hl+]                                   ; $4213: $2a
    ld a, [hl+]                                   ; $4214: $2a
    nop                                           ; $4215: $00
    pop hl                                        ; $4216: $e1
    ld a, e                                       ; $4217: $7b
    ldh [rP1], a                                  ; $4218: $e0 $00
    ret nz                                        ; $421a: $c0

    ld h, b                                       ; $421b: $60
    add hl, sp                                    ; $421c: $39
    and c                                         ; $421d: $a1
    adc l                                         ; $421e: $8d
    jp nz, $8216                                  ; $421f: $c2 $16 $82

Jump_067_4222:
    ld d, h                                       ; $4222: $54
    ret z                                         ; $4223: $c8

    ret nz                                        ; $4224: $c0

    db $eb                                        ; $4225: $eb

jr_067_4226:
    add l                                         ; $4226: $85
    ld h, l                                       ; $4227: $65
    cp [hl]                                       ; $4228: $be
    add d                                         ; $4229: $82
    ld a, [bc]                                    ; $422a: $0a
    jp nz, Jump_067_4ba1                          ; $422b: $c2 $a1 $4b

    ei                                            ; $422e: $fb
    ret nz                                        ; $422f: $c0

    ld l, d                                       ; $4230: $6a
    ei                                            ; $4231: $fb
    add b                                         ; $4232: $80
    db $ed                                        ; $4233: $ed
    ld b, c                                       ; $4234: $41
    ret nz                                        ; $4235: $c0

    and $14                                       ; $4236: $e6 $14
    rst $00                                       ; $4238: $c7
    or c                                          ; $4239: $b1
    ld l, l                                       ; $423a: $6d
    add b                                         ; $423b: $80
    db $ed                                        ; $423c: $ed
    ei                                            ; $423d: $fb
    and $bf                                       ; $423e: $e6 $bf
    ld b, c                                       ; $4240: $41
    dec bc                                        ; $4241: $0b
    ld l, e                                       ; $4242: $6b
    ld a, a                                       ; $4243: $7f
    and b                                         ; $4244: $a0
    dec hl                                        ; $4245: $2b
    rrca                                          ; $4246: $0f
    ld a, [bc]                                    ; $4247: $0a
    ld a, [hl+]                                   ; $4248: $2a
    ld a, [hl+]                                   ; $4249: $2a
    dec bc                                        ; $424a: $0b
    add d                                         ; $424b: $82
    and d                                         ; $424c: $a2
    add b                                         ; $424d: $80
    db $e4                                        ; $424e: $e4
    or $62                                        ; $424f: $f6 $62
    ret nz                                        ; $4251: $c0

    db $ed                                        ; $4252: $ed
    pop de                                        ; $4253: $d1
    ld l, l                                       ; $4254: $6d
    scf                                           ; $4255: $37
    jp nz, $e1e4                                  ; $4256: $c2 $e4 $e1

    ld b, d                                       ; $4259: $42
    adc b                                         ; $425a: $88
    dec hl                                        ; $425b: $2b
    add b                                         ; $425c: $80
    pop bc                                        ; $425d: $c1
    ld c, e                                       ; $425e: $4b
    dec bc                                        ; $425f: $0b
    rlca                                          ; $4260: $07
    ld a, [bc]                                    ; $4261: $0a
    ld a, [bc]                                    ; $4262: $0a
    ld a, [bc]                                    ; $4263: $0a
    ld a, a                                       ; $4264: $7f
    ld h, d                                       ; $4265: $62
    ld h, e                                       ; $4266: $63
    ld b, h                                       ; $4267: $44
    rst $08                                       ; $4268: $cf
    and b                                         ; $4269: $a0
    jp nz, $c9a5                                  ; $426a: $c2 $a5 $c9

    and e                                         ; $426d: $a3
    and b                                         ; $426e: $a0
    ld [hl], a                                    ; $426f: $77
    ld [c], a                                     ; $4270: $e2
    add l                                         ; $4271: $85
    ld b, [hl]                                    ; $4272: $46
    ld b, e                                       ; $4273: $43
    adc b                                         ; $4274: $88
    ld b, b                                       ; $4275: $40
    jp nz, $e0c0                                  ; $4276: $c2 $c0 $e0

    ld a, [hl+]                                   ; $4279: $2a
    ld a, l                                       ; $427a: $7d
    pop bc                                        ; $427b: $c1
    ld c, l                                       ; $427c: $4d
    inc bc                                        ; $427d: $03
    dec l                                         ; $427e: $2d
    ld l, l                                       ; $427f: $6d
    ld l, l                                       ; $4280: $6d
    ld b, c                                       ; $4281: $41
    ld e, e                                       ; $4282: $5b
    add l                                         ; $4283: $85
    dec sp                                        ; $4284: $3b
    ld b, l                                       ; $4285: $45
    or a                                          ; $4286: $b7
    push hl                                       ; $4287: $e5
    add l                                         ; $4288: $85
    ld c, d                                       ; $4289: $4a
    ld bc, $34c5                                  ; $428a: $01 $c5 $34
    ld b, b                                       ; $428d: $40
    pop bc                                        ; $428e: $c1
    ccf                                           ; $428f: $3f
    ret nz                                        ; $4290: $c0

    ld c, e                                       ; $4291: $4b
    add hl, hl                                    ; $4292: $29
    db $e3                                        ; $4293: $e3
    ld l, l                                       ; $4294: $6d
    ld c, $a3                                     ; $4295: $0e $a3
    ld b, b                                       ; $4297: $40
    ld e, e                                       ; $4298: $5b
    add l                                         ; $4299: $85
    jr nz, jr_067_42ee                            ; $429a: $20 $52

    ld b, c                                       ; $429c: $41
    dec sp                                        ; $429d: $3b
    ld h, d                                       ; $429e: $62
    ret nz                                        ; $429f: $c0

    inc h                                         ; $42a0: $24
    and h                                         ; $42a1: $a4
    add $42                                       ; $42a2: $c6 $42
    add a                                         ; $42a4: $87
    ld a, [bc]                                    ; $42a5: $0a
    ld b, b                                       ; $42a6: $40
    pop bc                                        ; $42a7: $c1
    ld a, $c0                                     ; $42a8: $3e $c0
    nop                                           ; $42aa: $00
    dec a                                         ; $42ab: $3d
    and h                                         ; $42ac: $a4
    inc d                                         ; $42ad: $14
    and c                                         ; $42ae: $a1
    ld e, e                                       ; $42af: $5b
    add a                                         ; $42b0: $87
    rrca                                          ; $42b1: $0f
    ld b, b                                       ; $42b2: $40
    dec sp                                        ; $42b3: $3b

jr_067_42b4:
    ld h, [hl]                                    ; $42b4: $66
    or e                                          ; $42b5: $b3
    db $e3                                        ; $42b6: $e3
    and h                                         ; $42b7: $a4
    call nz, $8257                                ; $42b8: $c4 $57 $82
    nop                                           ; $42bb: $00
    ld b, d                                       ; $42bc: $42
    add e                                         ; $42bd: $83
    ret nz                                        ; $42be: $c0

jr_067_42bf:
    ld [c], a                                     ; $42bf: $e2
    cp c                                          ; $42c0: $b9
    ldh [$c0], a                                  ; $42c1: $e0 $c0
    ret nz                                        ; $42c3: $c0

    ld b, d                                       ; $42c4: $42
    and e                                         ; $42c5: $a3
    ld [$90a2], sp                                ; $42c6: $08 $a2 $90
    ld h, a                                       ; $42c9: $67
    add b                                         ; $42ca: $80
    and $00                                       ; $42cb: $e6 $00
    dec b                                         ; $42cd: $05
    ld b, [hl]                                    ; $42ce: $46
    ld b, c                                       ; $42cf: $41
    ld hl, $66c0                                  ; $42d0: $21 $c0 $66
    add l                                         ; $42d3: $85
    and b                                         ; $42d4: $a0
    add b                                         ; $42d5: $80
    and c                                         ; $42d6: $a1
    pop bc                                        ; $42d7: $c1
    ret nz                                        ; $42d8: $c0

    ret nz                                        ; $42d9: $c0

    ret nz                                        ; $42da: $c0

    ld a, a                                       ; $42db: $7f
    ld b, c                                       ; $42dc: $41
    nop                                           ; $42dd: $00
    adc e                                         ; $42de: $8b
    add d                                         ; $42df: $82
    ld e, e                                       ; $42e0: $5b
    add [hl]                                      ; $42e1: $86
    or b                                          ; $42e2: $b0
    ld b, d                                       ; $42e3: $42
    add b                                         ; $42e4: $80
    ld b, [hl]                                    ; $42e5: $46
    and h                                         ; $42e6: $a4
    call nz, Call_067_43a7                        ; $42e7: $c4 $a7 $43
    pop de                                        ; $42ea: $d1
    and d                                         ; $42eb: $a2
    ld b, a                                       ; $42ec: $47
    ret nz                                        ; $42ed: $c0

jr_067_42ee:
    nop                                           ; $42ee: $00
    rst $38                                       ; $42ef: $ff
    and c                                         ; $42f0: $a1
    cp a                                          ; $42f1: $bf
    ld [c], a                                     ; $42f2: $e2
    pop af                                        ; $42f3: $f1
    jr nz, jr_067_42b4                            ; $42f4: $20 $be

    ld hl, $895b                                  ; $42f6: $21 $5b $89
    ld [hl], b                                    ; $42f9: $70
    ld b, a                                       ; $42fa: $47
    ld b, $67                                     ; $42fb: $06 $67
    pop bc                                        ; $42fd: $c1
    ld [bc], a                                    ; $42fe: $02
    jr c, jr_067_42bf                             ; $42ff: $38 $be

    ld b, l                                       ; $4301: $45
    adc b                                         ; $4302: $88
    pop hl                                        ; $4303: $e1
    ld a, a                                       ; $4304: $7f
    inc hl                                        ; $4305: $23
    ld a, [bc]                                    ; $4306: $0a
    ld c, e                                       ; $4307: $4b
    dec l                                         ; $4308: $2d
    cp e                                          ; $4309: $bb
    inc b                                         ; $430a: $04
    ret nz                                        ; $430b: $c0

    ld [$7da0], a                                 ; $430c: $ea $a0 $7d
    dec h                                         ; $430f: $25
    ld b, $68                                     ; $4310: $06 $68
    ld [hl], a                                    ; $4312: $77
    ld hl, $2305                                  ; $4313: $21 $05 $23
    ret nz                                        ; $4316: $c0

    pop bc                                        ; $4317: $c1
    ld a, [hl+]                                   ; $4318: $2a
    ld b, b                                       ; $4319: $40
    inc h                                         ; $431a: $24
    dec bc                                        ; $431b: $0b
    inc bc                                        ; $431c: $03
    ld [$ea4b], sp                                ; $431d: $08 $4b $ea
    call nz, $8b9b                                ; $4320: $c4 $9b $8b
    add e                                         ; $4323: $83
    dec h                                         ; $4324: $25
    ld b, $68                                     ; $4325: $06 $68
    jp nz, $fe04                                  ; $4327: $c2 $04 $fe

    ld hl, $4d09                                  ; $432a: $21 $09 $4d
    ld b, d                                       ; $432d: $42
    ld h, b                                       ; $432e: $60
    rst $38                                       ; $432f: $ff
    ld [bc], a                                    ; $4330: $02
    ld l, e                                       ; $4331: $6b
    ret nz                                        ; $4332: $c0

    pop hl                                        ; $4333: $e1
    nop                                           ; $4334: $00
    ld h, e                                       ; $4335: $63
    dec de                                        ; $4336: $1b
    adc b                                         ; $4337: $88
    cp [hl]                                       ; $4338: $be
    ld c, c                                       ; $4339: $49
    inc [hl]                                      ; $433a: $34
    ld b, $67                                     ; $433b: $06 $67
    cp a                                          ; $433d: $bf
    add hl, hl                                    ; $433e: $29
    dec hl                                        ; $433f: $2b
    ret nz                                        ; $4340: $c0

    db $e4                                        ; $4341: $e4
    dec hl                                        ; $4342: $2b
    ld c, e                                       ; $4343: $4b
    ret nz                                        ; $4344: $c0

    pop hl                                        ; $4345: $e1
    sub c                                         ; $4346: $91
    pop hl                                        ; $4347: $e1
    nop                                           ; $4348: $00
    ei                                            ; $4349: $fb
    nop                                           ; $434a: $00
    add hl, de                                    ; $434b: $19
    ld b, a                                       ; $434c: $47
    or [hl]                                       ; $434d: $b6
    and [hl]                                      ; $434e: $a6
    ld b, $69                                     ; $434f: $06 $69
    and l                                         ; $4351: $a5
    ld b, e                                       ; $4352: $43
    jp Jump_067_4025                              ; $4353: $c3 $25 $40


    push hl                                       ; $4356: $e5
    cp a                                          ; $4357: $bf
    and e                                         ; $4358: $a3
    nop                                           ; $4359: $00
    cp d                                          ; $435a: $ba
    ld [bc], a                                    ; $435b: $02
    ret                                           ; $435c: $c9


    and e                                         ; $435d: $a3
    adc [hl]                                      ; $435e: $8e
    ld bc, $4311                                  ; $435f: $01 $11 $43
    ld a, l                                       ; $4362: $7d
    and e                                         ; $4363: $a3
    ld l, e                                       ; $4364: $6b
    rst $00                                       ; $4365: $c7
    ld a, l                                       ; $4366: $7d
    and a                                         ; $4367: $a7
    push bc                                       ; $4368: $c5
    ld b, b                                       ; $4369: $40
    ld c, $bf                                     ; $436a: $0e $bf
    and $0d                                       ; $436c: $e6 $0d
    dec c                                         ; $436e: $0d
    ld [$8520], sp                                ; $436f: $08 $20 $85
    inc b                                         ; $4372: $04
    inc h                                         ; $4373: $24
    ld de, $8045                                  ; $4374: $11 $45 $80
    db $ec                                        ; $4377: $ec
    nop                                           ; $4378: $00
    cp b                                          ; $4379: $b8
    inc bc                                        ; $437a: $03
    adc h                                         ; $437b: $8c
    inc hl                                        ; $437c: $23
    jp nz, $c020                                  ; $437d: $c2 $20 $c0

    xor $fc                                       ; $4380: $ee $fc
    inc hl                                        ; $4382: $23
    ld a, d                                       ; $4383: $7a
    ld [c], a                                     ; $4384: $e2
    ld de, $3d43                                  ; $4385: $11 $43 $3d
    inc hl                                        ; $4388: $23

jr_067_4389:
    nop                                           ; $4389: $00
    ld b, [hl]                                    ; $438a: $46
    ld b, [hl]                                    ; $438b: $46
    jr nz, @+$26                                  ; $438c: $20 $24

    ld a, [bc]                                    ; $438e: $0a
    ld [hl+], a                                   ; $438f: $22
    add c                                         ; $4390: $81
    ld hl, $c4bf                                  ; $4391: $21 $bf $c4
    ret nz                                        ; $4394: $c0

    ld [$e580], a                                 ; $4395: $ea $80 $e5
    ret nz                                        ; $4398: $c0

    db $e4                                        ; $4399: $e4
    db $10                                        ; $439a: $10
    add $49                                       ; $439b: $c6 $49
    or e                                          ; $439d: $b3
    ld b, $90                                     ; $439e: $06 $90
    ld h, c                                       ; $43a0: $61
    ld a, a                                       ; $43a1: $7f
    and $4b                                       ; $43a2: $e6 $4b
    db $fd                                        ; $43a4: $fd
    ld b, l                                       ; $43a5: $45
    ld a, d                                       ; $43a6: $7a

Call_067_43a7:
    ld bc, $eec0                                  ; $43a7: $01 $c0 $ee
    nop                                           ; $43aa: $00
    xor b                                         ; $43ab: $a8
    dec b                                         ; $43ac: $05
    dec l                                         ; $43ad: $2d
    and h                                         ; $43ae: $a4
    or e                                          ; $43af: $b3
    ld [bc], a                                    ; $43b0: $02
    ld bc, $c145                                  ; $43b1: $01 $45 $c1
    set 1, c                                      ; $43b4: $cb $c9
    jr z, jr_067_4389                             ; $43b6: $28 $d1

    ld h, $ee                                     ; $43b8: $26 $ee
    rst $20                                       ; $43ba: $e7
    db $10                                        ; $43bb: $10

jr_067_43bc:
    ld h, b                                       ; $43bc: $60
    and e                                         ; $43bd: $a3
    ld h, b                                       ; $43be: $60
    inc h                                         ; $43bf: $24
    pop de                                        ; $43c0: $d1

Jump_067_43c1:
    and d                                         ; $43c1: $a2
    add d                                         ; $43c2: $82
    jr nz, jr_067_43cd                            ; $43c3: $20 $08

    ld b, c                                       ; $43c5: $41
    db $e4                                        ; $43c6: $e4
    ld h, d                                       ; $43c7: $62
    ld h, e                                       ; $43c8: $63
    ret                                           ; $43c9: $c9


    ld h, $00                                     ; $43ca: $26 $00
    dec bc                                        ; $43cc: $0b

jr_067_43cd:
    rst $20                                       ; $43cd: $e7
    nop                                           ; $43ce: $00
    ld b, a                                       ; $43cf: $47
    ld [bc], a                                    ; $43d0: $02
    ld h, b                                       ; $43d1: $60
    jr nz, jr_067_43fa                            ; $43d2: $20 $26

    pop de                                        ; $43d4: $d1
    inc bc                                        ; $43d5: $03
    ret nz                                        ; $43d6: $c0

    and b                                         ; $43d7: $a0
    ret nz                                        ; $43d8: $c0

    pop hl                                        ; $43d9: $e1
    ld b, c                                       ; $43da: $41
    push hl                                       ; $43db: $e5
    nop                                           ; $43dc: $00
    ld b, b                                       ; $43dd: $40
    ld b, d                                       ; $43de: $42
    ld [de], a                                    ; $43df: $12
    ld b, l                                       ; $43e0: $45
    ret nz                                        ; $43e1: $c0

    and $00                                       ; $43e2: $e6 $00
    ld b, [hl]                                    ; $43e4: $46
    ld l, a                                       ; $43e5: $6f
    and d                                         ; $43e6: $a2
    ret nz                                        ; $43e7: $c0

    rst $20                                       ; $43e8: $e7
    ld b, b                                       ; $43e9: $40
    inc bc                                        ; $43ea: $03
    ret nz                                        ; $43eb: $c0

    ld [c], a                                     ; $43ec: $e2
    nop                                           ; $43ed: $00
    rst $28                                       ; $43ee: $ef
    ld b, e                                       ; $43ef: $43
    dec e                                         ; $43f0: $1d
    jr nz, jr_067_43bc                            ; $43f1: $20 $c9

    daa                                           ; $43f3: $27
    ld [hl], l                                    ; $43f4: $75
    ld h, c                                       ; $43f5: $61
    ret                                           ; $43f6: $c9


    add d                                         ; $43f7: $82
    rlc l                                         ; $43f8: $cb $05

jr_067_43fa:
    inc sp                                        ; $43fa: $33
    ld h, d                                       ; $43fb: $62
    or e                                          ; $43fc: $b3
    dec b                                         ; $43fd: $05
    inc b                                         ; $43fe: $04
    cp [hl]                                       ; $43ff: $be
    inc h                                         ; $4400: $24
    ld a, $c3                                     ; $4401: $3e $c3
    dec hl                                        ; $4403: $2b
    ld b, c                                       ; $4404: $41
    db $e3                                        ; $4405: $e3
    ret                                           ; $4406: $c9


    ld c, c                                       ; $4407: $49
    pop bc                                        ; $4408: $c1
    ld h, d                                       ; $4409: $62
    adc b                                         ; $440a: $88
    ld h, a                                       ; $440b: $67
    ret nz                                        ; $440c: $c0

    push hl                                       ; $440d: $e5
    nop                                           ; $440e: $00
    db $e4                                        ; $440f: $e4
    push bc                                       ; $4410: $c5
    cp d                                          ; $4411: $ba
    ld h, d                                       ; $4412: $62
    or l                                          ; $4413: $b5
    ld b, c                                       ; $4414: $41
    rst $38                                       ; $4415: $ff
    add d                                         ; $4416: $82
    ld a, $02                                     ; $4417: $3e $02
    add c                                         ; $4419: $81
    add c                                         ; $441a: $81
    ld e, l                                       ; $441b: $5d
    add hl, bc                                    ; $441c: $09
    dec [hl]                                      ; $441d: $35
    daa                                           ; $441e: $27
    ld a, b                                       ; $441f: $78
    add b                                         ; $4420: $80
    push hl                                       ; $4421: $e5
    db $e4                                        ; $4422: $e4
    rst $00                                       ; $4423: $c7
    pop af                                        ; $4424: $f1
    ld h, d                                       ; $4425: $62
    inc c                                         ; $4426: $0c
    inc c                                         ; $4427: $0c
    inc c                                         ; $4428: $0c
    inc l                                         ; $4429: $2c
    cp a                                          ; $442a: $bf
    pop bc                                        ; $442b: $c1
    add b                                         ; $442c: $80
    ld bc, $46a1                                  ; $442d: $01 $a1 $46
    call nz, Call_000_2949                        ; $4430: $c4 $49 $29
    dec [hl]                                      ; $4433: $35
    add hl, hl                                    ; $4434: $29
    ret nz                                        ; $4435: $c0

    push hl                                       ; $4436: $e5
    or $05                                        ; $4437: $f6 $05
    sbc a                                         ; $4439: $9f
    ld bc, $000d                                  ; $443a: $01 $0d $00
    ret nz                                        ; $443d: $c0

    ld [c], a                                     ; $443e: $e2
    cp a                                          ; $443f: $bf
    and h                                         ; $4440: $a4
    ld b, $a2                                     ; $4441: $06 $a2
    add b                                         ; $4443: $80
    jp hl                                         ; $4444: $e9


    push af                                       ; $4445: $f5
    add $84                                       ; $4446: $c6 $84
    and d                                         ; $4448: $a2
    add c                                         ; $4449: $81
    db $e3                                        ; $444a: $e3
    xor l                                         ; $444b: $ad
    rlca                                          ; $444c: $07
    ld e, $7d                                     ; $444d: $1e $7d
    add d                                         ; $444f: $82
    ld c, h                                       ; $4450: $4c
    ld c, h                                       ; $4451: $4c
    ld c, h                                       ; $4452: $4c
    ld l, h                                       ; $4453: $6c
    cp [hl]                                       ; $4454: $be
    add e                                         ; $4455: $83
    jp nz, $84a3                                  ; $4456: $c2 $a3 $84

    add b                                         ; $4459: $80
    nop                                           ; $445a: $00
    ret                                           ; $445b: $c9


    dec l                                         ; $445c: $2d
    push af                                       ; $445d: $f5
    dec b                                         ; $445e: $05
    ld b, c                                       ; $445f: $41
    and $41                                       ; $4460: $e6 $41

jr_067_4462:
    dec bc                                        ; $4462: $0b
    ld a, $a5                                     ; $4463: $3e $a5
    add e                                         ; $4465: $83
    add h                                         ; $4466: $84
    cp a                                          ; $4467: $bf
    ld h, b                                       ; $4468: $60
    ret                                           ; $4469: $c9


    daa                                           ; $446a: $27
    nop                                           ; $446b: $00
    ret nz                                        ; $446c: $c0

    db $eb                                        ; $446d: $eb
    xor b                                         ; $446e: $a8
    and h                                         ; $446f: $a4
    ld b, c                                       ; $4470: $41
    ld [$467d], sp                                ; $4471: $08 $7d $46
    jp nz, $4360                                  ; $4474: $c2 $60 $43

    xor b                                         ; $4477: $a8
    jp z, Jump_067_4064                           ; $4478: $ca $64 $40

    pop hl                                        ; $447b: $e1
    db $10                                        ; $447c: $10

jr_067_447d:
    sub c                                         ; $447d: $91
    ld b, e                                       ; $447e: $43
    cp e                                          ; $447f: $bb
    ld l, a                                       ; $4480: $6f
    add b                                         ; $4481: $80
    db $e3                                        ; $4482: $e3
    ei                                            ; $4483: $fb
    dec h                                         ; $4484: $25
    ld l, e                                       ; $4485: $6b
    ld [bc], a                                    ; $4486: $02
    ld b, b                                       ; $4487: $40
    pop af                                        ; $4488: $f1
    dec b                                         ; $4489: $05
    ld b, b                                       ; $448a: $40
    ld b, b                                       ; $448b: $40
    nop                                           ; $448c: $00
    adc c                                         ; $448d: $89
    add b                                         ; $448e: $80
    call nz, $1262                                ; $448f: $c4 $62 $12
    jr nz, jr_067_44c9                            ; $4492: $20 $35

    inc h                                         ; $4494: $24
    ret nz                                        ; $4495: $c0

    inc hl                                        ; $4496: $23
    nop                                           ; $4497: $00
    ld b, e                                       ; $4498: $43
    xor l                                         ; $4499: $ad
    dec b                                         ; $449a: $05
    sub h                                         ; $449b: $94
    ld h, d                                       ; $449c: $62
    ld [bc], a                                    ; $449d: $02
    cp a                                          ; $449e: $bf
    db $e3                                        ; $449f: $e3
    ld c, l                                       ; $44a0: $4d
    pop bc                                        ; $44a1: $c1
    rst $20                                       ; $44a2: $e7
    inc b                                         ; $44a3: $04
    add d                                         ; $44a4: $82
    and b                                         ; $44a5: $a0
    add h                                         ; $44a6: $84
    ret z                                         ; $44a7: $c8

    ld b, c                                       ; $44a8: $41
    ret nz                                        ; $44a9: $c0

    ld b, a                                       ; $44aa: $47
    nop                                           ; $44ab: $00
    ld b, c                                       ; $44ac: $41
    nop                                           ; $44ad: $00
    xor l                                         ; $44ae: $ad
    ld [$8220], sp                                ; $44af: $08 $20 $82
    ld hl, sp+$09                                 ; $44b2: $f8 $09
    ld h, l                                       ; $44b4: $65
    dec b                                         ; $44b5: $05
    and b                                         ; $44b6: $a0
    adc d                                         ; $44b7: $8a
    nop                                           ; $44b8: $00
    ld l, b                                       ; $44b9: $68
    push af                                       ; $44ba: $f5
    ld b, d                                       ; $44bb: $42
    xor l                                         ; $44bc: $ad
    rlca                                          ; $44bd: $07
    nop                                           ; $44be: $00
    and b                                         ; $44bf: $a0
    ld h, d                                       ; $44c0: $62
    ret nz                                        ; $44c1: $c0

    xor $46                                       ; $44c2: $ee $46
    ld h, b                                       ; $44c4: $60
    call nz, $c163                                ; $44c5: $c4 $63 $c1
    ld b, c                                       ; $44c8: $41

jr_067_44c9:
    ld e, l                                       ; $44c9: $5d
    ld b, e                                       ; $44ca: $43
    add b                                         ; $44cb: $80
    rst $20                                       ; $44cc: $e7
    ld [hl], a                                    ; $44cd: $77
    ld b, h                                       ; $44ce: $44
    nop                                           ; $44cf: $00
    or $05                                        ; $44d0: $f6 $05
    ld a, [hl-]                                   ; $44d2: $3a
    inc h                                         ; $44d3: $24
    nop                                           ; $44d4: $00
    ld h, l                                       ; $44d5: $65
    or d                                          ; $44d6: $b2
    ld [hl+], a                                   ; $44d7: $22
    add c                                         ; $44d8: $81
    ldh [$5e], a                                  ; $44d9: $e0 $5e
    ld hl, $87a0                                  ; $44db: $21 $a0 $87
    ld sp, hl                                     ; $44de: $f9
    ld b, e                                       ; $44df: $43
    jr nz, jr_067_4462                            ; $44e0: $20 $80

    inc h                                         ; $44e2: $24
    ld bc, $4484                                  ; $44e3: $01 $84 $44
    jp nz, Jump_000_03fa                          ; $44e6: $c2 $fa $03

    add c                                         ; $44e9: $81
    add c                                         ; $44ea: $81
    dec c                                         ; $44eb: $0d
    add b                                         ; $44ec: $80
    ld b, h                                       ; $44ed: $44
    ld bc, $0060                                  ; $44ee: $01 $60 $00
    cpl                                           ; $44f1: $2f
    ld b, c                                       ; $44f2: $41
    rlca                                          ; $44f3: $07
    ld h, c                                       ; $44f4: $61
    jr nz, jr_067_447d                            ; $44f5: $20 $86

    jp nz, Jump_067_6e07                          ; $44f7: $c2 $07 $6e

jr_067_44fa:
    ld h, c                                       ; $44fa: $61
    cp a                                          ; $44fb: $bf
    ld h, $60                                     ; $44fc: $26 $60
    ld h, h                                       ; $44fe: $64
    cp l                                          ; $44ff: $bd
    ld [hl+], a                                   ; $4500: $22
    nop                                           ; $4501: $00
    ret nz                                        ; $4502: $c0

    add sp, $01                                   ; $4503: $e8 $01
    and h                                         ; $4505: $a4
    sbc [hl]                                      ; $4506: $9e
    inc h                                         ; $4507: $24
    adc a                                         ; $4508: $8f
    inc b                                         ; $4509: $04
    add b                                         ; $450a: $80
    db $e4                                        ; $450b: $e4
    nop                                           ; $450c: $00
    ld h, d                                       ; $450d: $62
    cp a                                          ; $450e: $bf
    dec h                                         ; $450f: $25
    jr jr_067_4555                                ; $4510: $18 $43

    ld [$433e], sp                                ; $4512: $08 $3e $43
    pop bc                                        ; $4515: $c1
    jr nz, jr_067_4596                            ; $4516: $20 $7e

    ldh [$2d], a                                  ; $4518: $e0 $2d
    add c                                         ; $451a: $81
    ld b, c                                       ; $451b: $41
    ld b, c                                       ; $451c: $41
    and e                                         ; $451d: $a3
    add [hl]                                      ; $451e: $86
    push bc                                       ; $451f: $c5
    ld e, d                                       ; $4520: $5a
    ld b, c                                       ; $4521: $41
    jr nz, jr_067_44fa                            ; $4522: $20 $d6

    ld b, h                                       ; $4524: $44
    ld b, e                                       ; $4525: $43
    ld h, e                                       ; $4526: $63
    ld l, d                                       ; $4527: $6a
    add hl, bc                                    ; $4528: $09
    ld a, [hl]                                    ; $4529: $7e
    ld b, d                                       ; $452a: $42
    ld a, [hl]                                    ; $452b: $7e
    add b                                         ; $452c: $80
    ld l, l                                       ; $452d: $6d
    nop                                           ; $452e: $00
    ld c, b                                       ; $452f: $48
    ld sp, $00e2                                  ; $4530: $31 $e2 $00
    ret nc                                        ; $4533: $d0

    inc b                                         ; $4534: $04
    pop bc                                        ; $4535: $c1
    jr z, jr_067_4578                             ; $4536: $28 $40

    and $6a                                       ; $4538: $e6 $6a
    inc l                                         ; $453a: $2c
    ei                                            ; $453b: $fb
    inc h                                         ; $453c: $24
    ret nz                                        ; $453d: $c0

    dec h                                         ; $453e: $25
    rst $38                                       ; $453f: $ff
    ld h, c                                       ; $4540: $61
    or b                                          ; $4541: $b0
    ld b, b                                       ; $4542: $40
    ld b, b                                       ; $4543: $40

Jump_067_4544:
jr_067_4544:
    rst $20                                       ; $4544: $e7
    ld [bc], a                                    ; $4545: $02
    call nc, Call_067_7607                        ; $4546: $d4 $07 $76
    db $e4                                        ; $4549: $e4
    ret nz                                        ; $454a: $c0

    xor $6a                                       ; $454b: $ee $6a
    dec b                                         ; $454d: $05
    add e                                         ; $454e: $83
    and d                                         ; $454f: $a2
    dec bc                                        ; $4550: $0b
    inc a                                         ; $4551: $3c
    ld b, b                                       ; $4552: $40
    dec b                                         ; $4553: $05
    ld l, e                                       ; $4554: $6b

jr_067_4555:
    ld a, $a1                                     ; $4555: $3e $a1
    dec l                                         ; $4557: $2d
    ld c, l                                       ; $4558: $4d
    pop hl                                        ; $4559: $e1
    call nc, $c00c                                ; $455a: $d4 $0c $c0
    dec b                                         ; $455d: $05
    ccf                                           ; $455e: $3f
    ld a, [hl+]                                   ; $455f: $2a
    ld a, $46                                     ; $4560: $3e $46
    ld b, $4e                                     ; $4562: $06 $4e
    nop                                           ; $4564: $00
    ld l, e                                       ; $4565: $6b
    ld c, e                                       ; $4566: $4b
    rst $38                                       ; $4567: $ff
    db $e3                                        ; $4568: $e3
    jp z, $d020                                   ; $4569: $ca $20 $d0

    ld h, h                                       ; $456c: $64
    reti                                          ; $456d: $d9


    add [hl]                                      ; $456e: $86
    add a                                         ; $456f: $87
    ld [hl+], a                                   ; $4570: $22
    nop                                           ; $4571: $00
    cp l                                          ; $4572: $bd
    and $bf                                       ; $4573: $e6 $bf
    add hl, hl                                    ; $4575: $29
    or [hl]                                       ; $4576: $b6
    inc bc                                        ; $4577: $03

jr_067_4578:
    adc $64                                       ; $4578: $ce $64
    ld [$d046], sp                                ; $457a: $08 $46 $d0
    ld h, l                                       ; $457d: $65
    cp l                                          ; $457e: $bd
    ld l, b                                       ; $457f: $68
    ld b, b                                       ; $4580: $40
    rst $20                                       ; $4581: $e7
    jr jr_067_4544                                ; $4582: $18 $c0

    db $ec                                        ; $4584: $ec
    sbc [hl]                                      ; $4585: $9e
    and l                                         ; $4586: $a5
    sub c                                         ; $4587: $91
    nop                                           ; $4588: $00
    dec l                                         ; $4589: $2d
    dec l                                         ; $458a: $2d
    db $fc                                        ; $458b: $fc
    ldh [$89], a                                  ; $458c: $e0 $89
    ld bc, $64e1                                  ; $458e: $01 $e1 $64

Jump_067_4591:
    nop                                           ; $4591: $00
    push de                                       ; $4592: $d5
    adc $3b                                       ; $4593: $ce $3b
    rlca                                          ; $4595: $07

jr_067_4596:
    ld [hl], h                                    ; $4596: $74
    ld h, $3e                                     ; $4597: $26 $3e
    ld b, [hl]                                    ; $4599: $46
    cp e                                          ; $459a: $bb
    pop bc                                        ; $459b: $c1
    dec d                                         ; $459c: $15
    add b                                         ; $459d: $80
    add a                                         ; $459e: $87
    ld [bc], a                                    ; $459f: $02
    db $10                                        ; $45a0: $10
    add l                                         ; $45a1: $85
    nop                                           ; $45a2: $00
    add b                                         ; $45a3: $80
    xor $00                                       ; $45a4: $ee $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    db $dd                                        ; $45a8: $dd
    and b                                         ; $45a9: $a0
    rst $38                                       ; $45aa: $ff
    db $ec                                        ; $45ab: $ec
    ret c                                         ; $45ac: $d8

    push de                                       ; $45ad: $d5
    ret c                                         ; $45ae: $d8

    db $ed                                        ; $45af: $ed
    pop hl                                        ; $45b0: $e1
    sbc $df                                       ; $45b1: $de $df
    or $e7                                        ; $45b3: $f6 $e7
    ldh [$e8], a                                  ; $45b5: $e0 $e8
    jp hl                                         ; $45b7: $e9


    ld [c], a                                     ; $45b8: $e2
    ldh [$e2], a                                  ; $45b9: $e0 $e2
    db $e3                                        ; $45bb: $e3
    and b                                         ; $45bc: $a0
    and b                                         ; $45bd: $a0
    db $e3                                        ; $45be: $e3
    and $e7                                       ; $45bf: $e6 $e7
    reti                                          ; $45c1: $d9


    db $ed                                        ; $45c2: $ed
    jp z, $c2f3                                   ; $45c3: $ca $f3 $c2

    ldh [$d2], a                                  ; $45c6: $e0 $d2
    ret nc                                        ; $45c8: $d0

    jp nc, $bf9e                                  ; $45c9: $d2 $9e $bf

    pop hl                                        ; $45cc: $e1
    ldh [$e1], a                                  ; $45cd: $e0 $e1
    and b                                         ; $45cf: $a0
    ld [$e7a5], a                                 ; $45d0: $ea $a5 $e7

jr_067_45d3:
    or a                                          ; $45d3: $b7
    ldh [$eb], a                                  ; $45d4: $e0 $eb
    sbc $be                                       ; $45d6: $de $be
    ld a, [$d0d3]                                 ; $45d8: $fa $d3 $d0
    db $d3                                        ; $45db: $d3
    and b                                         ; $45dc: $a0
    db $dd                                        ; $45dd: $dd
    ldh [$d8], a                                  ; $45de: $e0 $d8
    jp nc, $d0df                                  ; $45e0: $d2 $df $d0

    pop de                                        ; $45e3: $d1
    ret nc                                        ; $45e4: $d0

    jp nc, $8ad7                                  ; $45e5: $d2 $d7 $8a

    db $e4                                        ; $45e8: $e4
    and b                                         ; $45e9: $a0
    sbc a                                         ; $45ea: $9f
    ld a, l                                       ; $45eb: $7d
    sbc l                                         ; $45ec: $9d
    rst $38                                       ; $45ed: $ff
    db $e3                                        ; $45ee: $e3
    sbc a                                         ; $45ef: $9f
    and b                                         ; $45f0: $a0
    and b                                         ; $45f1: $a0
    db $ec                                        ; $45f2: $ec
    db $ed                                        ; $45f3: $ed
    ld a, [hl]                                    ; $45f4: $7e
    ld a, [$d7d7]                                 ; $45f5: $fa $d7 $d7
    call nc, $ddd7                                ; $45f8: $d4 $d7 $dd
    pop hl                                        ; $45fb: $e1
    rst $10                                       ; $45fc: $d7
    add d                                         ; $45fd: $82
    ldh [$d4], a                                  ; $45fe: $e0 $d4
    rst $10                                       ; $4600: $d7
    ld e, c                                       ; $4601: $59
    jp c, $e293                                   ; $4602: $da $93 $e2

    jp $9ce0                                      ; $4605: $c3 $e0 $9c


    ld b, [hl]                                    ; $4608: $46
    rst $38                                       ; $4609: $ff

Jump_067_460a:
    db $e3                                        ; $460a: $e3
    sbc h                                         ; $460b: $9c
    cp l                                          ; $460c: $bd
    ld [c], a                                     ; $460d: $e2
    halt                                          ; $460e: $76
    dec h                                         ; $460f: $25
    db $e3                                        ; $4610: $e3
    db $e4                                        ; $4611: $e4
    push hl                                       ; $4612: $e5
    dec [hl]                                      ; $4613: $35
    pop af                                        ; $4614: $f1
    jp c, $dad9                                   ; $4615: $da $d9 $da

    ld sp, hl                                     ; $4618: $f9
    ld [c], a                                     ; $4619: $e2
    xor [hl]                                      ; $461a: $ae
    cp b                                          ; $461b: $b8
    ldh [$d9], a                                  ; $461c: $e0 $d9
    jp c, $93dc                                   ; $461e: $da $dc $93

    pop hl                                        ; $4621: $e1

Jump_067_4622:
    sbc a                                         ; $4622: $9f
    jp $c3e1                                      ; $4623: $c3 $e1 $c3


    and l                                         ; $4626: $a5
    sub b                                         ; $4627: $90
    rst $38                                       ; $4628: $ff
    push hl                                       ; $4629: $e5
    or [hl]                                       ; $462a: $b6
    ld a, h                                       ; $462b: $7c
    ldh [$5b], a                                  ; $462c: $e0 $5b
    pop hl                                        ; $462e: $e1
    ld [$d3f5], a                                 ; $462f: $ea $f5 $d3
    call c, $db8b                                 ; $4632: $dc $8b $db
    call c, $c1cd                                 ; $4635: $dc $cd $c1
    call c, $e0b8                                 ; $4638: $dc $b8 $e0
    or $e0                                        ; $463b: $f6 $e0
    ld b, a                                       ; $463d: $47
    ldh [$a2], a                                  ; $463e: $e0 $a2
    ld [de], a                                    ; $4640: $12
    add h                                         ; $4641: $84
    ld [c], a                                     ; $4642: $e2
    call nz, $e0c0                                ; $4643: $c4 $c0 $e0
    cp h                                          ; $4646: $bc
    db $e4                                        ; $4647: $e4
    sbc [hl]                                      ; $4648: $9e
    ld e, e                                       ; $4649: $5b
    db $e3                                        ; $464a: $e3
    xor h                                         ; $464b: $ac
    jp $c6d0                                      ; $464c: $c3 $d0 $c6


    jr nc, jr_067_45d3                            ; $464f: $30 $82

    ret                                           ; $4651: $c9


    call $b8c0                                    ; $4652: $cd $c0 $b8
    ld [c], a                                     ; $4655: $e2
    ld [$b6e0], sp                                ; $4656: $08 $e0 $b6
    sub b                                         ; $4659: $90
    ld b, [hl]                                    ; $465a: $46
    pop hl                                        ; $465b: $e1
    add e                                         ; $465c: $83
    db $e3                                        ; $465d: $e3
    nop                                           ; $465e: $00
    cp h                                          ; $465f: $bc
    db $e3                                        ; $4660: $e3

Call_067_4661:
    add b                                         ; $4661: $80
    pop hl                                        ; $4662: $e1
    ld e, e                                       ; $4663: $5b
    db $e4                                        ; $4664: $e4
    or l                                          ; $4665: $b5
    pop bc                                        ; $4666: $c1
    ret nc                                        ; $4667: $d0

    jp nz, $cc84                                  ; $4668: $c2 $84 $cc

    ld d, a                                       ; $466b: $57
    ret nz                                        ; $466c: $c0

    adc l                                         ; $466d: $8d
    pop bc                                        ; $466e: $c1
    jp $e7e6                                      ; $466f: $c3 $e6 $e7


    pop bc                                        ; $4672: $c1
    ldh [$88], a                                  ; $4673: $e0 $88
    rst $20                                       ; $4675: $e7
    cp h                                          ; $4676: $bc
    db $e3                                        ; $4677: $e3
    ld b, c                                       ; $4678: $41
    ldh [$de], a                                  ; $4679: $e0 $de
    rst $18                                       ; $467b: $df
    ret nz                                        ; $467c: $c0

    and e                                         ; $467d: $a3
    db $e3                                        ; $467e: $e3
    or l                                          ; $467f: $b5
    jp nz, $e275                                  ; $4680: $c2 $75 $e2

    rrca                                          ; $4683: $0f
    call nz, $c04e                                ; $4684: $c4 $4e $c0
    ld [hl], d                                    ; $4687: $72
    jp hl                                         ; $4688: $e9


    add sp, -$17                                  ; $4689: $e8 $e9
    ld a, c                                       ; $468b: $79
    sbc [hl]                                      ; $468c: $9e
    ld c, h                                       ; $468d: $4c
    ld [c], a                                     ; $468e: $e2
    ld b, h                                       ; $468f: $44
    pop hl                                        ; $4690: $e1
    sub c                                         ; $4691: $91
    ld b, l                                       ; $4692: $45
    ld b, l                                       ; $4693: $45
    sub c                                         ; $4694: $91
    ld b, d                                       ; $4695: $42
    push hl                                       ; $4696: $e5
    ret nz                                        ; $4697: $c0

    ld h, c                                       ; $4698: $61
    pop hl                                        ; $4699: $e1
    pop hl                                        ; $469a: $e1
    and [hl]                                      ; $469b: $a6
    ld [hl], l                                    ; $469c: $75
    push hl                                       ; $469d: $e5
    add l                                         ; $469e: $85
    pop bc                                        ; $469f: $c1
    ld c, h                                       ; $46a0: $4c
    jp nz, $a1cb                                  ; $46a1: $c2 $cb $a1

    ret c                                         ; $46a4: $d8

    push de                                       ; $46a5: $d5
    ld a, [c]                                     ; $46a6: $f2
    call nz, $9ea3                                ; $46a7: $c4 $a3 $9e
    ld c, h                                       ; $46aa: $4c
    ld [c], a                                     ; $46ab: $e2
    pop bc                                        ; $46ac: $c1
    pop hl                                        ; $46ad: $e1
    cp l                                          ; $46ae: $bd
    inc l                                         ; $46af: $2c
    inc l                                         ; $46b0: $2c
    cp l                                          ; $46b1: $bd
    add b                                         ; $46b2: $80
    cp a                                          ; $46b3: $bf
    ld [c], a                                     ; $46b4: $e2
    pop bc                                        ; $46b5: $c1
    ret nz                                        ; $46b6: $c0

    ld l, $c2                                     ; $46b7: $2e $c2
    sub e                                         ; $46b9: $93
    push hl                                       ; $46ba: $e5
    ld [hl], l                                    ; $46bb: $75
    db $e4                                        ; $46bc: $e4
    adc h                                         ; $46bd: $8c
    call nz, $a0cc                                ; $46be: $c4 $cc $a0
    rst $10                                       ; $46c1: $d7
    adc [hl]                                      ; $46c2: $8e
    push bc                                       ; $46c3: $c5
    and c                                         ; $46c4: $a1
    sub $d4                                       ; $46c5: $d6 $d4
    sub $bd                                       ; $46c7: $d6 $bd
    pop hl                                        ; $46c9: $e1
    ld b, b                                       ; $46ca: $40
    db $e3                                        ; $46cb: $e3
    add l                                         ; $46cc: $85
    ret nz                                        ; $46cd: $c0

    ld b, [hl]                                    ; $46ce: $46
    rst $18                                       ; $46cf: $df
    dec l                                         ; $46d0: $2d
    jr nz, @+$22                                  ; $46d1: $20 $20

    ld [hl-], a                                   ; $46d3: $32
    ld b, l                                       ; $46d4: $45
    add b                                         ; $46d5: $80
    jp $9fa2                                      ; $46d6: $c3 $a2 $9f


    ld e, b                                       ; $46d9: $58
    xor a                                         ; $46da: $af
    and c                                         ; $46db: $a1
    sub e                                         ; $46dc: $93
    rst $20                                       ; $46dd: $e7
    add l                                         ; $46de: $85
    rst $00                                       ; $46df: $c7
    jp c, $02d9                                   ; $46e0: $da $d9 $02

    ret nz                                        ; $46e3: $c0

    jp c, $a0bd                                   ; $46e4: $da $bd $a0

    push bc                                       ; $46e7: $c5
    sub $02                                       ; $46e8: $d6 $02
    pop bc                                        ; $46ea: $c1
    sub $b7                                       ; $46eb: $d6 $b7
    and b                                         ; $46ed: $a0
    ret nz                                        ; $46ee: $c0

    ret nz                                        ; $46ef: $c0

    ld b, [hl]                                    ; $46f0: $46
    jp nz, Jump_067_4591                          ; $46f1: $c2 $91 $45

    rrca                                          ; $46f4: $0f
    ld a, [hl+]                                   ; $46f5: $2a
    ld h, $24                                     ; $46f6: $26 $24
    ld b, d                                       ; $46f8: $42
    ld a, [hl]                                    ; $46f9: $7e
    call nz, $c13e                                ; $46fa: $c4 $3e $c1
    sub e                                         ; $46fd: $93
    and $64                                       ; $46fe: $e6 $64
    xor b                                         ; $4700: $a8
    call nz, $c044                                ; $4701: $c4 $44 $c0
    ld [bc], a                                    ; $4704: $02
    ret nz                                        ; $4705: $c0

    call c, $a07d                                 ; $4706: $dc $7d $a0
    ld [hl], a                                    ; $4709: $77
    db $e3                                        ; $470a: $e3
    ld b, c                                       ; $470b: $41
    and c                                         ; $470c: $a1
    sbc a                                         ; $470d: $9f
    or [hl]                                       ; $470e: $b6
    cp [hl]                                       ; $470f: $be
    ld a, $e3                                     ; $4710: $3e $e3
    ld b, [hl]                                    ; $4712: $46
    add hl, sp                                    ; $4713: $39
    dec [hl]                                      ; $4714: $35
    inc a                                         ; $4715: $3c
    ld b, h                                       ; $4716: $44
    ld [hl-], a                                   ; $4717: $32
    db $e4                                        ; $4718: $e4
    jp $fd50                                      ; $4719: $c3 $50 $fd


    and c                                         ; $471c: $a1
    sub e                                         ; $471d: $93
    push hl                                       ; $471e: $e5
    ld [bc], a                                    ; $471f: $02
    rst $08                                       ; $4720: $cf
    add h                                         ; $4721: $84
    and b                                         ; $4722: $a0
    db $dd                                        ; $4723: $dd
    ld [hl], a                                    ; $4724: $77
    pop hl                                        ; $4725: $e1
    db $dd                                        ; $4726: $dd
    ld h, [hl]                                    ; $4727: $66
    jp nz, $a17d                                  ; $4728: $c2 $7d $a1

    ld a, [hl]                                    ; $472b: $7e
    jp Jump_000_3a44                              ; $472c: $c3 $44 $3a


    dec [hl]                                      ; $472f: $35
    dec [hl]                                      ; $4730: $35
    ld b, d                                       ; $4731: $42
    ld a, h                                       ; $4732: $7c
    push bc                                       ; $4733: $c5
    ldh a, [$bc]                                  ; $4734: $f0 $bc
    and d                                         ; $4736: $a2
    sub e                                         ; $4737: $93
    db $e4                                        ; $4738: $e4
    jp nc, Jump_067_7dc8                          ; $4739: $d2 $c8 $7d

    and [hl]                                      ; $473c: $a6
    db $d3                                        ; $473d: $d3
    ret nc                                        ; $473e: $d0

    ret nc                                        ; $473f: $d0

    db $dd                                        ; $4740: $dd
    rst $00                                       ; $4741: $c7
    reti                                          ; $4742: $d9


Call_067_4743:
    db $dd                                        ; $4743: $dd
    pop de                                        ; $4744: $d1
    sbc e                                         ; $4745: $9b
    and c                                         ; $4746: $a1
    cp l                                          ; $4747: $bd
    ret nz                                        ; $4748: $c0

    ld b, $c2                                     ; $4749: $06 $c2
    ld b, b                                       ; $474b: $40
    dec [hl]                                      ; $474c: $35
    ld b, a                                       ; $474d: $47
    dec [hl]                                      ; $474e: $35
    dec [hl]                                      ; $474f: $35
    add hl, sp                                    ; $4750: $39
    ld a, [hl]                                    ; $4751: $7e
    jp nz, $a276                                  ; $4752: $c2 $76 $a2

    cp h                                          ; $4755: $bc
    and b                                         ; $4756: $a0
    db $eb                                        ; $4757: $eb
    db $dd                                        ; $4758: $dd
    and e                                         ; $4759: $a3
    ld [hl], b                                    ; $475a: $70
    sub l                                         ; $475b: $95
    ret nz                                        ; $475c: $c0

    db $d3                                        ; $475d: $d3
    ret nz                                        ; $475e: $c0

    ld c, b                                       ; $475f: $48
    jp $c489                                      ; $4760: $c3 $89 $c4


    call c, $d4d7                                 ; $4763: $dc $d7 $d4
    or a                                          ; $4766: $b7
    ret nz                                        ; $4767: $c0

    ld hl, sp+$00                                 ; $4768: $f8 $00
    and c                                         ; $476a: $a1
    cp [hl]                                       ; $476b: $be
    and e                                         ; $476c: $a3
    ld b, c                                       ; $476d: $41
    pop bc                                        ; $476e: $c1
    ld b, h                                       ; $476f: $44
    ld [hl], $35                                  ; $4770: $36 $35
    dec [hl]                                      ; $4772: $35
    ld a, [hl-]                                   ; $4773: $3a
    or h                                          ; $4774: $b4
    cp a                                          ; $4775: $bf
    jp nz, $c26e                                  ; $4776: $c2 $6e $c2

    sbc [hl]                                      ; $4779: $9e
    cp c                                          ; $477a: $b9
    add [hl]                                      ; $477b: $86
    db $d3                                        ; $477c: $d3
    sub $8b                                       ; $477d: $d6 $8b
    pop bc                                        ; $477f: $c1
    sub $0c                                       ; $4780: $d6 $0c
    adc d                                         ; $4782: $8a
    add b                                         ; $4783: $80
    or a                                          ; $4784: $b7
    rst $20                                       ; $4785: $e7
    jp c, $b7d9                                   ; $4786: $da $d9 $b7

    ret nz                                        ; $4789: $c0

    nop                                           ; $478a: $00
    and c                                         ; $478b: $a1
    inc bc                                        ; $478c: $03
    add c                                         ; $478d: $81
    ld a, a                                       ; $478e: $7f
    ldh [rIF], a                                  ; $478f: $e0 $0f
    sub c                                         ; $4791: $91
    ld b, l                                       ; $4792: $45
    ld c, b                                       ; $4793: $48
    ld c, c                                       ; $4794: $49
    ld a, a                                       ; $4795: $7f
    pop hl                                        ; $4796: $e1
    ccf                                           ; $4797: $3f
    push hl                                       ; $4798: $e5
    db $fc                                        ; $4799: $fc
    add d                                         ; $479a: $82
    pop hl                                        ; $479b: $e1
    ld h, e                                       ; $479c: $63
    ld bc, $d9d8                                  ; $479d: $01 $d8 $d9
    ret nz                                        ; $47a0: $c0

    sub [hl]                                      ; $47a1: $96
    add c                                         ; $47a2: $81
    ld c, d                                       ; $47a3: $4a
    add b                                         ; $47a4: $80
    or a                                          ; $47a5: $b7
    and $fc                                       ; $47a6: $e6 $fc
    add b                                         ; $47a8: $80
    or a                                          ; $47a9: $b7
    ret nz                                        ; $47aa: $c0

    nop                                           ; $47ab: $00
    and d                                         ; $47ac: $a2
    cp h                                          ; $47ad: $bc
    inc bc                                        ; $47ae: $03
    add b                                         ; $47af: $80
    ccf                                           ; $47b0: $3f
    ldh [rLYC], a                                 ; $47b1: $e0 $45
    ld b, a                                       ; $47b3: $47
    ld h, b                                       ; $47b4: $60
    ld d, d                                       ; $47b5: $52
    add b                                         ; $47b6: $80
    ldh [$35], a                                  ; $47b7: $e0 $35
    cp c                                          ; $47b9: $b9
    ld b, b                                       ; $47ba: $40
    cp l                                          ; $47bb: $bd
    add a                                         ; $47bc: $87
    pop hl                                        ; $47bd: $e1
    ld h, l                                       ; $47be: $65
    db $d3                                        ; $47bf: $d3
    ret nc                                        ; $47c0: $d0

    db $dd                                        ; $47c1: $dd
    sub [hl]                                      ; $47c2: $96
    add c                                         ; $47c3: $81
    db $dd                                        ; $47c4: $dd
    sub b                                         ; $47c5: $90
    dec d                                         ; $47c6: $15
    add b                                         ; $47c7: $80
    or a                                          ; $47c8: $b7
    and $b9                                       ; $47c9: $e6 $b9
    add e                                         ; $47cb: $83
    cp b                                          ; $47cc: $b8
    add b                                         ; $47cd: $80
    db $eb                                        ; $47ce: $eb
    adc l                                         ; $47cf: $8d
    ld h, c                                       ; $47d0: $61
    ld a, h                                       ; $47d1: $7c
    and b                                         ; $47d2: $a0
    ld b, l                                       ; $47d3: $45
    rst $38                                       ; $47d4: $ff
    ld d, [hl]                                    ; $47d5: $56
    ld h, c                                       ; $47d6: $61
    add hl, sp                                    ; $47d7: $39
    dec [hl]                                      ; $47d8: $35
    dec [hl]                                      ; $47d9: $35
    jr c, @+$39                                   ; $47da: $38 $37

    ld b, h                                       ; $47dc: $44
    ld [hl], c                                    ; $47dd: $71
    sub c                                         ; $47de: $91
    nop                                           ; $47df: $00
    and c                                         ; $47e0: $a1
    ld a, [$e161]                                 ; $47e1: $fa $61 $e1
    ld h, [hl]                                    ; $47e4: $66
    db $d3                                        ; $47e5: $d3
    ret nc                                        ; $47e6: $d0

    pop de                                        ; $47e7: $d1
    push de                                       ; $47e8: $d5
    ret nz                                        ; $47e9: $c0

    rra                                           ; $47ea: $1f
    ret nc                                        ; $47eb: $d0

    ret nc                                        ; $47ec: $d0

    db $d3                                        ; $47ed: $d3
    jp c, $b7a0                                   ; $47ee: $da $a0 $b7

    and $27                                       ; $47f1: $e6 $27
    add l                                         ; $47f3: $85
    sub $62                                       ; $47f4: $d6 $62
    sbc $be                                       ; $47f6: $de $be
    add b                                         ; $47f8: $80
    call nz, Call_067_5591                        ; $47f9: $c4 $91 $55
    ld d, d                                       ; $47fc: $52
    add c                                         ; $47fd: $81
    ret nz                                        ; $47fe: $c0

    ld b, b                                       ; $47ff: $40
    ld e, a                                       ; $4800: $5f
    ccf                                           ; $4801: $3f
    ld c, c                                       ; $4802: $49
    ld b, l                                       ; $4803: $45
    sub c                                         ; $4804: $91
    call nz, $a190                                ; $4805: $c4 $90 $a1
    rlca                                          ; $4808: $07
    add c                                         ; $4809: $81
    pop hl                                        ; $480a: $e1
    ld h, l                                       ; $480b: $65
    inc a                                         ; $480c: $3c
    pop de                                        ; $480d: $d1
    ld h, b                                       ; $480e: $60
    sub $c2                                       ; $480f: $d6 $c2
    call nc, $dcd7                                ; $4811: $d4 $d7 $dc
    and b                                         ; $4814: $a0
    or a                                          ; $4815: $b7
    and $1c                                       ; $4816: $e6 $1c
    ld h, d                                       ; $4818: $62
    ld l, [hl]                                    ; $4819: $6e
    ld c, h                                       ; $481a: $4c
    ld h, d                                       ; $481b: $62
    sbc a                                         ; $481c: $9f
    and d                                         ; $481d: $a2
    sbc l                                         ; $481e: $9d
    cp [hl]                                       ; $481f: $be
    add d                                         ; $4820: $82
    ld b, l                                       ; $4821: $45
    ld b, e                                       ; $4822: $43
    pop bc                                        ; $4823: $c1
    ret nz                                        ; $4824: $c0

    cpl                                           ; $4825: $2f
    ld [hl], $52                                  ; $4826: $36 $52
    ld h, c                                       ; $4828: $61
    ld d, e                                       ; $4829: $53
    ei                                            ; $482a: $fb
    add b                                         ; $482b: $80
    sbc [hl]                                      ; $482c: $9e
    db $fc                                        ; $482d: $fc
    ld b, c                                       ; $482e: $41
    pop hl                                        ; $482f: $e1
    ld h, h                                       ; $4830: $64
    nop                                           ; $4831: $00
    pop de                                        ; $4832: $d1
    ld h, c                                       ; $4833: $61
    sub $c2                                       ; $4834: $d6 $c2
    bit 4, c                                      ; $4836: $cb $61
    or a                                          ; $4838: $b7
    and $27                                       ; $4839: $e6 $27
    add e                                         ; $483b: $83
    and c                                         ; $483c: $a1
    ld h, b                                       ; $483d: $60
    add c                                         ; $483e: $81
    add c                                         ; $483f: $81
    add c                                         ; $4840: $81
    and e                                         ; $4841: $a3
    ei                                            ; $4842: $fb
    ld b, [hl]                                    ; $4843: $46
    ld b, l                                       ; $4844: $45

Jump_067_4845:
    nop                                           ; $4845: $00
    ret nz                                        ; $4846: $c0

    ld [hl], $52                                  ; $4847: $36 $52
    ld h, b                                       ; $4849: $60
    ld b, a                                       ; $484a: $47
    ld b, l                                       ; $484b: $45
    nop                                           ; $484c: $00
    ret nz                                        ; $484d: $c0

    ld h, b                                       ; $484e: $60
    or e                                          ; $484f: $b3
    ld b, b                                       ; $4850: $40
    pop hl                                        ; $4851: $e1
    ld h, l                                       ; $4852: $65
    adc l                                         ; $4853: $8d
    and d                                         ; $4854: $a2
    sub $60                                       ; $4855: $d6 $60
    ret                                           ; $4857: $c9


    and d                                         ; $4858: $a2
    or a                                          ; $4859: $b7
    push hl                                       ; $485a: $e5
    add l                                         ; $485b: $85
    ld b, e                                       ; $485c: $43
    call c, $8442                                 ; $485d: $dc $42 $84
    cp a                                          ; $4860: $bf

jr_067_4861:
    add d                                         ; $4861: $82
    sub c                                         ; $4862: $91
    ld b, l                                       ; $4863: $45
    ld d, b                                       ; $4864: $50
    rst $38                                       ; $4865: $ff
    ret nz                                        ; $4866: $c0

    dec [hl]                                      ; $4867: $35
    add hl, sp                                    ; $4868: $39
    rlca                                          ; $4869: $07
    ld e, [hl]                                    ; $486a: $5e
    ld h, c                                       ; $486b: $61
    ld e, h                                       ; $486c: $5c
    ld b, c                                       ; $486d: $41
    and h                                         ; $486e: $a4
    ret                                           ; $486f: $c9


    add a                                         ; $4870: $87
    sub $c2                                       ; $4871: $d6 $c2
    ld b, [hl]                                    ; $4873: $46
    ld h, e                                       ; $4874: $63
    or a                                          ; $4875: $b7
    db $e4                                        ; $4876: $e4
    ret c                                         ; $4877: $d8

    add l                                         ; $4878: $85
    ld b, e                                       ; $4879: $43
    ld b, d                                       ; $487a: $42
    add l                                         ; $487b: $85
    ld b, e                                       ; $487c: $43
    add d                                         ; $487d: $82
    ld b, a                                       ; $487e: $47
    ld e, l                                       ; $487f: $5d
    cp a                                          ; $4880: $bf
    and c                                         ; $4881: $a1
    ld a, [hl-]                                   ; $4882: $3a
    ld d, e                                       ; $4883: $53
    ld bc, $bc53                                  ; $4884: $01 $53 $bc
    add c                                         ; $4887: $81
    ld a, $61                                     ; $4888: $3e $61
    ld a, e                                       ; $488a: $7b
    ld b, b                                       ; $488b: $40
    adc c                                         ; $488c: $89
    xor l                                         ; $488d: $ad
    or a                                          ; $488e: $b7
    push hl                                       ; $488f: $e5
    add l                                         ; $4890: $85
    ld b, [hl]                                    ; $4891: $46
    ld b, d                                       ; $4892: $42
    add [hl]                                      ; $4893: $86
    ld l, $40                                     ; $4894: $2e $40
    push bc                                       ; $4896: $c5
    dec [hl]                                      ; $4897: $35
    ld b, b                                       ; $4898: $40
    ld b, [hl]                                    ; $4899: $46
    ei                                            ; $489a: $fb
    ld h, b                                       ; $489b: $60
    jp $a2c2                                      ; $489c: $c3 $c2 $a2


    ld e, e                                       ; $489f: $5b
    add a                                         ; $48a0: $87
    jr nc, jr_067_48f5                            ; $48a1: $30 $52

    ld b, c                                       ; $48a3: $41
    dec sp                                        ; $48a4: $3b
    ld l, c                                       ; $48a5: $69
    and h                                         ; $48a6: $a4
    add $42                                       ; $48a7: $c6 $42
    add [hl]                                      ; $48a9: $86
    ld b, l                                       ; $48aa: $45
    ld d, d                                       ; $48ab: $52
    ld b, b                                       ; $48ac: $40
    pop bc                                        ; $48ad: $c1
    ld a, $c0                                     ; $48ae: $3e $c0
    add l                                         ; $48b0: $85
    ld b, d                                       ; $48b1: $42
    cp e                                          ; $48b2: $bb
    ld h, c                                       ; $48b3: $61
    call nz, Call_067_41fe                        ; $48b4: $c4 $fe $41
    ld e, e                                       ; $48b7: $5b
    adc b                                         ; $48b8: $88
    cpl                                           ; $48b9: $2f
    ld b, b                                       ; $48ba: $40
    dec sp                                        ; $48bb: $3b
    ld l, b                                       ; $48bc: $68
    db $eb                                        ; $48bd: $eb
    cp b                                          ; $48be: $b8
    and h                                         ; $48bf: $a4
    rst $00                                       ; $48c0: $c7
    ld bc, $8683                                  ; $48c1: $01 $83 $86
    ld b, b                                       ; $48c4: $40
    sub c                                         ; $48c5: $91
    ld b, l                                       ; $48c6: $45
    ld e, e                                       ; $48c7: $5b
    pop bc                                        ; $48c8: $c1
    add b                                         ; $48c9: $80
    dec [hl]                                      ; $48ca: $35
    daa                                           ; $48cb: $27
    ld [hl], $47                                  ; $48cc: $36 $47
    ld c, h                                       ; $48ce: $4c
    ret nz                                        ; $48cf: $c0

    ret nz                                        ; $48d0: $c0

    ld a, [hl]                                    ; $48d1: $7e
    ld b, d                                       ; $48d2: $42
    ld [$8a5b], a                                 ; $48d3: $ea $5b $8a
    dec sp                                        ; $48d6: $3b
    ld l, b                                       ; $48d7: $68
    ldh [$e2], a                                  ; $48d8: $e0 $e2
    jr nz, jr_067_4861                            ; $48da: $20 $85

    ld b, h                                       ; $48dc: $44
    ld b, c                                       ; $48dd: $41
    ld hl, $6100                                  ; $48de: $21 $00 $61
    add [hl]                                      ; $48e1: $86
    ld b, b                                       ; $48e2: $40
    sub c                                         ; $48e3: $91
    ld b, [hl]                                    ; $48e4: $46
    ld b, h                                       ; $48e5: $44
    dec c                                         ; $48e6: $0d
    inc a                                         ; $48e7: $3c
    ret nz                                        ; $48e8: $c0

    pop hl                                        ; $48e9: $e1
    ld d, d                                       ; $48ea: $52
    ld h, c                                       ; $48eb: $61
    ret nz                                        ; $48ec: $c0

    add $5b                                       ; $48ed: $c6 $5b
    adc e                                         ; $48ef: $8b
    dec sp                                        ; $48f0: $3b
    ld l, b                                       ; $48f1: $68
    and h                                         ; $48f2: $a4
    add $fa                                       ; $48f3: $c6 $fa

jr_067_48f5:
    ld [hl], a                                    ; $48f5: $77
    ld [hl+], a                                   ; $48f6: $22
    sbc a                                         ; $48f7: $9f
    nop                                           ; $48f8: $00
    jp nz, Jump_067_4845                          ; $48f9: $c2 $45 $48

    ld c, b                                       ; $48fc: $48
    scf                                           ; $48fd: $37
    jr c, jr_067_4904                             ; $48fe: $38 $04

    cp a                                          ; $4900: $bf
    db $e3                                        ; $4901: $e3
    add b                                         ; $4902: $80
    ret nz                                        ; $4903: $c0

jr_067_4904:
    sbc [hl]                                      ; $4904: $9e
    db $ed                                        ; $4905: $ed
    ld [bc], a                                    ; $4906: $02
    ld e, e                                       ; $4907: $5b
    adc b                                         ; $4908: $88
    or b                                          ; $4909: $b0
    ld b, [hl]                                    ; $490a: $46
    inc [hl]                                      ; $490b: $34
    adc d                                         ; $490c: $8a
    ld [hl], a                                    ; $490d: $77
    ld hl, $c4bc                                  ; $490e: $21 $bc $c4
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    add c                                         ; $4913: $81
    ld d, c                                       ; $4914: $51
    ld e, a                                       ; $4915: $5f
    ld h, c                                       ; $4916: $61
    ld e, h                                       ; $4917: $5c
    ret nz                                        ; $4918: $c0

    jp nz, Jump_000_0539                          ; $4919: $c2 $39 $05

    ld e, e                                       ; $491c: $5b
    cp d                                          ; $491d: $ba
    ld b, b                                       ; $491e: $40
    and c                                         ; $491f: $a1
    jr nz, jr_067_4965                            ; $4920: $20 $43

    ld e, e                                       ; $4922: $5b
    add a                                         ; $4923: $87
    or b                                          ; $4924: $b0
    ld b, e                                       ; $4925: $43
    rlc h                                         ; $4926: $cb $04
    xor e                                         ; $4928: $ab
    push bc                                       ; $4929: $c5
    ld h, b                                       ; $492a: $60
    ld [hl], a                                    ; $492b: $77
    ld [hl+], a                                   ; $492c: $22
    pop bc                                        ; $492d: $c1
    add e                                         ; $492e: $83
    ret nz                                        ; $492f: $c0

    ret nz                                        ; $4930: $c0

    add c                                         ; $4931: $81
    jp $803e                                      ; $4932: $c3 $3e $80


    ret nz                                        ; $4935: $c0

    ld b, [hl]                                    ; $4936: $46
    add d                                         ; $4937: $82
    ld h, b                                       ; $4938: $60
    ret nz                                        ; $4939: $c0

    db $ed                                        ; $493a: $ed
    ld [bc], a                                    ; $493b: $02
    ld e, e                                       ; $493c: $5b
    add a                                         ; $493d: $87
    sbc $02                                       ; $493e: $de $02
    jp Jump_000_0604                              ; $4940: $c3 $04 $06


    ld h, [hl]                                    ; $4943: $66
    ld [hl], a                                    ; $4944: $77
    ld [hl+], a                                   ; $4945: $22
    ld [c], a                                     ; $4946: $e2
    db $e3                                        ; $4947: $e3
    ld d, [hl]                                    ; $4948: $56
    ld a, l                                       ; $4949: $7d
    and d                                         ; $494a: $a2
    sub c                                         ; $494b: $91
    ld b, l                                       ; $494c: $45
    add c                                         ; $494d: $81
    jp nz, Jump_000_3d35                          ; $494e: $c2 $35 $3d

    ld h, b                                       ; $4951: $60
    pop bc                                        ; $4952: $c1
    halt                                          ; $4953: $76
    jr nz, jr_067_4956                            ; $4954: $20 $00

jr_067_4956:
    rst $38                                       ; $4956: $ff
    jp $875b                                      ; $4957: $c3 $5b $87


    add e                                         ; $495a: $83
    add hl, bc                                    ; $495b: $09
    xor e                                         ; $495c: $ab
    ret z                                         ; $495d: $c8

    rst $38                                       ; $495e: $ff
    add d                                         ; $495f: $82
    ld a, l                                       ; $4960: $7d
    and e                                         ; $4961: $a3
    ld b, d                                       ; $4962: $42
    and c                                         ; $4963: $a1
    ld a, a                                       ; $4964: $7f

jr_067_4965:
    ld [c], a                                     ; $4965: $e2
    add e                                         ; $4966: $83
    ld b, b                                       ; $4967: $40
    jp nz, Jump_000_2174                          ; $4968: $c2 $74 $21

    ld a, l                                       ; $496b: $7d
    add d                                         ; $496c: $82
    adc $a9                                       ; $496d: $ce $a9
    ccf                                           ; $496f: $3f
    ld h, l                                       ; $4970: $65
    ld b, $69                                     ; $4971: $06 $69
    ld [$8404], a                                 ; $4973: $ea $04 $84
    ld bc, $23bf                                  ; $4976: $01 $bf $23
    sub c                                         ; $4979: $91
    add c                                         ; $497a: $81
    db $e4                                        ; $497b: $e4
    dec a                                         ; $497c: $3d
    ld h, b                                       ; $497d: $60
    cp a                                          ; $497e: $bf
    and e                                         ; $497f: $a3
    inc a                                         ; $4980: $3c
    call nz, $64bd                                ; $4981: $c4 $bd $64
    ret c                                         ; $4984: $d8

    ld de, $0644                                  ; $4985: $11 $44 $06
    ld l, e                                       ; $4988: $6b
    ld b, c                                       ; $4989: $41
    add c                                         ; $498a: $81
    db $e4                                        ; $498b: $e4
    push hl                                       ; $498c: $e5
    cp a                                          ; $498d: $bf
    inc hl                                        ; $498e: $23
    ld b, [hl]                                    ; $498f: $46
    ld a, $04                                     ; $4990: $3e $04
    ret nz                                        ; $4992: $c0

    push hl                                       ; $4993: $e5
    dec a                                         ; $4994: $3d
    ld h, c                                       ; $4995: $61
    push bc                                       ; $4996: $c5
    ld a, $64                                     ; $4997: $3e $64
    inc b                                         ; $4999: $04
    dec h                                         ; $499a: $25
    ld de, $0645                                  ; $499b: $11 $45 $06
    ld l, l                                       ; $499e: $6d
    rst $38                                       ; $499f: $ff
    rlca                                          ; $49a0: $07
    cp [hl]                                       ; $49a1: $be
    add b                                         ; $49a2: $80
    rst $20                                       ; $49a3: $e7
    dec [hl]                                      ; $49a4: $35
    ld b, d                                       ; $49a5: $42
    jp $c690                                      ; $49a6: $c3 $90 $c6


    halt                                          ; $49a9: $76
    ld [bc], a                                    ; $49aa: $02
    sbc [hl]                                      ; $49ab: $9e
    nop                                           ; $49ac: $00
    ld a, [$8361]                                 ; $49ad: $fa $61 $83
    ret nz                                        ; $49b0: $c0

    or [hl]                                       ; $49b1: $b6
    and a                                         ; $49b2: $a7
    cp h                                          ; $49b3: $bc
    add h                                         ; $49b4: $84
    ld b, $64                                     ; $49b5: $06 $64
    jr nz, jr_067_49dd                            ; $49b7: $20 $24

    cp a                                          ; $49b9: $bf
    inc hl                                        ; $49ba: $23
    nop                                           ; $49bb: $00
    and $1f                                       ; $49bc: $e6 $1f
    inc a                                         ; $49be: $3c
    ld b, h                                       ; $49bf: $44
    call nz, $c790                                ; $49c0: $c4 $90 $c7
    ld a, $43                                     ; $49c3: $3e $43
    ld a, [$5261]                                 ; $49c5: $fa $61 $52
    add d                                         ; $49c8: $82
    nop                                           ; $49c9: $00
    ld de, $ab45                                  ; $49ca: $11 $45 $ab
    res 6, e                                      ; $49cd: $cb $b3
    dec b                                         ; $49cf: $05
    cp a                                          ; $49d0: $bf
    ld [hl+], a                                   ; $49d1: $22
    rst $38                                       ; $49d2: $ff
    add $7d                                       ; $49d3: $c6 $7d
    ld b, e                                       ; $49d5: $43
    inc a                                         ; $49d6: $3c
    add d                                         ; $49d7: $82
    ld a, [$0061]                                 ; $49d8: $fa $61 $00
    ld a, c                                       ; $49db: $79
    ld [bc], a                                    ; $49dc: $02

jr_067_49dd:
    ld de, $3045                                  ; $49dd: $11 $45 $30
    adc e                                         ; $49e0: $8b
    or e                                          ; $49e1: $b3
    ld b, $bf                                     ; $49e2: $06 $bf
    ld [hl+], a                                   ; $49e4: $22
    ld bc, $bf41                                  ; $49e5: $01 $41 $bf
    and d                                         ; $49e8: $a2
    pop bc                                        ; $49e9: $c1
    call nz, $be00                                ; $49ea: $c4 $00 $be
    add c                                         ; $49ed: $81
    sbc e                                         ; $49ee: $9b
    dec b                                         ; $49ef: $05
    ld de, $8945                                  ; $49f0: $11 $45 $89
    rlca                                          ; $49f3: $07
    ld h, b                                       ; $49f4: $60
    and d                                         ; $49f5: $a2
    dec hl                                        ; $49f6: $2b
    push hl                                       ; $49f7: $e5
    rst $38                                       ; $49f8: $ff
    ld [hl+], a                                   ; $49f9: $22
    nop                                           ; $49fa: $00
    and b                                         ; $49fb: $a0
    ld sp, $00b3                                  ; $49fc: $31 $b3 $00
    jp nz, $e033                                  ; $49ff: $c2 $33 $e0

    ld sp, $b600                                  ; $4a02: $31 $00 $b6
    sbc a                                         ; $4a05: $9f
    ret                                           ; $4a06: $c9


    add hl, hl                                    ; $4a07: $29
    ld de, $6e44                                  ; $4a08: $11 $44 $6e
    or a                                          ; $4a0b: $b7
    daa                                           ; $4a0c: $27
    ldh [$e1], a                                  ; $4a0d: $e0 $e1
    ld [$06b3], a                                 ; $4a0f: $ea $b3 $06
    sbc $df                                       ; $4a12: $de $df
    cp h                                          ; $4a14: $bc
    ld bc, $420f                                  ; $4a15: $01 $0f $42
    dec [hl]                                      ; $4a18: $35
    dec [hl]                                      ; $4a19: $35
    or h                                          ; $4a1a: $b4
    add b                                         ; $4a1b: $80
    and d                                         ; $4a1c: $a2
    jp nz, Jump_067_7e22                          ; $4a1d: $c2 $22 $7e

    ld h, b                                       ; $4a20: $60
    ret                                           ; $4a21: $c9


    daa                                           ; $4a22: $27
    and b                                         ; $4a23: $a0

jr_067_4a24:
    ld de, $0046                                  ; $4a24: $11 $46 $00
    ld b, a                                       ; $4a27: $47
    ld h, b                                       ; $4a28: $60
    and d                                         ; $4a29: $a2
    or e                                          ; $4a2a: $b3
    inc b                                         ; $4a2b: $04
    cp $22                                        ; $4a2c: $fe $22
    call nz, Call_067_6001                        ; $4a2e: $c4 $01 $60
    or l                                          ; $4a31: $b5
    nop                                           ; $4a32: $00
    ld a, $26                                     ; $4a33: $3e $26
    ld bc, $c941                                  ; $4a35: $01 $41 $c9
    daa                                           ; $4a38: $27
    reti                                          ; $4a39: $d9


    and c                                         ; $4a3a: $a1
    ld de, $0042                                  ; $4a3b: $11 $42 $00
    ld c, d                                       ; $4a3e: $4a
    or e                                          ; $4a3f: $b3
    ld b, $fe                                     ; $4a40: $06 $fe
    ld [hl+], a                                   ; $4a42: $22
    inc b                                         ; $4a43: $04
    cp [hl]                                       ; $4a44: $be
    and l                                         ; $4a45: $a5
    cp [hl]                                       ; $4a46: $be
    ld bc, $84b6                                  ; $4a47: $01 $b6 $84
    and c                                         ; $4a4a: $a1
    ret                                           ; $4a4b: $c9


    jr z, @+$39                                   ; $4a4c: $28 $37

    dec h                                         ; $4a4e: $25
    nop                                           ; $4a4f: $00
    ld b, a                                       ; $4a50: $47
    xor l                                         ; $4a51: $ad
    ld [$2210], sp                                ; $4a52: $08 $10 $22
    nop                                           ; $4a55: $00
    dec a                                         ; $4a56: $3d
    add e                                         ; $4a57: $83
    ccf                                           ; $4a58: $3f
    ldh [rSB], a                                  ; $4a59: $e0 $01
    db $e4                                        ; $4a5b: $e4
    and c                                         ; $4a5c: $a1
    dec hl                                        ; $4a5d: $2b
    ld hl, $28c9                                  ; $4a5e: $21 $c9 $28
    sub c                                         ; $4a61: $91
    ld b, h                                       ; $4a62: $44
    pop af                                        ; $4a63: $f1
    and b                                         ; $4a64: $a0
    nop                                           ; $4a65: $00
    ld b, a                                       ; $4a66: $47
    db $e4                                        ; $4a67: $e4
    ret                                           ; $4a68: $c9


    dec sp                                        ; $4a69: $3b
    ld h, b                                       ; $4a6a: $60
    ld [bc], a                                    ; $4a6b: $02
    rlca                                          ; $4a6c: $07
    rlca                                          ; $4a6d: $07
    ld [bc], a                                    ; $4a6e: $02
    ld [$c1bf], sp                                ; $4a6f: $08 $bf $c1
    ccf                                           ; $4a72: $3f
    ld hl, $00c3                                  ; $4a73: $21 $c3 $00
    sbc [hl]                                      ; $4a76: $9e
    ld b, c                                       ; $4a77: $41
    add c                                         ; $4a78: $81
    ret                                           ; $4a79: $c9


    jr z, jr_067_4ab1                             ; $4a7a: $28 $35

    ld h, $b7                                     ; $4a7c: $26 $b7
    ld h, $7c                                     ; $4a7e: $26 $7c
    db $e4                                        ; $4a80: $e4
    ret                                           ; $4a81: $c9


    add c                                         ; $4a82: $81
    nop                                           ; $4a83: $00
    ld [$989a], sp                                ; $4a84: $08 $9a $98
    ld [$3fc3], sp                                ; $4a87: $08 $c3 $3f
    jp Jump_067_4000                              ; $4a8a: $c3 $00 $40


    ld [c], a                                     ; $4a8d: $e2
    ld b, c                                       ; $4a8e: $41
    add c                                         ; $4a8f: $81

Call_067_4a90:
Jump_067_4a90:
    ret                                           ; $4a90: $c9


    jr z, jr_067_4a24                             ; $4a91: $28 $91

    ld b, [hl]                                    ; $4a93: $46
    or a                                          ; $4a94: $b7
    dec h                                         ; $4a95: $25
    db $e4                                        ; $4a96: $e4
    ret                                           ; $4a97: $c9


    ld [bc], a                                    ; $4a98: $02
    ld hl, $e180                                  ; $4a99: $21 $80 $e1
    ld bc, $40c4                                  ; $4a9c: $01 $c4 $40
    ld [c], a                                     ; $4a9f: $e2
    ccf                                           ; $4aa0: $3f
    inc bc                                        ; $4aa1: $03
    nop                                           ; $4aa2: $00
    ld b, c                                       ; $4aa3: $41
    ret                                           ; $4aa4: $c9


    add hl, hl                                    ; $4aa5: $29
    dec [hl]                                      ; $4aa6: $35
    dec h                                         ; $4aa7: $25
    or a                                          ; $4aa8: $b7
    dec h                                         ; $4aa9: $25
    xor l                                         ; $4aaa: $ad
    ld [$e407], sp                                ; $4aab: $08 $07 $e4
    push hl                                       ; $4aae: $e5
    and c                                         ; $4aaf: $a1
    inc a                                         ; $4ab0: $3c

jr_067_4ab1:
    ld b, h                                       ; $4ab1: $44
    ld a, $82                                     ; $4ab2: $3e $82
    jp nz, $bfa4                                  ; $4ab4: $c2 $a4 $bf

    inc h                                         ; $4ab7: $24
    ret                                           ; $4ab8: $c9


    dec h                                         ; $4ab9: $25
    ld b, b                                       ; $4aba: $40
    dec [hl]                                      ; $4abb: $35
    dec h                                         ; $4abc: $25
    or a                                          ; $4abd: $b7
    dec h                                         ; $4abe: $25
    xor l                                         ; $4abf: $ad
    ld [$247c], sp                                ; $4ac0: $08 $7c $24
    ld a, l                                       ; $4ac3: $7d
    ld b, c                                       ; $4ac4: $41
    ld a, a                                       ; $4ac5: $7f
    nop                                           ; $4ac6: $00
    ld [hl], $43                                  ; $4ac7: $36 $43
    and c                                         ; $4ac9: $a1
    nop                                           ; $4aca: $00
    add e                                         ; $4acb: $83
    add c                                         ; $4acc: $81
    ld b, b                                       ; $4acd: $40
    ld b, b                                       ; $4ace: $40
    ld c, e                                       ; $4acf: $4b
    pop bc                                        ; $4ad0: $c1
    jp c, Jump_000_3503                           ; $4ad1: $da $03 $35

    ld h, $00                                     ; $4ad4: $26 $00
    ld b, [hl]                                    ; $4ad6: $46
    xor l                                         ; $4ad7: $ad
    rlca                                          ; $4ad8: $07
    or $00                                        ; $4ad9: $f6 $00
    ld e, $7d                                     ; $4adb: $1e $7d
    ld b, h                                       ; $4add: $44
    sub b                                         ; $4ade: $90
    ld b, l                                       ; $4adf: $45
    ld [hl], $36                                  ; $4ae0: $36 $36
    inc bc                                        ; $4ae2: $03
    ld b, c                                       ; $4ae3: $41
    xor $22                                       ; $4ae4: $ee $22
    ret nz                                        ; $4ae6: $c0

    ld hl, $cc80                                  ; $4ae7: $21 $80 $cc

jr_067_4aea:
    daa                                           ; $4aea: $27
    dec [hl]                                      ; $4aeb: $35
    daa                                           ; $4aec: $27
    nop                                           ; $4aed: $00
    ld b, h                                       ; $4aee: $44
    xor l                                         ; $4aef: $ad
    rlca                                          ; $4af0: $07
    ld a, l                                       ; $4af1: $7d
    ld h, [hl]                                    ; $4af2: $66
    inc a                                         ; $4af3: $3c
    ld h, c                                       ; $4af4: $61
    pop bc                                        ; $4af5: $c1

Call_067_4af6:
    db $e4                                        ; $4af6: $e4
    jp $ff40                                      ; $4af7: $c3 $40 $ff


    inc bc                                        ; $4afa: $03
    and b                                         ; $4afb: $a0
    add l                                         ; $4afc: $85
    cp $ec                                        ; $4afd: $fe $ec
    nop                                           ; $4aff: $00
    ld b, c                                       ; $4b00: $41
    xor l                                         ; $4b01: $ad
    ld b, $69                                     ; $4b02: $06 $69
    ld hl, $beea                                  ; $4b04: $21 $ea $be
    ld b, d                                       ; $4b07: $42
    nop                                           ; $4b08: $00
    ld [hl], $25                                  ; $4b09: $36 $25

Jump_067_4b0b:
    xor a                                         ; $4b0b: $af
    ld bc, $4500                                  ; $4b0c: $01 $00 $45
    and b                                         ; $4b0f: $a0
    add e                                         ; $4b10: $83
    ld e, c                                       ; $4b11: $59
    nop                                           ; $4b12: $00
    cp e                                          ; $4b13: $bb
    xor $f6                                       ; $4b14: $ee $f6
    rst $00                                       ; $4b16: $c7
    ld a, l                                       ; $4b17: $7d
    jp $c404                                      ; $4b18: $c3 $04 $c4


    and $b0                                       ; $4b1b: $e6 $b0
    ld [bc], a                                    ; $4b1d: $02
    and c                                         ; $4b1e: $a1
    xor d                                         ; $4b1f: $aa
    and c                                         ; $4b20: $a1
    and b                                         ; $4b21: $a0
    add [hl]                                      ; $4b22: $86
    ld sp, hl                                     ; $4b23: $f9
    ld h, b                                       ; $4b24: $60
    rst $38                                       ; $4b25: $ff
    or $69                                        ; $4b26: $f6 $69
    inc hl                                        ; $4b28: $23
    cp [hl]                                       ; $4b29: $be
    ld a, h                                       ; $4b2a: $7c
    ld h, b                                       ; $4b2b: $60
    ld b, l                                       ; $4b2c: $45
    ld b, c                                       ; $4b2d: $41
    ld b, e                                       ; $4b2e: $43
    ld b, c                                       ; $4b2f: $41
    ld b, e                                       ; $4b30: $43
    db $fd                                        ; $4b31: $fd
    ldh [$af], a                                  ; $4b32: $e0 $af
    add b                                         ; $4b34: $80
    nop                                           ; $4b35: $00
    and b                                         ; $4b36: $a0
    ld b, c                                       ; $4b37: $41
    ld bc, $00d0                                  ; $4b38: $01 $d0 $00
    and b                                         ; $4b3b: $a0
    add l                                         ; $4b3c: $85
    db $dd                                        ; $4b3d: $dd
    ret nz                                        ; $4b3e: $c0

    jp nz, Jump_067_460a                          ; $4b3f: $c2 $0a $46

    and h                                         ; $4b42: $a4
    ld [$c4f8], a                                 ; $4b43: $ea $f8 $c4
    ld hl, $2169                                  ; $4b46: $21 $69 $21
    cp l                                          ; $4b49: $bd
    jr nz, jr_067_4aea                            ; $4b4a: $20 $9e

    sub b                                         ; $4b4c: $90
    ld b, d                                       ; $4b4d: $42
    xor h                                         ; $4b4e: $ac
    dec sp                                        ; $4b4f: $3b
    or e                                          ; $4b50: $b3
    dec [hl]                                      ; $4b51: $35
    dec sp                                        ; $4b52: $3b
    db $fd                                        ; $4b53: $fd
    ldh [$7e], a                                  ; $4b54: $e0 $7e
    ret nz                                        ; $4b56: $c0

    or [hl]                                       ; $4b57: $b6
    sbc a                                         ; $4b58: $9f
    ld b, c                                       ; $4b59: $41
    and d                                         ; $4b5a: $a2
    db $d3                                        ; $4b5b: $d3
    ret nz                                        ; $4b5c: $c0

    and b                                         ; $4b5d: $a0
    add l                                         ; $4b5e: $85
    ld sp, hl                                     ; $4b5f: $f9
    ld b, [hl]                                    ; $4b60: $46
    cp a                                          ; $4b61: $bf
    dec l                                         ; $4b62: $2d
    xor d                                         ; $4b63: $aa
    jr nz, @-$5e                                  ; $4b64: $20 $a0

    ld h, c                                       ; $4b66: $61
    cp l                                          ; $4b67: $bd
    ld [hl+], a                                   ; $4b68: $22
    ld b, d                                       ; $4b69: $42
    xor l                                         ; $4b6a: $ad

Call_067_4b6b:
    dec sp                                        ; $4b6b: $3b
    and h                                         ; $4b6c: $a4
    ld h, h                                       ; $4b6d: $64
    rst $38                                       ; $4b6e: $ff
    ldh [$a5], a                                  ; $4b6f: $e0 $a5
    inc a                                         ; $4b71: $3c
    ld b, h                                       ; $4b72: $44
    ld b, c                                       ; $4b73: $41
    and l                                         ; $4b74: $a5
    ret nc                                        ; $4b75: $d0

    ld bc, $81c2                                  ; $4b76: $01 $c2 $81
    ld h, e                                       ; $4b79: $63
    db $eb                                        ; $4b7a: $eb
    jp nz, $bf08                                  ; $4b7b: $c2 $08 $bf

    add hl, hl                                    ; $4b7e: $29
    xor d                                         ; $4b7f: $aa
    inc h                                         ; $4b80: $24
    add b                                         ; $4b81: $80
    add d                                         ; $4b82: $82
    ld b, d                                       ; $4b83: $42
    dec [hl]                                      ; $4b84: $35
    ccf                                           ; $4b85: $3f
    ld l, c                                       ; $4b86: $69
    and e                                         ; $4b87: $a3
    dec [hl]                                      ; $4b88: $35
    dec [hl]                                      ; $4b89: $35
    and e                                         ; $4b8a: $a3
    ld l, d                                       ; $4b8b: $6a
    ld a, a                                       ; $4b8c: $7f
    add b                                         ; $4b8d: $80
    ld b, c                                       ; $4b8e: $41
    and h                                         ; $4b8f: $a4
    nop                                           ; $4b90: $00
    ret nc                                        ; $4b91: $d0

    ld b, $42                                     ; $4b92: $06 $42
    nop                                           ; $4b94: $00
    jp nz, $bf08                                  ; $4b95: $c2 $08 $bf

    ld l, $fb                                     ; $4b98: $2e $fb
    jr nz, jr_067_4c18                            ; $4b9a: $20 $7c

    ld b, b                                       ; $4b9c: $40
    ret nz                                        ; $4b9d: $c0

    ldh [$c2], a                                  ; $4b9e: $e0 $c2
    ld b, c                                       ; $4ba0: $41

Jump_067_4ba1:
    nop                                           ; $4ba1: $00
    ret nz                                        ; $4ba2: $c0

    pop hl                                        ; $4ba3: $e1
    ld b, a                                       ; $4ba4: $47
    ld b, d                                       ; $4ba5: $42
    rlca                                          ; $4ba6: $07
    ld h, e                                       ; $4ba7: $63
    ccf                                           ; $4ba8: $3f
    ld h, [hl]                                    ; $4ba9: $66
    ld a, h                                       ; $4baa: $7c
    daa                                           ; $4bab: $27
    ld l, d                                       ; $4bac: $6a
    ld a, [bc]                                    ; $4bad: $0a
    jr nc, jr_067_4bb4                            ; $4bae: $30 $04

    cp h                                          ; $4bb0: $bc
    jr nz, jr_067_4be2                            ; $4bb1: $20 $2f

    ld b, h                                       ; $4bb3: $44

jr_067_4bb4:
    inc a                                         ; $4bb4: $3c
    ld l, e                                       ; $4bb5: $6b
    ld [hl], c                                    ; $4bb6: $71
    rst $38                                       ; $4bb7: $ff
    ldh [$6d], a                                  ; $4bb8: $e0 $6d
    ld b, b                                       ; $4bba: $40
    ld h, c                                       ; $4bbb: $61

jr_067_4bbc:
    add e                                         ; $4bbc: $83
    and l                                         ; $4bbd: $a5
    and b                                         ; $4bbe: $a0
    call nc, Call_000_3d09                        ; $4bbf: $d4 $09 $3d
    ld h, $bf                                     ; $4bc2: $26 $bf
    ld a, [hl+]                                   ; $4bc4: $2a
    sbc [hl]                                      ; $4bc5: $9e
    and h                                         ; $4bc6: $a4
    add c                                         ; $4bc7: $81
    ld h, c                                       ; $4bc8: $61
    ld [hl], $c0                                  ; $4bc9: $36 $c0
    push bc                                       ; $4bcb: $c5
    call nz, $83e0                                ; $4bcc: $c4 $e0 $83
    and e                                         ; $4bcf: $a3
    call nc, $060c                                ; $4bd0: $d4 $0c $06
    rst $00                                       ; $4bd3: $c7
    cp a                                          ; $4bd4: $bf
    jr z, jr_067_4c15                             ; $4bd5: $28 $3e

    ld b, [hl]                                    ; $4bd7: $46
    sbc l                                         ; $4bd8: $9d
    or [hl]                                       ; $4bd9: $b6
    sub c                                         ; $4bda: $91
    dec c                                         ; $4bdb: $0d
    ld b, l                                       ; $4bdc: $45
    ld b, b                                       ; $4bdd: $40
    jp $9145                                      ; $4bde: $c3 $45 $91


    add d                                         ; $4be1: $82

jr_067_4be2:
    ld h, d                                       ; $4be2: $62
    push hl                                       ; $4be3: $e5
    ld [hl+], a                                   ; $4be4: $22
    dec d                                         ; $4be5: $15
    rst $28                                       ; $4be6: $ef
    cp a                                          ; $4be7: $bf
    inc l                                         ; $4be8: $2c
    nop                                           ; $4be9: $00
    ld a, $46                                     ; $4bea: $3e $46
    ld a, l                                       ; $4bec: $7d
    ld h, b                                       ; $4bed: $60
    rst $38                                       ; $4bee: $ff
    and $03                                       ; $4bef: $e6 $03
    jp nz, Jump_067_62d0                          ; $4bf1: $c2 $d0 $62

    dec d                                         ; $4bf4: $15
    xor $85                                       ; $4bf5: $ee $85
    and l                                         ; $4bf7: $a5
    ld l, d                                       ; $4bf8: $6a
    dec b                                         ; $4bf9: $05
    nop                                           ; $4bfa: $00
    sbc [hl]                                      ; $4bfb: $9e
    and l                                         ; $4bfc: $a5
    ld e, [hl]                                    ; $4bfd: $5e
    xor h                                         ; $4bfe: $ac
    ret nc                                        ; $4bff: $d0

    ld h, l                                       ; $4c00: $65
    call nc, Call_067_420a                        ; $4c01: $d4 $0a $42
    or c                                          ; $4c04: $b1
    ld a, $45                                     ; $4c05: $3e $45
    ld d, a                                       ; $4c07: $57
    jr nz, jr_067_4bbc                            ; $4c08: $20 $b2

    and d                                         ; $4c0a: $a2
    jr nc, jr_067_4c3a                            ; $4c0b: $30 $2d

    ld bc, $210b                                  ; $4c0d: $01 $0b $21
    ret nc                                        ; $4c10: $d0

    ld h, h                                       ; $4c11: $64
    call nc, $a00c                                ; $4c12: $d4 $0c $a0

jr_067_4c15:
    and b                                         ; $4c15: $a0
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00

jr_067_4c18:
    nop                                           ; $4c18: $00
    pop bc                                        ; $4c19: $c1
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    rst $38                                       ; $4c1c: $ff
    rst $38                                       ; $4c1d: $ff
    rst $38                                       ; $4c1e: $ff
    rst $38                                       ; $4c1f: $ff
    rst $38                                       ; $4c20: $ff
    rst $38                                       ; $4c21: $ff
    rst $38                                       ; $4c22: $ff
    rst $38                                       ; $4c23: $ff
    rst $38                                       ; $4c24: $ff
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    dec c                                         ; $4c27: $0d
    add b                                         ; $4c28: $80
    cp $e0                                        ; $4c29: $fe $e0
    nop                                           ; $4c2b: $00
    ld b, b                                       ; $4c2c: $40
    ret c                                         ; $4c2d: $d8

    push hl                                       ; $4c2e: $e5
    rst $30                                       ; $4c2f: $f7
    and $eb                                       ; $4c30: $e6 $eb
    ldh [rIE], a                                  ; $4c32: $e0 $ff
    rst $38                                       ; $4c34: $ff
    nop                                           ; $4c35: $00
    rst $38                                       ; $4c36: $ff
    db $f4                                        ; $4c37: $f4
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00

jr_067_4c3a:
    nop                                           ; $4c3a: $00
    ld [bc], a                                    ; $4c3b: $02
    nop                                           ; $4c3c: $00
    dec e                                         ; $4c3d: $1d
    dec b                                         ; $4c3e: $05
    ld [bc], a                                    ; $4c3f: $02
    ld bc, $0621                                  ; $4c40: $01 $21 $06
    ld [bc], a                                    ; $4c43: $02
    ld [bc], a                                    ; $4c44: $02
    dec h                                         ; $4c45: $25
    rlca                                          ; $4c46: $07
    ld [bc], a                                    ; $4c47: $02
    inc bc                                        ; $4c48: $03
    add hl, de                                    ; $4c49: $19
    ld [$0402], sp                                ; $4c4a: $08 $02 $04
    dec d                                         ; $4c4d: $15
    add hl, bc                                    ; $4c4e: $09
    ld [bc], a                                    ; $4c4f: $02
    dec b                                         ; $4c50: $05
    rla                                           ; $4c51: $17
    inc c                                         ; $4c52: $0c
    ld [bc], a                                    ; $4c53: $02
    ld b, $23                                     ; $4c54: $06 $23
    inc c                                         ; $4c56: $0c
    ld [bc], a                                    ; $4c57: $02
    rlca                                          ; $4c58: $07
    add hl, hl                                    ; $4c59: $29
    dec c                                         ; $4c5a: $0d
    ld [bc], a                                    ; $4c5b: $02
    ld [$0e1b], sp                                ; $4c5c: $08 $1b $0e
    ld [bc], a                                    ; $4c5f: $02
    add hl, bc                                    ; $4c60: $09
    daa                                           ; $4c61: $27
    rrca                                          ; $4c62: $0f
    ld [bc], a                                    ; $4c63: $02
    ld a, [bc]                                    ; $4c64: $0a
    add hl, de                                    ; $4c65: $19
    inc de                                        ; $4c66: $13
    ld [bc], a                                    ; $4c67: $02
    dec bc                                        ; $4c68: $0b
    dec h                                         ; $4c69: $25
    inc de                                        ; $4c6a: $13
    ld [bc], a                                    ; $4c6b: $02
    inc c                                         ; $4c6c: $0c
    ld d, $16                                     ; $4c6d: $16 $16
    ld [bc], a                                    ; $4c6f: $02
    dec c                                         ; $4c70: $0d
    inc de                                        ; $4c71: $13
    jr jr_067_4c76                                ; $4c72: $18 $02

    ld c, $28                                     ; $4c74: $0e $28

jr_067_4c76:
    add hl, de                                    ; $4c76: $19
    ld [bc], a                                    ; $4c77: $02
    rrca                                          ; $4c78: $0f
    rla                                           ; $4c79: $17
    dec de                                        ; $4c7a: $1b
    ld [bc], a                                    ; $4c7b: $02
    db $10                                        ; $4c7c: $10
    daa                                           ; $4c7d: $27
    rra                                           ; $4c7e: $1f
    ld [bc], a                                    ; $4c7f: $02
    ld de, $2019                                  ; $4c80: $11 $19 $20
    ld [bc], a                                    ; $4c83: $02
    ld [de], a                                    ; $4c84: $12
    ld d, $22                                     ; $4c85: $16 $22
    ld [bc], a                                    ; $4c87: $02
    inc de                                        ; $4c88: $13
    add hl, hl                                    ; $4c89: $29
    ld [hl+], a                                   ; $4c8a: $22
    ld [bc], a                                    ; $4c8b: $02
    inc d                                         ; $4c8c: $14
    ld h, $24                                     ; $4c8d: $26 $24
    ld [bc], a                                    ; $4c8f: $02
    dec d                                         ; $4c90: $15
    dec hl                                        ; $4c91: $2b
    inc h                                         ; $4c92: $24
    ld [bc], a                                    ; $4c93: $02
    ld d, $18                                     ; $4c94: $16 $18
    dec h                                         ; $4c96: $25
    ld [bc], a                                    ; $4c97: $02
    rla                                           ; $4c98: $17
    jr z, @+$29                                   ; $4c99: $28 $27

    ld [bc], a                                    ; $4c9b: $02
    jr jr_067_4cc3                                ; $4c9c: $18 $25

    jr z, jr_067_4ca2                             ; $4c9e: $28 $02

    add hl, de                                    ; $4ca0: $19
    dec de                                        ; $4ca1: $1b

jr_067_4ca2:
    add hl, hl                                    ; $4ca2: $29
    ld [bc], a                                    ; $4ca3: $02
    ld a, [de]                                    ; $4ca4: $1a
    inc h                                         ; $4ca5: $24
    inc l                                         ; $4ca6: $2c
    ld [bc], a                                    ; $4ca7: $02
    dec de                                        ; $4ca8: $1b
    inc e                                         ; $4ca9: $1c
    ld l, $02                                     ; $4caa: $2e $02
    inc e                                         ; $4cac: $1c
    rla                                           ; $4cad: $17
    cpl                                           ; $4cae: $2f
    ld [bc], a                                    ; $4caf: $02
    dec e                                         ; $4cb0: $1d
    ld h, $30                                     ; $4cb1: $26 $30
    ld [bc], a                                    ; $4cb3: $02
    ld e, $1a                                     ; $4cb4: $1e $1a
    ld sp, $1f02                                  ; $4cb6: $31 $02 $1f
    dec e                                         ; $4cb9: $1d
    inc sp                                        ; $4cba: $33
    ld [bc], a                                    ; $4cbb: $02
    jr nz, jr_067_4ce5                            ; $4cbc: $20 $27

    inc sp                                        ; $4cbe: $33
    ld [bc], a                                    ; $4cbf: $02
    ld hl, $3523                                  ; $4cc0: $21 $23 $35

jr_067_4cc3:
    ld [bc], a                                    ; $4cc3: $02
    ld [hl+], a                                   ; $4cc4: $22
    inc e                                         ; $4cc5: $1c
    scf                                           ; $4cc6: $37
    ld [bc], a                                    ; $4cc7: $02
    inc hl                                        ; $4cc8: $23
    ld a, [de]                                    ; $4cc9: $1a
    dec sp                                        ; $4cca: $3b
    ld [bc], a                                    ; $4ccb: $02
    inc h                                         ; $4ccc: $24
    dec h                                         ; $4ccd: $25
    dec sp                                        ; $4cce: $3b
    rst $38                                       ; $4ccf: $ff
    rst $38                                       ; $4cd0: $ff
    rst $38                                       ; $4cd1: $ff
    jp c, Jump_067_574c                           ; $4cd2: $da $4c $57

    ld d, b                                       ; $4cd5: $50
    db $fc                                        ; $4cd6: $fc
    ld d, h                                       ; $4cd7: $54
    dec de                                        ; $4cd8: $1b
    ld d, l                                       ; $4cd9: $55
    ccf                                           ; $4cda: $3f
    ld c, $0e                                     ; $4cdb: $0e $0e
    dec c                                         ; $4cdd: $0d
    dec c                                         ; $4cde: $0d
    dec c                                         ; $4cdf: $0d
    ld c, $ff                                     ; $4ce0: $0e $ff
    db $e3                                        ; $4ce2: $e3
    or $ea                                        ; $4ce3: $f6 $ea

jr_067_4ce5:
    ld a, [de]                                    ; $4ce5: $1a
    ld [$4de1], a                                 ; $4ce6: $ea $e1 $4d
    ld [c], a                                     ; $4ce9: $e2
    pop hl                                        ; $4cea: $e1
    ld c, l                                       ; $4ceb: $4d
    inc c                                         ; $4cec: $0c
    rst $38                                       ; $4ced: $ff
    ld sp, hl                                     ; $4cee: $f9
    ret                                           ; $4cef: $c9


    pop hl                                        ; $4cf0: $e1
    jp Jump_067_7ce3                              ; $4cf1: $c3 $e3 $7c


    or $ed                                        ; $4cf4: $f6 $ed
    db $fd                                        ; $4cf6: $fd
    pop hl                                        ; $4cf7: $e1
    ld c, l                                       ; $4cf8: $4d
    ld c, l                                       ; $4cf9: $4d
    dec c                                         ; $4cfa: $0d
    ld c, l                                       ; $4cfb: $4d
    ld l, l                                       ; $4cfc: $6d
    ret nz                                        ; $4cfd: $c0

    db $fd                                        ; $4cfe: $fd
    ldh a, [$85]                                  ; $4cff: $f0 $85
    xor $71                                       ; $4d01: $ee $71
    ldh [$86], a                                  ; $4d03: $e0 $86
    pop hl                                        ; $4d05: $e1
    ld h, l                                       ; $4d06: $65
    ld [c], a                                     ; $4d07: $e2
    ld l, l                                       ; $4d08: $6d
    ld l, e                                       ; $4d09: $6b
    dec c                                         ; $4d0a: $0d
    ld c, h                                       ; $4d0b: $4c
    pop de                                        ; $4d0c: $d1
    ld c, h                                       ; $4d0d: $4c
    ret nz                                        ; $4d0e: $c0

    db $fc                                        ; $4d0f: $fc
    add l                                         ; $4d10: $85
    xor $32                                       ; $4d11: $ee $32
    db $e4                                        ; $4d13: $e4
    ld c, l                                       ; $4d14: $4d
    pop bc                                        ; $4d15: $c1
    pop hl                                        ; $4d16: $e1
    ld l, e                                       ; $4d17: $6b
    dec c                                         ; $4d18: $0d
    ld h, c                                       ; $4d19: $61
    ld l, e                                       ; $4d1a: $6b
    cp a                                          ; $4d1b: $bf
    ld sp, hl                                     ; $4d1c: $f9
    nop                                           ; $4d1d: $00
    db $f4                                        ; $4d1e: $f4
    push bc                                       ; $4d1f: $c5
    ldh [$83], a                                  ; $4d20: $e0 $83
    pop hl                                        ; $4d22: $e1
    dec c                                         ; $4d23: $0d
    ld l, e                                       ; $4d24: $6b
    rst $38                                       ; $4d25: $ff
    ld [c], a                                     ; $4d26: $e2
    ld bc, $ff4c                                  ; $4d27: $01 $4c $ff
    ldh [rP1], a                                  ; $4d2a: $e0 $00
    rst $38                                       ; $4d2c: $ff
    or $c9                                        ; $4d2d: $f6 $c9
    ld b, h                                       ; $4d2f: $44
    push hl                                       ; $4d30: $e5
    add c                                         ; $4d31: $81
    pop hl                                        ; $4d32: $e1
    cp h                                          ; $4d33: $bc
    pop hl                                        ; $4d34: $e1
    dec sp                                        ; $4d35: $3b
    or $04                                        ; $4d36: $f6 $04
    add l                                         ; $4d38: $85
    db $d3                                        ; $4d39: $d3
    inc b                                         ; $4d3a: $04
    ld [c], a                                     ; $4d3b: $e2
    ld c, l                                       ; $4d3c: $4d
    add $e3                                       ; $4d3d: $c6 $e3
    cp [hl]                                       ; $4d3f: $be
    ld [c], a                                     ; $4d40: $e2
    dec sp                                        ; $4d41: $3b
    or $85                                        ; $4d42: $f6 $85
    ret nc                                        ; $4d44: $d0

    ld b, h                                       ; $4d45: $44
    pop hl                                        ; $4d46: $e1
    ld a, [c]                                     ; $4d47: $f2
    ld bc, $0be3                                  ; $4d48: $01 $e3 $0b
    rst $38                                       ; $4d4b: $ff
    pop hl                                        ; $4d4c: $e1
    rst $38                                       ; $4d4d: $ff
    ret nz                                        ; $4d4e: $c0

    dec bc                                        ; $4d4f: $0b
    dec c                                         ; $4d50: $0d
    dec bc                                        ; $4d51: $0b
    ld l, e                                       ; $4d52: $6b
    pop hl                                        ; $4d53: $e1
    dec bc                                        ; $4d54: $0b
    cp c                                          ; $4d55: $b9
    db $d3                                        ; $4d56: $d3
    nop                                           ; $4d57: $00
    pop de                                        ; $4d58: $d1
    ld a, l                                       ; $4d59: $7d
    db $e3                                        ; $4d5a: $e3
    add sp, -$60                                  ; $4d5b: $e8 $a0
    ld c, e                                       ; $4d5d: $4b
    ld c, e                                       ; $4d5e: $4b
    dec c                                         ; $4d5f: $0d
    ld c, a                                       ; $4d60: $4f
    ld c, e                                       ; $4d61: $4b
    dec hl                                        ; $4d62: $2b
    dec bc                                        ; $4d63: $0b
    dec bc                                        ; $4d64: $0b
    ld sp, hl                                     ; $4d65: $f9
    ldh [$ba], a                                  ; $4d66: $e0 $ba
    ldh [$0b], a                                  ; $4d68: $e0 $0b
    nop                                           ; $4d6a: $00
    rst $38                                       ; $4d6b: $ff
    sbc h                                         ; $4d6c: $9c
    pop bc                                        ; $4d6d: $c1
    rst $20                                       ; $4d6e: $e7
    ld [$4dc0], sp                                ; $4d6f: $08 $c0 $4d
    ld l, l                                       ; $4d72: $6d
    ld c, e                                       ; $4d73: $4b
    ret nz                                        ; $4d74: $c0

    ldh [$c1], a                                  ; $4d75: $e0 $c1
    ldh [$2b], a                                  ; $4d77: $e0 $2b
    add a                                         ; $4d79: $87
    ld a, [bc]                                    ; $4d7a: $0a
    dec bc                                        ; $4d7b: $0b
    ld c, e                                       ; $4d7c: $4b
    ld a, c                                       ; $4d7d: $79
    ret nz                                        ; $4d7e: $c0

    ret nz                                        ; $4d7f: $c0

    or $85                                        ; $4d80: $f6 $85
    call $c308                                    ; $4d82: $cd $08 $c3
    dec bc                                        ; $4d85: $0b
    dec b                                         ; $4d86: $05
    dec bc                                        ; $4d87: $0b
    add c                                         ; $4d88: $81
    ldh [rWX], a                                  ; $4d89: $e0 $4b
    add c                                         ; $4d8b: $81
    ld [c], a                                     ; $4d8c: $e2
    ret nz                                        ; $4d8d: $c0

    ldh [rPCM34], a                               ; $4d8e: $e0 $77
    ret nz                                        ; $4d90: $c0

    nop                                           ; $4d91: $00
    rst $18                                       ; $4d92: $df
    add l                                         ; $4d93: $85
    and a                                         ; $4d94: $a7
    adc b                                         ; $4d95: $88
    pop bc                                        ; $4d96: $c1
    ldh [$0b], a                                  ; $4d97: $e0 $0b
    ldh [$c0], a                                  ; $4d99: $e0 $c0
    db $e4                                        ; $4d9b: $e4
    ld a, [bc]                                    ; $4d9c: $0a
    ret nz                                        ; $4d9d: $c0

    ld [c], a                                     ; $4d9e: $e2
    nop                                           ; $4d9f: $00
    rst $18                                       ; $4da0: $df
    add l                                         ; $4da1: $85
    xor b                                         ; $4da2: $a8
    dec c                                         ; $4da3: $0d
    ld hl, sp-$32                                 ; $4da4: $f8 $ce
    ret nz                                        ; $4da6: $c0

    add hl, bc                                    ; $4da7: $09
    ldh [$80], a                                  ; $4da8: $e0 $80
    pop hl                                        ; $4daa: $e1
    ld c, e                                       ; $4dab: $4b
    ld l, e                                       ; $4dac: $6b
    ld a, [bc]                                    ; $4dad: $0a
    ld a, [hl+]                                   ; $4dae: $2a
    ld c, e                                       ; $4daf: $4b
    ld bc, $004b                                  ; $4db0: $01 $4b $00
    cp a                                          ; $4db3: $bf
    nop                                           ; $4db4: $00
    xor b                                         ; $4db5: $a8
    dec bc                                        ; $4db6: $0b
    and b                                         ; $4db7: $a0
    adc [hl]                                      ; $4db8: $8e
    ret nz                                        ; $4db9: $c0

    ld [bc], a                                    ; $4dba: $02
    pop hl                                        ; $4dbb: $e1
    ret nz                                        ; $4dbc: $c0

    pop hl                                        ; $4dbd: $e1
    cp b                                          ; $4dbe: $b8
    pop hl                                        ; $4dbf: $e1
    jr z, jr_067_4dc2                             ; $4dc0: $28 $00

jr_067_4dc2:
    cp a                                          ; $4dc2: $bf
    ld a, e                                       ; $4dc3: $7b
    adc c                                         ; $4dc4: $89
    res 0, b                                      ; $4dc5: $cb $80
    dec l                                         ; $4dc7: $2d
    add c                                         ; $4dc8: $81
    ld [c], a                                     ; $4dc9: $e2
    dec c                                         ; $4dca: $0d
    ret nz                                        ; $4dcb: $c0

    jp nz, $c079                                  ; $4dcc: $c2 $79 $c0

    add h                                         ; $4dcf: $84
    nop                                           ; $4dd0: $00
    cp a                                          ; $4dd1: $bf
    ld a, e                                       ; $4dd2: $7b
    add a                                         ; $4dd3: $87
    ld c, l                                       ; $4dd4: $4d
    ld c, d                                       ; $4dd5: $4a
    add c                                         ; $4dd6: $81
    cp a                                          ; $4dd7: $bf
    ldh [$82], a                                  ; $4dd8: $e0 $82
    pop hl                                        ; $4dda: $e1
    add b                                         ; $4ddb: $80
    ret nz                                        ; $4ddc: $c0

    ld a, [bc]                                    ; $4ddd: $0a
    ld hl, $396b                                  ; $4dde: $21 $6b $39
    ret nz                                        ; $4de1: $c0

    cp l                                          ; $4de2: $bd
    sub a                                         ; $4de3: $97
    add l                                         ; $4de4: $85
    sub b                                         ; $4de5: $90
    ld a, [bc]                                    ; $4de6: $0a
    add e                                         ; $4de7: $83
    dec l                                         ; $4de8: $2d
    add b                                         ; $4de9: $80
    pop bc                                        ; $4dea: $c1
    ld b, d                                       ; $4deb: $42
    pop bc                                        ; $4dec: $c1
    or b                                          ; $4ded: $b0
    ld a, [hl-]                                   ; $4dee: $3a
    pop bc                                        ; $4def: $c1
    jp Jump_000_00b4                              ; $4df0: $c3 $b4 $00


    sub [hl]                                      ; $4df3: $96
    call nz, Call_000_0d61                        ; $4df4: $c4 $61 $0d
    dec l                                         ; $4df7: $2d
    ret nz                                        ; $4df8: $c0

    db $e3                                        ; $4df9: $e3
    dec hl                                        ; $4dfa: $2b
    ld h, d                                       ; $4dfb: $62
    ld a, [hl-]                                   ; $4dfc: $3a
    ldh [$0b], a                                  ; $4dfd: $e0 $0b
    ld a, [hl]                                    ; $4dff: $7e
    or $00                                        ; $4e00: $f6 $00
    cp b                                          ; $4e02: $b8
    ld [bc], a                                    ; $4e03: $02
    ld [c], a                                     ; $4e04: $e2
    ld a, [bc]                                    ; $4e05: $0a
    dec hl                                        ; $4e06: $2b
    ld hl, sp-$5f                                 ; $4e07: $f8 $a1
    add e                                         ; $4e09: $83
    dec c                                         ; $4e0a: $0d
    ld l, e                                       ; $4e0b: $6b
    dec a                                         ; $4e0c: $3d
    push af                                       ; $4e0d: $f5
    nop                                           ; $4e0e: $00
    or c                                          ; $4e0f: $b1
    ld [$4780], sp                                ; $4e10: $08 $80 $47
    ld h, d                                       ; $4e13: $62
    cp $c2                                        ; $4e14: $fe $c2
    ld l, e                                       ; $4e16: $6b
    pop bc                                        ; $4e17: $c1
    ld a, [bc]                                    ; $4e18: $0a
    or a                                          ; $4e19: $b7
    and b                                         ; $4e1a: $a0
    ld [hl], $a1                                  ; $4e1b: $36 $a1
    nop                                           ; $4e1d: $00
    rst $38                                       ; $4e1e: $ff
    nop                                           ; $4e1f: $00
    xor h                                         ; $4e20: $ac
    ld [bc], a                                    ; $4e21: $02
    add c                                         ; $4e22: $81
    ld a, [bc]                                    ; $4e23: $0a
    dec c                                         ; $4e24: $0d
    and c                                         ; $4e25: $a1
    ld c, e                                       ; $4e26: $4b
    ld [hl], a                                    ; $4e27: $77
    and h                                         ; $4e28: $a4
    ret nz                                        ; $4e29: $c0

    or $00                                        ; $4e2a: $f6 $00
    or b                                          ; $4e2c: $b0
    cp a                                          ; $4e2d: $bf
    ld h, d                                       ; $4e2e: $62
    ld l, l                                       ; $4e2f: $6d
    jp Jump_067_6b80                              ; $4e30: $c3 $80 $6b


    inc b                                         ; $4e33: $04
    ld a, e                                       ; $4e34: $7b
    jp nz, $e03d                                  ; $4e35: $c2 $3d $e0

    dec c                                         ; $4e38: $0d
    cp [hl]                                       ; $4e39: $be
    or l                                          ; $4e3a: $b5
    add l                                         ; $4e3b: $85
    ld d, d                                       ; $4e3c: $52
    ld a, $a2                                     ; $4e3d: $3e $a2
    ld b, e                                       ; $4e3f: $43
    ld [c], a                                     ; $4e40: $e2
    ld a, e                                       ; $4e41: $7b
    and h                                         ; $4e42: $a4
    ld d, b                                       ; $4e43: $50
    db $fd                                        ; $4e44: $fd
    or a                                          ; $4e45: $b7
    add l                                         ; $4e46: $85
    ld d, b                                       ; $4e47: $50
    cp [hl]                                       ; $4e48: $be
    add d                                         ; $4e49: $82
    inc bc                                        ; $4e4a: $03
    ld [c], a                                     ; $4e4b: $e2
    dec c                                         ; $4e4c: $0d
    ld b, e                                       ; $4e4d: $43
    pop bc                                        ; $4e4e: $c1
    ld l, e                                       ; $4e4f: $6b
    cp a                                          ; $4e50: $bf
    db $e3                                        ; $4e51: $e3
    call nz, $df00                                ; $4e52: $c4 $00 $df
    or $26                                        ; $4e55: $f6 $26
    ld c, l                                       ; $4e57: $4d
    cp [hl]                                       ; $4e58: $be
    pop bc                                        ; $4e59: $c1
    inc c                                         ; $4e5a: $0c
    ld [c], a                                     ; $4e5b: $e2
    inc bc                                        ; $4e5c: $03
    pop bc                                        ; $4e5d: $c1
    ld a, [bc]                                    ; $4e5e: $0a
    ld l, d                                       ; $4e5f: $6a
    ld [de], a                                    ; $4e60: $12
    cp [hl]                                       ; $4e61: $be
    and b                                         ; $4e62: $a0
    dec c                                         ; $4e63: $0d
    add b                                         ; $4e64: $80
    ret c                                         ; $4e65: $d8

    nop                                           ; $4e66: $00
    sub d                                         ; $4e67: $92
    ld c, l                                       ; $4e68: $4d

jr_067_4e69:
    ld [bc], a                                    ; $4e69: $02
    ret nz                                        ; $4e6a: $c0

    nop                                           ; $4e6b: $00
    ldh [$83], a                                  ; $4e6c: $e0 $83
    ldh [$03], a                                  ; $4e6e: $e0 $03
    ld a, [bc]                                    ; $4e70: $0a
    ld a, [hl+]                                   ; $4e71: $2a
    cp l                                          ; $4e72: $bd
    and b                                         ; $4e73: $a0
    inc sp                                        ; $4e74: $33
    add b                                         ; $4e75: $80
    cp h                                          ; $4e76: $bc
    ld d, e                                       ; $4e77: $53
    add l                                         ; $4e78: $85
    dec [hl]                                      ; $4e79: $35
    db $fd                                        ; $4e7a: $fd
    add b                                         ; $4e7b: $80
    ld bc, $02a1                                  ; $4e7c: $01 $a1 $02
    ld a, [hl]                                    ; $4e7f: $7e
    ret nz                                        ; $4e80: $c0

    ld l, d                                       ; $4e81: $6a
    dec a                                         ; $4e82: $3d
    add c                                         ; $4e83: $81
    di                                            ; $4e84: $f3
    ld h, d                                       ; $4e85: $62
    rst $30                                       ; $4e86: $f7
    ld sp, $f100                                  ; $4e87: $31 $00 $f1
    ld a, a                                       ; $4e8a: $7f
    jp $e27e                                      ; $4e8b: $c3 $7e $e2


    inc bc                                        ; $4e8e: $03
    dec hl                                        ; $4e8f: $2b
    ld a, [bc]                                    ; $4e90: $0a
    add c                                         ; $4e91: $81
    ldh [$f9], a                                  ; $4e92: $e0 $f9
    ld b, d                                       ; $4e94: $42
    ld [hl], e                                    ; $4e95: $73
    add c                                         ; $4e96: $81
    nop                                           ; $4e97: $00
    rst $38                                       ; $4e98: $ff
    ld a, l                                       ; $4e99: $7d
    ld h, [hl]                                    ; $4e9a: $66
    add sp, $01                                   ; $4e9b: $e8 $01
    nop                                           ; $4e9d: $00
    pop bc                                        ; $4e9e: $c1
    db $e3                                        ; $4e9f: $e3
    cp e                                          ; $4ea0: $bb
    ld b, d                                       ; $4ea1: $42
    ld sp, hl                                     ; $4ea2: $f9
    add b                                         ; $4ea3: $80
    ret nz                                        ; $4ea4: $c0

    push af                                       ; $4ea5: $f5
    nop                                           ; $4ea6: $00
    sub c                                         ; $4ea7: $91
    ld a, $e4                                     ; $4ea8: $3e $e4
    add c                                         ; $4eaa: $81
    pop hl                                        ; $4eab: $e1
    add d                                         ; $4eac: $82
    pop hl                                        ; $4ead: $e1
    jr nc, jr_067_4e69                            ; $4eae: $30 $b9

    add h                                         ; $4eb0: $84
    ret nz                                        ; $4eb1: $c0

    db $f4                                        ; $4eb2: $f4
    nop                                           ; $4eb3: $00
    jr nc, @+$01                                  ; $4eb4: $30 $ff

    add [hl]                                      ; $4eb6: $86
    ld a, [hl+]                                   ; $4eb7: $2a
    ld a, [bc]                                    ; $4eb8: $0a
    add e                                         ; $4eb9: $83
    ld [c], a                                     ; $4eba: $e2
    cp e                                          ; $4ebb: $bb
    ld b, b                                       ; $4ebc: $40
    ret nc                                        ; $4ebd: $d0

    ld a, [$0074]                                 ; $4ebe: $fa $74 $00
    pop de                                        ; $4ec1: $d1
    cp e                                          ; $4ec2: $bb
    dec h                                         ; $4ec3: $25
    ld a, [hl]                                    ; $4ec4: $7e
    and b                                         ; $4ec5: $a0
    ld a, [hl+]                                   ; $4ec6: $2a
    ld [bc], a                                    ; $4ec7: $02
    pop hl                                        ; $4ec8: $e1
    dec c                                         ; $4ec9: $0d
    ld l, e                                       ; $4eca: $6b
    ld b, c                                       ; $4ecb: $41
    dec hl                                        ; $4ecc: $2b
    ret nz                                        ; $4ecd: $c0

    pop hl                                        ; $4ece: $e1
    nop                                           ; $4ecf: $00
    rst $18                                       ; $4ed0: $df
    or $c8                                        ; $4ed1: $f6 $c8
    db $fc                                        ; $4ed3: $fc
    and b                                         ; $4ed4: $a0
    ld a, [hl]                                    ; $4ed5: $7e
    and c                                         ; $4ed6: $a1
    ld l, e                                       ; $4ed7: $6b

jr_067_4ed8:
    cp l                                          ; $4ed8: $bd
    ld hl, $b800                                  ; $4ed9: $21 $00 $b8
    jr nz, jr_067_4ed8                            ; $4edc: $20 $fa

    ld h, b                                       ; $4ede: $60
    nop                                           ; $4edf: $00
    cp a                                          ; $4ee0: $bf
    nop                                           ; $4ee1: $00
    ld h, [hl]                                    ; $4ee2: $66
    inc bc                                        ; $4ee3: $03
    and c                                         ; $4ee4: $a1
    inc bc                                        ; $4ee5: $03
    ld b, c                                       ; $4ee6: $41
    ld [bc], a                                    ; $4ee7: $02
    ld b, c                                       ; $4ee8: $41
    ld bc, $00e3                                  ; $4ee9: $01 $e3 $00
    db $fc                                        ; $4eec: $fc
    ld d, [hl]                                    ; $4eed: $56
    nop                                           ; $4eee: $00
    rst $08                                       ; $4eef: $cf
    ld b, c                                       ; $4ef0: $41
    ld b, d                                       ; $4ef1: $42
    call nz, $4042                                ; $4ef2: $c4 $42 $40
    and c                                         ; $4ef5: $a1
    ld a, d                                       ; $4ef6: $7a
    ld b, c                                       ; $4ef7: $41
    ld b, c                                       ; $4ef8: $41
    ld hl, sp+$00                                 ; $4ef9: $f8 $00
    ld d, b                                       ; $4efb: $50
    ldh a, [rDMA]                                 ; $4efc: $f0 $46
    jp nz, $a18f                                  ; $4efe: $c2 $8f $a1

    ld a, [$85e1]                                 ; $4f01: $fa $e1 $85
    jr nz, jr_067_4f10                            ; $4f04: $20 $0a

    ld c, e                                       ; $4f06: $4b

Jump_067_4f07:
    dec hl                                        ; $4f07: $2b
    dec hl                                        ; $4f08: $2b
    ret nz                                        ; $4f09: $c0

    ld b, d                                       ; $4f0a: $42
    pop bc                                        ; $4f0b: $c1
    nop                                           ; $4f0c: $00
    ccf                                           ; $4f0d: $3f
    add l                                         ; $4f0e: $85
    rlca                                          ; $4f0f: $07

jr_067_4f10:
    ld b, l                                       ; $4f10: $45
    ld b, d                                       ; $4f11: $42
    cp d                                          ; $4f12: $ba
    pop hl                                        ; $4f13: $e1
    dec b                                         ; $4f14: $05
    jp nz, Jump_000_2b2b                          ; $4f15: $c2 $2b $2b

    nop                                           ; $4f18: $00
    cp h                                          ; $4f19: $bc
    add c                                         ; $4f1a: $81
    ret nz                                        ; $4f1b: $c0

    push de                                       ; $4f1c: $d5
    add l                                         ; $4f1d: $85
    xor h                                         ; $4f1e: $ac
    inc bc                                        ; $4f1f: $03
    and h                                         ; $4f20: $a4
    ld b, e                                       ; $4f21: $43
    ld [hl+], a                                   ; $4f22: $22
    ret nz                                        ; $4f23: $c0

    push hl                                       ; $4f24: $e5
    ld sp, hl                                     ; $4f25: $f9
    ld h, d                                       ; $4f26: $62
    nop                                           ; $4f27: $00
    rst $38                                       ; $4f28: $ff
    nop                                           ; $4f29: $00
    or $87                                        ; $4f2a: $f6 $87
    jp nz, $c381                                  ; $4f2c: $c2 $81 $c3

    ld bc, $6000                                  ; $4f2f: $01 $00 $60
    add d                                         ; $4f32: $82
    nop                                           ; $4f33: $00
    ld a, $80                                     ; $4f34: $3e $80
    ret nz                                        ; $4f36: $c0

    ld a, d                                       ; $4f37: $7a
    nop                                           ; $4f38: $00
    pop de                                        ; $4f39: $d1
    nop                                           ; $4f3a: $00
    jp Jump_067_4222                              ; $4f3b: $c3 $22 $42


    pop bc                                        ; $4f3e: $c1
    ld a, l                                       ; $4f3f: $7d
    ld h, e                                       ; $4f40: $63
    ccf                                           ; $4f41: $3f
    ld [hl], $00                                  ; $4f42: $36 $00
    push de                                       ; $4f44: $d5
    ld b, e                                       ; $4f45: $43
    inc hl                                        ; $4f46: $23
    pop bc                                        ; $4f47: $c1
    ldh [$7b], a                                  ; $4f48: $e0 $7b
    add b                                         ; $4f4a: $80
    nop                                           ; $4f4b: $00
    ld b, d                                       ; $4f4c: $42
    scf                                           ; $4f4d: $37
    nop                                           ; $4f4e: $00
    sub [hl]                                      ; $4f4f: $96
    ld b, h                                       ; $4f50: $44
    inc bc                                        ; $4f51: $03
    adc c                                         ; $4f52: $89
    and b                                         ; $4f53: $a0
    ld b, [hl]                                    ; $4f54: $46
    rst $30                                       ; $4f55: $f7
    nop                                           ; $4f56: $00
    or d                                          ; $4f57: $b2
    push bc                                       ; $4f58: $c5
    ld h, d                                       ; $4f59: $62
    ld [bc], a                                    ; $4f5a: $02
    add e                                         ; $4f5b: $83
    nop                                           ; $4f5c: $00
    add d                                         ; $4f5d: $82
    ld [hl+], a                                   ; $4f5e: $22
    ld c, b                                       ; $4f5f: $48
    add c                                         ; $4f60: $81
    ret nz                                        ; $4f61: $c0

    cp $85                                        ; $4f62: $fe $85
    db $ec                                        ; $4f64: $ec
    jp Jump_067_4126                              ; $4f65: $c3 $26 $41


    pop hl                                        ; $4f68: $e1
    ret nz                                        ; $4f69: $c0

    rst $38                                       ; $4f6a: $ff
    add l                                         ; $4f6b: $85
    ld l, e                                       ; $4f6c: $6b
    nop                                           ; $4f6d: $00
    ld b, h                                       ; $4f6e: $44
    add h                                         ; $4f6f: $84
    add e                                         ; $4f70: $83
    inc hl                                        ; $4f71: $23
    jp nz, Jump_067_43c1                          ; $4f72: $c2 $c1 $43

    add hl, de                                    ; $4f75: $19
    nop                                           ; $4f76: $00
    pop de                                        ; $4f77: $d1
    inc bc                                        ; $4f78: $03
    add c                                         ; $4f79: $81
    add h                                         ; $4f7a: $84
    add d                                         ; $4f7b: $82
    add c                                         ; $4f7c: $81

jr_067_4f7d:
    ld [c], a                                     ; $4f7d: $e2
    nop                                           ; $4f7e: $00
    cp d                                          ; $4f7f: $ba
    pop bc                                        ; $4f80: $c1
    add e                                         ; $4f81: $83
    rla                                           ; $4f82: $17
    nop                                           ; $4f83: $00
    ldh a, [rLCDC]                                ; $4f84: $f0 $40
    ld bc, $8082                                  ; $4f86: $01 $82 $80
    ld [bc], a                                    ; $4f89: $02
    ld b, b                                       ; $4f8a: $40
    inc b                                         ; $4f8b: $04
    and e                                         ; $4f8c: $a3
    ld a, b                                       ; $4f8d: $78
    ld b, c                                       ; $4f8e: $41
    jr jr_067_4f91                                ; $4f8f: $18 $00

jr_067_4f91:
    rst $38                                       ; $4f91: $ff
    add l                                         ; $4f92: $85
    add hl, hl                                    ; $4f93: $29
    ld b, h                                       ; $4f94: $44
    ld b, b                                       ; $4f95: $40
    ld l, l                                       ; $4f96: $6d
    ld l, e                                       ; $4f97: $6b
    ld c, l                                       ; $4f98: $4d
    ld b, b                                       ; $4f99: $40
    dec bc                                        ; $4f9a: $0b
    and b                                         ; $4f9b: $a0
    jp $1022                                      ; $4f9c: $c3 $22 $10


    ld a, a                                       ; $4f9f: $7f
    db $db                                        ; $4fa0: $db
    nop                                           ; $4fa1: $00
    ld l, h                                       ; $4fa2: $6c
    ld b, $60                                     ; $4fa3: $06 $60
    ld b, e                                       ; $4fa5: $43
    add b                                         ; $4fa6: $80
    ld l, e                                       ; $4fa7: $6b
    rst $38                                       ; $4fa8: $ff
    ldh [$84], a                                  ; $4fa9: $e0 $84
    dec h                                         ; $4fab: $25
    add b                                         ; $4fac: $80

jr_067_4fad:
    rst $18                                       ; $4fad: $df
    nop                                           ; $4fae: $00
    nop                                           ; $4faf: $00
    db $ec                                        ; $4fb0: $ec
    add b                                         ; $4fb1: $80
    ldh [$c0], a                                  ; $4fb2: $e0 $c0
    pop hl                                        ; $4fb4: $e1
    adc c                                         ; $4fb5: $89
    jr nz, jr_067_4f7d                            ; $4fb6: $20 $c5

    ld h, c                                       ; $4fb8: $61
    pop bc                                        ; $4fb9: $c1
    call c, Call_067_6b00                         ; $4fba: $dc $00 $6b
    adc b                                         ; $4fbd: $88
    ld b, $50                                     ; $4fbe: $06 $50
    cp [hl]                                       ; $4fc0: $be
    pop hl                                        ; $4fc1: $e1
    add a                                         ; $4fc2: $87
    nop                                           ; $4fc3: $00
    ld b, e                                       ; $4fc4: $43
    db $fd                                        ; $4fc5: $fd
    nop                                           ; $4fc6: $00
    ld sp, $cc4d                                  ; $4fc7: $31 $4d $cc
    jr nz, jr_067_4ff7                            ; $4fca: $20 $2b

    ld c, [hl]                                    ; $4fcc: $4e
    ld h, b                                       ; $4fcd: $60
    nop                                           ; $4fce: $00
    inc c                                         ; $4fcf: $0c
    ld b, d                                       ; $4fd0: $42
    jp nz, Jump_000_00fd                          ; $4fd1: $c2 $fd $00

    ld [hl], b                                    ; $4fd4: $70
    ld b, d                                       ; $4fd5: $42
    ldh [$cf], a                                  ; $4fd6: $e0 $cf
    inc hl                                        ; $4fd8: $23
    ld c, c                                       ; $4fd9: $49
    ld b, c                                       ; $4fda: $41
    pop bc                                        ; $4fdb: $c1

jr_067_4fdc:
    cp $00                                        ; $4fdc: $fe $00
    adc l                                         ; $4fde: $8d
    inc h                                         ; $4fdf: $24
    ret nz                                        ; $4fe0: $c0

    rst $38                                       ; $4fe1: $ff

jr_067_4fe2:
    nop                                           ; $4fe2: $00
    cp a                                          ; $4fe3: $bf
    dec l                                         ; $4fe4: $2d
    ret z                                         ; $4fe5: $c8

    add b                                         ; $4fe6: $80
    adc l                                         ; $4fe7: $8d
    ld b, b                                       ; $4fe8: $40
    dec l                                         ; $4fe9: $2d
    ld c, c                                       ; $4fea: $49
    jr nz, jr_067_4fad                            ; $4feb: $20 $c0

    rst $38                                       ; $4fed: $ff
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    pop de                                        ; $4ff0: $d1
    rlca                                          ; $4ff1: $07
    and c                                         ; $4ff2: $a1
    ld c, d                                       ; $4ff3: $4a
    inc hl                                        ; $4ff4: $23
    ret nz                                        ; $4ff5: $c0

    rst $38                                       ; $4ff6: $ff

jr_067_4ff7:
    add l                                         ; $4ff7: $85
    dec c                                         ; $4ff8: $0d
    ldh a, [rSB]                                  ; $4ff9: $f0 $01
    ld b, b                                       ; $4ffb: $40
    rst $20                                       ; $4ffc: $e7
    ld b, l                                       ; $4ffd: $45
    cp d                                          ; $4ffe: $ba
    ld [$7200], sp                                ; $4fff: $08 $00 $72
    rst $38                                       ; $5002: $ff
    jp nz, Jump_000_20c9                          ; $5003: $c2 $c9 $20

    ld l, e                                       ; $5006: $6b
    db $fd                                        ; $5007: $fd
    pop hl                                        ; $5008: $e1
    ld b, d                                       ; $5009: $42
    sbc $00                                       ; $500a: $de $00
    sub c                                         ; $500c: $91
    pop bc                                        ; $500d: $c1
    and c                                         ; $500e: $a1
    nop                                           ; $500f: $00
    pop bc                                        ; $5010: $c1
    ld b, h                                       ; $5011: $44
    ld c, e                                       ; $5012: $4b
    ld b, c                                       ; $5013: $41
    ld a, [hl]                                    ; $5014: $7e
    db $fc                                        ; $5015: $fc
    add l                                         ; $5016: $85
    ld l, [hl]                                    ; $5017: $6e
    jp $0141                                      ; $5018: $c3 $41 $01


    and b                                         ; $501b: $a0
    ld c, [hl]                                    ; $501c: $4e
    ld b, d                                       ; $501d: $42
    ld a, [hl]                                    ; $501e: $7e
    jr nz, jr_067_4fe2                            ; $501f: $20 $c1

    dec l                                         ; $5021: $2d
    dec a                                         ; $5022: $3d
    db $fc                                        ; $5023: $fc
    nop                                           ; $5024: $00
    ld c, [hl]                                    ; $5025: $4e
    ld a, $c2                                     ; $5026: $3e $c2
    ccf                                           ; $5028: $3f
    and d                                         ; $5029: $a2
    ld [hl], l                                    ; $502a: $75
    and d                                         ; $502b: $a2
    ld c, l                                       ; $502c: $4d
    dec l                                         ; $502d: $2d
    nop                                           ; $502e: $00
    nop                                           ; $502f: $00
    rst $38                                       ; $5030: $ff
    nop                                           ; $5031: $00
    ld c, d                                       ; $5032: $4a
    ld b, e                                       ; $5033: $43
    ld h, c                                       ; $5034: $61
    jr c, jr_067_4fdc                             ; $5035: $38 $a5

    or b                                          ; $5037: $b0
    ld [hl+], a                                   ; $5038: $22
    ld b, b                                       ; $5039: $40
    rst $38                                       ; $503a: $ff
    nop                                           ; $503b: $00
    db $ed                                        ; $503c: $ed
    ld a, c                                       ; $503d: $79
    ld h, d                                       ; $503e: $62
    ld bc, $b44d                                  ; $503f: $01 $4d $b4
    and d                                         ; $5042: $a2
    inc sp                                        ; $5043: $33
    add b                                         ; $5044: $80
    ld a, h                                       ; $5045: $7c
    db $db                                        ; $5046: $db
    add l                                         ; $5047: $85
    ld c, $47                                     ; $5048: $0e $47
    nop                                           ; $504a: $00
    ld a, d                                       ; $504b: $7a
    add h                                         ; $504c: $84
    push af                                       ; $504d: $f5
    ld h, d                                       ; $504e: $62
    nop                                           ; $504f: $00
    ld [hl], h                                    ; $5050: $74
    jr nz, @-$7e                                  ; $5051: $20 $80

    ld a, d                                       ; $5053: $7a
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    rst $38                                       ; $5057: $ff
    call c, $a0dd                                 ; $5058: $dc $dd $a0
    sbc $df                                       ; $505b: $de $df
    ldh [$e1], a                                  ; $505d: $e0 $e1
    ld [c], a                                     ; $505f: $e2
    ei                                            ; $5060: $fb
    db $e3                                        ; $5061: $e3
    db $e4                                        ; $5062: $e4
    or $ec                                        ; $5063: $f6 $ec
    and b                                         ; $5065: $a0
    and b                                         ; $5066: $a0
    sub $d7                                       ; $5067: $d6 $d7
    and b                                         ; $5069: $a0
    rst $38                                       ; $506a: $ff
    jp c, $a0db                                   ; $506b: $da $db $a0

    and b                                         ; $506e: $a0
    sbc [hl]                                      ; $506f: $9e
    ld [$9798], sp                                ; $5070: $08 $98 $97
    rst $28                                       ; $5073: $ef
    sub a                                         ; $5074: $97
    sub [hl]                                      ; $5075: $96
    sub [hl]                                      ; $5076: $96
    sub l                                         ; $5077: $95
    rst $38                                       ; $5078: $ff
    di                                            ; $5079: $f3
    push hl                                       ; $507a: $e5
    and $e7                                       ; $507b: $e6 $e7
    ld a, a                                       ; $507d: $7f
    and b                                         ; $507e: $a0
    add sp, -$17                                  ; $507f: $e8 $e9
    ld [$eceb], a                                 ; $5081: $ea $eb $ec
    and b                                         ; $5084: $a0
    or $eb                                        ; $5085: $f6 $eb
    cp $c3                                        ; $5087: $fe $c3
    ldh [$d8], a                                  ; $5089: $e0 $d8
    reti                                          ; $508b: $d9


    and b                                         ; $508c: $a0
    and b                                         ; $508d: $a0
    and b                                         ; $508e: $a0
    sbc a                                         ; $508f: $9f
    sbc l                                         ; $5090: $9d
    rlca                                          ; $5091: $07
    sbc h                                         ; $5092: $9c
    ld [$bf98], sp                                ; $5093: $08 $98 $bf
    ld [c], a                                     ; $5096: $e2
    cp l                                          ; $5097: $bd
    di                                            ; $5098: $f3
    add l                                         ; $5099: $85
    pop af                                        ; $509a: $f1
    ld [hl], c                                    ; $509b: $71
    ldh [$c3], a                                  ; $509c: $e0 $c3
    pop hl                                        ; $509e: $e1
    ld a, [hl]                                    ; $509f: $7e
    add e                                         ; $50a0: $83
    pop hl                                        ; $50a1: $e1
    sbc a                                         ; $50a2: $9f
    sbc h                                         ; $50a3: $9c
    ld b, [hl]                                    ; $50a4: $46
    xor [hl]                                      ; $50a5: $ae
    ld [bc], a                                    ; $50a6: $02
    rrca                                          ; $50a7: $0f
    cp a                                          ; $50a8: $bf
    pop hl                                        ; $50a9: $e1
    ldh a, [$7c]                                  ; $50aa: $f0 $7c
    db $f4                                        ; $50ac: $f4
    add l                                         ; $50ad: $85
    ldh a, [$71]                                  ; $50ae: $f0 $71
    ld [c], a                                     ; $50b0: $e2
    ld b, [hl]                                    ; $50b1: $46
    pop hl                                        ; $50b2: $e1
    and b                                         ; $50b3: $a0
    sbc a                                         ; $50b4: $9f
    and d                                         ; $50b5: $a2
    sbc h                                         ; $50b6: $9c
    rrca                                          ; $50b7: $0f
    ld b, [hl]                                    ; $50b8: $46
    ld b, [hl]                                    ; $50b9: $46
    xor a                                         ; $50ba: $af
    ld b, [hl]                                    ; $50bb: $46
    cp a                                          ; $50bc: $bf
    pop hl                                        ; $50bd: $e1
    ld a, h                                       ; $50be: $7c
    db $e3                                        ; $50bf: $e3
    dec sp                                        ; $50c0: $3b
    rst $28                                       ; $50c1: $ef
    nop                                           ; $50c2: $00
    db $f4                                        ; $50c3: $f4
    ld l, a                                       ; $50c4: $6f
    and b                                         ; $50c5: $a0
    and b                                         ; $50c6: $a0
    push af                                       ; $50c7: $f5
    or $83                                        ; $50c8: $f6 $83
    ldh [$ae], a                                  ; $50ca: $e0 $ae
    ld b, [hl]                                    ; $50cc: $46
    rst $38                                       ; $50cd: $ff
    ld [c], a                                     ; $50ce: $e2
    rst $00                                       ; $50cf: $c7
    ld [bc], a                                    ; $50d0: $02
    rlca                                          ; $50d1: $07
    rlca                                          ; $50d2: $07
    ld a, h                                       ; $50d3: $7c
    ld [c], a                                     ; $50d4: $e2
    ld a, [$00d0]                                 ; $50d5: $fa $d0 $00
    db $f4                                        ; $50d8: $f4
    ret nc                                        ; $50d9: $d0

    pop de                                        ; $50da: $d1
    ld c, $44                                     ; $50db: $0e $44
    ld [c], a                                     ; $50dd: $e2
    xor a                                         ; $50de: $af
    ld b, [hl]                                    ; $50df: $46
    ld b, [hl]                                    ; $50e0: $46
    cp l                                          ; $50e1: $bd
    db $e3                                        ; $50e2: $e3
    dec sp                                        ; $50e3: $3b
    db $e4                                        ; $50e4: $e4
    cp d                                          ; $50e5: $ba
    rst $08                                       ; $50e6: $cf
    add l                                         ; $50e7: $85
    db $d3                                        ; $50e8: $d3
    daa                                           ; $50e9: $27
    and b                                         ; $50ea: $a0
    jp nc, $87d3                                  ; $50eb: $d2 $d3 $87

    ret nz                                        ; $50ee: $c0

    add e                                         ; $50ef: $83
    ld [c], a                                     ; $50f0: $e2
    xor a                                         ; $50f1: $af
    cp [hl]                                       ; $50f2: $be
    ld [c], a                                     ; $50f3: $e2
    dec sp                                        ; $50f4: $3b
    db $e3                                        ; $50f5: $e3
    db $fc                                        ; $50f6: $fc
    ret nz                                        ; $50f7: $c0

    ldh a, [$85]                                  ; $50f8: $f0 $85
    ret nc                                        ; $50fa: $d0

    and b                                         ; $50fb: $a0
    and b                                         ; $50fc: $a0
    db $ed                                        ; $50fd: $ed
    xor $d4                                       ; $50fe: $ee $d4
    push de                                       ; $5100: $d5
    rlca                                          ; $5101: $07
    rst $28                                       ; $5102: $ef
    and b                                         ; $5103: $a0
    sbc [hl]                                      ; $5104: $9e
    ld b, d                                       ; $5105: $42
    db $e4                                        ; $5106: $e4
    ld a, e                                       ; $5107: $7b
    db $e4                                        ; $5108: $e4
    cp c                                          ; $5109: $b9
    ret nz                                        ; $510a: $c0

    add b                                         ; $510b: $80
    ldh a, [rP1]                                  ; $510c: $f0 $00
    pop de                                        ; $510e: $d1
    rst $38                                       ; $510f: $ff
    and b                                         ; $5110: $a0
    ldh a, [$f1]                                  ; $5111: $f0 $f1
    ld a, [c]                                     ; $5113: $f2
    di                                            ; $5114: $f3
    db $f4                                        ; $5115: $f4
    and b                                         ; $5116: $a0
    and c                                         ; $5117: $a1
    ld c, $42                                     ; $5118: $0e $42
    ld [c], a                                     ; $511a: $e2
    ld b, l                                       ; $511b: $45
    ld b, c                                       ; $511c: $41
    ld b, l                                       ; $511d: $45
    cp l                                          ; $511e: $bd
    db $e4                                        ; $511f: $e4
    ld hl, sp-$60                                 ; $5120: $f8 $a0
    nop                                           ; $5122: $00
    rst $38                                       ; $5123: $ff
    or $a1                                        ; $5124: $f6 $a1
    db $f4                                        ; $5126: $f4
    push bc                                       ; $5127: $c5
    ret nz                                        ; $5128: $c0

    ld [$9dc0], sp                                ; $5129: $08 $c0 $9d
    add h                                         ; $512c: $84
    ret nz                                        ; $512d: $c0

    ld b, [hl]                                    ; $512e: $46
    xor a                                         ; $512f: $af
    ld b, l                                       ; $5130: $45
    ld a, [hl+]                                   ; $5131: $2a
    rlca                                          ; $5132: $07
    ld h, $2a                                     ; $5133: $26 $2a
    ld d, b                                       ; $5135: $50
    cp [hl]                                       ; $5136: $be
    ldh [$79], a                                  ; $5137: $e0 $79
    ret nz                                        ; $5139: $c0

    ret nz                                        ; $513a: $c0

    ld a, [c]                                     ; $513b: $f2
    add l                                         ; $513c: $85
    ret nc                                        ; $513d: $d0

    adc b                                         ; $513e: $88
    and b                                         ; $513f: $a0
    db $fc                                        ; $5140: $fc
    ld [$c6c1], sp                                ; $5141: $08 $c1 $c6
    jp $2042                                      ; $5144: $c3 $42 $20


    jr nz, @+$30                                  ; $5147: $20 $2e

    ld e, a                                       ; $5149: $5f
    ld b, h                                       ; $514a: $44
    add b                                         ; $514b: $80
    cp d                                          ; $514c: $ba
    pop bc                                        ; $514d: $c1
    ld b, b                                       ; $514e: $40
    di                                            ; $514f: $f3
    add l                                         ; $5150: $85
    or b                                          ; $5151: $b0
    adc b                                         ; $5152: $88
    and b                                         ; $5153: $a0
    pop bc                                        ; $5154: $c1
    pop hl                                        ; $5155: $e1
    add e                                         ; $5156: $83
    pop bc                                        ; $5157: $c1
    ret nz                                        ; $5158: $c0

    ldh [$27], a                                  ; $5159: $e0 $27
    adc a                                         ; $515b: $8f
    jr nz, jr_067_51a9                            ; $515c: $20 $4b

    ld h, b                                       ; $515e: $60
    ld b, h                                       ; $515f: $44
    ret nz                                        ; $5160: $c0

    rst $10                                       ; $5161: $d7
    add l                                         ; $5162: $85
    or b                                          ; $5163: $b0
    dec bc                                        ; $5164: $0b
    and b                                         ; $5165: $a0
    and c                                         ; $5166: $a1
    ld a, h                                       ; $5167: $7c
    ld c, c                                       ; $5168: $49
    call nz, $e080                                ; $5169: $c4 $80 $e0
    ld [hl+], a                                   ; $516c: $22
    ld [hl+], a                                   ; $516d: $22
    ld d, d                                       ; $516e: $52
    ld d, d                                       ; $516f: $52
    ld b, l                                       ; $5170: $45
    cp $a0                                        ; $5171: $fe $a0
    ldh [rLCDC], a                                ; $5173: $e0 $40
    call nc, $b100                                ; $5175: $d4 $00 $b1
    ld b, l                                       ; $5178: $45
    pop bc                                        ; $5179: $c1
    add e                                         ; $517a: $83
    ld [c], a                                     ; $517b: $e2
    pop bc                                        ; $517c: $c1
    and b                                         ; $517d: $a0
    ld b, h                                       ; $517e: $44
    inc a                                         ; $517f: $3c
    dec [hl]                                      ; $5180: $35
    ld bc, $c140                                  ; $5181: $01 $40 $c1
    ldh [$7e], a                                  ; $5184: $e0 $7e
    and c                                         ; $5186: $a1
    cp d                                          ; $5187: $ba
    sub d                                         ; $5188: $92
    add l                                         ; $5189: $85
    adc a                                         ; $518a: $8f
    jp nz, $c4c2                                  ; $518b: $c2 $c2 $c4

    pop bc                                        ; $518e: $c1
    inc b                                         ; $518f: $04
    jp nz, Jump_000_3907                          ; $5190: $c2 $07 $39

    dec [hl]                                      ; $5193: $35
    dec [hl]                                      ; $5194: $35
    ld a, e                                       ; $5195: $7b
    and b                                         ; $5196: $a0
    cp l                                          ; $5197: $bd
    add d                                         ; $5198: $82
    ld a, e                                       ; $5199: $7b
    sub d                                         ; $519a: $92
    nop                                           ; $519b: $00
    pop de                                        ; $519c: $d1
    ld b, a                                       ; $519d: $47
    add b                                         ; $519e: $80
    ld e, $c0                                     ; $519f: $1e $c0
    push bc                                       ; $51a1: $c5
    xor a                                         ; $51a2: $af
    ld a, [hl-]                                   ; $51a3: $3a
    srl h                                         ; $51a4: $cb $3c
    ld a, e                                       ; $51a6: $7b
    and b                                         ; $51a7: $a0
    add d                                         ; $51a8: $82

jr_067_51a9:
    and h                                         ; $51a9: $a4
    nop                                           ; $51aa: $00
    cp a                                          ; $51ab: $bf
    ld hl, sp-$7b                                 ; $51ac: $f8 $85
    add c                                         ; $51ae: $81
    ld b, a                                       ; $51af: $47
    add d                                         ; $51b0: $82
    ld b, e                                       ; $51b1: $43
    and e                                         ; $51b2: $a3
    ld b, l                                       ; $51b3: $45
    ld [hl], $cf                                  ; $51b4: $36 $cf
    rst $08                                       ; $51b6: $cf
    ld a, [hl-]                                   ; $51b7: $3a
    ld h, c                                       ; $51b8: $61
    ld b, l                                       ; $51b9: $45
    inc a                                         ; $51ba: $3c
    and b                                         ; $51bb: $a0
    ld b, c                                       ; $51bc: $41
    or l                                          ; $51bd: $b5
    nop                                           ; $51be: $00
    sub d                                         ; $51bf: $92
    jp z, $d060                                   ; $51c0: $ca $60 $d0

    pop de                                        ; $51c3: $d1
    rlca                                          ; $51c4: $07
    add b                                         ; $51c5: $80
    rst $38                                       ; $51c6: $ff
    ld b, [hl]                                    ; $51c7: $46
    ld b, [hl]                                    ; $51c8: $46
    add hl, sp                                    ; $51c9: $39
    rst $08                                       ; $51ca: $cf
    call z, Call_000_3ece                         ; $51cb: $cc $ce $3e
    xor [hl]                                      ; $51ce: $ae
    ldh a, [$f9]                                  ; $51cf: $f0 $f9
    add c                                         ; $51d1: $81
    ld b, c                                       ; $51d2: $41
    or h                                          ; $51d3: $b4
    nop                                           ; $51d4: $00
    cp c                                          ; $51d5: $b9
    ld a, e                                       ; $51d6: $7b
    ret nz                                        ; $51d7: $c0

    ld a, [hl-]                                   ; $51d8: $3a
    adc $cb                                       ; $51d9: $ce $cb
    adc $f1                                       ; $51db: $ce $f1
    ld a, [hl-]                                   ; $51dd: $3a
    cp e                                          ; $51de: $bb
    add e                                         ; $51df: $83
    ld b, c                                       ; $51e0: $41
    or e                                          ; $51e1: $b3
    nop                                           ; $51e2: $00
    cp d                                          ; $51e3: $ba
    ld b, [hl]                                    ; $51e4: $46
    xor a                                         ; $51e5: $af
    inc a                                         ; $51e6: $3c
    rst $08                                       ; $51e7: $cf
    cpl                                           ; $51e8: $2f
    call $cbcf                                    ; $51e9: $cd $cf $cb
    add hl, sp                                    ; $51ec: $39
    ld a, a                                       ; $51ed: $7f
    ld [c], a                                     ; $51ee: $e2
    xor [hl]                                      ; $51ef: $ae
    ld b, c                                       ; $51f0: $41
    or d                                          ; $51f1: $b2
    nop                                           ; $51f2: $00
    cp b                                          ; $51f3: $b8
    ld a, [hl]                                    ; $51f4: $7e
    ld [bc], a                                    ; $51f5: $02
    add b                                         ; $51f6: $80
    ld b, l                                       ; $51f7: $45
    ld a, [hl-]                                   ; $51f8: $3a
    res 5, h                                      ; $51f9: $cb $ac
    dec [hl]                                      ; $51fb: $35
    dec [hl]                                      ; $51fc: $35
    ld a, a                                       ; $51fd: $7f
    pop hl                                        ; $51fe: $e1
    ldh a, [$b9]                                  ; $51ff: $f0 $b9
    ld h, b                                       ; $5201: $60
    ret nz                                        ; $5202: $c0

    di                                            ; $5203: $f3
    nop                                           ; $5204: $00
    jp nc, $a43e                                  ; $5205: $d2 $3e $a4

    xor a                                         ; $5208: $af
    ld b, [hl]                                    ; $5209: $46
    add hl, sp                                    ; $520a: $39
    dec [hl]                                      ; $520b: $35
    rst $38                                       ; $520c: $ff
    xor l                                         ; $520d: $ad
    dec [hl]                                      ; $520e: $35
    dec [hl]                                      ; $520f: $35
    dec [hl]                                      ; $5210: $35
    ld [hl], $45                                  ; $5211: $36 $45
    xor [hl]                                      ; $5213: $ae
    or d                                          ; $5214: $b2
    db $10                                        ; $5215: $10
    ld b, b                                       ; $5216: $40
    push af                                       ; $5217: $f5
    add l                                         ; $5218: $85
    ld d, d                                       ; $5219: $52
    ld a, $a2                                     ; $521a: $3e $a2
    add h                                         ; $521c: $84
    ld h, c                                       ; $521d: $61
    ld b, b                                       ; $521e: $40
    jp nz, $bfe0                                  ; $521f: $c2 $e0 $bf

    pop hl                                        ; $5222: $e1
    cp b                                          ; $5223: $b8
    ld h, b                                       ; $5224: $60
    ld h, b                                       ; $5225: $60
    cp d                                          ; $5226: $ba
    ld b, c                                       ; $5227: $41
    cp h                                          ; $5228: $bc
    ld d, b                                       ; $5229: $50
    nop                                           ; $522a: $00
    sub d                                         ; $522b: $92
    ld c, c                                       ; $522c: $49
    ld b, b                                       ; $522d: $40
    ld a, [hl]                                    ; $522e: $7e
    and d                                         ; $522f: $a2
    xor [hl]                                      ; $5230: $ae
    ld b, d                                       ; $5231: $42
    add d                                         ; $5232: $82
    ldh [$83], a                                  ; $5233: $e0 $83
    jr c, jr_067_526f                             ; $5235: $38 $38

    ld a, [hl]                                    ; $5237: $7e
    ldh [rSCY], a                                 ; $5238: $e0 $42
    add c                                         ; $523a: $81
    cp l                                          ; $523b: $bd
    or d                                          ; $523c: $b2
    nop                                           ; $523d: $00
    sub d                                         ; $523e: $92
    ld c, b                                       ; $523f: $48
    ld b, b                                       ; $5240: $40
    and c                                         ; $5241: $a1
    db $fc                                        ; $5242: $fc
    add h                                         ; $5243: $84
    ld h, d                                       ; $5244: $62

Jump_067_5245:
    ld b, d                                       ; $5245: $42
    and b                                         ; $5246: $a0
    ld a, [hl-]                                   ; $5247: $3a
    ld b, a                                       ; $5248: $47
    ld d, d                                       ; $5249: $52
    ld a, [hl-]                                   ; $524a: $3a
    cp e                                          ; $524b: $bb
    dec [hl]                                      ; $524c: $35
    ldh a, [$bb]                                  ; $524d: $f0 $bb
    ld b, h                                       ; $524f: $44
    ld a, $6f                                     ; $5250: $3e $6f
    nop                                           ; $5252: $00
    sub [hl]                                      ; $5253: $96
    ccf                                           ; $5254: $3f
    add d                                         ; $5255: $82
    ld b, l                                       ; $5256: $45
    ld a, [hl-]                                   ; $5257: $3a
    dec [hl]                                      ; $5258: $35
    add hl, sp                                    ; $5259: $39
    rra                                           ; $525a: $1f
    ld d, d                                       ; $525b: $52
    ld d, d                                       ; $525c: $52
    ld a, [hl-]                                   ; $525d: $3a
    dec [hl]                                      ; $525e: $35
    dec [hl]                                      ; $525f: $35
    ld a, h                                       ; $5260: $7c
    ret nz                                        ; $5261: $c0

    cp l                                          ; $5262: $bd
    add e                                         ; $5263: $83
    cp b                                          ; $5264: $b8
    dec l                                         ; $5265: $2d
    ld a, h                                       ; $5266: $7c
    add l                                         ; $5267: $85
    ld [hl], $c2                                  ; $5268: $36 $c2
    ld b, d                                       ; $526a: $42
    xor [hl]                                      ; $526b: $ae
    add hl, sp                                    ; $526c: $39
    ld [hl], $47                                  ; $526d: $36 $47

jr_067_526f:
    ld d, d                                       ; $526f: $52
    db $fd                                        ; $5270: $fd
    add b                                         ; $5271: $80
    pop bc                                        ; $5272: $c1
    bit 7, h                                      ; $5273: $cb $7c
    jp nz, Jump_067_713e                          ; $5275: $c2 $3e $71

    nop                                           ; $5278: $00
    ld [hl], d                                    ; $5279: $72
    ld a, $a5                                     ; $527a: $3e $a5
    add c                                         ; $527c: $81
    ld h, b                                       ; $527d: $60
    ld b, a                                       ; $527e: $47
    ld h, b                                       ; $527f: $60
    ld a, a                                       ; $5280: $7f
    ld d, d                                       ; $5281: $52
    ld a, [hl-]                                   ; $5282: $3a
    ld h, d                                       ; $5283: $62
    ld h, e                                       ; $5284: $63
    ld h, [hl]                                    ; $5285: $66
    dec [hl]                                      ; $5286: $35
    add hl, sp                                    ; $5287: $39
    ld [hl], a                                    ; $5288: $77
    ld b, c                                       ; $5289: $41
    db $ec                                        ; $528a: $ec
    ld a, $70                                     ; $528b: $3e $70
    nop                                           ; $528d: $00
    di                                            ; $528e: $f3
    jp c, Jump_000_3fdb                           ; $528f: $da $db $3f

    ld b, b                                       ; $5292: $40
    sbc [hl]                                      ; $5293: $9e
    ld b, [hl]                                    ; $5294: $46
    xor [hl]                                      ; $5295: $ae
    cp $c1                                        ; $5296: $fe $c1
    pop hl                                        ; $5298: $e1
    ld [hl], $62                                  ; $5299: $36 $62
    ld h, a                                       ; $529b: $67
    dec [hl]                                      ; $529c: $35
    ld l, b                                       ; $529d: $68
    ld h, [hl]                                    ; $529e: $66
    ld a, $e0                                     ; $529f: $3e $e0
    inc [hl]                                      ; $52a1: $34
    ld b, c                                       ; $52a2: $41
    cp $50                                        ; $52a3: $fe $50
    nop                                           ; $52a5: $00
    sub d                                         ; $52a6: $92
    call nz, Call_000_3f20                        ; $52a7: $c4 $20 $3f
    ld b, b                                       ; $52aa: $40
    sbc a                                         ; $52ab: $9f
    sbc h                                         ; $52ac: $9c
    xor a                                         ; $52ad: $af
    rst $38                                       ; $52ae: $ff
    ld b, h                                       ; $52af: $44
    ld c, l                                       ; $52b0: $4d
    ld h, c                                       ; $52b1: $61
    add hl, sp                                    ; $52b2: $39
    ld h, d                                       ; $52b3: $62
    ld h, a                                       ; $52b4: $67
    rst $08                                       ; $52b5: $cf
    rst $08                                       ; $52b6: $cf
    rst $00                                       ; $52b7: $c7
    dec [hl]                                      ; $52b8: $35
    ld l, d                                       ; $52b9: $6a
    ld a, $b6                                     ; $52ba: $3e $b6
    ld hl, $50be                                  ; $52bc: $21 $be $50
    add l                                         ; $52bf: $85
    ld de, $d7d6                                  ; $52c0: $11 $d6 $d7
    inc a                                         ; $52c3: $3c
    ccf                                           ; $52c4: $3f
    ld b, e                                       ; $52c5: $43
    ld a, d                                       ; $52c6: $7a
    ld h, b                                       ; $52c7: $60
    ld d, [hl]                                    ; $52c8: $56
    ld h, c                                       ; $52c9: $61
    ld a, $69                                     ; $52ca: $3e $69
    cp h                                          ; $52cc: $bc
    add b                                         ; $52cd: $80
    ret nz                                        ; $52ce: $c0

    ldh [$ec], a                                  ; $52cf: $e0 $ec
    cp $54                                        ; $52d1: $fe $54
    nop                                           ; $52d3: $00
    ld d, c                                       ; $52d4: $51
    ret c                                         ; $52d5: $d8

    reti                                          ; $52d6: $d9


    ccf                                           ; $52d7: $3f
    and h                                         ; $52d8: $a4
    ld b, [hl]                                    ; $52d9: $46
    xor a                                         ; $52da: $af
    ld d, l                                       ; $52db: $55
    rst $38                                       ; $52dc: $ff
    ld d, d                                       ; $52dd: $52
    ld a, [hl-]                                   ; $52de: $3a
    ld l, c                                       ; $52df: $69
    adc $bb                                       ; $52e0: $ce $bb
    rst $08                                       ; $52e2: $cf
    ld l, h                                       ; $52e3: $6c
    ld l, l                                       ; $52e4: $6d
    and c                                         ; $52e5: $a1
    ld a, $be                                     ; $52e6: $3e $be
    inc [hl]                                      ; $52e8: $34
    nop                                           ; $52e9: $00
    ld sp, $a0c1                                  ; $52ea: $31 $c1 $a0
    ld b, c                                       ; $52ed: $41
    ld b, b                                       ; $52ee: $40
    sbc l                                         ; $52ef: $9d
    ld [bc], a                                    ; $52f0: $02
    ld hl, $ff45                                  ; $52f1: $21 $45 $ff
    ld [hl], $62                                  ; $52f4: $36 $62
    halt                                          ; $52f6: $76
    adc $bb                                       ; $52f7: $ce $bb
    dec [hl]                                      ; $52f9: $35
    ld [hl], e                                    ; $52fa: $73
    ld l, [hl]                                    ; $52fb: $6e
    or c                                          ; $52fc: $b1
    add hl, sp                                    ; $52fd: $39
    db $fd                                        ; $52fe: $fd
    ld [hl], h                                    ; $52ff: $74
    nop                                           ; $5300: $00
    ld [hl], e                                    ; $5301: $73
    ld b, b                                       ; $5302: $40
    ld h, e                                       ; $5303: $63
    xor a                                         ; $5304: $af
    xor [hl]                                      ; $5305: $ae
    pop bc                                        ; $5306: $c1
    ldh [$67], a                                  ; $5307: $e0 $67
    ret nz                                        ; $5309: $c0

    ld b, c                                       ; $530a: $41
    ld [c], a                                     ; $530b: $e2
    cp e                                          ; $530c: $bb
    ld h, b                                       ; $530d: $60
    inc a                                         ; $530e: $3c
    ld h, d                                       ; $530f: $62
    add b                                         ; $5310: $80
    xor [hl]                                      ; $5311: $ae
    nop                                           ; $5312: $00
    rst $08                                       ; $5313: $cf
    ld b, d                                       ; $5314: $42
    ld l, c                                       ; $5315: $69
    add hl, sp                                    ; $5316: $39
    dec [hl]                                      ; $5317: $35
    jp Jump_000_3569                              ; $5318: $c3 $69 $35


    dec a                                         ; $531b: $3d
    add b                                         ; $531c: $80
    ld b, c                                       ; $531d: $41
    ldh [$3f], a                                  ; $531e: $e0 $3f
    and e                                         ; $5320: $a3
    nop                                           ; $5321: $00
    cp a                                          ; $5322: $bf
    and $e7                                       ; $5323: $e6 $e7
    ld hl, sp+$42                                 ; $5325: $f8 $42
    ld h, b                                       ; $5327: $60
    ld b, e                                       ; $5328: $43
    and c                                         ; $5329: $a1
    ret z                                         ; $532a: $c8

    ld [bc], a                                    ; $532b: $02
    ld a, $cb                                     ; $532c: $3e $cb
    ld l, c                                       ; $532e: $69
    dec [hl]                                      ; $532f: $35
    rr a                                          ; $5330: $cb $1f
    dec [hl]                                      ; $5332: $35
    ld l, h                                       ; $5333: $6c
    ld l, a                                       ; $5334: $6f
    ld l, [hl]                                    ; $5335: $6e
    add hl, sp                                    ; $5336: $39
    ccf                                           ; $5337: $3f
    and d                                         ; $5338: $a2
    nop                                           ; $5339: $00
    ld e, a                                       ; $533a: $5f
    jp $bc85                                      ; $533b: $c3 $85 $bc


    ld c, c                                       ; $533e: $49
    ld bc, $0043                                  ; $533f: $01 $43 $00
    ld a, $35                                     ; $5342: $3e $35
    ld l, e                                       ; $5344: $6b
    ld l, h                                       ; $5345: $6c
    pop bc                                        ; $5346: $c1
    pop hl                                        ; $5347: $e1
    ld [hl], $c0                                  ; $5348: $36 $c0
    ld a, $21                                     ; $534a: $3e $21
    nop                                           ; $534c: $00
    ccf                                           ; $534d: $3f
    ld b, $40                                     ; $534e: $06 $40
    inc b                                         ; $5350: $04
    ld hl, $44c3                                  ; $5351: $21 $c3 $44
    ret nz                                        ; $5354: $c0

    jr nz, jr_067_5395                            ; $5355: $20 $3e

    dec [hl]                                      ; $5357: $35
    rrca                                          ; $5358: $0f
    ld l, [hl]                                    ; $5359: $6e
    ld [hl], b                                    ; $535a: $70
    ld [hl], c                                    ; $535b: $71
    ld [hl], b                                    ; $535c: $70
    pop bc                                        ; $535d: $c1
    ldh [rLCDC], a                                ; $535e: $e0 $40
    ld [hl], $00                                  ; $5360: $36 $00
    db $d3                                        ; $5362: $d3
    nop                                           ; $5363: $00
    ld b, e                                       ; $5364: $43
    inc c                                         ; $5365: $0c
    add b                                         ; $5366: $80
    ld h, b                                       ; $5367: $60
    ld b, d                                       ; $5368: $42
    ldh [$3b], a                                  ; $5369: $e0 $3b
    dec sp                                        ; $536b: $3b
    add d                                         ; $536c: $82
    ldh [rLCDC], a                                ; $536d: $e0 $40
    ld [hl], $00                                  ; $536f: $36 $00
    db $d3                                        ; $5371: $d3
    ld a, $e3                                     ; $5372: $3e $e3
    dec e                                         ; $5374: $1d
    xor a                                         ; $5375: $af
    pop bc                                        ; $5376: $c1
    ld h, c                                       ; $5377: $61
    ld [hl], $43                                  ; $5378: $36 $43
    xor [hl]                                      ; $537a: $ae
    add c                                         ; $537b: $81
    ld bc, $553f                                  ; $537c: $01 $3f $55
    nop                                           ; $537f: $00
    call nc, $fef0                                ; $5380: $d4 $f0 $fe
    ret nz                                        ; $5383: $c0

    adc c                                         ; $5384: $89
    ld b, b                                       ; $5385: $40
    add e                                         ; $5386: $83
    jr nz, @-$38                                  ; $5387: $20 $c6

    ld h, b                                       ; $5389: $60
    xor a                                         ; $538a: $af
    ld [bc], a                                    ; $538b: $02
    rlca                                          ; $538c: $07
    rlca                                          ; $538d: $07
    ld b, b                                       ; $538e: $40
    ld bc, $0024                                  ; $538f: $01 $24 $00
    ccf                                           ; $5392: $3f
    nop                                           ; $5393: $00
    inc hl                                        ; $5394: $23

jr_067_5395:
    cp [hl]                                       ; $5395: $be
    pop bc                                        ; $5396: $c1
    jp nz, Jump_000_0720                          ; $5397: $c2 $20 $07

    add b                                         ; $539a: $80
    ld b, b                                       ; $539b: $40
    add $64                                       ; $539c: $c6 $64
    ld h, b                                       ; $539e: $60
    add b                                         ; $539f: $80
    dec [hl]                                      ; $53a0: $35
    add l                                         ; $53a1: $85
    ld [hl], b                                    ; $53a2: $70
    jp Jump_000_3f20                              ; $53a3: $c3 $20 $3f


    inc bc                                        ; $53a6: $03
    inc b                                         ; $53a7: $04
    jr nz, @+$37                                  ; $53a8: $20 $35

    ld b, d                                       ; $53aa: $42
    ld b, a                                       ; $53ab: $47
    ld b, c                                       ; $53ac: $41
    ret nz                                        ; $53ad: $c0

    ld b, [hl]                                    ; $53ae: $46
    ld h, c                                       ; $53af: $61
    ld b, c                                       ; $53b0: $41
    inc sp                                        ; $53b1: $33
    nop                                           ; $53b2: $00
    ld c, l                                       ; $53b3: $4d
    add h                                         ; $53b4: $84
    add l                                         ; $53b5: $85
    call nz, $8181                                ; $53b6: $c4 $81 $81
    pop hl                                        ; $53b9: $e1
    inc a                                         ; $53ba: $3c
    ld b, h                                       ; $53bb: $44
    nop                                           ; $53bc: $00
    ld b, a                                       ; $53bd: $47
    ld b, d                                       ; $53be: $42
    add $41                                       ; $53bf: $c6 $41
    pop bc                                        ; $53c1: $c1
    ld a, [c]                                     ; $53c2: $f2
    nop                                           ; $53c3: $00
    ret nc                                        ; $53c4: $d0

    jp $8126                                      ; $53c5: $c3 $26 $81


    pop hl                                        ; $53c8: $e1
    rlca                                          ; $53c9: $07
    pop bc                                        ; $53ca: $c1
    add [hl]                                      ; $53cb: $86
    ld b, d                                       ; $53cc: $42
    nop                                           ; $53cd: $00
    call nz, Call_000_00f1                        ; $53ce: $c4 $f1 $00
    ret nc                                        ; $53d1: $d0

    ld b, e                                       ; $53d2: $43
    ld h, b                                       ; $53d3: $60
    add h                                         ; $53d4: $84
    add l                                         ; $53d5: $85
    ld [bc], a                                    ; $53d6: $02
    pop hl                                        ; $53d7: $e1
    rlca                                          ; $53d8: $07
    ret c                                         ; $53d9: $d8

    nop                                           ; $53da: $00
    db $f4                                        ; $53db: $f4
    push bc                                       ; $53dc: $c5
    ld hl, $8280                                  ; $53dd: $21 $80 $82
    add b                                         ; $53e0: $80
    ld [bc], a                                    ; $53e1: $02
    ld b, b                                       ; $53e2: $40
    add h                                         ; $53e3: $84
    ld b, c                                       ; $53e4: $41
    rlca                                          ; $53e5: $07
    pop bc                                        ; $53e6: $c1
    add a                                         ; $53e7: $87
    or h                                          ; $53e8: $b4
    nop                                           ; $53e9: $00
    db $f4                                        ; $53ea: $f4
    ld b, $66                                     ; $53eb: $06 $66
    ld b, [hl]                                    ; $53ed: $46
    rrca                                          ; $53ee: $0f
    ld b, d                                       ; $53ef: $42
    dec [hl]                                      ; $53f0: $35
    dec sp                                        ; $53f1: $3b
    add hl, sp                                    ; $53f2: $39
    cp d                                          ; $53f3: $ba
    and d                                         ; $53f4: $a2
    ret nz                                        ; $53f5: $c0

    ld a, [$4d85]                                 ; $53f6: $fa $85 $4d
    inc b                                         ; $53f9: $04
    add c                                         ; $53fa: $81
    ld e, $43                                     ; $53fb: $1e $43
    add d                                         ; $53fd: $82
    ld b, [hl]                                    ; $53fe: $46
    ld b, l                                       ; $53ff: $45
    ccf                                           ; $5400: $3f
    ld b, e                                       ; $5401: $43
    ld a, [bc]                                    ; $5402: $0a
    and c                                         ; $5403: $a1
    ld bc, $40c0                                  ; $5404: $01 $c0 $40
    ld sp, hl                                     ; $5407: $f9
    inc b                                         ; $5408: $04
    add l                                         ; $5409: $85
    ld l, h                                       ; $540a: $6c
    dec b                                         ; $540b: $05
    ld b, c                                       ; $540c: $41
    sbc [hl]                                      ; $540d: $9e
    ld b, [hl]                                    ; $540e: $46
    ld hl, $e4fd                                  ; $540f: $21 $fd $e4
    ld [$00a3], sp                                ; $5412: $08 $a3 $00
    rst $38                                       ; $5415: $ff
    ld a, e                                       ; $5416: $7b
    ld h, e                                       ; $5417: $63
    nop                                           ; $5418: $00
    ld [bc], a                                    ; $5419: $02
    jp nz, $40c9                                  ; $541a: $c2 $c9 $40

    inc bc                                        ; $541d: $03
    add d                                         ; $541e: $82
    cp a                                          ; $541f: $bf
    add d                                         ; $5420: $82
    ld c, d                                       ; $5421: $4a
    ld h, h                                       ; $5422: $64
    nop                                           ; $5423: $00
    rst $38                                       ; $5424: $ff
    ld a, e                                       ; $5425: $7b
    ld b, h                                       ; $5426: $44
    add [hl]                                      ; $5427: $86
    nop                                           ; $5428: $00
    ld a, [hl]                                    ; $5429: $7e
    ld b, [hl]                                    ; $542a: $46
    jr nz, jr_067_5472                            ; $542b: $20 $45

    xor a                                         ; $542d: $af
    ld b, c                                       ; $542e: $41
    ld b, e                                       ; $542f: $43
    ld b, e                                       ; $5430: $43
    ld b, c                                       ; $5431: $41
    ld b, c                                       ; $5432: $41
    pop hl                                        ; $5433: $e1
    ld [hl], b                                    ; $5434: $70
    adc e                                         ; $5435: $8b
    inc hl                                        ; $5436: $23
    push bc                                       ; $5437: $c5
    or e                                          ; $5438: $b3
    nop                                           ; $5439: $00
    ld [hl], c                                    ; $543a: $71
    push bc                                       ; $543b: $c5
    add d                                         ; $543c: $82
    ld b, l                                       ; $543d: $45
    ld [hl], $3b                                  ; $543e: $36 $3b
    adc d                                         ; $5440: $8a
    add b                                         ; $5441: $80
    pop bc                                        ; $5442: $c1
    dec [hl]                                      ; $5443: $35
    adc b                                         ; $5444: $88
    add b                                         ; $5445: $80
    dec bc                                        ; $5446: $0b
    dec h                                         ; $5447: $25
    ld bc, $00f6                                  ; $5448: $01 $f6 $00
    adc l                                         ; $544b: $8d
    add [hl]                                      ; $544c: $86
    ld [bc], a                                    ; $544d: $02
    ld b, h                                       ; $544e: $44
    inc a                                         ; $544f: $3c
    dec sp                                        ; $5450: $3b
    and h                                         ; $5451: $a4
    ld h, h                                       ; $5452: $64
    rst $38                                       ; $5453: $ff
    ldh [$a5], a                                  ; $5454: $e0 $a5
    inc a                                         ; $5456: $3c
    ld b, h                                       ; $5457: $44
    adc e                                         ; $5458: $8b
    inc d                                         ; $5459: $14
    nop                                           ; $545a: $00
    cp d                                          ; $545b: $ba
    rst $38                                       ; $545c: $ff
    sbc a                                         ; $545d: $9f
    sbc h                                         ; $545e: $9c
    ld b, d                                       ; $545f: $42
    dec [hl]                                      ; $5460: $35
    ld l, c                                       ; $5461: $69
    and e                                         ; $5462: $a3
    dec [hl]                                      ; $5463: $35
    dec [hl]                                      ; $5464: $35
    rrca                                          ; $5465: $0f
    and e                                         ; $5466: $a3
    ld l, d                                       ; $5467: $6a
    dec [hl]                                      ; $5468: $35
    ld b, d                                       ; $5469: $42
    ld b, l                                       ; $546a: $45
    and h                                         ; $546b: $a4
    pop bc                                        ; $546c: $c1
    rst $30                                       ; $546d: $f7
    nop                                           ; $546e: $00
    xor [hl]                                      ; $546f: $ae
    add $00                                       ; $5470: $c6 $00

jr_067_5472:
    add hl, bc                                    ; $5472: $09
    sbc [hl]                                      ; $5473: $9e
    ret nz                                        ; $5474: $c0

    ldh [rLYC], a                                 ; $5475: $e0 $45
    and b                                         ; $5477: $a0
    dec [hl]                                      ; $5478: $35
    ret nz                                        ; $5479: $c0

    ld [c], a                                     ; $547a: $e2
    call z, $c041                                 ; $547b: $cc $41 $c0
    ld sp, hl                                     ; $547e: $f9
    add l                                         ; $547f: $85
    dec c                                         ; $5480: $0d
    sbc $c4                                       ; $5481: $de $c4
    ld h, c                                       ; $5483: $61
    ld b, h                                       ; $5484: $44
    inc a                                         ; $5485: $3c
    ld l, e                                       ; $5486: $6b
    ld [hl], c                                    ; $5487: $71
    rst $38                                       ; $5488: $ff
    ldh [$6d], a                                  ; $5489: $e0 $6d
    inc a                                         ; $548b: $3c
    ld hl, $8e44                                  ; $548c: $21 $44 $8e
    ld hl, $fb40                                  ; $548f: $21 $40 $fb
    add l                                         ; $5492: $85
    dec c                                         ; $5493: $0d
    call nz, $a160                                ; $5494: $c4 $60 $a1
    ret nz                                        ; $5497: $c0

    add $4b                                       ; $5498: $c6 $4b
    ld b, d                                       ; $549a: $42
    jr @+$44                                      ; $549b: $18 $42

    reti                                          ; $549d: $d9


    nop                                           ; $549e: $00
    sub d                                         ; $549f: $92
    ld a, a                                       ; $54a0: $7f
    ret nz                                        ; $54a1: $c0

    ld b, e                                       ; $54a2: $43
    xor [hl]                                      ; $54a3: $ae
    ld b, b                                       ; $54a4: $40
    jp nz, $c002                                  ; $54a5: $c2 $02 $c0

    add a                                         ; $54a8: $87
    ld h, d                                       ; $54a9: $62
    inc a                                         ; $54aa: $3c
    ret nz                                        ; $54ab: $c0

    ld hl, sp+$00                                 ; $54ac: $f8 $00
    inc l                                         ; $54ae: $2c
    push af                                       ; $54af: $f5
    or $d0                                        ; $54b0: $f6 $d0
    pop de                                        ; $54b2: $d1
    ld bc, $80a3                                  ; $54b3: $01 $a3 $80
    ld b, d                                       ; $54b6: $42
    rlca                                          ; $54b7: $07
    sbc h                                         ; $54b8: $9c
    sbc l                                         ; $54b9: $9d
    sbc h                                         ; $54ba: $9c
    rlc d                                         ; $54bb: $cb $02
    ld b, b                                       ; $54bd: $40
    rst $10                                       ; $54be: $d7
    nop                                           ; $54bf: $00
    adc [hl]                                      ; $54c0: $8e
    ld b, a                                       ; $54c1: $47
    nop                                           ; $54c2: $00
    ld b, e                                       ; $54c3: $43
    ld h, d                                       ; $54c4: $62
    ld b, $c3                                     ; $54c5: $06 $c3
    pop hl                                        ; $54c7: $e1
    sbc l                                         ; $54c8: $9d
    sbc a                                         ; $54c9: $9f
    dec sp                                        ; $54ca: $3b
    nop                                           ; $54cb: $00
    pop bc                                        ; $54cc: $c1
    ld h, e                                       ; $54cd: $63
    nop                                           ; $54ce: $00
    rst $38                                       ; $54cf: $ff
    add l                                         ; $54d0: $85
    ld [bc], a                                    ; $54d1: $02
    jp $1461                                      ; $54d2: $c3 $61 $14


    jp $c002                                      ; $54d5: $c3 $02 $c0


    nop                                           ; $54d8: $00
    sbc a                                         ; $54d9: $9f
    inc sp                                        ; $54da: $33
    ld h, d                                       ; $54db: $62
    sbc [hl]                                      ; $54dc: $9e
    ld [$0033], sp                                ; $54dd: $08 $33 $00
    ld d, h                                       ; $54e0: $54
    ld b, a                                       ; $54e1: $47
    ld [bc], a                                    ; $54e2: $02
    nop                                           ; $54e3: $00
    ei                                            ; $54e4: $fb
    ld b, d                                       ; $54e5: $42
    dec [hl]                                      ; $54e6: $35
    pop bc                                        ; $54e7: $c1
    or d                                          ; $54e8: $b2
    add d                                         ; $54e9: $82
    adc b                                         ; $54ea: $88
    inc b                                         ; $54eb: $04
    ld a, [hl]                                    ; $54ec: $7e
    db $f4                                        ; $54ed: $f4
    add l                                         ; $54ee: $85
    ld c, a                                       ; $54ef: $4f
    ld a, e                                       ; $54f0: $7b
    dec h                                         ; $54f1: $25
    push af                                       ; $54f2: $f5
    ld h, d                                       ; $54f3: $62
    nop                                           ; $54f4: $00
    di                                            ; $54f5: $f3
    ld h, c                                       ; $54f6: $61
    cp a                                          ; $54f7: $bf
    ld a, [$0000]                                 ; $54f8: $fa $00 $00
    nop                                           ; $54fb: $00
    pop bc                                        ; $54fc: $c1
    nop                                           ; $54fd: $00
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    rst $38                                       ; $5502: $ff
    rst $38                                       ; $5503: $ff
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    rst $38                                       ; $5506: $ff
    rst $38                                       ; $5507: $ff
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    dec c                                         ; $550a: $0d
    add b                                         ; $550b: $80
    cp $e0                                        ; $550c: $fe $e0
    nop                                           ; $550e: $00
    ld b, b                                       ; $550f: $40
    ret c                                         ; $5510: $d8

    push hl                                       ; $5511: $e5
    rst $30                                       ; $5512: $f7
    and $ff                                       ; $5513: $e6 $ff
    rst $38                                       ; $5515: $ff
    rst $38                                       ; $5516: $ff
    rst $30                                       ; $5517: $f7
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    ld [bc], a                                    ; $551b: $02
    nop                                           ; $551c: $00
    ld [hl+], a                                   ; $551d: $22
    inc bc                                        ; $551e: $03
    ld [bc], a                                    ; $551f: $02
    ld bc, $051e                                  ; $5520: $01 $1e $05
    ld [bc], a                                    ; $5523: $02
    ld [bc], a                                    ; $5524: $02
    ld hl, $0206                                  ; $5525: $21 $06 $02
    inc bc                                        ; $5528: $03
    daa                                           ; $5529: $27
    ld b, $02                                     ; $552a: $06 $02
    inc b                                         ; $552c: $04
    inc hl                                        ; $552d: $23
    rlca                                          ; $552e: $07
    ld [bc], a                                    ; $552f: $02
    dec b                                         ; $5530: $05
    inc e                                         ; $5531: $1c
    ld [$0602], sp                                ; $5532: $08 $02 $06
    ld h, $08                                     ; $5535: $26 $08
    ld [bc], a                                    ; $5537: $02
    rlca                                          ; $5538: $07
    rra                                           ; $5539: $1f
    add hl, bc                                    ; $553a: $09
    ld [bc], a                                    ; $553b: $02
    ld [$0929], sp                                ; $553c: $08 $29 $09
    ld [bc], a                                    ; $553f: $02
    add hl, bc                                    ; $5540: $09
    dec de                                        ; $5541: $1b
    dec bc                                        ; $5542: $0b
    ld [bc], a                                    ; $5543: $02
    ld a, [bc]                                    ; $5544: $0a
    daa                                           ; $5545: $27
    dec bc                                        ; $5546: $0b
    ld [bc], a                                    ; $5547: $02
    dec bc                                        ; $5548: $0b
    jr jr_067_5558                                ; $5549: $18 $0d

    ld [bc], a                                    ; $554b: $02
    inc c                                         ; $554c: $0c
    dec e                                         ; $554d: $1d
    ld c, $02                                     ; $554e: $0e $02
    dec c                                         ; $5550: $0d
    rra                                           ; $5551: $1f
    rrca                                          ; $5552: $0f
    ld [bc], a                                    ; $5553: $02
    ld c, $23                                     ; $5554: $0e $23
    rrca                                          ; $5556: $0f
    ld [bc], a                                    ; $5557: $02

jr_067_5558:
    rrca                                          ; $5558: $0f
    dec de                                        ; $5559: $1b
    db $10                                        ; $555a: $10
    ld [bc], a                                    ; $555b: $02
    db $10                                        ; $555c: $10
    dec h                                         ; $555d: $25
    ld de, $1102                                  ; $555e: $11 $02 $11
    inc hl                                        ; $5561: $23
    ld [de], a                                    ; $5562: $12
    ld [bc], a                                    ; $5563: $02
    ld [de], a                                    ; $5564: $12
    dec e                                         ; $5565: $1d
    inc de                                        ; $5566: $13
    ld [bc], a                                    ; $5567: $02
    inc de                                        ; $5568: $13
    ld h, $13                                     ; $5569: $26 $13
    ld [bc], a                                    ; $556b: $02
    inc d                                         ; $556c: $14
    inc h                                         ; $556d: $24
    inc d                                         ; $556e: $14
    ld [bc], a                                    ; $556f: $02
    dec d                                         ; $5570: $15
    add hl, hl                                    ; $5571: $29
    inc d                                         ; $5572: $14
    ld [bc], a                                    ; $5573: $02
    ld d, $1c                                     ; $5574: $16 $1c
    dec d                                         ; $5576: $15
    ld [bc], a                                    ; $5577: $02
    rla                                           ; $5578: $17
    jr nz, jr_067_5590                            ; $5579: $20 $15

    ld bc, $2718                                  ; $557b: $01 $18 $27
    dec d                                         ; $557e: $15
    ld [bc], a                                    ; $557f: $02
    add hl, de                                    ; $5580: $19
    ld h, $16                                     ; $5581: $26 $16
    ld [bc], a                                    ; $5583: $02
    ld a, [de]                                    ; $5584: $1a
    ld a, [de]                                    ; $5585: $1a
    rla                                           ; $5586: $17
    ld [bc], a                                    ; $5587: $02
    dec de                                        ; $5588: $1b
    dec e                                         ; $5589: $1d
    jr jr_067_558d                                ; $558a: $18 $01

    inc e                                         ; $558c: $1c

jr_067_558d:
    dec h                                         ; $558d: $25
    jr jr_067_5592                                ; $558e: $18 $02

jr_067_5590:
    dec e                                         ; $5590: $1d

Call_067_5591:
    daa                                           ; $5591: $27

jr_067_5592:
    jr jr_067_5596                                ; $5592: $18 $02

    ld e, $1c                                     ; $5594: $1e $1c

jr_067_5596:
    ld a, [de]                                    ; $5596: $1a
    ld [bc], a                                    ; $5597: $02
    rra                                           ; $5598: $1f
    jr z, @+$1c                                   ; $5599: $28 $1a

    ld [bc], a                                    ; $559b: $02
    jr nz, @+$20                                  ; $559c: $20 $1e

    dec de                                        ; $559e: $1b
    ld [bc], a                                    ; $559f: $02

Jump_067_55a0:
    ld hl, $1c2a                                  ; $55a0: $21 $2a $1c
    ld [bc], a                                    ; $55a3: $02
    ld [hl+], a                                   ; $55a4: $22
    dec e                                         ; $55a5: $1d
    dec e                                         ; $55a6: $1d
    ld [bc], a                                    ; $55a7: $02
    inc hl                                        ; $55a8: $23
    ld e, $1f                                     ; $55a9: $1e $1f
    ld bc, $2424                                  ; $55ab: $01 $24 $24
    rra                                           ; $55ae: $1f
    ld [bc], a                                    ; $55af: $02
    dec h                                         ; $55b0: $25
    add hl, hl                                    ; $55b1: $29
    rra                                           ; $55b2: $1f
    ld bc, $2426                                  ; $55b3: $01 $26 $24
    jr nz, jr_067_55ba                            ; $55b6: $20 $02

    daa                                           ; $55b8: $27
    inc e                                         ; $55b9: $1c

jr_067_55ba:
    ld hl, $2802                                  ; $55ba: $21 $02 $28
    dec e                                         ; $55bd: $1d
    ld [hl+], a                                   ; $55be: $22
    ld [bc], a                                    ; $55bf: $02

Jump_067_55c0:
    add hl, hl                                    ; $55c0: $29
    add hl, de                                    ; $55c1: $19
    inc hl                                        ; $55c2: $23
    ld [bc], a                                    ; $55c3: $02
    ld a, [hl+]                                   ; $55c4: $2a
    jr z, jr_067_55ea                             ; $55c5: $28 $23

    ld [bc], a                                    ; $55c7: $02
    dec hl                                        ; $55c8: $2b
    dec de                                        ; $55c9: $1b
    inc h                                         ; $55ca: $24
    ld [bc], a                                    ; $55cb: $02
    inc l                                         ; $55cc: $2c
    jr jr_067_55f4                                ; $55cd: $18 $25

    ld [bc], a                                    ; $55cf: $02
    dec l                                         ; $55d0: $2d
    daa                                           ; $55d1: $27
    ld h, $02                                     ; $55d2: $26 $02
    ld l, $1c                                     ; $55d4: $2e $1c
    daa                                           ; $55d6: $27
    ld [bc], a                                    ; $55d7: $02
    cpl                                           ; $55d8: $2f
    ld a, [de]                                    ; $55d9: $1a
    jr z, jr_067_55de                             ; $55da: $28 $02

    jr nc, jr_067_5601                            ; $55dc: $30 $23

jr_067_55de:
    jr z, @+$04                                   ; $55de: $28 $02

    ld sp, $2921                                  ; $55e0: $31 $21 $29
    ld [bc], a                                    ; $55e3: $02
    ld [hl-], a                                   ; $55e4: $32
    ld [hl+], a                                   ; $55e5: $22
    dec hl                                        ; $55e6: $2b
    ld [bc], a                                    ; $55e7: $02
    inc sp                                        ; $55e8: $33
    ld a, [de]                                    ; $55e9: $1a

jr_067_55ea:
    inc l                                         ; $55ea: $2c
    ld [bc], a                                    ; $55eb: $02
    inc [hl]                                      ; $55ec: $34
    jr nz, @+$30                                  ; $55ed: $20 $2e

    ld [bc], a                                    ; $55ef: $02
    dec [hl]                                      ; $55f0: $35
    jr jr_067_5622                                ; $55f1: $18 $2f

    ld [bc], a                                    ; $55f3: $02

jr_067_55f4:
    ld [hl], $22                                  ; $55f4: $36 $22
    jr nc, jr_067_55fa                            ; $55f6: $30 $02

    scf                                           ; $55f8: $37
    inc d                                         ; $55f9: $14

jr_067_55fa:
    ld [hl-], a                                   ; $55fa: $32
    ld [bc], a                                    ; $55fb: $02
    jr c, @+$21                                   ; $55fc: $38 $1f

    ld [hl-], a                                   ; $55fe: $32
    ld [bc], a                                    ; $55ff: $02
    add hl, sp                                    ; $5600: $39

jr_067_5601:
    ld d, $33                                     ; $5601: $16 $33
    ld [bc], a                                    ; $5603: $02
    ld a, [hl-]                                   ; $5604: $3a
    dec e                                         ; $5605: $1d
    ld a, [hl-]                                   ; $5606: $3a
    ld [bc], a                                    ; $5607: $02
    dec sp                                        ; $5608: $3b
    rla                                           ; $5609: $17
    dec sp                                        ; $560a: $3b
    rst $38                                       ; $560b: $ff
    rst $38                                       ; $560c: $ff
    rst $38                                       ; $560d: $ff
    ld d, $56                                     ; $560e: $16 $56
    rrca                                          ; $5610: $0f
    ld e, h                                       ; $5611: $5c
    db $f4                                        ; $5612: $f4
    ld h, d                                       ; $5613: $62
    ld d, $63                                     ; $5614: $16 $63
    push af                                       ; $5616: $f5
    ld c, l                                       ; $5617: $4d
    rst $38                                       ; $5618: $ff
    db $e4                                        ; $5619: $e4
    ld l, $ff                                     ; $561a: $2e $ff
    ldh [$0e], a                                  ; $561c: $e0 $0e
    ld l, $0e                                     ; $561e: $2e $0e
    ld c, $ee                                     ; $5620: $0e $ee

jr_067_5622:
    ldh a, [$e0]                                  ; $5622: $f0 $e0
    dec c                                         ; $5624: $0d
    ld c, l                                       ; $5625: $4d
    ld l, [hl]                                    ; $5626: $6e

jr_067_5627:
    ld hl, sp-$20                                 ; $5627: $f8 $e0
    dec c                                         ; $5629: $0d
    ld c, l                                       ; $562a: $4d
    dec c                                         ; $562b: $0d
    add hl, bc                                    ; $562c: $09
    dec c                                         ; $562d: $0d
    db $f4                                        ; $562e: $f4
    pop hl                                        ; $562f: $e1
    db $fc                                        ; $5630: $fc
    db $e3                                        ; $5631: $e3
    ld c, l                                       ; $5632: $4d
    push hl                                       ; $5633: $e5
    ldh [$e4], a                                  ; $5634: $e0 $e4
    pop hl                                        ; $5636: $e1
    push de                                       ; $5637: $d5
    db $e3                                        ; $5638: $e3
    or $e2                                        ; $5639: $f6 $e2
    ld l, b                                       ; $563b: $68
    rst $18                                       ; $563c: $df
    ldh [$fb], a                                  ; $563d: $e0 $fb
    ld [c], a                                     ; $563f: $e2
    pop hl                                        ; $5640: $e1
    ld [c], a                                     ; $5641: $e2
    dec c                                         ; $5642: $0d
    ret nz                                        ; $5643: $c0

    rst $20                                       ; $5644: $e7
    dec c                                         ; $5645: $0d
    ld c, $de                                     ; $5646: $0e $de
    ld [c], a                                     ; $5648: $e2
    db $fc                                        ; $5649: $fc
    ret nz                                        ; $564a: $c0

    push hl                                       ; $564b: $e5
    or [hl]                                       ; $564c: $b6
    ldh [$0d], a                                  ; $564d: $e0 $0d
    dec c                                         ; $564f: $0d
    ld l, $0e                                     ; $5650: $2e $0e
    ld l, [hl]                                    ; $5652: $6e
    ld l, $80                                     ; $5653: $2e $80
    xor e                                         ; $5655: $ab
    ldh [$e1], a                                  ; $5656: $e0 $e1
    ld [c], a                                     ; $5658: $e2
    and d                                         ; $5659: $a2
    ld [c], a                                     ; $565a: $e2
    adc c                                         ; $565b: $89
    ld [c], a                                     ; $565c: $e2
    add $e3                                       ; $565d: $c6 $e3
    push af                                       ; $565f: $f5
    db $e4                                        ; $5660: $e4
    add b                                         ; $5661: $80
    db $e3                                        ; $5662: $e3
    ld l, l                                       ; $5663: $6d
    jr nc, jr_067_5627                            ; $5664: $30 $c1

    ldh [$c0], a                                  ; $5666: $e0 $c0
    ldh [$78], a                                  ; $5668: $e0 $78
    db $e3                                        ; $566a: $e3
    sbc [hl]                                      ; $566b: $9e

jr_067_566c:
    pop hl                                        ; $566c: $e1
    dec l                                         ; $566d: $2d
    ld l, l                                       ; $566e: $6d
    pop bc                                        ; $566f: $c1
    ldh [$a2], a                                  ; $5670: $e0 $a2
    pop hl                                        ; $5672: $e1
    rrca                                          ; $5673: $0f
    ld l, [hl]                                    ; $5674: $6e
    ld c, $4e                                     ; $5675: $0e $4e
    ld c, [hl]                                    ; $5677: $4e
    ret nz                                        ; $5678: $c0

    db $e3                                        ; $5679: $e3
    and d                                         ; $567a: $a2
    ld [c], a                                     ; $567b: $e2
    adc c                                         ; $567c: $89
    db $e3                                        ; $567d: $e3
    db $fc                                        ; $567e: $fc
    rst $20                                       ; $567f: $e7
    adc e                                         ; $5680: $8b
    dec l                                         ; $5681: $2d
    ld l, l                                       ; $5682: $6d
    ld b, b                                       ; $5683: $40
    ldh [$6d], a                                  ; $5684: $e0 $6d
    db $d3                                        ; $5686: $d3
    ldh [rOBP1], a                                ; $5687: $e0 $49
    pop hl                                        ; $5689: $e1
    jr c, jr_067_566c                             ; $568a: $38 $e0

    dec c                                         ; $568c: $0d
    ld a, e                                       ; $568d: $7b
    dec c                                         ; $568e: $0d
    ld c, $3e                                     ; $568f: $0e $3e
    ldh [$6d], a                                  ; $5691: $e0 $6d
    dec hl                                        ; $5693: $2b
    ld c, l                                       ; $5694: $4d
    dec l                                         ; $5695: $2d
    add b                                         ; $5696: $80
    ld [c], a                                     ; $5697: $e2
    ld c, $21                                     ; $5698: $0e $21
    ld [c], a                                     ; $569a: $e2
    ld c, $0e                                     ; $569b: $0e $0e
    ld c, [hl]                                    ; $569d: $4e
    db $eb                                        ; $569e: $eb
    pop hl                                        ; $569f: $e1
    and d                                         ; $56a0: $a2
    push hl                                       ; $56a1: $e5
    cp $e6                                        ; $56a2: $fe $e6
    ld a, d                                       ; $56a4: $7a
    and $78                                       ; $56a5: $e6 $78
    add hl, de                                    ; $56a7: $19
    add sp, $79                                   ; $56a8: $e8 $79
    pop hl                                        ; $56aa: $e1
    pop bc                                        ; $56ab: $c1
    ldh [$0a], a                                  ; $56ac: $e0 $0a
    ld l, d                                       ; $56ae: $6a
    ld c, l                                       ; $56af: $4d
    dec l                                         ; $56b0: $2d
    call Call_000_00e1                            ; $56b1: $cd $e1 $00
    ret nz                                        ; $56b4: $c0

    db $e4                                        ; $56b5: $e4
    xor b                                         ; $56b6: $a8
    pop hl                                        ; $56b7: $e1
    ret nz                                        ; $56b8: $c0

    db $e4                                        ; $56b9: $e4
    ld h, b                                       ; $56ba: $60
    ld [c], a                                     ; $56bb: $e2
    call c, $c2c6                                 ; $56bc: $dc $c6 $c2
    push hl                                       ; $56bf: $e5
    add hl, de                                    ; $56c0: $19
    and $b8                                       ; $56c1: $e6 $b8
    pop bc                                        ; $56c3: $c1
    rst $38                                       ; $56c4: $ff
    ld l, l                                       ; $56c5: $6d
    dec bc                                        ; $56c6: $0b
    dec hl                                        ; $56c7: $2b
    ld c, d                                       ; $56c8: $4a
    ld a, [bc]                                    ; $56c9: $0a
    ld c, e                                       ; $56ca: $4b
    dec l                                         ; $56cb: $2d
    ld c, l                                       ; $56cc: $4d
    pop bc                                        ; $56cd: $c1
    ld c, $c0                                     ; $56ce: $0e $c0
    db $eb                                        ; $56d0: $eb
    sub c                                         ; $56d1: $91
    add sp, -$07                                  ; $56d2: $e8 $f9
    db $ec                                        ; $56d4: $ec
    add hl, de                                    ; $56d5: $19
    rst $20                                       ; $56d6: $e7
    cp b                                          ; $56d7: $b8
    pop bc                                        ; $56d8: $c1
    ld l, l                                       ; $56d9: $6d
    dec hl                                        ; $56da: $2b
    rra                                           ; $56db: $1f
    dec hl                                        ; $56dc: $2b
    dec bc                                        ; $56dd: $0b
    ld a, [hl+]                                   ; $56de: $2a
    ld a, [bc]                                    ; $56df: $0a
    dec bc                                        ; $56e0: $0b
    ccf                                           ; $56e1: $3f
    pop hl                                        ; $56e2: $e1
    ret nz                                        ; $56e3: $c0

    db $ed                                        ; $56e4: $ed
    inc b                                         ; $56e5: $04
    add sp, -$08                                  ; $56e6: $e8 $f8
    ld a, [hl-]                                   ; $56e8: $3a
    jp hl                                         ; $56e9: $e9


    add hl, de                                    ; $56ea: $19
    rst $20                                       ; $56eb: $e7
    jp nz, $0ac1                                  ; $56ec: $c2 $c1 $0a

    ld l, d                                       ; $56ef: $6a
    ld l, e                                       ; $56f0: $6b
    dec bc                                        ; $56f1: $0b
    dec hl                                        ; $56f2: $2b
    ld h, c                                       ; $56f3: $61
    ld c, e                                       ; $56f4: $4b
    ret nz                                        ; $56f5: $c0

    pop hl                                        ; $56f6: $e1
    ld hl, $40c4                                  ; $56f7: $21 $c4 $40
    ld [c], a                                     ; $56fa: $e2
    inc [hl]                                      ; $56fb: $34
    bit 1, l                                      ; $56fc: $cb $4d
    ld l, l                                       ; $56fe: $6d
    rst $38                                       ; $56ff: $ff
    ldh [$f0], a                                  ; $5700: $e0 $f0
    dec b                                         ; $5702: $05
    pop bc                                        ; $5703: $c1
    push bc                                       ; $5704: $c5
    pop bc                                        ; $5705: $c1
    add hl, de                                    ; $5706: $19
    add sp, -$40                                  ; $5707: $e8 $c0
    ld [c], a                                     ; $5709: $e2
    ld a, [bc]                                    ; $570a: $0a
    ld c, e                                       ; $570b: $4b
    ld c, e                                       ; $570c: $4b
    ld l, e                                       ; $570d: $6b
    add c                                         ; $570e: $81
    dec hl                                        ; $570f: $2b
    ld a, l                                       ; $5710: $7d

jr_067_5711:
    ret nz                                        ; $5711: $c0

    pop hl                                        ; $5712: $e1
    and l                                         ; $5713: $a5
    ret nz                                        ; $5714: $c0

    db $e3                                        ; $5715: $e3
    inc [hl]                                      ; $5716: $34
    rst $00                                       ; $5717: $c7
    ld h, [hl]                                    ; $5718: $66
    pop bc                                        ; $5719: $c1
    jp Jump_000_2ee1                              ; $571a: $c3 $e1 $2e


    rst $20                                       ; $571d: $e7
    ld c, [hl]                                    ; $571e: $4e
    ld c, $4e                                     ; $571f: $0e $4e
    db $ec                                        ; $5721: $ec
    and c                                         ; $5722: $a1
    ret nz                                        ; $5723: $c0

    db $ec                                        ; $5724: $ec
    ld a, [hl+]                                   ; $5725: $2a
    ld a, [hl+]                                   ; $5726: $2a
    dec c                                         ; $5727: $0d
    add b                                         ; $5728: $80
    ld a, a                                       ; $5729: $7f
    ldh [$ba], a                                  ; $572a: $e0 $ba
    and b                                         ; $572c: $a0
    ld a, l                                       ; $572d: $7d
    pop bc                                        ; $572e: $c1
    cp [hl]                                       ; $572f: $be
    and [hl]                                      ; $5730: $a6
    inc [hl]                                      ; $5731: $34
    ret z                                         ; $5732: $c8

    and b                                         ; $5733: $a0
    and c                                         ; $5734: $a1
    ld c, c                                       ; $5735: $49
    ret nz                                        ; $5736: $c0

    ld l, [hl]                                    ; $5737: $6e
    pop hl                                        ; $5738: $e1
    ld l, [hl]                                    ; $5739: $6e
    cp a                                          ; $573a: $bf
    ldh [$b1], a                                  ; $573b: $e0 $b1
    ld [c], a                                     ; $573d: $e2
    add b                                         ; $573e: $80
    add sp, -$37                                  ; $573f: $e8 $c9
    pop hl                                        ; $5741: $e1
    ld c, e                                       ; $5742: $4b
    dec c                                         ; $5743: $0d
    dec bc                                        ; $5744: $0b
    rra                                           ; $5745: $1f
    dec bc                                        ; $5746: $0b
    ld c, e                                       ; $5747: $4b
    ld c, e                                       ; $5748: $4b
    dec c                                         ; $5749: $0d
    dec c                                         ; $574a: $0d
    dec a                                         ; $574b: $3d

Jump_067_574c:
    jp nz, $e194                                  ; $574c: $c2 $94 $e1

    jr nz, jr_067_5711                            ; $574f: $20 $c0

    ret z                                         ; $5751: $c8

    and e                                         ; $5752: $a3
    and c                                         ; $5753: $a1
    dec de                                        ; $5754: $1b
    rst $20                                       ; $5755: $e7
    ld c, b                                       ; $5756: $48
    and b                                         ; $5757: $a0
    ld l, [hl]                                    ; $5758: $6e
    call $40e9                                    ; $5759: $cd $e9 $40
    ld [$2d4d], a                                 ; $575c: $ea $4d $2d
    ld e, a                                       ; $575f: $5f
    dec bc                                        ; $5760: $0b
    ld l, e                                       ; $5761: $6b
    dec bc                                        ; $5762: $0b
    ld c, e                                       ; $5763: $4b
    dec bc                                        ; $5764: $0b
    ret nz                                        ; $5765: $c0

    ldh [$2d], a                                  ; $5766: $e0 $2d
    inc de                                        ; $5768: $13
    jp $fd00                                      ; $5769: $c3 $00 $fd


    and d                                         ; $576c: $a2
    dec de                                        ; $576d: $1b
    ld [$c7cd], a                                 ; $576e: $ea $cd $c7
    ret nz                                        ; $5771: $c0

    ldh a, [$83]                                  ; $5772: $f0 $83
    and b                                         ; $5774: $a0
    ret nz                                        ; $5775: $c0

    pop hl                                        ; $5776: $e1
    nop                                           ; $5777: $00
    ret nz                                        ; $5778: $c0

    cp a                                          ; $5779: $bf
    pop hl                                        ; $577a: $e1
    add b                                         ; $577b: $80
    xor $80                                       ; $577c: $ee $80
    jp hl                                         ; $577e: $e9


    add b                                         ; $577f: $80
    or l                                          ; $5780: $b5
    call nz, $c6b4                                ; $5781: $c4 $b4 $c6
    ld h, [hl]                                    ; $5784: $66
    rst $08                                       ; $5785: $cf
    rst $10                                       ; $5786: $d7
    add l                                         ; $5787: $85
    ld a, a                                       ; $5788: $7f
    and c                                         ; $5789: $a1
    dec c                                         ; $578a: $0d
    rra                                           ; $578b: $1f
    dec bc                                        ; $578c: $0b
    ld a, [bc]                                    ; $578d: $0a
    ld a, [bc]                                    ; $578e: $0a
    ld l, d                                       ; $578f: $6a
    ld l, d                                       ; $5790: $6a
    cp a                                          ; $5791: $bf
    pop hl                                        ; $5792: $e1
    ld a, [hl+]                                   ; $5793: $2a
    and c                                         ; $5794: $a1
    rst $00                                       ; $5795: $c7
    add h                                         ; $5796: $84
    ldh a, [$80]                                  ; $5797: $f0 $80
    push af                                       ; $5799: $f5
    ld h, b                                       ; $579a: $60
    ld [c], a                                     ; $579b: $e2
    dec hl                                        ; $579c: $2b
    push bc                                       ; $579d: $c5
    cp l                                          ; $579e: $bd
    db $e4                                        ; $579f: $e4
    dec hl                                        ; $57a0: $2b
    ld a, [bc]                                    ; $57a1: $0a
    ld a, [bc]                                    ; $57a2: $0a
    ld a, [bc]                                    ; $57a3: $0a
    pop bc                                        ; $57a4: $c1
    ld a, [hl+]                                   ; $57a5: $2a
    ld a, $e2                                     ; $57a6: $3e $e2
    cp [hl]                                       ; $57a8: $be
    ldh [$e9], a                                  ; $57a9: $e0 $e9
    add d                                         ; $57ab: $82
    dec de                                        ; $57ac: $1b
    db $eb                                        ; $57ad: $eb
    ld b, b                                       ; $57ae: $40
    add sp, $6d                                   ; $57af: $e8 $6d
    ld c, l                                       ; $57b1: $4d
    ld hl, sp-$59                                 ; $57b2: $f8 $a7
    add e                                         ; $57b4: $83
    ld [hl], b                                    ; $57b5: $70
    add d                                         ; $57b6: $82
    and e                                         ; $57b7: $a3
    jp Jump_067_6d4d                              ; $57b8: $c3 $4d $6d


    dec bc                                        ; $57bb: $0b
    dec bc                                        ; $57bc: $0b
    dec bc                                        ; $57bd: $0b
    rlca                                          ; $57be: $07
    dec hl                                        ; $57bf: $2b
    dec bc                                        ; $57c0: $0b
    dec c                                         ; $57c1: $0d
    ld a, $e2                                     ; $57c2: $3e $e2
    inc a                                         ; $57c4: $3c
    add e                                         ; $57c5: $83
    db $db                                        ; $57c6: $db
    jp z, $ea40                                   ; $57c7: $ca $40 $ea

    ld c, c                                       ; $57ca: $49
    add h                                         ; $57cb: $84
    ret z                                         ; $57cc: $c8

    ld c, b                                       ; $57cd: $48
    pop hl                                        ; $57ce: $e1
    ld b, e                                       ; $57cf: $43
    and e                                         ; $57d0: $a3
    add h                                         ; $57d1: $84
    ldh [rOCPD], a                                ; $57d2: $e0 $6b
    ret nz                                        ; $57d4: $c0

    ldh [$3e], a                                  ; $57d5: $e0 $3e
    ret nz                                        ; $57d7: $c0

    ld a, [bc]                                    ; $57d8: $0a

jr_067_57d9:
    ld l, d                                       ; $57d9: $6a
    jr nz, jr_067_57d9                            ; $57da: $20 $fd

    pop bc                                        ; $57dc: $c1
    ld sp, hl                                     ; $57dd: $f9
    and c                                         ; $57de: $a1
    jp nc, $f284                                  ; $57df: $d2 $84 $f2

    ld l, b                                       ; $57e2: $68
    jp nz, Jump_067_6da5                          ; $57e3: $c2 $a5 $6d

    ld c, c                                       ; $57e6: $49
    add l                                         ; $57e7: $85
    jp z, $0663                                   ; $57e8: $ca $63 $06

    pop bc                                        ; $57eb: $c1
    ld [c], a                                     ; $57ec: $e2
    ld a, [bc]                                    ; $57ed: $0a
    ld c, d                                       ; $57ee: $4a
    ret nz                                        ; $57ef: $c0

    pop hl                                        ; $57f0: $e1
    ei                                            ; $57f1: $fb
    add c                                         ; $57f2: $81
    ei                                            ; $57f3: $fb
    and c                                         ; $57f4: $a1
    cp b                                          ; $57f5: $b8
    add b                                         ; $57f6: $80
    or $80                                        ; $57f7: $f6 $80
    nop                                           ; $57f9: $00
    and h                                         ; $57fa: $a4
    add e                                         ; $57fb: $83
    cp b                                          ; $57fc: $b8
    push hl                                       ; $57fd: $e5
    add b                                         ; $57fe: $80
    and b                                         ; $57ff: $a0
    sub a                                         ; $5800: $97
    ld h, d                                       ; $5801: $62
    ld b, e                                       ; $5802: $43
    add d                                         ; $5803: $82
    add hl, bc                                    ; $5804: $09
    add h                                         ; $5805: $84
    add b                                         ; $5806: $80
    ld h, b                                       ; $5807: $60
    inc c                                         ; $5808: $0c
    add c                                         ; $5809: $81
    push de                                       ; $580a: $d5
    ld l, e                                       ; $580b: $6b
    dec b                                         ; $580c: $05
    ldh [$0a], a                                  ; $580d: $e0 $0a
    ld b, c                                       ; $580f: $41
    ldh [$2b], a                                  ; $5810: $e0 $2b
    inc a                                         ; $5812: $3c
    ldh [rWY], a                                  ; $5813: $e0 $4a
    ld c, d                                       ; $5815: $4a
    ld bc, $3b2d                                  ; $5816: $01 $2d $3b
    ret nz                                        ; $5819: $c0

    ld d, l                                       ; $581a: $55
    and [hl]                                      ; $581b: $a6
    sbc $66                                       ; $581c: $de $66
    ret nz                                        ; $581e: $c0

    ld [c], a                                     ; $581f: $e2
    inc a                                         ; $5820: $3c
    and b                                         ; $5821: $a0
    ld [c], a                                     ; $5822: $e2
    ld h, b                                       ; $5823: $60
    ld a, h                                       ; $5824: $7c
    and b                                         ; $5825: $a0
    and b                                         ; $5826: $a0
    inc l                                         ; $5827: $2c
    add d                                         ; $5828: $82
    rlca                                          ; $5829: $07
    add b                                         ; $582a: $80
    adc $62                                       ; $582b: $ce $62
    push bc                                       ; $582d: $c5
    and b                                         ; $582e: $a0
    call nz, $4be0                                ; $582f: $c4 $e0 $4b
    ld a, a                                       ; $5832: $7f
    db $e3                                        ; $5833: $e3
    ld a, [bc]                                    ; $5834: $0a
    inc bc                                        ; $5835: $03
    ld a, [bc]                                    ; $5836: $0a
    ld l, l                                       ; $5837: $6d
    jp $55a1                                      ; $5838: $c3 $a1 $55


    and a                                         ; $583b: $a7
    or d                                          ; $583c: $b2
    ld h, c                                       ; $583d: $61
    rla                                           ; $583e: $17
    add l                                         ; $583f: $85
    cp h                                          ; $5840: $bc
    and [hl]                                      ; $5841: $a6
    sub a                                         ; $5842: $97
    ld h, c                                       ; $5843: $61
    sbc b                                         ; $5844: $98
    ld a, [$81e3]                                 ; $5845: $fa $e3 $81
    pop hl                                        ; $5848: $e1
    dec b                                         ; $5849: $05
    pop hl                                        ; $584a: $e1
    ld a, [bc]                                    ; $584b: $0a
    ld l, d                                       ; $584c: $6a
    cp a                                          ; $584d: $bf
    ld [c], a                                     ; $584e: $e2
    cp l                                          ; $584f: $bd
    ret nz                                        ; $5850: $c0

    dec c                                         ; $5851: $0d
    ld bc, $166d                                  ; $5852: $01 $6d $16
    ld [c], a                                     ; $5855: $e2
    ld d, l                                       ; $5856: $55
    and h                                         ; $5857: $a4
    or [hl]                                       ; $5858: $b6
    and e                                         ; $5859: $a3
    ld a, a                                       ; $585a: $7f
    and e                                         ; $585b: $a3
    call nz, $c543                                ; $585c: $c4 $43 $c5
    ld b, c                                       ; $585f: $41
    or $44                                        ; $5860: $f6 $44
    db $f4                                        ; $5862: $f4
    and a                                         ; $5863: $a7
    ld h, d                                       ; $5864: $62
    dec b                                         ; $5865: $05
    db $e3                                        ; $5866: $e3
    ld a, [hl+]                                   ; $5867: $2a
    ld a, $e2                                     ; $5868: $3e $e2
    dec bc                                        ; $586a: $0b
    dec hl                                        ; $586b: $2b
    ld l, l                                       ; $586c: $6d
    dec l                                         ; $586d: $2d
    rrca                                          ; $586e: $0f
    ld c, l                                       ; $586f: $4d
    dec l                                         ; $5870: $2d
    ld c, $6d                                     ; $5871: $0e $6d
    ld d, l                                       ; $5873: $55
    xor b                                         ; $5874: $a8
    sub h                                         ; $5875: $94
    ld b, e                                       ; $5876: $43
    call $c0a6                                    ; $5877: $cd $a6 $c0
    rst $20                                       ; $587a: $e7
    inc e                                         ; $587b: $1c
    ld l, d                                       ; $587c: $6a
    ld h, h                                       ; $587d: $64
    dec b                                         ; $587e: $05
    ld [c], a                                     ; $587f: $e2
    ld c, e                                       ; $5880: $4b
    dec bc                                        ; $5881: $0b
    ld c, e                                       ; $5882: $4b
    ld a, [hl]                                    ; $5883: $7e
    pop bc                                        ; $5884: $c1
    ld a, [hl-]                                   ; $5885: $3a
    ldh [$2d], a                                  ; $5886: $e0 $2d
    pop hl                                        ; $5888: $e1
    ret nz                                        ; $5889: $c0

    and d                                         ; $588a: $a2
    adc d                                         ; $588b: $8a
    ret nz                                        ; $588c: $c0

    db $e4                                        ; $588d: $e4
    ld h, h                                       ; $588e: $64
    ld b, l                                       ; $588f: $45
    push bc                                       ; $5890: $c5
    ld b, e                                       ; $5891: $43
    ld [hl], b                                    ; $5892: $70
    ld h, h                                       ; $5893: $64
    ret nc                                        ; $5894: $d0

    ld b, c                                       ; $5895: $41
    ld a, [hl+]                                   ; $5896: $2a
    ld a, [hl+]                                   ; $5897: $2a
    ld [de], a                                    ; $5898: $12
    ld b, $c0                                     ; $5899: $06 $c0
    ld c, e                                       ; $589b: $4b
    add d                                         ; $589c: $82
    and c                                         ; $589d: $a1
    ld a, [hl]                                    ; $589e: $7e
    and c                                         ; $589f: $a1
    ld c, e                                       ; $58a0: $4b
    rst $38                                       ; $58a1: $ff
    add c                                         ; $58a2: $81
    ld h, d                                       ; $58a3: $62
    adc e                                         ; $58a4: $8b

Call_067_58a5:
    ret nz                                        ; $58a5: $c0

    push hl                                       ; $58a6: $e5
    add d                                         ; $58a7: $82
    sub $a0                                       ; $58a8: $d6 $a0
    ld c, $c0                                     ; $58aa: $0e $c0
    pop bc                                        ; $58ac: $c1
    nop                                           ; $58ad: $00
    add e                                         ; $58ae: $83
    inc c                                         ; $58af: $0c
    ld b, e                                       ; $58b0: $43
    jp nc, Jump_000_0780                          ; $58b1: $d2 $80 $07

    jp Jump_000_1f0b                              ; $58b4: $c3 $0b $1f


    ld a, [hl+]                                   ; $58b7: $2a
    ld a, [hl+]                                   ; $58b8: $2a
    ld a, [hl+]                                   ; $58b9: $2a
    ld l, e                                       ; $58ba: $6b
    ld c, d                                       ; $58bb: $4a
    ld sp, hl                                     ; $58bc: $f9
    ld h, b                                       ; $58bd: $60
    ccf                                           ; $58be: $3f
    add d                                         ; $58bf: $82
    ei                                            ; $58c0: $fb
    ld c, c                                       ; $58c1: $49
    ret nz                                        ; $58c2: $c0

    db $ed                                        ; $58c3: $ed
    ld h, b                                       ; $58c4: $60
    ld a, [$3844]                                 ; $58c5: $fa $44 $38
    add d                                         ; $58c8: $82
    add $c2                                       ; $58c9: $c6 $c2
    ld c, d                                       ; $58cb: $4a
    ld b, h                                       ; $58cc: $44
    cp [hl]                                       ; $58cd: $be
    jr nz, jr_067_58fd                            ; $58ce: $20 $2d

    dec c                                         ; $58d0: $0d
    ld h, [hl]                                    ; $58d1: $66
    ld c, e                                       ; $58d2: $4b
    ret nz                                        ; $58d3: $c0

    ld c, e                                       ; $58d4: $4b
    ld c, e                                       ; $58d5: $4b
    add l                                         ; $58d6: $85
    and b                                         ; $58d7: $a0
    add e                                         ; $58d8: $83
    jp nz, $6d2a                                  ; $58d9: $c2 $2a $6d

    ld a, e                                       ; $58dc: $7b
    ld b, d                                       ; $58dd: $42
    ld bc, $550e                                  ; $58de: $01 $0e $55
    xor c                                         ; $58e1: $a9
    add h                                         ; $58e2: $84
    ld h, [hl]                                    ; $58e3: $66
    ld l, h                                       ; $58e4: $6c
    ld b, d                                       ; $58e5: $42
    ret nc                                        ; $58e6: $d0

    ld [hl+], a                                   ; $58e7: $22
    ld l, h                                       ; $58e8: $6c
    call nz, $e23f                                ; $58e9: $c4 $3f $e2
    ret z                                         ; $58ec: $c8

    and d                                         ; $58ed: $a2
    ld bc, $000b                                  ; $58ee: $01 $0b $00
    add c                                         ; $58f1: $81
    ld sp, hl                                     ; $58f2: $f9
    pop bc                                        ; $58f3: $c1
    ld a, [hl]                                    ; $58f4: $7e
    add c                                         ; $58f5: $81
    dec l                                         ; $58f6: $2d
    and b                                         ; $58f7: $a0
    dec d                                         ; $58f8: $15
    and a                                         ; $58f9: $a7
    ld c, d                                       ; $58fa: $4a
    ld b, h                                       ; $58fb: $44
    ld b, a                                       ; $58fc: $47

jr_067_58fd:
    ld h, d                                       ; $58fd: $62
    ret nz                                        ; $58fe: $c0

    ld l, b                                       ; $58ff: $68

jr_067_5900:
    ld hl, $22ae                                  ; $5900: $21 $ae $22
    db $eb                                        ; $5903: $eb
    ld h, a                                       ; $5904: $67
    ret nz                                        ; $5905: $c0

    db $e3                                        ; $5906: $e3
    adc b                                         ; $5907: $88
    ret nz                                        ; $5908: $c0

    cp b                                          ; $5909: $b8
    ld [c], a                                     ; $590a: $e2
    ld a, [bc]                                    ; $590b: $0a
    ld a, [hl+]                                   ; $590c: $2a
    nop                                           ; $590d: $00
    ld a, [hl]                                    ; $590e: $7e
    add b                                         ; $590f: $80
    cp $61                                        ; $5910: $fe $61
    ret nc                                        ; $5912: $d0

    db $e3                                        ; $5913: $e3
    rst $30                                       ; $5914: $f7
    and e                                         ; $5915: $a3
    add e                                         ; $5916: $83
    ld h, d                                       ; $5917: $62
    add h                                         ; $5918: $84
    ld h, c                                       ; $5919: $61
    ld [hl], c                                    ; $591a: $71
    push bc                                       ; $591b: $c5
    add hl, hl                                    ; $591c: $29
    ld [hl+], a                                   ; $591d: $22
    jr nz, jr_067_5900                            ; $591e: $20 $e0

    ld h, d                                       ; $5920: $62
    ld d, b                                       ; $5921: $50
    ld hl, $a107                                  ; $5922: $21 $07 $a1
    jp nz, Jump_067_7ea5                          ; $5925: $c2 $a5 $7e

    add b                                         ; $5928: $80
    ld l, l                                       ; $5929: $6d
    ld a, l                                       ; $592a: $7d
    ld h, e                                       ; $592b: $63
    ld c, c                                       ; $592c: $49
    and d                                         ; $592d: $a2
    ld [bc], a                                    ; $592e: $02
    ld [hl], b                                    ; $592f: $70
    jr nz, jr_067_599f                            ; $5930: $20 $6d

    sub a                                         ; $5932: $97
    add h                                         ; $5933: $84
    add h                                         ; $5934: $84
    ld h, c                                       ; $5935: $61
    ld sp, $22c3                                  ; $5936: $31 $c3 $22
    add h                                         ; $5939: $84
    inc l                                         ; $593a: $2c
    call nz, Call_067_41c5                        ; $593b: $c4 $c5 $41
    daa                                           ; $593e: $27
    ld l, d                                       ; $593f: $6a
    ld c, e                                       ; $5940: $4b
    ld a, [bc]                                    ; $5941: $0a
    add e                                         ; $5942: $83
    and e                                         ; $5943: $a3
    db $fd                                        ; $5944: $fd
    ld h, b                                       ; $5945: $60
    ld c, d                                       ; $5946: $4a
    db $fc                                        ; $5947: $fc
    ld b, c                                       ; $5948: $41
    db $d3                                        ; $5949: $d3
    ld b, h                                       ; $594a: $44
    nop                                           ; $594b: $00
    ld e, c                                       ; $594c: $59
    pop bc                                        ; $594d: $c1
    add b                                         ; $594e: $80
    ld [c], a                                     ; $594f: $e2
    call z, $c005                                 ; $5950: $cc $05 $c0
    and $6c                                       ; $5953: $e6 $6c
    call nz, $c27e                                ; $5955: $c4 $7e $c2
    ld a, [bc]                                    ; $5958: $0a
    add b                                         ; $5959: $80
    jp nz, Jump_000_0085                          ; $595a: $c2 $85 $00

    cp e                                          ; $595d: $bb
    and c                                         ; $595e: $a1
    cp [hl]                                       ; $595f: $be
    nop                                           ; $5960: $00
    ld a, e                                       ; $5961: $7b
    ld b, b                                       ; $5962: $40
    add hl, de                                    ; $5963: $19
    and h                                         ; $5964: $a4
    ld a, [hl]                                    ; $5965: $7e
    daa                                           ; $5966: $27
    ld b, l                                       ; $5967: $45
    add [hl]                                      ; $5968: $86
    inc [hl]                                      ; $5969: $34
    ld [hl+], a                                   ; $596a: $22
    ld l, h                                       ; $596b: $6c
    call nz, Call_067_4af6                        ; $596c: $c4 $f6 $4a
    inc bc                                        ; $596f: $03
    ld l, e                                       ; $5970: $6b
    ld c, e                                       ; $5971: $4b
    add h                                         ; $5972: $84
    and d                                         ; $5973: $a2
    dec bc                                        ; $5974: $0b
    dec bc                                        ; $5975: $0b
    dec c                                         ; $5976: $0d
    dec bc                                        ; $5977: $0b
    ld bc, $036b                                  ; $5978: $01 $6b $03
    and b                                         ; $597b: $a0
    ld b, b                                       ; $597c: $40
    and c                                         ; $597d: $a1
    ld d, c                                       ; $597e: $51
    ld [c], a                                     ; $597f: $e2
    ld e, c                                       ; $5980: $59
    and e                                         ; $5981: $a3
    ret nz                                        ; $5982: $c0

    ld [$22fc], a                                 ; $5983: $ea $fc $22
    db $fd                                        ; $5986: $fd
    inc h                                         ; $5987: $24
    inc d                                         ; $5988: $14
    scf                                           ; $5989: $37
    ld [hl+], a                                   ; $598a: $22
    daa                                           ; $598b: $27
    ld b, e                                       ; $598c: $43
    ld c, l                                       ; $598d: $4d
    pop bc                                        ; $598e: $c1
    db $e3                                        ; $598f: $e3
    dec c                                         ; $5990: $0d
    ld a, d                                       ; $5991: $7a
    ret nz                                        ; $5992: $c0

    pop bc                                        ; $5993: $c1
    ld [c], a                                     ; $5994: $e2
    add hl, de                                    ; $5995: $19
    and [hl]                                      ; $5996: $a6
    inc c                                         ; $5997: $0c
    ld h, e                                       ; $5998: $63
    ld h, d                                       ; $5999: $62
    or b                                          ; $599a: $b0
    ld b, h                                       ; $599b: $44
    ld l, $2e                                     ; $599c: $2e $2e
    ld a, b                                       ; $599e: $78

jr_067_599f:
    push hl                                       ; $599f: $e5
    db $fd                                        ; $59a0: $fd
    ld [hl+], a                                   ; $59a1: $22
    cp h                                          ; $59a2: $bc
    ld h, e                                       ; $59a3: $63
    inc a                                         ; $59a4: $3c
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    ld c, h                                       ; $59a7: $4c
    ld bc, $c202                                  ; $59a8: $01 $02 $c2
    db $fd                                        ; $59ab: $fd
    ld b, b                                       ; $59ac: $40
    add h                                         ; $59ad: $84
    pop bc                                        ; $59ae: $c1
    db $fc                                        ; $59af: $fc
    nop                                           ; $59b0: $00
    ret nz                                        ; $59b1: $c0

    rst $20                                       ; $59b2: $e7
    ld a, [de]                                    ; $59b3: $1a
    add l                                         ; $59b4: $85
    ret nz                                        ; $59b5: $c0

    push hl                                       ; $59b6: $e5
    nop                                           ; $59b7: $00
    db $fd                                        ; $59b8: $fd
    daa                                           ; $59b9: $27
    dec [hl]                                      ; $59ba: $35
    push bc                                       ; $59bb: $c5
    jp nc, $83c2                                  ; $59bc: $d2 $c2 $83

    ld h, d                                       ; $59bf: $62
    ret nz                                        ; $59c0: $c0

    pop hl                                        ; $59c1: $e1
    halt                                          ; $59c2: $76
    ld b, d                                       ; $59c3: $42
    ei                                            ; $59c4: $fb
    inc bc                                        ; $59c5: $03
    add hl, de                                    ; $59c6: $19
    and c                                         ; $59c7: $a1
    nop                                           ; $59c8: $00
    ld e, e                                       ; $59c9: $5b
    ld [$a047], sp                                ; $59ca: $08 $47 $a0
    ld [hl], b                                    ; $59cd: $70
    ld bc, $27fd                                  ; $59ce: $01 $fd $27
    inc a                                         ; $59d1: $3c
    ld h, e                                       ; $59d2: $63
    adc l                                         ; $59d3: $8d
    inc hl                                        ; $59d4: $23
    ret nz                                        ; $59d5: $c0

    db $e3                                        ; $59d6: $e3
    ld b, h                                       ; $59d7: $44
    add c                                         ; $59d8: $81
    inc b                                         ; $59d9: $04
    pop bc                                        ; $59da: $c1
    jp nz, Jump_067_649b                          ; $59db: $c2 $9b $64

    ld l, l                                       ; $59de: $6d
    ld b, c                                       ; $59df: $41
    nop                                           ; $59e0: $00
    ld e, e                                       ; $59e1: $5b
    add hl, bc                                    ; $59e2: $09
    ld l, a                                       ; $59e3: $6f
    ld c, l                                       ; $59e4: $4d
    sbc h                                         ; $59e5: $9c
    ld b, h                                       ; $59e6: $44
    ld b, b                                       ; $59e7: $40
    push hl                                       ; $59e8: $e5
    nop                                           ; $59e9: $00
    ld bc, $9161                                  ; $59ea: $01 $61 $91
    and c                                         ; $59ed: $a1
    nop                                           ; $59ee: $00
    jp nz, Jump_000_0d5b                          ; $59ef: $c2 $5b $0d

    ld [hl], $02                                  ; $59f2: $36 $02
    jp z, $c00b                                   ; $59f4: $ca $0b $c0

    add sp, -$3d                                  ; $59f7: $e8 $c3
    ld b, d                                       ; $59f9: $42
    nop                                           ; $59fa: $00
    ccf                                           ; $59fb: $3f
    inc hl                                        ; $59fc: $23
    ld b, c                                       ; $59fd: $41
    jp nz, Jump_000_2181                          ; $59fe: $c2 $81 $21

    jp z, $c1c5                                   ; $5a01: $ca $c5 $c1

    ld l, l                                       ; $5a04: $6d
    ld l, a                                       ; $5a05: $6f
    jr z, @-$5d                                   ; $5a06: $28 $a1

    jp $a01d                                      ; $5a08: $c3 $1d $a0


    ld [bc], a                                    ; $5a0b: $02
    ld a, h                                       ; $5a0c: $7c
    add h                                         ; $5a0d: $84
    ld c, e                                       ; $5a0e: $4b
    ld [de], a                                    ; $5a0f: $12
    and d                                         ; $5a10: $a2
    rlca                                          ; $5a11: $07
    ld hl, $2181                                  ; $5a12: $21 $81 $21
    ld e, e                                       ; $5a15: $5b
    ld a, [bc]                                    ; $5a16: $0a
    db $d3                                        ; $5a17: $d3
    ld h, h                                       ; $5a18: $64
    add sp, -$76                                  ; $5a19: $e8 $8a
    nop                                           ; $5a1b: $00
    ld [hl], a                                    ; $5a1c: $77
    ld b, d                                       ; $5a1d: $42
    db $fd                                        ; $5a1e: $fd
    ld b, d                                       ; $5a1f: $42
    inc bc                                        ; $5a20: $03
    ld h, d                                       ; $5a21: $62
    jp Jump_000_0261                              ; $5a22: $c3 $61 $02


    jp nz, $a41a                                  ; $5a25: $c2 $1a $a4

    call c, $4004                                 ; $5a28: $dc $04 $40
    daa                                           ; $5a2b: $27
    nop                                           ; $5a2c: $00
    xor b                                         ; $5a2d: $a8
    ld l, c                                       ; $5a2e: $69
    cp [hl]                                       ; $5a2f: $be
    ld h, d                                       ; $5a30: $62
    xor a                                         ; $5a31: $af
    ld b, c                                       ; $5a32: $41
    cp $43                                        ; $5a33: $fe $43
    ld [bc], a                                    ; $5a35: $02
    ld b, d                                       ; $5a36: $42
    ld b, c                                       ; $5a37: $41
    ld [c], a                                     ; $5a38: $e2
    ld [bc], a                                    ; $5a39: $02
    and b                                         ; $5a3a: $a0
    ld b, a                                       ; $5a3b: $47
    ld bc, $4000                                  ; $5a3c: $01 $00 $40
    ld b, $51                                     ; $5a3f: $06 $51
    jp hl                                         ; $5a41: $e9


    db $fd                                        ; $5a42: $fd
    jr z, jr_067_5aad                             ; $5a43: $28 $68

    add e                                         ; $5a45: $83
    ld a, l                                       ; $5a46: $7d
    ld h, h                                       ; $5a47: $64
    ld a, h                                       ; $5a48: $7c
    and b                                         ; $5a49: $a0
    jp nz, $c222                                  ; $5a4a: $c2 $22 $c2

    push bc                                       ; $5a4d: $c5
    nop                                           ; $5a4e: $00
    adc $64                                       ; $5a4f: $ce $64
    ld hl, sp-$5d                                 ; $5a51: $f8 $a3
    ld de, $e9e9                                  ; $5a53: $11 $e9 $e9
    add l                                         ; $5a56: $85
    ld b, l                                       ; $5a57: $45
    and l                                         ; $5a58: $a5
    ret nz                                        ; $5a59: $c0

    push hl                                       ; $5a5a: $e5
    cp a                                          ; $5a5b: $bf
    and e                                         ; $5a5c: $a3
    jp nz, Jump_000_00c4                          ; $5a5d: $c2 $c4 $00

    daa                                           ; $5a60: $27
    pop hl                                        ; $5a61: $e1
    sub [hl]                                      ; $5a62: $96
    inc h                                         ; $5a63: $24
    ret nz                                        ; $5a64: $c0

    db $ec                                        ; $5a65: $ec
    ld [bc], a                                    ; $5a66: $02
    ld b, l                                       ; $5a67: $45
    ld a, c                                       ; $5a68: $79
    add e                                         ; $5a69: $83
    rst $38                                       ; $5a6a: $ff
    inc b                                         ; $5a6b: $04
    sub d                                         ; $5a6c: $92
    add d                                         ; $5a6d: $82
    ld b, d                                       ; $5a6e: $42
    ld hl, $8200                                  ; $5a6f: $21 $00 $82
    jp $a16e                                      ; $5a72: $c3 $6e $a1


    inc bc                                        ; $5a75: $03
    ld b, a                                       ; $5a76: $47
    ld d, l                                       ; $5a77: $55
    ld h, e                                       ; $5a78: $63
    ld bc, $e9c7                                  ; $5a79: $01 $c7 $e9
    add e                                         ; $5a7c: $83
    ld b, a                                       ; $5a7d: $47
    nop                                           ; $5a7e: $00
    add sp, -$59                                  ; $5a7f: $e8 $a7
    nop                                           ; $5a81: $00
    rst $38                                       ; $5a82: $ff
    jp $c0bf                                      ; $5a83: $c3 $bf $c0


    add d                                         ; $5a86: $82
    jp nz, $a142                                  ; $5a87: $c2 $42 $a1

    ld e, e                                       ; $5a8a: $5b
    and a                                         ; $5a8b: $a7
    and e                                         ; $5a8c: $a3
    nop                                           ; $5a8d: $00
    or $a4                                        ; $5a8e: $f6 $a4
    ld e, h                                       ; $5a90: $5c
    inc bc                                        ; $5a91: $03
    db $10                                        ; $5a92: $10
    ld [bc], a                                    ; $5a93: $02
    ld b, l                                       ; $5a94: $45
    add sp, -$59                                  ; $5a95: $e8 $a7
    xor $44                                       ; $5a97: $ee $44
    ld a, e                                       ; $5a99: $7b
    add b                                         ; $5a9a: $80
    ld l, e                                       ; $5a9b: $6b
    inc bc                                        ; $5a9c: $03
    push bc                                       ; $5a9d: $c5
    sbc h                                         ; $5a9e: $9c
    dec h                                         ; $5a9f: $25
    db $db                                        ; $5aa0: $db
    and a                                         ; $5aa1: $a7
    nop                                           ; $5aa2: $00
    inc d                                         ; $5aa3: $14
    ld b, h                                       ; $5aa4: $44
    ld a, [$a962]                                 ; $5aa5: $fa $62 $a9
    add d                                         ; $5aa8: $82
    add sp, -$56                                  ; $5aa9: $e8 $aa
    pop de                                        ; $5aab: $d1
    ld h, d                                       ; $5aac: $62

jr_067_5aad:
    rst $30                                       ; $5aad: $f7
    inc bc                                        ; $5aae: $03
    inc b                                         ; $5aaf: $04
    add b                                         ; $5ab0: $80
    xor b                                         ; $5ab1: $a8
    add d                                         ; $5ab2: $82
    nop                                           ; $5ab3: $00
    inc bc                                        ; $5ab4: $03
    ld b, [hl]                                    ; $5ab5: $46
    sub $46                                       ; $5ab6: $d6 $46
    sub [hl]                                      ; $5ab8: $96
    ld [bc], a                                    ; $5ab9: $02
    ld [bc], a                                    ; $5aba: $02
    ld b, [hl]                                    ; $5abb: $46
    cp c                                          ; $5abc: $b9
    xor e                                         ; $5abd: $ab
    ld c, $62                                     ; $5abe: $0e $62
    or d                                          ; $5ac0: $b2
    inc h                                         ; $5ac1: $24
    ld h, h                                       ; $5ac2: $64
    ld [bc], a                                    ; $5ac3: $02
    nop                                           ; $5ac4: $00
    inc bc                                        ; $5ac5: $03
    ld c, c                                       ; $5ac6: $49
    ld b, d                                       ; $5ac7: $42
    ld a, [hl+]                                   ; $5ac8: $2a
    ld [bc], a                                    ; $5ac9: $02
    ld b, l                                       ; $5aca: $45
    add hl, sp                                    ; $5acb: $39
    xor c                                         ; $5acc: $a9
    ld a, h                                       ; $5acd: $7c
    add $0e                                       ; $5ace: $c6 $0e
    ld h, h                                       ; $5ad0: $64
    adc d                                         ; $5ad1: $8a
    xor d                                         ; $5ad2: $aa
    add d                                         ; $5ad3: $82
    daa                                           ; $5ad4: $27
    nop                                           ; $5ad5: $00
    ld a, [hl-]                                   ; $5ad6: $3a
    ld b, e                                       ; $5ad7: $43
    adc d                                         ; $5ad8: $8a
    and d                                         ; $5ad9: $a2
    ret nz                                        ; $5ada: $c0

    db $ed                                        ; $5adb: $ed
    add d                                         ; $5adc: $82
    rst $20                                       ; $5add: $e7
    inc bc                                        ; $5ade: $03
    call nz, Call_067_4743                        ; $5adf: $c4 $43 $47
    ret nz                                        ; $5ae2: $c0

    ld [$a4ce], a                                 ; $5ae3: $ea $ce $a4
    nop                                           ; $5ae6: $00
    ld l, d                                       ; $5ae7: $6a
    ld h, d                                       ; $5ae8: $62
    ret nz                                        ; $5ae9: $c0

    ld [$a5b3], a                                 ; $5aea: $ea $b3 $a5
    push bc                                       ; $5aed: $c5
    ld b, d                                       ; $5aee: $42
    db $db                                        ; $5aef: $db
    adc b                                         ; $5af0: $88
    ld a, b                                       ; $5af1: $78
    add c                                         ; $5af2: $81
    ld b, d                                       ; $5af3: $42
    inc h                                         ; $5af4: $24
    dec hl                                        ; $5af5: $2b
    ld hl, $b300                                  ; $5af6: $21 $00 $b3
    ld h, h                                       ; $5af9: $64
    ld [$80e2], a                                 ; $5afa: $ea $e2 $80
    di                                            ; $5afd: $f3
    add c                                         ; $5afe: $81
    jp nz, $a75b                                  ; $5aff: $c2 $5b $a7

    sub e                                         ; $5b02: $93
    pop hl                                        ; $5b03: $e1
    ld e, c                                       ; $5b04: $59
    add h                                         ; $5b05: $84
    ld a, d                                       ; $5b06: $7a
    ld h, c                                       ; $5b07: $61
    nop                                           ; $5b08: $00
    rst $38                                       ; $5b09: $ff
    inc hl                                        ; $5b0a: $23
    inc h                                         ; $5b0b: $24
    add [hl]                                      ; $5b0c: $86
    and b                                         ; $5b0d: $a0
    jp nz, $847f                                  ; $5b0e: $c2 $7f $84

    add d                                         ; $5b11: $82
    ld [hl+], a                                   ; $5b12: $22
    add $01                                       ; $5b13: $c6 $01
    jp $4062                                      ; $5b15: $c3 $62 $40


    ld b, d                                       ; $5b18: $42
    nop                                           ; $5b19: $00
    ret nz                                        ; $5b1a: $c0

    db $e3                                        ; $5b1b: $e3
    rst $38                                       ; $5b1c: $ff
    jp hl                                         ; $5b1d: $e9


    or $63                                        ; $5b1e: $f6 $63
    jp nz, Jump_067_4622                          ; $5b20: $c2 $22 $46

    add d                                         ; $5b23: $82
    xor l                                         ; $5b24: $ad
    ld [bc], a                                    ; $5b25: $02
    ld b, b                                       ; $5b26: $40
    add d                                         ; $5b27: $82
    ret nz                                        ; $5b28: $c0

    ld h, e                                       ; $5b29: $63
    nop                                           ; $5b2a: $00
    add b                                         ; $5b2b: $80
    ld h, c                                       ; $5b2c: $61
    xor [hl]                                      ; $5b2d: $ae
    ld bc, $833a                                  ; $5b2e: $01 $3a $83
    rlca                                          ; $5b31: $07
    ld b, e                                       ; $5b32: $43
    add c                                         ; $5b33: $81
    and [hl]                                      ; $5b34: $a6
    dec [hl]                                      ; $5b35: $35
    ld b, e                                       ; $5b36: $43
    ld c, e                                       ; $5b37: $4b
    ld [hl+], a                                   ; $5b38: $22
    dec a                                         ; $5b39: $3d
    ld hl, $1d40                                  ; $5b3a: $21 $40 $1d
    jr nz, @+$6e                                  ; $5b3d: $20 $6c

    inc bc                                        ; $5b3f: $03
    ret nz                                        ; $5b40: $c0

    ld b, a                                       ; $5b41: $47
    ld a, [hl]                                    ; $5b42: $7e
    db $e3                                        ; $5b43: $e3
    pop af                                        ; $5b44: $f1
    ld b, b                                       ; $5b45: $40
    ld [$0ee1], sp                                ; $5b46: $08 $e1 $0e
    ld d, d                                       ; $5b49: $52
    pop hl                                        ; $5b4a: $e1
    nop                                           ; $5b4b: $00
    ld [bc], a                                    ; $5b4c: $02
    ld b, c                                       ; $5b4d: $41
    ccf                                           ; $5b4e: $3f
    ld h, [hl]                                    ; $5b4f: $66
    ret nz                                        ; $5b50: $c0

    db $e3                                        ; $5b51: $e3
    add d                                         ; $5b52: $82
    inc h                                         ; $5b53: $24
    dec [hl]                                      ; $5b54: $35
    and c                                         ; $5b55: $a1
    cp l                                          ; $5b56: $bd
    ld [bc], a                                    ; $5b57: $02
    ccf                                           ; $5b58: $3f
    add e                                         ; $5b59: $83
    inc b                                         ; $5b5a: $04
    ld b, c                                       ; $5b5b: $41
    inc bc                                        ; $5b5c: $03
    dec bc                                        ; $5b5d: $0b
    dec l                                         ; $5b5e: $2d
    ld a, a                                       ; $5b5f: $7f
    ld [c], a                                     ; $5b60: $e2
    cp $c2                                        ; $5b61: $fe $c2
    push de                                       ; $5b63: $d5
    pop bc                                        ; $5b64: $c1
    ld a, l                                       ; $5b65: $7d
    ld h, d                                       ; $5b66: $62
    ccf                                           ; $5b67: $3f
    ld h, a                                       ; $5b68: $67
    ld c, $e4                                     ; $5b69: $0e $e4
    nop                                           ; $5b6b: $00
    ld l, [hl]                                    ; $5b6c: $6e
    ld bc, $253d                                  ; $5b6d: $01 $3d $25
    cp l                                          ; $5b70: $bd
    inc bc                                        ; $5b71: $03
    ret nz                                        ; $5b72: $c0

    db $e3                                        ; $5b73: $e3
    nop                                           ; $5b74: $00
    ld h, e                                       ; $5b75: $63
    rrca                                          ; $5b76: $0f
    ld hl, $46d5                                  ; $5b77: $21 $d5 $46
    rla                                           ; $5b7a: $17
    inc hl                                        ; $5b7b: $23
    nop                                           ; $5b7c: $00
    ccf                                           ; $5b7d: $3f
    ld l, b                                       ; $5b7e: $68
    xor h                                         ; $5b7f: $ac
    and [hl]                                      ; $5b80: $a6
    db $fd                                        ; $5b81: $fd
    ld [$2080], sp                                ; $5b82: $08 $80 $20
    ld c, l                                       ; $5b85: $4d
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    ld h, l                                       ; $5b88: $65
    jp $8c21                                      ; $5b89: $c3 $21 $8c


    inc bc                                        ; $5b8c: $03
    ret nz                                        ; $5b8d: $c0

    sbc d                                         ; $5b8e: $9a
    and $7f                                       ; $5b8f: $e6 $7f
    ld h, a                                       ; $5b91: $67
    ld b, b                                       ; $5b92: $40
    push hl                                       ; $5b93: $e5
    or l                                          ; $5b94: $b5
    ld b, e                                       ; $5b95: $43
    and a                                         ; $5b96: $a7
    and [hl]                                      ; $5b97: $a6
    ret nc                                        ; $5b98: $d0

    ld bc, $4b6b                                  ; $5b99: $01 $6b $4b
    nop                                           ; $5b9c: $00
    rst $38                                       ; $5b9d: $ff
    pop hl                                        ; $5b9e: $e1
    cp [hl]                                       ; $5b9f: $be
    add b                                         ; $5ba0: $80
    add h                                         ; $5ba1: $84
    jr nz, jr_067_5ba9                            ; $5ba2: $20 $05

    dec h                                         ; $5ba4: $25
    ld d, b                                       ; $5ba5: $50
    ld c, [hl]                                    ; $5ba6: $4e
    nop                                           ; $5ba7: $00
    db $e4                                        ; $5ba8: $e4

jr_067_5ba9:
    jp z, Jump_000_0962                           ; $5ba9: $ca $62 $09

    jr nz, jr_067_5bae                            ; $5bac: $20 $00

jr_067_5bae:
    rst $20                                       ; $5bae: $e7
    and [hl]                                      ; $5baf: $a6
    sla d                                         ; $5bb0: $cb $22
    cp a                                          ; $5bb2: $bf
    ldh [rHDMA2], a                               ; $5bb3: $e0 $52
    ld bc, $8110                                  ; $5bb5: $01 $10 $81
    inc e                                         ; $5bb8: $1c
    add h                                         ; $5bb9: $84
    inc a                                         ; $5bba: $3c
    ld b, d                                       ; $5bbb: $42
    ld d, b                                       ; $5bbc: $50
    ld c, l                                       ; $5bbd: $4d
    nop                                           ; $5bbe: $00
    sub b                                         ; $5bbf: $90
    ld [c], a                                     ; $5bc0: $e2
    ld [hl], h                                    ; $5bc1: $74
    ld b, d                                       ; $5bc2: $42
    cp l                                          ; $5bc3: $bd
    inc b                                         ; $5bc4: $04
    inc d                                         ; $5bc5: $14
    ld b, d                                       ; $5bc6: $42
    ret nz                                        ; $5bc7: $c0

    add h                                         ; $5bc8: $84
    db $ec                                        ; $5bc9: $ec
    nop                                           ; $5bca: $00
    inc h                                         ; $5bcb: $24
    add e                                         ; $5bcc: $83
    inc e                                         ; $5bcd: $1c
    add d                                         ; $5bce: $82
    nop                                           ; $5bcf: $00
    ld a, b                                       ; $5bd0: $78
    jp nz, Jump_067_673f                          ; $5bd1: $c2 $3f $67

    ld e, e                                       ; $5bd4: $5b
    add h                                         ; $5bd5: $84
    pop hl                                        ; $5bd6: $e1
    add $af                                       ; $5bd7: $c6 $af
    ld b, e                                       ; $5bd9: $43
    or c                                          ; $5bda: $b1
    and h                                         ; $5bdb: $a4
    add l                                         ; $5bdc: $85
    add e                                         ; $5bdd: $83
    dec hl                                        ; $5bde: $2b
    ld h, b                                       ; $5bdf: $60
    ld b, b                                       ; $5be0: $40
    ld [hl], h                                    ; $5be1: $74
    jr nz, jr_067_5ba9                            ; $5be2: $20 $c5

    ld b, $5a                                     ; $5be4: $06 $5a
    db $e3                                        ; $5be6: $e3
    dec [hl]                                      ; $5be7: $35
    add a                                         ; $5be8: $87
    ret nz                                        ; $5be9: $c0

    db $eb                                        ; $5bea: $eb
    xor c                                         ; $5beb: $a9
    ld l, b                                       ; $5bec: $68
    ld c, $3d                                     ; $5bed: $0e $3d
    jr nz, jr_067_5bf1                            ; $5bef: $20 $00

jr_067_5bf1:
    sla c                                         ; $5bf1: $cb $21
    adc b                                         ; $5bf3: $88
    inc hl                                        ; $5bf4: $23
    dec b                                         ; $5bf5: $05
    ld h, $77                                     ; $5bf6: $26 $77
    ret z                                         ; $5bf8: $c8

    pop bc                                        ; $5bf9: $c1
    ld b, l                                       ; $5bfa: $45
    ld b, c                                       ; $5bfb: $41
    ld bc, $427a                                  ; $5bfc: $01 $7a $42
    ld l, c                                       ; $5bff: $69
    xor d                                         ; $5c00: $aa
    ld [hl+], a                                   ; $5c01: $22
    ret nz                                        ; $5c02: $c0

    ldh [$0e], a                                  ; $5c03: $e0 $0e
    ret nz                                        ; $5c05: $c0

    rst $20                                       ; $5c06: $e7
    dec b                                         ; $5c07: $05
    inc h                                         ; $5c08: $24
    sbc b                                         ; $5c09: $98
    rst $28                                       ; $5c0a: $ef
    ld c, l                                       ; $5c0b: $4d
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    db $fd                                        ; $5c0f: $fd
    and b                                         ; $5c10: $a0
    rst $38                                       ; $5c11: $ff
    db $e4                                        ; $5c12: $e4
    jp c, $d2d7                                   ; $5c13: $da $d7 $d2

    ret nc                                        ; $5c16: $d0

    jp nc, $bbd4                                  ; $5c17: $d2 $d4 $bb

    rst $10                                       ; $5c1a: $d7
    jp c, $e2f0                                   ; $5c1b: $da $f0 $e2

    db $d3                                        ; $5c1e: $d3
    ret nc                                        ; $5c1f: $d0

    db $d3                                        ; $5c20: $d3
    add sp, -$20                                  ; $5c21: $e8 $e0
    db $e4                                        ; $5c23: $e4
    ld a, c                                       ; $5c24: $79
    push hl                                       ; $5c25: $e5
    db $e3                                        ; $5c26: $e3
    push hl                                       ; $5c27: $e5
    db $db                                        ; $5c28: $db
    ldh [$d8], a                                  ; $5c29: $e0 $d8
    push de                                       ; $5c2b: $d5
    push de                                       ; $5c2c: $d5
    ret c                                         ; $5c2d: $d8

    push af                                       ; $5c2e: $f5
    and $fc                                       ; $5c2f: $e6 $fc
    or $e5                                        ; $5c31: $f6 $e5
    ldh [$e8], a                                  ; $5c33: $e0 $e8
    call c, $d7da                                 ; $5c35: $dc $da $d7
    call nc, $d9d7                                ; $5c38: $d4 $d7 $d9
    sbc e                                         ; $5c3b: $9b
    jp c, $b0dc                                   ; $5c3c: $da $dc $b0

    ldh [$eb], a                                  ; $5c3f: $e0 $eb
    and b                                         ; $5c41: $a0
    push af                                       ; $5c42: $f5
    ldh [$a8], a                                  ; $5c43: $e0 $a8
    ldh [$e6], a                                  ; $5c45: $e0 $e6
    cp l                                          ; $5c47: $bd
    rst $20                                       ; $5c48: $e7
    and e                                         ; $5c49: $a3
    pop hl                                        ; $5c4a: $e1
    ld [$dea0], a                                 ; $5c4b: $ea $a0 $de
    rst $18                                       ; $5c4e: $df
    jp nz, $d2e0                                  ; $5c4f: $c2 $e0 $d2

    rst $00                                       ; $5c52: $c7
    sub $d4                                       ; $5c53: $d6 $d4
    sub $bd                                       ; $5c55: $d6 $bd
    db $e4                                        ; $5c57: $e4
    and d                                         ; $5c58: $a2
    db $e3                                        ; $5c59: $e3
    cp a                                          ; $5c5a: $bf
    rst $28                                       ; $5c5b: $ef
    reti                                          ; $5c5c: $d9


    jp c, $db9d                                   ; $5c5d: $da $9d $db

    pop bc                                        ; $5c60: $c1
    pop hl                                        ; $5c61: $e1
    db $ec                                        ; $5c62: $ec
    db $ed                                        ; $5c63: $ed
    and b                                         ; $5c64: $a0
    push af                                       ; $5c65: $f5
    ldh [rBCPS], a                                ; $5c66: $e0 $68
    ldh [$e8], a                                  ; $5c68: $e0 $e8
    rst $38                                       ; $5c6a: $ff
    jp hl                                         ; $5c6b: $e9


    and b                                         ; $5c6c: $a0
    sbc a                                         ; $5c6d: $9f
    sbc l                                         ; $5c6e: $9d
    sbc a                                         ; $5c6f: $9f
    and b                                         ; $5c70: $a0
    and b                                         ; $5c71: $a0
    ldh [$15], a                                  ; $5c72: $e0 $15
    pop hl                                        ; $5c74: $e1
    ld l, a                                       ; $5c75: $6f
    ldh [$d6], a                                  ; $5c76: $e0 $d6
    ld h, c                                       ; $5c78: $61
    pop hl                                        ; $5c79: $e1
    sub $c7                                       ; $5c7a: $d6 $c7
    ld [c], a                                     ; $5c7c: $e2
    and d                                         ; $5c7d: $a2
    db $e3                                        ; $5c7e: $e3
    ld a, [hl]                                    ; $5c7f: $7e
    rst $28                                       ; $5c80: $ef
    db $fc                                        ; $5c81: $fc
    jp nz, $f5e2                                  ; $5c82: $c2 $e2 $f5

    rst $20                                       ; $5c85: $e7
    db $eb                                        ; $5c86: $eb
    and b                                         ; $5c87: $a0
    and b                                         ; $5c88: $a0
    sbc a                                         ; $5c89: $9f
    sbc h                                         ; $5c8a: $9c
    ld b, l                                       ; $5c8b: $45
    rst $18                                       ; $5c8c: $df
    sbc h                                         ; $5c8d: $9c
    sbc a                                         ; $5c8e: $9f
    and b                                         ; $5c8f: $a0
    ld [c], a                                     ; $5c90: $e2
    db $e3                                        ; $5c91: $e3
    cpl                                           ; $5c92: $2f
    ldh [$d7], a                                  ; $5c93: $e0 $d7
    call nc, Call_000_2006                        ; $5c95: $d4 $06 $20
    ldh [$d7], a                                  ; $5c98: $e0 $d7
    jp nc, $e13c                                  ; $5c9a: $d2 $3c $e1

    and d                                         ; $5c9d: $a2
    db $e3                                        ; $5c9e: $e3
    db $fd                                        ; $5c9f: $fd
    di                                            ; $5ca0: $f3
    add hl, de                                    ; $5ca1: $19
    rst $20                                       ; $5ca2: $e7
    ld a, c                                       ; $5ca3: $79
    ldh [$e6], a                                  ; $5ca4: $e0 $e6
    pop bc                                        ; $5ca6: $c1
    ldh [rBGP], a                                 ; $5ca7: $e0 $47
    ld d, d                                       ; $5ca9: $52
    cp a                                          ; $5caa: $bf
    ldh [$8d], a                                  ; $5cab: $e0 $8d
    ldh [$d2], a                                  ; $5cad: $e0 $d2
    db $dd                                        ; $5caf: $dd
    reti                                          ; $5cb0: $d9


    ld a, [de]                                    ; $5cb1: $1a
    jr nz, @-$1e                                  ; $5cb2: $20 $e0

    db $dd                                        ; $5cb4: $dd
    add sp, -$40                                  ; $5cb5: $e8 $c0
    db $e4                                        ; $5cb7: $e4
    push hl                                       ; $5cb8: $e5
    sub a                                         ; $5cb9: $97
    add sp, -$3e                                  ; $5cba: $e8 $c2
    xor $19                                       ; $5cbc: $ee $19
    add sp, $7e                                   ; $5cbe: $e8 $7e
    add d                                         ; $5cc0: $82
    ldh [$bd], a                                  ; $5cc1: $e0 $bd
    cp l                                          ; $5cc3: $bd
    ld c, e                                       ; $5cc4: $4b
    ld d, [hl]                                    ; $5cc5: $56
    ld b, l                                       ; $5cc6: $45
    and c                                         ; $5cc7: $a1
    db $fd                                        ; $5cc8: $fd
    ret nz                                        ; $5cc9: $c0

    rst $38                                       ; $5cca: $ff
    jp c, $d0d3                                   ; $5ccb: $da $d3 $d0

    ret nc                                        ; $5cce: $d0

    db $dd                                        ; $5ccf: $dd
    reti                                          ; $5cd0: $d9


    db $dd                                        ; $5cd1: $dd
    pop de                                        ; $5cd2: $d1
    ret nc                                        ; $5cd3: $d0

    xor b                                         ; $5cd4: $a8
    ret nz                                        ; $5cd5: $c0

    ld [$7fc3], a                                 ; $5cd6: $ea $c3 $7f
    di                                            ; $5cd9: $f3
    add hl, de                                    ; $5cda: $19
    rst $20                                       ; $5cdb: $e7
    ld [$e243], a                                 ; $5cdc: $ea $43 $e2
    ld l, $2e                                     ; $5cdf: $2e $2e
    ld l, a                                       ; $5ce1: $6f
    ld d, l                                       ; $5ce2: $55
    ld d, l                                       ; $5ce3: $55
    ld b, [hl]                                    ; $5ce4: $46
    sbc [hl]                                      ; $5ce5: $9e
    and d                                         ; $5ce6: $a2
    pop bc                                        ; $5ce7: $c1
    rst $10                                       ; $5ce8: $d7
    call nc, $e040                                ; $5ce9: $d4 $40 $e0
    ldh a, [$5f]                                  ; $5cec: $f0 $5f
    pop bc                                        ; $5cee: $c1
    ld [$c0c1], a                                 ; $5cef: $ea $c1 $c0
    ld hl, sp+$19                                 ; $5cf2: $f8 $19
    add sp, -$5f                                  ; $5cf4: $e8 $a1
    ld c, d                                       ; $5cf6: $4a
    ld d, d                                       ; $5cf7: $52
    ld l, $07                                     ; $5cf8: $2e $07
    jr nz, jr_067_5d26                            ; $5cfa: $20 $2a

    ld b, h                                       ; $5cfc: $44
    ret nz                                        ; $5cfd: $c0

    ld [c], a                                     ; $5cfe: $e2
    xor [hl]                                      ; $5cff: $ae
    ret nz                                        ; $5d00: $c0

    ld b, b                                       ; $5d01: $40
    ldh [$5f], a                                  ; $5d02: $e0 $5f
    pop bc                                        ; $5d04: $c1
    inc [hl]                                      ; $5d05: $34
    call z, Call_000_24fc                         ; $5d06: $cc $fc $24
    rr c                                          ; $5d09: $cb $19
    add sp, -$60                                  ; $5d0b: $e8 $a0
    and b                                         ; $5d0d: $a0
    sbc [hl]                                      ; $5d0e: $9e
    ld c, a                                       ; $5d0f: $4f
    ld e, b                                       ; $5d10: $58
    cp l                                          ; $5d11: $bd
    rst $18                                       ; $5d12: $df
    ld h, $21                                     ; $5d13: $26 $21
    ld [hl], $ae                                  ; $5d15: $36 $ae
    or [hl]                                       ; $5d17: $b6
    rst $38                                       ; $5d18: $ff
    pop bc                                        ; $5d19: $c1
    call c, Call_067_41db                         ; $5d1a: $dc $db $41
    db $db                                        ; $5d1d: $db
    cp l                                          ; $5d1e: $bd
    ldh [$5f], a                                  ; $5d1f: $e0 $5f
    jp nz, $eb1b                                  ; $5d21: $c2 $1b $eb

    rst $20                                       ; $5d24: $e7
    and c                                         ; $5d25: $a1

jr_067_5d26:
    dec h                                         ; $5d26: $25
    ret nz                                        ; $5d27: $c0

    jp nc, $a2e2                                  ; $5d28: $d2 $e2 $a2

    db $fc                                        ; $5d2b: $fc
    add hl, de                                    ; $5d2c: $19
    add sp, -$40                                  ; $5d2d: $e8 $c0
    ldh [rHDMA5], a                               ; $5d2f: $e0 $55
    ld d, d                                       ; $5d31: $52
    xor [hl]                                      ; $5d32: $ae
    ld a, [hl-]                                   ; $5d33: $3a
    dec [hl]                                      ; $5d34: $35
    inc a                                         ; $5d35: $3c
    inc bc                                        ; $5d36: $03
    xor a                                         ; $5d37: $af
    sub b                                         ; $5d38: $90
    cp a                                          ; $5d39: $bf
    ldh [$b5], a                                  ; $5d3a: $e0 $b5
    and c                                         ; $5d3c: $a1
    cp l                                          ; $5d3d: $bd
    ldh [$5f], a                                  ; $5d3e: $e0 $5f
    jp nz, $ca34                                  ; $5d40: $c2 $34 $ca

    sub h                                         ; $5d43: $94
    and b                                         ; $5d44: $a0
    dec [hl]                                      ; $5d45: $35
    sub $66                                       ; $5d46: $d6 $66
    pop bc                                        ; $5d48: $c1
    sub $8e                                       ; $5d49: $d6 $8e
    and b                                         ; $5d4b: $a0
    sbc $df                                       ; $5d4c: $de $df
    add hl, de                                    ; $5d4e: $19
    add sp, $43                                   ; $5d4f: $e8 $43
    jp nz, $afff                                  ; $5d51: $c2 $ff $af

    ld a, $35                                     ; $5d54: $3e $35
    ld a, [hl-]                                   ; $5d56: $3a
    ld b, l                                       ; $5d57: $45
    sub b                                         ; $5d58: $90
    sub b                                         ; $5d59: $90
    sbc [hl]                                      ; $5d5a: $9e
    ld a, [de]                                    ; $5d5b: $1a
    set 1, b                                      ; $5d5c: $cb $c8
    db $eb                                        ; $5d5e: $eb
    inc [hl]                                      ; $5d5f: $34
    res 4, b                                      ; $5d60: $cb $a0
    ret c                                         ; $5d62: $d8

    dec hl                                        ; $5d63: $2b
    ret nz                                        ; $5d64: $c0

    ld b, a                                       ; $5d65: $47
    and c                                         ; $5d66: $a1
    ld c, [hl]                                    ; $5d67: $4e
    and b                                         ; $5d68: $a0
    db $fc                                        ; $5d69: $fc
    ret c                                         ; $5d6a: $d8

    and b                                         ; $5d6b: $a0
    add hl, de                                    ; $5d6c: $19
    add sp, -$22                                  ; $5d6d: $e8 $de
    rst $18                                       ; $5d6f: $df
    sbc a                                         ; $5d70: $9f
    sbc h                                         ; $5d71: $9c
    ld b, [hl]                                    ; $5d72: $46
    add hl, sp                                    ; $5d73: $39
    ccf                                           ; $5d74: $3f
    dec [hl]                                      ; $5d75: $35
    add hl, sp                                    ; $5d76: $39
    ld b, [hl]                                    ; $5d77: $46
    sub b                                         ; $5d78: $90
    sub b                                         ; $5d79: $90
    and c                                         ; $5d7a: $a1
    set 0, h                                      ; $5d7b: $cb $c4
    ld b, a                                       ; $5d7d: $47
    and b                                         ; $5d7e: $a0
    add sp, -$5d                                  ; $5d7f: $e8 $a3
    and b                                         ; $5d81: $a0
    dec de                                        ; $5d82: $1b
    ld [$a015], a                                 ; $5d83: $ea $15 $a0
    db $dd                                        ; $5d86: $dd
    ld b, a                                       ; $5d87: $47
    and c                                         ; $5d88: $a1

jr_067_5d89:
    db $dd                                        ; $5d89: $dd
    jp nc, $f0d7                                  ; $5d8a: $d2 $d7 $f0

    ret c                                         ; $5d8d: $d8

    and c                                         ; $5d8e: $a1
    add hl, de                                    ; $5d8f: $19
    add sp, -$76                                  ; $5d90: $e8 $8a
    and b                                         ; $5d92: $a0
    pop bc                                        ; $5d93: $c1
    and b                                         ; $5d94: $a0
    ccf                                           ; $5d95: $3f
    ld b, l                                       ; $5d96: $45
    ld b, [hl]                                    ; $5d97: $46
    sub c                                         ; $5d98: $91
    and b                                         ; $5d99: $a0
    ccf                                           ; $5d9a: $3f
    pop hl                                        ; $5d9b: $e1
    or c                                          ; $5d9c: $b1
    and d                                         ; $5d9d: $a2
    jp hl                                         ; $5d9e: $e9


    add e                                         ; $5d9f: $83
    dec de                                        ; $5da0: $1b
    ld [$80d5], a                                 ; $5da1: $ea $d5 $80
    pop de                                        ; $5da4: $d1
    daa                                           ; $5da5: $27
    ret nz                                        ; $5da6: $c0

    ret nc                                        ; $5da7: $d0

    di                                            ; $5da8: $f3

jr_067_5da9:
    ret nc                                        ; $5da9: $d0

    db $d3                                        ; $5daa: $d3
    xor h                                         ; $5dab: $ac

jr_067_5dac:
    and l                                         ; $5dac: $a5
    add hl, de                                    ; $5dad: $19
    push hl                                       ; $5dae: $e5
    ld [c], a                                     ; $5daf: $e2
    db $e3                                        ; $5db0: $e3
    ld [$3fa0], a                                 ; $5db1: $ea $a0 $3f
    and c                                         ; $5db4: $a1
    ld b, [hl]                                    ; $5db5: $46
    ld c, b                                       ; $5db6: $48
    ld c, c                                       ; $5db7: $49
    ld d, h                                       ; $5db8: $54
    ld d, e                                       ; $5db9: $53
    cp a                                          ; $5dba: $bf
    ld [c], a                                     ; $5dbb: $e2
    ld a, [hl+]                                   ; $5dbc: $2a
    and b                                         ; $5dbd: $a0
    jr nc, jr_067_5da9                            ; $5dbe: $30 $e9

    add h                                         ; $5dc0: $84
    dec de                                        ; $5dc1: $1b
    ld [$80d5], a                                 ; $5dc2: $ea $d5 $80
    jr z, jr_067_5d89                             ; $5dc5: $28 $c2

    call nc, $a6d7                                ; $5dc7: $d4 $d7 $a6
    jp nz, $86a7                                  ; $5dca: $c2 $a7 $86

    db $fc                                        ; $5dcd: $fc
    ld b, e                                       ; $5dce: $43
    and b                                         ; $5dcf: $a0
    ld a, l                                       ; $5dd0: $7d
    pop bc                                        ; $5dd1: $c1
    ld b, l                                       ; $5dd2: $45
    ld d, e                                       ; $5dd3: $53
    ld e, c                                       ; $5dd4: $59
    ld e, c                                       ; $5dd5: $59
    ld d, e                                       ; $5dd6: $53
    ld b, [hl]                                    ; $5dd7: $46
    add e                                         ; $5dd8: $83
    sub b                                         ; $5dd9: $90
    jp $a1fc                                      ; $5dda: $c3 $fc $a1


    cp d                                          ; $5ddd: $ba
    and b                                         ; $5dde: $a0
    jp hl                                         ; $5ddf: $e9


    add b                                         ; $5de0: $80
    or e                                          ; $5de1: $b3
    add b                                         ; $5de2: $80
    inc [hl]                                      ; $5de3: $34
    jp z, $e0da                                   ; $5de4: $ca $da $e0

    jr z, jr_067_5dac                             ; $5de7: $28 $c3

    rst $08                                       ; $5de9: $cf
    add d                                         ; $5dea: $82
    ld c, c                                       ; $5deb: $49
    add d                                         ; $5dec: $82
    ld c, d                                       ; $5ded: $4a
    add d                                         ; $5dee: $82
    ld b, e                                       ; $5def: $43
    and c                                         ; $5df0: $a1
    sbc l                                         ; $5df1: $9d
    sbc l                                         ; $5df2: $9d
    sbc l                                         ; $5df3: $9d
    rst $38                                       ; $5df4: $ff
    sbc h                                         ; $5df5: $9c
    ld [hl], $62                                  ; $5df6: $36 $62
    ld h, [hl]                                    ; $5df8: $66
    ld [hl], $45                                  ; $5df9: $36 $45
    xor [hl]                                      ; $5dfb: $ae
    sub c                                         ; $5dfc: $91
    ld bc, $3cc4                                  ; $5dfd: $01 $c4 $3c
    jp nz, $82de                                  ; $5e00: $c2 $de $82

    or e                                          ; $5e03: $b3
    add b                                         ; $5e04: $80
    inc [hl]                                      ; $5e05: $34
    ret z                                         ; $5e06: $c8

    jp z, $2881                                   ; $5e07: $ca $81 $28

    jp nz, $8086                                  ; $5e0a: $c2 $86 $80

    and $49                                       ; $5e0d: $e6 $49
    add h                                         ; $5e0f: $84
    and $e7                                       ; $5e10: $e6 $e7
    add h                                         ; $5e12: $84
    and b                                         ; $5e13: $a0
    push bc                                       ; $5e14: $c5
    add d                                         ; $5e15: $82
    ld d, b                                       ; $5e16: $50
    ld d, b                                       ; $5e17: $50
    ld b, b                                       ; $5e18: $40
    rst $38                                       ; $5e19: $ff
    ld h, d                                       ; $5e1a: $62
    ld h, a                                       ; $5e1b: $67
    ld l, b                                       ; $5e1c: $68
    ld h, [hl]                                    ; $5e1d: $66
    ld [hl], $af                                  ; $5e1e: $36 $af
    ld c, b                                       ; $5e20: $48
    ld d, e                                       ; $5e21: $53
    add c                                         ; $5e22: $81
    jp $e3bf                                      ; $5e23: $c3 $bf $e3


    add hl, hl                                    ; $5e26: $29
    ld [c], a                                     ; $5e27: $e2
    dec de                                        ; $5e28: $1b
    jp hl                                         ; $5e29: $e9


    rrca                                          ; $5e2a: $0f
    add sp, $49                                   ; $5e2b: $e8 $49
    add l                                         ; $5e2d: $85
    ld h, b                                       ; $5e2e: $60
    and c                                         ; $5e2f: $a1
    sbc a                                         ; $5e30: $9f
    rst $38                                       ; $5e31: $ff
    sbc l                                         ; $5e32: $9d
    and d                                         ; $5e33: $a2
    or [hl]                                       ; $5e34: $b6
    ld b, l                                       ; $5e35: $45
    ld b, a                                       ; $5e36: $47
    ld e, l                                       ; $5e37: $5d
    ld e, l                                       ; $5e38: $5d
    ld d, l                                       ; $5e39: $55
    scf                                           ; $5e3a: $37
    ld l, e                                       ; $5e3b: $6b
    ld l, h                                       ; $5e3c: $6c
    dec [hl]                                      ; $5e3d: $35
    cp a                                          ; $5e3e: $bf
    ldh [rBGP], a                                 ; $5e3f: $e0 $47
    ld e, b                                       ; $5e41: $58
    ei                                            ; $5e42: $fb
    and d                                         ; $5e43: $a2
    di                                            ; $5e44: $f3
    ld h, d                                       ; $5e45: $62
    ldh a, [rNR43]                                ; $5e46: $f0 $22
    add sp, -$78                                  ; $5e48: $e8 $88
    adc e                                         ; $5e4a: $8b
    and d                                         ; $5e4b: $a2
    ld h, b                                       ; $5e4c: $60
    ld a, $84                                     ; $5e4d: $3e $84
    sbc a                                         ; $5e4f: $9f
    sbc l                                         ; $5e50: $9d
    or [hl]                                       ; $5e51: $b6
    sub b                                         ; $5e52: $90
    rst $38                                       ; $5e53: $ff
    sub b                                         ; $5e54: $90
    sub b                                         ; $5e55: $90
    ld b, h                                       ; $5e56: $44
    ld d, e                                       ; $5e57: $53
    ld e, c                                       ; $5e58: $59
    ld d, h                                       ; $5e59: $54
    ld d, l                                       ; $5e5a: $55
    ld l, [hl]                                    ; $5e5b: $6e
    rst $38                                       ; $5e5c: $ff
    ld [hl], b                                    ; $5e5d: $70
    ld [hl], c                                    ; $5e5e: $71
    ld [hl], d                                    ; $5e5f: $72
    ld l, b                                       ; $5e60: $68
    ld h, [hl]                                    ; $5e61: $66
    add hl, sp                                    ; $5e62: $39
    ld e, [hl]                                    ; $5e63: $5e
    ld d, l                                       ; $5e64: $55
    ld b, c                                       ; $5e65: $41
    sub c                                         ; $5e66: $91
    dec sp                                        ; $5e67: $3b
    ret nz                                        ; $5e68: $c0

    ld a, c                                       ; $5e69: $79
    ld h, [hl]                                    ; $5e6a: $66
    sbc $60                                       ; $5e6b: $de $60
    ld a, h                                       ; $5e6d: $7c
    ld l, e                                       ; $5e6e: $6b
    and c                                         ; $5e6f: $a1
    ld h, b                                       ; $5e70: $60
    ret nc                                        ; $5e71: $d0

    pop af                                        ; $5e72: $f1
    and e                                         ; $5e73: $a3
    xor [hl]                                      ; $5e74: $ae
    add e                                         ; $5e75: $83
    ld h, b                                       ; $5e76: $60
    sbc a                                         ; $5e77: $9f
    or [hl]                                       ; $5e78: $b6
    jp $e0c1                                      ; $5e79: $c3 $c1 $e0


    sub c                                         ; $5e7c: $91
    dec b                                         ; $5e7d: $05
    ld [c], a                                     ; $5e7e: $e2
    ld [hl], $ff                                  ; $5e7f: $36 $ff
    dec [hl]                                      ; $5e81: $35
    ld h, d                                       ; $5e82: $62
    halt                                          ; $5e83: $76
    dec [hl]                                      ; $5e84: $35
    ld l, d                                       ; $5e85: $6a
    ld a, $52                                     ; $5e86: $3e $52
    ld d, l                                       ; $5e88: $55
    adc c                                         ; $5e89: $89
    sub c                                         ; $5e8a: $91
    ld a, [hl-]                                   ; $5e8b: $3a
    and c                                         ; $5e8c: $a1
    ld d, l                                       ; $5e8d: $55
    and a                                         ; $5e8e: $a7
    ret c                                         ; $5e8f: $d8

    inc de                                        ; $5e90: $13
    ld h, b                                       ; $5e91: $60
    ld a, [hl-]                                   ; $5e92: $3a
    ld h, a                                       ; $5e93: $67
    ld a, [c]                                     ; $5e94: $f2
    ldh [$d1], a                                  ; $5e95: $e0 $d1
    db $fc                                        ; $5e97: $fc
    db $e3                                        ; $5e98: $e3
    ld h, b                                       ; $5e99: $60
    ld a, [bc]                                    ; $5e9a: $0a
    add h                                         ; $5e9b: $84
    sbc [hl]                                      ; $5e9c: $9e
    jp $c3c4                                      ; $5e9d: $c3 $c4 $c3


    sub b                                         ; $5ea0: $90
    sub c                                         ; $5ea1: $91
    cp [hl]                                       ; $5ea2: $be
    dec b                                         ; $5ea3: $05
    ld [c], a                                     ; $5ea4: $e2
    ld c, d                                       ; $5ea5: $4a
    ld d, d                                       ; $5ea6: $52
    ld [hl], $69                                  ; $5ea7: $36 $69
    dec [hl]                                      ; $5ea9: $35
    ret nz                                        ; $5eaa: $c0

    ldh [rDMA], a                                 ; $5eab: $e0 $46
    ld bc, $789c                                  ; $5ead: $01 $9c $78
    ld h, c                                       ; $5eb0: $61
    ld d, l                                       ; $5eb1: $55
    xor b                                         ; $5eb2: $a8
    db $d3                                        ; $5eb3: $d3
    ld b, b                                       ; $5eb4: $40
    adc $e0                                       ; $5eb5: $ce $e0
    rst $28                                       ; $5eb7: $ef
    ld b, l                                       ; $5eb8: $45
    push bc                                       ; $5eb9: $c5
    ld b, h                                       ; $5eba: $44
    ret nc                                        ; $5ebb: $d0

    ld b, h                                       ; $5ebc: $44
    ld a, a                                       ; $5ebd: $7f
    sbc [hl]                                      ; $5ebe: $9e
    call nz, $c4c3                                ; $5ebf: $c4 $c3 $c4
    sub c                                         ; $5ec2: $91
    ld b, a                                       ; $5ec3: $47
    ld d, l                                       ; $5ec4: $55
    rst $00                                       ; $5ec5: $c7
    pop hl                                        ; $5ec6: $e1
    rst $38                                       ; $5ec7: $ff
    ld d, l                                       ; $5ec8: $55
    ld h, c                                       ; $5ec9: $61
    ld e, h                                       ; $5eca: $5c
    ld l, e                                       ; $5ecb: $6b
    ld l, h                                       ; $5ecc: $6c
    ld l, h                                       ; $5ecd: $6c
    ld l, l                                       ; $5ece: $6d
    ld a, $05                                     ; $5ecf: $3e $05
    sub c                                         ; $5ed1: $91

jr_067_5ed2:
    inc a                                         ; $5ed2: $3c
    add b                                         ; $5ed3: $80
    ld [$a955], a                                 ; $5ed4: $ea $55 $a9
    db $d3                                        ; $5ed7: $d3
    ld b, b                                       ; $5ed8: $40
    ld [hl], c                                    ; $5ed9: $71
    ld h, c                                       ; $5eda: $61
    add h                                         ; $5edb: $84
    ld b, [hl]                                    ; $5edc: $46
    push bc                                       ; $5edd: $c5
    ld b, d                                       ; $5ede: $42
    db $fc                                        ; $5edf: $fc
    ret nc                                        ; $5ee0: $d0

    ld b, c                                       ; $5ee1: $41
    call nc, $a140                                ; $5ee2: $d4 $40 $a1
    sub b                                         ; $5ee5: $90
    call nz, Call_067_4a90                        ; $5ee6: $c4 $90 $4a
    ld h, b                                       ; $5ee9: $60
    cp $c5                                        ; $5eea: $fe $c5
    pop bc                                        ; $5eec: $c1
    ld l, d                                       ; $5eed: $6a
    ld b, b                                       ; $5eee: $40
    ld e, e                                       ; $5eef: $5b
    ld b, b                                       ; $5ef0: $40
    ld l, [hl]                                    ; $5ef1: $6e
    ld [hl], b                                    ; $5ef2: $70
    ld [hl], b                                    ; $5ef3: $70
    rrca                                          ; $5ef4: $0f
    ld l, [hl]                                    ; $5ef5: $6e
    add hl, sp                                    ; $5ef6: $39
    or [hl]                                       ; $5ef7: $b6
    sbc a                                         ; $5ef8: $9f
    cp h                                          ; $5ef9: $bc
    ld b, b                                       ; $5efa: $40
    ld d, l                                       ; $5efb: $55
    xor c                                         ; $5efc: $a9
    db $d3                                        ; $5efd: $d3
    ld b, b                                       ; $5efe: $40
    sub c                                         ; $5eff: $91
    ld b, b                                       ; $5f00: $40
    ret nc                                        ; $5f01: $d0

    adc l                                         ; $5f02: $8d
    and [hl]                                      ; $5f03: $a6
    push bc                                       ; $5f04: $c5
    ld b, e                                       ; $5f05: $43
    and $61                                       ; $5f06: $e6 $61
    call nc, $9e40                                ; $5f08: $d4 $40 $9e
    jp Jump_067_55c0                              ; $5f0b: $c3 $c0 $55


    ld d, d                                       ; $5f0e: $52
    rst $38                                       ; $5f0f: $ff
    ld [hl], $6e                                  ; $5f10: $36 $6e
    ld [hl], h                                    ; $5f12: $74
    dec [hl]                                      ; $5f13: $35
    ld l, d                                       ; $5f14: $6a
    ld c, d                                       ; $5f15: $4a
    ld c, h                                       ; $5f16: $4c
    ld d, d                                       ; $5f17: $52
    ccf                                           ; $5f18: $3f
    ccf                                           ; $5f19: $3f
    ld c, b                                       ; $5f1a: $48
    ld c, [hl]                                    ; $5f1b: $4e
    ld d, e                                       ; $5f1c: $53
    ld b, l                                       ; $5f1d: $45
    sbc [hl]                                      ; $5f1e: $9e
    cp h                                          ; $5f1f: $bc
    ld b, c                                       ; $5f20: $41
    ld d, l                                       ; $5f21: $55
    xor d                                         ; $5f22: $aa
    and b                                         ; $5f23: $a0
    add hl, bc                                    ; $5f24: $09
    pop bc                                        ; $5f25: $c1
    ld d, e                                       ; $5f26: $53
    ld b, d                                       ; $5f27: $42
    add hl, hl                                    ; $5f28: $29
    ld b, d                                       ; $5f29: $42
    push bc                                       ; $5f2a: $c5
    ld b, a                                       ; $5f2b: $47
    call nc, $9f40                                ; $5f2c: $d4 $40 $9f
    add d                                         ; $5f2f: $82
    ret nz                                        ; $5f30: $c0

    ld b, l                                       ; $5f31: $45
    rst $38                                       ; $5f32: $ff
    ld [hl], $62                                  ; $5f33: $36 $62
    ld h, e                                       ; $5f35: $63
    ld a, b                                       ; $5f36: $78
    ld l, h                                       ; $5f37: $6c
    ld l, l                                       ; $5f38: $6d
    ld d, l                                       ; $5f39: $55
    ld d, h                                       ; $5f3a: $54
    ld a, a                                       ; $5f3b: $7f
    ld d, e                                       ; $5f3c: $53
    ccf                                           ; $5f3d: $3f
    ld b, a                                       ; $5f3e: $47
    ld h, c                                       ; $5f3f: $61
    ld e, b                                       ; $5f40: $58
    ld b, h                                       ; $5f41: $44
    and c                                         ; $5f42: $a1
    add hl, bc                                    ; $5f43: $09
    jp nz, Jump_067_55a0                          ; $5f44: $c2 $a0 $55

    xor c                                         ; $5f47: $a9
    sub c                                         ; $5f48: $91
    ld b, [hl]                                    ; $5f49: $46
    jr c, jr_067_5ed2                             ; $5f4a: $38 $86

    jr nz, @-$1e                                  ; $5f4c: $20 $e0

    sbc $22                                       ; $5f4e: $de $22
    ld [$e1bf], a                                 ; $5f50: $ea $bf $e1
    add hl, sp                                    ; $5f53: $39
    ld a, a                                       ; $5f54: $7f
    ld h, d                                       ; $5f55: $62
    ld h, a                                       ; $5f56: $67
    dec [hl]                                      ; $5f57: $35
    dec [hl]                                      ; $5f58: $35
    ld [hl], e                                    ; $5f59: $73
    ld l, [hl]                                    ; $5f5a: $6e
    ld b, h                                       ; $5f5b: $44
    add b                                         ; $5f5c: $80
    and c                                         ; $5f5d: $a1
    dec de                                        ; $5f5e: $1b
    ld d, d                                       ; $5f5f: $52
    ld d, d                                       ; $5f60: $52
    add e                                         ; $5f61: $83
    jp nz, $eba0                                  ; $5f62: $c2 $a0 $eb

    ld d, l                                       ; $5f65: $55
    xor c                                         ; $5f66: $a9
    and [hl]                                      ; $5f67: $a6
    ld h, $6c                                     ; $5f68: $26 $6c
    ld b, d                                       ; $5f6a: $42
    call c, Call_000_22ae                         ; $5f6b: $dc $ae $22
    ld l, h                                       ; $5f6e: $6c
    rst $00                                       ; $5f6f: $c7
    sbc [hl]                                      ; $5f70: $9e
    sub b                                         ; $5f71: $90
    ld a, $89                                     ; $5f72: $3e $89
    ret nz                                        ; $5f74: $c0

    dec [hl]                                      ; $5f75: $35
    ld l, d                                       ; $5f76: $6a
    dec de                                        ; $5f77: $1b
    ld a, [hl-]                                   ; $5f78: $3a
    xor [hl]                                      ; $5f79: $ae
    add b                                         ; $5f7a: $80
    and c                                         ; $5f7b: $a1
    ld b, d                                       ; $5f7c: $42
    ld b, l                                       ; $5f7d: $45
    cp a                                          ; $5f7e: $bf
    add h                                         ; $5f7f: $84
    ld d, l                                       ; $5f80: $55
    and a                                         ; $5f81: $a7
    ld l, e                                       ; $5f82: $6b
    jr z, @+$42                                   ; $5f83: $28 $40

    ld l, h                                       ; $5f85: $6c
    ld b, d                                       ; $5f86: $42
    ld d, b                                       ; $5f87: $50
    ld [hl+], a                                   ; $5f88: $22
    ld l, h                                       ; $5f89: $6c
    rst $00                                       ; $5f8a: $c7

jr_067_5f8b:
    ret nz                                        ; $5f8b: $c0

    ldh [$87], a                                  ; $5f8c: $e0 $87
    and b                                         ; $5f8e: $a0
    adc b                                         ; $5f8f: $88
    ret nz                                        ; $5f90: $c0

    xor a                                         ; $5f91: $af
    ld b, d                                       ; $5f92: $42
    pop bc                                        ; $5f93: $c1
    dec bc                                        ; $5f94: $0b
    ld c, d                                       ; $5f95: $4a
    ld c, c                                       ; $5f96: $49
    ld a, [hl]                                    ; $5f97: $7e
    add b                                         ; $5f98: $80
    sbc [hl]                                      ; $5f99: $9e
    ld a, l                                       ; $5f9a: $7d
    ld l, d                                       ; $5f9b: $6a
    ld a, $25                                     ; $5f9c: $3e $25
    add h                                         ; $5f9e: $84
    ld h, b                                       ; $5f9f: $60
    ld l, h                                       ; $5fa0: $6c
    ld b, d                                       ; $5fa1: $42
    inc e                                         ; $5fa2: $1c
    ld d, b                                       ; $5fa3: $50
    ld [hl+], a                                   ; $5fa4: $22
    ld l, h                                       ; $5fa5: $6c
    rst $00                                       ; $5fa6: $c7
    sbc [hl]                                      ; $5fa7: $9e
    sub b                                         ; $5fa8: $90
    add hl, sp                                    ; $5fa9: $39
    add a                                         ; $5faa: $87
    and b                                         ; $5fab: $a0
    adc b                                         ; $5fac: $88
    ret nz                                        ; $5fad: $c0

    ld [bc], a                                    ; $5fae: $02
    jp nz, Jump_067_4f07                          ; $5faf: $c2 $07 $4f

    ld h, c                                       ; $5fb2: $61
    ld d, d                                       ; $5fb3: $52
    ret nz                                        ; $5fb4: $c0

    pop hl                                        ; $5fb5: $e1
    ld [hl-], a                                   ; $5fb6: $32
    jr nz, jr_067_5ffb                            ; $5fb7: $20 $42

    and e                                         ; $5fb9: $a3
    ld sp, $3e20                                  ; $5fba: $31 $20 $3e
    inc h                                         ; $5fbd: $24
    or b                                          ; $5fbe: $b0
    add h                                         ; $5fbf: $84
    ld h, l                                       ; $5fc0: $65
    ld d, b                                       ; $5fc1: $50
    inc hl                                        ; $5fc2: $23
    ld l, h                                       ; $5fc3: $6c
    call nz, Call_000_00ca                        ; $5fc4: $c4 $ca $00
    and c                                         ; $5fc7: $a1
    sub c                                         ; $5fc8: $91
    adc e                                         ; $5fc9: $8b
    ret nz                                        ; $5fca: $c0

    ld b, e                                       ; $5fcb: $43
    ld h, a                                       ; $5fcc: $67
    ld d, b                                       ; $5fcd: $50
    ld b, c                                       ; $5fce: $41
    ld [hl], $83                                  ; $5fcf: $36 $83
    and b                                         ; $5fd1: $a0
    ret nz                                        ; $5fd2: $c0

    pop hl                                        ; $5fd3: $e1
    ld d, l                                       ; $5fd4: $55
    sub b                                         ; $5fd5: $90
    db $fc                                        ; $5fd6: $fc
    ld b, b                                       ; $5fd7: $40
    jr nz, @+$4a                                  ; $5fd8: $20 $48

    ld b, d                                       ; $5fda: $42
    push bc                                       ; $5fdb: $c5
    ld bc, $2031                                  ; $5fdc: $01 $31 $20
    ld a, $24                                     ; $5fdf: $3e $24
    add h                                         ; $5fe1: $84
    ld h, h                                       ; $5fe2: $64
    jp c, $2445                                   ; $5fe3: $da $45 $24

    ld l, h                                       ; $5fe6: $6c
    jp $cafe                                      ; $5fe7: $c3 $fe $ca


    nop                                           ; $5fea: $00
    sbc a                                         ; $5feb: $9f
    sbc h                                         ; $5fec: $9c
    ld d, e                                       ; $5fed: $53
    ld d, h                                       ; $5fee: $54
    ld d, d                                       ; $5fef: $52
    ld c, d                                       ; $5ff0: $4a
    ld e, l                                       ; $5ff1: $5d
    ld bc, $bb55                                  ; $5ff2: $01 $55 $bb
    pop bc                                        ; $5ff5: $c1
    cp e                                          ; $5ff6: $bb
    and c                                         ; $5ff7: $a1
    ret nz                                        ; $5ff8: $c0

    ldh [rSB], a                                  ; $5ff9: $e0 $01

jr_067_5ffb:
    and d                                         ; $5ffb: $a2
    add hl, de                                    ; $5ffc: $19
    and e                                         ; $5ffd: $a3
    ld sp, $3e20                                  ; $5ffe: $31 $20 $3e

Call_067_6001:
    inc h                                         ; $6001: $24
    ldh a, [$84]                                  ; $6002: $f0 $84
    ld h, d                                       ; $6004: $62
    jr c, jr_067_5f8b                             ; $6005: $38 $84

    db $fd                                        ; $6007: $fd
    ld b, $e0                                     ; $6008: $06 $e0
    ld hl, $919e                                  ; $600a: $21 $9e $91
    ld b, l                                       ; $600d: $45
    ld b, l                                       ; $600e: $45
    ld a, h                                       ; $600f: $7c
    ret                                           ; $6010: $c9


    ldh [$bb], a                                  ; $6011: $e0 $bb
    pop bc                                        ; $6013: $c1
    xor h                                         ; $6014: $ac
    ld l, d                                       ; $6015: $6a
    ld b, l                                       ; $6016: $45
    ld e, e                                       ; $6017: $5b
    sub c                                         ; $6018: $91
    add b                                         ; $6019: $80
    pop hl                                        ; $601a: $e1
    jr nz, jr_067_6036                            ; $601b: $20 $19

    xor c                                         ; $601d: $a9
    push de                                       ; $601e: $d5
    inc b                                         ; $601f: $04
    db $ec                                        ; $6020: $ec
    ld bc, $04cb                                  ; $6021: $01 $cb $04
    db $ed                                        ; $6024: $ed
    add hl, hl                                    ; $6025: $29
    ld [$80fd], a                                 ; $6026: $ea $fd $80
    cp a                                          ; $6029: $bf
    add b                                         ; $602a: $80
    dec a                                         ; $602b: $3d
    ld e, e                                       ; $602c: $5b
    inc b                                         ; $602d: $04
    and c                                         ; $602e: $a1
    xor h                                         ; $602f: $ac
    xor l                                         ; $6030: $ad
    ld l, d                                       ; $6031: $6a
    ld b, h                                       ; $6032: $44
    ld [hl], e                                    ; $6033: $73
    add b                                         ; $6034: $80
    db $fc                                        ; $6035: $fc

jr_067_6036:
    ld [hl+], a                                   ; $6036: $22
    db $10                                        ; $6037: $10
    add hl, de                                    ; $6038: $19
    and h                                         ; $6039: $a4
    ld b, c                                       ; $603a: $41
    add a                                         ; $603b: $87
    add h                                         ; $603c: $84
    ld h, c                                       ; $603d: $61
    db $fd                                        ; $603e: $fd
    dec hl                                        ; $603f: $2b
    db $eb                                        ; $6040: $eb
    inc a                                         ; $6041: $3c
    ld h, e                                       ; $6042: $63
    db $fd                                        ; $6043: $fd
    add b                                         ; $6044: $80
    ccf                                           ; $6045: $3f
    add b                                         ; $6046: $80
    ld e, [hl]                                    ; $6047: $5e
    ld [bc], a                                    ; $6048: $02
    pop hl                                        ; $6049: $e1
    xor l                                         ; $604a: $ad
    xor h                                         ; $604b: $ac
    ld l, d                                       ; $604c: $6a
    xor [hl]                                      ; $604d: $ae
    add c                                         ; $604e: $81
    ldh [$9e], a                                  ; $604f: $e0 $9e
    cpl                                           ; $6051: $2f
    ld hl, $1918                                  ; $6052: $21 $18 $19
    and h                                         ; $6055: $a4
    push af                                       ; $6056: $f5
    ld b, d                                       ; $6057: $42
    ld c, [hl]                                    ; $6058: $4e
    inc b                                         ; $6059: $04
    jp c, $fdd9                                   ; $605a: $da $d9 $fd

    ld a, [hl+]                                   ; $605d: $2a
    daa                                           ; $605e: $27
    add b                                         ; $605f: $80
    sbc h                                         ; $6060: $9c
    ld b, d                                       ; $6061: $42
    cp a                                          ; $6062: $bf
    sbc a                                         ; $6063: $9f
    or [hl]                                       ; $6064: $b6
    call nz, $9090                                ; $6065: $c4 $90 $90
    ld b, b                                       ; $6068: $40
    ld b, c                                       ; $6069: $41
    ld [c], a                                     ; $606a: $e2
    xor l                                         ; $606b: $ad
    add a                                         ; $606c: $87
    ld l, d                                       ; $606d: $6a
    xor a                                         ; $606e: $af
    xor [hl]                                      ; $606f: $ae
    ld b, c                                       ; $6070: $41
    ld [c], a                                     ; $6071: $e2
    ld [c], a                                     ; $6072: $e2
    jr nz, jr_067_608e                            ; $6073: $20 $19

    and e                                         ; $6075: $a3
    ld b, b                                       ; $6076: $40
    add hl, hl                                    ; $6077: $29
    call c, $db45                                 ; $6078: $dc $45 $db
    db $fd                                        ; $607b: $fd
    dec hl                                        ; $607c: $2b
    ld [$429c], a                                 ; $607d: $ea $9c $42
    dec b                                         ; $6080: $05
    ld b, b                                       ; $6081: $40
    cp [hl]                                       ; $6082: $be
    ld h, b                                       ; $6083: $60
    ld b, d                                       ; $6084: $42
    cp h                                          ; $6085: $bc
    and c                                         ; $6086: $a1
    rra                                           ; $6087: $1f
    xor l                                         ; $6088: $ad
    ld l, h                                       ; $6089: $6c
    ld l, l                                       ; $608a: $6d
    xor [hl]                                      ; $608b: $ae
    xor a                                         ; $608c: $af
    or d                                          ; $608d: $b2

jr_067_608e:
    ld h, b                                       ; $608e: $60
    cp $82                                        ; $608f: $fe $82
    ld b, a                                       ; $6091: $47
    inc bc                                        ; $6092: $03
    jr z, jr_067_60d5                             ; $6093: $28 $40

    inc l                                         ; $6095: $2c
    db $fd                                        ; $6096: $fd
    ld a, [hl+]                                   ; $6097: $2a
    rst $10                                       ; $6098: $d7
    ld bc, $d3da                                  ; $6099: $01 $da $d3
    add c                                         ; $609c: $81
    and c                                         ; $609d: $a1
    ld a, a                                       ; $609e: $7f
    ld h, b                                       ; $609f: $60
    ld a, h                                       ; $60a0: $7c
    and c                                         ; $60a1: $a1
    ld [bc], a                                    ; $60a2: $02
    dec sp                                        ; $60a3: $3b
    and b                                         ; $60a4: $a0
    xor a                                         ; $60a5: $af
    pop bc                                        ; $60a6: $c1
    ret nz                                        ; $60a7: $c0

    ld a, l                                       ; $60a8: $7d
    jr nz, jr_067_60b2                            ; $60a9: $20 $07

    ld h, e                                       ; $60ab: $63
    ld b, b                                       ; $60ac: $40
    cpl                                           ; $60ad: $2f
    db $fd                                        ; $60ae: $fd
    inc l                                         ; $60af: $2c
    inc a                                         ; $60b0: $3c
    ld h, c                                       ; $60b1: $61

jr_067_60b2:
    add h                                         ; $60b2: $84
    db $d3                                        ; $60b3: $d3
    add b                                         ; $60b4: $80
    ld a, e                                       ; $60b5: $7b
    add b                                         ; $60b6: $80
    ld b, b                                       ; $60b7: $40
    inc bc                                        ; $60b8: $03
    ld h, b                                       ; $60b9: $60
    dec sp                                        ; $60ba: $3b

jr_067_60bb:
    and c                                         ; $60bb: $a1
    ccf                                           ; $60bc: $3f
    jr nz, @+$43                                  ; $60bd: $20 $41

    push bc                                       ; $60bf: $c5
    ret c                                         ; $60c0: $d8

    ld h, b                                       ; $60c1: $60
    ld a, d                                       ; $60c2: $7a
    and c                                         ; $60c3: $a1
    ld b, b                                       ; $60c4: $40
    dec hl                                        ; $60c5: $2b
    db $fd                                        ; $60c6: $fd
    inc l                                         ; $60c7: $2c
    inc b                                         ; $60c8: $04
    ld b, h                                       ; $60c9: $44
    ld b, b                                       ; $60ca: $40
    ld [c], a                                     ; $60cb: $e2
    ld l, [hl]                                    ; $60cc: $6e
    ld l, a                                       ; $60cd: $6f
    dec sp                                        ; $60ce: $3b
    and c                                         ; $60cf: $a1
    ld de, $8139                                  ; $60d0: $11 $39 $81
    pop hl                                        ; $60d3: $e1
    ld a, h                                       ; $60d4: $7c

jr_067_60d5:
    nop                                           ; $60d5: $00
    rlca                                          ; $60d6: $07
    ld hl, $f7d3                                  ; $60d7: $21 $d3 $f7
    ld bc, $2b40                                  ; $60da: $01 $40 $2b
    db $fd                                        ; $60dd: $fd
    ld a, [hl+]                                   ; $60de: $2a
    jr z, jr_067_60bb                             ; $60df: $28 $da

    ld h, c                                       ; $60e1: $61
    inc b                                         ; $60e2: $04
    ld b, d                                       ; $60e3: $42
    cp a                                          ; $60e4: $bf
    ld b, d                                       ; $60e5: $42
    inc a                                         ; $60e6: $3c
    dec sp                                        ; $60e7: $3b
    and d                                         ; $60e8: $a2
    ld b, b                                       ; $60e9: $40
    ld b, c                                       ; $60ea: $41
    jp $2107                                      ; $60eb: $c3 $07 $21


    add b                                         ; $60ee: $80
    add c                                         ; $60ef: $81
    jr nz, jr_067_6154                            ; $60f0: $20 $62

    ld b, b                                       ; $60f2: $40
    ld b, b                                       ; $60f3: $40
    dec hl                                        ; $60f4: $2b
    db $fd                                        ; $60f5: $fd
    ld a, [hl+]                                   ; $60f6: $2a
    jp c, Jump_067_7f61                           ; $60f7: $da $61 $7f

    add e                                         ; $60fa: $83
    cp l                                          ; $60fb: $bd
    ld b, b                                       ; $60fc: $40
    ld b, l                                       ; $60fd: $45
    ld bc, $003a                                  ; $60fe: $01 $3a $00
    pop hl                                        ; $6101: $e1
    ld b, c                                       ; $6102: $41
    ld [c], a                                     ; $6103: $e2
    add c                                         ; $6104: $81
    ld hl, $c3e5                                  ; $6105: $21 $e5 $c3
    ld b, b                                       ; $6108: $40
    ld l, $0c                                     ; $6109: $2e $0c
    inc l                                         ; $610b: $2c
    jr nc, jr_067_614e                            ; $610c: $30 $40

    ld d, [hl]                                    ; $610e: $56
    ld sp, hl                                     ; $610f: $f9
    ld b, b                                       ; $6110: $40
    sbc [hl]                                      ; $6111: $9e
    sub b                                         ; $6112: $90
    cp l                                          ; $6113: $bd
    ld b, c                                       ; $6114: $41
    add hl, sp                                    ; $6115: $39
    ret nz                                        ; $6116: $c0

    pop bc                                        ; $6117: $c1
    ld a, $c2                                     ; $6118: $3e $c2
    jp $8200                                      ; $611a: $c3 $00 $82


    add e                                         ; $611d: $83
    ld a, [de]                                    ; $611e: $1a
    and b                                         ; $611f: $a0
    ld hl, sp-$5f                                 ; $6120: $f8 $a1
    ld b, b                                       ; $6122: $40
    add hl, hl                                    ; $6123: $29
    ld [bc], a                                    ; $6124: $02
    ld b, a                                       ; $6125: $47
    db $eb                                        ; $6126: $eb
    dec h                                         ; $6127: $25
    rst $38                                       ; $6128: $ff
    add b                                         ; $6129: $80
    add b                                         ; $612a: $80
    ldh [$0a], a                                  ; $612b: $e0 $0a
    rst $38                                       ; $612d: $ff
    and b                                         ; $612e: $a0
    ld b, d                                       ; $612f: $42
    add b                                         ; $6130: $80
    pop bc                                        ; $6131: $c1
    add hl, sp                                    ; $6132: $39
    jp nz, $82c1                                  ; $6133: $c2 $c1 $82

    add d                                         ; $6136: $82
    ld [$40c6], sp                                ; $6137: $08 $c6 $40
    ld a, [hl+]                                   ; $613a: $2a
    ld b, b                                       ; $613b: $40
    jp hl                                         ; $613c: $e9


    add [hl]                                      ; $613d: $86
    db $eb                                        ; $613e: $eb
    ld [hl+], a                                   ; $613f: $22
    cp a                                          ; $6140: $bf
    ld bc, $207f                                  ; $6141: $01 $7f $20
    ret nz                                        ; $6144: $c0

    and b                                         ; $6145: $a0
    ld a, a                                       ; $6146: $7f
    and c                                         ; $6147: $a1
    inc a                                         ; $6148: $3c
    ld b, c                                       ; $6149: $41
    db $e4                                        ; $614a: $e4
    ld b, $42                                     ; $614b: $06 $42
    and b                                         ; $614d: $a0

jr_067_614e:
    add sp, -$17                                  ; $614e: $e8 $e9
    inc bc                                        ; $6150: $03
    ld b, a                                       ; $6151: $47
    or l                                          ; $6152: $b5
    ret nz                                        ; $6153: $c0

jr_067_6154:
    ld b, b                                       ; $6154: $40
    add hl, hl                                    ; $6155: $29
    ld [bc], a                                    ; $6156: $02
    ld b, l                                       ; $6157: $45
    add sp, -$57                                  ; $6158: $e8 $a9
    nop                                           ; $615a: $00
    ccf                                           ; $615b: $3f
    ldh [$fb], a                                  ; $615c: $e0 $fb
    ld b, c                                       ; $615e: $41
    add c                                         ; $615f: $81
    ldh [$03], a                                  ; $6160: $e0 $03
    jp Jump_000_00ed                              ; $6162: $c3 $ed $00


    inc bc                                        ; $6165: $03
    ld b, a                                       ; $6166: $47
    ld b, b                                       ; $6167: $40
    and [hl]                                      ; $6168: $a6
    ld [bc], a                                    ; $6169: $02
    ld c, d                                       ; $616a: $4a
    ld [hl], d                                    ; $616b: $72
    add sp, -$58                                  ; $616c: $e8 $a8
    ld [$a1c1], a                                 ; $616e: $ea $c1 $a1
    ld a, l                                       ; $6171: $7d
    jr nz, @+$47                                  ; $6172: $20 $45

    scf                                           ; $6174: $37
    scf                                           ; $6175: $37
    inc bc                                        ; $6176: $03
    rst $00                                       ; $6177: $c7
    nop                                           ; $6178: $00
    inc bc                                        ; $6179: $03
    ld b, a                                       ; $617a: $47
    add b                                         ; $617b: $80
    ld h, a                                       ; $617c: $67
    ld [bc], a                                    ; $617d: $02
    ld c, c                                       ; $617e: $49
    add sp, -$56                                  ; $617f: $e8 $aa
    ccf                                           ; $6181: $3f
    jp nz, Jump_000_203b                          ; $6182: $c2 $3b $20

    add l                                         ; $6185: $85
    and c                                         ; $6186: $a1
    pop bc                                        ; $6187: $c1
    pop bc                                        ; $6188: $c1
    add b                                         ; $6189: $80
    inc bc                                        ; $618a: $03
    pop bc                                        ; $618b: $c1
    ld e, e                                       ; $618c: $5b
    and a                                         ; $618d: $a7
    ld b, d                                       ; $618e: $42
    dec hl                                        ; $618f: $2b
    jp hl                                         ; $6190: $e9


    add l                                         ; $6191: $85
    add sp, -$56                                  ; $6192: $e8 $aa
    cp h                                          ; $6194: $bc
    inc bc                                        ; $6195: $03
    db $fd                                        ; $6196: $fd
    db $e3                                        ; $6197: $e3
    or [hl]                                       ; $6198: $b6
    ld bc, $a89f                                  ; $6199: $01 $9f $a8
    add d                                         ; $619c: $82
    inc bc                                        ; $619d: $03
    ld b, a                                       ; $619e: $47
    ld b, d                                       ; $619f: $42
    dec hl                                        ; $61a0: $2b
    adc c                                         ; $61a1: $89
    dec b                                         ; $61a2: $05
    add sp, -$57                                  ; $61a3: $e8 $a9
    inc e                                         ; $61a5: $1c
    ld h, b                                       ; $61a6: $60
    cp c                                          ; $61a7: $b9
    ld hl, $46c2                                  ; $61a8: $21 $c2 $46
    and c                                         ; $61ab: $a1
    jp Jump_000_2383                              ; $61ac: $c3 $83 $23


    inc bc                                        ; $61af: $03
    ld c, c                                       ; $61b0: $49
    ld b, d                                       ; $61b1: $42
    dec hl                                        ; $61b2: $2b
    dec a                                         ; $61b3: $3d
    inc bc                                        ; $61b4: $03
    db $e4                                        ; $61b5: $e4
    push hl                                       ; $61b6: $e5
    ld [$a9e8], sp                                ; $61b7: $08 $e8 $a9
    ld a, c                                       ; $61ba: $79
    inc h                                         ; $61bb: $24
    pop bc                                        ; $61bc: $c1
    pop hl                                        ; $61bd: $e1
    call nz, Call_000_2383                        ; $61be: $c4 $83 $23
    inc bc                                        ; $61c1: $03
    ld c, c                                       ; $61c2: $49
    ld b, d                                       ; $61c3: $42
    dec hl                                        ; $61c4: $2b
    jp nz, $cc23                                  ; $61c5: $c2 $23 $cc

    add hl, bc                                    ; $61c8: $09
    ld h, b                                       ; $61c9: $60
    add sp, -$58                                  ; $61ca: $e8 $a8
    ld [c], a                                     ; $61cc: $e2
    db $e3                                        ; $61cd: $e3
    cp $c4                                        ; $61ce: $fe $c4
    or a                                          ; $61d0: $b7
    and b                                         ; $61d1: $a0
    or [hl]                                       ; $61d2: $b6
    sbc a                                         ; $61d3: $9f
    nop                                           ; $61d4: $00
    add e                                         ; $61d5: $83
    ld hl, $a65b                                  ; $61d6: $21 $5b $a6
    or $01                                        ; $61d9: $f6 $01
    ld b, d                                       ; $61db: $42
    ld h, $40                                     ; $61dc: $26 $40
    jr nz, jr_067_625b                            ; $61de: $20 $7b

    inc b                                         ; $61e0: $04
    add hl, bc                                    ; $61e1: $09
    ld h, b                                       ; $61e2: $60
    add sp, -$56                                  ; $61e3: $e8 $aa
    nop                                           ; $61e5: $00
    ld a, [hl]                                    ; $61e6: $7e
    jp nz, $e3bf                                  ; $61e7: $c2 $bf $e3

    ld b, d                                       ; $61ea: $42
    and e                                         ; $61eb: $a3
    ld e, e                                       ; $61ec: $5b
    and l                                         ; $61ed: $a5
    or $00                                        ; $61ee: $f6 $00
    ld a, h                                       ; $61f0: $7c
    and b                                         ; $61f1: $a0
    ld c, $26                                     ; $61f2: $0e $26
    or $6a                                        ; $61f4: $f6 $6a
    db $ec                                        ; $61f6: $ec
    scf                                           ; $61f7: $37
    and h                                         ; $61f8: $a4
    ld a, a                                       ; $61f9: $7f
    add h                                         ; $61fa: $84
    sub c                                         ; $61fb: $91
    ld b, [hl]                                    ; $61fc: $46
    rst $38                                       ; $61fd: $ff
    ldh [$91], a                                  ; $61fe: $e0 $91
    sub b                                         ; $6200: $90
    call nz, $0380                                ; $6201: $c4 $80 $03
    ld h, b                                       ; $6204: $60
    dec h                                         ; $6205: $25
    inc b                                         ; $6206: $04
    inc e                                         ; $6207: $1c
    and [hl]                                      ; $6208: $a6
    ld bc, $f6c7                                  ; $6209: $01 $c7 $f6
    ld h, l                                       ; $620c: $65
    dec a                                         ; $620d: $3d
    xor b                                         ; $620e: $a8
    ld a, a                                       ; $620f: $7f
    add d                                         ; $6210: $82
    jp $90cf                                      ; $6211: $c3 $cf $90


    ld b, l                                       ; $6214: $45
    scf                                           ; $6215: $37
    dec a                                         ; $6216: $3d
    rst $38                                       ; $6217: $ff
    ldh [$fe], a                                  ; $6218: $e0 $fe
    and c                                         ; $621a: $a1
    or [hl]                                       ; $621b: $b6
    sbc a                                         ; $621c: $9f
    ld h, b                                       ; $621d: $60
    ld b, c                                       ; $621e: $41
    and d                                         ; $621f: $a2
    add a                                         ; $6220: $87
    daa                                           ; $6221: $27
    sub d                                         ; $6222: $92
    ld c, b                                       ; $6223: $48
    or $65                                        ; $6224: $f6 $65
    xor l                                         ; $6226: $ad
    ld hl, $edec                                  ; $6227: $21 $ec $ed
    cp l                                          ; $622a: $bd
    dec b                                         ; $622b: $05
    xor [hl]                                      ; $622c: $ae
    cp a                                          ; $622d: $bf
    add c                                         ; $622e: $81
    add hl, sp                                    ; $622f: $39
    and h                                         ; $6230: $a4
    ld h, h                                       ; $6231: $64
    rst $38                                       ; $6232: $ff
    ldh [$a5], a                                  ; $6233: $e0 $a5
    nop                                           ; $6235: $00
    add c                                         ; $6236: $81
    and c                                         ; $6237: $a1
    inc bc                                        ; $6238: $03
    add sp, -$17                                  ; $6239: $e8 $e9
    add h                                         ; $623b: $84
    ld hl, $63fd                                  ; $623c: $21 $fd $63
    ccf                                           ; $623f: $3f
    ld l, e                                       ; $6240: $6b
    or $65                                        ; $6241: $f6 $65
    xor l                                         ; $6243: $ad
    ld [hl+], a                                   ; $6244: $22
    cp l                                          ; $6245: $bd
    ld b, $fe                                     ; $6246: $06 $fe
    ccf                                           ; $6248: $3f
    ld b, b                                       ; $6249: $40
    call nz, $693e                                ; $624a: $c4 $3e $69
    and e                                         ; $624d: $a3
    dec [hl]                                      ; $624e: $35
    dec [hl]                                      ; $624f: $35
    and e                                         ; $6250: $a3
    rlca                                          ; $6251: $07
    ld l, d                                       ; $6252: $6a
    ld a, $46                                     ; $6253: $3e $46
    ld b, b                                       ; $6255: $40
    add l                                         ; $6256: $85
    db $fd                                        ; $6257: $fd
    ld h, h                                       ; $6258: $64
    ccf                                           ; $6259: $3f
    ld l, e                                       ; $625a: $6b

jr_067_625b:
    or $65                                        ; $625b: $f6 $65
    dec a                                         ; $625d: $3d
    ld [hl+], a                                   ; $625e: $22
    sbc $e7                                       ; $625f: $de $e7
    and [hl]                                      ; $6261: $a6
    sbc [hl]                                      ; $6262: $9e
    call nz, $9190                                ; $6263: $c4 $90 $91
    ld a, h                                       ; $6266: $7c
    ld [bc], a                                    ; $6267: $02
    dec [hl]                                      ; $6268: $35
    ld l, d                                       ; $6269: $6a
    nop                                           ; $626a: $00
    ccf                                           ; $626b: $3f
    add b                                         ; $626c: $80
    ld [bc], a                                    ; $626d: $02
    ld b, d                                       ; $626e: $42
    db $fd                                        ; $626f: $fd
    ld h, a                                       ; $6270: $67
    ccf                                           ; $6271: $3f

jr_067_6272:
    ld l, d                                       ; $6272: $6a
    or $65                                        ; $6273: $f6 $65
    dec a                                         ; $6275: $3d
    ld [hl+], a                                   ; $6276: $22
    rst $20                                       ; $6277: $e7
    and [hl]                                      ; $6278: $a6
    ld b, b                                       ; $6279: $40
    and b                                         ; $627a: $a0
    ld l, a                                       ; $627b: $6f
    sub c                                         ; $627c: $91
    add hl, sp                                    ; $627d: $39
    ld l, e                                       ; $627e: $6b
    ld [hl], c                                    ; $627f: $71
    rst $38                                       ; $6280: $ff
    ldh [$6d], a                                  ; $6281: $e0 $6d
    add hl, sp                                    ; $6283: $39
    pop bc                                        ; $6284: $c1
    db $e4                                        ; $6285: $e4
    nop                                           ; $6286: $00
    rst $20                                       ; $6287: $e7
    ld [hl+], a                                   ; $6288: $22
    rla                                           ; $6289: $17
    ld [hl+], a                                   ; $628a: $22
    ccf                                           ; $628b: $3f
    ld l, d                                       ; $628c: $6a
    or $6a                                        ; $628d: $f6 $6a
    rst $20                                       ; $628f: $e7
    and a                                         ; $6290: $a7
    rst $38                                       ; $6291: $ff
    add b                                         ; $6292: $80
    ret nz                                        ; $6293: $c0

    push bc                                       ; $6294: $c5
    add h                                         ; $6295: $84
    ld [hl+], a                                   ; $6296: $22
    add b                                         ; $6297: $80
    dec b                                         ; $6298: $05
    inc hl                                        ; $6299: $23
    rst $08                                       ; $629a: $cf
    add h                                         ; $629b: $84
    ccf                                           ; $629c: $3f
    ld l, c                                       ; $629d: $69
    or $6a                                        ; $629e: $f6 $6a
    rst $20                                       ; $62a0: $e7
    and l                                         ; $62a1: $a5
    ld a, h                                       ; $62a2: $7c
    ld bc, $c340                                  ; $62a3: $01 $40 $c3
    sub c                                         ; $62a6: $91
    inc bc                                        ; $62a7: $03
    or [hl]                                       ; $62a8: $b6
    sbc l                                         ; $62a9: $9d
    push bc                                       ; $62aa: $c5
    ld b, c                                       ; $62ab: $41
    dec b                                         ; $62ac: $05
    dec h                                         ; $62ad: $25
    jr c, jr_067_6272                             ; $62ae: $38 $c2

    ccf                                           ; $62b0: $3f
    ld l, d                                       ; $62b1: $6a
    or $69                                        ; $62b2: $f6 $69
    di                                            ; $62b4: $f3
    add [hl]                                      ; $62b5: $86
    ld h, b                                       ; $62b6: $60
    ld a, h                                       ; $62b7: $7c
    ld bc, $837e                                  ; $62b8: $01 $7e $83
    rlca                                          ; $62bb: $07
    ld hl, $41c5                                  ; $62bc: $21 $c5 $41
    dec b                                         ; $62bf: $05
    inc h                                         ; $62c0: $24
    and $e7                                       ; $62c1: $e6 $e7
    ld a, b                                       ; $62c3: $78
    pop bc                                        ; $62c4: $c1
    inc [hl]                                      ; $62c5: $34
    ccf                                           ; $62c6: $3f
    ld l, a                                       ; $62c7: $6f
    rst $28                                       ; $62c8: $ef
    ld l, d                                       ; $62c9: $6a
    ld [$027c], a                                 ; $62ca: $ea $7c $02
    sbc a                                         ; $62cd: $9f
    sbc l                                         ; $62ce: $9d
    rst $38                                       ; $62cf: $ff

Jump_067_62d0:
    pop hl                                        ; $62d0: $e1
    push bc                                       ; $62d1: $c5
    and h                                         ; $62d2: $a4
    nop                                           ; $62d3: $00
    dec b                                         ; $62d4: $05
    dec h                                         ; $62d5: $25
    ld h, e                                       ; $62d6: $63
    ld bc, $6f3f                                  ; $62d7: $01 $3f $6f
    cp c                                          ; $62da: $b9
    pop af                                        ; $62db: $f1
    sbc h                                         ; $62dc: $9c
    dec b                                         ; $62dd: $05
    ld b, $63                                     ; $62de: $06 $63
    dec b                                         ; $62e0: $05
    ld h, $8e                                     ; $62e1: $26 $8e
    ld c, l                                       ; $62e3: $4d
    nop                                           ; $62e4: $00
    cp [hl]                                       ; $62e5: $be
    push af                                       ; $62e6: $f5
    sbc h                                         ; $62e7: $9c
    ld bc, $a1cd                                  ; $62e8: $01 $cd $a1
    pop af                                        ; $62eb: $f1
    ld b, d                                       ; $62ec: $42
    inc e                                         ; $62ed: $1c
    add a                                         ; $62ee: $87
    ld c, a                                       ; $62ef: $4f
    rst $28                                       ; $62f0: $ef
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    pop bc                                        ; $62f4: $c1
    nop                                           ; $62f5: $00
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    dec c                                         ; $6302: $0d
    add b                                         ; $6303: $80
    cp $e0                                        ; $6304: $fe $e0
    nop                                           ; $6306: $00
    ld b, b                                       ; $6307: $40
    ret c                                         ; $6308: $d8

    push hl                                       ; $6309: $e5
    rst $30                                       ; $630a: $f7
    and $eb                                       ; $630b: $e6 $eb
    ldh [rIE], a                                  ; $630d: $e0 $ff
    rst $38                                       ; $630f: $ff
    nop                                           ; $6310: $00
    rst $38                                       ; $6311: $ff
    db $f4                                        ; $6312: $f4
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    ld [bc], a                                    ; $6316: $02
    nop                                           ; $6317: $00
    ld hl, $0209                                  ; $6318: $21 $09 $02
    ld bc, $0a1d                                  ; $631b: $01 $1d $0a
    ld [bc], a                                    ; $631e: $02
    ld [bc], a                                    ; $631f: $02
    dec h                                         ; $6320: $25
    rrca                                          ; $6321: $0f
    ld [bc], a                                    ; $6322: $02
    inc bc                                        ; $6323: $03
    inc hl                                        ; $6324: $23
    db $10                                        ; $6325: $10
    ld [bc], a                                    ; $6326: $02
    inc b                                         ; $6327: $04
    ld h, $11                                     ; $6328: $26 $11
    ld [bc], a                                    ; $632a: $02
    dec b                                         ; $632b: $05
    inc d                                         ; $632c: $14
    inc d                                         ; $632d: $14
    ld [bc], a                                    ; $632e: $02
    ld b, $13                                     ; $632f: $06 $13
    dec d                                         ; $6331: $15
    ld [bc], a                                    ; $6332: $02
    rlca                                          ; $6333: $07
    dec d                                         ; $6334: $15
    dec d                                         ; $6335: $15
    ld [bc], a                                    ; $6336: $02
    ld [$1614], sp                                ; $6337: $08 $14 $16
    ld [bc], a                                    ; $633a: $02
    add hl, bc                                    ; $633b: $09
    dec e                                         ; $633c: $1d
    dec de                                        ; $633d: $1b
    ld [bc], a                                    ; $633e: $02
    ld a, [bc]                                    ; $633f: $0a
    jr nz, jr_067_6362                            ; $6340: $20 $20

    ld [bc], a                                    ; $6342: $02
    dec bc                                        ; $6343: $0b
    ld d, $21                                     ; $6344: $16 $21
    ld [bc], a                                    ; $6346: $02
    inc c                                         ; $6347: $0c
    rra                                           ; $6348: $1f
    ld hl, $0d02                                  ; $6349: $21 $02 $0d
    rla                                           ; $634c: $17
    ld [hl+], a                                   ; $634d: $22
    ld [bc], a                                    ; $634e: $02
    ld c, $20                                     ; $634f: $0e $20
    ld [hl+], a                                   ; $6351: $22
    ld [bc], a                                    ; $6352: $02
    rrca                                          ; $6353: $0f
    ld [hl+], a                                   ; $6354: $22
    ld [hl+], a                                   ; $6355: $22
    ld [bc], a                                    ; $6356: $02
    db $10                                        ; $6357: $10
    rra                                           ; $6358: $1f
    inc hl                                        ; $6359: $23
    ld [bc], a                                    ; $635a: $02
    ld de, $2323                                  ; $635b: $11 $23 $23
    ld [bc], a                                    ; $635e: $02
    ld [de], a                                    ; $635f: $12
    ld [hl+], a                                   ; $6360: $22
    inc h                                         ; $6361: $24

jr_067_6362:
    ld [bc], a                                    ; $6362: $02
    inc de                                        ; $6363: $13
    rla                                           ; $6364: $17
    add hl, hl                                    ; $6365: $29
    ld [bc], a                                    ; $6366: $02
    inc d                                         ; $6367: $14
    jr @+$2c                                      ; $6368: $18 $2a

    ld [bc], a                                    ; $636a: $02
    dec d                                         ; $636b: $15
    rla                                           ; $636c: $17
    dec hl                                        ; $636d: $2b
    ld [bc], a                                    ; $636e: $02
    ld d, $18                                     ; $636f: $16 $18
    inc l                                         ; $6371: $2c
    ld [bc], a                                    ; $6372: $02
    rla                                           ; $6373: $17
    ld hl, $0231                                  ; $6374: $21 $31 $02
    jr jr_067_6399                                ; $6377: $18 $20

    ld [hl-], a                                   ; $6379: $32
    ld [bc], a                                    ; $637a: $02
    add hl, de                                    ; $637b: $19
    ld hl, $0233                                  ; $637c: $21 $33 $02
    ld a, [de]                                    ; $637f: $1a
    ld [hl+], a                                   ; $6380: $22
    inc [hl]                                      ; $6381: $34
    ld [bc], a                                    ; $6382: $02
    dec de                                        ; $6383: $1b
    jr @+$38                                      ; $6384: $18 $36

    ld [bc], a                                    ; $6386: $02
    inc e                                         ; $6387: $1c
    add hl, de                                    ; $6388: $19
    scf                                           ; $6389: $37
    ld [bc], a                                    ; $638a: $02
    dec e                                         ; $638b: $1d
    rla                                           ; $638c: $17
    jr c, @+$01                                   ; $638d: $38 $ff

    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    sbc c                                         ; $6391: $99
    ld h, e                                       ; $6392: $63
    ld sp, $4d68                                  ; $6393: $31 $68 $4d
    ld l, [hl]                                    ; $6396: $6e
    ld l, a                                       ; $6397: $6f
    ld l, [hl]                                    ; $6398: $6e

jr_067_6399:
    sbc a                                         ; $6399: $9f
    ld l, $0e                                     ; $639a: $2e $0e
    ld c, $0e                                     ; $639c: $0e $0e
    ld c, l                                       ; $639e: $4d
    rst $38                                       ; $639f: $ff
    add sp, -$10                                  ; $63a0: $e8 $f0
    and $6e                                       ; $63a2: $e6 $6e
    ld h, [hl]                                    ; $63a4: $66
    add sp, -$17                                  ; $63a5: $e8 $e9
    dec c                                         ; $63a7: $0d
    dec c                                         ; $63a8: $0d
    ldh [$ee], a                                  ; $63a9: $e0 $ee
    set 4, h                                      ; $63ab: $cb $e4
    ld l, [hl]                                    ; $63ad: $6e
    ld l, $d7                                     ; $63ae: $2e $d7
    ldh [$ec], a                                  ; $63b0: $e0 $ec
    cp l                                          ; $63b2: $bd
    pop hl                                        ; $63b3: $e1
    db $dd                                        ; $63b4: $dd
    ld [c], a                                     ; $63b5: $e2
    ld l, $0e                                     ; $63b6: $2e $0e
    ldh a, [$e5]                                  ; $63b8: $f0 $e5
    dec c                                         ; $63ba: $0d
    ld l, $2e                                     ; $63bb: $2e $2e
    add h                                         ; $63bd: $84
    ei                                            ; $63be: $fb
    ldh [$c9], a                                  ; $63bf: $e0 $c9
    db $e4                                        ; $63c1: $e4
    ld l, l                                       ; $63c2: $6d
    cp l                                          ; $63c3: $bd
    push hl                                       ; $63c4: $e5
    ldh [$e7], a                                  ; $63c5: $e0 $e7
    ret nc                                        ; $63c7: $d0

    push hl                                       ; $63c8: $e5
    pop bc                                        ; $63c9: $c1
    ldh [$4e], a                                  ; $63ca: $e0 $4e
    ld b, l                                       ; $63cc: $45
    ld c, [hl]                                    ; $63cd: $4e
    ret nz                                        ; $63ce: $c0

    rst $20                                       ; $63cf: $e7
    ld l, $f0                                     ; $63d0: $2e $f0
    and $67                                       ; $63d2: $e6 $67
    ldh [$89], a                                  ; $63d4: $e0 $89
    and $2e                                       ; $63d6: $e6 $2e
    ret nz                                        ; $63d8: $c0

    and $38                                       ; $63d9: $e6 $38
    ldh [$e7], a                                  ; $63db: $e0 $e7
    ret nc                                        ; $63dd: $d0

    push hl                                       ; $63de: $e5
    sbc b                                         ; $63df: $98
    ldh [$0e], a                                  ; $63e0: $e0 $0e
    ld c, $4e                                     ; $63e2: $0e $4e
    sub h                                         ; $63e4: $94
    db $e4                                        ; $63e5: $e4
    ldh a, [$e8]                                  ; $63e6: $f0 $e8
    inc b                                         ; $63e8: $04
    ret nz                                        ; $63e9: $c0

    push hl                                       ; $63ea: $e5
    ld b, l                                       ; $63eb: $45
    db $e4                                        ; $63ec: $e4
    dec l                                         ; $63ed: $2d
    ret nc                                        ; $63ee: $d0

    ld a, [$e23f]                                 ; $63ef: $fa $3f $e2
    adc e                                         ; $63f2: $8b
    pop hl                                        ; $63f3: $e1
    ldh a, [$ec]                                  ; $63f4: $f0 $ec
    ld b, $e0                                     ; $63f6: $06 $e0
    inc bc                                        ; $63f8: $03
    ld l, l                                       ; $63f9: $6d
    dec c                                         ; $63fa: $0d
    rst $38                                       ; $63fb: $ff
    ld [c], a                                     ; $63fc: $e2
    cp a                                          ; $63fd: $bf
    ldh [$e0], a                                  ; $63fe: $e0 $e0
    ldh a, [$c0]                                  ; $6400: $f0 $c0
    jp hl                                         ; $6402: $e9


    ld c, e                                       ; $6403: $4b
    ld [c], a                                     ; $6404: $e2
    ldh a, [$ec]                                  ; $6405: $f0 $ec
    ld b, $c1                                     ; $6407: $06 $c1
    push hl                                       ; $6409: $e5
    dec hl                                        ; $640a: $2b
    dec l                                         ; $640b: $2d
    cp a                                          ; $640c: $bf
    ldh [$d0], a                                  ; $640d: $e0 $d0
    db $fc                                        ; $640f: $fc
    sbc d                                         ; $6410: $9a
    ret nz                                        ; $6411: $c0

    ldh a, [$ee]                                  ; $6412: $f0 $ee
    add d                                         ; $6414: $82
    push hl                                       ; $6415: $e5
    dec b                                         ; $6416: $05
    dec hl                                        ; $6417: $2b
    cp a                                          ; $6418: $bf
    ldh [$2d], a                                  ; $6419: $e0 $2d
    ldh [$f0], a                                  ; $641b: $e0 $f0
    ret nz                                        ; $641d: $c0

    db $ed                                        ; $641e: $ed
    rst $28                                       ; $641f: $ef
    jp nz, $e7b0                                  ; $6420: $c2 $b0 $e7

    ld b, e                                       ; $6423: $43
    ld [c], a                                     ; $6424: $e2
    ccf                                           ; $6425: $3f
    dec hl                                        ; $6426: $2b
    dec c                                         ; $6427: $0d
    ld a, [bc]                                    ; $6428: $0a
    ld a, [bc]                                    ; $6429: $0a
    ld a, [hl+]                                   ; $642a: $2a
    dec bc                                        ; $642b: $0b
    pop bc                                        ; $642c: $c1
    ldh [$7c], a                                  ; $642d: $e0 $7c
    ldh [$e0], a                                  ; $642f: $e0 $e0
    ldh [$ec], a                                  ; $6431: $e0 $ec
    ret nc                                        ; $6433: $d0

    db $ec                                        ; $6434: $ec
    xor a                                         ; $6435: $af
    call nz, $e770                                ; $6436: $c4 $70 $e7
    pop bc                                        ; $6439: $c1
    ld [c], a                                     ; $643a: $e2
    dec hl                                        ; $643b: $2b
    ld c, d                                       ; $643c: $4a
    ld c, d                                       ; $643d: $4a
    scf                                           ; $643e: $37
    ld a, [hl+]                                   ; $643f: $2a
    ld a, [bc]                                    ; $6440: $0a
    ld c, e                                       ; $6441: $4b
    cp c                                          ; $6442: $b9
    ldh [rKEY1], a                                ; $6443: $e0 $4d
    dec l                                         ; $6445: $2d
    ret nc                                        ; $6446: $d0

    ldh a, [$ce]                                  ; $6447: $f0 $ce

jr_067_6449:
    and [hl]                                      ; $6449: $a6
    ldh a, [$50]                                  ; $644a: $f0 $50
    pop bc                                        ; $644c: $c1
    cp [hl]                                       ; $644d: $be
    xor c                                         ; $644e: $a9
    ret                                           ; $644f: $c9


    ret nz                                        ; $6450: $c0

    push bc                                       ; $6451: $c5
    jp nz, Jump_000_2b2b                          ; $6452: $c2 $2b $2b

    dec hl                                        ; $6455: $2b

jr_067_6456:
    ld a, [bc]                                    ; $6456: $0a
    rrca                                          ; $6457: $0f
    dec bc                                        ; $6458: $0b
    dec bc                                        ; $6459: $0b
    dec hl                                        ; $645a: $2b
    dec bc                                        ; $645b: $0b
    cp b                                          ; $645c: $b8
    ret nz                                        ; $645d: $c0

    ret nz                                        ; $645e: $c0

    ldh [$9e], a                                  ; $645f: $e0 $9e
    and a                                         ; $6461: $a7
    ret nc                                        ; $6462: $d0

    db $e4                                        ; $6463: $e4
    inc b                                         ; $6464: $04
    and l                                         ; $6465: $a5
    pop bc                                        ; $6466: $c1
    jr jr_067_6449                                ; $6467: $18 $e0

    dec c                                         ; $6469: $0d
    ld hl, sp-$5f                                 ; $646a: $f8 $a1
    cp c                                          ; $646c: $b9
    and e                                         ; $646d: $a3
    ldh a, [$e3]                                  ; $646e: $f0 $e3
    ret nz                                        ; $6470: $c0

    pop hl                                        ; $6471: $e1
    add a                                         ; $6472: $87
    jp $2b7f                                      ; $6473: $c3 $7f $2b


    ld a, [bc]                                    ; $6476: $0a
    ld c, d                                       ; $6477: $4a
    dec bc                                        ; $6478: $0b
    dec bc                                        ; $6479: $0b
    ld l, e                                       ; $647a: $6b
    ld c, e                                       ; $647b: $4b
    ld a, c                                       ; $647c: $79
    ret nz                                        ; $647d: $c0

    ld bc, $f72d                                  ; $647e: $01 $2d $f7
    and b                                         ; $6481: $a0
    ret nc                                        ; $6482: $d0

    db $ed                                        ; $6483: $ed
    call $83a0                                    ; $6484: $cd $a0 $83
    and d                                         ; $6487: $a2
    ld sp, hl                                     ; $6488: $f9
    and l                                         ; $6489: $a5
    ldh a, [$e5]                                  ; $648a: $f0 $e5
    ret nz                                        ; $648c: $c0

    and $ff                                       ; $648d: $e6 $ff
    dec c                                         ; $648f: $0d
    ld l, e                                       ; $6490: $6b
    ld a, [bc]                                    ; $6491: $0a
    ld a, [bc]                                    ; $6492: $0a
    ld c, e                                       ; $6493: $4b
    ld l, e                                       ; $6494: $6b
    dec bc                                        ; $6495: $0b
    dec hl                                        ; $6496: $2b
    nop                                           ; $6497: $00

jr_067_6498:
    ret nz                                        ; $6498: $c0

    ld [c], a                                     ; $6499: $e2
    ret nc                                        ; $649a: $d0

Jump_067_649b:
    ldh a, [rNR23]                                ; $649b: $f0 $18
    and c                                         ; $649d: $a1
    dec e                                         ; $649e: $1d
    ret nz                                        ; $649f: $c0

    ld d, c                                       ; $64a0: $51
    and b                                         ; $64a1: $a0
    push af                                       ; $64a2: $f5
    add e                                         ; $64a3: $83
    ldh a, [$e4]                                  ; $64a4: $f0 $e4
    ld a, $e3                                     ; $64a6: $3e $e3
    ld e, $04                                     ; $64a8: $1e $04
    jp Jump_067_4b0b                              ; $64aa: $c3 $0b $4b


    ld l, e                                       ; $64ad: $6b
    ld c, e                                       ; $64ae: $4b
    ret nz                                        ; $64af: $c0

    and $d0                                       ; $64b0: $e6 $d0
    db $ec                                        ; $64b2: $ec
    jr jr_067_6456                                ; $64b3: $18 $a1

    jr jr_067_6498                                ; $64b5: $18 $e1

    and c                                         ; $64b7: $a1
    ldh a, [$ed]                                  ; $64b8: $f0 $ed
    ret nz                                        ; $64ba: $c0

    ld [$4b6b], a                                 ; $64bb: $ea $6b $4b
    cp d                                          ; $64be: $ba
    and d                                         ; $64bf: $a2
    ld a, h                                       ; $64c0: $7c

Jump_067_64c1:
    and c                                         ; $64c1: $a1
    ret nc                                        ; $64c2: $d0

    db $ed                                        ; $64c3: $ed
    add b                                         ; $64c4: $80
    adc a                                         ; $64c5: $8f
    add c                                         ; $64c6: $81
    sub [hl]                                      ; $64c7: $96
    and d                                         ; $64c8: $a2
    add b                                         ; $64c9: $80
    db $e3                                        ; $64ca: $e3
    db $fd                                        ; $64cb: $fd
    and b                                         ; $64cc: $a0
    ldh a, [$e4]                                  ; $64cd: $f0 $e4
    ld c, h                                       ; $64cf: $4c
    and e                                         ; $64d0: $a3
    push bc                                       ; $64d1: $c5
    and b                                         ; $64d2: $a0
    dec bc                                        ; $64d3: $0b
    nop                                           ; $64d4: $00
    ld [bc], a                                    ; $64d5: $02
    db $e4                                        ; $64d6: $e4
    ret nz                                        ; $64d7: $c0

    ld [c], a                                     ; $64d8: $e2
    ldh [$e7], a                                  ; $64d9: $e0 $e7
    ret nc                                        ; $64db: $d0

    jp hl                                         ; $64dc: $e9


    ld h, c                                       ; $64dd: $61
    add e                                         ; $64de: $83
    adc $82                                       ; $64df: $ce $82
    ldh a, [$e8]                                  ; $64e1: $f0 $e8
    cp l                                          ; $64e3: $bd
    jp $c022                                      ; $64e4: $c3 $22 $c0


    ldh [rOCPD], a                                ; $64e7: $e0 $6b
    dec sp                                        ; $64e9: $3b
    and h                                         ; $64ea: $a4
    dec [hl]                                      ; $64eb: $35
    and c                                         ; $64ec: $a1
    ret nc                                        ; $64ed: $d0

    db $ed                                        ; $64ee: $ed
    ld l, l                                       ; $64ef: $6d
    rst $38                                       ; $64f0: $ff
    add sp, -$4c                                  ; $64f1: $e8 $b4
    add c                                         ; $64f3: $81
    nop                                           ; $64f4: $00
    ldh a, [$e6]                                  ; $64f5: $f0 $e6
    ret nz                                        ; $64f7: $c0

    rst $20                                       ; $64f8: $e7
    add e                                         ; $64f9: $83
    db $e3                                        ; $64fa: $e3
    or e                                          ; $64fb: $b3
    and b                                         ; $64fc: $a0
    rst $38                                       ; $64fd: $ff
    db $ed                                        ; $64fe: $ed
    add h                                         ; $64ff: $84
    add c                                         ; $6500: $81
    adc $e2                                       ; $6501: $ce $e2
    db $e4                                        ; $6503: $e4
    pop hl                                        ; $6504: $e1
    adc $75                                       ; $6505: $ce $75
    add c                                         ; $6507: $81
    ld c, [hl]                                    ; $6508: $4e
    ld c, $4e                                     ; $6509: $0e $4e
    ldh a, [$e5]                                  ; $650b: $f0 $e5
    push bc                                       ; $650d: $c5
    add [hl]                                      ; $650e: $86
    ld l, e                                       ; $650f: $6b
    ld c, e                                       ; $6510: $4b
    and c                                         ; $6511: $a1
    ld c, e                                       ; $6512: $4b
    cp h                                          ; $6513: $bc
    add e                                         ; $6514: $83
    xor l                                         ; $6515: $ad
    ldh [$dc], a                                  ; $6516: $e0 $dc
    and e                                         ; $6518: $a3
    ret nc                                        ; $6519: $d0

    ld [$c00e], a                                 ; $651a: $ea $0e $c0
    rst $20                                       ; $651d: $e7
    ld l, [hl]                                    ; $651e: $6e
    pop af                                        ; $651f: $f1
    ld l, [hl]                                    ; $6520: $6e
    cp a                                          ; $6521: $bf
    ldh [$f0], a                                  ; $6522: $e0 $f0
    push hl                                       ; $6524: $e5
    add [hl]                                      ; $6525: $86
    add [hl]                                      ; $6526: $86
    ld a, [bc]                                    ; $6527: $0a
    ld a, [bc]                                    ; $6528: $0a
    ld a, [bc]                                    ; $6529: $0a
    ld l, d                                       ; $652a: $6a
    sbc [hl]                                      ; $652b: $9e
    ld b, e                                       ; $652c: $43
    add b                                         ; $652d: $80
    dec l                                         ; $652e: $2d
    ld l, l                                       ; $652f: $6d
    ld l, l                                       ; $6530: $6d
    dec l                                         ; $6531: $2d
    call c, $d0a4                                 ; $6532: $dc $a4 $d0
    ld a, [c]                                     ; $6535: $f2
    ld l, $41                                     ; $6536: $2e $41
    ld l, [hl]                                    ; $6538: $6e
    ld [hl], $85                                  ; $6539: $36 $85
    ld [hl], b                                    ; $653b: $70
    db $e3                                        ; $653c: $e3
    daa                                           ; $653d: $27
    ldh [$83], a                                  ; $653e: $e0 $83
    and h                                         ; $6540: $a4
    ld [bc], a                                    ; $6541: $02
    and b                                         ; $6542: $a0
    ld l, l                                       ; $6543: $6d
    pop bc                                        ; $6544: $c1
    ld [c], a                                     ; $6545: $e2
    add hl, bc                                    ; $6546: $09
    dec l                                         ; $6547: $2d
    push de                                       ; $6548: $d5
    ld h, h                                       ; $6549: $64
    ret nc                                        ; $654a: $d0

    db $ed                                        ; $654b: $ed
    dec c                                         ; $654c: $0d
    dec bc                                        ; $654d: $0b
    pop hl                                        ; $654e: $e1
    or $67                                        ; $654f: $f6 $67
    ldh a, [$e2]                                  ; $6551: $f0 $e2
    add hl, bc                                    ; $6553: $09
    add l                                         ; $6554: $85
    ld [bc], a                                    ; $6555: $02
    add c                                         ; $6556: $81
    ret nz                                        ; $6557: $c0

    dec hl                                        ; $6558: $2b
    ccf                                           ; $6559: $3f
    ldh [$c5], a                                  ; $655a: $e0 $c5
    and [hl]                                      ; $655c: $a6
    ld e, h                                       ; $655d: $5c
    jp nz, $ecd0                                  ; $655e: $c2 $d0 $ec

    dec a                                         ; $6561: $3d
    ld [c], a                                     ; $6562: $e2
    ldh a, [$eb]                                  ; $6563: $f0 $eb
    inc c                                         ; $6565: $0c
    dec b                                         ; $6566: $05
    and h                                         ; $6567: $a4
    call nz, $0ba1                                ; $6568: $c4 $a1 $0b
    dec bc                                        ; $656b: $0b
    rlca                                          ; $656c: $07
    pop bc                                        ; $656d: $c1
    ld b, e                                       ; $656e: $43
    add b                                         ; $656f: $80
    call c, $d0a6                                 ; $6570: $dc $a6 $d0
    db $ed                                        ; $6573: $ed
    nop                                           ; $6574: $00
    dec h                                         ; $6575: $25
    ldh [$f0], a                                  ; $6576: $e0 $f0
    db $ec                                        ; $6578: $ec
    add $84                                       ; $6579: $c6 $84
    ld b, $c0                                     ; $657b: $06 $c0
    inc bc                                        ; $657d: $03
    pop bc                                        ; $657e: $c1
    cp a                                          ; $657f: $bf
    ldh [$c0], a                                  ; $6580: $e0 $c0
    db $e3                                        ; $6582: $e3
    call c, $e0a4                                 ; $6583: $dc $a4 $e0
    ret nc                                        ; $6586: $d0

    db $eb                                        ; $6587: $eb
    add sp, -$40                                  ; $6588: $e8 $c0
    ldh a, [$ee]                                  ; $658a: $f0 $ee
    rlca                                          ; $658c: $07
    push bc                                       ; $658d: $c5
    cp a                                          ; $658e: $bf
    pop hl                                        ; $658f: $e1
    ld c, e                                       ; $6590: $4b
    ld c, e                                       ; $6591: $4b
    ld a, [bc]                                    ; $6592: $0a
    ld bc, $c04a                                  ; $6593: $01 $4a $c0
    push hl                                       ; $6596: $e5
    xor d                                         ; $6597: $aa
    ld b, e                                       ; $6598: $43
    ret nz                                        ; $6599: $c0

    db $ed                                        ; $659a: $ed
    inc b                                         ; $659b: $04
    push bc                                       ; $659c: $c5
    ldh a, [$e7]                                  ; $659d: $f0 $e7
    add a                                         ; $659f: $87
    and d                                         ; $65a0: $a2
    add e                                         ; $65a1: $83
    db $e3                                        ; $65a2: $e3
    rra                                           ; $65a3: $1f
    ld c, e                                       ; $65a4: $4b
    ld c, e                                       ; $65a5: $4b
    ld c, d                                       ; $65a6: $4a
    ld c, d                                       ; $65a7: $4a
    ld a, [bc]                                    ; $65a8: $0a
    add c                                         ; $65a9: $81
    jp nz, $c1be                                  ; $65aa: $c2 $be $c1

    call nc, $80aa                                ; $65ad: $d4 $aa $80
    add [hl]                                      ; $65b0: $86
    ld b, d                                       ; $65b1: $42
    ret z                                         ; $65b2: $c8

    and e                                         ; $65b3: $a3
    ret                                           ; $65b4: $c9


    and b                                         ; $65b5: $a0
    ld b, h                                       ; $65b6: $44
    ld b, c                                       ; $65b7: $41
    jp nz, $89a4                                  ; $65b8: $c2 $a4 $89

    ld h, e                                       ; $65bb: $63
    ld b, h                                       ; $65bc: $44
    ld [c], a                                     ; $65bd: $e2
    ld a, [bc]                                    ; $65be: $0a
    rrca                                          ; $65bf: $0f
    ld l, d                                       ; $65c0: $6a
    dec bc                                        ; $65c1: $0b
    dec hl                                        ; $65c2: $2b
    ld a, [bc]                                    ; $65c3: $0a
    ld b, c                                       ; $65c4: $41
    pop bc                                        ; $65c5: $c1
    rst $38                                       ; $65c6: $ff
    rst $20                                       ; $65c7: $e7
    ret nc                                        ; $65c8: $d0

    db $ed                                        ; $65c9: $ed
    dec c                                         ; $65ca: $0d
    ld b, b                                       ; $65cb: $40
    inc [hl]                                      ; $65cc: $34
    rst $00                                       ; $65cd: $c7
    and b                                         ; $65ce: $a0
    ld d, h                                       ; $65cf: $54
    ld h, b                                       ; $65d0: $60
    dec l                                         ; $65d1: $2d
    ld e, l                                       ; $65d2: $5d
    ret nz                                        ; $65d3: $c0

    dec l                                         ; $65d4: $2d
    ld l, l                                       ; $65d5: $6d
    ld l, h                                       ; $65d6: $6c
    and c                                         ; $65d7: $a1
    ld c, b                                       ; $65d8: $48
    and l                                         ; $65d9: $a5
    ld b, $45                                     ; $65da: $06 $45
    add b                                         ; $65dc: $80
    ld a, [bc]                                    ; $65dd: $0a
    ld a, [bc]                                    ; $65de: $0a
    call nz, $c5e1                                ; $65df: $c4 $e1 $c5
    add c                                         ; $65e2: $81
    ldh [$e4], a                                  ; $65e3: $e0 $e4
    ret nc                                        ; $65e5: $d0

    db $ed                                        ; $65e6: $ed
    rlca                                          ; $65e7: $07
    call nz, Call_067_7d08                        ; $65e8: $c4 $08 $7d
    and d                                         ; $65eb: $a2
    or e                                          ; $65ec: $b3
    and c                                         ; $65ed: $a1
    ld c, b                                       ; $65ee: $48
    add l                                         ; $65ef: $85
    dec hl                                        ; $65f0: $2b
    call z, Call_067_4661                         ; $65f1: $cc $61 $46
    ld h, d                                       ; $65f4: $62
    call nz, Call_000_3aa0                        ; $65f5: $c4 $a0 $3a
    ld b, c                                       ; $65f8: $41
    ld h, b                                       ; $65f9: $60
    ldh [$e4], a                                  ; $65fa: $e0 $e4
    ret nc                                        ; $65fc: $d0

    db $ed                                        ; $65fd: $ed
    dec sp                                        ; $65fe: $3b
    and e                                         ; $65ff: $a3
    inc a                                         ; $6600: $3c
    add b                                         ; $6601: $80
    or l                                          ; $6602: $b5
    ldh [$2e], a                                  ; $6603: $e0 $2e
    ld c, [hl]                                    ; $6605: $4e
    ret nz                                        ; $6606: $c0

    jp hl                                         ; $6607: $e9


    inc c                                         ; $6608: $0c
    call z, $0860                                 ; $6609: $cc $60 $08
    add b                                         ; $660c: $80
    dec hl                                        ; $660d: $2b
    dec hl                                        ; $660e: $2b
    or e                                          ; $660f: $b3
    and h                                         ; $6610: $a4
    ldh [$e4], a                                  ; $6611: $e0 $e4
    ret nc                                        ; $6613: $d0

    db $ed                                        ; $6614: $ed
    ret nz                                        ; $6615: $c0

    db $e4                                        ; $6616: $e4
    nop                                           ; $6617: $00
    ld b, h                                       ; $6618: $44
    pop hl                                        ; $6619: $e1
    or h                                          ; $661a: $b4
    nop                                           ; $661b: $00
    add h                                         ; $661c: $84
    call nz, $8448                                ; $661d: $c4 $48 $84
    jp $05a0                                      ; $6620: $c3 $a0 $05


    ld b, c                                       ; $6623: $41
    rlca                                          ; $6624: $07
    ld h, c                                       ; $6625: $61
    ldh [$e6], a                                  ; $6626: $e0 $e6
    ld [$ecd0], sp                                ; $6628: $08 $d0 $ec
    ld l, e                                       ; $662b: $6b
    and b                                         ; $662c: $a0
    cp e                                          ; $662d: $bb
    add h                                         ; $662e: $84
    ld c, $60                                     ; $662f: $0e $60
    and c                                         ; $6631: $a1
    add l                                         ; $6632: $85
    jp $c802                                      ; $6633: $c3 $02 $c8


    ld [bc], a                                    ; $6636: $02
    db $e3                                        ; $6637: $e3
    nop                                           ; $6638: $00
    res 0, c                                      ; $6639: $cb $81
    ldh [$e4], a                                  ; $663b: $e0 $e4
    ret nc                                        ; $663d: $d0

    db $ed                                        ; $663e: $ed
    add d                                         ; $663f: $82
    jp $a121                                      ; $6640: $c3 $21 $a1


    ret nz                                        ; $6643: $c0

    ldh a, [$c9]                                  ; $6644: $f0 $c9
    ld b, c                                       ; $6646: $41
    jp Jump_000_0083                              ; $6647: $c3 $83 $00


    ldh [$e6], a                                  ; $664a: $e0 $e6
    ret nc                                        ; $664c: $d0

    db $ec                                        ; $664d: $ec
    jr nc, jr_067_665d                            ; $664e: $30 $0d

    ld [$8866], sp                                ; $6650: $08 $66 $88
    ld h, b                                       ; $6653: $60
    rlca                                          ; $6654: $07
    ld h, b                                       ; $6655: $60
    adc c                                         ; $6656: $89
    ld b, b                                       ; $6657: $40
    ld b, b                                       ; $6658: $40
    and c                                         ; $6659: $a1
    ld b, b                                       ; $665a: $40
    sbc $e7                                       ; $665b: $de $e7

jr_067_665d:
    ret nc                                        ; $665d: $d0

    db $ed                                        ; $665e: $ed
    jr nc, jr_067_666b                            ; $665f: $30 $0a

    db $fc                                        ; $6661: $fc
    inc hl                                        ; $6662: $23
    ret nz                                        ; $6663: $c0

    jp hl                                         ; $6664: $e9


    ld [bc], a                                    ; $6665: $02
    and b                                         ; $6666: $a0
    dec hl                                        ; $6667: $2b
    ld [hl], h                                    ; $6668: $74
    add b                                         ; $6669: $80
    ld [bc], a                                    ; $666a: $02

jr_067_666b:
    ld b, b                                       ; $666b: $40
    ld b, $0e                                     ; $666c: $06 $0e
    ret nc                                        ; $666e: $d0

    ld [$a12f], a                                 ; $666f: $ea $2f $a1
    jr nc, jr_067_667c                            ; $6672: $30 $08

    db $fc                                        ; $6674: $fc
    dec h                                         ; $6675: $25
    ld [$c966], sp                                ; $6676: $08 $66 $c9
    jr nz, jr_067_667c                            ; $6679: $20 $01

    dec l                                         ; $667b: $2d

jr_067_667c:
    dec [hl]                                      ; $667c: $35
    add c                                         ; $667d: $81
    rst $10                                       ; $667e: $d7
    inc hl                                        ; $667f: $23
    ld b, b                                       ; $6680: $40
    inc bc                                        ; $6681: $03
    ret nc                                        ; $6682: $d0

    add sp, $30                                   ; $6683: $e8 $30
    dec c                                         ; $6685: $0d
    db $fc                                        ; $6686: $fc
    ld h, $c7                                     ; $6687: $26 $c7
    ld b, c                                       ; $6689: $41
    ld bc, $846b                                  ; $668a: $01 $6b $84
    ldh [$c1], a                                  ; $668d: $e0 $c1
    jp nz, Jump_000_21c9                          ; $668f: $c2 $c9 $21

    call c, $d020                                 ; $6692: $dc $20 $d0
    ldh a, [$30]                                  ; $6695: $f0 $30
    dec c                                         ; $6697: $0d
    db $fc                                        ; $6698: $fc
    inc h                                         ; $6699: $24
    nop                                           ; $669a: $00
    dec b                                         ; $669b: $05
    ld h, b                                       ; $669c: $60
    cp a                                          ; $669d: $bf
    rst $20                                       ; $669e: $e7
    inc b                                         ; $669f: $04
    add d                                         ; $66a0: $82
    db $ec                                        ; $66a1: $ec
    ld hl, $e0e0                                  ; $66a2: $21 $e0 $e0
    ret nc                                        ; $66a5: $d0

    db $ed                                        ; $66a6: $ed
    jr nc, jr_067_66b6                            ; $66a7: $30 $0d

    ret nz                                        ; $66a9: $c0

    rst $20                                       ; $66aa: $e7
    nop                                           ; $66ab: $00
    ld a, [hl]                                    ; $66ac: $7e
    jp hl                                         ; $66ad: $e9


    add b                                         ; $66ae: $80
    db $e4                                        ; $66af: $e4
    ldh [$e0], a                                  ; $66b0: $e0 $e0
    ret nc                                        ; $66b2: $d0

    db $ed                                        ; $66b3: $ed
    add b                                         ; $66b4: $80
    db $eb                                        ; $66b5: $eb

jr_067_66b6:
    db $fc                                        ; $66b6: $fc
    ld h, $d2                                     ; $66b7: $26 $d2
    call nz, Call_000_00c6                        ; $66b9: $c4 $c6 $00
    add b                                         ; $66bc: $80
    ld [$4421], sp                                ; $66bd: $08 $21 $44
    ld h, b                                       ; $66c0: $60
    call nc, $d006                                ; $66c1: $d4 $06 $d0
    db $ec                                        ; $66c4: $ec
    ldh a, [$ed]                                  ; $66c5: $f0 $ed
    ld a, d                                       ; $66c7: $7a
    inc b                                         ; $66c8: $04
    ld b, l                                       ; $66c9: $45
    ld b, l                                       ; $66ca: $45
    ld c, l                                       ; $66cb: $4d
    nop                                           ; $66cc: $00
    ret nz                                        ; $66cd: $c0

    ld [c], a                                     ; $66ce: $e2
    ret                                           ; $66cf: $c9


    ld [bc], a                                    ; $66d0: $02
    ret nc                                        ; $66d1: $d0

    push hl                                       ; $66d2: $e5
    ld b, b                                       ; $66d3: $40
    dec bc                                        ; $66d4: $0b
    ldh a, [$ed]                                  ; $66d5: $f0 $ed
    inc l                                         ; $66d7: $2c
    ld bc, $4305                                  ; $66d8: $01 $05 $43
    ld a, l                                       ; $66db: $7d
    add a                                         ; $66dc: $87
    nop                                           ; $66dd: $00

jr_067_66de:
    inc b                                         ; $66de: $04
    ld h, l                                       ; $66df: $65
    and b                                         ; $66e0: $a0
    push hl                                       ; $66e1: $e5
    sub b                                         ; $66e2: $90
    db $ed                                        ; $66e3: $ed
    jr nc, jr_067_66f3                            ; $66e4: $30 $0d

    inc b                                         ; $66e6: $04
    ld b, d                                       ; $66e7: $42
    jp nz, Jump_067_4544                          ; $66e8: $c2 $44 $45

    jr nz, @-$3a                                  ; $66eb: $20 $c4

    ld b, c                                       ; $66ed: $41
    ld bc, $884d                                  ; $66ee: $01 $4d $88
    inc bc                                        ; $66f1: $03
    ld e, h                                       ; $66f2: $5c

jr_067_66f3:
    push hl                                       ; $66f3: $e5
    ret nc                                        ; $66f4: $d0

    db $eb                                        ; $66f5: $eb
    jr nc, @+$0f                                  ; $66f6: $30 $0d

    ld b, h                                       ; $66f8: $44
    ld b, e                                       ; $66f9: $43
    dec a                                         ; $66fa: $3d
    add e                                         ; $66fb: $83
    jp nz, Jump_000_01a0                          ; $66fc: $c2 $a0 $01

    ld c, e                                       ; $66ff: $4b
    inc bc                                        ; $6700: $03
    ld h, c                                       ; $6701: $61
    rst $30                                       ; $6702: $f7
    ld bc, $a5e4                                  ; $6703: $01 $e4 $a5
    ret nc                                        ; $6706: $d0

    db $ed                                        ; $6707: $ed
    jr nc, @+$0f                                  ; $6708: $30 $0d

    inc b                                         ; $670a: $04
    ld b, d                                       ; $670b: $42
    ld a, h                                       ; $670c: $7c
    add h                                         ; $670d: $84
    ld b, c                                       ; $670e: $41
    ld c, e                                       ; $670f: $4b
    add a                                         ; $6710: $87
    ld [$a6e4], sp                                ; $6711: $08 $e4 $a6
    ret nc                                        ; $6714: $d0

    db $ec                                        ; $6715: $ec
    jr nc, jr_067_6725                            ; $6716: $30 $0d

    ld b, a                                       ; $6718: $47
    add hl, bc                                    ; $6719: $09
    ld l, e                                       ; $671a: $6b
    add a                                         ; $671b: $87
    ld [$5000], sp                                ; $671c: $08 $00 $50
    ld b, $d0                                     ; $671f: $06 $d0
    db $ec                                        ; $6721: $ec
    jr nc, jr_067_6731                            ; $6722: $30 $0d

    add [hl]                                      ; $6724: $86

jr_067_6725:
    ld bc, $e6c0                                  ; $6725: $01 $c0 $e6
    add c                                         ; $6728: $81
    db $e4                                        ; $6729: $e4
    ret nz                                        ; $672a: $c0

    ldh [$e0], a                                  ; $672b: $e0 $e0
    rst $20                                       ; $672d: $e7
    nop                                           ; $672e: $00
    ret nc                                        ; $672f: $d0

    db $ec                                        ; $6730: $ec

jr_067_6731:
    jr nc, @+$10                                  ; $6731: $30 $0e

    rlca                                          ; $6733: $07
    ld h, $3f                                     ; $6734: $26 $3f
    pop bc                                        ; $6736: $c1
    ld a, d                                       ; $6737: $7a
    inc h                                         ; $6738: $24
    add d                                         ; $6739: $82
    ld hl, $e5e0                                  ; $673a: $21 $e0 $e5
    ret nc                                        ; $673d: $d0

    db $ed                                        ; $673e: $ed

Jump_067_673f:
    nop                                           ; $673f: $00
    jr nc, jr_067_674e                            ; $6740: $30 $0c

    ld b, c                                       ; $6742: $41
    add sp, -$08                                  ; $6743: $e8 $f8
    rst $20                                       ; $6745: $e7
    add b                                         ; $6746: $80
    ldh [$e0], a                                  ; $6747: $e0 $e0
    and $d0                                       ; $6749: $e6 $d0
    db $ec                                        ; $674b: $ec
    jr nc, jr_067_675b                            ; $674c: $30 $0d

jr_067_674e:
    ld [hl-], a                                   ; $674e: $32
    ld [bc], a                                    ; $674f: $02
    nop                                           ; $6750: $00
    ret nz                                        ; $6751: $c0

    xor $e0                                       ; $6752: $ee $e0
    ld [$ead0], a                                 ; $6754: $ea $d0 $ea
    adc $e4                                       ; $6757: $ce $e4
    jr nc, jr_067_6761                            ; $6759: $30 $06

jr_067_675b:
    db $fc                                        ; $675b: $fc
    jr nz, jr_067_66de                            ; $675c: $20 $80

    ldh a, [$a8]                                  ; $675e: $f0 $a8
    and b                                         ; $6760: $a0

jr_067_6761:
    nop                                           ; $6761: $00
    ldh [$e7], a                                  ; $6762: $e0 $e7
    ret nc                                        ; $6764: $d0

    ld [$0540], a                                 ; $6765: $ea $40 $05
    jr nc, jr_067_6772                            ; $6768: $30 $08

    ret nz                                        ; $676a: $c0

    push af                                       ; $676b: $f5
    ldh [$e5], a                                  ; $676c: $e0 $e5
    ret nc                                        ; $676e: $d0

    db $ed                                        ; $676f: $ed
    jr nc, jr_067_6780                            ; $6770: $30 $0e

jr_067_6772:
    nop                                           ; $6772: $00
    add b                                         ; $6773: $80
    pop af                                        ; $6774: $f1
    ldh [$e8], a                                  ; $6775: $e0 $e8
    ret nc                                        ; $6777: $d0

    xor $30                                       ; $6778: $ee $30
    inc c                                         ; $677a: $0c
    ccf                                           ; $677b: $3f
    ld b, l                                       ; $677c: $45
    dec b                                         ; $677d: $05
    ld b, b                                       ; $677e: $40
    ld [hl], d                                    ; $677f: $72

jr_067_6780:
    ld b, h                                       ; $6780: $44
    ld c, h                                       ; $6781: $4c
    ld [hl+], a                                   ; $6782: $22
    ld [$f6d0], sp                                ; $6783: $08 $d0 $f6
    jr nc, jr_067_6795                            ; $6786: $30 $0d

    add d                                         ; $6788: $82
    ld [$412b], sp                                ; $6789: $08 $2b $41
    and c                                         ; $678c: $a1
    ret nz                                        ; $678d: $c0

    db $ed                                        ; $678e: $ed
    ret nc                                        ; $678f: $d0

    db $ed                                        ; $6790: $ed
    jr nc, @+$0d                                  ; $6791: $30 $0b

    ld [bc], a                                    ; $6793: $02
    ret nz                                        ; $6794: $c0

jr_067_6795:
    ld [$000b], a                                 ; $6795: $ea $0b $00
    ld h, b                                       ; $6798: $60
    add b                                         ; $6799: $80
    xor $40                                       ; $679a: $ee $40
    dec c                                         ; $679c: $0d
    jr nc, jr_067_67ac                            ; $679d: $30 $0d

    ret nz                                        ; $679f: $c0

    ld b, c                                       ; $67a0: $41
    ld b, d                                       ; $67a1: $42
    ld b, d                                       ; $67a2: $42
    inc bc                                        ; $67a3: $03
    dec bc                                        ; $67a4: $0b
    dec l                                         ; $67a5: $2d
    ld a, a                                       ; $67a6: $7f
    db $e4                                        ; $67a7: $e4
    ret nc                                        ; $67a8: $d0

    ei                                            ; $67a9: $fb
    jr nc, jr_067_67b6                            ; $67aa: $30 $0a

jr_067_67ac:
    dec a                                         ; $67ac: $3d
    ld bc, $407f                                  ; $67ad: $01 $7f $40
    add c                                         ; $67b0: $81
    push hl                                       ; $67b1: $e5
    ldh [$3f], a                                  ; $67b2: $e0 $3f
    ld [c], a                                     ; $67b4: $e2
    ret nc                                        ; $67b5: $d0

jr_067_67b6:
    ld sp, hl                                     ; $67b6: $f9
    add sp, -$5d                                  ; $67b7: $e8 $a3
    jr nc, jr_067_67c3                            ; $67b9: $30 $08

    and h                                         ; $67bb: $a4
    and d                                         ; $67bc: $a2
    dec l                                         ; $67bd: $2d
    ld c, l                                       ; $67be: $4d
    ld l, e                                       ; $67bf: $6b
    add b                                         ; $67c0: $80
    ld b, c                                       ; $67c1: $41
    db $e3                                        ; $67c2: $e3

jr_067_67c3:
    add b                                         ; $67c3: $80
    add c                                         ; $67c4: $81
    ld b, c                                       ; $67c5: $41
    ld b, d                                       ; $67c6: $42
    ldh [$e6], a                                  ; $67c7: $e0 $e6
    ret nc                                        ; $67c9: $d0

    db $ed                                        ; $67ca: $ed
    jr nc, @+$0f                                  ; $67cb: $30 $0d

    ld h, h                                       ; $67cd: $64
    and e                                         ; $67ce: $a3
    dec l                                         ; $67cf: $2d
    inc bc                                        ; $67d0: $03
    ld l, e                                       ; $67d1: $6b
    ld c, e                                       ; $67d2: $4b
    rst $38                                       ; $67d3: $ff
    pop hl                                        ; $67d4: $e1
    ld b, b                                       ; $67d5: $40
    ld hl, $4202                                  ; $67d6: $21 $02 $42
    ld bc, $e040                                  ; $67d9: $01 $40 $e0
    db $e4                                        ; $67dc: $e4
    ret nc                                        ; $67dd: $d0

    db $ed                                        ; $67de: $ed
    nop                                           ; $67df: $00

jr_067_67e0:
    jr nc, jr_067_67ef                            ; $67e0: $30 $0d

    inc h                                         ; $67e2: $24
    and e                                         ; $67e3: $a3
    adc h                                         ; $67e4: $8c
    ld h, b                                       ; $67e5: $60
    ld b, b                                       ; $67e6: $40
    pop bc                                        ; $67e7: $c1
    add d                                         ; $67e8: $82
    db $e3                                        ; $67e9: $e3
    rst $20                                       ; $67ea: $e7
    add d                                         ; $67eb: $82
    ldh [$e5], a                                  ; $67ec: $e0 $e5
    ret nc                                        ; $67ee: $d0

jr_067_67ef:
    db $ed                                        ; $67ef: $ed
    nop                                           ; $67f0: $00
    jr nc, jr_067_6800                            ; $67f1: $30 $0d

    di                                            ; $67f3: $f3

Call_067_67f4:
    dec b                                         ; $67f4: $05
    adc b                                         ; $67f5: $88
    nop                                           ; $67f6: $00
    db $fd                                        ; $67f7: $fd
    pop hl                                        ; $67f8: $e1
    ld b, l                                       ; $67f9: $45
    ld hl, $a047                                  ; $67fa: $21 $47 $a0
    add c                                         ; $67fd: $81

jr_067_67fe:
    jr nz, jr_067_67e0                            ; $67fe: $20 $e0

jr_067_6800:
    db $e4                                        ; $6800: $e4
    nop                                           ; $6801: $00
    ret nc                                        ; $6802: $d0

    db $ed                                        ; $6803: $ed
    jr nc, jr_067_6812                            ; $6804: $30 $0c

    ld d, h                                       ; $6806: $54
    dec h                                         ; $6807: $25
    and b                                         ; $6808: $a0
    ld bc, $45f0                                  ; $6809: $01 $f0 $45
    ld l, e                                       ; $680c: $6b
    ld b, d                                       ; $680d: $42
    ldh [$e5], a                                  ; $680e: $e0 $e5
    ret nc                                        ; $6810: $d0

    db $ec                                        ; $6811: $ec

jr_067_6812:
    nop                                           ; $6812: $00
    jr nc, jr_067_6823                            ; $6813: $30 $0e

    ret nz                                        ; $6815: $c0

    push hl                                       ; $6816: $e5
    ldh a, [$e0]                                  ; $6817: $f0 $e0
    ret nz                                        ; $6819: $c0

    and $41                                       ; $681a: $e6 $41
    jr nz, jr_067_67fe                            ; $681c: $20 $e0

    and $d0                                       ; $681e: $e6 $d0
    db $ed                                        ; $6820: $ed
    jr nc, jr_067_682f                            ; $6821: $30 $0c

jr_067_6823:
    nop                                           ; $6823: $00
    ret nz                                        ; $6824: $c0

    and $80                                       ; $6825: $e6 $80
    db $e4                                        ; $6827: $e4
    add sp, $04                                   ; $6828: $e8 $04
    ldh [$e7], a                                  ; $682a: $e0 $e7
    ret nc                                        ; $682c: $d0

    db $ec                                        ; $682d: $ec
    nop                                           ; $682e: $00

jr_067_682f:
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    sbc a                                         ; $6831: $9f
    ret c                                         ; $6832: $d8

    push de                                       ; $6833: $d5
    push de                                       ; $6834: $d5
    ret c                                         ; $6835: $d8

    and b                                         ; $6836: $a0
    rst $38                                       ; $6837: $ff
    add sp, -$10                                  ; $6838: $e8 $f0
    and $d3                                       ; $683a: $e6 $d3
    sbc e                                         ; $683c: $9b
    ret nc                                        ; $683d: $d0

    db $d3                                        ; $683e: $d3
    add sp, -$19                                  ; $683f: $e8 $e7
    add sp, -$17                                  ; $6841: $e8 $e9
    ldh [$ee], a                                  ; $6843: $e0 $ee
    set 4, h                                      ; $6845: $cb $e4
    jp nc, $d637                                  ; $6847: $d2 $37 $d6

    call nc, $bdd6                                ; $684a: $d4 $d6 $bd
    ld [c], a                                     ; $684d: $e2
    sbc $df                                       ; $684e: $de $df
    jp nz, $f0e2                                  ; $6850: $c2 $e2 $f0

    and $87                                       ; $6853: $e6 $87
    rst $10                                       ; $6855: $d7
    call nc, $ecd7                                ; $6856: $d4 $d7 $ec
    db $e3                                        ; $6859: $e3
    and d                                         ; $685a: $a2
    db $e4                                        ; $685b: $e4
    ldh [$ed], a                                  ; $685c: $e0 $ed
    ret nc                                        ; $685e: $d0

    db $e4                                        ; $685f: $e4
    sub $df                                       ; $6860: $d6 $df
    jp nc, $d2d0                                  ; $6862: $d2 $d0 $d2

    call nc, $95d6                                ; $6865: $d4 $d6 $95
    ldh [$e0], a                                  ; $6868: $e0 $e0
    pop hl                                        ; $686a: $e1
    sbc h                                         ; $686b: $9c
    adc e                                         ; $686c: $8b
    ld [c], a                                     ; $686d: $e2
    ldh a, [$e6]                                  ; $686e: $f0 $e6
    jp c, $dad9                                   ; $6870: $da $d9 $da

    db $ec                                        ; $6873: $ec
    db $e3                                        ; $6874: $e3
    ld h, d                                       ; $6875: $62
    ldh [$ea], a                                  ; $6876: $e0 $ea
    ret c                                         ; $6878: $d8

    ld e, [hl]                                    ; $6879: $5e
    ldh [$e0], a                                  ; $687a: $e0 $e0
    db $ed                                        ; $687c: $ed
    ret nc                                        ; $687d: $d0

    db $e4                                        ; $687e: $e4
    rst $10                                       ; $687f: $d7
    call nc, $e0bf                                ; $6880: $d4 $bf $e0
    rst $10                                       ; $6883: $d7
    jp nc, $d8ef                                  ; $6884: $d2 $ef $d8

    and b                                         ; $6887: $a0
    ld [c], a                                     ; $6888: $e2
    db $e3                                        ; $6889: $e3
    ldh a, [$eb]                                  ; $688a: $f0 $eb
    call c, $dcdb                                 ; $688c: $dc $db $dc
    ld l, $ec                                     ; $688f: $2e $ec
    ld [c], a                                     ; $6891: $e2
    sbc a                                         ; $6892: $9f
    and d                                         ; $6893: $a2
    sbc l                                         ; $6894: $9d
    rst $38                                       ; $6895: $ff
    pop hl                                        ; $6896: $e1
    sbc a                                         ; $6897: $9f
    ldh [$ed], a                                  ; $6898: $e0 $ed
    ret nc                                        ; $689a: $d0

    db $e4                                        ; $689b: $e4
    xor e                                         ; $689c: $ab
    db $dd                                        ; $689d: $dd
    reti                                          ; $689e: $d9


    ld d, a                                       ; $689f: $57
    ldh [$dd], a                                  ; $68a0: $e0 $dd
    inc d                                         ; $68a2: $14
    ld [c], a                                     ; $68a3: $e2
    db $eb                                        ; $68a4: $eb
    ld c, e                                       ; $68a5: $4b
    ldh [$d2], a                                  ; $68a6: $e0 $d2
    ld l, h                                       ; $68a8: $6c
    ldh a, [$eb]                                  ; $68a9: $f0 $eb
    pop bc                                        ; $68ab: $c1
    ldh [$b6], a                                  ; $68ac: $e0 $b6
    sub b                                         ; $68ae: $90
    rst $38                                       ; $68af: $ff
    ld [c], a                                     ; $68b0: $e2
    or [hl]                                       ; $68b1: $b6
    sbc a                                         ; $68b2: $9f
    ldh [$f1], a                                  ; $68b3: $e0 $f1
    or a                                          ; $68b5: $b7
    rst $10                                       ; $68b6: $d7
    jp nc, $bed0                                  ; $68b7: $d2 $d0 $be

    ldh [$dd], a                                  ; $68ba: $e0 $dd
    pop de                                        ; $68bc: $d1
    call nc, $ecc1                                ; $68bd: $d4 $c1 $ec
    push hl                                       ; $68c0: $e5
    db $ed                                        ; $68c1: $ed
    ld c, e                                       ; $68c2: $4b
    ldh [$d3], a                                  ; $68c3: $e0 $d3
    ldh a, [$eb]                                  ; $68c5: $f0 $eb
    pop bc                                        ; $68c7: $c1
    ld [c], a                                     ; $68c8: $e2
    sub c                                         ; $68c9: $91
    xor [hl]                                      ; $68ca: $ae
    xor [hl]                                      ; $68cb: $ae
    ld [hl], e                                    ; $68cc: $73
    ld b, [hl]                                    ; $68cd: $46
    sub c                                         ; $68ce: $91
    cp a                                          ; $68cf: $bf
    ldh [$e0], a                                  ; $68d0: $e0 $e0
    ldh a, [$da]                                  ; $68d2: $f0 $da
    db $d3                                        ; $68d4: $d3
    call nc, $e040                                ; $68d5: $d4 $40 $e0
    sbc d                                         ; $68d8: $9a
    cp $c0                                        ; $68d9: $fe $c0
    rst $10                                       ; $68db: $d7
    ld a, h                                       ; $68dc: $7c
    jp $d7dc                                      ; $68dd: $c3 $dc $d7


    ldh a, [$eb]                                  ; $68e0: $f0 $eb
    pop bc                                        ; $68e2: $c1
    db $e3                                        ; $68e3: $e3
    xor a                                         ; $68e4: $af
    db $eb                                        ; $68e5: $eb
    xor a                                         ; $68e6: $af
    ld b, [hl]                                    ; $68e7: $46
    cp a                                          ; $68e8: $bf
    ldh [$9e], a                                  ; $68e9: $e0 $9e
    ldh [$f0], a                                  ; $68eb: $e0 $f0
    call c, $d9d7                                 ; $68ed: $dc $d7 $d9
    ld h, $40                                     ; $68f0: $26 $40
    ldh [$d4], a                                  ; $68f2: $e0 $d4
    rst $10                                       ; $68f4: $d7
    call nc, Call_000_3bc0                        ; $68f5: $d4 $c0 $3b
    jp $f0da                                      ; $68f8: $c3 $da $f0


    ld [$e282], a                                 ; $68fb: $ea $82 $e2
    rst $38                                       ; $68fe: $ff
    ld b, [hl]                                    ; $68ff: $46
    xor a                                         ; $6900: $af
    ld c, b                                       ; $6901: $48
    ld c, [hl]                                    ; $6902: $4e
    ld c, b                                       ; $6903: $48
    ld b, l                                       ; $6904: $45
    xor [hl]                                      ; $6905: $ae
    sub c                                         ; $6906: $91
    ld e, b                                       ; $6907: $58
    ld a, $e0                                     ; $6908: $3e $e0
    ldh [$ed], a                                  ; $690a: $e0 $ed
    sbc d                                         ; $690c: $9a
    ret nz                                        ; $690d: $c0

    db $db                                        ; $690e: $db
    db $db                                        ; $690f: $db
    call $dae0                                    ; $6910: $cd $e0 $da
    call nc, $f8c0                                ; $6913: $d4 $c0 $f8
    ld a, a                                       ; $6916: $7f
    db $e4                                        ; $6917: $e4
    ldh a, [$e9]                                  ; $6918: $f0 $e9
    inc b                                         ; $691a: $04
    ld [c], a                                     ; $691b: $e2
    ld b, [hl]                                    ; $691c: $46
    ld b, [hl]                                    ; $691d: $46
    ld d, c                                       ; $691e: $51
    ld e, [hl]                                    ; $691f: $5e
    ld d, h                                       ; $6920: $54
    rrca                                          ; $6921: $0f
    ld e, c                                       ; $6922: $59
    ld b, l                                       ; $6923: $45
    xor a                                         ; $6924: $af
    ld b, [hl]                                    ; $6925: $46
    db $fd                                        ; $6926: $fd
    pop bc                                        ; $6927: $c1
    ldh [$eb], a                                  ; $6928: $e0 $eb
    ld c, a                                       ; $692a: $4f
    pop hl                                        ; $692b: $e1
    call $b2e2                                    ; $692c: $cd $e2 $b2
    jp nz, $d8e1                                  ; $692f: $c2 $e1 $d8

    cp b                                          ; $6932: $b8
    and l                                         ; $6933: $a5
    ldh a, [$e4]                                  ; $6934: $f0 $e4
    sbc $df                                       ; $6936: $de $df
    push bc                                       ; $6938: $c5

jr_067_6939:
    pop bc                                        ; $6939: $c1
    jp $c0fe                                      ; $693a: $c3 $fe $c0


    ldh [rLYC], a                                 ; $693d: $e0 $45
    ld e, e                                       ; $693f: $5b

Call_067_6940:
    ld a, [hl+]                                   ; $6940: $2a
    cpl                                           ; $6941: $2f

Jump_067_6942:
    ld a, [hl+]                                   ; $6942: $2a
    ld b, l                                       ; $6943: $45
    sub c                                         ; $6944: $91
    rst $00                                       ; $6945: $c7
    sub b                                         ; $6946: $90
    sub b                                         ; $6947: $90
    and c                                         ; $6948: $a1
    ldh [$e9], a                                  ; $6949: $e0 $e9
    ret nc                                        ; $694b: $d0

    and $82                                       ; $694c: $e6 $82
    and c                                         ; $694e: $a1
    db $e4                                        ; $694f: $e4
    push hl                                       ; $6950: $e5
    ld e, c                                       ; $6951: $59
    ret c                                         ; $6952: $d8

    ld hl, sp-$60                                 ; $6953: $f8 $a0
    halt                                          ; $6955: $76
    and a                                         ; $6956: $a7

jr_067_6957:
    db $e4                                        ; $6957: $e4
    push hl                                       ; $6958: $e5
    ldh a, [$a0]                                  ; $6959: $f0 $a0
    sbc [hl]                                      ; $695b: $9e
    pop bc                                        ; $695c: $c1
    ldh [rIE], a                                  ; $695d: $e0 $ff
    call nz, $9190                                ; $695f: $c4 $90 $91
    ld b, l                                       ; $6962: $45
    ld b, a                                       ; $6963: $47
    ld d, l                                       ; $6964: $55
    jr nz, jr_067_6987                            ; $6965: $20 $20

    rrca                                          ; $6967: $0f
    ld a, [hl+]                                   ; $6968: $2a
    ld b, l                                       ; $6969: $45
    jp $fe90                                      ; $696a: $c3 $90 $fe


    ret nz                                        ; $696d: $c0

    rst $30                                       ; $696e: $f7
    and c                                         ; $696f: $a1
    ret nc                                        ; $6970: $d0

    db $ec                                        ; $6971: $ec
    adc b                                         ; $6972: $88
    ld [c], a                                     ; $6973: $e2
    dec de                                        ; $6974: $1b
    and $e7                                       ; $6975: $e6 $e7
    halt                                          ; $6977: $76

jr_067_6978:
    ret nz                                        ; $6978: $c0

    pop de                                        ; $6979: $d1

jr_067_697a:
    ret nc                                        ; $697a: $d0

    ld sp, hl                                     ; $697b: $f9
    and b                                         ; $697c: $a0
    ldh a, [$e5]                                  ; $697d: $f0 $e5
    ldh a, [$a0]                                  ; $697f: $f0 $a0
    ld a, [$e0c0]                                 ; $6981: $fa $c0 $e0
    call nz, $c043                                ; $6984: $c4 $43 $c0

jr_067_6987:
    ld b, l                                       ; $6987: $45
    ld d, d                                       ; $6988: $52
    ld d, l                                       ; $6989: $55
    jr nc, jr_067_69bc                            ; $698a: $30 $30

    adc a                                         ; $698c: $8f
    ld b, d                                       ; $698d: $42
    ld b, [hl]                                    ; $698e: $46
    call nz, $bec3                                ; $698f: $c4 $c3 $be
    jp nz, $eed0                                  ; $6992: $c2 $d0 $ee

    jr jr_067_6939                                ; $6995: $18 $a2

    add sp, -$7d                                  ; $6997: $e8 $83
    jp hl                                         ; $6999: $e9


    jp c, $a3b7                                   ; $699a: $da $b7 $a3

    ldh a, [$e6]                                  ; $699d: $f0 $e6
    db $ec                                        ; $699f: $ec
    add b                                         ; $69a0: $80
    add b                                         ; $69a1: $80
    pop hl                                        ; $69a2: $e1
    inc bc                                        ; $69a3: $03
    ret nz                                        ; $69a4: $c0

    xor [hl]                                      ; $69a5: $ae
    ccf                                           ; $69a6: $3f
    xor [hl]                                      ; $69a7: $ae
    ld [hl], $21                                  ; $69a8: $36 $21
    ld a, [hl+]                                   ; $69aa: $2a
    ld b, l                                       ; $69ab: $45
    ld b, [hl]                                    ; $69ac: $46
    ld [hl], l                                    ; $69ad: $75
    ldh [$c0], a                                  ; $69ae: $e0 $c0
    ld [c], a                                     ; $69b0: $e2
    ld [$edd0], sp                                ; $69b1: $08 $d0 $ed
    jr jr_067_6957                                ; $69b4: $18 $a1

    ld b, [hl]                                    ; $69b6: $46
    pop bc                                        ; $69b7: $c1
    jp c, $a1b7                                   ; $69b8: $da $b7 $a1

    ld a, c                                       ; $69bb: $79

jr_067_69bc:
    ret nz                                        ; $69bc: $c0

    ldh a, [$e4]                                  ; $69bd: $f0 $e4
    xor h                                         ; $69bf: $ac
    add b                                         ; $69c0: $80
    db $fd                                        ; $69c1: $fd
    and c                                         ; $69c2: $a1
    add b                                         ; $69c3: $80
    ld [c], a                                     ; $69c4: $e2
    sub c                                         ; $69c5: $91
    xor a                                         ; $69c6: $af
    xor a                                         ; $69c7: $af
    inc a                                         ; $69c8: $3c
    inc a                                         ; $69c9: $3c
    ld b, h                                       ; $69ca: $44
    dec c                                         ; $69cb: $0d
    sub c                                         ; $69cc: $91
    ld [hl], $e0                                  ; $69cd: $36 $e0
    sub b                                         ; $69cf: $90
    sbc [hl]                                      ; $69d0: $9e
    call c, $d081                                 ; $69d1: $dc $81 $d0
    db $ed                                        ; $69d4: $ed
    jr jr_067_6978                                ; $69d5: $18 $a1

    jr nz, jr_067_697a                            ; $69d7: $20 $a1

    push bc                                       ; $69d9: $c5
    call c, $c077                                 ; $69da: $dc $77 $c0
    jp c, $c079                                   ; $69dd: $da $79 $c0

    ldh a, [$e5]                                  ; $69e0: $f0 $e5
    add l                                         ; $69e2: $85
    and l                                         ; $69e3: $a5
    ld b, l                                       ; $69e4: $45
    scf                                           ; $69e5: $37
    cpl                                           ; $69e6: $2f
    jr c, @+$37                                   ; $69e7: $38 $35

    ld [hl], $45                                  ; $69e9: $36 $45
    ld [hl], $e2                                  ; $69eb: $36 $e2
    sbc [hl]                                      ; $69ed: $9e
    call c, $d081                                 ; $69ee: $dc $81 $d0
    db $ed                                        ; $69f1: $ed
    ldh [rNR23], a                                ; $69f2: $e0 $18
    and c                                         ; $69f4: $a1
    ld b, h                                       ; $69f5: $44
    push bc                                       ; $69f6: $c5
    ld a, [hl-]                                   ; $69f7: $3a
    pop bc                                        ; $69f8: $c1
    ldh a, [$e7]                                  ; $69f9: $f0 $e7
    ccf                                           ; $69fb: $3f
    pop hl                                        ; $69fc: $e1
    sub b                                         ; $69fd: $90
    sub b                                         ; $69fe: $90
    ld b, h                                       ; $69ff: $44
    rrca                                          ; $6a00: $0f
    inc a                                         ; $6a01: $3c
    dec [hl]                                      ; $6a02: $35
    ld [hl], $ae                                  ; $6a03: $36 $ae
    add e                                         ; $6a05: $83
    ret nz                                        ; $6a06: $c0

    dec a                                         ; $6a07: $3d
    and c                                         ; $6a08: $a1
    call c, $d081                                 ; $6a09: $dc $81 $d0
    db $ed                                        ; $6a0c: $ed
    ld a, h                                       ; $6a0d: $7c
    inc b                                         ; $6a0e: $04
    sub c                                         ; $6a0f: $91
    ret nz                                        ; $6a10: $c0

    jp hl                                         ; $6a11: $e9


    add hl, sp                                    ; $6a12: $39
    dec [hl]                                      ; $6a13: $35
    ld a, [hl-]                                   ; $6a14: $3a
    xor [hl]                                      ; $6a15: $ae
    xor a                                         ; $6a16: $af
    cp $84                                        ; $6a17: $fe $84
    nop                                           ; $6a19: $00
    rst $38                                       ; $6a1a: $ff
    db $ec                                        ; $6a1b: $ec
    call nz, $c261                                ; $6a1c: $c4 $61 $c2
    ld h, d                                       ; $6a1f: $62
    inc b                                         ; $6a20: $04
    add c                                         ; $6a21: $81
    or a                                          ; $6a22: $b7
    ld h, b                                       ; $6a23: $60
    push af                                       ; $6a24: $f5
    ld h, b                                       ; $6a25: $60
    inc a                                         ; $6a26: $3c
    jp $8308                                      ; $6a27: $c3 $08 $83


    ld e, $c5                                     ; $6a2a: $1e $c5
    add e                                         ; $6a2c: $83
    add hl, sp                                    ; $6a2d: $39
    dec sp                                        ; $6a2e: $3b
    add hl, sp                                    ; $6a2f: $39
    xor a                                         ; $6a30: $af
    add c                                         ; $6a31: $81
    pop hl                                        ; $6a32: $e1
    add c                                         ; $6a33: $81
    and c                                         ; $6a34: $a1
    call c, Call_067_58a5                         ; $6a35: $dc $a5 $58
    ret nc                                        ; $6a38: $d0

    add sp, -$66                                  ; $6a39: $e8 $9a
    ld h, d                                       ; $6a3b: $62
    inc b                                         ; $6a3c: $04
    add c                                         ; $6a3d: $81
    db $d3                                        ; $6a3e: $d3
    sub $36                                       ; $6a3f: $d6 $36
    add c                                         ; $6a41: $81
    sub $f0                                       ; $6a42: $d6 $f0
    and $be                                       ; $6a44: $e6 $be
    add [hl]                                      ; $6a46: $86
    add h                                         ; $6a47: $84
    sub c                                         ; $6a48: $91
    ld c, b                                       ; $6a49: $48
    ld c, [hl]                                    ; $6a4a: $4e
    ld c, c                                       ; $6a4b: $49
    ld d, d                                       ; $6a4c: $52
    jp nz, $9d80                                  ; $6a4d: $c2 $80 $9d

    db $10                                        ; $6a50: $10
    pop bc                                        ; $6a51: $c1
    pop hl                                        ; $6a52: $e1
    call c, $d0a5                                 ; $6a53: $dc $a5 $d0
    db $ed                                        ; $6a56: $ed
    inc b                                         ; $6a57: $04
    add b                                         ; $6a58: $80
    ret c                                         ; $6a59: $d8

    ei                                            ; $6a5a: $fb
    ld h, b                                       ; $6a5b: $60
    cp b                                          ; $6a5c: $b8
    add c                                         ; $6a5d: $81
    ldh a, [$e5]                                  ; $6a5e: $f0 $e5
    ei                                            ; $6a60: $fb
    sbc a                                         ; $6a61: $9f
    sbc l                                         ; $6a62: $9d
    inc b                                         ; $6a63: $04
    and d                                         ; $6a64: $a2
    ld b, [hl]                                    ; $6a65: $46
    ld b, [hl]                                    ; $6a66: $46
    ld d, e                                       ; $6a67: $53
    ld d, h                                       ; $6a68: $54
    ld d, a                                       ; $6a69: $57
    nop                                           ; $6a6a: $00
    ret nz                                        ; $6a6b: $c0

    ldh [$85], a                                  ; $6a6c: $e0 $85
    and d                                         ; $6a6e: $a2
    call c, $d0a6                                 ; $6a6f: $dc $a6 $d0
    add sp, $0d                                   ; $6a72: $e8 $0d
    pop bc                                        ; $6a74: $c1
    rla                                           ; $6a75: $17
    add c                                         ; $6a76: $81
    or $60                                        ; $6a77: $f6 $60
    ld c, [hl]                                    ; $6a79: $4e
    ld h, b                                       ; $6a7a: $60
    db $e3                                        ; $6a7b: $e3
    reti                                          ; $6a7c: $d9


    db $dd                                        ; $6a7d: $dd
    ldh a, [$e4]                                  ; $6a7e: $f0 $e4
    add hl, bc                                    ; $6a80: $09
    add d                                         ; $6a81: $82
    ld b, a                                       ; $6a82: $47
    add b                                         ; $6a83: $80
    xor [hl]                                      ; $6a84: $ae
    ld b, l                                       ; $6a85: $45
    scf                                           ; $6a86: $37
    add a                                         ; $6a87: $87
    scf                                           ; $6a88: $37
    ld b, e                                       ; $6a89: $43
    ld b, l                                       ; $6a8a: $45
    add l                                         ; $6a8b: $85
    and c                                         ; $6a8c: $a1
    and e                                         ; $6a8d: $a3
    add c                                         ; $6a8e: $81
    call c, $d0a4                                 ; $6a8f: $dc $a4 $d0
    jp hl                                         ; $6a92: $e9


    db $d3                                        ; $6a93: $d3
    db $dd                                        ; $6a94: $dd
    jp c, $8317                                   ; $6a95: $da $17 $83

    db $d3                                        ; $6a98: $d3
    ret nc                                        ; $6a99: $d0

    pop de                                        ; $6a9a: $d1
    rst $30                                       ; $6a9b: $f7
    ld h, b                                       ; $6a9c: $60
    ret nc                                        ; $6a9d: $d0

    ret nc                                        ; $6a9e: $d0

    db $fc                                        ; $6a9f: $fc
    ldh a, [$e3]                                  ; $6aa0: $f0 $e3
    pop bc                                        ; $6aa2: $c1
    db $e3                                        ; $6aa3: $e3
    ld b, [hl]                                    ; $6aa4: $46
    xor a                                         ; $6aa5: $af
    xor a                                         ; $6aa6: $af
    xor a                                         ; $6aa7: $af
    ld [hl], $62                                  ; $6aa8: $36 $62
    add a                                         ; $6aaa: $87
    ld h, e                                       ; $6aab: $63
    ld a, h                                       ; $6aac: $7c
    ld a, l                                       ; $6aad: $7d
    ld b, e                                       ; $6aae: $43
    add c                                         ; $6aaf: $81
    ldh [rLCDC], a                                ; $6ab0: $e0 $40
    call c, $d0a4                                 ; $6ab2: $dc $a4 $d0
    ld [$c8d7], a                                 ; $6ab5: $ea $d7 $c8
    add [hl]                                      ; $6ab8: $86
    add h                                         ; $6ab9: $84
    jr c, jr_067_6b1d                             ; $6aba: $38 $61

    or $40                                        ; $6abc: $f6 $40
    call nc, $e2f0                                ; $6abe: $d4 $f0 $e2
    add d                                         ; $6ac1: $82
    db $e3                                        ; $6ac2: $e3
    ld b, l                                       ; $6ac3: $45
    scf                                           ; $6ac4: $37
    rst $38                                       ; $6ac5: $ff
    dec a                                         ; $6ac6: $3d
    dec a                                         ; $6ac7: $3d
    jr c, jr_067_6b2c                             ; $6ac8: $38 $62

    ld h, a                                       ; $6aca: $67
    ld [hl], $43                                  ; $6acb: $36 $43
    ld a, a                                       ; $6acd: $7f
    ld bc, $037d                                  ; $6ace: $01 $7d $03
    add b                                         ; $6ad1: $80
    ldh [rSTAT], a                                ; $6ad2: $e0 $41
    call c, $d0a5                                 ; $6ad4: $dc $a5 $d0
    add sp, $07                                   ; $6ad7: $e8 $07
    add a                                         ; $6ad9: $87
    ld hl, sp+$62                                 ; $6ada: $f8 $62
    rst $30                                       ; $6adc: $f7
    ld h, e                                       ; $6add: $63
    xor $86                                       ; $6ade: $ee $86
    and b                                         ; $6ae0: $a0
    sub b                                         ; $6ae1: $90
    xor [hl]                                      ; $6ae2: $ae
    ld b, l                                       ; $6ae3: $45
    add l                                         ; $6ae4: $85
    ldh [$64], a                                  ; $6ae5: $e0 $64
    ld h, h                                       ; $6ae7: $64
    ld a, b                                       ; $6ae8: $78
    dec b                                         ; $6ae9: $05
    ld a, [hl-]                                   ; $6aea: $3a
    ret nz                                        ; $6aeb: $c0

    add b                                         ; $6aec: $80
    add c                                         ; $6aed: $81
    jp $e060                                      ; $6aee: $c3 $60 $e0


    ld b, d                                       ; $6af1: $42
    jp nc, $d0a7                                  ; $6af2: $d2 $a7 $d0

    push hl                                       ; $6af5: $e5
    rlca                                          ; $6af6: $07
    add a                                         ; $6af7: $87
    ldh a, [$f8]                                  ; $6af8: $f0 $f8
    ld h, d                                       ; $6afa: $62
    rst $30                                       ; $6afb: $f7
    ld h, e                                       ; $6afc: $63
    add [hl]                                      ; $6afd: $86
    add c                                         ; $6afe: $81
    ld b, [hl]                                    ; $6aff: $46

Call_067_6b00:
    ldh [$67], a                                  ; $6b00: $e0 $67
    dec [hl]                                      ; $6b02: $35
    dec [hl]                                      ; $6b03: $35
    jr c, jr_067_6b15                             ; $6b04: $38 $0f

    jr c, jr_067_6b41                             ; $6b06: $38 $39

    ld d, c                                       ; $6b08: $51
    ld e, [hl]                                    ; $6b09: $5e
    ret nz                                        ; $6b0a: $c0

    ld [c], a                                     ; $6b0b: $e2
    inc bc                                        ; $6b0c: $03
    call z, $e5d0                                 ; $6b0d: $cc $d0 $e5
    xor l                                         ; $6b10: $ad
    add [hl]                                      ; $6b11: $86
    db $ec                                        ; $6b12: $ec
    ld hl, sp+$65                                 ; $6b13: $f8 $65

jr_067_6b15:
    call z, $c444                                 ; $6b15: $cc $44 $c4
    ld b, h                                       ; $6b18: $44
    pop bc                                        ; $6b19: $c1
    pop hl                                        ; $6b1a: $e1
    ld [hl], $47                                  ; $6b1b: $36 $47

jr_067_6b1d:
    ld d, d                                       ; $6b1d: $52
    rra                                           ; $6b1e: $1f
    ld b, h                                       ; $6b1f: $44
    ld b, [hl]                                    ; $6b20: $46

Jump_067_6b21:
    ld e, e                                       ; $6b21: $5b
    add e                                         ; $6b22: $83
    add h                                         ; $6b23: $84
    ret nz                                        ; $6b24: $c0

    db $eb                                        ; $6b25: $eb
    ret nc                                        ; $6b26: $d0

    db $eb                                        ; $6b27: $eb
    call z, $f020                                 ; $6b28: $cc $20 $f0
    ld b, a                                       ; $6b2b: $47

jr_067_6b2c:
    add b                                         ; $6b2c: $80
    ld c, $80                                     ; $6b2d: $0e $80
    inc d                                         ; $6b2f: $14
    ld b, l                                       ; $6b30: $45
    adc l                                         ; $6b31: $8d
    ld b, d                                       ; $6b32: $42
    jp Jump_067_6942                              ; $6b33: $c3 $42 $69


    dec [hl]                                      ; $6b36: $35
    rst $38                                       ; $6b37: $ff
    jr c, jr_067_6b71                             ; $6b38: $38 $37

    ld c, d                                       ; $6b3a: $4a
    ld h, b                                       ; $6b3b: $60
    ld h, c                                       ; $6b3c: $61
    ld e, h                                       ; $6b3d: $5c
    xor [hl]                                      ; $6b3e: $ae
    add e                                         ; $6b3f: $83
    rrca                                          ; $6b40: $0f

jr_067_6b41:
    add [hl]                                      ; $6b41: $86
    add l                                         ; $6b42: $85
    sub b                                         ; $6b43: $90
    sbc [hl]                                      ; $6b44: $9e
    ldh [$e6], a                                  ; $6b45: $e0 $e6
    ret nc                                        ; $6b47: $d0

    db $ed                                        ; $6b48: $ed
    rst $00                                       ; $6b49: $c7
    ld h, b                                       ; $6b4a: $60
    rlca                                          ; $6b4b: $07
    add b                                         ; $6b4c: $80
    pop af                                        ; $6b4d: $f1
    rst $10                                       ; $6b4e: $d7
    ld c, $80                                     ; $6b4f: $0e $80
    ld a, l                                       ; $6b51: $7d
    ld h, l                                       ; $6b52: $65
    add hl, bc                                    ; $6b53: $09
    and d                                         ; $6b54: $a2
    call nz, Call_067_6940                        ; $6b55: $c4 $40 $69
    inc a                                         ; $6b58: $3c
    rst $38                                       ; $6b59: $ff
    ld b, h                                       ; $6b5a: $44
    xor [hl]                                      ; $6b5b: $ae
    ld c, d                                       ; $6b5c: $4a
    ld d, d                                       ; $6b5d: $52
    ld e, e                                       ; $6b5e: $5b
    ld b, l                                       ; $6b5f: $45
    xor a                                         ; $6b60: $af
    adc d                                         ; $6b61: $8a
    ld hl, $0485                                  ; $6b62: $21 $85 $04
    ld h, b                                       ; $6b65: $60
    ldh [$e6], a                                  ; $6b66: $e0 $e6
    ret nc                                        ; $6b68: $d0

    db $ed                                        ; $6b69: $ed
    ret                                           ; $6b6a: $c9


    and e                                         ; $6b6b: $a3
    jp c, $211e                                   ; $6b6c: $da $1e $21

    dec c                                         ; $6b6f: $0d
    inc h                                         ; $6b70: $24

jr_067_6b71:
    ld a, c                                       ; $6b71: $79
    sbc [hl]                                      ; $6b72: $9e
    add hl, bc                                    ; $6b73: $09
    add d                                         ; $6b74: $82
    add b                                         ; $6b75: $80
    ldh [$36], a                                  ; $6b76: $e0 $36
    xor a                                         ; $6b78: $af
    ld b, l                                       ; $6b79: $45
    ld b, l                                       ; $6b7a: $45
    cp [hl]                                       ; $6b7b: $be
    and b                                         ; $6b7c: $a0
    ld bc, $c581                                  ; $6b7d: $01 $81 $c5

Jump_067_6b80:
    ld b, c                                       ; $6b80: $41
    ldh [$e6], a                                  ; $6b81: $e0 $e6
    ret nc                                        ; $6b83: $d0

    db $ed                                        ; $6b84: $ed
    rst $00                                       ; $6b85: $c7
    ld h, b                                       ; $6b86: $60
    add c                                         ; $6b87: $81
    ld b, b                                       ; $6b88: $40
    ret nz                                        ; $6b89: $c0

    ld b, d                                       ; $6b8a: $42
    push af                                       ; $6b8b: $f5
    ld h, d                                       ; $6b8c: $62
    rst $28                                       ; $6b8d: $ef
    sbc $df                                       ; $6b8e: $de $df
    sbc [hl]                                      ; $6b90: $9e
    sub b                                         ; $6b91: $90
    sub h                                         ; $6b92: $94
    ld h, b                                       ; $6b93: $60
    sub b                                         ; $6b94: $90
    ld b, h                                       ; $6b95: $44
    ld l, c                                       ; $6b96: $69
    ld a, a                                       ; $6b97: $7f
    dec [hl]                                      ; $6b98: $35
    dec [hl]                                      ; $6b99: $35
    dec sp                                        ; $6b9a: $3b
    add hl, sp                                    ; $6b9b: $39
    ld b, [hl]                                    ; $6b9c: $46
    xor [hl]                                      ; $6b9d: $ae
    ld b, [hl]                                    ; $6b9e: $46
    ld [bc], a                                    ; $6b9f: $02
    rst $20                                       ; $6ba0: $e7
    db $10                                        ; $6ba1: $10
    push de                                       ; $6ba2: $d5
    ld h, d                                       ; $6ba3: $62
    ret nc                                        ; $6ba4: $d0

    db $ed                                        ; $6ba5: $ed
    rst $00                                       ; $6ba6: $c7
    ld h, b                                       ; $6ba7: $60
    add c                                         ; $6ba8: $81
    ld b, e                                       ; $6ba9: $43
    ld [$220d], a                                 ; $6baa: $ea $0d $22
    ld [$5363], sp                                ; $6bad: $08 $63 $53
    ld h, b                                       ; $6bb0: $60
    ld e, $c0                                     ; $6bb1: $1e $c0
    pop hl                                        ; $6bb3: $e1
    dec [hl]                                      ; $6bb4: $35
    ld a, [hl-]                                   ; $6bb5: $3a
    ld b, l                                       ; $6bb6: $45
    xor a                                         ; $6bb7: $af
    ld [bc], a                                    ; $6bb8: $02
    ld [c], a                                     ; $6bb9: $e2
    ei                                            ; $6bba: $fb
    inc bc                                        ; $6bbb: $03
    ldh [$e2], a                                  ; $6bbc: $e0 $e2
    ld h, b                                       ; $6bbe: $60
    ret nc                                        ; $6bbf: $d0

    db $ed                                        ; $6bc0: $ed
    rst $38                                       ; $6bc1: $ff
    ld l, l                                       ; $6bc2: $6d
    ld [$c862], sp                                ; $6bc3: $08 $62 $c8
    ld b, b                                       ; $6bc6: $40
    ret nz                                        ; $6bc7: $c0

    ret nz                                        ; $6bc8: $c0

    dec [hl]                                      ; $6bc9: $35
    dec [hl]                                      ; $6bca: $35
    db $fd                                        ; $6bcb: $fd
    ret nz                                        ; $6bcc: $c0

    rlca                                          ; $6bcd: $07
    adc d                                         ; $6bce: $8a

jr_067_6bcf:
    add l                                         ; $6bcf: $85
    xor [hl]                                      ; $6bd0: $ae
    ld b, d                                       ; $6bd1: $42
    push bc                                       ; $6bd2: $c5
    rst $18                                       ; $6bd3: $df
    ld l, l                                       ; $6bd4: $6d
    db $dd                                        ; $6bd5: $dd
    ld bc, $0d30                                  ; $6bd6: $01 $30 $0d
    ld [$de63], sp                                ; $6bd9: $08 $63 $de
    ret z                                         ; $6bdc: $c8

    ld b, b                                       ; $6bdd: $40
    ld b, b                                       ; $6bde: $40
    ld l, c                                       ; $6bdf: $69
    dec [hl]                                      ; $6be0: $35
    xor h                                         ; $6be1: $ac
    add b                                         ; $6be2: $80
    pop hl                                        ; $6be3: $e1
    add c                                         ; $6be4: $81
    ld b, [hl]                                    ; $6be5: $46
    add c                                         ; $6be6: $81
    xor a                                         ; $6be7: $af
    ld b, a                                       ; $6be8: $47
    ld b, h                                       ; $6be9: $44
    call c, Call_000_3072                         ; $6bea: $dc $72 $30
    ld a, [bc]                                    ; $6bed: $0a
    db $fc                                        ; $6bee: $fc
    inc hl                                        ; $6bef: $23
    add d                                         ; $6bf0: $82
    and c                                         ; $6bf1: $a1
    ret nz                                        ; $6bf2: $c0

    ret nz                                        ; $6bf3: $c0

    ld l, e                                       ; $6bf4: $6b
    cpl                                           ; $6bf5: $2f
    ld l, h                                       ; $6bf6: $6c

jr_067_6bf7:
    xor l                                         ; $6bf7: $ad
    dec [hl]                                      ; $6bf8: $35
    add hl, sp                                    ; $6bf9: $39
    jp nz, $46c0                                  ; $6bfa: $c2 $c0 $46

    add [hl]                                      ; $6bfd: $86
    inc hl                                        ; $6bfe: $23
    db $ec                                        ; $6bff: $ec
    ld h, d                                       ; $6c00: $62
    ret nz                                        ; $6c01: $c0

    inc d                                         ; $6c02: $14
    ret nz                                        ; $6c03: $c0

    ret nc                                        ; $6c04: $d0

    jp hl                                         ; $6c05: $e9


    add d                                         ; $6c06: $82
    ldh [$30], a                                  ; $6c07: $e0 $30
    add hl, bc                                    ; $6c09: $09
    db $fc                                        ; $6c0a: $fc
    inc h                                         ; $6c0b: $24
    adc l                                         ; $6c0c: $8d
    inc bc                                        ; $6c0d: $03
    ld b, h                                       ; $6c0e: $44
    ld l, [hl]                                    ; $6c0f: $6e
    sbc e                                         ; $6c10: $9b
    ld l, a                                       ; $6c11: $6f
    ld l, h                                       ; $6c12: $6c
    rlca                                          ; $6c13: $07
    ld h, b                                       ; $6c14: $60
    add e                                         ; $6c15: $83
    add h                                         ; $6c16: $84
    ld b, a                                       ; $6c17: $47
    inc hl                                        ; $6c18: $23
    db $ec                                        ; $6c19: $ec
    ld h, e                                       ; $6c1a: $63
    db $d3                                        ; $6c1b: $d3
    pop hl                                        ; $6c1c: $e1
    ret nc                                        ; $6c1d: $d0

    ret nc                                        ; $6c1e: $d0

    jp hl                                         ; $6c1f: $e9


    jr nc, jr_067_6c2f                            ; $6c20: $30 $0d

    db $fc                                        ; $6c22: $fc
    dec h                                         ; $6c23: $25
    ld c, h                                       ; $6c24: $4c
    ld [bc], a                                    ; $6c25: $02
    ld b, l                                       ; $6c26: $45
    ld [hl], $6e                                  ; $6c27: $36 $6e
    rra                                           ; $6c29: $1f
    ld [hl], b                                    ; $6c2a: $70
    ld [hl], c                                    ; $6c2b: $71
    ld [hl], c                                    ; $6c2c: $71
    adc b                                         ; $6c2d: $88
    add a                                         ; $6c2e: $87

jr_067_6c2f:
    jp nz, Jump_067_64c1                          ; $6c2f: $c2 $c1 $64

    ld hl, $a200                                  ; $6c32: $21 $00 $a2
    nop                                           ; $6c35: $00
    ret nc                                        ; $6c36: $d0

    db $eb                                        ; $6c37: $eb
    ld a, [hl-]                                   ; $6c38: $3a
    add d                                         ; $6c39: $82
    jr nc, jr_067_6c44                            ; $6c3a: $30 $08

    db $fc                                        ; $6c3c: $fc
    ld h, $3f                                     ; $6c3d: $26 $3f
    and c                                         ; $6c3f: $a1
    ret nz                                        ; $6c40: $c0

    add b                                         ; $6c41: $80
    ld a, a                                       ; $6c42: $7f
    ret nz                                        ; $6c43: $c0

jr_067_6c44:
    ccf                                           ; $6c44: $3f
    ret nz                                        ; $6c45: $c0

    jr jr_067_6bcf                                ; $6c46: $18 $87

    nop                                           ; $6c48: $00
    rst $20                                       ; $6c49: $e7
    and e                                         ; $6c4a: $a3
    add hl, bc                                    ; $6c4b: $09
    add b                                         ; $6c4c: $80
    rst $10                                       ; $6c4d: $d7
    jp nc, $e9d0                                  ; $6c4e: $d2 $d0 $e9

    di                                            ; $6c51: $f3
    and d                                         ; $6c52: $a2
    jr nc, jr_067_6c5d                            ; $6c53: $30 $08

    ld h, h                                       ; $6c55: $64
    db $fc                                        ; $6c56: $fc
    ld h, $45                                     ; $6c57: $26 $45
    ld b, c                                       ; $6c59: $41
    xor a                                         ; $6c5a: $af
    cp a                                          ; $6c5b: $bf
    ld [c], a                                     ; $6c5c: $e2

jr_067_6c5d:
    ccf                                           ; $6c5d: $3f
    ret nz                                        ; $6c5e: $c0

    jp $e79e                                      ; $6c5f: $c3 $9e $e7


    and e                                         ; $6c62: $a3
    add [hl]                                      ; $6c63: $86
    add hl, bc                                    ; $6c64: $09
    add c                                         ; $6c65: $81
    jp c, $d0d3                                   ; $6c66: $da $d3 $d0

    jp hl                                         ; $6c69: $e9


    ldh a, [$e1]                                  ; $6c6a: $f0 $e1
    jr nc, jr_067_6c78                            ; $6c6c: $30 $0a

    jr nz, jr_067_6bf7                            ; $6c6e: $20 $87

    sbc [hl]                                      ; $6c70: $9e
    ld a, [$20c8]                                 ; $6c71: $fa $c8 $20
    ld b, [hl]                                    ; $6c74: $46
    ld b, l                                       ; $6c75: $45
    ld b, b                                       ; $6c76: $40
    dec [hl]                                      ; $6c77: $35

jr_067_6c78:
    ld b, d                                       ; $6c78: $42
    sub c                                         ; $6c79: $91
    call nz, Call_000_009e                        ; $6c7a: $c4 $9e $00
    rla                                           ; $6c7d: $17
    call nz, $0191                                ; $6c7e: $c4 $91 $01
    inc hl                                        ; $6c81: $23
    nop                                           ; $6c82: $00
    ret nc                                        ; $6c83: $d0

    add sp, -$10                                  ; $6c84: $e8 $f0
    ldh [$30], a                                  ; $6c86: $e0 $30
    inc c                                         ; $6c88: $0c
    ld a, [c]                                     ; $6c89: $f2
    dec h                                         ; $6c8a: $25
    dec b                                         ; $6c8b: $05
    ld b, c                                       ; $6c8c: $41
    inc bc                                        ; $6c8d: $03
    sub c                                         ; $6c8e: $91

jr_067_6c8f:
    ld b, d                                       ; $6c8f: $42
    rst $38                                       ; $6c90: $ff
    and c                                         ; $6c91: $a1
    ret                                           ; $6c92: $c9


    ld bc, $27dc                                  ; $6c93: $01 $dc $27
    ld b, e                                       ; $6c96: $43
    nop                                           ; $6c97: $00
    ret nc                                        ; $6c98: $d0

    ld [$803e], a                                 ; $6c99: $ea $3e $80
    nop                                           ; $6c9c: $00
    jr nc, @+$0c                                  ; $6c9d: $30 $0a

    pop af                                        ; $6c9f: $f1
    inc h                                         ; $6ca0: $24
    ld a, l                                       ; $6ca1: $7d
    call nz, $e180                                ; $6ca2: $c4 $80 $e1
    inc b                                         ; $6ca5: $04
    ld h, h                                       ; $6ca6: $64
    call $d0a6                                    ; $6ca7: $cd $a6 $d0
    db $eb                                        ; $6caa: $eb
    ld a, a                                       ; $6cab: $7f
    ld [hl+], a                                   ; $6cac: $22
    db $10                                        ; $6cad: $10
    jr nc, jr_067_6cba                            ; $6cae: $30 $0a

    inc b                                         ; $6cb0: $04
    ld b, c                                       ; $6cb1: $41
    rst $38                                       ; $6cb2: $ff
    ld h, c                                       ; $6cb3: $61
    ld d, b                                       ; $6cb4: $50
    nop                                           ; $6cb5: $00
    add hl, sp                                    ; $6cb6: $39
    ccf                                           ; $6cb7: $3f
    and c                                         ; $6cb8: $a1
    rst $00                                       ; $6cb9: $c7

jr_067_6cba:
    dec h                                         ; $6cba: $25
    inc b                                         ; $6cbb: $04
    ld b, l                                       ; $6cbc: $45
    jr nz, jr_067_6c8f                            ; $6cbd: $20 $d0

    db $ed                                        ; $6cbf: $ed
    jr nc, @+$0f                                  ; $6cc0: $30 $0d

    inc b                                         ; $6cc2: $04
    ld b, b                                       ; $6cc3: $40
    rlca                                          ; $6cc4: $07
    ld [hl+], a                                   ; $6cc5: $22
    ret nc                                        ; $6cc6: $d0

    nop                                           ; $6cc7: $00
    ld a, $80                                     ; $6cc8: $3e $80
    pop bc                                        ; $6cca: $c1
    push bc                                       ; $6ccb: $c5
    ld [hl+], a                                   ; $6ccc: $22
    add b                                         ; $6ccd: $80
    ldh [$e8], a                                  ; $6cce: $e0 $e8
    ret nc                                        ; $6cd0: $d0

    db $ed                                        ; $6cd1: $ed
    jr nc, @+$0f                                  ; $6cd2: $30 $0d

    jr jr_067_6d36                                ; $6cd4: $18 $60

    ld [$7b22], sp                                ; $6cd6: $08 $22 $7b
    and b                                         ; $6cd9: $a0
    ret nz                                        ; $6cda: $c0

    ldh [rSCY], a                                 ; $6cdb: $e0 $42
    dec b                                         ; $6cdd: $05
    sub c                                         ; $6cde: $91
    dec a                                         ; $6cdf: $3d
    ld bc, $e0a1                                  ; $6ce0: $01 $a1 $e0
    add sp, -$30                                  ; $6ce3: $e8 $d0
    db $ed                                        ; $6ce5: $ed
    jr nc, jr_067_6cf5                            ; $6ce6: $30 $0d

    ret z                                         ; $6ce8: $c8

    dec b                                         ; $6ce9: $05
    dec b                                         ; $6cea: $05
    ld [hl+], a                                   ; $6ceb: $22
    inc b                                         ; $6cec: $04
    add a                                         ; $6ced: $87
    ld bc, $e0bf                                  ; $6cee: $01 $bf $e0
    sbc [hl]                                      ; $6cf1: $9e
    ldh [$e8], a                                  ; $6cf2: $e0 $e8
    ret nc                                        ; $6cf4: $d0

jr_067_6cf5:
    db $ed                                        ; $6cf5: $ed
    jr nc, jr_067_6d05                            ; $6cf6: $30 $0d

    add c                                         ; $6cf8: $81
    ld b, d                                       ; $6cf9: $42
    adc e                                         ; $6cfa: $8b
    pop hl                                        ; $6cfb: $e1
    ld c, $45                                     ; $6cfc: $0e $45
    nop                                           ; $6cfe: $00
    ld b, c                                       ; $6cff: $41
    ld b, l                                       ; $6d00: $45
    sub c                                         ; $6d01: $91
    ld [hl], l                                    ; $6d02: $75

Jump_067_6d03:
    add c                                         ; $6d03: $81
    ld b, b                                       ; $6d04: $40

Call_067_6d05:
jr_067_6d05:
    add c                                         ; $6d05: $81
    db $e4                                        ; $6d06: $e4
    and [hl]                                      ; $6d07: $a6
    ret nc                                        ; $6d08: $d0

    db $ed                                        ; $6d09: $ed
    nop                                           ; $6d0a: $00
    jr nc, jr_067_6d1a                            ; $6d0b: $30 $0d

    add e                                         ; $6d0d: $83
    pop bc                                        ; $6d0e: $c1
    call z, $bfe1                                 ; $6d0f: $cc $e1 $bf
    ld [hl+], a                                   ; $6d12: $22
    pop bc                                        ; $6d13: $c1
    db $e3                                        ; $6d14: $e3
    nop                                           ; $6d15: $00
    add d                                         ; $6d16: $82
    inc b                                         ; $6d17: $04
    ld b, l                                       ; $6d18: $45
    ret nc                                        ; $6d19: $d0

jr_067_6d1a:
    db $ed                                        ; $6d1a: $ed
    nop                                           ; $6d1b: $00
    jr nc, jr_067_6d2d                            ; $6d1c: $30 $0f

    add b                                         ; $6d1e: $80
    ld h, e                                       ; $6d1f: $63
    db $fc                                        ; $6d20: $fc
    call nz, $e2b6                                ; $6d21: $c4 $b6 $e2
    nop                                           ; $6d24: $00
    add e                                         ; $6d25: $83
    ld bc, $3091                                  ; $6d26: $01 $91 $30
    ld c, $00                                     ; $6d29: $0e $00
    add [hl]                                      ; $6d2b: $86
    nop                                           ; $6d2c: $00

jr_067_6d2d:
    cp [hl]                                       ; $6d2d: $be
    and $00                                       ; $6d2e: $e6 $00
    pop hl                                        ; $6d30: $e1
    inc b                                         ; $6d31: $04
    sub e                                         ; $6d32: $93

jr_067_6d33:
    call nz, $c261                                ; $6d33: $c4 $61 $c2

jr_067_6d36:
    ld h, d                                       ; $6d36: $62
    jr nc, jr_067_6d41                            ; $6d37: $30 $08

    or d                                          ; $6d39: $b2
    ld h, b                                       ; $6d3a: $60
    add b                                         ; $6d3b: $80
    ld b, d                                       ; $6d3c: $42
    ld [bc], a                                    ; $6d3d: $02
    ld a, [hl]                                    ; $6d3e: $7e
    add sp, -$3d                                  ; $6d3f: $e8 $c3

jr_067_6d41:
    ld b, b                                       ; $6d41: $40
    ld h, d                                       ; $6d42: $62
    ldh [$e7], a                                  ; $6d43: $e0 $e7
    ret nc                                        ; $6d45: $d0

    ld [$428d], a                                 ; $6d46: $ea $8d $42
    jr nc, jr_067_6d56                            ; $6d49: $30 $0b

    ld b, b                                       ; $6d4b: $40
    ld b, e                                       ; $6d4c: $43

Jump_067_6d4d:
    nop                                           ; $6d4d: $00
    add e                                         ; $6d4e: $83
    and $73                                       ; $6d4f: $e6 $73
    ld h, b                                       ; $6d51: $60
    nop                                           ; $6d52: $00
    ld h, c                                       ; $6d53: $61
    ldh [$e7], a                                  ; $6d54: $e0 $e7

jr_067_6d56:
    ret nc                                        ; $6d56: $d0

    db $ed                                        ; $6d57: $ed
    jr nc, jr_067_6d64                            ; $6d58: $30 $0a

    ret nz                                        ; $6d5a: $c0

    push hl                                       ; $6d5b: $e5
    add e                                         ; $6d5c: $83
    rst $20                                       ; $6d5d: $e7
    nop                                           ; $6d5e: $00
    ret nz                                        ; $6d5f: $c0

    jp $e8e0                                      ; $6d60: $c3 $e0 $e8


    ret nc                                        ; $6d63: $d0

jr_067_6d64:
    ld [$8111], a                                 ; $6d64: $ea $11 $81
    jr nc, jr_067_6d72                            ; $6d67: $30 $09

    ld bc, $c080                                  ; $6d69: $01 $80 $c0
    ld b, c                                       ; $6d6c: $41
    ld b, d                                       ; $6d6d: $42
    ld bc, $0562                                  ; $6d6e: $01 $62 $05
    ld b, b                                       ; $6d71: $40

jr_067_6d72:
    sub c                                         ; $6d72: $91
    ret nz                                        ; $6d73: $c0

    add $e0                                       ; $6d74: $c6 $e0
    add sp, -$30                                  ; $6d76: $e8 $d0
    ld [$dad3], a                                 ; $6d78: $ea $d3 $da
    daa                                           ; $6d7b: $27
    add d                                         ; $6d7c: $82
    ld [hl], b                                    ; $6d7d: $70
    jr nc, @+$08                                  ; $6d7e: $30 $06

    ldh a, [$e0]                                  ; $6d80: $f0 $e0
    ret nz                                        ; $6d82: $c0

    ld b, d                                       ; $6d83: $42
    ld b, e                                       ; $6d84: $43
    ld bc, $3d3d                                  ; $6d85: $01 $3d $3d
    scf                                           ; $6d88: $37
    ld bc, $08a0                                  ; $6d89: $01 $a0 $08
    ret nz                                        ; $6d8c: $c0

    push hl                                       ; $6d8d: $e5
    ldh [$e6], a                                  ; $6d8e: $e0 $e6
    ret nc                                        ; $6d90: $d0

    ld [$7fd7], a                                 ; $6d91: $ea $d7 $7f
    inc b                                         ; $6d94: $04
    jr nc, @+$07                                  ; $6d95: $30 $05

    ldh a, [$e0]                                  ; $6d97: $f0 $e0
    ld b, d                                       ; $6d99: $42
    ld bc, $916f                                  ; $6d9a: $01 $6f $91
    add hl, sp                                    ; $6d9d: $39
    and h                                         ; $6d9e: $a4
    ld h, h                                       ; $6d9f: $64
    rst $38                                       ; $6da0: $ff
    ldh [$a5], a                                  ; $6da1: $e0 $a5
    add hl, sp                                    ; $6da3: $39
    ld b, b                                       ; $6da4: $40

Jump_067_6da5:
    and e                                         ; $6da5: $a3
    ret nz                                        ; $6da6: $c0

    ldh [$ea], a                                  ; $6da7: $e0 $ea
    ret nc                                        ; $6da9: $d0

    ld [$8637], a                                 ; $6daa: $ea $37 $86
    jr nc, @+$06                                  ; $6dad: $30 $04

    cp [hl]                                       ; $6daf: $be
    jr nz, jr_067_6d33                            ; $6db0: $20 $81

    ld bc, $3e46                                  ; $6db2: $01 $46 $3e
    rst $38                                       ; $6db5: $ff
    ld l, c                                       ; $6db6: $69
    and e                                         ; $6db7: $a3
    dec [hl]                                      ; $6db8: $35
    dec [hl]                                      ; $6db9: $35
    and e                                         ; $6dba: $a3
    ld l, d                                       ; $6dbb: $6a
    ld a, $46                                     ; $6dbc: $3e $46
    nop                                           ; $6dbe: $00
    dec [hl]                                      ; $6dbf: $35
    ld b, b                                       ; $6dc0: $40
    cp a                                          ; $6dc1: $bf
    ld b, c                                       ; $6dc2: $41
    ldh [$e8], a                                  ; $6dc3: $e0 $e8
    ret nc                                        ; $6dc5: $d0

    ld [$a7c3], a                                 ; $6dc6: $ea $c3 $a7
    jr nc, jr_067_6dce                            ; $6dc9: $30 $03

    daa                                           ; $6dcb: $27
    add c                                         ; $6dcc: $81
    ld b, b                                       ; $6dcd: $40

jr_067_6dce:
    nop                                           ; $6dce: $00
    inc b                                         ; $6dcf: $04
    ret nz                                        ; $6dd0: $c0

    ldh [$81], a                                  ; $6dd1: $e0 $81
    jr nz, @+$37                                  ; $6dd3: $20 $35

    ret nz                                        ; $6dd5: $c0

    ldh [rLCDC], a                                ; $6dd6: $e0 $40
    add h                                         ; $6dd8: $84
    ldh [$e9], a                                  ; $6dd9: $e0 $e9
    ret nc                                        ; $6ddb: $d0

    jp hl                                         ; $6ddc: $e9


    jr nc, @+$10                                  ; $6ddd: $30 $0e

    sbc $00                                       ; $6ddf: $de $00
    add e                                         ; $6de1: $83
    sub c                                         ; $6de2: $91
    add hl, sp                                    ; $6de3: $39
    ld l, e                                       ; $6de4: $6b
    ld [hl], c                                    ; $6de5: $71
    rst $38                                       ; $6de6: $ff
    ldh [$6d], a                                  ; $6de7: $e0 $6d
    add hl, sp                                    ; $6de9: $39
    pop bc                                        ; $6dea: $c1
    sub c                                         ; $6deb: $91
    ld bc, $d884                                  ; $6dec: $01 $84 $d8
    ld h, [hl]                                    ; $6def: $66
    ret nc                                        ; $6df0: $d0

    db $ed                                        ; $6df1: $ed
    jr nc, jr_067_6e01                            ; $6df2: $30 $0d

    jr jr_067_6e38                                ; $6df4: $18 $42

    sbc a                                         ; $6df6: $9f
    or [hl]                                       ; $6df7: $b6
    nop                                           ; $6df8: $00
    ret nz                                        ; $6df9: $c0

    add $c1                                       ; $6dfa: $c6 $c1
    db $e4                                        ; $6dfc: $e4
    ldh [$e6], a                                  ; $6dfd: $e0 $e6
    ret nc                                        ; $6dff: $d0

    db $ed                                        ; $6e00: $ed

jr_067_6e01:
    jr nc, jr_067_6e10                            ; $6e01: $30 $0d

    jr z, jr_067_6e47                             ; $6e03: $28 $42

    ld a, [hl]                                    ; $6e05: $7e
    pop hl                                        ; $6e06: $e1

Jump_067_6e07:
    ld b, b                                       ; $6e07: $40
    jp $c340                                      ; $6e08: $c3 $40 $c3


    ld hl, $a15b                                  ; $6e0b: $21 $5b $a1
    ldh [$e6], a                                  ; $6e0e: $e0 $e6

jr_067_6e10:
    ret nc                                        ; $6e10: $d0

    db $ed                                        ; $6e11: $ed
    jr nc, jr_067_6e21                            ; $6e12: $30 $0d

    cp $45                                        ; $6e14: $fe $45
    sbc l                                         ; $6e16: $9d
    rst $38                                       ; $6e17: $ff
    db $e3                                        ; $6e18: $e3
    nop                                           ; $6e19: $00
    add h                                         ; $6e1a: $84
    ld hl, $61dd                                  ; $6e1b: $21 $dd $61
    ldh [$e6], a                                  ; $6e1e: $e0 $e6
    ret nc                                        ; $6e20: $d0

jr_067_6e21:
    db $ed                                        ; $6e21: $ed
    jr nc, jr_067_6e31                            ; $6e22: $30 $0d

    db $fc                                        ; $6e24: $fc
    ld b, l                                       ; $6e25: $45
    db $db                                        ; $6e26: $db
    dec b                                         ; $6e27: $05
    ldh a, [rLCDC]                                ; $6e28: $f0 $40
    nop                                           ; $6e2a: $00
    add sp, -$1b                                  ; $6e2b: $e8 $e5
    dec b                                         ; $6e2d: $05
    add d                                         ; $6e2e: $82
    ret nc                                        ; $6e2f: $d0

    db $ed                                        ; $6e30: $ed

jr_067_6e31:
    jr nc, jr_067_6e41                            ; $6e31: $30 $0e

    inc d                                         ; $6e33: $14
    dec h                                         ; $6e34: $25
    db $eb                                        ; $6e35: $eb
    ld h, c                                       ; $6e36: $61
    db $e4                                        ; $6e37: $e4

jr_067_6e38:
    add e                                         ; $6e38: $83
    add sp, -$1d                                  ; $6e39: $e8 $e3
    nop                                           ; $6e3b: $00
    ldh [$e4], a                                  ; $6e3c: $e0 $e4
    ret nc                                        ; $6e3e: $d0

    xor $2f                                       ; $6e3f: $ee $2f

jr_067_6e41:
    sub b                                         ; $6e41: $90
    db $fc                                        ; $6e42: $fc
    jp $e6f4                                      ; $6e43: $c3 $f4 $e6


    db $dd                                        ; $6e46: $dd

jr_067_6e47:
    ld h, l                                       ; $6e47: $65
    rst $38                                       ; $6e48: $ff
    ld [hl], c                                    ; $6e49: $71
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    pop bc                                        ; $6e4d: $c1
    nop                                           ; $6e4e: $00
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
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    dec c                                         ; $6e5b: $0d
    add b                                         ; $6e5c: $80
    cp $e0                                        ; $6e5d: $fe $e0
    nop                                           ; $6e5f: $00
    ld b, b                                       ; $6e60: $40
    ret c                                         ; $6e61: $d8

    push hl                                       ; $6e62: $e5
    rst $30                                       ; $6e63: $f7
    and $eb                                       ; $6e64: $e6 $eb
    ldh [rIE], a                                  ; $6e66: $e0 $ff
    rst $38                                       ; $6e68: $ff
    nop                                           ; $6e69: $00
    rst $38                                       ; $6e6a: $ff
    db $f4                                        ; $6e6b: $f4
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    ld [bc], a                                    ; $6e6f: $02
    nop                                           ; $6e70: $00
    inc h                                         ; $6e71: $24
    ld b, $02                                     ; $6e72: $06 $02
    ld bc, $0625                                  ; $6e74: $01 $25 $06
    ld [bc], a                                    ; $6e77: $02
    ld [bc], a                                    ; $6e78: $02
    inc hl                                        ; $6e79: $23
    rlca                                          ; $6e7a: $07
    ld [bc], a                                    ; $6e7b: $02
    inc bc                                        ; $6e7c: $03
    jr z, jr_067_6e87                             ; $6e7d: $28 $08

    ld [bc], a                                    ; $6e7f: $02
    inc b                                         ; $6e80: $04
    rra                                           ; $6e81: $1f
    ld a, [bc]                                    ; $6e82: $0a
    ld [bc], a                                    ; $6e83: $02
    dec b                                         ; $6e84: $05
    ld e, $0b                                     ; $6e85: $1e $0b

jr_067_6e87:
    ld [bc], a                                    ; $6e87: $02
    ld b, $29                                     ; $6e88: $06 $29
    dec bc                                        ; $6e8a: $0b
    ld [bc], a                                    ; $6e8b: $02
    rlca                                          ; $6e8c: $07
    ld a, [hl+]                                   ; $6e8d: $2a
    inc c                                         ; $6e8e: $0c
    ld [bc], a                                    ; $6e8f: $02
    ld [$0d1e], sp                                ; $6e90: $08 $1e $0d
    ld [bc], a                                    ; $6e93: $02
    add hl, bc                                    ; $6e94: $09
    ld [hl+], a                                   ; $6e95: $22
    dec c                                         ; $6e96: $0d
    ld [bc], a                                    ; $6e97: $02
    ld a, [bc]                                    ; $6e98: $0a
    inc hl                                        ; $6e99: $23
    dec c                                         ; $6e9a: $0d
    ld [bc], a                                    ; $6e9b: $02
    dec bc                                        ; $6e9c: $0b
    add hl, hl                                    ; $6e9d: $29
    dec c                                         ; $6e9e: $0d
    ld [bc], a                                    ; $6e9f: $02
    inc c                                         ; $6ea0: $0c
    jr z, jr_067_6eb1                             ; $6ea1: $28 $0e

    ld [bc], a                                    ; $6ea3: $02
    dec c                                         ; $6ea4: $0d
    dec h                                         ; $6ea5: $25
    db $10                                        ; $6ea6: $10
    ld [bc], a                                    ; $6ea7: $02
    ld c, $24                                     ; $6ea8: $0e $24
    ld de, $0f02                                  ; $6eaa: $11 $02 $0f
    dec e                                         ; $6ead: $1d
    dec d                                         ; $6eae: $15
    ld [bc], a                                    ; $6eaf: $02
    db $10                                        ; $6eb0: $10

jr_067_6eb1:
    ld e, $15                                     ; $6eb1: $1e $15
    ld [bc], a                                    ; $6eb3: $02
    ld de, $151f                                  ; $6eb4: $11 $1f $15
    ld [bc], a                                    ; $6eb7: $02
    ld [de], a                                    ; $6eb8: $12
    add hl, de                                    ; $6eb9: $19
    jr @+$04                                      ; $6eba: $18 $02

    inc de                                        ; $6ebc: $13
    jr jr_067_6ed8                                ; $6ebd: $18 $19

    ld [bc], a                                    ; $6ebf: $02
    inc d                                         ; $6ec0: $14
    jr @+$1d                                      ; $6ec1: $18 $1b

    ld [bc], a                                    ; $6ec3: $02
    dec d                                         ; $6ec4: $15
    ld [hl+], a                                   ; $6ec5: $22
    dec de                                        ; $6ec6: $1b
    ld [bc], a                                    ; $6ec7: $02
    ld d, $1d                                     ; $6ec8: $16 $1d
    inc e                                         ; $6eca: $1c
    ld [bc], a                                    ; $6ecb: $02
    rla                                           ; $6ecc: $17
    dec d                                         ; $6ecd: $15
    dec e                                         ; $6ece: $1d
    ld [bc], a                                    ; $6ecf: $02
    jr jr_067_6ee8                                ; $6ed0: $18 $16

    ld e, $02                                     ; $6ed2: $1e $02
    add hl, de                                    ; $6ed4: $19
    jr nz, @+$20                                  ; $6ed5: $20 $1e

    ld [bc], a                                    ; $6ed7: $02

jr_067_6ed8:
    ld a, [de]                                    ; $6ed8: $1a
    rla                                           ; $6ed9: $17
    rra                                           ; $6eda: $1f
    ld [bc], a                                    ; $6edb: $02
    dec de                                        ; $6edc: $1b
    ld d, $20                                     ; $6edd: $16 $20
    ld [bc], a                                    ; $6edf: $02
    inc e                                         ; $6ee0: $1c
    jr nz, @+$22                                  ; $6ee1: $20 $20

    ld [bc], a                                    ; $6ee3: $02
    dec e                                         ; $6ee4: $1d
    inc hl                                        ; $6ee5: $23
    jr nz, jr_067_6eea                            ; $6ee6: $20 $02

jr_067_6ee8:
    ld e, $1c                                     ; $6ee8: $1e $1c

jr_067_6eea:
    ld hl, $1f02                                  ; $6eea: $21 $02 $1f
    add hl, de                                    ; $6eed: $19
    dec h                                         ; $6eee: $25
    ld [bc], a                                    ; $6eef: $02
    jr nz, jr_067_6f13                            ; $6ef0: $20 $21

    dec h                                         ; $6ef2: $25
    ld [bc], a                                    ; $6ef3: $02
    ld hl, $261a                                  ; $6ef4: $21 $1a $26
    ld [bc], a                                    ; $6ef7: $02
    ld [hl+], a                                   ; $6ef8: $22
    ld [hl+], a                                   ; $6ef9: $22
    ld h, $02                                     ; $6efa: $26 $02
    inc hl                                        ; $6efc: $23
    add hl, de                                    ; $6efd: $19
    ld a, [hl+]                                   ; $6efe: $2a
    ld [bc], a                                    ; $6eff: $02
    inc h                                         ; $6f00: $24
    ld hl, $022c                                  ; $6f01: $21 $2c $02
    dec h                                         ; $6f04: $25
    ld [hl+], a                                   ; $6f05: $22
    dec l                                         ; $6f06: $2d
    ld [bc], a                                    ; $6f07: $02
    ld h, $16                                     ; $6f08: $26 $16
    ld l, $02                                     ; $6f0a: $2e $02
    daa                                           ; $6f0c: $27
    ld hl, $022e                                  ; $6f0d: $21 $2e $02
    jr z, jr_067_6f27                             ; $6f10: $28 $15

    cpl                                           ; $6f12: $2f

jr_067_6f13:
    ld [bc], a                                    ; $6f13: $02
    add hl, hl                                    ; $6f14: $29
    jr nz, @+$31                                  ; $6f15: $20 $2f

    ld [bc], a                                    ; $6f17: $02
    ld a, [hl+]                                   ; $6f18: $2a
    ld d, $30                                     ; $6f19: $16 $30
    ld [bc], a                                    ; $6f1b: $02
    dec hl                                        ; $6f1c: $2b
    ld [hl+], a                                   ; $6f1d: $22
    ld sp, $2c02                                  ; $6f1e: $31 $02 $2c
    jr @+$34                                      ; $6f21: $18 $32

    ld [bc], a                                    ; $6f23: $02
    dec l                                         ; $6f24: $2d
    inc hl                                        ; $6f25: $23
    ld [hl-], a                                   ; $6f26: $32

jr_067_6f27:
    ld [bc], a                                    ; $6f27: $02
    ld l, $1f                                     ; $6f28: $2e $1f
    inc sp                                        ; $6f2a: $33
    ld [bc], a                                    ; $6f2b: $02
    cpl                                           ; $6f2c: $2f
    jr nz, jr_067_6f63                            ; $6f2d: $20 $34

    ld [bc], a                                    ; $6f2f: $02
    jr nc, jr_067_6f48                            ; $6f30: $30 $16

    dec [hl]                                      ; $6f32: $35
    ld [bc], a                                    ; $6f33: $02
    ld sp, $3721                                  ; $6f34: $31 $21 $37
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    ld b, d                                       ; $6f3a: $42
    ld l, a                                       ; $6f3b: $6f
    jp $ec74                                      ; $6f3c: $c3 $74 $ec


    ld a, e                                       ; $6f3f: $7b
    ld c, $7c                                     ; $6f40: $0e $7c
    ld e, a                                       ; $6f42: $5f
    ld l, $0e                                     ; $6f43: $2e $0e
    ld c, $0e                                     ; $6f45: $0e $0e
    ld c, l                                       ; $6f47: $4d

jr_067_6f48:
    rst $38                                       ; $6f48: $ff
    db $e4                                        ; $6f49: $e4
    ld l, [hl]                                    ; $6f4a: $6e
    push af                                       ; $6f4b: $f5
    db $e4                                        ; $6f4c: $e4
    ld [hl], e                                    ; $6f4d: $73
    dec c                                         ; $6f4e: $0d
    dec c                                         ; $6f4f: $0d
    xor $e3                                       ; $6f50: $ee $e3
    ld hl, sp-$1b                                 ; $6f52: $f8 $e5
    ld l, $2e                                     ; $6f54: $2e $2e
    ld c, [hl]                                    ; $6f56: $4e
    db $dd                                        ; $6f57: $dd
    push hl                                       ; $6f58: $e5
    adc c                                         ; $6f59: $89
    ld c, l                                       ; $6f5a: $4d
    ret nc                                        ; $6f5b: $d0

    jp hl                                         ; $6f5c: $e9


    call z, Call_000_2ee2                         ; $6f5d: $cc $e2 $2e
    jp z, $bde0                                   ; $6f60: $ca $e0 $bd

jr_067_6f63:
    pop hl                                        ; $6f63: $e1
    set 4, b                                      ; $6f64: $cb $e0
    ld l, $61                                     ; $6f66: $2e $61
    ld l, $e5                                     ; $6f68: $2e $e5
    add sp, -$45                                  ; $6f6a: $e8 $bb
    add sp, -$64                                  ; $6f6c: $e8 $9c
    ldh [$ab], a                                  ; $6f6e: $e0 $ab
    db $e4                                        ; $6f70: $e4
    ld l, $0e                                     ; $6f71: $2e $0e
    ret nc                                        ; $6f73: $d0

    jp hl                                         ; $6f74: $e9


    ld c, h                                       ; $6f75: $4c
    or d                                          ; $6f76: $b2
    pop hl                                        ; $6f77: $e1
    pop bc                                        ; $6f78: $c1
    ldh [$4e], a                                  ; $6f79: $e0 $4e
    ld c, [hl]                                    ; $6f7b: $4e
    ret nz                                        ; $6f7c: $c0

    push hl                                       ; $6f7d: $e5
    ld [hl], l                                    ; $6f7e: $75
    pop hl                                        ; $6f7f: $e1
    ld c, $82                                     ; $6f80: $0e $82
    ldh [rNR11], a                                ; $6f82: $e0 $11
    dec l                                         ; $6f84: $2d
    ret nz                                        ; $6f85: $c0

    db $ec                                        ; $6f86: $ec
    xor b                                         ; $6f87: $a8
    pop hl                                        ; $6f88: $e1
    ret nz                                        ; $6f89: $c0

    db $e3                                        ; $6f8a: $e3
    ld l, $d0                                     ; $6f8b: $2e $d0
    jp hl                                         ; $6f8d: $e9


    ldh a, [$e2]                                  ; $6f8e: $f0 $e2
    adc e                                         ; $6f90: $8b
    ldh [$ef], a                                  ; $6f91: $e0 $ef
    ld c, $0e                                     ; $6f93: $0e $0e
    ld c, [hl]                                    ; $6f95: $4e
    ld c, $98                                     ; $6f96: $0e $98
    push hl                                       ; $6f98: $e5
    dec c                                         ; $6f99: $0d
    ld l, l                                       ; $6f9a: $6d
    ld l, l                                       ; $6f9b: $6d
    ld h, e                                       ; $6f9c: $63
    dec c                                         ; $6f9d: $0d
    dec l                                         ; $6f9e: $2d
    cp a                                          ; $6f9f: $bf
    pop hl                                        ; $6fa0: $e1
    dec sp                                        ; $6fa1: $3b
    ldh [$39], a                                  ; $6fa2: $e0 $39
    ldh [$2d], a                                  ; $6fa4: $e0 $2d
    dec l                                         ; $6fa6: $2d
    ret nz                                        ; $6fa7: $c0

    db $ed                                        ; $6fa8: $ed
    ld d, b                                       ; $6fa9: $50
    ret nc                                        ; $6faa: $d0

    add sp, -$40                                  ; $6fab: $e8 $c0
    rst $20                                       ; $6fad: $e7
    ccf                                           ; $6fae: $3f
    ld [c], a                                     ; $6faf: $e2
    dec b                                         ; $6fb0: $05
    ld [c], a                                     ; $6fb1: $e2
    ld l, l                                       ; $6fb2: $6d
    adc $e0                                       ; $6fb3: $ce $e0
    dec l                                         ; $6fb5: $2d
    cp a                                          ; $6fb6: $bf
    db $e4                                        ; $6fb7: $e4
    inc bc                                        ; $6fb8: $03
    ld l, l                                       ; $6fb9: $6d
    dec c                                         ; $6fba: $0d
    ld [hl], h                                    ; $6fbb: $74
    db $e4                                        ; $6fbc: $e4
    ld [$d8c3], a                                 ; $6fbd: $ea $c3 $d8
    ret nz                                        ; $6fc0: $c0

    ret nc                                        ; $6fc1: $d0

    ld [$ecf0], a                                 ; $6fc2: $ea $f0 $ec
    add l                                         ; $6fc5: $85
    pop hl                                        ; $6fc6: $e1
    inc b                                         ; $6fc7: $04
    add e                                         ; $6fc8: $83
    ldh [rIE], a                                  ; $6fc9: $e0 $ff
    pop hl                                        ; $6fcb: $e1
    dec l                                         ; $6fcc: $2d
    cp [hl]                                       ; $6fcd: $be
    ldh [$b9], a                                  ; $6fce: $e0 $b9
    pop bc                                        ; $6fd0: $c1
    di                                            ; $6fd1: $f3
    pop hl                                        ; $6fd2: $e1
    ld [hl], h                                    ; $6fd3: $74
    db $e4                                        ; $6fd4: $e4
    daa                                           ; $6fd5: $27
    ldh [rSVBK], a                                ; $6fd6: $e0 $70
    ret nz                                        ; $6fd8: $c0

    db $ec                                        ; $6fd9: $ec
    ldh a, [$ed]                                  ; $6fda: $f0 $ed
    add l                                         ; $6fdc: $85
    pop hl                                        ; $6fdd: $e1
    ld d, d                                       ; $6fde: $52
    ldh [$0d], a                                  ; $6fdf: $e0 $0d
    dec c                                         ; $6fe1: $0d
    ld c, e                                       ; $6fe2: $4b
    cp a                                          ; $6fe3: $bf
    pop hl                                        ; $6fe4: $e1
    add b                                         ; $6fe5: $80
    ld [hl], l                                    ; $6fe6: $75
    pop hl                                        ; $6fe7: $e1
    cp a                                          ; $6fe8: $bf
    and $6f                                       ; $6fe9: $e6 $6f
    call nz, $c19e                                ; $6feb: $c4 $9e $c1
    sub b                                         ; $6fee: $90
    add sp, -$10                                  ; $6fef: $e8 $f0
    db $eb                                        ; $6ff1: $eb
    ld d, d                                       ; $6ff2: $52
    ldh [rWX], a                                  ; $6ff3: $e0 $4b
    ld [$e0ff], sp                                ; $6ff5: $08 $ff $e0
    ret nz                                        ; $6ff8: $c0

    pop hl                                        ; $6ff9: $e1
    ld a, $e0                                     ; $6ffa: $3e $e0
    ld c, l                                       ; $6ffc: $4d
    ld [hl], h                                    ; $6ffd: $74

jr_067_6ffe:
    ldh [$b3], a                                  ; $6ffe: $e0 $b3
    ld [c], a                                     ; $7000: $e2
    ld [hl], d                                    ; $7001: $72
    pop hl                                        ; $7002: $e1
    ret nz                                        ; $7003: $c0

    rst $20                                       ; $7004: $e7
    ld hl, sp-$31                                 ; $7005: $f8 $cf
    jp nz, $e8c0                                  ; $7007: $c2 $c0 $e8

    ldh a, [$e8]                                  ; $700a: $f0 $e8
    dec c                                         ; $700c: $0d
    dec c                                         ; $700d: $0d
    dec hl                                        ; $700e: $2b
    dec bc                                        ; $700f: $0b
    ld a, [bc]                                    ; $7010: $0a
    inc bc                                        ; $7011: $03
    ld a, [bc]                                    ; $7012: $0a
    ld a, [hl+]                                   ; $7013: $2a
    ld b, c                                       ; $7014: $41
    db $e4                                        ; $7015: $e4
    db $fd                                        ; $7016: $fd
    and $fd                                       ; $7017: $e6 $fd
    push bc                                       ; $7019: $c5
    inc h                                         ; $701a: $24
    pop hl                                        ; $701b: $e1
    adc a                                         ; $701c: $8f
    call nz, $e680                                ; $701d: $c4 $80 $e6
    call nc, $a1e5                                ; $7020: $d4 $e5 $a1
    xor $a3                                       ; $7023: $ee $a3
    ld l, l                                       ; $7025: $6d
    ld d, d                                       ; $7026: $52
    pop hl                                        ; $7027: $e1
    ld a, [bc]                                    ; $7028: $0a
    pop bc                                        ; $7029: $c1
    ldh [$2a], a                                  ; $702a: $e0 $2a
    dec bc                                        ; $702c: $0b
    ccf                                           ; $702d: $3f
    dec hl                                        ; $702e: $2b
    dec bc                                        ; $702f: $0b
    ld c, e                                       ; $7030: $4b
    ld c, e                                       ; $7031: $4b
    dec hl                                        ; $7032: $2b
    dec bc                                        ; $7033: $0b
    push bc                                       ; $7034: $c5
    db $e4                                        ; $7035: $e4
    db $f4                                        ; $7036: $f4
    pop bc                                        ; $7037: $c1
    nop                                           ; $7038: $00
    jr nc, jr_067_6ffe                            ; $7039: $30 $c3

    or h                                          ; $703b: $b4
    ret nz                                        ; $703c: $c0

    ret nz                                        ; $703d: $c0

    pop hl                                        ; $703e: $e1
    cp [hl]                                       ; $703f: $be
    and h                                         ; $7040: $a4
    or l                                          ; $7041: $b5
    ldh [$eb], a                                  ; $7042: $e0 $eb
    and d                                         ; $7044: $a2
    db $db                                        ; $7045: $db
    jp nz, $c058                                  ; $7046: $c2 $58 $c0

    cp $ca                                        ; $7049: $fe $ca
    jp nz, $0a4a                                  ; $704b: $c2 $4a $0a

    dec bc                                        ; $704e: $0b
    dec bc                                        ; $704f: $0b
    dec bc                                        ; $7050: $0b
    dec hl                                        ; $7051: $2b
    dec hl                                        ; $7052: $2b
    ld [hl], c                                    ; $7053: $71
    dec hl                                        ; $7054: $2b
    cp l                                          ; $7055: $bd
    ldh [$fb], a                                  ; $7056: $e0 $fb
    ldh [$36], a                                  ; $7058: $e0 $36
    pop hl                                        ; $705a: $e1
    dec bc                                        ; $705b: $0b
    ld c, e                                       ; $705c: $4b
    dec hl                                        ; $705d: $2b
    ld a, $e4                                     ; $705e: $3e $e4
    add b                                         ; $7060: $80
    ret nz                                        ; $7061: $c0

    db $e4                                        ; $7062: $e4
    add hl, de                                    ; $7063: $19
    pop bc                                        ; $7064: $c1
    ret nc                                        ; $7065: $d0

    db $e3                                        ; $7066: $e3
    ret z                                         ; $7067: $c8

    and c                                         ; $7068: $a1
    ld b, [hl]                                    ; $7069: $46
    and d                                         ; $706a: $a2
    db $e3                                        ; $706b: $e3
    and h                                         ; $706c: $a4
    ld d, l                                       ; $706d: $55
    ret nz                                        ; $706e: $c0

    ld l, e                                       ; $706f: $6b
    pop hl                                        ; $7070: $e1
    dec hl                                        ; $7071: $2b
    ret nz                                        ; $7072: $c0

    pop hl                                        ; $7073: $e1
    cp h                                          ; $7074: $bc
    ldh [$b9], a                                  ; $7075: $e0 $b9
    ldh [$f7], a                                  ; $7077: $e0 $f7
    pop bc                                        ; $7079: $c1
    dec hl                                        ; $707a: $2b
    ld a, [bc]                                    ; $707b: $0a
    ld a, [hl+]                                   ; $707c: $2a
    rlca                                          ; $707d: $07
    ld a, [bc]                                    ; $707e: $0a
    ld a, [hl+]                                   ; $707f: $2a
    dec bc                                        ; $7080: $0b
    ret nz                                        ; $7081: $c0

    ld [$e7d0], a                                 ; $7082: $ea $d0 $e7
    ret                                           ; $7085: $c9


    and l                                         ; $7086: $a5
    dec bc                                        ; $7087: $0b
    and d                                         ; $7088: $a2
    jr @-$3c                                      ; $7089: $18 $c2

    ccf                                           ; $708b: $3f
    dec c                                         ; $708c: $0d
    ld c, l                                       ; $708d: $4d
    ld c, e                                       ; $708e: $4b
    ld l, e                                       ; $708f: $6b
    ld l, e                                       ; $7090: $6b
    ld c, e                                       ; $7091: $4b
    ld b, d                                       ; $7092: $42
    ldh [$c0], a                                  ; $7093: $e0 $c0
    ld [c], a                                     ; $7095: $e2
    inc c                                         ; $7096: $0c
    or b                                          ; $7097: $b0
    pop hl                                        ; $7098: $e1
    cpl                                           ; $7099: $2f
    ldh [$0a], a                                  ; $709a: $e0 $0a
    ld c, d                                       ; $709c: $4a
    inc a                                         ; $709d: $3c
    push bc                                       ; $709e: $c5
    db $fc                                        ; $709f: $fc
    push bc                                       ; $70a0: $c5
    ret nc                                        ; $70a1: $d0

    db $e4                                        ; $70a2: $e4
    inc d                                         ; $70a3: $14
    and b                                         ; $70a4: $a0
    ld h, b                                       ; $70a5: $60
    push bc                                       ; $70a6: $c5
    add d                                         ; $70a7: $82
    or a                                          ; $70a8: $b7
    pop hl                                        ; $70a9: $e1
    reti                                          ; $70aa: $d9


    and c                                         ; $70ab: $a1
    sub l                                         ; $70ac: $95
    and b                                         ; $70ad: $a0
    sub d                                         ; $70ae: $92
    call nz, Call_067_4b6b                        ; $70af: $c4 $6b $4b
    cp $e1                                        ; $70b2: $fe $e1
    scf                                           ; $70b4: $37
    dec c                                         ; $70b5: $0d
    dec bc                                        ; $70b6: $0b
    dec c                                         ; $70b7: $0d
    jr c, @-$1d                                   ; $70b8: $38 $e1

    ld a, [bc]                                    ; $70ba: $0a
    ld a, [bc]                                    ; $70bb: $0a
    rst $30                                       ; $70bc: $f7
    ldh [$ba], a                                  ; $70bd: $e0 $ba
    and l                                         ; $70bf: $a5
    nop                                           ; $70c0: $00
    db $fc                                        ; $70c1: $fc
    pop bc                                        ; $70c2: $c1
    ret nc                                        ; $70c3: $d0

    push hl                                       ; $70c4: $e5
    ret nz                                        ; $70c5: $c0

    push hl                                       ; $70c6: $e5
    xor a                                         ; $70c7: $af
    add c                                         ; $70c8: $81
    and [hl]                                      ; $70c9: $a6
    and c                                         ; $70ca: $a1
    adc c                                         ; $70cb: $89
    add d                                         ; $70cc: $82
    cp c                                          ; $70cd: $b9
    ret nz                                        ; $70ce: $c0

    ld c, l                                       ; $70cf: $4d
    and b                                         ; $70d0: $a0
    db $10                                        ; $70d1: $10
    cp a                                          ; $70d2: $bf
    pop hl                                        ; $70d3: $e1
    db $fc                                        ; $70d4: $fc
    and b                                         ; $70d5: $a0
    scf                                           ; $70d6: $37
    ld [c], a                                     ; $70d7: $e2
    dec l                                         ; $70d8: $2d
    ldh [$2b], a                                  ; $70d9: $e0 $2b
    cp a                                          ; $70db: $bf
    db $e3                                        ; $70dc: $e3
    cp h                                          ; $70dd: $bc
    push bc                                       ; $70de: $c5
    ret nc                                        ; $70df: $d0

    push hl                                       ; $70e0: $e5
    nop                                           ; $70e1: $00
    add b                                         ; $70e2: $80
    db $e3                                        ; $70e3: $e3
    and e                                         ; $70e4: $a3
    add d                                         ; $70e5: $82
    add b                                         ; $70e6: $80
    db $e3                                        ; $70e7: $e3
    dec e                                         ; $70e8: $1d
    push bc                                       ; $70e9: $c5
    ld b, c                                       ; $70ea: $41
    add b                                         ; $70eb: $80
    inc [hl]                                      ; $70ec: $34
    ldh [$c0], a                                  ; $70ed: $e0 $c0
    ld [c], a                                     ; $70ef: $e2
    di                                            ; $70f0: $f3
    jp $7200                                      ; $70f1: $c3 $00 $72


    ret nz                                        ; $70f4: $c0

    scf                                           ; $70f5: $37
    and e                                         ; $70f6: $a3
    ret nz                                        ; $70f7: $c0

    and $1f                                       ; $70f8: $e6 $1f
    add e                                         ; $70fa: $83
    pop de                                        ; $70fb: $d1
    add h                                         ; $70fc: $84
    cp $e7                                        ; $70fd: $fe $e7
    or h                                          ; $70ff: $b4
    add c                                         ; $7100: $81
    ldh a, [$e2]                                  ; $7101: $f0 $e2
    nop                                           ; $7103: $00
    di                                            ; $7104: $f3
    ret nz                                        ; $7105: $c0

    push af                                       ; $7106: $f5
    ret nz                                        ; $7107: $c0

    di                                            ; $7108: $f3
    ret nz                                        ; $7109: $c0

    or e                                          ; $710a: $b3
    jp $a16e                                      ; $710b: $c3 $6e $a1


    inc a                                         ; $710e: $3c
    and $d0                                       ; $710f: $e6 $d0
    db $ec                                        ; $7111: $ec
    adc $e2                                       ; $7112: $ce $e2
    inc a                                         ; $7114: $3c
    push de                                       ; $7115: $d5
    add b                                         ; $7116: $80
    jp Jump_000_2ee1                              ; $7117: $c3 $e1 $2e


    ld c, [hl]                                    ; $711a: $4e
    ld c, $4e                                     ; $711b: $0e $4e
    cp [hl]                                       ; $711d: $be
    ld [c], a                                     ; $711e: $e2
    adc b                                         ; $711f: $88
    add b                                         ; $7120: $80
    inc b                                         ; $7121: $04
    add e                                         ; $7122: $83
    jp nz, $c3b5                                  ; $7123: $c2 $b5 $c3

    ld l, e                                       ; $7126: $6b
    ld a, b                                       ; $7127: $78
    and [hl]                                      ; $7128: $a6
    inc c                                         ; $7129: $0c
    jp $ead0                                      ; $712a: $c3 $d0 $ea


    call nz, $c0a0                                ; $712d: $c4 $a0 $c0
    push hl                                       ; $7130: $e5
    and e                                         ; $7131: $a3
    ld l, [hl]                                    ; $7132: $6e
    ld l, [hl]                                    ; $7133: $6e
    cp a                                          ; $7134: $bf
    ldh [$f0], a                                  ; $7135: $e0 $f0
    ld [c], a                                     ; $7137: $e2
    ld l, [hl]                                    ; $7138: $6e
    ld h, b                                       ; $7139: $60
    dec l                                         ; $713a: $2d
    ld b, e                                       ; $713b: $43
    ret nz                                        ; $713c: $c0

    ld a, [bc]                                    ; $713d: $0a

Jump_067_713e:
    add d                                         ; $713e: $82
    ld [bc], a                                    ; $713f: $02
    pop hl                                        ; $7140: $e1
    ld l, e                                       ; $7141: $6b
    inc a                                         ; $7142: $3c

jr_067_7143:
    call nz, $80aa                                ; $7143: $c4 $aa $80
    inc c                                         ; $7146: $0c
    call nz, $efd0                                ; $7147: $c4 $d0 $ef
    ld d, l                                       ; $714a: $55
    add b                                         ; $714b: $80
    ld l, $f1                                     ; $714c: $2e $f1
    ld l, [hl]                                    ; $714e: $6e
    ld [hl], $85                                  ; $714f: $36 $85
    ld d, a                                       ; $7151: $57
    and d                                         ; $7152: $a2
    dec a                                         ; $7153: $3d
    ldh [rWX], a                                  ; $7154: $e0 $4b
    ld a, [bc]                                    ; $7156: $0a
    ld c, d                                       ; $7157: $4a
    ld l, e                                       ; $7158: $6b
    dec bc                                        ; $7159: $0b
    dec bc                                        ; $715a: $0b
    dec bc                                        ; $715b: $0b
    dec sp                                        ; $715c: $3b
    ret nz                                        ; $715d: $c0

    ld a, [hl+]                                   ; $715e: $2a
    rst $30                                       ; $715f: $f7
    add h                                         ; $7160: $84
    jr nz, jr_067_7143                            ; $7161: $20 $e0

    push de                                       ; $7163: $d5
    ld h, d                                       ; $7164: $62
    ret nc                                        ; $7165: $d0

    db $ed                                        ; $7166: $ed
    pop bc                                        ; $7167: $c1
    dec c                                         ; $7168: $0d
    dec bc                                        ; $7169: $0b
    pop hl                                        ; $716a: $e1
    or $67                                        ; $716b: $f6 $67
    ldh a, [$e1]                                  ; $716d: $f0 $e1
    ret nz                                        ; $716f: $c0

    ldh [rSVBK], a                                ; $7170: $e0 $70
    and c                                         ; $7172: $a1
    dec c                                         ; $7173: $0d
    ld c, e                                       ; $7174: $4b
    rrca                                          ; $7175: $0f
    dec bc                                        ; $7176: $0b
    dec hl                                        ; $7177: $2b
    ld c, d                                       ; $7178: $4a
    ld a, [hl+]                                   ; $7179: $2a
    ld l, c                                       ; $717a: $69
    add h                                         ; $717b: $84
    add l                                         ; $717c: $85
    ret nz                                        ; $717d: $c0

    adc h                                         ; $717e: $8c
    call nz, $ecd0                                ; $717f: $c4 $d0 $ec
    ld [$e23d], sp                                ; $7182: $08 $3d $e2
    ldh a, [$ea]                                  ; $7185: $f0 $ea
    ld [hl], $c2                                  ; $7187: $36 $c2
    dec c                                         ; $7189: $0d
    call nz, Call_000_2fa0                        ; $718a: $c4 $a0 $2f
    and c                                         ; $718d: $a1
    di                                            ; $718e: $f3
    ld h, b                                       ; $718f: $60
    or a                                          ; $7190: $b7
    ld h, c                                       ; $7191: $61
    adc b                                         ; $7192: $88
    dec c                                         ; $7193: $0d
    and c                                         ; $7194: $a1
    call z, $d0a3                                 ; $7195: $cc $a3 $d0
    db $ed                                        ; $7198: $ed
    dec l                                         ; $7199: $2d
    add h                                         ; $719a: $84
    call nz, $e7f0                                ; $719b: $c4 $f0 $e7
    or $a3                                        ; $719e: $f6 $a3
    ld c, d                                       ; $71a0: $4a
    ld [bc], a                                    ; $71a1: $02
    nop                                           ; $71a2: $00
    pop hl                                        ; $71a3: $e1
    dec bc                                        ; $71a4: $0b
    or l                                          ; $71a5: $b5
    add b                                         ; $71a6: $80
    pop bc                                        ; $71a7: $c1
    ld [c], a                                     ; $71a8: $e2
    inc c                                         ; $71a9: $0c
    rst $00                                       ; $71aa: $c7
    ret nc                                        ; $71ab: $d0

    db $eb                                        ; $71ac: $eb
    jr @-$7e                                      ; $71ad: $18 $80

    ldh a, [$ee]                                  ; $71af: $f0 $ee
    jr @+$47                                      ; $71b1: $18 $45

    ld h, c                                       ; $71b3: $61
    ld b, e                                       ; $71b4: $43
    ld h, b                                       ; $71b5: $60
    ret nz                                        ; $71b6: $c0

    pop bc                                        ; $71b7: $c1
    ld l, e                                       ; $71b8: $6b
    ld l, e                                       ; $71b9: $6b
    add hl, sp                                    ; $71ba: $39
    ld h, c                                       ; $71bb: $61
    ld b, h                                       ; $71bc: $44
    add d                                         ; $71bd: $82
    inc c                                         ; $71be: $0c
    push bc                                       ; $71bf: $c5
    nop                                           ; $71c0: $00
    ret nz                                        ; $71c1: $c0

    db $ed                                        ; $71c2: $ed
    inc b                                         ; $71c3: $04
    push bc                                       ; $71c4: $c5
    ldh a, [$ea]                                  ; $71c5: $f0 $ea
    jr c, @+$63                                   ; $71c7: $38 $61

    ld b, b                                       ; $71c9: $40
    ret nz                                        ; $71ca: $c0

    xor a                                         ; $71cb: $af
    ld h, d                                       ; $71cc: $62
    daa                                           ; $71cd: $27
    ld h, c                                       ; $71ce: $61
    inc c                                         ; $71cf: $0c
    ld b, a                                       ; $71d0: $47
    ret nz                                        ; $71d1: $c0

    ret nc                                        ; $71d2: $d0

    db $eb                                        ; $71d3: $eb
    ret z                                         ; $71d4: $c8

    and e                                         ; $71d5: $a3
    cp [hl]                                       ; $71d6: $be
    call nz, $e4b3                                ; $71d7: $c4 $b3 $e4
    cp c                                          ; $71da: $b9
    and c                                         ; $71db: $a1
    cp l                                          ; $71dc: $bd
    and c                                         ; $71dd: $a1
    ld c, d                                       ; $71de: $4a
    ld c, d                                       ; $71df: $4a
    dec b                                         ; $71e0: $05
    ld c, e                                       ; $71e1: $4b
    add c                                         ; $71e2: $81
    add b                                         ; $71e3: $80
    ld c, e                                       ; $71e4: $4b
    ld b, c                                       ; $71e5: $41
    add c                                         ; $71e6: $81
    ld l, a                                       ; $71e7: $6f
    ret nz                                        ; $71e8: $c0

    call nz, $d0e9                                ; $71e9: $c4 $e9 $d0
    jp hl                                         ; $71ec: $e9


    dec l                                         ; $71ed: $2d
    ld b, b                                       ; $71ee: $40
    call nz, $a0c7                                ; $71ef: $c4 $c7 $a0
    sub d                                         ; $71f2: $92
    ld b, b                                       ; $71f3: $40
    dec l                                         ; $71f4: $2d
    rst $38                                       ; $71f5: $ff
    ld b, c                                       ; $71f6: $41
    ldh a, [$e5]                                  ; $71f7: $f0 $e5
    ld hl, sp-$7f                                 ; $71f9: $f8 $81
    ld a, [bc]                                    ; $71fb: $0a
    ld a, [bc]                                    ; $71fc: $0a
    nop                                           ; $71fd: $00
    call nz, Call_067_72a2                        ; $71fe: $c4 $a2 $72
    ld b, l                                       ; $7201: $45
    dec hl                                        ; $7202: $2b
    ld b, c                                       ; $7203: $41
    ldh [$e6], a                                  ; $7204: $e0 $e6
    ret nc                                        ; $7206: $d0

    and $07                                       ; $7207: $e6 $07
    call nz, $a27d                                ; $7209: $c4 $7d $a2
    or e                                          ; $720c: $b3
    and c                                         ; $720d: $a1
    inc e                                         ; $720e: $1c
    rst $30                                       ; $720f: $f7
    and h                                         ; $7210: $a4
    jr nc, jr_067_7254                            ; $7211: $30 $41

    ld l, e                                       ; $7213: $6b
    ld a, [bc]                                    ; $7214: $0a
    ld l, d                                       ; $7215: $6a
    ld bc, $bd84                                  ; $7216: $01 $84 $bd
    ld b, c                                       ; $7219: $41
    ldh [$eb], a                                  ; $721a: $e0 $eb
    db $10                                        ; $721c: $10
    ret nc                                        ; $721d: $d0

    rst $20                                       ; $721e: $e7
    ld [hl], $83                                  ; $721f: $36 $83
    ld c, e                                       ; $7221: $4b
    ld b, b                                       ; $7222: $40
    nop                                           ; $7223: $00
    and b                                         ; $7224: $a0
    ld c, [hl]                                    ; $7225: $4e
    ldh a, [$e6]                                  ; $7226: $f0 $e6
    ld a, [$ff01]                                 ; $7228: $fa $01 $ff
    ld h, b                                       ; $722b: $60
    nop                                           ; $722c: $00
    ld a, [hl-]                                   ; $722d: $3a
    add c                                         ; $722e: $81
    ld a, [hl]                                    ; $722f: $7e
    ld [c], a                                     ; $7230: $e2
    ldh [$ed], a                                  ; $7231: $e0 $ed
    ret nc                                        ; $7233: $d0

    db $ed                                        ; $7234: $ed
    ld b, e                                       ; $7235: $43
    ld b, c                                       ; $7236: $41
    or h                                          ; $7237: $b4
    nop                                           ; $7238: $00
    cp e                                          ; $7239: $bb
    pop hl                                        ; $723a: $e1
    ldh a, [$e4]                                  ; $723b: $f0 $e4
    add h                                         ; $723d: $84
    scf                                           ; $723e: $37
    ld b, c                                       ; $723f: $41
    ld l, $61                                     ; $7240: $2e $61
    ld l, e                                       ; $7242: $6b
    xor a                                         ; $7243: $af
    ld hl, $e224                                  ; $7244: $21 $24 $e2
    ldh [$eb], a                                  ; $7247: $e0 $eb
    ret nc                                        ; $7249: $d0

    db $e3                                        ; $724a: $e3
    dec l                                         ; $724b: $2d
    add d                                         ; $724c: $82
    cp e                                          ; $724d: $bb
    add [hl]                                      ; $724e: $86
    ld c, $f5                                     ; $724f: $0e $f5
    ldh [$f3], a                                  ; $7251: $e0 $f3
    and b                                         ; $7253: $a0

jr_067_7254:
    xor e                                         ; $7254: $ab
    add l                                         ; $7255: $85
    add d                                         ; $7256: $82
    ld [hl+], a                                   ; $7257: $22
    inc sp                                        ; $7258: $33
    ld h, c                                       ; $7259: $61
    ld l, e                                       ; $725a: $6b
    add b                                         ; $725b: $80
    ld [hl], b                                    ; $725c: $70
    ld b, d                                       ; $725d: $42
    ldh [$ee], a                                  ; $725e: $e0 $ee
    ret nc                                        ; $7260: $d0

    push hl                                       ; $7261: $e5
    add d                                         ; $7262: $82
    call nz, $e280                                ; $7263: $c4 $80 $e2
    ldh a, [$e8]                                  ; $7266: $f0 $e8
    pop bc                                        ; $7268: $c1
    add sp, $0d                                   ; $7269: $e8 $0d
    ld b, b                                       ; $726b: $40
    ld [hl], d                                    ; $726c: $72
    ld b, c                                       ; $726d: $41
    ldh [$ed], a                                  ; $726e: $e0 $ed
    ret nc                                        ; $7270: $d0

    push hl                                       ; $7271: $e5
    jr nc, jr_067_7281                            ; $7272: $30 $0d

    cp b                                          ; $7274: $b8
    ld h, l                                       ; $7275: $65
    jp nz, Jump_067_6b21                          ; $7276: $c2 $21 $6b

    ret nz                                        ; $7279: $c0

    add b                                         ; $727a: $80
    nop                                           ; $727b: $00
    ld [bc], a                                    ; $727c: $02
    add b                                         ; $727d: $80
    jr nc, jr_067_72a5                            ; $727e: $30 $25

    ld b, d                                       ; $7280: $42

jr_067_7281:
    ld b, [hl]                                    ; $7281: $46
    ret nc                                        ; $7282: $d0

    jp hl                                         ; $7283: $e9


    jr nc, jr_067_7290                            ; $7284: $30 $0a

    inc b                                         ; $7286: $04
    push bc                                       ; $7287: $c5
    add hl, bc                                    ; $7288: $09
    ld b, d                                       ; $7289: $42
    cp a                                          ; $728a: $bf
    pop hl                                        ; $728b: $e1
    nop                                           ; $728c: $00
    or a                                          ; $728d: $b7
    ld b, c                                       ; $728e: $41
    ld l, h                                       ; $728f: $6c

jr_067_7290:
    ld hl, $026e                                  ; $7290: $21 $6e $02
    ccf                                           ; $7293: $3f
    and d                                         ; $7294: $a2
    ret nc                                        ; $7295: $d0

    ld [$a12f], a                                 ; $7296: $ea $2f $a1
    jr nc, jr_067_72a4                            ; $7299: $30 $09

    inc b                                         ; $729b: $04
    push bc                                       ; $729c: $c5
    ld [bc], a                                    ; $729d: $02
    ret nz                                        ; $729e: $c0

    db $e3                                        ; $729f: $e3
    dec l                                         ; $72a0: $2d
    ld l, [hl]                                    ; $72a1: $6e

Call_067_72a2:
    jr nz, @-$7b                                  ; $72a2: $20 $83

jr_067_72a4:
    ld h, c                                       ; $72a4: $61

jr_067_72a5:
    dec hl                                        ; $72a5: $2b
    jr nz, jr_067_730b                            ; $72a6: $20 $63

    ld b, b                                       ; $72a8: $40
    ld a, b                                       ; $72a9: $78
    ld [bc], a                                    ; $72aa: $02
    sbc h                                         ; $72ab: $9c
    ld h, b                                       ; $72ac: $60
    jr nc, @-$2e                                  ; $72ad: $30 $d0

jr_067_72af:
    jp hl                                         ; $72af: $e9


    jr nc, jr_067_72bf                            ; $72b0: $30 $0d

    inc b                                         ; $72b2: $04
    push bc                                       ; $72b3: $c5
    ret nc                                        ; $72b4: $d0

    ld b, d                                       ; $72b5: $42
    dec l                                         ; $72b6: $2d
    dec c                                         ; $72b7: $0d
    ld a, b                                       ; $72b8: $78
    jr nz, jr_067_72af                            ; $72b9: $20 $f4

    ld [hl+], a                                   ; $72bb: $22
    nop                                           ; $72bc: $00
    ld [hl], h                                    ; $72bd: $74
    pop hl                                        ; $72be: $e1

jr_067_72bf:
    ld [hl], $20                                  ; $72bf: $36 $20
    ret nc                                        ; $72c1: $d0

    rst $28                                       ; $72c2: $ef
    jr nc, jr_067_72d2                            ; $72c3: $30 $0d

    inc b                                         ; $72c5: $04
    add $96                                       ; $72c6: $c6 $96
    and c                                         ; $72c8: $a1
    add c                                         ; $72c9: $81
    ldh [$b3], a                                  ; $72ca: $e0 $b3
    ld [hl+], a                                   ; $72cc: $22
    nop                                           ; $72cd: $00
    ccf                                           ; $72ce: $3f
    add c                                         ; $72cf: $81
    ld hl, sp+$00                                 ; $72d0: $f8 $00

jr_067_72d2:
    reti                                          ; $72d2: $d9


    ld h, b                                       ; $72d3: $60
    ret nc                                        ; $72d4: $d0

    xor $30                                       ; $72d5: $ee $30
    dec c                                         ; $72d7: $0d
    ret nz                                        ; $72d8: $c0

    rst $20                                       ; $72d9: $e7
    inc sp                                        ; $72da: $33
    ld bc, $e241                                  ; $72db: $01 $41 $e2
    add b                                         ; $72de: $80
    ccf                                           ; $72df: $3f
    add e                                         ; $72e0: $83
    cp a                                          ; $72e1: $bf
    pop bc                                        ; $72e2: $c1
    inc de                                        ; $72e3: $13
    ld b, d                                       ; $72e4: $42
    ret nc                                        ; $72e5: $d0

    db $eb                                        ; $72e6: $eb
    jr nc, jr_067_72f6                            ; $72e7: $30 $0d

    xor a                                         ; $72e9: $af
    ld b, h                                       ; $72ea: $44
    pop bc                                        ; $72eb: $c1
    db $e3                                        ; $72ec: $e3
    dec l                                         ; $72ed: $2d
    dec b                                         ; $72ee: $05
    ld c, e                                       ; $72ef: $4b
    add c                                         ; $72f0: $81
    jp nz, $b40b                                  ; $72f1: $c2 $0b $b4

    jr nz, jr_067_7365                            ; $72f4: $20 $6f

jr_067_72f6:
    ld bc, $0240                                  ; $72f6: $01 $40 $02
    ret nc                                        ; $72f9: $d0

    db $ec                                        ; $72fa: $ec
    ret nz                                        ; $72fb: $c0

    db $ed                                        ; $72fc: $ed
    nop                                           ; $72fd: $00
    halt                                          ; $72fe: $76
    add h                                         ; $72ff: $84
    pop bc                                        ; $7300: $c1
    db $e3                                        ; $7301: $e3
    pop bc                                        ; $7302: $c1
    and h                                         ; $7303: $a4
    ret nz                                        ; $7304: $c0

    pop hl                                        ; $7305: $e1
    dec sp                                        ; $7306: $3b
    inc b                                         ; $7307: $04
    sbc $c1                                       ; $7308: $de $c1
    ret nz                                        ; $730a: $c0

jr_067_730b:
    db $eb                                        ; $730b: $eb
    jr nc, jr_067_731c                            ; $730c: $30 $0e

    nop                                           ; $730e: $00
    cp d                                          ; $730f: $ba
    inc h                                         ; $7310: $24
    add d                                         ; $7311: $82
    jp nz, $e440                                  ; $7312: $c2 $40 $e4

    ld [hl], l                                    ; $7315: $75
    inc bc                                        ; $7316: $03
    ld a, a                                       ; $7317: $7f
    pop bc                                        ; $7318: $c1
    ld hl, sp+$60                                 ; $7319: $f8 $60
    ld d, c                                       ; $731b: $51

jr_067_731c:
    and d                                         ; $731c: $a2
    ret nc                                        ; $731d: $d0

    add sp, $49                                   ; $731e: $e8 $49
    ld l, $30                                     ; $7320: $2e $30
    dec c                                         ; $7322: $0d
    ret nz                                        ; $7323: $c0

    add sp, $0b                                   ; $7324: $e8 $0b
    ld b, b                                       ; $7326: $40
    db $e3                                        ; $7327: $e3
    add b                                         ; $7328: $80
    inc h                                         ; $7329: $24
    dec c                                         ; $732a: $0d
    ld c, b                                       ; $732b: $48
    ld b, d                                       ; $732c: $42
    ld c, b                                       ; $732d: $48
    dec [hl]                                      ; $732e: $35
    add b                                         ; $732f: $80
    ret nc                                        ; $7330: $d0

    db $eb                                        ; $7331: $eb
    jr nc, jr_067_7341                            ; $7332: $30 $0d

    dec c                                         ; $7334: $0d
    di                                            ; $7335: $f3
    ld [bc], a                                    ; $7336: $02
    adc [hl]                                      ; $7337: $8e
    jp nz, $f90d                                  ; $7338: $c2 $0d $f9

    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    ld [hl-], a                                   ; $733d: $32
    inc b                                         ; $733e: $04
    db $fc                                        ; $733f: $fc
    nop                                           ; $7340: $00

jr_067_7341:
    dec sp                                        ; $7341: $3b
    ld b, h                                       ; $7342: $44
    ld e, b                                       ; $7343: $58
    ld bc, $e9d0                                  ; $7344: $01 $d0 $e9
    jr nc, jr_067_7357                            ; $7347: $30 $0e

    ldh a, [$e2]                                  ; $7349: $f0 $e2
    ld [hl-], a                                   ; $734b: $32
    nop                                           ; $734c: $00
    ld [$410b], sp                                ; $734d: $08 $0b $41
    rst $38                                       ; $7350: $ff
    and h                                         ; $7351: $a4
    dec a                                         ; $7352: $3d
    ldh [rOCPD], a                                ; $7353: $e0 $6b
    inc [hl]                                      ; $7355: $34
    ret nz                                        ; $7356: $c0

jr_067_7357:
    ld sp, hl                                     ; $7357: $f9
    inc hl                                        ; $7358: $23
    sub d                                         ; $7359: $92
    ld b, b                                       ; $735a: $40
    ret nc                                        ; $735b: $d0

    ld [$3010], a                                 ; $735c: $ea $10 $30
    inc c                                         ; $735f: $0c
    ldh a, [$e2]                                  ; $7360: $f0 $e2
    ld [hl-], a                                   ; $7362: $32
    ld [bc], a                                    ; $7363: $02
    sbc [hl]                                      ; $7364: $9e

jr_067_7365:
    and b                                         ; $7365: $a0
    ld c, e                                       ; $7366: $4b
    ld a, $a1                                     ; $7367: $3e $a1
    add c                                         ; $7369: $81
    ld [c], a                                     ; $736a: $e2
    ld hl, sp-$7e                                 ; $736b: $f8 $82
    add b                                         ; $736d: $80
    cp c                                          ; $736e: $b9
    inc bc                                        ; $736f: $03
    and b                                         ; $7370: $a0
    pop bc                                        ; $7371: $c1
    ret nc                                        ; $7372: $d0

    rst $20                                       ; $7373: $e7
    jr nc, jr_067_7383                            ; $7374: $30 $0d

    ldh a, [$e2]                                  ; $7376: $f0 $e2
    cp a                                          ; $7378: $bf
    and $b9                                       ; $7379: $e6 $b9
    nop                                           ; $737b: $00
    ld l, e                                       ; $737c: $6b
    nop                                           ; $737d: $00
    ccf                                           ; $737e: $3f
    and b                                         ; $737f: $a0
    rst $30                                       ; $7380: $f7
    and e                                         ; $7381: $a3
    cp a                                          ; $7382: $bf

jr_067_7383:
    db $e3                                        ; $7383: $e3
    ld [de], a                                    ; $7384: $12
    ld b, b                                       ; $7385: $40
    ret nc                                        ; $7386: $d0

    jp hl                                         ; $7387: $e9


    jr nc, @+$14                                  ; $7388: $30 $12

    cp [hl]                                       ; $738a: $be
    and d                                         ; $738b: $a2
    ld c, e                                       ; $738c: $4b
    ld [hl+], a                                   ; $738d: $22
    dec b                                         ; $738e: $05
    ld l, e                                       ; $738f: $6b
    ld b, e                                       ; $7390: $43
    and b                                         ; $7391: $a0
    ld l, e                                       ; $7392: $6b
    add hl, sp                                    ; $7393: $39
    dec b                                         ; $7394: $05
    ld b, b                                       ; $7395: $40
    push hl                                       ; $7396: $e5
    ret nc                                        ; $7397: $d0

    xor $30                                       ; $7398: $ee $30
    ld [$e6f0], sp                                ; $739a: $08 $f0 $e6
    ld [$c2a7], sp                                ; $739d: $08 $a7 $c2
    ld b, l                                       ; $73a0: $45
    add d                                         ; $73a1: $82
    scf                                           ; $73a2: $37
    dec b                                         ; $73a3: $05
    dec hl                                        ; $73a4: $2b
    ld hl, sp+$02                                 ; $73a5: $f8 $02
    add b                                         ; $73a7: $80
    db $e4                                        ; $73a8: $e4
    ret nc                                        ; $73a9: $d0

    push hl                                       ; $73aa: $e5
    jr nc, jr_067_73ba                            ; $73ab: $30 $0d

    db $10                                        ; $73ad: $10
    ld a, [c]                                     ; $73ae: $f2
    and $0d                                       ; $73af: $e6 $0d
    ld h, c                                       ; $73b1: $61
    sbc e                                         ; $73b2: $9b
    add b                                         ; $73b3: $80
    ld b, e                                       ; $73b4: $43
    jr nz, @+$4f                                  ; $73b5: $20 $4d

    ld a, b                                       ; $73b7: $78
    ret nz                                        ; $73b8: $c0

    ld [hl], a                                    ; $73b9: $77

jr_067_73ba:
    jp nz, Jump_000_02f8                          ; $73ba: $c2 $f8 $02

    nop                                           ; $73bd: $00
    pop bc                                        ; $73be: $c1
    inc hl                                        ; $73bf: $23
    call z, Call_067_40e7                         ; $73c0: $cc $e7 $40
    rlca                                          ; $73c3: $07
    jr nc, jr_067_73c8                            ; $73c4: $30 $02

    ldh a, [$e6]                                  ; $73c6: $f0 $e6

jr_067_73c8:
    cp l                                          ; $73c8: $bd
    pop bc                                        ; $73c9: $c1
    rst $38                                       ; $73ca: $ff
    and $bd                                       ; $73cb: $e6 $bd
    pop hl                                        ; $73cd: $e1
    add b                                         ; $73ce: $80
    halt                                          ; $73cf: $76
    add c                                         ; $73d0: $81
    halt                                          ; $73d1: $76
    and e                                         ; $73d2: $a3
    ld b, b                                       ; $73d3: $40
    ld [bc], a                                    ; $73d4: $02
    ret z                                         ; $73d5: $c8

    inc h                                         ; $73d6: $24
    ld b, b                                       ; $73d7: $40
    dec b                                         ; $73d8: $05
    jr nc, jr_067_73e8                            ; $73d9: $30 $0d

    cp a                                          ; $73db: $bf
    db $ed                                        ; $73dc: $ed
    ld c, e                                       ; $73dd: $4b
    nop                                           ; $73de: $00
    ld [hl], e                                    ; $73df: $73
    ld h, d                                       ; $73e0: $62
    db $fd                                        ; $73e1: $fd
    and e                                         ; $73e2: $a3
    ld h, h                                       ; $73e3: $64
    ld h, b                                       ; $73e4: $60
    ret z                                         ; $73e5: $c8

    ld h, $c0                                     ; $73e6: $26 $c0

jr_067_73e8:
    push hl                                       ; $73e8: $e5
    jr nc, @+$0a                                  ; $73e9: $30 $08

    ldh a, [$e3]                                  ; $73eb: $f0 $e3
    sbc h                                         ; $73ed: $9c
    ld h, e                                       ; $73ee: $63
    nop                                           ; $73ef: $00
    ld c, l                                       ; $73f0: $4d
    jp nz, Jump_000_22bc                          ; $73f1: $c2 $bc $22

    ld a, [$b3c0]                                 ; $73f4: $fa $c0 $b3
    pop bc                                        ; $73f7: $c1
    xor l                                         ; $73f8: $ad
    ld h, b                                       ; $73f9: $60
    or e                                          ; $73fa: $b3
    ld h, c                                       ; $73fb: $61
    ret c                                         ; $73fc: $d8

    ld h, $80                                     ; $73fd: $26 $80
    nop                                           ; $73ff: $00
    inc b                                         ; $7400: $04
    jr nc, jr_067_7410                            ; $7401: $30 $0d

    ldh a, [$e4]                                  ; $7403: $f0 $e4

jr_067_7405:
    ld c, [hl]                                    ; $7405: $4e
    ld c, l                                       ; $7406: $4d
    ld [hl+], a                                   ; $7407: $22
    sub c                                         ; $7408: $91
    and c                                         ; $7409: $a1
    ld a, [c]                                     ; $740a: $f2
    jp nz, $c0fa                                  ; $740b: $c2 $fa $c0

    ld [hl], b                                    ; $740e: $70
    and b                                         ; $740f: $a0

jr_067_7410:
    inc bc                                        ; $7410: $03
    dec hl                                        ; $7411: $2b
    dec bc                                        ; $7412: $0b
    or a                                          ; $7413: $b7
    and d                                         ; $7414: $a2
    cp h                                          ; $7415: $bc
    nop                                           ; $7416: $00
    ret z                                         ; $7417: $c8

    inc h                                         ; $7418: $24
    ld b, b                                       ; $7419: $40
    nop                                           ; $741a: $00
    jr nc, jr_067_742a                            ; $741b: $30 $0d

    ldh a, [$e3]                                  ; $741d: $f0 $e3
    nop                                           ; $741f: $00
    ld [hl], h                                    ; $7420: $74
    ld hl, $c378                                  ; $7421: $21 $78 $c3
    ldh a, [rSTAT]                                ; $7424: $f0 $41
    or c                                          ; $7426: $b1
    jp $e2c1                                      ; $7427: $c3 $c1 $e2


jr_067_742a:
    xor d                                         ; $742a: $aa
    ld h, b                                       ; $742b: $60
    ld [hl], c                                    ; $742c: $71
    add c                                         ; $742d: $81
    ret nz                                        ; $742e: $c0

    rst $20                                       ; $742f: $e7
    add b                                         ; $7430: $80
    jr nc, jr_067_743e                            ; $7431: $30 $0b

    ldh a, [$e6]                                  ; $7433: $f0 $e6
    ret nz                                        ; $7435: $c0

    db $e4                                        ; $7436: $e4
    ld b, [hl]                                    ; $7437: $46
    ld hl, $017e                                  ; $7438: $21 $7e $01
    ldh a, [$a1]                                  ; $743b: $f0 $a1
    add d                                         ; $743d: $82

jr_067_743e:
    pop hl                                        ; $743e: $e1
    dec l                                         ; $743f: $2d
    nop                                           ; $7440: $00
    cp a                                          ; $7441: $bf
    db $e3                                        ; $7442: $e3
    ld hl, sp+$25                                 ; $7443: $f8 $25
    cp l                                          ; $7445: $bd
    nop                                           ; $7446: $00
    jr nc, @+$0f                                  ; $7447: $30 $0d

    ret nz                                        ; $7449: $c0

    jp hl                                         ; $744a: $e9


    ld h, e                                       ; $744b: $63
    jp $c270                                      ; $744c: $c3 $70 $c2


    or c                                          ; $744f: $b1
    ld b, c                                       ; $7450: $41
    nop                                           ; $7451: $00
    add d                                         ; $7452: $82
    pop hl                                        ; $7453: $e1
    ld a, [hl]                                    ; $7454: $7e
    ldh [$6e], a                                  ; $7455: $e0 $6e
    ld b, c                                       ; $7457: $41
    ld c, d                                       ; $7458: $4a
    inc b                                         ; $7459: $04
    rrca                                          ; $745a: $0f
    push bc                                       ; $745b: $c5
    ret nz                                        ; $745c: $c0

    add sp, -$02                                  ; $745d: $e8 $fe
    db $ec                                        ; $745f: $ec
    ld d, e                                       ; $7460: $53
    call nz, Call_067_6d05                        ; $7461: $c4 $05 $6d
    add d                                         ; $7464: $82
    and $2b                                       ; $7465: $e6 $2b
    xor [hl]                                      ; $7467: $ae
    ld h, c                                       ; $7468: $61
    ret z                                         ; $7469: $c8

    xor e                                         ; $746a: $ab
    jr nc, jr_067_7476                            ; $746b: $30 $09

    ldh a, [$e5]                                  ; $746d: $f0 $e5
    ldh [$ed], a                                  ; $746f: $e0 $ed
    add b                                         ; $7471: $80
    ld sp, $b280                                  ; $7472: $31 $80 $b2
    ld h, c                                       ; $7475: $61

jr_067_7476:
    pop bc                                        ; $7476: $c1
    pop hl                                        ; $7477: $e1
    inc hl                                        ; $7478: $23
    jr nz, jr_067_7405                            ; $7479: $20 $8a

    xor c                                         ; $747b: $a9
    jr nc, jr_067_7488                            ; $747c: $30 $0a

    ldh a, [$f6]                                  ; $747e: $f0 $f6
    ld c, l                                       ; $7480: $4d
    ld bc, $382d                                  ; $7481: $01 $2d $38
    and c                                         ; $7484: $a1
    add d                                         ; $7485: $82
    push hl                                       ; $7486: $e5
    ret nc                                        ; $7487: $d0

jr_067_7488:
    and $30                                       ; $7488: $e6 $30
    ld c, $f0                                     ; $748a: $0e $f0
    or $bf                                        ; $748c: $f6 $bf
    ld [c], a                                     ; $748e: $e2
    ld b, e                                       ; $748f: $43
    pop hl                                        ; $7490: $e1
    nop                                           ; $7491: $00
    ld a, [hl+]                                   ; $7492: $2a
    push hl                                       ; $7493: $e5
    ret nc                                        ; $7494: $d0

    db $e3                                        ; $7495: $e3
    jr nc, @+$15                                  ; $7496: $30 $13

    ldh a, [$f1]                                  ; $7498: $f0 $f1
    ld a, [hl]                                    ; $749a: $7e
    pop hl                                        ; $749b: $e1
    pop bc                                        ; $749c: $c1
    ld [c], a                                     ; $749d: $e2
    xor l                                         ; $749e: $ad
    jp nz, $ebd0                                  ; $749f: $c2 $d0 $eb

    nop                                           ; $74a2: $00
    jr nc, jr_067_74aa                            ; $74a3: $30 $05

    ldh a, [$f9]                                  ; $74a5: $f0 $f9
    rst $20                                       ; $74a7: $e7
    ld [bc], a                                    ; $74a8: $02
    ld l, l                                       ; $74a9: $6d

jr_067_74aa:
    call nz, $e5d0                                ; $74aa: $c4 $d0 $e5
    jr nc, jr_067_74bd                            ; $74ad: $30 $0e

    ldh a, [$f8]                                  ; $74af: $f0 $f8
    ld c, c                                       ; $74b1: $49
    ld [bc], a                                    ; $74b2: $02
    nop                                           ; $74b3: $00
    ld l, l                                       ; $74b4: $6d
    add $d0                                       ; $74b5: $c6 $d0
    db $e4                                        ; $74b7: $e4
    jr nc, jr_067_74c6                            ; $74b8: $30 $0c

    ldh a, [$f9]                                  ; $74ba: $f0 $f9
    ret nz                                        ; $74bc: $c0

jr_067_74bd:
    and $d0                                       ; $74bd: $e6 $d0
    add sp, $00                                   ; $74bf: $e8 $00
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    rst $18                                       ; $74c3: $df
    ret c                                         ; $74c4: $d8

    push de                                       ; $74c5: $d5

jr_067_74c6:
    push de                                       ; $74c6: $d5
    ret c                                         ; $74c7: $d8

    and b                                         ; $74c8: $a0
    rst $38                                       ; $74c9: $ff
    db $e4                                        ; $74ca: $e4
    db $d3                                        ; $74cb: $d3
    ret nc                                        ; $74cc: $d0

    dec c                                         ; $74cd: $0d
    db $d3                                        ; $74ce: $d3
    push af                                       ; $74cf: $f5
    ld [c], a                                     ; $74d0: $e2
    add sp, -$17                                  ; $74d1: $e8 $e9
    xor $e3                                       ; $74d3: $ee $e3
    ld hl, sp-$1b                                 ; $74d5: $f8 $e5
    add sp, -$1b                                  ; $74d7: $e8 $e5
    ret c                                         ; $74d9: $d8

    pop hl                                        ; $74da: $e1
    cp h                                          ; $74db: $bc
    ret nc                                        ; $74dc: $d0

    jp hl                                         ; $74dd: $e9


    ret z                                         ; $74de: $c8

    pop hl                                        ; $74df: $e1
    jp nc, $d4d6                                  ; $74e0: $d2 $d6 $d4

    sub $bd                                       ; $74e3: $d6 $bd
    ld [c], a                                     ; $74e5: $e2
    sbc $1f                                       ; $74e6: $de $1f
    rst $18                                       ; $74e8: $df
    and b                                         ; $74e9: $a0
    rst $10                                       ; $74ea: $d7
    call nc, $e5d7                                ; $74eb: $d4 $d7 $e5
    rst $20                                       ; $74ee: $e7
    ldh a, [$e0]                                  ; $74ef: $f0 $e0
    ld hl, sp-$1b                                 ; $74f1: $f8 $e5
    call z, $e2e8                                 ; $74f3: $cc $e8 $e2
    ldh a, [$e2]                                  ; $74f6: $f0 $e2
    ret c                                         ; $74f8: $d8

    push de                                       ; $74f9: $d5
    ret nc                                        ; $74fa: $d0

    jp hl                                         ; $74fb: $e9


    or d                                          ; $74fc: $b2
    pop hl                                        ; $74fd: $e1
    sub $d2                                       ; $74fe: $d6 $d2
    rst $28                                       ; $7500: $ef
    ret nc                                        ; $7501: $d0

    jp nc, $d6d4                                  ; $7502: $d2 $d4 $d6

    adc b                                         ; $7505: $88
    ldh [$e0], a                                  ; $7506: $e0 $e0
    pop hl                                        ; $7508: $e1
    and b                                         ; $7509: $a0
    rst $38                                       ; $750a: $ff
    jp c, $dad9                                   ; $750b: $da $d9 $da

    and b                                         ; $750e: $a0
    and b                                         ; $750f: $a0
    ld [$a29f], a                                 ; $7510: $ea $9f $a2
    add e                                         ; $7513: $83
    sbc l                                         ; $7514: $9d
    sbc a                                         ; $7515: $9f
    ld l, [hl]                                    ; $7516: $6e
    ldh [$f0], a                                  ; $7517: $e0 $f0
    ldh [rBCPS], a                                ; $7519: $e0 $68
    ld [c], a                                     ; $751b: $e2
    add sp, -$1b                                  ; $751c: $e8 $e5
    ldh a, [$e2]                                  ; $751e: $f0 $e2
    db $d3                                        ; $7520: $d3
    reti                                          ; $7521: $d9


    ret nc                                        ; $7522: $d0

    ret nc                                        ; $7523: $d0

    jp hl                                         ; $7524: $e9


    ld c, [hl]                                    ; $7525: $4e
    pop hl                                        ; $7526: $e1
    rst $10                                       ; $7527: $d7
    call nc, $e0bf                                ; $7528: $d4 $bf $e0
    rst $10                                       ; $752b: $d7
    jp nc, $d8ff                                  ; $752c: $d2 $ff $d8

    and b                                         ; $752f: $a0
    ld [c], a                                     ; $7530: $e2
    db $e3                                        ; $7531: $e3
    and b                                         ; $7532: $a0
    call c, $dcdb                                 ; $7533: $dc $db $dc
    ld a, a                                       ; $7536: $7f
    and b                                         ; $7537: $a0
    sbc a                                         ; $7538: $9f
    sbc l                                         ; $7539: $9d
    or [hl]                                       ; $753a: $b6
    jp $b690                                      ; $753b: $c3 $90 $b6


    cp a                                          ; $753e: $bf
    ldh [$3e], a                                  ; $753f: $e0 $3e
    ldh a, [$e0]                                  ; $7541: $f0 $e0
    sbc a                                         ; $7543: $9f
    sbc l                                         ; $7544: $9d
    sbc l                                         ; $7545: $9d
    and d                                         ; $7546: $a2
    sbc a                                         ; $7547: $9f
    add sp, -$1c                                  ; $7548: $e8 $e4
    ldh [$e1], a                                  ; $754a: $e0 $e1
    xor h                                         ; $754c: $ac
    ret nc                                        ; $754d: $d0

    db $ed                                        ; $754e: $ed
    ld c, $e1                                     ; $754f: $0e $e1
    db $dd                                        ; $7551: $dd
    reti                                          ; $7552: $d9


    ld c, d                                       ; $7553: $4a
    ldh [$dd], a                                  ; $7554: $e0 $dd
    rra                                           ; $7556: $1f
    and $9f                                       ; $7557: $e6 $9f
    rra                                           ; $7559: $1f
    or [hl]                                       ; $755a: $b6
    sub b                                         ; $755b: $90
    sub b                                         ; $755c: $90
    call nz, $bf90                                ; $755d: $c4 $90 $bf
    ld [c], a                                     ; $7560: $e2
    db $f4                                        ; $7561: $f4
    pop hl                                        ; $7562: $e1
    or l                                          ; $7563: $b5
    db $e3                                        ; $7564: $e3
    ld a, $e0                                     ; $7565: $3e $e0
    call nz, $a0eb                                ; $7567: $c4 $eb $a0
    and b                                         ; $756a: $a0
    rst $10                                       ; $756b: $d7
    jp nc, $e8d0                                  ; $756c: $d2 $d0 $e8

    ldh a, [$e2]                                  ; $756f: $f0 $e2
    call $bed0                                    ; $7571: $cd $d0 $be
    ldh [$dd], a                                  ; $7574: $e0 $dd
    pop de                                        ; $7576: $d1
    rst $00                                       ; $7577: $c7
    jp nz, $e091                                  ; $7578: $c2 $91 $e0

    sbc l                                         ; $757b: $9d
    or [hl]                                       ; $757c: $b6
    rst $38                                       ; $757d: $ff
    sub c                                         ; $757e: $91
    ld a, c                                       ; $757f: $79
    ld a, d                                       ; $7580: $7a
    ld a, h                                       ; $7581: $7c
    ld a, l                                       ; $7582: $7d
    sub c                                         ; $7583: $91
    sub b                                         ; $7584: $90
    sbc [hl]                                      ; $7585: $9e
    ld [c], a                                     ; $7586: $e2
    xor h                                         ; $7587: $ac
    ret nz                                        ; $7588: $c0

    sbc [hl]                                      ; $7589: $9e
    or l                                          ; $758a: $b5
    ldh [$74], a                                  ; $758b: $e0 $74
    db $e3                                        ; $758d: $e3
    db $f4                                        ; $758e: $f4
    jp nz, $edec                                  ; $758f: $c2 $ec $ed

    and b                                         ; $7592: $a0
    daa                                           ; $7593: $27
    and b                                         ; $7594: $a0
    jp c, $d0d3                                   ; $7595: $da $d3 $d0

    rst $20                                       ; $7598: $e7
    ldh a, [$e3]                                  ; $7599: $f0 $e3
    call nc, $e040                                ; $759b: $d4 $40 $e0
    cp $c0                                        ; $759e: $fe $c0
    db $fc                                        ; $75a0: $fc
    rst $00                                       ; $75a1: $c7
    ret nz                                        ; $75a2: $c0

    add l                                         ; $75a3: $85
    pop hl                                        ; $75a4: $e1
    sub b                                         ; $75a5: $90
    sub c                                         ; $75a6: $91
    ld a, c                                       ; $75a7: $79
    ld a, [hl]                                    ; $75a8: $7e
    xor [hl]                                      ; $75a9: $ae
    ld b, [hl]                                    ; $75aa: $46
    jp Jump_067_7d7f                              ; $75ab: $c3 $7f $7d


    ret nz                                        ; $75ae: $c0

    pop hl                                        ; $75af: $e1
    add c                                         ; $75b0: $81
    ld [c], a                                     ; $75b1: $e2
    ld [hl], h                                    ; $75b2: $74
    db $e3                                        ; $75b3: $e3
    db $f4                                        ; $75b4: $f4
    push bc                                       ; $75b5: $c5
    and b                                         ; $75b6: $a0
    call c, $d769                                 ; $75b7: $dc $69 $d7
    ret nc                                        ; $75ba: $d0

    rst $20                                       ; $75bb: $e7
    ldh a, [$e3]                                  ; $75bc: $f0 $e3
    reti                                          ; $75be: $d9


    ld b, b                                       ; $75bf: $40
    ldh [$d4], a                                  ; $75c0: $e0 $d4
    rst $10                                       ; $75c2: $d7
    rst $00                                       ; $75c3: $c7
    ret nz                                        ; $75c4: $c0

    rst $28                                       ; $75c5: $ef
    sbc a                                         ; $75c6: $9f
    or [hl]                                       ; $75c7: $b6
    sub c                                         ; $75c8: $91
    ld b, [hl]                                    ; $75c9: $46
    rst $38                                       ; $75ca: $ff
    ldh [$82], a                                  ; $75cb: $e0 $82
    add e                                         ; $75cd: $83
    xor a                                         ; $75ce: $af
    rra                                           ; $75cf: $1f
    ld b, [hl]                                    ; $75d0: $46
    add e                                         ; $75d1: $83
    add h                                         ; $75d2: $84
    sub b                                         ; $75d3: $90
    or [hl]                                       ; $75d4: $b6
    ld [hl], l                                    ; $75d5: $75
    ldh [$36], a                                  ; $75d6: $e0 $36
    ld [c], a                                     ; $75d8: $e2
    xor h                                         ; $75d9: $ac
    ldh [$c9], a                                  ; $75da: $e0 $c9
    sbc [hl]                                      ; $75dc: $9e
    inc b                                         ; $75dd: $04
    db $e3                                        ; $75de: $e3
    ld a, [de]                                    ; $75df: $1a
    jp nz, $d0da                                  ; $75e0: $c2 $da $d0

    and $f0                                       ; $75e3: $e6 $f0
    db $e4                                        ; $75e5: $e4
    db $db                                        ; $75e6: $db
    db $db                                        ; $75e7: $db
    ld a, [$e0ed]                                 ; $75e8: $fa $ed $e0
    jp c, $c0c7                                   ; $75eb: $da $c7 $c0

    sbc [hl]                                      ; $75ee: $9e
    sub b                                         ; $75ef: $90
    ld b, l                                       ; $75f0: $45
    ld b, e                                       ; $75f1: $43
    ld c, b                                       ; $75f2: $48
    rst $38                                       ; $75f3: $ff
    ld c, [hl]                                    ; $75f4: $4e
    ld c, b                                       ; $75f5: $48
    add l                                         ; $75f6: $85
    add a                                         ; $75f7: $87
    adc b                                         ; $75f8: $88
    adc b                                         ; $75f9: $88
    add a                                         ; $75fa: $87
    add l                                         ; $75fb: $85
    ld bc, $c791                                  ; $75fc: $01 $91 $c7
    ld [c], a                                     ; $75ff: $e2
    ei                                            ; $7600: $fb
    db $e4                                        ; $7601: $e4
    db $fd                                        ; $7602: $fd
    ret z                                         ; $7603: $c8

    sbc l                                         ; $7604: $9d
    ret nz                                        ; $7605: $c0

    ret nc                                        ; $7606: $d0

Call_067_7607:
    push hl                                       ; $7607: $e5
    ld l, a                                       ; $7608: $6f
    db $e4                                        ; $7609: $e4
    db $ed                                        ; $760a: $ed
    ld [c], a                                     ; $760b: $e2
    db $fc                                        ; $760c: $fc
    and c                                         ; $760d: $a1
    ret nz                                        ; $760e: $c0

    rst $00                                       ; $760f: $c7
    ret nz                                        ; $7610: $c0

    ld c, d                                       ; $7611: $4a
    ld c, h                                       ; $7612: $4c
    ld h, c                                       ; $7613: $61
    ld d, h                                       ; $7614: $54
    ld d, e                                       ; $7615: $53
    ld b, c                                       ; $7616: $41
    ccf                                           ; $7617: $3f
    ld b, e                                       ; $7618: $43
    ld b, l                                       ; $7619: $45
    ld b, [hl]                                    ; $761a: $46
    ld b, [hl]                                    ; $761b: $46
    ld b, l                                       ; $761c: $45
    ld b, l                                       ; $761d: $45
    cp a                                          ; $761e: $bf
    pop hl                                        ; $761f: $e1
    push af                                       ; $7620: $f5
    ret nz                                        ; $7621: $c0

    add c                                         ; $7622: $81
    ld a, e                                       ; $7623: $7b
    db $f4                                        ; $7624: $f4
    pop bc                                        ; $7625: $c1
    or d                                          ; $7626: $b2
    jp $a5f0                                      ; $7627: $c3 $f0 $a5


    ret nc                                        ; $762a: $d0

    db $e4                                        ; $762b: $e4
    or a                                          ; $762c: $b7
    and b                                         ; $762d: $a0
    cp b                                          ; $762e: $b8
    xor b                                         ; $762f: $a8
    db $e4                                        ; $7630: $e4
    rst $38                                       ; $7631: $ff
    push hl                                       ; $7632: $e5
    and c                                         ; $7633: $a1
    jp Jump_067_4a90                              ; $7634: $c3 $90 $4a


    ld d, [hl]                                    ; $7637: $56
    dec hl                                        ; $7638: $2b
    inc l                                         ; $7639: $2c
    rst $38                                       ; $763a: $ff
    jr nz, jr_067_765e                            ; $763b: $20 $21

    dec sp                                        ; $763d: $3b
    ld [hl], $37                                  ; $763e: $36 $37
    scf                                           ; $7640: $37
    ld [hl], $38                                  ; $7641: $36 $38
    ccf                                           ; $7643: $3f
    scf                                           ; $7644: $37
    ld b, l                                       ; $7645: $45
    ld b, [hl]                                    ; $7646: $46
    ld a, c                                       ; $7647: $79
    ld a, d                                       ; $7648: $7a
    adc a                                         ; $7649: $8f
    cpl                                           ; $764a: $2f
    ldh [$f4], a                                  ; $764b: $e0 $f4
    ret nz                                        ; $764d: $c0

    inc d                                         ; $764e: $14
    ld a, $e1                                     ; $764f: $3e $e1
    ldh a, [$a4]                                  ; $7651: $f0 $a4
    ld [$e6d0], a                                 ; $7653: $ea $d0 $e6

jr_067_7656:
    ret c                                         ; $7656: $d8

    ret z                                         ; $7657: $c8

    and b                                         ; $7658: $a0
    ld b, [hl]                                    ; $7659: $46
    and d                                         ; $765a: $a2
    cp b                                          ; $765b: $b8
    ld [c], a                                     ; $765c: $e2
    rst $38                                       ; $765d: $ff

jr_067_765e:
    and $e7                                       ; $765e: $e6 $e7
    sbc [hl]                                      ; $7660: $9e
    call nz, $4590                                ; $7661: $c4 $90 $45
    dec l                                         ; $7664: $2d
    jr nz, jr_067_7656                            ; $7665: $20 $ef

    jr nz, jr_067_7689                            ; $7667: $20 $20

    daa                                           ; $7669: $27
    dec [hl]                                      ; $766a: $35
    rst $38                                       ; $766b: $ff
    ld [c], a                                     ; $766c: $e2
    ld a, [hl-]                                   ; $766d: $3a
    ld b, l                                       ; $766e: $45
    ld a, c                                       ; $766f: $79
    scf                                           ; $7670: $37
    ld a, [hl]                                    ; $7671: $7e
    ld b, l                                       ; $7672: $45
    ld c, b                                       ; $7673: $48
    rst $38                                       ; $7674: $ff
    ldh [rLYC], a                                 ; $7675: $e0 $45
    add c                                         ; $7677: $81
    ret nz                                        ; $7678: $c0

    db $e4                                        ; $7679: $e4
    db $fc                                        ; $767a: $fc
    push bc                                       ; $767b: $c5
    call z, $e4d0                                 ; $767c: $cc $d0 $e4
    ld b, [hl]                                    ; $767f: $46
    ret nz                                        ; $7680: $c0

    pop de                                        ; $7681: $d1
    ret nc                                        ; $7682: $d0

    ret                                           ; $7683: $c9


    and b                                         ; $7684: $a0
    dec bc                                        ; $7685: $0b
    and e                                         ; $7686: $a3
    add sp, -$17                                  ; $7687: $e8 $e9

jr_067_7689:
    cp $07                                        ; $7689: $fe $07
    ret nz                                        ; $768b: $c0

    sub c                                         ; $768c: $91
    cp l                                          ; $768d: $bd
    ld sp, $412b                                  ; $768e: $31 $2b $41
    inc sp                                        ; $7691: $33
    scf                                           ; $7692: $37
    push af                                       ; $7693: $f5
    jr c, @-$40                                   ; $7694: $38 $be

    pop hl                                        ; $7696: $e1
    add hl, sp                                    ; $7697: $39
    ld a, b                                       ; $7698: $78
    ret nz                                        ; $7699: $c0

    ld b, h                                       ; $769a: $44
    ld d, h                                       ; $769b: $54
    ld d, a                                       ; $769c: $57
    ld d, a                                       ; $769d: $57
    daa                                           ; $769e: $27
    ld h, c                                       ; $769f: $61
    ld d, l                                       ; $76a0: $55
    add c                                         ; $76a1: $81
    ei                                            ; $76a2: $fb
    xor e                                         ; $76a3: $ab
    ret nc                                        ; $76a4: $d0

    push hl                                       ; $76a5: $e5
    jp c, $a387                                   ; $76a6: $da $87 $a3

    db $ed                                        ; $76a9: $ed
    and b                                         ; $76aa: $a0
    ld hl, sp+$0b                                 ; $76ab: $f8 $0b
    and h                                         ; $76ad: $a4
    add $a1                                       ; $76ae: $c6 $a1
    adc d                                         ; $76b0: $8a
    ret nz                                        ; $76b1: $c0

    sbc l                                         ; $76b2: $9d
    sbc h                                         ; $76b3: $9c
    ld b, l                                       ; $76b4: $45
    ld [hl], $38                                  ; $76b5: $36 $38
    ld a, a                                       ; $76b7: $7f
    jr c, jr_067_76f0                             ; $76b8: $38 $36

    ld b, l                                       ; $76ba: $45
    add b                                         ; $76bb: $80
    ld b, [hl]                                    ; $76bc: $46
    xor a                                         ; $76bd: $af
    ld [hl], $36                                  ; $76be: $36 $36
    ldh [$8f], a                                  ; $76c0: $e0 $8f
    ld d, d                                       ; $76c2: $52
    ld d, l                                       ; $76c3: $55
    add c                                         ; $76c4: $81
    ld b, l                                       ; $76c5: $45
    ei                                            ; $76c6: $fb
    and h                                         ; $76c7: $a4
    db $ec                                        ; $76c8: $ec
    add h                                         ; $76c9: $84
    db $db                                        ; $76ca: $db
    add h                                         ; $76cb: $84
    call c, $da81                                 ; $76cc: $dc $81 $da
    add a                                         ; $76cf: $87
    and c                                         ; $76d0: $a1
    db $10                                        ; $76d1: $10
    and b                                         ; $76d2: $a0
    dec bc                                        ; $76d3: $0b
    and c                                         ; $76d4: $a1
    add hl, hl                                    ; $76d5: $29
    ld [c], a                                     ; $76d6: $e2
    ld d, d                                       ; $76d7: $52
    and b                                         ; $76d8: $a0
    adc d                                         ; $76d9: $8a
    and d                                         ; $76da: $a2
    sbc h                                         ; $76db: $9c
    jp hl                                         ; $76dc: $e9


    ld b, l                                       ; $76dd: $45
    rst $38                                       ; $76de: $ff
    ldh [$38], a                                  ; $76df: $e0 $38
    ret nz                                        ; $76e1: $c0

    ld [hl], $36                                  ; $76e2: $36 $36
    pop hl                                        ; $76e4: $e1
    jr c, jr_067_771f                             ; $76e5: $38 $38

    ld l, d                                       ; $76e7: $6a
    ld c, e                                       ; $76e8: $4b
    ld [hl], $45                                  ; $76e9: $36 $45
    ld l, a                                       ; $76eb: $6f
    and c                                         ; $76ec: $a1
    and d                                         ; $76ed: $a2
    db $ec                                        ; $76ee: $ec
    add l                                         ; $76ef: $85

jr_067_76f0:
    ret nc                                        ; $76f0: $d0

    push hl                                       ; $76f1: $e5
    call c, $c047                                 ; $76f2: $dc $47 $c0
    pop hl                                        ; $76f5: $e1
    jp c, $c281                                   ; $76f6: $da $81 $c2

    ld [hl], h                                    ; $76f9: $74
    push bc                                       ; $76fa: $c5
    dec a                                         ; $76fb: $3d
    and l                                         ; $76fc: $a5
    dec b                                         ; $76fd: $05
    pop bc                                        ; $76fe: $c1
    sub c                                         ; $76ff: $91
    add l                                         ; $7700: $85
    add a                                         ; $7701: $87
    rst $38                                       ; $7702: $ff
    ld [hl], c                                    ; $7703: $71
    ld [hl], c                                    ; $7704: $71
    ld [hl], c                                    ; $7705: $71
    ld [hl], d                                    ; $7706: $72
    ld l, h                                       ; $7707: $6c
    dec [hl]                                      ; $7708: $35
    dec [hl]                                      ; $7709: $35
    ld [hl], l                                    ; $770a: $75
    inc bc                                        ; $770b: $03
    ld h, [hl]                                    ; $770c: $66
    ld [hl], $72                                  ; $770d: $36 $72
    jp nz, $84ec                                  ; $770f: $c2 $ec $84

    ret nc                                        ; $7712: $d0

    add sp, -$3a                                  ; $7713: $e8 $c6
    xor $f4                                       ; $7715: $ee $f4
    ld h, [hl]                                    ; $7717: $66
    ld a, [$ed80]                                 ; $7718: $fa $80 $ed
    ld b, [hl]                                    ; $771b: $46
    add hl, sp                                    ; $771c: $39
    pop hl                                        ; $771d: $e1
    ld l, [hl]                                    ; $771e: $6e

jr_067_771f:
    ld [hl], h                                    ; $771f: $74
    or d                                          ; $7720: $b2
    ret nz                                        ; $7721: $c0

    ld [hl], a                                    ; $7722: $77
    ld h, l                                       ; $7723: $65
    ld a, l                                       ; $7724: $7d
    inc bc                                        ; $7725: $03
    ld b, [hl]                                    ; $7726: $46
    sub b                                         ; $7727: $90
    ei                                            ; $7728: $fb
    call z, Call_067_67f4                         ; $7729: $cc $f4 $67
    jp nz, $1462                                  ; $772c: $c2 $62 $14

    add c                                         ; $772f: $81
    or a                                          ; $7730: $b7
    ld h, b                                       ; $7731: $60
    push af                                       ; $7732: $f5
    ld h, b                                       ; $7733: $60
    ld l, h                                       ; $7734: $6c
    ld l, h                                       ; $7735: $6c
    jp $80b9                                      ; $7736: $c3 $b9 $80


    ld b, l                                       ; $7739: $45
    ld c, c                                       ; $773a: $49
    rst $38                                       ; $773b: $ff
    ldh [$36], a                                  ; $773c: $e0 $36
    ld l, c                                       ; $773e: $69
    ld [hl], d                                    ; $773f: $72
    ret nz                                        ; $7740: $c0

    ei                                            ; $7741: $fb
    dec sp                                        ; $7742: $3b
    ld [hl], $30                                  ; $7743: $36 $30
    and b                                         ; $7745: $a0
    jp $90c4                                      ; $7746: $c3 $c4 $90


    jp $b09e                                      ; $7749: $c3 $9e $b0


    inc c                                         ; $774c: $0c
    add $d0                                       ; $774d: $c6 $d0
    add sp, -$73                                  ; $774f: $e8 $8d
    ld h, d                                       ; $7751: $62
    inc d                                         ; $7752: $14
    add c                                         ; $7753: $81
    db $d3                                        ; $7754: $d3
    sub $36                                       ; $7755: $d6 $36
    add c                                         ; $7757: $81
    sub $fa                                       ; $7758: $d6 $fa
    ld a, l                                       ; $775a: $7d
    ld h, d                                       ; $775b: $62
    ld [$c0fa], a                                 ; $775c: $ea $fa $c0
    ld d, d                                       ; $775f: $52
    ld d, h                                       ; $7760: $54
    ld d, h                                       ; $7761: $54
    ld d, [hl]                                    ; $7762: $56
    add hl, sp                                    ; $7763: $39
    rst $08                                       ; $7764: $cf
    ld l, e                                       ; $7765: $6b
    ld l, h                                       ; $7766: $6c
    dec [hl]                                      ; $7767: $35
    ld [hl], $3c                                  ; $7768: $36 $3c
    jp nz, $e0c1                                  ; $776a: $c2 $c1 $e0

    call nz, $889e                                ; $776d: $c4 $9e $88
    inc c                                         ; $7770: $0c
    add $d0                                       ; $7771: $c6 $d0
    db $ed                                        ; $7773: $ed
    inc b                                         ; $7774: $04
    add b                                         ; $7775: $80
    ret c                                         ; $7776: $d8

    ei                                            ; $7777: $fb
    ld h, b                                       ; $7778: $60
    cp b                                          ; $7779: $b8
    add c                                         ; $777a: $81
    ld d, l                                       ; $777b: $55
    ld h, l                                       ; $777c: $65
    sbc a                                         ; $777d: $9f
    rst $38                                       ; $777e: $ff
    sbc h                                         ; $777f: $9c
    ld b, [hl]                                    ; $7780: $46
    ld c, d                                       ; $7781: $4a
    ld d, [hl]                                    ; $7782: $56
    add hl, sp                                    ; $7783: $39
    ld l, [hl]                                    ; $7784: $6e
    ld [hl], h                                    ; $7785: $74
    ld [hl], $67                                  ; $7786: $36 $67
    ld c, c                                       ; $7788: $49
    ld h, b                                       ; $7789: $60
    ld d, h                                       ; $778a: $54
    ldh a, [$80]                                  ; $778b: $f0 $80
    ld a, [hl+]                                   ; $778d: $2a
    add b                                         ; $778e: $80
    or [hl]                                       ; $778f: $b6
    sbc a                                         ; $7790: $9f
    inc c                                         ; $7791: $0c
    add $60                                       ; $7792: $c6 $60
    ret nc                                        ; $7794: $d0

    add sp, $3d                                   ; $7795: $e8 $3d
    pop bc                                        ; $7797: $c1
    daa                                           ; $7798: $27
    add b                                         ; $7799: $80
    or $61                                        ; $779a: $f6 $61
    ld b, c                                       ; $779c: $41
    ld h, b                                       ; $779d: $60
    reti                                          ; $779e: $d9


    db $dd                                        ; $779f: $dd
    ldh a, [$e5]                                  ; $77a0: $f0 $e5
    rst $38                                       ; $77a2: $ff
    and b                                         ; $77a3: $a0
    and c                                         ; $77a4: $a1
    xor [hl]                                      ; $77a5: $ae
    ld c, d                                       ; $77a6: $4a
    ld d, [hl]                                    ; $77a7: $56
    xor [hl]                                      ; $77a8: $ae
    ld [hl], $69                                  ; $77a9: $36 $69
    ccf                                           ; $77ab: $3f
    ld [hl], $4b                                  ; $77ac: $36 $4b
    ld d, d                                       ; $77ae: $52
    add e                                         ; $77af: $83
    add [hl]                                      ; $77b0: $86
    add l                                         ; $77b1: $85
    ld a, [$0c83]                                 ; $77b2: $fa $83 $0c

jr_067_77b5:
    push bc                                       ; $77b5: $c5
    and [hl]                                      ; $77b6: $a6
    ret nc                                        ; $77b7: $d0

    jp hl                                         ; $77b8: $e9


    db $d3                                        ; $77b9: $d3
    jp c, $8227                                   ; $77ba: $da $27 $82

    call nz, $d140                                ; $77bd: $c4 $40 $d1
    rst $30                                       ; $77c0: $f7
    ld h, b                                       ; $77c1: $60
    ret nc                                        ; $77c2: $d0

    ld sp, hl                                     ; $77c3: $f9
    ret nc                                        ; $77c4: $d0

    ldh a, [$e2]                                  ; $77c5: $f0 $e2
    inc b                                         ; $77c7: $04
    ld h, c                                       ; $77c8: $61
    sbc [hl]                                      ; $77c9: $9e
    xor a                                         ; $77ca: $af
    ld c, d                                       ; $77cb: $4a
    ld d, [hl]                                    ; $77cc: $56
    xor a                                         ; $77cd: $af
    rrca                                          ; $77ce: $0f
    ld [hl], $6b                                  ; $77cf: $36 $6b
    ld l, h                                       ; $77d1: $6c
    ld [hl], $c1                                  ; $77d2: $36 $c1
    ldh [$fc], a                                  ; $77d4: $e0 $fc
    add h                                         ; $77d6: $84
    inc c                                         ; $77d7: $0c
    call nz, $ead0                                ; $77d8: $c4 $d0 $ea
    sub c                                         ; $77db: $91
    rst $10                                       ; $77dc: $d7
    or [hl]                                       ; $77dd: $b6
    add h                                         ; $77de: $84
    jr c, jr_067_7842                             ; $77df: $38 $61

Jump_067_77e1:
    or $40                                        ; $77e1: $f6 $40
    call nc, $e2f0                                ; $77e3: $d4 $f0 $e2
    inc b                                         ; $77e6: $04
    ld h, c                                       ; $77e7: $61
    sbc [hl]                                      ; $77e8: $9e
    rst $38                                       ; $77e9: $ff
    sub c                                         ; $77ea: $91
    ld c, d                                       ; $77eb: $4a
    ld e, b                                       ; $77ec: $58
    add hl, sp                                    ; $77ed: $39
    dec [hl]                                      ; $77ee: $35
    ld l, [hl]                                    ; $77ef: $6e
    ld [hl], b                                    ; $77f0: $70
    ld [hl], c                                    ; $77f1: $71
    ld c, $72                                     ; $77f2: $0e $72
    add c                                         ; $77f4: $81
    or [hl]                                       ; $77f5: $b6
    sbc l                                         ; $77f6: $9d
    sbc a                                         ; $77f7: $9f
    inc c                                         ; $77f8: $0c
    ret                                           ; $77f9: $c9


    ret nc                                        ; $77fa: $d0

    add sp, $37                                   ; $77fb: $e8 $37
    add [hl]                                      ; $77fd: $86
    ld hl, sp+$63                                 ; $77fe: $f8 $63
    ld a, h                                       ; $7800: $7c
    daa                                           ; $7801: $27
    add e                                         ; $7802: $83
    inc b                                         ; $7803: $04
    ld h, c                                       ; $7804: $61
    or [hl]                                       ; $7805: $b6
    sub b                                         ; $7806: $90
    xor [hl]                                      ; $7807: $ae
    ld d, [hl]                                    ; $7808: $56

jr_067_7809:
    ld a, [hl-]                                   ; $7809: $3a
    cp a                                          ; $780a: $bf
    and b                                         ; $780b: $a0
    inc bc                                        ; $780c: $03
    scf                                           ; $780d: $37
    xor [hl]                                      ; $780e: $ae
    pop bc                                        ; $780f: $c1
    ldh [$3b], a                                  ; $7810: $e0 $3b
    ld h, [hl]                                    ; $7812: $66
    jp nc, $d0a6                                  ; $7813: $d2 $a6 $d0

    push hl                                       ; $7816: $e5
    di                                            ; $7817: $f3
    and a                                         ; $7818: $a7
    ld hl, sp+$62                                 ; $7819: $f8 $62
    call c, $8627                                 ; $781b: $dc $27 $86
    ld b, e                                       ; $781e: $43
    ld h, b                                       ; $781f: $60
    xor a                                         ; $7820: $af
    ld c, b                                       ; $7821: $48
    ld [hl], $b8                                  ; $7822: $36 $b8
    add b                                         ; $7824: $80
    xor [hl]                                      ; $7825: $ae
    xor a                                         ; $7826: $af
    ret nz                                        ; $7827: $c0

    ld b, $d0                                     ; $7828: $06 $d0
    ret nc                                        ; $782a: $d0

    rst $20                                       ; $782b: $e7
    xor l                                         ; $782c: $ad
    add [hl]                                      ; $782d: $86
    jr z, jr_067_77b5                             ; $782e: $28 $85

    dec h                                         ; $7830: $25
    add h                                         ; $7831: $84
    or a                                          ; $7832: $b7
    ld b, b                                       ; $7833: $40
    ld b, h                                       ; $7834: $44
    ld c, l                                       ; $7835: $4d
    rst $38                                       ; $7836: $ff
    ld d, l                                       ; $7837: $55
    inc a                                         ; $7838: $3c
    ld a, [hl-]                                   ; $7839: $3a
    xor [hl]                                      ; $783a: $ae
    xor a                                         ; $783b: $af
    ld b, [hl]                                    ; $783c: $46
    sub b                                         ; $783d: $90
    and c                                         ; $783e: $a1
    jr nc, jr_067_7809                            ; $783f: $30 $c8

    xor [hl]                                      ; $7841: $ae

jr_067_7842:
    ret nc                                        ; $7842: $d0

    jp hl                                         ; $7843: $e9


    db $ec                                        ; $7844: $ec
    jr nz, @+$79                                  ; $7845: $20 $77

    add b                                         ; $7847: $80
    db $e4                                        ; $7848: $e4
    push hl                                       ; $7849: $e5
    sbc [hl]                                      ; $784a: $9e
    daa                                           ; $784b: $27
    ldh a, [$e1]                                  ; $784c: $f0 $e1
    cp $bd                                        ; $784e: $fe $bd
    and c                                         ; $7850: $a1
    ld d, d                                       ; $7851: $52
    ld d, l                                       ; $7852: $55
    ld [hl], $36                                  ; $7853: $36 $36
    xor a                                         ; $7855: $af
    ld a, c                                       ; $7856: $79
    ld a, l                                       ; $7857: $7d
    pop bc                                        ; $7858: $c1
    sub c                                         ; $7859: $91
    ld sp, $e041                                  ; $785a: $31 $41 $e0
    db $ed                                        ; $785d: $ed
    ret nc                                        ; $785e: $d0

    and $f7                                       ; $785f: $e6 $f7
    ld h, b                                       ; $7861: $60
    scf                                           ; $7862: $37
    add b                                         ; $7863: $80
    rst $10                                       ; $7864: $d7
    and $f1                                       ; $7865: $e6 $f1
    rst $20                                       ; $7867: $e7
    xor l                                         ; $7868: $ad
    ld h, h                                       ; $7869: $64
    ldh a, [$e4]                                  ; $786a: $f0 $e4
    cp a                                          ; $786c: $bf
    pop bc                                        ; $786d: $c1
    ld b, h                                       ; $786e: $44
    ld c, e                                       ; $786f: $4b
    ld d, d                                       ; $7870: $52
    ld b, h                                       ; $7871: $44
    add a                                         ; $7872: $87
    ld a, c                                       ; $7873: $79
    ld a, [hl]                                    ; $7874: $7e
    ld a, a                                       ; $7875: $7f
    cp a                                          ; $7876: $bf
    ld [c], a                                     ; $7877: $e2
    ldh [$ed], a                                  ; $7878: $e0 $ed
    ret nc                                        ; $787a: $d0

    and $c9                                       ; $787b: $e6 $c9
    and e                                         ; $787d: $a3
    jp c, Jump_000_0cf0                           ; $787e: $da $f0 $0c

    ld hl, $2200                                  ; $7881: $21 $00 $22
    ldh a, [$e4]                                  ; $7884: $f0 $e4
    ld b, c                                       ; $7886: $41
    ld b, b                                       ; $7887: $40
    jp Jump_067_5245                              ; $7888: $c3 $45 $52


    ld e, b                                       ; $788b: $58
    ld l, a                                       ; $788c: $6f
    ld b, h                                       ; $788d: $44
    add b                                         ; $788e: $80
    scf                                           ; $788f: $37
    scf                                           ; $7890: $37
    ld [hl], c                                    ; $7891: $71
    ld b, b                                       ; $7892: $40
    or [hl]                                       ; $7893: $b6
    sbc a                                         ; $7894: $9f
    ldh [$ed], a                                  ; $7895: $e0 $ed
    ret nz                                        ; $7897: $c0

    ret nc                                        ; $7898: $d0

    and $f7                                       ; $7899: $e6 $f7
    ld h, b                                       ; $789b: $60
    add c                                         ; $789c: $81
    ld b, b                                       ; $789d: $40
    ldh a, [rSCY]                                 ; $789e: $f0 $42
    nop                                           ; $78a0: $00
    ld [hl+], a                                   ; $78a1: $22
    ldh a, [$e6]                                  ; $78a2: $f0 $e6
    sbc [hl]                                      ; $78a4: $9e
    call nz, $4617                                ; $78a5: $c4 $17 $46
    xor [hl]                                      ; $78a8: $ae
    ld d, [hl]                                    ; $78a9: $56
    cp $80                                        ; $78aa: $fe $80
    inc a                                         ; $78ac: $3c
    add c                                         ; $78ad: $81
    and c                                         ; $78ae: $a1
    ldh a, [rNR42]                                ; $78af: $f0 $21
    ldh [$ec], a                                  ; $78b1: $e0 $ec
    adc b                                         ; $78b3: $88
    push bc                                       ; $78b4: $c5
    ld h, h                                       ; $78b5: $64
    rst $30                                       ; $78b6: $f7
    ld h, b                                       ; $78b7: $60
    or c                                          ; $78b8: $b1
    ld b, e                                       ; $78b9: $43
    ld [$2300], a                                 ; $78ba: $ea $00 $23
    ldh a, [$e5]                                  ; $78bd: $f0 $e5
    ccf                                           ; $78bf: $3f
    pop bc                                        ; $78c0: $c1
    xor a                                         ; $78c1: $af
    ccf                                           ; $78c2: $3f
    ld [hl], $62                                  ; $78c3: $36 $62
    halt                                          ; $78c5: $76
    dec [hl]                                      ; $78c6: $35
    ld [hl], $8a                                  ; $78c7: $36 $8a
    add c                                         ; $78c9: $81
    and b                                         ; $78ca: $a0
    or b                                          ; $78cb: $b0
    jr nz, @-$0e                                  ; $78cc: $20 $f0

    ldh [$ec], a                                  ; $78ce: $e0 $ec
    ret nc                                        ; $78d0: $d0

    push hl                                       ; $78d1: $e5
    cpl                                           ; $78d2: $2f
    adc [hl]                                      ; $78d3: $8e
    rst $28                                       ; $78d4: $ef
    ld h, e                                       ; $78d5: $63
    sbc a                                         ; $78d6: $9f
    or [hl]                                       ; $78d7: $b6
    jp Jump_000_06c3                              ; $78d8: $c3 $c3 $06


    pop bc                                        ; $78db: $c1
    db $e3                                        ; $78dc: $e3
    xor [hl]                                      ; $78dd: $ae
    add c                                         ; $78de: $81
    ld b, c                                       ; $78df: $41
    add b                                         ; $78e0: $80
    add b                                         ; $78e1: $80
    ld [c], a                                     ; $78e2: $e2
    ldh [$e9], a                                  ; $78e3: $e0 $e9
    rst $38                                       ; $78e5: $ff
    ld h, l                                       ; $78e6: $65
    jr nc, jr_067_78f6                            ; $78e7: $30 $0d

    sbc $f8                                       ; $78e9: $de $f8
    rlca                                          ; $78eb: $07
    call nz, $45c4                                ; $78ec: $c4 $c4 $45
    ld a, [hl-]                                   ; $78ef: $3a
    ld b, b                                       ; $78f0: $40
    add b                                         ; $78f1: $80
    ld b, b                                       ; $78f2: $40
    xor a                                         ; $78f3: $af
    pop bc                                        ; $78f4: $c1
    adc h                                         ; $78f5: $8c

jr_067_78f6:
    jr nc, jr_067_791c                            ; $78f6: $30 $24

    call c, $e96b                                 ; $78f8: $dc $6b $e9
    inc b                                         ; $78fb: $04
    jr nc, jr_067_7909                            ; $78fc: $30 $0b

    add hl, hl                                    ; $78fe: $29
    ld b, h                                       ; $78ff: $44
    sbc $df                                       ; $7900: $de $df
    db $ed                                        ; $7902: $ed
    and c                                         ; $7903: $a1
    push bc                                       ; $7904: $c5
    nop                                           ; $7905: $00
    sub b                                         ; $7906: $90
    xor [hl]                                      ; $7907: $ae
    ld b, b                                       ; $7908: $40

jr_067_7909:
    add b                                         ; $7909: $80
    ld a, [hl-]                                   ; $790a: $3a
    xor [hl]                                      ; $790b: $ae
    ld b, [hl]                                    ; $790c: $46
    ld h, e                                       ; $790d: $63
    ld b, [hl]                                    ; $790e: $46
    adc h                                         ; $790f: $8c
    cp a                                          ; $7910: $bf
    pop bc                                        ; $7911: $c1
    inc h                                         ; $7912: $24
    push bc                                       ; $7913: $c5
    ret nc                                        ; $7914: $d0

    ld [$d5d8], a                                 ; $7915: $ea $d8 $d5
    jr nc, jr_067_7925                            ; $7918: $30 $0b

    xor $04                                       ; $791a: $ee $04

jr_067_791c:
    call nz, $e1e0                                ; $791c: $c4 $e0 $e1
    sbc [hl]                                      ; $791f: $9e
    ld a, d                                       ; $7920: $7a
    ld bc, $42af                                  ; $7921: $01 $af $42
    ld l, [hl]                                    ; $7924: $6e

jr_067_7925:
    rst $00                                       ; $7925: $c7
    ld [hl], h                                    ; $7926: $74
    ld a, [hl-]                                   ; $7927: $3a
    xor a                                         ; $7928: $af
    ld a, [hl+]                                   ; $7929: $2a
    jr nz, jr_067_79a8                            ; $792a: $20 $7c

    ld b, b                                       ; $792c: $40
    ld a, b                                       ; $792d: $78
    inc bc                                        ; $792e: $03
    db $d3                                        ; $792f: $d3
    ret nc                                        ; $7930: $d0

    ret c                                         ; $7931: $d8

    ret nc                                        ; $7932: $d0

    db $eb                                        ; $7933: $eb
    jr nc, jr_067_7942                            ; $7934: $30 $0c

    inc b                                         ; $7936: $04
    push bc                                       ; $7937: $c5
    ld [c], a                                     ; $7938: $e2
    db $e3                                        ; $7939: $e3
    jr c, @+$03                                   ; $793a: $38 $01

    jp $bf46                                      ; $793c: $c3 $46 $bf


    add hl, sp                                    ; $793f: $39
    dec [hl]                                      ; $7940: $35
    ld l, c                                       ; $7941: $69

jr_067_7942:
    dec [hl]                                      ; $7942: $35
    add hl, sp                                    ; $7943: $39
    ld b, l                                       ; $7944: $45
    ldh a, [rSB]                                  ; $7945: $f0 $01
    call nz, $9003                                ; $7947: $c4 $03 $90
    and c                                         ; $794a: $a1
    nop                                           ; $794b: $00
    ld b, c                                       ; $794c: $41
    ret nc                                        ; $794d: $d0

    db $ec                                        ; $794e: $ec
    ld a, [hl-]                                   ; $794f: $3a
    add c                                         ; $7950: $81
    jr nc, jr_067_795c                            ; $7951: $30 $09

    inc b                                         ; $7953: $04
    add $43                                       ; $7954: $c6 $43
    inc bc                                        ; $7956: $03
    add a                                         ; $7957: $87
    ld b, l                                       ; $7958: $45
    ld a, [hl-]                                   ; $7959: $3a
    dec [hl]                                      ; $795a: $35
    ld a, a                                       ; $795b: $7f

jr_067_795c:
    ld h, c                                       ; $795c: $61
    nop                                           ; $795d: $00
    add d                                         ; $795e: $82
    add hl, sp                                    ; $795f: $39
    nop                                           ; $7960: $00
    add hl, bc                                    ; $7961: $09
    add b                                         ; $7962: $80
    rst $10                                       ; $7963: $d7
    pop bc                                        ; $7964: $c1
    jp nc, $ead0                                  ; $7965: $d2 $d0 $ea

    di                                            ; $7968: $f3
    and c                                         ; $7969: $a1
    jr nc, jr_067_7975                            ; $796a: $30 $09

    db $f4                                        ; $796c: $f4
    and a                                         ; $796d: $a7
    add b                                         ; $796e: $80
    pop hl                                        ; $796f: $e1
    sub c                                         ; $7970: $91
    add hl, sp                                    ; $7971: $39
    ld h, c                                       ; $7972: $61
    dec [hl]                                      ; $7973: $35
    ld b, b                                       ; $7974: $40

jr_067_7975:
    add c                                         ; $7975: $81
    ccf                                           ; $7976: $3f
    add d                                         ; $7977: $82
    cpl                                           ; $7978: $2f
    nop                                           ; $7979: $00
    add hl, bc                                    ; $797a: $09
    add c                                         ; $797b: $81
    jp c, $d0d3                                   ; $797c: $da $d3 $d0

    ld [$f090], a                                 ; $797f: $ea $90 $f0
    ldh [$30], a                                  ; $7982: $e0 $30
    ld a, [bc]                                    ; $7984: $0a
    db $f4                                        ; $7985: $f4
    and [hl]                                      ; $7986: $a6
    ld b, c                                       ; $7987: $41
    pop hl                                        ; $7988: $e1
    sub b                                         ; $7989: $90
    ld b, c                                       ; $798a: $41
    ldh [$33], a                                  ; $798b: $e0 $33
    ld hl, $033c                                  ; $798d: $21 $3c $03
    ld b, h                                       ; $7990: $44
    xor [hl]                                      ; $7991: $ae
    db $fd                                        ; $7992: $fd
    inc b                                         ; $7993: $04
    sub c                                         ; $7994: $91
    nop                                           ; $7995: $00
    ld c, e                                       ; $7996: $4b
    add b                                         ; $7997: $80
    ret nc                                        ; $7998: $d0

    add sp, -$10                                  ; $7999: $e8 $f0
    ldh [$30], a                                  ; $799b: $e0 $30
    dec bc                                        ; $799d: $0b
    ret c                                         ; $799e: $d8

    di                                            ; $799f: $f3
    inc h                                         ; $79a0: $24
    pop bc                                        ; $79a1: $c1
    ld [c], a                                     ; $79a2: $e2
    add c                                         ; $79a3: $81
    nop                                           ; $79a4: $00
    ld h, l                                       ; $79a5: $65
    ld h, [hl]                                    ; $79a6: $66
    ld a, [c]                                     ; $79a7: $f2

jr_067_79a8:
    nop                                           ; $79a8: $00
    ld [hl], $45                                  ; $79a9: $36 $45
    ld de, $3baf                                  ; $79ab: $11 $af $3b
    rlca                                          ; $79ae: $07
    dec de                                        ; $79af: $1b
    add b                                         ; $79b0: $80
    ret nc                                        ; $79b1: $d0

    jp hl                                         ; $79b2: $e9


    and b                                         ; $79b3: $a0
    ld a, $80                                     ; $79b4: $3e $80
    jr nc, jr_067_79c2                            ; $79b6: $30 $0a

    inc bc                                        ; $79b8: $03
    add l                                         ; $79b9: $85
    cp [hl]                                       ; $79ba: $be
    ld b, d                                       ; $79bb: $42
    ret nz                                        ; $79bc: $c0

    ld a, c                                       ; $79bd: $79
    ld a, [hl]                                    ; $79be: $7e
    add hl, sp                                    ; $79bf: $39
    dec [hl]                                      ; $79c0: $35
    ld l, b                                       ; $79c1: $68

jr_067_79c2:
    cp a                                          ; $79c2: $bf
    ldh [$36], a                                  ; $79c3: $e0 $36
    ld bc, $0145                                  ; $79c5: $01 $45 $01
    ld b, b                                       ; $79c8: $40
    nop                                           ; $79c9: $00
    ld h, d                                       ; $79ca: $62
    ld e, [hl]                                    ; $79cb: $5e
    ld hl, $ecd0                                  ; $79cc: $21 $d0 $ec
    ld a, a                                       ; $79cf: $7f
    ld [hl+], a                                   ; $79d0: $22
    jr nc, jr_067_79e1                            ; $79d1: $30 $0e

    ld b, d                                       ; $79d3: $42
    jp nz, $8065                                  ; $79d4: $c2 $65 $80

    ld b, b                                       ; $79d7: $40
    pop hl                                        ; $79d8: $e1
    ld [hl], a                                    ; $79d9: $77
    ld a, l                                       ; $79da: $7d
    ldh [$80], a                                  ; $79db: $e0 $80
    ld hl, $ae91                                  ; $79dd: $21 $91 $ae
    inc a                                         ; $79e0: $3c

jr_067_79e1:
    ld h, b                                       ; $79e1: $60
    jp nz, $01de                                  ; $79e2: $c2 $de $01

    sbc a                                         ; $79e5: $9f
    ret nc                                        ; $79e6: $d0

    pop af                                        ; $79e7: $f1
    jr nc, jr_067_79f3                            ; $79e8: $30 $09

    di                                            ; $79ea: $f3
    ld bc, $e201                                  ; $79eb: $01 $01 $e2
    add d                                         ; $79ee: $82
    add e                                         ; $79ef: $83
    ld sp, hl                                     ; $79f0: $f9
    ld b, l                                       ; $79f1: $45
    ld [hl], h                                    ; $79f2: $74

jr_067_79f3:
    ld bc, $e07d                                  ; $79f3: $01 $7d $e0
    add hl, sp                                    ; $79f6: $39
    ld b, [hl]                                    ; $79f7: $46
    ld b, l                                       ; $79f8: $45
    ld b, c                                       ; $79f9: $41
    xor a                                         ; $79fa: $af
    ret nz                                        ; $79fb: $c0

    inc a                                         ; $79fc: $3c
    ld hl, $0675                                  ; $79fd: $21 $75 $06
    ret nc                                        ; $7a00: $d0

    add sp, $30                                   ; $7a01: $e8 $30
    dec c                                         ; $7a03: $0d
    ld a, b                                       ; $7a04: $78
    ld [c], a                                     ; $7a05: $e2
    ld bc, $85c1                                  ; $7a06: $01 $c1 $85
    add [hl]                                      ; $7a09: $86

jr_067_7a0a:
    rst $38                                       ; $7a0a: $ff
    add e                                         ; $7a0b: $83
    ld b, [hl]                                    ; $7a0c: $46
    ld b, h                                       ; $7a0d: $44
    inc a                                         ; $7a0e: $3c
    dec [hl]                                      ; $7a0f: $35
    dec [hl]                                      ; $7a10: $35
    ld l, d                                       ; $7a11: $6a
    dec [hl]                                      ; $7a12: $35
    rlca                                          ; $7a13: $07
    ld a, [hl-]                                   ; $7a14: $3a
    ld b, e                                       ; $7a15: $43
    ld [hl], $f8                                  ; $7a16: $36 $f8
    ld b, b                                       ; $7a18: $40
    ld a, [$7501]                                 ; $7a19: $fa $01 $75
    nop                                           ; $7a1c: $00
    or $82                                        ; $7a1d: $f6 $82
    ret nc                                        ; $7a1f: $d0

    add sp, -$08                                  ; $7a20: $e8 $f8
    jr nc, jr_067_7a31                            ; $7a22: $30 $0d

    ldh a, [$e2]                                  ; $7a24: $f0 $e2
    ld [hl-], a                                   ; $7a26: $32
    ld bc, $8591                                  ; $7a27: $01 $91 $85
    adc e                                         ; $7a2a: $8b
    ld b, [hl]                                    ; $7a2b: $46
    xor [hl]                                      ; $7a2c: $ae
    jr @-$40                                      ; $7a2d: $18 $be

    ld b, b                                       ; $7a2f: $40
    ret nz                                        ; $7a30: $c0

jr_067_7a31:
    ldh [rPCM34], a                               ; $7a31: $e0 $77
    pop bc                                        ; $7a33: $c1
    ld h, d                                       ; $7a34: $62
    ld a, h                                       ; $7a35: $7c
    ld sp, hl                                     ; $7a36: $f9
    add b                                         ; $7a37: $80
    ld l, d                                       ; $7a38: $6a
    and b                                         ; $7a39: $a0
    or [hl]                                       ; $7a3a: $b6
    add d                                         ; $7a3b: $82
    ldh a, [$d0]                                  ; $7a3c: $f0 $d0
    add sp, $30                                   ; $7a3e: $e8 $30
    dec c                                         ; $7a40: $0d
    ldh a, [$e4]                                  ; $7a41: $f0 $e4
    cp a                                          ; $7a43: $bf
    pop hl                                        ; $7a44: $e1
    add d                                         ; $7a45: $82
    add e                                         ; $7a46: $83
    xor a                                         ; $7a47: $af
    add hl, sp                                    ; $7a48: $39
    rst $18                                       ; $7a49: $df
    jr c, jr_067_7a83                             ; $7a4a: $38 $37

    add c                                         ; $7a4c: $81
    ld [hl], $39                                  ; $7a4d: $36 $39
    ld a, b                                       ; $7a4f: $78
    ld b, b                                       ; $7a50: $40
    ld h, d                                       ; $7a51: $62
    ld h, a                                       ; $7a52: $67
    ld bc, $7740                                  ; $7a53: $01 $40 $77
    ld h, b                                       ; $7a56: $60
    scf                                           ; $7a57: $37
    add $d0                                       ; $7a58: $c6 $d0
    rst $20                                       ; $7a5a: $e7
    jr nc, @+$0f                                  ; $7a5b: $30 $0d

    ldh a, [$e5]                                  ; $7a5d: $f0 $e5
    ld a, h                                       ; $7a5f: $7c
    ret nz                                        ; $7a60: $c0

    ld a, $e0                                     ; $7a61: $3e $e0
    ld e, a                                       ; $7a63: $5f
    ld b, l                                       ; $7a64: $45
    ld b, l                                       ; $7a65: $45
    add e                                         ; $7a66: $83
    add h                                         ; $7a67: $84
    ld b, l                                       ; $7a68: $45
    ld hl, sp-$5f                                 ; $7a69: $f8 $a1
    ld l, c                                       ; $7a6b: $69
    jr c, @-$3e                                   ; $7a6c: $38 $c0

    ldh [$b8], a                                  ; $7a6e: $e0 $b8
    nop                                           ; $7a70: $00
    ld [hl], $83                                  ; $7a71: $36 $83
    ret nc                                        ; $7a73: $d0

    jp hl                                         ; $7a74: $e9


    ld bc, $4093                                  ; $7a75: $01 $93 $40
    jr nz, jr_067_7a0a                            ; $7a78: $20 $90

    call nz, Call_000_3c91                        ; $7a7a: $c4 $91 $3c
    db $fd                                        ; $7a7d: $fd
    ret nz                                        ; $7a7e: $c0

    ld b, e                                       ; $7a7f: $43
    jr nz, @+$48                                  ; $7a80: $20 $46

    add hl, sp                                    ; $7a82: $39

jr_067_7a83:
    dec sp                                        ; $7a83: $3b
    dec [hl]                                      ; $7a84: $35
    scf                                           ; $7a85: $37
    and e                                         ; $7a86: $a3
    ld hl, sp+$01                                 ; $7a87: $f8 $01
    or b                                          ; $7a89: $b0
    ld [hl], e                                    ; $7a8a: $73
    ld b, a                                       ; $7a8b: $47
    rst $00                                       ; $7a8c: $c7
    ld h, a                                       ; $7a8d: $67
    inc h                                         ; $7a8e: $24
    sub c                                         ; $7a8f: $91
    ld a, $a2                                     ; $7a90: $3e $a2
    add l                                         ; $7a92: $85
    add a                                         ; $7a93: $87
    add d                                         ; $7a94: $82
    jr nz, @-$6d                                  ; $7a95: $20 $91

    rrca                                          ; $7a97: $0f
    ld b, [hl]                                    ; $7a98: $46
    ld b, e                                       ; $7a99: $43
    scf                                           ; $7a9a: $37
    jr c, jr_067_7ad4                             ; $7a9b: $38 $37

    and e                                         ; $7a9d: $a3
    or a                                          ; $7a9e: $b7
    and a                                         ; $7a9f: $a7
    rst $30                                       ; $7aa0: $f7
    dec h                                         ; $7aa1: $25
    ld a, [c]                                     ; $7aa2: $f2
    ld h, d                                       ; $7aa3: $62
    and b                                         ; $7aa4: $a0
    jr nc, jr_067_7aaf                            ; $7aa5: $30 $08

    ldh a, [$e6]                                  ; $7aa7: $f0 $e6
    inc a                                         ; $7aa9: $3c
    and e                                         ; $7aaa: $a3
    ld c, l                                       ; $7aab: $4d
    pop bc                                        ; $7aac: $c1
    or $60                                        ; $7aad: $f6 $60

jr_067_7aaf:
    sub c                                         ; $7aaf: $91
    dec [hl]                                      ; $7ab0: $35
    jp nz, $0139                                  ; $7ab1: $c2 $39 $01

    ld b, [hl]                                    ; $7ab4: $46
    ld [$f661], a                                 ; $7ab5: $ea $61 $f6
    nop                                           ; $7ab8: $00
    call nc, $5068                                ; $7ab9: $d4 $68 $50
    ld [bc], a                                    ; $7abc: $02
    jr nc, jr_067_7acc                            ; $7abd: $30 $0d

    db $f4                                        ; $7abf: $f4
    ld h, d                                       ; $7ac0: $62
    ei                                            ; $7ac1: $fb
    add e                                         ; $7ac2: $83
    ld [hl], a                                    ; $7ac3: $77
    jp $c3c4                                      ; $7ac4: $c3 $c4 $c3


    or $60                                        ; $7ac7: $f6 $60
    sub b                                         ; $7ac9: $90
    sub c                                         ; $7aca: $91
    ld b, [hl]                                    ; $7acb: $46

jr_067_7acc:
    ld [hl], e                                    ; $7acc: $73
    add b                                         ; $7acd: $80
    inc bc                                        ; $7ace: $03
    ld a, [hl-]                                   ; $7acf: $3a
    ld b, l                                       ; $7ad0: $45
    ld [$f361], a                                 ; $7ad1: $ea $61 $f3

jr_067_7ad4:
    ld bc, $67d4                                  ; $7ad4: $01 $d4 $67
    ld d, d                                       ; $7ad7: $52
    jp nz, $0830                                  ; $7ad8: $c2 $30 $08

    ldh a, [$e6]                                  ; $7adb: $f0 $e6
    xor [hl]                                      ; $7add: $ae
    ld a, h                                       ; $7ade: $7c
    ld hl, $9d9d                                  ; $7adf: $21 $9d $9d
    or [hl]                                       ; $7ae2: $b6
    pop bc                                        ; $7ae3: $c1
    pop hl                                        ; $7ae4: $e1
    or [hl]                                       ; $7ae5: $b6
    ld hl, sp-$20                                 ; $7ae6: $f8 $e0
    sub c                                         ; $7ae8: $91
    ld a, [hl]                                    ; $7ae9: $7e
    ld a, [$3cc0]                                 ; $7aea: $fa $c0 $3c
    ld b, h                                       ; $7aed: $44
    sub c                                         ; $7aee: $91
    sub c                                         ; $7aef: $91
    ld b, l                                       ; $7af0: $45
    ld b, c                                       ; $7af1: $41
    ld [hl], d                                    ; $7af2: $72
    and b                                         ; $7af3: $a0
    nop                                           ; $7af4: $00
    ld [hl], e                                    ; $7af5: $73
    ld bc, $24c8                                  ; $7af6: $01 $c8 $24
    dec c                                         ; $7af9: $0d
    pop bc                                        ; $7afa: $c1
    jr nc, jr_067_7b06                            ; $7afb: $30 $09

    ldh a, [$e7]                                  ; $7afd: $f0 $e7
    ld sp, hl                                     ; $7aff: $f9
    and c                                         ; $7b00: $a1
    jr c, jr_067_7a83                             ; $7b01: $38 $80

    pop bc                                        ; $7b03: $c1
    ldh [$fe], a                                  ; $7b04: $e0 $fe

jr_067_7b06:
    add l                                         ; $7b06: $85
    ld h, b                                       ; $7b07: $60
    sbc a                                         ; $7b08: $9f
    or [hl]                                       ; $7b09: $b6
    sub c                                         ; $7b0a: $91
    ld b, l                                       ; $7b0b: $45
    ld b, e                                       ; $7b0c: $43
    ld b, c                                       ; $7b0d: $41
    ld b, l                                       ; $7b0e: $45
    adc a                                         ; $7b0f: $8f
    ld b, [hl]                                    ; $7b10: $46
    ld b, l                                       ; $7b11: $45
    ld [hl], $a8                                  ; $7b12: $36 $a8
    ld sp, $72a0                                  ; $7b14: $31 $a0 $72
    ld h, c                                       ; $7b17: $61
    ld hl, sp+$24                                 ; $7b18: $f8 $24
    db $d3                                        ; $7b1a: $d3
    ld bc, $27da                                  ; $7b1b: $01 $da $27
    add d                                         ; $7b1e: $82
    jr nc, jr_067_7b27                            ; $7b1f: $30 $06

    ldh a, [$e5]                                  ; $7b21: $f0 $e5
    inc h                                         ; $7b23: $24
    ld b, d                                       ; $7b24: $42
    inc e                                         ; $7b25: $1c
    ld h, b                                       ; $7b26: $60

jr_067_7b27:
    call z, $f881                                 ; $7b27: $cc $81 $f8
    ld [c], a                                     ; $7b2a: $e2
    dec sp                                        ; $7b2b: $3b
    or [hl]                                       ; $7b2c: $b6
    jp $e13b                                      ; $7b2d: $c3 $3b $e1


    ld [hl], $66                                  ; $7b30: $36 $66
    and a                                         ; $7b32: $a7
    cp a                                          ; $7b33: $bf
    ldh [$ac], a                                  ; $7b34: $e0 $ac
    pop hl                                        ; $7b36: $e1
    ld [bc], a                                    ; $7b37: $02
    ret z                                         ; $7b38: $c8

    inc h                                         ; $7b39: $24
    rst $10                                       ; $7b3a: $d7
    add [hl]                                      ; $7b3b: $86
    add h                                         ; $7b3c: $84
    jr nc, jr_067_7b44                            ; $7b3d: $30 $05

    ldh a, [$e5]                                  ; $7b3f: $f0 $e5
    inc d                                         ; $7b41: $14
    ld b, d                                       ; $7b42: $42
    db $ec                                        ; $7b43: $ec

jr_067_7b44:
    ld b, d                                       ; $7b44: $42
    ld d, $20                                     ; $7b45: $16 $20
    or $e4                                        ; $7b47: $f6 $e4
    ld b, c                                       ; $7b49: $41
    and c                                         ; $7b4a: $a1
    call nz, $c0ba                                ; $7b4b: $c4 $ba $c0
    ld [hl], $66                                  ; $7b4e: $36 $66
    ld l, b                                       ; $7b50: $68
    and e                                         ; $7b51: $a3
    ld bc, $7e67                                  ; $7b52: $01 $67 $7e
    ldh [$39], a                                  ; $7b55: $e0 $39
    ret nz                                        ; $7b57: $c0

    ret z                                         ; $7b58: $c8

    inc h                                         ; $7b59: $24
    scf                                           ; $7b5a: $37
    add [hl]                                      ; $7b5b: $86
    jr nc, jr_067_7b62                            ; $7b5c: $30 $04

    daa                                           ; $7b5e: $27
    add l                                         ; $7b5f: $85
    inc d                                         ; $7b60: $14
    ld b, d                                       ; $7b61: $42

jr_067_7b62:
    ldh [rNR32], a                                ; $7b62: $e0 $1c
    ld h, d                                       ; $7b64: $62
    ld b, $20                                     ; $7b65: $06 $20
    db $e4                                        ; $7b67: $e4
    ld b, c                                       ; $7b68: $41
    ld a, $e1                                     ; $7b69: $3e $e1
    pop bc                                        ; $7b6b: $c1
    ldh [$35], a                                  ; $7b6c: $e0 $35
    dec [hl]                                      ; $7b6e: $35
    ld l, h                                       ; $7b6f: $6c
    rlca                                          ; $7b70: $07
    xor c                                         ; $7b71: $a9
    xor b                                         ; $7b72: $a8
    ld b, d                                       ; $7b73: $42
    xor a                                         ; $7b74: $af
    ld hl, $24f2                                  ; $7b75: $21 $f2 $24
    jr nc, jr_067_7b86                            ; $7b78: $30 $0c

    db $ed                                        ; $7b7a: $ed
    xor h                                         ; $7b7b: $ac
    inc d                                         ; $7b7c: $14
    and d                                         ; $7b7d: $a2
    cp $2b                                        ; $7b7e: $fe $2b
    add h                                         ; $7b80: $84
    ld b, l                                       ; $7b81: $45
    ld [hl], $ab                                  ; $7b82: $36 $ab
    xor d                                         ; $7b84: $aa
    and e                                         ; $7b85: $a3

jr_067_7b86:
    dec [hl]                                      ; $7b86: $35
    ld l, h                                       ; $7b87: $6c
    inc bc                                        ; $7b88: $03
    ld l, a                                       ; $7b89: $6f
    ld l, [hl]                                    ; $7b8a: $6e
    add b                                         ; $7b8b: $80
    ldh [$fa], a                                  ; $7b8c: $e0 $fa
    xor d                                         ; $7b8e: $aa
    jr nc, jr_067_7b9c                            ; $7b8f: $30 $0b

    dec h                                         ; $7b91: $25
    adc h                                         ; $7b92: $8c
    push hl                                       ; $7b93: $e5
    ld h, [hl]                                    ; $7b94: $66
    ret nz                                        ; $7b95: $c0

    ldh [$87], a                                  ; $7b96: $e0 $87

jr_067_7b98:
    ld l, [hl]                                    ; $7b98: $6e
    ld l, a                                       ; $7b99: $6f
    ld l, h                                       ; $7b9a: $6c
    pop bc                                        ; $7b9b: $c1

jr_067_7b9c:
    ld [c], a                                     ; $7b9c: $e2
    ld l, $02                                     ; $7b9d: $2e $02
    jr nc, jr_067_7bb5                            ; $7b9f: $30 $14

    ldh a, [$f6]                                  ; $7ba1: $f0 $f6
    sbc a                                         ; $7ba3: $9f
    add hl, bc                                    ; $7ba4: $09
    sbc h                                         ; $7ba5: $9c
    cp a                                          ; $7ba6: $bf
    pop hl                                        ; $7ba7: $e1
    add d                                         ; $7ba8: $82
    pop hl                                        ; $7ba9: $e1
    sbc h                                         ; $7baa: $9c
    xor l                                         ; $7bab: $ad
    ret nz                                        ; $7bac: $c0

    ret nc                                        ; $7bad: $d0

    and $30                                       ; $7bae: $e6 $30
    dec c                                         ; $7bb0: $0d
    ldh a, [$f7]                                  ; $7bb1: $f0 $f7
    nop                                           ; $7bb3: $00
    cp a                                          ; $7bb4: $bf

jr_067_7bb5:
    ld [c], a                                     ; $7bb5: $e2
    pop bc                                        ; $7bb6: $c1
    pop hl                                        ; $7bb7: $e1
    or l                                          ; $7bb8: $b5
    ld hl, $e6d0                                  ; $7bb9: $21 $d0 $e6
    jr nc, jr_067_7bcb                            ; $7bbc: $30 $0d

    ldh a, [$f8]                                  ; $7bbe: $f0 $f8
    ld a, [hl]                                    ; $7bc0: $7e
    pop hl                                        ; $7bc1: $e1
    pop bc                                        ; $7bc2: $c1
    ld [c], a                                     ; $7bc3: $e2
    nop                                           ; $7bc4: $00
    ld b, h                                       ; $7bc5: $44
    jr nz, jr_067_7b98                            ; $7bc6: $20 $d0

    and $30                                       ; $7bc8: $e6 $30
    dec c                                         ; $7bca: $0d

jr_067_7bcb:
    ldh a, [$f8]                                  ; $7bcb: $f0 $f8
    cp a                                          ; $7bcd: $bf
    ld b, c                                       ; $7bce: $41
    pop af                                        ; $7bcf: $f1
    and c                                         ; $7bd0: $a1
    jr nz, @-$5a                                  ; $7bd1: $20 $a4

    ret nc                                        ; $7bd3: $d0

    db $e3                                        ; $7bd4: $e3
    nop                                           ; $7bd5: $00
    jr nc, @+$0f                                  ; $7bd6: $30 $0d

    ldh a, [$f8]                                  ; $7bd8: $f0 $f8
    adc a                                         ; $7bda: $8f
    add $44                                       ; $7bdb: $c6 $44
    ld [hl+], a                                   ; $7bdd: $22
    ret nc                                        ; $7bde: $d0

    db $e4                                        ; $7bdf: $e4
    rst $38                                       ; $7be0: $ff
    halt                                          ; $7be1: $76
    ldh a, [$ef]                                  ; $7be2: $f0 $ef
    ld h, $cd                                     ; $7be4: $26 $cd
    nop                                           ; $7be6: $00
    cp $a1                                        ; $7be7: $fe $a1
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    pop bc                                        ; $7bec: $c1
    nop                                           ; $7bed: $00
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
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00
    dec c                                         ; $7bfa: $0d
    add b                                         ; $7bfb: $80
    cp $e0                                        ; $7bfc: $fe $e0
    nop                                           ; $7bfe: $00
    ld b, b                                       ; $7bff: $40
    ret c                                         ; $7c00: $d8

    push hl                                       ; $7c01: $e5
    rst $30                                       ; $7c02: $f7
    and $eb                                       ; $7c03: $e6 $eb
    ldh [rIE], a                                  ; $7c05: $e0 $ff
    rst $38                                       ; $7c07: $ff
    nop                                           ; $7c08: $00
    rst $38                                       ; $7c09: $ff
    db $f4                                        ; $7c0a: $f4
    nop                                           ; $7c0b: $00
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    ld [bc], a                                    ; $7c0e: $02
    nop                                           ; $7c0f: $00
    inc de                                        ; $7c10: $13
    inc b                                         ; $7c11: $04
    ld [bc], a                                    ; $7c12: $02
    ld bc, $051e                                  ; $7c13: $01 $1e $05
    ld [bc], a                                    ; $7c16: $02
    ld [bc], a                                    ; $7c17: $02
    rra                                           ; $7c18: $1f
    ld b, $02                                     ; $7c19: $06 $02
    inc bc                                        ; $7c1b: $03
    ld [de], a                                    ; $7c1c: $12
    rlca                                          ; $7c1d: $07
    ld [bc], a                                    ; $7c1e: $02
    inc b                                         ; $7c1f: $04
    dec e                                         ; $7c20: $1d
    rlca                                          ; $7c21: $07
    ld [bc], a                                    ; $7c22: $02
    dec b                                         ; $7c23: $05
    add hl, bc                                    ; $7c24: $09
    dec bc                                        ; $7c25: $0b
    ld [bc], a                                    ; $7c26: $02
    ld b, $1a                                     ; $7c27: $06 $1a
    dec c                                         ; $7c29: $0d
    ld [bc], a                                    ; $7c2a: $02
    rlca                                          ; $7c2b: $07
    inc hl                                        ; $7c2c: $23
    dec c                                         ; $7c2d: $0d
    ld [bc], a                                    ; $7c2e: $02
    ld [$0e24], sp                                ; $7c2f: $08 $24 $0e
    ld [bc], a                                    ; $7c32: $02
    add hl, bc                                    ; $7c33: $09
    jr z, jr_067_7c47                             ; $7c34: $28 $11

    ld [bc], a                                    ; $7c36: $02
    ld a, [bc]                                    ; $7c37: $0a
    daa                                           ; $7c38: $27
    ld [de], a                                    ; $7c39: $12
    ld [bc], a                                    ; $7c3a: $02
    dec bc                                        ; $7c3b: $0b
    ld a, [hl+]                                   ; $7c3c: $2a
    ld [de], a                                    ; $7c3d: $12
    ld [bc], a                                    ; $7c3e: $02
    inc c                                         ; $7c3f: $0c
    add hl, hl                                    ; $7c40: $29
    inc de                                        ; $7c41: $13
    ld [bc], a                                    ; $7c42: $02
    dec c                                         ; $7c43: $0d
    ld a, [de]                                    ; $7c44: $1a
    dec d                                         ; $7c45: $15
    ld [bc], a                                    ; $7c46: $02

jr_067_7c47:
    ld c, $1d                                     ; $7c47: $0e $1d
    dec d                                         ; $7c49: $15
    ld [bc], a                                    ; $7c4a: $02
    rrca                                          ; $7c4b: $0f
    dec de                                        ; $7c4c: $1b
    jr jr_067_7c51                                ; $7c4d: $18 $02

    db $10                                        ; $7c4f: $10
    ld [hl+], a                                   ; $7c50: $22

jr_067_7c51:
    jr @+$04                                      ; $7c51: $18 $02

    ld de, $1921                                  ; $7c53: $11 $21 $19
    ld [bc], a                                    ; $7c56: $02
    ld [de], a                                    ; $7c57: $12
    jr nz, jr_067_7c74                            ; $7c58: $20 $1a

    ld [bc], a                                    ; $7c5a: $02
    inc de                                        ; $7c5b: $13
    dec de                                        ; $7c5c: $1b
    dec e                                         ; $7c5d: $1d
    ld [bc], a                                    ; $7c5e: $02
    inc d                                         ; $7c5f: $14
    dec e                                         ; $7c60: $1d
    ld e, $02                                     ; $7c61: $1e $02
    dec d                                         ; $7c63: $15
    inc e                                         ; $7c64: $1c
    rra                                           ; $7c65: $1f
    ld [bc], a                                    ; $7c66: $02
    ld d, $1a                                     ; $7c67: $16 $1a
    jr nz, jr_067_7c6d                            ; $7c69: $20 $02

    rla                                           ; $7c6b: $17
    dec de                                        ; $7c6c: $1b

jr_067_7c6d:
    jr nz, jr_067_7c71                            ; $7c6d: $20 $02

    jr jr_067_7c93                                ; $7c6f: $18 $22

jr_067_7c71:
    jr nz, jr_067_7c75                            ; $7c71: $20 $02

    add hl, de                                    ; $7c73: $19

jr_067_7c74:
    add hl, de                                    ; $7c74: $19

jr_067_7c75:
    ld [hl+], a                                   ; $7c75: $22
    ld [bc], a                                    ; $7c76: $02
    ld a, [de]                                    ; $7c77: $1a
    inc e                                         ; $7c78: $1c
    ld [hl+], a                                   ; $7c79: $22
    ld [bc], a                                    ; $7c7a: $02
    dec de                                        ; $7c7b: $1b
    ld hl, $0222                                  ; $7c7c: $21 $22 $02
    inc e                                         ; $7c7f: $1c
    daa                                           ; $7c80: $27
    inc hl                                        ; $7c81: $23
    ld [bc], a                                    ; $7c82: $02
    dec e                                         ; $7c83: $1d
    dec de                                        ; $7c84: $1b
    inc h                                         ; $7c85: $24
    ld [bc], a                                    ; $7c86: $02
    ld e, $24                                     ; $7c87: $1e $24
    daa                                           ; $7c89: $27
    ld [bc], a                                    ; $7c8a: $02
    rra                                           ; $7c8b: $1f
    rla                                           ; $7c8c: $17
    add hl, hl                                    ; $7c8d: $29
    ld [bc], a                                    ; $7c8e: $02
    jr nz, @+$2a                                  ; $7c8f: $20 $28

    ld a, [hl+]                                   ; $7c91: $2a
    ld [bc], a                                    ; $7c92: $02

jr_067_7c93:
    ld hl, $2b2e                                  ; $7c93: $21 $2e $2b
    ld [bc], a                                    ; $7c96: $02
    ld [hl+], a                                   ; $7c97: $22
    cpl                                           ; $7c98: $2f
    inc l                                         ; $7c99: $2c
    ld [bc], a                                    ; $7c9a: $02
    inc hl                                        ; $7c9b: $23
    ld e, $2d                                     ; $7c9c: $1e $2d
    ld [bc], a                                    ; $7c9e: $02
    inc h                                         ; $7c9f: $24
    dec de                                        ; $7ca0: $1b
    cpl                                           ; $7ca1: $2f
    ld [bc], a                                    ; $7ca2: $02
    dec h                                         ; $7ca3: $25
    ld hl, $0232                                  ; $7ca4: $21 $32 $02
    ld h, $23                                     ; $7ca7: $26 $23
    ld [hl-], a                                   ; $7ca9: $32
    ld [bc], a                                    ; $7caa: $02
    daa                                           ; $7cab: $27
    cpl                                           ; $7cac: $2f
    ld [hl-], a                                   ; $7cad: $32
    ld [bc], a                                    ; $7cae: $02
    jr z, jr_067_7cd1                             ; $7caf: $28 $20

    inc sp                                        ; $7cb1: $33
    ld [bc], a                                    ; $7cb2: $02
    add hl, hl                                    ; $7cb3: $29
    ld [hl+], a                                   ; $7cb4: $22
    inc sp                                        ; $7cb5: $33
    ld [bc], a                                    ; $7cb6: $02
    ld a, [hl+]                                   ; $7cb7: $2a
    ld hl, $0234                                  ; $7cb8: $21 $34 $02
    dec hl                                        ; $7cbb: $2b
    dec [hl]                                      ; $7cbc: $35
    dec [hl]                                      ; $7cbd: $35
    ld [bc], a                                    ; $7cbe: $02
    inc l                                         ; $7cbf: $2c
    ld a, [hl+]                                   ; $7cc0: $2a
    ld [hl], $ff                                  ; $7cc1: $36 $ff
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

jr_067_7cd1:
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

Jump_067_7ce3:
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

Call_067_7d08:
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

Jump_067_7d7f:
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

Jump_067_7dc8:
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

Jump_067_7e22:
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

Jump_067_7ea5:
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

Jump_067_7f61:
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
