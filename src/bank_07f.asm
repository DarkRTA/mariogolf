; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

    db $0a, $40, $6c, $40

    jp Jump_07f_400a                              ; $4004: $c3 $0a $40


    jp Jump_07f_406c                              ; $4007: $c3 $6c $40


Jump_07f_400a:
    cp $65                                        ; $400a: $fe $65
    jr nc, jr_07f_4019                            ; $400c: $30 $0b

    ld hl, $495c                                  ; $400e: $21 $5c $49
    cp [hl]                                       ; $4011: $be
    jr nc, jr_07f_406b                            ; $4012: $30 $57

    ld hl, $495d                                  ; $4014: $21 $5d $49
    jr jr_07f_4024                                ; $4017: $18 $0b

jr_07f_4019:
    ld hl, $615f                                  ; $4019: $21 $5f $61
    cp [hl]                                       ; $401c: $be
    jr nc, jr_07f_406b                            ; $401d: $30 $4c

    sub $65                                       ; $401f: $d6 $65
    ld hl, $6160                                  ; $4021: $21 $60 $61

jr_07f_4024:
    add a                                         ; $4024: $87
    ld c, a                                       ; $4025: $4f
    ld b, $00                                     ; $4026: $06 $00
    ld a, [$c596]                                 ; $4028: $fa $96 $c5
    or a                                          ; $402b: $b7
    call nz, Call_07f_42e2                        ; $402c: $c4 $e2 $42
    ld a, $01                                     ; $402f: $3e $01
    ld [$c596], a                                 ; $4031: $ea $96 $c5
    add hl, bc                                    ; $4034: $09
    ld a, [hl+]                                   ; $4035: $2a
    ld h, [hl]                                    ; $4036: $66
    ld l, a                                       ; $4037: $6f
    ld a, [hl+]                                   ; $4038: $2a
    ld [$c4cc], a                                 ; $4039: $ea $cc $c4
    ld [$c597], a                                 ; $403c: $ea $97 $c5
    ld de, $c58e                                  ; $403f: $11 $8e $c5
    ld c, $00                                     ; $4042: $0e $00

jr_07f_4044:
    ld a, [$c597]                                 ; $4044: $fa $97 $c5
    rrca                                          ; $4047: $0f
    ld [$c597], a                                 ; $4048: $ea $97 $c5
    jr nc, jr_07f_4063                            ; $404b: $30 $16

    ld a, [hl+]                                   ; $404d: $2a
    ld [de], a                                    ; $404e: $12
    inc de                                        ; $404f: $13
    ld a, [hl+]                                   ; $4050: $2a
    ld [de], a                                    ; $4051: $12
    inc de                                        ; $4052: $13
    push hl                                       ; $4053: $e5
    ld hl, $c572                                  ; $4054: $21 $72 $c5
    add hl, bc                                    ; $4057: $09
    ld [hl], $00                                  ; $4058: $36 $00
    ld hl, $c576                                  ; $405a: $21 $76 $c5
    add hl, bc                                    ; $405d: $09
    ld [hl], $01                                  ; $405e: $36 $01
    pop hl                                        ; $4060: $e1
    jr jr_07f_4065                                ; $4061: $18 $02

jr_07f_4063:
    inc de                                        ; $4063: $13
    inc de                                        ; $4064: $13

jr_07f_4065:
    inc c                                         ; $4065: $0c
    ld a, $04                                     ; $4066: $3e $04
    cp c                                          ; $4068: $b9
    jr nz, jr_07f_4044                            ; $4069: $20 $d9

jr_07f_406b:
    ret                                           ; $406b: $c9


Jump_07f_406c:
    ld a, [$c4cc]                                 ; $406c: $fa $cc $c4
    or a                                          ; $406f: $b7
    jp z, Jump_07f_42be                           ; $4070: $ca $be $42

    xor a                                         ; $4073: $af
    ld b, a                                       ; $4074: $47
    ld c, a                                       ; $4075: $4f
    ld a, [$c4cc]                                 ; $4076: $fa $cc $c4
    ld [$c597], a                                 ; $4079: $ea $97 $c5

jr_07f_407c:
    ld hl, $c597                                  ; $407c: $21 $97 $c5
    ld a, [hl]                                    ; $407f: $7e
    rrca                                          ; $4080: $0f
    ld [hl], a                                    ; $4081: $77
    jr nc, jr_07f_409d                            ; $4082: $30 $19

    ld hl, $c576                                  ; $4084: $21 $76 $c5
    add hl, bc                                    ; $4087: $09
    ld a, [hl]                                    ; $4088: $7e
    dec a                                         ; $4089: $3d
    jr z, jr_07f_4092                             ; $408a: $28 $06

    ld [hl], a                                    ; $408c: $77
    call Call_07f_419d                            ; $408d: $cd $9d $41
    jr jr_07f_409d                                ; $4090: $18 $0b

jr_07f_4092:
    ld hl, $c58e                                  ; $4092: $21 $8e $c5
    add hl, bc                                    ; $4095: $09
    add hl, bc                                    ; $4096: $09
    ld a, [hl+]                                   ; $4097: $2a
    ld h, [hl]                                    ; $4098: $66
    ld l, a                                       ; $4099: $6f
    call Call_07f_40a4                            ; $409a: $cd $a4 $40

jr_07f_409d:
    inc c                                         ; $409d: $0c
    ld a, c                                       ; $409e: $79
    cp $04                                        ; $409f: $fe $04
    jr nz, jr_07f_407c                            ; $40a1: $20 $d9

    ret                                           ; $40a3: $c9


Call_07f_40a4:
Jump_07f_40a4:
    ld a, [hl]                                    ; $40a4: $7e
    and $f0                                       ; $40a5: $e6 $f0
    swap a                                        ; $40a7: $cb $37
    add a                                         ; $40a9: $87
    ld e, a                                       ; $40aa: $5f
    ld d, $00                                     ; $40ab: $16 $00
    ld a, [hl+]                                   ; $40ad: $2a
    push hl                                       ; $40ae: $e5
    and $0f                                       ; $40af: $e6 $0f
    ld hl, $40bb                                  ; $40b1: $21 $bb $40
    add hl, de                                    ; $40b4: $19
    ld e, [hl]                                    ; $40b5: $5e
    inc hl                                        ; $40b6: $23
    ld d, [hl]                                    ; $40b7: $56
    ld h, d                                       ; $40b8: $62
    ld l, e                                       ; $40b9: $6b
    jp hl                                         ; $40ba: $e9


    db $de, $40, $1e, $41, $37, $41, $48, $41, $5d, $41, $76, $41, $82, $41

    ld [de], a                                    ; $40c9: $12
    ld b, d                                       ; $40ca: $42

    db $3d, $42

    db $db                                        ; $40cd: $db
    ld b, b                                       ; $40ce: $40
    db $db                                        ; $40cf: $db
    ld b, b                                       ; $40d0: $40
    db $db                                        ; $40d1: $db
    ld b, b                                       ; $40d2: $40
    db $db                                        ; $40d3: $db
    ld b, b                                       ; $40d4: $40
    db $db                                        ; $40d5: $db
    ld b, b                                       ; $40d6: $40

    db $59, $42, $9b, $42

    jp Jump_07f_40a4                              ; $40db: $c3 $a4 $40


    ld d, a                                       ; $40de: $57
    pop hl                                        ; $40df: $e1
    ld a, [hl+]                                   ; $40e0: $2a
    ld e, a                                       ; $40e1: $5f
    push hl                                       ; $40e2: $e5
    ld hl, $c57a                                  ; $40e3: $21 $7a $c5
    add hl, bc                                    ; $40e6: $09
    add hl, bc                                    ; $40e7: $09
    push bc                                       ; $40e8: $c5
    ld b, [hl]                                    ; $40e9: $46
    ld [hl], e                                    ; $40ea: $73
    inc hl                                        ; $40eb: $23
    ld [hl], d                                    ; $40ec: $72
    ld a, c                                       ; $40ed: $79
    cp $03                                        ; $40ee: $fe $03
    jr nz, jr_07f_40f9                            ; $40f0: $20 $07

    ld a, b                                       ; $40f2: $78
    xor e                                         ; $40f3: $ab
    and $08                                       ; $40f4: $e6 $08
    swap a                                        ; $40f6: $cb $37
    ld d, a                                       ; $40f8: $57

jr_07f_40f9:
    pop bc                                        ; $40f9: $c1
    ld hl, $c56e                                  ; $40fa: $21 $6e $c5
    add hl, bc                                    ; $40fd: $09
    ld a, [hl]                                    ; $40fe: $7e
    ld [hl], $00                                  ; $40ff: $36 $00
    or d                                          ; $4101: $b2
    ld d, a                                       ; $4102: $57
    ld hl, $ff11                                  ; $4103: $21 $11 $ff
    ld a, c                                       ; $4106: $79
    add a                                         ; $4107: $87
    add a                                         ; $4108: $87
    add c                                         ; $4109: $81
    add l                                         ; $410a: $85
    ld l, a                                       ; $410b: $6f
    ld a, [hl]                                    ; $410c: $7e
    and $c0                                       ; $410d: $e6 $c0
    ld [hl+], a                                   ; $410f: $22
    inc hl                                        ; $4110: $23
    ld a, e                                       ; $4111: $7b
    ld [hl+], a                                   ; $4112: $22
    ld [hl], d                                    ; $4113: $72
    pop de                                        ; $4114: $d1

Jump_07f_4115:
    ld hl, $c58e                                  ; $4115: $21 $8e $c5
    add hl, bc                                    ; $4118: $09
    add hl, bc                                    ; $4119: $09
    ld [hl], e                                    ; $411a: $73
    inc hl                                        ; $411b: $23
    ld [hl], d                                    ; $411c: $72
    ret                                           ; $411d: $c9


    ld hl, $c56e                                  ; $411e: $21 $6e $c5
    add hl, bc                                    ; $4121: $09
    ld a, $80                                     ; $4122: $3e $80
    ld [hl], a                                    ; $4124: $77
    pop hl                                        ; $4125: $e1
    ld a, [hl+]                                   ; $4126: $2a
    ld e, a                                       ; $4127: $5f
    push hl                                       ; $4128: $e5
    ld hl, $ff12                                  ; $4129: $21 $12 $ff
    ld a, c                                       ; $412c: $79
    add a                                         ; $412d: $87
    add a                                         ; $412e: $87
    add c                                         ; $412f: $81
    add l                                         ; $4130: $85
    ld l, a                                       ; $4131: $6f
    ld [hl], e                                    ; $4132: $73
    pop hl                                        ; $4133: $e1
    jp Jump_07f_40a4                              ; $4134: $c3 $a4 $40


    swap a                                        ; $4137: $cb $37
    ld e, a                                       ; $4139: $5f
    ld hl, $ff11                                  ; $413a: $21 $11 $ff
    ld a, c                                       ; $413d: $79
    add a                                         ; $413e: $87
    add a                                         ; $413f: $87
    add c                                         ; $4140: $81
    add l                                         ; $4141: $85
    ld l, a                                       ; $4142: $6f
    ld [hl], e                                    ; $4143: $73
    pop hl                                        ; $4144: $e1
    jp Jump_07f_40a4                              ; $4145: $c3 $a4 $40


    ld hl, $c586                                  ; $4148: $21 $86 $c5
    add hl, bc                                    ; $414b: $09
    add hl, bc                                    ; $414c: $09
    pop de                                        ; $414d: $d1
    ld a, [de]                                    ; $414e: $1a
    inc de                                        ; $414f: $13
    ld [hl], e                                    ; $4150: $73
    inc hl                                        ; $4151: $23
    ld [hl], d                                    ; $4152: $72
    ld hl, $c582                                  ; $4153: $21 $82 $c5
    add hl, bc                                    ; $4156: $09
    ld [hl], a                                    ; $4157: $77
    ld l, e                                       ; $4158: $6b
    ld h, d                                       ; $4159: $62
    jp Jump_07f_40a4                              ; $415a: $c3 $a4 $40


    ld hl, $c582                                  ; $415d: $21 $82 $c5
    add hl, bc                                    ; $4160: $09
    ld a, [hl]                                    ; $4161: $7e
    dec a                                         ; $4162: $3d
    jr z, jr_07f_4172                             ; $4163: $28 $0d

    ld [hl], a                                    ; $4165: $77
    ld hl, $c586                                  ; $4166: $21 $86 $c5
    add hl, bc                                    ; $4169: $09
    add hl, bc                                    ; $416a: $09
    ld a, [hl+]                                   ; $416b: $2a
    ld h, [hl]                                    ; $416c: $66
    ld l, a                                       ; $416d: $6f
    pop de                                        ; $416e: $d1
    jp Jump_07f_40a4                              ; $416f: $c3 $a4 $40


jr_07f_4172:
    pop hl                                        ; $4172: $e1
    jp Jump_07f_40a4                              ; $4173: $c3 $a4 $40


    ld hl, $c572                                  ; $4176: $21 $72 $c5
    add hl, bc                                    ; $4179: $09
    ld e, l                                       ; $417a: $5d
    ld d, h                                       ; $417b: $54
    pop hl                                        ; $417c: $e1
    ld a, [hl+]                                   ; $417d: $2a
    ld [de], a                                    ; $417e: $12
    jp Jump_07f_40a4                              ; $417f: $c3 $a4 $40


    ld a, c                                       ; $4182: $79
    cp $03                                        ; $4183: $fe $03
    jr nz, jr_07f_418c                            ; $4185: $20 $05

    call Call_07f_41dd                            ; $4187: $cd $dd $41
    jr jr_07f_418f                                ; $418a: $18 $03

jr_07f_418c:
    call Call_07f_419d                            ; $418c: $cd $9d $41

jr_07f_418f:
    ld hl, $c576                                  ; $418f: $21 $76 $c5
    add hl, bc                                    ; $4192: $09
    ld e, l                                       ; $4193: $5d
    ld d, h                                       ; $4194: $54
    pop hl                                        ; $4195: $e1
    ld a, [hl+]                                   ; $4196: $2a
    ld [de], a                                    ; $4197: $12
    ld e, l                                       ; $4198: $5d
    ld d, h                                       ; $4199: $54
    jp Jump_07f_4115                              ; $419a: $c3 $15 $41


Call_07f_419d:
    ld hl, $c572                                  ; $419d: $21 $72 $c5
    add hl, bc                                    ; $41a0: $09
    ld a, [hl]                                    ; $41a1: $7e
    or a                                          ; $41a2: $b7
    jr z, jr_07f_41dc                             ; $41a3: $28 $37

    ld hl, $c57a                                  ; $41a5: $21 $7a $c5
    add hl, bc                                    ; $41a8: $09
    add hl, bc                                    ; $41a9: $09
    bit 7, a                                      ; $41aa: $cb $7f
    jr z, jr_07f_41ba                             ; $41ac: $28 $0c

    xor $ff                                       ; $41ae: $ee $ff
    inc a                                         ; $41b0: $3c
    ld d, a                                       ; $41b1: $57
    ld a, [hl]                                    ; $41b2: $7e
    sub d                                         ; $41b3: $92
    ld [hl+], a                                   ; $41b4: $22
    ld e, a                                       ; $41b5: $5f
    ld a, [hl]                                    ; $41b6: $7e
    sbc b                                         ; $41b7: $98
    jr jr_07f_41c1                                ; $41b8: $18 $07

jr_07f_41ba:
    ld d, a                                       ; $41ba: $57
    ld a, [hl]                                    ; $41bb: $7e
    add d                                         ; $41bc: $82
    ld [hl+], a                                   ; $41bd: $22
    ld e, a                                       ; $41be: $5f
    ld a, [hl]                                    ; $41bf: $7e
    adc b                                         ; $41c0: $88

jr_07f_41c1:
    ld [hl], a                                    ; $41c1: $77
    ld hl, $c56e                                  ; $41c2: $21 $6e $c5
    add hl, bc                                    ; $41c5: $09
    ld d, [hl]                                    ; $41c6: $56
    ld [hl], $00                                  ; $41c7: $36 $00
    or d                                          ; $41c9: $b2
    ld d, a                                       ; $41ca: $57
    ld hl, $ff11                                  ; $41cb: $21 $11 $ff
    ld a, c                                       ; $41ce: $79
    add a                                         ; $41cf: $87
    add a                                         ; $41d0: $87
    add c                                         ; $41d1: $81
    add l                                         ; $41d2: $85
    ld l, a                                       ; $41d3: $6f
    ld a, [hl]                                    ; $41d4: $7e
    and $c0                                       ; $41d5: $e6 $c0
    ld [hl+], a                                   ; $41d7: $22
    inc hl                                        ; $41d8: $23
    ld a, e                                       ; $41d9: $7b
    ld [hl+], a                                   ; $41da: $22
    ld [hl], d                                    ; $41db: $72

jr_07f_41dc:
    ret                                           ; $41dc: $c9


Call_07f_41dd:
    ld hl, $c575                                  ; $41dd: $21 $75 $c5
    ld a, [hl]                                    ; $41e0: $7e
    or a                                          ; $41e1: $b7
    jr z, jr_07f_4211                             ; $41e2: $28 $2d

    ld hl, $c580                                  ; $41e4: $21 $80 $c5
    bit 7, a                                      ; $41e7: $cb $7f
    jr z, jr_07f_41f5                             ; $41e9: $28 $0a

    xor $ff                                       ; $41eb: $ee $ff
    inc a                                         ; $41ed: $3c
    ld d, a                                       ; $41ee: $57
    ld e, [hl]                                    ; $41ef: $5e
    ld a, e                                       ; $41f0: $7b
    sub d                                         ; $41f1: $92
    ld [hl], a                                    ; $41f2: $77
    jr jr_07f_41fa                                ; $41f3: $18 $05

jr_07f_41f5:
    ld d, a                                       ; $41f5: $57
    ld e, [hl]                                    ; $41f6: $5e
    ld a, e                                       ; $41f7: $7b
    add d                                         ; $41f8: $82
    ld [hl], a                                    ; $41f9: $77

jr_07f_41fa:
    ld d, a                                       ; $41fa: $57
    xor e                                         ; $41fb: $ab
    and $08                                       ; $41fc: $e6 $08
    swap a                                        ; $41fe: $cb $37
    ld hl, $c571                                  ; $4200: $21 $71 $c5
    ld e, [hl]                                    ; $4203: $5e
    ld [hl], $00                                  ; $4204: $36 $00
    or e                                          ; $4206: $b3
    ld e, a                                       ; $4207: $5f
    ld hl, $ff20                                  ; $4208: $21 $20 $ff
    xor a                                         ; $420b: $af
    ld [hl+], a                                   ; $420c: $22
    inc hl                                        ; $420d: $23
    ld a, d                                       ; $420e: $7a
    ld [hl+], a                                   ; $420f: $22
    ld [hl], e                                    ; $4210: $73

jr_07f_4211:
    ret                                           ; $4211: $c9


    add a                                         ; $4212: $87
    ld d, $00                                     ; $4213: $16 $00
    ld e, a                                       ; $4215: $5f
    ld hl, $4b6b                                  ; $4216: $21 $6b $4b
    add hl, de                                    ; $4219: $19
    ld a, [hl+]                                   ; $421a: $2a
    ld h, [hl]                                    ; $421b: $66
    ld l, a                                       ; $421c: $6f
    ld a, $00                                     ; $421d: $3e $00
    ldh [rNR30], a                                ; $421f: $e0 $1a
    ld b, d                                       ; $4221: $42
    ld de, $ff30                                  ; $4222: $11 $30 $ff

jr_07f_4225:
    ld a, [hl+]                                   ; $4225: $2a
    ld [de], a                                    ; $4226: $12
    inc de                                        ; $4227: $13
    inc b                                         ; $4228: $04
    ld a, b                                       ; $4229: $78
    cp $10                                        ; $422a: $fe $10
    jr nz, jr_07f_4225                            ; $422c: $20 $f7

    ld a, $01                                     ; $422e: $3e $01
    ld [$c4cb], a                                 ; $4230: $ea $cb $c4
    ld a, $80                                     ; $4233: $3e $80
    ldh [rNR30], a                                ; $4235: $e0 $1a
    ld b, $00                                     ; $4237: $06 $00
    pop hl                                        ; $4239: $e1
    jp Jump_07f_40a4                              ; $423a: $c3 $a4 $40


    pop hl                                        ; $423d: $e1
    ld a, [hl+]                                   ; $423e: $2a
    push hl                                       ; $423f: $e5
    push bc                                       ; $4240: $c5
    inc c                                         ; $4241: $0c
    ld e, $ee                                     ; $4242: $1e $ee

jr_07f_4244:
    dec c                                         ; $4244: $0d
    jr z, jr_07f_424c                             ; $4245: $28 $05

    rlca                                          ; $4247: $07
    rlc e                                         ; $4248: $cb $03
    jr jr_07f_4244                                ; $424a: $18 $f8

jr_07f_424c:
    ld d, a                                       ; $424c: $57
    ld hl, $c4c5                                  ; $424d: $21 $c5 $c4
    ld a, [hl]                                    ; $4250: $7e
    and e                                         ; $4251: $a3
    or d                                          ; $4252: $b2
    ld [hl], a                                    ; $4253: $77
    pop bc                                        ; $4254: $c1
    pop hl                                        ; $4255: $e1
    jp Jump_07f_40a4                              ; $4256: $c3 $a4 $40


    ld hl, $c57a                                  ; $4259: $21 $7a $c5
    add hl, bc                                    ; $425c: $09
    add hl, bc                                    ; $425d: $09
    push hl                                       ; $425e: $e5
    ld hl, $caab                                  ; $425f: $21 $ab $ca
    ld a, [hl+]                                   ; $4262: $2a
    ld h, [hl]                                    ; $4263: $66
    ld l, a                                       ; $4264: $6f
    srl h                                         ; $4265: $cb $3c
    rr l                                          ; $4267: $cb $1d
    res 0, l                                      ; $4269: $cb $85
    ld de, $431c                                  ; $426b: $11 $1c $43
    add hl, de                                    ; $426e: $19
    ld a, [hl+]                                   ; $426f: $2a
    ld d, [hl]                                    ; $4270: $56
    ld e, a                                       ; $4271: $5f
    pop hl                                        ; $4272: $e1
    ld a, e                                       ; $4273: $7b
    ld [hl+], a                                   ; $4274: $22
    ld a, d                                       ; $4275: $7a
    ld [hl+], a                                   ; $4276: $22
    ld hl, $c56e                                  ; $4277: $21 $6e $c5
    add hl, bc                                    ; $427a: $09
    ld a, [hl]                                    ; $427b: $7e
    ld [hl], $00                                  ; $427c: $36 $00
    or d                                          ; $427e: $b2
    ld d, a                                       ; $427f: $57
    ld hl, $ff11                                  ; $4280: $21 $11 $ff
    ld a, c                                       ; $4283: $79
    add a                                         ; $4284: $87
    add a                                         ; $4285: $87
    add c                                         ; $4286: $81
    add l                                         ; $4287: $85
    ld l, a                                       ; $4288: $6f
    ld a, [hl]                                    ; $4289: $7e
    and $c0                                       ; $428a: $e6 $c0
    ld [hl+], a                                   ; $428c: $22
    inc hl                                        ; $428d: $23
    ld a, e                                       ; $428e: $7b
    ld [hl+], a                                   ; $428f: $22
    ld [hl], d                                    ; $4290: $72
    pop de                                        ; $4291: $d1
    ld hl, $c58e                                  ; $4292: $21 $8e $c5
    add hl, bc                                    ; $4295: $09
    add hl, bc                                    ; $4296: $09
    ld [hl], e                                    ; $4297: $73
    inc hl                                        ; $4298: $23
    ld [hl], d                                    ; $4299: $72
    ret                                           ; $429a: $c9


    ld e, c                                       ; $429b: $59
    inc e                                         ; $429c: $1c
    ld a, $7f                                     ; $429d: $3e $7f

jr_07f_429f:
    rlca                                          ; $429f: $07
    dec e                                         ; $42a0: $1d
    jr nz, jr_07f_429f                            ; $42a1: $20 $fc

    ld e, a                                       ; $42a3: $5f
    ld a, [$c4cc]                                 ; $42a4: $fa $cc $c4
    and e                                         ; $42a7: $a3
    ld [$c4cc], a                                 ; $42a8: $ea $cc $c4
    ld a, c                                       ; $42ab: $79
    rlca                                          ; $42ac: $07
    rlca                                          ; $42ad: $07
    add c                                         ; $42ae: $81
    ld e, a                                       ; $42af: $5f
    ld d, b                                       ; $42b0: $50
    ld hl, $ff12                                  ; $42b1: $21 $12 $ff
    add hl, de                                    ; $42b4: $19
    ld a, $08                                     ; $42b5: $3e $08
    ld [hl+], a                                   ; $42b7: $22
    inc hl                                        ; $42b8: $23
    swap a                                        ; $42b9: $cb $37
    ld [hl], a                                    ; $42bb: $77
    pop hl                                        ; $42bc: $e1
    ret                                           ; $42bd: $c9


Jump_07f_42be:
    xor a                                         ; $42be: $af
    ld [$c596], a                                 ; $42bf: $ea $96 $c5
    ld [$c4c3], a                                 ; $42c2: $ea $c3 $c4
    ld a, $80                                     ; $42c5: $3e $80
    ld [$c4c2], a                                 ; $42c7: $ea $c2 $c4
    ret                                           ; $42ca: $c9


    ld a, $08                                     ; $42cb: $3e $08
    ldh a, [rNR12]                                ; $42cd: $f0 $12
    ldh a, [rNR22]                                ; $42cf: $f0 $17
    ldh a, [rNR32]                                ; $42d1: $f0 $1c
    ldh a, [rNR42]                                ; $42d3: $f0 $21
    ld a, $80                                     ; $42d5: $3e $80
    ldh a, [rNR14]                                ; $42d7: $f0 $14
    ldh a, [rNR24]                                ; $42d9: $f0 $19
    ldh a, [rNR44]                                ; $42db: $f0 $23
    xor a                                         ; $42dd: $af
    ld [$c4cc], a                                 ; $42de: $ea $cc $c4
    ret                                           ; $42e1: $c9


Call_07f_42e2:
    push hl                                       ; $42e2: $e5
    ld a, [$c4cc]                                 ; $42e3: $fa $cc $c4
    rrca                                          ; $42e6: $0f
    jr nc, jr_07f_42f2                            ; $42e7: $30 $09

    ld hl, $ff12                                  ; $42e9: $21 $12 $ff
    ld [hl], $08                                  ; $42ec: $36 $08
    ld l, $14                                     ; $42ee: $2e $14
    ld [hl], $80                                  ; $42f0: $36 $80

jr_07f_42f2:
    rrca                                          ; $42f2: $0f
    jr nc, jr_07f_42fe                            ; $42f3: $30 $09

    ld hl, $ff17                                  ; $42f5: $21 $17 $ff
    ld [hl], $08                                  ; $42f8: $36 $08
    ld l, $19                                     ; $42fa: $2e $19
    ld [hl], $80                                  ; $42fc: $36 $80

jr_07f_42fe:
    rrca                                          ; $42fe: $0f
    jr nc, jr_07f_430a                            ; $42ff: $30 $09

    ld hl, $ff1c                                  ; $4301: $21 $1c $ff
    ld [hl], $08                                  ; $4304: $36 $08
    ld l, $1e                                     ; $4306: $2e $1e
    ld [hl], $80                                  ; $4308: $36 $80

jr_07f_430a:
    rrca                                          ; $430a: $0f
    jr nc, jr_07f_4316                            ; $430b: $30 $09

    ld hl, $ff21                                  ; $430d: $21 $21 $ff
    ld [hl], $08                                  ; $4310: $36 $08
    ld l, $23                                     ; $4312: $2e $23
    ld [hl], $80                                  ; $4314: $36 $80

