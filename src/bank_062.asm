; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

Jump_062_4000:
    ld c, $40                                     ; $4000: $0e $40
    sbc $46                                       ; $4002: $de $46
    pop de                                        ; $4004: $d1
    ld d, b                                       ; $4005: $50
    ld d, [hl]                                    ; $4006: $56
    ld e, c                                       ; $4007: $59
    ld a, [hl]                                    ; $4008: $7e
    ld h, e                                       ; $4009: $63
    rlca                                          ; $400a: $07

Jump_062_400b:
    ld l, d                                       ; $400b: $6a
    or $72                                        ; $400c: $f6 $72
    ld d, $40                                     ; $400e: $16 $40
    rst $08                                       ; $4010: $cf
    ld b, d                                       ; $4011: $42
    ld c, b                                       ; $4012: $48
    ld b, [hl]                                    ; $4013: $46
    ld h, e                                       ; $4014: $63
    ld b, [hl]                                    ; $4015: $46
    ccf                                           ; $4016: $3f
    ld c, $0e                                     ; $4017: $0e $0e
    dec c                                         ; $4019: $0d
    dec c                                         ; $401a: $0d
    dec c                                         ; $401b: $0d
    ld c, $fa                                     ; $401c: $0e $fa
    rst $38                                       ; $401e: $ff
    db $f4                                        ; $401f: $f4
    push af                                       ; $4020: $f5
    nop                                           ; $4021: $00
    db $dd                                        ; $4022: $dd
    ldh [rIE], a                                  ; $4023: $e0 $ff
    rst $38                                       ; $4025: $ff
    rst $38                                       ; $4026: $ff
    rst $38                                       ; $4027: $ff
    rst $38                                       ; $4028: $ff
    rst $38                                       ; $4029: $ff
    push af                                       ; $402a: $f5
    db $f4                                        ; $402b: $f4
    ld e, e                                       ; $402c: $5b
    rst $38                                       ; $402d: $ff
    ld a, [$fffc]                                 ; $402e: $fa $fc $ff
    rst $38                                       ; $4031: $ff
    nop                                           ; $4032: $00
    rst $38                                       ; $4033: $ff
    rst $38                                       ; $4034: $ff
    rst $38                                       ; $4035: $ff
    rst $38                                       ; $4036: $ff
    ld a, $fa                                     ; $4037: $3e $fa
    ld e, e                                       ; $4039: $5b
    rst $38                                       ; $403a: $ff
    add b                                         ; $403b: $80
    rst $18                                       ; $403c: $df
    rst $38                                       ; $403d: $ff
    rst $38                                       ; $403e: $ff
    rst $38                                       ; $403f: $ff
    rst $38                                       ; $4040: $ff
    rst $38                                       ; $4041: $ff
    rst $38                                       ; $4042: $ff
    ld [bc], a                                    ; $4043: $02
    add b                                         ; $4044: $80
    rst $18                                       ; $4045: $df
    ld c, $4b                                     ; $4046: $0e $4b
    ldh [rBGP], a                                 ; $4048: $e0 $47
    pop hl                                        ; $404a: $e1
    db $fc                                        ; $404b: $fc
    db $eb                                        ; $404c: $eb
    cp $e3                                        ; $404d: $fe $e3
    add b                                         ; $404f: $80
    rst $18                                       ; $4050: $df
    sub b                                         ; $4051: $90
    db $e3                                        ; $4052: $e3
    inc bc                                        ; $4053: $03
    ld c, l                                       ; $4054: $4d
    ld c, l                                       ; $4055: $4d
    db $fc                                        ; $4056: $fc
    db $e3                                        ; $4057: $e3
    cp b                                          ; $4058: $b8
    and $ed                                       ; $4059: $e6 $ed
    pop hl                                        ; $405b: $e1
    db $ec                                        ; $405c: $ec
    ldh [rIE], a                                  ; $405d: $e0 $ff
    rst $38                                       ; $405f: $ff
    ld e, h                                       ; $4060: $5c
    db $f4                                        ; $4061: $f4

jr_062_4062:
    nop                                           ; $4062: $00
    xor l                                         ; $4063: $ad
    ldh [$d6], a                                  ; $4064: $e0 $d6
    rst $10                                       ; $4066: $d7
    sbc b                                         ; $4067: $98
    call z, $e296                                 ; $4068: $cc $96 $e2
    ld b, d                                       ; $406b: $42
    db $ec                                        ; $406c: $ec
    sub a                                         ; $406d: $97
    and e                                         ; $406e: $a3
    cp h                                          ; $406f: $bc
    ldh [$80], a                                  ; $4070: $e0 $80
    sbc $c0                                       ; $4072: $de $c0
    ld e, b                                       ; $4074: $58
    db $ec                                        ; $4075: $ec
    or $c5                                        ; $4076: $f6 $c5
    cpl                                           ; $4078: $2f
    ld [c], a                                     ; $4079: $e2
    ld d, e                                       ; $407a: $53
    rst $18                                       ; $407b: $df
    jr jr_062_4062                                ; $407c: $18 $e4

    ret nz                                        ; $407e: $c0

    rst $00                                       ; $407f: $c7
    ld c, l                                       ; $4080: $4d
    ld c, l                                       ; $4081: $4d

Call_062_4082:
    pop bc                                        ; $4082: $c1
    dec l                                         ; $4083: $2d
    ld sp, hl                                     ; $4084: $f9
    and d                                         ; $4085: $a2
    ld a, [hl]                                    ; $4086: $7e
    db $e4                                        ; $4087: $e4
    add b                                         ; $4088: $80
    call c, $c3c6                                 ; $4089: $dc $c6 $c3
    add [hl]                                      ; $408c: $86
    add sp, $6d                                   ; $408d: $e8 $6d
    dec bc                                        ; $408f: $0b
    rrca                                          ; $4090: $0f
    dec bc                                        ; $4091: $0b
    ld c, l                                       ; $4092: $4d
    dec l                                         ; $4093: $2d
    dec l                                         ; $4094: $2d
    ld b, c                                       ; $4095: $41
    db $e3                                        ; $4096: $e3
    ld a, e                                       ; $4097: $7b
    ld [c], a                                     ; $4098: $e2
    ld a, d                                       ; $4099: $7a
    ret nc                                        ; $409a: $d0

    add [hl]                                      ; $409b: $86
    adc $0e                                       ; $409c: $ce $0e
    ld c, [hl]                                    ; $409e: $4e
    rst $00                                       ; $409f: $c7
    ld l, l                                       ; $40a0: $6d
    dec c                                         ; $40a1: $0d
    dec bc                                        ; $40a2: $0b
    rst $38                                       ; $40a3: $ff
    ldh [$7d], a                                  ; $40a4: $e0 $7d
    pop hl                                        ; $40a6: $e1
    ret nz                                        ; $40a7: $c0

    rst $20                                       ; $40a8: $e7
    ld b, c                                       ; $40a9: $41
    db $fd                                        ; $40aa: $fd
    ld e, [hl]                                    ; $40ab: $5e
    inc l                                         ; $40ac: $2c
    and [hl]                                      ; $40ad: $a6
    ld c, l                                       ; $40ae: $4d
    ld c, l                                       ; $40af: $4d
    ld l, l                                       ; $40b0: $6d
    dec c                                         ; $40b1: $0d
    ret nz                                        ; $40b2: $c0

    pop hl                                        ; $40b3: $e1
    dec c                                         ; $40b4: $0d
    cp a                                          ; $40b5: $bf
    pop hl                                        ; $40b6: $e1
    add b                                         ; $40b7: $80
    add $e5                                       ; $40b8: $c6 $e5
    db $fd                                        ; $40ba: $fd
    pop de                                        ; $40bb: $d1
    jr @-$53                                      ; $40bc: $18 $ab

Jump_062_40be:
    ld [$46c3], sp                                ; $40be: $08 $c3 $46
    ldh [$84], a                                  ; $40c1: $e0 $84
    ldh [$81], a                                  ; $40c3: $e0 $81
    ld [c], a                                     ; $40c5: $e2
    dec c                                         ; $40c6: $0d
    add e                                         ; $40c7: $83
    dec bc                                        ; $40c8: $0b
    dec c                                         ; $40c9: $0d
    ei                                            ; $40ca: $fb
    jp nz, $c676                                  ; $40cb: $c2 $76 $c6

    nop                                           ; $40ce: $00
    cp d                                          ; $40cf: $ba
    ld d, l                                       ; $40d0: $55
    call nz, $e007                                ; $40d1: $c4 $07 $e0
    dec c                                         ; $40d4: $0d
    rra                                           ; $40d5: $1f
    dec bc                                        ; $40d6: $0b
    dec hl                                        ; $40d7: $2b
    dec bc                                        ; $40d8: $0b
    ld a, [bc]                                    ; $40d9: $0a
    ld a, [hl+]                                   ; $40da: $2a
    cp [hl]                                       ; $40db: $be
    db $e3                                        ; $40dc: $e3
    ld a, [hl]                                    ; $40dd: $7e
    ld [c], a                                     ; $40de: $e2
    cp d                                          ; $40df: $ba
    call nz, $8078                                ; $40e0: $c4 $78 $80
    call c, $e382                                 ; $40e3: $dc $82 $e3
    rlca                                          ; $40e6: $07
    ld [c], a                                     ; $40e7: $e2
    ld a, [bc]                                    ; $40e8: $0a
    ld a, [bc]                                    ; $40e9: $0a
    ld a, [hl+]                                   ; $40ea: $2a
    ld a, [bc]                                    ; $40eb: $0a
    ld a, e                                       ; $40ec: $7b
    add b                                         ; $40ed: $80
    adc l                                         ; $40ee: $8d
    ld c, e                                       ; $40ef: $4b
    inc a                                         ; $40f0: $3c
    ldh [rKEY1], a                                ; $40f1: $e0 $4d
    dec l                                         ; $40f3: $2d
    ccf                                           ; $40f4: $3f
    jp nz, $bf00                                  ; $40f5: $c2 $00 $bf

    ld l, h                                       ; $40f8: $6c
    ld h, e                                       ; $40f9: $63
    dec bc                                        ; $40fa: $0b
    ld [hl-], a                                   ; $40fb: $32
    ld b, $e2                                     ; $40fc: $06 $e2
    ld c, d                                       ; $40fe: $4a
    jp nz, $f5e1                                  ; $40ff: $c2 $e1 $f5

    ld [c], a                                     ; $4102: $e2
    dec c                                         ; $4103: $0d
    dec bc                                        ; $4104: $0b
    ret nz                                        ; $4105: $c0

    ldh [$f8], a                                  ; $4106: $e0 $f8
    add l                                         ; $4108: $85
    nop                                           ; $4109: $00
    nop                                           ; $410a: $00
    or a                                          ; $410b: $b7
    sub $a2                                       ; $410c: $d6 $a2
    ld [$c0a1], sp                                ; $410e: $08 $a1 $c0
    db $e3                                        ; $4111: $e3
    ld a, [$bbe5]                                 ; $4112: $fa $e5 $bb
    pop bc                                        ; $4115: $c1
    or h                                          ; $4116: $b4
    ret nz                                        ; $4117: $c0

    cp l                                          ; $4118: $bd
    cp a                                          ; $4119: $bf
    ld hl, sp-$61                                 ; $411a: $f8 $9f
    and l                                         ; $411c: $a5
    res 4, b                                      ; $411d: $cb $a0
    jp z, Jump_000_0de3                           ; $411f: $ca $e3 $0d

    ld c, e                                       ; $4122: $4b

Jump_062_4123:
    ld c, e                                       ; $4123: $4b
    dec bc                                        ; $4124: $0b
    ld c, e                                       ; $4125: $4b
    and d                                         ; $4126: $a2
    ld [hl], d                                    ; $4127: $72
    pop hl                                        ; $4128: $e1
    ld l, l                                       ; $4129: $6d
    ld h, [hl]                                    ; $412a: $66
    push hl                                       ; $412b: $e5
    add b                                         ; $412c: $80
    sbc $fc                                       ; $412d: $de $fc
    add e                                         ; $412f: $83
    dec l                                         ; $4130: $2d
    ret nz                                        ; $4131: $c0

    db $e4                                        ; $4132: $e4
    dec l                                         ; $4133: $2d
    add e                                         ; $4134: $83
    dec c                                         ; $4135: $0d
    dec hl                                        ; $4136: $2b
    or h                                          ; $4137: $b4

Jump_062_4138:
    pop hl                                        ; $4138: $e1
    cp $a3                                        ; $4139: $fe $a3
    ld a, b                                       ; $413b: $78
    and h                                         ; $413c: $a4
    nop                                           ; $413d: $00
    cp e                                          ; $413e: $bb
    push de                                       ; $413f: $d5
    add h                                         ; $4140: $84
    dec l                                         ; $4141: $2d
    add b                                         ; $4142: $80
    ld b, l                                       ; $4143: $45
    call nz, $e0bd                                ; $4144: $c4 $bd $e0
    ld [hl], e                                    ; $4147: $73
    ldh [$be], a                                  ; $4148: $e0 $be
    and d                                         ; $414a: $a2
    rst $38                                       ; $414b: $ff
    rst $38                                       ; $414c: $ff
    nop                                           ; $414d: $00
    and a                                         ; $414e: $a7
    dec c                                         ; $414f: $0d
    ret nz                                        ; $4150: $c0

    dec l                                         ; $4151: $2d
    ld [bc], a                                    ; $4152: $02
    ld a, h                                       ; $4153: $7c
    pop hl                                        ; $4154: $e1
    dec hl                                        ; $4155: $2b
    dec sp                                        ; $4156: $3b
    ret nz                                        ; $4157: $c0

    ld [hl], b                                    ; $4158: $70
    ld [c], a                                     ; $4159: $e2
    di                                            ; $415a: $f3
    ld b, d                                       ; $415b: $42
    db $fd                                        ; $415c: $fd
    ld [hl], c                                    ; $415d: $71
    nop                                           ; $415e: $00
    or e                                          ; $415f: $b3
    adc h                                         ; $4160: $8c
    add d                                         ; $4161: $82
    jr nz, @+$7e                                  ; $4162: $20 $7c

    ldh [$c0], a                                  ; $4164: $e0 $c0
    db $e4                                        ; $4166: $e4
    inc a                                         ; $4167: $3c
    and h                                         ; $4168: $a4
    nop                                           ; $4169: $00
    cp a                                          ; $416a: $bf
    add [hl]                                      ; $416b: $86
    ld l, d                                       ; $416c: $6a
    ld c, l                                       ; $416d: $4d
    ld [bc], a                                    ; $416e: $02
    and c                                         ; $416f: $a1
    pop bc                                        ; $4170: $c1
    pop bc                                        ; $4171: $c1
    nop                                           ; $4172: $00
    inc a                                         ; $4173: $3c
    and e                                         ; $4174: $a3
    ld a, [hl+]                                   ; $4175: $2a
    ld h, l                                       ; $4176: $65
    nop                                           ; $4177: $00
    cp a                                          ; $4178: $bf
    ld h, [hl]                                    ; $4179: $66
    dec h                                         ; $417a: $25
    jp nz, Jump_000_3881                          ; $417b: $c2 $81 $38

    and d                                         ; $417e: $a2
    cp b                                          ; $417f: $b8
    add b                                         ; $4180: $80
    ld a, d                                       ; $4181: $7a
    add h                                         ; $4182: $84
    jr jr_062_4185                                ; $4183: $18 $00

jr_062_4185:
    cp [hl]                                       ; $4185: $be
    db $fc                                        ; $4186: $fc
    and [hl]                                      ; $4187: $a6
    db $fc                                        ; $4188: $fc
    add c                                         ; $4189: $81
    dec hl                                        ; $418a: $2b
    dec hl                                        ; $418b: $2b
    rst $38                                       ; $418c: $ff
    add e                                         ; $418d: $83
    cp a                                          ; $418e: $bf
    and c                                         ; $418f: $a1
    nop                                           ; $4190: $00
    jp RST_28                                     ; $4191: $c3 $28 $00


    cp [hl]                                       ; $4194: $be
    ld a, h                                       ; $4195: $7c
    and [hl]                                      ; $4196: $a6
    inc bc                                        ; $4197: $03
    add c                                         ; $4198: $81
    ld l, e                                       ; $4199: $6b
    ld b, h                                       ; $419a: $44
    and b                                         ; $419b: $a0
    dec hl                                        ; $419c: $2b
    or $a3                                        ; $419d: $f6 $a3
    cp $a1                                        ; $419f: $fe $a1
    jr @+$7d                                      ; $41a1: $18 $7b

    rst $18                                       ; $41a3: $df
    ld d, l                                       ; $41a4: $55
    ld b, e                                       ; $41a5: $43
    db $fc                                        ; $41a6: $fc
    add [hl]                                      ; $41a7: $86
    ld l, e                                       ; $41a8: $6b
    ld l, e                                       ; $41a9: $6b
    cp l                                          ; $41aa: $bd
    pop bc                                        ; $41ab: $c1
    rst $38                                       ; $41ac: $ff
    and c                                         ; $41ad: $a1
    inc [hl]                                      ; $41ae: $34
    add b                                         ; $41af: $80
    db $10                                        ; $41b0: $10
    pop de                                        ; $41b1: $d1
    inc de                                        ; $41b2: $13
    nop                                           ; $41b3: $00
    ld d, c                                       ; $41b4: $51
    db $fc                                        ; $41b5: $fc
    add a                                         ; $41b6: $87
    ret nz                                        ; $41b7: $c0

    ldh [rWX], a                                  ; $41b8: $e0 $4b
    add c                                         ; $41ba: $81
    and c                                         ; $41bb: $a1
    db $ec                                        ; $41bc: $ec
    dec hl                                        ; $41bd: $2b
    nop                                           ; $41be: $00

jr_062_41bf:
    ld e, a                                       ; $41bf: $5f
    inc e                                         ; $41c0: $1c
    cp h                                          ; $41c1: $bc
    add c                                         ; $41c2: $81
    cp $61                                        ; $41c3: $fe $61
    dec hl                                        ; $41c5: $2b
    dec bc                                        ; $41c6: $0b
    ld c, e                                       ; $41c7: $4b
    ld b, b                                       ; $41c8: $40
    and b                                         ; $41c9: $a0
    ret nz                                        ; $41ca: $c0

    ld h, l                                       ; $41cb: $65
    db $fc                                        ; $41cc: $fc
    ccf                                           ; $41cd: $3f
    add h                                         ; $41ce: $84
    add [hl]                                      ; $41cf: $86
    ld c, b                                       ; $41d0: $48
    add e                                         ; $41d1: $83
    jp nz, $ff6b                                  ; $41d2: $c2 $6b $ff

    add b                                         ; $41d5: $80
    call nz, $80c3                                ; $41d6: $c4 $c3 $80
    rra                                           ; $41d9: $1f
    sub d                                         ; $41da: $92
    inc bc                                        ; $41db: $03
    ld l, l                                       ; $41dc: $6d
    inc b                                         ; $41dd: $04
    rst $38                                       ; $41de: $ff
    ldh [$3e], a                                  ; $41df: $e0 $3e
    and e                                         ; $41e1: $a3
    dec c                                         ; $41e2: $0d
    add d                                         ; $41e3: $82
    jp nz, Jump_062_47fe                          ; $41e4: $c2 $fe $47

    ld l, [hl]                                    ; $41e7: $6e
    ld [hl+], a                                   ; $41e8: $22
    add b                                         ; $41e9: $80
    dec e                                         ; $41ea: $1d
    jp nz, Jump_000_04e2                          ; $41eb: $c2 $e2 $04

    ld a, [hl+]                                   ; $41ee: $2a
    inc b                                         ; $41ef: $04
    pop bc                                        ; $41f0: $c1
    push hl                                       ; $41f1: $e5
    dec hl                                        ; $41f2: $2b
    add b                                         ; $41f3: $80
    ld h, l                                       ; $41f4: $65
    rst $38                                       ; $41f5: $ff
    rst $38                                       ; $41f6: $ff
    ret nz                                        ; $41f7: $c0

    db $e3                                        ; $41f8: $e3
    inc b                                         ; $41f9: $04
    inc hl                                        ; $41fa: $23
    ld b, b                                       ; $41fb: $40
    ld h, b                                       ; $41fc: $60
    jr nc, jr_062_41bf                            ; $41fd: $30 $c0

    db $e4                                        ; $41ff: $e4
    cp a                                          ; $4200: $bf
    add d                                         ; $4201: $82

Jump_062_4202:
    ld b, b                                       ; $4202: $40
    call nc, $d680                                ; $4203: $d4 $80 $d6
    ld c, l                                       ; $4206: $4d
    dec l                                         ; $4207: $2d
    jp $87a0                                      ; $4208: $c3 $a0 $87


    and c                                         ; $420b: $a1
    nop                                           ; $420c: $00
    add c                                         ; $420d: $81
    ld h, d                                       ; $420e: $62
    nop                                           ; $420f: $00
    add [hl]                                      ; $4210: $86
    add b                                         ; $4211: $80
    rst $18                                       ; $4212: $df
    ld c, [hl]                                    ; $4213: $4e
    ld b, $01                                     ; $4214: $06 $01
    push hl                                       ; $4216: $e5
    add c                                         ; $4217: $81
    ld h, d                                       ; $4218: $62
    ld l, [hl]                                    ; $4219: $6e
    rlca                                          ; $421a: $07
    rst $38                                       ; $421b: $ff
    rst $38                                       ; $421c: $ff
    ldh [rP1], a                                  ; $421d: $e0 $00
    xor $02                                       ; $421f: $ee $02
    ld h, d                                       ; $4221: $62
    nop                                           ; $4222: $00
    cp a                                          ; $4223: $bf
    add b                                         ; $4224: $80
    inc bc                                        ; $4225: $03
    nop                                           ; $4226: $00
    and [hl]                                      ; $4227: $a6
    ld l, e                                       ; $4228: $6b
    ld c, e                                       ; $4229: $4b
    ld l, e                                       ; $422a: $6b
    adc [hl]                                      ; $422b: $8e
    ld a, [hl]                                    ; $422c: $7e
    and c                                         ; $422d: $a1
    ld l, e                                       ; $422e: $6b
    ld l, e                                       ; $422f: $6b
    ld c, e                                       ; $4230: $4b

jr_062_4231:
    add d                                         ; $4231: $82
    ld b, d                                       ; $4232: $42
    nop                                           ; $4233: $00
    ld e, a                                       ; $4234: $5f
    add b                                         ; $4235: $80
    dec bc                                        ; $4236: $0b
    dec c                                         ; $4237: $0d
    cpl                                           ; $4238: $2f
    dec hl                                        ; $4239: $2b
    ld l, e                                       ; $423a: $6b
    dec c                                         ; $423b: $0d
    ld l, e                                       ; $423c: $6b
    rst $38                                       ; $423d: $ff
    pop hl                                        ; $423e: $e1
    ld c, e                                       ; $423f: $4b
    add b                                         ; $4240: $80
    and c                                         ; $4241: $a1
    nop                                           ; $4242: $00
    ld e, a                                       ; $4243: $5f
    nop                                           ; $4244: $00
    ld b, b                                       ; $4245: $40
    dec b                                         ; $4246: $05
    db $fc                                        ; $4247: $fc
    ld h, l                                       ; $4248: $65
    ei                                            ; $4249: $fb
    ld b, d                                       ; $424a: $42
    add e                                         ; $424b: $83
    ld b, l                                       ; $424c: $45
    add d                                         ; $424d: $82
    ld h, $80                                     ; $424e: $26 $80
    rst $18                                       ; $4250: $df
    ld a, [hl]                                    ; $4251: $7e
    ld b, $ba                                     ; $4252: $06 $ba
    ld b, c                                       ; $4254: $41
    nop                                           ; $4255: $00
    add e                                         ; $4256: $83
    ld b, e                                       ; $4257: $43
    ld b, c                                       ; $4258: $41
    rlca                                          ; $4259: $07
    add b                                         ; $425a: $80
    rst $18                                       ; $425b: $df
    ld a, d                                       ; $425c: $7a
    ld b, $09                                     ; $425d: $06 $09
    ld h, d                                       ; $425f: $62
    add l                                         ; $4260: $85
    jp $bf04                                      ; $4261: $c3 $04 $bf


    ld a, [hl-]                                   ; $4264: $3a
    inc de                                        ; $4265: $13
    nop                                           ; $4266: $00
    ret nc                                        ; $4267: $d0

    jr nz, jr_062_4231                            ; $4268: $20 $c7

    inc hl                                        ; $426a: $23
    nop                                           ; $426b: $00
    cp a                                          ; $426c: $bf
    ld a, d                                       ; $426d: $7a
    inc c                                         ; $426e: $0c
    or d                                          ; $426f: $b2
    ld b, d                                       ; $4270: $42
    inc c                                         ; $4271: $0c
    add [hl]                                      ; $4272: $86
    ld l, d                                       ; $4273: $6a
    ld b, l                                       ; $4274: $45
    add b                                         ; $4275: $80
    rst $18                                       ; $4276: $df
    nop                                           ; $4277: $00
    cp l                                          ; $4278: $bd
    xor b                                         ; $4279: $a8
    adc $26                                       ; $427a: $ce $26
    rst $00                                       ; $427c: $c7
    add l                                         ; $427d: $85
    add b                                         ; $427e: $80
    rst $18                                       ; $427f: $df
    rst $30                                       ; $4280: $f7

Call_062_4281:
    ld a, [bc]                                    ; $4281: $0a
    ei                                            ; $4282: $fb
    jr nz, jr_062_42ff                            ; $4283: $20 $7a

    pop bc                                        ; $4285: $c1

Call_062_4286:
    dec b                                         ; $4286: $05
    ret z                                         ; $4287: $c8

    nop                                           ; $4288: $00
    add b                                         ; $4289: $80
    rst $18                                       ; $428a: $df
    dec e                                         ; $428b: $1d
    and [hl]                                      ; $428c: $a6
    pop de                                        ; $428d: $d1
    add sp, -$39                                  ; $428e: $e8 $c7
    call nz, $a37c                                ; $4290: $c4 $7c $a3
    add b                                         ; $4293: $80
    rst $18                                       ; $4294: $df
    sub l                                         ; $4295: $95
    db $e4                                        ; $4296: $e4
    ld a, $ea                                     ; $4297: $3e $ea
    nop                                           ; $4299: $00
    ld e, [hl]                                    ; $429a: $5e
    ld b, c                                       ; $429b: $41
    inc a                                         ; $429c: $3c
    and [hl]                                      ; $429d: $a6
    ld b, e                                       ; $429e: $43
    rst $38                                       ; $429f: $ff
    ret nz                                        ; $42a0: $c0

    rst $38                                       ; $42a1: $ff
    add b                                         ; $42a2: $80
    db $dd                                        ; $42a3: $dd
    ld a, [$80ff]                                 ; $42a4: $fa $ff $80
    jp c, $ffff                                   ; $42a7: $da $ff $ff

    nop                                           ; $42aa: $00
    rst $38                                       ; $42ab: $ff
    rst $38                                       ; $42ac: $ff
    rst $38                                       ; $42ad: $ff
    rst $38                                       ; $42ae: $ff
    add b                                         ; $42af: $80
    sub $fa                                       ; $42b0: $d6 $fa
    rst $38                                       ; $42b2: $ff
    nop                                           ; $42b3: $00
    cp e                                          ; $42b4: $bb
    rst $38                                       ; $42b5: $ff
    rst $38                                       ; $42b6: $ff
    rst $38                                       ; $42b7: $ff
    rst $38                                       ; $42b8: $ff
    rst $38                                       ; $42b9: $ff
    rst $38                                       ; $42ba: $ff
    nop                                           ; $42bb: $00
    add b                                         ; $42bc: $80
    rst $18                                       ; $42bd: $df
    ld a, [$3eff]                                 ; $42be: $fa $ff $3e
    rst $38                                       ; $42c1: $ff
    rst $38                                       ; $42c2: $ff
    rst $38                                       ; $42c3: $ff
    rst $38                                       ; $42c4: $ff
    rst $38                                       ; $42c5: $ff

Jump_062_42c6:
    add b                                         ; $42c6: $80
    rst $18                                       ; $42c7: $df
    ld a, [$80ff]                                 ; $42c8: $fa $ff $80
    push de                                       ; $42cb: $d5
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    ccf                                           ; $42cf: $3f
    db $dd                                        ; $42d0: $dd
    sbc $a0                                       ; $42d1: $de $a0
    and b                                         ; $42d3: $a0
    and b                                         ; $42d4: $a0
    call c, $fffa                                 ; $42d5: $dc $fa $ff
    db $f4                                        ; $42d8: $f4
    push af                                       ; $42d9: $f5
    ccf                                           ; $42da: $3f
    ld [c], a                                     ; $42db: $e2
    db $e3                                        ; $42dc: $e3
    db $e4                                        ; $42dd: $e4
    rst $18                                       ; $42de: $df
    ldh [$e1], a                                  ; $42df: $e0 $e1
    ld a, [$f4ff]                                 ; $42e1: $fa $ff $f4
    push af                                       ; $42e4: $f5
    ccf                                           ; $42e5: $3f
    add sp, -$17                                  ; $42e6: $e8 $e9
    ld [$e6e5], a                                 ; $42e8: $ea $e5 $e6
    rst $20                                       ; $42eb: $e7
    ld a, [$f4ff]                                 ; $42ec: $fa $ff $f4
    push af                                       ; $42ef: $f5
    nop                                           ; $42f0: $00
    ld e, e                                       ; $42f1: $5b
    rst $38                                       ; $42f2: $ff
    ld a, [$5bfb]                                 ; $42f3: $fa $fb $5b
    rst $38                                       ; $42f6: $ff
    ld a, [$5bfb]                                 ; $42f7: $fa $fb $5b
    rst $38                                       ; $42fa: $ff
    ld a, [$5bfb]                                 ; $42fb: $fa $fb $5b

Jump_062_42fe:
    rst $38                                       ; $42fe: $ff

jr_062_42ff:
    add b                                         ; $42ff: $80
    rst $18                                       ; $4300: $df
    ldh [rHDMA5], a                               ; $4301: $e0 $55
    rst $38                                       ; $4303: $ff
    add b                                         ; $4304: $80
    rst $18                                       ; $4305: $df
    ld a, [$80ff]                                 ; $4306: $fa $ff $80
    rst $18                                       ; $4309: $df
    ld c, a                                       ; $430a: $4f
    db $e3                                        ; $430b: $e3
    sub $d7                                       ; $430c: $d6 $d7
    and b                                         ; $430e: $a0
    ldh a, [$fc]                                  ; $430f: $f0 $fc
    xor $fe                                       ; $4311: $ee $fe
    db $e3                                        ; $4313: $e3
    add b                                         ; $4314: $80
    rst $18                                       ; $4315: $df
    ld c, a                                       ; $4316: $4f
    pop hl                                        ; $4317: $e1
    ret c                                         ; $4318: $d8

    reti                                          ; $4319: $d9


    and b                                         ; $431a: $a0
    and b                                         ; $431b: $a0
    ldh a, [$fc]                                  ; $431c: $f0 $fc
    db $ec                                        ; $431e: $ec
    cp l                                          ; $431f: $bd

Jump_062_4320:
    ld [c], a                                     ; $4320: $e2
    add b                                         ; $4321: $80
    rst $18                                       ; $4322: $df
    ld c, a                                       ; $4323: $4f
    db $e3                                        ; $4324: $e3
    jp c, $d6db                                   ; $4325: $da $db $d6

    rst $10                                       ; $4328: $d7
    ld h, $fc                                     ; $4329: $26 $fc
    db $e3                                        ; $432b: $e3
    ret nc                                        ; $432c: $d0

    pop de                                        ; $432d: $d1
    db $fc                                        ; $432e: $fc
    db $e3                                        ; $432f: $e3
    or c                                          ; $4330: $b1
    ld [c], a                                     ; $4331: $e2
    and b                                         ; $4332: $a0
    add b                                         ; $4333: $80
    rst $18                                       ; $4334: $df
    sub d                                         ; $4335: $92
    jp nz, $892c                                  ; $4336: $c2 $2c $89

    ret nz                                        ; $4339: $c0

    ld a, [hl]                                    ; $433a: $7e
    push hl                                       ; $433b: $e5
    jp nc, $fcd3                                  ; $433c: $d2 $d3 $fc

    db $e3                                        ; $433f: $e3
    and b                                         ; $4340: $a0
    xor l                                         ; $4341: $ad
    pop hl                                        ; $4342: $e1
    dec a                                         ; $4343: $3d
    db $f4                                        ; $4344: $f4
    ld a, b                                       ; $4345: $78
    sbc [hl]                                      ; $4346: $9e
    call z, $c04b                                 ; $4347: $cc $4b $c0
    add [hl]                                      ; $434a: $86
    rst $20                                       ; $434b: $e7
    call nc, $a0d5                                ; $434c: $d4 $d5 $a0
    and b                                         ; $434f: $a0
    db $fc                                        ; $4350: $fc
    pop hl                                        ; $4351: $e1
    add e                                         ; $4352: $83
    ret nc                                        ; $4353: $d0

    pop de                                        ; $4354: $d1
    ld a, [hl]                                    ; $4355: $7e
    db $e3                                        ; $4356: $e3
    dec a                                         ; $4357: $3d
    pop af                                        ; $4358: $f1
    sbc [hl]                                      ; $4359: $9e
    call z, $e482                                 ; $435a: $cc $82 $e4
    add [hl]                                      ; $435d: $86
    db $e4                                        ; $435e: $e4
    sbc a                                         ; $435f: $9f
    rlca                                          ; $4360: $07
    sbc l                                         ; $4361: $9d
    sbc l                                         ; $4362: $9d
    sbc a                                         ; $4363: $9f
    ld sp, hl                                     ; $4364: $f9
    and b                                         ; $4365: $a0
    ld a, b                                       ; $4366: $78
    ldh [$7e], a                                  ; $4367: $e0 $7e
    db $e3                                        ; $4369: $e3
    add b                                         ; $436a: $80
    call c, $c386                                 ; $436b: $dc $86 $c3
    cp $86                                        ; $436e: $fe $86
    rst $20                                       ; $4370: $e7
    sbc a                                         ; $4371: $9f
    sbc h                                         ; $4372: $9c
    ld b, [hl]                                    ; $4373: $46
    ld b, [hl]                                    ; $4374: $46
    sbc h                                         ; $4375: $9c
    and d                                         ; $4376: $a2
    sbc a                                         ; $4377: $9f
    ret nz                                        ; $4378: $c0

    ld a, h                                       ; $4379: $7c
    ldh [$7e], a                                  ; $437a: $e0 $7e
    db $e3                                        ; $437c: $e3
    halt                                          ; $437d: $76
    jp $b700                                      ; $437e: $c3 $00 $b7


    ld [$82e9], sp                                ; $4381: $08 $e9 $82
    and b                                         ; $4384: $a0
    sbc a                                         ; $4385: $9f
    sbc h                                         ; $4386: $9c
    dec bc                                        ; $4387: $0b
    xor [hl]                                      ; $4388: $ae
    ld b, [hl]                                    ; $4389: $46
    rst $38                                       ; $438a: $ff
    ldh [$9c], a                                  ; $438b: $e0 $9c
    ld a, l                                       ; $438d: $7d
    ldh [$7e], a                                  ; $438e: $e0 $7e
    ld [c], a                                     ; $4390: $e2
    ld l, d                                       ; $4391: $6a
    jp nz, $d980                                  ; $4392: $c2 $80 $d9

    ld hl, sp-$6a                                 ; $4395: $f8 $96
    ret nz                                        ; $4397: $c0

    push de                                       ; $4398: $d5
    ret nz                                        ; $4399: $c0

    ld [$9fe2], sp                                ; $439a: $08 $e2 $9f
    and d                                         ; $439d: $a2
    sbc l                                         ; $439e: $9d
    sbc l                                         ; $439f: $9d
    sbc h                                         ; $43a0: $9c
    dec bc                                        ; $43a1: $0b
    xor [hl]                                      ; $43a2: $ae
    xor a                                         ; $43a3: $af
    ret nz                                        ; $43a4: $c0

    ldh [$ae], a                                  ; $43a5: $e0 $ae
    cp a                                          ; $43a7: $bf
    pop hl                                        ; $43a8: $e1
    or $c1                                        ; $43a9: $f6 $c1
    ld l, d                                       ; $43ab: $6a
    pop bc                                        ; $43ac: $c1
    ld a, d                                       ; $43ad: $7a
    rst $08                                       ; $43ae: $cf
    ld b, b                                       ; $43af: $40
    add b                                         ; $43b0: $80
    rst $08                                       ; $43b1: $cf
    adc d                                         ; $43b2: $8a
    pop bc                                        ; $43b3: $c1
    ld b, [hl]                                    ; $43b4: $46
    ldh [$84], a                                  ; $43b5: $e0 $84
    ldh [$c1], a                                  ; $43b7: $e0 $c1
    pop hl                                        ; $43b9: $e1
    ei                                            ; $43ba: $fb
    ldh [$ae], a                                  ; $43bb: $e0 $ae
    ld a, [hl]                                    ; $43bd: $7e
    pop hl                                        ; $43be: $e1
    call z, $a3ec                                 ; $43bf: $cc $ec $a3
    add b                                         ; $43c2: $80
    rst $18                                       ; $43c3: $df
    sub $d7                                       ; $43c4: $d6 $d7
    add d                                         ; $43c6: $82
    pop hl                                        ; $43c7: $e1
    rlca                                          ; $43c8: $07
    ldh [$af], a                                  ; $43c9: $e0 $af
    ld b, [hl]                                    ; $43cb: $46
    rrca                                          ; $43cc: $0f
    ld b, l                                       ; $43cd: $45
    ld b, e                                       ; $43ce: $43
    ld c, b                                       ; $43cf: $48
    ld c, b                                       ; $43d0: $48
    cp [hl]                                       ; $43d1: $be
    db $e3                                        ; $43d2: $e3
    dec a                                         ; $43d3: $3d
    ldh [$f8], a                                  ; $43d4: $e0 $f8
    and d                                         ; $43d6: $a2
    add b                                         ; $43d7: $80
    rst $18                                       ; $43d8: $df
    db $fc                                        ; $43d9: $fc
    add [hl]                                      ; $43da: $86
    and d                                         ; $43db: $a2
    rlca                                          ; $43dc: $07

Call_062_43dd:
    db $e4                                        ; $43dd: $e4
    ld c, d                                       ; $43de: $4a
    ld c, h                                       ; $43df: $4c
    ld d, h                                       ; $43e0: $54
    ld e, c                                       ; $43e1: $59
    ld a, c                                       ; $43e2: $79
    ld a, d                                       ; $43e3: $7a
    adc l                                         ; $43e4: $8d
    ld a, l                                       ; $43e5: $7d
    inc a                                         ; $43e6: $3c
    pop hl                                        ; $43e7: $e1
    sbc h                                         ; $43e8: $9c
    sbc a                                         ; $43e9: $9f
    ld hl, sp-$5e                                 ; $43ea: $f8 $a2
    nop                                           ; $43ec: $00
    cp [hl]                                       ; $43ed: $be
    adc d                                         ; $43ee: $8a
    and e                                         ; $43ef: $a3
    sbc [hl]                                      ; $43f0: $9e
    ei                                            ; $43f1: $fb
    ld b, [hl]                                    ; $43f2: $46
    xor a                                         ; $43f3: $af
    add $c1                                       ; $43f4: $c6 $c1
    ld c, d                                       ; $43f6: $4a
    ld d, [hl]                                    ; $43f7: $56
    ld a, c                                       ; $43f8: $79
    ld a, d                                       ; $43f9: $7a
    adc a                                         ; $43fa: $8f
    ei                                            ; $43fb: $fb
    ld b, c                                       ; $43fc: $41
    ld a, a                                       ; $43fd: $7f
    cp a                                          ; $43fe: $bf
    ldh [$af], a                                  ; $43ff: $e0 $af
    ld b, [hl]                                    ; $4401: $46
    and c                                         ; $4402: $a1
    call nc, $d8d5                                ; $4403: $d4 $d5 $d8
    cp l                                          ; $4406: $bd
    or e                                          ; $4407: $b3
    jp $8aab                                      ; $4408: $c3 $ab $8a


    and e                                         ; $440b: $a3
    and c                                         ; $440c: $a1
    ld b, [hl]                                    ; $440d: $46
    add $c2                                       ; $440e: $c6 $c2
    ld b, [hl]                                    ; $4410: $46
    ld a, c                                       ; $4411: $79
    ccf                                           ; $4412: $3f
    ld a, [hl]                                    ; $4413: $7e
    ld a, [hl+]                                   ; $4414: $2a
    cpl                                           ; $4415: $2f
    jr nz, jr_062_4445                            ; $4416: $20 $2d

    add c                                         ; $4418: $81
    ld a, h                                       ; $4419: $7c
    call nz, $b3bd                                ; $441a: $c4 $bd $b3
    ld h, b                                       ; $441d: $60
    jp Jump_000_04ab                              ; $441e: $c3 $ab $04


    and c                                         ; $4421: $a1

Call_062_4422:
    ld [$cbc1], sp                                ; $4422: $08 $c1 $cb
    ret nz                                        ; $4425: $c0

    ld b, l                                       ; $4426: $45
    ret nz                                        ; $4427: $c0

    add d                                         ; $4428: $82
    add e                                         ; $4429: $83
    ret nz                                        ; $442a: $c0

    db $e3                                        ; $442b: $e3
    add b                                         ; $442c: $80
    cp a                                          ; $442d: $bf
    pop bc                                        ; $442e: $c1
    db $f4                                        ; $442f: $f4
    add c                                         ; $4430: $81
    cp l                                          ; $4431: $bd
    or c                                          ; $4432: $b1
    sbc [hl]                                      ; $4433: $9e
    ld l, l                                       ; $4434: $6d
    push de                                       ; $4435: $d5
    add d                                         ; $4436: $82
    rst $00                                       ; $4437: $c7
    and b                                         ; $4438: $a0
    ld b, l                                       ; $4439: $45
    pop bc                                        ; $443a: $c1
    add l                                         ; $443b: $85
    rst $38                                       ; $443c: $ff
    add a                                         ; $443d: $87
    adc c                                         ; $443e: $89

Call_062_443f:
    add e                                         ; $443f: $83
    inc sp                                        ; $4440: $33
    add e                                         ; $4441: $83
    add h                                         ; $4442: $84
    ld b, [hl]                                    ; $4443: $46
    xor a                                         ; $4444: $af

Jump_062_4445:
jr_062_4445:
    add c                                         ; $4445: $81
    sbc [hl]                                      ; $4446: $9e
    db $f4                                        ; $4447: $f4
    add e                                         ; $4448: $83
    ld h, [hl]                                    ; $4449: $66
    add b                                         ; $444a: $80
    nop                                           ; $444b: $00
    cp [hl]                                       ; $444c: $be
    adc d                                         ; $444d: $8a
    add c                                         ; $444e: $81
    ld b, b                                       ; $444f: $40
    jp nz, $c205                                  ; $4450: $c2 $05 $c2

    add l                                         ; $4453: $85
    ccf                                           ; $4454: $3f
    add a                                         ; $4455: $87
    adc b                                         ; $4456: $88
    add a                                         ; $4457: $87
    add l                                         ; $4458: $85
    xor [hl]                                      ; $4459: $ae
    ld b, [hl]                                    ; $445a: $46
    ret nz                                        ; $445b: $c0

    ldh [$7c], a                                  ; $445c: $e0 $7c
    and c                                         ; $445e: $a1
    jp $dbda                                      ; $445f: $c3 $da $db


    add b                                         ; $4462: $80
    rst $18                                       ; $4463: $df
    adc [hl]                                      ; $4464: $8e
    add h                                         ; $4465: $84
    ld b, $a0                                     ; $4466: $06 $a0
    ld a, h                                       ; $4468: $7c
    pop hl                                        ; $4469: $e1
    ld b, l                                       ; $446a: $45
    scf                                           ; $446b: $37
    rrca                                          ; $446c: $0f
    scf                                           ; $446d: $37
    ld b, l                                       ; $446e: $45
    xor [hl]                                      ; $446f: $ae
    xor a                                         ; $4470: $af
    rst $38                                       ; $4471: $ff
    and e                                         ; $4472: $a3
    ld [hl], d                                    ; $4473: $72
    add b                                         ; $4474: $80
    nop                                           ; $4475: $00
    cp a                                          ; $4476: $bf
    nop                                           ; $4477: $00
    jp nz, Jump_062_7ef6                          ; $4478: $c2 $f6 $7e

    pop hl                                        ; $447b: $e1
    ret nc                                        ; $447c: $d0

    pop de                                        ; $447d: $d1
    ld [bc], a                                    ; $447e: $02
    and c                                         ; $447f: $a1
    add hl, sp                                    ; $4480: $39
    dec [hl]                                      ; $4481: $35
    dec [hl]                                      ; $4482: $35
    ld b, b                                       ; $4483: $40
    pop bc                                        ; $4484: $c1
    xor a                                         ; $4485: $af
    ld a, c                                       ; $4486: $79
    and b                                         ; $4487: $a0
    inc a                                         ; $4488: $3c
    and c                                         ; $4489: $a1
    ld a, [hl]                                    ; $448a: $7e
    push bc                                       ; $448b: $c5
    nop                                           ; $448c: $00
    cp a                                          ; $448d: $bf
    ld [$9e84], sp                                ; $448e: $08 $84 $9e
    ld b, [hl]                                    ; $4491: $46
    rra                                           ; $4492: $1f
    ld b, [hl]                                    ; $4493: $46
    ld a, $35                                     ; $4494: $3e $35
    ld a, [hl-]                                   ; $4496: $3a
    xor [hl]                                      ; $4497: $ae
    ld a, [hl]                                    ; $4498: $7e
    and c                                         ; $4499: $a1
    ei                                            ; $449a: $fb
    add d                                         ; $449b: $82
    nop                                           ; $449c: $00
    cp a                                          ; $449d: $bf

Jump_062_449e:
    adc b                                         ; $449e: $88
    nop                                           ; $449f: $00
    and d                                         ; $44a0: $a2
    ld a, [hl]                                    ; $44a1: $7e
    db $e3                                        ; $44a2: $e3
    inc b                                         ; $44a3: $04
    add b                                         ; $44a4: $80
    and c                                         ; $44a5: $a1
    ret nz                                        ; $44a6: $c0

    ld [c], a                                     ; $44a7: $e2
    db $fc                                        ; $44a8: $fc
    add b                                         ; $44a9: $80
    ld hl, sp-$7f                                 ; $44aa: $f8 $81
    sbc [hl]                                      ; $44ac: $9e
    ldh a, [$7e]                                  ; $44ad: $f0 $7e
    and e                                         ; $44af: $a3
    nop                                           ; $44b0: $00
    cp a                                          ; $44b1: $bf
    add [hl]                                      ; $44b2: $86
    ld h, [hl]                                    ; $44b3: $66
    ld b, d                                       ; $44b4: $42
    add b                                         ; $44b5: $80
    ld b, l                                       ; $44b6: $45
    ld a, [hl-]                                   ; $44b7: $3a
    dec [hl]                                      ; $44b8: $35
    dec [hl]                                      ; $44b9: $35
    add l                                         ; $44ba: $85
    add hl, sp                                    ; $44bb: $39
    ld a, a                                       ; $44bc: $7f
    db $e3                                        ; $44bd: $e3
    and c                                         ; $44be: $a1
    halt                                          ; $44bf: $76
    ld h, e                                       ; $44c0: $63
    add b                                         ; $44c1: $80
    ld a, a                                       ; $44c2: $7f
    db $fc                                        ; $44c3: $fc
    and h                                         ; $44c4: $a4
    db $fc                                        ; $44c5: $fc
    add d                                         ; $44c6: $82
    ld b, d                                       ; $44c7: $42
    cpl                                           ; $44c8: $2f
    dec [hl]                                      ; $44c9: $35
    dec [hl]                                      ; $44ca: $35
    dec [hl]                                      ; $44cb: $35
    ld a, $7b                                     ; $44cc: $3e $7b
    add c                                         ; $44ce: $81
    xor a                                         ; $44cf: $af
    ld a, h                                       ; $44d0: $7c
    add e                                         ; $44d1: $83
    nop                                           ; $44d2: $00
    cp a                                          ; $44d3: $bf
    ld [$6600], sp                                ; $44d4: $08 $00 $66
    inc bc                                        ; $44d7: $03
    add d                                         ; $44d8: $82
    add b                                         ; $44d9: $80
    pop hl                                        ; $44da: $e1
    ld a, $3e                                     ; $44db: $3e $3e
    add c                                         ; $44dd: $81
    ld a, c                                       ; $44de: $79
    ld h, d                                       ; $44df: $62
    nop                                           ; $44e0: $00
    cp a                                          ; $44e1: $bf
    nop                                           ; $44e2: $00
    ld b, h                                       ; $44e3: $44
    inc b                                         ; $44e4: $04
    db $fc                                        ; $44e5: $fc
    add a                                         ; $44e6: $87
    add b                                         ; $44e7: $80
    ret nz                                        ; $44e8: $c0

    add hl, sp                                    ; $44e9: $39
    add e                                         ; $44ea: $83
    pop hl                                        ; $44eb: $e1
    db $ec                                        ; $44ec: $ec
    and c                                         ; $44ed: $a1
    add sp, $25                                   ; $44ee: $e8 $25
    nop                                           ; $44f0: $00
    ld e, a                                       ; $44f1: $5f
    add [hl]                                      ; $44f2: $86
    ld b, c                                       ; $44f3: $41
    inc a                                         ; $44f4: $3c
    add e                                         ; $44f5: $83
    ret nz                                        ; $44f6: $c0

    jp nz, $4460                                  ; $44f7: $c2 $60 $44

    inc a                                         ; $44fa: $3c
    ld a, [hl-]                                   ; $44fb: $3a
    ld b, l                                       ; $44fc: $45
    pop bc                                        ; $44fd: $c1
    and c                                         ; $44fe: $a1
    add d                                         ; $44ff: $82
    and h                                         ; $4500: $a4
    ld h, b                                       ; $4501: $60
    add sp, $20                                   ; $4502: $e8 $20
    nop                                           ; $4504: $00
    ld e, a                                       ; $4505: $5f
    db $fc                                        ; $4506: $fc
    add e                                         ; $4507: $83
    add e                                         ; $4508: $83
    ret nz                                        ; $4509: $c0

    ld b, e                                       ; $450a: $43
    ld h, b                                       ; $450b: $60
    ld b, l                                       ; $450c: $45
    ld [hl], $81                                  ; $450d: $36 $81
    ldh [$e0], a                                  ; $450f: $e0 $e0
    add c                                         ; $4511: $81
    and b                                         ; $4512: $a0
    add d                                         ; $4513: $82
    and e                                         ; $4514: $a3
    add sp, $21                                   ; $4515: $e8 $21
    add b                                         ; $4517: $80
    rst $18                                       ; $4518: $df
    nop                                           ; $4519: $00
    rst $20                                       ; $451a: $e7
    ld b, l                                       ; $451b: $45
    ld b, e                                       ; $451c: $43
    ld b, c                                       ; $451d: $41
    push bc                                       ; $451e: $c5
    ld b, e                                       ; $451f: $43
    db $fd                                        ; $4520: $fd
    ldh [rLYC], a                                 ; $4521: $e0 $45
    cp $44                                        ; $4523: $fe $44
    nop                                           ; $4525: $00
    cp a                                          ; $4526: $bf
    nop                                           ; $4527: $00
    ld c, b                                       ; $4528: $48
    and b                                         ; $4529: $a0
    sbc [hl]                                      ; $452a: $9e
    cp a                                          ; $452b: $bf
    xor a                                         ; $452c: $af
    ld b, l                                       ; $452d: $45
    ld [hl], $3b                                  ; $452e: $36 $3b
    dec [hl]                                      ; $4530: $35
    dec sp                                        ; $4531: $3b
    db $fd                                        ; $4532: $fd
    ldh [$36], a                                  ; $4533: $e0 $36
    ret nc                                        ; $4535: $d0

    cp a                                          ; $4536: $bf
    pop hl                                        ; $4537: $e1
    nop                                           ; $4538: $00
    add c                                         ; $4539: $81

Jump_062_453a:
    nop                                           ; $453a: $00
    cp a                                          ; $453b: $bf
    nop                                           ; $453c: $00
    ld c, b                                       ; $453d: $48
    sbc [hl]                                      ; $453e: $9e
    inc bc                                        ; $453f: $03
    ldh [$a4], a                                  ; $4540: $e0 $a4
    ld h, h                                       ; $4542: $64
    ld b, $ff                                     ; $4543: $06 $ff
    ldh [$a5], a                                  ; $4545: $e0 $a5
    inc a                                         ; $4547: $3c
    cp a                                          ; $4548: $bf
    add d                                         ; $4549: $82
    db $ec                                        ; $454a: $ec
    ld bc, $df80                                  ; $454b: $01 $80 $df
    or c                                          ; $454e: $b1
    and b                                         ; $454f: $a0
    nop                                           ; $4550: $00
    add $ff                                       ; $4551: $c6 $ff
    ld b, d                                       ; $4553: $42
    dec [hl]                                      ; $4554: $35
    ld l, c                                       ; $4555: $69
    and e                                         ; $4556: $a3
    dec [hl]                                      ; $4557: $35
    dec [hl]                                      ; $4558: $35
    and e                                         ; $4559: $a3
    ld l, d                                       ; $455a: $6a
    ld hl, $8135                                  ; $455b: $21 $35 $81
    ld h, b                                       ; $455e: $60
    nop                                           ; $455f: $00
    add [hl]                                      ; $4560: $86
    add b                                         ; $4561: $80
    rst $18                                       ; $4562: $df
    sub [hl]                                      ; $4563: $96
    ld h, l                                       ; $4564: $65
    sbc [hl]                                      ; $4565: $9e
    ret nz                                        ; $4566: $c0

    ldh [$c0], a                                  ; $4567: $e0 $c0
    and b                                         ; $4569: $a0
    rrca                                          ; $456a: $0f
    dec [hl]                                      ; $456b: $35
    ld l, d                                       ; $456c: $6a
    dec [hl]                                      ; $456d: $35
    ld b, d                                       ; $456e: $42
    db $fd                                        ; $456f: $fd
    jr nz, jr_062_45f0                            ; $4570: $20 $7e

    push bc                                       ; $4572: $c5
    add b                                         ; $4573: $80
    rst $18                                       ; $4574: $df
    nop                                           ; $4575: $00
    db $e4                                        ; $4576: $e4
    cp a                                          ; $4577: $bf
    and b                                         ; $4578: $a0
    sbc [hl]                                      ; $4579: $9e
    ld b, h                                       ; $457a: $44
    inc a                                         ; $457b: $3c
    ld l, e                                       ; $457c: $6b
    ld [hl], c                                    ; $457d: $71
    rst $38                                       ; $457e: $ff
    ldh [$6d], a                                  ; $457f: $e0 $6d
    ld b, a                                       ; $4581: $47
    inc a                                         ; $4582: $3c
    ld b, h                                       ; $4583: $44
    sbc [hl]                                      ; $4584: $9e
    db $f4                                        ; $4585: $f4
    ld bc, $5f00                                  ; $4586: $01 $00 $5f
    nop                                           ; $4589: $00
    xor e                                         ; $458a: $ab
    sbc [hl]                                      ; $458b: $9e
    ret nz                                        ; $458c: $c0

    rst $00                                       ; $458d: $c7
    pop af                                        ; $458e: $f1
    sbc [hl]                                      ; $458f: $9e
    nop                                           ; $4590: $00
    push bc                                       ; $4591: $c5
    add b                                         ; $4592: $80
    rst $18                                       ; $4593: $df
    ld a, [hl]                                    ; $4594: $7e

jr_062_4595:
    add a                                         ; $4595: $87
    and c                                         ; $4596: $a1
    ld b, [hl]                                    ; $4597: $46
    ld b, l                                       ; $4598: $45
    xor [hl]                                      ; $4599: $ae
    jr nc, jr_062_45dc                            ; $459a: $30 $40

    push bc                                       ; $459c: $c5
    add d                                         ; $459d: $82
    db $e4                                        ; $459e: $e4
    nop                                           ; $459f: $00
    cp a                                          ; $45a0: $bf
    nop                                           ; $45a1: $00
    and [hl]                                      ; $45a2: $a6
    jp nc, $fbd3                                  ; $45a3: $d2 $d3 $fb

    ld b, d                                       ; $45a6: $42
    cp $01                                        ; $45a7: $fe $01
    nop                                           ; $45a9: $00
    inc b                                         ; $45aa: $04
    add [hl]                                      ; $45ab: $86
    add b                                         ; $45ac: $80
    rst $18                                       ; $45ad: $df
    nop                                           ; $45ae: $00
    and l                                         ; $45af: $a5
    ld a, d                                       ; $45b0: $7a

jr_062_45b1:
    dec h                                         ; $45b1: $25
    add l                                         ; $45b2: $85
    ld h, c                                       ; $45b3: $61
    dec a                                         ; $45b4: $3d
    ld bc, $8304                                  ; $45b5: $01 $04 $83
    jp Jump_000_004e                              ; $45b8: $c3 $4e $00


    nop                                           ; $45bb: $00
    or [hl]                                       ; $45bc: $b6
    ld a, [hl]                                    ; $45bd: $7e
    jp Jump_062_4138                              ; $45be: $c3 $38 $41


    ld b, l                                       ; $45c1: $45
    ld [hl+], a                                   ; $45c2: $22
    ld l, [hl]                                    ; $45c3: $6e
    ld h, d                                       ; $45c4: $62
    ld b, e                                       ; $45c5: $43
    ldh a, [rP1]                                  ; $45c6: $f0 $00
    or h                                          ; $45c8: $b4
    ld a, d                                       ; $45c9: $7a
    ld bc, $fe00                                  ; $45ca: $01 $00 $fe
    ld b, c                                       ; $45cd: $41
    cp d                                          ; $45ce: $ba
    ld b, c                                       ; $45cf: $41
    ld b, e                                       ; $45d0: $43
    inc bc                                        ; $45d1: $03
    add d                                         ; $45d2: $82
    ld hl, $f043                                  ; $45d3: $21 $43 $f0
    add b                                         ; $45d6: $80
    ld [hl], c                                    ; $45d7: $71
    scf                                           ; $45d8: $37
    dec h                                         ; $45d9: $25
    ld a, b                                       ; $45da: $78
    ld b, e                                       ; $45db: $43

jr_062_45dc:
    nop                                           ; $45dc: $00
    or a                                          ; $45dd: $b7
    ld b, c                                       ; $45de: $41
    ld b, e                                       ; $45df: $43
    ld bc, $a4ec                                  ; $45e0: $01 $ec $a4
    add b                                         ; $45e3: $80
    sbc $37                                       ; $45e4: $de $37
    jr z, jr_062_45b1                             ; $45e6: $28 $c9

    pop hl                                        ; $45e8: $e1
    ld b, l                                       ; $45e9: $45
    db $e4                                        ; $45ea: $e4
    add a                                         ; $45eb: $87
    and b                                         ; $45ec: $a0
    nop                                           ; $45ed: $00
    add d                                         ; $45ee: $82
    ld [hl+], a                                   ; $45ef: $22

jr_062_45f0:
    add b                                         ; $45f0: $80
    rst $18                                       ; $45f1: $df
    scf                                           ; $45f2: $37
    daa                                           ; $45f3: $27
    ld [hl], l                                    ; $45f4: $75
    add d                                         ; $45f5: $82
    ld b, l                                       ; $45f6: $45
    ld [c], a                                     ; $45f7: $e2
    dec b                                         ; $45f8: $05
    call nz, $bf00                                ; $45f9: $c4 $00 $bf
    dec a                                         ; $45fc: $3d
    add [hl]                                      ; $45fd: $86
    jr nc, jr_062_4595                            ; $45fe: $30 $95

    ld h, h                                       ; $4600: $64
    ld hl, sp+$41                                 ; $4601: $f8 $41
    ld sp, hl                                     ; $4603: $f9
    ld [c], a                                     ; $4604: $e2
    dec b                                         ; $4605: $05
    ld [hl+], a                                   ; $4606: $22
    jp c, $80db                                   ; $4607: $da $db $80

    rst $18                                       ; $460a: $df
    dec a                                         ; $460b: $3d
    add h                                         ; $460c: $84
    nop                                           ; $460d: $00
    rst $30                                       ; $460e: $f7
    inc h                                         ; $460f: $24
    ld sp, hl                                     ; $4610: $f9
    db $eb                                        ; $4611: $eb
    add b                                         ; $4612: $80
    rst $18                                       ; $4613: $df
    dec a                                         ; $4614: $3d
    add [hl]                                      ; $4615: $86
    ld a, l                                       ; $4616: $7d
    call nz, $ebf9                                ; $4617: $c4 $f9 $eb
    add b                                         ; $461a: $80
    rst $18                                       ; $461b: $df
    ld a, [$00ff]                                 ; $461c: $fa $ff $00
    add b                                         ; $461f: $80
    rst $18                                       ; $4620: $df
    ld a, [$80ff]                                 ; $4621: $fa $ff $80
    rst $18                                       ; $4624: $df
    ld a, [$80ff]                                 ; $4625: $fa $ff $80
    db $db                                        ; $4628: $db
    ld a, [$00ff]                                 ; $4629: $fa $ff $00
    ld e, c                                       ; $462c: $59
    ld a, [$00ff]                                 ; $462d: $fa $ff $00
    nop                                           ; $4630: $00
    ld e, e                                       ; $4631: $5b
    ld a, [$80ff]                                 ; $4632: $fa $ff $80
    rst $18                                       ; $4635: $df
    ld a, [$80ff]                                 ; $4636: $fa $ff $80
    rst $18                                       ; $4639: $df
    ld a, [$80ff]                                 ; $463a: $fa $ff $80
    rst $18                                       ; $463d: $df
    ld a, [$00ff]                                 ; $463e: $fa $ff $00
    ld e, e                                       ; $4641: $5b
    rst $38                                       ; $4642: $ff
    ld a, [$00fb]                                 ; $4643: $fa $fb $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    pop bc                                        ; $4648: $c1
    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    rst $38                                       ; $464b: $ff
    rst $38                                       ; $464c: $ff
    rst $38                                       ; $464d: $ff
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    rst $38                                       ; $4650: $ff
    rst $38                                       ; $4651: $ff
    rst $38                                       ; $4652: $ff
    rst $38                                       ; $4653: $ff
    nop                                           ; $4654: $00
    nop                                           ; $4655: $00
    ld bc, $fe80                                  ; $4656: $01 $80 $fe
    ldh [rIE], a                                  ; $4659: $e0 $ff
    rst $38                                       ; $465b: $ff
    rst $38                                       ; $465c: $ff
    rst $38                                       ; $465d: $ff
    rst $38                                       ; $465e: $ff
    add sp, $00                                   ; $465f: $e8 $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    ld [bc], a                                    ; $4663: $02
    nop                                           ; $4664: $00
    dec e                                         ; $4665: $1d
    ld de, $0102                                  ; $4666: $11 $02 $01
    inc e                                         ; $4669: $1c
    ld [de], a                                    ; $466a: $12
    ld [bc], a                                    ; $466b: $02
    ld [bc], a                                    ; $466c: $02
    ld hl, $0212                                  ; $466d: $21 $12 $02
    inc bc                                        ; $4670: $03
    add hl, de                                    ; $4671: $19
    inc de                                        ; $4672: $13
    ld [bc], a                                    ; $4673: $02
    inc b                                         ; $4674: $04
    inc hl                                        ; $4675: $23
    inc de                                        ; $4676: $13
    ld [bc], a                                    ; $4677: $02
    dec b                                         ; $4678: $05
    ld d, $15                                     ; $4679: $16 $15

Jump_062_467b:
    ld [bc], a                                    ; $467b: $02
    ld b, $25                                     ; $467c: $06 $25
    dec d                                         ; $467e: $15
    ld [bc], a                                    ; $467f: $02
    rlca                                          ; $4680: $07
    rla                                           ; $4681: $17
    ld d, $02                                     ; $4682: $16 $02
    ld [$1716], sp                                ; $4684: $08 $16 $17
    ld [bc], a                                    ; $4687: $02
    add hl, bc                                    ; $4688: $09
    jr jr_062_46a3                                ; $4689: $18 $18

    ld [bc], a                                    ; $468b: $02
    ld a, [bc]                                    ; $468c: $0a
    inc h                                         ; $468d: $24
    jr jr_062_4692                                ; $468e: $18 $02

    dec bc                                        ; $4690: $0b
    inc e                                         ; $4691: $1c

jr_062_4692:
    ld a, [de]                                    ; $4692: $1a
    ld [bc], a                                    ; $4693: $02
    inc c                                         ; $4694: $0c
    inc hl                                        ; $4695: $23
    ld a, [de]                                    ; $4696: $1a
    ld [bc], a                                    ; $4697: $02
    dec c                                         ; $4698: $0d
    ld [hl+], a                                   ; $4699: $22
    dec de                                        ; $469a: $1b
    ld [bc], a                                    ; $469b: $02
    ld c, $24                                     ; $469c: $0e $24
    dec de                                        ; $469e: $1b
    ld [bc], a                                    ; $469f: $02
    rrca                                          ; $46a0: $0f
    inc hl                                        ; $46a1: $23
    inc e                                         ; $46a2: $1c

jr_062_46a3:
    ld [bc], a                                    ; $46a3: $02
    db $10                                        ; $46a4: $10
    ld hl, $021d                                  ; $46a5: $21 $1d $02
    ld de, $1d25                                  ; $46a8: $11 $25 $1d
    ld [bc], a                                    ; $46ab: $02
    ld [de], a                                    ; $46ac: $12
    inc h                                         ; $46ad: $24
    ld e, $02                                     ; $46ae: $1e $02
    inc de                                        ; $46b0: $13
    ld [hl+], a                                   ; $46b1: $22
    rra                                           ; $46b2: $1f
    ld [bc], a                                    ; $46b3: $02
    inc d                                         ; $46b4: $14
    ld h, $1f                                     ; $46b5: $26 $1f
    ld [bc], a                                    ; $46b7: $02
    dec d                                         ; $46b8: $15
    ld a, [de]                                    ; $46b9: $1a
    ld hl, $1602                                  ; $46ba: $21 $02 $16
    inc hl                                        ; $46bd: $23
    ld hl, $1702                                  ; $46be: $21 $02 $17
    dec de                                        ; $46c1: $1b
    ld [hl+], a                                   ; $46c2: $22
    ld [bc], a                                    ; $46c3: $02
    jr @+$24                                      ; $46c4: $18 $22

    inc hl                                        ; $46c6: $23
    ld [bc], a                                    ; $46c7: $02
    add hl, de                                    ; $46c8: $19
    ld a, [de]                                    ; $46c9: $1a
    dec h                                         ; $46ca: $25
    ld [bc], a                                    ; $46cb: $02
    ld a, [de]                                    ; $46cc: $1a
    inc h                                         ; $46cd: $24
    daa                                           ; $46ce: $27
    ld [bc], a                                    ; $46cf: $02
    dec de                                        ; $46d0: $1b
    dec e                                         ; $46d1: $1d
    inc l                                         ; $46d2: $2c
    ld [bc], a                                    ; $46d3: $02
    inc e                                         ; $46d4: $1c
    rra                                           ; $46d5: $1f
    dec l                                         ; $46d6: $2d
    ld [bc], a                                    ; $46d7: $02
    dec e                                         ; $46d8: $1d
    ld e, $2e                                     ; $46d9: $1e $2e
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    and $46                                       ; $46de: $e6 $46
    sbc $4a                                       ; $46e0: $de $4a
    rst $10                                       ; $46e2: $d7
    ld c, a                                       ; $46e3: $4f
    ld a, [c]                                     ; $46e4: $f2
    ld c, a                                       ; $46e5: $4f
    cp a                                          ; $46e6: $bf
    ld c, $0e                                     ; $46e7: $0e $0e
    dec c                                         ; $46e9: $0d
    dec c                                         ; $46ea: $0d
    dec c                                         ; $46eb: $0d
    ld c, $fa                                     ; $46ec: $0e $fa
    db $ed                                        ; $46ee: $ed
    ld c, l                                       ; $46ef: $4d
    ld de, $e84d                                  ; $46f0: $11 $4d $e8
    pop hl                                        ; $46f3: $e1
    db $fc                                        ; $46f4: $fc
    rst $28                                       ; $46f5: $ef
    add sp, -$1d                                  ; $46f6: $e8 $e3
    dec l                                         ; $46f8: $2d
    ret nc                                        ; $46f9: $d0

    add sp, -$3b                                  ; $46fa: $e8 $c5
    ldh [$fd], a                                  ; $46fc: $e0 $fd
    rst $28                                       ; $46fe: $ef
    add b                                         ; $46ff: $80

Jump_062_4700:
    ld [$bce6], a                                 ; $4700: $ea $e6 $bc
    push hl                                       ; $4703: $e5
    jp c, $c2e9                                   ; $4704: $da $e9 $c2

    pop hl                                        ; $4707: $e1
    db $fd                                        ; $4708: $fd
    db $fc                                        ; $4709: $fc
    add d                                         ; $470a: $82
    and $76                                       ; $470b: $e6 $76
    pop hl                                        ; $470d: $e1
    ld c, l                                       ; $470e: $4d
    dec de                                        ; $470f: $1b
    ld c, l                                       ; $4710: $4d
    dec l                                         ; $4711: $2d
    halt                                          ; $4712: $76
    add sp, $2d                                   ; $4713: $e8 $2d
    dec l                                         ; $4715: $2d
    ret nz                                        ; $4716: $c0

    db $eb                                        ; $4717: $eb
    ld b, e                                       ; $4718: $43
    ldh a, [$6c]                                  ; $4719: $f0 $6c
    ld [c], a                                     ; $471b: $e2
    ld a, [hl]                                    ; $471c: $7e
    ret nz                                        ; $471d: $c0

    db $e4                                        ; $471e: $e4
    ld l, l                                       ; $471f: $6d
    ld l, e                                       ; $4720: $6b
    ld l, e                                       ; $4721: $6b
    dec hl                                        ; $4722: $2b
    ld l, e                                       ; $4723: $6b
    ld c, l                                       ; $4724: $4d
    ld c, a                                       ; $4725: $4f
    ldh [$e0], a                                  ; $4726: $e0 $e0
    ld d, [hl]                                    ; $4728: $56
    push hl                                       ; $4729: $e5
    sub $ef                                       ; $472a: $d6 $ef
    add e                                         ; $472c: $83
    xor $04                                       ; $472d: $ee $04
    ld [c], a                                     ; $472f: $e2
    cp $e2                                        ; $4730: $fe $e2
    ld l, l                                       ; $4732: $6d
    dec c                                         ; $4733: $0d
    ld l, e                                       ; $4734: $6b
    add [hl]                                      ; $4735: $86
    rst $38                                       ; $4736: $ff
    ld [c], a                                     ; $4737: $e2
    ld c, l                                       ; $4738: $4d
    dec l                                         ; $4739: $2d
    ld a, h                                       ; $473a: $7c
    ldh [rP1], a                                  ; $473b: $e0 $00
    push hl                                       ; $473d: $e5
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    call nz, $6dc5                                ; $4740: $c4 $c5 $6d
    add hl, bc                                    ; $4743: $09
    ld l, e                                       ; $4744: $6b
    ret nz                                        ; $4745: $c0

    ldh [$bd], a                                  ; $4746: $e0 $bd
    db $e3                                        ; $4748: $e3
    dec c                                         ; $4749: $0d
    cp a                                          ; $474a: $bf
    pop hl                                        ; $474b: $e1
    call nc, $80f5                                ; $474c: $d4 $f5 $80
    jp z, $e482                                   ; $474f: $ca $82 $e4

    ld [de], a                                    ; $4752: $12
    ld l, b                                       ; $4753: $68
    ret nz                                        ; $4754: $c0

    ld c, l                                       ; $4755: $4d
    add $e3                                       ; $4756: $c6 $e3
    cp [hl]                                       ; $4758: $be
    ld [c], a                                     ; $4759: $e2
    dec c                                         ; $475a: $0d
    dec sp                                        ; $475b: $3b
    ldh [$7e], a                                  ; $475c: $e0 $7e
    db $e4                                        ; $475e: $e4
    ld d, b                                       ; $475f: $50
    srl b                                         ; $4760: $cb $38
    add [hl]                                      ; $4762: $86
    call $c246                                    ; $4763: $cd $46 $c2
    db $fd                                        ; $4766: $fd
    db $e3                                        ; $4767: $e3
    ld c, l                                       ; $4768: $4d
    dec c                                         ; $4769: $0d
    dec bc                                        ; $476a: $0b
    rst $38                                       ; $476b: $ff
    pop hl                                        ; $476c: $e1
    ld a, e                                       ; $476d: $7b
    ldh [$1f], a                                  ; $476e: $e0 $1f
    dec bc                                        ; $4770: $0b
    dec c                                         ; $4771: $0d
    dec bc                                        ; $4772: $0b
    ld l, e                                       ; $4773: $6b
    dec bc                                        ; $4774: $0b
    ld a, [$63c1]                                 ; $4775: $fa $c1 $63
    jp z, $f303                                   ; $4778: $ca $03 $f3

    db $fc                                        ; $477b: $fc
    adc a                                         ; $477c: $8f
    ret nz                                        ; $477d: $c0

    add l                                         ; $477e: $85
    call nz, Call_000_0d0d                        ; $477f: $c4 $0d $0d
    ld c, e                                       ; $4782: $4b
    ld c, e                                       ; $4783: $4b
    dec c                                         ; $4784: $0d
    ld c, e                                       ; $4785: $4b
    daa                                           ; $4786: $27
    dec hl                                        ; $4787: $2b
    dec bc                                        ; $4788: $0b
    dec bc                                        ; $4789: $0b
    ld sp, hl                                     ; $478a: $f9
    ldh [$ba], a                                  ; $478b: $e0 $ba
    ldh [$0b], a                                  ; $478d: $e0 $0b
    cp d                                          ; $478f: $ba
    call nz, $cb0d                                ; $4790: $c4 $0d $cb
    sbc b                                         ; $4793: $98
    jp $80af                                      ; $4794: $c3 $af $80


    db $e3                                        ; $4797: $e3
    cp l                                          ; $4798: $bd
    and b                                         ; $4799: $a0
    ld l, l                                       ; $479a: $6d
    ld c, e                                       ; $479b: $4b
    ret nz                                        ; $479c: $c0

    ldh [$c1], a                                  ; $479d: $e0 $c1
    ldh [$2b], a                                  ; $479f: $e0 $2b
    scf                                           ; $47a1: $37
    ld a, [bc]                                    ; $47a2: $0a
    dec bc                                        ; $47a3: $0b
    ld c, e                                       ; $47a4: $4b
    ld hl, sp-$40                                 ; $47a5: $f8 $c0
    dec bc                                        ; $47a7: $0b
    ld l, l                                       ; $47a8: $6d
    ld c, $e8                                     ; $47a9: $0e $e8
    add b                                         ; $47ab: $80
    ret c                                         ; $47ac: $d8

    ld l, $08                                     ; $47ad: $2e $08
    jp $0b6d                                      ; $47af: $c3 $6d $0b


    dec bc                                        ; $47b2: $0b
    add c                                         ; $47b3: $81
    ldh [rWX], a                                  ; $47b4: $e0 $4b
    add c                                         ; $47b6: $81
    ld [c], a                                     ; $47b7: $e2
    ret nz                                        ; $47b8: $c0

    ldh [$92], a                                  ; $47b9: $e0 $92
    or a                                          ; $47bb: $b7
    pop bc                                        ; $47bc: $c1
    ld l, l                                       ; $47bd: $6d
    ld a, [hl]                                    ; $47be: $7e
    and a                                         ; $47bf: $a7
    add b                                         ; $47c0: $80
    sbc $6d                                       ; $47c1: $de $6d
    rrca                                          ; $47c3: $0f
    ldh [$c0], a                                  ; $47c4: $e0 $c0
    push hl                                       ; $47c6: $e5
    ld a, [bc]                                    ; $47c7: $0a
    nop                                           ; $47c8: $00
    ret nz                                        ; $47c9: $c0

    ld [c], a                                     ; $47ca: $e2
    inc sp                                        ; $47cb: $33
    ret nz                                        ; $47cc: $c0

    call z, $80aa                                 ; $47cd: $cc $aa $80
    sub $04                                       ; $47d0: $d6 $04
    and d                                         ; $47d2: $a2
    adc $c0                                       ; $47d3: $ce $c0
    add hl, bc                                    ; $47d5: $09
    ldh [$80], a                                  ; $47d6: $e0 $80
    pop hl                                        ; $47d8: $e1
    rrca                                          ; $47d9: $0f
    ld c, e                                       ; $47da: $4b
    ld l, e                                       ; $47db: $6b
    ld a, [bc]                                    ; $47dc: $0a
    ld a, [hl+]                                   ; $47dd: $2a
    ld hl, sp-$40                                 ; $47de: $f8 $c0
    add d                                         ; $47e0: $82
    jp hl                                         ; $47e1: $e9


    add b                                         ; $47e2: $80
    ret c                                         ; $47e3: $d8

    jp nz, Jump_000_00e2                          ; $47e4: $c2 $e2 $00

    ret c                                         ; $47e7: $d8

    add b                                         ; $47e8: $80
    adc [hl]                                      ; $47e9: $8e
    ret nz                                        ; $47ea: $c0

    ld [bc], a                                    ; $47eb: $02
    pop hl                                        ; $47ec: $e1
    ret nz                                        ; $47ed: $c0

    pop hl                                        ; $47ee: $e1
    rst $30                                       ; $47ef: $f7
    ld [c], a                                     ; $47f0: $e2
    ld b, h                                       ; $47f1: $44
    ld [c], a                                     ; $47f2: $e2
    add b                                         ; $47f3: $80
    rst $18                                       ; $47f4: $df
    ret nz                                        ; $47f5: $c0

    db $e3                                        ; $47f6: $e3
    ld a, [bc]                                    ; $47f7: $0a
    add b                                         ; $47f8: $80
    add b                                         ; $47f9: $80
    dec l                                         ; $47fa: $2d
    add c                                         ; $47fb: $81
    ld [c], a                                     ; $47fc: $e2
    dec c                                         ; $47fd: $0d

Jump_062_47fe:
    ret nz                                        ; $47fe: $c0

    jp nz, $c079                                  ; $47ff: $c2 $79 $c0

    add d                                         ; $4802: $82
    and e                                         ; $4803: $a3
    db $ec                                        ; $4804: $ec
    add h                                         ; $4805: $84
    inc h                                         ; $4806: $24
    add b                                         ; $4807: $80
    sbc $c4                                       ; $4808: $de $c4
    and c                                         ; $480a: $a1
    dec l                                         ; $480b: $2d
    call z, $80c0                                 ; $480c: $cc $c0 $80
    jp Jump_000_396b                              ; $480f: $c3 $6b $39


    ret nz                                        ; $4812: $c0

    add d                                         ; $4813: $82
    and a                                         ; $4814: $a7
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    cp a                                          ; $4817: $bf
    ld a, [hl]                                    ; $4818: $7e
    and $42                                       ; $4819: $e6 $42
    pop hl                                        ; $481b: $e1
    cp [hl]                                       ; $481c: $be
    and b                                         ; $481d: $a0
    ld a, [hl-]                                   ; $481e: $3a
    pop bc                                        ; $481f: $c1
    jp Jump_000_00a0                              ; $4820: $c3 $a0 $00


    cp a                                          ; $4823: $bf
    ld [hl], a                                    ; $4824: $77
    xor h                                         ; $4825: $ac
    dec hl                                        ; $4826: $2b
    dec c                                         ; $4827: $0d
    dec l                                         ; $4828: $2d
    ret nz                                        ; $4829: $c0

    db $e3                                        ; $482a: $e3
    dec hl                                        ; $482b: $2b
    ld a, [hl-]                                   ; $482c: $3a
    ldh [$0b], a                                  ; $482d: $e0 $0b
    ld a, [hl]                                    ; $482f: $7e
    add sp, $00                                   ; $4830: $e8 $00
    cp a                                          ; $4832: $bf
    jr jr_062_48b3                                ; $4833: $18 $7e

    add l                                         ; $4835: $85
    jp nz, $f8a2                                  ; $4836: $c2 $a2 $f8

    and d                                         ; $4839: $a2
    dec c                                         ; $483a: $0d
    ld l, e                                       ; $483b: $6b
    dec a                                         ; $483c: $3d
    ld [c], a                                     ; $483d: $e2
    nop                                           ; $483e: $00
    add d                                         ; $483f: $82
    add b                                         ; $4840: $80
    rst $18                                       ; $4841: $df
    ld [bc], a                                    ; $4842: $02
    xor d                                         ; $4843: $aa
    add h                                         ; $4844: $84
    ld c, l                                       ; $4845: $4d
    ld b, d                                       ; $4846: $42
    and b                                         ; $4847: $a0
    cp $82                                        ; $4848: $fe $82
    cp c                                          ; $484a: $b9
    ret nz                                        ; $484b: $c0

    ld [hl], $a0                                  ; $484c: $36 $a0
    cp d                                          ; $484e: $ba
    ld h, c                                       ; $484f: $61
    add b                                         ; $4850: $80
    ld a, [hl]                                    ; $4851: $7e
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    and d                                         ; $4854: $a2
    nop                                           ; $4855: $00
    add h                                         ; $4856: $84
    ld [bc], a                                    ; $4857: $02
    add c                                         ; $4858: $81
    cp l                                          ; $4859: $bd
    ld [c], a                                     ; $485a: $e2
    ld [hl], a                                    ; $485b: $77
    and d                                         ; $485c: $a2
    ret nz                                        ; $485d: $c0

    and d                                         ; $485e: $a2
    add sp, $41                                   ; $485f: $e8 $41
    add b                                         ; $4861: $80
    ld a, a                                       ; $4862: $7f
    ld [bc], a                                    ; $4863: $02
    ld b, $63                                     ; $4864: $06 $63
    ld l, l                                       ; $4866: $6d
    jp $c080                                      ; $4867: $c3 $80 $c0


    pop hl                                        ; $486a: $e1
    inc a                                         ; $486b: $3c
    and c                                         ; $486c: $a1
    or [hl]                                       ; $486d: $b6
    add c                                         ; $486e: $81
    add b                                         ; $486f: $80
    and a                                         ; $4870: $a7
    dec a                                         ; $4871: $3d
    adc d                                         ; $4872: $8a
    ld a, [bc]                                    ; $4873: $0a
    ld a, [hl]                                    ; $4874: $7e
    ld [hl], l                                    ; $4875: $75
    ld l, l                                       ; $4876: $6d
    ld bc, $6ba1                                  ; $4877: $01 $a1 $6b
    ld a, e                                       ; $487a: $7b
    and h                                         ; $487b: $a4
    db $fd                                        ; $487c: $fd
    and h                                         ; $487d: $a4
    ld a, [hl]                                    ; $487e: $7e
    ld b, h                                       ; $487f: $44
    ld a, d                                       ; $4880: $7a
    rst $18                                       ; $4881: $df
    inc b                                         ; $4882: $04
    ld d, [hl]                                    ; $4883: $56
    ld b, b                                       ; $4884: $40
    inc c                                         ; $4885: $0c
    ld [c], a                                     ; $4886: $e2
    dec hl                                        ; $4887: $2b
    cp h                                          ; $4888: $bc
    pop hl                                        ; $4889: $e1
    cp a                                          ; $488a: $bf
    db $e3                                        ; $488b: $e3
    add b                                         ; $488c: $80
    ret z                                         ; $488d: $c8

    ret nz                                        ; $488e: $c0

    db $eb                                        ; $488f: $eb
    jp Jump_062_5850                              ; $4890: $c3 $50 $58


    db $ec                                        ; $4893: $ec
    ld hl, $e20c                                  ; $4894: $21 $0c $e2
    ret nz                                        ; $4897: $c0

    pop hl                                        ; $4898: $e1
    ld a, [bc]                                    ; $4899: $0a
    ld l, d                                       ; $489a: $6a
    cp [hl]                                       ; $489b: $be
    ldh [$0d], a                                  ; $489c: $e0 $0d
    cp l                                          ; $489e: $bd
    and c                                         ; $489f: $a1
    ret nz                                        ; $48a0: $c0

    ld a, [hl]                                    ; $48a1: $7e
    xor c                                         ; $48a2: $a9
    nop                                           ; $48a3: $00
    ld e, d                                       ; $48a4: $5a
    dec a                                         ; $48a5: $3d
    ld b, c                                       ; $48a6: $41
    ld [bc], a                                    ; $48a7: $02
    ret nz                                        ; $48a8: $c0

    nop                                           ; $48a9: $00
    ldh [$83], a                                  ; $48aa: $e0 $83
    ldh [$0a], a                                  ; $48ac: $e0 $0a
    ld a, [hl+]                                   ; $48ae: $2a
    nop                                           ; $48af: $00
    ld a, d                                       ; $48b0: $7a
    ldh [$33], a                                  ; $48b1: $e0 $33

jr_062_48b3:
    add b                                         ; $48b3: $80
    jr c, @+$42                                   ; $48b4: $38 $40

    inc hl                                        ; $48b6: $23
    ld b, l                                       ; $48b7: $45
    ld bc, $825d                                  ; $48b8: $01 $5d $82
    ld hl, $e0bf                                  ; $48bb: $21 $bf $e0
    ld bc, $0fa0                                  ; $48be: $01 $a0 $0f
    ld l, e                                       ; $48c1: $6b
    ld l, e                                       ; $48c2: $6b
    ld a, [bc]                                    ; $48c3: $0a
    ld l, d                                       ; $48c4: $6a
    ei                                            ; $48c5: $fb
    and l                                         ; $48c6: $a5
    ld a, [hl-]                                   ; $48c7: $3a
    and b                                         ; $48c8: $a0
    rra                                           ; $48c9: $1f
    ret z                                         ; $48ca: $c8

    nop                                           ; $48cb: $00
    ld e, h                                       ; $48cc: $5c
    ld b, $7e                                     ; $48cd: $06 $7e
    db $e4                                        ; $48cf: $e4
    dec hl                                        ; $48d0: $2b
    ld a, [bc]                                    ; $48d1: $0a
    add c                                         ; $48d2: $81
    ldh [$f9], a                                  ; $48d3: $e0 $f9
    ld b, d                                       ; $48d5: $42
    ld [hl], e                                    ; $48d6: $73
    add c                                         ; $48d7: $81
    add l                                         ; $48d8: $85
    ld [hl+], a                                   ; $48d9: $22
    cp a                                          ; $48da: $bf
    ld hl, $0030                                  ; $48db: $21 $30 $00
    cp a                                          ; $48de: $bf
    add sp, $01                                   ; $48df: $e8 $01
    pop bc                                        ; $48e1: $c1
    db $e3                                        ; $48e2: $e3
    cp e                                          ; $48e3: $bb
    ld b, d                                       ; $48e4: $42
    dec bc                                        ; $48e5: $0b

jr_062_48e6:
    dec hl                                        ; $48e6: $2b
    ret nz                                        ; $48e7: $c0

    ld [c], a                                     ; $48e8: $e2
    ld a, [hl]                                    ; $48e9: $7e
    inc hl                                        ; $48ea: $23
    nop                                           ; $48eb: $00
    add d                                         ; $48ec: $82
    rst $18                                       ; $48ed: $df
    ld a, h                                       ; $48ee: $7c
    add h                                         ; $48ef: $84
    add c                                         ; $48f0: $81
    pop hl                                        ; $48f1: $e1
    add d                                         ; $48f2: $82
    db $e3                                        ; $48f3: $e3
    ret nz                                        ; $48f4: $c0

    ldh [$f2], a                                  ; $48f5: $e0 $f2
    ld b, b                                       ; $48f7: $40
    add $f2                                       ; $48f8: $c6 $f2
    add [hl]                                      ; $48fa: $86
    dec d                                         ; $48fb: $15
    nop                                           ; $48fc: $00
    rst $38                                       ; $48fd: $ff
    add d                                         ; $48fe: $82
    ld b, h                                       ; $48ff: $44
    ld h, b                                       ; $4900: $60
    add b                                         ; $4901: $80
    db $e4                                        ; $4902: $e4
    cp l                                          ; $4903: $bd
    and d                                         ; $4904: $a2
    ld a, [hl]                                    ; $4905: $7e
    inc b                                         ; $4906: $04
    add b                                         ; $4907: $80
    ld a, b                                       ; $4908: $78
    cp h                                          ; $4909: $bc
    ld c, d                                       ; $490a: $4a
    ret nz                                        ; $490b: $c0

    pop hl                                        ; $490c: $e1
    ld [bc], a                                    ; $490d: $02
    cp l                                          ; $490e: $bd
    add d                                         ; $490f: $82
    dec hl                                        ; $4910: $2b
    ld a, d                                       ; $4911: $7a
    add d                                         ; $4912: $82
    cp $41                                        ; $4913: $fe $41
    call nz, $865c                                ; $4915: $c4 $5c $86
    ld b, $88                                     ; $4918: $06 $88
    nop                                           ; $491a: $00
    ld a, [hl]                                    ; $491b: $7e
    and c                                         ; $491c: $a1
    ld bc, $816b                                  ; $491d: $01 $6b $81
    push hl                                       ; $4920: $e5
    inc a                                         ; $4921: $3c
    ld h, e                                       ; $4922: $63
    ld a, e                                       ; $4923: $7b
    ld h, c                                       ; $4924: $61
    nop                                           ; $4925: $00
    cp h                                          ; $4926: $bc
    add b                                         ; $4927: $80
    ld b, h                                       ; $4928: $44
    call Call_062_4082                            ; $4929: $cd $82 $40
    add e                                         ; $492c: $83
    nop                                           ; $492d: $00
    add d                                         ; $492e: $82
    jp nz, Jump_062_613c                          ; $492f: $c2 $3c $61

    and $24                                       ; $4932: $e6 $24
    and e                                         ; $4934: $a3
    ld [bc], a                                    ; $4935: $02
    add b                                         ; $4936: $80
    ld de, $a524                                  ; $4937: $11 $24 $a5
    call nz, Call_062_4281                        ; $493a: $c4 $81 $42
    ld h, h                                       ; $493d: $64
    nop                                           ; $493e: $00
    jp nz, Jump_062_7c42                          ; $493f: $c2 $42 $7c

    jr nz, jr_062_4983                            ; $4942: $20 $3f

    and d                                         ; $4944: $a2
    inc hl                                        ; $4945: $23
    ld h, d                                       ; $4946: $62
    nop                                           ; $4947: $00
    ld hl, $98c8                                  ; $4948: $21 $c8 $98
    add h                                         ; $494b: $84
    add e                                         ; $494c: $83
    adc a                                         ; $494d: $8f
    and d                                         ; $494e: $a2
    inc c                                         ; $494f: $0c
    ld a, [$82e1]                                 ; $4950: $fa $e1 $82
    ld b, d                                       ; $4953: $42
    dec hl                                        ; $4954: $2b
    dec hl                                        ; $4955: $2b
    ld b, d                                       ; $4956: $42
    pop bc                                        ; $4957: $c1
    nop                                           ; $4958: $00
    ld hl, $44b9                                  ; $4959: $21 $b9 $44
    nop                                           ; $495c: $00
    ld e, b                                       ; $495d: $58
    jr nc, jr_062_48e6                            ; $495e: $30 $86

    ld h, h                                       ; $4960: $64
    adc $62                                       ; $4961: $ce $62
    ld c, c                                       ; $4963: $49
    and b                                         ; $4964: $a0
    dec b                                         ; $4965: $05
    jp nz, Jump_000_2b2b                          ; $4966: $c2 $2b $2b

    cp h                                          ; $4969: $bc
    add c                                         ; $496a: $81
    cp [hl]                                       ; $496b: $be
    add e                                         ; $496c: $83
    nop                                           ; $496d: $00
    cp l                                          ; $496e: $bd
    push bc                                       ; $496f: $c5
    add b                                         ; $4970: $80
    dec d                                         ; $4971: $15
    add d                                         ; $4972: $82
    ld b, h                                       ; $4973: $44
    add e                                         ; $4974: $83
    ld b, d                                       ; $4975: $42
    ret nz                                        ; $4976: $c0

    and $f9                                       ; $4977: $e6 $f9

jr_062_4979:
    ld h, d                                       ; $4979: $62
    ld b, b                                       ; $497a: $40
    inc hl                                        ; $497b: $23
    ld b, l                                       ; $497c: $45
    inc a                                         ; $497d: $3c
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    call nz, $81c2                                ; $4980: $c4 $c2 $81

jr_062_4983:
    jp $8001                                      ; $4983: $c3 $01 $80


    ld b, e                                       ; $4986: $43
    add b                                         ; $4987: $80
    add d                                         ; $4988: $82
    ld b, b                                       ; $4989: $40
    inc h                                         ; $498a: $24
    nop                                           ; $498b: $00
    ld e, c                                       ; $498c: $59
    ld [hl], b                                    ; $498d: $70
    daa                                           ; $498e: $27
    ld [bc], a                                    ; $498f: $02
    ld b, l                                       ; $4990: $45
    inc bc                                        ; $4991: $03
    dec c                                         ; $4992: $0d
    ld b, d                                       ; $4993: $42
    pop bc                                        ; $4994: $c1
    ld a, l                                       ; $4995: $7d
    ld h, e                                       ; $4996: $63
    add d                                         ; $4997: $82
    push hl                                       ; $4998: $e5
    sub $92                                       ; $4999: $d6 $92
    or d                                          ; $499b: $b2
    dec hl                                        ; $499c: $2b
    ld a, [hl]                                    ; $499d: $7e
    and e                                         ; $499e: $a3
    nop                                           ; $499f: $00
    ld b, e                                       ; $49a0: $43
    inc hl                                        ; $49a1: $23
    pop bc                                        ; $49a2: $c1
    ldh [$86], a                                  ; $49a3: $e0 $86
    ldh [$f3], a                                  ; $49a5: $e0 $f3
    ld b, e                                       ; $49a7: $43
    nop                                           ; $49a8: $00
    ld e, a                                       ; $49a9: $5f
    ld l, d                                       ; $49aa: $6a
    add hl, hl                                    ; $49ab: $29
    ld b, h                                       ; $49ac: $44
    ld [bc], a                                    ; $49ad: $02
    adc c                                         ; $49ae: $89
    and b                                         ; $49af: $a0
    nop                                           ; $49b0: $00
    ld b, [hl]                                    ; $49b1: $46
    db $e3                                        ; $49b2: $e3
    adc b                                         ; $49b3: $88
    db $e3                                        ; $49b4: $e3
    ld c, b                                       ; $49b5: $48
    db $d3                                        ; $49b6: $d3
    add [hl]                                      ; $49b7: $86
    dec bc                                        ; $49b8: $0b
    sbc [hl]                                      ; $49b9: $9e
    inc b                                         ; $49ba: $04
    rst $38                                       ; $49bb: $ff
    jp nz, Jump_062_4202                          ; $49bc: $c2 $02 $42

    ld b, a                                       ; $49bf: $47
    ld b, e                                       ; $49c0: $43
    nop                                           ; $49c1: $00
    add sp, -$7e                                  ; $49c2: $e8 $82
    ld h, [hl]                                    ; $49c4: $66
    ld b, [hl]                                    ; $49c5: $46
    add b                                         ; $49c6: $80

jr_062_49c7:
    pop de                                        ; $49c7: $d1
    rst $20                                       ; $49c8: $e7
    ld l, d                                       ; $49c9: $6a
    jp Jump_062_4123                              ; $49ca: $c3 $23 $41


    pop hl                                        ; $49cd: $e1
    ret nz                                        ; $49ce: $c0

    push hl                                       ; $49cf: $e5
    ld e, l                                       ; $49d0: $5d
    call z, $8600                                 ; $49d1: $cc $00 $86
    inc d                                         ; $49d4: $14
    add d                                         ; $49d5: $82
    adc b                                         ; $49d6: $88
    add e                                         ; $49d7: $83
    inc hl                                        ; $49d8: $23
    jp $8741                                      ; $49d9: $c3 $41 $87


    and l                                         ; $49dc: $a5
    ld h, [hl]                                    ; $49dd: $66
    add l                                         ; $49de: $85
    add b                                         ; $49df: $80
    ret c                                         ; $49e0: $d8

    ld l, d                                       ; $49e1: $6a
    rst $00                                       ; $49e2: $c7
    ld bc, $026d                                  ; $49e3: $01 $6d $02
    pop hl                                        ; $49e6: $e1
    add e                                         ; $49e7: $83
    jp Jump_062_42c6                              ; $49e8: $c3 $c6 $42


    dec c                                         ; $49eb: $0d
    ld [hl], $86                                  ; $49ec: $36 $86
    ld [hl], d                                    ; $49ee: $72
    add h                                         ; $49ef: $84
    add c                                         ; $49f0: $81
    inc b                                         ; $49f1: $04
    and e                                         ; $49f2: $a3
    jr nc, jr_062_4979                            ; $49f3: $30 $84

    ld hl, $4186                                  ; $49f5: $21 $86 $41
    ld [$ec5f], sp                                ; $49f8: $08 $5f $ec
    ld c, b                                       ; $49fb: $48
    ld l, l                                       ; $49fc: $6d
    ld l, e                                       ; $49fd: $6b
    ld c, c                                       ; $49fe: $49
    ret nz                                        ; $49ff: $c0

    dec bc                                        ; $4a00: $0b
    and b                                         ; $4a01: $a0
    jr nz, jr_062_49c7                            ; $4a02: $20 $c3

    ld [hl+], a                                   ; $4a04: $22
    add $83                                       ; $4a05: $c6 $83
    ld [$804f], sp                                ; $4a07: $08 $4f $80
    rst $08                                       ; $4a0a: $cf
    add d                                         ; $4a0b: $82
    add [hl]                                      ; $4a0c: $86
    ld l, e                                       ; $4a0d: $6b
    rst $38                                       ; $4a0e: $ff
    ldh [$84], a                                  ; $4a0f: $e0 $84
    dec h                                         ; $4a11: $25
    nop                                           ; $4a12: $00
    ld a, [hl-]                                   ; $4a13: $3a
    add b                                         ; $4a14: $80
    rlca                                          ; $4a15: $07
    add e                                         ; $4a16: $83
    add [hl]                                      ; $4a17: $86
    dec c                                         ; $4a18: $0d
    add b                                         ; $4a19: $80
    push de                                       ; $4a1a: $d5
    jp c, $c060                                   ; $4a1b: $da $60 $c0

    pop hl                                        ; $4a1e: $e1
    adc c                                         ; $4a1f: $89
    jr nz, jr_062_4a66                            ; $4a20: $20 $44

    inc b                                         ; $4a22: $04
    nop                                           ; $4a23: $00
    ld [$86a2], sp                                ; $4a24: $08 $a2 $86
    rra                                           ; $4a27: $1f
    add [hl]                                      ; $4a28: $86
    ld b, $88                                     ; $4a29: $06 $88
    nop                                           ; $4a2b: $00
    cp [hl]                                       ; $4a2c: $be
    pop hl                                        ; $4a2d: $e1
    ld b, h                                       ; $4a2e: $44
    nop                                           ; $4a2f: $00
    ld [$08a4], sp                                ; $4a30: $08 $a4 $08
    dec h                                         ; $4a33: $25
    inc a                                         ; $4a34: $3c
    add a                                         ; $4a35: $87
    ld d, c                                       ; $4a36: $51
    add [hl]                                      ; $4a37: $86
    db $10                                        ; $4a38: $10
    ld l, e                                       ; $4a39: $6b
    ld l, e                                       ; $4a3a: $6b
    dec hl                                        ; $4a3b: $2b
    dec c                                         ; $4a3c: $0d
    adc d                                         ; $4a3d: $8a
    ld h, l                                       ; $4a3e: $65
    ld a, [hl-]                                   ; $4a3f: $3a
    ld bc, $8b08                                  ; $4a40: $01 $08 $8b
    adc c                                         ; $4a43: $89
    nop                                           ; $4a44: $00
    cp d                                          ; $4a45: $ba
    add d                                         ; $4a46: $82
    ld b, h                                       ; $4a47: $44
    ld l, e                                       ; $4a48: $6b
    ld c, d                                       ; $4a49: $4a
    ld h, l                                       ; $4a4a: $65
    ld c, b                                       ; $4a4b: $48
    nop                                           ; $4a4c: $00
    inc c                                         ; $4a4d: $0c
    ld h, h                                       ; $4a4e: $64
    add [hl]                                      ; $4a4f: $86
    rst $18                                       ; $4a50: $df
    ret nz                                        ; $4a51: $c0

    db $f4                                        ; $4a52: $f4
    ld b, [hl]                                    ; $4a53: $46
    ret nz                                        ; $4a54: $c0

    ld [$650c], a                                 ; $4a55: $ea $0c $65
    call nc, Call_000_3d9b                        ; $4a58: $d4 $9b $3d
    inc h                                         ; $4a5b: $24
    ld h, e                                       ; $4a5c: $63
    ld h, h                                       ; $4a5d: $64
    ld c, l                                       ; $4a5e: $4d
    dec l                                         ; $4a5f: $2d
    inc b                                         ; $4a60: $04
    add hl, bc                                    ; $4a61: $09
    add b                                         ; $4a62: $80
    ccf                                           ; $4a63: $3f
    ldh [$2d], a                                  ; $4a64: $e0 $2d

jr_062_4a66:
    rst $00                                       ; $4a66: $c7
    ld b, b                                       ; $4a67: $40
    adc h                                         ; $4a68: $8c
    inc bc                                        ; $4a69: $03
    inc c                                         ; $4a6a: $0c
    ld c, l                                       ; $4a6b: $4d
    add b                                         ; $4a6c: $80
    ld [hl], d                                    ; $4a6d: $72
    ld h, d                                       ; $4a6e: $62
    ld h, d                                       ; $4a6f: $62
    nop                                           ; $4a70: $00
    ld a, [hl-]                                   ; $4a71: $3a
    db $e3                                        ; $4a72: $e3
    ret                                           ; $4a73: $c9


    ld h, d                                       ; $4a74: $62
    adc c                                         ; $4a75: $89
    ld b, d                                       ; $4a76: $42
    ld c, h                                       ; $4a77: $4c
    dec b                                         ; $4a78: $05
    rst $38                                       ; $4a79: $ff
    rst $38                                       ; $4a7a: $ff
    ld a, c                                       ; $4a7b: $79
    inc hl                                        ; $4a7c: $23
    add d                                         ; $4a7d: $82
    inc hl                                        ; $4a7e: $23
    nop                                           ; $4a7f: $00
    rst $20                                       ; $4a80: $e7
    ld b, b                                       ; $4a81: $40
    dec a                                         ; $4a82: $3d
    jr nz, jr_062_4aa3                            ; $4a83: $20 $1e

    ld h, d                                       ; $4a85: $62
    dec c                                         ; $4a86: $0d
    scf                                           ; $4a87: $37
    nop                                           ; $4a88: $00
    xor a                                         ; $4a89: $af
    ld bc, $c4c0                                  ; $4a8a: $01 $c0 $c4
    and b                                         ; $4a8d: $a0
    ld l, e                                       ; $4a8e: $6b
    db $fd                                        ; $4a8f: $fd
    pop hl                                        ; $4a90: $e1
    nop                                           ; $4a91: $00
    ld c, e                                       ; $4a92: $4b
    ld b, c                                       ; $4a93: $41
    ld l, [hl]                                    ; $4a94: $6e
    ld h, [hl]                                    ; $4a95: $66
    ld d, [hl]                                    ; $4a96: $56
    rla                                           ; $4a97: $17
    inc [hl]                                      ; $4a98: $34
    ld l, c                                       ; $4a99: $69
    add hl, bc                                    ; $4a9a: $09
    ld hl, $c004                                  ; $4a9b: $21 $04 $c0
    pop bc                                        ; $4a9e: $c1
    ld b, e                                       ; $4a9f: $43
    ret nz                                        ; $4aa0: $c0

    db $e4                                        ; $4aa1: $e4
    nop                                           ; $4aa2: $00

jr_062_4aa3:
    db $ec                                        ; $4aa3: $ec
    dec b                                         ; $4aa4: $05
    rst $38                                       ; $4aa5: $ff
    rst $38                                       ; $4aa6: $ff
    adc b                                         ; $4aa7: $88
    inc b                                         ; $4aa8: $04
    ld bc, $4ea0                                  ; $4aa9: $01 $a0 $4e
    ld b, d                                       ; $4aac: $42
    adc $02                                       ; $4aad: $ce $02
    ld [$08a4], a                                 ; $4aaf: $ea $a4 $08
    ld [hl], $04                                  ; $4ab2: $36 $04
    nop                                           ; $4ab4: $00
    xor a                                         ; $4ab5: $af
    ld b, b                                       ; $4ab6: $40
    and e                                         ; $4ab7: $a3
    ld l, e                                       ; $4ab8: $6b
    ld [hl], l                                    ; $4ab9: $75
    and d                                         ; $4aba: $a2
    adc d                                         ; $4abb: $8a
    ld h, [hl]                                    ; $4abc: $66
    add b                                         ; $4abd: $80
    db $dd                                        ; $4abe: $dd
    add b                                         ; $4abf: $80
    ld l, b                                       ; $4ac0: $68
    ld e, l                                       ; $4ac1: $5d
    ld [hl+], a                                   ; $4ac2: $22
    nop                                           ; $4ac3: $00
    call $8c42                                    ; $4ac4: $cd $42 $8c
    ld a, h                                       ; $4ac7: $7c
    nop                                           ; $4ac8: $00
    or b                                          ; $4ac9: $b0
    inc e                                         ; $4aca: $1c
    ld h, [hl]                                    ; $4acb: $66
    jp c, $8204                                   ; $4acc: $da $04 $82

    rst $20                                       ; $4acf: $e7
    add b                                         ; $4ad0: $80
    rst $18                                       ; $4ad1: $df
    add b                                         ; $4ad2: $80
    ld [$0800], sp                                ; $4ad3: $08 $00 $08
    jp z, $f643                                   ; $4ad6: $ca $43 $f6

    push af                                       ; $4ad9: $f5
    ld b, b                                       ; $4ada: $40
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    cp a                                          ; $4ade: $bf
    db $dd                                        ; $4adf: $dd
    sbc $a0                                       ; $4ae0: $de $a0
    and b                                         ; $4ae2: $a0
    and b                                         ; $4ae3: $a0
    call c, $eefa                                 ; $4ae4: $dc $fa $ee
    and b                                         ; $4ae7: $a0
    ccf                                           ; $4ae8: $3f
    ret c                                         ; $4ae9: $d8

    reti                                          ; $4aea: $d9


    and b                                         ; $4aeb: $a0
    and b                                         ; $4aec: $a0
    jp nc, $fcd3                                  ; $4aed: $d2 $d3 $fc

    db $eb                                        ; $4af0: $eb
    db $ec                                        ; $4af1: $ec
    pop hl                                        ; $4af2: $e1
    db $fc                                        ; $4af3: $fc
    add sp, -$1f                                  ; $4af4: $e8 $e1
    ret nc                                        ; $4af6: $d0

    jp hl                                         ; $4af7: $e9


    ld [c], a                                     ; $4af8: $e2
    db $e3                                        ; $4af9: $e3
    db $e4                                        ; $4afa: $e4
    rst $18                                       ; $4afb: $df
    ldh [$e1], a                                  ; $4afc: $e0 $e1
    cp $fa                                        ; $4afe: $fe $fa
    db $ec                                        ; $4b00: $ec
    and b                                         ; $4b01: $a0
    sub $d7                                       ; $4b02: $d6 $d7
    jp c, $d0db                                   ; $4b04: $da $db $d0

    pop de                                        ; $4b07: $d1
    rst $08                                       ; $4b08: $cf
    call nc, $a0d5                                ; $4b09: $d4 $d5 $a0
    and b                                         ; $4b0c: $a0
    db $fc                                        ; $4b0d: $fc
    db $e3                                        ; $4b0e: $e3
    db $f4                                        ; $4b0f: $f4
    pop hl                                        ; $4b10: $e1
    ret nc                                        ; $4b11: $d0

    pop de                                        ; $4b12: $d1
    db $eb                                        ; $4b13: $eb
    jp c, $e8db                                   ; $4b14: $da $db $e8

    pop hl                                        ; $4b17: $e1
    and b                                         ; $4b18: $a0
    ret nc                                        ; $4b19: $d0

    ld [$e9e8], a                                 ; $4b1a: $ea $e8 $e9
    ld [$e5e7], a                                 ; $4b1d: $ea $e7 $e5
    and $e7                                       ; $4b20: $e6 $e7
    ld a, [$82ec]                                 ; $4b22: $fa $ec $82
    and $a0                                       ; $4b25: $e6 $a0
    sbc a                                         ; $4b27: $9f
    sbc l                                         ; $4b28: $9d
    ld a, [bc]                                    ; $4b29: $0a
    rst $38                                       ; $4b2a: $ff
    ldh [$9f], a                                  ; $4b2b: $e0 $9f
    ld a, [hl]                                    ; $4b2d: $7e
    ld [$d0a0], a                                 ; $4b2e: $ea $a0 $d0
    ld [$f143], a                                 ; $4b31: $ea $43 $f1
    sbc d                                         ; $4b34: $9a
    ld [c], a                                     ; $4b35: $e2
    add [hl]                                      ; $4b36: $86
    pop hl                                        ; $4b37: $e1
    ld l, a                                       ; $4b38: $6f
    sbc a                                         ; $4b39: $9f
    and d                                         ; $4b3a: $a2
    sbc h                                         ; $4b3b: $9c
    ld b, [hl]                                    ; $4b3c: $46
    rst $38                                       ; $4b3d: $ff
    ldh [$9c], a                                  ; $4b3e: $e0 $9c
    sbc a                                         ; $4b40: $9f
    ld a, d                                       ; $4b41: $7a
    push hl                                       ; $4b42: $e5
    ld h, b                                       ; $4b43: $60
    add sp, -$1f                                  ; $4b44: $e8 $e1
    inc de                                        ; $4b46: $13
    db $eb                                        ; $4b47: $eb
    ld b, e                                       ; $4b48: $43
    ldh a, [rNR32]                                ; $4b49: $f0 $1c
    db $e3                                        ; $4b4b: $e3
    add e                                         ; $4b4c: $83
    pop hl                                        ; $4b4d: $e1
    sbc h                                         ; $4b4e: $9c
    xor [hl]                                      ; $4b4f: $ae
    pop bc                                        ; $4b50: $c1
    pop hl                                        ; $4b51: $e1
    add d                                         ; $4b52: $82
    cp a                                          ; $4b53: $bf
    ldh [$a2], a                                  ; $4b54: $e0 $a2
    ld a, h                                       ; $4b56: $7c
    ldh [$f0], a                                  ; $4b57: $e0 $f0
    jp $ed13                                      ; $4b59: $c3 $13 $ed


    ld b, e                                       ; $4b5c: $43
    rst $28                                       ; $4b5d: $ef
    add d                                         ; $4b5e: $82
    db $e3                                        ; $4b5f: $e3
    ret nc                                        ; $4b60: $d0

    cp l                                          ; $4b61: $bd
    pop de                                        ; $4b62: $d1
    pop bc                                        ; $4b63: $c1
    ldh [rDMA], a                                 ; $4b64: $e0 $46
    xor a                                         ; $4b66: $af
    ld b, [hl]                                    ; $4b67: $46
    ld b, [hl]                                    ; $4b68: $46
    cp l                                          ; $4b69: $bd
    db $e3                                        ; $4b6a: $e3
    xor [hl]                                      ; $4b6b: $ae
    dec a                                         ; $4b6c: $3d
    sbc h                                         ; $4b6d: $9c
    cp a                                          ; $4b6e: $bf
    ldh [$d4], a                                  ; $4b6f: $e0 $d4
    push de                                       ; $4b71: $d5
    sub $d7                                       ; $4b72: $d6 $d7
    inc de                                        ; $4b74: $13
    db $ed                                        ; $4b75: $ed
    add [hl]                                      ; $4b76: $86
    db $d3                                        ; $4b77: $d3
    ld a, [hl+]                                   ; $4b78: $2a
    add h                                         ; $4b79: $84
    jp nz, $839e                                  ; $4b7a: $c2 $9e $83

    ld [c], a                                     ; $4b7d: $e2
    xor a                                         ; $4b7e: $af
    cp [hl]                                       ; $4b7f: $be
    ld [c], a                                     ; $4b80: $e2
    xor a                                         ; $4b81: $af
    dec sp                                        ; $4b82: $3b
    ldh [$e4], a                                  ; $4b83: $e0 $e4
    and $20                                       ; $4b85: $e6 $20
    add b                                         ; $4b87: $80
    ret c                                         ; $4b88: $d8

    inc sp                                        ; $4b89: $33
    ret nz                                        ; $4b8a: $c0

    sbc [hl]                                      ; $4b8b: $9e
    ret nz                                        ; $4b8c: $c0

    add e                                         ; $4b8d: $83
    ldh [$84], a                                  ; $4b8e: $e0 $84
    ret nz                                        ; $4b90: $c0

    sbc [hl]                                      ; $4b91: $9e
    ld b, d                                       ; $4b92: $42
    db $e4                                        ; $4b93: $e4
    ld a, e                                       ; $4b94: $7b
    db $e4                                        ; $4b95: $e4
    jp $9f9c                                      ; $4b96: $c3 $9c $9f


    ld a, [hl]                                    ; $4b99: $7e
    jp $da80                                      ; $4b9a: $c3 $80 $da


    rlca                                          ; $4b9d: $07
    db $e3                                        ; $4b9e: $e3
    add l                                         ; $4b9f: $85
    jp nz, $a1a0                                  ; $4ba0: $c2 $a0 $a1

    ld l, $42                                     ; $4ba3: $2e $42
    ld [c], a                                     ; $4ba5: $e2
    ld b, l                                       ; $4ba6: $45
    ld b, c                                       ; $4ba7: $41
    ld b, l                                       ; $4ba8: $45
    cp l                                          ; $4ba9: $bd
    db $e4                                        ; $4baa: $e4
    and c                                         ; $4bab: $a1
    db $fc                                        ; $4bac: $fc
    and h                                         ; $4bad: $a4
    add b                                         ; $4bae: $80
    call c, $9eec                                 ; $4baf: $dc $ec $9e
    ldh [$85], a                                  ; $4bb2: $e0 $85
    pop bc                                        ; $4bb4: $c1
    sbc l                                         ; $4bb5: $9d
    sbc l                                         ; $4bb6: $9d
    add h                                         ; $4bb7: $84
    pop bc                                        ; $4bb8: $c1
    xor a                                         ; $4bb9: $af
    ld b, l                                       ; $4bba: $45
    ld a, [hl+]                                   ; $4bbb: $2a
    daa                                           ; $4bbc: $27
    ld h, $2a                                     ; $4bbd: $26 $2a
    ld d, b                                       ; $4bbf: $50
    cp [hl]                                       ; $4bc0: $be
    ldh [$f5], a                                  ; $4bc1: $e0 $f5
    ret nz                                        ; $4bc3: $c0

    sbc [hl]                                      ; $4bc4: $9e
    db $fc                                        ; $4bc5: $fc
    and l                                         ; $4bc6: $a5
    dec a                                         ; $4bc7: $3d
    jp hl                                         ; $4bc8: $e9


    ldh a, [$c3]                                  ; $4bc9: $f0 $c3
    xor a                                         ; $4bcb: $af
    sbc [hl]                                      ; $4bcc: $9e
    and d                                         ; $4bcd: $a2
    call nz, $c6c0                                ; $4bce: $c4 $c0 $c6
    jp $2042                                      ; $4bd1: $c3 $42 $20


    jr nz, jr_062_4c04                            ; $4bd4: $20 $2e

    inc bc                                        ; $4bd6: $03
    ld e, a                                       ; $4bd7: $5f
    ld b, h                                       ; $4bd8: $44
    cp d                                          ; $4bd9: $ba
    pop bc                                        ; $4bda: $c1
    cp [hl]                                       ; $4bdb: $be
    pop bc                                        ; $4bdc: $c1
    ld a, d                                       ; $4bdd: $7a
    and l                                         ; $4bde: $a5
    add b                                         ; $4bdf: $80
    reti                                          ; $4be0: $d9


    add [hl]                                      ; $4be1: $86
    and c                                         ; $4be2: $a1
    pop bc                                        ; $4be3: $c1
    pop hl                                        ; $4be4: $e1
    ld a, h                                       ; $4be5: $7c
    add e                                         ; $4be6: $83
    pop bc                                        ; $4be7: $c1
    ret nz                                        ; $4be8: $c0

    ldh [$27], a                                  ; $4be9: $e0 $27
    jr nz, jr_062_4c34                            ; $4beb: $20 $47

    ld h, b                                       ; $4bed: $60
    ld b, h                                       ; $4bee: $44
    ret nz                                        ; $4bef: $c0

    jp Jump_062_6e90                              ; $4bf0: $c3 $90 $6e


    and c                                         ; $4bf3: $a1
    db $e4                                        ; $4bf4: $e4
    and e                                         ; $4bf5: $a3
    add b                                         ; $4bf6: $80
    reti                                          ; $4bf7: $d9


    ld [$a1a1], sp                                ; $4bf8: $08 $a1 $a1
    ld c, c                                       ; $4bfb: $49
    call nz, $e080                                ; $4bfc: $c4 $80 $e0
    ld [hl+], a                                   ; $4bff: $22
    ccf                                           ; $4c00: $3f
    ld [hl+], a                                   ; $4c01: $22
    ld d, d                                       ; $4c02: $52
    ld d, d                                       ; $4c03: $52

jr_062_4c04:
    ld b, l                                       ; $4c04: $45
    ld b, [hl]                                    ; $4c05: $46
    sbc h                                         ; $4c06: $9c
    rst $38                                       ; $4c07: $ff
    and c                                         ; $4c08: $a1
    ld a, [hl]                                    ; $4c09: $7e
    and [hl]                                      ; $4c0a: $a6
    ld a, $80                                     ; $4c0b: $3e $80
    jp c, $d7d6                                   ; $4c0d: $da $d6 $d7

    call nc, $9ed5                                ; $4c10: $d4 $d5 $9e
    add e                                         ; $4c13: $83
    db $e3                                        ; $4c14: $e3
    pop bc                                        ; $4c15: $c1
    and b                                         ; $4c16: $a0
    rrca                                          ; $4c17: $0f
    ld b, h                                       ; $4c18: $44
    inc a                                         ; $4c19: $3c
    dec [hl]                                      ; $4c1a: $35
    ld b, b                                       ; $4c1b: $40
    pop bc                                        ; $4c1c: $c1
    ldh [$c1], a                                  ; $4c1d: $e0 $c1
    and b                                         ; $4c1f: $a0
    add d                                         ; $4c20: $82
    and $80                                       ; $4c21: $e6 $80
    call c, $86b8                                 ; $4c23: $dc $b8 $86
    add c                                         ; $4c26: $81
    ld b, b                                       ; $4c27: $40
    ld [c], a                                     ; $4c28: $e2
    inc b                                         ; $4c29: $04
    jp nz, Jump_000_3539                          ; $4c2a: $c2 $39 $35

    dec [hl]                                      ; $4c2d: $35
    ld a, e                                       ; $4c2e: $7b
    and b                                         ; $4c2f: $a0
    and c                                         ; $4c30: $a1
    call nz, $a482                                ; $4c31: $c4 $82 $a4

jr_062_4c34:
    nop                                           ; $4c34: $00
    cp a                                          ; $4c35: $bf
    sbc $00                                       ; $4c36: $de $00
    ret nz                                        ; $4c38: $c0

    add h                                         ; $4c39: $84
    and e                                         ; $4c3a: $a3
    ret z                                         ; $4c3b: $c8

    and e                                         ; $4c3c: $a3
    ld a, [hl-]                                   ; $4c3d: $3a
    dec [hl]                                      ; $4c3e: $35
    add c                                         ; $4c3f: $81
    inc a                                         ; $4c40: $3c
    ld a, e                                       ; $4c41: $7b
    and b                                         ; $4c42: $a0
    add d                                         ; $4c43: $82
    and e                                         ; $4c44: $a3
    nop                                           ; $4c45: $00
    cp a                                          ; $4c46: $bf
    nop                                           ; $4c47: $00
    and e                                         ; $4c48: $a3
    ld [$4381], sp                                ; $4c49: $08 $81 $43
    and e                                         ; $4c4c: $a3
    ld b, l                                       ; $4c4d: $45
    rra                                           ; $4c4e: $1f
    ld [hl], $35                                  ; $4c4f: $36 $35
    dec [hl]                                      ; $4c51: $35
    ld a, [hl-]                                   ; $4c52: $3a
    ld b, l                                       ; $4c53: $45
    inc a                                         ; $4c54: $3c
    and b                                         ; $4c55: $a0
    add d                                         ; $4c56: $82
    and d                                         ; $4c57: $a2
    nop                                           ; $4c58: $00
    cp a                                          ; $4c59: $bf
    ldh [rP1], a                                  ; $4c5a: $e0 $00
    and e                                         ; $4c5c: $a3
    db $10                                        ; $4c5d: $10
    add c                                         ; $4c5e: $81
    ld b, [hl]                                    ; $4c5f: $46
    add b                                         ; $4c60: $80
    add h                                         ; $4c61: $84
    add b                                         ; $4c62: $80
    ld b, d                                       ; $4c63: $42
    ldh [$35], a                                  ; $4c64: $e0 $35
    ld a, $ae                                     ; $4c66: $3e $ae
    xor b                                         ; $4c68: $a8
    ld sp, hl                                     ; $4c69: $f9
    add c                                         ; $4c6a: $81
    nop                                           ; $4c6b: $00
    cp a                                          ; $4c6c: $bf
    add [hl]                                      ; $4c6d: $86
    ld l, l                                       ; $4c6e: $6d
    and b                                         ; $4c6f: $a0
    ld a, e                                       ; $4c70: $7b
    ret nz                                        ; $4c71: $c0

    ld a, [hl-]                                   ; $4c72: $3a
    ret nz                                        ; $4c73: $c0

    ldh [$3a], a                                  ; $4c74: $e0 $3a
    ld b, b                                       ; $4c76: $40
    cp e                                          ; $4c77: $bb
    add e                                         ; $4c78: $83
    nop                                           ; $4c79: $00
    cp a                                          ; $4c7a: $bf
    nop                                           ; $4c7b: $00
    and [hl]                                      ; $4c7c: $a6
    ld a, [hl]                                    ; $4c7d: $7e
    pop bc                                        ; $4c7e: $c1
    ld a, [hl+]                                   ; $4c7f: $2a
    ld h, b                                       ; $4c80: $60
    ld a, e                                       ; $4c81: $7b
    ret nz                                        ; $4c82: $c0

    inc a                                         ; $4c83: $3c
    add b                                         ; $4c84: $80
    ldh [rNR31], a                                ; $4c85: $e0 $1b
    dec [hl]                                      ; $4c87: $35
    add hl, sp                                    ; $4c88: $39
    ld a, a                                       ; $4c89: $7f
    ld [c], a                                     ; $4c8a: $e2
    xor [hl]                                      ; $4c8b: $ae
    and c                                         ; $4c8c: $a1
    ld l, h                                       ; $4c8d: $6c
    add b                                         ; $4c8e: $80
    nop                                           ; $4c8f: $00
    cp a                                          ; $4c90: $bf
    ld a, [hl]                                    ; $4c91: $7e
    add a                                         ; $4c92: $87
    sbc [hl]                                      ; $4c93: $9e
    ld [bc], a                                    ; $4c94: $02
    add b                                         ; $4c95: $80
    ld b, l                                       ; $4c96: $45
    ld a, [hl-]                                   ; $4c97: $3a
    dec [hl]                                      ; $4c98: $35
    xor h                                         ; $4c99: $ac
    ld a, a                                       ; $4c9a: $7f
    db $e3                                        ; $4c9b: $e3
    ld a, b                                       ; $4c9c: $78
    add b                                         ; $4c9d: $80
    sbc [hl]                                      ; $4c9e: $9e
    xor b                                         ; $4c9f: $a8
    db $fc                                        ; $4ca0: $fc
    ld b, l                                       ; $4ca1: $45
    add b                                         ; $4ca2: $80
    ld a, [hl]                                    ; $4ca3: $7e
    ld a, [hl]                                    ; $4ca4: $7e
    push bc                                       ; $4ca5: $c5
    xor a                                         ; $4ca6: $af
    nop                                           ; $4ca7: $00
    ldh [$ad], a                                  ; $4ca8: $e0 $ad
    cp $c0                                        ; $4caa: $fe $c0
    ld [hl], $31                                  ; $4cac: $36 $31
    ld b, l                                       ; $4cae: $45
    ld b, c                                       ; $4caf: $41
    and e                                         ; $4cb0: $a3
    add d                                         ; $4cb1: $82
    and e                                         ; $4cb2: $a3
    nop                                           ; $4cb3: $00
    cp l                                          ; $4cb4: $bd
    rst $18                                       ; $4cb5: $df
    ldh [$86], a                                  ; $4cb6: $e0 $86
    ld b, c                                       ; $4cb8: $41
    add h                                         ; $4cb9: $84
    ld h, e                                       ; $4cba: $63
    sub c                                         ; $4cbb: $91
    ld b, b                                       ; $4cbc: $40
    ld b, b                                       ; $4cbd: $40
    pop hl                                        ; $4cbe: $e1
    cp a                                          ; $4cbf: $bf
    ldh [$b8], a                                  ; $4cc0: $e0 $b8
    ld h, b                                       ; $4cc2: $60
    sbc [hl]                                      ; $4cc3: $9e
    ld l, d                                       ; $4cc4: $6a
    ld b, l                                       ; $4cc5: $45
    nop                                           ; $4cc6: $00
    cp l                                          ; $4cc7: $bd
    push hl                                       ; $4cc8: $e5
    ld l, l                                       ; $4cc9: $6d
    and $7e                                       ; $4cca: $e6 $7e
    and [hl]                                      ; $4ccc: $a6
    xor [hl]                                      ; $4ccd: $ae
    ld b, d                                       ; $4cce: $42
    add b                                         ; $4ccf: $80
    ret nz                                        ; $4cd0: $c0

    jr c, @+$3a                                   ; $4cd1: $38 $38

    ld a, [hl]                                    ; $4cd3: $7e
    ldh [rLCDC], a                                ; $4cd4: $e0 $40
    ld b, d                                       ; $4cd6: $42
    add b                                         ; $4cd7: $80
    ld l, h                                       ; $4cd8: $6c
    ld h, c                                       ; $4cd9: $61
    ld a, [hl]                                    ; $4cda: $7e
    ld b, h                                       ; $4cdb: $44
    nop                                           ; $4cdc: $00
    cp c                                          ; $4cdd: $b9
    db $f4                                        ; $4cde: $f4
    jr nz, jr_062_4ce5                            ; $4cdf: $20 $04

    ld b, c                                       ; $4ce1: $41
    and c                                         ; $4ce2: $a1
    add h                                         ; $4ce3: $84
    ld h, d                                       ; $4ce4: $62

jr_062_4ce5:
    ld c, $42                                     ; $4ce5: $0e $42
    and b                                         ; $4ce7: $a0
    ld a, [hl-]                                   ; $4ce8: $3a
    ld b, a                                       ; $4ce9: $47
    ld d, d                                       ; $4cea: $52
    ld a, d                                       ; $4ceb: $7a
    ret nz                                        ; $4cec: $c0

    add b                                         ; $4ced: $80
    ld h, d                                       ; $4cee: $62
    nop                                           ; $4cef: $00
    cp a                                          ; $4cf0: $bf
    db $f4                                        ; $4cf1: $f4
    inc hl                                        ; $4cf2: $23
    inc a                                         ; $4cf3: $3c
    ld a, [hl]                                    ; $4cf4: $7e
    add l                                         ; $4cf5: $85
    jp Jump_000_3a60                              ; $4cf6: $c3 $60 $3a


    dec [hl]                                      ; $4cf9: $35
    add hl, sp                                    ; $4cfa: $39
    ld d, d                                       ; $4cfb: $52
    ret nz                                        ; $4cfc: $c0

    pop hl                                        ; $4cfd: $e1
    ld a, h                                       ; $4cfe: $7c
    ret nz                                        ; $4cff: $c0

    ldh [$bd], a                                  ; $4d00: $e0 $bd
    add b                                         ; $4d02: $80
    ld a, [hl]                                    ; $4d03: $7e
    and e                                         ; $4d04: $a3
    nop                                           ; $4d05: $00
    ld e, [hl]                                    ; $4d06: $5e
    add [hl]                                      ; $4d07: $86
    ld [hl+], a                                   ; $4d08: $22
    jp nz, $ae42                                  ; $4d09: $c2 $42 $ae

    add hl, sp                                    ; $4d0c: $39
    ld [hl], $33                                  ; $4d0d: $36 $33
    ld b, a                                       ; $4d0f: $47
    ld d, d                                       ; $4d10: $52
    cp e                                          ; $4d11: $bb
    and c                                         ; $4d12: $a1
    ld a, h                                       ; $4d13: $7c
    jp nz, $9f9c                                  ; $4d14: $c2 $9c $9f

    db $ec                                        ; $4d17: $ec
    ld [hl+], a                                   ; $4d18: $22
    nop                                           ; $4d19: $00
    ld e, a                                       ; $4d1a: $5f
    db $fc                                        ; $4d1b: $fc
    ld a, [hl]                                    ; $4d1c: $7e
    and d                                         ; $4d1d: $a2
    cp l                                          ; $4d1e: $bd
    ld h, c                                       ; $4d1f: $61
    xor a                                         ; $4d20: $af
    ld b, l                                       ; $4d21: $45
    ld b, a                                       ; $4d22: $47
    ld h, b                                       ; $4d23: $60
    ld d, d                                       ; $4d24: $52
    ld a, [hl-]                                   ; $4d25: $3a
    rra                                           ; $4d26: $1f
    ld h, d                                       ; $4d27: $62
    ld h, e                                       ; $4d28: $63
    ld h, [hl]                                    ; $4d29: $66
    dec [hl]                                      ; $4d2a: $35
    add hl, sp                                    ; $4d2b: $39
    ld [hl], a                                    ; $4d2c: $77
    ld b, c                                       ; $4d2d: $41
    ld a, [hl]                                    ; $4d2e: $7e
    ld h, b                                       ; $4d2f: $60
    add d                                         ; $4d30: $82
    ld h, c                                       ; $4d31: $61
    add sp, $7e                                   ; $4d32: $e8 $7e
    ld h, c                                       ; $4d34: $61
    nop                                           ; $4d35: $00
    ld e, l                                       ; $4d36: $5d
    add b                                         ; $4d37: $80
    ld b, d                                       ; $4d38: $42
    xor [hl]                                      ; $4d39: $ae
    pop bc                                        ; $4d3a: $c1
    pop hl                                        ; $4d3b: $e1
    ld [hl], $62                                  ; $4d3c: $36 $62
    ld h, a                                       ; $4d3e: $67
    rrca                                          ; $4d3f: $0f
    dec [hl]                                      ; $4d40: $35
    ld l, b                                       ; $4d41: $68
    ld h, [hl]                                    ; $4d42: $66
    ld a, $34                                     ; $4d43: $3e $34
    ld b, c                                       ; $4d45: $41
    ld a, c                                       ; $4d46: $79
    add b                                         ; $4d47: $80
    db $fc                                        ; $4d48: $fc
    inc bc                                        ; $4d49: $03
    nop                                           ; $4d4a: $00
    ld e, l                                       ; $4d4b: $5d
    cp $04                                        ; $4d4c: $fe $04
    ld [hl+], a                                   ; $4d4e: $22
    sbc a                                         ; $4d4f: $9f
    sbc h                                         ; $4d50: $9c
    xor a                                         ; $4d51: $af
    ld b, h                                       ; $4d52: $44
    ld c, l                                       ; $4d53: $4d
    ld h, c                                       ; $4d54: $61
    add hl, sp                                    ; $4d55: $39
    ld e, [hl]                                    ; $4d56: $5e
    pop bc                                        ; $4d57: $c1
    ldh [$35], a                                  ; $4d58: $e0 $35
    dec [hl]                                      ; $4d5a: $35
    ld l, d                                       ; $4d5b: $6a
    ld a, $77                                     ; $4d5c: $3e $77
    ld hl, $fc9e                                  ; $4d5e: $21 $9e $fc
    dec b                                         ; $4d61: $05
    db $fc                                        ; $4d62: $fc
    nop                                           ; $4d63: $00
    cp a                                          ; $4d64: $bf
    ld a, a                                       ; $4d65: $7f
    ld b, d                                       ; $4d66: $42
    ld b, [hl]                                    ; $4d67: $46
    xor [hl]                                      ; $4d68: $ae
    ld d, d                                       ; $4d69: $52
    ld h, c                                       ; $4d6a: $61
    ld a, $69                                     ; $4d6b: $3e $69
    ld [bc], a                                    ; $4d6d: $02
    inc a                                         ; $4d6e: $3c
    and c                                         ; $4d6f: $a1
    ld l, d                                       ; $4d70: $6a
    cp d                                          ; $4d71: $ba
    add b                                         ; $4d72: $80
    nop                                           ; $4d73: $00
    db $e4                                        ; $4d74: $e4
    ld h, [hl]                                    ; $4d75: $66
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    ld e, b                                       ; $4d78: $58
    add [hl]                                      ; $4d79: $86
    rlca                                          ; $4d7a: $07
    add b                                         ; $4d7b: $80
    ld [hl+], a                                   ; $4d7c: $22
    ld [hl], a                                    ; $4d7d: $77
    ld d, c                                       ; $4d7e: $51
    ld d, [hl]                                    ; $4d7f: $56
    ld a, [hl-]                                   ; $4d80: $3a
    ret nz                                        ; $4d81: $c0

    pop hl                                        ; $4d82: $e1
    ld l, h                                       ; $4d83: $6c
    ld l, l                                       ; $4d84: $6d
    ld a, $be                                     ; $4d85: $3e $be
    ld [hl+], a                                   ; $4d87: $22
    add [hl]                                      ; $4d88: $86
    ld l, [hl]                                    ; $4d89: $6e
    ld bc, $dbda                                  ; $4d8a: $01 $da $db
    nop                                           ; $4d8d: $00
    ld e, c                                       ; $4d8e: $59
    add d                                         ; $4d8f: $82
    add h                                         ; $4d90: $84
    adc b                                         ; $4d91: $88
    ld bc, $2102                                  ; $4d92: $01 $02 $21
    ld b, l                                       ; $4d95: $45
    ld [hl], a                                    ; $4d96: $77
    ld [hl], $62                                  ; $4d97: $36 $62
    halt                                          ; $4d99: $76
    inc a                                         ; $4d9a: $3c
    add b                                         ; $4d9b: $80
    ld [hl], e                                    ; $4d9c: $73
    ld l, [hl]                                    ; $4d9d: $6e
    add hl, sp                                    ; $4d9e: $39
    ld a, a                                       ; $4d9f: $7f
    add e                                         ; $4da0: $83
    jr nc, jr_062_4de6                            ; $4da1: $30 $43

    ld b, c                                       ; $4da3: $41
    add b                                         ; $4da4: $80
    ret c                                         ; $4da5: $d8

    add d                                         ; $4da6: $82
    push hl                                       ; $4da7: $e5
    ld b, b                                       ; $4da8: $40
    ld h, e                                       ; $4da9: $63
    xor a                                         ; $4daa: $af
    xor [hl]                                      ; $4dab: $ae
    pop bc                                        ; $4dac: $c1
    ldh [rSC], a                                  ; $4dad: $e0 $02
    pop hl                                        ; $4daf: $e1
    dec bc                                        ; $4db0: $0b
    dec [hl]                                      ; $4db1: $35
    ld l, d                                       ; $4db2: $6a
    cp e                                          ; $4db3: $bb
    ld h, b                                       ; $4db4: $60
    sbc [hl]                                      ; $4db5: $9e
    db $ec                                        ; $4db6: $ec
    ld bc, $05a5                                  ; $4db7: $01 $a5 $05
    add b                                         ; $4dba: $80
    ld [de], a                                    ; $4dbb: $12
    inc b                                         ; $4dbc: $04
    add [hl]                                      ; $4dbd: $86
    ld b, $42                                     ; $4dbe: $06 $42
    ld h, [hl]                                    ; $4dc0: $66
    add hl, sp                                    ; $4dc1: $39
    dec [hl]                                      ; $4dc2: $35
    ld [bc], a                                    ; $4dc3: $02
    ld [c], a                                     ; $4dc4: $e2
    ld b, c                                       ; $4dc5: $41
    ldh [$3f], a                                  ; $4dc6: $e0 $3f
    and c                                         ; $4dc8: $a1
    ld [bc], a                                    ; $4dc9: $02
    ret nz                                        ; $4dca: $c0

    daa                                           ; $4dcb: $27
    ld bc, $92a0                                  ; $4dcc: $01 $a0 $92
    add b                                         ; $4dcf: $80
    add b                                         ; $4dd0: $80
    inc de                                        ; $4dd1: $13
    inc b                                         ; $4dd2: $04
    add [hl]                                      ; $4dd3: $86
    ld b, e                                       ; $4dd4: $43
    and c                                         ; $4dd5: $a1
    ret z                                         ; $4dd6: $c8

    ld [bc], a                                    ; $4dd7: $02
    ld a, $c0                                     ; $4dd8: $3e $c0
    ld [c], a                                     ; $4dda: $e2
    ld l, h                                       ; $4ddb: $6c
    rlca                                          ; $4ddc: $07
    ld l, a                                       ; $4ddd: $6f
    ld l, [hl]                                    ; $4dde: $6e
    add hl, sp                                    ; $4ddf: $39
    cp a                                          ; $4de0: $bf
    ld bc, $c2ea                                  ; $4de1: $01 $ea $c2
    add c                                         ; $4de4: $81
    ld [hl+], a                                   ; $4de5: $22

jr_062_4de6:
    add b                                         ; $4de6: $80
    rla                                           ; $4de7: $17
    jr nz, @-$5c                                  ; $4de8: $20 $a2

    ld a, b                                       ; $4dea: $78
    add [hl]                                      ; $4deb: $86
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    ld b, b                                       ; $4dee: $40
    ld b, e                                       ; $4def: $43
    nop                                           ; $4df0: $00
    ld a, $35                                     ; $4df1: $3e $35
    ld l, e                                       ; $4df3: $6b
    ld l, h                                       ; $4df4: $6c
    pop bc                                        ; $4df5: $c1
    pop hl                                        ; $4df6: $e1
    ld bc, $3e36                                  ; $4df7: $01 $36 $3e
    ld hl, $807e                                  ; $4dfa: $21 $7e $80
    jp nz, Jump_062_6160                          ; $4dfd: $c2 $60 $61

    ld h, c                                       ; $4e00: $61
    add b                                         ; $4e01: $80
    jr @+$06                                      ; $4e02: $18 $04

    add a                                         ; $4e04: $87
    ld b, d                                       ; $4e05: $42
    ld bc, $3e3f                                  ; $4e06: $01 $3f $3e
    dec [hl]                                      ; $4e09: $35
    ld l, [hl]                                    ; $4e0a: $6e
    ld [hl], b                                    ; $4e0b: $70
    ld [hl], c                                    ; $4e0c: $71
    ld [hl], b                                    ; $4e0d: $70
    pop bc                                        ; $4e0e: $c1

jr_062_4e0f:
    ldh [rLCDC], a                                ; $4e0f: $e0 $40
    inc h                                         ; $4e11: $24
    add [hl]                                      ; $4e12: $86
    inc h                                         ; $4e13: $24
    ld h, b                                       ; $4e14: $60
    jp c, $80db                                   ; $4e15: $da $db $80

    inc e                                         ; $4e18: $1c
    add d                                         ; $4e19: $82
    ld b, h                                       ; $4e1a: $44
    pop bc                                        ; $4e1b: $c1
    ld hl, $6080                                  ; $4e1c: $21 $80 $60
    dec [hl]                                      ; $4e1f: $35
    rlca                                          ; $4e20: $07
    dec [hl]                                      ; $4e21: $35
    dec sp                                        ; $4e22: $3b
    dec sp                                        ; $4e23: $3b
    add d                                         ; $4e24: $82
    ldh [rLCDC], a                                ; $4e25: $e0 $40
    inc h                                         ; $4e27: $24
    ld bc, $00e2                                  ; $4e28: $01 $e2 $00
    or [hl]                                       ; $4e2b: $b6
    inc h                                         ; $4e2c: $24
    and e                                         ; $4e2d: $a3
    ld [hl], h                                    ; $4e2e: $74
    add d                                         ; $4e2f: $82
    ld b, d                                       ; $4e30: $42
    ld a, $e2                                     ; $4e31: $3e $e2
    xor a                                         ; $4e33: $af
    pop bc                                        ; $4e34: $c1
    ld h, c                                       ; $4e35: $61
    ld [hl], $43                                  ; $4e36: $36 $43
    xor [hl]                                      ; $4e38: $ae
    add c                                         ; $4e39: $81
    ld bc, $c280                                  ; $4e3a: $01 $80 $c2
    dec b                                         ; $4e3d: $05
    nop                                           ; $4e3e: $00
    ld e, c                                       ; $4e3f: $59
    and d                                         ; $4e40: $a2
    ld h, l                                       ; $4e41: $65
    inc b                                         ; $4e42: $04
    and d                                         ; $4e43: $a2
    ret nz                                        ; $4e44: $c0

    ld h, c                                       ; $4e45: $61
    add e                                         ; $4e46: $83
    jr nz, jr_062_4e0f                            ; $4e47: $20 $c6

    ld h, b                                       ; $4e49: $60
    xor a                                         ; $4e4a: $af
    ld bc, $f39c                                  ; $4e4b: $01 $9c $f3
    and b                                         ; $4e4e: $a0
    nop                                           ; $4e4f: $00
    ld b, c                                       ; $4e50: $41
    xor d                                         ; $4e51: $aa
    and c                                         ; $4e52: $a1
    nop                                           ; $4e53: $00
    ld e, c                                       ; $4e54: $59
    and d                                         ; $4e55: $a2
    ld h, e                                       ; $4e56: $63
    add d                                         ; $4e57: $82
    ld b, d                                       ; $4e58: $42
    cp [hl]                                       ; $4e59: $be
    ret nz                                        ; $4e5a: $c0

    inc b                                         ; $4e5b: $04
    jp nz, $4120                                  ; $4e5c: $c2 $20 $41

    ld b, b                                       ; $4e5f: $40
    ld b, b                                       ; $4e60: $40
    add [hl]                                      ; $4e61: $86
    ld [bc], a                                    ; $4e62: $02
    jr z, @+$43                                   ; $4e63: $28 $41

    db $ec                                        ; $4e65: $ec
    ld b, b                                       ; $4e66: $40
    ld h, d                                       ; $4e67: $62
    and b                                         ; $4e68: $a0
    nop                                           ; $4e69: $00
    ld e, b                                       ; $4e6a: $58
    ld [$6820], sp                                ; $4e6b: $08 $20 $68
    rst $38                                       ; $4e6e: $ff
    jp $21c2                                      ; $4e6f: $c3 $c2 $21


    ld b, d                                       ; $4e72: $42
    ld b, a                                       ; $4e73: $47
    ld b, e                                       ; $4e74: $43
    nop                                           ; $4e75: $00
    add hl, hl                                    ; $4e76: $29
    add b                                         ; $4e77: $80
    ld [hl], e                                    ; $4e78: $73
    add d                                         ; $4e79: $82
    and h                                         ; $4e7a: $a4
    jr jr_062_4e7d                                ; $4e7b: $18 $00

jr_062_4e7d:
    and e                                         ; $4e7d: $a3
    call nz, $c282                                ; $4e7e: $c4 $82 $c2
    pop bc                                        ; $4e81: $c1
    inc a                                         ; $4e82: $3c
    ld b, h                                       ; $4e83: $44
    ld b, a                                       ; $4e84: $47
    ld b, h                                       ; $4e85: $44
    ld l, d                                       ; $4e86: $6a
    ld hl, $4482                                  ; $4e87: $21 $82 $44
    ld b, b                                       ; $4e8a: $40
    add b                                         ; $4e8b: $80
    ld [hl], e                                    ; $4e8c: $73
    and d                                         ; $4e8d: $a2
    ld c, b                                       ; $4e8e: $48
    sbc d                                         ; $4e8f: $9a
    ld h, c                                       ; $4e90: $61
    ld a, $00                                     ; $4e91: $3e $00
    ld b, e                                       ; $4e93: $43
    ld hl, $c107                                  ; $4e94: $21 $07 $c1
    sbc [hl]                                      ; $4e97: $9e
    ret                                           ; $4e98: $c9


    add c                                         ; $4e99: $81
    nop                                           ; $4e9a: $00
    add [hl]                                      ; $4e9b: $86
    ld b, l                                       ; $4e9c: $45
    nop                                           ; $4e9d: $00
    ld e, c                                       ; $4e9e: $59
    add d                                         ; $4e9f: $82
    push hl                                       ; $4ea0: $e5
    inc b                                         ; $4ea1: $04
    add d                                         ; $4ea2: $82
    ld [bc], a                                    ; $4ea3: $02
    ld [c], a                                     ; $4ea4: $e2
    ld b, $45                                     ; $4ea5: $06 $45
    add [hl]                                      ; $4ea7: $86
    ld b, l                                       ; $4ea8: $45
    ld h, d                                       ; $4ea9: $62
    add c                                         ; $4eaa: $81
    nop                                           ; $4eab: $00
    add b                                         ; $4eac: $80
    rla                                           ; $4ead: $17
    nop                                           ; $4eae: $00
    and a                                         ; $4eaf: $a7
    add h                                         ; $4eb0: $84
    add c                                         ; $4eb1: $81
    add h                                         ; $4eb2: $84
    ld b, c                                       ; $4eb3: $41
    rlca                                          ; $4eb4: $07
    pop bc                                        ; $4eb5: $c1
    dec b                                         ; $4eb6: $05
    ld b, c                                       ; $4eb7: $41
    add [hl]                                      ; $4eb8: $86
    ld b, l                                       ; $4eb9: $45
    add [hl]                                      ; $4eba: $86
    ld l, c                                       ; $4ebb: $69
    db $fc                                        ; $4ebc: $fc
    add b                                         ; $4ebd: $80
    rrca                                          ; $4ebe: $0f
    add d                                         ; $4ebf: $82
    adc c                                         ; $4ec0: $89
    xor a                                         ; $4ec1: $af
    ld b, [hl]                                    ; $4ec2: $46
    ld b, d                                       ; $4ec3: $42
    dec [hl]                                      ; $4ec4: $35
    dec sp                                        ; $4ec5: $3b
    add hl, sp                                    ; $4ec6: $39
    add b                                         ; $4ec7: $80
    cp d                                          ; $4ec8: $ba
    and d                                         ; $4ec9: $a2
    add $80                                       ; $4eca: $c6 $80
    add [hl]                                      ; $4ecc: $86
    inc hl                                        ; $4ecd: $23
    inc b                                         ; $4ece: $04
    add c                                         ; $4ecf: $81
    add b                                         ; $4ed0: $80
    reti                                          ; $4ed1: $d9


    add d                                         ; $4ed2: $82
    adc b                                         ; $4ed3: $88
    ld b, d                                       ; $4ed4: $42
    pop bc                                        ; $4ed5: $c1
    ccf                                           ; $4ed6: $3f
    ld bc, $0a43                                  ; $4ed7: $01 $43 $0a
    and c                                         ; $4eda: $a1
    ld bc, $86c0                                  ; $4edb: $01 $c0 $86
    inc de                                        ; $4ede: $13
    add b                                         ; $4edf: $80
    rst $08                                       ; $4ee0: $cf
    inc b                                         ; $4ee1: $04
    push bc                                       ; $4ee2: $c5
    ld b, [hl]                                    ; $4ee3: $46
    ld hl, $e4fd                                  ; $4ee4: $21 $fd $e4
    nop                                           ; $4ee7: $00
    ld b, a                                       ; $4ee8: $47
    inc b                                         ; $4ee9: $04
    add [hl]                                      ; $4eea: $86
    ld de, $cf80                                  ; $4eeb: $11 $80 $cf
    inc b                                         ; $4eee: $04
    ld h, e                                       ; $4eef: $63
    ret                                           ; $4ef0: $c9


    ld b, b                                       ; $4ef1: $40
    inc bc                                        ; $4ef2: $03
    add d                                         ; $4ef3: $82
    cp a                                          ; $4ef4: $bf
    add d                                         ; $4ef5: $82
    jp nz, $f0a4                                  ; $4ef6: $c2 $a4 $f0

    add [hl]                                      ; $4ef9: $86
    ld de, $5100                                  ; $4efa: $11 $00 $51
    inc b                                         ; $4efd: $04
    ld h, c                                       ; $4efe: $61
    ld b, [hl]                                    ; $4eff: $46
    jr nz, jr_062_4f47                            ; $4f00: $20 $45

    xor a                                         ; $4f02: $af
    ld b, c                                       ; $4f03: $41
    ld b, e                                       ; $4f04: $43
    inc bc                                        ; $4f05: $03
    ld b, e                                       ; $4f06: $43
    ld b, c                                       ; $4f07: $41
    ld b, c                                       ; $4f08: $41
    pop hl                                        ; $4f09: $e1
    adc e                                         ; $4f0a: $8b
    jr nz, @-$75                                  ; $4f0b: $20 $89

    ld h, c                                       ; $4f0d: $61
    add [hl]                                      ; $4f0e: $86
    inc bc                                        ; $4f0f: $03
    sub $2f                                       ; $4f10: $d6 $2f
    add b                                         ; $4f12: $80
    ld l, l                                       ; $4f13: $6d
    ld a, [hl+]                                   ; $4f14: $2a
    call c, $9e81                                 ; $4f15: $dc $81 $9e
    dec bc                                        ; $4f18: $0b
    ld h, b                                       ; $4f19: $60
    dec sp                                        ; $4f1a: $3b
    adc d                                         ; $4f1b: $8a
    add b                                         ; $4f1c: $80
    dec [hl]                                      ; $4f1d: $35
    adc b                                         ; $4f1e: $88
    add b                                         ; $4f1f: $80
    add e                                         ; $4f20: $83
    and $78                                       ; $4f21: $e6 $78
    add [hl]                                      ; $4f23: $86
    ret nc                                        ; $4f24: $d0

    add b                                         ; $4f25: $80
    ld [hl], c                                    ; $4f26: $71
    add [hl]                                      ; $4f27: $86
    inc bc                                        ; $4f28: $03
    ld b, h                                       ; $4f29: $44
    inc a                                         ; $4f2a: $3c
    and h                                         ; $4f2b: $a4
    ld h, h                                       ; $4f2c: $64
    rst $38                                       ; $4f2d: $ff
    ldh [$87], a                                  ; $4f2e: $e0 $87
    and l                                         ; $4f30: $a5
    inc a                                         ; $4f31: $3c
    ld b, h                                       ; $4f32: $44
    ld b, l                                       ; $4f33: $45
    and d                                         ; $4f34: $a2

jr_062_4f35:
    ld [hl], e                                    ; $4f35: $73
    ld b, b                                       ; $4f36: $40
    inc c                                         ; $4f37: $0c
    ld c, e                                       ; $4f38: $4b
    nop                                           ; $4f39: $00
    cp e                                          ; $4f3a: $bb
    sbc a                                         ; $4f3b: $9f
    rst $38                                       ; $4f3c: $ff
    sbc h                                         ; $4f3d: $9c
    ld b, d                                       ; $4f3e: $42
    dec [hl]                                      ; $4f3f: $35
    ld l, c                                       ; $4f40: $69
    and e                                         ; $4f41: $a3
    dec [hl]                                      ; $4f42: $35
    dec [hl]                                      ; $4f43: $35
    and e                                         ; $4f44: $a3
    rlca                                          ; $4f45: $07
    ld l, d                                       ; $4f46: $6a

jr_062_4f47:
    dec [hl]                                      ; $4f47: $35
    ld b, d                                       ; $4f48: $42
    ld b, $c3                                     ; $4f49: $06 $c3
    inc c                                         ; $4f4b: $0c
    ld c, l                                       ; $4f4c: $4d
    nop                                           ; $4f4d: $00
    cp c                                          ; $4f4e: $b9
    inc b                                         ; $4f4f: $04
    add c                                         ; $4f50: $81
    ret nz                                        ; $4f51: $c0

    ldh [$80], a                                  ; $4f52: $e0 $80
    call z, $c022                                 ; $4f54: $cc $22 $c0
    pop hl                                        ; $4f57: $e1
    or $21                                        ; $4f58: $f6 $21
    db $ec                                        ; $4f5a: $ec
    ld hl, $f243                                  ; $4f5b: $21 $43 $f2
    nop                                           ; $4f5e: $00
    or b                                          ; $4f5f: $b0
    ld [$4421], sp                                ; $4f60: $08 $21 $44
    ld [hl], a                                    ; $4f63: $77
    inc a                                         ; $4f64: $3c
    ld l, e                                       ; $4f65: $6b
    ld [hl], c                                    ; $4f66: $71
    rst $38                                       ; $4f67: $ff
    ldh [$6d], a                                  ; $4f68: $e0 $6d
    inc a                                         ; $4f6a: $3c
    ld b, h                                       ; $4f6b: $44
    ld b, h                                       ; $4f6c: $44
    jp $86d0                                      ; $4f6d: $c3 $d0 $86


    db $d3                                        ; $4f70: $d3
    nop                                           ; $4f71: $00
    or e                                          ; $4f72: $b3
    add d                                         ; $4f73: $82
    ld b, c                                       ; $4f74: $41
    ret nz                                        ; $4f75: $c0

    add $ae                                       ; $4f76: $c6 $ae
    call z, $d241                                 ; $4f78: $cc $41 $d2
    db $d3                                        ; $4f7b: $d3
    ld [hl], b                                    ; $4f7c: $70
    adc d                                         ; $4f7d: $8a
    add d                                         ; $4f7e: $82
    jp Jump_000_00b1                              ; $4f7f: $c3 $b1 $00


    ld d, d                                       ; $4f82: $52
    add l                                         ; $4f83: $85
    add b                                         ; $4f84: $80
    ld b, l                                       ; $4f85: $45
    ld b, e                                       ; $4f86: $43
    xor [hl]                                      ; $4f87: $ae
    ld b, b                                       ; $4f88: $40
    jp nz, $af01                                  ; $4f89: $c2 $01 $af

    adc [hl]                                      ; $4f8c: $8e
    ld bc, $2134                                  ; $4f8d: $01 $34 $21
    db $ec                                        ; $4f90: $ec
    ld bc, $df80                                  ; $4f91: $01 $80 $df
    inc b                                         ; $4f94: $04
    add h                                         ; $4f95: $84
    ld bc, $80a3                                  ; $4f96: $01 $a3 $80
    ld b, d                                       ; $4f99: $42
    inc bc                                        ; $4f9a: $03
    sbc h                                         ; $4f9b: $9c
    sbc a                                         ; $4f9c: $9f
    adc d                                         ; $4f9d: $8a
    ld h, e                                       ; $4f9e: $63
    inc b                                         ; $4f9f: $04
    and c                                         ; $4fa0: $a1
    add b                                         ; $4fa1: $80
    rst $18                                       ; $4fa2: $df
    inc b                                         ; $4fa3: $04
    add a                                         ; $4fa4: $87
    jp $0ae3                                      ; $4fa5: $c3 $e3 $0a


    ld h, c                                       ; $4fa8: $61
    jr jr_062_4f35                                ; $4fa9: $18 $8a

    ld h, [hl]                                    ; $4fab: $66
    add b                                         ; $4fac: $80
    rst $18                                       ; $4fad: $df
    nop                                           ; $4fae: $00
    and h                                         ; $4faf: $a4
    ret nc                                        ; $4fb0: $d0

    pop de                                        ; $4fb1: $d1
    jp $cd01                                      ; $4fb2: $c3 $01 $cd


    ld b, e                                       ; $4fb5: $43
    halt                                          ; $4fb6: $76
    ld bc, $8600                                  ; $4fb7: $01 $00 $86
    add d                                         ; $4fba: $82
    ld b, e                                       ; $4fbb: $43
    di                                            ; $4fbc: $f3
    nop                                           ; $4fbd: $00
    or d                                          ; $4fbe: $b2
    ld e, d                                       ; $4fbf: $5a
    ld b, e                                       ; $4fc0: $43
    reti                                          ; $4fc1: $d9


    inc bc                                        ; $4fc2: $03
    inc c                                         ; $4fc3: $0c
    ld h, [hl]                                    ; $4fc4: $66
    add b                                         ; $4fc5: $80
    rst $18                                       ; $4fc6: $df
    nop                                           ; $4fc7: $00
    and h                                         ; $4fc8: $a4
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    ld b, h                                       ; $4fcb: $44
    sub d                                         ; $4fcc: $92
    ld b, d                                       ; $4fcd: $42
    add d                                         ; $4fce: $82
    and $43                                       ; $4fcf: $e6 $43
    push af                                       ; $4fd1: $f5
    ld b, h                                       ; $4fd2: $44
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    pop bc                                        ; $4fd7: $c1
    nop                                           ; $4fd8: $00
    rst $38                                       ; $4fd9: $ff
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    rst $38                                       ; $4fe0: $ff
    rst $38                                       ; $4fe1: $ff
    rst $38                                       ; $4fe2: $ff
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    ld bc, $fe80                                  ; $4fe5: $01 $80 $fe
    ldh [rIE], a                                  ; $4fe8: $e0 $ff
    rst $38                                       ; $4fea: $ff
    rst $38                                       ; $4feb: $ff
    rst $38                                       ; $4fec: $ff
    rst $38                                       ; $4fed: $ff
    add sp, $00                                   ; $4fee: $e8 $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    ld [bc], a                                    ; $4ff2: $02
    nop                                           ; $4ff3: $00
    ld e, $05                                     ; $4ff4: $1e $05
    ld [bc], a                                    ; $4ff6: $02
    ld bc, $0621                                  ; $4ff7: $01 $21 $06
    ld [bc], a                                    ; $4ffa: $02
    ld [bc], a                                    ; $4ffb: $02
    daa                                           ; $4ffc: $27
    ld b, $02                                     ; $4ffd: $06 $02
    inc bc                                        ; $4fff: $03
    inc hl                                        ; $5000: $23
    rlca                                          ; $5001: $07
    ld [bc], a                                    ; $5002: $02
    inc b                                         ; $5003: $04
    inc e                                         ; $5004: $1c
    ld [$0502], sp                                ; $5005: $08 $02 $05
    ld h, $08                                     ; $5008: $26 $08
    ld [bc], a                                    ; $500a: $02
    ld b, $1f                                     ; $500b: $06 $1f
    add hl, bc                                    ; $500d: $09
    ld [bc], a                                    ; $500e: $02
    rlca                                          ; $500f: $07
    add hl, hl                                    ; $5010: $29
    add hl, bc                                    ; $5011: $09
    ld [bc], a                                    ; $5012: $02
    ld [$0b1b], sp                                ; $5013: $08 $1b $0b
    ld [bc], a                                    ; $5016: $02
    add hl, bc                                    ; $5017: $09
    daa                                           ; $5018: $27
    dec bc                                        ; $5019: $0b
    ld [bc], a                                    ; $501a: $02
    ld a, [bc]                                    ; $501b: $0a
    jr jr_062_502b                                ; $501c: $18 $0d

    ld [bc], a                                    ; $501e: $02
    dec bc                                        ; $501f: $0b
    dec e                                         ; $5020: $1d
    ld c, $02                                     ; $5021: $0e $02
    inc c                                         ; $5023: $0c
    rra                                           ; $5024: $1f
    rrca                                          ; $5025: $0f
    ld [bc], a                                    ; $5026: $02
    dec c                                         ; $5027: $0d
    inc hl                                        ; $5028: $23
    rrca                                          ; $5029: $0f
    ld [bc], a                                    ; $502a: $02

jr_062_502b:
    ld c, $1b                                     ; $502b: $0e $1b
    db $10                                        ; $502d: $10
    ld [bc], a                                    ; $502e: $02
    rrca                                          ; $502f: $0f
    dec h                                         ; $5030: $25
    ld de, $1002                                  ; $5031: $11 $02 $10
    inc hl                                        ; $5034: $23
    ld [de], a                                    ; $5035: $12
    ld [bc], a                                    ; $5036: $02
    ld de, $131d                                  ; $5037: $11 $1d $13
    ld [bc], a                                    ; $503a: $02
    ld [de], a                                    ; $503b: $12
    ld h, $13                                     ; $503c: $26 $13
    ld [bc], a                                    ; $503e: $02
    inc de                                        ; $503f: $13
    inc h                                         ; $5040: $24
    inc d                                         ; $5041: $14
    ld [bc], a                                    ; $5042: $02
    inc d                                         ; $5043: $14
    add hl, hl                                    ; $5044: $29
    inc d                                         ; $5045: $14
    ld [bc], a                                    ; $5046: $02
    dec d                                         ; $5047: $15
    inc e                                         ; $5048: $1c
    dec d                                         ; $5049: $15
    ld [bc], a                                    ; $504a: $02
    ld d, $20                                     ; $504b: $16 $20
    dec d                                         ; $504d: $15
    ld [bc], a                                    ; $504e: $02

Jump_062_504f:
    rla                                           ; $504f: $17
    ld h, $16                                     ; $5050: $26 $16
    ld [bc], a                                    ; $5052: $02
    jr jr_062_506f                                ; $5053: $18 $1a

    rla                                           ; $5055: $17
    ld [bc], a                                    ; $5056: $02
    add hl, de                                    ; $5057: $19
    dec e                                         ; $5058: $1d
    jr jr_062_505d                                ; $5059: $18 $02

    ld a, [de]                                    ; $505b: $1a
    daa                                           ; $505c: $27

jr_062_505d:
    jr jr_062_5061                                ; $505d: $18 $02

    dec de                                        ; $505f: $1b
    inc e                                         ; $5060: $1c

jr_062_5061:
    ld a, [de]                                    ; $5061: $1a
    ld [bc], a                                    ; $5062: $02
    inc e                                         ; $5063: $1c
    jr z, jr_062_5080                             ; $5064: $28 $1a

    ld [bc], a                                    ; $5066: $02
    dec e                                         ; $5067: $1d
    ld e, $1b                                     ; $5068: $1e $1b
    ld [bc], a                                    ; $506a: $02
    ld e, $2a                                     ; $506b: $1e $2a
    inc e                                         ; $506d: $1c
    ld [bc], a                                    ; $506e: $02

jr_062_506f:
    rra                                           ; $506f: $1f
    dec e                                         ; $5070: $1d
    dec e                                         ; $5071: $1d
    ld [bc], a                                    ; $5072: $02
    jr nz, jr_062_5093                            ; $5073: $20 $1e

    rra                                           ; $5075: $1f
    ld [bc], a                                    ; $5076: $02
    ld hl, $1f29                                  ; $5077: $21 $29 $1f
    ld [bc], a                                    ; $507a: $02
    ld [hl+], a                                   ; $507b: $22
    inc e                                         ; $507c: $1c
    ld hl, $2302                                  ; $507d: $21 $02 $23

jr_062_5080:
    dec e                                         ; $5080: $1d
    ld [hl+], a                                   ; $5081: $22
    ld [bc], a                                    ; $5082: $02
    inc h                                         ; $5083: $24
    add hl, de                                    ; $5084: $19
    inc hl                                        ; $5085: $23
    ld [bc], a                                    ; $5086: $02
    dec h                                         ; $5087: $25
    jr z, jr_062_50ad                             ; $5088: $28 $23

    ld [bc], a                                    ; $508a: $02
    ld h, $1b                                     ; $508b: $26 $1b
    inc h                                         ; $508d: $24
    ld [bc], a                                    ; $508e: $02
    daa                                           ; $508f: $27
    jr jr_062_50b7                                ; $5090: $18 $25

    ld [bc], a                                    ; $5092: $02

jr_062_5093:
    jr z, jr_062_50bc                             ; $5093: $28 $27

    ld h, $02                                     ; $5095: $26 $02
    add hl, hl                                    ; $5097: $29
    inc e                                         ; $5098: $1c
    daa                                           ; $5099: $27
    ld [bc], a                                    ; $509a: $02
    ld a, [hl+]                                   ; $509b: $2a
    ld a, [de]                                    ; $509c: $1a
    jr z, jr_062_50a1                             ; $509d: $28 $02

    dec hl                                        ; $509f: $2b
    inc hl                                        ; $50a0: $23

jr_062_50a1:
    jr z, @+$04                                   ; $50a1: $28 $02

    inc l                                         ; $50a3: $2c
    ld hl, $0229                                  ; $50a4: $21 $29 $02
    dec l                                         ; $50a7: $2d
    ld [hl+], a                                   ; $50a8: $22
    dec hl                                        ; $50a9: $2b
    ld [bc], a                                    ; $50aa: $02
    ld l, $1a                                     ; $50ab: $2e $1a

jr_062_50ad:
    inc l                                         ; $50ad: $2c
    ld [bc], a                                    ; $50ae: $02
    cpl                                           ; $50af: $2f
    jr nz, @+$30                                  ; $50b0: $20 $2e

    ld [bc], a                                    ; $50b2: $02
    jr nc, jr_062_50cd                            ; $50b3: $30 $18

    cpl                                           ; $50b5: $2f
    ld [bc], a                                    ; $50b6: $02

jr_062_50b7:
    ld sp, $3022                                  ; $50b7: $31 $22 $30
    ld [bc], a                                    ; $50ba: $02
    ld [hl-], a                                   ; $50bb: $32

jr_062_50bc:
    inc d                                         ; $50bc: $14
    ld [hl-], a                                   ; $50bd: $32
    ld [bc], a                                    ; $50be: $02
    inc sp                                        ; $50bf: $33
    rra                                           ; $50c0: $1f
    ld [hl-], a                                   ; $50c1: $32
    ld [bc], a                                    ; $50c2: $02
    inc [hl]                                      ; $50c3: $34
    ld d, $33                                     ; $50c4: $16 $33
    ld [bc], a                                    ; $50c6: $02
    dec [hl]                                      ; $50c7: $35
    dec e                                         ; $50c8: $1d
    ld a, [hl-]                                   ; $50c9: $3a
    ld [bc], a                                    ; $50ca: $02
    ld [hl], $17                                  ; $50cb: $36 $17

jr_062_50cd:
    dec sp                                        ; $50cd: $3b
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    reti                                          ; $50d1: $d9


    ld d, b                                       ; $50d2: $50
    ld a, [hl-]                                   ; $50d3: $3a
    ld d, h                                       ; $50d4: $54
    or b                                          ; $50d5: $b0
    ld e, b                                       ; $50d6: $58
    bit 3, b                                      ; $50d7: $cb $58
    cp a                                          ; $50d9: $bf
    ld c, $0e                                     ; $50da: $0e $0e
    dec c                                         ; $50dc: $0d
    dec c                                         ; $50dd: $0d
    dec c                                         ; $50de: $0d
    ld c, $fa                                     ; $50df: $0e $fa
    db $ed                                        ; $50e1: $ed
    ld c, l                                       ; $50e2: $4d
    rlca                                          ; $50e3: $07
    ld c, l                                       ; $50e4: $4d
    ld c, $0e                                     ; $50e5: $0e $0e
    db $fc                                        ; $50e7: $fc
    db $ed                                        ; $50e8: $ed
    reti                                          ; $50e9: $d9


    pop hl                                        ; $50ea: $e1
    sub $ef                                       ; $50eb: $d6 $ef
    push bc                                       ; $50ed: $c5
    ldh [$fd], a                                  ; $50ee: $e0 $fd
    rst $28                                       ; $50f0: $ef
    nop                                           ; $50f1: $00
    ld [$fff3], a                                 ; $50f2: $ea $f3 $ff
    rst $38                                       ; $50f5: $ff
    or e                                          ; $50f6: $b3
    push hl                                       ; $50f7: $e5
    sub d                                         ; $50f8: $92
    push hl                                       ; $50f9: $e5
    db $fc                                        ; $50fa: $fc
    db $ed                                        ; $50fb: $ed
    sub l                                         ; $50fc: $95
    pop af                                        ; $50fd: $f1
    ld b, e                                       ; $50fe: $43
    rst $28                                       ; $50ff: $ef
    add d                                         ; $5100: $82
    ld sp, hl                                     ; $5101: $f9
    nop                                           ; $5102: $00
    sub $ff                                       ; $5103: $d6 $ff
    inc d                                         ; $5105: $14
    rst $20                                       ; $5106: $e7
    ld a, [hl]                                    ; $5107: $7e
    add sp, -$10                                  ; $5108: $e8 $f0
    pop bc                                        ; $510a: $c1
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    ld h, [hl]                                    ; $510d: $66
    rst $28                                       ; $510e: $ef
    ld [hl], h                                    ; $510f: $74
    ld a, [$f26d]                                 ; $5110: $fa $6d $f2
    inc c                                         ; $5113: $0c
    add d                                         ; $5114: $82
    rst $20                                       ; $5115: $e7
    ld a, e                                       ; $5116: $7b
    ret nz                                        ; $5117: $c0

    dec l                                         ; $5118: $2d

jr_062_5119:
    dec l                                         ; $5119: $2d
    ld h, e                                       ; $511a: $63
    jp nz, $e37e                                  ; $511b: $c2 $7e $e3

    ld e, b                                       ; $511e: $58
    ret nz                                        ; $511f: $c0

    ld d, [hl]                                    ; $5120: $56
    ret nc                                        ; $5121: $d0

    cp $86                                        ; $5122: $fe $86
    push de                                       ; $5124: $d5
    dec c                                         ; $5125: $0d
    dec c                                         ; $5126: $0d
    ld l, l                                       ; $5127: $6d
    dec bc                                        ; $5128: $0b
    dec bc                                        ; $5129: $0b
    dec c                                         ; $512a: $0d
    ld c, l                                       ; $512b: $4d
    ldh [$bf], a                                  ; $512c: $e0 $bf
    ldh [rTIMA], a                                ; $512e: $e0 $05
    db $eb                                        ; $5130: $eb
    ld c, e                                       ; $5131: $4b
    db $fd                                        ; $5132: $fd
    add d                                         ; $5133: $82
    and $c1                                       ; $5134: $e6 $c1
    ldh [$0b], a                                  ; $5136: $e0 $0b
    dec c                                         ; $5138: $0d
    dec bc                                        ; $5139: $0b
    ld bc, $7b4d                                  ; $513a: $01 $4d $7b
    ldh [$ec], a                                  ; $513d: $e0 $ec
    rst $20                                       ; $513f: $e7
    add b                                         ; $5140: $80
    rst $18                                       ; $5141: $df
    rst $38                                       ; $5142: $ff
    and l                                         ; $5143: $a5
    add e                                         ; $5144: $83
    pop hl                                        ; $5145: $e1
    cp a                                          ; $5146: $bf
    ldh [$fd], a                                  ; $5147: $e0 $fd
    pop hl                                        ; $5149: $e1
    jp $2d4d                                      ; $514a: $c3 $4d $2d


    ld d, [hl]                                    ; $514d: $56
    rst $18                                       ; $514e: $df
    add [hl]                                      ; $514f: $86
    rst $00                                       ; $5150: $c7
    sub [hl]                                      ; $5151: $96
    and e                                         ; $5152: $a3
    add e                                         ; $5153: $83
    ld [c], a                                     ; $5154: $e2
    ld a, [bc]                                    ; $5155: $0a
    ld a, [bc]                                    ; $5156: $0a
    and c                                         ; $5157: $a1
    ld a, [hl+]                                   ; $5158: $2a
    ld a, h                                       ; $5159: $7c
    db $e3                                        ; $515a: $e3
    ld a, [hl]                                    ; $515b: $7e
    pop hl                                        ; $515c: $e1
    ld a, [hl]                                    ; $515d: $7e
    rst $18                                       ; $515e: $df
    call c, Call_000_0de7                         ; $515f: $dc $e7 $0d
    add l                                         ; $5162: $85
    pop hl                                        ; $5163: $e1
    dec hl                                        ; $5164: $2b
    rra                                           ; $5165: $1f
    ld a, [bc]                                    ; $5166: $0a
    ld a, [hl+]                                   ; $5167: $2a
    ld a, [bc]                                    ; $5168: $0a
    ld a, [hl+]                                   ; $5169: $2a
    ld c, e                                       ; $516a: $4b
    ld a, c                                       ; $516b: $79
    ld [c], a                                     ; $516c: $e2
    ld a, $e1                                     ; $516d: $3e $e1
    add b                                         ; $516f: $80
    rst $18                                       ; $5170: $df
    db $fc                                        ; $5171: $fc
    jr nc, jr_062_5119                            ; $5172: $30 $a5

    sbc b                                         ; $5174: $98
    jp nz, Jump_000_0b0b                          ; $5175: $c2 $0b $0b

    ld c, d                                       ; $5178: $4a
    ld a, [bc]                                    ; $5179: $0a
    dec bc                                        ; $517a: $0b
    dec hl                                        ; $517b: $2b
    add b                                         ; $517c: $80
    pop bc                                        ; $517d: $c1
    ldh [$3b], a                                  ; $517e: $e0 $3b
    pop hl                                        ; $5180: $e1
    ld a, d                                       ; $5181: $7a
    jp $c17e                                      ; $5182: $c3 $7e $c1


    ld a, d                                       ; $5185: $7a
    rst $08                                       ; $5186: $cf
    ld b, [hl]                                    ; $5187: $46
    xor a                                         ; $5188: $af
    xor [hl]                                      ; $5189: $ae
    add d                                         ; $518a: $82
    dec bc                                        ; $518b: $0b
    ld a, a                                       ; $518c: $7f
    dec bc                                        ; $518d: $0b
    ld l, e                                       ; $518e: $6b
    ld a, [hl+]                                   ; $518f: $2a
    dec bc                                        ; $5190: $0b
    ld c, e                                       ; $5191: $4b
    dec bc                                        ; $5192: $0b
    dec hl                                        ; $5193: $2b
    db $fc                                        ; $5194: $fc
    pop bc                                        ; $5195: $c1
    ld h, c                                       ; $5196: $61
    dec c                                         ; $5197: $0d
    add b                                         ; $5198: $80
    push hl                                       ; $5199: $e5
    cp d                                          ; $519a: $ba
    rst $10                                       ; $519b: $d7
    add e                                         ; $519c: $83
    xor b                                         ; $519d: $a8
    sub [hl]                                      ; $519e: $96
    add c                                         ; $519f: $81
    ld c, l                                       ; $51a0: $4d
    dec l                                         ; $51a1: $2d
    add e                                         ; $51a2: $83
    ret nz                                        ; $51a3: $c0

    inc bc                                        ; $51a4: $03
    ld l, e                                       ; $51a5: $6b
    ld l, e                                       ; $51a6: $6b
    cp a                                          ; $51a7: $bf
    call nz, $e2c0                                ; $51a8: $c4 $c0 $e2
    halt                                          ; $51ab: $76
    and [hl]                                      ; $51ac: $a6
    adc l                                         ; $51ad: $8d
    adc h                                         ; $51ae: $8c
    ld b, e                                       ; $51af: $43
    adc c                                         ; $51b0: $89
    jp c, Jump_000_3ec7                           ; $51b1: $da $c7 $3e

    cp a                                          ; $51b4: $bf
    pop hl                                        ; $51b5: $e1
    ld a, [bc]                                    ; $51b6: $0a
    ld l, d                                       ; $51b7: $6a
    ld c, e                                       ; $51b8: $4b
    ld c, e                                       ; $51b9: $4b
    ld l, e                                       ; $51ba: $6b
    ld a, $e2                                     ; $51bb: $3e $e2
    nop                                           ; $51bd: $00
    db $eb                                        ; $51be: $eb
    ldh a, [rBCPS]                                ; $51bf: $f0 $68
    and [hl]                                      ; $51c1: $a6
    sub $90                                       ; $51c2: $d6 $90
    inc d                                         ; $51c4: $14
    add [hl]                                      ; $51c5: $86
    ld a, [hl]                                    ; $51c6: $7e
    ldh [rWY], a                                  ; $51c7: $e0 $4a
    ld c, d                                       ; $51c9: $4a
    ld a, [bc]                                    ; $51ca: $0a
    ld c, d                                       ; $51cb: $4a
    ldh [$ba], a                                  ; $51cc: $e0 $ba
    pop bc                                        ; $51ce: $c1
    nop                                           ; $51cf: $00
    push hl                                       ; $51d0: $e5
    ld l, [hl]                                    ; $51d1: $6e
    adc c                                         ; $51d2: $89
    ld a, [hl]                                    ; $51d3: $7e
    db $dd                                        ; $51d4: $dd
    xor d                                         ; $51d5: $aa
    ld h, c                                       ; $51d6: $61
    ld l, e                                       ; $51d7: $6b
    ld a, [bc]                                    ; $51d8: $0a
    ld a, [bc]                                    ; $51d9: $0a
    add d                                         ; $51da: $82
    cp l                                          ; $51db: $bd
    ret nz                                        ; $51dc: $c0

    ld a, [bc]                                    ; $51dd: $0a
    cp e                                          ; $51de: $bb
    ldh [$3a], a                                  ; $51df: $e0 $3a
    and a                                         ; $51e1: $a7
    add b                                         ; $51e2: $80
    rst $18                                       ; $51e3: $df
    sub d                                         ; $51e4: $92
    add l                                         ; $51e5: $85
    cp l                                          ; $51e6: $bd
    jp nz, Jump_000_060d                          ; $51e7: $c2 $0d $06

    cp [hl]                                       ; $51ea: $be
    ret nz                                        ; $51eb: $c0

    ld a, [bc]                                    ; $51ec: $0a
    ld a, [bc]                                    ; $51ed: $0a
    ld a, [hl-]                                   ; $51ee: $3a
    and d                                         ; $51ef: $a2
    cp $e3                                        ; $51f0: $fe $e3
    halt                                          ; $51f2: $76
    ld h, h                                       ; $51f3: $64
    nop                                           ; $51f4: $00
    cp b                                          ; $51f5: $b8
    ld l, [hl]                                    ; $51f6: $6e
    ld h, l                                       ; $51f7: $65
    ld l, [hl]                                    ; $51f8: $6e
    add d                                         ; $51f9: $82
    and b                                         ; $51fa: $a0
    dec c                                         ; $51fb: $0d
    dec bc                                        ; $51fc: $0b
    dec c                                         ; $51fd: $0d
    cp a                                          ; $51fe: $bf
    ldh [$0b], a                                  ; $51ff: $e0 $0b
    dec hl                                        ; $5201: $2b
    ld sp, $9061                                  ; $5202: $31 $61 $90
    jr c, @-$5c                                   ; $5205: $38 $a2

    rst $38                                       ; $5207: $ff
    sbc a                                         ; $5208: $9f
    inc bc                                        ; $5209: $03
    jp Jump_062_42fe                              ; $520a: $c3 $fe $42


    dec l                                         ; $520d: $2d
    ret nz                                        ; $520e: $c0

    ld [c], a                                     ; $520f: $e2
    ld a, h                                       ; $5210: $7c
    pop bc                                        ; $5211: $c1
    dec hl                                        ; $5212: $2b
    add c                                         ; $5213: $81
    dec c                                         ; $5214: $0d
    ld a, [$7ac2]                                 ; $5215: $fa $c2 $7a
    db $e3                                        ; $5218: $e3
    inc hl                                        ; $5219: $23
    ld l, l                                       ; $521a: $6d
    jp $fd4f                                      ; $521b: $c3 $4f $fd


    ld b, h                                       ; $521e: $44
    dec a                                         ; $521f: $3d
    pop bc                                        ; $5220: $c1
    dec c                                         ; $5221: $0d
    ld a, $3b                                     ; $5222: $3e $3b
    jp Jump_000_2b2b                              ; $5224: $c3 $2b $2b


    ld a, [bc]                                    ; $5227: $0a
    ld c, d                                       ; $5228: $4a
    ld c, e                                       ; $5229: $4b
    ld [hl], e                                    ; $522a: $73
    add d                                         ; $522b: $82
    sbc e                                         ; $522c: $9b
    rst $20                                       ; $522d: $e7
    ld h, b                                       ; $522e: $60
    ld d, [hl]                                    ; $522f: $56
    ld a, c                                       ; $5230: $79
    sub d                                         ; $5231: $92
    ld b, d                                       ; $5232: $42
    db $fd                                        ; $5233: $fd
    and c                                         ; $5234: $a1
    ld a, a                                       ; $5235: $7f
    db $e4                                        ; $5236: $e4
    halt                                          ; $5237: $76
    add b                                         ; $5238: $80
    ld a, [bc]                                    ; $5239: $0a
    ld l, d                                       ; $523a: $6a
    rst $30                                       ; $523b: $f7
    add d                                         ; $523c: $82
    ld h, b                                       ; $523d: $60
    halt                                          ; $523e: $76
    ld b, a                                       ; $523f: $47
    scf                                           ; $5240: $37
    cp $3f                                        ; $5241: $fe $3f
    pop hl                                        ; $5243: $e1
    call Call_000_3c61                            ; $5244: $cd $61 $3c
    and d                                         ; $5247: $a2
    dec hl                                        ; $5248: $2b
    ld a, [hl+]                                   ; $5249: $2a
    push af                                       ; $524a: $f5
    add c                                         ; $524b: $81
    ld h, c                                       ; $524c: $61
    dec bc                                        ; $524d: $0b
    halt                                          ; $524e: $76
    adc c                                         ; $524f: $89
    add b                                         ; $5250: $80
    sub $fc                                       ; $5251: $d6 $fc
    add l                                         ; $5253: $85
    call nz, Call_000_2b61                        ; $5254: $c4 $61 $2b
    ld l, e                                       ; $5257: $6b
    cp a                                          ; $5258: $bf
    db $e3                                        ; $5259: $e3
    nop                                           ; $525a: $00
    or e                                          ; $525b: $b3
    add b                                         ; $525c: $80
    ret nz                                        ; $525d: $c0

    ld [c], a                                     ; $525e: $e2
    ld hl, sp+$67                                 ; $525f: $f8 $67
    add b                                         ; $5261: $80
    sbc $bb                                       ; $5262: $de $bb
    add c                                         ; $5264: $81
    ld [hl], a                                    ; $5265: $77
    add c                                         ; $5266: $81
    ld a, [hl]                                    ; $5267: $7e
    db $e3                                        ; $5268: $e3
    db $f4                                        ; $5269: $f4
    and c                                         ; $526a: $a1
    ld b, b                                       ; $526b: $40
    rst $30                                       ; $526c: $f7
    add b                                         ; $526d: $80
    db $e3                                        ; $526e: $e3
    ld a, $00                                     ; $526f: $3e $00
    ret z                                         ; $5271: $c8

    ret nz                                        ; $5272: $c0

    and $32                                       ; $5273: $e6 $32
    add d                                         ; $5275: $82
    ld [hl], h                                    ; $5276: $74
    add b                                         ; $5277: $80
    dec c                                         ; $5278: $0d
    ret nz                                        ; $5279: $c0

    pop hl                                        ; $527a: $e1
    ld [$40f8], sp                                ; $527b: $08 $f8 $40
    add b                                         ; $527e: $80
    rst $18                                       ; $527f: $df
    ld a, [$0d65]                                 ; $5280: $fa $65 $0d
    add b                                         ; $5283: $80
    add b                                         ; $5284: $80
    ret nz                                        ; $5285: $c0

    db $e3                                        ; $5286: $e3
    or e                                          ; $5287: $b3
    jp $e380                                      ; $5288: $c3 $80 $e3


    stop                                          ; $528b: $10 $00
    cp b                                          ; $528d: $b8
    ld e, b                                       ; $528e: $58
    ld h, l                                       ; $528f: $65
    ld a, [hl]                                    ; $5290: $7e
    and h                                         ; $5291: $a4
    dec sp                                        ; $5292: $3b
    and b                                         ; $5293: $a0
    ld c, e                                       ; $5294: $4b
    ret nz                                        ; $5295: $c0

    rst $20                                       ; $5296: $e7
    scf                                           ; $5297: $37
    add c                                         ; $5298: $81
    inc l                                         ; $5299: $2c
    ld e, a                                       ; $529a: $5f
    inc b                                         ; $529b: $04
    db $ec                                        ; $529c: $ec
    ld b, $4c                                     ; $529d: $06 $4c
    and e                                         ; $529f: $a3
    ld l, e                                       ; $52a0: $6b
    ld [bc], a                                    ; $52a1: $02
    add b                                         ; $52a2: $80
    rst $30                                       ; $52a3: $f7
    ld b, d                                       ; $52a4: $42
    push af                                       ; $52a5: $f5
    ld h, c                                       ; $52a6: $61
    or $44                                        ; $52a7: $f6 $44
    ld l, l                                       ; $52a9: $6d
    dec a                                         ; $52aa: $3d
    or h                                          ; $52ab: $b4
    ld a, d                                       ; $52ac: $7a
    ld h, a                                       ; $52ad: $67
    inc c                                         ; $52ae: $0c
    ld b, c                                       ; $52af: $41
    dec l                                         ; $52b0: $2d
    or $a2                                        ; $52b1: $f6 $a2
    dec bc                                        ; $52b3: $0b
    ld c, e                                       ; $52b4: $4b
    cp [hl]                                       ; $52b5: $be
    and b                                         ; $52b6: $a0
    ld l, l                                       ; $52b7: $6d
    nop                                           ; $52b8: $00
    nop                                           ; $52b9: $00
    cp [hl]                                       ; $52ba: $be
    cp $ac                                        ; $52bb: $fe $ac
    add a                                         ; $52bd: $87
    push hl                                       ; $52be: $e5
    ret nz                                        ; $52bf: $c0

    pop hl                                        ; $52c0: $e1
    pop bc                                        ; $52c1: $c1
    ldh [$c8], a                                  ; $52c2: $e0 $c8
    cp a                                          ; $52c4: $bf
    jp Jump_062_7ea5                              ; $52c5: $c3 $a5 $7e


    jp $fe00                                      ; $52c8: $c3 $00 $fe


    ld hl, $e4c1                                  ; $52cb: $21 $c1 $e4
    or [hl]                                       ; $52ce: $b6
    ld h, b                                       ; $52cf: $60
    nop                                           ; $52d0: $00
    cp a                                          ; $52d1: $bf
    ld a, d                                       ; $52d2: $7a
    ld h, h                                       ; $52d3: $64
    xor b                                         ; $52d4: $a8
    push bc                                       ; $52d5: $c5
    cp h                                          ; $52d6: $bc
    add d                                         ; $52d7: $82
    add c                                         ; $52d8: $81
    db $e3                                        ; $52d9: $e3
    nop                                           ; $52da: $00
    ld [hl], a                                    ; $52db: $77
    ld h, c                                       ; $52dc: $61
    ld [hl], h                                    ; $52dd: $74
    ld h, $00                                     ; $52de: $26 $00
    cp a                                          ; $52e0: $bf
    add [hl]                                      ; $52e1: $86
    dec b                                         ; $52e2: $05
    call nz, $c181                                ; $52e3: $c4 $81 $c1
    push hl                                       ; $52e6: $e5
    ld b, c                                       ; $52e7: $41
    ldh [$e4], a                                  ; $52e8: $e0 $e4
    ld h, [hl]                                    ; $52ea: $66
    nop                                           ; $52eb: $00
    dec a                                         ; $52ec: $3d
    rst $38                                       ; $52ed: $ff
    ld hl, sp+$25                                 ; $52ee: $f8 $25
    ld a, [hl]                                    ; $52f0: $7e
    ld b, d                                       ; $52f1: $42
    call nz, $c3c0                                ; $52f2: $c4 $c0 $c3
    jp nz, $cc5e                                  ; $52f5: $c2 $5e $cc

    add b                                         ; $52f8: $80
    ld [hl], e                                    ; $52f9: $73
    ld a, [hl]                                    ; $52fa: $7e
    ld [$6d01], sp                                ; $52fb: $08 $01 $6d
    add c                                         ; $52fe: $81
    db $e4                                        ; $52ff: $e4
    ld b, e                                       ; $5300: $43
    add b                                         ; $5301: $80
    inc b                                         ; $5302: $04
    and e                                         ; $5303: $a3
    ld h, [hl]                                    ; $5304: $66
    and h                                         ; $5305: $a4
    nop                                           ; $5306: $00
    cp a                                          ; $5307: $bf
    ld a, [hl]                                    ; $5308: $7e
    dec b                                         ; $5309: $05
    inc a                                         ; $530a: $3c
    ld b, d                                       ; $530b: $42
    nop                                           ; $530c: $00
    ld a, d                                       ; $530d: $7a
    ld b, b                                       ; $530e: $40
    ret nz                                        ; $530f: $c0

    ldh [$5d], a                                  ; $5310: $e0 $5d
    ld c, $86                                     ; $5312: $0e $86
    ret c                                         ; $5314: $d8

    ld a, [hl]                                    ; $5315: $7e
    inc bc                                        ; $5316: $03
    ld b, c                                       ; $5317: $41
    db $e4                                        ; $5318: $e4
    ld b, $c1                                     ; $5319: $06 $c1
    ld b, h                                       ; $531b: $44
    add d                                         ; $531c: $82
    nop                                           ; $531d: $00
    add d                                         ; $531e: $82
    rst $20                                       ; $531f: $e7
    nop                                           ; $5320: $00
    ld d, l                                       ; $5321: $55
    add d                                         ; $5322: $82
    db $eb                                        ; $5323: $eb
    ld b, e                                       ; $5324: $43
    ret nz                                        ; $5325: $c0

    ret nz                                        ; $5326: $c0

    ld [c], a                                     ; $5327: $e2
    ei                                            ; $5328: $fb
    inc bc                                        ; $5329: $03
    ld d, b                                       ; $532a: $50
    add hl, de                                    ; $532b: $19
    add [hl]                                      ; $532c: $86
    rst $08                                       ; $532d: $cf
    nop                                           ; $532e: $00
    ld a, l                                       ; $532f: $7d
    ld [bc], a                                    ; $5330: $02
    add c                                         ; $5331: $81
    add sp, $04                                   ; $5332: $e8 $04
    add l                                         ; $5334: $85
    adc d                                         ; $5335: $8a
    rst $18                                       ; $5336: $df
    inc b                                         ; $5337: $04
    and $41                                       ; $5338: $e6 $41
    inc h                                         ; $533a: $24
    ld a, h                                       ; $533b: $7c
    inc bc                                        ; $533c: $03
    inc b                                         ; $533d: $04
    or e                                          ; $533e: $b3
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    xor d                                         ; $5341: $aa
    inc b                                         ; $5342: $04
    inc hl                                        ; $5343: $23
    add d                                         ; $5344: $82
    add sp, -$79                                  ; $5345: $e8 $87
    and l                                         ; $5347: $a5
    ccf                                           ; $5348: $3f
    add c                                         ; $5349: $81
    inc b                                         ; $534a: $04
    and [hl]                                      ; $534b: $a6
    add b                                         ; $534c: $80
    dec d                                         ; $534d: $15
    add $02                                       ; $534e: $c6 $02
    inc b                                         ; $5350: $04
    add [hl]                                      ; $5351: $86

jr_062_5352:
    ret z                                         ; $5352: $c8

    ld a, [bc]                                    ; $5353: $0a
    add d                                         ; $5354: $82
    ld l, e                                       ; $5355: $6b
    add $a3                                       ; $5356: $c6 $a3
    jp $80a2                                      ; $5358: $c3 $a2 $80


    call c, $0286                                 ; $535b: $dc $86 $02
    add [hl]                                      ; $535e: $86
    ld h, [hl]                                    ; $535f: $66
    nop                                           ; $5360: $00
    ret nz                                        ; $5361: $c0

    push hl                                       ; $5362: $e5
    add $a1                                       ; $5363: $c6 $a1
    add d                                         ; $5365: $82
    ld [c], a                                     ; $5366: $e2
    add sp, $25                                   ; $5367: $e8 $25
    nop                                           ; $5369: $00
    cp c                                          ; $536a: $b9
    jr nc, @-$78                                  ; $536b: $30 $86

    inc bc                                        ; $536d: $03
    rst $20                                       ; $536e: $e7
    ld a, $04                                     ; $536f: $3e $04
    nop                                           ; $5371: $00
    pop bc                                        ; $5372: $c1
    pop hl                                        ; $5373: $e1
    dec c                                         ; $5374: $0d
    sub h                                         ; $5375: $94
    ld [$c1ae], sp                                ; $5376: $08 $ae $c1
    rst $28                                       ; $5379: $ef
    add [hl]                                      ; $537a: $86
    add l                                         ; $537b: $85
    and d                                         ; $537c: $a2
    rlca                                          ; $537d: $07
    ld a, [bc]                                    ; $537e: $0a
    cp l                                          ; $537f: $bd
    ret nc                                        ; $5380: $d0

    ld b, b                                       ; $5381: $40
    ld bc, $c52b                                  ; $5382: $01 $2b $c5
    add c                                         ; $5385: $81
    cp $e1                                        ; $5386: $fe $e1
    ld b, h                                       ; $5388: $44
    and l                                         ; $5389: $a5
    add b                                         ; $538a: $80
    rst $18                                       ; $538b: $df
    add [hl]                                      ; $538c: $86
    rlca                                          ; $538d: $07
    bit 4, l                                      ; $538e: $cb $65
    ld b, d                                       ; $5390: $42
    add d                                         ; $5391: $82
    nop                                           ; $5392: $00
    halt                                          ; $5393: $76
    and c                                         ; $5394: $a1
    add [hl]                                      ; $5395: $86
    db $10                                        ; $5396: $10
    add b                                         ; $5397: $80
    push de                                       ; $5398: $d5
    ld [$c041], sp                                ; $5399: $08 $41 $c0
    ld [$80c5], a                                 ; $539c: $ea $c5 $80
    ld c, d                                       ; $539f: $4a
    rst $38                                       ; $53a0: $ff
    ld b, b                                       ; $53a1: $40
    pop bc                                        ; $53a2: $c1
    inc b                                         ; $53a3: $04
    ld [$4947], sp                                ; $53a4: $08 $47 $49
    db $e3                                        ; $53a7: $e3
    dec bc                                        ; $53a8: $0b
    ld b, $63                                     ; $53a9: $06 $63
    ret nz                                        ; $53ab: $c0

    ld [c], a                                     ; $53ac: $e2
    add d                                         ; $53ad: $82
    push hl                                       ; $53ae: $e5
    sub d                                         ; $53af: $92
    ld d, d                                       ; $53b0: $52
    add [hl]                                      ; $53b1: $86
    dec bc                                        ; $53b2: $0b
    nop                                           ; $53b3: $00
    ld [$4061], sp                                ; $53b4: $08 $61 $40
    push hl                                       ; $53b7: $e5
    ret nz                                        ; $53b8: $c0

    and $93                                       ; $53b9: $e6 $93
    ld d, [hl]                                    ; $53bb: $56
    ld a, [hl]                                    ; $53bc: $7e
    pop de                                        ; $53bd: $d1
    nop                                           ; $53be: $00
    db $ec                                        ; $53bf: $ec
    ld b, d                                       ; $53c0: $42
    call z, $ff35                                 ; $53c1: $cc $35 $ff
    add hl, sp                                    ; $53c4: $39
    dec l                                         ; $53c5: $2d
    rst $00                                       ; $53c6: $c7
    and b                                         ; $53c7: $a0
    add l                                         ; $53c8: $85
    and b                                         ; $53c9: $a0
    dec c                                         ; $53ca: $0d
    dec bc                                        ; $53cb: $0b
    ld l, e                                       ; $53cc: $6b
    ret nz                                        ; $53cd: $c0

    jr nz, jr_062_5352                            ; $53ce: $20 $82

    db $db                                        ; $53d0: $db
    ld e, b                                       ; $53d1: $58
    ld [hl], e                                    ; $53d2: $73
    adc l                                         ; $53d3: $8d
    add [hl]                                      ; $53d4: $86
    dec h                                         ; $53d5: $25
    cp a                                          ; $53d6: $bf
    ldh [rWX], a                                  ; $53d7: $e0 $4b
    dec l                                         ; $53d9: $2d
    add c                                         ; $53da: $81
    and b                                         ; $53db: $a0
    dec hl                                        ; $53dc: $2b
    add d                                         ; $53dd: $82
    add $03                                       ; $53de: $c6 $03
    dec l                                         ; $53e0: $2d
    dec l                                         ; $53e1: $2d
    cp a                                          ; $53e2: $bf
    ld b, e                                       ; $53e3: $43
    add b                                         ; $53e4: $80
    ld a, d                                       ; $53e5: $7a
    cp $c5                                        ; $53e6: $fe $c5
    add $c4                                       ; $53e8: $c6 $c4
    jp nz, Jump_000_0a01                          ; $53ea: $c2 $01 $0a

    ld b, l                                       ; $53ed: $45
    nop                                           ; $53ee: $00
    ret nz                                        ; $53ef: $c0

    ldh [rLYC], a                                 ; $53f0: $e0 $45
    rst $38                                       ; $53f2: $ff
    add [hl]                                      ; $53f3: $86
    inc b                                         ; $53f4: $04
    push bc                                       ; $53f5: $c5
    ld [hl+], a                                   ; $53f6: $22
    ld [hl], l                                    ; $53f7: $75
    and d                                         ; $53f8: $a2
    add [hl]                                      ; $53f9: $86
    and a                                         ; $53fa: $a7
    ret nz                                        ; $53fb: $c0

    di                                            ; $53fc: $f3
    or b                                          ; $53fd: $b0
    pop de                                        ; $53fe: $d1
    nop                                           ; $53ff: $00
    cp e                                          ; $5400: $bb
    ld b, c                                       ; $5401: $41
    call nz, $6ee3                                ; $5402: $c4 $e3 $6e
    ld l, e                                       ; $5405: $6b
    add b                                         ; $5406: $80
    db $dd                                        ; $5407: $dd
    sbc [hl]                                      ; $5408: $9e
    ld c, b                                       ; $5409: $48
    db $fd                                        ; $540a: $fd
    db $e4                                        ; $540b: $e4
    inc c                                         ; $540c: $0c
    and e                                         ; $540d: $a3
    add d                                         ; $540e: $82
    db $e3                                        ; $540f: $e3
    nop                                           ; $5410: $00
    ld b, e                                       ; $5411: $43
    rst $38                                       ; $5412: $ff
    sub h                                         ; $5413: $94
    db $eb                                        ; $5414: $eb
    ld [hl+], a                                   ; $5415: $22
    dec bc                                        ; $5416: $0b
    ret nz                                        ; $5417: $c0

    rst $30                                       ; $5418: $f7
    jr nc, @+$4f                                  ; $5419: $30 $4d

    ld hl, sp+$65                                 ; $541b: $f8 $65
    ld hl, sp-$17                                 ; $541d: $f8 $e9
    ld e, h                                       ; $541f: $5c
    ld de, $8000                                  ; $5420: $11 $00 $80
    ld [de], a                                    ; $5423: $12
    sbc d                                         ; $5424: $9a
    db $f4                                        ; $5425: $f4
    ld b, e                                       ; $5426: $43
    rst $38                                       ; $5427: $ff
    ld e, c                                       ; $5428: $59
    and $18                                       ; $5429: $e6 $18
    ld b, h                                       ; $542b: $44
    ld a, d                                       ; $542c: $7a
    jp hl                                         ; $542d: $e9


    ld b, [hl]                                    ; $542e: $46
    reti                                          ; $542f: $d9


    add b                                         ; $5430: $80
    ld de, $dc00                                  ; $5431: $11 $00 $dc
    rst $38                                       ; $5434: $ff
    add b                                         ; $5435: $80
    rlca                                          ; $5436: $07
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    cp a                                          ; $543a: $bf
    db $dd                                        ; $543b: $dd
    sbc $a0                                       ; $543c: $de $a0
    and b                                         ; $543e: $a0
    and b                                         ; $543f: $a0
    call c, $eefa                                 ; $5440: $dc $fa $ee
    and b                                         ; $5443: $a0
    di                                            ; $5444: $f3
    ret c                                         ; $5445: $d8

    reti                                          ; $5446: $d9


    db $fc                                        ; $5447: $fc
    ld a, [c]                                     ; $5448: $f2
    sub $ee                                       ; $5449: $d6 $ee
    ld [c], a                                     ; $544b: $e2
    db $e3                                        ; $544c: $e3
    db $e4                                        ; $544d: $e4
    rst $18                                       ; $544e: $df
    ei                                            ; $544f: $fb
    ldh [$e1], a                                  ; $5450: $e0 $e1
    ld a, [$a0ec]                                 ; $5452: $fa $ec $a0
    sub $d7                                       ; $5455: $d6 $d7
    jp c, $fcdb                                   ; $5457: $da $db $fc

    db $fc                                        ; $545a: $fc
    pop af                                        ; $545b: $f1
    sub $ee                                       ; $545c: $d6 $ee
    rst $18                                       ; $545e: $df
    add sp, -$17                                  ; $545f: $e8 $e9
    ld [$e6e5], a                                 ; $5461: $ea $e5 $e6
    sub c                                         ; $5464: $91
    rst $20                                       ; $5465: $e7
    ld a, [$82ec]                                 ; $5466: $fa $ec $82
    push af                                       ; $5469: $f5
    sub $ef                                       ; $546a: $d6 $ef
    push hl                                       ; $546c: $e5
    ld b, e                                       ; $546d: $43
    pop af                                        ; $546e: $f1
    add d                                         ; $546f: $82
    pop hl                                        ; $5470: $e1
    ret nc                                        ; $5471: $d0

    ld sp, $fcd1                                  ; $5472: $31 $d1 $fc
    db $eb                                        ; $5475: $eb
    ld l, [hl]                                    ; $5476: $6e
    pop hl                                        ; $5477: $e1
    add hl, de                                    ; $5478: $19
    rst $28                                       ; $5479: $ef
    call c, Call_062_43dd                         ; $547a: $dc $dd $43
    ldh a, [rDIV]                                 ; $547d: $f0 $04
    ld [c], a                                     ; $547f: $e2
    dec de                                        ; $5480: $1b
    jp nc, $fcd3                                  ; $5481: $d2 $d3 $fc

    db $eb                                        ; $5484: $eb

jr_062_5485:
    ret c                                         ; $5485: $d8

    reti                                          ; $5486: $d9


    add hl, de                                    ; $5487: $19
    rst $28                                       ; $5488: $ef
    rlca                                          ; $5489: $07
    pop hl                                        ; $548a: $e1
    ld b, e                                       ; $548b: $43
    rst $28                                       ; $548c: $ef
    ld e, $82                                     ; $548d: $1e $82
    db $e3                                        ; $548f: $e3
    call nc, $a0d5                                ; $5490: $d4 $d5 $a0
    and b                                         ; $5493: $a0
    db $fc                                        ; $5494: $fc
    db $e3                                        ; $5495: $e3
    db $f4                                        ; $5496: $f4
    pop hl                                        ; $5497: $e1
    ldh a, [$c1]                                  ; $5498: $f0 $c1
    ldh a, [rSCX]                                 ; $549a: $f0 $43
    ldh a, [rTAC]                                 ; $549c: $f0 $07
    ldh [$86], a                                  ; $549e: $e0 $86
    db $d3                                        ; $54a0: $d3
    add d                                         ; $54a1: $82
    pop hl                                        ; $54a2: $e1
    sbc a                                         ; $54a3: $9f
    sbc l                                         ; $54a4: $9d
    sbc l                                         ; $54a5: $9d
    and d                                         ; $54a6: $a2
    add c                                         ; $54a7: $81
    sbc a                                         ; $54a8: $9f
    ld h, e                                       ; $54a9: $63
    ret nz                                        ; $54aa: $c0

    add d                                         ; $54ab: $82
    db $e3                                        ; $54ac: $e3
    ld l, h                                       ; $54ad: $6c
    pop bc                                        ; $54ae: $c1
    ld d, [hl]                                    ; $54af: $56
    pop de                                        ; $54b0: $d1
    add [hl]                                      ; $54b1: $86
    pop de                                        ; $54b2: $d1
    add d                                         ; $54b3: $82
    ld [c], a                                     ; $54b4: $e2
    sbc a                                         ; $54b5: $9f
    rra                                           ; $54b6: $1f
    sbc h                                         ; $54b7: $9c
    ld b, [hl]                                    ; $54b8: $46
    ld b, [hl]                                    ; $54b9: $46
    xor [hl]                                      ; $54ba: $ae
    sbc h                                         ; $54bb: $9c
    cp a                                          ; $54bc: $bf
    ldh [$7e], a                                  ; $54bd: $e0 $7e
    pop hl                                        ; $54bf: $e1
    ld [hl], d                                    ; $54c0: $72
    pop bc                                        ; $54c1: $c1
    or b                                          ; $54c2: $b0
    jr jr_062_5485                                ; $54c3: $18 $c0

    dec a                                         ; $54c5: $3d
    ldh a, [$86]                                  ; $54c6: $f0 $86
    pop de                                        ; $54c8: $d1
    inc b                                         ; $54c9: $04
    ldh [$9f], a                                  ; $54ca: $e0 $9f
    and d                                         ; $54cc: $a2
    pop bc                                        ; $54cd: $c1
    ldh [rDMA], a                                 ; $54ce: $e0 $46
    ccf                                           ; $54d0: $3f
    xor a                                         ; $54d1: $af
    ld b, [hl]                                    ; $54d2: $46
    sbc h                                         ; $54d3: $9c
    sbc l                                         ; $54d4: $9d
    sbc l                                         ; $54d5: $9d
    sbc a                                         ; $54d6: $9f
    ld a, [hl]                                    ; $54d7: $7e
    rst $20                                       ; $54d8: $e7
    add b                                         ; $54d9: $80
    sbc $30                                       ; $54da: $de $30
    inc b                                         ; $54dc: $04
    push hl                                       ; $54dd: $e5
    add e                                         ; $54de: $83
    ld [c], a                                     ; $54df: $e2
    cp a                                          ; $54e0: $bf
    ldh [$fd], a                                  ; $54e1: $e0 $fd
    pop hl                                        ; $54e3: $e1
    sbc h                                         ; $54e4: $9c
    sbc a                                         ; $54e5: $9f
    ld a, [hl]                                    ; $54e6: $7e
    db $e3                                        ; $54e7: $e3
    sbc c                                         ; $54e8: $99
    or c                                          ; $54e9: $b1
    ld hl, sp-$80                                 ; $54ea: $f8 $80
    res 0, [hl]                                   ; $54ec: $cb $86
    add $44                                       ; $54ee: $c6 $44
    pop hl                                        ; $54f0: $e1
    ld b, [hl]                                    ; $54f1: $46
    xor a                                         ; $54f2: $af
    ld c, b                                       ; $54f3: $48
    ld c, [hl]                                    ; $54f4: $4e
    ld c, b                                       ; $54f5: $48
    ld h, c                                       ; $54f6: $61
    ld b, l                                       ; $54f7: $45
    cp c                                          ; $54f8: $b9
    pop hl                                        ; $54f9: $e1
    dec sp                                        ; $54fa: $3b
    ldh [$72], a                                  ; $54fb: $e0 $72
    pop bc                                        ; $54fd: $c1
    add b                                         ; $54fe: $80
    rst $18                                       ; $54ff: $df
    and b                                         ; $5500: $a0
    and b                                         ; $5501: $a0
    adc d                                         ; $5502: $8a
    and c                                         ; $5503: $a1
    ld a, [$c086]                                 ; $5504: $fa $86 $c0
    sbc [hl]                                      ; $5507: $9e
    ld b, h                                       ; $5508: $44
    ldh [rLYC], a                                 ; $5509: $e0 $45
    ld b, a                                       ; $550b: $47
    ld d, h                                       ; $550c: $54
    ld d, h                                       ; $550d: $54
    ld d, d                                       ; $550e: $52
    sbc $c0                                       ; $550f: $de $c0
    ldh [$af], a                                  ; $5511: $e0 $af
    ld b, [hl]                                    ; $5513: $46
    ld b, [hl]                                    ; $5514: $46
    sbc [hl]                                      ; $5515: $9e
    halt                                          ; $5516: $76
    ret nz                                        ; $5517: $c0

    sub $d7                                       ; $5518: $d6 $d7
    add sp, -$80                                  ; $551a: $e8 $80
    rst $18                                       ; $551c: $df
    db $f4                                        ; $551d: $f4
    add c                                         ; $551e: $81
    sub [hl]                                      ; $551f: $96
    jp nz, Jump_062_449e                          ; $5520: $c2 $9e $44

    ldh [rHDMA1], a                               ; $5523: $e0 $51
    ld e, b                                       ; $5525: $58
    cp l                                          ; $5526: $bd
    add hl, bc                                    ; $5527: $09
    cp l                                          ; $5528: $bd
    add c                                         ; $5529: $81
    ldh [$3b], a                                  ; $552a: $e0 $3b
    pop hl                                        ; $552c: $e1
    sbc [hl]                                      ; $552d: $9e
    ldh a, [$84]                                  ; $552e: $f0 $84
    cp $e6                                        ; $5530: $fe $e6
    add b                                         ; $5532: $80
    ret c                                         ; $5533: $d8

    add [hl]                                      ; $5534: $86
    and c                                         ; $5535: $a1
    ei                                            ; $5536: $fb
    and b                                         ; $5537: $a0
    sbc [hl]                                      ; $5538: $9e
    adc e                                         ; $5539: $8b
    ldh [rLYC], a                                 ; $553a: $e0 $45
    ld d, [hl]                                    ; $553c: $56
    ld [hl-], a                                   ; $553d: $32
    cp [hl]                                       ; $553e: $be
    ld sp, $2b1d                                  ; $553f: $31 $1d $2b
    cp [hl]                                       ; $5542: $be
    pop hl                                        ; $5543: $e1
    xor [hl]                                      ; $5544: $ae
    sbc [hl]                                      ; $5545: $9e
    and b                                         ; $5546: $a0
    ld a, [hl]                                    ; $5547: $7e
    push bc                                       ; $5548: $c5
    ld a, d                                       ; $5549: $7a
    rst $08                                       ; $554a: $cf
    ld b, $ad                                     ; $554b: $06 $ad
    ld a, [hl]                                    ; $554d: $7e
    nop                                           ; $554e: $00
    rst $20                                       ; $554f: $e7
    ld b, l                                       ; $5550: $45
    dec l                                         ; $5551: $2d
    jr nz, jr_062_5574                            ; $5552: $20 $20

    jr nz, jr_062_5583                            ; $5554: $20 $2d

    ld a, d                                       ; $5556: $7a
    pop bc                                        ; $5557: $c1
    add c                                         ; $5558: $81
    sbc [hl]                                      ; $5559: $9e
    db $fc                                        ; $555a: $fc
    and [hl]                                      ; $555b: $a6
    ld a, d                                       ; $555c: $7a
    rst $08                                       ; $555d: $cf
    ld b, e                                       ; $555e: $43
    adc c                                         ; $555f: $89
    sbc [hl]                                      ; $5560: $9e
    db $e3                                        ; $5561: $e3
    adc [hl]                                      ; $5562: $8e
    and c                                         ; $5563: $a1
    inc bc                                        ; $5564: $03
    pop bc                                        ; $5565: $c1
    ld c, d                                       ; $5566: $4a
    rrca                                          ; $5567: $0f
    ld d, d                                       ; $5568: $52
    dec hl                                        ; $5569: $2b
    inc l                                         ; $556a: $2c
    ld h, $c0                                     ; $556b: $26 $c0
    pop hl                                        ; $556d: $e1
    nop                                           ; $556e: $00
    ld [c], a                                     ; $556f: $e2

jr_062_5570:
    ld hl, sp-$79                                 ; $5570: $f8 $87
    ld a, d                                       ; $5572: $7a
    db $e3                                        ; $5573: $e3

jr_062_5574:
    ld hl, sp+$00                                 ; $5574: $f8 $00
    or c                                          ; $5576: $b1
    inc c                                         ; $5577: $0c
    add l                                         ; $5578: $85
    ld a, [hl]                                    ; $5579: $7e
    jp $604a                                      ; $557a: $c3 $4a $60


    ld e, l                                       ; $557d: $5d
    ld d, l                                       ; $557e: $55
    dec [hl]                                      ; $557f: $35
    inc bc                                        ; $5580: $03
    ld [hl], $48                                  ; $5581: $36 $48

jr_062_5583:
    ld a, h                                       ; $5583: $7c
    ret nz                                        ; $5584: $c0

    nop                                           ; $5585: $00
    pop hl                                        ; $5586: $e1
    ld hl, sp-$79                                 ; $5587: $f8 $87
    db $f4                                        ; $5589: $f4
    adc e                                         ; $558a: $8b
    ld b, e                                       ; $558b: $43
    adc c                                         ; $558c: $89
    inc e                                         ; $558d: $1c
    pop bc                                        ; $558e: $c1
    cp $7e                                        ; $558f: $fe $7e
    jp $d1d0                                      ; $5591: $c3 $d0 $d1


    and c                                         ; $5594: $a1
    xor [hl]                                      ; $5595: $ae
    ld b, l                                       ; $5596: $45
    ld e, e                                       ; $5597: $5b
    ld d, d                                       ; $5598: $52
    rst $38                                       ; $5599: $ff
    ld d, l                                       ; $559a: $55
    inc a                                         ; $559b: $3c
    inc a                                         ; $559c: $3c
    ld d, d                                       ; $559d: $52
    ld h, c                                       ; $559e: $61
    ld d, l                                       ; $559f: $55
    ld b, l                                       ; $55a0: $45
    and c                                         ; $55a1: $a1
    ldh [$9d], a                                  ; $55a2: $e0 $9d
    ld h, b                                       ; $55a4: $60
    db $f4                                        ; $55a5: $f4
    add l                                         ; $55a6: $85
    add sp, $63                                   ; $55a7: $e8 $63
    nop                                           ; $55a9: $00
    cp a                                          ; $55aa: $bf
    cp l                                          ; $55ab: $bd
    jp nz, Jump_000_36ae                          ; $55ac: $c2 $ae $36

    dec [hl]                                      ; $55af: $35
    rlca                                          ; $55b0: $07
    ld [hl], $52                                  ; $55b1: $36 $52

jr_062_55b3:
    ld d, l                                       ; $55b3: $55
    ld a, [hl-]                                   ; $55b4: $3a
    and d                                         ; $55b5: $a2
    nop                                           ; $55b6: $00
    and e                                         ; $55b7: $a3
    db $f4                                        ; $55b8: $f4
    add h                                         ; $55b9: $84
    nop                                           ; $55ba: $00
    cp b                                          ; $55bb: $b8
    db $fc                                        ; $55bc: $fc
    and l                                         ; $55bd: $a5
    xor $fd                                       ; $55be: $ee $fd
    and b                                         ; $55c0: $a0
    xor [hl]                                      ; $55c1: $ae
    ld b, [hl]                                    ; $55c2: $46
    xor a                                         ; $55c3: $af
    cp a                                          ; $55c4: $bf
    ldh [$3b], a                                  ; $55c5: $e0 $3b
    ld [hl], $af                                  ; $55c7: $36 $af
    ld bc, $3aae                                  ; $55c9: $01 $ae $3a
    and b                                         ; $55cc: $a0
    jr c, jr_062_5570                             ; $55cd: $38 $a1

    ld l, [hl]                                    ; $55cf: $6e
    add c                                         ; $55d0: $81
    ld a, d                                       ; $55d1: $7a
    ld l, l                                       ; $55d2: $6d
    add b                                         ; $55d3: $80
    rst $08                                       ; $55d4: $cf
    inc b                                         ; $55d5: $04
    ld h, e                                       ; $55d6: $63
    pop bc                                        ; $55d7: $c1
    add b                                         ; $55d8: $80
    rst $38                                       ; $55d9: $ff
    xor a                                         ; $55da: $af
    ld b, [hl]                                    ; $55db: $46
    xor [hl]                                      ; $55dc: $ae
    xor a                                         ; $55dd: $af
    ld b, h                                       ; $55de: $44
    inc a                                         ; $55df: $3c
    dec [hl]                                      ; $55e0: $35
    dec [hl]                                      ; $55e1: $35
    rlca                                          ; $55e2: $07
    ld [hl], $af                                  ; $55e3: $36 $af
    ld b, e                                       ; $55e5: $43
    ld a, [$7ac1]                                 ; $55e6: $fa $c1 $7a
    db $e3                                        ; $55e9: $e3
    ld a, d                                       ; $55ea: $7a
    ld l, l                                       ; $55eb: $6d
    jp $824f                                      ; $55ec: $c3 $4f $82


    ld h, e                                       ; $55ef: $63
    cp $7c                                        ; $55f0: $fe $7c
    and d                                         ; $55f2: $a2
    xor a                                         ; $55f3: $af
    ld b, [hl]                                    ; $55f4: $46
    ld b, l                                       ; $55f5: $45
    ld a, [hl-]                                   ; $55f6: $3a
    dec [hl]                                      ; $55f7: $35
    dec [hl]                                      ; $55f8: $35
    dec [hl]                                      ; $55f9: $35
    rra                                           ; $55fa: $1f
    jr c, jr_062_5634                             ; $55fb: $38 $37

    ld d, d                                       ; $55fd: $52
    ld e, b                                       ; $55fe: $58
    ld b, h                                       ; $55ff: $44
    ld [hl], e                                    ; $5600: $73
    add d                                         ; $5601: $82
    halt                                          ; $5602: $76
    add [hl]                                      ; $5603: $86
    add b                                         ; $5604: $80
    ld a, b                                       ; $5605: $78
    cp h                                          ; $5606: $bc
    add d                                         ; $5607: $82
    ld h, h                                       ; $5608: $64
    inc a                                         ; $5609: $3c
    and c                                         ; $560a: $a1
    ld b, [hl]                                    ; $560b: $46
    ld a, c                                       ; $560c: $79
    ld a, l                                       ; $560d: $7d
    add hl, sp                                    ; $560e: $39
    ret nz                                        ; $560f: $c0

    ldh [$35], a                                  ; $5610: $e0 $35
    ld e, a                                       ; $5612: $5f
    dec [hl]                                      ; $5613: $35
    add hl, sp                                    ; $5614: $39
    ld c, l                                       ; $5615: $4d
    ld d, d                                       ; $5616: $52
    ld b, l                                       ; $5617: $45
    ld [hl], e                                    ; $5618: $73
    add b                                         ; $5619: $80
    sbc a                                         ; $561a: $9f
    db $f4                                        ; $561b: $f4
    ld h, l                                       ; $561c: $65
    ld hl, sp-$80                                 ; $561d: $f8 $80
    ld a, c                                       ; $561f: $79
    db $fc                                        ; $5620: $fc
    add h                                         ; $5621: $84
    nop                                           ; $5622: $00
    add b                                         ; $5623: $80
    xor [hl]                                      ; $5624: $ae
    ld a, c                                       ; $5625: $79
    ld a, [hl]                                    ; $5626: $7e
    ld a, a                                       ; $5627: $7f
    ld a, l                                       ; $5628: $7d
    cp l                                          ; $5629: $bd
    ld [hl], $bf                                  ; $562a: $36 $bf
    pop hl                                        ; $562c: $e1
    ld a, $56                                     ; $562d: $3e $56
    ld d, d                                       ; $562f: $52
    ld b, h                                       ; $5630: $44
    jr nc, jr_062_55b3                            ; $5631: $30 $80

    and c                                         ; $5633: $a1

jr_062_5634:
    ldh a, [rPCM12]                               ; $5634: $f0 $76
    ld h, e                                       ; $5636: $63
    scf                                           ; $5637: $37
    adc c                                         ; $5638: $89
    ld b, $4f                                     ; $5639: $06 $4f
    sub d                                         ; $563b: $92
    ld h, l                                       ; $563c: $65
    sbc a                                         ; $563d: $9f
    sbc h                                         ; $563e: $9c
    xor a                                         ; $563f: $af
    add b                                         ; $5640: $80
    dec sp                                        ; $5641: $3b
    ld b, l                                       ; $5642: $45
    ccf                                           ; $5643: $3f
    cp a                                          ; $5644: $bf
    db $e3                                        ; $5645: $e3
    ld a, $48                                     ; $5646: $3e $48
    ld c, b                                       ; $5648: $48
    ret nz                                        ; $5649: $c0

    pop hl                                        ; $564a: $e1
    rst $30                                       ; $564b: $f7
    add b                                         ; $564c: $80
    ld hl, sp+$76                                 ; $564d: $f8 $76
    ld h, d                                       ; $564f: $62
    add b                                         ; $5650: $80
    jp c, $e400                                   ; $5651: $da $00 $e4

    and b                                         ; $5654: $a0
    and b                                         ; $5655: $a0
    and c                                         ; $5656: $a1
    ld b, [hl]                                    ; $5657: $46
    add b                                         ; $5658: $80
    rst $30                                       ; $5659: $f7
    xor [hl]                                      ; $565a: $ae
    dec [hl]                                      ; $565b: $35
    add hl, sp                                    ; $565c: $39
    ld a, [hl]                                    ; $565d: $7e
    ld [c], a                                     ; $565e: $e2
    ld a, [hl-]                                   ; $565f: $3a
    ld d, d                                       ; $5660: $52
    ld h, c                                       ; $5661: $61
    ld e, h                                       ; $5662: $5c
    ldh [$f7], a                                  ; $5663: $e0 $f7
    add c                                         ; $5665: $81
    ld hl, sp+$62                                 ; $5666: $f8 $62
    nop                                           ; $5668: $00
    cp h                                          ; $5669: $bc
    add d                                         ; $566a: $82
    ld b, l                                       ; $566b: $45
    ld a, [hl-]                                   ; $566c: $3a
    add b                                         ; $566d: $80
    add b                                         ; $566e: $80
    xor a                                         ; $566f: $af
    inc a                                         ; $5670: $3c
    ld l, a                                       ; $5671: $6f
    ld a, [hl-]                                   ; $5672: $3a
    xor [hl]                                      ; $5673: $ae
    ld a, a                                       ; $5674: $7f
    ld a, l                                       ; $5675: $7d
    ld a, h                                       ; $5676: $7c
    ret nz                                        ; $5677: $c0

    jr c, jr_062_56b1                             ; $5678: $38 $37

    cp a                                          ; $567a: $bf
    ret nz                                        ; $567b: $c0

    jp $9eaf                                      ; $567c: $c3 $af $9e


    add sp, -$1e                                  ; $567f: $e8 $e2
    nop                                           ; $5681: $00
    ld e, h                                       ; $5682: $5c
    ld a, [hl]                                    ; $5683: $7e
    and l                                         ; $5684: $a5
    ret nz                                        ; $5685: $c0

    pop hl                                        ; $5686: $e1
    ld b, b                                       ; $5687: $40
    dec [hl]                                      ; $5688: $35
    adc a                                         ; $5689: $8f
    dec [hl]                                      ; $568a: $35
    xor a                                         ; $568b: $af
    xor [hl]                                      ; $568c: $ae
    add c                                         ; $568d: $81
    inc a                                         ; $568e: $3c
    ret nz                                        ; $568f: $c0

    cp l                                          ; $5690: $bd
    ret nz                                        ; $5691: $c0

    ld a, [c]                                     ; $5692: $f2
    and b                                         ; $5693: $a0
    sbc [hl]                                      ; $5694: $9e
    ld hl, sp+$76                                 ; $5695: $f8 $76
    ld b, c                                       ; $5697: $41
    nop                                           ; $5698: $00
    or a                                          ; $5699: $b7
    nop                                           ; $569a: $00
    ld c, h                                       ; $569b: $4c
    sbc [hl]                                      ; $569c: $9e
    ld b, [hl]                                    ; $569d: $46
    add d                                         ; $569e: $82
    add e                                         ; $569f: $83
    ld a, [hl-]                                   ; $56a0: $3a
    ld l, a                                       ; $56a1: $6f
    ld a, [hl-]                                   ; $56a2: $3a
    xor [hl]                                      ; $56a3: $ae
    xor a                                         ; $56a4: $af
    add c                                         ; $56a5: $81
    ld a, l                                       ; $56a6: $7d
    jp nz, Jump_062_453a                          ; $56a7: $c2 $3a $45

    ld [hl], a                                    ; $56aa: $77
    add c                                         ; $56ab: $81
    db $fc                                        ; $56ac: $fc
    nop                                           ; $56ad: $00
    cp d                                          ; $56ae: $ba
    ld a, d                                       ; $56af: $7a
    ld l, l                                       ; $56b0: $6d

jr_062_56b1:
    xor [hl]                                      ; $56b1: $ae
    add l                                         ; $56b2: $85
    add [hl]                                      ; $56b3: $86
    add e                                         ; $56b4: $83
    ld b, e                                       ; $56b5: $43
    xor a                                         ; $56b6: $af
    dec de                                        ; $56b7: $1b
    add e                                         ; $56b8: $83
    add h                                         ; $56b9: $84
    add b                                         ; $56ba: $80
    ld [c], a                                     ; $56bb: $e2
    dec [hl]                                      ; $56bc: $35
    ld b, d                                       ; $56bd: $42
    ld [hl], a                                    ; $56be: $77
    ld h, b                                       ; $56bf: $60
    nop                                           ; $56c0: $00
    cp a                                          ; $56c1: $bf
    ld a, d                                       ; $56c2: $7a
    ld l, c                                       ; $56c3: $69
    rst $38                                       ; $56c4: $ff
    xor a                                         ; $56c5: $af
    ld b, [hl]                                    ; $56c6: $46
    add l                                         ; $56c7: $85
    add a                                         ; $56c8: $87
    adc b                                         ; $56c9: $88
    adc b                                         ; $56ca: $88
    add a                                         ; $56cb: $87
    add l                                         ; $56cc: $85
    db $10                                        ; $56cd: $10
    ld b, b                                       ; $56ce: $40
    ld [c], a                                     ; $56cf: $e2
    add b                                         ; $56d0: $80
    ldh [rP1], a                                  ; $56d1: $e0 $00
    add $80                                       ; $56d3: $c6 $80
    dec e                                         ; $56d5: $1d
    rst $18                                       ; $56d6: $df
    ld a, d                                       ; $56d7: $7a
    ld h, d                                       ; $56d8: $62
    cp d                                          ; $56d9: $ba
    ld b, d                                       ; $56da: $42
    rst $30                                       ; $56db: $f7
    ld b, b                                       ; $56dc: $40
    ld b, b                                       ; $56dd: $40
    cp $a2                                        ; $56de: $fe $a2
    nop                                           ; $56e0: $00
    ldh [$f3], a                                  ; $56e1: $e0 $f3
    jr nz, jr_062_56e5                            ; $56e3: $20 $00

jr_062_56e5:
    cp [hl]                                       ; $56e5: $be
    ld a, d                                       ; $56e6: $7a
    ld l, c                                       ; $56e7: $69
    cp c                                          ; $56e8: $b9
    ld b, c                                       ; $56e9: $41
    xor [hl]                                      ; $56ea: $ae
    pop bc                                        ; $56eb: $c1
    push hl                                       ; $56ec: $e5
    ld sp, $f936                                  ; $56ed: $31 $36 $f9
    ld h, e                                       ; $56f0: $63
    nop                                           ; $56f1: $00
    cp a                                          ; $56f2: $bf
    ld a, d                                       ; $56f3: $7a
    ld l, e                                       ; $56f4: $6b
    xor a                                         ; $56f5: $af
    ld b, [hl]                                    ; $56f6: $46
    ccf                                           ; $56f7: $3f
    and e                                         ; $56f8: $a3
    pop bc                                        ; $56f9: $c1
    ldh [rP1], a                                  ; $56fa: $e0 $00
    cp c                                          ; $56fc: $b9
    ld b, c                                       ; $56fd: $41
    nop                                           ; $56fe: $00
    cp a                                          ; $56ff: $bf
    ld a, d                                       ; $5700: $7a
    ld l, d                                       ; $5701: $6a
    jr c, jr_062_5744                             ; $5702: $38 $40

    cp a                                          ; $5704: $bf
    add d                                         ; $5705: $82
    pop bc                                        ; $5706: $c1
    ld [c], a                                     ; $5707: $e2
    inc [hl]                                      ; $5708: $34
    ld hl, $bf00                                  ; $5709: $21 $00 $bf
    inc c                                         ; $570c: $0c
    nop                                           ; $570d: $00
    and e                                         ; $570e: $a3
    ld a, [hl]                                    ; $570f: $7e
    inc b                                         ; $5710: $04
    and c                                         ; $5711: $a1
    ld b, [hl]                                    ; $5712: $46
    add c                                         ; $5713: $81
    db $e3                                        ; $5714: $e3
    ld b, h                                       ; $5715: $44
    ret nz                                        ; $5716: $c0

    ld a, c                                       ; $5717: $79
    jr nz, jr_062_5790                            ; $5718: $20 $76

    ld b, $14                                     ; $571a: $06 $14
    nop                                           ; $571c: $00
    cp a                                          ; $571d: $bf
    ld a, [hl]                                    ; $571e: $7e
    inc b                                         ; $571f: $04
    sbc h                                         ; $5720: $9c
    add c                                         ; $5721: $81
    db $e4                                        ; $5722: $e4
    add hl, sp                                    ; $5723: $39
    inc sp                                        ; $5724: $33
    jr nz, jr_062_5762                            ; $5725: $20 $3b

    ld h, b                                       ; $5727: $60
    halt                                          ; $5728: $76
    ld b, $10                                     ; $5729: $06 $10
    nop                                           ; $572b: $00
    cp a                                          ; $572c: $bf
    ld a, [hl]                                    ; $572d: $7e
    dec b                                         ; $572e: $05
    ret nz                                        ; $572f: $c0

    ld h, c                                       ; $5730: $61
    call nz, $afc1                                ; $5731: $c4 $c1 $af
    inc b                                         ; $5734: $04
    pop bc                                        ; $5735: $c1
    add d                                         ; $5736: $82
    db $e4                                        ; $5737: $e4
    nop                                           ; $5738: $00
    cp a                                          ; $5739: $bf
    nop                                           ; $573a: $00
    add d                                         ; $573b: $82
    db $e4                                        ; $573c: $e4
    cp [hl]                                       ; $573d: $be
    nop                                           ; $573e: $00
    ld bc, $8681                                  ; $573f: $01 $81 $86
    and b                                         ; $5742: $a0
    or h                                          ; $5743: $b4

jr_062_5744:
    nop                                           ; $5744: $00
    inc b                                         ; $5745: $04
    and d                                         ; $5746: $a2
    nop                                           ; $5747: $00
    ld e, a                                       ; $5748: $5f
    add d                                         ; $5749: $82
    jp hl                                         ; $574a: $e9


    ld [bc], a                                    ; $574b: $02
    add c                                         ; $574c: $81
    ld h, h                                       ; $574d: $64
    add hl, sp                                    ; $574e: $39
    ei                                            ; $574f: $fb
    inc bc                                        ; $5750: $03
    inc b                                         ; $5751: $04
    push hl                                       ; $5752: $e5
    add b                                         ; $5753: $80
    rla                                           ; $5754: $17
    nop                                           ; $5755: $00
    ld c, b                                       ; $5756: $48
    jp $81a4                                      ; $5757: $c3 $a4 $81


    rst $20                                       ; $575a: $e7
    db $10                                        ; $575b: $10
    inc b                                         ; $575c: $04
    add l                                         ; $575d: $85
    add b                                         ; $575e: $80
    add hl, de                                    ; $575f: $19
    add [hl]                                      ; $5760: $86
    ret z                                         ; $5761: $c8

jr_062_5762:
    add h                                         ; $5762: $84
    and h                                         ; $5763: $a4
    ld a, $81                                     ; $5764: $3e $81
    and $04                                       ; $5766: $e6 $04
    and l                                         ; $5768: $a5
    add b                                         ; $5769: $80
    jr jr_062_576c                                ; $576a: $18 $00

jr_062_576c:
    add [hl]                                      ; $576c: $86
    set 0, b                                      ; $576d: $cb $c0
    push hl                                       ; $576f: $e5
    add a                                         ; $5770: $87
    and b                                         ; $5771: $a0
    add c                                         ; $5772: $81
    pop hl                                        ; $5773: $e1
    inc b                                         ; $5774: $04
    ld h, a                                       ; $5775: $67
    add b                                         ; $5776: $80
    inc d                                         ; $5777: $14
    add [hl]                                      ; $5778: $86
    call $e14c                                    ; $5779: $cd $4c $e1
    nop                                           ; $577c: $00
    add e                                         ; $577d: $83
    and b                                         ; $577e: $a0
    add a                                         ; $577f: $87
    and c                                         ; $5780: $a1
    add c                                         ; $5781: $81
    ldh [rDIV], a                                 ; $5782: $e0 $04
    and [hl]                                      ; $5784: $a6
    add d                                         ; $5785: $82
    and b                                         ; $5786: $a0
    add b                                         ; $5787: $80
    db $d3                                        ; $5788: $d3
    add [hl]                                      ; $5789: $86
    ld l, c                                       ; $578a: $69
    ret z                                         ; $578b: $c8

    and b                                         ; $578c: $a0
    ld c, $4c                                     ; $578d: $0e $4c
    ld [c], a                                     ; $578f: $e2

jr_062_5790:
    ld b, [hl]                                    ; $5790: $46
    ld b, l                                       ; $5791: $45
    ld b, c                                       ; $5792: $41
    ccf                                           ; $5793: $3f
    ld bc, $a384                                  ; $5794: $01 $84 $a3
    ld a, [hl]                                    ; $5797: $7e
    ld b, $80                                     ; $5798: $06 $80
    ld d, $00                                     ; $579a: $16 $00
    add [hl]                                      ; $579c: $86
    ld b, h                                       ; $579d: $44
    ld b, d                                       ; $579e: $42
    and $fa                                       ; $579f: $e6 $fa
    and $3f                                       ; $57a1: $e6 $3f
    ld [hl+], a                                   ; $57a3: $22
    inc b                                         ; $57a4: $04
    add l                                         ; $57a5: $85
    add b                                         ; $57a6: $80
    rst $10                                       ; $57a7: $d7
    add [hl]                                      ; $57a8: $86
    ld b, h                                       ; $57a9: $44
    pop bc                                        ; $57aa: $c1
    xor $f0                                       ; $57ab: $ee $f0
    add h                                         ; $57ad: $84
    and c                                         ; $57ae: $a1
    inc b                                         ; $57af: $04
    dec h                                         ; $57b0: $25
    add b                                         ; $57b1: $80
    reti                                          ; $57b2: $d9


    add [hl]                                      ; $57b3: $86
    jr z, jr_062_57fc                             ; $57b4: $28 $46

    ld b, l                                       ; $57b6: $45
    ld b, e                                       ; $57b7: $43
    ld b, c                                       ; $57b8: $41
    add hl, bc                                    ; $57b9: $09
    ld b, e                                       ; $57ba: $43
    db $fd                                        ; $57bb: $fd
    ldh [rSTAT], a                                ; $57bc: $e0 $41
    pop hl                                        ; $57be: $e1
    xor [hl]                                      ; $57bf: $ae
    add [hl]                                      ; $57c0: $86
    add e                                         ; $57c1: $83
    inc b                                         ; $57c2: $04
    add e                                         ; $57c3: $83
    add b                                         ; $57c4: $80
    reti                                          ; $57c5: $d9


    add [hl]                                      ; $57c6: $86
    jr z, jr_062_57e8                             ; $57c7: $28 $1f

    ld b, l                                       ; $57c9: $45
    ld [hl], $3b                                  ; $57ca: $36 $3b
    dec [hl]                                      ; $57cc: $35
    dec sp                                        ; $57cd: $3b
    db $fd                                        ; $57ce: $fd
    ldh [$c1], a                                  ; $57cf: $e0 $c1
    jp nz, $8886                                  ; $57d1: $c2 $86 $88

    ld l, b                                       ; $57d4: $68
    ld d, [hl]                                    ; $57d5: $56
    ld l, [hl]                                    ; $57d6: $6e
    add [hl]                                      ; $57d7: $86
    rrca                                          ; $57d8: $0f
    ld c, d                                       ; $57d9: $4a
    add b                                         ; $57da: $80
    xor [hl]                                      ; $57db: $ae
    ld [$a4a0], sp                                ; $57dc: $08 $a0 $a4
    ld h, h                                       ; $57df: $64
    rst $38                                       ; $57e0: $ff
    ldh [$83], a                                  ; $57e1: $e0 $83
    and l                                         ; $57e3: $a5
    inc a                                         ; $57e4: $3c
    ret                                           ; $57e5: $c9


    inc hl                                        ; $57e6: $23
    add [hl]                                      ; $57e7: $86

jr_062_57e8:
    add l                                         ; $57e8: $85
    ld d, [hl]                                    ; $57e9: $56
    ld l, a                                       ; $57ea: $6f
    add [hl]                                      ; $57eb: $86
    rrca                                          ; $57ec: $0f
    ld a, [bc]                                    ; $57ed: $0a
    add b                                         ; $57ee: $80
    xor a                                         ; $57ef: $af
    rst $38                                       ; $57f0: $ff
    ld b, [hl]                                    ; $57f1: $46
    ld b, d                                       ; $57f2: $42
    dec [hl]                                      ; $57f3: $35
    ld l, c                                       ; $57f4: $69
    and e                                         ; $57f5: $a3
    dec [hl]                                      ; $57f6: $35
    dec [hl]                                      ; $57f7: $35
    and e                                         ; $57f8: $a3
    ld bc, $ca6a                                  ; $57f9: $01 $6a $ca

jr_062_57fc:
    ld b, c                                       ; $57fc: $41
    add l                                         ; $57fd: $85
    and b                                         ; $57fe: $a0
    ld [$9364], sp                                ; $57ff: $08 $64 $93
    ld c, a                                       ; $5802: $4f
    nop                                           ; $5803: $00
    xor h                                         ; $5804: $ac
    ld [$c066], sp                                ; $5805: $08 $66 $c0
    ldh [$c0], a                                  ; $5808: $e0 $c0
    rst $00                                       ; $580a: $c7
    ld bc, $e5c0                                  ; $580b: $01 $c0 $e5
    ld [$9963], sp                                ; $580e: $08 $63 $99
    ld c, [hl]                                    ; $5811: $4e
    nop                                           ; $5812: $00
    or b                                          ; $5813: $b0
    ld [$4464], sp                                ; $5814: $08 $64 $44
    inc a                                         ; $5817: $3c
    dec bc                                        ; $5818: $0b
    ld l, e                                       ; $5819: $6b
    ld [hl], c                                    ; $581a: $71
    rst $38                                       ; $581b: $ff
    ldh [$6d], a                                  ; $581c: $e0 $6d
    ld b, b                                       ; $581e: $40
    pop hl                                        ; $581f: $e1
    inc bc                                        ; $5820: $03
    jp nz, $cf86                                  ; $5821: $c2 $86 $cf

    nop                                           ; $5824: $00
    or e                                          ; $5825: $b3
    inc b                                         ; $5826: $04
    ld [$c064], sp                                ; $5827: $08 $64 $c0
    jp nz, $c0ac                                  ; $582a: $c2 $ac $c0

    pop bc                                        ; $582d: $c1
    add $62                                       ; $582e: $c6 $62
    ld [$4321], sp                                ; $5830: $08 $21 $43
    ldh a, [$80]                                  ; $5833: $f0 $80
    ld l, [hl]                                    ; $5835: $6e
    ld l, $04                                     ; $5836: $2e $04
    inc h                                         ; $5838: $24
    and c                                         ; $5839: $a1
    ld b, [hl]                                    ; $583a: $46
    xor [hl]                                      ; $583b: $ae
    ld b, b                                       ; $583c: $40
    pop bc                                        ; $583d: $c1
    xor a                                         ; $583e: $af
    ld b, b                                       ; $583f: $40
    pop bc                                        ; $5840: $c1
    add d                                         ; $5841: $82
    add $e0                                       ; $5842: $c6 $e0
    ld b, $ad                                     ; $5844: $06 $ad
    add b                                         ; $5846: $80
    ld [hl], c                                    ; $5847: $71
    add [hl]                                      ; $5848: $86
    inc h                                         ; $5849: $24
    ld b, l                                       ; $584a: $45
    nop                                           ; $584b: $00
    add [hl]                                      ; $584c: $86
    and l                                         ; $584d: $a5
    sbc l                                         ; $584e: $9d
    sbc l                                         ; $584f: $9d

Jump_062_5850:
    sbc a                                         ; $5850: $9f
    nop                                           ; $5851: $00
    inc b                                         ; $5852: $04
    call nz, Call_062_6018                        ; $5853: $c4 $18 $60
    sub $30                                       ; $5856: $d6 $30
    ld b, e                                       ; $5858: $43
    dec l                                         ; $5859: $2d
    sbc [hl]                                      ; $585a: $9e
    add e                                         ; $585b: $83
    ld a, $a2                                     ; $585c: $3e $a2
    call nz, $c3e0                                ; $585e: $c4 $e0 $c3
    ldh [rP1], a                                  ; $5861: $e0 $00
    add [hl]                                      ; $5863: $86
    and [hl]                                      ; $5864: $a6
    add [hl]                                      ; $5865: $86
    ld l, l                                       ; $5866: $6d
    add b                                         ; $5867: $80
    ld de, $a47e                                  ; $5868: $11 $7e $a4
    ld b, e                                       ; $586b: $43
    ld h, b                                       ; $586c: $60
    call nz, $f4e3                                ; $586d: $c4 $e3 $f4
    pop hl                                        ; $5870: $e1
    adc d                                         ; $5871: $8a
    ld b, a                                       ; $5872: $47
    nop                                           ; $5873: $00
    add b                                         ; $5874: $80
    db $dd                                        ; $5875: $dd
    ld a, [hl]                                    ; $5876: $7e
    adc b                                         ; $5877: $88
    ld de, $72e4                                  ; $5878: $11 $e4 $72
    add c                                         ; $587b: $81
    inc c                                         ; $587c: $0c
    ld c, a                                       ; $587d: $4f
    add b                                         ; $587e: $80
    ld [hl], l                                    ; $587f: $75
    add [hl]                                      ; $5880: $86
    dec b                                         ; $5881: $05
    adc d                                         ; $5882: $8a
    db $e3                                        ; $5883: $e3
    nop                                           ; $5884: $00
    inc c                                         ; $5885: $0c
    and l                                         ; $5886: $a5
    inc c                                         ; $5887: $0c
    ld c, a                                       ; $5888: $4f
    add b                                         ; $5889: $80
    rst $10                                       ; $588a: $d7
    db $fc                                        ; $588b: $fc
    ld h, a                                       ; $588c: $67
    add [hl]                                      ; $588d: $86
    jp hl                                         ; $588e: $e9


    inc c                                         ; $588f: $0c
    ld c, l                                       ; $5890: $4d
    nop                                           ; $5891: $00
    ld e, c                                       ; $5892: $59
    db $fc                                        ; $5893: $fc
    and e                                         ; $5894: $a3
    nop                                           ; $5895: $00
    db $fc                                        ; $5896: $fc
    rst $20                                       ; $5897: $e7
    inc c                                         ; $5898: $0c
    add e                                         ; $5899: $83
    ld b, e                                       ; $589a: $43
    db $f4                                        ; $589b: $f4
    nop                                           ; $589c: $00
    ld d, [hl]                                    ; $589d: $56
    db $fc                                        ; $589e: $fc
    db $ed                                        ; $589f: $ed
    ld b, e                                       ; $58a0: $43
    db $f4                                        ; $58a1: $f4
    add b                                         ; $58a2: $80
    ld [de], a                                    ; $58a3: $12
    sbc d                                         ; $58a4: $9a
    ld h, e                                       ; $58a5: $63
    nop                                           ; $58a6: $00
    db $fc                                        ; $58a7: $fc
    jp hl                                         ; $58a8: $e9


    ld b, e                                       ; $58a9: $43
    or $07                                        ; $58aa: $f6 $07
    jr nz, jr_062_58ae                            ; $58ac: $20 $00

jr_062_58ae:
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    pop bc                                        ; $58b0: $c1
    nop                                           ; $58b1: $00
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $38                                       ; $58b7: $ff
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    ld bc, $fe80                                  ; $58be: $01 $80 $fe
    ldh [rIE], a                                  ; $58c1: $e0 $ff
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    add sp, $00                                   ; $58c7: $e8 $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    ld [bc], a                                    ; $58cb: $02
    nop                                           ; $58cc: $00
    dec e                                         ; $58cd: $1d
    ld [$0102], sp                                ; $58ce: $08 $02 $01
    ld a, [de]                                    ; $58d1: $1a
    ld a, [bc]                                    ; $58d2: $0a
    ld [bc], a                                    ; $58d3: $02
    ld [bc], a                                    ; $58d4: $02
    ld hl, $020b                                  ; $58d5: $21 $0b $02
    inc bc                                        ; $58d8: $03
    ld d, $0d                                     ; $58d9: $16 $0d
    ld [bc], a                                    ; $58db: $02
    inc b                                         ; $58dc: $04
    inc hl                                        ; $58dd: $23
    ld c, $02                                     ; $58de: $0e $02
    dec b                                         ; $58e0: $05
    add hl, de                                    ; $58e1: $19
    ld [de], a                                    ; $58e2: $12
    ld [bc], a                                    ; $58e3: $02
    ld b, $1d                                     ; $58e4: $06 $1d
    inc de                                        ; $58e6: $13
    ld [bc], a                                    ; $58e7: $02
    rlca                                          ; $58e8: $07
    inc hl                                        ; $58e9: $23
    inc de                                        ; $58ea: $13
    ld [bc], a                                    ; $58eb: $02
    ld [$141b], sp                                ; $58ec: $08 $1b $14
    ld [bc], a                                    ; $58ef: $02
    add hl, bc                                    ; $58f0: $09
    ld e, $14                                     ; $58f1: $1e $14
    ld [bc], a                                    ; $58f3: $02
    ld a, [bc]                                    ; $58f4: $0a
    inc h                                         ; $58f5: $24
    inc d                                         ; $58f6: $14
    ld [bc], a                                    ; $58f7: $02
    dec bc                                        ; $58f8: $0b
    dec e                                         ; $58f9: $1d
    dec d                                         ; $58fa: $15
    ld [bc], a                                    ; $58fb: $02
    inc c                                         ; $58fc: $0c
    ld a, [hl+]                                   ; $58fd: $2a
    ld d, $02                                     ; $58fe: $16 $02
    dec c                                         ; $5900: $0d
    inc e                                         ; $5901: $1c
    jr jr_062_5906                                ; $5902: $18 $02

    ld c, $1e                                     ; $5904: $0e $1e

jr_062_5906:
    ld a, [de]                                    ; $5906: $1a
    ld [bc], a                                    ; $5907: $02
    rrca                                          ; $5908: $0f
    inc l                                         ; $5909: $2c
    ld a, [de]                                    ; $590a: $1a
    ld [bc], a                                    ; $590b: $02
    db $10                                        ; $590c: $10
    ld hl, $021b                                  ; $590d: $21 $1b $02
    ld de, $1b2b                                  ; $5910: $11 $2b $1b
    ld [bc], a                                    ; $5913: $02
    ld [de], a                                    ; $5914: $12
    ld [hl+], a                                   ; $5915: $22
    inc e                                         ; $5916: $1c
    ld [bc], a                                    ; $5917: $02
    inc de                                        ; $5918: $13
    inc l                                         ; $5919: $2c
    inc e                                         ; $591a: $1c
    ld [bc], a                                    ; $591b: $02
    inc d                                         ; $591c: $14
    ld hl, $021d                                  ; $591d: $21 $1d $02
    dec d                                         ; $5920: $15
    inc e                                         ; $5921: $1c
    ld e, $02                                     ; $5922: $1e $02
    ld d, $1f                                     ; $5924: $16 $1f
    ld hl, $1702                                  ; $5926: $21 $02 $17
    daa                                           ; $5929: $27
    dec h                                         ; $592a: $25
    ld [bc], a                                    ; $592b: $02
    jr jr_062_594a                                ; $592c: $18 $1c

    daa                                           ; $592e: $27
    ld [bc], a                                    ; $592f: $02
    add hl, de                                    ; $5930: $19
    ld h, $27                                     ; $5931: $26 $27
    ld [bc], a                                    ; $5933: $02
    ld a, [de]                                    ; $5934: $1a
    dec h                                         ; $5935: $25
    add hl, hl                                    ; $5936: $29
    ld [bc], a                                    ; $5937: $02
    dec de                                        ; $5938: $1b
    inc h                                         ; $5939: $24
    dec hl                                        ; $593a: $2b
    ld [bc], a                                    ; $593b: $02
    inc e                                         ; $593c: $1c
    add hl, de                                    ; $593d: $19
    inc l                                         ; $593e: $2c
    ld [bc], a                                    ; $593f: $02
    dec e                                         ; $5940: $1d
    inc hl                                        ; $5941: $23
    jr nc, jr_062_5946                            ; $5942: $30 $02

    ld e, $15                                     ; $5944: $1e $15

jr_062_5946:
    ld [hl-], a                                   ; $5946: $32
    ld [bc], a                                    ; $5947: $02
    rra                                           ; $5948: $1f
    inc e                                         ; $5949: $1c

jr_062_594a:
    ld [hl], $02                                  ; $594a: $36 $02
    jr nz, jr_062_596f                            ; $594c: $20 $21

    ld [hl], $02                                  ; $594e: $36 $02
    ld hl, $3717                                  ; $5950: $21 $17 $37
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    ld e, [hl]                                    ; $5956: $5e
    ld e, c                                       ; $5957: $59
    ld b, d                                       ; $5958: $42
    ld e, l                                       ; $5959: $5d
    add h                                         ; $595a: $84
    ld h, d                                       ; $595b: $62
    sbc a                                         ; $595c: $9f
    ld h, d                                       ; $595d: $62
    cp a                                          ; $595e: $bf
    ld c, $0e                                     ; $595f: $0e $0e
    dec c                                         ; $5961: $0d
    dec c                                         ; $5962: $0d
    dec c                                         ; $5963: $0d
    ld c, $fa                                     ; $5964: $0e $fa
    ld [c], a                                     ; $5966: $e2
    ld c, l                                       ; $5967: $4d
    rlca                                          ; $5968: $07
    ld c, $0e                                     ; $5969: $0e $0e
    ld c, l                                       ; $596b: $4d
    db $fc                                        ; $596c: $fc
    db $e4                                        ; $596d: $e4
    db $ed                                        ; $596e: $ed

jr_062_596f:
    pop hl                                        ; $596f: $e1
    db $fc                                        ; $5970: $fc
    ld a, [c]                                     ; $5971: $f2
    sub $e3                                       ; $5972: $d6 $e3
    ld a, [$00e8]                                 ; $5974: $fa $e8 $00
    push bc                                       ; $5977: $c5
    ldh [$fd], a                                  ; $5978: $e0 $fd
    db $e3                                        ; $597a: $e3
    jp nz, $fee0                                  ; $597b: $c2 $e0 $fe

    rst $20                                       ; $597e: $e7
    ret nz                                        ; $597f: $c0

    pop af                                        ; $5980: $f1
    cp $fc                                        ; $5981: $fe $fc
    add [hl]                                      ; $5983: $86
    ld [$e3fe], a                                 ; $5984: $ea $fe $e3
    cp a                                          ; $5987: $bf
    ld c, l                                       ; $5988: $4d
    ld l, l                                       ; $5989: $6d
    ld c, l                                       ; $598a: $4d
    ld c, l                                       ; $598b: $4d
    ld c, l                                       ; $598c: $4d
    dec l                                         ; $598d: $2d
    ei                                            ; $598e: $fb
    ldh [$2d], a                                  ; $598f: $e0 $2d
    ldh [$ee], a                                  ; $5991: $e0 $ee
    pop hl                                        ; $5993: $e1
    sbc l                                         ; $5994: $9d
    db $ec                                        ; $5995: $ec
    sub [hl]                                      ; $5996: $96
    add sp, $3d                                   ; $5997: $e8 $3d
    db $e4                                        ; $5999: $e4
    add b                                         ; $599a: $80
    ld [$4d4d], a                                 ; $599b: $ea $4d $4d
    ld l, l                                       ; $599e: $6d
    dec b                                         ; $599f: $05
    dec bc                                        ; $59a0: $0b
    rst $38                                       ; $59a1: $ff
    ld [c], a                                     ; $59a2: $e2
    dec c                                         ; $59a3: $0d
    ld sp, hl                                     ; $59a4: $f9
    ldh [$b9], a                                  ; $59a5: $e0 $b9
    pop hl                                        ; $59a7: $e1
    ld d, [hl]                                    ; $59a8: $56
    ld [c], a                                     ; $59a9: $e2
    cp b                                          ; $59aa: $b8
    db $e3                                        ; $59ab: $e3
    dec a                                         ; $59ac: $3d
    ld [$4310], a                                 ; $59ad: $ea $10 $43
    db $e3                                        ; $59b0: $e3
    ld [$c3ed], sp                                ; $59b1: $08 $ed $c3
    pop hl                                        ; $59b4: $e1
    add $e0                                       ; $59b5: $c6 $e0
    dec hl                                        ; $59b7: $2b
    ret nz                                        ; $59b8: $c0

    db $e3                                        ; $59b9: $e3
    cp d                                          ; $59ba: $ba
    ldh [$7c], a                                  ; $59bb: $e0 $7c
    pop hl                                        ; $59bd: $e1
    ret nz                                        ; $59be: $c0

    jr c, @+$01                                   ; $59bf: $38 $ff

    inc b                                         ; $59c1: $04
    and $86                                       ; $59c2: $e6 $86
    ld [c], a                                     ; $59c4: $e2
    jp nz, $bfe0                                  ; $59c5: $c2 $e0 $bf

    ldh [$7d], a                                  ; $59c8: $e0 $7d
    ld [c], a                                     ; $59ca: $e2
    dec c                                         ; $59cb: $0d
    dec bc                                        ; $59cc: $0b
    ld hl, $d02d                                  ; $59cd: $21 $2d $d0
    rst $30                                       ; $59d0: $f7
    adc d                                         ; $59d1: $8a
    rlc d                                         ; $59d2: $cb $02
    ld [c], a                                     ; $59d4: $e2
    ld c, b                                       ; $59d5: $48
    pop hl                                        ; $59d6: $e1
    dec hl                                        ; $59d7: $2b
    jp Jump_000_3de2                              ; $59d8: $c3 $e2 $3d


    db $e4                                        ; $59db: $e4
    nop                                           ; $59dc: $00
    ret nz                                        ; $59dd: $c0

    pop hl                                        ; $59de: $e1
    ld h, [hl]                                    ; $59df: $66
    jp $ce80                                      ; $59e0: $c3 $80 $ce


    db $db                                        ; $59e3: $db
    ret nz                                        ; $59e4: $c0

    add [hl]                                      ; $59e5: $86
    ret                                           ; $59e6: $c9


    dec b                                         ; $59e7: $05
    ldh [rDIV], a                                 ; $59e8: $e0 $04
    pop hl                                        ; $59ea: $e1
    ld [$bfe0], sp                                ; $59eb: $08 $e0 $bf
    ld l, e                                       ; $59ee: $6b
    ld c, e                                       ; $59ef: $4b
    ld l, e                                       ; $59f0: $6b
    ld l, e                                       ; $59f1: $6b
    ld a, [bc]                                    ; $59f2: $0a
    ld c, d                                       ; $59f3: $4a
    ld sp, hl                                     ; $59f4: $f9
    jp nz, Jump_000_036d                          ; $59f5: $c2 $6d $03

    dec c                                         ; $59f8: $0d
    ld l, l                                       ; $59f9: $6d
    ld h, h                                       ; $59fa: $64
    add $86                                       ; $59fb: $c6 $86
    adc $ff                                       ; $59fd: $ce $ff
    pop hl                                        ; $59ff: $e1
    add [hl]                                      ; $5a00: $86
    add $06                                       ; $5a01: $c6 $06
    db $e4                                        ; $5a03: $e4
    ld b, e                                       ; $5a04: $43
    ld [c], a                                     ; $5a05: $e2
    add hl, bc                                    ; $5a06: $09
    ld a, [bc]                                    ; $5a07: $0a
    rst $38                                       ; $5a08: $ff
    pop hl                                        ; $5a09: $e1
    inc [hl]                                      ; $5a0a: $34
    db $e3                                        ; $5a0b: $e3
    ld l, l                                       ; $5a0c: $6d
    reti                                          ; $5a0d: $d9


    and d                                         ; $5a0e: $a2
    db $fc                                        ; $5a0f: $fc
    and l                                         ; $5a10: $a5
    add b                                         ; $5a11: $80
    call $c708                                    ; $5a12: $cd $08 $c7
    ld sp, hl                                     ; $5a15: $f9
    ld l, l                                       ; $5a16: $6d
    ld [de], a                                    ; $5a17: $12
    db $e3                                        ; $5a18: $e3
    inc bc                                        ; $5a19: $03
    ld [c], a                                     ; $5a1a: $e2
    ld c, e                                       ; $5a1b: $4b
    ld c, d                                       ; $5a1c: $4a
    ld a, [hl+]                                   ; $5a1d: $2a
    ld a, [bc]                                    ; $5a1e: $0a
    ld a, [hl+]                                   ; $5a1f: $2a
    add c                                         ; $5a20: $81
    ld c, e                                       ; $5a21: $4b
    ld [bc], a                                    ; $5a22: $02
    db $e3                                        ; $5a23: $e3
    add $ca                                       ; $5a24: $c6 $ca
    add b                                         ; $5a26: $80
    adc $24                                       ; $5a27: $ce $24
    and $47                                       ; $5a29: $e6 $47
    db $e3                                        ; $5a2b: $e3
    ret z                                         ; $5a2c: $c8

    call nz, Call_000_044b                        ; $5a2d: $c4 $4b $04
    add h                                         ; $5a30: $84
    ldh [$b6], a                                  ; $5a31: $e0 $b6
    jp Jump_062_400b                              ; $5a33: $c3 $0b $40


    jp nz, $e918                                  ; $5a36: $c2 $18 $e9

    add [hl]                                      ; $5a39: $86
    db $d3                                        ; $5a3a: $d3
    inc c                                         ; $5a3b: $0c
    jp $c0c5                                      ; $5a3c: $c3 $c5 $c0


    nop                                           ; $5a3f: $00
    inc b                                         ; $5a40: $04
    pop bc                                        ; $5a41: $c1
    inc b                                         ; $5a42: $04
    ldh [$c0], a                                  ; $5a43: $e0 $c0
    db $e4                                        ; $5a45: $e4
    pop bc                                        ; $5a46: $c1
    pop bc                                        ; $5a47: $c1
    ld b, [hl]                                    ; $5a48: $46
    sub $92                                       ; $5a49: $d6 $92
    and e                                         ; $5a4b: $a3
    adc d                                         ; $5a4c: $8a
    and e                                         ; $5a4d: $a3
    pop de                                        ; $5a4e: $d1
    and e                                         ; $5a4f: $a3
    inc c                                         ; $5a50: $0c
    dec c                                         ; $5a51: $0d
    jp nz, $c0c5                                  ; $5a52: $c2 $c5 $c0

    ld a, [bc]                                    ; $5a55: $0a
    ld a, [bc]                                    ; $5a56: $0a
    add c                                         ; $5a57: $81
    push hl                                       ; $5a58: $e5
    ret nz                                        ; $5a59: $c0

    pop hl                                        ; $5a5a: $e1
    nop                                           ; $5a5b: $00
    or [hl]                                       ; $5a5c: $b6
    add d                                         ; $5a5d: $82
    and [hl]                                      ; $5a5e: $a6
    jr jr_062_5aaa                                ; $5a5f: $18 $49

    jp $c109                                      ; $5a61: $c3 $09 $c1


    ld b, h                                       ; $5a64: $44
    pop hl                                        ; $5a65: $e1
    ld a, [bc]                                    ; $5a66: $0a
    ld l, e                                       ; $5a67: $6b
    ld b, c                                       ; $5a68: $41
    rst $20                                       ; $5a69: $e7
    ret nz                                        ; $5a6a: $c0

    pop bc                                        ; $5a6b: $c1
    rst $08                                       ; $5a6c: $cf
    cp b                                          ; $5a6d: $b8
    nop                                           ; $5a6e: $00
    inc h                                         ; $5a6f: $24
    db $e4                                        ; $5a70: $e4
    add hl, bc                                    ; $5a71: $09
    pop bc                                        ; $5a72: $c1
    adc a                                         ; $5a73: $8f
    and l                                         ; $5a74: $a5
    call nz, $c2c0                                ; $5a75: $c4 $c0 $c2
    rst $20                                       ; $5a78: $e7
    add c                                         ; $5a79: $81
    jp nz, $b900                                  ; $5a7a: $c2 $00 $b9

    add b                                         ; $5a7d: $80
    rst $20                                       ; $5a7e: $e7
    ld c, $8d                                     ; $5a7f: $0e $8d
    and h                                         ; $5a81: $a4
    dec bc                                        ; $5a82: $0b
    dec bc                                        ; $5a83: $0b
    ld c, d                                       ; $5a84: $4a
    inc bc                                        ; $5a85: $03
    ldh [rSB], a                                  ; $5a86: $e0 $01
    and d                                         ; $5a88: $a2
    add d                                         ; $5a89: $82
    jp hl                                         ; $5a8a: $e9


    nop                                           ; $5a8b: $00
    cp c                                          ; $5a8c: $b9
    nop                                           ; $5a8d: $00
    adc c                                         ; $5a8e: $89
    and e                                         ; $5a8f: $a3
    adc d                                         ; $5a90: $8a
    and [hl]                                      ; $5a91: $a6
    inc bc                                        ; $5a92: $03
    db $e4                                        ; $5a93: $e4
    ld a, [hl]                                    ; $5a94: $7e
    ret nz                                        ; $5a95: $c0

    db $ec                                        ; $5a96: $ec
    and b                                         ; $5a97: $a0
    ld e, [hl]                                    ; $5a98: $5e
    rst $20                                       ; $5a99: $e7
    ld b, $bb                                     ; $5a9a: $06 $bb
    ret z                                         ; $5a9c: $c8

    jp nz, $8806                                  ; $5a9d: $c2 $06 $88

    add e                                         ; $5aa0: $83

jr_062_5aa1:
    dec hl                                        ; $5aa1: $2b
    ld c, e                                       ; $5aa2: $4b
    add h                                         ; $5aa3: $84
    and $da                                       ; $5aa4: $e6 $da
    ld h, a                                       ; $5aa6: $67
    ret nz                                        ; $5aa7: $c0

    sub c                                         ; $5aa8: $91

jr_062_5aa9:
    add [hl]                                      ; $5aa9: $86

jr_062_5aaa:
    ld h, a                                       ; $5aaa: $67
    nop                                           ; $5aab: $00
    db $e3                                        ; $5aac: $e3
    nop                                           ; $5aad: $00
    ret nz                                        ; $5aae: $c0

    db $e4                                        ; $5aaf: $e4
    add d                                         ; $5ab0: $82
    push hl                                       ; $5ab1: $e5
    add a                                         ; $5ab2: $87
    and c                                         ; $5ab3: $a1
    ldh [$c6], a                                  ; $5ab4: $e0 $c6
    add b                                         ; $5ab6: $80
    call nc, Call_062_6484                        ; $5ab7: $d4 $84 $64
    ret nz                                        ; $5aba: $c0

    db $e4                                        ; $5abb: $e4
    ld a, a                                       ; $5abc: $7f
    db $e4                                        ; $5abd: $e4
    nop                                           ; $5abe: $00
    ld b, a                                       ; $5abf: $47
    add e                                         ; $5ac0: $83
    ld [$6081], sp                                ; $5ac1: $08 $81 $60
    add $86                                       ; $5ac4: $c6 $86
    ld [hl], h                                    ; $5ac6: $74
    adc $81                                       ; $5ac7: $ce $81
    nop                                           ; $5ac9: $00
    and $7f                                       ; $5aca: $e6 $7f
    db $e4                                        ; $5acc: $e4
    ld b, a                                       ; $5acd: $47
    add l                                         ; $5ace: $85
    db $10                                        ; $5acf: $10
    ret nz                                        ; $5ad0: $c0

    ld [c], a                                     ; $5ad1: $e2
    ld [hl+], a                                   ; $5ad2: $22
    ld h, d                                       ; $5ad3: $62
    sbc e                                         ; $5ad4: $9b
    ld l, [hl]                                    ; $5ad5: $6e
    add b                                         ; $5ad6: $80
    db $d3                                        ; $5ad7: $d3
    dec c                                         ; $5ad8: $0d
    adc c                                         ; $5ad9: $89
    add b                                         ; $5ada: $80
    cp c                                          ; $5adb: $b9
    jp nz, $e0fa                                  ; $5adc: $c2 $fa $e0

    jr jr_062_5aa1                                ; $5adf: $18 $c0

    db $ec                                        ; $5ae1: $ec
    jp Jump_000_004e                              ; $5ae2: $c3 $4e $00


    xor l                                         ; $5ae5: $ad
    ld c, l                                       ; $5ae6: $4d
    dec l                                         ; $5ae7: $2d
    ld c, b                                       ; $5ae8: $48
    add h                                         ; $5ae9: $84
    add hl, bc                                    ; $5aea: $09
    add a                                         ; $5aeb: $87
    inc b                                         ; $5aec: $04
    ld h, d                                       ; $5aed: $62
    nop                                           ; $5aee: $00
    inc e                                         ; $5aef: $1c
    adc h                                         ; $5af0: $8c
    cp e                                          ; $5af1: $bb
    ld e, b                                       ; $5af2: $58
    cp a                                          ; $5af3: $bf
    ldh [$0c], a                                  ; $5af4: $e0 $0c
    ld h, c                                       ; $5af6: $61
    ld a, h                                       ; $5af7: $7c
    jp nz, $8377                                  ; $5af8: $c2 $77 $83

    add $9e                                       ; $5afb: $c6 $9e
    nop                                           ; $5afd: $00
    and l                                         ; $5afe: $a5
    nop                                           ; $5aff: $00
    ld a, [hl]                                    ; $5b00: $7e
    add sp, -$40                                  ; $5b01: $e8 $c0
    ld [c], a                                     ; $5b03: $e2
    ccf                                           ; $5b04: $3f
    db $e3                                        ; $5b05: $e3
    ld b, l                                       ; $5b06: $45
    add c                                         ; $5b07: $81
    ld l, d                                       ; $5b08: $6a
    ld c, b                                       ; $5b09: $48
    nop                                           ; $5b0a: $00
    cp d                                          ; $5b0b: $ba
    ld a, [hl]                                    ; $5b0c: $7e
    db $e4                                        ; $5b0d: $e4
    ld a, $e7                                     ; $5b0e: $3e $e7
    nop                                           ; $5b10: $00
    add c                                         ; $5b11: $81
    ld b, d                                       ; $5b12: $42
    add [hl]                                      ; $5b13: $86
    add a                                         ; $5b14: $87
    jp $a654                                      ; $5b15: $c3 $54 $a6


    ld h, [hl]                                    ; $5b18: $66
    db $fc                                        ; $5b19: $fc
    add $4a                                       ; $5b1a: $c6 $4a
    ld b, b                                       ; $5b1c: $40
    cp h                                          ; $5b1d: $bc
    pop bc                                        ; $5b1e: $c1
    add l                                         ; $5b1f: $85
    ld b, e                                       ; $5b20: $43
    jr nz, jr_062_5aa9                            ; $5b21: $20 $86

    ld b, e                                       ; $5b23: $43
    ld l, d                                       ; $5b24: $6a
    ld [hl+], a                                   ; $5b25: $22
    add b                                         ; $5b26: $80

jr_062_5b27:
    ret c                                         ; $5b27: $d8

    ld [hl], a                                    ; $5b28: $77
    jr z, jr_062_5b27                             ; $5b29: $28 $fc

    pop bc                                        ; $5b2b: $c1
    dec c                                         ; $5b2c: $0d
    ld a, e                                       ; $5b2d: $7b
    pop bc                                        ; $5b2e: $c1
    ld b, l                                       ; $5b2f: $45
    ld b, a                                       ; $5b30: $47
    sub b                                         ; $5b31: $90
    ld e, d                                       ; $5b32: $5a
    dec h                                         ; $5b33: $25
    ld [hl], h                                    ; $5b34: $74
    and h                                         ; $5b35: $a4
    nop                                           ; $5b36: $00
    ld c, [hl]                                    ; $5b37: $4e
    ld a, [hl]                                    ; $5b38: $7e
    db $ec                                        ; $5b39: $ec
    dec c                                         ; $5b3a: $0d
    ld a, b                                       ; $5b3b: $78
    ret nz                                        ; $5b3c: $c0

    ld b, b                                       ; $5b3d: $40
    and b                                         ; $5b3e: $a0
    dec hl                                        ; $5b3f: $2b
    add h                                         ; $5b40: $84
    ld a, [c]                                     ; $5b41: $f2
    ld h, h                                       ; $5b42: $64
    ld a, [hl]                                    ; $5b43: $7e
    rst $20                                       ; $5b44: $e7
    ld l, l                                       ; $5b45: $6d
    cp d                                          ; $5b46: $ba
    ld b, [hl]                                    ; $5b47: $46
    ld a, d                                       ; $5b48: $7a
    jr nc, jr_062_5bc7                            ; $5b49: $30 $7c

    ld c, c                                       ; $5b4b: $49
    ret nz                                        ; $5b4c: $c0

    add b                                         ; $5b4d: $80
    ld c, d                                       ; $5b4e: $4a
    rlca                                          ; $5b4f: $07
    ld l, e                                       ; $5b50: $6b
    dec bc                                        ; $5b51: $0b
    dec hl                                        ; $5b52: $2b
    add d                                         ; $5b53: $82
    ld h, h                                       ; $5b54: $64
    inc b                                         ; $5b55: $04
    ld d, [hl]                                    ; $5b56: $56
    di                                            ; $5b57: $f3
    ld c, c                                       ; $5b58: $49
    nop                                           ; $5b59: $00
    ld a, [hl+]                                   ; $5b5a: $2a
    ld b, b                                       ; $5b5b: $40
    add b                                         ; $5b5c: $80
    ld b, c                                       ; $5b5d: $41
    ld a, [bc]                                    ; $5b5e: $0a
    dec sp                                        ; $5b5f: $3b
    push bc                                       ; $5b60: $c5
    inc b                                         ; $5b61: $04
    ld b, [hl]                                    ; $5b62: $46
    nop                                           ; $5b63: $00
    ld d, h                                       ; $5b64: $54
    add hl, hl                                    ; $5b65: $29
    ld c, [hl]                                    ; $5b66: $4e
    ld a, d                                       ; $5b67: $7a
    ld b, d                                       ; $5b68: $42
    dec hl                                        ; $5b69: $2b
    ld b, $43                                     ; $5b6a: $06 $43
    ld [hl], b                                    ; $5b6c: $70
    cp [hl]                                       ; $5b6d: $be
    ld b, c                                       ; $5b6e: $41
    inc b                                         ; $5b6f: $04
    ld b, a                                       ; $5b70: $47
    ld a, d                                       ; $5b71: $7a
    rst $18                                       ; $5b72: $df
    ld a, d                                       ; $5b73: $7a
    ld b, [hl]                                    ; $5b74: $46
    ld c, d                                       ; $5b75: $4a
    ld c, d                                       ; $5b76: $4a
    ld a, [bc]                                    ; $5b77: $0a
    ld b, l                                       ; $5b78: $45
    inc h                                         ; $5b79: $24
    ld b, b                                       ; $5b7a: $40
    inc b                                         ; $5b7b: $04
    ld c, b                                       ; $5b7c: $48
    ld a, d                                       ; $5b7d: $7a
    rst $08                                       ; $5b7e: $cf
    ld [hl], e                                    ; $5b7f: $73
    jp hl                                         ; $5b80: $e9


    nop                                           ; $5b81: $00
    inc h                                         ; $5b82: $24
    add [hl]                                      ; $5b83: $86
    nop                                           ; $5b84: $00
    push bc                                       ; $5b85: $c5
    ld bc, $392a                                  ; $5b86: $01 $2a $39
    ld b, c                                       ; $5b89: $41
    nop                                           ; $5b8a: $00
    push bc                                       ; $5b8b: $c5
    ld b, h                                       ; $5b8c: $44
    adc [hl]                                      ; $5b8d: $8e
    ld c, a                                       ; $5b8e: $4f
    ld c, d                                       ; $5b8f: $4a
    ld de, $237a                                  ; $5b90: $11 $7a $23
    add l                                         ; $5b93: $85
    rlca                                          ; $5b94: $07
    cp a                                          ; $5b95: $bf
    db $e4                                        ; $5b96: $e4
    add [hl]                                      ; $5b97: $86
    ld b, $7a                                     ; $5b98: $06 $7a
    ld a, a                                       ; $5b9a: $7f
    nop                                           ; $5b9b: $00
    ld b, [hl]                                    ; $5b9c: $46
    ld bc, $034f                                  ; $5b9d: $01 $4f $03
    call nz, $c408                                ; $5ba0: $c4 $08 $c4
    ld [hl+], a                                   ; $5ba3: $22
    sub h                                         ; $5ba4: $94
    adc c                                         ; $5ba5: $89
    ld d, d                                       ; $5ba6: $52
    adc $e6                                       ; $5ba7: $ce $e6
    ld b, [hl]                                    ; $5ba9: $46
    add [hl]                                      ; $5baa: $86
    ld bc, $bb00                                  ; $5bab: $01 $00 $bb
    ld c, c                                       ; $5bae: $49
    inc a                                         ; $5baf: $3c
    jr nz, @+$7e                                  ; $5bb0: $20 $7c

    add l                                         ; $5bb2: $85
    ldh [$c9], a                                  ; $5bb3: $e0 $c9
    add b                                         ; $5bb5: $80
    jp nc, $8332                                  ; $5bb6: $d2 $32 $83

    ret nz                                        ; $5bb9: $c0

    inc h                                         ; $5bba: $24
    ld b, l                                       ; $5bbb: $45
    inc b                                         ; $5bbc: $04
    ld [$01bb], sp                                ; $5bbd: $08 $bb $01
    ld a, h                                       ; $5bc0: $7c
    add c                                         ; $5bc1: $81
    ld b, c                                       ; $5bc2: $41
    add b                                         ; $5bc3: $80
    dec l                                         ; $5bc4: $2d
    ld a, [hl]                                    ; $5bc5: $7e
    dec h                                         ; $5bc6: $25

jr_062_5bc7:
    ld a, [$1c97]                                 ; $5bc7: $fa $97 $1c
    jp nz, Jump_062_62fd                          ; $5bca: $c2 $fd $62

    ld b, $7b                                     ; $5bcd: $06 $7b
    ld b, l                                       ; $5bcf: $45
    ld c, e                                       ; $5bd0: $4b
    dec hl                                        ; $5bd1: $2b
    cp h                                          ; $5bd2: $bc
    and d                                         ; $5bd3: $a2
    or $66                                        ; $5bd4: $f6 $66
    ld hl, sp-$5f                                 ; $5bd6: $f8 $a1
    add b                                         ; $5bd8: $80
    db $db                                        ; $5bd9: $db
    ret nz                                        ; $5bda: $c0

    add e                                         ; $5bdb: $83
    nop                                           ; $5bdc: $00
    ld b, c                                       ; $5bdd: $41
    push hl                                       ; $5bde: $e5
    ld a, c                                       ; $5bdf: $79
    add h                                         ; $5be0: $84

jr_062_5be1:
    cp e                                          ; $5be1: $bb
    inc bc                                        ; $5be2: $03
    ld hl, sp-$7c                                 ; $5be3: $f8 $84
    db $10                                        ; $5be5: $10
    add l                                         ; $5be6: $85
    cpl                                           ; $5be7: $2f
    ld [hl], c                                    ; $5be8: $71
    db $fc                                        ; $5be9: $fc
    ld bc, $617b                                  ; $5bea: $01 $7b $61
    nop                                           ; $5bed: $00
    ld bc, $f8e6                                  ; $5bee: $01 $e6 $f8
    add sp, $3b                                   ; $5bf1: $e8 $3b
    ld [bc], a                                    ; $5bf3: $02
    ret c                                         ; $5bf4: $d8

    inc b                                         ; $5bf5: $04
    or d                                          ; $5bf6: $b2
    ld a, e                                       ; $5bf7: $7b
    add b                                         ; $5bf8: $80
    ld h, b                                       ; $5bf9: $60
    dec sp                                        ; $5bfa: $3b
    ld b, l                                       ; $5bfb: $45
    halt                                          ; $5bfc: $76
    ld c, b                                       ; $5bfd: $48
    nop                                           ; $5bfe: $00
    ld a, h                                       ; $5bff: $7c
    rlca                                          ; $5c00: $07
    add b                                         ; $5c01: $80
    push de                                       ; $5c02: $d5
    ld a, d                                       ; $5c03: $7a
    ld h, $bc                                     ; $5c04: $26 $bc
    ld b, b                                       ; $5c06: $40
    cp h                                          ; $5c07: $bc
    inc hl                                        ; $5c08: $23
    jr c, jr_062_5c0c                             ; $5c09: $38 $01

    ld a, d                                       ; $5c0b: $7a

jr_062_5c0c:
    add e                                         ; $5c0c: $83
    ei                                            ; $5c0d: $fb
    inc bc                                        ; $5c0e: $03
    nop                                           ; $5c0f: $00
    ld hl, sp+$67                                 ; $5c10: $f8 $67
    add b                                         ; $5c12: $80
    push de                                       ; $5c13: $d5
    ld a, d                                       ; $5c14: $7a
    dec h                                         ; $5c15: $25
    ld a, h                                       ; $5c16: $7c
    ld b, d                                       ; $5c17: $42
    ld a, [hl-]                                   ; $5c18: $3a
    ld b, d                                       ; $5c19: $42
    cpl                                           ; $5c1a: $2f
    dec h                                         ; $5c1b: $25
    ld a, [$7a8b]                                 ; $5c1c: $fa $8b $7a
    jr @+$16                                      ; $5c1f: $18 $14

    cp e                                          ; $5c21: $bb
    ld b, d                                       ; $5c22: $42
    ret nz                                        ; $5c23: $c0

    ld h, c                                       ; $5c24: $61
    dec hl                                        ; $5c25: $2b
    db $f4                                        ; $5c26: $f4
    dec b                                         ; $5c27: $05
    ld l, e                                       ; $5c28: $6b
    ld [hl], a                                    ; $5c29: $77
    inc hl                                        ; $5c2a: $23
    nop                                           ; $5c2b: $00
    call nz, $bc00                                ; $5c2c: $c4 $00 $bc
    ret nz                                        ; $5c2f: $c0

    ld a, d                                       ; $5c30: $7a
    ld b, h                                       ; $5c31: $44
    db $fd                                        ; $5c32: $fd
    ld b, a                                       ; $5c33: $47
    jp Jump_000_00c6                              ; $5c34: $c3 $c6 $00


    cp l                                          ; $5c37: $bd
    jr nz, jr_062_5be1                            ; $5c38: $20 $a7

    db $fd                                        ; $5c3a: $fd
    ld b, e                                       ; $5c3b: $43
    ld c, e                                       ; $5c3c: $4b
    ld l, e                                       ; $5c3d: $6b

jr_062_5c3e:
    add b                                         ; $5c3e: $80
    di                                            ; $5c3f: $f3
    dec b                                         ; $5c40: $05
    xor h                                         ; $5c41: $ac
    nop                                           ; $5c42: $00
    ld a, h                                       ; $5c43: $7c
    and d                                         ; $5c44: $a2
    ret c                                         ; $5c45: $d8

    ld b, a                                       ; $5c46: $47
    ld a, d                                       ; $5c47: $7a
    ld a, c                                       ; $5c48: $79
    ret nz                                        ; $5c49: $c0

    db $e4                                        ; $5c4a: $e4
    ld [hl], l                                    ; $5c4b: $75
    nop                                           ; $5c4c: $00

jr_062_5c4d:
    ld l, e                                       ; $5c4d: $6b
    inc bc                                        ; $5c4e: $03
    ld l, e                                       ; $5c4f: $6b
    ld c, e                                       ; $5c50: $4b
    halt                                          ; $5c51: $76
    ld b, l                                       ; $5c52: $45
    or a                                          ; $5c53: $b7
    inc h                                         ; $5c54: $24
    add b                                         ; $5c55: $80
    ld [hl], a                                    ; $5c56: $77
    or b                                          ; $5c57: $b0
    ld h, l                                       ; $5c58: $65
    ld hl, sp+$03                                 ; $5c59: $f8 $03
    ld a, [$0083]                                 ; $5c5b: $fa $83 $00
    ld a, b                                       ; $5c5e: $78
    and b                                         ; $5c5f: $a0
    jr nc, jr_062_5c63                            ; $5c60: $30 $01

    di                                            ; $5c62: $f3

jr_062_5c63:
    ld [bc], a                                    ; $5c63: $02
    inc a                                         ; $5c64: $3c
    and c                                         ; $5c65: $a1
    call c, Call_000_3d65                         ; $5c66: $dc $65 $3d
    add a                                         ; $5c69: $87
    inc sp                                        ; $5c6a: $33
    dec c                                         ; $5c6b: $0d
    ld a, [hl]                                    ; $5c6c: $7e
    push bc                                       ; $5c6d: $c5
    nop                                           ; $5c6e: $00
    ld a, l                                       ; $5c6f: $7d
    db $e4                                        ; $5c70: $e4
    jr nc, @+$05                                  ; $5c71: $30 $03

    ld a, e                                       ; $5c73: $7b
    pop hl                                        ; $5c74: $e1
    or $61                                        ; $5c75: $f6 $61
    halt                                          ; $5c77: $76
    ld c, b                                       ; $5c78: $48
    ld a, [$fc95]                                 ; $5c79: $fa $95 $fc
    jr z, jr_062_5c3e                             ; $5c7c: $28 $c0

    push hl                                       ; $5c7e: $e5
    jr nz, jr_062_5cf8                            ; $5c7f: $20 $77

    ld b, c                                       ; $5c81: $41
    rst $30                                       ; $5c82: $f7
    ld b, l                                       ; $5c83: $45
    ld d, [hl]                                    ; $5c84: $56
    daa                                           ; $5c85: $27
    add b                                         ; $5c86: $80
    ld [hl], d                                    ; $5c87: $72
    xor [hl]                                      ; $5c88: $ae
    dec b                                         ; $5c89: $05
    ld c, l                                       ; $5c8a: $4d
    inc sp                                        ; $5c8b: $33
    ld bc, $e4bb                                  ; $5c8c: $01 $bb $e4
    ld b, b                                       ; $5c8f: $40
    halt                                          ; $5c90: $76
    ret                                           ; $5c91: $c9


    db $fc                                        ; $5c92: $fc
    jp z, $b200                                   ; $5c93: $ca $00 $b2

    sbc d                                         ; $5c96: $9a
    ld c, b                                       ; $5c97: $48
    cp e                                          ; $5c98: $bb
    pop hl                                        ; $5c99: $e1
    or b                                          ; $5c9a: $b0
    ld [bc], a                                    ; $5c9b: $02
    ld l, e                                       ; $5c9c: $6b
    ld a, [$0261]                                 ; $5c9d: $fa $61 $02
    di                                            ; $5ca0: $f3
    and c                                         ; $5ca1: $a1
    dec hl                                        ; $5ca2: $2b
    or $63                                        ; $5ca3: $f6 $63
    inc [hl]                                      ; $5ca5: $34
    ld e, c                                       ; $5ca6: $59
    xor [hl]                                      ; $5ca7: $ae
    dec hl                                        ; $5ca8: $2b
    ld [hl], $e6                                  ; $5ca9: $36 $e6
    push af                                       ; $5cab: $f5
    ld h, e                                       ; $5cac: $63
    cp $ca                                        ; $5cad: $fe $ca
    ld b, d                                       ; $5caf: $42
    add b                                         ; $5cb0: $80
    db $d3                                        ; $5cb1: $d3
    dec c                                         ; $5cb2: $0d
    inc d                                         ; $5cb3: $14
    ld c, l                                       ; $5cb4: $4d
    ld [hl], l                                    ; $5cb5: $75
    push bc                                       ; $5cb6: $c5
    dec hl                                        ; $5cb7: $2b
    ld h, h                                       ; $5cb8: $64
    ld [hl-], a                                   ; $5cb9: $32
    inc bc                                        ; $5cba: $03
    ld l, l                                       ; $5cbb: $6d
    scf                                           ; $5cbc: $37
    ld h, $86                                     ; $5cbd: $26 $86
    inc l                                         ; $5cbf: $2c
    xor h                                         ; $5cc0: $ac
    dec l                                         ; $5cc1: $2d
    dec l                                         ; $5cc2: $2d
    sub h                                         ; $5cc3: $94
    ld a, [hl+]                                   ; $5cc4: $2a
    dec [hl]                                      ; $5cc5: $35
    call nz, $83f7                                ; $5cc6: $c4 $f7 $83
    jr z, jr_062_5c4d                             ; $5cc9: $28 $82

    ld c, l                                       ; $5ccb: $4d
    ld [bc], a                                    ; $5ccc: $02
    ld [hl], h                                    ; $5ccd: $74
    ld [hl+], a                                   ; $5cce: $22
    ld l, l                                       ; $5ccf: $6d
    scf                                           ; $5cd0: $37
    dec [hl]                                      ; $5cd1: $35
    ret nz                                        ; $5cd2: $c0

    ldh [$be], a                                  ; $5cd3: $e0 $be
    pop hl                                        ; $5cd5: $e1
    sub d                                         ; $5cd6: $92
    daa                                           ; $5cd7: $27
    or c                                          ; $5cd8: $b1
    ld b, d                                       ; $5cd9: $42
    ld a, b                                       ; $5cda: $78
    add e                                         ; $5cdb: $83
    nop                                           ; $5cdc: $00
    ld l, e                                       ; $5cdd: $6b
    ld h, e                                       ; $5cde: $63
    ld [hl], d                                    ; $5cdf: $72
    ld b, d                                       ; $5ce0: $42
    ret nz                                        ; $5ce1: $c0

    rst $20                                       ; $5ce2: $e7
    or b                                          ; $5ce3: $b0
    ld c, $f6                                     ; $5ce4: $0e $f6
    inc c                                         ; $5ce6: $0c
    cp l                                          ; $5ce7: $bd
    ld [bc], a                                    ; $5ce8: $02
    add d                                         ; $5ce9: $82
    ld [c], a                                     ; $5cea: $e2
    or e                                          ; $5ceb: $b3
    and b                                         ; $5cec: $a0
    rlca                                          ; $5ced: $07
    dec hl                                        ; $5cee: $2b
    ld l, e                                       ; $5cef: $6b
    ld c, e                                       ; $5cf0: $4b
    ld [hl], h                                    ; $5cf1: $74
    inc hl                                        ; $5cf2: $23
    add b                                         ; $5cf3: $80
    ld [hl], l                                    ; $5cf4: $75
    dec sp                                        ; $5cf5: $3b
    push hl                                       ; $5cf6: $e5
    db $fc                                        ; $5cf7: $fc

jr_062_5cf8:
    db $e3                                        ; $5cf8: $e3
    halt                                          ; $5cf9: $76
    and e                                         ; $5cfa: $a3
    nop                                           ; $5cfb: $00
    ld [hl-], a                                   ; $5cfc: $32
    add [hl]                                      ; $5cfd: $86
    pop bc                                        ; $5cfe: $c1
    pop hl                                        ; $5cff: $e1
    nop                                           ; $5d00: $00
    db $e4                                        ; $5d01: $e4
    ld [hl], $9a                                  ; $5d02: $36 $9a
    ret nz                                        ; $5d04: $c0

    ld [c], a                                     ; $5d05: $e2
    ld [hl], h                                    ; $5d06: $74
    dec h                                         ; $5d07: $25
    or [hl]                                       ; $5d08: $b6
    and e                                         ; $5d09: $a3
    ld [hl-], a                                   ; $5d0a: $32
    add e                                         ; $5d0b: $83
    nop                                           ; $5d0c: $00
    cp c                                          ; $5d0d: $b9
    ldh [$3a], a                                  ; $5d0e: $e0 $3a
    add d                                         ; $5d10: $82
    add b                                         ; $5d11: $80
    jp c, $ca7a                                   ; $5d12: $da $7a $ca

    ei                                            ; $5d15: $fb
    and [hl]                                      ; $5d16: $a6
    ld a, e                                       ; $5d17: $7b
    and c                                         ; $5d18: $a1
    ld b, e                                       ; $5d19: $43
    ldh [$f5], a                                  ; $5d1a: $e0 $f5
    ld [bc], a                                    ; $5d1c: $02
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    ld [c], a                                     ; $5d1f: $e2
    nop                                           ; $5d20: $00
    or h                                          ; $5d21: $b4
    ld a, d                                       ; $5d22: $7a
    adc $50                                       ; $5d23: $ce $50
    add d                                         ; $5d25: $82
    adc l                                         ; $5d26: $8d
    ld b, e                                       ; $5d27: $43
    or a                                          ; $5d28: $b7
    nop                                           ; $5d29: $00
    ld b, h                                       ; $5d2a: $44
    dec h                                         ; $5d2b: $25
    add b                                         ; $5d2c: $80
    sub $00                                       ; $5d2d: $d6 $00
    ld a, d                                       ; $5d2f: $7a
    adc $6e                                       ; $5d30: $ce $6e
    add l                                         ; $5d32: $85
    ld a, [hl]                                    ; $5d33: $7e
    add hl, hl                                    ; $5d34: $29
    nop                                           ; $5d35: $00
    pop bc                                        ; $5d36: $c1
    add b                                         ; $5d37: $80
    rst $10                                       ; $5d38: $d7
    and h                                         ; $5d39: $a4
    ld de, $8648                                  ; $5d3a: $11 $48 $86
    ld c, d                                       ; $5d3d: $4a
    ld c, $00                                     ; $5d3e: $0e $00
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    cp a                                          ; $5d42: $bf
    db $dd                                        ; $5d43: $dd
    sbc $a0                                       ; $5d44: $de $a0
    and b                                         ; $5d46: $a0
    and b                                         ; $5d47: $a0
    call c, $e2fa                                 ; $5d48: $dc $fa $e2
    and b                                         ; $5d4b: $a0
    dec de                                        ; $5d4c: $1b
    ret c                                         ; $5d4d: $d8

    reti                                          ; $5d4e: $d9


    db $fc                                        ; $5d4f: $fc
    db $e3                                        ; $5d50: $e3
    jp nc, $fcd3                                  ; $5d51: $d2 $d3 $fc

    di                                            ; $5d54: $f3
    ldh [$e0], a                                  ; $5d55: $e0 $e0
    sub $e3                                       ; $5d57: $d6 $e3
    ld a, [hl]                                    ; $5d59: $7e
    ld a, [$e2e8]                                 ; $5d5a: $fa $e8 $e2
    db $e3                                        ; $5d5d: $e3
    db $e4                                        ; $5d5e: $e4
    rst $18                                       ; $5d5f: $df
    ldh [$e1], a                                  ; $5d60: $e0 $e1
    ld a, [$dfe0]                                 ; $5d62: $fa $e0 $df
    and b                                         ; $5d65: $a0
    sub $d7                                       ; $5d66: $d6 $d7
    jp c, $fcdb                                   ; $5d68: $da $db $fc

    db $e3                                        ; $5d6b: $e3
    call nc, Call_062_7bd5                        ; $5d6c: $d4 $d5 $7b
    and b                                         ; $5d6f: $a0
    and b                                         ; $5d70: $a0
    db $fc                                        ; $5d71: $fc
    rst $28                                       ; $5d72: $ef
    ret nc                                        ; $5d73: $d0

    pop de                                        ; $5d74: $d1
    jp c, $d6db                                   ; $5d75: $da $db $d6

    ld [c], a                                     ; $5d78: $e2
    db $fc                                        ; $5d79: $fc
    ret nc                                        ; $5d7a: $d0

    db $e3                                        ; $5d7b: $e3
    ld a, [$e8e4]                                 ; $5d7c: $fa $e4 $e8
    jp hl                                         ; $5d7f: $e9


    ld [$e6e5], a                                 ; $5d80: $ea $e5 $e6
    rst $20                                       ; $5d83: $e7
    ld [hl], b                                    ; $5d84: $70
    ld a, [$82e0]                                 ; $5d85: $fa $e0 $82
    and $7a                                       ; $5d88: $e6 $7a
    pop hl                                        ; $5d8a: $e1
    ld [hl], d                                    ; $5d8b: $72
    pop hl                                        ; $5d8c: $e1

jr_062_5d8d:
    sbc a                                         ; $5d8d: $9f
    and d                                         ; $5d8e: $a2
    sbc l                                         ; $5d8f: $9d
    rst $38                                       ; $5d90: $ff
    pop hl                                        ; $5d91: $e1
    ld [bc], a                                    ; $5d92: $02
    ld a, [$9fe1]                                 ; $5d93: $fa $e1 $9f
    ld h, d                                       ; $5d96: $62
    pop hl                                        ; $5d97: $e1
    ld l, d                                       ; $5d98: $6a
    ldh [$d6], a                                  ; $5d99: $e0 $d6
    db $e3                                        ; $5d9b: $e3
    ld a, [$43ea]                                 ; $5d9c: $fa $ea $43
    push hl                                       ; $5d9f: $e5
    add d                                         ; $5da0: $82
    push hl                                       ; $5da1: $e5
    cp $9a                                        ; $5da2: $fe $9a
    pop hl                                        ; $5da4: $e1
    ret nc                                        ; $5da5: $d0

    pop de                                        ; $5da6: $d1
    and b                                         ; $5da7: $a0
    sbc a                                         ; $5da8: $9f
    sbc l                                         ; $5da9: $9d
    sbc l                                         ; $5daa: $9d
    sbc h                                         ; $5dab: $9c
    push de                                       ; $5dac: $d5
    ld b, [hl]                                    ; $5dad: $46
    rst $38                                       ; $5dae: $ff
    ld [c], a                                     ; $5daf: $e2
    xor [hl]                                      ; $5db0: $ae
    ld sp, hl                                     ; $5db1: $f9
    ldh [$9c], a                                  ; $5db2: $e0 $9c
    cp l                                          ; $5db4: $bd
    pop hl                                        ; $5db5: $e1
    call nc, $43d5                                ; $5db6: $d4 $d5 $43
    sub $d7                                       ; $5db9: $d6 $d7
    ld a, [de]                                    ; $5dbb: $1a
    pop hl                                        ; $5dbc: $e1
    dec a                                         ; $5dbd: $3d
    db $eb                                        ; $5dbe: $eb
    ld b, e                                       ; $5dbf: $43
    db $e4                                        ; $5dc0: $e4
    inc b                                         ; $5dc1: $04
    db $ec                                        ; $5dc2: $ec
    sbc a                                         ; $5dc3: $9f
    jp Jump_062_5ee1                              ; $5dc4: $c3 $e1 $5e


    add $e0                                       ; $5dc7: $c6 $e0
    ld b, l                                       ; $5dc9: $45
    ld b, l                                       ; $5dca: $45
    ld b, [hl]                                    ; $5dcb: $46
    xor a                                         ; $5dcc: $af
    cp d                                          ; $5dcd: $ba
    db $e3                                        ; $5dce: $e3
    sbc h                                         ; $5dcf: $9c
    ld a, h                                       ; $5dd0: $7c
    ldh [rLCDC], a                                ; $5dd1: $e0 $40
    ldh [$c1], a                                  ; $5dd3: $e0 $c1
    ld b, e                                       ; $5dd5: $43
    ld [$e007], a                                 ; $5dd6: $ea $07 $e0
    ld b, e                                       ; $5dd9: $43
    db $e3                                        ; $5dda: $e3
    add d                                         ; $5ddb: $82
    rst $20                                       ; $5ddc: $e7
    inc b                                         ; $5ddd: $04
    db $e3                                        ; $5dde: $e3
    sbc [hl]                                      ; $5ddf: $9e
    add h                                         ; $5de0: $84
    pop hl                                        ; $5de1: $e1
    cp a                                          ; $5de2: $bf
    xor a                                         ; $5de3: $af
    ld b, l                                       ; $5de4: $45
    dec hl                                        ; $5de5: $2b
    inc l                                         ; $5de6: $2c
    ld a, [hl+]                                   ; $5de7: $2a
    ld b, l                                       ; $5de8: $45
    ld a, l                                       ; $5de9: $7d
    db $e3                                        ; $5dea: $e3
    xor a                                         ; $5deb: $af
    dec de                                        ; $5dec: $1b
    ld b, [hl]                                    ; $5ded: $46
    and c                                         ; $5dee: $a1
    nop                                           ; $5def: $00
    pop hl                                        ; $5df0: $e1
    sub $d7                                       ; $5df1: $d6 $d7
    dec a                                         ; $5df3: $3d
    db $ed                                        ; $5df4: $ed
    add [hl]                                      ; $5df5: $86
    rst $08                                       ; $5df6: $cf
    halt                                          ; $5df7: $76
    pop bc                                        ; $5df8: $c1
    cp $c0                                        ; $5df9: $fe $c0
    ldh [$ae], a                                  ; $5dfb: $e0 $ae
    ld b, [hl]                                    ; $5dfd: $46
    ld b, l                                       ; $5dfe: $45
    dec l                                         ; $5dff: $2d
    jr nz, jr_062_5e22                            ; $5e00: $20 $20

    jr nz, jr_062_5d8d                            ; $5e02: $20 $89

    inc [hl]                                      ; $5e04: $34
    cp a                                          ; $5e05: $bf
    ldh [$7d], a                                  ; $5e06: $e0 $7d
    ld [c], a                                     ; $5e08: $e2
    sbc [hl]                                      ; $5e09: $9e
    ld a, [hl]                                    ; $5e0a: $7e
    call nz, $ec3d                                ; $5e0b: $c4 $3d $ec
    ld b, e                                       ; $5e0e: $43
    ld [c], a                                     ; $5e0f: $e2
    and b                                         ; $5e10: $a0
    ld hl, sp-$7e                                 ; $5e11: $f8 $82
    add sp, -$37                                  ; $5e13: $e8 $c9
    jp nz, $e004                                  ; $5e15: $c2 $04 $e0

    xor a                                         ; $5e18: $af
    scf                                           ; $5e19: $37
    jr c, jr_062_5e40                             ; $5e1a: $38 $24

    cpl                                           ; $5e1c: $2f
    rst $28                                       ; $5e1d: $ef
    inc l                                         ; $5e1e: $2c
    dec hl                                        ; $5e1f: $2b
    ld b, a                                       ; $5e20: $47
    ld d, l                                       ; $5e21: $55

jr_062_5e22:
    ld sp, hl                                     ; $5e22: $f9
    jp nz, $9c91                                  ; $5e23: $c2 $91 $9c

    sbc a                                         ; $5e26: $9f
    add b                                         ; $5e27: $80
    nop                                           ; $5e28: $00
    pop hl                                        ; $5e29: $e1
    ld e, [hl]                                    ; $5e2a: $5e
    pop bc                                        ; $5e2b: $c1
    dec a                                         ; $5e2c: $3d
    db $eb                                        ; $5e2d: $eb
    add [hl]                                      ; $5e2e: $86
    pop bc                                        ; $5e2f: $c1
    inc b                                         ; $5e30: $04
    push bc                                       ; $5e31: $c5
    ld [$06c1], sp                                ; $5e32: $08 $c1 $06
    push hl                                       ; $5e35: $e5
    xor [hl]                                      ; $5e36: $ae
    rst $38                                       ; $5e37: $ff
    add hl, sp                                    ; $5e38: $39
    dec [hl]                                      ; $5e39: $35
    dec [hl]                                      ; $5e3a: $35
    inc a                                         ; $5e3b: $3c
    ld c, b                                       ; $5e3c: $48
    ld c, c                                       ; $5e3d: $49
    ld e, l                                       ; $5e3e: $5d
    ld h, b                                       ; $5e3f: $60

jr_062_5e40:
    add l                                         ; $5e40: $85
    ld d, l                                       ; $5e41: $55
    cp a                                          ; $5e42: $bf
    pop bc                                        ; $5e43: $c1
    ld b, [hl]                                    ; $5e44: $46
    ld bc, $e0e1                                  ; $5e45: $01 $e1 $e0
    and l                                         ; $5e48: $a5
    add b                                         ; $5e49: $80
    ret nc                                        ; $5e4a: $d0

    add d                                         ; $5e4b: $82
    rst $20                                       ; $5e4c: $e7
    sbc h                                         ; $5e4d: $9c
    cp $12                                        ; $5e4e: $fe $12
    db $e3                                        ; $5e50: $e3

Jump_062_5e51:
    ld b, [hl]                                    ; $5e51: $46
    xor a                                         ; $5e52: $af
    ld a, [hl-]                                   ; $5e53: $3a
    dec [hl]                                      ; $5e54: $35
    dec [hl]                                      ; $5e55: $35
    ld a, [hl-]                                   ; $5e56: $3a
    ld e, [hl]                                    ; $5e57: $5e
    rst $28                                       ; $5e58: $ef
    ld d, d                                       ; $5e59: $52
    ld d, e                                       ; $5e5a: $53
    ld d, e                                       ; $5e5b: $53
    ld b, l                                       ; $5e5c: $45
    cp a                                          ; $5e5d: $bf
    ret nz                                        ; $5e5e: $c0

    xor [hl]                                      ; $5e5f: $ae
    ld b, [hl]                                    ; $5e60: $46
    sbc [hl]                                      ; $5e61: $9e
    dec de                                        ; $5e62: $1b
    and b                                         ; $5e63: $a0
    and b                                         ; $5e64: $a0
    nop                                           ; $5e65: $00
    db $e3                                        ; $5e66: $e3
    jp c, $80db                                   ; $5e67: $da $db $80

    pop de                                        ; $5e6a: $d1
    add d                                         ; $5e6b: $82
    jp hl                                         ; $5e6c: $e9


    adc a                                         ; $5e6d: $8f
    jp nz, $45ff                                  ; $5e6e: $c2 $ff $45

    ld [hl], $35                                  ; $5e71: $36 $35
    dec [hl]                                      ; $5e73: $35
    dec [hl]                                      ; $5e74: $35
    add hl, sp                                    ; $5e75: $39
    ld e, e                                       ; $5e76: $5b
    xor [hl]                                      ; $5e77: $ae
    nop                                           ; $5e78: $00
    ld b, c                                       ; $5e79: $41
    jp nz, $c07c                                  ; $5e7a: $c2 $7c $c0

    add c                                         ; $5e7d: $81
    ret nz                                        ; $5e7e: $c0

    ld a, [hl]                                    ; $5e7f: $7e
    and e                                         ; $5e80: $a3
    add b                                         ; $5e81: $80
    db $d3                                        ; $5e82: $d3
    adc d                                         ; $5e83: $8a
    and h                                         ; $5e84: $a4
    ld c, c                                       ; $5e85: $49
    jp nz, $c2c5                                  ; $5e86: $c2 $c5 $c2

    ld e, $c1                                     ; $5e89: $1e $c1
    pop hl                                        ; $5e8b: $e1
    ld [hl], $4b                                  ; $5e8c: $36 $4b
    ld d, l                                       ; $5e8e: $55
    xor a                                         ; $5e8f: $af
    ld b, c                                       ; $5e90: $41
    call nz, $c0c1                                ; $5e91: $c4 $c1 $c0
    nop                                           ; $5e94: $00
    jp nz, $da93                                  ; $5e95: $c2 $93 $da

    db $db                                        ; $5e98: $db
    add b                                         ; $5e99: $80
    db $d3                                        ; $5e9a: $d3
    adc d                                         ; $5e9b: $8a
    and h                                         ; $5e9c: $a4
    and c                                         ; $5e9d: $a1
    pop de                                        ; $5e9e: $d1
    and e                                         ; $5e9f: $a3
    push bc                                       ; $5ea0: $c5
    ret nz                                        ; $5ea1: $c0

    dec [hl]                                      ; $5ea2: $35
    ccf                                           ; $5ea3: $3f
    dec [hl]                                      ; $5ea4: $35
    jr c, jr_062_5ede                             ; $5ea5: $38 $37

    ld c, d                                       ; $5ea7: $4a
    ld h, b                                       ; $5ea8: $60
    ld d, l                                       ; $5ea9: $55
    add c                                         ; $5eaa: $81
    db $e3                                        ; $5eab: $e3
    cp l                                          ; $5eac: $bd
    and c                                         ; $5ead: $a1
    pop bc                                        ; $5eae: $c1
    and c                                         ; $5eaf: $a1
    ldh [$83], a                                  ; $5eb0: $e0 $83
    nop                                           ; $5eb2: $00
    or c                                          ; $5eb3: $b1
    add d                                         ; $5eb4: $82
    and h                                         ; $5eb5: $a4
    adc d                                         ; $5eb6: $8a
    and b                                         ; $5eb7: $a0
    add hl, bc                                    ; $5eb8: $09
    ret nz                                        ; $5eb9: $c0

    xor a                                         ; $5eba: $af
    ld b, [hl]                                    ; $5ebb: $46
    dec a                                         ; $5ebc: $3d
    xor [hl]                                      ; $5ebd: $ae
    ld b, h                                       ; $5ebe: $44
    ld [c], a                                     ; $5ebf: $e2
    ld a, [hl-]                                   ; $5ec0: $3a
    ld b, a                                       ; $5ec1: $47
    ld e, l                                       ; $5ec2: $5d
    ld b, e                                       ; $5ec3: $43
    ld b, c                                       ; $5ec4: $41
    ldh [$c2], a                                  ; $5ec5: $e0 $c2
    and d                                         ; $5ec7: $a2
    ret nz                                        ; $5ec8: $c0

    cp l                                          ; $5ec9: $bd
    and b                                         ; $5eca: $a0
    pop bc                                        ; $5ecb: $c1
    and b                                         ; $5ecc: $a0
    nop                                           ; $5ecd: $00
    or [hl]                                       ; $5ece: $b6
    add d                                         ; $5ecf: $82
    rst $00                                       ; $5ed0: $c7
    ret                                           ; $5ed1: $c9


    and e                                         ; $5ed2: $a3
    dec b                                         ; $5ed3: $05
    pop hl                                        ; $5ed4: $e1
    dec [hl]                                      ; $5ed5: $35
    add hl, sp                                    ; $5ed6: $39
    inc bc                                        ; $5ed7: $03
    ld e, [hl]                                    ; $5ed8: $5e
    ld d, d                                       ; $5ed9: $52
    jp nz, Jump_000_3fe4                          ; $5eda: $c2 $e4 $3f

    and d                                         ; $5edd: $a2

jr_062_5ede:
    cp $80                                        ; $5ede: $fe $80
    nop                                           ; $5ee0: $00

Jump_062_5ee1:
    cp c                                          ; $5ee1: $b9
    adc d                                         ; $5ee2: $8a
    add h                                         ; $5ee3: $84
    adc c                                         ; $5ee4: $89
    and d                                         ; $5ee5: $a2
    add b                                         ; $5ee6: $80
    ld b, a                                       ; $5ee7: $47
    ret nz                                        ; $5ee8: $c0

    ret nz                                        ; $5ee9: $c0

    ld [c], a                                     ; $5eea: $e2
    inc bc                                        ; $5eeb: $03
    ldh [rSB], a                                  ; $5eec: $e0 $01
    and d                                         ; $5eee: $a2
    add d                                         ; $5eef: $82
    push hl                                       ; $5ef0: $e5
    nop                                           ; $5ef1: $00
    cp a                                          ; $5ef2: $bf
    add b                                         ; $5ef3: $80
    ld [c], a                                     ; $5ef4: $e2
    ld b, l                                       ; $5ef5: $45
    ld a, $47                                     ; $5ef6: $3e $47
    ret nz                                        ; $5ef8: $c0

    dec [hl]                                      ; $5ef9: $35
    ld h, d                                       ; $5efa: $62
    ld h, [hl]                                    ; $5efb: $66
    ld a, [hl-]                                   ; $5efc: $3a
    ld d, d                                       ; $5efd: $52
    inc bc                                        ; $5efe: $03
    db $e3                                        ; $5eff: $e3
    add l                                         ; $5f00: $85
    ret nz                                        ; $5f01: $c0

    ldh [$80], a                                  ; $5f02: $e0 $80
    add d                                         ; $5f04: $82
    add d                                         ; $5f05: $82
    and l                                         ; $5f06: $a5
    nop                                           ; $5f07: $00
    or a                                          ; $5f08: $b7
    nop                                           ; $5f09: $00
    db $e3                                        ; $5f0a: $e3
    ret nz                                        ; $5f0b: $c0

    ld [c], a                                     ; $5f0c: $e2
    ld h, d                                       ; $5f0d: $62
    ld h, a                                       ; $5f0e: $67
    ld l, b                                       ; $5f0f: $68
    jp Jump_000_3666                              ; $5f10: $c3 $66 $36


    push bc                                       ; $5f13: $c5
    add c                                         ; $5f14: $81
    add e                                         ; $5f15: $83
    add b                                         ; $5f16: $80
    add $a2                                       ; $5f17: $c6 $a2
    add d                                         ; $5f19: $82
    db $e3                                        ; $5f1a: $e3
    jp c, $e1db                                   ; $5f1b: $da $db $e1

    and b                                         ; $5f1e: $a0
    dec a                                         ; $5f1f: $3d
    adc [hl]                                      ; $5f20: $8e
    add [hl]                                      ; $5f21: $86
    ld h, a                                       ; $5f22: $67
    nop                                           ; $5f23: $00
    push hl                                       ; $5f24: $e5
    add a                                         ; $5f25: $87
    and b                                         ; $5f26: $a0
    ld l, c                                       ; $5f27: $69
    dec [hl]                                      ; $5f28: $35
    dec [hl]                                      ; $5f29: $35
    inc bc                                        ; $5f2a: $03
    ld l, b                                       ; $5f2b: $68
    ld h, [hl]                                    ; $5f2c: $66
    add d                                         ; $5f2d: $82
    db $e4                                        ; $5f2e: $e4
    inc b                                         ; $5f2f: $04
    add l                                         ; $5f30: $85
    add sp, $63                                   ; $5f31: $e8 $63
    add b                                         ; $5f33: $80
    call nc, $e900                                ; $5f34: $d4 $00 $e9
    ccf                                           ; $5f37: $3f
    ldh [rNR21], a                                ; $5f38: $e0 $16
    ret nz                                        ; $5f3a: $c0

    ldh [$35], a                                  ; $5f3b: $e0 $35
    ld l, d                                       ; $5f3d: $6a
    ld b, a                                       ; $5f3e: $47
    add e                                         ; $5f3f: $83
    and c                                         ; $5f40: $a1
    adc b                                         ; $5f41: $88
    and b                                         ; $5f42: $a0
    ld [hl], d                                    ; $5f43: $72
    ld h, c                                       ; $5f44: $61
    add d                                         ; $5f45: $82
    ld [c], a                                     ; $5f46: $e2
    ldh a, [rSCX]                                 ; $5f47: $f0 $43
    adc l                                         ; $5f49: $8d
    nop                                           ; $5f4a: $00
    xor h                                         ; $5f4b: $ac
    add b                                         ; $5f4c: $80
    jp $c0bf                                      ; $5f4d: $c3 $bf $c0


    ld l, e                                       ; $5f50: $6b
    ld l, h                                       ; $5f51: $6c
    dec [hl]                                      ; $5f52: $35
    ld l, h                                       ; $5f53: $6c
    dec bc                                        ; $5f54: $0b
    ld l, l                                       ; $5f55: $6d
    ld b, b                                       ; $5f56: $40
    call nz, $9e62                                ; $5f57: $c4 $62 $9e
    ld a, [c]                                     ; $5f5a: $f2
    ld b, c                                       ; $5f5b: $41
    rst $00                                       ; $5f5c: $c7
    ld h, b                                       ; $5f5d: $60
    ld l, d                                       ; $5f5e: $6a
    ld h, d                                       ; $5f5f: $62
    add b                                         ; $5f60: $80
    halt                                          ; $5f61: $76
    ld hl, sp+$00                                 ; $5f62: $f8 $00
    call nz, $a0c0                                ; $5f64: $c4 $c0 $a0
    add e                                         ; $5f67: $83
    and d                                         ; $5f68: $a2
    ld l, [hl]                                    ; $5f69: $6e
    ld [hl], b                                    ; $5f6a: $70
    ld [hl], c                                    ; $5f6b: $71
    ld [hl], b                                    ; $5f6c: $70
    ld l, [hl]                                    ; $5f6d: $6e
    ld bc, $4742                                  ; $5f6e: $01 $42 $47
    add d                                         ; $5f71: $82
    adc b                                         ; $5f72: $88
    and c                                         ; $5f73: $a1
    and a                                         ; $5f74: $a7
    ld b, c                                       ; $5f75: $41
    inc b                                         ; $5f76: $04
    pop hl                                        ; $5f77: $e1
    jp Jump_000_004e                              ; $5f78: $c3 $4e $00


    xor l                                         ; $5f7b: $ad
    ld bc, $86a4                                  ; $5f7c: $01 $a4 $86
    inc bc                                        ; $5f7f: $03
    and d                                         ; $5f80: $a2
    dec [hl]                                      ; $5f81: $35
    add hl, sp                                    ; $5f82: $39
    add a                                         ; $5f83: $87
    add a                                         ; $5f84: $87
    rst $00                                       ; $5f85: $c7
    pop bc                                        ; $5f86: $c1
    ld b, e                                       ; $5f87: $43
    pop af                                        ; $5f88: $f1
    nop                                           ; $5f89: $00
    xor h                                         ; $5f8a: $ac
    ret nc                                        ; $5f8b: $d0

    add hl, bc                                    ; $5f8c: $09
    pop de                                        ; $5f8d: $d1
    rst $38                                       ; $5f8e: $ff
    add l                                         ; $5f8f: $85
    inc a                                         ; $5f90: $3c
    pop bc                                        ; $5f91: $c1
    ld a, [hl-]                                   ; $5f92: $3a
    add a                                         ; $5f93: $87
    add d                                         ; $5f94: $82
    add [hl]                                      ; $5f95: $86
    and e                                         ; $5f96: $a3
    ldh [rSTAT], a                                ; $5f97: $e0 $41
    jp $1050                                      ; $5f99: $c3 $50 $10


    nop                                           ; $5f9c: $00
    xor h                                         ; $5f9d: $ac
    ld a, [hl]                                    ; $5f9e: $7e
    db $e4                                        ; $5f9f: $e4
    ld c, d                                       ; $5fa0: $4a
    and b                                         ; $5fa1: $a0
    cp h                                          ; $5fa2: $bc
    and c                                         ; $5fa3: $a1
    inc a                                         ; $5fa4: $3c
    ccf                                           ; $5fa5: $3f
    ld [c], a                                     ; $5fa6: $e2
    ld b, l                                       ; $5fa7: $45
    add c                                         ; $5fa8: $81
    add [hl]                                      ; $5fa9: $86
    ld [hl], e                                    ; $5faa: $73
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    xor l                                         ; $5fad: $ad
    ld a, [hl]                                    ; $5fae: $7e
    and $3e                                       ; $5faf: $e6 $3e
    push hl                                       ; $5fb1: $e5
    cp a                                          ; $5fb2: $bf
    ret nz                                        ; $5fb3: $c0

    rlca                                          ; $5fb4: $07
    ld h, c                                       ; $5fb5: $61
    add [hl]                                      ; $5fb6: $86
    add c                                         ; $5fb7: $81
    inc b                                         ; $5fb8: $04
    ld h, e                                       ; $5fb9: $63
    add b                                         ; $5fba: $80
    rst $10                                       ; $5fbb: $d7
    inc b                                         ; $5fbc: $04
    add [hl]                                      ; $5fbd: $86
    jr z, jr_062_5ffc                             ; $5fbe: $28 $3c

    add e                                         ; $5fc0: $83
    xor [hl]                                      ; $5fc1: $ae
    nop                                           ; $5fc2: $00
    add b                                         ; $5fc3: $80
    rst $38                                       ; $5fc4: $ff
    jp $a504                                      ; $5fc5: $c3 $04 $a5


    add [hl]                                      ; $5fc8: $86
    ld l, [hl]                                    ; $5fc9: $6e
    nop                                           ; $5fca: $00
    xor e                                         ; $5fcb: $ab
    add hl, bc                                    ; $5fcc: $09
    and b                                         ; $5fcd: $a0
    ld a, [hl]                                    ; $5fce: $7e
    jp hl                                         ; $5fcf: $e9


    add h                                         ; $5fd0: $84
    ld b, c                                       ; $5fd1: $41
    ld [hl], $ff                                  ; $5fd2: $36 $ff
    jp nz, Jump_062_4445                          ; $5fd4: $c2 $45 $44

    inc b                                         ; $5fd7: $04
    ld h, [hl]                                    ; $5fd8: $66
    nop                                           ; $5fd9: $00
    ld e, a                                       ; $5fda: $5f
    ld a, h                                       ; $5fdb: $7c
    ld a, d                                       ; $5fdc: $7a
    ret nz                                        ; $5fdd: $c0

    call nz, Call_062_4422                        ; $5fde: $c4 $22 $44
    ld [hl], $35                                  ; $5fe1: $36 $35
    ld [hl], $45                                  ; $5fe3: $36 $45
    ld a, h                                       ; $5fe5: $7c
    and a                                         ; $5fe6: $a7
    ldh [$e4], a                                  ; $5fe7: $e0 $e4
    dec b                                         ; $5fe9: $05
    nop                                           ; $5fea: $00
    ld d, e                                       ; $5feb: $53
    ld a, [hl]                                    ; $5fec: $7e
    ld b, l                                       ; $5fed: $45
    ld a, d                                       ; $5fee: $7a
    jp Jump_062_62b7                              ; $5fef: $c3 $b7 $62


    ld c, d                                       ; $5ff2: $4a
    ld d, [hl]                                    ; $5ff3: $56
    ld a, [hl-]                                   ; $5ff4: $3a
    inc bc                                        ; $5ff5: $03
    dec [hl]                                      ; $5ff6: $35
    ld [hl], $82                                  ; $5ff7: $36 $82
    ld h, h                                       ; $5ff9: $64
    inc b                                         ; $5ffa: $04
    ld b, h                                       ; $5ffb: $44

jr_062_5ffc:
    nop                                           ; $5ffc: $00
    ld d, [hl]                                    ; $5ffd: $56
    add b                                         ; $5ffe: $80
    ld [bc], a                                    ; $5fff: $02
    add d                                         ; $6000: $82
    add hl, bc                                    ; $6001: $09
    ret nz                                        ; $6002: $c0

    jr nz, jr_062_6010                            ; $6003: $20 $0b

    ld c, d                                       ; $6005: $4a
    ld e, b                                       ; $6006: $58
    ld a, [hl]                                    ; $6007: $7e
    ld b, b                                       ; $6008: $40
    add hl, sp                                    ; $6009: $39
    nop                                           ; $600a: $00
    ld h, e                                       ; $600b: $63
    inc b                                         ; $600c: $04
    ld b, [hl]                                    ; $600d: $46
    nop                                           ; $600e: $00
    ld d, d                                       ; $600f: $52

jr_062_6010:
    add b                                         ; $6010: $80
    inc b                                         ; $6011: $04
    db $fc                                        ; $6012: $fc
    db $fc                                        ; $6013: $fc
    add hl, hl                                    ; $6014: $29
    ld a, d                                       ; $6015: $7a
    ld b, b                                       ; $6016: $40
    ld b, h                                       ; $6017: $44

Call_062_6018:
    ld c, l                                       ; $6018: $4d
    ld d, l                                       ; $6019: $55
    inc a                                         ; $601a: $3c
    dec [hl]                                      ; $601b: $35
    ld a, [hl-]                                   ; $601c: $3a
    add d                                         ; $601d: $82
    add d                                         ; $601e: $82
    ld b, b                                       ; $601f: $40
    xor [hl]                                      ; $6020: $ae
    ld b, e                                       ; $6021: $43
    ld b, b                                       ; $6022: $40
    inc b                                         ; $6023: $04
    ld b, l                                       ; $6024: $45
    nop                                           ; $6025: $00
    ld d, d                                       ; $6026: $52
    dec a                                         ; $6027: $3d
    push hl                                       ; $6028: $e5
    db $fc                                        ; $6029: $fc
    ld a, [hl+]                                   ; $602a: $2a
    xor a                                         ; $602b: $af
    dec bc                                        ; $602c: $0b
    ld d, c                                       ; $602d: $51
    ld e, [hl]                                    ; $602e: $5e
    ret nz                                        ; $602f: $c0

    ldh [$35], a                                  ; $6030: $e0 $35
    ld b, l                                       ; $6032: $45
    ld hl, $4904                                  ; $6033: $21 $04 $49
    nop                                           ; $6036: $00
    ld d, h                                       ; $6037: $54
    ld a, d                                       ; $6038: $7a
    ld h, l                                       ; $6039: $65
    ld a, [c]                                     ; $603a: $f2
    nop                                           ; $603b: $00
    ld hl, $869f                                  ; $603c: $21 $9f $86
    nop                                           ; $603f: $00
    adc e                                         ; $6040: $8b
    nop                                           ; $6041: $00
    ld b, h                                       ; $6042: $44
    ld d, e                                       ; $6043: $53
    ld [hl], $62                                  ; $6044: $36 $62
    inc bc                                        ; $6046: $03
    ld h, [hl]                                    ; $6047: $66
    inc a                                         ; $6048: $3c
    jp nz, Jump_000_0401                          ; $6049: $c2 $01 $04

    ld b, h                                       ; $604c: $44
    db $fc                                        ; $604d: $fc
    rst $00                                       ; $604e: $c7
    ld a, d                                       ; $604f: $7a
    ret                                           ; $6050: $c9


    ld [hl], e                                    ; $6051: $73
    jp hl                                         ; $6052: $e9


    nop                                           ; $6053: $00
    rst $00                                       ; $6054: $c7
    add b                                         ; $6055: $80
    ei                                            ; $6056: $fb
    add d                                         ; $6057: $82
    cp d                                          ; $6058: $ba
    ld h, d                                       ; $6059: $62
    ld a, l                                       ; $605a: $7d
    add d                                         ; $605b: $82
    ld l, d                                       ; $605c: $6a
    inc b                                         ; $605d: $04
    ld a, d                                       ; $605e: $7a
    pop de                                        ; $605f: $d1
    or b                                          ; $6060: $b0
    ret                                           ; $6061: $c9


    db $fc                                        ; $6062: $fc
    ld hl, $019f                                  ; $6063: $21 $9f $01
    sbc h                                         ; $6066: $9c
    jp z, $c1a3                                   ; $6067: $ca $a3 $c1

    pop hl                                        ; $606a: $e1
    cp d                                          ; $606b: $ba
    ld h, c                                       ; $606c: $61
    add h                                         ; $606d: $84
    ld b, e                                       ; $606e: $43

jr_062_606f:
    ld l, d                                       ; $606f: $6a
    inc bc                                        ; $6070: $03
    ld a, [hl]                                    ; $6071: $7e
    dec h                                         ; $6072: $25
    ld a, d                                       ; $6073: $7a
    ld l, c                                       ; $6074: $69
    inc b                                         ; $6075: $04
    or b                                          ; $6076: $b0
    ld l, b                                       ; $6077: $68
    ld a, d                                       ; $6078: $7a
    ld [bc], a                                    ; $6079: $02
    and c                                         ; $607a: $a1
    add b                                         ; $607b: $80
    dec h                                         ; $607c: $25
    pop bc                                        ; $607d: $c1
    pop hl                                        ; $607e: $e1
    cp d                                          ; $607f: $ba
    ld h, b                                       ; $6080: $60
    ld a, [hl-]                                   ; $6081: $3a
    add b                                         ; $6082: $80
    ld a, h                                       ; $6083: $7c
    ld h, h                                       ; $6084: $64
    jr nz, jr_062_6101                            ; $6085: $20 $7a

    ld [hl], e                                    ; $6087: $73
    ld b, e                                       ; $6088: $43
    add sp, $00                                   ; $6089: $e8 $00
    ld [c], a                                     ; $608b: $e2
    dec a                                         ; $608c: $3d
    ld b, c                                       ; $608d: $41
    ld c, h                                       ; $608e: $4c
    jr nz, jr_062_60ca                            ; $608f: $20 $39

    pop bc                                        ; $6091: $c1
    db $e3                                        ; $6092: $e3
    cp d                                          ; $6093: $ba
    ld h, c                                       ; $6094: $61
    inc b                                         ; $6095: $04
    db $fc                                        ; $6096: $fc
    ld b, c                                       ; $6097: $41
    ld l, l                                       ; $6098: $6d
    nop                                           ; $6099: $00
    and d                                         ; $609a: $a2
    ld a, d                                       ; $609b: $7a
    and c                                         ; $609c: $a1
    db $fc                                        ; $609d: $fc
    ld bc, $d780                                  ; $609e: $01 $80 $d7
    add d                                         ; $60a1: $82
    pop bc                                        ; $60a2: $c1
    cp $03                                        ; $60a3: $fe $03
    inc sp                                        ; $60a5: $33
    ld b, l                                       ; $60a6: $45
    ld a, [hl-]                                   ; $60a7: $3a
    dec a                                         ; $60a8: $3d
    ld h, c                                       ; $60a9: $61
    dec sp                                        ; $60aa: $3b
    ld h, b                                       ; $60ab: $60
    ld l, [hl]                                    ; $60ac: $6e
    ld b, b                                       ; $60ad: $40
    ld a, $21                                     ; $60ae: $3e $21
    ld a, l                                       ; $60b0: $7d
    ld b, $18                                     ; $60b1: $06 $18
    ld h, d                                       ; $60b3: $62
    pop bc                                        ; $60b4: $c1
    add b                                         ; $60b5: $80
    rst $10                                       ; $60b6: $d7
    db $fc                                        ; $60b7: $fc
    rlca                                          ; $60b8: $07
    ld b, h                                       ; $60b9: $44
    inc a                                         ; $60ba: $3c

jr_062_60bb:
    ret nz                                        ; $60bb: $c0

    db $e4                                        ; $60bc: $e4
    cp [hl]                                       ; $60bd: $be
    and b                                         ; $60be: $a0
    ld a, a                                       ; $60bf: $7f
    inc hl                                        ; $60c0: $23
    jr nz, jr_062_60bb                            ; $60c1: $20 $f8

    add a                                         ; $60c3: $87
    db $10                                        ; $60c4: $10
    inc hl                                        ; $60c5: $23
    add b                                         ; $60c6: $80
    pop de                                        ; $60c7: $d1
    inc e                                         ; $60c8: $1c
    add e                                         ; $60c9: $83

jr_062_60ca:
    ld a, a                                       ; $60ca: $7f
    add c                                         ; $60cb: $81
    ld b, d                                       ; $60cc: $42
    cp l                                          ; $60cd: $bd
    ld b, d                                       ; $60ce: $42
    ret nz                                        ; $60cf: $c0

    pop hl                                        ; $60d0: $e1
    inc bc                                        ; $60d1: $03

jr_062_60d2:
    ld a, [hl-]                                   ; $60d2: $3a
    ld b, l                                       ; $60d3: $45
    cp a                                          ; $60d4: $bf
    inc b                                         ; $60d5: $04
    ld [hl], $82                                  ; $60d6: $36 $82
    ld hl, sp+$65                                 ; $60d8: $f8 $65
    add b                                         ; $60da: $80
    db $d3                                        ; $60db: $d3
    db $fc                                        ; $60dc: $fc
    ld [bc], a                                    ; $60dd: $02
    ld b, e                                       ; $60de: $43
    and c                                         ; $60df: $a1
    rlca                                          ; $60e0: $07
    xor [hl]                                      ; $60e1: $ae
    ld b, l                                       ; $60e2: $45
    ld a, [hl-]                                   ; $60e3: $3a
    cp l                                          ; $60e4: $bd
    ld b, b                                       ; $60e5: $40
    add b                                         ; $60e6: $80
    ld [c], a                                     ; $60e7: $e2
    ld a, a                                       ; $60e8: $7f
    pop hl                                        ; $60e9: $e1
    jr c, jr_062_606f                             ; $60ea: $38 $83

    ld a, h                                       ; $60ec: $7c
    ld bc, $f870                                  ; $60ed: $01 $70 $f8
    ld h, h                                       ; $60f0: $64
    add b                                         ; $60f1: $80
    call nc, $e420                                ; $60f2: $d4 $20 $e4
    ld a, l                                       ; $60f5: $7d
    pop bc                                        ; $60f6: $c1
    add hl, sp                                    ; $60f7: $39
    ld l, [hl]                                    ; $60f8: $6e
    ld l, a                                       ; $60f9: $6f
    cp a                                          ; $60fa: $bf
    ldh [$0b], a                                  ; $60fb: $e0 $0b
    ld l, h                                       ; $60fd: $6c
    ld [hl], b                                    ; $60fe: $70
    or a                                          ; $60ff: $b7
    nop                                           ; $6100: $00

jr_062_6101:
    ld b, e                                       ; $6101: $43
    inc a                                         ; $6102: $3c
    and b                                         ; $6103: $a0
    rst $30                                       ; $6104: $f7
    ld h, l                                       ; $6105: $65
    ld a, d                                       ; $6106: $7a
    inc h                                         ; $6107: $24
    add b                                         ; $6108: $80
    call nc, $8274                                ; $6109: $d4 $74 $82
    add h                                         ; $610c: $84
    ld a, [hl-]                                   ; $610d: $3a
    ld [hl+], a                                   ; $610e: $22
    ld [hl], $bf                                  ; $610f: $36 $bf
    ldh [$6c], a                                  ; $6111: $e0 $6c
    ld l, l                                       ; $6113: $6d
    ld l, [hl]                                    ; $6114: $6e
    ld a, e                                       ; $6115: $7b
    ret nz                                        ; $6116: $c0

    add c                                         ; $6117: $81
    dec sp                                        ; $6118: $3b
    halt                                          ; $6119: $76
    jr nz, jr_062_60d2                            ; $611a: $20 $b6

    ld b, e                                       ; $611c: $43
    ld a, d                                       ; $611d: $7a
    dec h                                         ; $611e: $25
    nop                                           ; $611f: $00
    cp h                                          ; $6120: $bc
    ld a, [hl]                                    ; $6121: $7e
    ld h, d                                       ; $6122: $62
    dec sp                                        ; $6123: $3b
    ld b, c                                       ; $6124: $41
    ld [hl], b                                    ; $6125: $70
    nop                                           ; $6126: $00
    pop bc                                        ; $6127: $c1
    pop hl                                        ; $6128: $e1
    ld [hl], h                                    ; $6129: $74
    ld bc, $412a                                  ; $612a: $01 $2a $41
    add d                                         ; $612d: $82
    rst $20                                       ; $612e: $e7
    nop                                           ; $612f: $00
    cp b                                          ; $6130: $b8
    ld a, d                                       ; $6131: $7a
    ld c, b                                       ; $6132: $48
    dec sp                                        ; $6133: $3b
    ld b, e                                       ; $6134: $43
    ld [hl], h                                    ; $6135: $74

jr_062_6136:
    ld [bc], a                                    ; $6136: $02
    jp nz, $c0bc                                  ; $6137: $c2 $bc $c0

    xor a                                         ; $613a: $af
    ld [hl], a                                    ; $613b: $77

Jump_062_613c:
    jr nz, jr_062_6136                            ; $613c: $20 $f8

    ld b, a                                       ; $613e: $47
    nop                                           ; $613f: $00
    or [hl]                                       ; $6140: $b6
    ld hl, sp+$09                                 ; $6141: $f8 $09
    xor [hl]                                      ; $6143: $ae
    scf                                           ; $6144: $37
    rrca                                          ; $6145: $0f
    jr c, @+$3d                                   ; $6146: $38 $3b

    dec [hl]                                      ; $6148: $35
    dec sp                                        ; $6149: $3b
    ld a, a                                       ; $614a: $7f
    push hl                                       ; $614b: $e5
    add e                                         ; $614c: $83
    jp nz, $107a                                  ; $614d: $c2 $7a $10

    or b                                          ; $6150: $b0
    ld l, c                                       ; $6151: $69
    ld a, h                                       ; $6152: $7c
    ld hl, sp+$0b                                 ; $6153: $f8 $0b
    cp d                                          ; $6155: $ba
    and b                                         ; $6156: $a0
    ld b, e                                       ; $6157: $43
    ld b, c                                       ; $6158: $41
    ld b, e                                       ; $6159: $43
    scf                                           ; $615a: $37
    jr c, jr_062_61dc                             ; $615b: $38 $7f

    db $e3                                        ; $615d: $e3
    add b                                         ; $615e: $80
    ld a, b                                       ; $615f: $78

Jump_062_6160:
    inc bc                                        ; $6160: $03
    halt                                          ; $6161: $76
    ld b, l                                       ; $6162: $45
    nop                                           ; $6163: $00
    or d                                          ; $6164: $b2
    ld a, d                                       ; $6165: $7a
    ld h, [hl]                                    ; $6166: $66
    add c                                         ; $6167: $81
    ld h, c                                       ; $6168: $61
    ld c, h                                       ; $6169: $4c
    push bc                                       ; $616a: $c5
    jr nc, jr_062_616f                            ; $616b: $30 $02

    inc a                                         ; $616d: $3c
    dec l                                         ; $616e: $2d

jr_062_616f:
    ld b, h                                       ; $616f: $44
    ld a, [$9d81]                                 ; $6170: $fa $81 $9d
    sbc l                                         ; $6173: $9d
    halt                                          ; $6174: $76
    ld b, [hl]                                    ; $6175: $46
    rst $18                                       ; $6176: $df
    or a                                          ; $6177: $b7
    ld b, [hl]                                    ; $6178: $46
    jr nc, jr_062_61c7                            ; $6179: $30 $4c

    db $10                                        ; $617b: $10
    db $fc                                        ; $617c: $fc
    ld h, d                                       ; $617d: $62
    ld bc, $8d61                                  ; $617e: $01 $61 $8d
    and e                                         ; $6181: $a3
    jr nc, jr_062_6188                            ; $6182: $30 $04

    dec [hl]                                      ; $6184: $35
    db $f4                                        ; $6185: $f4
    nop                                           ; $6186: $00
    scf                                           ; $6187: $37

jr_062_6188:
    ld h, c                                       ; $6188: $61
    halt                                          ; $6189: $76
    ld b, d                                       ; $618a: $42
    nop                                           ; $618b: $00
    db $f4                                        ; $618c: $f4
    dec hl                                        ; $618d: $2b
    jr nc, jr_062_61dc                            ; $618e: $30 $4c

    db $fc                                        ; $6190: $fc
    and e                                         ; $6191: $a3
    add hl, sp                                    ; $6192: $39
    inc h                                         ; $6193: $24
    ld [hl], l                                    ; $6194: $75
    add l                                         ; $6195: $85
    add b                                         ; $6196: $80
    ld [c], a                                     ; $6197: $e2
    ld sp, $bb02                                  ; $6198: $31 $02 $bb
    ret nz                                        ; $619b: $c0

    nop                                           ; $619c: $00
    db $f4                                        ; $619d: $f4
    inc l                                         ; $619e: $2c

jr_062_619f:
    nop                                           ; $619f: $00
    xor e                                         ; $61a0: $ab
    db $fc                                        ; $61a1: $fc
    and l                                         ; $61a2: $a5
    dec a                                         ; $61a3: $3d
    ld b, b                                       ; $61a4: $40
    dec sp                                        ; $61a5: $3b
    ld b, d                                       ; $61a6: $42
    push af                                       ; $61a7: $f5
    ld h, h                                       ; $61a8: $64
    ld [hl], l                                    ; $61a9: $75
    inc hl                                        ; $61aa: $23
    cp e                                          ; $61ab: $bb
    call nz, $f460                                ; $61ac: $c4 $60 $f4
    inc hl                                        ; $61af: $23
    nop                                           ; $61b0: $00
    or l                                          ; $61b1: $b5
    db $fc                                        ; $61b2: $fc
    ld b, l                                       ; $61b3: $45
    rst $30                                       ; $61b4: $f7
    add c                                         ; $61b5: $81
    cp h                                          ; $61b6: $bc
    push hl                                       ; $61b7: $e5
    ld b, l                                       ; $61b8: $45
    ccf                                           ; $61b9: $3f
    ei                                            ; $61ba: $fb
    add c                                         ; $61bb: $81
    rlca                                          ; $61bc: $07
    ld b, l                                       ; $61bd: $45
    ld b, c                                       ; $61be: $41
    ld b, l                                       ; $61bf: $45
    or $64                                        ; $61c0: $f6 $64
    nop                                           ; $61c2: $00
    ldh [rP1], a                                  ; $61c3: $e0 $00

Jump_062_61c5:
    or h                                          ; $61c5: $b4
    ld a, [hl]                                    ; $61c6: $7e

jr_062_61c7:
    push bc                                       ; $61c7: $c5
    db $fc                                        ; $61c8: $fc
    ld hl, $f4c8                                  ; $61c9: $21 $c8 $f4
    add d                                         ; $61cc: $82
    ld [hl], $e5                                  ; $61cd: $36 $e5
    dec hl                                        ; $61cf: $2b
    ld bc, $77a6                                  ; $61d0: $01 $a6 $77
    and b                                         ; $61d3: $a0
    ld [hl], d                                    ; $61d4: $72
    ld [bc], a                                    ; $61d5: $02
    jp c, $c0db                                   ; $61d6: $da $db $c0

    add b                                         ; $61d9: $80
    rst $10                                       ; $61da: $d7
    ld a, d                                       ; $61db: $7a

jr_062_61dc:
    ld b, a                                       ; $61dc: $47
    ld a, d                                       ; $61dd: $7a
    db $e3                                        ; $61de: $e3

jr_062_61df:
    or [hl]                                       ; $61df: $b6
    jr nz, jr_062_61df                            ; $61e0: $20 $fd

    ld [hl+], a                                   ; $61e2: $22
    pop af                                        ; $61e3: $f1
    ld b, b                                       ; $61e4: $40
    and a                                         ; $61e5: $a7
    ld h, [hl]                                    ; $61e6: $66
    ld [bc], a                                    ; $61e7: $02
    ld [hl], $a0                                  ; $61e8: $36 $a0
    and c                                         ; $61ea: $a1
    ld h, d                                       ; $61eb: $62
    push hl                                       ; $61ec: $e5
    add b                                         ; $61ed: $80
    call nc, $a5fc                                ; $61ee: $d4 $fc $a5
    halt                                          ; $61f1: $76
    dec h                                         ; $61f2: $25
    di                                            ; $61f3: $f3
    add b                                         ; $61f4: $80
    ld a, e                                       ; $61f5: $7b
    ld hl, $b20a                                  ; $61f6: $21 $0a $b2
    ld b, c                                       ; $61f9: $41
    and e                                         ; $61fa: $a3
    or c                                          ; $61fb: $b1
    ld b, b                                       ; $61fc: $40
    ld b, l                                       ; $61fd: $45
    db $f4                                        ; $61fe: $f4
    inc hl                                        ; $61ff: $23
    dec a                                         ; $6200: $3d
    add a                                         ; $6201: $87
    add b                                         ; $6202: $80
    rst $08                                       ; $6203: $cf
    ld [hl], d                                    ; $6204: $72
    inc c                                         ; $6205: $0c
    inc a                                         ; $6206: $3c
    add d                                         ; $6207: $82
    push hl                                       ; $6208: $e5
    or d                                          ; $6209: $b2
    ld b, b                                       ; $620a: $40
    ld l, h                                       ; $620b: $6c
    or a                                          ; $620c: $b7
    cp b                                          ; $620d: $b8
    ld b, h                                       ; $620e: $44
    ld [hl-], a                                   ; $620f: $32
    ld b, c                                       ; $6210: $41
    ret c                                         ; $6211: $d8

    ld h, d                                       ; $6212: $62
    ldh [rP1], a                                  ; $6213: $e0 $00
    or b                                          ; $6215: $b0
    ld a, d                                       ; $6216: $7a
    ld h, l                                       ; $6217: $65
    db $f4                                        ; $6218: $f4
    rlca                                          ; $6219: $07
    scf                                           ; $621a: $37
    jr nz, jr_062_619f                            ; $621b: $20 $82

    db $e3                                        ; $621d: $e3
    cp c                                          ; $621e: $b9
    cp d                                          ; $621f: $ba
    and e                                         ; $6220: $a3
    rrca                                          ; $6221: $0f
    dec [hl]                                      ; $6222: $35
    ld l, h                                       ; $6223: $6c
    ld l, a                                       ; $6224: $6f
    ld l, [hl]                                    ; $6225: $6e
    add b                                         ; $6226: $80
    pop hl                                        ; $6227: $e1
    db $fc                                        ; $6228: $fc
    ld b, d                                       ; $6229: $42
    nop                                           ; $622a: $00
    ld d, d                                       ; $622b: $52
    ld a, d                                       ; $622c: $7a
    rlc b                                         ; $622d: $cb $00
    ld [hl], d                                    ; $622f: $72
    ld h, d                                       ; $6230: $62
    or a                                          ; $6231: $b7
    nop                                           ; $6232: $00
    ld [hl-], a                                   ; $6233: $32
    add [hl]                                      ; $6234: $86
    pop bc                                        ; $6235: $c1
    pop hl                                        ; $6236: $e1
    cp h                                          ; $6237: $bc
    ld h, b                                       ; $6238: $60
    ld e, [hl]                                    ; $6239: $5e
    ld hl, $7380                                  ; $623a: $21 $80 $73
    ld a, d                                       ; $623d: $7a
    rlc b                                         ; $623e: $cb $00
    ld [hl], d                                    ; $6240: $72
    ld h, d                                       ; $6241: $62
    or [hl]                                       ; $6242: $b6
    and h                                         ; $6243: $a4
    pop af                                        ; $6244: $f1
    ld h, c                                       ; $6245: $61
    pop bc                                        ; $6246: $c1
    ld [c], a                                     ; $6247: $e2
    db $fc                                        ; $6248: $fc
    ld b, h                                       ; $6249: $44
    add b                                         ; $624a: $80
    ret c                                         ; $624b: $d8

    ld a, d                                       ; $624c: $7a
    call z, $a4fb                                 ; $624d: $cc $fb $a4
    nop                                           ; $6250: $00
    or b                                          ; $6251: $b0
    ld h, b                                       ; $6252: $60
    ld b, e                                       ; $6253: $43
    pop hl                                        ; $6254: $e1
    cp $81                                        ; $6255: $fe $81
    ld a, d                                       ; $6257: $7a
    dec bc                                        ; $6258: $0b
    nop                                           ; $6259: $00
    xor h                                         ; $625a: $ac
    ld a, d                                       ; $625b: $7a
    call z, $a3f8                                 ; $625c: $cc $f8 $a3
    ld [hl], d                                    ; $625f: $72
    and d                                         ; $6260: $a2
    nop                                           ; $6261: $00
    ld l, [hl]                                    ; $6262: $6e
    and c                                         ; $6263: $a1
    ld a, [hl]                                    ; $6264: $7e
    ld h, b                                       ; $6265: $60
    db $f4                                        ; $6266: $f4
    inc bc                                        ; $6267: $03
    add b                                         ; $6268: $80
    sub $7a                                       ; $6269: $d6 $7a
    call z, $a7f8                                 ; $626b: $cc $f8 $a7
    ld a, [hl]                                    ; $626e: $7e
    daa                                           ; $626f: $27
    ld h, d                                       ; $6270: $62
    and h                                         ; $6271: $a4
    nop                                           ; $6272: $00
    add b                                         ; $6273: $80
    sub $31                                       ; $6274: $d6 $31
    add l                                         ; $6276: $85
    ld [hl], d                                    ; $6277: $72
    ld h, l                                       ; $6278: $65
    ld [hl], d                                    ; $6279: $72
    and a                                         ; $627a: $a7
    db $f4                                        ; $627b: $f4
    db $e3                                        ; $627c: $e3
    db $fc                                        ; $627d: $fc
    inc hl                                        ; $627e: $23
    adc l                                         ; $627f: $8d
    and l                                         ; $6280: $a5
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    pop bc                                        ; $6284: $c1
    nop                                           ; $6285: $00
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    ld bc, $fe80                                  ; $6292: $01 $80 $fe
    ldh [rIE], a                                  ; $6295: $e0 $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    add sp, $00                                   ; $629b: $e8 $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    ld [bc], a                                    ; $629f: $02
    nop                                           ; $62a0: $00
    ld hl, $0204                                  ; $62a1: $21 $04 $02
    ld bc, $051b                                  ; $62a4: $01 $1b $05
    ld [bc], a                                    ; $62a7: $02
    ld [bc], a                                    ; $62a8: $02
    daa                                           ; $62a9: $27
    dec b                                         ; $62aa: $05
    ld [bc], a                                    ; $62ab: $02
    inc bc                                        ; $62ac: $03
    inc h                                         ; $62ad: $24
    ld b, $02                                     ; $62ae: $06 $02
    inc b                                         ; $62b0: $04
    add hl, de                                    ; $62b1: $19
    rlca                                          ; $62b2: $07
    ld [bc], a                                    ; $62b3: $02
    dec b                                         ; $62b4: $05
    dec d                                         ; $62b5: $15

Jump_062_62b6:
    add hl, bc                                    ; $62b6: $09

Jump_062_62b7:
    ld [bc], a                                    ; $62b7: $02
    ld b, $18                                     ; $62b8: $06 $18
    add hl, bc                                    ; $62ba: $09
    ld [bc], a                                    ; $62bb: $02
    rlca                                          ; $62bc: $07
    ld [hl+], a                                   ; $62bd: $22
    add hl, bc                                    ; $62be: $09
    ld [bc], a                                    ; $62bf: $02
    ld [$0a12], sp                                ; $62c0: $08 $12 $0a
    ld [bc], a                                    ; $62c3: $02
    add hl, bc                                    ; $62c4: $09
    dec h                                         ; $62c5: $25
    ld a, [bc]                                    ; $62c6: $0a
    ld [bc], a                                    ; $62c7: $02
    ld a, [bc]                                    ; $62c8: $0a
    ld e, $0b                                     ; $62c9: $1e $0b
    ld [bc], a                                    ; $62cb: $02
    dec bc                                        ; $62cc: $0b
    jr nz, jr_062_62da                            ; $62cd: $20 $0b

    ld [bc], a                                    ; $62cf: $02
    inc c                                         ; $62d0: $0c
    inc d                                         ; $62d1: $14
    inc c                                         ; $62d2: $0c
    ld [bc], a                                    ; $62d3: $02
    dec c                                         ; $62d4: $0d
    db $10                                        ; $62d5: $10
    dec c                                         ; $62d6: $0d
    ld [bc], a                                    ; $62d7: $02
    ld c, $1f                                     ; $62d8: $0e $1f

jr_062_62da:
    dec c                                         ; $62da: $0d
    ld [bc], a                                    ; $62db: $02
    rrca                                          ; $62dc: $0f
    inc h                                         ; $62dd: $24
    dec c                                         ; $62de: $0d
    ld [bc], a                                    ; $62df: $02
    db $10                                        ; $62e0: $10
    ld [de], a                                    ; $62e1: $12
    ld c, $02                                     ; $62e2: $0e $02
    ld de, $0e1d                                  ; $62e4: $11 $1d $0e
    ld [bc], a                                    ; $62e7: $02
    ld [de], a                                    ; $62e8: $12
    dec de                                        ; $62e9: $1b
    rrca                                          ; $62ea: $0f
    ld [bc], a                                    ; $62eb: $02
    inc de                                        ; $62ec: $13
    ld [hl+], a                                   ; $62ed: $22
    rrca                                          ; $62ee: $0f
    ld [bc], a                                    ; $62ef: $02
    inc d                                         ; $62f0: $14
    jr nz, jr_062_6303                            ; $62f1: $20 $10

    ld [bc], a                                    ; $62f3: $02
    dec d                                         ; $62f4: $15
    inc e                                         ; $62f5: $1c
    ld de, $1602                                  ; $62f6: $11 $02 $16
    ld e, $12                                     ; $62f9: $1e $12
    ld [bc], a                                    ; $62fb: $02
    rla                                           ; $62fc: $17

Jump_062_62fd:
    ld a, [de]                                    ; $62fd: $1a
    inc de                                        ; $62fe: $13
    ld [bc], a                                    ; $62ff: $02
    jr jr_062_631f                                ; $6300: $18 $1d

    dec d                                         ; $6302: $15

jr_062_6303:
    ld [bc], a                                    ; $6303: $02
    add hl, de                                    ; $6304: $19
    ld de, $0216                                  ; $6305: $11 $16 $02
    ld a, [de]                                    ; $6308: $1a
    dec de                                        ; $6309: $1b
    rla                                           ; $630a: $17
    ld [bc], a                                    ; $630b: $02
    dec de                                        ; $630c: $1b
    dec d                                         ; $630d: $15
    jr @+$04                                      ; $630e: $18 $02

    inc e                                         ; $6310: $1c
    ld e, $18                                     ; $6311: $1e $18
    ld [bc], a                                    ; $6313: $02
    dec e                                         ; $6314: $1d
    inc de                                        ; $6315: $13
    add hl, de                                    ; $6316: $19
    ld [bc], a                                    ; $6317: $02
    ld e, $20                                     ; $6318: $1e $20
    add hl, de                                    ; $631a: $19
    ld [bc], a                                    ; $631b: $02
    rra                                           ; $631c: $1f
    rla                                           ; $631d: $17
    dec de                                        ; $631e: $1b

jr_062_631f:
    ld [bc], a                                    ; $631f: $02
    jr nz, @+$1e                                  ; $6320: $20 $1c

    dec de                                        ; $6322: $1b
    ld [bc], a                                    ; $6323: $02
    ld hl, $1c22                                  ; $6324: $21 $22 $1c
    ld [bc], a                                    ; $6327: $02
    ld [hl+], a                                   ; $6328: $22
    ld e, $1d                                     ; $6329: $1e $1d
    ld [bc], a                                    ; $632b: $02
    inc hl                                        ; $632c: $23
    jr nz, jr_062_634e                            ; $632d: $20 $1f

    ld [bc], a                                    ; $632f: $02
    inc h                                         ; $6330: $24
    jr jr_062_6353                                ; $6331: $18 $20

    ld [bc], a                                    ; $6333: $02
    dec h                                         ; $6334: $25
    ld [hl+], a                                   ; $6335: $22
    jr nz, jr_062_633a                            ; $6336: $20 $02

    ld h, $1f                                     ; $6338: $26 $1f

jr_062_633a:
    ld hl, $2702                                  ; $633a: $21 $02 $27
    ld d, $22                                     ; $633d: $16 $22
    ld [bc], a                                    ; $633f: $02
    jr z, jr_062_6362                             ; $6340: $28 $20

    inc hl                                        ; $6342: $23
    ld [bc], a                                    ; $6343: $02
    add hl, hl                                    ; $6344: $29
    ld [de], a                                    ; $6345: $12
    inc h                                         ; $6346: $24
    ld [bc], a                                    ; $6347: $02
    ld a, [hl+]                                   ; $6348: $2a
    inc d                                         ; $6349: $14
    ld h, $02                                     ; $634a: $26 $02
    dec hl                                        ; $634c: $2b
    ld [hl+], a                                   ; $634d: $22

jr_062_634e:
    ld h, $02                                     ; $634e: $26 $02
    inc l                                         ; $6350: $2c
    dec h                                         ; $6351: $25
    daa                                           ; $6352: $27

jr_062_6353:
    ld [bc], a                                    ; $6353: $02
    dec l                                         ; $6354: $2d
    ld a, [hl+]                                   ; $6355: $2a
    jr z, jr_062_635a                             ; $6356: $28 $02

    ld l, $15                                     ; $6358: $2e $15

jr_062_635a:
    ld a, [hl+]                                   ; $635a: $2a
    ld [bc], a                                    ; $635b: $02
    cpl                                           ; $635c: $2f
    inc h                                         ; $635d: $24
    ld a, [hl+]                                   ; $635e: $2a
    ld [bc], a                                    ; $635f: $02
    jr nc, jr_062_6389                            ; $6360: $30 $27

jr_062_6362:
    dec l                                         ; $6362: $2d
    ld [bc], a                                    ; $6363: $02
    ld sp, $2f1a                                  ; $6364: $31 $1a $2f
    ld [bc], a                                    ; $6367: $02
    ld [hl-], a                                   ; $6368: $32
    jr jr_062_639c                                ; $6369: $18 $31

    ld [bc], a                                    ; $636b: $02
    inc sp                                        ; $636c: $33
    dec e                                         ; $636d: $1d
    ld [hl-], a                                   ; $636e: $32
    ld [bc], a                                    ; $636f: $02
    inc [hl]                                      ; $6370: $34
    add hl, hl                                    ; $6371: $29
    ld [hl-], a                                   ; $6372: $32
    ld [bc], a                                    ; $6373: $02
    dec [hl]                                      ; $6374: $35
    inc hl                                        ; $6375: $23
    scf                                           ; $6376: $37
    ld [bc], a                                    ; $6377: $02
    ld [hl], $21                                  ; $6378: $36 $21

Jump_062_637a:
    add hl, sp                                    ; $637a: $39
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    add [hl]                                      ; $637e: $86
    ld h, e                                       ; $637f: $63
    dec d                                         ; $6380: $15
    ld h, [hl]                                    ; $6381: $66
    ld c, l                                       ; $6382: $4d
    ld l, c                                       ; $6383: $69
    ld l, b                                       ; $6384: $68
    ld l, c                                       ; $6385: $69
    ccf                                           ; $6386: $3f
    ld c, $0e                                     ; $6387: $0e $0e

jr_062_6389:
    dec c                                         ; $6389: $0d
    dec c                                         ; $638a: $0d
    dec c                                         ; $638b: $0d
    ld c, $fa                                     ; $638c: $0e $fa
    rst $38                                       ; $638e: $ff
    db $f4                                        ; $638f: $f4
    push af                                       ; $6390: $f5
    nop                                           ; $6391: $00
    db $dd                                        ; $6392: $dd
    ldh [rIE], a                                  ; $6393: $e0 $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    push af                                       ; $639a: $f5
    db $f4                                        ; $639b: $f4

jr_062_639c:
    ld e, e                                       ; $639c: $5b
    rst $38                                       ; $639d: $ff
    ld a, [$fffc]                                 ; $639e: $fa $fc $ff
    rst $38                                       ; $63a1: $ff
    nop                                           ; $63a2: $00
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    ld a, $fa                                     ; $63a7: $3e $fa
    ld e, e                                       ; $63a9: $5b
    rst $38                                       ; $63aa: $ff
    add b                                         ; $63ab: $80
    rst $18                                       ; $63ac: $df
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    ld a, [de]                                    ; $63b3: $1a
    add b                                         ; $63b4: $80
    rst $18                                       ; $63b5: $df
    ld c, $4b                                     ; $63b6: $0e $4b
    ldh [rKEY1], a                                ; $63b8: $e0 $4d
    ld c, l                                       ; $63ba: $4d
    ld h, [hl]                                    ; $63bb: $66
    db $e3                                        ; $63bc: $e3
    db $fc                                        ; $63bd: $fc
    db $eb                                        ; $63be: $eb
    add b                                         ; $63bf: $80
    rst $18                                       ; $63c0: $df
    add b                                         ; $63c1: $80
    sub d                                         ; $63c2: $92
    push hl                                       ; $63c3: $e5
    ret nz                                        ; $63c4: $c0

    pop hl                                        ; $63c5: $e1
    cp h                                          ; $63c6: $bc
    db $ed                                        ; $63c7: $ed
    xor h                                         ; $63c8: $ac
    pop hl                                        ; $63c9: $e1
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    add b                                         ; $63ce: $80
    sbc $4d                                       ; $63cf: $de $4d
    nop                                           ; $63d1: $00
    ld b, d                                       ; $63d2: $42
    di                                            ; $63d3: $f3
    ld a, [hl+]                                   ; $63d4: $2a
    pop hl                                        ; $63d5: $e1
    add b                                         ; $63d6: $80
    rst $18                                       ; $63d7: $df
    dec b                                         ; $63d8: $05
    ldh [$58], a                                  ; $63d9: $e0 $58
    ld [$c5fa], a                                 ; $63db: $ea $fa $c5
    ld d, h                                       ; $63de: $54
    and h                                         ; $63df: $a4
    ld [hl], e                                    ; $63e0: $73
    rst $38                                       ; $63e1: $ff
    inc b                                         ; $63e2: $04
    add d                                         ; $63e3: $82
    db $ec                                        ; $63e4: $ec
    ld [hl], d                                    ; $63e5: $72
    pop hl                                        ; $63e6: $e1
    dec l                                         ; $63e7: $2d
    rst $30                                       ; $63e8: $f7
    and d                                         ; $63e9: $a2
    db $fc                                        ; $63ea: $fc
    jp nz, $df80                                  ; $63eb: $c2 $80 $df

    sbc e                                         ; $63ee: $9b
    and $80                                       ; $63ef: $e6 $80
    jp Jump_062_6d0f                              ; $63f1: $c3 $0f $6d


    ld l, e                                       ; $63f4: $6b
    ld l, e                                       ; $63f5: $6b
    ld l, e                                       ; $63f6: $6b
    cp a                                          ; $63f7: $bf
    pop hl                                        ; $63f8: $e1
    sub h                                         ; $63f9: $94
    xor b                                         ; $63fa: $a8
    add b                                         ; $63fb: $80
    sbc $42                                       ; $63fc: $de $42
    jp $826a                                      ; $63fe: $c3 $6a $82


    and b                                         ; $6401: $a0
    ld l, l                                       ; $6402: $6d
    pop bc                                        ; $6403: $c1
    ldh [$0d], a                                  ; $6404: $e0 $0d
    cp $e0                                        ; $6406: $fe $e0
    ld c, l                                       ; $6408: $4d
    dec l                                         ; $6409: $2d
    ld a, h                                       ; $640a: $7c
    ldh [$8c], a                                  ; $640b: $e0 $8c
    inc [hl]                                      ; $640d: $34
    db $ed                                        ; $640e: $ed
    xor d                                         ; $640f: $aa
    rst $18                                       ; $6410: $df
    ld l, l                                       ; $6411: $6d
    dec c                                         ; $6412: $0d
    add e                                         ; $6413: $83
    ldh [$3b], a                                  ; $6414: $e0 $3b
    and b                                         ; $6416: $a0
    ld a, [$4de1]                                 ; $6417: $fa $e1 $4d
    ld bc, $802d                                  ; $641a: $01 $2d $80
    rst $18                                       ; $641d: $df
    add b                                         ; $641e: $80
    push bc                                       ; $641f: $c5
    call nz, $84a4                                ; $6420: $c4 $a4 $84
    ldh [$83], a                                  ; $6423: $e0 $83
    pop hl                                        ; $6425: $e1
    cp e                                          ; $6426: $bb
    pop hl                                        ; $6427: $e1
    cp d                                          ; $6428: $ba
    ldh [rSVBK], a                                ; $6429: $e0 $70
    ld a, [hl]                                    ; $642b: $7e
    ld [c], a                                     ; $642c: $e2
    add sp, -$5d                                  ; $642d: $e8 $a3
    add b                                         ; $642f: $80
    rst $18                                       ; $6430: $df
    add sp, $62                                   ; $6431: $e8 $62
    ld l, e                                       ; $6433: $6b
    dec c                                         ; $6434: $0d
    ld c, e                                       ; $6435: $4b
    ld b, e                                       ; $6436: $43
    ldh [rNR41], a                                ; $6437: $e0 $20
    pop bc                                        ; $6439: $c1
    db $e3                                        ; $643a: $e3
    dec sp                                        ; $643b: $3b
    ld [c], a                                     ; $643c: $e2
    and d                                         ; $643d: $a2
    and [hl]                                      ; $643e: $a6
    add b                                         ; $643f: $80
    call c, $e600                                 ; $6440: $dc $00 $e6
    ld c, e                                       ; $6443: $4b
    push bc                                       ; $6444: $c5
    db $e4                                        ; $6445: $e4
    ld a, h                                       ; $6446: $7c
    ld [c], a                                     ; $6447: $e2
    pop bc                                        ; $6448: $c1
    dec c                                         ; $6449: $0d
    cp d                                          ; $644a: $ba
    jp nz, $a266                                  ; $644b: $c2 $66 $a2

    add b                                         ; $644e: $80
    rst $18                                       ; $644f: $df
    ld [bc], a                                    ; $6450: $02
    db $e3                                        ; $6451: $e3
    nop                                           ; $6452: $00
    ldh [$2b], a                                  ; $6453: $e0 $2b
    dec bc                                        ; $6455: $0b
    ld bc, $fa0b                                  ; $6456: $01 $0b $fa
    jp nz, $c0f8                                  ; $6459: $c2 $f8 $c0

    cp $c9                                        ; $645c: $fe $c9
    add b                                         ; $645e: $80
    ld a, h                                       ; $645f: $7c
    add h                                         ; $6460: $84
    jp nz, $e249                                  ; $6461: $c2 $49 $e2

    ret nz                                        ; $6464: $c0

    ldh [$37], a                                  ; $6465: $e0 $37
    dec bc                                        ; $6467: $0b
    dec hl                                        ; $6468: $2b
    dec bc                                        ; $6469: $0b
    rst $30                                       ; $646a: $f7
    pop bc                                        ; $646b: $c1
    dec c                                         ; $646c: $0d
    ld l, l                                       ; $646d: $6d
    db $fc                                        ; $646e: $fc
    sbc a                                         ; $646f: $9f
    xor h                                         ; $6470: $ac
    ld l, d                                       ; $6471: $6a
    sbc $88                                       ; $6472: $de $88
    db $e3                                        ; $6474: $e3
    dec bc                                        ; $6475: $0b
    dec bc                                        ; $6476: $0b
    ld l, e                                       ; $6477: $6b
    ld c, e                                       ; $6478: $4b
    ld a, l                                       ; $6479: $7d
    ldh [$0d], a                                  ; $647a: $e0 $0d
    ld l, e                                       ; $647c: $6b
    or b                                          ; $647d: $b0
    ld a, $c1                                     ; $647e: $3e $c1
    add b                                         ; $6480: $80
    rst $18                                       ; $6481: $df
    nop                                           ; $6482: $00
    and a                                         ; $6483: $a7

Call_062_6484:
    add $c3                                       ; $6484: $c6 $c3
    dec hl                                        ; $6486: $2b
    ld c, e                                       ; $6487: $4b
    ei                                            ; $6488: $fb
    ret nz                                        ; $6489: $c0

    ld a, [bc]                                    ; $648a: $0a
    inc bc                                        ; $648b: $03
    dec bc                                        ; $648c: $0b
    dec hl                                        ; $648d: $2b
    ret nz                                        ; $648e: $c0

    pop hl                                        ; $648f: $e1
    ld l, $82                                     ; $6490: $2e $82
    nop                                           ; $6492: $00
    cp a                                          ; $6493: $bf
    ld e, h                                       ; $6494: $5c
    ld [c], a                                     ; $6495: $e2
    ld c, e                                       ; $6496: $4b
    and b                                         ; $6497: $a0
    ld c, b                                       ; $6498: $48
    pop bc                                        ; $6499: $c1
    ld a, $81                                     ; $649a: $3e $81
    ldh [$2b], a                                  ; $649c: $e0 $2b
    ld a, [bc]                                    ; $649e: $0a
    ld a, [hl+]                                   ; $649f: $2a
    ld a, [hl+]                                   ; $64a0: $2a
    ld c, e                                       ; $64a1: $4b
    add b                                         ; $64a2: $80
    ld a, [$b100]                                 ; $64a3: $fa $00 $b1
    inc a                                         ; $64a6: $3c
    rst $08                                       ; $64a7: $cf
    and b                                         ; $64a8: $a0
    ld [$0bc2], sp                                ; $64a9: $08 $c2 $0b
    dec bc                                        ; $64ac: $0b
    ld c, e                                       ; $64ad: $4b
    ld c, e                                       ; $64ae: $4b
    ld a, b                                       ; $64af: $78
    pop bc                                        ; $64b0: $c1
    ld [hl], e                                    ; $64b1: $73
    and c                                         ; $64b2: $a1
    or b                                          ; $64b3: $b0
    nop                                           ; $64b4: $00
    cp a                                          ; $64b5: $bf
    add b                                         ; $64b6: $80
    ret                                           ; $64b7: $c9


    cp a                                          ; $64b8: $bf
    ldh [rLY], a                                  ; $64b9: $e0 $44
    and c                                         ; $64bb: $a1
    dec bc                                        ; $64bc: $0b
    dec hl                                        ; $64bd: $2b
    cp c                                          ; $64be: $b9
    and c                                         ; $64bf: $a1
    ld c, e                                       ; $64c0: $4b
    jr nc, @-$3c                                  ; $64c1: $30 $c2

    pop bc                                        ; $64c3: $c1
    nop                                           ; $64c4: $00
    cp a                                          ; $64c5: $bf
    nop                                           ; $64c6: $00
    xor d                                         ; $64c7: $aa
    adc b                                         ; $64c8: $88
    add c                                         ; $64c9: $81
    ld l, e                                       ; $64ca: $6b
    ld l, e                                       ; $64cb: $6b
    add c                                         ; $64cc: $81
    ldh [$fc], a                                  ; $64cd: $e0 $fc
    add b                                         ; $64cf: $80
    ld bc, $822b                                  ; $64d0: $01 $2b $82
    and l                                         ; $64d3: $a5
    nop                                           ; $64d4: $00
    cp a                                          ; $64d5: $bf
    ld l, b                                       ; $64d6: $68
    daa                                           ; $64d7: $27
    db $fc                                        ; $64d8: $fc
    jp $a07b                                      ; $64d9: $c3 $7b $a0


    ld a, [$4280]                                 ; $64dc: $fa $80 $42
    pop hl                                        ; $64df: $e1
    ld c, b                                       ; $64e0: $48
    ld d, d                                       ; $64e1: $52
    ld h, $00                                     ; $64e2: $26 $00
    ld e, e                                       ; $64e4: $5b
    ret nz                                        ; $64e5: $c0

    ld b, [hl]                                    ; $64e6: $46
    dec c                                         ; $64e7: $0d
    sub b                                         ; $64e8: $90
    ld h, c                                       ; $64e9: $61
    ld sp, hl                                     ; $64ea: $f9
    jp $c26d                                      ; $64eb: $c3 $6d $c2


    ld b, e                                       ; $64ee: $43
    nop                                           ; $64ef: $00
    add b                                         ; $64f0: $80
    ld a, a                                       ; $64f1: $7f
    sub d                                         ; $64f2: $92
    ld l, d                                       ; $64f3: $6a
    ld a, [hl]                                    ; $64f4: $7e
    ld b, c                                       ; $64f5: $41
    ld c, h                                       ; $64f6: $4c
    ld h, c                                       ; $64f7: $61
    pop bc                                        ; $64f8: $c1
    ld [c], a                                     ; $64f9: $e2
    add b                                         ; $64fa: $80
    ld a, a                                       ; $64fb: $7f
    rst $18                                       ; $64fc: $df
    add $3e                                       ; $64fd: $c6 $3e
    ld c, d                                       ; $64ff: $4a
    nop                                           ; $6500: $00
    cp $e5                                        ; $6501: $fe $e5
    nop                                           ; $6503: $00
    ld h, d                                       ; $6504: $62
    add b                                         ; $6505: $80
    rst $18                                       ; $6506: $df
    sbc e                                         ; $6507: $9b
    xor $fe                                       ; $6508: $ee $fe
    ld c, c                                       ; $650a: $49
    ld a, [c]                                     ; $650b: $f2
    ld b, [hl]                                    ; $650c: $46
    nop                                           ; $650d: $00
    ld e, a                                       ; $650e: $5f
    ld a, [hl]                                    ; $650f: $7e
    ld d, d                                       ; $6510: $52
    nop                                           ; $6511: $00
    add d                                         ; $6512: $82
    rst $18                                       ; $6513: $df
    add h                                         ; $6514: $84
    di                                            ; $6515: $f3
    ret z                                         ; $6516: $c8

    ei                                            ; $6517: $fb
    nop                                           ; $6518: $00
    ld d, a                                       ; $6519: $57
    add c                                         ; $651a: $81
    ld b, [hl]                                    ; $651b: $46
    ld l, d                                       ; $651c: $6a
    rst $00                                       ; $651d: $c7
    nop                                           ; $651e: $00
    cp a                                          ; $651f: $bf
    ld e, h                                       ; $6520: $5c
    add [hl]                                      ; $6521: $86
    ld [bc], a                                    ; $6522: $02
    add d                                         ; $6523: $82
    ld b, b                                       ; $6524: $40
    dec hl                                        ; $6525: $2b
    rst $38                                       ; $6526: $ff
    ldh [$3f], a                                  ; $6527: $e0 $3f
    ld b, b                                       ; $6529: $40
    ld a, $43                                     ; $652a: $3e $43
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    ret nz                                        ; $652e: $c0

    dec h                                         ; $652f: $25
    ld a, [hl]                                    ; $6530: $7e
    ld b, l                                       ; $6531: $45
    rlca                                          ; $6532: $07
    dec hl                                        ; $6533: $2b
    dec c                                         ; $6534: $0d
    dec hl                                        ; $6535: $2b
    ld a, a                                       ; $6536: $7f
    add c                                         ; $6537: $81
    ld [hl], l                                    ; $6538: $75
    and d                                         ; $6539: $a2
    add d                                         ; $653a: $82
    add l                                         ; $653b: $85

Call_062_653c:
    add b                                         ; $653c: $80
    rst $18                                       ; $653d: $df
    cp h                                          ; $653e: $bc
    ld h, a                                       ; $653f: $67
    add hl, de                                    ; $6540: $19
    dec hl                                        ; $6541: $2b
    ret nz                                        ; $6542: $c0

    add b                                         ; $6543: $80
    cp a                                          ; $6544: $bf
    ld h, b                                       ; $6545: $60
    dec c                                         ; $6546: $0d
    dec hl                                        ; $6547: $2b
    ld b, b                                       ; $6548: $40
    ld b, d                                       ; $6549: $42
    nop                                           ; $654a: $00
    cp a                                          ; $654b: $bf
    nop                                           ; $654c: $00
    ld c, e                                       ; $654d: $4b
    add c                                         ; $654e: $81
    ld l, l                                       ; $654f: $6d
    add e                                         ; $6550: $83
    ld h, c                                       ; $6551: $61
    cp a                                          ; $6552: $bf
    pop hl                                        ; $6553: $e1
    ld a, a                                       ; $6554: $7f
    ld h, b                                       ; $6555: $60
    ld b, b                                       ; $6556: $40
    ld b, c                                       ; $6557: $41
    nop                                           ; $6558: $00
    cp a                                          ; $6559: $bf
    ld b, $2b                                     ; $655a: $06 $2b
    dec hl                                        ; $655c: $2b
    add d                                         ; $655d: $82
    ret nz                                        ; $655e: $c0

    add sp, $2b                                   ; $655f: $e8 $2b
    nop                                           ; $6561: $00
    ld b, h                                       ; $6562: $44
    nop                                           ; $6563: $00
    cp a                                          ; $6564: $bf
    nop                                           ; $6565: $00
    rst $20                                       ; $6566: $e7
    ret nz                                        ; $6567: $c0

    pop hl                                        ; $6568: $e1
    rst $38                                       ; $6569: $ff
    ld h, b                                       ; $656a: $60
    dec l                                         ; $656b: $2d
    db $10                                        ; $656c: $10
    db $fd                                        ; $656d: $fd
    ld b, b                                       ; $656e: $40
    ld b, b                                       ; $656f: $40
    add b                                         ; $6570: $80
    nop                                           ; $6571: $00
    cp a                                          ; $6572: $bf
    nop                                           ; $6573: $00
    ld c, h                                       ; $6574: $4c
    ld l, l                                       ; $6575: $6d
    jp Jump_000_3d42                              ; $6576: $c3 $42 $3d


    db $e3                                        ; $6579: $e3
    add b                                         ; $657a: $80
    add h                                         ; $657b: $84
    inc c                                         ; $657c: $0c
    ld a, e                                       ; $657d: $7b
    jr c, jr_062_6580                             ; $657e: $38 $00

jr_062_6580:
    ld c, a                                       ; $6580: $4f
    ld c, e                                       ; $6581: $4b
    dec c                                         ; $6582: $0d
    jp nz, Jump_062_7fc3                          ; $6583: $c2 $c3 $7f

    ld b, b                                       ; $6586: $40
    inc b                                         ; $6587: $04
    ld b, l                                       ; $6588: $45
    dec sp                                        ; $6589: $3b
    ld sp, $802e                                  ; $658a: $31 $2e $80
    dec d                                         ; $658d: $15
    ld c, l                                       ; $658e: $4d
    dec l                                         ; $658f: $2d
    dec hl                                        ; $6590: $2b
    cp a                                          ; $6591: $bf
    jr nz, @+$0d                                  ; $6592: $20 $0b

    db $fd                                        ; $6594: $fd
    ld b, b                                       ; $6595: $40
    call nz, $0021                                ; $6596: $c4 $21 $00
    nop                                           ; $6599: $00
    cp a                                          ; $659a: $bf
    nop                                           ; $659b: $00
    xor [hl]                                      ; $659c: $ae
    cp a                                          ; $659d: $bf
    ldh [$bd], a                                  ; $659e: $e0 $bd
    ld b, d                                       ; $65a0: $42
    ld b, d                                       ; $65a1: $42
    ld h, h                                       ; $65a2: $64
    add d                                         ; $65a3: $82
    rst $18                                       ; $65a4: $df
    cp d                                          ; $65a5: $ba
    adc [hl]                                      ; $65a6: $8e
    pop bc                                        ; $65a7: $c1
    ld h, c                                       ; $65a8: $61
    ld bc, $ba2b                                  ; $65a9: $01 $2b $ba
    and c                                         ; $65ac: $a1
    add d                                         ; $65ad: $82
    ld h, l                                       ; $65ae: $65
    nop                                           ; $65af: $00
    cp a                                          ; $65b0: $bf
    inc d                                         ; $65b1: $14
    xor d                                         ; $65b2: $aa
    ei                                            ; $65b3: $fb
    ld b, e                                       ; $65b4: $43
    pop bc                                        ; $65b5: $c1
    pop hl                                        ; $65b6: $e1
    ld e, l                                       ; $65b7: $5d
    ld h, d                                       ; $65b8: $62
    ld bc, $3c2d                                  ; $65b9: $01 $2d $3c
    nop                                           ; $65bc: $00
    add b                                         ; $65bd: $80
    ld a, [hl]                                    ; $65be: $7e
    inc l                                         ; $65bf: $2c
    ld a, [hl+]                                   ; $65c0: $2a
    inc a                                         ; $65c1: $3c
    ld h, e                                       ; $65c2: $63
    add d                                         ; $65c3: $82
    ld h, l                                       ; $65c4: $65
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    di                                            ; $65c7: $f3
    ld b, l                                       ; $65c8: $45
    nop                                           ; $65c9: $00
    ld a, [hl]                                    ; $65ca: $7e
    jp hl                                         ; $65cb: $e9


    add d                                         ; $65cc: $82
    adc c                                         ; $65cd: $89
    add b                                         ; $65ce: $80
    rst $18                                       ; $65cf: $df
    dec de                                        ; $65d0: $1b
    ld l, l                                       ; $65d1: $6d
    ld [bc], a                                    ; $65d2: $02
    adc [hl]                                      ; $65d3: $8e
    nop                                           ; $65d4: $00
    cp a                                          ; $65d5: $bf
    inc b                                         ; $65d6: $04
    ld h, d                                       ; $65d7: $62
    db $fc                                        ; $65d8: $fc
    pop af                                        ; $65d9: $f1
    nop                                           ; $65da: $00
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    ret nz                                        ; $65dd: $c0

    db $eb                                        ; $65de: $eb
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    ld l, l                                       ; $65e1: $6d
    push af                                       ; $65e2: $f5
    cp e                                          ; $65e3: $bb
    push bc                                       ; $65e4: $c5
    nop                                           ; $65e5: $00
    ld l, d                                       ; $65e6: $6a
    sub $f4                                       ; $65e7: $d6 $f4
    nop                                           ; $65e9: $00
    ld a, a                                       ; $65ea: $7f
    nop                                           ; $65eb: $00
    ld a, [hl]                                    ; $65ec: $7e
    rst $38                                       ; $65ed: $ff
    db $f4                                        ; $65ee: $f4
    add hl, sp                                    ; $65ef: $39
    add [hl]                                      ; $65f0: $86
    ld [hl], a                                    ; $65f1: $77
    add b                                         ; $65f2: $80
    push de                                       ; $65f3: $d5
    ld l, [hl]                                    ; $65f4: $6e
    ld [hl], h                                    ; $65f5: $74
    add hl, de                                    ; $65f6: $19
    rst $30                                       ; $65f7: $f7
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    nop                                           ; $65fc: $00
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    add b                                         ; $65ff: $80
    rst $18                                       ; $6600: $df
    ld a, [$80ff]                                 ; $6601: $fa $ff $80
    rst $18                                       ; $6604: $df
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    add b                                         ; $660b: $80
    rst $18                                       ; $660c: $df
    nop                                           ; $660d: $00
    ld a, [$80ff]                                 ; $660e: $fa $ff $80
    inc b                                         ; $6611: $04
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    ccf                                           ; $6615: $3f
    db $dd                                        ; $6616: $dd
    sbc $a0                                       ; $6617: $de $a0
    and b                                         ; $6619: $a0
    and b                                         ; $661a: $a0
    call c, $fffa                                 ; $661b: $dc $fa $ff
    db $f4                                        ; $661e: $f4
    push af                                       ; $661f: $f5
    ccf                                           ; $6620: $3f
    ld [c], a                                     ; $6621: $e2
    db $e3                                        ; $6622: $e3
    db $e4                                        ; $6623: $e4
    rst $18                                       ; $6624: $df
    ldh [$e1], a                                  ; $6625: $e0 $e1
    ld a, [$f4ff]                                 ; $6627: $fa $ff $f4
    push af                                       ; $662a: $f5
    ccf                                           ; $662b: $3f
    add sp, -$17                                  ; $662c: $e8 $e9
    ld [$e6e5], a                                 ; $662e: $ea $e5 $e6
    rst $20                                       ; $6631: $e7
    ld a, [$f4ff]                                 ; $6632: $fa $ff $f4
    push af                                       ; $6635: $f5
    nop                                           ; $6636: $00
    ld e, e                                       ; $6637: $5b
    rst $38                                       ; $6638: $ff
    ld a, [$5bfb]                                 ; $6639: $fa $fb $5b
    rst $38                                       ; $663c: $ff
    ld a, [$5bfb]                                 ; $663d: $fa $fb $5b
    rst $38                                       ; $6640: $ff
    ld a, [$5bfb]                                 ; $6641: $fa $fb $5b
    rst $38                                       ; $6644: $ff
    add b                                         ; $6645: $80
    rst $18                                       ; $6646: $df
    ldh [rHDMA5], a                               ; $6647: $e0 $55
    rst $38                                       ; $6649: $ff
    add b                                         ; $664a: $80
    rst $18                                       ; $664b: $df
    ld a, [$80ff]                                 ; $664c: $fa $ff $80
    rst $18                                       ; $664f: $df
    ld c, a                                       ; $6650: $4f
    db $e3                                        ; $6651: $e3
    sub $d7                                       ; $6652: $d6 $d7
    and b                                         ; $6654: $a0
    ld a, b                                       ; $6655: $78
    db $fc                                        ; $6656: $fc
    ld a, [c]                                     ; $6657: $f2
    add b                                         ; $6658: $80
    rst $18                                       ; $6659: $df
    ld c, a                                       ; $665a: $4f
    db $e3                                        ; $665b: $e3
    ret c                                         ; $665c: $d8

    reti                                          ; $665d: $d9


    and b                                         ; $665e: $a0
    and b                                         ; $665f: $a0
    db $fc                                        ; $6660: $fc
    pop af                                        ; $6661: $f1
    cp h                                          ; $6662: $bc
    add b                                         ; $6663: $80
    rst $18                                       ; $6664: $df
    ld c, a                                       ; $6665: $4f
    db $e3                                        ; $6666: $e3
    jp c, $d6db                                   ; $6667: $da $db $d6

    rst $10                                       ; $666a: $d7
    db $fc                                        ; $666b: $fc
    db $e3                                        ; $666c: $e3
    ret nc                                        ; $666d: $d0

    dec c                                         ; $666e: $0d
    pop de                                        ; $666f: $d1
    db $fc                                        ; $6670: $fc
    rst $20                                       ; $6671: $e7
    sub $d7                                       ; $6672: $d6 $d7
    add b                                         ; $6674: $80
    rst $18                                       ; $6675: $df
    sub d                                         ; $6676: $92
    jp nz, $c089                                  ; $6677: $c2 $89 $c0

    ld a, [hl]                                    ; $667a: $7e
    push hl                                       ; $667b: $e5
    inc hl                                        ; $667c: $23
    jp nc, $fcd3                                  ; $667d: $d2 $d3 $fc

    rst $20                                       ; $6680: $e7
    ld l, d                                       ; $6681: $6a
    pop hl                                        ; $6682: $e1
    add b                                         ; $6683: $80
    rst $18                                       ; $6684: $df
    db $e4                                        ; $6685: $e4
    ld c, e                                       ; $6686: $4b
    ret nz                                        ; $6687: $c0

    add [hl]                                      ; $6688: $86
    rst $20                                       ; $6689: $e7
    rrca                                          ; $668a: $0f
    call nc, $a0d5                                ; $668b: $d4 $d5 $a0
    and b                                         ; $668e: $a0
    db $fc                                        ; $668f: $fc
    db $e3                                        ; $6690: $e3
    ld a, [hl]                                    ; $6691: $7e
    db $e3                                        ; $6692: $e3
    dec a                                         ; $6693: $3d
    pop af                                        ; $6694: $f1
    sbc [hl]                                      ; $6695: $9e
    call z, $827c                                 ; $6696: $cc $7c $82
    db $e4                                        ; $6699: $e4
    add [hl]                                      ; $669a: $86
    push hl                                       ; $669b: $e5
    sbc a                                         ; $669c: $9f
    sbc l                                         ; $669d: $9d
    sbc l                                         ; $669e: $9d
    sbc l                                         ; $669f: $9d
    sbc a                                         ; $66a0: $9f
    rst $30                                       ; $66a1: $f7
    and b                                         ; $66a2: $a0
    ldh a, [$7e]                                  ; $66a3: $f0 $7e
    db $e4                                        ; $66a5: $e4
    add b                                         ; $66a6: $80
    rst $18                                       ; $66a7: $df
    rst $08                                       ; $66a8: $cf
    and b                                         ; $66a9: $a0
    add [hl]                                      ; $66aa: $86
    add sp, -$61                                  ; $66ab: $e8 $9f
    sbc h                                         ; $66ad: $9c
    ld b, [hl]                                    ; $66ae: $46
    ld b, [hl]                                    ; $66af: $46
    inc bc                                        ; $66b0: $03
    ld b, [hl]                                    ; $66b1: $46
    sbc h                                         ; $66b2: $9c
    cp a                                          ; $66b3: $bf
    ldh [$7e], a                                  ; $66b4: $e0 $7e
    and $80                                       ; $66b6: $e6 $80
    rst $18                                       ; $66b8: $df
    dec a                                         ; $66b9: $3d
    ldh [$08], a                                  ; $66ba: $e0 $08
    pop hl                                        ; $66bc: $e1
    add h                                         ; $66bd: $84
    pop hl                                        ; $66be: $e1
    ld l, a                                       ; $66bf: $6f
    and d                                         ; $66c0: $a2
    sbc h                                         ; $66c1: $9c
    ld b, [hl]                                    ; $66c2: $46
    xor [hl]                                      ; $66c3: $ae
    cp $e0                                        ; $66c4: $fe $e0
    sbc h                                         ; $66c6: $9c
    and d                                         ; $66c7: $a2
    ld a, h                                       ; $66c8: $7c
    ldh [$4c], a                                  ; $66c9: $e0 $4c
    db $fc                                        ; $66cb: $fc
    push bc                                       ; $66cc: $c5
    add b                                         ; $66cd: $80
    rst $18                                       ; $66ce: $df
    sub $d7                                       ; $66cf: $d6 $d7
    db $10                                        ; $66d1: $10
    pop hl                                        ; $66d2: $e1
    add h                                         ; $66d3: $84
    ldh [$ae], a                                  ; $66d4: $e0 $ae
    add e                                         ; $66d6: $83
    ldh [rPCM34], a                               ; $66d7: $e0 $77
    xor a                                         ; $66d9: $af
    xor [hl]                                      ; $66da: $ae
    xor a                                         ; $66db: $af
    ld a, l                                       ; $66dc: $7d
    ldh [$ae], a                                  ; $66dd: $e0 $ae
    sbc h                                         ; $66df: $9c
    sbc a                                         ; $66e0: $9f
    db $fc                                        ; $66e1: $fc
    push bc                                       ; $66e2: $c5
    ld [$df80], sp                                ; $66e3: $08 $80 $df
    add [hl]                                      ; $66e6: $86
    jp $e045                                      ; $66e7: $c3 $45 $e0


    xor a                                         ; $66ea: $af
    add e                                         ; $66eb: $83
    pop hl                                        ; $66ec: $e1
    pop bc                                        ; $66ed: $c1
    pop hl                                        ; $66ee: $e1
    cp d                                          ; $66ef: $ba
    ldh [$3b], a                                  ; $66f0: $e0 $3b
    ldh [$08], a                                  ; $66f2: $e0 $08
    ld a, d                                       ; $66f4: $7a
    db $d3                                        ; $66f5: $d3
    add b                                         ; $66f6: $80
    rst $08                                       ; $66f7: $cf
    add [hl]                                      ; $66f8: $86
    jp $c49e                                      ; $66f9: $c3 $9e $c4


    ld [c], a                                     ; $66fc: $e2
    cp l                                          ; $66fd: $bd
    ldh [$81], a                                  ; $66fe: $e0 $81
    pop hl                                        ; $6700: $e1
    cp d                                          ; $6701: $ba
    ldh [rNR41], a                                ; $6702: $e0 $20
    ld a, [hl]                                    ; $6704: $7e
    pop hl                                        ; $6705: $e1
    add sp, -$5d                                  ; $6706: $e8 $a3
    or a                                          ; $6708: $b7
    xor e                                         ; $6709: $ab
    add b                                         ; $670a: $80
    rst $08                                       ; $670b: $cf
    ld [$a1c3], sp                                ; $670c: $08 $c3 $a1
    ld b, a                                       ; $670f: $47
    ld [c], a                                     ; $6710: $e2
    add c                                         ; $6711: $81
    ldh [$84], a                                  ; $6712: $e0 $84
    ld a, [hl-]                                   ; $6714: $3a
    ldh [$3d], a                                  ; $6715: $e0 $3d
    ld [c], a                                     ; $6717: $e2
    sbc [hl]                                      ; $6718: $9e
    ld l, d                                       ; $6719: $6a
    and [hl]                                      ; $671a: $a6
    nop                                           ; $671b: $00
    cp [hl]                                       ; $671c: $be
    add [hl]                                      ; $671d: $86
    jp nz, $e2c6                                  ; $671e: $c2 $c6 $e2

    ld b, l                                       ; $6721: $45
    ld a, e                                       ; $6722: $7b
    ld b, e                                       ; $6723: $43
    ld b, c                                       ; $6724: $41
    nop                                           ; $6725: $00
    ld [c], a                                     ; $6726: $e2
    ld b, [hl]                                    ; $6727: $46
    xor [hl]                                      ; $6728: $ae
    xor a                                         ; $6729: $af
    and c                                         ; $672a: $a1
    ld a, d                                       ; $672b: $7a
    and e                                         ; $672c: $a3
    jp $dbda                                      ; $672d: $c3 $da $db


    nop                                           ; $6730: $00
    cp a                                          ; $6731: $bf
    ld [$c3c0], sp                                ; $6732: $08 $c0 $c3
    pop bc                                        ; $6735: $c1
    add h                                         ; $6736: $84
    ldh [$2d], a                                  ; $6737: $e0 $2d
    ld h, $ef                                     ; $6739: $26 $ef
    ld l, $bd                                     ; $673b: $2e $bd
    dec hl                                        ; $673d: $2b
    ld b, l                                       ; $673e: $45
    cp h                                          ; $673f: $bc
    ret nz                                        ; $6740: $c0

    xor a                                         ; $6741: $af
    sbc h                                         ; $6742: $9c
    sbc a                                         ; $6743: $9f
    ret c                                         ; $6744: $d8

    ld a, d                                       ; $6745: $7a
    and e                                         ; $6746: $a3
    add b                                         ; $6747: $80
    rst $18                                       ; $6748: $df
    ld [$9ea1], sp                                ; $6749: $08 $a1 $9e
    xor [hl]                                      ; $674c: $ae
    ld b, $e2                                     ; $674d: $06 $e2
    xor a                                         ; $674f: $af
    dec l                                         ; $6750: $2d
    ld e, a                                       ; $6751: $5f
    jr nz, jr_062_6774                            ; $6752: $20 $20

    cp [hl]                                       ; $6754: $be
    ld l, $44                                     ; $6755: $2e $44
    dec sp                                        ; $6757: $3b
    pop hl                                        ; $6758: $e1
    sbc [hl]                                      ; $6759: $9e
    halt                                          ; $675a: $76
    and b                                         ; $675b: $a0
    add sp, -$18                                  ; $675c: $e8 $e8
    add c                                         ; $675e: $81
    add b                                         ; $675f: $80
    rst $18                                       ; $6760: $df
    ld [$a1a1], sp                                ; $6761: $08 $a1 $a1
    ld c, b                                       ; $6764: $48
    jp Jump_000_3946                              ; $6765: $c3 $46 $39


    ld hl, $261f                                  ; $6768: $21 $1f $26
    inc l                                         ; $676b: $2c
    cp l                                          ; $676c: $bd
    ld c, c                                       ; $676d: $49
    ld b, h                                       ; $676e: $44
    ld a, d                                       ; $676f: $7a
    ret nz                                        ; $6770: $c0

    ld bc, $6ae0                                  ; $6771: $01 $e0 $6a

jr_062_6774:
    add c                                         ; $6774: $81
    ldh a, [rP1]                                  ; $6775: $f0 $00
    cp a                                          ; $6777: $bf
    nop                                           ; $6778: $00
    ld [c], a                                     ; $6779: $e2
    ld bc, $47e1                                  ; $677a: $01 $e1 $47
    pop bc                                        ; $677d: $c1
    ld a, $35                                     ; $677e: $3e $35
    inc a                                         ; $6780: $3c
    ld c, d                                       ; $6781: $4a
    rlca                                          ; $6782: $07
    ld e, l                                       ; $6783: $5d
    ld d, d                                       ; $6784: $52
    ld b, l                                       ; $6785: $45
    add b                                         ; $6786: $80
    ld [c], a                                     ; $6787: $e2
    ld [hl], d                                    ; $6788: $72
    add c                                         ; $6789: $81
    nop                                           ; $678a: $00
    cp a                                          ; $678b: $bf
    sub [hl]                                      ; $678c: $96
    add h                                         ; $678d: $84
    ld b, [hl]                                    ; $678e: $46
    and d                                         ; $678f: $a2
    rst $38                                       ; $6790: $ff
    ld b, [hl]                                    ; $6791: $46
    xor [hl]                                      ; $6792: $ae
    ld a, $35                                     ; $6793: $3e $35
    ld a, [hl-]                                   ; $6795: $3a
    ld b, e                                       ; $6796: $43
    xor [hl]                                      ; $6797: $ae
    ld b, l                                       ; $6798: $45
    ret nz                                        ; $6799: $c0

    cp c                                          ; $679a: $b9
    and b                                         ; $679b: $a0
    nop                                           ; $679c: $00
    jp $bf00                                      ; $679d: $c3 $00 $bf


    nop                                           ; $67a0: $00
    and h                                         ; $67a1: $a4
    cp a                                          ; $67a2: $bf
    ld [c], a                                     ; $67a3: $e2
    jp Jump_000_39a0                              ; $67a4: $c3 $a0 $39


    dec [hl]                                      ; $67a7: $35
    dec c                                         ; $67a8: $0d
    ld a, $fc                                     ; $67a9: $3e $fc
    and d                                         ; $67ab: $a2
    sbc h                                         ; $67ac: $9c
    sbc a                                         ; $67ad: $9f
    ld [hl], d                                    ; $67ae: $72
    add c                                         ; $67af: $81
    nop                                           ; $67b0: $00
    cp a                                          ; $67b1: $bf
    nop                                           ; $67b2: $00
    xor b                                         ; $67b3: $a8
    ld a, $c0                                     ; $67b4: $3e $c0
    ld e, a                                       ; $67b6: $5f
    xor [hl]                                      ; $67b7: $ae
    ld b, [hl]                                    ; $67b8: $46
    ld b, l                                       ; $67b9: $45
    ld [hl], $39                                  ; $67ba: $36 $39
    ld a, l                                       ; $67bc: $7d
    and d                                         ; $67bd: $a2
    and c                                         ; $67be: $a1
    nop                                           ; $67bf: $00
    cp a                                          ; $67c0: $bf
    inc e                                         ; $67c1: $1c
    nop                                           ; $67c2: $00
    xor l                                         ; $67c3: $ad
    db $fd                                        ; $67c4: $fd
    and d                                         ; $67c5: $a2
    ld b, [hl]                                    ; $67c6: $46
    ld b, l                                       ; $67c7: $45
    ld b, l                                       ; $67c8: $45
    nop                                           ; $67c9: $00
    and c                                         ; $67ca: $a1
    ld a, l                                       ; $67cb: $7d
    add b                                         ; $67cc: $80
    add d                                         ; $67cd: $82
    and e                                         ; $67ce: $a3
    ld sp, $3da0                                  ; $67cf: $31 $a0 $3d
    xor $00                                       ; $67d2: $ee $00
    or l                                          ; $67d4: $b5
    ld a, a                                       ; $67d5: $7f
    add d                                         ; $67d6: $82
    sbc l                                         ; $67d7: $9d
    sbc l                                         ; $67d8: $9d
    ld sp, hl                                     ; $67d9: $f9
    jp nz, $813e                                  ; $67da: $c2 $3e $81

    nop                                           ; $67dd: $00
    ld a, [hl]                                    ; $67de: $7e
    ld h, h                                       ; $67df: $64
    nop                                           ; $67e0: $00
    ld e, [hl]                                    ; $67e1: $5e
    nop                                           ; $67e2: $00
    and c                                         ; $67e3: $a1
    ld a, [hl]                                    ; $67e4: $7e
    push hl                                       ; $67e5: $e5
    ld a, d                                       ; $67e6: $7a
    add c                                         ; $67e7: $81
    cp a                                          ; $67e8: $bf
    ld h, b                                       ; $67e9: $60
    cp [hl]                                       ; $67ea: $be
    ld h, d                                       ; $67eb: $62
    db $f4                                        ; $67ec: $f4
    ld b, c                                       ; $67ed: $41
    nop                                           ; $67ee: $00
    add b                                         ; $67ef: $80
    ld a, a                                       ; $67f0: $7f
    nop                                           ; $67f1: $00
    and e                                         ; $67f2: $a3
    inc b                                         ; $67f3: $04
    ld l, c                                       ; $67f4: $69
    cp $e5                                        ; $67f5: $fe $e5
    db $ec                                        ; $67f7: $ec
    ld h, d                                       ; $67f8: $62
    add b                                         ; $67f9: $80
    rst $18                                       ; $67fa: $df
    nop                                           ; $67fb: $00
    ld b, d                                       ; $67fc: $42
    ld a, [hl]                                    ; $67fd: $7e
    push hl                                       ; $67fe: $e5
    nop                                           ; $67ff: $00

Jump_062_6800:
    ld a, d                                       ; $6800: $7a
    and $04                                       ; $6801: $e6 $04
    ret nz                                        ; $6803: $c0

    add d                                         ; $6804: $82
    jp Jump_000_21e4                              ; $6805: $c3 $e4 $21


    nop                                           ; $6808: $00
    cp a                                          ; $6809: $bf
    add d                                         ; $680a: $82
    ld c, a                                       ; $680b: $4f
    ld a, [hl]                                    ; $680c: $7e
    ld b, l                                       ; $680d: $45
    nop                                           ; $680e: $00
    cp a                                          ; $680f: $bf
    ld h, b                                       ; $6810: $60
    nop                                           ; $6811: $00
    ld b, l                                       ; $6812: $45
    add d                                         ; $6813: $82
    ld c, c                                       ; $6814: $49
    ld a, [hl]                                    ; $6815: $7e
    ld b, a                                       ; $6816: $47
    nop                                           ; $6817: $00
    cp a                                          ; $6818: $bf
    ld a, [hl]                                    ; $6819: $7e
    ret                                           ; $681a: $c9


    sbc a                                         ; $681b: $9f
    and d                                         ; $681c: $a2
    add c                                         ; $681d: $81
    ld b, h                                       ; $681e: $44
    ldh a, [$7e]                                  ; $681f: $f0 $7e
    ld b, a                                       ; $6821: $47
    nop                                           ; $6822: $00
    cp a                                          ; $6823: $bf
    nop                                           ; $6824: $00
    ld b, h                                       ; $6825: $44
    add d                                         ; $6826: $82
    ld b, l                                       ; $6827: $45
    ld b, [hl]                                    ; $6828: $46
    sbc h                                         ; $6829: $9c
    sbc l                                         ; $682a: $9d
    and d                                         ; $682b: $a2
    nop                                           ; $682c: $00
    ld a, $41                                     ; $682d: $3e $41
    add d                                         ; $682f: $82
    ld h, e                                       ; $6830: $63
    add b                                         ; $6831: $80
    rst $18                                       ; $6832: $df
    nop                                           ; $6833: $00
    ret z                                         ; $6834: $c8

    dec a                                         ; $6835: $3d
    ld h, c                                       ; $6836: $61
    ld b, c                                       ; $6837: $41
    ld h, d                                       ; $6838: $62
    nop                                           ; $6839: $00
    add $80                                       ; $683a: $c6 $80
    rst $18                                       ; $683c: $df
    ld hl, sp+$00                                 ; $683d: $f8 $00
    ld b, d                                       ; $683f: $42
    ld a, [hl]                                    ; $6840: $7e
    ld h, d                                       ; $6841: $62
    inc bc                                        ; $6842: $03
    ld b, b                                       ; $6843: $40
    ld b, l                                       ; $6844: $45
    xor a                                         ; $6845: $af
    ld b, c                                       ; $6846: $41
    ld b, e                                       ; $6847: $43
    ld b, e                                       ; $6848: $43
    add e                                         ; $6849: $83
    ld b, c                                       ; $684a: $41
    ld b, e                                       ; $684b: $43
    inc bc                                        ; $684c: $03
    ld h, c                                       ; $684d: $61
    add d                                         ; $684e: $82
    add d                                         ; $684f: $82
    nop                                           ; $6850: $00
    cp a                                          ; $6851: $bf
    dec a                                         ; $6852: $3d
    inc hl                                        ; $6853: $23
    ld a, [hl]                                    ; $6854: $7e
    add h                                         ; $6855: $84
    ld b, l                                       ; $6856: $45
    ld l, a                                       ; $6857: $6f
    ld [hl], $3b                                  ; $6858: $36 $3b
    dec [hl]                                      ; $685a: $35
    dec sp                                        ; $685b: $3b
    db $fd                                        ; $685c: $fd
    ldh [$36], a                                  ; $685d: $e0 $36
    ld b, l                                       ; $685f: $45
    ld b, b                                       ; $6860: $40
    ld b, b                                       ; $6861: $40
    ld hl, sp+$00                                 ; $6862: $f8 $00
    cp a                                          ; $6864: $bf
    nop                                           ; $6865: $00
    ld b, a                                       ; $6866: $47
    ld a, [hl]                                    ; $6867: $7e
    add d                                         ; $6868: $82
    and c                                         ; $6869: $a1
    ld b, [hl]                                    ; $686a: $46
    ld b, h                                       ; $686b: $44
    inc a                                         ; $686c: $3c
    and h                                         ; $686d: $a4
    dec l                                         ; $686e: $2d
    ld h, h                                       ; $686f: $64
    rst $38                                       ; $6870: $ff
    ldh [$a5], a                                  ; $6871: $e0 $a5
    inc a                                         ; $6873: $3c
    ld a, a                                       ; $6874: $7f
    ld h, b                                       ; $6875: $60
    sbc [hl]                                      ; $6876: $9e
    nop                                           ; $6877: $00
    cp a                                          ; $6878: $bf
    nop                                           ; $6879: $00
    xor h                                         ; $687a: $ac
    rst $38                                       ; $687b: $ff
    sbc [hl]                                      ; $687c: $9e
    ld b, [hl]                                    ; $687d: $46
    ld b, d                                       ; $687e: $42
    dec [hl]                                      ; $687f: $35
    ld l, c                                       ; $6880: $69
    and e                                         ; $6881: $a3
    dec [hl]                                      ; $6882: $35
    dec [hl]                                      ; $6883: $35
    rrca                                          ; $6884: $0f
    and e                                         ; $6885: $a3
    ld l, d                                       ; $6886: $6a
    dec [hl]                                      ; $6887: $35
    ld b, d                                       ; $6888: $42
    inc a                                         ; $6889: $3c
    ld [hl+], a                                   ; $688a: $22
    nop                                           ; $688b: $00
    cp a                                          ; $688c: $bf
    nop                                           ; $688d: $00
    ld b, l                                       ; $688e: $45
    ld a, [hl]                                    ; $688f: $7e
    ld h, e                                       ; $6890: $63
    dec b                                         ; $6891: $05
    xor [hl]                                      ; $6892: $ae
    ret nz                                        ; $6893: $c0

    ldh [$35], a                                  ; $6894: $e0 $35
    rst $38                                       ; $6896: $ff
    ldh [$c0], a                                  ; $6897: $e0 $c0
    ldh [rP1], a                                  ; $6899: $e0 $00
    db $e4                                        ; $689b: $e4
    nop                                           ; $689c: $00
    cp a                                          ; $689d: $bf
    nop                                           ; $689e: $00
    and a                                         ; $689f: $a7
    db $dd                                        ; $68a0: $dd
    sbc [hl]                                      ; $68a1: $9e
    ld b, l                                       ; $68a2: $45
    jr nz, jr_062_68e1                            ; $68a3: $20 $3c

    ld l, e                                       ; $68a5: $6b
    ld [hl], c                                    ; $68a6: $71
    rst $38                                       ; $68a7: $ff
    ldh [$6d], a                                  ; $68a8: $e0 $6d
    inc a                                         ; $68aa: $3c
    inc sp                                        ; $68ab: $33
    xor [hl]                                      ; $68ac: $ae
    and c                                         ; $68ad: $a1

Jump_062_68ae:
    nop                                           ; $68ae: $00
    cp a                                          ; $68af: $bf
    nop                                           ; $68b0: $00
    xor e                                         ; $68b1: $ab
    ret nc                                        ; $68b2: $d0

    pop de                                        ; $68b3: $d1
    ld b, b                                       ; $68b4: $40
    ld hl, $c5c0                                  ; $68b5: $21 $c0 $c5
    add e                                         ; $68b8: $83
    xor a                                         ; $68b9: $af
    sbc [hl]                                      ; $68ba: $9e
    nop                                           ; $68bb: $00
    cp a                                          ; $68bc: $bf
    nop                                           ; $68bd: $00
    xor e                                         ; $68be: $ab
    inc b                                         ; $68bf: $04
    and b                                         ; $68c0: $a0
    ld b, h                                       ; $68c1: $44
    nop                                           ; $68c2: $00
    jp nz, Jump_062_4320                          ; $68c3: $c2 $20 $43

    rrca                                          ; $68c6: $0f
    ld b, e                                       ; $68c7: $43
    xor [hl]                                      ; $68c8: $ae
    ld b, e                                       ; $68c9: $43
    ld b, l                                       ; $68ca: $45
    add d                                         ; $68cb: $82
    rst $00                                       ; $68cc: $c7
    nop                                           ; $68cd: $00
    cp a                                          ; $68ce: $bf
    nop                                           ; $68cf: $00
    and e                                         ; $68d0: $a3
    add d                                         ; $68d1: $82
    add c                                         ; $68d2: $81
    nop                                           ; $68d3: $00
    pop bc                                        ; $68d4: $c1
    ld h, e                                       ; $68d5: $63
    add b                                         ; $68d6: $80
    nop                                           ; $68d7: $00
    add d                                         ; $68d8: $82
    ld h, [hl]                                    ; $68d9: $66
    nop                                           ; $68da: $00
    cp a                                          ; $68db: $bf
    nop                                           ; $68dc: $00
    xor e                                         ; $68dd: $ab
    inc a                                         ; $68de: $3c
    ld h, e                                       ; $68df: $63
    add d                                         ; $68e0: $82

jr_062_68e1:
    ld h, a                                       ; $68e1: $67
    nop                                           ; $68e2: $00
    cp a                                          ; $68e3: $bf
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    and l                                         ; $68e6: $a5
    db $fc                                        ; $68e7: $fc
    ld b, l                                       ; $68e8: $45
    add b                                         ; $68e9: $80
    ld h, c                                       ; $68ea: $61
    add d                                         ; $68eb: $82
    ld h, l                                       ; $68ec: $65
    nop                                           ; $68ed: $00
    cp a                                          ; $68ee: $bf
    nop                                           ; $68ef: $00
    and a                                         ; $68f0: $a7
    ld a, [hl]                                    ; $68f1: $7e
    rst $20                                       ; $68f2: $e7
    add d                                         ; $68f3: $82
    adc d                                         ; $68f4: $8a
    nop                                           ; $68f5: $00
    add b                                         ; $68f6: $80
    rst $18                                       ; $68f7: $df
    nop                                           ; $68f8: $00
    and h                                         ; $68f9: $a4
    db $fc                                        ; $68fa: $fc
    ld c, d                                       ; $68fb: $4a
    add d                                         ; $68fc: $82
    ld h, h                                       ; $68fd: $64
    add [hl]                                      ; $68fe: $86
    dec c                                         ; $68ff: $0d
    nop                                           ; $6900: $00
    cp e                                          ; $6901: $bb
    ld a, [hl]                                    ; $6902: $7e
    ld l, l                                       ; $6903: $6d
    add [hl]                                      ; $6904: $86
    rst $08                                       ; $6905: $cf
    nop                                           ; $6906: $00
    add b                                         ; $6907: $80
    ld [hl], l                                    ; $6908: $75
    ld a, [hl]                                    ; $6909: $7e
    ld b, c                                       ; $690a: $41
    ld a, d                                       ; $690b: $7a
    ld b, l                                       ; $690c: $45
    db $fc                                        ; $690d: $fc
    rst $20                                       ; $690e: $e7
    add [hl]                                      ; $690f: $86
    rst $08                                       ; $6910: $cf
    nop                                           ; $6911: $00
    ld d, h                                       ; $6912: $54
    db $f4                                        ; $6913: $f4
    ld h, $f8                                     ; $6914: $26 $f8
    ld b, l                                       ; $6916: $45
    nop                                           ; $6917: $00
    add [hl]                                      ; $6918: $86
    push de                                       ; $6919: $d5
    nop                                           ; $691a: $00
    ld d, e                                       ; $691b: $53
    or c                                          ; $691c: $b1
    ld b, a                                       ; $691d: $47
    ld a, d                                       ; $691e: $7a
    db $e3                                        ; $691f: $e3
    ldh a, [rNR44]                                ; $6920: $f0 $23
    add [hl]                                      ; $6922: $86
    pop de                                        ; $6923: $d1
    add b                                         ; $6924: $80
    ld [hl], d                                    ; $6925: $72
    db $f4                                        ; $6926: $f4
    ld l, $00                                     ; $6927: $2e $00
    add [hl]                                      ; $6929: $86
    ld [hl], a                                    ; $692a: $77
    add b                                         ; $692b: $80
    dec d                                         ; $692c: $15
    ld l, [hl]                                    ; $692d: $6e
    ld de, $f7dc                                  ; $692e: $11 $dc $f7
    ld b, e                                       ; $6931: $43
    db $f4                                        ; $6932: $f4
    ld a, [$00ff]                                 ; $6933: $fa $ff $00
    ld d, [hl]                                    ; $6936: $56
    ld a, [$00ff]                                 ; $6937: $fa $ff $00
    add b                                         ; $693a: $80
    rst $18                                       ; $693b: $df
    ld a, [$80ff]                                 ; $693c: $fa $ff $80
    rst $18                                       ; $693f: $df
    ld a, [$80ff]                                 ; $6940: $fa $ff $80
    call c, $fffa                                 ; $6943: $dc $fa $ff
    add b                                         ; $6946: $80
    rst $18                                       ; $6947: $df
    ld a, [$00fe]                                 ; $6948: $fa $fe $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    pop bc                                        ; $694d: $c1
    nop                                           ; $694e: $00
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    ld bc, $fe80                                  ; $695b: $01 $80 $fe
    ldh [rIE], a                                  ; $695e: $e0 $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    add sp, $00                                   ; $6964: $e8 $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    ld [bc], a                                    ; $6968: $02
    nop                                           ; $6969: $00
    rra                                           ; $696a: $1f
    ld de, $0102                                  ; $696b: $11 $02 $01
    ld hl, $0211                                  ; $696e: $21 $11 $02
    ld [bc], a                                    ; $6971: $02
    dec de                                        ; $6972: $1b
    ld [de], a                                    ; $6973: $12
    ld [bc], a                                    ; $6974: $02
    inc bc                                        ; $6975: $03
    jr nz, @+$14                                  ; $6976: $20 $12

    ld [bc], a                                    ; $6978: $02
    inc b                                         ; $6979: $04
    dec h                                         ; $697a: $25
    ld [de], a                                    ; $697b: $12
    ld [bc], a                                    ; $697c: $02
    dec b                                         ; $697d: $05
    inc e                                         ; $697e: $1c
    inc de                                        ; $697f: $13
    ld [bc], a                                    ; $6980: $02
    ld b, $1e                                     ; $6981: $06 $1e
    inc de                                        ; $6983: $13
    ld [bc], a                                    ; $6984: $02
    rlca                                          ; $6985: $07
    ld h, $13                                     ; $6986: $26 $13
    ld [bc], a                                    ; $6988: $02
    ld [$141a], sp                                ; $6989: $08 $1a $14
    ld [bc], a                                    ; $698c: $02
    add hl, bc                                    ; $698d: $09
    rra                                           ; $698e: $1f
    inc d                                         ; $698f: $14
    ld [bc], a                                    ; $6990: $02
    ld a, [bc]                                    ; $6991: $0a
    inc h                                         ; $6992: $24
    inc d                                         ; $6993: $14
    ld [bc], a                                    ; $6994: $02
    dec bc                                        ; $6995: $0b
    add hl, de                                    ; $6996: $19
    dec d                                         ; $6997: $15
    ld [bc], a                                    ; $6998: $02
    inc c                                         ; $6999: $0c
    ld hl, $0215                                  ; $699a: $21 $15 $02
    dec c                                         ; $699d: $0d
    jr z, jr_062_69b5                             ; $699e: $28 $15

    ld [bc], a                                    ; $69a0: $02
    ld c, $1b                                     ; $69a1: $0e $1b
    ld d, $02                                     ; $69a3: $16 $02
    rrca                                          ; $69a5: $0f
    dec h                                         ; $69a6: $25
    ld d, $02                                     ; $69a7: $16 $02
    db $10                                        ; $69a9: $10
    daa                                           ; $69aa: $27
    ld d, $02                                     ; $69ab: $16 $02
    ld de, $1718                                  ; $69ad: $11 $18 $17
    ld [bc], a                                    ; $69b0: $02
    ld [de], a                                    ; $69b1: $12
    dec e                                         ; $69b2: $1d
    rla                                           ; $69b3: $17
    ld [bc], a                                    ; $69b4: $02

jr_062_69b5:
    inc de                                        ; $69b5: $13
    inc h                                         ; $69b6: $24
    rla                                           ; $69b7: $17
    ld [bc], a                                    ; $69b8: $02
    inc d                                         ; $69b9: $14
    rla                                           ; $69ba: $17
    jr jr_062_69bf                                ; $69bb: $18 $02

    dec d                                         ; $69bd: $15
    add hl, de                                    ; $69be: $19

jr_062_69bf:
    jr jr_062_69c3                                ; $69bf: $18 $02

    ld d, $26                                     ; $69c1: $16 $26

jr_062_69c3:
    jr @+$04                                      ; $69c3: $18 $02

    rla                                           ; $69c5: $17
    jr jr_062_69e1                                ; $69c6: $18 $19

    ld [bc], a                                    ; $69c8: $02
    jr jr_062_69f1                                ; $69c9: $18 $26

    ld a, [de]                                    ; $69cb: $1a
    ld [bc], a                                    ; $69cc: $02
    add hl, de                                    ; $69cd: $19
    dec e                                         ; $69ce: $1d
    dec de                                        ; $69cf: $1b
    ld [bc], a                                    ; $69d0: $02
    ld a, [de]                                    ; $69d1: $1a
    ld [hl+], a                                   ; $69d2: $22
    dec de                                        ; $69d3: $1b
    ld [bc], a                                    ; $69d4: $02
    dec de                                        ; $69d5: $1b
    dec de                                        ; $69d6: $1b
    inc e                                         ; $69d7: $1c
    ld [bc], a                                    ; $69d8: $02
    inc e                                         ; $69d9: $1c
    inc hl                                        ; $69da: $23
    inc e                                         ; $69db: $1c
    ld [bc], a                                    ; $69dc: $02

jr_062_69dd:
    dec e                                         ; $69dd: $1d
    inc e                                         ; $69de: $1c
    dec e                                         ; $69df: $1d
    ld [bc], a                                    ; $69e0: $02

jr_062_69e1:
    ld e, $21                                     ; $69e1: $1e $21
    dec e                                         ; $69e3: $1d
    ld [bc], a                                    ; $69e4: $02
    rra                                           ; $69e5: $1f
    dec e                                         ; $69e6: $1d
    daa                                           ; $69e7: $27
    ld [bc], a                                    ; $69e8: $02
    jr nz, jr_062_6a0e                            ; $69e9: $20 $23

    daa                                           ; $69eb: $27
    ld [bc], a                                    ; $69ec: $02
    ld hl, $2925                                  ; $69ed: $21 $25 $29
    ld [bc], a                                    ; $69f0: $02

jr_062_69f1:
    ld [hl+], a                                   ; $69f1: $22
    ld a, [de]                                    ; $69f2: $1a
    inc l                                         ; $69f3: $2c
    ld [bc], a                                    ; $69f4: $02
    inc hl                                        ; $69f5: $23
    dec de                                        ; $69f6: $1b
    dec l                                         ; $69f7: $2d
    ld [bc], a                                    ; $69f8: $02
    inc h                                         ; $69f9: $24
    inc h                                         ; $69fa: $24
    dec l                                         ; $69fb: $2d
    ld [bc], a                                    ; $69fc: $02
    dec h                                         ; $69fd: $25
    ld hl, $022f                                  ; $69fe: $21 $2f $02
    ld h, $20                                     ; $6a01: $26 $20
    jr nc, @+$01                                  ; $6a03: $30 $ff

    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rrca                                          ; $6a07: $0f
    ld l, d                                       ; $6a08: $6a
    adc d                                         ; $6a09: $8a
    ld l, l                                       ; $6a0a: $6d
    db $e4                                        ; $6a0b: $e4
    ld [hl], c                                    ; $6a0c: $71
    rst $38                                       ; $6a0d: $ff

jr_062_6a0e:
    ld [hl], c                                    ; $6a0e: $71
    cp a                                          ; $6a0f: $bf
    ld c, $0e                                     ; $6a10: $0e $0e
    dec c                                         ; $6a12: $0d
    dec c                                         ; $6a13: $0d
    dec c                                         ; $6a14: $0d
    ld c, $fa                                     ; $6a15: $0e $fa
    rst $20                                       ; $6a17: $e7
    ld c, $07                                     ; $6a18: $0e $07
    ld c, $4d                                     ; $6a1a: $0e $4d
    ld c, l                                       ; $6a1c: $4d
    ld hl, sp-$1d                                 ; $6a1d: $f8 $e3
    db $fc                                        ; $6a1f: $fc
    ld a, [c]                                     ; $6a20: $f2
    sub $e8                                       ; $6a21: $d6 $e8
    ret nc                                        ; $6a23: $d0

    push hl                                       ; $6a24: $e5
    cp $ea                                        ; $6a25: $fe $ea
    nop                                           ; $6a27: $00
    call nz, $eee0                                ; $6a28: $c4 $e0 $ee
    push hl                                       ; $6a2b: $e5
    cp h                                          ; $6a2c: $bc
    db $ed                                        ; $6a2d: $ed
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    ret nz                                        ; $6a30: $c0

    pop hl                                        ; $6a31: $e1
    add d                                         ; $6a32: $82
    pop hl                                        ; $6a33: $e1
    ld a, [hl]                                    ; $6a34: $7e
    db $e3                                        ; $6a35: $e3
    cp $ed                                        ; $6a36: $fe $ed
    jr nc, jr_062_69dd                            ; $6a38: $30 $a3

    ld [$ea9a], a                                 ; $6a3a: $ea $9a $ea
    dec a                                         ; $6a3d: $3d
    db $eb                                        ; $6a3e: $eb
    add d                                         ; $6a3f: $82
    push hl                                       ; $6a40: $e5
    dec c                                         ; $6a41: $0d
    dec c                                         ; $6a42: $0d
    or e                                          ; $6a43: $b3
    ldh [$fd], a                                  ; $6a44: $e0 $fd
    push hl                                       ; $6a46: $e5
    pop bc                                        ; $6a47: $c1
    dec l                                         ; $6a48: $2d
    ld d, [hl]                                    ; $6a49: $56
    db $e3                                        ; $6a4a: $e3
    cp b                                          ; $6a4b: $b8
    db $e3                                        ; $6a4c: $e3
    dec c                                         ; $6a4d: $0d
    ld [$f07d], a                                 ; $6a4e: $ea $7d $f0
    add d                                         ; $6a51: $82
    db $e3                                        ; $6a52: $e3
    ld l, l                                       ; $6a53: $6d
    dec c                                         ; $6a54: $0d
    ld b, c                                       ; $6a55: $41
    dec bc                                        ; $6a56: $0b
    rst $38                                       ; $6a57: $ff
    db $e4                                        ; $6a58: $e4
    rst $30                                       ; $6a59: $f7
    ldh [$bf], a                                  ; $6a5a: $e0 $bf
    pop hl                                        ; $6a5c: $e1
    jr c, @+$01                                   ; $6a5d: $38 $ff

    ld l, b                                       ; $6a5f: $68
    jp hl                                         ; $6a60: $e9


    ld l, l                                       ; $6a61: $6d
    xor b                                         ; $6a62: $a8
    ret nz                                        ; $6a63: $c0

    adc h                                         ; $6a64: $8c
    add $e1                                       ; $6a65: $c6 $e1
    ret nz                                        ; $6a67: $c0

    db $e3                                        ; $6a68: $e3
    dec bc                                        ; $6a69: $0b
    dec l                                         ; $6a6a: $2d
    add $f6                                       ; $6a6b: $c6 $f6
    add b                                         ; $6a6d: $80
    res 0, d                                      ; $6a6e: $cb $82
    add $0b                                       ; $6a70: $c6 $0b
    ld b, $fe                                     ; $6a72: $06 $fe
    jp nz, Jump_000_2b2b                          ; $6a74: $c2 $2b $2b

    ld a, e                                       ; $6a77: $7b
    db $e4                                        ; $6a78: $e4
    ret nz                                        ; $6a79: $c0

    pop hl                                        ; $6a7a: $e1
    add sp, -$3a                                  ; $6a7b: $e8 $c6
    add b                                         ; $6a7d: $80
    rst $10                                       ; $6a7e: $d7
    ld [hl], b                                    ; $6a7f: $70
    add $7e                                       ; $6a80: $c6 $7e
    ret nz                                        ; $6a82: $c0

    db $e3                                        ; $6a83: $e3
    dec bc                                        ; $6a84: $0b
    ld c, d                                       ; $6a85: $4a
    ld c, d                                       ; $6a86: $4a
    dec bc                                        ; $6a87: $0b
    ld a, [bc]                                    ; $6a88: $0a
    ld a, [hl+]                                   ; $6a89: $2a
    ccf                                           ; $6a8a: $3f
    pop hl                                        ; $6a8b: $e1
    add sp, -$80                                  ; $6a8c: $e8 $80
    rst $20                                       ; $6a8e: $e7
    dec a                                         ; $6a8f: $3d
    ld a, [$c604]                                 ; $6a90: $fa $04 $c6
    ld l, l                                       ; $6a93: $6d
    add b                                         ; $6a94: $80
    ld [c], a                                     ; $6a95: $e2
    dec hl                                        ; $6a96: $2b
    ld a, [bc]                                    ; $6a97: $0a
    ld a, [bc]                                    ; $6a98: $0a
    rrca                                          ; $6a99: $0f
    dec bc                                        ; $6a9a: $0b
    ld a, [bc]                                    ; $6a9b: $0a
    ld c, d                                       ; $6a9c: $4a
    ld c, d                                       ; $6a9d: $4a
    ret nz                                        ; $6a9e: $c0

    ld [c], a                                     ; $6a9f: $e2
    db $e4                                        ; $6aa0: $e4
    and [hl]                                      ; $6aa1: $a6
    add b                                         ; $6aa2: $80
    db $db                                        ; $6aa3: $db
    inc b                                         ; $6aa4: $04
    call nz, $c9fe                                ; $6aa5: $c4 $fe $c9
    jp nz, Jump_062_6b0d                          ; $6aa8: $c2 $0d $6b

    ld a, [bc]                                    ; $6aab: $0a
    ld a, [hl+]                                   ; $6aac: $2a
    ld l, e                                       ; $6aad: $6b
    dec hl                                        ; $6aae: $2b
    ld c, d                                       ; $6aaf: $4a
    add hl, bc                                    ; $6ab0: $09
    ld a, [bc]                                    ; $6ab1: $0a
    nop                                           ; $6ab2: $00
    db $ed                                        ; $6ab3: $ed
    add b                                         ; $6ab4: $80
    call nc, $860d                                ; $6ab5: $d4 $0d $86
    and [hl]                                      ; $6ab8: $a6
    ret nz                                        ; $6ab9: $c0

    ld [c], a                                     ; $6aba: $e2
    add c                                         ; $6abb: $81
    ret nz                                        ; $6abc: $c0

    ld [bc], a                                    ; $6abd: $02
    pop hl                                        ; $6abe: $e1
    ld b, a                                       ; $6abf: $47
    ld l, e                                       ; $6ac0: $6b
    ld l, e                                       ; $6ac1: $6b
    ld c, e                                       ; $6ac2: $4b
    ret nz                                        ; $6ac3: $c0

    call nz, $df82                                ; $6ac4: $c4 $82 $df
    inc b                                         ; $6ac7: $04
    add $6d                                       ; $6ac8: $c6 $6d
    adc d                                         ; $6aca: $8a
    jp $c236                                      ; $6acb: $c3 $36 $c2


    ret nz                                        ; $6ace: $c0

    ld c, e                                       ; $6acf: $4b
    ld c, e                                       ; $6ad0: $4b
    ld a, d                                       ; $6ad1: $7a
    jp nz, $2d4d                                  ; $6ad2: $c2 $4d $2d

    add b                                         ; $6ad5: $80
    sbc $86                                       ; $6ad6: $de $86
    xor b                                         ; $6ad8: $a8
    jr nz, @+$06                                  ; $6ad9: $20 $04

    ret nz                                        ; $6adb: $c0

    ld b, d                                       ; $6adc: $42
    ret nz                                        ; $6add: $c0

    jp nz, $fee1                                  ; $6ade: $c2 $e1 $fe

    ldh [rP1], a                                  ; $6ae1: $e0 $00
    pop bc                                        ; $6ae3: $c1
    dec c                                         ; $6ae4: $0d
    cp $a1                                        ; $6ae5: $fe $a1
    db $e4                                        ; $6ae7: $e4
    add c                                         ; $6ae8: $81
    ld d, b                                       ; $6ae9: $50
    add b                                         ; $6aea: $80
    sub $46                                       ; $6aeb: $d6 $46
    and d                                         ; $6aed: $a2
    add d                                         ; $6aee: $82
    push hl                                       ; $6aef: $e5
    dec b                                         ; $6af0: $05
    jp nz, $842b                                  ; $6af1: $c2 $2b $84

    ldh [rOCPD], a                                ; $6af4: $e0 $6b
    add c                                         ; $6af6: $81
    ldh [rP1], a                                  ; $6af7: $e0 $00
    cp l                                          ; $6af9: $bd
    and h                                         ; $6afa: $a4
    cp $a3                                        ; $6afb: $fe $a3
    adc e                                         ; $6afd: $8b
    or h                                          ; $6afe: $b4
    ld b, $a2                                     ; $6aff: $06 $a2
    add [hl]                                      ; $6b01: $86
    and [hl]                                      ; $6b02: $a6
    ld b, h                                       ; $6b03: $44
    push hl                                       ; $6b04: $e5
    ld b, e                                       ; $6b05: $43
    pop hl                                        ; $6b06: $e1
    cp a                                          ; $6b07: $bf
    and l                                         ; $6b08: $a5
    ld bc, $7e0d                                  ; $6b09: $01 $0d $7e
    and l                                         ; $6b0c: $a5

Jump_062_6b0d:
    add b                                         ; $6b0d: $80
    rst $10                                       ; $6b0e: $d7
    add h                                         ; $6b0f: $84
    ret z                                         ; $6b10: $c8

    add $c2                                       ; $6b11: $c6 $c2
    ld b, c                                       ; $6b13: $41
    pop hl                                        ; $6b14: $e1
    ld a, c                                       ; $6b15: $79
    jp nz, $c171                                  ; $6b16: $c2 $71 $c1

    nop                                           ; $6b19: $00
    ret nz                                        ; $6b1a: $c0

    ldh [$50], a                                  ; $6b1b: $e0 $50
    rst $10                                       ; $6b1d: $d7

jr_062_6b1e:
    inc b                                         ; $6b1e: $04
    xor e                                         ; $6b1f: $ab
    ret nz                                        ; $6b20: $c0

    and $43                                       ; $6b21: $e6 $43
    pop hl                                        ; $6b23: $e1
    ld [hl], a                                    ; $6b24: $77
    add h                                         ; $6b25: $84
    ld a, [hl]                                    ; $6b26: $7e
    and a                                         ; $6b27: $a7
    add d                                         ; $6b28: $82
    rst $18                                       ; $6b29: $df
    nop                                           ; $6b2a: $00
    ld b, $c1                                     ; $6b2b: $06 $c1
    ret nz                                        ; $6b2d: $c0

    db $e3                                        ; $6b2e: $e3
    jp $c081                                      ; $6b2f: $c3 $81 $c0


    db $e4                                        ; $6b32: $e4
    add b                                         ; $6b33: $80
    db $e4                                        ; $6b34: $e4
    nop                                           ; $6b35: $00
    cp b                                          ; $6b36: $b8
    jr nz, jr_062_6b1e                            ; $6b37: $20 $e5

    dec b                                         ; $6b39: $05
    add e                                         ; $6b3a: $83
    ld bc, $074b                                  ; $6b3b: $01 $4b $07
    ret nz                                        ; $6b3e: $c0

    add d                                         ; $6b3f: $82
    and b                                         ; $6b40: $a0
    ld b, d                                       ; $6b41: $42
    pop bc                                        ; $6b42: $c1
    ret nz                                        ; $6b43: $c0

    push hl                                       ; $6b44: $e5
    ldh [$e6], a                                  ; $6b45: $e0 $e6
    add b                                         ; $6b47: $80
    ld [hl], c                                    ; $6b48: $71
    ld [hl-], a                                   ; $6b49: $32
    add [hl]                                      ; $6b4a: $86
    cp $86                                        ; $6b4b: $fe $86
    add d                                         ; $6b4d: $82
    dec c                                         ; $6b4e: $0d
    dec c                                         ; $6b4f: $0d
    ld l, e                                       ; $6b50: $6b
    dec bc                                        ; $6b51: $0b
    ld c, e                                       ; $6b52: $4b
    ld a, [bc]                                    ; $6b53: $0a
    ld a, [hl+]                                   ; $6b54: $2a
    nop                                           ; $6b55: $00
    ret nz                                        ; $6b56: $c0

    ldh [$bf], a                                  ; $6b57: $e0 $bf
    add c                                         ; $6b59: $81
    ld [hl], a                                    ; $6b5a: $77
    add d                                         ; $6b5b: $82
    ld a, [hl]                                    ; $6b5c: $7e
    add l                                         ; $6b5d: $85
    ld a, c                                       ; $6b5e: $79
    ld sp, hl                                     ; $6b5f: $f9
    inc b                                         ; $6b60: $04
    ld h, d                                       ; $6b61: $62
    add $83                                       ; $6b62: $c6 $83
    inc bc                                        ; $6b64: $03
    add b                                         ; $6b65: $80
    pop bc                                        ; $6b66: $c1
    ld a, [bc]                                    ; $6b67: $0a
    ld [bc], a                                    ; $6b68: $02
    and b                                         ; $6b69: $a0
    rst $38                                       ; $6b6a: $ff
    rst $20                                       ; $6b6b: $e7
    ld a, [hl]                                    ; $6b6c: $7e
    add [hl]                                      ; $6b6d: $86
    add b                                         ; $6b6e: $80
    db $dd                                        ; $6b6f: $dd
    sub c                                         ; $6b70: $91
    db $e3                                        ; $6b71: $e3
    dec hl                                        ; $6b72: $2b
    dec bc                                        ; $6b73: $0b
    ld b, $07                                     ; $6b74: $06 $07
    and b                                         ; $6b76: $a0
    ld a, [bc]                                    ; $6b77: $0a
    ld l, e                                       ; $6b78: $6b
    rst $38                                       ; $6b79: $ff
    ld h, [hl]                                    ; $6b7a: $66
    cp $69                                        ; $6b7b: $fe $69
    nop                                           ; $6b7d: $00
    or l                                          ; $6b7e: $b5
    inc b                                         ; $6b7f: $04

Call_062_6b80:
    and e                                         ; $6b80: $a3
    dec b                                         ; $6b81: $05
    and [hl]                                      ; $6b82: $a6
    ld d, a                                       ; $6b83: $57
    dec hl                                        ; $6b84: $2b

jr_062_6b85:
    ld a, [bc]                                    ; $6b85: $0a
    ld l, d                                       ; $6b86: $6a
    ret nz                                        ; $6b87: $c0

    pop hl                                        ; $6b88: $e1
    dec hl                                        ; $6b89: $2b
    ld [hl], h                                    ; $6b8a: $74
    and c                                         ; $6b8b: $a1
    dec bc                                        ; $6b8c: $0b
    xor a                                         ; $6b8d: $af
    ld h, d                                       ; $6b8e: $62
    ld [$df82], sp                                ; $6b8f: $08 $82 $df
    add b                                         ; $6b92: $80
    db $e3                                        ; $6b93: $e3
    push bc                                       ; $6b94: $c5
    add h                                         ; $6b95: $84
    dec hl                                        ; $6b96: $2b
    ld b, b                                       ; $6b97: $40
    ld [c], a                                     ; $6b98: $e2
    cp l                                          ; $6b99: $bd
    ld h, b                                       ; $6b9a: $60
    halt                                          ; $6b9b: $76
    ld h, b                                       ; $6b9c: $60
    ld [hl], b                                    ; $6b9d: $70
    ld h, b                                       ; $6b9e: $60
    inc b                                         ; $6b9f: $04
    nop                                           ; $6ba0: $00
    cp a                                          ; $6ba1: $bf
    add d                                         ; $6ba2: $82
    ld b, d                                       ; $6ba3: $42
    dec l                                         ; $6ba4: $2d
    cp a                                          ; $6ba5: $bf
    and a                                         ; $6ba6: $a7
    add l                                         ; $6ba7: $85
    ldh [$b5], a                                  ; $6ba8: $e0 $b5
    and h                                         ; $6baa: $a4
    nop                                           ; $6bab: $00
    add l                                         ; $6bac: $85
    nop                                           ; $6bad: $00
    cp a                                          ; $6bae: $bf
    ld b, d                                       ; $6baf: $42
    ld b, h                                       ; $6bb0: $44
    add h                                         ; $6bb1: $84
    ld l, e                                       ; $6bb2: $6b
    dec b                                         ; $6bb3: $05
    and $fd                                       ; $6bb4: $e6 $fd
    add d                                         ; $6bb6: $82
    add d                                         ; $6bb7: $82
    add $00                                       ; $6bb8: $c6 $00
    cp a                                          ; $6bba: $bf
    ld c, l                                       ; $6bbb: $4d
    adc b                                         ; $6bbc: $88
    ld b, e                                       ; $6bbd: $43
    jr nc, jr_062_6b85                            ; $6bbe: $30 $c5

    jp $a43b                                      ; $6bc0: $c3 $3b $a4


    nop                                           ; $6bc3: $00
    ld l, c                                       ; $6bc4: $69
    nop                                           ; $6bc5: $00
    cp l                                          ; $6bc6: $bd
    ld c, l                                       ; $6bc7: $4d
    dec l                                         ; $6bc8: $2d
    ld c, l                                       ; $6bc9: $4d
    ld b, d                                       ; $6bca: $42
    add $45                                       ; $6bcb: $c6 $45
    nop                                           ; $6bcd: $00
    cp [hl]                                       ; $6bce: $be
    ld b, e                                       ; $6bcf: $43
    add b                                         ; $6bd0: $80
    rst $20                                       ; $6bd1: $e7
    nop                                           ; $6bd2: $00
    cp a                                          ; $6bd3: $bf
    cp a                                          ; $6bd4: $bf
    ldh [rLY], a                                  ; $6bd5: $e0 $44
    ld b, b                                       ; $6bd7: $40
    ccf                                           ; $6bd8: $3f
    db $e4                                        ; $6bd9: $e4
    or [hl]                                       ; $6bda: $b6
    add e                                         ; $6bdb: $83
    add d                                         ; $6bdc: $82
    call nz, Call_062_7e00                        ; $6bdd: $c4 $00 $7e
    rst $18                                       ; $6be0: $df
    ld a, [hl]                                    ; $6be1: $7e
    push hl                                       ; $6be2: $e5
    jp Jump_000_3f20                              ; $6be3: $c3 $20 $3f


    db $e4                                        ; $6be6: $e4
    cp e                                          ; $6be7: $bb
    add d                                         ; $6be8: $82
    add d                                         ; $6be9: $82
    sub $80                                       ; $6bea: $d6 $80
    ld l, c                                       ; $6bec: $69
    inc b                                         ; $6bed: $04
    jr z, jr_062_6c00                             ; $6bee: $28 $10

    dec a                                         ; $6bf0: $3d
    add a                                         ; $6bf1: $87
    ld a, a                                       ; $6bf2: $7f
    ld h, d                                       ; $6bf3: $62
    inc b                                         ; $6bf4: $04
    jp Jump_000_0166                              ; $6bf5: $c3 $66 $01


    dec l                                         ; $6bf8: $2d
    ld [hl], a                                    ; $6bf9: $77
    inc hl                                        ; $6bfa: $23
    add b                                         ; $6bfb: $80
    ld a, b                                       ; $6bfc: $78
    ld [bc], a                                    ; $6bfd: $02
    ld b, e                                       ; $6bfe: $43
    nop                                           ; $6bff: $00

jr_062_6c00:
    db $fd                                        ; $6c00: $fd
    ld h, [hl]                                    ; $6c01: $66
    jp nz, Jump_000_0241                          ; $6c02: $c2 $41 $02

    inc h                                         ; $6c05: $24
    ld d, h                                       ; $6c06: $54
    inc bc                                        ; $6c07: $03
    rst $30                                       ; $6c08: $f7
    ld d, h                                       ; $6c09: $54
    add d                                         ; $6c0a: $82
    ld h, h                                       ; $6c0b: $64
    add d                                         ; $6c0c: $82
    dec h                                         ; $6c0d: $25
    ld b, b                                       ; $6c0e: $40
    ld h, d                                       ; $6c0f: $62
    add b                                         ; $6c10: $80
    pop bc                                        ; $6c11: $c1
    db $e4                                        ; $6c12: $e4
    ret nz                                        ; $6c13: $c0

    db $e3                                        ; $6c14: $e3
    add d                                         ; $6c15: $82
    db $e3                                        ; $6c16: $e3
    ret nz                                        ; $6c17: $c0

    db $ed                                        ; $6c18: $ed
    add [hl]                                      ; $6c19: $86
    rrca                                          ; $6c1a: $0f
    add d                                         ; $6c1b: $82
    dec h                                         ; $6c1c: $25
    ccf                                           ; $6c1d: $3f
    ld h, [hl]                                    ; $6c1e: $66
    dec c                                         ; $6c1f: $0d
    ld bc, $840b                                  ; $6c20: $01 $0b $84
    ld c, l                                       ; $6c23: $4d
    nop                                           ; $6c24: $00
    cp b                                          ; $6c25: $b8
    nop                                           ; $6c26: $00
    push hl                                       ; $6c27: $e5
    adc b                                         ; $6c28: $88
    and h                                         ; $6c29: $a4
    ld b, d                                       ; $6c2a: $42
    add e                                         ; $6c2b: $83
    ld b, h                                       ; $6c2c: $44
    ld b, b                                       ; $6c2d: $40
    dec bc                                        ; $6c2e: $0b
    pop hl                                        ; $6c2f: $e1
    inc bc                                        ; $6c30: $03
    ld l, l                                       ; $6c31: $6d
    ld l, l                                       ; $6c32: $6d
    add h                                         ; $6c33: $84
    rst $18                                       ; $6c34: $df
    xor [hl]                                      ; $6c35: $ae
    inc b                                         ; $6c36: $04
    ld b, l                                       ; $6c37: $45
    dec b                                         ; $6c38: $05
    inc bc                                        ; $6c39: $03
    call nz, Call_000_3cd2                        ; $6c3a: $c4 $d2 $3c
    add b                                         ; $6c3d: $80
    ld h, h                                       ; $6c3e: $64
    nop                                           ; $6c3f: $00
    sbc [hl]                                      ; $6c40: $9e
    ld [$ebc0], sp                                ; $6c41: $08 $c0 $eb
    inc b                                         ; $6c44: $04
    ld b, h                                       ; $6c45: $44
    sbc l                                         ; $6c46: $9d
    ld b, e                                       ; $6c47: $43
    add b                                         ; $6c48: $80
    ld a, l                                       ; $6c49: $7d
    jp nz, $ff03                                  ; $6c4a: $c2 $03 $ff

    db $eb                                        ; $6c4d: $eb
    inc b                                         ; $6c4e: $04
    ld [hl], l                                    ; $6c4f: $75
    nop                                           ; $6c50: $00
    ld a, c                                       ; $6c51: $79
    db $eb                                        ; $6c52: $eb
    add d                                         ; $6c53: $82
    add $c1                                       ; $6c54: $c6 $c1
    db $e3                                        ; $6c56: $e3
    rst $38                                       ; $6c57: $ff
    add h                                         ; $6c58: $84

jr_062_6c59:
    ld [hl], l                                    ; $6c59: $75
    ld h, c                                       ; $6c5a: $61
    inc b                                         ; $6c5b: $04
    ld b, h                                       ; $6c5c: $44
    inc d                                         ; $6c5d: $14
    ld [hl-], a                                   ; $6c5e: $32
    add b                                         ; $6c5f: $80
    rst $08                                       ; $6c60: $cf
    nop                                           ; $6c61: $00
    cp [hl]                                       ; $6c62: $be
    ld h, h                                       ; $6c63: $64
    ret z                                         ; $6c64: $c8

    ld [bc], a                                    ; $6c65: $02
    jp $8463                                      ; $6c66: $c3 $63 $84


    ld b, l                                       ; $6c69: $45
    jp Jump_000_00ac                              ; $6c6a: $c3 $ac $00


    or h                                          ; $6c6d: $b4
    jp nz, Jump_062_7fc5                          ; $6c6e: $c2 $c5 $7f

    call nz, $f400                                ; $6c71: $c4 $00 $f4
    ld b, b                                       ; $6c74: $40
    jp nz, Jump_000_0001                          ; $6c75: $c2 $01 $00

    push bc                                       ; $6c78: $c5
    scf                                           ; $6c79: $37
    rst $38                                       ; $6c7a: $ff
    ld [bc], a                                    ; $6c7b: $02
    pop hl                                        ; $6c7c: $e1
    ld a, $25                                     ; $6c7d: $3e $25
    ld a, d                                       ; $6c7f: $7a
    add h                                         ; $6c80: $84
    add d                                         ; $6c81: $82
    inc b                                         ; $6c82: $04
    nop                                           ; $6c83: $00
    ret nz                                        ; $6c84: $c0

    pop af                                        ; $6c85: $f1
    nop                                           ; $6c86: $00
    ld c, a                                       ; $6c87: $4f
    dec c                                         ; $6c88: $0d
    dec h                                         ; $6c89: $25
    ret nz                                        ; $6c8a: $c0

    jp hl                                         ; $6c8b: $e9


    inc b                                         ; $6c8c: $04
    daa                                           ; $6c8d: $27
    nop                                           ; $6c8e: $00
    ld e, [hl]                                    ; $6c8f: $5e
    ld bc, $4080                                  ; $6c90: $01 $80 $40
    rst $20                                       ; $6c93: $e7

jr_062_6c94:
    jr nz, jr_062_6c94                            ; $6c94: $20 $fe

    inc bc                                        ; $6c96: $03
    cp $a3                                        ; $6c97: $fe $a3
    ld a, e                                       ; $6c99: $7b
    jp c, Jump_062_4700                           ; $6c9a: $da $00 $47

    ret nz                                        ; $6c9d: $c0

    push hl                                       ; $6c9e: $e5
    dec hl                                        ; $6c9f: $2b
    cp [hl]                                       ; $6ca0: $be
    ld h, b                                       ; $6ca1: $60
    ld b, c                                       ; $6ca2: $41
    ld [bc], a                                    ; $6ca3: $02
    nop                                           ; $6ca4: $00
    ret nz                                        ; $6ca5: $c0

    db $e3                                        ; $6ca6: $e3
    inc b                                         ; $6ca7: $04
    ld h, b                                       ; $6ca8: $60
    add b                                         ; $6ca9: $80
    rst $18                                       ; $6caa: $df
    add b                                         ; $6cab: $80
    jp hl                                         ; $6cac: $e9


    add c                                         ; $6cad: $81
    push hl                                       ; $6cae: $e5
    ld a, [hl]                                    ; $6caf: $7e
    and [hl]                                      ; $6cb0: $a6
    jp nz, $8081                                  ; $6cb1: $c2 $81 $80

    reti                                          ; $6cb4: $d9


    nop                                           ; $6cb5: $00
    jr nz, jr_062_6c59                            ; $6cb6: $20 $a1

    ld [hl+], a                                   ; $6cb8: $22
    add b                                         ; $6cb9: $80
    ld b, b                                       ; $6cba: $40
    pop hl                                        ; $6cbb: $e1
    pop bc                                        ; $6cbc: $c1
    call nz, Call_062_653c                        ; $6cbd: $c4 $3c $65
    ld b, d                                       ; $6cc0: $42
    ld b, e                                       ; $6cc1: $43
    add d                                         ; $6cc2: $82
    rst $18                                       ; $6cc3: $df
    add d                                         ; $6cc4: $82
    ld h, [hl]                                    ; $6cc5: $66
    nop                                           ; $6cc6: $00
    ld b, b                                       ; $6cc7: $40
    ld hl, $407e                                  ; $6cc8: $21 $7e $40
    add l                                         ; $6ccb: $85
    ld b, d                                       ; $6ccc: $42
    add b                                         ; $6ccd: $80
    cp h                                          ; $6cce: $bc
    nop                                           ; $6ccf: $00
    ld c, l                                       ; $6cd0: $4d
    add d                                         ; $6cd1: $82
    add h                                         ; $6cd2: $84
    ld a, [hl]                                    ; $6cd3: $7e
    ld b, d                                       ; $6cd4: $42
    ld b, c                                       ; $6cd5: $41
    and $00                                       ; $6cd6: $e6 $00
    nop                                           ; $6cd8: $00
    cp a                                          ; $6cd9: $bf
    add b                                         ; $6cda: $80
    ld l, b                                       ; $6cdb: $68
    add d                                         ; $6cdc: $82
    add l                                         ; $6cdd: $85
    ret nz                                        ; $6cde: $c0

    db $e4                                        ; $6cdf: $e4
    add h                                         ; $6ce0: $84
    ld [$f842], sp                                ; $6ce1: $08 $42 $f8
    nop                                           ; $6ce4: $00
    ld b, h                                       ; $6ce5: $44
    ld a, [hl]                                    ; $6ce6: $7e
    inc bc                                        ; $6ce7: $03
    nop                                           ; $6ce8: $00
    add e                                         ; $6ce9: $83
    jp $a47b                                      ; $6cea: $c3 $7b $a4


    ld b, e                                       ; $6ced: $43
    inc hl                                        ; $6cee: $23
    nop                                           ; $6cef: $00
    pop hl                                        ; $6cf0: $e1
    add b                                         ; $6cf1: $80
    rst $18                                       ; $6cf2: $df
    ld [bc], a                                    ; $6cf3: $02
    ld h, [hl]                                    ; $6cf4: $66
    ld [bc], a                                    ; $6cf5: $02
    ld c, d                                       ; $6cf6: $4a
    nop                                           ; $6cf7: $00
    ld h, [hl]                                    ; $6cf8: $66
    nop                                           ; $6cf9: $00
    ld b, e                                       ; $6cfa: $43
    inc l                                         ; $6cfb: $2c
    nop                                           ; $6cfc: $00
    ld c, [hl]                                    ; $6cfd: $4e
    ld a, [hl]                                    ; $6cfe: $7e
    rlca                                          ; $6cff: $07
    ret nz                                        ; $6d00: $c0

    rst $28                                       ; $6d01: $ef
    ldh [rLYC], a                                 ; $6d02: $e0 $45
    or h                                          ; $6d04: $b4
    ld a, e                                       ; $6d05: $7b
    ld [hl], l                                    ; $6d06: $75
    ld b, d                                       ; $6d07: $42
    ld a, a                                       ; $6d08: $7f
    jr nz, jr_062_6d0b                            ; $6d09: $20 $00

jr_062_6d0b:
    ret z                                         ; $6d0b: $c8

    add e                                         ; $6d0c: $83
    ld [hl], l                                    ; $6d0d: $75
    and h                                         ; $6d0e: $a4

Jump_062_6d0f:
    ld a, [bc]                                    ; $6d0f: $0a
    and [hl]                                      ; $6d10: $a6
    ret nz                                        ; $6d11: $c0

    ld sp, $cbb0                                  ; $6d12: $31 $b0 $cb
    db $fc                                        ; $6d15: $fc
    inc bc                                        ; $6d16: $03
    ld b, d                                       ; $6d17: $42
    daa                                           ; $6d18: $27
    ld b, b                                       ; $6d19: $40
    ld h, l                                       ; $6d1a: $65
    nop                                           ; $6d1b: $00
    inc b                                         ; $6d1c: $04
    daa                                           ; $6d1d: $27
    add b                                         ; $6d1e: $80
    call nc, $a43a                                ; $6d1f: $d4 $3a $a4
    ld a, [hl]                                    ; $6d22: $7e
    dec b                                         ; $6d23: $05
    nop                                           ; $6d24: $00
    db $eb                                        ; $6d25: $eb
    db $e3                                        ; $6d26: $e3
    add sp, -$40                                  ; $6d27: $e8 $c0
    cp a                                          ; $6d29: $bf
    add c                                         ; $6d2a: $81
    ld [hl+], a                                   ; $6d2b: $22
    ld [hl], a                                    ; $6d2c: $77
    dec c                                         ; $6d2d: $0d
    ld c, e                                       ; $6d2e: $4b
    ld l, e                                       ; $6d2f: $6b
    dec a                                         ; $6d30: $3d
    ld bc, $6b6b                                  ; $6d31: $01 $6b $6b
    ld c, e                                       ; $6d34: $4b
    pop bc                                        ; $6d35: $c1
    ld h, d                                       ; $6d36: $62
    ret nc                                        ; $6d37: $d0

    add d                                         ; $6d38: $82
    add [hl]                                      ; $6d39: $86
    add b                                         ; $6d3a: $80
    reti                                          ; $6d3b: $d9


    sbc d                                         ; $6d3c: $9a
    rst $00                                       ; $6d3d: $c7
    call z, Call_062_6b80                         ; $6d3e: $cc $80 $6b
    rst $38                                       ; $6d41: $ff
    db $e3                                        ; $6d42: $e3
    ld c, e                                       ; $6d43: $4b
    dec hl                                        ; $6d44: $2b
    nop                                           ; $6d45: $00
    add d                                         ; $6d46: $82
    add [hl]                                      ; $6d47: $86
    ld b, e                                       ; $6d48: $43
    adc a                                         ; $6d49: $8f
    add b                                         ; $6d4a: $80
    inc c                                         ; $6d4b: $0c
    nop                                           ; $6d4c: $00
    ld h, $3e                                     ; $6d4d: $26 $3e
    ld bc, $6406                                  ; $6d4f: $01 $06 $64
    add e                                         ; $6d52: $83
    inc bc                                        ; $6d53: $03
    nop                                           ; $6d54: $00
    db $e3                                        ; $6d55: $e3
    nop                                           ; $6d56: $00
    cp l                                          ; $6d57: $bd
    cp a                                          ; $6d58: $bf
    di                                            ; $6d59: $f3
    ld b, $fc                                     ; $6d5a: $06 $fc
    ld h, d                                       ; $6d5c: $62
    ld a, b                                       ; $6d5d: $78
    and h                                         ; $6d5e: $a4
    ld b, h                                       ; $6d5f: $44
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    ld e, a                                       ; $6d62: $5f
    or b                                          ; $6d63: $b0
    rlca                                          ; $6d64: $07
    ld a, [hl]                                    ; $6d65: $7e
    db $e3                                        ; $6d66: $e3
    nop                                           ; $6d67: $00
    ld [hl], b                                    ; $6d68: $70
    ld h, e                                       ; $6d69: $63
    db $f4                                        ; $6d6a: $f4
    ld [hl+], a                                   ; $6d6b: $22
    add e                                         ; $6d6c: $83
    ld bc, $6466                                  ; $6d6d: $01 $66 $64
    add b                                         ; $6d70: $80
    sbc $fc                                       ; $6d71: $de $fc
    add a                                         ; $6d73: $87
    or [hl]                                       ; $6d74: $b6
    dec b                                         ; $6d75: $05
    xor [hl]                                      ; $6d76: $ae
    inc b                                         ; $6d77: $04
    nop                                           ; $6d78: $00
    add b                                         ; $6d79: $80
    rst $18                                       ; $6d7a: $df
    ld a, d                                       ; $6d7b: $7a
    db $10                                        ; $6d7c: $10
    cp h                                          ; $6d7d: $bc
    add sp, -$7e                                  ; $6d7e: $e8 $82
    dec h                                         ; $6d80: $25
    add b                                         ; $6d81: $80
    sbc $9b                                       ; $6d82: $de $9b
    ei                                            ; $6d84: $fb
    nop                                           ; $6d85: $00
    ld c, [hl]                                    ; $6d86: $4e
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    cp a                                          ; $6d8a: $bf
    db $dd                                        ; $6d8b: $dd
    sbc $a0                                       ; $6d8c: $de $a0
    and b                                         ; $6d8e: $a0
    and b                                         ; $6d8f: $a0
    call c, $e7fa                                 ; $6d90: $dc $fa $e7
    ret c                                         ; $6d93: $d8

    dec c                                         ; $6d94: $0d
    reti                                          ; $6d95: $d9


    db $fc                                        ; $6d96: $fc
    db $e3                                        ; $6d97: $e3
    jp nc, $fcd3                                  ; $6d98: $d2 $d3 $fc

    rst $28                                       ; $6d9b: $ef
    db $e4                                        ; $6d9c: $e4
    ldh [$d6], a                                  ; $6d9d: $e0 $d6
    add sp, -$36                                  ; $6d9f: $e8 $ca
    db $e3                                        ; $6da1: $e3
    cp a                                          ; $6da2: $bf
    ld [c], a                                     ; $6da3: $e2
    db $e3                                        ; $6da4: $e3
    db $e4                                        ; $6da5: $e4
    rst $18                                       ; $6da6: $df
    ldh [$e1], a                                  ; $6da7: $e0 $e1
    ld a, [$a0e6]                                 ; $6da9: $fa $e6 $a0
    rst $38                                       ; $6dac: $ff
    jp c, $d6db                                   ; $6dad: $da $db $d6

    rst $10                                       ; $6db0: $d7
    jp c, $d0db                                   ; $6db1: $da $db $d0

    pop de                                        ; $6db4: $d1
    rst $28                                       ; $6db5: $ef
    call nc, $a0d5                                ; $6db6: $d4 $d5 $a0
    and b                                         ; $6db9: $a0
    db $fc                                        ; $6dba: $fc
    db $eb                                        ; $6dbb: $eb
    ret nc                                        ; $6dbc: $d0

    pop de                                        ; $6dbd: $d1
    jp c, $dbf9                                   ; $6dbe: $da $f9 $db

    sub $e8                                       ; $6dc1: $d6 $e8
    jp z, $e8e4                                   ; $6dc3: $ca $e4 $e8

    jp hl                                         ; $6dc6: $e9


    ld [$e6e5], a                                 ; $6dc7: $ea $e5 $e6
    ld bc, $fae7                                  ; $6dca: $01 $e7 $fa
    and $73                                       ; $6dcd: $e6 $73
    ldh [$82], a                                  ; $6dcf: $e0 $82
    push hl                                       ; $6dd1: $e5
    cp $ed                                        ; $6dd2: $fe $ed
    ld l, [hl]                                    ; $6dd4: $6e
    ldh [$d6], a                                  ; $6dd5: $e0 $d6
    jp hl                                         ; $6dd7: $e9


    jp z, Jump_062_70e4                           ; $6dd8: $ca $e4 $70

    ld b, e                                       ; $6ddb: $43
    ld [$e237], a                                 ; $6ddc: $ea $37 $e2
    ld a, [hl]                                    ; $6ddf: $7e
    pop hl                                        ; $6de0: $e1
    add d                                         ; $6de1: $82
    pop hl                                        ; $6de2: $e1
    sbc a                                         ; $6de3: $9f
    and d                                         ; $6de4: $a2
    sbc l                                         ; $6de5: $9d
    rst $38                                       ; $6de6: $ff
    rst $20                                       ; $6de7: $e7
    dec c                                         ; $6de8: $0d
    sbc a                                         ; $6de9: $9f
    ld [hl], d                                    ; $6dea: $72
    pop hl                                        ; $6deb: $e1
    sub $d7                                       ; $6dec: $d6 $d7
    xor d                                         ; $6dee: $aa
    pop hl                                        ; $6def: $e1
    dec a                                         ; $6df0: $3d
    db $eb                                        ; $6df1: $eb
    ld [hl], e                                    ; $6df2: $73
    ld [$e33d], a                                 ; $6df3: $ea $3d $e3
    ld a, $fc                                     ; $6df6: $3e $fc
    jp nz, $9fa0                                  ; $6df8: $c2 $a0 $9f

    sbc h                                         ; $6dfb: $9c
    xor [hl]                                      ; $6dfc: $ae
    ld b, [hl]                                    ; $6dfd: $46
    rst $38                                       ; $6dfe: $ff
    db $e4                                        ; $6dff: $e4
    rst $30                                       ; $6e00: $f7
    ldh [$81], a                                  ; $6e01: $e0 $81
    sbc h                                         ; $6e03: $9c
    cp a                                          ; $6e04: $bf
    ldh [$e4], a                                  ; $6e05: $e0 $e4
    jp nz, $edd0                                  ; $6e07: $c2 $d0 $ed

    ld l, l                                       ; $6e0a: $6d
    rst $28                                       ; $6e0b: $ef
    nop                                           ; $6e0c: $00
    db $e3                                        ; $6e0d: $e3
    pop bc                                        ; $6e0e: $c1
    ldh [$af], a                                  ; $6e0f: $e0 $af
    ld l, c                                       ; $6e11: $69
    xor [hl]                                      ; $6e12: $ae
    add $e1                                       ; $6e13: $c6 $e1
    cp e                                          ; $6e15: $bb
    ldh [$af], a                                  ; $6e16: $e0 $af
    or a                                          ; $6e18: $b7
    ldh [$a1], a                                  ; $6e19: $e0 $a1
    and b                                         ; $6e1b: $a0
    nop                                           ; $6e1c: $00
    pop hl                                        ; $6e1d: $e1
    db $e3                                        ; $6e1e: $e3
    sub $d7                                       ; $6e1f: $d6 $d7
    dec a                                         ; $6e21: $3d
    db $ed                                        ; $6e22: $ed
    add b                                         ; $6e23: $80
    call $c582                                    ; $6e24: $cd $82 $c5
    sbc [hl]                                      ; $6e27: $9e
    ld b, [hl]                                    ; $6e28: $46
    xor a                                         ; $6e29: $af
    ld l, $bf                                     ; $6e2a: $2e $bf
    ldh [$af], a                                  ; $6e2c: $e0 $af
    ld b, l                                       ; $6e2e: $45
    ld b, e                                       ; $6e2f: $43
    ld a, e                                       ; $6e30: $7b
    db $e4                                        ; $6e31: $e4
    sbc [hl]                                      ; $6e32: $9e
    ld a, [hl]                                    ; $6e33: $7e
    push bc                                       ; $6e34: $c5
    dec a                                         ; $6e35: $3d
    db $ec                                        ; $6e36: $ec
    db $ec                                        ; $6e37: $ec
    add b                                         ; $6e38: $80
    call $c582                                    ; $6e39: $cd $82 $c5
    sbc [hl]                                      ; $6e3c: $9e
    ld b, [hl]                                    ; $6e3d: $46
    pop bc                                        ; $6e3e: $c1
    pop hl                                        ; $6e3f: $e1
    ld b, [hl]                                    ; $6e40: $46
    ld d, c                                       ; $6e41: $51
    ld d, [hl]                                    ; $6e42: $56
    cpl                                           ; $6e43: $2f
    ld b, l                                       ; $6e44: $45
    ld c, b                                       ; $6e45: $48
    ld c, b                                       ; $6e46: $48
    ld b, l                                       ; $6e47: $45
    ld [hl], $e0                                  ; $6e48: $36 $e0
    sbc [hl]                                      ; $6e4a: $9e
    nop                                           ; $6e4b: $00
    ld [c], a                                     ; $6e4c: $e2
    ld h, d                                       ; $6e4d: $62
    pop bc                                        ; $6e4e: $c1
    ret c                                         ; $6e4f: $d8

    dec a                                         ; $6e50: $3d
    db $eb                                        ; $6e51: $eb
    add b                                         ; $6e52: $80
    call $c404                                    ; $6e53: $cd $04 $c4
    sbc a                                         ; $6e56: $9f
    sbc h                                         ; $6e57: $9c
    add b                                         ; $6e58: $80
    ld [c], a                                     ; $6e59: $e2
    ld b, l                                       ; $6e5a: $45
    ld b, a                                       ; $6e5b: $47
    ld e, a                                       ; $6e5c: $5f
    ld e, b                                       ; $6e5d: $58
    ld b, h                                       ; $6e5e: $44
    ld d, h                                       ; $6e5f: $54
    ld h, c                                       ; $6e60: $61
    ld e, h                                       ; $6e61: $5c
    ccf                                           ; $6e62: $3f
    ldh [$9e], a                                  ; $6e63: $e0 $9e
    ld h, [hl]                                    ; $6e65: $66
    call nz, $e0e8                                ; $6e66: $c4 $e8 $e0
    and b                                         ; $6e69: $a0
    add b                                         ; $6e6a: $80
    ret c                                         ; $6e6b: $d8

    inc b                                         ; $6e6c: $04
    add $9e                                       ; $6e6d: $c6 $9e
    add hl, bc                                    ; $6e6f: $09
    ld [c], a                                     ; $6e70: $e2
    xor a                                         ; $6e71: $af
    ld b, h                                       ; $6e72: $44
    ld e, c                                       ; $6e73: $59
    sbc a                                         ; $6e74: $9f
    ld d, e                                       ; $6e75: $53
    cp [hl]                                       ; $6e76: $be
    inc l                                         ; $6e77: $2c
    ld c, e                                       ; $6e78: $4b
    ld e, h                                       ; $6e79: $5c
    ld b, b                                       ; $6e7a: $40
    ld [c], a                                     ; $6e7b: $e2
    nop                                           ; $6e7c: $00
    db $e3                                        ; $6e7d: $e3
    jp c, $dbe9                                   ; $6e7e: $da $e9 $db

    add b                                         ; $6e81: $80
    rst $10                                       ; $6e82: $d7
    inc b                                         ; $6e83: $04
    ret z                                         ; $6e84: $c8

    and c                                         ; $6e85: $a1
    add h                                         ; $6e86: $84
    jp Jump_000_2a45                              ; $6e87: $c3 $45 $2a


    cpl                                           ; $6e8a: $2f
    rrca                                          ; $6e8b: $0f
    jr nz, @+$2c                                  ; $6e8c: $20 $2a

    ld b, e                                       ; $6e8e: $43
    ld b, l                                       ; $6e8f: $45

Jump_062_6e90:
    nop                                           ; $6e90: $00
    add sp, -$80                                  ; $6e91: $e8 $80
    reti                                          ; $6e93: $d9


    add [hl]                                      ; $6e94: $86
    and a                                         ; $6e95: $a7
    ld b, c                                       ; $6e96: $41
    ldh [$be], a                                  ; $6e97: $e0 $be
    add h                                         ; $6e99: $84
    jp nz, $2042                                  ; $6e9a: $c2 $42 $20

    jr nz, jr_062_6ecd                            ; $6e9d: $20 $2e

    ld b, l                                       ; $6e9f: $45
    ld a, d                                       ; $6ea0: $7a
    jp nz, $c19c                                  ; $6ea1: $c2 $9c $c1

    sbc a                                         ; $6ea4: $9f
    ld a, [hl]                                    ; $6ea5: $7e
    and e                                         ; $6ea6: $a3
    add b                                         ; $6ea7: $80
    ret c                                         ; $6ea8: $d8

    add [hl]                                      ; $6ea9: $86
    and a                                         ; $6eaa: $a7
    inc b                                         ; $6eab: $04
    pop bc                                        ; $6eac: $c1
    jp $45c0                                      ; $6ead: $c3 $c0 $45


    ld b, c                                       ; $6eb0: $41
    cpl                                           ; $6eb1: $2f
    ld [hl], $21                                  ; $6eb2: $36 $21
    jr nz, @+$2f                                  ; $6eb4: $20 $2d

    ld b, b                                       ; $6eb6: $40
    jp nz, $feae                                  ; $6eb7: $c2 $ae $fe

    and c                                         ; $6eba: $a1
    ld l, d                                       ; $6ebb: $6a
    and [hl]                                      ; $6ebc: $a6
    ldh [rP1], a                                  ; $6ebd: $e0 $00
    or c                                          ; $6ebf: $b1
    cp c                                          ; $6ec0: $b9
    add b                                         ; $6ec1: $80
    add [hl]                                      ; $6ec2: $86
    and [hl]                                      ; $6ec3: $a6

jr_062_6ec4:
    inc b                                         ; $6ec4: $04
    ret nz                                        ; $6ec5: $c0

    dec bc                                        ; $6ec6: $0b
    ret nz                                        ; $6ec7: $c0

    ld b, l                                       ; $6ec8: $45
    ld [hl], $35                                  ; $6ec9: $36 $35
    daa                                           ; $6ecb: $27
    dec [hl]                                      ; $6ecc: $35

jr_062_6ecd:
    ld [hl], $41                                  ; $6ecd: $36 $41
    ld b, e                                       ; $6ecf: $43
    pop hl                                        ; $6ed0: $e1
    db $fd                                        ; $6ed1: $fd
    and d                                         ; $6ed2: $a2
    and c                                         ; $6ed3: $a1
    ld a, [hl]                                    ; $6ed4: $7e
    and l                                         ; $6ed5: $a5
    nop                                           ; $6ed6: $00
    or e                                          ; $6ed7: $b3
    sub b                                         ; $6ed8: $90
    rrca                                          ; $6ed9: $0f
    and d                                         ; $6eda: $a2
    add [hl]                                      ; $6edb: $86
    and h                                         ; $6edc: $a4
    adc $a2                                       ; $6edd: $ce $a2
    pop bc                                        ; $6edf: $c1
    pop hl                                        ; $6ee0: $e1
    ld a, [hl-]                                   ; $6ee1: $3a
    jp nz, Jump_062_76e3                          ; $6ee2: $c2 $e3 $76

    and c                                         ; $6ee5: $a1
    xor [hl]                                      ; $6ee6: $ae
    ldh a, [$7e]                                  ; $6ee7: $f0 $7e
    push bc                                       ; $6ee9: $c5
    add b                                         ; $6eea: $80
    rst $10                                       ; $6eeb: $d7
    add [hl]                                      ; $6eec: $86
    add e                                         ; $6eed: $83
    add h                                         ; $6eee: $84
    jp nz, $4546                                  ; $6eef: $c2 $46 $45

    scf                                           ; $6ef2: $37
    jr c, jr_062_6ec4                             ; $6ef3: $38 $cf

    dec [hl]                                      ; $6ef5: $35
    dec [hl]                                      ; $6ef6: $35
    dec [hl]                                      ; $6ef7: $35
    add hl, sp                                    ; $6ef8: $39
    ld b, d                                       ; $6ef9: $42
    and d                                         ; $6efa: $a2
    halt                                          ; $6efb: $76
    and c                                         ; $6efc: $a1
    ld b, [hl]                                    ; $6efd: $46
    xor a                                         ; $6efe: $af
    db $10                                        ; $6eff: $10
    ld a, [hl]                                    ; $6f00: $7e
    jp $b900                                      ; $6f01: $c3 $00 $b9


    ld [$c084], sp                                ; $6f04: $08 $84 $c0
    ld [c], a                                     ; $6f07: $e2
    ld b, d                                       ; $6f08: $42
    jp nz, $81e0                                  ; $6f09: $c2 $e0 $81

    ld [c], a                                     ; $6f0c: $e2
    ld a, d                                       ; $6f0d: $7a
    and c                                         ; $6f0e: $a1
    ldh [$bf], a                                  ; $6f0f: $e0 $bf
    ld [c], a                                     ; $6f11: $e2
    ld a, [hl]                                    ; $6f12: $7e
    and e                                         ; $6f13: $a3
    nop                                           ; $6f14: $00
    cp c                                          ; $6f15: $b9
    add [hl]                                      ; $6f16: $86
    add h                                         ; $6f17: $84
    add l                                         ; $6f18: $85
    and b                                         ; $6f19: $a0
    ld b, [hl]                                    ; $6f1a: $46
    xor [hl]                                      ; $6f1b: $ae
    ld b, h                                       ; $6f1c: $44
    add hl, bc                                    ; $6f1d: $09
    inc a                                         ; $6f1e: $3c
    add c                                         ; $6f1f: $81
    db $e4                                        ; $6f20: $e4
    pop bc                                        ; $6f21: $c1
    db $e3                                        ; $6f22: $e3
    xor a                                         ; $6f23: $af
    ld b, b                                       ; $6f24: $40
    pop hl                                        ; $6f25: $e1
    ld a, [hl]                                    ; $6f26: $7e
    add c                                         ; $6f27: $81
    add b                                         ; $6f28: $80
    reti                                          ; $6f29: $d9


    add [hl]                                      ; $6f2a: $86
    add h                                         ; $6f2b: $84
    db $fd                                        ; $6f2c: $fd
    and c                                         ; $6f2d: $a1
    adc l                                         ; $6f2e: $8d
    ld [c], a                                     ; $6f2f: $e2
    ld [hl], $35                                  ; $6f30: $36 $35
    jr c, @+$39                                   ; $6f32: $38 $37

    ld d, b                                       ; $6f34: $50
    ld c, b                                       ; $6f35: $48
    rlca                                          ; $6f36: $07
    ld b, h                                       ; $6f37: $44
    ccf                                           ; $6f38: $3f
    ld b, l                                       ; $6f39: $45
    cp c                                          ; $6f3a: $b9
    and b                                         ; $6f3b: $a0
    or l                                          ; $6f3c: $b5
    add c                                         ; $6f3d: $81
    ld b, b                                       ; $6f3e: $40
    ldh [rP1], a                                  ; $6f3f: $e0 $00
    cp d                                          ; $6f41: $ba
    add d                                         ; $6f42: $82
    and [hl]                                      ; $6f43: $a6
    ei                                            ; $6f44: $fb
    sbc a                                         ; $6f45: $9f
    sbc h                                         ; $6f46: $9c
    add $83                                       ; $6f47: $c6 $83
    ccf                                           ; $6f49: $3f
    ld b, l                                       ; $6f4a: $45
    ld c, d                                       ; $6f4b: $4a
    ld e, l                                       ; $6f4c: $5d
    ld d, [hl]                                    ; $6f4d: $56
    rlca                                          ; $6f4e: $07
    ld [hl], $35                                  ; $6f4f: $36 $35
    ld [hl], $c2                                  ; $6f51: $36 $c2
    and b                                         ; $6f53: $a0
    ld [hl], d                                    ; $6f54: $72
    pop bc                                        ; $6f55: $c1
    ld a, [hl]                                    ; $6f56: $7e
    and [hl]                                      ; $6f57: $a6
    add b                                         ; $6f58: $80
    rst $10                                       ; $6f59: $d7
    add [hl]                                      ; $6f5a: $86
    add l                                         ; $6f5b: $85
    inc e                                         ; $6f5c: $1c
    add $82                                       ; $6f5d: $c6 $82
    inc bc                                        ; $6f5f: $03
    add b                                         ; $6f60: $80
    ld c, a                                       ; $6f61: $4f
    ld h, c                                       ; $6f62: $61
    ld d, l                                       ; $6f63: $55
    ld a, [hl-]                                   ; $6f64: $3a
    ldh [$bc], a                                  ; $6f65: $e0 $bc
    pop bc                                        ; $6f67: $c1
    ld a, [hl]                                    ; $6f68: $7e
    adc d                                         ; $6f69: $8a
    ldh a, [$80]                                  ; $6f6a: $f0 $80
    halt                                          ; $6f6c: $76
    add [hl]                                      ; $6f6d: $86
    ld h, e                                       ; $6f6e: $63
    ld b, [hl]                                    ; $6f6f: $46
    add b                                         ; $6f70: $80
    ld c, $81                                     ; $6f71: $0e $81
    ld b, l                                       ; $6f73: $45
    scf                                           ; $6f74: $37
    scf                                           ; $6f75: $37
    ld c, d                                       ; $6f76: $4a
    rlca                                          ; $6f77: $07
    ld h, c                                       ; $6f78: $61
    ld e, h                                       ; $6f79: $5c
    ld a, [hl-]                                   ; $6f7a: $3a
    inc a                                         ; $6f7b: $3c
    jp nz, Jump_062_62b6                          ; $6f7c: $c2 $b6 $62

    ld a, [hl]                                    ; $6f7f: $7e
    add l                                         ; $6f80: $85
    nop                                           ; $6f81: $00
    cp l                                          ; $6f82: $bd
    ld b, c                                       ; $6f83: $41
    jp nz, Jump_062_467b                          ; $6f84: $c2 $7b $46

    ld b, [hl]                                    ; $6f87: $46
    cp a                                          ; $6f88: $bf
    ret nz                                        ; $6f89: $c0

    ld [hl], $52                                  ; $6f8a: $36 $52
    ld d, d                                       ; $6f8c: $52
    add hl, sp                                    ; $6f8d: $39
    dec sp                                        ; $6f8e: $3b
    ret nz                                        ; $6f8f: $c0

    add e                                         ; $6f90: $83
    ld [hl], $45                                  ; $6f91: $36 $45
    ld b, b                                       ; $6f93: $40
    pop bc                                        ; $6f94: $c1
    ld a, [hl]                                    ; $6f95: $7e
    ld h, h                                       ; $6f96: $64
    nop                                           ; $6f97: $00
    cp a                                          ; $6f98: $bf
    add c                                         ; $6f99: $81
    pop bc                                        ; $6f9a: $c1
    ccf                                           ; $6f9b: $3f
    call nz, $1d36                                ; $6f9c: $c4 $36 $1d
    ld e, e                                       ; $6f9f: $5b
    ld a, l                                       ; $6fa0: $7d
    and b                                         ; $6fa1: $a0
    dec [hl]                                      ; $6fa2: $35
    inc a                                         ; $6fa3: $3c
    ld b, h                                       ; $6fa4: $44
    ld a, [hl]                                    ; $6fa5: $7e
    ld h, b                                       ; $6fa6: $60
    ccf                                           ; $6fa7: $3f
    ld h, c                                       ; $6fa8: $61
    nop                                           ; $6fa9: $00
    cp a                                          ; $6faa: $bf
    ld hl, sp+$08                                 ; $6fab: $f8 $08
    ld b, c                                       ; $6fad: $41
    ret nz                                        ; $6fae: $c0

    ret nz                                        ; $6faf: $c0

    add b                                         ; $6fb0: $80
    db $e4                                        ; $6fb1: $e4
    dec [hl]                                      ; $6fb2: $35
    dec [hl]                                      ; $6fb3: $35
    dec sp                                        ; $6fb4: $3b
    dec [hl]                                      ; $6fb5: $35
    xor h                                         ; $6fb6: $ac
    ld b, d                                       ; $6fb7: $42
    cp d                                          ; $6fb8: $ba
    and b                                         ; $6fb9: $a0
    ld b, d                                       ; $6fba: $42
    ld b, b                                       ; $6fbb: $40
    ld h, d                                       ; $6fbc: $62
    ld l, d                                       ; $6fbd: $6a
    ld c, b                                       ; $6fbe: $48
    nop                                           ; $6fbf: $00
    cp e                                          ; $6fc0: $bb
    ld b, h                                       ; $6fc1: $44
    add e                                         ; $6fc2: $83
    ld b, l                                       ; $6fc3: $45
    dec b                                         ; $6fc4: $05
    ldh [rSC], a                                  ; $6fc5: $e0 $02
    ld a, [hl]                                    ; $6fc7: $7e
    and b                                         ; $6fc8: $a0
    xor l                                         ; $6fc9: $ad
    dec sp                                        ; $6fca: $3b
    and h                                         ; $6fcb: $a4
    nop                                           ; $6fcc: $00
    add c                                         ; $6fcd: $81
    nop                                           ; $6fce: $00
    cp a                                          ; $6fcf: $bf
    add [hl]                                      ; $6fd0: $86
    ld b, d                                       ; $6fd1: $42
    rst $38                                       ; $6fd2: $ff
    call nz, $e105                                ; $6fd3: $c4 $05 $e1
    nop                                           ; $6fd6: $00
    cp l                                          ; $6fd7: $bd
    ld [c], a                                     ; $6fd8: $e2
    ld a, a                                       ; $6fd9: $7f
    jp nz, Jump_062_6800                          ; $6fda: $c2 $00 $68

    nop                                           ; $6fdd: $00
    cp l                                          ; $6fde: $bd
    inc bc                                        ; $6fdf: $03
    add h                                         ; $6fe0: $84
    ld a, [hl]                                    ; $6fe1: $7e
    and d                                         ; $6fe2: $a2
    ld bc, $82e3                                  ; $6fe3: $01 $e3 $82
    ret z                                         ; $6fe6: $c8

    inc b                                         ; $6fe7: $04
    nop                                           ; $6fe8: $00
    cp a                                          ; $6fe9: $bf
    ld a, a                                       ; $6fea: $7f
    add e                                         ; $6feb: $83
    xor [hl]                                      ; $6fec: $ae
    ccf                                           ; $6fed: $3f
    push hl                                       ; $6fee: $e5
    ld bc, $00e3                                  ; $6fef: $01 $e3 $00
    ld e, a                                       ; $6ff2: $5f
    nop                                           ; $6ff3: $00
    and [hl]                                      ; $6ff4: $a6
    ld a, [hl]                                    ; $6ff5: $7e
    db $e3                                        ; $6ff6: $e3
    nop                                           ; $6ff7: $00
    inc c                                         ; $6ff8: $0c
    ld b, b                                       ; $6ff9: $40
    ccf                                           ; $6ffa: $3f
    db $e4                                        ; $6ffb: $e4
    inc a                                         ; $6ffc: $3c
    add c                                         ; $6ffd: $81
    add d                                         ; $6ffe: $82
    push bc                                       ; $6fff: $c5
    nop                                           ; $7000: $00
    cp a                                          ; $7001: $bf
    add [hl]                                      ; $7002: $86
    inc bc                                        ; $7003: $03
    ld bc, $7d62                                  ; $7004: $01 $62 $7d
    add d                                         ; $7007: $82
    nop                                           ; $7008: $00
    inc a                                         ; $7009: $3c
    add d                                         ; $700a: $82
    add d                                         ; $700b: $82
    ld [c], a                                     ; $700c: $e2
    nop                                           ; $700d: $00
    ld e, h                                       ; $700e: $5c
    add d                                         ; $700f: $82
    ld b, h                                       ; $7010: $44
    ld a, [hl]                                    ; $7011: $7e
    db $e3                                        ; $7012: $e3
    db $fd                                        ; $7013: $fd
    ld h, d                                       ; $7014: $62
    rst $38                                       ; $7015: $ff
    jp $a100                                      ; $7016: $c3 $00 $a1


    nop                                           ; $7019: $00
    ld b, e                                       ; $701a: $43
    ret nz                                        ; $701b: $c0

    add d                                         ; $701c: $82
    jp $bf00                                      ; $701d: $c3 $00 $bf


    add d                                         ; $7020: $82
    dec h                                         ; $7021: $25

jr_062_7022:
    dec bc                                        ; $7022: $0b
    jr nz, jr_062_7022                            ; $7023: $20 $fd

    ld h, d                                       ; $7025: $62
    pop bc                                        ; $7026: $c1
    add c                                         ; $7027: $81
    inc bc                                        ; $7028: $03
    ld b, c                                       ; $7029: $41
    ld h, b                                       ; $702a: $60
    add d                                         ; $702b: $82
    push bc                                       ; $702c: $c5
    nop                                           ; $702d: $00
    cp l                                          ; $702e: $bd
    add d                                         ; $702f: $82
    daa                                           ; $7030: $27
    cp [hl]                                       ; $7031: $be
    and d                                         ; $7032: $a2
    cp [hl]                                       ; $7033: $be
    ld h, d                                       ; $7034: $62
    ld b, [hl]                                    ; $7035: $46
    sbc [hl]                                      ; $7036: $9e
    add d                                         ; $7037: $82
    rst $20                                       ; $7038: $e7
    ld d, b                                       ; $7039: $50
    nop                                           ; $703a: $00
    cp a                                          ; $703b: $bf
    nop                                           ; $703c: $00
    pop hl                                        ; $703d: $e1
    cp h                                          ; $703e: $bc
    add c                                         ; $703f: $81
    rst $38                                       ; $7040: $ff
    and d                                         ; $7041: $a2
    ld a, $c1                                     ; $7042: $3e $c1
    ld [bc], a                                    ; $7044: $02
    sbc [hl]                                      ; $7045: $9e
    add d                                         ; $7046: $82
    rst $20                                       ; $7047: $e7
    ld [$bd00], sp                                ; $7048: $08 $00 $bd
    ld a, [hl]                                    ; $704b: $7e
    ld b, e                                       ; $704c: $43
    db $fd                                        ; $704d: $fd
    ld b, d                                       ; $704e: $42
    ld a, $c0                                     ; $704f: $3e $c0
    db $e4                                        ; $7051: $e4
    jp Jump_000_0400                              ; $7052: $c3 $00 $04


    ld b, e                                       ; $7055: $43
    ldh [rNR42], a                                ; $7056: $e0 $21
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    cp l                                          ; $705a: $bd
    sbc [hl]                                      ; $705b: $9e
    inc bc                                        ; $705c: $03
    add c                                         ; $705d: $81
    ld [hl+], a                                   ; $705e: $22
    ret nz                                        ; $705f: $c0

    rst $20                                       ; $7060: $e7
    inc b                                         ; $7061: $04
    ld b, h                                       ; $7062: $44
    ld h, d                                       ; $7063: $62
    ret nz                                        ; $7064: $c0

    jp Jump_000_00ab                              ; $7065: $c3 $ab $00


    ld d, b                                       ; $7068: $50
    nop                                           ; $7069: $00
    ld a, [hl]                                    ; $706a: $7e
    and [hl]                                      ; $706b: $a6
    add b                                         ; $706c: $80
    db $e3                                        ; $706d: $e3
    ccf                                           ; $706e: $3f
    ld b, h                                       ; $706f: $44
    add d                                         ; $7070: $82
    dec b                                         ; $7071: $05
    jp Jump_000_00ac                              ; $7072: $c3 $ac $00


    ld d, d                                       ; $7075: $52
    ld a, [hl]                                    ; $7076: $7e
    add c                                         ; $7077: $81
    rst $38                                       ; $7078: $ff
    add a                                         ; $7079: $87
    ld bc, $0339                                  ; $707a: $01 $39 $03
    ld b, d                                       ; $707d: $42
    add d                                         ; $707e: $82
    inc b                                         ; $707f: $04
    ld b, e                                       ; $7080: $43
    adc l                                         ; $7081: $8d
    nop                                           ; $7082: $00
    ld d, d                                       ; $7083: $52
    add d                                         ; $7084: $82
    pop bc                                        ; $7085: $c1
    jp Jump_000_0303                              ; $7086: $c3 $03 $03


    add c                                         ; $7089: $81
    ld bc, $353e                                  ; $708a: $01 $3e $35
    and c                                         ; $708d: $a1
    rst $38                                       ; $708e: $ff
    and b                                         ; $708f: $a0
    inc b                                         ; $7090: $04
    ld h, h                                       ; $7091: $64
    ld b, e                                       ; $7092: $43
    db $eb                                        ; $7093: $eb
    nop                                           ; $7094: $00
    or h                                          ; $7095: $b4
    ld a, [hl]                                    ; $7096: $7e
    ld h, h                                       ; $7097: $64
    db $fd                                        ; $7098: $fd
    ld h, d                                       ; $7099: $62
    inc c                                         ; $709a: $0c
    ld a, a                                       ; $709b: $7f
    ret nz                                        ; $709c: $c0

    db $f4                                        ; $709d: $f4
    ld b, b                                       ; $709e: $40
    sbc h                                         ; $709f: $9c
    sbc a                                         ; $70a0: $9f
    add d                                         ; $70a1: $82
    add l                                         ; $70a2: $85
    nop                                           ; $70a3: $00
    cp a                                          ; $70a4: $bf
    ld [bc], a                                    ; $70a5: $02
    db $e3                                        ; $70a6: $e3
    add d                                         ; $70a7: $82
    ld [bc], a                                    ; $70a8: $02
    nop                                           ; $70a9: $00
    ld a, a                                       ; $70aa: $7f
    add $7e                                       ; $70ab: $c6 $7e
    pop bc                                        ; $70ad: $c1
    add d                                         ; $70ae: $82
    add e                                         ; $70af: $83
    nop                                           ; $70b0: $00
    cp a                                          ; $70b1: $bf
    ret nz                                        ; $70b2: $c0

    ld h, e                                       ; $70b3: $63
    ld a, a                                       ; $70b4: $7f
    ld b, c                                       ; $70b5: $41
    add b                                         ; $70b6: $80
    db $e4                                        ; $70b7: $e4
    add e                                         ; $70b8: $83
    ld b, e                                       ; $70b9: $43
    nop                                           ; $70ba: $00
    db $e4                                        ; $70bb: $e4
    inc bc                                        ; $70bc: $03
    add b                                         ; $70bd: $80
    jp c, Jump_000_2900                           ; $70be: $da $00 $29

    cp [hl]                                       ; $70c1: $be
    ld h, l                                       ; $70c2: $65
    cp $03                                        ; $70c3: $fe $03
    ld a, [hl]                                    ; $70c5: $7e
    and c                                         ; $70c6: $a1
    inc b                                         ; $70c7: $04
    add b                                         ; $70c8: $80
    ld b, e                                       ; $70c9: $43
    db $ed                                        ; $70ca: $ed
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    ld d, d                                       ; $70cd: $52
    ld bc, $3ee6                                  ; $70ce: $01 $e6 $3e
    ld h, c                                       ; $70d1: $61
    ld a, a                                       ; $70d2: $7f
    ld [bc], a                                    ; $70d3: $02
    jp Jump_000_0421                              ; $70d4: $c3 $21 $04


    ld h, d                                       ; $70d7: $62
    add b                                         ; $70d8: $80
    call c, Call_000_2600                         ; $70d9: $dc $00 $26
    nop                                           ; $70dc: $00
    pop bc                                        ; $70dd: $c1
    rst $00                                       ; $70de: $c7
    jp Jump_000_0426                              ; $70df: $c3 $26 $04


    ld h, e                                       ; $70e2: $63
    nop                                           ; $70e3: $00

Jump_062_70e4:
    ld h, c                                       ; $70e4: $61
    nop                                           ; $70e5: $00
    cp l                                          ; $70e6: $bd
    add c                                         ; $70e7: $81
    jp nz, $c4c1                                  ; $70e8: $c2 $c1 $c4

    ld b, h                                       ; $70eb: $44
    ld h, e                                       ; $70ec: $63
    nop                                           ; $70ed: $00
    add c                                         ; $70ee: $81
    ld h, e                                       ; $70ef: $63
    nop                                           ; $70f0: $00
    cp a                                          ; $70f1: $bf
    nop                                           ; $70f2: $00
    ld h, a                                       ; $70f3: $67
    ld b, b                                       ; $70f4: $40
    ld [hl+], a                                   ; $70f5: $22
    ld a, [hl]                                    ; $70f6: $7e
    ld b, b                                       ; $70f7: $40
    add c                                         ; $70f8: $81
    and h                                         ; $70f9: $a4
    nop                                           ; $70fa: $00
    add $00                                       ; $70fb: $c6 $00
    cp a                                          ; $70fd: $bf
    add b                                         ; $70fe: $80
    add d                                         ; $70ff: $82
    ld h, e                                       ; $7100: $63
    ld bc, $7e22                                  ; $7101: $01 $22 $7e
    ld b, b                                       ; $7104: $40
    inc b                                         ; $7105: $04
    ld l, $00                                     ; $7106: $2e $00
    cp [hl]                                       ; $7108: $be
    add d                                         ; $7109: $82
    ld h, [hl]                                    ; $710a: $66
    ld a, a                                       ; $710b: $7f
    and c                                         ; $710c: $a1
    ccf                                           ; $710d: $3f
    ldh [rSC], a                                  ; $710e: $e0 $02
    and d                                         ; $7110: $a2
    add c                                         ; $7111: $81
    pop bc                                        ; $7112: $c1
    nop                                           ; $7113: $00
    cp a                                          ; $7114: $bf
    nop                                           ; $7115: $00
    ld l, b                                       ; $7116: $68
    add b                                         ; $7117: $80
    and d                                         ; $7118: $a2
    ld b, l                                       ; $7119: $45
    ld b, e                                       ; $711a: $43
    ld b, c                                       ; $711b: $41
    add c                                         ; $711c: $81
    ld b, e                                       ; $711d: $43
    db $fd                                        ; $711e: $fd
    ldh [rSCY], a                                 ; $711f: $e0 $42
    ld [bc], a                                    ; $7121: $02
    add d                                         ; $7122: $82
    ld b, l                                       ; $7123: $45
    nop                                           ; $7124: $00
    cp a                                          ; $7125: $bf
    ld a, [hl]                                    ; $7126: $7e
    inc b                                         ; $7127: $04
    inc bc                                        ; $7128: $03
    and c                                         ; $7129: $a1
    dec sp                                        ; $712a: $3b
    add e                                         ; $712b: $83
    dec [hl]                                      ; $712c: $35
    dec sp                                        ; $712d: $3b
    db $fd                                        ; $712e: $fd
    ldh [rLCDC], a                                ; $712f: $e0 $40
    ld h, l                                       ; $7131: $65
    nop                                           ; $7132: $00
    cp a                                          ; $7133: $bf
    nop                                           ; $7134: $00
    ld b, e                                       ; $7135: $43
    ld a, [hl]                                    ; $7136: $7e
    dec b                                         ; $7137: $05
    ld b, h                                       ; $7138: $44
    rla                                           ; $7139: $17
    inc a                                         ; $713a: $3c
    and h                                         ; $713b: $a4
    ld h, h                                       ; $713c: $64
    rst $38                                       ; $713d: $ff
    ldh [$a5], a                                  ; $713e: $e0 $a5
    jp nz, $0022                                  ; $7140: $c2 $22 $00

    ld l, b                                       ; $7143: $68
    nop                                           ; $7144: $00
    cp e                                          ; $7145: $bb
    or $fc                                        ; $7146: $f6 $fc
    ld bc, $d1d0                                  ; $7148: $01 $d0 $d1
    ld a, a                                       ; $714b: $7f
    ld hl, $3542                                  ; $714c: $21 $42 $35
    ld l, c                                       ; $714f: $69
    and e                                         ; $7150: $a3
    rrca                                          ; $7151: $0f
    dec [hl]                                      ; $7152: $35
    dec [hl]                                      ; $7153: $35
    and e                                         ; $7154: $a3
    ld l, d                                       ; $7155: $6a
    jp Jump_000_0002                              ; $7156: $c3 $02 $00


    ld h, [hl]                                    ; $7159: $66
    nop                                           ; $715a: $00
    cp d                                          ; $715b: $ba
    ld a, d                                       ; $715c: $7a
    ld h, h                                       ; $715d: $64
    nop                                           ; $715e: $00
    ld a, [hl]                                    ; $715f: $7e
    and e                                         ; $7160: $a3
    ret nz                                        ; $7161: $c0

    ldh [$c3], a                                  ; $7162: $e0 $c3
    ld hl, $e4c0                                  ; $7164: $21 $c0 $e4
    inc b                                         ; $7167: $04
    ld h, $80                                     ; $7168: $26 $80
    ld [hl], a                                    ; $716a: $77
    cp l                                          ; $716b: $bd
    ld b, h                                       ; $716c: $44
    ld a, [hl]                                    ; $716d: $7e
    and l                                         ; $716e: $a5
    cpl                                           ; $716f: $2f
    ld b, h                                       ; $7170: $44
    inc a                                         ; $7171: $3c
    ld l, e                                       ; $7172: $6b
    ld [hl], c                                    ; $7173: $71
    rst $38                                       ; $7174: $ff
    ldh [$6d], a                                  ; $7175: $e0 $6d
    ld b, b                                       ; $7177: $40
    db $e3                                        ; $7178: $e3
    inc b                                         ; $7179: $04
    inc h                                         ; $717a: $24
    inc d                                         ; $717b: $14
    nop                                           ; $717c: $00
    cp c                                          ; $717d: $b9
    db $ed                                        ; $717e: $ed
    ld b, e                                       ; $717f: $43
    rst $18                                       ; $7180: $df
    ld a, [hl]                                    ; $7181: $7e
    dec b                                         ; $7182: $05
    xor [hl]                                      ; $7183: $ae
    ret nz                                        ; $7184: $c0

    add $41                                       ; $7185: $c6 $41
    jp nz, Jump_000_1086                          ; $7187: $c2 $86 $10

    ld c, b                                       ; $718a: $48
    add b                                         ; $718b: $80
    rst $08                                       ; $718c: $cf
    ld a, [hl]                                    ; $718d: $7e
    add [hl]                                      ; $718e: $86
    ld b, c                                       ; $718f: $41
    jr nz, @-$4f                                  ; $7190: $20 $af

    ld b, b                                       ; $7192: $40
    add $b4                                       ; $7193: $c6 $b4
    and b                                         ; $7195: $a0
    and c                                         ; $7196: $a1
    add d                                         ; $7197: $82
    add d                                         ; $7198: $82
    nop                                           ; $7199: $00
    jp Jump_000_00af                              ; $719a: $c3 $af $00


    ld d, l                                       ; $719d: $55
    rst $38                                       ; $719e: $ff
    ld b, h                                       ; $719f: $44
    ei                                            ; $71a0: $fb
    add c                                         ; $71a1: $81
    add c                                         ; $71a2: $81
    ld b, e                                       ; $71a3: $43
    db $ec                                        ; $71a4: $ec
    ld bc, $9043                                  ; $71a5: $01 $43 $90
    nop                                           ; $71a8: $00
    ld c, h                                       ; $71a9: $4c
    nop                                           ; $71aa: $00
    ld a, [hl]                                    ; $71ab: $7e
    and a                                         ; $71ac: $a7
    ld a, a                                       ; $71ad: $7f
    ld b, e                                       ; $71ae: $43
    ld a, [hl-]                                   ; $71af: $3a
    and e                                         ; $71b0: $a3
    ld b, h                                       ; $71b1: $44
    ld bc, $2104                                  ; $71b2: $01 $04 $21
    jp $80b0                                      ; $71b5: $c3 $b0 $80


    ret nc                                        ; $71b8: $d0

    ld a, [hl]                                    ; $71b9: $7e
    push hl                                       ; $71ba: $e5
    ld bc, $ff9d                                  ; $71bb: $01 $9d $ff
    rst $20                                       ; $71be: $e7
    add e                                         ; $71bf: $83
    ld bc, $1086                                  ; $71c0: $01 $86 $10
    add b                                         ; $71c3: $80
    db $d3                                        ; $71c4: $d3
    ld a, [hl]                                    ; $71c5: $7e
    push hl                                       ; $71c6: $e5
    adc [hl]                                      ; $71c7: $8e
    and c                                         ; $71c8: $a1
    db $fc                                        ; $71c9: $fc
    jp hl                                         ; $71ca: $e9


    nop                                           ; $71cb: $00
    add [hl]                                      ; $71cc: $86
    rrca                                          ; $71cd: $0f
    add b                                         ; $71ce: $80
    jp nc, $887a                                  ; $71cf: $d2 $7a $88

    db $fc                                        ; $71d2: $fc
    db $ed                                        ; $71d3: $ed
    nop                                           ; $71d4: $00
    cp a                                          ; $71d5: $bf
    ld a, d                                       ; $71d6: $7a
    dec b                                         ; $71d7: $05
    ld a, [hl]                                    ; $71d8: $7e
    ld bc, $edfc                                  ; $71d9: $01 $fc $ed
    nop                                           ; $71dc: $00
    add [hl]                                      ; $71dd: $86
    rrca                                          ; $71de: $0f
    rlca                                          ; $71df: $07
    inc hl                                        ; $71e0: $23
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    pop bc                                        ; $71e4: $c1
    nop                                           ; $71e5: $00
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
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    ld bc, $fe80                                  ; $71f2: $01 $80 $fe
    ldh [rIE], a                                  ; $71f5: $e0 $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    add sp, $00                                   ; $71fb: $e8 $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    ld [bc], a                                    ; $71ff: $02
    nop                                           ; $7200: $00
    dec de                                        ; $7201: $1b
    dec b                                         ; $7202: $05
    ld [bc], a                                    ; $7203: $02
    ld bc, $0524                                  ; $7204: $01 $24 $05
    ld [bc], a                                    ; $7207: $02
    ld [bc], a                                    ; $7208: $02
    ld a, [de]                                    ; $7209: $1a
    ld b, $02                                     ; $720a: $06 $02
    inc bc                                        ; $720c: $03
    inc e                                         ; $720d: $1c
    ld b, $02                                     ; $720e: $06 $02
    inc b                                         ; $7210: $04
    ld e, $06                                     ; $7211: $1e $06
    ld [bc], a                                    ; $7213: $02
    dec b                                         ; $7214: $05
    dec de                                        ; $7215: $1b
    rlca                                          ; $7216: $07
    ld [bc], a                                    ; $7217: $02
    ld b, $1d                                     ; $7218: $06 $1d
    rlca                                          ; $721a: $07
    ld [bc], a                                    ; $721b: $02
    rlca                                          ; $721c: $07
    ld a, [de]                                    ; $721d: $1a
    ld [$0802], sp                                ; $721e: $08 $02 $08
    inc e                                         ; $7221: $1c
    ld [$0902], sp                                ; $7222: $08 $02 $09
    dec h                                         ; $7225: $25
    ld [$0a02], sp                                ; $7226: $08 $02 $0a
    dec de                                        ; $7229: $1b
    add hl, bc                                    ; $722a: $09
    ld [bc], a                                    ; $722b: $02
    dec bc                                        ; $722c: $0b
    dec e                                         ; $722d: $1d
    add hl, bc                                    ; $722e: $09
    ld [bc], a                                    ; $722f: $02
    inc c                                         ; $7230: $0c
    ld a, [de]                                    ; $7231: $1a
    inc c                                         ; $7232: $0c
    ld [bc], a                                    ; $7233: $02
    dec c                                         ; $7234: $0d
    inc h                                         ; $7235: $24
    inc c                                         ; $7236: $0c
    ld [bc], a                                    ; $7237: $02
    ld c, $17                                     ; $7238: $0e $17
    dec c                                         ; $723a: $0d
    ld [bc], a                                    ; $723b: $02
    rrca                                          ; $723c: $0f
    add hl, de                                    ; $723d: $19
    dec c                                         ; $723e: $0d
    ld [bc], a                                    ; $723f: $02
    db $10                                        ; $7240: $10
    daa                                           ; $7241: $27
    dec c                                         ; $7242: $0d
    ld [bc], a                                    ; $7243: $02
    ld de, $0e16                                  ; $7244: $11 $16 $0e
    ld [bc], a                                    ; $7247: $02
    ld [de], a                                    ; $7248: $12
    dec h                                         ; $7249: $25
    rrca                                          ; $724a: $0f
    ld [bc], a                                    ; $724b: $02
    inc de                                        ; $724c: $13
    add hl, hl                                    ; $724d: $29
    rrca                                          ; $724e: $0f
    ld [bc], a                                    ; $724f: $02
    inc d                                         ; $7250: $14
    ld [hl+], a                                   ; $7251: $22
    db $10                                        ; $7252: $10
    ld [bc], a                                    ; $7253: $02
    dec d                                         ; $7254: $15
    inc h                                         ; $7255: $24
    db $10                                        ; $7256: $10
    ld [bc], a                                    ; $7257: $02
    ld d, $26                                     ; $7258: $16 $26
    db $10                                        ; $725a: $10
    ld [bc], a                                    ; $725b: $02
    rla                                           ; $725c: $17
    ld hl, $0211                                  ; $725d: $21 $11 $02
    jr @+$25                                      ; $7260: $18 $23

    ld de, $1902                                  ; $7262: $11 $02 $19
    dec h                                         ; $7265: $25
    ld de, $1a02                                  ; $7266: $11 $02 $1a
    daa                                           ; $7269: $27
    ld de, $1b02                                  ; $726a: $11 $02 $1b
    dec d                                         ; $726d: $15
    ld [de], a                                    ; $726e: $12
    ld [bc], a                                    ; $726f: $02
    inc e                                         ; $7270: $1c
    rla                                           ; $7271: $17
    ld [de], a                                    ; $7272: $12
    ld [bc], a                                    ; $7273: $02
    dec e                                         ; $7274: $1d
    ld [hl+], a                                   ; $7275: $22
    ld [de], a                                    ; $7276: $12
    ld [bc], a                                    ; $7277: $02
    ld e, $24                                     ; $7278: $1e $24
    ld [de], a                                    ; $727a: $12
    ld [bc], a                                    ; $727b: $02
    rra                                           ; $727c: $1f
    ld h, $12                                     ; $727d: $26 $12
    ld [bc], a                                    ; $727f: $02
    jr nz, @+$2b                                  ; $7280: $20 $29

    ld [de], a                                    ; $7282: $12
    ld [bc], a                                    ; $7283: $02
    ld hl, $1314                                  ; $7284: $21 $14 $13
    ld [bc], a                                    ; $7287: $02
    ld [hl+], a                                   ; $7288: $22
    ld d, $13                                     ; $7289: $16 $13
    ld [bc], a                                    ; $728b: $02
    inc hl                                        ; $728c: $23
    jr jr_062_72a2                                ; $728d: $18 $13

    ld [bc], a                                    ; $728f: $02
    inc h                                         ; $7290: $24
    dec h                                         ; $7291: $25
    inc de                                        ; $7292: $13
    ld [bc], a                                    ; $7293: $02
    dec h                                         ; $7294: $25
    daa                                           ; $7295: $27
    inc de                                        ; $7296: $13
    ld [bc], a                                    ; $7297: $02
    ld h, $15                                     ; $7298: $26 $15
    inc d                                         ; $729a: $14
    ld [bc], a                                    ; $729b: $02
    daa                                           ; $729c: $27
    rla                                           ; $729d: $17
    inc d                                         ; $729e: $14
    ld [bc], a                                    ; $729f: $02
    jr z, @+$16                                   ; $72a0: $28 $14

jr_062_72a2:
    dec d                                         ; $72a2: $15
    ld [bc], a                                    ; $72a3: $02
    add hl, hl                                    ; $72a4: $29
    ld d, $15                                     ; $72a5: $16 $15
    ld [bc], a                                    ; $72a7: $02
    ld a, [hl+]                                   ; $72a8: $2a
    dec h                                         ; $72a9: $25
    ld d, $02                                     ; $72aa: $16 $02
    dec hl                                        ; $72ac: $2b
    ld h, $17                                     ; $72ad: $26 $17
    ld [bc], a                                    ; $72af: $02
    inc l                                         ; $72b0: $2c
    inc d                                         ; $72b1: $14
    jr @+$04                                      ; $72b2: $18 $02

    dec l                                         ; $72b4: $2d
    jr nz, jr_062_72d0                            ; $72b5: $20 $19

    ld [bc], a                                    ; $72b7: $02
    ld l, $17                                     ; $72b8: $2e $17
    inc e                                         ; $72ba: $1c
    ld [bc], a                                    ; $72bb: $02
    cpl                                           ; $72bc: $2f
    jr jr_062_72dc                                ; $72bd: $18 $1d

    ld [bc], a                                    ; $72bf: $02
    jr nc, jr_062_72db                            ; $72c0: $30 $19

    ld hl, $3102                                  ; $72c2: $21 $02 $31
    jr jr_062_72e9                                ; $72c5: $18 $22

    ld [bc], a                                    ; $72c7: $02
    ld [hl-], a                                   ; $72c8: $32
    inc hl                                        ; $72c9: $23
    ld [hl+], a                                   ; $72ca: $22
    ld [bc], a                                    ; $72cb: $02
    inc sp                                        ; $72cc: $33
    ld [hl+], a                                   ; $72cd: $22
    daa                                           ; $72ce: $27
    ld [bc], a                                    ; $72cf: $02

jr_062_72d0:
    inc [hl]                                      ; $72d0: $34
    inc hl                                        ; $72d1: $23
    jr z, @+$04                                   ; $72d2: $28 $02

    dec [hl]                                      ; $72d4: $35
    jr jr_062_7301                                ; $72d5: $18 $2a

    ld [bc], a                                    ; $72d7: $02
    ld [hl], $24                                  ; $72d8: $36 $24
    inc l                                         ; $72da: $2c

jr_062_72db:
    ld [bc], a                                    ; $72db: $02

jr_062_72dc:
    scf                                           ; $72dc: $37
    rla                                           ; $72dd: $17
    cpl                                           ; $72de: $2f
    ld [bc], a                                    ; $72df: $02
    jr c, jr_062_72f8                             ; $72e0: $38 $16

    jr nc, jr_062_72e6                            ; $72e2: $30 $02

    add hl, sp                                    ; $72e4: $39
    inc hl                                        ; $72e5: $23

jr_062_72e6:
    ld [hl-], a                                   ; $72e6: $32
    ld [bc], a                                    ; $72e7: $02
    ld a, [hl-]                                   ; $72e8: $3a

jr_062_72e9:
    jr @+$3b                                      ; $72e9: $18 $39

    ld [bc], a                                    ; $72eb: $02
    dec sp                                        ; $72ec: $3b
    ld [hl+], a                                   ; $72ed: $22
    add hl, sp                                    ; $72ee: $39
    ld [bc], a                                    ; $72ef: $02
    inc a                                         ; $72f0: $3c
    inc e                                         ; $72f1: $1c
    dec sp                                        ; $72f2: $3b
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    cp $72                                        ; $72f6: $fe $72

jr_062_72f8:
    jr z, jr_062_7371                             ; $72f8: $28 $77

    or [hl]                                       ; $72fa: $b6
    ld a, e                                       ; $72fb: $7b
    pop de                                        ; $72fc: $d1
    ld a, e                                       ; $72fd: $7b
    cp a                                          ; $72fe: $bf
    dec c                                         ; $72ff: $0d
    dec c                                         ; $7300: $0d

jr_062_7301:
    dec c                                         ; $7301: $0d
    ld c, $0e                                     ; $7302: $0e $0e
    ld c, $fa                                     ; $7304: $0e $fa
    ld [$2e4d], a                                 ; $7306: $ea $4d $2e
    ldh a, [$e1]                                  ; $7309: $f0 $e1
    ld c, $0e                                     ; $730b: $0e $0e
    ld c, l                                       ; $730d: $4d
    ld hl, sp-$20                                 ; $730e: $f8 $e0
    ld c, l                                       ; $7310: $4d
    db $e3                                        ; $7311: $e3
    ldh [$f4], a                                  ; $7312: $e0 $f4
    db $eb                                        ; $7314: $eb
    nop                                           ; $7315: $00
    ret nc                                        ; $7316: $d0

    rst $28                                       ; $7317: $ef
    db $fd                                        ; $7318: $fd
    xor $eb                                       ; $7319: $ee $eb
    db $e4                                        ; $731b: $e4
    ret nz                                        ; $731c: $c0

    ld [c], a                                     ; $731d: $e2
    or h                                          ; $731e: $b4
    pop hl                                        ; $731f: $e1
    db $fc                                        ; $7320: $fc
    db $e4                                        ; $7321: $e4
    db $e3                                        ; $7322: $e3
    ld [$f9fa], a                                 ; $7323: $ea $fa $f9
    ld a, $6d                                     ; $7326: $3e $6d
    ld [c], a                                     ; $7328: $e2
    dec c                                         ; $7329: $0d
    dec c                                         ; $732a: $0d
    ld c, l                                       ; $732b: $4d
    ld c, l                                       ; $732c: $4d
    ld c, l                                       ; $732d: $4d
    db $fc                                        ; $732e: $fc
    pop hl                                        ; $732f: $e1
    db $fd                                        ; $7330: $fd
    db $e3                                        ; $7331: $e3
    pop bc                                        ; $7332: $c1
    dec l                                         ; $7333: $2d
    halt                                          ; $7334: $76
    and $d0                                       ; $7335: $e6 $d0
    db $f4                                        ; $7337: $f4
    dec a                                         ; $7338: $3d
    rst $20                                       ; $7339: $e7
    ld l, e                                       ; $733a: $6b
    db $e3                                        ; $733b: $e3
    call nz, Call_000_0de1                        ; $733c: $c4 $e1 $0d
    ld l, l                                       ; $733f: $6d
    rst $38                                       ; $7340: $ff
    ld l, e                                       ; $7341: $6b
    inc l                                         ; $7342: $2c
    inc c                                         ; $7343: $0c
    inc c                                         ; $7344: $0c
    inc l                                         ; $7345: $2c
    inc l                                         ; $7346: $2c
    ld l, e                                       ; $7347: $6b
    ld l, e                                       ; $7348: $6b
    ld [c], a                                     ; $7349: $e2
    or e                                          ; $734a: $b3
    ldh [$2d], a                                  ; $734b: $e0 $2d
    ret nc                                        ; $734d: $d0

    di                                            ; $734e: $f3
    add e                                         ; $734f: $83
    rst $28                                       ; $7350: $ef
    ld b, h                                       ; $7351: $44
    db $e3                                        ; $7352: $e3
    dec c                                         ; $7353: $0d
    ld l, l                                       ; $7354: $6d
    dec bc                                        ; $7355: $0b
    rst $20                                       ; $7356: $e7
    ld l, e                                       ; $7357: $6b
    ld l, e                                       ; $7358: $6b
    ld l, e                                       ; $7359: $6b
    jp nz, $bfe1                                  ; $735a: $c2 $e1 $bf

    pop hl                                        ; $735d: $e1
    dec c                                         ; $735e: $0d
    ld l, e                                       ; $735f: $6b
    ld l, e                                       ; $7360: $6b
    add hl, sp                                    ; $7361: $39
    dec l                                         ; $7362: $2d
    inc de                                        ; $7363: $13
    di                                            ; $7364: $f3
    ret nz                                        ; $7365: $c0

    push af                                       ; $7366: $f5
    ld c, l                                       ; $7367: $4d
    dec bc                                        ; $7368: $0b
    dec c                                         ; $7369: $0d
    jp nz, $fee0                                  ; $736a: $c2 $e0 $fe

    db $e3                                        ; $736d: $e3
    ld c, $7e                                     ; $736e: $0e $7e
    pop hl                                        ; $7370: $e1

jr_062_7371:
    ld l, e                                       ; $7371: $6b
    ld c, l                                       ; $7372: $4d
    dec l                                         ; $7373: $2d
    db $d3                                        ; $7374: $d3
    db $d3                                        ; $7375: $d3
    or b                                          ; $7376: $b0
    ret nc                                        ; $7377: $d0

    inc b                                         ; $7378: $04
    ldh [$81], a                                  ; $7379: $e0 $81
    ldh [$3d], a                                  ; $737b: $e0 $3d
    dec c                                         ; $737d: $0d
    pop bc                                        ; $737e: $c1
    ldh [$6c], a                                  ; $737f: $e0 $6c
    ld c, h                                       ; $7381: $4c
    ld c, h                                       ; $7382: $4c
    ld c, h                                       ; $7383: $4c
    cp a                                          ; $7384: $bf
    pop hl                                        ; $7385: $e1
    ld a, a                                       ; $7386: $7f
    ld [c], a                                     ; $7387: $e2
    pop hl                                        ; $7388: $e1
    ld c, l                                       ; $7389: $4d
    rst $20                                       ; $738a: $e7
    call nz, $df80                                ; $738b: $c4 $80 $df
    ld c, b                                       ; $738e: $48
    ret nz                                        ; $738f: $c0

    ld b, e                                       ; $7390: $43
    ldh [rOCPD], a                                ; $7391: $e0 $6b
    ld c, h                                       ; $7393: $4c
    ld c, h                                       ; $7394: $4c
    rrca                                          ; $7395: $0f
    ld l, h                                       ; $7396: $6c
    dec bc                                        ; $7397: $0b
    dec bc                                        ; $7398: $0b
    dec hl                                        ; $7399: $2b
    cp [hl]                                       ; $739a: $be
    ldh [$c0], a                                  ; $739b: $e0 $c0
    db $e4                                        ; $739d: $e4
    add d                                         ; $739e: $82
    rst $18                                       ; $739f: $df
    ld b, a                                       ; $73a0: $47
    jp Jump_000_043a                              ; $73a1: $c3 $3a $04


    pop bc                                        ; $73a4: $c1
    dec l                                         ; $73a5: $2d
    set 0, b                                      ; $73a6: $cb $c0
    ld l, e                                       ; $73a8: $6b
    dec hl                                        ; $73a9: $2b
    dec bc                                        ; $73aa: $0b
    rst $38                                       ; $73ab: $ff
    pop hl                                        ; $73ac: $e1
    ld a, c                                       ; $73ad: $79
    ldh [$c1], a                                  ; $73ae: $e0 $c1
    ld l, h                                       ; $73b0: $6c
    db $f4                                        ; $73b1: $f4
    ret nz                                        ; $73b2: $c0

    ret nz                                        ; $73b3: $c0

    or $ed                                        ; $73b4: $f6 $ed
    or d                                          ; $73b6: $b2
    adc $c0                                       ; $73b7: $ce $c0
    set 0, b                                      ; $73b9: $cb $c0
    ld c, e                                       ; $73bb: $4b
    ld c, e                                       ; $73bc: $4b
    scf                                           ; $73bd: $37
    dec bc                                        ; $73be: $0b
    dec bc                                        ; $73bf: $0b
    ld c, e                                       ; $73c0: $4b
    pop bc                                        ; $73c1: $c1
    db $e3                                        ; $73c2: $e3
    dec c                                         ; $73c3: $0d
    ld l, l                                       ; $73c4: $6d
    xor b                                         ; $73c5: $a8
    and h                                         ; $73c6: $a4
    add b                                         ; $73c7: $80
    db $db                                        ; $73c8: $db
    nop                                           ; $73c9: $00
    adc $a2                                       ; $73ca: $ce $a2
    adc d                                         ; $73cc: $8a
    and c                                         ; $73cd: $a1
    ccf                                           ; $73ce: $3f
    pop hl                                        ; $73cf: $e1
    cp a                                          ; $73d0: $bf
    pop hl                                        ; $73d1: $e1
    ld a, h                                       ; $73d2: $7c
    pop bc                                        ; $73d3: $c1
    ld bc, $00e3                                  ; $73d4: $01 $e3 $00
    ldh [rSCX], a                                 ; $73d7: $e0 $43
    rst $38                                       ; $73d9: $ff
    inc c                                         ; $73da: $0c
    ld a, e                                       ; $73db: $7b
    and [hl]                                      ; $73dc: $a6
    ret nz                                        ; $73dd: $c0

    db $e3                                        ; $73de: $e3
    dec bc                                        ; $73df: $0b
    dec hl                                        ; $73e0: $2b
    ld b, c                                       ; $73e1: $41
    pop hl                                        ; $73e2: $e1
    ld b, b                                       ; $73e3: $40
    jp $b0c5                                      ; $73e4: $c3 $c5 $b0


    di                                            ; $73e7: $f3
    xor [hl]                                      ; $73e8: $ae
    ld e, b                                       ; $73e9: $58
    add d                                         ; $73ea: $82
    push hl                                       ; $73eb: $e5
    push bc                                       ; $73ec: $c5
    and b                                         ; $73ed: $a0
    dec bc                                        ; $73ee: $0b
    pop bc                                        ; $73ef: $c1
    dec hl                                        ; $73f0: $2b
    dec hl                                        ; $73f1: $2b
    ret nz                                        ; $73f2: $c0

    ldh [$6c], a                                  ; $73f3: $e0 $6c
    ld b, c                                       ; $73f5: $41
    pop bc                                        ; $73f6: $c1
    ret nc                                        ; $73f7: $d0

    ret nz                                        ; $73f8: $c0

    db $e3                                        ; $73f9: $e3
    ld h, [hl]                                    ; $73fa: $66
    pop bc                                        ; $73fb: $c1
    add b                                         ; $73fc: $80
    jp c, $e502                                   ; $73fd: $da $02 $e5

    ld c, l                                       ; $7400: $4d
    ld c, $e1                                     ; $7401: $0e $e1
    ld l, e                                       ; $7403: $6b
    ld c, e                                       ; $7404: $4b
    ld [bc], a                                    ; $7405: $02
    ret nz                                        ; $7406: $c0

    pop hl                                        ; $7407: $e1
    ld c, h                                       ; $7408: $4c
    jp $c0c1                                      ; $7409: $c3 $c1 $c0


    and b                                         ; $740c: $a0
    and e                                         ; $740d: $a3
    add $04                                       ; $740e: $c6 $04
    cp a                                          ; $7410: $bf
    ld b, [hl]                                    ; $7411: $46
    and c                                         ; $7412: $a1
    ld [bc], a                                    ; $7413: $02
    ld [c], a                                     ; $7414: $e2
    ld c, $80                                     ; $7415: $0e $80
    pop hl                                        ; $7417: $e1
    ld c, e                                       ; $7418: $4b
    ld c, e                                       ; $7419: $4b
    ld c, e                                       ; $741a: $4b
    ld [hl-], a                                   ; $741b: $32
    pop bc                                        ; $741c: $c1
    ld b, b                                       ; $741d: $40
    and b                                         ; $741e: $a0
    nop                                           ; $741f: $00
    cp a                                          ; $7420: $bf
    add h                                         ; $7421: $84
    add e                                         ; $7422: $83
    add b                                         ; $7423: $80
    ld d, l                                       ; $7424: $55
    and b                                         ; $7425: $a0
    jp nz, Jump_000_3fc5                          ; $7426: $c2 $c5 $3f

    ldh [rPCM12], a                               ; $7429: $e0 $76
    ld [c], a                                     ; $742b: $e2
    add c                                         ; $742c: $81
    ret nz                                        ; $742d: $c0

    nop                                           ; $742e: $00
    cp a                                          ; $742f: $bf
    add c                                         ; $7430: $81
    add l                                         ; $7431: $85
    dec l                                         ; $7432: $2d
    ld b, b                                       ; $7433: $40
    add c                                         ; $7434: $81
    db $e4                                        ; $7435: $e4
    ld bc, $c0e1                                  ; $7436: $01 $e1 $c0
    ld [c], a                                     ; $7439: $e2
    ld [bc], a                                    ; $743a: $02
    jp nz, $d3c0                                  ; $743b: $c2 $c0 $d3

    rst $38                                       ; $743e: $ff
    ld [hl], c                                    ; $743f: $71
    dec l                                         ; $7440: $2d
    ld b, $e0                                     ; $7441: $06 $e0
    rst $38                                       ; $7443: $ff
    dec c                                         ; $7444: $0d
    ld l, e                                       ; $7445: $6b
    dec c                                         ; $7446: $0d
    ld c, e                                       ; $7447: $4b
    dec c                                         ; $7448: $0d
    dec hl                                        ; $7449: $2b
    dec bc                                        ; $744a: $0b
    dec hl                                        ; $744b: $2b
    rlca                                          ; $744c: $07
    ld l, e                                       ; $744d: $6b
    dec bc                                        ; $744e: $0b
    dec bc                                        ; $744f: $0b
    jp nz, $8281                                  ; $7450: $c2 $81 $82

    and d                                         ; $7453: $a2
    add b                                         ; $7454: $80
    rst $18                                       ; $7455: $df
    ld [hl], a                                    ; $7456: $77
    ld h, e                                       ; $7457: $63
    ld b, d                                       ; $7458: $42
    and b                                         ; $7459: $a0
    ld [hl], d                                    ; $745a: $72
    sub a                                         ; $745b: $97
    ld h, d                                       ; $745c: $62
    dec c                                         ; $745d: $0d
    ld b, d                                       ; $745e: $42
    ld [c], a                                     ; $745f: $e2
    ret nz                                        ; $7460: $c0

    pop hl                                        ; $7461: $e1
    dec bc                                        ; $7462: $0b
    dec c                                         ; $7463: $0d
    ld l, l                                       ; $7464: $6d
    db $e3                                        ; $7465: $e3
    push hl                                       ; $7466: $e5
    jp nc, $df80                                  ; $7467: $d2 $80 $df

    ld c, $c3                                     ; $746a: $0e $c3
    add c                                         ; $746c: $81
    ld d, [hl]                                    ; $746d: $56
    ld h, c                                       ; $746e: $61
    ld c, e                                       ; $746f: $4b
    add b                                         ; $7470: $80
    pop hl                                        ; $7471: $e1
    ld l, e                                       ; $7472: $6b
    ld c, e                                       ; $7473: $4b
    or b                                          ; $7474: $b0
    ld sp, hl                                     ; $7475: $f9
    and c                                         ; $7476: $a1
    ld [bc], a                                    ; $7477: $02
    add h                                         ; $7478: $84
    cp a                                          ; $7479: $bf
    cp [hl]                                       ; $747a: $be
    inc c                                         ; $747b: $0c
    ld h, d                                       ; $747c: $62
    dec c                                         ; $747d: $0d
    dec bc                                        ; $747e: $0b
    ret nz                                        ; $747f: $c0

    ldh [$2b], a                                  ; $7480: $e0 $2b
    ld [bc], a                                    ; $7482: $02
    add c                                         ; $7483: $81
    ldh [$0b], a                                  ; $7484: $e0 $0b
    jp nz, Jump_000_3ec0                          ; $7486: $c2 $c0 $3e

    and b                                         ; $7489: $a0
    pop af                                        ; $748a: $f1
    ldh [$c2], a                                  ; $748b: $e0 $c2
    ret nz                                        ; $748d: $c0

    ld l, d                                       ; $748e: $6a
    ld h, d                                       ; $748f: $62
    nop                                           ; $7490: $00
    cp b                                          ; $7491: $b8
    ld a, h                                       ; $7492: $7c
    and c                                         ; $7493: $a1
    add l                                         ; $7494: $85
    push bc                                       ; $7495: $c5
    ld h, c                                       ; $7496: $61
    dec bc                                        ; $7497: $0b
    dec c                                         ; $7498: $0d
    dec hl                                        ; $7499: $2b
    ld a, [bc]                                    ; $749a: $0a
    ld l, d                                       ; $749b: $6a
    ret nz                                        ; $749c: $c0

    ld [c], a                                     ; $749d: $e2
    ld b, $c3                                     ; $749e: $06 $c3
    pop hl                                        ; $74a0: $e1
    dec bc                                        ; $74a1: $0b
    dec bc                                        ; $74a2: $0b
    ld b, d                                       ; $74a3: $42
    pop hl                                        ; $74a4: $e1
    and d                                         ; $74a5: $a2
    ld h, [hl]                                    ; $74a6: $66
    add b                                         ; $74a7: $80
    ld [hl], h                                    ; $74a8: $74
    ld h, c                                       ; $74a9: $61
    add e                                         ; $74aa: $83
    inc c                                         ; $74ab: $0c
    ld h, b                                       ; $74ac: $60
    cp [hl]                                       ; $74ad: $be
    add c                                         ; $74ae: $81
    ldh [$0b], a                                  ; $74af: $e0 $0b
    dec bc                                        ; $74b1: $0b
    ld c, d                                       ; $74b2: $4a
    ld a, [bc]                                    ; $74b3: $0a
    ld a, [bc]                                    ; $74b4: $0a
    ld b, h                                       ; $74b5: $44
    add b                                         ; $74b6: $80
    dec hl                                        ; $74b7: $2b
    ret nz                                        ; $74b8: $c0

    ld a, l                                       ; $74b9: $7d
    add c                                         ; $74ba: $81
    ret nz                                        ; $74bb: $c0

    ld [c], a                                     ; $74bc: $e2
    dec b                                         ; $74bd: $05
    and $49                                       ; $74be: $e6 $49
    sbc c                                         ; $74c0: $99
    ld b, $64                                     ; $74c1: $06 $64
    adc l                                         ; $74c3: $8d
    pop hl                                        ; $74c4: $e1
    dec hl                                        ; $74c5: $2b
    ld a, [bc]                                    ; $74c6: $0a
    dec sp                                        ; $74c7: $3b
    ld a, [bc]                                    ; $74c8: $0a
    dec hl                                        ; $74c9: $2b
    add c                                         ; $74ca: $81
    and b                                         ; $74cb: $a0
    dec bc                                        ; $74cc: $0b
    ld a, [bc]                                    ; $74cd: $0a
    ld c, d                                       ; $74ce: $4a
    inc a                                         ; $74cf: $3c
    add c                                         ; $74d0: $81
    add h                                         ; $74d1: $84
    ld [hl], e                                    ; $74d2: $73
    ld e, b                                       ; $74d3: $58
    jp Jump_062_504f                              ; $74d4: $c3 $4f $50


    ld b, d                                       ; $74d7: $42
    ld b, c                                       ; $74d8: $41
    db $e3                                        ; $74d9: $e3
    ld a, [bc]                                    ; $74da: $0a
    ld a, [hl+]                                   ; $74db: $2a
    ld b, d                                       ; $74dc: $42
    jp nz, $c04a                                  ; $74dd: $c2 $4a $c0

    ld [c], a                                     ; $74e0: $e2
    ldh [$82], a                                  ; $74e1: $e0 $82
    jp nz, $22e8                                  ; $74e3: $c2 $e8 $22

    nop                                           ; $74e6: $00
    ld e, d                                       ; $74e7: $5a
    add d                                         ; $74e8: $82
    jp $61cb                                      ; $74e9: $c3 $cb $61


    ld l, e                                       ; $74ec: $6b
    ld a, [bc]                                    ; $74ed: $0a
    ld a, [hl+]                                   ; $74ee: $2a
    ld [bc], a                                    ; $74ef: $02
    rst $00                                       ; $74f0: $c7
    pop bc                                        ; $74f1: $c1
    ld l, e                                       ; $74f2: $6b
    ld a, c                                       ; $74f3: $79
    ldh [rIE], a                                  ; $74f4: $e0 $ff
    pop bc                                        ; $74f6: $c1
    add d                                         ; $74f7: $82
    ld b, a                                       ; $74f8: $47
    dec a                                         ; $74f9: $3d
    db $fd                                        ; $74fa: $fd
    dec bc                                        ; $74fb: $0b
    ld b, b                                       ; $74fc: $40
    adc e                                         ; $74fd: $8b
    ld h, c                                       ; $74fe: $61
    inc b                                         ; $74ff: $04
    add [hl]                                      ; $7500: $86
    ld h, e                                       ; $7501: $63
    ld a, l                                       ; $7502: $7d
    ld b, b                                       ; $7503: $40
    ld c, d                                       ; $7504: $4a
    ccf                                           ; $7505: $3f
    ldh [$bf], a                                  ; $7506: $e0 $bf
    pop bc                                        ; $7508: $c1
    halt                                          ; $7509: $76
    dec h                                         ; $750a: $25
    ld c, a                                       ; $750b: $4f
    or d                                          ; $750c: $b2
    dec a                                         ; $750d: $3d
    inc hl                                        ; $750e: $23
    ld l, h                                       ; $750f: $6c
    db $e3                                        ; $7510: $e3
    add h                                         ; $7511: $84
    ld bc, $4be3                                  ; $7512: $01 $e3 $4b
    dec c                                         ; $7515: $0d
    ret z                                         ; $7516: $c8

    add c                                         ; $7517: $81
    dec bc                                        ; $7518: $0b
    ld a, [bc]                                    ; $7519: $0a
    rst $38                                       ; $751a: $ff
    ldh [rP1], a                                  ; $751b: $e0 $00
    dec sp                                        ; $751d: $3b
    ld h, c                                       ; $751e: $61
    cp a                                          ; $751f: $bf
    jr nz, jr_062_7522                            ; $7520: $20 $00

jr_062_7522:
    cp l                                          ; $7522: $bd
    dec c                                         ; $7523: $0d
    ld [hl+], a                                   ; $7524: $22
    inc b                                         ; $7525: $04
    ld hl, $c24e                                  ; $7526: $21 $4e $c2
    ret nz                                        ; $7529: $c0

    db $e3                                        ; $752a: $e3
    cp d                                          ; $752b: $ba
    ret nz                                        ; $752c: $c0

    ld b, c                                       ; $752d: $41
    ld a, [bc]                                    ; $752e: $0a
    rst $38                                       ; $752f: $ff
    and d                                         ; $7530: $a2
    ld a, $c0                                     ; $7531: $3e $c0
    ldh a, [rSB]                                  ; $7533: $f0 $01
    ret                                           ; $7535: $c9


    ld e, l                                       ; $7536: $5d
    ld [$2d22], sp                                ; $7537: $08 $22 $2d
    jp z, $0041                                   ; $753a: $ca $41 $00

    ld c, d                                       ; $753d: $4a
    add b                                         ; $753e: $80
    add d                                         ; $753f: $82
    add b                                         ; $7540: $80
    add b                                         ; $7541: $80
    pop hl                                        ; $7542: $e1
    nop                                           ; $7543: $00
    ret nz                                        ; $7544: $c0

    cp $a8                                        ; $7545: $fe $a8
    ld b, e                                       ; $7547: $43
    ld a, [hl-]                                   ; $7548: $3a
    jp nc, Jump_000_0002                          ; $7549: $d2 $02 $00

    jp $c040                                      ; $754c: $c3 $40 $c0


    rst $20                                       ; $754f: $e7
    adc h                                         ; $7550: $8c
    ld bc, $bf00                                  ; $7551: $01 $00 $bf
    ld [bc], a                                    ; $7554: $02
    xor d                                         ; $7555: $aa
    adc h                                         ; $7556: $8c
    add b                                         ; $7557: $80
    add b                                         ; $7558: $80
    db $e4                                        ; $7559: $e4
    ld l, e                                       ; $755a: $6b
    pop bc                                        ; $755b: $c1
    ld [c], a                                     ; $755c: $e2
    add e                                         ; $755d: $83
    dec c                                         ; $755e: $0d
    ld c, e                                       ; $755f: $4b
    cp a                                          ; $7560: $bf
    and b                                         ; $7561: $a0
    nop                                           ; $7562: $00
    cp a                                          ; $7563: $bf
    add e                                         ; $7564: $83
    pop hl                                        ; $7565: $e1
    xor $40                                       ; $7566: $ee $40
    sub b                                         ; $7568: $90
    ld h, b                                       ; $7569: $60
    ld c, e                                       ; $756a: $4b
    ld [$e3c0], sp                                ; $756b: $08 $c0 $e3
    ld b, d                                       ; $756e: $42
    ld b, b                                       ; $756f: $40
    ld [hl], a                                    ; $7570: $77
    add e                                         ; $7571: $83
    ld c, e                                       ; $7572: $4b
    jp nz, Jump_000_3440                          ; $7573: $c2 $40 $34

    ld [bc], a                                    ; $7576: $02
    nop                                           ; $7577: $00
    cp a                                          ; $7578: $bf
    ret nz                                        ; $7579: $c0

    db $e3                                        ; $757a: $e3
    nop                                           ; $757b: $00
    cp a                                          ; $757c: $bf
    db $e4                                        ; $757d: $e4
    inc bc                                        ; $757e: $03
    and c                                         ; $757f: $a1
    halt                                          ; $7580: $76
    add d                                         ; $7581: $82
    add b                                         ; $7582: $80
    call nz, $bf00                                ; $7583: $c4 $00 $bf
    ld d, [hl]                                    ; $7586: $56
    ld bc, $c405                                  ; $7587: $01 $05 $c4
    cp [hl]                                       ; $758a: $be
    jp $2b05                                      ; $758b: $c3 $05 $2b


    ret nz                                        ; $758e: $c0

    pop bc                                        ; $758f: $c1
    ld c, e                                       ; $7590: $4b
    cp a                                          ; $7591: $bf
    ldh [rP1], a                                  ; $7592: $e0 $00
    cp a                                          ; $7594: $bf
    add b                                         ; $7595: $80
    add l                                         ; $7596: $85
    adc c                                         ; $7597: $89
    ld [c], a                                     ; $7598: $e2
    cp [hl]                                       ; $7599: $be
    push hl                                       ; $759a: $e5
    nop                                           ; $759b: $00
    ld b, b                                       ; $759c: $40
    add c                                         ; $759d: $81
    ld [hl], e                                    ; $759e: $73
    pop bc                                        ; $759f: $c1
    nop                                           ; $75a0: $00
    ld h, a                                       ; $75a1: $67
    nop                                           ; $75a2: $00
    cp h                                          ; $75a3: $bc
    ld a, a                                       ; $75a4: $7f
    pop hl                                        ; $75a5: $e1
    add $a0                                       ; $75a6: $c6 $a0
    cp e                                          ; $75a8: $bb
    ret z                                         ; $75a9: $c8

    ld a, $80                                     ; $75aa: $3e $80
    ld bc, $7f4b                                  ; $75ac: $01 $4b $7f
    ret nz                                        ; $75af: $c0

    nop                                           ; $75b0: $00
    ld e, a                                       ; $75b1: $5f
    inc b                                         ; $75b2: $04
    dec h                                         ; $75b3: $25
    push bc                                       ; $75b4: $c5
    jp nz, $807c                                  ; $75b5: $c2 $7c $80

    ld a, [$c1a2]                                 ; $75b8: $fa $a2 $c1
    ld h, c                                       ; $75bb: $61
    nop                                           ; $75bc: $00
    add c                                         ; $75bd: $81
    ldh [$80], a                                  ; $75be: $e0 $80
    and h                                         ; $75c0: $a4
    nop                                           ; $75c1: $00
    ld e, d                                       ; $75c2: $5a
    nop                                           ; $75c3: $00
    and d                                         ; $75c4: $a2
    cp [hl]                                       ; $75c5: $be
    and c                                         ; $75c6: $a1
    add $c3                                       ; $75c7: $c6 $c3
    db $fd                                        ; $75c9: $fd
    jp Jump_062_40be                              ; $75ca: $c3 $be $40


    nop                                           ; $75cd: $00
    db $fc                                        ; $75ce: $fc
    jr nz, @-$3c                                  ; $75cf: $20 $c2

    dec b                                         ; $75d1: $05
    nop                                           ; $75d2: $00
    ld e, a                                       ; $75d3: $5f
    ld d, [hl]                                    ; $75d4: $56
    add c                                         ; $75d5: $81
    cp a                                          ; $75d6: $bf
    ld [c], a                                     ; $75d7: $e2
    ld a, d                                       ; $75d8: $7a
    and h                                         ; $75d9: $a4
    dec sp                                        ; $75da: $3b
    ld [bc], a                                    ; $75db: $02
    ret nz                                        ; $75dc: $c0

    jp nz, $0000                                  ; $75dd: $c2 $00 $00

    ld e, a                                       ; $75e0: $5f
    ld a, l                                       ; $75e1: $7d
    inc hl                                        ; $75e2: $23
    cp $42                                        ; $75e3: $fe $42
    ld a, e                                       ; $75e5: $7b
    add c                                         ; $75e6: $81
    push bc                                       ; $75e7: $c5
    db $e3                                        ; $75e8: $e3
    dec [hl]                                      ; $75e9: $35
    ldh [$7c], a                                  ; $75ea: $e0 $7c
    jr nz, @-$3e                                  ; $75ec: $20 $c0

    inc d                                         ; $75ee: $14
    nop                                           ; $75ef: $00
    cp c                                          ; $75f0: $b9
    or h                                          ; $75f1: $b4
    db $fc                                        ; $75f2: $fc
    add b                                         ; $75f3: $80
    ld a, e                                       ; $75f4: $7b
    add c                                         ; $75f5: $81
    ret nz                                        ; $75f6: $c0

    push hl                                       ; $75f7: $e5
    ld a, l                                       ; $75f8: $7d
    ld h, c                                       ; $75f9: $61
    add b                                         ; $75fa: $80
    rst $18                                       ; $75fb: $df
    dec e                                         ; $75fc: $1d
    and [hl]                                      ; $75fd: $a6
    db $fc                                        ; $75fe: $fc
    add d                                         ; $75ff: $82
    nop                                           ; $7600: $00
    ret nz                                        ; $7601: $c0

    pop bc                                        ; $7602: $c1
    or a                                          ; $7603: $b7
    add l                                         ; $7604: $85
    ei                                            ; $7605: $fb
    nop                                           ; $7606: $00
    ret nz                                        ; $7607: $c0

    nop                                           ; $7608: $00
    ld a, l                                       ; $7609: $7d
    and e                                         ; $760a: $a3
    nop                                           ; $760b: $00
    ld e, a                                       ; $760c: $5f
    ld a, [hl+]                                   ; $760d: $2a
    ld bc, $e606                                  ; $760e: $01 $06 $e6
    ld bc, $712b                                  ; $7611: $01 $2b $71
    and d                                         ; $7614: $a2
    ld b, b                                       ; $7615: $40
    ret nz                                        ; $7616: $c0

    nop                                           ; $7617: $00
    cp a                                          ; $7618: $bf
    ld a, l                                       ; $7619: $7d
    dec h                                         ; $761a: $25
    cp [hl]                                       ; $761b: $be
    ld hl, $c7c6                                  ; $761c: $21 $c6 $c7
    push af                                       ; $761f: $f5
    ld h, c                                       ; $7620: $61
    ld hl, $400b                                  ; $7621: $21 $0b $40
    ret nz                                        ; $7624: $c0

    ld a, [hl]                                    ; $7625: $7e
    ld h, c                                       ; $7626: $61
    ld b, d                                       ; $7627: $42
    ld [de], a                                    ; $7628: $12
    or b                                          ; $7629: $b0
    ld [hl], b                                    ; $762a: $70
    ld c, l                                       ; $762b: $4d
    db $fc                                        ; $762c: $fc
    add d                                         ; $762d: $82
    jp nz, Jump_000_00c4                          ; $762e: $c2 $c4 $00

    ld b, b                                       ; $7631: $40
    jp Jump_000_2366                              ; $7632: $c3 $66 $23


    nop                                           ; $7635: $00
    ld e, b                                       ; $7636: $58
    sbc $27                                       ; $7637: $de $27
    db $fc                                        ; $7639: $fc
    add b                                         ; $763a: $80
    ld b, h                                       ; $763b: $44
    ld h, c                                       ; $763c: $61
    ld a, h                                       ; $763d: $7c
    jp $a2c2                                      ; $763e: $c3 $c2 $a2


    ld h, b                                       ; $7641: $60
    add c                                         ; $7642: $81
    and c                                         ; $7643: $a1
    ld h, [hl]                                    ; $7644: $66
    ld hl, $df84                                  ; $7645: $21 $84 $df
    or a                                          ; $7648: $b7
    and h                                         ; $7649: $a4
    cp [hl]                                       ; $764a: $be
    and b                                         ; $764b: $a0
    ld c, e                                       ; $764c: $4b
    dec bc                                        ; $764d: $0b
    add $a2                                       ; $764e: $c6 $a2
    ld [bc], a                                    ; $7650: $02
    ret nz                                        ; $7651: $c0

    db $e3                                        ; $7652: $e3
    dec l                                         ; $7653: $2d
    call nz, Call_000_3095                        ; $7654: $c4 $95 $30
    ld c, e                                       ; $7657: $4b
    ld a, [hl]                                    ; $7658: $7e
    rst $20                                       ; $7659: $e7
    add [hl]                                      ; $765a: $86
    and d                                         ; $765b: $a2
    cp l                                          ; $765c: $bd
    ldh [$83], a                                  ; $765d: $e0 $83
    jp Jump_062_4000                              ; $765f: $c3 $00 $40


    add b                                         ; $7662: $80
    db $e3                                        ; $7663: $e3
    add b                                         ; $7664: $80
    ld h, d                                       ; $7665: $62
    inc hl                                        ; $7666: $23
    nop                                           ; $7667: $00
    cp a                                          ; $7668: $bf
    ld a, [hl-]                                   ; $7669: $3a
    ld b, c                                       ; $766a: $41
    ei                                            ; $766b: $fb
    ld h, e                                       ; $766c: $63
    ld sp, hl                                     ; $766d: $f9
    ld b, e                                       ; $766e: $43
    ld [hl], l                                    ; $766f: $75
    ld b, c                                       ; $7670: $41
    nop                                           ; $7671: $00
    cp $05                                        ; $7672: $fe $05
    cp e                                          ; $7674: $bb
    cp d                                          ; $7675: $ba
    inc e                                         ; $7676: $1c
    ld b, l                                       ; $7677: $45
    cp l                                          ; $7678: $bd
    nop                                           ; $7679: $00
    ld c, d                                       ; $767a: $4a
    jp Jump_062_637a                              ; $767b: $c3 $7a $63


    ret nz                                        ; $767e: $c0

    push hl                                       ; $767f: $e5
    ld a, [hl]                                    ; $7680: $7e
    ld [c], a                                     ; $7681: $e2
    nop                                           ; $7682: $00
    add b                                         ; $7683: $80
    rst $18                                       ; $7684: $df
    ret nz                                        ; $7685: $c0

    pop hl                                        ; $7686: $e1
    call nz, $bbe6                                ; $7687: $c4 $e6 $bb
    push hl                                       ; $768a: $e5
    nop                                           ; $768b: $00
    cp a                                          ; $768c: $bf
    nop                                           ; $768d: $00
    xor c                                         ; $768e: $a9
    ld bc, $39c2                                  ; $768f: $01 $c2 $39
    ld b, [hl]                                    ; $7692: $46
    nop                                           ; $7693: $00
    inc [hl]                                      ; $7694: $34
    ld b, d                                       ; $7695: $42
    ld a, [hl]                                    ; $7696: $7e
    ld [hl+], a                                   ; $7697: $22
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    ld [bc], a                                    ; $769a: $02
    push hl                                       ; $769b: $e5
    ld a, l                                       ; $769c: $7d
    ld bc, $243b                                  ; $769d: $01 $3b $24
    ld a, $c3                                     ; $76a0: $3e $c3
    add b                                         ; $76a2: $80
    ld a, a                                       ; $76a3: $7f
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    and [hl]                                      ; $76a6: $a6
    ld b, c                                       ; $76a7: $41
    pop hl                                        ; $76a8: $e1
    ld bc, $f4a5                                  ; $76a9: $01 $a5 $f4
    ld [bc], a                                    ; $76ac: $02
    ret nz                                        ; $76ad: $c0

    db $e4                                        ; $76ae: $e4
    add d                                         ; $76af: $82
    ret nz                                        ; $76b0: $c0

    nop                                           ; $76b1: $00
    cp a                                          ; $76b2: $bf
    add d                                         ; $76b3: $82
    jp nz, Jump_000_2d01                          ; $76b4: $c2 $01 $2d

    ld c, e                                       ; $76b7: $4b
    ld hl, $e7c0                                  ; $76b8: $21 $c0 $e7
    pop bc                                        ; $76bb: $c1
    add b                                         ; $76bc: $80
    nop                                           ; $76bd: $00
    cp a                                          ; $76be: $bf
    nop                                           ; $76bf: $00
    and a                                         ; $76c0: $a7
    nop                                           ; $76c1: $00
    add h                                         ; $76c2: $84
    rlca                                          ; $76c3: $07
    ld h, d                                       ; $76c4: $62
    dec b                                         ; $76c5: $05
    dec bc                                        ; $76c6: $0b
    ld [hl-], a                                   ; $76c7: $32
    inc h                                         ; $76c8: $24
    dec l                                         ; $76c9: $2d
    nop                                           ; $76ca: $00
    cp a                                          ; $76cb: $bf
    nop                                           ; $76cc: $00
    and [hl]                                      ; $76cd: $a6
    ld b, c                                       ; $76ce: $41
    adc c                                         ; $76cf: $89
    nop                                           ; $76d0: $00
    push hl                                       ; $76d1: $e5
    nop                                           ; $76d2: $00
    ld h, e                                       ; $76d3: $63
    inc b                                         ; $76d4: $04
    nop                                           ; $76d5: $00
    cp a                                          ; $76d6: $bf
    nop                                           ; $76d7: $00
    add h                                         ; $76d8: $84
    dec l                                         ; $76d9: $2d
    nop                                           ; $76da: $00
    db $ed                                        ; $76db: $ed
    nop                                           ; $76dc: $00
    push bc                                       ; $76dd: $c5
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    db $fc                                        ; $76e0: $fc
    inc hl                                        ; $76e1: $23

jr_062_76e2:
    db $fc                                        ; $76e2: $fc

Jump_062_76e3:
    ld [bc], a                                    ; $76e3: $02
    add c                                         ; $76e4: $81
    ld l, e                                       ; $76e5: $6b
    db $fc                                        ; $76e6: $fc
    jr nz, jr_062_76e2                            ; $76e7: $20 $f9

    ld hl, $4241                                  ; $76e9: $21 $41 $42
    add b                                         ; $76ec: $80
    rst $18                                       ; $76ed: $df
    nop                                           ; $76ee: $00
    and a                                         ; $76ef: $a7
    ld a, e                                       ; $76f0: $7b
    nop                                           ; $76f1: $00
    dec c                                         ; $76f2: $0d
    daa                                           ; $76f3: $27
    dec l                                         ; $76f4: $2d
    dec hl                                        ; $76f5: $2b
    ld l, e                                       ; $76f6: $6b
    rst $38                                       ; $76f7: $ff
    db $e3                                        ; $76f8: $e3
    nop                                           ; $76f9: $00
    ld h, b                                       ; $76fa: $60
    dec c                                         ; $76fb: $0d
    ld [bc], a                                    ; $76fc: $02
    ret nz                                        ; $76fd: $c0

    nop                                           ; $76fe: $00
    pop hl                                        ; $76ff: $e1
    nop                                           ; $7700: $00
    ld h, d                                       ; $7701: $62
    ld bc, $bf00                                  ; $7702: $01 $00 $bf
    cp $83                                        ; $7705: $fe $83
    sub $e0                                       ; $7707: $d6 $e0
    cp $e5                                        ; $7709: $fe $e5
    ld b, h                                       ; $770b: $44
    pop bc                                        ; $770c: $c1
    nop                                           ; $770d: $00
    ld e, a                                       ; $770e: $5f
    nop                                           ; $770f: $00
    xor b                                         ; $7710: $a8
    nop                                           ; $7711: $00
    ret nz                                        ; $7712: $c0

    db $e3                                        ; $7713: $e3
    sub d                                         ; $7714: $92
    add b                                         ; $7715: $80
    ld a, [$86e1]                                 ; $7716: $fa $e1 $86
    inc bc                                        ; $7719: $03
    db $fc                                        ; $771a: $fc
    db $e4                                        ; $771b: $e4
    nop                                           ; $771c: $00
    cp a                                          ; $771d: $bf
    or [hl]                                       ; $771e: $b6
    ld l, d                                       ; $771f: $6a
    jp z, Jump_000_00d1                           ; $7720: $ca $d1 $00

    dec a                                         ; $7723: $3d
    ld [$0000], a                                 ; $7724: $ea $00 $00
    nop                                           ; $7727: $00
    cp a                                          ; $7728: $bf
    and b                                         ; $7729: $a0
    and b                                         ; $772a: $a0
    and b                                         ; $772b: $a0
    call c, $dedd                                 ; $772c: $dc $dd $de
    ld a, [$d8eb]                                 ; $772f: $fa $eb $d8
    rra                                           ; $7732: $1f
    reti                                          ; $7733: $d9


    and b                                         ; $7734: $a0
    and b                                         ; $7735: $a0
    jp nc, $fcd3                                  ; $7736: $d2 $d3 $fc

    rst $28                                       ; $7739: $ef
    add sp, -$1f                                  ; $773a: $e8 $e1
    ret nc                                        ; $773c: $d0

    db $ed                                        ; $773d: $ed
    cp a                                          ; $773e: $bf
    db $e4                                        ; $773f: $e4
    rst $18                                       ; $7740: $df
    ldh [$e1], a                                  ; $7741: $e0 $e1
    ld [c], a                                     ; $7743: $e2
    db $e3                                        ; $7744: $e3
    ld a, [$a0ea]                                 ; $7745: $fa $ea $a0
    rst $38                                       ; $7748: $ff
    jp c, $d0db                                   ; $7749: $da $db $d0

    pop de                                        ; $774c: $d1
    call nc, $a0d5                                ; $774d: $d4 $d5 $a0
    and b                                         ; $7750: $a0
    cp $fc                                        ; $7751: $fe $fc
    db $eb                                        ; $7753: $eb
    ret nc                                        ; $7754: $d0

    pop de                                        ; $7755: $d1
    jp c, $d6db                                   ; $7756: $da $db $d6

    rst $10                                       ; $7759: $d7
    and b                                         ; $775a: $a0
    ld a, [hl]                                    ; $775b: $7e
    ret nc                                        ; $775c: $d0

    db $ec                                        ; $775d: $ec
    ld [$e6e5], a                                 ; $775e: $ea $e5 $e6
    rst $20                                       ; $7761: $e7
    add sp, -$17                                  ; $7762: $e8 $e9
    ld a, [$58ea]                                 ; $7764: $fa $ea $58
    ld l, l                                       ; $7767: $6d
    ldh [$82], a                                  ; $7768: $e0 $82
    pop hl                                        ; $776a: $e1
    ld h, [hl]                                    ; $776b: $66
    ldh [$9f], a                                  ; $776c: $e0 $9f
    sbc l                                         ; $776e: $9d
    rst $38                                       ; $776f: $ff
    push hl                                       ; $7770: $e5
    sbc a                                         ; $7771: $9f
    ld a, [hl]                                    ; $7772: $7e
    and $e0                                       ; $7773: $e6 $e0
    ret nc                                        ; $7775: $d0

    db $ec                                        ; $7776: $ec
    ld b, e                                       ; $7777: $43
    xor $2f                                       ; $7778: $ee $2f
    ldh [$82], a                                  ; $777a: $e0 $82
    ld [c], a                                     ; $777c: $e2
    call nz, $a2e0                                ; $777d: $c4 $e0 $a2
    sbc h                                         ; $7780: $9c
    ld b, [hl]                                    ; $7781: $46
    rst $38                                       ; $7782: $ff
    dec bc                                        ; $7783: $0b
    inc bc                                        ; $7784: $03
    add hl, bc                                    ; $7785: $09
    inc bc                                        ; $7786: $03
    dec bc                                        ; $7787: $0b
    ld b, [hl]                                    ; $7788: $46
    ld b, [hl]                                    ; $7789: $46
    xor [hl]                                      ; $778a: $ae
    rst $00                                       ; $778b: $c7
    sbc h                                         ; $778c: $9c
    sbc l                                         ; $778d: $9d
    sbc a                                         ; $778e: $9f
    ld a, [hl]                                    ; $778f: $7e
    db $e3                                        ; $7790: $e3
    inc de                                        ; $7791: $13
    db $ed                                        ; $7792: $ed
    ld b, e                                       ; $7793: $43
    xor $a0                                       ; $7794: $ee $a0
    sub $dd                                       ; $7796: $d6 $dd
    rst $10                                       ; $7798: $d7
    inc b                                         ; $7799: $04
    pop hl                                        ; $779a: $e1
    sbc a                                         ; $779b: $9f
    sbc h                                         ; $779c: $9c
    ld b, [hl]                                    ; $779d: $46
    rst $38                                       ; $779e: $ff
    ldh [rSC], a                                  ; $779f: $e0 $02
    dec c                                         ; $77a1: $0d
    rst $38                                       ; $77a2: $ff
    ld bc, $9800                                  ; $77a3: $01 $00 $98
    dec c                                         ; $77a6: $0d
    ld [bc], a                                    ; $77a7: $02
    ld b, [hl]                                    ; $77a8: $46
    xor a                                         ; $77a9: $af
    ld b, [hl]                                    ; $77aa: $46
    ld h, e                                       ; $77ab: $63
    ld b, [hl]                                    ; $77ac: $46
    sbc [hl]                                      ; $77ad: $9e
    db $ec                                        ; $77ae: $ec
    pop bc                                        ; $77af: $c1
    inc de                                        ; $77b0: $13
    rst $28                                       ; $77b1: $ef
    ld b, e                                       ; $77b2: $43
    rst $28                                       ; $77b3: $ef
    ret c                                         ; $77b4: $d8

    reti                                          ; $77b5: $d9


    inc b                                         ; $77b6: $04
    pop hl                                        ; $77b7: $e1
    rst $38                                       ; $77b8: $ff
    sbc [hl]                                      ; $77b9: $9e
    ld b, [hl]                                    ; $77ba: $46
    xor [hl]                                      ; $77bb: $ae
    ld b, [hl]                                    ; $77bc: $46
    ld [bc], a                                    ; $77bd: $02
    rlca                                          ; $77be: $07
    rrca                                          ; $77bf: $0f
    sbc b                                         ; $77c0: $98
    cp a                                          ; $77c1: $bf
    sbc c                                         ; $77c2: $99
    sbc b                                         ; $77c3: $98
    sub a                                         ; $77c4: $97
    sbc b                                         ; $77c5: $98
    ld c, $0c                                     ; $77c6: $0e $0c
    or h                                          ; $77c8: $b4
    ldh [$9c], a                                  ; $77c9: $e0 $9c
    or c                                          ; $77cb: $b1
    sbc a                                         ; $77cc: $9f
    ldh a, [$c0]                                  ; $77cd: $f0 $c0
    inc de                                        ; $77cf: $13
    ld a, [c]                                     ; $77d0: $f2
    add b                                         ; $77d1: $80
    call z, $dbda                                 ; $77d2: $cc $da $db
    ld b, $e1                                     ; $77d5: $06 $e1
    sbc h                                         ; $77d7: $9c
    rst $38                                       ; $77d8: $ff
    ld b, [hl]                                    ; $77d9: $46
    xor a                                         ; $77da: $af
    inc c                                         ; $77db: $0c
    ld c, $9b                                     ; $77dc: $0e $9b
    rrca                                          ; $77de: $0f
    rlca                                          ; $77df: $07
    rlca                                          ; $77e0: $07
    rra                                           ; $77e1: $1f
    rlca                                          ; $77e2: $07
    sbc b                                         ; $77e3: $98
    sbc b                                         ; $77e4: $98
    sbc b                                         ; $77e5: $98
    ld [bc], a                                    ; $77e6: $02
    or e                                          ; $77e7: $b3
    ldh [$7f], a                                  ; $77e8: $e0 $7f
    pop hl                                        ; $77ea: $e1
    ld h, e                                       ; $77eb: $63
    pop hl                                        ; $77ec: $e1
    ldh a, [$80]                                  ; $77ed: $f0 $80
    rst $18                                       ; $77ef: $df
    nop                                           ; $77f0: $00
    ldh [$81], a                                  ; $77f1: $e0 $81
    ldh [rSCY], a                                 ; $77f3: $e0 $42
    pop hl                                        ; $77f5: $e1
    rlca                                          ; $77f6: $07
    ld [bc], a                                    ; $77f7: $02
    ld b, c                                       ; $77f8: $41
    dec hl                                        ; $77f9: $2b
    ld e, a                                       ; $77fa: $5f
    dec hl                                        ; $77fb: $2b
    ld [bc], a                                    ; $77fc: $02
    rrca                                          ; $77fd: $0f
    sbc b                                         ; $77fe: $98
    ld [$e13f], sp                                ; $77ff: $08 $3f $e1
    and c                                         ; $7802: $a1
    add sp, -$1f                                  ; $7803: $e8 $e1
    db $e3                                        ; $7805: $e3
    ret c                                         ; $7806: $d8

    reti                                          ; $7807: $d9


    add b                                         ; $7808: $80
    rst $18                                       ; $7809: $df
    inc b                                         ; $780a: $04
    pop bc                                        ; $780b: $c1
    ld bc, $aee1                                  ; $780c: $01 $e1 $ae
    ld b, [hl]                                    ; $780f: $46
    ld b, l                                       ; $7810: $45
    ld a, a                                       ; $7811: $7f
    ld a, [hl+]                                   ; $7812: $2a
    ld h, $20                                     ; $7813: $26 $20
    jr nz, @+$2f                                  ; $7815: $20 $2d

    ld [$3f9a], sp                                ; $7817: $08 $9a $3f
    ld [c], a                                     ; $781a: $e2
    ld l, l                                       ; $781b: $6d
    sbc [hl]                                      ; $781c: $9e
    db $ec                                        ; $781d: $ec
    and c                                         ; $781e: $a1
    jp c, $80db                                   ; $781f: $da $db $80

    sbc $d6                                       ; $7822: $de $d6
    rst $10                                       ; $7824: $d7
    inc d                                         ; $7825: $14
    pop bc                                        ; $7826: $c1
    inc sp                                        ; $7827: $33
    and c                                         ; $7828: $a1
    ld b, [hl]                                    ; $7829: $46
    set 0, b                                      ; $782a: $cb $c0
    ret nz                                        ; $782c: $c0

    db $e4                                        ; $782d: $e4
    rrca                                          ; $782e: $0f
    ld [bc], a                                    ; $782f: $02
    nop                                           ; $7830: $00
    push hl                                       ; $7831: $e5
    sub e                                         ; $7832: $93
    xor a                                         ; $7833: $af
    ld a, b                                       ; $7834: $78
    add b                                         ; $7835: $80
    rst $08                                       ; $7836: $cf
    add d                                         ; $7837: $82
    and e                                         ; $7838: $a3
    ccf                                           ; $7839: $3f
    ld [c], a                                     ; $783a: $e2
    ld b, [hl]                                    ; $783b: $46
    ld b, l                                       ; $783c: $45
    ld a, $22                                     ; $783d: $3e $22
    ld b, b                                       ; $783f: $40
    ldh [$99], a                                  ; $7840: $e0 $99
    ld [$e601], sp                                ; $7842: $08 $01 $e6
    add b                                         ; $7845: $80
    rst $18                                       ; $7846: $df
    sub $d7                                       ; $7847: $d6 $d7
    add d                                         ; $7849: $82
    and e                                         ; $784a: $a3
    ret nz                                        ; $784b: $c0

    db $e3                                        ; $784c: $e3
    ld b, [hl]                                    ; $784d: $46
    rst $08                                       ; $784e: $cf
    ld a, $35                                     ; $784f: $3e $35
    ld b, d                                       ; $7851: $42
    ld [$c0c1], sp                                ; $7852: $08 $c1 $c0
    ld b, b                                       ; $7855: $40
    jp $d1d0                                      ; $7856: $c3 $d0 $d1


    ldh a, [$80]                                  ; $7859: $f0 $80
    call c, $a061                                 ; $785b: $dc $61 $a0
    inc b                                         ; $785e: $04
    and h                                         ; $785f: $a4
    nop                                           ; $7860: $00
    db $e3                                        ; $7861: $e3
    ld b, [hl]                                    ; $7862: $46
    ld b, l                                       ; $7863: $45
    ld a, [hl-]                                   ; $7864: $3a
    dec [hl]                                      ; $7865: $35
    inc bc                                        ; $7866: $03
    ld b, b                                       ; $7867: $40
    ld [$c241], sp                                ; $7868: $08 $41 $c2
    nop                                           ; $786b: $00
    jp $bc00                                      ; $786c: $c3 $00 $bc


    rst $00                                       ; $786f: $c7
    add b                                         ; $7870: $80
    inc b                                         ; $7871: $04
    and h                                         ; $7872: $a4
    add b                                         ; $7873: $80
    pop bc                                        ; $7874: $c1
    ld a, $cb                                     ; $7875: $3e $cb
    and b                                         ; $7877: $a0
    ld b, d                                       ; $7878: $42
    dec [hl]                                      ; $7879: $35
    dec [hl]                                      ; $787a: $35
    ld b, d                                       ; $787b: $42
    ld [bc], a                                    ; $787c: $02
    ld [bc], a                                    ; $787d: $02
    pop hl                                        ; $787e: $e1
    ret nz                                        ; $787f: $c0

    and b                                         ; $7880: $a0
    ldh a, [$ec]                                  ; $7881: $f0 $ec
    add c                                         ; $7883: $81
    nop                                           ; $7884: $00
    cp h                                          ; $7885: $bc
    dec b                                         ; $7886: $05
    jp nz, $a782                                  ; $7887: $c2 $82 $a7

    ld b, [hl]                                    ; $788a: $46
    ld b, [hl]                                    ; $788b: $46
    add hl, sp                                    ; $788c: $39
    dec [hl]                                      ; $788d: $35
    inc sp                                        ; $788e: $33
    dec [hl]                                      ; $788f: $35
    add hl, sp                                    ; $7890: $39
    ld a, b                                       ; $7891: $78
    and b                                         ; $7892: $a0
    ld [bc], a                                    ; $7893: $02
    ret nz                                        ; $7894: $c0

    ld b, [hl]                                    ; $7895: $46
    sbc [hl]                                      ; $7896: $9e
    nop                                           ; $7897: $00
    cp a                                          ; $7898: $bf
    dec a                                         ; $7899: $3d
    db $e3                                        ; $789a: $e3
    ld e, b                                       ; $789b: $58
    add [hl]                                      ; $789c: $86
    add c                                         ; $789d: $81
    add d                                         ; $789e: $82
    ret nz                                        ; $789f: $c0

    ld bc, $35e4                                  ; $78a0: $01 $e4 $35
    ld a, $76                                     ; $78a3: $3e $76
    db $e3                                        ; $78a5: $e3
    sbc h                                         ; $78a6: $9c
    nop                                           ; $78a7: $00
    and b                                         ; $78a8: $a0
    add b                                         ; $78a9: $80
    db $e4                                        ; $78aa: $e4
    pop bc                                        ; $78ab: $c1
    add b                                         ; $78ac: $80
    db $dd                                        ; $78ad: $dd
    inc e                                         ; $78ae: $1c
    add d                                         ; $78af: $82
    add c                                         ; $78b0: $81
    push hl                                       ; $78b1: $e5
    ld bc, $c0e0                                  ; $78b2: $01 $e0 $c0
    ld [c], a                                     ; $78b5: $e2
    push af                                       ; $78b6: $f5
    add b                                         ; $78b7: $80
    and c                                         ; $78b8: $a1
    and b                                         ; $78b9: $a0
    rst $10                                       ; $78ba: $d7
    ld h, b                                       ; $78bb: $60
    jp Jump_000_00ae                              ; $78bc: $c3 $ae $00


    or b                                          ; $78bf: $b0
    inc b                                         ; $78c0: $04
    add c                                         ; $78c1: $81
    add d                                         ; $78c2: $82
    and c                                         ; $78c3: $a1
    xor [hl]                                      ; $78c4: $ae
    cp $e1                                        ; $78c5: $fe $e1
    ld b, h                                       ; $78c7: $44
    rra                                           ; $78c8: $1f
    inc a                                         ; $78c9: $3c
    dec [hl]                                      ; $78ca: $35
    dec [hl]                                      ; $78cb: $35
    ld a, [hl-]                                   ; $78cc: $3a
    ld b, l                                       ; $78cd: $45
    ld b, c                                       ; $78ce: $41
    db $e3                                        ; $78cf: $e3
    ld l, d                                       ; $78d0: $6a
    add b                                         ; $78d1: $80
    jp Jump_062_68ae                              ; $78d2: $c3 $ae $68


    add b                                         ; $78d5: $80
    ret nc                                        ; $78d6: $d0

    add [hl]                                      ; $78d7: $86
    ld h, d                                       ; $78d8: $62
    jp $af80                                      ; $78d9: $c3 $80 $af


    cp $e1                                        ; $78dc: $fe $e1
    ld b, b                                       ; $78de: $40
    dec [hl]                                      ; $78df: $35
    rst $38                                       ; $78e0: $ff
    ldh [rSB], a                                  ; $78e1: $e0 $01
    ld b, b                                       ; $78e3: $40
    ld b, c                                       ; $78e4: $41
    db $e3                                        ; $78e5: $e3
    db $ec                                        ; $78e6: $ec
    ld h, e                                       ; $78e7: $63
    nop                                           ; $78e8: $00
    cp e                                          ; $78e9: $bb
    ld b, a                                       ; $78ea: $47
    ld h, b                                       ; $78eb: $60
    add [hl]                                      ; $78ec: $86
    ld h, c                                       ; $78ed: $61
    jp $bf81                                      ; $78ee: $c3 $81 $bf


    pop hl                                        ; $78f1: $e1
    dec c                                         ; $78f2: $0d
    ld b, [hl]                                    ; $78f3: $46
    add b                                         ; $78f4: $80
    pop hl                                        ; $78f5: $e1
    ld [hl], $45                                  ; $78f6: $36 $45
    add d                                         ; $78f8: $82
    ret                                           ; $78f9: $c9


    nop                                           ; $78fa: $00
    cp e                                          ; $78fb: $bb
    add l                                         ; $78fc: $85
    add b                                         ; $78fd: $80
    ld [$7e61], sp                                ; $78fe: $08 $61 $7e
    ld b, c                                       ; $7901: $41
    pop hl                                        ; $7902: $e1
    xor a                                         ; $7903: $af
    ld b, l                                       ; $7904: $45
    xor a                                         ; $7905: $af
    xor [hl]                                      ; $7906: $ae
    ld b, l                                       ; $7907: $45
    ld [hl], $c1                                  ; $7908: $36 $c1
    push hl                                       ; $790a: $e5
    add e                                         ; $790b: $83
    sbc h                                         ; $790c: $9c
    sbc a                                         ; $790d: $9f
    nop                                           ; $790e: $00
    ld h, h                                       ; $790f: $64
    nop                                           ; $7910: $00
    cp c                                          ; $7911: $b9
    inc hl                                        ; $7912: $23
    ld h, b                                       ; $7913: $60
    add d                                         ; $7914: $82
    jp nz, Jump_062_61c5                          ; $7915: $c2 $c5 $61

    xor a                                         ; $7918: $af
    xor a                                         ; $7919: $af
    ld b, l                                       ; $791a: $45

jr_062_791b:
    ld b, a                                       ; $791b: $47
    ld d, d                                       ; $791c: $52
    xor a                                         ; $791d: $af
    ld bc, $40e1                                  ; $791e: $01 $e1 $40
    cp b                                          ; $7921: $b8
    and d                                         ; $7922: $a2
    sbc [hl]                                      ; $7923: $9e
    ret nz                                        ; $7924: $c0

    db $f4                                        ; $7925: $f4
    ld b, b                                       ; $7926: $40
    ld h, [hl]                                    ; $7927: $66
    and c                                         ; $7928: $a1
    nop                                           ; $7929: $00
    cp c                                          ; $792a: $b9
    adc c                                         ; $792b: $89
    ld b, c                                       ; $792c: $41
    sbc [hl]                                      ; $792d: $9e
    ld b, d                                       ; $792e: $42
    ld b, e                                       ; $792f: $43
    jp nz, Jump_062_5e51                          ; $7930: $c2 $51 $5e

    dec bc                                        ; $7933: $0b
    ld e, b                                       ; $7934: $58
    ld b, h                                       ; $7935: $44
    add c                                         ; $7936: $81
    ld [c], a                                     ; $7937: $e2
    ld b, l                                       ; $7938: $45
    add e                                         ; $7939: $83
    ld h, h                                       ; $793a: $64
    ld l, d                                       ; $793b: $6a
    ld b, d                                       ; $793c: $42
    add b                                         ; $793d: $80
    reti                                          ; $793e: $d9


    adc c                                         ; $793f: $89
    ld b, b                                       ; $7940: $40
    call c, Call_062_4286                         ; $7941: $dc $86 $42
    add d                                         ; $7944: $82
    jp $4d44                                      ; $7945: $c3 $44 $4d


    ld h, c                                       ; $7948: $61
    jp nz, Jump_000_3cc0                          ; $7949: $c2 $c0 $3c

    ld b, h                                       ; $794c: $44
    add e                                         ; $794d: $83
    ld b, a                                       ; $794e: $47
    ld d, l                                       ; $794f: $55
    ld b, d                                       ; $7950: $42
    jp $4382                                      ; $7951: $c3 $82 $43


    add b                                         ; $7954: $80
    ld a, [hl]                                    ; $7955: $7e
    ld [$4140], sp                                ; $7956: $08 $40 $41
    db $e4                                        ; $7959: $e4
    ld h, b                                       ; $795a: $60
    dec c                                         ; $795b: $0d
    ld d, d                                       ; $795c: $52
    ld b, c                                       ; $795d: $41
    ld [c], a                                     ; $795e: $e2
    ld e, [hl]                                    ; $795f: $5e
    ld d, [hl]                                    ; $7960: $56
    ret nz                                        ; $7961: $c0

    pop bc                                        ; $7962: $c1
    inc b                                         ; $7963: $04
    add d                                         ; $7964: $82
    nop                                           ; $7965: $00
    ld e, a                                       ; $7966: $5f
    inc b                                         ; $7967: $04
    add d                                         ; $7968: $82
    xor $85                                       ; $7969: $ee $85
    ld h, d                                       ; $796b: $62
    ld b, l                                       ; $796c: $45
    ld d, e                                       ; $796d: $53
    ld d, e                                       ; $796e: $53
    jp nz, Jump_000_3cc1                          ; $796f: $c2 $c1 $3c

    ld b, h                                       ; $7972: $44
    ld c, l                                       ; $7973: $4d
    inc hl                                        ; $7974: $23
    ld e, b                                       ; $7975: $58
    ld b, h                                       ; $7976: $44
    or $40                                        ; $7977: $f6 $40
    add d                                         ; $7979: $82
    and c                                         ; $797a: $a1
    nop                                           ; $797b: $00
    ld e, a                                       ; $797c: $5f
    ld [$2286], a                                 ; $797d: $ea $86 $22
    ret nz                                        ; $7980: $c0

    db $e3                                        ; $7981: $e3
    rst $30                                       ; $7982: $f7
    scf                                           ; $7983: $37
    dec a                                         ; $7984: $3d
    jr c, jr_062_798a                             ; $7985: $38 $03

    ret nz                                        ; $7987: $c0

    ld [hl], $42                                  ; $7988: $36 $42

jr_062_798a:
    ld e, [hl]                                    ; $798a: $5e
    ld h, c                                       ; $798b: $61
    pop bc                                        ; $798c: $c1
    ld d, l                                       ; $798d: $55
    add d                                         ; $798e: $82
    ld b, [hl]                                    ; $798f: $46
    nop                                           ; $7990: $00
    cp h                                          ; $7991: $bc
    and e                                         ; $7992: $a3
    jr nz, jr_062_791b                            ; $7993: $20 $86

    ld hl, $a283                                  ; $7995: $21 $83 $a2
    add hl, sp                                    ; $7998: $39
    dec [hl]                                      ; $7999: $35
    dec a                                         ; $799a: $3d
    xor h                                         ; $799b: $ac
    call nz, $aca0                                ; $799c: $c4 $a0 $ac
    ld b, b                                       ; $799f: $40
    ld b, a                                       ; $79a0: $47
    ld h, b                                       ; $79a1: $60
    ret nz                                        ; $79a2: $c0

    ldh [$82], a                                  ; $79a3: $e0 $82
    ld b, l                                       ; $79a5: $45
    xor b                                         ; $79a6: $a8
    nop                                           ; $79a7: $00
    cp e                                          ; $79a8: $bb
    ld hl, $86e3                                  ; $79a9: $21 $e3 $86
    ld h, d                                       ; $79ac: $62
    xor a                                         ; $79ad: $af
    ret z                                         ; $79ae: $c8

    ld h, b                                       ; $79af: $60
    xor l                                         ; $79b0: $ad
    add h                                         ; $79b1: $84
    and b                                         ; $79b2: $a0
    xor l                                         ; $79b3: $ad
    nop                                           ; $79b4: $00
    cp d                                          ; $79b5: $ba
    ret nz                                        ; $79b6: $c0

    nop                                           ; $79b7: $00
    ld [c], a                                     ; $79b8: $e2
    ld a, [hl]                                    ; $79b9: $7e
    push bc                                       ; $79ba: $c5
    add b                                         ; $79bb: $80
    db $dd                                        ; $79bc: $dd
    inc b                                         ; $79bd: $04
    ld h, c                                       ; $79be: $61
    add $22                                       ; $79bf: $c6 $22
    add a                                         ; $79c1: $87
    add b                                         ; $79c2: $80
    ld b, h                                       ; $79c3: $44
    and d                                         ; $79c4: $a2
    rlca                                          ; $79c5: $07
    ld e, [hl]                                    ; $79c6: $5e
    ld h, c                                       ; $79c7: $61
    ld e, d                                       ; $79c8: $5a
    push af                                       ; $79c9: $f5
    add d                                         ; $79ca: $82
    nop                                           ; $79cb: $00
    cp a                                          ; $79cc: $bf
    add [hl]                                      ; $79cd: $86
    ld b, $43                                     ; $79ce: $06 $43
    add d                                         ; $79d0: $82
    ret nz                                        ; $79d1: $c0

    push hl                                       ; $79d2: $e5
    rlca                                          ; $79d3: $07
    ld d, d                                       ; $79d4: $52
    ld h, c                                       ; $79d5: $61
    ld d, l                                       ; $79d6: $55
    ld [hl], $a2                                  ; $79d7: $36 $a2
    nop                                           ; $79d9: $00
    cp a                                          ; $79da: $bf
    add [hl]                                      ; $79db: $86
    ld b, $46                                     ; $79dc: $06 $46
    ld [hl+], a                                   ; $79de: $22
    rst $00                                       ; $79df: $c7
    ld h, b                                       ; $79e0: $60
    ld c, $c4                                     ; $79e1: $0e $c4
    add c                                         ; $79e3: $81
    ld b, d                                       ; $79e4: $42
    ld b, l                                       ; $79e5: $45
    ld e, e                                       ; $79e6: $5b
    or [hl]                                       ; $79e7: $b6
    add d                                         ; $79e8: $82
    ld b, d                                       ; $79e9: $42
    ld hl, $bf00                                  ; $79ea: $21 $00 $bf
    add [hl]                                      ; $79ed: $86
    inc bc                                        ; $79ee: $03
    ld [$8243], sp                                ; $79ef: $08 $43 $82
    dec b                                         ; $79f2: $05
    and c                                         ; $79f3: $a1
    add e                                         ; $79f4: $83
    add b                                         ; $79f5: $80
    add hl, sp                                    ; $79f6: $39
    ld [hl], a                                    ; $79f7: $77
    add h                                         ; $79f8: $84
    ld bc, $0082                                  ; $79f9: $01 $82 $00
    cp a                                          ; $79fc: $bf
    nop                                           ; $79fd: $00
    push bc                                       ; $79fe: $c5
    xor $d1                                       ; $79ff: $ee $d1
    nop                                           ; $7a01: $00
    ld b, l                                       ; $7a02: $45
    ld [hl], $3b                                  ; $7a03: $36 $3b
    ld b, e                                       ; $7a05: $43
    add b                                         ; $7a06: $80
    ld a, [hl-]                                   ; $7a07: $3a
    ld b, l                                       ; $7a08: $45
    xor a                                         ; $7a09: $af
    ld h, b                                       ; $7a0a: $60
    ld [hl], l                                    ; $7a0b: $75
    add d                                         ; $7a0c: $82
    ld [bc], a                                    ; $7a0d: $02
    ld hl, $c100                                  ; $7a0e: $21 $00 $c1
    nop                                           ; $7a11: $00
    cp a                                          ; $7a12: $bf
    inc b                                         ; $7a13: $04
    ld h, [hl]                                    ; $7a14: $66
    ld b, l                                       ; $7a15: $45
    ld b, e                                       ; $7a16: $43
    ld a, l                                       ; $7a17: $7d
    pop hl                                        ; $7a18: $e1
    rlca                                          ; $7a19: $07
    jr c, jr_062_7a59                             ; $7a1a: $38 $3d

    scf                                           ; $7a1c: $37
    cp l                                          ; $7a1d: $bd
    pop hl                                        ; $7a1e: $e1
    ld a, [hl]                                    ; $7a1f: $7e
    add l                                         ; $7a20: $85
    nop                                           ; $7a21: $00
    cp a                                          ; $7a22: $bf
    inc b                                         ; $7a23: $04
    inc h                                         ; $7a24: $24
    adc $41                                       ; $7a25: $ce $41
    nop                                           ; $7a27: $00
    ld b, d                                       ; $7a28: $42
    ld h, c                                       ; $7a29: $61
    inc a                                         ; $7a2a: $3c
    ld [c], a                                     ; $7a2b: $e2
    add b                                         ; $7a2c: $80
    ld b, e                                       ; $7a2d: $43
    add d                                         ; $7a2e: $82
    ld b, c                                       ; $7a2f: $41
    nop                                           ; $7a30: $00
    cp a                                          ; $7a31: $bf
    inc b                                         ; $7a32: $04
    inc h                                         ; $7a33: $24
    adc l                                         ; $7a34: $8d
    and b                                         ; $7a35: $a0
    cp e                                          ; $7a36: $bb
    push bc                                       ; $7a37: $c5
    nop                                           ; $7a38: $00
    cp a                                          ; $7a39: $bf
    ld b, b                                       ; $7a3a: $40
    add d                                         ; $7a3b: $82
    nop                                           ; $7a3c: $00
    ld b, c                                       ; $7a3d: $41
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    cp a                                          ; $7a40: $bf
    inc b                                         ; $7a41: $04
    daa                                           ; $7a42: $27
    ld c, e                                       ; $7a43: $4b
    ld b, d                                       ; $7a44: $42
    ld bc, $ff61                                  ; $7a45: $01 $61 $ff
    ld b, d                                       ; $7a48: $42
    nop                                           ; $7a49: $00
    ccf                                           ; $7a4a: $3f
    and d                                         ; $7a4b: $a2
    nop                                           ; $7a4c: $00
    cp a                                          ; $7a4d: $bf
    nop                                           ; $7a4e: $00
    and e                                         ; $7a4f: $a3
    ld a, [hl]                                    ; $7a50: $7e
    add e                                         ; $7a51: $83
    pop bc                                        ; $7a52: $c1
    ld [bc], a                                    ; $7a53: $02
    ccf                                           ; $7a54: $3f
    db $e3                                        ; $7a55: $e3
    cp l                                          ; $7a56: $bd
    ld h, b                                       ; $7a57: $60
    ld a, [hl]                                    ; $7a58: $7e

jr_062_7a59:
    adc b                                         ; $7a59: $88
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    ld e, a                                       ; $7a5c: $5f
    ld a, [hl]                                    ; $7a5d: $7e
    ld h, e                                       ; $7a5e: $63
    ld bc, $fc44                                  ; $7a5f: $01 $44 $fc
    ld h, c                                       ; $7a62: $61
    ld a, $63                                     ; $7a63: $3e $63
    nop                                           ; $7a65: $00
    ld e, a                                       ; $7a66: $5f
    nop                                           ; $7a67: $00
    ld b, [hl]                                    ; $7a68: $46
    ld a, h                                       ; $7a69: $7c
    add e                                         ; $7a6a: $83
    nop                                           ; $7a6b: $00
    cp a                                          ; $7a6c: $bf
    call nz, Call_062_443f                        ; $7a6d: $c4 $3f $44
    rst $38                                       ; $7a70: $ff
    jr nz, jr_062_7a73                            ; $7a71: $20 $00

jr_062_7a73:
    ld e, a                                       ; $7a73: $5f
    nop                                           ; $7a74: $00
    ld b, h                                       ; $7a75: $44
    pop bc                                        ; $7a76: $c1
    inc b                                         ; $7a77: $04
    ld b, c                                       ; $7a78: $41
    ld b, d                                       ; $7a79: $42
    ccf                                           ; $7a7a: $3f
    ld hl, $b200                                  ; $7a7b: $21 $00 $b2
    pop bc                                        ; $7a7e: $c1
    nop                                           ; $7a7f: $00
    jr nz, jr_062_7a82                            ; $7a80: $20 $00

jr_062_7a82:
    ld e, a                                       ; $7a82: $5f
    nop                                           ; $7a83: $00
    ld b, h                                       ; $7a84: $44
    ld a, l                                       ; $7a85: $7d
    ld b, d                                       ; $7a86: $42
    ld b, c                                       ; $7a87: $41
    ld b, e                                       ; $7a88: $43
    ret nz                                        ; $7a89: $c0

    ld hl, $03c0                                  ; $7a8a: $21 $c0 $03
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    cp a                                          ; $7a8f: $bf
    add b                                         ; $7a90: $80
    ld bc, $c37e                                  ; $7a91: $01 $7e $c3
    cp h                                          ; $7a94: $bc
    ld b, e                                       ; $7a95: $43
    add d                                         ; $7a96: $82
    nop                                           ; $7a97: $00
    ld b, c                                       ; $7a98: $41
    push bc                                       ; $7a99: $c5
    nop                                           ; $7a9a: $00
    db $e4                                        ; $7a9b: $e4
    nop                                           ; $7a9c: $00
    ld e, a                                       ; $7a9d: $5f
    nop                                           ; $7a9e: $00
    ld a, [hl]                                    ; $7a9f: $7e
    ret                                           ; $7aa0: $c9


    cp e                                          ; $7aa1: $bb
    add d                                         ; $7aa2: $82
    ld b, c                                       ; $7aa3: $41
    push hl                                       ; $7aa4: $e5
    nop                                           ; $7aa5: $00
    cp a                                          ; $7aa6: $bf
    or a                                          ; $7aa7: $b7
    and d                                         ; $7aa8: $a2
    inc e                                         ; $7aa9: $1c
    pop bc                                        ; $7aaa: $c1
    db $fc                                        ; $7aab: $fc
    ld b, d                                       ; $7aac: $42
    call z, Call_000_00a0                         ; $7aad: $cc $a0 $00
    ei                                            ; $7ab0: $fb
    ld h, c                                       ; $7ab1: $61
    ld b, c                                       ; $7ab2: $41
    and $00                                       ; $7ab3: $e6 $00
    cp [hl]                                       ; $7ab5: $be
    dec a                                         ; $7ab6: $3d
    add h                                         ; $7ab7: $84
    db $fc                                        ; $7ab8: $fc
    ld b, l                                       ; $7ab9: $45
    dec bc                                        ; $7aba: $0b
    ld h, b                                       ; $7abb: $60
    cp e                                          ; $7abc: $bb
    ld h, c                                       ; $7abd: $61
    ld b, c                                       ; $7abe: $41
    and $00                                       ; $7abf: $e6 $00
    nop                                           ; $7ac1: $00
    add d                                         ; $7ac2: $82
    add b                                         ; $7ac3: $80
    rst $18                                       ; $7ac4: $df
    sbc d                                         ; $7ac5: $9a
    ld hl, $64fc                                  ; $7ac6: $21 $fc $64
    ld b, b                                       ; $7ac9: $40
    ld [c], a                                     ; $7aca: $e2
    add d                                         ; $7acb: $82
    call nz, $0041                                ; $7acc: $c4 $41 $00
    nop                                           ; $7acf: $00
    cp a                                          ; $7ad0: $bf
    ld [$41bd], sp                                ; $7ad1: $08 $bd $41
    ld a, [hl]                                    ; $7ad4: $7e
    and e                                         ; $7ad5: $a3
    ld a, e                                       ; $7ad6: $7b
    ld b, h                                       ; $7ad7: $44
    ld [hl], $c2                                  ; $7ad8: $36 $c2
    inc b                                         ; $7ada: $04
    ld bc, $00a3                                  ; $7adb: $01 $a3 $00
    cp a                                          ; $7ade: $bf
    ld b, b                                       ; $7adf: $40
    and b                                         ; $7ae0: $a0
    jr jr_062_7ae3                                ; $7ae1: $18 $00

jr_062_7ae3:
    pop bc                                        ; $7ae3: $c1
    db $fc                                        ; $7ae4: $fc
    nop                                           ; $7ae5: $00
    rst $38                                       ; $7ae6: $ff
    jp Jump_000_3f45                              ; $7ae7: $c3 $45 $3f


    add e                                         ; $7aea: $83
    ld [bc], a                                    ; $7aeb: $02
    add b                                         ; $7aec: $80
    pop bc                                        ; $7aed: $c1
    nop                                           ; $7aee: $00
    cp a                                          ; $7aef: $bf
    nop                                           ; $7af0: $00
    dec a                                         ; $7af1: $3d
    inc h                                         ; $7af2: $24
    jr jr_062_7b57                                ; $7af3: $18 $62

    ld a, l                                       ; $7af5: $7d
    add [hl]                                      ; $7af6: $86
    ld a, b                                       ; $7af7: $78
    and d                                         ; $7af8: $a2
    add b                                         ; $7af9: $80
    jp $bf00                                      ; $7afa: $c3 $00 $bf


    nop                                           ; $7afd: $00
    and [hl]                                      ; $7afe: $a6
    cp l                                          ; $7aff: $bd
    inc bc                                        ; $7b00: $03
    nop                                           ; $7b01: $00
    db $fc                                        ; $7b02: $fc
    ld [$bf00], a                                 ; $7b03: $ea $00 $bf
    nop                                           ; $7b06: $00
    xor b                                         ; $7b07: $a8
    ret nz                                        ; $7b08: $c0

    add l                                         ; $7b09: $85
    cp d                                          ; $7b0a: $ba
    jp hl                                         ; $7b0b: $e9


    ld a, [hl]                                    ; $7b0c: $7e
    jr nz, jr_062_7b0f                            ; $7b0d: $20 $00

jr_062_7b0f:
    cp a                                          ; $7b0f: $bf
    nop                                           ; $7b10: $00
    and h                                         ; $7b11: $a4
    ld e, $7e                                     ; $7b12: $1e $7e
    ld h, h                                       ; $7b14: $64
    ld b, l                                       ; $7b15: $45
    ld b, e                                       ; $7b16: $43
    ld b, c                                       ; $7b17: $41
    ld b, e                                       ; $7b18: $43
    db $fd                                        ; $7b19: $fd
    ldh [$c0], a                                  ; $7b1a: $e0 $c0
    add e                                         ; $7b1c: $83
    nop                                           ; $7b1d: $00
    cp a                                          ; $7b1e: $bf
    ld d, b                                       ; $7b1f: $50
    nop                                           ; $7b20: $00
    and a                                         ; $7b21: $a7
    add c                                         ; $7b22: $81
    add c                                         ; $7b23: $81
    ld bc, $bd80                                  ; $7b24: $01 $80 $bd
    ld b, b                                       ; $7b27: $40
    dec sp                                        ; $7b28: $3b
    db $fd                                        ; $7b29: $fd
    ldh [$36], a                                  ; $7b2a: $e0 $36
    cp e                                          ; $7b2c: $bb
    ld b, b                                       ; $7b2d: $40
    ld a, b                                       ; $7b2e: $78
    nop                                           ; $7b2f: $00
    cp a                                          ; $7b30: $bf
    nop                                           ; $7b31: $00
    xor b                                         ; $7b32: $a8
    nop                                           ; $7b33: $00
    add h                                         ; $7b34: $84
    ld b, h                                       ; $7b35: $44
    inc a                                         ; $7b36: $3c
    and h                                         ; $7b37: $a4
    ld h, h                                       ; $7b38: $64
    rst $38                                       ; $7b39: $ff
    ldh [$e1], a                                  ; $7b3a: $e0 $e1
    and l                                         ; $7b3c: $a5
    rst $38                                       ; $7b3d: $ff
    ld h, d                                       ; $7b3e: $62
    nop                                           ; $7b3f: $00
    cp a                                          ; $7b40: $bf
    nop                                           ; $7b41: $00
    and a                                         ; $7b42: $a7
    nop                                           ; $7b43: $00
    add h                                         ; $7b44: $84
    ld b, d                                       ; $7b45: $42
    dec [hl]                                      ; $7b46: $35
    ld l, c                                       ; $7b47: $69
    ld a, a                                       ; $7b48: $7f
    and e                                         ; $7b49: $a3
    dec [hl]                                      ; $7b4a: $35
    dec [hl]                                      ; $7b4b: $35
    and e                                         ; $7b4c: $a3
    ld l, d                                       ; $7b4d: $6a
    dec [hl]                                      ; $7b4e: $35
    ld b, d                                       ; $7b4f: $42
    ld bc, $0083                                  ; $7b50: $01 $83 $00
    nop                                           ; $7b53: $00
    cp a                                          ; $7b54: $bf
    nop                                           ; $7b55: $00
    and d                                         ; $7b56: $a2

jr_062_7b57:
    nop                                           ; $7b57: $00
    add c                                         ; $7b58: $81
    nop                                           ; $7b59: $00
    and d                                         ; $7b5a: $a2
    ret nz                                        ; $7b5b: $c0

    ldh [rSTAT], a                                ; $7b5c: $e0 $41
    ld h, c                                       ; $7b5e: $61
    ret nz                                        ; $7b5f: $c0

    ldh [rP1], a                                  ; $7b60: $e0 $00
    ld h, $d8                                     ; $7b62: $26 $d8
    nop                                           ; $7b64: $00
    cp a                                          ; $7b65: $bf
    nop                                           ; $7b66: $00
    add $01                                       ; $7b67: $c6 $01
    add c                                         ; $7b69: $81
    ld l, e                                       ; $7b6a: $6b
    ld [hl], c                                    ; $7b6b: $71
    rst $38                                       ; $7b6c: $ff
    ldh [$6d], a                                  ; $7b6d: $e0 $6d
    inc a                                         ; $7b6f: $3c
    ld bc, $c044                                  ; $7b70: $01 $44 $c0
    ld b, d                                       ; $7b73: $42
    nop                                           ; $7b74: $00
    cp a                                          ; $7b75: $bf
    nop                                           ; $7b76: $00
    and e                                         ; $7b77: $a3
    nop                                           ; $7b78: $00
    add [hl]                                      ; $7b79: $86
    ret nz                                        ; $7b7a: $c0

    rst $00                                       ; $7b7b: $c7
    ret nz                                        ; $7b7c: $c0

    add d                                         ; $7b7d: $82
    nop                                           ; $7b7e: $00
    cp a                                          ; $7b7f: $bf
    sbc $00                                       ; $7b80: $de $00
    xor b                                         ; $7b82: $a8
    sbc a                                         ; $7b83: $9f
    sbc l                                         ; $7b84: $9d
    sbc l                                         ; $7b85: $9d
    sbc h                                         ; $7b86: $9c
    ld b, b                                       ; $7b87: $40
    rst $00                                       ; $7b88: $c7
    sbc h                                         ; $7b89: $9c
    sbc l                                         ; $7b8a: $9d
    ld b, b                                       ; $7b8b: $40
    ld bc, $00a1                                  ; $7b8c: $01 $a1 $00
    cp a                                          ; $7b8f: $bf
    nop                                           ; $7b90: $00
    and d                                         ; $7b91: $a2
    ld a, [hl]                                    ; $7b92: $7e
    ld h, h                                       ; $7b93: $64
    cp l                                          ; $7b94: $bd
    pop hl                                        ; $7b95: $e1
    cp $e5                                        ; $7b96: $fe $e5
    sbc a                                         ; $7b98: $9f
    db $ec                                        ; $7b99: $ec
    ld b, c                                       ; $7b9a: $41
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    cp a                                          ; $7b9d: $bf
    nop                                           ; $7b9e: $00
    and e                                         ; $7b9f: $a3
    ld a, [hl]                                    ; $7ba0: $7e
    add h                                         ; $7ba1: $84
    rst $38                                       ; $7ba2: $ff
    ld [$c104], a                                 ; $7ba3: $ea $04 $c1
    nop                                           ; $7ba6: $00
    cp a                                          ; $7ba7: $bf
    cp l                                          ; $7ba8: $bd
    ld b, e                                       ; $7ba9: $43
    ld a, [hl]                                    ; $7baa: $7e
    rst $20                                       ; $7bab: $e7
    nop                                           ; $7bac: $00
    db $fc                                        ; $7bad: $fc
    rst $20                                       ; $7bae: $e7
    inc b                                         ; $7baf: $04
    pop bc                                        ; $7bb0: $c1
    nop                                           ; $7bb1: $00
    or e                                          ; $7bb2: $b3
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    nop                                           ; $7bb5: $00
    pop bc                                        ; $7bb6: $c1
    nop                                           ; $7bb7: $00
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
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    ld bc, $fe80                                  ; $7bc4: $01 $80 $fe
    ldh [rIE], a                                  ; $7bc7: $e0 $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    add sp, $00                                   ; $7bcd: $e8 $00
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    ld [bc], a                                    ; $7bd1: $02
    nop                                           ; $7bd2: $00
    ld h, $04                                     ; $7bd3: $26 $04

Call_062_7bd5:
    ld [bc], a                                    ; $7bd5: $02
    ld bc, $061a                                  ; $7bd6: $01 $1a $06
    ld [bc], a                                    ; $7bd9: $02
    ld [bc], a                                    ; $7bda: $02
    daa                                           ; $7bdb: $27
    rlca                                          ; $7bdc: $07
    ld [bc], a                                    ; $7bdd: $02
    inc bc                                        ; $7bde: $03
    dec de                                        ; $7bdf: $1b
    add hl, bc                                    ; $7be0: $09
    ld [bc], a                                    ; $7be1: $02
    inc b                                         ; $7be2: $04
    ld h, $0b                                     ; $7be3: $26 $0b
    ld [bc], a                                    ; $7be5: $02
    dec b                                         ; $7be6: $05
    dec de                                        ; $7be7: $1b
    dec c                                         ; $7be8: $0d
    ld [bc], a                                    ; $7be9: $02
    ld b, $25                                     ; $7bea: $06 $25
    rrca                                          ; $7bec: $0f
    ld [bc], a                                    ; $7bed: $02
    rlca                                          ; $7bee: $07
    jr jr_062_7c03                                ; $7bef: $18 $12

    ld [bc], a                                    ; $7bf1: $02
    ld [$121a], sp                                ; $7bf2: $08 $1a $12
    ld [bc], a                                    ; $7bf5: $02
    add hl, bc                                    ; $7bf6: $09
    inc e                                         ; $7bf7: $1c
    ld [de], a                                    ; $7bf8: $12
    ld [bc], a                                    ; $7bf9: $02
    ld a, [bc]                                    ; $7bfa: $0a
    inc h                                         ; $7bfb: $24
    ld [de], a                                    ; $7bfc: $12
    ld [bc], a                                    ; $7bfd: $02
    dec bc                                        ; $7bfe: $0b
    rla                                           ; $7bff: $17
    inc de                                        ; $7c00: $13
    ld [bc], a                                    ; $7c01: $02
    inc c                                         ; $7c02: $0c

jr_062_7c03:
    add hl, de                                    ; $7c03: $19
    inc de                                        ; $7c04: $13
    ld [bc], a                                    ; $7c05: $02
    dec c                                         ; $7c06: $0d
    dec de                                        ; $7c07: $1b
    inc de                                        ; $7c08: $13
    ld [bc], a                                    ; $7c09: $02
    ld c, $18                                     ; $7c0a: $0e $18
    inc d                                         ; $7c0c: $14
    ld [bc], a                                    ; $7c0d: $02
    rrca                                          ; $7c0e: $0f
    ld a, [de]                                    ; $7c0f: $1a
    inc d                                         ; $7c10: $14
    ld [bc], a                                    ; $7c11: $02
    db $10                                        ; $7c12: $10
    rla                                           ; $7c13: $17
    dec d                                         ; $7c14: $15
    ld [bc], a                                    ; $7c15: $02
    ld de, $151b                                  ; $7c16: $11 $1b $15
    ld [bc], a                                    ; $7c19: $02
    ld [de], a                                    ; $7c1a: $12
    inc hl                                        ; $7c1b: $23
    ld d, $02                                     ; $7c1c: $16 $02
    inc de                                        ; $7c1e: $13
    ld d, $18                                     ; $7c1f: $16 $18
    ld [bc], a                                    ; $7c21: $02
    inc d                                         ; $7c22: $14
    inc h                                         ; $7c23: $24
    ld a, [de]                                    ; $7c24: $1a
    ld [bc], a                                    ; $7c25: $02
    dec d                                         ; $7c26: $15
    dec d                                         ; $7c27: $15
    inc e                                         ; $7c28: $1c
    ld [bc], a                                    ; $7c29: $02
    ld d, $19                                     ; $7c2a: $16 $19
    inc e                                         ; $7c2c: $1c
    ld [bc], a                                    ; $7c2d: $02
    rla                                           ; $7c2e: $17
    dec e                                         ; $7c2f: $1d
    inc e                                         ; $7c30: $1c
    ld [bc], a                                    ; $7c31: $02
    jr @+$25                                      ; $7c32: $18 $23

    ld e, $02                                     ; $7c34: $1e $02
    add hl, de                                    ; $7c36: $19
    dec h                                         ; $7c37: $25
    ld e, $02                                     ; $7c38: $1e $02
    ld a, [de]                                    ; $7c3a: $1a
    ld [hl+], a                                   ; $7c3b: $22
    rra                                           ; $7c3c: $1f
    ld [bc], a                                    ; $7c3d: $02
    dec de                                        ; $7c3e: $1b
    inc h                                         ; $7c3f: $24
    rra                                           ; $7c40: $1f
    ld [bc], a                                    ; $7c41: $02

Jump_062_7c42:
    inc e                                         ; $7c42: $1c
    ld hl, $0220                                  ; $7c43: $21 $20 $02
    dec e                                         ; $7c46: $1d
    inc hl                                        ; $7c47: $23
    jr nz, jr_062_7c4c                            ; $7c48: $20 $02

    ld e, $25                                     ; $7c4a: $1e $25

jr_062_7c4c:
    jr nz, jr_062_7c50                            ; $7c4c: $20 $02

    rra                                           ; $7c4e: $1f
    dec d                                         ; $7c4f: $15

jr_062_7c50:
    ld hl, $2002                                  ; $7c50: $21 $02 $20
    jr nz, jr_062_7c76                            ; $7c53: $20 $21

    ld [bc], a                                    ; $7c55: $02
    ld hl, $2122                                  ; $7c56: $21 $22 $21
    ld [bc], a                                    ; $7c59: $02
    ld [hl+], a                                   ; $7c5a: $22
    inc h                                         ; $7c5b: $24
    ld hl, $2302                                  ; $7c5c: $21 $02 $23
    inc hl                                        ; $7c5f: $23
    ld [hl+], a                                   ; $7c60: $22
    ld [bc], a                                    ; $7c61: $02
    inc h                                         ; $7c62: $24
    dec h                                         ; $7c63: $25
    ld [hl+], a                                   ; $7c64: $22
    ld [bc], a                                    ; $7c65: $02
    dec h                                         ; $7c66: $25
    rla                                           ; $7c67: $17
    inc h                                         ; $7c68: $24
    ld [bc], a                                    ; $7c69: $02
    ld h, $25                                     ; $7c6a: $26 $25
    dec h                                         ; $7c6c: $25
    ld [bc], a                                    ; $7c6d: $02
    daa                                           ; $7c6e: $27
    ld a, [de]                                    ; $7c6f: $1a
    ld h, $02                                     ; $7c70: $26 $02
    jr z, jr_062_7c99                             ; $7c72: $28 $25

    add hl, hl                                    ; $7c74: $29
    ld [bc], a                                    ; $7c75: $02

jr_062_7c76:
    add hl, hl                                    ; $7c76: $29
    ld a, [de]                                    ; $7c77: $1a
    ld a, [hl+]                                   ; $7c78: $2a
    ld [bc], a                                    ; $7c79: $02
    ld a, [hl+]                                   ; $7c7a: $2a
    inc h                                         ; $7c7b: $24
    inc l                                         ; $7c7c: $2c
    ld [bc], a                                    ; $7c7d: $02
    dec hl                                        ; $7c7e: $2b
    add hl, de                                    ; $7c7f: $19
    ld l, $02                                     ; $7c80: $2e $02
    inc l                                         ; $7c82: $2c
    inc hl                                        ; $7c83: $23
    cpl                                           ; $7c84: $2f
    ld [bc], a                                    ; $7c85: $02
    dec l                                         ; $7c86: $2d
    ld a, [de]                                    ; $7c87: $1a
    ld [hl-], a                                   ; $7c88: $32
    ld [bc], a                                    ; $7c89: $02
    ld l, $24                                     ; $7c8a: $2e $24
    ld [hl-], a                                   ; $7c8c: $32
    ld [bc], a                                    ; $7c8d: $02
    cpl                                           ; $7c8e: $2f
    add hl, de                                    ; $7c8f: $19
    ld [hl], $02                                  ; $7c90: $36 $02
    jr nc, jr_062_7cb9                            ; $7c92: $30 $25

    ld [hl], $02                                  ; $7c94: $36 $02
    ld sp, $3a19                                  ; $7c96: $31 $19 $3a

jr_062_7c99:
    ld [bc], a                                    ; $7c99: $02
    ld [hl-], a                                   ; $7c9a: $32
    dec h                                         ; $7c9b: $25
    ld a, [hl-]                                   ; $7c9c: $3a
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

jr_062_7cb9:
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

Call_062_7e00:
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

Jump_062_7ea5:
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

Jump_062_7ef6:
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

Jump_062_7fc3:
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff

Jump_062_7fc5:
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
