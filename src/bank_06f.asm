; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

    call z, $e247                                 ; $4000: $cc $47 $e2
    ld d, b                                       ; $4003: $50
    ld hl, sp+$5a                                 ; $4004: $f8 $5a
    ld e, d                                       ; $4006: $5a
    ld h, l                                       ; $4007: $65
    ld c, $40                                     ; $4008: $0e $40
    and h                                         ; $400a: $a4
    ld [hl], c                                    ; $400b: $71
    xor $79                                       ; $400c: $ee $79
    ld d, $40                                     ; $400e: $16 $40
    ld d, a                                       ; $4010: $57
    ld b, e                                       ; $4011: $43
    add d                                         ; $4012: $82
    ld b, a                                       ; $4013: $47
    sbc l                                         ; $4014: $9d
    ld b, a                                       ; $4015: $47
    ld sp, $ff0d                                  ; $4016: $31 $0d $ff
    rst $38                                       ; $4019: $ff
    rst $38                                       ; $401a: $ff
    rst $38                                       ; $401b: $ff
    ld a, [c]                                     ; $401c: $f2
    pop af                                        ; $401d: $f1
    ld c, $0e                                     ; $401e: $0e $0e
    call c, $c0ff                                 ; $4020: $dc $ff $c0
    db $fd                                        ; $4023: $fd
    add hl, bc                                    ; $4024: $09
    ld c, $bb                                     ; $4025: $0e $bb
    and $f2                                       ; $4027: $e6 $f2
    db $e3                                        ; $4029: $e3
    ld l, $c9                                     ; $402a: $2e $c9
    rst $38                                       ; $402c: $ff
    ret nz                                        ; $402d: $c0

    xor $ca                                       ; $402e: $ee $ca
    db $e3                                        ; $4030: $e3
    ld [hl], d                                    ; $4031: $72
    db $e3                                        ; $4032: $e3
    nop                                           ; $4033: $00
    cp [hl]                                       ; $4034: $be
    rst $38                                       ; $4035: $ff
    ld b, l                                       ; $4036: $45
    db $e4                                        ; $4037: $e4
    reti                                          ; $4038: $d9


    db $e4                                        ; $4039: $e4
    add b                                         ; $403a: $80
    db $e3                                        ; $403b: $e3
    jp z, $f7e1                                   ; $403c: $ca $e1 $f7

    db $e3                                        ; $403f: $e3
    jp nz, $b8e5                                  ; $4040: $c2 $e5 $b8

    cp $00                                        ; $4043: $fe $00
    sub a                                         ; $4045: $97
    db $e4                                        ; $4046: $e4
    ld b, b                                       ; $4047: $40
    ld [c], a                                     ; $4048: $e2
    adc h                                         ; $4049: $8c
    ld a, [c]                                     ; $404a: $f2
    halt                                          ; $404b: $76
    ei                                            ; $404c: $fb
    ld e, c                                       ; $404d: $59
    db $f4                                        ; $404e: $f4
    pop af                                        ; $404f: $f1
    ret z                                         ; $4050: $c8

    jr c, @-$0f                                   ; $4051: $38 $ef

    inc h                                         ; $4053: $24
    rst $28                                       ; $4054: $ef
    nop                                           ; $4055: $00
    ld a, e                                       ; $4056: $7b
    and $c0                                       ; $4057: $e6 $c0
    rst $28                                       ; $4059: $ef

jr_06f_405a:
    add hl, bc                                    ; $405a: $09
    ei                                            ; $405b: $fb
    sub h                                         ; $405c: $94
    db $ec                                        ; $405d: $ec
    cp h                                          ; $405e: $bc
    pop bc                                        ; $405f: $c1
    pop bc                                        ; $4060: $c1
    call nz, $d92c                                ; $4061: $c4 $2c $d9
    and h                                         ; $4064: $a4
    rst $00                                       ; $4065: $c7
    nop                                           ; $4066: $00
    ld b, l                                       ; $4067: $45
    rst $00                                       ; $4068: $c7
    ld a, a                                       ; $4069: $7f
    jp $ffc0                                      ; $406a: $c3 $c0 $ff


    dec b                                         ; $406d: $05
    push de                                       ; $406e: $d5
    rst $00                                       ; $406f: $c7
    ldh a, [$3c]                                  ; $4070: $f0 $3c
    ret c                                         ; $4072: $d8

    pop de                                        ; $4073: $d1
    and l                                         ; $4074: $a5
    add b                                         ; $4075: $80
    db $ec                                        ; $4076: $ec
    nop                                           ; $4077: $00
    ld b, d                                       ; $4078: $42
    pop bc                                        ; $4079: $c1
    ld hl, sp-$5c                                 ; $407a: $f8 $a4
    jr nc, @-$38                                  ; $407c: $30 $c6

    and b                                         ; $407e: $a0
    call c, $d5ce                                 ; $407f: $dc $ce $d5
    jr nc, jr_06f_405a                            ; $4082: $30 $d6

    pop de                                        ; $4084: $d1
    and a                                         ; $4085: $a7
    ld b, $c5                                     ; $4086: $06 $c5
    ld [hl], b                                    ; $4088: $70
    sub [hl]                                      ; $4089: $96
    xor d                                         ; $408a: $aa
    ld a, h                                       ; $408b: $7c
    db $e4                                        ; $408c: $e4
    db $eb                                        ; $408d: $eb
    sbc h                                         ; $408e: $9c
    ld b, b                                       ; $408f: $40
    rst $20                                       ; $4090: $e7
    ld c, $0d                                     ; $4091: $0e $0d
    dec l                                         ; $4093: $2d
    ld c, e                                       ; $4094: $4b
    xor b                                         ; $4095: $a8
    nop                                           ; $4096: $00
    jp Jump_06f_76d0                              ; $4097: $c3 $d0 $76


    db $db                                        ; $409a: $db
    ld hl, sp-$39                                 ; $409b: $f8 $c7
    add a                                         ; $409d: $87
    push hl                                       ; $409e: $e5
    or l                                          ; $409f: $b5
    call $d176                                    ; $40a0: $cd $76 $d1
    add hl, bc                                    ; $40a3: $09
    xor h                                         ; $40a4: $ac
    add b                                         ; $40a5: $80
    ldh a, [$80]                                  ; $40a6: $f0 $80
    or d                                          ; $40a8: $b2
    jp hl                                         ; $40a9: $e9


    add hl, bc                                    ; $40aa: $09
    cp a                                          ; $40ab: $bf
    ld c, d                                       ; $40ac: $4a
    xor b                                         ; $40ad: $a8
    add a                                         ; $40ae: $87
    add a                                         ; $40af: $87
    dec l                                         ; $40b0: $2d
    adc c                                         ; $40b1: $89
    ld c, a                                       ; $40b2: $4f
    xor [hl]                                      ; $40b3: $ae
    ld d, [hl]                                    ; $40b4: $56
    add h                                         ; $40b5: $84
    ld c, $5d                                     ; $40b6: $0e $5d
    ld l, $02                                     ; $40b8: $2e $02
    pop hl                                        ; $40ba: $e1
    dec c                                         ; $40bb: $0d
    ld c, $4e                                     ; $40bc: $0e $4e
    rst $38                                       ; $40be: $ff

Jump_06f_40bf:
    db $e3                                        ; $40bf: $e3
    ld l, $f3                                     ; $40c0: $2e $f3
    pop bc                                        ; $40c2: $c1
    and b                                         ; $40c3: $a0
    ld b, l                                       ; $40c4: $45
    add b                                         ; $40c5: $80
    xor $a9                                       ; $40c6: $ee $a9

Jump_06f_40c8:
    cp e                                          ; $40c8: $bb

Jump_06f_40c9:
    adc [hl]                                      ; $40c9: $8e
    sub $6a                                       ; $40ca: $d6 $6a
    db $dd                                        ; $40cc: $dd
    jp $966e                                      ; $40cd: $c3 $6e $96


    and e                                         ; $40d0: $a3
    dec bc                                        ; $40d1: $0b
    ret nz                                        ; $40d2: $c0

    cp c                                          ; $40d3: $b9
    ldh [rLYC], a                                 ; $40d4: $e0 $45
    add d                                         ; $40d6: $82
    add d                                         ; $40d7: $82
    xor l                                         ; $40d8: $ad
    di                                            ; $40d9: $f3
    ld l, d                                       ; $40da: $6a
    sub [hl]                                      ; $40db: $96
    ld l, [hl]                                    ; $40dc: $6e
    pop bc                                        ; $40dd: $c1
    pop hl                                        ; $40de: $e1
    ld c, e                                       ; $40df: $4b
    dec bc                                        ; $40e0: $0b
    add e                                         ; $40e1: $83
    dec bc                                        ; $40e2: $0b
    dec hl                                        ; $40e3: $2b
    ld d, c                                       ; $40e4: $51
    and d                                         ; $40e5: $a2
    ld a, h                                       ; $40e6: $7c
    ldh [$bc], a                                  ; $40e7: $e0 $bc
    ld a, h                                       ; $40e9: $7c
    ld e, $ad                                     ; $40ea: $1e $ad
    add d                                         ; $40ec: $82

Jump_06f_40ed:
    pop hl                                        ; $40ed: $e1
    dec bc                                        ; $40ee: $0b
    cpl                                           ; $40ef: $2f
    dec c                                         ; $40f0: $0d
    dec bc                                        ; $40f1: $0b
    dec bc                                        ; $40f2: $0b
    ld c, e                                       ; $40f3: $4b
    cp [hl]                                       ; $40f4: $be
    ldh [$0b], a                                  ; $40f5: $e0 $0b
    cp a                                          ; $40f7: $bf
    db $e4                                        ; $40f8: $e4
    ld a, $bf                                     ; $40f9: $3e $bf
    db $fc                                        ; $40fb: $fc
    rrca                                          ; $40fc: $0f
    ld h, [hl]                                    ; $40fd: $66
    pop bc                                        ; $40fe: $c1
    ld [c], a                                     ; $40ff: $e2
    dec bc                                        ; $4100: $0b
    dec c                                         ; $4101: $0d
    ld l, e                                       ; $4102: $6b
    ld l, e                                       ; $4103: $6b
    ld c, e                                       ; $4104: $4b
    ld c, e                                       ; $4105: $4b
    add c                                         ; $4106: $81
    ld l, e                                       ; $4107: $6b
    rst $30                                       ; $4108: $f7
    pop hl                                        ; $4109: $e1
    ld a, [hl]                                    ; $410a: $7e
    pop hl                                        ; $410b: $e1
    scf                                           ; $410c: $37
    and l                                         ; $410d: $a5
    inc a                                         ; $410e: $3c
    ld a, b                                       ; $410f: $78
    sbc e                                         ; $4110: $9b
    and l                                         ; $4111: $a5
    inc b                                         ; $4112: $04
    ld [c], a                                     ; $4113: $e2
    dec bc                                        ; $4114: $0b
    ld [hl-], a                                   ; $4115: $32
    cp d                                          ; $4116: $ba
    jp nz, $b50d                                  ; $4117: $c2 $0d $b5

    and b                                         ; $411a: $a0
    ld a, a                                       ; $411b: $7f
    ldh [$0d], a                                  ; $411c: $e0 $0d
    ld c, [hl]                                    ; $411e: $4e
    ld a, [hl]                                    ; $411f: $7e
    sbc d                                         ; $4120: $9a
    ld c, a                                       ; $4121: $4f
    ld l, d                                       ; $4122: $6a
    ld a, h                                       ; $4123: $7c
    bit 0, b                                      ; $4124: $cb $40
    ld b, l                                       ; $4126: $45
    ldh [$0d], a                                  ; $4127: $e0 $0d
    dec l                                         ; $4129: $2d
    dec l                                         ; $412a: $2d
    dec l                                         ; $412b: $2d
    inc c                                         ; $412c: $0c
    rst $38                                       ; $412d: $ff
    ldh [$8d], a                                  ; $412e: $e0 $8d
    inc l                                         ; $4130: $2c
    cp e                                          ; $4131: $bb
    jp nz, $0b0d                                  ; $4132: $c2 $0d $0b

    cp c                                          ; $4135: $b9
    ld b, e                                       ; $4136: $43
    dec sp                                        ; $4137: $3b
    or [hl]                                       ; $4138: $b6
    dec e                                         ; $4139: $1d
    ret                                           ; $413a: $c9


    dec c                                         ; $413b: $0d
    jr jr_06f_4156                                ; $413c: $18 $18

    add b                                         ; $413e: $80
    ld b, d                                       ; $413f: $42
    ldh [$c1], a                                  ; $4140: $e0 $c1
    ld [c], a                                     ; $4142: $e2
    inc c                                         ; $4143: $0c
    inc l                                         ; $4144: $2c
    cp a                                          ; $4145: $bf
    ldh [$3e], a                                  ; $4146: $e0 $3e
    pop hl                                        ; $4148: $e1
    ret nz                                        ; $4149: $c0

    ei                                            ; $414a: $fb
    call c, $8cd0                                 ; $414b: $dc $d0 $8c
    add $c0                                       ; $414e: $c6 $c0
    dec l                                         ; $4150: $2d
    dec c                                         ; $4151: $0d
    inc l                                         ; $4152: $2c
    ret nz                                        ; $4153: $c0

    ld [c], a                                     ; $4154: $e2
    inc c                                         ; $4155: $0c

jr_06f_4156:
    inc l                                         ; $4156: $2c
    and c                                         ; $4157: $a1
    inc c                                         ; $4158: $0c
    db $f4                                        ; $4159: $f4
    jp nz, Jump_06f_69a1                          ; $415a: $c2 $a1 $69

    scf                                           ; $415d: $37
    ld e, c                                       ; $415e: $59
    dec bc                                        ; $415f: $0b
    ld b, d                                       ; $4160: $42
    dec c                                         ; $4161: $0d
    ld c, b                                       ; $4162: $48
    ret nz                                        ; $4163: $c0

    dec l                                         ; $4164: $2d
    add d                                         ; $4165: $82
    ret nz                                        ; $4166: $c0

    db $e4                                        ; $4167: $e4
    inc c                                         ; $4168: $0c
    ret nz                                        ; $4169: $c0

    ldh [$74], a                                  ; $416a: $e0 $74
    ret nz                                        ; $416c: $c0

    ld l, [hl]                                    ; $416d: $6e
    ld b, e                                       ; $416e: $43
    dec a                                         ; $416f: $3d
    ld e, a                                       ; $4170: $5f
    ret nz                                        ; $4171: $c0

    and $0b                                       ; $4172: $e6 $0b
    ld [bc], a                                    ; $4174: $02
    pop bc                                        ; $4175: $c1
    push hl                                       ; $4176: $e5
    inc l                                         ; $4177: $2c
    ccf                                           ; $4178: $3f
    ret nz                                        ; $4179: $c0

    add b                                         ; $417a: $80
    pop hl                                        ; $417b: $e1
    ret nz                                        ; $417c: $c0

    ld c, b                                       ; $417d: $48
    ld a, a                                       ; $417e: $7f
    ld d, d                                       ; $417f: $52
    ld b, d                                       ; $4180: $42
    add a                                         ; $4181: $87
    add b                                         ; $4182: $80
    ldh [$0a], a                                  ; $4183: $e0 $0a
    rst $00                                       ; $4185: $c7
    and b                                         ; $4186: $a0

Jump_06f_4187:
    ld l, h                                       ; $4187: $6c
    add b                                         ; $4188: $80
    db $e4                                        ; $4189: $e4
    ld c, h                                       ; $418a: $4c
    ld b, b                                       ; $418b: $40
    db $e4                                        ; $418c: $e4
    ret nz                                        ; $418d: $c0

    ld e, h                                       ; $418e: $5c
    ld d, e                                       ; $418f: $53
    inc h                                         ; $4190: $24
    ld b, b                                       ; $4191: $40
    db $e3                                        ; $4192: $e3
    ld [hl], $bf                                  ; $4193: $36 $bf
    pop hl                                        ; $4195: $e1
    ld l, h                                       ; $4196: $6c
    ld c, h                                       ; $4197: $4c
    cp a                                          ; $4198: $bf
    jp nz, Jump_06f_4c6c                          ; $4199: $c2 $6c $4c

    ld a, [c]                                     ; $419c: $f2
    jp nz, $eb80                                  ; $419d: $c2 $80 $eb

    ld h, b                                       ; $41a0: $60
    or [hl]                                       ; $41a1: $b6

jr_06f_41a2:
    ld c, b                                       ; $41a2: $48
    sub e                                         ; $41a3: $93
    add hl, hl                                    ; $41a4: $29
    ld de, $c025                                  ; $41a5: $11 $25 $c0
    ldh [$98], a                                  ; $41a8: $e0 $98
    ld b, b                                       ; $41aa: $40
    ld c, h                                       ; $41ab: $4c
    ld c, h                                       ; $41ac: $4c
    add d                                         ; $41ad: $82
    ret nz                                        ; $41ae: $c0

    adc e                                         ; $41af: $8b
    ld l, h                                       ; $41b0: $6c
    ld l, h                                       ; $41b1: $6c
    ld b, b                                       ; $41b2: $40
    jp nz, $c02d                                  ; $41b3: $c2 $2d $c0

    or $30                                        ; $41b6: $f6 $30
    inc h                                         ; $41b8: $24
    ld d, e                                       ; $41b9: $53
    jr z, jr_06f_41e9                             ; $41ba: $28 $2d

    add hl, sp                                    ; $41bc: $39
    ld c, $09                                     ; $41bd: $0e $09
    and c                                         ; $41bf: $a1
    ld c, c                                       ; $41c0: $49
    and b                                         ; $41c1: $a0
    ld c, h                                       ; $41c2: $4c
    ld c, h                                       ; $41c3: $4c
    ld c, h                                       ; $41c4: $4c
    pop bc                                        ; $41c5: $c1
    pop hl                                        ; $41c6: $e1
    db $f4                                        ; $41c7: $f4
    and b                                         ; $41c8: $a0
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    jp Jump_000_0629                              ; $41cb: $c3 $29 $06


    ld [hl], e                                    ; $41ce: $73
    ld l, e                                       ; $41cf: $6b
    xor d                                         ; $41d0: $aa
    ld c, $d0                                     ; $41d1: $0e $d0
    add d                                         ; $41d3: $82
    db $fd                                        ; $41d4: $fd
    pop bc                                        ; $41d5: $c1
    add l                                         ; $41d6: $85
    and d                                         ; $41d7: $a2
    inc [hl]                                      ; $41d8: $34
    ret nz                                        ; $41d9: $c0

    rrca                                          ; $41da: $0f
    dec l                                         ; $41db: $2d
    dec l                                         ; $41dc: $2d
    ld c, $6e                                     ; $41dd: $0e $6e
    ld a, [hl]                                    ; $41df: $7e
    ld b, a                                       ; $41e0: $47
    ld b, h                                       ; $41e1: $44
    ld a, a                                       ; $41e2: $7f

Jump_06f_41e3:
    adc a                                         ; $41e3: $8f
    add d                                         ; $41e4: $82
    ld a, e                                       ; $41e5: $7b
    and c                                         ; $41e6: $a1
    nop                                           ; $41e7: $00
    cp d                                          ; $41e8: $ba

jr_06f_41e9:
    add d                                         ; $41e9: $82
    pop bc                                        ; $41ea: $c1
    ld [c], a                                     ; $41eb: $e2
    sbc b                                         ; $41ec: $98
    adc e                                         ; $41ed: $8b
    ld b, d                                       ; $41ee: $42
    jp c, $c0fc                                   ; $41ef: $da $fc $c0

    adc a                                         ; $41f2: $8f
    add e                                         ; $41f3: $83
    cp l                                          ; $41f4: $bd
    add b                                         ; $41f5: $80
    ld a, b                                       ; $41f6: $78
    and c                                         ; $41f7: $a1
    nop                                           ; $41f8: $00

jr_06f_41f9:
    pop bc                                        ; $41f9: $c1
    db $e4                                        ; $41fa: $e4
    cp c                                          ; $41fb: $b9
    ld a, [hl-]                                   ; $41fc: $3a
    add h                                         ; $41fd: $84
    ld c, b                                       ; $41fe: $48
    dec c                                         ; $41ff: $0d
    add [hl]                                      ; $4200: $86
    add $81                                       ; $4201: $c6 $81
    cp d                                          ; $4203: $ba
    add b                                         ; $4204: $80
    add d                                         ; $4205: $82
    push hl                                       ; $4206: $e5
    ld l, h                                       ; $4207: $6c
    jr z, jr_06f_41a2                             ; $4208: $28 $98

    dec hl                                        ; $420a: $2b
    rrca                                          ; $420b: $0f
    ret nz                                        ; $420c: $c0

    ld [$a1d6], a                                 ; $420d: $ea $d6 $a1
    ld c, [hl]                                    ; $4210: $4e
    ld l, $89                                     ; $4211: $2e $89
    add c                                         ; $4213: $81
    add c                                         ; $4214: $81
    add b                                         ; $4215: $80
    dec l                                         ; $4216: $2d

Jump_06f_4217:
    and c                                         ; $4217: $a1
    dec bc                                        ; $4218: $0b
    ld [hl], l                                    ; $4219: $75
    ld h, c                                       ; $421a: $61
    halt                                          ; $421b: $76
    ld b, [hl]                                    ; $421c: $46
    ld a, d                                       ; $421d: $7a
    inc d                                         ; $421e: $14
    db $e4                                        ; $421f: $e4
    add hl, bc                                    ; $4220: $09
    ld c, l                                       ; $4221: $4d
    sub [hl]                                      ; $4222: $96
    and c                                         ; $4223: $a1
    ld c, l                                       ; $4224: $4d
    ld a, e                                       ; $4225: $7b
    ld c, [hl]                                    ; $4226: $4e
    ld l, $ff                                     ; $4227: $2e $ff
    push hl                                       ; $4229: $e5
    ld l, [hl]                                    ; $422a: $6e
    dec c                                         ; $422b: $0d
    ld c, l                                       ; $422c: $4d
    ld c, l                                       ; $422d: $4d
    add b                                         ; $422e: $80
    db $eb                                        ; $422f: $eb
    nop                                           ; $4230: $00
    ld a, h                                       ; $4231: $7c
    jr jr_06f_41f9                                ; $4232: $18 $c5

    pop hl                                        ; $4234: $e1
    db $f4                                        ; $4235: $f4
    and h                                         ; $4236: $a4
    jp nz, $c642                                  ; $4237: $c2 $42 $c6

    ldh [$b0], a                                  ; $423a: $e0 $b0
    pop hl                                        ; $423c: $e1
    cp a                                          ; $423d: $bf
    pop hl                                        ; $423e: $e1
    ld a, [de]                                    ; $423f: $1a
    inc [hl]                                      ; $4240: $34
    inc c                                         ; $4241: $0c
    or [hl]                                       ; $4242: $b6
    ld c, a                                       ; $4243: $4f
    cp b                                          ; $4244: $b8
    ld h, e                                       ; $4245: $63
    ld l, [hl]                                    ; $4246: $6e
    dec bc                                        ; $4247: $0b
    rst $38                                       ; $4248: $ff
    ldh [$be], a                                  ; $4249: $e0 $be
    ld [c], a                                     ; $424b: $e2
    ret nz                                        ; $424c: $c0

    db $e3                                        ; $424d: $e3
    ld b, c                                       ; $424e: $41
    add hl, de                                    ; $424f: $19
    ld hl, sp+$46                                 ; $4250: $f8 $46
    and l                                         ; $4252: $a5
    sbc h                                         ; $4253: $9c
    inc b                                         ; $4254: $04
    ld d, b                                       ; $4255: $50
    ldh [rKEY1], a                                ; $4256: $e0 $4d
    ld c, $2b                                     ; $4258: $0e $2b
    dec hl                                        ; $425a: $2b
    ld c, e                                       ; $425b: $4b
    ldh [$fd], a                                  ; $425c: $e0 $fd
    pop hl                                        ; $425e: $e1
    ld b, l                                       ; $425f: $45
    ld h, c                                       ; $4260: $61
    ret nz                                        ; $4261: $c0

    db $eb                                        ; $4262: $eb
    dec b                                         ; $4263: $05
    ld d, [hl]                                    ; $4264: $56
    cp [hl]                                       ; $4265: $be
    adc b                                         ; $4266: $88
    ld l, $4d                                     ; $4267: $2e $4d
    ld l, [hl]                                    ; $4269: $6e
    add hl, bc                                    ; $426a: $09
    ld l, e                                       ; $426b: $6b
    add b                                         ; $426c: $80
    pop hl                                        ; $426d: $e1
    cp l                                          ; $426e: $bd
    ld b, b                                       ; $426f: $40
    ld c, [hl]                                    ; $4270: $4e
    dec b                                         ; $4271: $05
    ld b, b                                       ; $4272: $40
    and [hl]                                      ; $4273: $a6
    and $7a                                       ; $4274: $e6 $7a
    ld e, b                                       ; $4276: $58
    cp [hl]                                       ; $4277: $be
    adc c                                         ; $4278: $89
    ld d, $4c                                     ; $4279: $16 $4c
    ldh [$0b], a                                  ; $427b: $e0 $0b
    dec hl                                        ; $427d: $2b
    ld a, a                                       ; $427e: $7f
    ld b, c                                       ; $427f: $41
    dec l                                         ; $4280: $2d
    dec sp                                        ; $4281: $3b
    ldh [$fc], a                                  ; $4282: $e0 $fc
    ret nz                                        ; $4284: $c0

    ld bc, $30e8                                  ; $4285: $01 $e8 $30
    ld b, c                                       ; $4288: $41
    sub e                                         ; $4289: $93
    add b                                         ; $428a: $80
    inc c                                         ; $428b: $0c
    ret nz                                        ; $428c: $c0

    db $e3                                        ; $428d: $e3
    rst $38                                       ; $428e: $ff
    db $e4                                        ; $428f: $e4
    ld l, $4d                                     ; $4290: $2e $4d
    add b                                         ; $4292: $80

jr_06f_4293:
    ret nz                                        ; $4293: $c0

    ld b, $3a                                     ; $4294: $06 $3a
    ld c, $3a                                     ; $4296: $0e $3a
    ld c, a                                       ; $4298: $4f
    ld c, l                                       ; $4299: $4d
    ld c, $0b                                     ; $429a: $0e $0b
    ld b, b                                       ; $429c: $40
    push hl                                       ; $429d: $e5
    add b                                         ; $429e: $80
    ldh [$28], a                                  ; $429f: $e0 $28
    add l                                         ; $42a1: $85
    ld b, e                                       ; $42a2: $43
    ld e, c                                       ; $42a3: $59
    adc $ab                                       ; $42a4: $ce $ab
    db $eb                                        ; $42a6: $eb
    dec l                                         ; $42a7: $2d
    ld c, [hl]                                    ; $42a8: $4e
    ld l, $02                                     ; $42a9: $2e $02
    ld b, c                                       ; $42ab: $41
    nop                                           ; $42ac: $00
    ld b, b                                       ; $42ad: $40
    ld c, e                                       ; $42ae: $4b
    ld c, $a1                                     ; $42af: $0e $a1
    ld l, [hl]                                    ; $42b1: $6e
    ld bc, $20c1                                  ; $42b2: $01 $c1 $20
    adc c                                         ; $42b5: $89
    dec sp                                        ; $42b6: $3b
    ld e, h                                       ; $42b7: $5c
    ld a, [$4d61]                                 ; $42b8: $fa $61 $4d
    ret nz                                        ; $42bb: $c0

    and b                                         ; $42bc: $a0
    dec hl                                        ; $42bd: $2b
    ld c, $ff                                     ; $42be: $0e $ff
    pop hl                                        ; $42c0: $e1
    ld c, $2e                                     ; $42c1: $0e $2e
    ld l, [hl]                                    ; $42c3: $6e
    inc b                                         ; $42c4: $04
    jp nz, $b448                                  ; $42c5: $c2 $48 $b4

    dec sp                                        ; $42c8: $3b
    ld c, a                                       ; $42c9: $4f
    or l                                          ; $42ca: $b5
    inc bc                                        ; $42cb: $03
    nop                                           ; $42cc: $00
    dec c                                         ; $42cd: $0d
    ldh [$7f], a                                  ; $42ce: $e0 $7f
    and e                                         ; $42d0: $a3
    add e                                         ; $42d1: $83
    ldh [$c4], a                                  ; $42d2: $e0 $c4
    and [hl]                                      ; $42d4: $a6
    rlca                                          ; $42d5: $07
    db $fd                                        ; $42d6: $fd
    add b                                         ; $42d7: $80
    push hl                                       ; $42d8: $e5
    cp a                                          ; $42d9: $bf
    db $e4                                        ; $42da: $e4
    db $fd                                        ; $42db: $fd
    db $e3                                        ; $42dc: $e3
    jr nz, jr_06f_430a                            ; $42dd: $20 $2b

    ld h, [hl]                                    ; $42df: $66
    ld [bc], a                                    ; $42e0: $02
    or l                                          ; $42e1: $b5

Jump_06f_42e2:
    pop af                                        ; $42e2: $f1
    or b                                          ; $42e3: $b0
    sbc h                                         ; $42e4: $9c
    add e                                         ; $42e5: $83
    call nz, Call_000_0ee1                        ; $42e6: $c4 $e1 $0e
    cp b                                          ; $42e9: $b8
    pop hl                                        ; $42ea: $e1
    ret nz                                        ; $42eb: $c0

    ei                                            ; $42ec: $fb
    nop                                           ; $42ed: $00
    ld l, e                                       ; $42ee: $6b
    rrca                                          ; $42ef: $0f
    ld d, [hl]                                    ; $42f0: $56
    ld b, e                                       ; $42f1: $43
    add h                                         ; $42f2: $84
    ld [c], a                                     ; $42f3: $e2

Jump_06f_42f4:
    ret nz                                        ; $42f4: $c0

    rst $38                                       ; $42f5: $ff
    ld [hl-], a                                   ; $42f6: $32
    ld d, b                                       ; $42f7: $50
    ld d, $44                                     ; $42f8: $16 $44
    ret nz                                        ; $42fa: $c0

    push hl                                       ; $42fb: $e5
    ld h, a                                       ; $42fc: $67
    add hl, bc                                    ; $42fd: $09
    inc c                                         ; $42fe: $0c
    add d                                         ; $42ff: $82
    ld a, [hl-]                                   ; $4300: $3a
    jp c, Jump_000_0deb                           ; $4301: $da $eb $0d

    dec l                                         ; $4304: $2d
    add b                                         ; $4305: $80
    db $e3                                        ; $4306: $e3
    and b                                         ; $4307: $a0
    pop af                                        ; $4308: $f1
    ld b, b                                       ; $4309: $40

jr_06f_430a:
    ld [hl], e                                    ; $430a: $73
    dec h                                         ; $430b: $25
    add hl, hl                                    ; $430c: $29
    nop                                           ; $430d: $00
    cp b                                          ; $430e: $b8
    add l                                         ; $430f: $85
    inc c                                         ; $4310: $0c
    jr nc, jr_06f_4293                            ; $4311: $30 $80

    ei                                            ; $4313: $fb
    ld sp, hl                                     ; $4314: $f9
    and a                                         ; $4315: $a7
    ld [hl], e                                    ; $4316: $73
    ld [$bbc4], a                                 ; $4317: $ea $c4 $bb
    halt                                          ; $431a: $76
    ld de, $8378                                  ; $431b: $11 $78 $83
    nop                                           ; $431e: $00
    ld b, h                                       ; $431f: $44
    add $5c                                       ; $4320: $c6 $5c
    add h                                         ; $4322: $84
    cp [hl]                                       ; $4323: $be
    rst $38                                       ; $4324: $ff
    halt                                          ; $4325: $76
    ld h, a                                       ; $4326: $67
    adc $84                                       ; $4327: $ce $84
    ld d, e                                       ; $4329: $53
    ld a, [hl+]                                   ; $432a: $2a
    call nz, $c7ff                                ; $432b: $c4 $ff $c7
    jp hl                                         ; $432e: $e9


    nop                                           ; $432f: $00
    res 0, d                                      ; $4330: $cb $82
    ret nz                                        ; $4332: $c0

    rst $38                                       ; $4333: $ff
    dec sp                                        ; $4334: $3b
    ld l, e                                       ; $4335: $6b
    ret nz                                        ; $4336: $c0

    db $eb                                        ; $4337: $eb
    ld [$f978], sp                                ; $4338: $08 $78 $f9
    ld d, h                                       ; $433b: $54
    sub a                                         ; $433c: $97
    dec bc                                        ; $433d: $0b
    and b                                         ; $433e: $a0
    stop                                          ; $433f: $10 $00
    add $dc                                       ; $4341: $c6 $dc
    dec d                                         ; $4343: $15
    adc l                                         ; $4344: $8d
    and b                                         ; $4345: $a0
    rlca                                          ; $4346: $07
    ld a, d                                       ; $4347: $7a
    rst $18                                       ; $4348: $df
    ld l, e                                       ; $4349: $6b
    ld d, b                                       ; $434a: $50
    add b                                         ; $434b: $80
    jp hl                                         ; $434c: $e9


    ld a, $9d                                     ; $434d: $3e $9d
    ld l, d                                       ; $434f: $6a
    add hl, de                                    ; $4350: $19
    nop                                           ; $4351: $00
    add hl, bc                                    ; $4352: $09
    sub c                                         ; $4353: $91
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    ld sp, $ffa0                                  ; $4357: $31 $a0 $ff
    rst $38                                       ; $435a: $ff
    rst $38                                       ; $435b: $ff
    rst $38                                       ; $435c: $ff
    ld a, [c]                                     ; $435d: $f2
    pop af                                        ; $435e: $f1
    ld [c], a                                     ; $435f: $e2
    db $e3                                        ; $4360: $e3
    call c, $faff                                 ; $4361: $dc $ff $fa
    ld sp, hl                                     ; $4364: $f9
    ld a, a                                       ; $4365: $7f
    db $e4                                        ; $4366: $e4
    push hl                                       ; $4367: $e5
    and b                                         ; $4368: $a0
    and b                                         ; $4369: $a0
    sub $d7                                       ; $436a: $d6 $d7
    ret c                                         ; $436c: $d8

    or d                                          ; $436d: $b2
    add sp, -$19                                  ; $436e: $e8 $e7
    call nc, $d4d5                                ; $4370: $d4 $d5 $d4
    ret                                           ; $4373: $c9


    rst $38                                       ; $4374: $ff
    rst $20                                       ; $4375: $e7
    and $e6                                       ; $4376: $e6 $e6
    rst $20                                       ; $4378: $e7
    and b                                         ; $4379: $a0
    rrca                                          ; $437a: $0f
    and b                                         ; $437b: $a0
    reti                                          ; $437c: $d9


    jp c, $cadb                                   ; $437d: $da $db $ca

    db $e4                                        ; $4380: $e4
    or d                                          ; $4381: $b2
    pop hl                                        ; $4382: $e1
    cp [hl]                                       ; $4383: $be
    rst $38                                       ; $4384: $ff
    push hl                                       ; $4385: $e5
    db $e4                                        ; $4386: $e4
    adc $d9                                       ; $4387: $ce $d9
    and $dc                                       ; $4389: $e6 $dc
    db $dd                                        ; $438b: $dd
    sbc $ca                                       ; $438c: $de $ca
    db $e4                                        ; $438e: $e4
    or d                                          ; $438f: $b2
    pop hl                                        ; $4390: $e1
    and b                                         ; $4391: $a0
    call nc, $c238                                ; $4392: $d4 $38 $c2
    push hl                                       ; $4395: $e5
    cp b                                          ; $4396: $b8
    cp $97                                        ; $4397: $fe $97
    db $e4                                        ; $4399: $e4
    rst $18                                       ; $439a: $df
    ldh [$e1], a                                  ; $439b: $e0 $e1
    jp z, $9de8                                   ; $439d: $ca $e8 $9d

    ld a, [c]                                     ; $43a0: $f2
    nop                                           ; $43a1: $00
    ld a, a                                       ; $43a2: $7f
    di                                            ; $43a3: $f3
    ld e, c                                       ; $43a4: $59
    di                                            ; $43a5: $f3
    pop af                                        ; $43a6: $f1
    rst $00                                       ; $43a7: $c7
    xor h                                         ; $43a8: $ac
    ldh a, [rNR50]                                ; $43a9: $f0 $24
    rst $28                                       ; $43ab: $ef
    ld [de], a                                    ; $43ac: $12
    db $e4                                        ; $43ad: $e4
    ld [hl], a                                    ; $43ae: $77
    rst $00                                       ; $43af: $c7
    pop af                                        ; $43b0: $f1
    pop bc                                        ; $43b1: $c1
    nop                                           ; $43b2: $00
    ld c, e                                       ; $43b3: $4b
    rst $38                                       ; $43b4: $ff
    sub h                                         ; $43b5: $94
    db $ed                                        ; $43b6: $ed
    ld [hl], a                                    ; $43b7: $77
    ret nz                                        ; $43b8: $c0

    ld a, b                                       ; $43b9: $78
    call nz, $c3f1                                ; $43ba: $c4 $f1 $c3
    ld c, e                                       ; $43bd: $4b
    rst $38                                       ; $43be: $ff
    dec b                                         ; $43bf: $05
    pop bc                                        ; $43c0: $c1
    sub h                                         ; $43c1: $94
    db $e3                                        ; $43c2: $e3
    nop                                           ; $43c3: $00
    ccf                                           ; $43c4: $3f
    pop bc                                        ; $43c5: $c1
    ld [hl], a                                    ; $43c6: $77
    ret nz                                        ; $43c7: $c0

    add a                                         ; $43c8: $87
    db $e4                                        ; $43c9: $e4
    pop af                                        ; $43ca: $f1
    jp nz, $ffff                                  ; $43cb: $c2 $ff $ff

    dec b                                         ; $43ce: $05
    jp nz, $c385                                  ; $43cf: $c2 $85 $c3

    ld c, [hl]                                    ; $43d2: $4e
    db $e4                                        ; $43d3: $e4
    nop                                           ; $43d4: $00
    add a                                         ; $43d5: $87
    jp hl                                         ; $43d6: $e9


jr_06f_43d7:
    inc a                                         ; $43d7: $3c
    ret c                                         ; $43d8: $d8

    pop de                                        ; $43d9: $d1
    and l                                         ; $43da: $a5
    dec b                                         ; $43db: $05
    pop bc                                        ; $43dc: $c1
    sub h                                         ; $43dd: $94
    db $e3                                        ; $43de: $e3
    ccf                                           ; $43df: $3f
    pop bc                                        ; $43e0: $c1
    ld c, d                                       ; $43e1: $4a
    ret nz                                        ; $43e2: $c0

    ld a, b                                       ; $43e3: $78
    pop bc                                        ; $43e4: $c1
    nop                                           ; $43e5: $00
    inc b                                         ; $43e6: $04
    jp nz, $a26b                                  ; $43e7: $c2 $6b $a2

    ld a, [$e0b6]                                 ; $43ea: $fa $b6 $e0
    rst $08                                       ; $43ed: $cf
    ld c, [hl]                                    ; $43ee: $4e
    db $ed                                        ; $43ef: $ed
    ld l, e                                       ; $43f0: $6b
    and c                                         ; $43f1: $a1
    ld h, e                                       ; $43f2: $63
    call nc, $a5d1                                ; $43f3: $d4 $d1 $a5
    nop                                           ; $43f6: $00
    db $db                                        ; $43f7: $db
    and e                                         ; $43f8: $a3
    sub [hl]                                      ; $43f9: $96
    xor h                                         ; $43fa: $ac
    add $a0                                       ; $43fb: $c6 $a0
    inc [hl]                                      ; $43fd: $34
    and d                                         ; $43fe: $a2
    cp c                                          ; $43ff: $b9
    and d                                         ; $4400: $a2
    rst $38                                       ; $4401: $ff
    sub $e0                                       ; $4402: $d6 $e0
    push bc                                       ; $4404: $c5
    add hl, bc                                    ; $4405: $09
    and l                                         ; $4406: $a5
    nop                                           ; $4407: $00
    cp l                                          ; $4408: $bd
    add e                                         ; $4409: $83
    ei                                            ; $440a: $fb
    add h                                         ; $440b: $84
    ld b, e                                       ; $440c: $43
    res 4, d                                      ; $440d: $cb $a2
    sbc d                                         ; $440f: $9a
    jr jr_06f_43d7                                ; $4410: $18 $c5

    cp l                                          ; $4412: $bd
    add b                                         ; $4413: $80
    ld c, l                                       ; $4414: $4d
    and b                                         ; $4415: $a0
    cp h                                          ; $4416: $bc
    rlc b                                         ; $4417: $cb $00
    xor l                                         ; $4419: $ad
    add h                                         ; $441a: $84
    ldh a, [$83]                                  ; $441b: $f0 $83
    add hl, bc                                    ; $441d: $09
    cp d                                          ; $441e: $ba
    ld d, d                                       ; $441f: $52
    push hl                                       ; $4420: $e5
    ld a, [bc]                                    ; $4421: $0a
    call nz, $c2bc                                ; $4422: $c4 $bc $c2
    or d                                          ; $4425: $b2
    and $37                                       ; $4426: $e6 $37
    di                                            ; $4428: $f3
    add b                                         ; $4429: $80
    add hl, bc                                    ; $442a: $09
    or d                                          ; $442b: $b2
    add e                                         ; $442c: $83
    add $a4                                       ; $442d: $c6 $a4
    ld [$b24f], a                                 ; $442f: $ea $4f $b2
    ld h, d                                       ; $4432: $62
    add c                                         ; $4433: $81
    ret z                                         ; $4434: $c8

    ld h, b                                       ; $4435: $60
    sbc b                                         ; $4436: $98
    add h                                         ; $4437: $84
    sbc a                                         ; $4438: $9f
    dec b                                         ; $4439: $05
    sbc l                                         ; $443a: $9d
    rst $38                                       ; $443b: $ff
    db $e3                                        ; $443c: $e3
    sbc a                                         ; $443d: $9f
    rst $08                                       ; $443e: $cf
    add h                                         ; $443f: $84

jr_06f_4440:
    xor [hl]                                      ; $4440: $ae
    ld h, d                                       ; $4441: $62
    cp h                                          ; $4442: $bc
    xor c                                         ; $4443: $a9
    ld sp, $9189                                  ; $4444: $31 $89 $91
    ld h, [hl]                                    ; $4447: $66

Jump_06f_4448:
    cp $26                                        ; $4448: $fe $26
    and $9f                                       ; $444a: $e6 $9f
    sbc h                                         ; $444c: $9c
    ld a, c                                       ; $444d: $79
    ld a, d                                       ; $444e: $7a
    ld a, e                                       ; $444f: $7b
    ld a, e                                       ; $4450: $7b
    ld a, h                                       ; $4451: $7c
    rra                                           ; $4452: $1f
    ld a, l                                       ; $4453: $7d
    ld b, [hl]                                    ; $4454: $46
    sbc h                                         ; $4455: $9c
    sbc l                                         ; $4456: $9d
    sbc l                                         ; $4457: $9d
    ld b, l                                       ; $4458: $45
    add d                                         ; $4459: $82
    inc c                                         ; $445a: $0c
    db $ed                                        ; $445b: $ed
    ld h, a                                       ; $445c: $67
    adc d                                         ; $445d: $8a
    ldh a, [$ef]                                  ; $445e: $f0 $ef
    add $c8                                       ; $4460: $c6 $c8
    ld h, c                                       ; $4462: $61
    ret c                                         ; $4463: $d8

    ld h, c                                       ; $4464: $61
    pop bc                                        ; $4465: $c1
    ldh [$7e], a                                  ; $4466: $e0 $7e
    ld b, [hl]                                    ; $4468: $46
    cp l                                          ; $4469: $bd
    ld sp, $bd0b                                  ; $446a: $31 $0b $bd
    adc [hl]                                      ; $446d: $8e
    cp h                                          ; $446e: $bc
    pop hl                                        ; $446f: $e1
    sbc h                                         ; $4470: $9c
    ld a, h                                       ; $4471: $7c
    pop hl                                        ; $4472: $e1
    ld b, e                                       ; $4473: $43
    jp Jump_06f_74bc                              ; $4474: $c3 $bc $74


    ld h, $c3                                     ; $4477: $26 $c3
    db $fc                                        ; $4479: $fc
    ld c, a                                       ; $447a: $4f
    ld h, a                                       ; $447b: $67
    pop bc                                        ; $447c: $c1
    ld [c], a                                     ; $447d: $e2
    xor [hl]                                      ; $447e: $ae
    ld [hl-], a                                   ; $447f: $32
    jr nz, jr_06f_4440                            ; $4480: $20 $be

    ld sp, $872b                                  ; $4482: $31 $2b $87
    xor [hl]                                      ; $4485: $ae
    ld b, [hl]                                    ; $4486: $46
    ld a, a                                       ; $4487: $7f
    cp a                                          ; $4488: $bf
    db $e3                                        ; $4489: $e3
    ld a, $bf                                     ; $448a: $3e $bf
    ld e, [hl]                                    ; $448c: $5e
    add [hl]                                      ; $448d: $86
    add d                                         ; $448e: $82
    ld [c], a                                     ; $448f: $e2
    ld b, [hl]                                    ; $4490: $46
    rst $38                                       ; $4491: $ff
    xor a                                         ; $4492: $af
    dec l                                         ; $4493: $2d
    inc l                                         ; $4494: $2c
    ld sp, $2a2c                                  ; $4495: $31 $2c $2a
    xor a                                         ; $4498: $af
    ld b, [hl]                                    ; $4499: $46
    ret nz                                        ; $449a: $c0

    cp a                                          ; $449b: $bf
    db $e3                                        ; $449c: $e3
    cp e                                          ; $449d: $bb
    and h                                         ; $449e: $a4
    add b                                         ; $449f: $80
    or a                                          ; $44a0: $b7
    ld c, a                                       ; $44a1: $4f
    ld h, h                                       ; $44a2: $64
    add [hl]                                      ; $44a3: $86
    ld b, b                                       ; $44a4: $40
    ld b, e                                       ; $44a5: $43
    pop hl                                        ; $44a6: $e1
    xor [hl]                                      ; $44a7: $ae
    ld b, [hl]                                    ; $44a8: $46
    rst $30                                       ; $44a9: $f7
    add e                                         ; $44aa: $83
    adc c                                         ; $44ab: $89
    adc b                                         ; $44ac: $88
    rst $38                                       ; $44ad: $ff
    pop hl                                        ; $44ae: $e1
    adc c                                         ; $44af: $89
    add e                                         ; $44b0: $83
    ld b, [hl]                                    ; $44b1: $46
    xor [hl]                                      ; $44b2: $ae
    ldh a, [$7e]                                  ; $44b3: $f0 $7e
    ldh [$fe], a                                  ; $44b5: $e0 $fe
    ld a, d                                       ; $44b7: $7a
    ld c, a                                       ; $44b8: $4f
    ld l, c                                       ; $44b9: $69
    add [hl]                                      ; $44ba: $86
    ld b, b                                       ; $44bb: $40
    sbc [hl]                                      ; $44bc: $9e
    ld b, [hl]                                    ; $44bd: $46
    add b                                         ; $44be: $80
    ld b, [hl]                                    ; $44bf: $46
    rst $38                                       ; $44c0: $ff
    xor a                                         ; $44c1: $af
    add e                                         ; $44c2: $83
    add [hl]                                      ; $44c3: $86
    add l                                         ; $44c4: $85
    ld [bc], a                                    ; $44c5: $02
    rlca                                          ; $44c6: $07
    rlca                                          ; $44c7: $07
    rlca                                          ; $44c8: $07
    rst $38                                       ; $44c9: $ff
    ld [bc], a                                    ; $44ca: $02
    add l                                         ; $44cb: $85
    add [hl]                                      ; $44cc: $86
    add e                                         ; $44cd: $83
    xor a                                         ; $44ce: $af
    ld b, [hl]                                    ; $44cf: $46
    add c                                         ; $44d0: $81
    ld b, [hl]                                    ; $44d1: $46
    pop af                                        ; $44d2: $f1
    sbc [hl]                                      ; $44d3: $9e
    and b                                         ; $44d4: $a0
    add sp, $2e                                   ; $44d5: $e8 $2e
    ld a, d                                       ; $44d7: $7a
    add [hl]                                      ; $44d8: $86
    ld b, b                                       ; $44d9: $40
    sbc [hl]                                      ; $44da: $9e
    ld a, c                                       ; $44db: $79
    adc l                                         ; $44dc: $8d
    ld b, [hl]                                    ; $44dd: $46
    rst $38                                       ; $44de: $ff
    ld b, [hl]                                    ; $44df: $46
    adc d                                         ; $44e0: $8a
    add l                                         ; $44e1: $85
    ld [bc], a                                    ; $44e2: $02
    rrca                                          ; $44e3: $0f
    sbc b                                         ; $44e4: $98
    sbc b                                         ; $44e5: $98
    sbc c                                         ; $44e6: $99
    rst $38                                       ; $44e7: $ff
    rrca                                          ; $44e8: $0f
    ld [bc], a                                    ; $44e9: $02
    add l                                         ; $44ea: $85
    adc e                                         ; $44eb: $8b
    ld b, [hl]                                    ; $44ec: $46
    ld b, [hl]                                    ; $44ed: $46
    adc h                                         ; $44ee: $8c
    ld a, l                                       ; $44ef: $7d
    ld hl, sp-$40                                 ; $44f0: $f8 $c0
    pop hl                                        ; $44f2: $e1
    and b                                         ; $44f3: $a0
    push hl                                       ; $44f4: $e5
    dec c                                         ; $44f5: $0d
    ld a, l                                       ; $44f6: $7d
    sbc [hl]                                      ; $44f7: $9e
    add b                                         ; $44f8: $80
    ld b, [hl]                                    ; $44f9: $46
    ld b, [hl]                                    ; $44fa: $46
    add e                                         ; $44fb: $83
    ei                                            ; $44fc: $fb
    add h                                         ; $44fd: $84
    dec b                                         ; $44fe: $05
    pop bc                                        ; $44ff: $c1
    pop hl                                        ; $4500: $e1
    nop                                           ; $4501: $00
    ld bc, $050f                                  ; $4502: $01 $0f $05
    add d                                         ; $4505: $82
    rrca                                          ; $4506: $0f
    add e                                         ; $4507: $83
    ld b, [hl]                                    ; $4508: $46
    ld b, [hl]                                    ; $4509: $46
    add c                                         ; $450a: $81
    add b                                         ; $450b: $80
    pop hl                                        ; $450c: $e1
    ld h, $45                                     ; $450d: $26 $45
    scf                                           ; $450f: $37
    ld e, c                                       ; $4510: $59
    sla c                                         ; $4511: $cb $21
    cp $c0                                        ; $4513: $fe $c0
    ldh [$ae], a                                  ; $4515: $e0 $ae
    adc d                                         ; $4517: $8a
    add l                                         ; $4518: $85
    ld b, $98                                     ; $4519: $06 $98
    sbc b                                         ; $451b: $98
    sub a                                         ; $451c: $97
    ld a, $7f                                     ; $451d: $3e $7f
    ldh [$99], a                                  ; $451f: $e0 $99
    ld b, $85                                     ; $4521: $06 $85
    adc e                                         ; $4523: $8b
    xor [hl]                                      ; $4524: $ae
    ret nz                                        ; $4525: $c0

    db $e4                                        ; $4526: $e4
    dec a                                         ; $4527: $3d
    ld e, a                                       ; $4528: $5f
    db $fc                                        ; $4529: $fc
    sla d                                         ; $452a: $cb $22
    add b                                         ; $452c: $80
    ldh [$af], a                                  ; $452d: $e0 $af
    add c                                         ; $452f: $81
    ld b, [hl]                                    ; $4530: $46
    ld [$9999], sp                                ; $4531: $08 $99 $99
    cp e                                          ; $4534: $bb
    sbc b                                         ; $4535: $98
    sub a                                         ; $4536: $97
    cp [hl]                                       ; $4537: $be
    ldh [$08], a                                  ; $4538: $e0 $08
    ld b, [hl]                                    ; $453a: $46
    add b                                         ; $453b: $80
    rst $38                                       ; $453c: $ff
    ret nz                                        ; $453d: $c0

    sbc [hl]                                      ; $453e: $9e
    ldh [$71], a                                  ; $453f: $e0 $71
    jr z, @+$2d                                   ; $4541: $28 $2b

    ld d, c                                       ; $4543: $51
    ld d, e                                       ; $4544: $53
    dec h                                         ; $4545: $25

Jump_06f_4546:
    sla c                                         ; $4546: $cb $21
    ld b, b                                       ; $4548: $40
    pop hl                                        ; $4549: $e1
    adc h                                         ; $454a: $8c
    ld a, l                                       ; $454b: $7d
    ld b, $17                                     ; $454c: $06 $17
    nop                                           ; $454e: $00
    ld bc, $7d99                                  ; $454f: $01 $99 $7d
    pop hl                                        ; $4552: $e1
    ld b, $f2                                     ; $4553: $06 $f2
    pop bc                                        ; $4555: $c1

Jump_06f_4556:
    ld b, b                                       ; $4556: $40
    ldh [$80], a                                  ; $4557: $e0 $80
    ld e, e                                       ; $4559: $5b
    ld [hl], h                                    ; $455a: $74
    ld d, e                                       ; $455b: $53
    dec h                                         ; $455c: $25
    sla c                                         ; $455d: $cb $21
    sbc [hl]                                      ; $455f: $9e
    ld c, $e2                                     ; $4560: $0e $e2
    dec b                                         ; $4562: $05
    rrca                                          ; $4563: $0f
    sbc c                                         ; $4564: $99
    ld b, d                                       ; $4565: $42
    ldh [rNR22], a                                ; $4566: $e0 $17
    sbc b                                         ; $4568: $98
    rrca                                          ; $4569: $0f
    dec b                                         ; $456a: $05
    ld a, [c]                                     ; $456b: $f2
    jp nz, $809e                                  ; $456c: $c2 $9e $80

    ld c, c                                       ; $456f: $49
    and d                                         ; $4570: $a2
    add hl, bc                                    ; $4571: $09
    ld a, [hl+]                                   ; $4572: $2a
    inc h                                         ; $4573: $24
    ld hl, sp+$53                                 ; $4574: $f8 $53
    daa                                           ; $4576: $27
    ret nz                                        ; $4577: $c0

    ret nz                                        ; $4578: $c0

    adc l                                         ; $4579: $8d
    ret nz                                        ; $457a: $c0

    xor [hl]                                      ; $457b: $ae
    adc h                                         ; $457c: $8c
    ld a, l                                       ; $457d: $7d
    ld [bc], a                                    ; $457e: $02
    rrca                                          ; $457f: $0f
    rst $38                                       ; $4580: $ff
    sbc c                                         ; $4581: $99
    ld bc, $0f00                                  ; $4582: $01 $00 $0f
    ld [bc], a                                    ; $4585: $02
    ld a, c                                       ; $4586: $79
    adc l                                         ; $4587: $8d
    xor [hl]                                      ; $4588: $ae
    jp nz, $c073                                  ; $4589: $c2 $73 $c0

    sbc [hl]                                      ; $458c: $9e
    add b                                         ; $458d: $80
    ld c, c                                       ; $458e: $49
    nop                                           ; $458f: $00
    adc e                                         ; $4590: $8b
    add sp, $02                                   ; $4591: $e8 $02
    ld d, e                                       ; $4593: $53
    add hl, hl                                    ; $4594: $29
    sbc [hl]                                      ; $4595: $9e
    ld b, [hl]                                    ; $4596: $46
    db $fd                                        ; $4597: $fd
    add d                                         ; $4598: $82
    inc c                                         ; $4599: $0c
    ret nz                                        ; $459a: $c0

    ld a, a                                       ; $459b: $7f
    ld a, l                                       ; $459c: $7d
    inc bc                                        ; $459d: $03
    inc b                                         ; $459e: $04
    rlca                                          ; $459f: $07
    inc b                                         ; $45a0: $04
    dec e                                         ; $45a1: $1d
    inc bc                                        ; $45a2: $03
    ld hl, sp-$80                                 ; $45a3: $f8 $80
    xor a                                         ; $45a5: $af
    add e                                         ; $45a6: $83
    add h                                         ; $45a7: $84
    nop                                           ; $45a8: $00
    jp nz, Jump_000_0629                          ; $45a9: $c2 $29 $06

    scf                                           ; $45ac: $37
    ld l, d                                       ; $45ad: $6a
    halt                                          ; $45ae: $76
    ld e, $2f                                     ; $45af: $1e $2f
    sbc a                                         ; $45b1: $9f
    ret nc                                        ; $45b2: $d0

    res 4, b                                      ; $45b3: $cb $a0
    ld b, [hl]                                    ; $45b5: $46
    ld b, [hl]                                    ; $45b6: $46
    adc [hl]                                      ; $45b7: $8e
    add d                                         ; $45b8: $82
    add b                                         ; $45b9: $80
    rst $30                                       ; $45ba: $f7
    ld a, c                                       ; $45bb: $79
    ld a, d                                       ; $45bc: $7a
    adc a                                         ; $45bd: $8f
    inc [hl]                                      ; $45be: $34
    ret nz                                        ; $45bf: $c0

    add [hl]                                      ; $45c0: $86
    add l                                         ; $45c1: $85
    ret nc                                        ; $45c2: $d0

    sbc a                                         ; $45c3: $9f
    add sp, -$7e                                  ; $45c4: $e8 $82
    ld [bc], a                                    ; $45c6: $02
    inc bc                                        ; $45c7: $03
    jp nc, $2f1c                                  ; $45c8: $d2 $1c $2f

    db $d3                                        ; $45cb: $d3
    cp a                                          ; $45cc: $bf
    ld [c], a                                     ; $45cd: $e2
    xor [hl]                                      ; $45ce: $ae
    ld b, [hl]                                    ; $45cf: $46
    adc [hl]                                      ; $45d0: $8e
    inc de                                        ; $45d1: $13
    ld a, e                                       ; $45d2: $7b
    adc a                                         ; $45d3: $8f
    ld a, [$c1e0]                                 ; $45d4: $fa $e0 $c1
    pop hl                                        ; $45d7: $e1
    db $d3                                        ; $45d8: $d3
    sbc b                                         ; $45d9: $98
    adc c                                         ; $45da: $89
    ld b, d                                       ; $45db: $42
    db $db                                        ; $45dc: $db
    db $fc                                        ; $45dd: $fc
    pop bc                                        ; $45de: $c1
    inc b                                         ; $45df: $04
    cp a                                          ; $45e0: $bf
    ld [c], a                                     ; $45e1: $e2
    add $80                                       ; $45e2: $c6 $80
    xor [hl]                                      ; $45e4: $ae
    cp d                                          ; $45e5: $ba
    add b                                         ; $45e6: $80
    pop bc                                        ; $45e7: $c1
    push hl                                       ; $45e8: $e5
    ld b, b                                       ; $45e9: $40
    ret z                                         ; $45ea: $c8

    dec a                                         ; $45eb: $3d
    rrca                                          ; $45ec: $0f
    reti                                          ; $45ed: $d9


    inc b                                         ; $45ee: $04
    ld d, h                                       ; $45ef: $54
    inc e                                         ; $45f0: $1c
    ld h, $7e                                     ; $45f1: $26 $7e
    ldh [$87], a                                  ; $45f3: $e0 $87
    add $80                                       ; $45f5: $c6 $80
    xor a                                         ; $45f7: $af
    cp d                                          ; $45f8: $ba
    add b                                         ; $45f9: $80
    add a                                         ; $45fa: $87
    add d                                         ; $45fb: $82
    db $e4                                        ; $45fc: $e4
    ldh [$2c], a                                  ; $45fd: $e0 $2c
    daa                                           ; $45ff: $27
    dec hl                                        ; $4600: $2b
    db $10                                        ; $4601: $10
    xor [hl]                                      ; $4602: $ae
    ld b, h                                       ; $4603: $44
    inc e                                         ; $4604: $1c
    inc hl                                        ; $4605: $23
    ld d, [hl]                                    ; $4606: $56
    ld bc, $d0d3                                  ; $4607: $01 $d3 $d0
    ld b, [hl]                                    ; $460a: $46
    dec sp                                        ; $460b: $3b
    add l                                         ; $460c: $85
    add a                                         ; $460d: $87
    ld a, a                                       ; $460e: $7f
    add b                                         ; $460f: $80
    add a                                         ; $4610: $87
    add l                                         ; $4611: $85
    ld b, [hl]                                    ; $4612: $46
    ld b, e                                       ; $4613: $43
    pop hl                                        ; $4614: $e1
    add [hl]                                      ; $4615: $86
    and b                                         ; $4616: $a0
    jr @+$2e                                      ; $4617: $18 $2c

    ld a, [hl+]                                   ; $4619: $2a
    cp a                                          ; $461a: $bf
    ld [hl], e                                    ; $461b: $73
    ld d, [hl]                                    ; $461c: $56
    add hl, bc                                    ; $461d: $09
    db $d3                                        ; $461e: $d3
    pop de                                        ; $461f: $d1
    rst $38                                       ; $4620: $ff
    push hl                                       ; $4621: $e5
    inc b                                         ; $4622: $04
    db $e4                                        ; $4623: $e4
    inc l                                         ; $4624: $2c
    daa                                           ; $4625: $27
    nop                                           ; $4626: $00
    ld a, h                                       ; $4627: $7c
    add hl, de                                    ; $4628: $19
    reti                                          ; $4629: $d9


    ld b, c                                       ; $462a: $41
    db $f4                                        ; $462b: $f4
    and e                                         ; $462c: $a3
    cp a                                          ; $462d: $bf
    ld b, d                                       ; $462e: $42
    jp nz, Jump_000_0642                          ; $462f: $c2 $42 $06

    jp hl                                         ; $4632: $e9


    ld a, d                                       ; $4633: $7a
    ld de, $4974                                  ; $4634: $11 $74 $49
    ld e, h                                       ; $4637: $5c
    inc e                                         ; $4638: $1c
    ld hl, $a2f4                                  ; $4639: $21 $f4 $a2
    sbc a                                         ; $463c: $9f
    sbc h                                         ; $463d: $9c
    ld b, [hl]                                    ; $463e: $46
    rst $38                                       ; $463f: $ff
    ldh [$9c], a                                  ; $4640: $e0 $9c
    add b                                         ; $4642: $80
    ld b, c                                       ; $4643: $41
    ldh [$32], a                                  ; $4644: $e0 $32
    inc bc                                        ; $4646: $03
    adc e                                         ; $4647: $8b
    add hl, sp                                    ; $4648: $39
    adc b                                         ; $4649: $88

jr_06f_464a:
    and c                                         ; $464a: $a1
    ldh [$83], a                                  ; $464b: $e0 $83
    inc e                                         ; $464d: $1c
    ld h, $9e                                     ; $464e: $26 $9e
    ld b, l                                       ; $4650: $45
    ld b, e                                       ; $4651: $43
    inc bc                                        ; $4652: $03
    ccf                                           ; $4653: $3f
    ld b, e                                       ; $4654: $43
    db $fd                                        ; $4655: $fd
    ldh [$c3], a                                  ; $4656: $e0 $c3
    ld b, b                                       ; $4658: $40
    ld h, h                                       ; $4659: $64
    and e                                         ; $465a: $a3
    adc e                                         ; $465b: $8b
    ld h, $05                                     ; $465c: $26 $05
    ld d, h                                       ; $465e: $54
    ld [bc], a                                    ; $465f: $02

Jump_06f_4660:
    ld h, l                                       ; $4660: $65
    sbc $1a                                       ; $4661: $de $1a
    ld h, h                                       ; $4663: $64
    sbc h                                         ; $4664: $9c
    ld b, h                                       ; $4665: $44
    and h                                         ; $4666: $a4
    ld h, h                                       ; $4667: $64
    rst $38                                       ; $4668: $ff
    ldh [$a5], a                                  ; $4669: $e0 $a5
    ld b, h                                       ; $466b: $44
    inc bc                                        ; $466c: $03
    sbc h                                         ; $466d: $9c
    sbc a                                         ; $466e: $9f
    ld [hl-], a                                   ; $466f: $32
    inc bc                                        ; $4670: $03
    jp nz, $0602                                  ; $4671: $c2 $02 $06

    and e                                         ; $4674: $a3
    rst $38                                       ; $4675: $ff
    ld [hl], d                                    ; $4676: $72
    cp $81                                        ; $4677: $fe $81
    nop                                           ; $4679: $00
    and c                                         ; $467a: $a1
    cp $58                                        ; $467b: $fe $58
    jp Jump_06f_469e                              ; $467d: $c3 $9e $46


    ld b, b                                       ; $4680: $40
    ld l, c                                       ; $4681: $69
    and e                                         ; $4682: $a3
    dec [hl]                                      ; $4683: $35
    dec [hl]                                      ; $4684: $35
    rlca                                          ; $4685: $07
    and e                                         ; $4686: $a3
    ld l, d                                       ; $4687: $6a
    ld b, d                                       ; $4688: $42
    ld b, l                                       ; $4689: $45
    and h                                         ; $468a: $a4
    ldh [$28], a                                  ; $468b: $e0 $28
    inc a                                         ; $468d: $3c
    inc de                                        ; $468e: $13
    and $c5                                       ; $468f: $e6 $c5
    or [hl]                                       ; $4691: $b6
    add e                                         ; $4692: $83
    add d                                         ; $4693: $82
    ret nz                                        ; $4694: $c0

    pop hl                                        ; $4695: $e1
    dec [hl]                                      ; $4696: $35
    rst $38                                       ; $4697: $ff
    ldh [$c0], a                                  ; $4698: $e0 $c0
    push hl                                       ; $469a: $e5
    ld [bc], a                                    ; $469b: $02
    add h                                         ; $469c: $84
    dec a                                         ; $469d: $3d

Jump_06f_469e:
    dec de                                        ; $469e: $1b
    sbc [hl]                                      ; $469f: $9e
    ret z                                         ; $46a0: $c8

    sbc [hl]                                      ; $46a1: $9e
    ld l, a                                       ; $46a2: $6f
    ld b, [hl]                                    ; $46a3: $46
    ld b, h                                       ; $46a4: $44
    ld l, e                                       ; $46a5: $6b
    ld [hl], c                                    ; $46a6: $71
    rst $38                                       ; $46a7: $ff
    ldh [$6d], a                                  ; $46a8: $e0 $6d
    ld b, h                                       ; $46aa: $44
    push bc                                       ; $46ab: $c5
    ld b, b                                       ; $46ac: $40
    cp b                                          ; $46ad: $b8
    ld a, b                                       ; $46ae: $78
    inc b                                         ; $46af: $04
    ld c, b                                       ; $46b0: $48
    ld a, c                                       ; $46b1: $79
    cp h                                          ; $46b2: $bc
    adc a                                         ; $46b3: $8f
    ld b, l                                       ; $46b4: $45
    ld b, e                                       ; $46b5: $43
    ld b, c                                       ; $46b6: $41
    rst $38                                       ; $46b7: $ff
    ldh [rSCX], a                                 ; $46b8: $e0 $43
    inc bc                                        ; $46ba: $03
    ld b, l                                       ; $46bb: $45
    ret nc                                        ; $46bc: $d0

    cp $02                                        ; $46bd: $fe $02
    jr nz, jr_06f_464a                            ; $46bf: $20 $89

    dec sp                                        ; $46c1: $3b
    ld e, d                                       ; $46c2: $5a
    cp [hl]                                       ; $46c3: $be
    ld bc, $61fa                                  ; $46c4: $01 $fa $61
    ld a, a                                       ; $46c7: $7f
    and b                                         ; $46c8: $a0
    ld [bc], a                                    ; $46c9: $02
    ccf                                           ; $46ca: $3f
    pop bc                                        ; $46cb: $c1
    ret nc                                        ; $46cc: $d0

    pop bc                                        ; $46cd: $c1
    and h                                         ; $46ce: $a4
    ld l, d                                       ; $46cf: $6a
    dec bc                                        ; $46d0: $0b
    ld sp, hl                                     ; $46d1: $f9
    jr c, jr_06f_4734                             ; $46d2: $38 $60

    ld b, [hl]                                    ; $46d4: $46
    ld a, a                                       ; $46d5: $7f
    and e                                         ; $46d6: $a3
    add a                                         ; $46d7: $87
    add h                                         ; $46d8: $84
    nop                                           ; $46d9: $00
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    and d                                         ; $46dc: $a2
    ld b, l                                       ; $46dd: $45
    sbc $cd                                       ; $46de: $de $cd
    push hl                                       ; $46e0: $e5
    and l                                         ; $46e1: $a5
    ld b, b                                       ; $46e2: $40
    ld [bc], a                                    ; $46e3: $02
    ld a, h                                       ; $46e4: $7c
    adc c                                         ; $46e5: $89
    rst $28                                       ; $46e6: $ef
    rla                                           ; $46e7: $17
    sbc h                                         ; $46e8: $9c
    add [hl]                                      ; $46e9: $86
    nop                                           ; $46ea: $00
    adc l                                         ; $46eb: $8d
    ld b, l                                       ; $46ec: $45
    add l                                         ; $46ed: $85
    add c                                         ; $46ee: $81
    ld b, [hl]                                    ; $46ef: $46
    jp nz, $93c2                                  ; $46f0: $c2 $c2 $93

    xor a                                         ; $46f3: $af
    xor l                                         ; $46f4: $ad
    cp b                                          ; $46f5: $b8
    ld b, $af                                     ; $46f6: $06 $af
    dec b                                         ; $46f8: $05
    db $e3                                        ; $46f9: $e3
    ld b, c                                       ; $46fa: $41
    nop                                           ; $46fb: $00
    ld b, [hl]                                    ; $46fc: $46
    jp nz, $92c2                                  ; $46fd: $c2 $c2 $92

    xor l                                         ; $4700: $ad
    ld c, $9c                                     ; $4701: $0e $9c
    add [hl]                                      ; $4703: $86
    sub e                                         ; $4704: $93
    add l                                         ; $4705: $85
    res 0, [hl]                                   ; $4706: $cb $86
    jp c, $8241                                   ; $4708: $da $41 $82

    scf                                           ; $470b: $37
    nop                                           ; $470c: $00
    ld l, c                                       ; $470d: $69
    ld b, l                                       ; $470e: $45
    or h                                          ; $470f: $b4
    ld b, c                                       ; $4710: $41
    ld de, $4de2                                  ; $4711: $11 $e2 $4d
    add e                                         ; $4714: $83
    ld c, l                                       ; $4715: $4d
    ld c, $40                                     ; $4716: $0e $40
    dec [hl]                                      ; $4718: $35
    ld h, e                                       ; $4719: $63
    and b                                         ; $471a: $a0
    cp b                                          ; $471b: $b8
    ld b, $00                                     ; $471c: $06 $00
    reti                                          ; $471e: $d9


    ld a, [bc]                                    ; $471f: $0a
    inc l                                         ; $4720: $2c
    push bc                                       ; $4721: $c5
    add d                                         ; $4722: $82
    ld [hl], $e2                                  ; $4723: $36 $e2
    ld c, b                                       ; $4725: $48
    inc [hl]                                      ; $4726: $34
    inc b                                         ; $4727: $04
    ld d, a                                       ; $4728: $57
    and [hl]                                      ; $4729: $a6
    ld c, c                                       ; $472a: $49
    ld hl, $a30a                                  ; $472b: $21 $0a $a3
    nop                                           ; $472e: $00
    add d                                         ; $472f: $82
    cp a                                          ; $4730: $bf
    ld [hl-], a                                   ; $4731: $32
    ld c, d                                       ; $4732: $4a
    ld a, b                                       ; $4733: $78

jr_06f_4734:
    add h                                         ; $4734: $84
    add hl, bc                                    ; $4735: $09
    ld h, c                                       ; $4736: $61
    add l                                         ; $4737: $85
    add c                                         ; $4738: $81
    call nz, $fc02                                ; $4739: $c4 $02 $fc
    ld a, c                                       ; $473c: $79
    halt                                          ; $473d: $76
    ld l, l                                       ; $473e: $6d
    nop                                           ; $473f: $00
    jr nc, @-$7a                                  ; $4740: $30 $84

    ld c, a                                       ; $4742: $4f
    ld l, d                                       ; $4743: $6a
    nop                                           ; $4744: $00
    ld e, l                                       ; $4745: $5d
    or l                                          ; $4746: $b5

Jump_06f_4747:
    add hl, bc                                    ; $4747: $09
    ld l, $21                                     ; $4748: $2e $21
    res 4, b                                      ; $474a: $cb $a0
    ld c, a                                       ; $474c: $4f
    ld l, d                                       ; $474d: $6a
    add c                                         ; $474e: $81
    sbc b                                         ; $474f: $98
    nop                                           ; $4750: $00
    rst $18                                       ; $4751: $df
    rst $00                                       ; $4752: $c7
    or a                                          ; $4753: $b7
    ld h, h                                       ; $4754: $64
    ld l, $21                                     ; $4755: $2e $21
    sub b                                         ; $4757: $90
    daa                                           ; $4758: $27
    add [hl]                                      ; $4759: $86
    or c                                          ; $475a: $b1
    ld sp, hl                                     ; $475b: $f9
    ld d, h                                       ; $475c: $54
    sbc l                                         ; $475d: $9d
    ld c, b                                       ; $475e: $48
    adc h                                         ; $475f: $8c
    ld h, b                                       ; $4760: $60
    nop                                           ; $4761: $00
    and b                                         ; $4762: $a0
    inc b                                         ; $4763: $04
    ld [bc], a                                    ; $4764: $02
    ld b, e                                       ; $4765: $43
    add b                                         ; $4766: $80
    sbc d                                         ; $4767: $9a
    ld hl, sp+$05                                 ; $4768: $f8 $05
    db $db                                        ; $476a: $db
    xor l                                         ; $476b: $ad
    ld l, e                                       ; $476c: $6b
    ld [bc], a                                    ; $476d: $02
    ld c, b                                       ; $476e: $48
    ld b, l                                       ; $476f: $45
    ld a, d                                       ; $4770: $7a
    rst $18                                       ; $4771: $df
    nop                                           ; $4772: $00
    ld l, e                                       ; $4773: $6b
    ld c, l                                       ; $4774: $4d
    ld l, [hl]                                    ; $4775: $6e
    jp Jump_06f_4448                              ; $4776: $c3 $48 $44


    ld a, $9c                                     ; $4779: $3e $9c
    ld l, d                                       ; $477b: $6a
    add hl, de                                    ; $477c: $19
    rst $00                                       ; $477d: $c7
    ld [hl], c                                    ; $477e: $71
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    pop bc                                        ; $4782: $c1
    nop                                           ; $4783: $00
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    rst $38                                       ; $4787: $ff
    rst $38                                       ; $4788: $ff
    rst $38                                       ; $4789: $ff
    rst $38                                       ; $478a: $ff
    rst $38                                       ; $478b: $ff
    rst $38                                       ; $478c: $ff
    rst $38                                       ; $478d: $ff
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    ld bc, $fe80                                  ; $4790: $01 $80 $fe
    ldh [rIE], a                                  ; $4793: $e0 $ff
    rst $38                                       ; $4795: $ff
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    rst $38                                       ; $4798: $ff
    add sp, $00                                   ; $4799: $e8 $00
    nop                                           ; $479b: $00
    nop                                           ; $479c: $00
    ld [bc], a                                    ; $479d: $02
    nop                                           ; $479e: $00
    dec e                                         ; $479f: $1d
    ld d, $02                                     ; $47a0: $16 $02
    ld bc, $1623                                  ; $47a2: $01 $23 $16
    ld [bc], a                                    ; $47a5: $02
    ld [bc], a                                    ; $47a6: $02
    ld a, [de]                                    ; $47a7: $1a
    jr @+$04                                      ; $47a8: $18 $02

    inc bc                                        ; $47aa: $03
    ld h, $18                                     ; $47ab: $26 $18
    ld [bc], a                                    ; $47ad: $02
    inc b                                         ; $47ae: $04
    add hl, de                                    ; $47af: $19
    inc e                                         ; $47b0: $1c
    ld [bc], a                                    ; $47b1: $02
    dec b                                         ; $47b2: $05
    daa                                           ; $47b3: $27
    inc e                                         ; $47b4: $1c
    ld [bc], a                                    ; $47b5: $02
    ld b, $1a                                     ; $47b6: $06 $1a
    jr nz, @+$04                                  ; $47b8: $20 $02

    rlca                                          ; $47ba: $07
    ld h, $20                                     ; $47bb: $26 $20
    ld [bc], a                                    ; $47bd: $02
    ld [$231d], sp                                ; $47be: $08 $1d $23
    ld [bc], a                                    ; $47c1: $02
    add hl, bc                                    ; $47c2: $09
    inc hl                                        ; $47c3: $23
    inc hl                                        ; $47c4: $23
    ld [bc], a                                    ; $47c5: $02
    ld a, [bc]                                    ; $47c6: $0a
    jr nz, jr_06f_47ed                            ; $47c7: $20 $24

    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    rst $38                                       ; $47cb: $ff
    call nc, $a847                                ; $47cc: $d4 $47 $a8
    ld c, d                                       ; $47cf: $4a
    ld c, h                                       ; $47d0: $4c
    ld d, b                                       ; $47d1: $50
    ld h, a                                       ; $47d2: $67
    ld d, b                                       ; $47d3: $50
    pop bc                                        ; $47d4: $c1
    inc c                                         ; $47d5: $0c
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    ld [c], a                                     ; $47de: $e2
    pop hl                                        ; $47df: $e1
    ld l, h                                       ; $47e0: $6c
    ld c, h                                       ; $47e1: $4c
    di                                            ; $47e2: $f3
    ld c, h                                       ; $47e3: $4c
    ld c, h                                       ; $47e4: $4c
    jp c, $c1ff                                   ; $47e5: $da $ff $c1

    rst $30                                       ; $47e8: $f7
    ld l, h                                       ; $47e9: $6c
    ld a, [bc]                                    ; $47ea: $0a
    ld a, [hl+]                                   ; $47eb: $2a
    ld c, h                                       ; $47ec: $4c

jr_06f_47ed:
    ld sp, hl                                     ; $47ed: $f9
    ld c, h                                       ; $47ee: $4c
    cp e                                          ; $47ef: $bb
    rst $38                                       ; $47f0: $ff
    pop bc                                        ; $47f1: $c1
    ld hl, sp+$0a                                 ; $47f2: $f8 $0a
    dec bc                                        ; $47f4: $0b
    dec bc                                        ; $47f5: $0b
    ld c, e                                       ; $47f6: $4b
    dec c                                         ; $47f7: $0d
    ld sp, hl                                     ; $47f8: $f9
    dec c                                         ; $47f9: $0d
    cp [hl]                                       ; $47fa: $be
    rst $38                                       ; $47fb: $ff
    ld a, [c]                                     ; $47fc: $f2
    pop af                                        ; $47fd: $f1
    inc l                                         ; $47fe: $2c
    ld a, [bc]                                    ; $47ff: $0a
    ld a, [bc]                                    ; $4800: $0a
    dec hl                                        ; $4801: $2b
    dec bc                                        ; $4802: $0b
    rst $38                                       ; $4803: $ff
    dec bc                                        ; $4804: $0b
    dec hl                                        ; $4805: $2b
    dec bc                                        ; $4806: $0b
    dec c                                         ; $4807: $0d
    dec c                                         ; $4808: $0d
    dec c                                         ; $4809: $0d
    ld c, e                                       ; $480a: $4b
    ld l, h                                       ; $480b: $6c
    or e                                          ; $480c: $b3
    inc l                                         ; $480d: $2c
    inc l                                         ; $480e: $2c
    rst $08                                       ; $480f: $cf
    rst $38                                       ; $4810: $ff
    ret nz                                        ; $4811: $c0

    db $ed                                        ; $4812: $ed
    ld l, e                                       ; $4813: $6b
    dec hl                                        ; $4814: $2b
    ret nz                                        ; $4815: $c0

    ldh [$0b], a                                  ; $4816: $e0 $0b
    ccf                                           ; $4818: $3f
    dec hl                                        ; $4819: $2b
    dec hl                                        ; $481a: $2b
    dec hl                                        ; $481b: $2b
    dec c                                         ; $481c: $0d
    dec c                                         ; $481d: $0d
    ld l, h                                       ; $481e: $6c
    ld a, a                                       ; $481f: $7f
    rst $38                                       ; $4820: $ff
    add b                                         ; $4821: $80
    rst $28                                       ; $4822: $ef
    ld a, a                                       ; $4823: $7f
    inc l                                         ; $4824: $2c
    ld l, e                                       ; $4825: $6b
    ld c, e                                       ; $4826: $4b
    ld l, e                                       ; $4827: $6b
    ld c, e                                       ; $4828: $4b
    ld c, e                                       ; $4829: $4b
    ld l, e                                       ; $482a: $6b
    cp h                                          ; $482b: $bc
    ldh [$e3], a                                  ; $482c: $e0 $e3
    dec c                                         ; $482e: $0d
    ld c, e                                       ; $482f: $4b
    pop de                                        ; $4830: $d1
    rst $38                                       ; $4831: $ff
    pop bc                                        ; $4832: $c1
    rst $28                                       ; $4833: $ef
    cp a                                          ; $4834: $bf
    ldh [$0a], a                                  ; $4835: $e0 $0a
    ld a, [bc]                                    ; $4837: $0a
    ld l, d                                       ; $4838: $6a
    db $10                                        ; $4839: $10
    cp [hl]                                       ; $483a: $be
    ldh [$c2], a                                  ; $483b: $e0 $c2
    rst $38                                       ; $483d: $ff
    cp $d4                                        ; $483e: $fe $d4
    db $fc                                        ; $4840: $fc
    ret nz                                        ; $4841: $c0

    ld a, [hl+]                                   ; $4842: $2a
    reti                                          ; $4843: $d9


    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    dec hl                                        ; $4847: $2b
    jp hl                                         ; $4848: $e9


    ldh [$dc], a                                  ; $4849: $e0 $dc
    rst $38                                       ; $484b: $ff
    adc $f4                                       ; $484c: $ce $f4
    rst $30                                       ; $484e: $f7
    and c                                         ; $484f: $a1
    ld [hl], $df                                  ; $4850: $36 $df
    or l                                          ; $4852: $b5
    call nc, Call_06f_6c6c                        ; $4853: $d4 $6c $6c
    ld c, h                                       ; $4856: $4c
    ccf                                           ; $4857: $3f
    ld l, h                                       ; $4858: $6c
    dec hl                                        ; $4859: $2b
    ld c, e                                       ; $485a: $4b
    ld c, e                                       ; $485b: $4b
    ld c, e                                       ; $485c: $4b
    dec bc                                        ; $485d: $0b
    cp [hl]                                       ; $485e: $be
    rst $38                                       ; $485f: $ff
    ld [hl], l                                    ; $4860: $75
    or e                                          ; $4861: $b3
    jr nz, jr_06f_4899                            ; $4862: $20 $35

    pop bc                                        ; $4864: $c1
    ld [hl-], a                                   ; $4865: $32
    jp nz, $e0be                                  ; $4866: $c2 $be $e0

    ret nc                                        ; $4869: $d0

    rst $38                                       ; $486a: $ff
    pop bc                                        ; $486b: $c1
    pop af                                        ; $486c: $f1
    dec c                                         ; $486d: $0d
    cp $e0                                        ; $486e: $fe $e0
    dec [hl]                                      ; $4870: $35
    ret nz                                        ; $4871: $c0

    ret z                                         ; $4872: $c8

    cp a                                          ; $4873: $bf
    pop hl                                        ; $4874: $e1
    ld a, [$ecdf]                                 ; $4875: $fa $df $ec
    db $eb                                        ; $4878: $eb
    ld c, h                                       ; $4879: $4c
    or a                                          ; $487a: $b7
    and c                                         ; $487b: $a1
    ret nz                                        ; $487c: $c0

    ldh [$0d], a                                  ; $487d: $e0 $0d
    ld a, [bc]                                    ; $487f: $0a
    ld hl, sp+$72                                 ; $4880: $f8 $72
    and b                                         ; $4882: $a0
    ld a, [hl]                                    ; $4883: $7e
    rst $38                                       ; $4884: $ff
    ld [hl], a                                    ; $4885: $77
    adc a                                         ; $4886: $8f
    dec hl                                        ; $4887: $2b
    dec bc                                        ; $4888: $0b
    ld l, e                                       ; $4889: $6b
    ld l, e                                       ; $488a: $6b
    dec bc                                        ; $488b: $0b
    add hl, sp                                    ; $488c: $39
    ld c, e                                       ; $488d: $4b
    push af                                       ; $488e: $f5
    add b                                         ; $488f: $80
    ld a, c                                       ; $4890: $79
    pop hl                                        ; $4891: $e1
    dec hl                                        ; $4892: $2b
    dec bc                                        ; $4893: $0b
    ld l, h                                       ; $4894: $6c
    call Call_000_37ff                            ; $4895: $cd $ff $37
    adc e                                         ; $4898: $8b

jr_06f_4899:
    dec a                                         ; $4899: $3d
    dec bc                                        ; $489a: $0b
    or [hl]                                       ; $489b: $b6
    and b                                         ; $489c: $a0
    ld a, [bc]                                    ; $489d: $0a
    ld a, [hl+]                                   ; $489e: $2a
    ld l, e                                       ; $489f: $6b
    ld c, e                                       ; $48a0: $4b
    ld a, $e0                                     ; $48a1: $3e $e0
    inc l                                         ; $48a3: $2c
    and c                                         ; $48a4: $a1
    inc a                                         ; $48a5: $3c
    ld sp, $edbf                                  ; $48a6: $31 $bf $ed
    db $ec                                        ; $48a9: $ec
    ld c, e                                       ; $48aa: $4b
    ld a, [bc]                                    ; $48ab: $0a
    ld a, [bc]                                    ; $48ac: $0a
    ld c, d                                       ; $48ad: $4a
    ld [hl], h                                    ; $48ae: $74
    and b                                         ; $48af: $a0
    ld a, e                                       ; $48b0: $7b
    ldh [$cd], a                                  ; $48b1: $e0 $cd
    dec bc                                        ; $48b3: $0b
    dec a                                         ; $48b4: $3d
    ldh [$0b], a                                  ; $48b5: $e0 $0b
    dec bc                                        ; $48b7: $0b
    adc $ff                                       ; $48b8: $ce $ff
    call Call_000_2caa                            ; $48ba: $cd $aa $2c
    dec hl                                        ; $48bd: $2b
    db $fd                                        ; $48be: $fd
    ld a, [bc]                                    ; $48bf: $0a
    ld [hl], $80                                  ; $48c0: $36 $80
    ld l, e                                       ; $48c2: $6b
    ld c, d                                       ; $48c3: $4a
    ld c, d                                       ; $48c4: $4a
    ld l, e                                       ; $48c5: $6b

Call_06f_48c6:
    dec c                                         ; $48c6: $0d

Call_06f_48c7:
    ld c, e                                       ; $48c7: $4b
    and $6f                                       ; $48c8: $e6 $6f
    add b                                         ; $48ca: $80
    dec hl                                        ; $48cb: $2b
    ld c, e                                       ; $48cc: $4b
    ccf                                           ; $48cd: $3f
    rst $38                                       ; $48ce: $ff
    cp b                                          ; $48cf: $b8
    ld l, d                                       ; $48d0: $6a
    ld l, h                                       ; $48d1: $6c
    ld l, e                                       ; $48d2: $6b
    ld a, [bc]                                    ; $48d3: $0a
    ccf                                           ; $48d4: $3f
    ld l, d                                       ; $48d5: $6a
    ld c, d                                       ; $48d6: $4a
    ld c, d                                       ; $48d7: $4a
    dec bc                                        ; $48d8: $0b
    ld c, d                                       ; $48d9: $4a
    ld c, d                                       ; $48da: $4a
    ld [hl], l                                    ; $48db: $75
    add b                                         ; $48dc: $80
    ld [hl], a                                    ; $48dd: $77
    pop bc                                        ; $48de: $c1
    ld c, c                                       ; $48df: $49
    dec bc                                        ; $48e0: $0b
    ld b, b                                       ; $48e1: $40
    rst $38                                       ; $48e2: $ff
    jp nz, Jump_000_0bcb                          ; $48e3: $c2 $cb $0b

    ld a, a                                       ; $48e6: $7f
    ldh [$3e], a                                  ; $48e7: $e0 $3e
    pop hl                                        ; $48e9: $e1
    ld a, [bc]                                    ; $48ea: $0a
    cp [hl]                                       ; $48eb: $be
    call nz, $c088                                ; $48ec: $c4 $88 $c0

Jump_06f_48ef:
    rst $38                                       ; $48ef: $ff
    ld [$bce9], a                                 ; $48f0: $ea $e9 $bc
    ld h, c                                       ; $48f3: $61
    dec hl                                        ; $48f4: $2b
    cp [hl]                                       ; $48f5: $be
    pop hl                                        ; $48f6: $e1
    ret nz                                        ; $48f7: $c0

    ldh [$af], a                                  ; $48f8: $e0 $af
    ld h, c                                       ; $48fa: $61
    dec bc                                        ; $48fb: $0b
    ld sp, $402b                                  ; $48fc: $31 $2b $40
    rst $38                                       ; $48ff: $ff
    ld [$88e9], a                                 ; $4900: $ea $e9 $88
    ret nz                                        ; $4903: $c0

    dec c                                         ; $4904: $0d
    dec bc                                        ; $4905: $0b
    di                                            ; $4906: $f3
    ld h, b                                       ; $4907: $60
    ld a, [hl]                                    ; $4908: $7e
    ret nz                                        ; $4909: $c0

    rst $00                                       ; $490a: $c7
    dec bc                                        ; $490b: $0b
    ld c, e                                       ; $490c: $4b
    ld a, [bc]                                    ; $490d: $0a
    inc a                                         ; $490e: $3c
    ld [c], a                                     ; $490f: $e2
    set 7, a                                      ; $4910: $cb $ff
    or a                                          ; $4912: $b7
    ld l, e                                       ; $4913: $6b
    ld c, e                                       ; $4914: $4b
    ld l, e                                       ; $4915: $6b
    ld b, b                                       ; $4916: $40
    ccf                                           ; $4917: $3f
    and d                                         ; $4918: $a2
    cpl                                           ; $4919: $2f
    ld h, b                                       ; $491a: $60
    cp a                                          ; $491b: $bf
    jp $ffca                                      ; $491c: $c3 $ca $ff


    or l                                          ; $491f: $b5
    ld l, e                                       ; $4920: $6b
    ld a, a                                       ; $4921: $7f
    ret nz                                        ; $4922: $c0

    ld l, d                                       ; $4923: $6a
    db $f4                                        ; $4924: $f4
    ld b, b                                       ; $4925: $40
    ld b, e                                       ; $4926: $43
    ld l, e                                       ; $4927: $6b
    ld c, e                                       ; $4928: $4b
    dec sp                                        ; $4929: $3b
    and d                                         ; $492a: $a2
    add b                                         ; $492b: $80
    ldh [$3d], a                                  ; $492c: $e0 $3d
    cp a                                          ; $492e: $bf
    ld hl, sp+$29                                 ; $492f: $f8 $29
    ld l, h                                       ; $4931: $6c
    pop bc                                        ; $4932: $c1
    and c                                         ; $4933: $a1
    ld bc, $bd2a                                  ; $4934: $01 $2a $bd
    ldh [$35], a                                  ; $4937: $e0 $35
    ld [c], a                                     ; $4939: $e2
    db $fc                                        ; $493a: $fc
    and b                                         ; $493b: $a0
    set 7, a                                      ; $493c: $cb $ff
    ld hl, sp+$2a                                 ; $493e: $f8 $2a
    ld [hl], $40                                  ; $4940: $36 $40
    pop bc                                        ; $4942: $c1
    pop bc                                        ; $4943: $c1
    inc bc                                        ; $4944: $03
    ld a, [hl+]                                   ; $4945: $2a
    ld c, d                                       ; $4946: $4a
    cp a                                          ; $4947: $bf
    db $e4                                        ; $4948: $e4
    add hl, sp                                    ; $4949: $39
    sbc a                                         ; $494a: $9f
    jp nz, $8389                                  ; $494b: $c2 $89 $83

    ld [c], a                                     ; $494e: $e2
    cp [hl]                                       ; $494f: $be
    ld [c], a                                     ; $4950: $e2
    ld a, h                                       ; $4951: $7c
    ldh [$61], a                                  ; $4952: $e0 $61
    ld a, [hl+]                                   ; $4954: $2a
    dec sp                                        ; $4955: $3b
    and c                                         ; $4956: $a1
    cp e                                          ; $4957: $bb
    sbc a                                         ; $4958: $9f
    add hl, sp                                    ; $4959: $39
    add hl, hl                                    ; $495a: $29
    ld b, [hl]                                    ; $495b: $46
    jp nz, Jump_06f_6a0a                          ; $495c: $c2 $0a $6a

    ld sp, hl                                     ; $495f: $f9
    db $e3                                        ; $4960: $e3
    ld b, b                                       ; $4961: $40
    ld a, [$7a80]                                 ; $4962: $fa $80 $7a
    add e                                         ; $4965: $83
    inc a                                         ; $4966: $3c
    rst $18                                       ; $4967: $df
    ret nz                                        ; $4968: $c0

    db $eb                                        ; $4969: $eb
    pop bc                                        ; $496a: $c1
    db $e4                                        ; $496b: $e4
    ccf                                           ; $496c: $3f
    and b                                         ; $496d: $a0
    ld c, e                                       ; $496e: $4b
    ld a, h                                       ; $496f: $7c
    and d                                         ; $4970: $a2
    ld h, h                                       ; $4971: $64
    ret nz                                        ; $4972: $c0

    rst $38                                       ; $4973: $ff
    and $e5                                       ; $4974: $e6 $e5
    ld c, d                                       ; $4976: $4a
    add [hl]                                      ; $4977: $86
    and c                                         ; $4978: $a1
    cp e                                          ; $4979: $bb
    db $e4                                        ; $497a: $e4
    ld l, d                                       ; $497b: $6a
    dec bc                                        ; $497c: $0b
    or l                                          ; $497d: $b5
    add b                                         ; $497e: $80
    add [hl]                                      ; $497f: $86
    db $ec                                        ; $4980: $ec
    jr nz, jr_06f_4990                            ; $4981: $20 $0d

    dec hl                                        ; $4983: $2b
    ret z                                         ; $4984: $c8

    rst $38                                       ; $4985: $ff
    or a                                          ; $4986: $b7
    ld h, $c4                                     ; $4987: $26 $c4
    jp nz, $e57f                                  ; $4989: $c2 $7f $e5

    ld a, [hl+]                                   ; $498c: $2a
    ld b, d                                       ; $498d: $42
    ret nz                                        ; $498e: $c0

    db $e3                                        ; $498f: $e3

jr_06f_4990:
    ld c, e                                       ; $4990: $4b
    ccf                                           ; $4991: $3f
    rst $18                                       ; $4992: $df
    ld hl, sp+$27                                 ; $4993: $f8 $27
    ld a, h                                       ; $4995: $7c
    ldh [$3f], a                                  ; $4996: $e0 $3f
    add sp, $4a                                   ; $4998: $e8 $4a
    ld [hl], e                                    ; $499a: $73
    add c                                         ; $499b: $81
    jr nz, @-$3e                                  ; $499c: $20 $c0

    rst $38                                       ; $499e: $ff
    db $eb                                        ; $499f: $eb
    ld [$c03f], a                                 ; $49a0: $ea $3f $c0
    inc a                                         ; $49a3: $3c
    jp $c0b9                                      ; $49a4: $c3 $b9 $c0


    ld a, [hl+]                                   ; $49a7: $2a
    or a                                          ; $49a8: $b7
    and c                                         ; $49a9: $a1
    call $c0ff                                    ; $49aa: $cd $ff $c0
    ld a, $8c                                     ; $49ad: $3e $8c
    db $fc                                        ; $49af: $fc
    and e                                         ; $49b0: $a3
    cp b                                          ; $49b1: $b8
    pop hl                                        ; $49b2: $e1
    db $ec                                        ; $49b3: $ec
    nop                                           ; $49b4: $00
    pop bc                                        ; $49b5: $c1
    rst $38                                       ; $49b6: $ff
    cp a                                          ; $49b7: $bf
    xor e                                         ; $49b8: $ab
    ld l, d                                       ; $49b9: $6a
    dec hl                                        ; $49ba: $2b
    inc b                                         ; $49bb: $04
    pop bc                                        ; $49bc: $c1
    push hl                                       ; $49bd: $e5
    cp a                                          ; $49be: $bf
    ldh [rOCPS], a                                ; $49bf: $e0 $6a
    dec b                                         ; $49c1: $05
    pop bc                                        ; $49c2: $c1
    ccf                                           ; $49c3: $3f
    cp a                                          ; $49c4: $bf
    add b                                         ; $49c5: $80
    xor b                                         ; $49c6: $a8
    ld a, a                                       ; $49c7: $7f
    jp nz, $c37a                                  ; $49c8: $c2 $7a $c3

    inc bc                                        ; $49cb: $03
    ld a, [hl+]                                   ; $49cc: $2a
    ld c, d                                       ; $49cd: $4a
    ld [hl], $a0                                  ; $49ce: $36 $a0
    jp $80bf                                      ; $49d0: $c3 $bf $80


    xor h                                         ; $49d3: $ac
    pop bc                                        ; $49d4: $c1
    ld h, c                                       ; $49d5: $61
    inc a                                         ; $49d6: $3c

jr_06f_49d7:
    and e                                         ; $49d7: $a3
    ld hl, sp+$40                                 ; $49d8: $f8 $40
    sub b                                         ; $49da: $90
    rst $30                                       ; $49db: $f7
    add b                                         ; $49dc: $80
    inc bc                                        ; $49dd: $03
    rst $18                                       ; $49de: $df
    ld b, d                                       ; $49df: $42
    ld c, b                                       ; $49e0: $48
    add a                                         ; $49e1: $87
    ld h, c                                       ; $49e2: $61

Jump_06f_49e3:
    ld c, d                                       ; $49e3: $4a
    add b                                         ; $49e4: $80
    dec h                                         ; $49e5: $25
    cp b                                          ; $49e6: $b8
    ld h, d                                       ; $49e7: $62
    ld a, [hl+]                                   ; $49e8: $2a
    nop                                           ; $49e9: $00
    add b                                         ; $49ea: $80
    rst $38                                       ; $49eb: $ff
    jp hl                                         ; $49ec: $e9


    add sp, -$7c                                  ; $49ed: $e8 $84
    ld b, c                                       ; $49ef: $41
    ld c, d                                       ; $49f0: $4a
    ldh [$83], a                                  ; $49f1: $e0 $83
    ld b, b                                       ; $49f3: $40
    pop bc                                        ; $49f4: $c1
    ld h, b                                       ; $49f5: $60
    or [hl]                                       ; $49f6: $b6
    add e                                         ; $49f7: $83
    inc bc                                        ; $49f8: $03
    rst $38                                       ; $49f9: $ff

jr_06f_49fa:
    nop                                           ; $49fa: $00
    ld bc, $82c9                                  ; $49fb: $01 $c9 $82
    add e                                         ; $49fe: $83
    nop                                           ; $49ff: $00
    ld [hl+], a                                   ; $4a00: $22
    db $f4                                        ; $4a01: $f4
    add e                                         ; $4a02: $83
    pop bc                                        ; $4a03: $c1
    rst $38                                       ; $4a04: $ff
    cp a                                          ; $4a05: $bf
    sub b                                         ; $4a06: $90
    ret nz                                        ; $4a07: $c0

    add sp, $41                                   ; $4a08: $e8 $41
    rst $38                                       ; $4a0a: $ff
    add b                                         ; $4a0b: $80
    nop                                           ; $4a0c: $00

jr_06f_4a0d:
    ld c, d                                       ; $4a0d: $4a
    rst $38                                       ; $4a0e: $ff
    add b                                         ; $4a0f: $80
    ld b, a                                       ; $4a10: $47
    add b                                         ; $4a11: $80
    ld a, l                                       ; $4a12: $7d
    ld [bc], a                                    ; $4a13: $02
    or $63                                        ; $4a14: $f6 $63
    add b                                         ; $4a16: $80
    rst $38                                       ; $4a17: $ff
    rst $38                                       ; $4a18: $ff
    adc h                                         ; $4a19: $8c
    ld a, [hl+]                                   ; $4a1a: $2a
    add hl, de                                    ; $4a1b: $19
    inc c                                         ; $4a1c: $0c
    ei                                            ; $4a1d: $fb
    ld b, c                                       ; $4a1e: $41
    ld sp, hl                                     ; $4a1f: $f9
    ld b, b                                       ; $4a20: $40
    ld c, e                                       ; $4a21: $4b
    inc c                                         ; $4a22: $0c
    di                                            ; $4a23: $f3
    pop hl                                        ; $4a24: $e1
    rst $38                                       ; $4a25: $ff
    rst $38                                       ; $4a26: $ff
    ld a, l                                       ; $4a27: $7d
    dec l                                         ; $4a28: $2d
    nop                                           ; $4a29: $00
    ld sp, hl                                     ; $4a2a: $f9
    add h                                         ; $4a2b: $84
    pop af                                        ; $4a2c: $f1
    add h                                         ; $4a2d: $84
    jp $ffbf                                      ; $4a2e: $c3 $bf $ff


    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    rst $38                                       ; $4a33: $ff
    ld a, c                                       ; $4a34: $79

jr_06f_4a35:
    di                                            ; $4a35: $f3
    rst $38                                       ; $4a36: $ff
    rst $38                                       ; $4a37: $ff
    ld [hl], c                                    ; $4a38: $71
    ld e, [hl]                                    ; $4a39: $5e
    inc c                                         ; $4a3a: $0c
    ld b, c                                       ; $4a3b: $41
    cp a                                          ; $4a3c: $bf
    ld [hl], c                                    ; $4a3d: $71
    ld e, d                                       ; $4a3e: $5a
    ld c, e                                       ; $4a3f: $4b
    ld c, e                                       ; $4a40: $4b
    cp a                                          ; $4a41: $bf
    rst $38                                       ; $4a42: $ff
    pop bc                                        ; $4a43: $c1
    ld a, [$ffbf]                                 ; $4a44: $fa $bf $ff
    di                                            ; $4a47: $f3
    jr c, jr_06f_49d7                             ; $4a48: $38 $8d

    dec c                                         ; $4a4a: $0d
    jr c, jr_06f_4a0d                             ; $4a4b: $38 $c0

    dec c                                         ; $4a4d: $0d
    ld c, e                                       ; $4a4e: $4b
    cp a                                          ; $4a4f: $bf
    sbc a                                         ; $4a50: $9f
    ld b, e                                       ; $4a51: $43
    push af                                       ; $4a52: $f5
    ret nz                                        ; $4a53: $c0

    ld [c], a                                     ; $4a54: $e2
    dec c                                         ; $4a55: $0d
    ld bc, $7f6c                                  ; $4a56: $01 $6c $7f
    rst $38                                       ; $4a59: $ff
    or h                                          ; $4a5a: $b4
    ld [hl-], a                                   ; $4a5b: $32
    cp [hl]                                       ; $4a5c: $be
    ld bc, $4140                                  ; $4a5d: $01 $40 $41
    ld a, a                                       ; $4a60: $7f
    ld a, a                                       ; $4a61: $7f
    or $13                                        ; $4a62: $f6 $13
    ld a, e                                       ; $4a64: $7b
    add c                                         ; $4a65: $81
    jr nz, jr_06f_4ae0                            ; $4a66: $20 $78

    add c                                         ; $4a68: $81
    ret nz                                        ; $4a69: $c0

    rst $38                                       ; $4a6a: $ff
    dec [hl]                                      ; $4a6b: $35
    ld [hl-], a                                   ; $4a6c: $32
    ld b, a                                       ; $4a6d: $47
    jr nz, jr_06f_4a35                            ; $4a6e: $20 $c5

    jr nz, jr_06f_4a9f                            ; $4a70: $20 $2d

    ret nz                                        ; $4a72: $c0

    rst $38                                       ; $4a73: $ff
    ld [hl], $14                                  ; $4a74: $36 $14
    jr jr_06f_4a7f                                ; $4a76: $18 $07

    jr nz, jr_06f_49fa                            ; $4a78: $20 $80

    rst $38                                       ; $4a7a: $ff
    ld [hl], a                                    ; $4a7b: $77
    sub a                                         ; $4a7c: $97
    inc l                                         ; $4a7d: $2c
    dec c                                         ; $4a7e: $0d

jr_06f_4a7f:
    ld b, b                                       ; $4a7f: $40
    push hl                                       ; $4a80: $e5
    ld [hl], l                                    ; $4a81: $75
    cp a                                          ; $4a82: $bf
    add b                                         ; $4a83: $80
    di                                            ; $4a84: $f3
    nop                                           ; $4a85: $00
    ld a, d                                       ; $4a86: $7a
    add d                                         ; $4a87: $82
    halt                                          ; $4a88: $76
    add b                                         ; $4a89: $80
    ret nz                                        ; $4a8a: $c0

    rst $38                                       ; $4a8b: $ff
    di                                            ; $4a8c: $f3
    ld a, [c]                                     ; $4a8d: $f2
    jp nz, $d7e4                                  ; $4a8e: $c2 $e4 $d7

    rst $38                                       ; $4a91: $ff
    or h                                          ; $4a92: $b4
    ld [hl], l                                    ; $4a93: $75
    jp nz, Jump_000_00e4                          ; $4a94: $c2 $e4 $00

    or l                                          ; $4a97: $b5
    sbc a                                         ; $4a98: $9f
    push af                                       ; $4a99: $f5
    rla                                           ; $4a9a: $17
    rst $38                                       ; $4a9b: $ff
    rst $38                                       ; $4a9c: $ff
    rst $38                                       ; $4a9d: $ff
    rst $38                                       ; $4a9e: $ff

jr_06f_4a9f:
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    pop af                                        ; $4aa4: $f1
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    rst $38                                       ; $4aa8: $ff
    sbc b                                         ; $4aa9: $98
    sbc b                                         ; $4aaa: $98
    sub a                                         ; $4aab: $97
    sub a                                         ; $4aac: $97
    sub [hl]                                      ; $4aad: $96
    sub [hl]                                      ; $4aae: $96
    sub l                                         ; $4aaf: $95
    sub l                                         ; $4ab0: $95
    cpl                                           ; $4ab1: $2f
    sub l                                         ; $4ab2: $95
    sub [hl]                                      ; $4ab3: $96
    sub [hl]                                      ; $4ab4: $96
    sub a                                         ; $4ab5: $97
    rst $38                                       ; $4ab6: $ff
    pop hl                                        ; $4ab7: $e1
    sbc b                                         ; $4ab8: $98
    rst $38                                       ; $4ab9: $ff
    ldh [$ee], a                                  ; $4aba: $e0 $ee
    pop hl                                        ; $4abc: $e1
    db $10                                        ; $4abd: $10
    db $ed                                        ; $4abe: $ed
    pop hl                                        ; $4abf: $e1

Jump_06f_4ac0:
    ld [$e9e2], a                                 ; $4ac0: $ea $e2 $e9
    db $e3                                        ; $4ac3: $e3
    add sp, -$1e                                  ; $4ac4: $e8 $e2
    sbc c                                         ; $4ac6: $99
    rst $38                                       ; $4ac7: $ff
    ldh a, [$c1]                                  ; $4ac8: $f0 $c1
    ldh [$c0], a                                  ; $4aca: $e0 $c0
    ld [c], a                                     ; $4acc: $e2
    nop                                           ; $4acd: $00
    pop bc                                        ; $4ace: $c1
    pop hl                                        ; $4acf: $e1
    call nz, $dbe1                                ; $4ad0: $c4 $e1 $db
    ldh [$ad], a                                  ; $4ad3: $e0 $ad
    pop hl                                        ; $4ad5: $e1
    cp [hl]                                       ; $4ad6: $be
    pop hl                                        ; $4ad7: $e1
    xor c                                         ; $4ad8: $a9
    jp hl                                         ; $4ad9: $e9


    and [hl]                                      ; $4ada: $a6
    db $e3                                        ; $4adb: $e3
    cp a                                          ; $4adc: $bf
    ldh a, [$f8]                                  ; $4add: $f0 $f8
    push de                                       ; $4adf: $d5

Jump_06f_4ae0:
jr_06f_4ae0:
    db $e3                                        ; $4ae0: $e3
    add c                                         ; $4ae1: $81
    ldh [$85], a                                  ; $4ae2: $e0 $85
    pop hl                                        ; $4ae4: $e1
    rrca                                          ; $4ae5: $0f
    rlca                                          ; $4ae6: $07
    rlca                                          ; $4ae7: $07
    rrca                                          ; $4ae8: $0f
    nop                                           ; $4ae9: $00
    add c                                         ; $4aea: $81
    ld bc, $e0bf                                  ; $4aeb: $01 $bf $e0
    xor d                                         ; $4aee: $aa
    pop hl                                        ; $4aef: $e1
    xor b                                         ; $4af0: $a8
    push hl                                       ; $4af1: $e5
    or [hl]                                       ; $4af2: $b6
    ld [c], a                                     ; $4af3: $e2
    ld a, l                                       ; $4af4: $7d
    or $54                                        ; $4af5: $f6 $54
    push hl                                       ; $4af7: $e5
    sub [hl]                                      ; $4af8: $96
    cp $c1                                        ; $4af9: $fe $c1
    pop hl                                        ; $4afb: $e1
    ld [bc], a                                    ; $4afc: $02
    ld c, b                                       ; $4afd: $48
    ld c, b                                       ; $4afe: $48
    ld [bc], a                                    ; $4aff: $02
    rlca                                          ; $4b00: $07
    inc b                                         ; $4b01: $04
    add hl, bc                                    ; $4b02: $09
    inc bc                                        ; $4b03: $03
    inc b                                         ; $4b04: $04
    dec c                                         ; $4b05: $0d
    halt                                          ; $4b06: $76
    ld [c], a                                     ; $4b07: $e2
    daa                                           ; $4b08: $27
    ldh [$3e], a                                  ; $4b09: $e0 $3e
    db $e3                                        ; $4b0b: $e3
    cp [hl]                                       ; $4b0c: $be
    push hl                                       ; $4b0d: $e5
    inc a                                         ; $4b0e: $3c
    pop af                                        ; $4b0f: $f1
    ld [bc], a                                    ; $4b10: $02
    rst $20                                       ; $4b11: $e7
    cp $c1                                        ; $4b12: $fe $c1
    ldh [rBGP], a                                 ; $4b14: $e0 $47
    ld d, h                                       ; $4b16: $54
    ld e, c                                       ; $4b17: $59
    ld b, e                                       ; $4b18: $43
    ld b, l                                       ; $4b19: $45
    ld b, [hl]                                    ; $4b1a: $46
    xor [hl]                                      ; $4b1b: $ae
    rrca                                          ; $4b1c: $0f
    xor [hl]                                      ; $4b1d: $ae
    inc bc                                        ; $4b1e: $03
    inc b                                         ; $4b1f: $04
    rrca                                          ; $4b20: $0f
    add hl, sp                                    ; $4b21: $39
    ld [c], a                                     ; $4b22: $e2
    ld a, [$7ac5]                                 ; $4b23: $fa $c5 $7a
    ld [c], a                                     ; $4b26: $e2
    inc a                                         ; $4b27: $3c
    di                                            ; $4b28: $f3
    db $fc                                        ; $4b29: $fc
    ld b, d                                       ; $4b2a: $42
    db $e4                                        ; $4b2b: $e4
    ld [bc], a                                    ; $4b2c: $02
    pop hl                                        ; $4b2d: $e1
    ld [$5651], sp                                ; $4b2e: $08 $51 $56
    dec l                                         ; $4b31: $2d
    cpl                                           ; $4b32: $2f
    cpl                                           ; $4b33: $2f
    rst $38                                       ; $4b34: $ff
    ld a, [hl+]                                   ; $4b35: $2a
    ld b, e                                       ; $4b36: $43
    xor a                                         ; $4b37: $af
    xor a                                         ; $4b38: $af
    xor [hl]                                      ; $4b39: $ae
    ld b, [hl]                                    ; $4b3a: $46
    ld b, $01                                     ; $4b3b: $06 $01
    add c                                         ; $4b3d: $81
    nop                                           ; $4b3e: $00
    push hl                                       ; $4b3f: $e5
    pop bc                                        ; $4b40: $c1
    ret nz                                        ; $4b41: $c0

    push hl                                       ; $4b42: $e5
    or a                                          ; $4b43: $b7
    add $ba                                       ; $4b44: $c6 $ba
    adc $83                                       ; $4b46: $ce $83
    call nz, $c187                                ; $4b48: $c4 $87 $c1
    ld [$45ff], sp                                ; $4b4b: $08 $ff $45
    ld b, l                                       ; $4b4e: $45
    ld l, $20                                     ; $4b4f: $2e $20
    jr nz, jr_06f_4b73                            ; $4b51: $20 $20

    ld hl, $1f38                                  ; $4b53: $21 $38 $1f
    scf                                           ; $4b56: $37
    xor a                                         ; $4b57: $af
    xor [hl]                                      ; $4b58: $ae
    dec b                                         ; $4b59: $05
    ld c, $80                                     ; $4b5a: $0e $80
    db $e3                                        ; $4b5c: $e3
    ld bc, $7de3                                  ; $4b5d: $01 $e3 $7d

Jump_06f_4b60:
    add sp, -$08                                  ; $4b60: $e8 $f8
    ld a, c                                       ; $4b62: $79
    call $e581                                    ; $4b63: $cd $81 $e5
    ld h, d                                       ; $4b66: $62
    ret nz                                        ; $4b67: $c0

    rrca                                          ; $4b68: $0f
    ld [bc], a                                    ; $4b69: $02
    ld b, l                                       ; $4b6a: $45
    ld a, [hl+]                                   ; $4b6b: $2a
    inc l                                         ; $4b6c: $2c
    rst $38                                       ; $4b6d: $ff
    ld sp, $212c                                  ; $4b6e: $31 $2c $21
    dec [hl]                                      ; $4b71: $35
    dec [hl]                                      ; $4b72: $35

jr_06f_4b73:
    ld b, b                                       ; $4b73: $40
    xor a                                         ; $4b74: $af
    ld b, [hl]                                    ; $4b75: $46
    pop bc                                        ; $4b76: $c1
    ld [$c227], sp                                ; $4b77: $08 $27 $c2
    ld b, h                                       ; $4b7a: $44
    jp $e45d                                      ; $4b7b: $c3 $5d $e4


    cp a                                          ; $4b7e: $bf
    ld a, [c]                                     ; $4b7f: $f2
    add c                                         ; $4b80: $81
    and $99                                       ; $4b81: $e6 $99
    ld bc, $00fd                                  ; $4b83: $01 $fd $00
    cp a                                          ; $4b86: $bf
    ldh [rHDMA1], a                               ; $4b87: $e0 $51
    ld e, a                                       ; $4b89: $5f
    ld d, d                                       ; $4b8a: $52
    scf                                           ; $4b8b: $37
    dec a                                         ; $4b8c: $3d
    scf                                           ; $4b8d: $37
    add c                                         ; $4b8e: $81
    ld b, l                                       ; $4b8f: $45
    rst $38                                       ; $4b90: $ff
    ret nz                                        ; $4b91: $c0

    pop bc                                        ; $4b92: $c1
    db $e3                                        ; $4b93: $e3
    pop af                                        ; $4b94: $f1
    and e                                         ; $4b95: $a3
    rst $30                                       ; $4b96: $f7
    call nz, $f17e                                ; $4b97: $c4 $7e $f1
    add b                                         ; $4b9a: $80
    add sp, -$67                                  ; $4b9b: $e8 $99
    ld a, $40                                     ; $4b9d: $3e $40
    ret nz                                        ; $4b9f: $c0

    ld [bc], a                                    ; $4ba0: $02
    ld d, e                                       ; $4ba1: $53
    ld d, e                                       ; $4ba2: $53
    inc bc                                        ; $4ba3: $03
    add hl, bc                                    ; $4ba4: $09
    ld a, a                                       ; $4ba5: $7f
    jp $a3b2                                      ; $4ba6: $c3 $b2 $a3


    ldh [$f1], a                                  ; $4ba9: $e0 $f1
    and c                                         ; $4bab: $a1
    rst $30                                       ; $4bac: $f7
    add $79                                       ; $4bad: $c6 $79
    push bc                                       ; $4baf: $c5
    nop                                           ; $4bb0: $00
    di                                            ; $4bb1: $f3
    sbc l                                         ; $4bb2: $9d
    and d                                         ; $4bb3: $a2
    rlca                                          ; $4bb4: $07
    rlca                                          ; $4bb5: $07
    dec c                                         ; $4bb6: $0d
    nop                                           ; $4bb7: $00
    cp $a3                                        ; $4bb8: $fe $a3
    ldh a, [$e4]                                  ; $4bba: $f0 $e4
    cp b                                          ; $4bbc: $b8
    ret nz                                        ; $4bbd: $c0

    or $c5                                        ; $4bbe: $f6 $c5
    ld [hl], c                                    ; $4bc0: $71
    and l                                         ; $4bc1: $a5
    halt                                          ; $4bc2: $76
    xor d                                         ; $4bc3: $aa
    add b                                         ; $4bc4: $80
    rst $00                                       ; $4bc5: $c7
    sbc h                                         ; $4bc6: $9c
    and l                                         ; $4bc7: $a5
    inc e                                         ; $4bc8: $1c
    add [hl]                                      ; $4bc9: $86
    pop bc                                        ; $4bca: $c1
    ld a, e                                       ; $4bcb: $7b
    and c                                         ; $4bcc: $a1
    sbc c                                         ; $4bcd: $99
    dec c                                         ; $4bce: $0d
    rlca                                          ; $4bcf: $07
    rst $38                                       ; $4bd0: $ff
    pop hl                                        ; $4bd1: $e1
    or c                                          ; $4bd2: $b1
    ld [c], a                                     ; $4bd3: $e2
    or d                                          ; $4bd4: $b2
    and l                                         ; $4bd5: $a5
    ret nz                                        ; $4bd6: $c0

    ld a, [de]                                    ; $4bd7: $1a
    and e                                         ; $4bd8: $a3
    ret nz                                        ; $4bd9: $c0

    ld [$a502], a                                 ; $4bda: $ea $02 $a5
    call c, Call_000_2ca6                         ; $4bdd: $dc $a6 $2c

Jump_06f_4be0:
    and b                                         ; $4be0: $a0
    db $f4                                        ; $4be1: $f4
    pop bc                                        ; $4be2: $c1
    inc b                                         ; $4be3: $04
    add hl, bc                                    ; $4be4: $09
    rra                                           ; $4be5: $1f
    inc bc                                        ; $4be6: $03
    ld b, l                                       ; $4be7: $45
    ccf                                           ; $4be8: $3f
    ccf                                           ; $4be9: $3f
    ccf                                           ; $4bea: $3f
    push af                                       ; $4beb: $f5
    jp nz, $85eb                                  ; $4bec: $c2 $eb $85

    ld a, a                                       ; $4bef: $7f
    ldh a, [$f8]                                  ; $4bf0: $f0 $f8
    call nc, Call_06f_6288                        ; $4bf2: $d4 $88 $62
    and $74                                       ; $4bf5: $e6 $74
    jp Jump_000_3d37                              ; $4bf7: $c3 $37 $3d


jr_06f_4bfa:
    jr c, jr_06f_4c31                             ; $4bfa: $38 $35

    dec [hl]                                      ; $4bfc: $35
    ccf                                           ; $4bfd: $3f
    dec [hl]                                      ; $4bfe: $35
    jr c, jr_06f_4c38                             ; $4bff: $38 $37

    ld b, l                                       ; $4c01: $45
    ld [bc], a                                    ; $4c02: $02
    rrca                                          ; $4c03: $0f
    db $eb                                        ; $4c04: $eb
    add h                                         ; $4c05: $84
    ld a, a                                       ; $4c06: $7f
    pop af                                        ; $4c07: $f1
    ld [hl], b                                    ; $4c08: $70
    nop                                           ; $4c09: $00
    and l                                         ; $4c0a: $a5
    sub c                                         ; $4c0b: $91
    add l                                         ; $4c0c: $85
    ld a, e                                       ; $4c0d: $7b
    add e                                         ; $4c0e: $83
    dec [hl]                                      ; $4c0f: $35
    ret nz                                        ; $4c10: $c0

    ld [hl], $35                                  ; $4c11: $36 $35
    xor h                                         ; $4c13: $ac
    cp $e0                                        ; $4c14: $fe $e0
    rrca                                          ; $4c16: $0f
    dec [hl]                                      ; $4c17: $35
    dec [hl]                                      ; $4c18: $35
    xor h                                         ; $4c19: $ac
    ld [hl], $bf                                  ; $4c1a: $36 $bf
    ldh [$b2], a                                  ; $4c1c: $e0 $b2
    and c                                         ; $4c1e: $a1
    ld [hl], c                                    ; $4c1f: $71
    and e                                         ; $4c20: $a3
    cp $c4                                        ; $4c21: $fe $c4
    add sp, -$80                                  ; $4c23: $e8 $80
    adc h                                         ; $4c25: $8c
    jp c, Jump_000_3ca9                           ; $4c26: $da $a9 $3c

    add c                                         ; $4c29: $81
    ld b, $c1                                     ; $4c2a: $06 $c1
    ldh [$35], a                                  ; $4c2c: $e0 $35
    xor l                                         ; $4c2e: $ad
    dec [hl]                                      ; $4c2f: $35
    rlca                                          ; $4c30: $07

jr_06f_4c31:
    xor l                                         ; $4c31: $ad
    xor h                                         ; $4c32: $ac
    jp $e0fc                                      ; $4c33: $c3 $fc $e0


    cp a                                          ; $4c36: $bf
    pop hl                                        ; $4c37: $e1

jr_06f_4c38:
    ei                                            ; $4c38: $fb
    jp $8518                                      ; $4c39: $c3 $18 $85


    ret nz                                        ; $4c3c: $c0

    jp hl                                         ; $4c3d: $e9


    call c, $e8bf                                 ; $4c3e: $dc $bf $e8
    add hl, sp                                    ; $4c41: $39
    add [hl]                                      ; $4c42: $86
    sbc c                                         ; $4c43: $99
    ld a, [bc]                                    ; $4c44: $0a

Jump_06f_4c45:
    add hl, sp                                    ; $4c45: $39
    ld b, a                                       ; $4c46: $47
    ldh [$3f], a                                  ; $4c47: $e0 $3f
    scf                                           ; $4c49: $37
    ei                                            ; $4c4a: $fb
    jr c, jr_06f_4bfa                             ; $4c4b: $38 $ad

    ld a, [hl]                                    ; $4c4d: $7e
    ldh [$ad], a                                  ; $4c4e: $e0 $ad
    dec [hl]                                      ; $4c50: $35
    ld [hl], $45                                  ; $4c51: $36 $45
    ld b, $f0                                     ; $4c53: $06 $f0
    pop af                                        ; $4c55: $f1
    add [hl]                                      ; $4c56: $86
    ld a, [hl]                                    ; $4c57: $7e
    call $8554                                    ; $4c58: $cd $54 $85
    add hl, sp                                    ; $4c5b: $39
    adc c                                         ; $4c5c: $89
    sbc c                                         ; $4c5d: $99
    sbc c                                         ; $4c5e: $99
    ld a, [bc]                                    ; $4c5f: $0a
    ld a, $ff                                     ; $4c60: $3e $ff
    ld [hl], $47                                  ; $4c62: $36 $47
    ld c, h                                       ; $4c64: $4c
    ld c, h                                       ; $4c65: $4c
    ld b, a                                       ; $4c66: $47
    ld b, l                                       ; $4c67: $45
    ld [hl], $ad                                  ; $4c68: $36 $ad
    rst $38                                       ; $4c6a: $ff
    dec [hl]                                      ; $4c6b: $35

Jump_06f_4c6c:
    call Call_000_35cf                            ; $4c6c: $cd $cf $35
    dec [hl]                                      ; $4c6f: $35
    add hl, sp                                    ; $4c70: $39
    dec b                                         ; $4c71: $05
    ld c, $e0                                     ; $4c72: $0e $e0
    nop                                           ; $4c74: $00
    ld [$eb7f], a                                 ; $4c75: $ea $7f $eb
    cp a                                          ; $4c78: $bf
    db $e4                                        ; $4c79: $e4
    ld sp, hl                                     ; $4c7a: $f9
    ld h, h                                       ; $4c7b: $64
    sbc c                                         ; $4c7c: $99
    ld h, b                                       ; $4c7d: $60
    nop                                           ; $4c7e: $00
    ld bc, $ff06                                  ; $4c7f: $01 $06 $ff
    ld b, e                                       ; $4c82: $43
    ld c, d                                       ; $4c83: $4a
    ld d, [hl]                                    ; $4c84: $56
    ld c, d                                       ; $4c85: $4a
    ld d, l                                       ; $4c86: $55
    ld d, d                                       ; $4c87: $52
    ld d, d                                       ; $4c88: $52
    ld b, l                                       ; $4c89: $45
    rst $38                                       ; $4c8a: $ff
    ld a, [hl-]                                   ; $4c8b: $3a
    dec [hl]                                      ; $4c8c: $35
    adc $c3                                       ; $4c8d: $ce $c3
    dec [hl]                                      ; $4c8f: $35
    xor h                                         ; $4c90: $ac
    ld a, [hl-]                                   ; $4c91: $3a
    ld b, l                                       ; $4c92: $45
    ldh [$31], a                                  ; $4c93: $e0 $31
    and e                                         ; $4c95: $a3
    ld a, a                                       ; $4c96: $7f
    pop de                                        ; $4c97: $d1
    call nc, Call_000_3aa4                        ; $4c98: $d4 $a4 $3a
    ld h, l                                       ; $4c9b: $65
    scf                                           ; $4c9c: $37
    and d                                         ; $4c9d: $a2
    sbc c                                         ; $4c9e: $99
    ld [$ef45], sp                                ; $4c9f: $08 $45 $ef
    ld c, e                                       ; $4ca2: $4b
    ld d, l                                       ; $4ca3: $55
    ld b, l                                       ; $4ca4: $45
    ld b, e                                       ; $4ca5: $43
    ei                                            ; $4ca6: $fb
    ldh [$39], a                                  ; $4ca7: $e0 $39
    xor h                                         ; $4ca9: $ac
    rst $08                                       ; $4caa: $cf
    ccf                                           ; $4cab: $3f
    adc $35                                       ; $4cac: $ce $35
    xor l                                         ; $4cae: $ad
    inc a                                         ; $4caf: $3c
    ld b, h                                       ; $4cb0: $44
    ld b, $f0                                     ; $4cb1: $06 $f0
    ld l, b                                       ; $4cb3: $68
    ld [hl], l                                    ; $4cb4: $75
    ld l, l                                       ; $4cb5: $6d
    db $fc                                        ; $4cb6: $fc

jr_06f_4cb7:
    ld hl, $80c6                                  ; $4cb7: $21 $c6 $80
    push hl                                       ; $4cba: $e5
    rrca                                          ; $4cbb: $0f
    inc b                                         ; $4cbc: $04
    inc bc                                        ; $4cbd: $03
    ld b, l                                       ; $4cbe: $45
    ld d, h                                       ; $4cbf: $54
    ld d, d                                       ; $4cc0: $52
    cp a                                          ; $4cc1: $bf
    add sp, -$18                                  ; $4cc2: $e8 $e8
    ld b, l                                       ; $4cc4: $45
    ld c, d                                       ; $4cc5: $4a
    ld d, [hl]                                    ; $4cc6: $56
    ld b, b                                       ; $4cc7: $40
    cp $c1                                        ; $4cc8: $fe $c1
    xor h                                         ; $4cca: $ac
    rlca                                          ; $4ccb: $07
    dec [hl]                                      ; $4ccc: $35
    add hl, sp                                    ; $4ccd: $39
    ld a, [bc]                                    ; $4cce: $0a
    rst $38                                       ; $4ccf: $ff
    ret z                                         ; $4cd0: $c8

    di                                            ; $4cd1: $f3
    ld d, b                                       ; $4cd2: $50
    db $db                                        ; $4cd3: $db
    add [hl]                                      ; $4cd4: $86
    or [hl]                                       ; $4cd5: $b6
    add d                                         ; $4cd6: $82
    inc b                                         ; $4cd7: $04
    pop bc                                        ; $4cd8: $c1
    rst $38                                       ; $4cd9: $ff
    scf                                           ; $4cda: $37
    ld d, e                                       ; $4cdb: $53
    ld d, h                                       ; $4cdc: $54
    ld h, b                                       ; $4cdd: $60
    ld d, l                                       ; $4cde: $55
    ld b, a                                       ; $4cdf: $47
    ld h, b                                       ; $4ce0: $60
    ld e, h                                       ; $4ce1: $5c
    dec de                                        ; $4ce2: $1b
    xor h                                         ; $4ce3: $ac
    xor l                                         ; $4ce4: $ad
    ld [hl], a                                    ; $4ce5: $77
    pop bc                                        ; $4ce6: $c1
    ld a, $0a                                     ; $4ce7: $3e $0a
    ld a, a                                       ; $4ce9: $7f
    add $b7                                       ; $4cea: $c6 $b7
    ld [hl], d                                    ; $4cec: $72
    and b                                         ; $4ced: $a0
    xor b                                         ; $4cee: $a8
    ld a, [hl]                                    ; $4cef: $7e
    halt                                          ; $4cf0: $76
    add b                                         ; $4cf1: $80
    dec b                                         ; $4cf2: $05
    ld b, b                                       ; $4cf3: $40
    dec [hl]                                      ; $4cf4: $35
    xor h                                         ; $4cf5: $ac
    xor h                                         ; $4cf6: $ac
    jr c, jr_06f_4cb7                             ; $4cf7: $38 $be

    pop hl                                        ; $4cf9: $e1
    rst $18                                       ; $4cfa: $df
    ld h, c                                       ; $4cfb: $61
    ld e, h                                       ; $4cfc: $5c
    xor l                                         ; $4cfd: $ad
    adc $cf                                       ; $4cfe: $ce $cf
    rst $30                                       ; $4d00: $f7
    and b                                         ; $4d01: $a0
    ld a, $05                                     ; $4d02: $3e $05
    ldh a, [$7f]                                  ; $4d04: $f0 $7f
    res 7, e                                      ; $4d06: $cb $bb
    adc h                                         ; $4d08: $8c
    ret nz                                        ; $4d09: $c0

    db $eb                                        ; $4d0a: $eb
    ld [bc], a                                    ; $4d0b: $02
    pop bc                                        ; $4d0c: $c1
    xor l                                         ; $4d0d: $ad
    xor l                                         ; $4d0e: $ad
    dec [hl]                                      ; $4d0f: $35
    jr c, @+$01                                   ; $4d10: $38 $ff

    ld b, l                                       ; $4d12: $45
    ld b, l                                       ; $4d13: $45
    ld d, e                                       ; $4d14: $53
    ld d, e                                       ; $4d15: $53
    ld b, h                                       ; $4d16: $44
    inc a                                         ; $4d17: $3c
    rst $08                                       ; $4d18: $cf
    jp $cf03                                      ; $4d19: $c3 $03 $cf


    xor l                                         ; $4d1c: $ad
    cp a                                          ; $4d1d: $bf
    jp Jump_06f_48ef                              ; $4d1e: $c3 $ef $48


    ret nz                                        ; $4d21: $c0

    rst $28                                       ; $4d22: $ef
    ld b, b                                       ; $4d23: $40
    add sp, -$7e                                  ; $4d24: $e8 $82
    and c                                         ; $4d26: $a1
    ei                                            ; $4d27: $fb
    ld h, c                                       ; $4d28: $61
    ld a, a                                       ; $4d29: $7f
    ld b, l                                       ; $4d2a: $45
    ld b, [hl]                                    ; $4d2b: $46
    ld b, [hl]                                    ; $4d2c: $46
    ld b, [hl]                                    ; $4d2d: $46
    ld b, b                                       ; $4d2e: $40
    dec [hl]                                      ; $4d2f: $35
    dec [hl]                                      ; $4d30: $35
    cp a                                          ; $4d31: $bf
    jp Jump_000_08c1                              ; $4d32: $c3 $c1 $08


    rst $28                                       ; $4d35: $ef
    ld b, e                                       ; $4d36: $43
    add hl, de                                    ; $4d37: $19
    xor b                                         ; $4d38: $a8
    ld b, c                                       ; $4d39: $41
    rst $28                                       ; $4d3a: $ef
    ld b, b                                       ; $4d3b: $40
    push bc                                       ; $4d3c: $c5
    cp a                                          ; $4d3d: $bf
    jp nz, Jump_06f_4747                          ; $4d3e: $c2 $47 $47

    rst $08                                       ; $4d41: $cf
    ld d, d                                       ; $4d42: $52
    ld b, e                                       ; $4d43: $43

Jump_06f_4d44:
    ld b, l                                       ; $4d44: $45
    ld b, l                                       ; $4d45: $45
    add hl, sp                                    ; $4d46: $39
    and d                                         ; $4d47: $a2
    ld sp, hl                                     ; $4d48: $f9
    add b                                         ; $4d49: $80
    ld b, b                                       ; $4d4a: $40
    ld [$ef60], sp                                ; $4d4b: $08 $60 $ef
    ld b, d                                       ; $4d4e: $42
    db $ec                                        ; $4d4f: $ec
    daa                                           ; $4d50: $27
    dec a                                         ; $4d51: $3d
    call z, $8660                                 ; $4d52: $cc $60 $86
    ld [hl], a                                    ; $4d55: $77
    ld h, b                                       ; $4d56: $60
    nop                                           ; $4d57: $00
    ld bc, $60b8                                  ; $4d58: $01 $b8 $60
    ld a, a                                       ; $4d5b: $7f
    ld b, a                                       ; $4d5c: $47
    ld h, b                                       ; $4d5d: $60
    ld d, l                                       ; $4d5e: $55
    ld e, b                                       ; $4d5f: $58
    ld c, h                                       ; $4d60: $4c
    ld b, a                                       ; $4d61: $47
    ld d, d                                       ; $4d62: $52
    cp a                                          ; $4d63: $bf
    ldh [$86], a                                  ; $4d64: $e0 $86
    ld a, h                                       ; $4d66: $7c
    and c                                         ; $4d67: $a1
    jp $8040                                      ; $4d68: $c3 $40 $80


    db $e3                                        ; $4d6b: $e3
    sub h                                         ; $4d6c: $94
    daa                                           ; $4d6d: $27
    cp d                                          ; $4d6e: $ba
    ld l, d                                       ; $4d6f: $6a
    ld b, b                                       ; $4d70: $40
    call $ff02                                    ; $4d71: $cd $02 $ff
    ld c, b                                       ; $4d74: $48
    ld c, [hl]                                    ; $4d75: $4e
    ld c, b                                       ; $4d76: $48
    ld d, e                                       ; $4d77: $53
    ld c, d                                       ; $4d78: $4a
    ld h, b                                       ; $4d79: $60
    ld h, c                                       ; $4d7a: $61
    ld d, l                                       ; $4d7b: $55
    dec de                                        ; $4d7c: $1b
    ld e, b                                       ; $4d7d: $58
    ld d, l                                       ; $4d7e: $55
    cp a                                          ; $4d7f: $bf
    db $e4                                        ; $4d80: $e4
    ld b, b                                       ; $4d81: $40
    dec bc                                        ; $4d82: $0b
    ld a, d                                       ; $4d83: $7a
    add b                                         ; $4d84: $80
    db $ec                                        ; $4d85: $ec
    dec h                                         ; $4d86: $25
    ccf                                           ; $4d87: $3f
    pop af                                        ; $4d88: $f1
    ld a, [$c940]                                 ; $4d89: $fa $40 $c9
    ld b, $c5                                     ; $4d8c: $06 $c5
    ldh [$60], a                                  ; $4d8e: $e0 $60
    ld c, c                                       ; $4d90: $49
    ld c, b                                       ; $4d91: $48
    ld d, d                                       ; $4d92: $52
    ld e, b                                       ; $4d93: $58
    ccf                                           ; $4d94: $3f
    ld c, d                                       ; $4d95: $4a
    ld h, b                                       ; $4d96: $60
    ld h, b                                       ; $4d97: $60
    ld c, c                                       ; $4d98: $49
    ld c, c                                       ; $4d99: $49
    ld b, a                                       ; $4d9a: $47
    dec sp                                        ; $4d9b: $3b
    and b                                         ; $4d9c: $a0
    ld a, d                                       ; $4d9d: $7a
    add e                                         ; $4d9e: $83
    cp b                                          ; $4d9f: $b8
    db $fd                                        ; $4da0: $fd
    add $7c                                       ; $4da1: $c6 $7c
    or c                                          ; $4da3: $b1
    ld b, b                                       ; $4da4: $40
    ret z                                         ; $4da5: $c8

    ld a, [bc]                                    ; $4da6: $0a
    ld c, a                                       ; $4da7: $4f
    ld h, c                                       ; $4da8: $61
    rst $38                                       ; $4da9: $ff
    pop hl                                        ; $4daa: $e1
    ld d, d                                       ; $4dab: $52
    ld e, e                                       ; $4dac: $5b
    ld c, l                                       ; $4dad: $4d
    ld h, b                                       ; $4dae: $60
    ld sp, hl                                     ; $4daf: $f9
    ld [c], a                                     ; $4db0: $e2
    ld b, l                                       ; $4db1: $45
    ld [hl], $7a                                  ; $4db2: $36 $7a
    add e                                         ; $4db4: $83
    ld b, $76                                     ; $4db5: $06 $76
    ld h, d                                       ; $4db7: $62
    ret nc                                        ; $4db8: $d0

    ccf                                           ; $4db9: $3f
    ld a, [c]                                     ; $4dba: $f2
    pop hl                                        ; $4dbb: $e1
    ld h, e                                       ; $4dbc: $63
    ccf                                           ; $4dbd: $3f
    and l                                         ; $4dbe: $a5
    ret nz                                        ; $4dbf: $c0

    db $e4                                        ; $4dc0: $e4
    ld h, c                                       ; $4dc1: $61
    pop bc                                        ; $4dc2: $c1
    db $e4                                        ; $4dc3: $e4
    ld b, l                                       ; $4dc4: $45
    ld b, e                                       ; $4dc5: $43
    add d                                         ; $4dc6: $82
    inc sp                                        ; $4dc7: $33
    add d                                         ; $4dc8: $82
    add hl, sp                                    ; $4dc9: $39
    db $fc                                        ; $4dca: $fc
    and h                                         ; $4dcb: $a4
    inc a                                         ; $4dcc: $3c
    or h                                          ; $4dcd: $b4
    cp a                                          ; $4dce: $bf
    adc b                                         ; $4dcf: $88
    ld b, b                                       ; $4dd0: $40
    pop hl                                        ; $4dd1: $e1
    rst $38                                       ; $4dd2: $ff
    and $52                                       ; $4dd3: $e6 $52
    rst $18                                       ; $4dd5: $df
    ld b, e                                       ; $4dd6: $43
    ld b, a                                       ; $4dd7: $47
    ld c, h                                       ; $4dd8: $4c
    ld d, l                                       ; $4dd9: $55
    ld a, [hl-]                                   ; $4dda: $3a
    cp b                                          ; $4ddb: $b8
    ld h, b                                       ; $4ddc: $60
    ld a, $0c                                     ; $4ddd: $3e $0c
    db $fc                                        ; $4ddf: $fc
    ld a, e                                       ; $4de0: $7b
    ld h, l                                       ; $4de1: $65
    rst $38                                       ; $4de2: $ff
    cp l                                          ; $4de3: $bd
    rrca                                          ; $4de4: $0f
    ld [bc], a                                    ; $4de5: $02
    ld d, e                                       ; $4de6: $53
    ld e, c                                       ; $4de7: $59
    ld e, c                                       ; $4de8: $59
    ld d, h                                       ; $4de9: $54
    ld a, $bd                                     ; $4dea: $3e $bd
    push hl                                       ; $4dec: $e5
    ld c, h                                       ; $4ded: $4c
    ld d, h                                       ; $4dee: $54
    ld d, h                                       ; $4def: $54
    ld d, [hl]                                    ; $4df0: $56
    add hl, sp                                    ; $4df1: $39
    or d                                          ; $4df2: $b2
    ld h, b                                       ; $4df3: $60
    add b                                         ; $4df4: $80
    ldh [$78], a                                  ; $4df5: $e0 $78
    dec de                                        ; $4df7: $1b
    rst $20                                       ; $4df8: $e7
    rst $38                                       ; $4df9: $ff
    or a                                          ; $4dfa: $b7
    ld [hl], a                                    ; $4dfb: $77
    ld [bc], a                                    ; $4dfc: $02
    rlca                                          ; $4dfd: $07
    rlca                                          ; $4dfe: $07
    dec b                                         ; $4dff: $05
    ld c, e                                       ; $4e00: $4b
    ld a, a                                       ; $4e01: $7f
    and $1f                                       ; $4e02: $e6 $1f
    ld b, l                                       ; $4e04: $45
    ld b, h                                       ; $4e05: $44
    ld e, [hl]                                    ; $4e06: $5e
    ld e, h                                       ; $4e07: $5c
    inc a                                         ; $4e08: $3c
    cp e                                          ; $4e09: $bb
    ld h, c                                       ; $4e0a: $61
    xor [hl]                                      ; $4e0b: $ae
    dec b                                         ; $4e0c: $05
    ld b, c                                       ; $4e0d: $41
    di                                            ; $4e0e: $f3
    ld a, b                                       ; $4e0f: $78
    sbc e                                         ; $4e10: $9b
    dec h                                         ; $4e11: $25
    ld [hl], h                                    ; $4e12: $74
    ld hl, $60fe                                  ; $4e13: $21 $fe $60
    ld d, l                                       ; $4e16: $55
    ld h, c                                       ; $4e17: $61
    ld e, b                                       ; $4e18: $58
    ld d, l                                       ; $4e19: $55
    cp c                                          ; $4e1a: $b9
    jp nz, Jump_06f_543f                          ; $4e1b: $c2 $3f $54

    ld c, c                                       ; $4e1e: $49
    ld c, h                                       ; $4e1f: $4c
    ld d, d                                       ; $4e20: $52
    ld b, h                                       ; $4e21: $44
    inc a                                         ; $4e22: $3c
    ld a, [$2e41]                                 ; $4e23: $fa $41 $2e
    rlca                                          ; $4e26: $07
    cp b                                          ; $4e27: $b8
    nop                                           ; $4e28: $00
    or h                                          ; $4e29: $b4
    or l                                          ; $4e2a: $b5
    ld b, $3e                                     ; $4e2b: $06 $3e
    add c                                         ; $4e2d: $81
    ld d, e                                       ; $4e2e: $53
    ld d, h                                       ; $4e2f: $54
    ld c, h                                       ; $4e30: $4c
    pop bc                                        ; $4e31: $c1
    ld [c], a                                     ; $4e32: $e2
    ld d, h                                       ; $4e33: $54
    ld b, d                                       ; $4e34: $42
    cp l                                          ; $4e35: $bd
    pop bc                                        ; $4e36: $c1
    ccf                                           ; $4e37: $3f
    ld b, c                                       ; $4e38: $41
    pop bc                                        ; $4e39: $c1
    cp l                                          ; $4e3a: $bd
    ld d, h                                       ; $4e3b: $54
    ccf                                           ; $4e3c: $3f
    adc e                                         ; $4e3d: $8b
    ld b, b                                       ; $4e3e: $40
    ld [c], a                                     ; $4e3f: $e2
    ld [bc], a                                    ; $4e40: $02
    add [hl]                                      ; $4e41: $86
    and b                                         ; $4e42: $a0
    ei                                            ; $4e43: $fb
    ld c, b                                       ; $4e44: $48
    ld c, b                                       ; $4e45: $48
    ld a, [$59c0]                                 ; $4e46: $fa $c0 $59
    ld d, e                                       ; $4e49: $53
    ld c, b                                       ; $4e4a: $48
    ld c, b                                       ; $4e4b: $48
    ld e, e                                       ; $4e4c: $5b
    rra                                           ; $4e4d: $1f
    ld b, a                                       ; $4e4e: $47
    ld d, d                                       ; $4e4f: $52
    dec d                                         ; $4e50: $15
    rlca                                          ; $4e51: $07
    rlca                                          ; $4e52: $07
    xor b                                         ; $4e53: $a8
    ld [hl+], a                                   ; $4e54: $22
    cp l                                          ; $4e55: $bd
    ld [hl], l                                    ; $4e56: $75
    ret nz                                        ; $4e57: $c0

    call $48bb                                    ; $4e58: $cd $bb $48
    ld e, [hl]                                    ; $4e5b: $5e
    call nz, Call_06f_61a0                        ; $4e5c: $c4 $a0 $61
    ld d, a                                       ; $4e5f: $57
    ld c, h                                       ; $4e60: $4c
    rst $38                                       ; $4e61: $ff
    ldh [$60], a                                  ; $4e62: $e0 $60
    rra                                           ; $4e64: $1f
    ld h, b                                       ; $4e65: $60
    ld d, l                                       ; $4e66: $55
    ld c, l                                       ; $4e67: $4d
    ld e, [hl]                                    ; $4e68: $5e

jr_06f_4e69:
    ld c, b                                       ; $4e69: $48
    ld a, [hl]                                    ; $4e6a: $7e
    ld b, e                                       ; $4e6b: $43
    add b                                         ; $4e6c: $80
    ei                                            ; $4e6d: $fb
    ld b, b                                       ; $4e6e: $40
    rst $00                                       ; $4e6f: $c7
    rst $38                                       ; $4e70: $ff
    ld c, c                                       ; $4e71: $49
    ld h, b                                       ; $4e72: $60
    ld h, b                                       ; $4e73: $60
    ld h, c                                       ; $4e74: $61
    ld c, a                                       ; $4e75: $4f
    ld d, [hl]                                    ; $4e76: $56
    ld e, [hl]                                    ; $4e77: $5e
    ld d, h                                       ; $4e78: $54
    cp $80                                        ; $4e79: $fe $80
    ldh [rHDMA4], a                               ; $4e7b: $e0 $54
    ld h, c                                       ; $4e7d: $61
    ld c, e                                       ; $4e7e: $4b
    ld e, d                                       ; $4e7f: $5a
    ld e, [hl]                                    ; $4e80: $5e
    ld h, b                                       ; $4e81: $60
    ld h, c                                       ; $4e82: $61
    and c                                         ; $4e83: $a1
    ld d, h                                       ; $4e84: $54
    ld a, [hl]                                    ; $4e85: $7e
    ld b, e                                       ; $4e86: $43
    cp l                                          ; $4e87: $bd
    ld [hl-], a                                   ; $4e88: $32
    ret nz                                        ; $4e89: $c0

    ld l, c                                       ; $4e8a: $69
    ret nz                                        ; $4e8b: $c0

    and e                                         ; $4e8c: $a3
    ld b, a                                       ; $4e8d: $47
    add b                                         ; $4e8e: $80
    and b                                         ; $4e8f: $a0
    ld d, l                                       ; $4e90: $55
    ld a, [hl]                                    ; $4e91: $7e
    add b                                         ; $4e92: $80
    jr nz, jr_06f_4ed0                            ; $4e93: $20 $3b

    dec sp                                        ; $4e95: $3b
    dec sp                                        ; $4e96: $3b
    jr c, @+$3f                                   ; $4e97: $38 $3d

    scf                                           ; $4e99: $37
    ld a, [c]                                     ; $4e9a: $f2
    and c                                         ; $4e9b: $a1
    db $e3                                        ; $4e9c: $e3
    ld d, d                                       ; $4e9d: $52
    ld a, [bc]                                    ; $4e9e: $0a
    sbc l                                         ; $4e9f: $9d
    and [hl]                                      ; $4ea0: $a6
    cp h                                          ; $4ea1: $bc
    rrca                                          ; $4ea2: $0f
    ld bc, $06ed                                  ; $4ea3: $01 $ed $06
    ld d, c                                       ; $4ea6: $51
    ld e, [hl]                                    ; $4ea7: $5e
    rst $18                                       ; $4ea8: $df
    ld h, c                                       ; $4ea9: $61
    ld h, c                                       ; $4eaa: $61
    ld d, [hl]                                    ; $4eab: $56
    ld c, c                                       ; $4eac: $49
    ld b, a                                       ; $4ead: $47
    jp z, Jump_000_35a0                           ; $4eae: $ca $a0 $35

    ld a, [hl-]                                   ; $4eb1: $3a
    dec bc                                        ; $4eb2: $0b
    ld b, a                                       ; $4eb3: $47
    ld c, c                                       ; $4eb4: $49
    ld [hl], $c1                                  ; $4eb5: $36 $c1
    ld e, h                                       ; $4eb7: $5c
    ld b, e                                       ; $4eb8: $43
    pop bc                                        ; $4eb9: $c1
    cp l                                          ; $4eba: $bd
    inc d                                         ; $4ebb: $14
    add c                                         ; $4ebc: $81
    xor e                                         ; $4ebd: $ab
    ld bc, $b7c0                                  ; $4ebe: $01 $c0 $b7
    ld c, $05                                     ; $4ec1: $0e $05
    ld d, [hl]                                    ; $4ec3: $56
    ld b, d                                       ; $4ec4: $42
    and c                                         ; $4ec5: $a1
    ld e, b                                       ; $4ec6: $58
    ld a, $00                                     ; $4ec7: $3e $00
    jr nz, jr_06f_4f09                            ; $4ec9: $20 $3e

    dec b                                         ; $4ecb: $05
    ld c, l                                       ; $4ecc: $4d
    add hl, sp                                    ; $4ecd: $39
    and c                                         ; $4ece: $a1
    ld d, [hl]                                    ; $4ecf: $56

jr_06f_4ed0:
    rst $38                                       ; $4ed0: $ff
    jr nz, jr_06f_4e69                            ; $4ed1: $20 $96

    rlca                                          ; $4ed3: $07
    ld bc, $c077                                  ; $4ed4: $01 $77 $c0
    ld h, h                                       ; $4ed7: $64
    cp a                                          ; $4ed8: $bf
    add h                                         ; $4ed9: $84
    inc a                                         ; $4eda: $3c
    ret nz                                        ; $4edb: $c0

    ld [c], a                                     ; $4edc: $e2
    ld [hl], l                                    ; $4edd: $75
    ldh [$61], a                                  ; $4ede: $e0 $61
    ld h, c                                       ; $4ee0: $61
    ld e, d                                       ; $4ee1: $5a
    ld a, [bc]                                    ; $4ee2: $0a
    call nz, $81a7                                ; $4ee3: $c4 $a7 $81
    db $f4                                        ; $4ee6: $f4
    halt                                          ; $4ee7: $76
    pop bc                                        ; $4ee8: $c1
    ld b, a                                       ; $4ee9: $47
    ld bc, $3f00                                  ; $4eea: $01 $00 $3f
    add c                                         ; $4eed: $81
    ld d, d                                       ; $4eee: $52
    ld d, h                                       ; $4eef: $54
    ld d, d                                       ; $4ef0: $52
    ld b, b                                       ; $4ef1: $40
    ld [c], a                                     ; $4ef2: $e2
    add b                                         ; $4ef3: $80
    ld hl, sp-$20                                 ; $4ef4: $f8 $e0
    di                                            ; $4ef6: $f3
    ret nz                                        ; $4ef7: $c0

    ld b, c                                       ; $4ef8: $41
    db $e3                                        ; $4ef9: $e3
    add b                                         ; $4efa: $80
    rlca                                          ; $4efb: $07
    ld b, c                                       ; $4efc: $41
    ld c, l                                       ; $4efd: $4d
    add b                                         ; $4efe: $80
    db $eb                                        ; $4eff: $eb
    rst $38                                       ; $4f00: $ff
    add b                                         ; $4f01: $80
    ld d, e                                       ; $4f02: $53
    db $eb                                        ; $4f03: $eb
    inc bc                                        ; $4f04: $03
    inc bc                                        ; $4f05: $03
    ld a, $00                                     ; $4f06: $3e $00
    dec a                                         ; $4f08: $3d

jr_06f_4f09:
    ld sp, hl                                     ; $4f09: $f9
    ld b, b                                       ; $4f0a: $40
    inc bc                                        ; $4f0b: $03
    inc bc                                        ; $4f0c: $03
    ld d, e                                       ; $4f0d: $53
    pop af                                        ; $4f0e: $f1
    ld d, e                                       ; $4f0f: $53
    jp Jump_000_00bb                              ; $4f10: $c3 $bb $00


    db $ed                                        ; $4f13: $ed
    add b                                         ; $4f14: $80
    and c                                         ; $4f15: $a1
    inc b                                         ; $4f16: $04
    dec c                                         ; $4f17: $0d
    sbc c                                         ; $4f18: $99
    rlca                                          ; $4f19: $07
    rst $38                                       ; $4f1a: $ff
    inc b                                         ; $4f1b: $04
    add hl, bc                                    ; $4f1c: $09
    add hl, bc                                    ; $4f1d: $09
    add hl, bc                                    ; $4f1e: $09
    inc b                                         ; $4f1f: $04
    rlca                                          ; $4f20: $07
    dec c                                         ; $4f21: $0d
    sbc c                                         ; $4f22: $99
    inc bc                                        ; $4f23: $03
    inc b                                         ; $4f24: $04
    inc b                                         ; $4f25: $04
    ccf                                           ; $4f26: $3f
    ld [bc], a                                    ; $4f27: $02
    add b                                         ; $4f28: $80
    ld [de], a                                    ; $4f29: $12
    add c                                         ; $4f2a: $81
    xor a                                         ; $4f2b: $af
    ld [c], a                                     ; $4f2c: $e2
    inc hl                                        ; $4f2d: $23
    ld sp, hl                                     ; $4f2e: $f9
    ld [bc], a                                    ; $4f2f: $02
    inc hl                                        ; $4f30: $23
    dec h                                         ; $4f31: $25
    nop                                           ; $4f32: $00
    sub d                                         ; $4f33: $92
    ld hl, $1480                                  ; $4f34: $21 $80 $14
    nop                                           ; $4f37: $00
    adc $e0                                       ; $4f38: $ce $e0
    inc h                                         ; $4f3a: $24
    ld a, b                                       ; $4f3b: $78
    ld b, d                                       ; $4f3c: $42
    adc d                                         ; $4f3d: $8a
    db $e3                                        ; $4f3e: $e3
    cp h                                          ; $4f3f: $bc
    db $e4                                        ; $4f40: $e4
    jp Jump_000_0088                              ; $4f41: $c3 $88 $00


    cp a                                          ; $4f44: $bf
    pop af                                        ; $4f45: $f1
    ret nz                                        ; $4f46: $c0

    add l                                         ; $4f47: $85
    rst $18                                       ; $4f48: $df
    inc hl                                        ; $4f49: $23
    sbc e                                         ; $4f4a: $9b
    dec b                                         ; $4f4b: $05
    and e                                         ; $4f4c: $a3
    ld [bc], a                                    ; $4f4d: $02
    ld sp, $c380                                  ; $4f4e: $31 $80 $c3
    ld b, b                                       ; $4f51: $40
    ret nz                                        ; $4f52: $c0

    jp Jump_06f_7fe0                              ; $4f53: $c3 $e0 $7f


    db $d3                                        ; $4f56: $d3
    cp a                                          ; $4f57: $bf
    ld b, l                                       ; $4f58: $45
    cp a                                          ; $4f59: $bf
    db $e3                                        ; $4f5a: $e3
    sbc c                                         ; $4f5b: $99
    ret z                                         ; $4f5c: $c8

    cp l                                          ; $4f5d: $bd
    pop hl                                        ; $4f5e: $e1
    rrca                                          ; $4f5f: $0f
    ld [bc], a                                    ; $4f60: $02
    ld b, [hl]                                    ; $4f61: $46
    ld bc, $8246                                  ; $4f62: $01 $46 $82
    ld b, c                                       ; $4f65: $41
    rra                                           ; $4f66: $1f
    add l                                         ; $4f67: $85
    ld a, $f1                                     ; $4f68: $3e $f1
    cp a                                          ; $4f6a: $bf
    ld b, d                                       ; $4f6b: $42
    cp l                                          ; $4f6c: $bd
    ld hl, $e5bd                                  ; $4f6d: $21 $bd $e5
    jr @-$3a                                      ; $4f70: $18 $c4

    nop                                           ; $4f72: $00
    di                                            ; $4f73: $f3
    ld hl, $e0c1                                  ; $4f74: $21 $c1 $e0
    cp a                                          ; $4f77: $bf
    ld [c], a                                     ; $4f78: $e2
    ld e, $86                                     ; $4f79: $1e $86
    ld a, a                                       ; $4f7b: $7f
    di                                            ; $4f7c: $f3
    cp a                                          ; $4f7d: $bf
    and $38                                       ; $4f7e: $e6 $38
    db $e4                                        ; $4f80: $e4
    ld d, [hl]                                    ; $4f81: $56
    pop bc                                        ; $4f82: $c1
    ld a, [de]                                    ; $4f83: $1a
    di                                            ; $4f84: $f3
    ld [hl+], a                                   ; $4f85: $22
    xor [hl]                                      ; $4f86: $ae
    jr c, jr_06f_4fa9                             ; $4f87: $38 $20

    xor [hl]                                      ; $4f89: $ae
    ld b, [hl]                                    ; $4f8a: $46
    ccf                                           ; $4f8b: $3f
    and d                                         ; $4f8c: $a2
    cp l                                          ; $4f8d: $bd
    db $dd                                        ; $4f8e: $dd
    cp l                                          ; $4f8f: $bd
    and $6c                                       ; $4f90: $e6 $6c
    rst $30                                       ; $4f92: $f7
    jp Jump_06f_42f4                              ; $4f93: $c3 $f4 $42


    ld b, [hl]                                    ; $4f96: $46
    xor a                                         ; $4f97: $af
    ld hl, sp+$00                                 ; $4f98: $f8 $00
    xor a                                         ; $4f9a: $af
    xor [hl]                                      ; $4f9b: $ae
    ld a, $a0                                     ; $4f9c: $3e $a0
    ldh a, [$7f]                                  ; $4f9e: $f0 $7f
    sbc b                                         ; $4fa0: $98
    cp a                                          ; $4fa1: $bf
    add sp, $77                                   ; $4fa2: $e8 $77
    ret                                           ; $4fa4: $c9


    ld [hl], h                                    ; $4fa5: $74
    ld bc, $4343                                  ; $4fa6: $01 $43 $43

jr_06f_4fa9:
    ccf                                           ; $4fa9: $3f
    ccf                                           ; $4faa: $3f
    rrca                                          ; $4fab: $0f
    ld b, e                                       ; $4fac: $43
    ld b, e                                       ; $4fad: $43
    xor a                                         ; $4fae: $af
    ld b, [hl]                                    ; $4faf: $46
    cp [hl]                                       ; $4fb0: $be
    inc b                                         ; $4fb1: $04
    cp h                                          ; $4fb2: $bc
    or [hl]                                       ; $4fb3: $b6
    sub h                                         ; $4fb4: $94
    jp $c5b9                                      ; $4fb5: $c3 $b9 $c5


    cp [hl]                                       ; $4fb8: $be
    rst $30                                       ; $4fb9: $f7
    and h                                         ; $4fba: $a4
    ld c, $05                                     ; $4fbb: $0e $05
    ld b, h                                       ; $4fbd: $44
    and h                                         ; $4fbe: $a4
    ld h, h                                       ; $4fbf: $64
    rst $38                                       ; $4fc0: $ff
    ldh [$a5], a                                  ; $4fc1: $e0 $a5
    rlca                                          ; $4fc3: $07
    ld b, h                                       ; $4fc4: $44
    ld b, [hl]                                    ; $4fc5: $46
    ld [$22c1], sp                                ; $4fc6: $08 $c1 $22
    ld a, a                                       ; $4fc9: $7f
    ld [hl], l                                    ; $4fca: $75
    cp a                                          ; $4fcb: $bf
    push hl                                       ; $4fcc: $e5
    or a                                          ; $4fcd: $b7
    rlca                                          ; $4fce: $07
    add c                                         ; $4fcf: $81
    jp nz, Jump_000_06ff                          ; $4fd0: $c2 $ff $06

    xor [hl]                                      ; $4fd3: $ae
    ld b, b                                       ; $4fd4: $40
    ld l, c                                       ; $4fd5: $69
    and e                                         ; $4fd6: $a3
    dec [hl]                                      ; $4fd7: $35
    dec [hl]                                      ; $4fd8: $35
    and e                                         ; $4fd9: $a3
    pop hl                                        ; $4fda: $e1
    ld l, d                                       ; $4fdb: $6a
    ret nz                                        ; $4fdc: $c0

    ldh [$80], a                                  ; $4fdd: $e0 $80
    db $fd                                        ; $4fdf: $fd
    add hl, sp                                    ; $4fe0: $39
    ld c, [hl]                                    ; $4fe1: $4e
    sbc [hl]                                      ; $4fe2: $9e
    ld b, b                                       ; $4fe3: $40
    ld a, [bc]                                    ; $4fe4: $0a
    xor a                                         ; $4fe5: $af
    ld b, b                                       ; $4fe6: $40
    pop bc                                        ; $4fe7: $c1
    ld l, c                                       ; $4fe8: $69
    ld b, b                                       ; $4fe9: $40
    ld bc, $e1c0                                  ; $4fea: $01 $c0 $e1
    nop                                           ; $4fed: $00

jr_06f_4fee:
    db $fc                                        ; $4fee: $fc
    jr c, jr_06f_4ffd                             ; $4fef: $38 $0c

    ld [hl], a                                    ; $4ff1: $77
    add d                                         ; $4ff2: $82
    sbc c                                         ; $4ff3: $99
    ld a, [bc]                                    ; $4ff4: $0a
    ld l, a                                       ; $4ff5: $6f
    xor [hl]                                      ; $4ff6: $ae
    ld b, h                                       ; $4ff7: $44
    ld l, e                                       ; $4ff8: $6b
    ld [hl], c                                    ; $4ff9: $71
    rst $38                                       ; $4ffa: $ff
    ldh [$6d], a                                  ; $4ffb: $e0 $6d

jr_06f_4ffd:
    ld b, h                                       ; $4ffd: $44
    cp $62                                        ; $4ffe: $fe $62
    nop                                           ; $5000: $00
    dec a                                         ; $5001: $3d
    cp b                                          ; $5002: $b8
    add b                                         ; $5003: $80
    push af                                       ; $5004: $f5
    ret nz                                        ; $5005: $c0

    ret nz                                        ; $5006: $c0

    cp $e1                                        ; $5007: $fe $e1
    jp nz, $8124                                  ; $5009: $c2 $24 $81

    ld a, [$ed7f]                                 ; $500c: $fa $7f $ed
    nop                                           ; $500f: $00
    pop hl                                        ; $5010: $e1
    inc c                                         ; $5011: $0c
    call nz, $c1a1                                ; $5012: $c4 $a1 $c1
    and b                                         ; $5015: $a0
    inc bc                                        ; $5016: $03
    inc b                                         ; $5017: $04
    ld a, a                                       ; $5018: $7f
    and [hl]                                      ; $5019: $a6
    add c                                         ; $501a: $81
    rst $30                                       ; $501b: $f7
    ld a, a                                       ; $501c: $7f
    db $ec                                        ; $501d: $ec
    ld a, $a1                                     ; $501e: $3e $a1
    ld c, $83                                     ; $5020: $0e $83
    and e                                         ; $5022: $a3
    inc bc                                        ; $5023: $03
    inc b                                         ; $5024: $04
    dec c                                         ; $5025: $0d
    ccf                                           ; $5026: $3f
    add [hl]                                      ; $5027: $86
    nop                                           ; $5028: $00
    or e                                          ; $5029: $b3
    cp $d0                                        ; $502a: $fe $d0
    add b                                         ; $502c: $80
    and e                                         ; $502d: $a3
    ld c, $f5                                     ; $502e: $0e $f5
    nop                                           ; $5030: $00
    rlca                                          ; $5031: $07
    rlca                                          ; $5032: $07
    dec c                                         ; $5033: $0d
    ccf                                           ; $5034: $3f
    adc d                                         ; $5035: $8a
    add b                                         ; $5036: $80
    sub c                                         ; $5037: $91
    scf                                           ; $5038: $37
    jr nc, jr_06f_4fee                            ; $5039: $30 $b3

    ld h, [hl]                                    ; $503b: $66
    nop                                           ; $503c: $00
    db $fc                                        ; $503d: $fc
    ld h, l                                       ; $503e: $65
    inc b                                         ; $503f: $04
    jp c, $9177                                   ; $5040: $da $77 $91

    or $64                                        ; $5043: $f6 $64
    ei                                            ; $5045: $fb
    and $84                                       ; $5046: $e6 $84
    or c                                          ; $5048: $b1
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    pop bc                                        ; $504c: $c1
    nop                                           ; $504d: $00
    rst $38                                       ; $504e: $ff
    rst $38                                       ; $504f: $ff
    rst $38                                       ; $5050: $ff
    rst $38                                       ; $5051: $ff
    rst $38                                       ; $5052: $ff
    rst $38                                       ; $5053: $ff
    rst $38                                       ; $5054: $ff
    rst $38                                       ; $5055: $ff
    rst $38                                       ; $5056: $ff
    rst $38                                       ; $5057: $ff
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    ld bc, $fe80                                  ; $505a: $01 $80 $fe
    ldh [rIE], a                                  ; $505d: $e0 $ff
    rst $38                                       ; $505f: $ff
    rst $38                                       ; $5060: $ff
    rst $38                                       ; $5061: $ff
    rst $38                                       ; $5062: $ff
    add sp, $00                                   ; $5063: $e8 $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    ld [bc], a                                    ; $5067: $02
    nop                                           ; $5068: $00
    inc de                                        ; $5069: $13
    dec b                                         ; $506a: $05
    ld [bc], a                                    ; $506b: $02
    ld bc, $0514                                  ; $506c: $01 $14 $05
    ld [bc], a                                    ; $506f: $02
    ld [bc], a                                    ; $5070: $02
    dec d                                         ; $5071: $15
    ld b, $02                                     ; $5072: $06 $02
    inc bc                                        ; $5074: $03
    ld d, $07                                     ; $5075: $16 $07
    ld [bc], a                                    ; $5077: $02
    inc b                                         ; $5078: $04
    dec de                                        ; $5079: $1b
    rrca                                          ; $507a: $0f
    ld [bc], a                                    ; $507b: $02
    dec b                                         ; $507c: $05
    dec e                                         ; $507d: $1d
    rrca                                          ; $507e: $0f
    ld [bc], a                                    ; $507f: $02
    ld b, $21                                     ; $5080: $06 $21
    rrca                                          ; $5082: $0f
    ld [bc], a                                    ; $5083: $02
    rlca                                          ; $5084: $07
    ld e, $10                                     ; $5085: $1e $10
    ld [bc], a                                    ; $5087: $02
    ld [$1022], sp                                ; $5088: $08 $22 $10
    ld [bc], a                                    ; $508b: $02
    add hl, bc                                    ; $508c: $09
    rra                                           ; $508d: $1f
    ld de, $0a02                                  ; $508e: $11 $02 $0a
    inc h                                         ; $5091: $24
    inc de                                        ; $5092: $13
    ld [bc], a                                    ; $5093: $02
    dec bc                                        ; $5094: $0b
    jr nz, jr_06f_50ab                            ; $5095: $20 $14

    ld [bc], a                                    ; $5097: $02
    inc c                                         ; $5098: $0c
    ld hl, $0215                                  ; $5099: $21 $15 $02
    dec c                                         ; $509c: $0d
    inc h                                         ; $509d: $24
    dec d                                         ; $509e: $15
    ld [bc], a                                    ; $509f: $02
    ld c, $20                                     ; $50a0: $0e $20
    ld d, $02                                     ; $50a2: $16 $02
    rrca                                          ; $50a4: $0f
    rla                                           ; $50a5: $17
    rla                                           ; $50a6: $17
    ld [bc], a                                    ; $50a7: $02
    db $10                                        ; $50a8: $10
    jr jr_06f_50c2                                ; $50a9: $18 $17

jr_06f_50ab:
    ld [bc], a                                    ; $50ab: $02
    ld de, $1724                                  ; $50ac: $11 $24 $17
    ld [bc], a                                    ; $50af: $02
    ld [de], a                                    ; $50b0: $12
    dec h                                         ; $50b1: $25
    jr jr_06f_50b6                                ; $50b2: $18 $02

    inc de                                        ; $50b4: $13
    ld [hl+], a                                   ; $50b5: $22

jr_06f_50b6:
    ld a, [de]                                    ; $50b6: $1a
    ld [bc], a                                    ; $50b7: $02
    inc d                                         ; $50b8: $14
    inc hl                                        ; $50b9: $23
    dec de                                        ; $50ba: $1b
    ld [bc], a                                    ; $50bb: $02
    dec d                                         ; $50bc: $15
    inc h                                         ; $50bd: $24
    inc e                                         ; $50be: $1c
    ld [bc], a                                    ; $50bf: $02
    ld d, $27                                     ; $50c0: $16 $27

jr_06f_50c2:
    dec e                                         ; $50c2: $1d
    ld [bc], a                                    ; $50c3: $02
    rla                                           ; $50c4: $17
    jr z, jr_06f_50e5                             ; $50c5: $28 $1e

    ld [bc], a                                    ; $50c7: $02
    jr jr_06f_50f3                                ; $50c8: $18 $29

    jr nz, jr_06f_50ce                            ; $50ca: $20 $02

    add hl, de                                    ; $50cc: $19
    inc hl                                        ; $50cd: $23

jr_06f_50ce:
    inc [hl]                                      ; $50ce: $34
    ld [bc], a                                    ; $50cf: $02
    ld a, [de]                                    ; $50d0: $1a
    daa                                           ; $50d1: $27
    inc [hl]                                      ; $50d2: $34
    ld [bc], a                                    ; $50d3: $02
    dec de                                        ; $50d4: $1b
    jr z, jr_06f_510c                             ; $50d5: $28 $35

    ld [bc], a                                    ; $50d7: $02
    inc e                                         ; $50d8: $1c
    jr nz, jr_06f_5113                            ; $50d9: $20 $38

    ld [bc], a                                    ; $50db: $02
    dec e                                         ; $50dc: $1d
    jr nz, jr_06f_5119                            ; $50dd: $20 $3a

    rst $38                                       ; $50df: $ff
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    ld [$0850], a                                 ; $50e2: $ea $50 $08

jr_06f_50e5:
    ld d, l                                       ; $50e5: $55
    ld a, [bc]                                    ; $50e6: $0a
    ld e, d                                       ; $50e7: $5a
    dec h                                         ; $50e8: $25
    ld e, d                                       ; $50e9: $5a
    db $ed                                        ; $50ea: $ed
    dec c                                         ; $50eb: $0d
    rst $38                                       ; $50ec: $ff
    db $ec                                        ; $50ed: $ec
    ld c, $0e                                     ; $50ee: $0e $0e
    ld hl, sp-$1c                                 ; $50f0: $f8 $e4
    inc l                                         ; $50f2: $2c

jr_06f_50f3:
    inc l                                         ; $50f3: $2c
    inc c                                         ; $50f4: $0c
    inc hl                                        ; $50f5: $23
    inc c                                         ; $50f6: $0c
    inc l                                         ; $50f7: $2c
    rst $38                                       ; $50f8: $ff
    di                                            ; $50f9: $f3
    add sp, -$17                                  ; $50fa: $e8 $e9
    rst $08                                       ; $50fc: $cf
    ldh [$2e], a                                  ; $50fd: $e0 $2e
    ret nz                                        ; $50ff: $c0

    db $ed                                        ; $5100: $ed
    xor $e1                                       ; $5101: $ee $e1
    and e                                         ; $5103: $a3
    ld c, $6c                                     ; $5104: $0e $6c
    cp a                                          ; $5106: $bf
    or $a9                                        ; $5107: $f6 $a9
    ld [$e28d], a                                 ; $5109: $ea $8d $e2

jr_06f_510c:
    ld l, $89                                     ; $510c: $2e $89
    ldh [$0e], a                                  ; $510e: $e0 $0e
    ld e, h                                       ; $5110: $5c
    or [hl]                                       ; $5111: $b6
    db $e3                                        ; $5112: $e3

jr_06f_5113:
    add b                                         ; $5113: $80
    db $e4                                        ; $5114: $e4
    ld c, $6e                                     ; $5115: $0e $6e
    inc c                                         ; $5117: $0c
    add b                                         ; $5118: $80

jr_06f_5119:
    db $f4                                        ; $5119: $f4
    inc c                                         ; $511a: $0c
    ld l, c                                       ; $511b: $69
    db $eb                                        ; $511c: $eb
    cp b                                          ; $511d: $b8
    sub d                                         ; $511e: $92
    db $e3                                        ; $511f: $e3
    ret nz                                        ; $5120: $c0

    ld [c], a                                     ; $5121: $e2
    or [hl]                                       ; $5122: $b6
    db $e3                                        ; $5123: $e3
    dec c                                         ; $5124: $0d
    ld c, $4e                                     ; $5125: $0e $4e
    rst $38                                       ; $5127: $ff
    ldh [$6e], a                                  ; $5128: $e0 $6e
    jr jr_06f_516f                                ; $512a: $18 $43

    ldh [$d6], a                                  ; $512c: $e0 $d6
    db $ec                                        ; $512e: $ec
    ld [hl-], a                                   ; $512f: $32
    db $e3                                        ; $5130: $e3
    inc c                                         ; $5131: $0c
    ld l, h                                       ; $5132: $6c
    ld a, [hl+]                                   ; $5133: $2a
    db $eb                                        ; $5134: $eb
    add hl, bc                                    ; $5135: $09
    and $48                                       ; $5136: $e6 $48
    db $e4                                        ; $5138: $e4
    ld a, $86                                     ; $5139: $3e $86
    ldh [$2b], a                                  ; $513b: $e0 $2b
    ld a, [bc]                                    ; $513d: $0a
    ld a, [hl+]                                   ; $513e: $2a
    dec bc                                        ; $513f: $0b
    dec bc                                        ; $5140: $0b
    sbc c                                         ; $5141: $99
    ldh [$96], a                                  ; $5142: $e0 $96
    jp hl                                         ; $5144: $e9


    jp nz, $e48a                                  ; $5145: $c2 $8a $e4

    inc c                                         ; $5148: $0c
    pop bc                                        ; $5149: $c1
    ldh [$c0], a                                  ; $514a: $e0 $c0
    db $ed                                        ; $514c: $ed
    add [hl]                                      ; $514d: $86
    db $e4                                        ; $514e: $e4
    ret z                                         ; $514f: $c8

    push bc                                       ; $5150: $c5
    ld l, [hl]                                    ; $5151: $6e
    dec bc                                        ; $5152: $0b
    rra                                           ; $5153: $1f
    dec hl                                        ; $5154: $2b
    ld a, [bc]                                    ; $5155: $0a
    ld a, [bc]                                    ; $5156: $0a
    ld a, [bc]                                    ; $5157: $0a
    ld c, d                                       ; $5158: $4a
    call nz, $c0c0                                ; $5159: $c4 $c0 $c0
    rst $00                                       ; $515c: $c7
    ld c, h                                       ; $515d: $4c
    push hl                                       ; $515e: $e5
    ldh a, [$c1]                                  ; $515f: $f0 $c1
    ldh [$81], a                                  ; $5161: $e0 $81
    db $ec                                        ; $5163: $ec
    ret nz                                        ; $5164: $c0

    push hl                                       ; $5165: $e5
    add b                                         ; $5166: $80
    rst $00                                       ; $5167: $c7
    dec bc                                        ; $5168: $0b
    dec hl                                        ; $5169: $2b
    dec bc                                        ; $516a: $0b
    dec hl                                        ; $516b: $2b
    rra                                           ; $516c: $1f
    dec hl                                        ; $516d: $2b
    ld c, d                                       ; $516e: $4a

jr_06f_516f:
    ld a, [bc]                                    ; $516f: $0a
    ld c, h                                       ; $5170: $4c
    ld c, h                                       ; $5171: $4c
    pop bc                                        ; $5172: $c1
    add sp, $43                                   ; $5173: $e8 $43
    rst $20                                       ; $5175: $e7
    add c                                         ; $5176: $81
    db $ed                                        ; $5177: $ed
    ld a, h                                       ; $5178: $7c
    add b                                         ; $5179: $80
    rst $20                                       ; $517a: $e7
    ret nz                                        ; $517b: $c0

    and $6b                                       ; $517c: $e6 $6b
    ld c, e                                       ; $517e: $4b
    dec bc                                        ; $517f: $0b
    dec bc                                        ; $5180: $0b
    dec bc                                        ; $5181: $0b
    ld a, a                                       ; $5182: $7f
    ldh [$c0], a                                  ; $5183: $e0 $c0
    cp a                                          ; $5185: $bf
    ret nz                                        ; $5186: $c0

    ld c, b                                       ; $5187: $48
    call $e043                                    ; $5188: $cd $43 $e0
    inc l                                         ; $518b: $2c
    call $c949                                    ; $518c: $cd $49 $c9
    inc b                                         ; $518f: $04
    pop bc                                        ; $5190: $c1
    ld c, [hl]                                    ; $5191: $4e
    ld l, $4f                                     ; $5192: $2e $4f
    ld a, [bc]                                    ; $5194: $0a
    ld c, d                                       ; $5195: $4a
    dec bc                                        ; $5196: $0b
    dec bc                                        ; $5197: $0b
    ld a, a                                       ; $5198: $7f
    ldh [$80], a                                  ; $5199: $e0 $80
    pop bc                                        ; $519b: $c1
    ld c, h                                       ; $519c: $4c
    add l                                         ; $519d: $85
    call $eff8                                    ; $519e: $cd $f8 $ef
    xor a                                         ; $51a1: $af
    add h                                         ; $51a2: $84
    call nz, $e6c0                                ; $51a3: $c4 $c0 $e6
    dec c                                         ; $51a6: $0d
    ld c, $0a                                     ; $51a7: $0e $0a
    ld a, [bc]                                    ; $51a9: $0a
    ld c, e                                       ; $51aa: $4b
    ret nz                                        ; $51ab: $c0

    rst $38                                       ; $51ac: $ff
    ldh [$c0], a                                  ; $51ad: $e0 $c0
    pop bc                                        ; $51af: $c1
    call nc, $b1cc                                ; $51b0: $d4 $cc $b1
    or d                                          ; $51b3: $b2
    call nz, Call_000_3cc8                        ; $51b4: $c4 $c8 $3c
    call nz, $0a4a                                ; $51b7: $c4 $4a $0a
    adc d                                         ; $51ba: $8a
    ld b, b                                       ; $51bb: $40
    ldh [$0b], a                                  ; $51bc: $e0 $0b
    add h                                         ; $51be: $84
    pop hl                                        ; $51bf: $e1
    inc c                                         ; $51c0: $0c
    cp h                                          ; $51c1: $bc
    and b                                         ; $51c2: $a0
    cp $fd                                        ; $51c3: $fe $fd
    ret nz                                        ; $51c5: $c0

    xor $4e                                       ; $51c6: $ee $4e
    rrca                                          ; $51c8: $0f
    ld l, $4b                                     ; $51c9: $2e $4b
    dec bc                                        ; $51cb: $0b
    dec c                                         ; $51cc: $0d
    cp a                                          ; $51cd: $bf
    pop hl                                        ; $51ce: $e1
    ld b, b                                       ; $51cf: $40
    jp z, $f482                                   ; $51d0: $ca $82 $f4

    add b                                         ; $51d3: $80
    jp hl                                         ; $51d4: $e9


    ld b, $37                                     ; $51d5: $06 $37
    and l                                         ; $51d7: $a5
    ld c, $0b                                     ; $51d8: $0e $0b
    ret nz                                        ; $51da: $c0

    ld [c], a                                     ; $51db: $e2
    ld a, a                                       ; $51dc: $7f
    ret nz                                        ; $51dd: $c0

    rla                                           ; $51de: $17
    xor b                                         ; $51df: $a8
    db $f4                                        ; $51e0: $f4
    sub [hl]                                      ; $51e1: $96
    ret                                           ; $51e2: $c9


    add l                                         ; $51e3: $85
    inc c                                         ; $51e4: $0c
    ld a, e                                       ; $51e5: $7b
    and e                                         ; $51e6: $a3
    ld [hl], l                                    ; $51e7: $75
    and d                                         ; $51e8: $a2
    dec bc                                        ; $51e9: $0b
    ld l, e                                       ; $51ea: $6b
    cp a                                          ; $51eb: $bf
    ret nz                                        ; $51ec: $c0

    cp [hl]                                       ; $51ed: $be
    and e                                         ; $51ee: $a3
    ld c, h                                       ; $51ef: $4c
    or e                                          ; $51f0: $b3
    add b                                         ; $51f1: $80
    or b                                          ; $51f2: $b0
    db $fc                                        ; $51f3: $fc
    cp h                                          ; $51f4: $bc
    and $06                                       ; $51f5: $e6 $06
    and b                                         ; $51f7: $a0
    dec c                                         ; $51f8: $0d
    ld l, e                                       ; $51f9: $6b
    ld l, e                                       ; $51fa: $6b
    dec bc                                        ; $51fb: $0b
    ld a, [bc]                                    ; $51fc: $0a
    dec hl                                        ; $51fd: $2b
    ld hl, $404b                                  ; $51fe: $21 $4b $40
    rst $00                                       ; $5201: $c7
    ld [hl], a                                    ; $5202: $77
    ret nz                                        ; $5203: $c0

    ret nz                                        ; $5204: $c0

    rst $38                                       ; $5205: $ff
    cp a                                          ; $5206: $bf
    and a                                         ; $5207: $a7
    dec c                                         ; $5208: $0d
    ld bc, $7de0                                  ; $5209: $01 $e0 $7d
    ldh [rSCY], a                                 ; $520c: $e0 $42
    jp z, Jump_000_2ca7                           ; $520e: $ca $a7 $2c

    pop bc                                        ; $5211: $c1
    add sp, $00                                   ; $5212: $e8 $00
    rst $08                                       ; $5214: $cf
    ccf                                           ; $5215: $3f
    add h                                         ; $5216: $84
    cp $83                                        ; $5217: $fe $83
    ld c, $ff                                     ; $5219: $0e $ff
    and b                                         ; $521b: $a0
    nop                                           ; $521c: $00
    pop bc                                        ; $521d: $c1
    ret nz                                        ; $521e: $c0

    cp a                                          ; $521f: $bf
    call nz, $8412                                ; $5220: $c4 $12 $84
    ld hl, sp-$77                                 ; $5223: $f8 $89
    nop                                           ; $5225: $00
    pop af                                        ; $5226: $f1
    ld b, a                                       ; $5227: $47
    add h                                         ; $5228: $84
    ret nz                                        ; $5229: $c0

    db $e3                                        ; $522a: $e3
    ld a, $a1                                     ; $522b: $3e $a1
    inc bc                                        ; $522d: $03
    dec hl                                        ; $522e: $2b
    dec c                                         ; $522f: $0d
    ld a, d                                       ; $5230: $7a
    and b                                         ; $5231: $a0
    ld c, d                                       ; $5232: $4a
    and l                                         ; $5233: $a5
    ld c, a                                       ; $5234: $4f
    adc b                                         ; $5235: $88

jr_06f_5236:
    ld hl, sp-$30                                 ; $5236: $f8 $d0
    ld [$80e7], sp                                ; $5238: $08 $e7 $80
    db $e4                                        ; $523b: $e4
    nop                                           ; $523c: $00
    add b                                         ; $523d: $80
    add b                                         ; $523e: $80
    ld b, b                                       ; $523f: $40
    and b                                         ; $5240: $a0
    pop bc                                        ; $5241: $c1
    ldh [$7f], a                                  ; $5242: $e0 $7f
    add h                                         ; $5244: $84
    cp d                                          ; $5245: $ba
    adc c                                         ; $5246: $89
    jp $c08d                                      ; $5247: $c3 $8d $c0


    ret                                           ; $524a: $c9


    cp d                                          ; $524b: $ba
    and [hl]                                      ; $524c: $a6
    nop                                           ; $524d: $00
    cp a                                          ; $524e: $bf
    add d                                         ; $524f: $82
    add b                                         ; $5250: $80
    and c                                         ; $5251: $a1
    nop                                           ; $5252: $00
    xor h                                         ; $5253: $ac
    jp $8090                                      ; $5254: $c3 $90 $80


    jp z, $c5f8                                   ; $5257: $ca $f8 $c5

    jp nz, Jump_000_0081                          ; $525a: $c2 $81 $00

    add c                                         ; $525d: $81
    nop                                           ; $525e: $00
    dec bc                                        ; $525f: $0b
    ld l, [hl]                                    ; $5260: $6e
    pop bc                                        ; $5261: $c1
    pop af                                        ; $5262: $f1
    nop                                           ; $5263: $00
    ld h, c                                       ; $5264: $61
    ld [$81e4], sp                                ; $5265: $08 $e4 $81
    ld h, l                                       ; $5268: $65
    add d                                         ; $5269: $82
    add b                                         ; $526a: $80
    ld [bc], a                                    ; $526b: $02
    ret nz                                        ; $526c: $c0

    ld b, b                                       ; $526d: $40
    adc c                                         ; $526e: $89
    ret nc                                        ; $526f: $d0

    ld c, c                                       ; $5270: $49
    ld h, h                                       ; $5271: $64
    nop                                           ; $5272: $00
    or e                                          ; $5273: $b3
    ret nz                                        ; $5274: $c0

    rst $20                                       ; $5275: $e7
    add b                                         ; $5276: $80
    and $0a                                       ; $5277: $e6 $0a
    jp nz, $0da0                                  ; $5279: $c2 $a0 $0d

    ld c, h                                       ; $527c: $4c
    ldh [rIE], a                                  ; $527d: $e0 $ff
    add c                                         ; $527f: $81
    adc l                                         ; $5280: $8d
    ld d, b                                       ; $5281: $50
    ret nz                                        ; $5282: $c0

    ld l, l                                       ; $5283: $6d
    add b                                         ; $5284: $80
    add sp, -$3f                                  ; $5285: $e8 $c1
    and l                                         ; $5287: $a5
    ld c, e                                       ; $5288: $4b

jr_06f_5289:
    ld l, e                                       ; $5289: $6b
    dec c                                         ; $528a: $0d
    add a                                         ; $528b: $87
    dec hl                                        ; $528c: $2b
    dec c                                         ; $528d: $0d
    dec c                                         ; $528e: $0d
    ld a, a                                       ; $528f: $7f
    db $ec                                        ; $5290: $ec
    ld [hl], a                                    ; $5291: $77
    or h                                          ; $5292: $b4
    ld b, [hl]                                    ; $5293: $46
    ld h, a                                       ; $5294: $67
    adc d                                         ; $5295: $8a
    ld b, d                                       ; $5296: $42
    ld c, [hl]                                    ; $5297: $4e
    ld [hl], a                                    ; $5298: $77
    ld l, [hl]                                    ; $5299: $6e
    dec c                                         ; $529a: $0d
    dec c                                         ; $529b: $0d
    add d                                         ; $529c: $82
    pop hl                                        ; $529d: $e1
    dec hl                                        ; $529e: $2b
    dec bc                                        ; $529f: $0b
    dec c                                         ; $52a0: $0d
    ld c, [hl]                                    ; $52a1: $4e
    rst $28                                       ; $52a2: $ef
    ld b, h                                       ; $52a3: $44
    add hl, sp                                    ; $52a4: $39
    or c                                          ; $52a5: $b1
    sla e                                         ; $52a6: $cb $23
    ld c, [hl]                                    ; $52a8: $4e
    db $fc                                        ; $52a9: $fc
    jr nz, jr_06f_5236                            ; $52aa: $20 $8a

    ld b, c                                       ; $52ac: $41
    or d                                          ; $52ad: $b2
    ld hl, $3f2b                                  ; $52ae: $21 $2b $3f
    ld h, c                                       ; $52b1: $61
    inc bc                                        ; $52b2: $03
    dec bc                                        ; $52b3: $0b
    dec bc                                        ; $52b4: $0b
    dec bc                                        ; $52b5: $0b
    xor a                                         ; $52b6: $af
    nop                                           ; $52b7: $00
    sub l                                         ; $52b8: $95
    call z, $c441                                 ; $52b9: $cc $41 $c4
    pop hl                                        ; $52bc: $e1
    ld c, c                                       ; $52bd: $49
    ld h, b                                       ; $52be: $60
    pop bc                                        ; $52bf: $c1
    pop hl                                        ; $52c0: $e1

Jump_06f_52c1:
    jr nc, jr_06f_5305                            ; $52c1: $30 $42

    ld h, c                                       ; $52c3: $61
    ret nz                                        ; $52c4: $c0

    ld [c], a                                     ; $52c5: $e2
    ld a, [hl]                                    ; $52c6: $7e
    jr c, jr_06f_5289                             ; $52c7: $38 $c0

    dec hl                                        ; $52c9: $2b
    ld l, [hl]                                    ; $52ca: $6e
    dec hl                                        ; $52cb: $2b
    db $10                                        ; $52cc: $10
    pop hl                                        ; $52cd: $e1
    add $e2                                       ; $52ce: $c6 $e2
    nop                                           ; $52d0: $00
    push bc                                       ; $52d1: $c5
    ld h, c                                       ; $52d2: $61
    ret nz                                        ; $52d3: $c0

    ld h, b                                       ; $52d4: $60
    ld a, [hl]                                    ; $52d5: $7e
    add b                                         ; $52d6: $80
    ld d, d                                       ; $52d7: $52
    jp nc, Jump_06f_7340                          ; $52d8: $d2 $40 $73

    db $d3                                        ; $52db: $d3
    ret nz                                        ; $52dc: $c0

    db $fd                                        ; $52dd: $fd
    pop hl                                        ; $52de: $e1
    add hl, bc                                    ; $52df: $09
    ld h, b                                       ; $52e0: $60
    ld [hl], $86                                  ; $52e1: $36 $86
    pop bc                                        ; $52e3: $c1
    ld c, e                                       ; $52e4: $4b
    ld l, e                                       ; $52e5: $6b
    add b                                         ; $52e6: $80
    add b                                         ; $52e7: $80
    dec hl                                        ; $52e8: $2b
    ld c, e                                       ; $52e9: $4b
    add d                                         ; $52ea: $82
    rst $38                                       ; $52eb: $ff
    add b                                         ; $52ec: $80
    dec h                                         ; $52ed: $25
    inc c                                         ; $52ee: $0c
    add c                                         ; $52ef: $81
    pop hl                                        ; $52f0: $e1
    add l                                         ; $52f1: $85
    ld [c], a                                     ; $52f2: $e2
    ld c, e                                       ; $52f3: $4b
    ld a, [bc]                                    ; $52f4: $0a
    push bc                                       ; $52f5: $c5
    ldh [$03], a                                  ; $52f6: $e0 $03
    ld h, c                                       ; $52f8: $61
    ld b, b                                       ; $52f9: $40
    and h                                         ; $52fa: $a4
    add d                                         ; $52fb: $82
    ld a, a                                       ; $52fc: $7f
    db $10                                        ; $52fd: $10
    ld b, b                                       ; $52fe: $40
    ld [hl+], a                                   ; $52ff: $22
    pop bc                                        ; $5300: $c1
    ld [c], a                                     ; $5301: $e2
    add l                                         ; $5302: $85
    ld [c], a                                     ; $5303: $e2
    ld b, [hl]                                    ; $5304: $46

jr_06f_5305:
    ret nz                                        ; $5305: $c0

    ld c, e                                       ; $5306: $4b
    ld b, l                                       ; $5307: $45
    ret nz                                        ; $5308: $c0

    ret nz                                        ; $5309: $c0

    ld h, b                                       ; $530a: $60
    ret nz                                        ; $530b: $c0

    ld b, c                                       ; $530c: $41
    jr nz, @+$58                                  ; $530d: $20 $56

    daa                                           ; $530f: $27
    halt                                          ; $5310: $76
    ld hl, sp-$40                                 ; $5311: $f8 $c0
    push hl                                       ; $5313: $e5
    dec c                                         ; $5314: $0d
    add c                                         ; $5315: $81
    jp Jump_06f_6be0                              ; $5316: $c3 $e0 $6b


    jr nc, jr_06f_531c                            ; $5319: $30 $01

    ld b, h                                       ; $531b: $44

jr_06f_531c:
    inc hl                                        ; $531c: $23
    inc a                                         ; $531d: $3c
    ld d, [hl]                                    ; $531e: $56
    daa                                           ; $531f: $27
    ld a, c                                       ; $5320: $79
    ld e, c                                       ; $5321: $59
    dec c                                         ; $5322: $0d
    ld c, l                                       ; $5323: $4d
    ld c, [hl]                                    ; $5324: $4e
    ld l, $51                                     ; $5325: $2e $51
    pop bc                                        ; $5327: $c1
    ld c, e                                       ; $5328: $4b
    ld h, b                                       ; $5329: $60
    inc de                                        ; $532a: $13
    ld c, e                                       ; $532b: $4b
    ld c, e                                       ; $532c: $4b
    or h                                          ; $532d: $b4
    ld h, h                                       ; $532e: $64
    pop bc                                        ; $532f: $c1
    db $e4                                        ; $5330: $e4
    inc l                                         ; $5331: $2c
    add c                                         ; $5332: $81
    ld b, c                                       ; $5333: $41
    ld a, [hl-]                                   ; $5334: $3a
    add a                                         ; $5335: $87
    db $fc                                        ; $5336: $fc
    inc sp                                        ; $5337: $33
    jr nz, jr_06f_5382                            ; $5338: $20 $48

    ld bc, $6013                                  ; $533a: $01 $13 $60
    ld c, l                                       ; $533d: $4d
    and c                                         ; $533e: $a1
    add hl, bc                                    ; $533f: $09

jr_06f_5340:
    add b                                         ; $5340: $80
    ret nz                                        ; $5341: $c0

    push hl                                       ; $5342: $e5
    ld l, h                                       ; $5343: $6c
    jr jr_06f_5366                                ; $5344: $18 $20

    cp a                                          ; $5346: $bf
    ldh [rP1], a                                  ; $5347: $e0 $00
    dec bc                                        ; $5349: $0b
    xor [hl]                                      ; $534a: $ae
    add b                                         ; $534b: $80
    cpl                                           ; $534c: $2f
    call nz, $8521                                ; $534d: $c4 $21 $85
    ldh [$0d], a                                  ; $5350: $e0 $0d
    ld h, b                                       ; $5352: $60
    ld bc, $46c3                                  ; $5353: $01 $c3 $46
    and b                                         ; $5356: $a0
    add $23                                       ; $5357: $c6 $23
    db $10                                        ; $5359: $10
    sub $03                                       ; $535a: $d6 $03
    cp h                                          ; $535c: $bc
    adc l                                         ; $535d: $8d
    ld a, e                                       ; $535e: $7b
    adc $83                                       ; $535f: $ce $83
    jr nz, @+$70                                  ; $5361: $20 $6e

    jp Jump_06f_49e3                              ; $5363: $c3 $e3 $49


jr_06f_5366:
    ld h, c                                       ; $5366: $61
    add d                                         ; $5367: $82
    and c                                         ; $5368: $a1
    nop                                           ; $5369: $00
    add c                                         ; $536a: $81
    pop hl                                        ; $536b: $e1
    ld e, b                                       ; $536c: $58
    rrca                                          ; $536d: $0f
    ld a, b                                       ; $536e: $78
    ld h, e                                       ; $536f: $63
    ret nz                                        ; $5370: $c0

    ld [hl], c                                    ; $5371: $71
    add b                                         ; $5372: $80
    ret nz                                        ; $5373: $c0

    ld c, a                                       ; $5374: $4f
    ld b, e                                       ; $5375: $43
    jp z, $c120                                   ; $5376: $ca $20 $c1

    pop hl                                        ; $5379: $e1
    nop                                           ; $537a: $00
    add b                                         ; $537b: $80
    ld [c], a                                     ; $537c: $e2
    sub [hl]                                      ; $537d: $96
    ld l, a                                       ; $537e: $6f
    ld [hl], h                                    ; $537f: $74
    ld h, d                                       ; $5380: $62
    nop                                           ; $5381: $00

jr_06f_5382:
    ld [hl], c                                    ; $5382: $71
    ret nz                                        ; $5383: $c0

    pop hl                                        ; $5384: $e1
    rst $08                                       ; $5385: $cf
    and b                                         ; $5386: $a0
    add hl, bc                                    ; $5387: $09
    add d                                         ; $5388: $82
    ld a, b                                       ; $5389: $78
    and d                                         ; $538a: $a2
    jr nc, @+$07                                  ; $538b: $30 $05

    ld [hl+], a                                   ; $538d: $22
    ld d, l                                       ; $538e: $55
    ld l, [hl]                                    ; $538f: $6e
    ld sp, $8eb4                                  ; $5390: $31 $b4 $8e
    ld bc, $2b2b                                  ; $5393: $01 $2b $2b
    ld c, l                                       ; $5396: $4d
    add b                                         ; $5397: $80
    ret                                           ; $5398: $c9


    ld h, c                                       ; $5399: $61
    ret nz                                        ; $539a: $c0

    jr c, jr_06f_5340                             ; $539b: $38 $a3

    ld b, $63                                     ; $539d: $06 $63
    add h                                         ; $539f: $84

Jump_06f_53a0:
    adc [hl]                                      ; $53a0: $8e
    cp l                                          ; $53a1: $bd
    ld [hl], e                                    ; $53a2: $73
    ld b, b                                       ; $53a3: $40
    and e                                         ; $53a4: $a3
    pop bc                                        ; $53a5: $c1
    jp nz, Jump_06f_6b4b                          ; $53a6: $c2 $4b $6b

    ld hl, $412b                                  ; $53a9: $21 $2b $41
    db $e4                                        ; $53ac: $e4
    ld d, [hl]                                    ; $53ad: $56
    db $10                                        ; $53ae: $10
    db $ec                                        ; $53af: $ec
    pop af                                        ; $53b0: $f1
    add b                                         ; $53b1: $80
    ld h, e                                       ; $53b2: $63
    ld l, $bf                                     ; $53b3: $2e $bf
    and l                                         ; $53b5: $a5
    ld a, $c4                                     ; $53b6: $3e $c4
    nop                                           ; $53b8: $00
    sla l                                         ; $53b9: $cb $25
    rst $00                                       ; $53bb: $c7
    ld l, a                                       ; $53bc: $6f
    cp l                                          ; $53bd: $bd
    ld de, $028e                                  ; $53be: $11 $8e $02
    ccf                                           ; $53c1: $3f
    ldh [$84], a                                  ; $53c2: $e0 $84
    add h                                         ; $53c4: $84
    ret nz                                        ; $53c5: $c0

    ld [c], a                                     ; $53c6: $e2
    add d                                         ; $53c7: $82
    ldh a, [$9c]                                  ; $53c8: $f0 $9c
    cp l                                          ; $53ca: $bd
    ld [hl], $41                                  ; $53cb: $36 $41
    ld hl, $0e4e                                  ; $53cd: $21 $4e $0e
    ld l, $c9                                     ; $53d0: $2e $c9
    add b                                         ; $53d2: $80
    cp a                                          ; $53d3: $bf
    db $e4                                        ; $53d4: $e4
    dec hl                                        ; $53d5: $2b
    add b                                         ; $53d6: $80
    add hl, bc                                    ; $53d7: $09
    jp nz, Jump_06f_4c45                          ; $53d8: $c2 $45 $4c

    ld a, c                                       ; $53db: $79
    set 0, b                                      ; $53dc: $cb $c0
    xor e                                         ; $53de: $ab
    adc h                                         ; $53df: $8c

jr_06f_53e0:
    ld bc, $e1be                                  ; $53e0: $01 $be $e1
    cp [hl]                                       ; $53e3: $be
    and d                                         ; $53e4: $a2
    dec hl                                        ; $53e5: $2b
    jr nc, jr_06f_542f                            ; $53e6: $30 $47

    ld b, c                                       ; $53e8: $41
    rst $10                                       ; $53e9: $d7
    ld l, $38                                     ; $53ea: $2e $38
    jr jr_06f_5438                                ; $53ec: $18 $4a

    dec b                                         ; $53ee: $05
    ld c, [hl]                                    ; $53ef: $4e
    ld l, $3d                                     ; $53f0: $2e $3d
    db $e4                                        ; $53f2: $e4
    ld de, $0020                                  ; $53f3: $11 $20 $00
    ld b, e                                       ; $53f6: $43
    and e                                         ; $53f7: $a3
    db $10                                        ; $53f8: $10
    sub c                                         ; $53f9: $91
    add b                                         ; $53fa: $80
    jr nc, @+$4c                                  ; $53fb: $30 $4a

    inc bc                                        ; $53fd: $03
    add hl, sp                                    ; $53fe: $39
    add c                                         ; $53ff: $81
    ld a, e                                       ; $5400: $7b
    add d                                         ; $5401: $82
    add hl, bc                                    ; $5402: $09
    ld hl, $a104                                  ; $5403: $21 $04 $a1
    jr nc, jr_06f_5419                            ; $5406: $30 $11

    ld d, h                                       ; $5408: $54

jr_06f_5409:
    ret nz                                        ; $5409: $c0

    ld d, h                                       ; $540a: $54
    add l                                         ; $540b: $85
    ld bc, $2109                                  ; $540c: $01 $09 $21
    ld c, e                                       ; $540f: $4b
    ld c, e                                       ; $5410: $4b
    ld a, [de]                                    ; $5411: $1a
    ld hl, $82c3                                  ; $5412: $21 $c3 $82
    ld [hl], b                                    ; $5415: $70
    pop bc                                        ; $5416: $c1
    rst $38                                       ; $5417: $ff
    ret nz                                        ; $5418: $c0

jr_06f_5419:
    daa                                           ; $5419: $27
    ret                                           ; $541a: $c9


    ld [bc], a                                    ; $541b: $02
    db $fd                                        ; $541c: $fd
    and d                                         ; $541d: $a2
    dec c                                         ; $541e: $0d
    ld l, h                                       ; $541f: $6c
    ld c, h                                       ; $5420: $4c
    adc a                                         ; $5421: $8f
    ld bc, $8240                                  ; $5422: $01 $40 $82
    add b                                         ; $5425: $80
    ld a, l                                       ; $5426: $7d
    pop hl                                        ; $5427: $e1
    pop bc                                        ; $5428: $c1
    rst $38                                       ; $5429: $ff
    ret nz                                        ; $542a: $c0

    rst $20                                       ; $542b: $e7
    ld a, h                                       ; $542c: $7c
    and b                                         ; $542d: $a0
    cp a                                          ; $542e: $bf

jr_06f_542f:
    ld h, c                                       ; $542f: $61
    dec hl                                        ; $5430: $2b
    adc b                                         ; $5431: $88
    ld [hl+], a                                   ; $5432: $22
    jr z, jr_06f_5409                             ; $5433: $28 $d4

    inc de                                        ; $5435: $13
    ld b, b                                       ; $5436: $40
    scf                                           ; $5437: $37

jr_06f_5438:
    cp d                                          ; $5438: $ba
    add h                                         ; $5439: $84
    ld c, e                                       ; $543a: $4b
    ld a, $a1                                     ; $543b: $3e $a1
    ld l, h                                       ; $543d: $6c
    ld a, l                                       ; $543e: $7d

Jump_06f_543f:
    pop hl                                        ; $543f: $e1
    ld a, a                                       ; $5440: $7f
    ld [c], a                                     ; $5441: $e2
    nop                                           ; $5442: $00
    jp nz, $c0ff                                  ; $5443: $c2 $ff $c0

    ld [$a042], a                                 ; $5446: $ea $42 $a0
    cp $82                                        ; $5449: $fe $82
    cp $a0                                        ; $544b: $fe $a0
    cp a                                          ; $544d: $bf
    ld h, d                                       ; $544e: $62
    jp Jump_000_00ff                              ; $544f: $c3 $ff $00


    ld b, h                                       ; $5452: $44
    nop                                           ; $5453: $00
    adc c                                         ; $5454: $89
    ld bc, $81ba                                  ; $5455: $01 $ba $81
    cp $e3                                        ; $5458: $fe $e3
    ld a, a                                       ; $545a: $7f
    jr nz, jr_06f_53e0                            ; $545b: $20 $83

    ld bc, $d33e                                  ; $545d: $01 $3e $d3
    ld b, b                                       ; $5460: $40
    sub b                                         ; $5461: $90
    ld b, a                                       ; $5462: $47
    inc b                                         ; $5463: $04
    nop                                           ; $5464: $00
    cp l                                          ; $5465: $bd
    and b                                         ; $5466: $a0
    cp [hl]                                       ; $5467: $be
    rst $20                                       ; $5468: $e7

jr_06f_5469:
    cp e                                          ; $5469: $bb
    pop bc                                        ; $546a: $c1
    jp nz, Jump_000_00f1                          ; $546b: $c2 $f1 $00

    inc sp                                        ; $546e: $33
    db $fd                                        ; $546f: $fd
    and h                                         ; $5470: $a4
    scf                                           ; $5471: $37
    add b                                         ; $5472: $80
    inc a                                         ; $5473: $3c
    push hl                                       ; $5474: $e5
    db $10                                        ; $5475: $10
    ld b, l                                       ; $5476: $45
    ld l, [hl]                                    ; $5477: $6e
    ld b, c                                       ; $5478: $41
    ld [hl], l                                    ; $5479: $75
    ld b, b                                       ; $547a: $40
    ld bc, $0781                                  ; $547b: $01 $81 $07
    dec hl                                        ; $547e: $2b
    db $fc                                        ; $547f: $fc
    ld bc, $21b5                                  ; $5480: $01 $b5 $21
    add e                                         ; $5483: $83
    jr nc, jr_06f_549e                            ; $5484: $30 $18

    ret nz                                        ; $5486: $c0

    ld [hl], l                                    ; $5487: $75
    ret nz                                        ; $5488: $c0

    ld [$05fd], a                                 ; $5489: $ea $fd $05
    ld l, h                                       ; $548c: $6c
    ld c, h                                       ; $548d: $4c
    pop bc                                        ; $548e: $c1
    pop af                                        ; $548f: $f1
    ld b, b                                       ; $5490: $40
    call nc, $a37e                                ; $5491: $d4 $7e $a3
    inc e                                         ; $5494: $1c
    ld a, l                                       ; $5495: $7d
    and d                                         ; $5496: $a2
    ld a, $60                                     ; $5497: $3e $60
    dec bc                                        ; $5499: $0b
    dec bc                                        ; $549a: $0b
    dec l                                         ; $549b: $2d
    halt                                          ; $549c: $76
    ld h, b                                       ; $549d: $60

jr_06f_549e:
    ld a, [$fea0]                                 ; $549e: $fa $a0 $fe
    call nz, $f7c0                                ; $54a1: $c4 $c0 $f7
    jp Jump_06f_75c1                              ; $54a4: $c3 $c1 $75


    ret nz                                        ; $54a7: $c0

    jp $e4c0                                      ; $54a8: $c3 $c0 $e4


    ld [hl], $60                                  ; $54ab: $36 $60
    ld a, l                                       ; $54ad: $7d
    inc b                                         ; $54ae: $04
    dec hl                                        ; $54af: $2b
    dec hl                                        ; $54b0: $2b
    add c                                         ; $54b1: $81
    ld l, h                                       ; $54b2: $6c
    ld a, h                                       ; $54b3: $7c
    pop bc                                        ; $54b4: $c1
    add $da                                       ; $54b5: $c6 $da
    ret nz                                        ; $54b7: $c0

    rst $28                                       ; $54b8: $ef
    cp h                                          ; $54b9: $bc
    add h                                         ; $54ba: $84
    inc [hl]                                      ; $54bb: $34
    jr nz, jr_06f_5469                            ; $54bc: $20 $ab

    and b                                         ; $54be: $a0
    ld l, $40                                     ; $54bf: $2e $40
    ld [hl], a                                    ; $54c1: $77
    and c                                         ; $54c2: $a1
    ld bc, $403e                                  ; $54c3: $01 $3e $40
    add l                                         ; $54c6: $85
    ret nz                                        ; $54c7: $c0

    db $e4                                        ; $54c8: $e4
    ld b, l                                       ; $54c9: $45
    nop                                           ; $54ca: $00
    db $fd                                        ; $54cb: $fd
    pop hl                                        ; $54cc: $e1
    ld c, e                                       ; $54cd: $4b
    rst $28                                       ; $54ce: $ef
    and d                                         ; $54cf: $a2
    jr nc, @-$3e                                  ; $54d0: $30 $c0

    and $80                                       ; $54d2: $e6 $80
    sbc l                                         ; $54d4: $9d
    cp [hl]                                       ; $54d5: $be
    db $e4                                        ; $54d6: $e4
    cp e                                          ; $54d7: $bb
    and a                                         ; $54d8: $a7
    ld c, $6e                                     ; $54d9: $0e $6e
    xor [hl]                                      ; $54db: $ae
    add c                                         ; $54dc: $81
    pop de                                        ; $54dd: $d1
    ld h, $08                                     ; $54de: $26 $08
    add b                                         ; $54e0: $80
    ei                                            ; $54e1: $fb
    ld bc, $78c4                                  ; $54e2: $01 $c4 $78
    jp nz, $f24e                                  ; $54e5: $c2 $4e $f2

    add b                                         ; $54e8: $80
    ld l, [hl]                                    ; $54e9: $6e
    ld hl, $e3c0                                  ; $54ea: $21 $c0 $e3
    cp $ca                                        ; $54ed: $fe $ca
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    ei                                            ; $54f1: $fb
    ret nz                                        ; $54f2: $c0

    db $e4                                        ; $54f3: $e4
    ld a, [c]                                     ; $54f4: $f2
    jp hl                                         ; $54f5: $e9


    ccf                                           ; $54f6: $3f
    pop hl                                        ; $54f7: $e1
    cp a                                          ; $54f8: $bf
    rst $38                                       ; $54f9: $ff
    set 5, c                                      ; $54fa: $cb $e9
    db $f4                                        ; $54fc: $f4
    db $ec                                        ; $54fd: $ec
    ccf                                           ; $54fe: $3f
    ldh [rP1], a                                  ; $54ff: $e0 $00
    rst $30                                       ; $5501: $f7
    add hl, hl                                    ; $5502: $29
    ld b, b                                       ; $5503: $40
    db $d3                                        ; $5504: $d3
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    db $ed                                        ; $5508: $ed
    and b                                         ; $5509: $a0
    rst $38                                       ; $550a: $ff
    db $ec                                        ; $550b: $ec
    ld [c], a                                     ; $550c: $e2
    db $e3                                        ; $550d: $e3
    xor $e3                                       ; $550e: $ee $e3
    sbc [hl]                                      ; $5510: $9e
    dec b                                         ; $5511: $05
    sbc c                                         ; $5512: $99
    rst $20                                       ; $5513: $e7
    sbc b                                         ; $5514: $98
    sbc b                                         ; $5515: $98
    sbc c                                         ; $5516: $99
    rst $38                                       ; $5517: $ff
    di                                            ; $5518: $f3
    add sp, -$17                                  ; $5519: $e8 $e9
    and b                                         ; $551b: $a0
    call nc, Call_06f_7dd5                        ; $551c: $d4 $d5 $7d
    call nc, $e9bc                                ; $551f: $d4 $bc $e9
    db $e4                                        ; $5522: $e4
    push hl                                       ; $5523: $e5
    and b                                         ; $5524: $a0
    and b                                         ; $5525: $a0
    call nc, $e0ee                                ; $5526: $d4 $ee $e0
    ldh [$c0], a                                  ; $5529: $e0 $c0
    ldh [$bf], a                                  ; $552b: $e0 $bf
    push af                                       ; $552d: $f5
    xor c                                         ; $552e: $a9
    ld [$e080], a                                 ; $552f: $ea $80 $e0
    cp [hl]                                       ; $5532: $be
    pop hl                                        ; $5533: $e1
    sub $d7                                       ; $5534: $d6 $d7
    ret c                                         ; $5536: $d8

    halt                                          ; $5537: $76
    or [hl]                                       ; $5538: $b6
    db $e3                                        ; $5539: $e3
    and $e7                                       ; $553a: $e6 $e7
    ld l, [hl]                                    ; $553c: $6e
    ld [c], a                                     ; $553d: $e2
    sbc a                                         ; $553e: $9f
    sbc h                                         ; $553f: $9c
    ld [bc], a                                    ; $5540: $02
    add b                                         ; $5541: $80
    db $f4                                        ; $5542: $f4
    ld a, c                                       ; $5543: $79
    sbc b                                         ; $5544: $98
    ld l, c                                       ; $5545: $69
    db $eb                                        ; $5546: $eb
    sub d                                         ; $5547: $92
    db $e3                                        ; $5548: $e3
    and b                                         ; $5549: $a0
    reti                                          ; $554a: $d9


    jp c, $b6db                                   ; $554b: $da $db $b6

    db $e4                                        ; $554e: $e4
    ld [hl], a                                    ; $554f: $77
    and b                                         ; $5550: $a0
    sbc a                                         ; $5551: $9f
    sbc l                                         ; $5552: $9d
    rst $38                                       ; $5553: $ff
    ldh [$9c], a                                  ; $5554: $e0 $9c
    ld [bc], a                                    ; $5556: $02
    rrca                                          ; $5557: $0f
    ld b, b                                       ; $5558: $40
    db $ed                                        ; $5559: $ed
    and $32                                       ; $555a: $e6 $32
    db $e3                                        ; $555c: $e3
    sbc b                                         ; $555d: $98
    sub a                                         ; $555e: $97
    ld a, [hl+]                                   ; $555f: $2a
    db $eb                                        ; $5560: $eb
    nop                                           ; $5561: $00
    db $e4                                        ; $5562: $e4
    call c, $dedd                                 ; $5563: $dc $dd $de
    cp $b6                                        ; $5566: $fe $b6
    db $e4                                        ; $5568: $e4
    sbc a                                         ; $5569: $9f
    sbc h                                         ; $556a: $9c
    ld b, l                                       ; $556b: $45
    ld c, b                                       ; $556c: $48
    ld c, b                                       ; $556d: $48
    ld b, e                                       ; $556e: $43
    ld b, l                                       ; $556f: $45
    daa                                           ; $5570: $27
    ld [$0100], sp                                ; $5571: $08 $00 $01
    rst $38                                       ; $5574: $ff
    ret                                           ; $5575: $c9


    adc d                                         ; $5576: $8a
    db $e4                                        ; $5577: $e4
    sbc b                                         ; $5578: $98
    pop bc                                        ; $5579: $c1
    ldh [$c0], a                                  ; $557a: $e0 $c0
    db $ed                                        ; $557c: $ed
    xor $ce                                       ; $557d: $ee $ce
    jp nz, $e0df                                  ; $557f: $c2 $df $e0

    pop hl                                        ; $5582: $e1
    or [hl]                                       ; $5583: $b6
    jp $9c9f                                      ; $5584: $c3 $9f $9c


    ld b, [hl]                                    ; $5587: $46
    ccf                                           ; $5588: $3f
    ld b, l                                       ; $5589: $45
    ld d, h                                       ; $558a: $54
    ld h, c                                       ; $558b: $61
    ld c, h                                       ; $558c: $4c
    ld d, l                                       ; $558d: $55
    ld [$e901], sp                                ; $558e: $08 $01 $e9
    ld c, h                                       ; $5591: $4c
    push hl                                       ; $5592: $e5
    ldh [$c1], a                                  ; $5593: $e0 $c1
    ldh [$81], a                                  ; $5595: $e0 $81
    db $ec                                        ; $5597: $ec
    nop                                           ; $5598: $00
    ldh [$ce], a                                  ; $5599: $e0 $ce
    pop bc                                        ; $559b: $c1
    ld a, d                                       ; $559c: $7a
    rst $00                                       ; $559d: $c7
    sbc [hl]                                      ; $559e: $9e
    ld b, [hl]                                    ; $559f: $46
    ld b, l                                       ; $55a0: $45
    ld a, a                                       ; $55a1: $7f
    ld a, [hl+]                                   ; $55a2: $2a
    inc l                                         ; $55a3: $2c
    dec hl                                        ; $55a4: $2b
    ld c, e                                       ; $55a5: $4b
    ld d, l                                       ; $55a6: $55
    ld [bc], a                                    ; $55a7: $02
    rrca                                          ; $55a8: $0f
    pop bc                                        ; $55a9: $c1
    add sp, -$40                                  ; $55aa: $e8 $c0
    add a                                         ; $55ac: $87
    add $c1                                       ; $55ad: $c6 $c1
    ldh [$c0], a                                  ; $55af: $e0 $c0
    xor $ce                                       ; $55b1: $ee $ce
    jp nz, $c549                                  ; $55b3: $c2 $49 $c5

    ret nz                                        ; $55b6: $c0

    ldh [rLY], a                                  ; $55b7: $e0 $44
    ld a, [hl+]                                   ; $55b9: $2a
    ccf                                           ; $55ba: $3f
    jr nz, jr_06f_55dd                            ; $55bb: $20 $20

    dec l                                         ; $55bd: $2d
    ld c, e                                       ; $55be: $4b
    ld d, l                                       ; $55bf: $55
    ld [$ed16], sp                                ; $55c0: $08 $16 $ed
    inc b                                         ; $55c3: $04
    ld [c], a                                     ; $55c4: $e2
    ld hl, sp+$2c                                 ; $55c5: $f8 $2c
    adc $49                                       ; $55c7: $ce $49
    ret z                                         ; $55c9: $c8

    ld a, h                                       ; $55ca: $7c
    pop bc                                        ; $55cb: $c1
    and b                                         ; $55cc: $a0
    sbc a                                         ; $55cd: $9f
    ret nc                                        ; $55ce: $d0

    ld c, a                                       ; $55cf: $4f
    ld d, l                                       ; $55d0: $55
    rlca                                          ; $55d1: $07
    daa                                           ; $55d2: $27
    jr nz, jr_06f_5607                            ; $55d3: $20 $32

    ret nz                                        ; $55d5: $c0

    ldh [rP1], a                                  ; $55d6: $e0 $00
    rst $08                                       ; $55d8: $cf
    rst $28                                       ; $55d9: $ef
    or c                                          ; $55da: $b1
    ret nz                                        ; $55db: $c0

    and b                                         ; $55dc: $a0

jr_06f_55dd:
    ld b, h                                       ; $55dd: $44
    pop bc                                        ; $55de: $c1
    db $fc                                        ; $55df: $fc

Call_06f_55e0:
    ld c, c                                       ; $55e0: $49
    pop bc                                        ; $55e1: $c1
    ld a, h                                       ; $55e2: $7c
    jp $4fd2                                      ; $55e3: $c3 $d2 $4f


    ld e, d                                       ; $55e6: $5a
    ld a, [hl+]                                   ; $55e7: $2a
    ld h, $24                                     ; $55e8: $26 $24
    rlca                                          ; $55ea: $07
    ld b, h                                       ; $55eb: $44
    inc c                                         ; $55ec: $0c
    rrca                                          ; $55ed: $0f
    cp a                                          ; $55ee: $bf
    rrc b                                         ; $55ef: $cb $08
    call $c800                                    ; $55f1: $cd $00 $c8
    ld b, h                                       ; $55f4: $44
    jp $c47c                                      ; $55f5: $c3 $7c $c4


    rst $38                                       ; $55f8: $ff
    and b                                         ; $55f9: $a0
    sbc [hl]                                      ; $55fa: $9e
    ld c, d                                       ; $55fb: $4a
    ld e, d                                       ; $55fc: $5a
    ld a, $35                                     ; $55fd: $3e $35
    dec [hl]                                      ; $55ff: $35
    add hl, sp                                    ; $5600: $39
    jp Jump_000_0f0c                              ; $5601: $c3 $0c $0f


    rst $08                                       ; $5604: $cf
    db $f4                                        ; $5605: $f4
    ld b, b                                       ; $5606: $40

jr_06f_5607:
    rst $28                                       ; $5607: $ef
    ret z                                         ; $5608: $c8

    db $e3                                        ; $5609: $e3
    ld a, h                                       ; $560a: $7c
    push bc                                       ; $560b: $c5
    sbc a                                         ; $560c: $9f
    ret nc                                        ; $560d: $d0

    ld a, a                                       ; $560e: $7f
    ld b, e                                       ; $560f: $43
    ld a, $ac                                     ; $5610: $3e $ac
    dec [hl]                                      ; $5612: $35
    ld a, [hl-]                                   ; $5613: $3a
    ld b, l                                       ; $5614: $45
    ld [$a0d7], sp                                ; $5615: $08 $d7 $a0
    ldh a, [$3f]                                  ; $5618: $f0 $3f
    xor c                                         ; $561a: $a9
    inc sp                                        ; $561b: $33
    or h                                          ; $561c: $b4
    ld b, h                                       ; $561d: $44
    rst $00                                       ; $561e: $c7
    scf                                           ; $561f: $37
    and l                                         ; $5620: $a5
    jp nc, Jump_000_3e46                          ; $5621: $d2 $46 $3e

    xor l                                         ; $5624: $ad
    add b                                         ; $5625: $80
    ld a, a                                       ; $5626: $7f
    ldh [$7f], a                                  ; $5627: $e0 $7f
    ret nz                                        ; $5629: $c0

    push de                                       ; $562a: $d5
    xor b                                         ; $562b: $a8
    db $f4                                        ; $562c: $f4
    sub [hl]                                      ; $562d: $96
    ret nz                                        ; $562e: $c0

    add h                                         ; $562f: $84
    ld a, e                                       ; $5630: $7b
    and d                                         ; $5631: $a2
    push af                                       ; $5632: $f5
    add e                                         ; $5633: $83
    sbc [hl]                                      ; $5634: $9e
    rra                                           ; $5635: $1f
    ld b, [hl]                                    ; $5636: $46
    add hl, sp                                    ; $5637: $39
    dec [hl]                                      ; $5638: $35
    rst $08                                       ; $5639: $cf
    rst $08                                       ; $563a: $cf
    ld a, a                                       ; $563b: $7f
    db $e3                                        ; $563c: $e3
    ld c, h                                       ; $563d: $4c
    or e                                          ; $563e: $b3
    add b                                         ; $563f: $80
    or b                                          ; $5640: $b0
    db $fc                                        ; $5641: $fc
    cp h                                          ; $5642: $bc
    and $06                                       ; $5643: $e6 $06
    and b                                         ; $5645: $a0
    xor [hl]                                      ; $5646: $ae
    ld b, l                                       ; $5647: $45
    ld a, [hl-]                                   ; $5648: $3a
    adc $c3                                       ; $5649: $ce $c3
    inc a                                         ; $564b: $3c
    pop bc                                        ; $564c: $c1
    ld b, h                                       ; $564d: $44
    ld a, a                                       ; $564e: $7f
    ret nz                                        ; $564f: $c0

    dec c                                         ; $5650: $0d
    and [hl]                                      ; $5651: $a6
    dec [hl]                                      ; $5652: $35
    adc $c0                                       ; $5653: $ce $c0
    pop af                                        ; $5655: $f1
    cp a                                          ; $5656: $bf
    and l                                         ; $5657: $a5
    xor a                                         ; $5658: $af
    xor [hl]                                      ; $5659: $ae
    rra                                           ; $565a: $1f
    ld a, $ce                                     ; $565b: $3e $ce
    rst $08                                       ; $565d: $cf
    dec [hl]                                      ; $565e: $35
    ld b, b                                       ; $565f: $40
    ld a, [hl]                                    ; $5660: $7e
    and c                                         ; $5661: $a1
    jp z, Jump_06f_7ba6                           ; $5662: $ca $a6 $7b

    sub $78                                       ; $5665: $d6 $78
    ld [$02e6], sp                                ; $5667: $08 $e6 $02
    jp nz, $8002                                  ; $566a: $c2 $02 $80

    sbc a                                         ; $566d: $9f
    ret nc                                        ; $566e: $d0

    ld b, [hl]                                    ; $566f: $46
    xor a                                         ; $5670: $af
    cp a                                          ; $5671: $bf
    ret nz                                        ; $5672: $c0

    inc bc                                        ; $5673: $03
    dec [hl]                                      ; $5674: $35
    ld b, d                                       ; $5675: $42
    cp $81                                        ; $5676: $fe $81
    jp z, Jump_000_3ca5                           ; $5678: $ca $a5 $3c

    rst $10                                       ; $567b: $d7
    add $c6                                       ; $567c: $c6 $c6
    ld a, [hl]                                    ; $567e: $7e
    add d                                         ; $567f: $82
    ld [bc], a                                    ; $5680: $02
    add c                                         ; $5681: $81
    rst $38                                       ; $5682: $ff
    jp nc, Jump_06f_4546                          ; $5683: $d2 $46 $45

    ld a, [hl-]                                   ; $5686: $3a
    xor l                                         ; $5687: $ad
    dec [hl]                                      ; $5688: $35
    ld [hl], $45                                  ; $5689: $36 $45
    add b                                         ; $568b: $80
    add b                                         ; $568c: $80
    push hl                                       ; $568d: $e5
    ld c, a                                       ; $568e: $4f
    adc b                                         ; $568f: $88
    ld hl, sp-$30                                 ; $5690: $f8 $d0
    ld [$7ee6], sp                                ; $5692: $08 $e6 $7e
    add d                                         ; $5695: $82
    ld [bc], a                                    ; $5696: $02
    add b                                         ; $5697: $80
    add b                                         ; $5698: $80
    add b                                         ; $5699: $80
    ld [hl], $01                                  ; $569a: $36 $01
    dec [hl]                                      ; $569c: $35
    pop bc                                        ; $569d: $c1
    ldh [rIE], a                                  ; $569e: $e0 $ff
    add c                                         ; $56a0: $81
    ld a, [hl]                                    ; $56a1: $7e
    ld h, c                                       ; $56a2: $61
    ld a, h                                       ; $56a3: $7c
    adc c                                         ; $56a4: $89
    ld sp, hl                                     ; $56a5: $f9
    ret nc                                        ; $56a6: $d0

    ld b, b                                       ; $56a7: $40
    ld h, [hl]                                    ; $56a8: $66
    ld a, [hl]                                    ; $56a9: $7e
    add l                                         ; $56aa: $85
    ld e, $81                                     ; $56ab: $1e $81
    ret nz                                        ; $56ad: $c0

    rst $08                                       ; $56ae: $cf
    rst $08                                       ; $56af: $cf
    inc a                                         ; $56b0: $3c
    ld b, h                                       ; $56b1: $44
    ret nz                                        ; $56b2: $c0

    add b                                         ; $56b3: $80
    adc a                                         ; $56b4: $8f
    xor h                                         ; $56b5: $ac
    jp Jump_06f_7c90                              ; $56b6: $c3 $90 $7c


    add b                                         ; $56b9: $80
    jp z, Jump_06f_6437                           ; $56ba: $ca $37 $64

    sbc [hl]                                      ; $56bd: $9e
    ld b, [hl]                                    ; $56be: $46
    ld a, $ce                                     ; $56bf: $3e $ce
    jp $e002                                      ; $56c1: $c3 $02 $e0


    adc c                                         ; $56c4: $89
    sbc d                                         ; $56c5: $9a
    jp $c18e                                      ; $56c6: $c3 $8e $c1


    pop af                                        ; $56c9: $f1
    sbc c                                         ; $56ca: $99
    ret z                                         ; $56cb: $c8

    add $81                                       ; $56cc: $c6 $81
    ld h, l                                       ; $56ce: $65
    ret nz                                        ; $56cf: $c0

    pop hl                                        ; $56d0: $e1
    adc $07                                       ; $56d1: $ce $07
    dec [hl]                                      ; $56d3: $35
    ld b, b                                       ; $56d4: $40
    ld [bc], a                                    ; $56d5: $02
    nop                                           ; $56d6: $00
    and c                                         ; $56d7: $a1
    ld c, c                                       ; $56d8: $49
    ld l, e                                       ; $56d9: $6b
    nop                                           ; $56da: $00
    or e                                          ; $56db: $b3
    ret z                                         ; $56dc: $c8

    add $00                                       ; $56dd: $c6 $00
    call nz, $803e                                ; $56df: $c4 $3e $80
    ldh [$c3], a                                  ; $56e2: $e0 $c3
    adc $35                                       ; $56e4: $ce $35
    add hl, sp                                    ; $56e6: $39
    xor [hl]                                      ; $56e7: $ae
    ccf                                           ; $56e8: $3f
    ld h, b                                       ; $56e9: $60
    inc b                                         ; $56ea: $04
    jp hl                                         ; $56eb: $e9


    ldh [$ba], a                                  ; $56ec: $e0 $ba
    sub l                                         ; $56ee: $95
    ret z                                         ; $56ef: $c8

    add $37                                       ; $56f0: $c6 $37
    ld b, h                                       ; $56f2: $44
    pop bc                                        ; $56f3: $c1
    and b                                         ; $56f4: $a0
    nop                                           ; $56f5: $00
    ldh [$ac], a                                  ; $56f6: $e0 $ac
    ld a, $af                                     ; $56f8: $3e $af
    add e                                         ; $56fa: $83
    xor [hl]                                      ; $56fb: $ae
    ld [bc], a                                    ; $56fc: $02
    ld b, b                                       ; $56fd: $40
    ld d, b                                       ; $56fe: $50
    nop                                           ; $56ff: $00
    sub b                                         ; $5700: $90
    ld b, [hl]                                    ; $5701: $46
    ld h, [hl]                                    ; $5702: $66
    adc d                                         ; $5703: $8a
    ld b, c                                       ; $5704: $41
    rst $00                                       ; $5705: $c7
    ld b, b                                       ; $5706: $40
    xor [hl]                                      ; $5707: $ae
    rst $38                                       ; $5708: $ff
    xor a                                         ; $5709: $af
    add hl, sp                                    ; $570a: $39
    dec [hl]                                      ; $570b: $35
    dec [hl]                                      ; $570c: $35
    xor l                                         ; $570d: $ad
    ld a, $46                                     ; $570e: $3e $46
    xor a                                         ; $5710: $af
    cp b                                          ; $5711: $b8
    ld a, a                                       ; $5712: $7f
    ld c, a                                       ; $5713: $4f
    add hl, sp                                    ; $5714: $39
    or c                                          ; $5715: $b1
    ret z                                         ; $5716: $c8

    db $e4                                        ; $5717: $e4
    sbc a                                         ; $5718: $9f
    and b                                         ; $5719: $a0
    and b                                         ; $571a: $a0
    adc d                                         ; $571b: $8a
    ld b, c                                       ; $571c: $41
    xor [hl]                                      ; $571d: $ae
    ld a, a                                       ; $571e: $7f
    xor [hl]                                      ; $571f: $ae
    xor [hl]                                      ; $5720: $ae
    xor a                                         ; $5721: $af
    ld b, l                                       ; $5722: $45
    ld a, [hl-]                                   ; $5723: $3a
    rst $08                                       ; $5724: $cf
    call $a001                                    ; $5725: $cd $01 $a0
    and e                                         ; $5728: $a3
    dec b                                         ; $5729: $05
    ld c, $d3                                     ; $572a: $0e $d3
    ld c, l                                       ; $572c: $4d
    nop                                           ; $572d: $00
    sub l                                         ; $572e: $95
    call z, $9c41                                 ; $572f: $cc $41 $9c
    add a                                         ; $5732: $87
    ldh [rDMA], a                                 ; $5733: $e0 $46
    rst $38                                       ; $5735: $ff
    ld b, [hl]                                    ; $5736: $46
    ld b, [hl]                                    ; $5737: $46
    xor a                                         ; $5738: $af
    xor a                                         ; $5739: $af
    xor a                                         ; $573a: $af
    ld b, l                                       ; $573b: $45
    ld [hl], $cf                                  ; $573c: $36 $cf
    dec e                                         ; $573e: $1d
    call z, $c0ff                                 ; $573f: $cc $ff $c0
    ld b, d                                       ; $5742: $42
    ld b, $9b                                     ; $5743: $06 $9b
    adc d                                         ; $5745: $8a
    sbc b                                         ; $5746: $98
    ret nz                                        ; $5747: $c0

    ld a, [hl+]                                   ; $5748: $2a
    adc l                                         ; $5749: $8d
    ld b, b                                       ; $574a: $40
    db $db                                        ; $574b: $db
    xor [hl]                                      ; $574c: $ae
    ld b, [hl]                                    ; $574d: $46
    add a                                         ; $574e: $87
    pop hl                                        ; $574f: $e1
    scf                                           ; $5750: $37
    dec a                                         ; $5751: $3d
    rst $38                                       ; $5752: $ff
    ldh [$38], a                                  ; $5753: $e0 $38
    rst $08                                       ; $5755: $cf
    scf                                           ; $5756: $37
    jp $cccc                                      ; $5757: $c3 $cc $cc


    ld bc, $06a0                                  ; $575a: $01 $a0 $06
    sbc b                                         ; $575d: $98
    ld a, $cd                                     ; $575e: $3e $cd
    ret nz                                        ; $5760: $c0

    ld [hl], l                                    ; $5761: $75
    rst $08                                       ; $5762: $cf
    sbc [hl]                                      ; $5763: $9e
    ld b, [hl]                                    ; $5764: $46
    xor [hl]                                      ; $5765: $ae
    xor a                                         ; $5766: $af
    add [hl]                                      ; $5767: $86
    ldh [$87], a                                  ; $5768: $e0 $87
    ldh [$cd], a                                  ; $576a: $e0 $cd
    jp $cfff                                      ; $576c: $c3 $ff $cf


    dec [hl]                                      ; $576f: $35
    dec [hl]                                      ; $5770: $35
    rst $08                                       ; $5771: $cf
    call $cfcd                                    ; $5772: $cd $cd $cf
    dec [hl]                                      ; $5775: $35
    rrca                                          ; $5776: $0f
    inc a                                         ; $5777: $3c
    ld b, h                                       ; $5778: $44
    ld b, $99                                     ; $5779: $06 $99
    ccf                                           ; $577b: $3f
    res 0, b                                      ; $577c: $cb $80
    halt                                          ; $577e: $76
    ld c, $40                                     ; $577f: $0e $40
    add l                                         ; $5781: $85
    ld [c], a                                     ; $5782: $e2
    ld a, a                                       ; $5783: $7f
    jr c, jr_06f_57bb                             ; $5784: $38 $35

    rst $08                                       ; $5786: $cf
    jp $cfcd                                      ; $5787: $c3 $cd $cf


    jr c, jr_06f_5809                             ; $578a: $38 $7d

    pop hl                                        ; $578c: $e1
    ret nz                                        ; $578d: $c0

    ld b, b                                       ; $578e: $40
    and c                                         ; $578f: $a1
    add b                                         ; $5790: $80
    ld h, b                                       ; $5791: $60
    add d                                         ; $5792: $82
    ld a, a                                       ; $5793: $7f
    nop                                           ; $5794: $00
    ld hl, $e081                                  ; $5795: $21 $81 $e0
    add l                                         ; $5798: $85
    push hl                                       ; $5799: $e5
    jr c, jr_06f_57d9                             ; $579a: $38 $3d

    dec sp                                        ; $579c: $3b
    scf                                           ; $579d: $37
    ld b, l                                       ; $579e: $45
    dec [hl]                                      ; $579f: $35
    ldh [rLYC], a                                 ; $57a0: $e0 $45
    ccf                                           ; $57a2: $3f
    ccf                                           ; $57a3: $3f
    ld bc, $56a1                                  ; $57a4: $01 $a1 $56
    daa                                           ; $57a7: $27
    ld e, h                                       ; $57a8: $5c
    ld hl, sp-$28                                 ; $57a9: $f8 $d8
    rrca                                          ; $57ab: $0f
    add d                                         ; $57ac: $82
    add hl, sp                                    ; $57ad: $39
    rst $08                                       ; $57ae: $cf
    call z, $e10c                                 ; $57af: $cc $0c $e1
    ld [hl], $c3                                  ; $57b2: $36 $c3
    pop hl                                        ; $57b4: $e1
    ld a, a                                       ; $57b5: $7f
    xor a                                         ; $57b6: $af
    xor [hl]                                      ; $57b7: $ae
    xor a                                         ; $57b8: $af
    ld [bc], a                                    ; $57b9: $02
    rlca                                          ; $57ba: $07

jr_06f_57bb:
    rlca                                          ; $57bb: $07
    rlca                                          ; $57bc: $07
    ld b, d                                       ; $57bd: $42
    ld h, c                                       ; $57be: $61
    ld h, b                                       ; $57bf: $60
    add c                                         ; $57c0: $81
    ld h, a                                       ; $57c1: $67
    ld a, c                                       ; $57c2: $79
    ld d, a                                       ; $57c3: $57
    ld c, $41                                     ; $57c4: $0e $41
    sub b                                         ; $57c6: $90
    ld h, b                                       ; $57c7: $60
    call Call_000_3ac1                            ; $57c8: $cd $c1 $3a
    ld b, l                                       ; $57cb: $45
    jp $80e1                                      ; $57cc: $c3 $e1 $80


    cp a                                          ; $57cf: $bf
    ldh [$c5], a                                  ; $57d0: $e0 $c5
    ld b, d                                       ; $57d2: $42
    add d                                         ; $57d3: $82
    add sp, $3a                                   ; $57d4: $e8 $3a
    ld bc, $a532                                  ; $57d6: $01 $32 $a5

jr_06f_57d9:
    inc l                                         ; $57d9: $2c
    dec c                                         ; $57da: $0d
    adc $60                                       ; $57db: $ce $60
    jp nc, Jump_06f_4217                          ; $57dd: $d2 $17 $42

    dec [hl]                                      ; $57e0: $35
    adc $4d                                       ; $57e1: $ce $4d
    and b                                         ; $57e3: $a0
    dec [hl]                                      ; $57e4: $35
    call z, $bfa0                                 ; $57e5: $cc $a0 $bf
    db $e3                                        ; $57e8: $e3
    add l                                         ; $57e9: $85
    jr nz, @-$37                                  ; $57ea: $20 $c7

    sub a                                         ; $57ec: $97
    sub a                                         ; $57ed: $97
    sub [hl]                                      ; $57ee: $96
    ld c, h                                       ; $57ef: $4c
    ld [hl], c                                    ; $57f0: $71
    add b                                         ; $57f1: $80
    cpl                                           ; $57f2: $2f
    adc $60                                       ; $57f3: $ce $60
    sbc [hl]                                      ; $57f5: $9e
    ld b, h                                       ; $57f6: $44
    push bc                                       ; $57f7: $c5
    inc a                                         ; $57f8: $3c
    adc $a0                                       ; $57f9: $ce $a0
    dec [hl]                                      ; $57fb: $35
    add b                                         ; $57fc: $80
    db $e4                                        ; $57fd: $e4
    add a                                         ; $57fe: $87
    and b                                         ; $57ff: $a0
    add [hl]                                      ; $5800: $86
    ld b, b                                       ; $5801: $40
    sub [hl]                                      ; $5802: $96
    sub [hl]                                      ; $5803: $96
    ld l, h                                       ; $5804: $6c
    sub $0e                                       ; $5805: $d6 $0e
    cp c                                          ; $5807: $b9
    ld d, e                                       ; $5808: $53

jr_06f_5809:
    and $e7                                       ; $5809: $e6 $e7
    ld c, a                                       ; $580b: $4f
    nop                                           ; $580c: $00
    ld a, [hl-]                                   ; $580d: $3a
    dec [hl]                                      ; $580e: $35
    rst $38                                       ; $580f: $ff
    pop hl                                        ; $5810: $e1
    dec bc                                        ; $5811: $0b
    xor h                                         ; $5812: $ac
    add hl, sp                                    ; $5813: $39
    pop bc                                        ; $5814: $c1
    pop hl                                        ; $5815: $e1
    ld b, [hl]                                    ; $5816: $46
    ld b, c                                       ; $5817: $41
    ldh [$c1], a                                  ; $5818: $e0 $c1
    pop hl                                        ; $581a: $e1
    ld b, d                                       ; $581b: $42
    jr nc, @-$3e                                  ; $581c: $30 $c0

    ld [hl], e                                    ; $581e: $73
    jr jr_06f_5822                                ; $581f: $18 $01

    ret nz                                        ; $5821: $c0

jr_06f_5822:
    ld c, a                                       ; $5822: $4f
    ld b, c                                       ; $5823: $41
    dec bc                                        ; $5824: $0b
    and b                                         ; $5825: $a0
    ld a, [hl-]                                   ; $5826: $3a
    ld b, l                                       ; $5827: $45
    pop bc                                        ; $5828: $c1
    pop hl                                        ; $5829: $e1
    ld b, c                                       ; $582a: $41
    ldh [$59], a                                  ; $582b: $e0 $59
    rrca                                          ; $582d: $0f
    ldh [rLY], a                                  ; $582e: $e0 $44
    dec b                                         ; $5830: $05
    nop                                           ; $5831: $00
    ld [hl], b                                    ; $5832: $70
    adc a                                         ; $5833: $8f
    ld b, b                                       ; $5834: $40
    ld c, a                                       ; $5835: $4f
    ld b, b                                       ; $5836: $40
    nop                                           ; $5837: $00
    ldh [$cf], a                                  ; $5838: $e0 $cf
    rst $08                                       ; $583a: $cf
    add hl, sp                                    ; $583b: $39
    ret nz                                        ; $583c: $c0

    add b                                         ; $583d: $80
    jp nz, Jump_06f_4187                          ; $583e: $c2 $87 $41

Jump_06f_5841:
    ld b, d                                       ; $5841: $42
    rst $28                                       ; $5842: $ef
    ret nz                                        ; $5843: $c0

    ld [hl], l                                    ; $5844: $75
    adc a                                         ; $5845: $8f
    ld b, c                                       ; $5846: $41
    ld c, l                                       ; $5847: $4d
    ld h, c                                       ; $5848: $61
    dec [hl]                                      ; $5849: $35
    dec [hl]                                      ; $584a: $35
    add a                                         ; $584b: $87
    adc $ce                                       ; $584c: $ce $ce
    ld a, $78                                     ; $584e: $3e $78
    and b                                         ; $5850: $a0
    pop bc                                        ; $5851: $c1
    ret nz                                        ; $5852: $c0

    add $0e                                       ; $5853: $c6 $0e
    db $fc                                        ; $5855: $fc
    inc h                                         ; $5856: $24
    sbc b                                         ; $5857: $98
    ld [hl], b                                    ; $5858: $70
    ld l, [hl]                                    ; $5859: $6e
    or b                                          ; $585a: $b0
    ld c, a                                       ; $585b: $4f
    ld [hl+], a                                   ; $585c: $22
    adc $20                                       ; $585d: $ce $20
    cp $c0                                        ; $585f: $fe $c0
    rst $08                                       ; $5861: $cf
    rst $08                                       ; $5862: $cf
    ld a, $41                                     ; $5863: $3e $41
    pop hl                                        ; $5865: $e1
    or b                                          ; $5866: $b0
    rst $00                                       ; $5867: $c7
    ld h, d                                       ; $5868: $62
    call nz, $42cf                                ; $5869: $c4 $cf $42
    ld [hl], d                                    ; $586c: $72
    nop                                           ; $586d: $00
    ld b, b                                       ; $586e: $40
    call nc, $ced4                                ; $586f: $d4 $d4 $ce
    jr nz, jr_06f_58ba                            ; $5872: $20 $46

    inc b                                         ; $5874: $04
    adc l                                         ; $5875: $8d
    nop                                           ; $5876: $00
    cp h                                          ; $5877: $bc
    ret nz                                        ; $5878: $c0

    ld a, $41                                     ; $5879: $3e $41
    db $e4                                        ; $587b: $e4
    ld d, e                                       ; $587c: $53
    rrca                                          ; $587d: $0f
    ld [hl], l                                    ; $587e: $75
    ld c, h                                       ; $587f: $4c
    add b                                         ; $5880: $80
    adc e                                         ; $5881: $8b
    ccf                                           ; $5882: $3f
    pop hl                                        ; $5883: $e1
    ret nz                                        ; $5884: $c0

    ld a, [hl]                                    ; $5885: $7e
    jp nz, $c0bf                                  ; $5886: $c2 $bf $c0

    ld [bc], a                                    ; $5889: $02
    ret nz                                        ; $588a: $c0

    rst $00                                       ; $588b: $c7
    sub b                                         ; $588c: $90
    ld [hl], l                                    ; $588d: $75
    ld l, c                                       ; $588e: $69
    add b                                         ; $588f: $80
    xor l                                         ; $5890: $ad
    and b                                         ; $5891: $a0
    and b                                         ; $5892: $a0
    rra                                           ; $5893: $1f
    db $d3                                        ; $5894: $d3
    pop de                                        ; $5895: $d1
    ret nc                                        ; $5896: $d0

    ld b, l                                       ; $5897: $45
    scf                                           ; $5898: $37
    res 0, b                                      ; $5899: $cb $80
    adc d                                         ; $589b: $8a
    nop                                           ; $589c: $00
    ld a, [hl]                                    ; $589d: $7e
    ret nz                                        ; $589e: $c0

    add b                                         ; $589f: $80
    add b                                         ; $58a0: $80
    pop hl                                        ; $58a1: $e1
    ld b, l                                       ; $58a2: $45
    ld l, h                                       ; $58a3: $6c
    jp nz, $aae9                                  ; $58a4: $c2 $e9 $aa

    xor h                                         ; $58a7: $ac
    ld c, d                                       ; $58a8: $4a
    ld b, e                                       ; $58a9: $43
    cp [hl]                                       ; $58aa: $be
    pop hl                                        ; $58ab: $e1
    ei                                            ; $58ac: $fb
    and d                                         ; $58ad: $a2
    ld [hl], $c7                                  ; $58ae: $36 $c7
    ld b, l                                       ; $58b0: $45
    inc c                                         ; $58b1: $0c
    rrca                                          ; $58b2: $0f
    ret nc                                        ; $58b3: $d0

    add hl, de                                    ; $58b4: $19
    nop                                           ; $58b5: $00
    ld l, a                                       ; $58b6: $6f
    ld [$d344], sp                                ; $58b7: $08 $44 $d3

jr_06f_58ba:
    ret nc                                        ; $58ba: $d0

    ld b, $3d                                     ; $58bb: $06 $3d
    db $e3                                        ; $58bd: $e3
    ld b, b                                       ; $58be: $40
    inc c                                         ; $58bf: $0c
    rst $10                                       ; $58c0: $d7
    ld hl, $b243                                  ; $58c1: $21 $43 $b2
    dec a                                         ; $58c4: $3d
    ld [hl], d                                    ; $58c5: $72
    ld b, d                                       ; $58c6: $42
    inc h                                         ; $58c7: $24
    ld a, d                                       ; $58c8: $7a
    ret nz                                        ; $58c9: $c0

    pop bc                                        ; $58ca: $c1
    ld b, b                                       ; $58cb: $40
    add b                                         ; $58cc: $80
    db $e3                                        ; $58cd: $e3
    ret                                           ; $58ce: $c9


    ld b, b                                       ; $58cf: $40
    pop bc                                        ; $58d0: $c1
    or $40                                        ; $58d1: $f6 $40
    dec d                                         ; $58d3: $15
    pop bc                                        ; $58d4: $c1
    ld hl, $429e                                  ; $58d5: $21 $9e $42
    ret nz                                        ; $58d8: $c0

    cp a                                          ; $58d9: $bf
    jp nz, Jump_06f_40c9                          ; $58da: $c2 $c9 $40

    jp $be83                                      ; $58dd: $c3 $83 $be


    rst $38                                       ; $58e0: $ff
    add b                                         ; $58e1: $80
    daa                                           ; $58e2: $27
    adc c                                         ; $58e3: $89
    nop                                           ; $58e4: $00
    sbc a                                         ; $58e5: $9f
    sbc h                                         ; $58e6: $9c
    dec sp                                        ; $58e7: $3b
    ld b, h                                       ; $58e8: $44
    inc a                                         ; $58e9: $3c
    ret nz                                        ; $58ea: $c0

    ret nz                                        ; $58eb: $c0

    xor [hl]                                      ; $58ec: $ae
    dec b                                         ; $58ed: $05
    ld c, $17                                     ; $58ee: $0e $17
    and d                                         ; $58f0: $a2
    pop bc                                        ; $58f1: $c1
    add c                                         ; $58f2: $81
    ld e, b                                       ; $58f3: $58
    cp l                                          ; $58f4: $bd
    rst $38                                       ; $58f5: $ff
    add b                                         ; $58f6: $80
    dec h                                         ; $58f7: $25
    adc c                                         ; $58f8: $89
    nop                                           ; $58f9: $00

jr_06f_58fa:
    sbc [hl]                                      ; $58fa: $9e
    ld b, [hl]                                    ; $58fb: $46
    adc c                                         ; $58fc: $89
    nop                                           ; $58fd: $00
    ld [hl], $ff                                  ; $58fe: $36 $ff
    add b                                         ; $5900: $80
    rra                                           ; $5901: $1f
    ld [bc], a                                    ; $5902: $02
    dec c                                         ; $5903: $0d
    sbc c                                         ; $5904: $99
    sbc c                                         ; $5905: $99
    sbc d                                         ; $5906: $9a
    inc de                                        ; $5907: $13
    inc [hl]                                      ; $5908: $34
    ld b, b                                       ; $5909: $40
    ld d, c                                       ; $590a: $51
    ld c, b                                       ; $590b: $48
    ld [bc], a                                    ; $590c: $02
    halt                                          ; $590d: $76
    ld a, [hl-]                                   ; $590e: $3a
    ld h, e                                       ; $590f: $63
    ccf                                           ; $5910: $3f
    ld b, l                                       ; $5911: $45
    add d                                         ; $5912: $82
    add b                                         ; $5913: $80
    ld b, [hl]                                    ; $5914: $46
    dec bc                                        ; $5915: $0b
    dec bc                                        ; $5916: $0b
    db $fd                                        ; $5917: $fd
    jp $fc10                                      ; $5918: $c3 $10 $fc


    rst $18                                       ; $591b: $df
    add b                                         ; $591c: $80
    add hl, hl                                    ; $591d: $29
    ld a, e                                       ; $591e: $7b
    and c                                         ; $591f: $a1
    rst $38                                       ; $5920: $ff
    pop hl                                        ; $5921: $e1
    xor a                                         ; $5922: $af
    inc [hl]                                      ; $5923: $34
    ld b, b                                       ; $5924: $40
    ld a, l                                       ; $5925: $7d
    jp nz, $ffc1                                  ; $5926: $c2 $c1 $ff

    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    and l                                         ; $592b: $a5
    ld b, a                                       ; $592c: $47
    ld [bc], a                                    ; $592d: $02
    cp d                                          ; $592e: $ba
    add c                                         ; $592f: $81
    cp $e3                                        ; $5930: $fe $e3
    db $fd                                        ; $5932: $fd
    ld h, b                                       ; $5933: $60
    jp $fd40                                      ; $5934: $c3 $40 $fd


    or h                                          ; $5937: $b4
    ld b, b                                       ; $5938: $40
    sub b                                         ; $5939: $90
    jr jr_06f_58fa                                ; $593a: $18 $be

    db $e4                                        ; $593c: $e4
    ld a, e                                       ; $593d: $7b
    and b                                         ; $593e: $a0
    cp [hl]                                       ; $593f: $be
    push hl                                       ; $5940: $e5
    xor [hl]                                      ; $5941: $ae
    ld b, [hl]                                    ; $5942: $46
    inc b                                         ; $5943: $04
    cpl                                           ; $5944: $2f
    ld a, b                                       ; $5945: $78
    ld d, l                                       ; $5946: $55
    pop bc                                        ; $5947: $c1
    ld [c], a                                     ; $5948: $e2
    ld h, $fd                                     ; $5949: $26 $fd
    and e                                         ; $594b: $a3
    db $d3                                        ; $594c: $d3
    ret nc                                        ; $594d: $d0

    ld a, b                                       ; $594e: $78
    jr nz, jr_06f_598d                            ; $594f: $20 $3c

    db $e3                                        ; $5951: $e3
    inc c                                         ; $5952: $0c
    ld de, $6f31                                  ; $5953: $11 $31 $6f
    jp nc, $04bc                                  ; $5956: $d2 $bc $04

    jp nz, Jump_000_047f                          ; $5959: $c2 $7f $04

    jp nc, $af46                                  ; $595c: $d2 $46 $af

    ld b, e                                       ; $595f: $43
    rst $38                                       ; $5960: $ff
    ld [c], a                                     ; $5961: $e2
    ld b, l                                       ; $5962: $45
    pop hl                                        ; $5963: $e1
    dec b                                         ; $5964: $05
    add e                                         ; $5965: $83
    cpl                                           ; $5966: $2f
    ret nz                                        ; $5967: $c0

    ld [hl], l                                    ; $5968: $75
    cp a                                          ; $5969: $bf
    ld b, b                                       ; $596a: $40
    ld b, b                                       ; $596b: $40
    dec b                                         ; $596c: $05
    sbc [hl]                                      ; $596d: $9e
    ld b, [hl]                                    ; $596e: $46
    ld b, h                                       ; $596f: $44
    dec de                                        ; $5970: $1b
    and h                                         ; $5971: $a4
    ld h, h                                       ; $5972: $64
    rst $38                                       ; $5973: $ff
    ldh [$a5], a                                  ; $5974: $e0 $a5
    ld b, h                                       ; $5976: $44
    ld a, [$c1a0]                                 ; $5977: $fa $a0 $c1
    ldh a, [$80]                                  ; $597a: $f0 $80
    ld [de], a                                    ; $597c: $12
    ldh a, [rDIV]                                 ; $597d: $f0 $04
    ret nz                                        ; $597f: $c0

    cp a                                          ; $5980: $bf
    ldh [$ba], a                                  ; $5981: $e0 $ba
    and c                                         ; $5983: $a1
    ret nz                                        ; $5984: $c0

    pop hl                                        ; $5985: $e1
    ld l, c                                       ; $5986: $69
    and e                                         ; $5987: $a3
    dec [hl]                                      ; $5988: $35
    dec [hl]                                      ; $5989: $35
    rlca                                          ; $598a: $07
    and e                                         ; $598b: $a3
    ld l, d                                       ; $598c: $6a

jr_06f_598d:
    ld b, h                                       ; $598d: $44
    ld a, [$40a1]                                 ; $598e: $fa $a1 $40
    dec hl                                        ; $5991: $2b
    ldh a, [$b5]                                  ; $5992: $f0 $b5
    add e                                         ; $5994: $83
    db $e4                                        ; $5995: $e4
    cp d                                          ; $5996: $ba
    and c                                         ; $5997: $a1
    ld h, [hl]                                    ; $5998: $66
    ld a, h                                       ; $5999: $7c
    ret nz                                        ; $599a: $c0

    ld b, h                                       ; $599b: $44
    ld l, c                                       ; $599c: $69
    halt                                          ; $599d: $76
    ld b, c                                       ; $599e: $41
    ret nz                                        ; $599f: $c0

    ldh [rDMA], a                                 ; $59a0: $e0 $46
    dec bc                                        ; $59a2: $0b
    ld a, h                                       ; $59a3: $7c
    pop bc                                        ; $59a4: $c1
    ld a, b                                       ; $59a5: $78
    add $da                                       ; $59a6: $c6 $da
    ret nz                                        ; $59a8: $c0

    ld [$a3ba], a                                 ; $59a9: $ea $ba $a3
    jp nc, Jump_06f_6b44                          ; $59ac: $d2 $44 $6b

    ld [hl], c                                    ; $59af: $71
    rst $38                                       ; $59b0: $ff
    ldh [$3f], a                                  ; $59b1: $e0 $3f
    ld l, l                                       ; $59b3: $6d
    ld b, h                                       ; $59b4: $44
    ret nc                                        ; $59b5: $d0

    pop de                                        ; $59b6: $d1
    pop de                                        ; $59b7: $d1
    ret nc                                        ; $59b8: $d0

    jr c, @+$63                                   ; $59b9: $38 $61

    cp [hl]                                       ; $59bb: $be
    inc hl                                        ; $59bc: $23
    ld e, b                                       ; $59bd: $58
    ld [hl], a                                    ; $59be: $77
    add hl, de                                    ; $59bf: $19
    ld b, b                                       ; $59c0: $40
    add h                                         ; $59c1: $84
    cp d                                          ; $59c2: $ba
    and e                                         ; $59c3: $a3
    sbc [hl]                                      ; $59c4: $9e
    ld b, l                                       ; $59c5: $45
    ret nz                                        ; $59c6: $c0

    call nz, $2fd2                                ; $59c7: $c4 $d2 $2f
    add c                                         ; $59ca: $81
    pop bc                                        ; $59cb: $c1
    ld [bc], a                                    ; $59cc: $02
    jp nz, Jump_06f_40bf                          ; $59cd: $c2 $bf $40

    call nz, $a1bf                                ; $59d0: $c4 $bf $a1
    ld a, h                                       ; $59d3: $7c
    add c                                         ; $59d4: $81
    cp e                                          ; $59d5: $bb
    and l                                         ; $59d6: $a5
    ret nc                                        ; $59d7: $d0

    sbc a                                         ; $59d8: $9f
    ld h, b                                       ; $59d9: $60
    add hl, hl                                    ; $59da: $29
    ld hl, $60f6                                  ; $59db: $21 $f6 $60
    ret nz                                        ; $59de: $c0

    rst $38                                       ; $59df: $ff
    ld bc, $78c6                                  ; $59e0: $01 $c6 $78
    jp nz, $d1d3                                  ; $59e3: $c2 $d3 $d1

    rst $38                                       ; $59e6: $ff
    ld [c], a                                     ; $59e7: $e2
    sbc e                                         ; $59e8: $9b
    db $d3                                        ; $59e9: $d3
    sbc a                                         ; $59ea: $9f
    add hl, hl                                    ; $59eb: $29
    ld hl, $0e0c                                  ; $59ec: $21 $0c $0e
    ld b, a                                       ; $59ef: $47
    ld sp, hl                                     ; $59f0: $f9
    ret nz                                        ; $59f1: $c0

    res 4, b                                      ; $59f2: $cb $a0
    inc b                                         ; $59f4: $04
    ld a, b                                       ; $59f5: $78
    call nz, $e8f2                                ; $59f6: $c4 $f2 $e8
    sbc a                                         ; $59f9: $9f
    ccf                                           ; $59fa: $3f
    ldh [$7b], a                                  ; $59fb: $e0 $7b
    sbc a                                         ; $59fd: $9f
    set 5, c                                      ; $59fe: $cb $e9
    db $f4                                        ; $5a00: $f4
    db $ec                                        ; $5a01: $ec
    ccf                                           ; $5a02: $3f
    ldh [rP1], a                                  ; $5a03: $e0 $00
    cp a                                          ; $5a05: $bf
    rst $38                                       ; $5a06: $ff
    nop                                           ; $5a07: $00
    nop                                           ; $5a08: $00
    nop                                           ; $5a09: $00
    pop bc                                        ; $5a0a: $c1
    nop                                           ; $5a0b: $00
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    ld bc, $fe80                                  ; $5a18: $01 $80 $fe
    ldh [rIE], a                                  ; $5a1b: $e0 $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    add sp, $00                                   ; $5a21: $e8 $00
    nop                                           ; $5a23: $00
    nop                                           ; $5a24: $00
    ld [bc], a                                    ; $5a25: $02
    nop                                           ; $5a26: $00
    dec d                                         ; $5a27: $15
    inc c                                         ; $5a28: $0c
    ld [bc], a                                    ; $5a29: $02
    ld bc, $0f13                                  ; $5a2a: $01 $13 $0f
    ld [bc], a                                    ; $5a2d: $02
    ld [bc], a                                    ; $5a2e: $02
    inc d                                         ; $5a2f: $14
    db $10                                        ; $5a30: $10
    ld [bc], a                                    ; $5a31: $02
    inc bc                                        ; $5a32: $03
    ld d, $11                                     ; $5a33: $16 $11
    ld [bc], a                                    ; $5a35: $02
    inc b                                         ; $5a36: $04
    jr jr_06f_5a50                                ; $5a37: $18 $17

    ld [bc], a                                    ; $5a39: $02
    dec b                                         ; $5a3a: $05
    ld [de], a                                    ; $5a3b: $12
    jr jr_06f_5a40                                ; $5a3c: $18 $02

    ld b, $16                                     ; $5a3e: $06 $16

jr_06f_5a40:
    jr jr_06f_5a44                                ; $5a40: $18 $02

    rlca                                          ; $5a42: $07
    add hl, de                                    ; $5a43: $19

jr_06f_5a44:
    jr @+$04                                      ; $5a44: $18 $02

    ld [$1911], sp                                ; $5a46: $08 $11 $19
    ld [bc], a                                    ; $5a49: $02
    add hl, bc                                    ; $5a4a: $09
    ld c, $1a                                     ; $5a4b: $0e $1a
    ld [bc], a                                    ; $5a4d: $02
    ld a, [bc]                                    ; $5a4e: $0a
    rrca                                          ; $5a4f: $0f

jr_06f_5a50:
    ld a, [de]                                    ; $5a50: $1a
    ld [bc], a                                    ; $5a51: $02
    dec bc                                        ; $5a52: $0b
    db $10                                        ; $5a53: $10
    ld a, [de]                                    ; $5a54: $1a
    ld [bc], a                                    ; $5a55: $02
    inc c                                         ; $5a56: $0c
    ld a, [bc]                                    ; $5a57: $0a
    dec de                                        ; $5a58: $1b
    ld [bc], a                                    ; $5a59: $02
    dec c                                         ; $5a5a: $0d
    ld b, $1c                                     ; $5a5b: $06 $1c
    ld [bc], a                                    ; $5a5d: $02
    ld c, $08                                     ; $5a5e: $0e $08
    inc e                                         ; $5a60: $1c
    ld [bc], a                                    ; $5a61: $02
    rrca                                          ; $5a62: $0f
    add hl, bc                                    ; $5a63: $09
    inc e                                         ; $5a64: $1c
    ld [bc], a                                    ; $5a65: $02
    db $10                                        ; $5a66: $10
    dec b                                         ; $5a67: $05
    dec e                                         ; $5a68: $1d
    ld [bc], a                                    ; $5a69: $02
    ld de, $1f04                                  ; $5a6a: $11 $04 $1f
    ld [bc], a                                    ; $5a6d: $02
    ld [de], a                                    ; $5a6e: $12
    ld de, $021f                                  ; $5a6f: $11 $1f $02
    inc de                                        ; $5a72: $13
    inc de                                        ; $5a73: $13
    rra                                           ; $5a74: $1f
    ld [bc], a                                    ; $5a75: $02
    inc d                                         ; $5a76: $14
    ld c, $20                                     ; $5a77: $0e $20
    ld [bc], a                                    ; $5a79: $02
    dec d                                         ; $5a7a: $15
    db $10                                        ; $5a7b: $10
    jr nz, jr_06f_5a80                            ; $5a7c: $20 $02

    ld d, $12                                     ; $5a7e: $16 $12

jr_06f_5a80:
    jr nz, jr_06f_5a84                            ; $5a80: $20 $02

    rla                                           ; $5a82: $17
    dec c                                         ; $5a83: $0d

jr_06f_5a84:
    ld hl, $1802                                  ; $5a84: $21 $02 $18
    rrca                                          ; $5a87: $0f
    ld hl, $1902                                  ; $5a88: $21 $02 $19
    ld de, $0221                                  ; $5a8b: $11 $21 $02
    ld a, [de]                                    ; $5a8e: $1a
    inc de                                        ; $5a8f: $13
    ld hl, $1b02                                  ; $5a90: $21 $02 $1b
    ld c, $22                                     ; $5a93: $0e $22
    ld [bc], a                                    ; $5a95: $02
    inc e                                         ; $5a96: $1c
    db $10                                        ; $5a97: $10
    ld [hl+], a                                   ; $5a98: $22
    ld [bc], a                                    ; $5a99: $02
    dec e                                         ; $5a9a: $1d
    ld [de], a                                    ; $5a9b: $12
    ld [hl+], a                                   ; $5a9c: $22
    ld [bc], a                                    ; $5a9d: $02
    ld e, $0d                                     ; $5a9e: $1e $0d
    inc hl                                        ; $5aa0: $23
    ld [bc], a                                    ; $5aa1: $02
    rra                                           ; $5aa2: $1f
    rrca                                          ; $5aa3: $0f
    inc hl                                        ; $5aa4: $23
    ld [bc], a                                    ; $5aa5: $02
    jr nz, jr_06f_5ab3                            ; $5aa6: $20 $0b

    inc h                                         ; $5aa8: $24
    ld [bc], a                                    ; $5aa9: $02
    ld hl, $240e                                  ; $5aaa: $21 $0e $24
    ld [bc], a                                    ; $5aad: $02
    ld [hl+], a                                   ; $5aae: $22
    ld [de], a                                    ; $5aaf: $12
    inc h                                         ; $5ab0: $24
    ld [bc], a                                    ; $5ab1: $02
    inc hl                                        ; $5ab2: $23

jr_06f_5ab3:
    inc b                                         ; $5ab3: $04
    dec h                                         ; $5ab4: $25
    ld [bc], a                                    ; $5ab5: $02
    inc h                                         ; $5ab6: $24
    ld de, $0225                                  ; $5ab7: $11 $25 $02
    dec h                                         ; $5aba: $25
    ld c, $26                                     ; $5abb: $0e $26
    ld [bc], a                                    ; $5abd: $02
    ld h, $10                                     ; $5abe: $26 $10
    ld h, $02                                     ; $5ac0: $26 $02
    daa                                           ; $5ac2: $27
    ld [de], a                                    ; $5ac3: $12
    ld h, $02                                     ; $5ac4: $26 $02
    jr z, @+$13                                   ; $5ac6: $28 $11

    daa                                           ; $5ac8: $27
    ld [bc], a                                    ; $5ac9: $02
    add hl, hl                                    ; $5aca: $29
    dec b                                         ; $5acb: $05
    jr z, jr_06f_5ad0                             ; $5acc: $28 $02

    ld a, [hl+]                                   ; $5ace: $2a
    db $10                                        ; $5acf: $10

jr_06f_5ad0:
    jr z, jr_06f_5ad4                             ; $5ad0: $28 $02

    dec hl                                        ; $5ad2: $2b
    rrca                                          ; $5ad3: $0f

jr_06f_5ad4:
    add hl, hl                                    ; $5ad4: $29
    ld [bc], a                                    ; $5ad5: $02
    inc l                                         ; $5ad6: $2c
    ld de, $0229                                  ; $5ad7: $11 $29 $02
    dec l                                         ; $5ada: $2d
    db $10                                        ; $5adb: $10
    ld a, [hl+]                                   ; $5adc: $2a
    ld [bc], a                                    ; $5add: $02
    ld l, $0f                                     ; $5ade: $2e $0f
    jr nc, jr_06f_5ae4                            ; $5ae0: $30 $02

    cpl                                           ; $5ae2: $2f
    ld a, [bc]                                    ; $5ae3: $0a

jr_06f_5ae4:
    ld [hl-], a                                   ; $5ae4: $32
    ld [bc], a                                    ; $5ae5: $02
    jr nc, jr_06f_5af8                            ; $5ae6: $30 $10

    ld [hl-], a                                   ; $5ae8: $32
    ld [bc], a                                    ; $5ae9: $02
    ld sp, $3312                                  ; $5aea: $31 $12 $33
    ld [bc], a                                    ; $5aed: $02
    ld [hl-], a                                   ; $5aee: $32
    inc d                                         ; $5aef: $14
    dec [hl]                                      ; $5af0: $35
    ld [bc], a                                    ; $5af1: $02
    inc sp                                        ; $5af2: $33
    ld c, $36                                     ; $5af3: $0e $36
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff

jr_06f_5af8:
    nop                                           ; $5af8: $00
    ld e, e                                       ; $5af9: $5b
    add a                                         ; $5afa: $87
    ld e, [hl]                                    ; $5afb: $5e
    db $10                                        ; $5afc: $10
    ld h, l                                       ; $5afd: $65
    dec hl                                        ; $5afe: $2b
    ld h, l                                       ; $5aff: $65
    pop bc                                        ; $5b00: $c1
    inc c                                         ; $5b01: $0c
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    db $e4                                        ; $5b0a: $e4
    db $e3                                        ; $5b0b: $e3
    ld l, h                                       ; $5b0c: $6c
    ld l, h                                       ; $5b0d: $6c
    di                                            ; $5b0e: $f3
    ld l, h                                       ; $5b0f: $6c
    ld c, h                                       ; $5b10: $4c
    jp c, $c2ff                                   ; $5b11: $da $ff $c2

    ld hl, sp+$0a                                 ; $5b14: $f8 $0a
    ld a, [bc]                                    ; $5b16: $0a
    ld c, h                                       ; $5b17: $4c
    ld c, h                                       ; $5b18: $4c
    inc [hl]                                      ; $5b19: $34
    cp [hl]                                       ; $5b1a: $be
    rst $38                                       ; $5b1b: $ff
    add e                                         ; $5b1c: $83
    push af                                       ; $5b1d: $f5
    ld a, [bc]                                    ; $5b1e: $0a
    rst $38                                       ; $5b1f: $ff
    ldh [$2a], a                                  ; $5b20: $e0 $2a
    ld a, [hl+]                                   ; $5b22: $2a
    cp a                                          ; $5b23: $bf
    rst $38                                       ; $5b24: $ff
    db $f4                                        ; $5b25: $f4
    di                                            ; $5b26: $f3
    add hl, de                                    ; $5b27: $19
    ld c, h                                       ; $5b28: $4c
    pop bc                                        ; $5b29: $c1
    pop hl                                        ; $5b2a: $e1
    cp a                                          ; $5b2b: $bf
    ldh [rWY], a                                  ; $5b2c: $e0 $4a
    ld l, h                                       ; $5b2e: $6c
    call nc, Call_000_04ff                        ; $5b2f: $d4 $ff $04
    pop af                                        ; $5b32: $f1
    ret nz                                        ; $5b33: $c0

    pop hl                                        ; $5b34: $e1
    push hl                                       ; $5b35: $e5
    ld a, [hl+]                                   ; $5b36: $2a
    ld a, l                                       ; $5b37: $7d
    ldh [rWY], a                                  ; $5b38: $e0 $4a
    db $fc                                        ; $5b3a: $fc
    rst $18                                       ; $5b3b: $df
    add c                                         ; $5b3c: $81
    push af                                       ; $5b3d: $f5
    ld a, [hl+]                                   ; $5b3e: $2a
    dec hl                                        ; $5b3f: $2b
    dec hl                                        ; $5b40: $2b
    rrca                                          ; $5b41: $0f
    ld c, e                                       ; $5b42: $4b
    ld c, d                                       ; $5b43: $4a
    ld a, [hl+]                                   ; $5b44: $2a
    ld a, [bc]                                    ; $5b45: $0a
    db $d3                                        ; $5b46: $d3
    rst $38                                       ; $5b47: $ff
    add h                                         ; $5b48: $84
    pop de                                        ; $5b49: $d1
    ld [bc], a                                    ; $5b4a: $02
    ldh [$c1], a                                  ; $5b4b: $e0 $c1
    ldh [$9e], a                                  ; $5b4d: $e0 $9e
    cp $c0                                        ; $5b4f: $fe $c0
    inc l                                         ; $5b51: $2c
    inc c                                         ; $5b52: $0c
    inc l                                         ; $5b53: $2c
    inc l                                         ; $5b54: $2c
    ret nc                                        ; $5b55: $d0

    rst $38                                       ; $5b56: $ff
    ret nz                                        ; $5b57: $c0

    pop af                                        ; $5b58: $f1
    ld c, d                                       ; $5b59: $4a
    sbc a                                         ; $5b5a: $9f
    dec bc                                        ; $5b5b: $0b
    dec bc                                        ; $5b5c: $0b
    ld c, d                                       ; $5b5d: $4a
    ld a, [hl+]                                   ; $5b5e: $2a
    dec bc                                        ; $5b5f: $0b
    nop                                           ; $5b60: $00
    rst $38                                       ; $5b61: $ff
    di                                            ; $5b62: $f3
    ld a, [c]                                     ; $5b63: $f2
    ld c, d                                       ; $5b64: $4a
    rst $38                                       ; $5b65: $ff
    ld a, [bc]                                    ; $5b66: $0a
    ld a, [bc]                                    ; $5b67: $0a
    ld c, e                                       ; $5b68: $4b
    ld c, e                                       ; $5b69: $4b
    dec bc                                        ; $5b6a: $0b
    dec hl                                        ; $5b6b: $2b
    ld c, e                                       ; $5b6c: $4b
    dec bc                                        ; $5b6d: $0b
    ld sp, hl                                     ; $5b6e: $f9
    inc l                                         ; $5b6f: $2c
    ld a, [hl]                                    ; $5b70: $7e
    rst $18                                       ; $5b71: $df
    pop af                                        ; $5b72: $f1
    ldh a, [$2c]                                  ; $5b73: $f0 $2c
    inc l                                         ; $5b75: $2c
    ld a, [bc]                                    ; $5b76: $0a
    ld a, [bc]                                    ; $5b77: $0a
    ld l, d                                       ; $5b78: $6a
    ld a, a                                       ; $5b79: $7f
    ld c, e                                       ; $5b7a: $4b
    dec hl                                        ; $5b7b: $2b

jr_06f_5b7c:
    ld c, e                                       ; $5b7c: $4b
    inc c                                         ; $5b7d: $0c
    dec bc                                        ; $5b7e: $0b
    inc l                                         ; $5b7f: $2c
    ld l, h                                       ; $5b80: $6c
    ld b, c                                       ; $5b81: $41
    rst $38                                       ; $5b82: $ff
    call nz, $f0c1                                ; $5b83: $c4 $c1 $f0
    cp a                                          ; $5b86: $bf
    db $e3                                        ; $5b87: $e3
    ld c, e                                       ; $5b88: $4b

jr_06f_5b89:
    jp $c0e1                                      ; $5b89: $c3 $e1 $c0


    rst $38                                       ; $5b8c: $ff
    ld a, [hl]                                    ; $5b8d: $7e
    ld a, [c]                                     ; $5b8e: $f2
    inc c                                         ; $5b8f: $0c
    ld c, d                                       ; $5b90: $4a
    rst $08                                       ; $5b91: $cf
    ld a, [hl+]                                   ; $5b92: $2a
    ld l, e                                       ; $5b93: $6b
    ld c, e                                       ; $5b94: $4b
    ld l, h                                       ; $5b95: $6c
    ld bc, $f7ff                                  ; $5b96: $01 $ff $f7
    or $6b                                        ; $5b99: $f6 $6b
    inc c                                         ; $5b9b: $0c
    rlca                                          ; $5b9c: $07
    inc l                                         ; $5b9d: $2c
    dec bc                                        ; $5b9e: $0b
    dec bc                                        ; $5b9f: $0b
    reti                                          ; $5ba0: $d9


Jump_06f_5ba1:
    rst $38                                       ; $5ba1: $ff
    db $fd                                        ; $5ba2: $fd
    rst $10                                       ; $5ba3: $d7
    add hl, sp                                    ; $5ba4: $39
    pop hl                                        ; $5ba5: $e1
    xor [hl]                                      ; $5ba6: $ae
    adc h                                         ; $5ba7: $8c
    rst $28                                       ; $5ba8: $ef
    sbc a                                         ; $5ba9: $9f
    adc $6f                                       ; $5baa: $ce $6f
    sbc d                                         ; $5bac: $9a
    dec bc                                        ; $5bad: $0b
    dec bc                                        ; $5bae: $0b
    dec hl                                        ; $5baf: $2b
    cp a                                          ; $5bb0: $bf
    rst $38                                       ; $5bb1: $ff
    add hl, sp                                    ; $5bb2: $39
    sub [hl]                                      ; $5bb3: $96
    ld c, h                                       ; $5bb4: $4c
    dec hl                                        ; $5bb5: $2b
    add a                                         ; $5bb6: $87
    dec bc                                        ; $5bb7: $0b
    dec bc                                        ; $5bb8: $0b
    ld l, e                                       ; $5bb9: $6b
    rst $28                                       ; $5bba: $ef
    cp a                                          ; $5bbb: $bf
    add hl, sp                                    ; $5bbc: $39
    jp z, $8439                                   ; $5bbd: $ca $39 $84

    ld a, [$6c81]                                 ; $5bc0: $fa $81 $6c
    rst $38                                       ; $5bc3: $ff
    ld c, h                                       ; $5bc4: $4c
    dec hl                                        ; $5bc5: $2b
    dec c                                         ; $5bc6: $0d
    ld a, [bc]                                    ; $5bc7: $0a
    ld c, e                                       ; $5bc8: $4b
    dec bc                                        ; $5bc9: $0b
    ld l, h                                       ; $5bca: $6c
    ld c, h                                       ; $5bcb: $4c
    db $f4                                        ; $5bcc: $f4
    ld l, a                                       ; $5bcd: $6f
    cp a                                          ; $5bce: $bf
    add hl, sp                                    ; $5bcf: $39
    adc l                                         ; $5bd0: $8d
    ld a, [bc]                                    ; $5bd1: $0a
    cp b                                          ; $5bd2: $b8
    pop bc                                        ; $5bd3: $c1
    inc l                                         ; $5bd4: $2c
    dec hl                                        ; $5bd5: $2b
    dec hl                                        ; $5bd6: $2b
    dec c                                         ; $5bd7: $0d
    rlca                                          ; $5bd8: $07
    dec c                                         ; $5bd9: $0d
    dec hl                                        ; $5bda: $2b
    dec hl                                        ; $5bdb: $2b
    and h                                         ; $5bdc: $a4
    add b                                         ; $5bdd: $80
    ret z                                         ; $5bde: $c8

    rst $38                                       ; $5bdf: $ff
    ld a, [$7a68]                                 ; $5be0: $fa $68 $7a
    add c                                         ; $5be3: $81
    or [hl]                                       ; $5be4: $b6
    ld h, c                                       ; $5be5: $61
    cp a                                          ; $5be6: $bf
    inc c                                         ; $5be7: $0c
    inc l                                         ; $5be8: $2c
    ld l, e                                       ; $5be9: $6b
    dec bc                                        ; $5bea: $0b
    ld a, [bc]                                    ; $5beb: $0a
    dec c                                         ; $5bec: $0d
    dec a                                         ; $5bed: $3d
    ldh [$0b], a                                  ; $5bee: $e0 $0b
    cp b                                          ; $5bf0: $b8
    cp e                                          ; $5bf1: $bb
    ret nz                                        ; $5bf2: $c0

    cp l                                          ; $5bf3: $bd
    rst $38                                       ; $5bf4: $ff
    ld a, [$2a65]                                 ; $5bf5: $fa $65 $2a
    dec bc                                        ; $5bf8: $0b
    dec hl                                        ; $5bf9: $2b
    jr c, jr_06f_5b7c                             ; $5bfa: $38 $80

    ld l, d                                       ; $5bfc: $6a
    ld l, [hl]                                    ; $5bfd: $6e
    add hl, bc                                    ; $5bfe: $09

jr_06f_5bff:
    ldh [$2c], a                                  ; $5bff: $e0 $2c
    inc c                                         ; $5c01: $0c
    ld l, e                                       ; $5c02: $6b
    ret nz                                        ; $5c03: $c0

    ret nz                                        ; $5c04: $c0

    dec bc                                        ; $5c05: $0b
    dec bc                                        ; $5c06: $0b
    jr z, jr_06f_5b89                             ; $5c07: $28 $80

    ld a, b                                       ; $5c09: $78
    xor c                                         ; $5c0a: $a9
    ld h, b                                       ; $5c0b: $60
    cp [hl]                                       ; $5c0c: $be
    rst $38                                       ; $5c0d: $ff
    ld a, c                                       ; $5c0e: $79
    add d                                         ; $5c0f: $82
    ld a, [hl+]                                   ; $5c10: $2a
    dec hl                                        ; $5c11: $2b
    dec bc                                        ; $5c12: $0b
    ld l, e                                       ; $5c13: $6b
    halt                                          ; $5c14: $76
    ld h, c                                       ; $5c15: $61
    sub c                                         ; $5c16: $91
    ld c, d                                       ; $5c17: $4a
    ret nc                                        ; $5c18: $d0

    pop hl                                        ; $5c19: $e1
    ret nz                                        ; $5c1a: $c0

    ld [c], a                                     ; $5c1b: $e2
    or c                                          ; $5c1c: $b1
    pop hl                                        ; $5c1d: $e1
    ld a, [hl+]                                   ; $5c1e: $2a
    ld h, a                                       ; $5c1f: $67
    ld a, a                                       ; $5c20: $7f
    cp l                                          ; $5c21: $bd
    ld b, e                                       ; $5c22: $43
    ld l, e                                       ; $5c23: $6b
    ld b, e                                       ; $5c24: $43
    ld c, e                                       ; $5c25: $4b
    dec hl                                        ; $5c26: $2b
    pop bc                                        ; $5c27: $c1
    pop hl                                        ; $5c28: $e1
    or [hl]                                       ; $5c29: $b6
    ld h, b                                       ; $5c2a: $60
    pop de                                        ; $5c2b: $d1
    ldh [rIE], a                                  ; $5c2c: $e0 $ff
    ret nz                                        ; $5c2e: $c0

    ld a, [bc]                                    ; $5c2f: $0a
    cp $e0                                        ; $5c30: $fe $e0
    ldh [$7f], a                                  ; $5c32: $e0 $7f
    pop hl                                        ; $5c34: $e1
    ld h, $7f                                     ; $5c35: $26 $7f
    ld a, l                                       ; $5c37: $7d
    ld b, e                                       ; $5c38: $43
    ld c, a                                       ; $5c39: $4f
    pop bc                                        ; $5c3a: $c1
    ld a, b                                       ; $5c3b: $78
    ld h, b                                       ; $5c3c: $60
    inc l                                         ; $5c3d: $2c
    inc l                                         ; $5c3e: $2c
    ld c, e                                       ; $5c3f: $4b
    sbc $f7                                       ; $5c40: $de $f7

jr_06f_5c42:
    add c                                         ; $5c42: $81
    inc l                                         ; $5c43: $2c
    dec bc                                        ; $5c44: $0b
    dec c                                         ; $5c45: $0d
    dec bc                                        ; $5c46: $0b
    ld [$0b62], a                                 ; $5c47: $ea $62 $0b
    dec hl                                        ; $5c4a: $2b
    di                                            ; $5c4b: $f3
    ld c, d                                       ; $5c4c: $4a
    ld c, d                                       ; $5c4d: $4a
    ld h, $7f                                     ; $5c4e: $26 $7f
    pop hl                                        ; $5c50: $e1
    ldh [rWX], a                                  ; $5c51: $e0 $4b
    ld c, e                                       ; $5c53: $4b
    ld l, e                                       ; $5c54: $6b
    ld c, e                                       ; $5c55: $4b
    ld e, e                                       ; $5c56: $5b
    ld c, e                                       ; $5c57: $4b
    inc c                                         ; $5c58: $0c
    ld a, h                                       ; $5c59: $7c
    add [hl]                                      ; $5c5a: $86
    ld l, e                                       ; $5c5b: $6b
    dec c                                         ; $5c5c: $0d
    cp a                                          ; $5c5d: $bf
    ldh [$0b], a                                  ; $5c5e: $e0 $0b
    ld a, [c]                                     ; $5c60: $f2
    ret nz                                        ; $5c61: $c0

    adc b                                         ; $5c62: $88
    daa                                           ; $5c63: $27
    ld h, b                                       ; $5c64: $60
    ld h, $7f                                     ; $5c65: $26 $7f
    ld a, b                                       ; $5c67: $78
    add d                                         ; $5c68: $82
    ld c, e                                       ; $5c69: $4b
    ret nz                                        ; $5c6a: $c0

    ldh [$7d], a                                  ; $5c6b: $e0 $7d
    add c                                         ; $5c6d: $81
    dec bc                                        ; $5c6e: $0b
    pop bc                                        ; $5c6f: $c1
    ld l, h                                       ; $5c70: $6c
    ld bc, $3f0b                                  ; $5c71: $01 $0b $3f
    pop bc                                        ; $5c74: $c1
    jp $e6e0                                      ; $5c75: $c3 $e0 $e6


    ld b, d                                       ; $5c78: $42
    ld a, a                                       ; $5c79: $7f
    rst $38                                       ; $5c7a: $ff
    jr c, jr_06f_5bff                             ; $5c7b: $38 $82

    or [hl]                                       ; $5c7d: $b6
    inc hl                                        ; $5c7e: $23
    ld sp, $27e4                                  ; $5c7f: $31 $e4 $27
    dec c                                         ; $5c82: $0d
    dec hl                                        ; $5c83: $2b
    ld a, [bc]                                    ; $5c84: $0a
    ld a, a                                       ; $5c85: $7f
    ret nz                                        ; $5c86: $c0

    ld bc, $4be0                                  ; $5c87: $01 $e0 $4b
    inc h                                         ; $5c8a: $24
    ld h, b                                       ; $5c8b: $60
    ld b, c                                       ; $5c8c: $41
    rst $38                                       ; $5c8d: $ff
    jr jr_06f_5c42                                ; $5c8e: $18 $b2

    ld h, l                                       ; $5c90: $65
    ld a, l                                       ; $5c91: $7d
    ldh [$f1], a                                  ; $5c92: $e0 $f1

jr_06f_5c94:
    call nz, Call_000_0b2b                        ; $5c94: $c4 $2b $0b
    db $eb                                        ; $5c97: $eb
    ld b, b                                       ; $5c98: $40
    rst $38                                       ; $5c99: $ff
    ret nz                                        ; $5c9a: $c0

    or $80                                        ; $5c9b: $f6 $80
    ldh a, [$3f]                                  ; $5c9d: $f0 $3f
    rst $38                                       ; $5c9f: $ff
    ld [hl], l                                    ; $5ca0: $75
    adc b                                         ; $5ca1: $88
    dec hl                                        ; $5ca2: $2b
    ld b, e                                       ; $5ca3: $43
    ld b, d                                       ; $5ca4: $42
    ret nz                                        ; $5ca5: $c0

    dec bc                                        ; $5ca6: $0b
    dec hl                                        ; $5ca7: $2b
    ld a, [bc]                                    ; $5ca8: $0a
    ld l, d                                       ; $5ca9: $6a
    ld c, b                                       ; $5caa: $48
    ret nz                                        ; $5cab: $c0

Jump_06f_5cac:
    db $e4                                        ; $5cac: $e4
    ld a, a                                       ; $5cad: $7f
    rst $38                                       ; $5cae: $ff
    dec hl                                        ; $5caf: $2b
    ld l, h                                       ; $5cb0: $6c
    ld l, e                                       ; $5cb1: $6b
    ld b, b                                       ; $5cb2: $40
    ldh [$c0], a                                  ; $5cb3: $e0 $c0
    db $e3                                        ; $5cb5: $e3
    ld l, d                                       ; $5cb6: $6a
    ld a, [hl-]                                   ; $5cb7: $3a
    ld [c], a                                     ; $5cb8: $e2
    inc c                                         ; $5cb9: $0c
    call $b0ff                                    ; $5cba: $cd $ff $b0
    dec bc                                        ; $5cbd: $0b
    dec hl                                        ; $5cbe: $2b
    ld c, e                                       ; $5cbf: $4b
    ld b, b                                       ; $5cc0: $40
    and b                                         ; $5cc1: $a0
    ld b, b                                       ; $5cc2: $40
    ld [c], a                                     ; $5cc3: $e2
    nop                                           ; $5cc4: $00
    ret nz                                        ; $5cc5: $c0

    ret nz                                        ; $5cc6: $c0

    rst $38                                       ; $5cc7: $ff
    ret nz                                        ; $5cc8: $c0

    or e                                          ; $5cc9: $b3
    ld l, e                                       ; $5cca: $6b
    pop bc                                        ; $5ccb: $c1
    ldh [$83], a                                  ; $5ccc: $e0 $83
    and b                                         ; $5cce: $a0
    nop                                           ; $5ccf: $00
    pop hl                                        ; $5cd0: $e1
    ld l, b                                       ; $5cd1: $68
    jr nz, jr_06f_5d35                            ; $5cd2: $20 $61

    ld b, b                                       ; $5cd4: $40
    ld a, [bc]                                    ; $5cd5: $0a
    ld a, [bc]                                    ; $5cd6: $0a
    ld a, b                                       ; $5cd7: $78
    ld a, c                                       ; $5cd8: $79
    sbc a                                         ; $5cd9: $9f
    dec [hl]                                      ; $5cda: $35
    add hl, bc                                    ; $5cdb: $09
    jp Jump_06f_4b60                              ; $5cdc: $c3 $60 $4b


    ld c, e                                       ; $5cdf: $4b
    dec hl                                        ; $5ce0: $2b
    ld a, [bc]                                    ; $5ce1: $0a
    pop bc                                        ; $5ce2: $c1
    pop bc                                        ; $5ce3: $c1
    ret nz                                        ; $5ce4: $c0

    rst $20                                       ; $5ce5: $e7
    jr nz, jr_06f_5c94                            ; $5ce6: $20 $ac

    add d                                         ; $5ce8: $82
    scf                                           ; $5ce9: $37
    sbc a                                         ; $5cea: $9f
    dec [hl]                                      ; $5ceb: $35
    dec b                                         ; $5cec: $05
    adc d                                         ; $5ced: $8a
    add b                                         ; $5cee: $80
    jp nz, Jump_06f_4be0                          ; $5cef: $c2 $e0 $4b

    dec hl                                        ; $5cf2: $2b
    nop                                           ; $5cf3: $00
    ld l, h                                       ; $5cf4: $6c
    ld [hl+], a                                   ; $5cf5: $22
    pop bc                                        ; $5cf6: $c1
    and c                                         ; $5cf7: $a1
    db $e4                                        ; $5cf8: $e4
    ld bc, $ffc2                                  ; $5cf9: $01 $c2 $ff
    adc b                                         ; $5cfc: $88
    ld h, a                                       ; $5cfd: $67
    cp $e2                                        ; $5cfe: $fe $e2
    ld [bc], a                                    ; $5d00: $02
    add b                                         ; $5d01: $80
    or e                                          ; $5d02: $b3
    add d                                         ; $5d03: $82
    nop                                           ; $5d04: $00
    ld l, a                                       ; $5d05: $6f
    add c                                         ; $5d06: $81
    pop bc                                        ; $5d07: $c1
    rst $38                                       ; $5d08: $ff
    inc [hl]                                      ; $5d09: $34
    rlca                                          ; $5d0a: $07
    add $e0                                       ; $5d0b: $c6 $e0
    ret nz                                        ; $5d0d: $c0

    db $e4                                        ; $5d0e: $e4
    ld [hl], h                                    ; $5d0f: $74
    add b                                         ; $5d10: $80
    ldh a, [$63]                                  ; $5d11: $f0 $63
    add c                                         ; $5d13: $81
    rst $38                                       ; $5d14: $ff
    inc e                                         ; $5d15: $1c
    ld a, [$c089]                                 ; $5d16: $fa $89 $c0
    ld [c], a                                     ; $5d19: $e2
    ld a, [bc]                                    ; $5d1a: $0a
    dec bc                                        ; $5d1b: $0b
    ld l, e                                       ; $5d1c: $6b
    dec [hl]                                      ; $5d1d: $35
    add c                                         ; $5d1e: $81
    ld [bc], a                                    ; $5d1f: $02
    ret nz                                        ; $5d20: $c0

    ld a, a                                       ; $5d21: $7f
    jp nz, $c910                                  ; $5d22: $c2 $10 $c9

    rst $38                                       ; $5d25: $ff

jr_06f_5d26:
    jr c, jr_06f_5d6e                             ; $5d26: $38 $46

    cp h                                          ; $5d28: $bc
    add b                                         ; $5d29: $80
    add $40                                       ; $5d2a: $c6 $40
    ld c, e                                       ; $5d2c: $4b
    rst $30                                       ; $5d2d: $f7
    ld h, d                                       ; $5d2e: $62
    jp nz, $c1e4                                  ; $5d2f: $c2 $e4 $c1

    rst $38                                       ; $5d32: $ff
    inc c                                         ; $5d33: $0c
    cp d                                          ; $5d34: $ba

jr_06f_5d35:
    adc e                                         ; $5d35: $8b
    add e                                         ; $5d36: $83
    ret nz                                        ; $5d37: $c0

    inc c                                         ; $5d38: $0c
    inc l                                         ; $5d39: $2c
    ld c, d                                       ; $5d3a: $4a
    jp nz, Jump_06f_62c2                          ; $5d3b: $c2 $c2 $62

    set 7, a                                      ; $5d3e: $cb $ff
    ldh a, [$0e]                                  ; $5d40: $f0 $0e
    nop                                           ; $5d42: $00
    or c                                          ; $5d43: $b1
    ld hl, $80f6                                  ; $5d44: $21 $f6 $80
    jp $f2a0                                      ; $5d47: $c3 $a0 $f2


    add h                                         ; $5d4a: $84
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    ld [$2c11], a                                 ; $5d4d: $ea $11 $2c
    ld [hl+], a                                   ; $5d50: $22
    rlca                                          ; $5d51: $07
    rst $18                                       ; $5d52: $df
    nop                                           ; $5d53: $00
    or $31                                        ; $5d54: $f6 $31
    bit 0, c                                      ; $5d56: $cb $41
    cp h                                          ; $5d58: $bc
    jr nz, jr_06f_5dd0                            ; $5d59: $20 $75

    ld h, b                                       ; $5d5b: $60
    jr c, jr_06f_5d7f                             ; $5d5c: $38 $21

    add e                                         ; $5d5e: $83
    sbc a                                         ; $5d5f: $9f
    reti                                          ; $5d60: $d9


    pop hl                                        ; $5d61: $e1
    ld b, e                                       ; $5d62: $43
    ld a, [hl+]                                   ; $5d63: $2a
    db $10                                        ; $5d64: $10
    ld b, d                                       ; $5d65: $42
    ld hl, $e1c0                                  ; $5d66: $21 $c0 $e1
    push af                                       ; $5d69: $f5
    db $e4                                        ; $5d6a: $e4
    adc b                                         ; $5d6b: $88
    cp a                                          ; $5d6c: $bf
    dec c                                         ; $5d6d: $0d

jr_06f_5d6e:
    sbc b                                         ; $5d6e: $98
    rst $20                                       ; $5d6f: $e7
    ld b, e                                       ; $5d70: $43
    jr nz, jr_06f_5d26                            ; $5d71: $20 $b3

    ld b, b                                       ; $5d73: $40
    add a                                         ; $5d74: $87
    dec hl                                        ; $5d75: $2b
    ld l, e                                       ; $5d76: $6b
    dec bc                                        ; $5d77: $0b
    cp a                                          ; $5d78: $bf
    jr nz, jr_06f_5df0                            ; $5d79: $20 $75

    and c                                         ; $5d7b: $a1
    ld [hl], a                                    ; $5d7c: $77
    jr nz, @+$4b                                  ; $5d7d: $20 $49

jr_06f_5d7f:
    cp [hl]                                       ; $5d7f: $be
    ld c, e                                       ; $5d80: $4b
    sbc a                                         ; $5d81: $9f
    dec c                                         ; $5d82: $0d
    dec c                                         ; $5d83: $0d
    ld c, e                                       ; $5d84: $4b
    ld c, e                                       ; $5d85: $4b
    ld l, h                                       ; $5d86: $6c
    inc de                                        ; $5d87: $13
    db $e4                                        ; $5d88: $e4
    add $e0                                       ; $5d89: $c6 $e0
    dec hl                                        ; $5d8b: $2b
    ld c, $f1                                     ; $5d8c: $0e $f1
    ld b, b                                       ; $5d8e: $40
    ld l, e                                       ; $5d8f: $6b
    dec hl                                        ; $5d90: $2b
    ld c, e                                       ; $5d91: $4b
    ld hl, sp-$60                                 ; $5d92: $f8 $a0
    inc sp                                        ; $5d94: $33
    and c                                         ; $5d95: $a1
    db $fc                                        ; $5d96: $fc
    db $dd                                        ; $5d97: $dd
    sub h                                         ; $5d98: $94
    ret nz                                        ; $5d99: $c0

    add c                                         ; $5d9a: $81
    dec bc                                        ; $5d9b: $0b
    ret nz                                        ; $5d9c: $c0

    pop hl                                        ; $5d9d: $e1
    rla                                           ; $5d9e: $17
    db $e3                                        ; $5d9f: $e3
    inc a                                         ; $5da0: $3c
    jp nz, $4002                                  ; $5da1: $c2 $02 $40

    add [hl]                                      ; $5da4: $86
    pop hl                                        ; $5da5: $e1
    or [hl]                                       ; $5da6: $b6
    add c                                         ; $5da7: $81
    ld l, e                                       ; $5da8: $6b
    ld [$dfd0], sp                                ; $5da9: $08 $d0 $df
    sub c                                         ; $5dac: $91
    nop                                           ; $5dad: $00
    ld d, c                                       ; $5dae: $51
    ld h, b                                       ; $5daf: $60
    ld c, e                                       ; $5db0: $4b
    rla                                           ; $5db1: $17
    db $e4                                        ; $5db2: $e4
    or l                                          ; $5db3: $b5
    ld b, d                                       ; $5db4: $42
    ld a, l                                       ; $5db5: $7d
    pop hl                                        ; $5db6: $e1
    db $ec                                        ; $5db7: $ec
    pop hl                                        ; $5db8: $e1
    ld bc, $c16b                                  ; $5db9: $01 $6b $c1
    db $fc                                        ; $5dbc: $fc
    pop de                                        ; $5dbd: $d1
    ld [bc], a                                    ; $5dbe: $02
    adc e                                         ; $5dbf: $8b
    add c                                         ; $5dc0: $81
    cp a                                          ; $5dc1: $bf
    pop hl                                        ; $5dc2: $e1
    ld [hl], e                                    ; $5dc3: $73
    ld c, d                                       ; $5dc4: $4a
    ld a, [hl-]                                   ; $5dc5: $3a
    add b                                         ; $5dc6: $80
    jp Jump_000_18ff                              ; $5dc7: $c3 $ff $18


    ld d, d                                       ; $5dca: $52
    ld h, d                                       ; $5dcb: $62
    adc a                                         ; $5dcc: $8f
    add c                                         ; $5dcd: $81
    sbc b                                         ; $5dce: $98
    ret nz                                        ; $5dcf: $c0

jr_06f_5dd0:
    ld a, [bc]                                    ; $5dd0: $0a
    dec c                                         ; $5dd1: $0d
    cp e                                          ; $5dd2: $bb
    xor c                                         ; $5dd3: $a9
    ld a, $e1                                     ; $5dd4: $3e $e1
    call nz, Call_000_04ff                        ; $5dd6: $c4 $ff $04
    adc d                                         ; $5dd9: $8a
    add h                                         ; $5dda: $84
    ld c, c                                       ; $5ddb: $49
    add d                                         ; $5ddc: $82
    dec hl                                        ; $5ddd: $2b
    ret nz                                        ; $5dde: $c0

    db $e3                                        ; $5ddf: $e3
    ld bc, $11df                                  ; $5de0: $01 $df $11
    ld l, l                                       ; $5de3: $6d
    ret c                                         ; $5de4: $d8

    pop bc                                        ; $5de5: $c1
    ld a, [hl]                                    ; $5de6: $7e
    ld [c], a                                     ; $5de7: $e2
    ld c, b                                       ; $5de8: $48
    ret c                                         ; $5de9: $d8

    ld hl, $df01                                  ; $5dea: $21 $01 $df
    ld l, [hl]                                    ; $5ded: $6e
    xor $6b                                       ; $5dee: $ee $6b

jr_06f_5df0:
    sub a                                         ; $5df0: $97
    pop bc                                        ; $5df1: $c1
    adc [hl]                                      ; $5df2: $8e
    ld h, b                                       ; $5df3: $60
    ld l, e                                       ; $5df4: $6b
    sbc b                                         ; $5df5: $98
    ld hl, $0102                                  ; $5df6: $21 $02 $01
    add $0b                                       ; $5df9: $c6 $0b
    ld bc, $cddf                                  ; $5dfb: $01 $df $cd
    ld b, l                                       ; $5dfe: $45
    cp a                                          ; $5dff: $bf
    pop hl                                        ; $5e00: $e1
    adc [hl]                                      ; $5e01: $8e
    ld h, b                                       ; $5e02: $60
    jp $0123                                      ; $5e03: $c3 $23 $01


    jp Jump_000_3f00                              ; $5e06: $c3 $00 $3f


    pop bc                                        ; $5e09: $c1
    ld bc, $bfdf                                  ; $5e0a: $01 $df $bf
    add sp, -$3f                                  ; $5e0d: $e8 $c1
    db $e3                                        ; $5e0f: $e3
    jr c, jr_06f_5e33                             ; $5e10: $38 $21

    ld bc, $36c3                                  ; $5e12: $01 $c3 $36
    ld h, e                                       ; $5e15: $63
    ld bc, $00de                                  ; $5e16: $01 $de $00
    inc b                                         ; $5e19: $04
    daa                                           ; $5e1a: $27
    cp l                                          ; $5e1b: $bd
    ld b, [hl]                                    ; $5e1c: $46
    or [hl]                                       ; $5e1d: $b6
    nop                                           ; $5e1e: $00
    ld b, c                                       ; $5e1f: $41
    ld b, c                                       ; $5e20: $41
    cp l                                          ; $5e21: $bd
    ld [c], a                                     ; $5e22: $e2
    ld a, $c0                                     ; $5e23: $3e $c0
    db $ec                                        ; $5e25: $ec
    dec b                                         ; $5e26: $05
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    jr nz, @+$46                                  ; $5e29: $20 $44

    ld b, c                                       ; $5e2b: $41
    ret z                                         ; $5e2c: $c8

    and l                                         ; $5e2d: $a5
    ld a, b                                       ; $5e2e: $78
    ld b, c                                       ; $5e2f: $41
    ld b, c                                       ; $5e30: $41
    ldh [$7a], a                                  ; $5e31: $e0 $7a

jr_06f_5e33:
    and e                                         ; $5e33: $a3
    ld c, h                                       ; $5e34: $4c
    and b                                         ; $5e35: $a0
    adc c                                         ; $5e36: $89
    adc c                                         ; $5e37: $89
    add hl, sp                                    ; $5e38: $39
    db $10                                        ; $5e39: $10
    scf                                           ; $5e3a: $37
    call nz, $a342                                ; $5e3b: $c4 $42 $a3
    cp l                                          ; $5e3e: $bd
    ret nz                                        ; $5e3f: $c0

    pop af                                        ; $5e40: $f1
    and $0b                                       ; $5e41: $e6 $0b
    cp a                                          ; $5e43: $bf
    rst $38                                       ; $5e44: $ff
    add e                                         ; $5e45: $83
    nop                                           ; $5e46: $00
    ld bc, $0060                                  ; $5e47: $01 $60 $00
    inc [hl]                                      ; $5e4a: $34
    jp nz, $c189                                  ; $5e4b: $c2 $89 $c1

    cp h                                          ; $5e4e: $bc
    add c                                         ; $5e4f: $81
    cp $e6                                        ; $5e50: $fe $e6
    db $ed                                        ; $5e52: $ed
    ld b, b                                       ; $5e53: $40
    add b                                         ; $5e54: $80
    rst $38                                       ; $5e55: $ff
    inc bc                                        ; $5e56: $03
    ld h, b                                       ; $5e57: $60
    sub b                                         ; $5e58: $90
    jp nz, $c900                                  ; $5e59: $c2 $00 $c9

    jp hl                                         ; $5e5c: $e9


    xor l                                         ; $5e5d: $ad
    ld [c], a                                     ; $5e5e: $e2
    ld a, d                                       ; $5e5f: $7a
    ret nz                                        ; $5e60: $c0

    pop bc                                        ; $5e61: $c1
    rst $38                                       ; $5e62: $ff
    inc b                                         ; $5e63: $04
    inc hl                                        ; $5e64: $23
    rlca                                          ; $5e65: $07
    and c                                         ; $5e66: $a1
    sub d                                         ; $5e67: $92
    pop hl                                        ; $5e68: $e1
    ld b, h                                       ; $5e69: $44
    db $e3                                        ; $5e6a: $e3
    inc b                                         ; $5e6b: $04
    dec sp                                        ; $5e6c: $3b
    add b                                         ; $5e6d: $80
    jr c, @-$1d                                   ; $5e6e: $38 $e1

    ld l, e                                       ; $5e70: $6b
    ld [hl-], a                                   ; $5e71: $32
    ld h, b                                       ; $5e72: $60
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    add hl, bc                                    ; $5e75: $09
    ld h, h                                       ; $5e76: $64
    xor c                                         ; $5e77: $a9
    di                                            ; $5e78: $f3
    add $ff                                       ; $5e79: $c6 $ff
    nop                                           ; $5e7b: $00
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    ccf                                           ; $5e82: $3f
    db $e3                                        ; $5e83: $e3
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    rst $38                                       ; $5e87: $ff
    sub a                                         ; $5e88: $97
    sub a                                         ; $5e89: $97
    sub a                                         ; $5e8a: $97
    sub [hl]                                      ; $5e8b: $96
    sub [hl]                                      ; $5e8c: $96
    sub l                                         ; $5e8d: $95
    sub l                                         ; $5e8e: $95
    sub [hl]                                      ; $5e8f: $96
    rrca                                          ; $5e90: $0f
    sub [hl]                                      ; $5e91: $96
    sub a                                         ; $5e92: $97
    sub a                                         ; $5e93: $97
    sbc b                                         ; $5e94: $98
    rst $38                                       ; $5e95: $ff
    ldh [$f1], a                                  ; $5e96: $e0 $f1
    ldh [$fd], a                                  ; $5e98: $e0 $fd
    db $e4                                        ; $5e9a: $e4
    ld [$31e8], a                                 ; $5e9b: $ea $e8 $31
    sbc c                                         ; $5e9e: $99
    rst $38                                       ; $5e9f: $ff
    ld hl, sp-$40                                 ; $5ea0: $f8 $c0
    push hl                                       ; $5ea2: $e5
    pop bc                                        ; $5ea3: $c1
    pop hl                                        ; $5ea4: $e1
    sbc c                                         ; $5ea5: $99
    sbc c                                         ; $5ea6: $99
    cp l                                          ; $5ea7: $bd
    pop hl                                        ; $5ea8: $e1
    db $fc                                        ; $5ea9: $fc
    db $e3                                        ; $5eaa: $e3
    sub b                                         ; $5eab: $90
    xor c                                         ; $5eac: $a9
    ldh [$aa], a                                  ; $5ead: $e0 $aa
    db $e3                                        ; $5eaf: $e3
    xor c                                         ; $5eb0: $a9
    ld [c], a                                     ; $5eb1: $e2
    ret nz                                        ; $5eb2: $c0

    ld sp, hl                                     ; $5eb3: $f9
    sub [hl]                                      ; $5eb4: $96
    ret nz                                        ; $5eb5: $c0

    db $e3                                        ; $5eb6: $e3
    sbc c                                         ; $5eb7: $99
    ldh [rP1], a                                  ; $5eb8: $e0 $00
    ccf                                           ; $5eba: $3f
    ld bc, $0d99                                  ; $5ebb: $01 $99 $0d
    rlca                                          ; $5ebe: $07
    rlca                                          ; $5ebf: $07
    dec c                                         ; $5ec0: $0d
    or a                                          ; $5ec1: $b7
    db $e3                                        ; $5ec2: $e3
    ret nz                                        ; $5ec3: $c0

    db $e3                                        ; $5ec4: $e3
    ldh a, [$bf]                                  ; $5ec5: $f0 $bf
    push hl                                       ; $5ec7: $e5
    ld a, e                                       ; $5ec8: $7b
    or $41                                        ; $5ec9: $f6 $41
    db $e3                                        ; $5ecb: $e3
    add b                                         ; $5ecc: $80
    db $e4                                        ; $5ecd: $e4
    rrca                                          ; $5ece: $0f
    inc b                                         ; $5ecf: $04
    inc bc                                        ; $5ed0: $03
    ld d, b                                       ; $5ed1: $50
    rrca                                          ; $5ed2: $0f
    ld d, b                                       ; $5ed3: $50
    inc bc                                        ; $5ed4: $03
    inc b                                         ; $5ed5: $04
    rrca                                          ; $5ed6: $0f
    or a                                          ; $5ed7: $b7
    ldh [$c0], a                                  ; $5ed8: $e0 $c0
    ld [c], a                                     ; $5eda: $e2
    cp a                                          ; $5edb: $bf
    db $e4                                        ; $5edc: $e4
    cp [hl]                                       ; $5edd: $be
    ld sp, hl                                     ; $5ede: $f9
    db $fc                                        ; $5edf: $fc
    ld bc, $00e5                                  ; $5ee0: $01 $e5 $00
    pop hl                                        ; $5ee3: $e1
    rrca                                          ; $5ee4: $0f
    ld [bc], a                                    ; $5ee5: $02
    ld c, b                                       ; $5ee6: $48
    ld c, c                                       ; $5ee7: $49
    ld e, l                                       ; $5ee8: $5d
    ld e, l                                       ; $5ee9: $5d
    rrca                                          ; $5eea: $0f
    ld c, c                                       ; $5eeb: $49
    ld c, b                                       ; $5eec: $48
    ld [bc], a                                    ; $5eed: $02
    rrca                                          ; $5eee: $0f
    add b                                         ; $5eef: $80
    ld [c], a                                     ; $5ef0: $e2
    cp a                                          ; $5ef1: $bf
    db $e3                                        ; $5ef2: $e3
    xor $c4                                       ; $5ef3: $ee $c4
    ld a, h                                       ; $5ef5: $7c
    push af                                       ; $5ef6: $f5
    cp h                                          ; $5ef7: $bc
    add b                                         ; $5ef8: $80
    push hl                                       ; $5ef9: $e5
    ccf                                           ; $5efa: $3f
    pop hl                                        ; $5efb: $e1
    ld b, $4a                                     ; $5efc: $06 $4a
    ld h, b                                       ; $5efe: $60
    ld h, c                                       ; $5eff: $61
    rst $38                                       ; $5f00: $ff
    ldh [$60], a                                  ; $5f01: $e0 $60
    inc bc                                        ; $5f03: $03
    ld d, l                                       ; $5f04: $55
    ld b, $b7                                     ; $5f05: $06 $b7
    jp nz, $e4a7                                  ; $5f07: $c2 $a7 $e4

    cp l                                          ; $5f0a: $bd
    push hl                                       ; $5f0b: $e5
    ld hl, sp-$2d                                 ; $5f0c: $f8 $d3
    ld bc, $c0e1                                  ; $5f0e: $01 $e1 $c0
    call nz, Call_000_0eff                        ; $5f11: $c4 $ff $0e
    dec b                                         ; $5f14: $05
    ld c, e                                       ; $5f15: $4b
    ld h, c                                       ; $5f16: $61
    ld h, c                                       ; $5f17: $61
    ld d, h                                       ; $5f18: $54
    ld e, c                                       ; $5f19: $59
    ld d, h                                       ; $5f1a: $54
    rrca                                          ; $5f1b: $0f
    ld h, c                                       ; $5f1c: $61
    ld d, [hl]                                    ; $5f1d: $56
    dec b                                         ; $5f1e: $05
    ld c, $be                                     ; $5f1f: $0e $be
    rst $00                                       ; $5f21: $c7
    cp $e3                                        ; $5f22: $fe $e3
    ld a, h                                       ; $5f24: $7c
    or $c0                                        ; $5f25: $f6 $c0
    and $fe                                       ; $5f27: $e6 $fe
    add c                                         ; $5f29: $81
    db $e3                                        ; $5f2a: $e3
    ld d, d                                       ; $5f2b: $52
    dec l                                         ; $5f2c: $2d
    jr nc, jr_06f_5f73                            ; $5f2d: $30 $44

    ld c, l                                       ; $5f2f: $4d
    ld h, c                                       ; $5f30: $61
    ld e, h                                       ; $5f31: $5c
    pop bc                                        ; $5f32: $c1
    ld [$c5be], sp                                ; $5f33: $08 $be $c5
    cp $e1                                        ; $5f36: $fe $e1
    cp [hl]                                       ; $5f38: $be
    rst $20                                       ; $5f39: $e7
    or [hl]                                       ; $5f3a: $b6
    ret nc                                        ; $5f3b: $d0

    ret nz                                        ; $5f3c: $c0

    add $98                                       ; $5f3d: $c6 $98
    sbc c                                         ; $5f3f: $99
    rst $38                                       ; $5f40: $ff
    ld a, [bc]                                    ; $5f41: $0a
    ld c, a                                       ; $5f42: $4f
    ld h, c                                       ; $5f43: $61
    ld e, b                                       ; $5f44: $58
    ld b, l                                       ; $5f45: $45
    ld l, $2e                                     ; $5f46: $2e $2e
    ld c, b                                       ; $5f48: $48
    ccf                                           ; $5f49: $3f
    ld h, b                                       ; $5f4a: $60
    ld d, d                                       ; $5f4b: $52
    dec b                                         ; $5f4c: $05
    ld c, $01                                     ; $5f4d: $0e $01
    nop                                           ; $5f4f: $00
    cp [hl]                                       ; $5f50: $be
    call nz, $e8bd                                ; $5f51: $c4 $bd $e8
    ld hl, sp-$08                                 ; $5f54: $f8 $f8
    push bc                                       ; $5f56: $c5
    ret nz                                        ; $5f57: $c0

    jp nc, $e3c0                                  ; $5f58: $d2 $c0 $e3

    ld h, c                                       ; $5f5b: $61
    ld d, l                                       ; $5f5c: $55
    jr nc, jr_06f_5f8d                            ; $5f5d: $30 $2e

    ld b, a                                       ; $5f5f: $47
    rlca                                          ; $5f60: $07
    ld d, h                                       ; $5f61: $54
    ld b, h                                       ; $5f62: $44
    dec b                                         ; $5f63: $05
    adc $a0                                       ; $5f64: $ce $a0
    add b                                         ; $5f66: $80
    db $e4                                        ; $5f67: $e4
    ld h, d                                       ; $5f68: $62
    jp nz, $e47b                                  ; $5f69: $c2 $7b $e4

    cp a                                          ; $5f6c: $bf
    pop af                                        ; $5f6d: $f1
    cp $c1                                        ; $5f6e: $fe $c1
    xor b                                         ; $5f70: $a8
    ld b, $4a                                     ; $5f71: $06 $4a

jr_06f_5f73:
    ld h, c                                       ; $5f73: $61

jr_06f_5f74:
    ld e, b                                       ; $5f74: $58
    ld b, h                                       ; $5f75: $44
    ld hl, $3fbf                                  ; $5f76: $21 $bf $3f
    ld [hl], $44                                  ; $5f79: $36 $44
    ld b, [hl]                                    ; $5f7b: $46
    dec b                                         ; $5f7c: $05
    ld b, $02                                     ; $5f7d: $06 $02
    ccf                                           ; $5f7f: $3f
    ret nz                                        ; $5f80: $c0

    push hl                                       ; $5f81: $e5
    jp nz, $bff0                                  ; $5f82: $c2 $f0 $bf

    jp nz, $ea7c                                  ; $5f85: $c2 $7c $ea

    pop af                                        ; $5f88: $f1
    xor e                                         ; $5f89: $ab
    pop bc                                        ; $5f8a: $c1
    xor b                                         ; $5f8b: $a8
    rrca                                          ; $5f8c: $0f

jr_06f_5f8d:
    ld [bc], a                                    ; $5f8d: $02
    ld d, d                                       ; $5f8e: $52
    ld h, c                                       ; $5f8f: $61
    rst $38                                       ; $5f90: $ff
    ld d, d                                       ; $5f91: $52
    ld [hl], $35                                  ; $5f92: $36 $35
    ld a, [hl-]                                   ; $5f94: $3a
    dec bc                                        ; $5f95: $0b
    ld b, [hl]                                    ; $5f96: $46
    ld b, $0a                                     ; $5f97: $06 $0a
    pop bc                                        ; $5f99: $c1
    dec b                                         ; $5f9a: $05
    rst $38                                       ; $5f9b: $ff
    and c                                         ; $5f9c: $a1
    ld b, e                                       ; $5f9d: $43
    push bc                                       ; $5f9e: $c5
    cp [hl]                                       ; $5f9f: $be
    db $e4                                        ; $5fa0: $e4
    cp a                                          ; $5fa1: $bf
    ld a, [c]                                     ; $5fa2: $f2
    ld bc, $01e7                                  ; $5fa3: $01 $e7 $01
    nop                                           ; $5fa6: $00
    ld a, $bf                                     ; $5fa7: $3e $bf
    db $e3                                        ; $5fa9: $e3
    add hl, sp                                    ; $5faa: $39
    ld b, $07                                     ; $5fab: $06 $07
    rrca                                          ; $5fad: $0f
    ld b, $3e                                     ; $5fae: $06 $3e
    pop bc                                        ; $5fb0: $c1
    db $ec                                        ; $5fb1: $ec
    adc b                                         ; $5fb2: $88
    ldh a, [$7c]                                  ; $5fb3: $f0 $7c
    add sp, $33                                   ; $5fb5: $e8 $33
    call z, $aa41                                 ; $5fb7: $cc $41 $aa
    ld a, $c0                                     ; $5fba: $3e $c0
    ld d, d                                       ; $5fbc: $52
    ld b, e                                       ; $5fbd: $43
    ld b, l                                       ; $5fbe: $45
    dec b                                         ; $5fbf: $05
    ld bc, $0107                                  ; $5fc0: $01 $07 $01
    pop hl                                        ; $5fc3: $e1
    xor b                                         ; $5fc4: $a8
    add c                                         ; $5fc5: $81
    db $ec                                        ; $5fc6: $ec
    add l                                         ; $5fc7: $85
    sbc e                                         ; $5fc8: $9b
    add h                                         ; $5fc9: $84
    cp a                                          ; $5fca: $bf
    jp hl                                         ; $5fcb: $e9


    pop de                                        ; $5fcc: $d1
    add d                                         ; $5fcd: $82
    nop                                           ; $5fce: $00
    db $eb                                        ; $5fcf: $eb
    ld a, [hl]                                    ; $5fd0: $7e
    pop bc                                        ; $5fd1: $c1
    add b                                         ; $5fd2: $80
    ld b, $45                                     ; $5fd3: $06 $45
    inc bc                                        ; $5fd5: $03
    inc bc                                        ; $5fd6: $03
    ld b, [hl]                                    ; $5fd7: $46
    ld b, [hl]                                    ; $5fd8: $46
    inc bc                                        ; $5fd9: $03
    ldh [$80], a                                  ; $5fda: $e0 $80
    halt                                          ; $5fdc: $76
    add h                                         ; $5fdd: $84
    db $ec                                        ; $5fde: $ec
    add d                                         ; $5fdf: $82
    cp [hl]                                       ; $5fe0: $be
    db $e3                                        ; $5fe1: $e3
    ld hl, sp-$3c                                 ; $5fe2: $f8 $c4
    pop af                                        ; $5fe4: $f1
    and [hl]                                      ; $5fe5: $a6
    ld l, b                                       ; $5fe6: $68
    add h                                         ; $5fe7: $84
    ld b, c                                       ; $5fe8: $41
    adc e                                         ; $5fe9: $8b
    rrca                                          ; $5fea: $0f
    adc e                                         ; $5feb: $8b
    rlca                                          ; $5fec: $07
    dec c                                         ; $5fed: $0d
    cp [hl]                                       ; $5fee: $be
    add b                                         ; $5fef: $80
    rrca                                          ; $5ff0: $0f
    jr c, jr_06f_5f74                             ; $5ff1: $38 $81

    ld [hl-], a                                   ; $5ff3: $32
    add d                                         ; $5ff4: $82
    db $ec                                        ; $5ff5: $ec
    add d                                         ; $5ff6: $82
    add hl, bc                                    ; $5ff7: $09
    ld bc, $ef04                                  ; $5ff8: $01 $04 $ef
    ld [c], a                                     ; $5ffb: $e2
    ld l, a                                       ; $5ffc: $6f
    xor b                                         ; $5ffd: $a8
    cp a                                          ; $5ffe: $bf
    add sp, $40                                   ; $5fff: $e8 $40
    and a                                         ; $6001: $a7
    sub [hl]                                      ; $6002: $96
    add [hl]                                      ; $6003: $86
    dec sp                                        ; $6004: $3b
    add h                                         ; $6005: $84
    ld [hl-], a                                   ; $6006: $32
    add e                                         ; $6007: $83
    ccf                                           ; $6008: $3f
    rrca                                          ; $6009: $0f
    ld [bc], a                                    ; $600a: $02
    scf                                           ; $600b: $37
    dec a                                         ; $600c: $3d
    scf                                           ; $600d: $37

jr_06f_600e:
    ld [bc], a                                    ; $600e: $02
    xor [hl]                                      ; $600f: $ae
    ldh [$2d], a                                  ; $6010: $e0 $2d
    add h                                         ; $6012: $84
    jr nc, jr_06f_600e                            ; $6013: $30 $f9

    ret z                                         ; $6015: $c8

    ret nz                                        ; $6016: $c0

    and $68                                       ; $6017: $e6 $68
    push hl                                       ; $6019: $e5
    add hl, hl                                    ; $601a: $29
    push hl                                       ; $601b: $e5

jr_06f_601c:
    sbc b                                         ; $601c: $98
    sbc b                                         ; $601d: $98
    add hl, sp                                    ; $601e: $39
    add c                                         ; $601f: $81
    ld a, e                                       ; $6020: $7b
    add c                                         ; $6021: $81
    rst $38                                       ; $6022: $ff
    sbc b                                         ; $6023: $98
    sbc c                                         ; $6024: $99
    ld b, $39                                     ; $6025: $06 $39
    dec [hl]                                      ; $6027: $35
    dec [hl]                                      ; $6028: $35
    dec [hl]                                      ; $6029: $35
    add hl, sp                                    ; $602a: $39
    ld bc, $2d06                                  ; $602b: $01 $06 $2d
    add h                                         ; $602e: $84
    cp a                                          ; $602f: $bf
    ld [$e480], a                                 ; $6030: $ea $80 $e4
    and e                                         ; $6033: $a3
    ret                                           ; $6034: $c9


    ld a, b                                       ; $6035: $78
    call nz, $8339                                ; $6036: $c4 $39 $83
    jr c, jr_06f_601c                             ; $6039: $38 $e1

    rst $38                                       ; $603b: $ff
    ld c, $05                                     ; $603c: $0e $05
    ld a, [hl-]                                   ; $603e: $3a
    xor h                                         ; $603f: $ac
    jp Jump_000_3a35                              ; $6040: $c3 $35 $3a


    dec b                                         ; $6043: $05
    add b                                         ; $6044: $80
    ld h, d                                       ; $6045: $62
    ret nz                                        ; $6046: $c0

    xor $a7                                       ; $6047: $ee $a7
    ld l, b                                       ; $6049: $68
    add h                                         ; $604a: $84
    rst $38                                       ; $604b: $ff
    push bc                                       ; $604c: $c5
    ld h, d                                       ; $604d: $62
    add $f8                                       ; $604e: $c6 $f8
    and [hl]                                      ; $6050: $a6
    add hl, sp                                    ; $6051: $39
    add c                                         ; $6052: $81
    ld b, a                                       ; $6053: $47
    rst $38                                       ; $6054: $ff
    ld d, b                                       ; $6055: $50
    ld b, l                                       ; $6056: $45
    ld [$9898], sp                                ; $6057: $08 $98 $98
    ld [$3540], sp                                ; $605a: $08 $40 $35
    ld a, a                                       ; $605d: $7f
    xor l                                         ; $605e: $ad
    xor h                                         ; $605f: $ac
    dec [hl]                                      ; $6060: $35
    inc a                                         ; $6061: $3c
    inc c                                         ; $6062: $0c
    rlca                                          ; $6063: $07
    dec c                                         ; $6064: $0d
    xor h                                         ; $6065: $ac
    add $f0                                       ; $6066: $c6 $f0
    ld h, $6b                                     ; $6068: $26 $6b
    ld hl, $ddc5                                  ; $606a: $21 $c5 $dd
    and h                                         ; $606d: $a4
    ld a, [$4762]                                 ; $606e: $fa $62 $47
    ld h, b                                       ; $6071: $60
    ld d, h                                       ; $6072: $54
    ld d, h                                       ; $6073: $54
    rst $28                                       ; $6074: $ef
    ld h, c                                       ; $6075: $61
    ld h, c                                       ; $6076: $61
    ld e, l                                       ; $6077: $5d
    ld e, h                                       ; $6078: $5c
    add hl, bc                                    ; $6079: $09
    ldh [$08], a                                  ; $607a: $e0 $08
    ld b, h                                       ; $607c: $44
    inc a                                         ; $607d: $3c
    ld a, e                                       ; $607e: $7b
    jp Jump_000_3fad                              ; $607f: $c3 $ad $3f


    ldh [rSCX], a                                 ; $6082: $e0 $43
    inc bc                                        ; $6084: $03
    add hl, bc                                    ; $6085: $09

Jump_06f_6086:
    inc b                                         ; $6086: $04
    ld h, a                                       ; $6087: $67
    ld h, b                                       ; $6088: $60
    ldh a, [rNR52]                                ; $6089: $f0 $26
    ld l, l                                       ; $608b: $6d
    ld [hl+], a                                   ; $608c: $22
    rst $00                                       ; $608d: $c7
    ld h, d                                       ; $608e: $62
    call nz, Call_06f_63fa                        ; $608f: $c4 $fa $63
    ld d, e                                       ; $6092: $53
    scf                                           ; $6093: $37
    scf                                           ; $6094: $37
    ld d, [hl]                                    ; $6095: $56
    ccf                                           ; $6096: $3f
    ld h, c                                       ; $6097: $61
    ld h, c                                       ; $6098: $61
    ld d, d                                       ; $6099: $52
    ld b, l                                       ; $609a: $45
    ld b, $99                                     ; $609b: $06 $99
    ld b, b                                       ; $609d: $40
    ldh [rP1], a                                  ; $609e: $e0 $00
    ldh [$3f], a                                  ; $60a0: $e0 $3f
    dec [hl]                                      ; $60a2: $35
    ld a, [hl-]                                   ; $60a3: $3a
    ld c, a                                       ; $60a4: $4f
    ld c, c                                       ; $60a5: $49
    ld c, [hl]                                    ; $60a6: $4e
    ld c, b                                       ; $60a7: $48
    ld h, a                                       ; $60a8: $67
    ld h, b                                       ; $60a9: $60
    ld h, $6b                                     ; $60aa: $26 $6b
    ld a, b                                       ; $60ac: $78
    and [hl]                                      ; $60ad: $a6
    ld b, d                                       ; $60ae: $42
    adc e                                         ; $60af: $8b
    ld b, l                                       ; $60b0: $45
    cp c                                          ; $60b1: $b9
    adc b                                         ; $60b2: $88
    ld d, d                                       ; $60b3: $52
    ld b, b                                       ; $60b4: $40
    dec [hl]                                      ; $60b5: $35
    ld [hl], $f5                                  ; $60b6: $36 $f5
    ld h, b                                       ; $60b8: $60
    rst $18                                       ; $60b9: $df
    ld h, c                                       ; $60ba: $61
    ld d, l                                       ; $60bb: $55
    ld a, [bc]                                    ; $60bc: $0a
    nop                                           ; $60bd: $00
    ld bc, $c2c0                                  ; $60be: $01 $c0 $c2

Jump_06f_60c1:
    dec [hl]                                      ; $60c1: $35
    inc a                                         ; $60c2: $3c
    add c                                         ; $60c3: $81
    ld d, l                                       ; $60c4: $55
    xor c                                         ; $60c5: $a9
    ld h, b                                       ; $60c6: $60
    ld h, a                                       ; $60c7: $67
    ld h, c                                       ; $60c8: $61
    ld h, $68                                     ; $60c9: $26 $68
    ld h, l                                       ; $60cb: $65
    ld b, l                                       ; $60cc: $45
    ld c, d                                       ; $60cd: $4a
    ld b, h                                       ; $60ce: $44
    ld a, d                                       ; $60cf: $7a
    ld b, l                                       ; $60d0: $45
    sbc c                                         ; $60d1: $99
    rst $38                                       ; $60d2: $ff
    ld a, [bc]                                    ; $60d3: $0a
    ld b, l                                       ; $60d4: $45
    ld b, l                                       ; $60d5: $45
    add hl, sp                                    ; $60d6: $39
    ld [hl], $47                                  ; $60d7: $36 $47
    ld h, b                                       ; $60d9: $60
    ld h, c                                       ; $60da: $61
    cp a                                          ; $60db: $bf
    ld d, h                                       ; $60dc: $54
    ld d, h                                       ; $60dd: $54
    ld e, d                                       ; $60de: $5a
    ld a, [bc]                                    ; $60df: $0a
    sbc c                                         ; $60e0: $99
    sbc c                                         ; $60e1: $99
    rst $38                                       ; $60e2: $ff
    ret nz                                        ; $60e3: $c0

    jp $fefe                                      ; $60e4: $c3 $fe $fe


    ldh [rLY], a                                  ; $60e7: $e0 $44
    ld c, l                                       ; $60e9: $4d

jr_06f_60ea:
    ld d, d                                       ; $60ea: $52
    ld e, e                                       ; $60eb: $5b
    ld d, d                                       ; $60ec: $52
    ld h, b                                       ; $60ed: $60
    ld b, a                                       ; $60ee: $47
    ldh a, [rNR52]                                ; $60ef: $f0 $26
    ld h, a                                       ; $60f1: $67
    ld a, $c7                                     ; $60f2: $3e $c7
    ld d, c                                       ; $60f4: $51
    ld b, l                                       ; $60f5: $45
    ret nz                                        ; $60f6: $c0

    and $46                                       ; $60f7: $e6 $46
    ld b, [hl]                                    ; $60f9: $46
    add hl, sp                                    ; $60fa: $39
    ld b, b                                       ; $60fb: $40
    cp a                                          ; $60fc: $bf
    ld d, e                                       ; $60fd: $53
    ld d, e                                       ; $60fe: $53
    ld d, e                                       ; $60ff: $53
    dec b                                         ; $6100: $05
    ld [bc], a                                    ; $6101: $02
    ld b, l                                       ; $6102: $45
    jr c, jr_06f_6165                             ; $6103: $38 $60

    ld c, $f7                                     ; $6105: $0e $f7
    inc c                                         ; $6107: $0c
    inc a                                         ; $6108: $3c
    xor h                                         ; $6109: $ac
    ld a, $c0                                     ; $610a: $3e $c0
    ld b, b                                       ; $610c: $40
    ld c, l                                       ; $610d: $4d
    ld e, h                                       ; $610e: $5c
    ld b, [hl]                                    ; $610f: $46
    ldh [$a7], a                                  ; $6110: $e0 $a7
    ld h, b                                       ; $6112: $60
    ld h, $65                                     ; $6113: $26 $65
    ld a, $c9                                     ; $6115: $3e $c9
    ld h, b                                       ; $6117: $60
    and [hl]                                      ; $6118: $a6
    ld a, [$4645]                                 ; $6119: $fa $45 $46
    ld b, [hl]                                    ; $611c: $46
    ld b, l                                       ; $611d: $45
    cp a                                          ; $611e: $bf
    ld b, l                                       ; $611f: $45
    ld b, [hl]                                    ; $6120: $46
    ld [bc], a                                    ; $6121: $02
    ld [bc], a                                    ; $6122: $02
    dec b                                         ; $6123: $05
    ld [$41b8], sp                                ; $6124: $08 $b8 $41
    sbc c                                         ; $6127: $99
    inc sp                                        ; $6128: $33
    dec b                                         ; $6129: $05
    ld a, [hl-]                                   ; $612a: $3a
    ld a, a                                       ; $612b: $7f
    ret nz                                        ; $612c: $c0

    ret nz                                        ; $612d: $c0

    ldh [rHDMA2], a                               ; $612e: $e0 $52
    ld b, e                                       ; $6130: $43
    ld l, h                                       ; $6131: $6c
    ldh [rNR52], a                                ; $6132: $e0 $26
    ld h, c                                       ; $6134: $61
    ldh a, [$c0]                                  ; $6135: $f0 $c0
    db $e3                                        ; $6137: $e3
    and h                                         ; $6138: $a4
    ld a, [hl+]                                   ; $6139: $2a
    add b                                         ; $613a: $80
    push hl                                       ; $613b: $e5
    ld sp, hl                                     ; $613c: $f9
    ld [hl+], a                                   ; $613d: $22
    rrca                                          ; $613e: $0f
    rlca                                          ; $613f: $07
    ld [bc], a                                    ; $6140: $02
    ld b, [hl]                                    ; $6141: $46
    ld l, a                                       ; $6142: $6f
    ld b, [hl]                                    ; $6143: $46
    ld b, [hl]                                    ; $6144: $46
    ld [$ba99], sp                                ; $6145: $08 $99 $ba
    add b                                         ; $6148: $80
    ld bc, $6a00                                  ; $6149: $01 $00 $6a
    ld h, b                                       ; $614c: $60
    ei                                            ; $614d: $fb
    ld a, $ac                                     ; $614e: $3e $ac
    ld a, a                                       ; $6150: $7f
    ret nz                                        ; $6151: $c0

    ld b, b                                       ; $6152: $40

Call_06f_6153:
    ld c, l                                       ; $6153: $4d
    ld h, c                                       ; $6154: $61
    ld c, h                                       ; $6155: $4c
    ld h, b                                       ; $6156: $60
    inc bc                                        ; $6157: $03
    ld d, a                                       ; $6158: $57
    ld d, a                                       ; $6159: $57
    ld a, a                                       ; $615a: $7f
    db $e3                                        ; $615b: $e3
    ld c, [hl]                                    ; $615c: $4e
    ld b, a                                       ; $615d: $47
    ld h, l                                       ; $615e: $65
    inc h                                         ; $615f: $24
    ldh [$84], a                                  ; $6160: $e0 $84
    jr c, jr_06f_60ea                             ; $6162: $38 $86

jr_06f_6164:
    dec c                                         ; $6164: $0d

jr_06f_6165:
    and c                                         ; $6165: $a1
    sub h                                         ; $6166: $94
    db $f4                                        ; $6167: $f4
    jr nz, jr_06f_6164                            ; $6168: $20 $fa

    ld b, b                                       ; $616a: $40
    sbc c                                         ; $616b: $99
    ret nz                                        ; $616c: $c0

    ldh [$ad], a                                  ; $616d: $e0 $ad
    nop                                           ; $616f: $00
    ld [c], a                                     ; $6170: $e2
    ld [hl], b                                    ; $6171: $70
    ret nz                                        ; $6172: $c0

    ld b, e                                       ; $6173: $43
    inc bc                                        ; $6174: $03
    ld b, e                                       ; $6175: $43
    ld d, d                                       ; $6176: $52
    db $ed                                        ; $6177: $ed
    ret nz                                        ; $6178: $c0

Jump_06f_6179:
    ret nz                                        ; $6179: $c0

    rst $00                                       ; $617a: $c7
    ret nz                                        ; $617b: $c0

    ld [$2439], a                                 ; $617c: $ea $39 $24
    ld a, [hl-]                                   ; $617f: $3a
    inc hl                                        ; $6180: $23
    ld [hl], l                                    ; $6181: $75
    jr nz, @+$7d                                  ; $6182: $20 $7b

    ld [$0a46], sp                                ; $6184: $08 $46 $0a
    and c                                         ; $6187: $a1
    nop                                           ; $6188: $00
    ld bc, $3e0a                                  ; $6189: $01 $0a $3e
    ld b, b                                       ; $618c: $40
    pop bc                                        ; $618d: $c1
    ld a, $26                                     ; $618e: $3e $26
    ld b, b                                       ; $6190: $40
    ld e, b                                       ; $6191: $58
    ld b, h                                       ; $6192: $44
    ld b, [hl]                                    ; $6193: $46
    ld b, [hl]                                    ; $6194: $46
    ld b, h                                       ; $6195: $44
    ccf                                           ; $6196: $3f
    ld [c], a                                     ; $6197: $e2
    and [hl]                                      ; $6198: $a6
    ld h, $a8                                     ; $6199: $26 $a8
    add b                                         ; $619b: $80
    rst $20                                       ; $619c: $e7
    cp a                                          ; $619d: $bf
    ret z                                         ; $619e: $c8

    ld d, d                                       ; $619f: $52

Call_06f_61a0:
    inc h                                         ; $61a0: $24
    rrca                                          ; $61a1: $0f
    ld a, c                                       ; $61a2: $79
    add c                                         ; $61a3: $81
    sbc b                                         ; $61a4: $98
    rst $38                                       ; $61a5: $ff
    and h                                         ; $61a6: $a4
    ld a, $1c                                     ; $61a7: $3e $1c
    push hl                                       ; $61a9: $e5
    ld b, b                                       ; $61aa: $40
    ret nz                                        ; $61ab: $c0

    ld [c], a                                     ; $61ac: $e2
    ld c, l                                       ; $61ad: $4d
    ld e, h                                       ; $61ae: $5c
    ld [$28a6], sp                                ; $61af: $08 $a6 $28
    and h                                         ; $61b2: $a4
    ld b, $bf                                     ; $61b3: $06 $bf
    ret z                                         ; $61b5: $c8

    ret nz                                        ; $61b6: $c0

    sub d                                         ; $61b7: $92
    daa                                           ; $61b8: $27
    or b                                          ; $61b9: $b0
    ld [bc], a                                    ; $61ba: $02
    ld a, a                                       ; $61bb: $7f
    and b                                         ; $61bc: $a0
    add b                                         ; $61bd: $80
    ret nz                                        ; $61be: $c0

    ret nz                                        ; $61bf: $c0

jr_06f_61c0:
    pop hl                                        ; $61c0: $e1
    ld b, b                                       ; $61c1: $40
    pop hl                                        ; $61c2: $e1
    ld b, a                                       ; $61c3: $47
    ld h, b                                       ; $61c4: $60
    ldh [$c0], a                                  ; $61c5: $e0 $c0
    pop hl                                        ; $61c7: $e1
    ccf                                           ; $61c8: $3f
    call z, $cabf                                 ; $61c9: $cc $bf $ca
    inc d                                         ; $61cc: $14
    ld c, b                                       ; $61cd: $48
    or b                                          ; $61ce: $b0
    ld bc, $020f                                  ; $61cf: $01 $0f $02
    add hl, sp                                    ; $61d2: $39
    ld a, c                                       ; $61d3: $79
    dec [hl]                                      ; $61d4: $35
    ld b, b                                       ; $61d5: $40
    and c                                         ; $61d6: $a1
    or c                                          ; $61d7: $b1
    and c                                         ; $61d8: $a1
    ld h, c                                       ; $61d9: $61
    ld c, h                                       ; $61da: $4c
    ld c, h                                       ; $61db: $4c
    ld h, b                                       ; $61dc: $60
    push hl                                       ; $61dd: $e5
    jr nz, jr_06f_61c0                            ; $61de: $20 $e0

    and [hl]                                      ; $61e0: $a6
    daa                                           ; $61e1: $27
    ccf                                           ; $61e2: $3f
    call $8721                                    ; $61e3: $cd $21 $87
    add l                                         ; $61e6: $85
    ld h, d                                       ; $61e7: $62
    db $fc                                        ; $61e8: $fc
    jr nz, jr_06f_61f8                            ; $61e9: $20 $0d

    ld [bc], a                                    ; $61eb: $02
    ld b, l                                       ; $61ec: $45
    inc c                                         ; $61ed: $0c
    ld b, b                                       ; $61ee: $40
    and d                                         ; $61ef: $a2
    ld b, c                                       ; $61f0: $41
    ret nz                                        ; $61f1: $c0

    ld e, e                                       ; $61f2: $5b
    ld d, d                                       ; $61f3: $52
    inc h                                         ; $61f4: $24
    ld hl, $2065                                  ; $61f5: $21 $65 $20

jr_06f_61f8:
    ld h, $47                                     ; $61f8: $26 $47
    cp a                                          ; $61fa: $bf
    adc $fc                                       ; $61fb: $ce $fc
    adc a                                         ; $61fd: $8f
    ld h, $c8                                     ; $61fe: $26 $c8
    ld b, c                                       ; $6200: $41
    dec c                                         ; $6201: $0d
    rlca                                          ; $6202: $07
    inc b                                         ; $6203: $04
    add hl, bc                                    ; $6204: $09
    inc bc                                        ; $6205: $03
    scf                                           ; $6206: $37
    ld [hl], l                                    ; $6207: $75
    jr c, jr_06f_620b                             ; $6208: $38 $01

    add b                                         ; $620a: $80

jr_06f_620b:
    jp $c0c1                                      ; $620b: $c3 $c1 $c0


    ld e, h                                       ; $620e: $5c
    ld b, [hl]                                    ; $620f: $46
    ld b, [hl]                                    ; $6210: $46
    ld a, l                                       ; $6211: $7d
    ret nz                                        ; $6212: $c0

    rlca                                          ; $6213: $07
    ld h, c                                       ; $6214: $61
    ld e, d                                       ; $6215: $5a
    ld a, [bc]                                    ; $6216: $0a
    and [hl]                                      ; $6217: $a6
    inc hl                                        ; $6218: $23
    ld c, h                                       ; $6219: $4c
    ld h, [hl]                                    ; $621a: $66
    cp a                                          ; $621b: $bf
    ret z                                         ; $621c: $c8

    dec e                                         ; $621d: $1d
    ld h, a                                       ; $621e: $67
    ld [hl], h                                    ; $621f: $74
    ld bc, $049f                                  ; $6220: $01 $9f $04
    inc bc                                        ; $6223: $03
    ld b, e                                       ; $6224: $43
    scf                                           ; $6225: $37
    dec a                                         ; $6226: $3d
    jp nz, $c0e1                                  ; $6227: $c2 $e1 $c0

    ld h, c                                       ; $622a: $61
    ld c, e                                       ; $622b: $4b
    ld e, $43                                     ; $622c: $1e $43
    ret nz                                        ; $622e: $c0

    ld b, a                                       ; $622f: $47
    ld h, b                                       ; $6230: $60
    ld d, d                                       ; $6231: $52
    ld d, d                                       ; $6232: $52
    ld a, a                                       ; $6233: $7f
    and b                                         ; $6234: $a0
    and [hl]                                      ; $6235: $a6
    jr z, jr_06f_62b7                             ; $6236: $28 $7f

    xor c                                         ; $6238: $a9
    inc a                                         ; $6239: $3c
    ld e, c                                       ; $623a: $59
    ld b, a                                       ; $623b: $47
    ld c, c                                       ; $623c: $49
    ld b, e                                       ; $623d: $43
    ld b, $45                                     ; $623e: $06 $45
    jr c, jr_06f_627d                             ; $6240: $38 $3b

    jp Jump_06f_42e2                              ; $6242: $c3 $e2 $42


    and b                                         ; $6245: $a0
    inc e                                         ; $6246: $1c
    ld a, [c]                                     ; $6247: $f2
    add c                                         ; $6248: $81
    pop bc                                        ; $6249: $c1
    and b                                         ; $624a: $a0
    ld h, c                                       ; $624b: $61
    ld d, d                                       ; $624c: $52
    ld b, a                                       ; $624d: $47
    and [hl]                                      ; $624e: $a6
    dec bc                                        ; $624f: $0b
    ld a, e                                       ; $6250: $7b
    ld b, l                                       ; $6251: $45
    ld a, l                                       ; $6252: $7d
    add a                                         ; $6253: $87
    ld c, h                                       ; $6254: $4c
    push af                                       ; $6255: $f5
    inc bc                                        ; $6256: $03
    daa                                           ; $6257: $27
    add c                                         ; $6258: $81
    dec b                                         ; $6259: $05
    ld [hl], $c6                                  ; $625a: $36 $c6
    pop hl                                        ; $625c: $e1
    ld b, h                                       ; $625d: $44

jr_06f_625e:
    ld h, b                                       ; $625e: $60
    xor l                                         ; $625f: $ad
    pop bc                                        ; $6260: $c1
    pop hl                                        ; $6261: $e1
    ld b, b                                       ; $6262: $40
    add [hl]                                      ; $6263: $86
    ldh [rIE], a                                  ; $6264: $e0 $ff
    ld [c], a                                     ; $6266: $e2
    ld h, $0a                                     ; $6267: $26 $0a
    cp $67                                        ; $6269: $fe $67
    pop bc                                        ; $626b: $c1
    and $fc                                       ; $626c: $e6 $fc
    add l                                         ; $626e: $85
    sbc c                                         ; $626f: $99
    ret nz                                        ; $6270: $c0

    pop hl                                        ; $6271: $e1
    ld l, h                                       ; $6272: $6c
    ret z                                         ; $6273: $c8

    ld h, b                                       ; $6274: $60
    add h                                         ; $6275: $84
    add b                                         ; $6276: $80
    jr c, @+$39                                   ; $6277: $38 $37

    ld [hl], h                                    ; $6279: $74
    add b                                         ; $627a: $80
    ld d, d                                       ; $627b: $52
    ld b, a                                       ; $627c: $47

jr_06f_627d:
    ret nz                                        ; $627d: $c0

    ld [c], a                                     ; $627e: $e2
    add c                                         ; $627f: $81
    ld d, d                                       ; $6280: $52
    or a                                          ; $6281: $b7
    ld b, b                                       ; $6282: $40
    rst $08                                       ; $6283: $cf
    ld b, a                                       ; $6284: $47
    ld a, [hl]                                    ; $6285: $7e
    ld h, [hl]                                    ; $6286: $66
    ld a, l                                       ; $6287: $7d

Call_06f_6288:
    ld l, [hl]                                    ; $6288: $6e
    ld [hl], h                                    ; $6289: $74
    jr nz, jr_06f_62cc                            ; $628a: $20 $40

    db $e3                                        ; $628c: $e3
    jr c, jr_06f_625e                             ; $628d: $38 $cf

    dec a                                         ; $628f: $3d
    scf                                           ; $6290: $37
    ld c, b                                       ; $6291: $48
    ld c, c                                       ; $6292: $49
    ld b, e                                       ; $6293: $43
    ldh [$82], a                                  ; $6294: $e0 $82
    ld [c], a                                     ; $6296: $e2
    ld d, h                                       ; $6297: $54
    ld d, e                                       ; $6298: $53
    ret nz                                        ; $6299: $c0

    ld a, b                                       ; $629a: $78
    ld b, c                                       ; $629b: $41
    or [hl]                                       ; $629c: $b6
    inc h                                         ; $629d: $24
    cp [hl]                                       ; $629e: $be
    ld b, [hl]                                    ; $629f: $46
    pop bc                                        ; $62a0: $c1
    db $ec                                        ; $62a1: $ec
    add b                                         ; $62a2: $80
    push hl                                       ; $62a3: $e5
    ret nz                                        ; $62a4: $c0

    pop bc                                        ; $62a5: $c1
    ccf                                           ; $62a6: $3f
    ccf                                           ; $62a7: $3f
    sbc $b1                                       ; $62a8: $de $b1
    jr nz, jr_06f_62f4                            ; $62aa: $20 $48

    ld e, c                                       ; $62ac: $59
    ld d, h                                       ; $62ad: $54
    ld d, a                                       ; $62ae: $57
    jp $59e1                                      ; $62af: $c3 $e1 $59


    ld d, e                                       ; $62b2: $53
    ld h, b                                       ; $62b3: $60
    add b                                         ; $62b4: $80
    ld h, c                                       ; $62b5: $61
    dec sp                                        ; $62b6: $3b

jr_06f_62b7:
    ld b, l                                       ; $62b7: $45
    ld a, $46                                     ; $62b8: $3e $46
    jr nz, jr_06f_62ea                            ; $62ba: $20 $2e

    ld h, [hl]                                    ; $62bc: $66
    ld b, h                                       ; $62bd: $44
    nop                                           ; $62be: $00
    ld bc, $403c                                  ; $62bf: $01 $3c $40

Jump_06f_62c2:
    ld a, [$403a]                                 ; $62c2: $fa $3a $40
    dec c                                         ; $62c5: $0d
    dec sp                                        ; $62c6: $3b
    ret nz                                        ; $62c7: $c0

    ld b, e                                       ; $62c8: $43
    ld e, e                                       ; $62c9: $5b
    ld e, e                                       ; $62ca: $5b
    ld e, e                                       ; $62cb: $5b

jr_06f_62cc:
    ld b, l                                       ; $62cc: $45
    add c                                         ; $62cd: $81
    inc bc                                        ; $62ce: $03
    nop                                           ; $62cf: $00
    ld h, d                                       ; $62d0: $62
    cp e                                          ; $62d1: $bb
    daa                                           ; $62d2: $27
    dec [hl]                                      ; $62d3: $35
    inc b                                         ; $62d4: $04
    pop hl                                        ; $62d5: $e1

jr_06f_62d6:
    inc c                                         ; $62d6: $0c
    inc hl                                        ; $62d7: $23
    jr z, jr_06f_62d6                             ; $62d8: $28 $fc

    push hl                                       ; $62da: $e5
    sbc c                                         ; $62db: $99
    ld a, a                                       ; $62dc: $7f
    dec c                                         ; $62dd: $0d
    rlca                                          ; $62de: $07
    inc c                                         ; $62df: $0c
    inc a                                         ; $62e0: $3c
    dec sp                                        ; $62e1: $3b
    inc c                                         ; $62e2: $0c
    dec c                                         ; $62e3: $0d
    ld a, $41                                     ; $62e4: $3e $41
    ret nz                                        ; $62e6: $c0

    add h                                         ; $62e7: $84
    xor c                                         ; $62e8: $a9
    add b                                         ; $62e9: $80

jr_06f_62ea:
    ld b, a                                       ; $62ea: $47
    cp [hl]                                       ; $62eb: $be
    add hl, hl                                    ; $62ec: $29
    sbc l                                         ; $62ed: $9d
    ld b, h                                       ; $62ee: $44
    ld e, [hl]                                    ; $62ef: $5e
    ld [bc], a                                    ; $62f0: $02
    ld [hl], $82                                  ; $62f1: $36 $82

jr_06f_62f3:
    add hl, bc                                    ; $62f3: $09

jr_06f_62f4:
    inc b                                         ; $62f4: $04
    nop                                           ; $62f5: $00
    cp h                                          ; $62f6: $bc
    ld hl, $20fe                                  ; $62f7: $21 $fe $20
    push af                                       ; $62fa: $f5
    pop hl                                        ; $62fb: $e1
    nop                                           ; $62fc: $00
    ld [c], a                                     ; $62fd: $e2
    ld b, d                                       ; $62fe: $42
    add a                                         ; $62ff: $87
    ret nz                                        ; $6300: $c0

    and $3e                                       ; $6301: $e6 $3e
    jr z, @-$01                                   ; $6303: $28 $fd

    nop                                           ; $6305: $00
    jr nc, jr_06f_6346                            ; $6306: $30 $3e

    ld h, $43                                     ; $6308: $26 $43
    ld hl, $2042                                  ; $630a: $21 $42 $20
    ld a, h                                       ; $630d: $7c
    ld b, b                                       ; $630e: $40
    add hl, sp                                    ; $630f: $39
    ld b, $f5                                     ; $6310: $06 $f5
    db $e3                                        ; $6312: $e3
    add b                                         ; $6313: $80
    ret nz                                        ; $6314: $c0

jr_06f_6315:
    adc b                                         ; $6315: $88
    jp nz, Jump_000_316b                          ; $6316: $c2 $6b $31

    ret                                           ; $6319: $c9


    db $10                                        ; $631a: $10
    inc hl                                        ; $631b: $23
    xor [hl]                                      ; $631c: $ae
    add [hl]                                      ; $631d: $86
    ld hl, $43e9                                  ; $631e: $21 $e9 $43
    ld b, e                                       ; $6321: $43
    jr nz, jr_06f_635c                            ; $6322: $20 $38

    rst $38                                       ; $6324: $ff
    jr c, jr_06f_635c                             ; $6325: $38 $35

    ld [hl], $44                                  ; $6327: $36 $44
    inc a                                         ; $6329: $3c
    inc a                                         ; $632a: $3c
    inc c                                         ; $632b: $0c
    ld [bc], a                                    ; $632c: $02
    add l                                         ; $632d: $85
    ld [hl], $77                                  ; $632e: $36 $77
    and d                                         ; $6330: $a2
    ld b, $fa                                     ; $6331: $06 $fa
    inc b                                         ; $6333: $04
    ret nz                                        ; $6334: $c0

    jp hl                                         ; $6335: $e9


    add [hl]                                      ; $6336: $86
    ld h, h                                       ; $6337: $64
    adc c                                         ; $6338: $89
    jp Jump_000_3f02                              ; $6339: $c3 $02 $3f


    ld b, [hl]                                    ; $633c: $46
    xor a                                         ; $633d: $af
    xor [hl]                                      ; $633e: $ae
    ld b, [hl]                                    ; $633f: $46
    ld b, [hl]                                    ; $6340: $46
    ld b, $51                                     ; $6341: $06 $51
    ld [hl+], a                                   ; $6343: $22
    ret nz                                        ; $6344: $c0

    ld [c], a                                     ; $6345: $e2

jr_06f_6346:
    rst $38                                       ; $6346: $ff
    scf                                           ; $6347: $37
    scf                                           ; $6348: $37
    jr c, jr_06f_638b                             ; $6349: $38 $40

    dec [hl]                                      ; $634b: $35
    inc a                                         ; $634c: $3c
    ld b, h                                       ; $634d: $44
    ld [hl], $03                                  ; $634e: $36 $03
    jr c, @+$39                                   ; $6350: $38 $37

    cp [hl]                                       ; $6352: $be
    ldh [$c0], a                                  ; $6353: $e0 $c0
    pop hl                                        ; $6355: $e1
    ld b, d                                       ; $6356: $42
    ld l, b                                       ; $6357: $68
    sbc h                                         ; $6358: $9c
    ld bc, $6806                                  ; $6359: $01 $06 $68

jr_06f_635c:
    adc d                                         ; $635c: $8a
    ld h, d                                       ; $635d: $62
    rra                                           ; $635e: $1f
    jp $af41                                      ; $635f: $c3 $41 $af


    ld b, [hl]                                    ; $6362: $46
    ld b, [hl]                                    ; $6363: $46
    sbc d                                         ; $6364: $9a
    add e                                         ; $6365: $83
    ld [hl], l                                    ; $6366: $75
    jr nz, jr_06f_62f3                            ; $6367: $20 $8a

    ldh [$5b], a                                  ; $6369: $e0 $5b
    ld [hl], $45                                  ; $636b: $36 $45
    cp l                                          ; $636d: $bd
    nop                                           ; $636e: $00
    ld b, b                                       ; $636f: $40
    ccf                                           ; $6370: $3f
    or [hl]                                       ; $6371: $b6
    add c                                         ; $6372: $81
    ld [hl], $40                                  ; $6373: $36 $40
    ld [c], a                                     ; $6375: $e2
    ld hl, sp-$7e                                 ; $6376: $f8 $82
    ld h, a                                       ; $6378: $67
    ret nz                                        ; $6379: $c0

    rst $20                                       ; $637a: $e7
    add $05                                       ; $637b: $c6 $05
    ld [bc], a                                    ; $637d: $02
    ld b, l                                       ; $637e: $45
    ld [hl], $a6                                  ; $637f: $36 $a6
    ld [hl], $53                                  ; $6381: $36 $53
    ld b, l                                       ; $6383: $45
    ld b, [hl]                                    ; $6384: $46
    ld b, h                                       ; $6385: $44
    ld h, c                                       ; $6386: $61
    di                                            ; $6387: $f3
    jp nz, Jump_06f_7f02                          ; $6388: $c2 $02 $7f

jr_06f_638b:
    add b                                         ; $638b: $80
    ld [hl], $7d                                  ; $638c: $36 $7d
    jr nz, jr_06f_6315                            ; $638e: $20 $85

    ld [hl], $41                                  ; $6390: $36 $41
    ldh [$38], a                                  ; $6392: $e0 $38
    jr c, @+$04                                   ; $6394: $38 $02

    jp nc, Jump_06f_40c8                          ; $6396: $d2 $c8 $40

    jp nz, $e980                                  ; $6399: $c2 $80 $e9

    sbc c                                         ; $639c: $99
    ccf                                           ; $639d: $3f
    ld [$3645], sp                                ; $639e: $08 $45 $36
    ld h, d                                       ; $63a1: $62
    and a                                         ; $63a2: $a7
    ld h, [hl]                                    ; $63a3: $66
    cp a                                          ; $63a4: $bf
    pop hl                                        ; $63a5: $e1
    sbc c                                         ; $63a6: $99
    ld h, c                                       ; $63a7: $61
    ld a, [c]                                     ; $63a8: $f2
    ld [hl], e                                    ; $63a9: $73
    ld b, c                                       ; $63aa: $41
    inc b                                         ; $63ab: $04
    dec a                                         ; $63ac: $3d
    add b                                         ; $63ad: $80
    or a                                          ; $63ae: $b7
    add b                                         ; $63af: $80
    dec sp                                        ; $63b0: $3b
    jr c, jr_06f_63ea                             ; $63b1: $38 $37

    dec bc                                        ; $63b3: $0b
    ldh a, [$c0]                                  ; $63b4: $f0 $c0
    and d                                         ; $63b6: $a2
    cp $a7                                        ; $63b7: $fe $a7
    ld e, c                                       ; $63b9: $59
    ld h, h                                       ; $63ba: $64
    nop                                           ; $63bb: $00
    jp hl                                         ; $63bc: $e9


    sbc b                                         ; $63bd: $98
    ld [$6236], sp                                ; $63be: $08 $36 $62
    ld a, a                                       ; $63c1: $7f
    ld h, a                                       ; $63c2: $67
    and e                                         ; $63c3: $a3
    ld l, b                                       ; $63c4: $68
    ld h, [hl]                                    ; $63c5: $66
    ld [hl], $c3                                  ; $63c6: $36 $c3
    xor [hl]                                      ; $63c8: $ae
    add h                                         ; $63c9: $84
    nop                                           ; $63ca: $00
    ld c, $3d                                     ; $63cb: $0e $3d
    jp Jump_000_040d                              ; $63cd: $c3 $0d $04


    inc bc                                        ; $63d0: $03
    nop                                           ; $63d1: $00
    pop hl                                        ; $63d2: $e1
    pop bc                                        ; $63d3: $c1
    and b                                         ; $63d4: $a0
    xor $a4                                       ; $63d5: $ee $a4
    ld bc, $fc45                                  ; $63d7: $01 $45 $fc
    db $fd                                        ; $63da: $fd
    and h                                         ; $63db: $a4
    ld l, a                                       ; $63dc: $6f
    add hl, bc                                    ; $63dd: $09
    sbc c                                         ; $63de: $99
    ld b, $a8                                     ; $63df: $06 $a8
    xor c                                         ; $63e1: $a9
    ld l, h                                       ; $63e2: $6c
    dec [hl]                                      ; $63e3: $35
    dec b                                         ; $63e4: $05
    dec [hl]                                      ; $63e5: $35
    cp a                                          ; $63e6: $bf
    ldh [$af], a                                  ; $63e7: $e0 $af
    ld b, h                                       ; $63e9: $44

jr_06f_63ea:
    ld b, b                                       ; $63ea: $40
    add d                                         ; $63eb: $82
    pop hl                                        ; $63ec: $e1
    ld bc, $f6c6                                  ; $63ed: $01 $c6 $f6
    and d                                         ; $63f0: $a2
    ld bc, $f022                                  ; $63f1: $01 $22 $f0
    add d                                         ; $63f4: $82
    ld h, e                                       ; $63f5: $63
    cp l                                          ; $63f6: $bd
    add $00                                       ; $63f7: $c6 $00
    ret z                                         ; $63f9: $c8

Call_06f_63fa:
    call nz, Call_000_3600                        ; $63fa: $c4 $00 $36
    ld l, [hl]                                    ; $63fd: $6e
    ld l, a                                       ; $63fe: $6f
    ld l, h                                       ; $63ff: $6c
    ccf                                           ; $6400: $3f
    dec [hl]                                      ; $6401: $35
    and e                                         ; $6402: $a3
    xor d                                         ; $6403: $aa
    xor e                                         ; $6404: $ab
    ld [hl], $06                                  ; $6405: $36 $06
    inc bc                                        ; $6407: $03
    ld h, d                                       ; $6408: $62
    ld bc, $e8ce                                  ; $6409: $01 $ce $e8
    sub b                                         ; $640c: $90
    xor d                                         ; $640d: $aa
    ccf                                           ; $640e: $3f
    ld [$0344], a                                 ; $640f: $ea $44 $03
    ld b, l                                       ; $6412: $45
    cp a                                          ; $6413: $bf
    pop hl                                        ; $6414: $e1
    ld l, h                                       ; $6415: $6c
    ld l, a                                       ; $6416: $6f
    ld l, [hl]                                    ; $6417: $6e
    inc de                                        ; $6418: $13
    ld [hl], $05                                  ; $6419: $36 $05

jr_06f_641b:
    rst $20                                       ; $641b: $e7
    nop                                           ; $641c: $00
    ld bc, $35c6                                  ; $641d: $01 $c6 $35
    ld bc, $53c7                                  ; $6420: $01 $c7 $53
    ld a, [bc]                                    ; $6423: $0a
    rst $38                                       ; $6424: $ff
    call nz, $bf6c                                ; $6425: $c4 $6c $bf
    and a                                         ; $6428: $a7
    add b                                         ; $6429: $80
    pop bc                                        ; $642a: $c1
    ld l, [hl]                                    ; $642b: $6e
    ld l, a                                       ; $642c: $6f
    pop bc                                        ; $642d: $c1
    ldh [rLYC], a                                 ; $642e: $e0 $45
    ld [bc], a                                    ; $6430: $02
    ld h, a                                       ; $6431: $67
    ld h, b                                       ; $6432: $60
    add b                                         ; $6433: $80
    ld bc, $92d2                                  ; $6434: $01 $d2 $92

Jump_06f_6437:
    inc b                                         ; $6437: $04
    inc a                                         ; $6438: $3c
    and a                                         ; $6439: $a7
    push bc                                       ; $643a: $c5
    add hl, hl                                    ; $643b: $29
    ret nz                                        ; $643c: $c0

    and b                                         ; $643d: $a0
    ld a, [hl]                                    ; $643e: $7e
    ldh [$c1], a                                  ; $643f: $e0 $c1
    pop hl                                        ; $6441: $e1
    rrca                                          ; $6442: $0f
    add b                                         ; $6443: $80
    ld [hl-], a                                   ; $6444: $32
    jp nz, $cf01                                  ; $6445: $c2 $01 $cf

    call z, Call_000_3c84                         ; $6448: $cc $84 $3c
    and [hl]                                      ; $644b: $a6
    push bc                                       ; $644c: $c5
    add hl, hl                                    ; $644d: $29
    adc $85                                       ; $644e: $ce $85
    rst $10                                       ; $6450: $d7
    add d                                         ; $6451: $82
    sbc c                                         ; $6452: $99
    ld d, l                                       ; $6453: $55
    sbc c                                         ; $6454: $99
    ld b, c                                       ; $6455: $41
    add b                                         ; $6456: $80
    dec d                                         ; $6457: $15
    ld bc, $15ca                                  ; $6458: $01 $ca $15
    cpl                                           ; $645b: $2f
    add b                                         ; $645c: $80
    sbc c                                         ; $645d: $99
    ld [$b021], a                                 ; $645e: $ea $21 $b0
    ccf                                           ; $6461: $3f
    ld c, b                                       ; $6462: $48
    add h                                         ; $6463: $84
    dec bc                                        ; $6464: $0b
    ld c, [hl]                                    ; $6465: $4e
    add h                                         ; $6466: $84
    add [hl]                                      ; $6467: $86
    jp nz, $4503                                  ; $6468: $c2 $03 $45

    cp a                                          ; $646b: $bf
    ld h, b                                       ; $646c: $60
    ld b, e                                       ; $646d: $43
    cp c                                          ; $646e: $b9
    ld b, l                                       ; $646f: $45
    ld a, $42                                     ; $6470: $3e $42
    ld a, [hl-]                                   ; $6472: $3a
    ld h, b                                       ; $6473: $60
    ccf                                           ; $6474: $3f
    ld b, l                                       ; $6475: $45
    ccf                                           ; $6476: $3f
    pop af                                        ; $6477: $f1
    pop hl                                        ; $6478: $e1
    inc bc                                        ; $6479: $03
    add b                                         ; $647a: $80
    ld a, e                                       ; $647b: $7b
    add h                                         ; $647c: $84
    ccf                                           ; $647d: $3f
    add sp, -$02                                  ; $647e: $e8 $fe
    xor d                                         ; $6480: $aa
    ld b, [hl]                                    ; $6481: $46
    inc hl                                        ; $6482: $23
    ld a, b                                       ; $6483: $78
    and b                                         ; $6484: $a0
    ld b, e                                       ; $6485: $43
    ld b, b                                       ; $6486: $40
    ret z                                         ; $6487: $c8

    and d                                         ; $6488: $a2
    dec a                                         ; $6489: $3d
    ld bc, $7c37                                  ; $648a: $01 $37 $7c
    add c                                         ; $648d: $81
    ld a, [c]                                     ; $648e: $f2
    db $e3                                        ; $648f: $e3
    pop af                                        ; $6490: $f1
    ld [c], a                                     ; $6491: $e2
    inc h                                         ; $6492: $24
    ldh [$7e], a                                  ; $6493: $e0 $7e
    jr z, jr_06f_641b                             ; $6495: $28 $84

    ld [$65c3], sp                                ; $6497: $08 $c3 $65
    ld c, [hl]                                    ; $649a: $4e
    ld a, b                                       ; $649b: $78
    add b                                         ; $649c: $80
    ld [$4546], sp                                ; $649d: $08 $46 $45
    dec b                                         ; $64a0: $05
    ld b, h                                       ; $64a1: $44
    ld bc, $3b41                                  ; $64a2: $01 $41 $3b
    ld [hl], $43                                  ; $64a5: $36 $43
    ld b, $f4                                     ; $64a7: $06 $f4
    inc hl                                        ; $64a9: $23
    jr c, jr_06f_64f1                             ; $64aa: $38 $45

    ld h, h                                       ; $64ac: $64
    and b                                         ; $64ad: $a0
    ld a, [hl]                                    ; $64ae: $7e
    daa                                           ; $64af: $27
    add h                                         ; $64b0: $84
    rlca                                          ; $64b1: $07
    inc b                                         ; $64b2: $04
    inc h                                         ; $64b3: $24
    or a                                          ; $64b4: $b7
    add d                                         ; $64b5: $82
    add [hl]                                      ; $64b6: $86
    ld a, c                                       ; $64b7: $79
    add b                                         ; $64b8: $80
    ld b, l                                       ; $64b9: $45
    ccf                                           ; $64ba: $3f
    inc b                                         ; $64bb: $04
    add b                                         ; $64bc: $80
    ld a, h                                       ; $64bd: $7c
    ldh [$c3], a                                  ; $64be: $e0 $c3
    db $e4                                        ; $64c0: $e4
    ld hl, sp-$20                                 ; $64c1: $f8 $e0
    jr c, jr_06f_64c5                             ; $64c3: $38 $00

jr_06f_64c5:
    ldh a, [$e0]                                  ; $64c5: $f0 $e0
    add hl, sp                                    ; $64c7: $39
    ldh [$e4], a                                  ; $64c8: $e0 $e4
    add e                                         ; $64ca: $83
    add b                                         ; $64cb: $80
    and $ee                                       ; $64cc: $e6 $ee
    xor b                                         ; $64ce: $a8
    ei                                            ; $64cf: $fb
    ld h, b                                       ; $64d0: $60
    ld sp, hl                                     ; $64d1: $f9
    and d                                         ; $64d2: $a2
    inc bc                                        ; $64d3: $03
    ld h, b                                       ; $64d4: $60
    ld a, [hl-]                                   ; $64d5: $3a
    nop                                           ; $64d6: $00
    pop hl                                        ; $64d7: $e1
    ld b, [hl]                                    ; $64d8: $46
    rst $38                                       ; $64d9: $ff
    ldh [rLYC], a                                 ; $64da: $e0 $45
    ld b, e                                       ; $64dc: $43
    ld b, e                                       ; $64dd: $43
    cp c                                          ; $64de: $b9
    ld b, b                                       ; $64df: $40
    ld b, $e1                                     ; $64e0: $06 $e1
    dec de                                        ; $64e2: $1b
    ld b, e                                       ; $64e3: $43
    ld b, e                                       ; $64e4: $43
    xor c                                         ; $64e5: $a9
    add b                                         ; $64e6: $80
    ld b, [hl]                                    ; $64e7: $46
    ld b, [hl]                                    ; $64e8: $46
    nop                                           ; $64e9: $00
    db $ed                                        ; $64ea: $ed
    inc b                                         ; $64eb: $04
    dec l                                         ; $64ec: $2d
    cp c                                          ; $64ed: $b9
    rst $00                                       ; $64ee: $c7
    nop                                           ; $64ef: $00
    ret nz                                        ; $64f0: $c0

jr_06f_64f1:
    ld b, d                                       ; $64f1: $42
    db $fc                                        ; $64f2: $fc
    xor $fa                                       ; $64f3: $ee $fa
    add c                                         ; $64f5: $81
    cp h                                          ; $64f6: $bc
    ld l, c                                       ; $64f7: $69
    inc b                                         ; $64f8: $04
    inc l                                         ; $64f9: $2c
    cp c                                          ; $64fa: $b9
    set 6, a                                      ; $64fb: $cb $f7
    di                                            ; $64fd: $f3
    ld c, [hl]                                    ; $64fe: $4e
    ld h, [hl]                                    ; $64ff: $66
    ld h, b                                       ; $6500: $60
    ret nz                                        ; $6501: $c0

    db $e3                                        ; $6502: $e3
    cp a                                          ; $6503: $bf
    add hl, hl                                    ; $6504: $29
    cp c                                          ; $6505: $b9
    jp z, $f6f8                                   ; $6506: $ca $f8 $f6

    ld a, a                                       ; $6509: $7f
    daa                                           ; $650a: $27
    sub a                                         ; $650b: $97
    sbc b                                         ; $650c: $98
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    pop bc                                        ; $6510: $c1
    nop                                           ; $6511: $00
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    ld bc, $fe80                                  ; $651e: $01 $80 $fe
    ldh [rIE], a                                  ; $6521: $e0 $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    add sp, $00                                   ; $6527: $e8 $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    ld [bc], a                                    ; $652b: $02
    nop                                           ; $652c: $00
    ld [hl+], a                                   ; $652d: $22
    inc de                                        ; $652e: $13
    ld [bc], a                                    ; $652f: $02
    ld bc, $1423                                  ; $6530: $01 $23 $14
    ld [bc], a                                    ; $6533: $02
    ld [bc], a                                    ; $6534: $02
    inc hl                                        ; $6535: $23
    add hl, de                                    ; $6536: $19
    ld [bc], a                                    ; $6537: $02
    inc bc                                        ; $6538: $03
    inc h                                         ; $6539: $24
    ld a, [de]                                    ; $653a: $1a
    ld [bc], a                                    ; $653b: $02
    inc b                                         ; $653c: $04
    inc hl                                        ; $653d: $23
    dec de                                        ; $653e: $1b
    ld [bc], a                                    ; $653f: $02
    dec b                                         ; $6540: $05
    inc hl                                        ; $6541: $23
    rra                                           ; $6542: $1f
    ld [bc], a                                    ; $6543: $02
    ld b, $21                                     ; $6544: $06 $21
    inc h                                         ; $6546: $24
    ld [bc], a                                    ; $6547: $02
    rlca                                          ; $6548: $07
    dec de                                        ; $6549: $1b
    dec h                                         ; $654a: $25
    ld [bc], a                                    ; $654b: $02
    ld [$2d12], sp                                ; $654c: $08 $12 $2d
    ld [bc], a                                    ; $654f: $02
    add hl, bc                                    ; $6550: $09
    inc de                                        ; $6551: $13
    ld l, $02                                     ; $6552: $2e $02
    ld a, [bc]                                    ; $6554: $0a
    rla                                           ; $6555: $17
    ld [hl-], a                                   ; $6556: $32
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    ld h, d                                       ; $655a: $62
    ld h, l                                       ; $655b: $65
    or h                                          ; $655c: $b4
    ld l, c                                       ; $655d: $69
    ld a, [hl-]                                   ; $655e: $3a
    ld [hl], c                                    ; $655f: $71
    ld d, l                                       ; $6560: $55
    ld [hl], c                                    ; $6561: $71
    ld bc, $ff0c                                  ; $6562: $01 $0c $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    jr nc, @+$01                                  ; $6572: $30 $ff

    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    ld sp, hl                                     ; $6579: $f9
    ld hl, sp+$2c                                 ; $657a: $f8 $2c
    inc l                                         ; $657c: $2c
    call c, $f6ff                                 ; $657d: $dc $ff $f6
    push af                                       ; $6580: $f5
    sbc a                                         ; $6581: $9f
    ld l, h                                       ; $6582: $6c
    ld l, h                                       ; $6583: $6c
    ld c, h                                       ; $6584: $4c
    ld c, h                                       ; $6585: $4c
    ld c, h                                       ; $6586: $4c
    reti                                          ; $6587: $d9


    rst $38                                       ; $6588: $ff
    pop bc                                        ; $6589: $c1
    rst $30                                       ; $658a: $f7
    ld a, [bc]                                    ; $658b: $0a
    or e                                          ; $658c: $b3
    ld a, [bc]                                    ; $658d: $0a
    ld a, [hl+]                                   ; $658e: $2a
    cp a                                          ; $658f: $bf
    rst $38                                       ; $6590: $ff
    ld b, a                                       ; $6591: $47
    or $4c                                        ; $6592: $f6 $4c
    ld a, [bc]                                    ; $6594: $0a
    rst $38                                       ; $6595: $ff
    ldh [rWY], a                                  ; $6596: $e0 $4a
    ld bc, $d56c                                  ; $6598: $01 $6c $d5
    rst $38                                       ; $659b: $ff
    ld b, d                                       ; $659c: $42
    db $f4                                        ; $659d: $f4
    ret nz                                        ; $659e: $c0

    db $e4                                        ; $659f: $e4
    ld a, a                                       ; $65a0: $7f
    rst $38                                       ; $65a1: $ff
    inc b                                         ; $65a2: $04
    di                                            ; $65a3: $f3
    ld b, d                                       ; $65a4: $42
    ldh [$7f], a                                  ; $65a5: $e0 $7f
    pop hl                                        ; $65a7: $e1
    ld bc, $d40b                                  ; $65a8: $01 $0b $d4
    rst $38                                       ; $65ab: $ff
    inc b                                         ; $65ac: $04
    db $f4                                        ; $65ad: $f4
    cp $e4                                        ; $65ae: $fe $e4
    ccf                                           ; $65b0: $3f
    rst $38                                       ; $65b1: $ff
    pop af                                        ; $65b2: $f1
    ldh a, [rDIV]                                 ; $65b3: $f0 $04
    ld [c], a                                     ; $65b5: $e2
    add c                                         ; $65b6: $81
    ld [c], a                                     ; $65b7: $e2
    add hl, hl                                    ; $65b8: $29
    dec hl                                        ; $65b9: $2b
    ld b, b                                       ; $65ba: $40
    rst $38                                       ; $65bb: $ff
    inc b                                         ; $65bc: $04
    di                                            ; $65bd: $f3
    ld c, d                                       ; $65be: $4a
    pop bc                                        ; $65bf: $c1
    pop bc                                        ; $65c0: $c1
    dec hl                                        ; $65c1: $2b
    ret nz                                        ; $65c2: $c0

    rst $38                                       ; $65c3: $ff
    jp z, $c2b2                                   ; $65c4: $ca $b2 $c2

    ld b, d                                       ; $65c7: $42
    push hl                                       ; $65c8: $e5
    ld l, e                                       ; $65c9: $6b
    ret nz                                        ; $65ca: $c0

    rst $38                                       ; $65cb: $ff
    adc e                                         ; $65cc: $8b
    call z, $c00f                                 ; $65cd: $cc $0f $c0
    call nz, $4ac2                                ; $65d0: $c4 $c2 $4a
    ld c, d                                       ; $65d3: $4a
    adc $7f                                       ; $65d4: $ce $7f
    pop hl                                        ; $65d6: $e1
    ld a, [hl+]                                   ; $65d7: $2a
    ld c, e                                       ; $65d8: $4b
    ld l, e                                       ; $65d9: $6b
    ld a, a                                       ; $65da: $7f
    cp a                                          ; $65db: $bf
    adc e                                         ; $65dc: $8b
    ret                                           ; $65dd: $c9


    dec bc                                        ; $65de: $0b
    ld l, e                                       ; $65df: $6b
    db $f4                                        ; $65e0: $f4
    call nz, $c1c3                                ; $65e1: $c4 $c3 $c1
    ldh [$2a], a                                  ; $65e4: $e0 $2a
    ret nz                                        ; $65e6: $c0

    pop hl                                        ; $65e7: $e1
    ld a, [hl+]                                   ; $65e8: $2a
    ld a, [bc]                                    ; $65e9: $0a
    ld c, h                                       ; $65ea: $4c
    ld l, h                                       ; $65eb: $6c
    ld a, c                                       ; $65ec: $79
    ld c, h                                       ; $65ed: $4c
    dec sp                                        ; $65ee: $3b
    cp a                                          ; $65ef: $bf
    ld c, l                                       ; $65f0: $4d
    call nz, Call_000_0b2b                        ; $65f1: $c4 $2b $0b
    dec bc                                        ; $65f4: $0b
    inc l                                         ; $65f5: $2c
    call nz, $fbc1                                ; $65f6: $c4 $c1 $fb
    ld a, [hl+]                                   ; $65f9: $2a
    ld a, [hl+]                                   ; $65fa: $2a
    ret nz                                        ; $65fb: $c0

    db $e4                                        ; $65fc: $e4
    ld a, [bc]                                    ; $65fd: $0a
    ld a, [bc]                                    ; $65fe: $0a
    ld c, e                                       ; $65ff: $4b
    ld a, [bc]                                    ; $6600: $0a
    ld a, [bc]                                    ; $6601: $0a
    ld [hl], h                                    ; $6602: $74
    ld a, [hl-]                                   ; $6603: $3a
    cp l                                          ; $6604: $bd
    and c                                         ; $6605: $a1
    db $e4                                        ; $6606: $e4
    inc l                                         ; $6607: $2c
    jp nz, Jump_06f_4be0                          ; $6608: $c2 $e0 $4b

    ld c, e                                       ; $660b: $4b
    inc l                                         ; $660c: $2c
    ret z                                         ; $660d: $c8

    and b                                         ; $660e: $a0
    inc l                                         ; $660f: $2c
    ld b, h                                       ; $6610: $44
    ldh [$82], a                                  ; $6611: $e0 $82
    db $e4                                        ; $6613: $e4
    ld l, d                                       ; $6614: $6a
    dec bc                                        ; $6615: $0b
    dec sp                                        ; $6616: $3b
    pop hl                                        ; $6617: $e1
    ld l, d                                       ; $6618: $6a
    ld a, [hl-]                                   ; $6619: $3a
    cp e                                          ; $661a: $bb
    reti                                          ; $661b: $d9


    add h                                         ; $661c: $84
    ccf                                           ; $661d: $3f
    inc l                                         ; $661e: $2c
    dec hl                                        ; $661f: $2b
    ld a, [bc]                                    ; $6620: $0a
    ld c, e                                       ; $6621: $4b
    dec c                                         ; $6622: $0d
    dec bc                                        ; $6623: $0b
    ld sp, hl                                     ; $6624: $f9
    pop hl                                        ; $6625: $e1
    ret nz                                        ; $6626: $c0

    pop hl                                        ; $6627: $e1
    db $f4                                        ; $6628: $f4
    db $fc                                        ; $6629: $fc
    push hl                                       ; $662a: $e5
    db $fd                                        ; $662b: $fd
    ret nz                                        ; $662c: $c0

    ld a, [hl+]                                   ; $662d: $2a
    ld a, [hl-]                                   ; $662e: $3a
    cp e                                          ; $662f: $bb
    ld l, h                                       ; $6630: $6c
    ld l, h                                       ; $6631: $6c
    dec c                                         ; $6632: $0d
    ld l, e                                       ; $6633: $6b
    ld b, [hl]                                    ; $6634: $46
    ret nz                                        ; $6635: $c0

    ld [c], a                                     ; $6636: $e2
    ld l, e                                       ; $6637: $6b
    ld c, e                                       ; $6638: $4b
    ret nz                                        ; $6639: $c0

    pop hl                                        ; $663a: $e1
    ld b, l                                       ; $663b: $45
    pop bc                                        ; $663c: $c1
    cp a                                          ; $663d: $bf
    rst $20                                       ; $663e: $e7
    ld a, [hl+]                                   ; $663f: $2a
    cp $a0                                        ; $6640: $fe $a0
    cp h                                          ; $6642: $bc
    ret nz                                        ; $6643: $c0

    pop hl                                        ; $6644: $e1
    ld a, d                                       ; $6645: $7a
    ret c                                         ; $6646: $d8

    ld l, h                                       ; $6647: $6c
    dec c                                         ; $6648: $0d
    dec c                                         ; $6649: $0d
    ld l, e                                       ; $664a: $6b
    dec d                                         ; $664b: $15
    add e                                         ; $664c: $83
    inc l                                         ; $664d: $2c
    rra                                           ; $664e: $1f
    ld l, e                                       ; $664f: $6b
    dec bc                                        ; $6650: $0b
    ld c, e                                       ; $6651: $4b
    inc c                                         ; $6652: $0c
    inc c                                         ; $6653: $0c
    ret nz                                        ; $6654: $c0

    ld [$c17c], a                                 ; $6655: $ea $7c $c1
    cp c                                          ; $6658: $b9
    sbc h                                         ; $6659: $9c
    inc bc                                        ; $665a: $03
    inc l                                         ; $665b: $2c
    dec c                                         ; $665c: $0d
    push de                                       ; $665d: $d5
    ld h, l                                       ; $665e: $65
    sbc b                                         ; $665f: $98
    jp nz, $ec40                                  ; $6660: $c2 $40 $ec

    ccf                                           ; $6663: $3f
    ldh [$78], a                                  ; $6664: $e0 $78
    add c                                         ; $6666: $81
    ld a, [$0cb8]                                 ; $6667: $fa $b8 $0c
    ld h, e                                       ; $666a: $63
    ret nz                                        ; $666b: $c0

    ld e, a                                       ; $666c: $5f
    ret                                           ; $666d: $c9


    inc l                                         ; $666e: $2c
    inc c                                         ; $666f: $0c
    add c                                         ; $6670: $81
    ld [$e282], a                                 ; $6671: $ea $82 $e2
    ld a, c                                       ; $6674: $79
    sbc b                                         ; $6675: $98
    sbc e                                         ; $6676: $9b
    ld h, c                                       ; $6677: $61
    sub b                                         ; $6678: $90
    ld d, c                                       ; $6679: $51
    add e                                         ; $667a: $83
    sub d                                         ; $667b: $92
    ld h, c                                       ; $667c: $61
    pop de                                        ; $667d: $d1
    ld h, d                                       ; $667e: $62
    pop bc                                        ; $667f: $c1
    jp z, Jump_000_382b                           ; $6680: $ca $2b $38

    and b                                         ; $6683: $a0
    ret nz                                        ; $6684: $c0

    ldh [$0a], a                                  ; $6685: $e0 $0a
    or $1f                                        ; $6687: $f6 $1f
    halt                                          ; $6689: $76
    dec hl                                        ; $668a: $2b
    dec hl                                        ; $668b: $2b
    add $a4                                       ; $668c: $c6 $a4
    dec bc                                        ; $668e: $0b
    ld l, e                                       ; $668f: $6b
    dec hl                                        ; $6690: $2b
    ld a, [bc]                                    ; $6691: $0a
    rlca                                          ; $6692: $07
    dec bc                                        ; $6693: $0b
    ld c, h                                       ; $6694: $4c
    ld c, h                                       ; $6695: $4c
    cp h                                          ; $6696: $bc
    and b                                         ; $6697: $a0
    cp [hl]                                       ; $6698: $be
    ret z                                         ; $6699: $c8

    ld a, c                                       ; $669a: $79
    add h                                         ; $669b: $84
    ret nz                                        ; $669c: $c0

    or $83                                        ; $669d: $f6 $83
    ret nz                                        ; $669f: $c0

    db $ec                                        ; $66a0: $ec
    ret nz                                        ; $66a1: $c0

jr_06f_66a2:
    ldh [rHDMA5], a                               ; $66a2: $e0 $55
    ld h, d                                       ; $66a4: $62
    ld a, [hl+]                                   ; $66a5: $2a
    dec hl                                        ; $66a6: $2b
    ei                                            ; $66a7: $fb
    ld [c], a                                     ; $66a8: $e2
    dec bc                                        ; $66a9: $0b
    dec bc                                        ; $66aa: $0b
    dec hl                                        ; $66ab: $2b
    inc sp                                        ; $66ac: $33
    dec hl                                        ; $66ad: $2b
    dec bc                                        ; $66ae: $0b
    ret nz                                        ; $66af: $c0

    and c                                         ; $66b0: $a1
    ld a, $a0                                     ; $66b1: $3e $a0
    ld l, d                                       ; $66b3: $6a
    ld a, [hl+]                                   ; $66b4: $2a
    pop bc                                        ; $66b5: $c1
    and b                                         ; $66b6: $a0
    dec [hl]                                      ; $66b7: $35
    and d                                         ; $66b8: $a2
    or b                                          ; $66b9: $b0
    ld a, [hl]                                    ; $66ba: $7e
    or h                                          ; $66bb: $b4
    ld b, h                                       ; $66bc: $44
    ret nz                                        ; $66bd: $c0

    jp nz, $55c1                                  ; $66be: $c2 $c1 $55

    ld h, b                                       ; $66c1: $60
    ld l, d                                       ; $66c2: $6a
    ld l, d                                       ; $66c3: $6a
    ret nc                                        ; $66c4: $d0

    ld h, e                                       ; $66c5: $63
    dec hl                                        ; $66c6: $2b
    ld e, a                                       ; $66c7: $5f
    dec c                                         ; $66c8: $0d
    ld c, e                                       ; $66c9: $4b
    ld a, [bc]                                    ; $66ca: $0a
    ld c, e                                       ; $66cb: $4b
    dec bc                                        ; $66cc: $0b
    db $fd                                        ; $66cd: $fd
    and h                                         ; $66ce: $a4
    ld a, [hl+]                                   ; $66cf: $2a
    ld [hl], a                                    ; $66d0: $77
    and b                                         ; $66d1: $a0
    inc l                                         ; $66d2: $2c
    add c                                         ; $66d3: $81
    db $e3                                        ; $66d4: $e3

jr_06f_66d5:
    ld a, $b4                                     ; $66d5: $3e $b4
    inc l                                         ; $66d7: $2c
    dec hl                                        ; $66d8: $2b
    add c                                         ; $66d9: $81
    ld [c], a                                     ; $66da: $e2
    ld c, h                                       ; $66db: $4c
    pop bc                                        ; $66dc: $c1
    ldh [$bf], a                                  ; $66dd: $e0 $bf
    db $e4                                        ; $66df: $e4
    jr nz, jr_06f_66a2                            ; $66e0: $20 $c0

    ldh [rIE], a                                  ; $66e2: $e0 $ff
    ldh [$bd], a                                  ; $66e4: $e0 $bd
    xor b                                         ; $66e6: $a8
    ld sp, hl                                     ; $66e7: $f9
    add d                                         ; $66e8: $82
    rst $38                                       ; $66e9: $ff
    sub l                                         ; $66ea: $95
    inc l                                         ; $66eb: $2c
    ld bc, $81e2                                  ; $66ec: $01 $e2 $81
    ld [c], a                                     ; $66ef: $e2
    rst $30                                       ; $66f0: $f7
    ld l, d                                       ; $66f1: $6a
    ld a, [hl+]                                   ; $66f2: $2a
    ld l, e                                       ; $66f3: $6b
    rrca                                          ; $66f4: $0f
    add d                                         ; $66f5: $82
    ld a, [bc]                                    ; $66f6: $0a
    ld c, e                                       ; $66f7: $4b
    ld l, e                                       ; $66f8: $6b
    ld l, e                                       ; $66f9: $6b
    sbc b                                         ; $66fa: $98
    ret nz                                        ; $66fb: $c0

    pop hl                                        ; $66fc: $e1
    jp nz, $0042                                  ; $66fd: $c2 $42 $00

    db $e3                                        ; $6700: $e3
    ld a, [hl+]                                   ; $6701: $2a
    ld c, e                                       ; $6702: $4b
    cp a                                          ; $6703: $bf
    sub [hl]                                      ; $6704: $96
    and l                                         ; $6705: $a5
    add d                                         ; $6706: $82
    ld l, h                                       ; $6707: $6c
    ld d, d                                       ; $6708: $52
    pop bc                                        ; $6709: $c1
    ld [c], a                                     ; $670a: $e2
    ld c, e                                       ; $670b: $4b
    sub d                                         ; $670c: $92
    add c                                         ; $670d: $81
    add c                                         ; $670e: $81
    pop hl                                        ; $670f: $e1
    dec bc                                        ; $6710: $0b
    dec c                                         ; $6711: $0d
    jp $b90b                                      ; $6712: $c3 $0b $b9


    ldh [$0d], a                                  ; $6715: $e0 $0d
    ld a, [bc]                                    ; $6717: $0a
    ld [hl], l                                    ; $6718: $75
    ldh [$2a], a                                  ; $6719: $e0 $2a
    ld a, [hl+]                                   ; $671b: $2a
    ld e, d                                       ; $671c: $5a
    ld e, d                                       ; $671d: $5a
    db $10                                        ; $671e: $10
    add b                                         ; $671f: $80
    ld b, c                                       ; $6720: $41
    pop hl                                        ; $6721: $e1
    sub a                                         ; $6722: $97
    add c                                         ; $6723: $81
    ld a, b                                       ; $6724: $78
    db $fc                                        ; $6725: $fc
    ret nz                                        ; $6726: $c0

    ld b, c                                       ; $6727: $41
    pop hl                                        ; $6728: $e1
    ld c, c                                       ; $6729: $49
    add c                                         ; $672a: $81
    ld a, [hl+]                                   ; $672b: $2a
    dec bc                                        ; $672c: $0b
    dec hl                                        ; $672d: $2b
    ld c, d                                       ; $672e: $4a
    db $f4                                        ; $672f: $f4
    add b                                         ; $6730: $80
    add b                                         ; $6731: $80
    ld l, h                                       ; $6732: $6c
    and b                                         ; $6733: $a0
    ld l, [hl]                                    ; $6734: $6e
    and b                                         ; $6735: $a0
    ld a, d                                       ; $6736: $7a
    jr c, jr_06f_66d5                             ; $6737: $38 $9c

    ld hl, $80c7                                  ; $6739: $21 $c7 $80
    jp nz, $c1c2                                  ; $673c: $c2 $c2 $c1

    pop hl                                        ; $673f: $e1
    dec hl                                        ; $6740: $2b
    inc bc                                        ; $6741: $03
    ld c, e                                       ; $6742: $4b
    ld c, e                                       ; $6743: $4b
    dec a                                         ; $6744: $3d
    ldh [$85], a                                  ; $6745: $e0 $85
    pop bc                                        ; $6747: $c1
    add l                                         ; $6748: $85

jr_06f_6749:
    ld b, c                                       ; $6749: $41
    rlca                                          ; $674a: $07
    add b                                         ; $674b: $80
    inc b                                         ; $674c: $04
    sbc e                                         ; $674d: $9b
    dec c                                         ; $674e: $0d
    add b                                         ; $674f: $80
    sub c                                         ; $6750: $91
    dec hl                                        ; $6751: $2b
    rst $00                                       ; $6752: $c7
    add b                                         ; $6753: $80
    sub a                                         ; $6754: $97
    ld h, c                                       ; $6755: $61
    ld e, c                                       ; $6756: $59
    add b                                         ; $6757: $80
    ld l, d                                       ; $6758: $6a
    ld d, b                                       ; $6759: $50
    ld h, b                                       ; $675a: $60
    jp nz, Jump_06f_4ac0                          ; $675b: $c2 $c0 $4a

    ld h, b                                       ; $675e: $60
    scf                                           ; $675f: $37
    ret nz                                        ; $6760: $c0

    add b                                         ; $6761: $80
    ld h, b                                       ; $6762: $60
    ld c, c                                       ; $6763: $49
    and $38                                       ; $6764: $e6 $38
    jr nz, jr_06f_6749                            ; $6766: $20 $e1

    ld d, $6b                                     ; $6768: $16 $6b
    ld l, e                                       ; $676a: $6b
    ret nz                                        ; $676b: $c0

    ldh [$32], a                                  ; $676c: $e0 $32
    rlca                                          ; $676e: $07
    pop bc                                        ; $676f: $c1
    dec hl                                        ; $6770: $2b
    ret nz                                        ; $6771: $c0

    ld [c], a                                     ; $6772: $e2
    add c                                         ; $6773: $81
    ldh [$0a], a                                  ; $6774: $e0 $0a
    ld l, e                                       ; $6776: $6b
    ld c, h                                       ; $6777: $4c
    add b                                         ; $6778: $80
    add hl, bc                                    ; $6779: $09
    add c                                         ; $677a: $81
    inc l                                         ; $677b: $2c
    ld b, a                                       ; $677c: $47
    pop hl                                        ; $677d: $e1
    rst $30                                       ; $677e: $f7
    ld [hl+], a                                   ; $677f: $22
    ld l, h                                       ; $6780: $6c
    dec hl                                        ; $6781: $2b
    inc a                                         ; $6782: $3c
    ld d, [hl]                                    ; $6783: $56
    inc l                                         ; $6784: $2c
    ld d, c                                       ; $6785: $51
    ldh [$0e], a                                  ; $6786: $e0 $0e
    and c                                         ; $6788: $a1
    jr jr_06f_67df                                ; $6789: $18 $54

    ld h, d                                       ; $678b: $62
    ld b, c                                       ; $678c: $41
    ld [c], a                                     ; $678d: $e2
    ld bc, $0ac0                                  ; $678e: $01 $c0 $0a
    ld c, d                                       ; $6791: $4a
    jp z, Jump_06f_4660                           ; $6792: $ca $60 $46

    ld h, c                                       ; $6795: $61
    push bc                                       ; $6796: $c5
    ld b, b                                       ; $6797: $40
    and $5f                                       ; $6798: $e6 $5f
    pop hl                                        ; $679a: $e1
    dec c                                         ; $679b: $0d
    dec hl                                        ; $679c: $2b
    add c                                         ; $679d: $81
    rst $10                                       ; $679e: $d7
    ld d, e                                       ; $679f: $53
    ret nz                                        ; $67a0: $c0

    ld l, h                                       ; $67a1: $6c
    inc c                                         ; $67a2: $0c
    ld l, h                                       ; $67a3: $6c
    ret nz                                        ; $67a4: $c0

    ret nz                                        ; $67a5: $c0

    and $fe                                       ; $67a6: $e6 $fe
    ld h, b                                       ; $67a8: $60
    ld a, c                                       ; $67a9: $79
    ret nz                                        ; $67aa: $c0

    ld c, l                                       ; $67ab: $4d
    add b                                         ; $67ac: $80
    ld [bc], a                                    ; $67ad: $02
    ld h, c                                       ; $67ae: $61
    inc b                                         ; $67af: $04
    ld hl, $2b4c                                  ; $67b0: $21 $4c $2b
    daa                                           ; $67b3: $27
    dec c                                         ; $67b4: $0d
    dec c                                         ; $67b5: $0d
    dec c                                         ; $67b6: $0d
    ld bc, $6273                                  ; $67b7: $01 $73 $62
    ld bc, $d36c                                  ; $67ba: $01 $6c $d3
    and b                                         ; $67bd: $a0
    sbc a                                         ; $67be: $9f
    jr nz, jr_06f_67fa                            ; $67bf: $20 $39

    ld l, e                                       ; $67c1: $6b
    ld b, a                                       ; $67c2: $47
    ret nz                                        ; $67c3: $c0

    ccf                                           ; $67c4: $3f
    and c                                         ; $67c5: $a1
    dec hl                                        ; $67c6: $2b
    dec bc                                        ; $67c7: $0b
    dec c                                         ; $67c8: $0d
    add h                                         ; $67c9: $84
    and [hl]                                      ; $67ca: $a6
    ld c, e                                       ; $67cb: $4b
    and e                                         ; $67cc: $a3
    ld [hl], c                                    ; $67cd: $71
    ld l, h                                       ; $67ce: $6c
    ret nz                                        ; $67cf: $c0

    ldh [$81], a                                  ; $67d0: $e0 $81
    ld a, [c]                                     ; $67d2: $f2
    rra                                           ; $67d3: $1f
    jr nz, jr_06f_6821                            ; $67d4: $20 $4b

    ld c, e                                       ; $67d6: $4b
    ld l, e                                       ; $67d7: $6b
    cp $e0                                        ; $67d8: $fe $e0
    ld c, $e4                                     ; $67da: $0e $e4
    and b                                         ; $67dc: $a0
    ld c, h                                       ; $67dd: $4c
    dec bc                                        ; $67de: $0b

jr_06f_67df:
    ld a, [hl+]                                   ; $67df: $2a
    jp $05a0                                      ; $67e0: $c3 $a0 $05


    and c                                         ; $67e3: $a1
    ret nz                                        ; $67e4: $c0

    ldh [rLCDC], a                                ; $67e5: $e0 $40
    pop hl                                        ; $67e7: $e1
    nop                                           ; $67e8: $00
    inc bc                                        ; $67e9: $03
    and e                                         ; $67ea: $a3
    adc h                                         ; $67eb: $8c

jr_06f_67ec:
    add c                                         ; $67ec: $81
    pop hl                                        ; $67ed: $e1
    add d                                         ; $67ee: $82
    ld c, b                                       ; $67ef: $48
    jp nc, $a059                                  ; $67f0: $d2 $59 $a0

    ld c, a                                       ; $67f3: $4f
    ld h, b                                       ; $67f4: $60
    ld d, e                                       ; $67f5: $53
    and b                                         ; $67f6: $a0
    adc $40                                       ; $67f7: $ce $40
    rst $18                                       ; $67f9: $df

jr_06f_67fa:
    dec hl                                        ; $67fa: $2b
    dec bc                                        ; $67fb: $0b
    ld c, e                                       ; $67fc: $4b
    dec hl                                        ; $67fd: $2b
    ld c, e                                       ; $67fe: $4b
    jp nz, $0d41                                  ; $67ff: $c2 $41 $0d

    dec bc                                        ; $6802: $0b
    ld [$a2ba], sp                                ; $6803: $08 $ba $a2
    cp a                                          ; $6806: $bf
    ld b, e                                       ; $6807: $43

jr_06f_6808:
    ld b, h                                       ; $6808: $44
    ld bc, $436c                                  ; $6809: $01 $6c $43
    di                                            ; $680c: $f3
    rla                                           ; $680d: $17
    ld b, b                                       ; $680e: $40
    sub d                                         ; $680f: $92
    pop hl                                        ; $6810: $e1
    add b                                         ; $6811: $80
    ld [c], a                                     ; $6812: $e2
    jr c, jr_06f_6890                             ; $6813: $38 $7b

    pop bc                                        ; $6815: $c1
    jp Jump_000_01e2                              ; $6816: $c3 $e2 $01


    ld h, b                                       ; $6819: $60
    dec c                                         ; $681a: $0d
    ld l, e                                       ; $681b: $6b
    ld c, e                                       ; $681c: $4b
    jp z, $be81                                   ; $681d: $ca $81 $be

    ld b, e                                       ; $6820: $43

jr_06f_6821:
    ldh [$8b], a                                  ; $6821: $e0 $8b
    add d                                         ; $6823: $82
    ld b, e                                       ; $6824: $43
    db $f4                                        ; $6825: $f4
    pop bc                                        ; $6826: $c1
    pop hl                                        ; $6827: $e1
    ld [de], a                                    ; $6828: $12
    ld b, b                                       ; $6829: $40
    ld a, [hl]                                    ; $682a: $7e
    pop hl                                        ; $682b: $e1
    ld l, h                                       ; $682c: $6c
    inc l                                         ; $682d: $2c
    inc c                                         ; $682e: $0c
    ld [hl+], a                                   ; $682f: $22
    ld [hl], a                                    ; $6830: $77
    pop hl                                        ; $6831: $e1
    dec c                                         ; $6832: $0d
    cp $e1                                        ; $6833: $fe $e1
    ld b, $a0                                     ; $6835: $06 $a0
    add d                                         ; $6837: $82
    pop hl                                        ; $6838: $e1
    ld l, d                                       ; $6839: $6a
    ret nz                                        ; $683a: $c0

    ld [hl+], a                                   ; $683b: $22
    inc h                                         ; $683c: $24
    ld c, b                                       ; $683d: $48
    ld b, b                                       ; $683e: $40
    and c                                         ; $683f: $a1
    dec c                                         ; $6840: $0d
    add d                                         ; $6841: $82
    ld [c], a                                     ; $6842: $e2
    cp a                                          ; $6843: $bf
    db $e4                                        ; $6844: $e4
    and e                                         ; $6845: $a3
    jr nz, jr_06f_6808                            ; $6846: $20 $c0

    db $e4                                        ; $6848: $e4
    rst $00                                       ; $6849: $c7
    add c                                         ; $684a: $81
    ld a, [bc]                                    ; $684b: $0a
    add [hl]                                      ; $684c: $86
    and c                                         ; $684d: $a1
    ld b, b                                       ; $684e: $40
    or l                                          ; $684f: $b5
    add c                                         ; $6850: $81
    ld a, [bc]                                    ; $6851: $0a
    and b                                         ; $6852: $a0
    adc b                                         ; $6853: $88
    dec [hl]                                      ; $6854: $35
    rrca                                          ; $6855: $0f
    pop hl                                        ; $6856: $e1
    push de                                       ; $6857: $d5
    ret nz                                        ; $6858: $c0

    ld a, [hl]                                    ; $6859: $7e
    pop hl                                        ; $685a: $e1
    ld l, e                                       ; $685b: $6b
    ld hl, $12a3                                  ; $685c: $21 $a3 $12
    or $c2                                        ; $685f: $f6 $c2
    ld l, e                                       ; $6861: $6b
    add c                                         ; $6862: $81
    jr nz, jr_06f_67ec                            ; $6863: $20 $87

    and d                                         ; $6865: $a2
    dec bc                                        ; $6866: $0b
    db $eb                                        ; $6867: $eb
    ld b, d                                       ; $6868: $42
    ld sp, hl                                     ; $6869: $f9
    nop                                           ; $686a: $00
    call nz, Call_000_0914                        ; $686b: $c4 $14 $09
    inc l                                         ; $686e: $2c
    sub $e1                                       ; $686f: $d6 $e1
    cp $e2                                        ; $6871: $fe $e2
    dec hl                                        ; $6873: $2b
    ld d, b                                       ; $6874: $50
    jr nz, jr_06f_687d                            ; $6875: $20 $06

    ld h, b                                       ; $6877: $60
    ld b, e                                       ; $6878: $43
    ld h, b                                       ; $6879: $60
    push bc                                       ; $687a: $c5
    pop hl                                        ; $687b: $e1
    ld b, e                                       ; $687c: $43

jr_06f_687d:
    ld a, [bc]                                    ; $687d: $0a
    ld a, [hl+]                                   ; $687e: $2a
    inc b                                         ; $687f: $04
    pop hl                                        ; $6880: $e1
    ld c, a                                       ; $6881: $4f
    ld b, b                                       ; $6882: $40
    ld h, $c1                                     ; $6883: $26 $c1
    cpl                                           ; $6885: $2f
    ld h, b                                       ; $6886: $60
    dec hl                                        ; $6887: $2b
    ld b, [hl]                                    ; $6888: $46
    inc [hl]                                      ; $6889: $34
    nop                                           ; $688a: $00
    rst $08                                       ; $688b: $cf
    jp $e37e                                      ; $688c: $c3 $7e $e3


    db $10                                        ; $688f: $10

jr_06f_6890:
    ld h, b                                       ; $6890: $60
    adc $80                                       ; $6891: $ce $80
    ld b, [hl]                                    ; $6893: $46
    jr nz, @+$58                                  ; $6894: $20 $56

    ld hl, $02cf                                  ; $6896: $21 $cf $02
    ld a, d                                       ; $6899: $7a
    ld h, d                                       ; $689a: $62
    sbc b                                         ; $689b: $98
    xor $e1                                       ; $689c: $ee $e1
    rst $30                                       ; $689e: $f7
    ld h, c                                       ; $689f: $61
    add a                                         ; $68a0: $87
    ld [hl-], a                                   ; $68a1: $32
    inc l                                         ; $68a2: $2c
    inc c                                         ; $68a3: $0c
    inc h                                         ; $68a4: $24
    add b                                         ; $68a5: $80
    nop                                           ; $68a6: $00
    pop hl                                        ; $68a7: $e1
    dec hl                                        ; $68a8: $2b
    ld b, e                                       ; $68a9: $43
    dec hl                                        ; $68aa: $2b
    ld l, e                                       ; $68ab: $6b
    add d                                         ; $68ac: $82
    add b                                         ; $68ad: $80
    ld b, h                                       ; $68ae: $44
    ret nz                                        ; $68af: $c0

    adc h                                         ; $68b0: $8c
    ld h, b                                       ; $68b1: $60
    ret nz                                        ; $68b2: $c0

    db $e3                                        ; $68b3: $e3
    ld c, e                                       ; $68b4: $4b
    ld b, d                                       ; $68b5: $42
    ld hl, $2a9b                                  ; $68b6: $21 $9b $2a
    dec bc                                        ; $68b9: $0b
    add sp, -$5f                                  ; $68ba: $e8 $a1
    ld l, e                                       ; $68bc: $6b
    ld l, e                                       ; $68bd: $6b
    ldh a, [rP1]                                  ; $68be: $f0 $00
    add $14                                       ; $68c0: $c6 $14
    ld l, e                                       ; $68c2: $6b
    inc d                                         ; $68c3: $14
    cp a                                          ; $68c4: $bf
    ld [c], a                                     ; $68c5: $e2
    pop bc                                        ; $68c6: $c1
    ldh [rWX], a                                  ; $68c7: $e0 $4b
    ld a, [hl]                                    ; $68c9: $7e
    ld h, b                                       ; $68ca: $60
    ld c, e                                       ; $68cb: $4b
    ld b, h                                       ; $68cc: $44
    jp nz, $a20c                                  ; $68cd: $c2 $0c $a2

    ld a, d                                       ; $68d0: $7a
    ld hl, $3c02                                  ; $68d1: $21 $02 $3c
    ld h, b                                       ; $68d4: $60
    ld l, e                                       ; $68d5: $6b
    ld a, l                                       ; $68d6: $7d
    ld h, b                                       ; $68d7: $60
    inc l                                         ; $68d8: $2c
    ret nz                                        ; $68d9: $c0

    ld [hl], $60                                  ; $68da: $36 $60
    add [hl]                                      ; $68dc: $86
    inc de                                        ; $68dd: $13
    ld c, [hl]                                    ; $68de: $4e
    ret nz                                        ; $68df: $c0

    ld a, [hl]                                    ; $68e0: $7e
    pop hl                                        ; $68e1: $e1
    inc l                                         ; $68e2: $2c
    pop bc                                        ; $68e3: $c1
    ldh [rSC], a                                  ; $68e4: $e0 $02
    ret nz                                        ; $68e6: $c0

    inc c                                         ; $68e7: $0c
    ld c, e                                       ; $68e8: $4b
    add hl, sp                                    ; $68e9: $39
    jp nz, $894b                                  ; $68ea: $c2 $4b $89

    ld b, b                                       ; $68ed: $40
    or c                                          ; $68ee: $b1
    inc hl                                        ; $68ef: $23
    nop                                           ; $68f0: $00
    ld l, d                                       ; $68f1: $6a
    ldh [$c1], a                                  ; $68f2: $e0 $c1
    push hl                                       ; $68f4: $e5
    ld b, a                                       ; $68f5: $47
    halt                                          ; $68f6: $76
    adc $a0                                       ; $68f7: $ce $a0
    sbc l                                         ; $68f9: $9d
    db $e3                                        ; $68fa: $e3
    db $dd                                        ; $68fb: $dd
    and c                                         ; $68fc: $a1
    add c                                         ; $68fd: $81
    and b                                         ; $68fe: $a0
    add b                                         ; $68ff: $80

jr_06f_6900:
    jp nz, $b540                                  ; $6900: $c2 $40 $b5

    and b                                         ; $6903: $a0
    dec c                                         ; $6904: $0d
    and d                                         ; $6905: $a2
    add c                                         ; $6906: $81
    pop hl                                        ; $6907: $e1
    ld l, e                                       ; $6908: $6b
    ld [c], a                                     ; $6909: $e2
    add sp, $02                                   ; $690a: $e8 $02
    ret z                                         ; $690c: $c8

    ld d, e                                       ; $690d: $53
    inc l                                         ; $690e: $2c
    add d                                         ; $690f: $82
    and c                                         ; $6910: $a1
    ld [bc], a                                    ; $6911: $02
    ld c, l                                       ; $6912: $4d
    and b                                         ; $6913: $a0
    ld l, h                                       ; $6914: $6c
    cp [hl]                                       ; $6915: $be
    jr nz, @-$7e                                  ; $6916: $20 $80

    db $e3                                        ; $6918: $e3
    add a                                         ; $6919: $87
    ld h, b                                       ; $691a: $60
    sub l                                         ; $691b: $95
    ld h, h                                       ; $691c: $64
    jr z, jr_06f_6900                             ; $691d: $28 $e1

    pop bc                                        ; $691f: $c1
    ld a, [$d41c]                                 ; $6920: $fa $1c $d4
    ld [bc], a                                    ; $6923: $02
    inc e                                         ; $6924: $1c
    ld [c], a                                     ; $6925: $e2
    ld c, e                                       ; $6926: $4b
    ld l, h                                       ; $6927: $6c
    ld c, h                                       ; $6928: $4c
    inc sp                                        ; $6929: $33
    db $e3                                        ; $692a: $e3
    cp l                                          ; $692b: $bd
    jp nz, Jump_000_039a                          ; $692c: $c2 $9a $03

    nop                                           ; $692f: $00
    pop af                                        ; $6930: $f1
    and c                                         ; $6931: $a1
    xor l                                         ; $6932: $ad
    pop bc                                        ; $6933: $c1
    ld l, d                                       ; $6934: $6a
    nop                                           ; $6935: $00
    ld b, d                                       ; $6936: $42
    ld a, b                                       ; $6937: $78
    res 4, c                                      ; $6938: $cb $a1
    cp a                                          ; $693a: $bf
    add c                                         ; $693b: $81
    or d                                          ; $693c: $b2
    call nz, $c2fe                                ; $693d: $c4 $fe $c2
    nop                                           ; $6940: $00
    sbc d                                         ; $6941: $9a
    inc b                                         ; $6942: $04
    ret nz                                        ; $6943: $c0

    db $e3                                        ; $6944: $e3
    add d                                         ; $6945: $82
    rst $30                                       ; $6946: $f7
    ld d, b                                       ; $6947: $50
    ld b, $18                                     ; $6948: $06 $18
    pop hl                                        ; $694a: $e1
    ld [hl], e                                    ; $694b: $73
    pop hl                                        ; $694c: $e1
    add d                                         ; $694d: $82
    add b                                         ; $694e: $80
    ld [hl], h                                    ; $694f: $74
    add d                                         ; $6950: $82
    nop                                           ; $6951: $00
    ld [hl], h                                    ; $6952: $74
    ldh [$ea], a                                  ; $6953: $e0 $ea
    inc h                                         ; $6955: $24
    pop bc                                        ; $6956: $c1
    rst $38                                       ; $6957: $ff
    ld a, [hl-]                                   ; $6958: $3a
    db $e3                                        ; $6959: $e3
    dec de                                        ; $695a: $1b
    ld h, d                                       ; $695b: $62
    cp a                                          ; $695c: $bf
    ld [c], a                                     ; $695d: $e2
    ld a, [c]                                     ; $695e: $f2
    ld h, c                                       ; $695f: $61
    add hl, sp                                    ; $6960: $39
    dec b                                         ; $6961: $05
    jr nz, jr_06f_69ae                            ; $6962: $20 $4a

    ld b, b                                       ; $6964: $40
    pop bc                                        ; $6965: $c1
    rst $38                                       ; $6966: $ff
    scf                                           ; $6967: $37
    jp Jump_06f_6179                              ; $6968: $c3 $79 $61


    ld a, [hl]                                    ; $696b: $7e
    ld [c], a                                     ; $696c: $e2
    dec bc                                        ; $696d: $0b
    ld b, d                                       ; $696e: $42
    pop bc                                        ; $696f: $c1
    inc sp                                        ; $6970: $33
    inc b                                         ; $6971: $04
    nop                                           ; $6972: $00
    ldh [$c1], a                                  ; $6973: $e0 $c1
    jp Jump_06f_7fff                              ; $6975: $c3 $ff $7f


    dec b                                         ; $6978: $05
    cp a                                          ; $6979: $bf
    ld [c], a                                     ; $697a: $e2
    jp hl                                         ; $697b: $e9


    ld h, l                                       ; $697c: $65
    ld l, c                                       ; $697d: $69
    jr z, @+$01                                   ; $697e: $28 $ff

    rst $38                                       ; $6980: $ff
    cp [hl]                                       ; $6981: $be
    ld bc, $7810                                  ; $6982: $01 $10 $78
    add b                                         ; $6985: $80
    di                                            ; $6986: $f3
    add sp, -$31                                  ; $6987: $e8 $cf
    rst $38                                       ; $6989: $ff
    cp [hl]                                       ; $698a: $be
    ld c, $0b                                     ; $698b: $0e $0b
    ld a, a                                       ; $698d: $7f
    pop hl                                        ; $698e: $e1
    or e                                          ; $698f: $b3
    ld b, c                                       ; $6990: $41
    ld c, d                                       ; $6991: $4a
    add d                                         ; $6992: $82
    nop                                           ; $6993: $00
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    ld a, l                                       ; $6996: $7d
    ld c, $7f                                     ; $6997: $0e $7f
    pop hl                                        ; $6999: $e1
    ld d, d                                       ; $699a: $52
    add b                                         ; $699b: $80
    sbc e                                         ; $699c: $9b
    ld [hl], $3a                                  ; $699d: $36 $3a
    db $dd                                        ; $699f: $dd
    or a                                          ; $69a0: $b7

Jump_06f_69a1:
    inc h                                         ; $69a1: $24
    call nc, Call_000_00ff                        ; $69a2: $d4 $ff $00
    ld [hl], a                                    ; $69a5: $77
    db $db                                        ; $69a6: $db
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff

jr_06f_69ae:
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    ld a, [$0000]                                 ; $69b0: $fa $00 $00
    nop                                           ; $69b3: $00
    cp l                                          ; $69b4: $bd
    sbc c                                         ; $69b5: $99
    rst $38                                       ; $69b6: $ff
    ld sp, hl                                     ; $69b7: $f9
    sbc b                                         ; $69b8: $98
    sbc b                                         ; $69b9: $98
    sbc b                                         ; $69ba: $98
    sub a                                         ; $69bb: $97
    rst $38                                       ; $69bc: $ff
    ldh [$96], a                                  ; $69bd: $e0 $96
    ld h, d                                       ; $69bf: $62
    rst $38                                       ; $69c0: $ff
    db $e3                                        ; $69c1: $e3
    sub l                                         ; $69c2: $95
    rst $38                                       ; $69c3: $ff
    add sp, -$13                                  ; $69c4: $e8 $ed
    ldh [$e6], a                                  ; $69c6: $e0 $e6
    ldh [$98], a                                  ; $69c8: $e0 $98
    sbc b                                         ; $69ca: $98
    pop bc                                        ; $69cb: $c1
    rst $38                                       ; $69cc: $ff
    nop                                           ; $69cd: $00
    jp nz, $cae4                                  ; $69ce: $c2 $e4 $ca

    push hl                                       ; $69d1: $e5
    or [hl]                                       ; $69d2: $b6
    push hl                                       ; $69d3: $e5
    cp a                                          ; $69d4: $bf
    ld [c], a                                     ; $69d5: $e2
    ret nz                                        ; $69d6: $c0

    ld sp, hl                                     ; $69d7: $f9
    add h                                         ; $69d8: $84
    ldh [$c1], a                                  ; $69d9: $e0 $c1
    and $8b                                       ; $69db: $e6 $8b
    and $00                                       ; $69dd: $e6 $00
    ld [hl], d                                    ; $69df: $72
    pop hl                                        ; $69e0: $e1
    ld [hl], b                                    ; $69e1: $70
    pop hl                                        ; $69e2: $e1
    di                                            ; $69e3: $f3
    db $e4                                        ; $69e4: $e4
    ld h, b                                       ; $69e5: $60
    ldh [$c3], a                                  ; $69e6: $e0 $c3
    ld hl, sp-$7e                                 ; $69e8: $f8 $82
    push hl                                       ; $69ea: $e5
    ld c, [hl]                                    ; $69eb: $4e
    and $ce                                       ; $69ec: $e6 $ce
    db $e3                                        ; $69ee: $e3
    nop                                           ; $69ef: $00
    dec l                                         ; $69f0: $2d
    ldh [$34], a                                  ; $69f1: $e0 $34
    pop hl                                        ; $69f3: $e1
    ccf                                           ; $69f4: $3f
    ld sp, hl                                     ; $69f5: $f9
    add h                                         ; $69f6: $84
    push hl                                       ; $69f7: $e5
    pop bc                                        ; $69f8: $c1
    and $c3                                       ; $69f9: $e6 $c3
    db $e3                                        ; $69fb: $e3
    rrca                                          ; $69fc: $0f
    db $e3                                        ; $69fd: $e3
    cp a                                          ; $69fe: $bf
    ld [c], a                                     ; $69ff: $e2
    ld h, b                                       ; $6a00: $60
    ccf                                           ; $6a01: $3f
    or $86                                        ; $6a02: $f6 $86
    rst $20                                       ; $6a04: $e7
    ld d, l                                       ; $6a05: $55
    jp hl                                         ; $6a06: $e9


    jp $d0e4                                      ; $6a07: $c3 $e4 $d0


Jump_06f_6a0a:
    ret nz                                        ; $6a0a: $c0

jr_06f_6a0b:
    ld bc, $bf00                                  ; $6a0b: $01 $00 $bf
    pop hl                                        ; $6a0e: $e1
    ldh [$3f], a                                  ; $6a0f: $e0 $3f
    rst $20                                       ; $6a11: $e7
    ld c, c                                       ; $6a12: $49
    pop af                                        ; $6a13: $f1
    add h                                         ; $6a14: $84
    rst $20                                       ; $6a15: $e7
    adc d                                         ; $6a16: $8a
    jp nz, $c495                                  ; $6a17: $c2 $95 $c4

    sbc b                                         ; $6a1a: $98
    sbc b                                         ; $6a1b: $98
    rrca                                          ; $6a1c: $0f
    ld a, a                                       ; $6a1d: $7f
    inc b                                         ; $6a1e: $04
    add hl, bc                                    ; $6a1f: $09
    inc b                                         ; $6a20: $04
    rrca                                          ; $6a21: $0f
    nop                                           ; $6a22: $00
    ld bc, $c099                                  ; $6a23: $01 $99 $c0
    ldh [$c0], a                                  ; $6a26: $e0 $c0
    ccf                                           ; $6a28: $3f
    db $e4                                        ; $6a29: $e4
    ld a, a                                       ; $6a2a: $7f
    res 0, [hl]                                   ; $6a2b: $cb $86
    jp hl                                         ; $6a2d: $e9


    sub l                                         ; $6a2e: $95
    push bc                                       ; $6a2f: $c5
    ld d, $e1                                     ; $6a30: $16 $e1
    rst $10                                       ; $6a32: $d7
    call nz, Call_000_020f                        ; $6a33: $c4 $0f $02
    rra                                           ; $6a36: $1f
    ld c, b                                       ; $6a37: $48
    ld c, [hl]                                    ; $6a38: $4e
    ld c, b                                       ; $6a39: $48
    ld [bc], a                                    ; $6a3a: $02
    rrca                                          ; $6a3b: $0f
    add b                                         ; $6a3c: $80
    push af                                       ; $6a3d: $f5
    ld c, c                                       ; $6a3e: $49
    jp hl                                         ; $6a3f: $e9


    dec c                                         ; $6a40: $0d
    jp $18f8                                      ; $6a41: $c3 $f8 $18


    pop bc                                        ; $6a44: $c1
    inc d                                         ; $6a45: $14
    pop bc                                        ; $6a46: $c1
    jr jr_06f_6a0b                                ; $6a47: $18 $c2

    ld bc, $0600                                  ; $6a49: $01 $00 $06
    ld c, d                                       ; $6a4c: $4a
    ld h, b                                       ; $6a4d: $60
    cpl                                           ; $6a4e: $2f
    ld h, c                                       ; $6a4f: $61
    ld h, c                                       ; $6a50: $61
    ld d, l                                       ; $6a51: $55
    ld b, $00                                     ; $6a52: $06 $00
    jp hl                                         ; $6a54: $e9


    sub a                                         ; $6a55: $97
    ret nz                                        ; $6a56: $c0

    db $eb                                        ; $6a57: $eb
    add [hl]                                      ; $6a58: $86
    jp hl                                         ; $6a59: $e9


    ld hl, sp-$2c                                 ; $6a5a: $f8 $d4
    xor b                                         ; $6a5c: $a8
    jp c, Jump_06f_4ae0                           ; $6a5d: $da $e0 $4a

    ldh [rNR10], a                                ; $6a60: $e0 $10
    dec b                                         ; $6a62: $05
    ld c, e                                       ; $6a63: $4b
    ld h, c                                       ; $6a64: $61
    ld h, c                                       ; $6a65: $61
    rrca                                          ; $6a66: $0f
    ld h, c                                       ; $6a67: $61
    ld d, [hl]                                    ; $6a68: $56
    dec b                                         ; $6a69: $05
    ld c, $41                                     ; $6a6a: $0e $41
    push hl                                       ; $6a6c: $e5
    cp l                                          ; $6a6d: $bd
    and d                                         ; $6a6e: $a2
    db $d3                                        ; $6a6f: $d3
    or d                                          ; $6a70: $b2
    ret nc                                        ; $6a71: $d0

    and [hl]                                      ; $6a72: $a6
    ld a, h                                       ; $6a73: $7c
    sub [hl]                                      ; $6a74: $96
    and h                                         ; $6a75: $a4
    sbc b                                         ; $6a76: $98
    and b                                         ; $6a77: $a0
    rrca                                          ; $6a78: $0f
    inc b                                         ; $6a79: $04
    inc bc                                        ; $6a7a: $03
    ld d, c                                       ; $6a7b: $51
    ld e, [hl]                                    ; $6a7c: $5e
    ret nz                                        ; $6a7d: $c0

    ldh [rTAC], a                                 ; $6a7e: $e0 $07
    ld e, b                                       ; $6a80: $58
    ld b, h                                       ; $6a81: $44
    ld [$c3c1], sp                                ; $6a82: $08 $c1 $c3
    ld a, h                                       ; $6a85: $7c
    and h                                         ; $6a86: $a4
    sub h                                         ; $6a87: $94
    or b                                          ; $6a88: $b0
    ld e, l                                       ; $6a89: $5d
    and a                                         ; $6a8a: $a7
    ld b, a                                       ; $6a8b: $47
    and d                                         ; $6a8c: $a2
    sbc $48                                       ; $6a8d: $de $48
    jp nz, Jump_000_020f                          ; $6a8f: $c2 $0f $02

    ld b, a                                       ; $6a92: $47
    ld e, d                                       ; $6a93: $5a
    ld b, c                                       ; $6a94: $41
    pop hl                                        ; $6a95: $e1
    ld h, c                                       ; $6a96: $61
    ld d, a                                       ; $6a97: $57
    inc bc                                        ; $6a98: $03
    ld e, h                                       ; $6a99: $5c
    ld b, $c1                                     ; $6a9a: $06 $c1
    pop bc                                        ; $6a9c: $c1
    ld a, [hl+]                                   ; $6a9d: $2a
    push bc                                       ; $6a9e: $c5
    ret nz                                        ; $6a9f: $c0

    add sp, -$2d                                  ; $6aa0: $e8 $d3
    xor c                                         ; $6aa2: $a9
    sub e                                         ; $6aa3: $93
    xor b                                         ; $6aa4: $a8
    call z, $f6a3                                 ; $6aa5: $cc $a3 $f6
    inc b                                         ; $6aa8: $04
    ldh [rHDMA5], a                               ; $6aa9: $e0 $55
    ld c, a                                       ; $6aab: $4f
    ld b, c                                       ; $6aac: $41
    ldh [rHDMA5], a                               ; $6aad: $e0 $55
    dec hl                                        ; $6aaf: $2b
    cp l                                          ; $6ab0: $bd
    ld a, [bc]                                    ; $6ab1: $0a
    ld b, b                                       ; $6ab2: $40
    xor c                                         ; $6ab3: $a9
    and a                                         ; $6ab4: $a7
    ret nz                                        ; $6ab5: $c0

    db $ec                                        ; $6ab6: $ec
    add hl, de                                    ; $6ab7: $19
    and a                                         ; $6ab8: $a7
    jp z, $93c2                                   ; $6ab9: $ca $c2 $93

    and h                                         ; $6abc: $a4
    db $db                                        ; $6abd: $db
    add c                                         ; $6abe: $81
    ld c, $04                                     ; $6abf: $0e $04
    ldh [$3e], a                                  ; $6ac1: $e0 $3e
    ret nz                                        ; $6ac3: $c0

    pop hl                                        ; $6ac4: $e1
    ld e, b                                       ; $6ac5: $58
    dec l                                         ; $6ac6: $2d
    jr nz, jr_06f_6afb                            ; $6ac7: $20 $32

    ld a, [bc]                                    ; $6ac9: $0a
    jp hl                                         ; $6aca: $e9


    add l                                         ; $6acb: $85
    ret nz                                        ; $6acc: $c0

    jp hl                                         ; $6acd: $e9


    ld [hl], b                                    ; $6ace: $70
    ld l, c                                       ; $6acf: $69
    and [hl]                                      ; $6ad0: $a6
    call c, $8a86                                 ; $6ad1: $dc $86 $8a
    jp $a2cc                                      ; $6ad4: $c3 $cc $a2


    nop                                           ; $6ad7: $00
    ld bc, $0408                                  ; $6ad8: $01 $08 $04
    ldh [rSB], a                                  ; $6adb: $e0 $01
    ld e, d                                       ; $6add: $5a
    ret nz                                        ; $6ade: $c0

    push hl                                       ; $6adf: $e5
    jp nc, Jump_06f_7ae5                          ; $6ae0: $d2 $e5 $7a

    add d                                         ; $6ae3: $82
    ld b, l                                       ; $6ae4: $45
    ret                                           ; $6ae5: $c9


    add hl, hl                                    ; $6ae6: $29
    and [hl]                                      ; $6ae7: $a6
    ld c, h                                       ; $6ae8: $4c
    add c                                         ; $6ae9: $81
    ld h, h                                       ; $6aea: $64
    pop bc                                        ; $6aeb: $c1
    cp a                                          ; $6aec: $bf
    nop                                           ; $6aed: $00
    ld bc, $070d                                  ; $6aee: $01 $0d $07
    rlca                                          ; $6af1: $07
    rrca                                          ; $6af2: $0f
    ret z                                         ; $6af3: $c8

    and b                                         ; $6af4: $a0
    inc bc                                        ; $6af5: $03
    rst $18                                       ; $6af6: $df
    ld c, b                                       ; $6af7: $48
    ld h, b                                       ; $6af8: $60
    ld h, c                                       ; $6af9: $61
    ld d, [hl]                                    ; $6afa: $56

jr_06f_6afb:
    ld c, d                                       ; $6afb: $4a
    add c                                         ; $6afc: $81
    ret nz                                        ; $6afd: $c0

    ld b, a                                       ; $6afe: $47
    dec hl                                        ; $6aff: $2b
    inc bc                                        ; $6b00: $03
    cp l                                          ; $6b01: $bd
    ld b, $be                                     ; $6b02: $06 $be
    and b                                         ; $6b04: $a0
    ld a, h                                       ; $6b05: $7c
    and h                                         ; $6b06: $a4
    ret nz                                        ; $6b07: $c0

    add sp, -$2b                                  ; $6b08: $e8 $d5
    add l                                         ; $6b0a: $85
    call c, $a386                                 ; $6b0b: $dc $86 $a3
    add c                                         ; $6b0e: $81
    cp a                                          ; $6b0f: $bf
    dec c                                         ; $6b10: $0d
    inc b                                         ; $6b11: $04
    inc bc                                        ; $6b12: $03
    ld b, l                                       ; $6b13: $45
    ld b, [hl]                                    ; $6b14: $46
    ld [$a0c8], sp                                ; $6b15: $08 $c8 $a0
    ld c, c                                       ; $6b18: $49
    cp $c5                                        ; $6b19: $fe $c5
    pop bc                                        ; $6b1b: $c1
    ld b, a                                       ; $6b1c: $47
    ld d, d                                       ; $6b1d: $52
    ld h, c                                       ; $6b1e: $61
    ld h, c                                       ; $6b1f: $61
    ld h, b                                       ; $6b20: $60
    ld c, h                                       ; $6b21: $4c
    ld e, h                                       ; $6b22: $5c
    rlca                                          ; $6b23: $07
    ld [bc], a                                    ; $6b24: $02
    rlca                                          ; $6b25: $07
    dec c                                         ; $6b26: $0d
    dec sp                                        ; $6b27: $3b
    and c                                         ; $6b28: $a1
    ld a, e                                       ; $6b29: $7b
    jp $e280                                      ; $6b2a: $c3 $80 $e2


    sub [hl]                                      ; $6b2d: $96
    adc c                                         ; $6b2e: $89
    ld c, c                                       ; $6b2f: $49
    push hl                                       ; $6b30: $e5
    cp h                                          ; $6b31: $bc
    adc h                                         ; $6b32: $8c
    pop bc                                        ; $6b33: $c1
    jp nz, Jump_000_36e0                          ; $6b34: $c2 $e0 $36

    add hl, sp                                    ; $6b37: $39
    dec b                                         ; $6b38: $05
    ld c, $c8                                     ; $6b39: $0e $c8
    and d                                         ; $6b3b: $a2
    ld h, c                                       ; $6b3c: $61
    rst $38                                       ; $6b3d: $ff
    ld h, c                                       ; $6b3e: $61
    ld e, l                                       ; $6b3f: $5d
    ld d, e                                       ; $6b40: $53
    ld d, b                                       ; $6b41: $50
    ld e, e                                       ; $6b42: $5b
    ld d, e                                       ; $6b43: $53

Jump_06f_6b44:
    ld d, h                                       ; $6b44: $54

jr_06f_6b45:
    ld d, [hl]                                    ; $6b45: $56
    ccf                                           ; $6b46: $3f
    ld b, l                                       ; $6b47: $45
    ld d, b                                       ; $6b48: $50
    ld d, b                                       ; $6b49: $50
    inc bc                                        ; $6b4a: $03

Jump_06f_6b4b:
    inc b                                         ; $6b4b: $04
    rrca                                          ; $6b4c: $0f
    db $fc                                        ; $6b4d: $fc
    add c                                         ; $6b4e: $81
    xor a                                         ; $6b4f: $af
    ld h, d                                       ; $6b50: $62
    ld hl, sp-$27                                 ; $6b51: $f8 $d9
    ld l, d                                       ; $6b53: $6a
    dec e                                         ; $6b54: $1d
    add d                                         ; $6b55: $82
    call c, $9885                                 ; $6b56: $dc $85 $98
    ld [$3745], sp                                ; $6b59: $08 $45 $37
    jr c, jr_06f_6b45                             ; $6b5c: $38 $e7

    dec [hl]                                      ; $6b5e: $35
    add hl, sp                                    ; $6b5f: $39
    ld b, $c4                                     ; $6b60: $06 $c4
    pop bc                                        ; $6b62: $c1
    rst $00                                       ; $6b63: $c7
    and b                                         ; $6b64: $a0
    ld h, b                                       ; $6b65: $60
    ld e, l                                       ; $6b66: $5d
    ld e, l                                       ; $6b67: $5d
    rst $38                                       ; $6b68: $ff
    ld e, l                                       ; $6b69: $5d
    ld c, h                                       ; $6b6a: $4c
    ld c, c                                       ; $6b6b: $49
    ld d, e                                       ; $6b6c: $53
    ld b, l                                       ; $6b6d: $45
    ld b, a                                       ; $6b6e: $47
    ld e, l                                       ; $6b6f: $5d
    ld e, l                                       ; $6b70: $5d
    adc a                                         ; $6b71: $8f
    ld c, c                                       ; $6b72: $49
    ld d, e                                       ; $6b73: $53
    ld [bc], a                                    ; $6b74: $02
    rrca                                          ; $6b75: $0f
    sub c                                         ; $6b76: $91
    push bc                                       ; $6b77: $c5
    ld b, l                                       ; $6b78: $45
    call z, $62ab                                 ; $6b79: $cc $ab $62
    rrca                                          ; $6b7c: $0f
    cp $0b                                        ; $6b7d: $fe $0b
    pop hl                                        ; $6b7f: $e1
    sbc b                                         ; $6b80: $98
    sbc b                                         ; $6b81: $98
    ld [$c340], sp                                ; $6b82: $08 $40 $c3
    dec [hl]                                      ; $6b85: $35
    xor h                                         ; $6b86: $ac
    sbc a                                         ; $6b87: $9f
    ld b, b                                       ; $6b88: $40
    ld [$4408], sp                                ; $6b89: $08 $08 $44
    ld c, l                                       ; $6b8c: $4d
    add c                                         ; $6b8d: $81
    pop hl                                        ; $6b8e: $e1
    db $fc                                        ; $6b8f: $fc
    db $e4                                        ; $6b90: $e4
    ld d, l                                       ; $6b91: $55
    rrca                                          ; $6b92: $0f
    ld e, [hl]                                    ; $6b93: $5e
    ld d, d                                       ; $6b94: $52
    ld b, e                                       ; $6b95: $43
    ld d, [hl]                                    ; $6b96: $56
    ld a, [hl-]                                   ; $6b97: $3a
    and h                                         ; $6b98: $a4
    or a                                          ; $6b99: $b7
    ld h, c                                       ; $6b9a: $61
    ld b, l                                       ; $6b9b: $45
    call $e1c1                                    ; $6b9c: $cd $c1 $e1
    rst $08                                       ; $6b9f: $cf
    ld [bc], a                                    ; $6ba0: $02
    xor [hl]                                      ; $6ba1: $ae
    ld b, [hl]                                    ; $6ba2: $46
    ld [bc], a                                    ; $6ba3: $02
    inc b                                         ; $6ba4: $04
    ld h, b                                       ; $6ba5: $60
    add b                                         ; $6ba6: $80
    pop hl                                        ; $6ba7: $e1
    xor l                                         ; $6ba8: $ad
    ld b, d                                       ; $6ba9: $42
    di                                            ; $6baa: $f3
    ld [$8806], sp                                ; $6bab: $08 $06 $88
    and d                                         ; $6bae: $a2
    cp l                                          ; $6baf: $bd
    push hl                                       ; $6bb0: $e5
    ld h, b                                       ; $6bb1: $60
    ld e, b                                       ; $6bb2: $58
    ld b, h                                       ; $6bb3: $44
    ld b, [hl]                                    ; $6bb4: $46
    pop hl                                        ; $6bb5: $e1
    ld d, l                                       ; $6bb6: $55
    ld a, [hl-]                                   ; $6bb7: $3a
    and d                                         ; $6bb8: $a2
    ld hl, sp+$63                                 ; $6bb9: $f8 $63
    dec b                                         ; $6bbb: $05
    add $9d                                       ; $6bbc: $c6 $9d
    ld h, l                                       ; $6bbe: $65
    sbc b                                         ; $6bbf: $98
    sbc c                                         ; $6bc0: $99
    ld [bc], a                                    ; $6bc1: $02
    inc sp                                        ; $6bc2: $33
    xor [hl]                                      ; $6bc3: $ae
    xor a                                         ; $6bc4: $af
    ret nz                                        ; $6bc5: $c0

    ld [c], a                                     ; $6bc6: $e2
    nop                                           ; $6bc7: $00
    pop hl                                        ; $6bc8: $e1
    ccf                                           ; $6bc9: $3f
    ld b, l                                       ; $6bca: $45
    ret nz                                        ; $6bcb: $c0

    db $ec                                        ; $6bcc: $ec
    ld hl, sp-$40                                 ; $6bcd: $f8 $c0
    adc l                                         ; $6bcf: $8d
    ld b, a                                       ; $6bd0: $47
    ld [hl], a                                    ; $6bd1: $77
    ret nz                                        ; $6bd2: $c0

    ld d, l                                       ; $6bd3: $55
    ld b, $7c                                     ; $6bd4: $06 $7c
    call nz, $c805                                ; $6bd6: $c4 $05 $c8
    sbc l                                         ; $6bd9: $9d
    ld h, h                                       ; $6bda: $64
    sbc c                                         ; $6bdb: $99
    daa                                           ; $6bdc: $27
    ld [bc], a                                    ; $6bdd: $02
    xor a                                         ; $6bde: $af
    ld [bc], a                                    ; $6bdf: $02

Jump_06f_6be0:
    ld b, b                                       ; $6be0: $40
    pop hl                                        ; $6be1: $e1
    push de                                       ; $6be2: $d5
    ld h, b                                       ; $6be3: $60

Jump_06f_6be4:
    dec c                                         ; $6be4: $0d
    rrca                                          ; $6be5: $0f
    add c                                         ; $6be6: $81
    ld b, b                                       ; $6be7: $40
    db $eb                                        ; $6be8: $eb
    ld l, a                                       ; $6be9: $6f
    ld h, c                                       ; $6bea: $61
    ld h, b                                       ; $6beb: $60
    ld h, c                                       ; $6bec: $61
    ld h, b                                       ; $6bed: $60
    ld a, c                                       ; $6bee: $79
    add b                                         ; $6bef: $80
    ld e, d                                       ; $6bf0: $5a
    ld a, [bc]                                    ; $6bf1: $0a
    ld hl, sp+$64                                 ; $6bf2: $f8 $64
    inc a                                         ; $6bf4: $3c
    ld b, [hl]                                    ; $6bf5: $46
    and [hl]                                      ; $6bf6: $a6
    adc [hl]                                      ; $6bf7: $8e
    and [hl]                                      ; $6bf8: $a6
    sbc c                                         ; $6bf9: $99
    rrca                                          ; $6bfa: $0f
    rlca                                          ; $6bfb: $07
    rrca                                          ; $6bfc: $0f
    sbc d                                         ; $6bfd: $9a
    ld h, d                                       ; $6bfe: $62
    ld b, b                                       ; $6bff: $40
    ld b, c                                       ; $6c00: $41
    inc sp                                        ; $6c01: $33
    sbc c                                         ; $6c02: $99
    sbc b                                         ; $6c03: $98
    add h                                         ; $6c04: $84
    and d                                         ; $6c05: $a2
    rst $38                                       ; $6c06: $ff
    rst $00                                       ; $6c07: $c7
    ld e, b                                       ; $6c08: $58
    ld d, l                                       ; $6c09: $55
    di                                            ; $6c0a: $f3
    jp nz, $8079                                  ; $6c0b: $c2 $79 $80

    ldh [$80], a                                  ; $6c0e: $e0 $80
    rst $20                                       ; $6c10: $e7
    dec b                                         ; $6c11: $05
    add $da                                       ; $6c12: $c6 $da

jr_06f_6c14:
    ld h, e                                       ; $6c14: $63
    and e                                         ; $6c15: $a3
    ret nz                                        ; $6c16: $c0

    dec b                                         ; $6c17: $05
    ld b, b                                       ; $6c18: $40
    dec c                                         ; $6c19: $0d
    rlca                                          ; $6c1a: $07
    inc b                                         ; $6c1b: $04
    rst $38                                       ; $6c1c: $ff
    add hl, bc                                    ; $6c1d: $09
    add hl, bc                                    ; $6c1e: $09
    inc b                                         ; $6c1f: $04
    rlca                                          ; $6c20: $07
    dec c                                         ; $6c21: $0d
    nop                                           ; $6c22: $00
    ld bc, $3406                                  ; $6c23: $01 $06 $34
    rst $00                                       ; $6c26: $c7
    and c                                         ; $6c27: $a1
    cp l                                          ; $6c28: $bd
    push bc                                       ; $6c29: $c5
    ld d, [hl]                                    ; $6c2a: $56
    or d                                          ; $6c2b: $b2
    call nz, Call_000_085c                        ; $6c2c: $c4 $5c $08
    nop                                           ; $6c2f: $00
    push hl                                       ; $6c30: $e5
    ld b, [hl]                                    ; $6c31: $46
    and a                                         ; $6c32: $a7
    adc $18                                       ; $6c33: $ce $18
    add d                                         ; $6c35: $82
    ld [$4646], sp                                ; $6c36: $08 $46 $46
    push hl                                       ; $6c39: $e5
    ldh [rHDMA1], a                               ; $6c3a: $e0 $51
    add b                                         ; $6c3c: $80
    ld b, e                                       ; $6c3d: $43
    ld b, l                                       ; $6c3e: $45
    cp a                                          ; $6c3f: $bf
    ld b, [hl]                                    ; $6c40: $46
    ld b, l                                       ; $6c41: $45
    ld d, b                                       ; $6c42: $50
    ld b, e                                       ; $6c43: $43
    inc bc                                        ; $6c44: $03
    inc b                                         ; $6c45: $04
    cp h                                          ; $6c46: $bc
    and b                                         ; $6c47: $a0
    ld d, e                                       ; $6c48: $53
    ld bc, $8054                                  ; $6c49: $01 $54 $80
    rst $00                                       ; $6c4c: $c7
    di                                            ; $6c4d: $f3
    and e                                         ; $6c4e: $a3
    ret nz                                        ; $6c4f: $c0

    pop hl                                        ; $6c50: $e1
    add b                                         ; $6c51: $80
    call nz, $486f                                ; $6c52: $c4 $6f $48
    jr @-$7d                                      ; $6c55: $18 $81

    add e                                         ; $6c57: $83
    ret nz                                        ; $6c58: $c0

    cp l                                          ; $6c59: $bd
    ld [$8051], sp                                ; $6c5a: $08 $51 $80
    ld c, b                                       ; $6c5d: $48
    ld c, c                                       ; $6c5e: $49
    ld c, h                                       ; $6c5f: $4c
    ld b, a                                       ; $6c60: $47
    inc d                                         ; $6c61: $14
    ret nz                                        ; $6c62: $c0

    ld c, h                                       ; $6c63: $4c
    cp l                                          ; $6c64: $bd
    ld c, d                                       ; $6c65: $4a
    ei                                            ; $6c66: $fb
    and b                                         ; $6c67: $a0
    jr c, @+$39                                   ; $6c68: $38 $37

    ld b, l                                       ; $6c6a: $45
    ld d, [hl]                                    ; $6c6b: $56

Call_06f_6c6c:
    add d                                         ; $6c6c: $82
    call nz, Call_06f_6153                        ; $6c6d: $c4 $53 $61
    ld b, l                                       ; $6c70: $45
    ld a, d                                       ; $6c71: $7a
    add c                                         ; $6c72: $81
    cp c                                          ; $6c73: $b9
    ld l, b                                       ; $6c74: $68
    ret nz                                        ; $6c75: $c0

    ld [$8118], a                                 ; $6c76: $ea $18 $81
    xor [hl]                                      ; $6c79: $ae
    xor a                                         ; $6c7a: $af
    db $e3                                        ; $6c7b: $e3
    and b                                         ; $6c7c: $a0
    ld a, [$6255]                                 ; $6c7d: $fa $55 $62
    ld e, b                                       ; $6c80: $58
    rst $08                                       ; $6c81: $cf
    ld h, c                                       ; $6c82: $61
    ld d, l                                       ; $6c83: $55
    add hl, sp                                    ; $6c84: $39
    xor h                                         ; $6c85: $ac
    dec [hl]                                      ; $6c86: $35
    jp Jump_000_3503                              ; $6c87: $c3 $03 $35


    add hl, sp                                    ; $6c8a: $39
    jp z, Jump_06f_41e3                           ; $6c8b: $ca $e3 $41

    and b                                         ; $6c8e: $a0
    add e                                         ; $6c8f: $83
    pop bc                                        ; $6c90: $c1
    jr c, jr_06f_6c14                             ; $6c91: $38 $81

    add hl, sp                                    ; $6c93: $39
    ld h, c                                       ; $6c94: $61
    ld l, $21                                     ; $6c95: $2e $21
    sbc h                                         ; $6c97: $9c
    rst $28                                       ; $6c98: $ef
    daa                                           ; $6c99: $27
    add h                                         ; $6c9a: $84
    and d                                         ; $6c9b: $a2
    ld [$af46], sp                                ; $6c9c: $08 $46 $af
    ld b, c                                       ; $6c9f: $41
    ldh [$8d], a                                  ; $6ca0: $e0 $8d
    and h                                         ; $6ca2: $a4
    ld e, h                                       ; $6ca3: $5c
    ld a, $c7                                     ; $6ca4: $3e $c7
    and b                                         ; $6ca6: $a0
    ld e, h                                       ; $6ca7: $5c
    ld a, [hl-]                                   ; $6ca8: $3a
    xor l                                         ; $6ca9: $ad
    dec [hl]                                      ; $6caa: $35
    dec [hl]                                      ; $6cab: $35
    ret nz                                        ; $6cac: $c0

    and $fe                                       ; $6cad: $e6 $fe
    ld h, c                                       ; $6caf: $61
    ld h, d                                       ; $6cb0: $62
    ld [hl], l                                    ; $6cb1: $75
    pop hl                                        ; $6cb2: $e1
    ld d, d                                       ; $6cb3: $52
    ld a, [hl-]                                   ; $6cb4: $3a
    ld h, c                                       ; $6cb5: $61
    ld a, [$c522]                                 ; $6cb6: $fa $22 $c5
    adc h                                         ; $6cb9: $8c
    rrca                                          ; $6cba: $0f
    ld [bc], a                                    ; $6cbb: $02
    ld bc, $fae1                                  ; $6cbc: $01 $e1 $fa
    ld c, $a3                                     ; $6cbf: $0e $a3
    ld d, d                                       ; $6cc1: $52
    ld [$58e0], sp                                ; $6cc2: $08 $e0 $58
    ld b, h                                       ; $6cc5: $44
    inc a                                         ; $6cc6: $3c
    jp Jump_000_3c35                              ; $6cc7: $c3 $35 $3c


    ld b, b                                       ; $6cca: $40
    ldh [rTIMA], a                                ; $6ccb: $e0 $05
    ld h, b                                       ; $6ccd: $60
    ld d, [hl]                                    ; $6cce: $56
    ld d, e                                       ; $6ccf: $53
    ld d, h                                       ; $6cd0: $54
    ld d, a                                       ; $6cd1: $57
    add b                                         ; $6cd2: $80
    ld h, b                                       ; $6cd3: $60
    cp c                                          ; $6cd4: $b9
    ld h, c                                       ; $6cd5: $61
    add e                                         ; $6cd6: $83
    ld d, d                                       ; $6cd7: $52
    ld b, l                                       ; $6cd8: $45
    add c                                         ; $6cd9: $81
    ld [c], a                                     ; $6cda: $e2
    ld h, h                                       ; $6cdb: $64
    ld b, e                                       ; $6cdc: $43
    sbc c                                         ; $6cdd: $99
    ld h, $00                                     ; $6cde: $26 $00
    db $e4                                        ; $6ce0: $e4
    ld e, [hl]                                    ; $6ce1: $5e
    ld b, b                                       ; $6ce2: $40
    ld a, [bc]                                    ; $6ce3: $0a
    cp $95                                        ; $6ce4: $fe $95
    ld h, c                                       ; $6ce6: $61
    ld d, d                                       ; $6ce7: $52
    ld b, l                                       ; $6ce8: $45
    ld b, a                                       ; $6ce9: $47
    ld c, c                                       ; $6cea: $49
    ld c, b                                       ; $6ceb: $48
    ld e, e                                       ; $6cec: $5b
    ld b, b                                       ; $6ced: $40
    cp a                                          ; $6cee: $bf
    xor h                                         ; $6cef: $ac
    dec [hl]                                      ; $6cf0: $35
    dec [hl]                                      ; $6cf1: $35
    ld b, b                                       ; $6cf2: $40
    ld c, b                                       ; $6cf3: $48
    ld c, b                                       ; $6cf4: $48
    call nz, Call_06f_55e0                        ; $6cf5: $c4 $e0 $55
    rst $38                                       ; $6cf8: $ff
    ld b, e                                       ; $6cf9: $43
    ld b, l                                       ; $6cfa: $45
    ld b, e                                       ; $6cfb: $43
    ld e, e                                       ; $6cfc: $5b
    ld e, e                                       ; $6cfd: $5b
    ld b, e                                       ; $6cfe: $43
    ld b, l                                       ; $6cff: $45
    ld c, a                                       ; $6d00: $4f
    ld b, e                                       ; $6d01: $43
    ld d, h                                       ; $6d02: $54
    ld d, e                                       ; $6d03: $53
    cp a                                          ; $6d04: $bf
    add h                                         ; $6d05: $84
    sbc d                                         ; $6d06: $9a
    ld h, e                                       ; $6d07: $63
    db $dd                                        ; $6d08: $dd
    ld b, $c5                                     ; $6d09: $06 $c5
    add h                                         ; $6d0b: $84
    sbc c                                         ; $6d0c: $99
    ld b, c                                       ; $6d0d: $41
    db $e3                                        ; $6d0e: $e3
    rst $30                                       ; $6d0f: $f7
    ld d, [hl]                                    ; $6d10: $56
    ld b, l                                       ; $6d11: $45
    ld b, a                                       ; $6d12: $47
    ld d, c                                       ; $6d13: $51
    ld b, b                                       ; $6d14: $40
    ld e, h                                       ; $6d15: $5c
    add hl, sp                                    ; $6d16: $39
    xor l                                         ; $6d17: $ad
    dec [hl]                                      ; $6d18: $35
    rst $38                                       ; $6d19: $ff
    ld a, [hl-]                                   ; $6d1a: $3a
    ld d, c                                       ; $6d1b: $51
    ld e, [hl]                                    ; $6d1c: $5e
    ld h, b                                       ; $6d1d: $60
    ld c, c                                       ; $6d1e: $49
    ld c, b                                       ; $6d1f: $48
    ld b, l                                       ; $6d20: $45
    ld b, h                                       ; $6d21: $44
    ld a, a                                       ; $6d22: $7f
    ld d, [hl]                                    ; $6d23: $56
    ld b, l                                       ; $6d24: $45
    ld [bc], a                                    ; $6d25: $02
    rlca                                          ; $6d26: $07
    rlca                                          ; $6d27: $07
    rlca                                          ; $6d28: $07
    ld [bc], a                                    ; $6d29: $02
    ld l, l                                       ; $6d2a: $6d
    ret nz                                        ; $6d2b: $c0

    ret z                                         ; $6d2c: $c8

    ccf                                           ; $6d2d: $3f
    add [hl]                                      ; $6d2e: $86
    sub c                                         ; $6d2f: $91
    ld c, c                                       ; $6d30: $49
    add b                                         ; $6d31: $80
    push bc                                       ; $6d32: $c5
    ld [bc], a                                    ; $6d33: $02
    adc [hl]                                      ; $6d34: $8e
    and e                                         ; $6d35: $a3
    ld d, a                                       ; $6d36: $57
    jp nz, Jump_06f_4556                          ; $6d37: $c2 $56 $45

    rst $18                                       ; $6d3a: $df
    ld a, [hl-]                                   ; $6d3b: $3a
    dec [hl]                                      ; $6d3c: $35
    dec [hl]                                      ; $6d3d: $35
    ld a, $43                                     ; $6d3e: $3e $43
    rlca                                          ; $6d40: $07
    add b                                         ; $6d41: $80
    ld h, c                                       ; $6d42: $61
    ld d, h                                       ; $6d43: $54
    rst $28                                       ; $6d44: $ef
    ld c, c                                       ; $6d45: $49
    ld h, b                                       ; $6d46: $60
    ld b, h                                       ; $6d47: $44
    ld [$2042], sp                                ; $6d48: $08 $42 $20
    rrca                                          ; $6d4b: $0f
    rlca                                          ; $6d4c: $07
    dec c                                         ; $6d4d: $0d
    ldh a, [$fa]                                  ; $6d4e: $f0 $fa
    inc b                                         ; $6d50: $04
    ret nz                                        ; $6d51: $c0

    rst $20                                       ; $6d52: $e7
    ld h, e                                       ; $6d53: $63
    ld b, $00                                     ; $6d54: $06 $00
    db $e3                                        ; $6d56: $e3
    ld [$5345], sp                                ; $6d57: $08 $45 $53
    ld e, c                                       ; $6d5a: $59
    cp l                                          ; $6d5b: $bd
    ld d, e                                       ; $6d5c: $53
    dec c                                         ; $6d5d: $0d
    pop hl                                        ; $6d5e: $e1
    ld h, c                                       ; $6d5f: $61
    ld e, d                                       ; $6d60: $5a
    ld b, h                                       ; $6d61: $44
    inc a                                         ; $6d62: $3c
    jp $e8c0                                      ; $6d63: $c3 $c0 $e8


    inc h                                         ; $6d66: $24
    ldh a, [$e0]                                  ; $6d67: $f0 $e0
    cp $a0                                        ; $6d69: $fe $a0
    ld d, d                                       ; $6d6b: $52
    add h                                         ; $6d6c: $84
    jr nz, jr_06f_6d98                            ; $6d6d: $20 $29

    ld [bc], a                                    ; $6d6f: $02
    dec c                                         ; $6d70: $0d
    ld h, c                                       ; $6d71: $61
    add c                                         ; $6d72: $81
    cp e                                          ; $6d73: $bb
    dec b                                         ; $6d74: $05
    call nz, $0824                                ; $6d75: $c4 $24 $08
    ld c, h                                       ; $6d78: $4c
    add c                                         ; $6d79: $81
    ld b, [hl]                                    ; $6d7a: $46
    ret nz                                        ; $6d7b: $c0

    ld [c], a                                     ; $6d7c: $e2
    ld d, a                                       ; $6d7d: $57
    jr nz, jr_06f_6dca                            ; $6d7e: $20 $4a

    add d                                         ; $6d80: $82
    ld d, l                                       ; $6d81: $55
    add hl, sp                                    ; $6d82: $39
    rst $38                                       ; $6d83: $ff
    dec [hl]                                      ; $6d84: $35
    dec [hl]                                      ; $6d85: $35
    jp Jump_06f_4d44                              ; $6d86: $c3 $44 $4d


    ld c, a                                       ; $6d89: $4f
    ld c, c                                       ; $6d8a: $49
    ld b, l                                       ; $6d8b: $45
    rst $18                                       ; $6d8c: $df
    ld d, b                                       ; $6d8d: $50
    ld e, e                                       ; $6d8e: $5b
    ld e, e                                       ; $6d8f: $5b
    ld b, l                                       ; $6d90: $45
    ld [$2104], sp                                ; $6d91: $08 $04 $21
    rrca                                          ; $6d94: $0f
    rlca                                          ; $6d95: $07
    rlca                                          ; $6d96: $07
    inc b                                         ; $6d97: $04

jr_06f_6d98:
    inc bc                                        ; $6d98: $03
    ld b, [hl]                                    ; $6d99: $46
    inc a                                         ; $6d9a: $3c
    ld b, b                                       ; $6d9b: $40
    dec sp                                        ; $6d9c: $3b
    inc b                                         ; $6d9d: $04
    inc hl                                        ; $6d9e: $23
    ld b, $33                                     ; $6d9f: $06 $33
    inc bc                                        ; $6da1: $03
    ret nz                                        ; $6da2: $c0

    ld [c], a                                     ; $6da3: $e2
    ld e, b                                       ; $6da4: $58
    sub d                                         ; $6da5: $92
    ld b, c                                       ; $6da6: $41
    inc bc                                        ; $6da7: $03
    jp nz, $e141                                  ; $6da8: $c2 $41 $e1

    xor h                                         ; $6dab: $ac
    ld a, [hl-]                                   ; $6dac: $3a
    ld b, l                                       ; $6dad: $45
    ld b, b                                       ; $6dae: $40
    ld b, e                                       ; $6daf: $43
    or [hl]                                       ; $6db0: $b6
    and b                                         ; $6db1: $a0
    inc de                                        ; $6db2: $13
    ld b, a                                       ; $6db3: $47
    ld d, b                                       ; $6db4: $50
    inc b                                         ; $6db5: $04
    ld hl, $c15f                                  ; $6db6: $21 $5f $c1
    xor [hl]                                      ; $6db9: $ae
    ret nz                                        ; $6dba: $c0

    pop hl                                        ; $6dbb: $e1
    ld h, [hl]                                    ; $6dbc: $66
    inc b                                         ; $6dbd: $04
    inc a                                         ; $6dbe: $3c
    db $e4                                        ; $6dbf: $e4
    cp h                                          ; $6dc0: $bc
    inc h                                         ; $6dc1: $24
    inc bc                                        ; $6dc2: $03
    ld b, d                                       ; $6dc3: $42
    and d                                         ; $6dc4: $a2
    ld b, [hl]                                    ; $6dc5: $46
    ld b, $99                                     ; $6dc6: $06 $99
    ld a, [bc]                                    ; $6dc8: $0a
    push de                                       ; $6dc9: $d5

jr_06f_6dca:
    ld b, b                                       ; $6dca: $40
    ld e, h                                       ; $6dcb: $5c
    cp $c3                                        ; $6dcc: $fe $c3
    and d                                         ; $6dce: $a2
    dec [hl]                                      ; $6dcf: $35
    dec [hl]                                      ; $6dd0: $35
    xor l                                         ; $6dd1: $ad
    add hl, sp                                    ; $6dd2: $39
    ld c, a                                       ; $6dd3: $4f
    ld h, b                                       ; $6dd4: $60
    ld e, l                                       ; $6dd5: $5d
    db $ed                                        ; $6dd6: $ed
    ld c, h                                       ; $6dd7: $4c
    adc d                                         ; $6dd8: $8a
    add b                                         ; $6dd9: $80
    ld e, l                                       ; $6dda: $5d
    ld e, l                                       ; $6ddb: $5d
    inc b                                         ; $6ddc: $04
    ld hl, $4606                                  ; $6ddd: $21 $06 $46
    xor [hl]                                      ; $6de0: $ae
    inc bc                                        ; $6de1: $03
    xor [hl]                                      ; $6de2: $ae
    xor a                                         ; $6de3: $af
    inc a                                         ; $6de4: $3c
    ld [hl+], a                                   ; $6de5: $22
    daa                                           ; $6de6: $27
    inc bc                                        ; $6de7: $03
    ret c                                         ; $6de8: $d8

    dec h                                         ; $6de9: $25
    add hl, hl                                    ; $6dea: $29
    ld [c], a                                     ; $6deb: $e2
    and d                                         ; $6dec: $a2
    ret nz                                        ; $6ded: $c0

    ld b, b                                       ; $6dee: $40
    ldh [$bf], a                                  ; $6def: $e0 $bf
    dec b                                         ; $6df1: $05
    sbc c                                         ; $6df2: $99
    ld b, $45                                     ; $6df3: $06 $45
    ld d, [hl]                                    ; $6df5: $56
    ld e, b                                       ; $6df6: $58
    adc d                                         ; $6df7: $8a
    ld h, b                                       ; $6df8: $60
    ld d, d                                       ; $6df9: $52
    or $81                                        ; $6dfa: $f6 $81
    pop hl                                        ; $6dfc: $e1
    dec [hl]                                      ; $6dfd: $35
    ld b, d                                       ; $6dfe: $42
    add c                                         ; $6dff: $81
    add [hl]                                      ; $6e00: $86
    ld e, d                                       ; $6e01: $5a
    ld b, $98                                     ; $6e02: $06 $98
    sbc c                                         ; $6e04: $99
    ld c, a                                       ; $6e05: $4f
    ld a, [bc]                                    ; $6e06: $0a
    ld b, [hl]                                    ; $6e07: $46
    xor a                                         ; $6e08: $af
    xor a                                         ; $6e09: $af
    ld b, c                                       ; $6e0a: $41
    ldh [$81], a                                  ; $6e0b: $e0 $81
    ld b, l                                       ; $6e0d: $45
    sub a                                         ; $6e0e: $97
    ret c                                         ; $6e0f: $d8

    dec h                                         ; $6e10: $25
    or b                                          ; $6e11: $b0
    ld e, e                                       ; $6e12: $5b
    ld b, c                                       ; $6e13: $41
    inc b                                         ; $6e14: $04
    ldh [$fd], a                                  ; $6e15: $e0 $fd
    pop hl                                        ; $6e17: $e1
    ret nz                                        ; $6e18: $c0

    ldh [rSCX], a                                 ; $6e19: $e0 $43
    ld d, l                                       ; $6e1b: $55
    jp Jump_06f_53a0                              ; $6e1c: $c3 $a0 $53


    db $eb                                        ; $6e1f: $eb
    ld b, l                                       ; $6e20: $45
    ld [hl], $81                                  ; $6e21: $36 $81
    ldh [$3a], a                                  ; $6e23: $e0 $3a
    jp nz, Jump_06f_6086                          ; $6e25: $c2 $86 $60

    ld d, l                                       ; $6e28: $55
    ld [$c006], sp                                ; $6e29: $08 $06 $c0
    ldh [$ae], a                                  ; $6e2c: $e0 $ae
    ld b, [hl]                                    ; $6e2e: $46
    ld [bc], a                                    ; $6e2f: $02
    ret z                                         ; $6e30: $c8

    ret nz                                        ; $6e31: $c0

    ld [c], a                                     ; $6e32: $e2
    ld [hl], c                                    ; $6e33: $71
    jp nz, $a187                                  ; $6e34: $c2 $87 $a1

    ret nz                                        ; $6e37: $c0

    db $e4                                        ; $6e38: $e4
    ld a, $ce                                     ; $6e39: $3e $ce
    ld b, b                                       ; $6e3b: $40
    ld a, [hl-]                                   ; $6e3c: $3a
    add hl, sp                                    ; $6e3d: $39
    ld b, l                                       ; $6e3e: $45
    ld b, e                                       ; $6e3f: $43
    ccf                                           ; $6e40: $3f
    jp nz, $8140                                  ; $6e41: $c2 $40 $81

    ldh [$8f], a                                  ; $6e44: $e0 $8f
    add hl, sp                                    ; $6e46: $39
    ld c, d                                       ; $6e47: $4a
    ld c, c                                       ; $6e48: $49
    ld c, b                                       ; $6e49: $48
    ld b, b                                       ; $6e4a: $40
    pop bc                                        ; $6e4b: $c1
    cp a                                          ; $6e4c: $bf
    ld b, b                                       ; $6e4d: $40
    ld b, h                                       ; $6e4e: $44
    nop                                           ; $6e4f: $00
    sbc c                                         ; $6e50: $99
    rrca                                          ; $6e51: $0f
    ld a, [bc]                                    ; $6e52: $0a
    xor a                                         ; $6e53: $af
    dec b                                         ; $6e54: $05
    db $10                                        ; $6e55: $10
    push bc                                       ; $6e56: $c5
    ld h, h                                       ; $6e57: $64
    ret nz                                        ; $6e58: $c0

    and $62                                       ; $6e59: $e6 $62
    nop                                           ; $6e5b: $00
    ld c, b                                       ; $6e5c: $48
    and b                                         ; $6e5d: $a0
    rst $20                                       ; $6e5e: $e7
    ld b, l                                       ; $6e5f: $45
    ld b, c                                       ; $6e60: $41
    ld b, l                                       ; $6e61: $45
    ld a, a                                       ; $6e62: $7f
    db $e3                                        ; $6e63: $e3
    ld b, b                                       ; $6e64: $40
    ret nz                                        ; $6e65: $c0

    ld a, [hl-]                                   ; $6e66: $3a
    dec [hl]                                      ; $6e67: $35
    dec sp                                        ; $6e68: $3b
    db $fd                                        ; $6e69: $fd
    dec sp                                        ; $6e6a: $3b
    add hl, bc                                    ; $6e6b: $09
    and b                                         ; $6e6c: $a0
    dec [hl]                                      ; $6e6d: $35
    xor h                                         ; $6e6e: $ac
    xor l                                         ; $6e6f: $ad
    ld [hl], $45                                  ; $6e70: $36 $45
    ld c, d                                       ; $6e72: $4a
    inc de                                        ; $6e73: $13
    ld h, c                                       ; $6e74: $61
    ld h, b                                       ; $6e75: $60
    ld b, $41                                     ; $6e76: $06 $41
    res 0, h                                      ; $6e78: $cb $84
    ld b, $84                                     ; $6e7a: $06 $84
    ret nz                                        ; $6e7c: $c0

    pop bc                                        ; $6e7d: $c1
    dec h                                         ; $6e7e: $25
    add b                                         ; $6e7f: $80
    rst $20                                       ; $6e80: $e7
    ld c, $c1                                     ; $6e81: $0e $c1
    pop hl                                        ; $6e83: $e1
    ld [hl], $a6                                  ; $6e84: $36 $a6
    ld [hl], $bf                                  ; $6e86: $36 $bf
    db $e3                                        ; $6e88: $e3
    ld c, [hl]                                    ; $6e89: $4e
    ld b, b                                       ; $6e8a: $40
    ld c, c                                       ; $6e8b: $49
    ret nz                                        ; $6e8c: $c0

    ld b, $e0                                     ; $6e8d: $06 $e0
    dec hl                                        ; $6e8f: $2b
    xor h                                         ; $6e90: $ac
    dec [hl]                                      ; $6e91: $35
    pop bc                                        ; $6e92: $c1
    ldh [rBGP], a                                 ; $6e93: $e0 $47
    ret                                           ; $6e95: $c9


    ld hl, $be52                                  ; $6e96: $21 $52 $be
    and c                                         ; $6e99: $a1
    nop                                           ; $6e9a: $00
    pop bc                                        ; $6e9b: $c1
    ret nc                                        ; $6e9c: $d0

    ld h, h                                       ; $6e9d: $64
    ld b, b                                       ; $6e9e: $40
    ld h, l                                       ; $6e9f: $65
    ld b, c                                       ; $6ea0: $41
    ld [bc], a                                    ; $6ea1: $02
    add $00                                       ; $6ea2: $c6 $00
    db $e4                                        ; $6ea4: $e4
    ld b, $c1                                     ; $6ea5: $06 $c1
    ldh [$62], a                                  ; $6ea7: $e0 $62
    and a                                         ; $6ea9: $a7
    db $dd                                        ; $6eaa: $dd
    ld h, [hl]                                    ; $6eab: $66
    cp a                                          ; $6eac: $bf
    db $e3                                        ; $6ead: $e3
    ld b, $98                                     ; $6eae: $06 $98
    ld b, $06                                     ; $6eb0: $06 $06
    ld [c], a                                     ; $6eb2: $e2
    dec [hl]                                      ; $6eb3: $35
    xor l                                         ; $6eb4: $ad
    ld e, h                                       ; $6eb5: $5c
    rlca                                          ; $6eb6: $07
    add b                                         ; $6eb7: $80
    dec sp                                        ; $6eb8: $3b
    and b                                         ; $6eb9: $a0
    ld d, d                                       ; $6eba: $52
    ld d, e                                       ; $6ebb: $53
    ld d, h                                       ; $6ebc: $54
    or l                                          ; $6ebd: $b5
    add b                                         ; $6ebe: $80
    ld e, c                                       ; $6ebf: $59
    dec bc                                        ; $6ec0: $0b
    ld b, b                                       ; $6ec1: $40
    or b                                          ; $6ec2: $b0
    rst $20                                       ; $6ec3: $e7
    ld [hl+], a                                   ; $6ec4: $22
    jp nc, $cf22                                  ; $6ec5: $d2 $22 $cf

    ld b, [hl]                                    ; $6ec8: $46
    adc $22                                       ; $6ec9: $ce $22
    ld c, $05                                     ; $6ecb: $0e $05
    pop bc                                        ; $6ecd: $c1
    ldh [$67], a                                  ; $6ece: $e0 $67
    di                                            ; $6ed0: $f3
    and e                                         ; $6ed1: $a3
    ld l, b                                       ; $6ed2: $68
    cp a                                          ; $6ed3: $bf
    ld [c], a                                     ; $6ed4: $e2
    db $e4                                        ; $6ed5: $e4
    jr nz, jr_06f_6ee7                            ; $6ed6: $20 $0f

    ld [bc], a                                    ; $6ed8: $02
    ld b, l                                       ; $6ed9: $45
    scf                                           ; $6eda: $37
    cp a                                          ; $6edb: $bf
    dec a                                         ; $6edc: $3d
    dec a                                         ; $6edd: $3d
    dec a                                         ; $6ede: $3d
    scf                                           ; $6edf: $37
    ld b, l                                       ; $6ee0: $45
    ld b, e                                       ; $6ee1: $43
    add l                                         ; $6ee2: $85
    ld h, d                                       ; $6ee3: $62
    ld c, c                                       ; $6ee4: $49
    add hl, bc                                    ; $6ee5: $09
    ld b, l                                       ; $6ee6: $45

jr_06f_6ee7:
    ld a, d                                       ; $6ee7: $7a
    ld h, b                                       ; $6ee8: $60
    inc [hl]                                      ; $6ee9: $34
    ld h, b                                       ; $6eea: $60
    rlca                                          ; $6eeb: $07
    ld b, l                                       ; $6eec: $45
    and c                                         ; $6eed: $a1
    sub h                                         ; $6eee: $94
    daa                                           ; $6eef: $27
    ret nz                                        ; $6ef0: $c0

    db $e3                                        ; $6ef1: $e3
    adc c                                         ; $6ef2: $89
    add c                                         ; $6ef3: $81
    rst $38                                       ; $6ef4: $ff
    ld [$4246], sp                                ; $6ef5: $08 $46 $42
    xor b                                         ; $6ef8: $a8
    xor c                                         ; $6ef9: $a9
    ld l, h                                       ; $6efa: $6c
    dec [hl]                                      ; $6efb: $35
    dec [hl]                                      ; $6efc: $35
    or $bf                                        ; $6efd: $f6 $bf
    pop hl                                        ; $6eff: $e1
    dec b                                         ; $6f00: $05
    ld c, $9e                                     ; $6f01: $0e $9e
    and c                                         ; $6f03: $a1
    ld b, e                                       ; $6f04: $43
    ld b, e                                       ; $6f05: $43
    scf                                           ; $6f06: $37
    ld b, l                                       ; $6f07: $45
    db $dd                                        ; $6f08: $dd
    ld d, b                                       ; $6f09: $50
    ld a, h                                       ; $6f0a: $7c
    ld h, b                                       ; $6f0b: $60
    ld d, l                                       ; $6f0c: $55
    ld c, c                                       ; $6f0d: $49
    ld c, b                                       ; $6f0e: $48
    inc [hl]                                      ; $6f0f: $34
    and b                                         ; $6f10: $a0
    ld d, b                                       ; $6f11: $50
    dec bc                                        ; $6f12: $0b
    ld a, a                                       ; $6f13: $7f
    dec bc                                        ; $6f14: $0b
    ld [bc], a                                    ; $6f15: $02
    inc b                                         ; $6f16: $04
    inc bc                                        ; $6f17: $03
    ld b, c                                       ; $6f18: $41
    scf                                           ; $6f19: $37
    scf                                           ; $6f1a: $37
    ld b, [hl]                                    ; $6f1b: $46
    ld hl, $13f8                                  ; $6f1c: $21 $f8 $13
    ld b, h                                       ; $6f1f: $44
    adc e                                         ; $6f20: $8b
    and h                                         ; $6f21: $a4
    ret nz                                        ; $6f22: $c0

    db $e4                                        ; $6f23: $e4
    ld b, l                                       ; $6f24: $45
    ld [hl], $6e                                  ; $6f25: $36 $6e
    ld l, a                                       ; $6f27: $6f
    ld l, h                                       ; $6f28: $6c
    rst $38                                       ; $6f29: $ff
    dec [hl]                                      ; $6f2a: $35
    and e                                         ; $6f2b: $a3
    xor d                                         ; $6f2c: $aa
    xor e                                         ; $6f2d: $ab
    ld [hl], $0a                                  ; $6f2e: $36 $0a
    rrca                                          ; $6f30: $0f
    ld [bc], a                                    ; $6f31: $02
    rst $38                                       ; $6f32: $ff
    ccf                                           ; $6f33: $3f
    ld b, e                                       ; $6f34: $43
    jr c, jr_06f_6f72                             ; $6f35: $38 $3b

    add hl, sp                                    ; $6f37: $39
    dec [hl]                                      ; $6f38: $35
    ld b, b                                       ; $6f39: $40
    ld e, a                                       ; $6f3a: $5f
    cp $58                                        ; $6f3b: $fe $58
    ld b, c                                       ; $6f3d: $41
    ld d, h                                       ; $6f3e: $54
    ld d, e                                       ; $6f3f: $53
    ld c, b                                       ; $6f40: $48
    ld c, [hl]                                    ; $6f41: $4e
    ld c, c                                       ; $6f42: $49
    ld e, l                                       ; $6f43: $5d
    ld e, h                                       ; $6f44: $5c
    dec sp                                        ; $6f45: $3b
    ld a, [hl-]                                   ; $6f46: $3a
    add hl, sp                                    ; $6f47: $39
    ld [hl], d                                    ; $6f48: $72
    pop bc                                        ; $6f49: $c1
    jr c, jr_06f_6f83                             ; $6f4a: $38 $37

    ccf                                           ; $6f4c: $3f
    adc b                                         ; $6f4d: $88
    ld h, l                                       ; $6f4e: $65
    ld c, h                                       ; $6f4f: $4c
    and h                                         ; $6f50: $a4
    or $80                                        ; $6f51: $f6 $80
    db $e3                                        ; $6f53: $e3
    ld c, $05                                     ; $6f54: $0e $05
    cp a                                          ; $6f56: $bf
    db $e3                                        ; $6f57: $e3
    ld l, h                                       ; $6f58: $6c
    ld l, a                                       ; $6f59: $6f
    ld l, [hl]                                    ; $6f5a: $6e
    ld [hl], $5f                                  ; $6f5b: $36 $5f
    ld a, [bc]                                    ; $6f5d: $0a
    ld [$3544], sp                                ; $6f5e: $08 $44 $35
    ld b, b                                       ; $6f61: $40
    add h                                         ; $6f62: $84
    pop bc                                        ; $6f63: $c1
    add hl, sp                                    ; $6f64: $39
    adc c                                         ; $6f65: $89
    ld hl, $5587                                  ; $6f66: $21 $87 $55
    ld b, [hl]                                    ; $6f69: $46
    ld b, h                                       ; $6f6a: $44
    add $81                                       ; $6f6b: $c6 $81
    rst $30                                       ; $6f6d: $f7
    and b                                         ; $6f6e: $a0
    jp nz, $f0e1                                  ; $6f6f: $c2 $e1 $f0

jr_06f_6f72:
    nop                                           ; $6f72: $00
    ld a, [bc]                                    ; $6f73: $0a
    sbc b                                         ; $6f74: $98
    add [hl]                                      ; $6f75: $86
    inc b                                         ; $6f76: $04
    ld c, e                                       ; $6f77: $4b
    and l                                         ; $6f78: $a5
    ret                                           ; $6f79: $c9


    ld h, e                                       ; $6f7a: $63
    ld b, $46                                     ; $6f7b: $06 $46
    ld a, [hl]                                    ; $6f7d: $7e
    ld [c], a                                     ; $6f7e: $e2
    pop bc                                        ; $6f7f: $c1
    ldh [rLYC], a                                 ; $6f80: $e0 $45
    ld [hl], a                                    ; $6f82: $77

jr_06f_6f83:
    ld b, $08                                     ; $6f83: $06 $08
    ld b, b                                       ; $6f85: $40
    ret nz                                        ; $6f86: $c0

    db $e3                                        ; $6f87: $e3
    ld a, [hl-]                                   ; $6f88: $3a
    ld d, e                                       ; $6f89: $53
    ld d, h                                       ; $6f8a: $54
    sub $61                                       ; $6f8b: $d6 $61
    ld l, a                                       ; $6f8d: $6f
    inc b                                         ; $6f8e: $04
    inc bc                                        ; $6f8f: $03
    ld d, d                                       ; $6f90: $52
    ld d, [hl]                                    ; $6f91: $56
    ld [hl], c                                    ; $6f92: $71
    pop bc                                        ; $6f93: $c1
    dec [hl]                                      ; $6f94: $35
    ld [hl], $b1                                  ; $6f95: $36 $b1
    and c                                         ; $6f97: $a1
    ld bc, $c03a                                  ; $6f98: $01 $3a $c0
    ld [c], a                                     ; $6f9b: $e2
    add h                                         ; $6f9c: $84
    and h                                         ; $6f9d: $a4
    call $c981                                    ; $6f9e: $cd $81 $c9
    inc hl                                        ; $6fa1: $23
    ld a, a                                       ; $6fa2: $7f
    ldh [$3d], a                                  ; $6fa3: $e0 $3d

jr_06f_6fa5:
    pop hl                                        ; $6fa5: $e1
    pop bc                                        ; $6fa6: $c1
    ldh [$66], a                                  ; $6fa7: $e0 $66
    jp nz, Jump_000_3681                          ; $6fa9: $c2 $81 $36

    add hl, sp                                    ; $6fac: $39
    ld a, [bc]                                    ; $6fad: $0a
    add b                                         ; $6fae: $80
    ld d, d                                       ; $6faf: $52
    pop hl                                        ; $6fb0: $e1
    ld b, l                                       ; $6fb1: $45
    ld [bc], a                                    ; $6fb2: $02
    ld bc, $0340                                  ; $6fb3: $01 $40 $03
    dec c                                         ; $6fb6: $0d
    dec b                                         ; $6fb7: $05
    ei                                            ; $6fb8: $fb
    ld h, c                                       ; $6fb9: $61
    pop bc                                        ; $6fba: $c1
    db $e3                                        ; $6fbb: $e3
    ld [hl], c                                    ; $6fbc: $71
    nop                                           ; $6fbd: $00
    ld b, h                                       ; $6fbe: $44
    ret z                                         ; $6fbf: $c8

    sub c                                         ; $6fc0: $91
    ld hl, $4448                                  ; $6fc1: $21 $48 $44
    ld [hl], b                                    ; $6fc4: $70
    ld a, a                                       ; $6fc5: $7f
    ldh [$fe], a                                  ; $6fc6: $e0 $fe
    and b                                         ; $6fc8: $a0
    rst $38                                       ; $6fc9: $ff
    and c                                         ; $6fca: $a1
    ld [bc], a                                    ; $6fcb: $02
    ld h, b                                       ; $6fcc: $60
    ld b, b                                       ; $6fcd: $40
    ld a, $3e                                     ; $6fce: $3e $3e
    jp Jump_06f_5ba1                              ; $6fd0: $c3 $a1 $5b


    dec [hl]                                      ; $6fd3: $35
    jr c, jr_06f_6fa5                             ; $6fd4: $38 $cf

    ld h, d                                       ; $6fd6: $62
    sbc c                                         ; $6fd7: $99
    ld a, [bc]                                    ; $6fd8: $0a
    ld sp, $3ae1                                  ; $6fd9: $31 $e1 $3a
    pop bc                                        ; $6fdc: $c1
    ld [c], a                                     ; $6fdd: $e2
    ld b, c                                       ; $6fde: $41
    ld [hl], $7d                                  ; $6fdf: $36 $7d
    add c                                         ; $6fe1: $81
    ld b, h                                       ; $6fe2: $44
    and [hl]                                      ; $6fe3: $a6
    ld b, [hl]                                    ; $6fe4: $46
    and c                                         ; $6fe5: $a1
    adc h                                         ; $6fe6: $8c
    dec b                                         ; $6fe7: $05
    ld [bc], a                                    ; $6fe8: $02
    and c                                         ; $6fe9: $a1
    ld b, l                                       ; $6fea: $45
    ld a, a                                       ; $6feb: $7f
    and c                                         ; $6fec: $a1
    and l                                         ; $6fed: $a5
    ld b, $48                                     ; $6fee: $06 $48
    nop                                           ; $6ff0: $00
    ld a, [hl-]                                   ; $6ff1: $3a
    ld c, a                                       ; $6ff2: $4f
    ld [c], a                                     ; $6ff3: $e2
    ld c, [hl]                                    ; $6ff4: $4e
    ldh [$08], a                                  ; $6ff5: $e0 $08
    pop hl                                        ; $6ff7: $e1
    ld bc, $0306                                  ; $6ff8: $01 $06 $03
    dec bc                                        ; $6ffb: $0b
    ld b, d                                       ; $6ffc: $42
    ld a, [hl]                                    ; $6ffd: $7e
    ld b, b                                       ; $6ffe: $40
    pop bc                                        ; $6fff: $c1
    db $e4                                        ; $7000: $e4
    ld b, h                                       ; $7001: $44
    xor c                                         ; $7002: $a9
    ld b, $a1                                     ; $7003: $06 $a1
    ld c, b                                       ; $7005: $48
    inc hl                                        ; $7006: $23
    call nc, $8601                                ; $7007: $d4 $01 $86
    rst $38                                       ; $700a: $ff
    add h                                         ; $700b: $84
    dec b                                         ; $700c: $05
    ld c, $01                                     ; $700d: $0e $01
    and c                                         ; $700f: $a1
    ccf                                           ; $7010: $3f
    ld [c], a                                     ; $7011: $e2

jr_06f_7012:
    ld d, d                                       ; $7012: $52
    ld [c], a                                     ; $7013: $e2
    xor h                                         ; $7014: $ac
    ld hl, $010c                                  ; $7015: $21 $0c $01
    ld a, [hl-]                                   ; $7018: $3a
    xor [hl]                                      ; $7019: $ae
    ld [c], a                                     ; $701a: $e2
    add d                                         ; $701b: $82
    ldh [$e7], a                                  ; $701c: $e0 $e7
    ld [bc], a                                    ; $701e: $02
    add b                                         ; $701f: $80
    jp hl                                         ; $7020: $e9


    ld [$be26], sp                                ; $7021: $08 $26 $be
    add [hl]                                      ; $7024: $86
    ld b, c                                       ; $7025: $41
    ld b, b                                       ; $7026: $40
    ld h, l                                       ; $7027: $65
    add hl, sp                                    ; $7028: $39
    ld a, a                                       ; $7029: $7f
    db $e4                                        ; $702a: $e4
    ld a, $92                                     ; $702b: $3e $92
    ret nz                                        ; $702d: $c0

    xor [hl]                                      ; $702e: $ae
    ld bc, $4502                                  ; $702f: $01 $02 $45
    ld hl, sp+$41                                 ; $7032: $f8 $41
    and b                                         ; $7034: $a0
    ld b, e                                       ; $7035: $43
    ldh [rTAC], a                                 ; $7036: $e0 $07
    ld h, e                                       ; $7038: $63
    nop                                           ; $7039: $00
    add sp, -$80                                  ; $703a: $e8 $80
    db $e3                                        ; $703c: $e3
    ld a, $8a                                     ; $703d: $3e $8a
    ld [$403c], sp                                ; $703f: $08 $3c $40
    ld [hl], $6d                                  ; $7042: $36 $6d
    ld [hl], $4e                                  ; $7044: $36 $4e
    jp nz, Jump_000_0a39                          ; $7046: $c2 $39 $0a

    rrca                                          ; $7049: $0f
    ld h, e                                       ; $704a: $63
    rrca                                          ; $704b: $0f
    ld [bc], a                                    ; $704c: $02
    ld l, $c0                                     ; $704d: $2e $c0
    nop                                           ; $704f: $00
    pop bc                                        ; $7050: $c1
    pop hl                                        ; $7051: $e1
    sub d                                         ; $7052: $92
    daa                                           ; $7053: $27
    adc l                                         ; $7054: $8d
    ld h, l                                       ; $7055: $65
    push af                                       ; $7056: $f5
    push hl                                       ; $7057: $e5

jr_06f_7058:
    cp [hl]                                       ; $7058: $be
    ld h, e                                       ; $7059: $63
    db $fc                                        ; $705a: $fc
    ld h, b                                       ; $705b: $60
    dec e                                         ; $705c: $1d
    pop hl                                        ; $705d: $e1
    cp a                                          ; $705e: $bf
    db $e4                                        ; $705f: $e4
    jr jr_06f_7095                                ; $7060: $18 $33

    ret nz                                        ; $7062: $c0

    ld de, $bfe2                                  ; $7063: $11 $e2 $bf
    pop hl                                        ; $7066: $e1
    scf                                           ; $7067: $37
    scf                                           ; $7068: $37
    pop bc                                        ; $7069: $c1
    pop hl                                        ; $706a: $e1
    db $d3                                        ; $706b: $d3
    inc h                                         ; $706c: $24
    ret nc                                        ; $706d: $d0

    ld b, a                                       ; $706e: $47
    ldh [rP1], a                                  ; $706f: $e0 $00
    pop hl                                        ; $7071: $e1
    ld a, $68                                     ; $7072: $3e $68
    and l                                         ; $7074: $a5
    ld b, c                                       ; $7075: $41
    sbc [hl]                                      ; $7076: $9e
    add c                                         ; $7077: $81
    ld a, [hl]                                    ; $7078: $7e
    ldh [$38], a                                  ; $7079: $e0 $38
    ccf                                           ; $707b: $3f
    ccf                                           ; $707c: $3f
    jr c, jr_06f_7058                             ; $707d: $38 $d9

    jr nz, jr_06f_7012                            ; $707f: $20 $91

    add c                                         ; $7081: $81
    and $41                                       ; $7082: $e6 $41
    rrca                                          ; $7084: $0f
    rlca                                          ; $7085: $07
    rlca                                          ; $7086: $07
    inc bc                                        ; $7087: $03
    ld h, b                                       ; $7088: $60
    push de                                       ; $7089: $d5
    inc hl                                        ; $708a: $23
    ret nz                                        ; $708b: $c0

    pop bc                                        ; $708c: $c1
    and h                                         ; $708d: $a4
    rst $08                                       ; $708e: $cf
    ld b, e                                       ; $708f: $43
    cp [hl]                                       ; $7090: $be
    ld c, d                                       ; $7091: $4a
    halt                                          ; $7092: $76
    ld h, c                                       ; $7093: $61
    ld a, a                                       ; $7094: $7f

jr_06f_7095:
    nop                                           ; $7095: $00
    cp [hl]                                       ; $7096: $be
    add c                                         ; $7097: $81
    inc b                                         ; $7098: $04
    add hl, bc                                    ; $7099: $09
    rlca                                          ; $709a: $07
    add hl, bc                                    ; $709b: $09
    inc b                                         ; $709c: $04
    dec c                                         ; $709d: $0d
    jp nc, Jump_06f_5841                          ; $709e: $d2 $41 $58

    ld bc, $22a8                                  ; $70a1: $01 $a8 $22
    push bc                                       ; $70a4: $c5
    add c                                         ; $70a5: $81
    jp nc, Jump_06f_40ed                          ; $70a6: $d2 $ed $40

    ret nz                                        ; $70a9: $c0

    pop hl                                        ; $70aa: $e1
    ld a, $47                                     ; $70ab: $3e $47
    cp $22                                        ; $70ad: $fe $22
    cp [hl]                                       ; $70af: $be
    inc bc                                        ; $70b0: $03
    jp z, Jump_06f_52c1                           ; $70b1: $ca $c1 $52

    ld b, b                                       ; $70b4: $40
    ld [$8172], sp                                ; $70b5: $08 $72 $81
    db $10                                        ; $70b8: $10
    ld h, [hl]                                    ; $70b9: $66
    ld b, e                                       ; $70ba: $43
    add a                                         ; $70bb: $87
    add e                                         ; $70bc: $83
    ld d, c                                       ; $70bd: $51
    ld b, [hl]                                    ; $70be: $46
    ld b, c                                       ; $70bf: $41
    db $e4                                        ; $70c0: $e4
    sbc c                                         ; $70c1: $99
    ld l, [hl]                                    ; $70c2: $6e
    db $e3                                        ; $70c3: $e3
    xor $85                                       ; $70c4: $ee $85
    cp [hl]                                       ; $70c6: $be
    inc bc                                        ; $70c7: $03
    add b                                         ; $70c8: $80
    ld a, a                                       ; $70c9: $7f
    ld [c], a                                     ; $70ca: $e2
    ld c, a                                       ; $70cb: $4f
    ld [c], a                                     ; $70cc: $e2
    jp nc, $a262                                  ; $70cd: $d2 $62 $a2

    ld b, e                                       ; $70d0: $43
    ld b, e                                       ; $70d1: $43
    db $e3                                        ; $70d2: $e3
    adc l                                         ; $70d3: $8d
    dec h                                         ; $70d4: $25
    adc l                                         ; $70d5: $8d
    ld b, e                                       ; $70d6: $43
    sbc c                                         ; $70d7: $99
    and b                                         ; $70d8: $a0
    ret nz                                        ; $70d9: $c0

    ldh [$bf], a                                  ; $70da: $e0 $bf
    db $e4                                        ; $70dc: $e4
    ld a, h                                       ; $70dd: $7c
    inc hl                                        ; $70de: $23
    ld [hl], h                                    ; $70df: $74
    ld h, e                                       ; $70e0: $63
    dec a                                         ; $70e1: $3d
    nop                                           ; $70e2: $00
    sbc c                                         ; $70e3: $99
    add hl, de                                    ; $70e4: $19
    ld b, b                                       ; $70e5: $40
    ld [bc], a                                    ; $70e6: $02
    nop                                           ; $70e7: $00
    sub e                                         ; $70e8: $93
    ld [hl+], a                                   ; $70e9: $22
    sub $21                                       ; $70ea: $d6 $21
    sbc e                                         ; $70ec: $9b
    dec b                                         ; $70ed: $05
    add h                                         ; $70ee: $84
    push hl                                       ; $70ef: $e5
    pop bc                                        ; $70f0: $c1
    db $e4                                        ; $70f1: $e4
    ret nz                                        ; $70f2: $c0

    db $e3                                        ; $70f3: $e3
    cp [hl]                                       ; $70f4: $be
    dec b                                         ; $70f5: $05
    or [hl]                                       ; $70f6: $b6
    and [hl]                                      ; $70f7: $a6
    nop                                           ; $70f8: $00
    call nc, $c0c2                                ; $70f9: $d4 $c2 $c0
    db $e3                                        ; $70fc: $e3
    db $e3                                        ; $70fd: $e3
    rst $20                                       ; $70fe: $e7
    add hl, de                                    ; $70ff: $19
    daa                                           ; $7100: $27
    db $10                                        ; $7101: $10
    ld b, [hl]                                    ; $7102: $46
    add c                                         ; $7103: $81
    pop hl                                        ; $7104: $e1
    db $dd                                        ; $7105: $dd
    db $e4                                        ; $7106: $e4
    ld a, $09                                     ; $7107: $3e $09
    nop                                           ; $7109: $00
    adc d                                         ; $710a: $8a
    db $e3                                        ; $710b: $e3
    adc a                                         ; $710c: $8f
    pop bc                                        ; $710d: $c1
    rst $08                                       ; $710e: $cf
    jp nz, Jump_000_05a3                          ; $710f: $c2 $a3 $05

    rlca                                          ; $7112: $07
    add sp, -$3f                                  ; $7113: $e8 $c1
    add sp, $5d                                   ; $7115: $e8 $5d
    push hl                                       ; $7117: $e5
    db $eb                                        ; $7118: $eb
    and h                                         ; $7119: $a4
    nop                                           ; $711a: $00
    ld d, $e5                                     ; $711b: $16 $e5
    db $ed                                        ; $711d: $ed
    inc hl                                        ; $711e: $23
    call c, $fe03                                 ; $711f: $dc $03 $fe
    add sp, $18                                   ; $7122: $e8 $18
    rst $00                                       ; $7124: $c7
    jp nz, $93e4                                  ; $7125: $c2 $e4 $93

    db $e4                                        ; $7128: $e4
    xor e                                         ; $7129: $ab
    xor d                                         ; $712a: $aa
    jr nz, jr_06f_714d                            ; $712b: $20 $20

    ld h, c                                       ; $712d: $61
    ld l, e                                       ; $712e: $6b
    db $e4                                        ; $712f: $e4
    ld d, [hl]                                    ; $7130: $56
    ld h, [hl]                                    ; $7131: $66
    rlca                                          ; $7132: $07
    db $ed                                        ; $7133: $ed
    pop bc                                        ; $7134: $c1
    and $99                                       ; $7135: $e6 $99
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    pop bc                                        ; $713a: $c1
    nop                                           ; $713b: $00
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    ld bc, $fe80                                  ; $7148: $01 $80 $fe
    ldh [rIE], a                                  ; $714b: $e0 $ff

jr_06f_714d:
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    add sp, $00                                   ; $7151: $e8 $00
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    ld [bc], a                                    ; $7155: $02
    nop                                           ; $7156: $00
    rra                                           ; $7157: $1f
    inc d                                         ; $7158: $14
    ld [bc], a                                    ; $7159: $02
    ld bc, $1515                                  ; $715a: $01 $15 $15
    ld [bc], a                                    ; $715d: $02
    ld [bc], a                                    ; $715e: $02
    inc d                                         ; $715f: $14
    ld d, $02                                     ; $7160: $16 $02
    inc bc                                        ; $7162: $03
    ld [de], a                                    ; $7163: $12
    dec de                                        ; $7164: $1b
    ld [bc], a                                    ; $7165: $02
    inc b                                         ; $7166: $04
    ld de, $021c                                  ; $7167: $11 $1c $02
    dec b                                         ; $716a: $05
    ld [hl+], a                                   ; $716b: $22
    inc e                                         ; $716c: $1c
    ld [bc], a                                    ; $716d: $02
    ld b, $21                                     ; $716e: $06 $21
    rra                                           ; $7170: $1f
    ld [bc], a                                    ; $7171: $02
    rlca                                          ; $7172: $07
    ld hl, $0224                                  ; $7173: $21 $24 $02
    ld [$2434], sp                                ; $7176: $08 $34 $24
    ld [bc], a                                    ; $7179: $02
    add hl, bc                                    ; $717a: $09
    ld [hl-], a                                   ; $717b: $32
    dec h                                         ; $717c: $25
    ld [bc], a                                    ; $717d: $02
    ld a, [bc]                                    ; $717e: $0a
    inc sp                                        ; $717f: $33
    dec h                                         ; $7180: $25
    ld [bc], a                                    ; $7181: $02
    dec bc                                        ; $7182: $0b
    jr nz, jr_06f_71ab                            ; $7183: $20 $26

    ld [bc], a                                    ; $7185: $02
    inc c                                         ; $7186: $0c
    ld sp, $0227                                  ; $7187: $31 $27 $02
    dec c                                         ; $718a: $0d
    rra                                           ; $718b: $1f
    jr z, jr_06f_7190                             ; $718c: $28 $02

    ld c, $1e                                     ; $718e: $0e $1e

jr_06f_7190:
    add hl, hl                                    ; $7190: $29
    ld [bc], a                                    ; $7191: $02
    rrca                                          ; $7192: $0f
    ld a, [de]                                    ; $7193: $1a
    ld a, [hl+]                                   ; $7194: $2a
    ld [bc], a                                    ; $7195: $02
    db $10                                        ; $7196: $10
    inc e                                         ; $7197: $1c
    ld a, [hl+]                                   ; $7198: $2a
    ld [bc], a                                    ; $7199: $02
    ld de, $3913                                  ; $719a: $11 $13 $39
    ld [bc], a                                    ; $719d: $02
    ld [de], a                                    ; $719e: $12
    inc d                                         ; $719f: $14
    dec sp                                        ; $71a0: $3b
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    xor h                                         ; $71a4: $ac
    ld [hl], c                                    ; $71a5: $71
    ld a, e                                       ; $71a6: $7b
    ld [hl], h                                    ; $71a7: $74
    ret nc                                        ; $71a8: $d0

    ld a, c                                       ; $71a9: $79
    db $eb                                        ; $71aa: $eb

jr_06f_71ab:
    ld a, c                                       ; $71ab: $79
    ld bc, $ff0c                                  ; $71ac: $01 $0c $ff
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
    nop                                           ; $71bc: $00
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
    ld a, [hl]                                    ; $71cd: $7e
    ld hl, sp-$09                                 ; $71ce: $f8 $f7
    inc l                                         ; $71d0: $2c
    inc l                                         ; $71d1: $2c
    ld l, h                                       ; $71d2: $6c
    ld l, h                                       ; $71d3: $6c
    ld l, h                                       ; $71d4: $6c
    ld c, h                                       ; $71d5: $4c
    rst $38                                       ; $71d6: $ff
    ldh [$e3], a                                  ; $71d7: $e0 $e3
    ld l, h                                       ; $71d9: $6c
    ld c, h                                       ; $71da: $4c
    db $d3                                        ; $71db: $d3
    rst $38                                       ; $71dc: $ff
    pop af                                        ; $71dd: $f1
    ldh a, [$c2]                                  ; $71de: $f0 $c2
    ldh [$2b], a                                  ; $71e0: $e0 $2b
    dec hl                                        ; $71e2: $2b
    ld c, e                                       ; $71e3: $4b
    adc a                                         ; $71e4: $8f
    ld c, e                                       ; $71e5: $4b
    ld c, e                                       ; $71e6: $4b
    dec hl                                        ; $71e7: $2b
    dec bc                                        ; $71e8: $0b
    cp e                                          ; $71e9: $bb
    ldh [$d1], a                                  ; $71ea: $e0 $d1
    rst $38                                       ; $71ec: $ff
    jp nz, Jump_000_0bf0                          ; $71ed: $c2 $f0 $0b

    ld a, a                                       ; $71f0: $7f
    dec bc                                        ; $71f1: $0b
    dec bc                                        ; $71f2: $0b
    ld l, e                                       ; $71f3: $6b
    ld c, e                                       ; $71f4: $4b
    ld c, e                                       ; $71f5: $4b
    dec bc                                        ; $71f6: $0b
    dec hl                                        ; $71f7: $2b
    cp [hl]                                       ; $71f8: $be
    rst $38                                       ; $71f9: $ff
    inc e                                         ; $71fa: $1c
    add e                                         ; $71fb: $83
    ldh a, [$c2]                                  ; $71fc: $f0 $c2
    ldh [rWX], a                                  ; $71fe: $e0 $4b
    ld l, e                                       ; $7200: $6b
    ld l, e                                       ; $7201: $6b
    db $fd                                        ; $7202: $fd
    ldh [$bd], a                                  ; $7203: $e0 $bd
    ldh [$be], a                                  ; $7205: $e0 $be
    ld [c], a                                     ; $7207: $e2
    ld e, b                                       ; $7208: $58
    set 7, a                                      ; $7209: $cb $ff
    pop bc                                        ; $720b: $c1
    db $eb                                        ; $720c: $eb
    jp nz, Jump_06f_6be4                          ; $720d: $c2 $e4 $6b

    dec bc                                        ; $7210: $0b
    ld a, l                                       ; $7211: $7d
    ldh [$0b], a                                  ; $7212: $e0 $0b
    ld a, l                                       ; $7214: $7d
    pop hl                                        ; $7215: $e1
    ld h, e                                       ; $7216: $63
    inc l                                         ; $7217: $2c
    inc l                                         ; $7218: $2c
    rst $00                                       ; $7219: $c7
    rst $38                                       ; $721a: $ff
    rst $00                                       ; $721b: $c7
    push bc                                       ; $721c: $c5
    pop bc                                        ; $721d: $c1
    pop hl                                        ; $721e: $e1
    ld c, e                                       ; $721f: $4b
    dec hl                                        ; $7220: $2b
    rst $00                                       ; $7221: $c7
    ld [c], a                                     ; $7222: $e2
    ld b, b                                       ; $7223: $40
    dec a                                         ; $7224: $3d
    ldh [$3b], a                                  ; $7225: $e0 $3b

jr_06f_7227:
    pop hl                                        ; $7227: $e1
    ld a, [hl]                                    ; $7228: $7e
    rst $38                                       ; $7229: $ff
    add d                                         ; $722a: $82
    db $ec                                        ; $722b: $ec
    adc d                                         ; $722c: $8a
    ldh [$86], a                                  ; $722d: $e0 $86
    pop hl                                        ; $722f: $e1
    dec bc                                        ; $7230: $0b
    cp h                                          ; $7231: $bc
    ret nz                                        ; $7232: $c0

    inc b                                         ; $7233: $04
    rst $30                                       ; $7234: $f7
    ret nz                                        ; $7235: $c0

    ld a, [hl]                                    ; $7236: $7e
    ldh [$6c], a                                  ; $7237: $e0 $6c
    add $ff                                       ; $7239: $c6 $ff
    pop bc                                        ; $723b: $c1
    ld [$e288], a                                 ; $723c: $ea $88 $e2
    ld b, [hl]                                    ; $723f: $46
    ldh [$f8], a                                  ; $7240: $e0 $f8
    db $e3                                        ; $7242: $e3
    db $d3                                        ; $7243: $d3
    dec bc                                        ; $7244: $0b
    dec bc                                        ; $7245: $0b
    jr c, jr_06f_7227                             ; $7246: $38 $df

    db $e4                                        ; $7248: $e4
    db $e3                                        ; $7249: $e3
    ld c, h                                       ; $724a: $4c
    inc b                                         ; $724b: $04
    pop hl                                        ; $724c: $e1
    ld a, [bc]                                    ; $724d: $0a
    ld a, [hl+]                                   ; $724e: $2a
    ret nz                                        ; $724f: $c0

    jp z, $82e4                                   ; $7250: $ca $e4 $82

    ret nz                                        ; $7253: $c0

    ccf                                           ; $7254: $3f
    ld [c], a                                     ; $7255: $e2
    ei                                            ; $7256: $fb
    ret nz                                        ; $7257: $c0

    ld a, a                                       ; $7258: $7f
    rst $38                                       ; $7259: $ff
    ld [$4cc2], sp                                ; $725a: $08 $c2 $4c
    dec hl                                        ; $725d: $2b
    ccf                                           ; $725e: $3f
    ld l, e                                       ; $725f: $6b
    ld l, e                                       ; $7260: $6b
    ld a, [bc]                                    ; $7261: $0a
    ld a, [bc]                                    ; $7262: $0a
    ld a, [bc]                                    ; $7263: $0a
    ld c, d                                       ; $7264: $4a
    rlca                                          ; $7265: $07
    ld [c], a                                     ; $7266: $e2
    jp Jump_06f_60c1                              ; $7267: $c3 $c1 $60


    ld sp, hl                                     ; $726a: $f9
    db $e4                                        ; $726b: $e4
    ld a, a                                       ; $726c: $7f
    rst $38                                       ; $726d: $ff
    adc b                                         ; $726e: $88
    and e                                         ; $726f: $a3
    ld c, d                                       ; $7270: $4a
    ret nz                                        ; $7271: $c0

    pop bc                                        ; $7272: $c1
    ldh [$0a], a                                  ; $7273: $e0 $0a
    ld a, [bc]                                    ; $7275: $0a
    adc l                                         ; $7276: $8d
    ldh [$e0], a                                  ; $7277: $e0 $e0
    cp a                                          ; $7279: $bf
    db $e3                                        ; $727a: $e3
    cp b                                          ; $727b: $b8
    db $e3                                        ; $727c: $e3
    ld a, a                                       ; $727d: $7f
    rst $38                                       ; $727e: $ff
    ld c, b                                       ; $727f: $48
    and l                                         ; $7280: $a5
    rst $08                                       ; $7281: $cf
    and b                                         ; $7282: $a0
    ld a, [hl+]                                   ; $7283: $2a
    ld c, d                                       ; $7284: $4a
    ld c, d                                       ; $7285: $4a
    ldh a, [$80]                                  ; $7286: $f0 $80
    push hl                                       ; $7288: $e5
    ld a, [$7fe5]                                 ; $7289: $fa $e5 $7f
    rst $38                                       ; $728c: $ff
    push bc                                       ; $728d: $c5
    and [hl]                                      ; $728e: $a6
    dec hl                                        ; $728f: $2b
    dec hl                                        ; $7290: $2b
    ld a, [bc]                                    ; $7291: $0a
    ld c, d                                       ; $7292: $4a
    add e                                         ; $7293: $83
    ld c, d                                       ; $7294: $4a
    ld a, [bc]                                    ; $7295: $0a
    ld b, e                                       ; $7296: $43
    and c                                         ; $7297: $a1
    cp e                                          ; $7298: $bb
    pop bc                                        ; $7299: $c1
    add b                                         ; $729a: $80
    push hl                                       ; $729b: $e5
    ld a, a                                       ; $729c: $7f
    rst $38                                       ; $729d: $ff
    inc b                                         ; $729e: $04
    call nz, $012b                                ; $729f: $c4 $2b $01
    dec bc                                        ; $72a2: $0b
    ret nz                                        ; $72a3: $c0

    ld [c], a                                     ; $72a4: $e2
    ret z                                         ; $72a5: $c8

    and $80                                       ; $72a6: $e6 $80
    and $7f                                       ; $72a8: $e6 $7f
    pop hl                                        ; $72aa: $e1
    cp d                                          ; $72ab: $ba
    cp h                                          ; $72ac: $bc
    add hl, bc                                    ; $72ad: $09
    and d                                         ; $72ae: $a2
    rst $38                                       ; $72af: $ff
    ret nz                                        ; $72b0: $c0

    ld [$ebc0], sp                                ; $72b1: $08 $c0 $eb
    ld a, l                                       ; $72b4: $7d
    rst $18                                       ; $72b5: $df
    ld [$2ba9], sp                                ; $72b6: $08 $a9 $2b
    add d                                         ; $72b9: $82
    pop bc                                        ; $72ba: $c1
    ld b, b                                       ; $72bb: $40
    ld [c], a                                     ; $72bc: $e2
    add h                                         ; $72bd: $84
    call nz, $ea7f                                ; $72be: $c4 $7f $ea
    nop                                           ; $72c1: $00
    ret                                           ; $72c2: $c9


    sbc a                                         ; $72c3: $9f
    ld [bc], a                                    ; $72c4: $02
    pop hl                                        ; $72c5: $e1
    nop                                           ; $72c6: $00
    ld [c], a                                     ; $72c7: $e2
    ld a, [hl]                                    ; $72c8: $7e
    jp nz, $c7fd                                  ; $72c9: $c2 $fd $c7

    ld a, a                                       ; $72cc: $7f
    pop hl                                        ; $72cd: $e1
    ld a, [hl-]                                   ; $72ce: $3a
    cp e                                          ; $72cf: $bb
    push bc                                       ; $72d0: $c5
    and b                                         ; $72d1: $a0
    ld [bc], a                                    ; $72d2: $02
    pop de                                        ; $72d3: $d1
    add b                                         ; $72d4: $80
    dec hl                                        ; $72d5: $2b
    pop bc                                        ; $72d6: $c1
    pop hl                                        ; $72d7: $e1
    nop                                           ; $72d8: $00
    db $e3                                        ; $72d9: $e3
    add b                                         ; $72da: $80
    db $ed                                        ; $72db: $ed
    ld sp, hl                                     ; $72dc: $f9
    sbc e                                         ; $72dd: $9b
    push bc                                       ; $72de: $c5
    and b                                         ; $72df: $a0
    sub d                                         ; $72e0: $92
    add d                                         ; $72e1: $82
    db $10                                        ; $72e2: $10
    add b                                         ; $72e3: $80
    db $e4                                        ; $72e4: $e4
    halt                                          ; $72e5: $76
    ldh [$bc], a                                  ; $72e6: $e0 $bc
    db $eb                                        ; $72e8: $eb
    cp a                                          ; $72e9: $bf
    db $fd                                        ; $72ea: $fd
    ld c, h                                       ; $72eb: $4c
    adc a                                         ; $72ec: $8f
    ld h, d                                       ; $72ed: $62
    adc $60                                       ; $72ee: $ce $60
    ld b, c                                       ; $72f0: $41
    ret nz                                        ; $72f1: $c0

    ld de, $c72a                                  ; $72f2: $11 $2a $c7
    add c                                         ; $72f5: $81
    inc bc                                        ; $72f6: $03
    and e                                         ; $72f7: $a3
    cp $a7                                        ; $72f8: $fe $a7
    dec l                                         ; $72fa: $2d
    ld a, [hl]                                    ; $72fb: $7e
    ld a, [$e181]                                 ; $72fc: $fa $81 $e1
    rst $38                                       ; $72ff: $ff
    db $e3                                        ; $7300: $e3
    inc b                                         ; $7301: $04
    add l                                         ; $7302: $85
    ld h, c                                       ; $7303: $61
    ld b, e                                       ; $7304: $43
    ld h, b                                       ; $7305: $60
    ld a, [bc]                                    ; $7306: $0a
    ret nz                                        ; $7307: $c0

    call z, $a0e7                                 ; $7308: $cc $e7 $a0
    ld [hl], a                                    ; $730b: $77
    sbc c                                         ; $730c: $99
    add c                                         ; $730d: $81
    ldh [rNR13], a                                ; $730e: $e0 $13
    and d                                         ; $7310: $a2
    nop                                           ; $7311: $00
    add [hl]                                      ; $7312: $86
    ld h, b                                       ; $7313: $60
    inc c                                         ; $7314: $0c
    and e                                         ; $7315: $a3
    ret nz                                        ; $7316: $c0

    db $e3                                        ; $7317: $e3
    xor h                                         ; $7318: $ac
    db $e3                                        ; $7319: $e3
    add d                                         ; $731a: $82
    pop hl                                        ; $731b: $e1
    and a                                         ; $731c: $a7
    and b                                         ; $731d: $a0
    ld [hl-], a                                   ; $731e: $32
    add c                                         ; $731f: $81
    ld a, c                                       ; $7320: $79
    or l                                          ; $7321: $b5
    add b                                         ; $7322: $80
    ld c, $62                                     ; $7323: $0e $62
    ld c, e                                       ; $7325: $4b
    xor b                                         ; $7326: $a8
    db $fc                                        ; $7327: $fc
    add d                                         ; $7328: $82
    cp [hl]                                       ; $7329: $be
    add [hl]                                      ; $732a: $86
    ld [hl], h                                    ; $732b: $74
    add d                                         ; $732c: $82
    ld l, h                                       ; $732d: $6c
    and d                                         ; $732e: $a2
    ld a, c                                       ; $732f: $79
    or l                                          ; $7330: $b5
    ld l, h                                       ; $7331: $6c
    inc b                                         ; $7332: $04
    sub [hl]                                      ; $7333: $96
    add e                                         ; $7334: $83
    ld [$0aa6], sp                                ; $7335: $08 $a6 $0a
    ld a, h                                       ; $7338: $7c
    call nz, $867e                                ; $7339: $c4 $7e $86
    pop hl                                        ; $733c: $e1
    jp $f67f                                      ; $733d: $c3 $7f $f6


Jump_06f_7340:
    ret nz                                        ; $7340: $c0

    ldh [$0c], a                                  ; $7341: $e0 $0c
    ld de, $fc61                                  ; $7343: $11 $61 $fc
    push bc                                       ; $7346: $c5
    ld c, e                                       ; $7347: $4b
    ld a, [hl+]                                   ; $7348: $2a
    db $fc                                        ; $7349: $fc
    ld h, c                                       ; $734a: $61
    add $a5                                       ; $734b: $c6 $a5
    dec sp                                        ; $734d: $3b
    ld h, d                                       ; $734e: $62
    ld l, $85                                     ; $734f: $2e $85
    ld b, b                                       ; $7351: $40
    ld c, $54                                     ; $7352: $0e $54
    ld c, h                                       ; $7354: $4c
    ld h, c                                       ; $7355: $61
    cp $e8                                        ; $7356: $fe $e8
    ld b, l                                       ; $7358: $45
    ld b, c                                       ; $7359: $41
    xor $c3                                       ; $735a: $ee $c3
    ld [hl], a                                    ; $735c: $77
    xor e                                         ; $735d: $ab
    dec hl                                        ; $735e: $2b
    ret nz                                        ; $735f: $c0

    db $f4                                        ; $7360: $f4
    ld h, c                                       ; $7361: $61
    inc c                                         ; $7362: $0c
    ld d, h                                       ; $7363: $54
    ld b, c                                       ; $7364: $41
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    ret nz                                        ; $7367: $c0

    pop hl                                        ; $7368: $e1
    ld [hl], h                                    ; $7369: $74
    ld d, d                                       ; $736a: $52
    inc l                                         ; $736b: $2c
    inc l                                         ; $736c: $2c
    ret nz                                        ; $736d: $c0

    rst $38                                       ; $736e: $ff
    inc c                                         ; $736f: $0c
    ld l, h                                       ; $7370: $6c
    ld h, e                                       ; $7371: $63
    rrca                                          ; $7372: $0f
    inc [hl]                                      ; $7373: $34
    inc l                                         ; $7374: $2c
    inc l                                         ; $7375: $2c
    call $b765                                    ; $7376: $cd $65 $b7
    ei                                            ; $7379: $fb
    rst $30                                       ; $737a: $f7
    ld [hl], $bd                                  ; $737b: $36 $bd
    ldh [$9d], a                                  ; $737d: $e0 $9d
    ld l, e                                       ; $737f: $6b
    ld d, e                                       ; $7380: $53
    ld b, c                                       ; $7381: $41
    ld l, e                                       ; $7382: $6b
    inc c                                         ; $7383: $0c
    inc l                                         ; $7384: $2c
    ld a, e                                       ; $7385: $7b
    add c                                         ; $7386: $81
    add hl, sp                                    ; $7387: $39
    ld h, d                                       ; $7388: $62
    ld a, [hl+]                                   ; $7389: $2a
    dec b                                         ; $738a: $05
    ld a, [bc]                                    ; $738b: $0a
    ld [hl], b                                    ; $738c: $70
    db $ec                                        ; $738d: $ec
    ld l, e                                       ; $738e: $6b
    ret nz                                        ; $738f: $c0

    rst $30                                       ; $7390: $f7
    adc d                                         ; $7391: $8a
    ld bc, $447b                                  ; $7392: $01 $7b $44
    dec a                                         ; $7395: $3d
    add c                                         ; $7396: $81
    cp b                                          ; $7397: $b8
    add d                                         ; $7398: $82
    inc bc                                        ; $7399: $03
    ld a, [hl+]                                   ; $739a: $2a
    ld a, [bc]                                    ; $739b: $0a
    ld a, b                                       ; $739c: $78
    add $21                                       ; $739d: $c6 $21
    call nz, $5f7e                                ; $739f: $c4 $7e $5f
    ld c, c                                       ; $73a2: $49
    nop                                           ; $73a3: $00
    pop bc                                        ; $73a4: $c1
    push hl                                       ; $73a5: $e5

jr_06f_73a6:
    cp l                                          ; $73a6: $bd
    ld [c], a                                     ; $73a7: $e2
    sbc b                                         ; $73a8: $98
    db $f4                                        ; $73a9: $f4
    ld b, a                                       ; $73aa: $47
    db $ed                                        ; $73ab: $ed
    nop                                           ; $73ac: $00
    add [hl]                                      ; $73ad: $86
    rra                                           ; $73ae: $1f
    dec hl                                        ; $73af: $2b
    ld a, [bc]                                    ; $73b0: $0a

jr_06f_73b1:
    cp $42                                        ; $73b1: $fe $42
    cp [hl]                                       ; $73b3: $be
    add sp, $6c                                   ; $73b4: $e8 $6c
    nop                                           ; $73b6: $00
    daa                                           ; $73b7: $27
    and $c2                                       ; $73b8: $e6 $c2
    rst $38                                       ; $73ba: $ff
    dec c                                         ; $73bb: $0d
    pop hl                                        ; $73bc: $e1
    add b                                         ; $73bd: $80
    ld b, c                                       ; $73be: $41
    cp a                                          ; $73bf: $bf
    db $ed                                        ; $73c0: $ed
    cp $e2                                        ; $73c1: $fe $e2
    pop bc                                        ; $73c3: $c1
    cp $44                                        ; $73c4: $fe $44
    ld h, d                                       ; $73c6: $62
    ret nz                                        ; $73c7: $c0

    cp $ef                                        ; $73c8: $fe $ef
    ld b, l                                       ; $73ca: $45
    ld e, a                                       ; $73cb: $5f
    add d                                         ; $73cc: $82
    ld b, d                                       ; $73cd: $42
    ret                                           ; $73ce: $c9


    rst $00                                       ; $73cf: $c7
    dec bc                                        ; $73d0: $0b
    ldh [$3e], a                                  ; $73d1: $e0 $3e
    jp hl                                         ; $73d3: $e9


    ld a, [bc]                                    ; $73d4: $0a
    ld c, h                                       ; $73d5: $4c
    ld bc, $3f6c                                  ; $73d6: $01 $6c $3f
    rra                                           ; $73d9: $1f
    ld b, h                                       ; $73da: $44
    jr nz, jr_06f_73a6                            ; $73db: $20 $c9

    rst $00                                       ; $73dd: $c7
    dec a                                         ; $73de: $3d
    rst $20                                       ; $73df: $e7
    ld a, [hl]                                    ; $73e0: $7e
    pop bc                                        ; $73e1: $c1
    xor $c0                                       ; $73e2: $ee $c0
    xor d                                         ; $73e4: $aa
    ret nz                                        ; $73e5: $c0

    ret nz                                        ; $73e6: $c0

    ld a, a                                       ; $73e7: $7f
    cp $43                                        ; $73e8: $fe $43
    jp hl                                         ; $73ea: $e9


    ccf                                           ; $73eb: $3f
    rst $00                                       ; $73ec: $c7
    xor $c2                                       ; $73ed: $ee $c2
    jr c, jr_06f_73b1                             ; $73ef: $38 $c0

    cp [hl]                                       ; $73f1: $be
    cp $2c                                        ; $73f2: $fe $2c
    ld l, e                                       ; $73f4: $6b
    ld [hl], b                                    ; $73f5: $70
    ld c, c                                       ; $73f6: $49
    ret z                                         ; $73f7: $c8

    db $f4                                        ; $73f8: $f4
    db $e4                                        ; $73f9: $e4
    pop bc                                        ; $73fa: $c1
    ldh [$f6], a                                  ; $73fb: $e0 $f6
    and l                                         ; $73fd: $a5
    ld a, [hl+]                                   ; $73fe: $2a
    ld l, d                                       ; $73ff: $6a
    ld c, h                                       ; $7400: $4c
    dec sp                                        ; $7401: $3b
    ei                                            ; $7402: $fb
    nop                                           ; $7403: $00
    cp $80                                        ; $7404: $fe $80
    db $d3                                        ; $7406: $d3
    rst $20                                       ; $7407: $e7
    ld [hl], d                                    ; $7408: $72
    db $e3                                        ; $7409: $e3
    pop bc                                        ; $740a: $c1
    rst $20                                       ; $740b: $e7
    dec hl                                        ; $740c: $2b
    ld b, c                                       ; $740d: $41
    cp a                                          ; $740e: $bf
    ldh [rLCDC], a                                ; $740f: $e0 $40
    inc a                                         ; $7411: $3c
    dec a                                         ; $7412: $3d
    ldh [rNR41], a                                ; $7413: $e0 $20
    ld c, e                                       ; $7415: $4b
    and d                                         ; $7416: $a2
    rst $28                                       ; $7417: $ef
    add e                                         ; $7418: $83
    rlca                                          ; $7419: $07
    ldh [$71], a                                  ; $741a: $e0 $71
    call z, Call_000_1d7c                         ; $741c: $cc $7c $1d
    inc l                                         ; $741f: $2c
    cp $e0                                        ; $7420: $fe $e0
    di                                            ; $7422: $f3
    jp hl                                         ; $7423: $e9


    nop                                           ; $7424: $00
    ret nz                                        ; $7425: $c0

    xor $37                                       ; $7426: $ee $37
    rst $18                                       ; $7428: $df
    or c                                          ; $7429: $b1
    db $eb                                        ; $742a: $eb
    or [hl]                                       ; $742b: $b6
    xor h                                         ; $742c: $ac
    ld h, a                                       ; $742d: $67
    pop hl                                        ; $742e: $e1
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    jp hl                                         ; $7431: $e9


    add sp, -$08                                  ; $7432: $e8 $f8
    xor h                                         ; $7434: $ac
    nop                                           ; $7435: $00
    db $fc                                        ; $7436: $fc
    cp [hl]                                       ; $7437: $be
    ld l, $0e                                     ; $7438: $2e $0e
    cp a                                          ; $743a: $bf
    jp z, $ffc0                                   ; $743b: $ca $c0 $ff

    xor e                                         ; $743e: $ab
    ld l, a                                       ; $743f: $6f
    xor l                                         ; $7440: $ad
    jp nz, Jump_000_01ae                          ; $7441: $c2 $ae $01

    dec [hl]                                      ; $7444: $35
    add b                                         ; $7445: $80
    db $10                                        ; $7446: $10
    adc $ff                                       ; $7447: $ce $ff
    rst $28                                       ; $7449: $ef
    ld l, a                                       ; $744a: $6f
    db $fd                                        ; $744b: $fd
    pop hl                                        ; $744c: $e1
    ld [hl], e                                    ; $744d: $73
    ld b, b                                       ; $744e: $40
    ld a, [hl+]                                   ; $744f: $2a
    rlca                                          ; $7450: $07
    sbc [hl]                                      ; $7451: $9e
    ld l, d                                       ; $7452: $6a
    reti                                          ; $7453: $d9


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
    push af                                       ; $7472: $f5
    db $f4                                        ; $7473: $f4
    ld sp, hl                                     ; $7474: $f9
    ld hl, $7e4c                                  ; $7475: $21 $4c $7e
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    cp l                                          ; $747b: $bd
    sbc c                                         ; $747c: $99
    rst $38                                       ; $747d: $ff
    jp hl                                         ; $747e: $e9


    sbc b                                         ; $747f: $98
    sbc b                                         ; $7480: $98
    sbc b                                         ; $7481: $98
    sub a                                         ; $7482: $97
    rst $38                                       ; $7483: $ff
    ldh [$96], a                                  ; $7484: $e0 $96
    ld c, $ff                                     ; $7486: $0e $ff
    ld [$9595], a                                 ; $7488: $ea $95 $95
    sub l                                         ; $748b: $95
    rst $28                                       ; $748c: $ef
    ld [c], a                                     ; $748d: $e2
    and $e0                                       ; $748e: $e6 $e0
    ldh [$e0], a                                  ; $7490: $e0 $e0
    db $dd                                        ; $7492: $dd
    ldh [rP1], a                                  ; $7493: $e0 $00
    call $c2ea                                    ; $7495: $cd $ea $c2
    db $eb                                        ; $7498: $eb
    pop bc                                        ; $7499: $c1
    pop hl                                        ; $749a: $e1
    ret                                           ; $749b: $c9


    jp hl                                         ; $749c: $e9


    call nz, $fde0                                ; $749d: $c4 $e0 $fd
    db $e4                                        ; $74a0: $e4
    cp a                                          ; $74a1: $bf
    cp $a4                                        ; $74a2: $fe $a4
    ld [c], a                                     ; $74a4: $e2
    nop                                           ; $74a5: $00
    add e                                         ; $74a6: $83
    db $e4                                        ; $74a7: $e4
    ret                                           ; $74a8: $c9


    rst $20                                       ; $74a9: $e7
    push bc                                       ; $74aa: $c5
    ld [c], a                                     ; $74ab: $e2
    cp a                                          ; $74ac: $bf
    add sp, $7b                                   ; $74ad: $e8 $7b
    db $e4                                        ; $74af: $e4
    add e                                         ; $74b0: $83
    or $44                                        ; $74b1: $f6 $44
    pop hl                                        ; $74b3: $e1
    ret                                           ; $74b4: $c9


    jp hl                                         ; $74b5: $e9


    nop                                           ; $74b6: $00
    dec sp                                        ; $74b7: $3b
    db $eb                                        ; $74b8: $eb
    cp a                                          ; $74b9: $bf
    and $43                                       ; $74ba: $e6 $43

Jump_06f_74bc:
    ld a, [c]                                     ; $74bc: $f2
    pop bc                                        ; $74bd: $c1
    add sp, -$02                                  ; $74be: $e8 $fe
    rst $00                                       ; $74c0: $c7
    adc h                                         ; $74c1: $8c
    db $e3                                        ; $74c2: $e3
    ld a, [$efc1]                                 ; $74c3: $fa $c1 $ef
    rst $20                                       ; $74c6: $e7
    nop                                           ; $74c7: $00
    db $fc                                        ; $74c8: $fc
    ret nc                                        ; $74c9: $d0

    ld b, h                                       ; $74ca: $44
    ld [$e655], a                                 ; $74cb: $ea $55 $e6
    ld d, c                                       ; $74ce: $51
    push hl                                       ; $74cf: $e5
    xor l                                         ; $74d0: $ad
    ret nz                                        ; $74d1: $c0

    ld [hl], e                                    ; $74d2: $73
    rst $20                                       ; $74d3: $e7
    ld a, [hl]                                    ; $74d4: $7e
    pop af                                        ; $74d5: $f1
    add $c8                                       ; $74d6: $c6 $c8
    nop                                           ; $74d8: $00
    sub d                                         ; $74d9: $92
    pop bc                                        ; $74da: $c1
    ret                                           ; $74db: $c9


    push hl                                       ; $74dc: $e5
    sub c                                         ; $74dd: $91
    call nz, $c06a                                ; $74de: $c4 $6a $c0
    ld a, [hl+]                                   ; $74e1: $2a
    rst $20                                       ; $74e2: $e7
    ld [hl], a                                    ; $74e3: $77
    call nz, $cd85                                ; $74e4: $c4 $85 $cd
    dec b                                         ; $74e7: $05
    add sp, $38                                   ; $74e8: $e8 $38
    ld d, [hl]                                    ; $74ea: $56
    ret nz                                        ; $74eb: $c0

    ret                                           ; $74ec: $c9


    db $e4                                        ; $74ed: $e4
    ld d, h                                       ; $74ee: $54
    jp nz, Boot                                   ; $74ef: $c2 $00 $01

    sbc c                                         ; $74f2: $99
    ld a, a                                       ; $74f3: $7f
    pop hl                                        ; $74f4: $e1
    ld [hl], e                                    ; $74f5: $73
    push bc                                       ; $74f6: $c5
    ldh a, [$36]                                  ; $74f7: $f0 $36
    jp nz, $f1c0                                  ; $74f9: $c2 $c0 $f1

    sbc $e7                                       ; $74fc: $de $e7
    and c                                         ; $74fe: $a1
    ld [c], a                                     ; $74ff: $e2
    ld bc, $0d00                                  ; $7500: $01 $00 $0d
    rlca                                          ; $7503: $07
    ld a, a                                       ; $7504: $7f
    inc b                                         ; $7505: $04
    add hl, bc                                    ; $7506: $09
    add hl, bc                                    ; $7507: $09
    add hl, bc                                    ; $7508: $09
    inc b                                         ; $7509: $04
    rlca                                          ; $750a: $07
    dec c                                         ; $750b: $0d
    ld h, d                                       ; $750c: $62
    ld [$61d0], a                                 ; $750d: $ea $d0 $61
    ld [c], a                                     ; $7510: $e2
    ld a, [$c0ad]                                 ; $7511: $fa $ad $c0
    db $e3                                        ; $7514: $e3
    sub $a6                                       ; $7515: $d6 $a6
    sbc b                                         ; $7517: $98
    adc e                                         ; $7518: $8b
    ldh [$0d], a                                  ; $7519: $e0 $0d
    inc b                                         ; $751b: $04
    rst $38                                       ; $751c: $ff
    inc bc                                        ; $751d: $03
    ld b, l                                       ; $751e: $45
    ld b, e                                       ; $751f: $43
    ccf                                           ; $7520: $3f
    ccf                                           ; $7521: $3f
    ccf                                           ; $7522: $3f
    ld b, e                                       ; $7523: $43
    ld b, l                                       ; $7524: $45
    add e                                         ; $7525: $83
    inc bc                                        ; $7526: $03
    inc b                                         ; $7527: $04
    cp [hl]                                       ; $7528: $be
    db $e4                                        ; $7529: $e4
    cp b                                          ; $752a: $b8
    push bc                                       ; $752b: $c5
    ccf                                           ; $752c: $3f
    rst $28                                       ; $752d: $ef
    ret nz                                        ; $752e: $c0

    push hl                                       ; $752f: $e5
    inc e                                         ; $7530: $1c
    call nz, $fb98                                ; $7531: $c4 $98 $fb
    sbc b                                         ; $7534: $98
    rrca                                          ; $7535: $0f
    jp nz, Jump_000_37e0                          ; $7536: $c2 $e0 $37

    jr c, jr_06f_7576                             ; $7539: $38 $3b

    jr c, jr_06f_757a                             ; $753b: $38 $3d

    ld a, [bc]                                    ; $753d: $0a
    db $fc                                        ; $753e: $fc
    ldh [$37], a                                  ; $753f: $e0 $37
    cp [hl]                                       ; $7541: $be
    ldh [rIF], a                                  ; $7542: $e0 $0f
    pop hl                                        ; $7544: $e1
    and h                                         ; $7545: $a4
    ld a, b                                       ; $7546: $78
    jp $cd3c                                      ; $7547: $c3 $3c $cd


    sbc l                                         ; $754a: $9d
    jp Jump_06f_5cac                              ; $754b: $c3 $ac $5c


    pop bc                                        ; $754e: $c1
    ld e, h                                       ; $754f: $5c
    and h                                         ; $7550: $a4
    rrca                                          ; $7551: $0f
    ld [bc], a                                    ; $7552: $02
    jp nz, Jump_000_35e0                          ; $7553: $c2 $e0 $35

    add $e0                                       ; $7556: $c6 $e0
    ld b, [hl]                                    ; $7558: $46
    scf                                           ; $7559: $37
    ld b, l                                       ; $755a: $45

jr_06f_755b:
    ld a, [hl-]                                   ; $755b: $3a
    dec [hl]                                      ; $755c: $35
    ld hl, sp-$1f                                 ; $755d: $f8 $e1
    ld [bc], a                                    ; $755f: $02
    rrca                                          ; $7560: $0f
    cp b                                          ; $7561: $b8
    call nz, $e43f                                ; $7562: $c4 $3f $e4
    sub b                                         ; $7565: $90
    cp d                                          ; $7566: $ba
    xor c                                         ; $7567: $a9
    ld c, b                                       ; $7568: $48
    and [hl]                                      ; $7569: $a6
    dec b                                         ; $756a: $05
    push hl                                       ; $756b: $e5
    pop bc                                        ; $756c: $c1
    pop hl                                        ; $756d: $e1
    ld [hl], $c2                                  ; $756e: $36 $c2
    ld [c], a                                     ; $7570: $e2
    rst $38                                       ; $7571: $ff
    ldh [$3e], a                                  ; $7572: $e0 $3e
    dec [hl]                                      ; $7574: $35
    dec [hl]                                      ; $7575: $35

jr_06f_7576:
    rst $38                                       ; $7576: $ff
    ldh [$36], a                                  ; $7577: $e0 $36
    cp a                                          ; $7579: $bf

jr_06f_757a:
    ldh [rSB], a                                  ; $757a: $e0 $01
    nop                                           ; $757c: $00
    cp b                                          ; $757d: $b8
    ret nz                                        ; $757e: $c0

    ld e, e                                       ; $757f: $5b
    rst $20                                       ; $7580: $e7
    ret c                                         ; $7581: $d8

    ret nz                                        ; $7582: $c0

    ld [$a587], a                                 ; $7583: $ea $87 $a5
    dec b                                         ; $7586: $05
    pop hl                                        ; $7587: $e1
    ld bc, $c100                                  ; $7588: $01 $00 $c1
    ld [c], a                                     ; $758b: $e2
    ld [hl], $45                                  ; $758c: $36 $45
    ld a, a                                       ; $758e: $7f
    ld b, l                                       ; $758f: $45
    ccf                                           ; $7590: $3f
    scf                                           ; $7591: $37
    dec a                                         ; $7592: $3d
    scf                                           ; $7593: $37
    ld b, l                                       ; $7594: $45
    add hl, sp                                    ; $7595: $39
    ret nz                                        ; $7596: $c0

    pop hl                                        ; $7597: $e1
    nop                                           ; $7598: $00
    cp a                                          ; $7599: $bf
    ld [c], a                                     ; $759a: $e2
    add b                                         ; $759b: $80
    rst $20                                       ; $759c: $e7
    cp d                                          ; $759d: $ba
    xor d                                         ; $759e: $aa
    pop bc                                        ; $759f: $c1
    add sp, -$7b                                  ; $75a0: $e8 $85
    jp $e4c1                                      ; $75a2: $c3 $c1 $e4


    ccf                                           ; $75a5: $3f
    ldh [$85], a                                  ; $75a6: $e0 $85
    ldh [$09], a                                  ; $75a8: $e0 $09
    add hl, sp                                    ; $75aa: $39
    ret nz                                        ; $75ab: $c0

    db $e3                                        ; $75ac: $e3
    ld a, [hl]                                    ; $75ad: $7e
    ldh [rTMA], a                                 ; $75ae: $e0 $06
    cp b                                          ; $75b0: $b8
    xor d                                         ; $75b1: $aa
    jr c, jr_06f_755b                             ; $75b2: $38 $a7

    inc b                                         ; $75b4: $04
    ret                                           ; $75b5: $c9


    dec b                                         ; $75b6: $05
    pop bc                                        ; $75b7: $c1
    sbc h                                         ; $75b8: $9c
    add d                                         ; $75b9: $82
    db $e4                                        ; $75ba: $e4
    jp nz, Jump_000_35e2                          ; $75bb: $c2 $e2 $35

    dec [hl]                                      ; $75be: $35
    ld a, $40                                     ; $75bf: $3e $40

Jump_06f_75c1:
    ld [c], a                                     ; $75c1: $e2
    or a                                          ; $75c2: $b7
    pop hl                                        ; $75c3: $e1
    dec b                                         ; $75c4: $05
    pop hl                                        ; $75c5: $e1
    ld c, $78                                     ; $75c6: $0e $78
    and l                                         ; $75c8: $a5
    cp d                                          ; $75c9: $ba
    xor d                                         ; $75ca: $aa
    call nz, $dec4                                ; $75cb: $c4 $c4 $de
    add l                                         ; $75ce: $85
    sbc b                                         ; $75cf: $98
    sbc b                                         ; $75d0: $98
    ld b, $8e                                     ; $75d1: $06 $8e
    ld b, e                                       ; $75d3: $43
    pop hl                                        ; $75d4: $e1
    ld c, b                                       ; $75d5: $48
    ld c, b                                       ; $75d6: $48
    ld [hl], $c0                                  ; $75d7: $36 $c0
    db $e4                                        ; $75d9: $e4
    ret nz                                        ; $75da: $c0

    ret nz                                        ; $75db: $c0

    ld a, $e2                                     ; $75dc: $3e $e2
    ld a, [hl-]                                   ; $75de: $3a
    ldh [$7f], a                                  ; $75df: $e0 $7f
    ld [c], a                                     ; $75e1: $e2
    ld h, d                                       ; $75e2: $62
    add l                                         ; $75e3: $85
    cp d                                          ; $75e4: $ba
    and [hl]                                      ; $75e5: $a6
    call nz, Call_06f_48c7                        ; $75e6: $c4 $c7 $48
    and h                                         ; $75e9: $a4
    ld c, $05                                     ; $75ea: $0e $05
    ld b, d                                       ; $75ec: $42
    ccf                                           ; $75ed: $3f
    jr c, @+$39                                   ; $75ee: $38 $37

    ld b, a                                       ; $75f0: $47
    ld h, b                                       ; $75f1: $60
    ld h, c                                       ; $75f2: $61
    ld d, l                                       ; $75f3: $55
    rst $00                                       ; $75f4: $c7
    push hl                                       ; $75f5: $e5
    ld sp, hl                                     ; $75f6: $f9
    push hl                                       ; $75f7: $e5
    ldh [$7f], a                                  ; $75f8: $e0 $7f
    db $e3                                        ; $75fa: $e3
    sub h                                         ; $75fb: $94
    rst $20                                       ; $75fc: $e7
    ret nz                                        ; $75fd: $c0

    push hl                                       ; $75fe: $e5
    call nz, Call_06f_48c6                        ; $75ff: $c4 $c6 $48
    and e                                         ; $7602: $a3
    ld [$4546], sp                                ; $7603: $08 $46 $45
    ccf                                           ; $7606: $3f
    ld b, l                                       ; $7607: $45
    ld d, c                                       ; $7608: $51
    ld e, [hl]                                    ; $7609: $5e
    ld h, c                                       ; $760a: $61
    ld h, c                                       ; $760b: $61
    ld e, d                                       ; $760c: $5a
    ld b, a                                       ; $760d: $47
    push hl                                       ; $760e: $e5
    cp c                                          ; $760f: $b9
    push hl                                       ; $7610: $e5
    ret nz                                        ; $7611: $c0

    ld a, a                                       ; $7612: $7f
    ld [c], a                                     ; $7613: $e2
    ld d, [hl]                                    ; $7614: $56
    rst $00                                       ; $7615: $c7
    ld a, [de]                                    ; $7616: $1a
    and h                                         ; $7617: $a4
    call Call_000_2967                            ; $7618: $cd $67 $29
    and h                                         ; $761b: $a4
    dec b                                         ; $761c: $05
    ret nz                                        ; $761d: $c0

    ld l, $2e                                     ; $761e: $2e $2e
    rrca                                          ; $7620: $0f
    ld d, [hl]                                    ; $7621: $56
    ld h, c                                       ; $7622: $61
    ld h, c                                       ; $7623: $61
    ld d, [hl]                                    ; $7624: $56
    rst $00                                       ; $7625: $c7
    call nz, $ea7f                                ; $7626: $c4 $7f $ea
    push de                                       ; $7629: $d5
    and l                                         ; $762a: $a5
    sbc e                                         ; $762b: $9b
    add a                                         ; $762c: $87
    db $fc                                        ; $762d: $fc
    call nz, Call_000_25c9                        ; $762e: $c4 $c9 $25
    ld h, b                                       ; $7631: $60
    nop                                           ; $7632: $00
    ld bc, $020f                                  ; $7633: $01 $0f $02
    ld b, d                                       ; $7636: $42
    jr nz, jr_06f_7678                            ; $7637: $20 $3f

    jr nc, @+$51                                  ; $7639: $30 $4f

    ld h, c                                       ; $763b: $61
    ld h, c                                       ; $763c: $61
    ld e, b                                       ; $763d: $58
    ld b, b                                       ; $763e: $40
    ret nz                                        ; $763f: $c0

    db $ed                                        ; $7640: $ed
    cp $c0                                        ; $7641: $fe $c0
    ldh [$b4], a                                  ; $7643: $e0 $b4
    add b                                         ; $7645: $80
    cp d                                          ; $7646: $ba
    and h                                         ; $7647: $a4
    rst $28                                       ; $7648: $ef
    ld b, l                                       ; $7649: $45
    adc c                                         ; $764a: $89
    adc c                                         ; $764b: $89
    inc b                                         ; $764c: $04
    call nz, $3042                                ; $764d: $c4 $42 $30
    jr nz, jr_06f_7654                            ; $7650: $20 $02

    ret nz                                        ; $7652: $c0

    pop hl                                        ; $7653: $e1

jr_06f_7654:
    ld b, h                                       ; $7654: $44
    add b                                         ; $7655: $80
    db $ed                                        ; $7656: $ed
    ld a, a                                       ; $7657: $7f
    ld [c], a                                     ; $7658: $e2
    cp d                                          ; $7659: $ba
    and e                                         ; $765a: $a3
    ei                                            ; $765b: $fb
    and a                                         ; $765c: $a7
    ret z                                         ; $765d: $c8

    adc b                                         ; $765e: $88
    inc b                                         ; $765f: $04
    push bc                                       ; $7660: $c5
    rrca                                          ; $7661: $0f
    add hl, sp                                    ; $7662: $39
    ld l, $2e                                     ; $7663: $2e $2e
    ld c, e                                       ; $7665: $4b
    ret nz                                        ; $7666: $c0

    ld a, [c]                                     ; $7667: $f2
    ld a, l                                       ; $7668: $7d
    pop bc                                        ; $7669: $c1
    ld a, [hl-]                                   ; $766a: $3a
    and [hl]                                      ; $766b: $a6
    rst $28                                       ; $766c: $ef
    ld b, [hl]                                    ; $766d: $46
    inc a                                         ; $766e: $3c
    ld l, l                                       ; $766f: $6d
    xor c                                         ; $7670: $a9
    ld b, a                                       ; $7671: $47
    and d                                         ; $7672: $a2
    ld a, $4e                                     ; $7673: $3e $4e
    ld c, c                                       ; $7675: $49
    ld h, b                                       ; $7676: $60
    ld b, b                                       ; $7677: $40

jr_06f_7678:
    pop af                                        ; $7678: $f1
    db $fc                                        ; $7679: $fc
    and e                                         ; $767a: $a3
    jr nc, jr_06f_76ef                            ; $767b: $30 $72

    ld h, [hl]                                    ; $767d: $66
    ld l, l                                       ; $767e: $6d
    ld b, h                                       ; $767f: $44
    call nz, $c1c7                                ; $7680: $c4 $c7 $c1
    db $e4                                        ; $7683: $e4
    dec [hl]                                      ; $7684: $35
    ld a, $82                                     ; $7685: $3e $82
    ret nz                                        ; $7687: $c0

    ret nz                                        ; $7688: $c0

    jp Jump_000_3dc2                              ; $7689: $c3 $c2 $3d


    call $b83a                                    ; $768c: $cd $3a $b8
    add c                                         ; $768f: $81
    or e                                          ; $7690: $b3
    ld h, e                                       ; $7691: $63
    or a                                          ; $7692: $b7
    add [hl]                                      ; $7693: $86
    ld c, b                                       ; $7694: $48
    and a                                         ; $7695: $a7
    sbc c                                         ; $7696: $99
    sbc c                                         ; $7697: $99
    ld b, h                                       ; $7698: $44
    push bc                                       ; $7699: $c5
    and c                                         ; $769a: $a1
    adc l                                         ; $769b: $8d
    and b                                         ; $769c: $a0
    ld c, l                                       ; $769d: $4d
    ret nz                                        ; $769e: $c0

    pop hl                                        ; $769f: $e1
    ld b, b                                       ; $76a0: $40
    pop bc                                        ; $76a1: $c1
    ld a, l                                       ; $76a2: $7d
    call $b8a6                                    ; $76a3: $cd $a6 $b8
    add c                                         ; $76a6: $81
    ret c                                         ; $76a7: $d8

    sbc h                                         ; $76a8: $9c
    dec h                                         ; $76a9: $25
    ret nz                                        ; $76aa: $c0

    add sp, -$33                                  ; $76ab: $e8 $cd
    ld h, h                                       ; $76ad: $64
    ld c, $05                                     ; $76ae: $0e $05
    db $d3                                        ; $76b0: $d3
    add d                                         ; $76b1: $82
    ld a, [hl-]                                   ; $76b2: $3a
    ld d, d                                       ; $76b3: $52
    ld [hl], h                                    ; $76b4: $74
    add b                                         ; $76b5: $80
    pop hl                                        ; $76b6: $e1
    ret nz                                        ; $76b7: $c0

    and b                                         ; $76b8: $a0
    ld a, [hl-]                                   ; $76b9: $3a
    ld a, l                                       ; $76ba: $7d
    call z, $a762                                 ; $76bb: $cc $62 $a7
    ld h, [hl]                                    ; $76be: $66
    cp a                                          ; $76bf: $bf
    db $e3                                        ; $76c0: $e3
    ld b, h                                       ; $76c1: $44
    inc a                                         ; $76c2: $3c
    ret                                           ; $76c3: $c9


    add b                                         ; $76c4: $80
    add sp, $06                                   ; $76c5: $e8 $06
    inc de                                        ; $76c7: $13
    add c                                         ; $76c8: $81
    ld d, d                                       ; $76c9: $52
    add c                                         ; $76ca: $81
    cp a                                          ; $76cb: $bf
    ldh [rHDMA2], a                               ; $76cc: $e0 $52
    ld b, b                                       ; $76ce: $40
    and b                                         ; $76cf: $a0

Jump_06f_76d0:
    dec a                                         ; $76d0: $3d
    add hl, sp                                    ; $76d1: $39
    dec a                                         ; $76d2: $3d
    bit 4, d                                      ; $76d3: $cb $62
    ld h, a                                       ; $76d5: $67
    and e                                         ; $76d6: $a3
    ld l, b                                       ; $76d7: $68
    cp a                                          ; $76d8: $bf
    ld [c], a                                     ; $76d9: $e2
    inc a                                         ; $76da: $3c
    rst $00                                       ; $76db: $c7
    cp b                                          ; $76dc: $b8
    nop                                           ; $76dd: $00
    ld [$e481], a                                 ; $76de: $ea $81 $e4
    db $10                                        ; $76e1: $10
    add b                                         ; $76e2: $80
    jr c, jr_06f_7722                             ; $76e3: $38 $3d

    dec a                                         ; $76e5: $3d
    add e                                         ; $76e6: $83
    add b                                         ; $76e7: $80
    ld a, [hl-]                                   ; $76e8: $3a
    db $fd                                        ; $76e9: $fd
    ld c, d                                       ; $76ea: $4a
    db $fd                                        ; $76eb: $fd
    xor d                                         ; $76ec: $aa
    ld h, d                                       ; $76ed: $62
    ld h, a                                       ; $76ee: $67

jr_06f_76ef:
    dec [hl]                                      ; $76ef: $35
    dec [hl]                                      ; $76f0: $35
    ld l, h                                       ; $76f1: $6c
    or a                                          ; $76f2: $b7
    add c                                         ; $76f3: $81
    cp b                                          ; $76f4: $b8
    ld [hl], a                                    ; $76f5: $77
    add b                                         ; $76f6: $80
    xor [hl]                                      ; $76f7: $ae
    ld b, d                                       ; $76f8: $42
    db $fc                                        ; $76f9: $fc
    and [hl]                                      ; $76fa: $a6
    ccf                                           ; $76fb: $3f
    push hl                                       ; $76fc: $e5
    rst $00                                       ; $76fd: $c7
    add b                                         ; $76fe: $80
    dec c                                         ; $76ff: $0d
    xor e                                         ; $7700: $ab
    add hl, sp                                    ; $7701: $39
    db $fd                                        ; $7702: $fd
    ld c, e                                       ; $7703: $4b
    cp l                                          ; $7704: $bd
    xor c                                         ; $7705: $a9
    cp c                                          ; $7706: $b9
    cp d                                          ; $7707: $ba
    and e                                         ; $7708: $a3
    dec [hl]                                      ; $7709: $35
    ld l, h                                       ; $770a: $6c
    ld l, a                                       ; $770b: $6f
    or c                                          ; $770c: $b1
    ld l, [hl]                                    ; $770d: $6e
    ld a, c                                       ; $770e: $79
    and e                                         ; $770f: $a3
    or $67                                        ; $7710: $f6 $67
    cp a                                          ; $7712: $bf
    rst $00                                       ; $7713: $c7
    sbc c                                         ; $7714: $99
    ld a, [bc]                                    ; $7715: $0a
    ld c, [hl]                                    ; $7716: $4e
    xor e                                         ; $7717: $ab
    ld a, [hl-]                                   ; $7718: $3a
    rst $28                                       ; $7719: $ef
    ld c, d                                       ; $771a: $4a
    ld h, b                                       ; $771b: $60
    ld e, h                                       ; $771c: $5c
    inc a                                         ; $771d: $3c
    cp h                                          ; $771e: $bc
    add a                                         ; $771f: $87
    ld l, [hl]                                    ; $7720: $6e
    ld l, a                                       ; $7721: $6f

jr_06f_7722:
    ld l, h                                       ; $7722: $6c
    db $10                                        ; $7723: $10
    pop bc                                        ; $7724: $c1
    ld [c], a                                     ; $7725: $e2
    ld [hl], a                                    ; $7726: $77
    add h                                         ; $7727: $84
    adc l                                         ; $7728: $8d
    add a                                         ; $7729: $87
    add a                                         ; $772a: $87
    ld h, [hl]                                    ; $772b: $66
    ld a, [bc]                                    ; $772c: $0a
    ld d, l                                       ; $772d: $55
    ld h, d                                       ; $772e: $62
    call z, $ff40                                 ; $772f: $cc $40 $ff
    ld [c], a                                     ; $7732: $e2
    rrca                                          ; $7733: $0f
    jr c, jr_06f_776f                             ; $7734: $38 $39

    ld c, e                                       ; $7736: $4b
    ld h, c                                       ; $7737: $61
    ret nz                                        ; $7738: $c0

    jp hl                                         ; $7739: $e9


    cp a                                          ; $773a: $bf
    ldh [$c1], a                                  ; $773b: $e0 $c1
    ld [c], a                                     ; $773d: $e2
    ld [hl], a                                    ; $773e: $77
    add [hl]                                      ; $773f: $86
    sub h                                         ; $7740: $94
    sub l                                         ; $7741: $95
    dec h                                         ; $7742: $25
    add b                                         ; $7743: $80
    rst $20                                       ; $7744: $e7
    ld a, $94                                     ; $7745: $3e $94
    ld b, b                                       ; $7747: $40
    ccf                                           ; $7748: $3f
    ld c, e                                       ; $7749: $4b
    ld h, b                                       ; $774a: $60
    cp a                                          ; $774b: $bf
    ld [c], a                                     ; $774c: $e2
    scf                                           ; $774d: $37
    add a                                         ; $774e: $87
    ccf                                           ; $774f: $3f
    ld e, e                                       ; $7750: $5b
    ld e, e                                       ; $7751: $5b
    cp e                                          ; $7752: $bb
    ld h, l                                       ; $7753: $65
    ld a, [hl]                                    ; $7754: $7e
    db $e4                                        ; $7755: $e4
    pop bc                                        ; $7756: $c1
    db $e3                                        ; $7757: $e3
    or $60                                        ; $7758: $f6 $60
    ld [$ba1c], sp                                ; $775a: $08 $1c $ba
    adc c                                         ; $775d: $89
    ccf                                           ; $775e: $3f
    add $0a                                       ; $775f: $c6 $0a
    ld b, e                                       ; $7761: $43
    ccf                                           ; $7762: $3f
    ld c, l                                       ; $7763: $4d
    ld b, b                                       ; $7764: $40
    ld a, [bc]                                    ; $7765: $0a
    adc b                                         ; $7766: $88
    ld b, l                                       ; $7767: $45
    ld b, b                                       ; $7768: $40
    inc e                                         ; $7769: $1c
    ei                                            ; $776a: $fb
    ld l, l                                       ; $776b: $6d
    or e                                          ; $776c: $b3
    ld b, c                                       ; $776d: $41
    inc a                                         ; $776e: $3c

jr_06f_776f:
    ld b, h                                       ; $776f: $44
    ld [$4774], sp                                ; $7770: $08 $74 $47
    add b                                         ; $7773: $80
    xor b                                         ; $7774: $a8
    ret nz                                        ; $7775: $c0

    call $f630                                    ; $7776: $cd $30 $f6
    push af                                       ; $7779: $f5
    ret nz                                        ; $777a: $c0

    ldh [$74], a                                  ; $777b: $e0 $74
    ld b, a                                       ; $777d: $47
    add b                                         ; $777e: $80
    xor b                                         ; $777f: $a8
    rrca                                          ; $7780: $0f
    ld [bc], a                                    ; $7781: $02
    dec c                                         ; $7782: $0d
    adc [hl]                                      ; $7783: $8e
    di                                            ; $7784: $f3
    ld a, [c]                                     ; $7785: $f2
    nop                                           ; $7786: $00
    ld b, b                                       ; $7787: $40
    ldh [$80], a                                  ; $7788: $e0 $80
    ld [$a480], a                                 ; $778a: $ea $80 $a4
    ld c, b                                       ; $778d: $48
    ld b, c                                       ; $778e: $41
    ld b, b                                       ; $778f: $40
    db $e4                                        ; $7790: $e4
    cp h                                          ; $7791: $bc
    push bc                                       ; $7792: $c5
    cp b                                          ; $7793: $b8
    jp nz, $e92e                                  ; $7794: $c2 $2e $e9

    ldh [$ba], a                                  ; $7797: $e0 $ba
    adc l                                         ; $7799: $8d
    ld d, l                                       ; $779a: $55
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    xor b                                         ; $779d: $a8
    ld c, d                                       ; $779e: $4a
    ld hl, $210d                                  ; $779f: $21 $0d $21
    ccf                                           ; $77a2: $3f
    ld b, e                                       ; $77a3: $43
    inc bc                                        ; $77a4: $03
    ld l, a                                       ; $77a5: $6f
    inc bc                                        ; $77a6: $03
    ld b, l                                       ; $77a7: $45
    ld c, b                                       ; $77a8: $48
    ld c, [hl]                                    ; $77a9: $4e
    rst $38                                       ; $77aa: $ff
    db $e3                                        ; $77ab: $e3
    ld c, b                                       ; $77ac: $48
    ld d, b                                       ; $77ad: $50
    scf                                           ; $77ae: $37
    ld b, e                                       ; $77af: $43
    ldh a, [$f2]                                  ; $77b0: $f0 $f2
    ld b, [hl]                                    ; $77b2: $46
    ld [hl], $44                                  ; $77b3: $36 $44
    db $f4                                        ; $77b5: $f4
    dec b                                         ; $77b6: $05
    add b                                         ; $77b7: $80
    adc c                                         ; $77b8: $89
    sbc b                                         ; $77b9: $98
    sbc b                                         ; $77ba: $98
    dec c                                         ; $77bb: $0d
    rlca                                          ; $77bc: $07
    adc $ff                                       ; $77bd: $ce $ff
    ld [c], a                                     ; $77bf: $e2
    dec c                                         ; $77c0: $0d
    ld b, $4a                                     ; $77c1: $06 $4a
    dec a                                         ; $77c3: $3d
    add b                                         ; $77c4: $80
    cp $e2                                        ; $77c5: $fe $e2
    ld h, b                                       ; $77c7: $60
    ld e, l                                       ; $77c8: $5d
    inc bc                                        ; $77c9: $03
    ld c, c                                       ; $77ca: $49
    ld c, b                                       ; $77cb: $48
    cp [hl]                                       ; $77cc: $be
    jp hl                                         ; $77cd: $e9


    cp l                                          ; $77ce: $bd
    add d                                         ; $77cf: $82
    cp d                                          ; $77d0: $ba
    ld c, c                                       ; $77d1: $49
    ret z                                         ; $77d2: $c8

    ld [$633e], sp                                ; $77d3: $08 $3e $63
    cp h                                          ; $77d6: $bc
    pop hl                                        ; $77d7: $e1
    add hl, de                                    ; $77d8: $19
    dec b                                         ; $77d9: $05
    cp [hl]                                       ; $77da: $be
    ld h, b                                       ; $77db: $60
    cp $e6                                        ; $77dc: $fe $e6
    ld h, b                                       ; $77de: $60
    ld d, l                                       ; $77df: $55
    or h                                          ; $77e0: $b4
    ld bc, $c46e                                  ; $77e1: $01 $6e $c4
    ld [hl], a                                    ; $77e4: $77
    jr z, jr_06f_785f                             ; $77e5: $28 $78

    add b                                         ; $77e7: $80
    xor c                                         ; $77e8: $a9
    dec hl                                        ; $77e9: $2b
    ld h, $48                                     ; $77ea: $26 $48
    nop                                           ; $77ec: $00
    ld b, e                                       ; $77ed: $43
    ld d, b                                       ; $77ee: $50
    ld b, e                                       ; $77ef: $43
    ld b, h                                       ; $77f0: $44
    inc a                                         ; $77f1: $3c
    add d                                         ; $77f2: $82
    halt                                          ; $77f3: $76
    cp h                                          ; $77f4: $bc
    push hl                                       ; $77f5: $e5
    ld d, [hl]                                    ; $77f6: $56
    rla                                           ; $77f7: $17
    daa                                           ; $77f8: $27
    and $09                                       ; $77f9: $e6 $09
    inc b                                         ; $77fb: $04
    rrca                                          ; $77fc: $0f
    ld bc, $fca5                                  ; $77fd: $01 $a5 $fc
    cp a                                          ; $7800: $bf
    ld l, c                                       ; $7801: $69
    cp [hl]                                       ; $7802: $be
    ld h, [hl]                                    ; $7803: $66
    inc b                                         ; $7804: $04
    inc bc                                        ; $7805: $03
    ld c, b                                       ; $7806: $48

jr_06f_7807:
    ld c, c                                       ; $7807: $49
    ld c, h                                       ; $7808: $4c
    ld e, l                                       ; $7809: $5d
    inc de                                        ; $780a: $13
    ld c, h                                       ; $780b: $4c
    ld d, l                                       ; $780c: $55
    add b                                         ; $780d: $80
    jp hl                                         ; $780e: $e9


    inc sp                                        ; $780f: $33
    add b                                         ; $7810: $80
    ld b, $27                                     ; $7811: $06 $27
    push hl                                       ; $7813: $e5
    ld b, a                                       ; $7814: $47
    ld [bc], a                                    ; $7815: $02
    cp l                                          ; $7816: $bd
    ld c, c                                       ; $7817: $49
    and h                                         ; $7818: $a4
    ccf                                           ; $7819: $3f
    and a                                         ; $781a: $a7
    ld b, e                                       ; $781b: $43
    ld b, d                                       ; $781c: $42
    ld c, b                                       ; $781d: $48
    ld b, h                                       ; $781e: $44
    ld h, c                                       ; $781f: $61
    ld b, d                                       ; $7820: $42
    ld b, b                                       ; $7821: $40
    ld c, d                                       ; $7822: $4a
    ret nz                                        ; $7823: $c0

    ld [$0356], a                                 ; $7824: $ea $56 $03
    dec b                                         ; $7827: $05
    ld c, $85                                     ; $7828: $0e $85
    ld b, e                                       ; $782a: $43
    jp Jump_000_0160                              ; $782b: $c3 $60 $01


    adc e                                         ; $782e: $8b
    ld b, [hl]                                    ; $782f: $46
    ld [$0086], sp                                ; $7830: $08 $86 $00
    ret                                           ; $7833: $c9


    rst $00                                       ; $7834: $c7
    ld a, c                                       ; $7835: $79
    ld d, l                                       ; $7836: $55

jr_06f_7837:
    db $fd                                        ; $7837: $fd
    jr nz, jr_06f_7837                            ; $7838: $20 $fd

    ret z                                         ; $783a: $c8

    ld e, h                                       ; $783b: $5c
    ld [bc], a                                    ; $783c: $02
    rlca                                          ; $783d: $07
    dec c                                         ; $783e: $0d
    res 4, d                                      ; $783f: $cb $a2
    cp b                                          ; $7841: $b8
    rst $38                                       ; $7842: $ff
    db $e4                                        ; $7843: $e4
    adc a                                         ; $7844: $8f
    jr z, jr_06f_7807                             ; $7845: $28 $c0

    and $98                                       ; $7847: $e6 $98
    sbc c                                         ; $7849: $99
    ld c, $c9                                     ; $784a: $0e $c9
    rst $00                                       ; $784c: $c7
    ld d, [hl]                                    ; $784d: $56
    db $fd                                        ; $784e: $fd
    ld d, l                                       ; $784f: $55
    cp a                                          ; $7850: $bf
    add $54                                       ; $7851: $c6 $54
    ld e, c                                       ; $7853: $59
    ld d, e                                       ; $7854: $53
    ld e, e                                       ; $7855: $5b
    ld d, b                                       ; $7856: $50
    ld b, e                                       ; $7857: $43
    add a                                         ; $7858: $87
    ld b, e                                       ; $7859: $43
    inc bc                                        ; $785a: $03
    inc b                                         ; $785b: $04
    ld b, e                                       ; $785c: $43
    pop hl                                        ; $785d: $e1
    pop de                                        ; $785e: $d1

jr_06f_785f:
    ld a, [bc]                                    ; $785f: $0a
    ret nz                                        ; $7860: $c0

    ld [$e000], a                                 ; $7861: $ea $00 $e0
    ld [$4770], sp                                ; $7864: $08 $70 $47
    ld hl, $e50d                                  ; $7867: $21 $0d $e5
    ld a, [hl-]                                   ; $786a: $3a
    ld h, d                                       ; $786b: $62
    or [hl]                                       ; $786c: $b6
    ld b, b                                       ; $786d: $40
    ld d, d                                       ; $786e: $52
    ld c, b                                       ; $786f: $48
    ld c, [hl]                                    ; $7870: $4e
    xor $c1                                       ; $7871: $ee $c1
    ccf                                           ; $7873: $3f
    ld c, c                                       ; $7874: $49
    ld c, [hl]                                    ; $7875: $4e
    ld c, b                                       ; $7876: $48
    inc bc                                        ; $7877: $03
    inc b                                         ; $7878: $04
    rrca                                          ; $7879: $0f
    ld b, b                                       ; $787a: $40
    ld c, l                                       ; $787b: $4d

jr_06f_787c:
    add b                                         ; $787c: $80
    rst $20                                       ; $787d: $e7
    ld b, [hl]                                    ; $787e: $46
    jr nc, jr_06f_78a2                            ; $787f: $30 $21

    ld [$cb45], sp                                ; $7881: $08 $45 $cb
    push hl                                       ; $7884: $e5
    ld b, b                                       ; $7885: $40
    jr nz, jr_06f_787c                            ; $7886: $20 $f4

    db $e4                                        ; $7888: $e4
    ld d, d                                       ; $7889: $52
    or h                                          ; $788a: $b4
    nop                                           ; $788b: $00
    ld e, $f6                                     ; $788c: $1e $f6
    and h                                         ; $788e: $a4
    ld c, c                                       ; $788f: $49
    ld d, e                                       ; $7890: $53
    ld [bc], a                                    ; $7891: $02
    rrca                                          ; $7892: $0f
    ret nz                                        ; $7893: $c0

    dec h                                         ; $7894: $25
    ld a, a                                       ; $7895: $7f
    ld h, $f5                                     ; $7896: $26 $f5
    ld l, b                                       ; $7898: $68
    db $fc                                        ; $7899: $fc
    ld b, b                                       ; $789a: $40
    ld b, c                                       ; $789b: $41
    adc d                                         ; $789c: $8a
    push hl                                       ; $789d: $e5
    ld d, h                                       ; $789e: $54
    ld d, e                                       ; $789f: $53
    inc bc                                        ; $78a0: $03
    inc bc                                        ; $78a1: $03

jr_06f_78a2:
    ld d, e                                       ; $78a2: $53
    ld d, h                                       ; $78a3: $54
    ret nz                                        ; $78a4: $c0

    pop bc                                        ; $78a5: $c1
    jp hl                                         ; $78a6: $e9


    ld [hl], h                                    ; $78a7: $74
    ld [c], a                                     ; $78a8: $e2
    inc bc                                        ; $78a9: $03
    add $c1                                       ; $78aa: $c6 $c1

jr_06f_78ac:
    and $b4                                       ; $78ac: $e6 $b4
    and a                                         ; $78ae: $a7
    ret nz                                        ; $78af: $c0

    ld hl, $0304                                  ; $78b0: $21 $04 $03
    adc a                                         ; $78b3: $8f
    ld e, e                                       ; $78b4: $5b
    ld d, e                                       ; $78b5: $53
    ld e, c                                       ; $78b6: $59
    ld e, c                                       ; $78b7: $59
    rrca                                          ; $78b8: $0f
    ldh [rNR12], a                                ; $78b9: $e0 $12
    ldh [$f6], a                                  ; $78bb: $e0 $f6
    and b                                         ; $78bd: $a0
    ld e, e                                       ; $78be: $5b
    pop bc                                        ; $78bf: $c1
    ld e, e                                       ; $78c0: $5b
    ld l, $e8                                     ; $78c1: $2e $e8
    scf                                           ; $78c3: $37
    jp $0cc0                                      ; $78c4: $c3 $c0 $0c


    ld b, b                                       ; $78c7: $40
    ld [$a3c1], sp                                ; $78c8: $08 $c1 $a3

jr_06f_78cb:
    rlca                                          ; $78cb: $07
    inc b                                         ; $78cc: $04
    cp a                                          ; $78cd: $bf
    add hl, bc                                    ; $78ce: $09
    add hl, bc                                    ; $78cf: $09
    add hl, bc                                    ; $78d0: $09
    inc b                                         ; $78d1: $04
    rlca                                          ; $78d2: $07
    dec c                                         ; $78d3: $0d
    or l                                          ; $78d4: $b5
    nop                                           ; $78d5: $00
    sbc c                                         ; $78d6: $99
    rlca                                          ; $78d7: $07
    dec c                                         ; $78d8: $0d
    rlca                                          ; $78d9: $07
    ld [bc], a                                    ; $78da: $02
    ret nz                                        ; $78db: $c0

    db $ec                                        ; $78dc: $ec
    scf                                           ; $78dd: $37
    ret nz                                        ; $78de: $c0

    ld b, a                                       ; $78df: $47
    add h                                         ; $78e0: $84
    ld b, b                                       ; $78e1: $40
    dec b                                         ; $78e2: $05
    ld l, $0a                                     ; $78e3: $2e $0a
    ldh [$7d], a                                  ; $78e5: $e0 $7d
    inc bc                                        ; $78e7: $03
    jr jr_06f_78ac                                ; $78e8: $18 $c2

    ld d, $22                                     ; $78ea: $16 $22
    ld l, h                                       ; $78ec: $6c
    ld b, b                                       ; $78ed: $40
    or a                                          ; $78ee: $b7
    xor e                                         ; $78ef: $ab
    ld h, c                                       ; $78f0: $61
    ld e, h                                       ; $78f1: $5c
    ld [$8400], sp                                ; $78f2: $08 $00 $84
    and l                                         ; $78f5: $a5
    db $d3                                        ; $78f6: $d3
    ld [c], a                                     ; $78f7: $e2
    cpl                                           ; $78f8: $2f
    dec b                                         ; $78f9: $05
    or d                                          ; $78fa: $b2
    ld b, [hl]                                    ; $78fb: $46
    and c                                         ; $78fc: $a1
    and h                                         ; $78fd: $a4
    dec h                                         ; $78fe: $25
    db $e4                                        ; $78ff: $e4
    ld l, e                                       ; $7900: $6b
    ld b, b                                       ; $7901: $40
    jr c, jr_06f_78cb                             ; $7902: $38 $c7

    add b                                         ; $7904: $80
    add b                                         ; $7905: $80
    rst $20                                       ; $7906: $e7
    call nc, $d2e8                                ; $7907: $d4 $e8 $d2
    db $e3                                        ; $790a: $e3
    inc a                                         ; $790b: $3c
    inc b                                         ; $790c: $04
    xor $a4                                       ; $790d: $ee $a4
    sbc $01                                       ; $790f: $de $01
    or c                                          ; $7911: $b1
    add l                                         ; $7912: $85
    rrca                                          ; $7913: $0f
    ld bc, $ba02                                  ; $7914: $01 $02 $ba
    pop bc                                        ; $7917: $c1
    nop                                           ; $7918: $00
    db $eb                                        ; $7919: $eb
    ld d, e                                       ; $791a: $53
    add sp, -$40                                  ; $791b: $e8 $c0
    db $e4                                        ; $791d: $e4
    cp a                                          ; $791e: $bf
    jp hl                                         ; $791f: $e9


    dec l                                         ; $7920: $2d
    and h                                         ; $7921: $a4
    cpl                                           ; $7922: $2f
    ld [bc], a                                    ; $7923: $02
    ld a, [hl]                                    ; $7924: $7e
    xor e                                         ; $7925: $ab
    ld h, c                                       ; $7926: $61
    inc b                                         ; $7927: $04
    inc bc                                        ; $7928: $03
    ld d, e                                       ; $7929: $53
    ld e, c                                       ; $792a: $59
    ld d, h                                       ; $792b: $54
    ld d, a                                       ; $792c: $57
    xor l                                         ; $792d: $ad
    nop                                           ; $792e: $00
    ld bc, $b757                                  ; $792f: $01 $57 $b7
    and b                                         ; $7932: $a0
    ld b, h                                       ; $7933: $44
    add e                                         ; $7934: $83
    ld bc, $3fe7                                  ; $7935: $01 $e7 $3f
    push hl                                       ; $7938: $e5
    xor l                                         ; $7939: $ad
    rlca                                          ; $793a: $07
    push bc                                       ; $793b: $c5
    db $e3                                        ; $793c: $e3
    ld [hl], d                                    ; $793d: $72
    ld [c], a                                     ; $793e: $e2
    db $fc                                        ; $793f: $fc
    xor e                                         ; $7940: $ab
    ld bc, $6016                                  ; $7941: $01 $16 $60
    dec c                                         ; $7944: $0d
    inc b                                         ; $7945: $04
    add hl, bc                                    ; $7946: $09
    inc bc                                        ; $7947: $03
    ld b, e                                       ; $7948: $43
    ld e, e                                       ; $7949: $5b
    inc bc                                        ; $794a: $03
    ld e, e                                       ; $794b: $5b
    ld e, e                                       ; $794c: $5b
    add e                                         ; $794d: $83
    add d                                         ; $794e: $82
    ld b, [hl]                                    ; $794f: $46
    ld hl, $a644                                  ; $7950: $21 $44 $a6
    ld b, c                                       ; $7953: $41
    pop hl                                        ; $7954: $e1
    cp a                                          ; $7955: $bf
    db $ec                                        ; $7956: $ec
    inc [hl]                                      ; $7957: $34
    ld b, c                                       ; $7958: $41
    db $10                                        ; $7959: $10
    ld sp, hl                                     ; $795a: $f9
    db $e3                                        ; $795b: $e3
    xor e                                         ; $795c: $ab
    ld h, e                                       ; $795d: $63
    res 0, e                                      ; $795e: $cb $83
    xor c                                         ; $7960: $a9
    ld h, e                                       ; $7961: $63
    dec c                                         ; $7962: $0d
    ld b, a                                       ; $7963: $47
    ld [hl+], a                                   ; $7964: $22
    pop bc                                        ; $7965: $c1
    bit 7, [hl]                                   ; $7966: $cb $7e
    rst $20                                       ; $7968: $e7
    nop                                           ; $7969: $00
    ei                                            ; $796a: $fb
    push bc                                       ; $796b: $c5
    cp e                                          ; $796c: $bb
    and $f2                                       ; $796d: $e6 $f2
    rst $00                                       ; $796f: $c7
    ld h, h                                       ; $7970: $64
    ld h, e                                       ; $7971: $63
    ld b, [hl]                                    ; $7972: $46
    add l                                         ; $7973: $85
    pop bc                                        ; $7974: $c1
    bit 7, l                                      ; $7975: $cb $7d
    jp $e5bf                                      ; $7977: $c3 $bf $e5


    nop                                           ; $797a: $00
    ld a, [hl-]                                   ; $797b: $3a
    rst $20                                       ; $797c: $e7
    ld a, [c]                                     ; $797d: $f2
    ret z                                         ; $797e: $c8

    adc e                                         ; $797f: $8b
    add l                                         ; $7980: $85
    ld b, a                                       ; $7981: $47
    ld b, $c1                                     ; $7982: $06 $c1
    ret                                           ; $7984: $c9


    cp [hl]                                       ; $7985: $be
    jp hl                                         ; $7986: $e9


    ld [bc], a                                    ; $7987: $02
    push hl                                       ; $7988: $e5
    cp b                                          ; $7989: $b8
    jp hl                                         ; $798a: $e9


    nop                                           ; $798b: $00
    ld h, [hl]                                    ; $798c: $66
    ld h, c                                       ; $798d: $61
    or c                                          ; $798e: $b1
    call nz, $8846                                ; $798f: $c4 $46 $88
    pop bc                                        ; $7992: $c1
    rst $00                                       ; $7993: $c7
    ld a, l                                       ; $7994: $7d
    db $eb                                        ; $7995: $eb
    add l                                         ; $7996: $85
    call nz, $ea33                                ; $7997: $c4 $33 $ea
    inc hl                                        ; $799a: $23
    add $00                                       ; $799b: $c6 $00
    ld h, b                                       ; $799d: $60
    add sp, -$7f                                  ; $799e: $e8 $81
    db $eb                                        ; $79a0: $eb
    ei                                            ; $79a1: $fb
    ret z                                         ; $79a2: $c8

    ld c, [hl]                                    ; $79a3: $4e
    and $f2                                       ; $79a4: $e6 $f2
    jp z, $ebf6                                   ; $79a6: $ca $f6 $eb

    add c                                         ; $79a9: $81
    rst $28                                       ; $79aa: $ef
    ld a, [$00c5]                                 ; $79ab: $fa $c5 $00
    cp h                                          ; $79ae: $bc
    jp hl                                         ; $79af: $e9


    dec [hl]                                      ; $79b0: $35
    ret                                           ; $79b1: $c9


    and b                                         ; $79b2: $a0
    ld b, b                                       ; $79b3: $40
    pop bc                                        ; $79b4: $c1
    db $ec                                        ; $79b5: $ec
    add c                                         ; $79b6: $81
    db $ed                                        ; $79b7: $ed
    cp a                                          ; $79b8: $bf
    and $94                                       ; $79b9: $e6 $94
    call nz, $cdf2                                ; $79bb: $c4 $f2 $cd
    nop                                           ; $79be: $00
    ld [$f6a4], a                                 ; $79bf: $ea $a4 $f6
    add $81                                       ; $79c2: $c6 $81
    xor $bc                                       ; $79c4: $ee $bc
    db $ed                                        ; $79c6: $ed
    ld a, c                                       ; $79c7: $79
    db $ed                                        ; $79c8: $ed
    and h                                         ; $79c9: $a4
    ret z                                         ; $79ca: $c8

    pop bc                                        ; $79cb: $c1
    jp hl                                         ; $79cc: $e9


    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    pop bc                                        ; $79d0: $c1
    nop                                           ; $79d1: $00
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
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    ld bc, $fe80                                  ; $79de: $01 $80 $fe
    ldh [rIE], a                                  ; $79e1: $e0 $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    add sp, $00                                   ; $79e7: $e8 $00
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    or $79                                        ; $79ee: $f6 $79
    ld h, $7a                                     ; $79f0: $26 $7a
    xor a                                         ; $79f2: $af
    ld a, e                                       ; $79f3: $7b
    adc e                                         ; $79f4: $8b
    ld a, l                                       ; $79f5: $7d
    db $ec                                        ; $79f6: $ec
    inc bc                                        ; $79f7: $03
    nop                                           ; $79f8: $00
    inc bc                                        ; $79f9: $03
    nop                                           ; $79fa: $00
    ld [bc], a                                    ; $79fb: $02
    nop                                           ; $79fc: $00
    ld bc, $03ec                                  ; $79fd: $01 $ec $03
    di                                            ; $7a00: $f3
    inc bc                                        ; $7a01: $03
    nop                                           ; $7a02: $00
    inc bc                                        ; $7a03: $03
    nop                                           ; $7a04: $00
    ld [bc], a                                    ; $7a05: $02
    ld c, b                                       ; $7a06: $48
    ld a, a                                       ; $7a07: $7f
    ld c, b                                       ; $7a08: $48
    ld a, a                                       ; $7a09: $7f
    ld c, b                                       ; $7a0a: $48
    ld a, a                                       ; $7a0b: $7f
    ld c, b                                       ; $7a0c: $48
    ld a, a                                       ; $7a0d: $7f
    ld e, a                                       ; $7a0e: $5f
    ld e, e                                       ; $7a0f: $5b
    ret z                                         ; $7a10: $c8

    inc bc                                        ; $7a11: $03
    inc bc                                        ; $7a12: $03
    ld [bc], a                                    ; $7a13: $02
    ld [bc], a                                    ; $7a14: $02
    ld bc, $0116                                  ; $7a15: $01 $16 $01
    ret z                                         ; $7a18: $c8

    inc bc                                        ; $7a19: $03
    inc bc                                        ; $7a1a: $03
    ld [bc], a                                    ; $7a1b: $02
    ld [bc], a                                    ; $7a1c: $02
    ld bc, $2508                                  ; $7a1d: $01 $08 $25
    ld [$0825], sp                                ; $7a20: $08 $25 $08
    dec h                                         ; $7a23: $25
    ld [$ff25], sp                                ; $7a24: $08 $25 $ff
    dec bc                                        ; $7a27: $0b
    dec bc                                        ; $7a28: $0b
    dec hl                                        ; $7a29: $2b
    ld l, e                                       ; $7a2a: $6b
    ld l, e                                       ; $7a2b: $6b
    ld c, e                                       ; $7a2c: $4b
    ld c, e                                       ; $7a2d: $4b
    ld c, e                                       ; $7a2e: $4b
    dec c                                         ; $7a2f: $0d
    dec hl                                        ; $7a30: $2b
    ld sp, hl                                     ; $7a31: $f9
    db $e3                                        ; $7a32: $e3
    ld c, e                                       ; $7a33: $4b
    dec bc                                        ; $7a34: $0b
    rst $28                                       ; $7a35: $ef
    ldh [$fc], a                                  ; $7a36: $e0 $fc
    ldh [rIE], a                                  ; $7a38: $e0 $ff
    rst $38                                       ; $7a3a: $ff
    push hl                                       ; $7a3b: $e5
    db $e4                                        ; $7a3c: $e4
    ld a, a                                       ; $7a3d: $7f
    ld l, e                                       ; $7a3e: $6b
    dec bc                                        ; $7a3f: $0b
    ld l, e                                       ; $7a40: $6b
    ld l, e                                       ; $7a41: $6b
    dec hl                                        ; $7a42: $2b
    dec hl                                        ; $7a43: $2b
    dec hl                                        ; $7a44: $2b
    cp [hl]                                       ; $7a45: $be
    ldh [$61], a                                  ; $7a46: $e0 $61
    ld l, e                                       ; $7a48: $6b
    ldh a, [$e4]                                  ; $7a49: $f0 $e4
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    cp a                                          ; $7a4d: $bf
    db $eb                                        ; $7a4e: $eb
    pop bc                                        ; $7a4f: $c1
    pop hl                                        ; $7a50: $e1
    dec hl                                        ; $7a51: $2b
    ld l, e                                       ; $7a52: $6b
    add a                                         ; $7a53: $87
    pop hl                                        ; $7a54: $e1
    nop                                           ; $7a55: $00
    db $d3                                        ; $7a56: $d3
    ld [c], a                                     ; $7a57: $e2
    ld a, l                                       ; $7a58: $7d
    ld [c], a                                     ; $7a59: $e2
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    ret nz                                        ; $7a5c: $c0

    db $ec                                        ; $7a5d: $ec
    ret c                                         ; $7a5e: $d8

    rst $20                                       ; $7a5f: $e7
    scf                                           ; $7a60: $37
    ldh [$cb], a                                  ; $7a61: $e0 $cb
    rst $38                                       ; $7a63: $ff
    add c                                         ; $7a64: $81
    ld [$cd0c], a                                 ; $7a65: $ea $0c $cd
    ldh [$0d], a                                  ; $7a68: $e0 $0d
    push hl                                       ; $7a6a: $e5
    ld l, e                                       ; $7a6b: $6b
    dec hl                                        ; $7a6c: $2b
    inc sp                                        ; $7a6d: $33
    ldh [$c0], a                                  ; $7a6e: $e0 $c0
    rst $38                                       ; $7a70: $ff
    nop                                           ; $7a71: $00
    jp hl                                         ; $7a72: $e9


    pop de                                        ; $7a73: $d1
    ldh [$0c], a                                  ; $7a74: $e0 $0c
    ld a, a                                       ; $7a76: $7f
    push hl                                       ; $7a77: $e5
    cp h                                          ; $7a78: $bc
    ret nz                                        ; $7a79: $c0

    dec hl                                        ; $7a7a: $2b
    ld c, e                                       ; $7a7b: $4b
    ld a, a                                       ; $7a7c: $7f
    ldh [$ca], a                                  ; $7a7d: $e0 $ca
    rst $38                                       ; $7a7f: $ff
    jp hl                                         ; $7a80: $e9


    add sp, $44                                   ; $7a81: $e8 $44
    ldh [rP1], a                                  ; $7a83: $e0 $00
    ccf                                           ; $7a85: $3f
    db $e4                                        ; $7a86: $e4
    ld a, h                                       ; $7a87: $7c
    ret nz                                        ; $7a88: $c0

    cp b                                          ; $7a89: $b8
    ret nz                                        ; $7a8a: $c0

    or d                                          ; $7a8b: $b2
    ret nz                                        ; $7a8c: $c0

    set 7, a                                      ; $7a8d: $cb $ff
    ld a, a                                       ; $7a8f: $7f
    jp z, $c1c0                                   ; $7a90: $ca $c0 $c1

    adc b                                         ; $7a93: $88
    ldh [rSB], a                                  ; $7a94: $e0 $01
    dec bc                                        ; $7a96: $0b
    push bc                                       ; $7a97: $c5
    pop hl                                        ; $7a98: $e1
    ld a, $c1                                     ; $7a99: $3e $c1
    ret nz                                        ; $7a9b: $c0

    rst $38                                       ; $7a9c: $ff
    add b                                         ; $7a9d: $80
    ld [$c03f], a                                 ; $7a9e: $ea $3f $c0
    ei                                            ; $7aa1: $fb
    jp nz, $c1c5                                  ; $7aa2: $c2 $c5 $c1

    nop                                           ; $7aa5: $00
    ret nz                                        ; $7aa6: $c0

    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    or d                                          ; $7aa9: $b2
    cp [hl]                                       ; $7aaa: $be
    ldh [rSB], a                                  ; $7aab: $e0 $01
    pop bc                                        ; $7aad: $c1
    ld hl, sp-$5d                                 ; $7aae: $f8 $a3
    pop bc                                        ; $7ab0: $c1
    rst $38                                       ; $7ab1: $ff
    ld bc, $c2ea                                  ; $7ab2: $01 $ea $c2
    ld [c], a                                     ; $7ab5: $e2
    nop                                           ; $7ab6: $00
    cp a                                          ; $7ab7: $bf
    pop hl                                        ; $7ab8: $e1
    ret nz                                        ; $7ab9: $c0

    rst $38                                       ; $7aba: $ff
    pop bc                                        ; $7abb: $c1
    db $d3                                        ; $7abc: $d3
    cp a                                          ; $7abd: $bf
    db $e3                                        ; $7abe: $e3
    rst $38                                       ; $7abf: $ff
    pop bc                                        ; $7ac0: $c1
    cp b                                          ; $7ac1: $b8
    and d                                         ; $7ac2: $a2
    pop bc                                        ; $7ac3: $c1
    cp a                                          ; $7ac4: $bf
    ld a, a                                       ; $7ac5: $7f
    ld a, [c]                                     ; $7ac6: $f2
    nop                                           ; $7ac7: $00
    cp l                                          ; $7ac8: $bd
    and c                                         ; $7ac9: $a1
    ld [hl], h                                    ; $7aca: $74
    ld [c], a                                     ; $7acb: $e2
    adc $ff                                       ; $7acc: $ce $ff
    ld a, a                                       ; $7ace: $7f
    ld a, [c]                                     ; $7acf: $f2
    ld a, l                                       ; $7ad0: $7d
    and d                                         ; $7ad1: $a2
    halt                                          ; $7ad2: $76
    xor e                                         ; $7ad3: $ab
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    ld a, $e7                                     ; $7ad6: $3e $e7
    add b                                         ; $7ad8: $80
    ld b, l                                       ; $7ad9: $45
    and h                                         ; $7ada: $a4
    scf                                           ; $7adb: $37
    and d                                         ; $7adc: $a2
    ld a, l                                       ; $7add: $7d
    rst $38                                       ; $7ade: $ff
    jp hl                                         ; $7adf: $e9


    add sp, -$37                                  ; $7ae0: $e8 $c9
    jp $a6b5                                      ; $7ae2: $c3 $b5 $a6


Jump_06f_7ae5:
    ld l, [hl]                                    ; $7ae5: $6e
    add c                                         ; $7ae6: $81
    ld a, [bc]                                    ; $7ae7: $0a
    nop                                           ; $7ae8: $00
    jp z, $ffff                                   ; $7ae9: $ca $ff $ff

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
    nop                                           ; $7af9: $00
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
    nop                                           ; $7b0a: $00
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
    nop                                           ; $7b1b: $00
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
    nop                                           ; $7b2c: $00
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
    nop                                           ; $7b3d: $00
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
    nop                                           ; $7b4e: $00
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
    nop                                           ; $7b5f: $00
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
    nop                                           ; $7b70: $00
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
    nop                                           ; $7b81: $00
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
    nop                                           ; $7b92: $00
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
    nop                                           ; $7ba3: $00
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff

Jump_06f_7ba6:
    rst $38                                       ; $7ba6: $ff

jr_06f_7ba7:
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    di                                            ; $7bab: $f3
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    rst $38                                       ; $7baf: $ff
    ld sp, $0101                                  ; $7bb0: $31 $01 $01
    rla                                           ; $7bb3: $17
    ld d, $22                                     ; $7bb4: $16 $22
    ld d, $17                                     ; $7bb6: $16 $17
    cp $f9                                        ; $7bb8: $fe $f9
    pop hl                                        ; $7bba: $e1
    inc hl                                        ; $7bbb: $23
    inc hl                                        ; $7bbc: $23
    ld d, $44                                     ; $7bbd: $16 $44
    ld bc, $0101                                  ; $7bbf: $01 $01 $01
    di                                            ; $7bc2: $f3
    ld l, $51                                     ; $7bc3: $2e $51
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $20                                       ; $7bc7: $e7
    and $2c                                       ; $7bc8: $e6 $2c
    ld bc, $060c                                  ; $7bca: $01 $0c $06
    rst $38                                       ; $7bcd: $ff
    scf                                           ; $7bce: $37
    scf                                           ; $7bcf: $37
    scf                                           ; $7bd0: $37
    ld b, $22                                     ; $7bd1: $06 $22
    inc hl                                        ; $7bd3: $23
    ld b, $3a                                     ; $7bd4: $06 $3a
    add $ff                                       ; $7bd6: $c6 $ff
    ldh [rSTAT], a                                ; $7bd8: $e0 $41
    ld b, d                                       ; $7bda: $42
    cp a                                          ; $7bdb: $bf
    ldh [$ca], a                                  ; $7bdc: $e0 $ca
    rst $38                                       ; $7bde: $ff
    add sp, -$19                                  ; $7bdf: $e8 $e7
    ld bc, $bd19                                  ; $7be1: $01 $19 $bd
    jr jr_06f_7ba7                                ; $7be4: $18 $c1

    ldh [$37], a                                  ; $7be6: $e0 $37
    nop                                           ; $7be8: $00
    scf                                           ; $7be9: $37
    inc [hl]                                      ; $7bea: $34
    pop bc                                        ; $7beb: $c1

jr_06f_7bec:
    pop hl                                        ; $7bec: $e1
    ld a, [hl-]                                   ; $7bed: $3a
    rst $08                                       ; $7bee: $cf
    ld a, [hl-]                                   ; $7bef: $3a
    ld a, $43                                     ; $7bf0: $3e $43
    ld b, h                                       ; $7bf2: $44
    ret nz                                        ; $7bf3: $c0

    rst $38                                       ; $7bf4: $ff
    ret nz                                        ; $7bf5: $c0

    jp hl                                         ; $7bf6: $e9


    add hl, bc                                    ; $7bf7: $09
    nop                                           ; $7bf8: $00
    sbc [hl]                                      ; $7bf9: $9e
    ret nz                                        ; $7bfa: $c0

    ld [$3c48], a                                 ; $7bfb: $ea $48 $3c
    inc a                                         ; $7bfe: $3c
    ccf                                           ; $7bff: $3f
    jp z, $e8ff                                   ; $7c00: $ca $ff $e8

    rst $20                                       ; $7c03: $e7
    add hl, de                                    ; $7c04: $19
    di                                            ; $7c05: $f3
    jr jr_06f_7c08                                ; $7c06: $18 $00

jr_06f_7c08:
    cp a                                          ; $7c08: $bf
    pop hl                                        ; $7c09: $e1
    add b                                         ; $7c0a: $80
    db $e4                                        ; $7c0b: $e4
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    ld b, b                                       ; $7c0e: $40
    inc a                                         ; $7c0f: $3c
    inc sp                                        ; $7c10: $33
    inc a                                         ; $7c11: $3c
    dec a                                         ; $7c12: $3d
    jp z, $e8ff                                   ; $7c13: $ca $ff $e8

    rst $20                                       ; $7c16: $e7
    add hl, bc                                    ; $7c17: $09
    nop                                           ; $7c18: $00
    rst $38                                       ; $7c19: $ff
    ldh [rLCDC], a                                ; $7c1a: $e0 $40
    db $e4                                        ; $7c1c: $e4
    ld a, $f5                                     ; $7c1d: $3e $f5
    ldh [$38], a                                  ; $7c1f: $e0 $38
    dec sp                                        ; $7c21: $3b
    ld a, $3c                                     ; $7c22: $3e $3c
    ld c, d                                       ; $7c24: $4a
    jp z, $e8ff                                   ; $7c25: $ca $ff $e8

    rst $20                                       ; $7c28: $e7
    db $ed                                        ; $7c29: $ed
    jr nz, jr_06f_7bec                            ; $7c2a: $20 $c0

    db $e4                                        ; $7c2c: $e4
    jr c, jr_06f_7c64                             ; $7c2d: $38 $35

    or a                                          ; $7c2f: $b7
    pop hl                                        ; $7c30: $e1
    inc [hl]                                      ; $7c31: $34
    dec sp                                        ; $7c32: $3b
    dec sp                                        ; $7c33: $3b
    ld l, c                                       ; $7c34: $69
    ld b, b                                       ; $7c35: $40
    ret nz                                        ; $7c36: $c0

    rst $38                                       ; $7c37: $ff
    ld [$21e9], a                                 ; $7c38: $ea $e9 $21
    add b                                         ; $7c3b: $80
    pop hl                                        ; $7c3c: $e1
    nop                                           ; $7c3d: $00
    scf                                           ; $7c3e: $37
    add [hl]                                      ; $7c3f: $86
    ldh [$9a], a                                  ; $7c40: $e0 $9a
    cp a                                          ; $7c42: $bf
    ldh [$3b], a                                  ; $7c43: $e0 $3b
    ret nz                                        ; $7c45: $c0

    ldh [$3b], a                                  ; $7c46: $e0 $3b
    ld c, d                                       ; $7c48: $4a
    ld b, b                                       ; $7c49: $40
    rst $38                                       ; $7c4a: $ff
    add b                                         ; $7c4b: $80
    db $ed                                        ; $7c4c: $ed
    dec sp                                        ; $7c4d: $3b
    ld a, a                                       ; $7c4e: $7f
    jr c, jr_06f_7c51                             ; $7c4f: $38 $00

jr_06f_7c51:
    ld c, l                                       ; $7c51: $4d
    ld c, l                                       ; $7c52: $4d
    jr c, @+$37                                   ; $7c53: $38 $35

    dec sp                                        ; $7c55: $3b
    ret nz                                        ; $7c56: $c0

    ld [c], a                                     ; $7c57: $e2
    pop af                                        ; $7c58: $f1
    ld a, $c0                                     ; $7c59: $3e $c0
    rst $18                                       ; $7c5b: $df
    ld b, b                                       ; $7c5c: $40
    db $eb                                        ; $7c5d: $eb
    adc h                                         ; $7c5e: $8c
    ldh [$3b], a                                  ; $7c5f: $e0 $3b
    jr c, jr_06f_7cb0                             ; $7c61: $38 $4d

    ld c, l                                       ; $7c63: $4d

jr_06f_7c64:
    add hl, bc                                    ; $7c64: $09
    scf                                           ; $7c65: $37
    ld b, e                                       ; $7c66: $43
    ldh [$80], a                                  ; $7c67: $e0 $80
    pop hl                                        ; $7c69: $e1
    jr nz, @+$42                                  ; $7c6a: $20 $40

    rst $18                                       ; $7c6c: $df
    ret nz                                        ; $7c6d: $c0

    ret                                           ; $7c6e: $c9


    jp nz, $bfe1                                  ; $7c6f: $c2 $e1 $bf

    pop hl                                        ; $7c72: $e1
    ret nz                                        ; $7c73: $c0

    cp $a0                                        ; $7c74: $fe $a0
    ret nz                                        ; $7c76: $c0

    rst $38                                       ; $7c77: $ff
    ld b, b                                       ; $7c78: $40
    pop de                                        ; $7c79: $d1
    cp a                                          ; $7c7a: $bf
    db $e3                                        ; $7c7b: $e3
    cp [hl]                                       ; $7c7c: $be
    and c                                         ; $7c7d: $a1
    ld a, b                                       ; $7c7e: $78
    pop hl                                        ; $7c7f: $e1
    dec sp                                        ; $7c80: $3b
    dec sp                                        ; $7c81: $3b
    ld h, c                                       ; $7c82: $61
    add hl, bc                                    ; $7c83: $09
    ret nz                                        ; $7c84: $c0

    rst $38                                       ; $7c85: $ff
    ret nz                                        ; $7c86: $c0

    xor d                                         ; $7c87: $aa
    ret nz                                        ; $7c88: $c0

    add sp, $3f                                   ; $7c89: $e8 $3f
    pop bc                                        ; $7c8b: $c1
    jr jr_06f_7ca7                                ; $7c8c: $18 $19

    ret nz                                        ; $7c8e: $c0

    rst $38                                       ; $7c8f: $ff

Jump_06f_7c90:
    and $40                                       ; $7c90: $e6 $40
    xor c                                         ; $7c92: $a9
    dec e                                         ; $7c93: $1d
    ld [bc], a                                    ; $7c94: $02
    add b                                         ; $7c95: $80
    and $75                                       ; $7c96: $e6 $75
    jp nz, $0109                                  ; $7c98: $c2 $09 $01

    inc l                                         ; $7c9b: $2c
    jr c, @-$34                                   ; $7c9c: $38 $ca

    rst $38                                       ; $7c9e: $ff
    nop                                           ; $7c9f: $00
    xor b                                         ; $7ca0: $a8
    cp a                                          ; $7ca1: $bf
    db $e3                                        ; $7ca2: $e3
    ld b, $22                                     ; $7ca3: $06 $22
    ld [hl+], a                                   ; $7ca5: $22
    cp [hl]                                       ; $7ca6: $be

jr_06f_7ca7:
    add b                                         ; $7ca7: $80
    or h                                          ; $7ca8: $b4
    and b                                         ; $7ca9: $a0
    ld c, a                                       ; $7caa: $4f
    ld b, $07                                     ; $7cab: $06 $07
    ld bc, $ca31                                  ; $7cad: $01 $31 $ca

jr_06f_7cb0:
    rst $38                                       ; $7cb0: $ff
    add sp, -$19                                  ; $7cb1: $e8 $e7
    ld l, $bf                                     ; $7cb3: $2e $bf
    ldh [$67], a                                  ; $7cb5: $e0 $67
    dec d                                         ; $7cb7: $15
    inc hl                                        ; $7cb8: $23
    dec d                                         ; $7cb9: $15
    ld b, b                                       ; $7cba: $40
    add b                                         ; $7cbb: $80
    scf                                           ; $7cbc: $37
    add b                                         ; $7cbd: $80
    dec d                                         ; $7cbe: $15
    ld [hl+], a                                   ; $7cbf: $22
    rst $30                                       ; $7cc0: $f7
    ldh [$03], a                                  ; $7cc1: $e0 $03
    ld l, $28                                     ; $7cc3: $2e $28
    jp z, $ffff                                   ; $7cc5: $ca $ff $ff

    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    nop                                           ; $7cd1: $00
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
    nop                                           ; $7ce2: $00
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
    nop                                           ; $7cf3: $00
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
    nop                                           ; $7d04: $00
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
    nop                                           ; $7d15: $00
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
    nop                                           ; $7d26: $00
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
    nop                                           ; $7d37: $00
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
    nop                                           ; $7d48: $00
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
    nop                                           ; $7d59: $00
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
    nop                                           ; $7d6a: $00
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
    nop                                           ; $7d7b: $00
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
    di                                            ; $7d87: $f3
    nop                                           ; $7d88: $00
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    ld sp, hl                                     ; $7d8b: $f9
    nop                                           ; $7d8c: $00
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    xor $ed                                       ; $7d8f: $ee $ed
    ld [hl], $30                                  ; $7d91: $36 $30
    scf                                           ; $7d93: $37
    ld h, $20                                     ; $7d94: $26 $20
    cpl                                           ; $7d96: $2f
    daa                                           ; $7d97: $27
    db $10                                        ; $7d98: $10
    ld d, $17                                     ; $7d99: $16 $17
    push de                                       ; $7d9b: $d5
    rst $28                                       ; $7d9c: $ef
    ld de, $e0ff                                  ; $7d9d: $11 $ff $e0
    cp a                                          ; $7da0: $bf
    rst $38                                       ; $7da1: $ff
    nop                                           ; $7da2: $00
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    push hl                                       ; $7da8: $e5
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    nop                                           ; $7dab: $00
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

Call_06f_7dd5:
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

Jump_06f_7f02:
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

Jump_06f_7fe0:
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

Jump_06f_7fff:
    rst $38                                       ; $7fff: $ff