jr_07f_4316:
    xor a                                         ; $4316: $af
    ld [$c4cc], a                                 ; $4317: $ea $cc $c4
    pop hl                                        ; $431a: $e1
    ret                                           ; $431b: $c9


    db $fb, $05, $fd, $05, $00, $06, $02, $06, $04, $06, $06, $06, $08, $06, $0b, $06
    db $0d, $06, $0f, $06, $11, $06, $13, $06, $15, $06, $17, $06, $1a, $06, $1c, $06
    db $1e, $06, $20, $06, $22, $06, $24, $06, $26, $06, $28, $06, $2a, $06, $2c, $06
    db $2e, $06, $30, $06, $32, $06, $34, $06, $36, $06, $38, $06, $3a, $06, $3c, $06
    db $3e, $06, $40, $06, $42, $06, $44, $06, $46, $06, $48, $06, $4a, $06, $4b, $06
    db $4d, $06, $4f, $06, $51, $06, $53, $06, $55, $06, $57, $06, $58, $06, $5a, $06
    db $5c, $06, $5e, $06, $60, $06, $62, $06, $63, $06, $65, $06, $67, $06, $69, $06
    db $6a, $06, $6c, $06, $6e, $06, $70, $06, $71, $06, $73, $06, $75, $06, $77, $06
    db $78, $06, $7a, $06, $7c, $06, $7d, $06, $7f, $06, $81, $06, $82, $06, $84, $06
    db $86, $06, $87, $06, $89, $06, $8a, $06, $8c, $06, $8e, $06, $8f, $06, $91, $06
    db $92, $06, $94, $06, $96, $06, $97, $06, $99, $06, $9a, $06, $9c, $06, $9d, $06
    db $9f, $06, $a0, $06, $a2, $06, $a3, $06, $a5, $06, $a6, $06, $a8, $06, $a9, $06
    db $ab, $06, $ac, $06, $ae, $06, $af, $06, $b1, $06, $b2, $06, $b4, $06, $b5, $06
    db $b6, $06, $b8, $06, $b9, $06, $bb, $06, $bc, $06, $be, $06, $bf, $06, $c0, $06
    db $c2, $06, $c3, $06, $c4, $06, $c6, $06, $c7, $06, $c8, $06, $ca, $06, $cb, $06
    db $cc, $06, $ce, $06, $cf, $06, $d0, $06, $d2, $06, $d3, $06, $d4, $06, $d6, $06
    db $d7, $06, $d8, $06, $da, $06, $db, $06, $dc, $06, $dd, $06, $df, $06, $e0, $06
    db $e1, $06, $e2, $06, $e4, $06, $e5, $06, $e6, $06, $e7, $06, $e8, $06, $ea, $06
    db $eb, $06, $ec, $06, $ed, $06, $ee, $06, $f0, $06, $f1, $06, $f2, $06, $f3, $06
    db $f4, $06, $f5, $06, $f7, $06, $f8, $06, $f9, $06, $fa, $06, $fb, $06, $fc, $06
    db $fd, $06, $fe, $06, $00, $07, $01, $07, $02, $07, $03, $07, $04, $07, $05, $07
    db $06, $07, $07, $07, $08, $07, $09, $07, $0a, $07, $0b, $07, $0d, $07, $0e, $07
    db $0f, $07, $10, $07, $11, $07, $12, $07, $13, $07, $14, $07, $15, $07, $16, $07
    db $17, $07, $18, $07, $19, $07, $1a, $07, $1b, $07, $1c, $07, $1d, $07, $1e, $07
    db $1f, $07, $20, $07, $21, $07, $22, $07, $23, $07, $24, $07, $25, $07, $25, $07
    db $26, $07, $27, $07, $28, $07, $29, $07, $2a, $07, $2b, $07, $2c, $07, $2d, $07
    db $2e, $07, $2f, $07, $30, $07, $31, $07, $31, $07, $32, $07, $33, $07, $34, $07
    db $35, $07, $36, $07, $37, $07, $38, $07, $38, $07, $39, $07, $3a, $07, $3b, $07
    db $3c, $07, $3d, $07, $3e, $07, $3e, $07, $3f, $07, $40, $07, $41, $07, $42, $07
    db $43, $07, $43, $07, $44, $07, $45, $07, $46, $07, $47, $07, $47, $07, $48, $07
    db $49, $07, $4a, $07, $4b, $07, $4b, $07, $4c, $07, $4d, $07, $4e, $07, $4e, $07
    db $4f, $07, $50, $07, $51, $07, $51, $07, $52, $07, $53, $07, $54, $07, $54, $07
    db $55, $07, $56, $07, $57, $07, $57, $07, $58, $07, $59, $07, $5a, $07, $5a, $07
    db $5b, $07, $5c, $07, $5c, $07, $5d, $07, $5e, $07, $5f, $07, $5f, $07, $60, $07
    db $61, $07, $61, $07, $62, $07, $63, $07, $63, $07, $64, $07, $65, $07, $65, $07
    db $66, $07, $67, $07, $67, $07, $68, $07, $69, $07, $69, $07, $6a, $07, $6b, $07
    db $6b, $07, $6c, $07, $6d, $07, $6d, $07, $6e, $07, $6e, $07, $6f, $07, $70, $07
    db $70, $07, $71, $07, $72, $07, $72, $07, $73, $07, $73, $07, $74, $07, $75, $07
    db $75, $07, $76, $07, $76, $07, $77, $07, $78, $07, $78, $07, $79, $07, $79, $07
    db $7a, $07, $7a, $07, $7b, $07, $7c, $07, $7c, $07, $7d, $07, $7d, $07, $7e, $07
    db $7e, $07, $7f, $07, $80, $07, $80, $07, $81, $07, $81, $07, $82, $07, $82, $07
    db $83, $07, $83, $07, $84, $07, $84, $07, $85, $07, $85, $07, $86, $07, $87, $07
    db $87, $07, $88, $07, $88, $07, $89, $07, $89, $07, $8a, $07, $8a, $07, $8b, $07
    db $8b, $07, $8c, $07, $8c, $07, $8d, $07, $8d, $07

    adc [hl]                                      ; $45d6: $8e
    rlca                                          ; $45d7: $07
    adc [hl]                                      ; $45d8: $8e
    rlca                                          ; $45d9: $07
    adc a                                         ; $45da: $8f
    rlca                                          ; $45db: $07
    adc a                                         ; $45dc: $8f
    rlca                                          ; $45dd: $07
    sub b                                         ; $45de: $90
    rlca                                          ; $45df: $07
    sub b                                         ; $45e0: $90
    rlca                                          ; $45e1: $07
    sub c                                         ; $45e2: $91
    rlca                                          ; $45e3: $07
    sub c                                         ; $45e4: $91
    rlca                                          ; $45e5: $07
    sub d                                         ; $45e6: $92
    rlca                                          ; $45e7: $07
    sub d                                         ; $45e8: $92
    rlca                                          ; $45e9: $07
    sub d                                         ; $45ea: $92
    rlca                                          ; $45eb: $07
    sub e                                         ; $45ec: $93
    rlca                                          ; $45ed: $07
    sub e                                         ; $45ee: $93
    rlca                                          ; $45ef: $07
    sub h                                         ; $45f0: $94
    rlca                                          ; $45f1: $07
    sub h                                         ; $45f2: $94
    rlca                                          ; $45f3: $07
    sub l                                         ; $45f4: $95
    rlca                                          ; $45f5: $07
    sub l                                         ; $45f6: $95
    rlca                                          ; $45f7: $07
    sub [hl]                                      ; $45f8: $96
    rlca                                          ; $45f9: $07
    sub [hl]                                      ; $45fa: $96
    rlca                                          ; $45fb: $07
    sub a                                         ; $45fc: $97
    rlca                                          ; $45fd: $07
    sub a                                         ; $45fe: $97
    rlca                                          ; $45ff: $07
    sbc b                                         ; $4600: $98
    rlca                                          ; $4601: $07
    sbc b                                         ; $4602: $98
    rlca                                          ; $4603: $07
    sbc b                                         ; $4604: $98
    rlca                                          ; $4605: $07
    sbc c                                         ; $4606: $99
    rlca                                          ; $4607: $07
    sbc c                                         ; $4608: $99
    rlca                                          ; $4609: $07
    sbc d                                         ; $460a: $9a
    rlca                                          ; $460b: $07
    sbc d                                         ; $460c: $9a
    rlca                                          ; $460d: $07
    sbc e                                         ; $460e: $9b
    rlca                                          ; $460f: $07
    sbc e                                         ; $4610: $9b
    rlca                                          ; $4611: $07
    sbc h                                         ; $4612: $9c
    rlca                                          ; $4613: $07
    sbc h                                         ; $4614: $9c
    rlca                                          ; $4615: $07
    sbc h                                         ; $4616: $9c
    rlca                                          ; $4617: $07
    sbc l                                         ; $4618: $9d
    rlca                                          ; $4619: $07
    sbc l                                         ; $461a: $9d
    rlca                                          ; $461b: $07
    sbc [hl]                                      ; $461c: $9e
    rlca                                          ; $461d: $07
    sbc [hl]                                      ; $461e: $9e
    rlca                                          ; $461f: $07
    sbc a                                         ; $4620: $9f
    rlca                                          ; $4621: $07
    sbc a                                         ; $4622: $9f
    rlca                                          ; $4623: $07
    sbc a                                         ; $4624: $9f
    rlca                                          ; $4625: $07
    and b                                         ; $4626: $a0
    rlca                                          ; $4627: $07
    and b                                         ; $4628: $a0
    rlca                                          ; $4629: $07
    and c                                         ; $462a: $a1
    rlca                                          ; $462b: $07
    and c                                         ; $462c: $a1
    rlca                                          ; $462d: $07
    and c                                         ; $462e: $a1
    rlca                                          ; $462f: $07
    and d                                         ; $4630: $a2
    rlca                                          ; $4631: $07
    and d                                         ; $4632: $a2
    rlca                                          ; $4633: $07
    and e                                         ; $4634: $a3
    rlca                                          ; $4635: $07
    and e                                         ; $4636: $a3
    rlca                                          ; $4637: $07
    and e                                         ; $4638: $a3
    rlca                                          ; $4639: $07
    and h                                         ; $463a: $a4
    rlca                                          ; $463b: $07
    and h                                         ; $463c: $a4
    rlca                                          ; $463d: $07
    and l                                         ; $463e: $a5
    rlca                                          ; $463f: $07
    and l                                         ; $4640: $a5
    rlca                                          ; $4641: $07
    and l                                         ; $4642: $a5
    rlca                                          ; $4643: $07
    and [hl]                                      ; $4644: $a6
    rlca                                          ; $4645: $07
    and [hl]                                      ; $4646: $a6
    rlca                                          ; $4647: $07
    and a                                         ; $4648: $a7
    rlca                                          ; $4649: $07
    and a                                         ; $464a: $a7
    rlca                                          ; $464b: $07
    and a                                         ; $464c: $a7
    rlca                                          ; $464d: $07
    xor b                                         ; $464e: $a8
    rlca                                          ; $464f: $07
    xor b                                         ; $4650: $a8
    rlca                                          ; $4651: $07
    xor b                                         ; $4652: $a8
    rlca                                          ; $4653: $07
    xor c                                         ; $4654: $a9
    rlca                                          ; $4655: $07
    xor c                                         ; $4656: $a9
    rlca                                          ; $4657: $07
    xor d                                         ; $4658: $aa
    rlca                                          ; $4659: $07
    xor d                                         ; $465a: $aa
    rlca                                          ; $465b: $07
    xor d                                         ; $465c: $aa
    rlca                                          ; $465d: $07
    xor e                                         ; $465e: $ab
    rlca                                          ; $465f: $07
    xor e                                         ; $4660: $ab
    rlca                                          ; $4661: $07
    xor e                                         ; $4662: $ab
    rlca                                          ; $4663: $07
    xor h                                         ; $4664: $ac
    rlca                                          ; $4665: $07
    xor h                                         ; $4666: $ac
    rlca                                          ; $4667: $07
    xor l                                         ; $4668: $ad
    rlca                                          ; $4669: $07
    xor l                                         ; $466a: $ad
    rlca                                          ; $466b: $07
    xor l                                         ; $466c: $ad
    rlca                                          ; $466d: $07
    xor [hl]                                      ; $466e: $ae
    rlca                                          ; $466f: $07
    xor [hl]                                      ; $4670: $ae
    rlca                                          ; $4671: $07
    xor [hl]                                      ; $4672: $ae
    rlca                                          ; $4673: $07
    xor a                                         ; $4674: $af
    rlca                                          ; $4675: $07
    xor a                                         ; $4676: $af
    rlca                                          ; $4677: $07
    xor a                                         ; $4678: $af
    rlca                                          ; $4679: $07
    or b                                          ; $467a: $b0
    rlca                                          ; $467b: $07
    or b                                          ; $467c: $b0
    rlca                                          ; $467d: $07
    or b                                          ; $467e: $b0
    rlca                                          ; $467f: $07
    or c                                          ; $4680: $b1
    rlca                                          ; $4681: $07
    or c                                          ; $4682: $b1
    rlca                                          ; $4683: $07
    or c                                          ; $4684: $b1
    rlca                                          ; $4685: $07
    or d                                          ; $4686: $b2
    rlca                                          ; $4687: $07
    or d                                          ; $4688: $b2
    rlca                                          ; $4689: $07
    or d                                          ; $468a: $b2
    rlca                                          ; $468b: $07
    or e                                          ; $468c: $b3
    rlca                                          ; $468d: $07
    or e                                          ; $468e: $b3
    rlca                                          ; $468f: $07
    or e                                          ; $4690: $b3
    rlca                                          ; $4691: $07
    or h                                          ; $4692: $b4
    rlca                                          ; $4693: $07
    or h                                          ; $4694: $b4
    rlca                                          ; $4695: $07
    or h                                          ; $4696: $b4
    rlca                                          ; $4697: $07
    or l                                          ; $4698: $b5
    rlca                                          ; $4699: $07
    or l                                          ; $469a: $b5
    rlca                                          ; $469b: $07
    or l                                          ; $469c: $b5
    rlca                                          ; $469d: $07
    or [hl]                                       ; $469e: $b6
    rlca                                          ; $469f: $07
    or [hl]                                       ; $46a0: $b6
    rlca                                          ; $46a1: $07
    or [hl]                                       ; $46a2: $b6
    rlca                                          ; $46a3: $07
    or a                                          ; $46a4: $b7
    rlca                                          ; $46a5: $07
    or a                                          ; $46a6: $b7
    rlca                                          ; $46a7: $07
    or a                                          ; $46a8: $b7
    rlca                                          ; $46a9: $07
    cp b                                          ; $46aa: $b8
    rlca                                          ; $46ab: $07
    cp b                                          ; $46ac: $b8
    rlca                                          ; $46ad: $07
    cp b                                          ; $46ae: $b8
    rlca                                          ; $46af: $07
    cp c                                          ; $46b0: $b9
    rlca                                          ; $46b1: $07
    cp c                                          ; $46b2: $b9
    rlca                                          ; $46b3: $07
    cp c                                          ; $46b4: $b9
    rlca                                          ; $46b5: $07
    cp c                                          ; $46b6: $b9
    rlca                                          ; $46b7: $07
    cp d                                          ; $46b8: $ba
    rlca                                          ; $46b9: $07
    cp d                                          ; $46ba: $ba
    rlca                                          ; $46bb: $07
    cp d                                          ; $46bc: $ba
    rlca                                          ; $46bd: $07
    cp e                                          ; $46be: $bb
    rlca                                          ; $46bf: $07
    cp e                                          ; $46c0: $bb
    rlca                                          ; $46c1: $07
    cp e                                          ; $46c2: $bb
    rlca                                          ; $46c3: $07
    cp h                                          ; $46c4: $bc
    rlca                                          ; $46c5: $07
    cp h                                          ; $46c6: $bc
    rlca                                          ; $46c7: $07
    cp h                                          ; $46c8: $bc
    rlca                                          ; $46c9: $07
    cp h                                          ; $46ca: $bc
    rlca                                          ; $46cb: $07
    cp l                                          ; $46cc: $bd
    rlca                                          ; $46cd: $07
    cp l                                          ; $46ce: $bd
    rlca                                          ; $46cf: $07
    cp l                                          ; $46d0: $bd
    rlca                                          ; $46d1: $07
    cp [hl]                                       ; $46d2: $be
    rlca                                          ; $46d3: $07
    cp [hl]                                       ; $46d4: $be
    rlca                                          ; $46d5: $07
    cp [hl]                                       ; $46d6: $be
    rlca                                          ; $46d7: $07
    cp [hl]                                       ; $46d8: $be
    rlca                                          ; $46d9: $07
    cp a                                          ; $46da: $bf
    rlca                                          ; $46db: $07
    cp a                                          ; $46dc: $bf
    rlca                                          ; $46dd: $07
    cp a                                          ; $46de: $bf
    rlca                                          ; $46df: $07
    ret nz                                        ; $46e0: $c0

    rlca                                          ; $46e1: $07
    ret nz                                        ; $46e2: $c0

    rlca                                          ; $46e3: $07
    ret nz                                        ; $46e4: $c0

    rlca                                          ; $46e5: $07
    ret nz                                        ; $46e6: $c0

    rlca                                          ; $46e7: $07
    pop bc                                        ; $46e8: $c1
    rlca                                          ; $46e9: $07
    pop bc                                        ; $46ea: $c1
    rlca                                          ; $46eb: $07
    pop bc                                        ; $46ec: $c1
    rlca                                          ; $46ed: $07
    pop bc                                        ; $46ee: $c1
    rlca                                          ; $46ef: $07
    jp nz, $c207                                  ; $46f0: $c2 $07 $c2

    rlca                                          ; $46f3: $07
    jp nz, $c207                                  ; $46f4: $c2 $07 $c2

    rlca                                          ; $46f7: $07
    jp $c307                                      ; $46f8: $c3 $07 $c3


    rlca                                          ; $46fb: $07
    jp $c407                                      ; $46fc: $c3 $07 $c4


    rlca                                          ; $46ff: $07
    call nz, $c407                                ; $4700: $c4 $07 $c4
    rlca                                          ; $4703: $07
    call nz, $c507                                ; $4704: $c4 $07 $c5
    rlca                                          ; $4707: $07
    push bc                                       ; $4708: $c5
    rlca                                          ; $4709: $07
    push bc                                       ; $470a: $c5
    rlca                                          ; $470b: $07
    push bc                                       ; $470c: $c5
    rlca                                          ; $470d: $07
    add $07                                       ; $470e: $c6 $07
    add $07                                       ; $4710: $c6 $07
    add $07                                       ; $4712: $c6 $07
    add $07                                       ; $4714: $c6 $07
    rst $00                                       ; $4716: $c7
    rlca                                          ; $4717: $07
    rst $00                                       ; $4718: $c7
    rlca                                          ; $4719: $07
    rst $00                                       ; $471a: $c7
    rlca                                          ; $471b: $07
    rst $00                                       ; $471c: $c7
    rlca                                          ; $471d: $07
    ret z                                         ; $471e: $c8

    rlca                                          ; $471f: $07
    ret z                                         ; $4720: $c8

    rlca                                          ; $4721: $07
    ret z                                         ; $4722: $c8

    rlca                                          ; $4723: $07
    ret z                                         ; $4724: $c8

    rlca                                          ; $4725: $07
    ret                                           ; $4726: $c9


    rlca                                          ; $4727: $07
    ret                                           ; $4728: $c9


    rlca                                          ; $4729: $07
    ret                                           ; $472a: $c9


    rlca                                          ; $472b: $07
    ret                                           ; $472c: $c9


    rlca                                          ; $472d: $07
    ret                                           ; $472e: $c9


    rlca                                          ; $472f: $07
    jp z, $ca07                                   ; $4730: $ca $07 $ca

    rlca                                          ; $4733: $07
    jp z, $ca07                                   ; $4734: $ca $07 $ca

    rlca                                          ; $4737: $07
    rlc a                                         ; $4738: $cb $07
    rlc a                                         ; $473a: $cb $07
    rlc a                                         ; $473c: $cb $07
    rlc a                                         ; $473e: $cb $07
    call z, $cc07                                 ; $4740: $cc $07 $cc
    rlca                                          ; $4743: $07
    call z, $cc07                                 ; $4744: $cc $07 $cc
    rlca                                          ; $4747: $07
    call z, $cd07                                 ; $4748: $cc $07 $cd
    rlca                                          ; $474b: $07
    call $cd07                                    ; $474c: $cd $07 $cd
    rlca                                          ; $474f: $07
    call $ce07                                    ; $4750: $cd $07 $ce
    rlca                                          ; $4753: $07
    adc $07                                       ; $4754: $ce $07
    adc $07                                       ; $4756: $ce $07
    adc $07                                       ; $4758: $ce $07
    adc $07                                       ; $475a: $ce $07
    rst $08                                       ; $475c: $cf
    rlca                                          ; $475d: $07
    rst $08                                       ; $475e: $cf
    rlca                                          ; $475f: $07
    rst $08                                       ; $4760: $cf
    rlca                                          ; $4761: $07
    rst $08                                       ; $4762: $cf
    rlca                                          ; $4763: $07
    rst $08                                       ; $4764: $cf
    rlca                                          ; $4765: $07
    ret nc                                        ; $4766: $d0

    rlca                                          ; $4767: $07
    ret nc                                        ; $4768: $d0

    rlca                                          ; $4769: $07
    ret nc                                        ; $476a: $d0

    rlca                                          ; $476b: $07
    ret nc                                        ; $476c: $d0

    rlca                                          ; $476d: $07
    ret nc                                        ; $476e: $d0

    rlca                                          ; $476f: $07
    pop de                                        ; $4770: $d1
    rlca                                          ; $4771: $07
    pop de                                        ; $4772: $d1
    rlca                                          ; $4773: $07
    pop de                                        ; $4774: $d1
    rlca                                          ; $4775: $07
    pop de                                        ; $4776: $d1
    rlca                                          ; $4777: $07
    pop de                                        ; $4778: $d1
    rlca                                          ; $4779: $07
    jp nc, $d207                                  ; $477a: $d2 $07 $d2

    rlca                                          ; $477d: $07
    jp nc, $d207                                  ; $477e: $d2 $07 $d2

    rlca                                          ; $4781: $07
    jp nc, $d307                                  ; $4782: $d2 $07 $d3

    rlca                                          ; $4785: $07
    db $d3                                        ; $4786: $d3
    rlca                                          ; $4787: $07
    db $d3                                        ; $4788: $d3
    rlca                                          ; $4789: $07
    db $d3                                        ; $478a: $d3
    rlca                                          ; $478b: $07
    db $d3                                        ; $478c: $d3
    rlca                                          ; $478d: $07
    call nc, $d407                                ; $478e: $d4 $07 $d4
    rlca                                          ; $4791: $07
    call nc, $d407                                ; $4792: $d4 $07 $d4
    rlca                                          ; $4795: $07
    call nc, $d507                                ; $4796: $d4 $07 $d5
    rlca                                          ; $4799: $07
    push de                                       ; $479a: $d5
    rlca                                          ; $479b: $07
    push de                                       ; $479c: $d5
    rlca                                          ; $479d: $07
    push de                                       ; $479e: $d5
    rlca                                          ; $479f: $07
    push de                                       ; $47a0: $d5
    rlca                                          ; $47a1: $07
    push de                                       ; $47a2: $d5
    rlca                                          ; $47a3: $07
    sub $07                                       ; $47a4: $d6 $07
    sub $07                                       ; $47a6: $d6 $07
    sub $07                                       ; $47a8: $d6 $07
    sub $07                                       ; $47aa: $d6 $07
    sub $07                                       ; $47ac: $d6 $07
    rst $10                                       ; $47ae: $d7
    rlca                                          ; $47af: $07
    rst $10                                       ; $47b0: $d7
    rlca                                          ; $47b1: $07
    rst $10                                       ; $47b2: $d7
    rlca                                          ; $47b3: $07
    rst $10                                       ; $47b4: $d7
    rlca                                          ; $47b5: $07
    rst $10                                       ; $47b6: $d7
    rlca                                          ; $47b7: $07
    rst $10                                       ; $47b8: $d7
    rlca                                          ; $47b9: $07
    ret c                                         ; $47ba: $d8

    rlca                                          ; $47bb: $07
    ret c                                         ; $47bc: $d8

    rlca                                          ; $47bd: $07
    ret c                                         ; $47be: $d8

    rlca                                          ; $47bf: $07
    ret c                                         ; $47c0: $d8

    rlca                                          ; $47c1: $07
    ret c                                         ; $47c2: $d8

    rlca                                          ; $47c3: $07
    ret c                                         ; $47c4: $d8

    rlca                                          ; $47c5: $07
    reti                                          ; $47c6: $d9


    rlca                                          ; $47c7: $07
    reti                                          ; $47c8: $d9


    rlca                                          ; $47c9: $07
    reti                                          ; $47ca: $d9


    rlca                                          ; $47cb: $07
    reti                                          ; $47cc: $d9


    rlca                                          ; $47cd: $07
    reti                                          ; $47ce: $d9


    rlca                                          ; $47cf: $07
    reti                                          ; $47d0: $d9


    rlca                                          ; $47d1: $07
    jp c, $da07                                   ; $47d2: $da $07 $da

    rlca                                          ; $47d5: $07
    jp c, $da07                                   ; $47d6: $da $07 $da

    rlca                                          ; $47d9: $07
    jp c, $da07                                   ; $47da: $da $07 $da

    rlca                                          ; $47dd: $07
    db $db                                        ; $47de: $db
    rlca                                          ; $47df: $07
    db $db                                        ; $47e0: $db
    rlca                                          ; $47e1: $07
    db $db                                        ; $47e2: $db
    rlca                                          ; $47e3: $07
    db $db                                        ; $47e4: $db
    rlca                                          ; $47e5: $07
    db $db                                        ; $47e6: $db
    rlca                                          ; $47e7: $07
    db $db                                        ; $47e8: $db
    rlca                                          ; $47e9: $07
    call c, $dc07                                 ; $47ea: $dc $07 $dc
    rlca                                          ; $47ed: $07
    call c, $dc07                                 ; $47ee: $dc $07 $dc
    rlca                                          ; $47f1: $07
    call c, $dc07                                 ; $47f2: $dc $07 $dc
    rlca                                          ; $47f5: $07
    call c, $dd07                                 ; $47f6: $dc $07 $dd
    rlca                                          ; $47f9: $07
    db $dd                                        ; $47fa: $dd
    rlca                                          ; $47fb: $07
    db $dd                                        ; $47fc: $dd
    rlca                                          ; $47fd: $07
    db $dd                                        ; $47fe: $dd
    rlca                                          ; $47ff: $07
    db $dd                                        ; $4800: $dd
    rlca                                          ; $4801: $07
    db $dd                                        ; $4802: $dd
    rlca                                          ; $4803: $07
    sbc $07                                       ; $4804: $de $07
    sbc $07                                       ; $4806: $de $07
    sbc $07                                       ; $4808: $de $07
    sbc $07                                       ; $480a: $de $07
    sbc $07                                       ; $480c: $de $07
    sbc $07                                       ; $480e: $de $07
    sbc $07                                       ; $4810: $de $07
    rst $18                                       ; $4812: $df
    rlca                                          ; $4813: $07
    rst $18                                       ; $4814: $df
    rlca                                          ; $4815: $07
    rst $18                                       ; $4816: $df
    rlca                                          ; $4817: $07
    rst $18                                       ; $4818: $df
    rlca                                          ; $4819: $07
    rst $18                                       ; $481a: $df
    rlca                                          ; $481b: $07
    rst $18                                       ; $481c: $df
    rlca                                          ; $481d: $07
    rst $18                                       ; $481e: $df
    rlca                                          ; $481f: $07
    ldh [rTAC], a                                 ; $4820: $e0 $07
    ldh [rTAC], a                                 ; $4822: $e0 $07
    ldh [rTAC], a                                 ; $4824: $e0 $07
    ldh [rTAC], a                                 ; $4826: $e0 $07
    ldh [rTAC], a                                 ; $4828: $e0 $07
    ldh [rTAC], a                                 ; $482a: $e0 $07
    ldh [rTAC], a                                 ; $482c: $e0 $07
    ldh [rTAC], a                                 ; $482e: $e0 $07
    pop hl                                        ; $4830: $e1
    rlca                                          ; $4831: $07
    pop hl                                        ; $4832: $e1
    rlca                                          ; $4833: $07
    pop hl                                        ; $4834: $e1
    rlca                                          ; $4835: $07
    pop hl                                        ; $4836: $e1
    rlca                                          ; $4837: $07
    pop hl                                        ; $4838: $e1
    rlca                                          ; $4839: $07
    pop hl                                        ; $483a: $e1
    rlca                                          ; $483b: $07
    pop hl                                        ; $483c: $e1
    rlca                                          ; $483d: $07
    ld [c], a                                     ; $483e: $e2
    rlca                                          ; $483f: $07
    ld [c], a                                     ; $4840: $e2
    rlca                                          ; $4841: $07
    ld [c], a                                     ; $4842: $e2
    rlca                                          ; $4843: $07
    ld [c], a                                     ; $4844: $e2
    rlca                                          ; $4845: $07
    ld [c], a                                     ; $4846: $e2
    rlca                                          ; $4847: $07
    ld [c], a                                     ; $4848: $e2
    rlca                                          ; $4849: $07
    ld [c], a                                     ; $484a: $e2
    rlca                                          ; $484b: $07
    ld [c], a                                     ; $484c: $e2
    rlca                                          ; $484d: $07
    db $e3                                        ; $484e: $e3
    rlca                                          ; $484f: $07
    db $e3                                        ; $4850: $e3
    rlca                                          ; $4851: $07
    db $e3                                        ; $4852: $e3
    rlca                                          ; $4853: $07
    db $e3                                        ; $4854: $e3
    rlca                                          ; $4855: $07
    db $e3                                        ; $4856: $e3
    rlca                                          ; $4857: $07
    db $e3                                        ; $4858: $e3
    rlca                                          ; $4859: $07
    db $e3                                        ; $485a: $e3
    rlca                                          ; $485b: $07
    db $e3                                        ; $485c: $e3
    rlca                                          ; $485d: $07
    db $e4                                        ; $485e: $e4
    rlca                                          ; $485f: $07
    db $e4                                        ; $4860: $e4
    rlca                                          ; $4861: $07
    db $e4                                        ; $4862: $e4
    rlca                                          ; $4863: $07
    db $e4                                        ; $4864: $e4
    rlca                                          ; $4865: $07
    db $e4                                        ; $4866: $e4
    rlca                                          ; $4867: $07
    db $e4                                        ; $4868: $e4
    rlca                                          ; $4869: $07
    db $e4                                        ; $486a: $e4
    rlca                                          ; $486b: $07
    db $e4                                        ; $486c: $e4
    rlca                                          ; $486d: $07
    db $e4                                        ; $486e: $e4
    rlca                                          ; $486f: $07
    push hl                                       ; $4870: $e5
    rlca                                          ; $4871: $07
    push hl                                       ; $4872: $e5
    rlca                                          ; $4873: $07
    push hl                                       ; $4874: $e5
    rlca                                          ; $4875: $07
    push hl                                       ; $4876: $e5
    rlca                                          ; $4877: $07
    push hl                                       ; $4878: $e5
    rlca                                          ; $4879: $07
    push hl                                       ; $487a: $e5
    rlca                                          ; $487b: $07
    push hl                                       ; $487c: $e5
    rlca                                          ; $487d: $07
    push hl                                       ; $487e: $e5
    rlca                                          ; $487f: $07
    and $07                                       ; $4880: $e6 $07
    and $07                                       ; $4882: $e6 $07
    and $07                                       ; $4884: $e6 $07
    and $07                                       ; $4886: $e6 $07
    and $07                                       ; $4888: $e6 $07
    and $07                                       ; $488a: $e6 $07
    and $07                                       ; $488c: $e6 $07
    and $07                                       ; $488e: $e6 $07
    and $07                                       ; $4890: $e6 $07
    rst $20                                       ; $4892: $e7
    rlca                                          ; $4893: $07
    rst $20                                       ; $4894: $e7
    rlca                                          ; $4895: $07
    rst $20                                       ; $4896: $e7
    rlca                                          ; $4897: $07
    rst $20                                       ; $4898: $e7
    rlca                                          ; $4899: $07
    rst $20                                       ; $489a: $e7
    rlca                                          ; $489b: $07
    rst $20                                       ; $489c: $e7
    rlca                                          ; $489d: $07
    rst $20                                       ; $489e: $e7
    rlca                                          ; $489f: $07
    rst $20                                       ; $48a0: $e7
    rlca                                          ; $48a1: $07
    rst $20                                       ; $48a2: $e7
    rlca                                          ; $48a3: $07
    rst $20                                       ; $48a4: $e7
    rlca                                          ; $48a5: $07
    add sp, $07                                   ; $48a6: $e8 $07
    add sp, $07                                   ; $48a8: $e8 $07
    add sp, $07                                   ; $48aa: $e8 $07
    add sp, $07                                   ; $48ac: $e8 $07
    add sp, $07                                   ; $48ae: $e8 $07
    add sp, $07                                   ; $48b0: $e8 $07
    add sp, $07                                   ; $48b2: $e8 $07
    add sp, $07                                   ; $48b4: $e8 $07
    add sp, $07                                   ; $48b6: $e8 $07
    add sp, $07                                   ; $48b8: $e8 $07
    jp hl                                         ; $48ba: $e9


    rlca                                          ; $48bb: $07
    jp hl                                         ; $48bc: $e9


    rlca                                          ; $48bd: $07
    jp hl                                         ; $48be: $e9


    rlca                                          ; $48bf: $07
    jp hl                                         ; $48c0: $e9


    rlca                                          ; $48c1: $07
    jp hl                                         ; $48c2: $e9


    rlca                                          ; $48c3: $07
    jp hl                                         ; $48c4: $e9


    rlca                                          ; $48c5: $07
    jp hl                                         ; $48c6: $e9


    rlca                                          ; $48c7: $07
    jp hl                                         ; $48c8: $e9


    rlca                                          ; $48c9: $07
    jp hl                                         ; $48ca: $e9


    rlca                                          ; $48cb: $07
    jp hl                                         ; $48cc: $e9


    rlca                                          ; $48cd: $07
    ld [$ea07], a                                 ; $48ce: $ea $07 $ea
    rlca                                          ; $48d1: $07
    ld [$ea07], a                                 ; $48d2: $ea $07 $ea
    rlca                                          ; $48d5: $07
    ld [$ea07], a                                 ; $48d6: $ea $07 $ea
    rlca                                          ; $48d9: $07
    ld [$ea07], a                                 ; $48da: $ea $07 $ea
    rlca                                          ; $48dd: $07
    ld [$ea07], a                                 ; $48de: $ea $07 $ea
    rlca                                          ; $48e1: $07
    ld [$eb07], a                                 ; $48e2: $ea $07 $eb
    rlca                                          ; $48e5: $07
    db $eb                                        ; $48e6: $eb
    rlca                                          ; $48e7: $07
    db $eb                                        ; $48e8: $eb
    rlca                                          ; $48e9: $07
    db $eb                                        ; $48ea: $eb
    rlca                                          ; $48eb: $07
    db $eb                                        ; $48ec: $eb
    rlca                                          ; $48ed: $07
    db $eb                                        ; $48ee: $eb
    rlca                                          ; $48ef: $07
    db $eb                                        ; $48f0: $eb
    rlca                                          ; $48f1: $07
    db $eb                                        ; $48f2: $eb
    rlca                                          ; $48f3: $07
    db $eb                                        ; $48f4: $eb
    rlca                                          ; $48f5: $07
    db $eb                                        ; $48f6: $eb
    rlca                                          ; $48f7: $07
    db $eb                                        ; $48f8: $eb
    rlca                                          ; $48f9: $07
    db $ec                                        ; $48fa: $ec
    rlca                                          ; $48fb: $07
    db $ec                                        ; $48fc: $ec
    rlca                                          ; $48fd: $07
    db $ec                                        ; $48fe: $ec
    rlca                                          ; $48ff: $07
    db $ec                                        ; $4900: $ec
    rlca                                          ; $4901: $07
    db $ec                                        ; $4902: $ec
    rlca                                          ; $4903: $07
    db $ec                                        ; $4904: $ec
    rlca                                          ; $4905: $07
    db $ec                                        ; $4906: $ec
    rlca                                          ; $4907: $07
    db $ec                                        ; $4908: $ec
    rlca                                          ; $4909: $07
    db $ec                                        ; $490a: $ec
    rlca                                          ; $490b: $07
    db $ec                                        ; $490c: $ec
    rlca                                          ; $490d: $07
    db $ec                                        ; $490e: $ec
    rlca                                          ; $490f: $07
    db $ec                                        ; $4910: $ec
    rlca                                          ; $4911: $07
    db $ed                                        ; $4912: $ed
    rlca                                          ; $4913: $07
    db $ed                                        ; $4914: $ed
    rlca                                          ; $4915: $07
    db $ed                                        ; $4916: $ed
    rlca                                          ; $4917: $07
    db $ed                                        ; $4918: $ed
    rlca                                          ; $4919: $07
    db $ed                                        ; $491a: $ed
    rlca                                          ; $491b: $07
    db $ed                                        ; $491c: $ed
    rlca                                          ; $491d: $07
    db $ed                                        ; $491e: $ed
    rlca                                          ; $491f: $07
    db $ed                                        ; $4920: $ed
    rlca                                          ; $4921: $07
    db $ed                                        ; $4922: $ed
    rlca                                          ; $4923: $07
    db $ed                                        ; $4924: $ed
    rlca                                          ; $4925: $07
    db $ed                                        ; $4926: $ed
    rlca                                          ; $4927: $07
    db $ed                                        ; $4928: $ed
    rlca                                          ; $4929: $07
    xor $07                                       ; $492a: $ee $07
    xor $07                                       ; $492c: $ee $07
    xor $07                                       ; $492e: $ee $07
    xor $07                                       ; $4930: $ee $07
    xor $07                                       ; $4932: $ee $07
    xor $07                                       ; $4934: $ee $07
    xor $07                                       ; $4936: $ee $07
    xor $07                                       ; $4938: $ee $07
    xor $07                                       ; $493a: $ee $07
    xor $07                                       ; $493c: $ee $07
    xor $07                                       ; $493e: $ee $07
    xor $07                                       ; $4940: $ee $07
    xor $07                                       ; $4942: $ee $07
    rst $28                                       ; $4944: $ef
    rlca                                          ; $4945: $07
    rst $28                                       ; $4946: $ef
    rlca                                          ; $4947: $07
    rst $28                                       ; $4948: $ef
    rlca                                          ; $4949: $07
    rst $28                                       ; $494a: $ef
    rlca                                          ; $494b: $07
    rst $28                                       ; $494c: $ef
    rlca                                          ; $494d: $07
    rst $28                                       ; $494e: $ef
    rlca                                          ; $494f: $07
    rst $28                                       ; $4950: $ef
    rlca                                          ; $4951: $07
    rst $28                                       ; $4952: $ef
    rlca                                          ; $4953: $07
    rst $28                                       ; $4954: $ef
    rlca                                          ; $4955: $07
    rst $28                                       ; $4956: $ef
    rlca                                          ; $4957: $07
    rst $28                                       ; $4958: $ef
    rlca                                          ; $4959: $07
    rst $28                                       ; $495a: $ef
    rlca                                          ; $495b: $07

    db $6e

    add hl, hl                                    ; $495d: $29
    ld c, d                                       ; $495e: $4a

    db $2a, $4a

    cpl                                           ; $4961: $2f
    ld c, d                                       ; $4962: $4a

    db $34, $4a

    add hl, sp                                    ; $4965: $39
    ld c, d                                       ; $4966: $4a

    db $3e, $4a, $43, $4a

    ld c, b                                       ; $496b: $48
    ld c, d                                       ; $496c: $4a

    db $4d, $4a, $50, $4a

    ld d, e                                       ; $4971: $53
    ld c, d                                       ; $4972: $4a
    ld d, [hl]                                    ; $4973: $56
    ld c, d                                       ; $4974: $4a
    ld e, c                                       ; $4975: $59
    ld c, d                                       ; $4976: $4a
    ld e, h                                       ; $4977: $5c
    ld c, d                                       ; $4978: $4a
    ld e, a                                       ; $4979: $5f
    ld c, d                                       ; $497a: $4a
    ld h, d                                       ; $497b: $62
    ld c, d                                       ; $497c: $4a
    ld h, l                                       ; $497d: $65
    ld c, d                                       ; $497e: $4a
    ld l, b                                       ; $497f: $68
    ld c, d                                       ; $4980: $4a
    ld l, e                                       ; $4981: $6b
    ld c, d                                       ; $4982: $4a

    db $6e, $4a

    ld [hl], c                                    ; $4985: $71
    ld c, d                                       ; $4986: $4a
    ld [hl], h                                    ; $4987: $74
    ld c, d                                       ; $4988: $4a

    db $77, $4a

    ld a, d                                       ; $498b: $7a
    ld c, d                                       ; $498c: $4a

    db $7d, $4a

    add b                                         ; $498f: $80
    ld c, d                                       ; $4990: $4a

    db $83, $4a, $86, $4a, $89, $4a, $8c, $4a, $8f, $4a, $92, $4a, $95, $4a

    sbc b                                         ; $499f: $98
    ld c, d                                       ; $49a0: $4a

    db $9b, $4a

    sbc [hl]                                      ; $49a3: $9e
    ld c, d                                       ; $49a4: $4a
    and c                                         ; $49a5: $a1
    ld c, d                                       ; $49a6: $4a
    and h                                         ; $49a7: $a4
    ld c, d                                       ; $49a8: $4a
    and a                                         ; $49a9: $a7
    ld c, d                                       ; $49aa: $4a
    xor d                                         ; $49ab: $aa
    ld c, d                                       ; $49ac: $4a
    xor l                                         ; $49ad: $ad
    ld c, d                                       ; $49ae: $4a
    or b                                          ; $49af: $b0
    ld c, d                                       ; $49b0: $4a
    or e                                          ; $49b1: $b3
    ld c, d                                       ; $49b2: $4a
    or [hl]                                       ; $49b3: $b6
    ld c, d                                       ; $49b4: $4a
    cp c                                          ; $49b5: $b9
    ld c, d                                       ; $49b6: $4a

    db $bc, $4a, $bf, $4a, $c2, $4a, $c5, $4a

    ret z                                         ; $49bf: $c8

    ld c, d                                       ; $49c0: $4a
    bit 1, d                                      ; $49c1: $cb $4a
    adc $4a                                       ; $49c3: $ce $4a
    pop de                                        ; $49c5: $d1
    ld c, d                                       ; $49c6: $4a
    call nc, $d74a                                ; $49c7: $d4 $4a $d7
    ld c, d                                       ; $49ca: $4a
    jp c, $dd4a                                   ; $49cb: $da $4a $dd

    ld c, d                                       ; $49ce: $4a
    ldh [rWY], a                                  ; $49cf: $e0 $4a
    db $e3                                        ; $49d1: $e3
    ld c, d                                       ; $49d2: $4a
    and $4a                                       ; $49d3: $e6 $4a
    jp hl                                         ; $49d5: $e9


    ld c, d                                       ; $49d6: $4a

    db $ec, $4a, $ef, $4a, $f2, $4a, $f5, $4a, $f8, $4a, $fb, $4a, $fe, $4a, $01, $4b
    db $04, $4b, $07, $4b, $0a, $4b, $0d, $4b

    db $10                                        ; $49ef: $10
    ld c, e                                       ; $49f0: $4b

    db $13, $4b

    ld d, $4b                                     ; $49f3: $16 $4b

    db $19, $4b, $1c, $4b

    rra                                           ; $49f9: $1f
    ld c, e                                       ; $49fa: $4b

    db $22, $4b, $25, $4b

    jr z, jr_07f_4a4c                             ; $49ff: $28 $4b

    db $2b, $4b

    ld l, $4b                                     ; $4a03: $2e $4b
    inc sp                                        ; $4a05: $33
    ld c, e                                       ; $4a06: $4b
    ld [hl], $4b                                  ; $4a07: $36 $4b
    add hl, sp                                    ; $4a09: $39
    ld c, e                                       ; $4a0a: $4b
    inc a                                         ; $4a0b: $3c
    ld c, e                                       ; $4a0c: $4b
    ccf                                           ; $4a0d: $3f
    ld c, e                                       ; $4a0e: $4b
    ld b, d                                       ; $4a0f: $42
    ld c, e                                       ; $4a10: $4b
    ld b, l                                       ; $4a11: $45
    ld c, e                                       ; $4a12: $4b
    ld c, b                                       ; $4a13: $48
    ld c, e                                       ; $4a14: $4b

    db $4b, $4b

    ld c, [hl]                                    ; $4a17: $4e
    ld c, e                                       ; $4a18: $4b
    ld d, e                                       ; $4a19: $53
    ld c, e                                       ; $4a1a: $4b
    ld d, [hl]                                    ; $4a1b: $56
    ld c, e                                       ; $4a1c: $4b
    ld e, c                                       ; $4a1d: $59
    ld c, e                                       ; $4a1e: $4b
    ld e, h                                       ; $4a1f: $5c
    ld c, e                                       ; $4a20: $4b
    ld e, a                                       ; $4a21: $5f
    ld c, e                                       ; $4a22: $4b
    ld h, d                                       ; $4a23: $62
    ld c, e                                       ; $4a24: $4b
    ld h, l                                       ; $4a25: $65
    ld c, e                                       ; $4a26: $4b
    ld l, b                                       ; $4a27: $68
    ld c, e                                       ; $4a28: $4b
    nop                                           ; $4a29: $00

    db $0a, $83, $61, $cf, $4d

    ld a, [bc]                                    ; $4a2f: $0a
    add e                                         ; $4a30: $83
    ld h, c                                       ; $4a31: $61
    ld d, $4e                                     ; $4a32: $16 $4e

    db $0a, $83, $61, $a4, $4e

    ld a, [bc]                                    ; $4a39: $0a
    add e                                         ; $4a3a: $83
    ld h, c                                       ; $4a3b: $61
    db $da                                        ; $4a3c: $da
    ld c, [hl]                                    ; $4a3d: $4e

    db $0a, $83, $61, $10, $4f, $0a, $83, $61, $45, $4f

    ld a, [bc]                                    ; $4a48: $0a
    add e                                         ; $4a49: $83
    ld h, c                                       ; $4a4a: $61
    adc l                                         ; $4a4b: $8d

