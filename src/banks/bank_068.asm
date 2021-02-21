; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    dec hl                                        ; $4002: $2b
    ld c, d                                       ; $4003: $4a
    rra                                           ; $4004: $1f
    ld d, a                                       ; $4005: $57
    ld c, e                                       ; $4006: $4b
    ld h, e                                       ; $4007: $63
    ccf                                           ; $4008: $3f
    ld l, a                                       ; $4009: $6f
    xor a                                         ; $400a: $af
    ld a, c                                       ; $400b: $79
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    dec hl                                        ; $400e: $2b
    ld b, h                                       ; $400f: $44
    adc d                                         ; $4010: $8a
    ld c, c                                       ; $4011: $49
    xor h                                         ; $4012: $ac
    ld c, c                                       ; $4013: $49
    rra                                           ; $4014: $1f
    ld l, $0e                                     ; $4015: $2e $0e
    ld c, $0e                                     ; $4017: $0e $0e
    ld c, l                                       ; $4019: $4d
    rst $38                                       ; $401a: $ff
    add sp, -$10                                  ; $401b: $e8 $f0
    rst $38                                       ; $401d: $ff
    ldh [$eb], a                                  ; $401e: $e0 $eb
    ld h, a                                       ; $4020: $67
    ld l, [hl]                                    ; $4021: $6e
    ld l, $6e                                     ; $4022: $2e $6e
    adc $e0                                       ; $4024: $ce $e0
    call Call_000_0de0                            ; $4026: $cd $e0 $0d
    dec c                                         ; $4029: $0d
    jp nc, Jump_068_58e2                          ; $402a: $d2 $e2 $58

    ldh a, [rIE]                                  ; $402d: $f0 $ff
    ldh [$eb], a                                  ; $402f: $e0 $eb
    pop de                                        ; $4031: $d1
    ldh [$4e], a                                  ; $4032: $e0 $4e
    ld c, [hl]                                    ; $4034: $4e
    ret nc                                        ; $4035: $d0

    rst $20                                       ; $4036: $e7
    ld l, $f0                                     ; $4037: $2e $f0

Jump_068_4039:
    rst $38                                       ; $4039: $ff
    ld a, [de]                                    ; $403a: $1a
    ldh [$ec], a                                  ; $403b: $e0 $ec

Jump_068_403d:
    ld l, $4e                                     ; $403d: $2e $4e
    pop hl                                        ; $403f: $e1
    ld c, [hl]                                    ; $4040: $4e
    ld c, $f0                                     ; $4041: $0e $f0
    rst $38                                       ; $4043: $ff
    ldh a, [$f9]                                  ; $4044: $f0 $f9
    ld c, a                                       ; $4046: $4f
    ld [c], a                                     ; $4047: $e2
    nop                                           ; $4048: $00
    ld [$f0e0], sp                                ; $4049: $08 $e0 $f0
    rst $38                                       ; $404c: $ff
    ldh a, [$f7]                                  ; $404d: $f0 $f7
    ret z                                         ; $404f: $c8

    pop bc                                        ; $4050: $c1
    ldh a, [rIE]                                  ; $4051: $f0 $ff
    ldh a, [$f7]                                  ; $4053: $f0 $f7
    call $f0c0                                    ; $4055: $cd $c0 $f0
    rst $38                                       ; $4058: $ff
    nop                                           ; $4059: $00
    ldh a, [$fc]                                  ; $405a: $f0 $fc
    rrca                                          ; $405c: $0f
    ld [c], a                                     ; $405d: $e2
    ldh a, [rIE]                                  ; $405e: $f0 $ff
    ldh a, [$f4]                                  ; $4060: $f0 $f4
    rst $08                                       ; $4062: $cf
    call nz, $e590                                ; $4063: $c4 $90 $e5
    rst $38                                       ; $4066: $ff
    push bc                                       ; $4067: $c5
    ldh [$f5], a                                  ; $4068: $e0 $f5
    add b                                         ; $406a: $80
    pop hl                                        ; $406b: $e1
    and d                                         ; $406c: $a2
    sbc $a6                                       ; $406d: $de $a6
    rst $00                                       ; $406f: $c7
    and b                                         ; $4070: $a0
    adc $ac                                       ; $4071: $ce $ac
    or a                                          ; $4073: $b7
    and h                                         ; $4074: $a4
    ldh [$f4], a                                  ; $4075: $e0 $f4
    ret nc                                        ; $4077: $d0

    db $e4                                        ; $4078: $e4
    dec c                                         ; $4079: $0d
    inc b                                         ; $407a: $04
    ret c                                         ; $407b: $d8

    and b                                         ; $407c: $a0
    cp $e0                                        ; $407d: $fe $e0
    dec c                                         ; $407f: $0d
    ld [$c9c1], sp                                ; $4080: $08 $c1 $c9
    and e                                         ; $4083: $a3
    ldh a, [$e3]                                  ; $4084: $f0 $e3
    cp [hl]                                       ; $4086: $be
    db $e3                                        ; $4087: $e3
    ldh [$f7], a                                  ; $4088: $e0 $f7
    nop                                           ; $408a: $00
    ret nc                                        ; $408b: $d0

    push hl                                       ; $408c: $e5
    db $dd                                        ; $408d: $dd
    and b                                         ; $408e: $a0
    sub e                                         ; $408f: $93
    and d                                         ; $4090: $a2
    add hl, de                                    ; $4091: $19
    push bc                                       ; $4092: $c5
    ldh a, [$e5]                                  ; $4093: $f0 $e5
    inc a                                         ; $4095: $3c
    xor c                                         ; $4096: $a9
    ldh [$f1], a                                  ; $4097: $e0 $f1
    ret nc                                        ; $4099: $d0

    and $c0                                       ; $409a: $e6 $c0
    ld d, c                                       ; $409c: $51
    and b                                         ; $409d: $a0
    ld a, e                                       ; $409e: $7b
    pop hl                                        ; $409f: $e1
    reti                                          ; $40a0: $d9


    and b                                         ; $40a1: $a0
    dec b                                         ; $40a2: $05
    and e                                         ; $40a3: $a3
    ldh a, [$e4]                                  ; $40a4: $f0 $e4
    add $e6                                       ; $40a6: $c6 $e6
    ld c, l                                       ; $40a8: $4d
    ld c, l                                       ; $40a9: $4d
    ld bc, $e02d                                  ; $40aa: $01 $2d $e0
    pop af                                        ; $40ad: $f1
    ret nc                                        ; $40ae: $d0

    push hl                                       ; $40af: $e5
    add a                                         ; $40b0: $87
    pop hl                                        ; $40b1: $e1
    inc a                                         ; $40b2: $3c
    pop hl                                        ; $40b3: $e1
    ldh a, [$ed]                                  ; $40b4: $f0 $ed
    nop                                           ; $40b6: $00
    and d                                         ; $40b7: $a2
    db $fc                                        ; $40b8: $fc
    add b                                         ; $40b9: $80
    dec b                                         ; $40ba: $05
    ld l, l                                       ; $40bb: $6d
    ld hl, sp-$7e                                 ; $40bc: $f8 $82
    dec l                                         ; $40be: $2d
    ldh [$ee], a                                  ; $40bf: $e0 $ee
    sub b                                         ; $40c1: $90
    and $8f                                       ; $40c2: $e6 $8f
    add b                                         ; $40c4: $80
    sub [hl]                                      ; $40c5: $96
    and c                                         ; $40c6: $a1
    push af                                       ; $40c7: $f5
    add c                                         ; $40c8: $81
    nop                                           ; $40c9: $00
    add l                                         ; $40ca: $85
    add b                                         ; $40cb: $80
    dec e                                         ; $40cc: $1d
    ret nz                                        ; $40cd: $c0

    ldh a, [$e4]                                  ; $40ce: $f0 $e4
    add sp, -$3f                                  ; $40d0: $e8 $c1
    jp $fee0                                      ; $40d2: $c3 $e0 $fe


    db $e3                                        ; $40d5: $e3
    cp a                                          ; $40d6: $bf
    pop hl                                        ; $40d7: $e1
    ldh [$ec], a                                  ; $40d8: $e0 $ec
    nop                                           ; $40da: $00
    ret nc                                        ; $40db: $d0

    jp hl                                         ; $40dc: $e9


    pop de                                        ; $40dd: $d1
    jp $c17e                                      ; $40de: $c3 $7e $c1


    ldh a, [$e7]                                  ; $40e1: $f0 $e7
    and a                                         ; $40e3: $a7
    ret nz                                        ; $40e4: $c0

    pop bc                                        ; $40e5: $c1
    and $bf                                       ; $40e6: $e6 $bf
    pop hl                                        ; $40e8: $e1
    cp [hl]                                       ; $40e9: $be
    pop hl                                        ; $40ea: $e1
    inc b                                         ; $40eb: $04
    ldh [$e9], a                                  ; $40ec: $e0 $e9
    ret nc                                        ; $40ee: $d0

    db $e4                                        ; $40ef: $e4
    ld l, l                                       ; $40f0: $6d
    rst $38                                       ; $40f1: $ff
    add sp, -$2c                                  ; $40f2: $e8 $d4
    add c                                         ; $40f4: $81
    ldh a, [$e7]                                  ; $40f5: $f0 $e7
    pop bc                                        ; $40f7: $c1
    jp hl                                         ; $40f8: $e9


    ld a, l                                       ; $40f9: $7d
    ld [c], a                                     ; $40fa: $e2
    ldh [$d5], a                                  ; $40fb: $e0 $d5
    jp hl                                         ; $40fd: $e9


    ret nc                                        ; $40fe: $d0

    and $ce                                       ; $40ff: $e6 $ce
    ld [c], a                                     ; $4101: $e2

Jump_068_4102:
    sub l                                         ; $4102: $95
    ldh [$c3], a                                  ; $4103: $e0 $c3
    pop hl                                        ; $4105: $e1
    ld l, $4e                                     ; $4106: $2e $4e
    ld c, $31                                     ; $4108: $0e $31
    ld c, [hl]                                    ; $410a: $4e
    cp [hl]                                       ; $410b: $be
    push hl                                       ; $410c: $e5
    ld b, $e2                                     ; $410d: $06 $e2
    ld b, c                                       ; $410f: $41
    ld [c], a                                     ; $4110: $e2
    ld c, e                                       ; $4111: $4b
    dec l                                         ; $4112: $2d
    ld a, l                                       ; $4113: $7d
    and $fe                                       ; $4114: $e6 $fe
    ld [c], a                                     ; $4116: $e2
    ld a, [de]                                    ; $4117: $1a
    ret nc                                        ; $4118: $d0

    db $eb                                        ; $4119: $eb
    ld c, $c0                                     ; $411a: $0e $c0
    rst $20                                       ; $411c: $e7
    ld l, [hl]                                    ; $411d: $6e
    ld l, [hl]                                    ; $411e: $6e
    cp a                                          ; $411f: $bf
    ldh [$f0], a                                  ; $4120: $e0 $f0
    ld [c], a                                     ; $4122: $e2
    add e                                         ; $4123: $83
    and $0f                                       ; $4124: $e6 $0f
    dec bc                                        ; $4126: $0b
    dec bc                                        ; $4127: $0b
    dec hl                                        ; $4128: $2b
    dec bc                                        ; $4129: $0b
    rst $38                                       ; $412a: $ff
    ld [c], a                                     ; $412b: $e2
    cp h                                          ; $412c: $bc
    pop hl                                        ; $412d: $e1
    ret nz                                        ; $412e: $c0

    ldh [$a3], a                                  ; $412f: $e0 $a3
    push hl                                       ; $4131: $e5
    call z, $ecd0                                 ; $4132: $cc $d0 $ec
    dec d                                         ; $4135: $15
    ldh [$2e], a                                  ; $4136: $e0 $2e
    ld l, [hl]                                    ; $4138: $6e
    ld d, [hl]                                    ; $4139: $56
    add l                                         ; $413a: $85
    ld b, h                                       ; $413b: $44

Jump_068_413c:
    and $2b                                       ; $413c: $e6 $2b
    dec bc                                        ; $413e: $0b
    ccf                                           ; $413f: $3f
    ld a, [bc]                                    ; $4140: $0a
    ld a, [hl+]                                   ; $4141: $2a
    ld c, e                                       ; $4142: $4b
    ld a, [bc]                                    ; $4143: $0a
    ld a, [bc]                                    ; $4144: $0a
    ld a, [bc]                                    ; $4145: $0a
    cp e                                          ; $4146: $bb
    jp nz, $e07b                                  ; $4147: $c2 $7b $e0

    ld [$e27f], sp                                ; $414a: $08 $7f $e2
    jr nz, jr_068_41af                            ; $414d: $20 $60

    ret nc                                        ; $414f: $d0

    db $ed                                        ; $4150: $ed
    dec c                                         ; $4151: $0d
    dec bc                                        ; $4152: $0b
    pop hl                                        ; $4153: $e1
    ld d, $87                                     ; $4154: $16 $87
    ldh a, [$e1]                                  ; $4156: $f0 $e1
    add h                                         ; $4158: $84
    ld [c], a                                     ; $4159: $e2
    ld e, $c5                                     ; $415a: $1e $c5
    ldh [$2a], a                                  ; $415c: $e0 $2a
    dec hl                                        ; $415e: $2b
    ld a, [bc]                                    ; $415f: $0a
    ld a, [hl+]                                   ; $4160: $2a
    ld a, d                                       ; $4161: $7a
    ldh [$fe], a                                  ; $4162: $e0 $fe
    ldh [$bf], a                                  ; $4164: $e0 $bf
    db $e3                                        ; $4166: $e3
    ld b, d                                       ; $4167: $42
    call c, Call_068_4ec1                         ; $4168: $dc $c1 $4e
    ret nc                                        ; $416b: $d0

    db $ed                                        ; $416c: $ed
    dec a                                         ; $416d: $3d
    ld [c], a                                     ; $416e: $e2
    ldh a, [$eb]                                  ; $416f: $f0 $eb
    ld c, b                                       ; $4171: $48
    pop bc                                        ; $4172: $c1
    dec hl                                        ; $4173: $2b
    pop bc                                        ; $4174: $c1
    ldh [$80], a                                  ; $4175: $e0 $80
    dec sp                                        ; $4177: $3b
    db $e3                                        ; $4178: $e3
    db $fc                                        ; $4179: $fc
    ld [c], a                                     ; $417a: $e2
    ld a, [$80e1]                                 ; $417b: $fa $e1 $80
    db $e3                                        ; $417e: $e3
    ret nc                                        ; $417f: $d0

    db $ed                                        ; $4180: $ed
    and a                                         ; $4181: $a7
    jp nz, $ebf0                                  ; $4182: $c2 $f0 $eb

    ld c, l                                       ; $4185: $4d
    ld h, $cc                                     ; $4186: $26 $cc
    ret nz                                        ; $4188: $c0

    ld l, e                                       ; $4189: $6b
    ld a, [hl+]                                   ; $418a: $2a
    ld b, [hl]                                    ; $418b: $46
    ldh [rIE], a                                  ; $418c: $e0 $ff
    pop bc                                        ; $418e: $c1
    dec hl                                        ; $418f: $2b
    ret nz                                        ; $4190: $c0

    add sp, $5c                                   ; $4191: $e8 $5c
    ret nz                                        ; $4193: $c0

    push bc                                       ; $4194: $c5
    ld c, $d0                                     ; $4195: $0e $d0
    db $eb                                        ; $4197: $eb
    ld l, l                                       ; $4198: $6d
    ret nz                                        ; $4199: $c0

    db $ec                                        ; $419a: $ec
    ldh a, [$e3]                                  ; $419b: $f0 $e3
    cp a                                          ; $419d: $bf
    ldh [$0b], a                                  ; $419e: $e0 $0b
    dec hl                                        ; $41a0: $2b
    add hl, bc                                    ; $41a1: $09
    ld c, e                                       ; $41a2: $4b
    db $fd                                        ; $41a3: $fd
    ret nz                                        ; $41a4: $c0

    pop bc                                        ; $41a5: $c1
    ret nz                                        ; $41a6: $c0

    dec hl                                        ; $41a7: $2b
    ld b, b                                       ; $41a8: $40
    ldh [$80], a                                  ; $41a9: $e0 $80
    rst $20                                       ; $41ab: $e7
    ret nz                                        ; $41ac: $c0

    rst $28                                       ; $41ad: $ef
    inc b                                         ; $41ae: $04

jr_068_41af:
    push bc                                       ; $41af: $c5
    ld a, b                                       ; $41b0: $78
    ldh a, [$ea]                                  ; $41b1: $f0 $ea
    ld b, b                                       ; $41b3: $40
    ld [c], a                                     ; $41b4: $e2
    ld b, e                                       ; $41b5: $43
    ret nz                                        ; $41b6: $c0

    ld l, e                                       ; $41b7: $6b
    ld c, e                                       ; $41b8: $4b
    ld c, e                                       ; $41b9: $4b
    ld l, e                                       ; $41ba: $6b
    rst $38                                       ; $41bb: $ff
    jp nz, Jump_000_3a02                          ; $41bc: $c2 $02 $3a

    pop hl                                        ; $41bf: $e1
    ld l, l                                       ; $41c0: $6d
    ld b, c                                       ; $41c1: $41
    jp $e950                                      ; $41c2: $c3 $50 $e9


    ret z                                         ; $41c5: $c8

    and e                                         ; $41c6: $a3
    ret                                           ; $41c7: $c9


    and b                                         ; $41c8: $a0
    ld d, h                                       ; $41c9: $54
    ld b, c                                       ; $41ca: $41
    jp nz, Jump_000_0ca4                          ; $41cb: $c2 $a4 $0c

    cp c                                          ; $41ce: $b9
    and c                                         ; $41cf: $a1
    jp z, Jump_000_0a80                           ; $41d0: $ca $80 $0a

    ld c, d                                       ; $41d3: $4a
    add a                                         ; $41d4: $87
    call nz, $e500                                ; $41d5: $c4 $00 $e5
    ld d, $e3                                     ; $41d8: $16 $e3
    ret nc                                        ; $41da: $d0

    db $ed                                        ; $41db: $ed
    ldh [rNR33], a                                ; $41dc: $e0 $1d
    ld b, b                                       ; $41de: $40
    rst $00                                       ; $41df: $c7
    and b                                         ; $41e0: $a0
    ld [c], a                                     ; $41e1: $e2
    ld [c], a                                     ; $41e2: $e2
    ld [c], a                                     ; $41e3: $e2
    and d                                         ; $41e4: $a2
    ldh a, [$e3]                                  ; $41e5: $f0 $e3
    dec l                                         ; $41e7: $2d
    ld c, l                                       ; $41e8: $4d
    dec l                                         ; $41e9: $2d
    ld b, e                                       ; $41ea: $43
    ld c, d                                       ; $41eb: $4a
    ld c, d                                       ; $41ec: $4a
    ld b, c                                       ; $41ed: $41
    ret nz                                        ; $41ee: $c0

    cp l                                          ; $41ef: $bd
    pop bc                                        ; $41f0: $c1
    add b                                         ; $41f1: $80
    ret nz                                        ; $41f2: $c0

    ld sp, $0de0                                  ; $41f3: $31 $e0 $0d
    ldh [$ea], a                                  ; $41f6: $e0 $ea
    ldh [$d0], a                                  ; $41f8: $e0 $d0
    and $07                                       ; $41fa: $e6 $07
    call nz, $a27d                                ; $41fc: $c4 $7d $a2
    or e                                          ; $41ff: $b3

Call_068_4200:
    and c                                         ; $4200: $a1
    rst $30                                       ; $4201: $f7
    and h                                         ; $4202: $a4
    dec l                                         ; $4203: $2d

Jump_068_4204:
    dec l                                         ; $4204: $2d
    dec c                                         ; $4205: $0d
    ld bc, $416b                                  ; $4206: $01 $6b $41
    jp nz, $c2bb                                  ; $4209: $c2 $bb $c2

    adc c                                         ; $420c: $89
    and c                                         ; $420d: $a1
    call c, $e0a0                                 ; $420e: $dc $a0 $e0
    add sp, -$30                                  ; $4211: $e8 $d0
    rst $20                                       ; $4213: $e7
    ld b, $83                                     ; $4214: $06 $83
    ldh a, [$a1]                                  ; $4216: $f0 $a1
    and b                                         ; $4218: $a0
    inc h                                         ; $4219: $24
    pop bc                                        ; $421a: $c1
    ldh a, [$e6]                                  ; $421b: $f0 $e6
    ret nc                                        ; $421d: $d0

    add b                                         ; $421e: $80
    dec l                                         ; $421f: $2d
    ld l, e                                       ; $4220: $6b
    ld c, e                                       ; $4221: $4b
    dec bc                                        ; $4222: $0b
    rla                                           ; $4223: $17
    ld l, e                                       ; $4224: $6b
    ld a, [bc]                                    ; $4225: $0a
    ld c, e                                       ; $4226: $4b
    jp nz, $2da2                                  ; $4227: $c2 $a2 $2d

    add d                                         ; $422a: $82
    ldh [$e0], a                                  ; $422b: $e0 $e0
    ld [$edd0], a                                 ; $422d: $ea $d0 $ed
    jr c, @-$19                                   ; $4230: $38 $e5

    pop bc                                        ; $4232: $c1
    adc c                                         ; $4233: $89
    pop hl                                        ; $4234: $e1
    ldh a, [$e8]                                  ; $4235: $f0 $e8
    ld c, l                                       ; $4237: $4d
    dec c                                         ; $4238: $0d
    dec l                                         ; $4239: $2d
    ld b, e                                       ; $423a: $43
    and e                                         ; $423b: $a3
    dec a                                         ; $423c: $3d
    and b                                         ; $423d: $a0
    and b                                         ; $423e: $a0
    push bc                                       ; $423f: $c5
    jp nz, $ece0                                  ; $4240: $c2 $e0 $ec

    ret nc                                        ; $4243: $d0

    ld [c], a                                     ; $4244: $e2
    ld l, a                                       ; $4245: $6f
    ret nz                                        ; $4246: $c0

    cp e                                          ; $4247: $bb
    add h                                         ; $4248: $84
    ld c, $64                                     ; $4249: $0e $64
    pop bc                                        ; $424b: $c1
    ld l, l                                       ; $424c: $6d

Jump_068_424d:
    ld b, $f0                                     ; $424d: $06 $f0
    jp hl                                         ; $424f: $e9


    dec l                                         ; $4250: $2d
    ld c, l                                       ; $4251: $4d
    jp $cbe4                                      ; $4252: $c3 $e4 $cb


    add d                                         ; $4255: $82
    ldh [$ef], a                                  ; $4256: $e0 $ef
    ret nc                                        ; $4258: $d0

    ld [c], a                                     ; $4259: $e2
    add d                                         ; $425a: $82
    jp $fa00                                      ; $425b: $c3 $00 $fa


    and b                                         ; $425e: $a0
    inc h                                         ; $425f: $24
    jp nz, $e9f0                                  ; $4260: $c2 $f0 $e9

    ld a, l                                       ; $4263: $7d
    add h                                         ; $4264: $84
    jp $e080                                      ; $4265: $c3 $80 $e0


    di                                            ; $4268: $f3
    sub b                                         ; $4269: $90
    ld [c], a                                     ; $426a: $e2
    jr nc, jr_068_427a                            ; $426b: $30 $0d

    ld [hl-], a                                   ; $426d: $32
    call z, Call_068_6d48                         ; $426e: $cc $48 $6d
    ld a, [bc]                                    ; $4271: $0a
    and b                                         ; $4272: $a0
    rst $00                                       ; $4273: $c7
    and b                                         ; $4274: $a0
    dec c                                         ; $4275: $0d
    dec bc                                        ; $4276: $0b
    cp $40                                        ; $4277: $fe $40
    or e                                          ; $4279: $b3

jr_068_427a:
    ld b, [hl]                                    ; $427a: $46
    nop                                           ; $427b: $00
    ret nc                                        ; $427c: $d0

    db $ed                                        ; $427d: $ed
    jr nc, jr_068_428a                            ; $427e: $30 $0a

    db $fc                                        ; $4280: $fc
    ld h, $24                                     ; $4281: $26 $24
    ld bc, $6143                                  ; $4283: $01 $43 $61
    dec b                                         ; $4286: $05
    ld [c], a                                     ; $4287: $e2
    cp $41                                        ; $4288: $fe $41

jr_068_428a:
    add c                                         ; $428a: $81
    ld h, b                                       ; $428b: $60
    nop                                           ; $428c: $00
    db $e4                                        ; $428d: $e4
    inc hl                                        ; $428e: $23
    ret nc                                        ; $428f: $d0

    ld [$612b], a                                 ; $4290: $ea $2b $61
    jr nc, jr_068_429d                            ; $4293: $30 $08

    inc l                                         ; $4295: $2c
    ld b, [hl]                                    ; $4296: $46
    sub a                                         ; $4297: $97
    and c                                         ; $4298: $a1
    adc l                                         ; $4299: $8d
    add b                                         ; $429a: $80
    inc b                                         ; $429b: $04
    add h                                         ; $429c: $84

jr_068_429d:
    nop                                           ; $429d: $00
    ld a, c                                       ; $429e: $79
    pop hl                                        ; $429f: $e1
    cp $41                                        ; $42a0: $fe $41
    jr nc, jr_068_42a7                            ; $42a2: $30 $03

    ret nc                                        ; $42a4: $d0

jr_068_42a5:
    add sp, $30                                   ; $42a5: $e8 $30

jr_068_42a7:
    dec c                                         ; $42a7: $0d
    dec h                                         ; $42a8: $25
    ld b, $03                                     ; $42a9: $06 $03
    pop hl                                        ; $42ab: $e1
    pop bc                                        ; $42ac: $c1
    rst $20                                       ; $42ad: $e7
    add b                                         ; $42ae: $80
    nop                                           ; $42af: $00
    and c                                         ; $42b0: $a1
    di                                            ; $42b1: $f3
    ret nz                                        ; $42b2: $c0

    dec sp                                        ; $42b3: $3b
    pop hl                                        ; $42b4: $e1
    ret nc                                        ; $42b5: $d0

    db $eb                                        ; $42b6: $eb
    jr nc, @+$0f                                  ; $42b7: $30 $0d

    inc l                                         ; $42b9: $2c
    ld b, [hl]                                    ; $42ba: $46
    ld d, [hl]                                    ; $42bb: $56
    ld h, b                                       ; $42bc: $60
    dec hl                                        ; $42bd: $2b
    nop                                           ; $42be: $00
    ret nz                                        ; $42bf: $c0

    add b                                         ; $42c0: $80
    ret nz                                        ; $42c1: $c0

    add sp, -$01                                  ; $42c2: $e8 $ff
    ld h, c                                       ; $42c4: $61
    jr nc, jr_068_42d3                            ; $42c5: $30 $0c

    pop hl                                        ; $42c7: $e1

jr_068_42c8:
    dec b                                         ; $42c8: $05
    jr nc, @+$09                                  ; $42c9: $30 $07

    cp h                                          ; $42cb: $bc
    inc h                                         ; $42cc: $24
    add c                                         ; $42cd: $81
    ld [c], a                                     ; $42ce: $e2
    nop                                           ; $42cf: $00

Call_068_42d0:
    call z, $4560                                 ; $42d0: $cc $60 $45

jr_068_42d3:
    ld h, b                                       ; $42d3: $60
    add l                                         ; $42d4: $85
    and c                                         ; $42d5: $a1
    ccf                                           ; $42d6: $3f
    db $e4                                        ; $42d7: $e4
    ld a, $e2                                     ; $42d8: $3e $e2
    ret nc                                        ; $42da: $d0

    db $eb                                        ; $42db: $eb
    add b                                         ; $42dc: $80
    db $eb                                        ; $42dd: $eb
    db $fc                                        ; $42de: $fc
    daa                                           ; $42df: $27
    nop                                           ; $42e0: $00
    ld b, d                                       ; $42e1: $42
    pop hl                                        ; $42e2: $e1
    ret nz                                        ; $42e3: $c0

    db $e3                                        ; $42e4: $e3
    pop bc                                        ; $42e5: $c1
    and [hl]                                      ; $42e6: $a6
    cp d                                          ; $42e7: $ba
    jp nz, Jump_000_21ba                          ; $42e8: $c2 $ba $21

    jr nc, @+$0d                                  ; $42eb: $30 $0b

    ret nz                                        ; $42ed: $c0

    db $ec                                        ; $42ee: $ec
    db $fc                                        ; $42ef: $fc
    inc h                                         ; $42f0: $24
    inc b                                         ; $42f1: $04
    ld d, d                                       ; $42f2: $52
    and c                                         ; $42f3: $a1
    pop bc                                        ; $42f4: $c1
    ret z                                         ; $42f5: $c8

    dec hl                                        ; $42f6: $2b
    jp nz, $bf82                                  ; $42f7: $c2 $82 $bf

    ld b, c                                       ; $42fa: $41
    ld b, b                                       ; $42fb: $40
    inc c                                         ; $42fc: $0c
    ld c, [hl]                                    ; $42fd: $4e
    pop bc                                        ; $42fe: $c1
    ret nz                                        ; $42ff: $c0

    db $ec                                        ; $4300: $ec
    ld hl, sp-$2d                                 ; $4301: $f8 $d3
    ld [bc], a                                    ; $4303: $02
    ld d, a                                       ; $4304: $57
    ld b, c                                       ; $4305: $41
    jr nc, jr_068_42c8                            ; $4306: $30 $c0

    ld l, e                                       ; $4308: $6b
    ld c, e                                       ; $4309: $4b
    ld l, e                                       ; $430a: $6b
    dec bc                                        ; $430b: $0b
    ld l, e                                       ; $430c: $6b

jr_068_430d:
    ld [bc], a                                    ; $430d: $02
    db $fd                                        ; $430e: $fd
    pop hl                                        ; $430f: $e1
    ld c, e                                       ; $4310: $4b
    add l                                         ; $4311: $85
    add b                                         ; $4312: $80
    ret nz                                        ; $4313: $c0

    pop af                                        ; $4314: $f1
    inc hl                                        ; $4315: $23
    ld bc, $0d30                                  ; $4316: $01 $30 $0d
    ret nz                                        ; $4319: $c0

    db $e4                                        ; $431a: $e4
    ld a, a                                       ; $431b: $7f
    ld [c], a                                     ; $431c: $e2
    ld bc, $ff6b                                  ; $431d: $01 $6b $ff
    db $e3                                        ; $4320: $e3
    rst $38                                       ; $4321: $ff
    jr nz, jr_068_42a5                            ; $4322: $20 $81

    ld [c], a                                     ; $4324: $e2
    add b                                         ; $4325: $80
    pop hl                                        ; $4326: $e1
    cp [hl]                                       ; $4327: $be
    and a                                         ; $4328: $a7
    call nc, Call_000_30a4                        ; $4329: $d4 $a4 $30
    dec c                                         ; $432c: $0d
    nop                                           ; $432d: $00
    rst $10                                       ; $432e: $d7
    inc h                                         ; $432f: $24
    ld [$4ce1], a                                 ; $4330: $ea $e1 $4c
    ld b, b                                       ; $4333: $40
    dec b                                         ; $4334: $05
    ld b, e                                       ; $4335: $43
    ld b, e                                       ; $4336: $43
    add c                                         ; $4337: $81
    or $01                                        ; $4338: $f6 $01
    xor e                                         ; $433a: $ab
    jr nz, jr_068_430d                            ; $433b: $20 $d0

    xor $48                                       ; $433d: $ee $48
    jr nc, jr_068_434f                            ; $433f: $30 $0e

    ldh a, [$e1]                                  ; $4341: $f0 $e1

Jump_068_4343:
    ld a, a                                       ; $4343: $7f
    ld [c], a                                     ; $4344: $e2
    ld c, l                                       ; $4345: $4d
    adc e                                         ; $4346: $8b
    db $e3                                        ; $4347: $e3
    ret                                           ; $4348: $c9


    jr nz, jr_068_4356                            ; $4349: $20 $0b

    pop bc                                        ; $434b: $c1
    push hl                                       ; $434c: $e5
    ld b, b                                       ; $434d: $40
    ld e, h                                       ; $434e: $5c

jr_068_434f:
    and d                                         ; $434f: $a2
    ret nc                                        ; $4350: $d0

    db $ec                                        ; $4351: $ec
    jr nc, jr_068_4360                            ; $4352: $30 $0c

    ldh a, [$e3]                                  ; $4354: $f0 $e3

jr_068_4356:
    ld d, l                                       ; $4356: $55
    ld [hl+], a                                   ; $4357: $22
    add d                                         ; $4358: $82
    add h                                         ; $4359: $84
    dec bc                                        ; $435a: $0b
    pop bc                                        ; $435b: $c1
    db $e4                                        ; $435c: $e4
    nop                                           ; $435d: $00
    add hl, sp                                    ; $435e: $39
    ld [hl+], a                                   ; $435f: $22

jr_068_4360:
    ret nc                                        ; $4360: $d0

    xor $30                                       ; $4361: $ee $30
    dec c                                         ; $4363: $0d
    ldh a, [$e2]                                  ; $4364: $f0 $e2
    dec d                                         ; $4366: $15
    inc hl                                        ; $4367: $23
    ld a, l                                       ; $4368: $7d
    pop hl                                        ; $4369: $e1
    jp nz, Jump_068_72e6                          ; $436a: $c2 $e6 $72

    inc b                                         ; $436d: $04
    nop                                           ; $436e: $00
    ret nc                                        ; $436f: $d0

    xor $30                                       ; $4370: $ee $30
    ld [de], a                                    ; $4372: $12
    ld a, $e2                                     ; $4373: $3e $e2
    ld [$c2e1], sp                                ; $4375: $08 $e1 $c2
    ld b, h                                       ; $4378: $44
    ld b, $42                                     ; $4379: $06 $42
    scf                                           ; $437b: $37
    inc b                                         ; $437c: $04
    ret nc                                        ; $437d: $d0

    pop af                                        ; $437e: $f1
    nop                                           ; $437f: $00
    jr nc, @+$0a                                  ; $4380: $30 $08

    ldh a, [$e7]                                  ; $4382: $f0 $e7
    ld a, l                                       ; $4384: $7d
    ld [c], a                                     ; $4385: $e2
    add h                                         ; $4386: $84
    push hl                                       ; $4387: $e5
    sub l                                         ; $4388: $95
    call nz, $e4c0                                ; $4389: $c4 $c0 $e4
    ret nc                                        ; $438c: $d0

    add sp, $30                                   ; $438d: $e8 $30
    dec c                                         ; $438f: $0d
    nop                                           ; $4390: $00
    pop af                                        ; $4391: $f1
    rst $20                                       ; $4392: $e7
    add h                                         ; $4393: $84
    and $22                                       ; $4394: $e6 $22
    ld bc, $f0e0                                  ; $4396: $01 $e0 $f0
    dec b                                         ; $4399: $05
    ld h, l                                       ; $439a: $65
    jr nc, jr_068_43a8                            ; $439b: $30 $0b

    ldh a, [$e6]                                  ; $439d: $f0 $e6
    inc a                                         ; $439f: $3c
    ld [hl+], a                                   ; $43a0: $22
    nop                                           ; $43a1: $00
    add hl, bc                                    ; $43a2: $09
    jp $f2e0                                      ; $43a3: $c3 $e0 $f2


    ret nc                                        ; $43a6: $d0

    db $e4                                        ; $43a7: $e4

jr_068_43a8:
    ld b, b                                       ; $43a8: $40
    dec b                                         ; $43a9: $05
    jr nc, jr_068_43b9                            ; $43aa: $30 $0d

    cp a                                          ; $43ac: $bf
    add sp, -$20                                  ; $43ad: $e8 $e0
    di                                            ; $43af: $f3
    ret nc                                        ; $43b0: $d0

    db $ec                                        ; $43b1: $ec
    nop                                           ; $43b2: $00
    jr nc, @+$0a                                  ; $43b3: $30 $08

    ret nz                                        ; $43b5: $c0

    push hl                                       ; $43b6: $e5
    ld a, [hl]                                    ; $43b7: $7e
    db $e4                                        ; $43b8: $e4

jr_068_43b9:
    ldh [$f3], a                                  ; $43b9: $e0 $f3
    ret nc                                        ; $43bb: $d0

    add sp, $30                                   ; $43bc: $e8 $30
    dec c                                         ; $43be: $0d
    ldh a, [$e2]                                  ; $43bf: $f0 $e2
    cp a                                          ; $43c1: $bf
    db $e4                                        ; $43c2: $e4
    nop                                           ; $43c3: $00
    ld l, a                                       ; $43c4: $6f
    ld hl, $f2e0                                  ; $43c5: $21 $e0 $f2
    ret nc                                        ; $43c8: $d0

    add sp, $30                                   ; $43c9: $e8 $30
    dec c                                         ; $43cb: $0d
    db $eb                                        ; $43cc: $eb
    inc bc                                        ; $43cd: $03
    jp z, $e0c6                                   ; $43ce: $ca $c6 $e0

    di                                            ; $43d1: $f3
    sub b                                         ; $43d2: $90
    add sp, $00                                   ; $43d3: $e8 $00
    jr nc, jr_068_43e2                            ; $43d5: $30 $0b

    ldh a, [$e4]                                  ; $43d7: $f0 $e4
    xor h                                         ; $43d9: $ac
    jp nz, $40ab                                  ; $43da: $c2 $ab $40

    ld h, $41                                     ; $43dd: $26 $41
    ldh [$f1], a                                  ; $43df: $e0 $f1
    ld b, b                                       ; $43e1: $40

jr_068_43e2:
    ld [$f2f0], sp                                ; $43e2: $08 $f0 $f2
    nop                                           ; $43e5: $00
    ret nz                                        ; $43e6: $c0

    or $d0                                        ; $43e7: $f6 $d0
    rst $28                                       ; $43e9: $ef
    jr nc, jr_068_43f6                            ; $43ea: $30 $0a

    rra                                           ; $43ec: $1f
    jp z, $c705                                   ; $43ed: $ca $05 $c7

    ret nc                                        ; $43f0: $d0

    or $30                                        ; $43f1: $f6 $30
    rrca                                          ; $43f3: $0f
    ldh a, [$e4]                                  ; $43f4: $f0 $e4

jr_068_43f6:
    ld [bc], a                                    ; $43f6: $02
    db $fc                                        ; $43f7: $fc
    jp $e04d                                      ; $43f8: $c3 $4d $e0


    or $d0                                        ; $43fb: $f6 $d0
    and $30                                       ; $43fd: $e6 $30
    inc c                                         ; $43ff: $0c
    ldh a, [$e9]                                  ; $4400: $f0 $e9
    ld a, [hl+]                                   ; $4402: $2a
    ld h, b                                       ; $4403: $60

Jump_068_4404:
    ldh [$fa], a                                  ; $4404: $e0 $fa
    nop                                           ; $4406: $00
    ld h, c                                       ; $4407: $61
    pop bc                                        ; $4408: $c1
    jr nc, @+$10                                  ; $4409: $30 $0e

    ldh a, [rIE]                                  ; $440b: $f0 $ff
    ldh [$eb], a                                  ; $440d: $e0 $eb
    jr nc, jr_068_4424                            ; $440f: $30 $13

    ldh a, [rIE]                                  ; $4411: $f0 $ff
    ldh [$eb], a                                  ; $4413: $e0 $eb
    jr nc, jr_068_441c                            ; $4415: $30 $05

    nop                                           ; $4417: $00
    ldh a, [rIE]                                  ; $4418: $f0 $ff
    ldh [$eb], a                                  ; $441a: $e0 $eb

jr_068_441c:
    jr nc, jr_068_442c                            ; $441c: $30 $0e

    ldh a, [rIE]                                  ; $441e: $f0 $ff
    ldh [$eb], a                                  ; $4420: $e0 $eb
    jr nc, jr_068_4430                            ; $4422: $30 $0c

jr_068_4424:
    ldh a, [rIE]                                  ; $4424: $f0 $ff
    ldh [$eb], a                                  ; $4426: $e0 $eb
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    rra                                           ; $442b: $1f

jr_068_442c:
    ret c                                         ; $442c: $d8

    push de                                       ; $442d: $d5
    push de                                       ; $442e: $d5
    ret c                                         ; $442f: $d8

jr_068_4430:
    and b                                         ; $4430: $a0
    rst $38                                       ; $4431: $ff
    add sp, -$10                                  ; $4432: $e8 $f0
    rst $38                                       ; $4434: $ff
    ldh [$eb], a                                  ; $4435: $e0 $eb
    ld l, a                                       ; $4437: $6f
    jp nc, $d4d6                                  ; $4438: $d2 $d6 $d4

    sub $cd                                       ; $443b: $d6 $cd
    ld [c], a                                     ; $443d: $e2
    sbc $df                                       ; $443e: $de $df
    jp nc, $fce2                                  ; $4440: $d2 $e2 $fc

    ldh a, [rIE]                                  ; $4443: $f0 $ff
    ldh [$eb], a                                  ; $4445: $e0 $eb
    sub $d2                                       ; $4447: $d6 $d2
    ret nc                                        ; $4449: $d0

    jp nc, $d6d4                                  ; $444a: $d2 $d4 $d6

    rst $18                                       ; $444d: $df
    db $d3                                        ; $444e: $d3
    and b                                         ; $444f: $a0
    and b                                         ; $4450: $a0
    ldh [$e1], a                                  ; $4451: $e0 $e1
    adc c                                         ; $4453: $89
    ldh [$d3], a                                  ; $4454: $e0 $d3
    ret nc                                        ; $4456: $d0

    db $ec                                        ; $4457: $ec
    ldh a, [rIE]                                  ; $4458: $f0 $ff
    ldh [$eb], a                                  ; $445a: $e0 $eb
    rst $10                                       ; $445c: $d7
    call nc, $e0cf                                ; $445d: $d4 $cf $e0
    rst $10                                       ; $4460: $d7
    jp nc, $e7d8                                  ; $4461: $d2 $d8 $e7

    and b                                         ; $4464: $a0
    ld [c], a                                     ; $4465: $e2
    db $e3                                        ; $4466: $e3
    ldh a, [rIE]                                  ; $4467: $f0 $ff
    ldh a, [$f0]                                  ; $4469: $f0 $f0
    db $dd                                        ; $446b: $dd
    reti                                          ; $446c: $d9


    rst $10                                       ; $446d: $d7
    rst $28                                       ; $446e: $ef
    call nc, $ddd7                                ; $446f: $d4 $d7 $dd
    ret nc                                        ; $4472: $d0

    adc a                                         ; $4473: $8f
    ldh [$a0], a                                  ; $4474: $e0 $a0
    db $eb                                        ; $4476: $eb
    and b                                         ; $4477: $a0
    and a                                         ; $4478: $a7
    and b                                         ; $4479: $a0
    rst $10                                       ; $447a: $d7
    jp nc, $fff0                                  ; $447b: $d2 $f0 $ff

    ldh [$eb], a                                  ; $447e: $e0 $eb
    ret nc                                        ; $4480: $d0

    cp [hl]                                       ; $4481: $be
    ldh [$dd], a                                  ; $4482: $e0 $dd
    db $fd                                        ; $4484: $fd
    pop de                                        ; $4485: $d1
    ret nc                                        ; $4486: $d0

    pop hl                                        ; $4487: $e1
    db $ec                                        ; $4488: $ec
    db $ed                                        ; $4489: $ed
    and b                                         ; $448a: $a0
    and b                                         ; $448b: $a0
    jp c, $a4d3                                   ; $448c: $da $d3 $a4

    ldh a, [rIE]                                  ; $448f: $f0 $ff
    ldh [$eb], a                                  ; $4491: $e0 $eb
    call nc, $e050                                ; $4493: $d4 $50 $e0
    ld c, $e0                                     ; $4496: $0e $e0
    rst $10                                       ; $4498: $d7
    adc h                                         ; $4499: $8c
    jp $e9dc                                      ; $449a: $c3 $dc $e9


    rst $10                                       ; $449d: $d7
    ldh a, [rIE]                                  ; $449e: $f0 $ff
    ldh [$eb], a                                  ; $44a0: $e0 $eb
    reti                                          ; $44a2: $d9


    ld d, b                                       ; $44a3: $50
    ldh [$d4], a                                  ; $44a4: $e0 $d4
    rst $10                                       ; $44a6: $d7
    reti                                          ; $44a7: $d9


    ld h, l                                       ; $44a8: $65
    jp c, $c44c                                   ; $44a9: $da $4c $c4

    jp c, $fff0                                   ; $44ac: $da $f0 $ff

    ldh [$eb], a                                  ; $44af: $e0 $eb
    db $db                                        ; $44b1: $db
    db $db                                        ; $44b2: $db
    call $17e0                                    ; $44b3: $cd $e0 $17
    jp c, $dcdb                                   ; $44b6: $da $db $dc

    inc c                                         ; $44b9: $0c
    call nz, $f0dc                                ; $44ba: $c4 $dc $f0
    jp hl                                         ; $44bd: $e9


    rst $38                                       ; $44be: $ff
    ret nz                                        ; $44bf: $c0

    ldh a, [$ea]                                  ; $44c0: $f0 $ea
    db $10                                        ; $44c2: $10
    ldh [$ed], a                                  ; $44c3: $e0 $ed
    ld e, a                                       ; $44c5: $5f
    pop hl                                        ; $44c6: $e1
    call $c2e2                                    ; $44c7: $cd $e2 $c2
    pop hl                                        ; $44ca: $e1
    ret c                                         ; $44cb: $d8

    ret z                                         ; $44cc: $c8

    and l                                         ; $44cd: $a5
    ldh a, [$e4]                                  ; $44ce: $f0 $e4
    rst $38                                       ; $44d0: $ff
    jp $f070                                      ; $44d1: $c3 $70 $f0


    rst $20                                       ; $44d4: $e7
    ldh [$ed], a                                  ; $44d5: $e0 $ed
    ret nc                                        ; $44d7: $d0

    and $92                                       ; $44d8: $e6 $92
    and c                                         ; $44da: $a1
    db $e4                                        ; $44db: $e4
    push hl                                       ; $44dc: $e5
    ret c                                         ; $44dd: $d8

    ld [$16c0], sp                                ; $44de: $08 $c0 $16
    add [hl]                                      ; $44e1: $86
    and a                                         ; $44e2: $a7
    db $e4                                        ; $44e3: $e4
    push hl                                       ; $44e4: $e5
    ld a, h                                       ; $44e5: $7c
    and d                                         ; $44e6: $a2
    ld [$f7e0], a                                 ; $44e7: $ea $e0 $f7
    ret nc                                        ; $44ea: $d0

    and $88                                       ; $44eb: $e6 $88
    ld [c], a                                     ; $44ed: $e2
    dec de                                        ; $44ee: $1b
    and $e7                                       ; $44ef: $e6 $e7
    halt                                          ; $44f1: $76
    ret nz                                        ; $44f2: $c0

    pop de                                        ; $44f3: $d1
    ret nc                                        ; $44f4: $d0

    add hl, bc                                    ; $44f5: $09
    ret nz                                        ; $44f6: $c0

    ldh a, [$e5]                                  ; $44f7: $f0 $e5
    inc a                                         ; $44f9: $3c
    xor c                                         ; $44fa: $a9
    ld [hl], h                                    ; $44fb: $74
    ldh [$f1], a                                  ; $44fc: $e0 $f1
    ret nc                                        ; $44fe: $d0

    and $d3                                       ; $44ff: $e6 $d3
    inc d                                         ; $4501: $14
    pop bc                                        ; $4502: $c1
    add sp, -$17                                  ; $4503: $e8 $e9
    jp c, $a3c7                                   ; $4505: $da $c7 $a3

    inc a                                         ; $4508: $3c
    ldh a, [$e6]                                  ; $4509: $f0 $e6
    db $fc                                        ; $450b: $fc
    add l                                         ; $450c: $85
    sbc a                                         ; $450d: $9f
    sbc l                                         ; $450e: $9d
    sbc l                                         ; $450f: $9d
    sbc a                                         ; $4510: $9f
    ldh [$f1], a                                  ; $4511: $e0 $f1
    ret nc                                        ; $4513: $d0

    and $84                                       ; $4514: $e6 $84
    pop de                                        ; $4516: $d1
    and b                                         ; $4517: $a0

jr_068_4518:
    ld d, [hl]                                    ; $4518: $56
    jp nz, $c7da                                  ; $4519: $c2 $da $c7

    and c                                         ; $451c: $a1
    adc c                                         ; $451d: $89
    ret nz                                        ; $451e: $c0

    ldh a, [$e4]                                  ; $451f: $f0 $e4
    nop                                           ; $4521: $00
    and d                                         ; $4522: $a2
    sbc a                                         ; $4523: $9f
    ccf                                           ; $4524: $3f
    and d                                         ; $4525: $a2
    sbc l                                         ; $4526: $9d
    or [hl]                                       ; $4527: $b6
    sub b                                         ; $4528: $90
    sub b                                         ; $4529: $90
    or [hl]                                       ; $452a: $b6
    cp l                                          ; $452b: $bd
    pop hl                                        ; $452c: $e1

Jump_068_452d:
    ldh [$ed], a                                  ; $452d: $e0 $ed
    ld d, d                                       ; $452f: $52
    ret nc                                        ; $4530: $d0

    and $da                                       ; $4531: $e6 $da
    ld d, h                                       ; $4533: $54
    ret nz                                        ; $4534: $c0

    jr jr_068_4518                                ; $4535: $18 $e1

    call c, $c077                                 ; $4537: $dc $77 $c0
    jp c, $c079                                   ; $453a: $da $79 $c0

    inc h                                         ; $453d: $24
    ldh a, [$e5]                                  ; $453e: $f0 $e5
    nop                                           ; $4540: $00
    and b                                         ; $4541: $a0
    sbc a                                         ; $4542: $9f
    jp $fee0                                      ; $4543: $c3 $e0 $fe


    db $e3                                        ; $4546: $e3
    or [hl]                                       ; $4547: $b6
    cp a                                          ; $4548: $bf
    ldh [$e0], a                                  ; $4549: $e0 $e0
    db $ec                                        ; $454b: $ec
    ld h, d                                       ; $454c: $62
    ret nc                                        ; $454d: $d0

    push hl                                       ; $454e: $e5
    call c, $c844                                 ; $454f: $dc $44 $c8
    ld a, [hl-]                                   ; $4552: $3a
    pop bc                                        ; $4553: $c1
    ldh a, [$e5]                                  ; $4554: $f0 $e5

Jump_068_4556:
    ld [c], a                                     ; $4556: $e2
    db $e3                                        ; $4557: $e3
    pop bc                                        ; $4558: $c1
    ldh [$3d], a                                  ; $4559: $e0 $3d
    jp $e3bf                                      ; $455b: $c3 $bf $e3


    jp $b690                                      ; $455e: $c3 $90 $b6


    and d                                         ; $4561: $a2
    cp [hl]                                       ; $4562: $be
    pop hl                                        ; $4563: $e1
    ldh [$e9], a                                  ; $4564: $e0 $e9
    ld [$e9c6], sp                                ; $4566: $08 $c6 $e9
    inc d                                         ; $4569: $14
    sub d                                         ; $456a: $92
    pop bc                                        ; $456b: $c1
    pop hl                                        ; $456c: $e1
    call nz, $e2bf                                ; $456d: $c4 $bf $e2
    ld sp, hl                                     ; $4570: $f9
    ld [c], a                                     ; $4571: $e2
    ld a, l                                       ; $4572: $7d
    ldh [rIE], a                                  ; $4573: $e0 $ff
    db $ed                                        ; $4575: $ed
    ld b, b                                       ; $4576: $40
    call nc, $d261                                ; $4577: $d4 $61 $d2
    ld h, d                                       ; $457a: $62
    inc d                                         ; $457b: $14
    add c                                         ; $457c: $81
    rst $00                                       ; $457d: $c7
    ld h, b                                       ; $457e: $60
    dec b                                         ; $457f: $05
    add b                                         ; $4580: $80
    inc a                                         ; $4581: $3c
    add $9f                                       ; $4582: $c6 $9f
    ld b, $e1                                     ; $4584: $06 $e1
    dec e                                         ; $4586: $1d
    call nz, $e0fe                                ; $4587: $c4 $fe $e0
    sub c                                         ; $458a: $91
    ld b, [hl]                                    ; $458b: $46
    sub c                                         ; $458c: $91
    ld sp, hl                                     ; $458d: $f9
    pop hl                                        ; $458e: $e1
    cp a                                          ; $458f: $bf
    ld [$e8d0], a                                 ; $4590: $ea $d0 $e8
    inc l                                         ; $4593: $2c
    sub [hl]                                      ; $4594: $96
    add d                                         ; $4595: $82
    inc d                                         ; $4596: $14
    add c                                         ; $4597: $81
    db $d3                                        ; $4598: $d3
    sub $46                                       ; $4599: $d6 $46
    add c                                         ; $459b: $81
    sub $86                                       ; $459c: $d6 $86
    add d                                         ; $459e: $82
    add e                                         ; $459f: $83
    ld [c], a                                     ; $45a0: $e2
    cp $04                                        ; $45a1: $fe $04
    ldh [$91], a                                  ; $45a3: $e0 $91
    ld b, l                                       ; $45a5: $45
    ld b, [hl]                                    ; $45a6: $46
    ld b, l                                       ; $45a7: $45
    ld b, e                                       ; $45a8: $43
    ld b, l                                       ; $45a9: $45
    ld b, [hl]                                    ; $45aa: $46
    adc d                                         ; $45ab: $8a
    rst $38                                       ; $45ac: $ff
    ldh [$91], a                                  ; $45ad: $e0 $91
    or $c0                                        ; $45af: $f6 $c0
    sbc [hl]                                      ; $45b1: $9e
    rst $28                                       ; $45b2: $ef
    and [hl]                                      ; $45b3: $a6
    ret nc                                        ; $45b4: $d0

    db $ed                                        ; $45b5: $ed
    inc d                                         ; $45b6: $14
    add b                                         ; $45b7: $80
    ret c                                         ; $45b8: $d8

    ldh a, [$0b]                                  ; $45b9: $f0 $0b
    add b                                         ; $45bb: $80
    ret z                                         ; $45bc: $c8

    add c                                         ; $45bd: $81
    ret nz                                        ; $45be: $c0

    db $e3                                        ; $45bf: $e3
    dec b                                         ; $45c0: $05
    pop hl                                        ; $45c1: $e1
    sub c                                         ; $45c2: $91

Jump_068_45c3:
    ld b, l                                       ; $45c3: $45
    ld b, e                                       ; $45c4: $43
    ld b, a                                       ; $45c5: $47
    rst $38                                       ; $45c6: $ff
    ld c, c                                       ; $45c7: $49
    ld b, h                                       ; $45c8: $44
    ld c, c                                       ; $45c9: $49
    ld c, h                                       ; $45ca: $4c
    ld e, h                                       ; $45cb: $5c
    ld a, c                                       ; $45cc: $79
    ld a, d                                       ; $45cd: $7a
    ld a, e                                       ; $45ce: $7b
    inc bc                                        ; $45cf: $03
    ld a, h                                       ; $45d0: $7c
    ld a, l                                       ; $45d1: $7d
    cp a                                          ; $45d2: $bf
    ldh [$3e], a                                  ; $45d3: $e0 $3e
    ld [c], a                                     ; $45d5: $e2
    ld e, c                                       ; $45d6: $59
    and d                                         ; $45d7: $a2
    ret nc                                        ; $45d8: $d0

    add sp, $0d                                   ; $45d9: $e8 $0d
    pop bc                                        ; $45db: $c1
    rla                                           ; $45dc: $17
    add b                                         ; $45dd: $80
    xor h                                         ; $45de: $ac
    or $61                                        ; $45df: $f6 $61
    rlca                                          ; $45e1: $07
    add b                                         ; $45e2: $80
    reti                                          ; $45e3: $d9


    db $dd                                        ; $45e4: $dd
    ldh a, [$e3]                                  ; $45e5: $f0 $e3
    and c                                         ; $45e7: $a1
    dec b                                         ; $45e8: $05
    ldh [rDMA], a                                 ; $45e9: $e0 $46
    rst $38                                       ; $45eb: $ff
    ld c, d                                       ; $45ec: $4a
    ld c, h                                       ; $45ed: $4c
    ld h, b                                       ; $45ee: $60
    ld d, h                                       ; $45ef: $54
    ld b, h                                       ; $45f0: $44
    ld e, c                                       ; $45f1: $59
    ld d, e                                       ; $45f2: $53
    ld a, c                                       ; $45f3: $79
    rra                                           ; $45f4: $1f
    ld a, [hl]                                    ; $45f5: $7e
    ld b, [hl]                                    ; $45f6: $46
    xor [hl]                                      ; $45f7: $ae
    ld b, [hl]                                    ; $45f8: $46
    ld a, a                                       ; $45f9: $7f
    cp a                                          ; $45fa: $bf
    push hl                                       ; $45fb: $e5
    pop de                                        ; $45fc: $d1
    and c                                         ; $45fd: $a1
    ret nc                                        ; $45fe: $d0

    jp hl                                         ; $45ff: $e9


    cp e                                          ; $4600: $bb
    db $d3                                        ; $4601: $d3
    jp c, $a318                                   ; $4602: $da $18 $a3

    db $d3                                        ; $4605: $d3
    ret nc                                        ; $4606: $d0

    pop de                                        ; $4607: $d1
    rlca                                          ; $4608: $07
    add b                                         ; $4609: $80
    ret nc                                        ; $460a: $d0

    push af                                       ; $460b: $f5
    ret nc                                        ; $460c: $d0

    ldh a, [$e3]                                  ; $460d: $f0 $e3
    sbc [hl]                                      ; $460f: $9e
    dec b                                         ; $4610: $05
    ldh [rLYC], a                                 ; $4611: $e0 $45
    ld c, e                                       ; $4613: $4b
    ld h, c                                       ; $4614: $61
    ld d, d                                       ; $4615: $52
    cp $85                                        ; $4616: $fe $85
    ldh [$7b], a                                  ; $4618: $e0 $7b
    adc a                                         ; $461a: $8f
    ld b, l                                       ; $461b: $45
    xor [hl]                                      ; $461c: $ae
    xor a                                         ; $461d: $af
    xor [hl]                                      ; $461e: $ae
    ld b, [hl]                                    ; $461f: $46
    ld c, e                                       ; $4620: $4b
    add c                                         ; $4621: $81
    ld b, [hl]                                    ; $4622: $46
    ld [hl], h                                    ; $4623: $74
    ret nz                                        ; $4624: $c0

    and c                                         ; $4625: $a1
    pop de                                        ; $4626: $d1
    and d                                         ; $4627: $a2
    ret nc                                        ; $4628: $d0

    ld [$86d7], a                                 ; $4629: $ea $d7 $86
    add h                                         ; $462c: $84
    db $e4                                        ; $462d: $e4
    ld c, b                                       ; $462e: $48
    ld h, c                                       ; $462f: $61
    ld b, $60                                     ; $4630: $06 $60
    call nc, $e3f0                                ; $4632: $d4 $f0 $e3
    ld b, $c1                                     ; $4635: $06 $c1
    ld b, l                                       ; $4637: $45
    ld d, [hl]                                    ; $4638: $56
    ld d, [hl]                                    ; $4639: $56
    rst $38                                       ; $463a: $ff
    ld a, c                                       ; $463b: $79
    ld a, [hl]                                    ; $463c: $7e
    dec hl                                        ; $463d: $2b
    inc l                                         ; $463e: $2c
    inc l                                         ; $463f: $2c
    inc l                                         ; $4640: $2c
    ld a, [hl+]                                   ; $4641: $2a
    xor a                                         ; $4642: $af
    inc bc                                        ; $4643: $03
    xor [hl]                                      ; $4644: $ae
    xor a                                         ; $4645: $af
    ret nz                                        ; $4646: $c0

    ldh [$74], a                                  ; $4647: $e0 $74
    ret nz                                        ; $4649: $c0

    cp $c0                                        ; $464a: $fe $c0
    pop de                                        ; $464c: $d1
    and c                                         ; $464d: $a1
    ret nc                                        ; $464e: $d0

    jp hl                                         ; $464f: $e9


    rla                                           ; $4650: $17
    add a                                         ; $4651: $87
    ld hl, sp+$08                                 ; $4652: $f8 $08
    add d                                         ; $4654: $82
    rlca                                          ; $4655: $07
    add l                                         ; $4656: $85
    push bc                                       ; $4657: $c5
    and b                                         ; $4658: $a0
    ld b, [hl]                                    ; $4659: $46
    ld b, e                                       ; $465a: $43
    ld b, e                                       ; $465b: $43
    add b                                         ; $465c: $80
    ld b, h                                       ; $465d: $44
    rst $38                                       ; $465e: $ff
    jr nc, jr_068_4681                            ; $465f: $30 $20

    jr nz, jr_068_4683                            ; $4661: $20 $20

    jr nc, jr_068_46a9                            ; $4663: $30 $44

    xor a                                         ; $4665: $af
    ld b, [hl]                                    ; $4666: $46
    nop                                           ; $4667: $00
    add b                                         ; $4668: $80
    ldh [$72], a                                  ; $4669: $e0 $72
    ret nz                                        ; $466b: $c0

    cp [hl]                                       ; $466c: $be
    ret nz                                        ; $466d: $c0

    pop de                                        ; $466e: $d1
    and l                                         ; $466f: $a5
    ret nc                                        ; $4670: $d0

    push hl                                       ; $4671: $e5
    rlca                                          ; $4672: $07
    add a                                         ; $4673: $87
    ld hl, sp+$62                                 ; $4674: $f8 $62
    rst $30                                       ; $4676: $f7
    ld h, [hl]                                    ; $4677: $66
    db $fd                                        ; $4678: $fd
    sbc [hl]                                      ; $4679: $9e
    ld b, b                                       ; $467a: $40
    ldh [$5a], a                                  ; $467b: $e0 $5a
    add d                                         ; $467d: $82
    add e                                         ; $467e: $83
    dec hl                                        ; $467f: $2b
    dec hl                                        ; $4680: $2b

jr_068_4681:
    dec hl                                        ; $4681: $2b
    rlca                                          ; $4682: $07

jr_068_4683:
    inc l                                         ; $4683: $2c
    ld a, [hl+]                                   ; $4684: $2a
    xor [hl]                                      ; $4685: $ae
    rst $38                                       ; $4686: $ff
    ret nz                                        ; $4687: $c0

    ret nz                                        ; $4688: $c0

    ldh [$fd], a                                  ; $4689: $e0 $fd
    xor d                                         ; $468b: $aa
    ret nc                                        ; $468c: $d0

    push hl                                       ; $468d: $e5
    call c, $f823                                 ; $468e: $dc $23 $f8
    call $0821                                    ; $4691: $cd $21 $08
    add [hl]                                      ; $4694: $86
    push af                                       ; $4695: $f5
    ld h, d                                       ; $4696: $62
    sbc a                                         ; $4697: $9f
    or [hl]                                       ; $4698: $b6
    sub c                                         ; $4699: $91
    ld d, d                                       ; $469a: $52
    ld d, [hl]                                    ; $469b: $56
    ccf                                           ; $469c: $3f
    add l                                         ; $469d: $85
    add a                                         ; $469e: $87
    adc b                                         ; $469f: $88
    adc b                                         ; $46a0: $88
    adc c                                         ; $46a1: $89
    add e                                         ; $46a2: $83
    ld bc, $40e0                                  ; $46a3: $01 $e0 $40
    pop hl                                        ; $46a6: $e1
    add b                                         ; $46a7: $80
    cp [hl]                                       ; $46a8: $be

jr_068_46a9:
    and a                                         ; $46a9: $a7
    ret nc                                        ; $46aa: $d0

    db $eb                                        ; $46ab: $eb
    call c, Call_068_4720                         ; $46ac: $dc $20 $47
    add b                                         ; $46af: $80
    ld c, $84                                     ; $46b0: $0e $84
    ldh a, [$e6]                                  ; $46b2: $f0 $e6
    inc bc                                        ; $46b4: $03
    and b                                         ; $46b5: $a0
    ld d, c                                       ; $46b6: $51
    rst $38                                       ; $46b7: $ff
    ld e, [hl]                                    ; $46b8: $5e
    ld c, c                                       ; $46b9: $49
    ld b, h                                       ; $46ba: $44
    ld c, [hl]                                    ; $46bb: $4e
    ld c, b                                       ; $46bc: $48
    add l                                         ; $46bd: $85
    adc e                                         ; $46be: $8b
    xor a                                         ; $46bf: $af
    ccf                                           ; $46c0: $3f
    ld b, [hl]                                    ; $46c1: $46
    xor a                                         ; $46c2: $af
    ld b, [hl]                                    ; $46c3: $46

Jump_068_46c4:
    add e                                         ; $46c4: $83
    add h                                         ; $46c5: $84
    ld b, [hl]                                    ; $46c6: $46
    nop                                           ; $46c7: $00
    pop bc                                        ; $46c8: $c1
    ret nc                                        ; $46c9: $d0

    ldh a, [$c4]                                  ; $46ca: $f0 $c4
    rst $00                                       ; $46cc: $c7
    ld h, b                                       ; $46cd: $60
    rlca                                          ; $46ce: $07
    add b                                         ; $46cf: $80
    rst $10                                       ; $46d0: $d7
    ld c, $81                                     ; $46d1: $0e $81
    ld a, l                                       ; $46d3: $7d
    ld h, d                                       ; $46d4: $62
    ldh a, [$e4]                                  ; $46d5: $f0 $e4
    and b                                         ; $46d7: $a0
    and b                                         ; $46d8: $a0
    rst $38                                       ; $46d9: $ff
    and c                                         ; $46da: $a1
    ld b, l                                       ; $46db: $45
    ld d, d                                       ; $46dc: $52
    ld d, h                                       ; $46dd: $54
    ld b, h                                       ; $46de: $44
    ld d, h                                       ; $46df: $54

Jump_068_46e0:
    ld h, b                                       ; $46e0: $60
    ld e, h                                       ; $46e1: $5c
    rst $38                                       ; $46e2: $ff
    add d                                         ; $46e3: $82
    add e                                         ; $46e4: $83
    ld b, [hl]                                    ; $46e5: $46
    ld b, [hl]                                    ; $46e6: $46
    add e                                         ; $46e7: $83
    add [hl]                                      ; $46e8: $86
    add l                                         ; $46e9: $85
    sub c                                         ; $46ea: $91
    inc hl                                        ; $46eb: $23
    or [hl]                                       ; $46ec: $b6
    sbc a                                         ; $46ed: $9f
    ldh [$e9], a                                  ; $46ee: $e0 $e9
    ret nc                                        ; $46f0: $d0

    and $c9                                       ; $46f1: $e6 $c9
    and e                                         ; $46f3: $a3
    jp c, $810e                                   ; $46f4: $da $0e $81

    push af                                       ; $46f7: $f5
    ld h, d                                       ; $46f8: $62
    ld l, h                                       ; $46f9: $6c
    ldh a, [$e4]                                  ; $46fa: $f0 $e4
    ld b, $80                                     ; $46fc: $06 $80
    sbc h                                         ; $46fe: $9c
    ld b, l                                       ; $46ff: $45
    add c                                         ; $4700: $81
    and b                                         ; $4701: $a0
    ld e, e                                       ; $4702: $5b
    ld b, l                                       ; $4703: $45
    dec sp                                        ; $4704: $3b
    pop hl                                        ; $4705: $e1
    rlca                                          ; $4706: $07
    add a                                         ; $4707: $87
    add l                                         ; $4708: $85
    sbc h                                         ; $4709: $9c
    ld sp, hl                                     ; $470a: $f9
    ld h, b                                       ; $470b: $60
    ldh [$e9], a                                  ; $470c: $e0 $e9
    ret nc                                        ; $470e: $d0

    and $c7                                       ; $470f: $e6 $c7
    ld h, b                                       ; $4711: $60
    sub c                                         ; $4712: $91
    ld b, b                                       ; $4713: $40
    jr c, @-$3e                                   ; $4714: $38 $c0

    ld b, d                                       ; $4716: $42
    push af                                       ; $4717: $f5
    ld h, d                                       ; $4718: $62
    ldh a, [$e7]                                  ; $4719: $f0 $e7
    sbc a                                         ; $471b: $9f
    sbc l                                         ; $471c: $9d
    sbc h                                         ; $471d: $9c
    ld b, l                                       ; $471e: $45
    and c                                         ; $471f: $a1

Call_068_4720:
    db $fc                                        ; $4720: $fc

Call_068_4721:
    ld [c], a                                     ; $4721: $e2
    ld b, c                                       ; $4722: $41
    sbc h                                         ; $4723: $9c
    jp nz, $e081                                  ; $4724: $c2 $81 $e0

    db $ec                                        ; $4727: $ec
    push bc                                       ; $4728: $c5
    ld h, e                                       ; $4729: $63
    rst $00                                       ; $472a: $c7
    ld h, b                                       ; $472b: $60
    add c                                         ; $472c: $81
    ld b, e                                       ; $472d: $43
    ld [$c324], a                                 ; $472e: $ea $24 $c3
    ld b, $f0                                     ; $4731: $06 $f0
    add sp, -$60                                  ; $4733: $e8 $a0
    sbc [hl]                                      ; $4735: $9e
    jp Jump_068_7ce4                              ; $4736: $c3 $e4 $7c


    ld h, d                                       ; $4739: $62
    ldh [$ef], a                                  ; $473a: $e0 $ef
    db $f4                                        ; $473c: $f4
    and e                                         ; $473d: $a3
    rst $38                                       ; $473e: $ff
    ld [hl], l                                    ; $473f: $75
    ld a, [hl]                                    ; $4740: $7e
    add b                                         ; $4741: $80
    pop hl                                        ; $4742: $e1
    ld a, c                                       ; $4743: $79
    ld a, d                                       ; $4744: $7a
    ld a, h                                       ; $4745: $7c
    ld a, l                                       ; $4746: $7d
    ld b, [hl]                                    ; $4747: $46
    ld b, [hl]                                    ; $4748: $46
    rst $00                                       ; $4749: $c7
    call nz, $ff18                                ; $474a: $c4 $18 $ff
    ld [hl], d                                    ; $474d: $72
    jr nc, @+$0f                                  ; $474e: $30 $0d

    nop                                           ; $4750: $00
    adc b                                         ; $4751: $88
    sbc h                                         ; $4752: $9c
    ld b, [hl]                                    ; $4753: $46
    dec b                                         ; $4754: $05
    and b                                         ; $4755: $a0
    ld b, $a0                                     ; $4756: $06 $a0
    ld b, e                                       ; $4758: $43
    db $e3                                        ; $4759: $e3
    add [hl]                                      ; $475a: $86
    call c, $a072                                 ; $475b: $dc $72 $a0
    and b                                         ; $475e: $a0
    jr nc, jr_068_476b                            ; $475f: $30 $0a

    db $fc                                        ; $4761: $fc
    ld h, $ca                                     ; $4762: $26 $ca
    ld b, b                                       ; $4764: $40
    add e                                         ; $4765: $83
    pop hl                                        ; $4766: $e1
    adc a                                         ; $4767: $8f
    ld a, $45                                     ; $4768: $3e $45
    add c                                         ; $476a: $81

jr_068_476b:
    adc [hl]                                      ; $476b: $8e
    ld a, h                                       ; $476c: $7c
    ld a, l                                       ; $476d: $7d
    sbc h                                         ; $476e: $9c
    sbc l                                         ; $476f: $9d
    add c                                         ; $4770: $81
    ld h, b                                       ; $4771: $60
    inc d                                         ; $4772: $14
    call nz, $d0c0                                ; $4773: $c4 $c0 $d0
    jp hl                                         ; $4776: $e9


    add d                                         ; $4777: $82
    ldh [$30], a                                  ; $4778: $e0 $30
    add hl, bc                                    ; $477a: $09
    db $fc                                        ; $477b: $fc
    ld h, $07                                     ; $477c: $26 $07
    ld h, c                                       ; $477e: $61
    add e                                         ; $477f: $83
    ldh [rLYC], a                                 ; $4780: $e0 $45
    ld b, e                                       ; $4782: $43
    bit 0, c                                      ; $4783: $cb $41
    ld b, e                                       ; $4785: $43
    db $fd                                        ; $4786: $fd
    ldh [rLYC], a                                 ; $4787: $e0 $45
    ld a, l                                       ; $4789: $7d
    ldh [$81], a                                  ; $478a: $e0 $81
    ld h, h                                       ; $478c: $64
    db $d3                                        ; $478d: $d3
    ret nc                                        ; $478e: $d0

    ret nc                                        ; $478f: $d0

    ret nc                                        ; $4790: $d0

    jp hl                                         ; $4791: $e9


    jr nc, jr_068_47a1                            ; $4792: $30 $0d

    db $fc                                        ; $4794: $fc
    dec h                                         ; $4795: $25
    ret z                                         ; $4796: $c8

    ld b, c                                       ; $4797: $41
    sub c                                         ; $4798: $91
    pop bc                                        ; $4799: $c1
    ldh [$36], a                                  ; $479a: $e0 $36
    dec sp                                        ; $479c: $3b
    dec sp                                        ; $479d: $3b
    dec [hl]                                      ; $479e: $35
    dec sp                                        ; $479f: $3b
    db $fd                                        ; $47a0: $fd

jr_068_47a1:
    ldh [$36], a                                  ; $47a1: $e0 $36
    ld b, l                                       ; $47a3: $45
    add c                                         ; $47a4: $81
    ret nz                                        ; $47a5: $c0

    ld h, b                                       ; $47a6: $60
    ld b, b                                       ; $47a7: $40
    ld h, d                                       ; $47a8: $62
    ret nc                                        ; $47a9: $d0

    ret nc                                        ; $47aa: $d0

    db $eb                                        ; $47ab: $eb
    ld a, [hl-]                                   ; $47ac: $3a
    add d                                         ; $47ad: $82
    jr nc, jr_068_47b8                            ; $47ae: $30 $08

    db $fc                                        ; $47b0: $fc
    dec h                                         ; $47b1: $25
    and c                                         ; $47b2: $a1
    adc c                                         ; $47b3: $89
    ld b, b                                       ; $47b4: $40
    ld b, [hl]                                    ; $47b5: $46
    add b                                         ; $47b6: $80
    rst $18                                       ; $47b7: $df

jr_068_47b8:
    ld b, [hl]                                    ; $47b8: $46
    ld b, h                                       ; $47b9: $44
    inc a                                         ; $47ba: $3c
    and h                                         ; $47bb: $a4
    ld h, h                                       ; $47bc: $64
    rst $38                                       ; $47bd: $ff
    ldh [$a5], a                                  ; $47be: $e0 $a5
    inc a                                         ; $47c0: $3c
    rst $10                                       ; $47c1: $d7
    ld b, h                                       ; $47c2: $44
    add c                                         ; $47c3: $81
    ld b, [hl]                                    ; $47c4: $46
    ld [bc], a                                    ; $47c5: $02
    and b                                         ; $47c6: $a0
    sbc [hl]                                      ; $47c7: $9e
    add hl, bc                                    ; $47c8: $09
    add b                                         ; $47c9: $80
    rst $10                                       ; $47ca: $d7
    jp nc, $d0a0                                  ; $47cb: $d2 $a0 $d0

    jp hl                                         ; $47ce: $e9


    di                                            ; $47cf: $f3
    and d                                         ; $47d0: $a2
    jr nc, jr_068_47db                            ; $47d1: $30 $08

    db $fc                                        ; $47d3: $fc
    inc h                                         ; $47d4: $24
    ld c, c                                       ; $47d5: $49
    ld b, c                                       ; $47d6: $41
    jp $e0c0                                      ; $47d7: $c3 $c0 $e0


    ld b, d                                       ; $47da: $42

jr_068_47db:
    rst $38                                       ; $47db: $ff
    dec [hl]                                      ; $47dc: $35
    ld l, c                                       ; $47dd: $69
    and e                                         ; $47de: $a3
    dec [hl]                                      ; $47df: $35
    dec [hl]                                      ; $47e0: $35
    and e                                         ; $47e1: $a3

Call_068_47e2:
    ld l, d                                       ; $47e2: $6a
    dec [hl]                                      ; $47e3: $35
    ld h, a                                       ; $47e4: $67
    ld b, d                                       ; $47e5: $42
    adc h                                         ; $47e6: $8c
    ld a, l                                       ; $47e7: $7d
    ld [bc], a                                    ; $47e8: $02
    add b                                         ; $47e9: $80
    cp a                                          ; $47ea: $bf
    ld b, c                                       ; $47eb: $41
    jp c, $d0d3                                   ; $47ec: $da $d3 $d0

    jp hl                                         ; $47ef: $e9


    ld c, b                                       ; $47f0: $48
    ldh a, [$e1]                                  ; $47f1: $f0 $e1
    jr nc, @+$0c                                  ; $47f3: $30 $0a

    db $fc                                        ; $47f5: $fc
    inc hl                                        ; $47f6: $23
    sbc [hl]                                      ; $47f7: $9e
    adc [hl]                                      ; $47f8: $8e
    ld b, c                                       ; $47f9: $41
    ret nz                                        ; $47fa: $c0

    db $e3                                        ; $47fb: $e3

jr_068_47fc:
    dec [hl]                                      ; $47fc: $35
    rst $38                                       ; $47fd: $ff
    ldh [rP1], a                                  ; $47fe: $e0 $00
    ret nz                                        ; $4800: $c0

    ldh [rSC], a                                  ; $4801: $e0 $02
    add e                                         ; $4803: $83
    ei                                            ; $4804: $fb
    ld hl, $0023                                  ; $4805: $21 $23 $00
    ret nc                                        ; $4808: $d0

    add sp, -$10                                  ; $4809: $e8 $f0
    ldh [$30], a                                  ; $480b: $e0 $30
    inc c                                         ; $480d: $0c
    ld a, [c]                                     ; $480e: $f2
    ld hl, $c0fe                                  ; $480f: $21 $fe $c0
    ldh [$c4], a                                  ; $4812: $e0 $c4
    sub b                                         ; $4814: $90
    ld b, [hl]                                    ; $4815: $46
    add d                                         ; $4816: $82
    add e                                         ; $4817: $83
    ld b, h                                       ; $4818: $44
    inc a                                         ; $4819: $3c
    dec sp                                        ; $481a: $3b
    ld l, e                                       ; $481b: $6b
    ld [hl], c                                    ; $481c: $71
    rst $38                                       ; $481d: $ff

Jump_068_481e:
    ldh [$6d], a                                  ; $481e: $e0 $6d
    inc a                                         ; $4820: $3c
    ld b, h                                       ; $4821: $44
    jp nz, Jump_068_7d81                          ; $4822: $c2 $81 $7d

    ld b, b                                       ; $4825: $40
    ret nz                                        ; $4826: $c0

    pop bc                                        ; $4827: $c1
    ld h, d                                       ; $4828: $62
    ret nc                                        ; $4829: $d0

    db $eb                                        ; $482a: $eb
    ld a, $80                                     ; $482b: $3e $80
    jr nc, jr_068_4839                            ; $482d: $30 $0a

    dec b                                         ; $482f: $05
    add e                                         ; $4830: $83
    add l                                         ; $4831: $85
    ld b, c                                       ; $4832: $41
    add l                                         ; $4833: $85
    adc e                                         ; $4834: $8b
    ld b, $c0                                     ; $4835: $06 $c0
    rst $00                                       ; $4837: $c7
    adc d                                         ; $4838: $8a

jr_068_4839:
    add l                                         ; $4839: $85
    add b                                         ; $483a: $80
    ld b, c                                       ; $483b: $41
    ld b, c                                       ; $483c: $41
    ld h, c                                       ; $483d: $61
    ld b, e                                       ; $483e: $43
    nop                                           ; $483f: $00
    ret nc                                        ; $4840: $d0

jr_068_4841:
    ld [$227f], a                                 ; $4841: $ea $7f $22
    inc b                                         ; $4844: $04
    jr nc, @+$0e                                  ; $4845: $30 $0c

    ret nz                                        ; $4847: $c0

    pop hl                                        ; $4848: $e1
    jp $e17f                                      ; $4849: $c3 $7f $e1


    ld b, b                                       ; $484c: $40
    push bc                                       ; $484d: $c5
    ld b, e                                       ; $484e: $43
    add c                                         ; $484f: $81
    halt                                          ; $4850: $76
    ld hl, $833f                                  ; $4851: $21 $3f $83
    ld hl, sp-$30                                 ; $4854: $f8 $d0
    xor $30                                       ; $4856: $ee $30
    dec bc                                        ; $4858: $0b
    inc b                                         ; $4859: $04
    ld b, e                                       ; $485a: $43
    call nz, $91c3                                ; $485b: $c4 $c3 $91
    add l                                         ; $485e: $85
    add a                                         ; $485f: $87
    ld sp, hl                                     ; $4860: $f9
    adc c                                         ; $4861: $89
    ld b, [hl]                                    ; $4862: $46
    add b                                         ; $4863: $80
    ld b, h                                       ; $4864: $44
    add b                                         ; $4865: $80
    adc c                                         ; $4866: $89
    add a                                         ; $4867: $87
    add l                                         ; $4868: $85
    sub c                                         ; $4869: $91
    jp $be00                                      ; $486a: $c3 $00 $be


    jr nz, jr_068_48ed                            ; $486d: $20 $7e

    jr z, jr_068_4841                             ; $486f: $28 $d0

    add sp, $30                                   ; $4871: $e8 $30
    dec c                                         ; $4873: $0d
    ld a, b                                       ; $4874: $78
    ldh [$bf], a                                  ; $4875: $e0 $bf
    ld [c], a                                     ; $4877: $e2
    add a                                         ; $4878: $87
    jr nz, jr_068_47fc                            ; $4879: $20 $81

    ld h, c                                       ; $487b: $61
    nop                                           ; $487c: $00
    ld b, h                                       ; $487d: $44
    add c                                         ; $487e: $81
    jp nz, $c120                                  ; $487f: $c2 $20 $c1

    rst $20                                       ; $4882: $e7
    ret nc                                        ; $4883: $d0

    db $ed                                        ; $4884: $ed
    jr nc, jr_068_4894                            ; $4885: $30 $0d

    rra                                           ; $4887: $1f
    ld b, c                                       ; $4888: $41
    rst $38                                       ; $4889: $ff
    and c                                         ; $488a: $a1
    add d                                         ; $488b: $82
    jr nz, jr_068_488e                            ; $488c: $20 $00

jr_068_488e:
    ld b, d                                       ; $488e: $42
    add l                                         ; $488f: $85
    inc bc                                        ; $4890: $03
    ld [c], a                                     ; $4891: $e2
    ld b, e                                       ; $4892: $43
    ld b, c                                       ; $4893: $41

jr_068_4894:
    ld a, l                                       ; $4894: $7d
    and e                                         ; $4895: $a3
    ret nc                                        ; $4896: $d0

    db $eb                                        ; $4897: $eb
    jr nc, @+$0f                                  ; $4898: $30 $0d

    ldh a, [$e1]                                  ; $489a: $f0 $e1
    ld b, a                                       ; $489c: $47
    inc bc                                        ; $489d: $03
    dec b                                         ; $489e: $05
    jp $e3be                                      ; $489f: $c3 $be $e3


    sub c                                         ; $48a2: $91
    ld a, e                                       ; $48a3: $7b
    inc bc                                        ; $48a4: $03
    ret nz                                        ; $48a5: $c0

    ld bc, $01d8                                  ; $48a6: $01 $d8 $01
    ret nc                                        ; $48a9: $d0

    db $ed                                        ; $48aa: $ed
    jr nc, jr_068_48ba                            ; $48ab: $30 $0d

    inc d                                         ; $48ad: $14

Jump_068_48ae:
    ldh a, [$e2]                                  ; $48ae: $f0 $e2
    ret nz                                        ; $48b0: $c0

    add b                                         ; $48b1: $80
    or [hl]                                       ; $48b2: $b6
    rlc c                                         ; $48b3: $cb $01
    jp $013e                                      ; $48b5: $c3 $3e $01


    dec b                                         ; $48b8: $05
    pop hl                                        ; $48b9: $e1

jr_068_48ba:
    cp $62                                        ; $48ba: $fe $62
    db $10                                        ; $48bc: $10
    ret c                                         ; $48bd: $d8

    ld [bc], a                                    ; $48be: $02
    ret nc                                        ; $48bf: $d0

    db $ed                                        ; $48c0: $ed
    ld bc, $be95                                  ; $48c1: $01 $95 $be
    ld [bc], a                                    ; $48c4: $02
    call nz, $c1c8                                ; $48c5: $c4 $c8 $c1
    ld b, h                                       ; $48c8: $44
    rlca                                          ; $48c9: $07
    inc c                                         ; $48ca: $0c
    and c                                         ; $48cb: $a1
    nop                                           ; $48cc: $00
    pop de                                        ; $48cd: $d1
    ld l, l                                       ; $48ce: $6d
    jr nc, @+$0e                                  ; $48cf: $30 $0c

    inc h                                         ; $48d1: $24
    add a                                         ; $48d2: $87
    ei                                            ; $48d3: $fb
    jp nz, Jump_000_0247                          ; $48d4: $c2 $47 $02

    add h                                         ; $48d7: $84
    ld [c], a                                     ; $48d8: $e2
    inc b                                         ; $48d9: $04
    sub b                                         ; $48da: $90
    call nz, Call_000_0061                        ; $48db: $c4 $61 $00
    jp nz, $3062                                  ; $48de: $c2 $62 $30

    ld [$e6f0], sp                                ; $48e1: $08 $f0 $e6
    dec a                                         ; $48e4: $3d
    inc b                                         ; $48e5: $04
    ld c, b                                       ; $48e6: $48
    ld [bc], a                                    ; $48e7: $02
    ldh [$f1], a                                  ; $48e8: $e0 $f1
    ret nc                                        ; $48ea: $d0

    db $e4                                        ; $48eb: $e4
    ld b, b                                       ; $48ec: $40

jr_068_48ed:
    ld [bc], a                                    ; $48ed: $02
    nop                                           ; $48ee: $00
    jr nc, @+$0f                                  ; $48ef: $30 $0d

    inc h                                         ; $48f1: $24
    add d                                         ; $48f2: $82
    cp a                                          ; $48f3: $bf
    push hl                                       ; $48f4: $e5
    add hl, bc                                    ; $48f5: $09
    and b                                         ; $48f6: $a0
    ldh [$f1], a                                  ; $48f7: $e0 $f1
    ret nc                                        ; $48f9: $d0

    jp hl                                         ; $48fa: $e9


    jr nc, @+$0a                                  ; $48fb: $30 $08

    ldh a, [$e5]                                  ; $48fd: $f0 $e5
    nop                                           ; $48ff: $00
    db $fd                                        ; $4900: $fd
    add $4b                                       ; $4901: $c6 $4b
    ld hl, $f0e0                                  ; $4903: $21 $e0 $f0
    ret nc                                        ; $4906: $d0

    push hl                                       ; $4907: $e5
    sub $21                                       ; $4908: $d6 $21
    jr nc, jr_068_4915                            ; $490a: $30 $09

    ldh a, [$e5]                                  ; $490c: $f0 $e5
    add hl, sp                                    ; $490e: $39
    ld h, [hl]                                    ; $490f: $66
    jr jr_068_495c                                ; $4910: $18 $4a

    add b                                         ; $4912: $80
    ldh [$f1], a                                  ; $4913: $e0 $f1

jr_068_4915:
    ret nc                                        ; $4915: $d0

    push hl                                       ; $4916: $e5
    db $d3                                        ; $4917: $d3
    jp c, $8237                                   ; $4918: $da $37 $82

    jr nc, @+$08                                  ; $491b: $30 $06

    ldh a, [$e5]                                  ; $491d: $f0 $e5
    db $10                                        ; $491f: $10
    jr nz, jr_068_4985                            ; $4920: $20 $63

    sub $42                                       ; $4922: $d6 $42
    ldh [$f2], a                                  ; $4924: $e0 $f2
    ret nc                                        ; $4926: $d0

    push hl                                       ; $4927: $e5
    rst $10                                       ; $4928: $d7
    ld a, a                                       ; $4929: $7f
    inc b                                         ; $492a: $04
    jr nc, jr_068_4932                            ; $492b: $30 $05

    ldh a, [$e5]                                  ; $492d: $f0 $e5
    nop                                           ; $492f: $00
    jr nz, jr_068_4995                            ; $4930: $20 $63

jr_068_4932:
    ld [$e007], a                                 ; $4932: $ea $07 $e0
    db $ed                                        ; $4935: $ed
    ret nc                                        ; $4936: $d0

    push hl                                       ; $4937: $e5
    scf                                           ; $4938: $37
    add [hl]                                      ; $4939: $86
    jr nc, jr_068_4940                            ; $493a: $30 $04

    rst $30                                       ; $493c: $f7
    ld h, l                                       ; $493d: $65
    jr nz, jr_068_49a3                            ; $493e: $20 $63

jr_068_4940:
    nop                                           ; $4940: $00
    ld [$e001], a                                 ; $4941: $ea $01 $e0
    di                                            ; $4944: $f3
    ret nc                                        ; $4945: $d0

    push hl                                       ; $4946: $e5
    call nz, $3027                                ; $4947: $c4 $27 $30
    inc bc                                        ; $494a: $03
    db $ed                                        ; $494b: $ed
    xor e                                         ; $494c: $ab
    ld a, [de]                                    ; $494d: $1a
    ld hl, $f3e0                                  ; $494e: $21 $e0 $f3
    nop                                           ; $4951: $00
    ret nc                                        ; $4952: $d0

    push hl                                       ; $4953: $e5
    jr nc, jr_068_4965                            ; $4954: $30 $0f

    dec h                                         ; $4956: $25
    adc h                                         ; $4957: $8c
    ldh [$f6], a                                  ; $4958: $e0 $f6
    ret nc                                        ; $495a: $d0

    push hl                                       ; $495b: $e5

jr_068_495c:
    jr nc, @+$0e                                  ; $495c: $30 $0c

    ldh a, [$e9]                                  ; $495e: $f0 $e9
    add sp, -$7f                                  ; $4960: $e8 $81

Jump_068_4962:
    nop                                           ; $4962: $00
    ldh [$f9], a                                  ; $4963: $e0 $f9

jr_068_4965:
    xor l                                         ; $4965: $ad
    ld [hl+], a                                   ; $4966: $22
    jr nc, @+$0e                                  ; $4967: $30 $0c

    ldh a, [rIE]                                  ; $4969: $f0 $ff
    ldh [$eb], a                                  ; $496b: $e0 $eb
    jr nc, jr_068_497c                            ; $496d: $30 $0d

    ldh a, [rIE]                                  ; $496f: $f0 $ff
    ldh [$eb], a                                  ; $4971: $e0 $eb
    nop                                           ; $4973: $00
    jr nc, @+$0f                                  ; $4974: $30 $0d

    ldh a, [rIE]                                  ; $4976: $f0 $ff
    ldh [$eb], a                                  ; $4978: $e0 $eb
    jr nc, jr_068_4989                            ; $497a: $30 $0d

jr_068_497c:
    ldh a, [rIE]                                  ; $497c: $f0 $ff
    ldh [$eb], a                                  ; $497e: $e0 $eb
    rst $38                                       ; $4980: $ff
    halt                                          ; $4981: $76
    ldh a, [rIE]                                  ; $4982: $f0 $ff
    nop                                           ; $4984: $00

jr_068_4985:
    push bc                                       ; $4985: $c5
    ld h, c                                       ; $4986: $61
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00

jr_068_4989:
    nop                                           ; $4989: $00
    pop bc                                        ; $498a: $c1
    nop                                           ; $498b: $00
    rst $38                                       ; $498c: $ff
    rst $38                                       ; $498d: $ff
    rst $38                                       ; $498e: $ff
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    rst $38                                       ; $4992: $ff
    rst $38                                       ; $4993: $ff
    rst $38                                       ; $4994: $ff

jr_068_4995:
    rst $38                                       ; $4995: $ff
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    dec c                                         ; $4998: $0d
    add b                                         ; $4999: $80
    cp $e0                                        ; $499a: $fe $e0
    nop                                           ; $499c: $00
    ld b, b                                       ; $499d: $40
    ret c                                         ; $499e: $d8

    push hl                                       ; $499f: $e5
    rst $30                                       ; $49a0: $f7
    and $eb                                       ; $49a1: $e6 $eb

jr_068_49a3:
    ldh [rIE], a                                  ; $49a3: $e0 $ff
    rst $38                                       ; $49a5: $ff
    nop                                           ; $49a6: $00
    rst $38                                       ; $49a7: $ff
    db $f4                                        ; $49a8: $f4
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    ld [bc], a                                    ; $49ac: $02
    nop                                           ; $49ad: $00
    ld e, $10                                     ; $49ae: $1e $10
    ld [bc], a                                    ; $49b0: $02
    ld bc, $1025                                  ; $49b1: $01 $25 $10
    ld [bc], a                                    ; $49b4: $02
    ld [bc], a                                    ; $49b5: $02
    dec e                                         ; $49b6: $1d
    ld de, $0302                                  ; $49b7: $11 $02 $03
    rra                                           ; $49ba: $1f
    ld de, $0402                                  ; $49bb: $11 $02 $04
    inc h                                         ; $49be: $24
    ld de, $0502                                  ; $49bf: $11 $02 $05
    ld h, $11                                     ; $49c2: $26 $11
    ld [bc], a                                    ; $49c4: $02
    ld b, $19                                     ; $49c5: $06 $19
    inc d                                         ; $49c7: $14
    ld [bc], a                                    ; $49c8: $02
    rlca                                          ; $49c9: $07
    jr jr_068_49e1                                ; $49ca: $18 $15

    ld [bc], a                                    ; $49cc: $02
    ld [$1525], sp                                ; $49cd: $08 $25 $15
    ld [bc], a                                    ; $49d0: $02
    add hl, bc                                    ; $49d1: $09
    inc h                                         ; $49d2: $24
    ld d, $02                                     ; $49d3: $16 $02
    ld a, [bc]                                    ; $49d5: $0a
    ld h, $16                                     ; $49d6: $26 $16
    ld [bc], a                                    ; $49d8: $02
    dec bc                                        ; $49d9: $0b
    ld a, [hl+]                                   ; $49da: $2a
    ld d, $02                                     ; $49db: $16 $02
    inc c                                         ; $49dd: $0c
    dec h                                         ; $49de: $25
    rla                                           ; $49df: $17
    ld [bc], a                                    ; $49e0: $02

jr_068_49e1:
    dec c                                         ; $49e1: $0d
    dec hl                                        ; $49e2: $2b
    rla                                           ; $49e3: $17
    ld [bc], a                                    ; $49e4: $02
    ld c, $24                                     ; $49e5: $0e $24
    add hl, de                                    ; $49e7: $19
    ld [bc], a                                    ; $49e8: $02
    rrca                                          ; $49e9: $0f
    ld h, $19                                     ; $49ea: $26 $19
    ld [bc], a                                    ; $49ec: $02
    db $10                                        ; $49ed: $10
    inc hl                                        ; $49ee: $23
    ld a, [de]                                    ; $49ef: $1a
    ld [bc], a                                    ; $49f0: $02
    ld de, $1a25                                  ; $49f1: $11 $25 $1a
    ld [bc], a                                    ; $49f4: $02
    ld [de], a                                    ; $49f5: $12
    rla                                           ; $49f6: $17
    ld h, $02                                     ; $49f7: $26 $02
    inc de                                        ; $49f9: $13
    jr z, jr_068_4a22                             ; $49fa: $28 $26

    ld [bc], a                                    ; $49fc: $02
    inc d                                         ; $49fd: $14
    ld d, $27                                     ; $49fe: $16 $27
    ld [bc], a                                    ; $4a00: $02
    dec d                                         ; $4a01: $15
    add hl, hl                                    ; $4a02: $29
    daa                                           ; $4a03: $27
    ld [bc], a                                    ; $4a04: $02
    ld d, $17                                     ; $4a05: $16 $17
    ld a, [hl+]                                   ; $4a07: $2a
    ld [bc], a                                    ; $4a08: $02
    rla                                           ; $4a09: $17
    jr z, jr_068_4a36                             ; $4a0a: $28 $2a

    ld [bc], a                                    ; $4a0c: $02
    jr jr_068_4a27                                ; $4a0d: $18 $18

    dec hl                                        ; $4a0f: $2b
    ld [bc], a                                    ; $4a10: $02
    add hl, de                                    ; $4a11: $19
    daa                                           ; $4a12: $27
    dec hl                                        ; $4a13: $2b
    ld [bc], a                                    ; $4a14: $02
    ld a, [de]                                    ; $4a15: $1a
    dec de                                        ; $4a16: $1b
    ld l, $02                                     ; $4a17: $2e $02
    dec de                                        ; $4a19: $1b
    inc hl                                        ; $4a1a: $23
    ld l, $02                                     ; $4a1b: $2e $02
    inc e                                         ; $4a1d: $1c
    ld e, $2f                                     ; $4a1e: $1e $2f
    ld [bc], a                                    ; $4a20: $02
    dec e                                         ; $4a21: $1d

jr_068_4a22:
    jr nz, jr_068_4a53                            ; $4a22: $20 $2f

    ld [bc], a                                    ; $4a24: $02
    ld e, $1f                                     ; $4a25: $1e $1f

jr_068_4a27:
    jr nc, @+$01                                  ; $4a27: $30 $ff

    rst $38                                       ; $4a29: $ff
    rst $38                                       ; $4a2a: $ff
    inc sp                                        ; $4a2b: $33
    ld c, d                                       ; $4a2c: $4a
    pop bc                                        ; $4a2d: $c1
    ld c, a                                       ; $4a2e: $4f
    ld [hl], d                                    ; $4a2f: $72
    ld d, [hl]                                    ; $4a30: $56
    sub h                                         ; $4a31: $94
    ld d, [hl]                                    ; $4a32: $56
    ld e, a                                       ; $4a33: $5f
    ld l, $0e                                     ; $4a34: $2e $0e

jr_068_4a36:
    ld c, $0e                                     ; $4a36: $0e $0e
    ld c, l                                       ; $4a38: $4d
    rst $38                                       ; $4a39: $ff
    and $2e                                       ; $4a3a: $e6 $2e
    rst $38                                       ; $4a3c: $ff
    pop hl                                        ; $4a3d: $e1
    ld [c], a                                     ; $4a3e: $e2
    xor $e0                                       ; $4a3f: $ee $e0
    ld c, [hl]                                    ; $4a41: $4e
    db $ec                                        ; $4a42: $ec
    pop hl                                        ; $4a43: $e1
    push af                                       ; $4a44: $f5
    pop hl                                        ; $4a45: $e1
    pop hl                                        ; $4a46: $e1
    ldh [$0d], a                                  ; $4a47: $e0 $0d
    ld c, l                                       ; $4a49: $4d
    ld c, l                                       ; $4a4a: $4d
    jp Jump_000_0d0d                              ; $4a4b: $c3 $0d $0d


    reti                                          ; $4a4e: $d9


    ldh [$fa], a                                  ; $4a4f: $e0 $fa
    ldh [$de], a                                  ; $4a51: $e0 $de

jr_068_4a53:
    pop hl                                        ; $4a53: $e1
    ret nc                                        ; $4a54: $d0

    ld [$4d4d], a                                 ; $4a55: $ea $4d $4d
    rlca                                          ; $4a58: $07
    ld l, [hl]                                    ; $4a59: $6e
    ld l, $6e                                     ; $4a5a: $2e $6e
    cp [hl]                                       ; $4a5c: $be
    ldh [$bd], a                                  ; $4a5d: $e0 $bd
    ldh [$e2], a                                  ; $4a5f: $e0 $e2
    db $e3                                        ; $4a61: $e3
    ret nz                                        ; $4a62: $c0

    db $e4                                        ; $4a63: $e4
    xor h                                         ; $4a64: $ac
    ld [c], a                                     ; $4a65: $e2
    sub d                                         ; $4a66: $92
    ret nz                                        ; $4a67: $c0

    and $0d                                       ; $4a68: $e6 $0d
    add $e1                                       ; $4a6a: $c6 $e1
    ei                                            ; $4a6c: $fb
    ldh [$0d], a                                  ; $4a6d: $e0 $0d
    jp nz, $d0e0                                  ; $4a6f: $c2 $e0 $d0

    db $ec                                        ; $4a72: $ec
    ld c, $b6                                     ; $4a73: $0e $b6
    pop bc                                        ; $4a75: $c1
    ldh [$4e], a                                  ; $4a76: $e0 $4e
    ld c, [hl]                                    ; $4a78: $4e
    ret nz                                        ; $4a79: $c0

    ld sp, hl                                     ; $4a7a: $f9
    ld l, l                                       ; $4a7b: $6d
    ld c, l                                       ; $4a7c: $4d
    adc c                                         ; $4a7d: $89
    pop hl                                        ; $4a7e: $e1
    ld c, l                                       ; $4a7f: $4d
    pop bc                                        ; $4a80: $c1
    dec l                                         ; $4a81: $2d
    cp d                                          ; $4a82: $ba
    ld [c], a                                     ; $4a83: $e2
    ld h, b                                       ; $4a84: $60
    ldh [$d0], a                                  ; $4a85: $e0 $d0
    ld a, [c]                                     ; $4a87: $f2
    ld d, b                                       ; $4a88: $50
    ldh [$80], a                                  ; $4a89: $e0 $80
    db $ed                                        ; $4a8b: $ed
    dec c                                         ; $4a8c: $0d
    dec c                                         ; $4a8d: $0d
    ld a, l                                       ; $4a8e: $7d
    ld l, l                                       ; $4a8f: $6d
    dec [hl]                                      ; $4a90: $35
    ldh [$6d], a                                  ; $4a91: $e0 $6d
    ld l, l                                       ; $4a93: $6d
    ld l, l                                       ; $4a94: $6d
    dec c                                         ; $4a95: $0d
    ld l, l                                       ; $4a96: $6d
    add l                                         ; $4a97: $85
    ld [c], a                                     ; $4a98: $e2
    add hl, de                                    ; $4a99: $19
    dec l                                         ; $4a9a: $2d
    cp [hl]                                       ; $4a9b: $be
    ldh [$d0], a                                  ; $4a9c: $e0 $d0
    ld sp, hl                                     ; $4a9e: $f9
    ld c, l                                       ; $4a9f: $4d
    dec c                                         ; $4aa0: $0d
    inc c                                         ; $4aa1: $0c
    db $e4                                        ; $4aa2: $e4
    ret nz                                        ; $4aa3: $c0

    and $2c                                       ; $4aa4: $e6 $2c
    ld [c], a                                     ; $4aa6: $e2
    ld a, h                                       ; $4aa7: $7c
    cp c                                          ; $4aa8: $b9
    ldh [rDMA], a                                 ; $4aa9: $e0 $46
    pop hl                                        ; $4aab: $e1
    dec hl                                        ; $4aac: $2b
    dec bc                                        ; $4aad: $0b
    dec hl                                        ; $4aae: $2b
    ld c, l                                       ; $4aaf: $4d
    dec l                                         ; $4ab0: $2d
    ret nz                                        ; $4ab1: $c0

    rst $20                                       ; $4ab2: $e7
    ld h, b                                       ; $4ab3: $60
    ret nc                                        ; $4ab4: $d0

    push hl                                       ; $4ab5: $e5
    db $10                                        ; $4ab6: $10
    jp hl                                         ; $4ab7: $e9


    inc c                                         ; $4ab8: $0c
    push hl                                       ; $4ab9: $e5
    ret nz                                        ; $4aba: $c0

    rst $20                                       ; $4abb: $e7
    ret nc                                        ; $4abc: $d0

    pop bc                                        ; $4abd: $c1
    ld l, l                                       ; $4abe: $6d
    dec l                                         ; $4abf: $2d
    jp nz, $0fe2                                  ; $4ac0: $c2 $e2 $0f

    ld a, [bc]                                    ; $4ac3: $0a
    ld a, [hl+]                                   ; $4ac4: $2a
    ld c, e                                       ; $4ac5: $4b
    dec bc                                        ; $4ac6: $0b
    inc a                                         ; $4ac7: $3c
    ldh [$d0], a                                  ; $4ac8: $e0 $d0
    db $ed                                        ; $4aca: $ed
    ret nc                                        ; $4acb: $d0

    jp z, $e317                                   ; $4acc: $ca $17 $e3

    db $f4                                        ; $4acf: $f4
    sbc [hl]                                      ; $4ad0: $9e
    rst $00                                       ; $4ad1: $c7
    ld b, a                                       ; $4ad2: $47
    ld [c], a                                     ; $4ad3: $e2
    dec bc                                        ; $4ad4: $0b
    rst $38                                       ; $4ad5: $ff
    ldh [$0d], a                                  ; $4ad6: $e0 $0d
    ld a, [bc]                                    ; $4ad8: $0a
    ld a, [bc]                                    ; $4ad9: $0a
    ld a, [hl+]                                   ; $4ada: $2a
    rrca                                          ; $4adb: $0f
    ld a, [bc]                                    ; $4adc: $0a
    ld c, e                                       ; $4add: $4b
    dec c                                         ; $4ade: $0d
    dec bc                                        ; $4adf: $0b
    ret nz                                        ; $4ae0: $c0

    db $eb                                        ; $4ae1: $eb
    ret nc                                        ; $4ae2: $d0

    pop hl                                        ; $4ae3: $e1
    ret nz                                        ; $4ae4: $c0

    rst $28                                       ; $4ae5: $ef
    sub h                                         ; $4ae6: $94
    pop bc                                        ; $4ae7: $c1
    db $f4                                        ; $4ae8: $f4
    cp b                                          ; $4ae9: $b8
    db $e3                                        ; $4aea: $e3
    ld [$0be1], sp                                ; $4aeb: $08 $e1 $0b
    adc d                                         ; $4aee: $8a
    pop bc                                        ; $4aef: $c1
    dec c                                         ; $4af0: $0d
    ld c, d                                       ; $4af1: $4a
    ld a, [bc]                                    ; $4af2: $0a
    ld a, [hl+]                                   ; $4af3: $2a
    nop                                           ; $4af4: $00
    cp d                                          ; $4af5: $ba
    pop hl                                        ; $4af6: $e1
    ld a, a                                       ; $4af7: $7f
    push hl                                       ; $4af8: $e5
    sub b                                         ; $4af9: $90
    jp hl                                         ; $4afa: $e9


    add b                                         ; $4afb: $80
    ld [$e27c], a                                 ; $4afc: $ea $7c $e2
    nop                                           ; $4aff: $00
    ret nz                                        ; $4b00: $c0

    or $e4                                        ; $4b01: $f6 $e4
    call nz, $15e2                                ; $4b03: $c4 $e2 $15
    ld a, [bc]                                    ; $4b06: $0a
    cp l                                          ; $4b07: $bd
    pop hl                                        ; $4b08: $e1
    ld a, [bc]                                    ; $4b09: $0a

Jump_068_4b0a:
    ld a, d                                       ; $4b0a: $7a
    ldh [rWX], a                                  ; $4b0b: $e0 $4b
    halt                                          ; $4b0d: $76
    ldh [$c0], a                                  ; $4b0e: $e0 $c0
    db $ec                                        ; $4b10: $ec
    rst $08                                       ; $4b11: $cf
    and c                                         ; $4b12: $a1
    nop                                           ; $4b13: $00
    xor $a6                                       ; $4b14: $ee $a6
    sbc $a1                                       ; $4b16: $de $a1
    inc a                                         ; $4b18: $3c
    pop hl                                        ; $4b19: $e1
    pop af                                        ; $4b1a: $f1
    and b                                         ; $4b1b: $a0
    ld c, [hl]                                    ; $4b1c: $4e
    ret nz                                        ; $4b1d: $c0

    add $c2                                       ; $4b1e: $c6 $c2
    jp nz, Jump_068_46e0                          ; $4b20: $c2 $e0 $46

    ldh [rIE], a                                  ; $4b23: $e0 $ff
    dec c                                         ; $4b25: $0d
    dec hl                                        ; $4b26: $2b
    dec c                                         ; $4b27: $0d
    dec bc                                        ; $4b28: $0b
    ld l, e                                       ; $4b29: $6b
    ld l, e                                       ; $4b2a: $6b
    ld l, e                                       ; $4b2b: $6b
    ld a, [bc]                                    ; $4b2c: $0a
    ld bc, $3f0a                                  ; $4b2d: $01 $0a $3f
    pop hl                                        ; $4b30: $e1
    cp [hl]                                       ; $4b31: $be
    and a                                         ; $4b32: $a7
    ret nc                                        ; $4b33: $d0

    push hl                                       ; $4b34: $e5
    ret c                                         ; $4b35: $d8

    jp nz, $a09f                                  ; $4b36: $c2 $9f $a0

    ld hl, sp-$60                                 ; $4b39: $f8 $a0
    cp c                                          ; $4b3b: $b9
    and d                                         ; $4b3c: $a2
    inc [hl]                                      ; $4b3d: $34
    add b                                         ; $4b3e: $80
    and b                                         ; $4b3f: $a0
    ld c, e                                       ; $4b40: $4b
    ld [c], a                                     ; $4b41: $e2
    ld c, l                                       ; $4b42: $4d
    ld b, e                                       ; $4b43: $43
    ldh [$0a], a                                  ; $4b44: $e0 $0a
    ld a, [hl+]                                   ; $4b46: $2a
    ld [$fee0], sp                                ; $4b47: $08 $e0 $fe
    pop bc                                        ; $4b4a: $c1
    ld c, $c1                                     ; $4b4b: $0e $c1
    pop hl                                        ; $4b4d: $e1
    ld a, [bc]                                    ; $4b4e: $0a
    dec c                                         ; $4b4f: $0d
    ld l, l                                       ; $4b50: $6d
    ret nz                                        ; $4b51: $c0

    ldh [$d0], a                                  ; $4b52: $e0 $d0
    db $ed                                        ; $4b54: $ed
    ld c, l                                       ; $4b55: $4d
    and b                                         ; $4b56: $a0
    add e                                         ; $4b57: $83
    and d                                         ; $4b58: $a2
    ld a, b                                       ; $4b59: $78
    ld c, c                                       ; $4b5a: $49
    and [hl]                                      ; $4b5b: $a6
    ld c, [hl]                                    ; $4b5c: $4e
    and c                                         ; $4b5d: $a1
    add d                                         ; $4b5e: $82
    jp Jump_000_0d0b                              ; $4b5f: $c3 $0b $0d


    ld a, [hl+]                                   ; $4b62: $2a
    ld a, [bc]                                    ; $4b63: $0a
    ld b, [hl]                                    ; $4b64: $46
    pop hl                                        ; $4b65: $e1
    add hl, bc                                    ; $4b66: $09
    dec hl                                        ; $4b67: $2b
    dec b                                         ; $4b68: $05
    ldh [$bd], a                                  ; $4b69: $e0 $bd
    ret nz                                        ; $4b6b: $c0

    ld c, e                                       ; $4b6c: $4b
    or $a0                                        ; $4b6d: $f6 $a0
    ret nc                                        ; $4b6f: $d0

    ldh a, [$50]                                  ; $4b70: $f0 $50
    ld [c], a                                     ; $4b72: $e2
    ret nz                                        ; $4b73: $c0

    ld [c], a                                     ; $4b74: $e2
    ld [hl], b                                    ; $4b75: $70
    push af                                       ; $4b76: $f5
    add e                                         ; $4b77: $83
    ld c, $a1                                     ; $4b78: $0e $a1
    ld d, $a2                                     ; $4b7a: $16 $a2
    jp $0ac1                                      ; $4b7c: $c3 $c1 $0a


    ld l, e                                       ; $4b7f: $6b
    ld c, e                                       ; $4b80: $4b
    rlca                                          ; $4b81: $07
    ldh [rNR22], a                                ; $4b82: $e0 $17
    dec hl                                        ; $4b84: $2b
    dec c                                         ; $4b85: $0d
    ld c, e                                       ; $4b86: $4b
    cp e                                          ; $4b87: $bb
    and d                                         ; $4b88: $a2
    ld l, l                                       ; $4b89: $6d
    ret nz                                        ; $4b8a: $c0

    pop hl                                        ; $4b8b: $e1
    ret nc                                        ; $4b8c: $d0

    db $ec                                        ; $4b8d: $ec
    ld d, b                                       ; $4b8e: $50
    db $e4                                        ; $4b8f: $e4
    ret nz                                        ; $4b90: $c0

    ld a, c                                       ; $4b91: $79
    pop hl                                        ; $4b92: $e1
    ldh a, [$e3]                                  ; $4b93: $f0 $e3
    adc [hl]                                      ; $4b95: $8e
    and b                                         ; $4b96: $a0
    adc h                                         ; $4b97: $8c
    and b                                         ; $4b98: $a0
    ld b, $c1                                     ; $4b99: $06 $c1
    add e                                         ; $4b9b: $83

jr_068_4b9c:
    ret nz                                        ; $4b9c: $c0

    dec l                                         ; $4b9d: $2d
    dec c                                         ; $4b9e: $0d
    rra                                           ; $4b9f: $1f
    ld l, e                                       ; $4ba0: $6b
    ld l, e                                       ; $4ba1: $6b
    ld c, e                                       ; $4ba2: $4b
    dec c                                         ; $4ba3: $0d
    ld c, e                                       ; $4ba4: $4b
    cp d                                          ; $4ba5: $ba
    ldh [$fc], a                                  ; $4ba6: $e0 $fc
    add b                                         ; $4ba8: $80
    dec a                                         ; $4ba9: $3d
    and c                                         ; $4baa: $a1
    nop                                           ; $4bab: $00
    ret nc                                        ; $4bac: $d0

    xor $50                                       ; $4bad: $ee $50
    db $e4                                        ; $4baf: $e4
    push af                                       ; $4bb0: $f5
    add d                                         ; $4bb1: $82
    ld [hl], l                                    ; $4bb2: $75
    add b                                         ; $4bb3: $80
    sub e                                         ; $4bb4: $93
    add b                                         ; $4bb5: $80
    jp Jump_068_4de0                              ; $4bb6: $c3 $e0 $4d


    and b                                         ; $4bb9: $a0
    ld [$00c1], sp                                ; $4bba: $08 $c1 $00
    ld b, d                                       ; $4bbd: $42
    pop bc                                        ; $4bbe: $c1
    ld b, h                                       ; $4bbf: $44
    pop hl                                        ; $4bc0: $e1
    db $fc                                        ; $4bc1: $fc
    and b                                         ; $4bc2: $a0
    add c                                         ; $4bc3: $81
    ld [c], a                                     ; $4bc4: $e2
    ld a, [hl]                                    ; $4bc5: $7e
    add d                                         ; $4bc6: $82
    ret nc                                        ; $4bc7: $d0

    db $ed                                        ; $4bc8: $ed
    ld d, b                                       ; $4bc9: $50
    and $7e                                       ; $4bca: $e6 $7e
    jp nz, Jump_068_5320                          ; $4bcc: $c2 $20 $53

    add c                                         ; $4bcf: $81
    db $10                                        ; $4bd0: $10
    and d                                         ; $4bd1: $a2
    ld b, d                                       ; $4bd2: $42
    jp $e289                                      ; $4bd3: $c3 $89 $e2


    ld a, [$2da0]                                 ; $4bd6: $fa $a0 $2d
    rst $38                                       ; $4bd9: $ff
    ldh [$03], a                                  ; $4bda: $e0 $03
    ldh [rP1], a                                  ; $4bdc: $e0 $00
    ld a, l                                       ; $4bde: $7d
    add e                                         ; $4bdf: $83
    ret nc                                        ; $4be0: $d0

    ld [$e251], a                                 ; $4be1: $ea $51 $e2
    ei                                            ; $4be4: $fb
    db $e4                                        ; $4be5: $e4
    ld hl, sp+$61                                 ; $4be6: $f8 $61
    pop de                                        ; $4be8: $d1
    add h                                         ; $4be9: $84
    adc b                                         ; $4bea: $88
    and b                                         ; $4beb: $a0
    ld c, b                                       ; $4bec: $48
    pop bc                                        ; $4bed: $c1
    dec b                                         ; $4bee: $05
    dec hl                                        ; $4bef: $2b
    ld c, c                                       ; $4bf0: $49
    pop hl                                        ; $4bf1: $e1
    dec l                                         ; $4bf2: $2d
    inc a                                         ; $4bf3: $3c
    and b                                         ; $4bf4: $a0
    db $e4                                        ; $4bf5: $e4
    ld [c], a                                     ; $4bf6: $e2
    ret c                                         ; $4bf7: $d8

    ld h, e                                       ; $4bf8: $63
    adc $e7                                       ; $4bf9: $ce $e7
    ld e, a                                       ; $4bfb: $5f
    add h                                         ; $4bfc: $84
    jr nz, jr_068_4b9c                            ; $4bfd: $20 $9d

    add b                                         ; $4bff: $80
    and [hl]                                      ; $4c00: $a6
    ret nz                                        ; $4c01: $c0

    ldh a, [$e2]                                  ; $4c02: $f0 $e2
    ld d, d                                       ; $4c04: $52
    add c                                         ; $4c05: $81
    ld c, e                                       ; $4c06: $4b
    db $e4                                        ; $4c07: $e4
    dec hl                                        ; $4c08: $2b
    call z, $8c80                                 ; $4c09: $cc $80 $8c
    and b                                         ; $4c0c: $a0
    ret nz                                        ; $4c0d: $c0

    add e                                         ; $4c0e: $83
    add d                                         ; $4c0f: $82
    db $ed                                        ; $4c10: $ed
    jp nz, $c082                                  ; $4c11: $c2 $82 $c0

    call c, $d0a3                                 ; $4c14: $dc $a3 $d0
    ld [c], a                                     ; $4c17: $e2
    jp Jump_000_2ee1                              ; $4c18: $c3 $e1 $2e


    ld c, [hl]                                    ; $4c1b: $4e
    add b                                         ; $4c1c: $80
    inc c                                         ; $4c1d: $0c
    pop bc                                        ; $4c1e: $c1
    ret nz                                        ; $4c1f: $c0

    push hl                                       ; $4c20: $e5
    dec h                                         ; $4c21: $25
    add b                                         ; $4c22: $80
    rst $28                                       ; $4c23: $ef
    ldh [$c0], a                                  ; $4c24: $e0 $c0
    and $4f                                       ; $4c26: $e6 $4f
    ret nz                                        ; $4c28: $c0

    ld b, $a0                                     ; $4c29: $06 $a0
    ld c, e                                       ; $4c2b: $4b
    db $10                                        ; $4c2c: $10
    add b                                         ; $4c2d: $80
    ld [c], a                                     ; $4c2e: $e2
    ret nz                                        ; $4c2f: $c0

    db $e4                                        ; $4c30: $e4
    call c, $c0a4                                 ; $4c31: $dc $a4 $c0
    push hl                                       ; $4c34: $e5
    ld l, [hl]                                    ; $4c35: $6e
    ret nc                                        ; $4c36: $d0

    pop hl                                        ; $4c37: $e1
    ret nz                                        ; $4c38: $c0

    and $c2                                       ; $4c39: $e6 $c2
    ldh [$38], a                                  ; $4c3b: $e0 $38
    ld b, l                                       ; $4c3d: $45
    ld h, c                                       ; $4c3e: $61
    sub $60                                       ; $4c3f: $d6 $60
    set 0, d                                      ; $4c41: $cb $c2
    ld c, d                                       ; $4c43: $4a
    ld a, [bc]                                    ; $4c44: $0a
    ld a, [bc]                                    ; $4c45: $0a
    add b                                         ; $4c46: $80
    ldh [$83], a                                  ; $4c47: $e0 $83
    ret nz                                        ; $4c49: $c0

    ret nz                                        ; $4c4a: $c0

    ld b, d                                       ; $4c4b: $42
    ldh [$90], a                                  ; $4c4c: $e0 $90
    ld [c], a                                     ; $4c4e: $e2
    ldh a, [$63]                                  ; $4c4f: $f0 $63
    dec h                                         ; $4c51: $25
    ld h, c                                       ; $4c52: $61
    or h                                          ; $4c53: $b4
    db $e4                                        ; $4c54: $e4
    ld d, [hl]                                    ; $4c55: $56
    ld h, l                                       ; $4c56: $65
    ld l, l                                       ; $4c57: $6d
    dec c                                         ; $4c58: $0d
    ld h, b                                       ; $4c59: $60
    jp c, $1261                                   ; $4c5a: $da $61 $12

    ld h, l                                       ; $4c5d: $65
    add c                                         ; $4c5e: $81
    ret nz                                        ; $4c5f: $c0

    rst $00                                       ; $4c60: $c7
    jp $a010                                      ; $4c61: $c3 $10 $a0


    ld l, e                                       ; $4c64: $6b
    dec c                                         ; $4c65: $0d
    call z, Call_000_03a0                         ; $4c66: $cc $a0 $03
    dec l                                         ; $4c69: $2d
    ld l, l                                       ; $4c6a: $6d
    sbc $e0                                       ; $4c6b: $de $e0
    dec b                                         ; $4c6d: $05
    jp nz, $61b0                                  ; $4c6e: $c2 $b0 $61

    ld e, h                                       ; $4c71: $5c
    jp nz, $61aa                                  ; $4c72: $c2 $aa $61

    ld d, $67                                     ; $4c75: $16 $67
    ld [hl], c                                    ; $4c77: $71
    ld l, l                                       ; $4c78: $6d
    dec a                                         ; $4c79: $3d
    ld [c], a                                     ; $4c7a: $e2
    ret nz                                        ; $4c7b: $c0

    db $eb                                        ; $4c7c: $eb
    ld c, h                                       ; $4c7d: $4c
    add b                                         ; $4c7e: $80
    ld l, e                                       ; $4c7f: $6b
    dec bc                                        ; $4c80: $0b
    ld c, e                                       ; $4c81: $4b
    dec b                                         ; $4c82: $05
    add c                                         ; $4c83: $81
    nop                                           ; $4c84: $00
    add a                                         ; $4c85: $87
    ld h, b                                       ; $4c86: $60
    ldh [$c3], a                                  ; $4c87: $e0 $c3
    ld d, l                                       ; $4c89: $55
    and e                                         ; $4c8a: $a3
    adc l                                         ; $4c8b: $8d
    db $e4                                        ; $4c8c: $e4
    ret nz                                        ; $4c8d: $c0

    ld [$e220], a                                 ; $4c8e: $ea $20 $e2
    ld [de], a                                    ; $4c91: $12
    ld h, [hl]                                    ; $4c92: $66
    dec b                                         ; $4c93: $05
    ret nz                                        ; $4c94: $c0

    inc b                                         ; $4c95: $04
    ld c, a                                       ; $4c96: $4f
    pop bc                                        ; $4c97: $c1
    ld b, $81                                     ; $4c98: $06 $81
    dec l                                         ; $4c9a: $2d
    cp a                                          ; $4c9b: $bf
    push hl                                       ; $4c9c: $e5
    and d                                         ; $4c9d: $a2
    add l                                         ; $4c9e: $85
    ld e, h                                       ; $4c9f: $5c
    and e                                         ; $4ca0: $a3
    ldh a, [$c2]                                  ; $4ca1: $f0 $c2
    sub [hl]                                      ; $4ca3: $96
    ld b, [hl]                                    ; $4ca4: $46
    ld hl, $c06d                                  ; $4ca5: $21 $6d $c0

jr_068_4ca8:
    db $e4                                        ; $4ca8: $e4
    ld [de], a                                    ; $4ca9: $12
    ld h, h                                       ; $4caa: $64
    jp z, Jump_068_4962                           ; $4cab: $ca $62 $49

    ret nz                                        ; $4cae: $c0

    dec l                                         ; $4caf: $2d
    ld c, [hl]                                    ; $4cb0: $4e
    add c                                         ; $4cb1: $81
    nop                                           ; $4cb2: $00
    add e                                         ; $4cb3: $83
    inc b                                         ; $4cb4: $04
    ret nz                                        ; $4cb5: $c0

    ret nz                                        ; $4cb6: $c0

    daa                                           ; $4cb7: $27
    ld b, b                                       ; $4cb8: $40
    ld c, [hl]                                    ; $4cb9: $4e
    ld hl, sp-$40                                 ; $4cba: $f8 $c0
    ld a, a                                       ; $4cbc: $7f
    ld h, b                                       ; $4cbd: $60
    ld [de], a                                    ; $4cbe: $12
    ld b, b                                       ; $4cbf: $40
    ret nz                                        ; $4cc0: $c0

    db $ed                                        ; $4cc1: $ed
    inc b                                         ; $4cc2: $04
    add $00                                       ; $4cc3: $c6 $00
    db $fc                                        ; $4cc5: $fc
    ld b, d                                       ; $4cc6: $42
    ld b, l                                       ; $4cc7: $45
    pop bc                                        ; $4cc8: $c1
    ld d, h                                       ; $4cc9: $54
    add c                                         ; $4cca: $81
    jp $c0e2                                      ; $4ccb: $c3 $e2 $c0


    rst $20                                       ; $4cce: $e7
    sub a                                         ; $4ccf: $97
    ld [c], a                                     ; $4cd0: $e2
    scf                                           ; $4cd1: $37
    ld b, c                                       ; $4cd2: $41
    inc b                                         ; $4cd3: $04
    rst $00                                       ; $4cd4: $c7
    jr nz, @-$28                                  ; $4cd5: $20 $d6

    ld [hl+], a                                   ; $4cd7: $22
    ld hl, sp-$5d                                 ; $4cd8: $f8 $a3
    ld e, d                                       ; $4cda: $5a
    ld b, b                                       ; $4cdb: $40
    cp e                                          ; $4cdc: $bb
    ld [hl+], a                                   ; $4cdd: $22
    or d                                          ; $4cde: $b2
    pop bc                                        ; $4cdf: $c1
    dec bc                                        ; $4ce0: $0b
    sub b                                         ; $4ce1: $90
    ld h, b                                       ; $4ce2: $60
    dec b                                         ; $4ce3: $05
    ret nz                                        ; $4ce4: $c0

    nop                                           ; $4ce5: $00
    ld b, h                                       ; $4ce6: $44
    pop bc                                        ; $4ce7: $c1
    ld [bc], a                                    ; $4ce8: $02
    jp $c140                                      ; $4ce9: $c3 $40 $c1


    xor d                                         ; $4cec: $aa
    jr nz, jr_068_4ca8                            ; $4ced: $20 $b9

    and c                                         ; $4cef: $a1
    ld [c], a                                     ; $4cf0: $e2
    add e                                         ; $4cf1: $83
    ld l, b                                       ; $4cf2: $68
    ld b, d                                       ; $4cf3: $42
    and c                                         ; $4cf4: $a1
    ld [hl+], a                                   ; $4cf5: $22
    ret nz                                        ; $4cf6: $c0

    cp d                                          ; $4cf7: $ba
    and e                                         ; $4cf8: $a3
    ld [$51c1], sp                                ; $4cf9: $08 $c1 $51
    ld b, b                                       ; $4cfc: $40
    sbc b                                         ; $4cfd: $98
    and b                                         ; $4cfe: $a0
    ld e, d                                       ; $4cff: $5a
    and b                                         ; $4d00: $a0
    add hl, bc                                    ; $4d01: $09
    add c                                         ; $4d02: $81
    ld c, d                                       ; $4d03: $4a
    ld l, e                                       ; $4d04: $6b
    nop                                           ; $4d05: $00
    add hl, bc                                    ; $4d06: $09
    ld h, c                                       ; $4d07: $61
    pop bc                                        ; $4d08: $c1
    jp nz, $8189                                  ; $4d09: $c2 $89 $81

    ld e, a                                       ; $4d0c: $5f
    ret nz                                        ; $4d0d: $c0

    ret nz                                        ; $4d0e: $c0

    pop hl                                        ; $4d0f: $e1
    pop af                                        ; $4d10: $f1
    pop bc                                        ; $4d11: $c1
    db $f4                                        ; $4d12: $f4
    and b                                         ; $4d13: $a0
    ret nc                                        ; $4d14: $d0

    db $ec                                        ; $4d15: $ec
    jr nc, jr_068_4d20                            ; $4d16: $30 $08

    call nz, $a2ad                                ; $4d18: $c4 $ad $a2
    or e                                          ; $4d1b: $b3
    and c                                         ; $4d1c: $a1
    add b                                         ; $4d1d: $80
    pop hl                                        ; $4d1e: $e1
    ld c, d                                       ; $4d1f: $4a

jr_068_4d20:
    ld a, [bc]                                    ; $4d20: $0a
    cp a                                          ; $4d21: $bf
    ldh [$87], a                                  ; $4d22: $e0 $87
    add b                                         ; $4d24: $80
    nop                                           ; $4d25: $00
    pop bc                                        ; $4d26: $c1
    db $e3                                        ; $4d27: $e3
    ld l, d                                       ; $4d28: $6a
    pop hl                                        ; $4d29: $e1
    ld hl, sp+$20                                 ; $4d2a: $f8 $20
    cp a                                          ; $4d2c: $bf
    pop hl                                        ; $4d2d: $e1
    ld b, e                                       ; $4d2e: $43
    and b                                         ; $4d2f: $a0
    ret nc                                        ; $4d30: $d0

    db $ed                                        ; $4d31: $ed
    ld a, [de]                                    ; $4d32: $1a
    dec h                                         ; $4d33: $25
    rst $10                                       ; $4d34: $d7
    and b                                         ; $4d35: $a0
    db $fc                                        ; $4d36: $fc
    db $db                                        ; $4d37: $db
    pop bc                                        ; $4d38: $c1
    add c                                         ; $4d39: $81
    pop bc                                        ; $4d3a: $c1
    dec c                                         ; $4d3b: $0d
    ld a, [bc]                                    ; $4d3c: $0a
    dec hl                                        ; $4d3d: $2b
    dec hl                                        ; $4d3e: $2b
    dec bc                                        ; $4d3f: $0b
    ld c, e                                       ; $4d40: $4b
    nop                                           ; $4d41: $00
    ld c, h                                       ; $4d42: $4c
    add d                                         ; $4d43: $82
    pop bc                                        ; $4d44: $c1
    and b                                         ; $4d45: $a0
    ld c, $a4                                     ; $4d46: $0e $a4
    cp l                                          ; $4d48: $bd
    add c                                         ; $4d49: $81
    ld [hl], $e3                                  ; $4d4a: $36 $e3
    ret nc                                        ; $4d4c: $d0

    db $eb                                        ; $4d4d: $eb
    jp c, Jump_068_4404                           ; $4d4e: $da $04 $44

    pop hl                                        ; $4d51: $e1
    nop                                           ; $4d52: $00
    or h                                          ; $4d53: $b4
    nop                                           ; $4d54: $00
    sbc d                                         ; $4d55: $9a
    add b                                         ; $4d56: $80
    ld a, [bc]                                    ; $4d57: $0a
    jp nz, Jump_000_20d0                          ; $4d58: $c2 $d0 $20

    ccf                                           ; $4d5b: $3f
    ld [c], a                                     ; $4d5c: $e2
    adc [hl]                                      ; $4d5d: $8e
    pop hl                                        ; $4d5e: $e1
    ldh [$c6], a                                  ; $4d5f: $e0 $c6
    ld a, l                                       ; $4d61: $7d
    jr nz, jr_068_4d78                            ; $4d62: $20 $14

    sbc e                                         ; $4d64: $9b
    pop hl                                        ; $4d65: $e1

jr_068_4d66:
    ret nc                                        ; $4d66: $d0

    ld [$bb2d], a                                 ; $4d67: $ea $2d $bb
    add [hl]                                      ; $4d6a: $86
    ld c, $f5                                     ; $4d6b: $0e $f5
    ldh [$f3], a                                  ; $4d6d: $e0 $f3
    and b                                         ; $4d6f: $a0
    dec d                                         ; $4d70: $15
    jr nz, jr_068_4d73                            ; $4d71: $20 $00

jr_068_4d73:
    ld c, l                                       ; $4d73: $4d
    ld h, c                                       ; $4d74: $61
    inc bc                                        ; $4d75: $03
    add c                                         ; $4d76: $81
    nop                                           ; $4d77: $00

jr_068_4d78:
    ret nz                                        ; $4d78: $c0

jr_068_4d79:
    db $10                                        ; $4d79: $10
    and $fc                                       ; $4d7a: $e6 $fc
    ld [bc], a                                    ; $4d7c: $02
    ld d, [hl]                                    ; $4d7d: $56
    and b                                         ; $4d7e: $a0
    ret nc                                        ; $4d7f: $d0

    xor $1a                                       ; $4d80: $ee $1a
    inc h                                         ; $4d82: $24
    nop                                           ; $4d83: $00
    add b                                         ; $4d84: $80
    ld [c], a                                     ; $4d85: $e2
    ret nz                                        ; $4d86: $c0

    db $e3                                        ; $4d87: $e3
    ld c, c                                       ; $4d88: $49
    add b                                         ; $4d89: $80
    ld a, [bc]                                    ; $4d8a: $0a
    ld h, d                                       ; $4d8b: $62
    jp z, $e861                                   ; $4d8c: $ca $61 $e8

    adc b                                         ; $4d8f: $88
    cp h                                          ; $4d90: $bc
    nop                                           ; $4d91: $00
    sub e                                         ; $4d92: $93
    and d                                         ; $4d93: $a2
    jr jr_068_4d66                                ; $4d94: $18 $d0

    db $eb                                        ; $4d96: $eb
    jr nc, jr_068_4da4                            ; $4d97: $30 $0b

    db $fc                                        ; $4d99: $fc
    ld bc, $6d0d                                  ; $4d9a: $01 $0d $6d
    ld b, d                                       ; $4d9d: $42
    pop bc                                        ; $4d9e: $c1
    adc c                                         ; $4d9f: $89
    ld hl, $42cf                                  ; $4da0: $21 $cf $42
    nop                                           ; $4da3: $00

jr_068_4da4:
    add sp, -$7b                                  ; $4da4: $e8 $85
    rst $08                                       ; $4da6: $cf
    inc bc                                        ; $4da7: $03
    ld h, d                                       ; $4da8: $62
    daa                                           ; $4da9: $27
    rst $08                                       ; $4daa: $cf
    inc h                                         ; $4dab: $24
    jr nc, jr_068_4db9                            ; $4dac: $30 $0b

    daa                                           ; $4dae: $27
    ld [bc], a                                    ; $4daf: $02
    adc a                                         ; $4db0: $8f
    ld b, d                                       ; $4db1: $42
    adc d                                         ; $4db2: $8a
    ld b, c                                       ; $4db3: $41
    jr jr_068_4dc4                                ; $4db4: $18 $0e

    ld h, b                                       ; $4db6: $60
    add hl, hl                                    ; $4db7: $29
    add c                                         ; $4db8: $81

jr_068_4db9:
    ret nz                                        ; $4db9: $c0

    add sp, $2e                                   ; $4dba: $e8 $2e
    ld c, $d0                                     ; $4dbc: $0e $d0
    db $eb                                        ; $4dbe: $eb
    or l                                          ; $4dbf: $b5
    ret nz                                        ; $4dc0: $c0

    jr nc, @+$0c                                  ; $4dc1: $30 $0a

    nop                                           ; $4dc3: $00

jr_068_4dc4:
    ld a, [$c002]                                 ; $4dc4: $fa $02 $c0
    db $e3                                        ; $4dc7: $e3
    ld c, c                                       ; $4dc8: $49
    ld b, c                                       ; $4dc9: $41
    ld b, $a2                                     ; $4dca: $06 $a2
    add sp, -$7c                                  ; $4dcc: $e8 $84
    inc bc                                        ; $4dce: $03
    ld h, e                                       ; $4dcf: $63
    db $db                                        ; $4dd0: $db
    ld h, b                                       ; $4dd1: $60
    ret nc                                        ; $4dd2: $d0

    jp hl                                         ; $4dd3: $e9


    nop                                           ; $4dd4: $00
    jr nc, jr_068_4de4                            ; $4dd5: $30 $0d

    ret nz                                        ; $4dd7: $c0

    db $e3                                        ; $4dd8: $e3
    ld c, e                                       ; $4dd9: $4b
    ld b, b                                       ; $4dda: $40
    pop bc                                        ; $4ddb: $c1
    ld b, d                                       ; $4ddc: $42
    sub c                                         ; $4ddd: $91
    ret nz                                        ; $4dde: $c0

    rrca                                          ; $4ddf: $0f

Jump_068_4de0:
    pop bc                                        ; $4de0: $c1
    add sp, -$7d                                  ; $4de1: $e8 $83
    ret nc                                        ; $4de3: $d0

jr_068_4de4:
    ld a, [bc]                                    ; $4de4: $0a
    ld [$e5d0], sp                                ; $4de5: $08 $d0 $e5
    jr nc, jr_068_4df5                            ; $4de8: $30 $0b

    db $fc                                        ; $4dea: $fc
    ld b, h                                       ; $4deb: $44
    dec l                                         ; $4dec: $2d
    ld d, c                                       ; $4ded: $51
    jr nz, jr_068_4d79                            ; $4dee: $20 $89

    ld bc, $20c8                                  ; $4df0: $01 $c8 $20
    ld b, e                                       ; $4df3: $43
    add b                                         ; $4df4: $80

jr_068_4df5:
    nop                                           ; $4df5: $00
    add d                                         ; $4df6: $82
    ld h, e                                       ; $4df7: $63
    ret nz                                        ; $4df8: $c0

    db $ec                                        ; $4df9: $ec
    ret nc                                        ; $4dfa: $d0

    db $e3                                        ; $4dfb: $e3
    ld b, b                                       ; $4dfc: $40
    dec bc                                        ; $4dfd: $0b
    ld [hl], $64                                  ; $4dfe: $36 $64
    cp a                                          ; $4e00: $bf
    db $e3                                        ; $4e01: $e3
    ret nz                                        ; $4e02: $c0

    db $e4                                        ; $4e03: $e4
    nop                                           ; $4e04: $00
    add d                                         ; $4e05: $82
    nop                                           ; $4e06: $00
    and h                                         ; $4e07: $a4
    add $50                                       ; $4e08: $c6 $50
    dec bc                                        ; $4e0a: $0b
    inc bc                                        ; $4e0b: $03
    ld b, d                                       ; $4e0c: $42
    ld b, b                                       ; $4e0d: $40
    ld a, [bc]                                    ; $4e0e: $0a
    ret nz                                        ; $4e0f: $c0

    push hl                                       ; $4e10: $e5
    ret nc                                        ; $4e11: $d0

    ld bc, $e6c0                                  ; $4e12: $01 $c0 $e6
    cp a                                          ; $4e15: $bf
    ld [c], a                                     ; $4e16: $e2
    db $10                                        ; $4e17: $10
    and h                                         ; $4e18: $a4
    jp $ebc0                                      ; $4e19: $c3 $c0 $eb


    ld [hl], b                                    ; $4e1c: $70
    db $ed                                        ; $4e1d: $ed
    ret nz                                        ; $4e1e: $c0

    add sp, $4d                                   ; $4e1f: $e8 $4d
    ld a, a                                       ; $4e21: $7f
    ld [c], a                                     ; $4e22: $e2
    ccf                                           ; $4e23: $3f
    and e                                         ; $4e24: $a3
    ld a, e                                       ; $4e25: $7b
    ld hl, $a4c0                                  ; $4e26: $21 $c0 $a4
    call nz, $c3bf                                ; $4e29: $c4 $bf $c3
    ret nz                                        ; $4e2c: $c0

    jp hl                                         ; $4e2d: $e9


    jr nc, @+$0c                                  ; $4e2e: $30 $0a

    ld a, $04                                     ; $4e30: $3e $04
    pop af                                        ; $4e32: $f1
    ld [bc], a                                    ; $4e33: $02
    ld l, e                                       ; $4e34: $6b
    ld c, e                                       ; $4e35: $4b
    nop                                           ; $4e36: $00
    ld c, e                                       ; $4e37: $4b
    ld hl, $837e                                  ; $4e38: $21 $7e $83
    ld c, b                                       ; $4e3b: $48
    ld [hl+], a                                   ; $4e3c: $22
    ld a, [hl]                                    ; $4e3d: $7e
    ld h, l                                       ; $4e3e: $65
    add b                                         ; $4e3f: $80
    jp hl                                         ; $4e40: $e9


    or d                                          ; $4e41: $b2
    ld bc, $a7ee                                  ; $4e42: $01 $ee $a7
    ld l, [hl]                                    ; $4e45: $6e
    ld b, $00                                     ; $4e46: $06 $00
    sbc c                                         ; $4e48: $99
    ld hl, $a3be                                  ; $4e49: $21 $be $a3
    dec a                                         ; $4e4c: $3d
    add e                                         ; $4e4d: $83
    ld [$e222], sp                                ; $4e4e: $08 $22 $e2
    rst $20                                       ; $4e51: $e7
    adc [hl]                                      ; $4e52: $8e
    and h                                         ; $4e53: $a4
    ld l, h                                       ; $4e54: $6c
    and h                                         ; $4e55: $a4
    jr nc, jr_068_4e5d                            ; $4e56: $30 $05

    nop                                           ; $4e58: $00
    ld h, a                                       ; $4e59: $67
    ld [bc], a                                    ; $4e5a: $02
    ld a, $01                                     ; $4e5b: $3e $01

jr_068_4e5d:
    call c, Call_000_3f01                         ; $4e5d: $dc $01 $3f
    ldh [$80], a                                  ; $4e60: $e0 $80
    ld h, c                                       ; $4e62: $61
    cp $03                                        ; $4e63: $fe $03
    ld b, b                                       ; $4e65: $40
    db $e3                                        ; $4e66: $e3
    add hl, de                                    ; $4e67: $19
    rst $00                                       ; $4e68: $c7
    nop                                           ; $4e69: $00
    ret nc                                        ; $4e6a: $d0

    db $e3                                        ; $4e6b: $e3
    sub d                                         ; $4e6c: $92
    and $30                                       ; $4e6d: $e6 $30
    inc b                                         ; $4e6f: $04
    and d                                         ; $4e70: $a2
    ld b, [hl]                                    ; $4e71: $46
    jr c, jr_068_4e95                             ; $4e72: $38 $21

    ld d, a                                       ; $4e74: $57
    ld h, d                                       ; $4e75: $62
    ret nz                                        ; $4e76: $c0

    and $6b                                       ; $4e77: $e6 $6b
    jp nz, $9000                                  ; $4e79: $c2 $00 $90

    rlca                                          ; $4e7c: $07
    ret nc                                        ; $4e7d: $d0

    db $e3                                        ; $4e7e: $e3
    ret                                           ; $4e7f: $c9


    and l                                         ; $4e80: $a5
    jr nc, jr_068_4e88                            ; $4e81: $30 $05

    ret nz                                        ; $4e83: $c0

    jp hl                                         ; $4e84: $e9


    inc a                                         ; $4e85: $3c
    add b                                         ; $4e86: $80
    sub e                                         ; $4e87: $93

jr_068_4e88:
    ld h, c                                       ; $4e88: $61
    ld a, e                                       ; $4e89: $7b
    pop hl                                        ; $4e8a: $e1
    nop                                           ; $4e8b: $00
    adc l                                         ; $4e8c: $8d
    ld h, d                                       ; $4e8d: $62
    ld b, [hl]                                    ; $4e8e: $46
    jp Jump_000_0450                              ; $4e8f: $c3 $50 $04


    ret nc                                        ; $4e92: $d0

    db $e4                                        ; $4e93: $e4
    ld b, b                                       ; $4e94: $40

jr_068_4e95:
    dec b                                         ; $4e95: $05
    jr nc, jr_068_4e9d                            ; $4e96: $30 $05

    ld h, d                                       ; $4e98: $62
    ld b, [hl]                                    ; $4e99: $46
    adc a                                         ; $4e9a: $8f
    and [hl]                                      ; $4e9b: $a6
    nop                                           ; $4e9c: $00

jr_068_4e9d:
    adc b                                         ; $4e9d: $88
    nop                                           ; $4e9e: $00
    dec sp                                        ; $4e9f: $3b
    ld h, d                                       ; $4ea0: $62
    sub b                                         ; $4ea1: $90
    ld b, e                                       ; $4ea2: $43
    ld b, h                                       ; $4ea3: $44
    ld b, h                                       ; $4ea4: $44
    ret nc                                        ; $4ea5: $d0

    and $70                                       ; $4ea6: $e6 $70
    rst $20                                       ; $4ea8: $e7
    jr nc, jr_068_4eaf                            ; $4ea9: $30 $04

    ld a, $05                                     ; $4eab: $3e $05
    inc bc                                        ; $4ead: $03
    ld l, l                                       ; $4eae: $6d

jr_068_4eaf:
    ld l, l                                       ; $4eaf: $6d
    xor a                                         ; $4eb0: $af
    add b                                         ; $4eb1: $80
    rst $08                                       ; $4eb2: $cf
    inc bc                                        ; $4eb3: $03
    cp $c4                                        ; $4eb4: $fe $c4
    ld c, a                                       ; $4eb6: $4f
    ld b, d                                       ; $4eb7: $42
    ld d, b                                       ; $4eb8: $50
    dec b                                         ; $4eb9: $05
    ret nc                                        ; $4eba: $d0

    and $10                                       ; $4ebb: $e6 $10
    ld [hl], h                                    ; $4ebd: $74
    inc h                                         ; $4ebe: $24
    jr nc, @+$0a                                  ; $4ebf: $30 $08

Call_068_4ec1:
    dec e                                         ; $4ec1: $1d
    and e                                         ; $4ec2: $a3
    and c                                         ; $4ec3: $a1
    ld b, h                                       ; $4ec4: $44
    ld c, $83                                     ; $4ec5: $0e $83
    ld hl, $c4be                                  ; $4ec7: $21 $be $c4
    ret nz                                        ; $4eca: $c0

    db $e4                                        ; $4ecb: $e4
    nop                                           ; $4ecc: $00
    db $fd                                        ; $4ecd: $fd
    add h                                         ; $4ece: $84
    ret nc                                        ; $4ecf: $d0

    and $b0                                       ; $4ed0: $e6 $b0
    ld [c], a                                     ; $4ed2: $e2
    ld [hl-], a                                   ; $4ed3: $32
    rlca                                          ; $4ed4: $07
    jr nc, @+$05                                  ; $4ed5: $30 $03

    add hl, hl                                    ; $4ed7: $29
    ld bc, $22ab                                  ; $4ed8: $01 $ab $22
    ld a, [hl]                                    ; $4edb: $7e
    ld [hl+], a                                   ; $4edc: $22
    nop                                           ; $4edd: $00
    ld a, d                                       ; $4ede: $7a
    ld b, e                                       ; $4edf: $43
    ld a, $e3                                     ; $4ee0: $3e $e3
    ldh [$e6], a                                  ; $4ee2: $e0 $e6
    ret nc                                        ; $4ee4: $d0

    ld [$423c], a                                 ; $4ee5: $ea $3c $42
    jr nc, jr_068_4ef2                            ; $4ee8: $30 $08

    xor l                                         ; $4eea: $ad
    ld h, e                                       ; $4eeb: $63
    call nc, $0121                                ; $4eec: $d4 $21 $01
    ld l, l                                       ; $4eef: $6d
    ld a, [hl-]                                   ; $4ef0: $3a
    ld h, d                                       ; $4ef1: $62

jr_068_4ef2:
    ld [hl], a                                    ; $4ef2: $77
    add d                                         ; $4ef3: $82
    db $fd                                        ; $4ef4: $fd
    pop bc                                        ; $4ef5: $c1
    ldh [$e7], a                                  ; $4ef6: $e0 $e7
    ret nc                                        ; $4ef8: $d0

    ld [$0540], a                                 ; $4ef9: $ea $40 $05
    jr nc, jr_068_4f08                            ; $4efc: $30 $0a

    nop                                           ; $4efe: $00
    ld bc, $c1e2                                  ; $4eff: $01 $e2 $c1
    and $b6                                       ; $4f02: $e6 $b6
    ld b, c                                       ; $4f04: $41
    ldh [$eb], a                                  ; $4f05: $e0 $eb
    ret nc                                        ; $4f07: $d0

jr_068_4f08:
    db $ed                                        ; $4f08: $ed
    jr nc, @+$0d                                  ; $4f09: $30 $0b

    ld [hl], b                                    ; $4f0b: $70
    ld [c], a                                     ; $4f0c: $e2
    add d                                         ; $4f0d: $82
    ret nz                                        ; $4f0e: $c0

    nop                                           ; $4f0f: $00
    ret nz                                        ; $4f10: $c0

    ld [$ede0], a                                 ; $4f11: $ea $e0 $ed
    ret nc                                        ; $4f14: $d0

    add sp, $30                                   ; $4f15: $e8 $30
    dec c                                         ; $4f17: $0d
    ret nz                                        ; $4f18: $c0

    add sp, $7b                                   ; $4f19: $e8 $7b
    ld bc, $62b6                                  ; $4f1b: $01 $b6 $62
    ld d, b                                       ; $4f1e: $50
    add hl, bc                                    ; $4f1f: $09
    jr jr_068_4ef2                                ; $4f20: $18 $d0

    db $ed                                        ; $4f22: $ed
    jr nc, jr_068_4f32                            ; $4f23: $30 $0d

    add b                                         ; $4f25: $80
    db $e3                                        ; $4f26: $e3
    ld c, l                                       ; $4f27: $4d
    dec l                                         ; $4f28: $2d
    ld bc, $b6e6                                  ; $4f29: $01 $e6 $b6
    ld b, b                                       ; $4f2c: $40
    ret nc                                        ; $4f2d: $d0

    ld sp, hl                                     ; $4f2e: $f9
    nop                                           ; $4f2f: $00
    jr nc, @+$0d                                  ; $4f30: $30 $0b

jr_068_4f32:
    ld [hl], b                                    ; $4f32: $70
    db $e3                                        ; $4f33: $e3
    rst $30                                       ; $4f34: $f7
    ld bc, $e700                                  ; $4f35: $01 $00 $e7
    pop bc                                        ; $4f38: $c1
    call nz, $f2d0                                ; $4f39: $c4 $d0 $f2
    call nc, Call_000_30e0                        ; $4f3c: $d4 $e0 $30
    inc c                                         ; $4f3f: $0c
    ld [hl-], a                                   ; $4f40: $32
    inc l                                         ; $4f41: $2c
    inc bc                                        ; $4f42: $03
    dec l                                         ; $4f43: $2d
    inc a                                         ; $4f44: $3c
    add c                                         ; $4f45: $81
    cp $e2                                        ; $4f46: $fe $e2
    ld l, e                                       ; $4f48: $6b
    ld c, e                                       ; $4f49: $4b
    ret nz                                        ; $4f4a: $c0

    jp hl                                         ; $4f4b: $e9


    ret nc                                        ; $4f4c: $d0

    rst $28                                       ; $4f4d: $ef
    jr jr_068_4f80                                ; $4f4e: $18 $30

    ld a, [bc]                                    ; $4f50: $0a
    add c                                         ; $4f51: $81
    call nz, $a04c                                ; $4f52: $c4 $4c $a0
    ld c, l                                       ; $4f55: $4d
    dec l                                         ; $4f56: $2d
    cp a                                          ; $4f57: $bf
    push hl                                       ; $4f58: $e5
    ld c, d                                       ; $4f59: $4a
    ld bc, $f5d0                                  ; $4f5a: $01 $d0 $f5
    nop                                           ; $4f5d: $00
    jr nc, jr_068_4f6f                            ; $4f5e: $30 $0f

    adc [hl]                                      ; $4f60: $8e
    ld b, l                                       ; $4f61: $45
    cp d                                          ; $4f62: $ba
    add e                                         ; $4f63: $83
    jp z, $e004                                   ; $4f64: $ca $04 $e0

    rst $28                                       ; $4f67: $ef
    ret nc                                        ; $4f68: $d0

    and $30                                       ; $4f69: $e6 $30
    inc c                                         ; $4f6b: $0c
    ldh a, [$e7]                                  ; $4f6c: $f0 $e7
    nop                                           ; $4f6e: $00

jr_068_4f6f:
    rst $38                                       ; $4f6f: $ff
    ld [$f0e0], a                                 ; $4f70: $ea $e0 $f0
    ret nc                                        ; $4f73: $d0

    db $e3                                        ; $4f74: $e3
    jr nc, @+$10                                  ; $4f75: $30 $0e

    ldh a, [$e7]                                  ; $4f77: $f0 $e7
    ld h, a                                       ; $4f79: $67
    and b                                         ; $4f7a: $a0
    ld h, b                                       ; $4f7b: $60
    db $e3                                        ; $4f7c: $e3
    dec de                                        ; $4f7d: $1b
    pop bc                                        ; $4f7e: $c1
    ld b, b                                       ; $4f7f: $40

jr_068_4f80:
    ldh [$f0], a                                  ; $4f80: $e0 $f0
    ret nc                                        ; $4f82: $d0

    db $e3                                        ; $4f83: $e3
    jr nc, jr_068_4f99                            ; $4f84: $30 $13

    add d                                         ; $4f86: $82
    ld bc, $c2b5                                  ; $4f87: $01 $b5 $c2
    add h                                         ; $4f8a: $84
    ld h, d                                       ; $4f8b: $62
    ld c, [hl]                                    ; $4f8c: $4e
    ld hl, sp+$62                                 ; $4f8d: $f8 $62
    nop                                           ; $4f8f: $00
    ldh [$ec], a                                  ; $4f90: $e0 $ec
    ret nc                                        ; $4f92: $d0

    ld [$0530], a                                 ; $4f93: $ea $30 $05
    ldh a, [$e8]                                  ; $4f96: $f0 $e8
    jp hl                                         ; $4f98: $e9


jr_068_4f99:
    add d                                         ; $4f99: $82
    ret nz                                        ; $4f9a: $c0

    ld [c], a                                     ; $4f9b: $e2
    add sp, -$1f                                  ; $4f9c: $e8 $e1
    ldh [$ef], a                                  ; $4f9e: $e0 $ef
    nop                                           ; $4fa0: $00
    ret nc                                        ; $4fa1: $d0

    ld [c], a                                     ; $4fa2: $e2
    jr nc, @+$10                                  ; $4fa3: $30 $0e

    ldh a, [$e7]                                  ; $4fa5: $f0 $e7
    di                                            ; $4fa7: $f3
    inc h                                         ; $4fa8: $24
    inc b                                         ; $4fa9: $04
    ld h, d                                       ; $4faa: $62
    ld [hl], h                                    ; $4fab: $74
    pop hl                                        ; $4fac: $e1
    ldh [$ed], a                                  ; $4fad: $e0 $ed
    ret nc                                        ; $4faf: $d0

    db $e3                                        ; $4fb0: $e3
    nop                                           ; $4fb1: $00
    jr nc, jr_068_4fc0                            ; $4fb2: $30 $0c

    ldh a, [$e8]                                  ; $4fb4: $f0 $e8
    ld [hl], e                                    ; $4fb6: $73
    inc hl                                        ; $4fb7: $23
    db $dd                                        ; $4fb8: $dd
    ld b, e                                       ; $4fb9: $43
    ldh [$f1], a                                  ; $4fba: $e0 $f1
    sub b                                         ; $4fbc: $90
    ld [c], a                                     ; $4fbd: $e2
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00

jr_068_4fc0:
    nop                                           ; $4fc0: $00
    rst $18                                       ; $4fc1: $df
    ret c                                         ; $4fc2: $d8

    push de                                       ; $4fc3: $d5
    push de                                       ; $4fc4: $d5
    ret c                                         ; $4fc5: $d8

    and b                                         ; $4fc6: $a0
    rst $38                                       ; $4fc7: $ff
    and $d3                                       ; $4fc8: $e6 $d3
    ret nc                                        ; $4fca: $d0

    ld a, a                                       ; $4fcb: $7f
    rst $10                                       ; $4fcc: $d7
    call nc, $d0d2                                ; $4fcd: $d4 $d2 $d0
    jp nc, $d2d7                                  ; $4fd0: $d2 $d7 $d2

    db $ec                                        ; $4fd3: $ec
    pop hl                                        ; $4fd4: $e1
    db $dd                                        ; $4fd5: $dd
    rst $10                                       ; $4fd6: $d7
    or $e0                                        ; $4fd7: $f6 $e0
    call nc, $dad7                                ; $4fd9: $d4 $d7 $da
    ld [c], a                                     ; $4fdc: $e2
    ld [c], a                                     ; $4fdd: $e2
    call c, $cfdb                                 ; $4fde: $dc $db $cf
    call c, $dea0                                 ; $4fe1: $dc $a0 $de
    rst $18                                       ; $4fe4: $df
    rst $10                                       ; $4fe5: $d7
    ldh [$d0], a                                  ; $4fe6: $e0 $d0
    db $eb                                        ; $4fe8: $eb
    and b                                         ; $4fe9: $a0
    and b                                         ; $4fea: $a0
    rst $08                                       ; $4feb: $cf
    jp nc, $d4d6                                  ; $4fec: $d2 $d6 $d4

    sub $bd                                       ; $4fef: $d6 $bd
    ld [c], a                                     ; $4ff1: $e2
    ld [c], a                                     ; $4ff2: $e2
    ld [c], a                                     ; $4ff3: $e2
    rst $10                                       ; $4ff4: $d7
    jp nc, $ddff                                  ; $4ff5: $d2 $ff $dd

    reti                                          ; $4ff8: $d9


    rst $10                                       ; $4ff9: $d7
    call nc, $ddd7                                ; $4ffa: $d4 $d7 $dd
    ret nc                                        ; $4ffd: $d0

    db $d3                                        ; $4ffe: $d3
    cp d                                          ; $4fff: $ba
    xor h                                         ; $5000: $ac
    ldh [$da], a                                  ; $5001: $e0 $da
    or $e0                                        ; $5003: $f6 $e0
    reti                                          ; $5005: $d9


    jp c, $a2dc                                   ; $5006: $da $dc $a2

    and $e0                                       ; $5009: $e6 $e0
    cp c                                          ; $500b: $b9
    pop hl                                        ; $500c: $e1
    jp nz, $d0e0                                  ; $500d: $c2 $e0 $d0

    db $eb                                        ; $5010: $eb
    ret c                                         ; $5011: $d8

    push de                                       ; $5012: $d5
    sub $9b                                       ; $5013: $d6 $9b
    pop hl                                        ; $5015: $e1
    sub $f8                                       ; $5016: $d6 $f8
    pop de                                        ; $5018: $d1
    ldh [$e2], a                                  ; $5019: $e0 $e2
    ldh [$cd], a                                  ; $501b: $e0 $cd
    ldh [$d3], a                                  ; $501d: $e0 $d3
    ret nc                                        ; $501f: $d0

    ret nc                                        ; $5020: $d0

    db $dd                                        ; $5021: $dd
    reti                                          ; $5022: $d9


    ld a, e                                       ; $5023: $7b
    db $dd                                        ; $5024: $dd
    pop de                                        ; $5025: $d1
    ret nz                                        ; $5026: $c0

    ld [c], a                                     ; $5027: $e2
    call c, $d9da                                 ; $5028: $dc $da $d9
    jp c, $e089                                   ; $502b: $da $89 $e0

    rst $30                                       ; $502e: $f7
    and b                                         ; $502f: $a0
    sbc a                                         ; $5030: $9f
    sbc l                                         ; $5031: $9d
    rst $38                                       ; $5032: $ff
    ldh [$9f], a                                  ; $5033: $e0 $9f
    and b                                         ; $5035: $a0
    and b                                         ; $5036: $a0
    ld [c], a                                     ; $5037: $e2
    pop bc                                        ; $5038: $c1
    db $e3                                        ; $5039: $e3
    ld h, b                                       ; $503a: $60
    ldh [$d0], a                                  ; $503b: $e0 $d0
    db $eb                                        ; $503d: $eb
    ld d, b                                       ; $503e: $50
    add sp, -$1e                                  ; $503f: $e8 $e2
    ldh [$59], a                                  ; $5041: $e0 $59
    ldh [$d7], a                                  ; $5043: $e0 $d7
    call nc, $40e0                                ; $5045: $d4 $e0 $40
    ldh [rOBP1], a                                ; $5048: $e0 $49
    pop hl                                        ; $504a: $e1
    ld d, d                                       ; $504b: $52
    pop hl                                        ; $504c: $e1
    ld c, e                                       ; $504d: $4b
    pop hl                                        ; $504e: $e1
    pop bc                                        ; $504f: $c1
    ldh [$b6], a                                  ; $5050: $e0 $b6
    sub b                                         ; $5052: $90
    sub b                                         ; $5053: $90
    ld c, a                                       ; $5054: $4f
    sub b                                         ; $5055: $90
    sub c                                         ; $5056: $91
    sbc h                                         ; $5057: $9c
    and d                                         ; $5058: $a2
    cp [hl]                                       ; $5059: $be
    ldh [$d0], a                                  ; $505a: $e0 $d0
    xor $d3                                       ; $505c: $ee $d3
    sub d                                         ; $505e: $92
    ldh [$0a], a                                  ; $505f: $e0 $0a
    ld d, b                                       ; $5061: $50
    and $eb                                       ; $5062: $e6 $eb
    ld c, h                                       ; $5064: $4c
    pop hl                                        ; $5065: $e1
    reti                                          ; $5066: $d9


    ld b, b                                       ; $5067: $40
    ldh [rOBP1], a                                ; $5068: $e0 $49
    pop hl                                        ; $506a: $e1
    ld [hl], b                                    ; $506b: $70
    db $e3                                        ; $506c: $e3
    add e                                         ; $506d: $83
    ldh [$3d], a                                  ; $506e: $e0 $3d
    and d                                         ; $5070: $a2
    pop bc                                        ; $5071: $c1
    ld [c], a                                     ; $5072: $e2
    ld b, l                                       ; $5073: $45
    ld b, l                                       ; $5074: $45
    ld b, [hl]                                    ; $5075: $46
    sbc h                                         ; $5076: $9c
    ld a, l                                       ; $5077: $7d
    ldh [rNR41], a                                ; $5078: $e0 $20
    ld [$d058], a                                 ; $507a: $ea $58 $d0
    ldh [$dd], a                                  ; $507d: $e0 $dd
    ret nz                                        ; $507f: $c0

    ld d, b                                       ; $5080: $50
    and $ec                                       ; $5081: $e6 $ec
    db $ed                                        ; $5083: $ed
    ret c                                         ; $5084: $d8

    jp nz, $bddb                                  ; $5085: $c2 $db $bd

jr_068_5088:
    ldh [$f8], a                                  ; $5088: $e0 $f8
    ld c, c                                       ; $508a: $49
    pop hl                                        ; $508b: $e1
    ld d, d                                       ; $508c: $52
    ldh [rBGP], a                                 ; $508d: $e0 $47
    pop hl                                        ; $508f: $e1
    sbc h                                         ; $5090: $9c
    sub c                                         ; $5091: $91
    sub b                                         ; $5092: $90
    sub c                                         ; $5093: $91
    xor [hl]                                      ; $5094: $ae
    rra                                           ; $5095: $1f
    ld b, l                                       ; $5096: $45
    ld b, e                                       ; $5097: $43
    ld b, a                                       ; $5098: $47
    ld c, c                                       ; $5099: $49
    ld b, h                                       ; $509a: $44
    cp a                                          ; $509b: $bf
    pop hl                                        ; $509c: $e1
    jr nz, jr_068_5088                            ; $509d: $20 $e9

    ret nc                                        ; $509f: $d0

    pop hl                                        ; $50a0: $e1
    add e                                         ; $50a1: $83
    jp c, Jump_068_50d3                           ; $50a2: $da $d3 $50

    and $7b                                       ; $50a5: $e6 $7b
    add $bd                                       ; $50a7: $c6 $bd
    ldh [$cc], a                                  ; $50a9: $e0 $cc
    jp $e147                                      ; $50ab: $c3 $47 $e1


    sub c                                         ; $50ae: $91
    db $fd                                        ; $50af: $fd
    ld b, [hl]                                    ; $50b0: $46
    rst $38                                       ; $50b1: $ff
    ldh [$af], a                                  ; $50b2: $e0 $af
    ld b, a                                       ; $50b4: $47
    ld c, h                                       ; $50b5: $4c
    ld d, h                                       ; $50b6: $54
    ld e, c                                       ; $50b7: $59
    ld b, h                                       ; $50b8: $44
    daa                                           ; $50b9: $27
    xor [hl]                                      ; $50ba: $ae
    ld b, [hl]                                    ; $50bb: $46
    sbc [hl]                                      ; $50bc: $9e
    jr nz, @-$15                                  ; $50bd: $20 $e9

    ld l, c                                       ; $50bf: $69
    jp Jump_068_50d7                              ; $50c0: $c3 $d7 $50


    and $ff                                       ; $50c3: $e6 $ff
    xor $fe                                       ; $50c5: $ee $fe
    ld [$91e0], sp                                ; $50c7: $08 $e0 $91
    ld b, [hl]                                    ; $50ca: $46
    ld a, c                                       ; $50cb: $79
    ld a, d                                       ; $50cc: $7a
    ld a, e                                       ; $50cd: $7b
    ld a, h                                       ; $50ce: $7c
    ld a, l                                       ; $50cf: $7d
    ld a, a                                       ; $50d0: $7f
    ld d, c                                       ; $50d1: $51
    ld e, [hl]                                    ; $50d2: $5e

Jump_068_50d3:
    ld d, d                                       ; $50d3: $52
    ld a, [hl+]                                   ; $50d4: $2a
    cpl                                           ; $50d5: $2f
    dec l                                         ; $50d6: $2d

Jump_068_50d7:
    xor a                                         ; $50d7: $af
    ld a, a                                       ; $50d8: $7f
    ld [c], a                                     ; $50d9: $e2
    jp nc, $ecd0                                  ; $50da: $d2 $d0 $ec

    jp c, $e650                                   ; $50dd: $da $50 $e6

    ei                                            ; $50e0: $fb
    and l                                         ; $50e1: $a5
    ret c                                         ; $50e2: $d8

    ldh a, [$a5]                                  ; $50e3: $f0 $a5
    and c                                         ; $50e5: $a1
    sub b                                         ; $50e6: $90
    rst $38                                       ; $50e7: $ff
    sub c                                         ; $50e8: $91
    ld a, c                                       ; $50e9: $79
    ld a, d                                       ; $50ea: $7a
    adc a                                         ; $50eb: $8f
    ld d, b                                       ; $50ec: $50
    ld b, l                                       ; $50ed: $45
    xor [hl]                                      ; $50ee: $ae
    ld a, a                                       ; $50ef: $7f
    rst $38                                       ; $50f0: $ff
    ld a, l                                       ; $50f1: $7d
    ld e, e                                       ; $50f2: $5b
    ld a, [hl+]                                   ; $50f3: $2a
    jr nz, jr_068_5116                            ; $50f4: $20 $20

    dec l                                         ; $50f6: $2d
    ld b, e                                       ; $50f7: $43
    ld b, [hl]                                    ; $50f8: $46
    and b                                         ; $50f9: $a0
    ld a, a                                       ; $50fa: $7f
    pop hl                                        ; $50fb: $e1
    ret nc                                        ; $50fc: $d0

    db $ec                                        ; $50fd: $ec
    ld [hl+], a                                   ; $50fe: $22
    ret nz                                        ; $50ff: $c0

    ld d, b                                       ; $5100: $50
    db $e4                                        ; $5101: $e4
    ret z                                         ; $5102: $c8

    push hl                                       ; $5103: $e5
    db $d3                                        ; $5104: $d3
    inc b                                         ; $5105: $04
    jp nz, $ffe4                                  ; $5106: $c2 $e4 $ff

    push hl                                       ; $5109: $e5
    and b                                         ; $510a: $a0

jr_068_510b:
    sbc [hl]                                      ; $510b: $9e
    sub c                                         ; $510c: $91
    ld a, c                                       ; $510d: $79
    ld a, [hl]                                    ; $510e: $7e
    ld d, b                                       ; $510f: $50
    ld b, a                                       ; $5110: $47
    rst $38                                       ; $5111: $ff
    ld e, l                                       ; $5112: $5d
    ld c, c                                       ; $5113: $49
    xor a                                         ; $5114: $af
    ld b, l                                       ; $5115: $45

jr_068_5116:
    add c                                         ; $5116: $81
    scf                                           ; $5117: $37
    ld h, $2f                                     ; $5118: $26 $2f
    ccf                                           ; $511a: $3f
    ld a, [hl+]                                   ; $511b: $2a
    ld c, e                                       ; $511c: $4b
    ld e, d                                       ; $511d: $5a
    xor [hl]                                      ; $511e: $ae
    ld b, [hl]                                    ; $511f: $46
    and c                                         ; $5120: $a1
    jr nz, jr_068_510b                            ; $5121: $20 $e8

    sbc b                                         ; $5123: $98
    and $0e                                       ; $5124: $e6 $0e
    add d                                         ; $5126: $82
    and c                                         ; $5127: $a1
    db $e4                                        ; $5128: $e4
    push hl                                       ; $5129: $e5
    ret c                                         ; $512a: $d8

    adc c                                         ; $512b: $89
    and b                                         ; $512c: $a0
    halt                                          ; $512d: $76
    and d                                         ; $512e: $a2
    pop bc                                        ; $512f: $c1
    and b                                         ; $5130: $a0
    ld [hl], b                                    ; $5131: $70
    and b                                         ; $5132: $a0
    rst $38                                       ; $5133: $ff
    and $e7                                       ; $5134: $e6 $e7
    and b                                         ; $5136: $a0
    sbc [hl]                                      ; $5137: $9e
    ld b, [hl]                                    ; $5138: $46
    add b                                         ; $5139: $80
    ld c, d                                       ; $513a: $4a
    ld e, l                                       ; $513b: $5d
    rst $38                                       ; $513c: $ff
    ld d, d                                       ; $513d: $52
    ld e, e                                       ; $513e: $5b
    ccf                                           ; $513f: $3f
    scf                                           ; $5140: $37
    jr c, jr_068_51ad                             ; $5141: $38 $6a

    dec [hl]                                      ; $5143: $35
    ld [hl], $7f                                  ; $5144: $36 $7f
    ld b, e                                       ; $5146: $43
    ld c, c                                       ; $5147: $49
    ld h, c                                       ; $5148: $61
    ld d, l                                       ; $5149: $55
    xor a                                         ; $514a: $af
    sub c                                         ; $514b: $91
    sbc [hl]                                      ; $514c: $9e
    ret nc                                        ; $514d: $d0

    ldh a, [$36]                                  ; $514e: $f0 $36
    ld d, b                                       ; $5150: $50
    ld [c], a                                     ; $5151: $e2
    and $e7                                       ; $5152: $e6 $e7
    ld d, e                                       ; $5154: $53
    and b                                         ; $5155: $a0
    pop de                                        ; $5156: $d1
    ret nc                                        ; $5157: $d0

    ld c, c                                       ; $5158: $49
    and c                                         ; $5159: $a1
    res 4, b                                      ; $515a: $cb $a0
    rst $18                                       ; $515c: $df
    and b                                         ; $515d: $a0
    ld [$e8a0], a                                 ; $515e: $ea $a0 $e8
    jp hl                                         ; $5161: $e9


    ret nz                                        ; $5162: $c0

    pop hl                                        ; $5163: $e1
    ld d, l                                       ; $5164: $55
    ld h, c                                       ; $5165: $61
    rst $38                                       ; $5166: $ff
    ld e, h                                       ; $5167: $5c
    ld [hl], $35                                  ; $5168: $36 $35
    dec [hl]                                      ; $516a: $35
    ld l, h                                       ; $516b: $6c
    ld l, l                                       ; $516c: $6d
    xor h                                         ; $516d: $ac
    ld b, b                                       ; $516e: $40
    ccf                                           ; $516f: $3f
    xor [hl]                                      ; $5170: $ae
    ld e, e                                       ; $5171: $5b
    ld e, e                                       ; $5172: $5b
    ld b, l                                       ; $5173: $45
    sub c                                         ; $5174: $91
    or [hl]                                       ; $5175: $b6
    db $fd                                        ; $5176: $fd
    and c                                         ; $5177: $a1
    ret nc                                        ; $5178: $d0

    db $ed                                        ; $5179: $ed
    add [hl]                                      ; $517a: $86
    ld d, b                                       ; $517b: $50
    ld [c], a                                     ; $517c: $e2
    add sp, -$17                                  ; $517d: $e8 $e9
    ld d, e                                       ; $517f: $53
    and b                                         ; $5180: $a0
    rlca                                          ; $5181: $07
    and c                                         ; $5182: $a1
    ld d, $a3                                     ; $5183: $16 $a3
    rst $28                                       ; $5185: $ef
    add d                                         ; $5186: $82
    sbc [hl]                                      ; $5187: $9e
    rst $38                                       ; $5188: $ff
    ld b, [hl]                                    ; $5189: $46
    add d                                         ; $518a: $82
    add e                                         ; $518b: $83
    ld e, e                                       ; $518c: $5b
    ld b, l                                       ; $518d: $45
    ld [hl], $35                                  ; $518e: $36 $35
    dec sp                                        ; $5190: $3b
    rst $38                                       ; $5191: $ff
    ld [hl], e                                    ; $5192: $73
    ld l, [hl]                                    ; $5193: $6e
    xor l                                         ; $5194: $ad
    ld b, d                                       ; $5195: $42
    xor a                                         ; $5196: $af
    sub c                                         ; $5197: $91
    sub b                                         ; $5198: $90
    sub b                                         ; $5199: $90
    add b                                         ; $519a: $80
    pop bc                                        ; $519b: $c1
    ld [c], a                                     ; $519c: $e2
    ret nc                                        ; $519d: $d0

    xor $50                                       ; $519e: $ee $50
    db $e3                                        ; $51a0: $e3
    ld d, e                                       ; $51a1: $53
    and c                                         ; $51a2: $a1
    rlca                                          ; $51a3: $07
    and b                                         ; $51a4: $a0
    ld a, c                                       ; $51a5: $79
    push bc                                       ; $51a6: $c5
    ld b, $c2                                     ; $51a7: $06 $c2
    ld b, [hl]                                    ; $51a9: $46
    rst $38                                       ; $51aa: $ff
    add l                                         ; $51ab: $85
    add a                                         ; $51ac: $87

jr_068_51ad:
    adc c                                         ; $51ad: $89
    add e                                         ; $51ae: $83
    ld b, l                                       ; $51af: $45
    ld b, c                                       ; $51b0: $41
    ld b, e                                       ; $51b1: $43
    add c                                         ; $51b2: $81
    cpl                                           ; $51b3: $2f
    scf                                           ; $51b4: $37
    scf                                           ; $51b5: $37
    ld b, l                                       ; $51b6: $45
    ld b, [hl]                                    ; $51b7: $46
    ld a, h                                       ; $51b8: $7c
    and b                                         ; $51b9: $a0
    sbc [hl]                                      ; $51ba: $9e
    cp [hl]                                       ; $51bb: $be
    add d                                         ; $51bc: $82
    ret nc                                        ; $51bd: $d0

    db $ed                                        ; $51be: $ed
    ldh a, [$50]                                  ; $51bf: $f0 $50
    db $e3                                        ; $51c1: $e3
    sbc [hl]                                      ; $51c2: $9e
    add c                                         ; $51c3: $81
    ld de, $d3a0                                  ; $51c4: $11 $a0 $d3
    add d                                         ; $51c7: $82
    sbc a                                         ; $51c8: $9f
    sbc l                                         ; $51c9: $9d
    and d                                         ; $51ca: $a2
    or [hl]                                       ; $51cb: $b6
    cp $08                                        ; $51cc: $fe $08
    jp nz, $ae46                                  ; $51ce: $c2 $46 $ae

    add l                                         ; $51d1: $85
    adc e                                         ; $51d2: $8b
    ld b, [hl]                                    ; $51d3: $46
    xor [hl]                                      ; $51d4: $ae
    ld b, [hl]                                    ; $51d5: $46
    ld bc, $fc81                                  ; $51d6: $01 $81 $fc
    and b                                         ; $51d9: $a0
    add c                                         ; $51da: $81
    db $e3                                        ; $51db: $e3
    call c, $d081                                 ; $51dc: $dc $81 $d0
    db $ed                                        ; $51df: $ed
    ld d, b                                       ; $51e0: $50
    and $46                                       ; $51e1: $e6 $46
    push hl                                       ; $51e3: $e5
    ret                                           ; $51e4: $c9


    and d                                         ; $51e5: $a2
    db $f4                                        ; $51e6: $f4
    ld [$07c0], sp                                ; $51e7: $08 $c0 $07
    ret nz                                        ; $51ea: $c0

    xor a                                         ; $51eb: $af
    dec a                                         ; $51ec: $3d
    ldh [$af], a                                  ; $51ed: $e0 $af
    add e                                         ; $51ef: $83
    add h                                         ; $51f0: $84
    ld b, [hl]                                    ; $51f1: $46
    ld de, $be9c                                  ; $51f2: $11 $9c $be
    add a                                         ; $51f5: $87
    ret nc                                        ; $51f6: $d0

    rst $28                                       ; $51f7: $ef
    ret                                           ; $51f8: $c9


    xor a                                         ; $51f9: $af
    jp $c046                                      ; $51fa: $c3 $46 $c0


    add e                                         ; $51fd: $83
    ldh [rOBP0], a                                ; $51fe: $e0 $48
    ret nz                                        ; $5200: $c0

    rst $38                                       ; $5201: $ff
    scf                                           ; $5202: $37
    add l                                         ; $5203: $85
    add a                                         ; $5204: $87
    adc b                                         ; $5205: $88
    add a                                         ; $5206: $87
    add l                                         ; $5207: $85
    sub c                                         ; $5208: $91
    and c                                         ; $5209: $a1
    ret nz                                        ; $520a: $c0

    and h                                         ; $520b: $a4
    add c                                         ; $520c: $81
    sbc [hl]                                      ; $520d: $9e
    xor a                                         ; $520e: $af
    call nz, $c261                                ; $520f: $c4 $61 $c2
    ld h, d                                       ; $5212: $62
    and $62                                       ; $5213: $e6 $62
    push bc                                       ; $5215: $c5
    and h                                         ; $5216: $a4
    sbc [hl]                                      ; $5217: $9e
    sub b                                         ; $5218: $90
    rst $38                                       ; $5219: $ff
    jp Jump_068_46c4                              ; $521a: $c3 $c4 $46


    add b                                         ; $521d: $80
    ld b, [hl]                                    ; $521e: $46
    xor [hl]                                      ; $521f: $ae
    ld b, e                                       ; $5220: $43
    xor a                                         ; $5221: $af
    rra                                           ; $5222: $1f
    add hl, sp                                    ; $5223: $39
    ld l, d                                       ; $5224: $6a
    dec [hl]                                      ; $5225: $35
    xor h                                         ; $5226: $ac
    ld b, b                                       ; $5227: $40
    ret z                                         ; $5228: $c8

    ret nz                                        ; $5229: $c0

    rst $00                                       ; $522a: $c7
    jp Jump_068_61c2                              ; $522b: $c3 $c2 $61


    inc d                                         ; $522e: $14
    and h                                         ; $522f: $a4
    and l                                         ; $5230: $a5
    db $f4                                        ; $5231: $f4
    db $e3                                        ; $5232: $e3
    push de                                       ; $5233: $d5
    push bc                                       ; $5234: $c5
    ld h, b                                       ; $5235: $60
    jp nc, $62d6                                  ; $5236: $d2 $d6 $62

    inc b                                         ; $5239: $04
    add d                                         ; $523a: $82
    db $e4                                        ; $523b: $e4
    ld h, b                                       ; $523c: $60
    sbc $3f                                       ; $523d: $de $3f
    pop bc                                        ; $523f: $c1
    sbc [hl]                                      ; $5240: $9e
    sub b                                         ; $5241: $90
    call nz, $c0c3                                ; $5242: $c4 $c3 $c0
    ldh [$af], a                                  ; $5245: $e0 $af
    ld c, e                                       ; $5247: $4b
    rst $38                                       ; $5248: $ff
    ld e, d                                       ; $5249: $5a
    ld a, $75                                     ; $524a: $3e $75
    ld h, [hl]                                    ; $524c: $66
    xor l                                         ; $524d: $ad
    ld b, d                                       ; $524e: $42
    sub b                                         ; $524f: $90
    or [hl]                                       ; $5250: $b6
    or b                                          ; $5251: $b0
    inc b                                         ; $5252: $04
    add d                                         ; $5253: $82
    jp nz, $dc63                                  ; $5254: $c2 $63 $dc

    and l                                         ; $5257: $a5
    call nc, $d361                                ; $5258: $d4 $61 $d3
    sub $56                                       ; $525b: $d6 $56
    ld h, c                                       ; $525d: $61
    sub $90                                       ; $525e: $d6 $90
    sub [hl]                                      ; $5260: $96
    ld h, d                                       ; $5261: $62
    inc b                                         ; $5262: $04
    add c                                         ; $5263: $81
    cp a                                          ; $5264: $bf
    and b                                         ; $5265: $a0
    rst $38                                       ; $5266: $ff
    and b                                         ; $5267: $a0
    rst $10                                       ; $5268: $d7
    ld de, $8081                                  ; $5269: $11 $81 $80
    pop hl                                        ; $526c: $e1
    ld d, c                                       ; $526d: $51
    ld a, a                                       ; $526e: $7f
    ld e, [hl]                                    ; $526f: $5e
    ld d, l                                       ; $5270: $55
    ld a, [hl-]                                   ; $5271: $3a
    dec [hl]                                      ; $5272: $35
    ld l, d                                       ; $5273: $6a
    ld [hl], $45                                  ; $5274: $36 $45
    adc d                                         ; $5276: $8a
    ret nz                                        ; $5277: $c0

    db $10                                        ; $5278: $10
    ld [hl], d                                    ; $5279: $72
    and d                                         ; $527a: $a2
    jp nz, $dc61                                  ; $527b: $c2 $61 $dc

    and [hl]                                      ; $527e: $a6
    or [hl]                                       ; $527f: $b6
    ld h, b                                       ; $5280: $60
    ret c                                         ; $5281: $d8

    dec de                                        ; $5282: $1b
    ld h, b                                       ; $5283: $60
    ld hl, $0d61                                  ; $5284: $21 $61 $0d
    pop bc                                        ; $5287: $c1
    call nc, $8107                                ; $5288: $d4 $07 $81
    ld [de], a                                    ; $528b: $12
    ld h, a                                       ; $528c: $67
    sbc [hl]                                      ; $528d: $9e
    ld [$8da0], sp                                ; $528e: $08 $a0 $8d
    ld b, b                                       ; $5291: $40
    ldh [$36], a                                  ; $5292: $e0 $36
    dec [hl]                                      ; $5294: $35
    cpl                                           ; $5295: $2f
    ld [hl], $81                                  ; $5296: $36 $81
    ld b, l                                       ; $5298: $45
    sub c                                         ; $5299: $91
    ld c, d                                       ; $529a: $4a
    ret nz                                        ; $529b: $c0

    ld [$a172], a                                 ; $529c: $ea $72 $a1
    db $d3                                        ; $529f: $d3
    add d                                         ; $52a0: $82
    ld [hl], b                                    ; $52a1: $70
    call c, $d7a4                                 ; $52a2: $dc $a4 $d7
    ld h, c                                       ; $52a5: $61
    add $60                                       ; $52a6: $c6 $60
    ld hl, $dd61                                  ; $52a8: $21 $61 $dd
    db $d3                                        ; $52ab: $d3
    jp c, $8307                                   ; $52ac: $da $07 $83

    ld hl, sp+$12                                 ; $52af: $f8 $12
    ld h, a                                       ; $52b1: $67
    ld [$4ca1], sp                                ; $52b2: $08 $a1 $4c
    add b                                         ; $52b5: $80
    ld b, h                                       ; $52b6: $44
    inc a                                         ; $52b7: $3c
    ld a, [hl-]                                   ; $52b8: $3a
    add e                                         ; $52b9: $83
    add h                                         ; $52ba: $84
    pop hl                                        ; $52bb: $e1
    xor [hl]                                      ; $52bc: $ae
    jp z, $72a3                                   ; $52bd: $ca $a3 $72

    and b                                         ; $52c0: $a0
    call c, $d7a8                                 ; $52c1: $dc $a8 $d7
    ld h, d                                       ; $52c4: $62
    db $d3                                        ; $52c5: $d3
    ret nc                                        ; $52c6: $d0

    pop de                                        ; $52c7: $d1
    adc [hl]                                      ; $52c8: $8e
    rla                                           ; $52c9: $17
    ld h, b                                       ; $52ca: $60
    ret nc                                        ; $52cb: $d0

    ret nc                                        ; $52cc: $d0

    rst $10                                       ; $52cd: $d7
    or [hl]                                       ; $52ce: $b6
    add [hl]                                      ; $52cf: $86
    ld [de], a                                    ; $52d0: $12
    ld h, h                                       ; $52d1: $64
    ld [$46a1], sp                                ; $52d2: $08 $a1 $46
    rst $38                                       ; $52d5: $ff
    xor [hl]                                      ; $52d6: $ae
    add e                                         ; $52d7: $83
    adc c                                         ; $52d8: $89
    adc b                                         ; $52d9: $88
    ld [hl], c                                    ; $52da: $71
    ld [hl], c                                    ; $52db: $71
    add a                                         ; $52dc: $87
    add l                                         ; $52dd: $85
    rlca                                          ; $52de: $07
    xor a                                         ; $52df: $af
    sub b                                         ; $52e0: $90
    jp $a389                                      ; $52e1: $c3 $89 $a3


    ld l, d                                       ; $52e4: $6a
    add e                                         ; $52e5: $83
    call c, $d9a7                                 ; $52e6: $dc $a7 $d9
    add b                                         ; $52e9: $80
    jr @+$64                                      ; $52ea: $18 $62

    ld sp, hl                                     ; $52ec: $f9
    call nc, $8707                                ; $52ed: $d4 $07 $87
    ld bc, $9cc5                                  ; $52f0: $01 $c5 $9c
    ld a, c                                       ; $52f3: $79
    adc l                                         ; $52f4: $8d
    ld b, e                                       ; $52f5: $43
    xor a                                         ; $52f6: $af
    rst $18                                       ; $52f7: $df
    adc d                                         ; $52f8: $8a
    add l                                         ; $52f9: $85
    ld [hl], $35                                  ; $52fa: $36 $35
    add hl, sp                                    ; $52fc: $39
    call nz, $90a0                                ; $52fd: $c4 $a0 $90
    call nz, $9083                                ; $5300: $c4 $83 $90
    sub b                                         ; $5303: $90
    adc d                                         ; $5304: $8a
    add c                                         ; $5305: $81
    ld l, d                                       ; $5306: $6a
    add e                                         ; $5307: $83
    ld [hl+], a                                   ; $5308: $22
    xor b                                         ; $5309: $a8
    ld d, c                                       ; $530a: $51
    and c                                         ; $530b: $a1
    ld h, c                                       ; $530c: $61
    ld b, b                                       ; $530d: $40
    reti                                          ; $530e: $d9


    cp $fd                                        ; $530f: $fe $fd
    xor h                                         ; $5311: $ac
    db $eb                                        ; $5312: $eb
    and b                                         ; $5313: $a0
    and c                                         ; $5314: $a1
    ld b, [hl]                                    ; $5315: $46
    add b                                         ; $5316: $80
    ld b, l                                       ; $5317: $45
    ld c, e                                       ; $5318: $4b
    or a                                          ; $5319: $b7
    ld e, h                                       ; $531a: $5c
    add c                                         ; $531b: $81
    ld [hl], $44                                  ; $531c: $36 $44
    ret nz                                        ; $531e: $c0

    xor [hl]                                      ; $531f: $ae

Jump_068_5320:
    xor a                                         ; $5320: $af
    ld c, c                                       ; $5321: $49
    and b                                         ; $5322: $a0
    jp $be20                                      ; $5323: $c3 $20 $be


    jp nz, $836a                                  ; $5326: $c2 $6a $83

    jr @-$3a                                      ; $5329: $18 $c4

    rst $28                                       ; $532b: $ef
    inc hl                                        ; $532c: $23
    jr jr_068_5391                                ; $532d: $18 $62

    db $db                                        ; $532f: $db
    call $fc6a                                    ; $5330: $cd $6a $fc
    ld b, c                                       ; $5333: $41
    ld a, [hl]                                    ; $5334: $7e
    ld c, c                                       ; $5335: $49
    add b                                         ; $5336: $80
    ld d, c                                       ; $5337: $51
    ld d, [hl]                                    ; $5338: $56
    add hl, sp                                    ; $5339: $39
    ld [hl], l                                    ; $533a: $75
    ld h, [hl]                                    ; $533b: $66
    dec [hl]                                      ; $533c: $35
    res 0, b                                      ; $533d: $cb $80
    rlca                                          ; $533f: $07
    ld b, [hl]                                    ; $5340: $46
    sub c                                         ; $5341: $91
    jp $e07f                                      ; $5342: $c3 $7f $e0


    ld c, d                                       ; $5345: $4a
    add c                                         ; $5346: $81
    ld l, d                                       ; $5347: $6a
    add c                                         ; $5348: $81
    inc e                                         ; $5349: $1c
    ld b, h                                       ; $534a: $44
    inc sp                                        ; $534b: $33
    rst $20                                       ; $534c: $e7
    ldh a, [rNR23]                                ; $534d: $f0 $18
    ld h, e                                       ; $534f: $63
    ld [$5dc3], sp                                ; $5350: $08 $c3 $5d
    pop bc                                        ; $5353: $c1
    adc c                                         ; $5354: $89
    add h                                         ; $5355: $84
    add b                                         ; $5356: $80
    ld c, d                                       ; $5357: $4a
    ld d, [hl]                                    ; $5358: $56
    add hl, sp                                    ; $5359: $39
    adc a                                         ; $535a: $8f
    dec [hl]                                      ; $535b: $35
    ld [hl], a                                    ; $535c: $77
    ld h, h                                       ; $535d: $64
    ld h, h                                       ; $535e: $64
    ld b, [hl]                                    ; $535f: $46
    ld h, b                                       ; $5360: $60
    ld b, c                                       ; $5361: $41
    pop hl                                        ; $5362: $e1
    ld c, d                                       ; $5363: $4a
    add b                                         ; $5364: $80
    db $eb                                        ; $5365: $eb
    add b                                         ; $5366: $80
    dec [hl]                                      ; $5367: $35
    ld b, h                                       ; $5368: $44
    inc e                                         ; $5369: $1c
    ld b, d                                       ; $536a: $42
    ret nc                                        ; $536b: $d0

    db $ec                                        ; $536c: $ec
    ld [$5dc4], sp                                ; $536d: $08 $c4 $5d
    pop bc                                        ; $5370: $c1
    add b                                         ; $5371: $80
    and e                                         ; $5372: $a3
    ret                                           ; $5373: $c9


    ld h, b                                       ; $5374: $60
    ld h, b                                       ; $5375: $60
    rst $38                                       ; $5376: $ff
    ld e, h                                       ; $5377: $5c
    ld a, [hl-]                                   ; $5378: $3a
    dec [hl]                                      ; $5379: $35
    dec [hl]                                      ; $537a: $35
    ld [hl], $45                                  ; $537b: $36 $45
    xor [hl]                                      ; $537d: $ae
    add c                                         ; $537e: $81
    nop                                           ; $537f: $00
    add e                                         ; $5380: $83
    and e                                         ; $5381: $a3
    ld e, a                                       ; $5382: $5f
    jp $819b                                      ; $5383: $c3 $9b $81


    ret nc                                        ; $5386: $d0

    ldh a, [rNR30]                                ; $5387: $f0 $1a
    inc h                                         ; $5389: $24
    ld e, l                                       ; $538a: $5d
    pop bc                                        ; $538b: $c1
    ld b, l                                       ; $538c: $45
    ld h, d                                       ; $538d: $62
    add hl, bc                                    ; $538e: $09
    add e                                         ; $538f: $83
    ld a, a                                       ; $5390: $7f

jr_068_5391:
    ld a, [hl-]                                   ; $5391: $3a
    dec [hl]                                      ; $5392: $35
    ld a, [hl-]                                   ; $5393: $3a
    ld b, l                                       ; $5394: $45
    ld b, [hl]                                    ; $5395: $46
    xor a                                         ; $5396: $af
    add c                                         ; $5397: $81
    add d                                         ; $5398: $82
    and b                                         ; $5399: $a0
    ld h, b                                       ; $539a: $60
    dec bc                                        ; $539b: $0b
    add d                                         ; $539c: $82
    ld c, $28                                     ; $539d: $0e $28
    ret nc                                        ; $539f: $d0

    db $ed                                        ; $53a0: $ed
    ld a, [de]                                    ; $53a1: $1a
    jr z, @+$47                                   ; $53a2: $28 $45

    ld h, d                                       ; $53a4: $62
    sbc a                                         ; $53a5: $9f
    sbc h                                         ; $53a6: $9c
    call z, $ff80                                 ; $53a7: $cc $80 $ff
    adc b                                         ; $53aa: $88
    ld [hl], d                                    ; $53ab: $72
    ld l, h                                       ; $53ac: $6c
    ld a, $46                                     ; $53ad: $3e $46
    ld b, [hl]                                    ; $53af: $46
    add e                                         ; $53b0: $83
    add h                                         ; $53b1: $84
    ret nc                                        ; $53b2: $d0

    add h                                         ; $53b3: $84
    jp nz, Jump_068_6b15                          ; $53b4: $c2 $15 $6b

    ret nc                                        ; $53b7: $d0

    db $ed                                        ; $53b8: $ed
    ld [$eac6], sp                                ; $53b9: $08 $c6 $ea
    db $db                                        ; $53bc: $db
    call nz, $9c9f                                ; $53bd: $c4 $9f $9c
    ld a, a                                       ; $53c0: $7f
    ld b, [hl]                                    ; $53c1: $46
    ld b, [hl]                                    ; $53c2: $46
    ld b, b                                       ; $53c3: $40
    ld l, [hl]                                    ; $53c4: $6e
    ld [hl], b                                    ; $53c5: $70
    ld [hl], c                                    ; $53c6: $71
    adc b                                         ; $53c7: $88
    add [hl]                                      ; $53c8: $86
    add b                                         ; $53c9: $80
    ld h, b                                       ; $53ca: $60
    ld b, d                                       ; $53cb: $42
    and c                                         ; $53cc: $a1
    add sp, -$7c                                  ; $53cd: $e8 $84
    ld h, c                                       ; $53cf: $61
    call nz, $efd0                                ; $53d0: $c4 $d0 $ef
    rst $38                                       ; $53d3: $ff
    ld l, [hl]                                    ; $53d4: $6e
    sbc [hl]                                      ; $53d5: $9e
    ld b, [hl]                                    ; $53d6: $46
    ld c, d                                       ; $53d7: $4a
    ld h, b                                       ; $53d8: $60
    dec b                                         ; $53d9: $05
    dec [hl]                                      ; $53da: $35
    add b                                         ; $53db: $80
    ldh [rDMA], a                                 ; $53dc: $e0 $46
    ld c, $61                                     ; $53de: $0e $61

Call_068_53e0:
    add sp, -$7b                                  ; $53e0: $e8 $85
    ld h, c                                       ; $53e2: $61
    call nz, Call_068_6dcf                        ; $53e3: $c4 $cf $6d
    jr nc, jr_068_53f4                            ; $53e6: $30 $0c

    ld h, $fc                                     ; $53e8: $26 $fc
    nop                                           ; $53ea: $00
    sbc a                                         ; $53eb: $9f
    sbc h                                         ; $53ec: $9c
    pop bc                                        ; $53ed: $c1
    pop hl                                        ; $53ee: $e1
    nop                                           ; $53ef: $00
    ldh [$ae], a                                  ; $53f0: $e0 $ae
    rst $08                                       ; $53f2: $cf
    ld b, d                                       ; $53f3: $42

jr_068_53f4:
    add sp, -$7a                                  ; $53f4: $e8 $86
    db $e4                                        ; $53f6: $e4

jr_068_53f7:
    dec de                                        ; $53f7: $1b
    add e                                         ; $53f8: $83
    ret nc                                        ; $53f9: $d0

    db $ec                                        ; $53fa: $ec
    and b                                         ; $53fb: $a0
    jr nc, jr_068_5409                            ; $53fc: $30 $0b

    db $fc                                        ; $53fe: $fc
    ld bc, $469e                                  ; $53ff: $01 $9e $46
    ld b, d                                       ; $5402: $42
    ld a, a                                       ; $5403: $7f
    dec [hl]                                      ; $5404: $35
    xor h                                         ; $5405: $ac
    dec [hl]                                      ; $5406: $35
    dec [hl]                                      ; $5407: $35
    inc a                                         ; $5408: $3c

jr_068_5409:
    ld b, h                                       ; $5409: $44
    xor a                                         ; $540a: $af
    ld b, $c3                                     ; $540b: $06 $c3
    jr nc, jr_068_53f7                            ; $540d: $30 $e8

    add l                                         ; $540f: $85
    dec de                                        ; $5410: $1b
    add c                                         ; $5411: $81
    inc e                                         ; $5412: $1c
    add b                                         ; $5413: $80
    ret nc                                        ; $5414: $d0

    ld [$d5d8], a                                 ; $5415: $ea $d8 $d5
    jr nc, @+$0d                                  ; $5418: $30 $0b

    adc b                                         ; $541a: $88
    ld b, e                                       ; $541b: $43
    add a                                         ; $541c: $87
    ld b, h                                       ; $541d: $44
    inc a                                         ; $541e: $3c
    xor l                                         ; $541f: $ad
    ld a, a                                       ; $5420: $7f
    ldh [rLY], a                                  ; $5421: $e0 $44
    add h                                         ; $5423: $84
    add sp, -$7a                                  ; $5424: $e8 $86
    ld b, e                                       ; $5426: $43
    ld h, c                                       ; $5427: $61
    db $d3                                        ; $5428: $d3
    ld b, c                                       ; $5429: $41
    ret nc                                        ; $542a: $d0

    ret nc                                        ; $542b: $d0

    db $eb                                        ; $542c: $eb
    jr nc, jr_068_543c                            ; $542d: $30 $0d

    ld c, b                                       ; $542f: $48
    ld [hl+], a                                   ; $5430: $22
    ld bc, $3ee2                                  ; $5431: $01 $e2 $3e
    ldh [$39], a                                  ; $5434: $e0 $39
    rrca                                          ; $5436: $0f
    ld b, e                                       ; $5437: $43
    jr nz, @+$1b                                  ; $5438: $20 $19

    ld l, c                                       ; $543a: $69
    ret nc                                        ; $543b: $d0

jr_068_543c:
    db $ed                                        ; $543c: $ed

jr_068_543d:
    ld a, [hl-]                                   ; $543d: $3a
    add b                                         ; $543e: $80
    jr nc, jr_068_544b                            ; $543f: $30 $0a

    cp a                                          ; $5441: $bf
    add e                                         ; $5442: $83

jr_068_5443:
    ld b, [hl]                                    ; $5443: $46
    ld bc, $fec0                                  ; $5444: $01 $c0 $fe
    ret nz                                        ; $5447: $c0

    rst $18                                       ; $5448: $df
    ld a, $46                                     ; $5449: $3e $46

jr_068_544b:
    sub b                                         ; $544b: $90
    or [hl]                                       ; $544c: $b6
    and d                                         ; $544d: $a2
    nop                                           ; $544e: $00
    set 2, a                                      ; $544f: $cb $d7
    jp nc, $d020                                  ; $5451: $d2 $20 $d0

    db $eb                                        ; $5454: $eb
    bit 4, b                                      ; $5455: $cb $60
    jr nc, @+$0c                                  ; $5457: $30 $0a

    or $42                                        ; $5459: $f6 $42
    ccf                                           ; $545b: $3f
    ret nz                                        ; $545c: $c0

    add hl, sp                                    ; $545d: $39
    ret nz                                        ; $545e: $c0

    db $e4                                        ; $545f: $e4
    inc bc                                        ; $5460: $03
    ld h, l                                       ; $5461: $65
    ld [hl], $43                                  ; $5462: $36 $43
    push bc                                       ; $5464: $c5
    jp c, $d0d3                                   ; $5465: $da $d3 $d0

    db $eb                                        ; $5468: $eb
    jp c, $30d3                                   ; $5469: $da $d3 $30

    dec bc                                        ; $546c: $0b
    or $43                                        ; $546d: $f6 $43

jr_068_546f:
    ld c, b                                       ; $546f: $48
    ccf                                           ; $5470: $3f
    ret nz                                        ; $5471: $c0

    ld a, a                                       ; $5472: $7f
    pop hl                                        ; $5473: $e1
    ret nz                                        ; $5474: $c0

    pop hl                                        ; $5475: $e1
    jp $e7bf                                      ; $5476: $c3 $bf $e7


    ret                                           ; $5479: $c9


    ld h, c                                       ; $547a: $61
    call c, Call_000_0043                         ; $547b: $dc $43 $00
    ld h, d                                       ; $547e: $62
    ret nc                                        ; $547f: $d0

    jp hl                                         ; $5480: $e9


    call c, $803e                                 ; $5481: $dc $3e $80
    jr nc, jr_068_5490                            ; $5484: $30 $0a

jr_068_5486:
    sbc $82                                       ; $5486: $de $82
    sbc [hl]                                      ; $5488: $9e
    sub c                                         ; $5489: $91
    ld a, a                                       ; $548a: $7f
    ld [c], a                                     ; $548b: $e2
    inc de                                        ; $548c: $13
    add hl, sp                                    ; $548d: $39
    ld b, [hl]                                    ; $548e: $46
    ld [hl], l                                    ; $548f: $75

jr_068_5490:
    ld b, b                                       ; $5490: $40
    cp a                                          ; $5491: $bf
    ldh [$9e], a                                  ; $5492: $e0 $9e
    nop                                           ; $5494: $00
    ld h, d                                       ; $5495: $62
    add hl, bc                                    ; $5496: $09
    add l                                         ; $5497: $85
    ret nc                                        ; $5498: $d0

    db $eb                                        ; $5499: $eb
    add sp, $3e                                   ; $549a: $e8 $3e
    add b                                         ; $549c: $80
    jr nc, jr_068_54a5                            ; $549d: $30 $06

    add hl, sp                                    ; $549f: $39
    add h                                         ; $54a0: $84
    ld [$403d], a                                 ; $54a1: $ea $3d $40
    xor [hl]                                      ; $54a4: $ae

jr_068_54a5:
    ld b, l                                       ; $54a5: $45
    scf                                           ; $54a6: $37
    dec l                                         ; $54a7: $2d
    dec a                                         ; $54a8: $3d
    ld c, e                                       ; $54a9: $4b
    jr nz, jr_068_543d                            ; $54aa: $20 $91

    call nz, Call_068_61c0                        ; $54ac: $c4 $c0 $61
    sbc [hl]                                      ; $54af: $9e
    nop                                           ; $54b0: $00
    ld h, d                                       ; $54b1: $62
    ld c, e                                       ; $54b2: $4b
    add [hl]                                      ; $54b3: $86
    jr nz, jr_068_5486                            ; $54b4: $20 $d0

    and $bd                                       ; $54b6: $e6 $bd
    and d                                         ; $54b8: $a2
    jr c, jr_068_5443                             ; $54b9: $38 $88

    ld a, $05                                     ; $54bb: $3e $05
    db $fd                                        ; $54bd: $fd
    jr nz, jr_068_546f                            ; $54be: $20 $af

    ld b, c                                       ; $54c0: $41
    ld [hl+], a                                   ; $54c1: $22
    ld c, c                                       ; $54c2: $49
    ld [hl+], a                                   ; $54c3: $22
    add b                                         ; $54c4: $80
    ld [$7221], sp                                ; $54c5: $08 $21 $72
    nop                                           ; $54c8: $00
    ld [c], a                                     ; $54c9: $e2
    rst $20                                       ; $54ca: $e7
    ld [$eb84], sp                                ; $54cb: $08 $84 $eb
    adc d                                         ; $54ce: $8a
    ld e, a                                       ; $54cf: $5f
    ld b, c                                       ; $54d0: $41
    ld a, $06                                     ; $54d1: $3e $06
    and b                                         ; $54d3: $a0
    dec bc                                        ; $54d4: $0b
    and c                                         ; $54d5: $a1
    sub b                                         ; $54d6: $90
    ld bc, $ae21                                  ; $54d7: $01 $21 $ae
    cp $01                                        ; $54da: $fe $01
    rst $38                                       ; $54dc: $ff
    pop bc                                        ; $54dd: $c1
    ld a, $41                                     ; $54de: $3e $41
    ld [c], a                                     ; $54e0: $e2
    add sp, $60                                   ; $54e1: $e8 $60
    ret nc                                        ; $54e3: $d0

    db $e3                                        ; $54e4: $e3
    sub d                                         ; $54e5: $92
    and $30                                       ; $54e6: $e6 $30
    inc b                                         ; $54e8: $04
    ld h, d                                       ; $54e9: $62
    ld b, a                                       ; $54ea: $47
    cp $03                                        ; $54eb: $fe $03
    sub b                                         ; $54ed: $90
    sub c                                         ; $54ee: $91
    ld a, h                                       ; $54ef: $7c
    ld [c], a                                     ; $54f0: $e2
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    ld h, b                                       ; $54f3: $60
    ld c, c                                       ; $54f4: $49
    inc bc                                        ; $54f5: $03
    ld d, b                                       ; $54f6: $50
    ld b, $d0                                     ; $54f7: $06 $d0
    db $e4                                        ; $54f9: $e4
    sub d                                         ; $54fa: $92
    and $30                                       ; $54fb: $e6 $30
    inc b                                         ; $54fd: $04
    ld a, $0a                                     ; $54fe: $3e $0a
    ld b, c                                       ; $5500: $41
    ld bc, $b601                                  ; $5501: $01 $01 $b6
    ld a, e                                       ; $5504: $7b
    ld [c], a                                     ; $5505: $e2
    ld b, c                                       ; $5506: $41
    jr nz, jr_068_5546                            ; $5507: $20 $3d

    add b                                         ; $5509: $80
    ld h, b                                       ; $550a: $60
    nop                                           ; $550b: $00
    ld [c], a                                     ; $550c: $e2
    and $d0                                       ; $550d: $e6 $d0
    db $e4                                        ; $550f: $e4
    sub d                                         ; $5510: $92
    and $00                                       ; $5511: $e6 $00
    jr nc, jr_068_5519                            ; $5513: $30 $04

    ld l, [hl]                                    ; $5515: $6e
    ld [$43f1], sp                                ; $5516: $08 $f1 $43

jr_068_5519:
    ld a, c                                       ; $5519: $79
    nop                                           ; $551a: $00
    cp $c3                                        ; $551b: $fe $c3
    ld b, b                                       ; $551d: $40
    call nz, Call_000_0550                        ; $551e: $c4 $50 $05
    ret nc                                        ; $5521: $d0

    db $e4                                        ; $5522: $e4
    nop                                           ; $5523: $00
    sub d                                         ; $5524: $92
    and $30                                       ; $5525: $e6 $30
    dec b                                         ; $5527: $05
    ld a, $07                                     ; $5528: $3e $07
    ld d, h                                       ; $552a: $54
    ld b, h                                       ; $552b: $44
    ld a, d                                       ; $552c: $7a
    ret nz                                        ; $552d: $c0

    cp a                                          ; $552e: $bf
    pop hl                                        ; $552f: $e1
    rst $38                                       ; $5530: $ff
    inc h                                         ; $5531: $24
    rra                                           ; $5532: $1f
    ld b, [hl]                                    ; $5533: $46
    nop                                           ; $5534: $00
    ret nc                                        ; $5535: $d0

    push hl                                       ; $5536: $e5
    sub d                                         ; $5537: $92
    push hl                                       ; $5538: $e5
    ld a, [hl-]                                   ; $5539: $3a
    rrca                                          ; $553a: $0f
    ld d, h                                       ; $553b: $54
    ld b, d                                       ; $553c: $42
    ld a, [hl-]                                   ; $553d: $3a
    pop bc                                        ; $553e: $c1
    cp $c2                                        ; $553f: $fe $c2
    ccf                                           ; $5541: $3f
    jp nz, Jump_068_481e                          ; $5542: $c2 $1e $48

    nop                                           ; $5545: $00

jr_068_5546:
    pop de                                        ; $5546: $d1
    ld l, [hl]                                    ; $5547: $6e
    jr nc, jr_068_5555                            ; $5548: $30 $0b

    ld d, h                                       ; $554a: $54
    ld b, [hl]                                    ; $554b: $46
    cp d                                          ; $554c: $ba
    and c                                         ; $554d: $a1
    dec a                                         ; $554e: $3d
    call nz, $a57e                                ; $554f: $c4 $7e $a5
    inc b                                         ; $5552: $04
    adc l                                         ; $5553: $8d
    ret nc                                        ; $5554: $d0

jr_068_5555:
    pop hl                                        ; $5555: $e1
    ldh [rTIMA], a                                ; $5556: $e0 $05
    ld b, d                                       ; $5558: $42
    jr nc, jr_068_5563                            ; $5559: $30 $08

    ld a, l                                       ; $555b: $7d
    ld b, b                                       ; $555c: $40
    ld [hl], a                                    ; $555d: $77
    inc hl                                        ; $555e: $23
    cp c                                          ; $555f: $b9
    add c                                         ; $5560: $81
    ld b, e                                       ; $5561: $43
    ld b, c                                       ; $5562: $41

jr_068_5563:
    ld b, e                                       ; $5563: $43
    ld c, $fd                                     ; $5564: $0e $fd
    ldh [rLYC], a                                 ; $5566: $e0 $45
    ld b, [hl]                                    ; $5568: $46
    sbc h                                         ; $5569: $9c
    cp b                                          ; $556a: $b8
    ld h, b                                       ; $556b: $60
    ldh [$e7], a                                  ; $556c: $e0 $e7
    ret nc                                        ; $556e: $d0

    ld [$2268], a                                 ; $556f: $ea $68 $22
    call c, Call_000_0d30                         ; $5572: $dc $30 $0d
    add hl, sp                                    ; $5575: $39
    add l                                         ; $5576: $85
    dec sp                                        ; $5577: $3b
    dec [hl]                                      ; $5578: $35
    dec sp                                        ; $5579: $3b
    db $fd                                        ; $557a: $fd
    ldh [$36], a                                  ; $557b: $e0 $36
    ld b, l                                       ; $557d: $45
    ld bc, $b946                                  ; $557e: $01 $46 $b9
    ld b, b                                       ; $5581: $40
    ldh [$e9], a                                  ; $5582: $e0 $e9
    ret nc                                        ; $5584: $d0

    db $ed                                        ; $5585: $ed
    jr nc, jr_068_5590                            ; $5586: $30 $08

    jr jr_068_55ac                                ; $5588: $18 $22

    ld e, b                                       ; $558a: $58
    ld hl, $61b9                                  ; $558b: $21 $b9 $61
    ei                                            ; $558e: $fb
    and h                                         ; $558f: $a4

jr_068_5590:
    ld h, h                                       ; $5590: $64
    rst $38                                       ; $5591: $ff
    ldh [$a5], a                                  ; $5592: $e0 $a5
    inc a                                         ; $5594: $3c
    ld b, h                                       ; $5595: $44
    ld b, [hl]                                    ; $5596: $46
    sbc [hl]                                      ; $5597: $9e
    add b                                         ; $5598: $80
    ldh [$eb], a                                  ; $5599: $e0 $eb
    ret nc                                        ; $559b: $d0

    add sp, -$1a                                  ; $559c: $e8 $e6
    ld b, c                                       ; $559e: $41
    jr nc, jr_068_55aa                            ; $559f: $30 $09

    sub $42                                       ; $55a1: $d6 $42
    and h                                         ; $55a3: $a4
    ld h, c                                       ; $55a4: $61
    add hl, sp                                    ; $55a5: $39
    ld h, c                                       ; $55a6: $61
    ld l, c                                       ; $55a7: $69
    ld a, a                                       ; $55a8: $7f
    and e                                         ; $55a9: $a3

jr_068_55aa:
    dec [hl]                                      ; $55aa: $35
    dec [hl]                                      ; $55ab: $35

jr_068_55ac:
    and e                                         ; $55ac: $a3
    ld l, d                                       ; $55ad: $6a
    dec [hl]                                      ; $55ae: $35
    ld b, d                                       ; $55af: $42
    ret nz                                        ; $55b0: $c0

    ldh [$0c], a                                  ; $55b1: $e0 $0c
    ldh [$e9], a                                  ; $55b3: $e0 $e9
    ret nc                                        ; $55b5: $d0

    jp hl                                         ; $55b6: $e9


    db $d3                                        ; $55b7: $d3
    jp c, Jump_000_23a1                           ; $55b8: $da $a1 $23

    jr nc, jr_068_55c2                            ; $55bb: $30 $05

    ldh a, [$e0]                                  ; $55bd: $f0 $e0
    ld d, l                                       ; $55bf: $55
    ld h, e                                       ; $55c0: $63
    inc bc                                        ; $55c1: $03

jr_068_55c2:
    sbc a                                         ; $55c2: $9f
    sbc h                                         ; $55c3: $9c
    ret nz                                        ; $55c4: $c0

    ldh [$78], a                                  ; $55c5: $e0 $78
    ld h, c                                       ; $55c7: $61
    ret nz                                        ; $55c8: $c0

    ldh [rP1], a                                  ; $55c9: $e0 $00
    ldh [$e0], a                                  ; $55cb: $e0 $e0
    add sp, -$30                                  ; $55cd: $e8 $d0
    ld [$d7e1], a                                 ; $55cf: $ea $e1 $d7
    ld h, e                                       ; $55d2: $63
    ld h, h                                       ; $55d3: $64
    jr nc, jr_068_55db                            ; $55d4: $30 $05

    ldh a, [$e1]                                  ; $55d6: $f0 $e1
    ld [hl], a                                    ; $55d8: $77
    ld h, e                                       ; $55d9: $63
    sbc [hl]                                      ; $55da: $9e

jr_068_55db:
    ld b, h                                       ; $55db: $44

jr_068_55dc:
    inc a                                         ; $55dc: $3c
    dec sp                                        ; $55dd: $3b
    ld l, e                                       ; $55de: $6b
    ld [hl], c                                    ; $55df: $71
    rst $38                                       ; $55e0: $ff
    ldh [$6d], a                                  ; $55e1: $e0 $6d
    inc a                                         ; $55e3: $3c
    ld b, h                                       ; $55e4: $44
    ld a, [$e020]                                 ; $55e5: $fa $20 $e0
    jp hl                                         ; $55e8: $e9


    ld h, b                                       ; $55e9: $60
    ret nc                                        ; $55ea: $d0

    jp hl                                         ; $55eb: $e9


    scf                                           ; $55ec: $37
    add [hl]                                      ; $55ed: $86
    jr nc, @+$06                                  ; $55ee: $30 $04

    ld b, b                                       ; $55f0: $40
    and b                                         ; $55f1: $a0
    ld de, $a023                                  ; $55f2: $11 $23 $a0
    sbc [hl]                                      ; $55f5: $9e
    ret nz                                        ; $55f6: $c0

    rst $00                                       ; $55f7: $c7
    nop                                           ; $55f8: $00
    cp d                                          ; $55f9: $ba
    jr nz, jr_068_55dc                            ; $55fa: $20 $e0

    add sp, -$30                                  ; $55fc: $e8 $d0
    ld [$27c4], a                                 ; $55fe: $ea $c4 $27
    jr nc, jr_068_5606                            ; $5601: $30 $03

    call nc, $f847                                ; $5603: $d4 $47 $f8

jr_068_5606:
    jr nz, @+$42                                  ; $5606: $20 $40

    call nz, $4100                                ; $5608: $c4 $00 $41
    pop bc                                        ; $560b: $c1
    ldh [$ed], a                                  ; $560c: $e0 $ed
    ret nc                                        ; $560e: $d0

    push hl                                       ; $560f: $e5
    jr nc, jr_068_5621                            ; $5610: $30 $0f

    dec h                                         ; $5612: $25
    add [hl]                                      ; $5613: $86
    cp d                                          ; $5614: $ba
    add c                                         ; $5615: $81
    db $fd                                        ; $5616: $fd
    ld [c], a                                     ; $5617: $e2
    rst $38                                       ; $5618: $ff
    add l                                         ; $5619: $85
    nop                                           ; $561a: $00
    ldh [$eb], a                                  ; $561b: $e0 $eb
    ret z                                         ; $561d: $c8

    ld h, [hl]                                    ; $561e: $66
    jr nc, jr_068_562c                            ; $561f: $30 $0b

jr_068_5621:
    ldh a, [$ee]                                  ; $5621: $f0 $ee
    sbc $67                                       ; $5623: $de $67
    ldh [$f2], a                                  ; $5625: $e0 $f2
    jr nc, jr_068_5636                            ; $5627: $30 $0d

    ldh a, [$e8]                                  ; $5629: $f0 $e8
    nop                                           ; $562b: $00

jr_068_562c:
    inc l                                         ; $562c: $2c
    ld b, l                                       ; $562d: $45
    sub l                                         ; $562e: $95
    ld h, c                                       ; $562f: $61
    ldh [$f1], a                                  ; $5630: $e0 $f1
    ld a, l                                       ; $5632: $7d
    ld h, d                                       ; $5633: $62
    jr nc, jr_068_5643                            ; $5634: $30 $0d

jr_068_5636:
    ldh a, [$e8]                                  ; $5636: $f0 $e8
    jr nc, @+$24                                  ; $5638: $30 $22

    ld l, $40                                     ; $563a: $2e $40
    nop                                           ; $563c: $00
    db $dd                                        ; $563d: $dd
    ld h, c                                       ; $563e: $61
    db $fd                                        ; $563f: $fd
    ld b, c                                       ; $5640: $41
    ldh [$ed], a                                  ; $5641: $e0 $ed

jr_068_5643:
    push bc                                       ; $5643: $c5
    ld h, d                                       ; $5644: $62
    jr nc, jr_068_5654                            ; $5645: $30 $0d

    ldh a, [$e8]                                  ; $5647: $f0 $e8
    adc $02                                       ; $5649: $ce $02
    ld e, b                                       ; $564b: $58
    jr nz, jr_068_564e                            ; $564c: $20 $00

jr_068_564e:
    db $dd                                        ; $564e: $dd
    ld h, l                                       ; $564f: $65
    ldh [$ed], a                                  ; $5650: $e0 $ed
    ld d, a                                       ; $5652: $57
    add d                                         ; $5653: $82

jr_068_5654:
    jr nc, jr_068_5663                            ; $5654: $30 $0d

    ldh a, [$e8]                                  ; $5656: $f0 $e8
    dec e                                         ; $5658: $1d
    ld [hl+], a                                   ; $5659: $22
    add hl, bc                                    ; $565a: $09
    jr nz, jr_068_56cc                            ; $565b: $20 $6f

    add e                                         ; $565d: $83
    nop                                           ; $565e: $00
    ldh [$ef], a                                  ; $565f: $e0 $ef
    ld d, a                                       ; $5661: $57
    add e                                         ; $5662: $83

jr_068_5663:
    cpl                                           ; $5663: $2f
    adc l                                         ; $5664: $8d
    db $10                                        ; $5665: $10
    daa                                           ; $5666: $27
    db $ed                                        ; $5667: $ed
    dec b                                         ; $5668: $05
    cp $05                                        ; $5669: $fe $05
    ldh [$ed], a                                  ; $566b: $e0 $ed
    ld d, a                                       ; $566d: $57
    add c                                         ; $566e: $81
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    pop bc                                        ; $5672: $c1
    nop                                           ; $5673: $00
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    rst $38                                       ; $5676: $ff
    rst $38                                       ; $5677: $ff
    rst $38                                       ; $5678: $ff
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    rst $38                                       ; $567b: $ff
    rst $38                                       ; $567c: $ff
    rst $38                                       ; $567d: $ff
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    dec c                                         ; $5680: $0d
    add b                                         ; $5681: $80
    cp $e0                                        ; $5682: $fe $e0
    nop                                           ; $5684: $00
    ld b, b                                       ; $5685: $40
    ret c                                         ; $5686: $d8

    push hl                                       ; $5687: $e5
    rst $30                                       ; $5688: $f7
    and $eb                                       ; $5689: $e6 $eb
    ldh [rIE], a                                  ; $568b: $e0 $ff
    rst $38                                       ; $568d: $ff
    nop                                           ; $568e: $00
    rst $38                                       ; $568f: $ff
    db $f4                                        ; $5690: $f4
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    ld [bc], a                                    ; $5694: $02
    nop                                           ; $5695: $00
    inc h                                         ; $5696: $24
    ld b, $02                                     ; $5697: $06 $02
    ld bc, $072a                                  ; $5699: $01 $2a $07
    ld [bc], a                                    ; $569c: $02
    ld [bc], a                                    ; $569d: $02
    ld [hl+], a                                   ; $569e: $22
    add hl, bc                                    ; $569f: $09
    ld [bc], a                                    ; $56a0: $02
    inc bc                                        ; $56a1: $03
    dec hl                                        ; $56a2: $2b
    ld a, [bc]                                    ; $56a3: $0a
    ld [bc], a                                    ; $56a4: $02
    inc b                                         ; $56a5: $04
    dec h                                         ; $56a6: $25
    inc c                                         ; $56a7: $0c
    ld [bc], a                                    ; $56a8: $02
    dec b                                         ; $56a9: $05
    daa                                           ; $56aa: $27
    inc c                                         ; $56ab: $0c
    ld [bc], a                                    ; $56ac: $02
    ld b, $1d                                     ; $56ad: $06 $1d
    rrca                                          ; $56af: $0f
    ld [bc], a                                    ; $56b0: $02
    rlca                                          ; $56b1: $07
    ld hl, $020f                                  ; $56b2: $21 $0f $02
    ld [$1114], sp                                ; $56b5: $08 $14 $11
    ld [bc], a                                    ; $56b8: $02
    add hl, bc                                    ; $56b9: $09
    ld a, [de]                                    ; $56ba: $1a
    ld de, $0a02                                  ; $56bb: $11 $02 $0a
    inc de                                        ; $56be: $13
    ld [de], a                                    ; $56bf: $12
    ld [bc], a                                    ; $56c0: $02
    dec bc                                        ; $56c1: $0b
    jr jr_068_56d6                                ; $56c2: $18 $12

    ld [bc], a                                    ; $56c4: $02
    inc c                                         ; $56c5: $0c
    ld e, $12                                     ; $56c6: $1e $12
    ld [bc], a                                    ; $56c8: $02
    dec c                                         ; $56c9: $0d
    inc d                                         ; $56ca: $14
    inc de                                        ; $56cb: $13

jr_068_56cc:
    ld [bc], a                                    ; $56cc: $02
    ld c, $18                                     ; $56cd: $0e $18
    dec d                                         ; $56cf: $15
    ld [bc], a                                    ; $56d0: $02
    rrca                                          ; $56d1: $0f
    ld e, $16                                     ; $56d2: $1e $16
    ld [bc], a                                    ; $56d4: $02
    db $10                                        ; $56d5: $10

jr_068_56d6:
    ld d, $17                                     ; $56d6: $16 $17
    ld [bc], a                                    ; $56d8: $02
    ld de, $1720                                  ; $56d9: $11 $20 $17
    ld [bc], a                                    ; $56dc: $02
    ld [de], a                                    ; $56dd: $12
    dec e                                         ; $56de: $1d
    jr jr_068_56e3                                ; $56df: $18 $02

    inc de                                        ; $56e1: $13
    ld a, [de]                                    ; $56e2: $1a

jr_068_56e3:
    add hl, de                                    ; $56e3: $19
    ld [bc], a                                    ; $56e4: $02
    inc d                                         ; $56e5: $14
    inc e                                         ; $56e6: $1c
    add hl, de                                    ; $56e7: $19
    ld [bc], a                                    ; $56e8: $02
    dec d                                         ; $56e9: $15
    ld hl, $0219                                  ; $56ea: $21 $19 $02
    ld d, $1f                                     ; $56ed: $16 $1f
    ld a, [de]                                    ; $56ef: $1a
    ld [bc], a                                    ; $56f0: $02
    rla                                           ; $56f1: $17
    inc e                                         ; $56f2: $1c
    inc e                                         ; $56f3: $1c
    ld [bc], a                                    ; $56f4: $02
    jr jr_068_5712                                ; $56f5: $18 $1b

    ld hl, $1902                                  ; $56f7: $21 $02 $19
    ld d, $22                                     ; $56fa: $16 $22
    ld [bc], a                                    ; $56fc: $02
    ld a, [de]                                    ; $56fd: $1a
    rra                                           ; $56fe: $1f
    daa                                           ; $56ff: $27
    ld [bc], a                                    ; $5700: $02
    dec de                                        ; $5701: $1b
    ld e, $28                                     ; $5702: $1e $28
    ld [bc], a                                    ; $5704: $02
    inc e                                         ; $5705: $1c
    jr nz, @+$2a                                  ; $5706: $20 $28

    ld [bc], a                                    ; $5708: $02
    dec e                                         ; $5709: $1d
    ld d, $29                                     ; $570a: $16 $29
    ld [bc], a                                    ; $570c: $02
    ld e, $1a                                     ; $570d: $1e $1a
    dec hl                                        ; $570f: $2b
    ld [bc], a                                    ; $5710: $02
    rra                                           ; $5711: $1f

jr_068_5712:
    jr nz, jr_068_573f                            ; $5712: $20 $2b

    ld [bc], a                                    ; $5714: $02
    jr nz, jr_068_5733                            ; $5715: $20 $1c

    cpl                                           ; $5717: $2f
    ld [bc], a                                    ; $5718: $02
    ld hl, $2f21                                  ; $5719: $21 $21 $2f
    rst $38                                       ; $571c: $ff
    rst $38                                       ; $571d: $ff
    rst $38                                       ; $571e: $ff
    daa                                           ; $571f: $27
    ld d, a                                       ; $5720: $57
    ld d, $5c                                     ; $5721: $16 $5c
    ld d, d                                       ; $5723: $52
    ld h, d                                       ; $5724: $62
    ld [hl], h                                    ; $5725: $74
    ld h, d                                       ; $5726: $62
    rst $18                                       ; $5727: $df
    ld l, $0e                                     ; $5728: $2e $0e
    ld c, $0e                                     ; $572a: $0e $0e
    ld c, l                                       ; $572c: $4d
    rst $38                                       ; $572d: $ff
    db $ed                                        ; $572e: $ed
    ld l, $2e                                     ; $572f: $2e $2e
    ld [hl], c                                    ; $5731: $71
    ld c, [hl]                                    ; $5732: $4e

jr_068_5733:
    push af                                       ; $5733: $f5
    and $e0                                       ; $5734: $e6 $e0
    db $ec                                        ; $5736: $ec
    ret nc                                        ; $5737: $d0

    db $ed                                        ; $5738: $ed
    ld l, [hl]                                    ; $5739: $6e
    ld l, $6e                                     ; $573a: $2e $6e
    cp [hl]                                       ; $573c: $be
    ldh [$fe], a                                  ; $573d: $e0 $fe

jr_068_573f:
    cp l                                          ; $573f: $bd
    ldh [$0d], a                                  ; $5740: $e0 $0d
    dec c                                         ; $5742: $0d
    ld c, l                                       ; $5743: $4d
    ld c, l                                       ; $5744: $4d
    ld l, l                                       ; $5745: $6d
    ld l, l                                       ; $5746: $6d
    ld l, l                                       ; $5747: $6d
    rrca                                          ; $5748: $0f
    ld l, $2e                                     ; $5749: $2e $2e
    ld c, $6d                                     ; $574b: $0e $6d
    set 4, c                                      ; $574d: $cb $e1
    ldh a, [$e2]                                  ; $574f: $f0 $e2
    jp nz, $e0e0                                  ; $5751: $c2 $e0 $e0

    ld [$f0ec], a                                 ; $5754: $ea $ec $f0
    ldh a, [$c1]                                  ; $5757: $f0 $c1
    ldh [$4e], a                                  ; $5759: $e0 $4e
    ld c, [hl]                                    ; $575b: $4e
    ret nz                                        ; $575c: $c0

    and $2e                                       ; $575d: $e6 $2e
    ld l, $6e                                     ; $575f: $2e $6e
    rrca                                          ; $5761: $0f
    ld l, $4e                                     ; $5762: $2e $4e
    ld c, $0d                                     ; $5764: $0e $0d
    cp e                                          ; $5766: $bb
    ldh [$c0], a                                  ; $5767: $e0 $c0
    db $e4                                        ; $5769: $e4
    rst $28                                       ; $576a: $ef
    ldh [$e0], a                                  ; $576b: $e0 $e0
    add sp, $1c                                   ; $576d: $e8 $1c
    ldh a, [$f1]                                  ; $576f: $f0 $f1
    adc a                                         ; $5771: $8f
    ldh [$0e], a                                  ; $5772: $e0 $0e
    ld c, $4e                                     ; $5774: $0e $4e
    sub b                                         ; $5776: $90
    db $e3                                        ; $5777: $e3
    jp nz, $f1e0                                  ; $5778: $c2 $e0 $f1

    pop hl                                        ; $577b: $e1
    add b                                         ; $577c: $80
    ld b, b                                       ; $577d: $40
    ldh [$c0], a                                  ; $577e: $e0 $c0
    rst $20                                       ; $5780: $e7
    ldh [$e9], a                                  ; $5781: $e0 $e9
    ldh a, [$f6]                                  ; $5783: $f0 $f6
    ccf                                           ; $5785: $3f
    ld [c], a                                     ; $5786: $e2
    ret z                                         ; $5787: $c8

    pop hl                                        ; $5788: $e1
    ld l, a                                       ; $5789: $6f
    ldh [$0e], a                                  ; $578a: $e0 $0e
    dec de                                        ; $578c: $1b
    ld c, $0d                                     ; $578d: $0e $0d
    rst $38                                       ; $578f: $ff
    ldh [rKEY1], a                                ; $5790: $e0 $4d
    dec l                                         ; $5792: $2d
    ldh a, [$e0]                                  ; $5793: $f0 $e0
    ldh [$ed], a                                  ; $5795: $e0 $ed
    ldh a, [$fa]                                  ; $5797: $f0 $fa
    ld a, h                                       ; $5799: $7c
    adc b                                         ; $579a: $88
    ld [c], a                                     ; $579b: $e2
    ret nz                                        ; $579c: $c0

    db $e4                                        ; $579d: $e4
    ld l, l                                       ; $579e: $6d
    dec hl                                        ; $579f: $2b
    dec bc                                        ; $57a0: $0b
    ld c, l                                       ; $57a1: $4d
    dec l                                         ; $57a2: $2d
    ldh [$ef], a                                  ; $57a3: $e0 $ef
    ld hl, sp-$10                                 ; $57a5: $f8 $f0
    ld a, [$c0bd]                                 ; $57a7: $fa $bd $c0
    add b                                         ; $57aa: $80
    db $e3                                        ; $57ab: $e3
    ld l, l                                       ; $57ac: $6d
    dec c                                         ; $57ad: $0d
    ld l, l                                       ; $57ae: $6d
    ld a, [bc]                                    ; $57af: $0a
    ld a, [bc]                                    ; $57b0: $0a
    push bc                                       ; $57b1: $c5
    ld l, d                                       ; $57b2: $6a
    cp a                                          ; $57b3: $bf
    ldh [$0d], a                                  ; $57b4: $e0 $0d
    ldh [$ed], a                                  ; $57b6: $e0 $ed
    ldh a, [$fd]                                  ; $57b8: $f0 $fd
    add d                                         ; $57ba: $82
    jp nz, Jump_068_6d6d                          ; $57bb: $c2 $6d $6d

    ccf                                           ; $57be: $3f
    dec c                                         ; $57bf: $0d
    ld l, e                                       ; $57c0: $6b
    ld a, [bc]                                    ; $57c1: $0a
    ld a, [bc]                                    ; $57c2: $0a
    ld a, [hl+]                                   ; $57c3: $2a
    dec bc                                        ; $57c4: $0b
    dec a                                         ; $57c5: $3d
    ldh [$df], a                                  ; $57c6: $e0 $df
    jp $c0f0                                      ; $57c8: $c3 $f0 $c0


    add sp, -$10                                  ; $57cb: $e8 $f0
    ei                                            ; $57cd: $fb
    ld hl, sp-$5d                                 ; $57ce: $f8 $a3
    ld [bc], a                                    ; $57d0: $02
    ldh [$2b], a                                  ; $57d1: $e0 $2b
    dec bc                                        ; $57d3: $0b
    dec hl                                        ; $57d4: $2b
    ld a, [bc]                                    ; $57d5: $0a
    dec b                                         ; $57d6: $05
    ld a, [hl+]                                   ; $57d7: $2a
    add c                                         ; $57d8: $81
    ldh [$2d], a                                  ; $57d9: $e0 $2d
    ldh [$ee], a                                  ; $57db: $e0 $ee
    ldh a, [$ee]                                  ; $57dd: $f0 $ee

Jump_068_57df:
jr_068_57df:
    sbc $a6                                       ; $57df: $de $a6
    inc c                                         ; $57e1: $0c
    pop bc                                        ; $57e2: $c1
    jp $fee2                                      ; $57e3: $c3 $e2 $fe


    ld [bc], a                                    ; $57e6: $02
    ldh [$0a], a                                  ; $57e7: $e0 $0a
    ld c, e                                       ; $57e9: $4b
    ld c, e                                       ; $57ea: $4b
    ld a, [bc]                                    ; $57eb: $0a
    ld a, [hl+]                                   ; $57ec: $2a
    ld c, e                                       ; $57ed: $4b
    dec l                                         ; $57ee: $2d
    ld bc, $7f0d                                  ; $57ef: $01 $0d $7f
    ldh [$be], a                                  ; $57f2: $e0 $be
    and [hl]                                      ; $57f4: $a6
    ldh a, [$a2]                                  ; $57f5: $f0 $a2
    xor [hl]                                      ; $57f7: $ae
    xor b                                         ; $57f8: $a8
    ret nc                                        ; $57f9: $d0

    db $e3                                        ; $57fa: $e3
    sub d                                         ; $57fb: $92
    pop hl                                        ; $57fc: $e1
    jr z, jr_068_57df                             ; $57fd: $28 $e0

    inc sp                                        ; $57ff: $33
    dec c                                         ; $5800: $0d
    dec c                                         ; $5801: $0d
    ld hl, sp-$5f                                 ; $5802: $f8 $a1
    cp c                                          ; $5804: $b9
    and e                                         ; $5805: $a3
    dec c                                         ; $5806: $0d
    dec c                                         ; $5807: $0d
    ld [bc], a                                    ; $5808: $02
    ldh [$7e], a                                  ; $5809: $e0 $7e
    ldh [rSB], a                                  ; $580b: $e0 $01
    dec hl                                        ; $580d: $2b
    cp [hl]                                       ; $580e: $be
    and d                                         ; $580f: $a2
    ei                                            ; $5810: $fb
    ret nz                                        ; $5811: $c0

    ld c, b                                       ; $5812: $48
    pop hl                                        ; $5813: $e1
    and b                                         ; $5814: $a0
    and e                                         ; $5815: $a3
    ldh [$e3], a                                  ; $5816: $e0 $e3
    ret nc                                        ; $5818: $d0

    ld [$c214], a                                 ; $5819: $ea $14 $c2
    add sp, -$40                                  ; $581c: $e8 $c0
    pop hl                                        ; $581e: $e1
    ld sp, hl                                     ; $581f: $f9
    and h                                         ; $5820: $a4
    ld a, b                                       ; $5821: $78
    and c                                         ; $5822: $a1
    dec l                                         ; $5823: $2d
    add e                                         ; $5824: $83
    ldh [rWX], a                                  ; $5825: $e0 $4b
    ld c, e                                       ; $5827: $4b
    ld l, e                                       ; $5828: $6b
    inc bc                                        ; $5829: $03
    dec c                                         ; $582a: $0d
    dec l                                         ; $582b: $2d
    jr c, @-$3b                                   ; $582c: $38 $c3

    sbc a                                         ; $582e: $9f
    pop hl                                        ; $582f: $e1
    ld sp, hl                                     ; $5830: $f9
    ld [c], a                                     ; $5831: $e2
    inc h                                         ; $5832: $24
    and h                                         ; $5833: $a4
    ret nc                                        ; $5834: $d0

    db $eb                                        ; $5835: $eb
    ld b, c                                       ; $5836: $41
    and b                                         ; $5837: $a0
    ld hl, sp+$0d                                 ; $5838: $f8 $0d
    pop hl                                        ; $583a: $e1
    ld b, $c3                                     ; $583b: $06 $c3
    dec a                                         ; $583d: $3d
    ld [c], a                                     ; $583e: $e2
    ld c, $4d                                     ; $583f: $0e $4d
    dec l                                         ; $5841: $2d
    dec hl                                        ; $5842: $2b
    ld l, e                                       ; $5843: $6b
    ld de, $ff0b                                  ; $5844: $11 $0b $ff
    ldh [$33], a                                  ; $5847: $e0 $33
    ld [c], a                                     ; $5849: $e2
    cp d                                          ; $584a: $ba
    pop bc                                        ; $584b: $c1
    ld l, l                                       ; $584c: $6d

jr_068_584d:
    ld sp, hl                                     ; $584d: $f9
    db $e3                                        ; $584e: $e3
    rrca                                          ; $584f: $0f
    and e                                         ; $5850: $a3
    ret nc                                        ; $5851: $d0

    db $eb                                        ; $5852: $eb
    add sp, $54                                   ; $5853: $e8 $54
    and c                                         ; $5855: $a1
    pop de                                        ; $5856: $d1
    and c                                         ; $5857: $a1
    ldh a, [$e6]                                  ; $5858: $f0 $e6
    dec c                                         ; $585a: $0d
    ret nz                                        ; $585b: $c0

    and b                                         ; $585c: $a0
    ld c, l                                       ; $585d: $4d
    dec l                                         ; $585e: $2d
    ld l, e                                       ; $585f: $6b
    inc bc                                        ; $5860: $03
    ld c, e                                       ; $5861: $4b
    ld c, e                                       ; $5862: $4b
    ret nz                                        ; $5863: $c0

    ldh [$7f], a                                  ; $5864: $e0 $7f
    pop hl                                        ; $5866: $e1
    db $fd                                        ; $5867: $fd
    push hl                                       ; $5868: $e5
    ld [hl], d                                    ; $5869: $72
    pop bc                                        ; $586a: $c1
    inc d                                         ; $586b: $14
    pop hl                                        ; $586c: $e1
    ret nc                                        ; $586d: $d0

    db $ec                                        ; $586e: $ec
    nop                                           ; $586f: $00
    sbc a                                         ; $5870: $9f
    add c                                         ; $5871: $81
    sub [hl]                                      ; $5872: $96
    and c                                         ; $5873: $a1
    push af                                       ; $5874: $f5
    add c                                         ; $5875: $81
    ld [hl], l                                    ; $5876: $75
    add b                                         ; $5877: $80
    dec d                                         ; $5878: $15
    db $e3                                        ; $5879: $e3
    ld a, [hl]                                    ; $587a: $7e
    and b                                         ; $587b: $a0
    ld a, [hl]                                    ; $587c: $7e
    ret nz                                        ; $587d: $c0

    inc a                                         ; $587e: $3c
    pop bc                                        ; $587f: $c1
    add b                                         ; $5880: $80
    cp [hl]                                       ; $5881: $be
    add sp, -$40                                  ; $5882: $e8 $c0
    db $e3                                        ; $5884: $e3
    ret nc                                        ; $5885: $d0

    xor $50                                       ; $5886: $ee $50
    and e                                         ; $5888: $a3
    ld d, l                                       ; $5889: $55
    add h                                         ; $588a: $84
    or l                                          ; $588b: $b5
    jp nz, $e38b                                  ; $588c: $c2 $8b $e3

    ld a, [bc]                                    ; $588f: $0a
    halt                                          ; $5890: $76
    db $fc                                        ; $5891: $fc
    and b                                         ; $5892: $a0
    ld c, e                                       ; $5893: $4b
    dec c                                         ; $5894: $0d
    inc a                                         ; $5895: $3c
    db $e3                                        ; $5896: $e3
    dec c                                         ; $5897: $0d
    dec bc                                        ; $5898: $0b
    dec bc                                        ; $5899: $0b
    ld [hl-], a                                   ; $589a: $32
    jp nz, $c080                                  ; $589b: $c2 $80 $c0

    push hl                                       ; $589e: $e5
    ret nc                                        ; $589f: $d0

    add sp, $4d                                   ; $58a0: $e8 $4d
    add b                                         ; $58a2: $80
    db $fd                                        ; $58a3: $fd
    and $b4                                       ; $58a4: $e6 $b4
    add c                                         ; $58a6: $81
    ldh a, [$e3]                                  ; $58a7: $f0 $e3
    ld [bc], a                                    ; $58a9: $02
    and b                                         ; $58aa: $a0
    ld c, d                                       ; $58ab: $4a
    ld bc, $7d2a                                  ; $58ac: $01 $2a $7d
    ret nz                                        ; $58af: $c0

    ld a, e                                       ; $58b0: $7b
    ret nz                                        ; $58b1: $c0

    cp e                                          ; $58b2: $bb
    pop bc                                        ; $58b3: $c1
    ld a, [c]                                     ; $58b4: $f2
    and b                                         ; $58b5: $a0
    cp a                                          ; $58b6: $bf
    ldh [$32], a                                  ; $58b7: $e0 $32
    jp nz, $edd0                                  ; $58b9: $c2 $d0 $ed

    jr c, jr_068_584d                             ; $58bc: $38 $8f

    and e                                         ; $58be: $a3
    cp c                                          ; $58bf: $b9
    ldh [$75], a                                  ; $58c0: $e0 $75
    add c                                         ; $58c2: $81
    ld c, [hl]                                    ; $58c3: $4e
    ld c, $4e                                     ; $58c4: $0e $4e
    ldh a, [$e4]                                  ; $58c6: $f0 $e4
    cp $c0                                        ; $58c8: $fe $c0
    push af                                       ; $58ca: $f5
    dec hl                                        ; $58cb: $2b
    cp [hl]                                       ; $58cc: $be
    jp nz, $b52b                                  ; $58cd: $c2 $2b $b5

    ret nz                                        ; $58d0: $c0

jr_068_58d1:
    ld c, e                                       ; $58d1: $4b
    ld c, d                                       ; $58d2: $4a
    ld a, [bc]                                    ; $58d3: $0a
    ld a, [bc]                                    ; $58d4: $0a
    ld d, b                                       ; $58d5: $50
    or e                                          ; $58d6: $b3
    ret nz                                        ; $58d7: $c0

    or d                                          ; $58d8: $b2
    and b                                         ; $58d9: $a0
    sub h                                         ; $58da: $94
    ld h, d                                       ; $58db: $62
    ret nc                                        ; $58dc: $d0

    ld [$c00e], a                                 ; $58dd: $ea $0e $c0
    rst $20                                       ; $58e0: $e7
    ld l, [hl]                                    ; $58e1: $6e

Jump_068_58e2:
    inc b                                         ; $58e2: $04
    add c                                         ; $58e3: $81
    ld e, $f0                                     ; $58e4: $1e $f0
    push hl                                       ; $58e6: $e5
    ld c, l                                       ; $58e7: $4d
    dec l                                         ; $58e8: $2d
    dec l                                         ; $58e9: $2d
    ld c, e                                       ; $58ea: $4b
    ld a, a                                       ; $58eb: $7f
    pop bc                                        ; $58ec: $c1
    ld a, b                                       ; $58ed: $78
    pop bc                                        ; $58ee: $c1
    db $f4                                        ; $58ef: $f4
    pop bc                                        ; $58f0: $c1
    add c                                         ; $58f1: $81
    ld l, d                                       ; $58f2: $6a
    rst $38                                       ; $58f3: $ff
    ret nz                                        ; $58f4: $c0

    call c, $d0a4                                 ; $58f5: $dc $a4 $d0
    ld a, [c]                                     ; $58f8: $f2
    dec b                                         ; $58f9: $05
    add h                                         ; $58fa: $84
    ret nz                                        ; $58fb: $c0

    rst $20                                       ; $58fc: $e7
    push bc                                       ; $58fd: $c5
    and b                                         ; $58fe: $a0
    ld c, e                                       ; $58ff: $4b
    daa                                           ; $5900: $27
    dec c                                         ; $5901: $0d
    ld l, e                                       ; $5902: $6b
    ld l, e                                       ; $5903: $6b
    scf                                           ; $5904: $37
    jp nz, $c1b3                                  ; $5905: $c2 $b3 $c1

    ld a, [bc]                                    ; $5908: $0a
    ld [c], a                                     ; $5909: $e2
    add d                                         ; $590a: $82
    push de                                       ; $590b: $d5
    ld h, c                                       ; $590c: $61
    jp nz, $edd0                                  ; $590d: $c2 $d0 $ed

    dec c                                         ; $5910: $0d
    call z, $f681                                 ; $5911: $cc $81 $f6
    ld h, a                                       ; $5914: $67
    ldh a, [$e3]                                  ; $5915: $f0 $e3
    db $ec                                        ; $5917: $ec
    ld b, c                                       ; $5918: $41
    dec l                                         ; $5919: $2d
    dec c                                         ; $591a: $0d
    nop                                           ; $591b: $00
    ld a, [hl-]                                   ; $591c: $3a
    and b                                         ; $591d: $a0
    ld a, a                                       ; $591e: $7f
    ld [c], a                                     ; $591f: $e2
    ldh a, [$80]                                  ; $5920: $f0 $80
    ld l, l                                       ; $5922: $6d
    ldh [$dc], a                                  ; $5923: $e0 $dc
    and h                                         ; $5925: $a4
    ret nc                                        ; $5926: $d0

    db $ed                                        ; $5927: $ed
    dec a                                         ; $5928: $3d
    ld [c], a                                     ; $5929: $e2
    ldh a, [$ed]                                  ; $592a: $f0 $ed
    add b                                         ; $592c: $80
    jr z, jr_068_58d1                             ; $592d: $28 $a2

    cp e                                          ; $592f: $bb
    ret nz                                        ; $5930: $c0

    ld a, [$b3c2]                                 ; $5931: $fa $c2 $b3
    and c                                         ; $5934: $a1
    ld [hl], e                                    ; $5935: $73
    add d                                         ; $5936: $82
    sbc h                                         ; $5937: $9c
    and d                                         ; $5938: $a2
    ret nc                                        ; $5939: $d0

    db $ed                                        ; $593a: $ed
    dec l                                         ; $593b: $2d
    nop                                           ; $593c: $00
    add h                                         ; $593d: $84
    call nz, $eaf0                                ; $593e: $c4 $f0 $ea
    call nc, Call_068_7ca2                        ; $5941: $d4 $a2 $7c
    ret nz                                        ; $5944: $c0

    rst $38                                       ; $5945: $ff
    pop bc                                        ; $5946: $c1
    di                                            ; $5947: $f3
    and b                                         ; $5948: $a0
    ret nz                                        ; $5949: $c0

    pop hl                                        ; $594a: $e1
    db $db                                        ; $594b: $db
    add b                                         ; $594c: $80
    inc b                                         ; $594d: $04
    ld e, h                                       ; $594e: $5c
    and d                                         ; $594f: $a2
    ret nc                                        ; $5950: $d0

    db $eb                                        ; $5951: $eb
    ld l, l                                       ; $5952: $6d
    ret nz                                        ; $5953: $c0

    db $ec                                        ; $5954: $ec
    ldh a, [$e4]                                  ; $5955: $f0 $e4
    ld [hl], a                                    ; $5957: $77
    add d                                         ; $5958: $82
    ld a, h                                       ; $5959: $7c
    ret nz                                        ; $595a: $c0

    cp a                                          ; $595b: $bf
    call nz, Call_000_2b81                        ; $595c: $c4 $81 $2b
    ret nz                                        ; $595f: $c0

    ld [c], a                                     ; $5960: $e2
    ld e, d                                       ; $5961: $5a
    add e                                         ; $5962: $83
    ret nz                                        ; $5963: $c0

    db $ed                                        ; $5964: $ed
    inc b                                         ; $5965: $04
    push bc                                       ; $5966: $c5
    ldh a, [$ea]                                  ; $5967: $f0 $ea
    db $ec                                        ; $5969: $ec
    ld [hl+], a                                   ; $596a: $22
    dec l                                         ; $596b: $2d
    nop                                           ; $596c: $00
    ld a, [$b480]                                 ; $596d: $fa $80 $b4
    ld h, c                                       ; $5970: $61
    ld sp, hl                                     ; $5971: $f9
    pop bc                                        ; $5972: $c1
    cp [hl]                                       ; $5973: $be
    add l                                         ; $5974: $85
    ret nc                                        ; $5975: $d0

    db $ec                                        ; $5976: $ec
    ret z                                         ; $5977: $c8

    and e                                         ; $5978: $a3
    adc d                                         ; $5979: $8a
    ld h, b                                       ; $597a: $60
    jp $f842                                      ; $597b: $c3 $42 $f8


    cp b                                          ; $597e: $b8
    and l                                         ; $597f: $a5
    inc a                                         ; $5980: $3c
    ld h, b                                       ; $5981: $60
    ldh a, [rNR42]                                ; $5982: $f0 $21
    dec c                                         ; $5984: $0d
    ld l, e                                       ; $5985: $6b
    ld c, e                                       ; $5986: $4b
    ld l, e                                       ; $5987: $6b
    ld c, e                                       ; $5988: $4b
    ld b, d                                       ; $5989: $42
    ret nz                                        ; $598a: $c0

    ld [c], a                                     ; $598b: $e2
    ld a, [hl+]                                   ; $598c: $2a
    cp a                                          ; $598d: $bf
    and b                                         ; $598e: $a0
    pop bc                                        ; $598f: $c1
    and [hl]                                      ; $5990: $a6
    ret nc                                        ; $5991: $d0

    db $eb                                        ; $5992: $eb
    inc c                                         ; $5993: $0c
    ld b, h                                       ; $5994: $44
    dec c                                         ; $5995: $0d
    ld hl, sp-$40                                 ; $5996: $f8 $c0
    and e                                         ; $5998: $a3
    dec l                                         ; $5999: $2d
    dec l                                         ; $599a: $2d
    db $f4                                        ; $599b: $f4
    ret nz                                        ; $599c: $c0

    ldh a, [$e6]                                  ; $599d: $f0 $e6
    ld a, e                                       ; $599f: $7b
    ld b, c                                       ; $59a0: $41
    ld c, e                                       ; $59a1: $4b
    ld [hl], h                                    ; $59a2: $74
    ld h, c                                       ; $59a3: $61
    dec hl                                        ; $59a4: $2b
    ld [bc], a                                    ; $59a5: $02
    db $f4                                        ; $59a6: $f4

jr_068_59a7:
    add c                                         ; $59a7: $81
    ld c, e                                       ; $59a8: $4b
    db $e4                                        ; $59a9: $e4
    ldh [$e0], a                                  ; $59aa: $e0 $e0
    db $eb                                        ; $59ac: $eb
    ret nc                                        ; $59ad: $d0

    db $e3                                        ; $59ae: $e3
    inc c                                         ; $59af: $0c
    ld b, h                                       ; $59b0: $44
    ld a, l                                       ; $59b1: $7d
    and d                                         ; $59b2: $a2
    or e                                          ; $59b3: $b3
    and c                                         ; $59b4: $a1
    jr jr_068_59a7                                ; $59b5: $18 $f0

    rst $20                                       ; $59b7: $e7
    inc [hl]                                      ; $59b8: $34
    ld h, e                                       ; $59b9: $63
    ld b, b                                       ; $59ba: $40
    jp Jump_068_4b0a                              ; $59bb: $c3 $0a $4b


    ldh [$ef], a                                  ; $59be: $e0 $ef
    ret nc                                        ; $59c0: $d0

    db $e4                                        ; $59c1: $e4
    inc c                                         ; $59c2: $0c
    ld b, l                                       ; $59c3: $45
    add $b5                                       ; $59c4: $c6 $b5
    ldh [$2e], a                                  ; $59c6: $e0 $2e
    ld c, [hl]                                    ; $59c8: $4e
    ldh a, [$e9]                                  ; $59c9: $f0 $e9
    add $83                                       ; $59cb: $c6 $83
    ld a, [hl]                                    ; $59cd: $7e
    and d                                         ; $59ce: $a2
    dec hl                                        ; $59cf: $2b
    dec c                                         ; $59d0: $0d
    nop                                           ; $59d1: $00
    add c                                         ; $59d2: $81
    pop hl                                        ; $59d3: $e1
    ldh [$ec], a                                  ; $59d4: $e0 $ec
    ret nc                                        ; $59d6: $d0

    ld [$e144], a                                 ; $59d7: $ea $44 $e1
    or h                                          ; $59da: $b4
    nop                                           ; $59db: $00
    cp e                                          ; $59dc: $bb
    pop hl                                        ; $59dd: $e1
    ldh a, [$e5]                                  ; $59de: $f0 $e5
    ld l, a                                       ; $59e0: $6f
    ld b, c                                       ; $59e1: $41
    ld b, b                                       ; $59e2: $40
    dec sp                                        ; $59e3: $3b
    ld h, b                                       ; $59e4: $60
    or a                                          ; $59e5: $b7
    ld h, c                                       ; $59e6: $61
    inc [hl]                                      ; $59e7: $34
    ld h, b                                       ; $59e8: $60
    inc hl                                        ; $59e9: $23
    ldh [$e0], a                                  ; $59ea: $e0 $e0
    db $ec                                        ; $59ec: $ec
    ret nc                                        ; $59ed: $d0

    ld [c], a                                     ; $59ee: $e2
    dec l                                         ; $59ef: $2d
    cp e                                          ; $59f0: $bb
    add [hl]                                      ; $59f1: $86
    ld bc, $f50e                                  ; $59f2: $01 $0e $f5
    ldh [$f3], a                                  ; $59f5: $e0 $f3
    and b                                         ; $59f7: $a0
    ldh a, [$e7]                                  ; $59f8: $f0 $e7
    xor h                                         ; $59fa: $ac
    ld bc, $803e                                  ; $59fb: $01 $3e $80
    ld [hl], a                                    ; $59fe: $77
    ld h, c                                       ; $59ff: $61

Call_068_5a00:
    ld b, d                                       ; $5a00: $42
    pop hl                                        ; $5a01: $e1
    add b                                         ; $5a02: $80
    ldh [$ee], a                                  ; $5a03: $e0 $ee
    ret nc                                        ; $5a05: $d0

    db $e3                                        ; $5a06: $e3
    inc c                                         ; $5a07: $0c
    ld b, h                                       ; $5a08: $44
    add b                                         ; $5a09: $80
    ld [c], a                                     ; $5a0a: $e2
    ldh a, [$eb]                                  ; $5a0b: $f0 $eb
    add hl, sp                                    ; $5a0d: $39
    ld hl, $e2c0                                  ; $5a0e: $21 $c0 $e2
    ld l, e                                       ; $5a11: $6b
    nop                                           ; $5a12: $00
    push af                                       ; $5a13: $f5
    ld b, b                                       ; $5a14: $40
    ldh [$f0], a                                  ; $5a15: $e0 $f0
    sub b                                         ; $5a17: $90
    ld [c], a                                     ; $5a18: $e2
    jr nc, jr_068_5a26                            ; $5a19: $30 $0b

    sub e                                         ; $5a1b: $93
    ld b, d                                       ; $5a1c: $42
    ld d, a                                       ; $5a1d: $57
    ld b, l                                       ; $5a1e: $45
    ld b, c                                       ; $5a1f: $41
    pop hl                                        ; $5a20: $e1
    add b                                         ; $5a21: $80
    pop hl                                        ; $5a22: $e1
    ld bc, $7a4b                                  ; $5a23: $01 $4b $7a

jr_068_5a26:
    ldh [rSC], a                                  ; $5a26: $e0 $02
    ld h, l                                       ; $5a28: $65
    ld b, d                                       ; $5a29: $42
    ld b, l                                       ; $5a2a: $45
    call Call_000_30e6                            ; $5a2b: $cd $e6 $30
    ld a, [bc]                                    ; $5a2e: $0a
    inc b                                         ; $5a2f: $04
    call nz, Call_000_0234                        ; $5a30: $c4 $34 $02
    nop                                           ; $5a33: $00
    ld sp, $b601                                  ; $5a34: $31 $01 $b6
    ld hl, $c1c3                                  ; $5a37: $21 $c3 $c1
    ld a, c                                       ; $5a3a: $79
    ld b, h                                       ; $5a3b: $44
    inc b                                         ; $5a3c: $04
    ld b, c                                       ; $5a3d: $41
    ret nc                                        ; $5a3e: $d0

    ld [$610b], a                                 ; $5a3f: $ea $0b $61
    jr nc, jr_068_5a4d                            ; $5a42: $30 $09

    nop                                           ; $5a44: $00
    db $f4                                        ; $5a45: $f4
    and [hl]                                      ; $5a46: $a6
    jp Jump_000_01e3                              ; $5a47: $c3 $e3 $01


    add h                                         ; $5a4a: $84
    dec sp                                        ; $5a4b: $3b
    and b                                         ; $5a4c: $a0

jr_068_5a4d:
    ld [hl], d                                    ; $5a4d: $72
    jp nz, Jump_000_0330                          ; $5a4e: $c2 $30 $03

    ret nc                                        ; $5a51: $d0

jr_068_5a52:
    jp hl                                         ; $5a52: $e9


    jr nc, jr_068_5a62                            ; $5a53: $30 $0d

    jr nc, jr_068_5a52                            ; $5a55: $30 $fb

    ld h, h                                       ; $5a57: $64
    rst $30                                       ; $5a58: $f7
    nop                                           ; $5a59: $00
    add a                                         ; $5a5a: $87
    ld b, h                                       ; $5a5b: $44
    ld a, h                                       ; $5a5c: $7c
    ld h, c                                       ; $5a5d: $61
    dec bc                                        ; $5a5e: $0b
    ld c, e                                       ; $5a5f: $4b
    ld [hl], e                                    ; $5a60: $73
    add c                                         ; $5a61: $81

jr_068_5a62:
    ret nz                                        ; $5a62: $c0

    and $60                                       ; $5a63: $e6 $60
    ret nc                                        ; $5a65: $d0

    jp hl                                         ; $5a66: $e9


    jr nc, jr_068_5a76                            ; $5a67: $30 $0d

    ld b, b                                       ; $5a69: $40
    ld b, $48                                     ; $5a6a: $06 $48
    ld b, l                                       ; $5a6c: $45
    inc a                                         ; $5a6d: $3c
    ld h, c                                       ; $5a6e: $61
    ld c, e                                       ; $5a6f: $4b
    ld c, e                                       ; $5a70: $4b
    add d                                         ; $5a71: $82
    ld b, e                                       ; $5a72: $43
    add b                                         ; $5a73: $80
    ld e, d                                       ; $5a74: $5a
    ld b, c                                       ; $5a75: $41

jr_068_5a76:
    ret nc                                        ; $5a76: $d0

    db $ec                                        ; $5a77: $ec
    jr nc, jr_068_5a87                            ; $5a78: $30 $0d

    db $e4                                        ; $5a7a: $e4
    and h                                         ; $5a7b: $a4
    ld a, h                                       ; $5a7c: $7c
    ld b, [hl]                                    ; $5a7d: $46
    ret nz                                        ; $5a7e: $c0

    db $e3                                        ; $5a7f: $e3
    cp b                                          ; $5a80: $b8
    ld [hl+], a                                   ; $5a81: $22
    ld l, l                                       ; $5a82: $6d
    ld b, b                                       ; $5a83: $40
    ldh [$e1], a                                  ; $5a84: $e0 $e1
    ret nc                                        ; $5a86: $d0

jr_068_5a87:
    db $ed                                        ; $5a87: $ed
    ld b, b                                       ; $5a88: $40
    dec c                                         ; $5a89: $0d
    xor a                                         ; $5a8a: $af
    ld b, h                                       ; $5a8b: $44
    ld d, d                                       ; $5a8c: $52
    ld [hl+], a                                   ; $5a8d: $22
    ld b, b                                       ; $5a8e: $40
    push hl                                       ; $5a8f: $e5
    ld c, e                                       ; $5a90: $4b
    ld b, c                                       ; $5a91: $41
    ldh [rP1], a                                  ; $5a92: $e0 $00
    jp hl                                         ; $5a94: $e9


    add b                                         ; $5a95: $80
    ld b, b                                       ; $5a96: $40
    inc bc                                        ; $5a97: $03
    ret nc                                        ; $5a98: $d0

    db $ec                                        ; $5a99: $ec
    ret nz                                        ; $5a9a: $c0

    db $ed                                        ; $5a9b: $ed
    db $f4                                        ; $5a9c: $f4
    and h                                         ; $5a9d: $a4
    ei                                            ; $5a9e: $fb
    ld h, $09                                     ; $5a9f: $26 $09
    add b                                         ; $5aa1: $80
    jp nz, Jump_000_00c1                          ; $5aa2: $c2 $c1 $00

    inc sp                                        ; $5aa5: $33
    add e                                         ; $5aa6: $83
    ld [hl+], a                                   ; $5aa7: $22
    jp nz, $ecc0                                  ; $5aa8: $c2 $c0 $ec

    jr nc, @+$10                                  ; $5aab: $30 $0e

    push af                                       ; $5aad: $f5
    and l                                         ; $5aae: $a5
    ld b, [hl]                                    ; $5aaf: $46
    inc hl                                        ; $5ab0: $23
    ld b, c                                       ; $5ab1: $41
    db $e3                                        ; $5ab2: $e3
    inc b                                         ; $5ab3: $04
    add $04                                       ; $5ab4: $c6 $04
    adc a                                         ; $5ab6: $8f
    call nz, $e9d0                                ; $5ab7: $c4 $d0 $e9
    ld l, $30                                     ; $5aba: $2e $30
    dec c                                         ; $5abc: $0d
    cp a                                          ; $5abd: $bf
    and $80                                       ; $5abe: $e6 $80
    and c                                         ; $5ac0: $a1
    ld b, c                                       ; $5ac1: $41
    db $e3                                        ; $5ac2: $e3
    add $03                                       ; $5ac3: $c6 $03
    ld b, b                                       ; $5ac5: $40
    ldh [$e6], a                                  ; $5ac6: $e0 $e6
    ret nc                                        ; $5ac8: $d0

    db $eb                                        ; $5ac9: $eb
    jr nc, jr_068_5ad9                            ; $5aca: $30 $0d

    ldh a, [$e5]                                  ; $5acc: $f0 $e5
    rra                                           ; $5ace: $1f
    pop bc                                        ; $5acf: $c1
    jp $0ba2                                      ; $5ad0: $c3 $a2 $0b


    ld b, a                                       ; $5ad3: $47
    inc hl                                        ; $5ad4: $23
    ld b, b                                       ; $5ad5: $40
    ldh [$ed], a                                  ; $5ad6: $e0 $ed
    ret nc                                        ; $5ad8: $d0

jr_068_5ad9:
    push hl                                       ; $5ad9: $e5
    jr nc, jr_068_5aea                            ; $5ada: $30 $0e

    ldh a, [$e4]                                  ; $5adc: $f0 $e4
    ld [bc], a                                    ; $5ade: $02
    jp nz, Jump_000_003a                          ; $5adf: $c2 $3a $00

    ld c, e                                       ; $5ae2: $4b
    add d                                         ; $5ae3: $82
    and b                                         ; $5ae4: $a0
    ret nz                                        ; $5ae5: $c0

    push bc                                       ; $5ae6: $c5
    ld b, d                                       ; $5ae7: $42
    ldh [$ec], a                                  ; $5ae8: $e0 $ec

jr_068_5aea:
    ret nc                                        ; $5aea: $d0

    and $30                                       ; $5aeb: $e6 $30
    inc c                                         ; $5aed: $0c
    ldh a, [$e5]                                  ; $5aee: $f0 $e5
    and $00                                       ; $5af0: $e6 $00
    dec l                                         ; $5af2: $2d
    ld c, l                                       ; $5af3: $4d
    add b                                         ; $5af4: $80
    ld b, c                                       ; $5af5: $41
    ld h, c                                       ; $5af6: $61
    ld a, c                                       ; $5af7: $79
    ld h, d                                       ; $5af8: $62
    ldh [$ef], a                                  ; $5af9: $e0 $ef
    ld b, b                                       ; $5afb: $40
    dec b                                         ; $5afc: $05
    jr nc, jr_068_5b0c                            ; $5afd: $30 $0d

    ldh a, [$e5]                                  ; $5aff: $f0 $e5
    add b                                         ; $5b01: $80
    ld b, d                                       ; $5b02: $42
    ld c, l                                       ; $5b03: $4d
    inc bc                                        ; $5b04: $03
    dec hl                                        ; $5b05: $2b
    dec hl                                        ; $5b06: $2b
    ld [hl], a                                    ; $5b07: $77
    ld b, d                                       ; $5b08: $42
    add e                                         ; $5b09: $83
    nop                                           ; $5b0a: $00
    ret nc                                        ; $5b0b: $d0

jr_068_5b0c:
    push af                                       ; $5b0c: $f5
    jr nc, jr_068_5b21                            ; $5b0d: $30 $12

    pop hl                                        ; $5b0f: $e1
    add c                                         ; $5b10: $81
    dec a                                         ; $5b11: $3d
    and l                                         ; $5b12: $a5
    nop                                           ; $5b13: $00
    cp b                                          ; $5b14: $b8
    ld [c], a                                     ; $5b15: $e2
    jp $e021                                      ; $5b16: $c3 $21 $e0


    db $eb                                        ; $5b19: $eb
    ret nc                                        ; $5b1a: $d0

    ld [$0830], a                                 ; $5b1b: $ea $30 $08
    ldh a, [$e4]                                  ; $5b1e: $f0 $e4
    pop bc                                        ; $5b20: $c1

jr_068_5b21:
    ld [$e3bf], a                                 ; $5b21: $ea $bf $e3
    nop                                           ; $5b24: $00
    ldh [$ea], a                                  ; $5b25: $e0 $ea
    ret nc                                        ; $5b27: $d0

    and $30                                       ; $5b28: $e6 $30
    dec c                                         ; $5b2a: $0d
    ld a, [c]                                     ; $5b2b: $f2
    db $e3                                        ; $5b2c: $e3
    pop bc                                        ; $5b2d: $c1
    db $ec                                        ; $5b2e: $ec
    db $e3                                        ; $5b2f: $e3
    ld b, c                                       ; $5b30: $41
    ldh [$ea], a                                  ; $5b31: $e0 $ea
    ret nc                                        ; $5b33: $d0

    rst $20                                       ; $5b34: $e7
    nop                                           ; $5b35: $00
    adc a                                         ; $5b36: $8f
    and e                                         ; $5b37: $a3
    jr nc, @+$09                                  ; $5b38: $30 $07

    ld a, a                                       ; $5b3a: $7f
    and e                                         ; $5b3b: $a3
    pop bc                                        ; $5b3c: $c1
    db $ed                                        ; $5b3d: $ed
    and e                                         ; $5b3e: $a3
    ld b, d                                       ; $5b3f: $42
    ldh [$e8], a                                  ; $5b40: $e0 $e8
    ret nc                                        ; $5b42: $d0

    rst $20                                       ; $5b43: $e7
    ld d, b                                       ; $5b44: $50
    dec b                                         ; $5b45: $05
    nop                                           ; $5b46: $00
    jr nc, jr_068_5b55                            ; $5b47: $30 $0c

    ld b, d                                       ; $5b49: $42
    ld [hl+], a                                   ; $5b4a: $22
    ld b, d                                       ; $5b4b: $42
    nop                                           ; $5b4c: $00
    rst $30                                       ; $5b4d: $f7
    add l                                         ; $5b4e: $85
    ld h, e                                       ; $5b4f: $63
    ld b, c                                       ; $5b50: $41
    ldh [$e9], a                                  ; $5b51: $e0 $e9
    ret nc                                        ; $5b53: $d0

    db $ed                                        ; $5b54: $ed

jr_068_5b55:
    jr nc, jr_068_5b60                            ; $5b55: $30 $09

    nop                                           ; $5b57: $00
    inc bc                                        ; $5b58: $03
    inc hl                                        ; $5b59: $23
    dec b                                         ; $5b5a: $05
    add d                                         ; $5b5b: $82
    call nz, $8163                                ; $5b5c: $c4 $63 $81
    add c                                         ; $5b5f: $81

jr_068_5b60:
    ldh [$ec], a                                  ; $5b60: $e0 $ec
    ret nc                                        ; $5b62: $d0

    jp hl                                         ; $5b63: $e9


    jr nc, jr_068_5b73                            ; $5b64: $30 $0d

    rst $30                                       ; $5b66: $f7
    ld h, b                                       ; $5b67: $60
    add b                                         ; $5b68: $80
    ld b, h                                       ; $5b69: $44
    and e                                         ; $5b6a: $a3
    push bc                                       ; $5b6b: $c5
    ld [bc], a                                    ; $5b6c: $02
    cp c                                          ; $5b6d: $b9
    ld b, d                                       ; $5b6e: $42
    ldh [$ec], a                                  ; $5b6f: $e0 $ec
    ret nc                                        ; $5b71: $d0

    db $eb                                        ; $5b72: $eb

jr_068_5b73:
    jr nc, @+$0f                                  ; $5b73: $30 $0d

    xor l                                         ; $5b75: $ad
    pop hl                                        ; $5b76: $e1
    dec c                                         ; $5b77: $0d
    inc c                                         ; $5b78: $0c
    add l                                         ; $5b79: $85
    and b                                         ; $5b7a: $a0
    add l                                         ; $5b7b: $85
    ld b, b                                       ; $5b7c: $40
    dec l                                         ; $5b7d: $2d
    dec bc                                        ; $5b7e: $0b
    cp [hl]                                       ; $5b7f: $be
    ld b, b                                       ; $5b80: $40
    jp nz, $d0c2                                  ; $5b81: $c2 $c2 $d0

    ld hl, sp+$30                                 ; $5b84: $f8 $30
    dec bc                                        ; $5b86: $0b
    nop                                           ; $5b87: $00
    ldh a, [$e2]                                  ; $5b88: $f0 $e2
    ret nz                                        ; $5b8a: $c0

    ld [c], a                                     ; $5b8b: $e2
    ld b, [hl]                                    ; $5b8c: $46
    inc bc                                        ; $5b8d: $03
    add d                                         ; $5b8e: $82
    ld h, c                                       ; $5b8f: $61
    ret nc                                        ; $5b90: $d0

    ld sp, hl                                     ; $5b91: $f9
    ld [hl], $40                                  ; $5b92: $36 $40
    ldh a, [$ef]                                  ; $5b94: $f0 $ef
    ld d, l                                       ; $5b96: $55
    nop                                           ; $5b97: $00
    ld b, b                                       ; $5b98: $40
    cp a                                          ; $5b99: $bf
    db $e4                                        ; $5b9a: $e4
    inc bc                                        ; $5b9b: $03
    ld h, c                                       ; $5b9c: $61
    ret nc                                        ; $5b9d: $d0

    db $fc                                        ; $5b9e: $fc
    jr nc, jr_068_5bab                            ; $5b9f: $30 $0a

    dec a                                         ; $5ba1: $3d
    inc bc                                        ; $5ba2: $03
    ld d, c                                       ; $5ba3: $51
    ld b, b                                       ; $5ba4: $40
    ld l, e                                       ; $5ba5: $6b
    ld [$0160], sp                                ; $5ba6: $08 $60 $01
    ld c, e                                       ; $5ba9: $4b
    ld b, c                                       ; $5baa: $41

jr_068_5bab:
    nop                                           ; $5bab: $00
    dec b                                         ; $5bac: $05
    ld h, c                                       ; $5bad: $61
    sub $49                                       ; $5bae: $d6 $49
    ret nc                                        ; $5bb0: $d0

    db $ec                                        ; $5bb1: $ec
    jr nc, @+$11                                  ; $5bb2: $30 $0f

    db $fc                                        ; $5bb4: $fc
    ld [hl+], a                                   ; $5bb5: $22
    cp [hl]                                       ; $5bb6: $be
    jp nz, $8000                                  ; $5bb7: $c2 $00 $80

    ld h, b                                       ; $5bba: $60
    add l                                         ; $5bbb: $85
    ld b, c                                       ; $5bbc: $41
    ldh a, [rNR43]                                ; $5bbd: $f0 $22
    ldh [$ec], a                                  ; $5bbf: $e0 $ec
    ret nc                                        ; $5bc1: $d0

    add sp, $30                                   ; $5bc2: $e8 $30
    inc c                                         ; $5bc4: $0c
    db $fc                                        ; $5bc5: $fc
    inc h                                         ; $5bc6: $24
    db $fd                                        ; $5bc7: $fd
    ld b, [hl]                                    ; $5bc8: $46
    nop                                           ; $5bc9: $00
    jr c, jr_068_5bcd                             ; $5bca: $38 $01

    or b                                          ; $5bcc: $b0

jr_068_5bcd:
    add d                                         ; $5bcd: $82
    ldh [$eb], a                                  ; $5bce: $e0 $eb
    ret nc                                        ; $5bd0: $d0

    and $30                                       ; $5bd1: $e6 $30
    ld c, $fc                                     ; $5bd3: $0e $fc
    inc hl                                        ; $5bd5: $23
    dec a                                         ; $5bd6: $3d
    pop hl                                        ; $5bd7: $e1
    ld c, c                                       ; $5bd8: $49
    and b                                         ; $5bd9: $a0
    nop                                           ; $5bda: $00
    add $43                                       ; $5bdb: $c6 $43
    ret nz                                        ; $5bdd: $c0

    db $e3                                        ; $5bde: $e3
    ldh [$ea], a                                  ; $5bdf: $e0 $ea
    ret nc                                        ; $5be1: $d0

    rst $20                                       ; $5be2: $e7
    jr nc, jr_068_5bf9                            ; $5be3: $30 $14

    db $fc                                        ; $5be5: $fc
    ret nz                                        ; $5be6: $c0

    adc d                                         ; $5be7: $8a
    ld b, e                                       ; $5be8: $43
    call c, Call_000_0181                         ; $5be9: $dc $81 $01
    dec c                                         ; $5bec: $0d
    ldh [$ee], a                                  ; $5bed: $e0 $ee
    ret nc                                        ; $5bef: $d0

    xor $30                                       ; $5bf0: $ee $30
    inc b                                         ; $5bf2: $04
    ldh a, [$e9]                                  ; $5bf3: $f0 $e9
    xor l                                         ; $5bf5: $ad
    inc bc                                        ; $5bf6: $03
    sbc l                                         ; $5bf7: $9d
    add c                                         ; $5bf8: $81

jr_068_5bf9:
    ldh [$f3], a                                  ; $5bf9: $e0 $f3
    nop                                           ; $5bfb: $00
    ret nc                                        ; $5bfc: $d0

    pop hl                                        ; $5bfd: $e1
    jr nc, jr_068_5c0e                            ; $5bfe: $30 $0e

    ldh a, [$e8]                                  ; $5c00: $f0 $e8
    ld e, c                                       ; $5c02: $59
    add d                                         ; $5c03: $82
    ld d, h                                       ; $5c04: $54
    add e                                         ; $5c05: $83
    ldh [$f2], a                                  ; $5c06: $e0 $f2
    jr nc, jr_068_5c1b                            ; $5c08: $30 $11

    ldh a, [$e9]                                  ; $5c0a: $f0 $e9
    nop                                           ; $5c0c: $00
    ret nz                                        ; $5c0d: $c0

jr_068_5c0e:
    and $e0                                       ; $5c0e: $e6 $e0
    db $f4                                        ; $5c10: $f4
    ret nz                                        ; $5c11: $c0

    pop hl                                        ; $5c12: $e1
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    rst $18                                       ; $5c16: $df
    ret c                                         ; $5c17: $d8

    push de                                       ; $5c18: $d5
    push de                                       ; $5c19: $d5
    ret c                                         ; $5c1a: $d8

jr_068_5c1b:
    and b                                         ; $5c1b: $a0
    rst $38                                       ; $5c1c: $ff
    db $ed                                        ; $5c1d: $ed
    db $d3                                        ; $5c1e: $d3
    ret nc                                        ; $5c1f: $d0

    pop af                                        ; $5c20: $f1
    db $d3                                        ; $5c21: $d3
    db $ec                                        ; $5c22: $ec
    push hl                                       ; $5c23: $e5
    ldh [$ed], a                                  ; $5c24: $e0 $ed
    ret nc                                        ; $5c26: $d0

    db $ed                                        ; $5c27: $ed
    jp nc, $d4d6                                  ; $5c28: $d2 $d6 $d4

    sub $e6                                       ; $5c2b: $d6 $e6
    cp l                                          ; $5c2d: $bd
    ld [c], a                                     ; $5c2e: $e2
    sbc $df                                       ; $5c2f: $de $df
    ret nc                                        ; $5c31: $d0

    db $e4                                        ; $5c32: $e4
    or c                                          ; $5c33: $b1
    ldh [$d7], a                                  ; $5c34: $e0 $d7
    call nc, $e6d7                                ; $5c36: $d4 $d7 $e6
    ldh a, [$e3]                                  ; $5c39: $f0 $e3
    ret c                                         ; $5c3b: $d8

    push de                                       ; $5c3c: $d5
    ldh [$eb], a                                  ; $5c3d: $e0 $eb
    ldh a, [$ef]                                  ; $5c3f: $f0 $ef
    sub $d2                                       ; $5c41: $d6 $d2
    ret nc                                        ; $5c43: $d0

    or a                                          ; $5c44: $b7
    jp nc, $d6d4                                  ; $5c45: $d2 $d4 $d6

    sub c                                         ; $5c48: $91
    ldh [$e0], a                                  ; $5c49: $e0 $e0
    pop hl                                        ; $5c4b: $e1
    ret nc                                        ; $5c4c: $d0

    db $e3                                        ; $5c4d: $e3
    ret nc                                        ; $5c4e: $d0

    cp a                                          ; $5c4f: $bf
    jp nc, $a0d8                                  ; $5c50: $d2 $d8 $a0

    jp c, $dad9                                   ; $5c53: $da $d9 $da

    ldh a, [$e3]                                  ; $5c56: $f0 $e3
    db $d3                                        ; $5c58: $d3
    ld e, c                                       ; $5c59: $59
    ret nc                                        ; $5c5a: $d0

    ldh [$eb], a                                  ; $5c5b: $e0 $eb
    ldh a, [$ef]                                  ; $5c5d: $f0 $ef
    rst $10                                       ; $5c5f: $d7
    call nc, $e0bf                                ; $5c60: $d4 $bf $e0
    rst $10                                       ; $5c63: $d7
    call z, $bbe0                                 ; $5c64: $cc $e0 $bb
    ld [c], a                                     ; $5c67: $e2
    db $e3                                        ; $5c68: $e3
    ld d, e                                       ; $5c69: $53
    ldh [$d2], a                                  ; $5c6a: $e0 $d2
    ret nc                                        ; $5c6c: $d0

    pop de                                        ; $5c6d: $d1
    ld a, [c]                                     ; $5c6e: $f2
    ldh [$a0], a                                  ; $5c6f: $e0 $a0
    rst $00                                       ; $5c71: $c7
    call c, $dcdb                                 ; $5c72: $dc $db $dc
    ldh a, [$e2]                                  ; $5c75: $f0 $e2
    ldh [$ed], a                                  ; $5c77: $e0 $ed
    ldh a, [$f0]                                  ; $5c79: $f0 $f0
    db $dd                                        ; $5c7b: $dd
    reti                                          ; $5c7c: $d9


    cp d                                          ; $5c7d: $ba
    ld d, e                                       ; $5c7e: $53
    ldh [$dd], a                                  ; $5c7f: $e0 $dd
    db $10                                        ; $5c81: $10
    ld [c], a                                     ; $5c82: $e2
    db $eb                                        ; $5c83: $eb
    and b                                         ; $5c84: $a0
    rst $10                                       ; $5c85: $d7
    ld [hl], e                                    ; $5c86: $73
    pop hl                                        ; $5c87: $e1
    rst $10                                       ; $5c88: $d7
    ld a, a                                       ; $5c89: $7f
    jp c, $a0a0                                   ; $5c8a: $da $a0 $a0

    sbc a                                         ; $5c8d: $9f
    and d                                         ; $5c8e: $a2
    sbc l                                         ; $5c8f: $9d
    sbc a                                         ; $5c90: $9f
    ldh a, [$e0]                                  ; $5c91: $f0 $e0
    ld l, b                                       ; $5c93: $68
    rst $28                                       ; $5c94: $ef
    ldh [$e0], a                                  ; $5c95: $e0 $e0
    ld [$f0f0], a                                 ; $5c97: $ea $f0 $f0
    ret nc                                        ; $5c9a: $d0

    cp [hl]                                       ; $5c9b: $be
    ldh [$dd], a                                  ; $5c9c: $e0 $dd
    pop de                                        ; $5c9e: $d1
    ret nc                                        ; $5c9f: $d0

    pop bc                                        ; $5ca0: $c1
    rst $28                                       ; $5ca1: $ef
    db $ec                                        ; $5ca2: $ec
    db $ed                                        ; $5ca3: $ed
    and b                                         ; $5ca4: $a0
    jp c, $e007                                   ; $5ca5: $da $07 $e0

    reti                                          ; $5ca8: $d9


    jp c, $ffdc                                   ; $5ca9: $da $dc $ff

    and b                                         ; $5cac: $a0
    sbc a                                         ; $5cad: $9f
    sbc h                                         ; $5cae: $9c
    ld b, l                                       ; $5caf: $45
    ld b, l                                       ; $5cb0: $45
    sbc h                                         ; $5cb1: $9c
    sbc a                                         ; $5cb2: $9f
    db $ed                                        ; $5cb3: $ed
    ld c, a                                       ; $5cb4: $4f
    and b                                         ; $5cb5: $a0
    and b                                         ; $5cb6: $a0
    jp c, $e0d3                                   ; $5cb7: $da $d3 $e0

    ld [$f0f0], a                                 ; $5cba: $ea $f0 $f0
    call nc, $e040                                ; $5cbd: $d4 $40 $e0
    db $e4                                        ; $5cc0: $e4
    adc e                                         ; $5cc1: $8b
    pop hl                                        ; $5cc2: $e1
    ld a, h                                       ; $5cc3: $7c
    jp nz, Jump_000_07dc                          ; $5cc4: $c2 $dc $07

    ldh [rLYC], a                                 ; $5cc7: $e0 $45
    ldh [$9f], a                                  ; $5cc9: $e0 $9f
    sbc h                                         ; $5ccb: $9c
    ld c, b                                       ; $5ccc: $48
    ld e, a                                       ; $5ccd: $5f
    ld c, c                                       ; $5cce: $49
    ld d, d                                       ; $5ccf: $52
    ld b, l                                       ; $5cd0: $45
    or [hl]                                       ; $5cd1: $b6
    sbc a                                         ; $5cd2: $9f
    rst $28                                       ; $5cd3: $ef
    ldh [$d7], a                                  ; $5cd4: $e0 $d7
    ldh [$ea], a                                  ; $5cd6: $e0 $ea
    jp nz, $f0f0                                  ; $5cd8: $c2 $f0 $f0

    reti                                          ; $5cdb: $d9


    ld b, b                                       ; $5cdc: $40
    ldh [$8b], a                                  ; $5cdd: $e0 $8b
    pop hl                                        ; $5cdf: $e1
    ldh [$e4], a                                  ; $5ce0: $e0 $e4
    rlca                                          ; $5ce2: $07
    ldh [$a0], a                                  ; $5ce3: $e0 $a0
    and b                                         ; $5ce5: $a0
    ld a, a                                       ; $5ce6: $7f
    sbc [hl]                                      ; $5ce7: $9e
    ld b, l                                       ; $5ce8: $45
    ld d, d                                       ; $5ce9: $52
    ld h, c                                       ; $5cea: $61
    ld d, d                                       ; $5ceb: $52
    ld b, h                                       ; $5cec: $44
    sub b                                         ; $5ced: $90
    cp a                                          ; $5cee: $bf
    pop hl                                        ; $5cef: $e1
    add hl, de                                    ; $5cf0: $19
    jp c, $ebe0                                   ; $5cf1: $da $e0 $eb

    ldh a, [$ef]                                  ; $5cf4: $f0 $ef
    db $db                                        ; $5cf6: $db
    db $db                                        ; $5cf7: $db
    db $dd                                        ; $5cf8: $dd
    ldh [$8b], a                                  ; $5cf9: $e0 $8b
    pop hl                                        ; $5cfb: $e1
    ei                                            ; $5cfc: $fb
    xor b                                         ; $5cfd: $a8
    ld a, a                                       ; $5cfe: $7f
    sbc [hl]                                      ; $5cff: $9e
    ld b, l                                       ; $5d00: $45
    dec hl                                        ; $5d01: $2b
    cp l                                          ; $5d02: $bd
    ld b, a                                       ; $5d03: $47
    ld b, a                                       ; $5d04: $47
    sub c                                         ; $5d05: $91
    cp a                                          ; $5d06: $bf
    pop hl                                        ; $5d07: $e1
    add c                                         ; $5d08: $81
    call c, $ece0                                 ; $5d09: $dc $e0 $ec
    ldh a, [$ee]                                  ; $5d0c: $f0 $ee
    db $ed                                        ; $5d0e: $ed
    ld [c], a                                     ; $5d0f: $e2
    adc e                                         ; $5d10: $8b
    pop hl                                        ; $5d11: $e1
    rlca                                          ; $5d12: $07
    jp nz, $a0b6                                  ; $5d13: $c2 $b6 $a0

    sbc $ff                                       ; $5d16: $de $ff
    rst $18                                       ; $5d18: $df
    sbc a                                         ; $5d19: $9f
    sbc h                                         ; $5d1a: $9c
    ld b, a                                       ; $5d1b: $47
    ld a, [hl+]                                   ; $5d1c: $2a
    cp [hl]                                       ; $5d1d: $be
    ld d, d                                       ; $5d1e: $52
    ld d, d                                       ; $5d1f: $52
    rrca                                          ; $5d20: $0f
    ld b, l                                       ; $5d21: $45
    sub c                                         ; $5d22: $91
    sub b                                         ; $5d23: $90
    sbc [hl]                                      ; $5d24: $9e
    call Call_068_6be4                            ; $5d25: $cd $e4 $6b
    pop hl                                        ; $5d28: $e1
    ldh [$a4], a                                  ; $5d29: $e0 $a4
    ret nc                                        ; $5d2b: $d0

    xor $d6                                       ; $5d2c: $ee $d6
    add e                                         ; $5d2e: $83
    and d                                         ; $5d2f: $a2
    db $e4                                        ; $5d30: $e4
    push hl                                       ; $5d31: $e5
    ld b, l                                       ; $5d32: $45
    ret nz                                        ; $5d33: $c0

    jp nc, $a276                                  ; $5d34: $d2 $76 $a2

    ldh [$e1], a                                  ; $5d37: $e0 $e1
    rst $38                                       ; $5d39: $ff
    sbc [hl]                                      ; $5d3a: $9e
    ld d, c                                       ; $5d3b: $51
    ld e, [hl]                                    ; $5d3c: $5e
    ld d, d                                       ; $5d3d: $52
    cp [hl]                                       ; $5d3e: $be
    cpl                                           ; $5d3f: $2f
    inc l                                         ; $5d40: $2c
    cp l                                          ; $5d41: $bd
    adc a                                         ; $5d42: $8f
    xor [hl]                                      ; $5d43: $ae
    sub b                                         ; $5d44: $90
    or [hl]                                       ; $5d45: $b6
    sbc l                                         ; $5d46: $9d
    ld a, c                                       ; $5d47: $79
    ret nz                                        ; $5d48: $c0

    ld h, d                                       ; $5d49: $62
    and h                                         ; $5d4a: $a4
    ldh [$a1], a                                  ; $5d4b: $e0 $a1
    ld [$d08c], a                                 ; $5d4d: $ea $8c $d0
    ldh a, [$8f]                                  ; $5d50: $f0 $8f
    and d                                         ; $5d52: $a2
    and $e7                                       ; $5d53: $e6 $e7
    ld b, l                                       ; $5d55: $45
    ret nz                                        ; $5d56: $c0

    dec b                                         ; $5d57: $05
    ret nz                                        ; $5d58: $c0

    dec [hl]                                      ; $5d59: $35
    and b                                         ; $5d5a: $a0
    ld [c], a                                     ; $5d5b: $e2
    rst $38                                       ; $5d5c: $ff
    db $e3                                        ; $5d5d: $e3
    sbc a                                         ; $5d5e: $9f
    sbc h                                         ; $5d5f: $9c
    ld d, e                                       ; $5d60: $53
    ld d, e                                       ; $5d61: $53
    cp l                                          ; $5d62: $bd
    jr z, jr_068_5d8d                             ; $5d63: $28 $28

    cp a                                          ; $5d65: $bf
    cp l                                          ; $5d66: $bd
    xor a                                         ; $5d67: $af
    sub c                                         ; $5d68: $91
    jp $c390                                      ; $5d69: $c3 $90 $c3


    cp d                                          ; $5d6c: $ba
    pop bc                                        ; $5d6d: $c1
    and b                                         ; $5d6e: $a0
    ld h, c                                       ; $5d6f: $61
    sbc a                                         ; $5d70: $9f
    cp b                                          ; $5d71: $b8
    ldh [$f0], a                                  ; $5d72: $e0 $f0
    and d                                         ; $5d74: $a2
    ret nc                                        ; $5d75: $d0

    ldh a, [rNR14]                                ; $5d76: $f0 $14
    and d                                         ; $5d78: $a2
    add sp, -$17                                  ; $5d79: $e8 $e9
    ld b, l                                       ; $5d7b: $45
    ret nz                                        ; $5d7c: $c0

    db $fc                                        ; $5d7d: $fc
    or a                                          ; $5d7e: $b7
    and c                                         ; $5d7f: $a1
    push af                                       ; $5d80: $f5
    add c                                         ; $5d81: $81
    db $eb                                        ; $5d82: $eb
    sbc a                                         ; $5d83: $9f
    sbc h                                         ; $5d84: $9c
    ld b, [hl]                                    ; $5d85: $46
    add hl, sp                                    ; $5d86: $39
    dec [hl]                                      ; $5d87: $35
    rst $38                                       ; $5d88: $ff
    dec [hl]                                      ; $5d89: $35
    ld a, [hl-]                                   ; $5d8a: $3a
    ld b, l                                       ; $5d8b: $45
    xor [hl]                                      ; $5d8c: $ae

jr_068_5d8d:
    call nz, $c490                                ; $5d8d: $c4 $90 $c4
    sub b                                         ; $5d90: $90
    ccf                                           ; $5d91: $3f
    or [hl]                                       ; $5d92: $b6
    and d                                         ; $5d93: $a2
    sbc l                                         ; $5d94: $9d
    sbc l                                         ; $5d95: $9d
    or [hl]                                       ; $5d96: $b6
    jp $c2b3                                      ; $5d97: $c3 $b3 $c2


    db $e4                                        ; $5d9a: $e4
    add a                                         ; $5d9b: $87
    add b                                         ; $5d9c: $80
    ret nc                                        ; $5d9d: $d0

    add sp, $14                                   ; $5d9e: $e8 $14
    and c                                         ; $5da0: $a1
    ld b, l                                       ; $5da1: $45
    jp $a00a                                      ; $5da2: $c3 $0a $a0


    ld a, c                                       ; $5da5: $79
    pop bc                                        ; $5da6: $c1
    ld hl, sp-$60                                 ; $5da7: $f8 $a0
    nop                                           ; $5da9: $00
    ret nz                                        ; $5daa: $c0

    scf                                           ; $5dab: $37
    cp a                                          ; $5dac: $bf
    jr c, jr_068_5de4                             ; $5dad: $38 $35

    ld b, b                                       ; $5daf: $40
    xor a                                         ; $5db0: $af
    sub c                                         ; $5db1: $91
    sub b                                         ; $5db2: $90
    rst $38                                       ; $5db3: $ff
    db $e3                                        ; $5db4: $e3
    jp $c441                                      ; $5db5: $c3 $41 $c4


    cp a                                          ; $5db8: $bf
    db $e3                                        ; $5db9: $e3
    call c, $d081                                 ; $5dba: $dc $81 $d0
    db $ed                                        ; $5dbd: $ed
    inc d                                         ; $5dbe: $14
    and c                                         ; $5dbf: $a1
    jr z, @-$1d                                   ; $5dc0: $28 $e1

    call c, $c077                                 ; $5dc2: $dc $77 $c0
    db $fc                                        ; $5dc5: $fc
    push bc                                       ; $5dc6: $c5
    and b                                         ; $5dc7: $a0
    ld [hl], h                                    ; $5dc8: $74
    add d                                         ; $5dc9: $82
    ld [$aea1], a                                 ; $5dca: $ea $a1 $ae
    ld b, [hl]                                    ; $5dcd: $46
    ld b, h                                       ; $5dce: $44
    ld c, b                                       ; $5dcf: $48
    ld a, a                                       ; $5dd0: $7f
    ld c, [hl]                                    ; $5dd1: $4e
    ld c, b                                       ; $5dd2: $48
    ld b, l                                       ; $5dd3: $45
    xor [hl]                                      ; $5dd4: $ae
    sub c                                         ; $5dd5: $91
    sub b                                         ; $5dd6: $90
    jp $e0bc                                      ; $5dd7: $c3 $bc $e0


    ld b, $78                                     ; $5dda: $06 $78
    pop hl                                        ; $5ddc: $e1
    sub b                                         ; $5ddd: $90
    and c                                         ; $5dde: $a1
    call c, $d083                                 ; $5ddf: $dc $83 $d0
    db $ed                                        ; $5de2: $ed
    dec c                                         ; $5de3: $0d

jr_068_5de4:
    jp $c703                                      ; $5de4: $c3 $03 $c7


    ld a, $c3                                     ; $5de7: $3e $c3
    rst $38                                       ; $5de9: $ff
    xor a                                         ; $5dea: $af
    xor [hl]                                      ; $5deb: $ae
    ld c, d                                       ; $5dec: $4a
    ld h, b                                       ; $5ded: $60
    ld h, c                                       ; $5dee: $61
    ld d, d                                       ; $5def: $52
    ld b, l                                       ; $5df0: $45
    xor a                                         ; $5df1: $af
    ld a, e                                       ; $5df2: $7b
    ld b, [hl]                                    ; $5df3: $46
    xor [hl]                                      ; $5df4: $ae
    add l                                         ; $5df5: $85
    ldh [$90], a                                  ; $5df6: $e0 $90
    sub c                                         ; $5df8: $91
    ld b, [hl]                                    ; $5df9: $46
    ld b, [hl]                                    ; $5dfa: $46
    ld [hl-], a                                   ; $5dfb: $32
    jp nz, $dcf8                                  ; $5dfc: $c2 $f8 $dc

    add c                                         ; $5dff: $81
    ret nc                                        ; $5e00: $d0

    ld a, [c]                                     ; $5e01: $f2
    inc d                                         ; $5e02: $14
    adc l                                         ; $5e03: $8d
    sbc a                                         ; $5e04: $9f
    sbc h                                         ; $5e05: $9c
    xor a                                         ; $5e06: $af
    ld c, d                                       ; $5e07: $4a
    ld d, d                                       ; $5e08: $52
    rst $38                                       ; $5e09: $ff
    scf                                           ; $5e0a: $37
    dec a                                         ; $5e0b: $3d
    dec a                                         ; $5e0c: $3d
    dec a                                         ; $5e0d: $3d
    scf                                           ; $5e0e: $37
    xor a                                         ; $5e0f: $af
    sub c                                         ; $5e10: $91
    call nz, $90ff                                ; $5e11: $c4 $ff $90
    sub c                                         ; $5e14: $91
    ld b, l                                       ; $5e15: $45
    ld c, b                                       ; $5e16: $48
    ld c, b                                       ; $5e17: $48
    ld b, l                                       ; $5e18: $45
    sub c                                         ; $5e19: $91
    jp Jump_000_3200                              ; $5e1a: $c3 $00 $32


    jp nz, $6df4                                  ; $5e1d: $c2 $f4 $6d

    jp nz, Jump_000_0462                          ; $5e20: $c2 $62 $04

    add c                                         ; $5e23: $81
    or a                                          ; $5e24: $b7
    ld h, b                                       ; $5e25: $60
    push af                                       ; $5e26: $f5
    ld h, b                                       ; $5e27: $60
    inc a                                         ; $5e28: $3c
    jp $a1fc                                      ; $5e29: $c3 $fc $a1


    rst $38                                       ; $5e2c: $ff
    ld b, l                                       ; $5e2d: $45
    ld b, b                                       ; $5e2e: $40
    dec [hl]                                      ; $5e2f: $35
    dec [hl]                                      ; $5e30: $35
    dec [hl]                                      ; $5e31: $35
    xor h                                         ; $5e32: $ac
    xor h                                         ; $5e33: $ac
    jr c, @+$01                                   ; $5e34: $38 $ff

    scf                                           ; $5e36: $37
    ccf                                           ; $5e37: $3f
    ld b, e                                       ; $5e38: $43
    ccf                                           ; $5e39: $3f
    ld d, c                                       ; $5e3a: $51
    ld e, [hl]                                    ; $5e3b: $5e
    ld e, b                                       ; $5e3c: $58
    ld b, h                                       ; $5e3d: $44
    add a                                         ; $5e3e: $87
    xor [hl]                                      ; $5e3f: $ae
    call nz, $dc9e                                ; $5e40: $c4 $9e $dc
    xor b                                         ; $5e43: $a8
    ret nc                                        ; $5e44: $d0

    and $96                                       ; $5e45: $e6 $96
    ld h, d                                       ; $5e47: $62
    inc b                                         ; $5e48: $04
    add c                                         ; $5e49: $81
    db $d3                                        ; $5e4a: $d3
    push af                                       ; $5e4b: $f5
    sub $36                                       ; $5e4c: $d6 $36
    add c                                         ; $5e4e: $81
    sub $f0                                       ; $5e4f: $d6 $f0
    push hl                                       ; $5e51: $e5
    sbc a                                         ; $5e52: $9f
    sbc l                                         ; $5e53: $9d
    sbc h                                         ; $5e54: $9c
    ld [hl], $ff                                  ; $5e55: $36 $ff
    dec [hl]                                      ; $5e57: $35
    xor h                                         ; $5e58: $ac
    xor l                                         ; $5e59: $ad
    xor l                                         ; $5e5a: $ad
    dec [hl]                                      ; $5e5b: $35
    dec [hl]                                      ; $5e5c: $35
    ld h, d                                       ; $5e5d: $62
    ld h, e                                       ; $5e5e: $63
    dec sp                                        ; $5e5f: $3b
    ld h, [hl]                                    ; $5e60: $66
    ld [hl], $30                                  ; $5e61: $36 $30
    and b                                         ; $5e63: $a0
    xor a                                         ; $5e64: $af
    sub b                                         ; $5e65: $90
    sbc [hl]                                      ; $5e66: $9e
    call c, $d0a8                                 ; $5e67: $dc $a8 $d0
    db $eb                                        ; $5e6a: $eb
    jp nz, $8004                                  ; $5e6b: $c2 $04 $80

    ret c                                         ; $5e6e: $d8

    ei                                            ; $5e6f: $fb
    ld h, b                                       ; $5e70: $60
    ld b, e                                       ; $5e71: $43
    add c                                         ; $5e72: $81
    ldh a, [$e5]                                  ; $5e73: $f0 $e5
    inc a                                         ; $5e75: $3c
    pop hl                                        ; $5e76: $e1
    ld [hl], $ad                                  ; $5e77: $36 $ad
    ld a, a                                       ; $5e79: $7f
    ld [hl], $43                                  ; $5e7a: $36 $43
    ld a, [hl-]                                   ; $5e7c: $3a
    ld h, d                                       ; $5e7d: $62
    ld h, a                                       ; $5e7e: $67
    dec [hl]                                      ; $5e7f: $35
    ld l, b                                       ; $5e80: $68
    cp a                                          ; $5e81: $bf
    pop hl                                        ; $5e82: $e1
    rlca                                          ; $5e83: $07
    ld e, h                                       ; $5e84: $5c
    or [hl]                                       ; $5e85: $b6
    sbc a                                         ; $5e86: $9f
    call c, $d0a8                                 ; $5e87: $dc $a8 $d0
    and $0d                                       ; $5e8a: $e6 $0d
    pop bc                                        ; $5e8c: $c1
    rla                                           ; $5e8d: $17
    add b                                         ; $5e8e: $80
    or $61                                        ; $5e8f: $f6 $61
    ld a, [c]                                     ; $5e91: $f2
    ld b, e                                       ; $5e92: $43
    add c                                         ; $5e93: $81
    db $dd                                        ; $5e94: $dd
    ldh a, [$e5]                                  ; $5e95: $f0 $e5
    ei                                            ; $5e97: $fb
    jp nz, Jump_068_48ae                          ; $5e98: $c2 $ae $48

    ld c, b                                       ; $5e9b: $48
    ld a, $39                                     ; $5e9c: $3e $39
    ld l, c                                       ; $5e9e: $69
    add hl, sp                                    ; $5e9f: $39
    ldh [$bf], a                                  ; $5ea0: $e0 $bf
    ldh [$5b], a                                  ; $5ea2: $e0 $5b
    sbc h                                         ; $5ea4: $9c
    sbc a                                         ; $5ea5: $9f
    ld hl, $dc81                                  ; $5ea6: $21 $81 $dc
    and d                                         ; $5ea9: $a2
    and [hl]                                      ; $5eaa: $a6
    ret nc                                        ; $5eab: $d0

    jp hl                                         ; $5eac: $e9


    db $d3                                        ; $5ead: $d3
    jp c, $8227                                   ; $5eae: $da $27 $82

    call $d140                                    ; $5eb1: $cd $40 $d1
    rst $30                                       ; $5eb4: $f7
    ld h, b                                       ; $5eb5: $60
    ret nc                                        ; $5eb6: $d0

    ld sp, hl                                     ; $5eb7: $f9
    ret nc                                        ; $5eb8: $d0

    ldh a, [$e5]                                  ; $5eb9: $f0 $e5
    ldh a, [rSTAT]                                ; $5ebb: $f0 $41
    and c                                         ; $5ebd: $a1
    xor a                                         ; $5ebe: $af
    ld c, l                                       ; $5ebf: $4d
    ld d, d                                       ; $5ec0: $52
    ld a, [hl-]                                   ; $5ec1: $3a
    cpl                                           ; $5ec2: $2f
    ld l, e                                       ; $5ec3: $6b
    ld l, h                                       ; $5ec4: $6c
    dec [hl]                                      ; $5ec5: $35
    xor h                                         ; $5ec6: $ac
    ld a, [hl]                                    ; $5ec7: $7e
    ldh [rLY], a                                  ; $5ec8: $e0 $44
    db $f4                                        ; $5eca: $f4
    add b                                         ; $5ecb: $80
    call c, Call_000_22a4                         ; $5ecc: $dc $a4 $22
    ret nc                                        ; $5ecf: $d0

    ld [$86d7], a                                 ; $5ed0: $ea $d7 $86
    add h                                         ; $5ed3: $84
    jr c, jr_068_5f37                             ; $5ed4: $38 $61

    or $40                                        ; $5ed6: $f6 $40
    call nc, $e5f0                                ; $5ed8: $d4 $f0 $e5
    ldh a, [rSTAT]                                ; $5edb: $f0 $41
    rst $38                                       ; $5edd: $ff
    sbc [hl]                                      ; $5ede: $9e
    ld d, c                                       ; $5edf: $51
    ld d, d                                       ; $5ee0: $52
    ld [hl], $ac                                  ; $5ee1: $36 $ac
    ld l, [hl]                                    ; $5ee3: $6e
    ld l, a                                       ; $5ee4: $6f
    ld l, h                                       ; $5ee5: $6c
    ccf                                           ; $5ee6: $3f
    xor l                                         ; $5ee7: $ad
    dec [hl]                                      ; $5ee8: $35
    ld l, h                                       ; $5ee9: $6c
    ld l, l                                       ; $5eea: $6d
    ld b, b                                       ; $5eeb: $40
    sbc [hl]                                      ; $5eec: $9e
    db $db                                        ; $5eed: $db
    add b                                         ; $5eee: $80
    call c, $e0a8                                 ; $5eef: $dc $a8 $e0
    ret nc                                        ; $5ef2: $d0

    push hl                                       ; $5ef3: $e5
    daa                                           ; $5ef4: $27
    add a                                         ; $5ef5: $87
    ld hl, sp+$62                                 ; $5ef6: $f8 $62
    rla                                           ; $5ef8: $17
    add [hl]                                      ; $5ef9: $86
    ldh a, [rSTAT]                                ; $5efa: $f0 $41
    sbc [hl]                                      ; $5efc: $9e
    ld b, l                                       ; $5efd: $45

jr_068_5efe:
    add hl, sp                                    ; $5efe: $39
    rst $38                                       ; $5eff: $ff
    dec [hl]                                      ; $5f00: $35
    xor l                                         ; $5f01: $ad
    dec [hl]                                      ; $5f02: $35
    ld l, [hl]                                    ; $5f03: $6e
    ld [hl], b                                    ; $5f04: $70
    ld [hl], c                                    ; $5f05: $71
    ld [hl], c                                    ; $5f06: $71
    ld [hl], b                                    ; $5f07: $70
    rlca                                          ; $5f08: $07
    ld l, [hl]                                    ; $5f09: $6e
    ld b, h                                       ; $5f0a: $44
    and c                                         ; $5f0b: $a1
    db $db                                        ; $5f0c: $db
    add b                                         ; $5f0d: $80
    jp nc, $d0a8                                  ; $5f0e: $d2 $a8 $d0

    push hl                                       ; $5f11: $e5
    daa                                           ; $5f12: $27
    add a                                         ; $5f13: $87
    ld hl, sp+$62                                 ; $5f14: $f8 $62
    ld a, [hl]                                    ; $5f16: $7e
    rst $30                                       ; $5f17: $f7
    ld l, d                                       ; $5f18: $6a
    sbc a                                         ; $5f19: $9f
    sbc h                                         ; $5f1a: $9c
    ld a, $35                                     ; $5f1b: $3e $35
    dec [hl]                                      ; $5f1d: $35
    ld [hl], $78                                  ; $5f1e: $36 $78
    and b                                         ; $5f20: $a0
    rst $38                                       ; $5f21: $ff
    ld c, b                                       ; $5f22: $48
    ld c, b                                       ; $5f23: $48
    ld b, e                                       ; $5f24: $43
    ld b, [hl]                                    ; $5f25: $46
    sbc h                                         ; $5f26: $9c
    sbc a                                         ; $5f27: $9f
    add sp, -$17                                  ; $5f28: $e8 $e9
    ldh [$d7], a                                  ; $5f2a: $e0 $d7
    jr z, jr_068_5efe                             ; $5f2c: $28 $d0

    push hl                                       ; $5f2e: $e5
    inc c                                         ; $5f2f: $0c
    ld b, [hl]                                    ; $5f30: $46
    ld hl, sp+$65                                 ; $5f31: $f8 $65
    dec h                                         ; $5f33: $25
    adc c                                         ; $5f34: $89
    sbc [hl]                                      ; $5f35: $9e
    add hl, sp                                    ; $5f36: $39

jr_068_5f37:
    dec sp                                        ; $5f37: $3b
    rst $38                                       ; $5f38: $ff
    ld [hl], $43                                  ; $5f39: $36 $43
    ld d, e                                       ; $5f3b: $53
    ld d, h                                       ; $5f3c: $54
    ld d, d                                       ; $5f3d: $52
    ld d, d                                       ; $5f3e: $52
    ld h, b                                       ; $5f3f: $60
    ld c, c                                       ; $5f40: $49
    ld h, e                                       ; $5f41: $63
    ld c, b                                       ; $5f42: $48
    ld b, l                                       ; $5f43: $45
    pop bc                                        ; $5f44: $c1
    and a                                         ; $5f45: $a7
    ret nc                                        ; $5f46: $d0

    db $eb                                        ; $5f47: $eb
    inc c                                         ; $5f48: $0c
    ld b, e                                       ; $5f49: $43
    db $e4                                        ; $5f4a: $e4
    push hl                                       ; $5f4b: $e5
    adc [hl]                                      ; $5f4c: $8e
    daa                                           ; $5f4d: $27
    cp [hl]                                       ; $5f4e: $be
    ldh a, [$e6]                                  ; $5f4f: $f0 $e6
    sbc a                                         ; $5f51: $9f
    sbc h                                         ; $5f52: $9c
    ld b, e                                       ; $5f53: $43
    xor [hl]                                      ; $5f54: $ae
    ld b, l                                       ; $5f55: $45
    ld a, c                                       ; $5f56: $79
    and b                                         ; $5f57: $a0
    scf                                           ; $5f58: $37
    nop                                           ; $5f59: $00
    jr nc, jr_068_5fbc                            ; $5f5a: $30 $60

    ret nz                                        ; $5f5c: $c0

    and $d0                                       ; $5f5d: $e6 $d0
    db $ec                                        ; $5f5f: $ec
    inc c                                         ; $5f60: $0c
    ld b, h                                       ; $5f61: $44
    inc hl                                        ; $5f62: $23
    pop hl                                        ; $5f63: $e1
    add h                                         ; $5f64: $84
    ld [hl+], a                                   ; $5f65: $22
    ldh a, [$e8]                                  ; $5f66: $f0 $e8
    or $40                                        ; $5f68: $f6 $40
    ld [hl], a                                    ; $5f6a: $77
    xor [hl]                                      ; $5f6b: $ae
    xor a                                         ; $5f6c: $af
    ld [hl], $79                                  ; $5f6d: $36 $79
    and b                                         ; $5f6f: $a0
    dec [hl]                                      ; $5f70: $35
    add hl, sp                                    ; $5f71: $39
    ld e, e                                       ; $5f72: $5b
    ld [hl], b                                    ; $5f73: $70
    ld b, b                                       ; $5f74: $40
    add b                                         ; $5f75: $80
    ldh [$ee], a                                  ; $5f76: $e0 $ee
    ld d, h                                       ; $5f78: $54
    inc hl                                        ; $5f79: $23
    inc c                                         ; $5f7a: $0c
    ld b, e                                       ; $5f7b: $43
    inc hl                                        ; $5f7c: $23
    pop hl                                        ; $5f7d: $e1
    add hl, bc                                    ; $5f7e: $09
    ld [hl+], a                                   ; $5f7f: $22
    ldh a, [$e8]                                  ; $5f80: $f0 $e8
    cp b                                          ; $5f82: $b8
    add c                                         ; $5f83: $81
    ld [hl], $1d                                  ; $5f84: $36 $1d
    xor h                                         ; $5f86: $ac
    ret nz                                        ; $5f87: $c0

    pop hl                                        ; $5f88: $e1
    ld a, $ae                                     ; $5f89: $3e $ae
    ld b, [hl]                                    ; $5f8b: $46
    inc [hl]                                      ; $5f8c: $34
    ld h, b                                       ; $5f8d: $60
    ldh [$ed], a                                  ; $5f8e: $e0 $ed
    reti                                          ; $5f90: $d9


    ld [bc], a                                    ; $5f91: $02
    ld h, b                                       ; $5f92: $60
    inc c                                         ; $5f93: $0c
    ld b, l                                       ; $5f94: $45
    inc a                                         ; $5f95: $3c
    jp nz, Jump_068_4039                          ; $5f96: $c2 $39 $40

    ldh a, [$e8]                                  ; $5f99: $f0 $e8
    ld hl, sp+$20                                 ; $5f9b: $f8 $20
    add hl, sp                                    ; $5f9d: $39
    xor h                                         ; $5f9e: $ac
    ld a, $a0                                     ; $5f9f: $3e $a0
    rrca                                          ; $5fa1: $0f
    dec [hl]                                      ; $5fa2: $35
    xor h                                         ; $5fa3: $ac
    ld a, $af                                     ; $5fa4: $3e $af
    pop bc                                        ; $5fa6: $c1
    and b                                         ; $5fa7: $a0
    ldh [$ee], a                                  ; $5fa8: $e0 $ee
    push bc                                       ; $5faa: $c5
    ld h, d                                       ; $5fab: $62
    inc c                                         ; $5fac: $0c
    ld b, h                                       ; $5fad: $44
    ld a, b                                       ; $5fae: $78
    inc hl                                        ; $5faf: $23
    ld h, c                                       ; $5fb0: $61
    add hl, bc                                    ; $5fb1: $09
    ld hl, $e9f0                                  ; $5fb2: $21 $f0 $e9
    and b                                         ; $5fb5: $a0
    and c                                         ; $5fb6: $a1
    xor [hl]                                      ; $5fb7: $ae
    ld a, $c1                                     ; $5fb8: $3e $c1
    pop hl                                        ; $5fba: $e1
    rlca                                          ; $5fbb: $07

jr_068_5fbc:
    dec [hl]                                      ; $5fbc: $35
    xor l                                         ; $5fbd: $ad
    add hl, sp                                    ; $5fbe: $39
    add d                                         ; $5fbf: $82
    and b                                         ; $5fc0: $a0
    ldh [$ef], a                                  ; $5fc1: $e0 $ef
    ret nc                                        ; $5fc3: $d0

    ld [c], a                                     ; $5fc4: $e2
    rst $38                                       ; $5fc5: $ff
    ld l, [hl]                                    ; $5fc6: $6e
    ld sp, hl                                     ; $5fc7: $f9
    ld l, d                                       ; $5fc8: $6a
    dec e                                         ; $5fc9: $1d
    ld a, $41                                     ; $5fca: $3e $41
    pop hl                                        ; $5fcc: $e1
    jr c, jr_068_6006                             ; $5fcd: $38 $37

    xor [hl]                                      ; $5fcf: $ae
    halt                                          ; $5fd0: $76
    ld b, h                                       ; $5fd1: $44
    ldh [$eb], a                                  ; $5fd2: $e0 $eb
    reti                                          ; $5fd4: $d9


    ld bc, $30dc                                  ; $5fd5: $01 $dc $30
    dec c                                         ; $5fd8: $0d
    ld hl, sp+$29                                 ; $5fd9: $f8 $29
    sbc a                                         ; $5fdb: $9f
    or [hl]                                       ; $5fdc: $b6
    ld b, [hl]                                    ; $5fdd: $46
    add b                                         ; $5fde: $80
    pop hl                                        ; $5fdf: $e1
    ld a, [hl-]                                   ; $5fe0: $3a
    xor [hl]                                      ; $5fe1: $ae
    inc bc                                        ; $5fe2: $03
    ld b, [hl]                                    ; $5fe3: $46
    xor a                                         ; $5fe4: $af
    add e                                         ; $5fe5: $83
    ld h, b                                       ; $5fe6: $60
    call c, $ce6d                                 ; $5fe7: $dc $6d $ce
    inc hl                                        ; $5fea: $23
    jr nc, @+$0d                                  ; $5feb: $30 $0b

    add hl, hl                                    ; $5fed: $29
    ld c, b                                       ; $5fee: $48
    adc h                                         ; $5fef: $8c
    ld b, b                                       ; $5ff0: $40
    cpl                                           ; $5ff1: $2f
    or [hl]                                       ; $5ff2: $b6
    sub b                                         ; $5ff3: $90
    xor [hl]                                      ; $5ff4: $ae
    ld a, [hl-]                                   ; $5ff5: $3a
    jp $afc1                                      ; $5ff6: $c3 $c1 $af


    pop bc                                        ; $5ff9: $c1
    ld b, c                                       ; $5ffa: $41
    nop                                           ; $5ffb: $00
    ld b, d                                       ; $5ffc: $42
    inc c                                         ; $5ffd: $0c
    ld b, h                                       ; $5ffe: $44
    ret nz                                        ; $5fff: $c0

    ret nc                                        ; $6000: $d0

    ld [$d5d8], a                                 ; $6001: $ea $d8 $d5

jr_068_6004:
    jr nc, jr_068_6011                            ; $6004: $30 $0b

jr_068_6006:
    inc h                                         ; $6006: $24
    jp $e4c3                                      ; $6007: $c3 $c3 $e4


    jp $fb40                                      ; $600a: $c3 $40 $fb


    xor a                                         ; $600d: $af
    inc a                                         ; $600e: $3c
    add e                                         ; $600f: $83
    pop bc                                        ; $6010: $c1

jr_068_6011:
    ld b, [hl]                                    ; $6011: $46
    call nz, $c390                                ; $6012: $c4 $90 $c3
    sbc [hl]                                      ; $6015: $9e
    ld b, $e0                                     ; $6016: $06 $e0
    ld [c], a                                     ; $6018: $e2
    db $d3                                        ; $6019: $d3
    ret nc                                        ; $601a: $d0

    ret nc                                        ; $601b: $d0

    db $eb                                        ; $601c: $eb
    jr nc, jr_068_602b                            ; $601d: $30 $0c

    db $f4                                        ; $601f: $f4
    and h                                         ; $6020: $a4
    ld b, a                                       ; $6021: $47
    ldh [$ca], a                                  ; $6022: $e0 $ca
    ld b, b                                       ; $6024: $40
    ld l, h                                       ; $6025: $6c
    rst $00                                       ; $6026: $c7
    ld b, c                                       ; $6027: $41
    ld a, h                                       ; $6028: $7c
    ld h, c                                       ; $6029: $61
    dec [hl]                                      ; $602a: $35

jr_068_602b:
    add hl, sp                                    ; $602b: $39
    ld a, c                                       ; $602c: $79
    ld b, b                                       ; $602d: $40
    call nz, Call_000_009e                        ; $602e: $c4 $9e $00
    ld b, d                                       ; $6031: $42
    jr nc, jr_068_6004                            ; $6032: $30 $d0

    db $ec                                        ; $6034: $ec
    ld a, [hl-]                                   ; $6035: $3a
    add c                                         ; $6036: $81
    jr nc, jr_068_6042                            ; $6037: $30 $09

    db $f4                                        ; $6039: $f4
    and h                                         ; $603a: $a4
    and b                                         ; $603b: $a0
    and c                                         ; $603c: $a1
    sub b                                         ; $603d: $90
    ld b, c                                       ; $603e: $41
    rst $00                                       ; $603f: $c7
    ld b, c                                       ; $6040: $41
    adc l                                         ; $6041: $8d

jr_068_6042:
    ld b, h                                       ; $6042: $44
    add b                                         ; $6043: $80
    ldh [$3a], a                                  ; $6044: $e0 $3a
    ld b, l                                       ; $6046: $45
    ld a, [hl-]                                   ; $6047: $3a
    ld b, c                                       ; $6048: $41
    dec [hl]                                      ; $6049: $35
    jr nz, @+$0b                                  ; $604a: $20 $09

    add b                                         ; $604c: $80
    rst $10                                       ; $604d: $d7
    ld hl, $d0d2                                  ; $604e: $21 $d2 $d0
    ld [$a1f3], a                                 ; $6051: $ea $f3 $a1
    jr nc, jr_068_605f                            ; $6054: $30 $09

    db $f4                                        ; $6056: $f4
    and l                                         ; $6057: $a5
    sbc [hl]                                      ; $6058: $9e
    inc c                                         ; $6059: $0c
    ld b, c                                       ; $605a: $41
    ld c, h                                       ; $605b: $4c
    ld b, c                                       ; $605c: $41
    push bc                                       ; $605d: $c5
    ld b, d                                       ; $605e: $42

jr_068_605f:
    add h                                         ; $605f: $84
    and c                                         ; $6060: $a1
    ld b, [hl]                                    ; $6061: $46
    ld a, [$3320]                                 ; $6062: $fa $20 $33
    nop                                           ; $6065: $00
    add hl, bc                                    ; $6066: $09
    add c                                         ; $6067: $81
    jp c, $30d3                                   ; $6068: $da $d3 $30

    ret nc                                        ; $606b: $d0

    ld [$e0f0], a                                 ; $606c: $ea $f0 $e0
    jr nc, jr_068_607b                            ; $606f: $30 $0a

    db $f4                                        ; $6071: $f4
    and l                                         ; $6072: $a5
    sbc a                                         ; $6073: $9f
    or [hl]                                       ; $6074: $b6
    call $c420                                    ; $6075: $cd $20 $c4
    jr nz, @+$17                                  ; $6078: $20 $15

    sub c                                         ; $607a: $91

jr_068_607b:
    ld a, c                                       ; $607b: $79
    ld [hl+], a                                   ; $607c: $22
    sub c                                         ; $607d: $91
    ld sp, hl                                     ; $607e: $f9
    rlca                                          ; $607f: $07
    call c, Call_000_0043                         ; $6080: $dc $43 $00
    ret nc                                        ; $6083: $d0

    add sp, -$10                                  ; $6084: $e8 $f0
    ldh [$74], a                                  ; $6086: $e0 $74
    jr nc, jr_068_6095                            ; $6088: $30 $0b

    di                                            ; $608a: $f3
    dec h                                         ; $608b: $25
    sbc [hl]                                      ; $608c: $9e
    rst $08                                       ; $608d: $cf
    ld hl, $90c3                                  ; $608e: $21 $c3 $90
    ld b, l                                       ; $6091: $45
    add c                                         ; $6092: $81
    ret nz                                        ; $6093: $c0

    inc hl                                        ; $6094: $23

jr_068_6095:
    ld a, $46                                     ; $6095: $3e $46
    ld b, l                                       ; $6097: $45
    ld h, $09                                     ; $6098: $26 $09
    add d                                         ; $609a: $82
    ret nc                                        ; $609b: $d0

    ld [$0ea0], a                                 ; $609c: $ea $a0 $0e
    add b                                         ; $609f: $80
    jr nc, jr_068_60ac                            ; $60a0: $30 $0a

    jr jr_068_60aa                                ; $60a2: $18 $06

    add $8a                                       ; $60a4: $c6 $8a
    ld [hl+], a                                   ; $60a6: $22
    ld bc, $39e1                                  ; $60a7: $01 $e1 $39

jr_068_60aa:
    ld b, [hl]                                    ; $60aa: $46
    inc b                                         ; $60ab: $04

jr_068_60ac:
    add $33                                       ; $60ac: $c6 $33
    inc bc                                        ; $60ae: $03
    ret nc                                        ; $60af: $d0

    ld [$7f00], a                                 ; $60b0: $ea $00 $7f
    ld [hl+], a                                   ; $60b3: $22
    jr nc, jr_068_60c5                            ; $60b4: $30 $0f

    ld [bc], a                                    ; $60b6: $02
    jp $e441                                      ; $60b7: $c3 $41 $e4


    ld b, a                                       ; $60ba: $47
    add e                                         ; $60bb: $83
    ldh [$e6], a                                  ; $60bc: $e0 $e6
    ret nc                                        ; $60be: $d0

    pop af                                        ; $60bf: $f1
    jr nc, jr_068_60ca                            ; $60c0: $30 $08

    inc [hl]                                      ; $60c2: $34
    ldh a, [$e4]                                  ; $60c3: $f0 $e4

jr_068_60c5:
    inc a                                         ; $60c5: $3c
    pop hl                                        ; $60c6: $e1
    ld b, [hl]                                    ; $60c7: $46
    add c                                         ; $60c8: $81
    ld h, b                                       ; $60c9: $60

jr_068_60ca:
    ld a, $46                                     ; $60ca: $3e $46
    add l                                         ; $60cc: $85
    ld bc, $efe0                                  ; $60cd: $01 $e0 $ef
    ld b, b                                       ; $60d0: $40
    ret nc                                        ; $60d1: $d0

    and $30                                       ; $60d2: $e6 $30
    dec c                                         ; $60d4: $0d
    ldh a, [$e4]                                  ; $60d5: $f0 $e4
    ret nz                                        ; $60d7: $c0

    ld [c], a                                     ; $60d8: $e2
    ld a, [hl-]                                   ; $60d9: $3a
    nop                                           ; $60da: $00
    add d                                         ; $60db: $82
    pop bc                                        ; $60dc: $c1
    sbc [hl]                                      ; $60dd: $9e
    ldh [$f0], a                                  ; $60de: $e0 $f0
    ldh a, [$f4]                                  ; $60e0: $f0 $f4
    ld h, $30                                     ; $60e2: $26 $30
    dec c                                         ; $60e4: $0d
    ldh a, [$e4]                                  ; $60e5: $f0 $e4
    ld a, h                                       ; $60e7: $7c
    pop bc                                        ; $60e8: $c1
    sub c                                         ; $60e9: $91
    ld b, l                                       ; $60ea: $45
    scf                                           ; $60eb: $37
    scf                                           ; $60ec: $37
    dec b                                         ; $60ed: $05
    ld b, l                                       ; $60ee: $45
    jp $b6a0                                      ; $60ef: $c3 $a0 $b6


    dec b                                         ; $60f2: $05
    ld h, b                                       ; $60f3: $60
    ldh [$ed], a                                  ; $60f4: $e0 $ed
    ret nc                                        ; $60f6: $d0

    and $30                                       ; $60f7: $e6 $30
    dec c                                         ; $60f9: $0d
    ldh a, [$e4]                                  ; $60fa: $f0 $e4
    nop                                           ; $60fc: $00
    cp h                                          ; $60fd: $bc
    and b                                         ; $60fe: $a0
    adc b                                         ; $60ff: $88
    inc b                                         ; $6100: $04
    jp $e0a3                                      ; $6101: $c3 $a3 $e0


    db $ed                                        ; $6104: $ed
    ret nc                                        ; $6105: $d0

    and $30                                       ; $6106: $e6 $30
    dec c                                         ; $6108: $0d
    ldh a, [$e4]                                  ; $6109: $f0 $e4
    ld a, [hl]                                    ; $610b: $7e
    jp nz, $fd00                                  ; $610c: $c2 $00 $fd

    push hl                                       ; $610f: $e5
    ld a, $c1                                     ; $6110: $3e $c1
    ldh [$ec], a                                  ; $6112: $e0 $ec
    ret nc                                        ; $6114: $d0

    and $01                                       ; $6115: $e6 $01
    sub e                                         ; $6117: $93
    cp $82                                        ; $6118: $fe $82
    cp [hl]                                       ; $611a: $be
    push hl                                       ; $611b: $e5
    add c                                         ; $611c: $81
    add c                                         ; $611d: $81
    nop                                           ; $611e: $00
    ld bc, $3094                                  ; $611f: $01 $94 $30
    ld c, $00                                     ; $6122: $0e $00
    add $01                                       ; $6124: $c6 $01
    and c                                         ; $6126: $a1
    jp nz, $f6e4                                  ; $6127: $c2 $e4 $f6

    add b                                         ; $612a: $80

jr_068_612b:
    nop                                           ; $612b: $00

Jump_068_612c:
    add d                                         ; $612c: $82
    call nc, Call_000_006d                        ; $612d: $d4 $6d $00
    call nz, $1561                                ; $6130: $c4 $61 $15
    ld b, d                                       ; $6133: $42
    jr nc, jr_068_613e                            ; $6134: $30 $08

    dec b                                         ; $6136: $05
    ld b, d                                       ; $6137: $42
    ld b, b                                       ; $6138: $40
    and c                                         ; $6139: $a1
    cp l                                          ; $613a: $bd
    add c                                         ; $613b: $81
    dec a                                         ; $613c: $3d
    ld [c], a                                     ; $613d: $e2

jr_068_613e:
    cp b                                          ; $613e: $b8
    add b                                         ; $613f: $80
    add c                                         ; $6140: $81
    call nz, $80c1                                ; $6141: $c4 $c1 $80
    ldh [$e9], a                                  ; $6144: $e0 $e9
    ret nc                                        ; $6146: $d0

    add sp, $40                                   ; $6147: $e8 $40
    ld [bc], a                                    ; $6149: $02
    jr nc, jr_068_6159                            ; $614a: $30 $0d

    ret nz                                        ; $614c: $c0

    add b                                         ; $614d: $80
    call nz, $c308                                ; $614e: $c4 $08 $c3
    pop bc                                        ; $6151: $c1
    pop bc                                        ; $6152: $c1
    jp $8177                                      ; $6153: $c3 $77 $81


    sbc [hl]                                      ; $6156: $9e
    ldh [$ea], a                                  ; $6157: $e0 $ea

jr_068_6159:
    ret nc                                        ; $6159: $d0

    db $ed                                        ; $615a: $ed
    jr nc, jr_068_6165                            ; $615b: $30 $08

    ret nz                                        ; $615d: $c0

    db $e4                                        ; $615e: $e4
    db $10                                        ; $615f: $10
    inc b                                         ; $6160: $04
    and b                                         ; $6161: $a0
    ret z                                         ; $6162: $c8

    jr nz, jr_068_612b                            ; $6163: $20 $c6

jr_068_6165:
    jr nz, @+$45                                  ; $6165: $20 $43

    add c                                         ; $6167: $81
    call nz, $6081                                ; $6168: $c4 $81 $60
    ldh [$ea], a                                  ; $616b: $e0 $ea
    ret nc                                        ; $616d: $d0

    add sp, -$08                                  ; $616e: $e8 $f8
    dec a                                         ; $6170: $3d
    pop bc                                        ; $6171: $c1
    jr nc, jr_068_617d                            ; $6172: $30 $09

    ldh a, [$e2]                                  ; $6174: $f0 $e2
    sbc a                                         ; $6176: $9f
    or [hl]                                       ; $6177: $b6
    call nz, Call_000_3991                        ; $6178: $c4 $91 $39
    dec bc                                        ; $617b: $0b
    and h                                         ; $617c: $a4

jr_068_617d:
    ld h, h                                       ; $617d: $64
    rst $38                                       ; $617e: $ff
    ldh [$a5], a                                  ; $617f: $e0 $a5
    jp $c160                                      ; $6181: $c3 $60 $c1


    jp nz, $eae0                                  ; $6184: $c2 $e0 $ea

    ret nc                                        ; $6187: $d0

    add sp, -$3d                                  ; $6188: $e8 $c3
    db $d3                                        ; $618a: $d3
    jp c, $8227                                   ; $618b: $da $27 $82

    jr nc, jr_068_6196                            ; $618e: $30 $06

    ldh a, [$e3]                                  ; $6190: $f0 $e3
    ld b, h                                       ; $6192: $44
    and c                                         ; $6193: $a1
    ld l, c                                       ; $6194: $69
    and e                                         ; $6195: $a3

jr_068_6196:
    rrca                                          ; $6196: $0f
    dec [hl]                                      ; $6197: $35
    dec [hl]                                      ; $6198: $35
    and e                                         ; $6199: $a3
    ld l, d                                       ; $619a: $6a
    ld b, b                                       ; $619b: $40
    and b                                         ; $619c: $a0
    ld [bc], a                                    ; $619d: $02
    pop hl                                        ; $619e: $e1
    ldh [$ec], a                                  ; $619f: $e0 $ec
    ret nc                                        ; $61a1: $d0

    rst $20                                       ; $61a2: $e7
    ld bc, $8fd7                                  ; $61a3: $01 $d7 $8f
    inc b                                         ; $61a6: $04
    jr nc, jr_068_61ae                            ; $61a7: $30 $05

    ldh a, [$e3]                                  ; $61a9: $f0 $e3
    ret nz                                        ; $61ab: $c0

    ld [c], a                                     ; $61ac: $e2
    ld b, a                                       ; $61ad: $47

jr_068_61ae:
    ld hl, $e1c0                                  ; $61ae: $21 $c0 $e1
    ld bc, $a0c2                                  ; $61b1: $01 $c2 $a0
    ldh [$eb], a                                  ; $61b4: $e0 $eb
    ret nc                                        ; $61b6: $d0

    rst $20                                       ; $61b7: $e7
    scf                                           ; $61b8: $37
    add [hl]                                      ; $61b9: $86
    jr nc, jr_068_61c0                            ; $61ba: $30 $04

    rst $30                                       ; $61bc: $f7
    ld h, e                                       ; $61bd: $63
    and c                                         ; $61be: $a1
    push bc                                       ; $61bf: $c5

Call_068_61c0:
jr_068_61c0:
    ld h, b                                       ; $61c0: $60
    ld l, e                                       ; $61c1: $6b

Jump_068_61c2:
    dec b                                         ; $61c2: $05
    ld [hl], c                                    ; $61c3: $71
    rst $38                                       ; $61c4: $ff
    ldh [$6d], a                                  ; $61c5: $e0 $6d
    inc bc                                        ; $61c7: $03
    ld h, b                                       ; $61c8: $60
    nop                                           ; $61c9: $00
    add d                                         ; $61ca: $82
    ldh [$eb], a                                  ; $61cb: $e0 $eb
    ret nc                                        ; $61cd: $d0

    rst $20                                       ; $61ce: $e7
    db $f4                                        ; $61cf: $f4
    daa                                           ; $61d0: $27
    inc d                                         ; $61d1: $14
    jr nc, jr_068_61d7                            ; $61d2: $30 $03

    ld b, a                                       ; $61d4: $47
    inc h                                         ; $61d5: $24
    or [hl]                                       ; $61d6: $b6

jr_068_61d7:
    ret nz                                        ; $61d7: $c0

    pop bc                                        ; $61d8: $c1
    xor h                                         ; $61d9: $ac
    ret nz                                        ; $61da: $c0

    jp Jump_068_4204                              ; $61db: $c3 $04 $42


    ldh [$eb], a                                  ; $61de: $e0 $eb
    jr nc, @-$2e                                  ; $61e0: $30 $d0

    rst $20                                       ; $61e2: $e7
    jr nc, jr_068_61f4                            ; $61e3: $30 $0f

    xor b                                         ; $61e5: $a8
    ld [bc], a                                    ; $61e6: $02
    ld a, $61                                     ; $61e7: $3e $61
    ld b, [hl]                                    ; $61e9: $46
    xor a                                         ; $61ea: $af
    ld bc, $81a2                                  ; $61eb: $01 $a2 $81
    ld h, b                                       ; $61ee: $60
    nop                                           ; $61ef: $00
    db $e4                                        ; $61f0: $e4
    ld [hl+], a                                   ; $61f1: $22
    ldh [$ea], a                                  ; $61f2: $e0 $ea

jr_068_61f4:
    ret nc                                        ; $61f4: $d0

    add sp, $30                                   ; $61f5: $e8 $30
    inc c                                         ; $61f7: $0c
    ldh a, [$e4]                                  ; $61f8: $f0 $e4
    ld a, l                                       ; $61fa: $7d
    ret nz                                        ; $61fb: $c0

    ld a, $a3                                     ; $61fc: $3e $a3
    ld b, d                                       ; $61fe: $42
    ld h, c                                       ; $61ff: $61
    ld b, b                                       ; $6200: $40
    db $e4                                        ; $6201: $e4
    jr nz, @-$1e                                  ; $6202: $20 $e0

    db $ed                                        ; $6204: $ed
    ret nc                                        ; $6205: $d0

    and $30                                       ; $6206: $e6 $30
    dec c                                         ; $6208: $0d
    db $fc                                        ; $6209: $fc
    daa                                           ; $620a: $27
    add hl, bc                                    ; $620b: $09
    ret nz                                        ; $620c: $c0

    sbc l                                         ; $620d: $9d
    add $43                                       ; $620e: $c6 $43
    add b                                         ; $6210: $80
    db $e4                                        ; $6211: $e4
    jr nz, jr_068_61f4                            ; $6212: $20 $e0

    db $ed                                        ; $6214: $ed
    ret nc                                        ; $6215: $d0

    and $30                                       ; $6216: $e6 $30
    dec c                                         ; $6218: $0d
    db $fc                                        ; $6219: $fc
    dec h                                         ; $621a: $25
    ccf                                           ; $621b: $3f
    ld hl, $47c7                                  ; $621c: $21 $c7 $47
    db $eb                                        ; $621f: $eb
    nop                                           ; $6220: $00
    ldh [$ed], a                                  ; $6221: $e0 $ed
    ret nc                                        ; $6223: $d0

    and $30                                       ; $6224: $e6 $30
    dec c                                         ; $6226: $0d
    ldh a, [$e8]                                  ; $6227: $f0 $e8
    or l                                          ; $6229: $b5
    ld [bc], a                                    ; $622a: $02
    add sp, $02                                   ; $622b: $e8 $02
    db $dd                                        ; $622d: $dd
    and d                                         ; $622e: $a2
    ldh [$ee], a                                  ; $622f: $e0 $ee
    nop                                           ; $6231: $00
    ret nc                                        ; $6232: $d0

    ld [c], a                                     ; $6233: $e2
    jr nc, jr_068_6243                            ; $6234: $30 $0d

    ldh a, [$e8]                                  ; $6236: $f0 $e8
    db $ec                                        ; $6238: $ec
    jp nz, Jump_000_02e8                          ; $6239: $c2 $e8 $02

    ld l, e                                       ; $623c: $6b
    ld bc, $efe0                                  ; $623d: $01 $e0 $ef
    ret nc                                        ; $6240: $d0

    ld [c], a                                     ; $6241: $e2
    nop                                           ; $6242: $00

jr_068_6243:
    rst $38                                       ; $6243: $ff
    ld [hl], h                                    ; $6244: $74
    add hl, sp                                    ; $6245: $39
    ld bc, $41fa                                  ; $6246: $01 $fa $41
    jr jr_068_626e                                ; $6249: $18 $23

    ldh [$f3], a                                  ; $624b: $e0 $f3
    jp nc, $0021                                  ; $624d: $d2 $21 $00

    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    pop bc                                        ; $6252: $c1
    nop                                           ; $6253: $00
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    dec c                                         ; $6260: $0d
    add b                                         ; $6261: $80
    cp $e0                                        ; $6262: $fe $e0
    nop                                           ; $6264: $00
    ld b, b                                       ; $6265: $40
    ret c                                         ; $6266: $d8

    push hl                                       ; $6267: $e5
    rst $30                                       ; $6268: $f7
    and $eb                                       ; $6269: $e6 $eb
    ldh [rIE], a                                  ; $626b: $e0 $ff
    rst $38                                       ; $626d: $ff

jr_068_626e:
    nop                                           ; $626e: $00
    rst $38                                       ; $626f: $ff
    db $f4                                        ; $6270: $f4
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    ld [bc], a                                    ; $6274: $02
    nop                                           ; $6275: $00
    dec de                                        ; $6276: $1b
    dec bc                                        ; $6277: $0b
    ld [bc], a                                    ; $6278: $02
    ld bc, $0c1d                                  ; $6279: $01 $1d $0c
    ld [bc], a                                    ; $627c: $02
    ld [bc], a                                    ; $627d: $02
    rra                                           ; $627e: $1f
    inc c                                         ; $627f: $0c

Jump_068_6280:
    ld [bc], a                                    ; $6280: $02
    inc bc                                        ; $6281: $03
    inc e                                         ; $6282: $1c
    dec c                                         ; $6283: $0d
    ld [bc], a                                    ; $6284: $02
    inc b                                         ; $6285: $04
    ld h, $0d                                     ; $6286: $26 $0d
    ld [bc], a                                    ; $6288: $02
    dec b                                         ; $6289: $05
    dec h                                         ; $628a: $25
    ld c, $02                                     ; $628b: $0e $02
    ld b, $27                                     ; $628d: $06 $27
    ld c, $02                                     ; $628f: $0e $02
    rlca                                          ; $6291: $07
    rla                                           ; $6292: $17
    rrca                                          ; $6293: $0f
    ld [bc], a                                    ; $6294: $02
    ld [$0f1e], sp                                ; $6295: $08 $1e $0f
    ld [bc], a                                    ; $6298: $02
    add hl, bc                                    ; $6299: $09
    ld hl, $020f                                  ; $629a: $21 $0f $02
    ld a, [bc]                                    ; $629d: $0a
    jr jr_068_62b0                                ; $629e: $18 $10

    ld [bc], a                                    ; $62a0: $02
    dec bc                                        ; $62a1: $0b
    jr nz, jr_068_62b4                            ; $62a2: $20 $10

    ld [bc], a                                    ; $62a4: $02
    inc c                                         ; $62a5: $0c
    ld [hl+], a                                   ; $62a6: $22
    db $10                                        ; $62a7: $10
    ld [bc], a                                    ; $62a8: $02
    dec c                                         ; $62a9: $0d
    ld a, [hl+]                                   ; $62aa: $2a
    ld de, $0e02                                  ; $62ab: $11 $02 $0e
    ld e, $12                                     ; $62ae: $1e $12

jr_068_62b0:
    ld [bc], a                                    ; $62b0: $02
    rrca                                          ; $62b1: $0f
    rra                                           ; $62b2: $1f
    ld [de], a                                    ; $62b3: $12

jr_068_62b4:
    ld [bc], a                                    ; $62b4: $02
    db $10                                        ; $62b5: $10
    add hl, hl                                    ; $62b6: $29
    ld [de], a                                    ; $62b7: $12
    ld [bc], a                                    ; $62b8: $02
    ld de, $131d                                  ; $62b9: $11 $1d $13
    ld [bc], a                                    ; $62bc: $02
    ld [de], a                                    ; $62bd: $12
    dec e                                         ; $62be: $1d
    dec d                                         ; $62bf: $15
    ld [bc], a                                    ; $62c0: $02
    inc de                                        ; $62c1: $13

Call_068_62c2:
    inc h                                         ; $62c2: $24
    ld d, $02                                     ; $62c3: $16 $02
    inc d                                         ; $62c5: $14
    jr nz, jr_068_62df                            ; $62c6: $20 $17

    ld [bc], a                                    ; $62c8: $02
    dec d                                         ; $62c9: $15
    jr nz, @+$1d                                  ; $62ca: $20 $1b

    ld [bc], a                                    ; $62cc: $02
    ld d, $1f                                     ; $62cd: $16 $1f
    inc e                                         ; $62cf: $1c
    ld [bc], a                                    ; $62d0: $02
    rla                                           ; $62d1: $17
    ld hl, $021d                                  ; $62d2: $21 $1d $02
    jr jr_068_62fe                                ; $62d5: $18 $27

    dec e                                         ; $62d7: $1d
    ld [bc], a                                    ; $62d8: $02
    add hl, de                                    ; $62d9: $19
    jr nz, @+$20                                  ; $62da: $20 $1e

    ld [bc], a                                    ; $62dc: $02
    ld a, [de]                                    ; $62dd: $1a
    dec h                                         ; $62de: $25

jr_068_62df:
    ld e, $02                                     ; $62df: $1e $02
    dec de                                        ; $62e1: $1b
    ld e, $1f                                     ; $62e2: $1e $1f
    ld [bc], a                                    ; $62e4: $02
    inc e                                         ; $62e5: $1c
    jr nz, jr_068_6308                            ; $62e6: $20 $20

    ld [bc], a                                    ; $62e8: $02
    dec e                                         ; $62e9: $1d
    ld h, $20                                     ; $62ea: $26 $20
    ld [bc], a                                    ; $62ec: $02
    ld e, $24                                     ; $62ed: $1e $24
    ld hl, $1f02                                  ; $62ef: $21 $02 $1f
    ld e, $22                                     ; $62f2: $1e $22
    ld [bc], a                                    ; $62f4: $02
    jr nz, @+$27                                  ; $62f5: $20 $25

    ld [hl+], a                                   ; $62f7: $22
    ld [bc], a                                    ; $62f8: $02
    ld hl, $2327                                  ; $62f9: $21 $27 $23
    ld [bc], a                                    ; $62fc: $02
    ld [hl+], a                                   ; $62fd: $22

jr_068_62fe:
    rla                                           ; $62fe: $17
    inc h                                         ; $62ff: $24
    ld [bc], a                                    ; $6300: $02
    inc hl                                        ; $6301: $23
    ld a, [de]                                    ; $6302: $1a
    inc h                                         ; $6303: $24
    ld [bc], a                                    ; $6304: $02
    inc h                                         ; $6305: $24
    dec de                                        ; $6306: $1b
    dec h                                         ; $6307: $25

jr_068_6308:
    ld [bc], a                                    ; $6308: $02
    dec h                                         ; $6309: $25
    add hl, de                                    ; $630a: $19
    ld h, $02                                     ; $630b: $26 $02
    ld h, $18                                     ; $630d: $26 $18
    daa                                           ; $630f: $27
    ld [bc], a                                    ; $6310: $02
    daa                                           ; $6311: $27
    dec de                                        ; $6312: $1b
    jr z, jr_068_6317                             ; $6313: $28 $02

    jr z, jr_068_6330                             ; $6315: $28 $19

jr_068_6317:
    jr nc, jr_068_631b                            ; $6317: $30 $02

    add hl, hl                                    ; $6319: $29
    inc h                                         ; $631a: $24

jr_068_631b:
    jr nc, jr_068_631f                            ; $631b: $30 $02

    ld a, [hl+]                                   ; $631d: $2a
    ld a, [de]                                    ; $631e: $1a

jr_068_631f:
    ld sp, $2b02                                  ; $631f: $31 $02 $2b
    ld [hl+], a                                   ; $6322: $22
    ld sp, $2c02                                  ; $6323: $31 $02 $2c
    dec h                                         ; $6326: $25
    ld sp, $2d02                                  ; $6327: $31 $02 $2d
    jr jr_068_635e                                ; $632a: $18 $32

    ld [bc], a                                    ; $632c: $02
    ld l, $23                                     ; $632d: $2e $23
    ld [hl-], a                                   ; $632f: $32

jr_068_6330:
    ld [bc], a                                    ; $6330: $02
    cpl                                           ; $6331: $2f
    inc h                                         ; $6332: $24
    inc sp                                        ; $6333: $33
    ld [bc], a                                    ; $6334: $02
    jr nc, jr_068_634e                            ; $6335: $30 $17

    inc [hl]                                      ; $6337: $34
    ld [bc], a                                    ; $6338: $02
    ld sp, $3523                                  ; $6339: $31 $23 $35
    ld [bc], a                                    ; $633c: $02
    ld [hl-], a                                   ; $633d: $32
    inc e                                         ; $633e: $1c
    add hl, sp                                    ; $633f: $39
    ld [bc], a                                    ; $6340: $02
    inc sp                                        ; $6341: $33
    ld a, [de]                                    ; $6342: $1a
    ld a, [hl-]                                   ; $6343: $3a
    ld [bc], a                                    ; $6344: $02
    inc [hl]                                      ; $6345: $34
    dec de                                        ; $6346: $1b
    dec sp                                        ; $6347: $3b
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    ld d, e                                       ; $634b: $53
    ld h, e                                       ; $634c: $63
    ld c, d                                       ; $634d: $4a

jr_068_634e:
    ld l, b                                       ; $634e: $68
    adc [hl]                                      ; $634f: $8e
    ld l, [hl]                                    ; $6350: $6e
    or b                                          ; $6351: $b0
    ld l, [hl]                                    ; $6352: $6e
    rra                                           ; $6353: $1f
    ld l, $0e                                     ; $6354: $2e $0e
    ld c, $0e                                     ; $6356: $0e $0e
    ld c, l                                       ; $6358: $4d
    rst $38                                       ; $6359: $ff
    add sp, -$10                                  ; $635a: $e8 $f0
    db $ed                                        ; $635c: $ed
    db $f4                                        ; $635d: $f4

jr_068_635e:
    db $ed                                        ; $635e: $ed
    adc $d0                                       ; $635f: $ce $d0
    db $ed                                        ; $6361: $ed
    ld l, [hl]                                    ; $6362: $6e
    ld l, $6e                                     ; $6363: $2e $6e
    cp [hl]                                       ; $6365: $be
    ldh [$bd], a                                  ; $6366: $e0 $bd
    ldh [$0d], a                                  ; $6368: $e0 $0d
    dec c                                         ; $636a: $0d
    or b                                          ; $636b: $b0
    jp nz, $f0e2                                  ; $636c: $c2 $e2 $f0

    db $eb                                        ; $636f: $eb
    and [hl]                                      ; $6370: $a6
    add sp, -$20                                  ; $6371: $e8 $e0
    ld a, [c]                                     ; $6373: $f2
    ld l, $0e                                     ; $6374: $2e $0e
    pop bc                                        ; $6376: $c1
    ldh [$4e], a                                  ; $6377: $e0 $4e
    push de                                       ; $6379: $d5
    ld c, [hl]                                    ; $637a: $4e
    ret nz                                        ; $637b: $c0

    rst $20                                       ; $637c: $e7
    ld l, $f0                                     ; $637d: $2e $f0
    db $eb                                        ; $637f: $eb
    ld c, l                                       ; $6380: $4d
    xor e                                         ; $6381: $ab
    pop hl                                        ; $6382: $e1
    dec l                                         ; $6383: $2d
    dec l                                         ; $6384: $2d
    ld l, c                                       ; $6385: $69
    ld c, l                                       ; $6386: $4d
    ldh [$f5], a                                  ; $6387: $e0 $f5
    ret nc                                        ; $6389: $d0

    ldh [$2e], a                                  ; $638a: $e0 $2e
    ld a, $e1                                     ; $638c: $3e $e1
    ld c, [hl]                                    ; $638e: $4e
    ld c, $f0                                     ; $638f: $0e $f0
    di                                            ; $6391: $f3
    rst $38                                       ; $6392: $ff
    dec c                                         ; $6393: $0d
    ld l, l                                       ; $6394: $6d
    dec hl                                        ; $6395: $2b
    ld a, [bc]                                    ; $6396: $0a
    ld a, [bc]                                    ; $6397: $0a
    ld a, [hl+]                                   ; $6398: $2a
    ld c, l                                       ; $6399: $4d
    dec l                                         ; $639a: $2d
    ld b, b                                       ; $639b: $40
    add b                                         ; $639c: $80
    and $d0                                       ; $639d: $e6 $d0
    db $f4                                        ; $639f: $f4
    ccf                                           ; $63a0: $3f
    ld [c], a                                     ; $63a1: $e2

Jump_068_63a2:
    ld hl, sp-$40                                 ; $63a2: $f8 $c0
    ldh a, [$ec]                                  ; $63a4: $f0 $ec
    pop bc                                        ; $63a6: $c1
    ldh [rOCPD], a                                ; $63a7: $e0 $6b
    ret nz                                        ; $63a9: $c0

    ldh [$c1], a                                  ; $63aa: $e0 $c1
    ld c, d                                       ; $63ac: $4a
    ret nz                                        ; $63ad: $c0

    pop hl                                        ; $63ae: $e1
    ldh [$f1], a                                  ; $63af: $e0 $f1
    ret nz                                        ; $63b1: $c0

    ld [$c1b8], a                                 ; $63b2: $ea $b8 $c1
    ldh a, [$ec]                                  ; $63b5: $f0 $ec
    dec c                                         ; $63b7: $0d
    dec hl                                        ; $63b8: $2b
    ccf                                           ; $63b9: $3f
    dec hl                                        ; $63ba: $2b
    dec bc                                        ; $63bb: $0b
    dec bc                                        ; $63bc: $0b
    dec hl                                        ; $63bd: $2b
    ld c, d                                       ; $63be: $4a
    ld a, [bc]                                    ; $63bf: $0a
    ld a, a                                       ; $63c0: $7f
    ld [c], a                                     ; $63c1: $e2
    ldh [$f0], a                                  ; $63c2: $e0 $f0
    ld hl, sp-$80                                 ; $63c4: $f8 $80
    ld [$e113], a                                 ; $63c6: $ea $13 $e1
    ldh a, [$ec]                                  ; $63c9: $f0 $ec
    dec c                                         ; $63cb: $0d
    ld a, [bc]                                    ; $63cc: $0a
    ld c, d                                       ; $63cd: $4a
    ld l, e                                       ; $63ce: $6b
    dec bc                                        ; $63cf: $0b
    rrca                                          ; $63d0: $0f
    ld c, e                                       ; $63d1: $4b
    ld a, [bc]                                    ; $63d2: $0a
    ld c, d                                       ; $63d3: $4a
    dec hl                                        ; $63d4: $2b
    ld a, a                                       ; $63d5: $7f
    ld [c], a                                     ; $63d6: $e2
    ldh [$ef], a                                  ; $63d7: $e0 $ef
    ret nz                                        ; $63d9: $c0

    xor $ef                                       ; $63da: $ee $ef
    jp nz, $b0be                                  ; $63dc: $c2 $be $b0

    rst $20                                       ; $63df: $e7
    ld l, l                                       ; $63e0: $6d
    ld a, [bc]                                    ; $63e1: $0a
    ld a, [bc]                                    ; $63e2: $0a
    ld c, e                                       ; $63e3: $4b
    dec bc                                        ; $63e4: $0b
    ld a, $e0                                     ; $63e5: $3e $e0
    ld l, l                                       ; $63e7: $6d
    ret nz                                        ; $63e8: $c0

    ret nz                                        ; $63e9: $c0

    push hl                                       ; $63ea: $e5
    ldh [$ec], a                                  ; $63eb: $e0 $ec
    ret nc                                        ; $63ed: $d0

    db $ec                                        ; $63ee: $ec
    xor a                                         ; $63ef: $af
    call nz, $e770                                ; $63f0: $c4 $70 $e7
    jp Jump_068_6bc0                              ; $63f3: $c3 $c0 $6b


    ld c, e                                       ; $63f6: $4b
    rrca                                          ; $63f7: $0f
    ld c, e                                       ; $63f8: $4b
    ld a, [bc]                                    ; $63f9: $0a
    ld l, l                                       ; $63fa: $6d
    dec c                                         ; $63fb: $0d
    add b                                         ; $63fc: $80
    db $e3                                        ; $63fd: $e3
    ldh [$ed], a                                  ; $63fe: $e0 $ed
    pop de                                        ; $6400: $d1
    and c                                         ; $6401: $a1
    adc $a3                                       ; $6402: $ce $a3
    ld h, c                                       ; $6404: $61
    ld l, l                                       ; $6405: $6d
    rst $00                                       ; $6406: $c7
    and d                                         ; $6407: $a2
    cp [hl]                                       ; $6408: $be
    and a                                         ; $6409: $a7
    ldh a, [$e0]                                  ; $640a: $f0 $e0
    ldh a, [$a0]                                  ; $640c: $f0 $a0
    dec c                                         ; $640e: $0d
    ld a, [bc]                                    ; $640f: $0a
    add b                                         ; $6410: $80
    ld [c], a                                     ; $6411: $e2
    ld hl, $e52b                                  ; $6412: $21 $2b $e5
    and b                                         ; $6415: $a0
    inc a                                         ; $6416: $3c
    ret nz                                        ; $6417: $c0

    db $fc                                        ; $6418: $fc
    and a                                         ; $6419: $a7
    ret nc                                        ; $641a: $d0

    jp hl                                         ; $641b: $e9


    dec c                                         ; $641c: $0d
    ret c                                         ; $641d: $d8

    pop hl                                        ; $641e: $e1
    jp $f0a0                                      ; $641f: $c3 $a0 $f0


    ld hl, sp-$5f                                 ; $6422: $f8 $a1
    cp c                                          ; $6424: $b9
    and e                                         ; $6425: $a3
    ldh a, [$e3]                                  ; $6426: $f0 $e3
    ret nz                                        ; $6428: $c0

    ld [c], a                                     ; $6429: $e2
    ld c, l                                       ; $642a: $4d
    ld c, d                                       ; $642b: $4a
    ld a, [bc]                                    ; $642c: $0a
    dec hl                                        ; $642d: $2b
    nop                                           ; $642e: $00
    ret nz                                        ; $642f: $c0

    ld [c], a                                     ; $6430: $e2
    cp [hl]                                       ; $6431: $be
    pop hl                                        ; $6432: $e1
    cp h                                          ; $6433: $bc
    and e                                         ; $6434: $a3
    ret nc                                        ; $6435: $d0

    db $ed                                        ; $6436: $ed
    call $83a0                                    ; $6437: $cd $a0 $83
    and d                                         ; $643a: $a2
    ld sp, hl                                     ; $643b: $f9
    and l                                         ; $643c: $a5
    ldh a, [$e5]                                  ; $643d: $f0 $e5
    ld a, [de]                                    ; $643f: $1a
    cp l                                          ; $6440: $bd
    db $e3                                        ; $6441: $e3
    ld l, e                                       ; $6442: $6b
    add b                                         ; $6443: $80
    ret nz                                        ; $6444: $c0

    dec bc                                        ; $6445: $0b
    dec bc                                        ; $6446: $0b
    ret nz                                        ; $6447: $c0

    pop hl                                        ; $6448: $e1
    cp a                                          ; $6449: $bf
    ld [c], a                                     ; $644a: $e2
    ld e, h                                       ; $644b: $5c
    and c                                         ; $644c: $a1
    nop                                           ; $644d: $00
    ret nc                                        ; $644e: $d0

    db $ed                                        ; $644f: $ed
    ld b, c                                       ; $6450: $41
    and b                                         ; $6451: $a0
    ld a, e                                       ; $6452: $7b
    pop hl                                        ; $6453: $e1
    cp c                                          ; $6454: $b9
    and b                                         ; $6455: $a0
    push af                                       ; $6456: $f5
    add e                                         ; $6457: $83
    ldh a, [$e4]                                  ; $6458: $f0 $e4
    jp Jump_068_63a2                              ; $645a: $c3 $a2 $63


    ldh [rSC], a                                  ; $645d: $e0 $02
    ret nz                                        ; $645f: $c0

    pop hl                                        ; $6460: $e1
    dec l                                         ; $6461: $2d
    cp a                                          ; $6462: $bf
    ld [c], a                                     ; $6463: $e2
    db $fc                                        ; $6464: $fc
    call nz, $ecd0                                ; $6465: $c4 $d0 $ec
    add a                                         ; $6468: $87
    pop hl                                        ; $6469: $e1
    inc a                                         ; $646a: $3c
    pop hl                                        ; $646b: $e1
    ldh a, [$ed]                                  ; $646c: $f0 $ed
    ld b, $c1                                     ; $646e: $06 $c1
    db $e4                                        ; $6470: $e4
    ld l, e                                       ; $6471: $6b
    ld l, e                                       ; $6472: $6b
    add c                                         ; $6473: $81
    pop hl                                        ; $6474: $e1
    cp a                                          ; $6475: $bf
    ld [c], a                                     ; $6476: $e2
    inc a                                         ; $6477: $3c
    call nz, $ecd0                                ; $6478: $c4 $d0 $ec
    adc a                                         ; $647b: $8f
    add c                                         ; $647c: $81
    add b                                         ; $647d: $80
    add [hl]                                      ; $647e: $86
    and c                                         ; $647f: $a1
    push af                                       ; $6480: $f5
    add c                                         ; $6481: $81
    ld [hl], l                                    ; $6482: $75
    add b                                         ; $6483: $80
    db $fd                                        ; $6484: $fd
    and b                                         ; $6485: $a0
    ldh a, [$e4]                                  ; $6486: $f0 $e4
    xor a                                         ; $6488: $af
    add b                                         ; $6489: $80
    rst $00                                       ; $648a: $c7
    ret nz                                        ; $648b: $c0

    dec hl                                        ; $648c: $2b
    ld bc, $404b                                  ; $648d: $01 $4b $40
    ld [c], a                                     ; $6490: $e2
    ld a, [hl]                                    ; $6491: $7e
    pop hl                                        ; $6492: $e1
    sbc h                                         ; $6493: $9c
    pop bc                                        ; $6494: $c1
    db $dd                                        ; $6495: $dd
    and c                                         ; $6496: $a1
    ret nc                                        ; $6497: $d0

    ldh a, [$94]                                  ; $6498: $f0 $94
    add e                                         ; $649a: $83
    ld a, [hl]                                    ; $649b: $7e
    pop bc                                        ; $649c: $c1
    jr @-$0e                                      ; $649d: $18 $f0

    rst $20                                       ; $649f: $e7
    ld b, d                                       ; $64a0: $42
    ld [c], a                                     ; $64a1: $e2
    ld a, a                                       ; $64a2: $7f
    and d                                         ; $64a3: $a2
    ld c, e                                       ; $64a4: $4b
    dec hl                                        ; $64a5: $2b
    or [hl]                                       ; $64a6: $b6
    pop hl                                        ; $64a7: $e1
    ld e, l                                       ; $64a8: $5d
    ret nz                                        ; $64a9: $c0

    sbc l                                         ; $64aa: $9d
    and e                                         ; $64ab: $a3
    ld b, d                                       ; $64ac: $42
    ret nc                                        ; $64ad: $d0

    db $eb                                        ; $64ae: $eb
    ld l, l                                       ; $64af: $6d
    rst $38                                       ; $64b0: $ff
    add sp, -$4c                                  ; $64b1: $e8 $b4
    add c                                         ; $64b3: $81
    ldh a, [$e3]                                  ; $64b4: $f0 $e3
    ld b, h                                       ; $64b6: $44
    ret nz                                        ; $64b7: $c0

    ld l, l                                       ; $64b8: $6d
    add c                                         ; $64b9: $81
    ld [c], a                                     ; $64ba: $e2
    rst $18                                       ; $64bb: $df
    dec bc                                        ; $64bc: $0b
    dec bc                                        ; $64bd: $0b
    ld l, e                                       ; $64be: $6b
    ld l, e                                       ; $64bf: $6b
    ld c, e                                       ; $64c0: $4b
    halt                                          ; $64c1: $76

jr_068_64c2:
    pop hl                                        ; $64c2: $e1

Jump_068_64c3:
    dec l                                         ; $64c3: $2d
    ld l, l                                       ; $64c4: $6d
    pop bc                                        ; $64c5: $c1
    ld c, l                                       ; $64c6: $4d
    sbc $ea                                       ; $64c7: $de $ea
    ret nc                                        ; $64c9: $d0

    push hl                                       ; $64ca: $e5
    adc $e2                                       ; $64cb: $ce $e2
    ld h, e                                       ; $64cd: $63
    ldh [$c3], a                                  ; $64ce: $e0 $c3
    pop hl                                        ; $64d0: $e1
    ld l, $4e                                     ; $64d1: $2e $4e
    inc bc                                        ; $64d3: $03
    ld c, $4e                                     ; $64d4: $0e $4e
    ldh a, [$e3]                                  ; $64d6: $f0 $e3
    add h                                         ; $64d8: $84
    db $e3                                        ; $64d9: $e3
    jp nz, $c2c0                                  ; $64da: $c2 $c0 $c2

    pop hl                                        ; $64dd: $e1
    add hl, sp                                    ; $64de: $39
    pop hl                                        ; $64df: $e1
    cp [hl]                                       ; $64e0: $be
    and b                                         ; $64e1: $a0
    jr nc, jr_068_64c2                            ; $64e2: $30 $de

    add sp, -$30                                  ; $64e4: $e8 $d0
    add sp, -$3c                                  ; $64e6: $e8 $c4
    and b                                         ; $64e8: $a0
    ret nz                                        ; $64e9: $c0

    push hl                                       ; $64ea: $e5
    ld l, [hl]                                    ; $64eb: $6e
    ld l, [hl]                                    ; $64ec: $6e
    cp a                                          ; $64ed: $bf
    ldh [$f0], a                                  ; $64ee: $e0 $f0
    pop hl                                        ; $64f0: $e1
    ld l, h                                       ; $64f1: $6c
    add a                                         ; $64f2: $87
    jp nz, $c10a                                  ; $64f3: $c2 $0a $c1

    dec bc                                        ; $64f6: $0b
    ld l, e                                       ; $64f7: $6b
    ld b, h                                       ; $64f8: $44
    pop bc                                        ; $64f9: $c1
    dec hl                                        ; $64fa: $2b
    dec l                                         ; $64fb: $2d
    ret nz                                        ; $64fc: $c0

    ld [c], a                                     ; $64fd: $e2
    jr nc, @-$1b                                  ; $64fe: $30 $e3

    ld h, b                                       ; $6500: $60
    sbc $e5                                       ; $6501: $de $e5
    ret nc                                        ; $6503: $d0

    db $ec                                        ; $6504: $ec
    add b                                         ; $6505: $80
    pop hl                                        ; $6506: $e1
    ld l, $6e                                     ; $6507: $2e $6e
    ld [hl], $85                                  ; $6509: $36 $85
    ld [hl], c                                    ; $650b: $71
    pop hl                                        ; $650c: $e1

jr_068_650d:
    jr jr_068_650d                                ; $650d: $18 $fe

    db $e3                                        ; $650f: $e3
    call nz, $83a0                                ; $6510: $c4 $a0 $83
    jp nz, Jump_000_2d2d                          ; $6513: $c2 $2d $2d

    ld l, [hl]                                    ; $6516: $6e
    ldh [$80], a                                  ; $6517: $e0 $80
    db $e3                                        ; $6519: $e3
    sbc $e3                                       ; $651a: $de $e3
    add d                                         ; $651c: $82
    ret nc                                        ; $651d: $d0

    db $eb                                        ; $651e: $eb
    dec c                                         ; $651f: $0d
    dec bc                                        ; $6520: $0b
    pop hl                                        ; $6521: $e1
    or $67                                        ; $6522: $f6 $67
    pop bc                                        ; $6524: $c1
    db $e3                                        ; $6525: $e3
    add h                                         ; $6526: $84
    pop bc                                        ; $6527: $c1
    rst $38                                       ; $6528: $ff
    ldh [$2d], a                                  ; $6529: $e0 $2d
    ld [bc], a                                    ; $652b: $02
    rst $38                                       ; $652c: $ff
    pop hl                                        ; $652d: $e1
    dec hl                                        ; $652e: $2b
    pop bc                                        ; $652f: $c1
    pop hl                                        ; $6530: $e1
    call nc, $d468                                ; $6531: $d4 $68 $d4
    call nz, $e590                                ; $6534: $c4 $90 $e5
    dec a                                         ; $6537: $3d
    ld [c], a                                     ; $6538: $e2
    ret nz                                        ; $6539: $c0

    add sp, $4c                                   ; $653a: $e8 $4c
    pop de                                        ; $653c: $d1
    and e                                         ; $653d: $a3

jr_068_653e:
    jp Jump_000_2bc2                              ; $653e: $c3 $c2 $2b


    dec bc                                        ; $6541: $0b
    cp e                                          ; $6542: $bb
    pop hl                                        ; $6543: $e1
    pop hl                                        ; $6544: $e1
    pop bc                                        ; $6545: $c1
    ld l, l                                       ; $6546: $6d
    ret nz                                        ; $6547: $c0

    rst $30                                       ; $6548: $f7
    ld h, l                                       ; $6549: $65
    dec l                                         ; $654a: $2d
    ldh a, [$ed]                                  ; $654b: $f0 $ed
    ld c, l                                       ; $654d: $4d
    rrca                                          ; $654e: $0f
    pop hl                                        ; $654f: $e1
    call nz, $0d62                                ; $6550: $c4 $62 $0d
    dec bc                                        ; $6553: $0b
    inc bc                                        ; $6554: $03
    and c                                         ; $6555: $a1
    ld [$c19f], sp                                ; $6556: $08 $9f $c1
    pop bc                                        ; $6559: $c1
    jp $f080                                      ; $655a: $c3 $80 $f0


    ld l, l                                       ; $655d: $6d
    ret nz                                        ; $655e: $c0

    db $ec                                        ; $655f: $ec
    ldh a, [$e1]                                  ; $6560: $f0 $e1
    pop bc                                        ; $6562: $c1
    add d                                         ; $6563: $82
    dec b                                         ; $6564: $05
    and c                                         ; $6565: $a1
    ld [bc], a                                    ; $6566: $02
    ld a, a                                       ; $6567: $7f
    ld h, b                                       ; $6568: $60
    dec l                                         ; $6569: $2d
    and b                                         ; $656a: $a0
    pop hl                                        ; $656b: $e1
    jp nz, $cea1                                  ; $656c: $c2 $a1 $ce

    add sp, -$40                                  ; $656f: $e8 $c0
    db $eb                                        ; $6571: $eb
    ldh a, [$ef]                                  ; $6572: $f0 $ef
    ld l, e                                       ; $6574: $6b
    add c                                         ; $6575: $81
    inc b                                         ; $6576: $04
    ld c, c                                       ; $6577: $49
    ldh [$c4], a                                  ; $6578: $e0 $c4
    add b                                         ; $657a: $80
    ld c, e                                       ; $657b: $4b
    ret nz                                        ; $657c: $c0

    ldh [$ae], a                                  ; $657d: $e0 $ae
    jp nz, $edce                                  ; $657f: $c2 $ce $ed

    add [hl]                                      ; $6582: $86
    ld b, l                                       ; $6583: $45
    ret z                                         ; $6584: $c8

    and e                                         ; $6585: $a3
    nop                                           ; $6586: $00
    cp [hl]                                       ; $6587: $be
    call nz, $a5f4                                ; $6588: $c4 $f4 $a5
    ret nz                                        ; $658b: $c0

    ld [c], a                                     ; $658c: $e2
    ld b, e                                       ; $658d: $43
    ldh [rLCDC], a                                ; $658e: $e0 $40
    pop hl                                        ; $6590: $e1
    ld [hl+], a                                   ; $6591: $22
    ld [c], a                                     ; $6592: $e2
    and b                                         ; $6593: $a0
    xor e                                         ; $6594: $ab
    ret nc                                        ; $6595: $d0

    ld [$0700], a                                 ; $6596: $ea $00 $07
    pop bc                                        ; $6599: $c1
    rst $00                                       ; $659a: $c7
    and b                                         ; $659b: $a0
    jr nz, jr_068_653e                            ; $659c: $20 $a0

    ld d, [hl]                                    ; $659e: $56
    ldh [rRP], a                                  ; $659f: $e0 $56
    pop bc                                        ; $65a1: $c1
    ret nz                                        ; $65a2: $c0

    db $e3                                        ; $65a3: $e3
    ld b, c                                       ; $65a4: $41
    ld [c], a                                     ; $65a5: $e2
    nop                                           ; $65a6: $00
    ldh [rP1], a                                  ; $65a7: $e0 $00
    push bc                                       ; $65a9: $c5
    ld h, b                                       ; $65aa: $60
    ld l, [hl]                                    ; $65ab: $6e
    and e                                         ; $65ac: $a3
    ldh [$e5], a                                  ; $65ad: $e0 $e5
    ret nc                                        ; $65af: $d0

    db $ed                                        ; $65b0: $ed
    rlca                                          ; $65b1: $07
    call nz, $a27d                                ; $65b2: $c4 $7d $a2
    inc bc                                        ; $65b5: $03
    jp $a3ff                                      ; $65b6: $c3 $ff $a3


    ld bc, $c66b                                  ; $65b9: $01 $6b $c6
    add c                                         ; $65bc: $81
    cp $c1                                        ; $65bd: $fe $c1
    cp a                                          ; $65bf: $bf
    jr nz, jr_068_661f                            ; $65c0: $20 $5d

    and l                                         ; $65c2: $a5
    sub e                                         ; $65c3: $93
    and c                                         ; $65c4: $a1
    ret nc                                        ; $65c5: $d0

    db $ed                                        ; $65c6: $ed
    dec sp                                        ; $65c7: $3b
    and e                                         ; $65c8: $a3
    inc l                                         ; $65c9: $2c
    inc a                                         ; $65ca: $3c
    add b                                         ; $65cb: $80
    or l                                          ; $65cc: $b5
    ldh [$2e], a                                  ; $65cd: $e0 $2e
    ld c, [hl]                                    ; $65cf: $4e
    jp c, Jump_068_6d82                           ; $65d0: $da $82 $6d

    ld a, a                                       ; $65d3: $7f
    ret nz                                        ; $65d4: $c0

    ld b, l                                       ; $65d5: $45
    add e                                         ; $65d6: $83
    nop                                           ; $65d7: $00
    call nz, Call_068_7062                        ; $65d8: $c4 $62 $70
    ret nz                                        ; $65db: $c0

    dec e                                         ; $65dc: $1d
    and c                                         ; $65dd: $a1
    ldh [$e3], a                                  ; $65de: $e0 $e3
    ret nc                                        ; $65e0: $d0

    db $ed                                        ; $65e1: $ed
    ret nz                                        ; $65e2: $c0

    push hl                                       ; $65e3: $e5
    ld b, h                                       ; $65e4: $44
    pop hl                                        ; $65e5: $e1
    or h                                          ; $65e6: $b4
    nop                                           ; $65e7: $00
    ld [hl], h                                    ; $65e8: $74
    sub $22                                       ; $65e9: $d6 $22
    ccf                                           ; $65eb: $3f
    db $e4                                        ; $65ec: $e4
    ld c, e                                       ; $65ed: $4b
    jp $4b60                                      ; $65ee: $c3 $60 $4b


    ld a, [bc]                                    ; $65f1: $0a
    ld a, [hl+]                                   ; $65f2: $2a
    cp a                                          ; $65f3: $bf
    db $e4                                        ; $65f4: $e4
    sub h                                         ; $65f5: $94
    ldh [$e4], a                                  ; $65f6: $e0 $e4
    ret nc                                        ; $65f8: $d0

    db $ed                                        ; $65f9: $ed
    dec l                                         ; $65fa: $2d
    cp e                                          ; $65fb: $bb
    add [hl]                                      ; $65fc: $86
    ld c, $f5                                     ; $65fd: $0e $f5
    ldh [$b7], a                                  ; $65ff: $e0 $b7
    ld b, c                                       ; $6601: $41
    ld c, $79                                     ; $6602: $0e $79
    ld c, l                                       ; $6604: $4d
    ret nz                                        ; $6605: $c0

    add h                                         ; $6606: $84
    ret nz                                        ; $6607: $c0

    pop hl                                        ; $6608: $e1
    dec bc                                        ; $6609: $0b
    ld a, [bc]                                    ; $660a: $0a
    ld a, [bc]                                    ; $660b: $0a
    ld c, d                                       ; $660c: $4a
    ld hl, sp+$60                                 ; $660d: $f8 $60
    nop                                           ; $660f: $00
    db $fc                                        ; $6610: $fc
    nop                                           ; $6611: $00
    ldh [$e4], a                                  ; $6612: $e0 $e4
    ret nc                                        ; $6614: $d0

    db $ed                                        ; $6615: $ed
    ld c, d                                       ; $6616: $4a
    pop hl                                        ; $6617: $e1
    ld c, e                                       ; $6618: $4b
    add d                                         ; $6619: $82
    add b                                         ; $661a: $80
    pop hl                                        ; $661b: $e1
    ret nz                                        ; $661c: $c0

    ld [c], a                                     ; $661d: $e2
    ld b, b                                       ; $661e: $40

jr_068_661f:
    ldh [rP1], a                                  ; $661f: $e0 $00
    rst $38                                       ; $6621: $ff
    add e                                         ; $6622: $83
    add d                                         ; $6623: $82
    and b                                         ; $6624: $a0
    cp a                                          ; $6625: $bf
    ld [c], a                                     ; $6626: $e2
    add b                                         ; $6627: $80
    ld h, d                                       ; $6628: $62
    cp d                                          ; $6629: $ba
    nop                                           ; $662a: $00
    ret nc                                        ; $662b: $d0

    ld a, [c]                                     ; $662c: $f2
    jr nc, jr_068_663c                            ; $662d: $30 $0d

    ld d, h                                       ; $662f: $54
    inc b                                         ; $6630: $04
    inc b                                         ; $6631: $04
    nop                                           ; $6632: $00
    pop bc                                        ; $6633: $c1
    ld b, b                                       ; $6634: $40
    and e                                         ; $6635: $a3
    dec bc                                        ; $6636: $0b

jr_068_6637:
    ld bc, $bf80                                  ; $6637: $01 $80 $bf
    db $e3                                        ; $663a: $e3
    ld [hl+], a                                   ; $663b: $22

jr_068_663c:
    ld b, [hl]                                    ; $663c: $46
    add hl, hl                                    ; $663d: $29
    add hl, bc                                    ; $663e: $09
    jr nc, @+$0c                                  ; $663f: $30 $0a

    add b                                         ; $6641: $80
    db $f4                                        ; $6642: $f4
    and h                                         ; $6643: $a4
    ld c, l                                       ; $6644: $4d
    nop                                           ; $6645: $00
    add [hl]                                      ; $6646: $86
    ld h, e                                       ; $6647: $63
    add e                                         ; $6648: $83
    ld b, c                                       ; $6649: $41
    ld hl, sp-$60                                 ; $664a: $f8 $a0
    add b                                         ; $664c: $80
    ld h, d                                       ; $664d: $62
    cp h                                          ; $664e: $bc
    ld [hl+], a                                   ; $664f: $22
    ld l, $c1                                     ; $6650: $2e $c1
    ld c, $d0                                     ; $6652: $0e $d0
    ld [$610b], a                                 ; $6654: $ea $0b $61
    jr nc, jr_068_6662                            ; $6657: $30 $09

    db $f4                                        ; $6659: $f4
    and h                                         ; $665a: $a4
    ld [hl], l                                    ; $665b: $75
    ldh [$2d], a                                  ; $665c: $e0 $2d
    dec c                                         ; $665e: $0d
    ld bc, $814d                                  ; $665f: $01 $4d $81

jr_068_6662:
    jp nz, $81bd                                  ; $6662: $c2 $bd $81

    db $fc                                        ; $6665: $fc
    add b                                         ; $6666: $80
    ret nz                                        ; $6667: $c0

    and $da                                       ; $6668: $e6 $da
    ld h, b                                       ; $666a: $60
    ret nc                                        ; $666b: $d0

    add sp, $30                                   ; $666c: $e8 $30
    dec c                                         ; $666e: $0d
    nop                                           ; $666f: $00
    ei                                            ; $6670: $fb
    ld h, h                                       ; $6671: $64
    xor c                                         ; $6672: $a9
    inc hl                                        ; $6673: $23
    ld b, [hl]                                    ; $6674: $46
    jr nz, jr_068_6637                            ; $6675: $20 $c0

    ld [$41ff], a                                 ; $6677: $ea $ff $41
    ret nc                                        ; $667a: $d0

    db $ec                                        ; $667b: $ec
    jr nc, jr_068_668b                            ; $667c: $30 $0d

    db $f4                                        ; $667e: $f4
    and h                                         ; $667f: $a4
    nop                                           ; $6680: $00
    ld l, c                                       ; $6681: $69
    inc h                                         ; $6682: $24
    ld b, $60                                     ; $6683: $06 $60
    ccf                                           ; $6685: $3f
    db $e3                                        ; $6686: $e3
    ld [hl], c                                    ; $6687: $71
    add d                                         ; $6688: $82
    reti                                          ; $6689: $d9


    ld h, b                                       ; $668a: $60

jr_068_668b:
    ret nc                                        ; $668b: $d0

    xor $30                                       ; $668c: $ee $30
    dec c                                         ; $668e: $0d
    ret nz                                        ; $668f: $c0

    push hl                                       ; $6690: $e5
    ld h, $7f                                     ; $6691: $26 $7f
    ld h, h                                       ; $6693: $64
    ld c, l                                       ; $6694: $4d
    dec hl                                        ; $6695: $2b
    cp l                                          ; $6696: $bd
    and e                                         ; $6697: $a3
    add b                                         ; $6698: $80
    ld h, c                                       ; $6699: $61
    dec l                                         ; $669a: $2d
    ldh [$e1], a                                  ; $669b: $e0 $e1
    ret nc                                        ; $669d: $d0

    db $ed                                        ; $669e: $ed
    nop                                           ; $669f: $00
    jr nc, jr_068_66af                            ; $66a0: $30 $0d

    xor a                                         ; $66a2: $af
    ld b, h                                       ; $66a3: $44
    ret nz                                        ; $66a4: $c0

    push hl                                       ; $66a5: $e5
    db $fc                                        ; $66a6: $fc
    add e                                         ; $66a7: $83
    ld b, b                                       ; $66a8: $40
    ldh [$82], a                                  ; $66a9: $e0 $82
    and c                                         ; $66ab: $a1
    ld b, e                                       ; $66ac: $43
    ld b, e                                       ; $66ad: $43
    ld b, b                                       ; $66ae: $40

jr_068_66af:
    inc c                                         ; $66af: $0c
    nop                                           ; $66b0: $00
    ret nz                                        ; $66b1: $c0

    db $ec                                        ; $66b2: $ec
    halt                                          ; $66b3: $76
    add h                                         ; $66b4: $84
    ret nz                                        ; $66b5: $c0

    rst $20                                       ; $66b6: $e7
    ld bc, $7f22                                  ; $66b7: $01 $22 $7f
    ld h, c                                       ; $66ba: $61
    ld a, $01                                     ; $66bb: $3e $01
    ld e, c                                       ; $66bd: $59
    inc hl                                        ; $66be: $23
    ret nz                                        ; $66bf: $c0

    ld [$3000], a                                 ; $66c0: $ea $00 $30
    ld c, $9f                                     ; $66c3: $0e $9f
    ld [bc], a                                    ; $66c5: $02
    sbc c                                         ; $66c6: $99
    inc bc                                        ; $66c7: $03
    jp nz, $fd21                                  ; $66c8: $c2 $21 $fd

    add d                                         ; $66cb: $82
    ret nz                                        ; $66cc: $c0

    push hl                                       ; $66cd: $e5
    ld b, c                                       ; $66ce: $41
    ld bc, $edd0                                  ; $66cf: $01 $d0 $ed
    ld bc, $302e                                  ; $66d2: $01 $2e $30
    dec c                                         ; $66d5: $0d
    ret nz                                        ; $66d6: $c0

    db $e4                                        ; $66d7: $e4
    cp [hl]                                       ; $66d8: $be
    add d                                         ; $66d9: $82
    ld b, b                                       ; $66da: $40
    db $e4                                        ; $66db: $e4
    add b                                         ; $66dc: $80
    ld [c], a                                     ; $66dd: $e2
    add c                                         ; $66de: $81
    ld hl, $2689                                  ; $66df: $21 $89 $26
    nop                                           ; $66e2: $00
    ret nc                                        ; $66e3: $d0

    add sp, $30                                   ; $66e4: $e8 $30
    dec c                                         ; $66e6: $0d
    ldh a, [$e5]                                  ; $66e7: $f0 $e5
    ld a, l                                       ; $66e9: $7d
    add d                                         ; $66ea: $82
    db $fc                                        ; $66eb: $fc
    and e                                         ; $66ec: $a3
    ld a, d                                       ; $66ed: $7a
    ld b, b                                       ; $66ee: $40
    add c                                         ; $66ef: $81
    ld hl, $e151                                  ; $66f0: $21 $51 $e1
    ld b, b                                       ; $66f3: $40
    ret nc                                        ; $66f4: $d0

    rst $28                                       ; $66f5: $ef
    jr nc, jr_068_6706                            ; $66f6: $30 $0e

    ldh a, [$e4]                                  ; $66f8: $f0 $e4
    ld a, h                                       ; $66fa: $7c
    and b                                         ; $66fb: $a0
    ld c, c                                       ; $66fc: $49
    nop                                           ; $66fd: $00
    ei                                            ; $66fe: $fb
    ld h, d                                       ; $66ff: $62
    ld c, e                                       ; $6700: $4b
    scf                                           ; $6701: $37
    ld b, b                                       ; $6702: $40
    ld b, b                                       ; $6703: $40
    xor [hl]                                      ; $6704: $ae
    and d                                         ; $6705: $a2

jr_068_6706:
    and h                                         ; $6706: $a4
    add c                                         ; $6707: $81
    ret nc                                        ; $6708: $d0

    xor $30                                       ; $6709: $ee $30
    inc c                                         ; $670b: $0c
    ldh a, [$e5]                                  ; $670c: $f0 $e5
    ld [hl], $e3                                  ; $670e: $36 $e3
    dec hl                                        ; $6710: $2b
    cp d                                          ; $6711: $ba
    ld h, b                                       ; $6712: $60
    ld bc, $c06b                                  ; $6713: $01 $6b $c0
    pop hl                                        ; $6716: $e1
    cp [hl]                                       ; $6717: $be
    ldh [rLCDC], a                                ; $6718: $e0 $40
    inc bc                                        ; $671a: $03
    ret nc                                        ; $671b: $d0

    db $ed                                        ; $671c: $ed
    jr nc, jr_068_672c                            ; $671d: $30 $0d

    ldh a, [$e5]                                  ; $671f: $f0 $e5
    and c                                         ; $6721: $a1
    pop bc                                        ; $6722: $c1
    ld [bc], a                                    ; $6723: $02
    ld b, $40                                     ; $6724: $06 $40
    dec hl                                        ; $6726: $2b
    pop bc                                        ; $6727: $c1
    nop                                           ; $6728: $00
    cp $21                                        ; $6729: $fe $21
    or l                                          ; $672b: $b5

jr_068_672c:
    ld hl, $e229                                  ; $672c: $21 $29 $e2
    ret nc                                        ; $672f: $d0

    db $ed                                        ; $6730: $ed
    jr nc, jr_068_6745                            ; $6731: $30 $12

    nop                                           ; $6733: $00
    or [hl]                                       ; $6734: $b6
    call nz, $e3c8                                ; $6735: $c4 $c8 $e3
    cp a                                          ; $6738: $bf
    ld [hl+], a                                   ; $6739: $22
    scf                                           ; $673a: $37
    ld b, c                                       ; $673b: $41
    inc c                                         ; $673c: $0c
    and e                                         ; $673d: $a3
    ret nc                                        ; $673e: $d0

    pop af                                        ; $673f: $f1
    jr nc, jr_068_674a                            ; $6740: $30 $08

    ldh a, [$e7]                                  ; $6742: $f0 $e7
    inc bc                                        ; $6744: $03

jr_068_6745:
    dec c                                         ; $6745: $0d
    ld l, l                                       ; $6746: $6d
    jp $81e3                                      ; $6747: $c3 $e3 $81


jr_068_674a:
    ld [c], a                                     ; $674a: $e2
    jr nc, jr_068_676d                            ; $674b: $30 $20

    dec hl                                        ; $674d: $2b
    ld bc, $e4c0                                  ; $674e: $01 $c0 $e4
    ret nc                                        ; $6751: $d0

    add sp, $00                                   ; $6752: $e8 $00
    ld [hl-], a                                   ; $6754: $32
    rlca                                          ; $6755: $07
    ld [hl+], a                                   ; $6756: $22
    dec c                                         ; $6757: $0d
    add h                                         ; $6758: $84
    db $e4                                        ; $6759: $e4
    cp l                                          ; $675a: $bd
    push hl                                       ; $675b: $e5
    sbc l                                         ; $675c: $9d
    ld h, c                                       ; $675d: $61
    ld e, l                                       ; $675e: $5d
    ld b, d                                       ; $675f: $42
    jr nc, jr_068_67ad                            ; $6760: $30 $4b

    inc c                                         ; $6762: $0c
    ld b, [hl]                                    ; $6763: $46
    nop                                           ; $6764: $00
    ld [hl+], a                                   ; $6765: $22
    rlca                                          ; $6766: $07
    jr nc, jr_068_676c                            ; $6767: $30 $03

    ret nz                                        ; $6769: $c0

    pop hl                                        ; $676a: $e1
    cp l                                          ; $676b: $bd

jr_068_676c:
    rst $20                                       ; $676c: $e7

jr_068_676d:
    sbc b                                         ; $676d: $98
    db $e3                                        ; $676e: $e3
    and b                                         ; $676f: $a0
    push hl                                       ; $6770: $e5
    ret nc                                        ; $6771: $d0

    add sp, $40                                   ; $6772: $e8 $40
    dec b                                         ; $6774: $05
    nop                                           ; $6775: $00
    jr nc, jr_068_6785                            ; $6776: $30 $0d

    db $fc                                        ; $6778: $fc
    ld b, b                                       ; $6779: $40
    add hl, bc                                    ; $677a: $09
    db $e3                                        ; $677b: $e3
    jp nz, $dcc3                                  ; $677c: $c2 $c3 $dc

    ld bc, $63e3                                  ; $677f: $01 $e3 $63
    inc sp                                        ; $6782: $33
    ld b, [hl]                                    ; $6783: $46
    ret nc                                        ; $6784: $d0

jr_068_6785:
    db $eb                                        ; $6785: $eb
    nop                                           ; $6786: $00
    jr nc, @+$0a                                  ; $6787: $30 $08

    ld [hl], b                                    ; $6789: $70
    ld [c], a                                     ; $678a: $e2
    ld [bc], a                                    ; $678b: $02
    pop hl                                        ; $678c: $e1
    add hl, bc                                    ; $678d: $09
    pop hl                                        ; $678e: $e1
    ret nz                                        ; $678f: $c0

    and $e3                                       ; $6790: $e6 $e3
    ld h, l                                       ; $6792: $65
    or e                                          ; $6793: $b3
    inc h                                         ; $6794: $24
    ret nc                                        ; $6795: $d0

    add sp, $01                                   ; $6796: $e8 $01
    dec c                                         ; $6798: $0d
    ld b, b                                       ; $6799: $40
    inc c                                         ; $679a: $0c
    ldh a, [$e2]                                  ; $679b: $f0 $e2
    ld [bc], a                                    ; $679d: $02
    db $eb                                        ; $679e: $eb
    ld [bc], a                                    ; $679f: $02
    pop bc                                        ; $67a0: $c1
    rla                                           ; $67a1: $17
    ld b, l                                       ; $67a2: $45
    ret nc                                        ; $67a3: $d0

    xor $fb                                       ; $67a4: $ee $fb
    ld [bc], a                                    ; $67a6: $02
    nop                                           ; $67a7: $00
    ldh a, [$ed]                                  ; $67a8: $f0 $ed
    jp nz, $fdc4                                  ; $67aa: $c2 $c4 $fd

jr_068_67ad:
    ld b, h                                       ; $67ad: $44
    ld b, d                                       ; $67ae: $42
    pop bc                                        ; $67af: $c1
    ret nz                                        ; $67b0: $c0

    and $d0                                       ; $67b1: $e6 $d0
    db $ed                                        ; $67b3: $ed
    ld b, b                                       ; $67b4: $40
    dec bc                                        ; $67b5: $0b
    ldh a, [$e4]                                  ; $67b6: $f0 $e4
    inc bc                                        ; $67b8: $03

jr_068_67b9:
    ld c, l                                       ; $67b9: $4d
    dec l                                         ; $67ba: $2d
    ret nz                                        ; $67bb: $c0

    rst $20                                       ; $67bc: $e7
    db $fd                                        ; $67bd: $fd
    add d                                         ; $67be: $82
    ld h, e                                       ; $67bf: $63
    ld h, h                                       ; $67c0: $64
    ld [hl], d                                    ; $67c1: $72
    nop                                           ; $67c2: $00
    ret nc                                        ; $67c3: $d0

    db $eb                                        ; $67c4: $eb
    ld l, c                                       ; $67c5: $69
    pop bc                                        ; $67c6: $c1
    jr jr_068_67b9                                ; $67c7: $18 $f0

    ldh a, [$bf]                                  ; $67c9: $f0 $bf
    db $e3                                        ; $67cb: $e3
    ld a, [hl]                                    ; $67cc: $7e
    ld bc, $2d0b                                  ; $67cd: $01 $0b $2d
    ld a, [hl]                                    ; $67d0: $7e
    add c                                         ; $67d1: $81
    add d                                         ; $67d2: $82
    ret z                                         ; $67d3: $c8

    ret nz                                        ; $67d4: $c0

    db $ed                                        ; $67d5: $ed
    nop                                           ; $67d6: $00
    jr nc, jr_068_67e3                            ; $67d7: $30 $0a

    rst $38                                       ; $67d9: $ff
    and a                                         ; $67da: $a7
    adc $20                                       ; $67db: $ce $20
    add c                                         ; $67dd: $81
    add sp, -$56                                  ; $67de: $e8 $aa
    db $e4                                        ; $67e0: $e4
    inc [hl]                                      ; $67e1: $34
    add hl, bc                                    ; $67e2: $09

jr_068_67e3:
    add [hl]                                      ; $67e3: $86
    ld b, d                                       ; $67e4: $42
    jr nc, jr_068_67f6                            ; $67e5: $30 $0f

    nop                                           ; $67e7: $00
    add hl, de                                    ; $67e8: $19
    ret z                                         ; $67e9: $c8

    nop                                           ; $67ea: $00
    ld h, e                                       ; $67eb: $63
    ld a, [hl]                                    ; $67ec: $7e
    add c                                         ; $67ed: $81
    jp nz, $d0ea                                  ; $67ee: $c2 $ea $d0

    db $eb                                        ; $67f1: $eb
    jr nc, @+$0e                                  ; $67f2: $30 $0c

    ldh a, [$e8]                                  ; $67f4: $f0 $e8

jr_068_67f6:
    add c                                         ; $67f6: $81
    add c                                         ; $67f7: $81
    nop                                           ; $67f8: $00
    rst $38                                       ; $67f9: $ff
    pop hl                                        ; $67fa: $e1
    ld a, [hl]                                    ; $67fb: $7e
    add b                                         ; $67fc: $80
    or c                                          ; $67fd: $b1
    ld h, b                                       ; $67fe: $60
    ldh [$ef], a                                  ; $67ff: $e0 $ef
    ret nc                                        ; $6801: $d0

    ld [c], a                                     ; $6802: $e2
    jr nc, @+$10                                  ; $6803: $30 $0e

    ldh a, [$e7]                                  ; $6805: $f0 $e7
    cp h                                          ; $6807: $bc
    call nz, Call_068_4200                        ; $6808: $c4 $00 $42
    and d                                         ; $680b: $a2
    ldh [$f1], a                                  ; $680c: $e0 $f1
    ret nc                                        ; $680e: $d0

    db $e3                                        ; $680f: $e3
    jr nc, jr_068_6825                            ; $6810: $30 $13

    ldh a, [$e1]                                  ; $6812: $f0 $e1
    db $fd                                        ; $6814: $fd
    jp nz, $8181                                  ; $6815: $c2 $81 $81

    add d                                         ; $6818: $82
    and b                                         ; $6819: $a0
    nop                                           ; $681a: $00
    ldh [$f1], a                                  ; $681b: $e0 $f1
    ret nc                                        ; $681d: $d0

    jp hl                                         ; $681e: $e9


    jr nc, jr_068_6826                            ; $681f: $30 $05

    ldh a, [$e9]                                  ; $6821: $f0 $e9
    ld a, [hl-]                                   ; $6823: $3a
    nop                                           ; $6824: $00

jr_068_6825:
    adc c                                         ; $6825: $89

jr_068_6826:
    ld bc, $e1f8                                  ; $6826: $01 $f8 $e1
    ld h, b                                       ; $6829: $60
    inc bc                                        ; $682a: $03
    nop                                           ; $682b: $00
    ldh [$ec], a                                  ; $682c: $e0 $ec
    ret nc                                        ; $682e: $d0

    pop hl                                        ; $682f: $e1
    jr nc, @+$10                                  ; $6830: $30 $0e

    ldh a, [$e8]                                  ; $6832: $f0 $e8
    ld hl, sp-$7f                                 ; $6834: $f8 $81
    db $e3                                        ; $6836: $e3
    and d                                         ; $6837: $a2
    or b                                          ; $6838: $b0
    add d                                         ; $6839: $82
    ldh [$ef], a                                  ; $683a: $e0 $ef
    nop                                           ; $683c: $00
    jr nc, jr_068_6850                            ; $683d: $30 $11

    ldh a, [$e9]                                  ; $683f: $f0 $e9
    ret nz                                        ; $6841: $c0

    ld [$f0e0], a                                 ; $6842: $ea $e0 $f0
    ld de, $0081                                  ; $6845: $11 $81 $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    rra                                           ; $684a: $1f
    ret c                                         ; $684b: $d8

    push de                                       ; $684c: $d5
    push de                                       ; $684d: $d5
    ret c                                         ; $684e: $d8

    and b                                         ; $684f: $a0

jr_068_6850:
    rst $38                                       ; $6850: $ff
    add sp, -$10                                  ; $6851: $e8 $f0
    db $ed                                        ; $6853: $ed
    db $f4                                        ; $6854: $f4
    db $ed                                        ; $6855: $ed
    sbc $d0                                       ; $6856: $de $d0
    db $ed                                        ; $6858: $ed
    jp nc, $d4d6                                  ; $6859: $d2 $d6 $d4

    sub $bd                                       ; $685c: $d6 $bd
    ld [c], a                                     ; $685e: $e2
    sbc $df                                       ; $685f: $de $df
    ldh a, [$c2]                                  ; $6861: $f0 $c2
    ld [c], a                                     ; $6863: $e2
    ldh a, [$eb]                                  ; $6864: $f0 $eb
    and [hl]                                      ; $6866: $a6
    add sp, -$20                                  ; $6867: $e8 $e0
    ld a, [c]                                     ; $6869: $f2
    ret c                                         ; $686a: $d8

    push de                                       ; $686b: $d5
    sub $d2                                       ; $686c: $d6 $d2
    rst $38                                       ; $686e: $ff
    ret nc                                        ; $686f: $d0

    jp nc, $d6d4                                  ; $6870: $d2 $d4 $d6

    db $d3                                        ; $6873: $d3
    and b                                         ; $6874: $a0
    and b                                         ; $6875: $a0
    ldh [$ed], a                                  ; $6876: $e0 $ed
    pop hl                                        ; $6878: $e1
    ld a, c                                       ; $6879: $79
    ldh [$d3], a                                  ; $687a: $e0 $d3
    ret nc                                        ; $687c: $d0

    ldh a, [$eb]                                  ; $687d: $f0 $eb
    and b                                         ; $687f: $a0
    sbc a                                         ; $6880: $9f
    sbc l                                         ; $6881: $9d
    cp a                                          ; $6882: $bf
    sbc l                                         ; $6883: $9d
    sbc l                                         ; $6884: $9d
    and d                                         ; $6885: $a2
    sbc a                                         ; $6886: $9f
    and b                                         ; $6887: $a0
    ld [$f4e0], a                                 ; $6888: $ea $e0 $f4
    db $d3                                        ; $688b: $d3
    rst $30                                       ; $688c: $f7
    ret nc                                        ; $688d: $d0

    rst $10                                       ; $688e: $d7
    call nc, $e0bf                                ; $688f: $d4 $bf $e0
    rst $10                                       ; $6892: $d7
    jp nc, $a0d8                                  ; $6893: $d2 $d8 $a0

    ei                                            ; $6896: $fb
    ld [c], a                                     ; $6897: $e2
    db $e3                                        ; $6898: $e3
    ldh a, [$f0]                                  ; $6899: $f0 $f0
    sbc a                                         ; $689b: $9f
    sbc h                                         ; $689c: $9c
    ld b, l                                       ; $689d: $45
    ld c, b                                       ; $689e: $48
    ld c, [hl]                                    ; $689f: $4e
    rst $20                                       ; $68a0: $e7
    ld c, b                                       ; $68a1: $48
    sbc h                                         ; $68a2: $9c
    sbc a                                         ; $68a3: $9f
    ld e, $e0                                     ; $68a4: $1e $e0
    ldh [$f2], a                                  ; $68a6: $e0 $f2
    db $d3                                        ; $68a8: $d3
    ret nc                                        ; $68a9: $d0

    db $dd                                        ; $68aa: $dd
    cp a                                          ; $68ab: $bf
    reti                                          ; $68ac: $d9


    rst $10                                       ; $68ad: $d7
    call nc, $ddd7                                ; $68ae: $d4 $d7 $dd
    ret nc                                        ; $68b1: $d0

    ld a, a                                       ; $68b2: $7f
    ldh [$a0], a                                  ; $68b3: $e0 $a0
    rst $18                                       ; $68b5: $df
    db $eb                                        ; $68b6: $eb
    and b                                         ; $68b7: $a0
    and b                                         ; $68b8: $a0
    rst $10                                       ; $68b9: $d7
    jp nc, $eaf0                                  ; $68ba: $d2 $f0 $ea

    sbc a                                         ; $68bd: $9f
    sbc h                                         ; $68be: $9c
    ld a, a                                       ; $68bf: $7f
    ld b, [hl]                                    ; $68c0: $46
    ld b, h                                       ; $68c1: $44
    ld e, c                                       ; $68c2: $59
    ld d, h                                       ; $68c3: $54
    ld h, b                                       ; $68c4: $60
    ld d, l                                       ; $68c5: $55
    sbc [hl]                                      ; $68c6: $9e
    sbc $c2                                       ; $68c7: $de $c2
    or h                                          ; $68c9: $b4
    ldh [$ef], a                                  ; $68ca: $e0 $ef
    ret nc                                        ; $68cc: $d0

    ldh [$d0], a                                  ; $68cd: $e0 $d0
    cp [hl]                                       ; $68cf: $be
    ldh [$dd], a                                  ; $68d0: $e0 $dd
    pop de                                        ; $68d2: $d1
    ret nz                                        ; $68d3: $c0

    pop hl                                        ; $68d4: $e1
    db $ec                                        ; $68d5: $ec
    rst $18                                       ; $68d6: $df
    db $ed                                        ; $68d7: $ed
    and b                                         ; $68d8: $a0
    and b                                         ; $68d9: $a0
    jp c, $f0d3                                   ; $68da: $da $d3 $f0

    ld [$459e], a                                 ; $68dd: $ea $9e $45
    ccf                                           ; $68e0: $3f
    ld b, e                                       ; $68e1: $43
    ld a, [hl+]                                   ; $68e2: $2a
    jr nz, jr_068_690f                            ; $68e3: $20 $2a

    ld c, e                                       ; $68e5: $4b
    ld d, l                                       ; $68e6: $55
    ld a, a                                       ; $68e7: $7f
    ld [c], a                                     ; $68e8: $e2
    ldh [$f0], a                                  ; $68e9: $e0 $f0
    jp nc, $e0d0                                  ; $68eb: $d2 $d0 $e0

    call nc, $e040                                ; $68ee: $d4 $40 $e0
    cp $c0                                        ; $68f1: $fe $c0
    rst $10                                       ; $68f3: $d7
    ld a, h                                       ; $68f4: $7c
    jp $d7dc                                      ; $68f5: $c3 $dc $d7


    cp $f0                                        ; $68f8: $fe $f0
    ld [$4f9e], a                                 ; $68fa: $ea $9e $4f
    ld d, [hl]                                    ; $68fd: $56
    ld l, $20                                     ; $68fe: $2e $20
    ld l, $4b                                     ; $6900: $2e $4b
    and e                                         ; $6902: $a3
    ld d, l                                       ; $6903: $55
    ld b, [hl]                                    ; $6904: $46
    ld a, a                                       ; $6905: $7f
    db $e3                                        ; $6906: $e3
    ldh [$ee], a                                  ; $6907: $e0 $ee
    ret nc                                        ; $6909: $d0

    ldh [$d9], a                                  ; $690a: $e0 $d9
    ld b, b                                       ; $690c: $40
    ldh [$d4], a                                  ; $690d: $e0 $d4

jr_068_690f:
    rst $10                                       ; $690f: $d7
    rst $10                                       ; $6910: $d7
    reti                                          ; $6911: $d9


    jp c, $c43c                                   ; $6912: $da $3c $c4

    jp c, $e9f0                                   ; $6915: $da $f0 $e9

    sbc a                                         ; $6918: $9f
    sbc h                                         ; $6919: $9c
    rst $38                                       ; $691a: $ff
    ld c, a                                       ; $691b: $4f
    ld e, b                                       ; $691c: $58
    ld [hl-], a                                   ; $691d: $32
    jr nz, @+$34                                  ; $691e: $20 $32

    ld e, [hl]                                    ; $6920: $5e
    ld d, l                                       ; $6921: $55
    sub c                                         ; $6922: $91
    ret c                                         ; $6923: $d8

    ret nz                                        ; $6924: $c0

    push hl                                       ; $6925: $e5
    ldh [$eb], a                                  ; $6926: $e0 $eb
    ret nc                                        ; $6928: $d0

    pop hl                                        ; $6929: $e1
    db $db                                        ; $692a: $db
    db $db                                        ; $692b: $db
    call $dae0                                    ; $692c: $cd $e0 $da
    db $db                                        ; $692f: $db
    ld sp, hl                                     ; $6930: $f9
    call c, $e59f                                 ; $6931: $dc $9f $e5
    ldh a, [$e9]                                  ; $6934: $f0 $e9
    and c                                         ; $6936: $a1
    ld b, l                                       ; $6937: $45
    ld c, e                                       ; $6938: $4b
    ld d, [hl]                                    ; $6939: $56
    dec l                                         ; $693a: $2d
    rra                                           ; $693b: $1f
    ld h, $2d                                     ; $693c: $26 $2d
    ld e, e                                       ; $693e: $5b
    sub c                                         ; $693f: $91
    sub b                                         ; $6940: $90
    ret nz                                        ; $6941: $c0

    and $e0                                       ; $6942: $e6 $e0
    ld [$e14f], a                                 ; $6944: $ea $4f $e1
    call nz, $e2cd                                ; $6947: $c4 $cd $e2
    jp nz, $d8e1                                  ; $694a: $c2 $e1 $d8

    cp b                                          ; $694d: $b8
    and l                                         ; $694e: $a5
    ldh a, [$e4]                                  ; $694f: $f0 $e4
    ldh a, [$a0]                                  ; $6951: $f0 $a0
    sbc [hl]                                      ; $6953: $9e
    ld d, c                                       ; $6954: $51
    rst $38                                       ; $6955: $ff
    ld e, [hl]                                    ; $6956: $5e
    ld e, d                                       ; $6957: $5a
    ld a, $35                                     ; $6958: $3e $35
    ld a, $46                                     ; $695a: $3e $46
    sub b                                         ; $695c: $90
    sub b                                         ; $695d: $90
    pop hl                                        ; $695e: $e1
    or [hl]                                       ; $695f: $b6
    inc a                                         ; $6960: $3c
    ret nz                                        ; $6961: $c0

    db $fc                                        ; $6962: $fc
    and l                                         ; $6963: $a5
    ret nc                                        ; $6964: $d0

    db $ed                                        ; $6965: $ed
    add d                                         ; $6966: $82
    and c                                         ; $6967: $a1
    db $e4                                        ; $6968: $e4
    push hl                                       ; $6969: $e5
    ret c                                         ; $696a: $d8

    db $ec                                        ; $696b: $ec
    ld hl, sp-$60                                 ; $696c: $f8 $a0
    halt                                          ; $696e: $76
    and a                                         ; $696f: $a7
    db $e4                                        ; $6970: $e4
    push hl                                       ; $6971: $e5
    ldh a, [$a1]                                  ; $6972: $f0 $a1
    sbc [hl]                                      ; $6974: $9e
    sub c                                         ; $6975: $91
    ld c, e                                       ; $6976: $4b
    dec de                                        ; $6977: $1b
    ld d, l                                       ; $6978: $55
    ld a, [hl-]                                   ; $6979: $3a
    ret nz                                        ; $697a: $c0

    ldh [$c3], a                                  ; $697b: $e0 $c3
    sub b                                         ; $697d: $90
    cp [hl]                                       ; $697e: $be
    ldh [$3c], a                                  ; $697f: $e0 $3c
    pop bc                                        ; $6981: $c1
    db $ec                                        ; $6982: $ec
    and e                                         ; $6983: $a3
    ld l, h                                       ; $6984: $6c
    ret nc                                        ; $6985: $d0

    db $eb                                        ; $6986: $eb
    adc b                                         ; $6987: $88
    ld [c], a                                     ; $6988: $e2
    and $e7                                       ; $6989: $e6 $e7
    halt                                          ; $698b: $76
    ret nz                                        ; $698c: $c0

    pop de                                        ; $698d: $d1
    ret nc                                        ; $698e: $d0

    ld sp, hl                                     ; $698f: $f9
    and b                                         ; $6990: $a0
    db $fc                                        ; $6991: $fc
    ldh a, [$e5]                                  ; $6992: $f0 $e5
    ldh a, [$a1]                                  ; $6994: $f0 $a1
    sbc [hl]                                      ; $6996: $9e
    sub b                                         ; $6997: $90
    ld b, e                                       ; $6998: $43
    ld b, b                                       ; $6999: $40
    dec [hl]                                      ; $699a: $35
    dec [hl]                                      ; $699b: $35
    ld b, a                                       ; $699c: $47
    ld a, [hl-]                                   ; $699d: $3a
    ld b, l                                       ; $699e: $45
    call nz, $e5bf                                ; $699f: $c4 $bf $e5
    call c, $d0a1                                 ; $69a2: $dc $a1 $d0
    db $ed                                        ; $69a5: $ed
    db $d3                                        ; $69a6: $d3
    inc b                                         ; $69a7: $04
    pop bc                                        ; $69a8: $c1
    rst $00                                       ; $69a9: $c7
    add sp, -$17                                  ; $69aa: $e8 $e9
    jp c, $a3b7                                   ; $69ac: $da $b7 $a3

    ldh a, [$e6]                                  ; $69af: $f0 $e6
    add h                                         ; $69b1: $84
    and c                                         ; $69b2: $a1
    or [hl]                                       ; $69b3: $b6
    sub c                                         ; $69b4: $91
    rst $38                                       ; $69b5: $ff
    ld a, c                                       ; $69b6: $79
    ld a, d                                       ; $69b7: $7a
    ld h, l                                       ; $69b8: $65
    ld h, [hl]                                    ; $69b9: $66
    dec [hl]                                      ; $69ba: $35
    ld b, b                                       ; $69bb: $40
    sub c                                         ; $69bc: $91
    call nz, $9087                                ; $69bd: $c4 $87 $90
    sub b                                         ; $69c0: $90
    jp $c5fc                                      ; $69c1: $c3 $fc $c5


    ret nc                                        ; $69c4: $d0

    db $ed                                        ; $69c5: $ed
    pop bc                                        ; $69c6: $c1
    and b                                         ; $69c7: $a0
    ld b, [hl]                                    ; $69c8: $46
    jp nz, $f0da                                  ; $69c9: $c2 $da $f0

    or a                                          ; $69cc: $b7
    and c                                         ; $69cd: $a1
    ld a, c                                       ; $69ce: $79
    ret nz                                        ; $69cf: $c0

    ldh a, [$e4]                                  ; $69d0: $f0 $e4
    pop bc                                        ; $69d2: $c1
    db $e3                                        ; $69d3: $e3
    ld a, [hl]                                    ; $69d4: $7e
    ld b, l                                       ; $69d5: $45
    ld a, [hl-]                                   ; $69d6: $3a
    ld [hl], a                                    ; $69d7: $77
    ld a, a                                       ; $69d8: $7f
    ld h, h                                       ; $69d9: $64
    ld a, h                                       ; $69da: $7c
    ld a, l                                       ; $69db: $7d
    sub c                                         ; $69dc: $91
    sub b                                         ; $69dd: $90
    sub b                                         ; $69de: $90
    call nz, $c5bc                                ; $69df: $c4 $bc $c5
    ld [bc], a                                    ; $69e2: $02
    ret nc                                        ; $69e3: $d0

    db $ed                                        ; $69e4: $ed
    jp c, $c044                                   ; $69e5: $da $44 $c0

    ld hl, $86a0                                  ; $69e8: $21 $a0 $86
    ret nz                                        ; $69eb: $c0

    or $e0                                        ; $69ec: $f6 $e0
    ld a, c                                       ; $69ee: $79
    ret nz                                        ; $69ef: $c0

    ldh a, [$e5]                                  ; $69f0: $f0 $e5
    cp $42                                        ; $69f2: $fe $42
    ldh [rDMA], a                                 ; $69f4: $e0 $46
    add b                                         ; $69f6: $80
    xor [hl]                                      ; $69f7: $ae
    ld b, [hl]                                    ; $69f8: $46
    ld a, $35                                     ; $69f9: $3e $35
    dec [hl]                                      ; $69fb: $35
    ld b, e                                       ; $69fc: $43
    add hl, sp                                    ; $69fd: $39
    ld a, a                                       ; $69fe: $7f
    cp a                                          ; $69ff: $bf
    pop hl                                        ; $6a00: $e1
    rst $38                                       ; $6a01: $ff
    pop bc                                        ; $6a02: $c1
    ret c                                         ; $6a03: $d8

    pop hl                                        ; $6a04: $e1
    ret nc                                        ; $6a05: $d0

    db $ed                                        ; $6a06: $ed
    call c, $c844                                 ; $6a07: $dc $44 $c8
    ld hl, sp+$3a                                 ; $6a0a: $f8 $3a
    pop bc                                        ; $6a0c: $c1
    ldh a, [$e5]                                  ; $6a0d: $f0 $e5
    ld b, d                                       ; $6a0f: $42
    ldh [$ae], a                                  ; $6a10: $e0 $ae
    add b                                         ; $6a12: $80
    xor a                                         ; $6a13: $af
    ld b, l                                       ; $6a14: $45
    ld a, [hl-]                                   ; $6a15: $3a
    ld c, $c0                                     ; $6a16: $0e $c0
    ldh [rDMA], a                                 ; $6a18: $e0 $46
    add c                                         ; $6a1a: $81
    ld b, [hl]                                    ; $6a1b: $46
    ret nz                                        ; $6a1c: $c0

    jp $e7da                                      ; $6a1d: $c3 $da $e7


    or $eb                                        ; $6a20: $f6 $eb
    inc b                                         ; $6a22: $04
    adc [hl]                                      ; $6a23: $8e
    rst $38                                       ; $6a24: $ff
    sbc a                                         ; $6a25: $9f
    sbc l                                         ; $6a26: $9d
    and d                                         ; $6a27: $a2
    or [hl]                                       ; $6a28: $b6
    sub c                                         ; $6a29: $91
    ld b, [hl]                                    ; $6a2a: $46
    xor a                                         ; $6a2b: $af
    add b                                         ; $6a2c: $80
    ld a, a                                       ; $6a2d: $7f
    ld b, l                                       ; $6a2e: $45
    ld [hl], $35                                  ; $6a2f: $36 $35
    jr c, jr_068_6a6a                             ; $6a31: $38 $37

    ld b, l                                       ; $6a33: $45
    xor [hl]                                      ; $6a34: $ae
    ret nz                                        ; $6a35: $c0

    ldh [rP1], a                                  ; $6a36: $e0 $00
    db $fd                                        ; $6a38: $fd
    add e                                         ; $6a39: $83
    jp nc, $c46b                                  ; $6a3a: $d2 $6b $c4

    ld h, c                                       ; $6a3d: $61
    jp nz, Jump_000_0462                          ; $6a3e: $c2 $62 $04

    add c                                         ; $6a41: $81
    or a                                          ; $6a42: $b7
    ld h, b                                       ; $6a43: $60
    push af                                       ; $6a44: $f5
    ld h, b                                       ; $6a45: $60
    inc a                                         ; $6a46: $3c
    jp $9fff                                      ; $6a47: $c3 $ff $9f


    or [hl]                                       ; $6a4a: $b6
    sub b                                         ; $6a4b: $90
    sub b                                         ; $6a4c: $90
    sub c                                         ; $6a4d: $91
    xor [hl]                                      ; $6a4e: $ae
    ld b, [hl]                                    ; $6a4f: $46
    ld a, c                                       ; $6a50: $79
    dec de                                        ; $6a51: $1b
    adc l                                         ; $6a52: $8d
    ld [hl], $c2                                  ; $6a53: $36 $c2
    pop hl                                        ; $6a55: $e1
    ld b, [hl]                                    ; $6a56: $46
    xor a                                         ; $6a57: $af
    ret nz                                        ; $6a58: $c0

    db $e3                                        ; $6a59: $e3
    sbc $e7                                       ; $6a5a: $de $e7
    ret nc                                        ; $6a5c: $d0

    add sp, $2c                                   ; $6a5d: $e8 $2c
    add [hl]                                      ; $6a5f: $86
    add d                                         ; $6a60: $82
    inc b                                         ; $6a61: $04
    add c                                         ; $6a62: $81
    db $d3                                        ; $6a63: $d3
    sub $36                                       ; $6a64: $d6 $36
    add c                                         ; $6a66: $81
    sub $76                                       ; $6a67: $d6 $76
    add c                                         ; $6a69: $81

jr_068_6a6a:
    pop bc                                        ; $6a6a: $c1
    pop hl                                        ; $6a6b: $e1
    rst $38                                       ; $6a6c: $ff
    sub b                                         ; $6a6d: $90
    ld b, [hl]                                    ; $6a6e: $46
    xor a                                         ; $6a6f: $af
    ld a, c                                       ; $6a70: $79
    ld a, [hl]                                    ; $6a71: $7e
    ld [hl], $3c                                  ; $6a72: $36 $3c
    ld b, h                                       ; $6a74: $44
    rst $38                                       ; $6a75: $ff
    xor [hl]                                      ; $6a76: $ae
    xor [hl]                                      ; $6a77: $ae
    xor a                                         ; $6a78: $af
    ld b, [hl]                                    ; $6a79: $46
    add e                                         ; $6a7a: $83
    add h                                         ; $6a7b: $84
    ld b, [hl]                                    ; $6a7c: $46
    sub b                                         ; $6a7d: $90
    ld de, $dea1                                  ; $6a7e: $11 $a1 $de
    jp hl                                         ; $6a81: $e9


    ret nc                                        ; $6a82: $d0

    db $ec                                        ; $6a83: $ec
    inc b                                         ; $6a84: $04
    add c                                         ; $6a85: $81
    ret c                                         ; $6a86: $d8

    ei                                            ; $6a87: $fb
    ld h, b                                       ; $6a88: $60
    cp b                                          ; $6a89: $b8
    add c                                         ; $6a8a: $81
    ld [hl], $81                                  ; $6a8b: $36 $81
    db $fd                                        ; $6a8d: $fd
    sbc [hl]                                      ; $6a8e: $9e
    ld d, d                                       ; $6a8f: $52
    ret nz                                        ; $6a90: $c0

    sub c                                         ; $6a91: $91
    xor [hl]                                      ; $6a92: $ae
    ld a, c                                       ; $6a93: $79
    ld a, [hl]                                    ; $6a94: $7e
    add hl, sp                                    ; $6a95: $39
    dec [hl]                                      ; $6a96: $35
    rst $38                                       ; $6a97: $ff
    dec [hl]                                      ; $6a98: $35
    ld b, b                                       ; $6a99: $40
    xor a                                         ; $6a9a: $af
    xor a                                         ; $6a9b: $af
    add e                                         ; $6a9c: $83
    adc c                                         ; $6a9d: $89
    add a                                         ; $6a9e: $87
    add l                                         ; $6a9f: $85
    dec b                                         ; $6aa0: $05
    sub c                                         ; $6aa1: $91
    pop bc                                        ; $6aa2: $c1
    and c                                         ; $6aa3: $a1
    db $d3                                        ; $6aa4: $d3
    sbc $e6                                       ; $6aa5: $de $e6
    ret nc                                        ; $6aa7: $d0

    add sp, $0d                                   ; $6aa8: $e8 $0d
    pop bc                                        ; $6aaa: $c1
    rlca                                          ; $6aab: $07
    add b                                         ; $6aac: $80
    or $61                                        ; $6aad: $f6 $61
    sub [hl]                                      ; $6aaf: $96
    rst $30                                       ; $6ab0: $f7
    ld h, b                                       ; $6ab1: $60
    reti                                          ; $6ab2: $d9


    db $dd                                        ; $6ab3: $dd
    db $fd                                        ; $6ab4: $fd
    and c                                         ; $6ab5: $a1
    sbc [hl]                                      ; $6ab6: $9e
    ld d, d                                       ; $6ab7: $52
    ret nz                                        ; $6ab8: $c0

    inc bc                                        ; $6ab9: $03
    pop hl                                        ; $6aba: $e1
    ld a, [hl-]                                   ; $6abb: $3a
    rst $38                                       ; $6abc: $ff
    ld l, h                                       ; $6abd: $6c
    ld l, a                                       ; $6abe: $6f
    adc b                                         ; $6abf: $88
    adc b                                         ; $6ac0: $88
    adc b                                         ; $6ac1: $88
    add a                                         ; $6ac2: $87
    add l                                         ; $6ac3: $85
    ld b, [hl]                                    ; $6ac4: $46
    ld [hl-], a                                   ; $6ac5: $32
    pop bc                                        ; $6ac6: $c1
    ld [c], a                                     ; $6ac7: $e2
    ret c                                         ; $6ac8: $d8

    sbc $e8                                       ; $6ac9: $de $e8
    ret nc                                        ; $6acb: $d0

    rst $20                                       ; $6acc: $e7
    db $d3                                        ; $6acd: $d3
    jp c, $8207                                   ; $6ace: $da $07 $82

    ld b, [hl]                                    ; $6ad1: $46
    ld h, b                                       ; $6ad2: $60
    adc l                                         ; $6ad3: $8d
    pop de                                        ; $6ad4: $d1
    rst $30                                       ; $6ad5: $f7
    ld h, b                                       ; $6ad6: $60
    ret nc                                        ; $6ad7: $d0

    ret nc                                        ; $6ad8: $d0

    ldh a, [$e0]                                  ; $6ad9: $f0 $e0
    adc b                                         ; $6adb: $88
    and b                                         ; $6adc: $a0
    add c                                         ; $6add: $81
    pop hl                                        ; $6ade: $e1
    adc l                                         ; $6adf: $8d
    cp a                                          ; $6ae0: $bf
    add hl, sp                                    ; $6ae1: $39
    dec [hl]                                      ; $6ae2: $35
    ld [hl], e                                    ; $6ae3: $73
    ld l, [hl]                                    ; $6ae4: $6e
    ld b, b                                       ; $6ae5: $40
    ld b, [hl]                                    ; $6ae6: $46
    rst $38                                       ; $6ae7: $ff
    ldh [$9c], a                                  ; $6ae8: $e0 $9c
    ld de, $7f9d                                  ; $6aea: $11 $9d $7f
    ld h, c                                       ; $6aed: $61
    sbc $e9                                       ; $6aee: $de $e9
    ret nc                                        ; $6af0: $d0

    rst $20                                       ; $6af1: $e7
    rst $10                                       ; $6af2: $d7
    add [hl]                                      ; $6af3: $86
    add h                                         ; $6af4: $84
    jr c, jr_068_6b58                             ; $6af5: $38 $61

    or $40                                        ; $6af7: $f6 $40
    pop af                                        ; $6af9: $f1
    call nc, $e1f0                                ; $6afa: $d4 $f0 $e1
    pop bc                                        ; $6afd: $c1
    ret nz                                        ; $6afe: $c0

    add c                                         ; $6aff: $81
    ld [c], a                                     ; $6b00: $e2
    dec [hl]                                      ; $6b01: $35
    ld l, d                                       ; $6b02: $6a
    xor h                                         ; $6b03: $ac
    add hl, sp                                    ; $6b04: $39
    nop                                           ; $6b05: $00
    jp $c2e0                                      ; $6b06: $c3 $e0 $c2


    ldh [$a3], a                                  ; $6b09: $e0 $a3
    ld b, c                                       ; $6b0b: $41
    sbc $e9                                       ; $6b0c: $de $e9
    ret nc                                        ; $6b0e: $d0

    rst $20                                       ; $6b0f: $e7
    rlca                                          ; $6b10: $07
    add a                                         ; $6b11: $87
    ld hl, sp+$62                                 ; $6b12: $f8 $62
    rst $30                                       ; $6b14: $f7

Jump_068_6b15:
    ld h, e                                       ; $6b15: $63
    rst $30                                       ; $6b16: $f7
    and c                                         ; $6b17: $a1
    sub b                                         ; $6b18: $90
    sub c                                         ; $6b19: $91
    add c                                         ; $6b1a: $81
    pop hl                                        ; $6b1b: $e1
    dec [hl]                                      ; $6b1c: $35
    ld l, d                                       ; $6b1d: $6a
    xor l                                         ; $6b1e: $ad
    ld a, $01                                     ; $6b1f: $3e $01
    ld b, [hl]                                    ; $6b21: $46
    rst $00                                       ; $6b22: $c7
    ret nz                                        ; $6b23: $c0

    and e                                         ; $6b24: $a3
    ld b, e                                       ; $6b25: $43
    sbc $ea                                       ; $6b26: $de $ea
    ret nc                                        ; $6b28: $d0

    and $07                                       ; $6b29: $e6 $07
    add a                                         ; $6b2b: $87
    ld hl, sp+$62                                 ; $6b2c: $f8 $62
    rst $30                                       ; $6b2e: $f7
    ld h, e                                       ; $6b2f: $63
    ld e, h                                       ; $6b30: $5c
    ccf                                           ; $6b31: $3f
    ldh [rSC], a                                  ; $6b32: $e0 $02
    ldh [$ac], a                                  ; $6b34: $e0 $ac
    dec [hl]                                      ; $6b36: $35
    ld l, d                                       ; $6b37: $6a
    call nz, $9ea0                                ; $6b38: $c4 $a0 $9e
    add e                                         ; $6b3b: $83
    ld b, c                                       ; $6b3c: $41
    add b                                         ; $6b3d: $80
    and e                                         ; $6b3e: $a3
    ld b, c                                       ; $6b3f: $41
    sbc $ea                                       ; $6b40: $de $ea
    ret nc                                        ; $6b42: $d0

    and $cc                                       ; $6b43: $e6 $cc
    inc hl                                        ; $6b45: $23
    cp l                                          ; $6b46: $bd
    ld hl, $8708                                  ; $6b47: $21 $08 $87
    ld a, a                                       ; $6b4a: $7f
    pop bc                                        ; $6b4b: $c1
    add b                                         ; $6b4c: $80
    rla                                           ; $6b4d: $17
    ld b, d                                       ; $6b4e: $42
    dec [hl]                                      ; $6b4f: $35
    xor l                                         ; $6b50: $ad
    ld b, b                                       ; $6b51: $40
    ldh [rLCDC], a                                ; $6b52: $e0 $40
    ld b, l                                       ; $6b54: $45
    ld h, [hl]                                    ; $6b55: $66
    and $67                                       ; $6b56: $e6 $67

jr_068_6b58:
    ret nc                                        ; $6b58: $d0

    db $eb                                        ; $6b59: $eb
    ret nz                                        ; $6b5a: $c0

    call z, Call_068_4721                         ; $6b5b: $cc $21 $47
    add b                                         ; $6b5e: $80
    ld c, $80                                     ; $6b5f: $0e $80
    ld a, c                                       ; $6b61: $79
    inc hl                                        ; $6b62: $23
    ld hl, sp+$21                                 ; $6b63: $f8 $21
    ld a, a                                       ; $6b65: $7f
    ret nz                                        ; $6b66: $c0

    add b                                         ; $6b67: $80
    ld b, h                                       ; $6b68: $44
    dec c                                         ; $6b69: $0d
    inc a                                         ; $6b6a: $3c
    ld b, b                                       ; $6b6b: $40
    pop hl                                        ; $6b6c: $e1
    ld b, d                                       ; $6b6d: $42
    xor [hl]                                      ; $6b6e: $ae
    ld b, e                                       ; $6b6f: $43
    ld b, d                                       ; $6b70: $42
    xor $62                                       ; $6b71: $ee $62
    ld e, [hl]                                    ; $6b73: $5e
    ld h, $d0                                     ; $6b74: $26 $d0
    ld [$c784], a                                 ; $6b76: $ea $84 $c7
    ld h, b                                       ; $6b79: $60
    rlca                                          ; $6b7a: $07
    add b                                         ; $6b7b: $80
    rst $10                                       ; $6b7c: $d7
    ld c, $80                                     ; $6b7d: $0e $80
    ld a, l                                       ; $6b7f: $7d
    ld h, e                                       ; $6b80: $63
    ld hl, sp+$21                                 ; $6b81: $f8 $21
    ld b, b                                       ; $6b83: $40
    ld [c], a                                     ; $6b84: $e2
    ld [hl], $3f                                  ; $6b85: $36 $3f
    dec [hl]                                      ; $6b87: $35
    dec [hl]                                      ; $6b88: $35
    ld [hl], l                                    ; $6b89: $75
    ld h, [hl]                                    ; $6b8a: $66
    add hl, sp                                    ; $6b8b: $39
    xor a                                         ; $6b8c: $af
    add d                                         ; $6b8d: $82
    call nz, $e6e0                                ; $6b8e: $c4 $e0 $e6
    call nz, $edd0                                ; $6b91: $c4 $d0 $ed
    ret                                           ; $6b94: $c9


    and e                                         ; $6b95: $a3
    jp c, $810e                                   ; $6b96: $da $0e $81

    push af                                       ; $6b99: $f5
    ld h, d                                       ; $6b9a: $62
    ld b, l                                       ; $6b9b: $45
    add e                                         ; $6b9c: $83
    sub b                                         ; $6b9d: $90
    add d                                         ; $6b9e: $82
    dec e                                         ; $6b9f: $1d
    add e                                         ; $6ba0: $83
    push bc                                       ; $6ba1: $c5
    add c                                         ; $6ba2: $81
    ld [hl], a                                    ; $6ba3: $77
    ld h, h                                       ; $6ba4: $64
    ld a, e                                       ; $6ba5: $7b
    ld b, d                                       ; $6ba6: $42
    add b                                         ; $6ba7: $80
    add h                                         ; $6ba8: $84
    ld h, c                                       ; $6ba9: $61
    ldh [$e6], a                                  ; $6baa: $e0 $e6
    ret nz                                        ; $6bac: $c0

    ret nc                                        ; $6bad: $d0

    db $ed                                        ; $6bae: $ed
    rst $00                                       ; $6baf: $c7
    ld h, b                                       ; $6bb0: $60
    add c                                         ; $6bb1: $81
    ld b, b                                       ; $6bb2: $40
    ld l, h                                       ; $6bb3: $6c
    call nz, $4439                                ; $6bb4: $c4 $39 $44
    add [hl]                                      ; $6bb7: $86
    ld h, b                                       ; $6bb8: $60
    add l                                         ; $6bb9: $85
    adc e                                         ; $6bba: $8b
    scf                                           ; $6bbb: $37
    ld b, [hl]                                    ; $6bbc: $46
    ld a, $ac                                     ; $6bbd: $3e $ac
    ld b, h                                       ; $6bbf: $44

Jump_068_6bc0:
    add b                                         ; $6bc0: $80
    ld c, e                                       ; $6bc1: $4b
    ld c, e                                       ; $6bc2: $4b
    ld b, d                                       ; $6bc3: $42
    add b                                         ; $6bc4: $80
    add e                                         ; $6bc5: $83
    add h                                         ; $6bc6: $84
    db $10                                        ; $6bc7: $10
    push de                                       ; $6bc8: $d5
    ld h, d                                       ; $6bc9: $62
    ret nc                                        ; $6bca: $d0

    db $ed                                        ; $6bcb: $ed
    rst $00                                       ; $6bcc: $c7
    ld h, b                                       ; $6bcd: $60
    add c                                         ; $6bce: $81
    ld b, e                                       ; $6bcf: $43
    ld [$62f5], a                                 ; $6bd0: $ea $f5 $62
    dec de                                        ; $6bd3: $1b
    add d                                         ; $6bd4: $82
    ret nz                                        ; $6bd5: $c0

    add b                                         ; $6bd6: $80
    rst $18                                       ; $6bd7: $df
    xor [hl]                                      ; $6bd8: $ae
    add d                                         ; $6bd9: $82
    add e                                         ; $6bda: $83
    ld a, $ad                                     ; $6bdb: $3e $ad
    inc b                                         ; $6bdd: $04
    add b                                         ; $6bde: $80
    ld d, d                                       ; $6bdf: $52
    ld h, c                                       ; $6be0: $61
    add c                                         ; $6be1: $81
    ld d, l                                       ; $6be2: $55
    ld b, d                                       ; $6be3: $42

Call_068_6be4:
    add c                                         ; $6be4: $81
    db $fc                                        ; $6be5: $fc
    ld [bc], a                                    ; $6be6: $02
    ldh [$e2], a                                  ; $6be7: $e0 $e2
    ret nc                                        ; $6be9: $d0

    xor $2f                                       ; $6bea: $ee $2f
    sub b                                         ; $6bec: $90
    ld a, a                                       ; $6bed: $7f
    and b                                         ; $6bee: $a0
    xor a                                         ; $6bef: $af
    rst $18                                       ; $6bf0: $df
    add l                                         ; $6bf1: $85
    add a                                         ; $6bf2: $87
    ld [hl], c                                    ; $6bf3: $71
    ld [hl], d                                    ; $6bf4: $72
    ld l, h                                       ; $6bf5: $6c
    inc bc                                        ; $6bf6: $03
    ld h, b                                       ; $6bf7: $60
    ld d, d                                       ; $6bf8: $52
    ld e, d                                       ; $6bf9: $5a
    ld b, c                                       ; $6bfa: $41
    adc h                                         ; $6bfb: $8c
    pop bc                                        ; $6bfc: $c1
    ld h, l                                       ; $6bfd: $65
    rst $18                                       ; $6bfe: $df
    ld l, e                                       ; $6bff: $6b
    push bc                                       ; $6c00: $c5
    ld h, e                                       ; $6c01: $63
    jr nc, jr_068_6c11                            ; $6c02: $30 $0d

    ldh a, [$62]                                  ; $6c04: $f0 $62
    and c                                         ; $6c06: $a1
    ld b, c                                       ; $6c07: $41
    add b                                         ; $6c08: $80
    rst $38                                       ; $6c09: $ff
    ld b, [hl]                                    ; $6c0a: $46
    ld b, l                                       ; $6c0b: $45
    ld a, [hl-]                                   ; $6c0c: $3a
    ld l, [hl]                                    ; $6c0d: $6e
    ld [hl], b                                    ; $6c0e: $70
    ld [hl], d                                    ; $6c0f: $72
    ld l, h                                       ; $6c10: $6c

jr_068_6c11:
    ld [hl], $67                                  ; $6c11: $36 $67
    ld b, l                                       ; $6c13: $45
    ld b, e                                       ; $6c14: $43
    xor [hl]                                      ; $6c15: $ae
    add b                                         ; $6c16: $80
    ld h, [hl]                                    ; $6c17: $66
    cp $6e                                        ; $6c18: $fe $6e
    and b                                         ; $6c1a: $a0
    and b                                         ; $6c1b: $a0
    jr nc, jr_068_6c29                            ; $6c1c: $30 $0b

    ld [hl], h                                    ; $6c1e: $74
    ld sp, hl                                     ; $6c1f: $f9
    inc h                                         ; $6c20: $24
    nop                                           ; $6c21: $00
    add c                                         ; $6c22: $81
    ld b, [hl]                                    ; $6c23: $46
    add d                                         ; $6c24: $82
    add b                                         ; $6c25: $80
    dec [hl]                                      ; $6c26: $35
    ld l, [hl]                                    ; $6c27: $6e
    ld l, a                                       ; $6c28: $6f

jr_068_6c29:
    cp a                                          ; $6c29: $bf
    ldh [$61], a                                  ; $6c2a: $e0 $61
    xor a                                         ; $6c2c: $af
    add b                                         ; $6c2d: $80
    ld h, c                                       ; $6c2e: $61
    ret nz                                        ; $6c2f: $c0

    ld b, e                                       ; $6c30: $43
    inc d                                         ; $6c31: $14
    ret nz                                        ; $6c32: $c0

    ret nc                                        ; $6c33: $d0

    ld [$d5d8], a                                 ; $6c34: $ea $d8 $d5
    jr nc, jr_068_6c44                            ; $6c37: $30 $0b

    ld [hl], h                                    ; $6c39: $74
    db $f4                                        ; $6c3a: $f4
    and e                                         ; $6c3b: $a3
    cp a                                          ; $6c3c: $bf
    ld h, d                                       ; $6c3d: $62
    sub c                                         ; $6c3e: $91
    ret nz                                        ; $6c3f: $c0

    pop hl                                        ; $6c40: $e1
    dec [hl]                                      ; $6c41: $35
    ld l, [hl]                                    ; $6c42: $6e
    ld [hl], h                                    ; $6c43: $74

jr_068_6c44:
    ld b, c                                       ; $6c44: $41
    ld h, b                                       ; $6c45: $60
    inc c                                         ; $6c46: $0c
    ld b, b                                       ; $6c47: $40
    ld h, c                                       ; $6c48: $61
    ret nz                                        ; $6c49: $c0

    ld b, e                                       ; $6c4a: $43
    db $d3                                        ; $6c4b: $d3
    ret nc                                        ; $6c4c: $d0

    ret nc                                        ; $6c4d: $d0

    db $eb                                        ; $6c4e: $eb
    jr nc, jr_068_6c5d                            ; $6c4f: $30 $0c

    db $f4                                        ; $6c51: $f4
    and h                                         ; $6c52: $a4
    jp Jump_000_2f42                              ; $6c53: $c3 $42 $2f


    jp Jump_000_3645                              ; $6c56: $c3 $45 $36


    dec sp                                        ; $6c59: $3b
    ld a, [hl]                                    ; $6c5a: $7e
    ldh [rBCPD], a                                ; $6c5b: $e0 $69

jr_068_6c5d:
    nop                                           ; $6c5d: $00
    ld b, b                                       ; $6c5e: $40
    nop                                           ; $6c5f: $00
    ld h, c                                       ; $6c60: $61
    ret nz                                        ; $6c61: $c0

    cp a                                          ; $6c62: $bf
    inc hl                                        ; $6c63: $23
    ret nc                                        ; $6c64: $d0

    db $ec                                        ; $6c65: $ec
    ld a, [hl-]                                   ; $6c66: $3a
    add c                                         ; $6c67: $81
    jr nc, jr_068_6c73                            ; $6c68: $30 $09

    db $f4                                        ; $6c6a: $f4
    and h                                         ; $6c6b: $a4
    add e                                         ; $6c6c: $83
    ld b, d                                       ; $6c6d: $42
    call nz, Call_068_7b91                        ; $6c6e: $c4 $91 $7b
    ld b, l                                       ; $6c71: $45
    ld b, e                                       ; $6c72: $43

jr_068_6c73:
    cp l                                          ; $6c73: $bd
    and b                                         ; $6c74: $a0
    ld l, e                                       ; $6c75: $6b
    ld l, h                                       ; $6c76: $6c
    inc a                                         ; $6c77: $3c
    ld b, h                                       ; $6c78: $44
    add b                                         ; $6c79: $80
    ld h, c                                       ; $6c7a: $61
    inc c                                         ; $6c7b: $0c
    add b                                         ; $6c7c: $80
    jr nz, @-$25                                  ; $6c7d: $20 $d9

    ld h, b                                       ; $6c7f: $60
    rst $10                                       ; $6c80: $d7
    jp nc, $ead0                                  ; $6c81: $d2 $d0 $ea

    di                                            ; $6c84: $f3
    and c                                         ; $6c85: $a1
    jr nc, jr_068_6c91                            ; $6c86: $30 $09

    db $f4                                        ; $6c88: $f4
    and l                                         ; $6c89: $a5
    di                                            ; $6c8a: $f3
    sbc $df                                       ; $6c8b: $de $df
    db $fd                                        ; $6c8d: $fd
    ld h, b                                       ; $6c8e: $60
    db $fd                                        ; $6c8f: $fd
    ld b, b                                       ; $6c90: $40

jr_068_6c91:
    ld b, h                                       ; $6c91: $44
    ld a, [hl-]                                   ; $6c92: $3a
    dec [hl]                                      ; $6c93: $35
    ld l, [hl]                                    ; $6c94: $6e
    bit 6, b                                      ; $6c95: $cb $70
    ld [hl], c                                    ; $6c97: $71
    cp [hl]                                       ; $6c98: $be
    ld h, b                                       ; $6c99: $60
    sub c                                         ; $6c9a: $91
    ld b, b                                       ; $6c9b: $40
    ld h, b                                       ; $6c9c: $60
    reti                                          ; $6c9d: $d9


    ld h, c                                       ; $6c9e: $61
    jp c, $b0d3                                   ; $6c9f: $da $d3 $b0

    ret nc                                        ; $6ca2: $d0

    ld [$e0f0], a                                 ; $6ca3: $ea $f0 $e0
    jr nc, jr_068_6cb2                            ; $6ca6: $30 $0a

    db $f4                                        ; $6ca8: $f4
    and l                                         ; $6ca9: $a5
    ldh [$e1], a                                  ; $6caa: $e0 $e1
    ret nz                                        ; $6cac: $c0

    pop hl                                        ; $6cad: $e1
    jp $9029                                      ; $6cae: $c3 $29 $90


    ld [bc], a                                    ; $6cb1: $02

jr_068_6cb2:
    ld b, c                                       ; $6cb2: $41
    ld b, b                                       ; $6cb3: $40
    ld b, c                                       ; $6cb4: $41
    sub c                                         ; $6cb5: $91
    add d                                         ; $6cb6: $82
    dec h                                         ; $6cb7: $25
    call c, Call_000_0023                         ; $6cb8: $dc $23 $00
    ret nc                                        ; $6cbb: $d0

    add sp, -$28                                  ; $6cbc: $e8 $d8
    ldh a, [$e0]                                  ; $6cbe: $f0 $e0
    jr nc, @+$0d                                  ; $6cc0: $30 $0b

    di                                            ; $6cc2: $f3
    inc h                                         ; $6cc3: $24
    ld [c], a                                     ; $6cc4: $e2
    db $e3                                        ; $6cc5: $e3
    ld a, l                                       ; $6cc6: $7d
    ld h, b                                       ; $6cc7: $60
    jp $05c4                                      ; $6cc8: $c3 $c4 $05


    jp Jump_068_4102                              ; $6ccb: $c3 $02 $41


    dec [hl]                                      ; $6cce: $35
    ld a, a                                       ; $6ccf: $7f
    ld bc, $2382                                  ; $6cd0: $01 $82 $23
    xor d                                         ; $6cd3: $aa
    nop                                           ; $6cd4: $00
    ld b, e                                       ; $6cd5: $43
    nop                                           ; $6cd6: $00
    ret nc                                        ; $6cd7: $d0

    jp hl                                         ; $6cd8: $e9


    ld [hl], c                                    ; $6cd9: $71
    and b                                         ; $6cda: $a0
    ld a, $80                                     ; $6cdb: $3e $80
    jr nc, jr_068_6ce9                            ; $6cdd: $30 $0a

    cp $a8                                        ; $6cdf: $fe $a8
    call nz, $c490                                ; $6ce1: $c4 $90 $c4
    ld b, b                                       ; $6ce4: $40
    ldh [rSC], a                                  ; $6ce5: $e0 $02
    ret nz                                        ; $6ce7: $c0

    db $e3                                        ; $6ce8: $e3

jr_068_6ce9:
    sub b                                         ; $6ce9: $90
    ld [bc], a                                    ; $6cea: $02
    ld [hl+], a                                   ; $6ceb: $22
    xor d                                         ; $6cec: $aa
    nop                                           ; $6ced: $00
    ld b, e                                       ; $6cee: $43
    nop                                           ; $6cef: $00
    ret nc                                        ; $6cf0: $d0

    ld [$227f], a                                 ; $6cf1: $ea $7f $22
    jr nc, jr_068_6d05                            ; $6cf4: $30 $0f

    nop                                           ; $6cf6: $00
    dec a                                         ; $6cf7: $3d
    ld b, e                                       ; $6cf8: $43
    ld b, b                                       ; $6cf9: $40
    db $e4                                        ; $6cfa: $e4
    ret nz                                        ; $6cfb: $c0

    pop hl                                        ; $6cfc: $e1
    ld b, c                                       ; $6cfd: $41
    ld [bc], a                                    ; $6cfe: $02
    xor d                                         ; $6cff: $aa
    ld [bc], a                                    ; $6d00: $02
    ret nc                                        ; $6d01: $d0

    ld a, [c]                                     ; $6d02: $f2
    jr nc, @+$0a                                  ; $6d03: $30 $08

jr_068_6d05:
    ldh a, [$e4]                                  ; $6d05: $f0 $e4
    inc c                                         ; $6d07: $0c
    db $fc                                        ; $6d08: $fc
    ld [hl+], a                                   ; $6d09: $22
    db $fc                                        ; $6d0a: $fc

jr_068_6d0b:
    and e                                         ; $6d0b: $a3
    ld a, $46                                     ; $6d0c: $3e $46
    pop bc                                        ; $6d0e: $c1
    pop bc                                        ; $6d0f: $c1
    ld d, l                                       ; $6d10: $55
    ld a, [hl+]                                   ; $6d11: $2a
    ret nc                                        ; $6d12: $d0

    add sp, $30                                   ; $6d13: $e8 $30
    dec c                                         ; $6d15: $0d
    nop                                           ; $6d16: $00
    ldh a, [$e4]                                  ; $6d17: $f0 $e4

jr_068_6d19:
    dec a                                         ; $6d19: $3d
    jr nz, @+$7d                                  ; $6d1a: $20 $7b

    jr nz, jr_068_6d19                            ; $6d1c: $20 $fb

    ld h, c                                       ; $6d1e: $61
    cp a                                          ; $6d1f: $bf
    and c                                         ; $6d20: $a1
    ld a, l                                       ; $6d21: $7d
    ld b, h                                       ; $6d22: $44

jr_068_6d23:
    rst $00                                       ; $6d23: $c7
    ld bc, $edd0                                  ; $6d24: $01 $d0 $ed
    ldh a, [$30]                                  ; $6d27: $f0 $30
    dec c                                         ; $6d29: $0d
    ldh a, [$e4]                                  ; $6d2a: $f0 $e4
    db $fc                                        ; $6d2c: $fc
    and d                                         ; $6d2d: $a2
    ei                                            ; $6d2e: $fb
    add b                                         ; $6d2f: $80
    ld [hl], $35                                  ; $6d30: $36 $35
    ld [hl], $45                                  ; $6d32: $36 $45
    jp nz, Jump_068_413c                          ; $6d34: $c2 $3c $41

    ld b, [hl]                                    ; $6d37: $46
    ld a, b                                       ; $6d38: $78
    ld h, h                                       ; $6d39: $64
    ret nc                                        ; $6d3a: $d0

    xor $30                                       ; $6d3b: $ee $30
    dec c                                         ; $6d3d: $0d
    ei                                            ; $6d3e: $fb
    ld l, b                                       ; $6d3f: $68
    ld b, [hl]                                    ; $6d40: $46
    ld b, [hl]                                    ; $6d41: $46
    cpl                                           ; $6d42: $2f
    xor [hl]                                      ; $6d43: $ae
    ld b, [hl]                                    ; $6d44: $46
    ld b, l                                       ; $6d45: $45
    ld b, c                                       ; $6d46: $41
    pop bc                                        ; $6d47: $c1

Call_068_6d48:
    pop hl                                        ; $6d48: $e1
    xor [hl]                                      ; $6d49: $ae
    ld sp, hl                                     ; $6d4a: $f9
    jr nz, jr_068_6d0b                            ; $6d4b: $20 $be

    nop                                           ; $6d4d: $00
    and b                                         ; $6d4e: $a0
    add hl, sp                                    ; $6d4f: $39
    ld b, e                                       ; $6d50: $43
    ret nc                                        ; $6d51: $d0

    db $eb                                        ; $6d52: $eb
    jr nc, @+$0f                                  ; $6d53: $30 $0d

    ldh a, [$e5]                                  ; $6d55: $f0 $e5
    ret nz                                        ; $6d57: $c0

    ld [c], a                                     ; $6d58: $e2
    xor a                                         ; $6d59: $af
    add l                                         ; $6d5a: $85
    ld [c], a                                     ; $6d5b: $e2
    ld b, [hl]                                    ; $6d5c: $46
    inc bc                                        ; $6d5d: $03
    xor [hl]                                      ; $6d5e: $ae
    xor a                                         ; $6d5f: $af
    cp a                                          ; $6d60: $bf
    ldh [$7e], a                                  ; $6d61: $e0 $7e
    nop                                           ; $6d63: $00
    add hl, sp                                    ; $6d64: $39
    ld b, e                                       ; $6d65: $43
    ret nc                                        ; $6d66: $d0

    db $eb                                        ; $6d67: $eb
    jr nc, jr_068_6d77                            ; $6d68: $30 $0d

    pop af                                        ; $6d6a: $f1
    ld h, [hl]                                    ; $6d6b: $66
    inc de                                        ; $6d6c: $13

Jump_068_6d6d:
    sbc a                                         ; $6d6d: $9f
    sbc h                                         ; $6d6e: $9c
    jp Jump_068_7ee3                              ; $6d6f: $c3 $e3 $7e


    jr nz, jr_068_6d23                            ; $6d72: $20 $af

    or a                                          ; $6d74: $b7
    ldh [$b8], a                                  ; $6d75: $e0 $b8

jr_068_6d77:
    ld b, c                                       ; $6d77: $41
    add hl, sp                                    ; $6d78: $39
    ld b, e                                       ; $6d79: $43
    nop                                           ; $6d7a: $00
    pop de                                        ; $6d7b: $d1
    ld l, [hl]                                    ; $6d7c: $6e
    jr nc, jr_068_6d88                            ; $6d7d: $30 $09

    inc h                                         ; $6d7f: $24
    add a                                         ; $6d80: $87
    ld b, c                                       ; $6d81: $41

Jump_068_6d82:
    ldh [$fe], a                                  ; $6d82: $e0 $fe
    add sp, $01                                   ; $6d84: $e8 $01
    push hl                                       ; $6d86: $e5
    ret nc                                        ; $6d87: $d0

jr_068_6d88:
    db $ed                                        ; $6d88: $ed
    jp nz, Jump_000_0c62                          ; $6d89: $c2 $62 $0c

    jr nc, jr_068_6d96                            ; $6d8c: $30 $08

    ldh a, [$e6]                                  ; $6d8e: $f0 $e6
    and b                                         ; $6d90: $a0
    and c                                         ; $6d91: $a1
    add hl, bc                                    ; $6d92: $09
    db $e3                                        ; $6d93: $e3
    pop bc                                        ; $6d94: $c1
    jp hl                                         ; $6d95: $e9


jr_068_6d96:
    call c, $d0a5                                 ; $6d96: $dc $a5 $d0
    add sp, $00                                   ; $6d99: $e8 $00
    ld b, b                                       ; $6d9b: $40
    ld [bc], a                                    ; $6d9c: $02
    jr nc, jr_068_6dac                            ; $6d9d: $30 $0d

    db $fc                                        ; $6d9f: $fc
    ld hl, $e041                                  ; $6da0: $21 $41 $e0
    add hl, bc                                    ; $6da3: $09
    ld [c], a                                     ; $6da4: $e2
    jp nz, Jump_000_3ac3                          ; $6da5: $c2 $c3 $3a

    ld hl, $65e3                                  ; $6da8: $21 $e3 $65
    nop                                           ; $6dab: $00

jr_068_6dac:
    ret nc                                        ; $6dac: $d0

    rst $28                                       ; $6dad: $ef
    jr nc, @+$0a                                  ; $6dae: $30 $08

    ldh a, [$e5]                                  ; $6db0: $f0 $e5
    ld [bc], a                                    ; $6db2: $02
    pop hl                                        ; $6db3: $e1
    add hl, bc                                    ; $6db4: $09
    pop hl                                        ; $6db5: $e1
    ld bc, $7ae3                                  ; $6db6: $01 $e3 $7a
    ld hl, $67e3                                  ; $6db9: $21 $e3 $67
    nop                                           ; $6dbc: $00
    ret nc                                        ; $6dbd: $d0

    jp hl                                         ; $6dbe: $e9


    ld [hl-], a                                   ; $6dbf: $32
    ld bc, $8027                                  ; $6dc0: $01 $27 $80
    jr nc, jr_068_6dcb                            ; $6dc3: $30 $06

    ldh a, [$e5]                                  ; $6dc5: $f0 $e5
    ld [bc], a                                    ; $6dc7: $02
    db $eb                                        ; $6dc8: $eb
    ld [bc], a                                    ; $6dc9: $02
    pop bc                                        ; $6dca: $c1

jr_068_6dcb:
    db $e3                                        ; $6dcb: $e3
    ld h, a                                       ; $6dcc: $67
    ret nz                                        ; $6dcd: $c0

    ret nc                                        ; $6dce: $d0

Call_068_6dcf:
    jp hl                                         ; $6dcf: $e9


    ld [hl-], a                                   ; $6dd0: $32
    nop                                           ; $6dd1: $00
    daa                                           ; $6dd2: $27
    add c                                         ; $6dd3: $81
    ld [hl+], a                                   ; $6dd4: $22
    add hl, bc                                    ; $6dd5: $09
    ldh a, [$e2]                                  ; $6dd6: $f0 $e2
    jp nz, Jump_068_45c3                          ; $6dd8: $c2 $c3 $45

    scf                                           ; $6ddb: $37
    dec d                                         ; $6ddc: $15
    dec a                                         ; $6ddd: $3d
    rst $38                                       ; $6dde: $ff
    ldh [$37], a                                  ; $6ddf: $e0 $37
    cp [hl]                                       ; $6de1: $be
    and b                                         ; $6de2: $a0
    sbc [hl]                                      ; $6de3: $9e
    rst $10                                       ; $6de4: $d7
    daa                                           ; $6de5: $27
    ret nc                                        ; $6de6: $d0

    ld [$0332], a                                 ; $6de7: $ea $32 $03
    ld e, h                                       ; $6dea: $5c
    ld [hl+], a                                   ; $6deb: $22
    dec c                                         ; $6dec: $0d
    ld b, d                                       ; $6ded: $42
    push bc                                       ; $6dee: $c5
    add hl, sp                                    ; $6def: $39
    and h                                         ; $6df0: $a4
    ld h, h                                       ; $6df1: $64
    rst $38                                       ; $6df2: $ff
    ldh [$a5], a                                  ; $6df3: $e0 $a5
    db $fd                                        ; $6df5: $fd
    ld b, b                                       ; $6df6: $40
    add c                                         ; $6df7: $81
    sbc [hl]                                      ; $6df8: $9e
    rst $10                                       ; $6df9: $d7
    dec h                                         ; $6dfa: $25
    db $e4                                        ; $6dfb: $e4
    and e                                         ; $6dfc: $a3
    ret nc                                        ; $6dfd: $d0

    and $37                                       ; $6dfe: $e6 $37
    add [hl]                                      ; $6e00: $86
    ld [hl+], a                                   ; $6e01: $22
    ld a, [bc]                                    ; $6e02: $0a
    ld bc, $3ec5                                  ; $6e03: $01 $c5 $3e
    ld a, a                                       ; $6e06: $7f
    ld l, c                                       ; $6e07: $69
    and e                                         ; $6e08: $a3
    dec [hl]                                      ; $6e09: $35
    dec [hl]                                      ; $6e0a: $35
    and e                                         ; $6e0b: $a3
    ld l, d                                       ; $6e0c: $6a
    ld a, $42                                     ; $6e0d: $3e $42
    and d                                         ; $6e0f: $a2
    ld h, b                                       ; $6e10: $60
    db $10                                        ; $6e11: $10
    jp z, $e5d0                                   ; $6e12: $ca $d0 $e5

    call nz, Call_000_2227                        ; $6e15: $c4 $27 $22
    add hl, bc                                    ; $6e18: $09
    dec a                                         ; $6e19: $3d
    add d                                         ; $6e1a: $82
    sbc l                                         ; $6e1b: $9d
    sbc h                                         ; $6e1c: $9c
    ret nz                                        ; $6e1d: $c0

    ldh [$c0], a                                  ; $6e1e: $e0 $c0
    ld a, e                                       ; $6e20: $7b
    ld b, c                                       ; $6e21: $41
    ret nz                                        ; $6e22: $c0

    ldh [$3a], a                                  ; $6e23: $e0 $3a
    ld [$ebd0], sp                                ; $6e25: $08 $d0 $eb
    jr nc, jr_068_6e39                            ; $6e28: $30 $0f

    push af                                       ; $6e2a: $f5
    ld h, a                                       ; $6e2b: $67
    and c                                         ; $6e2c: $a1
    ld b, [hl]                                    ; $6e2d: $46
    scf                                           ; $6e2e: $37
    add hl, sp                                    ; $6e2f: $39
    ld l, e                                       ; $6e30: $6b
    ld [hl], c                                    ; $6e31: $71
    rst $38                                       ; $6e32: $ff
    ldh [$6d], a                                  ; $6e33: $e0 $6d
    add hl, sp                                    ; $6e35: $39
    ret nz                                        ; $6e36: $c0

    db $eb                                        ; $6e37: $eb
    ret nc                                        ; $6e38: $d0

jr_068_6e39:
    db $eb                                        ; $6e39: $eb
    inc d                                         ; $6e3a: $14
    jr nc, jr_068_6e49                            ; $6e3b: $30 $0c

    ldh a, [$e8]                                  ; $6e3d: $f0 $e8
    sbc [hl]                                      ; $6e3f: $9e
    ret nz                                        ; $6e40: $c0

    rst $00                                       ; $6e41: $c7
    and c                                         ; $6e42: $a1
    ldh [$f1], a                                  ; $6e43: $e0 $f1
    ld l, a                                       ; $6e45: $6f
    inc hl                                        ; $6e46: $23
    jr nc, @+$0e                                  ; $6e47: $30 $0c

jr_068_6e49:
    inc c                                         ; $6e49: $0c
    ldh a, [$e8]                                  ; $6e4a: $f0 $e8
    cp $87                                        ; $6e4c: $fe $87
    sbc h                                         ; $6e4e: $9c
    sbc a                                         ; $6e4f: $9f
    ldh [$f1], a                                  ; $6e50: $e0 $f1
    ld c, l                                       ; $6e52: $4d
    ld h, d                                       ; $6e53: $62
    jr nc, jr_068_6e63                            ; $6e54: $30 $0d

    ldh a, [$e8]                                  ; $6e56: $f0 $e8
    add b                                         ; $6e58: $80
    db $fd                                        ; $6e59: $fd
    jp nz, Jump_068_64c3                          ; $6e5a: $c2 $c3 $64

    ldh [$f1], a                                  ; $6e5d: $e0 $f1
    push bc                                       ; $6e5f: $c5
    ld h, d                                       ; $6e60: $62
    jr nc, @+$0f                                  ; $6e61: $30 $0d

jr_068_6e63:
    ldh a, [$e8]                                  ; $6e63: $f0 $e8
    ld hl, sp+$20                                 ; $6e65: $f8 $20
    sbc a                                         ; $6e67: $9f
    dec b                                         ; $6e68: $05
    sbc l                                         ; $6e69: $9d
    rst $38                                       ; $6e6a: $ff
    ldh [$9f], a                                  ; $6e6b: $e0 $9f
    db $e4                                        ; $6e6d: $e4
    inc b                                         ; $6e6e: $04
    ldh [$ed], a                                  ; $6e6f: $e0 $ed
    push de                                       ; $6e71: $d5
    ld h, d                                       ; $6e72: $62
    jr nc, jr_068_6e82                            ; $6e73: $30 $0d

    ldh a, [$e8]                                  ; $6e75: $f0 $e8
    nop                                           ; $6e77: $00
    db $ec                                        ; $6e78: $ec
    inc bc                                        ; $6e79: $03
    db $10                                        ; $6e7a: $10
    and h                                         ; $6e7b: $a4
    ldh [$f0], a                                  ; $6e7c: $e0 $f0
    ret nc                                        ; $6e7e: $d0

    ld [c], a                                     ; $6e7f: $e2
    rst $38                                       ; $6e80: $ff
    ld [hl], a                                    ; $6e81: $77

jr_068_6e82:
    db $10                                        ; $6e82: $10
    add e                                         ; $6e83: $83
    ld hl, sp-$18                                 ; $6e84: $f8 $e8
    ldh [$ed], a                                  ; $6e86: $e0 $ed
    nop                                           ; $6e88: $00
    rst $28                                       ; $6e89: $ef
    and c                                         ; $6e8a: $a1
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    pop bc                                        ; $6e8e: $c1
    nop                                           ; $6e8f: $00
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
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    dec c                                         ; $6e9c: $0d
    add b                                         ; $6e9d: $80
    cp $e0                                        ; $6e9e: $fe $e0
    nop                                           ; $6ea0: $00
    ld b, b                                       ; $6ea1: $40
    ret c                                         ; $6ea2: $d8

    push hl                                       ; $6ea3: $e5
    rst $30                                       ; $6ea4: $f7
    and $eb                                       ; $6ea5: $e6 $eb
    ldh [rIE], a                                  ; $6ea7: $e0 $ff
    rst $38                                       ; $6ea9: $ff
    nop                                           ; $6eaa: $00
    rst $38                                       ; $6eab: $ff
    db $f4                                        ; $6eac: $f4
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    ld [bc], a                                    ; $6eb0: $02
    nop                                           ; $6eb1: $00
    inc h                                         ; $6eb2: $24
    dec bc                                        ; $6eb3: $0b
    ld [bc], a                                    ; $6eb4: $02
    ld bc, $0c25                                  ; $6eb5: $01 $25 $0c
    ld [bc], a                                    ; $6eb8: $02
    ld [bc], a                                    ; $6eb9: $02
    jr z, @+$0f                                   ; $6eba: $28 $0d

    ld [bc], a                                    ; $6ebc: $02
    inc bc                                        ; $6ebd: $03
    ld e, $0f                                     ; $6ebe: $1e $0f
    ld [bc], a                                    ; $6ec0: $02
    inc b                                         ; $6ec1: $04
    inc e                                         ; $6ec2: $1c
    db $10                                        ; $6ec3: $10
    ld [bc], a                                    ; $6ec4: $02
    dec b                                         ; $6ec5: $05
    inc h                                         ; $6ec6: $24
    ld de, $0602                                  ; $6ec7: $11 $02 $06
    ld a, [de]                                    ; $6eca: $1a
    ld [de], a                                    ; $6ecb: $12
    ld [bc], a                                    ; $6ecc: $02
    rlca                                          ; $6ecd: $07
    ld [hl+], a                                   ; $6ece: $22
    ld [de], a                                    ; $6ecf: $12
    ld [bc], a                                    ; $6ed0: $02
    ld [$1320], sp                                ; $6ed1: $08 $20 $13
    ld [bc], a                                    ; $6ed4: $02
    add hl, bc                                    ; $6ed5: $09
    ld hl, $0213                                  ; $6ed6: $21 $13 $02
    ld a, [bc]                                    ; $6ed9: $0a
    ld d, $14                                     ; $6eda: $16 $14
    ld [bc], a                                    ; $6edc: $02
    dec bc                                        ; $6edd: $0b
    add hl, de                                    ; $6ede: $19
    inc d                                         ; $6edf: $14
    ld [bc], a                                    ; $6ee0: $02
    inc c                                         ; $6ee1: $0c
    jr jr_068_6efa                                ; $6ee2: $18 $16

    ld [bc], a                                    ; $6ee4: $02
    dec c                                         ; $6ee5: $0d
    ld e, $17                                     ; $6ee6: $1e $17
    ld [bc], a                                    ; $6ee8: $02
    ld c, $1b                                     ; $6ee9: $0e $1b
    add hl, de                                    ; $6eeb: $19
    ld [bc], a                                    ; $6eec: $02
    rrca                                          ; $6eed: $0f
    rla                                           ; $6eee: $17
    ld a, [de]                                    ; $6eef: $1a
    ld [bc], a                                    ; $6ef0: $02
    db $10                                        ; $6ef1: $10
    ld e, $1a                                     ; $6ef2: $1e $1a
    ld [bc], a                                    ; $6ef4: $02
    ld de, $1b20                                  ; $6ef5: $11 $20 $1b
    ld [bc], a                                    ; $6ef8: $02
    ld [de], a                                    ; $6ef9: $12

jr_068_6efa:
    inc e                                         ; $6efa: $1c
    ld e, $02                                     ; $6efb: $1e $02
    inc de                                        ; $6efd: $13
    jr @+$21                                      ; $6efe: $18 $1f

    ld [bc], a                                    ; $6f00: $02
    inc d                                         ; $6f01: $14
    inc hl                                        ; $6f02: $23
    ld hl, $1502                                  ; $6f03: $21 $02 $15
    jr z, @+$24                                   ; $6f06: $28 $22

    ld [bc], a                                    ; $6f08: $02
    ld d, $19                                     ; $6f09: $16 $19
    inc h                                         ; $6f0b: $24
    ld [bc], a                                    ; $6f0c: $02
    rla                                           ; $6f0d: $17
    dec de                                        ; $6f0e: $1b
    daa                                           ; $6f0f: $27
    ld [bc], a                                    ; $6f10: $02
    jr jr_068_6f39                                ; $6f11: $18 $26

    daa                                           ; $6f13: $27
    ld [bc], a                                    ; $6f14: $02
    add hl, de                                    ; $6f15: $19
    ld a, [de]                                    ; $6f16: $1a
    jr z, jr_068_6f1b                             ; $6f17: $28 $02

    ld a, [de]                                    ; $6f19: $1a
    inc e                                         ; $6f1a: $1c

jr_068_6f1b:
    jr z, @+$04                                   ; $6f1b: $28 $02

    dec de                                        ; $6f1d: $1b
    ld e, $2e                                     ; $6f1e: $1e $2e
    ld [bc], a                                    ; $6f20: $02
    inc e                                         ; $6f21: $1c
    ld h, $2e                                     ; $6f22: $26 $2e
    ld [bc], a                                    ; $6f24: $02
    dec e                                         ; $6f25: $1d
    dec h                                         ; $6f26: $25
    cpl                                           ; $6f27: $2f
    ld [bc], a                                    ; $6f28: $02
    ld e, $27                                     ; $6f29: $1e $27
    cpl                                           ; $6f2b: $2f
    ld [bc], a                                    ; $6f2c: $02
    rra                                           ; $6f2d: $1f
    dec e                                         ; $6f2e: $1d
    ld [hl-], a                                   ; $6f2f: $32
    ld [bc], a                                    ; $6f30: $02
    jr nz, @+$1e                                  ; $6f31: $20 $1c

    inc sp                                        ; $6f33: $33
    ld [bc], a                                    ; $6f34: $02
    ld hl, $331e                                  ; $6f35: $21 $1e $33
    ld [bc], a                                    ; $6f38: $02

jr_068_6f39:
    ld [hl+], a                                   ; $6f39: $22
    inc h                                         ; $6f3a: $24
    inc sp                                        ; $6f3b: $33
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    ld b, a                                       ; $6f3f: $47
    ld l, a                                       ; $6f40: $6f
    adc a                                         ; $6f41: $8f
    ld [hl], e                                    ; $6f42: $73
    xor $78                                       ; $6f43: $ee $78
    db $10                                        ; $6f45: $10
    ld a, c                                       ; $6f46: $79
    rra                                           ; $6f47: $1f
    ld l, $0e                                     ; $6f48: $2e $0e
    ld c, $0e                                     ; $6f4a: $0e $0e
    ld c, l                                       ; $6f4c: $4d
    rst $38                                       ; $6f4d: $ff
    add sp, -$10                                  ; $6f4e: $e8 $f0
    rst $38                                       ; $6f50: $ff
    ldh [$eb], a                                  ; $6f51: $e0 $eb
    ld h, a                                       ; $6f53: $67
    ld l, [hl]                                    ; $6f54: $6e
    ld l, $6e                                     ; $6f55: $2e $6e
    adc $e0                                       ; $6f57: $ce $e0
    call Call_000_0de0                            ; $6f59: $cd $e0 $0d
    dec c                                         ; $6f5c: $0d
    jp nc, Jump_068_58e2                          ; $6f5d: $d2 $e2 $58

    ldh a, [rIE]                                  ; $6f60: $f0 $ff
    ldh [$eb], a                                  ; $6f62: $e0 $eb
    pop de                                        ; $6f64: $d1
    ldh [$4e], a                                  ; $6f65: $e0 $4e
    ld c, [hl]                                    ; $6f67: $4e
    ret nc                                        ; $6f68: $d0

    rst $20                                       ; $6f69: $e7
    ld l, $f0                                     ; $6f6a: $2e $f0
    rst $38                                       ; $6f6c: $ff
    ld a, [de]                                    ; $6f6d: $1a
    ldh [$ec], a                                  ; $6f6e: $e0 $ec
    ld l, $4e                                     ; $6f70: $2e $4e
    pop hl                                        ; $6f72: $e1
    ld c, [hl]                                    ; $6f73: $4e
    ld c, $f0                                     ; $6f74: $0e $f0
    rst $38                                       ; $6f76: $ff
    ldh a, [$f9]                                  ; $6f77: $f0 $f9
    ld c, a                                       ; $6f79: $4f
    ld [c], a                                     ; $6f7a: $e2
    nop                                           ; $6f7b: $00
    ld [$f0e0], sp                                ; $6f7c: $08 $e0 $f0
    rst $38                                       ; $6f7f: $ff
    ldh a, [$f7]                                  ; $6f80: $f0 $f7
    ret z                                         ; $6f82: $c8

    pop bc                                        ; $6f83: $c1
    ldh a, [rIE]                                  ; $6f84: $f0 $ff
    ldh a, [$f7]                                  ; $6f86: $f0 $f7
    call $f0c0                                    ; $6f88: $cd $c0 $f0
    rst $38                                       ; $6f8b: $ff
    nop                                           ; $6f8c: $00
    ldh a, [$fc]                                  ; $6f8d: $f0 $fc
    rrca                                          ; $6f8f: $0f
    ld [c], a                                     ; $6f90: $e2
    ldh a, [rIE]                                  ; $6f91: $f0 $ff
    ldh a, [$f4]                                  ; $6f93: $f0 $f4
    rst $08                                       ; $6f95: $cf
    call nz, $fff0                                ; $6f96: $c4 $f0 $ff
    ldh [$e8], a                                  ; $6f99: $e0 $e8
    sbc $a6                                       ; $6f9b: $de $a6
    ld b, b                                       ; $6f9d: $40
    rst $00                                       ; $6f9e: $c7
    and b                                         ; $6f9f: $a0
    adc $aa                                       ; $6fa0: $ce $aa
    nop                                           ; $6fa2: $00
    jp nz, $a8be                                  ; $6fa3: $c2 $be $a8

    ldh [$ed], a                                  ; $6fa6: $e0 $ed
    ret nc                                        ; $6fa8: $d0

    db $e4                                        ; $6fa9: $e4
    dec c                                         ; $6faa: $0d
    ret c                                         ; $6fab: $d8

    and b                                         ; $6fac: $a0
    ld [hl+], a                                   ; $6fad: $22
    cp $e0                                        ; $6fae: $fe $e0
    dec c                                         ; $6fb0: $0d
    ld [$c9c1], sp                                ; $6fb1: $08 $c1 $c9
    and e                                         ; $6fb4: $a3
    ldh a, [$e3]                                  ; $6fb5: $f0 $e3
    ld l, l                                       ; $6fb7: $6d
    db $fd                                        ; $6fb8: $fd
    ldh [$a2], a                                  ; $6fb9: $e0 $a2
    pop hl                                        ; $6fbb: $e1
    nop                                           ; $6fbc: $00
    cp c                                          ; $6fbd: $b9
    and c                                         ; $6fbe: $a1
    ldh [$f1], a                                  ; $6fbf: $e0 $f1
    ret nc                                        ; $6fc1: $d0

    push hl                                       ; $6fc2: $e5
    db $dd                                        ; $6fc3: $dd
    and b                                         ; $6fc4: $a0
    sub e                                         ; $6fc5: $93
    and d                                         ; $6fc6: $a2
    add hl, de                                    ; $6fc7: $19
    push bc                                       ; $6fc8: $c5
    ldh a, [$e5]                                  ; $6fc9: $f0 $e5
    add b                                         ; $6fcb: $80
    and c                                         ; $6fcc: $a1
    dec a                                         ; $6fcd: $3d
    ld l, l                                       ; $6fce: $6d
    cp e                                          ; $6fcf: $bb
    ldh [rKEY1], a                                ; $6fd0: $e0 $4d
    dec l                                         ; $6fd2: $2d
    ld l, l                                       ; $6fd3: $6d
    ld l, l                                       ; $6fd4: $6d
    ldh [$f1], a                                  ; $6fd5: $e0 $f1
    ret nc                                        ; $6fd7: $d0

    and $20                                       ; $6fd8: $e6 $20
    ld d, c                                       ; $6fda: $51
    and b                                         ; $6fdb: $a0
    ld a, e                                       ; $6fdc: $7b
    pop hl                                        ; $6fdd: $e1
    reti                                          ; $6fde: $d9


    and b                                         ; $6fdf: $a0
    dec b                                         ; $6fe0: $05
    and e                                         ; $6fe1: $a3
    ldh a, [$e4]                                  ; $6fe2: $f0 $e4
    ld l, l                                       ; $6fe4: $6d
    rst $38                                       ; $6fe5: $ff
    pop hl                                        ; $6fe6: $e1
    ld a, d                                       ; $6fe7: $7a
    pop hl                                        ; $6fe8: $e1
    rlca                                          ; $6fe9: $07
    ld c, l                                       ; $6fea: $4d
    dec l                                         ; $6feb: $2d
    dec l                                         ; $6fec: $2d
    ldh [$f1], a                                  ; $6fed: $e0 $f1
    ret nc                                        ; $6fef: $d0

    push hl                                       ; $6ff0: $e5
    add a                                         ; $6ff1: $87
    pop hl                                        ; $6ff2: $e1
    inc a                                         ; $6ff3: $3c
    pop hl                                        ; $6ff4: $e1
    ldh a, [$ed]                                  ; $6ff5: $f0 $ed
    ld e, $c1                                     ; $6ff7: $1e $c1
    db $e3                                        ; $6ff9: $e3
    dec hl                                        ; $6ffa: $2b
    dec c                                         ; $6ffb: $0d
    dec c                                         ; $6ffc: $0d
    dec bc                                        ; $6ffd: $0b
    ld a, l                                       ; $6ffe: $7d
    ldh [$e0], a                                  ; $6fff: $e0 $e0
    ldh a, [$90]                                  ; $7001: $f0 $90
    and $80                                       ; $7003: $e6 $80
    adc a                                         ; $7005: $8f
    add b                                         ; $7006: $80
    sub [hl]                                      ; $7007: $96
    and c                                         ; $7008: $a1
    push af                                       ; $7009: $f5
    add c                                         ; $700a: $81
    add l                                         ; $700b: $85
    add b                                         ; $700c: $80
    dec e                                         ; $700d: $1d
    ret nz                                        ; $700e: $c0

    ldh a, [$e4]                                  ; $700f: $f0 $e4
    add d                                         ; $7011: $82
    ld [c], a                                     ; $7012: $e2
    ld a, [bc]                                    ; $7013: $0a
    rlca                                          ; $7014: $07
    ld a, [bc]                                    ; $7015: $0a

jr_068_7016:
    ld a, [hl+]                                   ; $7016: $2a
    ld a, [hl+]                                   ; $7017: $2a
    inc a                                         ; $7018: $3c
    pop hl                                        ; $7019: $e1
    ldh [$f0], a                                  ; $701a: $e0 $f0
    ret nc                                        ; $701c: $d0

    jp hl                                         ; $701d: $e9


    sub h                                         ; $701e: $94
    jp $c17e                                      ; $701f: $c3 $7e $c1


jr_068_7022:
    inc d                                         ; $7022: $14
    ldh a, [$e8]                                  ; $7023: $f0 $e8
    cp l                                          ; $7025: $bd
    pop bc                                        ; $7026: $c1
    ld a, [bc]                                    ; $7027: $0a
    cp a                                          ; $7028: $bf
    ldh [rWX], a                                  ; $7029: $e0 $4b
    or e                                          ; $702b: $b3
    pop bc                                        ; $702c: $c1
    ldh [$f0], a                                  ; $702d: $e0 $f0
    ret nc                                        ; $702f: $d0

    db $e3                                        ; $7030: $e3
    nop                                           ; $7031: $00
    jr jr_068_7016                                ; $7032: $18 $e2

    ei                                            ; $7034: $fb
    db $e4                                        ; $7035: $e4
    call nc, $f081                                ; $7036: $d4 $81 $f0
    rst $20                                       ; $7039: $e7
    ld h, [hl]                                    ; $703a: $66
    ret nz                                        ; $703b: $c0

    db $fd                                        ; $703c: $fd
    push hl                                       ; $703d: $e5
    cp h                                          ; $703e: $bc
    ret nz                                        ; $703f: $c0

    ldh a, [$c1]                                  ; $7040: $f0 $c1
    ldh [$e8], a                                  ; $7042: $e0 $e8
    ld h, c                                       ; $7044: $61
    ret nc                                        ; $7045: $d0

    db $ed                                        ; $7046: $ed
    adc $e2                                       ; $7047: $ce $e2
    pop de                                        ; $7049: $d1
    pop bc                                        ; $704a: $c1
    sub l                                         ; $704b: $95
    add c                                         ; $704c: $81
    ld c, [hl]                                    ; $704d: $4e
    ld c, $4e                                     ; $704e: $0e $4e
    inc a                                         ; $7050: $3c
    ldh a, [$e6]                                  ; $7051: $f0 $e6
    ret nz                                        ; $7053: $c0

    ld [c], a                                     ; $7054: $e2
    dec bc                                        ; $7055: $0b
    dec hl                                        ; $7056: $2b
    dec bc                                        ; $7057: $0b
    dec hl                                        ; $7058: $2b
    db $fc                                        ; $7059: $fc
    ret nz                                        ; $705a: $c0

    ld a, e                                       ; $705b: $7b
    pop bc                                        ; $705c: $c1
    ld l, b                                       ; $705d: $68
    jr nc, jr_068_7022                            ; $705e: $30 $c2

    and h                                         ; $7060: $a4
    ld h, d                                       ; $7061: $62

Call_068_7062:
    ret nc                                        ; $7062: $d0

    ld [$c00e], a                                 ; $7063: $ea $0e $c0
    rst $20                                       ; $7066: $e7
    ld l, [hl]                                    ; $7067: $6e
    ld l, [hl]                                    ; $7068: $6e
    cp a                                          ; $7069: $bf
    ldh [$ac], a                                  ; $706a: $e0 $ac
    ldh a, [$e6]                                  ; $706c: $f0 $e6
    cp $a1                                        ; $706e: $fe $a1
    dec c                                         ; $7070: $0d
    ld c, e                                       ; $7071: $4b
    cp a                                          ; $7072: $bf
    ldh [rOCPD], a                                ; $7073: $e0 $6b
    db $dd                                        ; $7075: $dd
    and c                                         ; $7076: $a1
    dec l                                         ; $7077: $2d
    sbc b                                         ; $7078: $98
    ldh a, [$a1]                                  ; $7079: $f0 $a1
    call c, $d0a4                                 ; $707b: $dc $a4 $d0
    ld a, [c]                                     ; $707e: $f2
    ld l, $6e                                     ; $707f: $2e $6e
    ld d, [hl]                                    ; $7081: $56
    add l                                         ; $7082: $85
    ld [hl], b                                    ; $7083: $70
    db $e3                                        ; $7084: $e3
    dec c                                         ; $7085: $0d
    ei                                            ; $7086: $fb
    ld l, l                                       ; $7087: $6d
    dec bc                                        ; $7088: $0b
    and l                                         ; $7089: $a5
    and b                                         ; $708a: $a0
    ld l, e                                       ; $708b: $6b
    ld c, e                                       ; $708c: $4b
    ld c, e                                       ; $708d: $4b
    ld l, e                                       ; $708e: $6b
    ld c, e                                       ; $708f: $4b
    ld [hl+], a                                   ; $7090: $22
    ld a, l                                       ; $7091: $7d
    ret nz                                        ; $7092: $c0

    dec bc                                        ; $7093: $0b
    ret nz                                        ; $7094: $c0

    db $e3                                        ; $7095: $e3
    push af                                       ; $7096: $f5
    ld h, e                                       ; $7097: $63
    ret nc                                        ; $7098: $d0

    db $ed                                        ; $7099: $ed
    dec c                                         ; $709a: $0d
    dec bc                                        ; $709b: $0b
    pop hl                                        ; $709c: $e1
    ld d, $87                                     ; $709d: $16 $87
    ld hl, sp-$10                                 ; $709f: $f8 $f0
    ld [c], a                                     ; $70a1: $e2
    pop bc                                        ; $70a2: $c1
    ldh [$c0], a                                  ; $70a3: $e0 $c0
    pop hl                                        ; $70a5: $e1
    ld a, [bc]                                    ; $70a6: $0a
    ld a, [hl+]                                   ; $70a7: $2a
    ld a, [bc]                                    ; $70a8: $0a
    ld a, [bc]                                    ; $70a9: $0a
    ld l, d                                       ; $70aa: $6a
    ld [bc], a                                    ; $70ab: $02
    or a                                          ; $70ac: $b7
    ldh [$0b], a                                  ; $70ad: $e0 $0b
    cp c                                          ; $70af: $b9
    and c                                         ; $70b0: $a1
    ret nz                                        ; $70b1: $c0

    pop hl                                        ; $70b2: $e1
    ld e, h                                       ; $70b3: $5c
    jp nz, $ecd0                                  ; $70b4: $c2 $d0 $ec

    dec a                                         ; $70b7: $3d
    ld [c], a                                     ; $70b8: $e2
    ldh a, [$ec]                                  ; $70b9: $f0 $ec
    nop                                           ; $70bb: $00
    ld [$c0c0], sp                                ; $70bc: $08 $c0 $c0
    ld [c], a                                     ; $70bf: $e2
    ccf                                           ; $70c0: $3f
    jp $a2fb                                      ; $70c1: $c3 $fb $a2


    ld d, l                                       ; $70c4: $55
    and d                                         ; $70c5: $a2
    ld e, l                                       ; $70c6: $5d
    and $90                                       ; $70c7: $e6 $90
    add sp, -$5e                                  ; $70c9: $e8 $a2
    jp nz, $f050                                  ; $70cb: $c2 $50 $f0

    db $ec                                        ; $70ce: $ec
    call z, Call_068_47e2                         ; $70cf: $cc $e2 $47
    pop hl                                        ; $70d2: $e1
    cp a                                          ; $70d3: $bf
    and c                                         ; $70d4: $a1
    dec l                                         ; $70d5: $2d
    db $f4                                        ; $70d6: $f4
    pop hl                                        ; $70d7: $e1
    dec l                                         ; $70d8: $2d
    add hl, sp                                    ; $70d9: $39
    and b                                         ; $70da: $a0
    inc b                                         ; $70db: $04
    ld e, h                                       ; $70dc: $5c
    and e                                         ; $70dd: $a3
    ret nc                                        ; $70de: $d0

    db $eb                                        ; $70df: $eb
    ld l, l                                       ; $70e0: $6d
    ret nz                                        ; $70e1: $c0

    db $ec                                        ; $70e2: $ec
    ldh a, [$e2]                                  ; $70e3: $f0 $e2
    add [hl]                                      ; $70e5: $86
    and c                                         ; $70e6: $a1
    ccf                                           ; $70e7: $3f
    ld [c], a                                     ; $70e8: $e2
    ld a, e                                       ; $70e9: $7b
    jp nz, Jump_000_0d0f                          ; $70ea: $c2 $0f $0d

    dec l                                         ; $70ed: $2d
    dec bc                                        ; $70ee: $0b
    dec l                                         ; $70ef: $2d
    rst $30                                       ; $70f0: $f7
    add c                                         ; $70f1: $81
    ld e, d                                       ; $70f2: $5a
    add h                                         ; $70f3: $84
    ret nz                                        ; $70f4: $c0

    db $ed                                        ; $70f5: $ed
    inc b                                         ; $70f6: $04
    push bc                                       ; $70f7: $c5
    inc c                                         ; $70f8: $0c
    or b                                          ; $70f9: $b0
    push hl                                       ; $70fa: $e5

jr_068_70fb:
    rst $00                                       ; $70fb: $c7
    add b                                         ; $70fc: $80
    dec c                                         ; $70fd: $0d
    dec hl                                        ; $70fe: $2b
    add a                                         ; $70ff: $87
    and b                                         ; $7100: $a0
    ld b, a                                       ; $7101: $47
    pop hl                                        ; $7102: $e1
    add hl, sp                                    ; $7103: $39
    pop hl                                        ; $7104: $e1
    add c                                         ; $7105: $81
    ldh [rSB], a                                  ; $7106: $e0 $01
    dec hl                                        ; $7108: $2b
    ld [hl], a                                    ; $7109: $77
    and b                                         ; $710a: $a0
    ld a, d                                       ; $710b: $7a
    and b                                         ; $710c: $a0
    push de                                       ; $710d: $d5
    jp $ead0                                      ; $710e: $c3 $d0 $ea


    ret z                                         ; $7111: $c8

    and e                                         ; $7112: $a3
    ret                                           ; $7113: $c9


    and b                                         ; $7114: $a0
    ld d, h                                       ; $7115: $54
    ld b, c                                       ; $7116: $41
    and b                                         ; $7117: $a0
    db $f4                                        ; $7118: $f4
    and e                                         ; $7119: $a3
    add l                                         ; $711a: $85
    and c                                         ; $711b: $a1
    add a                                         ; $711c: $87
    and b                                         ; $711d: $a0
    add $c0                                       ; $711e: $c6 $c0
    jp nz, $2da4                                  ; $7120: $c2 $a4 $2d

    pop bc                                        ; $7123: $c1
    ldh [$0a], a                                  ; $7124: $e0 $0a
    rra                                           ; $7126: $1f
    ld a, [hl+]                                   ; $7127: $2a
    ld c, d                                       ; $7128: $4a
    dec l                                         ; $7129: $2d
    ld l, l                                       ; $712a: $6d
    dec l                                         ; $712b: $2d
    ret nc                                        ; $712c: $d0

    ldh a, [rTAC]                                 ; $712d: $f0 $07
    pop bc                                        ; $712f: $c1
    rst $00                                       ; $7130: $c7
    and b                                         ; $7131: $a0
    add h                                         ; $7132: $84
    ld c, $80                                     ; $7133: $0e $80
    ldh [$e0], a                                  ; $7135: $e0 $e0
    dec l                                         ; $7137: $2d
    jr jr_068_70fb                                ; $7138: $18 $c1

    ld b, [hl]                                    ; $713a: $46
    and b                                         ; $713b: $a0
    rst $08                                       ; $713c: $cf
    pop hl                                        ; $713d: $e1
    cp a                                          ; $713e: $bf
    pop hl                                        ; $713f: $e1
    dec bc                                        ; $7140: $0b
    di                                            ; $7141: $f3
    dec bc                                        ; $7142: $0b
    dec bc                                        ; $7143: $0b
    or $e3                                        ; $7144: $f6 $e3
    scf                                           ; $7146: $37
    and b                                         ; $7147: $a0
    ld c, d                                       ; $7148: $4a
    ld c, l                                       ; $7149: $4d
    dec l                                         ; $714a: $2d
    ld c, $20                                     ; $714b: $0e $20
    ldh [$e0], a                                  ; $714d: $e0 $e0
    ret nc                                        ; $714f: $d0

    db $ed                                        ; $7150: $ed
    rlca                                          ; $7151: $07
    call nz, $a27d                                ; $7152: $c4 $7d $a2
    add [hl]                                      ; $7155: $86
    jp Jump_068_424d                              ; $7156: $c3 $4d $42


    ldh [rIE], a                                  ; $7159: $e0 $ff
    pop af                                        ; $715b: $f1
    add c                                         ; $715c: $81
    dec bc                                        ; $715d: $0b
    and b                                         ; $715e: $a0
    ldh [rNR31], a                                ; $715f: $e0 $1b
    and b                                         ; $7161: $a0
    ret nc                                        ; $7162: $d0

    db $ec                                        ; $7163: $ec
    dec sp                                        ; $7164: $3b
    and e                                         ; $7165: $a3
    inc a                                         ; $7166: $3c
    add b                                         ; $7167: $80
    or l                                          ; $7168: $b5
    ldh [$2e], a                                  ; $7169: $e0 $2e
    ld hl, $024e                                  ; $716b: $21 $4e $02
    pop hl                                        ; $716e: $e1

jr_068_716f:
    ld b, d                                       ; $716f: $42
    db $e3                                        ; $7170: $e3
    add a                                         ; $7171: $87
    add b                                         ; $7172: $80
    ld a, e                                       ; $7173: $7b
    db $e3                                        ; $7174: $e3
    ld a, [hl+]                                   ; $7175: $2a
    db $fc                                        ; $7176: $fc
    and b                                         ; $7177: $a0
    ld sp, $01e2                                  ; $7178: $31 $e2 $01
    ld c, e                                       ; $717b: $4b
    ld d, a                                       ; $717c: $57
    push bc                                       ; $717d: $c5
    ret nc                                        ; $717e: $d0

    ld [$e4c0], a                                 ; $717f: $ea $c0 $e4
    ld b, h                                       ; $7182: $44
    pop hl                                        ; $7183: $e1
    call nz, Call_068_5a00                        ; $7184: $c4 $00 $5a
    pop bc                                        ; $7187: $c1
    add c                                         ; $7188: $81
    db $e3                                        ; $7189: $e3
    ld h, $07                                     ; $718a: $26 $07
    add b                                         ; $718c: $80
    ld c, d                                       ; $718d: $4a
    ld c, d                                       ; $718e: $4a
    add b                                         ; $718f: $80
    add c                                         ; $7190: $81
    cp $60                                        ; $7191: $fe $60
    ld l, e                                       ; $7193: $6b
    pop af                                        ; $7194: $f1
    jp nz, Jump_068_612c                          ; $7195: $c2 $2c $61

    inc d                                         ; $7198: $14
    sbc e                                         ; $7199: $9b
    pop hl                                        ; $719a: $e1
    ret nc                                        ; $719b: $d0

    ld [$bb2d], a                                 ; $719c: $ea $2d $bb
    add [hl]                                      ; $719f: $86
    ld c, $f5                                     ; $71a0: $0e $f5
    ldh [$f3], a                                  ; $71a2: $e0 $f3
    and b                                         ; $71a4: $a0
    ld b, c                                       ; $71a5: $41
    push hl                                       ; $71a6: $e5
    jr z, jr_068_716f                             ; $71a7: $28 $c6

    ld h, b                                       ; $71a9: $60
    ld c, d                                       ; $71aa: $4a
    db $e3                                        ; $71ab: $e3
    pop bc                                        ; $71ac: $c1
    and d                                         ; $71ad: $a2
    ld c, d                                       ; $71ae: $4a
    cp b                                          ; $71af: $b8
    ldh [$6d], a                                  ; $71b0: $e0 $6d
    jp hl                                         ; $71b2: $e9


    ld b, c                                       ; $71b3: $41
    ret nc                                        ; $71b4: $d0

    xor $60                                       ; $71b5: $ee $60
    add d                                         ; $71b7: $82
    jp $a0fa                                      ; $71b8: $c3 $fa $a0


    or l                                          ; $71bb: $b5
    pop hl                                        ; $71bc: $e1
    or e                                          ; $71bd: $b3
    and b                                         ; $71be: $a0
    add b                                         ; $71bf: $80
    db $e4                                        ; $71c0: $e4
    ld c, d                                       ; $71c1: $4a
    dec bc                                        ; $71c2: $0b
    ld a, [$80c4]                                 ; $71c3: $fa $c4 $80

jr_068_71c6:
    rst $30                                       ; $71c6: $f7
    ldh [$f6], a                                  ; $71c7: $e0 $f6
    add b                                         ; $71c9: $80
    ld b, d                                       ; $71ca: $42
    pop hl                                        ; $71cb: $e1
    cp h                                          ; $71cc: $bc
    add d                                         ; $71cd: $82
    ret nc                                        ; $71ce: $d0

    db $ed                                        ; $71cf: $ed
    jr nc, jr_068_71de                            ; $71d0: $30 $0c

    ld [hl], e                                    ; $71d2: $73
    ld b, c                                       ; $71d3: $41
    ld c, l                                       ; $71d4: $4d
    ld bc, $002d                                  ; $71d5: $01 $2d $00
    ld [c], a                                     ; $71d8: $e2
    adc c                                         ; $71d9: $89
    push bc                                       ; $71da: $c5
    rst $30                                       ; $71db: $f7
    add c                                         ; $71dc: $81
    nop                                           ; $71dd: $00

jr_068_71de:
    ret nz                                        ; $71de: $c0

    ld [hl], c                                    ; $71df: $71
    ld b, b                                       ; $71e0: $40
    ld [hl-], a                                   ; $71e1: $32
    ld c, b                                       ; $71e2: $48
    call $c0e6                                    ; $71e3: $cd $e6 $c0
    jr nc, jr_068_71f2                            ; $71e6: $30 $0a

    db $fc                                        ; $71e8: $fc
    dec h                                         ; $71e9: $25
    cp a                                          ; $71ea: $bf
    ld [c], a                                     ; $71eb: $e2
    ld b, a                                       ; $71ec: $47
    push bc                                       ; $71ed: $c5
    or a                                          ; $71ee: $b7
    call nz, Call_068_62c2                        ; $71ef: $c4 $c2 $62

jr_068_71f2:
    ld l, $0e                                     ; $71f2: $2e $0e
    jr nc, jr_068_71c6                            ; $71f4: $30 $d0

    ld [$a12f], a                                 ; $71f6: $ea $2f $a1
    jr nc, @+$0a                                  ; $71f9: $30 $08

    inc l                                         ; $71fb: $2c
    ld b, [hl]                                    ; $71fc: $46
    dec c                                         ; $71fd: $0d
    ld l, e                                       ; $71fe: $6b
    add $c1                                       ; $71ff: $c6 $c1
    cp a                                          ; $7201: $bf
    and $c0                                       ; $7202: $e6 $c0
    cp d                                          ; $7204: $ba
    jp nz, Jump_068_6280                          ; $7205: $c2 $80 $62

    sbc h                                         ; $7208: $9c
    ld h, b                                       ; $7209: $60
    ret nc                                        ; $720a: $d0

    add sp, $30                                   ; $720b: $e8 $30
    dec c                                         ; $720d: $0d
    db $fc                                        ; $720e: $fc
    ld h, $0d                                     ; $720f: $26 $0d
    ld c, l                                       ; $7211: $4d
    ret nz                                        ; $7212: $c0

    ret nz                                        ; $7213: $c0

    db $e4                                        ; $7214: $e4
    dec sp                                        ; $7215: $3b
    and b                                         ; $7216: $a0
    ld b, h                                       ; $7217: $44
    rst $00                                       ; $7218: $c7
    ret nc                                        ; $7219: $d0

    xor $30                                       ; $721a: $ee $30
    dec c                                         ; $721c: $0d
    db $fc                                        ; $721d: $fc
    ld h, $4d                                     ; $721e: $26 $4d
    dec l                                         ; $7220: $2d
    db $fc                                        ; $7221: $fc
    ld c, [hl]                                    ; $7222: $4e
    ret nz                                        ; $7223: $c0

    rst $38                                       ; $7224: $ff
    add b                                         ; $7225: $80
    ld a, [hl+]                                   ; $7226: $2a
    ld c, e                                       ; $7227: $4b
    ld c, e                                       ; $7228: $4b
    ld c, e                                       ; $7229: $4b
    dec bc                                        ; $722a: $0b
    dec bc                                        ; $722b: $0b
    ld hl, $392b                                  ; $722c: $21 $2b $39
    ret nz                                        ; $722f: $c0

    add e                                         ; $7230: $83
    pop bc                                        ; $7231: $c1
    jr nc, jr_068_7240                            ; $7232: $30 $0c

    ldh a, [$ed]                                  ; $7234: $f0 $ed
    ld c, $c0                                     ; $7236: $0e $c0
    and $30                                       ; $7238: $e6 $30
    ld hl, $8512                                  ; $723a: $21 $12 $85
    ld h, c                                       ; $723d: $61
    dec hl                                        ; $723e: $2b
    ld b, c                                       ; $723f: $41

jr_068_7240:
    and b                                         ; $7240: $a0
    pop bc                                        ; $7241: $c1
    ldh [$0b], a                                  ; $7242: $e0 $0b
    cp d                                          ; $7244: $ba
    ldh [$3e], a                                  ; $7245: $e0 $3e
    ld b, b                                       ; $7247: $40
    inc de                                        ; $7248: $13
    ld b, d                                       ; $7249: $42
    nop                                           ; $724a: $00
    ret nc                                        ; $724b: $d0

    ld [$eb80], a                                 ; $724c: $ea $80 $eb
    db $fc                                        ; $724f: $fc
    ld h, $be                                     ; $7250: $26 $be
    jp nz, Jump_068_403d                          ; $7252: $c2 $3d $40

    jp $ff40                                      ; $7255: $c3 $40 $ff


    db $e3                                        ; $7258: $e3
    di                                            ; $7259: $f3
    nop                                           ; $725a: $00

jr_068_725b:
    jr nz, jr_068_725b                            ; $725b: $20 $fe

    ld hl, $4143                                  ; $725d: $21 $43 $41
    jr nc, jr_068_726e                            ; $7260: $30 $0c

    ret nz                                        ; $7262: $c0

    db $ec                                        ; $7263: $ec
    ld a, d                                       ; $7264: $7a
    ld b, $6d                                     ; $7265: $06 $6d
    cp a                                          ; $7267: $bf
    db $e3                                        ; $7268: $e3
    rlca                                          ; $7269: $07
    ld h, b                                       ; $726a: $60
    rlca                                          ; $726b: $07
    dec bc                                        ; $726c: $0b
    dec l                                         ; $726d: $2d

jr_068_726e:
    dec bc                                        ; $726e: $0b
    ld a, e                                       ; $726f: $7b
    jr nz, @+$45                                  ; $7270: $20 $43

    jp $c15e                                      ; $7272: $c3 $5e $c1


    ret nz                                        ; $7275: $c0

    db $eb                                        ; $7276: $eb
    jr nc, jr_068_7287                            ; $7277: $30 $0e

    nop                                           ; $7279: $00
    db $fc                                        ; $727a: $fc
    and d                                         ; $727b: $a2
    sbc l                                         ; $727c: $9d
    ld b, e                                       ; $727d: $43
    dec a                                         ; $727e: $3d
    ld h, c                                       ; $727f: $61
    ccf                                           ; $7280: $3f
    db $e3                                        ; $7281: $e3
    add e                                         ; $7282: $83
    ld h, e                                       ; $7283: $63
    inc sp                                        ; $7284: $33
    inc bc                                        ; $7285: $03
    sub b                                         ; $7286: $90

jr_068_7287:
    db $ed                                        ; $7287: $ed
    jr nc, jr_068_7297                            ; $7288: $30 $0d

    ld [$e078], sp                                ; $728a: $08 $78 $e0
    ld e, l                                       ; $728d: $5d
    ld b, c                                       ; $728e: $41
    ld a, $e2                                     ; $728f: $3e $e2
    ld l, e                                       ; $7291: $6b
    ld b, b                                       ; $7292: $40
    db $e3                                        ; $7293: $e3
    ld a, a                                       ; $7294: $7f
    jr nz, jr_068_729a                            ; $7295: $20 $03

jr_068_7297:
    ld h, c                                       ; $7297: $61
    ld e, h                                       ; $7298: $5c
    push hl                                       ; $7299: $e5

jr_068_729a:
    ret nz                                        ; $729a: $c0

    ret nc                                        ; $729b: $d0

jr_068_729c:
    db $eb                                        ; $729c: $eb
    jr nc, jr_068_72ac                            ; $729d: $30 $0d

    ldh a, [$e5]                                  ; $729f: $f0 $e5
    add c                                         ; $72a1: $81
    ld hl, $4042                                  ; $72a2: $21 $42 $40
    ld a, a                                       ; $72a5: $7f
    ret nz                                        ; $72a6: $c0

    ld l, e                                       ; $72a7: $6b
    ld c, e                                       ; $72a8: $4b
    nop                                           ; $72a9: $00
    ld a, b                                       ; $72aa: $78
    nop                                           ; $72ab: $00

jr_068_72ac:
    inc b                                         ; $72ac: $04
    ld b, l                                       ; $72ad: $45
    ret nc                                        ; $72ae: $d0

    xor $30                                       ; $72af: $ee $30
    ld c, $f0                                     ; $72b1: $0e $f0
    db $e4                                        ; $72b3: $e4
    cp $c2                                        ; $72b4: $fe $c2
    dec a                                         ; $72b6: $3d
    dec h                                         ; $72b7: $25
    ld b, h                                       ; $72b8: $44
    ld b, e                                       ; $72b9: $43
    jr nz, jr_068_729c                            ; $72ba: $20 $e0

    ld [$a6d4], a                                 ; $72bc: $ea $d4 $a6
    jr nc, jr_068_72cd                            ; $72bf: $30 $0c

jr_068_72c1:
    ldh a, [$e5]                                  ; $72c1: $f0 $e5
    nop                                           ; $72c3: $00
    add hl, hl                                    ; $72c4: $29
    dec l                                         ; $72c5: $2d
    ld hl, $e022                                  ; $72c6: $21 $22 $e0
    db $eb                                        ; $72c9: $eb
    nop                                           ; $72ca: $00
    jr nc, jr_068_72e2                            ; $72cb: $30 $15

jr_068_72cd:
    ldh a, [$e5]                                  ; $72cd: $f0 $e5
    rra                                           ; $72cf: $1f
    ld h, b                                       ; $72d0: $60
    ld a, a                                       ; $72d1: $7f
    and $2c                                       ; $72d2: $e6 $2c
    ld h, c                                       ; $72d4: $61
    ret nc                                        ; $72d5: $d0

    push af                                       ; $72d6: $f5
    jr nc, @+$14                                  ; $72d7: $30 $12

    jp c, $0003                                   ; $72d9: $da $03 $00

    ld a, $e4                                     ; $72dc: $3e $e4
    dec b                                         ; $72de: $05
    jr nz, jr_068_72c1                            ; $72df: $20 $e0

    pop af                                        ; $72e1: $f1

jr_068_72e2:
    ret nc                                        ; $72e2: $d0

    jp hl                                         ; $72e3: $e9


    jr nc, @+$0a                                  ; $72e4: $30 $08

Jump_068_72e6:
    ldh a, [$e6]                                  ; $72e6: $f0 $e6
    ld d, b                                       ; $72e8: $50
    ld bc, $c1fd                                  ; $72e9: $01 $fd $c1
    nop                                           ; $72ec: $00
    ld [hl], $03                                  ; $72ed: $36 $03
    ldh [$ef], a                                  ; $72ef: $e0 $ef
    ret nc                                        ; $72f1: $d0

    db $e4                                        ; $72f2: $e4
    jr nc, jr_068_7302                            ; $72f3: $30 $0d

    ldh a, [$e9]                                  ; $72f5: $f0 $e9
    cp d                                          ; $72f7: $ba
    and b                                         ; $72f8: $a0
    ld h, h                                       ; $72f9: $64
    ld [hl+], a                                   ; $72fa: $22
    ldh [$f5], a                                  ; $72fb: $e0 $f5
    nop                                           ; $72fd: $00
    ld b, l                                       ; $72fe: $45
    ld h, [hl]                                    ; $72ff: $66
    jr nc, jr_068_730a                            ; $7300: $30 $08

jr_068_7302:
    ldh a, [$e5]                                  ; $7302: $f0 $e5
    db $f4                                        ; $7304: $f4
    ld h, h                                       ; $7305: $64
    and e                                         ; $7306: $a3
    db $e3                                        ; $7307: $e3
    ldh [$f0], a                                  ; $7308: $e0 $f0

jr_068_730a:
    ret nc                                        ; $730a: $d0

    push hl                                       ; $730b: $e5
    ld b, b                                       ; $730c: $40
    dec b                                         ; $730d: $05
    nop                                           ; $730e: $00
    jr nc, jr_068_7320                            ; $730f: $30 $0f

    db $f4                                        ; $7311: $f4
    ld h, d                                       ; $7312: $62
    ret nz                                        ; $7313: $c0

    jp hl                                         ; $7314: $e9


    ldh [$ea], a                                  ; $7315: $e0 $ea
    ret nc                                        ; $7317: $d0

    rst $28                                       ; $7318: $ef
    or b                                          ; $7319: $b0
    ld b, $c0                                     ; $731a: $06 $c0
    db $e3                                        ; $731c: $e3
    jp hl                                         ; $731d: $e9


    ld h, e                                       ; $731e: $63
    nop                                           ; $731f: $00

jr_068_7320:
    db $ec                                        ; $7320: $ec
    dec h                                         ; $7321: $25
    ldh [$ef], a                                  ; $7322: $e0 $ef
    ret nc                                        ; $7324: $d0

    rst $20                                       ; $7325: $e7
    jr nc, jr_068_7335                            ; $7326: $30 $0d

    ldh a, [$e4]                                  ; $7328: $f0 $e4
    ld [hl], h                                    ; $732a: $74
    add d                                         ; $732b: $82
    db $ec                                        ; $732c: $ec
    ld hl, $f4e0                                  ; $732d: $21 $e0 $f4
    nop                                           ; $7330: $00
    ld b, b                                       ; $7331: $40
    ld b, $30                                     ; $7332: $06 $30
    dec c                                         ; $7334: $0d

jr_068_7335:
    ldh a, [$e4]                                  ; $7335: $f0 $e4
    ret nz                                        ; $7337: $c0

    db $e4                                        ; $7338: $e4
    adc l                                         ; $7339: $8d
    db $e4                                        ; $733a: $e4
    ret nc                                        ; $733b: $d0

    ld hl, sp+$30                                 ; $733c: $f8 $30
    dec bc                                        ; $733e: $0b
    ldh a, [$e4]                                  ; $733f: $f0 $e4
    nop                                           ; $7341: $00
    ldh a, [$a4]                                  ; $7342: $f0 $a4
    ld c, b                                       ; $7344: $48
    and c                                         ; $7345: $a1
    ldh [$f2], a                                  ; $7346: $e0 $f2
    ld d, b                                       ; $7348: $50
    ld [$f2f0], sp                                ; $7349: $08 $f0 $f2
    db $f4                                        ; $734c: $f4
    ld h, h                                       ; $734d: $64
    ret nz                                        ; $734e: $c0

    rst $28                                       ; $734f: $ef
    ret nc                                        ; $7350: $d0

    rst $28                                       ; $7351: $ef
    nop                                           ; $7352: $00
    jr nc, jr_068_735f                            ; $7353: $30 $0a

    rst $38                                       ; $7355: $ff
    xor e                                         ; $7356: $ab
    db $e4                                        ; $7357: $e4
    xor d                                         ; $7358: $aa
    ret nc                                        ; $7359: $d0

    ld a, [c]                                     ; $735a: $f2
    jr nc, jr_068_736c                            ; $735b: $30 $0f

    ldh a, [$e4]                                  ; $735d: $f0 $e4

jr_068_735f:
    xor b                                         ; $735f: $a8
    xor d                                         ; $7360: $aa
    ldh [$f0], a                                  ; $7361: $e0 $f0
    nop                                           ; $7363: $00
    ret nc                                        ; $7364: $d0

    and $30                                       ; $7365: $e6 $30
    inc c                                         ; $7367: $0c
    ldh a, [rIE]                                  ; $7368: $f0 $ff
    ldh [$eb], a                                  ; $736a: $e0 $eb

jr_068_736c:
    jr nc, @+$10                                  ; $736c: $30 $0e

    ldh a, [rIE]                                  ; $736e: $f0 $ff
    ldh [$eb], a                                  ; $7370: $e0 $eb
    jr nc, @+$15                                  ; $7372: $30 $13

    nop                                           ; $7374: $00
    ldh a, [rIE]                                  ; $7375: $f0 $ff
    ldh [$eb], a                                  ; $7377: $e0 $eb
    jr nc, @+$07                                  ; $7379: $30 $05

    ldh a, [rIE]                                  ; $737b: $f0 $ff
    ldh [$eb], a                                  ; $737d: $e0 $eb
    jr nc, jr_068_738f                            ; $737f: $30 $0e

    ldh a, [rIE]                                  ; $7381: $f0 $ff
    ldh [$eb], a                                  ; $7383: $e0 $eb
    nop                                           ; $7385: $00
    jr nc, jr_068_7394                            ; $7386: $30 $0c

    ldh a, [rIE]                                  ; $7388: $f0 $ff
    ldh [$eb], a                                  ; $738a: $e0 $eb
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00

jr_068_738f:
    rra                                           ; $738f: $1f
    ret c                                         ; $7390: $d8

    push de                                       ; $7391: $d5
    push de                                       ; $7392: $d5
    ret c                                         ; $7393: $d8

jr_068_7394:
    and b                                         ; $7394: $a0
    rst $38                                       ; $7395: $ff
    add sp, -$10                                  ; $7396: $e8 $f0
    rst $38                                       ; $7398: $ff
    ldh [$eb], a                                  ; $7399: $e0 $eb
    ld l, a                                       ; $739b: $6f
    jp nc, $d4d6                                  ; $739c: $d2 $d6 $d4

    sub $cd                                       ; $739f: $d6 $cd
    ld [c], a                                     ; $73a1: $e2
    sbc $df                                       ; $73a2: $de $df
    jp nc, $fce2                                  ; $73a4: $d2 $e2 $fc

    ldh a, [rIE]                                  ; $73a7: $f0 $ff
    ldh [$eb], a                                  ; $73a9: $e0 $eb
    sub $d2                                       ; $73ab: $d6 $d2
    ret nc                                        ; $73ad: $d0

    jp nc, $d6d4                                  ; $73ae: $d2 $d4 $d6

    rst $18                                       ; $73b1: $df
    db $d3                                        ; $73b2: $d3
    and b                                         ; $73b3: $a0
    and b                                         ; $73b4: $a0
    ldh [$e1], a                                  ; $73b5: $e0 $e1
    adc c                                         ; $73b7: $89
    ldh [$d3], a                                  ; $73b8: $e0 $d3
    ret nc                                        ; $73ba: $d0

    db $ec                                        ; $73bb: $ec
    ldh a, [rIE]                                  ; $73bc: $f0 $ff
    ldh [$eb], a                                  ; $73be: $e0 $eb
    rst $10                                       ; $73c0: $d7
    call nc, $e0cf                                ; $73c1: $d4 $cf $e0
    rst $10                                       ; $73c4: $d7
    jp nc, $e7d8                                  ; $73c5: $d2 $d8 $e7

    and b                                         ; $73c8: $a0
    ld [c], a                                     ; $73c9: $e2
    db $e3                                        ; $73ca: $e3
    ldh a, [rIE]                                  ; $73cb: $f0 $ff
    ldh a, [$f0]                                  ; $73cd: $f0 $f0
    db $dd                                        ; $73cf: $dd
    reti                                          ; $73d0: $d9


    rst $10                                       ; $73d1: $d7
    rst $28                                       ; $73d2: $ef
    call nc, $ddd7                                ; $73d3: $d4 $d7 $dd
    ret nc                                        ; $73d6: $d0

    adc a                                         ; $73d7: $8f
    ldh [$a0], a                                  ; $73d8: $e0 $a0
    db $eb                                        ; $73da: $eb
    and b                                         ; $73db: $a0
    and a                                         ; $73dc: $a7
    and b                                         ; $73dd: $a0
    rst $10                                       ; $73de: $d7
    jp nc, $fff0                                  ; $73df: $d2 $f0 $ff

    ldh [$eb], a                                  ; $73e2: $e0 $eb
    ret nc                                        ; $73e4: $d0

    cp [hl]                                       ; $73e5: $be
    ldh [$dd], a                                  ; $73e6: $e0 $dd
    db $fd                                        ; $73e8: $fd
    pop de                                        ; $73e9: $d1
    ret nc                                        ; $73ea: $d0

    pop hl                                        ; $73eb: $e1
    db $ec                                        ; $73ec: $ec
    db $ed                                        ; $73ed: $ed
    and b                                         ; $73ee: $a0
    and b                                         ; $73ef: $a0
    jp c, $a4d3                                   ; $73f0: $da $d3 $a4

    ldh a, [rIE]                                  ; $73f3: $f0 $ff
    ldh [$eb], a                                  ; $73f5: $e0 $eb
    call nc, $e050                                ; $73f7: $d4 $50 $e0
    ld c, $e0                                     ; $73fa: $0e $e0
    rst $10                                       ; $73fc: $d7
    adc h                                         ; $73fd: $8c
    jp $e9dc                                      ; $73fe: $c3 $dc $e9


    rst $10                                       ; $7401: $d7
    ldh a, [rIE]                                  ; $7402: $f0 $ff
    ldh [$eb], a                                  ; $7404: $e0 $eb
    reti                                          ; $7406: $d9


    ld d, b                                       ; $7407: $50
    ldh [$d4], a                                  ; $7408: $e0 $d4
    rst $10                                       ; $740a: $d7
    reti                                          ; $740b: $d9


    ld h, l                                       ; $740c: $65
    jp c, $c44c                                   ; $740d: $da $4c $c4

    jp c, $fff0                                   ; $7410: $da $f0 $ff

    ldh [$eb], a                                  ; $7413: $e0 $eb
    db $db                                        ; $7415: $db
    db $db                                        ; $7416: $db
    call $17e0                                    ; $7417: $cd $e0 $17
    jp c, $dcdb                                   ; $741a: $da $db $dc

    inc c                                         ; $741d: $0c
    call nz, $f0dc                                ; $741e: $c4 $dc $f0
    rst $38                                       ; $7421: $ff
    ldh [$eb], a                                  ; $7422: $e0 $eb
    db $dd                                        ; $7424: $dd
    ld [c], a                                     ; $7425: $e2
    ld [bc], a                                    ; $7426: $02
    jp nc, $d8e1                                  ; $7427: $d2 $e1 $d8

    ret z                                         ; $742a: $c8

    and l                                         ; $742b: $a5
    ldh a, [$e4]                                  ; $742c: $f0 $e4
    nop                                           ; $742e: $00
    jp nz, $e8f0                                  ; $742f: $c2 $f0 $e8

    ldh [$ed], a                                  ; $7432: $e0 $ed
    ret nc                                        ; $7434: $d0

    and $ce                                       ; $7435: $e6 $ce
    sub d                                         ; $7437: $92
    and c                                         ; $7438: $a1
    db $e4                                        ; $7439: $e4
    push hl                                       ; $743a: $e5
    ret c                                         ; $743b: $d8

    ld [$86c0], sp                                ; $743c: $08 $c0 $86
    and a                                         ; $743f: $a7
    db $e4                                        ; $7440: $e4
    push hl                                       ; $7441: $e5
    ld h, d                                       ; $7442: $62
    nop                                           ; $7443: $00
    jp nz, $e0ea                                  ; $7444: $c2 $ea $e0

    rst $30                                       ; $7447: $f7
    ret nc                                        ; $7448: $d0

    and $88                                       ; $7449: $e6 $88
    ld [c], a                                     ; $744b: $e2
    and $e7                                       ; $744c: $e6 $e7
    halt                                          ; $744e: $76
    ret nz                                        ; $744f: $c0

    db $e3                                        ; $7450: $e3
    pop de                                        ; $7451: $d1
    ret nc                                        ; $7452: $d0

    add hl, bc                                    ; $7453: $09
    ret nz                                        ; $7454: $c0

    ldh a, [$e5]                                  ; $7455: $f0 $e5
    nop                                           ; $7457: $00
    jp $a29f                                      ; $7458: $c3 $9f $a2


    sbc l                                         ; $745b: $9d
    pop de                                        ; $745c: $d1
    sbc a                                         ; $745d: $9f
    ld [hl-], a                                   ; $745e: $32
    and c                                         ; $745f: $a1
    ldh [$ef], a                                  ; $7460: $e0 $ef
    ret nc                                        ; $7462: $d0

    and $d3                                       ; $7463: $e6 $d3
    inc d                                         ; $7465: $14
    pop bc                                        ; $7466: $c1
    add sp, -$17                                  ; $7467: $e8 $e9
    pop af                                        ; $7469: $f1
    jp c, $a3c7                                   ; $746a: $da $c7 $a3

    ldh a, [$e6]                                  ; $746d: $f0 $e6
    db $fc                                        ; $746f: $fc
    add d                                         ; $7470: $82
    sbc a                                         ; $7471: $9f
    sbc h                                         ; $7472: $9c
    xor [hl]                                      ; $7473: $ae
    xor [hl]                                      ; $7474: $ae
    add e                                         ; $7475: $83
    sbc h                                         ; $7476: $9c
    and d                                         ; $7477: $a2
    cp [hl]                                       ; $7478: $be
    ldh [$e0], a                                  ; $7479: $e0 $e0
    rst $28                                       ; $747b: $ef
    ret nc                                        ; $747c: $d0

    and $d1                                       ; $747d: $e6 $d1

jr_068_747f:
    and b                                         ; $747f: $a0
    ld d, [hl]                                    ; $7480: $56
    jp nz, $f0da                                  ; $7481: $c2 $da $f0

    rst $00                                       ; $7484: $c7
    and c                                         ; $7485: $a1
    adc c                                         ; $7486: $89
    ret nz                                        ; $7487: $c0

    ldh a, [$e4]                                  ; $7488: $f0 $e4
    pop bc                                        ; $748a: $c1
    db $e3                                        ; $748b: $e3
    ld b, l                                       ; $748c: $45
    xor a                                         ; $748d: $af
    xor a                                         ; $748e: $af
    ld b, [hl]                                    ; $748f: $46
    inc hl                                        ; $7490: $23
    xor [hl]                                      ; $7491: $ae
    sbc h                                         ; $7492: $9c
    ld a, l                                       ; $7493: $7d
    pop hl                                        ; $7494: $e1
    ldh [$ed], a                                  ; $7495: $e0 $ed
    ret nc                                        ; $7497: $d0

    and $da                                       ; $7498: $e6 $da
    ld d, h                                       ; $749a: $54
    ret nz                                        ; $749b: $c0

    jr jr_068_747f                                ; $749c: $18 $e1

    push bc                                       ; $749e: $c5
    call c, $c087                                 ; $749f: $dc $87 $c0
    jp c, $c089                                   ; $74a2: $da $89 $c0

    ldh a, [$e5]                                  ; $74a5: $f0 $e5
    add d                                         ; $74a7: $82
    ld [c], a                                     ; $74a8: $e2
    ld b, a                                       ; $74a9: $47
    ld c, h                                       ; $74aa: $4c
    ld b, a                                       ; $74ab: $47
    ld c, c                                       ; $74ac: $49
    ld c, b                                       ; $74ad: $48
    xor a                                         ; $74ae: $af
    cp a                                          ; $74af: $bf
    db $e4                                        ; $74b0: $e4
    ldh [$ec], a                                  ; $74b1: $e0 $ec
    ret nc                                        ; $74b3: $d0

    push hl                                       ; $74b4: $e5
    call c, $c854                                 ; $74b5: $dc $54 $c8
    ld hl, sp+$4a                                 ; $74b8: $f8 $4a
    pop bc                                        ; $74ba: $c1
    ldh a, [$e6]                                  ; $74bb: $f0 $e6
    ld b, e                                       ; $74bd: $43
    ldh [$af], a                                  ; $74be: $e0 $af
    ld d, e                                       ; $74c0: $53
    ld e, c                                       ; $74c1: $59
    ld e, c                                       ; $74c2: $59
    ld d, e                                       ; $74c3: $53
    adc a                                         ; $74c4: $8f
    ld b, l                                       ; $74c5: $45
    xor a                                         ; $74c6: $af
    xor [hl]                                      ; $74c7: $ae
    sbc [hl]                                      ; $74c8: $9e
    ldh [$f1], a                                  ; $74c9: $e0 $f1
    add $e8                                       ; $74cb: $c6 $e8
    inc d                                         ; $74cd: $14
    sub d                                         ; $74ce: $92
    sbc [hl]                                      ; $74cf: $9e
    rst $38                                       ; $74d0: $ff
    xor [hl]                                      ; $74d1: $ae
    xor a                                         ; $74d2: $af
    ld a, c                                       ; $74d3: $79
    ld a, d                                       ; $74d4: $7a
    ld a, e                                       ; $74d5: $7b
    ld a, e                                       ; $74d6: $7b
    ld a, e                                       ; $74d7: $7b
    ld a, h                                       ; $74d8: $7c
    inc bc                                        ; $74d9: $03
    ld a, l                                       ; $74da: $7d
    xor a                                         ; $74db: $af
    ret nz                                        ; $74dc: $c0

    db $e3                                        ; $74dd: $e3
    ei                                            ; $74de: $fb
    xor $d4                                       ; $74df: $ee $d4
    ld h, c                                       ; $74e1: $61
    jp nc, $1462                                  ; $74e2: $d2 $62 $14

    add c                                         ; $74e5: $81
    rst $00                                       ; $74e6: $c7
    ld h, b                                       ; $74e7: $60
    ld hl, sp+$05                                 ; $74e8: $f8 $05
    add b                                         ; $74ea: $80
    inc a                                         ; $74eb: $3c
    jp $8204                                      ; $74ec: $c3 $04 $82


    and c                                         ; $74ef: $a1
    xor a                                         ; $74f0: $af
    ld a, c                                       ; $74f1: $79
    ld a, [hl]                                    ; $74f2: $7e
    inc l                                         ; $74f3: $2c
    ccf                                           ; $74f4: $3f
    ld a, [hl+]                                   ; $74f5: $2a
    ld b, e                                       ; $74f6: $43
    dec l                                         ; $74f7: $2d
    ld a, [hl+]                                   ; $74f8: $2a
    ld a, a                                       ; $74f9: $7f
    ld a, l                                       ; $74fa: $7d
    cp $c1                                        ; $74fb: $fe $c1
    call c, $b0e3                                 ; $74fd: $dc $e3 $b0
    and h                                         ; $7500: $a4
    ld h, e                                       ; $7501: $63
    ret nc                                        ; $7502: $d0

    add sp, -$6a                                  ; $7503: $e8 $96
    add d                                         ; $7505: $82
    inc d                                         ; $7506: $14
    add c                                         ; $7507: $81
    db $d3                                        ; $7508: $d3
    sub $46                                       ; $7509: $d6 $46
    add c                                         ; $750b: $81
    sub $fe                                       ; $750c: $d6 $fe
    ldh a, [$e6]                                  ; $750e: $f0 $e6
    sbc a                                         ; $7510: $9f
    sbc h                                         ; $7511: $9c
    ld a, c                                       ; $7512: $79
    ld a, [hl]                                    ; $7513: $7e
    xor [hl]                                      ; $7514: $ae
    ld a, [hl+]                                   ; $7515: $2a
    jr nz, jr_068_7527                            ; $7516: $20 $0f

    cpl                                           ; $7518: $2f
    jr nz, jr_068_7545                            ; $7519: $20 $2a

    xor [hl]                                      ; $751b: $ae
    cp a                                          ; $751c: $bf
    ld [c], a                                     ; $751d: $e2
    ldh a, [$60]                                  ; $751e: $f0 $60
    call c, $d0a6                                 ; $7520: $dc $a6 $d0
    db $ed                                        ; $7523: $ed
    ld [c], a                                     ; $7524: $e2
    inc d                                         ; $7525: $14
    add b                                         ; $7526: $80

jr_068_7527:
    ret c                                         ; $7527: $d8

    dec bc                                        ; $7528: $0b
    add b                                         ; $7529: $80
    ret z                                         ; $752a: $c8

    add c                                         ; $752b: $81
    ldh a, [$e5]                                  ; $752c: $f0 $e5
    sbc a                                         ; $752e: $9f
    sbc h                                         ; $752f: $9c
    ld b, [hl]                                    ; $7530: $46
    rst $38                                       ; $7531: $ff
    add b                                         ; $7532: $80
    xor [hl]                                      ; $7533: $ae
    xor a                                         ; $7534: $af
    ld b, l                                       ; $7535: $45
    cp l                                          ; $7536: $bd
    inc l                                         ; $7537: $2c
    ld a, [hl+]                                   ; $7538: $2a
    ld b, l                                       ; $7539: $45
    rra                                           ; $753a: $1f
    xor a                                         ; $753b: $af
    ld b, [hl]                                    ; $753c: $46
    add c                                         ; $753d: $81
    ld b, [hl]                                    ; $753e: $46
    and c                                         ; $753f: $a1
    ldh a, [$61]                                  ; $7540: $f0 $61
    call c, $d0a6                                 ; $7542: $dc $a6 $d0

jr_068_7545:
    add sp, $30                                   ; $7545: $e8 $30
    dec c                                         ; $7547: $0d
    pop bc                                        ; $7548: $c1
    rla                                           ; $7549: $17
    add b                                         ; $754a: $80
    or $61                                        ; $754b: $f6 $61
    rlca                                          ; $754d: $07
    add b                                         ; $754e: $80
    reti                                          ; $754f: $d9


    db $dd                                        ; $7550: $dd
    ldh a, [$e4]                                  ; $7551: $f0 $e4
    pop bc                                        ; $7553: $c1
    ldh [rIE], a                                  ; $7554: $e0 $ff
    ld b, [hl]                                    ; $7556: $46
    add b                                         ; $7557: $80
    xor a                                         ; $7558: $af
    xor [hl]                                      ; $7559: $ae
    ld b, a                                       ; $755a: $47
    ld c, c                                       ; $755b: $49
    ld c, [hl]                                    ; $755c: $4e
    ld c, c                                       ; $755d: $49
    ccf                                           ; $755e: $3f
    ld d, d                                       ; $755f: $52
    ld b, l                                       ; $7560: $45
    xor [hl]                                      ; $7561: $ae
    add c                                         ; $7562: $81
    ld b, [hl]                                    ; $7563: $46
    or [hl]                                       ; $7564: $b6
    cp c                                          ; $7565: $b9
    and c                                         ; $7566: $a1
    call c, $a6a5                                 ; $7567: $dc $a5 $a6
    ret nc                                        ; $756a: $d0

    jp hl                                         ; $756b: $e9


    db $d3                                        ; $756c: $d3
    jp c, $8217                                   ; $756d: $da $17 $82

    ld d, [hl]                                    ; $7570: $56
    ld h, b                                       ; $7571: $60
    pop de                                        ; $7572: $d1
    rlca                                          ; $7573: $07
    add b                                         ; $7574: $80
    ret nc                                        ; $7575: $d0

    db $fd                                        ; $7576: $fd
    ret nc                                        ; $7577: $d0

    ldh a, [$e4]                                  ; $7578: $f0 $e4
    sbc [hl]                                      ; $757a: $9e
    xor [hl]                                      ; $757b: $ae
    ld b, [hl]                                    ; $757c: $46
    ld b, [hl]                                    ; $757d: $46
    add d                                         ; $757e: $82
    add e                                         ; $757f: $83
    cp $80                                        ; $7580: $fe $80
    ret nz                                        ; $7582: $c0

    ld d, h                                       ; $7583: $54
    ld d, h                                       ; $7584: $54
    ld d, e                                       ; $7585: $53
    xor [hl]                                      ; $7586: $ae
    xor a                                         ; $7587: $af
    add c                                         ; $7588: $81
    ld b, [hl]                                    ; $7589: $46
    ld de, $bf90                                  ; $758a: $11 $90 $bf
    pop hl                                        ; $758d: $e1
    call c, $d0a4                                 ; $758e: $dc $a4 $d0
    ld [$96d7], a                                 ; $7591: $ea $d7 $96
    add h                                         ; $7594: $84
    ld c, b                                       ; $7595: $48
    ld h, c                                       ; $7596: $61
    ld b, $60                                     ; $7597: $06 $60
    db $fd                                        ; $7599: $fd
    call nc, $e4f0                                ; $759a: $d4 $f0 $e4
    sbc [hl]                                      ; $759d: $9e
    xor a                                         ; $759e: $af
    xor [hl]                                      ; $759f: $ae
    ld b, [hl]                                    ; $75a0: $46
    add l                                         ; $75a1: $85
    adc e                                         ; $75a2: $8b
    rst $38                                       ; $75a3: $ff
    ld b, [hl]                                    ; $75a4: $46
    xor [hl]                                      ; $75a5: $ae
    ld b, [hl]                                    ; $75a6: $46
    xor [hl]                                      ; $75a7: $ae
    xor [hl]                                      ; $75a8: $ae
    ld b, [hl]                                    ; $75a9: $46
    xor a                                         ; $75aa: $af
    add e                                         ; $75ab: $83
    rrca                                          ; $75ac: $0f
    add h                                         ; $75ad: $84
    ld b, [hl]                                    ; $75ae: $46
    sub b                                         ; $75af: $90
    sub b                                         ; $75b0: $90
    inc a                                         ; $75b1: $3c
    pop bc                                        ; $75b2: $c1
    call c, $d0a5                                 ; $75b3: $dc $a5 $d0
    add sp, $17                                   ; $75b6: $e8 $17
    add a                                         ; $75b8: $87
    ret c                                         ; $75b9: $d8

    ld [$0782], sp                                ; $75ba: $08 $82 $07
    add h                                         ; $75bd: $84
    add [hl]                                      ; $75be: $86
    and c                                         ; $75bf: $a1
    ld b, e                                       ; $75c0: $43
    ld b, l                                       ; $75c1: $45
    ld a, a                                       ; $75c2: $7f
    ldh [$ae], a                                  ; $75c3: $e0 $ae
    xor a                                         ; $75c5: $af
    ld e, $b7                                     ; $75c6: $1e $b7
    ldh [$8a], a                                  ; $75c8: $e0 $8a
    add l                                         ; $75ca: $85
    ld b, [hl]                                    ; $75cb: $46
    sub c                                         ; $75cc: $91
    ld a, a                                       ; $75cd: $7f
    ld [c], a                                     ; $75ce: $e2
    jp nc, $d0a8                                  ; $75cf: $d2 $a8 $d0

    push hl                                       ; $75d2: $e5
    ld hl, sp+$17                                 ; $75d3: $f8 $17
    add a                                         ; $75d5: $87
    ld [$0782], sp                                ; $75d6: $08 $82 $07
    add h                                         ; $75d9: $84
    and c                                         ; $75da: $a1
    ld b, l                                       ; $75db: $45
    ld b, a                                       ; $75dc: $47
    ld c, h                                       ; $75dd: $4c
    ld c, h                                       ; $75de: $4c
    cp a                                          ; $75df: $bf
    ld b, a                                       ; $75e0: $47
    add l                                         ; $75e1: $85
    add [hl]                                      ; $75e2: $86
    add e                                         ; $75e3: $83
    xor a                                         ; $75e4: $af
    ld b, [hl]                                    ; $75e5: $46
    add c                                         ; $75e6: $81
    ld [c], a                                     ; $75e7: $e2
    ld b, l                                       ; $75e8: $45
    rlca                                          ; $75e9: $07
    ld c, b                                       ; $75ea: $48
    ld c, [hl]                                    ; $75eb: $4e
    ld c, b                                       ; $75ec: $48
    add hl, sp                                    ; $75ed: $39
    and d                                         ; $75ee: $a2
    push de                                       ; $75ef: $d5
    pop bc                                        ; $75f0: $c1
    ret nc                                        ; $75f1: $d0

    ld [$23dc], a                                 ; $75f2: $ea $dc $23
    call $fe21                                    ; $75f5: $cd $21 $fe
    ld [$9f88], sp                                ; $75f8: $08 $88 $9f
    sbc h                                         ; $75fb: $9c
    ld b, a                                       ; $75fc: $47
    ld h, b                                       ; $75fd: $60
    ld h, c                                       ; $75fe: $61
    ld h, c                                       ; $75ff: $61
    ld h, c                                       ; $7600: $61
    rst $28                                       ; $7601: $ef
    ld d, d                                       ; $7602: $52
    add l                                         ; $7603: $85
    add a                                         ; $7604: $87
    adc b                                         ; $7605: $88
    rst $38                                       ; $7606: $ff
    ldh [$87], a                                  ; $7607: $e0 $87
    add l                                         ; $7609: $85
    ld b, l                                       ; $760a: $45
    ld c, $f1                                     ; $760b: $0e $f1
    ldh [$60], a                                  ; $760d: $e0 $60
    ld d, l                                       ; $760f: $55
    and c                                         ; $7610: $a1
    db $ec                                        ; $7611: $ec
    ld b, e                                       ; $7612: $43
    ret nc                                        ; $7613: $d0

    db $ec                                        ; $7614: $ec
    call c, Call_068_4721                         ; $7615: $dc $21 $47
    add b                                         ; $7618: $80
    ld a, b                                       ; $7619: $78
    ld c, $80                                     ; $761a: $0e $80
    adc c                                         ; $761c: $89
    inc hl                                        ; $761d: $23
    ld [$9f40], sp                                ; $761e: $08 $40 $9f
    sbc h                                         ; $7621: $9c
    ld b, h                                       ; $7622: $44
    ld c, l                                       ; $7623: $4d
    pop bc                                        ; $7624: $c1
    ldh [$fe], a                                  ; $7625: $e0 $fe
    cp a                                          ; $7627: $bf
    ldh [rSCX], a                                 ; $7628: $e0 $43
    ld b, e                                       ; $762a: $43
    ld b, e                                       ; $762b: $43
    ld c, b                                       ; $762c: $48
    ld c, [hl]                                    ; $762d: $4e
    ld c, [hl]                                    ; $762e: $4e
    ld c, [hl]                                    ; $762f: $4e
    dec e                                         ; $7630: $1d
    ld c, c                                       ; $7631: $49
    or d                                          ; $7632: $b2
    pop hl                                        ; $7633: $e1
    ld d, [hl]                                    ; $7634: $56
    sbc h                                         ; $7635: $9c
    sbc a                                         ; $7636: $9f
    ldh a, [$62]                                  ; $7637: $f0 $62
    ret nc                                        ; $7639: $d0

    db $ec                                        ; $763a: $ec
    rst $00                                       ; $763b: $c7
    ld h, b                                       ; $763c: $60
    and d                                         ; $763d: $a2
    rlca                                          ; $763e: $07
    add b                                         ; $763f: $80
    rst $10                                       ; $7640: $d7
    ld c, $80                                     ; $7641: $0e $80
    ld a, l                                       ; $7643: $7d
    ld h, e                                       ; $7644: $63
    ld [$9e40], sp                                ; $7645: $08 $40 $9e
    sub b                                         ; $7648: $90
    pop hl                                        ; $7649: $e1
    ld h, c                                       ; $764a: $61
    ld a, a                                       ; $764b: $7f
    ld h, c                                       ; $764c: $61
    ld d, a                                       ; $764d: $57
    ld h, c                                       ; $764e: $61
    ld h, c                                       ; $764f: $61
    ld c, h                                       ; $7650: $4c
    ld c, h                                       ; $7651: $4c
    ld c, h                                       ; $7652: $4c
    ld [hl], a                                    ; $7653: $77
    pop hl                                        ; $7654: $e1
    ld b, [hl]                                    ; $7655: $46
    or e                                          ; $7656: $b3
    ld [c], a                                     ; $7657: $e2
    ld e, b                                       ; $7658: $58
    ld b, h                                       ; $7659: $44
    ld sp, hl                                     ; $765a: $f9
    add d                                         ; $765b: $82
    ret nc                                        ; $765c: $d0

    db $ed                                        ; $765d: $ed
    ret                                           ; $765e: $c9


    and e                                         ; $765f: $a3
    jp c, $810e                                   ; $7660: $da $0e $81

    add sp, -$0b                                  ; $7663: $e8 $f5
    ld h, d                                       ; $7665: $62
    ld b, d                                       ; $7666: $42
    push hl                                       ; $7667: $e5
    ld c, b                                       ; $7668: $48
    ret nz                                        ; $7669: $c0

    ld d, d                                       ; $766a: $52
    ld a, e                                       ; $766b: $7b
    ld [c], a                                     ; $766c: $e2
    ld d, h                                       ; $766d: $54
    ld d, e                                       ; $766e: $53
    ld d, e                                       ; $766f: $53
    dec c                                         ; $7670: $0d
    ld d, h                                       ; $7671: $54
    ld [hl], d                                    ; $7672: $72
    pop hl                                        ; $7673: $e1
    ld d, [hl]                                    ; $7674: $56
    ld b, l                                       ; $7675: $45
    cp c                                          ; $7676: $b9
    add d                                         ; $7677: $82
    ret nc                                        ; $7678: $d0

    db $ed                                        ; $7679: $ed
    rst $00                                       ; $767a: $c7
    ld h, b                                       ; $767b: $60
    sub c                                         ; $767c: $91
    ld b, b                                       ; $767d: $40
    call nc, Call_068_42d0                        ; $767e: $d4 $d0 $42
    push af                                       ; $7681: $f5
    ld h, h                                       ; $7682: $64
    sbc [hl]                                      ; $7683: $9e
    ld b, d                                       ; $7684: $42
    pop hl                                        ; $7685: $e1
    ld d, [hl]                                    ; $7686: $56
    ld c, b                                       ; $7687: $48
    ret nz                                        ; $7688: $c0

    ld d, c                                       ; $7689: $51
    ld e, [hl]                                    ; $768a: $5e
    ld [hl], h                                    ; $768b: $74
    ei                                            ; $768c: $fb
    pop bc                                        ; $768d: $c1
    inc a                                         ; $768e: $3c
    ret nz                                        ; $768f: $c0

    ld b, l                                       ; $7690: $45
    or [hl]                                       ; $7691: $b6
    pop hl                                        ; $7692: $e1
    ld d, l                                       ; $7693: $55
    sbc h                                         ; $7694: $9c
    sbc a                                         ; $7695: $9f
    db $ec                                        ; $7696: $ec
    ld bc, $d048                                  ; $7697: $01 $48 $d0
    db $ed                                        ; $769a: $ed
    rst $00                                       ; $769b: $c7
    ld h, b                                       ; $769c: $60
    sub c                                         ; $769d: $91
    ld b, e                                       ; $769e: $43
    ld [$62f5], a                                 ; $769f: $ea $f5 $62
    ret nz                                        ; $76a2: $c0

    push hl                                       ; $76a3: $e5
    ld e, d                                       ; $76a4: $5a
    rst $38                                       ; $76a5: $ff
    and b                                         ; $76a6: $a0
    db $ed                                        ; $76a7: $ed
    ld c, d                                       ; $76a8: $4a
    cp e                                          ; $76a9: $bb
    ret nz                                        ; $76aa: $c0

    ld e, b                                       ; $76ab: $58
    ld b, h                                       ; $76ac: $44
    inc a                                         ; $76ad: $3c
    ret nz                                        ; $76ae: $c0

    ld b, [hl]                                    ; $76af: $46
    xor [hl]                                      ; $76b0: $ae
    ld c, e                                       ; $76b1: $4b
    and e                                         ; $76b2: $a3
    ld h, c                                       ; $76b3: $61
    ld d, d                                       ; $76b4: $52
    db $fc                                        ; $76b5: $fc
    add e                                         ; $76b6: $83
    ret nc                                        ; $76b7: $d0

    rst $28                                       ; $76b8: $ef
    cpl                                           ; $76b9: $2f
    adc [hl]                                      ; $76ba: $8e
    and c                                         ; $76bb: $a1
    add b                                         ; $76bc: $80
    ld [c], a                                     ; $76bd: $e2
    ld b, l                                       ; $76be: $45
    or a                                          ; $76bf: $b7
    xor a                                         ; $76c0: $af
    ld b, l                                       ; $76c1: $45
    ld c, e                                       ; $76c2: $4b
    cp e                                          ; $76c3: $bb
    pop bc                                        ; $76c4: $c1
    ld d, l                                       ; $76c5: $55
    ld b, [hl]                                    ; $76c6: $46
    ld a, l                                       ; $76c7: $7d
    ld h, b                                       ; $76c8: $60
    xor a                                         ; $76c9: $af
    ld bc, $424f                                  ; $76ca: $01 $4f $42
    ld [c], a                                     ; $76cd: $e2
    db $ec                                        ; $76ce: $ec
    ld [bc], a                                    ; $76cf: $02
    rst $08                                       ; $76d0: $cf
    ld l, e                                       ; $76d1: $6b
    jr nc, @+$0f                                  ; $76d2: $30 $0d

    ld a, [bc]                                    ; $76d4: $0a
    ld h, d                                       ; $76d5: $62
    rlca                                          ; $76d6: $07
    pop hl                                        ; $76d7: $e1
    ld b, $a0                                     ; $76d8: $06 $a0
    halt                                          ; $76da: $76
    push bc                                       ; $76db: $c5
    jp nz, Jump_068_4556                          ; $76dc: $c2 $56 $45

    pop bc                                        ; $76df: $c1
    ldh [rLYC], a                                 ; $76e0: $e0 $45
    ld c, e                                       ; $76e2: $4b
    ld e, d                                       ; $76e3: $5a
    ld a, [hl-]                                   ; $76e4: $3a
    ld h, d                                       ; $76e5: $62
    ld b, $dc                                     ; $76e6: $06 $dc
    ld l, l                                       ; $76e8: $6d
    and b                                         ; $76e9: $a0
    and b                                         ; $76ea: $a0
    jr nc, jr_068_76f7                            ; $76eb: $30 $0a

    db $fc                                        ; $76ed: $fc
    inc h                                         ; $76ee: $24
    cp a                                          ; $76ef: $bf
    db $e3                                        ; $76f0: $e3
    adc b                                         ; $76f1: $88
    push bc                                       ; $76f2: $c5
    ld a, $60                                     ; $76f3: $3e $60
    cpl                                           ; $76f5: $2f
    ld c, b                                       ; $76f6: $48

jr_068_76f7:
    ld c, c                                       ; $76f7: $49

jr_068_76f8:
    ld h, b                                       ; $76f8: $60
    ld d, l                                       ; $76f9: $55
    add e                                         ; $76fa: $83
    jp $d0d5                                      ; $76fb: $c3 $d5 $d0


    ld [$e082], a                                 ; $76fe: $ea $82 $e0
    inc h                                         ; $7701: $24
    jr nc, jr_068_770d                            ; $7702: $30 $09

    db $fc                                        ; $7704: $fc
    ld h, $9e                                     ; $7705: $26 $9e
    ld b, l                                       ; $7707: $45
    db $e3                                        ; $7708: $e3
    ld b, [hl]                                    ; $7709: $46
    call nz, Call_000_3c60                        ; $770a: $c4 $60 $3c

jr_068_770d:
    ret nz                                        ; $770d: $c0

    ld [bc], a                                    ; $770e: $02
    pop hl                                        ; $770f: $e1
    ld [hl], b                                    ; $7710: $70
    jp z, $d082                                   ; $7711: $ca $82 $d0

    jp hl                                         ; $7714: $e9


    jr nc, jr_068_7724                            ; $7715: $30 $0d

    db $fc                                        ; $7717: $fc
    ld h, $9e                                     ; $7718: $26 $9e
    sub c                                         ; $771a: $91
    ld c, d                                       ; $771b: $4a
    ld a, [bc]                                    ; $771c: $0a
    jp Jump_068_57df                              ; $771d: $c3 $df $57


    ld d, a                                       ; $7720: $57
    ld d, h                                       ; $7721: $54
    ld e, c                                       ; $7722: $59
    ld e, c                                       ; $7723: $59

jr_068_7724:
    ld b, d                                       ; $7724: $42
    ret nz                                        ; $7725: $c0

    ld d, [hl]                                    ; $7726: $56
    ld b, l                                       ; $7727: $45
    ldh [$83], a                                  ; $7728: $e0 $83
    and b                                         ; $772a: $a0
    ret nc                                        ; $772b: $d0

    xor $3a                                       ; $772c: $ee $3a
    add d                                         ; $772e: $82
    jr nc, jr_068_7739                            ; $772f: $30 $08

    db $fc                                        ; $7731: $fc
    ld h, $9f                                     ; $7732: $26 $9f
    or [hl]                                       ; $7734: $b6
    ld b, l                                       ; $7735: $45
    ei                                            ; $7736: $fb
    ld d, e                                       ; $7737: $53
    ld d, h                                       ; $7738: $54

jr_068_7739:
    call nz, Call_068_53e0                        ; $7739: $c4 $e0 $53
    ld b, e                                       ; $773c: $43
    ld b, e                                       ; $773d: $43
    ld b, l                                       ; $773e: $45
    ld b, [hl]                                    ; $773f: $46
    rst $08                                       ; $7740: $cf
    ld b, [hl]                                    ; $7741: $46
    ld b, h                                       ; $7742: $44
    ld c, e                                       ; $7743: $4b
    ld d, a                                       ; $7744: $57
    ld b, h                                       ; $7745: $44
    ret nz                                        ; $7746: $c0

    reti                                          ; $7747: $d9


    ld h, d                                       ; $7748: $62
    rst $10                                       ; $7749: $d7
    jp nc, $d0f0                                  ; $774a: $d2 $f0 $d0

    jp hl                                         ; $774d: $e9


    di                                            ; $774e: $f3
    and d                                         ; $774f: $a2
    jr nc, jr_068_775a                            ; $7750: $30 $08

    db $fc                                        ; $7752: $fc
    ld h, $a0                                     ; $7753: $26 $a0
    and c                                         ; $7755: $a1
    sub b                                         ; $7756: $90
    jp Jump_068_452d                              ; $7757: $c3 $2d $45


jr_068_775a:
    call nz, Call_000_37e0                        ; $775a: $c4 $e0 $37
    dec a                                         ; $775d: $3d
    rst $38                                       ; $775e: $ff
    ldh [$37], a                                  ; $775f: $e0 $37
    or $e1                                        ; $7761: $f6 $e1
    ld a, [hl]                                    ; $7763: $7e
    ld b, b                                       ; $7764: $40
    add [hl]                                      ; $7765: $86
    add hl, bc                                    ; $7766: $09
    add c                                         ; $7767: $81
    jp c, $d0d3                                   ; $7768: $da $d3 $d0

    jp hl                                         ; $776b: $e9


    ldh a, [$e1]                                  ; $776c: $f0 $e1
    jr nc, jr_068_777a                            ; $776e: $30 $0a

    jr nz, jr_068_76f8                            ; $7770: $20 $86

    sbc a                                         ; $7772: $9f
    rst $38                                       ; $7773: $ff
    or [hl]                                       ; $7774: $b6
    call nz, $91c3                                ; $7775: $c4 $c3 $91
    ld b, [hl]                                    ; $7778: $46
    add hl, sp                                    ; $7779: $39

jr_068_777a:
    and h                                         ; $777a: $a4
    ld h, h                                       ; $777b: $64
    ld e, $ff                                     ; $777c: $1e $ff
    ldh [$a5], a                                  ; $777e: $e0 $a5
    add hl, sp                                    ; $7780: $39
    xor [hl]                                      ; $7781: $ae
    sub c                                         ; $7782: $91
    ld [bc], a                                    ; $7783: $02
    add d                                         ; $7784: $82
    sub c                                         ; $7785: $91
    ld bc, $0023                                  ; $7786: $01 $23 $00
    ldh [$d0], a                                  ; $7789: $e0 $d0
    add sp, -$10                                  ; $778b: $e8 $f0
    ldh [$30], a                                  ; $778d: $e0 $30
    inc c                                         ; $778f: $0c
    ld a, [c]                                     ; $7790: $f2
    dec h                                         ; $7791: $25
    cp a                                          ; $7792: $bf
    ldh [$90], a                                  ; $7793: $e0 $90
    sub c                                         ; $7795: $91
    ld a, $ff                                     ; $7796: $3e $ff
    ld l, c                                       ; $7798: $69
    and e                                         ; $7799: $a3
    dec [hl]                                      ; $779a: $35
    dec [hl]                                      ; $779b: $35
    and e                                         ; $779c: $a3
    ld l, d                                       ; $779d: $6a
    ld a, $af                                     ; $779e: $3e $af
    ld bc, $03c3                                  ; $77a0: $01 $c3 $03
    add e                                         ; $77a3: $83
    add hl, bc                                    ; $77a4: $09
    add d                                         ; $77a5: $82
    ret nc                                        ; $77a6: $d0

    db $eb                                        ; $77a7: $eb
    ld a, $80                                     ; $77a8: $3e $80
    jr nc, @+$0c                                  ; $77aa: $30 $0a

    pop af                                        ; $77ac: $f1
    ld [hl+], a                                   ; $77ad: $22
    jr nz, jr_068_7811                            ; $77ae: $20 $61

    ld a, a                                       ; $77b0: $7f
    sbc [hl]                                      ; $77b1: $9e
    sub b                                         ; $77b2: $90
    sub b                                         ; $77b3: $90
    sub b                                         ; $77b4: $90
    ld a, $69                                     ; $77b5: $3e $69
    dec [hl]                                      ; $77b7: $35
    rst $38                                       ; $77b8: $ff
    ldh [rIF], a                                  ; $77b9: $e0 $0f
    ld l, d                                       ; $77bb: $6a
    ld a, $ae                                     ; $77bc: $3e $ae
    call nz, Call_000_26ff                        ; $77be: $c4 $ff $26
    inc sp                                        ; $77c1: $33
    nop                                           ; $77c2: $00
    ret nc                                        ; $77c3: $d0

    ld [$227f], a                                 ; $77c4: $ea $7f $22
    db $fc                                        ; $77c7: $fc
    jr nc, @+$0e                                  ; $77c8: $30 $0c

    jr nz, jr_068_782e                            ; $77ca: $20 $62

    sbc a                                         ; $77cc: $9f
    or [hl]                                       ; $77cd: $b6
    sub b                                         ; $77ce: $90
    sub b                                         ; $77cf: $90
    add hl, sp                                    ; $77d0: $39
    ld l, e                                       ; $77d1: $6b
    dec e                                         ; $77d2: $1d
    ld [hl], c                                    ; $77d3: $71
    rst $38                                       ; $77d4: $ff
    ldh [$6d], a                                  ; $77d5: $e0 $6d
    add hl, sp                                    ; $77d7: $39
    xor a                                         ; $77d8: $af
    ld b, e                                       ; $77d9: $43
    ld h, c                                       ; $77da: $61
    ldh [$e6], a                                  ; $77db: $e0 $e6
    ret nc                                        ; $77dd: $d0

    xor $10                                       ; $77de: $ee $10
    jr nc, jr_068_77ed                            ; $77e0: $30 $0b

    ldh a, [$e4]                                  ; $77e2: $f0 $e4

jr_068_77e4:
    ld a, a                                       ; $77e4: $7f
    pop hl                                        ; $77e5: $e1
    ret nz                                        ; $77e6: $c0

    push bc                                       ; $77e7: $c5
    sub c                                         ; $77e8: $91
    add d                                         ; $77e9: $82
    ld b, b                                       ; $77ea: $40
    ldh [$ed], a                                  ; $77eb: $e0 $ed

jr_068_77ed:
    call nc, Call_000_00a6                        ; $77ed: $d4 $a6 $00
    jr nc, jr_068_77ff                            ; $77f0: $30 $0d

    ldh a, [$e4]                                  ; $77f2: $f0 $e4
    ld a, a                                       ; $77f4: $7f
    ld [c], a                                     ; $77f5: $e2
    cp $e4                                        ; $77f6: $fe $e4
    ld b, e                                       ; $77f8: $43
    ld b, c                                       ; $77f9: $41
    ldh [$ed], a                                  ; $77fa: $e0 $ed
    call nc, Call_000_30a6                        ; $77fc: $d4 $a6 $30

jr_068_77ff:
    dec c                                         ; $77ff: $0d
    inc e                                         ; $7800: $1c
    ldh a, [$e4]                                  ; $7801: $f0 $e4
    inc a                                         ; $7803: $3c
    pop bc                                        ; $7804: $c1
    sub b                                         ; $7805: $90
    sub b                                         ; $7806: $90
    jp $e2bc                                      ; $7807: $c3 $bc $e2


    call nz, $e0a1                                ; $780a: $c4 $a1 $e0
    db $ed                                        ; $780d: $ed
    jr nc, jr_068_77e4                            ; $780e: $30 $d4

    and [hl]                                      ; $7810: $a6

jr_068_7811:
    jr nc, jr_068_7820                            ; $7811: $30 $0d

    ei                                            ; $7813: $fb
    ld h, h                                       ; $7814: $64
    cp $c2                                        ; $7815: $fe $c2
    jp $bfc4                                      ; $7817: $c3 $c4 $bf


    pop hl                                        ; $781a: $e1
    call nz, $e022                                ; $781b: $c4 $22 $e0
    ldh [$ed], a                                  ; $781e: $e0 $ed

jr_068_7820:
    call nc, Call_000_30a6                        ; $7820: $d4 $a6 $30
    dec c                                         ; $7823: $0d
    ldh a, [$e5]                                  ; $7824: $f0 $e5
    ei                                            ; $7826: $fb
    and e                                         ; $7827: $a3
    call nz, $b690                                ; $7828: $c4 $90 $b6
    inc bc                                        ; $782b: $03
    sbc l                                         ; $782c: $9d
    sbc a                                         ; $782d: $9f

jr_068_782e:
    ldh [$f2], a                                  ; $782e: $e0 $f2
    ret nc                                        ; $7830: $d0

    push hl                                       ; $7831: $e5
    ld bc, $2a8d                                  ; $7832: $01 $8d $2a
    ld [$a1fb], sp                                ; $7835: $08 $fb $a1
    ld b, $c6                                     ; $7838: $06 $c6
    db $10                                        ; $783a: $10
    ldh [$ef], a                                  ; $783b: $e0 $ef
    sub $e8                                       ; $783d: $d6 $e8
    jr nc, jr_068_7848                            ; $783f: $30 $07

    or $6b                                        ; $7841: $f6 $6b
    sbc l                                         ; $7843: $9d
    add e                                         ; $7844: $83
    ldh [$e0], a                                  ; $7845: $e0 $e0
    rst $30                                       ; $7847: $f7

jr_068_7848:
    call nz, Call_000_0061                        ; $7848: $c4 $61 $00
    jp nz, $3062                                  ; $784b: $c2 $62 $30

    ld [$e8f0], sp                                ; $784e: $08 $f0 $e8
    xor b                                         ; $7851: $a8
    ld h, a                                       ; $7852: $67
    ldh [$f3], a                                  ; $7853: $e0 $f3
    ret nc                                        ; $7855: $d0

    ld [c], a                                     ; $7856: $e2
    ld b, b                                       ; $7857: $40
    ld [bc], a                                    ; $7858: $02
    jr nc, jr_068_7868                            ; $7859: $30 $0d

    nop                                           ; $785b: $00
    db $f4                                        ; $785c: $f4
    ld l, c                                       ; $785d: $69
    db $ec                                        ; $785e: $ec
    inc h                                         ; $785f: $24
    ldh [$ed], a                                  ; $7860: $e0 $ed
    ret nc                                        ; $7862: $d0

    ld [$0830], a                                 ; $7863: $ea $30 $08
    ldh a, [$e5]                                  ; $7866: $f0 $e5

jr_068_7868:
    db $f4                                        ; $7868: $f4
    ld h, l                                       ; $7869: $65
    db $ec                                        ; $786a: $ec
    dec h                                         ; $786b: $25
    nop                                           ; $786c: $00
    ldh [$ed], a                                  ; $786d: $e0 $ed
    ret nc                                        ; $786f: $d0

    push hl                                       ; $7870: $e5
    ld de, $3081                                  ; $7871: $11 $81 $30
    add hl, bc                                    ; $7874: $09
    ldh a, [$e5]                                  ; $7875: $f0 $e5
    db $f4                                        ; $7877: $f4
    ld h, l                                       ; $7878: $65
    pop hl                                        ; $7879: $e1
    and c                                         ; $787a: $a1
    ldh [$f1], a                                  ; $787b: $e0 $f1
    ld b, $d0                                     ; $787d: $06 $d0
    push hl                                       ; $787f: $e5
    db $d3                                        ; $7880: $d3
    jp c, Jump_000_232b                           ; $7881: $da $2b $23

    jr nc, jr_068_788b                            ; $7884: $30 $05

    ldh a, [$e5]                                  ; $7886: $f0 $e5
    db $f4                                        ; $7888: $f4
    ld h, l                                       ; $7889: $65
    dec de                                        ; $788a: $1b

jr_068_788b:
    ret nz                                        ; $788b: $c0

    inc b                                         ; $788c: $04
    ldh [$f2], a                                  ; $788d: $e0 $f2
    ret nc                                        ; $788f: $d0

    push hl                                       ; $7890: $e5
    rst $10                                       ; $7891: $d7
    ld a, a                                       ; $7892: $7f
    inc b                                         ; $7893: $04
    jr nc, jr_068_789b                            ; $7894: $30 $05

    ldh a, [$e5]                                  ; $7896: $f0 $e5
    ldh a, [$a5]                                  ; $7898: $f0 $a5
    db $ec                                        ; $789a: $ec

jr_068_789b:
    inc h                                         ; $789b: $24
    nop                                           ; $789c: $00
    ldh [$ee], a                                  ; $789d: $e0 $ee
    ret nc                                        ; $789f: $d0

    push hl                                       ; $78a0: $e5
    scf                                           ; $78a1: $37
    add [hl]                                      ; $78a2: $86
    jr nc, jr_068_78a9                            ; $78a3: $30 $04

    rst $30                                       ; $78a5: $f7
    ld h, l                                       ; $78a6: $65
    pop af                                        ; $78a7: $f1
    dec h                                         ; $78a8: $25

jr_068_78a9:
    ld [c], a                                     ; $78a9: $e2
    dec h                                         ; $78aa: $25
    ldh [$ed], a                                  ; $78ab: $e0 $ed
    nop                                           ; $78ad: $00
    ret nc                                        ; $78ae: $d0

    push hl                                       ; $78af: $e5
    sub c                                         ; $78b0: $91
    jp hl                                         ; $78b1: $e9


    jr nc, jr_068_78b5                            ; $78b2: $30 $01

    db $ed                                        ; $78b4: $ed

jr_068_78b5:
    xor h                                         ; $78b5: $ac
    jp $e0a8                                      ; $78b6: $c3 $a8 $e0


    db $eb                                        ; $78b9: $eb
    ret nc                                        ; $78ba: $d0

    push hl                                       ; $78bb: $e5
    jr nc, jr_068_78cd                            ; $78bc: $30 $0f

    nop                                           ; $78be: $00
    dec h                                         ; $78bf: $25
    adc h                                         ; $78c0: $8c
    ldh [$f6], a                                  ; $78c1: $e0 $f6
    ret nc                                        ; $78c3: $d0

    push hl                                       ; $78c4: $e5
    jr nc, @+$0e                                  ; $78c5: $30 $0c

    ldh a, [rIE]                                  ; $78c7: $f0 $ff
    ldh [$eb], a                                  ; $78c9: $e0 $eb
    jr nc, jr_068_78da                            ; $78cb: $30 $0d

jr_068_78cd:
    ldh a, [rIE]                                  ; $78cd: $f0 $ff
    nop                                           ; $78cf: $00
    ldh [$eb], a                                  ; $78d0: $e0 $eb

jr_068_78d2:
    jr nc, @+$0f                                  ; $78d2: $30 $0d

    ldh a, [rIE]                                  ; $78d4: $f0 $ff
    ldh [$eb], a                                  ; $78d6: $e0 $eb
    jr nc, jr_068_78e7                            ; $78d8: $30 $0d

jr_068_78da:
    ldh a, [rIE]                                  ; $78da: $f0 $ff
    ldh [$eb], a                                  ; $78dc: $e0 $eb
    jr nc, jr_068_78ed                            ; $78de: $30 $0d

    jr nc, jr_068_78d2                            ; $78e0: $30 $f0

    rst $38                                       ; $78e2: $ff
    ldh [$eb], a                                  ; $78e3: $e0 $eb
    rst $38                                       ; $78e5: $ff
    ld a, b                                       ; $78e6: $78

jr_068_78e7:
    ldh a, [rIE]                                  ; $78e7: $f0 $ff
    call c, Call_000_00a0                         ; $78e9: $dc $a0 $00
    nop                                           ; $78ec: $00

jr_068_78ed:
    nop                                           ; $78ed: $00
    pop bc                                        ; $78ee: $c1
    nop                                           ; $78ef: $00
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
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    dec c                                         ; $78fc: $0d
    add b                                         ; $78fd: $80
    cp $e0                                        ; $78fe: $fe $e0
    nop                                           ; $7900: $00
    ld b, b                                       ; $7901: $40
    ret c                                         ; $7902: $d8

    push hl                                       ; $7903: $e5
    rst $30                                       ; $7904: $f7
    and $eb                                       ; $7905: $e6 $eb
    ldh [rIE], a                                  ; $7907: $e0 $ff
    rst $38                                       ; $7909: $ff
    nop                                           ; $790a: $00
    rst $38                                       ; $790b: $ff
    db $f4                                        ; $790c: $f4
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    ld [bc], a                                    ; $7910: $02
    nop                                           ; $7911: $00
    rra                                           ; $7912: $1f
    dec c                                         ; $7913: $0d
    ld [bc], a                                    ; $7914: $02
    ld bc, $0d20                                  ; $7915: $01 $20 $0d
    ld [bc], a                                    ; $7918: $02
    ld [bc], a                                    ; $7919: $02
    ld [hl+], a                                   ; $791a: $22
    ld c, $02                                     ; $791b: $0e $02
    inc bc                                        ; $791d: $03
    dec e                                         ; $791e: $1d
    rrca                                          ; $791f: $0f
    ld [bc], a                                    ; $7920: $02
    inc b                                         ; $7921: $04
    inc hl                                        ; $7922: $23
    rrca                                          ; $7923: $0f
    ld [bc], a                                    ; $7924: $02
    dec b                                         ; $7925: $05
    inc e                                         ; $7926: $1c
    db $10                                        ; $7927: $10
    ld [bc], a                                    ; $7928: $02
    ld b, $24                                     ; $7929: $06 $24
    db $10                                        ; $792b: $10
    ld [bc], a                                    ; $792c: $02
    rlca                                          ; $792d: $07
    dec de                                        ; $792e: $1b
    ld de, $0802                                  ; $792f: $11 $02 $08
    dec e                                         ; $7932: $1d
    inc de                                        ; $7933: $13
    ld [bc], a                                    ; $7934: $02
    add hl, bc                                    ; $7935: $09
    inc hl                                        ; $7936: $23
    inc de                                        ; $7937: $13
    ld [bc], a                                    ; $7938: $02
    ld a, [bc]                                    ; $7939: $0a
    inc e                                         ; $793a: $1c
    inc d                                         ; $793b: $14
    ld [bc], a                                    ; $793c: $02
    dec bc                                        ; $793d: $0b
    dec e                                         ; $793e: $1d
    dec d                                         ; $793f: $15
    ld [bc], a                                    ; $7940: $02
    inc c                                         ; $7941: $0c
    inc h                                         ; $7942: $24
    dec d                                         ; $7943: $15
    ld [bc], a                                    ; $7944: $02
    dec c                                         ; $7945: $0d
    jr jr_068_795e                                ; $7946: $18 $16

    ld [bc], a                                    ; $7948: $02
    ld c, $23                                     ; $7949: $0e $23
    ld d, $02                                     ; $794b: $16 $02
    rrca                                          ; $794d: $0f
    add hl, de                                    ; $794e: $19
    rla                                           ; $794f: $17
    ld [bc], a                                    ; $7950: $02
    db $10                                        ; $7951: $10
    ld e, $17                                     ; $7952: $1e $17
    ld [bc], a                                    ; $7954: $02
    ld de, $1720                                  ; $7955: $11 $20 $17
    ld [bc], a                                    ; $7958: $02
    ld [de], a                                    ; $7959: $12
    ld hl, $0217                                  ; $795a: $21 $17 $02
    inc de                                        ; $795d: $13

jr_068_795e:
    rra                                           ; $795e: $1f
    jr jr_068_7963                                ; $795f: $18 $02

    inc d                                         ; $7961: $14
    ld [hl+], a                                   ; $7962: $22

jr_068_7963:
    jr jr_068_7967                                ; $7963: $18 $02

    dec d                                         ; $7965: $15
    dec de                                        ; $7966: $1b

jr_068_7967:
    dec e                                         ; $7967: $1d
    ld [bc], a                                    ; $7968: $02
    ld d, $19                                     ; $7969: $16 $19
    ld e, $02                                     ; $796b: $1e $02
    rla                                           ; $796d: $17
    ld [hl+], a                                   ; $796e: $22
    ld e, $02                                     ; $796f: $1e $02
    jr @+$26                                      ; $7971: $18 $24

    ld e, $02                                     ; $7973: $1e $02
    add hl, de                                    ; $7975: $19
    ld a, [de]                                    ; $7976: $1a
    rra                                           ; $7977: $1f
    ld [bc], a                                    ; $7978: $02
    ld a, [de]                                    ; $7979: $1a
    inc hl                                        ; $797a: $23
    rra                                           ; $797b: $1f
    ld [bc], a                                    ; $797c: $02
    dec de                                        ; $797d: $1b
    ld h, $1f                                     ; $797e: $26 $1f
    ld [bc], a                                    ; $7980: $02
    inc e                                         ; $7981: $1c
    dec h                                         ; $7982: $25
    jr nz, jr_068_7987                            ; $7983: $20 $02

    dec e                                         ; $7985: $1d
    inc h                                         ; $7986: $24

jr_068_7987:
    ld hl, $1e02                                  ; $7987: $21 $02 $1e
    jr jr_068_79b2                                ; $798a: $18 $26

    ld [bc], a                                    ; $798c: $02
    rra                                           ; $798d: $1f
    add hl, de                                    ; $798e: $19
    daa                                           ; $798f: $27
    ld [bc], a                                    ; $7990: $02
    jr nz, jr_068_79b7                            ; $7991: $20 $24

    daa                                           ; $7993: $27
    ld [bc], a                                    ; $7994: $02
    ld hl, $2825                                  ; $7995: $21 $25 $28
    ld [bc], a                                    ; $7998: $02
    ld [hl+], a                                   ; $7999: $22
    inc h                                         ; $799a: $24
    add hl, hl                                    ; $799b: $29
    ld [bc], a                                    ; $799c: $02
    inc hl                                        ; $799d: $23
    ld e, $2d                                     ; $799e: $1e $2d
    ld [bc], a                                    ; $79a0: $02
    inc h                                         ; $79a1: $24
    dec e                                         ; $79a2: $1d
    ld l, $02                                     ; $79a3: $2e $02
    dec h                                         ; $79a5: $25
    rra                                           ; $79a6: $1f
    ld l, $02                                     ; $79a7: $2e $02
    ld h, $1e                                     ; $79a9: $26 $1e
    cpl                                           ; $79ab: $2f
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    or a                                          ; $79af: $b7
    ld a, c                                       ; $79b0: $79
    rst $20                                       ; $79b1: $e7

jr_068_79b2:
    ld a, c                                       ; $79b2: $79
    or c                                          ; $79b3: $b1
    ld a, e                                       ; $79b4: $7b
    ld b, a                                       ; $79b5: $47
    ld a, l                                       ; $79b6: $7d

jr_068_79b7:
    ld [$c503], a                                 ; $79b7: $ea $03 $c5
    ld b, $e2                                     ; $79ba: $06 $e2
    ld bc, $00a0                                  ; $79bc: $01 $a0 $00
    ld [$f003], a                                 ; $79bf: $ea $03 $f0
    inc bc                                        ; $79c2: $03
    push bc                                       ; $79c3: $c5
    ld b, $e2                                     ; $79c4: $06 $e2
    ld bc, $7d40                                  ; $79c6: $01 $40 $7d
    ret nz                                        ; $79c9: $c0

    ld a, [hl]                                    ; $79ca: $7e
    ld [$c503], a                                 ; $79cb: $ea $03 $c5
    ld b, $08                                     ; $79ce: $06 $08
    dec h                                         ; $79d0: $25
    ld [$0825], sp                                ; $79d1: $08 $25 $08
    dec h                                         ; $79d4: $25
    ld [$0825], sp                                ; $79d5: $08 $25 $08
    dec h                                         ; $79d8: $25
    ld [$0825], sp                                ; $79d9: $08 $25 $08
    dec h                                         ; $79dc: $25
    ld [$0825], sp                                ; $79dd: $08 $25 $08
    dec h                                         ; $79e0: $25
    ld [$0825], sp                                ; $79e1: $08 $25 $08
    dec h                                         ; $79e4: $25
    ld [$df25], sp                                ; $79e5: $08 $25 $df
    inc c                                         ; $79e8: $0c
    inc c                                         ; $79e9: $0c
    inc c                                         ; $79ea: $0c
    ld l, h                                       ; $79eb: $6c
    dec bc                                        ; $79ec: $0b
    rst $38                                       ; $79ed: $ff
    db $e4                                        ; $79ee: $e4
    ld c, h                                       ; $79ef: $4c
    inc l                                         ; $79f0: $2c
    db $fc                                        ; $79f1: $fc
    ld a, [c]                                     ; $79f2: $f2
    ldh [$fd], a                                  ; $79f3: $e0 $fd
    ld [$4c4c], a                                 ; $79f5: $ea $4c $4c
    ld l, h                                       ; $79f8: $6c
    ld c, h                                       ; $79f9: $4c
    inc c                                         ; $79fa: $0c
    inc c                                         ; $79fb: $0c
    ld c, $e9                                     ; $79fc: $0e $e9
    ldh [$2c], a                                  ; $79fe: $e0 $2c
    inc l                                         ; $7a00: $2c
    ld c, h                                       ; $7a01: $4c
    di                                            ; $7a02: $f3
    ldh [$f4], a                                  ; $7a03: $e0 $f4
    ldh [$fe], a                                  ; $7a05: $e0 $fe
    rst $28                                       ; $7a07: $ef
    pop bc                                        ; $7a08: $c1
    and $00                                       ; $7a09: $e6 $00
    cp a                                          ; $7a0b: $bf
    pop af                                        ; $7a0c: $f1
    call nz, $c0e1                                ; $7a0d: $c4 $e1 $c0
    db $e3                                        ; $7a10: $e3
    push bc                                       ; $7a11: $c5
    pop af                                        ; $7a12: $f1
    pop bc                                        ; $7a13: $c1
    db $ec                                        ; $7a14: $ec
    cp a                                          ; $7a15: $bf
    ld a, [c]                                     ; $7a16: $f2
    ret nz                                        ; $7a17: $c0

    db $e4                                        ; $7a18: $e4
    pop bc                                        ; $7a19: $c1
    rst $38                                       ; $7a1a: $ff
    ld a, $3d                                     ; $7a1b: $3e $3d
    db $e3                                        ; $7a1d: $e3
    ld l, h                                       ; $7a1e: $6c
    inc l                                         ; $7a1f: $2c
    ld l, h                                       ; $7a20: $6c
    inc l                                         ; $7a21: $2c
    inc c                                         ; $7a22: $0c
    ld e, b                                       ; $7a23: $58
    db $ec                                        ; $7a24: $ec
    dec a                                         ; $7a25: $3d
    ldh [$38], a                                  ; $7a26: $e0 $38
    ld b, [hl]                                    ; $7a28: $46
    ld a, [c]                                     ; $7a29: $f2
    ld [de], a                                    ; $7a2a: $12
    pop hl                                        ; $7a2b: $e1
    inc b                                         ; $7a2c: $04
    db $e4                                        ; $7a2d: $e4
    ld l, e                                       ; $7a2e: $6b
    ld c, e                                       ; $7a2f: $4b
    ld c, e                                       ; $7a30: $4b
    ld a, [$98c3]                                 ; $7a31: $fa $c3 $98
    push af                                       ; $7a34: $f5
    inc e                                         ; $7a35: $1c
    ld l, d                                       ; $7a36: $6a
    ld a, [c]                                     ; $7a37: $f2
    ret nz                                        ; $7a38: $c0

    and $6b                                       ; $7a39: $e6 $6b
    dec bc                                        ; $7a3b: $0b
    ld c, e                                       ; $7a3c: $4b
    rst $38                                       ; $7a3d: $ff
    ldh [$b8], a                                  ; $7a3e: $e0 $b8
    push bc                                       ; $7a40: $c5
    ret nz                                        ; $7a41: $c0

    call $0b01                                    ; $7a42: $cd $01 $0b
    sbc d                                         ; $7a45: $9a
    ldh [$ba], a                                  ; $7a46: $e0 $ba
    ret nz                                        ; $7a48: $c0

    db $fc                                        ; $7a49: $fc
    pop hl                                        ; $7a4a: $e1
    add b                                         ; $7a4b: $80
    di                                            ; $7a4c: $f3
    pop bc                                        ; $7a4d: $c1
    db $e3                                        ; $7a4e: $e3
    db $fc                                        ; $7a4f: $fc
    db $e4                                        ; $7a50: $e4
    ld a, h                                       ; $7a51: $7c
    db $eb                                        ; $7a52: $eb
    ldh a, [$6d]                                  ; $7a53: $f0 $6d
    pop bc                                        ; $7a55: $c1
    ld l, b                                       ; $7a56: $68
    db $e3                                        ; $7a57: $e3

jr_068_7a58:
    ret nz                                        ; $7a58: $c0

    rst $30                                       ; $7a59: $f7
    add d                                         ; $7a5a: $82
    db $e4                                        ; $7a5b: $e4
    ld l, e                                       ; $7a5c: $6b
    dec hl                                        ; $7a5d: $2b
    dec hl                                        ; $7a5e: $2b
    dec hl                                        ; $7a5f: $2b
    nop                                           ; $7a60: $00
    ld a, b                                       ; $7a61: $78
    db $e3                                        ; $7a62: $e3
    inc e                                         ; $7a63: $1c
    ldh a, [$bd]                                  ; $7a64: $f0 $bd
    push de                                       ; $7a66: $d5
    inc b                                         ; $7a67: $04
    jp nz, $e443                                  ; $7a68: $c2 $43 $e4

    ret nz                                        ; $7a6b: $c0

    ldh [$3a], a                                  ; $7a6c: $e0 $3a
    ld [c], a                                     ; $7a6e: $e2
    inc d                                         ; $7a6f: $14
    ret nz                                        ; $7a70: $c0

    db $10                                        ; $7a71: $10
    db $db                                        ; $7a72: $db
    call z, $c335                                 ; $7a73: $cc $35 $c3
    db $fd                                        ; $7a76: $fd
    and c                                         ; $7a77: $a1
    ret nz                                        ; $7a78: $c0

    push af                                       ; $7a79: $f5
    ld l, e                                       ; $7a7a: $6b
    ret nz                                        ; $7a7b: $c0

    db $e3                                        ; $7a7c: $e3
    or l                                          ; $7a7d: $b5
    and d                                         ; $7a7e: $a2
    cp c                                          ; $7a7f: $b9
    xor l                                         ; $7a80: $ad
    jr nc, jr_068_7af2                            ; $7a81: $30 $6f

    pop bc                                        ; $7a83: $c1
    jp Jump_000_3ca0                              ; $7a84: $c3 $a0 $3c


    jp nc, $e480                                  ; $7a87: $d2 $80 $e4

    ld l, e                                       ; $7a8a: $6b
    ld l, e                                       ; $7a8b: $6b
    cp a                                          ; $7a8c: $bf
    ldh [$c0], a                                  ; $7a8d: $e0 $c0
    push af                                       ; $7a8f: $f5
    ret z                                         ; $7a90: $c8

    ld b, d                                       ; $7a91: $42
    ret nc                                        ; $7a92: $d0

    ld d, [hl]                                    ; $7a93: $56
    and [hl]                                      ; $7a94: $a6
    ld b, h                                       ; $7a95: $44
    and c                                         ; $7a96: $a1
    dec hl                                        ; $7a97: $2b
    pop bc                                        ; $7a98: $c1
    pop hl                                        ; $7a99: $e1
    cp [hl]                                       ; $7a9a: $be
    ldh [$2b], a                                  ; $7a9b: $e0 $2b
    dec hl                                        ; $7a9d: $2b
    ld [hl], b                                    ; $7a9e: $70
    ld a, d                                       ; $7a9f: $7a
    pop hl                                        ; $7aa0: $e1
    ret nz                                        ; $7aa1: $c0

    ldh a, [$c7]                                  ; $7aa2: $f0 $c7
    pop af                                        ; $7aa4: $f1
    ret nz                                        ; $7aa5: $c0

    jp hl                                         ; $7aa6: $e9


    dec hl                                        ; $7aa7: $2b
    dec bc                                        ; $7aa8: $0b
    dec hl                                        ; $7aa9: $2b
    ret nz                                        ; $7aaa: $c0

    ld [c], a                                     ; $7aab: $e2
    ld h, b                                       ; $7aac: $60
    db $fd                                        ; $7aad: $fd
    and h                                         ; $7aae: $a4
    ret nz                                        ; $7aaf: $c0

    ld sp, hl                                     ; $7ab0: $f9
    ret nz                                        ; $7ab1: $c0

    or h                                          ; $7ab2: $b4
    rst $00                                       ; $7ab3: $c7
    pop bc                                        ; $7ab4: $c1
    ei                                            ; $7ab5: $fb
    jp Jump_000_0c0b                              ; $7ab6: $c3 $0b $0c


    ld a, a                                       ; $7ab9: $7f
    and b                                         ; $7aba: $a0
    jr nc, jr_068_7a58                            ; $7abb: $30 $9b

    xor [hl]                                      ; $7abd: $ae
    ld bc, $80d5                                  ; $7abe: $01 $d5 $80
    and l                                         ; $7ac1: $a5
    cp h                                          ; $7ac2: $bc
    add a                                         ; $7ac3: $87
    inc c                                         ; $7ac4: $0c
    ld l, h                                       ; $7ac5: $6c
    ret nz                                        ; $7ac6: $c0

    db $f4                                        ; $7ac7: $f4
    ld b, c                                       ; $7ac8: $41
    ld a, [c]                                     ; $7ac9: $f2
    add h                                         ; $7aca: $84
    ret nz                                        ; $7acb: $c0

    xor $c1                                       ; $7acc: $ee $c1
    ldh [$6c], a                                  ; $7ace: $e0 $6c
    ld b, b                                       ; $7ad0: $40
    adc $41                                       ; $7ad1: $ce $41
    rst $00                                       ; $7ad3: $c7
    cp b                                          ; $7ad4: $b8
    sub b                                         ; $7ad5: $90
    dec bc                                        ; $7ad6: $0b
    add d                                         ; $7ad7: $82
    inc l                                         ; $7ad8: $2c
    nop                                           ; $7ad9: $00
    sbc e                                         ; $7ada: $9b
    add h                                         ; $7adb: $84
    di                                            ; $7adc: $f3
    db $e4                                        ; $7add: $e4
    add b                                         ; $7ade: $80
    adc $41                                       ; $7adf: $ce $41
    push de                                       ; $7ae1: $d5
    rst $08                                       ; $7ae2: $cf
    ld [hl], e                                    ; $7ae3: $73
    ldh [$f9], a                                  ; $7ae4: $e0 $f9
    xor c                                         ; $7ae6: $a9
    sbc a                                         ; $7ae7: $9f
    ld e, h                                       ; $7ae8: $5c
    adc a                                         ; $7ae9: $8f
    nop                                           ; $7aea: $00
    adc b                                         ; $7aeb: $88
    rst $38                                       ; $7aec: $ff
    ld l, e                                       ; $7aed: $6b
    rst $38                                       ; $7aee: $ff
    db $e4                                        ; $7aef: $e4
    push af                                       ; $7af0: $f5
    sbc a                                         ; $7af1: $9f

jr_068_7af2:
    or h                                          ; $7af2: $b4
    ld l, e                                       ; $7af3: $6b
    cp $ff                                        ; $7af4: $fe $ff
    rst $38                                       ; $7af6: $ff
    or $4d                                        ; $7af7: $f6 $4d
    ld a, h                                       ; $7af9: $7c
    sub [hl]                                      ; $7afa: $96
    nop                                           ; $7afb: $00
    ld l, e                                       ; $7afc: $6b
    rst $38                                       ; $7afd: $ff
    ret nz                                        ; $7afe: $c0

    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    pop bc                                        ; $7b02: $c1
    rst $38                                       ; $7b03: $ff
    ret nz                                        ; $7b04: $c0

    rst $38                                       ; $7b05: $ff
    rst $10                                       ; $7b06: $d7
    sbc $ff                                       ; $7b07: $de $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    nop                                           ; $7b0c: $00
    ld a, b                                       ; $7b0d: $78
    rst $18                                       ; $7b0e: $df
    dec de                                        ; $7b0f: $1b
    rst $18                                       ; $7b10: $df
    ld [hl], a                                    ; $7b11: $77
    or b                                          ; $7b12: $b0
    inc [hl]                                      ; $7b13: $34
    jr nz, @+$01                                  ; $7b14: $20 $ff

    db $db                                        ; $7b16: $db
    ld [bc], a                                    ; $7b17: $02
    inc l                                         ; $7b18: $2c
    inc [hl]                                      ; $7b19: $34
    inc sp                                        ; $7b1a: $33
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    nop                                           ; $7b1d: $00
    ld bc, $25bf                                  ; $7b1e: $01 $bf $25
    ld a, b                                       ; $7b21: $78
    and b                                         ; $7b22: $a0
    rst $18                                       ; $7b23: $df
    nop                                           ; $7b24: $00
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    nop                                           ; $7b28: $00
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    nop                                           ; $7b2e: $00
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rrca                                          ; $7b31: $0f
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
    ld [hl], c                                    ; $7b3d: $71
    rst $18                                       ; $7b3e: $df
    nop                                           ; $7b3f: $00
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    ld [hl], c                                    ; $7b42: $71
    rst $18                                       ; $7b43: $df
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    ld c, e                                       ; $7b48: $4b
    ld sp, hl                                     ; $7b49: $f9
    ld c, h                                       ; $7b4a: $4c
    rst $38                                       ; $7b4b: $ff
    ld [hl], b                                    ; $7b4c: $70
    inc c                                         ; $7b4d: $0c
    xor d                                         ; $7b4e: $aa
    ld [hl+], a                                   ; $7b4f: $22
    nop                                           ; $7b50: $00
    cp $e5                                        ; $7b51: $fe $e5
    add $ff                                       ; $7b53: $c6 $ff
    ld a, [de]                                    ; $7b55: $1a
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
    nop                                           ; $7b61: $00
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
    ccf                                           ; $7b70: $3f
    rst $18                                       ; $7b71: $df
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

Call_068_7b91:
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
    nop                                           ; $7ba1: $00
    cp a                                          ; $7ba2: $bf
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
    db $fc                                        ; $7bad: $fc
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    nop                                           ; $7bb0: $00
    rst $18                                       ; $7bb1: $df
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    ld bc, $2104                                  ; $7bb4: $01 $04 $21
    rst $38                                       ; $7bb7: $ff
    db $e4                                        ; $7bb8: $e4
    inc b                                         ; $7bb9: $04
    ld bc, $0001                                  ; $7bba: $01 $01 $00
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    xor $ed                                       ; $7bbf: $ee $ed
    pop bc                                        ; $7bc1: $c1
    rst $20                                       ; $7bc2: $e7
    cp a                                          ; $7bc3: $bf
    rst $38                                       ; $7bc4: $ff
    pop bc                                        ; $7bc5: $c1
    db $fc                                        ; $7bc6: $fc
    cp a                                          ; $7bc7: $bf
    rst $38                                       ; $7bc8: $ff
    ldh a, [$ef]                                  ; $7bc9: $f0 $ef
    inc e                                         ; $7bcb: $1c
    pop bc                                        ; $7bcc: $c1
    ld [$e0bf], a                                 ; $7bcd: $ea $bf $e0
    dec de                                        ; $7bd0: $1b
    ld bc, $bc1b                                  ; $7bd1: $01 $1b $bc
    rst $38                                       ; $7bd4: $ff
    jp hl                                         ; $7bd5: $e9


    add sp, -$7a                                  ; $7bd6: $e8 $86
    db $e4                                        ; $7bd8: $e4
    rla                                           ; $7bd9: $17
    inc l                                         ; $7bda: $2c
    ld [hl], $37                                  ; $7bdb: $36 $37
    ld a, h                                       ; $7bdd: $7c
    db $e3                                        ; $7bde: $e3
    ld a, [de]                                    ; $7bdf: $1a
    rst $38                                       ; $7be0: $ff
    ldh [$ca], a                                  ; $7be1: $e0 $ca
    rst $38                                       ; $7be3: $ff
    ret nz                                        ; $7be4: $c0

    db $ed                                        ; $7be5: $ed
    ld l, a                                       ; $7be6: $6f
    inc l                                         ; $7be7: $2c
    ld [hl-], a                                   ; $7be8: $32
    ld d, a                                       ; $7be9: $57
    ld h, $be                                     ; $7bea: $26 $be
    push hl                                       ; $7bec: $e5
    ld hl, $ca21                                  ; $7bed: $21 $21 $ca
    db $ed                                        ; $7bf0: $ed
    adc a                                         ; $7bf1: $8f
    sub b                                         ; $7bf2: $90
    nop                                           ; $7bf3: $00
    sub b                                         ; $7bf4: $90
    sub b                                         ; $7bf5: $90
    ld sp, hl                                     ; $7bf6: $f9
    ld [c], a                                     ; $7bf7: $e2
    add b                                         ; $7bf8: $80
    push af                                       ; $7bf9: $f5
    pop bc                                        ; $7bfa: $c1
    ldh [$5a], a                                  ; $7bfb: $e0 $5a
    ld a, a                                       ; $7bfd: $7f
    ld e, l                                       ; $7bfe: $5d
    ld e, l                                       ; $7bff: $5d
    ld h, $44                                     ; $7c00: $26 $44
    ld b, l                                       ; $7c02: $45
    ld b, h                                       ; $7c03: $44
    ld b, l                                       ; $7c04: $45
    ld a, b                                       ; $7c05: $78
    pop hl                                        ; $7c06: $e1
    add sp, -$40                                  ; $7c07: $e8 $c0
    xor $ff                                       ; $7c09: $ee $ff
    ldh [$c0], a                                  ; $7c0b: $e0 $c0
    ld sp, hl                                     ; $7c0d: $f9
    daa                                           ; $7c0e: $27
    pop bc                                        ; $7c0f: $c1
    ld [c], a                                     ; $7c10: $e2
    jr nz, jr_068_7c70                            ; $7c11: $20 $5d

    ld e, e                                       ; $7c13: $5b
    ld a, a                                       ; $7c14: $7f
    ld e, e                                       ; $7c15: $5b
    ld e, c                                       ; $7c16: $59
    jr nz, @+$22                                  ; $7c17: $20 $20

    ld h, $36                                     ; $7c19: $26 $36
    dec a                                         ; $7c1b: $3d
    sub a                                         ; $7c1c: $97
    db $ed                                        ; $7c1d: $ed
    or h                                          ; $7c1e: $b4
    ret nz                                        ; $7c1f: $c0

    db $e4                                        ; $7c20: $e4
    nop                                           ; $7c21: $00
    or $42                                        ; $7c22: $f6 $42
    pop bc                                        ; $7c24: $c1
    ld [c], a                                     ; $7c25: $e2
    jr nz, jr_068_7c48                            ; $7c26: $20 $20

    ret nz                                        ; $7c28: $c0

    ld [c], a                                     ; $7c29: $e2
    jr nz, @+$25                                  ; $7c2a: $20 $23

    ld [hl+], a                                   ; $7c2c: $22
    dec a                                         ; $7c2d: $3d
    ld a, [bc]                                    ; $7c2e: $0a
    xor $c2                                       ; $7c2f: $ee $c2
    or $c0                                        ; $7c31: $f6 $c0
    jp Jump_068_4343                              ; $7c33: $c3 $43 $43


    ldh [$c0], a                                  ; $7c36: $e0 $c0
    and $13                                       ; $7c38: $e6 $13
    ld [hl+], a                                   ; $7c3a: $22
    dec a                                         ; $7c3b: $3d
    nop                                           ; $7c3c: $00
    xor $c0                                       ; $7c3d: $ee $c0
    db $dd                                        ; $7c3f: $dd
    ld b, d                                       ; $7c40: $42
    pop bc                                        ; $7c41: $c1
    ldh [$7f], a                                  ; $7c42: $e0 $7f
    pop hl                                        ; $7c44: $e1
    ld b, b                                       ; $7c45: $40
    pop hl                                        ; $7c46: $e1
    xor b                                         ; $7c47: $a8

jr_068_7c48:
    pop bc                                        ; $7c48: $c1
    ldh [$c0], a                                  ; $7c49: $e0 $c0
    rst $38                                       ; $7c4b: $ff
    ld b, b                                       ; $7c4c: $40
    call z, $c029                                 ; $7c4d: $cc $29 $c0
    ld [c], a                                     ; $7c50: $e2
    ld e, l                                       ; $7c51: $5d
    nop                                           ; $7c52: $00
    ldh [$32], a                                  ; $7c53: $e0 $32
    pop af                                        ; $7c55: $f1
    ld [hl], $c1                                  ; $7c56: $36 $c1
    ldh [$c0], a                                  ; $7c58: $e0 $c0
    rst $38                                       ; $7c5a: $ff
    nop                                           ; $7c5b: $00
    call z, Call_000_363d                         ; $7c5c: $cc $3d $36
    ld b, h                                       ; $7c5f: $44
    ld h, $c6                                     ; $7c60: $26 $c6
    ret nz                                        ; $7c62: $c0

    ld [c], a                                     ; $7c63: $e2
    inc [hl]                                      ; $7c64: $34
    inc l                                         ; $7c65: $2c
    ld a, e                                       ; $7c66: $7b
    and d                                         ; $7c67: $a2
    jp z, $c0ff                                   ; $7c68: $ca $ff $c0

    xor [hl]                                      ; $7c6b: $ae
    scf                                           ; $7c6c: $37
    ld b, [hl]                                    ; $7c6d: $46
    rra                                           ; $7c6e: $1f
    ld b, a                                       ; $7c6f: $47

jr_068_7c70:
    ld b, [hl]                                    ; $7c70: $46
    ld b, [hl]                                    ; $7c71: $46
    ld b, a                                       ; $7c72: $47
    inc h                                         ; $7c73: $24
    inc a                                         ; $7c74: $3c
    or h                                          ; $7c75: $b4
    ld bc, $80d7                                  ; $7c76: $01 $d7 $80
    and l                                         ; $7c79: $a5
    nop                                           ; $7c7a: $00
    db $fd                                        ; $7c7b: $fd
    sbc e                                         ; $7c7c: $9b
    ld b, c                                       ; $7c7d: $41
    rst $10                                       ; $7c7e: $d7
    ret nz                                        ; $7c7f: $c0

    xor $be                                       ; $7c80: $ee $be
    sbc a                                         ; $7c82: $9f
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    nop                                           ; $7c8b: $00
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    add c                                         ; $7c8e: $81
    cp a                                          ; $7c8f: $bf
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
    add hl, sp                                    ; $7c9a: $39
    rst $38                                       ; $7c9b: $ff
    nop                                           ; $7c9c: $00
    ret nz                                        ; $7c9d: $c0

    rst $38                                       ; $7c9e: $ff
    db $dd                                        ; $7c9f: $dd
    rst $38                                       ; $7ca0: $ff
    pop bc                                        ; $7ca1: $c1

Call_068_7ca2:
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    ret nz                                        ; $7ca5: $c0

    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    nop                                           ; $7cad: $00
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
    nop                                           ; $7cbe: $00
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
    nop                                           ; $7ccf: $00
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
    nop                                           ; $7ce0: $00
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff

Jump_068_7ce4:
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
    nop                                           ; $7cf1: $00
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
    nop                                           ; $7d02: $00
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
    nop                                           ; $7d13: $00
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
    nop                                           ; $7d24: $00
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
    nop                                           ; $7d35: $00
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
    rst $30                                       ; $7d43: $f7
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    call $ff00                                    ; $7d47: $cd $00 $ff
    jp hl                                         ; $7d4a: $e9


    scf                                           ; $7d4b: $37
    ld [hl-], a                                   ; $7d4c: $32
    pop af                                        ; $7d4d: $f1
    ld [$ffff], a                                 ; $7d4e: $ea $ff $ff
    inc sp                                        ; $7d51: $33
    ld sp, $dcfe                                  ; $7d52: $31 $fe $dc
    ld a, [c]                                     ; $7d55: $f2
    ld [hl], $30                                  ; $7d56: $36 $30
    scf                                           ; $7d58: $37
    ld h, $20                                     ; $7d59: $26 $20
    daa                                           ; $7d5b: $27
    db $10                                        ; $7d5c: $10
    ei                                            ; $7d5d: $fb
    ld d, $17                                     ; $7d5e: $16 $17
    cp [hl]                                       ; $7d60: $be
    or $34                                        ; $7d61: $f6 $34
    ld [hl], $32                                  ; $7d63: $36 $32
    jr nc, jr_068_7d9e                            ; $7d65: $30 $37

    rrca                                          ; $7d67: $0f
    ld sp, $3133                                  ; $7d68: $31 $33 $31
    inc sp                                        ; $7d6b: $33
    sbc h                                         ; $7d6c: $9c
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    ei                                            ; $7d6f: $fb
    nop                                           ; $7d70: $00
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
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

Jump_068_7d81:
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

jr_068_7d9e:
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

Jump_068_7ee3:
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
