; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

    ld e, d                                       ; $4000: $5a
    ld c, c                                       ; $4001: $49
    ld c, $40                                     ; $4002: $0e $40
    or $43                                        ; $4004: $f6 $43
    and l                                         ; $4006: $a5
    ld b, [hl]                                    ; $4007: $46
    ld bc, $f952                                  ; $4008: $01 $52 $f9
    ld e, h                                       ; $400b: $5c
    jr nz, jr_07a_4072                            ; $400c: $20 $64

    ld d, $40                                     ; $400e: $16 $40
    ld d, [hl]                                    ; $4010: $56
    ld b, b                                       ; $4011: $40
    ld [$5443], sp                                ; $4012: $08 $43 $54
    ld b, e                                       ; $4015: $43
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    ld b, $41                                     ; $401a: $06 $41
    rst $38                                       ; $401c: $ff
    ld a, a                                       ; $401d: $7f
    ld h, b                                       ; $401e: $60
    ld bc, $7fff                                  ; $401f: $01 $ff $7f
    rst $28                                       ; $4022: $ef
    dec a                                         ; $4023: $3d
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    add a                                         ; $4026: $87
    ld h, l                                       ; $4027: $65
    rst $38                                       ; $4028: $ff
    ld a, a                                       ; $4029: $7f
    sub h                                         ; $402a: $94
    ld d, d                                       ; $402b: $52
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    ld e, a                                       ; $402e: $5f
    ld c, d                                       ; $402f: $4a
    cp a                                          ; $4030: $bf
    ld e, a                                       ; $4031: $5f
    rst $18                                       ; $4032: $df
    jr z, jr_07a_4035                             ; $4033: $28 $00

jr_07a_4035:
    nop                                           ; $4035: $00
    ld a, [c]                                     ; $4036: $f2
    inc bc                                        ; $4037: $03
    ld c, e                                       ; $4038: $4b
    inc bc                                        ; $4039: $03
    ret z                                         ; $403a: $c8

    ld [de], a                                    ; $403b: $12
    ldh [rNR24], a                                ; $403c: $e0 $19
    jr nz, jr_07a_4041                            ; $403e: $20 $01

    db $10                                        ; $4040: $10

jr_07a_4041:
    ld [bc], a                                    ; $4041: $02
    jr jr_07a_4067                                ; $4042: $18 $23

    rst $38                                       ; $4044: $ff
    ld d, e                                       ; $4045: $53
    jr nz, jr_07a_4049                            ; $4046: $20 $01

    rrca                                          ; $4048: $0f

jr_07a_4049:
    nop                                           ; $4049: $00
    jr jr_07a_406d                                ; $404a: $18 $21

    sbc a                                         ; $404c: $9f
    ld d, d                                       ; $404d: $52
    jr nz, jr_07a_4051                            ; $404e: $20 $01

    nop                                           ; $4050: $00

jr_07a_4051:
    ld b, b                                       ; $4051: $40
    add h                                         ; $4052: $84
    ld d, c                                       ; $4053: $51
    db $f4                                        ; $4054: $f4
    ld a, a                                       ; $4055: $7f
    ld d, l                                       ; $4056: $55
    nop                                           ; $4057: $00
    rst $38                                       ; $4058: $ff
    db $ec                                        ; $4059: $ec
    di                                            ; $405a: $f3
    cp $e0                                        ; $405b: $fe $e0
    call z, $e8fe                                 ; $405d: $cc $fe $e8
    rrca                                          ; $4060: $0f
    cp $ec                                        ; $4061: $fe $ec
    db $fd                                        ; $4063: $fd
    rst $38                                       ; $4064: $ff
    cp $ec                                        ; $4065: $fe $ec

jr_07a_4067:
    rrca                                          ; $4067: $0f
    rrca                                          ; $4068: $0f
    ld [$0b0f], sp                                ; $4069: $08 $0f $0b
    inc c                                         ; $406c: $0c

jr_07a_406d:
    cp $fa                                        ; $406d: $fe $fa
    and $07                                       ; $406f: $e6 $07
    rst $18                                       ; $4071: $df

jr_07a_4072:
    add b                                         ; $4072: $80
    rra                                           ; $4073: $1f
    ret nz                                        ; $4074: $c0

    rst $18                                       ; $4075: $df
    ld de, $d7ff                                  ; $4076: $11 $ff $d7
    add hl, de                                    ; $4079: $19
    ld e, a                                       ; $407a: $5f
    adc d                                         ; $407b: $8a
    jp c, $de0f                                   ; $407c: $da $0f $de

    add l                                         ; $407f: $85
    ei                                            ; $4080: $fb
    dec a                                         ; $4081: $3d
    jp nz, $e2d0                                  ; $4082: $c2 $d0 $e2

    inc e                                         ; $4085: $1c
    inc sp                                        ; $4086: $33
    xor [hl]                                      ; $4087: $ae
    ld a, $bd                                     ; $4088: $3e $bd
    cp a                                          ; $408a: $bf
    and c                                         ; $408b: $a1
    ld a, $bf                                     ; $408c: $3e $bf
    inc e                                         ; $408e: $1c
    or c                                          ; $408f: $b1
    ld c, $c0                                     ; $4090: $0e $c0
    pop hl                                        ; $4092: $e1
    ld a, a                                       ; $4093: $7f
    ld a, a                                       ; $4094: $7f
    ld e, c                                       ; $4095: $59
    ld [hl], e                                    ; $4096: $73
    ld l, l                                       ; $4097: $6d
    ld c, a                                       ; $4098: $4f
    ld [hl], c                                    ; $4099: $71
    ld e, a                                       ; $409a: $5f
    ld h, b                                       ; $409b: $60
    cp $e0                                        ; $409c: $fe $e0
    db $fd                                        ; $409e: $fd
    jr nz, jr_07a_4051                            ; $409f: $20 $b0

jr_07a_40a1:
    ld [c], a                                     ; $40a1: $e2
    ld de, $9a77                                  ; $40a2: $11 $77 $9a
    halt                                          ; $40a5: $76
    cp e                                          ; $40a6: $bb
    or $df                                        ; $40a7: $f6 $df
    db $db                                        ; $40a9: $db
    sub a                                         ; $40aa: $97
    ld a, c                                       ; $40ab: $79
    rst $30                                       ; $40ac: $f7
    add sp, -$60                                  ; $40ad: $e8 $a0
    ld [c], a                                     ; $40af: $e2
    push bc                                       ; $40b0: $c5
    ccf                                           ; $40b1: $3f
    rst $38                                       ; $40b2: $ff

jr_07a_40b3:
    and $ec                                       ; $40b3: $e6 $ec
    scf                                           ; $40b5: $37
    db $ed                                        ; $40b6: $ed
    ld [hl], $ed                                  ; $40b7: $36 $ed
    sub $1d                                       ; $40b9: $d6 $1d
    db $fd                                        ; $40bb: $fd
    ld [c], a                                     ; $40bc: $e2
    sub b                                         ; $40bd: $90
    pop hl                                        ; $40be: $e1
    rst $28                                       ; $40bf: $ef
    add a                                         ; $40c0: $87
    ld l, h                                       ; $40c1: $6c
    set 1, a                                      ; $40c2: $cb $cf
    ld l, a                                       ; $40c4: $6f
    rst $38                                       ; $40c5: $ff
    ret c                                         ; $40c6: $d8

    ld l, a                                       ; $40c7: $6f
    rst $18                                       ; $40c8: $df
    ld h, a                                       ; $40c9: $67
    call c, $f023                                 ; $40ca: $dc $23 $f0
    nop                                           ; $40cd: $00
    rst $38                                       ; $40ce: $ff
    ldh a, [rP1]                                  ; $40cf: $f0 $00
    ret nz                                        ; $40d1: $c0

    nop                                           ; $40d2: $00
    ret nz                                        ; $40d3: $c0

    add b                                         ; $40d4: $80
    add b                                         ; $40d5: $80
    ld b, b                                       ; $40d6: $40
    rst $38                                       ; $40d7: $ff
    ld b, b                                       ; $40d8: $40
    add b                                         ; $40d9: $80
    ret nz                                        ; $40da: $c0

    nop                                           ; $40db: $00
    ld b, b                                       ; $40dc: $40
    add b                                         ; $40dd: $80
    ld a, a                                       ; $40de: $7f
    nop                                           ; $40df: $00
    cp $fe                                        ; $40e0: $fe $fe
    ldh [rSTAT], a                                ; $40e2: $e0 $41
    ld e, a                                       ; $40e4: $5f
    ld l, c                                       ; $40e5: $69
    ld e, e                                       ; $40e6: $5b
    ld l, l                                       ; $40e7: $6d
    ld e, e                                       ; $40e8: $5b
    ld l, l                                       ; $40e9: $6d
    rst $38                                       ; $40ea: $ff

jr_07a_40eb:
    ld a, a                                       ; $40eb: $7f
    ld [hl], $64                                  ; $40ec: $36 $64
    dec de                                        ; $40ee: $1b
    cp a                                          ; $40ef: $bf
    jr nz, jr_07a_40a1                            ; $40f0: $20 $af

    jr nc, jr_07a_40b3                            ; $40f2: $30 $bf

    rst $28                                       ; $40f4: $ef
    inc a                                         ; $40f5: $3c
    ld [hl], e                                    ; $40f6: $73
    cp [hl]                                       ; $40f7: $be
    ld l, [hl]                                    ; $40f8: $6e
    or e                                          ; $40f9: $b3
    cp $e1                                        ; $40fa: $fe $e1
    xor $fd                                       ; $40fc: $ee $fd
    ld de, $e1e0                                  ; $40fe: $11 $e0 $e1
    rst $38                                       ; $4101: $ff
    jr c, jr_07a_40eb                             ; $4102: $38 $e7

    ld e, h                                       ; $4104: $5c
    db $dd                                        ; $4105: $dd
    ld h, [hl]                                    ; $4106: $66
    rst $38                                       ; $4107: $ff
    db $dd                                        ; $4108: $dd
    ld h, [hl]                                    ; $4109: $66
    db $fd                                        ; $410a: $fd
    ld a, [hl-]                                   ; $410b: $3a
    db $e3                                        ; $410c: $e3
    inc e                                         ; $410d: $1c
    inc bc                                        ; $410e: $03
    ld bc, $03bf                                  ; $410f: $01 $bf $03
    ld bc, $0383                                  ; $4112: $01 $83 $03
    add e                                         ; $4115: $83
    ld bc, $e2fe                                  ; $4116: $01 $fe $e2
    nop                                           ; $4119: $00
    db $fd                                        ; $411a: $fd
    add e                                         ; $411b: $83
    ld [hl], d                                    ; $411c: $72
    pop hl                                        ; $411d: $e1
    add b                                         ; $411e: $80
    rst $38                                       ; $411f: $ff
    adc e                                         ; $4120: $8b
    ld a, $cd                                     ; $4121: $3e $cd
    ld a, c                                       ; $4123: $79
    rst $38                                       ; $4124: $ff
    adc [hl]                                      ; $4125: $8e
    ld a, e                                       ; $4126: $7b
    adc h                                         ; $4127: $8c
    ei                                            ; $4128: $fb
    call z, Call_07a_649b                         ; $4129: $cc $9b $64
    rst $38                                       ; $412c: $ff
    rst $38                                       ; $412d: $ff
    db $10                                        ; $412e: $10
    rst $30                                       ; $412f: $f7
    ld [$31ff], sp                                ; $4130: $08 $ff $31
    ld [hl], a                                    ; $4133: $77
    sbc d                                         ; $4134: $9a
    rst $30                                       ; $4135: $f7
    sbc a                                         ; $4136: $9f
    dec de                                        ; $4137: $1b
    or $1b                                        ; $4138: $f6 $1b
    rst $30                                       ; $413a: $f7
    add hl, de                                    ; $413b: $19
    db $f4                                        ; $413c: $f4
    ldh [$0e], a                                  ; $413d: $e0 $0e
    pop hl                                        ; $413f: $e1
    jp Jump_000_3eff                              ; $4140: $c3 $ff $3e


    push hl                                       ; $4143: $e5
    rst $28                                       ; $4144: $ef
    db $d3                                        ; $4145: $d3
    ld e, $e1                                     ; $4146: $1e $e1
    rst $38                                       ; $4148: $ff
    rst $00                                       ; $4149: $c7
    rst $38                                       ; $414a: $ff
    inc e                                         ; $414b: $1c
    db $e3                                        ; $414c: $e3
    db $fd                                        ; $414d: $fd
    nop                                           ; $414e: $00
    db $fd                                        ; $414f: $fd
    nop                                           ; $4150: $00
    ld sp, hl                                     ; $4151: $f9
    ret nz                                        ; $4152: $c0

    rst $38                                       ; $4153: $ff
    add hl, de                                    ; $4154: $19
    ldh [$f9], a                                  ; $4155: $e0 $f9
    add b                                         ; $4157: $80
    ld a, c                                       ; $4158: $79
    ret nz                                        ; $4159: $c0

    reti                                          ; $415a: $d9


    and b                                         ; $415b: $a0
    sbc a                                         ; $415c: $9f
    add hl, sp                                    ; $415d: $39
    ret nz                                        ; $415e: $c0

    and b                                         ; $415f: $a0
    nop                                           ; $4160: $00
    and b                                         ; $4161: $a0
    cp l                                          ; $4162: $bd
    jp z, $c7e0                                   ; $4163: $ca $e0 $c7

    ei                                            ; $4166: $fb
    xor b                                         ; $4167: $a8
    cp $e2                                        ; $4168: $fe $e2
    ret nc                                        ; $416a: $d0

    set 6, b                                      ; $416b: $cb $f0
    pop hl                                        ; $416d: $e1
    db $fc                                        ; $416e: $fc
    cp h                                          ; $416f: $bc
    jp z, Jump_07a_7f80                           ; $4170: $ca $80 $7f

    ret nz                                        ; $4173: $c0

    ldh [$f8], a                                  ; $4174: $e0 $f8
    inc l                                         ; $4176: $2c
    ldh [$fe], a                                  ; $4177: $e0 $fe
    push hl                                       ; $4179: $e5
    sub b                                         ; $417a: $90
    jp nz, Jump_000_0c07                          ; $417b: $c2 $07 $0c

    dec bc                                        ; $417e: $0b
    dec bc                                        ; $417f: $0b
    dec c                                         ; $4180: $0d
    cp a                                          ; $4181: $bf
    rrca                                          ; $4182: $0f
    ld b, $0c                                     ; $4183: $06 $0c
    inc bc                                        ; $4185: $03
    rrca                                          ; $4186: $0f

jr_07a_4187:
    rlca                                          ; $4187: $07
    sub b                                         ; $4188: $90
    jp nz, $ff0e                                  ; $4189: $c2 $0e $ff

    ld sp, hl                                     ; $418c: $f9
    sub a                                         ; $418d: $97
    or a                                          ; $418e: $b7
    reti                                          ; $418f: $d9


    or a                                          ; $4190: $b7
    reti                                          ; $4191: $d9


    cp a                                          ; $4192: $bf
    adc $ff                                       ; $4193: $ce $ff
    cp b                                          ; $4195: $b8
    ld b, a                                       ; $4196: $47
    rst $38                                       ; $4197: $ff
    ld h, c                                       ; $4198: $61
    rst $28                                       ; $4199: $ef
    ld [hl-], a                                   ; $419a: $32
    xor $33                                       ; $419b: $ee $33
    ld a, e                                       ; $419d: $7b
    rst $28                                       ; $419e: $ef
    scf                                           ; $419f: $37
    jr nz, jr_07a_4187                            ; $41a0: $20 $e5

    rst $38                                       ; $41a2: $ff

jr_07a_41a3:
    add b                                         ; $41a3: $80
    ccf                                           ; $41a4: $3f
    ret nz                                        ; $41a5: $c0

    xor h                                         ; $41a6: $ac
    jp nz, $80fd                                  ; $41a7: $c2 $fd $80

    ld h, [hl]                                    ; $41aa: $66
    call nz, $f318                                ; $41ab: $c4 $18 $f3
    inc l                                         ; $41ae: $2c
    rst $28                                       ; $41af: $ef
    ld sp, $ffff                                  ; $41b0: $31 $ff $ff
    ld [hl], b                                    ; $41b3: $70
    rst $20                                       ; $41b4: $e7
    add hl, sp                                    ; $41b5: $39
    rst $28                                       ; $41b6: $ef
    ld [hl-], a                                   ; $41b7: $32
    rst $28                                       ; $41b8: $ef
    ld sp, $ffef                                  ; $41b9: $31 $ef $ff
    db $10                                        ; $41bc: $10
    rst $38                                       ; $41bd: $ff
    ld b, $fe                                     ; $41be: $06 $fe
    inc bc                                        ; $41c0: $03
    cp $c3                                        ; $41c1: $fe $c3

jr_07a_41c3:
    ld a, $ff                                     ; $41c3: $3e $ff
    db $e3                                        ; $41c5: $e3
    xor $f3                                       ; $41c6: $ee $f3
    ld l, $f3                                     ; $41c8: $2e $f3

jr_07a_41ca:
    cp $d3                                        ; $41ca: $fe $d3
    ld d, $ff                                     ; $41cc: $16 $ff
    jp hl                                         ; $41ce: $e9


    rst $38                                       ; $41cf: $ff
    ld h, b                                       ; $41d0: $60
    rst $28                                       ; $41d1: $ef
    jr nc, jr_07a_41c3                            ; $41d2: $30 $ef

    inc sp                                        ; $41d4: $33
    xor $7d                                       ; $41d5: $ee $7d
    dec [hl]                                      ; $41d7: $35
    db $fc                                        ; $41d8: $fc
    ldh [$31], a                                  ; $41d9: $e0 $31
    rst $28                                       ; $41db: $ef
    scf                                           ; $41dc: $37
    db $ec                                        ; $41dd: $ec
    inc de                                        ; $41de: $13
    jr nc, jr_07a_41a3                            ; $41df: $30 $c2

    rst $38                                       ; $41e1: $ff
    ret nz                                        ; $41e2: $c0

    rra                                           ; $41e3: $1f
    ldh [rIE], a                                  ; $41e4: $e0 $ff
    add b                                         ; $41e6: $80
    ld a, a                                       ; $41e7: $7f
    ret nz                                        ; $41e8: $c0

    rst $18                                       ; $41e9: $df
    ret                                           ; $41ea: $c9


    and b                                         ; $41eb: $a0
    or h                                          ; $41ec: $b4
    ldh [rP1], a                                  ; $41ed: $e0 $00
    pop hl                                        ; $41ef: $e1
    ld [hl-], a                                   ; $41f0: $32
    ld [bc], a                                    ; $41f1: $02
    pop hl                                        ; $41f2: $e1
    cp $e2                                        ; $41f3: $fe $e2
    add hl, bc                                    ; $41f5: $09
    db $fc                                        ; $41f6: $fc
    cp $50                                        ; $41f7: $fe $50
    ldh [$fc], a                                  ; $41f9: $e0 $fc

jr_07a_41fb:
    ret nz                                        ; $41fb: $c0

    cp h                                          ; $41fc: $bc
    ld h, b                                       ; $41fd: $60
    ld l, h                                       ; $41fe: $6c
    or b                                          ; $41ff: $b0
    db $ec                                        ; $4200: $ec
    ld a, l                                       ; $4201: $7d

jr_07a_4202:
    jr nc, jr_07a_4202                            ; $4202: $30 $fe

    ldh [rNR10], a                                ; $4204: $e0 $10
    rra                                           ; $4206: $1f
    jr jr_07a_4224                                ; $4207: $18 $1b

    inc c                                         ; $4209: $0c
    cp $e0                                        ; $420a: $fe $e0
    db $dd                                        ; $420c: $dd
    dec c                                         ; $420d: $0d
    cp $e2                                        ; $420e: $fe $e2
    inc c                                         ; $4210: $0c
    dec de                                        ; $4211: $1b
    inc b                                         ; $4212: $04
    ldh a, [$a2]                                  ; $4213: $f0 $a2
    ld [c], a                                     ; $4215: $e2
    sbc [hl]                                      ; $4216: $9e
    rst $38                                       ; $4217: $ff
    ld [hl], e                                    ; $4218: $73
    ld [hl], a                                    ; $4219: $77
    sbc c                                         ; $421a: $99
    ld [hl], a                                    ; $421b: $77
    sbc c                                         ; $421c: $99
    rst $30                                       ; $421d: $f7
    add sp, -$71                                  ; $421e: $e8 $8f
    push af                                       ; $4220: $f5
    ld [hl], b                                    ; $4221: $70
    ldh [$a2], a                                  ; $4222: $e0 $a2

jr_07a_4224:
    inc hl                                        ; $4224: $23
    and b                                         ; $4225: $a0
    ldh [$57], a                                  ; $4226: $e0 $57
    ld e, h                                       ; $4228: $5c
    rst $20                                       ; $4229: $e7
    rst $18                                       ; $422a: $df
    rst $28                                       ; $422b: $ef
    and e                                         ; $422c: $a3
    cp [hl]                                       ; $422d: $be
    ld b, c                                       ; $422e: $41
    ldh [rNR43], a                                ; $422f: $e0 $22
    ldh [$e0], a                                  ; $4231: $e0 $e0
    add b                                         ; $4233: $80
    ld h, b                                       ; $4234: $60
    rst $38                                       ; $4235: $ff
    ret nz                                        ; $4236: $c0

    ret nz                                        ; $4237: $c0

    and b                                         ; $4238: $a0
    jr nz, jr_07a_41fb                            ; $4239: $20 $c0

    ldh [$80], a                                  ; $423b: $e0 $80
    jr nz, jr_07a_41ca                            ; $423d: $20 $8b

    ret nz                                        ; $423f: $c0

    add b                                         ; $4240: $80
    ld [de], a                                    ; $4241: $12
    ldh [$f8], a                                  ; $4242: $e0 $f8
    cp d                                          ; $4244: $ba
    xor b                                         ; $4245: $a8
    add b                                         ; $4246: $80
    and l                                         ; $4247: $a5
    db $fc                                        ; $4248: $fc
    push bc                                       ; $4249: $c5
    ld a, a                                       ; $424a: $7f
    xor a                                         ; $424b: $af
    nop                                           ; $424c: $00
    rra                                           ; $424d: $1f
    nop                                           ; $424e: $00

jr_07a_424f:
    rlca                                          ; $424f: $07
    or b                                          ; $4250: $b0
    ret nc                                        ; $4251: $d0

    rra                                           ; $4252: $1f
    halt                                          ; $4253: $76
    xor c                                         ; $4254: $a9
    ld [$0bf3], sp                                ; $4255: $08 $f3 $0b
    dec c                                         ; $4258: $0d
    cp $e1                                        ; $4259: $fe $e1
    sbc $c1                                       ; $425b: $de $c1
    rst $30                                       ; $425d: $f7
    ld [bc], a                                    ; $425e: $02
    or $01                                        ; $425f: $f6 $01
    rst $38                                       ; $4261: $ff
    rst $30                                       ; $4262: $f7
    ld h, $e6                                     ; $4263: $26 $e6
    inc sp                                        ; $4265: $33
    ld h, [hl]                                    ; $4266: $66
    or e                                          ; $4267: $b3
    ld h, [hl]                                    ; $4268: $66
    or e                                          ; $4269: $b3
    cp a                                          ; $426a: $bf
    and $d3                                       ; $426b: $e6 $d3
    sub [hl]                                      ; $426d: $96
    ld h, c                                       ; $426e: $61
    rst $38                                       ; $426f: $ff
    ld hl, $e002                                  ; $4270: $21 $02 $e0
    ld [hl], c                                    ; $4273: $71
    ld a, [$e002]                                 ; $4274: $fa $02 $e0
    ld sp, $c0fa                                  ; $4277: $31 $fa $c0
    add hl, de                                    ; $427a: $19
    di                                            ; $427b: $f3
    inc c                                         ; $427c: $0c
    cp $00                                        ; $427d: $fe $00

jr_07a_427f:
    rst $38                                       ; $427f: $ff
    ld a, [hl]                                    ; $4280: $7e
    add b                                         ; $4281: $80
    ld a, [hl]                                    ; $4282: $7e
    ldh [$9e], a                                  ; $4283: $e0 $9e
    ldh a, [rPCM12]                               ; $4285: $f0 $76
    sbc b                                         ; $4287: $98
    cp $fe                                        ; $4288: $fe $fe
    ld [c], a                                     ; $428a: $e2
    adc b                                         ; $428b: $88
    rrca                                          ; $428c: $0f
    inc b                                         ; $428d: $04
    dec c                                         ; $428e: $0d
    ld b, $0f                                     ; $428f: $06 $0f
    ld c, $ef                                     ; $4291: $0e $ef
    inc c                                         ; $4293: $0c
    rlca                                          ; $4294: $07
    dec c                                         ; $4295: $0d
    ld b, $f8                                     ; $4296: $06 $f8
    ldh [$03], a                                  ; $4298: $e0 $03

jr_07a_429a:
    ld c, $01                                     ; $429a: $0e $01
    ei                                            ; $429c: $fb
    rst $38                                       ; $429d: $ff
    jr nz, @-$0e                                  ; $429e: $20 $f0

    ret nz                                        ; $42a0: $c0

    inc a                                         ; $42a1: $3c
    di                                            ; $42a2: $f3
    ld a, $ee                                     ; $42a3: $3e $ee
    inc sp                                        ; $42a5: $33
    and $fe                                       ; $42a6: $e6 $fe
    pop hl                                        ; $42a8: $e1
    ld l, [hl]                                    ; $42a9: $6e
    sub c                                         ; $42aa: $91
    jr nz, jr_07a_424f                            ; $42ab: $20 $a2

    ret nc                                        ; $42ad: $d0

    and b                                         ; $42ae: $a0
    db $fd                                        ; $42af: $fd
    ld a, d                                       ; $42b0: $7a
    jp Jump_07a_7c9f                              ; $42b1: $c3 $9f $7c


    rst $38                                       ; $42b4: $ff
    jr c, jr_07a_429a                             ; $42b5: $38 $e3

    inc e                                         ; $42b7: $1c
    call c, $d2a1                                 ; $42b8: $dc $a1 $d2
    and b                                         ; $42bb: $a0
    ld [bc], a                                    ; $42bc: $02
    xor $d2                                       ; $42bd: $ee $d2
    and d                                         ; $42bf: $a2
    inc bc                                        ; $42c0: $03
    add d                                         ; $42c1: $82
    ld bc, $a200                                  ; $42c2: $01 $00 $a2
    push hl                                       ; $42c5: $e5
    rrca                                          ; $42c6: $0f
    or $ff                                        ; $42c7: $f6 $ff
    db $fc                                        ; $42c9: $fc
    rst $00                                       ; $42ca: $c7
    ccf                                           ; $42cb: $3f
    and $ed                                       ; $42cc: $e6 $ed
    rst $10                                       ; $42ce: $d7
    dec e                                         ; $42cf: $1d
    and $fe                                       ; $42d0: $e6 $fe
    ldh a, [$82]                                  ; $42d2: $f0 $82
    add a                                         ; $42d4: $87
    ld a, h                                       ; $42d5: $7c
    set 3, e                                      ; $42d6: $cb $db
    ld l, h                                       ; $42d8: $6c
    db $db                                        ; $42d9: $db
    ld l, h                                       ; $42da: $6c
    rst $28                                       ; $42db: $ef
    rst $18                                       ; $42dc: $df
    and a                                         ; $42dd: $a7
    inc a                                         ; $42de: $3c
    jp $82e0                                      ; $42df: $c3 $e0 $82


    ld d, $fc                                     ; $42e2: $16 $fc
    sbc e                                         ; $42e4: $9b
    rst $38                                       ; $42e5: $ff
    or e                                          ; $42e6: $b3
    call c, $d8b7                                 ; $42e7: $dc $b7 $d8
    or a                                          ; $42ea: $b7
    ld e, b                                       ; $42eb: $58
    ld [hl], a                                    ; $42ec: $77
    adc b                                         ; $42ed: $88
    sub h                                         ; $42ee: $94
    and b                                         ; $42ef: $a0
    pop hl                                        ; $42f0: $e1
    ld [hl], d                                    ; $42f1: $72
    ret nz                                        ; $42f2: $c0

    jr c, jr_07a_427f                             ; $42f3: $38 $8a

    ret nz                                        ; $42f5: $c0

    jr nc, jr_07a_4368                            ; $42f6: $30 $70

    pop hl                                        ; $42f8: $e1
    ret nz                                        ; $42f9: $c0

    adc c                                         ; $42fa: $89
    cp $03                                        ; $42fb: $fe $03
    add b                                         ; $42fd: $80
    ld a, $f0                                     ; $42fe: $3e $f0
    ret nz                                        ; $4300: $c0

    cp $e7                                        ; $4301: $fe $e7
    rst $38                                       ; $4303: $ff
    pop hl                                        ; $4304: $e1
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    ld b, c                                       ; $4308: $41
    ld [$ffff], sp                                ; $4309: $08 $ff $ff
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    rst $38                                       ; $430e: $ff
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    ld hl, sp-$09                                 ; $4312: $f8 $f7

jr_07a_4314:
    jr z, jr_07a_4314                             ; $4314: $28 $fe

    ldh [rP1], a                                  ; $4316: $e0 $00
    ld sp, hl                                     ; $4318: $f9
    ld [c], a                                     ; $4319: $e2
    db $fc                                        ; $431a: $fc
    db $e3                                        ; $431b: $e3
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    rst $38                                       ; $431e: $ff
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    rst $38                                       ; $4321: $ff
    rst $38                                       ; $4322: $ff
    rst $38                                       ; $4323: $ff
    rst $38                                       ; $4324: $ff
    rst $38                                       ; $4325: $ff
    rst $38                                       ; $4326: $ff

jr_07a_4327:
    rst $38                                       ; $4327: $ff
    nop                                           ; $4328: $00
    rst $38                                       ; $4329: $ff
    rst $38                                       ; $432a: $ff
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff
    rst $38                                       ; $4330: $ff
    rst $38                                       ; $4331: $ff
    rst $38                                       ; $4332: $ff
    rst $38                                       ; $4333: $ff
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    rst $38                                       ; $4336: $ff
    rst $38                                       ; $4337: $ff
    rst $38                                       ; $4338: $ff
    nop                                           ; $4339: $00
    rst $38                                       ; $433a: $ff
    rst $38                                       ; $433b: $ff
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rst $38                                       ; $4344: $ff
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $38                                       ; $4347: $ff
    rst $38                                       ; $4348: $ff
    rst $38                                       ; $4349: $ff
    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    rst $38                                       ; $434c: $ff
    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    db $fc                                        ; $434f: $fc
    ei                                            ; $4350: $fb
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    ld de, $ff00                                  ; $4354: $11 $00 $ff
    rst $38                                       ; $4357: $ff
    rst $38                                       ; $4358: $ff
    rst $38                                       ; $4359: $ff
    db $eb                                        ; $435a: $eb
    ld [$dd01], a                                 ; $435b: $ea $01 $dd
    rst $38                                       ; $435e: $ff
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    jp hl                                         ; $4361: $e9


    add sp, -$23                                  ; $4362: $e8 $dd
    ld [bc], a                                    ; $4364: $02
    rst $38                                       ; $4365: $ff
    pop hl                                        ; $4366: $e1
    inc bc                                        ; $4367: $03

jr_07a_4368:
    inc bc                                        ; $4368: $03
    inc bc                                        ; $4369: $03
    ei                                            ; $436a: $fb
    pop hl                                        ; $436b: $e1
    ld [bc], a                                    ; $436c: $02
    nop                                           ; $436d: $00
    db $fc                                        ; $436e: $fc
    or $e1                                        ; $436f: $f6 $e1
    call z, $03e9                                 ; $4371: $cc $e9 $03
    nop                                           ; $4374: $00
    inc b                                         ; $4375: $04
    dec b                                         ; $4376: $05
    ld b, $07                                     ; $4377: $06 $07
    rst $38                                       ; $4379: $ff
    ld [$0a09], sp                                ; $437a: $08 $09 $0a
    dec bc                                        ; $437d: $0b
    inc c                                         ; $437e: $0c
    dec c                                         ; $437f: $0d
    ld c, $0f                                     ; $4380: $0e $0f
    rra                                           ; $4382: $1f
    db $10                                        ; $4383: $10
    ld de, $1312                                  ; $4384: $11 $12 $13
    inc d                                         ; $4387: $14
    xor l                                         ; $4388: $ad
    db $eb                                        ; $4389: $eb
    add $e0                                       ; $438a: $c6 $e0
    jp $dde0                                      ; $438c: $c3 $e0 $dd


    dec d                                         ; $438f: $15
    ld sp, hl                                     ; $4390: $f9
    pop hl                                        ; $4391: $e1
    ld d, $17                                     ; $4392: $16 $17
    jr jr_07a_4327                                ; $4394: $18 $91

    ldh a, [rNR24]                                ; $4396: $f0 $19
    ld a, [de]                                    ; $4398: $1a
    rst $38                                       ; $4399: $ff
    dec de                                        ; $439a: $1b
    inc e                                         ; $439b: $1c
    dec e                                         ; $439c: $1d
    ld e, $1f                                     ; $439d: $1e $1f
    jr nz, jr_07a_43c2                            ; $439f: $20 $21

    ld [hl+], a                                   ; $43a1: $22
    adc a                                         ; $43a2: $8f
    inc hl                                        ; $43a3: $23
    inc h                                         ; $43a4: $24
    dec h                                         ; $43a5: $25
    ld h, $80                                     ; $43a6: $26 $80
    ldh a, [$be]                                  ; $43a8: $f0 $be
    db $e3                                        ; $43aa: $e3
    cp b                                          ; $43ab: $b8
    pop hl                                        ; $43ac: $e1
    daa                                           ; $43ad: $27
    rst $30                                       ; $43ae: $f7
    jr z, jr_07a_43da                             ; $43af: $28 $29

    ld a, [hl+]                                   ; $43b1: $2a
    add b                                         ; $43b2: $80
    db $ec                                        ; $43b3: $ec
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    dec hl                                        ; $43b6: $2b
    inc l                                         ; $43b7: $2c
    rst $38                                       ; $43b8: $ff
    dec l                                         ; $43b9: $2d
    ld l, $2f                                     ; $43ba: $2e $2f
    jr nc, jr_07a_43ef                            ; $43bc: $30 $31

    ld [hl-], a                                   ; $43be: $32
    inc sp                                        ; $43bf: $33
    inc [hl]                                      ; $43c0: $34
    rrca                                          ; $43c1: $0f

jr_07a_43c2:
    dec [hl]                                      ; $43c2: $35
    ld [hl], $37                                  ; $43c3: $36 $37
    jr c, @+$32                                   ; $43c5: $38 $30

    rst $38                                       ; $43c7: $ff
    rst $38                                       ; $43c8: $ff
    rst $38                                       ; $43c9: $ff
    rst $38                                       ; $43ca: $ff
    rst $38                                       ; $43cb: $ff
    rst $38                                       ; $43cc: $ff
    rst $38                                       ; $43cd: $ff
    nop                                           ; $43ce: $00
    rst $38                                       ; $43cf: $ff
    rst $38                                       ; $43d0: $ff
    rst $38                                       ; $43d1: $ff
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff
    rst $38                                       ; $43d6: $ff
    rst $38                                       ; $43d7: $ff
    rst $38                                       ; $43d8: $ff
    rst $38                                       ; $43d9: $ff

jr_07a_43da:
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    nop                                           ; $43df: $00
    rst $38                                       ; $43e0: $ff
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    rst $38                                       ; $43e3: $ff
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    rst $38                                       ; $43e6: $ff
    rst $38                                       ; $43e7: $ff
    rst $38                                       ; $43e8: $ff
    rst $38                                       ; $43e9: $ff
    rst $38                                       ; $43ea: $ff
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff

jr_07a_43ef:
    rst $38                                       ; $43ef: $ff
    nop                                           ; $43f0: $00
    rst $38                                       ; $43f1: $ff
    push hl                                       ; $43f2: $e5
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    nop                                           ; $43f5: $00
    cp $43                                        ; $43f6: $fe $43
    ld a, $44                                     ; $43f8: $3e $44
    ldh [rLYC], a                                 ; $43fa: $e0 $45
    ld h, $46                                     ; $43fc: $26 $46
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    ld b, $41                                     ; $4402: $06 $41
    rst $38                                       ; $4404: $ff
    ld a, a                                       ; $4405: $7f
    ld h, b                                       ; $4406: $60
    ld bc, $7fff                                  ; $4407: $01 $ff $7f
    rst $28                                       ; $440a: $ef
    dec a                                         ; $440b: $3d
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    add a                                         ; $440e: $87
    ld h, l                                       ; $440f: $65
    rst $38                                       ; $4410: $ff
    ld a, a                                       ; $4411: $7f
    sub h                                         ; $4412: $94
    ld d, d                                       ; $4413: $52
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    ld e, a                                       ; $4416: $5f
    ld c, d                                       ; $4417: $4a
    cp a                                          ; $4418: $bf
    ld e, a                                       ; $4419: $5f
    rst $18                                       ; $441a: $df
    jr z, jr_07a_441d                             ; $441b: $28 $00

jr_07a_441d:
    nop                                           ; $441d: $00
    ld a, [c]                                     ; $441e: $f2
    inc bc                                        ; $441f: $03
    ld c, e                                       ; $4420: $4b
    inc bc                                        ; $4421: $03
    ret z                                         ; $4422: $c8

    ld [de], a                                    ; $4423: $12
    ldh [rNR24], a                                ; $4424: $e0 $19
    jr nz, jr_07a_4429                            ; $4426: $20 $01

    db $10                                        ; $4428: $10

jr_07a_4429:
    ld [bc], a                                    ; $4429: $02
    jr @+$25                                      ; $442a: $18 $23

    rst $38                                       ; $442c: $ff
    ld d, e                                       ; $442d: $53
    jr nz, jr_07a_4431                            ; $442e: $20 $01

    rrca                                          ; $4430: $0f

jr_07a_4431:
    nop                                           ; $4431: $00
    jr jr_07a_4455                                ; $4432: $18 $21

    sbc a                                         ; $4434: $9f
    ld d, d                                       ; $4435: $52
    jr nz, jr_07a_4439                            ; $4436: $20 $01

    nop                                           ; $4438: $00

jr_07a_4439:
    ld b, b                                       ; $4439: $40
    add h                                         ; $443a: $84
    ld d, c                                       ; $443b: $51
    db $f4                                        ; $443c: $f4
    ld a, a                                       ; $443d: $7f
    ld d, l                                       ; $443e: $55
    nop                                           ; $443f: $00
    rst $38                                       ; $4440: $ff
    db $ec                                        ; $4441: $ec
    rst $38                                       ; $4442: $ff
    cp $ec                                        ; $4443: $fe $ec
    add b                                         ; $4445: $80
    cp $ea                                        ; $4446: $fe $ea
    rst $38                                       ; $4448: $ff
    jp nc, $beee                                  ; $4449: $d2 $ee $be

    ret nz                                        ; $444c: $c0

    jp hl                                         ; $444d: $e9


    ld bc, $fc00                                  ; $444e: $01 $00 $fc
    nop                                           ; $4451: $00
    inc bc                                        ; $4452: $03
    cp $e2                                        ; $4453: $fe $e2

jr_07a_4455:
    rlca                                          ; $4455: $07
    db $f4                                        ; $4456: $f4
    cp $e4                                        ; $4457: $fe $e4
    or d                                          ; $4459: $b2
    push hl                                       ; $445a: $e5
    cp $fe                                        ; $445b: $fe $fe
    and $f8                                       ; $445d: $e6 $f8
    ld hl, sp-$7e                                 ; $445f: $f8 $82
    db $fc                                        ; $4461: $fc
    rst $38                                       ; $4462: $ff
    add d                                         ; $4463: $82
    ret nz                                        ; $4464: $c0

    di                                            ; $4465: $f3
    pop af                                        ; $4466: $f1
    add e                                         ; $4467: $83
    ld sp, hl                                     ; $4468: $f9
    add e                                         ; $4469: $83
    pop bc                                        ; $446a: $c1
    rst $28                                       ; $446b: $ef
    add d                                         ; $446c: $82
    ret nz                                        ; $446d: $c0

    ld [bc], a                                    ; $446e: $02
    ld b, b                                       ; $446f: $40
    sub $e1                                       ; $4470: $d6 $e1
    rst $20                                       ; $4472: $e7
    ld [c], a                                     ; $4473: $e2
    rla                                           ; $4474: $17
    rst $38                                       ; $4475: $ff
    ld [hl], e                                    ; $4476: $73
    ld d, $9b                                     ; $4477: $16 $9b
    ld d, $9b                                     ; $4479: $16 $9b
    and $eb                                       ; $447b: $e6 $eb
    ld b, $7d                                     ; $447d: $06 $7d
    ld [hl], c                                    ; $447f: $71
    add b                                         ; $4480: $80

jr_07a_4481:
    ld [c], a                                     ; $4481: $e2
    ret nz                                        ; $4482: $c0

    sbc a                                         ; $4483: $9f
    ld h, b                                       ; $4484: $60
    ld a, a                                       ; $4485: $7f
    add b                                         ; $4486: $80
    halt                                          ; $4487: $76
    add sp, -$01                                  ; $4488: $e8 $ff
    ld e, $f0                                     ; $448a: $1e $f0
    cpl                                           ; $448c: $2f
    rst $38                                       ; $448d: $ff
    inc e                                         ; $448e: $1c
    di                                            ; $448f: $f3
    ld c, $fe                                     ; $4490: $0e $fe
    rst $30                                       ; $4492: $f7
    dec a                                         ; $4493: $3d
    pop hl                                        ; $4494: $e1
    ld e, $60                                     ; $4495: $1e $60
    ld [c], a                                     ; $4497: $e2
    jr c, jr_07a_4481                             ; $4498: $38 $e7

    ld e, h                                       ; $449a: $5c
    db $dd                                        ; $449b: $dd
    ld a, a                                       ; $449c: $7f
    ld h, [hl]                                    ; $449d: $66
    db $dd                                        ; $449e: $dd
    ld h, [hl]                                    ; $449f: $66
    db $fd                                        ; $44a0: $fd
    ld a, [hl-]                                   ; $44a1: $3a
    db $e3                                        ; $44a2: $e3
    inc e                                         ; $44a3: $1c
    ld d, b                                       ; $44a4: $50

jr_07a_44a5:
    ld [c], a                                     ; $44a5: $e2
    ld a, a                                       ; $44a6: $7f
    or h                                          ; $44a7: $b4
    rst $38                                       ; $44a8: $ff
    jp c, $ff92                                   ; $44a9: $da $92 $ff

    or [hl]                                       ; $44ac: $b6
    db $db                                        ; $44ad: $db
    cp $e0                                        ; $44ae: $fe $e0
    rst $38                                       ; $44b0: $ff
    ld c, c                                       ; $44b1: $49
    rst $38                                       ; $44b2: $ff
    nop                                           ; $44b3: $00
    ld a, a                                       ; $44b4: $7f
    nop                                           ; $44b5: $00
    ld a, a                                       ; $44b6: $7f
    jr c, jr_07a_4520                             ; $44b7: $38 $67

    rst $38                                       ; $44b9: $ff
    ld e, h                                       ; $44ba: $5c
    ld a, l                                       ; $44bb: $7d
    ld a, d                                       ; $44bc: $7a
    ld b, e                                       ; $44bd: $43
    ld a, h                                       ; $44be: $7c
    rst $38                                       ; $44bf: $ff
    jr c, jr_07a_44a5                             ; $44c0: $38 $e3

    rst $30                                       ; $44c2: $f7
    inc e                                         ; $44c3: $1c
    ld hl, sp+$00                                 ; $44c4: $f8 $00
    cp $e6                                        ; $44c6: $fe $e6
    ret nz                                        ; $44c8: $c0

jr_07a_44c9:
    ret c                                         ; $44c9: $d8

    ld h, b                                       ; $44ca: $60
    ret c                                         ; $44cb: $d8

    rst $30                                       ; $44cc: $f7
    and b                                         ; $44cd: $a0
    ccf                                           ; $44ce: $3f
    nop                                           ; $44cf: $00
    cp $e0                                        ; $44d0: $fe $e0
    inc e                                         ; $44d2: $1c
    inc sp                                        ; $44d3: $33
    ld l, $2e                                     ; $44d4: $2e $2e
    ld a, a                                       ; $44d6: $7f
    scf                                           ; $44d7: $37
    ld a, $1b                                     ; $44d8: $3e $1b

jr_07a_44da:
    ld [hl-], a                                   ; $44da: $32
    rrca                                          ; $44db: $0f
    ld a, $1d                                     ; $44dc: $3e $1d
    ld h, [hl]                                    ; $44de: $66
    ld [c], a                                     ; $44df: $e2
    cp a                                          ; $44e0: $bf
    jr c, jr_07a_44c9                             ; $44e1: $38 $e6

    ld e, h                                       ; $44e3: $5c
    call c, $dc66                                 ; $44e4: $dc $66 $dc
    or b                                          ; $44e7: $b0
    db $e3                                        ; $44e8: $e3

Jump_07a_44e9:
    jp $deff                                      ; $44e9: $c3 $ff $de


    ld h, l                                       ; $44ec: $65
    db $dd                                        ; $44ed: $dd
    ld h, [hl]                                    ; $44ee: $66
    rst $18                                       ; $44ef: $df
    ld l, [hl]                                    ; $44f0: $6e
    call c, $fe67                                 ; $44f1: $dc $67 $fe
    sbc [hl]                                      ; $44f4: $9e
    pop hl                                        ; $44f5: $e1
    db $dd                                        ; $44f6: $dd
    ld [hl+], a                                   ; $44f7: $22
    ldh [rP1], a                                  ; $44f8: $e0 $00
    ld h, b                                       ; $44fa: $60
    add b                                         ; $44fb: $80
    ldh [$f9], a                                  ; $44fc: $e0 $f9
    nop                                           ; $44fe: $00
    cp $e5                                        ; $44ff: $fe $e5
    ld [c], a                                     ; $4501: $e2
    ret nz                                        ; $4502: $c0

    ld b, b                                       ; $4503: $40
    rst $18                                       ; $4504: $df
    jr nz, @+$01                                  ; $4505: $20 $ff

    rst $00                                       ; $4507: $c7
    rst $38                                       ; $4508: $ff
    call c, $df6b                                 ; $4509: $dc $6b $df
    ld h, a                                       ; $450c: $67
    call c, $df63                                 ; $450d: $dc $63 $df
    ld l, a                                       ; $4510: $6f
    ld a, e                                       ; $4511: $7b
    ret c                                         ; $4512: $d8

    daa                                           ; $4513: $27
    ret nc                                        ; $4514: $d0

    pop bc                                        ; $4515: $c1
    ldh [$80], a                                  ; $4516: $e0 $80
    jr nz, jr_07a_44da                            ; $4518: $20 $c0

    call c, Call_000_2fe0                         ; $451a: $dc $e0 $2f
    add b                                         ; $451d: $80
    and b                                         ; $451e: $a0
    ld b, b                                       ; $451f: $40

jr_07a_4520:
    ld h, b                                       ; $4520: $60
    ld c, d                                       ; $4521: $4a
    and $80                                       ; $4522: $e6 $80
    or b                                          ; $4524: $b0
    call z, $c598                                 ; $4525: $cc $98 $c5
    dec h                                         ; $4528: $25
    ld hl, sp-$10                                 ; $4529: $f8 $f0
    db $ec                                        ; $452b: $ec
    ccf                                           ; $452c: $3f
    ldh [$ec], a                                  ; $452d: $e0 $ec
    sub h                                         ; $452f: $94
    pop hl                                        ; $4530: $e1
    ret nz                                        ; $4531: $c0

    ld c, h                                       ; $4532: $4c
    ldh [rBCPS], a                                ; $4533: $e0 $68
    set 7, h                                      ; $4535: $cb $fc
    or d                                          ; $4537: $b2
    push hl                                       ; $4538: $e5
    ld h, b                                       ; $4539: $60

jr_07a_453a:
    call nz, $cf70                                ; $453a: $c4 $70 $cf
    jr c, jr_07a_453a                             ; $453d: $38 $fb

    ld a, h                                       ; $453f: $7c
    res 7, a                                      ; $4540: $cb $bf
    cp h                                          ; $4542: $bc
    rst $38                                       ; $4543: $ff
    ld [hl], h                                    ; $4544: $74
    push bc                                       ; $4545: $c5
    ld a, [hl-]                                   ; $4546: $3a
    rst $38                                       ; $4547: $ff
    adc [hl]                                      ; $4548: $8e
    pop bc                                        ; $4549: $c1
    ld [bc], a                                    ; $454a: $02
    cp e                                          ; $454b: $bb
    ld [bc], a                                    ; $454c: $02
    inc bc                                        ; $454d: $03
    cp $e1                                        ; $454e: $fe $e1
    inc bc                                        ; $4550: $03
    ld bc, $4003                                  ; $4551: $01 $03 $40
    jp nz, $fffd                                  ; $4554: $c2 $fd $ff

    ld [$4cf9], sp                                ; $4557: $08 $f9 $4c
    reti                                          ; $455a: $d9


    ld l, h                                       ; $455b: $6c
    reti                                          ; $455c: $d9


    ld l, l                                       ; $455d: $6d
    ld sp, hl                                     ; $455e: $f9
    rst $30                                       ; $455f: $f7
    or h                                          ; $4560: $b4
    dec h                                         ; $4561: $25
    ret c                                         ; $4562: $d8

    jr nc, @-$3c                                  ; $4563: $30 $c2

    pop hl                                        ; $4565: $e1
    sbc a                                         ; $4566: $9f
    ld [hl], c                                    ; $4567: $71
    rst $30                                       ; $4568: $f7
    ld a, a                                       ; $4569: $7f
    ld sp, hl                                     ; $456a: $f9
    sub a                                         ; $456b: $97
    ld a, b                                       ; $456c: $78
    rst $38                                       ; $456d: $ff
    add sp, -$75                                  ; $456e: $e8 $8b
    ld [hl], h                                    ; $4570: $74
    halt                                          ; $4571: $76
    jp nz, Jump_000_10ff                          ; $4572: $c2 $ff $10

    halt                                          ; $4575: $76
    sbc b                                         ; $4576: $98
    halt                                          ; $4577: $76
    cp b                                          ; $4578: $b8
    or $d8                                        ; $4579: $f6 $d8
    sub [hl]                                      ; $457b: $96
    rst $18                                       ; $457c: $df
    ld a, b                                       ; $457d: $78
    or $e8                                        ; $457e: $f6 $e8
    rrca                                          ; $4580: $0f
    nop                                           ; $4581: $00
    cp $e0                                        ; $4582: $fe $e0
    rlca                                          ; $4584: $07
    inc c                                         ; $4585: $0c
    rst $18                                       ; $4586: $df
    dec bc                                        ; $4587: $0b
    dec bc                                        ; $4588: $0b
    inc c                                         ; $4589: $0c
    dec bc                                        ; $458a: $0b
    inc c                                         ; $458b: $0c
    ld hl, sp-$20                                 ; $458c: $f8 $e0
    inc bc                                        ; $458e: $03
    rst $18                                       ; $458f: $df
    rst $38                                       ; $4590: $ff
    ld b, $dc                                     ; $4591: $06 $dc
    dec bc                                        ; $4593: $0b
    db $db                                        ; $4594: $db
    inc c                                         ; $4595: $0c
    rst $18                                       ; $4596: $df
    sbc h                                         ; $4597: $9c
    sbc c                                         ; $4598: $99
    rst $38                                       ; $4599: $ff
    adc $9b                                       ; $459a: $ce $9b
    call z, Call_07a_4c9b                         ; $459c: $cc $9b $4c
    ld e, e                                       ; $459f: $5b
    add h                                         ; $45a0: $84
    pop hl                                        ; $45a1: $e1
    rst $30                                       ; $45a2: $f7
    ld bc, $00e1                                  ; $45a3: $01 $e1 $00
    cp $e9                                        ; $45a6: $fe $e9
    db $dd                                        ; $45a8: $dd
    adc b                                         ; $45a9: $88
    sbc c                                         ; $45aa: $99
    call nz, $9dbf                                ; $45ab: $c4 $bf $9d
    ret c                                         ; $45ae: $d8

    sbc c                                         ; $45af: $99
    call $cc99                                    ; $45b0: $cd $99 $cc
    cp $e1                                        ; $45b3: $fe $e1
    cp c                                          ; $45b5: $b9
    rst $38                                       ; $45b6: $ff
    ld b, h                                       ; $45b7: $44
    rst $30                                       ; $45b8: $f7
    ld h, b                                       ; $45b9: $60
    rst $00                                       ; $45ba: $c7
    or b                                          ; $45bb: $b0
    cp a                                          ; $45bc: $bf
    rst $00                                       ; $45bd: $c7
    db $fc                                        ; $45be: $fc
    rst $38                                       ; $45bf: $ff
    res 3, a                                      ; $45c0: $cb $9f
    rst $28                                       ; $45c2: $ef
    cp b                                          ; $45c3: $b8
    rst $08                                       ; $45c4: $cf
    cp a                                          ; $45c5: $bf
    rst $00                                       ; $45c6: $c7
    cp h                                          ; $45c7: $bc
    db $fd                                        ; $45c8: $fd
    ld b, e                                       ; $45c9: $43
    ret nz                                        ; $45ca: $c0

    and h                                         ; $45cb: $a4
    add b                                         ; $45cc: $80
    sbc a                                         ; $45cd: $9f
    ld b, b                                       ; $45ce: $40
    ld e, a                                       ; $45cf: $5f
    add b                                         ; $45d0: $80
    rst $18                                       ; $45d1: $df
    rst $20                                       ; $45d2: $e7
    add hl, de                                    ; $45d3: $19
    ld d, e                                       ; $45d4: $53
    adc h                                         ; $45d5: $8c
    ld b, $c7                                     ; $45d6: $06 $c7
    db $fc                                        ; $45d8: $fc
    and b                                         ; $45d9: $a0
    sbc b                                         ; $45da: $98
    ld [hl-], a                                   ; $45db: $32
    call z, $0000                                 ; $45dc: $cc $00 $00
    nop                                           ; $45df: $00
    ld bc, $ff08                                  ; $45e0: $01 $08 $ff
    rst $38                                       ; $45e3: $ff
    rst $38                                       ; $45e4: $ff
    rst $38                                       ; $45e5: $ff
    rst $38                                       ; $45e6: $ff
    rst $38                                       ; $45e7: $ff
    rst $38                                       ; $45e8: $ff
    rst $38                                       ; $45e9: $ff
    rst $38                                       ; $45ea: $ff
    rst $38                                       ; $45eb: $ff
    rst $38                                       ; $45ec: $ff
    rst $38                                       ; $45ed: $ff
    rst $38                                       ; $45ee: $ff
    rst $38                                       ; $45ef: $ff
    nop                                           ; $45f0: $00
    rst $38                                       ; $45f1: $ff
    rst $38                                       ; $45f2: $ff
    rst $38                                       ; $45f3: $ff
    rst $38                                       ; $45f4: $ff
    rst $38                                       ; $45f5: $ff
    rst $38                                       ; $45f6: $ff
    rst $38                                       ; $45f7: $ff
    rst $38                                       ; $45f8: $ff
    rst $38                                       ; $45f9: $ff
    rst $38                                       ; $45fa: $ff
    rst $38                                       ; $45fb: $ff
    rst $38                                       ; $45fc: $ff
    rst $38                                       ; $45fd: $ff
    rst $38                                       ; $45fe: $ff
    rst $38                                       ; $45ff: $ff
    rst $38                                       ; $4600: $ff
    nop                                           ; $4601: $00
    rst $38                                       ; $4602: $ff
    rst $38                                       ; $4603: $ff
    rst $38                                       ; $4604: $ff
    rst $38                                       ; $4605: $ff
    rst $38                                       ; $4606: $ff
    rst $38                                       ; $4607: $ff
    rst $38                                       ; $4608: $ff
    rst $38                                       ; $4609: $ff
    rst $38                                       ; $460a: $ff
    rst $38                                       ; $460b: $ff
    rst $38                                       ; $460c: $ff
    rst $38                                       ; $460d: $ff
    rst $38                                       ; $460e: $ff
    rst $38                                       ; $460f: $ff
    rst $38                                       ; $4610: $ff
    rst $38                                       ; $4611: $ff
    nop                                           ; $4612: $00
    rst $38                                       ; $4613: $ff
    rst $38                                       ; $4614: $ff
    rst $38                                       ; $4615: $ff
    rst $38                                       ; $4616: $ff
    rst $38                                       ; $4617: $ff
    rst $38                                       ; $4618: $ff
    rst $38                                       ; $4619: $ff
    rst $38                                       ; $461a: $ff
    rst $38                                       ; $461b: $ff
    rst $38                                       ; $461c: $ff
    rst $38                                       ; $461d: $ff
    rst $38                                       ; $461e: $ff
    rst $38                                       ; $461f: $ff
    rst $38                                       ; $4620: $ff
    pop hl                                        ; $4621: $e1
    ldh [rP1], a                                  ; $4622: $e0 $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    add c                                         ; $4626: $81
    nop                                           ; $4627: $00
    rst $38                                       ; $4628: $ff
    rst $38                                       ; $4629: $ff
    rst $38                                       ; $462a: $ff
    rst $38                                       ; $462b: $ff
    rst $38                                       ; $462c: $ff
    rst $38                                       ; $462d: $ff
    rst $38                                       ; $462e: $ff
    rst $38                                       ; $462f: $ff
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    or $f5                                        ; $4632: $f6 $f5
    ld bc, $fff6                                  ; $4634: $01 $f6 $ff
    ldh [rSC], a                                  ; $4637: $e0 $02
    inc bc                                        ; $4639: $03
    rst $38                                       ; $463a: $ff
    ldh [rDIV], a                                 ; $463b: $e0 $04
    inc bc                                        ; $463d: $03
    inc bc                                        ; $463e: $03
    dec b                                         ; $463f: $05
    db $fd                                        ; $4640: $fd
    ld b, $d0                                     ; $4641: $06 $d0
    rst $28                                       ; $4643: $ef
    rlca                                          ; $4644: $07
    ld [$0a09], sp                                ; $4645: $08 $09 $0a
    dec bc                                        ; $4648: $0b
    inc c                                         ; $4649: $0c
    rst $38                                       ; $464a: $ff
    dec c                                         ; $464b: $0d
    ld c, $0f                                     ; $464c: $0e $0f
    db $10                                        ; $464e: $10
    ld de, $1312                                  ; $464f: $11 $12 $13
    inc d                                         ; $4652: $14
    ld a, [hl]                                    ; $4653: $7e
    ret nz                                        ; $4654: $c0

    ld a, [c]                                     ; $4655: $f2
    dec d                                         ; $4656: $15
    ld d, $16                                     ; $4657: $16 $16
    ld d, $17                                     ; $4659: $16 $17
    jr @-$03                                      ; $465b: $18 $fb

    ldh [$f7], a                                  ; $465d: $e0 $f7
    ld d, $19                                     ; $465f: $16 $19
    ld a, [de]                                    ; $4661: $1a
    adc a                                         ; $4662: $8f
    xor $1b                                       ; $4663: $ee $1b
    inc e                                         ; $4665: $1c
    dec e                                         ; $4666: $1d
    ld e, $ff                                     ; $4667: $1e $ff
    rra                                           ; $4669: $1f
    jr nz, jr_07a_468d                            ; $466a: $20 $21

    ld [hl+], a                                   ; $466c: $22
    inc hl                                        ; $466d: $23
    inc h                                         ; $466e: $24
    dec h                                         ; $466f: $25
    ld h, $00                                     ; $4670: $26 $00
    sub b                                         ; $4672: $90
    ld [c], a                                     ; $4673: $e2
    ld l, l                                       ; $4674: $6d
    rst $38                                       ; $4675: $ff
    rst $38                                       ; $4676: $ff
    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    rst $38                                       ; $4679: $ff
    rst $38                                       ; $467a: $ff
    rst $38                                       ; $467b: $ff
    rst $38                                       ; $467c: $ff
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    nop                                           ; $4682: $00
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

jr_07a_468d:
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    ret nz                                        ; $4693: $c0

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
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    xor l                                         ; $46a5: $ad
    ld b, [hl]                                    ; $46a6: $46
    db $ed                                        ; $46a7: $ed
    ld b, [hl]                                    ; $46a8: $46
    sub a                                         ; $46a9: $97
    ld c, b                                       ; $46aa: $48
    db $dd                                        ; $46ab: $dd
    ld c, b                                       ; $46ac: $48
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    ld b, $41                                     ; $46b1: $06 $41
    rst $38                                       ; $46b3: $ff
    ld a, a                                       ; $46b4: $7f
    ld h, b                                       ; $46b5: $60
    ld bc, $7fff                                  ; $46b6: $01 $ff $7f
    rst $28                                       ; $46b9: $ef
    dec a                                         ; $46ba: $3d
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    add a                                         ; $46bd: $87
    ld h, l                                       ; $46be: $65
    rst $38                                       ; $46bf: $ff
    ld a, a                                       ; $46c0: $7f
    sub h                                         ; $46c1: $94
    ld d, d                                       ; $46c2: $52
    nop                                           ; $46c3: $00
    nop                                           ; $46c4: $00
    ld e, a                                       ; $46c5: $5f
    ld c, d                                       ; $46c6: $4a
    cp a                                          ; $46c7: $bf
    ld e, a                                       ; $46c8: $5f
    rst $18                                       ; $46c9: $df
    jr z, jr_07a_46cc                             ; $46ca: $28 $00

jr_07a_46cc:
    nop                                           ; $46cc: $00
    ld a, [c]                                     ; $46cd: $f2
    inc bc                                        ; $46ce: $03
    ld c, e                                       ; $46cf: $4b
    inc bc                                        ; $46d0: $03
    ret z                                         ; $46d1: $c8

    ld [de], a                                    ; $46d2: $12
    ldh [rNR24], a                                ; $46d3: $e0 $19
    jr nz, jr_07a_46d8                            ; $46d5: $20 $01

    db $10                                        ; $46d7: $10

jr_07a_46d8:
    ld [bc], a                                    ; $46d8: $02
    jr jr_07a_46fe                                ; $46d9: $18 $23

    rst $38                                       ; $46db: $ff
    ld d, e                                       ; $46dc: $53
    jr nz, jr_07a_46e0                            ; $46dd: $20 $01

    rrca                                          ; $46df: $0f

jr_07a_46e0:
    nop                                           ; $46e0: $00
    jr jr_07a_4704                                ; $46e1: $18 $21

    sbc a                                         ; $46e3: $9f
    ld d, d                                       ; $46e4: $52
    jr nz, jr_07a_46e8                            ; $46e5: $20 $01

    nop                                           ; $46e7: $00

jr_07a_46e8:
    ld b, b                                       ; $46e8: $40
    add h                                         ; $46e9: $84
    ld d, c                                       ; $46ea: $51
    db $f4                                        ; $46eb: $f4
    ld a, a                                       ; $46ec: $7f
    push af                                       ; $46ed: $f5
    nop                                           ; $46ee: $00
    rst $38                                       ; $46ef: $ff
    db $ec                                        ; $46f0: $ec
    rst $38                                       ; $46f1: $ff
    cp $ed                                        ; $46f2: $fe $ed
    ld sp, hl                                     ; $46f4: $f9
    and e                                         ; $46f5: $a3
    ld a, l                                       ; $46f6: $7d
    rst $28                                       ; $46f7: $ef
    db $fd                                        ; $46f8: $fd
    ld sp, $e6fe                                  ; $46f9: $31 $fe $e6
    db $10                                        ; $46fc: $10
    rst $38                                       ; $46fd: $ff

jr_07a_46fe:
    nop                                           ; $46fe: $00
    ld a, a                                       ; $46ff: $7f
    add b                                         ; $4700: $80
    ld a, a                                       ; $4701: $7f
    rst $38                                       ; $4702: $ff
    pop hl                                        ; $4703: $e1

jr_07a_4704:
    sbc a                                         ; $4704: $9f
    ld a, [c]                                     ; $4705: $f2
    ld [hl], a                                    ; $4706: $77
    sbc e                                         ; $4707: $9b
    halt                                          ; $4708: $76
    sbc e                                         ; $4709: $9b
    ld [hl], a                                    ; $470a: $77
    rst $38                                       ; $470b: $ff
    sbc c                                         ; $470c: $99
    ld [hl], a                                    ; $470d: $77
    adc b                                         ; $470e: $88
    rst $38                                       ; $470f: $ff
    ld [bc], a                                    ; $4710: $02
    cp $01                                        ; $4711: $fe $01
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    add $3e                                       ; $4715: $c6 $3e
    db $e3                                        ; $4717: $e3
    xor $d3                                       ; $4718: $ee $d3
    ld e, $e3                                     ; $471a: $1e $e3
    cp $f7                                        ; $471c: $fe $f7
    jp $e11e                                      ; $471e: $c3 $1e $e1


    ret nz                                        ; $4721: $c0

    ld [c], a                                     ; $4722: $e2
    ld e, b                                       ; $4723: $58
    di                                            ; $4724: $f3
    ld l, h                                       ; $4725: $6c
    rst $08                                       ; $4726: $cf
    rst $30                                       ; $4727: $f7
    ld [hl], b                                    ; $4728: $70
    rst $18                                       ; $4729: $df
    ld h, b                                       ; $472a: $60
    cp $e0                                        ; $472b: $fe $e0
    jr nz, @+$01                                  ; $472d: $20 $ff

    nop                                           ; $472f: $00
    adc a                                         ; $4730: $8f
    rst $38                                       ; $4731: $ff
    nop                                           ; $4732: $00
    adc a                                         ; $4733: $8f
    inc bc                                        ; $4734: $03
    adc [hl]                                      ; $4735: $8e
    dec b                                         ; $4736: $05
    adc l                                         ; $4737: $8d
    ld b, $8d                                     ; $4738: $06 $8d
    db $dd                                        ; $473a: $dd
    ld b, $f8                                     ; $473b: $06 $f8
    ldh [rSB], a                                  ; $473d: $e0 $01
    rst $38                                       ; $473f: $ff
    ld b, b                                       ; $4740: $40
    add sp, -$20                                  ; $4741: $e8 $e0
    ld l, e                                       ; $4743: $6b
    sbc $ff                                       ; $4744: $de $ff
    db $ed                                        ; $4746: $ed
    reti                                          ; $4747: $d9


    ld l, [hl]                                    ; $4748: $6e

jr_07a_4749:
    db $db                                        ; $4749: $db
    db $ec                                        ; $474a: $ec
    db $db                                        ; $474b: $db
    ld l, h                                       ; $474c: $6c
    ld e, e                                       ; $474d: $5b
    db $fd                                        ; $474e: $fd
    and h                                         ; $474f: $a4

jr_07a_4750:
    sub b                                         ; $4750: $90
    ld [c], a                                     ; $4751: $e2
    inc e                                         ; $4752: $1c
    ld [hl], e                                    ; $4753: $73
    xor [hl]                                      ; $4754: $ae
    cp $3d                                        ; $4755: $fe $3d
    pop hl                                        ; $4757: $e1
    rst $18                                       ; $4758: $df
    ld a, $ff                                     ; $4759: $3e $ff
    inc e                                         ; $475b: $1c
    pop af                                        ; $475c: $f1
    ld c, $80                                     ; $475d: $0e $80
    ld [c], a                                     ; $475f: $e2
    jr c, jr_07a_4749                             ; $4760: $38 $e7

    rst $38                                       ; $4762: $ff
    inc e                                         ; $4763: $1c
    db $fd                                        ; $4764: $fd
    ld a, $e5                                     ; $4765: $3e $e5
    ld e, [hl]                                    ; $4767: $5e
    rst $38                                       ; $4768: $ff
    ld a, [hl-]                                   ; $4769: $3a
    ld [c], a                                     ; $476a: $e2
    db $fd                                        ; $476b: $fd
    dec e                                         ; $476c: $1d
    ld [hl], b                                    ; $476d: $70
    ld [c], a                                     ; $476e: $e2
    ld e, d                                       ; $476f: $5a
    rst $38                                       ; $4770: $ff
    ld l, l                                       ; $4771: $6d
    ret                                           ; $4772: $c9


    ld a, a                                       ; $4773: $7f
    db $db                                        ; $4774: $db
    push bc                                       ; $4775: $c5
    ld l, l                                       ; $4776: $6d
    cp $e0                                        ; $4777: $fe $e0
    inc h                                         ; $4779: $24
    ld h, b                                       ; $477a: $60
    push hl                                       ; $477b: $e5
    ld a, d                                       ; $477c: $7a
    ldh [$fe], a                                  ; $477d: $e0 $fe
    ld [c], a                                     ; $477f: $e2
    rst $38                                       ; $4780: $ff
    add b                                         ; $4781: $80
    rst $38                                       ; $4782: $ff
    cp a                                          ; $4783: $bf
    ld b, b                                       ; $4784: $40
    rst $38                                       ; $4785: $ff
    adc a                                         ; $4786: $8f
    cp b                                          ; $4787: $b8
    rst $10                                       ; $4788: $d7
    cp a                                          ; $4789: $bf
    adc $3f                                       ; $478a: $ce $3f
    cp c                                          ; $478c: $b9
    rst $00                                       ; $478d: $c7
    cp a                                          ; $478e: $bf
    sbc $b0                                       ; $478f: $de $b0
    ld c, a                                       ; $4791: $4f
    ld [c], a                                     ; $4792: $e2
    push hl                                       ; $4793: $e5
    call c, $dfe2                                 ; $4794: $dc $e2 $df
    or e                                          ; $4797: $b3
    and $19                                       ; $4798: $e6 $19
    cp $00                                        ; $479a: $fe $00
    cp $e7                                        ; $479c: $fe $e7
    db $fc                                        ; $479e: $fc
    jr nc, jr_07a_4750                            ; $479f: $30 $af

    ld h, h                                       ; $47a1: $64
    sbc b                                         ; $47a2: $98
    rra                                           ; $47a3: $1f
    nop                                           ; $47a4: $00
    cp $e1                                        ; $47a5: $fe $e1
    db $10                                        ; $47a7: $10
    cp $e2                                        ; $47a8: $fe $e2
    jr nz, @+$4a                                  ; $47aa: $20 $48

    cp $e0                                        ; $47ac: $fe $e0
    db $10                                        ; $47ae: $10
    db $e3                                        ; $47af: $e3
    ld a, [$f0c7]                                 ; $47b0: $fa $c7 $f0
    cp $e2                                        ; $47b3: $fe $e2
    ld [$f8c7], a                                 ; $47b5: $ea $c7 $f8
    xor $cc                                       ; $47b8: $ee $cc
    sub c                                         ; $47ba: $91
    nop                                           ; $47bb: $00
    or b                                          ; $47bc: $b0
    ld [c], a                                     ; $47bd: $e2
    ldh a, [$e9]                                  ; $47be: $f0 $e9
    cp [hl]                                       ; $47c0: $be
    ret                                           ; $47c1: $c9


    rrca                                          ; $47c2: $0f

Jump_07a_47c3:
    or d                                          ; $47c3: $b2
    adc $a0                                       ; $47c4: $ce $a0
    set 4, b                                      ; $47c6: $cb $e0
    ld a, [c]                                     ; $47c8: $f2
    sub c                                         ; $47c9: $91
    jp z, $fe80                                   ; $47ca: $ca $80 $fe

    ldh [$90], a                                  ; $47cd: $e0 $90
    jp z, $99cc                                   ; $47cf: $ca $cc $99

    ld h, [hl]                                    ; $47d2: $66
    rst $28                                       ; $47d3: $ef
    rst $38                                       ; $47d4: $ff
    inc b                                         ; $47d5: $04
    db $ed                                        ; $47d6: $ed
    ld b, $ef                                     ; $47d7: $06 $ef
    ld c, $ec                                     ; $47d9: $0e $ec
    rlca                                          ; $47db: $07
    db $ed                                        ; $47dc: $ed
    db $dd                                        ; $47dd: $dd
    ld b, $f8                                     ; $47de: $06 $f8
    ldh [$c3], a                                  ; $47e0: $e0 $c3
    adc [hl]                                      ; $47e2: $8e
    ld h, c                                       ; $47e3: $61
    ldh [$c3], a                                  ; $47e4: $e0 $c3
    di                                            ; $47e6: $f3
    ld l, $ff                                     ; $47e7: $2e $ff
    xor $33                                       ; $47e9: $ee $33
    xor $33                                       ; $47eb: $ee $33
    cp $1d                                        ; $47ed: $fe $1d
    ld [hl], c                                    ; $47ef: $71
    adc [hl]                                      ; $47f0: $8e
    sbc a                                         ; $47f1: $9f
    pop af                                        ; $47f2: $f1
    ld bc, $01f1                                  ; $47f3: $01 $f1 $01
    pop bc                                        ; $47f6: $c1
    cp $e7                                        ; $47f7: $fe $e7
    or $c3                                        ; $47f9: $f6 $c3
    pop hl                                        ; $47fb: $e1
    rst $38                                       ; $47fc: $ff
    rst $18                                       ; $47fd: $df
    or d                                          ; $47fe: $b2
    scf                                           ; $47ff: $37
    db $db                                        ; $4800: $db
    or $9b                                        ; $4801: $f6 $9b
    rst $30                                       ; $4803: $f7
    ld l, c                                       ; $4804: $69
    rst $38                                       ; $4805: $ff

jr_07a_4806:
    rst $08                                       ; $4806: $cf
    jr nc, jr_07a_4806                            ; $4807: $30 $fd

    nop                                           ; $4809: $00
    db $fc                                        ; $480a: $fc
    nop                                           ; $480b: $00
    db $fc                                        ; $480c: $fc
    ret nz                                        ; $480d: $c0

    rst $38                                       ; $480e: $ff
    inc a                                         ; $480f: $3c
    ldh [$ec], a                                  ; $4810: $e0 $ec
    ret nc                                        ; $4812: $d0

    inc e                                         ; $4813: $1c
    ldh [$fc], a                                  ; $4814: $e0 $fc
    ret nz                                        ; $4816: $c0

    rst $38                                       ; $4817: $ff
    inc e                                         ; $4818: $1c
    ldh [rIE], a                                  ; $4819: $e0 $ff
    ld [$0c1b], sp                                ; $481b: $08 $1b $0c
    rra                                           ; $481e: $1f
    inc e                                         ; $481f: $1c
    rst $28                                       ; $4820: $ef
    add hl, de                                    ; $4821: $19
    ld c, $1b                                     ; $4822: $0e $1b
    inc c                                         ; $4824: $0c
    ld hl, sp-$20                                 ; $4825: $f8 $e0
    ld b, $1c                                     ; $4827: $06 $1c
    inc bc                                        ; $4829: $03
    cp [hl]                                       ; $482a: $be
    add b                                         ; $482b: $80
    jp nz, $e778                                  ; $482c: $c2 $78 $e7

    ld a, h                                       ; $482f: $7c
    db $dd                                        ; $4830: $dd
    ld h, [hl]                                    ; $4831: $66
    cp $e2                                        ; $4832: $fe $e2
    ld [hl+], a                                   ; $4834: $22
    cp $10                                        ; $4835: $fe $10
    jp nz, $cf70                                  ; $4837: $c2 $70 $cf

    cp b                                          ; $483a: $b8
    ei                                            ; $483b: $fb
    db $f4                                        ; $483c: $f4
    add a                                         ; $483d: $87
    ld hl, sp-$01                                 ; $483e: $f8 $ff
    rst $38                                       ; $4840: $ff
    ld [hl], b                                    ; $4841: $70
    rst $00                                       ; $4842: $c7
    jr c, @-$57                                   ; $4843: $38 $a7

    inc b                                         ; $4845: $04
    and l                                         ; $4846: $a5

Call_07a_4847:
    ld b, $df                                     ; $4847: $06 $df
    ld h, l                                       ; $4849: $65
    rlca                                          ; $484a: $07
    ld h, a                                       ; $484b: $67
    ld b, $64                                     ; $484c: $06 $64
    db $fc                                        ; $484e: $fc
    ldh [$67], a                                  ; $484f: $e0 $67
    dec b                                         ; $4851: $05
    db $fd                                        ; $4852: $fd
    ld h, a                                       ; $4853: $67
    ldh a, [$a3]                                  ; $4854: $f0 $a3
    add a                                         ; $4856: $87
    ld a, h                                       ; $4857: $7c
    set 3, a                                      ; $4858: $cb $df
    ld l, a                                       ; $485a: $6f
    ret c                                         ; $485b: $d8

    rst $18                                       ; $485c: $df
    ld l, a                                       ; $485d: $6f
    rst $18                                       ; $485e: $df
    and a                                         ; $485f: $a7
    inc a                                         ; $4860: $3c
    jp $a2e0                                      ; $4861: $c3 $e0 $a2


    rrca                                          ; $4864: $0f
    ld hl, sp-$01                                 ; $4865: $f8 $ff
    sub a                                         ; $4867: $97
    cp a                                          ; $4868: $bf
    ld c, [hl]                                    ; $4869: $4e
    ld a, c                                       ; $486a: $79
    add a                                         ; $486b: $87
    rst $38                                       ; $486c: $ff
    ld e, $70                                     ; $486d: $1e $70
    rst $38                                       ; $486f: $ff
    adc a                                         ; $4870: $8f
    rst $38                                       ; $4871: $ff
    db $10                                        ; $4872: $10
    rst $30                                       ; $4873: $f7

jr_07a_4874:
    jr @+$01                                      ; $4874: $18 $ff

    jr c, jr_07a_48eb                             ; $4876: $38 $73

    rst $38                                       ; $4878: $ff
    sbc h                                         ; $4879: $9c
    rst $30                                       ; $487a: $f7
    jr jr_07a_4874                                ; $487b: $18 $f7

    jr @+$81                                      ; $487d: $18 $7f

    adc h                                         ; $487f: $8c
    ld sp, hl                                     ; $4880: $f9
    ld sp, hl                                     ; $4881: $f9
    ld b, $20                                     ; $4882: $06 $20
    jp nz, $e3fe                                  ; $4884: $c2 $fe $e3

    jr nz, @+$81                                  ; $4887: $20 $7f

    ld b, b                                       ; $4889: $40
    ld e, a                                       ; $488a: $5f
    jr nz, @+$0d                                  ; $488b: $20 $0b

    ret nz                                        ; $488d: $c0

    nop                                           ; $488e: $00
    cp $eb                                        ; $488f: $fe $eb
    rlca                                          ; $4891: $07
    cp $ec                                        ; $4892: $fe $ec
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    ld bc, $ff08                                  ; $4897: $01 $08 $ff
    rst $38                                       ; $489a: $ff
    rst $38                                       ; $489b: $ff
    rst $38                                       ; $489c: $ff
    rst $38                                       ; $489d: $ff
    rst $38                                       ; $489e: $ff
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    rst $38                                       ; $48a6: $ff
    nop                                           ; $48a7: $00
    rst $38                                       ; $48a8: $ff
    rst $38                                       ; $48a9: $ff
    rst $38                                       ; $48aa: $ff
    rst $38                                       ; $48ab: $ff
    rst $38                                       ; $48ac: $ff
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    rst $38                                       ; $48af: $ff
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    rst $38                                       ; $48b3: $ff
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    nop                                           ; $48b8: $00
    rst $38                                       ; $48b9: $ff
    rst $38                                       ; $48ba: $ff
    rst $38                                       ; $48bb: $ff
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    rst $38                                       ; $48c0: $ff
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    rst $38                                       ; $48c4: $ff
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    nop                                           ; $48c9: $00
    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    rst $38                                       ; $48d0: $ff
    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    pop hl                                        ; $48d8: $e1
    ldh [rP1], a                                  ; $48d9: $e0 $00
    nop                                           ; $48db: $00
    nop                                           ; $48dc: $00
    add c                                         ; $48dd: $81
    nop                                           ; $48de: $00
    rst $38                                       ; $48df: $ff
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    rst $38                                       ; $48e2: $ff
    rst $38                                       ; $48e3: $ff
    rst $38                                       ; $48e4: $ff
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    push af                                       ; $48e9: $f5
    db $f4                                        ; $48ea: $f4

jr_07a_48eb:
    ld bc, $fff0                                  ; $48eb: $01 $f0 $ff
    pop hl                                        ; $48ee: $e1
    ld hl, sp-$1b                                 ; $48ef: $f8 $e5
    rst $30                                       ; $48f1: $f7
    pop hl                                        ; $48f2: $e1
    call Call_000_02ed                            ; $48f3: $cd $ed $02
    inc bc                                        ; $48f6: $03
    inc b                                         ; $48f7: $04
    dec b                                         ; $48f8: $05
    rst $38                                       ; $48f9: $ff
    ld b, $07                                     ; $48fa: $06 $07
    ld [$0a09], sp                                ; $48fc: $08 $09 $0a
    dec bc                                        ; $48ff: $0b
    inc c                                         ; $4900: $0c
    dec c                                         ; $4901: $0d
    ld l, a                                       ; $4902: $6f
    ld c, $0f                                     ; $4903: $0e $0f
    db $10                                        ; $4905: $10
    ld de, $f1bf                                  ; $4906: $11 $bf $f1
    ld [de], a                                    ; $4909: $12
    inc de                                        ; $490a: $13
    sub a                                         ; $490b: $97
    pop hl                                        ; $490c: $e1
    rst $18                                       ; $490d: $df
    inc d                                         ; $490e: $14
    dec d                                         ; $490f: $15
    ld d, $17                                     ; $4910: $16 $17
    dec d                                         ; $4912: $15
    adc [hl]                                      ; $4913: $8e
    xor $18                                       ; $4914: $ee $18
    add hl, de                                    ; $4916: $19
    rst $38                                       ; $4917: $ff
    ld a, [de]                                    ; $4918: $1a
    dec de                                        ; $4919: $1b
    inc e                                         ; $491a: $1c
    dec e                                         ; $491b: $1d
    ld e, $1f                                     ; $491c: $1e $1f
    jr nz, jr_07a_4941                            ; $491e: $20 $21

    ld a, a                                       ; $4920: $7f
    ld [hl+], a                                   ; $4921: $22
    inc hl                                        ; $4922: $23
    inc h                                         ; $4923: $24
    dec h                                         ; $4924: $25
    ld bc, $2726                                  ; $4925: $01 $26 $27
    ld l, h                                       ; $4928: $6c
    rst $38                                       ; $4929: $ff
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    rst $38                                       ; $4930: $ff
    rst $38                                       ; $4931: $ff
    rst $38                                       ; $4932: $ff
    rst $38                                       ; $4933: $ff
    rst $38                                       ; $4934: $ff
    rst $38                                       ; $4935: $ff
    rst $38                                       ; $4936: $ff
    rst $38                                       ; $4937: $ff
    rst $38                                       ; $4938: $ff
    rst $38                                       ; $4939: $ff
    rst $38                                       ; $493a: $ff
    nop                                           ; $493b: $00
    rst $38                                       ; $493c: $ff
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff

jr_07a_4941:
    rst $38                                       ; $4941: $ff
    rst $38                                       ; $4942: $ff
    rst $38                                       ; $4943: $ff
    rst $38                                       ; $4944: $ff
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    rst $38                                       ; $4949: $ff
    rst $38                                       ; $494a: $ff
    rst $38                                       ; $494b: $ff
    jr nc, @+$01                                  ; $494c: $30 $ff

    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    rst $38                                       ; $4954: $ff
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    ld h, d                                       ; $495a: $62
    ld c, c                                       ; $495b: $49
    and d                                         ; $495c: $a2
    ld c, c                                       ; $495d: $49
    ld a, [hl+]                                   ; $495e: $2a
    ld d, b                                       ; $495f: $50
    xor a                                         ; $4960: $af
    ld d, b                                       ; $4961: $50
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    ccf                                           ; $4964: $3f
    ccf                                           ; $4965: $3f
    rst $38                                       ; $4966: $ff
    ld a, a                                       ; $4967: $7f
    rra                                           ; $4968: $1f
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    db $ec                                        ; $496c: $ec
    nop                                           ; $496d: $00
    daa                                           ; $496e: $27
    ld [bc], a                                    ; $496f: $02
    rst $38                                       ; $4970: $ff
    ld a, a                                       ; $4971: $7f
    daa                                           ; $4972: $27
    ld [bc], a                                    ; $4973: $02
    add b                                         ; $4974: $80
    ld a, [hl]                                    ; $4975: $7e
    cpl                                           ; $4976: $2f
    ld a, a                                       ; $4977: $7f
    ld h, b                                       ; $4978: $60
    ld bc, $0000                                  ; $4979: $01 $00 $00
    cpl                                           ; $497c: $2f
    ld a, a                                       ; $497d: $7f
    db $ec                                        ; $497e: $ec
    nop                                           ; $497f: $00
    rra                                           ; $4980: $1f
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    cpl                                           ; $4984: $2f
    ld a, a                                       ; $4985: $7f
    ccf                                           ; $4986: $3f
    ccf                                           ; $4987: $3f
    rra                                           ; $4988: $1f
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    rra                                           ; $498c: $1f
    nop                                           ; $498d: $00
    ccf                                           ; $498e: $3f
    ccf                                           ; $498f: $3f
    db $ec                                        ; $4990: $ec
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    daa                                           ; $4994: $27
    ld [bc], a                                    ; $4995: $02
    ccf                                           ; $4996: $3f
    ccf                                           ; $4997: $3f
    rst $38                                       ; $4998: $ff
    ld a, a                                       ; $4999: $7f
    rst $30                                       ; $499a: $f7
    dec sp                                        ; $499b: $3b
    sub c                                         ; $499c: $91
    dec bc                                        ; $499d: $0b
    ld h, b                                       ; $499e: $60
    ld bc, $0227                                  ; $499f: $01 $27 $02
    db $db                                        ; $49a2: $db
    rst $38                                       ; $49a3: $ff
    nop                                           ; $49a4: $00
    cp $f9                                        ; $49a5: $fe $f9
    ld hl, sp+$07                                 ; $49a7: $f8 $07
    ldh [$eb], a                                  ; $49a9: $e0 $eb
    ccf                                           ; $49ab: $3f
    ret nz                                        ; $49ac: $c0

    ld a, [hl]                                    ; $49ad: $7e
    ret nc                                        ; $49ae: $d0

    rst $20                                       ; $49af: $e7
    push af                                       ; $49b0: $f5
    ld a, [bc]                                    ; $49b1: $0a
    cp $01                                        ; $49b2: $fe $01
    add sp, $17                                   ; $49b4: $e8 $17
    ret nz                                        ; $49b6: $c0

    push hl                                       ; $49b7: $e5
    rst $38                                       ; $49b8: $ff
    scf                                           ; $49b9: $37
    ret z                                         ; $49ba: $c8

    ld b, d                                       ; $49bb: $42
    cp l                                          ; $49bc: $bd
    or l                                          ; $49bd: $b5
    ld c, d                                       ; $49be: $4a
    ld a, a                                       ; $49bf: $7f
    add b                                         ; $49c0: $80
    sbc $b0                                       ; $49c1: $de $b0
    rst $20                                       ; $49c3: $e7
    rst $18                                       ; $49c4: $df
    jr nz, jr_07a_4a36                            ; $49c5: $20 $6f

    sub b                                         ; $49c7: $90
    and d                                         ; $49c8: $a2
    db $e3                                        ; $49c9: $e3
    db $eb                                        ; $49ca: $eb
    inc d                                         ; $49cb: $14
    ei                                            ; $49cc: $fb
    db $fd                                        ; $49cd: $fd
    ld [bc], a                                    ; $49ce: $02
    sbc b                                         ; $49cf: $98
    push hl                                       ; $49d0: $e5
    add sp, $17                                   ; $49d1: $e8 $17
    ld b, h                                       ; $49d3: $44
    cp e                                          ; $49d4: $bb
    and b                                         ; $49d5: $a0

jr_07a_49d6:
    sbc a                                         ; $49d6: $9f
    ld e, a                                       ; $49d7: $5f
    ld d, h                                       ; $49d8: $54
    xor e                                         ; $49d9: $ab
    ld [$c015], a                                 ; $49da: $ea $15 $c0
    pop hl                                        ; $49dd: $e1
    xor h                                         ; $49de: $ac
    db $e3                                        ; $49df: $e3
    rrca                                          ; $49e0: $0f
    rst $38                                       ; $49e1: $ff
    ldh a, [rSB]                                  ; $49e2: $f0 $01
    cp $a8                                        ; $49e4: $fe $a8
    ld d, a                                       ; $49e6: $57
    ld d, h                                       ; $49e7: $54
    xor e                                         ; $49e8: $ab
    ld a, [$05fd]                                 ; $49e9: $fa $fd $05
    ld [hl], d                                    ; $49ec: $72
    push hl                                       ; $49ed: $e5
    ld a, a                                       ; $49ee: $7f
    add b                                         ; $49ef: $80
    rlca                                          ; $49f0: $07
    ld hl, sp+$43                                 ; $49f1: $f8 $43
    cp h                                          ; $49f3: $bc
    rst $28                                       ; $49f4: $ef
    xor a                                         ; $49f5: $af
    ld d, b                                       ; $49f6: $50
    ld [hl], a                                    ; $49f7: $77
    adc b                                         ; $49f8: $88
    ld h, b                                       ; $49f9: $60
    rst $20                                       ; $49fa: $e7
    cp $01                                        ; $49fb: $fe $01
    rst $08                                       ; $49fd: $cf
    rst $30                                       ; $49fe: $f7
    jr nc, @+$03                                  ; $49ff: $30 $01

    cp $50                                        ; $4a01: $fe $50
    rst $20                                       ; $4a03: $e7
    ld a, a                                       ; $4a04: $7f
    add b                                         ; $4a05: $80
    rra                                           ; $4a06: $1f
    ldh [$e3], a                                  ; $4a07: $e0 $e3
    xor a                                         ; $4a09: $af
    ld d, b                                       ; $4a0a: $50
    db $e4                                        ; $4a0b: $e4
    push hl                                       ; $4a0c: $e5
    or d                                          ; $4a0d: $b2
    push hl                                       ; $4a0e: $e5
    jr nc, @-$1d                                  ; $4a0f: $30 $e1

    rst $20                                       ; $4a11: $e7
    jr jr_07a_4a16                                ; $4a12: $18 $02

    rst $30                                       ; $4a14: $f7
    db $fd                                        ; $4a15: $fd

jr_07a_4a16:
    ld d, l                                       ; $4a16: $55
    xor d                                         ; $4a17: $aa
    db $e4                                        ; $4a18: $e4
    push hl                                       ; $4a19: $e5
    rst $38                                       ; $4a1a: $ff
    nop                                           ; $4a1b: $00
    db $fc                                        ; $4a1c: $fc
    inc bc                                        ; $4a1d: $03
    ei                                            ; $4a1e: $fb
    pop de                                        ; $4a1f: $d1
    ld l, $a4                                     ; $4a20: $2e $a4
    push hl                                       ; $4a22: $e5
    rst $18                                       ; $4a23: $df
    jr nz, jr_07a_49d6                            ; $4a24: $20 $b0

    ld c, a                                       ; $4a26: $4f
    ld b, d                                       ; $4a27: $42
    ld a, a                                       ; $4a28: $7f
    cp l                                          ; $4a29: $bd
    dec b                                         ; $4a2a: $05
    ld a, [$45ba]                                 ; $4a2b: $fa $ba $45
    ld e, a                                       ; $4a2e: $5f
    and b                                         ; $4a2f: $a0
    inc b                                         ; $4a30: $04
    pop hl                                        ; $4a31: $e1
    rst $38                                       ; $4a32: $ff

jr_07a_4a33:
    ld b, b                                       ; $4a33: $40
    cp a                                          ; $4a34: $bf
    nop                                           ; $4a35: $00

jr_07a_4a36:
    rst $38                                       ; $4a36: $ff
    ld a, [hl+]                                   ; $4a37: $2a
    push de                                       ; $4a38: $d5
    ld d, h                                       ; $4a39: $54
    xor e                                         ; $4a3a: $ab
    ei                                            ; $4a3b: $fb
    xor d                                         ; $4a3c: $aa
    ld d, l                                       ; $4a3d: $55
    ld e, h                                       ; $4a3e: $5c
    db $e3                                        ; $4a3f: $e3
    add hl, bc                                    ; $4a40: $09
    or $00                                        ; $4a41: $f6 $00
    rst $38                                       ; $4a43: $ff
    add b                                         ; $4a44: $80
    rst $38                                       ; $4a45: $ff
    ld a, a                                       ; $4a46: $7f
    db $10                                        ; $4a47: $10
    rst $28                                       ; $4a48: $ef
    add b                                         ; $4a49: $80
    ld a, a                                       ; $4a4a: $7f
    ld d, l                                       ; $4a4b: $55
    xor d                                         ; $4a4c: $aa
    cp [hl]                                       ; $4a4d: $be
    rst $38                                       ; $4a4e: $ff
    ld b, c                                       ; $4a4f: $41
    rst $38                                       ; $4a50: $ff
    nop                                           ; $4a51: $00
    jr nz, jr_07a_4a33                            ; $4a52: $20 $df

    add b                                         ; $4a54: $80
    ld a, a                                       ; $4a55: $7f
    nop                                           ; $4a56: $00
    rst $18                                       ; $4a57: $df
    rst $38                                       ; $4a58: $ff
    dec d                                         ; $4a59: $15
    ld [$d52a], a                                 ; $4a5a: $ea $2a $d5
    xor [hl]                                      ; $4a5d: $ae
    pop hl                                        ; $4a5e: $e1
    rst $18                                       ; $4a5f: $df
    jr nz, @+$01                                  ; $4a60: $20 $ff

    ld de, $02ee                                  ; $4a62: $11 $ee $02
    db $fd                                        ; $4a65: $fd
    nop                                           ; $4a66: $00
    rst $38                                       ; $4a67: $ff
    db $10                                        ; $4a68: $10
    rst $28                                       ; $4a69: $ef
    cp a                                          ; $4a6a: $bf
    adc c                                         ; $4a6b: $89
    halt                                          ; $4a6c: $76
    ld d, h                                       ; $4a6d: $54
    xor e                                         ; $4a6e: $ab
    xor e                                         ; $4a6f: $ab
    ld d, h                                       ; $4a70: $54
    jp nz, Jump_000_01c1                          ; $4a71: $c2 $c1 $01

    ld a, a                                       ; $4a74: $7f
    cp $00                                        ; $4a75: $fe $00
    rst $38                                       ; $4a77: $ff
    and b                                         ; $4a78: $a0
    ld e, a                                       ; $4a79: $5f
    ld d, l                                       ; $4a7a: $55
    xor d                                         ; $4a7b: $aa
    xor [hl]                                      ; $4a7c: $ae
    pop hl                                        ; $4a7d: $e1
    ei                                            ; $4a7e: $fb
    cp a                                          ; $4a7f: $bf
    ld b, b                                       ; $4a80: $40
    or b                                          ; $4a81: $b0
    pop bc                                        ; $4a82: $c1
    dec b                                         ; $4a83: $05
    ld a, [$fd02]                                 ; $4a84: $fa $02 $fd
    ld b, l                                       ; $4a87: $45
    ld a, a                                       ; $4a88: $7f
    cp d                                          ; $4a89: $ba
    xor e                                         ; $4a8a: $ab
    ld d, h                                       ; $4a8b: $54
    db $dd                                        ; $4a8c: $dd
    ld [hl+], a                                   ; $4a8d: $22
    rst $28                                       ; $4a8e: $ef
    db $10                                        ; $4a8f: $10
    ld [hl-], a                                   ; $4a90: $32
    db $e3                                        ; $4a91: $e3
    di                                            ; $4a92: $f3
    xor e                                         ; $4a93: $ab
    ld d, h                                       ; $4a94: $54
    and $c9                                       ; $4a95: $e6 $c9
    and [hl]                                      ; $4a97: $a6
    jp $2bd4                                      ; $4a98: $c3 $d4 $2b


    ei                                            ; $4a9b: $fb
    inc b                                         ; $4a9c: $04
    ei                                            ; $4a9d: $fb
    push af                                       ; $4a9e: $f5
    ld a, [bc]                                    ; $4a9f: $0a
    add b                                         ; $4aa0: $80
    push bc                                       ; $4aa1: $c5
    ld e, $e1                                     ; $4aa2: $1e $e1
    nop                                           ; $4aa4: $00
    rst $38                                       ; $4aa5: $ff
    xor d                                         ; $4aa6: $aa
    db $fd                                        ; $4aa7: $fd
    ld d, l                                       ; $4aa8: $55
    ldh a, [$e7]                                  ; $4aa9: $f0 $e7
    rra                                           ; $4aab: $1f
    ldh [rWX], a                                  ; $4aac: $e0 $4b
    or h                                          ; $4aae: $b4
    sub l                                         ; $4aaf: $95
    ld l, d                                       ; $4ab0: $6a
    rst $38                                       ; $4ab1: $ff
    ld l, a                                       ; $4ab2: $6f
    sub b                                         ; $4ab3: $90
    ld [c], a                                     ; $4ab4: $e2
    dec e                                         ; $4ab5: $1d
    pop af                                        ; $4ab6: $f1
    ld c, $d6                                     ; $4ab7: $0e $d6
    add hl, hl                                    ; $4ab9: $29
    di                                            ; $4aba: $f3
    db $ed                                        ; $4abb: $ed
    ld [de], a                                    ; $4abc: $12
    ld e, b                                       ; $4abd: $58
    push bc                                       ; $4abe: $c5
    ld [hl], d                                    ; $4abf: $72
    pop hl                                        ; $4ac0: $e1
    adc d                                         ; $4ac1: $8a
    ld [hl], l                                    ; $4ac2: $75
    ld d, a                                       ; $4ac3: $57
    xor b                                         ; $4ac4: $a8
    ei                                            ; $4ac5: $fb
    db $eb                                        ; $4ac6: $eb
    inc d                                         ; $4ac7: $14
    call nz, $dde3                                ; $4ac8: $c4 $e3 $dd
    ld [hl+], a                                   ; $4acb: $22
    rrca                                          ; $4acc: $0f
    ldh a, [$80]                                  ; $4acd: $f0 $80
    rst $30                                       ; $4acf: $f7
    ld a, a                                       ; $4ad0: $7f
    ld b, c                                       ; $4ad1: $41
    cp [hl]                                       ; $4ad2: $be
    call nz, $ffe9                                ; $4ad3: $c4 $e9 $ff
    nop                                           ; $4ad6: $00
    ld e, a                                       ; $4ad7: $5f
    and b                                         ; $4ad8: $a0
    db $e3                                        ; $4ad9: $e3
    xor e                                         ; $4ada: $ab
    ld d, h                                       ; $4adb: $54
    adc h                                         ; $4adc: $8c
    rst $00                                       ; $4add: $c7
    db $ec                                        ; $4ade: $ec
    push hl                                       ; $4adf: $e5
    inc d                                         ; $4ae0: $14
    call Call_000_21de                            ; $4ae1: $cd $de $21
    and b                                         ; $4ae4: $a0
    ld l, l                                       ; $4ae5: $6d
    ld e, a                                       ; $4ae6: $5f
    ld [hl+], a                                   ; $4ae7: $22
    bit 2, a                                      ; $4ae8: $cb $57
    xor b                                         ; $4aea: $a8
    ldh a, [$a7]                                  ; $4aeb: $f0 $a7
    xor d                                         ; $4aed: $aa
    ld d, l                                       ; $4aee: $55
    db $e4                                        ; $4aef: $e4
    and c                                         ; $4af0: $a1
    add e                                         ; $4af1: $83
    ei                                            ; $4af2: $fb
    inc b                                         ; $4af3: $04
    ldh a, [$eb]                                  ; $4af4: $f0 $eb
    sub [hl]                                      ; $4af6: $96
    pop bc                                        ; $4af7: $c1
    ld e, b                                       ; $4af8: $58
    jp $e3e0                                      ; $4af9: $c3 $e0 $e3


    ld d, [hl]                                    ; $4afc: $56
    pop hl                                        ; $4afd: $e1
    and l                                         ; $4afe: $a5
    ld a, c                                       ; $4aff: $79
    ld e, d                                       ; $4b00: $5a
    or h                                          ; $4b01: $b4
    pop bc                                        ; $4b02: $c1
    ret nc                                        ; $4b03: $d0

    db $e3                                        ; $4b04: $e3
    ld [$f715], a                                 ; $4b05: $ea $15 $f7
    ld [$a1ac], sp                                ; $4b08: $08 $ac $a1
    di                                            ; $4b0b: $f3
    db $fd                                        ; $4b0c: $fd
    ld [bc], a                                    ; $4b0d: $02
    ret nz                                        ; $4b0e: $c0

    db $e3                                        ; $4b0f: $e3
    xor $c1                                       ; $4b10: $ee $c1
    ldh a, [rIF]                                  ; $4b12: $f0 $0f
    add b                                         ; $4b14: $80
    ld a, a                                       ; $4b15: $7f
    db $fc                                        ; $4b16: $fc
    sbc [hl]                                      ; $4b17: $9e
    pop bc                                        ; $4b18: $c1
    ld [hl], d                                    ; $4b19: $72
    push bc                                       ; $4b1a: $c5
    cp $01                                        ; $4b1b: $fe $01
    rra                                           ; $4b1d: $1f
    ldh [rSCX], a                                 ; $4b1e: $e0 $43
    cp h                                          ; $4b20: $bc
    rst $28                                       ; $4b21: $ef
    xor b                                         ; $4b22: $a8
    ld d, a                                       ; $4b23: $57
    ld d, l                                       ; $4b24: $55
    xor d                                         ; $4b25: $aa
    add d                                         ; $4b26: $82
    and c                                         ; $4b27: $a1
    ld [hl], a                                    ; $4b28: $77
    adc b                                         ; $4b29: $88
    cp d                                          ; $4b2a: $ba
    pop hl                                        ; $4b2b: $e1
    ld b, l                                       ; $4b2c: $45
    ld c, $c1                                     ; $4b2d: $0e $c1
    sub b                                         ; $4b2f: $90
    db $e3                                        ; $4b30: $e3
    adc d                                         ; $4b31: $8a
    pop hl                                        ; $4b32: $e1
    add sp, -$1f                                  ; $4b33: $e8 $e1
    xor d                                         ; $4b35: $aa
    ld d, l                                       ; $4b36: $55
    ld d, l                                       ; $4b37: $55
    db $fd                                        ; $4b38: $fd
    xor d                                         ; $4b39: $aa
    db $fc                                        ; $4b3a: $fc
    db $e3                                        ; $4b3b: $e3
    ldh [rIE], a                                  ; $4b3c: $e0 $ff
    db $fd                                        ; $4b3e: $fd
    ld a, [$fffe]                                 ; $4b3f: $fa $fe $ff
    ld a, [hl]                                    ; $4b42: $7e
    rst $38                                       ; $4b43: $ff
    push hl                                       ; $4b44: $e5
    xor d                                         ; $4b45: $aa
    ld d, l                                       ; $4b46: $55
    nop                                           ; $4b47: $00
    rst $38                                       ; $4b48: $ff
    ld d, l                                       ; $4b49: $55
    xor d                                         ; $4b4a: $aa
    call nc, Call_000_3fc1                        ; $4b4b: $d4 $c1 $3f
    add b                                         ; $4b4e: $80
    rst $38                                       ; $4b4f: $ff
    ret nz                                        ; $4b50: $c0

    rst $38                                       ; $4b51: $ff
    jp z, $f0f5                                   ; $4b52: $ca $f5 $f0

    rst $20                                       ; $4b55: $e7
    scf                                           ; $4b56: $37
    and c                                         ; $4b57: $a1
    ei                                            ; $4b58: $fb
    xor d                                         ; $4b59: $aa
    ld d, l                                       ; $4b5a: $55
    ldh [$e7], a                                  ; $4b5b: $e0 $e7
    ld bc, $03ff                                  ; $4b5d: $01 $ff $03
    rst $38                                       ; $4b60: $ff
    xor a                                         ; $4b61: $af
    and l                                         ; $4b62: $a5
    ld d, a                                       ; $4b63: $57
    ret nc                                        ; $4b64: $d0

    db $e3                                        ; $4b65: $e3
    ccf                                           ; $4b66: $3f
    ret nz                                        ; $4b67: $c0

    and $f7                                       ; $4b68: $e6 $f7
    db $ed                                        ; $4b6a: $ed
    ldh [$fe], a                                  ; $4b6b: $e0 $fe
    and $f0                                       ; $4b6d: $e6 $f0
    ld b, a                                       ; $4b6f: $47
    rst $38                                       ; $4b70: $ff
    db $fc                                        ; $4b71: $fc
    rst $38                                       ; $4b72: $ff
    and c                                         ; $4b73: $a1
    xor b                                         ; $4b74: $a8
    rst $20                                       ; $4b75: $e7
    add h                                         ; $4b76: $84
    ldh [$8b], a                                  ; $4b77: $e0 $8b
    db $fc                                        ; $4b79: $fc
    and $87                                       ; $4b7a: $e6 $87
    cp a                                          ; $4b7c: $bf
    nop                                           ; $4b7d: $00
    jp nz, Jump_000_3507                          ; $4b7e: $c2 $07 $35

    ccf                                           ; $4b81: $3f
    ld [$e4e0], a                                 ; $4b82: $ea $e0 $e4
    nop                                           ; $4b85: $00
    ccf                                           ; $4b86: $3f
    nop                                           ; $4b87: $00
    ld d, a                                       ; $4b88: $57
    rst $38                                       ; $4b89: $ff
    xor e                                         ; $4b8a: $ab
    rst $38                                       ; $4b8b: $ff
    ld e, a                                       ; $4b8c: $5f
    ld e, d                                       ; $4b8d: $5a
    pop hl                                        ; $4b8e: $e1
    ld b, d                                       ; $4b8f: $42
    jp Jump_000_00ff                              ; $4b90: $c3 $ff $00


    rst $20                                       ; $4b93: $e7
    ldh [$fb], a                                  ; $4b94: $e0 $fb
    ld hl, sp-$03                                 ; $4b96: $f8 $fd
    db $fc                                        ; $4b98: $fc
    cp $af                                        ; $4b99: $fe $af
    cp $0f                                        ; $4b9b: $fe $0f
    rst $38                                       ; $4b9d: $ff
    rra                                           ; $4b9e: $1f
    cp $e0                                        ; $4b9f: $fe $e0
    ccf                                           ; $4ba1: $3f
    cp $e0                                        ; $4ba2: $fe $e0
    ld a, a                                       ; $4ba4: $7f
    ret z                                         ; $4ba5: $c8

    cp $e2                                        ; $4ba6: $fe $e2
    and d                                         ; $4ba8: $a2
    and b                                         ; $4ba9: $a0
    cp $e0                                        ; $4baa: $fe $e0
    ret nz                                        ; $4bac: $c0

    cp $e2                                        ; $4bad: $fe $e2
    add h                                         ; $4baf: $84
    pop hl                                        ; $4bb0: $e1
    ei                                            ; $4bb1: $fb
    inc bc                                        ; $4bb2: $03
    rst $38                                       ; $4bb3: $ff
    rst $30                                       ; $4bb4: $f7
    rlca                                          ; $4bb5: $07
    rst $28                                       ; $4bb6: $ef
    rrca                                          ; $4bb7: $0f
    db $e3                                        ; $4bb8: $e3
    inc bc                                        ; $4bb9: $03
    pop bc                                        ; $4bba: $c1
    dec e                                         ; $4bbb: $1d
    rst $38                                       ; $4bbc: $ff
    ret z                                         ; $4bbd: $c8

    ld e, $ec                                     ; $4bbe: $1e $ec
    ld c, $f1                                     ; $4bc0: $0e $f1
    ld bc, $28d7                                  ; $4bc2: $01 $d7 $28
    ei                                            ; $4bc5: $fb
    cp a                                          ; $4bc6: $bf
    ld b, b                                       ; $4bc7: $40
    cp d                                          ; $4bc8: $ba
    add b                                         ; $4bc9: $80
    inc b                                         ; $4bca: $04
    rst $38                                       ; $4bcb: $ff
    ld a, [hl+]                                   ; $4bcc: $2a
    rst $38                                       ; $4bcd: $ff
    ld d, h                                       ; $4bce: $54
    rst $30                                       ; $4bcf: $f7
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    ld hl, sp+$2c                                 ; $4bd2: $f8 $2c
    and [hl]                                      ; $4bd4: $a6
    rst $38                                       ; $4bd5: $ff
    ld bc, $00c0                                  ; $4bd6: $01 $c0 $00
    rst $38                                       ; $4bd9: $ff
    ccf                                           ; $4bda: $3f
    ccf                                           ; $4bdb: $3f
    ld e, $de                                     ; $4bdc: $1e $de
    cp $04                                        ; $4bde: $fe $04
    rst $38                                       ; $4be0: $ff
    ld a, [bc]                                    ; $4be1: $0a
    rst $18                                       ; $4be2: $df
    rst $38                                       ; $4be3: $ff
    ld d, l                                       ; $4be4: $55
    rst $38                                       ; $4be5: $ff
    xor d                                         ; $4be6: $aa
    cp $e2                                        ; $4be7: $fe $e2
    ldh [rIF], a                                  ; $4be9: $e0 $0f
    ld l, a                                       ; $4beb: $6f
    inc bc                                        ; $4bec: $03
    rlca                                          ; $4bed: $07
    rst $30                                       ; $4bee: $f7
    call nc, $fe80                                ; $4bef: $d4 $80 $fe
    ld [c], a                                     ; $4bf2: $e2
    jp z, $f482                                   ; $4bf3: $ca $82 $f4

    ldh [$31], a                                  ; $4bf6: $e0 $31
    adc e                                         ; $4bf8: $8b
    pop bc                                        ; $4bf9: $c1
    rst $20                                       ; $4bfa: $e7
    adc $19                                       ; $4bfb: $ce $19
    add c                                         ; $4bfd: $81
    and e                                         ; $4bfe: $a3
    rst $38                                       ; $4bff: $ff
    ld d, a                                       ; $4c00: $57
    ld a, d                                       ; $4c01: $7a
    ldh [$f5], a                                  ; $4c02: $e0 $f5
    rrc a                                         ; $4c04: $cb $0f
    rrca                                          ; $4c06: $0f
    rst $38                                       ; $4c07: $ff
    and e                                         ; $4c08: $a3
    and e                                         ; $4c09: $a3
    ld d, c                                       ; $4c0a: $51
    ld d, c                                       ; $4c0b: $51
    xor b                                         ; $4c0c: $a8
    xor b                                         ; $4c0d: $a8
    call nc, $afd4                                ; $4c0e: $d4 $d4 $af
    ld a, [$fdfa]                                 ; $4c11: $fa $fa $fd
    db $fd                                        ; $4c14: $fd
    reti                                          ; $4c15: $d9


    rst $00                                       ; $4c16: $c7
    ld a, a                                       ; $4c17: $7f
    rst $38                                       ; $4c18: $ff
    ldh [$3f], a                                  ; $4c19: $e0 $3f
    ld e, h                                       ; $4c1b: $5c
    ret                                           ; $4c1c: $c9


    ret nz                                        ; $4c1d: $c0

    add sp, -$3f                                  ; $4c1e: $e8 $c1
    ld hl, sp-$01                                 ; $4c20: $f8 $ff
    db $f4                                        ; $4c22: $f4
    db $fc                                        ; $4c23: $fc
    db $e4                                        ; $4c24: $e4
    db $fd                                        ; $4c25: $fd
    pop de                                        ; $4c26: $d1
    ld l, b                                       ; $4c27: $68
    rst $38                                       ; $4c28: $ff
    ld a, [bc]                                    ; $4c29: $0a
    rst $38                                       ; $4c2a: $ff
    dec d                                         ; $4c2b: $15
    rst $38                                       ; $4c2c: $ff
    ld a, [$f7ff]                                 ; $4c2d: $fa $ff $f7
    rlca                                          ; $4c30: $07
    rst $08                                       ; $4c31: $cf
    xor $0f                                       ; $4c32: $ee $0f
    add sp, $0e                                   ; $4c34: $e8 $0e
    ccf                                           ; $4c36: $3f
    add b                                         ; $4c37: $80
    ldh [$c4], a                                  ; $4c38: $e0 $c4
    and a                                         ; $4c3a: $a7
    and b                                         ; $4c3b: $a0
    rst $38                                       ; $4c3c: $ff
    rrca                                          ; $4c3d: $0f
    nop                                           ; $4c3e: $00
    ccf                                           ; $4c3f: $3f
    nop                                           ; $4c40: $00
    ld b, a                                       ; $4c41: $47
    nop                                           ; $4c42: $00
    add e                                         ; $4c43: $83
    jr c, @+$01                                   ; $4c44: $38 $ff

    inc bc                                        ; $4c46: $03
    inc c                                         ; $4c47: $0c
    ld b, e                                       ; $4c48: $43
    inc b                                         ; $4c49: $04
    ld h, d                                       ; $4c4a: $62
    ld [$ed0c], sp                                ; $4c4b: $08 $0c $ed
    rst $38                                       ; $4c4e: $ff
    inc c                                         ; $4c4f: $0c
    db $ed                                        ; $4c50: $ed
    inc e                                         ; $4c51: $1c
    db $dd                                        ; $4c52: $dd
    inc a                                         ; $4c53: $3c
    cp l                                          ; $4c54: $bd
    inc l                                         ; $4c55: $2c
    xor l                                         ; $4c56: $ad
    rst $38                                       ; $4c57: $ff
    inc c                                         ; $4c58: $0c
    call $f300                                    ; $4c59: $cd $00 $f3
    nop                                           ; $4c5c: $00
    rst $38                                       ; $4c5d: $ff
    inc bc                                        ; $4c5e: $03
    sbc e                                         ; $4c5f: $9b
    rst $38                                       ; $4c60: $ff
    ld h, e                                       ; $4c61: $63
    dec de                                        ; $4c62: $1b
    ld h, e                                       ; $4c63: $63
    dec de                                        ; $4c64: $1b
    inc bc                                        ; $4c65: $03
    dec sp                                        ; $4c66: $3b
    rlca                                          ; $4c67: $07
    ld [hl], a                                    ; $4c68: $77
    ccf                                           ; $4c69: $3f
    dec c                                         ; $4c6a: $0d
    db $ed                                        ; $4c6b: $ed
    ld e, $9e                                     ; $4c6c: $1e $9e
    ld l, $ce                                     ; $4c6e: $2e $ce
    ld b, d                                       ; $4c70: $42
    db $e3                                        ; $4c71: $e3
    inc a                                         ; $4c72: $3c
    pop hl                                        ; $4c73: $e1
    and a                                         ; $4c74: $a7
    ccf                                           ; $4c75: $3f
    add b                                         ; $4c76: $80
    ccf                                           ; $4c77: $3f
    sub l                                         ; $4c78: $95
    add b                                         ; $4c79: $80
    ld [hl], c                                    ; $4c7a: $71
    ld h, c                                       ; $4c7b: $61
    ld c, $ce                                     ; $4c7c: $0e $ce
    ret z                                         ; $4c7e: $c8

    ld [bc], a                                    ; $4c7f: $02
    ei                                            ; $4c80: $fb
    rst $38                                       ; $4c81: $ff
    dec b                                         ; $4c82: $05
    db $fc                                        ; $4c83: $fc
    ld [c], a                                     ; $4c84: $e2
    adc d                                         ; $4c85: $8a
    rst $38                                       ; $4c86: $ff
    push bc                                       ; $4c87: $c5
    rst $38                                       ; $4c88: $ff
    jp z, $ff2f                                   ; $4c89: $ca $2f $ff

    push af                                       ; $4c8c: $f5
    rst $38                                       ; $4c8d: $ff
    xor a                                         ; $4c8e: $af
    inc a                                         ; $4c8f: $3c
    ldh [$af], a                                  ; $4c90: $e0 $af
    sub [hl]                                      ; $4c92: $96
    ret nz                                        ; $4c93: $c0

    db $fc                                        ; $4c94: $fc
    push hl                                       ; $4c95: $e5
    ld a, [c]                                     ; $4c96: $f2
    rst $20                                       ; $4c97: $e7
    and l                                         ; $4c98: $a5
    cp $ff                                        ; $4c99: $fe $ff

Call_07a_4c9b:
    ldh [rLCDC], a                                ; $4c9b: $e0 $40
    pop hl                                        ; $4c9d: $e1
    ldh a, [$f0]                                  ; $4c9e: $f0 $f0
    pop bc                                        ; $4ca0: $c1
    pop bc                                        ; $4ca1: $c1
    rst $38                                       ; $4ca2: $ff
    adc d                                         ; $4ca3: $8a
    adc d                                         ; $4ca4: $8a
    dec d                                         ; $4ca5: $15
    dec d                                         ; $4ca6: $15
    dec hl                                        ; $4ca7: $2b
    dec hl                                        ; $4ca8: $2b
    ld e, a                                       ; $4ca9: $5f
    ld e, a                                       ; $4caa: $5f
    ld a, e                                       ; $4cab: $7b
    cp a                                          ; $4cac: $bf
    cp a                                          ; $4cad: $bf
    add sp, -$1f                                  ; $4cae: $e8 $e1
    ld hl, sp-$08                                 ; $4cb0: $f8 $f8
    push af                                       ; $4cb2: $f5
    push af                                       ; $4cb3: $f5
    pop bc                                        ; $4cb4: $c1
    and e                                         ; $4cb5: $a3
    rst $38                                       ; $4cb6: $ff
    rst $00                                       ; $4cb7: $c7
    rst $00                                       ; $4cb8: $c7
    and e                                         ; $4cb9: $a3
    and e                                         ; $4cba: $a3
    rra                                           ; $4cbb: $1f
    rra                                           ; $4cbc: $1f
    rlca                                          ; $4cbd: $07
    rlca                                          ; $4cbe: $07
    rst $38                                       ; $4cbf: $ff
    ld b, e                                       ; $4cc0: $43
    ld b, e                                       ; $4cc1: $43
    xor c                                         ; $4cc2: $a9
    xor c                                         ; $4cc3: $a9
    push de                                       ; $4cc4: $d5

jr_07a_4cc5:
    push de                                       ; $4cc5: $d5
    ld hl, sp-$08                                 ; $4cc6: $f8 $f8
    rst $18                                       ; $4cc8: $df
    db $fc                                        ; $4cc9: $fc
    db $fc                                        ; $4cca: $fc
    ld a, [$fbfa]                                 ; $4ccb: $fa $fa $fb
    and $a8                                       ; $4cce: $e6 $a8
    jp Jump_07a_47c3                              ; $4cd0: $c3 $c3 $47


    and c                                         ; $4cd3: $a1
    and c                                         ; $4cd4: $a1
    db $fd                                        ; $4cd5: $fd
    db $fc                                        ; $4cd6: $fc
    and b                                         ; $4cd7: $a0
    or d                                          ; $4cd8: $b2
    ldh [$90], a                                  ; $4cd9: $e0 $90
    and [hl]                                      ; $4cdb: $a6
    ld b, b                                       ; $4cdc: $40
    ld d, b                                       ; $4cdd: $50
    ret nz                                        ; $4cde: $c0

    rst $10                                       ; $4cdf: $d7
    ld b, b                                       ; $4ce0: $40
    rst $38                                       ; $4ce1: $ff
    and b                                         ; $4ce2: $a0
    ld a, [$fcc2]                                 ; $4ce3: $fa $c2 $fc
    sbc $a0                                       ; $4ce6: $de $a0
    ld hl, sp+$03                                 ; $4ce8: $f8 $03
    db $db                                        ; $4cea: $db
    ldh a, [rTAC]                                 ; $4ceb: $f0 $07
    cp $e1                                        ; $4ced: $fe $e1
    ld a, [$f403]                                 ; $4cef: $fa $03 $f4
    and e                                         ; $4cf2: $a3
    nop                                           ; $4cf3: $00
    or $fe                                        ; $4cf4: $f6 $fe
    db $eb                                        ; $4cf6: $eb
    and b                                         ; $4cf7: $a0
    add sp, $20                                   ; $4cf8: $e8 $20
    ldh [rSTAT], a                                ; $4cfa: $e0 $41
    pop bc                                        ; $4cfc: $c1
    nop                                           ; $4cfd: $00
    ld bc, $82ef                                  ; $4cfe: $01 $ef $82
    inc bc                                        ; $4d01: $03
    pop bc                                        ; $4d02: $c1
    inc bc                                        ; $4d03: $03
    ld sp, $fee6                                  ; $4d04: $31 $e6 $fe
    ld [bc], a                                    ; $4d07: $02
    cp $ff                                        ; $4d08: $fe $ff
    dec b                                         ; $4d0a: $05
    db $fd                                        ; $4d0b: $fd
    dec de                                        ; $4d0c: $1b
    ei                                            ; $4d0d: $fb
    db $10                                        ; $4d0e: $10
    ldh [$2f], a                                  ; $4d0f: $e0 $2f
    jp z, Jump_000_1fff                           ; $4d11: $ca $ff $1f

    add c                                         ; $4d14: $81
    ld a, a                                       ; $4d15: $7f
    nop                                           ; $4d16: $00
    rst $10                                       ; $4d17: $d7
    jr z, jr_07a_4cc5                             ; $4d18: $28 $ab

    ld d, h                                       ; $4d1a: $54
    db $fc                                        ; $4d1b: $fc
    ldh [$61], a                                  ; $4d1c: $e0 $61
    jr @-$1e                                      ; $4d1e: $18 $e0

    nop                                           ; $4d20: $00
    rst $18                                       ; $4d21: $df
    ret nz                                        ; $4d22: $c0

    rst $28                                       ; $4d23: $ef
    ldh [$f7], a                                  ; $4d24: $e0 $f7
    ccf                                           ; $4d26: $3f
    ldh a, [$f3]                                  ; $4d27: $f0 $f3
    ld hl, sp-$07                                 ; $4d29: $f8 $f9
    db $fc                                        ; $4d2b: $fc
    db $fc                                        ; $4d2c: $fc
    ret                                           ; $4d2d: $c9


    jp $a056                                      ; $4d2e: $c3 $56 $a0


    ld [hl], l                                    ; $4d31: $75
    rlca                                          ; $4d32: $07
    cp $e4                                        ; $4d33: $fe $e4
    rst $28                                       ; $4d35: $ef
    ld d, [hl]                                    ; $4d36: $56
    xor h                                         ; $4d37: $ac
    xor a                                         ; $4d38: $af
    rst $38                                       ; $4d39: $ff
    rst $18                                       ; $4d3a: $df
    db $ec                                        ; $4d3b: $ec
    add sp, -$01                                  ; $4d3c: $e8 $ff
    scf                                           ; $4d3e: $37
    scf                                           ; $4d3f: $37
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    ld e, a                                       ; $4d42: $5f
    ld e, a                                       ; $4d43: $5f
    xor a                                         ; $4d44: $af
    xor a                                         ; $4d45: $af
    cp $f1                                        ; $4d46: $fe $f1
    add e                                         ; $4d48: $83
    db $e3                                        ; $4d49: $e3
    db $e3                                        ; $4d4a: $e3
    push bc                                       ; $4d4b: $c5
    push bc                                       ; $4d4c: $c5
    push de                                       ; $4d4d: $d5
    push de                                       ; $4d4e: $d5
    ld [$ea0f], a                                 ; $4d4f: $ea $0f $ea
    db $fd                                        ; $4d52: $fd
    db $fd                                        ; $4d53: $fd
    cp $df                                        ; $4d54: $fe $df
    add b                                         ; $4d56: $80
    ld a, e                                       ; $4d57: $7b
    and b                                         ; $4d58: $a0
    ld a, b                                       ; $4d59: $78
    and b                                         ; $4d5a: $a0
    rst $10                                       ; $4d5b: $d7
    add c                                         ; $4d5c: $81
    or $f0                                        ; $4d5d: $f6 $f0
    db $e3                                        ; $4d5f: $e3
    dec d                                         ; $4d60: $15
    dec d                                         ; $4d61: $15
    xor $e1                                       ; $4d62: $ee $e1
    call nc, $ead4                                ; $4d64: $d4 $d4 $ea
    ld [$3d1f], a                                 ; $4d67: $ea $1f $3d
    dec a                                         ; $4d6a: $3d
    sbc a                                         ; $4d6b: $9f
    sbc a                                         ; $4d6c: $9f
    ld e, a                                       ; $4d6d: $5f
    ld h, e                                       ; $4d6e: $63
    and b                                         ; $4d6f: $a0
    xor $e1                                       ; $4d70: $ee $e1
    or a                                          ; $4d72: $b7
    add e                                         ; $4d73: $83
    rst $38                                       ; $4d74: $ff
    adc a                                         ; $4d75: $8f
    adc a                                         ; $4d76: $8f
    ld d, [hl]                                    ; $4d77: $56
    ld d, [hl]                                    ; $4d78: $56
    db $eb                                        ; $4d79: $eb
    db $eb                                        ; $4d7a: $eb
    rst $38                                       ; $4d7b: $ff
    rst $38                                       ; $4d7c: $ff
    rst $30                                       ; $4d7d: $f7
    dec b                                         ; $4d7e: $05
    dec b                                         ; $4d7f: $05
    cp $14                                        ; $4d80: $fe $14
    db $e4                                        ; $4d82: $e4
    cp a                                          ; $4d83: $bf
    cp a                                          ; $4d84: $bf
    ld d, a                                       ; $4d85: $57
    ld d, a                                       ; $4d86: $57
    db $dd                                        ; $4d87: $dd
    ei                                            ; $4d88: $fb
    di                                            ; $4d89: $f3
    ret nz                                        ; $4d8a: $c0

    jr nz, @+$01                                  ; $4d8b: $20 $ff

    ld d, b                                       ; $4d8d: $50
    ld [de], a                                    ; $4d8e: $12
    ldh [$d4], a                                  ; $4d8f: $e0 $d4
    rst $38                                       ; $4d91: $ff
    rst $00                                       ; $4d92: $c7
    ld [$f7ff], a                                 ; $4d93: $ea $ff $f7
    ld [hl], h                                    ; $4d96: $74
    ldh [$a1], a                                  ; $4d97: $e0 $a1
    and b                                         ; $4d99: $a0
    rst $18                                       ; $4d9a: $df
    ld h, $50                                     ; $4d9b: $26 $50
    rst $38                                       ; $4d9d: $ff
    ld sp, hl                                     ; $4d9e: $f9
    xor b                                         ; $4d9f: $a8
    add sp, -$20                                  ; $4da0: $e8 $e0
    pop de                                        ; $4da2: $d1
    add hl, hl                                    ; $4da3: $29
    ld b, d                                       ; $4da4: $42
    rst $38                                       ; $4da5: $ff
    xor c                                         ; $4da6: $a9
    rst $38                                       ; $4da7: $ff
    inc bc                                        ; $4da8: $03
    rst $38                                       ; $4da9: $ff
    inc bc                                        ; $4daa: $03
    jp c, $b51b                                   ; $4dab: $da $1b $b5

    scf                                           ; $4dae: $37
    or [hl]                                       ; $4daf: $b6
    scf                                           ; $4db0: $37
    jp Jump_000_03ff                              ; $4db1: $c3 $ff $03


    sub c                                         ; $4db4: $91
    dec [hl]                                      ; $4db5: $35
    and b                                         ; $4db6: $a0
    ld [hl], $00                                  ; $4db7: $36 $00
    ld l, a                                       ; $4db9: $6f
    ld a, a                                       ; $4dba: $7f
    ei                                            ; $4dbb: $fb
    rst $38                                       ; $4dbc: $ff
    cp a                                          ; $4dbd: $bf
    sbc h                                         ; $4dbe: $9c
    and [hl]                                      ; $4dbf: $a6
    ld a, [hl]                                    ; $4dc0: $7e
    ld a, [hl]                                    ; $4dc1: $7e
    ld bc, $fe81                                  ; $4dc2: $01 $81 $fe
    sbc [hl]                                      ; $4dc5: $9e
    call z, $bea0                                 ; $4dc6: $cc $a0 $be
    cp a                                          ; $4dc9: $bf
    cp a                                          ; $4dca: $bf
    cp a                                          ; $4dcb: $bf
    or b                                          ; $4dcc: $b0
    and c                                         ; $4dcd: $a1
    xor b                                         ; $4dce: $a8
    and d                                         ; $4dcf: $a2
    nop                                           ; $4dd0: $00
    ei                                            ; $4dd1: $fb
    cp a                                          ; $4dd2: $bf
    add b                                         ; $4dd3: $80
    nop                                           ; $4dd4: $00
    db $e3                                        ; $4dd5: $e3
    ei                                            ; $4dd6: $fb
    ld hl, sp-$25                                 ; $4dd7: $f8 $db
    ld hl, sp-$49                                 ; $4dd9: $f8 $b7

jr_07a_4ddb:
    push bc                                       ; $4ddb: $c5

jr_07a_4ddc:
    ldh a, [$e0]                                  ; $4ddc: $f0 $e0
    add e                                         ; $4dde: $83
    ld e, a                                       ; $4ddf: $5f
    jp z, $fce0                                   ; $4de0: $ca $e0 $fc

    db $e3                                        ; $4de3: $e3
    rla                                           ; $4de4: $17
    add l                                         ; $4de5: $85
    rst $30                                       ; $4de6: $f7
    rst $30                                       ; $4de7: $f7
    ccf                                           ; $4de8: $3f
    db $eb                                        ; $4de9: $eb
    db $eb                                        ; $4dea: $eb
    or a                                          ; $4deb: $b7
    or a                                          ; $4dec: $b7
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff
    ld e, h                                       ; $4def: $5c
    pop bc                                        ; $4df0: $c1
    ld h, [hl]                                    ; $4df1: $66
    pop bc                                        ; $4df2: $c1
    ld a, e                                       ; $4df3: $7b
    add l                                         ; $4df4: $85
    add l                                         ; $4df5: $85
    ld l, $c1                                     ; $4df6: $2e $c1
    rst $38                                       ; $4df8: $ff
    rst $38                                       ; $4df9: $ff
    ld e, [hl]                                    ; $4dfa: $5e
    ld e, [hl]                                    ; $4dfb: $5e
    ld a, [hl+]                                   ; $4dfc: $2a
    pop bc                                        ; $4dfd: $c1
    rst $38                                       ; $4dfe: $ff
    pop af                                        ; $4dff: $f1
    pop af                                        ; $4e00: $f1
    ld l, e                                       ; $4e01: $6b
    ld l, e                                       ; $4e02: $6b
    rst $10                                       ; $4e03: $d7
    rst $10                                       ; $4e04: $d7
    rst $38                                       ; $4e05: $ff
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    and b                                         ; $4e08: $a0
    and b                                         ; $4e09: $a0
    cp a                                          ; $4e0a: $bf
    cp a                                          ; $4e0b: $bf
    ldh a, [$f0]                                  ; $4e0c: $f0 $f0
    pop hl                                        ; $4e0e: $e1
    pop hl                                        ; $4e0f: $e1
    ei                                            ; $4e10: $fb
    jp z, $f2ca                                   ; $4e11: $ca $ca $f2

    pop hl                                        ; $4e14: $e1
    db $f4                                        ; $4e15: $f4
    db $f4                                        ; $4e16: $f4
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    xor a                                         ; $4e19: $af
    rst $30                                       ; $4e1a: $f7
    xor a                                         ; $4e1b: $af
    rst $18                                       ; $4e1c: $df
    rst $18                                       ; $4e1d: $df
    sub [hl]                                      ; $4e1e: $96
    pop hl                                        ; $4e1f: $e1
    db $f4                                        ; $4e20: $f4
    db $f4                                        ; $4e21: $f4
    xor b                                         ; $4e22: $a8
    xor b                                         ; $4e23: $a8
    ld a, [hl+]                                   ; $4e24: $2a
    ldh a, [$c2]                                  ; $4e25: $f0 $c2
    ld d, a                                       ; $4e27: $57
    ld e, e                                       ; $4e28: $5b
    and b                                         ; $4e29: $a0
    rst $18                                       ; $4e2a: $df
    ld bc, $ae8a                                  ; $4e2b: $01 $8a $ae
    cp c                                          ; $4e2e: $b9
    and b                                         ; $4e2f: $a0
    rrca                                          ; $4e30: $0f
    ldh [rPCM12], a                               ; $4e31: $e0 $76
    db $ed                                        ; $4e33: $ed
    ld l, b                                       ; $4e34: $68
    ld [hl], l                                    ; $4e35: $75
    rst $38                                       ; $4e36: $ff
    ld sp, hl                                     ; $4e37: $f9
    and e                                         ; $4e38: $a3
    db $fd                                        ; $4e39: $fd
    rst $38                                       ; $4e3a: $ff
    xor d                                         ; $4e3b: $aa
    inc bc                                        ; $4e3c: $03
    and e                                         ; $4e3d: $a3
    ld h, h                                       ; $4e3e: $64
    sbc $e2                                       ; $4e3f: $de $e2
    ld hl, sp-$1f                                 ; $4e41: $f8 $e1
    xor l                                         ; $4e43: $ad
    rst $00                                       ; $4e44: $c7
    ld l, b                                       ; $4e45: $68
    sub e                                         ; $4e46: $93
    and e                                         ; $4e47: $a3
    nop                                           ; $4e48: $00
    cp $fe                                        ; $4e49: $fe $fe
    ld [c], a                                     ; $4e4b: $e2
    rst $28                                       ; $4e4c: $ef
    db $fc                                        ; $4e4d: $fc
    ld bc, $02f8                                  ; $4e4e: $01 $f8 $02
    cp $e1                                        ; $4e51: $fe $e1
    ld c, a                                       ; $4e53: $4f
    nop                                           ; $4e54: $00
    adc a                                         ; $4e55: $8f
    ld a, a                                       ; $4e56: $7f
    jr nz, jr_07a_4ddc                            ; $4e57: $20 $83

    jr nc, jr_07a_4ddb                            ; $4e59: $30 $80

    inc e                                         ; $4e5b: $1c
    nop                                           ; $4e5c: $00
    ld l, a                                       ; $4e5d: $6f
    db $e3                                        ; $4e5e: $e3
    ld h, b                                       ; $4e5f: $60
    rst $38                                       ; $4e60: $ff
    rst $08                                       ; $4e61: $cf
    nop                                           ; $4e62: $00
    or c                                          ; $4e63: $b1
    rst $30                                       ; $4e64: $f7
    and a                                         ; $4e65: $a7
    db $eb                                        ; $4e66: $eb
    ld c, e                                       ; $4e67: $4b
    rst $10                                       ; $4e68: $d7
    ccf                                           ; $4e69: $3f
    sub a                                         ; $4e6a: $97
    ccf                                           ; $4e6b: $3f
    ccf                                           ; $4e6c: $3f
    inc a                                         ; $4e6d: $3c
    cp h                                          ; $4e6e: $bc
    nop                                           ; $4e6f: $00
    db $f4                                        ; $4e70: $f4
    and d                                         ; $4e71: $a2
    call $9f80                                    ; $4e72: $cd $80 $9f
    ld [$54fc], a                                 ; $4e75: $ea $fc $54
    ldh [$e3], a                                  ; $4e78: $e0 $e3
    db $ed                                        ; $4e7a: $ed
    ld h, b                                       ; $4e7b: $60
    sub l                                         ; $4e7c: $95
    ld [bc], a                                    ; $4e7d: $02
    rrca                                          ; $4e7e: $0f
    rst $18                                       ; $4e7f: $df
    ret nz                                        ; $4e80: $c0

    cpl                                           ; $4e81: $2f
    jr nz, @-$0f                                  ; $4e82: $20 $ef

    ldh [$fe], a                                  ; $4e84: $e0 $fe
    pop hl                                        ; $4e86: $e1
    rst $18                                       ; $4e87: $df
    ret nz                                        ; $4e88: $c0

    ld d, b                                       ; $4e89: $50
    cp $e1                                        ; $4e8a: $fe $e1
    ld l, h                                       ; $4e8c: $6c
    and $5e                                       ; $4e8d: $e6 $5e
    ld l, e                                       ; $4e8f: $6b
    ld sp, hl                                     ; $4e90: $f9
    xor c                                         ; $4e91: $a9
    db $eb                                        ; $4e92: $eb
    and a                                         ; $4e93: $a7
    ld h, d                                       ; $4e94: $62
    rst $30                                       ; $4e95: $f7
    dec a                                         ; $4e96: $3d
    ld l, b                                       ; $4e97: $68
    sub l                                         ; $4e98: $95
    ld e, [hl]                                    ; $4e99: $5e
    ld sp, $bf68                                  ; $4e9a: $31 $68 $bf
    ld l, e                                       ; $4e9d: $6b
    add b                                         ; $4e9e: $80
    xor e                                         ; $4e9f: $ab
    pop hl                                        ; $4ea0: $e1
    ld b, h                                       ; $4ea1: $44
    ld b, b                                       ; $4ea2: $40
    pop hl                                        ; $4ea3: $e1
    or a                                          ; $4ea4: $b7
    jp z, $86eb                                   ; $4ea5: $ca $eb $86

    cp $d8                                        ; $4ea8: $fe $d8
    ld h, b                                       ; $4eaa: $60
    add b                                         ; $4eab: $80
    dec c                                         ; $4eac: $0d
    add b                                         ; $4ead: $80
    sbc d                                         ; $4eae: $9a
    ld b, c                                       ; $4eaf: $41
    and b                                         ; $4eb0: $a0
    rst $38                                       ; $4eb1: $ff
    ld de, $53d5                                  ; $4eb2: $11 $d5 $53
    add b                                         ; $4eb5: $80
    ret                                           ; $4eb6: $c9


    add c                                         ; $4eb7: $81
    ld b, $e1                                     ; $4eb8: $06 $e1
    ld d, l                                       ; $4eba: $55
    cp h                                          ; $4ebb: $bc
    ld h, d                                       ; $4ebc: $62
    dec l                                         ; $4ebd: $2d
    pop bc                                        ; $4ebe: $c1
    and h                                         ; $4ebf: $a4
    ret nz                                        ; $4ec0: $c0

    ld b, d                                       ; $4ec1: $42
    db $10                                        ; $4ec2: $10
    ld [c], a                                     ; $4ec3: $e2
    xor d                                         ; $4ec4: $aa
    ld b, e                                       ; $4ec5: $43
    ld h, b                                       ; $4ec6: $60
    ld [hl], h                                    ; $4ec7: $74
    ld hl, $e300                                  ; $4ec8: $21 $00 $e3
    add l                                         ; $4ecb: $85
    and l                                         ; $4ecc: $a5
    dec d                                         ; $4ecd: $15
    and [hl]                                      ; $4ece: $a6
    and $6e                                       ; $4ecf: $e6 $6e
    add b                                         ; $4ed1: $80
    ld b, e                                       ; $4ed2: $43
    ld d, a                                       ; $4ed3: $57
    rst $38                                       ; $4ed4: $ff
    rst $38                                       ; $4ed5: $ff
    ld a, [bc]                                    ; $4ed6: $0a
    ldh [$03], a                                  ; $4ed7: $e0 $03
    db $fc                                        ; $4ed9: $fc

jr_07a_4eda:
    dec c                                         ; $4eda: $0d
    jr nz, jr_07a_4eda                            ; $4edb: $20 $fd

    db $fc                                        ; $4edd: $fc
    cp $40                                        ; $4ede: $fe $40
    di                                            ; $4ee0: $f3
    nop                                           ; $4ee1: $00
    rst $20                                       ; $4ee2: $e7
    nop                                           ; $4ee3: $00
    db $dd                                        ; $4ee4: $dd
    db $dd                                        ; $4ee5: $dd
    ccf                                           ; $4ee6: $3f
    ld h, d                                       ; $4ee7: $62
    ld h, d                                       ; $4ee8: $62
    inc a                                         ; $4ee9: $3c
    dec a                                         ; $4eea: $3d
    ret nz                                        ; $4eeb: $c0

    inc bc                                        ; $4eec: $03
    dec bc                                        ; $4eed: $0b
    add b                                         ; $4eee: $80
    and c                                         ; $4eef: $a1
    ld [hl+], a                                   ; $4ef0: $22
    rst $38                                       ; $4ef1: $ff
    ccf                                           ; $4ef2: $3f
    ccf                                           ; $4ef3: $3f
    rlca                                          ; $4ef4: $07
    rst $00                                       ; $4ef5: $c7
    add hl, bc                                    ; $4ef6: $09
    jp hl                                         ; $4ef7: $e9


    dec c                                         ; $4ef8: $0d
    db $ed                                        ; $4ef9: $ed
    ld h, $fe                                     ; $4efa: $26 $fe
    push hl                                       ; $4efc: $e5
    cp a                                          ; $4efd: $bf
    add b                                         ; $4efe: $80

jr_07a_4eff:
    cp $eb                                        ; $4eff: $fe $eb
    scf                                           ; $4f01: $37
    ld b, [hl]                                    ; $4f02: $46
    ld d, l                                       ; $4f03: $55
    sub b                                         ; $4f04: $90
    jp nz, $e558                                  ; $4f05: $c2 $58 $e5

    ld hl, $f0eb                                  ; $4f08: $21 $eb $f0
    ld [c], a                                     ; $4f0b: $e2
    db $ec                                        ; $4f0c: $ec
    pop hl                                        ; $4f0d: $e1
    dec e                                         ; $4f0e: $1d
    ld b, b                                       ; $4f0f: $40
    jr nz, jr_07a_4f72                            ; $4f10: $20 $60

    and b                                         ; $4f12: $a0
    db $f4                                        ; $4f13: $f4
    db $e4                                        ; $4f14: $e4
    ret c                                         ; $4f15: $d8

    pop hl                                        ; $4f16: $e1
    sbc b                                         ; $4f17: $98
    ld l, h                                       ; $4f18: $6c
    ld hl, $e1f0                                  ; $4f19: $21 $f0 $e1
    jr nc, jr_07a_4eff                            ; $4f1c: $30 $e1

    ld a, [$8cff]                                 ; $4f1e: $fa $ff $8c
    ld [bc], a                                    ; $4f21: $02
    ld [hl], $20                                  ; $4f22: $36 $20
    dec b                                         ; $4f24: $05
    ld [$c054], sp                                ; $4f25: $08 $54 $c0
    inc h                                         ; $4f28: $24
    db $e3                                        ; $4f29: $e3
    add hl, de                                    ; $4f2a: $19

jr_07a_4f2b:
    ld h, c                                       ; $4f2b: $61
    ld a, [hl+]                                   ; $4f2c: $2a
    db $ec                                        ; $4f2d: $ec
    ld b, b                                       ; $4f2e: $40
    inc h                                         ; $4f2f: $24
    db $e3                                        ; $4f30: $e3
    ld b, b                                       ; $4f31: $40
    jp $a024                                      ; $4f32: $c3 $24 $a0


    inc d                                         ; $4f35: $14
    inc [hl]                                      ; $4f36: $34
    call nz, $e5b8                                ; $4f37: $c4 $b8 $e5
    rst $38                                       ; $4f3a: $ff
    jp c, $eac2                                   ; $4f3b: $da $c2 $ea

    cp h                                          ; $4f3e: $bc
    ld [c], a                                     ; $4f3f: $e2
    or d                                          ; $4f40: $b2
    dec h                                         ; $4f41: $25
    cp [hl]                                       ; $4f42: $be
    and b                                         ; $4f43: $a0
    ld [bc], a                                    ; $4f44: $02
    or h                                          ; $4f45: $b4
    ld b, b                                       ; $4f46: $40
    cp a                                          ; $4f47: $bf
    jr z, jr_07a_4f2b                             ; $4f48: $28 $e1

    ld l, b                                       ; $4f4a: $68
    ld [$29d2], a                                 ; $4f4b: $ea $d2 $29
    sbc l                                         ; $4f4e: $9d
    ld h, a                                       ; $4f4f: $67
    ld bc, $bbc3                                  ; $4f50: $01 $c3 $bb
    rlca                                          ; $4f53: $07
    rst $08                                       ; $4f54: $cf
    ret nz                                        ; $4f55: $c0

    nop                                           ; $4f56: $00
    add b                                         ; $4f57: $80
    ccf                                           ; $4f58: $3f
    ld a, [bc]                                    ; $4f59: $0a
    db $e4                                        ; $4f5a: $e4
    rst $28                                       ; $4f5b: $ef
    and c                                         ; $4f5c: $a1
    nop                                           ; $4f5d: $00
    add hl, de                                    ; $4f5e: $19
    ld a, a                                       ; $4f5f: $7f
    nop                                           ; $4f60: $00
    inc bc                                        ; $4f61: $03
    ret nz                                        ; $4f62: $c0

    rst $00                                       ; $4f63: $c7
    rst $08                                       ; $4f64: $cf
    nop                                           ; $4f65: $00
    sbc a                                         ; $4f66: $9f
    nop                                           ; $4f67: $00
    ld h, b                                       ; $4f68: $60
    cp b                                          ; $4f69: $b8
    ld [hl], b                                    ; $4f6a: $70
    ld b, e                                       ; $4f6b: $43
    ldh [$62], a                                  ; $4f6c: $e0 $62
    adc e                                         ; $4f6e: $8b

jr_07a_4f6f:
    dec b                                         ; $4f6f: $05
    cp $01                                        ; $4f70: $fe $01

jr_07a_4f72:
    db $fc                                        ; $4f72: $fc
    cp $e1                                        ; $4f73: $fe $e1
    dec c                                         ; $4f75: $0d
    rst $38                                       ; $4f76: $ff
    db $ed                                        ; $4f77: $ed
    dec e                                         ; $4f78: $1d
    db $dd                                        ; $4f79: $dd
    dec de                                        ; $4f7a: $1b
    db $db                                        ; $4f7b: $db
    rlca                                          ; $4f7c: $07
    rlca                                          ; $4f7d: $07

jr_07a_4f7e:
    reti                                          ; $4f7e: $d9


jr_07a_4f7f:
    ld a, a                                       ; $4f7f: $7f
    add c                                         ; $4f80: $81
    cp [hl]                                       ; $4f81: $be
    jr @+$81                                      ; $4f82: $18 $7f

    inc [hl]                                      ; $4f84: $34
    ld a, a                                       ; $4f85: $7f
    ld [$498e], sp                                ; $4f86: $08 $8e $49
    pop hl                                        ; $4f89: $e1
    add b                                         ; $4f8a: $80
    ld h, b                                       ; $4f8b: $60
    nop                                           ; $4f8c: $00
    pop de                                        ; $4f8d: $d1
    pop bc                                        ; $4f8e: $c1
    rst $20                                       ; $4f8f: $e7
    and d                                         ; $4f90: $a2
    pop hl                                        ; $4f91: $e1
    and b                                         ; $4f92: $a0
    nop                                           ; $4f93: $00
    ccf                                           ; $4f94: $3f
    jp z, $15e1                                   ; $4f95: $ca $e1 $15

    jr c, jr_07a_4f7e                             ; $4f98: $38 $e4

    sub a                                         ; $4f9a: $97
    jr nz, jr_07a_4fda                            ; $4f9b: $20 $3d

    jr nc, jr_07a_4f7f                            ; $4f9d: $30 $e0

    add b                                         ; $4f9f: $80
    ld [hl], c                                    ; $4fa0: $71
    ld [hl], c                                    ; $4fa1: $71
    ld l, [hl]                                    ; $4fa2: $6e
    rst $38                                       ; $4fa3: $ff
    ld l, [hl]                                    ; $4fa4: $6e
    ld e, a                                       ; $4fa5: $5f
    ld e, a                                       ; $4fa6: $5f
    rra                                           ; $4fa7: $1f
    sbc a                                         ; $4fa8: $9f
    ld c, $ee                                     ; $4fa9: $0e $ee
    ld bc, $f0fd                                  ; $4fab: $01 $fd $f0
    ld d, l                                       ; $4fae: $55
    ld hl, $e7e0                                  ; $4faf: $21 $e0 $e7
    ldh [$e7], a                                  ; $4fb2: $e0 $e7
    ld b, b                                       ; $4fb4: $40
    ld c, a                                       ; $4fb5: $4f
    cp a                                          ; $4fb6: $bf
    inc d                                         ; $4fb7: $14
    dec hl                                        ; $4fb8: $2b
    xor b                                         ; $4fb9: $a8
    ld d, a                                       ; $4fba: $57
    ld d, b                                       ; $4fbb: $50
    xor a                                         ; $4fbc: $af
    ld b, l                                       ; $4fbd: $45

jr_07a_4fbe:
    ld hl, $7f14                                  ; $4fbe: $21 $14 $7f
    ld [$d42a], a                                 ; $4fc1: $ea $2a $d4
    dec d                                         ; $4fc4: $15
    ld [$fd02], a                                 ; $4fc5: $ea $02 $fd
    add hl, sp                                    ; $4fc8: $39
    dec h                                         ; $4fc9: $25
    cp h                                          ; $4fca: $bc
    add b                                         ; $4fcb: $80
    add b                                         ; $4fcc: $80
    ld d, d                                       ; $4fcd: $52
    jr nz, jr_07a_4f6f                            ; $4fce: $20 $9f

    ld b, b                                       ; $4fd0: $40
    nop                                           ; $4fd1: $00
    ldh [rNR41], a                                ; $4fd2: $e0 $20
    daa                                           ; $4fd4: $27
    nop                                           ; $4fd5: $00
    rst $18                                       ; $4fd6: $df
    nop                                           ; $4fd7: $00
    rst $28                                       ; $4fd8: $ef
    nop                                           ; $4fd9: $00

jr_07a_4fda:
    nop                                           ; $4fda: $00
    db $10                                        ; $4fdb: $10
    rla                                           ; $4fdc: $17
    inc hl                                        ; $4fdd: $23
    push de                                       ; $4fde: $d5
    ld a, [bc]                                    ; $4fdf: $0a
    ccf                                           ; $4fe0: $3f
    jp z, Jump_000_1515                           ; $4fe1: $ca $15 $15

    ld a, [hl+]                                   ; $4fe4: $2a
    xor b                                         ; $4fe5: $a8
    rla                                           ; $4fe6: $17
    dec a                                         ; $4fe7: $3d
    push hl                                       ; $4fe8: $e5
    ld e, b                                       ; $4fe9: $58
    jp nz, $ea00                                  ; $4fea: $c2 $00 $ea

    add c                                         ; $4fed: $81
    ld l, d                                       ; $4fee: $6a
    pop bc                                        ; $4fef: $c1
    ld h, [hl]                                    ; $4ff0: $66
    pop bc                                        ; $4ff1: $c1
    ldh a, [$e7]                                  ; $4ff2: $f0 $e7
    ld d, [hl]                                    ; $4ff4: $56
    jp $c34e                                      ; $4ff5: $c3 $4e $c3


    ldh a, [$eb]                                  ; $4ff8: $f0 $eb
    and h                                         ; $4ffa: $a4
    add c                                         ; $4ffb: $81
    nop                                           ; $4ffc: $00
    ldh [$e9], a                                  ; $4ffd: $e0 $e9
    call c, Call_000_1ee7                         ; $4fff: $dc $e7 $1e
    jp $0131                                      ; $5002: $c3 $31 $01


    xor h                                         ; $5005: $ac
    push hl                                       ; $5006: $e5
    ld h, h                                       ; $5007: $64
    ld b, c                                       ; $5008: $41
    or b                                          ; $5009: $b0
    jp hl                                         ; $500a: $e9


    sub b                                         ; $500b: $90
    rst $20                                       ; $500c: $e7
    ld bc, $8cf5                                  ; $500d: $01 $f5 $8c
    and $2d                                       ; $5010: $e6 $2d
    nop                                           ; $5012: $00
    ld h, h                                       ; $5013: $64
    and d                                         ; $5014: $a2
    cpl                                           ; $5015: $2f
    ld hl, $a1e2                                  ; $5016: $21 $e2 $a1
    ld b, d                                       ; $5019: $42
    and e                                         ; $501a: $a3
    jr z, jr_07a_4fbe                             ; $501b: $28 $a1

    db $10                                        ; $501d: $10
    ld l, h                                       ; $501e: $6c
    db $e3                                        ; $501f: $e3
    call c, $f0e3                                 ; $5020: $dc $e3 $f0
    rst $20                                       ; $5023: $e7
    ret nc                                        ; $5024: $d0

    rst $20                                       ; $5025: $e7
    ld d, b                                       ; $5026: $50
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    add c                                         ; $502a: $81
    ld a, [bc]                                    ; $502b: $0a
    rst $38                                       ; $502c: $ff
    rst $38                                       ; $502d: $ff
    rst $38                                       ; $502e: $ff
    rst $38                                       ; $502f: $ff
    rst $38                                       ; $5030: $ff
    rst $38                                       ; $5031: $ff
    rst $38                                       ; $5032: $ff
    rst $38                                       ; $5033: $ff
    rst $38                                       ; $5034: $ff
    rst $38                                       ; $5035: $ff
    ei                                            ; $5036: $fb
    ld a, [$5c0c]                                 ; $5037: $fa $0c $5c
    rst $38                                       ; $503a: $ff
    ldh [$e0], a                                  ; $503b: $e0 $e0
    ld a, [$0d0d]                                 ; $503d: $fa $0d $0d
    dec c                                         ; $5040: $0d
    rst $18                                       ; $5041: $df
    ldh [$0b], a                                  ; $5042: $e0 $0b
    or [hl]                                       ; $5044: $b6
    pop af                                        ; $5045: $f1
    sbc l                                         ; $5046: $9d
    ld a, [hl+]                                   ; $5047: $2a
    ret nz                                        ; $5048: $c0

    pop hl                                        ; $5049: $e1
    ld [$0d0d], sp                                ; $504a: $08 $0d $0d
    db $e3                                        ; $504d: $e3
    ld a, [c]                                     ; $504e: $f2
    and b                                         ; $504f: $a0
    rst $20                                       ; $5050: $e7
    dec c                                         ; $5051: $0d
    pop af                                        ; $5052: $f1
    dec bc                                        ; $5053: $0b
    jp nz, $d2e2                                  ; $5054: $c2 $e2 $d2

    pop hl                                        ; $5057: $e1
    ld [hl], b                                    ; $5058: $70
    ldh a, [$4c]                                  ; $5059: $f0 $4c
    inc c                                         ; $505b: $0c
    inc c                                         ; $505c: $0c
    dec bc                                        ; $505d: $0b
    ld [$f07e], a                                 ; $505e: $ea $7e $f0
    rrca                                          ; $5061: $0f
    rst $38                                       ; $5062: $ff
    pop hl                                        ; $5063: $e1
    add hl, bc                                    ; $5064: $09
    rst $38                                       ; $5065: $ff
    ldh [$0e], a                                  ; $5066: $e0 $0e
    ld [$6b08], sp                                ; $5068: $08 $08 $6b
    ld [$f20e], sp                                ; $506b: $08 $0e $f2
    ld [c], a                                     ; $506e: $e2
    rrca                                          ; $506f: $0f
    ldh [$f3], a                                  ; $5070: $e0 $f3
    add hl, bc                                    ; $5072: $09
    add hl, bc                                    ; $5073: $09
    ldh [$f6], a                                  ; $5074: $e0 $f6
    adc b                                         ; $5076: $88
    cp a                                          ; $5077: $bf
    pop hl                                        ; $5078: $e1
    ldh [$e0], a                                  ; $5079: $e0 $e0
    cp $e3                                        ; $507b: $fe $e3
    ld l, a                                       ; $507d: $6f
    ret nz                                        ; $507e: $c0

    db $eb                                        ; $507f: $eb
    jp hl                                         ; $5080: $e9


    push hl                                       ; $5081: $e5
    ld hl, sp-$19                                 ; $5082: $f8 $e7
    cpl                                           ; $5084: $2f
    nop                                           ; $5085: $00
    ret nz                                        ; $5086: $c0

    rst $28                                       ; $5087: $ef
    ld a, [$e0eb]                                 ; $5088: $fa $eb $e0
    rst $38                                       ; $508b: $ff
    ldh [rIE], a                                  ; $508c: $e0 $ff
    rst $38                                       ; $508e: $ff
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    rst $38                                       ; $5091: $ff
    rst $38                                       ; $5092: $ff
    rst $38                                       ; $5093: $ff
    rst $38                                       ; $5094: $ff
    rst $38                                       ; $5095: $ff
    nop                                           ; $5096: $00
    rst $38                                       ; $5097: $ff
    rst $38                                       ; $5098: $ff
    rst $38                                       ; $5099: $ff
    rst $38                                       ; $509a: $ff
    rst $38                                       ; $509b: $ff
    rst $38                                       ; $509c: $ff
    rst $38                                       ; $509d: $ff
    rst $38                                       ; $509e: $ff
    rst $38                                       ; $509f: $ff
    rst $38                                       ; $50a0: $ff
    rst $38                                       ; $50a1: $ff
    rst $38                                       ; $50a2: $ff
    rst $38                                       ; $50a3: $ff
    rst $38                                       ; $50a4: $ff

jr_07a_50a5:
    rst $38                                       ; $50a5: $ff
    rst $38                                       ; $50a6: $ff
    nop                                           ; $50a7: $00
    rst $38                                       ; $50a8: $ff
    rst $38                                       ; $50a9: $ff
    db $ec                                        ; $50aa: $ec
    db $eb                                        ; $50ab: $eb
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    nop                                           ; $50ae: $00
    ld a, l                                       ; $50af: $7d
    nop                                           ; $50b0: $00
    rst $38                                       ; $50b1: $ff
    jp hl                                         ; $50b2: $e9


    ld bc, $0302                                  ; $50b3: $01 $02 $03
    inc b                                         ; $50b6: $04
    dec b                                         ; $50b7: $05
    xor $ea                                       ; $50b8: $ee $ea
    ld a, a                                       ; $50ba: $7f
    nop                                           ; $50bb: $00
    ld b, $07                                     ; $50bc: $06 $07
    ld [$0a09], sp                                ; $50be: $08 $09 $0a
    dec bc                                        ; $50c1: $0b
    jp c, $ffe0                                   ; $50c2: $da $e0 $ff

    inc c                                         ; $50c5: $0c
    dec c                                         ; $50c6: $0d
    ld c, $0f                                     ; $50c7: $0e $0f
    db $10                                        ; $50c9: $10
    ld de, $1312                                  ; $50ca: $11 $12 $13
    rst $30                                       ; $50cd: $f7
    inc d                                         ; $50ce: $14
    dec d                                         ; $50cf: $15
    ld d, $cc                                     ; $50d0: $16 $cc
    jp hl                                         ; $50d2: $e9


    rla                                           ; $50d3: $17
    jr jr_07a_50ef                                ; $50d4: $18 $19

    ld a, [de]                                    ; $50d6: $1a
    ld l, a                                       ; $50d7: $6f
    dec de                                        ; $50d8: $1b
    inc e                                         ; $50d9: $1c
    dec e                                         ; $50da: $1d
    ld e, $b8                                     ; $50db: $1e $b8
    pop hl                                        ; $50dd: $e1
    rra                                           ; $50de: $1f
    jr nz, jr_07a_50a5                            ; $50df: $20 $c4

    db $eb                                        ; $50e1: $eb
    ld l, [hl]                                    ; $50e2: $6e
    and h                                         ; $50e3: $a4
    pop hl                                        ; $50e4: $e1
    ld hl, $2122                                  ; $50e5: $21 $22 $21
    rst $38                                       ; $50e8: $ff
    ldh [rNR44], a                                ; $50e9: $e0 $23
    inc h                                         ; $50eb: $24
    ld a, [$4fe1]                                 ; $50ec: $fa $e1 $4f

jr_07a_50ef:
    dec h                                         ; $50ef: $25
    ld h, $27                                     ; $50f0: $26 $27
    jr z, @-$0c                                   ; $50f2: $28 $f2

    pop hl                                        ; $50f4: $e1
    adc h                                         ; $50f5: $8c
    jp hl                                         ; $50f6: $e9


    add hl, hl                                    ; $50f7: $29
    rst $38                                       ; $50f8: $ff
    ldh a, [$6e]                                  ; $50f9: $f0 $6e
    ld l, h                                       ; $50fb: $6c
    jp hl                                         ; $50fc: $e9


    ld a, [hl+]                                   ; $50fd: $2a
    dec hl                                        ; $50fe: $2b
    inc l                                         ; $50ff: $2c
    rst $38                                       ; $5100: $ff
    db $ec                                        ; $5101: $ec
    dec l                                         ; $5102: $2d
    ld l, $4c                                     ; $5103: $2e $4c
    jp hl                                         ; $5105: $e9


    rst $30                                       ; $5106: $f7
    cpl                                           ; $5107: $2f
    jr nc, jr_07a_513b                            ; $5108: $30 $31

    rst $38                                       ; $510a: $ff
    ld [c], a                                     ; $510b: $e2
    ld [hl-], a                                   ; $510c: $32
    inc sp                                        ; $510d: $33
    inc [hl]                                      ; $510e: $34
    dec [hl]                                      ; $510f: $35
    or [hl]                                       ; $5110: $b6
    or $e3                                        ; $5111: $f6 $e3
    ld [hl], $2f                                  ; $5113: $36 $2f
    ldh [$ea], a                                  ; $5115: $e0 $ea
    cpl                                           ; $5117: $2f
    scf                                           ; $5118: $37
    rst $18                                       ; $5119: $df
    ld [c], a                                     ; $511a: $e2
    jr c, @+$01                                   ; $511b: $38 $ff

    add hl, sp                                    ; $511d: $39
    ld a, [hl-]                                   ; $511e: $3a
    dec sp                                        ; $511f: $3b
    inc a                                         ; $5120: $3c
    ld sp, $0031                                  ; $5121: $31 $31 $00
    dec a                                         ; $5124: $3d
    ei                                            ; $5125: $fb
    ld a, $3f                                     ; $5126: $3e $3f
    ldh [$ea], a                                  ; $5128: $e0 $ea
    ld b, b                                       ; $512a: $40
    ld b, c                                       ; $512b: $41
    ld b, d                                       ; $512c: $42
    ld b, e                                       ; $512d: $43
    dec a                                         ; $512e: $3d
    cp $bd                                        ; $512f: $fe $bd
    ldh [rLY], a                                  ; $5131: $e0 $44
    ld b, l                                       ; $5133: $45
    ld b, [hl]                                    ; $5134: $46
    ld b, a                                       ; $5135: $47
    ld c, b                                       ; $5136: $48
    ld sp, $df31                                  ; $5137: $31 $31 $df
    ld c, c                                       ; $513a: $49

jr_07a_513b:
    ld c, d                                       ; $513b: $4a
    ld c, e                                       ; $513c: $4b
    ld c, h                                       ; $513d: $4c
    ld c, l                                       ; $513e: $4d
    db $ec                                        ; $513f: $ec
    ret                                           ; $5140: $c9


    ld c, [hl]                                    ; $5141: $4e
    ld c, a                                       ; $5142: $4f
    rst $30                                       ; $5143: $f7
    ld d, b                                       ; $5144: $50
    ld d, c                                       ; $5145: $51
    ld d, d                                       ; $5146: $52
    sbc l                                         ; $5147: $9d
    ldh [rHDMA3], a                               ; $5148: $e0 $53
    ld d, h                                       ; $514a: $54
    ld d, l                                       ; $514b: $55
    ld d, [hl]                                    ; $514c: $56
    rst $38                                       ; $514d: $ff
    ld d, a                                       ; $514e: $57
    nop                                           ; $514f: $00
    ld e, b                                       ; $5150: $58
    cpl                                           ; $5151: $2f
    ld e, c                                       ; $5152: $59
    ld e, d                                       ; $5153: $5a
    ld c, a                                       ; $5154: $4f
    ld e, e                                       ; $5155: $5b
    cp $cc                                        ; $5156: $fe $cc
    ret                                           ; $5158: $c9


    ld e, h                                       ; $5159: $5c
    ld e, l                                       ; $515a: $5d
    ld e, [hl]                                    ; $515b: $5e
    ld e, a                                       ; $515c: $5f
    ld h, b                                       ; $515d: $60
    ld h, c                                       ; $515e: $61
    ld h, d                                       ; $515f: $62
    rst $38                                       ; $5160: $ff
    ld h, e                                       ; $5161: $63
    ld sp, $6432                                  ; $5162: $31 $32 $64
    ld h, l                                       ; $5165: $65
    ld h, [hl]                                    ; $5166: $66
    ld h, a                                       ; $5167: $67
    ld l, b                                       ; $5168: $68
    rst $18                                       ; $5169: $df
    ld l, c                                       ; $516a: $69
    ld l, d                                       ; $516b: $6a
    ld l, e                                       ; $516c: $6b
    ld l, h                                       ; $516d: $6c
    ld l, l                                       ; $516e: $6d
    xor h                                         ; $516f: $ac
    ret                                           ; $5170: $c9


    ld l, [hl]                                    ; $5171: $6e
    ld l, a                                       ; $5172: $6f
    rst $30                                       ; $5173: $f7
    ld [hl], b                                    ; $5174: $70
    ld [hl], c                                    ; $5175: $71
    ld [hl], d                                    ; $5176: $72
    ld e, l                                       ; $5177: $5d
    pop hl                                        ; $5178: $e1
    ld [hl], e                                    ; $5179: $73
    ld [hl], h                                    ; $517a: $74
    ld [hl], l                                    ; $517b: $75
    halt                                          ; $517c: $76
    ld a, a                                       ; $517d: $7f
    ld [hl], a                                    ; $517e: $77
    ld a, b                                       ; $517f: $78
    ld a, c                                       ; $5180: $79
    ld a, d                                       ; $5181: $7a
    ld a, e                                       ; $5182: $7b
    ld a, h                                       ; $5183: $7c
    ld a, l                                       ; $5184: $7d
    adc h                                         ; $5185: $8c
    ret                                           ; $5186: $c9


    rst $18                                       ; $5187: $df
    ld a, [hl]                                    ; $5188: $7e
    ld a, a                                       ; $5189: $7f
    add b                                         ; $518a: $80
    add c                                         ; $518b: $81
    add d                                         ; $518c: $82
    dec a                                         ; $518d: $3d
    pop hl                                        ; $518e: $e1
    add e                                         ; $518f: $83
    add h                                         ; $5190: $84
    rst $38                                       ; $5191: $ff
    add l                                         ; $5192: $85
    ld sp, $8786                                  ; $5193: $31 $86 $87
    adc b                                         ; $5196: $88
    adc c                                         ; $5197: $89
    adc d                                         ; $5198: $8a
    adc e                                         ; $5199: $8b
    db $fd                                        ; $519a: $fd
    adc h                                         ; $519b: $8c
    ld l, h                                       ; $519c: $6c
    ret                                           ; $519d: $c9


    adc l                                         ; $519e: $8d
    adc [hl]                                      ; $519f: $8e
    adc a                                         ; $51a0: $8f
    sub b                                         ; $51a1: $90
    sub c                                         ; $51a2: $91
    sub d                                         ; $51a3: $92
    rst $38                                       ; $51a4: $ff
    ld sp, $9493                                  ; $51a5: $31 $93 $94
    sub l                                         ; $51a8: $95
    sub [hl]                                      ; $51a9: $96
    sub a                                         ; $51aa: $97
    sbc b                                         ; $51ab: $98
    sbc c                                         ; $51ac: $99
    sub $14                                       ; $51ad: $d6 $14
    pop hl                                        ; $51af: $e1
    add d                                         ; $51b0: $82
    sbc d                                         ; $51b1: $9a
    ld c, h                                       ; $51b2: $4c
    ret                                           ; $51b3: $c9


    sbc e                                         ; $51b4: $9b
    ld bc, $9ce3                                  ; $51b5: $01 $e3 $9c
    sbc l                                         ; $51b8: $9d
    ld e, a                                       ; $51b9: $5f
    ld sp, $9f9e                                  ; $51ba: $31 $9e $9f
    and b                                         ; $51bd: $a0
    and c                                         ; $51be: $a1
    db $f4                                        ; $51bf: $f4
    jp nz, Jump_000_2c82                          ; $51c0: $c2 $82 $2c

    ret                                           ; $51c3: $c9


    or a                                          ; $51c4: $b7
    and d                                         ; $51c5: $a2
    and e                                         ; $51c6: $a3
    and h                                         ; $51c7: $a4
    rst $38                                       ; $51c8: $ff
    ldh [$a5], a                                  ; $51c9: $e0 $a5
    and [hl]                                      ; $51cb: $a6
    rst $38                                       ; $51cc: $ff

jr_07a_51cd:
    pop hl                                        ; $51cd: $e1
    and a                                         ; $51ce: $a7
    xor $f5                                       ; $51cf: $ee $f5
    pop hl                                        ; $51d1: $e1
    and h                                         ; $51d2: $a4
    xor b                                         ; $51d3: $a8
    xor c                                         ; $51d4: $a9
    inc c                                         ; $51d5: $0c
    ret                                           ; $51d6: $c9


    xor d                                         ; $51d7: $aa
    xor e                                         ; $51d8: $ab
    xor h                                         ; $51d9: $ac
    ld [bc], a                                    ; $51da: $02
    rst $38                                       ; $51db: $ff
    db $ed                                        ; $51dc: $ed
    xor l                                         ; $51dd: $ad
    ld a, [hl-]                                   ; $51de: $3a
    rst $08                                       ; $51df: $cf
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    rst $38                                       ; $51e3: $ff
    rst $38                                       ; $51e4: $ff
    rst $38                                       ; $51e5: $ff
    rst $38                                       ; $51e6: $ff
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    rst $38                                       ; $51e9: $ff
    nop                                           ; $51ea: $00
    rst $38                                       ; $51eb: $ff
    rst $38                                       ; $51ec: $ff
    rst $38                                       ; $51ed: $ff
    rst $38                                       ; $51ee: $ff
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    rst $38                                       ; $51f5: $ff
    rst $38                                       ; $51f6: $ff
    rst $38                                       ; $51f7: $ff
    rst $38                                       ; $51f8: $ff
    rst $38                                       ; $51f9: $ff
    rst $38                                       ; $51fa: $ff
    nop                                           ; $51fb: $00
    rst $38                                       ; $51fc: $ff
    db $fd                                        ; $51fd: $fd
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    nop                                           ; $5200: $00
    add hl, bc                                    ; $5201: $09
    ld d, d                                       ; $5202: $52
    ld c, c                                       ; $5203: $49
    ld d, d                                       ; $5204: $52
    or e                                          ; $5205: $b3
    ld e, d                                       ; $5206: $5a
    add d                                         ; $5207: $82
    ld e, e                                       ; $5208: $5b
    and b                                         ; $5209: $a0
    ld bc, $539f                                  ; $520a: $01 $9f $53
    ret c                                         ; $520d: $d8

    ld [hl+], a                                   ; $520e: $22
    nop                                           ; $520f: $00
    nop                                           ; $5210: $00
    sbc a                                         ; $5211: $9f
    ld d, e                                       ; $5212: $53
    rst $38                                       ; $5213: $ff
    ld a, a                                       ; $5214: $7f
    ret nz                                        ; $5215: $c0

    ld [bc], a                                    ; $5216: $02
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    rst $30                                       ; $5219: $f7
    ld b, e                                       ; $521a: $43
    sbc a                                         ; $521b: $9f
    ld d, e                                       ; $521c: $53
    ret c                                         ; $521d: $d8

    ld [hl+], a                                   ; $521e: $22
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    rst $30                                       ; $5221: $f7
    ld b, e                                       ; $5222: $43
    and b                                         ; $5223: $a0
    ld bc, $02c0                                  ; $5224: $01 $c0 $02
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    rst $18                                       ; $5229: $df
    ld a, [hl+]                                   ; $522a: $2a
    reti                                          ; $522b: $d9


    jr nc, jr_07a_51cd                            ; $522c: $30 $9f

    ld e, [hl]                                    ; $522e: $5e
    nop                                           ; $522f: $00
    nop                                           ; $5230: $00
    ld e, a                                       ; $5231: $5f
    ld e, a                                       ; $5232: $5f
    rst $18                                       ; $5233: $df
    ld a, [hl+]                                   ; $5234: $2a
    reti                                          ; $5235: $d9


    jr nc, jr_07a_5238                            ; $5236: $30 $00

jr_07a_5238:
    nop                                           ; $5238: $00
    ld e, a                                       ; $5239: $5f
    ld e, a                                       ; $523a: $5f
    rst $38                                       ; $523b: $ff
    ld a, a                                       ; $523c: $7f
    rst $18                                       ; $523d: $df
    ld a, [hl+]                                   ; $523e: $2a
    nop                                           ; $523f: $00
    nop                                           ; $5240: $00
    rst $38                                       ; $5241: $ff
    ld a, a                                       ; $5242: $7f
    ld e, a                                       ; $5243: $5f
    ld e, a                                       ; $5244: $5f
    sbc a                                         ; $5245: $9f
    ld e, [hl]                                    ; $5246: $5e
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    push hl                                       ; $5249: $e5
    rst $38                                       ; $524a: $ff
    rst $38                                       ; $524b: $ff
    db $e4                                        ; $524c: $e4
    nop                                           ; $524d: $00
    cp $e4                                        ; $524e: $fe $e4
    ldh a, [$e7]                                  ; $5250: $f0 $e7
    ld bc, $07ff                                  ; $5252: $01 $ff $07
    rst $30                                       ; $5255: $f7
    rst $38                                       ; $5256: $ff
    rrca                                          ; $5257: $0f
    cp $e0                                        ; $5258: $fe $e0
    push hl                                       ; $525a: $e5
    cp $f0                                        ; $525b: $fe $f0
    ldh a, [$c0]                                  ; $525d: $f0 $c0
    add a                                         ; $525f: $87
    ret nz                                        ; $5260: $c0

    nop                                           ; $5261: $00

Jump_07a_5262:
    nop                                           ; $5262: $00
    rst $18                                       ; $5263: $df
    and $f5                                       ; $5264: $e6 $f5
    ldh [$fd], a                                  ; $5266: $e0 $fd
    ld [c], a                                     ; $5268: $e2
    ret nz                                        ; $5269: $c0

    push hl                                       ; $526a: $e5
    ld [hl], b                                    ; $526b: $70
    ld a, a                                       ; $526c: $7f
    ld a, a                                       ; $526d: $7f
    inc e                                         ; $526e: $1c
    rra                                           ; $526f: $1f
    ld b, $07                                     ; $5270: $06 $07
    inc bc                                        ; $5272: $03
    inc bc                                        ; $5273: $03
    or b                                          ; $5274: $b0
    jp hl                                         ; $5275: $e9


    rst $28                                       ; $5276: $ef

jr_07a_5277:
    ld c, $ff                                     ; $5277: $0e $ff
    rra                                           ; $5279: $1f
    ei                                            ; $527a: $fb
    and b                                         ; $527b: $a0
    push hl                                       ; $527c: $e5
    ld [$08f7], sp                                ; $527d: $08 $f7 $08
    rst $28                                       ; $5280: $ef
    rst $30                                       ; $5281: $f7
    inc b                                         ; $5282: $04
    ei                                            ; $5283: $fb
    inc b                                         ; $5284: $04
    ldh a, [$e6]                                  ; $5285: $f0 $e6
    ld sp, $31ce                                  ; $5287: $31 $ce $31
    sbc a                                         ; $528a: $9f
    adc $18                                       ; $528b: $ce $18
    rst $20                                       ; $528d: $e7
    jr jr_07a_5277                                ; $528e: $18 $e7

    add b                                         ; $5290: $80
    push hl                                       ; $5291: $e5
    pop hl                                        ; $5292: $e1
    ldh [$08], a                                  ; $5293: $e0 $08
    jp nz, $e0e1                                  ; $5295: $c2 $e1 $e0

    inc b                                         ; $5298: $04
    ld a, a                                       ; $5299: $7f
    add sp, $6d                                   ; $529a: $e8 $6d
    ld [c], a                                     ; $529c: $e2
    ld l, b                                       ; $529d: $68
    push hl                                       ; $529e: $e5
    ld hl, sp-$13                                 ; $529f: $f8 $ed
    ld bc, $fdff                                  ; $52a1: $01 $ff $fd
    inc bc                                        ; $52a4: $03
    cp $e0                                        ; $52a5: $fe $e0
    rlca                                          ; $52a7: $07
    cp $1e                                        ; $52a8: $fe $1e
    db $fc                                        ; $52aa: $fc
    inc a                                         ; $52ab: $3c
    ld hl, sp-$01                                 ; $52ac: $f8 $ff
    ld a, b                                       ; $52ae: $78
    ldh a, [$f0]                                  ; $52af: $f0 $f0
    ldh [$e0], a                                  ; $52b1: $e0 $e0
    ret nz                                        ; $52b3: $c0

    ret nz                                        ; $52b4: $c0

    add b                                         ; $52b5: $80
    sub a                                         ; $52b6: $97
    ret nz                                        ; $52b7: $c0

    nop                                           ; $52b8: $00
    add b                                         ; $52b9: $80
    ld l, c                                       ; $52ba: $69
    db $e4                                        ; $52bb: $e4
    ld bc, $e6ff                                  ; $52bc: $01 $ff $e6
    jr z, @-$19                                   ; $52bf: $28 $e5

    ret nz                                        ; $52c1: $c0

    ld a, [hl]                                    ; $52c2: $7e
    rla                                           ; $52c3: $17
    pop hl                                        ; $52c4: $e1
    ld hl, sp-$01                                 ; $52c5: $f8 $ff
    cp $1c                                        ; $52c7: $fe $1c
    rst $38                                       ; $52c9: $ff
    ld a, h                                       ; $52ca: $7c
    cp $e4                                        ; $52cb: $fe $e4
    ccf                                           ; $52cd: $3f
    db $fc                                        ; $52ce: $fc
    rst $38                                       ; $52cf: $ff
    cp $7f                                        ; $52d0: $fe $7f
    rst $38                                       ; $52d2: $ff
    ld a, a                                       ; $52d3: $7f
    sbc $e0                                       ; $52d4: $de $e0
    rst $38                                       ; $52d6: $ff
    ld [$80fd], a                                 ; $52d7: $ea $fd $80
    sub $e0                                       ; $52da: $d6 $e0
    ld h, b                                       ; $52dc: $60
    ld a, a                                       ; $52dd: $7f
    jr nc, jr_07a_531f                            ; $52de: $30 $3f

    db $10                                        ; $52e0: $10
    rra                                           ; $52e1: $1f
    rst $38                                       ; $52e2: $ff
    jr jr_07a_5304                                ; $52e3: $18 $1f

    ld [$0c0f], sp                                ; $52e5: $08 $0f $0c
    rrca                                          ; $52e8: $0f
    rra                                           ; $52e9: $1f
    pop af                                        ; $52ea: $f1
    rst $38                                       ; $52eb: $ff
    ccf                                           ; $52ec: $3f
    pop af                                        ; $52ed: $f1
    ccf                                           ; $52ee: $3f
    ldh [$7f], a                                  ; $52ef: $e0 $7f
    ldh [$7f], a                                  ; $52f1: $e0 $7f
    ret z                                         ; $52f3: $c8

    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    ret z                                         ; $52f6: $c8

    rst $38                                       ; $52f7: $ff
    call nz, $84ff                                ; $52f8: $c4 $ff $84
    nop                                           ; $52fb: $00
    rst $38                                       ; $52fc: $ff
    cp l                                          ; $52fd: $bd
    add b                                         ; $52fe: $80
    cp $e2                                        ; $52ff: $fe $e2
    ret nz                                        ; $5301: $c0

    rst $38                                       ; $5302: $ff
    ret nz                                        ; $5303: $c0

jr_07a_5304:
    ld a, a                                       ; $5304: $7f
    cp $e1                                        ; $5305: $fe $e1
    ld [bc], a                                    ; $5307: $02
    ld a, a                                       ; $5308: $7f
    db $fd                                        ; $5309: $fd
    ld [bc], a                                    ; $530a: $02
    db $fd                                        ; $530b: $fd
    ld bc, $01fe                                  ; $530c: $01 $fe $01
    cp $c0                                        ; $530f: $fe $c0
    push bc                                       ; $5311: $c5
    rst $38                                       ; $5312: $ff
    inc c                                         ; $5313: $0c
    di                                            ; $5314: $f3
    inc c                                         ; $5315: $0c
    di                                            ; $5316: $f3
    ld b, $f9                                     ; $5317: $06 $f9
    ld b, $f9                                     ; $5319: $06 $f9
    rst $38                                       ; $531b: $ff
    add e                                         ; $531c: $83
    ld a, h                                       ; $531d: $7c
    add e                                         ; $531e: $83

jr_07a_531f:
    ld a, h                                       ; $531f: $7c
    ld b, c                                       ; $5320: $41
    cp [hl]                                       ; $5321: $be
    ld b, c                                       ; $5322: $41
    cp [hl]                                       ; $5323: $be
    rst $38                                       ; $5324: $ff
    ld a, l                                       ; $5325: $7d
    add d                                         ; $5326: $82
    ld a, l                                       ; $5327: $7d
    add d                                         ; $5328: $82
    ld a, $c1                                     ; $5329: $3e $c1
    ld a, $c1                                     ; $532b: $3e $c1
    rst $38                                       ; $532d: $ff
    rra                                           ; $532e: $1f
    ldh [$1f], a                                  ; $532f: $e0 $1f
    ldh [$8f], a                                  ; $5331: $e0 $8f
    ld [hl], b                                    ; $5333: $70
    adc a                                         ; $5334: $8f
    ld [hl], b                                    ; $5335: $70
    cp $97                                        ; $5336: $fe $97
    push bc                                       ; $5338: $c5
    ld a, a                                       ; $5339: $7f
    add b                                         ; $533a: $80
    ld a, a                                       ; $533b: $7f
    add b                                         ; $533c: $80
    cp a                                          ; $533d: $bf
    ld b, b                                       ; $533e: $40
    cp a                                          ; $533f: $bf
    db $fd                                        ; $5340: $fd
    ld b, b                                       ; $5341: $40
    ld hl, $0fed                                  ; $5342: $21 $ed $0f
    db $fc                                        ; $5345: $fc
    rrca                                          ; $5346: $0f
    db $fc                                        ; $5347: $fc
    ld e, $f8                                     ; $5348: $1e $f8
    rst $38                                       ; $534a: $ff
    ld e, $f8                                     ; $534b: $1e $f8
    inc a                                         ; $534d: $3c
    ldh a, [$3c]                                  ; $534e: $f0 $3c
    ldh a, [$38]                                  ; $5350: $f0 $38
    ldh [$fb], a                                  ; $5352: $e0 $fb
    ld a, b                                       ; $5354: $78
    ldh [$98], a                                  ; $5355: $e0 $98
    push bc                                       ; $5357: $c5
    ld bc, $0301                                  ; $5358: $01 $01 $03
    inc bc                                        ; $535b: $03
    rlca                                          ; $535c: $07
    db $fc                                        ; $535d: $fc
    and b                                         ; $535e: $a0
    ret nz                                        ; $535f: $c0

    inc c                                         ; $5360: $0c
    ldh [rIE], a                                  ; $5361: $e0 $ff
    rrca                                          ; $5363: $0f
    db $fd                                        ; $5364: $fd
    rst $18                                       ; $5365: $df
    ld sp, hl                                     ; $5366: $f9
    rst $38                                       ; $5367: $ff
    rra                                           ; $5368: $1f
    pop af                                        ; $5369: $f1
    rst $38                                       ; $536a: $ff
    ld sp, hl                                     ; $536b: $f9
    rst $38                                       ; $536c: $ff
    db $fd                                        ; $536d: $fd
    ld d, c                                       ; $536e: $51
    add $bf                                       ; $536f: $c6 $bf
    ret nz                                        ; $5371: $c0

    xor $e0                                       ; $5372: $ee $e0
    push hl                                       ; $5374: $e5
    ldh a, [$fe]                                  ; $5375: $f0 $fe
    ldh [$fd], a                                  ; $5377: $e0 $fd
    daa                                           ; $5379: $27
    ldh [$fe], a                                  ; $537a: $e0 $fe
    push hl                                       ; $537c: $e5
    db $fd                                        ; $537d: $fd
    rst $38                                       ; $537e: $ff
    ccf                                           ; $537f: $3f
    cp $30                                        ; $5380: $fe $30
    pop hl                                        ; $5382: $e1
    ldh [$7f], a                                  ; $5383: $e0 $7f

jr_07a_5385:
    ldh a, [$3f]                                  ; $5385: $f0 $3f
    rst $38                                       ; $5387: $ff
    rra                                           ; $5388: $1f
    ld hl, sp-$25                                 ; $5389: $f8 $db
    ld a, a                                       ; $538b: $7f
    ret nz                                        ; $538c: $c0

    ld a, [de]                                    ; $538d: $1a
    ret nz                                        ; $538e: $c0

    dec b                                         ; $538f: $05
    rlca                                          ; $5390: $07

jr_07a_5391:
    cp $e1                                        ; $5391: $fe $e1

jr_07a_5393:
    rst $38                                       ; $5393: $ff
    rst $38                                       ; $5394: $ff
    db $dd                                        ; $5395: $dd
    add b                                         ; $5396: $80
    push de                                       ; $5397: $d5
    jp nz, Jump_000_1f1f                          ; $5398: $c2 $1f $1f

    add h                                         ; $539b: $84
    rst $38                                       ; $539c: $ff
    ld [c], a                                     ; $539d: $e2
    call nz, $ffc4                                ; $539e: $c4 $c4 $ff
    db $f4                                        ; $53a1: $f4
    ld [hl], h                                    ; $53a2: $74
    db $fc                                        ; $53a3: $fc
    inc e                                         ; $53a4: $1c
    db $ec                                        ; $53a5: $ec
    call c, Call_000_3ece                         ; $53a6: $dc $ce $3e
    or $2a                                        ; $53a9: $f6 $2a
    pop hl                                        ; $53ab: $e1
    ldh [$3f], a                                  ; $53ac: $e0 $3f
    cp $e7                                        ; $53ae: $fe $e7
    jr nz, jr_07a_5391                            ; $53b0: $20 $df

    jr nz, jr_07a_5393                            ; $53b2: $20 $df

    rst $28                                       ; $53b4: $ef
    db $10                                        ; $53b5: $10
    rst $28                                       ; $53b6: $ef
    db $10                                        ; $53b7: $10
    rst $28                                       ; $53b8: $ef
    ld b, b                                       ; $53b9: $40
    push bc                                       ; $53ba: $c5
    rst $00                                       ; $53bb: $c7
    jr c, jr_07a_5385                             ; $53bc: $38 $c7

    sbc a                                         ; $53be: $9f
    jr c, jr_07a_5424                             ; $53bf: $38 $63

    sbc h                                         ; $53c1: $9c
    ld h, e                                       ; $53c2: $63
    sbc h                                         ; $53c3: $9c
    ld b, b                                       ; $53c4: $40
    push bc                                       ; $53c5: $c5
    pop hl                                        ; $53c6: $e1
    ldh [rNR41], a                                ; $53c7: $e0 $20
    jp nc, $e0e1                                  ; $53c9: $d2 $e1 $e0

    db $10                                        ; $53cc: $10
    ld b, b                                       ; $53cd: $40
    push bc                                       ; $53ce: $c5
    ld e, h                                       ; $53cf: $5c
    call Call_000_3c78                            ; $53d0: $cd $78 $3c
    ldh [$f0], a                                  ; $53d3: $e0 $f0
    ret nz                                        ; $53d5: $c0

    ret c                                         ; $53d6: $d8

    cp $e6                                        ; $53d7: $fe $e6
    ld e, a                                       ; $53d9: $5f
    push bc                                       ; $53da: $c5
    adc e                                         ; $53db: $8b
    add $ff                                       ; $53dc: $c6 $ff
    rst $38                                       ; $53de: $ff
    ld a, e                                       ; $53df: $7b
    ret nz                                        ; $53e0: $c0

    rst $28                                       ; $53e1: $ef
    ld a, a                                       ; $53e2: $7f
    ret                                           ; $53e3: $c9


    db $e3                                        ; $53e4: $e3
    sbc [hl]                                      ; $53e5: $9e
    ret nz                                        ; $53e6: $c0

    sbc d                                         ; $53e7: $9a
    ret nz                                        ; $53e8: $c0

    ccf                                           ; $53e9: $3f
    ld a, $e1                                     ; $53ea: $3e $e1
    ld a, [hl-]                                   ; $53ec: $3a
    pop hl                                        ; $53ed: $e1
    pop af                                        ; $53ee: $f1
    rst $38                                       ; $53ef: $ff
    rst $38                                       ; $53f0: $ff
    di                                            ; $53f1: $f3
    cp $37                                        ; $53f2: $fe $37
    db $fc                                        ; $53f4: $fc
    rrca                                          ; $53f5: $0f
    ld hl, sp+$1f                                 ; $53f6: $f8 $1f
    db $fc                                        ; $53f8: $fc
    jp $f81f                                      ; $53f9: $c3 $1f $f8


    add c                                         ; $53fc: $81
    ret nz                                        ; $53fd: $c0

    ld b, [hl]                                    ; $53fe: $46
    pop hl                                        ; $53ff: $e1
    rst $28                                       ; $5400: $ef
    and l                                         ; $5401: $a5
    or $c3                                        ; $5402: $f6 $c3
    rrca                                          ; $5404: $0f
    rrca                                          ; $5405: $0f
    ld a, a                                       ; $5406: $7f
    rra                                           ; $5407: $1f
    rla                                           ; $5408: $17
    cpl                                           ; $5409: $2f
    cpl                                           ; $540a: $2f
    ld e, a                                       ; $540b: $5f
    ld c, a                                       ; $540c: $4f
    rst $38                                       ; $540d: $ff
    ld e, [hl]                                    ; $540e: $5e
    and [hl]                                      ; $540f: $a6
    cp $59                                        ; $5410: $fe $59
    and e                                         ; $5412: $a3
    ld a, [bc]                                    ; $5413: $0a
    ld a, [$fa9a]                                 ; $5414: $fa $9a $fa
    push de                                       ; $5417: $d5
    push af                                       ; $5418: $f5
    push af                                       ; $5419: $f5
    rst $38                                       ; $541a: $ff
    push af                                       ; $541b: $f5
    db $fd                                        ; $541c: $fd
    db $fd                                        ; $541d: $fd
    ld [c], a                                     ; $541e: $e2
    cp $d1                                        ; $541f: $fe $d1
    rst $18                                       ; $5421: $df
    ld c, c                                       ; $5422: $49
    db $ed                                        ; $5423: $ed

jr_07a_5424:
    rst $08                                       ; $5424: $cf
    inc [hl]                                      ; $5425: $34
    pop hl                                        ; $5426: $e1
    ldh a, [$1f]                                  ; $5427: $f0 $1f
    cp $e2                                        ; $5429: $fe $e2
    sbc a                                         ; $542b: $9f
    ld hl, sp-$71                                 ; $542c: $f8 $8f
    jp $8ff8                                      ; $542e: $c3 $f8 $8f


    or b                                          ; $5431: $b0
    xor c                                         ; $5432: $a9
    ld [hl], $c1                                  ; $5433: $36 $c1
    or b                                          ; $5435: $b0
    and a                                         ; $5436: $a7
    xor [hl]                                      ; $5437: $ae
    and e                                         ; $5438: $a3
    rrca                                          ; $5439: $0f
    rst $38                                       ; $543a: $ff
    rst $38                                       ; $543b: $ff
    ccf                                           ; $543c: $3f
    db $fc                                        ; $543d: $fc
    ld a, a                                       ; $543e: $7f
    ldh a, [$fd]                                  ; $543f: $f0 $fd
    ldh [$f3], a                                  ; $5441: $e0 $f3
    ret nz                                        ; $5443: $c0

    rst $38                                       ; $5444: $ff
    push hl                                       ; $5445: $e5
    add b                                         ; $5446: $80
    jp $c580                                      ; $5447: $c3 $80 $c5


    nop                                           ; $544a: $00
    ldh a, [$80]                                  ; $544b: $f0 $80
    rst $30                                       ; $544d: $f7
    ldh a, [$80]                                  ; $544e: $f0 $80
    ldh [$fe], a                                  ; $5450: $e0 $fe
    ld [c], a                                     ; $5452: $e2
    ret nz                                        ; $5453: $c0

    nop                                           ; $5454: $00
    ldh [rP1], a                                  ; $5455: $e0 $00
    ei                                            ; $5457: $fb
    ret nz                                        ; $5458: $c0

    nop                                           ; $5459: $00
    or e                                          ; $545a: $b3
    ldh [$f8], a                                  ; $545b: $e0 $f8
    rra                                           ; $545d: $1f
    ld hl, sp+$0f                                 ; $545e: $f8 $0f
    db $fd                                        ; $5460: $fd
    rst $38                                       ; $5461: $ff
    rlca                                          ; $5462: $07
    rst $38                                       ; $5463: $ff
    ld [bc], a                                    ; $5464: $02
    rst $38                                       ; $5465: $ff
    inc b                                         ; $5466: $04
    rst $38                                       ; $5467: $ff
    ld [$d1ff], sp                                ; $5468: $08 $ff $d1
    ldh a, [$62]                                  ; $546b: $f0 $62
    ld [c], a                                     ; $546d: $e2
    cp b                                          ; $546e: $b8
    rst $20                                       ; $546f: $e7
    add h                                         ; $5470: $84
    and c                                         ; $5471: $a1
    ld [bc], a                                    ; $5472: $02
    rst $38                                       ; $5473: $ff
    ldh [rDIV], a                                 ; $5474: $e0 $04
    inc b                                         ; $5476: $04
    ld a, l                                       ; $5477: $7d
    ld [$e0ff], sp                                ; $5478: $08 $ff $e0
    db $10                                        ; $547b: $10
    db $10                                        ; $547c: $10
    sbc a                                         ; $547d: $9f
    rst $38                                       ; $547e: $ff
    rra                                           ; $547f: $1f
    cp $e0                                        ; $5480: $fe $e0
    ld a, a                                       ; $5482: $7f
    ccf                                           ; $5483: $3f
    cp $3f                                        ; $5484: $fe $3f
    cp $7f                                        ; $5486: $fe $7f
    db $fc                                        ; $5488: $fc
    ld a, a                                       ; $5489: $7f
    ld h, [hl]                                    ; $548a: $66
    ret nz                                        ; $548b: $c0

    ei                                            ; $548c: $fb
    db $e3                                        ; $548d: $e3
    db $e3                                        ; $548e: $e3
    add [hl]                                      ; $548f: $86
    pop bc                                        ; $5490: $c1
    rlca                                          ; $5491: $07
    rlca                                          ; $5492: $07
    dec c                                         ; $5493: $0d
    dec c                                         ; $5494: $0d
    rrca                                          ; $5495: $0f
    rst $38                                       ; $5496: $ff
    rrca                                          ; $5497: $0f
    rlca                                          ; $5498: $07
    rlca                                          ; $5499: $07
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    dec h                                         ; $549c: $25
    rst $20                                       ; $549d: $e7
    sub d                                         ; $549e: $92
    rst $38                                       ; $549f: $ff
    di                                            ; $54a0: $f3
    ld c, c                                       ; $54a1: $49
    ld a, c                                       ; $54a2: $79
    jr z, jr_07a_54dd                             ; $54a3: $28 $38

    and h                                         ; $54a5: $a4
    cp h                                          ; $54a6: $bc
    and [hl]                                      ; $54a7: $a6
    rst $38                                       ; $54a8: $ff
    cp [hl]                                       ; $54a9: $be
    jr c, jr_07a_54e4                             ; $54aa: $38 $38

    ld h, e                                       ; $54ac: $63
    ld h, e                                       ; $54ad: $63
    adc l                                         ; $54ae: $8d
    adc a                                         ; $54af: $8f
    ld h, l                                       ; $54b0: $65
    cpl                                           ; $54b1: $2f
    rst $20                                       ; $54b2: $e7
    rla                                           ; $54b3: $17
    rst $30                                       ; $54b4: $f7
    adc e                                         ; $54b5: $8b
    ret z                                         ; $54b6: $c8

    add b                                         ; $54b7: $80
    rlca                                          ; $54b8: $07
    rst $38                                       ; $54b9: $ff
    ldh [$58], a                                  ; $54ba: $e0 $58
    ret nz                                        ; $54bc: $c0

    cp $90                                        ; $54bd: $fe $90
    and h                                         ; $54bf: $a4
    ldh a, [rIE]                                  ; $54c0: $f0 $ff
    cp $9f                                        ; $54c2: $fe $9f
    rst $38                                       ; $54c4: $ff
    add e                                         ; $54c5: $83
    rst $38                                       ; $54c6: $ff
    xor c                                         ; $54c7: $a9
    add b                                         ; $54c8: $80
    ld e, b                                       ; $54c9: $58
    add c                                         ; $54ca: $81
    ld l, e                                       ; $54cb: $6b
    add b                                         ; $54cc: $80
    rst $00                                       ; $54cd: $c7
    ld e, c                                       ; $54ce: $59
    call nz, $faf0                                ; $54cf: $c4 $f0 $fa
    add c                                         ; $54d2: $81
    inc bc                                        ; $54d3: $03
    rst $18                                       ; $54d4: $df
    rst $38                                       ; $54d5: $ff
    pop hl                                        ; $54d6: $e1
    rst $38                                       ; $54d7: $ff
    db $fd                                        ; $54d8: $fd
    ld a, a                                       ; $54d9: $7f
    ld b, l                                       ; $54da: $45
    ldh [$03], a                                  ; $54db: $e0 $03

jr_07a_54dd:
    rst $38                                       ; $54dd: $ff
    rst $38                                       ; $54de: $ff
    nop                                           ; $54df: $00
    jp nz, $c100                                  ; $54e0: $c2 $00 $c1

    nop                                           ; $54e3: $00

jr_07a_54e4:
    ld [$f500], a                                 ; $54e4: $ea $00 $f5
    ei                                            ; $54e7: $fb
    add b                                         ; $54e8: $80
    ld a, [$c207]                                 ; $54e9: $fa $07 $c2
    rst $38                                       ; $54ec: $ff

jr_07a_54ed:
    ld hl, sp-$60                                 ; $54ed: $f8 $a0
    nop                                           ; $54ef: $00
    ld b, b                                       ; $54f0: $40
    ld h, l                                       ; $54f1: $65
    nop                                           ; $54f2: $00
    db $fc                                        ; $54f3: $fc
    pop hl                                        ; $54f4: $e1
    add b                                         ; $54f5: $80
    db $fc                                        ; $54f6: $fc
    db $e4                                        ; $54f7: $e4
    db $e4                                        ; $54f8: $e4
    add b                                         ; $54f9: $80
    nop                                           ; $54fa: $00
    ld [bc], a                                    ; $54fb: $02
    db $fc                                        ; $54fc: $fc
    ldh [rIE], a                                  ; $54fd: $e0 $ff
    inc bc                                        ; $54ff: $03
    nop                                           ; $5500: $00
    rlca                                          ; $5501: $07
    ld bc, $030f                                  ; $5502: $01 $0f $03
    ccf                                           ; $5505: $3f
    ld a, $ff                                     ; $5506: $3e $ff
    cp b                                          ; $5508: $b8
    db $10                                        ; $5509: $10
    ld [hl], b                                    ; $550a: $70
    jr nz, jr_07a_54ed                            ; $550b: $20 $e0

    ld b, b                                       ; $550d: $40
    ret nz                                        ; $550e: $c0

    add b                                         ; $550f: $80
    ld a, a                                       ; $5510: $7f
    and b                                         ; $5511: $a0
    add b                                         ; $5512: $80
    ret nc                                        ; $5513: $d0

    nop                                           ; $5514: $00
    xor d                                         ; $5515: $aa
    nop                                           ; $5516: $00
    call nc, $88f3                                ; $5517: $d4 $f3 $88
    cp $bc                                        ; $551a: $fe $bc
    add c                                         ; $551c: $81
    inc bc                                        ; $551d: $03
    ld [bc], a                                    ; $551e: $02
    rst $38                                       ; $551f: $ff
    ld hl, $23fd                                  ; $5520: $21 $fd $23
    ld a, [$46ff]                                 ; $5523: $fa $ff $46
    ld a, [c]                                     ; $5526: $f2
    ld c, [hl]                                    ; $5527: $4e
    db $e4                                        ; $5528: $e4
    sbc h                                         ; $5529: $9c
    call nz, $8c3c                                ; $552a: $c4 $3c $8c
    rst $38                                       ; $552d: $ff
    ld a, h                                       ; $552e: $7c
    dec e                                         ; $552f: $1d
    db $fd                                        ; $5530: $fd
    db $fc                                        ; $5531: $fc
    ld hl, sp-$04                                 ; $5532: $f8 $fc
    ld a, b                                       ; $5534: $78
    cp $7f                                        ; $5535: $fe $7f
    jr c, @+$01                                   ; $5537: $38 $ff

    inc e                                         ; $5539: $1c
    rst $38                                       ; $553a: $ff
    ld e, $e3                                     ; $553b: $1e $e3
    ld a, a                                       ; $553d: $7f
    jp nz, $fec2                                  ; $553e: $c2 $c2 $fe

    ld h, [hl]                                    ; $5541: $66
    and c                                         ; $5542: $a1
    ld [bc], a                                    ; $5543: $02
    rlca                                          ; $5544: $07
    ld b, $ff                                     ; $5545: $06 $ff
    inc c                                         ; $5547: $0c
    rst $38                                       ; $5548: $ff
    cp $0f                                        ; $5549: $fe $0f
    pop bc                                        ; $554b: $c1
    rst $38                                       ; $554c: $ff
    jr nz, @+$01                                  ; $554d: $20 $ff

    ld e, h                                       ; $554f: $5c
    ldh [$6d], a                                  ; $5550: $e0 $6d
    db $e3                                        ; $5552: $e3
    and h                                         ; $5553: $a4
    add b                                         ; $5554: $80
    inc h                                         ; $5555: $24
    pop bc                                        ; $5556: $c1
    ld a, [c]                                     ; $5557: $f2
    and b                                         ; $5558: $a0
    ld h, l                                       ; $5559: $65
    ld hl, sp-$01                                 ; $555a: $f8 $ff
    db $e4                                        ; $555c: $e4
    jp $e084                                      ; $555d: $c3 $84 $e0


    rst $38                                       ; $5560: $ff
    ldh a, [$7f]                                  ; $5561: $f0 $7f
    rra                                           ; $5563: $1f
    ld a, b                                       ; $5564: $78
    ld a, a                                       ; $5565: $7f
    ld a, b                                       ; $5566: $78
    rst $38                                       ; $5567: $ff
    db $fc                                        ; $5568: $fc
    ld h, h                                       ; $5569: $64
    and c                                         ; $556a: $a1
    xor a                                         ; $556b: $af
    pop bc                                        ; $556c: $c1
    add hl, bc                                    ; $556d: $09
    and b                                         ; $556e: $a0
    sbc a                                         ; $556f: $9f
    rlca                                          ; $5570: $07
    cp $07                                        ; $5571: $fe $07
    cp $03                                        ; $5573: $fe $03
    ld d, l                                       ; $5575: $55
    ret nz                                        ; $5576: $c0

    di                                            ; $5577: $f3
    ldh [rTAC], a                                 ; $5578: $e0 $07
    xor $f3                                       ; $557a: $ee $f3
    ldh [$03], a                                  ; $557c: $e0 $03
    cp $03                                        ; $557e: $fe $03
    ld a, h                                       ; $5580: $7c
    ld h, b                                       ; $5581: $60
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    jr nz, @+$01                                  ; $5584: $20 $ff

    jr nz, jr_07a_5598                            ; $5586: $20 $10

    db $10                                        ; $5588: $10
    inc c                                         ; $5589: $0c
    inc c                                         ; $558a: $0c
    inc bc                                        ; $558b: $03
    rlca                                          ; $558c: $07
    nop                                           ; $558d: $00
    rst $38                                       ; $558e: $ff
    rlca                                          ; $558f: $07
    nop                                           ; $5590: $00
    inc bc                                        ; $5591: $03
    add b                                         ; $5592: $80
    add c                                         ; $5593: $81
    rra                                           ; $5594: $1f
    rra                                           ; $5595: $1f
    inc bc                                        ; $5596: $03
    db $fd                                        ; $5597: $fd

jr_07a_5598:
    inc bc                                        ; $5598: $03
    add h                                         ; $5599: $84
    ld h, e                                       ; $559a: $63
    ret nz                                        ; $559b: $c0

    ret nz                                        ; $559c: $c0

    ld [hl], c                                    ; $559d: $71
    pop af                                        ; $559e: $f1
    dec de                                        ; $559f: $1b
    ei                                            ; $55a0: $fb
    rst $38                                       ; $55a1: $ff
    ld bc, $c3ff                                  ; $55a2: $01 $ff $c3
    rst $38                                       ; $55a5: $ff
    rst $38                                       ; $55a6: $ff
    db $fc                                        ; $55a7: $fc
    ccf                                           ; $55a8: $3f
    jr nc, @-$4b                                  ; $55a9: $30 $b3

    ld a, a                                       ; $55ab: $7f
    ld h, b                                       ; $55ac: $60
    dec e                                         ; $55ad: $1d
    add b                                         ; $55ae: $80
    ld sp, $c1c0                                  ; $55af: $31 $c0 $c1
    pop bc                                        ; $55b2: $c1
    ld a, $e9                                     ; $55b3: $3e $e9
    inc bc                                        ; $55b5: $03
    rst $38                                       ; $55b6: $ff
    inc bc                                        ; $55b7: $03
    ld a, [$f400]                                 ; $55b8: $fa $00 $f4
    add b                                         ; $55bb: $80
    ld hl, sp-$80                                 ; $55bc: $f8 $80
    db $f4                                        ; $55be: $f4
    rst $18                                       ; $55bf: $df
    add b                                         ; $55c0: $80
    db $eb                                        ; $55c1: $eb
    add b                                         ; $55c2: $80
    rst $38                                       ; $55c3: $ff
    adc d                                         ; $55c4: $8a

jr_07a_55c5:
    ld de, $07c1                                  ; $55c5: $11 $c1 $07
    ld [bc], a                                    ; $55c8: $02
    ccf                                           ; $55c9: $3f
    rrca                                          ; $55ca: $0f
    inc b                                         ; $55cb: $04
    ccf                                           ; $55cc: $3f
    ld [$30ff], sp                                ; $55cd: $08 $ff $30
    rst $28                                       ; $55d0: $ef
    ld h, b                                       ; $55d1: $60
    rra                                           ; $55d2: $1f
    ld h, c                                       ; $55d3: $61
    ld e, a                                       ; $55d4: $5f
    ccf                                           ; $55d5: $3f
    rst $38                                       ; $55d6: $ff
    ld e, $ff                                     ; $55d7: $1e $ff
    ld a, $fe                                     ; $55d9: $3e $fe
    ldh [$7e], a                                  ; $55db: $e0 $7e
    cp b                                          ; $55dd: $b8
    and b                                         ; $55de: $a0
    call $b0fe                                    ; $55df: $cd $fe $b0
    add b                                         ; $55e2: $80
    ld sp, hl                                     ; $55e3: $f9
    ccf                                           ; $55e4: $3f
    db $ed                                        ; $55e5: $ed
    ldh [$4e], a                                  ; $55e6: $e0 $4e
    pop bc                                        ; $55e8: $c1
    ld e, $fe                                     ; $55e9: $1e $fe
    rst $38                                       ; $55eb: $ff
    ld e, [hl]                                    ; $55ec: $5e
    cp $7e                                        ; $55ed: $fe $7e
    cp $3e                                        ; $55ef: $fe $3e
    cp $f9                                        ; $55f1: $fe $f9
    ld sp, hl                                     ; $55f3: $f9
    push af                                       ; $55f4: $f5
    ei                                            ; $55f5: $fb
    inc a                                         ; $55f6: $3c
    ld h, b                                       ; $55f7: $60
    rrca                                          ; $55f8: $0f
    rst $38                                       ; $55f9: $ff
    ldh [$0e], a                                  ; $55fa: $e0 $0e
    ld c, $0f                                     ; $55fc: $0e $0f
    rrca                                          ; $55fe: $0f
    rst $38                                       ; $55ff: $ff
    inc e                                         ; $5600: $1c
    inc e                                         ; $5601: $1c
    db $fc                                        ; $5602: $fc
    db $fc                                        ; $5603: $fc
    cp $9e                                        ; $5604: $fe $9e
    cp $0e                                        ; $5606: $fe $0e
    dec hl                                        ; $5608: $2b
    cp $06                                        ; $5609: $fe $06
    cp $e4                                        ; $560b: $fe $e4
    add [hl]                                      ; $560d: $86
    ld l, [hl]                                    ; $560e: $6e
    add b                                         ; $560f: $80
    inc bc                                        ; $5610: $03
    sub [hl]                                      ; $5611: $96
    ld h, h                                       ; $5612: $64
    rst $28                                       ; $5613: $ef
    ld b, h                                       ; $5614: $44
    jp c, $a5a6                                   ; $5615: $da $a6 $a5

    ret nz                                        ; $5618: $c0

    sbc [hl]                                      ; $5619: $9e
    ld h, b                                       ; $561a: $60
    adc a                                         ; $561b: $8f
    adc a                                         ; $561c: $8f
    ret nz                                        ; $561d: $c0

    adc e                                         ; $561e: $8b
    add h                                         ; $561f: $84
    ei                                            ; $5620: $fb
    ldh a, [$c5]                                  ; $5621: $f0 $c5
    ld h, c                                       ; $5623: $61
    jr @-$5d                                      ; $5624: $18 $a1

    ld a, [de]                                    ; $5626: $1a
    ld [c], a                                     ; $5627: $e2
    ld e, $e0                                     ; $5628: $1e $e0
    rrca                                          ; $562a: $0f
    cp $0f                                        ; $562b: $fe $0f
    ld a, h                                       ; $562d: $7c
    ei                                            ; $562e: $fb
    rrca                                          ; $562f: $0f
    jr c, jr_07a_55c5                             ; $5630: $38 $93

    ld h, b                                       ; $5632: $60
    db $10                                        ; $5633: $10
    ccf                                           ; $5634: $3f
    jr nc, jr_07a_5676                            ; $5635: $30 $3f

    jr nz, @-$01                                  ; $5637: $20 $fd

    ld a, a                                       ; $5639: $7f
    db $10                                        ; $563a: $10
    adc b                                         ; $563b: $88
    ld b, $06                                     ; $563c: $06 $06
    jr jr_07a_5658                                ; $563e: $18 $18

    jr nz, jr_07a_5662                            ; $5640: $20 $20

    cp $16                                        ; $5642: $fe $16
    and c                                         ; $5644: $a1
    ld e, $1e                                     ; $5645: $1e $1e
    dec a                                         ; $5647: $3d
    dec a                                         ; $5648: $3d
    ld a, [$0dfa]                                 ; $5649: $fa $fa $0d
    rst $18                                       ; $564c: $df
    dec c                                         ; $564d: $0d
    ld [bc], a                                    ; $564e: $02
    ld [bc], a                                    ; $564f: $02
    ld bc, $5001                                  ; $5650: $01 $01 $50
    ld b, b                                       ; $5653: $40
    ld e, a                                       ; $5654: $5f
    rst $38                                       ; $5655: $ff
    rst $30                                       ; $5656: $f7
    xor a                                         ; $5657: $af

jr_07a_5658:
    rst $38                                       ; $5658: $ff
    ld b, a                                       ; $5659: $47
    ld h, e                                       ; $565a: $63
    ld b, b                                       ; $565b: $40
    rlca                                          ; $565c: $07
    cp $0e                                        ; $565d: $fe $0e
    db $fc                                        ; $565f: $fc
    db $fd                                        ; $5660: $fd
    inc e                                         ; $5661: $1c

jr_07a_5662:
    ld b, b                                       ; $5662: $40
    ld b, e                                       ; $5663: $43
    db $fd                                        ; $5664: $fd
    db $fd                                        ; $5665: $fd
    ld a, [$d5fa]                                 ; $5666: $fa $fa $d5
    push de                                       ; $5669: $d5
    rst $38                                       ; $566a: $ff
    and c                                         ; $566b: $a1
    and c                                         ; $566c: $a1
    ld bc, $f901                                  ; $566d: $01 $01 $f9
    rst $38                                       ; $5670: $ff
    ret c                                         ; $5671: $d8

    rst $18                                       ; $5672: $df
    ld a, a                                       ; $5673: $7f
    sub b                                         ; $5674: $90
    sbc a                                         ; $5675: $9f

jr_07a_5676:
    db $10                                        ; $5676: $10
    rra                                           ; $5677: $1f
    db $10                                        ; $5678: $10
    rra                                           ; $5679: $1f
    ldh a, [rNR11]                                ; $567a: $f0 $11
    ld h, b                                       ; $567c: $60
    ei                                            ; $567d: $fb
    db $fc                                        ; $567e: $fc
    rst $38                                       ; $567f: $ff
    sbc c                                         ; $5680: $99
    ld h, b                                       ; $5681: $60
    ld a, a                                       ; $5682: $7f
    ret nz                                        ; $5683: $c0

    ccf                                           ; $5684: $3f
    ldh [$1f], a                                  ; $5685: $e0 $1f
    rst $38                                       ; $5687: $ff
    ldh a, [rIF]                                  ; $5688: $f0 $0f
    ld hl, sp+$07                                 ; $568a: $f8 $07
    cp $41                                        ; $568c: $fe $41
    rst $38                                       ; $568e: $ff

jr_07a_568f:
    jr nc, jr_07a_568f                            ; $568f: $30 $fe

    cp [hl]                                       ; $5691: $be
    ld c, b                                       ; $5692: $48
    cp $07                                        ; $5693: $fe $07
    ld sp, hl                                     ; $5695: $f9
    rst $38                                       ; $5696: $ff
    rlca                                          ; $5697: $07
    ld a, $fe                                     ; $5698: $3e $fe
    cp $0e                                        ; $569a: $fe $0e
    pop hl                                        ; $569c: $e1
    ld a, [hl]                                    ; $569d: $7e
    cp $40                                        ; $569e: $fe $40
    ret nz                                        ; $56a0: $c0

    pop bc                                        ; $56a1: $c1
    pop bc                                        ; $56a2: $c1
    add e                                         ; $56a3: $83
    ld a, a                                       ; $56a4: $7f
    add e                                         ; $56a5: $83
    ld b, $06                                     ; $56a6: $06 $06
    rst $38                                       ; $56a8: $ff
    jr c, @+$01                                   ; $56a9: $38 $ff

    ld [hl], b                                    ; $56ab: $70
    cp b                                          ; $56ac: $b8
    ld h, b                                       ; $56ad: $60
    ret                                           ; $56ae: $c9


    ldh [$5e], a                                  ; $56af: $e0 $5e
    pop bc                                        ; $56b1: $c1
    jp c, Jump_000_08c0                           ; $56b2: $da $c0 $08

    inc d                                         ; $56b5: $14
    ldh [$fe], a                                  ; $56b6: $e0 $fe
    ldh [$fc], a                                  ; $56b8: $e0 $fc
    inc e                                         ; $56ba: $1c
    rst $38                                       ; $56bb: $ff
    db $fc                                        ; $56bc: $fc
    inc e                                         ; $56bd: $1c
    ld hl, sp+$18                                 ; $56be: $f8 $18
    ld hl, sp+$38                                 ; $56c0: $f8 $38
    ld hl, sp+$38                                 ; $56c2: $f8 $38
    cp $a0                                        ; $56c4: $fe $a0
    ld c, e                                       ; $56c6: $4b
    inc bc                                        ; $56c7: $03
    inc bc                                        ; $56c8: $03
    ld [c], a                                     ; $56c9: $e2
    db $fd                                        ; $56ca: $fd
    ld a, [hl-]                                   ; $56cb: $3a
    dec a                                         ; $56cc: $3d
    ld c, $f1                                     ; $56cd: $0e $f1
    rrca                                          ; $56cf: $0f
    db $fc                                        ; $56d0: $fc
    pop bc                                        ; $56d1: $c1
    xor $23                                       ; $56d2: $ee $23
    nop                                           ; $56d4: $00
    ld h, [hl]                                    ; $56d5: $66
    db $fc                                        ; $56d6: $fc
    jp Jump_07a_61fc                              ; $56d7: $c3 $fc $61


    and a                                         ; $56da: $a7
    ld a, [hl]                                    ; $56db: $7e
    ld sp, $3e3e                                  ; $56dc: $31 $3e $3e
    ret nz                                        ; $56df: $c0

    xor b                                         ; $56e0: $a8
    ld a, [hl+]                                   ; $56e1: $2a
    ret nz                                        ; $56e2: $c0

    rst $38                                       ; $56e3: $ff
    ld [c], a                                     ; $56e4: $e2
    add b                                         ; $56e5: $80
    add l                                         ; $56e6: $85
    add b                                         ; $56e7: $80
    adc b                                         ; $56e8: $88
    dec h                                         ; $56e9: $25
    ld b, b                                       ; $56ea: $40
    ld l, l                                       ; $56eb: $6d
    and c                                         ; $56ec: $a1
    xor b                                         ; $56ed: $a8
    ld a, [hl+]                                   ; $56ee: $2a
    ld b, $e3                                     ; $56ef: $06 $e3
    ret z                                         ; $56f1: $c8

    and [hl]                                      ; $56f2: $a6
    cp b                                          ; $56f3: $b8
    jp nz, $a0c6                                  ; $56f4: $c2 $c6 $a0

    ld a, b                                       ; $56f7: $78
    cp e                                          ; $56f8: $bb
    add b                                         ; $56f9: $80
    ld d, a                                       ; $56fa: $57
    inc h                                         ; $56fb: $24
    cp $c2                                        ; $56fc: $fe $c2
    rst $38                                       ; $56fe: $ff
    cp $f0                                        ; $56ff: $fe $f0
    ldh a, [rNR52]                                ; $5701: $f0 $26

jr_07a_5703:
    jr z, @+$27                                   ; $5703: $28 $25

    db $fd                                        ; $5705: $fd
    db $fd                                        ; $5706: $fd
    adc [hl]                                      ; $5707: $8e
    pop hl                                        ; $5708: $e1
    jp z, $8ee8                                   ; $5709: $ca $e8 $8e

    ldh [rLY], a                                  ; $570c: $e0 $44
    sub $e5                                       ; $570e: $d6 $e5
    ld a, a                                       ; $5710: $7f
    jr nc, jr_07a_5703                            ; $5711: $30 $f0

    ld [hl], b                                    ; $5713: $70
    ldh [$60], a                                  ; $5714: $e0 $60
    ldh [$e0], a                                  ; $5716: $e0 $e0
    ld hl, sp+$05                                 ; $5718: $f8 $05
    rst $08                                       ; $571a: $cf
    rra                                           ; $571b: $1f
    rra                                           ; $571c: $1f
    rlca                                          ; $571d: $07
    rlca                                          ; $571e: $07
    db $ec                                        ; $571f: $ec
    ld hl, $2918                                  ; $5720: $21 $18 $29
    add b                                         ; $5723: $80
    add b                                         ; $5724: $80
    ld de, $c1c0                                  ; $5725: $11 $c0 $c1
    ld [hl+], a                                   ; $5728: $22
    call nc, $ea01                                ; $5729: $d4 $01 $ea
    inc hl                                        ; $572c: $23
    inc b                                         ; $572d: $04
    cp [hl]                                       ; $572e: $be
    ld b, b                                       ; $572f: $40
    add $03                                       ; $5730: $c6 $03
    ldh a, [rLYC]                                 ; $5732: $f0 $45
    or [hl]                                       ; $5734: $b6
    ld l, h                                       ; $5735: $6c
    db $ed                                        ; $5736: $ed
    nop                                           ; $5737: $00
    rst $30                                       ; $5738: $f7
    cp $e0                                        ; $5739: $fe $e0
    ei                                            ; $573b: $fb
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    ld h, $00                                     ; $573e: $26 $00
    ld e, l                                       ; $5740: $5d
    add $fe                                       ; $5741: $c6 $fe
    ldh [$e3], a                                  ; $5743: $e0 $e3
    nop                                           ; $5745: $00
    db $e3                                        ; $5746: $e3
    sub b                                         ; $5747: $90
    ld b, $08                                     ; $5748: $06 $08
    cp $e0                                        ; $574a: $fe $e0
    di                                            ; $574c: $f3
    inc b                                         ; $574d: $04
    nop                                           ; $574e: $00
    db $10                                        ; $574f: $10
    ld h, $94                                     ; $5750: $26 $94
    add c                                         ; $5752: $81
    ld b, $05                                     ; $5753: $06 $05
    inc c                                         ; $5755: $0c
    dec bc                                        ; $5756: $0b
    ld b, [hl]                                    ; $5757: $46
    ld [hl], b                                    ; $5758: $70
    dec b                                         ; $5759: $05
    add b                                         ; $575a: $80
    ld a, a                                       ; $575b: $7f
    ld [hl], b                                    ; $575c: $70
    dec bc                                        ; $575d: $0b
    xor $80                                       ; $575e: $ee $80
    ld [$0380], a                                 ; $5760: $ea $80 $03
    ld [hl], b                                    ; $5763: $70
    ld b, $be                                     ; $5764: $06 $be
    or c                                          ; $5766: $b1
    jr nz, @+$21                                  ; $5767: $20 $1f

    db $e3                                        ; $5769: $e3
    rra                                           ; $576a: $1f
    db $fc                                        ; $576b: $fc
    ccf                                           ; $576c: $3f
    ldh [$e6], a                                  ; $576d: $e0 $e6
    ld hl, sp-$37                                 ; $576f: $f8 $c9
    ccf                                           ; $5771: $3f
    inc e                                         ; $5772: $1c
    jr nz, jr_07a_57b5                            ; $5773: $20 $40

    rlca                                          ; $5775: $07
    add c                                         ; $5776: $81
    inc l                                         ; $5777: $2c
    inc b                                         ; $5778: $04
    ld d, b                                       ; $5779: $50
    rlca                                          ; $577a: $07
    ld hl, sp-$08                                 ; $577b: $f8 $f8
    ld e, c                                       ; $577d: $59
    rlca                                          ; $577e: $07
    ldh a, [$ea]                                  ; $577f: $f0 $ea
    cp h                                          ; $5781: $bc
    add e                                         ; $5782: $83
    nop                                           ; $5783: $00
    db $fd                                        ; $5784: $fd
    cp $e0                                        ; $5785: $fe $e0
    cp $fe                                        ; $5787: $fe $fe
    ldh [$aa], a                                  ; $5789: $e0 $aa
    ld [$f145], a                                 ; $578b: $ea $45 $f1
    cp $e0                                        ; $578e: $fe $e0
    ld hl, sp-$02                                 ; $5790: $f8 $fe
    ldh [$7c], a                                  ; $5792: $e0 $7c
    cp $e0                                        ; $5794: $fe $e0
    cp [hl]                                       ; $5796: $be
    xor d                                         ; $5797: $aa
    cp $e0                                        ; $5798: $fe $e0
    add d                                         ; $579a: $82
    cp $e0                                        ; $579b: $fe $e0

jr_07a_579d:
    pop bc                                        ; $579d: $c1
    xor e                                         ; $579e: $ab
    ld h, b                                       ; $579f: $60
    ld h, b                                       ; $57a0: $60
    cp $e0                                        ; $57a1: $fe $e0
    jr nc, jr_07a_579d                            ; $57a3: $30 $f8

    cp $e0                                        ; $57a5: $fe $e0
    rst $10                                       ; $57a7: $d7
    ld b, $ad                                     ; $57a8: $06 $ad
    ld h, d                                       ; $57aa: $62
    ld b, b                                       ; $57ab: $40
    jr jr_07a_57c5                                ; $57ac: $18 $17

    jr nc, jr_07a_57ef                            ; $57ae: $30 $3f

    cp a                                          ; $57b0: $bf
    jr nc, jr_07a_57e2                            ; $57b1: $30 $2f

    ld h, b                                       ; $57b3: $60
    ld a, a                                       ; $57b4: $7f

jr_07a_57b5:
    ld h, b                                       ; $57b5: $60
    ld e, a                                       ; $57b6: $5f
    xor $00                                       ; $57b7: $ee $00
    cp a                                          ; $57b9: $bf
    xor e                                         ; $57ba: $ab
    ret nz                                        ; $57bb: $c0

    cp a                                          ; $57bc: $bf
    ld e, d                                       ; $57bd: $5a
    rrca                                          ; $57be: $0f
    ld b, $da                                     ; $57bf: $06 $da
    ld b, b                                       ; $57c1: $40
    db $10                                        ; $57c2: $10
    and $60                                       ; $57c3: $e6 $60

jr_07a_57c5:
    ld b, b                                       ; $57c5: $40
    or d                                          ; $57c6: $b2
    add $00                                       ; $57c7: $c6 $00
    rrca                                          ; $57c9: $0f
    ld e, h                                       ; $57ca: $5c
    ld [c], a                                     ; $57cb: $e2
    ld b, b                                       ; $57cc: $40
    inc bc                                        ; $57cd: $03
    rrca                                          ; $57ce: $0f
    cp $12                                        ; $57cf: $fe $12
    ld b, b                                       ; $57d1: $40
    jp Jump_000_3446                              ; $57d2: $c3 $46 $34


    inc bc                                        ; $57d5: $03
    ccf                                           ; $57d6: $3f
    cp $e7                                        ; $57d7: $fe $e7
    db $e4                                        ; $57d9: $e4
    ld c, h                                       ; $57da: $4c
    push hl                                       ; $57db: $e5
    ld c, c                                       ; $57dc: $49
    dec b                                         ; $57dd: $05
    cp b                                          ; $57de: $b8

jr_07a_57df:
    ldh a, [$ec]                                  ; $57df: $f0 $ec
    rst $38                                       ; $57e1: $ff

jr_07a_57e2:
    nop                                           ; $57e2: $00
    jr nz, jr_07a_57c5                            ; $57e3: $20 $e0

    db $10                                        ; $57e5: $10
    ldh a, [$08]                                  ; $57e6: $f0 $08
    ld hl, sp-$38                                 ; $57e8: $f8 $c8
    rst $38                                       ; $57ea: $ff
    ld hl, sp-$18                                 ; $57eb: $f8 $e8
    jr jr_07a_57df                                ; $57ed: $18 $f0

jr_07a_57ef:
    db $10                                        ; $57ef: $10
    ldh a, [$30]                                  ; $57f0: $f0 $30
    ldh [$97], a                                  ; $57f2: $e0 $97
    ld h, b                                       ; $57f4: $60
    nop                                           ; $57f5: $00
    rst $18                                       ; $57f6: $df
    cp $e0                                        ; $57f7: $fe $e0
    rst $28                                       ; $57f9: $ef
    cp $e0                                        ; $57fa: $fe $e0
    sub b                                         ; $57fc: $90
    call nz, Call_07a_6500                        ; $57fd: $c4 $00 $65

jr_07a_5800:
    jr jr_07a_5800                                ; $5800: $18 $fe

    ldh [$8c], a                                  ; $5802: $e0 $8c
    cp $e0                                        ; $5804: $fe $e0
    sub b                                         ; $5806: $90
    call nz, Call_000_2000                        ; $5807: $c4 $00 $20
    cp $e0                                        ; $580a: $fe $e0
    pop hl                                        ; $580c: $e1
    db $10                                        ; $580d: $10
    cp $e0                                        ; $580e: $fe $e0
    sub b                                         ; $5810: $90
    call nz, Call_000_01b8                        ; $5811: $c4 $b8 $01
    ld d, b                                       ; $5814: $50
    ld h, c                                       ; $5815: $61
    rlca                                          ; $5816: $07
    inc b                                         ; $5817: $04
    rlca                                          ; $5818: $07
    push af                                       ; $5819: $f5
    inc b                                         ; $581a: $04
    scf                                           ; $581b: $37
    ret nz                                        ; $581c: $c0

    ld [$81e2], sp                                ; $581d: $08 $e2 $81
    add b                                         ; $5820: $80
    ld a, a                                       ; $5821: $7f
    ld b, b                                       ; $5822: $40
    cp a                                          ; $5823: $bf
    cp d                                          ; $5824: $ba
    db $fc                                        ; $5825: $fc
    push hl                                       ; $5826: $e5
    ld bc, $4228                                  ; $5827: $01 $28 $42
    dec b                                         ; $582a: $05
    rst $38                                       ; $582b: $ff
    dec bc                                        ; $582c: $0b
    cp $e0                                        ; $582d: $fe $e0
    rla                                           ; $582f: $17
    ld a, [$e0fe]                                 ; $5830: $fa $fe $e0
    ccf                                           ; $5833: $3f
    inc a                                         ; $5834: $3c
    ld h, h                                       ; $5835: $64
    ld hl, sp-$08                                 ; $5836: $f8 $f8
    ldh [$e0], a                                  ; $5838: $e0 $e0
    add b                                         ; $583a: $80
    xor a                                         ; $583b: $af
    add b                                         ; $583c: $80
    inc bc                                        ; $583d: $03
    inc bc                                        ; $583e: $03
    db $fc                                        ; $583f: $fc
    sbc e                                         ; $5840: $9b
    nop                                           ; $5841: $00
    ld hl, sp-$72                                 ; $5842: $f8 $8e
    ld h, b                                       ; $5844: $60
    rst $38                                       ; $5845: $ff
    ld e, l                                       ; $5846: $5d
    ld a, h                                       ; $5847: $7c
    add $60                                       ; $5848: $c6 $60
    ld b, $ff                                     ; $584a: $06 $ff
    ld [c], a                                     ; $584c: $e2
    ld d, a                                       ; $584d: $57
    db $e3                                        ; $584e: $e3
    cp $19                                        ; $584f: $fe $19
    and l                                         ; $5851: $a5
    cp a                                          ; $5852: $bf
    nop                                           ; $5853: $00
    ld a, h                                       ; $5854: $7c
    db $fc                                        ; $5855: $fc
    ld a, [hl]                                    ; $5856: $7e
    cp $fe                                        ; $5857: $fe $fe
    ld e, d                                       ; $5859: $5a
    ret nz                                        ; $585a: $c0

    db $e3                                        ; $585b: $e3
    ld a, a                                       ; $585c: $7f
    rst $38                                       ; $585d: $ff
    pop af                                        ; $585e: $f1
    rst $08                                       ; $585f: $cf
    db $fc                                        ; $5860: $fc
    jp $b9fe                                      ; $5861: $c3 $fe $b9


    ld sp, hl                                     ; $5864: $f9
    inc bc                                        ; $5865: $03
    ccf                                           ; $5866: $3f
    cp $06                                        ; $5867: $fe $06

jr_07a_5869:
    db $fc                                        ; $5869: $fc
    inc e                                         ; $586a: $1c
    ldh a, [$30]                                  ; $586b: $f0 $30
    ld [$04a1], sp                                ; $586d: $08 $a1 $04
    and c                                         ; $5870: $a1
    add [hl]                                      ; $5871: $86
    db $fd                                        ; $5872: $fd
    add hl, bc                                    ; $5873: $09
    rrca                                          ; $5874: $0f
    ld [$8104], sp                                ; $5875: $08 $04 $81
    ld [bc], a                                    ; $5878: $02
    add e                                         ; $5879: $83
    cp $e1                                        ; $587a: $fe $e1
    ld [hl], h                                    ; $587c: $74
    push hl                                       ; $587d: $e5
    and b                                         ; $587e: $a0
    rst $38                                       ; $587f: $ff
    ld e, a                                       ; $5880: $5f
    ret nz                                        ; $5881: $c0

    ccf                                           ; $5882: $3f
    and b                                         ; $5883: $a0
    ld e, a                                       ; $5884: $5f
    ret nc                                        ; $5885: $d0

    cpl                                           ; $5886: $2f
    ld d, $f7                                     ; $5887: $16 $f7
    cp $16                                        ; $5889: $fe $16
    cp $83                                        ; $588b: $fe $83
    add b                                         ; $588d: $80
    db $fc                                        ; $588e: $fc
    inc [hl]                                      ; $588f: $34
    db $f4                                        ; $5890: $f4
    jr nz, jr_07a_5869                            ; $5891: $20 $d6

    ld e, c                                       ; $5893: $59
    and b                                         ; $5894: $a0
    ret nz                                        ; $5895: $c0

    ret nz                                        ; $5896: $c0

    ld c, d                                       ; $5897: $4a
    ldh [$08], a                                  ; $5898: $e0 $08
    call z, Call_000_10e0                         ; $589a: $cc $e0 $10
    rra                                           ; $589d: $1f
    db $fd                                        ; $589e: $fd
    ld de, $e3fe                                  ; $589f: $11 $fe $e3
    ld hl, sp+$18                                 ; $58a2: $f8 $18
    db $e4                                        ; $58a4: $e4
    ld a, h                                       ; $58a5: $7c
    add d                                         ; $58a6: $82
    cp $c3                                        ; $58a7: $fe $c3
    adc [hl]                                      ; $58a9: $8e
    cp $9c                                        ; $58aa: $fe $9c

jr_07a_58ac:
    jr nz, jr_07a_58ac                            ; $58ac: $20 $fe

    ld [c], a                                     ; $58ae: $e2
    add c                                         ; $58af: $81
    jp z, Jump_000_20c3                           ; $58b0: $ca $c3 $20

    ld a, h                                       ; $58b3: $7c
    ld b, h                                       ; $58b4: $44
    ld a, a                                       ; $58b5: $7f
    cp $8e                                        ; $58b6: $fe $8e
    ld a, [c]                                     ; $58b8: $f2
    sbc [hl]                                      ; $58b9: $9e
    rst $20                                       ; $58ba: $e7
    cp a                                          ; $58bb: $bf
    rst $28                                       ; $58bc: $ef
    cp $e3                                        ; $58bd: $fe $e3
    db $db                                        ; $58bf: $db
    cp l                                          ; $58c0: $bd
    add b                                         ; $58c1: $80
    rst $38                                       ; $58c2: $ff
    ldh [$c0], a                                  ; $58c3: $e0 $c0
    ld b, b                                       ; $58c5: $40
    cp $e1                                        ; $58c6: $fe $e1
    ldh [rNR41], a                                ; $58c8: $e0 $20
    sbc c                                         ; $58ca: $99
    ldh [rHDMA1], a                               ; $58cb: $e0 $51
    ld b, b                                       ; $58cd: $40
    adc d                                         ; $58ce: $8a
    db $e3                                        ; $58cf: $e3
    ccf                                           ; $58d0: $3f
    jr nc, jr_07a_594f                            ; $58d1: $30 $7c

    pop hl                                        ; $58d3: $e1
    bit 4, b                                      ; $58d4: $cb $60
    jr @+$01                                      ; $58d6: $18 $ff

    xor b                                         ; $58d8: $a8
    ld d, a                                       ; $58d9: $57
    ret nc                                        ; $58da: $d0

    cpl                                           ; $58db: $2f
    add sp, $17                                   ; $58dc: $e8 $17
    call nc, $cf2b                                ; $58de: $d4 $2b $cf
    ld [$f515], a                                 ; $58e1: $ea $15 $f5
    ld a, [bc]                                    ; $58e4: $0a
    ld a, [hl+]                                   ; $58e5: $2a
    pop hl                                        ; $58e6: $e1
    add sp, $04                                   ; $58e7: $e8 $04
    cp $8f                                        ; $58e9: $fe $8f
    ld a, a                                       ; $58eb: $7f
    ld [hl], a                                    ; $58ec: $77
    ld d, a                                       ; $58ed: $57
    xor [hl]                                      ; $58ee: $ae
    xor a                                         ; $58ef: $af
    ld e, l                                       ; $58f0: $5d
    rst $38                                       ; $58f1: $ff
    ld c, $42                                     ; $58f2: $0e $42
    ld h, b                                       ; $58f4: $60
    db $fd                                        ; $58f5: $fd
    ld b, b                                       ; $58f6: $40
    ld h, c                                       ; $58f7: $61
    ld [c], a                                     ; $58f8: $e2
    ld d, b                                       ; $58f9: $50
    xor a                                         ; $58fa: $af
    xor b                                         ; $58fb: $a8
    ld d, a                                       ; $58fc: $57
    ld d, [hl]                                    ; $58fd: $56
    xor e                                         ; $58fe: $ab
    cp l                                          ; $58ff: $bd
    xor e                                         ; $5900: $ab
    ld a, b                                       ; $5901: $78
    db $e3                                        ; $5902: $e3
    rrca                                          ; $5903: $0f
    add hl, bc                                    ; $5904: $09
    rrca                                          ; $5905: $0f
    ld [$c1ae], sp                                ; $5906: $08 $ae $c1
    add e                                         ; $5909: $83
    rst $10                                       ; $590a: $d7
    add d                                         ; $590b: $82
    ccf                                           ; $590c: $3f
    db $fd                                        ; $590d: $fd
    ld a, b                                       ; $590e: $78
    db $e3                                        ; $590f: $e3
    sbc a                                         ; $5910: $9f
    cp $e0                                        ; $5911: $fe $e0
    rst $08                                       ; $5913: $cf
    ld a, a                                       ; $5914: $7f
    db $d3                                        ; $5915: $d3
    rst $08                                       ; $5916: $cf
    ld a, a                                       ; $5917: $7f
    ld [de], a                                    ; $5918: $12
    ld b, d                                       ; $5919: $42
    cp $e3                                        ; $591a: $fe $e3
    pop bc                                        ; $591c: $c1
    or $e1                                        ; $591d: $f6 $e1
    ld [hl], a                                    ; $591f: $77
    ld e, a                                       ; $5920: $5f
    ccf                                           ; $5921: $3f
    ld a, [hl]                                    ; $5922: $7e
    ld e, [hl]                                    ; $5923: $5e
    ld a, b                                       ; $5924: $78
    ld e, b                                       ; $5925: $58
    ld h, b                                       ; $5926: $60
    ld h, b                                       ; $5927: $60
    ld hl, sp-$3b                                 ; $5928: $f8 $c5
    ld a, [c]                                     ; $592a: $f2
    pop bc                                        ; $592b: $c1
    reti                                          ; $592c: $d9


    inc bc                                        ; $592d: $03
    cp $e2                                        ; $592e: $fe $e2
    ld a, [hl+]                                   ; $5930: $2a
    ld b, l                                       ; $5931: $45
    ldh [rNR41], a                                ; $5932: $e0 $20
    ld h, $c0                                     ; $5934: $26 $c0
    db $10                                        ; $5936: $10
    ld hl, sp+$59                                 ; $5937: $f8 $59
    ld [$e3fe], sp                                ; $5939: $08 $fe $e3
    ld [de], a                                    ; $593c: $12
    pop hl                                        ; $593d: $e1
    rrca                                          ; $593e: $0f
    inc c                                         ; $593f: $0c
    ld d, d                                       ; $5940: $52
    ret nz                                        ; $5941: $c0

    ld b, $9c                                     ; $5942: $06 $9c
    ld h, a                                       ; $5944: $67
    cp $8c                                        ; $5945: $fe $8c
    inc h                                         ; $5947: $24
    inc b                                         ; $5948: $04
    add a                                         ; $5949: $87
    add h                                         ; $594a: $84
    rst $08                                       ; $594b: $cf
    ret z                                         ; $594c: $c8

    rra                                           ; $594d: $1f
    rra                                           ; $594e: $1f

jr_07a_594f:
    ei                                            ; $594f: $fb
    ld a, a                                       ; $5950: $7f
    ld h, e                                       ; $5951: $63
    add hl, sp                                    ; $5952: $39
    dec b                                         ; $5953: $05
    pop bc                                        ; $5954: $c1
    ld a, $bc                                     ; $5955: $3e $bc
    ld a, a                                       ; $5957: $7f
    ld d, l                                       ; $5958: $55
    ld a, a                                       ; $5959: $7f
    ld d, l                                       ; $595a: $55
    xor d                                         ; $595b: $aa
    xor d                                         ; $595c: $aa
    push de                                       ; $595d: $d5
    push de                                       ; $595e: $d5
    ld a, [$397a]                                 ; $595f: $fa $7a $39
    ld b, d                                       ; $5962: $42
    db $fd                                        ; $5963: $fd
    rlca                                          ; $5964: $07
    inc bc                                        ; $5965: $03
    ld h, b                                       ; $5966: $60
    ld b, c                                       ; $5967: $41
    cp a                                          ; $5968: $bf
    and b                                         ; $5969: $a0
    ld a, a                                       ; $596a: $7f
    ld h, b                                       ; $596b: $60
    cp a                                          ; $596c: $bf
    push af                                       ; $596d: $f5
    and b                                         ; $596e: $a0
    ld [hl], c                                    ; $596f: $71
    ld b, b                                       ; $5970: $40
    add c                                         ; $5971: $81
    ld h, [hl]                                    ; $5972: $66
    ld hl, $3fe7                                  ; $5973: $21 $e7 $3f
    pop af                                        ; $5976: $f1
    sbc a                                         ; $5977: $9f
    jp Jump_07a_7e7e                              ; $5978: $c3 $7e $7e


    dec sp                                        ; $597b: $3b
    and e                                         ; $597c: $a3
    ld a, [bc]                                    ; $597d: $0a
    add d                                         ; $597e: $82
    ld b, l                                       ; $597f: $45
    ld [bc], a                                    ; $5980: $02
    and a                                         ; $5981: $a7
    add b                                         ; $5982: $80
    rlca                                          ; $5983: $07
    ei                                            ; $5984: $fb
    rst $30                                       ; $5985: $f7
    rlca                                          ; $5986: $07
    di                                            ; $5987: $f3
    rrca                                          ; $5988: $0f
    add [hl]                                      ; $5989: $86
    and a                                         ; $598a: $a7
    ld a, a                                       ; $598b: $7f
    add b                                         ; $598c: $80
    rra                                           ; $598d: $1f
    ldh [$f3], a                                  ; $598e: $e0 $f3
    add a                                         ; $5990: $87
    ld hl, sp-$17                                 ; $5991: $f8 $e9
    ld h, b                                       ; $5993: $60
    cpl                                           ; $5994: $2f
    xor b                                         ; $5995: $a8
    db $fc                                        ; $5996: $fc
    inc bc                                        ; $5997: $03
    nop                                           ; $5998: $00
    rst $38                                       ; $5999: $ff
    sbc $68                                       ; $599a: $de $68
    db $e3                                        ; $599c: $e3
    ldh a, [rNR10]                                ; $599d: $f0 $10
    ret nc                                        ; $599f: $d0

    jr nc, jr_07a_5a12                            ; $59a0: $30 $70

    pop bc                                        ; $59a2: $c1
    ldh [$e0], a                                  ; $59a3: $e0 $e0
    ei                                            ; $59a5: $fb
    ld a, a                                       ; $59a6: $7f
    ld a, b                                       ; $59a7: $78
    ld b, h                                       ; $59a8: $44
    ld b, b                                       ; $59a9: $40
    jr jr_07a_59c7                                ; $59aa: $18 $1b

    inc e                                         ; $59ac: $1c
    dec bc                                        ; $59ad: $0b
    inc c                                         ; $59ae: $0c
    rst $38                                       ; $59af: $ff
    rrca                                          ; $59b0: $0f
    inc c                                         ; $59b1: $0c
    dec c                                         ; $59b2: $0d
    ld c, $07                                     ; $59b3: $0e $07
    ld b, $c3                                     ; $59b5: $06 $c3
    ld a, a                                       ; $59b7: $7f
    db $fd                                        ; $59b8: $fd
    ld b, b                                       ; $59b9: $40
    add c                                         ; $59ba: $81
    ret nz                                        ; $59bb: $c0

    sub c                                         ; $59bc: $91
    ld l, a                                       ; $59bd: $6f
    jp nc, $f82f                                  ; $59be: $d2 $2f $f8

    rlca                                          ; $59c1: $07
    db $fd                                        ; $59c2: $fd
    ld hl, sp+$4f                                 ; $59c3: $f8 $4f
    add b                                         ; $59c5: $80
    ccf                                           ; $59c6: $3f

jr_07a_59c7:
    ret nz                                        ; $59c7: $c0

    sbc a                                         ; $59c8: $9f
    ldh [rVBK], a                                 ; $59c9: $e0 $4f
    ldh a, [$df]                                  ; $59cb: $f0 $df
    rst $28                                       ; $59cd: $ef
    ldh a, [$27]                                  ; $59ce: $f0 $27
    ld hl, sp+$17                                 ; $59d0: $f8 $17
    cp $e0                                        ; $59d2: $fe $e0
    daa                                           ; $59d4: $27
    ld hl, sp-$06                                 ; $59d5: $f8 $fa
    ld c, b                                       ; $59d7: $48
    ld b, c                                       ; $59d8: $41
    rst $38                                       ; $59d9: $ff
    sub h                                         ; $59da: $94
    ldh [$fb], a                                  ; $59db: $e0 $fb
    rlca                                          ; $59dd: $07
    db $fd                                        ; $59de: $fd
    inc bc                                        ; $59df: $03
    db $fd                                        ; $59e0: $fd
    daa                                           ; $59e1: $27
    inc bc                                        ; $59e2: $03
    cp $01                                        ; $59e3: $fe $01
    ld [hl], a                                    ; $59e5: $77
    ld h, [hl]                                    ; $59e6: $66
    rst $00                                       ; $59e7: $c7
    ld h, d                                       ; $59e8: $62
    ei                                            ; $59e9: $fb
    add hl, hl                                    ; $59ea: $29
    ld b, b                                       ; $59eb: $40
    ld [hl], $6d                                  ; $59ec: $36 $6d

jr_07a_59ee:
    jr c, jr_07a_59ee                             ; $59ee: $38 $fe

    db $e3                                        ; $59f0: $e3
    sub l                                         ; $59f1: $95
    ldh [rSC], a                                  ; $59f2: $e0 $02
    ret nz                                        ; $59f4: $c0

    add b                                         ; $59f5: $80
    add b                                         ; $59f6: $80
    ld [bc], a                                    ; $59f7: $02
    sub b                                         ; $59f8: $90
    ld [hl+], a                                   ; $59f9: $22
    ld e, c                                       ; $59fa: $59
    rlca                                          ; $59fb: $07
    rst $38                                       ; $59fc: $ff
    cp $01                                        ; $59fd: $fe $01
    ld a, h                                       ; $59ff: $7c
    add e                                         ; $5a00: $83
    cp a                                          ; $5a01: $bf
    ret nz                                        ; $5a02: $c0

    rst $18                                       ; $5a03: $df
    ldh [rIE], a                                  ; $5a04: $e0 $ff
    ld l, a                                       ; $5a06: $6f
    ld [hl], b                                    ; $5a07: $70

jr_07a_5a08:
    jr c, jr_07a_5a49                             ; $5a08: $38 $3f

    rrca                                          ; $5a0a: $0f
    rrca                                          ; $5a0b: $0f
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    rst $30                                       ; $5a0e: $f7
    ld c, a                                       ; $5a0f: $4f
    ldh a, [$3f]                                  ; $5a10: $f0 $3f

jr_07a_5a12:
    or [hl]                                       ; $5a12: $b6
    add b                                         ; $5a13: $80
    pop af                                        ; $5a14: $f1
    ld c, $c0                                     ; $5a15: $0e $c0
    ccf                                           ; $5a17: $3f
    cp a                                          ; $5a18: $bf
    ld e, $ff                                     ; $5a19: $1e $ff
    rst $30                                       ; $5a1b: $f7
    rst $30                                       ; $5a1c: $f7
    xor e                                         ; $5a1d: $ab
    xor e                                         ; $5a1e: $ab
    jr nc, jr_07a_5a08                            ; $5a1f: $30 $e7

    ccf                                           ; $5a21: $3f
    rst $38                                       ; $5a22: $ff
    ret nz                                        ; $5a23: $c0

    ccf                                           ; $5a24: $3f
    ret nz                                        ; $5a25: $c0

    rra                                           ; $5a26: $1f
    ldh [$7f], a                                  ; $5a27: $e0 $7f
    rst $38                                       ; $5a29: $ff
    sbc a                                         ; $5a2a: $9f
    sbc a                                         ; $5a2b: $9f
    ld a, a                                       ; $5a2c: $7f
    jp $fc3f                                      ; $5a2d: $c3 $3f $fc


    inc bc                                        ; $5a30: $03
    call c, $52a6                                 ; $5a31: $dc $a6 $52
    ld h, e                                       ; $5a34: $63
    rst $38                                       ; $5a35: $ff
    rst $30                                       ; $5a36: $f7
    rst $38                                       ; $5a37: $ff
    ld b, $fd                                     ; $5a38: $06 $fd

jr_07a_5a3a:
    db $ec                                        ; $5a3a: $ec
    ld [c], a                                     ; $5a3b: $e2
    pop hl                                        ; $5a3c: $e1
    rst $38                                       ; $5a3d: $ff
    call z, $dcf3                                 ; $5a3e: $cc $f3 $dc
    call $ae20                                    ; $5a41: $cd $20 $ae
    pop bc                                        ; $5a44: $c1
    pop bc                                        ; $5a45: $c1
    cp a                                          ; $5a46: $bf
    ld a, [hl]                                    ; $5a47: $7e
    cp a                                          ; $5a48: $bf

jr_07a_5a49:
    ld h, c                                       ; $5a49: $61
    ld a, h                                       ; $5a4a: $7c
    db $fc                                        ; $5a4b: $fc
    dec bc                                        ; $5a4c: $0b
    adc b                                         ; $5a4d: $88
    ld a, b                                       ; $5a4e: $78
    ld [hl], d                                    ; $5a4f: $72
    jp nz, $6898                                  ; $5a50: $c2 $98 $68

    pop bc                                        ; $5a53: $c1
    and b                                         ; $5a54: $a0
    add l                                         ; $5a55: $85
    ld [hl], b                                    ; $5a56: $70
    ld b, a                                       ; $5a57: $47
    ld b, $23                                     ; $5a58: $06 $23
    cp $07                                        ; $5a5a: $fe $07
    ld h, [hl]                                    ; $5a5c: $66
    ld d, l                                       ; $5a5d: $55
    rst $38                                       ; $5a5e: $ff
    cp d                                          ; $5a5f: $ba
    rst $38                                       ; $5a60: $ff
    db $fd                                        ; $5a61: $fd
    rra                                           ; $5a62: $1f
    ld a, [de]                                    ; $5a63: $1a
    cp $f8                                        ; $5a64: $fe $f8
    ld b, l                                       ; $5a66: $45
    sbc a                                         ; $5a67: $9f
    ldh [$8f], a                                  ; $5a68: $e0 $8f
    ldh a, [$cf]                                  ; $5a6a: $f0 $cf
    ldh a, [$c7]                                  ; $5a6c: $f0 $c7
    inc a                                         ; $5a6e: $3c
    call $e780                                    ; $5a6f: $cd $80 $e7
    ld b, l                                       ; $5a72: $45
    or a                                          ; $5a73: $b7
    ld a, b                                       ; $5a74: $78
    adc a                                         ; $5a75: $8f
    ld [hl], b                                    ; $5a76: $70
    ld h, a                                       ; $5a77: $67
    ld h, a                                       ; $5a78: $67
    inc a                                         ; $5a79: $3c
    add b                                         ; $5a7a: $80
    and [hl]                                      ; $5a7b: $a6
    ld a, b                                       ; $5a7c: $78
    and b                                         ; $5a7d: $a0
    ldh [$60], a                                  ; $5a7e: $e0 $60
    or b                                          ; $5a80: $b0
    jp hl                                         ; $5a81: $e9


    db $fc                                        ; $5a82: $fc
    jp hl                                         ; $5a83: $e9


    nop                                           ; $5a84: $00
    ld sp, $3880                                  ; $5a85: $31 $80 $38
    cp h                                          ; $5a88: $bc
    cp $e8                                        ; $5a89: $fe $e8
    ldh [$e9], a                                  ; $5a8b: $e0 $e9
    inc bc                                        ; $5a8d: $03
    ld bc, $3f3f                                  ; $5a8e: $01 $3f $3f
    ld [hl], c                                    ; $5a91: $71
    ld h, l                                       ; $5a92: $65
    ret nz                                        ; $5a93: $c0

    ld a, e                                       ; $5a94: $7b
    nop                                           ; $5a95: $00
    ldh a, [rOBP1]                                ; $5a96: $f0 $49
    ld h, b                                       ; $5a98: $60
    db $fc                                        ; $5a99: $fc
    nop                                           ; $5a9a: $00
    cp $f0                                        ; $5a9b: $fe $f0
    ld [bc], a                                    ; $5a9d: $02
    and c                                         ; $5a9e: $a1
    ld e, a                                       ; $5a9f: $5f
    rst $20                                       ; $5aa0: $e7
    nop                                           ; $5aa1: $00
    pop hl                                        ; $5aa2: $e1
    nop                                           ; $5aa3: $00
    ldh [$fe], a                                  ; $5aa4: $e0 $fe
    ld [c], a                                     ; $5aa6: $e2
    ld a, b                                       ; $5aa7: $78
    inc sp                                        ; $5aa8: $33
    ld h, d                                       ; $5aa9: $62
    ld [bc], a                                    ; $5aaa: $02
    db $fc                                        ; $5aab: $fc
    db $e3                                        ; $5aac: $e3
    jr c, jr_07a_5a3a                             ; $5aad: $38 $8b

    ld b, b                                       ; $5aaf: $40
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    sub l                                         ; $5ab3: $95
    inc c                                         ; $5ab4: $0c
    rst $38                                       ; $5ab5: $ff
    and $0f                                       ; $5ab6: $e6 $0f
    push af                                       ; $5ab8: $f5
    and $0b                                       ; $5ab9: $e6 $0b
    rst $38                                       ; $5abb: $ff
    add sp, -$20                                  ; $5abc: $e8 $e0
    db $e3                                        ; $5abe: $e3
    ld c, $d1                                     ; $5abf: $0e $d1
    ld c, $e0                                     ; $5ac1: $0e $e0
    ldh [$df], a                                  ; $5ac3: $e0 $df
    and $e0                                       ; $5ac5: $e6 $e0
    xor $0e                                       ; $5ac7: $ee $0e
    rst $38                                       ; $5ac9: $ff
    ldh [$0c], a                                  ; $5aca: $e0 $0c
    dec c                                         ; $5acc: $0d
    ld a, [$fae0]                                 ; $5acd: $fa $e0 $fa
    inc c                                         ; $5ad0: $0c
    ldh [$fb], a                                  ; $5ad1: $e0 $fb
    inc c                                         ; $5ad3: $0c
    ld c, $0f                                     ; $5ad4: $0e $0f
    dec c                                         ; $5ad6: $0d
    dec c                                         ; $5ad7: $0d
    inc sp                                        ; $5ad8: $33
    rrca                                          ; $5ad9: $0f
    inc l                                         ; $5ada: $2c
    add b                                         ; $5adb: $80
    rst $28                                       ; $5adc: $ef
    adc d                                         ; $5add: $8a
    db $e4                                        ; $5ade: $e4
    dec c                                         ; $5adf: $0d
    rrca                                          ; $5ae0: $0f
    rst $38                                       ; $5ae1: $ff
    ld [c], a                                     ; $5ae2: $e2
    ldh [$f0], a                                  ; $5ae3: $e0 $f0
    cp h                                          ; $5ae5: $bc
    add h                                         ; $5ae6: $84
    ldh [rDMA], a                                 ; $5ae7: $e0 $46
    db $e3                                        ; $5ae9: $e3

jr_07a_5aea:
    rrca                                          ; $5aea: $0f
    rrca                                          ; $5aeb: $0f
    ld c, $0d                                     ; $5aec: $0e $0d
    ld b, b                                       ; $5aee: $40
    ldh a, [rIF]                                  ; $5aef: $f0 $0f
    ld d, c                                       ; $5af1: $51
    ld c, $e7                                     ; $5af2: $0e $e7
    pop hl                                        ; $5af4: $e1
    and $e0                                       ; $5af5: $e6 $e0
    sub $e1                                       ; $5af7: $d6 $e1
    ld l, h                                       ; $5af9: $6c
    jr nz, jr_07a_5aea                            ; $5afa: $20 $ee

    ld c, h                                       ; $5afc: $4c
    and a                                         ; $5afd: $a7
    pop hl                                        ; $5afe: $e1
    db $ed                                        ; $5aff: $ed
    ld c, $a1                                     ; $5b00: $0e $a1
    pop hl                                        ; $5b02: $e1
    ld c, $4f                                     ; $5b03: $0e $4f
    ld a, [de]                                    ; $5b05: $1a
    ldh [$4c], a                                  ; $5b06: $e0 $4c
    inc c                                         ; $5b08: $0c
    inc c                                         ; $5b09: $0c
    sub e                                         ; $5b0a: $93
    ld l, h                                       ; $5b0b: $6c
    ld c, h                                       ; $5b0c: $4c
    nop                                           ; $5b0d: $00
    jp hl                                         ; $5b0e: $e9


    db $f4                                        ; $5b0f: $f4
    ret                                           ; $5b10: $c9


    add hl, bc                                    ; $5b11: $09
    rst $38                                       ; $5b12: $ff
    ldh [$e4], a                                  ; $5b13: $e0 $e4
    di                                            ; $5b15: $f3
    ld a, [bc]                                    ; $5b16: $0a
    add a                                         ; $5b17: $87
    ld a, [bc]                                    ; $5b18: $0a
    ld a, [bc]                                    ; $5b19: $0a
    ld c, e                                       ; $5b1a: $4b
    pop hl                                        ; $5b1b: $e1
    pop hl                                        ; $5b1c: $e1
    di                                            ; $5b1d: $f3
    db $e3                                        ; $5b1e: $e3
    ldh [$f2], a                                  ; $5b1f: $e0 $f2
    pop bc                                        ; $5b21: $c1
    ld [c], a                                     ; $5b22: $e2
    ld [$0863], sp                                ; $5b23: $08 $63 $08
    ld [$f2e0], sp                                ; $5b26: $08 $e0 $f2
    cp a                                          ; $5b29: $bf
    ldh [$a1], a                                  ; $5b2a: $e0 $a1
    db $e3                                        ; $5b2c: $e3
    ld [$d509], sp                                ; $5b2d: $08 $09 $d5
    ld [c], a                                     ; $5b30: $e2
    ld b, [hl]                                    ; $5b31: $46
    ldh [$f2], a                                  ; $5b32: $e0 $f2
    dec bc                                        ; $5b34: $0b
    ld [$e1e0], sp                                ; $5b35: $08 $e0 $e1
    rst $18                                       ; $5b38: $df
    ldh [$7e], a                                  ; $5b39: $e0 $7e
    ld a, [c]                                     ; $5b3b: $f2
    dec bc                                        ; $5b3c: $0b
    and h                                         ; $5b3d: $a4
    ldh [rNR24], a                                ; $5b3e: $e0 $19
    ld [$e19f], sp                                ; $5b40: $08 $9f $e1
    ldh [$f4], a                                  ; $5b43: $e0 $f4
    ld a, [bc]                                    ; $5b45: $0a
    ld a, [bc]                                    ; $5b46: $0a
    rst $18                                       ; $5b47: $df
    pop hl                                        ; $5b48: $e1
    ldh [$f6], a                                  ; $5b49: $e0 $f6
    rst $18                                       ; $5b4b: $df
    and $fa                                       ; $5b4c: $e6 $fa
    add b                                         ; $5b4e: $80
    db $ec                                        ; $5b4f: $ec
    ld c, e                                       ; $5b50: $4b
    rst $38                                       ; $5b51: $ff
    ld [c], a                                     ; $5b52: $e2
    ld l, e                                       ; $5b53: $6b
    dec bc                                        ; $5b54: $0b
    ld l, e                                       ; $5b55: $6b
    ld c, d                                       ; $5b56: $4a
    ld c, d                                       ; $5b57: $4a
    ld e, $7f                                     ; $5b58: $1e $7f
    ldh [rOBP0], a                                ; $5b5a: $e0 $48
    ld c, b                                       ; $5b5c: $48
    ld [$f70a], sp                                ; $5b5d: $08 $0a $f7
    pop hl                                        ; $5b60: $e1
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    nop                                           ; $5b65: $00
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    rst $38                                       ; $5b68: $ff
    rst $38                                       ; $5b69: $ff
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    rst $38                                       ; $5b73: $ff
    rst $38                                       ; $5b74: $ff
    rst $38                                       ; $5b75: $ff
    nop                                           ; $5b76: $00
    rst $38                                       ; $5b77: $ff
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    inc h                                         ; $5b7d: $24
    xor l                                         ; $5b7e: $ad
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    db $fd                                        ; $5b82: $fd
    nop                                           ; $5b83: $00
    rst $38                                       ; $5b84: $ff
    ldh [rSB], a                                  ; $5b85: $e0 $01
    ld [bc], a                                    ; $5b87: $02
    inc bc                                        ; $5b88: $03
    inc bc                                        ; $5b89: $03
    inc b                                         ; $5b8a: $04
    nop                                           ; $5b8b: $00
    cp a                                          ; $5b8c: $bf
    dec b                                         ; $5b8d: $05
    nop                                           ; $5b8e: $00
    ld b, $07                                     ; $5b8f: $06 $07
    ld [$ff09], sp                                ; $5b91: $08 $09 $ff
    pop hl                                        ; $5b94: $e1
    ld l, h                                       ; $5b95: $6c
    cp $ff                                        ; $5b96: $fe $ff
    add sp, $0a                                   ; $5b98: $e8 $0a
    ld a, [bc]                                    ; $5b9a: $0a
    ld a, [bc]                                    ; $5b9b: $0a
    dec bc                                        ; $5b9c: $0b
    inc c                                         ; $5b9d: $0c
    dec c                                         ; $5b9e: $0d
    ld c, $ff                                     ; $5b9f: $0e $ff
    rrca                                          ; $5ba1: $0f
    db $10                                        ; $5ba2: $10
    ld de, $1312                                  ; $5ba3: $11 $12 $13
    inc d                                         ; $5ba6: $14
    dec d                                         ; $5ba7: $15
    ld d, $f3                                     ; $5ba8: $16 $f3
    rla                                           ; $5baa: $17
    jr @+$01                                      ; $5bab: $18 $ff

    ldh [$e0], a                                  ; $5bad: $e0 $e0
    db $ec                                        ; $5baf: $ec
    add hl, de                                    ; $5bb0: $19
    ld a, [de]                                    ; $5bb1: $1a
    dec de                                        ; $5bb2: $1b
    inc e                                         ; $5bb3: $1c
    rst $38                                       ; $5bb4: $ff
    dec e                                         ; $5bb5: $1d
    ld e, $1f                                     ; $5bb6: $1e $1f
    jr nz, jr_07a_5bdb                            ; $5bb8: $20 $21

    ld a, [bc]                                    ; $5bba: $0a
    ld [hl+], a                                   ; $5bbb: $22
    inc hl                                        ; $5bbc: $23
    db $fd                                        ; $5bbd: $fd
    inc h                                         ; $5bbe: $24
    ldh [$ef], a                                  ; $5bbf: $e0 $ef
    dec h                                         ; $5bc1: $25
    ld h, $27                                     ; $5bc2: $26 $27
    jr z, jr_07a_5bef                             ; $5bc4: $28 $29

    ld a, [hl+]                                   ; $5bc6: $2a
    sbc a                                         ; $5bc7: $9f
    dec hl                                        ; $5bc8: $2b
    inc l                                         ; $5bc9: $2c
    dec l                                         ; $5bca: $2d
    ld l, $2f                                     ; $5bcb: $2e $2f
    cp a                                          ; $5bcd: $bf
    db $e4                                        ; $5bce: $e4
    and b                                         ; $5bcf: $a0
    ld [$ff30], a                                 ; $5bd0: $ea $30 $ff
    ld sp, $2732                                  ; $5bd3: $31 $32 $27
    inc sp                                        ; $5bd6: $33
    inc [hl]                                      ; $5bd7: $34
    dec [hl]                                      ; $5bd8: $35
    ld [hl], $37                                  ; $5bd9: $36 $37

jr_07a_5bdb:
    rst $08                                       ; $5bdb: $cf
    jr c, jr_07a_5c17                             ; $5bdc: $38 $39

    ld a, [hl-]                                   ; $5bde: $3a
    dec h                                         ; $5bdf: $25
    cp a                                          ; $5be0: $bf
    db $e3                                        ; $5be1: $e3
    add b                                         ; $5be2: $80
    jp hl                                         ; $5be3: $e9


    dec sp                                        ; $5be4: $3b
    inc a                                         ; $5be5: $3c
    rst $38                                       ; $5be6: $ff
    dec a                                         ; $5be7: $3d
    ld a, $3f                                     ; $5be8: $3e $3f
    ld b, b                                       ; $5bea: $40
    ld b, c                                       ; $5beb: $41
    ld b, d                                       ; $5bec: $42
    ld b, e                                       ; $5bed: $43
    ld b, h                                       ; $5bee: $44

jr_07a_5bef:
    rst $08                                       ; $5bef: $cf
    ld b, l                                       ; $5bf0: $45
    ld b, [hl]                                    ; $5bf1: $46
    ld b, a                                       ; $5bf2: $47
    ld c, b                                       ; $5bf3: $48
    ld a, [hl]                                    ; $5bf4: $7e
    db $e3                                        ; $5bf5: $e3
    ld h, b                                       ; $5bf6: $60
    jp hl                                         ; $5bf7: $e9


    ld c, c                                       ; $5bf8: $49
    ld c, d                                       ; $5bf9: $4a
    rst $38                                       ; $5bfa: $ff
    ld c, e                                       ; $5bfb: $4b
    ld c, h                                       ; $5bfc: $4c
    ld c, l                                       ; $5bfd: $4d
    ld c, [hl]                                    ; $5bfe: $4e
    ld c, a                                       ; $5bff: $4f
    ld d, b                                       ; $5c00: $50
    ld a, [bc]                                    ; $5c01: $0a
    ld a, [bc]                                    ; $5c02: $0a
    ccf                                           ; $5c03: $3f
    ld d, c                                       ; $5c04: $51
    ld d, d                                       ; $5c05: $52
    ld d, e                                       ; $5c06: $53
    ld d, h                                       ; $5c07: $54
    ld d, l                                       ; $5c08: $55
    ld d, [hl]                                    ; $5c09: $56
    ld a, [hl]                                    ; $5c0a: $7e
    pop hl                                        ; $5c0b: $e1
    ld b, b                                       ; $5c0c: $40
    ld [$57ff], a                                 ; $5c0d: $ea $ff $57
    ld e, b                                       ; $5c10: $58
    ld e, c                                       ; $5c11: $59
    ld e, d                                       ; $5c12: $5a
    ld e, e                                       ; $5c13: $5b
    ld e, h                                       ; $5c14: $5c
    ld e, l                                       ; $5c15: $5d
    ld e, [hl]                                    ; $5c16: $5e

jr_07a_5c17:
    rst $38                                       ; $5c17: $ff
    ld e, a                                       ; $5c18: $5f
    ld h, b                                       ; $5c19: $60
    ld h, c                                       ; $5c1a: $61
    ld h, d                                       ; $5c1b: $62
    ld h, e                                       ; $5c1c: $63
    dec c                                         ; $5c1d: $0d
    ld h, h                                       ; $5c1e: $64
    ld h, l                                       ; $5c1f: $65
    db $fc                                        ; $5c20: $fc
    dec a                                         ; $5c21: $3d
    ldh [rNR41], a                                ; $5c22: $e0 $20
    jp hl                                         ; $5c24: $e9


    nop                                           ; $5c25: $00
    ld h, [hl]                                    ; $5c26: $66
    ld h, a                                       ; $5c27: $67
    ld l, b                                       ; $5c28: $68
    ld l, c                                       ; $5c29: $69
    ld l, d                                       ; $5c2a: $6a
    rst $38                                       ; $5c2b: $ff
    ld l, e                                       ; $5c2c: $6b
    ld l, h                                       ; $5c2d: $6c
    ld l, l                                       ; $5c2e: $6d
    ld l, [hl]                                    ; $5c2f: $6e
    ld l, a                                       ; $5c30: $6f
    inc bc                                        ; $5c31: $03
    ld [hl], b                                    ; $5c32: $70
    ld [hl], c                                    ; $5c33: $71
    rst $18                                       ; $5c34: $df
    ld [hl], d                                    ; $5c35: $72
    inc bc                                        ; $5c36: $03
    ld [hl], e                                    ; $5c37: $73
    ld [hl], h                                    ; $5c38: $74
    ld [$ea00], sp                                ; $5c39: $08 $00 $ea
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    rst $28                                       ; $5c3e: $ef
    ld [hl], l                                    ; $5c3f: $75
    halt                                          ; $5c40: $76
    ld [hl], a                                    ; $5c41: $77
    inc bc                                        ; $5c42: $03
    rst $38                                       ; $5c43: $ff
    pop hl                                        ; $5c44: $e1
    ld a, b                                       ; $5c45: $78
    ld a, c                                       ; $5c46: $79
    nop                                           ; $5c47: $00
    ld a, a                                       ; $5c48: $7f
    ld a, d                                       ; $5c49: $7a
    ld a, e                                       ; $5c4a: $7b
    ld a, h                                       ; $5c4b: $7c
    ld a, l                                       ; $5c4c: $7d
    ld a, [hl]                                    ; $5c4d: $7e
    ld a, a                                       ; $5c4e: $7f
    inc bc                                        ; $5c4f: $03
    ldh [$cb], a                                  ; $5c50: $e0 $cb
    rst $38                                       ; $5c52: $ff
    add b                                         ; $5c53: $80
    add c                                         ; $5c54: $81
    add d                                         ; $5c55: $82
    add e                                         ; $5c56: $83
    daa                                           ; $5c57: $27
    daa                                           ; $5c58: $27
    daa                                           ; $5c59: $27
    db $10                                        ; $5c5a: $10
    rst $38                                       ; $5c5b: $ff
    add h                                         ; $5c5c: $84
    ld a, [bc]                                    ; $5c5d: $0a
    add l                                         ; $5c5e: $85
    add [hl]                                      ; $5c5f: $86
    add a                                         ; $5c60: $87
    adc b                                         ; $5c61: $88
    adc c                                         ; $5c62: $89
    adc d                                         ; $5c63: $8a
    cp e                                          ; $5c64: $bb
    adc e                                         ; $5c65: $8b
    daa                                           ; $5c66: $27
    ret nz                                        ; $5c67: $c0

    call z, $8d8c                                 ; $5c68: $cc $8c $8d
    adc [hl]                                      ; $5c6b: $8e
    ldh [$e0], a                                  ; $5c6c: $e0 $e0
    adc a                                         ; $5c6e: $8f
    rst $38                                       ; $5c6f: $ff
    sub b                                         ; $5c70: $90
    ld a, [bc]                                    ; $5c71: $0a
    sub c                                         ; $5c72: $91
    sub d                                         ; $5c73: $92
    sub e                                         ; $5c74: $93
    sub h                                         ; $5c75: $94
    sub l                                         ; $5c76: $95
    sub [hl]                                      ; $5c77: $96
    ld sp, hl                                     ; $5c78: $f9
    sub a                                         ; $5c79: $97
    ldh [$ed], a                                  ; $5c7a: $e0 $ed
    cp a                                          ; $5c7c: $bf
    db $e3                                        ; $5c7d: $e3
    sbc b                                         ; $5c7e: $98
    sbc c                                         ; $5c7f: $99
    ld a, [bc]                                    ; $5c80: $0a
    sbc d                                         ; $5c81: $9a
    sbc e                                         ; $5c82: $9b
    sbc a                                         ; $5c83: $9f
    sbc h                                         ; $5c84: $9c
    sbc l                                         ; $5c85: $9d
    sbc [hl]                                      ; $5c86: $9e
    sbc a                                         ; $5c87: $9f
    daa                                           ; $5c88: $27
    ret nz                                        ; $5c89: $c0

    db $ed                                        ; $5c8a: $ed
    cp a                                          ; $5c8b: $bf
    db $e3                                        ; $5c8c: $e3
    and b                                         ; $5c8d: $a0
    rst $38                                       ; $5c8e: $ff
    and c                                         ; $5c8f: $a1
    and d                                         ; $5c90: $a2
    and e                                         ; $5c91: $a3
    and h                                         ; $5c92: $a4
    and l                                         ; $5c93: $a5
    and [hl]                                      ; $5c94: $a6
    and a                                         ; $5c95: $a7
    xor b                                         ; $5c96: $a8
    ld sp, hl                                     ; $5c97: $f9
    xor c                                         ; $5c98: $a9
    ldh [$ee], a                                  ; $5c99: $e0 $ee
    ld a, [hl]                                    ; $5c9b: $7e
    ld [c], a                                     ; $5c9c: $e2
    xor d                                         ; $5c9d: $aa
    xor e                                         ; $5c9e: $ab
    xor h                                         ; $5c9f: $ac
    xor l                                         ; $5ca0: $ad
    xor [hl]                                      ; $5ca1: $ae
    sbc a                                         ; $5ca2: $9f
    xor a                                         ; $5ca3: $af
    or b                                          ; $5ca4: $b0
    or c                                          ; $5ca5: $b1
    or d                                          ; $5ca6: $b2
    or e                                          ; $5ca7: $b3
    ret nz                                        ; $5ca8: $c0

    xor $7e                                       ; $5ca9: $ee $7e
    db $e3                                        ; $5cab: $e3
    or h                                          ; $5cac: $b4
    rst $38                                       ; $5cad: $ff
    or l                                          ; $5cae: $b5
    or [hl]                                       ; $5caf: $b6
    or a                                          ; $5cb0: $b7
    ld l, h                                       ; $5cb1: $6c
    ld l, h                                       ; $5cb2: $6c
    cp b                                          ; $5cb3: $b8
    cp c                                          ; $5cb4: $b9
    cp d                                          ; $5cb5: $ba
    db $fc                                        ; $5cb6: $fc
    ldh [$ef], a                                  ; $5cb7: $e0 $ef

jr_07a_5cb9:
    dec a                                         ; $5cb9: $3d
    ld [c], a                                     ; $5cba: $e2
    cp e                                          ; $5cbb: $bb
    cp h                                          ; $5cbc: $bc
    cp l                                          ; $5cbd: $bd
    cp [hl]                                       ; $5cbe: $be
    cp a                                          ; $5cbf: $bf
    ret nz                                        ; $5cc0: $c0

    and e                                         ; $5cc1: $a3
    pop bc                                        ; $5cc2: $c1
    jp nz, $eb80                                  ; $5cc3: $c2 $80 $eb

    ldh [$a1], a                                  ; $5cc6: $e0 $a1
    db $fc                                        ; $5cc8: $fc
    ret nz                                        ; $5cc9: $c0

    jp $c0fc                                      ; $5cca: $c3 $fc $c0


    call nz, $c57f                                ; $5ccd: $c4 $7f $c5
    add $09                                       ; $5cd0: $c6 $09
    add hl, bc                                    ; $5cd2: $09
    rst $00                                       ; $5cd3: $c7
    ret z                                         ; $5cd4: $c8

    inc bc                                        ; $5cd5: $03
    nop                                           ; $5cd6: $00
    ld [$ff00], a                                 ; $5cd7: $ea $00 $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
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
    nop                                           ; $5ce9: $00
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    jr nz, jr_07a_5cb9                            ; $5cf4: $20 $c3

    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    ld bc, $415d                                  ; $5cf9: $01 $5d $41
    ld e, l                                       ; $5cfc: $5d
    jp z, Jump_07a_5262                           ; $5cfd: $ca $62 $52

    ld h, e                                       ; $5d00: $63
    ei                                            ; $5d01: $fb
    ld l, a                                       ; $5d02: $6f
    or c                                          ; $5d03: $b1
    ld b, [hl]                                    ; $5d04: $46
    ld h, a                                       ; $5d05: $67
    dec e                                         ; $5d06: $1d
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    ei                                            ; $5d09: $fb
    ld l, a                                       ; $5d0a: $6f
    or c                                          ; $5d0b: $b1
    ld b, [hl]                                    ; $5d0c: $46
    ldh [$3b], a                                  ; $5d0d: $e0 $3b
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    or c                                          ; $5d11: $b1
    ld b, [hl]                                    ; $5d12: $46
    ld h, a                                       ; $5d13: $67
    dec e                                         ; $5d14: $1d
    ldh [$3b], a                                  ; $5d15: $e0 $3b

jr_07a_5d17:
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    ldh [$3b], a                                  ; $5d19: $e0 $3b
    ei                                            ; $5d1b: $fb
    ld l, a                                       ; $5d1c: $6f
    ld h, a                                       ; $5d1d: $67
    dec e                                         ; $5d1e: $1d
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    ccf                                           ; $5d21: $3f
    ld h, a                                       ; $5d22: $67
    push af                                       ; $5d23: $f5
    dec a                                         ; $5d24: $3d
    db $ec                                        ; $5d25: $ec
    inc e                                         ; $5d26: $1c
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    ccf                                           ; $5d29: $3f
    ld h, a                                       ; $5d2a: $67
    push af                                       ; $5d2b: $f5
    dec a                                         ; $5d2c: $3d
    ccf                                           ; $5d2d: $3f
    ld e, [hl]                                    ; $5d2e: $5e
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    push af                                       ; $5d31: $f5
    dec a                                         ; $5d32: $3d
    db $ec                                        ; $5d33: $ec
    inc e                                         ; $5d34: $1c
    ccf                                           ; $5d35: $3f
    ld e, [hl]                                    ; $5d36: $5e
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    rst $38                                       ; $5d39: $ff
    ld a, a                                       ; $5d3a: $7f
    ccf                                           ; $5d3b: $3f
    ld h, a                                       ; $5d3c: $67
    push af                                       ; $5d3d: $f5
    dec a                                         ; $5d3e: $3d
    nop                                           ; $5d3f: $00
    nop                                           ; $5d40: $00
    db $fd                                        ; $5d41: $fd
    nop                                           ; $5d42: $00
    rst $38                                       ; $5d43: $ff
    db $ec                                        ; $5d44: $ec
    inc c                                         ; $5d45: $0c
    ld hl, sp+$06                                 ; $5d46: $f8 $06
    db $fc                                        ; $5d48: $fc
    ld [bc], a                                    ; $5d49: $02

jr_07a_5d4a:
    cp $9f                                        ; $5d4a: $fe $9f
    inc bc                                        ; $5d4c: $03
    cp $01                                        ; $5d4d: $fe $01
    rst $38                                       ; $5d4f: $ff
    nop                                           ; $5d50: $00
    cp $e2                                        ; $5d51: $fe $e2
    ld sp, hl                                     ; $5d53: $f9
    db $e4                                        ; $5d54: $e4
    rlca                                          ; $5d55: $07
    rst $38                                       ; $5d56: $ff
    db $fc                                        ; $5d57: $fc
    jr jr_07a_5d4a                                ; $5d58: $18 $f0

    and b                                         ; $5d5a: $a0
    ld h, b                                       ; $5d5b: $60
    ret nz                                        ; $5d5c: $c0

    ld c, a                                       ; $5d5d: $4f
    adc $fe                                       ; $5d5e: $ce $fe
    jp hl                                         ; $5d60: $e9


    db $e3                                        ; $5d61: $e3
    cp a                                          ; $5d62: $bf
    ret nz                                        ; $5d63: $c0

    rst $28                                       ; $5d64: $ef

jr_07a_5d65:
    ld [hl], b                                    ; $5d65: $70
    dec a                                         ; $5d66: $3d
    ld e, $1b                                     ; $5d67: $1e $1b
    rst $38                                       ; $5d69: $ff
    rrca                                          ; $5d6a: $0f
    rrca                                          ; $5d6b: $0f
    inc b                                         ; $5d6c: $04
    ld h, b                                       ; $5d6d: $60
    ret nz                                        ; $5d6e: $c0

    or b                                          ; $5d6f: $b0
    ld h, b                                       ; $5d70: $60
    ret nc                                        ; $5d71: $d0

    rst $38                                       ; $5d72: $ff
    jr nc, jr_07a_5d65                            ; $5d73: $30 $f0

    jr nz, jr_07a_5d17                            ; $5d75: $20 $a0

    ld h, b                                       ; $5d77: $60
    ldh [rLCDC], a                                ; $5d78: $e0 $40
    ld b, b                                       ; $5d7a: $40
    rst $30                                       ; $5d7b: $f7
    ret nz                                        ; $5d7c: $c0

    ret nz                                        ; $5d7d: $c0

    ret nz                                        ; $5d7e: $c0

    or b                                          ; $5d7f: $b0
    push hl                                       ; $5d80: $e5
    rra                                           ; $5d81: $1f
    rra                                           ; $5d82: $1f
    ld [hl], $19                                  ; $5d83: $36 $19
    rst $38                                       ; $5d85: $ff
    cpl                                           ; $5d86: $2f
    jr nc, jr_07a_5e08                            ; $5d87: $30 $7f

    ccf                                           ; $5d89: $3f
    rst $28                                       ; $5d8a: $ef
    ld [hl], b                                    ; $5d8b: $70
    dec sp                                        ; $5d8c: $3b
    inc e                                         ; $5d8d: $1c
    rst $38                                       ; $5d8e: $ff
    rrca                                          ; $5d8f: $0f
    rlca                                          ; $5d90: $07
    ld bc, $8000                                  ; $5d91: $01 $00 $80
    nop                                           ; $5d94: $00
    ldh a, [$e0]                                  ; $5d95: $f0 $e0
    rst $38                                       ; $5d97: $ff
    ret c                                         ; $5d98: $d8

    jr nc, jr_07a_5e09                            ; $5d99: $30 $6e

    sbc h                                         ; $5d9b: $9c
    db $fc                                        ; $5d9c: $fc
    inc bc                                        ; $5d9d: $03
    ld hl, sp+$07                                 ; $5d9e: $f8 $07
    ld a, a                                       ; $5da0: $7f
    ld h, c                                       ; $5da1: $61
    sbc a                                         ; $5da2: $9f
    rst $38                                       ; $5da3: $ff
    cp $07                                        ; $5da4: $fe $07
    nop                                           ; $5da6: $00
    inc bc                                        ; $5da7: $03
    cp $e0                                        ; $5da8: $fe $e0
    rst $38                                       ; $5daa: $ff
    ld bc, $1f00                                  ; $5dab: $01 $00 $1f
    ldh a, [$7f]                                  ; $5dae: $f0 $7f
    ldh [rIE], a                                  ; $5db0: $e0 $ff
    add c                                         ; $5db2: $81
    rst $38                                       ; $5db3: $ff
    cp $03                                        ; $5db4: $fe $03
    db $fc                                        ; $5db6: $fc
    rlca                                          ; $5db7: $07
    ld sp, hl                                     ; $5db8: $f9
    rrca                                          ; $5db9: $0f
    rst $30                                       ; $5dba: $f7
    ld e, $ff                                     ; $5dbb: $1e $ff
    rst $28                                       ; $5dbd: $ef
    jr c, jr_07a_5de0                             ; $5dbe: $38 $20

    ccf                                           ; $5dc0: $3f
    ld h, b                                       ; $5dc1: $60
    ld a, a                                       ; $5dc2: $7f
    ldh a, [$9f]                                  ; $5dc3: $f0 $9f
    rst $38                                       ; $5dc5: $ff
    rst $30                                       ; $5dc6: $f7
    rra                                           ; $5dc7: $1f
    db $fc                                        ; $5dc8: $fc
    ld hl, sp+$18                                 ; $5dc9: $f8 $18
    db $10                                        ; $5dcb: $10
    db $10                                        ; $5dcc: $10
    db $10                                        ; $5dcd: $10
    rst $38                                       ; $5dce: $ff
    jr c, jr_07a_5e01                             ; $5dcf: $38 $30

    rra                                           ; $5dd1: $1f
    rst $38                                       ; $5dd2: $ff
    ld sp, $e0e0                                  ; $5dd3: $31 $e0 $e0
    ret nz                                        ; $5dd6: $c0

    db $fd                                        ; $5dd7: $fd
    add b                                         ; $5dd8: $80
    ld h, h                                       ; $5dd9: $64
    db $e3                                        ; $5dda: $e3
    nop                                           ; $5ddb: $00
    jr c, @+$12                                   ; $5ddc: $38 $10

    nop                                           ; $5dde: $00
    rst $38                                       ; $5ddf: $ff

jr_07a_5de0:
    add b                                         ; $5de0: $80
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    ret nz                                        ; $5de3: $c0

    ld a, a                                       ; $5de4: $7f
    ld b, b                                       ; $5de5: $40
    ld a, a                                       ; $5de6: $7f
    ld h, b                                       ; $5de7: $60
    ccf                                           ; $5de8: $3f

jr_07a_5de9:
    jr nz, jr_07a_5de9                            ; $5de9: $20 $fe

    cp $e0                                        ; $5deb: $fe $e0
    ld hl, sp-$01                                 ; $5ded: $f8 $ff
    rst $08                                       ; $5def: $cf
    add e                                         ; $5df0: $83
    adc a                                         ; $5df1: $8f
    add b                                         ; $5df2: $80
    add l                                         ; $5df3: $85
    rst $38                                       ; $5df4: $ff
    add b                                         ; $5df5: $80
    res 0, b                                      ; $5df6: $cb $80
    ld b, a                                       ; $5df8: $47
    ret nz                                        ; $5df9: $c0

    ld c, e                                       ; $5dfa: $4b
    pop bc                                        ; $5dfb: $c1
    ld h, a                                       ; $5dfc: $67
    rst $38                                       ; $5dfd: $ff
    jp nz, $e027                                  ; $5dfe: $c2 $27 $e0

jr_07a_5e01:
    call nz, $e687                                ; $5e01: $c4 $87 $e6
    jp $ffe3                                      ; $5e04: $c3 $e3 $ff


    ld h, e                                       ; $5e07: $63

jr_07a_5e08:
    or d                                          ; $5e08: $b2

jr_07a_5e09:
    ld h, e                                       ; $5e09: $63
    di                                            ; $5e0a: $f3
    ld [hl-], a                                   ; $5e0b: $32
    db $db                                        ; $5e0c: $db
    or d                                          ; $5e0d: $b2
    db $db                                        ; $5e0e: $db
    rst $38                                       ; $5e0f: $ff
    ld a, d                                       ; $5e10: $7a
    cp e                                          ; $5e11: $bb
    ld a, d                                       ; $5e12: $7a
    ldh a, [$30]                                  ; $5e13: $f0 $30
    inc a                                         ; $5e15: $3c
    call z, $ff8f                                 ; $5e16: $cc $8f $ff
    di                                            ; $5e19: $f3
    ld h, e                                       ; $5e1a: $63
    db $fc                                        ; $5e1b: $fc
    ld a, b                                       ; $5e1c: $78
    rst $18                                       ; $5e1d: $df
    xor $47                                       ; $5e1e: $ee $47
    and e                                         ; $5e20: $a3
    rst $28                                       ; $5e21: $ef
    ld h, c                                       ; $5e22: $61
    pop af                                        ; $5e23: $f1
    jr nz, jr_07a_5e27                            ; $5e24: $20 $01

    rrca                                          ; $5e26: $0f

jr_07a_5e27:
    ldh [$03], a                                  ; $5e27: $e0 $03
    inc bc                                        ; $5e29: $03
    db $fd                                        ; $5e2a: $fd
    rst $38                                       ; $5e2b: $ff
    cp $be                                        ; $5e2c: $fe $be
    pop bc                                        ; $5e2e: $c1
    ld l, a                                       ; $5e2f: $6f
    sbc a                                         ; $5e30: $9f
    or $96                                        ; $5e31: $f6 $96
    or [hl]                                       ; $5e33: $b6
    cp a                                          ; $5e34: $bf
    sub $e3                                       ; $5e35: $d6 $e3
    cp $39                                        ; $5e37: $fe $39
    rra                                           ; $5e39: $1f
    rst $38                                       ; $5e3a: $ff
    ld a, [de]                                    ; $5e3b: $1a
    pop hl                                        ; $5e3c: $e1
    rst $38                                       ; $5e3d: $ff
    db $fd                                        ; $5e3e: $fd
    ldh [rIE], a                                  ; $5e3f: $e0 $ff
    ld [c], a                                     ; $5e41: $e2
    ld bc, $8100                                  ; $5e42: $01 $00 $81
    nop                                           ; $5e45: $00
    add e                                         ; $5e46: $83
    add e                                         ; $5e47: $83
    rst $38                                       ; $5e48: $ff
    ld a, a                                       ; $5e49: $7f
    cp $2d                                        ; $5e4a: $fe $2d
    ld a, [c]                                     ; $5e4c: $f2
    add b                                         ; $5e4d: $80
    rst $38                                       ; $5e4e: $ff
    adc $bf                                       ; $5e4f: $ce $bf
    rst $38                                       ; $5e51: $ff
    rst $18                                       ; $5e52: $df
    or c                                          ; $5e53: $b1
    rst $38                                       ; $5e54: $ff
    ccf                                           ; $5e55: $3f
    ldh a, [rIE]                                  ; $5e56: $f0 $ff
    rst $20                                       ; $5e58: $e7
    rra                                           ; $5e59: $1f
    rst $30                                       ; $5e5a: $f7
    ld a, h                                       ; $5e5b: $7c
    db $fc                                        ; $5e5c: $fc
    call c, $e0ff                                 ; $5e5d: $dc $ff $e0
    db $fc                                        ; $5e60: $fc
    db $fc                                        ; $5e61: $fc
    ld a, b                                       ; $5e62: $78
    ld hl, sp-$01                                 ; $5e63: $f8 $ff
    ld hl, sp-$01                                 ; $5e65: $f8 $ff
    rlca                                          ; $5e67: $07
    rst $38                                       ; $5e68: $ff
    ld [c], a                                     ; $5e69: $e2
    cp $f4                                        ; $5e6a: $fe $f4
    inc e                                         ; $5e6c: $1c
    cp $fe                                        ; $5e6d: $fe $fe
    pop hl                                        ; $5e6f: $e1
    db $e4                                        ; $5e70: $e4
    inc a                                         ; $5e71: $3c
    add sp, $38                                   ; $5e72: $e8 $38
    rst $38                                       ; $5e74: $ff

jr_07a_5e75:
    ld h, c                                       ; $5e75: $61
    cp a                                          ; $5e76: $bf
    rst $38                                       ; $5e77: $ff
    ld [c], a                                     ; $5e78: $e2
    ld e, $f4                                     ; $5e79: $1e $f4
    inc e                                         ; $5e7b: $1c
    ld hl, sp+$18                                 ; $5e7c: $f8 $18
    ldh a, [rNR10]                                ; $5e7e: $f0 $10
    rst $38                                       ; $5e80: $ff
    ldh a, [$31]                                  ; $5e81: $f0 $31
    ldh [$39], a                                  ; $5e83: $e0 $39
    ldh [$8c], a                                  ; $5e85: $e0 $8c
    rlca                                          ; $5e87: $07
    ld b, $ff                                     ; $5e88: $06 $ff
    inc bc                                        ; $5e8a: $03
    rrca                                          ; $5e8b: $0f
    ld bc, $073f                                  ; $5e8c: $01 $3f $07
    ld a, h                                       ; $5e8f: $7c
    jr @-$0e                                      ; $5e90: $18 $f0

    rst $18                                       ; $5e92: $df
    jr nz, jr_07a_5e75                            ; $5e93: $20 $e0

    ld b, b                                       ; $5e95: $40
    pop bc                                        ; $5e96: $c1
    add b                                         ; $5e97: $80
    cp d                                          ; $5e98: $ba
    jp $ffc0                                      ; $5e99: $c3 $c0 $ff


    rst $38                                       ; $5e9c: $ff
    ld h, b                                       ; $5e9d: $60
    ccf                                           ; $5e9e: $3f
    jr nc, @+$21                                  ; $5e9f: $30 $1f

    ld hl, sp+$0f                                 ; $5ea1: $f8 $0f
    db $fc                                        ; $5ea3: $fc
    ld a, a                                       ; $5ea4: $7f
    ccf                                           ; $5ea5: $3f
    inc sp                                        ; $5ea6: $33
    ldh [rNR11], a                                ; $5ea7: $e0 $11
    ldh a, [rNR23]                                ; $5ea9: $f0 $18
    ldh a, [$9a]                                  ; $5eab: $f0 $9a
    pop bc                                        ; $5ead: $c1
    sbc h                                         ; $5eae: $9c
    jp $9aff                                      ; $5eaf: $c3 $ff $9a


    ld a, e                                       ; $5eb2: $7b
    db $db                                        ; $5eb3: $db
    add hl, sp                                    ; $5eb4: $39
    jp hl                                         ; $5eb5: $e9


    add hl, de                                    ; $5eb6: $19
    ld a, c                                       ; $5eb7: $79
    ld [$18fd], sp                                ; $5eb8: $08 $fd $18
    ld [hl], a                                    ; $5ebb: $77
    ret nz                                        ; $5ebc: $c0

    add e                                         ; $5ebd: $83
    ld bc, $c6ef                                  ; $5ebe: $01 $ef $c6
    ret c                                         ; $5ec1: $d8

    jr nc, @+$01                                  ; $5ec2: $30 $ff

    db $ec                                        ; $5ec4: $ec
    jr @+$6a                                      ; $5ec5: $18 $68

    sbc b                                         ; $5ec7: $98
    sbc b                                         ; $5ec8: $98
    ldh a, [$f0]                                  ; $5ec9: $f0 $f0
    ld h, b                                       ; $5ecb: $60
    db $fd                                        ; $5ecc: $fd
    nop                                           ; $5ecd: $00
    call z, Call_000_00c0                         ; $5ece: $cc $c0 $00
    nop                                           ; $5ed1: $00
    rst $30                                       ; $5ed2: $f7
    ld d, a                                       ; $5ed3: $57
    ld e, e                                       ; $5ed4: $5b
    ld l, e                                       ; $5ed5: $6b
    rst $38                                       ; $5ed6: $ff
    ld a, b                                       ; $5ed7: $78
    jr z, @+$26                                   ; $5ed8: $28 $24

    inc a                                         ; $5eda: $3c
    inc sp                                        ; $5edb: $33
    rra                                           ; $5edc: $1f
    jr jr_07a_5eee                                ; $5edd: $18 $0f

    rst $38                                       ; $5edf: $ff
    ld c, $07                                     ; $5ee0: $0e $07
    inc bc                                        ; $5ee2: $03
    ld bc, $e1e1                                  ; $5ee3: $01 $e1 $e1
    pop bc                                        ; $5ee6: $c1
    pop bc                                        ; $5ee7: $c1
    rst $38                                       ; $5ee8: $ff
    inc bc                                        ; $5ee9: $03
    ld [bc], a                                    ; $5eea: $02
    ld b, $05                                     ; $5eeb: $06 $05
    dec e                                         ; $5eed: $1d

jr_07a_5eee:
    dec de                                        ; $5eee: $1b
    ei                                            ; $5eef: $fb
    and $ff                                       ; $5ef0: $e6 $ff
    rrca                                          ; $5ef2: $0f
    db $fc                                        ; $5ef3: $fc
    cp $f0                                        ; $5ef4: $fe $f0
    cp c                                          ; $5ef6: $b9
    ld h, b                                       ; $5ef7: $60
    or b                                          ; $5ef8: $b0
    ld h, b                                       ; $5ef9: $60
    rst $18                                       ; $5efa: $df
    ld [hl], b                                    ; $5efb: $70
    ret nz                                        ; $5efc: $c0

    ldh [$80], a                                  ; $5efd: $e0 $80
    ret nz                                        ; $5eff: $c0

    jp nc, Jump_000_00e2                          ; $5f00: $d2 $e2 $00

    nop                                           ; $5f03: $00
    rst $18                                       ; $5f04: $df
    ret nz                                        ; $5f05: $c0

    ret nz                                        ; $5f06: $c0

    pop hl                                        ; $5f07: $e1
    ld h, c                                       ; $5f08: $61

jr_07a_5f09:
    ld a, [hl]                                    ; $5f09: $7e
    sub h                                         ; $5f0a: $94
    ldh [$1f], a                                  ; $5f0b: $e0 $1f
    rrca                                          ; $5f0d: $0f
    rst $38                                       ; $5f0e: $ff
    rrca                                          ; $5f0f: $0f
    ld [$040f], sp                                ; $5f10: $08 $0f $04
    rlca                                          ; $5f13: $07
    inc b                                         ; $5f14: $04
    ld a, a                                       ; $5f15: $7f
    ld c, a                                       ; $5f16: $4f
    rst $38                                       ; $5f17: $ff
    pop af                                        ; $5f18: $f1
    sub b                                         ; $5f19: $90
    ldh [rNR41], a                                ; $5f1a: $e0 $20
    ldh [$c0], a                                  ; $5f1c: $e0 $c0
    ld b, b                                       ; $5f1e: $40
    ld b, b                                       ; $5f1f: $40
    rst $38                                       ; $5f20: $ff
    ld a, b                                       ; $5f21: $78
    ld b, b                                       ; $5f22: $40
    ccf                                           ; $5f23: $3f
    ld a, $21                                     ; $5f24: $3e $21
    ccf                                           ; $5f26: $3f
    jr nz, jr_07a_5f09                            ; $5f27: $20 $e0

    rst $38                                       ; $5f29: $ff
    and c                                         ; $5f2a: $a1
    pop hl                                        ; $5f2b: $e1
    ld [hl], c                                    ; $5f2c: $71
    ld h, c                                       ; $5f2d: $61
    ld sp, $3b11                                  ; $5f2e: $31 $11 $3b
    ld de, $1fff                                  ; $5f31: $11 $ff $1f
    add hl, bc                                    ; $5f34: $09
    rrca                                          ; $5f35: $0f
    rlca                                          ; $5f36: $07
    pop bc                                        ; $5f37: $c1
    add c                                         ; $5f38: $81
    add e                                         ; $5f39: $83
    add b                                         ; $5f3a: $80
    rst $38                                       ; $5f3b: $ff
    add a                                         ; $5f3c: $87
    ld bc, $028f                                  ; $5f3d: $01 $8f $02
    adc $04                                       ; $5f40: $ce $04
    db $fc                                        ; $5f42: $fc
    inc b                                         ; $5f43: $04
    rst $38                                       ; $5f44: $ff
    db $fc                                        ; $5f45: $fc
    ld [$08f8], sp                                ; $5f46: $08 $f8 $08
    ld a, b                                       ; $5f49: $78
    adc b                                         ; $5f4a: $88
    add $83                                       ; $5f4b: $c6 $83
    rst $30                                       ; $5f4d: $f7
    add e                                         ; $5f4e: $83
    ld bc, $6801                                  ; $5f4f: $01 $01 $68
    ret nz                                        ; $5f52: $c0

    ld b, a                                       ; $5f53: $47
    nop                                           ; $5f54: $00
    ld a, a                                       ; $5f55: $7f
    inc h                                         ; $5f56: $24
    xor a                                         ; $5f57: $af
    ld a, a                                       ; $5f58: $7f
    inc a                                         ; $5f59: $3c
    rst $38                                       ; $5f5a: $ff
    inc a                                         ; $5f5b: $3c
    ld a, [$80a1]                                 ; $5f5c: $fa $a1 $80
    adc h                                         ; $5f5f: $8c
    ret nz                                        ; $5f60: $c0

    ld b, b                                       ; $5f61: $40
    ld a, [hl]                                    ; $5f62: $7e
    adc h                                         ; $5f63: $8c
    ret nz                                        ; $5f64: $c0

    ld b, b                                       ; $5f65: $40
    ld a, a                                       ; $5f66: $7f
    ret nz                                        ; $5f67: $c0

    ld a, a                                       ; $5f68: $7f
    ld a, $fe                                     ; $5f69: $3e $fe
    ld [c], a                                     ; $5f6b: $e2
    and e                                         ; $5f6c: $a3
    sbc $fe                                       ; $5f6d: $de $fe
    pop hl                                        ; $5f6f: $e1
    inc bc                                        ; $5f70: $03
    cp $06                                        ; $5f71: $fe $06
    cp $c0                                        ; $5f73: $fe $c0
    and a                                         ; $5f75: $a7
    add b                                         ; $5f76: $80
    nop                                           ; $5f77: $00
    di                                            ; $5f78: $f3
    add b                                         ; $5f79: $80
    add b                                         ; $5f7a: $80
    ld d, a                                       ; $5f7b: $57
    call nz, $a4ab                                ; $5f7c: $c4 $ab $a4
    inc bc                                        ; $5f7f: $03
    ld bc, $0307                                  ; $5f80: $01 $07 $03
    db $ed                                        ; $5f83: $ed
    ld hl, sp-$61                                 ; $5f84: $f8 $9f
    xor b                                         ; $5f86: $a8
    ldh [$c0], a                                  ; $5f87: $e0 $c0
    ldh [$e5], a                                  ; $5f89: $e0 $e5
    stop                                          ; $5f8b: $10 $00
    db $10                                        ; $5f8d: $10
    rst $38                                       ; $5f8e: $ff
    db $10                                        ; $5f8f: $10
    jr @+$12                                      ; $5f90: $18 $10

    jr jr_07a_5f9c                                ; $5f92: $18 $08

    inc c                                         ; $5f94: $0c
    ld [$9f07], sp                                ; $5f95: $08 $07 $9f
    ld [bc], a                                    ; $5f98: $02
    inc bc                                        ; $5f99: $03
    ld [bc], a                                    ; $5f9a: $02
    inc bc                                        ; $5f9b: $03

jr_07a_5f9c:
    ld bc, $e0d6                                  ; $5f9c: $01 $d6 $e0
    cp $e0                                        ; $5f9f: $fe $e0
    ld c, $8f                                     ; $5fa1: $0e $8f
    inc bc                                        ; $5fa3: $03
    ld a, $03                                     ; $5fa4: $3e $03
    ret nz                                        ; $5fa6: $c0

    sbc h                                         ; $5fa7: $9c
    ldh [$90], a                                  ; $5fa8: $e0 $90
    pop hl                                        ; $5faa: $e1
    add d                                         ; $5fab: $82
    and e                                         ; $5fac: $a3
    nop                                           ; $5fad: $00
    db $fd                                        ; $5fae: $fd
    rst $38                                       ; $5faf: $ff
    adc l                                         ; $5fb0: $8d

jr_07a_5fb1:
    ldh [$c0], a                                  ; $5fb1: $e0 $c0
    ld l, a                                       ; $5fb3: $6f
    ret nz                                        ; $5fb4: $c0

    ld h, a                                       ; $5fb5: $67
    ret nz                                        ; $5fb6: $c0

    ld h, c                                       ; $5fb7: $61
    rst $38                                       ; $5fb8: $ff
    ret nz                                        ; $5fb9: $c0

    ld sp, $3be0                                  ; $5fba: $31 $e0 $3b
    ldh [$1f], a                                  ; $5fbd: $e0 $1f
    ldh a, [$ec]                                  ; $5fbf: $f0 $ec
    rst $38                                       ; $5fc1: $ff
    sbc b                                         ; $5fc2: $98
    adc a                                         ; $5fc3: $8f
    ld hl, sp-$11                                 ; $5fc4: $f8 $ef
    ld a, b                                       ; $5fc6: $78
    ei                                            ; $5fc7: $fb
    ld a, h                                       ; $5fc8: $7c
    cp l                                          ; $5fc9: $bd
    rst $38                                       ; $5fca: $ff
    ld h, [hl]                                    ; $5fcb: $66
    rst $38                                       ; $5fcc: $ff
    inc hl                                        ; $5fcd: $23
    rst $00                                       ; $5fce: $c7
    jr nz, jr_07a_5fb1                            ; $5fcf: $20 $e0

    nop                                           ; $5fd1: $00
    cp $ff                                        ; $5fd2: $fe $ff
    ld a, c                                       ; $5fd4: $79
    add sp, $5f                                   ; $5fd5: $e8 $5f
    cp b                                          ; $5fd7: $b8
    ld c, a                                       ; $5fd8: $4f
    add sp, $1f                                   ; $5fd9: $e8 $1f
    or b                                          ; $5fdb: $b0
    add h                                         ; $5fdc: $84
    cp c                                          ; $5fdd: $b9
    and b                                         ; $5fde: $a0
    pop hl                                        ; $5fdf: $e1
    ldh [rIF], a                                  ; $5fe0: $e0 $0f
    ret nz                                        ; $5fe2: $c0

    pop hl                                        ; $5fe3: $e1
    db $fc                                        ; $5fe4: $fc
    push hl                                       ; $5fe5: $e5
    cp b                                          ; $5fe6: $b8
    jp hl                                         ; $5fe7: $e9


    ld [hl-], a                                   ; $5fe8: $32
    and e                                         ; $5fe9: $a3
    ld bc, $ffff                                  ; $5fea: $01 $ff $ff
    ld c, $fa                                     ; $5fed: $0e $fa
    ld e, $f2                                     ; $5fef: $1e $f2
    ld [hl], $e4                                  ; $5ff1: $36 $e4
    inc h                                         ; $5ff3: $24
    rst $38                                       ; $5ff4: $ff
    db $e4                                        ; $5ff5: $e4
    ld h, h                                       ; $5ff6: $64
    call nz, $84cc                                ; $5ff7: $c4 $cc $84
    adc h                                         ; $5ffa: $8c
    adc b                                         ; $5ffb: $88
    sbc b                                         ; $5ffc: $98
    rst $38                                       ; $5ffd: $ff
    ld [$40c0], sp                                ; $5ffe: $08 $c0 $40
    ld h, b                                       ; $6001: $60
    ld b, b                                       ; $6002: $40
    ld h, b                                       ; $6003: $60
    jr nz, jr_07a_6036                            ; $6004: $20 $30

    cp a                                          ; $6006: $bf
    jr nz, jr_07a_6039                            ; $6007: $20 $30

    db $10                                        ; $6009: $10
    jr jr_07a_600c                                ; $600a: $18 $00

jr_07a_600c:
    inc b                                         ; $600c: $04
    di                                            ; $600d: $f3
    add b                                         ; $600e: $80
    ld c, $fc                                     ; $600f: $0e $fc
    ei                                            ; $6011: $fb
    pop hl                                        ; $6012: $e1
    ld c, h                                       ; $6013: $4c
    ld [$70f8], a                                 ; $6014: $ea $f8 $70
    ccf                                           ; $6017: $3f
    ld e, $07                                     ; $6018: $1e $07
    inc bc                                        ; $601a: $03
    cp $d8                                        ; $601b: $fe $d8
    add l                                         ; $601d: $85
    rrca                                          ; $601e: $0f
    inc b                                         ; $601f: $04
    rrca                                          ; $6020: $0f
    inc bc                                        ; $6021: $03
    rra                                           ; $6022: $1f
    nop                                           ; $6023: $00
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    ld hl, sp+$1f                                 ; $6026: $f8 $1f
    nop                                           ; $6028: $00
    ccf                                           ; $6029: $3f
    ld bc, $033f                                  ; $602a: $01 $3f $03
    ld a, [hl]                                    ; $602d: $7e
    ld a, a                                       ; $602e: $7f
    rlca                                          ; $602f: $07
    inc b                                         ; $6030: $04
    rlca                                          ; $6031: $07
    ld [$f00f], sp                                ; $6032: $08 $0f $f0
    rst $38                                       ; $6035: $ff

jr_07a_6036:
    ld c, h                                       ; $6036: $4c
    and b                                         ; $6037: $a0
    rst $38                                       ; $6038: $ff

jr_07a_6039:
    rst $18                                       ; $6039: $df
    ld hl, sp-$71                                 ; $603a: $f8 $8f
    call z, $8607                                 ; $603c: $cc $07 $86
    inc bc                                        ; $603f: $03
    rrca                                          ; $6040: $0f
    cp a                                          ; $6041: $bf
    ld hl, sp+$07                                 ; $6042: $f8 $07
    cp $07                                        ; $6044: $fe $07
    db $fd                                        ; $6046: $fd
    ld b, $b1                                     ; $6047: $06 $b1
    ret nz                                        ; $6049: $c0

    inc c                                         ; $604a: $0c
    push af                                       ; $604b: $f5
    ld hl, sp-$51                                 ; $604c: $f8 $af
    ret nz                                        ; $604e: $c0

    ld hl, sp+$68                                 ; $604f: $f8 $68
    pop bc                                        ; $6051: $c1
    pop bc                                        ; $6052: $c1
    add b                                         ; $6053: $80

jr_07a_6054:
    inc bc                                        ; $6054: $03
    nop                                           ; $6055: $00
    ei                                            ; $6056: $fb
    rlca                                          ; $6057: $07
    ld bc, $a110                                  ; $6058: $01 $10 $a1
    inc bc                                        ; $605b: $03
    nop                                           ; $605c: $00
    rla                                           ; $605d: $17
    ld bc, $ff2f                                  ; $605e: $01 $2f $ff
    ld bc, $031e                                  ; $6061: $01 $1e $03
    inc a                                         ; $6064: $3c
    rrca                                          ; $6065: $0f
    db $fc                                        ; $6066: $fc
    rst $30                                       ; $6067: $f7
    ld a, h                                       ; $6068: $7c
    jp Jump_000_3c07                              ; $6069: $c3 $07 $3c


    cp $e0                                        ; $606c: $fe $e0
    ld l, h                                       ; $606e: $6c
    pop hl                                        ; $606f: $e1
    or [hl]                                       ; $6070: $b6
    pop bc                                        ; $6071: $c1
    cp $e1                                        ; $6072: $fe $e1
    rlca                                          ; $6074: $07
    db $fc                                        ; $6075: $fc
    ei                                            ; $6076: $fb
    rlca                                          ; $6077: $07
    db $fc                                        ; $6078: $fc
    ld c, [hl]                                    ; $6079: $4e
    db $eb                                        ; $607a: $eb
    ld bc, $0ffe                                  ; $607b: $01 $fe $0f
    ldh a, [$1f]                                  ; $607e: $f0 $1f
    cp a                                          ; $6080: $bf
    ldh [$2f], a                                  ; $6081: $e0 $2f
    ret nc                                        ; $6083: $d0

    ld e, a                                       ; $6084: $5f
    and b                                         ; $6085: $a0
    ccf                                           ; $6086: $3f
    jp hl                                         ; $6087: $e9


    pop bc                                        ; $6088: $c1
    nop                                           ; $6089: $00
    db $ec                                        ; $608a: $ec
    db $fc                                        ; $608b: $fc
    pop hl                                        ; $608c: $e1
    dec l                                         ; $608d: $2d
    jp hl                                         ; $608e: $e9


    ei                                            ; $608f: $fb
    rlca                                          ; $6090: $07
    ld e, c                                       ; $6091: $59
    add e                                         ; $6092: $83
    cp $01                                        ; $6093: $fe $01
    ei                                            ; $6095: $fb
    rst $38                                       ; $6096: $ff
    rlca                                          ; $6097: $07
    rst $28                                       ; $6098: $ef
    inc e                                         ; $6099: $1c
    cp [hl]                                       ; $609a: $be
    ld [hl], b                                    ; $609b: $70
    ld hl, sp-$40                                 ; $609c: $f8 $c0
    call c, Call_000_38ff                         ; $609e: $dc $ff $38
    or b                                          ; $60a1: $b0
    ld h, b                                       ; $60a2: $60
    ld l, a                                       ; $60a3: $6f
    rst $00                                       ; $60a4: $c7
    rst $18                                       ; $60a5: $df
    adc a                                         ; $60a6: $8f
    cp b                                          ; $60a7: $b8
    rst $30                                       ; $60a8: $f7
    db $10                                        ; $60a9: $10
    ld [hl], b                                    ; $60aa: $70
    jr nz, @-$41                                  ; $60ab: $20 $bd

    and b                                         ; $60ad: $a0
    nop                                           ; $60ae: $00
    ccf                                           ; $60af: $3f
    db $10                                        ; $60b0: $10
    rla                                           ; $60b1: $17
    rst $38                                       ; $60b2: $ff
    jr jr_07a_6054                                ; $60b3: $18 $9f

    ld [$cceb], sp                                ; $60b5: $08 $eb $cc
    db $fd                                        ; $60b8: $fd
    ld h, [hl]                                    ; $60b9: $66
    ld a, $ef                                     ; $60ba: $3e $ef
    inc de                                        ; $60bc: $13
    rra                                           ; $60bd: $1f
    add hl, bc                                    ; $60be: $09
    dec c                                         ; $60bf: $0d
    call nc, $fde2                                ; $60c0: $d4 $e2 $fd
    inc bc                                        ; $60c3: $03
    ld a, [$06ff]                                 ; $60c4: $fa $ff $06
    push af                                       ; $60c7: $f5
    inc c                                         ; $60c8: $0c
    ld [$5519], a                                 ; $60c9: $ea $19 $55
    or d                                          ; $60cc: $b2
    xor b                                         ; $60cd: $a8
    rst $38                                       ; $60ce: $ff
    rst $20                                       ; $60cf: $e7
    ld e, d                                       ; $60d0: $5a
    jp $81bd                                      ; $60d1: $c3 $bd $81


    ld a, l                                       ; $60d4: $7d
    ld bc, $fffd                                  ; $60d5: $01 $fd $ff
    ld bc, $837a                                  ; $60d8: $01 $7a $83
    or l                                          ; $60db: $b5
    ld b, [hl]                                    ; $60dc: $46
    ld c, e                                       ; $60dd: $4b
    xor h                                         ; $60de: $ac
    rla                                           ; $60df: $17
    dec e                                         ; $60e0: $1d
    ret c                                         ; $60e1: $d8

    rst $08                                       ; $60e2: $cf
    call z, $f800                                 ; $60e3: $cc $00 $f8
    rrca                                          ; $60e6: $0f
    cp $eb                                        ; $60e7: $fe $eb
    pop hl                                        ; $60e9: $e1
    db $ec                                        ; $60ea: $ec
    rst $20                                       ; $60eb: $e7
    ld h, b                                       ; $60ec: $60
    call c, $e5fe                                 ; $60ed: $dc $fe $e5
    inc a                                         ; $60f0: $3c
    db $e3                                        ; $60f1: $e3
    ld [bc], a                                    ; $60f2: $02
    db $fd                                        ; $60f3: $fd
    ld bc, $e0fc                                  ; $60f4: $01 $fc $e0

Jump_07a_60f7:
    dec b                                         ; $60f7: $05
    ld a, [$0b5b]                                 ; $60f8: $fa $5b $0b
    db $f4                                        ; $60fb: $f4
    db $fc                                        ; $60fc: $fc
    pop hl                                        ; $60fd: $e1
    dec d                                         ; $60fe: $15
    ld [$e362], a                                 ; $60ff: $ea $62 $e3
    db $fd                                        ; $6102: $fd

Jump_07a_6103:
    rra                                           ; $6103: $1f
    ldh [$fd], a                                  ; $6104: $e0 $fd
    ld a, [$e021]                                 ; $6106: $fa $21 $e0
    or $0f                                        ; $6109: $f6 $0f
    rst $18                                       ; $610b: $df
    inc a                                         ; $610c: $3c
    ld l, a                                       ; $610d: $6f
    ldh a, [rIE]                                  ; $610e: $f0 $ff
    sbc a                                         ; $6110: $9f
    ldh [$1f], a                                  ; $6111: $e0 $1f
    ldh [$6f], a                                  ; $6113: $e0 $6f
    ldh a, [$fb]                                  ; $6115: $f0 $fb
    db $fc                                        ; $6117: $fc
    rst $18                                       ; $6118: $df
    db $fd                                        ; $6119: $fd
    cp $ff                                        ; $611a: $fe $ff
    sbc $e0                                       ; $611c: $de $e0
    ld a, [de]                                    ; $611e: $1a
    and d                                         ; $611f: $a2
    add b                                         ; $6120: $80
    nop                                           ; $6121: $00
    push af                                       ; $6122: $f5
    ret nz                                        ; $6123: $c0

    cp $e0                                        ; $6124: $fe $e0
    ldh [$fe], a                                  ; $6126: $e0 $fe
    ldh [rIE], a                                  ; $6128: $e0 $ff
    nop                                           ; $612a: $00
    db $fd                                        ; $612b: $fd
    inc bc                                        ; $612c: $03
    rst $38                                       ; $612d: $ff
    ei                                            ; $612e: $fb
    rlca                                          ; $612f: $07
    push af                                       ; $6130: $f5
    rrca                                          ; $6131: $0f
    ei                                            ; $6132: $fb
    dec c                                         ; $6133: $0d
    db $ed                                        ; $6134: $ed
    add hl, de                                    ; $6135: $19
    rst $38                                       ; $6136: $ff
    ld sp, hl                                     ; $6137: $f9
    ld de, $11f1                                  ; $6138: $11 $f1 $11
    ld hl, sp-$10                                 ; $613b: $f8 $f0
    db $fc                                        ; $613d: $fc
    ld hl, sp-$01                                 ; $613e: $f8 $ff
    adc [hl]                                      ; $6140: $8e
    db $fc                                        ; $6141: $fc
    ld [hl], a                                    ; $6142: $77
    cp $df                                        ; $6143: $fe $df
    ld d, a                                       ; $6145: $57
    rst $38                                       ; $6146: $ff
    ld d, a                                       ; $6147: $57
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    halt                                          ; $614a: $76
    rst $38                                       ; $614b: $ff
    ld [hl], a                                    ; $614c: $77
    ldh a, [rVBK]                                 ; $614d: $f0 $4f
    ld [hl], b                                    ; $614f: $70
    cpl                                           ; $6150: $2f
    rst $38                                       ; $6151: $ff
    add hl, sp                                    ; $6152: $39
    ld d, $3d                                     ; $6153: $16 $3d
    dec hl                                        ; $6155: $2b
    rst $28                                       ; $6156: $ef
    rst $00                                       ; $6157: $c7
    pop bc                                        ; $6158: $c1
    add b                                         ; $6159: $80
    cp $8f                                        ; $615a: $fe $8f
    ld h, b                                       ; $615c: $60
    add b                                         ; $615d: $80
    ld l, a                                       ; $615e: $6f
    or b                                          ; $615f: $b0
    rst $18                                       ; $6160: $df
    ld h, b                                       ; $6161: $60
    sbc a                                         ; $6162: $9f
    ldh [rIE], a                                  ; $6163: $e0 $ff
    rlca                                          ; $6165: $07
    ld hl, sp+$00                                 ; $6166: $f8 $00
    rst $38                                       ; $6168: $ff
    ldh a, [rIE]                                  ; $6169: $f0 $ff
    rst $08                                       ; $616b: $cf
    ld a, a                                       ; $616c: $7f
    ei                                            ; $616d: $fb
    ld a, e                                       ; $616e: $7b
    ld b, a                                       ; $616f: $47
    ld c, c                                       ; $6170: $49
    ld h, e                                       ; $6171: $63
    db $dd                                        ; $6172: $dd
    ld a, $77                                     ; $6173: $3e $77
    db $e3                                        ; $6175: $e3
    pop bc                                        ; $6176: $c1
    push hl                                       ; $6177: $e5
    add b                                         ; $6178: $80
    jp z, $f861                                   ; $6179: $ca $61 $f8

    cp a                                          ; $617c: $bf
    ret nz                                        ; $617d: $c0

    cp $e1                                        ; $617e: $fe $e1
    ldh [$3f], a                                  ; $6180: $e0 $3f
    ldh [$e3], a                                  ; $6182: $e0 $e3
    cp a                                          ; $6184: $bf
    ret nz                                        ; $6185: $c0

    jp z, $4660                                   ; $6186: $ca $60 $46

    and c                                         ; $6189: $a1
    db $ec                                        ; $618a: $ec
    xor c                                         ; $618b: $a9
    db $fc                                        ; $618c: $fc
    nop                                           ; $618d: $00
    ld a, [$00ff]                                 ; $618e: $fa $ff $00
    db $f4                                        ; $6191: $f4
    add b                                         ; $6192: $80
    ld a, [$7c80]                                 ; $6193: $fa $80 $7c
    ret nz                                        ; $6196: $c0

    ld a, d                                       ; $6197: $7a
    rst $38                                       ; $6198: $ff
    ret nz                                        ; $6199: $c0

    dec a                                         ; $619a: $3d
    ldh [$3e], a                                  ; $619b: $e0 $3e
    ldh [$0b], a                                  ; $619d: $e0 $0b
    ld c, $1f                                     ; $619f: $0e $1f
    ld a, a                                       ; $61a1: $7f
    rrca                                          ; $61a2: $0f
    inc de                                        ; $61a3: $13
    rra                                           ; $61a4: $1f
    inc de                                        ; $61a5: $13
    rra                                           ; $61a6: $1f
    ld sp, $a01f                                  ; $61a7: $31 $1f $a0
    ld h, c                                       ; $61aa: $61
    rst $38                                       ; $61ab: $ff
    jr nz, jr_07a_61ed                            ; $61ac: $20 $3f

    jp nc, $d7db                                  ; $61ae: $d2 $db $d7

    db $db                                        ; $61b1: $db
    push de                                       ; $61b2: $d5
    rst $18                                       ; $61b3: $df
    rst $38                                       ; $61b4: $ff
    ld d, l                                       ; $61b5: $55
    rst $18                                       ; $61b6: $df
    ld d, c                                       ; $61b7: $51
    rst $18                                       ; $61b8: $df
    sbc c                                         ; $61b9: $99
    rst $18                                       ; $61ba: $df
    sbc a                                         ; $61bb: $9f
    rst $08                                       ; $61bc: $cf
    rst $18                                       ; $61bd: $df
    adc a                                         ; $61be: $8f
    rst $08                                       ; $61bf: $cf
    ldh [rP1], a                                  ; $61c0: $e0 $00
    ldh a, [$fe]                                  ; $61c2: $f0 $fe
    and $e0                                       ; $61c4: $e6 $e0
    nop                                           ; $61c6: $00
    cpl                                           ; $61c7: $2f
    ld h, b                                       ; $61c8: $60
    add b                                         ; $61c9: $80
    pop hl                                        ; $61ca: $e1
    ld de, $e3f0                                  ; $61cb: $11 $f0 $e3
    ld hl, sp+$48                                 ; $61ce: $f8 $48
    ldh [$cd], a                                  ; $61d0: $e0 $cd
    ld b, c                                       ; $61d2: $41
    rst $38                                       ; $61d3: $ff
    rlca                                          ; $61d4: $07
    rst $38                                       ; $61d5: $ff
    adc d                                         ; $61d6: $8a
    ei                                            ; $61d7: $fb
    ld [hl], a                                    ; $61d8: $77
    ld [hl], d                                    ; $61d9: $72
    dec c                                         ; $61da: $0d
    ld b, $8f                                     ; $61db: $06 $8f
    dec sp                                        ; $61dd: $3b
    inc e                                         ; $61de: $1c
    rst $28                                       ; $61df: $ef
    ldh a, [$bd]                                  ; $61e0: $f0 $bd
    ld b, c                                       ; $61e2: $41
    rst $28                                       ; $61e3: $ef
    adc d                                         ; $61e4: $8a
    db $10                                        ; $61e5: $10
    ld h, b                                       ; $61e6: $60
    ld a, a                                       ; $61e7: $7f
    rst $38                                       ; $61e8: $ff
    ld b, d                                       ; $61e9: $42
    ld a, [hl]                                    ; $61ea: $7e
    ld b, d                                       ; $61eb: $42
    ld a, d                                       ; $61ec: $7a

jr_07a_61ed:
    ld b, [hl]                                    ; $61ed: $46
    cp $44                                        ; $61ee: $fe $44
    or h                                          ; $61f0: $b4
    ld a, a                                       ; $61f1: $7f
    call z, $88fc                                 ; $61f2: $cc $fc $88
    db $ec                                        ; $61f5: $ec
    sbc b                                         ; $61f6: $98
    rst $18                                       ; $61f7: $df
    or b                                          ; $61f8: $b0
    sub $40                                       ; $61f9: $d6 $40
    rst $38                                       ; $61fb: $ff

Jump_07a_61fc:
    rrca                                          ; $61fc: $0f
    inc sp                                        ; $61fd: $33
    inc e                                         ; $61fe: $1c
    ld h, [hl]                                    ; $61ff: $66
    jr c, jr_07a_627e                             ; $6200: $38 $7c

    ld a, b                                       ; $6202: $78
    add $ff                                       ; $6203: $c6 $ff
    ld a, h                                       ; $6205: $7c
    adc a                                         ; $6206: $8f
    ld a, [c]                                     ; $6207: $f2
    sbc [hl]                                      ; $6208: $9e
    ldh [rNR41], a                                ; $6209: $e0 $20
    ccf                                           ; $620b: $3f
    or b                                          ; $620c: $b0
    db $eb                                        ; $620d: $eb
    rra                                           ; $620e: $1f
    db $10                                        ; $620f: $10
    cp $e2                                        ; $6210: $fe $e2
    jr nc, @+$80                                  ; $6212: $30 $7e

    ldh [$60], a                                  ; $6214: $e0 $60
    ccf                                           ; $6216: $3f
    dec e                                         ; $6217: $1d
    rst $20                                       ; $6218: $e7
    ldh a, [$0e]                                  ; $6219: $f0 $0e
    ld hl, sp-$5c                                 ; $621b: $f8 $a4
    pop bc                                        ; $621d: $c1
    ld [hl], b                                    ; $621e: $70
    ld b, l                                       ; $621f: $45
    jr nz, jr_07a_6261                            ; $6220: $20 $3f

    and b                                         ; $6222: $a0
    rst $38                                       ; $6223: $ff
    ccf                                           ; $6224: $3f
    ld sp, $911f                                  ; $6225: $31 $1f $91
    rra                                           ; $6228: $1f
    pop af                                        ; $6229: $f1
    sbc a                                         ; $622a: $9f
    ld a, c                                       ; $622b: $79
    ei                                            ; $622c: $fb
    rst $28                                       ; $622d: $ef
    dec e                                         ; $622e: $1d
    ld a, d                                       ; $622f: $7a
    add b                                         ; $6230: $80
    adc a                                         ; $6231: $8f
    and $db                                       ; $6232: $e6 $db
    cp [hl]                                       ; $6234: $be
    ld a, l                                       ; $6235: $7d
    ld a, c                                       ; $6236: $79
    add e                                         ; $6237: $83
    rst $10                                       ; $6238: $d7
    and b                                         ; $6239: $a0
    ld c, a                                       ; $623a: $4f
    ld b, d                                       ; $623b: $42
    ld a, a                                       ; $623c: $7f
    add b                                         ; $623d: $80
    ldh a, [$e0]                                  ; $623e: $f0 $e0
    ret z                                         ; $6240: $c8

    ld h, c                                       ; $6241: $61
    rst $38                                       ; $6242: $ff
    ld h, b                                       ; $6243: $60
    add b                                         ; $6244: $80
    ldh [$80], a                                  ; $6245: $e0 $80
    ld b, c                                       ; $6247: $41
    add b                                         ; $6248: $80
    add e                                         ; $6249: $83
    ld bc, $a7e3                                  ; $624a: $01 $e3 $a7
    ld e, [hl]                                    ; $624d: $5e
    ld h, b                                       ; $624e: $60
    adc d                                         ; $624f: $8a
    ld a, [hl]                                    ; $6250: $7e
    pop hl                                        ; $6251: $e1
    sub h                                         ; $6252: $94
    add c                                         ; $6253: $81
    inc bc                                        ; $6254: $03
    rlca                                          ; $6255: $07
    ld b, $f9                                     ; $6256: $06 $f9
    inc c                                         ; $6258: $0c
    rlca                                          ; $6259: $07
    ld b, h                                       ; $625a: $44
    ld e, a                                       ; $625b: $5f
    ld b, b                                       ; $625c: $40
    rst $18                                       ; $625d: $df
    ldh [$b9], a                                  ; $625e: $e0 $b9
    ret nc                                        ; $6260: $d0

jr_07a_6261:
    ld l, c                                       ; $6261: $69
    rst $30                                       ; $6262: $f7
    ld l, b                                       ; $6263: $68
    ld b, a                                       ; $6264: $47
    ld h, a                                       ; $6265: $67
    or $80                                        ; $6266: $f6 $80
    ldh a, [$60]                                  ; $6268: $f0 $60
    db $fc                                        ; $626a: $fc
    add b                                         ; $626b: $80
    rst $38                                       ; $626c: $ff
    ldh a, [$80]                                  ; $626d: $f0 $80
    pop hl                                        ; $626f: $e1
    ld b, b                                       ; $6270: $40
    db $e3                                        ; $6271: $e3
    ld hl, $27be                                  ; $6272: $21 $be $27
    ccf                                           ; $6275: $3f
    inc a                                         ; $6276: $3c
    ccf                                           ; $6277: $3f
    ld a, b                                       ; $6278: $78
    cpl                                           ; $6279: $2f
    ldh a, [$5f]                                  ; $627a: $f0 $5f
    inc c                                         ; $627c: $0c
    add c                                         ; $627d: $81

jr_07a_627e:
    cp d                                          ; $627e: $ba
    adc c                                         ; $627f: $89
    ld a, [hl]                                    ; $6280: $7e
    inc e                                         ; $6281: $1c
    add c                                         ; $6282: $81
    ld b, b                                       ; $6283: $40
    ret nz                                        ; $6284: $c0

    ld h, b                                       ; $6285: $60
    ret nz                                        ; $6286: $c0

    jr nc, @-$1e                                  ; $6287: $30 $e0

    ld a, [hl-]                                   ; $6289: $3a
    ld h, e                                       ; $628a: $63
    rst $08                                       ; $628b: $cf
    ld hl, sp+$7e                                 ; $628c: $f8 $7e
    ret nz                                        ; $628e: $c0

    inc a                                         ; $628f: $3c
    push af                                       ; $6290: $f5
    ldh [$fe], a                                  ; $6291: $e0 $fe
    jp nz, Jump_000_00f8                          ; $6293: $c2 $f8 $00

    ld sp, hl                                     ; $6296: $f9
    db $fc                                        ; $6297: $fc
    inc e                                         ; $6298: $1c
    ld [c], a                                     ; $6299: $e2
    sbc h                                         ; $629a: $9c
    db $e3                                        ; $629b: $e3
    rrca                                          ; $629c: $0f
    ld b, $1c                                     ; $629d: $06 $1c
    ld [$ef30], sp                                ; $629f: $08 $30 $ef
    nop                                           ; $62a2: $00
    or $f9                                        ; $62a3: $f6 $f9
    rst $18                                       ; $62a5: $df
    ld [bc], a                                    ; $62a6: $02
    ld h, b                                       ; $62a7: $60
    ld c, [hl]                                    ; $62a8: $4e
    pop af                                        ; $62a9: $f1
    rst $20                                       ; $62aa: $e7
    rst $38                                       ; $62ab: $ff
    ld a, c                                       ; $62ac: $79
    ld h, a                                       ; $62ad: $67
    ld a, c                                       ; $62ae: $79
    ld d, e                                       ; $62af: $53
    ld a, l                                       ; $62b0: $7d
    ld d, e                                       ; $62b1: $53
    ld a, l                                       ; $62b2: $7d
    ret nc                                        ; $62b3: $d0

    ld [hl], e                                    ; $62b4: $73
    sbc a                                         ; $62b5: $9f
    and b                                         ; $62b6: $a0
    ld a, [hl+]                                   ; $62b7: $2a
    ldh [$b6], a                                  ; $62b8: $e0 $b6
    ld h, c                                       ; $62ba: $61
    ret nz                                        ; $62bb: $c0

    rst $38                                       ; $62bc: $ff
    ld b, b                                       ; $62bd: $40
    and b                                         ; $62be: $a0
    ld hl, $fe06                                  ; $62bf: $21 $06 $fe
    ld a, [c]                                     ; $62c2: $f2
    rst $30                                       ; $62c3: $f7
    rst $30                                       ; $62c4: $f7
    rst $20                                       ; $62c5: $e7
    push hl                                       ; $62c6: $e5
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    ld d, c                                       ; $62ca: $51
    inc c                                         ; $62cb: $0c
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    ld sp, hl                                     ; $62d0: $f9
    ld hl, sp+$0e                                 ; $62d1: $f8 $0e
    db $dd                                        ; $62d3: $dd
    and $0d                                       ; $62d4: $e6 $0d
    rst $38                                       ; $62d6: $ff
    and $2a                                       ; $62d7: $e6 $2a
    ldh [$ee], a                                  ; $62d9: $e0 $ee
    rrca                                          ; $62db: $0f
    ldh [$f8], a                                  ; $62dc: $e0 $f8
    ld c, $be                                     ; $62de: $0e $be
    ldh [rIF], a                                  ; $62e0: $e0 $0f
    rst $18                                       ; $62e2: $df
    pop hl                                        ; $62e3: $e1
    ret nz                                        ; $62e4: $c0

    di                                            ; $62e5: $f3
    or c                                          ; $62e6: $b1
    dec c                                         ; $62e7: $0d
    ldh [$e1], a                                  ; $62e8: $e0 $e1
    and c                                         ; $62ea: $a1
    db $eb                                        ; $62eb: $eb
    ldh [$eb], a                                  ; $62ec: $e0 $eb
    dec c                                         ; $62ee: $0d
    dec c                                         ; $62ef: $0d
    ld a, l                                       ; $62f0: $7d
    db $e3                                        ; $62f1: $e3
    ld c, $e8                                     ; $62f2: $0e $e8
    add b                                         ; $62f4: $80
    di                                            ; $62f5: $f3
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    db $fc                                        ; $62f8: $fc
    ei                                            ; $62f9: $fb
    dec bc                                        ; $62fa: $0b
    rst $38                                       ; $62fb: $ff
    db $e3                                        ; $62fc: $e3
    ld a, [bc]                                    ; $62fd: $0a
    add hl, bc                                    ; $62fe: $09
    ld [$ffbe], sp                                ; $62ff: $08 $be $ff
    ld [c], a                                     ; $6302: $e2
    ld a, [bc]                                    ; $6303: $0a
    ld a, [bc]                                    ; $6304: $0a
    ld a, [bc]                                    ; $6305: $0a
    dec bc                                        ; $6306: $0b
    dec bc                                        ; $6307: $0b
    ldh [$f0], a                                  ; $6308: $e0 $f0
    dec bc                                        ; $630a: $0b
    db $f4                                        ; $630b: $f4
    ldh [$e4], a                                  ; $630c: $e0 $e4
    rst $10                                       ; $630e: $d7
    ldh [$09], a                                  ; $630f: $e0 $09
    ldh [$f9], a                                  ; $6311: $e0 $f9
    ld [$080a], sp                                ; $6313: $08 $0a $08
    add hl, bc                                    ; $6316: $09
    add hl, de                                    ; $6317: $19
    ld a, [bc]                                    ; $6318: $0a
    ret nz                                        ; $6319: $c0

    pop af                                        ; $631a: $f1
    cp a                                          ; $631b: $bf
    db $e3                                        ; $631c: $e3
    add hl, bc                                    ; $631d: $09
    add hl, bc                                    ; $631e: $09
    sbc b                                         ; $631f: $98
    ldh [$e0], a                                  ; $6320: $e0 $e0
    ld a, [c]                                     ; $6322: $f2
    rst $20                                       ; $6323: $e7
    pop hl                                        ; $6324: $e1
    inc b                                         ; $6325: $04
    add c                                         ; $6326: $81
    ldh [$98], a                                  ; $6327: $e0 $98
    ldh [$0a], a                                  ; $6329: $e0 $0a
    add b                                         ; $632b: $80
    ld [$ffff], a                                 ; $632c: $ea $ff $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    nop                                           ; $6335: $00
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    nop                                           ; $6346: $00
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    pop af                                        ; $6352: $f1
    ld l, b                                       ; $6353: $68
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    ld sp, hl                                     ; $6358: $f9
    ld hl, sp+$38                                 ; $6359: $f8 $38
    add hl, sp                                    ; $635b: $39
    ld a, [hl-]                                   ; $635c: $3a
    dec sp                                        ; $635d: $3b
    rst $38                                       ; $635e: $ff
    inc a                                         ; $635f: $3c
    dec a                                         ; $6360: $3d
    ld a, $3f                                     ; $6361: $3e $3f
    ld b, b                                       ; $6363: $40
    ld b, c                                       ; $6364: $41
    ld b, d                                       ; $6365: $42
    ld b, e                                       ; $6366: $43
    db $fc                                        ; $6367: $fc
    rst $38                                       ; $6368: $ff
    push hl                                       ; $6369: $e5
    jp z, Jump_07a_44e9                           ; $636a: $ca $e9 $44

    ld b, l                                       ; $636d: $45
    ld b, [hl]                                    ; $636e: $46
    ld b, a                                       ; $636f: $47
    ld c, b                                       ; $6370: $48
    ld c, c                                       ; $6371: $49
    rst $18                                       ; $6372: $df
    ld c, d                                       ; $6373: $4a
    ld c, e                                       ; $6374: $4b
    ld c, h                                       ; $6375: $4c
    ld c, l                                       ; $6376: $4d
    ld c, [hl]                                    ; $6377: $4e
    ldh [$f2], a                                  ; $6378: $e0 $f2
    ld c, a                                       ; $637a: $4f
    ld d, b                                       ; $637b: $50
    rst $38                                       ; $637c: $ff
    ld d, c                                       ; $637d: $51
    ld d, d                                       ; $637e: $52
    ld d, e                                       ; $637f: $53
    ld d, h                                       ; $6380: $54
    ld d, l                                       ; $6381: $55
    ld d, [hl]                                    ; $6382: $56
    ld d, a                                       ; $6383: $57
    ld e, b                                       ; $6384: $58
    db $fd                                        ; $6385: $fd
    ld e, c                                       ; $6386: $59
    ret nz                                        ; $6387: $c0

    ld a, [c]                                     ; $6388: $f2
    ld b, e                                       ; $6389: $43
    ld e, d                                       ; $638a: $5a
    ld e, e                                       ; $638b: $5b
    ld e, h                                       ; $638c: $5c
    ld e, l                                       ; $638d: $5d
    ld e, [hl]                                    ; $638e: $5e
    rst $18                                       ; $638f: $df
    nop                                           ; $6390: $00
    ld e, a                                       ; $6391: $5f
    ld h, b                                       ; $6392: $60
    ld h, c                                       ; $6393: $61
    ld h, d                                       ; $6394: $62
    ldh [$f3], a                                  ; $6395: $e0 $f3
    ld b, e                                       ; $6397: $43
    ld b, e                                       ; $6398: $43
    ld a, a                                       ; $6399: $7f
    ld h, e                                       ; $639a: $63
    ld h, h                                       ; $639b: $64
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    ld h, l                                       ; $639e: $65
    ld h, [hl]                                    ; $639f: $66
    ld h, a                                       ; $63a0: $67
    add c                                         ; $63a1: $81
    and $e8                                       ; $63a2: $e6 $e8
    add b                                         ; $63a4: $80
    ld [$ffff], a                                 ; $63a5: $ea $ff $ff
    db $fc                                        ; $63a8: $fc
    ei                                            ; $63a9: $fb
    nop                                           ; $63aa: $00
    rst $38                                       ; $63ab: $ff
    db $e3                                        ; $63ac: $e3
    ld bc, $0302                                  ; $63ad: $01 $02 $03
    rst $38                                       ; $63b0: $ff
    inc b                                         ; $63b1: $04
    dec b                                         ; $63b2: $05
    ld b, $07                                     ; $63b3: $06 $07
    ld [$0a09], sp                                ; $63b5: $08 $09 $0a
    dec bc                                        ; $63b8: $0b
    ei                                            ; $63b9: $fb
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00

Call_07a_63bc:
    ldh [$f0], a                                  ; $63bc: $e0 $f0
    nop                                           ; $63be: $00
    inc c                                         ; $63bf: $0c
    dec c                                         ; $63c0: $0d
    ld c, $0f                                     ; $63c1: $0e $0f
    ld a, a                                       ; $63c3: $7f
    db $10                                        ; $63c4: $10
    ld de, $1312                                  ; $63c5: $11 $12 $13
    inc d                                         ; $63c8: $14
    dec d                                         ; $63c9: $15
    ld d, $e0                                     ; $63ca: $16 $e0
    ld a, [c]                                     ; $63cc: $f2
    rst $38                                       ; $63cd: $ff
    rla                                           ; $63ce: $17
    jr jr_07a_63ea                                ; $63cf: $18 $19

    ld a, [de]                                    ; $63d1: $1a
    dec de                                        ; $63d2: $1b
    inc e                                         ; $63d3: $1c
    dec e                                         ; $63d4: $1d
    ld e, $ef                                     ; $63d5: $1e $ef
    rra                                           ; $63d7: $1f
    jr nz, @+$23                                  ; $63d8: $20 $21

    ld [hl+], a                                   ; $63da: $22
    ret nz                                        ; $63db: $c0

    pop af                                        ; $63dc: $f1
    nop                                           ; $63dd: $00
    inc hl                                        ; $63de: $23
    inc h                                         ; $63df: $24
    rst $38                                       ; $63e0: $ff
    dec h                                         ; $63e1: $25
    ld h, $27                                     ; $63e2: $26 $27
    jr z, jr_07a_640f                             ; $63e4: $28 $29

    ld a, [hl+]                                   ; $63e6: $2a
    dec hl                                        ; $63e7: $2b
    inc l                                         ; $63e8: $2c
    db $fd                                        ; $63e9: $fd

jr_07a_63ea:
    dec l                                         ; $63ea: $2d
    and b                                         ; $63eb: $a0
    pop af                                        ; $63ec: $f1
    ld l, $2f                                     ; $63ed: $2e $2f
    jr nc, jr_07a_6422                            ; $63ef: $30 $31

    ld [hl-], a                                   ; $63f1: $32
    inc sp                                        ; $63f2: $33
    rra                                           ; $63f3: $1f
    inc [hl]                                      ; $63f4: $34
    nop                                           ; $63f5: $00
    dec [hl]                                      ; $63f6: $35
    ld [hl], $37                                  ; $63f7: $36 $37
    add b                                         ; $63f9: $80
    ld [$ffff], a                                 ; $63fa: $ea $ff $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    nop                                           ; $63ff: $00
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff

jr_07a_640f:
    rst $38                                       ; $640f: $ff
    nop                                           ; $6410: $00
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    rst $38                                       ; $6417: $ff
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    rst $38                                       ; $641a: $ff
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    jr z, jr_07a_6486                             ; $6420: $28 $64

jr_07a_6422:
    ld l, b                                       ; $6422: $68
    ld h, h                                       ; $6423: $64
    ld c, d                                       ; $6424: $4a
    ld l, a                                       ; $6425: $6f
    add hl, bc                                    ; $6426: $09
    ld [hl], b                                    ; $6427: $70
    add hl, sp                                    ; $6428: $39
    ld a, a                                       ; $6429: $7f
    rst $28                                       ; $642a: $ef
    ld d, l                                       ; $642b: $55
    rst $20                                       ; $642c: $e7
    inc [hl]                                      ; $642d: $34
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    add hl, sp                                    ; $6430: $39
    ld a, a                                       ; $6431: $7f
    rst $28                                       ; $6432: $ef
    ld d, l                                       ; $6433: $55
    ld b, b                                       ; $6434: $40
    ld a, [hl]                                    ; $6435: $7e
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    rst $28                                       ; $6438: $ef
    ld d, l                                       ; $6439: $55
    rst $20                                       ; $643a: $e7
    inc [hl]                                      ; $643b: $34
    ld b, b                                       ; $643c: $40
    ld a, [hl]                                    ; $643d: $7e
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    rst $38                                       ; $6440: $ff
    ld a, a                                       ; $6441: $7f
    rst $28                                       ; $6442: $ef
    ld d, l                                       ; $6443: $55
    rst $20                                       ; $6444: $e7
    inc [hl]                                      ; $6445: $34
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    ld e, c                                       ; $6448: $59
    ld a, [hl-]                                   ; $6449: $3a
    ld d, c                                       ; $644a: $51
    add hl, de                                    ; $644b: $19
    xor d                                         ; $644c: $aa
    nop                                           ; $644d: $00
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    ld e, c                                       ; $6450: $59
    ld a, [hl-]                                   ; $6451: $3a
    ld d, c                                       ; $6452: $51
    add hl, de                                    ; $6453: $19
    cp a                                          ; $6454: $bf
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    ld a, a                                       ; $6458: $7f
    ld l, a                                       ; $6459: $6f

jr_07a_645a:
    ld e, c                                       ; $645a: $59
    ld a, [hl-]                                   ; $645b: $3a
    cp a                                          ; $645c: $bf
    nop                                           ; $645d: $00
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    ld a, a                                       ; $6460: $7f
    ld l, a                                       ; $6461: $6f
    ld e, c                                       ; $6462: $59
    ld a, [hl-]                                   ; $6463: $3a
    ld d, c                                       ; $6464: $51
    add hl, de                                    ; $6465: $19
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    rst $38                                       ; $6468: $ff
    nop                                           ; $6469: $00
    rst $38                                       ; $646a: $ff
    nop                                           ; $646b: $00
    rst $38                                       ; $646c: $ff
    inc bc                                        ; $646d: $03
    rst $38                                       ; $646e: $ff
    rrca                                          ; $646f: $0f
    db $fc                                        ; $6470: $fc
    rst $38                                       ; $6471: $ff
    ccf                                           ; $6472: $3f
    ldh a, [$7f]                                  ; $6473: $f0 $7f
    ret nz                                        ; $6475: $c0

    rst $38                                       ; $6476: $ff
    add b                                         ; $6477: $80
    rst $38                                       ; $6478: $ff
    nop                                           ; $6479: $00
    sbc a                                         ; $647a: $9f
    rra                                           ; $647b: $1f
    rst $38                                       ; $647c: $ff
    ldh a, [$e0]                                  ; $647d: $f0 $e0
    add b                                         ; $647f: $80
    db $eb                                        ; $6480: $eb
    pop hl                                        ; $6481: $e1
    db $fc                                        ; $6482: $fc
    db $e4                                        ; $6483: $e4
    ldh [$fd], a                                  ; $6484: $e0 $fd

jr_07a_6486:
    rst $38                                       ; $6486: $ff
    db $f4                                        ; $6487: $f4
    pop hl                                        ; $6488: $e1
    ei                                            ; $6489: $fb
    inc b                                         ; $648a: $04
    rla                                           ; $648b: $17
    add sp, $2b                                   ; $648c: $e8 $2b
    call nc, $15cf                                ; $648e: $d4 $cf $15
    ld [$fc03], a                                 ; $6491: $ea $03 $fc
    and $e7                                       ; $6494: $e6 $e7
    ldh [$e4], a                                  ; $6496: $e0 $e4
    ccf                                           ; $6498: $3f
    jr nc, jr_07a_645a                            ; $6499: $30 $bf

Call_07a_649b:
    rra                                           ; $649b: $1f
    db $10                                        ; $649c: $10
    rra                                           ; $649d: $1f
    jr @+$11                                      ; $649e: $18 $0f

    ld [$e0fe], sp                                ; $64a0: $08 $fe $e0
    inc b                                         ; $64a3: $04
    rst $30                                       ; $64a4: $f7
    rlca                                          ; $64a5: $07
    inc b                                         ; $64a6: $04
    rlca                                          ; $64a7: $07
    pop hl                                        ; $64a8: $e1
    db $ec                                        ; $64a9: $ec
    rst $38                                       ; $64aa: $ff
    rlca                                          ; $64ab: $07
    rst $38                                       ; $64ac: $ff
    ld bc, $cdfc                                  ; $64ad: $01 $fc $cd
    ld [$e1ff], a                                 ; $64b0: $ea $ff $e1
    ld a, a                                       ; $64b3: $7f
    rst $38                                       ; $64b4: $ff
    rra                                           ; $64b5: $1f
    rst $38                                       ; $64b6: $ff
    ccf                                           ; $64b7: $3f
    cp $fd                                        ; $64b8: $fe $fd
    ccf                                           ; $64ba: $3f
    ld hl, sp-$20                                 ; $64bb: $f8 $e0
    ld a, b                                       ; $64bd: $78
    ldh a, [$8f]                                  ; $64be: $f0 $8f
    rlca                                          ; $64c0: $07
    rst $30                                       ; $64c1: $f7
    di                                            ; $64c2: $f3
    rst $38                                       ; $64c3: $ff
    adc a                                         ; $64c4: $8f
    dec bc                                        ; $64c5: $0b
    rst $00                                       ; $64c6: $c7
    rst $00                                       ; $64c7: $c7
    scf                                           ; $64c8: $37
    inc sp                                        ; $64c9: $33
    adc a                                         ; $64ca: $8f
    adc a                                         ; $64cb: $8f
    ld a, a                                       ; $64cc: $7f
    rst $38                                       ; $64cd: $ff
    rst $30                                       ; $64ce: $f7
    rra                                           ; $64cf: $1f
    rrca                                          ; $64d0: $0f
    ldh a, [rIE]                                  ; $64d1: $f0 $ff
    db $fc                                        ; $64d3: $fc
    call c, Call_000_1fe2                         ; $64d4: $dc $e2 $1f
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    cp $ff                                        ; $64d9: $fe $ff
    ld hl, sp-$02                                 ; $64db: $f8 $fe
    ldh [$75], a                                  ; $64dd: $e0 $75
    db $e3                                        ; $64df: $e3
    ld h, l                                       ; $64e0: $65
    ld [c], a                                     ; $64e1: $e2
    db $fc                                        ; $64e2: $fc
    ld l, e                                       ; $64e3: $6b
    db $e3                                        ; $64e4: $e3
    rst $38                                       ; $64e5: $ff
    db $ec                                        ; $64e6: $ec
    dec b                                         ; $64e7: $05
    ld a, [$fc03]                                 ; $64e8: $fa $03 $fc
    rlca                                          ; $64eb: $07
    ld hl, sp-$01                                 ; $64ec: $f8 $ff
    dec bc                                        ; $64ee: $0b
    db $f4                                        ; $64ef: $f4
    dec b                                         ; $64f0: $05
    ld a, [$f708]                                 ; $64f1: $fa $08 $f7
    ld bc, $f9ff                                  ; $64f4: $01 $ff $f9
    ld b, $52                                     ; $64f7: $06 $52
    ld [c], a                                     ; $64f9: $e2
    ld b, d                                       ; $64fa: $42
    pop hl                                        ; $64fb: $e1
    xor $1f                                       ; $64fc: $ee $1f
    ld [hl], b                                    ; $64fe: $70
    rst $38                                       ; $64ff: $ff

Call_07a_6500:
    add a                                         ; $6500: $87
    rst $30                                       ; $6501: $f7
    ld hl, sp+$3f                                 ; $6502: $f8 $3f
    ret nz                                        ; $6504: $c0

    ld [hl], $e5                                  ; $6505: $36 $e5
    ld a, [hl]                                    ; $6507: $7e
    add c                                         ; $6508: $81
    ei                                            ; $6509: $fb
    rlca                                          ; $650a: $07
    cp a                                          ; $650b: $bf
    xor $1c                                       ; $650c: $ee $1c
    cp b                                          ; $650e: $b8
    ld [hl], b                                    ; $650f: $70
    db $fc                                        ; $6510: $fc
    rlca                                          ; $6511: $07
    cp $e1                                        ; $6512: $fe $e1
    cp $ff                                        ; $6514: $fe $ff
    dec de                                        ; $6516: $1b
    di                                            ; $6517: $f3
    db $e3                                        ; $6518: $e3
    add e                                         ; $6519: $83
    ld [bc], a                                    ; $651a: $02
    inc bc                                        ; $651b: $03
    ld [bc], a                                    ; $651c: $02
    inc bc                                        ; $651d: $03
    db $fd                                        ; $651e: $fd
    ld bc, $e515                                  ; $651f: $01 $15 $e5
    ldh a, [rIE]                                  ; $6522: $f0 $ff
    rra                                           ; $6524: $1f
    rrca                                          ; $6525: $0f
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    ei                                            ; $6528: $fb
    ret nz                                        ; $6529: $c0

    nop                                           ; $652a: $00
    dec b                                         ; $652b: $05
    rst $20                                       ; $652c: $e7
    add b                                         ; $652d: $80
    rst $38                                       ; $652e: $ff
    ld hl, sp+$7f                                 ; $652f: $f8 $7f
    ld c, $ff                                     ; $6531: $0e $ff
    rlca                                          ; $6533: $07
    ld bc, $07ff                                  ; $6534: $01 $ff $07
    cp $0f                                        ; $6537: $fe $0f
    ld hl, sp+$1f                                 ; $6539: $f8 $1f
    rst $18                                       ; $653b: $df
    ldh a, [$3f]                                  ; $653c: $f0 $3f
    ldh [$7f], a                                  ; $653e: $e0 $7f
    ret nz                                        ; $6540: $c0

    sbc $c1                                       ; $6541: $de $c1
    ldh [$c0], a                                  ; $6543: $e0 $c0
    ld e, a                                       ; $6545: $5f
    ret nz                                        ; $6546: $c0

    nop                                           ; $6547: $00
    ldh [rP1], a                                  ; $6548: $e0 $00
    ldh a, [$fe]                                  ; $654a: $f0 $fe
    ldh [$f8], a                                  ; $654c: $e0 $f8
    cp $e2                                        ; $654e: $fe $e2
    ei                                            ; $6550: $fb
    rlca                                          ; $6551: $07
    inc bc                                        ; $6552: $03
    ld l, [hl]                                    ; $6553: $6e
    db $eb                                        ; $6554: $eb
    db $fc                                        ; $6555: $fc
    rst $38                                       ; $6556: $ff
    cp $7f                                        ; $6557: $fe $7f
    jr nc, jr_07a_65a9                            ; $6559: $30 $4e

    ldh a, [$c0]                                  ; $655b: $f0 $c0

Call_07a_655d:
    inc c                                         ; $655d: $0c
    rlca                                          ; $655e: $07
    ld b, $a1                                     ; $655f: $06 $a1
    ldh [$a0], a                                  ; $6561: $e0 $a0
    rst $20                                       ; $6563: $e7
    nop                                           ; $6564: $00
    ld hl, sp-$40                                 ; $6565: $f8 $c0
    cp $fe                                        ; $6567: $fe $fe
    pop hl                                        ; $6569: $e1
    inc e                                         ; $656a: $1c
    rst $38                                       ; $656b: $ff
    ld sp, $63fe                                  ; $656c: $31 $fe $63
    db $fc                                        ; $656f: $fc
    jp $fcef                                      ; $6570: $c3 $ef $fc


    add e                                         ; $6573: $83
    db $fc                                        ; $6574: $fc
    add b                                         ; $6575: $80
    adc b                                         ; $6576: $88
    ret nz                                        ; $6577: $c0

    ld c, $fc                                     ; $6578: $0e $fc
    cp $fd                                        ; $657a: $fe $fd
    ld bc, $e168                                  ; $657c: $01 $68 $e1
    ret c                                         ; $657f: $d8

    jr nc, jr_07a_65f2                            ; $6580: $30 $70

    ldh [$c0], a                                  ; $6582: $e0 $c0
    add b                                         ; $6584: $80
    pop de                                        ; $6585: $d1
    add b                                         ; $6586: $80
    inc hl                                        ; $6587: $23
    ldh [$f9], a                                  ; $6588: $e0 $f9
    ldh [rNR33], a                                ; $658a: $e0 $1d
    ld [c], a                                     ; $658c: $e2
    ld bc, $e0a6                                  ; $658d: $01 $a6 $e0
    dec e                                         ; $6590: $1d
    ld c, $ff                                     ; $6591: $0e $ff
    ld [hl], a                                    ; $6593: $77
    jr c, @+$03                                   ; $6594: $38 $01

    ld bc, $0103                                  ; $6596: $01 $03 $01
    ld c, $07                                     ; $6599: $0e $07
    rst $18                                       ; $659b: $df

jr_07a_659c:
    dec sp                                        ; $659c: $3b
    inc e                                         ; $659d: $1c
    rst $28                                       ; $659e: $ef
    ldh a, [$7f]                                  ; $659f: $f0 $7f
    db $fd                                        ; $65a1: $fd
    jp nz, $e01f                                  ; $65a2: $c2 $1f $e0

    cp h                                          ; $65a5: $bc
    ld hl, sp-$1d                                 ; $65a6: $f8 $e3
    ld e, [hl]                                    ; $65a8: $5e

jr_07a_65a9:
    jp Jump_000_07fb                              ; $65a9: $c3 $fb $07


    inc bc                                        ; $65ac: $03
    ld bc, $e1de                                  ; $65ad: $01 $de $e1
    ld b, $6f                                     ; $65b0: $06 $6f
    inc bc                                        ; $65b2: $03
    inc c                                         ; $65b3: $0c
    rlca                                          ; $65b4: $07
    jr c, jr_07a_659c                             ; $65b5: $38 $e5

    ld [c], a                                     ; $65b7: $e2
    rst $38                                       ; $65b8: $ff
    add b                                         ; $65b9: $80
    ret c                                         ; $65ba: $d8

    pop hl                                        ; $65bb: $e1
    rst $38                                       ; $65bc: $ff
    db $fd                                        ; $65bd: $fd
    inc bc                                        ; $65be: $03
    ei                                            ; $65bf: $fb
    rlca                                          ; $65c0: $07
    rst $30                                       ; $65c1: $f7
    rrca                                          ; $65c2: $0f
    ld l, a                                       ; $65c3: $6f
    sbc a                                         ; $65c4: $9f
    rst $28                                       ; $65c5: $ef
    cp a                                          ; $65c6: $bf
    ret nz                                        ; $65c7: $c0

    db $fc                                        ; $65c8: $fc
    nop                                           ; $65c9: $00
    cp $e2                                        ; $65ca: $fe $e2
    ret nz                                        ; $65cc: $c0

    sbc $e0                                       ; $65cd: $de $e0
    cp a                                          ; $65cf: $bf
    cp $e0                                        ; $65d0: $fe $e0
    xor $f0                                       ; $65d2: $ee $f0
    ld a, [hl]                                    ; $65d4: $7e
    ldh a, [$c0]                                  ; $65d5: $f0 $c0
    jp $ff03                                      ; $65d7: $c3 $03 $ff


    inc bc                                        ; $65da: $03
    rlca                                          ; $65db: $07
    inc bc                                        ; $65dc: $03
    rlca                                          ; $65dd: $07

jr_07a_65de:
    rlca                                          ; $65de: $07
    rrca                                          ; $65df: $0f
    rlca                                          ; $65e0: $07
    rrca                                          ; $65e1: $0f
    jp hl                                         ; $65e2: $e9


    ld c, $c1                                     ; $65e3: $0e $c1
    ldh [$94], a                                  ; $65e5: $e0 $94
    ldh [$c0], a                                  ; $65e7: $e0 $c0
    jr z, @-$1e                                   ; $65e9: $28 $e0

    ldh a, [$e0]                                  ; $65eb: $f0 $e0

jr_07a_65ed:
    ld sp, hl                                     ; $65ed: $f9
    dec b                                         ; $65ee: $05
    ldh a, [$f0]                                  ; $65ef: $f0 $f0
    pop bc                                        ; $65f1: $c1

jr_07a_65f2:
    add b                                         ; $65f2: $80
    cp $e2                                        ; $65f3: $fe $e2
    inc de                                        ; $65f5: $13
    ldh [$fe], a                                  ; $65f6: $e0 $fe
    ld [c], a                                     ; $65f8: $e2
    ld [hl-], a                                   ; $65f9: $32
    rst $08                                       ; $65fa: $cf
    jr c, jr_07a_65de                             ; $65fb: $38 $e1

    or $ec                                        ; $65fd: $f6 $ec
    pop bc                                        ; $65ff: $c1
    ccf                                           ; $6600: $3f

jr_07a_6601:
    ldh a, [rBCPD]                                ; $6601: $f0 $69
    ret nz                                        ; $6603: $c0

    nop                                           ; $6604: $00
    inc a                                         ; $6605: $3c
    ldh a, [$7a]                                  ; $6606: $f0 $7a
    rst $38                                       ; $6608: $ff
    ret nz                                        ; $6609: $c0

    db $fd                                        ; $660a: $fd
    add b                                         ; $660b: $80
    ld a, [$ff80]                                 ; $660c: $fa $80 $ff
    ld b, b                                       ; $660f: $40
    rst $38                                       ; $6610: $ff
    db $fd                                        ; $6611: $fd
    jr nz, jr_07a_6629                            ; $6612: $20 $15

    ret nz                                        ; $6614: $c0

    ld b, $01                                     ; $6615: $06 $01
    nop                                           ; $6617: $00
    add a                                         ; $6618: $87
    inc bc                                        ; $6619: $03
    ld c, l                                       ; $661a: $4d
    rst $38                                       ; $661b: $ff
    ld b, $bb                                     ; $661c: $06 $bb
    inc e                                         ; $661e: $1c
    rst $28                                       ; $661f: $ef
    jr nc, jr_07a_6601                            ; $6620: $30 $df

    ldh [rOCPS], a                                ; $6622: $e0 $6a
    rst $28                                       ; $6624: $ef
    sub l                                         ; $6625: $95
    ld d, a                                       ; $6626: $57
    xor b                                         ; $6627: $a8
    rst $18                                       ; $6628: $df

jr_07a_6629:
    ld d, b                                       ; $6629: $50
    add sp, -$42                                  ; $662a: $e8 $be
    ld b, c                                       ; $662c: $41
    ei                                            ; $662d: $fb
    db $fd                                        ; $662e: $fd
    rlca                                          ; $662f: $07
    and [hl]                                      ; $6630: $a6
    and c                                         ; $6631: $a1
    db $fd                                        ; $6632: $fd
    inc bc                                        ; $6633: $03
    or $0f                                        ; $6634: $f6 $0f
    add sp, $1f                                   ; $6636: $e8 $1f
    ld e, l                                       ; $6638: $5d
    or b                                          ; $6639: $b0
    adc a                                         ; $663a: $8f
    and b                                         ; $663b: $a0
    nop                                           ; $663c: $00
    rst $38                                       ; $663d: $ff
    inc a                                         ; $663e: $3c
    cpl                                           ; $663f: $2f
    ldh [$c0], a                                  ; $6640: $e0 $c0
    sub d                                         ; $6642: $92
    ld [c], a                                     ; $6643: $e2
    cp a                                          ; $6644: $bf
    ldh [$7f], a                                  ; $6645: $e0 $7f
    rst $38                                       ; $6647: $ff
    ccf                                           ; $6648: $3f

jr_07a_6649:
    ldh a, [$30]                                  ; $6649: $f0 $30
    and c                                         ; $664b: $a1
    xor e                                         ; $664c: $ab
    add b                                         ; $664d: $80
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    ld a, a                                       ; $6650: $7f
    ret nz                                        ; $6651: $c0

    rst $18                                       ; $6652: $df

jr_07a_6653:
    ld h, b                                       ; $6653: $60
    xor a                                         ; $6654: $af
    ld [hl], b                                    ; $6655: $70
    rst $08                                       ; $6656: $cf
    rst $28                                       ; $6657: $ef
    jr nc, jr_07a_6649                            ; $6658: $30 $ef

    db $10                                        ; $665a: $10
    cp $bf                                        ; $665b: $fe $bf
    jp nz, Jump_07a_78b6                          ; $665d: $c2 $b6 $78

    rst $18                                       ; $6660: $df
    rst $38                                       ; $6661: $ff
    jr c, jr_07a_6653                             ; $6662: $38 $ef

    jr jr_07a_65ed                                ; $6664: $18 $87

    ld a, b                                       ; $6666: $78
    ld [hl], e                                    ; $6667: $73
    db $fc                                        ; $6668: $fc
    db $db                                        ; $6669: $db
    rst $38                                       ; $666a: $ff
    adc h                                         ; $666b: $8c
    adc a                                         ; $666c: $8f
    inc b                                         ; $666d: $04
    rra                                           ; $666e: $1f
    inc e                                         ; $666f: $1c
    db $ed                                        ; $6670: $ed
    ld e, $fb                                     ; $6671: $1e $fb
    rst $38                                       ; $6673: $ff
    inc e                                         ; $6674: $1c
    rst $30                                       ; $6675: $f7
    jr @-$1d                                      ; $6676: $18 $e1

    ld e, $ce                                     ; $6678: $1e $ce
    ccf                                           ; $667a: $3f
    db $db                                        ; $667b: $db
    rst $38                                       ; $667c: $ff
    ld sp, $20f1                                  ; $667d: $31 $f1 $20
    db $fc                                        ; $6680: $fc
    jr c, jr_07a_6686                             ; $6681: $38 $03

    ld [bc], a                                    ; $6683: $02
    rlca                                          ; $6684: $07
    rst $38                                       ; $6685: $ff

jr_07a_6686:
    ld [bc], a                                    ; $6686: $02
    ld c, $04                                     ; $6687: $0e $04
    inc c                                         ; $6689: $0c
    nop                                           ; $668a: $00
    ld [$8000], sp                                ; $668b: $08 $00 $80
    ei                                            ; $668e: $fb
    nop                                           ; $668f: $00
    add b                                         ; $6690: $80
    rst $38                                       ; $6691: $ff
    ldh [$e0], a                                  ; $6692: $e0 $e0
    ccf                                           ; $6694: $3f
    ld h, b                                       ; $6695: $60
    ccf                                           ; $6696: $3f
    jr nz, @-$1e                                  ; $6697: $20 $e0

    cp $e0                                        ; $6699: $fe $e0
    ld e, d                                       ; $669b: $5a
    and c                                         ; $669c: $a1
    cp $e1                                        ; $669d: $fe $e1
    xor l                                         ; $669f: $ad
    and [hl]                                      ; $66a0: $a6
    rra                                           ; $66a1: $1f
    ret nz                                        ; $66a2: $c0

    ld a, a                                       ; $66a3: $7f
    rst $00                                       ; $66a4: $c7
    jr c, @+$80                                   ; $66a5: $38 $7e

    ret nc                                        ; $66a7: $d0

    and e                                         ; $66a8: $a3
    ld bc, $07fe                                  ; $66a9: $01 $fe $07
    ld hl, sp+$1f                                 ; $66ac: $f8 $1f
    ldh [$0b], a                                  ; $66ae: $e0 $0b
    and d                                         ; $66b0: $a2
    sbc a                                         ; $66b1: $9f
    ld hl, sp+$0f                                 ; $66b2: $f8 $0f
    push af                                       ; $66b4: $f5
    ld a, [hl-]                                   ; $66b5: $3a
    ret nz                                        ; $66b6: $c0

    rst $28                                       ; $66b7: $ef
    ldh [$4e], a                                  ; $66b8: $e0 $4e
    jp $ff03                                      ; $66ba: $c3 $03 $ff


    rst $38                                       ; $66bd: $ff
    ld a, [hl+]                                   ; $66be: $2a
    push de                                       ; $66bf: $d5
    ld d, l                                       ; $66c0: $55
    xor d                                         ; $66c1: $aa
    ld bc, $47ff                                  ; $66c2: $01 $ff $47
    rst $38                                       ; $66c5: $ff
    cp [hl]                                       ; $66c6: $be
    dec e                                         ; $66c7: $1d
    cp $7e                                        ; $66c8: $fe $7e
    rst $38                                       ; $66ca: $ff
    cp a                                          ; $66cb: $bf
    rst $38                                       ; $66cc: $ff
    ld e, e                                       ; $66cd: $5b
    ld a, a                                       ; $66ce: $7f
    ei                                            ; $66cf: $fb
    call c, Call_07a_7a3f                         ; $66d0: $dc $3f $7a
    rst $20                                       ; $66d3: $e7
    db $fd                                        ; $66d4: $fd
    add e                                         ; $66d5: $83
    ld [hl], h                                    ; $66d6: $74
    ldh [$f2], a                                  ; $66d7: $e0 $f2
    rst $00                                       ; $66d9: $c7
    add b                                         ; $66da: $80
    cp $a4                                        ; $66db: $fe $a4
    ret nz                                        ; $66dd: $c0

    ld h, $c3                                     ; $66de: $26 $c3
    add c                                         ; $66e0: $81
    rst $38                                       ; $66e1: $ff
    add e                                         ; $66e2: $83
    cp $ff                                        ; $66e3: $fe $ff
    jp nz, $427e                                  ; $66e5: $c2 $7e $42

    ld a, [hl]                                    ; $66e8: $7e
    ld h, d                                       ; $66e9: $62
    ld a, $60                                     ; $66ea: $3e $60
    ret nz                                        ; $66ec: $c0

    rst $38                                       ; $66ed: $ff
    ret nz                                        ; $66ee: $c0

    add b                                         ; $66ef: $80
    sbc l                                         ; $66f0: $9d
    ld c, $39                                     ; $66f1: $0e $39
    ld e, $33                                     ; $66f3: $1e $33
    inc a                                         ; $66f5: $3c
    rst $38                                       ; $66f6: $ff
    dec sp                                        ; $66f7: $3b
    inc a                                         ; $66f8: $3c
    ld l, a                                       ; $66f9: $6f
    inc a                                         ; $66fa: $3c
    ld b, a                                       ; $66fb: $47
    ld a, h                                       ; $66fc: $7c
    ret nz                                        ; $66fd: $c0

    ld a, a                                       ; $66fe: $7f
    db $e3                                        ; $66ff: $e3
    ld b, b                                       ; $6700: $40
    ld a, a                                       ; $6701: $7f
    ld a, [hl]                                    ; $6702: $7e
    db $e3                                        ; $6703: $e3
    db $fc                                        ; $6704: $fc
    db $e3                                        ; $6705: $e3
    ld sp, hl                                     ; $6706: $f9
    and e                                         ; $6707: $a3
    ld a, a                                       ; $6708: $7f
    add c                                         ; $6709: $81
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    add c                                         ; $670c: $81
    cp [hl]                                       ; $670d: $be
    pop bc                                        ; $670e: $c1
    rst $38                                       ; $670f: $ff
    ret nz                                        ; $6710: $c0

    rst $18                                       ; $6711: $df
    ldh [$3f], a                                  ; $6712: $e0 $3f
    rst $38                                       ; $6714: $ff
    inc a                                         ; $6715: $3c
    ccf                                           ; $6716: $3f
    inc [hl]                                      ; $6717: $34
    scf                                           ; $6718: $37
    inc [hl]                                      ; $6719: $34
    dec a                                         ; $671a: $3d
    ld [hl], $b9                                  ; $671b: $36 $b9
    rst $38                                       ; $671d: $ff
    ccf                                           ; $671e: $3f
    ld a, [c]                                     ; $671f: $f2
    rst $38                                       ; $6720: $ff
    db $e3                                        ; $6721: $e3
    ld e, $f5                                     ; $6722: $1e $f5
    ld c, $fc                                     ; $6724: $0e $fc
    rst $38                                       ; $6726: $ff
    inc a                                         ; $6727: $3c
    db $fc                                        ; $6728: $fc
    inc l                                         ; $6729: $2c
    db $ec                                        ; $672a: $ec
    inc l                                         ; $672b: $2c
    db $fc                                        ; $672c: $fc
    inc l                                         ; $672d: $2c
    rst $18                                       ; $672e: $df
    rst $20                                       ; $672f: $e7
    cp h                                          ; $6730: $bc
    ld l, a                                       ; $6731: $6f
    rst $18                                       ; $6732: $df
    ld b, $e1                                     ; $6733: $06 $e1
    inc a                                         ; $6735: $3c
    pop hl                                        ; $6736: $e1
    add b                                         ; $6737: $80
    add b                                         ; $6738: $80
    add c                                         ; $6739: $81
    rst $18                                       ; $673a: $df
    add b                                         ; $673b: $80
    add c                                         ; $673c: $81
    add c                                         ; $673d: $81
    add e                                         ; $673e: $83
    ld bc, $c14a                                  ; $673f: $01 $4a $c1
    jr jr_07a_6753                                ; $6742: $18 $0f

    rst $38                                       ; $6744: $ff
    adc e                                         ; $6745: $8b
    rrca                                          ; $6746: $0f
    adc [hl]                                      ; $6747: $8e
    adc h                                         ; $6748: $8c
    adc h                                         ; $6749: $8c
    adc b                                         ; $674a: $88
    adc a                                         ; $674b: $8f
    adc b                                         ; $674c: $88
    rst $38                                       ; $674d: $ff
    adc a                                         ; $674e: $8f
    add l                                         ; $674f: $85
    add a                                         ; $6750: $87
    add a                                         ; $6751: $87
    add a                                         ; $6752: $87

jr_07a_6753:
    ld b, $e0                                     ; $6753: $06 $e0
    rst $38                                       ; $6755: $ff
    ei                                            ; $6756: $fb
    cp b                                          ; $6757: $b8
    rra                                           ; $6758: $1f
    sub h                                         ; $6759: $94
    and c                                         ; $675a: $a1
    ld a, [c]                                     ; $675b: $f2
    di                                            ; $675c: $f3
    ld a, [c]                                     ; $675d: $f2
    sub e                                         ; $675e: $93
    ld a, [c]                                     ; $675f: $f2
    rst $10                                       ; $6760: $d7
    inc bc                                        ; $6761: $03
    jp nz, Jump_07a_6103                          ; $6762: $c2 $03 $61

    adc e                                         ; $6765: $8b
    inc bc                                        ; $6766: $03
    or $e8                                        ; $6767: $f6 $e8
    rrca                                          ; $6769: $0f
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    ld a, a                                       ; $676c: $7f
    db $fd                                        ; $676d: $fd
    rst $18                                       ; $676e: $df
    rst $28                                       ; $676f: $ef
    ld b, $ff                                     ; $6770: $06 $ff
    add hl, de                                    ; $6772: $19
    rst $38                                       ; $6773: $ff
    cp a                                          ; $6774: $bf
    dec hl                                        ; $6775: $2b
    rst $38                                       ; $6776: $ff
    push de                                       ; $6777: $d5
    rst $28                                       ; $6778: $ef
    ld a, [hl]                                    ; $6779: $7e
    add c                                         ; $677a: $81
    inc e                                         ; $677b: $1c
    add h                                         ; $677c: $84
    db $db                                        ; $677d: $db
    ei                                            ; $677e: $fb
    rst $38                                       ; $677f: $ff
    ld e, a                                       ; $6780: $5f
    cp $e0                                        ; $6781: $fe $e0
    ld l, $9f                                     ; $6783: $2e $9f
    sub c                                         ; $6785: $91
    adc $8e                                       ; $6786: $ce $8e
    ccf                                           ; $6788: $3f
    ldh [rLCDC], a                                ; $6789: $e0 $40
    ld sp, hl                                     ; $678b: $f9
    ld sp, $8070                                  ; $678c: $31 $70 $80
    ld a, b                                       ; $678f: $78
    and b                                         ; $6790: $a0
    cp $e7                                        ; $6791: $fe $e7
    rst $38                                       ; $6793: $ff
    nop                                           ; $6794: $00
    ld h, $3c                                     ; $6795: $26 $3c
    inc h                                         ; $6797: $24
    inc a                                         ; $6798: $3c
    inc l                                         ; $6799: $2c
    jr c, @+$2a                                   ; $679a: $38 $28

    rst $38                                       ; $679c: $ff
    jr c, jr_07a_67d7                             ; $679d: $38 $38

    jr nc, jr_07a_67d1                            ; $679f: $30 $30

    nop                                           ; $67a1: $00
    rlca                                          ; $67a2: $07
    rlca                                          ; $67a3: $07
    rlca                                          ; $67a4: $07
    rst $38                                       ; $67a5: $ff
    inc bc                                        ; $67a6: $03
    ld a, [hl]                                    ; $67a7: $7e
    ld b, h                                       ; $67a8: $44
    ld a, [hl]                                    ; $67a9: $7e
    ld b, b                                       ; $67aa: $40
    db $fc                                        ; $67ab: $fc
    ld b, b                                       ; $67ac: $40
    pop af                                        ; $67ad: $f1
    db $eb                                        ; $67ae: $eb
    ld b, b                                       ; $67af: $40
    jp $a08c                                      ; $67b0: $c3 $8c $a0


    sbc h                                         ; $67b3: $9c
    ld d, d                                       ; $67b4: $52
    add b                                         ; $67b5: $80
    ld h, b                                       ; $67b6: $60
    ccf                                           ; $67b7: $3f
    ld b, b                                       ; $67b8: $40
    sbc h                                         ; $67b9: $9c
    rst $20                                       ; $67ba: $e7
    add b                                         ; $67bb: $80
    ld l, l                                       ; $67bc: $6d
    and a                                         ; $67bd: $a7
    ld a, a                                       ; $67be: $7f
    ldh [rIE], a                                  ; $67bf: $e0 $ff
    ld d, b                                       ; $67c1: $50
    call nz, Call_07a_63bc                        ; $67c2: $c4 $bc $63
    db $ec                                        ; $67c5: $ec
    rst $38                                       ; $67c6: $ff
    ld e, $de                                     ; $67c7: $1e $de
    inc [hl]                                      ; $67c9: $34
    or $20                                        ; $67ca: $f6 $20
    db $fd                                        ; $67cc: $fd
    ld l, $c3                                     ; $67cd: $2e $c3
    rst $38                                       ; $67cf: $ff
    ccf                                           ; $67d0: $3f

jr_07a_67d1:
    db $fd                                        ; $67d1: $fd
    nop                                           ; $67d2: $00
    call c, Call_07a_7e38                         ; $67d3: $dc $38 $7e
    db $fc                                        ; $67d6: $fc

jr_07a_67d7:
    jr c, @+$01                                   ; $67d7: $38 $ff

    jr nc, jr_07a_6817                            ; $67d9: $30 $3c

    jr z, @+$2e                                   ; $67db: $28 $2c

    inc b                                         ; $67dd: $04
    ld a, h                                       ; $67de: $7c
    inc [hl]                                      ; $67df: $34
    db $e4                                        ; $67e0: $e4
    ld a, [hl]                                    ; $67e1: $7e
    jr @-$5e                                      ; $67e2: $18 $a0

    inc a                                         ; $67e4: $3c
    jr jr_07a_6866                                ; $67e5: $18 $7f

    ld a, $07                                     ; $67e7: $3e $07
    ld b, $52                                     ; $67e9: $06 $52
    jp Jump_000_28fa                              ; $67eb: $c3 $fa $28


    add l                                         ; $67ee: $85
    rlca                                          ; $67ef: $07
    cp h                                          ; $67f0: $bc
    ld h, b                                       ; $67f1: $60
    inc b                                         ; $67f2: $04

jr_07a_67f3:
    rlca                                          ; $67f3: $07
    dec b                                         ; $67f4: $05
    ld b, $07                                     ; $67f5: $06 $07
    rst $30                                       ; $67f7: $f7
    inc b                                         ; $67f8: $04
    ld b, $04                                     ; $67f9: $06 $04
    rst $38                                       ; $67fb: $ff
    pop hl                                        ; $67fc: $e1
    jp nz, $c683                                  ; $67fd: $c2 $83 $c6

    jp $c4ff                                      ; $6800: $c3 $ff $c4


    ld b, a                                       ; $6803: $47

jr_07a_6804:
    call z, Call_07a_4847                         ; $6804: $cc $47 $48
    rrca                                          ; $6807: $0f
    jr jr_07a_6819                                ; $6808: $18 $0f

    sbc a                                         ; $680a: $9f
    jr nc, jr_07a_682c                            ; $680b: $30 $1f

    ld h, b                                       ; $680d: $60
    ccf                                           ; $680e: $3f
    db $fd                                        ; $680f: $fd
    ld e, b                                       ; $6810: $58
    call nz, Call_07a_655d                        ; $6811: $c4 $5d $65
    rst $28                                       ; $6814: $ef
    rst $38                                       ; $6815: $ff

jr_07a_6816:
    add hl, hl                                    ; $6816: $29

jr_07a_6817:
    rst $20                                       ; $6817: $e7
    and a                                         ; $6818: $a7

jr_07a_6819:
    pop af                                        ; $6819: $f1
    sub c                                         ; $681a: $91
    ld e, a                                       ; $681b: $5f
    adc $60                                       ; $681c: $ce $60
    rst $38                                       ; $681e: $ff
    ret nz                                        ; $681f: $c0

    jr nz, @-$1e                                  ; $6820: $20 $e0

    jr nc, jr_07a_6804                            ; $6822: $30 $e0

    jr jr_07a_6816                                ; $6824: $18 $f0

    cp a                                          ; $6826: $bf
    rst $38                                       ; $6827: $ff
    ld b, b                                       ; $6828: $40
    rst $18                                       ; $6829: $df
    ld h, b                                       ; $682a: $60
    and b                                         ; $682b: $a0

jr_07a_682c:
    ld h, b                                       ; $682c: $60
    ldh [rNR41], a                                ; $682d: $e0 $20
    ldh [rIE], a                                  ; $682f: $e0 $ff
    jr nz, jr_07a_67f3                            ; $6831: $20 $c0

    ld b, b                                       ; $6833: $40
    ldh [rLCDC], a                                ; $6834: $e0 $40
    or a                                          ; $6836: $b7
    ld a, b                                       ; $6837: $78
    rst $28                                       ; $6838: $ef
    reti                                          ; $6839: $d9


    ld e, $b0                                     ; $683a: $1e $b0
    add e                                         ; $683c: $83
    and b                                         ; $683d: $a0
    and $02                                       ; $683e: $e6 $02
    rlca                                          ; $6840: $07
    and h                                         ; $6841: $a4
    ldh [$0c], a                                  ; $6842: $e0 $0c
    inc b                                         ; $6844: $04
    rst $38                                       ; $6845: $ff
    inc c                                         ; $6846: $0c
    inc c                                         ; $6847: $0c
    inc e                                         ; $6848: $1c
    ld [$1818], sp                                ; $6849: $08 $18 $18
    jr c, @+$12                                   ; $684c: $38 $10

    cp $12                                        ; $684e: $fe $12
    and c                                         ; $6850: $a1
    ldh [rIE], a                                  ; $6851: $e0 $ff
    ld hl, sp-$61                                 ; $6853: $f8 $9f
    rst $08                                       ; $6855: $cf
    ld b, a                                       ; $6856: $47
    ld b, a                                       ; $6857: $47
    rst $18                                       ; $6858: $df
    ld b, d                                       ; $6859: $42
    ld h, e                                       ; $685a: $63
    ld b, c                                       ; $685b: $41
    ld h, c                                       ; $685c: $61
    jr nz, @+$07                                  ; $685d: $20 $05

    ld h, e                                       ; $685f: $63
    ccf                                           ; $6860: $3f
    rst $38                                       ; $6861: $ff
    db $fd                                        ; $6862: $fd
    ldh [$f5], a                                  ; $6863: $e0 $f5
    ld h, b                                       ; $6865: $60

jr_07a_6866:
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    sub b                                         ; $6868: $90
    add b                                         ; $6869: $80
    db $fd                                        ; $686a: $fd
    inc bc                                        ; $686b: $03
    rst $38                                       ; $686c: $ff
    rst $30                                       ; $686d: $f7
    rrca                                          ; $686e: $0f
    db $dd                                        ; $686f: $dd
    ld a, $f7                                     ; $6870: $3e $f7
    ld a, b                                       ; $6872: $78
    rst $28                                       ; $6873: $ef
    ld [hl], b                                    ; $6874: $70
    rst $38                                       ; $6875: $ff
    di                                            ; $6876: $f3
    inc c                                         ; $6877: $0c
    db $db                                        ; $6878: $db
    inc a                                         ; $6879: $3c
    rst $28                                       ; $687a: $ef

jr_07a_687b:
    ldh a, [$e7]                                  ; $687b: $f0 $e7
    jp Jump_07a_60f7                              ; $687d: $c3 $f7 $60


    add b                                         ; $6880: $80
    ldh a, [$29]                                  ; $6881: $f0 $29
    ld h, c                                       ; $6883: $61
    rrca                                          ; $6884: $0f
    cp $1c                                        ; $6885: $fe $1c
    ld hl, sp-$41                                 ; $6887: $f8 $bf
    jr nc, jr_07a_687b                            ; $6889: $30 $f0

    nop                                           ; $688b: $00
    rst $20                                       ; $688c: $e7
    jp Jump_07a_6d01                              ; $688d: $c3 $01 $6d


    ld h, b                                       ; $6890: $60
    ld hl, sp+$7f                                 ; $6891: $f8 $7f
    ldh [$fc], a                                  ; $6893: $e0 $fc
    ldh a, [$7e]                                  ; $6895: $f0 $7e
    jr c, jr_07a_68b7                             ; $6897: $38 $1e

    inc c                                         ; $6899: $0c
    cp [hl]                                       ; $689a: $be
    ld h, b                                       ; $689b: $60
    rst $38                                       ; $689c: $ff
    add b                                         ; $689d: $80
    ldh a, [$e0]                                  ; $689e: $f0 $e0
    ld a, h                                       ; $68a0: $7c
    jr c, jr_07a_68c1                             ; $68a1: $38 $1e

    ld c, $0e                                     ; $68a3: $0e $0e
    sub a                                         ; $68a5: $97
    ld b, $18                                     ; $68a6: $06 $18
    nop                                           ; $68a8: $00
    ld h, a                                       ; $68a9: $67
    ret nz                                        ; $68aa: $c0

    inc bc                                        ; $68ab: $03
    db $ed                                        ; $68ac: $ed
    ld b, b                                       ; $68ad: $40
    ld [$4c40], a                                 ; $68ae: $ea $40 $4c
    rst $38                                       ; $68b1: $ff
    rlca                                          ; $68b2: $07
    ld c, b                                       ; $68b3: $48
    ld c, a                                       ; $68b4: $4f
    ret z                                         ; $68b5: $c8

    ld c, a                                       ; $68b6: $4f

jr_07a_68b7:
    ret c                                         ; $68b7: $d8

    rst $08                                       ; $68b8: $cf
    ret nc                                        ; $68b9: $d0

    ccf                                           ; $68ba: $3f
    sbc a                                         ; $68bb: $9f
    inc c                                         ; $68bc: $0c
    ld hl, sp+$06                                 ; $68bd: $f8 $06
    db $fc                                        ; $68bf: $fc
    inc bc                                        ; $68c0: $03

jr_07a_68c1:
    pop bc                                        ; $68c1: $c1
    and e                                         ; $68c2: $a3

jr_07a_68c3:
    sbc e                                         ; $68c3: $9b
    ld b, d                                       ; $68c4: $42
    rst $10                                       ; $68c5: $d7
    inc e                                         ; $68c6: $1c
    ld [$2d04], sp                                ; $68c7: $08 $04 $2d
    ld h, b                                       ; $68ca: $60
    add b                                         ; $68cb: $80
    ld a, [hl]                                    ; $68cc: $7e
    add b                                         ; $68cd: $80
    ld h, b                                       ; $68ce: $60
    ret nz                                        ; $68cf: $c0

    rst $38                                       ; $68d0: $ff
    jr c, jr_07a_68c3                             ; $68d1: $38 $f0

    inc c                                         ; $68d3: $0c
    ld hl, sp-$7d                                 ; $68d4: $f8 $83
    nop                                           ; $68d6: $00
    sbc a                                         ; $68d7: $9f
    ld c, $93                                     ; $68d8: $0e $93
    ld hl, sp+$30                                 ; $68da: $f8 $30
    or b                                          ; $68dc: $b0
    ldh [rOBP0], a                                ; $68dd: $e0 $48
    add b                                         ; $68df: $80
    cp $9e                                        ; $68e0: $fe $9e
    and b                                         ; $68e2: $a0
    db $10                                        ; $68e3: $10
    ld h, e                                       ; $68e4: $63
    ld bc, $00ff                                  ; $68e5: $01 $ff $00
    inc bc                                        ; $68e8: $03
    ld bc, $0307                                  ; $68e9: $01 $07 $03
    rrca                                          ; $68ec: $0f
    rlca                                          ; $68ed: $07
    rra                                           ; $68ee: $1f
    rst $38                                       ; $68ef: $ff
    inc c                                         ; $68f0: $0c
    ld [hl], b                                    ; $68f1: $70
    jr nc, jr_07a_6954                            ; $68f2: $30 $60

    ld [hl], b                                    ; $68f4: $70
    ret nc                                        ; $68f5: $d0

    ld h, b                                       ; $68f6: $60
    ret c                                         ; $68f7: $d8

    rst $38                                       ; $68f8: $ff
    ldh [$9c], a                                  ; $68f9: $e0 $9c
    ldh [$0e], a                                  ; $68fb: $e0 $0e
    ldh a, [$e7]                                  ; $68fd: $f0 $e7

jr_07a_68ff:
    ld hl, sp-$01                                 ; $68ff: $f8 $ff
    rst $38                                       ; $6901: $ff
    rra                                           ; $6902: $1f
    jr nz, jr_07a_6925                            ; $6903: $20 $20

    jr nc, jr_07a_6927                            ; $6905: $30 $20

    jr nc, jr_07a_6919                            ; $6907: $30 $10

    db $10                                        ; $6909: $10
    rst $38                                       ; $690a: $ff

jr_07a_690b:
    db $10                                        ; $690b: $10
    jr jr_07a_691e                                ; $690c: $18 $10

    ld e, $1c                                     ; $690e: $1e $1c
    ccf                                           ; $6910: $3f
    inc de                                        ; $6911: $13
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    and b                                         ; $6914: $a0
    cp $51                                        ; $6915: $fe $51
    ld e, a                                       ; $6917: $5f
    ld [hl], c                                    ; $6918: $71

jr_07a_6919:
    ld a, l                                       ; $6919: $7d
    inc sp                                        ; $691a: $33
    scf                                           ; $691b: $37
    rst $38                                       ; $691c: $ff
    dec sp                                        ; $691d: $3b

jr_07a_691e:
    dec sp                                        ; $691e: $3b
    ld a, $2b                                     ; $691f: $3e $2b
    ld a, $ef                                     ; $6921: $3e $ef
    ld a, $ef                                     ; $6923: $3e $ef

jr_07a_6925:
    db $fd                                        ; $6925: $fd
    db $fc                                        ; $6926: $fc

jr_07a_6927:
    cp $45                                        ; $6927: $fe $45
    ld a, a                                       ; $6929: $7f
    add b                                         ; $692a: $80
    cp a                                          ; $692b: $bf
    ret nz                                        ; $692c: $c0

    ld e, a                                       ; $692d: $5f
    ldh [$7b], a                                  ; $692e: $e0 $7b
    scf                                           ; $6930: $37
    ld hl, sp+$46                                 ; $6931: $f8 $46
    ld h, e                                       ; $6933: $63
    ret z                                         ; $6934: $c8

    jr nc, jr_07a_690b                            ; $6935: $30 $d4

    jr c, jr_07a_68ff                             ; $6937: $38 $c6

    add b                                         ; $6939: $80
    db $fc                                        ; $693a: $fc
    ld [hl], d                                    ; $693b: $72
    add b                                         ; $693c: $80
    or b                                          ; $693d: $b0
    ld b, e                                       ; $693e: $43
    inc c                                         ; $693f: $0c
    nop                                           ; $6940: $00
    inc e                                         ; $6941: $1c
    ld [$30f8], sp                                ; $6942: $08 $f8 $30
    ld hl, sp+$24                                 ; $6945: $f8 $24
    ld h, c                                       ; $6947: $61
    ld [hl-], a                                   ; $6948: $32
    pop hl                                        ; $6949: $e1
    call c, Call_000_0164                         ; $694a: $dc $64 $01
    rlca                                          ; $694d: $07
    ld [bc], a                                    ; $694e: $02
    ld e, $0c                                     ; $694f: $1e $0c
    rst $38                                       ; $6951: $ff
    ldh a, [$1f]                                  ; $6952: $f0 $1f

jr_07a_6954:
    cp $3f                                        ; $6954: $fe $3f
    di                                            ; $6956: $f3
    ld sp, $50f0                                  ; $6957: $31 $f0 $50
    rst $08                                       ; $695a: $cf
    ldh a, [$90]                                  ; $695b: $f0 $90
    ldh a, [rNR10]                                ; $695d: $f0 $10
    cp $e1                                        ; $695f: $fe $e1
    ld [hl], d                                    ; $6961: $72
    ld b, e                                       ; $6962: $43
    ld a, b                                       ; $6963: $78
    ccf                                           ; $6964: $3f
    ld a, c                                       ; $6965: $79
    ld c, $86                                     ; $6966: $0e $86
    ld h, h                                       ; $6968: $64
    ret nc                                        ; $6969: $d0

    ld c, c                                       ; $696a: $49
    pop hl                                        ; $696b: $e1
    ld a, a                                       ; $696c: $7f
    ccf                                           ; $696d: $3f
    ld e, $c5                                     ; $696e: $1e $c5
    daa                                           ; $6970: $27
    ld [c], a                                     ; $6971: $e2
    cp h                                          ; $6972: $bc
    jp Jump_000_1407                              ; $6973: $c3 $07 $14


    add sp, -$04                                  ; $6976: $e8 $fc
    ld b, c                                       ; $6978: $41
    inc d                                         ; $6979: $14
    pop hl                                        ; $697a: $e1
    pop af                                        ; $697b: $f1
    pop hl                                        ; $697c: $e1
    rra                                           ; $697d: $1f
    db $fc                                        ; $697e: $fc
    jp Jump_000_0ec0                              ; $697f: $c3 $c0 $0e


    ld h, e                                       ; $6982: $63
    ccf                                           ; $6983: $3f

jr_07a_6984:
    jr jr_07a_6984                                ; $6984: $18 $fe

    ld [hl], b                                    ; $6986: $70
    db $fc                                        ; $6987: $fc
    ldh a, [rIE]                                  ; $6988: $f0 $ff
    ld c, $fc                                     ; $698a: $0e $fc
    db $e3                                        ; $698c: $e3
    rra                                           ; $698d: $1f
    ld hl, sp+$07                                 ; $698e: $f8 $07
    or $0f                                        ; $6990: $f6 $0f
    push af                                       ; $6992: $f5
    db $fd                                        ; $6993: $fd
    or d                                          ; $6994: $b2
    ld b, [hl]                                    ; $6995: $46
    add b                                         ; $6996: $80
    or $40                                        ; $6997: $f6 $40
    add hl, sp                                    ; $6999: $39
    ldh a, [$8f]                                  ; $699a: $f0 $8f
    rst $38                                       ; $699c: $ff
    ei                                            ; $699d: $fb
    rst $38                                       ; $699e: $ff
    ld b, b                                       ; $699f: $40
    cp a                                          ; $69a0: $bf
    add b                                         ; $69a1: $80
    ld b, b                                       ; $69a2: $40
    rst $38                                       ; $69a3: $ff
    ld h, e                                       ; $69a4: $63
    cp [hl]                                       ; $69a5: $be
    db $e4                                        ; $69a6: $e4
    rst $38                                       ; $69a7: $ff
    cp [hl]                                       ; $69a8: $be
    push hl                                       ; $69a9: $e5
    sbc h                                         ; $69aa: $9c
    rst $30                                       ; $69ab: $f7
    sbc a                                         ; $69ac: $9f

jr_07a_69ad:
    di                                            ; $69ad: $f3
    rst $08                                       ; $69ae: $cf
    inc a                                         ; $69af: $3c
    rst $38                                       ; $69b0: $ff
    rst $28                                       ; $69b1: $ef
    inc e                                         ; $69b2: $1c
    db $fd                                        ; $69b3: $fd
    ld c, $f5                                     ; $69b4: $0e $f5
    adc [hl]                                      ; $69b6: $8e
    ld a, l                                       ; $69b7: $7d
    ld b, [hl]                                    ; $69b8: $46
    rst $38                                       ; $69b9: $ff
    ld a, h                                       ; $69ba: $7c
    ld b, a                                       ; $69bb: $47
    db $fc                                        ; $69bc: $fc
    ld b, a                                       ; $69bd: $47
    ld a, [$0d87]                                 ; $69be: $fa $87 $0d
    cp $ff                                        ; $69c1: $fe $ff
    inc bc                                        ; $69c3: $03
    rst $38                                       ; $69c4: $ff
    rra                                           ; $69c5: $1f
    ldh [$3c], a                                  ; $69c6: $e0 $3c
    ret nz                                        ; $69c8: $c0

    jr c, @-$3e                                   ; $69c9: $38 $c0

    rst $20                                       ; $69cb: $e7
    ld a, b                                       ; $69cc: $78
    add b                                         ; $69cd: $80
    ld [hl], b                                    ; $69ce: $70
    cp $e0                                        ; $69cf: $fe $e0
    ld d, $e1                                     ; $69d1: $16 $e1
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $28                                       ; $69d5: $ef
    rst $38                                       ; $69d6: $ff
    ld [hl], b                                    ; $69d7: $70
    ld l, a                                       ; $69d8: $6f
    jr nc, @+$41                                  ; $69d9: $30 $3f

jr_07a_69db:
    db $10                                        ; $69db: $10
    rla                                           ; $69dc: $17
    jr @+$1d                                      ; $69dd: $18 $1b

    rrca                                          ; $69df: $0f
    inc c                                         ; $69e0: $0c
    ret nz                                        ; $69e1: $c0

    nop                                           ; $69e2: $00
    pop hl                                        ; $69e3: $e1
    adc e                                         ; $69e4: $8b
    jr nz, jr_07a_69db                            ; $69e5: $20 $f4

    ld h, b                                       ; $69e7: $60
    inc h                                         ; $69e8: $24
    ld b, b                                       ; $69e9: $40
    cp $e1                                        ; $69ea: $fe $e1

jr_07a_69ec:
    ld a, a                                       ; $69ec: $7f
    ld a, [hl]                                    ; $69ed: $7e
    ld [hl-], a                                   ; $69ee: $32
    ld [c], a                                     ; $69ef: $e2
    jp nz, $0282                                  ; $69f0: $c2 $82 $02

    ld [bc], a                                    ; $69f3: $02
    inc b                                         ; $69f4: $04
    ld b, c                                       ; $69f5: $41
    cp $fc                                        ; $69f6: $fe $fc
    ld [c], a                                     ; $69f8: $e2
    ld hl, sp+$10                                 ; $69f9: $f8 $10
    ld hl, sp+$18                                 ; $69fb: $f8 $18
    ret c                                         ; $69fd: $d8

    jr c, jr_07a_69ec                             ; $69fe: $38 $ec

    rst $38                                       ; $6a00: $ff
    jr c, @-$0a                                   ; $6a01: $38 $f4

    inc l                                         ; $6a03: $2c
    cp $24                                        ; $6a04: $fe $24
    ld a, [$ff26]                                 ; $6a06: $fa $26 $ff
    pop af                                        ; $6a09: $f1
    ld [hl+], a                                   ; $6a0a: $22
    ld c, h                                       ; $6a0b: $4c
    ld b, b                                       ; $6a0c: $40
    cp [hl]                                       ; $6a0d: $be
    ld h, b                                       ; $6a0e: $60
    add b                                         ; $6a0f: $80
    and c                                         ; $6a10: $a1
    rlca                                          ; $6a11: $07
    inc b                                         ; $6a12: $04
    ccf                                           ; $6a13: $3f
    inc b                                         ; $6a14: $04
    rst $38                                       ; $6a15: $ff
    push hl                                       ; $6a16: $e5
    rra                                           ; $6a17: $1f
    inc e                                         ; $6a18: $1c
    ld [$1038], sp                                ; $6a19: $08 $38 $10
    ld [hl], b                                    ; $6a1c: $70
    jr nz, @+$01                                  ; $6a1d: $20 $ff

    ld [hl], b                                    ; $6a1f: $70
    nop                                           ; $6a20: $00
    ld a, h                                       ; $6a21: $7c
    nop                                           ; $6a22: $00
    ld c, [hl]                                    ; $6a23: $4e
    jr nc, jr_07a_69ad                            ; $6a24: $30 $87

    ld a, b                                       ; $6a26: $78
    ld sp, hl                                     ; $6a27: $f9
    sbc a                                         ; $6a28: $9f
    rrca                                          ; $6a29: $0f
    add b                                         ; $6a2a: $80
    ld a, [hl]                                    ; $6a2b: $7e
    add hl, hl                                    ; $6a2c: $29
    add b                                         ; $6a2d: $80
    nop                                           ; $6a2e: $00
    inc bc                                        ; $6a2f: $03
    cp $06                                        ; $6a30: $fe $06
    rst $38                                       ; $6a32: $ff
    db $fc                                        ; $6a33: $fc
    ld b, $fc                                     ; $6a34: $06 $fc
    inc c                                         ; $6a36: $0c
    ld hl, sp+$0a                                 ; $6a37: $f8 $0a
    ld hl, sp+$1c                                 ; $6a39: $f8 $1c
    rst $38                                       ; $6a3b: $ff
    ldh a, [rNR30]                                ; $6a3c: $f0 $1a
    ldh a, [rNR33]                                ; $6a3e: $f0 $1d
    ldh a, [$fe]                                  ; $6a40: $f0 $fe
    ld bc, $ebf3                                  ; $6a42: $01 $f3 $eb
    rrca                                          ; $6a45: $0f
    db $fc                                        ; $6a46: $fc
    adc c                                         ; $6a47: $89
    add a                                         ; $6a48: $87
    nop                                           ; $6a49: $00
    call nc, $e7c0                                ; $6a4a: $d4 $c0 $e7
    cp [hl]                                       ; $6a4d: $be
    pop af                                        ; $6a4e: $f1
    rst $28                                       ; $6a4f: $ef
    ld a, a                                       ; $6a50: $7f
    ld hl, sp-$25                                 ; $6a51: $f8 $db
    inc a                                         ; $6a53: $3c
    sub b                                         ; $6a54: $90
    pop bc                                        ; $6a55: $c1
    cp $01                                        ; $6a56: $fe $01
    cpl                                           ; $6a58: $2f
    rst $38                                       ; $6a59: $ff
    ret c                                         ; $6a5a: $d8

    rst $38                                       ; $6a5b: $ff
    ld [$887f], sp                                ; $6a5c: $08 $7f $88
    scf                                           ; $6a5f: $37
    call z, $ffdf                                 ; $6a60: $cc $df $ff
    inc h                                         ; $6a63: $24
    rst $38                                       ; $6a64: $ff
    inc b                                         ; $6a65: $04
    ld a, a                                       ; $6a66: $7f
    add h                                         ; $6a67: $84
    db $db                                        ; $6a68: $db
    and $fe                                       ; $6a69: $e6 $fe
    rst $38                                       ; $6a6b: $ff
    inc bc                                        ; $6a6c: $03
    db $fd                                        ; $6a6d: $fd
    inc bc                                        ; $6a6e: $03
    rst $38                                       ; $6a6f: $ff
    ld [hl], c                                    ; $6a70: $71
    rst $08                                       ; $6a71: $cf
    adc c                                         ; $6a72: $89
    adc $ff                                       ; $6a73: $ce $ff
    xor c                                         ; $6a75: $a9
    sbc a                                         ; $6a76: $9f
    add sp, -$01                                  ; $6a77: $e8 $ff
    ld [hl], b                                    ; $6a79: $70
    rst $38                                       ; $6a7a: $ff
    nop                                           ; $6a7b: $00
    rrca                                          ; $6a7c: $0f
    rst $38                                       ; $6a7d: $ff
    ldh a, [$cf]                                  ; $6a7e: $f0 $cf
    ldh a, [rPCM34]                               ; $6a80: $f0 $77
    jr c, @+$1f                                   ; $6a82: $38 $1d

    ld c, $06                                     ; $6a84: $0e $06
    ld a, [hl]                                    ; $6a86: $7e
    call nz, $0e20                                ; $6a87: $c4 $20 $0e
    ld bc, $0738                                  ; $6a8a: $01 $38 $07
    dec c                                         ; $6a8d: $0d
    ld b, $1d                                     ; $6a8e: $06 $1d
    ld b, b                                       ; $6a90: $40
    call c, $c4ee                                 ; $6a91: $dc $ee $c4
    ld e, d                                       ; $6a94: $5a
    ld b, b                                       ; $6a95: $40
    ld b, b                                       ; $6a96: $40
    ldh [rP1], a                                  ; $6a97: $e0 $00
    add b                                         ; $6a99: $80
    and b                                         ; $6a9a: $a0
    ret nz                                        ; $6a9b: $c0

    ld a, b                                       ; $6a9c: $78
    ccf                                           ; $6a9d: $3f
    jr nz, jr_07a_6adc                            ; $6a9e: $20 $3c

    jr jr_07a_6ab0                                ; $6aa0: $18 $0e

    inc b                                         ; $6aa2: $04
    rlca                                          ; $6aa3: $07
    ld b, b                                       ; $6aa4: $40
    jr nz, @+$56                                  ; $6aa5: $20 $54

    pop hl                                        ; $6aa7: $e1
    rst $38                                       ; $6aa8: $ff
    ld c, $04                                     ; $6aa9: $0e $04
    ld a, [bc]                                    ; $6aab: $0a
    inc c                                         ; $6aac: $0c
    ld [$0c0c], sp                                ; $6aad: $08 $0c $0c

jr_07a_6ab0:
    ld [$9dff], sp                                ; $6ab0: $08 $ff $9d
    ld [$08f5], sp                                ; $6ab3: $08 $f5 $08
    ld h, e                                       ; $6ab6: $63
    ld [hl+], a                                   ; $6ab7: $22
    ld b, e                                       ; $6ab8: $43
    ld h, c                                       ; $6ab9: $61
    rst $38                                       ; $6aba: $ff
    ld h, c                                       ; $6abb: $61
    ld b, c                                       ; $6abc: $41
    ld h, c                                       ; $6abd: $61
    ld b, c                                       ; $6abe: $41
    pop af                                        ; $6abf: $f1
    ld b, c                                       ; $6ac0: $41
    cp e                                          ; $6ac1: $bb
    pop bc                                        ; $6ac2: $c1
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    add e                                         ; $6ac5: $83
    rst $38                                       ; $6ac6: $ff
    add l                                         ; $6ac7: $85
    ld c, $f7                                     ; $6ac8: $0e $f7
    dec d                                         ; $6aca: $15
    rst $20                                       ; $6acb: $e7
    rst $18                                       ; $6acc: $df
    daa                                           ; $6acd: $27
    rst $00                                       ; $6ace: $c7
    ld b, [hl]                                    ; $6acf: $46
    add a                                         ; $6ad0: $87
    add [hl]                                      ; $6ad1: $86
    xor b                                         ; $6ad2: $a8
    add d                                         ; $6ad3: $82
    inc b                                         ; $6ad4: $04
    rlca                                          ; $6ad5: $07
    sbc a                                         ; $6ad6: $9f
    ld hl, sp-$20                                 ; $6ad7: $f8 $e0
    and b                                         ; $6ad9: $a0
    ret nz                                        ; $6ada: $c0

    ld b, b                                       ; $6adb: $40

jr_07a_6adc:
    sub [hl]                                      ; $6adc: $96
    jr nz, @-$14                                  ; $6add: $20 $ea

    adc e                                         ; $6adf: $8b
    nop                                           ; $6ae0: $00
    ld l, a                                       ; $6ae1: $6f
    nop                                           ; $6ae2: $00
    inc b                                         ; $6ae3: $04
    nop                                           ; $6ae4: $00
    inc b                                         ; $6ae5: $04
    adc [hl]                                      ; $6ae6: $8e
    add b                                         ; $6ae7: $80
    rlca                                          ; $6ae8: $07
    ld b, $3c                                     ; $6ae9: $06 $3c
    pop hl                                        ; $6aeb: $e1
    ld a, l                                       ; $6aec: $7d
    ld e, $fc                                     ; $6aed: $1e $fc
    ld [c], a                                     ; $6aef: $e2
    rra                                           ; $6af0: $1f
    ldh a, [$0e]                                  ; $6af1: $f0 $0e
    ld hl, sp+$0f                                 ; $6af3: $f8 $0f
    ld a, a                                       ; $6af5: $7f
    ld [bc], a                                    ; $6af6: $02
    ld h, h                                       ; $6af7: $64
    add [hl]                                      ; $6af8: $86
    ld hl, $a0c0                                  ; $6af9: $21 $c0 $a0
    ld b, b                                       ; $6afc: $40
    db $fc                                        ; $6afd: $fc
    pop hl                                        ; $6afe: $e1
    ld h, $e7                                     ; $6aff: $26 $e7
    cp $01                                        ; $6b01: $fe $01
    ld b, [hl]                                    ; $6b03: $46
    ldh [rIE], a                                  ; $6b04: $e0 $ff
    ld [bc], a                                    ; $6b06: $02
    rst $38                                       ; $6b07: $ff
    nop                                           ; $6b08: $00
    rst $30                                       ; $6b09: $f7
    rrca                                          ; $6b0a: $0f
    call c, $b038                                 ; $6b0b: $dc $38 $b0
    ld sp, hl                                     ; $6b0e: $f9
    ld h, b                                       ; $6b0f: $60
    ld [$4061], sp                                ; $6b10: $08 $61 $40
    ld hl, $72af                                  ; $6b13: $21 $af $72
    rst $18                                       ; $6b16: $df
    ld a, [c]                                     ; $6b17: $f2
    push af                                       ; $6b18: $f5
    rst $20                                       ; $6b19: $e7
    ld a, e                                       ; $6b1a: $7b
    dec de                                        ; $6b1b: $1b
    inc c                                         ; $6b1c: $0c
    ldh [$a1], a                                  ; $6b1d: $e0 $a1
    ld d, h                                       ; $6b1f: $54
    ld bc, $07fe                                  ; $6b20: $01 $fe $07
    ei                                            ; $6b23: $fb
    ei                                            ; $6b24: $fb
    inc a                                         ; $6b25: $3c
    rst $18                                       ; $6b26: $df
    and l                                         ; $6b27: $a5
    ld b, d                                       ; $6b28: $42
    rst $18                                       ; $6b29: $df
    ldh [$fb], a                                  ; $6b2a: $e0 $fb
    inc a                                         ; $6b2c: $3c
    rra                                           ; $6b2d: $1f
    sbc a                                         ; $6b2e: $9f
    rlca                                          ; $6b2f: $07
    ldh [$1f], a                                  ; $6b30: $e0 $1f
    add b                                         ; $6b32: $80
    ld a, a                                       ; $6b33: $7f
    ld [$12c0], a                                 ; $6b34: $ea $c0 $12
    and b                                         ; $6b37: $a0
    cp [hl]                                       ; $6b38: $be
    rst $38                                       ; $6b39: $ff
    ld a, h                                       ; $6b3a: $7c
    ld a, e                                       ; $6b3b: $7b
    add a                                         ; $6b3c: $87
    ld a, [$2ffd]                                 ; $6b3d: $fa $fd $2f
    ldh a, [rNR31]                                ; $6b40: $f0 $1b
    adc a                                         ; $6b42: $8f
    db $fc                                        ; $6b43: $fc
    cp $07                                        ; $6b44: $fe $07
    ccf                                           ; $6b46: $3f
    adc c                                         ; $6b47: $89
    and d                                         ; $6b48: $a2
    inc c                                         ; $6b49: $0c
    pop bc                                        ; $6b4a: $c1
    push hl                                       ; $6b4b: $e5
    add h                                         ; $6b4c: $84
    ldh [rIE], a                                  ; $6b4d: $e0 $ff
    rra                                           ; $6b4f: $1f
    rra                                           ; $6b50: $1f
    rlca                                          ; $6b51: $07
    inc b                                         ; $6b52: $04
    inc bc                                        ; $6b53: $03
    inc bc                                        ; $6b54: $03
    ld [$ff00], sp                                ; $6b55: $08 $00 $ff
    rst $18                                       ; $6b58: $df
    pop hl                                        ; $6b59: $e1
    sbc a                                         ; $6b5a: $9f
    ld h, c                                       ; $6b5b: $61
    ccf                                           ; $6b5c: $3f
    ld bc, $033d                                  ; $6b5d: $01 $3d $03
    rst $30                                       ; $6b60: $f7
    db $fc                                        ; $6b61: $fc
    rst $38                                       ; $6b62: $ff
    inc bc                                        ; $6b63: $03
    sub [hl]                                      ; $6b64: $96
    nop                                           ; $6b65: $00
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    dec bc                                        ; $6b68: $0b
    db $fd                                        ; $6b69: $fd
    rst $38                                       ; $6b6a: $ff
    rla                                           ; $6b6b: $17
    ld sp, hl                                     ; $6b6c: $f9
    rra                                           ; $6b6d: $1f
    ld a, [c]                                     ; $6b6e: $f2
    ld l, $f2                                     ; $6b6f: $2e $f2
    ld a, $e4                                     ; $6b71: $3e $e4
    cp a                                          ; $6b73: $bf
    ld e, h                                       ; $6b74: $5c
    ld hl, sp-$0f                                 ; $6b75: $f8 $f1
    ldh [$86], a                                  ; $6b77: $e0 $86
    nop                                           ; $6b79: $00
    ld a, [hl+]                                   ; $6b7a: $2a
    db $e3                                        ; $6b7b: $e3
    ld d, $ff                                     ; $6b7c: $16 $ff
    inc bc                                        ; $6b7e: $03
    sub d                                         ; $6b7f: $92
    inc bc                                        ; $6b80: $03
    ld a, [bc]                                    ; $6b81: $0a
    inc bc                                        ; $6b82: $03
    dec bc                                        ; $6b83: $0b
    ld bc, $ec05                                  ; $6b84: $01 $05 $ec
    ld [hl], e                                    ; $6b87: $73
    add b                                         ; $6b88: $80
    inc d                                         ; $6b89: $14
    jp Jump_000_01e1                              ; $6b8a: $c3 $e1 $01


    ld h, h                                       ; $6b8d: $64
    ldh [rDIV], a                                 ; $6b8e: $e0 $04
    rst $38                                       ; $6b90: $ff
    inc b                                         ; $6b91: $04
    sbc a                                         ; $6b92: $9f
    rrca                                          ; $6b93: $0f
    ld b, $1e                                     ; $6b94: $06 $1e
    ld c, $78                                     ; $6b96: $0e $78
    ld h, $a0                                     ; $6b98: $26 $a0
    xor d                                         ; $6b9a: $aa
    inc bc                                        ; $6b9b: $03
    ld b, b                                       ; $6b9c: $40
    ei                                            ; $6b9d: $fb
    ld b, b                                       ; $6b9e: $40
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    db $ec                                        ; $6ba1: $ec
    rrca                                          ; $6ba2: $0f
    ld hl, sp+$07                                 ; $6ba3: $f8 $07
    db $fc                                        ; $6ba5: $fc
    rlca                                          ; $6ba6: $07
    ld a, [$886e]                                 ; $6ba7: $fa $6e $88
    and b                                         ; $6baa: $a0
    ret c                                         ; $6bab: $d8

    and b                                         ; $6bac: $a0
    add sp, $00                                   ; $6bad: $e8 $00
    push af                                       ; $6baf: $f5
    nop                                           ; $6bb0: $00
    ld a, [$00ff]                                 ; $6bb1: $fa $ff $00
    db $fd                                        ; $6bb4: $fd
    add b                                         ; $6bb5: $80
    ld a, [hl]                                    ; $6bb6: $7e
    ret nz                                        ; $6bb7: $c0

    ccf                                           ; $6bb8: $3f
    ldh [$fa], a                                  ; $6bb9: $e0 $fa
    rst $18                                       ; $6bbb: $df
    ld b, $fe                                     ; $6bbc: $06 $fe
    inc b                                         ; $6bbe: $04
    rst $30                                       ; $6bbf: $f7
    inc c                                         ; $6bc0: $0c
    ld c, h                                       ; $6bc1: $4c
    pop bc                                        ; $6bc2: $c1
    cp a                                          ; $6bc3: $bf
    ld c, b                                       ; $6bc4: $48
    sub h                                         ; $6bc5: $94
    db $fc                                        ; $6bc6: $fc
    pop hl                                        ; $6bc7: $e1
    ret                                           ; $6bc8: $c9


    jp $bac0                                      ; $6bc9: $c3 $c0 $ba


    add b                                         ; $6bcc: $80
    db $fc                                        ; $6bcd: $fc
    ld a, d                                       ; $6bce: $7a
    ld [bc], a                                    ; $6bcf: $02
    cp c                                          ; $6bd0: $b9
    set 0, b                                      ; $6bd1: $cb $c0
    rst $20                                       ; $6bd3: $e7
    nop                                           ; $6bd4: $00
    rrca                                          ; $6bd5: $0f
    rlca                                          ; $6bd6: $07
    cp [hl]                                       ; $6bd7: $be
    add a                                         ; $6bd8: $87
    sbc l                                         ; $6bd9: $9d
    pop bc                                        ; $6bda: $c1
    jr nz, @-$1e                                  ; $6bdb: $20 $e0

    db $f4                                        ; $6bdd: $f4
    rst $38                                       ; $6bde: $ff
    ldh [$b2], a                                  ; $6bdf: $e0 $b2
    ld [hl], b                                    ; $6be1: $70
    jp c, $e930                                   ; $6be2: $da $30 $e9

jr_07a_6be5:
    jr @-$01                                      ; $6be5: $18 $fd

    ccf                                           ; $6be7: $3f
    ld [$0df4], sp                                ; $6be8: $08 $f4 $0d
    db $fc                                        ; $6beb: $fc
    dec b                                         ; $6bec: $05
    ld b, $9e                                     ; $6bed: $06 $9e
    adc b                                         ; $6bef: $88
    ld a, l                                       ; $6bf0: $7d
    jp $bcfe                                      ; $6bf1: $c3 $fe $bc


    db $eb                                        ; $6bf4: $eb
    inc a                                         ; $6bf5: $3c
    nop                                           ; $6bf6: $00
    ld hl, sp+$10                                 ; $6bf7: $f8 $10
    jr jr_07a_6c03                                ; $6bf9: $18 $08

    inc c                                         ; $6bfb: $0c
    rst $38                                       ; $6bfc: $ff
    ld [$040e], sp                                ; $6bfd: $08 $0e $04
    ld b, $06                                     ; $6c00: $06 $06
    rlca                                          ; $6c02: $07

jr_07a_6c03:
    ld b, $05                                     ; $6c03: $06 $05
    rst $28                                       ; $6c05: $ef
    rlca                                          ; $6c06: $07
    dec b                                         ; $6c07: $05
    nop                                           ; $6c08: $00
    ld [bc], a                                    ; $6c09: $02
    ld l, h                                       ; $6c0a: $6c
    adc b                                         ; $6c0b: $88

jr_07a_6c0c:
    add b                                         ; $6c0c: $80
    nop                                           ; $6c0d: $00
    adc c                                         ; $6c0e: $89
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    ret                                           ; $6c11: $c9


    ld a, a                                       ; $6c12: $7f
    or c                                          ; $6c13: $b1
    ld a, a                                       ; $6c14: $7f
    pop de                                        ; $6c15: $d1
    ccf                                           ; $6c16: $3f
    jr nc, jr_07a_6c0c                            ; $6c17: $30 $f3

    ld e, a                                       ; $6c19: $5f
    ld d, b                                       ; $6c1a: $50
    inc l                                         ; $6c1b: $2c
    jr nz, jr_07a_6c0c                            ; $6c1c: $20 $ee

    ld b, b                                       ; $6c1e: $40
    ld b, b                                       ; $6c1f: $40
    ld [hl], b                                    ; $6c20: $70
    ld b, b                                       ; $6c21: $40
    ld a, [hl]                                    ; $6c22: $7e
    rst $38                                       ; $6c23: $ff
    jr nz, jr_07a_6be5                            ; $6c24: $20 $bf

    rra                                           ; $6c26: $1f
    add b                                         ; $6c27: $80
    add b                                         ; $6c28: $80
    sbc a                                         ; $6c29: $9f
    adc a                                         ; $6c2a: $8f
    cp b                                          ; $6c2b: $b8
    rra                                           ; $6c2c: $1f
    sub b                                         ; $6c2d: $90

jr_07a_6c2e:
    or b                                          ; $6c2e: $b0
    and b                                         ; $6c2f: $a0
    rra                                           ; $6c30: $1f
    ldh a, [$2e]                                  ; $6c31: $f0 $2e
    ldh [$ec], a                                  ; $6c33: $e0 $ec
    add b                                         ; $6c35: $80
    sbc [hl]                                      ; $6c36: $9e
    ld h, l                                       ; $6c37: $65
    rst $38                                       ; $6c38: $ff
    xor b                                         ; $6c39: $a8
    ld [$0ccc], sp                                ; $6c3a: $08 $cc $0c
    rst $08                                       ; $6c3d: $cf
    rlca                                          ; $6c3e: $07
    rst $20                                       ; $6c3f: $e7
    rlca                                          ; $6c40: $07
    rst $38                                       ; $6c41: $ff
    rst $30                                       ; $6c42: $f7
    jp $a3f3                                      ; $6c43: $c3 $f3 $a3


    ei                                            ; $6c46: $fb
    sub c                                         ; $6c47: $91
    ld a, l                                       ; $6c48: $7d
    ret                                           ; $6c49: $c9


    ld a, h                                       ; $6c4a: $7c
    ld d, e                                       ; $6c4b: $53
    add [hl]                                      ; $6c4c: $86
    dec bc                                        ; $6c4d: $0b
    ld h, b                                       ; $6c4e: $60
    rst $38                                       ; $6c4f: $ff
    cp $ff                                        ; $6c50: $fe $ff
    rst $38                                       ; $6c52: $ff
    ldh [$f2], a                                  ; $6c53: $e0 $f2
    ld h, b                                       ; $6c55: $60
    db $e4                                        ; $6c56: $e4
    call Call_000_0a28                            ; $6c57: $cd $28 $0a
    ld h, d                                       ; $6c5a: $62
    nop                                           ; $6c5b: $00
    call c, Call_000_3e60                         ; $6c5c: $dc $60 $3e
    and l                                         ; $6c5f: $a5
    add b                                         ; $6c60: $80
    nop                                           ; $6c61: $00
    rst $20                                       ; $6c62: $e7
    ld a, a                                       ; $6c63: $7f
    inc bc                                        ; $6c64: $03
    cp $0c                                        ; $6c65: $fe $0c
    ld hl, sp+$30                                 ; $6c67: $f8 $30
    pop hl                                        ; $6c69: $e1
    ld b, b                                       ; $6c6a: $40
    jr nz, jr_07a_6c2e                            ; $6c6b: $20 $c1

    cp a                                          ; $6c6d: $bf
    add a                                         ; $6c6e: $87
    ld bc, $0405                                  ; $6c6f: $01 $05 $04
    rst $38                                       ; $6c72: $ff
    cp $6f                                        ; $6c73: $fe $6f
    and c                                         ; $6c75: $a1
    add b                                         ; $6c76: $80
    ld a, a                                       ; $6c77: $7f
    nop                                           ; $6c78: $00
    ld hl, sp-$10                                 ; $6c79: $f8 $f0
    ld c, $0c                                     ; $6c7b: $0e $0c
    di                                            ; $6c7d: $f3
    ld [c], a                                     ; $6c7e: $e2
    ld b, h                                       ; $6c7f: $44
    ld h, h                                       ; $6c80: $64
    ld a, a                                       ; $6c81: $7f
    ldh [$d8], a                                  ; $6c82: $e0 $d8
    jr c, @-$0a                                   ; $6c84: $38 $f4

    inc c                                         ; $6c86: $0c
    ld a, [$4006]                                 ; $6c87: $fa $06 $40
    add a                                         ; $6c8a: $87
    ld a, [c]                                     ; $6c8b: $f2
    and c                                         ; $6c8c: $a1
    and c                                         ; $6c8d: $a1
    ccf                                           ; $6c8e: $3f
    ld h, b                                       ; $6c8f: $60
    ldh [$32], a                                  ; $6c90: $e0 $32
    ld b, c                                       ; $6c92: $41
    inc c                                         ; $6c93: $0c
    rlca                                          ; $6c94: $07
    ld [$f90f], sp                                ; $6c95: $08 $0f $f9
    ld [$4040], sp                                ; $6c98: $08 $40 $40
    add l                                         ; $6c9b: $85
    ld bc, $80c0                                  ; $6c9c: $01 $c0 $80
    ld b, b                                       ; $6c9f: $40
    ret nz                                        ; $6ca0: $c0

    ld h, e                                       ; $6ca1: $63
    rst $28                                       ; $6ca2: $ef
    pop bc                                        ; $6ca3: $c1
    ld a, $e7                                     ; $6ca4: $3e $e7
    jr @-$0c                                      ; $6ca6: $18 $f2

    ld h, d                                       ; $6ca8: $62
    ld bc, $30ff                                  ; $6ca9: $01 $ff $30
    rst $38                                       ; $6cac: $ff
    rra                                           ; $6cad: $1f
    ld [hl], c                                    ; $6cae: $71
    rra                                           ; $6caf: $1f
    ld sp, hl                                     ; $6cb0: $f9
    rst $08                                       ; $6cb1: $cf
    ld e, b                                       ; $6cb2: $58
    rst $08                                       ; $6cb3: $cf
    call c, $87ff                                 ; $6cb4: $dc $ff $87
    adc h                                         ; $6cb7: $8c
    add a                                         ; $6cb8: $87
    adc [hl]                                      ; $6cb9: $8e
    inc bc                                        ; $6cba: $03
    rlca                                          ; $6cbb: $07
    ld bc, $ffb0                                  ; $6cbc: $01 $b0 $ff
    and b                                         ; $6cbf: $a0
    cp e                                          ; $6cc0: $bb
    inc hl                                        ; $6cc1: $23
    ld a, [hl]                                    ; $6cc2: $7e
    ld c, h                                       ; $6cc3: $4c
    ld a, b                                       ; $6cc4: $78
    ld d, b                                       ; $6cc5: $50
    ld [hl], b                                    ; $6cc6: $70
    rst $30                                       ; $6cc7: $f7
    jr nz, @-$1e                                  ; $6cc8: $20 $e0

    ld b, b                                       ; $6cca: $40
    ld a, $40                                     ; $6ccb: $3e $40
    add b                                         ; $6ccd: $80
    ld a, $e4                                     ; $6cce: $3e $e4
    ccf                                           ; $6cd0: $3f
    rst $38                                       ; $6cd1: $ff
    ld [c], a                                     ; $6cd2: $e2
    rra                                           ; $6cd3: $1f
    pop af                                        ; $6cd4: $f1
    dec bc                                        ; $6cd5: $0b
    ld hl, sp+$0d                                 ; $6cd6: $f8 $0d
    ld hl, sp+$05                                 ; $6cd8: $f8 $05
    ld a, [$8098]                                 ; $6cda: $fa $98 $80
    ld [bc], a                                    ; $6cdd: $02
    ld c, [hl]                                    ; $6cde: $4e
    ldh [$bf], a                                  ; $6cdf: $e0 $bf
    ld a, a                                       ; $6ce1: $7f
    adc a                                         ; $6ce2: $8f
    rst $38                                       ; $6ce3: $ff
    ld h, b                                       ; $6ce4: $60
    ei                                            ; $6ce5: $fb
    rst $38                                       ; $6ce6: $ff
    rra                                           ; $6ce7: $1f
    dec a                                         ; $6ce8: $3d
    inc b                                         ; $6ce9: $04
    rst $38                                       ; $6cea: $ff
    cp $e9                                        ; $6ceb: $fe $e9
    rst $38                                       ; $6ced: $ff
    sub b                                         ; $6cee: $90
    ldh a, [$f0]                                  ; $6cef: $f0 $f0
    ldh [$7e], a                                  ; $6cf1: $e0 $7e
    dec h                                         ; $6cf3: $25
    call nz, $eea2                                ; $6cf4: $c4 $a2 $ee
    ld h, b                                       ; $6cf7: $60
    inc bc                                        ; $6cf8: $03
    db $fc                                        ; $6cf9: $fc
    rrca                                          ; $6cfa: $0f
    ldh a, [$e8]                                  ; $6cfb: $f0 $e8
    inc b                                         ; $6cfd: $04
    ld h, c                                       ; $6cfe: $61
    ld a, [c]                                     ; $6cff: $f2
    and c                                         ; $6d00: $a1

Jump_07a_6d01:
    inc b                                         ; $6d01: $04
    add l                                         ; $6d02: $85
    ldh [$fe], a                                  ; $6d03: $e0 $fe
    ldh [$7d], a                                  ; $6d05: $e0 $7d
    add hl, de                                    ; $6d07: $19
    ld a, $cf                                     ; $6d08: $3e $cf
    inc b                                         ; $6d0a: $04
    rrca                                          ; $6d0b: $0f
    ld [bc], a                                    ; $6d0c: $02
    rlca                                          ; $6d0d: $07
    ld b, [hl]                                    ; $6d0e: $46
    ld h, b                                       ; $6d0f: $60
    cp $e3                                        ; $6d10: $fe $e3
    pop bc                                        ; $6d12: $c1
    add b                                         ; $6d13: $80
    rst $38                                       ; $6d14: $ff
    ld a, h                                       ; $6d15: $7c
    ld a, b                                       ; $6d16: $78
    rlca                                          ; $6d17: $07
    rlca                                          ; $6d18: $07
    add hl, sp                                    ; $6d19: $39
    jr jr_07a_6d9a                                ; $6d1a: $18 $7e

    ld h, $f7                                     ; $6d1c: $26 $f7
    ld h, a                                       ; $6d1e: $67
    ld b, c                                       ; $6d1f: $41
    ld b, b                                       ; $6d20: $40
    rst $38                                       ; $6d21: $ff
    ldh [$98], a                                  ; $6d22: $e0 $98
    adc a                                         ; $6d24: $8f
    adc h                                         ; $6d25: $8c
    add a                                         ; $6d26: $87
    rst $18                                       ; $6d27: $df
    ld b, [hl]                                    ; $6d28: $46
    jp $c143                                      ; $6d29: $c3 $43 $c1


    and c                                         ; $6d2c: $a1
    cp h                                          ; $6d2d: $bc
    jr nz, jr_07a_6d80                            ; $6d2e: $20 $50

    or b                                          ; $6d30: $b0
    db $ed                                        ; $6d31: $ed
    ld hl, sp+$10                                 ; $6d32: $f8 $10
    ld h, b                                       ; $6d34: $60
    ld bc, $1cff                                  ; $6d35: $01 $ff $1c
    add c                                         ; $6d38: $81
    adc h                                         ; $6d39: $8c
    ld hl, sp-$38                                 ; $6d3a: $f8 $c8
    rst $38                                       ; $6d3c: $ff
    ld a, b                                       ; $6d3d: $78
    ld a, b                                       ; $6d3e: $78
    jr nc, jr_07a_6db1                            ; $6d3f: $30 $70

    ld d, b                                       ; $6d41: $50
    di                                            ; $6d42: $f3
    cp $9a                                        ; $6d43: $fe $9a
    rst $38                                       ; $6d45: $ff
    ld c, $0f                                     ; $6d46: $0e $0f
    rlca                                          ; $6d48: $07
    jr nc, jr_07a_6d4b                            ; $6d49: $30 $00

jr_07a_6d4b:
    ld [hl], b                                    ; $6d4b: $70

jr_07a_6d4c:
    jr nz, jr_07a_6dae                            ; $6d4c: $20 $60

    or $5e                                        ; $6d4e: $f6 $5e
    ldh [$c3], a                                  ; $6d50: $e0 $c3
    ld b, b                                       ; $6d52: $40
    cp b                                          ; $6d53: $b8
    ldh [$03], a                                  ; $6d54: $e0 $03
    adc l                                         ; $6d56: $8d
    adc [hl]                                      ; $6d57: $8e
    rst $30                                       ; $6d58: $f7
    sub a                                         ; $6d59: $97
    ld a, b                                       ; $6d5a: $78
    ld a, a                                       ; $6d5b: $7f
    inc a                                         ; $6d5c: $3c
    ld [hl], d                                    ; $6d5d: $72
    add c                                         ; $6d5e: $81
    ld bc, $604a                                  ; $6d5f: $01 $4a $60
    sub b                                         ; $6d62: $90
    add hl, hl                                    ; $6d63: $29
    ret nz                                        ; $6d64: $c0

    pop af                                        ; $6d65: $f1
    ret nz                                        ; $6d66: $c0

    inc d                                         ; $6d67: $14
    ld b, c                                       ; $6d68: $41
    jr jr_07a_6d4c                                ; $6d69: $18 $e1

    rst $28                                       ; $6d6b: $ef
    ld h, l                                       ; $6d6c: $65
    rra                                           ; $6d6d: $1f
    nop                                           ; $6d6e: $00
    inc bc                                        ; $6d6f: $03
    nop                                           ; $6d70: $00
    rst $38                                       ; $6d71: $ff
    ccf                                           ; $6d72: $3f
    nop                                           ; $6d73: $00
    sbc a                                         ; $6d74: $9f
    nop                                           ; $6d75: $00
    rst $08                                       ; $6d76: $cf
    add b                                         ; $6d77: $80
    ld h, a                                       ; $6d78: $67
    ret nz                                        ; $6d79: $c0

    sbc a                                         ; $6d7a: $9f
    ccf                                           ; $6d7b: $3f
    ldh a, [rIF]                                  ; $6d7c: $f0 $0f
    rst $38                                       ; $6d7e: $ff
    inc bc                                        ; $6d7f: $03

jr_07a_6d80:
    cp c                                          ; $6d80: $b9
    and e                                         ; $6d81: $a3
    and $40                                       ; $6d82: $e6 $40
    ld e, $be                                     ; $6d84: $1e $be
    ld bc, $9080                                  ; $6d86: $01 $80 $90
    rst $38                                       ; $6d89: $ff
    ldh a, [rIF]                                  ; $6d8a: $f0 $0f
    ld bc, $20a5                                  ; $6d8c: $01 $a5 $20
    ld a, b                                       ; $6d8f: $78
    dec bc                                        ; $6d90: $0b
    ldh a, [$b0]                                  ; $6d91: $f0 $b0
    ld [hl-], a                                   ; $6d93: $32
    jr nz, jr_07a_6dc6                            ; $6d94: $20 $30

    adc l                                         ; $6d96: $8d
    ld b, b                                       ; $6d97: $40
    ld d, b                                       ; $6d98: $50
    ld b, e                                       ; $6d99: $43

jr_07a_6d9a:
    db $f4                                        ; $6d9a: $f4
    ld hl, $63ac                                  ; $6d9b: $21 $ac $63
    ld [hl], a                                    ; $6d9e: $77
    inc bc                                        ; $6d9f: $03
    ld [bc], a                                    ; $6da0: $02
    ld b, $fe                                     ; $6da1: $06 $fe
    ldh [$0e], a                                  ; $6da3: $e0 $0e

jr_07a_6da5:
    inc b                                         ; $6da5: $04
    add hl, bc                                    ; $6da6: $09
    add d                                         ; $6da7: $82
    ld b, b                                       ; $6da8: $40
    pop hl                                        ; $6da9: $e1
    pop bc                                        ; $6daa: $c1
    ld [hl], $40                                  ; $6dab: $36 $40
    ld c, h                                       ; $6dad: $4c

jr_07a_6dae:
    pop hl                                        ; $6dae: $e1
    ld c, [hl]                                    ; $6daf: $4e
    ld [bc], a                                    ; $6db0: $02

jr_07a_6db1:
    ld d, b                                       ; $6db1: $50
    ld b, d                                       ; $6db2: $42
    ld c, $04                                     ; $6db3: $0e $04
    db $fc                                        ; $6db5: $fc
    ei                                            ; $6db6: $fb
    db $10                                        ; $6db7: $10
    rst $38                                       ; $6db8: $ff
    cp $e0                                        ; $6db9: $fe $e0
    rst $18                                       ; $6dbb: $df
    ccf                                           ; $6dbc: $3f
    ld [hl], a                                    ; $6dbd: $77
    ld hl, sp-$03                                 ; $6dbe: $f8 $fd
    db $fd                                        ; $6dc0: $fd
    cp $90                                        ; $6dc1: $fe $90
    ld h, c                                       ; $6dc3: $61
    ld [hl], c                                    ; $6dc4: $71
    ld d, b                                       ; $6dc5: $50

jr_07a_6dc6:
    pop af                                        ; $6dc6: $f1
    and b                                         ; $6dc7: $a0
    pop hl                                        ; $6dc8: $e1
    and b                                         ; $6dc9: $a0
    rst $38                                       ; $6dca: $ff
    db $e3                                        ; $6dcb: $e3
    pop hl                                        ; $6dcc: $e1
    ld h, e                                       ; $6dcd: $63
    pop hl                                        ; $6dce: $e1
    db $e3                                        ; $6dcf: $e3

jr_07a_6dd0:
    ld hl, $a163                                  ; $6dd0: $21 $63 $a1
    rst $38                                       ; $6dd3: $ff
    db $e3                                        ; $6dd4: $e3
    pop hl                                        ; $6dd5: $e1
    rst $00                                       ; $6dd6: $c7
    add d                                         ; $6dd7: $82
    add [hl]                                      ; $6dd8: $86
    add d                                         ; $6dd9: $82
    adc [hl]                                      ; $6dda: $8e

jr_07a_6ddb:
    add h                                         ; $6ddb: $84
    push hl                                       ; $6ddc: $e5
    adc h                                         ; $6ddd: $8c
    cp $01                                        ; $6dde: $fe $01
    inc b                                         ; $6de0: $04
    cp $00                                        ; $6de1: $fe $00
    add a                                         ; $6de3: $87
    ld [bc], a                                    ; $6de4: $02
    jr nc, jr_07a_6de7                            ; $6de5: $30 $00

jr_07a_6de7:
    ld [hl], c                                    ; $6de7: $71
    rst $38                                       ; $6de8: $ff
    jr nz, jr_07a_6e4c                            ; $6de9: $20 $61

    jr nz, jr_07a_6dd0                            ; $6deb: $20 $e3

    ld b, b                                       ; $6ded: $40
    jp $c741                                      ; $6dee: $c3 $41 $c7


    rst $38                                       ; $6df1: $ff
    ld b, c                                       ; $6df2: $41
    ld a, a                                       ; $6df3: $7f
    jr nz, jr_07a_6e35                            ; $6df4: $20 $3f

    db $10                                        ; $6df6: $10
    ld e, $11                                     ; $6df7: $1e $11
    jr nc, @+$71                                  ; $6df9: $30 $6f

    rra                                           ; $6dfb: $1f
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    adc a                                         ; $6dfe: $8f
    ret nz                                        ; $6dff: $c0

    ret nz                                        ; $6e00: $c0

    pop af                                        ; $6e01: $f1
    cp $e2                                        ; $6e02: $fe $e2
    add e                                         ; $6e04: $83
    ld hl, sp-$02                                 ; $6e05: $f8 $fe
    ldh [$fa], a                                  ; $6e07: $e0 $fa
    ret nz                                        ; $6e09: $c0

    sub $81                                       ; $6e0a: $d6 $81
    sub b                                         ; $6e0c: $90
    rst $38                                       ; $6e0d: $ff
    adc b                                         ; $6e0e: $88
    rst $38                                       ; $6e0f: $ff
    ld c, e                                       ; $6e10: $4b
    cp e                                          ; $6e11: $bb
    rst $38                                       ; $6e12: $ff
    ld c, h                                       ; $6e13: $4c
    db $fc                                        ; $6e14: $fc
    jr nz, jr_07a_6e1c                            ; $6e15: $20 $05

    ld a, [$fc00]                                 ; $6e17: $fa $00 $fc
    ldh [$1f], a                                  ; $6e1a: $e0 $1f

jr_07a_6e1c:
    or a                                          ; $6e1c: $b7
    di                                            ; $6e1d: $f3
    inc a                                         ; $6e1e: $3c
    rst $38                                       ; $6e1f: $ff
    jr nz, jr_07a_6da5                            ; $6e20: $20 $83

    ld e, a                                       ; $6e22: $5f
    and b                                         ; $6e23: $a0
    db $fc                                        ; $6e24: $fc
    db $e3                                        ; $6e25: $e3
    ld a, a                                       ; $6e26: $7f
    rst $38                                       ; $6e27: $ff
    add b                                         ; $6e28: $80
    rra                                           ; $6e29: $1f
    ldh [$af], a                                  ; $6e2a: $e0 $af
    ld [hl], b                                    ; $6e2c: $70
    ld e, e                                       ; $6e2d: $5b
    inc a                                         ; $6e2e: $3c
    ld d, $f3                                     ; $6e2f: $16 $f3
    rrca                                          ; $6e31: $0f
    dec b                                         ; $6e32: $05
    ld c, [hl]                                    ; $6e33: $4e
    add c                                         ; $6e34: $81

jr_07a_6e35:
    ld d, e                                       ; $6e35: $53
    ld [$e0df], sp                                ; $6e36: $08 $df $e0
    cp [hl]                                       ; $6e39: $be
    ld a, a                                       ; $6e3a: $7f
    rst $38                                       ; $6e3b: $ff
    db $fc                                        ; $6e3c: $fc
    ld [$18e8], sp                                ; $6e3d: $08 $e8 $18
    ret c                                         ; $6e40: $d8

    jr nc, jr_07a_6ddb                            ; $6e41: $30 $98

    ld [hl], b                                    ; $6e43: $70
    rst $30                                       ; $6e44: $f7
    call nc, $e638                                ; $6e45: $d4 $38 $e6
    db $fd                                        ; $6e48: $fd
    and b                                         ; $6e49: $a0
    add b                                         ; $6e4a: $80
    nop                                           ; $6e4b: $00

jr_07a_6e4c:
    and e                                         ; $6e4c: $a3
    ld h, c                                       ; $6e4d: $61
    rst $38                                       ; $6e4e: $ff
    db $e3                                        ; $6e4f: $e3
    ld hl, $21e3                                  ; $6e50: $21 $e3 $21
    rst $30                                       ; $6e53: $f7
    ld hl, $13ff                                  ; $6e54: $21 $ff $13
    ld [hl], a                                    ; $6e57: $77
    rst $38                                       ; $6e58: $ff
    rrca                                          ; $6e59: $0f
    pop af                                        ; $6e5a: $f1
    nop                                           ; $6e5b: $00
    ld b, b                                       ; $6e5c: $40
    jr jr_07a_6e67                                ; $6e5d: $18 $08

    add hl, de                                    ; $6e5f: $19
    cp $e6                                        ; $6e60: $fe $e6
    rst $38                                       ; $6e62: $ff
    dec e                                         ; $6e63: $1d
    ld [$0c1f], sp                                ; $6e64: $08 $1f $0c

jr_07a_6e67:
    add $43                                       ; $6e67: $c6 $43
    adc $83                                       ; $6e69: $ce $83
    rst $38                                       ; $6e6b: $ff
    adc h                                         ; $6e6c: $8c
    add a                                         ; $6e6d: $87
    sbc l                                         ; $6e6e: $9d
    add [hl]                                      ; $6e6f: $86
    sbc c                                         ; $6e70: $99
    adc [hl]                                      ; $6e71: $8e
    di                                            ; $6e72: $f3
    sbc h                                         ; $6e73: $9c
    rlca                                          ; $6e74: $07
    rst $20                                       ; $6e75: $e7
    ld hl, sp-$71                                 ; $6e76: $f8 $8f
    ld [hl+], a                                   ; $6e78: $22
    and b                                         ; $6e79: $a0
    cp $eb                                        ; $6e7a: $fe $eb
    ld a, h                                       ; $6e7c: $7c
    pop hl                                        ; $6e7d: $e1
    jp nz, $e1c0                                  ; $6e7e: $c2 $c0 $e1

    ret nz                                        ; $6e81: $c0

    cp $fc                                        ; $6e82: $fe $fc
    pop hl                                        ; $6e84: $e1
    nop                                           ; $6e85: $00
    rst $38                                       ; $6e86: $ff

jr_07a_6e87:
    cp a                                          ; $6e87: $bf
    ld b, b                                       ; $6e88: $40
    ld d, a                                       ; $6e89: $57
    xor b                                         ; $6e8a: $a8
    ccf                                           ; $6e8b: $3f
    rst $38                                       ; $6e8c: $ff
    ret nz                                        ; $6e8d: $c0

    ld d, a                                       ; $6e8e: $57
    xor b                                         ; $6e8f: $a8
    cpl                                           ; $6e90: $2f
    ret nc                                        ; $6e91: $d0

    ld d, l                                       ; $6e92: $55
    xor d                                         ; $6e93: $aa
    rrca                                          ; $6e94: $0f
    rst $30                                       ; $6e95: $f7
    ldh a, [rHDMA5]                               ; $6e96: $f0 $55
    xor d                                         ; $6e98: $aa
    ld d, b                                       ; $6e99: $50
    add l                                         ; $6e9a: $85
    rst $38                                       ; $6e9b: $ff
    nop                                           ; $6e9c: $00
    ldh [$1f], a                                  ; $6e9d: $e0 $1f
    jp z, $2ba0                                   ; $6e9f: $ca $a0 $2b

    db $fc                                        ; $6ea2: $fc
    sub h                                         ; $6ea3: $94
    ld b, b                                       ; $6ea4: $40
    db $fd                                        ; $6ea5: $fd
    sbc a                                         ; $6ea6: $9f
    dec b                                         ; $6ea7: $05
    ld a, [bc]                                    ; $6ea8: $0a
    and h                                         ; $6ea9: $a4
    ld hl, sp+$00                                 ; $6eaa: $f8 $00
    db $fc                                        ; $6eac: $fc
    dec a                                         ; $6ead: $3d
    ret nz                                        ; $6eae: $c0

    and $48                                       ; $6eaf: $e6 $48
    inc bc                                        ; $6eb1: $03
    nop                                           ; $6eb2: $00
    cp a                                          ; $6eb3: $bf
    rrca                                          ; $6eb4: $0f
    ldh a, [$9f]                                  ; $6eb5: $f0 $9f
    ld [hl], a                                    ; $6eb7: $77
    ld h, a                                       ; $6eb8: $67
    ld hl, sp-$71                                 ; $6eb9: $f8 $8f
    ld h, [hl]                                    ; $6ebb: $66
    ld b, b                                       ; $6ebc: $40
    ldh [$1f], a                                  ; $6ebd: $e0 $1f
    nop                                           ; $6ebf: $00
    ld e, a                                       ; $6ec0: $5f
    ld b, b                                       ; $6ec1: $40
    ld [hl], a                                    ; $6ec2: $77
    ret nz                                        ; $6ec3: $c0

    nop                                           ; $6ec4: $00
    add d                                         ; $6ec5: $82
    add $40                                       ; $6ec6: $c6 $40
    ld a, [hl+]                                   ; $6ec8: $2a
    nop                                           ; $6ec9: $00
    ld d, l                                       ; $6eca: $55
    ld c, e                                       ; $6ecb: $4b
    ret nz                                        ; $6ecc: $c0

    xor c                                         ; $6ecd: $a9
    push de                                       ; $6ece: $d5
    ld b, h                                       ; $6ecf: $44
    add d                                         ; $6ed0: $82
    sbc l                                         ; $6ed1: $9d
    pop hl                                        ; $6ed2: $e1
    xor d                                         ; $6ed3: $aa
    ldh a, [$e2]                                  ; $6ed4: $f0 $e2
    ld a, a                                       ; $6ed6: $7f
    scf                                           ; $6ed7: $37
    ret nz                                        ; $6ed8: $c0

    dec bc                                        ; $6ed9: $0b
    rst $18                                       ; $6eda: $df
    db $f4                                        ; $6edb: $f4
    dec d                                         ; $6edc: $15
    ld [$fd02], a                                 ; $6edd: $ea $02 $fd
    db $fc                                        ; $6ee0: $fc
    rst $20                                       ; $6ee1: $e7
    rst $38                                       ; $6ee2: $ff
    ret nz                                        ; $6ee3: $c0

    rst $38                                       ; $6ee4: $ff
    ld a, a                                       ; $6ee5: $7f
    jr nc, jr_07a_6e87                            ; $6ee6: $30 $9f

    ld [$87cf], sp                                ; $6ee8: $08 $cf $87
    ld [hl], c                                    ; $6eeb: $71
    ldh [$f7], a                                  ; $6eec: $e0 $f7
    inc e                                         ; $6eee: $1c
    ld hl, sp+$06                                 ; $6eef: $f8 $06
    sbc b                                         ; $6ef1: $98
    ld h, b                                       ; $6ef2: $60
    rst $38                                       ; $6ef3: $ff
    inc bc                                        ; $6ef4: $03
    rst $38                                       ; $6ef5: $ff
    ld b, b                                       ; $6ef6: $40
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    jr nz, jr_07a_6f7a                            ; $6ef9: $20 $7f

    sub b                                         ; $6efb: $90
    rst $08                                       ; $6efc: $cf
    ld hl, sp+$77                                 ; $6efd: $f8 $77
    inc a                                         ; $6eff: $3c
    rst $38                                       ; $6f00: $ff
    rra                                           ; $6f01: $1f
    ld c, $03                                     ; $6f02: $0e $03
    ld bc, $e0de                                  ; $6f04: $01 $de $e0
    cpl                                           ; $6f07: $2f
    ldh a, [$8f]                                  ; $6f08: $f0 $8f
    sub a                                         ; $6f0a: $97
    ld a, b                                       ; $6f0b: $78
    srl h                                         ; $6f0c: $cb $3c
    inc b                                         ; $6f0e: $04
    ld hl, $63b0                                  ; $6f0f: $21 $b0 $63
    call nz, Call_07a_7923                        ; $6f12: $c4 $23 $79
    jp hl                                         ; $6f15: $e9


    add a                                         ; $6f16: $87
    ld h, e                                       ; $6f17: $63
    add b                                         ; $6f18: $80
    rst $20                                       ; $6f19: $e7
    and b                                         ; $6f1a: $a0
    ld e, $9a                                     ; $6f1b: $1e $9a
    ld b, b                                       ; $6f1d: $40
    or $0f                                        ; $6f1e: $f6 $0f
    sbc e                                         ; $6f20: $9b
    ld [hl], a                                    ; $6f21: $77
    ld a, h                                       ; $6f22: $7c
    rst $28                                       ; $6f23: $ef
    ldh a, [$ac]                                  ; $6f24: $f0 $ac
    ld [hl+], a                                   ; $6f26: $22
    inc bc                                        ; $6f27: $03
    cp a                                          ; $6f28: $bf
    ret nz                                        ; $6f29: $c0

    ld [hl], d                                    ; $6f2a: $72
    ld b, c                                       ; $6f2b: $41
    ld a, $a0                                     ; $6f2c: $3e $a0
    ld hl, $03fd                                  ; $6f2e: $21 $fd $03
    cp [hl]                                       ; $6f31: $be
    ld a, [hl]                                    ; $6f32: $7e
    ret nz                                        ; $6f33: $c0

    ld [hl+], a                                   ; $6f34: $22
    inc b                                         ; $6f35: $04
    cp c                                          ; $6f36: $b9
    and b                                         ; $6f37: $a0
    add a                                         ; $6f38: $87
    ccf                                           ; $6f39: $3f
    call z, $41c7                                 ; $6f3a: $cc $c7 $41
    ld b, b                                       ; $6f3d: $40
    add [hl]                                      ; $6f3e: $86
    ld hl, $e0f4                                  ; $6f3f: $21 $f4 $e0
    jp hl                                         ; $6f42: $e9


    push hl                                       ; $6f43: $e5
    nop                                           ; $6f44: $00
    ld bc, $00ff                                  ; $6f45: $01 $ff $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    rst $38                                       ; $6f4a: $ff
    ld [$0a0a], sp                                ; $6f4b: $08 $0a $0a
    ld [$0808], sp                                ; $6f4e: $08 $08 $08
    ld a, [bc]                                    ; $6f51: $0a
    add hl, bc                                    ; $6f52: $09
    ld a, a                                       ; $6f53: $7f
    add hl, bc                                    ; $6f54: $09
    ld [$0d08], sp                                ; $6f55: $08 $08 $0d
    dec c                                         ; $6f58: $0d
    inc c                                         ; $6f59: $0c
    dec c                                         ; $6f5a: $0d
    rst $38                                       ; $6f5b: $ff
    pop hl                                        ; $6f5c: $e1
    ret nc                                        ; $6f5d: $d0

    db $ed                                        ; $6f5e: $ed
    ldh [$fe], a                                  ; $6f5f: $e0 $fe
    rst $20                                       ; $6f61: $e7
    db $e3                                        ; $6f62: $e3
    ldh [$e0], a                                  ; $6f63: $e0 $e0
    ldh [$09], a                                  ; $6f65: $e0 $09
    jp c, Jump_000_0de1                           ; $6f67: $da $e1 $0d

    inc c                                         ; $6f6a: $0c
    inc e                                         ; $6f6b: $1c
    ldh [$f6], a                                  ; $6f6c: $e0 $f6
    cp [hl]                                       ; $6f6e: $be
    ldh [$08], a                                  ; $6f6f: $e0 $08
    ld [$ff0c], sp                                ; $6f71: $08 $0c $ff
    ldh [$e0], a                                  ; $6f74: $e0 $e0
    push af                                       ; $6f76: $f5
    sbc d                                         ; $6f77: $9a
    pop hl                                        ; $6f78: $e1
    sub a                                         ; $6f79: $97

jr_07a_6f7a:
    inc c                                         ; $6f7a: $0c
    inc c                                         ; $6f7b: $0c
    rrca                                          ; $6f7c: $0f
    ldh [$f6], a                                  ; $6f7d: $e0 $f6
    ld [$e080], sp                                ; $6f7f: $08 $80 $e0
    ldh [$f6], a                                  ; $6f82: $e0 $f6
    dec bc                                        ; $6f84: $0b
    and b                                         ; $6f85: $a0
    ld a, a                                       ; $6f86: $7f
    ldh [$e0], a                                  ; $6f87: $e0 $e0
    ld [c], a                                     ; $6f89: $e2
    sbc a                                         ; $6f8a: $9f
    db $e3                                        ; $6f8b: $e3
    ld h, b                                       ; $6f8c: $60
    db $eb                                        ; $6f8d: $eb
    ld e, l                                       ; $6f8e: $5d
    db $e3                                        ; $6f8f: $e3
    add hl, bc                                    ; $6f90: $09
    add b                                         ; $6f91: $80
    push hl                                       ; $6f92: $e5
    ld l, l                                       ; $6f93: $6d

jr_07a_6f94:
    db $10                                        ; $6f94: $10
    ld b, b                                       ; $6f95: $40
    db $ed                                        ; $6f96: $ed
    ld b, l                                       ; $6f97: $45
    ld [c], a                                     ; $6f98: $e2
    ld a, [hl-]                                   ; $6f99: $3a
    ld [c], a                                     ; $6f9a: $e2
    ret nz                                        ; $6f9b: $c0

    ld [c], a                                     ; $6f9c: $e2
    ld c, $e0                                     ; $6f9d: $0e $e0
    xor $df                                       ; $6f9f: $ee $df
    and $40                                       ; $6fa1: $e6 $40
    pop hl                                        ; $6fa3: $e1
    rrca                                          ; $6fa4: $0f
    rrca                                          ; $6fa5: $0f
    rrca                                          ; $6fa6: $0f
    inc c                                         ; $6fa7: $0c
    inc c                                         ; $6fa8: $0c
    ldh [$ee], a                                  ; $6fa9: $e0 $ee
    inc e                                         ; $6fab: $1c
    db $e4                                        ; $6fac: $e4
    push hl                                       ; $6fad: $e5
    ldh [$3d], a                                  ; $6fae: $e0 $3d
    pop hl                                        ; $6fb0: $e1
    nop                                           ; $6fb1: $00
    ldh [$f7], a                                  ; $6fb2: $e0 $f7
    jp $c0e0                                      ; $6fb4: $c3 $e0 $c0


    ld a, [c]                                     ; $6fb7: $f2
    and b                                         ; $6fb8: $a0
    push hl                                       ; $6fb9: $e5
    rst $18                                       ; $6fba: $df
    ldh [$dc], a                                  ; $6fbb: $e0 $dc
    pop hl                                        ; $6fbd: $e1
    add b                                         ; $6fbe: $80
    db $ed                                        ; $6fbf: $ed
    ld e, [hl]                                    ; $6fc0: $5e
    push hl                                       ; $6fc1: $e5
    add b                                         ; $6fc2: $80
    add d                                         ; $6fc3: $82
    pop hl                                        ; $6fc4: $e1
    ldh [$f2], a                                  ; $6fc5: $e0 $f2
    ld a, [hl]                                    ; $6fc7: $7e
    db $e4                                        ; $6fc8: $e4
    ld h, c                                       ; $6fc9: $61
    ld [c], a                                     ; $6fca: $e2
    ldh [$f3], a                                  ; $6fcb: $e0 $f3
    ld e, c                                       ; $6fcd: $59
    jp nz, $e4e0                                  ; $6fce: $c2 $e0 $e4

    rrca                                          ; $6fd1: $0f
    jr jr_07a_6f94                                ; $6fd2: $18 $c0

    rst $28                                       ; $6fd4: $ef
    dec a                                         ; $6fd5: $3d
    db $e3                                        ; $6fd6: $e3
    jr nz, @-$1b                                  ; $6fd7: $20 $e3

    rrca                                          ; $6fd9: $0f
    ld c, h                                       ; $6fda: $4c
    ldh [$f9], a                                  ; $6fdb: $e0 $f9
    jr nz, @-$0d                                  ; $6fdd: $20 $f1

    ld a, a                                       ; $6fdf: $7f
    push hl                                       ; $6fe0: $e5
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    ret nz                                        ; $6fe3: $c0

    ld e, $c2                                     ; $6fe4: $1e $c2
    ldh [$aa], a                                  ; $6fe6: $e0 $aa
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    nop                                           ; $6ff2: $00
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    nop                                           ; $7003: $00
    ld a, [de]                                    ; $7004: $1a
    add e                                         ; $7005: $83
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    rst $38                                       ; $7009: $ff
    adc a                                         ; $700a: $8f
    nop                                           ; $700b: $00
    ld bc, $0302                                  ; $700c: $01 $02 $03
    inc bc                                        ; $700f: $03
    inc b                                         ; $7010: $04
    dec b                                         ; $7011: $05
    rst $38                                       ; $7012: $ff
    dec b                                         ; $7013: $05
    adc a                                         ; $7014: $8f
    adc a                                         ; $7015: $8f
    ld b, $07                                     ; $7016: $06 $07
    ld [$0a09], sp                                ; $7018: $08 $09 $0a
    push af                                       ; $701b: $f5
    dec b                                         ; $701c: $05
    or $e0                                        ; $701d: $f6 $e0
    nop                                           ; $701f: $00
    rst $38                                       ; $7020: $ff
    add sp, -$71                                  ; $7021: $e8 $8f
    dec b                                         ; $7023: $05
    dec b                                         ; $7024: $05
    inc c                                         ; $7025: $0c
    rst $38                                       ; $7026: $ff
    dec c                                         ; $7027: $0d
    ld c, $0f                                     ; $7028: $0e $0f
    db $10                                        ; $702a: $10
    ld de, $8f8f                                  ; $702b: $11 $8f $8f
    ld [de], a                                    ; $702e: $12
    rst $20                                       ; $702f: $e7
    inc de                                        ; $7030: $13
    inc d                                         ; $7031: $14
    dec d                                         ; $7032: $15
    pop hl                                        ; $7033: $e1
    ldh [$e0], a                                  ; $7034: $e0 $e0
    db $ed                                        ; $7036: $ed
    ld d, $17                                     ; $7037: $16 $17
    jr @+$01                                      ; $7039: $18 $ff

    add hl, de                                    ; $703b: $19
    ld a, [de]                                    ; $703c: $1a
    dec de                                        ; $703d: $1b
    inc e                                         ; $703e: $1c
    adc a                                         ; $703f: $8f
    adc a                                         ; $7040: $8f
    dec e                                         ; $7041: $1d
    ld e, $f7                                     ; $7042: $1e $f7
    rra                                           ; $7044: $1f
    jr nz, jr_07a_7068                            ; $7045: $20 $21

    ret nz                                        ; $7047: $c0

    xor $22                                       ; $7048: $ee $22
    inc hl                                        ; $704a: $23
    inc h                                         ; $704b: $24
    dec h                                         ; $704c: $25
    rst $38                                       ; $704d: $ff
    ld h, $27                                     ; $704e: $26 $27
    jr z, jr_07a_707b                             ; $7050: $28 $29

    adc a                                         ; $7052: $8f
    adc a                                         ; $7053: $8f
    ld a, [hl+]                                   ; $7054: $2a
    dec hl                                        ; $7055: $2b
    rst $30                                       ; $7056: $f7
    inc l                                         ; $7057: $2c
    dec l                                         ; $7058: $2d

jr_07a_7059:
    ld l, $a0                                     ; $7059: $2e $a0
    xor $2f                                       ; $705b: $ee $2f
    jr nc, jr_07a_7090                            ; $705d: $30 $31

    ld [hl-], a                                   ; $705f: $32
    rst $38                                       ; $7060: $ff
    inc sp                                        ; $7061: $33
    inc [hl]                                      ; $7062: $34
    dec [hl]                                      ; $7063: $35
    ld [hl], $8f                                  ; $7064: $36 $8f
    adc a                                         ; $7066: $8f
    scf                                           ; $7067: $37

jr_07a_7068:
    jr c, jr_07a_7059                             ; $7068: $38 $ef

    add hl, sp                                    ; $706a: $39
    ld a, [hl-]                                   ; $706b: $3a
    dec sp                                        ; $706c: $3b
    inc a                                         ; $706d: $3c
    add b                                         ; $706e: $80
    db $ed                                        ; $706f: $ed
    dec a                                         ; $7070: $3d
    ld a, $3f                                     ; $7071: $3e $3f
    rst $38                                       ; $7073: $ff
    ld b, b                                       ; $7074: $40
    ld b, c                                       ; $7075: $41
    ld b, d                                       ; $7076: $42
    ld b, e                                       ; $7077: $43
    ld b, h                                       ; $7078: $44
    adc a                                         ; $7079: $8f
    adc a                                         ; $707a: $8f

jr_07a_707b:
    ld b, l                                       ; $707b: $45
    rst $18                                       ; $707c: $df
    ld b, [hl]                                    ; $707d: $46
    ld b, a                                       ; $707e: $47
    ld c, b                                       ; $707f: $48
    ld c, c                                       ; $7080: $49
    ld c, d                                       ; $7081: $4a
    ld h, b                                       ; $7082: $60
    db $ed                                        ; $7083: $ed
    ld c, e                                       ; $7084: $4b
    ld c, h                                       ; $7085: $4c
    rst $38                                       ; $7086: $ff
    ld c, l                                       ; $7087: $4d
    ld c, [hl]                                    ; $7088: $4e
    dec bc                                        ; $7089: $0b
    ld c, a                                       ; $708a: $4f
    ld d, b                                       ; $708b: $50
    ld d, c                                       ; $708c: $51
    adc a                                         ; $708d: $8f
    adc a                                         ; $708e: $8f
    cp a                                          ; $708f: $bf

jr_07a_7090:
    ld d, d                                       ; $7090: $52
    ld d, e                                       ; $7091: $53
    ld d, h                                       ; $7092: $54
    ld d, l                                       ; $7093: $55
    ld d, [hl]                                    ; $7094: $56
    dec a                                         ; $7095: $3d
    ld b, b                                       ; $7096: $40
    xor $57                                       ; $7097: $ee $57
    rst $38                                       ; $7099: $ff
    ld e, b                                       ; $709a: $58
    ld e, c                                       ; $709b: $59
    ld e, d                                       ; $709c: $5a
    ld e, e                                       ; $709d: $5b
    ld e, h                                       ; $709e: $5c
    ld e, l                                       ; $709f: $5d
    adc a                                         ; $70a0: $8f
    adc a                                         ; $70a1: $8f
    rst $38                                       ; $70a2: $ff
    ld e, [hl]                                    ; $70a3: $5e
    ld e, a                                       ; $70a4: $5f
    ld h, b                                       ; $70a5: $60
    ld h, c                                       ; $70a6: $61
    ld h, d                                       ; $70a7: $62
    ld h, e                                       ; $70a8: $63
    ld h, h                                       ; $70a9: $64
    ld h, l                                       ; $70aa: $65
    cp $20                                        ; $70ab: $fe $20
    db $ed                                        ; $70ad: $ed
    ld h, [hl]                                    ; $70ae: $66
    ld h, a                                       ; $70af: $67
    ld l, b                                       ; $70b0: $68
    ld l, c                                       ; $70b1: $69
    ld l, d                                       ; $70b2: $6a
    ld l, e                                       ; $70b3: $6b
    adc a                                         ; $70b4: $8f
    rst $38                                       ; $70b5: $ff
    adc a                                         ; $70b6: $8f
    ld l, h                                       ; $70b7: $6c
    ld l, l                                       ; $70b8: $6d
    ld l, [hl]                                    ; $70b9: $6e
    ld l, a                                       ; $70ba: $6f
    ld [hl], b                                    ; $70bb: $70
    ld [hl], c                                    ; $70bc: $71
    ld [hl], d                                    ; $70bd: $72
    db $fd                                        ; $70be: $fd
    ld [hl], e                                    ; $70bf: $73
    nop                                           ; $70c0: $00
    db $ed                                        ; $70c1: $ed
    ld [hl], h                                    ; $70c2: $74
    inc bc                                        ; $70c3: $03
    ld [hl], l                                    ; $70c4: $75
    halt                                          ; $70c5: $76
    ld [hl], a                                    ; $70c6: $77
    ld a, b                                       ; $70c7: $78
    rst $38                                       ; $70c8: $ff
    adc a                                         ; $70c9: $8f
    adc a                                         ; $70ca: $8f
    ld a, c                                       ; $70cb: $79
    ld a, d                                       ; $70cc: $7a
    ld a, e                                       ; $70cd: $7b
    ld a, h                                       ; $70ce: $7c
    ld a, l                                       ; $70cf: $7d
    ld a, [hl]                                    ; $70d0: $7e
    ei                                            ; $70d1: $fb
    ld a, a                                       ; $70d2: $7f
    add b                                         ; $70d3: $80
    ldh [$cd], a                                  ; $70d4: $e0 $cd
    add c                                         ; $70d6: $81
    add d                                         ; $70d7: $82
    add e                                         ; $70d8: $83
    add h                                         ; $70d9: $84
    add l                                         ; $70da: $85
    rst $38                                       ; $70db: $ff
    add [hl]                                      ; $70dc: $86
    adc a                                         ; $70dd: $8f
    adc a                                         ; $70de: $8f
    add a                                         ; $70df: $87
    adc b                                         ; $70e0: $88
    adc c                                         ; $70e1: $89
    adc d                                         ; $70e2: $8a
    adc e                                         ; $70e3: $8b
    rst $30                                       ; $70e4: $f7
    adc h                                         ; $70e5: $8c
    adc l                                         ; $70e6: $8d
    adc [hl]                                      ; $70e7: $8e
    ret nz                                        ; $70e8: $c0

    call $9190                                    ; $70e9: $cd $90 $91
    sub d                                         ; $70ec: $92
    sub e                                         ; $70ed: $93
    rst $38                                       ; $70ee: $ff
    sub h                                         ; $70ef: $94
    dec bc                                        ; $70f0: $0b
    adc a                                         ; $70f1: $8f
    adc a                                         ; $70f2: $8f
    sub l                                         ; $70f3: $95
    sub [hl]                                      ; $70f4: $96
    sub a                                         ; $70f5: $97
    sbc b                                         ; $70f6: $98
    rst $28                                       ; $70f7: $ef
    sbc c                                         ; $70f8: $99
    sbc d                                         ; $70f9: $9a
    sbc e                                         ; $70fa: $9b
    sbc h                                         ; $70fb: $9c
    and b                                         ; $70fc: $a0
    call $9d05                                    ; $70fd: $cd $05 $9d
    sbc [hl]                                      ; $7100: $9e
    rst $38                                       ; $7101: $ff
    sbc a                                         ; $7102: $9f
    and b                                         ; $7103: $a0
    and c                                         ; $7104: $a1
    adc a                                         ; $7105: $8f
    adc a                                         ; $7106: $8f
    and d                                         ; $7107: $a2
    and e                                         ; $7108: $a3
    and h                                         ; $7109: $a4
    rst $18                                       ; $710a: $df
    and l                                         ; $710b: $a5
    and [hl]                                      ; $710c: $a6
    and a                                         ; $710d: $a7
    xor b                                         ; $710e: $a8
    xor c                                         ; $710f: $a9
    ldh [$ee], a                                  ; $7110: $e0 $ee
    dec b                                         ; $7112: $05
    xor d                                         ; $7113: $aa
    rst $38                                       ; $7114: $ff
    xor e                                         ; $7115: $ab
    xor h                                         ; $7116: $ac
    xor l                                         ; $7117: $ad
    adc a                                         ; $7118: $8f
    adc a                                         ; $7119: $8f
    xor [hl]                                      ; $711a: $ae
    xor a                                         ; $711b: $af
    or b                                          ; $711c: $b0
    rst $18                                       ; $711d: $df
    or c                                          ; $711e: $b1
    or d                                          ; $711f: $b2
    or e                                          ; $7120: $b3
    or h                                          ; $7121: $b4
    or l                                          ; $7122: $b5
    ldh [$ef], a                                  ; $7123: $e0 $ef
    or [hl]                                       ; $7125: $b6
    or a                                          ; $7126: $b7
    rst $38                                       ; $7127: $ff
    cp b                                          ; $7128: $b8
    cp c                                          ; $7129: $b9
    adc a                                         ; $712a: $8f
    adc a                                         ; $712b: $8f
    cp d                                          ; $712c: $ba
    cp e                                          ; $712d: $bb
    cp h                                          ; $712e: $bc
    cp l                                          ; $712f: $bd
    rst $28                                       ; $7130: $ef
    cp [hl]                                       ; $7131: $be
    cp a                                          ; $7132: $bf
    ret nz                                        ; $7133: $c0

    pop bc                                        ; $7134: $c1
    ret nz                                        ; $7135: $c0

    rst $28                                       ; $7136: $ef
    dec b                                         ; $7137: $05
    jp nz, $ffc3                                  ; $7138: $c2 $c3 $ff

    call nz, $8f8f                                ; $713b: $c4 $8f $8f
    push bc                                       ; $713e: $c5
    add $c7                                       ; $713f: $c6 $c7
    dec bc                                        ; $7141: $0b
    ret z                                         ; $7142: $c8

    di                                            ; $7143: $f3
    ret                                           ; $7144: $c9


    jp z, $ee20                                   ; $7145: $ca $20 $ee

    dec c                                         ; $7148: $0d
    ret nz                                        ; $7149: $c0

    set 1, h                                      ; $714a: $cb $cc
    call $ff8f                                    ; $714c: $cd $8f $ff
    adc a                                         ; $714f: $8f
    adc $cf                                       ; $7150: $ce $cf
    ret nc                                        ; $7152: $d0

    dec bc                                        ; $7153: $0b
    pop de                                        ; $7154: $d1
    jp nc, $fdd3                                  ; $7155: $d2 $d3 $fd

    call nc, $f1e0                                ; $7158: $d4 $e0 $f1
    dec b                                         ; $715b: $05
    push de                                       ; $715c: $d5
    adc a                                         ; $715d: $8f
    adc a                                         ; $715e: $8f
    sub $d7                                       ; $715f: $d6 $d7
    ccf                                           ; $7161: $3f
    ret c                                         ; $7162: $d8

    reti                                          ; $7163: $d9


    jp c, $dcdb                                   ; $7164: $da $db $dc

    db $dd                                        ; $7167: $dd
    ldh [$aa], a                                  ; $7168: $e0 $aa
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    nop                                           ; $716c: $00
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    nop                                           ; $717d: $00
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    db $e3                                        ; $7187: $e3
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
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
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
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
    rst $38                                       ; $72b4: $ff
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
    rst $38                                       ; $72c5: $ff
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
    rst $38                                       ; $72d6: $ff
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
    rst $38                                       ; $72e7: $ff
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
    rst $38                                       ; $72f8: $ff
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
    rst $38                                       ; $7309: $ff
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
    rst $38                                       ; $731a: $ff
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
    rst $38                                       ; $732b: $ff
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
    rst $38                                       ; $733c: $ff
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
    rst $38                                       ; $734d: $ff
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
    rst $38                                       ; $735e: $ff
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
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
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
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
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
    rst $38                                       ; $7467: $ff
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
    rst $38                                       ; $7478: $ff
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
    rst $38                                       ; $7489: $ff
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
    rst $38                                       ; $749a: $ff
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
    rst $38                                       ; $74ab: $ff
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
    rst $38                                       ; $74bc: $ff
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
    rst $38                                       ; $74cd: $ff
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
    rst $38                                       ; $74de: $ff
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
    rst $38                                       ; $74ef: $ff
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
    rst $38                                       ; $7500: $ff
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
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
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
    rst $38                                       ; $7631: $ff
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
    rst $38                                       ; $7642: $ff
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
    rst $38                                       ; $7653: $ff
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
    rst $38                                       ; $7664: $ff
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
    rst $38                                       ; $7675: $ff
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
    rst $38                                       ; $7686: $ff
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
    rst $38                                       ; $7697: $ff
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
    rst $38                                       ; $76a8: $ff
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
    rst $38                                       ; $76b9: $ff
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
    rst $38                                       ; $76ca: $ff
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
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
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
    rst $38                                       ; $77d3: $ff
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
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
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
    rst $38                                       ; $77f5: $ff
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
    rst $38                                       ; $7806: $ff
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
    rst $38                                       ; $7817: $ff
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
    rst $38                                       ; $7828: $ff
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
    rst $38                                       ; $7839: $ff
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

Jump_07a_78b6:
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

Call_07a_7923:
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

Call_07a_7a3f:
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

Jump_07a_7c9f:
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

Call_07a_7e38:
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

Jump_07a_7e7e:
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

Jump_07a_7f80:
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