jr_07f_4a4c:
    ld c, a                                       ; $4a4c: $4f

    db $08, $ef, $4f, $08, $fe, $4f

    ld [$5011], sp                                ; $4a53: $08 $11 $50
    ld [bc], a                                    ; $4a56: $02
    inc h                                         ; $4a57: $24
    ld d, b                                       ; $4a58: $50
    ld [$5040], sp                                ; $4a59: $08 $40 $50
    ld [$504f], sp                                ; $4a5c: $08 $4f $50
    ld [$505f], sp                                ; $4a5f: $08 $5f $50
    ld [bc], a                                    ; $4a62: $02
    cp l                                          ; $4a63: $bd
    ld d, b                                       ; $4a64: $50
    ld [$50eb], sp                                ; $4a65: $08 $eb $50
    ld [$512c], sp                                ; $4a68: $08 $2c $51
    ld [$515e], sp                                ; $4a6b: $08 $5e $51

    db $08, $c7, $51

    ld [bc], a                                    ; $4a71: $02
    ld h, a                                       ; $4a72: $67
    ld d, d                                       ; $4a73: $52
    ld [bc], a                                    ; $4a74: $02
    adc [hl]                                      ; $4a75: $8e
    ld d, d                                       ; $4a76: $52

    db $02, $b5, $52

    ld [bc], a                                    ; $4a7a: $02
    db $d3                                        ; $4a7b: $d3
    ld d, d                                       ; $4a7c: $52

    db $08, $ef, $52

    ld [$5320], sp                                ; $4a80: $08 $20 $53

    db $02, $46, $53, $02, $98, $53, $02, $a8, $53, $02, $c9, $53, $02, $f1, $53, $02
    db $0e, $54, $02, $4c, $54

    ld [bc], a                                    ; $4a98: $02
    ld e, b                                       ; $4a99: $58
    ld d, h                                       ; $4a9a: $54

    db $02, $78, $54

    ld [bc], a                                    ; $4a9e: $02
    or [hl]                                       ; $4a9f: $b6
    ld d, h                                       ; $4aa0: $54
    ld [bc], a                                    ; $4aa1: $02
    ld [hl], $55                                  ; $4aa2: $36 $55
    ld [bc], a                                    ; $4aa4: $02
    ld h, d                                       ; $4aa5: $62
    ld d, l                                       ; $4aa6: $55
    ld [bc], a                                    ; $4aa7: $02
    cp $55                                        ; $4aa8: $fe $55
    ld [bc], a                                    ; $4aaa: $02
    inc e                                         ; $4aab: $1c
    ld d, [hl]                                    ; $4aac: $56
    ld [bc], a                                    ; $4aad: $02
    jr nc, @+$58                                  ; $4aae: $30 $56

    ld [bc], a                                    ; $4ab0: $02
    xor b                                         ; $4ab1: $a8
    ld d, [hl]                                    ; $4ab2: $56
    ld [bc], a                                    ; $4ab3: $02
    call z, $0256                                 ; $4ab4: $cc $56 $02
    ldh a, [rRP]                                  ; $4ab7: $f0 $56
    ld [bc], a                                    ; $4ab9: $02
    inc d                                         ; $4aba: $14
    ld d, a                                       ; $4abb: $57

    db $02, $38, $57, $02, $55, $57, $02, $72, $57, $02, $8f, $57

    ld [bc], a                                    ; $4ac8: $02
    xor h                                         ; $4ac9: $ac
    ld d, a                                       ; $4aca: $57
    ld [bc], a                                    ; $4acb: $02
    ret nz                                        ; $4acc: $c0

    ld d, a                                       ; $4acd: $57
    ld [bc], a                                    ; $4ace: $02
    call nc, $0257                                ; $4acf: $d4 $57 $02
    add sp, $57                                   ; $4ad2: $e8 $57
    ld [bc], a                                    ; $4ad4: $02
    db $fc                                        ; $4ad5: $fc
    ld d, a                                       ; $4ad6: $57
    ld [bc], a                                    ; $4ad7: $02
    inc e                                         ; $4ad8: $1c
    ld e, b                                       ; $4ad9: $58
    ld [bc], a                                    ; $4ada: $02
    inc a                                         ; $4adb: $3c
    ld e, b                                       ; $4adc: $58
    ld [bc], a                                    ; $4add: $02
    ld e, h                                       ; $4ade: $5c
    ld e, b                                       ; $4adf: $58
    ld [bc], a                                    ; $4ae0: $02
    ld a, h                                       ; $4ae1: $7c
    ld e, b                                       ; $4ae2: $58
    ld [bc], a                                    ; $4ae3: $02
    sbc d                                         ; $4ae4: $9a
    ld e, b                                       ; $4ae5: $58
    ld [bc], a                                    ; $4ae6: $02
    cp b                                          ; $4ae7: $b8
    ld e, b                                       ; $4ae8: $58
    ld [bc], a                                    ; $4ae9: $02
    sub $58                                       ; $4aea: $d6 $58

    db $02, $f4, $58, $02, $0e, $59, $02, $28, $59, $02, $42, $59, $02, $5c, $59, $02
    db $6e, $59, $02, $80, $59, $02, $92, $59, $02, $a4, $59, $02, $c0, $59, $02, $dc
    db $59, $02, $f8, $59

    ld [bc], a                                    ; $4b10: $02
    inc d                                         ; $4b11: $14
    ld e, d                                       ; $4b12: $5a

    db $02, $32, $5a

    ld [bc], a                                    ; $4b16: $02
    ld a, $5a                                     ; $4b17: $3e $5a

    db $08, $4e, $5a, $02, $63, $5a

    ld [bc], a                                    ; $4b1f: $02
    ld [hl], l                                    ; $4b20: $75
    ld e, d                                       ; $4b21: $5a

    db $02, $81, $5a, $02, $a1, $5a

    ld [$5aad], sp                                ; $4b28: $08 $ad $5a

    db $08, $20, $5b

    ld a, [bc]                                    ; $4b2e: $0a
    ld l, l                                       ; $4b2f: $6d
    ld e, e                                       ; $4b30: $5b
    inc [hl]                                      ; $4b31: $34
    ld e, h                                       ; $4b32: $5c
    ld [bc], a                                    ; $4b33: $02
    ld l, l                                       ; $4b34: $6d
    ld e, h                                       ; $4b35: $5c
    ld [bc], a                                    ; $4b36: $02
    and b                                         ; $4b37: $a0
    ld e, h                                       ; $4b38: $5c
    ld [bc], a                                    ; $4b39: $02
    ld [de], a                                    ; $4b3a: $12
    ld e, l                                       ; $4b3b: $5d
    ld [$5d72], sp                                ; $4b3c: $08 $72 $5d
    ld [bc], a                                    ; $4b3f: $02
    and e                                         ; $4b40: $a3
    ld e, l                                       ; $4b41: $5d
    ld [bc], a                                    ; $4b42: $02
    add hl, de                                    ; $4b43: $19
    ld e, [hl]                                    ; $4b44: $5e
    ld [$5e83], sp                                ; $4b45: $08 $83 $5e
    ld [$5e9c], sp                                ; $4b48: $08 $9c $5e

    db $02, $b2, $5e

    ld a, [bc]                                    ; $4b4e: $0a
    add $5e                                       ; $4b4f: $c6 $5e
    push hl                                       ; $4b51: $e5
    ld e, [hl]                                    ; $4b52: $5e
    ld [$5f0d], sp                                ; $4b53: $08 $0d $5f
    ld [$5f4e], sp                                ; $4b56: $08 $4e $5f
    ld [bc], a                                    ; $4b59: $02
    ld l, l                                       ; $4b5a: $6d
    ld e, a                                       ; $4b5b: $5f
    ld [bc], a                                    ; $4b5c: $02
    adc e                                         ; $4b5d: $8b
    ld e, a                                       ; $4b5e: $5f
    ld [$5faa], sp                                ; $4b5f: $08 $aa $5f
    ld [bc], a                                    ; $4b62: $02
    dec c                                         ; $4b63: $0d
    ld h, b                                       ; $4b64: $60
    ld [bc], a                                    ; $4b65: $02
    cp a                                          ; $4b66: $bf
    ld h, b                                       ; $4b67: $60
    ld [bc], a                                    ; $4b68: $02
    ld d, a                                       ; $4b69: $57
    ld h, c                                       ; $4b6a: $61
    rrca                                          ; $4b6b: $0f
    ld c, h                                       ; $4b6c: $4c
    rra                                           ; $4b6d: $1f
    ld c, h                                       ; $4b6e: $4c
    cpl                                           ; $4b6f: $2f
    ld c, h                                       ; $4b70: $4c
    ccf                                           ; $4b71: $3f
    ld c, h                                       ; $4b72: $4c
    ld c, a                                       ; $4b73: $4f
    ld c, h                                       ; $4b74: $4c
    ld e, a                                       ; $4b75: $5f
    ld c, h                                       ; $4b76: $4c
    ld l, a                                       ; $4b77: $6f
    ld c, h                                       ; $4b78: $4c
    ld a, a                                       ; $4b79: $7f
    ld c, h                                       ; $4b7a: $4c
    adc a                                         ; $4b7b: $8f
    ld c, l                                       ; $4b7c: $4d
    sbc a                                         ; $4b7d: $9f
    ld c, l                                       ; $4b7e: $4d
    xor a                                         ; $4b7f: $af
    ld c, l                                       ; $4b80: $4d
    cp a                                          ; $4b81: $bf
    ld c, l                                       ; $4b82: $4d
    ld c, a                                       ; $4b83: $4f
    ld c, l                                       ; $4b84: $4d
    ld e, a                                       ; $4b85: $5f
    ld c, l                                       ; $4b86: $4d
    ld l, a                                       ; $4b87: $6f
    ld c, l                                       ; $4b88: $4d
    ld a, a                                       ; $4b89: $7f
    ld c, l                                       ; $4b8a: $4d
    rrca                                          ; $4b8b: $0f
    ld c, l                                       ; $4b8c: $4d
    rra                                           ; $4b8d: $1f
    ld c, l                                       ; $4b8e: $4d
    cpl                                           ; $4b8f: $2f
    ld c, l                                       ; $4b90: $4d
    ccf                                           ; $4b91: $3f
    ld c, l                                       ; $4b92: $4d
    rst $08                                       ; $4b93: $cf
    ld c, h                                       ; $4b94: $4c
    rst $18                                       ; $4b95: $df
    ld c, h                                       ; $4b96: $4c
    rst $28                                       ; $4b97: $ef
    ld c, h                                       ; $4b98: $4c
    rst $38                                       ; $4b99: $ff
    ld c, h                                       ; $4b9a: $4c
    adc a                                         ; $4b9b: $8f
    ld c, h                                       ; $4b9c: $4c
    sbc a                                         ; $4b9d: $9f
    ld c, h                                       ; $4b9e: $4c
    xor a                                         ; $4b9f: $af
    ld c, h                                       ; $4ba0: $4c
    cp a                                          ; $4ba1: $bf
    ld c, h                                       ; $4ba2: $4c
    xor a                                         ; $4ba3: $af
    ld c, e                                       ; $4ba4: $4b
    cp a                                          ; $4ba5: $bf
    ld c, e                                       ; $4ba6: $4b
    rst $08                                       ; $4ba7: $cf
    ld c, e                                       ; $4ba8: $4b
    rst $18                                       ; $4ba9: $df
    ld c, e                                       ; $4baa: $4b
    rst $28                                       ; $4bab: $ef
    ld c, e                                       ; $4bac: $4b
    rst $38                                       ; $4bad: $ff
    ld c, e                                       ; $4bae: $4b
    xor $ee                                       ; $4baf: $ee $ee
    xor $ee                                       ; $4bb1: $ee $ee
    xor $ee                                       ; $4bb3: $ee $ee
    db $ec                                        ; $4bb5: $ec
    xor b                                         ; $4bb6: $a8
    ld h, h                                       ; $4bb7: $64
    jr nz, jr_07f_4bba                            ; $4bb8: $20 $00

jr_07f_4bba:
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    xor $ee                                       ; $4bbf: $ee $ee
    xor $ee                                       ; $4bc1: $ee $ee
    xor $ed                                       ; $4bc3: $ee $ed
    res 3, b                                      ; $4bc5: $cb $98
    ld h, l                                       ; $4bc7: $65
    ld [hl-], a                                   ; $4bc8: $32
    stop                                          ; $4bc9: $10 $00
    nop                                           ; $4bcb: $00
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    xor $ee                                       ; $4bcf: $ee $ee
    xor $ee                                       ; $4bd1: $ee $ee
    xor $ee                                       ; $4bd3: $ee $ee
    xor $ca                                       ; $4bd5: $ee $ca
    ld h, e                                       ; $4bd7: $63
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    rst $38                                       ; $4bdf: $ff
    adc b                                         ; $4be0: $88
    rst $38                                       ; $4be1: $ff
    rst $38                                       ; $4be2: $ff
    rst $38                                       ; $4be3: $ff
    sbc c                                         ; $4be4: $99
    ld [hl], a                                    ; $4be5: $77
    ld b, h                                       ; $4be6: $44
    ld [hl+], a                                   ; $4be7: $22
    nop                                           ; $4be8: $00
    ld b, b                                       ; $4be9: $40
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    rst $38                                       ; $4bef: $ff
    rst $38                                       ; $4bf0: $ff
    rst $38                                       ; $4bf1: $ff
    rst $38                                       ; $4bf2: $ff
    rst $38                                       ; $4bf3: $ff
    rst $38                                       ; $4bf4: $ff
    rst $38                                       ; $4bf5: $ff
    rst $38                                       ; $4bf6: $ff
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    xor [hl]                                      ; $4bff: $ae
    xor $ee                                       ; $4c00: $ee $ee
    xor $ee                                       ; $4c02: $ee $ee
    xor $ee                                       ; $4c04: $ee $ee
    ld [$1151], a                                 ; $4c06: $ea $51 $11
    ld de, $1111                                  ; $4c09: $11 $11 $11
    ld de, $1511                                  ; $4c0c: $11 $11 $15
    ld a, c                                       ; $4c0f: $79
    cp l                                          ; $4c10: $bd
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    rst $38                                       ; $4c13: $ff
    rst $38                                       ; $4c14: $ff
    db $fd                                        ; $4c15: $fd
    cp c                                          ; $4c16: $b9
    ld [hl], l                                    ; $4c17: $75
    ld sp, $0000                                  ; $4c18: $31 $00 $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    ld bc, $0135                                  ; $4c1d: $01 $35 $01
    ld [de], a                                    ; $4c20: $12
    inc hl                                        ; $4c21: $23
    inc [hl]                                      ; $4c22: $34
    ld b, l                                       ; $4c23: $45
    ld d, [hl]                                    ; $4c24: $56
    ld h, a                                       ; $4c25: $67
    ld [hl], a                                    ; $4c26: $77
    adc b                                         ; $4c27: $88
    sbc c                                         ; $4c28: $99
    xor d                                         ; $4c29: $aa
    cp e                                          ; $4c2a: $bb
    call z, $eedd                                 ; $4c2b: $cc $dd $ee
    rst $38                                       ; $4c2e: $ff
    ld [de], a                                    ; $4c2f: $12
    inc hl                                        ; $4c30: $23
    inc sp                                        ; $4c31: $33
    ld b, h                                       ; $4c32: $44
    ld d, l                                       ; $4c33: $55
    ld h, [hl]                                    ; $4c34: $66
    ld [hl], a                                    ; $4c35: $77
    ld [hl], a                                    ; $4c36: $77
    ld a, b                                       ; $4c37: $78
    adc c                                         ; $4c38: $89
    sbc d                                         ; $4c39: $9a
    xor e                                         ; $4c3a: $ab
    cp e                                          ; $4c3b: $bb
    call z, $eedd                                 ; $4c3c: $cc $dd $ee
    ld [hl+], a                                   ; $4c3f: $22
    inc sp                                        ; $4c40: $33
    inc [hl]                                      ; $4c41: $34
    ld b, l                                       ; $4c42: $45
    ld d, l                                       ; $4c43: $55
    ld h, [hl]                                    ; $4c44: $66
    ld [hl], a                                    ; $4c45: $77
    ld [hl], a                                    ; $4c46: $77
    ld a, b                                       ; $4c47: $78
    adc c                                         ; $4c48: $89
    sbc c                                         ; $4c49: $99
    xor d                                         ; $4c4a: $aa
    cp e                                          ; $4c4b: $bb
    cp h                                          ; $4c4c: $bc
    call Call_000_33dd                            ; $4c4d: $cd $dd $33
    inc [hl]                                      ; $4c50: $34
    ld b, h                                       ; $4c51: $44
    ld d, l                                       ; $4c52: $55
    ld d, [hl]                                    ; $4c53: $56
    ld h, [hl]                                    ; $4c54: $66
    ld [hl], a                                    ; $4c55: $77
    ld [hl], a                                    ; $4c56: $77
    ld a, b                                       ; $4c57: $78
    adc b                                         ; $4c58: $88
    sbc c                                         ; $4c59: $99
    sbc d                                         ; $4c5a: $9a
    xor d                                         ; $4c5b: $aa
    cp e                                          ; $4c5c: $bb
    cp h                                          ; $4c5d: $bc
    call z, $ff7b                                 ; $4c5e: $cc $7b $ff
    rst $38                                       ; $4c61: $ff
    ei                                            ; $4c62: $fb
    ld [hl], e                                    ; $4c63: $73
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    inc bc                                        ; $4c66: $03
    ld a, e                                       ; $4c67: $7b
    rst $38                                       ; $4c68: $ff
    rst $38                                       ; $4c69: $ff
    ei                                            ; $4c6a: $fb
    ld [hl], e                                    ; $4c6b: $73
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    inc bc                                        ; $4c6e: $03
    ld a, e                                       ; $4c6f: $7b
    rst $28                                       ; $4c70: $ef
    rst $38                                       ; $4c71: $ff
    db $eb                                        ; $4c72: $eb
    ld [hl], e                                    ; $4c73: $73
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    inc bc                                        ; $4c76: $03
    ld a, e                                       ; $4c77: $7b
    rst $28                                       ; $4c78: $ef
    rst $38                                       ; $4c79: $ff
    db $eb                                        ; $4c7a: $eb
    ld [hl], e                                    ; $4c7b: $73
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    inc bc                                        ; $4c7e: $03
    ld a, d                                       ; $4c7f: $7a
    rst $18                                       ; $4c80: $df
    rst $38                                       ; $4c81: $ff
    jp c, $1074                                   ; $4c82: $da $74 $10

    nop                                           ; $4c85: $00
    inc d                                         ; $4c86: $14
    ld a, d                                       ; $4c87: $7a
    rst $18                                       ; $4c88: $df
    rst $38                                       ; $4c89: $ff
    jp c, $1074                                   ; $4c8a: $da $74 $10

    nop                                           ; $4c8d: $00
    inc d                                         ; $4c8e: $14
    xor $ee                                       ; $4c8f: $ee $ee
    xor $ee                                       ; $4c91: $ee $ee
    xor $ee                                       ; $4c93: $ee $ee
    xor $ee                                       ; $4c95: $ee $ee
    xor $ee                                       ; $4c97: $ee $ee
    xor $ee                                       ; $4c99: $ee $ee
    xor $ee                                       ; $4c9b: $ee $ee
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    db $dd                                        ; $4c9f: $dd
    db $dd                                        ; $4ca0: $dd
    db $dd                                        ; $4ca1: $dd
    db $dd                                        ; $4ca2: $dd
    db $dd                                        ; $4ca3: $dd
    db $dd                                        ; $4ca4: $dd
    db $dd                                        ; $4ca5: $dd
    db $dd                                        ; $4ca6: $dd
    db $dd                                        ; $4ca7: $dd
    db $dd                                        ; $4ca8: $dd
    db $dd                                        ; $4ca9: $dd
    db $dd                                        ; $4caa: $dd
    db $dd                                        ; $4cab: $dd
    db $dd                                        ; $4cac: $dd
    ld de, $cc11                                  ; $4cad: $11 $11 $cc
    call z, $cccc                                 ; $4cb0: $cc $cc $cc
    call z, $cccc                                 ; $4cb3: $cc $cc $cc
    call z, $cccc                                 ; $4cb6: $cc $cc $cc
    call z, $cccc                                 ; $4cb9: $cc $cc $cc
    call z, $2222                                 ; $4cbc: $cc $22 $22
    cp e                                          ; $4cbf: $bb
    cp e                                          ; $4cc0: $bb
    cp e                                          ; $4cc1: $bb
    cp e                                          ; $4cc2: $bb
    cp e                                          ; $4cc3: $bb
    cp e                                          ; $4cc4: $bb
    cp e                                          ; $4cc5: $bb
    cp e                                          ; $4cc6: $bb
    cp e                                          ; $4cc7: $bb
    cp e                                          ; $4cc8: $bb
    cp e                                          ; $4cc9: $bb
    cp e                                          ; $4cca: $bb
    cp e                                          ; $4ccb: $bb
    cp e                                          ; $4ccc: $bb
    inc sp                                        ; $4ccd: $33
    inc sp                                        ; $4cce: $33
    xor $ee                                       ; $4ccf: $ee $ee
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    db $dd                                        ; $4cdf: $dd
    db $dd                                        ; $4ce0: $dd
    ld de, $1111                                  ; $4ce1: $11 $11 $11
    ld de, $1111                                  ; $4ce4: $11 $11 $11
    ld de, $1111                                  ; $4ce7: $11 $11 $11
    ld de, $1111                                  ; $4cea: $11 $11 $11
    ld de, $cc11                                  ; $4ced: $11 $11 $cc
    call z, $2222                                 ; $4cf0: $cc $22 $22
    ld [hl+], a                                   ; $4cf3: $22
    ld [hl+], a                                   ; $4cf4: $22
    ld [hl+], a                                   ; $4cf5: $22
    ld [hl+], a                                   ; $4cf6: $22
    ld [hl+], a                                   ; $4cf7: $22
    ld [hl+], a                                   ; $4cf8: $22
    ld [hl+], a                                   ; $4cf9: $22
    ld [hl+], a                                   ; $4cfa: $22
    ld [hl+], a                                   ; $4cfb: $22
    ld [hl+], a                                   ; $4cfc: $22
    ld [hl+], a                                   ; $4cfd: $22
    ld [hl+], a                                   ; $4cfe: $22
    cp e                                          ; $4cff: $bb
    cp e                                          ; $4d00: $bb
    inc sp                                        ; $4d01: $33
    inc sp                                        ; $4d02: $33
    inc sp                                        ; $4d03: $33
    inc sp                                        ; $4d04: $33
    inc sp                                        ; $4d05: $33
    inc sp                                        ; $4d06: $33
    inc sp                                        ; $4d07: $33
    inc sp                                        ; $4d08: $33
    inc sp                                        ; $4d09: $33
    inc sp                                        ; $4d0a: $33
    inc sp                                        ; $4d0b: $33
    inc sp                                        ; $4d0c: $33
    inc sp                                        ; $4d0d: $33
    inc sp                                        ; $4d0e: $33
    xor $ee                                       ; $4d0f: $ee $ee
    xor $ee                                       ; $4d11: $ee $ee
    xor $ee                                       ; $4d13: $ee $ee
    xor $ee                                       ; $4d15: $ee $ee
    xor $ee                                       ; $4d17: $ee $ee
    xor $ee                                       ; $4d19: $ee $ee
    nop                                           ; $4d1b: $00
    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    db $dd                                        ; $4d1f: $dd
    db $dd                                        ; $4d20: $dd
    db $dd                                        ; $4d21: $dd
    db $dd                                        ; $4d22: $dd
    db $dd                                        ; $4d23: $dd
    db $dd                                        ; $4d24: $dd
    db $dd                                        ; $4d25: $dd
    db $dd                                        ; $4d26: $dd
    db $dd                                        ; $4d27: $dd
    db $dd                                        ; $4d28: $dd
    db $dd                                        ; $4d29: $dd
    db $dd                                        ; $4d2a: $dd
    ld de, $1111                                  ; $4d2b: $11 $11 $11
    ld de, $cccc                                  ; $4d2e: $11 $cc $cc
    call z, $cccc                                 ; $4d31: $cc $cc $cc
    call z, $cccc                                 ; $4d34: $cc $cc $cc
    call z, $cccc                                 ; $4d37: $cc $cc $cc
    call z, $2222                                 ; $4d3a: $cc $22 $22
    ld [hl+], a                                   ; $4d3d: $22
    ld [hl+], a                                   ; $4d3e: $22
    cp e                                          ; $4d3f: $bb
    cp e                                          ; $4d40: $bb
    cp e                                          ; $4d41: $bb
    cp e                                          ; $4d42: $bb
    cp e                                          ; $4d43: $bb
    cp e                                          ; $4d44: $bb
    cp e                                          ; $4d45: $bb
    cp e                                          ; $4d46: $bb
    cp e                                          ; $4d47: $bb
    cp e                                          ; $4d48: $bb
    cp e                                          ; $4d49: $bb
    cp e                                          ; $4d4a: $bb
    inc sp                                        ; $4d4b: $33
    inc sp                                        ; $4d4c: $33
    inc sp                                        ; $4d4d: $33
    inc sp                                        ; $4d4e: $33
    xor $ee                                       ; $4d4f: $ee $ee
    xor $ee                                       ; $4d51: $ee $ee
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    db $dd                                        ; $4d5f: $dd
    db $dd                                        ; $4d60: $dd
    db $dd                                        ; $4d61: $dd
    db $dd                                        ; $4d62: $dd
    ld de, $1111                                  ; $4d63: $11 $11 $11
    ld de, $1111                                  ; $4d66: $11 $11 $11
    ld de, $1111                                  ; $4d69: $11 $11 $11
    ld de, $1111                                  ; $4d6c: $11 $11 $11
    call z, $cccc                                 ; $4d6f: $cc $cc $cc
    call z, $2222                                 ; $4d72: $cc $22 $22
    ld [hl+], a                                   ; $4d75: $22
    ld [hl+], a                                   ; $4d76: $22
    ld [hl+], a                                   ; $4d77: $22
    ld [hl+], a                                   ; $4d78: $22
    ld [hl+], a                                   ; $4d79: $22
    ld [hl+], a                                   ; $4d7a: $22
    ld [hl+], a                                   ; $4d7b: $22
    ld [hl+], a                                   ; $4d7c: $22
    ld [hl+], a                                   ; $4d7d: $22
    ld [hl+], a                                   ; $4d7e: $22
    cp e                                          ; $4d7f: $bb
    cp e                                          ; $4d80: $bb
    cp e                                          ; $4d81: $bb
    cp e                                          ; $4d82: $bb
    inc sp                                        ; $4d83: $33
    inc sp                                        ; $4d84: $33
    inc sp                                        ; $4d85: $33
    inc sp                                        ; $4d86: $33
    inc sp                                        ; $4d87: $33
    inc sp                                        ; $4d88: $33
    inc sp                                        ; $4d89: $33
    inc sp                                        ; $4d8a: $33
    inc sp                                        ; $4d8b: $33
    inc sp                                        ; $4d8c: $33
    inc sp                                        ; $4d8d: $33
    inc sp                                        ; $4d8e: $33
    xor $ee                                       ; $4d8f: $ee $ee
    xor $ee                                       ; $4d91: $ee $ee
    xor $ee                                       ; $4d93: $ee $ee
    xor $ee                                       ; $4d95: $ee $ee
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    db $dd                                        ; $4d9f: $dd
    db $dd                                        ; $4da0: $dd
    db $dd                                        ; $4da1: $dd
    db $dd                                        ; $4da2: $dd
    db $dd                                        ; $4da3: $dd
    db $dd                                        ; $4da4: $dd
    db $dd                                        ; $4da5: $dd
    db $dd                                        ; $4da6: $dd
    ld de, $1111                                  ; $4da7: $11 $11 $11
    ld de, $1111                                  ; $4daa: $11 $11 $11
    ld de, $cc11                                  ; $4dad: $11 $11 $cc
    call z, $cccc                                 ; $4db0: $cc $cc $cc
    call z, $cccc                                 ; $4db3: $cc $cc $cc
    call z, $2222                                 ; $4db6: $cc $22 $22
    ld [hl+], a                                   ; $4db9: $22
    ld [hl+], a                                   ; $4dba: $22
    ld [hl+], a                                   ; $4dbb: $22
    ld [hl+], a                                   ; $4dbc: $22
    ld [hl+], a                                   ; $4dbd: $22
    ld [hl+], a                                   ; $4dbe: $22
    cp e                                          ; $4dbf: $bb
    cp e                                          ; $4dc0: $bb
    cp e                                          ; $4dc1: $bb
    cp e                                          ; $4dc2: $bb
    cp e                                          ; $4dc3: $bb
    cp e                                          ; $4dc4: $bb
    cp e                                          ; $4dc5: $bb
    cp e                                          ; $4dc6: $bb
    inc sp                                        ; $4dc7: $33
    inc sp                                        ; $4dc8: $33
    inc sp                                        ; $4dc9: $33
    inc sp                                        ; $4dca: $33
    inc sp                                        ; $4dcb: $33
    inc sp                                        ; $4dcc: $33
    inc sp                                        ; $4dcd: $33
    inc sp                                        ; $4dce: $33

    db $80, $11, $10, $49, $00, $25, $00, $24, $00, $16, $00, $14, $10, $f1, $00, $07
    db $00, $08, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $14, $10, $00
    db $50, $00, $60, $01, $50, $ff, $10, $f1, $10, $71, $00, $15, $00, $17, $00, $25
    db $00, $27, $00, $35, $10, $69, $30, $02, $00, $02, $00, $04, $40, $10, $63, $30
    db $07, $00, $02, $00, $04, $40, $f0

    add b                                         ; $4e16: $80
    ld de, $3910                                  ; $4e17: $11 $10 $39
    jr nc, jr_07f_4e1f                            ; $4e1a: $30 $03

    nop                                           ; $4e1c: $00
    inc sp                                        ; $4e1d: $33
    ld b, b                                       ; $4e1e: $40

jr_07f_4e1f:
    db $10                                        ; $4e1f: $10
    pop af                                        ; $4e20: $f1
    nop                                           ; $4e21: $00
    rlca                                          ; $4e22: $07
    stop                                          ; $4e23: $10 $00
    ld d, b                                       ; $4e25: $50
    nop                                           ; $4e26: $00
    ld h, b                                       ; $4e27: $60
    ld bc, $ff50                                  ; $4e28: $01 $50 $ff
    db $10                                        ; $4e2b: $10
    pop af                                        ; $4e2c: $f1
    nop                                           ; $4e2d: $00
    ld [$1400], sp                                ; $4e2e: $08 $00 $14
    stop                                          ; $4e31: $10 $00
    ld d, b                                       ; $4e33: $50
    nop                                           ; $4e34: $00
    ld h, b                                       ; $4e35: $60
    ld bc, $ff50                                  ; $4e36: $01 $50 $ff
    db $10                                        ; $4e39: $10
    pop af                                        ; $4e3a: $f1
    db $10                                        ; $4e3b: $10
    ld a, l                                       ; $4e3c: $7d
    nop                                           ; $4e3d: $00
    dec [hl]                                      ; $4e3e: $35
    nop                                           ; $4e3f: $00
    inc [hl]                                      ; $4e40: $34
    nop                                           ; $4e41: $00
    dec [hl]                                      ; $4e42: $35
    nop                                           ; $4e43: $00
    inc [hl]                                      ; $4e44: $34
    nop                                           ; $4e45: $00
    daa                                           ; $4e46: $27
    nop                                           ; $4e47: $00
    inc [hl]                                      ; $4e48: $34
    nop                                           ; $4e49: $00
    daa                                           ; $4e4a: $27
    nop                                           ; $4e4b: $00
    ld h, $00                                     ; $4e4c: $26 $00
    daa                                           ; $4e4e: $27
    nop                                           ; $4e4f: $00
    ld h, $00                                     ; $4e50: $26 $00
    dec h                                         ; $4e52: $25
    nop                                           ; $4e53: $00
    ld h, $00                                     ; $4e54: $26 $00
    dec h                                         ; $4e56: $25
    nop                                           ; $4e57: $00
    inc h                                         ; $4e58: $24
    nop                                           ; $4e59: $00
    dec h                                         ; $4e5a: $25
    nop                                           ; $4e5b: $00
    inc h                                         ; $4e5c: $24
    nop                                           ; $4e5d: $00
    rla                                           ; $4e5e: $17
    nop                                           ; $4e5f: $00
    inc h                                         ; $4e60: $24
    nop                                           ; $4e61: $00
    rla                                           ; $4e62: $17
    nop                                           ; $4e63: $00
    ld d, $00                                     ; $4e64: $16 $00
    rla                                           ; $4e66: $17
    nop                                           ; $4e67: $00
    ld d, $00                                     ; $4e68: $16 $00
    dec d                                         ; $4e6a: $15
    nop                                           ; $4e6b: $00
    ld d, $00                                     ; $4e6c: $16 $00
    dec d                                         ; $4e6e: $15
    nop                                           ; $4e6f: $00
    inc d                                         ; $4e70: $14
    nop                                           ; $4e71: $00
    dec d                                         ; $4e72: $15
    nop                                           ; $4e73: $00
    inc d                                         ; $4e74: $14
    nop                                           ; $4e75: $00
    rlca                                          ; $4e76: $07
    nop                                           ; $4e77: $00
    inc d                                         ; $4e78: $14
    nop                                           ; $4e79: $00
    rlca                                          ; $4e7a: $07
    nop                                           ; $4e7b: $00
    ld b, $00                                     ; $4e7c: $06 $00
    rlca                                          ; $4e7e: $07
    nop                                           ; $4e7f: $00
    ld b, $00                                     ; $4e80: $06 $00
    dec b                                         ; $4e82: $05
    nop                                           ; $4e83: $00
    ld b, $00                                     ; $4e84: $06 $00
    dec b                                         ; $4e86: $05
    nop                                           ; $4e87: $00
    inc b                                         ; $4e88: $04
    nop                                           ; $4e89: $00
    dec b                                         ; $4e8a: $05
    nop                                           ; $4e8b: $00
    inc b                                         ; $4e8c: $04
    db $10                                        ; $4e8d: $10
    ld [c], a                                     ; $4e8e: $e2
    nop                                           ; $4e8f: $00
    inc bc                                        ; $4e90: $03
    nop                                           ; $4e91: $00
    inc b                                         ; $4e92: $04
    nop                                           ; $4e93: $00
    inc bc                                        ; $4e94: $03
    nop                                           ; $4e95: $00
    ld [bc], a                                    ; $4e96: $02
    nop                                           ; $4e97: $00
    inc bc                                        ; $4e98: $03
    nop                                           ; $4e99: $00
    ld [bc], a                                    ; $4e9a: $02
    nop                                           ; $4e9b: $00
    ld bc, $0200                                  ; $4e9c: $01 $00 $02
    nop                                           ; $4e9f: $00
    ld bc, $0000                                  ; $4ea0: $01 $00 $00
    db $f0                                        ; $4ea3: $f0

    db $80, $11, $10, $49, $00, $26, $00, $25, $00, $24, $10, $f1, $00, $08, $00, $14
    db $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $08, $10, $71, $30, $07
    db $00, $14, $40, $10, $69, $30, $02, $00, $03, $00, $05, $40, $10, $63, $30, $07
    db $00, $03, $00, $05, $40, $f0

    add b                                         ; $4eda: $80
    ld de, $4910                                  ; $4edb: $11 $10 $49
    nop                                           ; $4ede: $00
    inc h                                         ; $4edf: $24
    nop                                           ; $4ee0: $00
    inc d                                         ; $4ee1: $14
    nop                                           ; $4ee2: $00
    rlca                                          ; $4ee3: $07
    db $10                                        ; $4ee4: $10
    pop af                                        ; $4ee5: $f1
    nop                                           ; $4ee6: $00
    ld [$0010], sp                                ; $4ee7: $08 $10 $00
    ld d, b                                       ; $4eea: $50
    nop                                           ; $4eeb: $00
    ld h, b                                       ; $4eec: $60
    ld bc, $ff50                                  ; $4eed: $01 $50 $ff
    db $10                                        ; $4ef0: $10
    pop af                                        ; $4ef1: $f1
    nop                                           ; $4ef2: $00
    inc d                                         ; $4ef3: $14
    db $10                                        ; $4ef4: $10
    ld [hl], c                                    ; $4ef5: $71
    nop                                           ; $4ef6: $00
    rla                                           ; $4ef7: $17
    jr nc, @+$08                                  ; $4ef8: $30 $06

    nop                                           ; $4efa: $00
    dec h                                         ; $4efb: $25
    ld b, b                                       ; $4efc: $40
    db $10                                        ; $4efd: $10
    dec sp                                        ; $4efe: $3b
    jr nc, jr_07f_4f07                            ; $4eff: $30 $06

    nop                                           ; $4f01: $00
    ld [bc], a                                    ; $4f02: $02
    nop                                           ; $4f03: $00
    inc b                                         ; $4f04: $04
    ld b, b                                       ; $4f05: $40
    db $10                                        ; $4f06: $10

jr_07f_4f07:
    ld h, d                                       ; $4f07: $62
    jr nc, jr_07f_4f0f                            ; $4f08: $30 $05

    nop                                           ; $4f0a: $00
    ld [bc], a                                    ; $4f0b: $02
    nop                                           ; $4f0c: $00
    inc b                                         ; $4f0d: $04
    ld b, b                                       ; $4f0e: $40

jr_07f_4f0f:
    db $f0                                        ; $4f0f: $f0

    db $80, $11, $10, $49, $00, $34, $00, $27, $00, $26, $10, $f1, $00, $15, $10, $00
    db $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $14, $10, $71, $00, $25, $00, $27
    db $00, $35, $10, $3b, $30, $06, $00, $02, $00, $04, $40, $10, $62, $30, $05, $00
    db $02, $00, $04, $40, $f0, $80, $11, $10, $49, $00, $34, $00, $27, $00, $26, $00
    db $25, $10, $f1, $00, $14, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00
    db $07, $10, $49, $00, $03, $00, $02, $10, $00, $50, $00, $60, $01, $50, $ff, $10
    db $49, $10, $72, $30, $05, $00, $03, $00, $02, $40, $10, $3b, $30, $06, $00, $02
    db $00, $04, $40, $10, $62, $30, $05, $00, $02, $00, $04, $40, $f0

    add b                                         ; $4f8d: $80
    ld de, $5910                                  ; $4f8e: $11 $10 $59
    nop                                           ; $4f91: $00
    inc [hl]                                      ; $4f92: $34
    nop                                           ; $4f93: $00
    daa                                           ; $4f94: $27
    nop                                           ; $4f95: $00
    ld h, $00                                     ; $4f96: $26 $00
    dec h                                         ; $4f98: $25
    db $10                                        ; $4f99: $10
    or c                                          ; $4f9a: $b1
    nop                                           ; $4f9b: $00
    rla                                           ; $4f9c: $17
    stop                                          ; $4f9d: $10 $00
    ld d, b                                       ; $4f9f: $50
    nop                                           ; $4fa0: $00
    ld h, b                                       ; $4fa1: $60
    ld bc, $ff50                                  ; $4fa2: $01 $50 $ff
    db $10                                        ; $4fa5: $10
    or c                                          ; $4fa6: $b1
    jr nc, jr_07f_4fae                            ; $4fa7: $30 $05

    nop                                           ; $4fa9: $00
    inc h                                         ; $4faa: $24
    nop                                           ; $4fab: $00
    ld h, $40                                     ; $4fac: $26 $40

jr_07f_4fae:
    db $10                                        ; $4fae: $10
    dec sp                                        ; $4faf: $3b
    jr nc, jr_07f_4fb8                            ; $4fb0: $30 $06

    nop                                           ; $4fb2: $00
    inc bc                                        ; $4fb3: $03
    nop                                           ; $4fb4: $00
    dec b                                         ; $4fb5: $05
    ld b, b                                       ; $4fb6: $40
    db $10                                        ; $4fb7: $10

jr_07f_4fb8:
    ld [hl], d                                    ; $4fb8: $72
    jr nc, @+$08                                  ; $4fb9: $30 $06

    nop                                           ; $4fbb: $00
    inc bc                                        ; $4fbc: $03
    nop                                           ; $4fbd: $00
    dec b                                         ; $4fbe: $05
    ld b, b                                       ; $4fbf: $40
    ldh a, [$80]                                  ; $4fc0: $f0 $80
    ld de, $5028                                  ; $4fc2: $11 $28 $50
    nop                                           ; $4fc5: $00
    db $10                                        ; $4fc6: $10
    and b                                         ; $4fc7: $a0
    rlca                                          ; $4fc8: $07
    db $db                                        ; $4fc9: $db
    db $10                                        ; $4fca: $10
    sub b                                         ; $4fcb: $90
    rlca                                          ; $4fcc: $07
    db $db                                        ; $4fcd: $db
    db $10                                        ; $4fce: $10
    add b                                         ; $4fcf: $80
    rlca                                          ; $4fd0: $07
    db $db                                        ; $4fd1: $db
    db $10                                        ; $4fd2: $10
    ld [hl], b                                    ; $4fd3: $70
    rlca                                          ; $4fd4: $07
    db $db                                        ; $4fd5: $db
    db $10                                        ; $4fd6: $10
    ld h, b                                       ; $4fd7: $60
    rlca                                          ; $4fd8: $07
    db $db                                        ; $4fd9: $db
    db $10                                        ; $4fda: $10
    ld d, b                                       ; $4fdb: $50
    rlca                                          ; $4fdc: $07
    db $db                                        ; $4fdd: $db
    db $10                                        ; $4fde: $10
    ld b, b                                       ; $4fdf: $40
    rlca                                          ; $4fe0: $07
    db $db                                        ; $4fe1: $db
    db $10                                        ; $4fe2: $10
    jr nc, jr_07f_4fec                            ; $4fe3: $30 $07

    db $db                                        ; $4fe5: $db
    db $10                                        ; $4fe6: $10
    jr nz, @+$09                                  ; $4fe7: $20 $07

    db $db                                        ; $4fe9: $db
    db $10                                        ; $4fea: $10
    db $10                                        ; $4feb: $10

jr_07f_4fec:
    rlca                                          ; $4fec: $07
    db $db                                        ; $4fed: $db
    db $f0                                        ; $4fee: $f0

    db $80, $11, $10, $c0, $00, $04, $10, $50, $00, $3c, $10, $20, $00, $3c, $f0, $80
    db $11, $10, $39, $00, $24, $10, $f0, $00, $35, $10, $49, $00, $05, $00, $07, $00
    db $15, $f0

    add b                                         ; $5011: $80
    ld de, $3910                                  ; $5012: $11 $10 $39
    nop                                           ; $5015: $00
    ld d, $10                                     ; $5016: $16 $10
    ldh a, [rP1]                                  ; $5018: $f0 $00
    daa                                           ; $501a: $27
    db $10                                        ; $501b: $10
    ld c, c                                       ; $501c: $49
    nop                                           ; $501d: $00
    inc bc                                        ; $501e: $03
    nop                                           ; $501f: $00
    dec b                                         ; $5020: $05
    nop                                           ; $5021: $00
    rlca                                          ; $5022: $07
    ldh a, [$28]                                  ; $5023: $f0 $28
    add b                                         ; $5025: $80
    ld de, $7910                                  ; $5026: $11 $10 $79
    ld [bc], a                                    ; $5029: $02
    add $10                                       ; $502a: $c6 $10
    ldh a, [$03]                                  ; $502c: $f0 $03
    ld e, b                                       ; $502e: $58
    stop                                          ; $502f: $10 $00
    ld d, b                                       ; $5031: $50
    nop                                           ; $5032: $00
    ld h, b                                       ; $5033: $60
    ld bc, $ff50                                  ; $5034: $01 $50 $ff
    db $10                                        ; $5037: $10
    ldh a, [$03]                                  ; $5038: $f0 $03
    sbc e                                         ; $503a: $9b
    inc bc                                        ; $503b: $03
    ld e, b                                       ; $503c: $58
    ld [bc], a                                    ; $503d: $02
    add $f0                                       ; $503e: $c6 $f0
    add b                                         ; $5040: $80
    ld de, $3910                                  ; $5041: $11 $10 $39
    nop                                           ; $5044: $00
    inc h                                         ; $5045: $24
    db $10                                        ; $5046: $10
    ldh a, [rP1]                                  ; $5047: $f0 $00
    dec [hl]                                      ; $5049: $35
    db $10                                        ; $504a: $10
    ld c, c                                       ; $504b: $49
    nop                                           ; $504c: $00
    rlca                                          ; $504d: $07
    ldh a, [$80]                                  ; $504e: $f0 $80
    ld de, $f010                                  ; $5050: $11 $10 $f0
    nop                                           ; $5053: $00
    dec c                                         ; $5054: $0d
    nop                                           ; $5055: $00
    ld d, $10                                     ; $5056: $16 $10
    ld [hl], h                                    ; $5058: $74
    jr nc, jr_07f_506f                            ; $5059: $30 $14

    nop                                           ; $505b: $00
    ld d, $40                                     ; $505c: $16 $40
    ldh a, [$80]                                  ; $505e: $f0 $80
    ld de, $5e10                                  ; $5060: $11 $10 $5e
    jr nc, jr_07f_5069                            ; $5063: $30 $04

    nop                                           ; $5065: $00
    ld h, $00                                     ; $5066: $26 $00
    dec h                                         ; $5068: $25

jr_07f_5069:
    nop                                           ; $5069: $00
    daa                                           ; $506a: $27
    ld b, b                                       ; $506b: $40
    nop                                           ; $506c: $00
    inc [hl]                                      ; $506d: $34
    nop                                           ; $506e: $00

jr_07f_506f:
    daa                                           ; $506f: $27
    nop                                           ; $5070: $00
    ld h, $00                                     ; $5071: $26 $00
    daa                                           ; $5073: $27
    nop                                           ; $5074: $00
    ld h, $00                                     ; $5075: $26 $00
    dec h                                         ; $5077: $25
    nop                                           ; $5078: $00
    ld h, $00                                     ; $5079: $26 $00
    dec h                                         ; $507b: $25
    nop                                           ; $507c: $00
    inc h                                         ; $507d: $24
    nop                                           ; $507e: $00
    dec h                                         ; $507f: $25
    nop                                           ; $5080: $00
    inc h                                         ; $5081: $24
    nop                                           ; $5082: $00
    rla                                           ; $5083: $17
    nop                                           ; $5084: $00
    inc h                                         ; $5085: $24
    nop                                           ; $5086: $00
    rla                                           ; $5087: $17
    nop                                           ; $5088: $00
    ld d, $00                                     ; $5089: $16 $00
    rla                                           ; $508b: $17
    nop                                           ; $508c: $00
    ld d, $00                                     ; $508d: $16 $00
    dec d                                         ; $508f: $15
    nop                                           ; $5090: $00
    ld d, $00                                     ; $5091: $16 $00
    dec d                                         ; $5093: $15
    nop                                           ; $5094: $00
    inc d                                         ; $5095: $14
    nop                                           ; $5096: $00
    dec d                                         ; $5097: $15
    nop                                           ; $5098: $00
    inc d                                         ; $5099: $14
    nop                                           ; $509a: $00
    rlca                                          ; $509b: $07
    nop                                           ; $509c: $00
    inc d                                         ; $509d: $14
    nop                                           ; $509e: $00
    rlca                                          ; $509f: $07
    nop                                           ; $50a0: $00
    ld b, $00                                     ; $50a1: $06 $00
    rlca                                          ; $50a3: $07
    nop                                           ; $50a4: $00
    ld b, $00                                     ; $50a5: $06 $00
    dec b                                         ; $50a7: $05
    nop                                           ; $50a8: $00
    ld b, $00                                     ; $50a9: $06 $00
    dec b                                         ; $50ab: $05
    nop                                           ; $50ac: $00
    inc b                                         ; $50ad: $04
    nop                                           ; $50ae: $00
    dec b                                         ; $50af: $05
    nop                                           ; $50b0: $00
    inc b                                         ; $50b1: $04
    nop                                           ; $50b2: $00
    inc bc                                        ; $50b3: $03
    nop                                           ; $50b4: $00
    inc b                                         ; $50b5: $04
    nop                                           ; $50b6: $00
    inc bc                                        ; $50b7: $03
    nop                                           ; $50b8: $00
    ld [bc], a                                    ; $50b9: $02
    nop                                           ; $50ba: $00
    inc bc                                        ; $50bb: $03
    ldh a, [$28]                                  ; $50bc: $f0 $28
    add b                                         ; $50be: $80
    ld de, $a110                                  ; $50bf: $11 $10 $a1
    rlca                                          ; $50c2: $07
    xor h                                         ; $50c3: $ac
    ld d, b                                       ; $50c4: $50
    or b                                          ; $50c5: $b0
    ld h, b                                       ; $50c6: $60
    inc b                                         ; $50c7: $04
    db $10                                        ; $50c8: $10
    and c                                         ; $50c9: $a1
    ld b, $b2                                     ; $50ca: $06 $b2
    ld d, b                                       ; $50cc: $50
    ld d, b                                       ; $50cd: $50
    ld h, b                                       ; $50ce: $60
    inc b                                         ; $50cf: $04
    db $10                                        ; $50d0: $10
    pop af                                        ; $50d1: $f1
    dec b                                         ; $50d2: $05
    ld h, e                                       ; $50d3: $63
    ld d, b                                       ; $50d4: $50
    inc a                                         ; $50d5: $3c
    ld h, b                                       ; $50d6: $60
    dec b                                         ; $50d7: $05
    stop                                          ; $50d8: $10 $00
    ld d, b                                       ; $50da: $50
    nop                                           ; $50db: $00
    ld h, b                                       ; $50dc: $60
    inc bc                                        ; $50dd: $03
    ld d, b                                       ; $50de: $50
    inc a                                         ; $50df: $3c
    db $10                                        ; $50e0: $10
    pop af                                        ; $50e1: $f1
    db $10                                        ; $50e2: $10
    and c                                         ; $50e3: $a1
    rlca                                          ; $50e4: $07
    add e                                         ; $50e5: $83
    ld d, b                                       ; $50e6: $50
    jr jr_07f_5149                                ; $50e7: $18 $60

    ld [de], a                                    ; $50e9: $12
    ldh a, [$80]                                  ; $50ea: $f0 $80
    ld de, $5910                                  ; $50ec: $11 $10 $59
    nop                                           ; $50ef: $00
    ld c, h                                       ; $50f0: $4c
    nop                                           ; $50f1: $00
    inc h                                         ; $50f2: $24
    nop                                           ; $50f3: $00
    dec d                                         ; $50f4: $15
    nop                                           ; $50f5: $00
    ld b, $00                                     ; $50f6: $06 $00
    nop                                           ; $50f8: $00
    stop                                          ; $50f9: $10 $00
    ld d, b                                       ; $50fb: $50
    nop                                           ; $50fc: $00
    ld h, b                                       ; $50fd: $60
    ld bc, $ff50                                  ; $50fe: $01 $50 $ff
    db $10                                        ; $5101: $10
    ld e, c                                       ; $5102: $59
    db $10                                        ; $5103: $10
    pop af                                        ; $5104: $f1
    nop                                           ; $5105: $00
    ld b, a                                       ; $5106: $47
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    dec b                                         ; $510a: $05
    nop                                           ; $510b: $00
    rlca                                          ; $510c: $07
    nop                                           ; $510d: $00
    dec d                                         ; $510e: $15
    stop                                          ; $510f: $10 $00
    ld d, b                                       ; $5111: $50
    nop                                           ; $5112: $00
    ld h, b                                       ; $5113: $60
    inc bc                                        ; $5114: $03
    ld d, b                                       ; $5115: $50
    rst $38                                       ; $5116: $ff
    db $10                                        ; $5117: $10
    pop af                                        ; $5118: $f1
    db $10                                        ; $5119: $10
    ld c, c                                       ; $511a: $49
    jr nc, jr_07f_5120                            ; $511b: $30 $03

    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00

jr_07f_5120:
    ld [bc], a                                    ; $5120: $02
    ld b, b                                       ; $5121: $40
    db $10                                        ; $5122: $10
    sub d                                         ; $5123: $92
    jr nc, @+$0a                                  ; $5124: $30 $08

    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    ld [bc], a                                    ; $5129: $02
    ld b, b                                       ; $512a: $40
    ldh a, [$80]                                  ; $512b: $f0 $80
    ld de, $9110                                  ; $512d: $11 $10 $91
    nop                                           ; $5130: $00
    dec b                                         ; $5131: $05
    nop                                           ; $5132: $00
    rlca                                          ; $5133: $07
    stop                                          ; $5134: $10 $00
    ld d, b                                       ; $5136: $50
    nop                                           ; $5137: $00
    ld h, b                                       ; $5138: $60
    ld bc, $ff50                                  ; $5139: $01 $50 $ff
    db $10                                        ; $513c: $10
    sub c                                         ; $513d: $91
    db $10                                        ; $513e: $10
    adc c                                         ; $513f: $89
    jr nc, jr_07f_5144                            ; $5140: $30 $02

    nop                                           ; $5142: $00
    nop                                           ; $5143: $00

jr_07f_5144:
    nop                                           ; $5144: $00
    ld bc, $1040                                  ; $5145: $01 $40 $10
    pop af                                        ; $5148: $f1

jr_07f_5149:
    nop                                           ; $5149: $00
    ld bc, $0000                                  ; $514a: $01 $00 $00
    nop                                           ; $514d: $00
    ld bc, $0200                                  ; $514e: $01 $00 $02
    nop                                           ; $5151: $00
    ld bc, $0200                                  ; $5152: $01 $00 $02
    nop                                           ; $5155: $00
    inc bc                                        ; $5156: $03
    nop                                           ; $5157: $00
    ld [bc], a                                    ; $5158: $02
    nop                                           ; $5159: $00
    inc bc                                        ; $515a: $03
    nop                                           ; $515b: $00
    inc b                                         ; $515c: $04
    ldh a, [$80]                                  ; $515d: $f0 $80
    ld de, $e010                                  ; $515f: $11 $10 $e0
    nop                                           ; $5162: $00
    ld c, a                                       ; $5163: $4f
    nop                                           ; $5164: $00
    ld a, [bc]                                    ; $5165: $0a
    nop                                           ; $5166: $00
    dec l                                         ; $5167: $2d
    stop                                          ; $5168: $10 $00
    ld d, b                                       ; $516a: $50
    nop                                           ; $516b: $00
    ld h, b                                       ; $516c: $60
    ld bc, $ff50                                  ; $516d: $01 $50 $ff
    db $10                                        ; $5170: $10
    ldh [rP1], a                                  ; $5171: $e0 $00
    rla                                           ; $5173: $17
    db $10                                        ; $5174: $10
    adc c                                         ; $5175: $89
    nop                                           ; $5176: $00
    ld [bc], a                                    ; $5177: $02
    nop                                           ; $5178: $00
    inc bc                                        ; $5179: $03
    db $10                                        ; $517a: $10
    and b                                         ; $517b: $a0
    nop                                           ; $517c: $00
    ld [bc], a                                    ; $517d: $02
    nop                                           ; $517e: $00
    add hl, bc                                    ; $517f: $09
    nop                                           ; $5180: $00
    ld [bc], a                                    ; $5181: $02
    nop                                           ; $5182: $00
    add hl, bc                                    ; $5183: $09
    db $10                                        ; $5184: $10
    add e                                         ; $5185: $83
    nop                                           ; $5186: $00
    ld [bc], a                                    ; $5187: $02
    nop                                           ; $5188: $00
    add hl, bc                                    ; $5189: $09
    nop                                           ; $518a: $00
    ld [bc], a                                    ; $518b: $02
    nop                                           ; $518c: $00
    add hl, bc                                    ; $518d: $09
    db $10                                        ; $518e: $10
    ld [hl], e                                    ; $518f: $73
    nop                                           ; $5190: $00
    ld [bc], a                                    ; $5191: $02
    nop                                           ; $5192: $00
    add hl, bc                                    ; $5193: $09
    nop                                           ; $5194: $00
    ld [bc], a                                    ; $5195: $02
    nop                                           ; $5196: $00
    add hl, bc                                    ; $5197: $09
    db $10                                        ; $5198: $10
    ld h, e                                       ; $5199: $63
    nop                                           ; $519a: $00
    ld [bc], a                                    ; $519b: $02
    nop                                           ; $519c: $00
    add hl, bc                                    ; $519d: $09
    nop                                           ; $519e: $00
    ld [bc], a                                    ; $519f: $02
    nop                                           ; $51a0: $00
    add hl, bc                                    ; $51a1: $09
    db $10                                        ; $51a2: $10
    ld d, e                                       ; $51a3: $53
    nop                                           ; $51a4: $00
    ld [bc], a                                    ; $51a5: $02
    nop                                           ; $51a6: $00
    add hl, bc                                    ; $51a7: $09
    nop                                           ; $51a8: $00
    ld [bc], a                                    ; $51a9: $02
    nop                                           ; $51aa: $00
    add hl, bc                                    ; $51ab: $09
    db $10                                        ; $51ac: $10
    ld b, e                                       ; $51ad: $43
    nop                                           ; $51ae: $00
    ld [bc], a                                    ; $51af: $02
    nop                                           ; $51b0: $00
    add hl, bc                                    ; $51b1: $09
    nop                                           ; $51b2: $00
    ld [bc], a                                    ; $51b3: $02
    nop                                           ; $51b4: $00
    add hl, bc                                    ; $51b5: $09
    db $10                                        ; $51b6: $10
    inc sp                                        ; $51b7: $33
    nop                                           ; $51b8: $00
    ld [bc], a                                    ; $51b9: $02
    nop                                           ; $51ba: $00
    add hl, bc                                    ; $51bb: $09
    nop                                           ; $51bc: $00
    ld [bc], a                                    ; $51bd: $02
    nop                                           ; $51be: $00
    add hl, bc                                    ; $51bf: $09
    db $10                                        ; $51c0: $10
    inc hl                                        ; $51c1: $23
    nop                                           ; $51c2: $00
    ld [bc], a                                    ; $51c3: $02
    nop                                           ; $51c4: $00
    add hl, bc                                    ; $51c5: $09
    db $f0                                        ; $51c6: $f0

    db $80, $11, $10, $f1, $30, $03, $00, $07, $00, $04, $40, $10, $00, $50, $00, $60
    db $01, $50, $ff, $10, $f1, $10, $f3, $00, $37, $10, $00, $50, $00, $60, $01, $50
    db $ff, $10, $f3, $00, $25, $00, $07, $10, $20, $00, $02, $00, $08, $00, $01, $10
    db $40, $00, $02, $00, $08, $00, $01, $10, $60, $00, $02, $00, $08, $00, $01, $10
    db $80, $00, $02

    nop                                           ; $520a: $00
    ld [$0100], sp                                ; $520b: $08 $00 $01
    db $10                                        ; $520e: $10
    and b                                         ; $520f: $a0
    nop                                           ; $5210: $00
    ld [bc], a                                    ; $5211: $02
    nop                                           ; $5212: $00
    ld [$0100], sp                                ; $5213: $08 $00 $01
    db $10                                        ; $5216: $10
    ret nz                                        ; $5217: $c0

    nop                                           ; $5218: $00
    ld [bc], a                                    ; $5219: $02
    nop                                           ; $521a: $00
    ld [$0100], sp                                ; $521b: $08 $00 $01
    db $10                                        ; $521e: $10
    ldh [rP1], a                                  ; $521f: $e0 $00
    ld [bc], a                                    ; $5221: $02
    nop                                           ; $5222: $00
    ld [$0100], sp                                ; $5223: $08 $00 $01
    db $10                                        ; $5226: $10
    ldh a, [rP1]                                  ; $5227: $f0 $00
    ld [bc], a                                    ; $5229: $02
    nop                                           ; $522a: $00
    ld [$0100], sp                                ; $522b: $08 $00 $01
    db $10                                        ; $522e: $10
    db $d3                                        ; $522f: $d3
    nop                                           ; $5230: $00
    ld [bc], a                                    ; $5231: $02
    nop                                           ; $5232: $00
    ld [$0100], sp                                ; $5233: $08 $00 $01
    db $10                                        ; $5236: $10
    or e                                          ; $5237: $b3
    nop                                           ; $5238: $00
    ld [bc], a                                    ; $5239: $02
    nop                                           ; $523a: $00
    ld [$0100], sp                                ; $523b: $08 $00 $01
    db $10                                        ; $523e: $10
    sub e                                         ; $523f: $93
    nop                                           ; $5240: $00
    ld [bc], a                                    ; $5241: $02
    nop                                           ; $5242: $00
    ld [$0100], sp                                ; $5243: $08 $00 $01
    db $10                                        ; $5246: $10
    ld [hl], e                                    ; $5247: $73
    nop                                           ; $5248: $00
    ld [bc], a                                    ; $5249: $02
    nop                                           ; $524a: $00
    ld [$0100], sp                                ; $524b: $08 $00 $01
    db $10                                        ; $524e: $10
    ld d, e                                       ; $524f: $53
    nop                                           ; $5250: $00
    ld [bc], a                                    ; $5251: $02
    nop                                           ; $5252: $00
    ld [$0100], sp                                ; $5253: $08 $00 $01
    db $10                                        ; $5256: $10
    inc sp                                        ; $5257: $33
    nop                                           ; $5258: $00
    ld [bc], a                                    ; $5259: $02
    nop                                           ; $525a: $00
    ld [$0100], sp                                ; $525b: $08 $00 $01
    db $10                                        ; $525e: $10
    inc hl                                        ; $525f: $23
    nop                                           ; $5260: $00
    ld [bc], a                                    ; $5261: $02
    nop                                           ; $5262: $00
    ld [$0100], sp                                ; $5263: $08 $00 $01
    ldh a, [$80]                                  ; $5266: $f0 $80
    ld de, $f010                                  ; $5268: $11 $10 $f0
    jr nz, jr_07f_5271                            ; $526b: $20 $04

    push hl                                       ; $526d: $e5
    ld d, b                                       ; $526e: $50
    nop                                           ; $526f: $00
    ld h, b                                       ; $5270: $60

jr_07f_5271:
    inc b                                         ; $5271: $04
    db $10                                        ; $5272: $10
    ldh a, [rNR50]                                ; $5273: $f0 $24
    inc b                                         ; $5275: $04
    push hl                                       ; $5276: $e5
    ld d, b                                       ; $5277: $50
    ld h, e                                       ; $5278: $63
    ld h, b                                       ; $5279: $60
    inc b                                         ; $527a: $04
    db $10                                        ; $527b: $10
    pop af                                        ; $527c: $f1
    jr z, jr_07f_52af                             ; $527d: $28 $30

    ld [bc], a                                    ; $527f: $02
    ld b, $72                                     ; $5280: $06 $72
    ld d, b                                       ; $5282: $50
    call nc, Call_000_0360                        ; $5283: $d4 $60 $03
    dec b                                         ; $5286: $05
    db $ed                                        ; $5287: $ed
    ld d, b                                       ; $5288: $50
    inc l                                         ; $5289: $2c
    ld h, b                                       ; $528a: $60
    inc bc                                        ; $528b: $03
    ld b, b                                       ; $528c: $40
    ldh a, [$80]                                  ; $528d: $f0 $80
    ld de, $f010                                  ; $528f: $11 $10 $f0
    jr z, jr_07f_5298                             ; $5292: $28 $04

    ld d, $50                                     ; $5294: $16 $50
    nop                                           ; $5296: $00
    ld h, b                                       ; $5297: $60

jr_07f_5298:
    inc b                                         ; $5298: $04
    db $10                                        ; $5299: $10
    ldh a, [rNR50]                                ; $529a: $f0 $24
    inc b                                         ; $529c: $04
    ld d, $50                                     ; $529d: $16 $50
    ld h, e                                       ; $529f: $63
    ld h, b                                       ; $52a0: $60
    inc b                                         ; $52a1: $04
    db $10                                        ; $52a2: $10
    ld a, [c]                                     ; $52a3: $f2
    jr nz, @+$32                                  ; $52a4: $20 $30

    inc bc                                        ; $52a6: $03
    ld b, $0b                                     ; $52a7: $06 $0b
    ld d, b                                       ; $52a9: $50
    rst $18                                       ; $52aa: $df
    ld h, b                                       ; $52ab: $60
    inc b                                         ; $52ac: $04
    dec b                                         ; $52ad: $05
    ld h, e                                       ; $52ae: $63

jr_07f_52af:
    ld d, b                                       ; $52af: $50
    ld hl, $0460                                  ; $52b0: $21 $60 $04
    ld b, b                                       ; $52b3: $40
    db $f0                                        ; $52b4: $f0

    db $80, $11, $10, $f0, $24, $06, $0b, $50, $1e, $60, $06, $10, $f2, $24, $30, $04
    db $06, $b2, $50, $db, $60, $03, $06, $42, $50, $25, $60, $03, $40, $f0

    jr z, @-$7e                                   ; $52d3: $28 $80

    ld de, $6910                                  ; $52d5: $11 $10 $69
    rlca                                          ; $52d8: $07
    rst $18                                       ; $52d9: $df
    ld d, b                                       ; $52da: $50
    rst $38                                       ; $52db: $ff
    ld h, b                                       ; $52dc: $60
    dec b                                         ; $52dd: $05
    db $10                                        ; $52de: $10
    and $07                                       ; $52df: $e6 $07
    reti                                          ; $52e1: $d9


    ld d, b                                       ; $52e2: $50
    rst $38                                       ; $52e3: $ff
    ld h, b                                       ; $52e4: $60
    add hl, de                                    ; $52e5: $19
    db $10                                        ; $52e6: $10
    sub d                                         ; $52e7: $92
    rlca                                          ; $52e8: $07
    cp [hl]                                       ; $52e9: $be
    ld d, b                                       ; $52ea: $50
    db $fd                                        ; $52eb: $fd
    ld h, b                                       ; $52ec: $60
    ld a, [bc]                                    ; $52ed: $0a
    db $f0                                        ; $52ee: $f0

    db $80, $11, $10, $f1, $00, $0b, $00, $0d, $00, $0f, $00, $1d, $10, $00, $50, $00
    db $60, $01, $50, $ff, $10, $f1, $10, $f1, $00, $1f, $00, $1e, $00, $1d, $00, $1c
    db $00, $0f, $00, $0e, $00, $0d, $00, $0c, $00, $0b, $00, $0a

    nop                                           ; $531b: $00
    add hl, bc                                    ; $531c: $09
    nop                                           ; $531d: $00
    ld [$80f0], sp                                ; $531e: $08 $f0 $80
    ld de, $4910                                  ; $5321: $11 $10 $49
    nop                                           ; $5324: $00
    ld b, h                                       ; $5325: $44
    nop                                           ; $5326: $00
    ld [hl], $00                                  ; $5327: $36 $00
    inc [hl]                                      ; $5329: $34
    nop                                           ; $532a: $00
    ld h, $10                                     ; $532b: $26 $10
    ldh a, [rP1]                                  ; $532d: $f0 $00
    inc h                                         ; $532f: $24
    nop                                           ; $5330: $00
    rla                                           ; $5331: $17
    stop                                          ; $5332: $10 $00
    ld d, b                                       ; $5334: $50
    nop                                           ; $5335: $00
    ld h, b                                       ; $5336: $60
    ld [bc], a                                    ; $5337: $02
    ld d, b                                       ; $5338: $50
    rst $38                                       ; $5339: $ff
    db $10                                        ; $533a: $10
    ldh a, [rNR10]                                ; $533b: $f0 $10
    pop hl                                        ; $533d: $e1
    jr nc, @+$09                                  ; $533e: $30 $07

    nop                                           ; $5340: $00
    ld b, h                                       ; $5341: $44
    nop                                           ; $5342: $00
    ld b, [hl]                                    ; $5343: $46
    ld b, b                                       ; $5344: $40
    db $f0                                        ; $5345: $f0

    db $80, $11, $10, $f1, $28, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $01, $50
    db $ff, $10, $f1, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $06, $50, $ff, $10
    db $f1, $10, $b1, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $02, $50, $ff, $10
    db $b1, $10, $61, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $01, $50, $ff, $10
    db $61, $10, $41, $06, $c4, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $41, $06
    db $c4, $f0, $28, $80, $11, $10, $50, $07, $83, $10, $e1, $07, $83, $50, $00, $60
    db $02, $f0, $28, $80, $11, $10, $f2, $07, $83, $50, $00, $60, $01, $07, $90, $60
    db $01, $07, $9d, $60, $01, $07, $ac, $60, $01, $30, $07, $07, $c1, $50, $01, $60
    db $01, $40, $f0, $28, $80, $11, $10, $89, $06, $9e, $50, $00, $60, $01, $06, $9e
    db $50, $2c, $60, $04, $10, $b2, $30, $05, $07, $4f, $50, $03, $60, $01, $40, $10
    db $61, $30, $02, $07, $4f, $50, $03, $60, $01, $40, $f0, $28, $80, $11, $10, $99
    db $07, $9d, $50, $00, $60, $03, $10, $00, $50, $00, $60, $02, $50, $00, $10, $99
    db $10, $f2, $30, $17, $07, $b6, $40, $f0, $24, $80, $11, $10, $a9, $07, $14, $50
    db $06, $60, $03, $07, $2d, $50, $fa, $60, $02, $10, $99, $06, $9e, $50, $15, $60
    db $02, $06, $c4, $50, $f3, $60, $02, $10, $89, $06, $28, $50, $2a, $60, $03, $10
    db $d2, $06, $5b, $50, $f6, $60, $0b, $10, $59, $05, $3c, $50, $31, $60, $03, $05
    db $89, $50, $00, $60, $01, $f0, $28, $80, $11, $10, $e0, $06, $5b, $50, $0c, $60
    db $14, $f0

    jr z, @-$7e                                   ; $5458: $28 $80

    ld de, $3010                                  ; $545a: $11 $10 $30
    rlca                                          ; $545d: $07
    inc d                                         ; $545e: $14
    db $10                                        ; $545f: $10
    ld h, b                                       ; $5460: $60
    rlca                                          ; $5461: $07
    ld hl, $9010                                  ; $5462: $21 $10 $90
    rlca                                          ; $5465: $07
    dec l                                         ; $5466: $2d
    db $10                                        ; $5467: $10
    ldh [rTAC], a                                 ; $5468: $e0 $07
    dec l                                         ; $546a: $2d
    ld d, b                                       ; $546b: $50
    or $60                                        ; $546c: $f6 $60
    ld c, $10                                     ; $546e: $0e $10
    pop de                                        ; $5470: $d1
    ld b, $9e                                     ; $5471: $06 $9e
    ld d, b                                       ; $5473: $50
    db $f4                                        ; $5474: $f4
    ld h, b                                       ; $5475: $60
    ld b, $f0                                     ; $5476: $06 $f0

    db $28, $80, $11, $10, $60, $07, $39, $10, $a0, $07, $39, $10, $e1, $07, $39, $50
    db $00, $60, $03, $10, $60, $07, $05, $10, $a0, $07, $05, $10, $e1, $07, $05, $60
    db $03, $10, $60, $07, $39, $10, $a0, $07, $39, $10, $e1, $07, $39, $60, $03, $10
    db $60, $07, $05, $10, $a0, $07, $05, $10, $f2, $07, $05, $60, $19, $f0

    jr z, @-$7e                                   ; $54b6: $28 $80

    ld de, $9910                                  ; $54b8: $11 $10 $99
    ld b, $72                                     ; $54bb: $06 $72
    ld d, b                                       ; $54bd: $50
    nop                                           ; $54be: $00
    ld h, b                                       ; $54bf: $60
    ld bc, $f110                                  ; $54c0: $01 $10 $f1
    ld b, $72                                     ; $54c3: $06 $72
    ld h, b                                       ; $54c5: $60
    inc bc                                        ; $54c6: $03
    stop                                          ; $54c7: $10 $00
    ld d, b                                       ; $54c9: $50
    nop                                           ; $54ca: $00
    ld h, b                                       ; $54cb: $60
    ld bc, $0050                                  ; $54cc: $01 $50 $00
    db $10                                        ; $54cf: $10
    pop af                                        ; $54d0: $f1
    db $10                                        ; $54d1: $10
    sbc c                                         ; $54d2: $99
    ld b, $b2                                     ; $54d3: $06 $b2
    ld h, b                                       ; $54d5: $60
    ld bc, $f110                                  ; $54d6: $01 $10 $f1
    ld b, $b2                                     ; $54d9: $06 $b2
    ld h, b                                       ; $54db: $60
    inc bc                                        ; $54dc: $03
    stop                                          ; $54dd: $10 $00
    ld d, b                                       ; $54df: $50
    nop                                           ; $54e0: $00
    ld h, b                                       ; $54e1: $60
    ld bc, $0050                                  ; $54e2: $01 $50 $00
    db $10                                        ; $54e5: $10
    pop af                                        ; $54e6: $f1
    db $10                                        ; $54e7: $10
    sbc c                                         ; $54e8: $99
    rlca                                          ; $54e9: $07
    add hl, sp                                    ; $54ea: $39
    ld h, b                                       ; $54eb: $60
    ld bc, $f110                                  ; $54ec: $01 $10 $f1
    rlca                                          ; $54ef: $07
    add hl, sp                                    ; $54f0: $39
    ld h, b                                       ; $54f1: $60
    inc bc                                        ; $54f2: $03
    stop                                          ; $54f3: $10 $00
    ld d, b                                       ; $54f5: $50
    nop                                           ; $54f6: $00
    ld h, b                                       ; $54f7: $60
    ld bc, $0050                                  ; $54f8: $01 $50 $00
    db $10                                        ; $54fb: $10
    pop af                                        ; $54fc: $f1
    db $10                                        ; $54fd: $10
    sbc c                                         ; $54fe: $99
    rlca                                          ; $54ff: $07
    dec b                                         ; $5500: $05
    ld h, b                                       ; $5501: $60
    ld bc, $f110                                  ; $5502: $01 $10 $f1
    rlca                                          ; $5505: $07
    dec b                                         ; $5506: $05
    ld h, b                                       ; $5507: $60
    inc bc                                        ; $5508: $03
    stop                                          ; $5509: $10 $00
    ld d, b                                       ; $550b: $50
    nop                                           ; $550c: $00
    ld h, b                                       ; $550d: $60
    ld bc, $0050                                  ; $550e: $01 $50 $00
    db $10                                        ; $5511: $10
    pop af                                        ; $5512: $f1
    db $10                                        ; $5513: $10
    sbc c                                         ; $5514: $99
    rlca                                          ; $5515: $07
    ld hl, $0160                                  ; $5516: $21 $60 $01
    db $10                                        ; $5519: $10
    pop af                                        ; $551a: $f1
    rlca                                          ; $551b: $07
    ld hl, $0360                                  ; $551c: $21 $60 $03
    stop                                          ; $551f: $10 $00
    ld d, b                                       ; $5521: $50
    nop                                           ; $5522: $00
    ld h, b                                       ; $5523: $60
    ld bc, $0050                                  ; $5524: $01 $50 $00
    db $10                                        ; $5527: $10
    pop af                                        ; $5528: $f1
    db $10                                        ; $5529: $10
    sbc c                                         ; $552a: $99
    rlca                                          ; $552b: $07
    ld e, c                                       ; $552c: $59
    ld h, b                                       ; $552d: $60
    ld bc, $f110                                  ; $552e: $01 $10 $f1
    rlca                                          ; $5531: $07
    ld e, c                                       ; $5532: $59
    ld h, b                                       ; $5533: $60
    inc c                                         ; $5534: $0c
    ldh a, [$28]                                  ; $5535: $f0 $28
    add b                                         ; $5537: $80
    ld de, $9910                                  ; $5538: $11 $10 $99
    jr nc, jr_07f_553f                            ; $553b: $30 $02

    rlca                                          ; $553d: $07
    sbc l                                         ; $553e: $9d

jr_07f_553f:
    ld d, b                                       ; $553f: $50
    ld bc, $0160                                  ; $5540: $01 $60 $01
    ld b, b                                       ; $5543: $40
    stop                                          ; $5544: $10 $00
    ld d, b                                       ; $5546: $50
    nop                                           ; $5547: $00
    ld h, b                                       ; $5548: $60
    ld [bc], a                                    ; $5549: $02
    ld d, b                                       ; $554a: $50
    ld bc, $9910                                  ; $554b: $01 $10 $99
    db $10                                        ; $554e: $10
    xor c                                         ; $554f: $a9
    rlca                                          ; $5550: $07
    or [hl]                                       ; $5551: $b6
    ld d, b                                       ; $5552: $50
    ld bc, $0160                                  ; $5553: $01 $60 $01
    db $10                                        ; $5556: $10
    ld a, [c]                                     ; $5557: $f2
    jr nc, jr_07f_5569                            ; $5558: $30 $0f

    rlca                                          ; $555a: $07
    or [hl]                                       ; $555b: $b6
    ld d, b                                       ; $555c: $50
    ld bc, $0160                                  ; $555d: $01 $60 $01
    ld b, b                                       ; $5560: $40
    ldh a, [$28]                                  ; $5561: $f0 $28
    add b                                         ; $5563: $80
    ld de, $f110                                  ; $5564: $11 $10 $f1
    ld b, $89                                     ; $5567: $06 $89

jr_07f_5569:
    ld d, b                                       ; $5569: $50
    nop                                           ; $556a: $00
    ld h, b                                       ; $556b: $60
    inc b                                         ; $556c: $04
    db $10                                        ; $556d: $10
    pop af                                        ; $556e: $f1
    ld b, $b2                                     ; $556f: $06 $b2
    ld h, b                                       ; $5571: $60
    inc b                                         ; $5572: $04
    db $10                                        ; $5573: $10
    pop af                                        ; $5574: $f1
    ld b, $d6                                     ; $5575: $06 $d6
    ld h, b                                       ; $5577: $60
    inc b                                         ; $5578: $04
    db $10                                        ; $5579: $10
    pop af                                        ; $557a: $f1
    rlca                                          ; $557b: $07
    dec b                                         ; $557c: $05
    ld h, b                                       ; $557d: $60
    inc b                                         ; $557e: $04
    db $10                                        ; $557f: $10
    pop af                                        ; $5580: $f1
    rlca                                          ; $5581: $07
    ld hl, $0460                                  ; $5582: $21 $60 $04
    db $10                                        ; $5585: $10
    pop af                                        ; $5586: $f1
    rlca                                          ; $5587: $07
    ld b, h                                       ; $5588: $44
    ld h, b                                       ; $5589: $60
    inc b                                         ; $558a: $04
    db $10                                        ; $558b: $10
    pop af                                        ; $558c: $f1
    rlca                                          ; $558d: $07
    ld l, e                                       ; $558e: $6b
    ld h, b                                       ; $558f: $60
    inc b                                         ; $5590: $04
    db $10                                        ; $5591: $10
    pop af                                        ; $5592: $f1
    rlca                                          ; $5593: $07
    ld b, h                                       ; $5594: $44
    ld h, b                                       ; $5595: $60
    inc b                                         ; $5596: $04
    db $10                                        ; $5597: $10
    pop af                                        ; $5598: $f1
    rlca                                          ; $5599: $07
    ld l, e                                       ; $559a: $6b
    ld h, b                                       ; $559b: $60
    inc b                                         ; $559c: $04
    db $10                                        ; $559d: $10
    add c                                         ; $559e: $81
    rlca                                          ; $559f: $07
    ld b, h                                       ; $55a0: $44
    ld h, b                                       ; $55a1: $60
    inc b                                         ; $55a2: $04
    db $10                                        ; $55a3: $10
    pop af                                        ; $55a4: $f1
    rlca                                          ; $55a5: $07
    add e                                         ; $55a6: $83
    ld h, b                                       ; $55a7: $60
    inc b                                         ; $55a8: $04
    db $10                                        ; $55a9: $10
    pop af                                        ; $55aa: $f1
    rlca                                          ; $55ab: $07
    ld l, e                                       ; $55ac: $6b
    ld h, b                                       ; $55ad: $60
    inc b                                         ; $55ae: $04
    db $10                                        ; $55af: $10
    pop af                                        ; $55b0: $f1
    rlca                                          ; $55b1: $07
    add e                                         ; $55b2: $83
    ld h, b                                       ; $55b3: $60
    inc b                                         ; $55b4: $04
    db $10                                        ; $55b5: $10
    add c                                         ; $55b6: $81
    rlca                                          ; $55b7: $07
    ld l, e                                       ; $55b8: $6b
    ld h, b                                       ; $55b9: $60
    inc b                                         ; $55ba: $04
    db $10                                        ; $55bb: $10
    pop af                                        ; $55bc: $f1
    rlca                                          ; $55bd: $07
    and d                                         ; $55be: $a2
    ld h, b                                       ; $55bf: $60
    inc b                                         ; $55c0: $04
    db $10                                        ; $55c1: $10
    pop af                                        ; $55c2: $f1
    rlca                                          ; $55c3: $07
    sbc l                                         ; $55c4: $9d
    ld h, b                                       ; $55c5: $60
    inc b                                         ; $55c6: $04
    db $10                                        ; $55c7: $10
    pop af                                        ; $55c8: $f1
    rlca                                          ; $55c9: $07
    and d                                         ; $55ca: $a2
    ld h, b                                       ; $55cb: $60
    inc b                                         ; $55cc: $04
    db $10                                        ; $55cd: $10
    pop af                                        ; $55ce: $f1
    rlca                                          ; $55cf: $07
    xor h                                         ; $55d0: $ac
    ld h, b                                       ; $55d1: $60
    inc b                                         ; $55d2: $04
    db $10                                        ; $55d3: $10
    pop af                                        ; $55d4: $f1
    rlca                                          ; $55d5: $07
    or [hl]                                       ; $55d6: $b6
    ld h, b                                       ; $55d7: $60
    inc b                                         ; $55d8: $04
    db $10                                        ; $55d9: $10
    ld [hl], c                                    ; $55da: $71
    rlca                                          ; $55db: $07
    and d                                         ; $55dc: $a2
    ld h, b                                       ; $55dd: $60
    inc b                                         ; $55de: $04
    db $10                                        ; $55df: $10
    ld [hl], c                                    ; $55e0: $71
    rlca                                          ; $55e1: $07
    xor h                                         ; $55e2: $ac
    ld h, b                                       ; $55e3: $60
    inc b                                         ; $55e4: $04
    db $10                                        ; $55e5: $10
    ld [hl], c                                    ; $55e6: $71
    rlca                                          ; $55e7: $07
    or [hl]                                       ; $55e8: $b6
    ld h, b                                       ; $55e9: $60
    inc b                                         ; $55ea: $04
    db $10                                        ; $55eb: $10
    ld [hl-], a                                   ; $55ec: $32
    rlca                                          ; $55ed: $07
    and d                                         ; $55ee: $a2
    ld h, b                                       ; $55ef: $60
    inc b                                         ; $55f0: $04
    db $10                                        ; $55f1: $10
    ld [hl-], a                                   ; $55f2: $32
    rlca                                          ; $55f3: $07
    xor h                                         ; $55f4: $ac
    ld h, b                                       ; $55f5: $60
    inc b                                         ; $55f6: $04
    db $10                                        ; $55f7: $10
    ld [hl-], a                                   ; $55f8: $32
    rlca                                          ; $55f9: $07
    or [hl]                                       ; $55fa: $b6
    ld h, b                                       ; $55fb: $60
    inc b                                         ; $55fc: $04
    ldh a, [rNR50]                                ; $55fd: $f0 $24
    add b                                         ; $55ff: $80
    ld de, $8110                                  ; $5600: $11 $10 $81
    rlca                                          ; $5603: $07
    cp [hl]                                       ; $5604: $be
    ld d, b                                       ; $5605: $50
    inc d                                         ; $5606: $14
    ld h, b                                       ; $5607: $60
    ld [bc], a                                    ; $5608: $02
    stop                                          ; $5609: $10 $00
    ld d, b                                       ; $560b: $50
    nop                                           ; $560c: $00
    ld h, b                                       ; $560d: $60
    inc bc                                        ; $560e: $03
    ld d, b                                       ; $560f: $50
    inc d                                         ; $5610: $14
    db $10                                        ; $5611: $10
    add c                                         ; $5612: $81
    db $10                                        ; $5613: $10
    pop de                                        ; $5614: $d1
    rlca                                          ; $5615: $07
    sub $50                                       ; $5616: $d6 $50
    ld bc, $0360                                  ; $5618: $01 $60 $03
    ldh a, [$28]                                  ; $561b: $f0 $28
    add b                                         ; $561d: $80
    ld de, $3910                                  ; $561e: $11 $10 $39
    rlca                                          ; $5621: $07
    ld a, e                                       ; $5622: $7b
    ld d, b                                       ; $5623: $50
    cp $60                                        ; $5624: $fe $60
    ld [$e510], sp                                ; $5626: $08 $10 $e5
    rlca                                          ; $5629: $07
    ld l, e                                       ; $562a: $6b
    ld d, b                                       ; $562b: $50
    cp $60                                        ; $562c: $fe $60
    ld [hl-], a                                   ; $562e: $32
    ldh a, [rNR41]                                ; $562f: $f0 $20
    add b                                         ; $5631: $80
    ld de, $5910                                  ; $5632: $11 $10 $59
    inc b                                         ; $5635: $04
    ld d, $50                                     ; $5636: $16 $50
    add hl, de                                    ; $5638: $19
    ld h, b                                       ; $5639: $60
    dec b                                         ; $563a: $05
    db $10                                        ; $563b: $10
    ld a, [c]                                     ; $563c: $f2
    dec b                                         ; $563d: $05
    db $ed                                        ; $563e: $ed
    ld d, b                                       ; $563f: $50
    add hl, de                                    ; $5640: $19
    ld h, b                                       ; $5641: $60
    dec b                                         ; $5642: $05
    db $10                                        ; $5643: $10
    ld e, c                                       ; $5644: $59
    nop                                           ; $5645: $00
    inc l                                         ; $5646: $2c
    ld d, b                                       ; $5647: $50
    dec l                                         ; $5648: $2d
    ld h, b                                       ; $5649: $60
    dec b                                         ; $564a: $05
    db $10                                        ; $564b: $10
    ld a, [c]                                     ; $564c: $f2
    inc bc                                        ; $564d: $03
    jp c, Jump_000_2d50                           ; $564e: $da $50 $2d

    ld h, b                                       ; $5651: $60
    dec b                                         ; $5652: $05
    db $10                                        ; $5653: $10
    ld e, c                                       ; $5654: $59
    inc b                                         ; $5655: $04
    ld d, $50                                     ; $5656: $16 $50
    add hl, de                                    ; $5658: $19
    ld h, b                                       ; $5659: $60
    dec b                                         ; $565a: $05
    db $10                                        ; $565b: $10
    ld a, [c]                                     ; $565c: $f2
    dec b                                         ; $565d: $05
    db $ed                                        ; $565e: $ed
    ld d, b                                       ; $565f: $50
    add hl, de                                    ; $5660: $19
    ld h, b                                       ; $5661: $60
    dec b                                         ; $5662: $05
    db $10                                        ; $5663: $10
    ld e, c                                       ; $5664: $59
    nop                                           ; $5665: $00
    inc l                                         ; $5666: $2c
    ld d, b                                       ; $5667: $50
    dec l                                         ; $5668: $2d
    ld h, b                                       ; $5669: $60
    dec b                                         ; $566a: $05
    db $10                                        ; $566b: $10
    ld a, [c]                                     ; $566c: $f2
    inc bc                                        ; $566d: $03
    jp c, Jump_000_2d50                           ; $566e: $da $50 $2d

    ld h, b                                       ; $5671: $60
    dec b                                         ; $5672: $05
    stop                                          ; $5673: $10 $00
    ld d, b                                       ; $5675: $50
    nop                                           ; $5676: $00
    ld h, b                                       ; $5677: $60
    ld bc, $2d50                                  ; $5678: $01 $50 $2d
    db $10                                        ; $567b: $10
    ld a, [c]                                     ; $567c: $f2
    db $10                                        ; $567d: $10
    add hl, hl                                    ; $567e: $29
    nop                                           ; $567f: $00
    inc l                                         ; $5680: $2c
    ld d, b                                       ; $5681: $50
    dec l                                         ; $5682: $2d
    ld h, b                                       ; $5683: $60
    dec b                                         ; $5684: $05
    db $10                                        ; $5685: $10
    ld h, d                                       ; $5686: $62
    inc bc                                        ; $5687: $03
    jp c, Jump_000_2d50                           ; $5688: $da $50 $2d

    ld h, b                                       ; $568b: $60
    dec b                                         ; $568c: $05
    stop                                          ; $568d: $10 $00
    ld d, b                                       ; $568f: $50
    nop                                           ; $5690: $00
    ld h, b                                       ; $5691: $60
    ld bc, $2d50                                  ; $5692: $01 $50 $2d
    db $10                                        ; $5695: $10
    ld h, d                                       ; $5696: $62
    db $10                                        ; $5697: $10
    add hl, bc                                    ; $5698: $09
    nop                                           ; $5699: $00
    inc l                                         ; $569a: $2c
    ld d, b                                       ; $569b: $50
    dec l                                         ; $569c: $2d
    ld h, b                                       ; $569d: $60
    dec b                                         ; $569e: $05
    db $10                                        ; $569f: $10
    ld [hl-], a                                   ; $56a0: $32
    inc bc                                        ; $56a1: $03
    jp c, Jump_000_2d50                           ; $56a2: $da $50 $2d

    ld h, b                                       ; $56a5: $60
    dec b                                         ; $56a6: $05
    ldh a, [rNR41]                                ; $56a7: $f0 $20
    add b                                         ; $56a9: $80
    ld de, $6910                                  ; $56aa: $11 $10 $69
    rlca                                          ; $56ad: $07
    xor d                                         ; $56ae: $aa
    ld d, b                                       ; $56af: $50
    inc bc                                        ; $56b0: $03
    ld h, b                                       ; $56b1: $60
    inc bc                                        ; $56b2: $03
    stop                                          ; $56b3: $10 $00
    ld d, b                                       ; $56b5: $50
    nop                                           ; $56b6: $00
    ld h, b                                       ; $56b7: $60
    ld bc, $0350                                  ; $56b8: $01 $50 $03
    db $10                                        ; $56bb: $10
    ld l, c                                       ; $56bc: $69
    db $10                                        ; $56bd: $10
    pop hl                                        ; $56be: $e1
    rlca                                          ; $56bf: $07
    or h                                          ; $56c0: $b4
    ld d, b                                       ; $56c1: $50
    cp $60                                        ; $56c2: $fe $60
    ld [bc], a                                    ; $56c4: $02
    rlca                                          ; $56c5: $07
    or h                                          ; $56c6: $b4
    ld d, b                                       ; $56c7: $50
    ld [bc], a                                    ; $56c8: $02
    ld h, b                                       ; $56c9: $60
    ld [bc], a                                    ; $56ca: $02
    ldh a, [rNR41]                                ; $56cb: $f0 $20
    add b                                         ; $56cd: $80
    ld de, $6910                                  ; $56ce: $11 $10 $69
    rlca                                          ; $56d1: $07
    sbc l                                         ; $56d2: $9d
    ld d, b                                       ; $56d3: $50
    inc bc                                        ; $56d4: $03
    ld h, b                                       ; $56d5: $60
    inc bc                                        ; $56d6: $03
    stop                                          ; $56d7: $10 $00
    ld d, b                                       ; $56d9: $50
    nop                                           ; $56da: $00
    ld h, b                                       ; $56db: $60
    ld bc, $0350                                  ; $56dc: $01 $50 $03
    db $10                                        ; $56df: $10
    ld l, c                                       ; $56e0: $69
    db $10                                        ; $56e1: $10
    pop hl                                        ; $56e2: $e1
    rlca                                          ; $56e3: $07
    and a                                         ; $56e4: $a7
    ld d, b                                       ; $56e5: $50
    cp $60                                        ; $56e6: $fe $60
    ld [bc], a                                    ; $56e8: $02
    rlca                                          ; $56e9: $07
    and a                                         ; $56ea: $a7
    ld d, b                                       ; $56eb: $50
    ld [bc], a                                    ; $56ec: $02
    ld h, b                                       ; $56ed: $60
    ld [bc], a                                    ; $56ee: $02
    ldh a, [rNR41]                                ; $56ef: $f0 $20
    add b                                         ; $56f1: $80
    ld de, $6910                                  ; $56f2: $11 $10 $69
    rlca                                          ; $56f5: $07
    sub h                                         ; $56f6: $94
    ld d, b                                       ; $56f7: $50
    inc bc                                        ; $56f8: $03
    ld h, b                                       ; $56f9: $60
    inc bc                                        ; $56fa: $03
    stop                                          ; $56fb: $10 $00
    ld d, b                                       ; $56fd: $50
    nop                                           ; $56fe: $00
    ld h, b                                       ; $56ff: $60
    ld bc, $0350                                  ; $5700: $01 $50 $03
    db $10                                        ; $5703: $10
    ld l, c                                       ; $5704: $69
    db $10                                        ; $5705: $10
    pop hl                                        ; $5706: $e1
    rlca                                          ; $5707: $07
    sbc [hl]                                      ; $5708: $9e
    ld d, b                                       ; $5709: $50
    cp $60                                        ; $570a: $fe $60
    ld [bc], a                                    ; $570c: $02
    rlca                                          ; $570d: $07
    sbc [hl]                                      ; $570e: $9e
    ld d, b                                       ; $570f: $50
    ld [bc], a                                    ; $5710: $02
    ld h, b                                       ; $5711: $60
    ld [bc], a                                    ; $5712: $02
    ldh a, [rNR41]                                ; $5713: $f0 $20
    add b                                         ; $5715: $80
    ld de, $6910                                  ; $5716: $11 $10 $69
    rlca                                          ; $5719: $07
    add d                                         ; $571a: $82
    ld d, b                                       ; $571b: $50
    inc bc                                        ; $571c: $03
    ld h, b                                       ; $571d: $60
    inc bc                                        ; $571e: $03
    stop                                          ; $571f: $10 $00
    ld d, b                                       ; $5721: $50
    nop                                           ; $5722: $00
    ld h, b                                       ; $5723: $60
    ld bc, $0350                                  ; $5724: $01 $50 $03
    db $10                                        ; $5727: $10
    ld l, c                                       ; $5728: $69
    db $10                                        ; $5729: $10
    pop hl                                        ; $572a: $e1
    rlca                                          ; $572b: $07
    adc h                                         ; $572c: $8c
    ld d, b                                       ; $572d: $50

jr_07f_572e:
    cp $60                                        ; $572e: $fe $60
    ld [bc], a                                    ; $5730: $02
    rlca                                          ; $5731: $07
    adc h                                         ; $5732: $8c
    ld d, b                                       ; $5733: $50
    ld [bc], a                                    ; $5734: $02
    ld h, b                                       ; $5735: $60
    ld [bc], a                                    ; $5736: $02
    db $f0                                        ; $5737: $f0

    db $28, $80, $11, $10, $69, $07, $aa, $07, $ac

    db $10                                        ; $5741: $10
    ldh [$30], a                                  ; $5742: $e0 $30
    ld [bc], a                                    ; $5744: $02
    rlca                                          ; $5745: $07
    xor [hl]                                      ; $5746: $ae
    ld d, b                                       ; $5747: $50
    ld bc, $0160                                  ; $5748: $01 $60 $01
    ld b, b                                       ; $574b: $40
    db $10                                        ; $574c: $10
    pop hl                                        ; $574d: $e1
    rlca                                          ; $574e: $07
    xor [hl]                                      ; $574f: $ae
    ld d, b                                       ; $5750: $50
    dec b                                         ; $5751: $05
    ld h, b                                       ; $5752: $60
    ld [bc], a                                    ; $5753: $02
    db $f0                                        ; $5754: $f0

    db $28, $80, $11, $10, $69, $07, $a4, $07, $a6

    db $10                                        ; $575e: $10
    ldh [$30], a                                  ; $575f: $e0 $30
    ld [bc], a                                    ; $5761: $02
    rlca                                          ; $5762: $07
    xor b                                         ; $5763: $a8
    ld d, b                                       ; $5764: $50
    ld bc, $0160                                  ; $5765: $01 $60 $01
    ld b, b                                       ; $5768: $40
    db $10                                        ; $5769: $10
    pop hl                                        ; $576a: $e1
    rlca                                          ; $576b: $07
    xor b                                         ; $576c: $a8
    ld d, b                                       ; $576d: $50
    dec b                                         ; $576e: $05
    ld h, b                                       ; $576f: $60
    ld [bc], a                                    ; $5770: $02
    db $f0                                        ; $5771: $f0

    db $28, $80, $11, $10, $69, $07, $9d, $07, $9f, $10, $e0, $30, $02, $07, $a1, $50
    db $01, $60, $01, $40, $10, $e1, $07, $a1, $50, $05, $60, $02, $f0, $28, $80, $11
    db $10, $69, $07, $95, $07, $97, $10, $e0, $30, $02, $07, $99, $50, $01, $60, $01
    db $40, $10, $e1, $07, $99, $50, $05, $60, $02, $f0

    jr nz, jr_07f_572e                            ; $57ac: $20 $80

    ld de, $6910                                  ; $57ae: $11 $10 $69
    rlca                                          ; $57b1: $07
    rrca                                          ; $57b2: $0f
    ld d, b                                       ; $57b3: $50
    cp $60                                        ; $57b4: $fe $60
    ld [bc], a                                    ; $57b6: $02
    db $10                                        ; $57b7: $10
    ld a, [c]                                     ; $57b8: $f2
    rlca                                          ; $57b9: $07
    ld a, [de]                                    ; $57ba: $1a
    ld d, b                                       ; $57bb: $50
    ld [bc], a                                    ; $57bc: $02
    ld h, b                                       ; $57bd: $60
    dec b                                         ; $57be: $05
    ldh a, [rNR41]                                ; $57bf: $f0 $20
    add b                                         ; $57c1: $80
    ld de, $6910                                  ; $57c2: $11 $10 $69
    rlca                                          ; $57c5: $07
    dec b                                         ; $57c6: $05
    ld d, b                                       ; $57c7: $50
    cp $60                                        ; $57c8: $fe $60
    ld [bc], a                                    ; $57ca: $02
    db $10                                        ; $57cb: $10
    ld a, [c]                                     ; $57cc: $f2
    rlca                                          ; $57cd: $07
    db $10                                        ; $57ce: $10
    ld d, b                                       ; $57cf: $50
    ld [bc], a                                    ; $57d0: $02
    ld h, b                                       ; $57d1: $60
    dec b                                         ; $57d2: $05
    ldh a, [rNR41]                                ; $57d3: $f0 $20
    add b                                         ; $57d5: $80
    ld de, $6910                                  ; $57d6: $11 $10 $69
    ld b, $f9                                     ; $57d9: $06 $f9
    ld d, b                                       ; $57db: $50
    cp $60                                        ; $57dc: $fe $60
    ld [bc], a                                    ; $57de: $02
    db $10                                        ; $57df: $10
    ld a, [c]                                     ; $57e0: $f2
    rlca                                          ; $57e1: $07
    inc b                                         ; $57e2: $04
    ld d, b                                       ; $57e3: $50
    ld [bc], a                                    ; $57e4: $02
    ld h, b                                       ; $57e5: $60
    dec b                                         ; $57e6: $05
    ldh a, [rNR41]                                ; $57e7: $f0 $20
    add b                                         ; $57e9: $80
    ld de, $6910                                  ; $57ea: $11 $10 $69
    ld b, $f0                                     ; $57ed: $06 $f0
    ld d, b                                       ; $57ef: $50
    cp $60                                        ; $57f0: $fe $60
    ld [bc], a                                    ; $57f2: $02
    db $10                                        ; $57f3: $10
    ld a, [c]                                     ; $57f4: $f2
    ld b, $fa                                     ; $57f5: $06 $fa
    ld d, b                                       ; $57f7: $50
    ld [bc], a                                    ; $57f8: $02
    ld h, b                                       ; $57f9: $60
    dec b                                         ; $57fa: $05
    ldh a, [$28]                                  ; $57fb: $f0 $28
    add b                                         ; $57fd: $80
    ld de, $5910                                  ; $57fe: $11 $10 $59
    rlca                                          ; $5801: $07
    ld h, e                                       ; $5802: $63

Jump_07f_5803:
    ld d, b                                       ; $5803: $50
    ld bc, $0160                                  ; $5804: $01 $60 $01
    rlca                                          ; $5807: $07
    ld l, l                                       ; $5808: $6d
    ld d, b                                       ; $5809: $50
    ld bc, $0160                                  ; $580a: $01 $60 $01
    db $10                                        ; $580d: $10
    pop hl                                        ; $580e: $e1
    rlca                                          ; $580f: $07
    ld l, d                                       ; $5810: $6a
    ld d, b                                       ; $5811: $50
    ld bc, $0160                                  ; $5812: $01 $60 $01
    rlca                                          ; $5815: $07
    ld h, a                                       ; $5816: $67
    ld d, b                                       ; $5817: $50
    ld bc, $0160                                  ; $5818: $01 $60 $01
    ldh a, [$28]                                  ; $581b: $f0 $28
    add b                                         ; $581d: $80
    ld de, $5910                                  ; $581e: $11 $10 $59
    rlca                                          ; $5821: $07
    ld e, h                                       ; $5822: $5c
    ld d, b                                       ; $5823: $50
    ld bc, $0160                                  ; $5824: $01 $60 $01
    rlca                                          ; $5827: $07
    ld e, c                                       ; $5828: $59
    ld d, b                                       ; $5829: $50
    ld bc, $0160                                  ; $582a: $01 $60 $01
    db $10                                        ; $582d: $10
    pop hl                                        ; $582e: $e1
    rlca                                          ; $582f: $07
    ld d, [hl]                                    ; $5830: $56
    ld d, b                                       ; $5831: $50
    ld bc, $0160                                  ; $5832: $01 $60 $01
    rlca                                          ; $5835: $07
    ld d, e                                       ; $5836: $53
    ld d, b                                       ; $5837: $50
    ld bc, $0160                                  ; $5838: $01 $60 $01
    ldh a, [$28]                                  ; $583b: $f0 $28
    add b                                         ; $583d: $80
    ld de, $5910                                  ; $583e: $11 $10 $59
    rlca                                          ; $5841: $07
    ld d, b                                       ; $5842: $50
    ld d, b                                       ; $5843: $50
    ld bc, $0160                                  ; $5844: $01 $60 $01
    rlca                                          ; $5847: $07
    ld c, l                                       ; $5848: $4d
    ld d, b                                       ; $5849: $50
    ld bc, $0160                                  ; $584a: $01 $60 $01
    db $10                                        ; $584d: $10
    pop hl                                        ; $584e: $e1
    rlca                                          ; $584f: $07
    ld c, d                                       ; $5850: $4a
    ld d, b                                       ; $5851: $50
    ld bc, $0160                                  ; $5852: $01 $60 $01
    rlca                                          ; $5855: $07
    ld b, a                                       ; $5856: $47
    ld d, b                                       ; $5857: $50
    ld bc, $0160                                  ; $5858: $01 $60 $01
    ldh a, [$28]                                  ; $585b: $f0 $28
    add b                                         ; $585d: $80
    ld de, $5910                                  ; $585e: $11 $10 $59
    rlca                                          ; $5861: $07
    ld b, e                                       ; $5862: $43
    ld d, b                                       ; $5863: $50
    ld bc, $0160                                  ; $5864: $01 $60 $01
    rlca                                          ; $5867: $07
    ld b, b                                       ; $5868: $40
    ld d, b                                       ; $5869: $50
    ld bc, $0160                                  ; $586a: $01 $60 $01
    db $10                                        ; $586d: $10
    pop hl                                        ; $586e: $e1
    rlca                                          ; $586f: $07
    dec a                                         ; $5870: $3d
    ld d, b                                       ; $5871: $50
    ld bc, $0160                                  ; $5872: $01 $60 $01
    rlca                                          ; $5875: $07
    ld a, [hl-]                                   ; $5876: $3a
    ld d, b                                       ; $5877: $50
    ld bc, $0160                                  ; $5878: $01 $60 $01
    ldh a, [rNR41]                                ; $587b: $f0 $20
    add b                                         ; $587d: $80
    ld de, $a910                                  ; $587e: $11 $10 $a9
    dec b                                         ; $5881: $05
    dec h                                         ; $5882: $25
    ld d, b                                       ; $5883: $50
    inc d                                         ; $5884: $14
    ld h, b                                       ; $5885: $60
    ld b, $10                                     ; $5886: $06 $10
    nop                                           ; $5888: $00
    ld d, b                                       ; $5889: $50
    nop                                           ; $588a: $00
    ld h, b                                       ; $588b: $60
    ld bc, $1450                                  ; $588c: $01 $50 $14
    db $10                                        ; $588f: $10
    xor c                                         ; $5890: $a9
    db $10                                        ; $5891: $10
    ldh a, [rTIMA]                                ; $5892: $f0 $05
    dec h                                         ; $5894: $25
    ld d, b                                       ; $5895: $50
    ld [c], a                                     ; $5896: $e2
    ld h, b                                       ; $5897: $60
    inc b                                         ; $5898: $04
    ldh a, [rNR41]                                ; $5899: $f0 $20
    add b                                         ; $589b: $80
    ld de, $a910                                  ; $589c: $11 $10 $a9
    inc b                                         ; $589f: $04
    push hl                                       ; $58a0: $e5
    ld d, b                                       ; $58a1: $50
    inc d                                         ; $58a2: $14
    ld h, b                                       ; $58a3: $60
    ld b, $10                                     ; $58a4: $06 $10
    nop                                           ; $58a6: $00
    ld d, b                                       ; $58a7: $50
    nop                                           ; $58a8: $00
    ld h, b                                       ; $58a9: $60
    ld bc, $1450                                  ; $58aa: $01 $50 $14
    db $10                                        ; $58ad: $10
    xor c                                         ; $58ae: $a9
    db $10                                        ; $58af: $10
    ldh a, [rDIV]                                 ; $58b0: $f0 $04
    push hl                                       ; $58b2: $e5
    ld d, b                                       ; $58b3: $50
    ld [c], a                                     ; $58b4: $e2
    ld h, b                                       ; $58b5: $60
    inc b                                         ; $58b6: $04
    ldh a, [rNR41]                                ; $58b7: $f0 $20
    add b                                         ; $58b9: $80
    ld de, $a910                                  ; $58ba: $11 $10 $a9
    inc b                                         ; $58bd: $04
    add b                                         ; $58be: $80
    ld d, b                                       ; $58bf: $50
    inc d                                         ; $58c0: $14
    ld h, b                                       ; $58c1: $60
    ld b, $10                                     ; $58c2: $06 $10
    nop                                           ; $58c4: $00
    ld d, b                                       ; $58c5: $50
    nop                                           ; $58c6: $00
    ld h, b                                       ; $58c7: $60
    ld bc, $1450                                  ; $58c8: $01 $50 $14
    db $10                                        ; $58cb: $10
    xor c                                         ; $58cc: $a9
    db $10                                        ; $58cd: $10
    ldh a, [rDIV]                                 ; $58ce: $f0 $04
    add b                                         ; $58d0: $80
    ld d, b                                       ; $58d1: $50
    ld [c], a                                     ; $58d2: $e2
    ld h, b                                       ; $58d3: $60
    inc b                                         ; $58d4: $04
    ldh a, [rNR41]                                ; $58d5: $f0 $20
    add b                                         ; $58d7: $80
    ld de, $a910                                  ; $58d8: $11 $10 $a9
    inc b                                         ; $58db: $04
    nop                                           ; $58dc: $00
    ld d, b                                       ; $58dd: $50
    inc d                                         ; $58de: $14
    ld h, b                                       ; $58df: $60
    ld b, $10                                     ; $58e0: $06 $10
    nop                                           ; $58e2: $00
    ld d, b                                       ; $58e3: $50
    nop                                           ; $58e4: $00
    ld h, b                                       ; $58e5: $60
    ld bc, $1450                                  ; $58e6: $01 $50 $14
    db $10                                        ; $58e9: $10
    xor c                                         ; $58ea: $a9
    db $10                                        ; $58eb: $10
    ldh a, [rDIV]                                 ; $58ec: $f0 $04
    nop                                           ; $58ee: $00
    ld d, b                                       ; $58ef: $50
    ld [c], a                                     ; $58f0: $e2
    ld h, b                                       ; $58f1: $60
    inc b                                         ; $58f2: $04
    db $f0                                        ; $58f3: $f0

    db $20, $80, $11, $10, $89, $07, $30, $50, $09, $60, $04, $10, $f1, $07, $58, $50
    db $fa, $60, $02, $07, $32, $50, $f6, $60, $01, $f0, $20, $80, $11, $10, $89, $07
    db $1c, $50, $09, $60, $04

    db $10                                        ; $5919: $10
    pop af                                        ; $591a: $f1
    rlca                                          ; $591b: $07
    ld b, c                                       ; $591c: $41
    ld d, b                                       ; $591d: $50
    ld a, [$0260]                                 ; $591e: $fa $60 $02
    rlca                                          ; $5921: $07
    dec e                                         ; $5922: $1d
    ld d, b                                       ; $5923: $50
    or $60                                        ; $5924: $f6 $60
    db $01                                        ; $5926: $01
    db $f0                                        ; $5927: $f0

    db $20, $80, $11, $10, $89, $07, $10, $50, $09, $60, $04, $10, $f1, $07, $35, $50
    db $fa, $60, $02, $07, $01, $50, $f6, $60, $01, $f0, $20, $80, $11, $10, $89, $06
    db $f6, $50, $09, $60, $04, $10, $f1, $07, $21, $50, $fa, $60, $02, $06, $e7, $50
    db $f6, $60, $01, $f0, $24, $80, $11, $10, $f0, $03, $00, $50, $7f, $60, $05

    inc bc                                        ; $5967: $03
    nop                                           ; $5968: $00
    ld d, b                                       ; $5969: $50
    ei                                            ; $596a: $fb
    ld h, b                                       ; $596b: $60
    ld [bc], a                                    ; $596c: $02
    db $f0                                        ; $596d: $f0

    db $24, $80, $11, $10, $f0, $02, $72, $50, $7f, $60, $05

    ld [bc], a                                    ; $5979: $02
    ld [hl], d                                    ; $597a: $72
    ld d, b                                       ; $597b: $50
    ei                                            ; $597c: $fb
    ld h, b                                       ; $597d: $60
    ld [bc], a                                    ; $597e: $02
    db $f0                                        ; $597f: $f0

    db $24, $80, $11, $10, $f0, $02, $00, $50, $7f, $60, $05, $02, $00, $50, $fb, $60
    db $02, $f0, $24, $80, $11, $10, $f0, $01, $55, $50, $7f, $60, $05, $01, $55, $50
    db $fb, $60, $02, $f0, $20, $80, $11, $10, $89, $07, $1e, $50, $03, $60, $02

    rlca                                          ; $59af: $07
    jr @+$52                                      ; $59b0: $18 $50

    inc bc                                        ; $59b2: $03
    ld h, b                                       ; $59b3: $60
    ld [bc], a                                    ; $59b4: $02
    db $10                                        ; $59b5: $10
    ld a, [c]                                     ; $59b6: $f2
    rlca                                          ; $59b7: $07
    ld de, $0807                                  ; $59b8: $11 $07 $08
    rlca                                          ; $59bb: $07
    ld [bc], a                                    ; $59bc: $02
    ld b, $f8                                     ; $59bd: $06 $f8
    db $f0                                        ; $59bf: $f0

    db $20, $80, $11, $10, $89, $07, $09, $50, $03, $60, $02

    rlca                                          ; $59cb: $07
    inc bc                                        ; $59cc: $03
    ld d, b                                       ; $59cd: $50
    inc bc                                        ; $59ce: $03
    ld h, b                                       ; $59cf: $60
    ld [bc], a                                    ; $59d0: $02
    db $10                                        ; $59d1: $10
    ld a, [c]                                     ; $59d2: $f2
    ld b, $fd                                     ; $59d3: $06 $fd
    ld b, $f3                                     ; $59d5: $06 $f3
    ld b, $ed                                     ; $59d7: $06 $ed
    ld b, $e3                                     ; $59d9: $06 $e3
    db $f0                                        ; $59db: $f0

    db $20, $80, $11, $10, $89, $06, $ed, $50, $03, $60, $02

    ld b, $e7                                     ; $59e7: $06 $e7
    ld d, b                                       ; $59e9: $50
    inc bc                                        ; $59ea: $03
    ld h, b                                       ; $59eb: $60
    ld [bc], a                                    ; $59ec: $02
    db $10                                        ; $59ed: $10
    ld a, [c]                                     ; $59ee: $f2
    ld b, $e1                                     ; $59ef: $06 $e1
    ld b, $d7                                     ; $59f1: $06 $d7
    ld b, $d1                                     ; $59f3: $06 $d1
    ld b, $c7                                     ; $59f5: $06 $c7

jr_07f_59f7:
    db $f0                                        ; $59f7: $f0

    db $20, $80, $11, $10, $89, $06, $d9, $50, $03, $60, $02, $06, $d3, $50, $03, $60
    db $02, $10, $f2, $06, $cd, $06, $c3, $06, $ad, $06, $b3, $f0

    jr z, @-$7e                                   ; $5a14: $28 $80

    ld de, $d110                                  ; $5a16: $11 $10 $d1
    dec b                                         ; $5a19: $05
    xor h                                         ; $5a1a: $ac
    ld d, b                                       ; $5a1b: $50
    ld a, [$0260]                                 ; $5a1c: $fa $60 $02
    stop                                          ; $5a1f: $10 $00
    ld d, b                                       ; $5a21: $50
    nop                                           ; $5a22: $00
    ld h, b                                       ; $5a23: $60
    ld bc, $fa50                                  ; $5a24: $01 $50 $fa
    db $10                                        ; $5a27: $10
    pop de                                        ; $5a28: $d1
    db $10                                        ; $5a29: $10
    di                                            ; $5a2a: $f3
    dec b                                         ; $5a2b: $05
    xor h                                         ; $5a2c: $ac
    ld d, b                                       ; $5a2d: $50
    rla                                           ; $5a2e: $17
    ld h, b                                       ; $5a2f: $60
    inc d                                         ; $5a30: $14
    db $f0                                        ; $5a31: $f0

    db $28, $80, $11, $10, $e1, $07, $05, $50, $0a, $60, $0f, $f0

    jr z, @-$7e                                   ; $5a3e: $28 $80

    ld de, $5010                                  ; $5a40: $11 $10 $50
    rlca                                          ; $5a43: $07
    ld l, e                                       ; $5a44: $6b
    db $10                                        ; $5a45: $10
    pop hl                                        ; $5a46: $e1
    rlca                                          ; $5a47: $07
    ld l, e                                       ; $5a48: $6b
    ld d, b                                       ; $5a49: $50
    nop                                           ; $5a4a: $00
    ld h, b                                       ; $5a4b: $60
    ld [bc], a                                    ; $5a4c: $02
    db $f0                                        ; $5a4d: $f0

    db $80, $11, $10, $e0, $00, $0e, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $e0
    db $00, $2c, $00, $05, $f0, $20, $80, $11, $10, $89, $06, $e7, $50, $10, $60, $02
    db $10, $f0, $07, $14, $06, $d6, $f0

    jr z, jr_07f_59f7                             ; $5a75: $28 $80

    ld de, $e010                                  ; $5a77: $11 $10 $e0
    ld b, $5b                                     ; $5a7a: $06 $5b
    ld d, b                                       ; $5a7c: $50
    rlca                                          ; $5a7d: $07
    ld h, b                                       ; $5a7e: $60
    jr z, @-$0e                                   ; $5a7f: $28 $f0

    db $28, $80, $11, $10, $30, $07, $14, $10, $60, $07, $21, $10, $90, $07, $2d, $10
    db $e0, $07, $2d, $50, $fb, $60, $1c, $10, $d3, $06, $9e, $50, $fa, $60, $0c, $f0
    db $24, $80, $11, $10, $d0, $07, $5a, $10, $f0, $07, $9d, $f0

    add b                                         ; $5aad: $80
    ld de, $f010                                  ; $5aae: $11 $10 $f0
    nop                                           ; $5ab1: $00
    ld c, h                                       ; $5ab2: $4c
    stop                                          ; $5ab3: $10 $00
    ld d, b                                       ; $5ab5: $50
    nop                                           ; $5ab6: $00
    ld h, b                                       ; $5ab7: $60
    ld bc, $ff50                                  ; $5ab8: $01 $50 $ff
    db $10                                        ; $5abb: $10
    ldh a, [rP1]                                  ; $5abc: $f0 $00
    ld c, h                                       ; $5abe: $4c
    stop                                          ; $5abf: $10 $00
    ld d, b                                       ; $5ac1: $50
    nop                                           ; $5ac2: $00
    ld h, b                                       ; $5ac3: $60
    ld bc, $ff50                                  ; $5ac4: $01 $50 $ff
    db $10                                        ; $5ac7: $10
    ldh a, [rP1]                                  ; $5ac8: $f0 $00
    ld c, h                                       ; $5aca: $4c
    stop                                          ; $5acb: $10 $00
    ld d, b                                       ; $5acd: $50
    nop                                           ; $5ace: $00
    ld h, b                                       ; $5acf: $60
    ld bc, $ff50                                  ; $5ad0: $01 $50 $ff
    db $10                                        ; $5ad3: $10
    ldh a, [rP1]                                  ; $5ad4: $f0 $00
    ccf                                           ; $5ad6: $3f
    stop                                          ; $5ad7: $10 $00
    ld d, b                                       ; $5ad9: $50
    nop                                           ; $5ada: $00
    ld h, b                                       ; $5adb: $60
    ld bc, $ff50                                  ; $5adc: $01 $50 $ff
    db $10                                        ; $5adf: $10
    ldh a, [rP1]                                  ; $5ae0: $f0 $00
    ccf                                           ; $5ae2: $3f
    stop                                          ; $5ae3: $10 $00
    ld d, b                                       ; $5ae5: $50
    nop                                           ; $5ae6: $00
    ld h, b                                       ; $5ae7: $60
    ld bc, $ff50                                  ; $5ae8: $01 $50 $ff
    db $10                                        ; $5aeb: $10
    ldh a, [rP1]                                  ; $5aec: $f0 $00
    ccf                                           ; $5aee: $3f

jr_07f_5aef:
    stop                                          ; $5aef: $10 $00
    ld d, b                                       ; $5af1: $50
    nop                                           ; $5af2: $00
    ld h, b                                       ; $5af3: $60
    ld bc, $ff50                                  ; $5af4: $01 $50 $ff
    db $10                                        ; $5af7: $10
    ldh a, [rP1]                                  ; $5af8: $f0 $00
    ccf                                           ; $5afa: $3f
    stop                                          ; $5afb: $10 $00
    ld d, b                                       ; $5afd: $50
    nop                                           ; $5afe: $00
    ld h, b                                       ; $5aff: $60
    inc bc                                        ; $5b00: $03
    ld d, b                                       ; $5b01: $50
    rst $38                                       ; $5b02: $ff
    db $10                                        ; $5b03: $10
    ldh a, [rP1]                                  ; $5b04: $f0 $00
    ccf                                           ; $5b06: $3f
    stop                                          ; $5b07: $10 $00
    ld d, b                                       ; $5b09: $50
    nop                                           ; $5b0a: $00
    ld h, b                                       ; $5b0b: $60
    dec b                                         ; $5b0c: $05
    ld d, b                                       ; $5b0d: $50
    rst $38                                       ; $5b0e: $ff
    db $10                                        ; $5b0f: $10
    ldh a, [rP1]                                  ; $5b10: $f0 $00
    ccf                                           ; $5b12: $3f
    stop                                          ; $5b13: $10 $00
    ld d, b                                       ; $5b15: $50
    nop                                           ; $5b16: $00
    ld h, b                                       ; $5b17: $60
    rlca                                          ; $5b18: $07
    ld d, b                                       ; $5b19: $50
    rst $38                                       ; $5b1a: $ff
    db $10                                        ; $5b1b: $10
    ldh a, [rP1]                                  ; $5b1c: $f0 $00
    ld a, $f0                                     ; $5b1e: $3e $f0

    db $80, $11, $10, $c1, $00, $3e, $30, $02, $00, $3d, $00, $2f, $40, $10, $00, $50
    db $00, $60, $06, $50, $ff, $10, $c1, $10, $c1, $00, $3c, $30, $02, $00, $2f, $00
    db $2d, $40, $10, $00, $50, $00, $60, $06, $50, $ff, $10, $c1, $10, $91, $00, $3e
    db $30, $02, $00, $3d, $00, $2f, $40, $10, $00, $50, $00, $60, $06, $50, $ff, $10
    db $91, $10, $91, $00, $3c, $30, $02, $00, $2f, $00, $2d, $40, $f0

    jr z, jr_07f_5aef                             ; $5b6d: $28 $80

    ld de, $8910                                  ; $5b6f: $11 $10 $89
    rlca                                          ; $5b72: $07
    pop bc                                        ; $5b73: $c1
    ld d, b                                       ; $5b74: $50
    inc b                                         ; $5b75: $04
    ld h, b                                       ; $5b76: $60
    inc bc                                        ; $5b77: $03
    db $10                                        ; $5b78: $10
    ld [c], a                                     ; $5b79: $e2
    jr nc, @+$0b                                  ; $5b7a: $30 $09

    rlca                                          ; $5b7c: $07
    adc $50                                       ; $5b7d: $ce $50
    ld bc, $0160                                  ; $5b7f: $01 $60 $01
    ld b, b                                       ; $5b82: $40
    rlca                                          ; $5b83: $07
    adc $50                                       ; $5b84: $ce $50
    db $fc                                        ; $5b86: $fc
    ld h, b                                       ; $5b87: $60
    rlca                                          ; $5b88: $07
    stop                                          ; $5b89: $10 $00
    ld d, b                                       ; $5b8b: $50
    nop                                           ; $5b8c: $00
    ld h, b                                       ; $5b8d: $60
    rrca                                          ; $5b8e: $0f
    ld d, b                                       ; $5b8f: $50
    db $fc                                        ; $5b90: $fc
    db $10                                        ; $5b91: $10
    ld [c], a                                     ; $5b92: $e2
    db $10                                        ; $5b93: $10
    xor c                                         ; $5b94: $a9
    rlca                                          ; $5b95: $07
    pop bc                                        ; $5b96: $c1
    ld d, b                                       ; $5b97: $50
    inc b                                         ; $5b98: $04
    ld h, b                                       ; $5b99: $60
    inc bc                                        ; $5b9a: $03
    db $10                                        ; $5b9b: $10
    ldh [$30], a                                  ; $5b9c: $e0 $30
    inc b                                         ; $5b9e: $04
    rlca                                          ; $5b9f: $07
    adc $50                                       ; $5ba0: $ce $50
    ld bc, $0160                                  ; $5ba2: $01 $60 $01
    ld b, b                                       ; $5ba5: $40
    rlca                                          ; $5ba6: $07
    adc $50                                       ; $5ba7: $ce $50
    db $fc                                        ; $5ba9: $fc
    ld h, b                                       ; $5baa: $60
    inc bc                                        ; $5bab: $03
    db $10                                        ; $5bac: $10
    ldh [rTAC], a                                 ; $5bad: $e0 $07
    pop bc                                        ; $5baf: $c1
    ld d, b                                       ; $5bb0: $50
    inc b                                         ; $5bb1: $04
    ld h, b                                       ; $5bb2: $60
    rlca                                          ; $5bb3: $07
    stop                                          ; $5bb4: $10 $00
    ld d, b                                       ; $5bb6: $50
    nop                                           ; $5bb7: $00
    ld h, b                                       ; $5bb8: $60
    db $10                                        ; $5bb9: $10
    ld d, b                                       ; $5bba: $50
    inc b                                         ; $5bbb: $04
    db $10                                        ; $5bbc: $10
    ldh [rNR10], a                                ; $5bbd: $e0 $10
    nop                                           ; $5bbf: $00
    ld d, b                                       ; $5bc0: $50
    nop                                           ; $5bc1: $00
    ld h, b                                       ; $5bc2: $60
    db $10                                        ; $5bc3: $10
    ld d, b                                       ; $5bc4: $50
    inc b                                         ; $5bc5: $04
    db $10                                        ; $5bc6: $10
    ldh [rNR10], a                                ; $5bc7: $e0 $10
    nop                                           ; $5bc9: $00
    ld d, b                                       ; $5bca: $50
    nop                                           ; $5bcb: $00
    ld h, b                                       ; $5bcc: $60
    db $10                                        ; $5bcd: $10
    ld d, b                                       ; $5bce: $50
    inc b                                         ; $5bcf: $04
    db $10                                        ; $5bd0: $10
    ldh [rNR10], a                                ; $5bd1: $e0 $10
    adc c                                         ; $5bd3: $89
    rlca                                          ; $5bd4: $07
    bit 2, b                                      ; $5bd5: $cb $50
    ld [bc], a                                    ; $5bd7: $02
    ld h, b                                       ; $5bd8: $60
    inc bc                                        ; $5bd9: $03
    db $10                                        ; $5bda: $10
    ldh [$30], a                                  ; $5bdb: $e0 $30
    db $10                                        ; $5bdd: $10
    rlca                                          ; $5bde: $07
    pop de                                        ; $5bdf: $d1
    ld d, b                                       ; $5be0: $50
    ld bc, $0160                                  ; $5be1: $01 $60 $01
    ld b, b                                       ; $5be4: $40
    db $10                                        ; $5be5: $10
    pop hl                                        ; $5be6: $e1
    rlca                                          ; $5be7: $07
    pop de                                        ; $5be8: $d1
    ld d, b                                       ; $5be9: $50
    db $fc                                        ; $5bea: $fc
    ld h, b                                       ; $5beb: $60
    rlca                                          ; $5bec: $07
    stop                                          ; $5bed: $10 $00
    ld d, b                                       ; $5bef: $50
    nop                                           ; $5bf0: $00
    ld h, b                                       ; $5bf1: $60
    db $10                                        ; $5bf2: $10
    ld d, b                                       ; $5bf3: $50
    db $fc                                        ; $5bf4: $fc
    db $10                                        ; $5bf5: $10
    pop hl                                        ; $5bf6: $e1
    stop                                          ; $5bf7: $10 $00
    ld d, b                                       ; $5bf9: $50
    nop                                           ; $5bfa: $00
    ld h, b                                       ; $5bfb: $60
    inc b                                         ; $5bfc: $04
    ld d, b                                       ; $5bfd: $50
    db $fc                                        ; $5bfe: $fc
    db $10                                        ; $5bff: $10
    pop hl                                        ; $5c00: $e1
    db $10                                        ; $5c01: $10
    xor c                                         ; $5c02: $a9
    rlca                                          ; $5c03: $07
    pop bc                                        ; $5c04: $c1
    ld d, b                                       ; $5c05: $50
    inc b                                         ; $5c06: $04
    ld h, b                                       ; $5c07: $60
    inc bc                                        ; $5c08: $03
    db $10                                        ; $5c09: $10
    ldh [$30], a                                  ; $5c0a: $e0 $30
    ld [bc], a                                    ; $5c0c: $02
    rlca                                          ; $5c0d: $07
    adc $50                                       ; $5c0e: $ce $50
    ld bc, $0160                                  ; $5c10: $01 $60 $01
    ld b, b                                       ; $5c13: $40
    rlca                                          ; $5c14: $07
    adc $50                                       ; $5c15: $ce $50
    db $fc                                        ; $5c17: $fc
    ld h, b                                       ; $5c18: $60
    inc bc                                        ; $5c19: $03
    db $10                                        ; $5c1a: $10
    xor c                                         ; $5c1b: $a9
    rlca                                          ; $5c1c: $07
    pop bc                                        ; $5c1d: $c1
    ld d, b                                       ; $5c1e: $50
    inc b                                         ; $5c1f: $04
    ld h, b                                       ; $5c20: $60
    inc bc                                        ; $5c21: $03
    db $10                                        ; $5c22: $10
    ldh [$30], a                                  ; $5c23: $e0 $30
    ld [$ce07], sp                                ; $5c25: $08 $07 $ce
    ld d, b                                       ; $5c28: $50
    ld bc, $0160                                  ; $5c29: $01 $60 $01
    ld b, b                                       ; $5c2c: $40
    rlca                                          ; $5c2d: $07
    adc $50                                       ; $5c2e: $ce $50
    db $fc                                        ; $5c30: $fc
    ld h, b                                       ; $5c31: $60
    inc bc                                        ; $5c32: $03
    ldh a, [$80]                                  ; $5c33: $f0 $80
    ld de, $3a10                                  ; $5c35: $11 $10 $3a
    jr nc, jr_07f_5c44                            ; $5c38: $30 $0a

    nop                                           ; $5c3a: $00
    inc d                                         ; $5c3b: $14
    nop                                           ; $5c3c: $00
    dec d                                         ; $5c3d: $15
    ld b, b                                       ; $5c3e: $40
    db $10                                        ; $5c3f: $10
    ldh [$30], a                                  ; $5c40: $e0 $30
    jr z, jr_07f_5c44                             ; $5c42: $28 $00

jr_07f_5c44:
    inc d                                         ; $5c44: $14
    nop                                           ; $5c45: $00
    dec d                                         ; $5c46: $15
    ld b, b                                       ; $5c47: $40
    db $10                                        ; $5c48: $10
    call nc, Call_000_0d30                        ; $5c49: $d4 $30 $0d
    nop                                           ; $5c4c: $00
    inc d                                         ; $5c4d: $14
    nop                                           ; $5c4e: $00
    dec d                                         ; $5c4f: $15
    ld b, b                                       ; $5c50: $40
    db $10                                        ; $5c51: $10
    adc d                                         ; $5c52: $8a
    jr nc, jr_07f_5c5f                            ; $5c53: $30 $0a

    nop                                           ; $5c55: $00
    inc d                                         ; $5c56: $14
    nop                                           ; $5c57: $00
    dec d                                         ; $5c58: $15
    ld b, b                                       ; $5c59: $40
    db $10                                        ; $5c5a: $10
    ldh [$30], a                                  ; $5c5b: $e0 $30
    ld [hl-], a                                   ; $5c5d: $32
    nop                                           ; $5c5e: $00

jr_07f_5c5f:
    inc d                                         ; $5c5f: $14
    nop                                           ; $5c60: $00
    dec d                                         ; $5c61: $15
    ld b, b                                       ; $5c62: $40
    db $10                                        ; $5c63: $10
    db $e3                                        ; $5c64: $e3
    jr nc, jr_07f_5c74                            ; $5c65: $30 $0d

    nop                                           ; $5c67: $00
    inc d                                         ; $5c68: $14
    nop                                           ; $5c69: $00
    dec d                                         ; $5c6a: $15
    ld b, b                                       ; $5c6b: $40
    ldh a, [$28]                                  ; $5c6c: $f0 $28
    add b                                         ; $5c6e: $80
    ld de, $d010                                  ; $5c6f: $11 $10 $d0
    rlca                                          ; $5c72: $07
    add e                                         ; $5c73: $83

jr_07f_5c74:
    ld d, b                                       ; $5c74: $50
    nop                                           ; $5c75: $00
    ld h, b                                       ; $5c76: $60
    ld bc, $9d07                                  ; $5c77: $01 $07 $9d
    ld h, b                                       ; $5c7a: $60
    ld bc, $ac07                                  ; $5c7b: $01 $07 $ac
    ld h, b                                       ; $5c7e: $60
    ld bc, $9d07                                  ; $5c7f: $01 $07 $9d
    ld h, b                                       ; $5c82: $60
    ld bc, $ac07                                  ; $5c83: $01 $07 $ac
    ld h, b                                       ; $5c86: $60
    ld bc, $be07                                  ; $5c87: $01 $07 $be
    ld h, b                                       ; $5c8a: $60
    ld bc, $ac07                                  ; $5c8b: $01 $07 $ac
    ld h, b                                       ; $5c8e: $60
    ld bc, $be07                                  ; $5c8f: $01 $07 $be
    ld h, b                                       ; $5c92: $60
    ld bc, $f210                                  ; $5c93: $01 $10 $f2
    jr nc, jr_07f_5ca5                            ; $5c96: $30 $0d

    rlca                                          ; $5c98: $07
    pop bc                                        ; $5c99: $c1
    ld d, b                                       ; $5c9a: $50
    ld bc, $0160                                  ; $5c9b: $01 $60 $01
    ld b, b                                       ; $5c9e: $40
    ldh a, [rNR41]                                ; $5c9f: $f0 $20
    add b                                         ; $5ca1: $80
    ld de, $f010                                  ; $5ca2: $11 $10 $f0

jr_07f_5ca5:
    inc b                                         ; $5ca5: $04
    ld d, $50                                     ; $5ca6: $16 $50
    dec b                                         ; $5ca8: $05
    ld h, b                                       ; $5ca9: $60
    inc bc                                        ; $5caa: $03
    inc b                                         ; $5cab: $04
    add e                                         ; $5cac: $83
    ld d, b                                       ; $5cad: $50
    dec b                                         ; $5cae: $05
    ld h, b                                       ; $5caf: $60
    inc bc                                        ; $5cb0: $03
    inc b                                         ; $5cb1: $04
    push hl                                       ; $5cb2: $e5
    ld d, b                                       ; $5cb3: $50
    dec b                                         ; $5cb4: $05
    ld h, b                                       ; $5cb5: $60
    inc bc                                        ; $5cb6: $03
    dec b                                         ; $5cb7: $05
    inc a                                         ; $5cb8: $3c
    ld d, b                                       ; $5cb9: $50
    dec b                                         ; $5cba: $05
    ld h, b                                       ; $5cbb: $60
    inc bc                                        ; $5cbc: $03
    dec b                                         ; $5cbd: $05
    adc c                                         ; $5cbe: $89
    ld d, b                                       ; $5cbf: $50
    dec b                                         ; $5cc0: $05
    ld h, b                                       ; $5cc1: $60
    inc bc                                        ; $5cc2: $03
    dec b                                         ; $5cc3: $05
    call Call_000_0550                            ; $5cc4: $cd $50 $05
    ld h, b                                       ; $5cc7: $60
    inc bc                                        ; $5cc8: $03
    ld b, $0b                                     ; $5cc9: $06 $0b
    ld d, b                                       ; $5ccb: $50
    inc b                                         ; $5ccc: $04
    ld h, b                                       ; $5ccd: $60
    inc bc                                        ; $5cce: $03
    ld b, $42                                     ; $5ccf: $06 $42
    ld d, b                                       ; $5cd1: $50
    inc b                                         ; $5cd2: $04
    ld h, b                                       ; $5cd3: $60
    inc bc                                        ; $5cd4: $03
    ld b, $72                                     ; $5cd5: $06 $72
    ld d, b                                       ; $5cd7: $50
    inc b                                         ; $5cd8: $04
    ld h, b                                       ; $5cd9: $60
    inc bc                                        ; $5cda: $03
    ld b, $9e                                     ; $5cdb: $06 $9e
    ld d, b                                       ; $5cdd: $50
    inc b                                         ; $5cde: $04
    ld h, b                                       ; $5cdf: $60
    inc bc                                        ; $5ce0: $03
    ld b, $c4                                     ; $5ce1: $06 $c4
    ld d, b                                       ; $5ce3: $50
    inc bc                                        ; $5ce4: $03
    ld h, b                                       ; $5ce5: $60
    inc bc                                        ; $5ce6: $03
    ld b, $e7                                     ; $5ce7: $06 $e7
    ld d, b                                       ; $5ce9: $50
    inc bc                                        ; $5cea: $03
    ld h, b                                       ; $5ceb: $60
    inc bc                                        ; $5cec: $03
    rlca                                          ; $5ced: $07
    dec b                                         ; $5cee: $05
    ld d, b                                       ; $5cef: $50
    inc bc                                        ; $5cf0: $03
    ld h, b                                       ; $5cf1: $60
    inc bc                                        ; $5cf2: $03
    rlca                                          ; $5cf3: $07
    ld hl, $0350                                  ; $5cf4: $21 $50 $03
    ld h, b                                       ; $5cf7: $60
    inc bc                                        ; $5cf8: $03
    rlca                                          ; $5cf9: $07
    add hl, sp                                    ; $5cfa: $39
    ld d, b                                       ; $5cfb: $50
    inc bc                                        ; $5cfc: $03
    ld h, b                                       ; $5cfd: $60
    inc bc                                        ; $5cfe: $03
    rlca                                          ; $5cff: $07
    ld c, a                                       ; $5d00: $4f
    ld d, b                                       ; $5d01: $50
    ld [bc], a                                    ; $5d02: $02
    ld h, b                                       ; $5d03: $60
    inc bc                                        ; $5d04: $03
    rlca                                          ; $5d05: $07
    ld h, d                                       ; $5d06: $62
    ld d, b                                       ; $5d07: $50
    ld [bc], a                                    ; $5d08: $02
    ld h, b                                       ; $5d09: $60
    inc bc                                        ; $5d0a: $03
    rlca                                          ; $5d0b: $07
    ld [hl], e                                    ; $5d0c: $73
    ld d, b                                       ; $5d0d: $50
    ld [bc], a                                    ; $5d0e: $02
    ld h, b                                       ; $5d0f: $60
    inc bc                                        ; $5d10: $03
    ldh a, [$28]                                  ; $5d11: $f0 $28
    add b                                         ; $5d13: $80
    ld de, $e410                                  ; $5d14: $11 $10 $e4
    rlca                                          ; $5d17: $07
    rst $18                                       ; $5d18: $df
    ld d, b                                       ; $5d19: $50
    ld a, [bc]                                    ; $5d1a: $0a
    ld h, b                                       ; $5d1b: $60
    inc bc                                        ; $5d1c: $03
    rlca                                          ; $5d1d: $07
    db $dd                                        ; $5d1e: $dd
    ld d, b                                       ; $5d1f: $50
    ld a, [bc]                                    ; $5d20: $0a
    ld h, b                                       ; $5d21: $60
    inc bc                                        ; $5d22: $03
    rlca                                          ; $5d23: $07
    db $db                                        ; $5d24: $db
    ld d, b                                       ; $5d25: $50
    ld a, [bc]                                    ; $5d26: $0a
    ld h, b                                       ; $5d27: $60
    inc bc                                        ; $5d28: $03
    rlca                                          ; $5d29: $07
    reti                                          ; $5d2a: $d9


    ld d, b                                       ; $5d2b: $50
    ld a, [bc]                                    ; $5d2c: $0a
    ld h, b                                       ; $5d2d: $60
    inc bc                                        ; $5d2e: $03
    rlca                                          ; $5d2f: $07
    sub $50                                       ; $5d30: $d6 $50
    ld a, [bc]                                    ; $5d32: $0a
    ld h, b                                       ; $5d33: $60
    inc bc                                        ; $5d34: $03
    rlca                                          ; $5d35: $07
    call nc, Call_000_0a50                        ; $5d36: $d4 $50 $0a
    ld h, b                                       ; $5d39: $60
    inc bc                                        ; $5d3a: $03
    rlca                                          ; $5d3b: $07
    pop de                                        ; $5d3c: $d1
    ld d, b                                       ; $5d3d: $50
    ld a, [bc]                                    ; $5d3e: $0a
    ld h, b                                       ; $5d3f: $60
    inc bc                                        ; $5d40: $03
    rlca                                          ; $5d41: $07
    adc $50                                       ; $5d42: $ce $50
    ld a, [bc]                                    ; $5d44: $0a
    ld h, b                                       ; $5d45: $60
    inc bc                                        ; $5d46: $03
    rlca                                          ; $5d47: $07
    bit 2, b                                      ; $5d48: $cb $50
    ld a, [bc]                                    ; $5d4a: $0a
    ld h, b                                       ; $5d4b: $60
    inc bc                                        ; $5d4c: $03
    rlca                                          ; $5d4d: $07
    ret z                                         ; $5d4e: $c8

    ld d, b                                       ; $5d4f: $50
    ld a, [bc]                                    ; $5d50: $0a
    ld h, b                                       ; $5d51: $60
    inc bc                                        ; $5d52: $03
    rlca                                          ; $5d53: $07
    push bc                                       ; $5d54: $c5
    ld d, b                                       ; $5d55: $50
    ld a, [bc]                                    ; $5d56: $0a
    ld h, b                                       ; $5d57: $60
    inc bc                                        ; $5d58: $03
    rlca                                          ; $5d59: $07
    pop bc                                        ; $5d5a: $c1
    ld d, b                                       ; $5d5b: $50
    ld a, [bc]                                    ; $5d5c: $0a
    ld h, b                                       ; $5d5d: $60
    inc bc                                        ; $5d5e: $03
    rlca                                          ; $5d5f: $07
    cp [hl]                                       ; $5d60: $be
    ld d, b                                       ; $5d61: $50
    ld a, [bc]                                    ; $5d62: $0a
    ld h, b                                       ; $5d63: $60
    inc bc                                        ; $5d64: $03
    rlca                                          ; $5d65: $07
    cp d                                          ; $5d66: $ba
    ld d, b                                       ; $5d67: $50
    ld a, [bc]                                    ; $5d68: $0a
    ld h, b                                       ; $5d69: $60
    inc bc                                        ; $5d6a: $03
    rlca                                          ; $5d6b: $07
    or [hl]                                       ; $5d6c: $b6
    ld d, b                                       ; $5d6d: $50
    ld a, [bc]                                    ; $5d6e: $0a
    ld h, b                                       ; $5d6f: $60
    inc bc                                        ; $5d70: $03
    ldh a, [$80]                                  ; $5d71: $f0 $80
    ld de, $f110                                  ; $5d73: $11 $10 $f1
    jr nc, jr_07f_5d7a                            ; $5d76: $30 $02

    nop                                           ; $5d78: $00
    ld d, l                                       ; $5d79: $55

jr_07f_5d7a:
    nop                                           ; $5d7a: $00
    ld c, h                                       ; $5d7b: $4c
    ld b, b                                       ; $5d7c: $40
    stop                                          ; $5d7d: $10 $00
    ld d, b                                       ; $5d7f: $50
    nop                                           ; $5d80: $00
    ld h, b                                       ; $5d81: $60
    ld [bc], a                                    ; $5d82: $02
    ld d, b                                       ; $5d83: $50
    rst $38                                       ; $5d84: $ff
    db $10                                        ; $5d85: $10
    pop af                                        ; $5d86: $f1
    db $10                                        ; $5d87: $10
    xor c                                         ; $5d88: $a9
    jr nc, jr_07f_5d8d                            ; $5d89: $30 $02

    nop                                           ; $5d8b: $00
    ld b, a                                       ; $5d8c: $47

jr_07f_5d8d:
    nop                                           ; $5d8d: $00
    ld d, h                                       ; $5d8e: $54
    ld b, b                                       ; $5d8f: $40
    db $10                                        ; $5d90: $10
    ldh a, [$30]                                  ; $5d91: $f0 $30
    ld b, $00                                     ; $5d93: $06 $00
    ld b, a                                       ; $5d95: $47
    nop                                           ; $5d96: $00
    ld d, h                                       ; $5d97: $54
    ld b, b                                       ; $5d98: $40
    db $10                                        ; $5d99: $10
    pop af                                        ; $5d9a: $f1
    jr nc, jr_07f_5da4                            ; $5d9b: $30 $07

    nop                                           ; $5d9d: $00
    ld b, a                                       ; $5d9e: $47
    nop                                           ; $5d9f: $00
    ld d, h                                       ; $5da0: $54
    ld b, b                                       ; $5da1: $40
    ldh a, [$28]                                  ; $5da2: $f0 $28

jr_07f_5da4:
    add b                                         ; $5da4: $80
    ld de, $e210                                  ; $5da5: $11 $10 $e2
    rlca                                          ; $5da8: $07
    cp [hl]                                       ; $5da9: $be
    ld d, b                                       ; $5daa: $50
    nop                                           ; $5dab: $00
    ld h, b                                       ; $5dac: $60
    ld bc, $d407                                  ; $5dad: $01 $07 $d4
    ld h, b                                       ; $5db0: $60
    ld bc, $c807                                  ; $5db1: $01 $07 $c8
    rlca                                          ; $5db4: $07
    reti                                          ; $5db5: $d9


    ld h, b                                       ; $5db6: $60
    ld bc, $df07                                  ; $5db7: $01 $07 $df
    ld h, b                                       ; $5dba: $60
    ld bc, $c507                                  ; $5dbb: $01 $07 $c5
    ld h, b                                       ; $5dbe: $60
    ld bc, $db07                                  ; $5dbf: $01 $07 $db
    ld h, b                                       ; $5dc2: $60
    ld bc, $8210                                  ; $5dc3: $01 $10 $82
    rlca                                          ; $5dc6: $07
    cp [hl]                                       ; $5dc7: $be
    ld h, b                                       ; $5dc8: $60
    ld bc, $d407                                  ; $5dc9: $01 $07 $d4
    ld h, b                                       ; $5dcc: $60
    ld bc, $c807                                  ; $5dcd: $01 $07 $c8
    rlca                                          ; $5dd0: $07
    reti                                          ; $5dd1: $d9


    ld h, b                                       ; $5dd2: $60
    ld bc, $df07                                  ; $5dd3: $01 $07 $df
    ld h, b                                       ; $5dd6: $60
    ld bc, $c507                                  ; $5dd7: $01 $07 $c5
    ld h, b                                       ; $5dda: $60
    ld bc, $db07                                  ; $5ddb: $01 $07 $db
    ld h, b                                       ; $5dde: $60
    ld bc, $5310                                  ; $5ddf: $01 $10 $53
    rlca                                          ; $5de2: $07
    cp [hl]                                       ; $5de3: $be
    ld h, b                                       ; $5de4: $60
    ld bc, $d407                                  ; $5de5: $01 $07 $d4
    ld h, b                                       ; $5de8: $60
    ld bc, $c807                                  ; $5de9: $01 $07 $c8
    rlca                                          ; $5dec: $07
    reti                                          ; $5ded: $d9


    ld h, b                                       ; $5dee: $60
    ld bc, $df07                                  ; $5def: $01 $07 $df
    ld h, b                                       ; $5df2: $60
    ld bc, $c507                                  ; $5df3: $01 $07 $c5
    ld h, b                                       ; $5df6: $60
    ld bc, $db07                                  ; $5df7: $01 $07 $db
    ld h, b                                       ; $5dfa: $60
    ld bc, $3510                                  ; $5dfb: $01 $10 $35
    rlca                                          ; $5dfe: $07
    cp [hl]                                       ; $5dff: $be
    ld h, b                                       ; $5e00: $60
    ld bc, $d407                                  ; $5e01: $01 $07 $d4
    ld h, b                                       ; $5e04: $60
    ld bc, $c807                                  ; $5e05: $01 $07 $c8
    rlca                                          ; $5e08: $07
    reti                                          ; $5e09: $d9


    ld h, b                                       ; $5e0a: $60
    ld bc, $df07                                  ; $5e0b: $01 $07 $df
    ld h, b                                       ; $5e0e: $60
    ld bc, $c507                                  ; $5e0f: $01 $07 $c5
    ld h, b                                       ; $5e12: $60
    ld bc, $db07                                  ; $5e13: $01 $07 $db
    ld h, b                                       ; $5e16: $60
    ld bc, $20f0                                  ; $5e17: $01 $f0 $20
    add b                                         ; $5e1a: $80
    ld de, $5910                                  ; $5e1b: $11 $10 $59
    inc b                                         ; $5e1e: $04
    ld d, $50                                     ; $5e1f: $16 $50
    inc a                                         ; $5e21: $3c
    ld h, b                                       ; $5e22: $60
    dec b                                         ; $5e23: $05
    inc b                                         ; $5e24: $04
    or l                                          ; $5e25: $b5
    ld d, b                                       ; $5e26: $50
    scf                                           ; $5e27: $37
    ld h, b                                       ; $5e28: $60
    dec b                                         ; $5e29: $05
    dec b                                         ; $5e2a: $05
    inc a                                         ; $5e2b: $3c
    ld d, b                                       ; $5e2c: $50
    ld [hl-], a                                   ; $5e2d: $32
    ld h, b                                       ; $5e2e: $60
    dec b                                         ; $5e2f: $05
    dec b                                         ; $5e30: $05
    xor h                                         ; $5e31: $ac
    ld d, b                                       ; $5e32: $50
    dec l                                         ; $5e33: $2d
    ld h, b                                       ; $5e34: $60
    dec b                                         ; $5e35: $05
    db $10                                        ; $5e36: $10
    ldh [rTMA], a                                 ; $5e37: $e0 $06
    dec bc                                        ; $5e39: $0b
    ld d, b                                       ; $5e3a: $50
    jr z, jr_07f_5e9d                             ; $5e3b: $28 $60

    dec b                                         ; $5e3d: $05
    ld b, $5b                                     ; $5e3e: $06 $5b
    ld d, b                                       ; $5e40: $50
    inc hl                                        ; $5e41: $23
    ld h, b                                       ; $5e42: $60
    dec b                                         ; $5e43: $05
    ld b, $9e                                     ; $5e44: $06 $9e
    ld d, b                                       ; $5e46: $50
    ld e, $60                                     ; $5e47: $1e $60
    dec b                                         ; $5e49: $05
    ld b, $d6                                     ; $5e4a: $06 $d6
    ld d, b                                       ; $5e4c: $50
    add hl, de                                    ; $5e4d: $19
    ld h, b                                       ; $5e4e: $60
    dec b                                         ; $5e4f: $05
    rlca                                          ; $5e50: $07
    dec b                                         ; $5e51: $05
    ld d, b                                       ; $5e52: $50
    inc d                                         ; $5e53: $14
    ld h, b                                       ; $5e54: $60
    dec b                                         ; $5e55: $05
    rlca                                          ; $5e56: $07
    dec l                                         ; $5e57: $2d
    ld d, b                                       ; $5e58: $50
    ld de, $0560                                  ; $5e59: $11 $60 $05
    rlca                                          ; $5e5c: $07
    ld c, a                                       ; $5e5d: $4f
    ld d, b                                       ; $5e5e: $50
    ld c, $60                                     ; $5e5f: $0e $60
    dec b                                         ; $5e61: $05
    rlca                                          ; $5e62: $07
    ld l, e                                       ; $5e63: $6b
    ld d, b                                       ; $5e64: $50
    inc c                                         ; $5e65: $0c
    ld h, b                                       ; $5e66: $60
    dec b                                         ; $5e67: $05
    db $10                                        ; $5e68: $10
    ld [c], a                                     ; $5e69: $e2
    rlca                                          ; $5e6a: $07
    add e                                         ; $5e6b: $83
    ld d, b                                       ; $5e6c: $50
    ld a, [bc]                                    ; $5e6d: $0a
    ld h, b                                       ; $5e6e: $60
    dec b                                         ; $5e6f: $05
    rlca                                          ; $5e70: $07
    sub a                                         ; $5e71: $97
    ld d, b                                       ; $5e72: $50
    ld [$0560], sp                                ; $5e73: $08 $60 $05
    rlca                                          ; $5e76: $07
    and a                                         ; $5e77: $a7
    ld d, b                                       ; $5e78: $50
    ld b, $60                                     ; $5e79: $06 $60
    dec b                                         ; $5e7b: $05
    rlca                                          ; $5e7c: $07
    or [hl]                                       ; $5e7d: $b6
    ld d, b                                       ; $5e7e: $50
    inc b                                         ; $5e7f: $04
    ld h, b                                       ; $5e80: $60
    dec b                                         ; $5e81: $05
    ldh a, [$80]                                  ; $5e82: $f0 $80
    ld de, $f010                                  ; $5e84: $11 $10 $f0
    nop                                           ; $5e87: $00
    dec e                                         ; $5e88: $1d
    nop                                           ; $5e89: $00
    ld c, $10                                     ; $5e8a: $0e $10
    nop                                           ; $5e8c: $00
    ld d, b                                       ; $5e8d: $50
    nop                                           ; $5e8e: $00
    ld h, b                                       ; $5e8f: $60
    ld bc, $ff50                                  ; $5e90: $01 $50 $ff
    db $10                                        ; $5e93: $10
    ldh a, [rNR10]                                ; $5e94: $f0 $10
    add b                                         ; $5e96: $80
    nop                                           ; $5e97: $00
    rra                                           ; $5e98: $1f
    nop                                           ; $5e99: $00
    dec l                                         ; $5e9a: $2d
    ldh a, [$80]                                  ; $5e9b: $f0 $80

jr_07f_5e9d:
    ld de, $f210                                  ; $5e9d: $11 $10 $f2
    nop                                           ; $5ea0: $00
    inc a                                         ; $5ea1: $3c
    stop                                          ; $5ea2: $10 $00
    ld d, b                                       ; $5ea4: $50
    nop                                           ; $5ea5: $00
    ld h, b                                       ; $5ea6: $60
    ld bc, $ff50                                  ; $5ea7: $01 $50 $ff
    db $10                                        ; $5eaa: $10
    ld a, [c]                                     ; $5eab: $f2
    jr nc, @+$1c                                  ; $5eac: $30 $1a

    nop                                           ; $5eae: $00
    ld d, h                                       ; $5eaf: $54
    ld b, b                                       ; $5eb0: $40
    db $f0                                        ; $5eb1: $f0

    db $28, $80, $11, $10, $3a, $07, $b5, $50, $01, $60, $14, $10, $f5, $07, $ca, $50
    db $ff, $60, $4b

    ldh a, [$80]                                  ; $5ec5: $f0 $80
    ld de, $e010                                  ; $5ec7: $11 $10 $e0
    inc h                                         ; $5eca: $24
    rlca                                          ; $5ecb: $07
    ld l, e                                       ; $5ecc: $6b
    ld d, b                                       ; $5ecd: $50
    ld de, $0860                                  ; $5ece: $11 $60 $08
    stop                                          ; $5ed1: $10 $00
    ld d, b                                       ; $5ed3: $50
    nop                                           ; $5ed4: $00
    ld h, b                                       ; $5ed5: $60
    ld b, $50                                     ; $5ed6: $06 $50
    ld de, $e010                                  ; $5ed8: $11 $10 $e0
    jr nz, @+$12                                  ; $5edb: $20 $10

    db $e3                                        ; $5edd: $e3
    rlca                                          ; $5ede: $07
    ld e, c                                       ; $5edf: $59
    ld d, b                                       ; $5ee0: $50
    cp $60                                        ; $5ee1: $fe $60
    add hl, de                                    ; $5ee3: $19
    ldh a, [$80]                                  ; $5ee4: $f0 $80
    ld de, $e010                                  ; $5ee6: $11 $10 $e0
    nop                                           ; $5ee9: $00
    scf                                           ; $5eea: $37
    nop                                           ; $5eeb: $00
    ld [hl], $00                                  ; $5eec: $36 $00
    dec [hl]                                      ; $5eee: $35

jr_07f_5eef:
    nop                                           ; $5eef: $00
    inc [hl]                                      ; $5ef0: $34
    nop                                           ; $5ef1: $00
    daa                                           ; $5ef2: $27
    nop                                           ; $5ef3: $00
    ld h, $00                                     ; $5ef4: $26 $00
    dec h                                         ; $5ef6: $25
    nop                                           ; $5ef7: $00
    inc h                                         ; $5ef8: $24
    nop                                           ; $5ef9: $00
    rla                                           ; $5efa: $17
    stop                                          ; $5efb: $10 $00
    ld d, b                                       ; $5efd: $50
    nop                                           ; $5efe: $00
    ld h, b                                       ; $5eff: $60
    ld b, $50                                     ; $5f00: $06 $50
    rst $38                                       ; $5f02: $ff
    db $10                                        ; $5f03: $10
    ldh [rNR10], a                                ; $5f04: $e0 $10
    db $e3                                        ; $5f06: $e3
    jr nc, jr_07f_5f22                            ; $5f07: $30 $19

    nop                                           ; $5f09: $00
    inc [hl]                                      ; $5f0a: $34
    ld b, b                                       ; $5f0b: $40
    ldh a, [$80]                                  ; $5f0c: $f0 $80
    ld de, $8010                                  ; $5f0e: $11 $10 $80
    nop                                           ; $5f11: $00
    cpl                                           ; $5f12: $2f
    ld d, b                                       ; $5f13: $50
    db $fd                                        ; $5f14: $fd
    ld h, b                                       ; $5f15: $60
    ld [bc], a                                    ; $5f16: $02
    stop                                          ; $5f17: $10 $00
    ld d, b                                       ; $5f19: $50
    nop                                           ; $5f1a: $00
    ld h, b                                       ; $5f1b: $60
    ld bc, $fd50                                  ; $5f1c: $01 $50 $fd
    db $10                                        ; $5f1f: $10
    add b                                         ; $5f20: $80
    db $10                                        ; $5f21: $10

jr_07f_5f22:
    pop hl                                        ; $5f22: $e1
    nop                                           ; $5f23: $00
    rra                                           ; $5f24: $1f
    ld d, b                                       ; $5f25: $50
    db $fd                                        ; $5f26: $fd
    ld h, b                                       ; $5f27: $60
    ld [bc], a                                    ; $5f28: $02
    stop                                          ; $5f29: $10 $00
    ld d, b                                       ; $5f2b: $50
    nop                                           ; $5f2c: $00
    ld h, b                                       ; $5f2d: $60
    ld [bc], a                                    ; $5f2e: $02
    ld d, b                                       ; $5f2f: $50
    db $fd                                        ; $5f30: $fd
    db $10                                        ; $5f31: $10
    pop hl                                        ; $5f32: $e1
    db $10                                        ; $5f33: $10
    add b                                         ; $5f34: $80
    nop                                           ; $5f35: $00
    cpl                                           ; $5f36: $2f
    ld d, b                                       ; $5f37: $50
    db $fd                                        ; $5f38: $fd
    ld h, b                                       ; $5f39: $60
    ld [bc], a                                    ; $5f3a: $02
    stop                                          ; $5f3b: $10 $00
    ld d, b                                       ; $5f3d: $50
    nop                                           ; $5f3e: $00
    ld h, b                                       ; $5f3f: $60
    ld bc, $fd50                                  ; $5f40: $01 $50 $fd
    db $10                                        ; $5f43: $10
    add b                                         ; $5f44: $80
    db $10                                        ; $5f45: $10
    pop hl                                        ; $5f46: $e1
    nop                                           ; $5f47: $00
    rra                                           ; $5f48: $1f
    ld d, b                                       ; $5f49: $50
    db $fd                                        ; $5f4a: $fd
    ld h, b                                       ; $5f4b: $60
    inc bc                                        ; $5f4c: $03
    ldh a, [$80]                                  ; $5f4d: $f0 $80
    ld de, $e110                                  ; $5f4f: $11 $10 $e1
    nop                                           ; $5f52: $00
    inc l                                         ; $5f53: $2c
    stop                                          ; $5f54: $10 $00
    ld d, b                                       ; $5f56: $50
    nop                                           ; $5f57: $00
    ld h, b                                       ; $5f58: $60
    rrca                                          ; $5f59: $0f
    ld d, b                                       ; $5f5a: $50
    rst $38                                       ; $5f5b: $ff
    db $10                                        ; $5f5c: $10
    pop hl                                        ; $5f5d: $e1
    stop                                          ; $5f5e: $10 $00
    ld d, b                                       ; $5f60: $50
    nop                                           ; $5f61: $00
    ld h, b                                       ; $5f62: $60
    ld c, $50                                     ; $5f63: $0e $50
    rst $38                                       ; $5f65: $ff
    db $10                                        ; $5f66: $10
    pop hl                                        ; $5f67: $e1
    db $10                                        ; $5f68: $10
    pop hl                                        ; $5f69: $e1
    nop                                           ; $5f6a: $00
    ld e, $f0                                     ; $5f6b: $1e $f0
    jr z, jr_07f_5eef                             ; $5f6d: $28 $80

    ld de, $e010                                  ; $5f6f: $11 $10 $e0
    jr nc, jr_07f_5f79                            ; $5f72: $30 $05

    rlca                                          ; $5f74: $07
    pop de                                        ; $5f75: $d1
    rlca                                          ; $5f76: $07
    sub $40                                       ; $5f77: $d6 $40

jr_07f_5f79:
    stop                                          ; $5f79: $10 $00
    ld d, b                                       ; $5f7b: $50
    nop                                           ; $5f7c: $00
    ld h, b                                       ; $5f7d: $60
    ld b, $50                                     ; $5f7e: $06 $50
    rst $38                                       ; $5f80: $ff
    db $10                                        ; $5f81: $10
    ldh [$30], a                                  ; $5f82: $e0 $30
    inc d                                         ; $5f84: $14
    rlca                                          ; $5f85: $07
    pop de                                        ; $5f86: $d1
    rlca                                          ; $5f87: $07
    sub $40                                       ; $5f88: $d6 $40
    ldh a, [rNR50]                                ; $5f8a: $f0 $24
    add b                                         ; $5f8c: $80
    ld de, $5910                                  ; $5f8d: $11 $10 $59
    ld b, $b2                                     ; $5f90: $06 $b2
    ld d, b                                       ; $5f92: $50
    db $10                                        ; $5f93: $10
    ld h, b                                       ; $5f94: $60
    dec b                                         ; $5f95: $05
    db $10                                        ; $5f96: $10
    ldh [$30], a                                  ; $5f97: $e0 $30
    inc b                                         ; $5f99: $04
    rlca                                          ; $5f9a: $07
    dec b                                         ; $5f9b: $05
    ld d, b                                       ; $5f9c: $50
    inc b                                         ; $5f9d: $04
    ld h, b                                       ; $5f9e: $60
    inc bc                                        ; $5f9f: $03
    ld b, b                                       ; $5fa0: $40
    db $10                                        ; $5fa1: $10
    pop hl                                        ; $5fa2: $e1
    rlca                                          ; $5fa3: $07
    dec b                                         ; $5fa4: $05
    ld d, b                                       ; $5fa5: $50
    ld sp, hl                                     ; $5fa6: $f9
    ld h, b                                       ; $5fa7: $60
    ld b, $f0                                     ; $5fa8: $06 $f0
    add b                                         ; $5faa: $80
    ld de, $3910                                  ; $5fab: $11 $10 $39
    nop                                           ; $5fae: $00
    daa                                           ; $5faf: $27
    nop                                           ; $5fb0: $00
    inc h                                         ; $5fb1: $24
    nop                                           ; $5fb2: $00
    dec b                                         ; $5fb3: $05
    stop                                          ; $5fb4: $10 $00
    ld d, b                                       ; $5fb6: $50
    nop                                           ; $5fb7: $00
    ld h, b                                       ; $5fb8: $60
    ld bc, $ff50                                  ; $5fb9: $01 $50 $ff
    db $10                                        ; $5fbc: $10
    add hl, sp                                    ; $5fbd: $39
    db $10                                        ; $5fbe: $10
    xor c                                         ; $5fbf: $a9
    nop                                           ; $5fc0: $00
    ld b, [hl]                                    ; $5fc1: $46
    nop                                           ; $5fc2: $00
    inc h                                         ; $5fc3: $24
    nop                                           ; $5fc4: $00
    ld d, $10                                     ; $5fc5: $16 $10
    pop hl                                        ; $5fc7: $e1
    nop                                           ; $5fc8: $00
    inc d                                         ; $5fc9: $14
    nop                                           ; $5fca: $00
    ld b, $00                                     ; $5fcb: $06 $00
    dec b                                         ; $5fcd: $05
    nop                                           ; $5fce: $00
    inc b                                         ; $5fcf: $04
    nop                                           ; $5fd0: $00
    inc bc                                        ; $5fd1: $03
    nop                                           ; $5fd2: $00
    ld [bc], a                                    ; $5fd3: $02
    nop                                           ; $5fd4: $00
    ld bc, $0000                                  ; $5fd5: $01 $00 $00
    db $10                                        ; $5fd8: $10
    add hl, sp                                    ; $5fd9: $39
    nop                                           ; $5fda: $00
    daa                                           ; $5fdb: $27
    nop                                           ; $5fdc: $00
    inc h                                         ; $5fdd: $24
    nop                                           ; $5fde: $00
    dec b                                         ; $5fdf: $05
    stop                                          ; $5fe0: $10 $00
    ld d, b                                       ; $5fe2: $50
    nop                                           ; $5fe3: $00
    ld h, b                                       ; $5fe4: $60
    ld bc, $ff50                                  ; $5fe5: $01 $50 $ff
    db $10                                        ; $5fe8: $10
    add hl, sp                                    ; $5fe9: $39
    db $10                                        ; $5fea: $10
    xor c                                         ; $5feb: $a9
    nop                                           ; $5fec: $00
    ld b, [hl]                                    ; $5fed: $46
    nop                                           ; $5fee: $00
    inc h                                         ; $5fef: $24
    nop                                           ; $5ff0: $00
    ld d, $10                                     ; $5ff1: $16 $10
    pop hl                                        ; $5ff3: $e1
    nop                                           ; $5ff4: $00
    rla                                           ; $5ff5: $17
    nop                                           ; $5ff6: $00
    ld d, $00                                     ; $5ff7: $16 $00
    dec d                                         ; $5ff9: $15
    nop                                           ; $5ffa: $00
    inc d                                         ; $5ffb: $14
    nop                                           ; $5ffc: $00
    rlca                                          ; $5ffd: $07
    nop                                           ; $5ffe: $00
    ld b, $00                                     ; $5fff: $06 $00
    dec b                                         ; $6001: $05
    nop                                           ; $6002: $00
    inc b                                         ; $6003: $04
    nop                                           ; $6004: $00
    inc bc                                        ; $6005: $03
    nop                                           ; $6006: $00
    ld [bc], a                                    ; $6007: $02
    nop                                           ; $6008: $00
    ld bc, $0000                                  ; $6009: $01 $00 $00
    ldh a, [rNR41]                                ; $600c: $f0 $20
    add b                                         ; $600e: $80
    ld de, $6a10                                  ; $600f: $11 $10 $6a
    rlca                                          ; $6012: $07
    ld a, e                                       ; $6013: $7b
    ld d, b                                       ; $6014: $50
    nop                                           ; $6015: $00
    ld h, b                                       ; $6016: $60
    ld [bc], a                                    ; $6017: $02
    rlca                                          ; $6018: $07
    ld l, e                                       ; $6019: $6b
    ld h, b                                       ; $601a: $60
    ld [bc], a                                    ; $601b: $02
    rlca                                          ; $601c: $07
    ld c, a                                       ; $601d: $4f
    ld h, b                                       ; $601e: $60
    ld [bc], a                                    ; $601f: $02
    rlca                                          ; $6020: $07
    dec l                                         ; $6021: $2d
    ld h, b                                       ; $6022: $60
    ld [bc], a                                    ; $6023: $02
    rlca                                          ; $6024: $07
    dec b                                         ; $6025: $05
    ld h, b                                       ; $6026: $60
    ld [bc], a                                    ; $6027: $02
    rlca                                          ; $6028: $07
    ld l, e                                       ; $6029: $6b
    ld h, b                                       ; $602a: $60
    ld [bc], a                                    ; $602b: $02
    rlca                                          ; $602c: $07
    ld c, a                                       ; $602d: $4f
    ld h, b                                       ; $602e: $60
    ld [bc], a                                    ; $602f: $02
    rlca                                          ; $6030: $07
    dec l                                         ; $6031: $2d
    ld h, b                                       ; $6032: $60
    ld [bc], a                                    ; $6033: $02
    rlca                                          ; $6034: $07
    dec b                                         ; $6035: $05
    ld h, b                                       ; $6036: $60
    ld bc, $f606                                  ; $6037: $01 $06 $f6
    ld h, b                                       ; $603a: $60
    ld bc, $4f07                                  ; $603b: $01 $07 $4f
    ld h, b                                       ; $603e: $60
    ld bc, $2d07                                  ; $603f: $01 $07 $2d
    ld h, b                                       ; $6042: $60
    ld bc, $0507                                  ; $6043: $01 $07 $05
    ld h, b                                       ; $6046: $60
    ld bc, $f606                                  ; $6047: $01 $06 $f6
    ld h, b                                       ; $604a: $60
    ld bc, $d606                                  ; $604b: $01 $06 $d6
    ld h, b                                       ; $604e: $60
    ld bc, $2d07                                  ; $604f: $01 $07 $2d
    ld h, b                                       ; $6052: $60
    ld bc, $0507                                  ; $6053: $01 $07 $05
    ld h, b                                       ; $6056: $60
    ld bc, $f606                                  ; $6057: $01 $06 $f6
    ld h, b                                       ; $605a: $60
    ld bc, $d606                                  ; $605b: $01 $06 $d6
    ld h, b                                       ; $605e: $60
    ld bc, $9e06                                  ; $605f: $01 $06 $9e
    ld h, b                                       ; $6062: $60
    ld bc, $0507                                  ; $6063: $01 $07 $05
    ld h, b                                       ; $6066: $60
    ld bc, $f310                                  ; $6067: $01 $10 $f3
    ld b, $f6                                     ; $606a: $06 $f6
    ld b, $d6                                     ; $606c: $06 $d6
    ld b, $9e                                     ; $606e: $06 $9e
    ld b, $5b                                     ; $6070: $06 $5b
    ld b, $0b                                     ; $6072: $06 $0b
    ld b, $d6                                     ; $6074: $06 $d6
    ld b, $9e                                     ; $6076: $06 $9e
    ld b, $5b                                     ; $6078: $06 $5b
    ld b, $0b                                     ; $607a: $06 $0b
    dec b                                         ; $607c: $05
    db $ed                                        ; $607d: $ed
    ld b, $9e                                     ; $607e: $06 $9e
    ld b, $5b                                     ; $6080: $06 $5b
    ld b, $0b                                     ; $6082: $06 $0b
    dec b                                         ; $6084: $05
    db $ed                                        ; $6085: $ed
    dec b                                         ; $6086: $05
    xor h                                         ; $6087: $ac
    ld b, $5b                                     ; $6088: $06 $5b
    ld b, $0b                                     ; $608a: $06 $0b
    dec b                                         ; $608c: $05
    db $ed                                        ; $608d: $ed
    dec b                                         ; $608e: $05
    xor h                                         ; $608f: $ac
    dec b                                         ; $6090: $05
    inc a                                         ; $6091: $3c
    ld b, $0b                                     ; $6092: $06 $0b
    dec b                                         ; $6094: $05
    db $ed                                        ; $6095: $ed
    dec b                                         ; $6096: $05
    xor h                                         ; $6097: $ac
    dec b                                         ; $6098: $05
    inc a                                         ; $6099: $3c
    inc b                                         ; $609a: $04
    or l                                          ; $609b: $b5
    inc b                                         ; $609c: $04
    ld d, $05                                     ; $609d: $16 $05
    xor h                                         ; $609f: $ac
    dec b                                         ; $60a0: $05
    inc a                                         ; $60a1: $3c
    inc b                                         ; $60a2: $04
    or l                                          ; $60a3: $b5
    inc b                                         ; $60a4: $04
    ld d, $03                                     ; $60a5: $16 $03
    jp c, Jump_000_3c05                           ; $60a7: $da $05 $3c

    inc b                                         ; $60aa: $04
    or l                                          ; $60ab: $b5
    inc b                                         ; $60ac: $04
    ld d, $03                                     ; $60ad: $16 $03
    jp c, Jump_07f_5803                           ; $60af: $da $03 $58

    inc b                                         ; $60b2: $04
    or l                                          ; $60b3: $b5
    inc b                                         ; $60b4: $04
    ld d, $03                                     ; $60b5: $16 $03
    jp c, Jump_07f_5803                           ; $60b7: $da $03 $58

    ld [bc], a                                    ; $60ba: $02
    ld a, b                                       ; $60bb: $78
    inc b                                         ; $60bc: $04
    ld d, $f0                                     ; $60bd: $16 $f0
    jr z, @-$7e                                   ; $60bf: $28 $80

    ld de, $e510                                  ; $60c1: $11 $10 $e5
    ld b, $0b                                     ; $60c4: $06 $0b
    ld d, b                                       ; $60c6: $50
    nop                                           ; $60c7: $00
    ld h, b                                       ; $60c8: $60
    ld bc, $0507                                  ; $60c9: $01 $07 $05
    ld h, b                                       ; $60cc: $60
    ld bc, $4206                                  ; $60cd: $01 $06 $42
    ld h, b                                       ; $60d0: $60
    ld bc, $2107                                  ; $60d1: $01 $07 $21
    ld h, b                                       ; $60d4: $60
    ld bc, $7206                                  ; $60d5: $01 $06 $72
    ld h, b                                       ; $60d8: $60
    ld bc, $3907                                  ; $60d9: $01 $07 $39
    ld h, b                                       ; $60dc: $60
    ld bc, $9e06                                  ; $60dd: $01 $06 $9e
    ld h, b                                       ; $60e0: $60
    ld bc, $4f07                                  ; $60e1: $01 $07 $4f
    ld h, b                                       ; $60e4: $60
    ld bc, $c406                                  ; $60e5: $01 $06 $c4
    ld h, b                                       ; $60e8: $60
    ld bc, $6207                                  ; $60e9: $01 $07 $62
    ld h, b                                       ; $60ec: $60
    ld bc, $e706                                  ; $60ed: $01 $06 $e7
    ld h, b                                       ; $60f0: $60
    ld bc, $7307                                  ; $60f1: $01 $07 $73
    ld h, b                                       ; $60f4: $60
    ld bc, $0507                                  ; $60f5: $01 $07 $05
    ld h, b                                       ; $60f8: $60
    ld bc, $8307                                  ; $60f9: $01 $07 $83
    ld h, b                                       ; $60fc: $60
    ld bc, $2107                                  ; $60fd: $01 $07 $21
    ld h, b                                       ; $6100: $60
    ld bc, $9007                                  ; $6101: $01 $07 $90
    ld h, b                                       ; $6104: $60
    ld bc, $3907                                  ; $6105: $01 $07 $39
    ld h, b                                       ; $6108: $60
    ld bc, $9d07                                  ; $6109: $01 $07 $9d
    ld h, b                                       ; $610c: $60
    ld bc, $4f07                                  ; $610d: $01 $07 $4f
    ld h, b                                       ; $6110: $60
    ld bc, $a707                                  ; $6111: $01 $07 $a7
    ld h, b                                       ; $6114: $60
    ld bc, $6207                                  ; $6115: $01 $07 $62
    ld h, b                                       ; $6118: $60
    ld bc, $b107                                  ; $6119: $01 $07 $b1
    ld h, b                                       ; $611c: $60
    ld bc, $7307                                  ; $611d: $01 $07 $73
    ld h, b                                       ; $6120: $60
    ld bc, $ba07                                  ; $6121: $01 $07 $ba
    ld h, b                                       ; $6124: $60
    ld bc, $8307                                  ; $6125: $01 $07 $83
    ld h, b                                       ; $6128: $60
    ld bc, $c107                                  ; $6129: $01 $07 $c1
    ld h, b                                       ; $612c: $60
    ld bc, $9007                                  ; $612d: $01 $07 $90
    ld h, b                                       ; $6130: $60
    ld bc, $c807                                  ; $6131: $01 $07 $c8
    ld h, b                                       ; $6134: $60
    ld bc, $9d07                                  ; $6135: $01 $07 $9d
    ld h, b                                       ; $6138: $60
    ld bc, $ce07                                  ; $6139: $01 $07 $ce
    ld h, b                                       ; $613c: $60
    ld bc, $a707                                  ; $613d: $01 $07 $a7
    ld h, b                                       ; $6140: $60
    ld bc, $d407                                  ; $6141: $01 $07 $d4
    ld h, b                                       ; $6144: $60
    ld bc, $b107                                  ; $6145: $01 $07 $b1
    ld h, b                                       ; $6148: $60
    ld bc, $d907                                  ; $6149: $01 $07 $d9
    ld h, b                                       ; $614c: $60
    ld bc, $ba07                                  ; $614d: $01 $07 $ba
    ld h, b                                       ; $6150: $60
    ld bc, $dd07                                  ; $6151: $01 $07 $dd
    ld h, b                                       ; $6154: $60
    ld bc, $24f0                                  ; $6155: $01 $f0 $24
    add b                                         ; $6158: $80
    ld de, $f010                                  ; $6159: $11 $10 $f0
    rlca                                          ; $615c: $07
    xor h                                         ; $615d: $ac
    ldh a, [$6c]                                  ; $615e: $f0 $6c
    ld l, [hl]                                    ; $6160: $6e
    ld h, c                                       ; $6161: $61
    ld [hl], c                                    ; $6162: $71
    ld h, c                                       ; $6163: $61
    ld [hl], h                                    ; $6164: $74
    ld h, c                                       ; $6165: $61
    ld [hl], a                                    ; $6166: $77
    ld h, c                                       ; $6167: $61
    ld a, d                                       ; $6168: $7a
    ld h, c                                       ; $6169: $61
    ld a, l                                       ; $616a: $7d
    ld h, c                                       ; $616b: $61
    add b                                         ; $616c: $80
    ld h, c                                       ; $616d: $61
    ld [$4e16], sp                                ; $616e: $08 $16 $4e
    ld [$61c5], sp                                ; $6171: $08 $c5 $61
    ld [bc], a                                    ; $6174: $02
    add e                                         ; $6175: $83
    ld h, c                                       ; $6176: $61
    ld [bc], a                                    ; $6177: $02
    add e                                         ; $6178: $83
    ld h, c                                       ; $6179: $61
    ld [bc], a                                    ; $617a: $02
    add e                                         ; $617b: $83
    ld h, c                                       ; $617c: $61
    ld [bc], a                                    ; $617d: $02
    add e                                         ; $617e: $83
    ld h, c                                       ; $617f: $61
    ld [bc], a                                    ; $6180: $02
    add e                                         ; $6181: $83
    ld h, c                                       ; $6182: $61

    db $28, $80, $11, $10, $80, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0, $50, $01
    db $40, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0
    db $50, $01, $40, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0, $50, $01, $40

    jr nc, jr_07f_61f0                            ; $61b2: $30 $3c

    ldh [$50], a                                  ; $61b4: $e0 $50
    ld bc, $3040                                  ; $61b6: $01 $40 $30
    inc a                                         ; $61b9: $3c
    ldh [$50], a                                  ; $61ba: $e0 $50
    ld bc, $3040                                  ; $61bc: $01 $40 $30
    inc a                                         ; $61bf: $3c
    ldh [$50], a                                  ; $61c0: $e0 $50
    ld bc, $f040                                  ; $61c2: $01 $40 $f0
    add b                                         ; $61c5: $80
    ld de, $b010                                  ; $61c6: $11 $10 $b0
    nop                                           ; $61c9: $00
    ld b, l                                       ; $61ca: $45
    nop                                           ; $61cb: $00
    scf                                           ; $61cc: $37
    stop                                          ; $61cd: $10 $00
    ld d, b                                       ; $61cf: $50
    nop                                           ; $61d0: $00
    ld h, b                                       ; $61d1: $60
    dec b                                         ; $61d2: $05
    ld d, b                                       ; $61d3: $50
    rst $38                                       ; $61d4: $ff
    db $10                                        ; $61d5: $10
    or b                                          ; $61d6: $b0
    db $10                                        ; $61d7: $10
    stop                                          ; $61d8: $10 $00
    rra                                           ; $61da: $1f
    nop                                           ; $61db: $00
    inc e                                         ; $61dc: $1c
    stop                                          ; $61dd: $10 $00
    ld d, b                                       ; $61df: $50
    nop                                           ; $61e0: $00
    ld h, b                                       ; $61e1: $60
    ld bc, $ff50                                  ; $61e2: $01 $50 $ff
    db $10                                        ; $61e5: $10
    db $10                                        ; $61e6: $10
    db $10                                        ; $61e7: $10
    pop de                                        ; $61e8: $d1
    nop                                           ; $61e9: $00
    inc a                                         ; $61ea: $3c
    jr nc, jr_07f_61f9                            ; $61eb: $30 $0c

    nop                                           ; $61ed: $00
    scf                                           ; $61ee: $37
    ld b, b                                       ; $61ef: $40

jr_07f_61f0:
    ldh a, [rIE]                                  ; $61f0: $f0 $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff

jr_07f_61f9:
    rst $38                                       ; $61f9: $ff
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    rst $38                                       ; $61fe: $ff
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    rst $38                                       ; $6253: $ff
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
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
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
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    rst $38                                       ; $62c0: $ff
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
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
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
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
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
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
    rst $38                                       ; $6375: $ff
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
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    rst $38                                       ; $639e: $ff
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    rst $38                                       ; $63d1: $ff
    rst $38                                       ; $63d2: $ff
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
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
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
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
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    rst $38                                       ; $6428: $ff
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    rst $38                                       ; $6451: $ff
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $38                                       ; $6466: $ff
    rst $38                                       ; $6467: $ff
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    rst $38                                       ; $646f: $ff
    rst $38                                       ; $6470: $ff
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    rst $38                                       ; $6473: $ff
    rst $38                                       ; $6474: $ff
    rst $38                                       ; $6475: $ff
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    rst $38                                       ; $6478: $ff
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    rst $38                                       ; $64b1: $ff
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    rst $38                                       ; $64c0: $ff
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
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
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
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
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
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
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
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
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
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
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
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
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
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
    rst $38                                       ; $6ff2: $ff
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
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
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
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
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
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
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
