; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    db $3c, $41, $6e, $47, $03, $41

    inc c                                         ; $4006: $0c
    ld b, c                                       ; $4007: $41
    ld b, [hl]                                    ; $4008: $46
    ld b, b                                       ; $4009: $40

    db $f7, $41, $24, $42, $8f, $6d, $34, $6e, $69, $6d, $88, $6d

    xor e                                         ; $4016: $ab
    ld c, [hl]                                    ; $4017: $4e
    cpl                                           ; $4018: $2f
    ld b, d                                       ; $4019: $42
    push hl                                       ; $401a: $e5
    ld hl, $402e                                  ; $401b: $21 $2e $40
    ld a, d                                       ; $401e: $7a
    add a                                         ; $401f: $87
    add l                                         ; $4020: $85
    ld l, a                                       ; $4021: $6f
    jr nc, jr_011_4025                            ; $4022: $30 $01

    inc h                                         ; $4024: $24

jr_011_4025:
    ld a, [hl+]                                   ; $4025: $2a
    ld h, [hl]                                    ; $4026: $66
    ld l, a                                       ; $4027: $6f
    add hl, bc                                    ; $4028: $09
    ld b, h                                       ; $4029: $44
    ld c, l                                       ; $402a: $4d
    inc d                                         ; $402b: $14
    pop hl                                        ; $402c: $e1
    ret                                           ; $402d: $c9


    inc e                                         ; $402e: $1c
    rlca                                          ; $402f: $07
    ret z                                         ; $4030: $c8

    pop af                                        ; $4031: $f1
    ld d, h                                       ; $4032: $54
    dec d                                         ; $4033: $15
    sub b                                         ; $4034: $90
    db $e3                                        ; $4035: $e3
    adc h                                         ; $4036: $8c
    inc hl                                        ; $4037: $23
    ld e, b                                       ; $4038: $58
    push de                                       ; $4039: $d5
    call nz, Call_000_2031                        ; $403a: $c4 $31 $20
    rst $00                                       ; $403d: $c7
    db $fc                                        ; $403e: $fc
    ccf                                           ; $403f: $3f
    add sp, -$48                                  ; $4040: $e8 $b8
    inc [hl]                                      ; $4042: $34
    ld c, [hl]                                    ; $4043: $4e
    or b                                          ; $4044: $b0
    xor d                                         ; $4045: $aa
    rst $18                                       ; $4046: $df
    ld a, [bc]                                    ; $4047: $0a
    db $10                                        ; $4048: $10
    push bc                                       ; $4049: $c5
    ld a, [$d4cd]                                 ; $404a: $fa $cd $d4
    cp $06                                        ; $404d: $fe $06
    jp z, Jump_011_408f                           ; $404f: $ca $8f $40

    rst $18                                       ; $4052: $df
    inc b                                         ; $4053: $04
    db $10                                        ; $4054: $10
    push hl                                       ; $4055: $e5
    ld de, $f880                                  ; $4056: $11 $80 $f8
    add hl, de                                    ; $4059: $19
    bit 7, h                                      ; $405a: $cb $7c
    pop hl                                        ; $405c: $e1
    jr nz, jr_011_406c                            ; $405d: $20 $0d

    rst $18                                       ; $405f: $df
    inc c                                         ; $4060: $0c
    db $10                                        ; $4061: $10
    ld h, $3c                                     ; $4062: $26 $3c
    ld l, $00                                     ; $4064: $2e $00
    ld d, $00                                     ; $4066: $16 $00
    ld e, $ff                                     ; $4068: $1e $ff
    pop bc                                        ; $406a: $c1
    ret                                           ; $406b: $c9


jr_011_406c:
    srl h                                         ; $406c: $cb $3c
    rr l                                          ; $406e: $cb $1d
    srl h                                         ; $4070: $cb $3c
    rr l                                          ; $4072: $cb $1d
    srl h                                         ; $4074: $cb $3c
    rr l                                          ; $4076: $cb $1d
    srl h                                         ; $4078: $cb $3c
    rr l                                          ; $407a: $cb $1d
    srl h                                         ; $407c: $cb $3c
    rr l                                          ; $407e: $cb $1d
    inc l                                         ; $4080: $2c
    res 0, l                                      ; $4081: $cb $85
    ld h, l                                       ; $4083: $65
    ld l, $00                                     ; $4084: $2e $00
    ld d, $02                                     ; $4086: $16 $02
    ld e, $ff                                     ; $4088: $1e $ff
    ld a, $0b                                     ; $408a: $3e $0b
    jp Jump_011_4101                              ; $408c: $c3 $01 $41


Jump_011_408f:
    ld a, $0d                                     ; $408f: $3e $0d
    rst $18                                       ; $4091: $df
    inc b                                         ; $4092: $04
    db $10                                        ; $4093: $10
    push hl                                       ; $4094: $e5
    ld de, $fc40                                  ; $4095: $11 $40 $fc
    add hl, de                                    ; $4098: $19
    bit 7, h                                      ; $4099: $cb $7c
    pop hl                                        ; $409b: $e1
    jr nz, jr_011_40ab                            ; $409c: $20 $0d

    ld h, $3c                                     ; $409e: $26 $3c
    ld l, $00                                     ; $40a0: $2e $00
    ld d, $01                                     ; $40a2: $16 $01
    ld e, $ff                                     ; $40a4: $1e $ff
    ld a, $0d                                     ; $40a6: $3e $0d
    jp Jump_011_4101                              ; $40a8: $c3 $01 $41


jr_011_40ab:
    push hl                                       ; $40ab: $e5
    ld de, $fec0                                  ; $40ac: $11 $c0 $fe
    add hl, de                                    ; $40af: $19
    bit 7, h                                      ; $40b0: $cb $7c
    pop hl                                        ; $40b2: $e1
    jr nz, jr_011_40d9                            ; $40b3: $20 $24

    add hl, hl                                    ; $40b5: $29
    srl h                                         ; $40b6: $cb $3c
    rr l                                          ; $40b8: $cb $1d
    srl h                                         ; $40ba: $cb $3c
    rr l                                          ; $40bc: $cb $1d
    srl h                                         ; $40be: $cb $3c
    rr l                                          ; $40c0: $cb $1d
    srl h                                         ; $40c2: $cb $3c
    rr l                                          ; $40c4: $cb $1d
    srl h                                         ; $40c6: $cb $3c
    rr l                                          ; $40c8: $cb $1d
    inc l                                         ; $40ca: $2c
    res 0, l                                      ; $40cb: $cb $85
    ld h, l                                       ; $40cd: $65
    ld l, $00                                     ; $40ce: $2e $00
    ld d, $01                                     ; $40d0: $16 $01
    ld e, $ff                                     ; $40d2: $1e $ff
    ld a, $0d                                     ; $40d4: $3e $0d
    jp Jump_011_4101                              ; $40d6: $c3 $01 $41


jr_011_40d9:
    ld d, h                                       ; $40d9: $54
    ld e, l                                       ; $40da: $5d
    add hl, hl                                    ; $40db: $29
    add hl, de                                    ; $40dc: $19
    add hl, hl                                    ; $40dd: $29
    srl h                                         ; $40de: $cb $3c

Jump_011_40e0:
    rr l                                          ; $40e0: $cb $1d
    srl h                                         ; $40e2: $cb $3c
    rr l                                          ; $40e4: $cb $1d
    srl h                                         ; $40e6: $cb $3c
    rr l                                          ; $40e8: $cb $1d
    srl h                                         ; $40ea: $cb $3c
    rr l                                          ; $40ec: $cb $1d
    srl h                                         ; $40ee: $cb $3c
    rr l                                          ; $40f0: $cb $1d
    inc l                                         ; $40f2: $2c
    res 0, l                                      ; $40f3: $cb $85
    ld h, l                                       ; $40f5: $65
    ld l, $00                                     ; $40f6: $2e $00
    ld d, $00                                     ; $40f8: $16 $00
    ld e, $ff                                     ; $40fa: $1e $ff
    ld a, $0d                                     ; $40fc: $3e $0d
    jp Jump_011_4101                              ; $40fe: $c3 $01 $41


Jump_011_4101:
    pop bc                                        ; $4101: $c1
    ret                                           ; $4102: $c9


    ld a, $0c                                     ; $4103: $3e $0c
    ld hl, $4113                                  ; $4105: $21 $13 $41
    call Call_000_23e8                            ; $4108: $cd $e8 $23
    ret                                           ; $410b: $c9


    ld hl, $4113                                  ; $410c: $21 $13 $41
    call Call_000_2449                            ; $410f: $cd $49 $24
    ret                                           ; $4112: $c9


    ld a, $06                                     ; $4113: $3e $06
    ldh [$96], a                                  ; $4115: $e0 $96
    ldh [rSVBK], a                                ; $4117: $e0 $70
    ld a, [$d443]                                 ; $4119: $fa $43 $d4
    ld hl, $412c                                  ; $411c: $21 $2c $41
    and $07                                       ; $411f: $e6 $07
    add a                                         ; $4121: $87
    add l                                         ; $4122: $85
    ld l, a                                       ; $4123: $6f
    ld a, h                                       ; $4124: $7c
    adc $00                                       ; $4125: $ce $00
    ld h, a                                       ; $4127: $67
    ld a, [hl+]                                   ; $4128: $2a
    ld h, [hl]                                    ; $4129: $66
    ld l, a                                       ; $412a: $6f
    jp hl                                         ; $412b: $e9


    db $61, $43, $70, $49, $bb, $4c

    ld l, [hl]                                    ; $4132: $6e
    ld b, a                                       ; $4133: $47

    db $95, $47

    sub l                                         ; $4136: $95
    ld b, a                                       ; $4137: $47
    sub l                                         ; $4138: $95
    ld b, a                                       ; $4139: $47
    ld c, a                                       ; $413a: $4f
    ld c, [hl]                                    ; $413b: $4e

Call_011_413c:
    ld a, [$d438]                                 ; $413c: $fa $38 $d4
    and $0f                                       ; $413f: $e6 $0f
    jp nz, Jump_011_4153                          ; $4141: $c2 $53 $41

    ld hl, $c322                                  ; $4144: $21 $22 $c3
    ld a, [hl+]                                   ; $4147: $2a
    ld d, [hl]                                    ; $4148: $56
    ld e, a                                       ; $4149: $5f
    ld hl, $c320                                  ; $414a: $21 $20 $c3
    ld a, [hl+]                                   ; $414d: $2a
    ld b, [hl]                                    ; $414e: $46
    ld c, a                                       ; $414f: $4f
    jp Jump_011_41eb                              ; $4150: $c3 $eb $41


Jump_011_4153:
    cp $01                                        ; $4153: $fe $01
    jr nz, jr_011_4165                            ; $4155: $20 $0e

    ld hl, $d404                                  ; $4157: $21 $04 $d4
    ld a, [hl+]                                   ; $415a: $2a
    ld d, [hl]                                    ; $415b: $56
    ld e, a                                       ; $415c: $5f
    ld hl, $d401                                  ; $415d: $21 $01 $d4
    ld a, [hl+]                                   ; $4160: $2a
    ld b, [hl]                                    ; $4161: $46
    ld c, a                                       ; $4162: $4f
    jr jr_011_4199                                ; $4163: $18 $34

jr_011_4165:
    cp $02                                        ; $4165: $fe $02
    jr nz, jr_011_4177                            ; $4167: $20 $0e

    ld hl, $d428                                  ; $4169: $21 $28 $d4
    ld a, [hl+]                                   ; $416c: $2a
    ld d, [hl]                                    ; $416d: $56
    ld e, a                                       ; $416e: $5f
    ld hl, $d426                                  ; $416f: $21 $26 $d4
    ld a, [hl+]                                   ; $4172: $2a
    ld b, [hl]                                    ; $4173: $46
    ld c, a                                       ; $4174: $4f
    jr jr_011_4199                                ; $4175: $18 $22

jr_011_4177:
    cp $03                                        ; $4177: $fe $03
    jr nz, jr_011_4189                            ; $4179: $20 $0e

    ld hl, $d424                                  ; $417b: $21 $24 $d4
    ld a, [hl+]                                   ; $417e: $2a
    ld d, [hl]                                    ; $417f: $56
    ld e, a                                       ; $4180: $5f
    ld hl, $d422                                  ; $4181: $21 $22 $d4
    ld a, [hl+]                                   ; $4184: $2a
    ld b, [hl]                                    ; $4185: $46
    ld c, a                                       ; $4186: $4f
    jr jr_011_4199                                ; $4187: $18 $10

jr_011_4189:
    cp $04                                        ; $4189: $fe $04
    jr nz, jr_011_4199                            ; $418b: $20 $0c

    ld hl, $d43f                                  ; $418d: $21 $3f $d4
    ld a, [hl+]                                   ; $4190: $2a
    ld d, [hl]                                    ; $4191: $56
    ld e, a                                       ; $4192: $5f
    ld hl, $d43d                                  ; $4193: $21 $3d $d4
    ld a, [hl+]                                   ; $4196: $2a
    ld b, [hl]                                    ; $4197: $46
    ld c, a                                       ; $4198: $4f

jr_011_4199:
    ld a, d                                       ; $4199: $7a
    ld [$d437], a                                 ; $419a: $ea $37 $d4
    ld a, b                                       ; $419d: $78
    ld [$d436], a                                 ; $419e: $ea $36 $d4
    push de                                       ; $41a1: $d5
    ld hl, $f600                                  ; $41a2: $21 $00 $f6
    add hl, bc                                    ; $41a5: $09
    ld a, [$c329]                                 ; $41a6: $fa $29 $c3
    ld d, a                                       ; $41a9: $57
    ld a, h                                       ; $41aa: $7c
    sub d                                         ; $41ab: $92
    bit 7, a                                      ; $41ac: $cb $7f
    jr z, jr_011_41b5                             ; $41ae: $28 $05

    ld h, d                                       ; $41b0: $62
    ld l, $00                                     ; $41b1: $2e $00
    jr jr_011_41c4                                ; $41b3: $18 $0f

jr_011_41b5:
    ld a, [$c32b]                                 ; $41b5: $fa $2b $c3
    sub $14                                       ; $41b8: $d6 $14
    ld d, a                                       ; $41ba: $57
    ld a, h                                       ; $41bb: $7c
    sub d                                         ; $41bc: $92
    bit 7, a                                      ; $41bd: $cb $7f
    jr nz, jr_011_41c4                            ; $41bf: $20 $03

    ld h, d                                       ; $41c1: $62
    ld l, $00                                     ; $41c2: $2e $00

jr_011_41c4:
    ld b, h                                       ; $41c4: $44
    ld c, l                                       ; $41c5: $4d
    pop de                                        ; $41c6: $d1
    ld hl, $f700                                  ; $41c7: $21 $00 $f7
    add hl, de                                    ; $41ca: $19
    ld a, [$c32a]                                 ; $41cb: $fa $2a $c3
    ld d, a                                       ; $41ce: $57
    ld a, h                                       ; $41cf: $7c
    sub d                                         ; $41d0: $92
    bit 7, a                                      ; $41d1: $cb $7f
    jr z, jr_011_41da                             ; $41d3: $28 $05

    ld h, d                                       ; $41d5: $62
    ld l, $00                                     ; $41d6: $2e $00
    jr jr_011_41e9                                ; $41d8: $18 $0f

jr_011_41da:
    ld a, [$c32c]                                 ; $41da: $fa $2c $c3
    sub $12                                       ; $41dd: $d6 $12
    ld d, a                                       ; $41df: $57

Jump_011_41e0:
    ld a, h                                       ; $41e0: $7c
    sub d                                         ; $41e1: $92
    bit 7, a                                      ; $41e2: $cb $7f
    jr nz, jr_011_41e9                            ; $41e4: $20 $03

    ld h, d                                       ; $41e6: $62
    ld l, $00                                     ; $41e7: $2e $00

jr_011_41e9:
    ld d, h                                       ; $41e9: $54
    ld e, l                                       ; $41ea: $5d

Jump_011_41eb:
    ld hl, $d42e                                  ; $41eb: $21 $2e $d4
    ld a, c                                       ; $41ee: $79
    ld [hl+], a                                   ; $41ef: $22
    ld a, b                                       ; $41f0: $78
    ld [hl+], a                                   ; $41f1: $22
    ld a, e                                       ; $41f2: $7b
    ld [hl+], a                                   ; $41f3: $22
    ld a, d                                       ; $41f4: $7a
    ld [hl], a                                    ; $41f5: $77
    ret                                           ; $41f6: $c9


Call_011_41f7:
    ld a, [$d443]                                 ; $41f7: $fa $43 $d4
    or a                                          ; $41fa: $b7
    jr nz, jr_011_421d                            ; $41fb: $20 $20

    push de                                       ; $41fd: $d5
    push hl                                       ; $41fe: $e5
    ld de, $d42e                                  ; $41ff: $11 $2e $d4
    ld hl, $d432                                  ; $4202: $21 $32 $d4
    ld a, [de]                                    ; $4205: $1a
    cp [hl]                                       ; $4206: $be
    jr nz, jr_011_4220                            ; $4207: $20 $17

    inc de                                        ; $4209: $13
    inc hl                                        ; $420a: $23
    ld a, [de]                                    ; $420b: $1a
    cp [hl]                                       ; $420c: $be
    jr nz, jr_011_4220                            ; $420d: $20 $11

    inc de                                        ; $420f: $13
    inc hl                                        ; $4210: $23
    ld a, [de]                                    ; $4211: $1a
    cp [hl]                                       ; $4212: $be
    jr nz, jr_011_4220                            ; $4213: $20 $0b

    inc de                                        ; $4215: $13
    inc hl                                        ; $4216: $23
    ld a, [de]                                    ; $4217: $1a
    cp [hl]                                       ; $4218: $be
    jr nz, jr_011_4220                            ; $4219: $20 $05

    pop hl                                        ; $421b: $e1
    pop de                                        ; $421c: $d1

jr_011_421d:
    ld a, $ff                                     ; $421d: $3e $ff
    ret                                           ; $421f: $c9


jr_011_4220:
    pop hl                                        ; $4220: $e1
    pop de                                        ; $4221: $d1
    xor a                                         ; $4222: $af
    ret                                           ; $4223: $c9


jr_011_4224:
    call Call_011_41f7                            ; $4224: $cd $f7 $41
    or a                                          ; $4227: $b7
    ret nz                                        ; $4228: $c0

    call Call_000_2e3b                            ; $4229: $cd $3b $2e
    jr jr_011_4224                                ; $422c: $18 $f6

    ret                                           ; $422e: $c9


Call_011_422f:
    call Call_011_413c                            ; $422f: $cd $3c $41
    ld hl, $d432                                  ; $4232: $21 $32 $d4
    ld a, c                                       ; $4235: $79
    cp [hl]                                       ; $4236: $be
    jr nz, jr_011_424b                            ; $4237: $20 $12

    inc hl                                        ; $4239: $23
    ld a, b                                       ; $423a: $78
    cp [hl]                                       ; $423b: $be
    jr nz, jr_011_424b                            ; $423c: $20 $0d

    inc hl                                        ; $423e: $23
    ld a, e                                       ; $423f: $7b
    cp [hl]                                       ; $4240: $be
    jr nz, jr_011_424b                            ; $4241: $20 $08

    inc hl                                        ; $4243: $23
    ld a, d                                       ; $4244: $7a
    cp [hl]                                       ; $4245: $be
    jr nz, jr_011_424b                            ; $4246: $20 $03

    jp Jump_011_4360                              ; $4248: $c3 $60 $43


jr_011_424b:
    ld a, [$d438]                                 ; $424b: $fa $38 $d4
    bit 4, a                                      ; $424e: $cb $67
    jp nz, Jump_011_432e                          ; $4250: $c2 $2e $43

    push de                                       ; $4253: $d5
    ld hl, $d432                                  ; $4254: $21 $32 $d4
    ld a, [hl+]                                   ; $4257: $2a
    ld h, [hl]                                    ; $4258: $66
    ld l, a                                       ; $4259: $6f
    ld d, b                                       ; $425a: $50
    ld e, c                                       ; $425b: $59
    call Call_000_08ac                            ; $425c: $cd $ac $08
    pop de                                        ; $425f: $d1
    push hl                                       ; $4260: $e5
    ld hl, $d434                                  ; $4261: $21 $34 $d4
    ld a, [hl+]                                   ; $4264: $2a
    ld h, [hl]                                    ; $4265: $66
    ld l, a                                       ; $4266: $6f
    call Call_000_08ac                            ; $4267: $cd $ac $08
    pop de                                        ; $426a: $d1
    push de                                       ; $426b: $d5
    push hl                                       ; $426c: $e5
    call Call_000_1a03                            ; $426d: $cd $03 $1a
    ld a, $80                                     ; $4270: $3e $80
    add b                                         ; $4272: $80
    ld b, a                                       ; $4273: $47
    push bc                                       ; $4274: $c5
    ld a, h                                       ; $4275: $7c
    bit 7, a                                      ; $4276: $cb $7f
    jr z, jr_011_427c                             ; $4278: $28 $02

    cpl                                           ; $427a: $2f
    inc a                                         ; $427b: $3c

jr_011_427c:
    ld l, a                                       ; $427c: $6f
    ld h, $00                                     ; $427d: $26 $00

Call_011_427f:
    call Call_000_08b9                            ; $427f: $cd $b9 $08
    push hl                                       ; $4282: $e5
    ld a, d                                       ; $4283: $7a
    bit 7, a                                      ; $4284: $cb $7f
    jr z, jr_011_428a                             ; $4286: $28 $02

    cpl                                           ; $4288: $2f
    inc a                                         ; $4289: $3c

jr_011_428a:
    ld l, a                                       ; $428a: $6f
    ld h, $00                                     ; $428b: $26 $00
    call Call_000_08b9                            ; $428d: $cd $b9 $08
    pop de                                        ; $4290: $d1
    add hl, de                                    ; $4291: $19
    ld a, h                                       ; $4292: $7c
    or a                                          ; $4293: $b7
    jr nz, jr_011_42bb                            ; $4294: $20 $25

    ld a, l                                       ; $4296: $7d
    cp $01                                        ; $4297: $fe $01
    jr nc, jr_011_42a0                            ; $4299: $30 $05

    ld hl, $0010                                  ; $429b: $21 $10 $00
    jr jr_011_42be                                ; $429e: $18 $1e

jr_011_42a0:
    cp $04                                        ; $42a0: $fe $04
    jr nc, jr_011_42a9                            ; $42a2: $30 $05

    ld hl, $0018                                  ; $42a4: $21 $18 $00
    jr jr_011_42be                                ; $42a7: $18 $15

jr_011_42a9:
    cp $09                                        ; $42a9: $fe $09
    jr nc, jr_011_42b2                            ; $42ab: $30 $05

    ld hl, $0020                                  ; $42ad: $21 $20 $00
    jr jr_011_42be                                ; $42b0: $18 $0c

jr_011_42b2:
    cp $10                                        ; $42b2: $fe $10
    jr nc, jr_011_42bb                            ; $42b4: $30 $05

    ld hl, $0040                                  ; $42b6: $21 $40 $00
    jr jr_011_42be                                ; $42b9: $18 $03

jr_011_42bb:
    ld hl, $0080                                  ; $42bb: $21 $80 $00

jr_011_42be:
    pop af                                        ; $42be: $f1
    push af                                       ; $42bf: $f5
    call Call_000_0b31                            ; $42c0: $cd $31 $0b
    push hl                                       ; $42c3: $e5
    ld hl, $d434                                  ; $42c4: $21 $34 $d4
    ld a, [hl+]                                   ; $42c7: $2a
    ld h, [hl]                                    ; $42c8: $66
    ld l, a                                       ; $42c9: $6f
    add hl, de                                    ; $42ca: $19
    ld a, l                                       ; $42cb: $7d
    ld [$d434], a                                 ; $42cc: $ea $34 $d4
    ld a, h                                       ; $42cf: $7c
    ld [$d435], a                                 ; $42d0: $ea $35 $d4
    pop de                                        ; $42d3: $d1
    ld hl, $d432                                  ; $42d4: $21 $32 $d4
    ld a, [hl+]                                   ; $42d7: $2a
    ld h, [hl]                                    ; $42d8: $66
    ld l, a                                       ; $42d9: $6f
    add hl, de                                    ; $42da: $19
    ld a, l                                       ; $42db: $7d
    ld [$d432], a                                 ; $42dc: $ea $32 $d4
    ld a, h                                       ; $42df: $7c
    ld [$d433], a                                 ; $42e0: $ea $33 $d4
    pop af                                        ; $42e3: $f1
    ld bc, $0001                                  ; $42e4: $01 $01 $00
    add $20                                       ; $42e7: $c6 $20
    and $40                                       ; $42e9: $e6 $40
    jr z, jr_011_42ee                             ; $42eb: $28 $01

    inc c                                         ; $42ed: $0c

jr_011_42ee:
    ld hl, $d430                                  ; $42ee: $21 $30 $d4
    ld a, [hl+]                                   ; $42f1: $2a
    ld d, [hl]                                    ; $42f2: $56
    ld e, a                                       ; $42f3: $5f
    ld hl, $d434                                  ; $42f4: $21 $34 $d4
    ld a, [hl+]                                   ; $42f7: $2a
    ld h, [hl]                                    ; $42f8: $66
    ld l, a                                       ; $42f9: $6f
    call Call_000_08ac                            ; $42fa: $cd $ac $08
    ld a, h                                       ; $42fd: $7c
    or l                                          ; $42fe: $b5
    jr nz, jr_011_4303                            ; $42ff: $20 $02

    set 1, b                                      ; $4301: $cb $c8

jr_011_4303:
    ld a, h                                       ; $4303: $7c
    pop hl                                        ; $4304: $e1
    xor h                                         ; $4305: $ac
    bit 7, a                                      ; $4306: $cb $7f
    jr z, jr_011_430c                             ; $4308: $28 $02

    set 1, b                                      ; $430a: $cb $c8

jr_011_430c:
    ld hl, $d42e                                  ; $430c: $21 $2e $d4
    ld a, [hl+]                                   ; $430f: $2a
    ld d, [hl]                                    ; $4310: $56
    ld e, a                                       ; $4311: $5f
    ld hl, $d432                                  ; $4312: $21 $32 $d4
    ld a, [hl+]                                   ; $4315: $2a
    ld h, [hl]                                    ; $4316: $66
    ld l, a                                       ; $4317: $6f
    call Call_000_08ac                            ; $4318: $cd $ac $08
    ld a, h                                       ; $431b: $7c
    or l                                          ; $431c: $b5
    jr nz, jr_011_4321                            ; $431d: $20 $02

    set 0, b                                      ; $431f: $cb $c0

jr_011_4321:
    ld a, h                                       ; $4321: $7c
    pop hl                                        ; $4322: $e1
    xor h                                         ; $4323: $ac
    bit 7, a                                      ; $4324: $cb $7f
    jr z, jr_011_432a                             ; $4326: $28 $02

    set 0, b                                      ; $4328: $cb $c0

jr_011_432a:
    ld a, b                                       ; $432a: $78
    and c                                         ; $432b: $a1
    jr z, jr_011_433f                             ; $432c: $28 $11

Jump_011_432e:
    ld hl, $d42e                                  ; $432e: $21 $2e $d4
    ld de, $d432                                  ; $4331: $11 $32 $d4
    ld a, [hl+]                                   ; $4334: $2a
    ld [de], a                                    ; $4335: $12
    inc de                                        ; $4336: $13
    ld a, [hl+]                                   ; $4337: $2a
    ld [de], a                                    ; $4338: $12
    inc de                                        ; $4339: $13
    ld a, [hl+]                                   ; $433a: $2a
    ld [de], a                                    ; $433b: $12
    inc de                                        ; $433c: $13
    ld a, [hl]                                    ; $433d: $7e
    ld [de], a                                    ; $433e: $12

jr_011_433f:
    ld a, [$d443]                                 ; $433f: $fa $43 $d4
    or a                                          ; $4342: $b7
    ret nz                                        ; $4343: $c0

    ld hl, $d432                                  ; $4344: $21 $32 $d4
    ld a, [hl+]                                   ; $4347: $2a
    ld h, [hl]                                    ; $4348: $66
    ld l, a                                       ; $4349: $6f
    ld a, l                                       ; $434a: $7d
    ld [$c320], a                                 ; $434b: $ea $20 $c3
    ld a, h                                       ; $434e: $7c
    ld [$c321], a                                 ; $434f: $ea $21 $c3
    ld hl, $d434                                  ; $4352: $21 $34 $d4
    ld a, [hl+]                                   ; $4355: $2a
    ld h, [hl]                                    ; $4356: $66
    ld l, a                                       ; $4357: $6f
    ld a, l                                       ; $4358: $7d
    ld [$c322], a                                 ; $4359: $ea $22 $c3
    ld a, h                                       ; $435c: $7c
    ld [$c323], a                                 ; $435d: $ea $23 $c3

Jump_011_4360:
    ret                                           ; $4360: $c9


    call Call_011_422f                            ; $4361: $cd $2f $42
    ld a, [$d485]                                 ; $4364: $fa $85 $d4
    bit 4, a                                      ; $4367: $cb $67
    call nz, Call_011_4e5e                        ; $4369: $c4 $5e $4e
    call Call_011_4704                            ; $436c: $cd $04 $47
    ld hl, $4375                                  ; $436f: $21 $75 $43
    jp Jump_011_4d79                              ; $4372: $c3 $79 $4d


    ld c, a                                       ; $4375: $4f
    ld c, [hl]                                    ; $4376: $4e

    db $99, $45, $3b, $45, $85, $43, $4c, $46, $b2, $46

    and c                                         ; $4381: $a1
    ld b, h                                       ; $4382: $44
    ld c, a                                       ; $4383: $4f
    ld c, [hl]                                    ; $4384: $4e

    ld c, $00                                     ; $4385: $0e $00
    ldh a, [$8c]                                  ; $4387: $f0 $8c
    and $02                                       ; $4389: $e6 $02
    jr z, jr_011_43d4                             ; $438b: $28 $47

    ld a, [$d404]                                 ; $438d: $fa $04 $d4
    bit 7, a                                      ; $4390: $cb $7f
    jr nz, jr_011_439e                            ; $4392: $20 $0a

    swap a                                        ; $4394: $cb $37
    and $07                                       ; $4396: $e6 $07
    ld c, a                                       ; $4398: $4f
    ld a, [$d405]                                 ; $4399: $fa $05 $d4
    jr jr_011_43a9                                ; $439c: $18 $0b

jr_011_439e:
    swap a                                        ; $439e: $cb $37
    and $07                                       ; $43a0: $e6 $07
    add $08                                       ; $43a2: $c6 $08
    ld c, a                                       ; $43a4: $4f
    ld a, [$d405]                                 ; $43a5: $fa $05 $d4
    inc a                                         ; $43a8: $3c

jr_011_43a9:
    and $3f                                       ; $43a9: $e6 $3f
    ld h, a                                       ; $43ab: $67
    ld l, $00                                     ; $43ac: $2e $00
    srl h                                         ; $43ae: $cb $3c
    rr l                                          ; $43b0: $cb $1d
    srl h                                         ; $43b2: $cb $3c
    rr l                                          ; $43b4: $cb $1d
    ld a, [$d402]                                 ; $43b6: $fa $02 $d4
    and $3f                                       ; $43b9: $e6 $3f
    ld d, $d0                                     ; $43bb: $16 $d0
    ld e, a                                       ; $43bd: $5f
    add hl, de                                    ; $43be: $19
    ld a, $03                                     ; $43bf: $3e $03
    ldh [$96], a                                  ; $43c1: $e0 $96
    ldh [rSVBK], a                                ; $43c3: $e0 $70
    ld l, [hl]                                    ; $43c5: $6e
    ld h, $d7                                     ; $43c6: $26 $d7
    ld a, $06                                     ; $43c8: $3e $06
    ldh [$96], a                                  ; $43ca: $e0 $96
    ldh [rSVBK], a                                ; $43cc: $e0 $70
    bit 7, [hl]                                   ; $43ce: $cb $7e
    jr nz, jr_011_43d4                            ; $43d0: $20 $02

    ld c, $00                                     ; $43d2: $0e $00

jr_011_43d4:
    ld hl, $c320                                  ; $43d4: $21 $20 $c3
    ld a, [hl+]                                   ; $43d7: $2a
    ld d, [hl]                                    ; $43d8: $56
    ld e, a                                       ; $43d9: $5f
    ld a, e                                       ; $43da: $7b
    and $e0                                       ; $43db: $e6 $e0
    ld e, a                                       ; $43dd: $5f
    ld hl, $d401                                  ; $43de: $21 $01 $d4
    ld a, [hl+]                                   ; $43e1: $2a
    ld h, [hl]                                    ; $43e2: $66
    ld l, a                                       ; $43e3: $6f
    call Call_011_4961                            ; $43e4: $cd $61 $49
    ld a, h                                       ; $43e7: $7c
    inc a                                         ; $43e8: $3c
    cp $15                                        ; $43e9: $fe $15
    jp nc, Jump_011_449e                          ; $43eb: $d2 $9e $44

    ld a, h                                       ; $43ee: $7c
    sla l                                         ; $43ef: $cb $25
    rla                                           ; $43f1: $17
    sla l                                         ; $43f2: $cb $25
    rla                                           ; $43f4: $17
    sla l                                         ; $43f5: $cb $25
    rla                                           ; $43f7: $17
    ld b, a                                       ; $43f8: $47
    push bc                                       ; $43f9: $c5
    ld hl, $d407                                  ; $43fa: $21 $07 $d4
    ld a, [hl+]                                   ; $43fd: $2a
    ld h, [hl]                                    ; $43fe: $66
    ld l, a                                       ; $43ff: $6f
    sra h                                         ; $4400: $cb $2c
    rr l                                          ; $4402: $cb $1d
    sra h                                         ; $4404: $cb $2c
    rr l                                          ; $4406: $cb $1d
    sra h                                         ; $4408: $cb $2c
    rr l                                          ; $440a: $cb $1d
    sra h                                         ; $440c: $cb $2c
    rr l                                          ; $440e: $cb $1d
    ld a, l                                       ; $4410: $7d
    cp c                                          ; $4411: $b9
    jr c, jr_011_446a                             ; $4412: $38 $56

    ld hl, $c322                                  ; $4414: $21 $22 $c3
    ld a, [hl+]                                   ; $4417: $2a
    ld d, [hl]                                    ; $4418: $56
    ld e, a                                       ; $4419: $5f
    ld a, e                                       ; $441a: $7b
    and $e0                                       ; $441b: $e6 $e0
    ld e, a                                       ; $441d: $5f
    ld hl, $d404                                  ; $441e: $21 $04 $d4
    ld a, [hl+]                                   ; $4421: $2a
    ld h, [hl]                                    ; $4422: $66
    ld l, a                                       ; $4423: $6f
    call Call_011_4961                            ; $4424: $cd $61 $49
    ld a, l                                       ; $4427: $7d
    and $e0                                       ; $4428: $e6 $e0
    ld l, a                                       ; $442a: $6f
    push hl                                       ; $442b: $e5
    ld hl, $d407                                  ; $442c: $21 $07 $d4
    ld a, [hl+]                                   ; $442f: $2a
    ld h, [hl]                                    ; $4430: $66
    ld l, a                                       ; $4431: $6f
    ld a, l                                       ; $4432: $7d
    and $e0                                       ; $4433: $e6 $e0
    ld e, a                                       ; $4435: $5f
    ld d, h                                       ; $4436: $54
    sra d                                         ; $4437: $cb $2a
    rr e                                          ; $4439: $cb $1b
    pop hl                                        ; $443b: $e1
    call Call_011_4961                            ; $443c: $cd $61 $49
    ld a, h                                       ; $443f: $7c
    cp $10                                        ; $4440: $fe $10
    jp nc, Jump_011_446a                          ; $4442: $d2 $6a $44

    sla l                                         ; $4445: $cb $25
    rla                                           ; $4447: $17
    sla l                                         ; $4448: $cb $25
    rla                                           ; $444a: $17
    sla l                                         ; $444b: $cb $25
    rla                                           ; $444d: $17
    ld d, b                                       ; $444e: $50
    ld e, a                                       ; $444f: $5f
    ld bc, $0878                                  ; $4450: $01 $78 $08
    ld hl, $d407                                  ; $4453: $21 $07 $d4
    ld a, [hl+]                                   ; $4456: $2a
    ld h, [hl]                                    ; $4457: $66
    ld l, a                                       ; $4458: $6f
    bit 7, h                                      ; $4459: $cb $7c
    jr nz, jr_011_4467                            ; $445b: $20 $0a

    ld a, h                                       ; $445d: $7c
    cp $03                                        ; $445e: $fe $03
    jr c, jr_011_4464                             ; $4460: $38 $02

    ld a, $03                                     ; $4462: $3e $03

jr_011_4464:
    add a                                         ; $4464: $87
    add c                                         ; $4465: $81
    ld c, a                                       ; $4466: $4f

jr_011_4467:
    call Call_000_2798                            ; $4467: $cd $98 $27

Jump_011_446a:
jr_011_446a:
    ld hl, $d407                                  ; $446a: $21 $07 $d4
    ld a, [hl+]                                   ; $446d: $2a
    or [hl]                                       ; $446e: $b6
    jr z, jr_011_449f                             ; $446f: $28 $2e

    ld hl, $c322                                  ; $4471: $21 $22 $c3
    ld a, [hl+]                                   ; $4474: $2a
    ld d, [hl]                                    ; $4475: $56
    ld e, a                                       ; $4476: $5f
    ld a, e                                       ; $4477: $7b
    and $e0                                       ; $4478: $e6 $e0
    ld e, a                                       ; $447a: $5f
    ld hl, $d404                                  ; $447b: $21 $04 $d4
    ld a, [hl+]                                   ; $447e: $2a
    ld h, [hl]                                    ; $447f: $66
    ld l, a                                       ; $4480: $6f
    call Call_011_4961                            ; $4481: $cd $61 $49
    pop de                                        ; $4484: $d1
    ld a, e                                       ; $4485: $7b
    or a                                          ; $4486: $b7
    jr nz, jr_011_449e                            ; $4487: $20 $15

    ld a, h                                       ; $4489: $7c
    cp $10                                        ; $448a: $fe $10
    jr nc, jr_011_449e                            ; $448c: $30 $10

    sla l                                         ; $448e: $cb $25
    rla                                           ; $4490: $17
    sla l                                         ; $4491: $cb $25
    rla                                           ; $4493: $17
    sla l                                         ; $4494: $cb $25
    rla                                           ; $4496: $17
    ld e, a                                       ; $4497: $5f
    ld bc, $084e                                  ; $4498: $01 $4e $08
    call Call_000_2798                            ; $449b: $cd $98 $27

Jump_011_449e:
jr_011_449e:
    ret                                           ; $449e: $c9


jr_011_449f:
    pop de                                        ; $449f: $d1
    ret                                           ; $44a0: $c9


    ldh a, [$8c]                                  ; $44a1: $f0 $8c
    and $02                                       ; $44a3: $e6 $02
    jr nz, jr_011_44eb                            ; $44a5: $20 $44

    ld a, [$d420]                                 ; $44a7: $fa $20 $d4
    bit 7, a                                      ; $44aa: $cb $7f
    jr nz, jr_011_44b8                            ; $44ac: $20 $0a

    swap a                                        ; $44ae: $cb $37
    and $07                                       ; $44b0: $e6 $07
    ld c, a                                       ; $44b2: $4f
    ld a, [$d421]                                 ; $44b3: $fa $21 $d4
    jr jr_011_44c3                                ; $44b6: $18 $0b

jr_011_44b8:
    swap a                                        ; $44b8: $cb $37
    and $07                                       ; $44ba: $e6 $07
    add $08                                       ; $44bc: $c6 $08
    ld c, a                                       ; $44be: $4f
    ld a, [$d421]                                 ; $44bf: $fa $21 $d4
    inc a                                         ; $44c2: $3c

jr_011_44c3:
    and $3f                                       ; $44c3: $e6 $3f
    ld h, a                                       ; $44c5: $67
    ld l, $00                                     ; $44c6: $2e $00
    srl h                                         ; $44c8: $cb $3c
    rr l                                          ; $44ca: $cb $1d
    srl h                                         ; $44cc: $cb $3c
    rr l                                          ; $44ce: $cb $1d
    ld a, [$d41f]                                 ; $44d0: $fa $1f $d4
    and $3f                                       ; $44d3: $e6 $3f
    ld d, $d0                                     ; $44d5: $16 $d0
    ld e, a                                       ; $44d7: $5f
    add hl, de                                    ; $44d8: $19
    ld a, $03                                     ; $44d9: $3e $03
    ldh [$96], a                                  ; $44db: $e0 $96
    ldh [rSVBK], a                                ; $44dd: $e0 $70
    ld l, [hl]                                    ; $44df: $6e
    ld h, $d7                                     ; $44e0: $26 $d7
    ld a, $06                                     ; $44e2: $3e $06
    ldh [$96], a                                  ; $44e4: $e0 $96
    ldh [rSVBK], a                                ; $44e6: $e0 $70
    bit 7, [hl]                                   ; $44e8: $cb $7e
    ret nz                                        ; $44ea: $c0

jr_011_44eb:
    ld hl, $c320                                  ; $44eb: $21 $20 $c3
    ld a, [hl+]                                   ; $44ee: $2a
    ld d, [hl]                                    ; $44ef: $56
    ld e, a                                       ; $44f0: $5f
    ld a, e                                       ; $44f1: $7b
    and $e0                                       ; $44f2: $e6 $e0
    ld e, a                                       ; $44f4: $5f
    ld hl, $d41e                                  ; $44f5: $21 $1e $d4
    ld a, [hl+]                                   ; $44f8: $2a
    ld h, [hl]                                    ; $44f9: $66
    ld l, a                                       ; $44fa: $6f
    call Call_011_4961                            ; $44fb: $cd $61 $49
    ld a, h                                       ; $44fe: $7c
    inc a                                         ; $44ff: $3c
    cp $14                                        ; $4500: $fe $14
    jp nc, Jump_011_453a                          ; $4502: $d2 $3a $45

    ld a, h                                       ; $4505: $7c
    sla l                                         ; $4506: $cb $25
    rla                                           ; $4508: $17
    sla l                                         ; $4509: $cb $25
    rla                                           ; $450b: $17
    sla l                                         ; $450c: $cb $25
    rla                                           ; $450e: $17
    ld b, a                                       ; $450f: $47
    ld hl, $c322                                  ; $4510: $21 $22 $c3
    ld a, [hl+]                                   ; $4513: $2a
    ld d, [hl]                                    ; $4514: $56
    ld e, a                                       ; $4515: $5f
    ld a, e                                       ; $4516: $7b
    and $e0                                       ; $4517: $e6 $e0
    ld e, a                                       ; $4519: $5f
    ld hl, $d420                                  ; $451a: $21 $20 $d4
    ld a, [hl+]                                   ; $451d: $2a
    ld h, [hl]                                    ; $451e: $66
    ld l, a                                       ; $451f: $6f
    call Call_011_4961                            ; $4520: $cd $61 $49
    ld a, h                                       ; $4523: $7c
    cp $10                                        ; $4524: $fe $10
    jp nc, Jump_011_453a                          ; $4526: $d2 $3a $45

    sla l                                         ; $4529: $cb $25
    rla                                           ; $452b: $17
    sla l                                         ; $452c: $cb $25
    rla                                           ; $452e: $17
    sla l                                         ; $452f: $cb $25
    rla                                           ; $4531: $17
    ld d, b                                       ; $4532: $50
    ld e, a                                       ; $4533: $5f
    ld bc, $0878                                  ; $4534: $01 $78 $08
    call Call_000_2798                            ; $4537: $cd $98 $27

Jump_011_453a:
    ret                                           ; $453a: $c9


    ld hl, $c322                                  ; $453b: $21 $22 $c3
    ld a, [hl+]                                   ; $453e: $2a
    ld d, [hl]                                    ; $453f: $56
    ld e, a                                       ; $4540: $5f
    ld a, e                                       ; $4541: $7b
    and $e0                                       ; $4542: $e6 $e0
    ld e, a                                       ; $4544: $5f
    ld hl, $d428                                  ; $4545: $21 $28 $d4
    ld a, [hl+]                                   ; $4548: $2a
    ld h, [hl]                                    ; $4549: $66
    ld l, a                                       ; $454a: $6f
    or h                                          ; $454b: $b4
    jr z, jr_011_4598                             ; $454c: $28 $4a

    call Call_011_4961                            ; $454e: $cd $61 $49
    ld a, h                                       ; $4551: $7c
    cp $10                                        ; $4552: $fe $10
    jp nc, Jump_011_4598                          ; $4554: $d2 $98 $45

    ld de, $fea0                                  ; $4557: $11 $a0 $fe
    add hl, de                                    ; $455a: $19
    ld a, h                                       ; $455b: $7c
    sla l                                         ; $455c: $cb $25
    rla                                           ; $455e: $17
    sla l                                         ; $455f: $cb $25
    rla                                           ; $4561: $17
    sla l                                         ; $4562: $cb $25
    rla                                           ; $4564: $17
    ld b, a                                       ; $4565: $47
    ld hl, $c320                                  ; $4566: $21 $20 $c3
    ld a, [hl+]                                   ; $4569: $2a
    ld d, [hl]                                    ; $456a: $56
    ld e, a                                       ; $456b: $5f
    ld a, e                                       ; $456c: $7b
    and $e0                                       ; $456d: $e6 $e0
    ld e, a                                       ; $456f: $5f
    ld hl, $d426                                  ; $4570: $21 $26 $d4
    ld a, [hl+]                                   ; $4573: $2a
    ld h, [hl]                                    ; $4574: $66
    ld l, a                                       ; $4575: $6f
    call Call_011_4961                            ; $4576: $cd $61 $49
    ld de, $0020                                  ; $4579: $11 $20 $00
    add hl, de                                    ; $457c: $19
    ld a, h                                       ; $457d: $7c
    inc a                                         ; $457e: $3c
    cp $16                                        ; $457f: $fe $16
    jr nc, jr_011_4598                            ; $4581: $30 $15

    ld a, h                                       ; $4583: $7c
    sla l                                         ; $4584: $cb $25
    rla                                           ; $4586: $17
    sla l                                         ; $4587: $cb $25
    rla                                           ; $4589: $17
    sla l                                         ; $458a: $cb $25
    rla                                           ; $458c: $17
    ld d, a                                       ; $458d: $57
    ld e, b                                       ; $458e: $58
    ld bc, $083a                                  ; $458f: $01 $3a $08
    call Call_000_2798                            ; $4592: $cd $98 $27
    rst $18                                       ; $4595: $df

    db $28, $12

Jump_011_4598:
jr_011_4598:
    ret                                           ; $4598: $c9


    ld a, [$d4d5]                                 ; $4599: $fa $d5 $d4
    or a                                          ; $459c: $b7
    jr z, jr_011_45f1                             ; $459d: $28 $52

    ld hl, $c322                                  ; $459f: $21 $22 $c3
    ld a, [hl+]                                   ; $45a2: $2a
    ld d, [hl]                                    ; $45a3: $56
    ld e, a                                       ; $45a4: $5f
    ld a, e                                       ; $45a5: $7b
    and $e0                                       ; $45a6: $e6 $e0
    ld e, a                                       ; $45a8: $5f
    ld hl, $d43f                                  ; $45a9: $21 $3f $d4
    ld a, [hl+]                                   ; $45ac: $2a
    ld h, [hl]                                    ; $45ad: $66
    ld l, a                                       ; $45ae: $6f
    or h                                          ; $45af: $b4
    jr z, jr_011_45f0                             ; $45b0: $28 $3e

    call Call_011_4961                            ; $45b2: $cd $61 $49
    ld a, h                                       ; $45b5: $7c
    cp $10                                        ; $45b6: $fe $10
    jp nc, Jump_011_45f0                          ; $45b8: $d2 $f0 $45

    sla l                                         ; $45bb: $cb $25
    rla                                           ; $45bd: $17
    sla l                                         ; $45be: $cb $25
    rla                                           ; $45c0: $17
    sla l                                         ; $45c1: $cb $25
    rla                                           ; $45c3: $17
    ld b, a                                       ; $45c4: $47
    ld hl, $c320                                  ; $45c5: $21 $20 $c3
    ld a, [hl+]                                   ; $45c8: $2a
    ld d, [hl]                                    ; $45c9: $56
    ld e, a                                       ; $45ca: $5f
    ld a, e                                       ; $45cb: $7b
    and $e0                                       ; $45cc: $e6 $e0
    ld e, a                                       ; $45ce: $5f
    ld hl, $d43d                                  ; $45cf: $21 $3d $d4
    ld a, [hl+]                                   ; $45d2: $2a
    ld h, [hl]                                    ; $45d3: $66
    ld l, a                                       ; $45d4: $6f
    call Call_011_4961                            ; $45d5: $cd $61 $49
    ld a, h                                       ; $45d8: $7c
    inc a                                         ; $45d9: $3c
    cp $16                                        ; $45da: $fe $16
    jr nc, jr_011_45f0                            ; $45dc: $30 $12

    ld a, h                                       ; $45de: $7c
    sla l                                         ; $45df: $cb $25
    rla                                           ; $45e1: $17
    sla l                                         ; $45e2: $cb $25
    rla                                           ; $45e4: $17
    sla l                                         ; $45e5: $cb $25
    rla                                           ; $45e7: $17
    ld d, a                                       ; $45e8: $57
    ld e, b                                       ; $45e9: $58
    ld bc, $084e                                  ; $45ea: $01 $4e $08
    call Call_000_2798                            ; $45ed: $cd $98 $27

Jump_011_45f0:
jr_011_45f0:
    ret                                           ; $45f0: $c9


jr_011_45f1:
    ld hl, $c322                                  ; $45f1: $21 $22 $c3
    ld a, [hl+]                                   ; $45f4: $2a
    ld d, [hl]                                    ; $45f5: $56
    ld e, a                                       ; $45f6: $5f
    ld a, e                                       ; $45f7: $7b
    and $e0                                       ; $45f8: $e6 $e0
    ld e, a                                       ; $45fa: $5f
    ld hl, $d43f                                  ; $45fb: $21 $3f $d4
    ld a, [hl+]                                   ; $45fe: $2a
    ld h, [hl]                                    ; $45ff: $66
    ld l, a                                       ; $4600: $6f
    or h                                          ; $4601: $b4
    jr z, jr_011_464b                             ; $4602: $28 $47

    call Call_011_4961                            ; $4604: $cd $61 $49
    ld a, h                                       ; $4607: $7c
    cp $10                                        ; $4608: $fe $10
    jp nc, Jump_011_464b                          ; $460a: $d2 $4b $46

    ld de, $fec0                                  ; $460d: $11 $c0 $fe
    add hl, de                                    ; $4610: $19
    ld a, h                                       ; $4611: $7c
    sla l                                         ; $4612: $cb $25
    rla                                           ; $4614: $17
    sla l                                         ; $4615: $cb $25
    rla                                           ; $4617: $17
    sla l                                         ; $4618: $cb $25
    rla                                           ; $461a: $17
    ld b, a                                       ; $461b: $47
    ld hl, $c320                                  ; $461c: $21 $20 $c3
    ld a, [hl+]                                   ; $461f: $2a
    ld d, [hl]                                    ; $4620: $56
    ld e, a                                       ; $4621: $5f
    ld a, e                                       ; $4622: $7b
    and $e0                                       ; $4623: $e6 $e0
    ld e, a                                       ; $4625: $5f
    ld hl, $d43d                                  ; $4626: $21 $3d $d4
    ld a, [hl+]                                   ; $4629: $2a
    ld h, [hl]                                    ; $462a: $66
    ld l, a                                       ; $462b: $6f
    call Call_011_4961                            ; $462c: $cd $61 $49
    ld de, $0040                                  ; $462f: $11 $40 $00
    add hl, de                                    ; $4632: $19
    ld a, h                                       ; $4633: $7c
    inc a                                         ; $4634: $3c
    cp $16                                        ; $4635: $fe $16
    jr nc, jr_011_464b                            ; $4637: $30 $12

    ld a, h                                       ; $4639: $7c
    sla l                                         ; $463a: $cb $25
    rla                                           ; $463c: $17
    sla l                                         ; $463d: $cb $25
    rla                                           ; $463f: $17
    sla l                                         ; $4640: $cb $25
    rla                                           ; $4642: $17
    ld d, a                                       ; $4643: $57
    ld e, b                                       ; $4644: $58
    ld bc, $084c                                  ; $4645: $01 $4c $08
    call Call_000_2798                            ; $4648: $cd $98 $27

Jump_011_464b:
jr_011_464b:
    ret                                           ; $464b: $c9


    ld a, [$d4d4]                                 ; $464c: $fa $d4 $d4
    or a                                          ; $464f: $b7
    ret nz                                        ; $4650: $c0

    ld hl, $c322                                  ; $4651: $21 $22 $c3
    ld a, [hl+]                                   ; $4654: $2a
    ld d, [hl]                                    ; $4655: $56
    ld e, a                                       ; $4656: $5f
    ld a, e                                       ; $4657: $7b
    and $e0                                       ; $4658: $e6 $e0
    ld e, a                                       ; $465a: $5f
    ld hl, $d483                                  ; $465b: $21 $83 $d4
    ld a, [hl+]                                   ; $465e: $2a
    ld h, [hl]                                    ; $465f: $66
    ld l, a                                       ; $4660: $6f
    or h                                          ; $4661: $b4
    jr z, jr_011_46b1                             ; $4662: $28 $4d

    call Call_011_4961                            ; $4664: $cd $61 $49
    ld a, h                                       ; $4667: $7c
    cp $10                                        ; $4668: $fe $10
    jp nc, Jump_011_46b1                          ; $466a: $d2 $b1 $46

    sla l                                         ; $466d: $cb $25
    rla                                           ; $466f: $17
    sla l                                         ; $4670: $cb $25
    rla                                           ; $4672: $17
    sla l                                         ; $4673: $cb $25
    rla                                           ; $4675: $17
    ld b, a                                       ; $4676: $47
    ld hl, $c320                                  ; $4677: $21 $20 $c3
    ld a, [hl+]                                   ; $467a: $2a
    ld d, [hl]                                    ; $467b: $56
    ld e, a                                       ; $467c: $5f
    ld a, e                                       ; $467d: $7b
    and $e0                                       ; $467e: $e6 $e0
    ld e, a                                       ; $4680: $5f
    ld hl, $d481                                  ; $4681: $21 $81 $d4
    ld a, [hl+]                                   ; $4684: $2a
    ld h, [hl]                                    ; $4685: $66
    ld l, a                                       ; $4686: $6f
    call Call_011_4961                            ; $4687: $cd $61 $49
    ld a, h                                       ; $468a: $7c
    inc a                                         ; $468b: $3c
    cp $16                                        ; $468c: $fe $16
    jr nc, jr_011_46b1                            ; $468e: $30 $21

    ld a, h                                       ; $4690: $7c
    sla l                                         ; $4691: $cb $25
    rla                                           ; $4693: $17
    sla l                                         ; $4694: $cb $25
    rla                                           ; $4696: $17
    sla l                                         ; $4697: $cb $25
    rla                                           ; $4699: $17
    ld d, a                                       ; $469a: $57
    ld e, b                                       ; $469b: $58
    ld bc, $0400                                  ; $469c: $01 $00 $04
    ld a, [$c835]                                 ; $469f: $fa $35 $c8
    and $01                                       ; $46a2: $e6 $01
    or b                                          ; $46a4: $b0
    ld b, a                                       ; $46a5: $47
    ld a, [$d333]                                 ; $46a6: $fa $33 $d3
    or a                                          ; $46a9: $b7
    jr z, jr_011_46ae                             ; $46aa: $28 $02

    set 5, b                                      ; $46ac: $cb $e8

jr_011_46ae:
    call Call_000_26a4                            ; $46ae: $cd $a4 $26

Jump_011_46b1:
jr_011_46b1:
    ret                                           ; $46b1: $c9


    ld hl, $c322                                  ; $46b2: $21 $22 $c3
    ld a, [hl+]                                   ; $46b5: $2a
    ld d, [hl]                                    ; $46b6: $56
    ld e, a                                       ; $46b7: $5f
    ld a, e                                       ; $46b8: $7b
    and $e0                                       ; $46b9: $e6 $e0
    ld e, a                                       ; $46bb: $5f
    ld hl, $d377                                  ; $46bc: $21 $77 $d3
    ld a, [hl+]                                   ; $46bf: $2a
    ld h, [hl]                                    ; $46c0: $66
    ld l, a                                       ; $46c1: $6f
    or h                                          ; $46c2: $b4
    jr z, jr_011_4703                             ; $46c3: $28 $3e

    call Call_011_4961                            ; $46c5: $cd $61 $49
    ld a, h                                       ; $46c8: $7c
    cp $10                                        ; $46c9: $fe $10
    jp nc, Jump_011_4703                          ; $46cb: $d2 $03 $47

    sla l                                         ; $46ce: $cb $25
    rla                                           ; $46d0: $17
    sla l                                         ; $46d1: $cb $25
    rla                                           ; $46d3: $17
    sla l                                         ; $46d4: $cb $25
    rla                                           ; $46d6: $17
    ld b, a                                       ; $46d7: $47
    ld hl, $c320                                  ; $46d8: $21 $20 $c3
    ld a, [hl+]                                   ; $46db: $2a
    ld d, [hl]                                    ; $46dc: $56
    ld e, a                                       ; $46dd: $5f
    ld a, e                                       ; $46de: $7b
    and $e0                                       ; $46df: $e6 $e0
    ld e, a                                       ; $46e1: $5f
    ld hl, $d374                                  ; $46e2: $21 $74 $d3
    ld a, [hl+]                                   ; $46e5: $2a
    ld h, [hl]                                    ; $46e6: $66
    ld l, a                                       ; $46e7: $6f
    call Call_011_4961                            ; $46e8: $cd $61 $49
    ld a, h                                       ; $46eb: $7c
    inc a                                         ; $46ec: $3c
    cp $16                                        ; $46ed: $fe $16
    jr nc, jr_011_4703                            ; $46ef: $30 $12

    ld a, h                                       ; $46f1: $7c
    sla l                                         ; $46f2: $cb $25
    rla                                           ; $46f4: $17
    sla l                                         ; $46f5: $cb $25
    rla                                           ; $46f7: $17
    sla l                                         ; $46f8: $cb $25
    rla                                           ; $46fa: $17
    ld d, a                                       ; $46fb: $57
    ld e, b                                       ; $46fc: $58
    ld bc, $083e                                  ; $46fd: $01 $3e $08
    call Call_000_2798                            ; $4700: $cd $98 $27

Jump_011_4703:
jr_011_4703:
    ret                                           ; $4703: $c9


Call_011_4704:
    ld a, [$d438]                                 ; $4704: $fa $38 $d4
    cp $03                                        ; $4707: $fe $03
    ret nz                                        ; $4709: $c0

    ld hl, $c322                                  ; $470a: $21 $22 $c3
    ld a, [hl+]                                   ; $470d: $2a
    ld d, [hl]                                    ; $470e: $56
    ld e, a                                       ; $470f: $5f
    ld a, e                                       ; $4710: $7b
    and $e0                                       ; $4711: $e6 $e0
    ld e, a                                       ; $4713: $5f
    ld hl, $d424                                  ; $4714: $21 $24 $d4
    ld a, [hl+]                                   ; $4717: $2a
    ld h, [hl]                                    ; $4718: $66
    ld l, a                                       ; $4719: $6f
    or h                                          ; $471a: $b4
    jr z, jr_011_4763                             ; $471b: $28 $46

    call Call_011_4961                            ; $471d: $cd $61 $49
    ld a, h                                       ; $4720: $7c
    cp $10                                        ; $4721: $fe $10
    jp nc, Jump_011_4763                          ; $4723: $d2 $63 $47

    sla l                                         ; $4726: $cb $25
    rla                                           ; $4728: $17
    sla l                                         ; $4729: $cb $25
    rla                                           ; $472b: $17
    sla l                                         ; $472c: $cb $25
    rla                                           ; $472e: $17
    ld b, a                                       ; $472f: $47
    ld hl, $c320                                  ; $4730: $21 $20 $c3
    ld a, [hl+]                                   ; $4733: $2a
    ld d, [hl]                                    ; $4734: $56
    ld e, a                                       ; $4735: $5f
    ld a, e                                       ; $4736: $7b
    and $e0                                       ; $4737: $e6 $e0
    ld e, a                                       ; $4739: $5f
    ld hl, $d422                                  ; $473a: $21 $22 $d4
    ld a, [hl+]                                   ; $473d: $2a
    ld h, [hl]                                    ; $473e: $66
    ld l, a                                       ; $473f: $6f
    call Call_011_4961                            ; $4740: $cd $61 $49
    ld a, h                                       ; $4743: $7c
    inc a                                         ; $4744: $3c
    cp $16                                        ; $4745: $fe $16
    jr nc, jr_011_4763                            ; $4747: $30 $1a

    ld a, h                                       ; $4749: $7c
    sla l                                         ; $474a: $cb $25
    rla                                           ; $474c: $17
    sla l                                         ; $474d: $cb $25
    rla                                           ; $474f: $17
    sla l                                         ; $4750: $cb $25
    rla                                           ; $4752: $17
    ld d, a                                       ; $4753: $57
    ld e, b                                       ; $4754: $58
    rst $30                                       ; $4755: $f7
    ld h, b                                       ; $4756: $60
    add hl, bc                                    ; $4757: $09
    jr nz, jr_011_4764                            ; $4758: $20 $0a

    call Call_011_4c69                            ; $475a: $cd $69 $4c
    ld bc, $0b2c                                  ; $475d: $01 $2c $0b
    call Call_000_26a4                            ; $4760: $cd $a4 $26

Jump_011_4763:
jr_011_4763:
    ret                                           ; $4763: $c9


jr_011_4764:
    ld bc, $082c                                  ; $4764: $01 $2c $08
    call Call_000_2798                            ; $4767: $cd $98 $27
    rst $18                                       ; $476a: $df
    ld l, $12                                     ; $476b: $2e $12
    ret                                           ; $476d: $c9


    ld hl, $d401                                  ; $476e: $21 $01 $d4
    ld de, $d456                                  ; $4771: $11 $56 $d4
    ld a, [hl+]                                   ; $4774: $2a
    ld [de], a                                    ; $4775: $12
    inc de                                        ; $4776: $13
    ld a, [hl+]                                   ; $4777: $2a
    ld [de], a                                    ; $4778: $12
    inc de                                        ; $4779: $13
    inc hl                                        ; $477a: $23
    ld a, [hl+]                                   ; $477b: $2a
    ld [de], a                                    ; $477c: $12
    inc de                                        ; $477d: $13
    ld a, [hl]                                    ; $477e: $7e
    ld [de], a                                    ; $477f: $12
    ld hl, $d418                                  ; $4780: $21 $18 $d4
    ld a, [hl+]                                   ; $4783: $2a
    ld d, [hl]                                    ; $4784: $56
    ld e, a                                       ; $4785: $5f
    ld hl, $c000                                  ; $4786: $21 $00 $c0
    call Call_000_08ac                            ; $4789: $cd $ac $08
    ld a, l                                       ; $478c: $7d
    ld [$d45a], a                                 ; $478d: $ea $5a $d4
    ld a, h                                       ; $4790: $7c
    ld [$d45b], a                                 ; $4791: $ea $5b $d4
    ret                                           ; $4794: $c9


    ld a, [$d485]                                 ; $4795: $fa $85 $d4
    bit 4, a                                      ; $4798: $cb $67
    jr z, jr_011_47a2                             ; $479a: $28 $06

    call Call_011_4e5e                            ; $479c: $cd $5e $4e
    call Call_011_48ab                            ; $479f: $cd $ab $48

jr_011_47a2:
    ld hl, $d45a                                  ; $47a2: $21 $5a $d4
    ld a, [hl+]                                   ; $47a5: $2a
    ld b, [hl]                                    ; $47a6: $46
    ld c, a                                       ; $47a7: $4f
    ld hl, $d458                                  ; $47a8: $21 $58 $d4
    ld a, [hl+]                                   ; $47ab: $2a
    ld d, [hl]                                    ; $47ac: $56
    ld e, a                                       ; $47ad: $5f
    ld hl, $d404                                  ; $47ae: $21 $04 $d4
    ld a, [hl+]                                   ; $47b1: $2a
    ld h, [hl]                                    ; $47b2: $66
    ld l, a                                       ; $47b3: $6f
    call Call_000_08ac                            ; $47b4: $cd $ac $08
    push hl                                       ; $47b7: $e5
    ld hl, $d456                                  ; $47b8: $21 $56 $d4
    ld a, [hl+]                                   ; $47bb: $2a
    ld d, [hl]                                    ; $47bc: $56
    ld e, a                                       ; $47bd: $5f
    ld hl, $d401                                  ; $47be: $21 $01 $d4
    ld a, [hl+]                                   ; $47c1: $2a
    ld h, [hl]                                    ; $47c2: $66
    ld l, a                                       ; $47c3: $6f
    call Call_000_08ac                            ; $47c4: $cd $ac $08
    pop de                                        ; $47c7: $d1
    push de                                       ; $47c8: $d5
    push bc                                       ; $47c9: $c5
    call Call_000_11ac                            ; $47ca: $cd $ac $11
    ld b, h                                       ; $47cd: $44
    ld c, l                                       ; $47ce: $4d
    ld hl, $d45c                                  ; $47cf: $21 $5c $d4
    ld [hl], c                                    ; $47d2: $71
    inc hl                                        ; $47d3: $23
    ld [hl], b                                    ; $47d4: $70
    inc hl                                        ; $47d5: $23
    ld [hl], e                                    ; $47d6: $73
    inc hl                                        ; $47d7: $23
    ld [hl], d                                    ; $47d8: $72
    pop bc                                        ; $47d9: $c1
    pop hl                                        ; $47da: $e1
    ld a, $40                                     ; $47db: $3e $40
    add b                                         ; $47dd: $80
    ld b, a                                       ; $47de: $47
    call Call_000_11ac                            ; $47df: $cd $ac $11
    ld a, [$d45c]                                 ; $47e2: $fa $5c $d4
    ld c, a                                       ; $47e5: $4f
    ld a, [$d45d]                                 ; $47e6: $fa $5d $d4
    ld b, a                                       ; $47e9: $47
    add hl, bc                                    ; $47ea: $09
    push hl                                       ; $47eb: $e5
    ld hl, $d45e                                  ; $47ec: $21 $5e $d4
    ld a, [hl+]                                   ; $47ef: $2a
    ld h, [hl]                                    ; $47f0: $66
    ld l, a                                       ; $47f1: $6f
    add hl, de                                    ; $47f2: $19
    ld a, h                                       ; $47f3: $7c
    ldh [$b6], a                                  ; $47f4: $e0 $b6
    call Call_000_0c60                            ; $47f6: $cd $60 $0c
    ld a, h                                       ; $47f9: $7c
    bit 7, h                                      ; $47fa: $cb $7c
    jr z, jr_011_4808                             ; $47fc: $28 $0a

    inc sp                                        ; $47fe: $33
    inc sp                                        ; $47ff: $33
    ld a, $01                                     ; $4800: $3e $01
    ld [$d331], a                                 ; $4802: $ea $31 $d3
    jp Jump_011_489a                              ; $4805: $c3 $9a $48


jr_011_4808:
    or a                                          ; $4808: $b7
    jr nz, jr_011_4818                            ; $4809: $20 $0d

    ld a, l                                       ; $480b: $7d
    cp $08                                        ; $480c: $fe $08
    jr nc, jr_011_4818                            ; $480e: $30 $08

    inc sp                                        ; $4810: $33
    inc sp                                        ; $4811: $33
    ld de, $507c                                  ; $4812: $11 $7c $50
    jp Jump_011_4879                              ; $4815: $c3 $79 $48


jr_011_4818:
    ld de, $0280                                  ; $4818: $11 $80 $02
    add hl, de                                    ; $481b: $19
    ld de, $0002                                  ; $481c: $11 $02 $00
    srl h                                         ; $481f: $cb $3c
    rr l                                          ; $4821: $cb $1d
    srl h                                         ; $4823: $cb $3c
    rr l                                          ; $4825: $cb $1d
    srl h                                         ; $4827: $cb $3c
    rr l                                          ; $4829: $cb $1d
    ld d, h                                       ; $482b: $54
    ld e, l                                       ; $482c: $5d
    ld hl, $5000                                  ; $482d: $21 $00 $50
    call Call_000_09ae                            ; $4830: $cd $ae $09
    ld b, l                                       ; $4833: $45
    pop hl                                        ; $4834: $e1
    ld a, b                                       ; $4835: $78
    call Call_000_0bce                            ; $4836: $cd $ce $0b
    ld de, $0001                                  ; $4839: $11 $01 $00
    add hl, de                                    ; $483c: $19
    srl h                                         ; $483d: $cb $3c
    rr l                                          ; $483f: $cb $1d
    ld a, l                                       ; $4841: $7d
    add $50                                       ; $4842: $c6 $50
    ld c, a                                       ; $4844: $4f
    cp $a0                                        ; $4845: $fe $a0
    jr c, jr_011_4850                             ; $4847: $38 $07

    ld a, $01                                     ; $4849: $3e $01
    ld [$d331], a                                 ; $484b: $ea $31 $d3
    jr jr_011_489a                                ; $484e: $18 $4a

jr_011_4850:
    ld hl, $d407                                  ; $4850: $21 $07 $d4
    ld a, [hl+]                                   ; $4853: $2a
    ld d, [hl]                                    ; $4854: $56
    ld e, a                                       ; $4855: $5f
    ld hl, $0080                                  ; $4856: $21 $80 $00
    call Call_000_08ac                            ; $4859: $cd $ac $08
    ld a, b                                       ; $485c: $78
    call Call_000_0bce                            ; $485d: $cd $ce $0b
    ld de, $0001                                  ; $4860: $11 $01 $00
    add hl, de                                    ; $4863: $19
    sra h                                         ; $4864: $cb $2c
    rr l                                          ; $4866: $cb $1d
    ld de, $003c                                  ; $4868: $11 $3c $00
    add hl, de                                    ; $486b: $19
    bit 7, l                                      ; $486c: $cb $7d
    jr z, jr_011_4877                             ; $486e: $28 $07

    ld a, $01                                     ; $4870: $3e $01
    ld [$d331], a                                 ; $4872: $ea $31 $d3
    jr jr_011_489a                                ; $4875: $18 $23

jr_011_4877:
    ld d, c                                       ; $4877: $51
    ld e, l                                       ; $4878: $5d

Jump_011_4879:
    ld bc, $0830                                  ; $4879: $01 $30 $08
    ldh a, [$b6]                                  ; $487c: $f0 $b6
    cpl                                           ; $487e: $2f
    inc a                                         ; $487f: $3c
    cp $1f                                        ; $4880: $fe $1f
    jr c, jr_011_4886                             ; $4882: $38 $02

    ld a, $1f                                     ; $4884: $3e $1f

jr_011_4886:
    srl a                                         ; $4886: $cb $3f
    srl a                                         ; $4888: $cb $3f
    push hl                                       ; $488a: $e5
    ld hl, $48a3                                  ; $488b: $21 $a3 $48
    add l                                         ; $488e: $85
    ld l, a                                       ; $488f: $6f
    jr nc, jr_011_4893                            ; $4890: $30 $01

    inc h                                         ; $4892: $24

jr_011_4893:
    ld a, [hl]                                    ; $4893: $7e
    pop hl                                        ; $4894: $e1
    add c                                         ; $4895: $81
    ld c, a                                       ; $4896: $4f
    call Call_000_2798                            ; $4897: $cd $98 $27

Jump_011_489a:
jr_011_489a:
    ld a, [$d485]                                 ; $489a: $fa $85 $d4
    bit 4, a                                      ; $489d: $cb $67
    jp z, Jump_011_48a2                           ; $489f: $ca $a2 $48

Jump_011_48a2:
    ret                                           ; $48a2: $c9


    db $00, $02, $04, $04

    ld b, $06                                     ; $48a7: $06 $06
    ld b, $06                                     ; $48a9: $06 $06

Call_011_48ab:
    ld hl, $d45a                                  ; $48ab: $21 $5a $d4
    ld a, [hl+]                                   ; $48ae: $2a
    ld b, [hl]                                    ; $48af: $46
    ld c, a                                       ; $48b0: $4f
    ld hl, $d458                                  ; $48b1: $21 $58 $d4
    ld a, [hl+]                                   ; $48b4: $2a
    ld d, [hl]                                    ; $48b5: $56
    ld e, a                                       ; $48b6: $5f
    ld hl, $d377                                  ; $48b7: $21 $77 $d3
    ld a, [hl+]                                   ; $48ba: $2a
    ld h, [hl]                                    ; $48bb: $66
    ld l, a                                       ; $48bc: $6f
    call Call_000_08ac                            ; $48bd: $cd $ac $08
    push hl                                       ; $48c0: $e5
    ld hl, $d456                                  ; $48c1: $21 $56 $d4
    ld a, [hl+]                                   ; $48c4: $2a
    ld d, [hl]                                    ; $48c5: $56
    ld e, a                                       ; $48c6: $5f
    ld hl, $d374                                  ; $48c7: $21 $74 $d3
    ld a, [hl+]                                   ; $48ca: $2a
    ld h, [hl]                                    ; $48cb: $66
    ld l, a                                       ; $48cc: $6f
    call Call_000_08ac                            ; $48cd: $cd $ac $08
    pop de                                        ; $48d0: $d1
    push de                                       ; $48d1: $d5
    push bc                                       ; $48d2: $c5
    call Call_000_11ac                            ; $48d3: $cd $ac $11
    ld b, h                                       ; $48d6: $44
    ld c, l                                       ; $48d7: $4d
    ld hl, $d45c                                  ; $48d8: $21 $5c $d4
    ld [hl], c                                    ; $48db: $71
    inc hl                                        ; $48dc: $23
    ld [hl], b                                    ; $48dd: $70
    inc hl                                        ; $48de: $23
    ld [hl], e                                    ; $48df: $73
    inc hl                                        ; $48e0: $23
    ld [hl], d                                    ; $48e1: $72
    pop bc                                        ; $48e2: $c1
    pop hl                                        ; $48e3: $e1
    ld a, $40                                     ; $48e4: $3e $40
    add b                                         ; $48e6: $80
    ld b, a                                       ; $48e7: $47
    call Call_000_11ac                            ; $48e8: $cd $ac $11
    ld a, [$d45c]                                 ; $48eb: $fa $5c $d4
    ld c, a                                       ; $48ee: $4f
    ld a, [$d45d]                                 ; $48ef: $fa $5d $d4
    ld b, a                                       ; $48f2: $47
    add hl, bc                                    ; $48f3: $09
    push hl                                       ; $48f4: $e5
    ld hl, $d45e                                  ; $48f5: $21 $5e $d4
    ld a, [hl+]                                   ; $48f8: $2a
    ld h, [hl]                                    ; $48f9: $66
    ld l, a                                       ; $48fa: $6f
    add hl, de                                    ; $48fb: $19
    call Call_000_0c60                            ; $48fc: $cd $60 $0c
    ld a, h                                       ; $48ff: $7c
    or a                                          ; $4900: $b7
    jr nz, jr_011_4910                            ; $4901: $20 $0d

    ld a, l                                       ; $4903: $7d
    cp $10                                        ; $4904: $fe $10
    jr nc, jr_011_4910                            ; $4906: $30 $08

    add sp, $02                                   ; $4908: $e8 $02
    ld de, $507c                                  ; $490a: $11 $7c $50
    jp Jump_011_495a                              ; $490d: $c3 $5a $49


jr_011_4910:
    ld de, $0280                                  ; $4910: $11 $80 $02
    add hl, de                                    ; $4913: $19
    ld de, $0002                                  ; $4914: $11 $02 $00
    srl h                                         ; $4917: $cb $3c
    rr l                                          ; $4919: $cb $1d
    srl h                                         ; $491b: $cb $3c
    rr l                                          ; $491d: $cb $1d
    srl h                                         ; $491f: $cb $3c
    rr l                                          ; $4921: $cb $1d
    ld d, h                                       ; $4923: $54
    ld e, l                                       ; $4924: $5d
    ld hl, $5000                                  ; $4925: $21 $00 $50
    call Call_000_09ae                            ; $4928: $cd $ae $09
    ld b, l                                       ; $492b: $45
    pop hl                                        ; $492c: $e1
    ld a, b                                       ; $492d: $78
    call Call_000_0bce                            ; $492e: $cd $ce $0b
    ld de, $0001                                  ; $4931: $11 $01 $00
    add hl, de                                    ; $4934: $19
    sra h                                         ; $4935: $cb $2c
    rr l                                          ; $4937: $cb $1d
    ld a, l                                       ; $4939: $7d
    add $50                                       ; $493a: $c6 $50
    ld c, a                                       ; $493c: $4f
    ld hl, $d37a                                  ; $493d: $21 $7a $d3
    ld a, [hl+]                                   ; $4940: $2a
    ld d, [hl]                                    ; $4941: $56
    ld e, a                                       ; $4942: $5f
    ld hl, $0080                                  ; $4943: $21 $80 $00
    call Call_000_08ac                            ; $4946: $cd $ac $08
    ld a, b                                       ; $4949: $78
    call Call_000_0bce                            ; $494a: $cd $ce $0b
    ld de, $0001                                  ; $494d: $11 $01 $00
    add hl, de                                    ; $4950: $19
    sra h                                         ; $4951: $cb $2c
    rr l                                          ; $4953: $cb $1d
    ld a, l                                       ; $4955: $7d
    add $3c                                       ; $4956: $c6 $3c
    ld d, c                                       ; $4958: $51
    ld e, a                                       ; $4959: $5f

Jump_011_495a:
    ld bc, $083e                                  ; $495a: $01 $3e $08
    call Call_000_2798                            ; $495d: $cd $98 $27
    ret                                           ; $4960: $c9


Call_011_4961:
    ld a, d                                       ; $4961: $7a
    or e                                          ; $4962: $b3
    ret z                                         ; $4963: $c8

    ld a, e                                       ; $4964: $7b
    cpl                                           ; $4965: $2f
    add $01                                       ; $4966: $c6 $01
    ld e, a                                       ; $4968: $5f
    ld a, d                                       ; $4969: $7a
    sbc $00                                       ; $496a: $de $00
    cpl                                           ; $496c: $2f
    ld d, a                                       ; $496d: $57
    add hl, de                                    ; $496e: $19
    ret                                           ; $496f: $c9


    call Call_011_422f                            ; $4970: $cd $2f $42
    ld a, [$d485]                                 ; $4973: $fa $85 $d4
    bit 4, a                                      ; $4976: $cb $67
    call nz, Call_011_4e5e                        ; $4978: $c4 $5e $4e
    call Call_011_4c12                            ; $497b: $cd $12 $4c
    ld hl, $4984                                  ; $497e: $21 $84 $49
    jp Jump_011_4d79                              ; $4981: $c3 $79 $4d


    ld c, a                                       ; $4984: $4f
    ld c, [hl]                                    ; $4985: $4e

    db $d0, $4a, $7e, $4a, $94, $49, $68, $4b, $c7, $4b

    dec [hl]                                      ; $4990: $35
    ld c, d                                       ; $4991: $4a
    ld c, a                                       ; $4992: $4f
    ld c, [hl]                                    ; $4993: $4e

    ld a, [$d441]                                 ; $4994: $fa $41 $d4
    ld d, a                                       ; $4997: $57
    ld e, $00                                     ; $4998: $1e $00
    ld hl, $d401                                  ; $499a: $21 $01 $d4
    ld a, [hl+]                                   ; $499d: $2a
    ld h, [hl]                                    ; $499e: $66
    ld l, a                                       ; $499f: $6f
    call Call_011_4961                            ; $49a0: $cd $61 $49
    ld a, h                                       ; $49a3: $7c
    inc a                                         ; $49a4: $3c
    cp $06                                        ; $49a5: $fe $06
    jp nc, Jump_011_4a32                          ; $49a7: $d2 $32 $4a

    ld a, l                                       ; $49aa: $7d
    srl h                                         ; $49ab: $cb $3c
    rra                                           ; $49ad: $1f
    srl h                                         ; $49ae: $cb $3c
    rra                                           ; $49b0: $1f
    srl h                                         ; $49b1: $cb $3c
    rra                                           ; $49b3: $1f
    ld b, a                                       ; $49b4: $47
    push bc                                       ; $49b5: $c5
    ld a, [$d442]                                 ; $49b6: $fa $42 $d4
    ld d, a                                       ; $49b9: $57
    ld e, $00                                     ; $49ba: $1e $00
    ld hl, $d404                                  ; $49bc: $21 $04 $d4
    ld a, [hl+]                                   ; $49bf: $2a
    ld h, [hl]                                    ; $49c0: $66
    ld l, a                                       ; $49c1: $6f
    call Call_011_4961                            ; $49c2: $cd $61 $49
    ld a, l                                       ; $49c5: $7d
    and $f8                                       ; $49c6: $e6 $f8
    ld l, a                                       ; $49c8: $6f
    push hl                                       ; $49c9: $e5
    ld hl, $d407                                  ; $49ca: $21 $07 $d4
    ld a, [hl+]                                   ; $49cd: $2a
    ld h, [hl]                                    ; $49ce: $66
    ld l, a                                       ; $49cf: $6f
    ld a, l                                       ; $49d0: $7d
    and $f8                                       ; $49d1: $e6 $f8
    ld e, a                                       ; $49d3: $5f
    ld d, h                                       ; $49d4: $54
    pop hl                                        ; $49d5: $e1
    call Call_011_4961                            ; $49d6: $cd $61 $49
    ld a, h                                       ; $49d9: $7c
    cp $04                                        ; $49da: $fe $04
    jp nc, Jump_011_4a05                          ; $49dc: $d2 $05 $4a

    ld a, l                                       ; $49df: $7d
    srl h                                         ; $49e0: $cb $3c
    rra                                           ; $49e2: $1f
    srl h                                         ; $49e3: $cb $3c
    rra                                           ; $49e5: $1f
    srl h                                         ; $49e6: $cb $3c
    rra                                           ; $49e8: $1f
    ld d, b                                       ; $49e9: $50
    ld e, a                                       ; $49ea: $5f
    ld bc, $0878                                  ; $49eb: $01 $78 $08
    ld hl, $d407                                  ; $49ee: $21 $07 $d4
    ld a, [hl+]                                   ; $49f1: $2a
    ld h, [hl]                                    ; $49f2: $66
    ld l, a                                       ; $49f3: $6f
    bit 7, h                                      ; $49f4: $cb $7c
    jr nz, jr_011_4a02                            ; $49f6: $20 $0a

    ld a, h                                       ; $49f8: $7c
    cp $03                                        ; $49f9: $fe $03
    jr c, jr_011_49ff                             ; $49fb: $38 $02

    ld a, $03                                     ; $49fd: $3e $03

jr_011_49ff:
    add a                                         ; $49ff: $87
    add c                                         ; $4a00: $81
    ld c, a                                       ; $4a01: $4f

jr_011_4a02:
    call Call_000_2798                            ; $4a02: $cd $98 $27

Jump_011_4a05:
    ld hl, $d407                                  ; $4a05: $21 $07 $d4
    ld a, [hl+]                                   ; $4a08: $2a
    or [hl]                                       ; $4a09: $b6
    jr z, jr_011_4a33                             ; $4a0a: $28 $27

    ld a, [$d442]                                 ; $4a0c: $fa $42 $d4
    ld d, a                                       ; $4a0f: $57
    ld e, $00                                     ; $4a10: $1e $00
    ld hl, $d404                                  ; $4a12: $21 $04 $d4
    ld a, [hl+]                                   ; $4a15: $2a
    ld h, [hl]                                    ; $4a16: $66
    ld l, a                                       ; $4a17: $6f
    call Call_011_4961                            ; $4a18: $cd $61 $49
    pop de                                        ; $4a1b: $d1
    ld a, h                                       ; $4a1c: $7c
    cp $04                                        ; $4a1d: $fe $04
    jr nc, jr_011_4a32                            ; $4a1f: $30 $11

    ld a, l                                       ; $4a21: $7d
    srl h                                         ; $4a22: $cb $3c
    rra                                           ; $4a24: $1f
    srl h                                         ; $4a25: $cb $3c
    rra                                           ; $4a27: $1f
    srl h                                         ; $4a28: $cb $3c
    rra                                           ; $4a2a: $1f
    ld e, a                                       ; $4a2b: $5f
    ld bc, $084e                                  ; $4a2c: $01 $4e $08
    call Call_000_2798                            ; $4a2f: $cd $98 $27

Jump_011_4a32:
jr_011_4a32:
    ret                                           ; $4a32: $c9


jr_011_4a33:
    pop de                                        ; $4a33: $d1
    ret                                           ; $4a34: $c9


    ld a, [$d441]                                 ; $4a35: $fa $41 $d4
    ld d, a                                       ; $4a38: $57
    ld e, $00                                     ; $4a39: $1e $00
    ld hl, $d41e                                  ; $4a3b: $21 $1e $d4
    ld a, [hl+]                                   ; $4a3e: $2a
    ld h, [hl]                                    ; $4a3f: $66
    ld l, a                                       ; $4a40: $6f
    call Call_011_4961                            ; $4a41: $cd $61 $49
    ld a, h                                       ; $4a44: $7c
    inc a                                         ; $4a45: $3c
    cp $06                                        ; $4a46: $fe $06
    jp nc, Jump_011_4a7d                          ; $4a48: $d2 $7d $4a

    ld a, l                                       ; $4a4b: $7d
    srl h                                         ; $4a4c: $cb $3c
    rra                                           ; $4a4e: $1f
    srl h                                         ; $4a4f: $cb $3c
    rra                                           ; $4a51: $1f
    srl h                                         ; $4a52: $cb $3c
    rra                                           ; $4a54: $1f
    ld b, a                                       ; $4a55: $47
    ld a, [$d442]                                 ; $4a56: $fa $42 $d4
    ld d, a                                       ; $4a59: $57
    ld e, $00                                     ; $4a5a: $1e $00
    ld hl, $d420                                  ; $4a5c: $21 $20 $d4
    ld a, [hl+]                                   ; $4a5f: $2a
    ld h, [hl]                                    ; $4a60: $66
    ld l, a                                       ; $4a61: $6f
    call Call_011_4961                            ; $4a62: $cd $61 $49
    ld a, h                                       ; $4a65: $7c
    cp $04                                        ; $4a66: $fe $04
    jp nc, Jump_011_4a7d                          ; $4a68: $d2 $7d $4a

    ld a, l                                       ; $4a6b: $7d
    srl h                                         ; $4a6c: $cb $3c
    rra                                           ; $4a6e: $1f
    srl h                                         ; $4a6f: $cb $3c
    rra                                           ; $4a71: $1f
    srl h                                         ; $4a72: $cb $3c
    rra                                           ; $4a74: $1f
    ld d, b                                       ; $4a75: $50
    ld e, a                                       ; $4a76: $5f
    ld bc, $0878                                  ; $4a77: $01 $78 $08
    call Call_000_2798                            ; $4a7a: $cd $98 $27

Jump_011_4a7d:
    ret                                           ; $4a7d: $c9


    ld a, [$d442]                                 ; $4a7e: $fa $42 $d4
    ld d, a                                       ; $4a81: $57
    ld e, $00                                     ; $4a82: $1e $00
    ld hl, $d428                                  ; $4a84: $21 $28 $d4
    ld a, [hl+]                                   ; $4a87: $2a
    ld h, [hl]                                    ; $4a88: $66
    ld l, a                                       ; $4a89: $6f
    or h                                          ; $4a8a: $b4
    jr z, jr_011_4acf                             ; $4a8b: $28 $42

    call Call_011_4961                            ; $4a8d: $cd $61 $49
    ld a, h                                       ; $4a90: $7c
    cp $04                                        ; $4a91: $fe $04
    jp nc, Jump_011_4acf                          ; $4a93: $d2 $cf $4a

    ld de, $ffa8                                  ; $4a96: $11 $a8 $ff
    add hl, de                                    ; $4a99: $19
    ld a, l                                       ; $4a9a: $7d
    srl h                                         ; $4a9b: $cb $3c
    rra                                           ; $4a9d: $1f
    srl h                                         ; $4a9e: $cb $3c
    rra                                           ; $4aa0: $1f
    srl h                                         ; $4aa1: $cb $3c
    rra                                           ; $4aa3: $1f
    ld b, a                                       ; $4aa4: $47
    ld a, [$d441]                                 ; $4aa5: $fa $41 $d4
    ld d, a                                       ; $4aa8: $57
    ld e, $00                                     ; $4aa9: $1e $00
    ld hl, $d426                                  ; $4aab: $21 $26 $d4
    ld a, [hl+]                                   ; $4aae: $2a
    ld h, [hl]                                    ; $4aaf: $66
    ld l, a                                       ; $4ab0: $6f
    call Call_011_4961                            ; $4ab1: $cd $61 $49
    ld a, h                                       ; $4ab4: $7c
    inc a                                         ; $4ab5: $3c
    cp $06                                        ; $4ab6: $fe $06
    jr nc, jr_011_4acf                            ; $4ab8: $30 $15

    ld a, l                                       ; $4aba: $7d
    srl h                                         ; $4abb: $cb $3c
    rra                                           ; $4abd: $1f
    srl h                                         ; $4abe: $cb $3c
    rra                                           ; $4ac0: $1f
    srl h                                         ; $4ac1: $cb $3c
    rra                                           ; $4ac3: $1f
    ld d, a                                       ; $4ac4: $57
    ld e, b                                       ; $4ac5: $58
    ld bc, $083a                                  ; $4ac6: $01 $3a $08
    call Call_000_2798                            ; $4ac9: $cd $98 $27
    rst $18                                       ; $4acc: $df

    db $28, $12

Jump_011_4acf:
jr_011_4acf:
    ret                                           ; $4acf: $c9


    ld a, [$d4d5]                                 ; $4ad0: $fa $d5 $d4
    or a                                          ; $4ad3: $b7
    jr z, jr_011_4b15                             ; $4ad4: $28 $3f

    ld a, [$d442]                                 ; $4ad6: $fa $42 $d4
    ld d, a                                       ; $4ad9: $57
    ld e, $00                                     ; $4ada: $1e $00
    ld hl, $d43f                                  ; $4adc: $21 $3f $d4
    ld a, [hl+]                                   ; $4adf: $2a
    ld h, [hl]                                    ; $4ae0: $66
    ld l, a                                       ; $4ae1: $6f
    or h                                          ; $4ae2: $b4
    jr z, jr_011_4b14                             ; $4ae3: $28 $2f

    call Call_011_4961                            ; $4ae5: $cd $61 $49
    ld a, l                                       ; $4ae8: $7d
    srl h                                         ; $4ae9: $cb $3c
    rra                                           ; $4aeb: $1f
    srl h                                         ; $4aec: $cb $3c
    rra                                           ; $4aee: $1f
    srl h                                         ; $4aef: $cb $3c
    rra                                           ; $4af1: $1f
    ld b, a                                       ; $4af2: $47
    ld a, [$d441]                                 ; $4af3: $fa $41 $d4
    ld d, a                                       ; $4af6: $57
    ld e, $00                                     ; $4af7: $1e $00
    ld hl, $d43d                                  ; $4af9: $21 $3d $d4
    ld a, [hl+]                                   ; $4afc: $2a
    ld h, [hl]                                    ; $4afd: $66
    ld l, a                                       ; $4afe: $6f
    call Call_011_4961                            ; $4aff: $cd $61 $49
    ld a, l                                       ; $4b02: $7d
    srl h                                         ; $4b03: $cb $3c
    rra                                           ; $4b05: $1f
    srl h                                         ; $4b06: $cb $3c
    rra                                           ; $4b08: $1f
    srl h                                         ; $4b09: $cb $3c
    rra                                           ; $4b0b: $1f
    ld d, a                                       ; $4b0c: $57
    ld e, b                                       ; $4b0d: $58
    ld bc, $08de                                  ; $4b0e: $01 $de $08
    call Call_000_2798                            ; $4b11: $cd $98 $27

jr_011_4b14:
    ret                                           ; $4b14: $c9


jr_011_4b15:
    ld a, [$d442]                                 ; $4b15: $fa $42 $d4
    ld d, a                                       ; $4b18: $57
    ld e, $00                                     ; $4b19: $1e $00
    ld hl, $d43f                                  ; $4b1b: $21 $3f $d4
    ld a, [hl+]                                   ; $4b1e: $2a
    ld h, [hl]                                    ; $4b1f: $66
    ld l, a                                       ; $4b20: $6f
    or h                                          ; $4b21: $b4
    jr z, jr_011_4b67                             ; $4b22: $28 $43

    call Call_011_4961                            ; $4b24: $cd $61 $49
    ld de, $ff30                                  ; $4b27: $11 $30 $ff
    add hl, de                                    ; $4b2a: $19
    ld a, l                                       ; $4b2b: $7d
    srl h                                         ; $4b2c: $cb $3c
    rra                                           ; $4b2e: $1f
    srl h                                         ; $4b2f: $cb $3c
    rra                                           ; $4b31: $1f
    srl h                                         ; $4b32: $cb $3c
    rra                                           ; $4b34: $1f
    ld b, a                                       ; $4b35: $47
    ld a, [$d441]                                 ; $4b36: $fa $41 $d4
    ld d, a                                       ; $4b39: $57
    ld e, $00                                     ; $4b3a: $1e $00
    ld hl, $d43d                                  ; $4b3c: $21 $3d $d4
    ld a, [hl+]                                   ; $4b3f: $2a
    ld h, [hl]                                    ; $4b40: $66
    ld l, a                                       ; $4b41: $6f
    call Call_011_4961                            ; $4b42: $cd $61 $49
    ld de, $0008                                  ; $4b45: $11 $08 $00
    add hl, de                                    ; $4b48: $19
    ld a, l                                       ; $4b49: $7d
    srl h                                         ; $4b4a: $cb $3c
    rra                                           ; $4b4c: $1f
    srl h                                         ; $4b4d: $cb $3c
    rra                                           ; $4b4f: $1f
    srl h                                         ; $4b50: $cb $3c
    rra                                           ; $4b52: $1f
    ld d, a                                       ; $4b53: $57
    ld e, b                                       ; $4b54: $58
    push de                                       ; $4b55: $d5
    ld bc, $08ee                                  ; $4b56: $01 $ee $08
    call Call_000_2798                            ; $4b59: $cd $98 $27
    pop de                                        ; $4b5c: $d1
    ld a, e                                       ; $4b5d: $7b
    add $10                                       ; $4b5e: $c6 $10
    ld e, a                                       ; $4b60: $5f
    ld bc, $08fe                                  ; $4b61: $01 $fe $08
    call Call_000_2798                            ; $4b64: $cd $98 $27

jr_011_4b67:
    ret                                           ; $4b67: $c9


    ld a, [$d4d4]                                 ; $4b68: $fa $d4 $d4
    or a                                          ; $4b6b: $b7
    ret nz                                        ; $4b6c: $c0

    ld a, [$d442]                                 ; $4b6d: $fa $42 $d4
    ld d, a                                       ; $4b70: $57
    ld e, $00                                     ; $4b71: $1e $00
    ld hl, $d483                                  ; $4b73: $21 $83 $d4
    ld a, [hl+]                                   ; $4b76: $2a
    ld h, [hl]                                    ; $4b77: $66
    ld l, a                                       ; $4b78: $6f
    or h                                          ; $4b79: $b4
    jr z, jr_011_4bc6                             ; $4b7a: $28 $4a

    call Call_011_4961                            ; $4b7c: $cd $61 $49
    ld a, h                                       ; $4b7f: $7c
    cp $04                                        ; $4b80: $fe $04
    jp nc, Jump_011_4bc6                          ; $4b82: $d2 $c6 $4b

    ld a, l                                       ; $4b85: $7d
    srl h                                         ; $4b86: $cb $3c
    rra                                           ; $4b88: $1f
    srl h                                         ; $4b89: $cb $3c
    rra                                           ; $4b8b: $1f
    srl h                                         ; $4b8c: $cb $3c
    rra                                           ; $4b8e: $1f
    ld b, a                                       ; $4b8f: $47
    ld a, [$d441]                                 ; $4b90: $fa $41 $d4
    ld d, a                                       ; $4b93: $57
    ld e, $00                                     ; $4b94: $1e $00
    ld hl, $d481                                  ; $4b96: $21 $81 $d4
    ld a, [hl+]                                   ; $4b99: $2a
    ld h, [hl]                                    ; $4b9a: $66
    ld l, a                                       ; $4b9b: $6f
    call Call_011_4961                            ; $4b9c: $cd $61 $49
    ld a, h                                       ; $4b9f: $7c
    inc a                                         ; $4ba0: $3c
    cp $06                                        ; $4ba1: $fe $06
    jr nc, jr_011_4bc6                            ; $4ba3: $30 $21

    ld a, l                                       ; $4ba5: $7d
    srl h                                         ; $4ba6: $cb $3c
    rra                                           ; $4ba8: $1f
    srl h                                         ; $4ba9: $cb $3c
    rra                                           ; $4bab: $1f
    srl h                                         ; $4bac: $cb $3c
    rra                                           ; $4bae: $1f
    ld d, a                                       ; $4baf: $57
    ld e, b                                       ; $4bb0: $58
    ld bc, $0400                                  ; $4bb1: $01 $00 $04
    ld a, [$c835]                                 ; $4bb4: $fa $35 $c8
    and $01                                       ; $4bb7: $e6 $01
    or b                                          ; $4bb9: $b0
    ld b, a                                       ; $4bba: $47
    ld a, [$d333]                                 ; $4bbb: $fa $33 $d3
    or a                                          ; $4bbe: $b7
    jr z, jr_011_4bc3                             ; $4bbf: $28 $02

    set 5, b                                      ; $4bc1: $cb $e8

jr_011_4bc3:
    call Call_000_26a4                            ; $4bc3: $cd $a4 $26

Jump_011_4bc6:
jr_011_4bc6:
    ret                                           ; $4bc6: $c9


    ld a, [$d442]                                 ; $4bc7: $fa $42 $d4
    ld d, a                                       ; $4bca: $57
    ld e, $00                                     ; $4bcb: $1e $00
    ld hl, $d377                                  ; $4bcd: $21 $77 $d3
    ld a, [hl+]                                   ; $4bd0: $2a
    ld h, [hl]                                    ; $4bd1: $66
    ld l, a                                       ; $4bd2: $6f
    or h                                          ; $4bd3: $b4
    jr z, jr_011_4c11                             ; $4bd4: $28 $3b

    call Call_011_4961                            ; $4bd6: $cd $61 $49
    ld a, h                                       ; $4bd9: $7c
    cp $04                                        ; $4bda: $fe $04
    jp nc, Jump_011_4c11                          ; $4bdc: $d2 $11 $4c

    ld a, l                                       ; $4bdf: $7d
    srl h                                         ; $4be0: $cb $3c
    rra                                           ; $4be2: $1f
    srl h                                         ; $4be3: $cb $3c
    rra                                           ; $4be5: $1f
    srl h                                         ; $4be6: $cb $3c
    rra                                           ; $4be8: $1f
    ld b, a                                       ; $4be9: $47
    ld a, [$d441]                                 ; $4bea: $fa $41 $d4
    ld d, a                                       ; $4bed: $57
    ld e, $00                                     ; $4bee: $1e $00
    ld hl, $d374                                  ; $4bf0: $21 $74 $d3
    ld a, [hl+]                                   ; $4bf3: $2a
    ld h, [hl]                                    ; $4bf4: $66
    ld l, a                                       ; $4bf5: $6f
    call Call_011_4961                            ; $4bf6: $cd $61 $49
    ld a, h                                       ; $4bf9: $7c
    inc a                                         ; $4bfa: $3c
    cp $06                                        ; $4bfb: $fe $06
    jr nc, jr_011_4c11                            ; $4bfd: $30 $12

    ld a, l                                       ; $4bff: $7d
    srl h                                         ; $4c00: $cb $3c
    rra                                           ; $4c02: $1f
    srl h                                         ; $4c03: $cb $3c
    rra                                           ; $4c05: $1f
    srl h                                         ; $4c06: $cb $3c
    rra                                           ; $4c08: $1f
    ld d, a                                       ; $4c09: $57
    ld e, b                                       ; $4c0a: $58
    ld bc, $083e                                  ; $4c0b: $01 $3e $08
    call Call_000_2798                            ; $4c0e: $cd $98 $27

Jump_011_4c11:
jr_011_4c11:
    ret                                           ; $4c11: $c9


Call_011_4c12:
    ld a, [$d438]                                 ; $4c12: $fa $38 $d4
    cp $03                                        ; $4c15: $fe $03
    ret nz                                        ; $4c17: $c0

    ld a, [$d442]                                 ; $4c18: $fa $42 $d4
    ld d, a                                       ; $4c1b: $57
    ld e, $00                                     ; $4c1c: $1e $00
    ld hl, $d424                                  ; $4c1e: $21 $24 $d4
    ld a, [hl+]                                   ; $4c21: $2a
    ld h, [hl]                                    ; $4c22: $66
    ld l, a                                       ; $4c23: $6f
    or h                                          ; $4c24: $b4
    jr z, jr_011_4c5e                             ; $4c25: $28 $37

    call Call_011_4961                            ; $4c27: $cd $61 $49
    ld a, l                                       ; $4c2a: $7d
    srl h                                         ; $4c2b: $cb $3c
    rra                                           ; $4c2d: $1f
    srl h                                         ; $4c2e: $cb $3c
    rra                                           ; $4c30: $1f
    srl h                                         ; $4c31: $cb $3c
    rra                                           ; $4c33: $1f
    ld b, a                                       ; $4c34: $47
    ld a, [$d441]                                 ; $4c35: $fa $41 $d4
    ld d, a                                       ; $4c38: $57
    ld e, $00                                     ; $4c39: $1e $00
    ld hl, $d422                                  ; $4c3b: $21 $22 $d4
    ld a, [hl+]                                   ; $4c3e: $2a
    ld h, [hl]                                    ; $4c3f: $66
    ld l, a                                       ; $4c40: $6f
    call Call_011_4961                            ; $4c41: $cd $61 $49
    ld a, l                                       ; $4c44: $7d
    srl h                                         ; $4c45: $cb $3c
    rra                                           ; $4c47: $1f
    srl h                                         ; $4c48: $cb $3c
    rra                                           ; $4c4a: $1f
    srl h                                         ; $4c4b: $cb $3c
    rra                                           ; $4c4d: $1f
    ld d, a                                       ; $4c4e: $57
    ld e, b                                       ; $4c4f: $58
    rst $30                                       ; $4c50: $f7
    ld h, b                                       ; $4c51: $60
    add hl, bc                                    ; $4c52: $09
    jr nz, jr_011_4c5f                            ; $4c53: $20 $0a

    call Call_011_4c69                            ; $4c55: $cd $69 $4c
    ld bc, $0b2c                                  ; $4c58: $01 $2c $0b
    call Call_000_26a4                            ; $4c5b: $cd $a4 $26

jr_011_4c5e:
    ret                                           ; $4c5e: $c9


jr_011_4c5f:
    ld bc, $082c                                  ; $4c5f: $01 $2c $08
    call Call_000_2798                            ; $4c62: $cd $98 $27
    rst $18                                       ; $4c65: $df
    ld l, $12                                     ; $4c66: $2e $12
    ret                                           ; $4c68: $c9


Call_011_4c69:
    push hl                                       ; $4c69: $e5
    ldh a, [$8c]                                  ; $4c6a: $f0 $8c
    and $3f                                       ; $4c6c: $e6 $3f
    ld hl, $4c7b                                  ; $4c6e: $21 $7b $4c
    add l                                         ; $4c71: $85
    ld l, a                                       ; $4c72: $6f
    jr nc, jr_011_4c76                            ; $4c73: $30 $01

    inc h                                         ; $4c75: $24

jr_011_4c76:
    ld a, e                                       ; $4c76: $7b
    add [hl]                                      ; $4c77: $86
    ld e, a                                       ; $4c78: $5f
    pop hl                                        ; $4c79: $e1
    ret                                           ; $4c7a: $c9


    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    ld bc, $0101                                  ; $4c7e: $01 $01 $01
    ld [bc], a                                    ; $4c81: $02
    ld [bc], a                                    ; $4c82: $02
    ld [bc], a                                    ; $4c83: $02
    inc bc                                        ; $4c84: $03
    inc bc                                        ; $4c85: $03
    inc bc                                        ; $4c86: $03
    inc bc                                        ; $4c87: $03
    inc bc                                        ; $4c88: $03
    inc bc                                        ; $4c89: $03
    inc bc                                        ; $4c8a: $03
    inc bc                                        ; $4c8b: $03
    inc bc                                        ; $4c8c: $03
    inc bc                                        ; $4c8d: $03
    inc bc                                        ; $4c8e: $03
    inc bc                                        ; $4c8f: $03
    inc bc                                        ; $4c90: $03
    inc bc                                        ; $4c91: $03
    inc bc                                        ; $4c92: $03
    ld [bc], a                                    ; $4c93: $02
    ld [bc], a                                    ; $4c94: $02
    ld [bc], a                                    ; $4c95: $02
    ld bc, $0101                                  ; $4c96: $01 $01 $01
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    rst $38                                       ; $4c9e: $ff
    rst $38                                       ; $4c9f: $ff
    rst $38                                       ; $4ca0: $ff
    cp $fe                                        ; $4ca1: $fe $fe
    cp $fd                                        ; $4ca3: $fe $fd
    db $fd                                        ; $4ca5: $fd
    db $fd                                        ; $4ca6: $fd
    db $fd                                        ; $4ca7: $fd
    db $fd                                        ; $4ca8: $fd
    db $fd                                        ; $4ca9: $fd
    db $fd                                        ; $4caa: $fd
    db $fd                                        ; $4cab: $fd
    db $fd                                        ; $4cac: $fd
    db $fd                                        ; $4cad: $fd
    db $fd                                        ; $4cae: $fd
    db $fd                                        ; $4caf: $fd
    db $fd                                        ; $4cb0: $fd
    db $fd                                        ; $4cb1: $fd
    db $fd                                        ; $4cb2: $fd
    cp $fe                                        ; $4cb3: $fe $fe
    cp $ff                                        ; $4cb5: $fe $ff
    rst $38                                       ; $4cb7: $ff
    rst $38                                       ; $4cb8: $ff
    nop                                           ; $4cb9: $00
    nop                                           ; $4cba: $00

    ld a, [$d444]                                 ; $4cbb: $fa $44 $d4
    cp $ff                                        ; $4cbe: $fe $ff
    ret z                                         ; $4cc0: $c8

    or a                                          ; $4cc1: $b7
    jr z, jr_011_4ce8                             ; $4cc2: $28 $24

    ld de, $4c44                                  ; $4cc4: $11 $44 $4c
    ld bc, $0ace                                  ; $4cc7: $01 $ce $0a
    call Call_000_2798                            ; $4cca: $cd $98 $27
    ld de, $5444                                  ; $4ccd: $11 $44 $54
    ld bc, $2ace                                  ; $4cd0: $01 $ce $2a
    call Call_000_2798                            ; $4cd3: $cd $98 $27
    ld de, $4444                                  ; $4cd6: $11 $44 $44
    ld bc, $0ae4                                  ; $4cd9: $01 $e4 $0a
    call Call_000_2798                            ; $4cdc: $cd $98 $27
    ld de, $5c44                                  ; $4cdf: $11 $44 $5c
    ld bc, $2ae4                                  ; $4ce2: $01 $e4 $2a
    call Call_000_2798                            ; $4ce5: $cd $98 $27

jr_011_4ce8:
    ld hl, $d43f                                  ; $4ce8: $21 $3f $d4
    ld a, [hl+]                                   ; $4ceb: $2a
    ld d, [hl]                                    ; $4cec: $56
    ld e, a                                       ; $4ced: $5f
    ld hl, $d404                                  ; $4cee: $21 $04 $d4
    ld a, [hl+]                                   ; $4cf1: $2a
    ld h, [hl]                                    ; $4cf2: $66
    ld l, a                                       ; $4cf3: $6f
    call Call_000_08ac                            ; $4cf4: $cd $ac $08
    push hl                                       ; $4cf7: $e5
    bit 7, h                                      ; $4cf8: $cb $7c
    call nz, Call_011_4d61                        ; $4cfa: $c4 $61 $4d
    ld hl, $d43d                                  ; $4cfd: $21 $3d $d4
    ld a, [hl+]                                   ; $4d00: $2a
    ld d, [hl]                                    ; $4d01: $56
    ld e, a                                       ; $4d02: $5f
    ld hl, $d401                                  ; $4d03: $21 $01 $d4
    ld a, [hl+]                                   ; $4d06: $2a
    ld h, [hl]                                    ; $4d07: $66
    ld l, a                                       ; $4d08: $6f
    call Call_000_08ac                            ; $4d09: $cd $ac $08
    ld a, $50                                     ; $4d0c: $3e $50
    add l                                         ; $4d0e: $85
    ld b, a                                       ; $4d0f: $47
    ld hl, $d43f                                  ; $4d10: $21 $3f $d4
    ld a, [hl+]                                   ; $4d13: $2a
    ld d, [hl]                                    ; $4d14: $56
    ld e, a                                       ; $4d15: $5f
    inc de                                        ; $4d16: $13
    inc de                                        ; $4d17: $13
    inc de                                        ; $4d18: $13
    inc de                                        ; $4d19: $13
    inc de                                        ; $4d1a: $13
    inc de                                        ; $4d1b: $13
    inc de                                        ; $4d1c: $13
    ld hl, $d404                                  ; $4d1d: $21 $04 $d4
    ld a, [hl+]                                   ; $4d20: $2a
    ld h, [hl]                                    ; $4d21: $66
    ld l, a                                       ; $4d22: $6f
    call Call_000_08ac                            ; $4d23: $cd $ac $08
    push hl                                       ; $4d26: $e5
    push hl                                       ; $4d27: $e5
    ld hl, $d407                                  ; $4d28: $21 $07 $d4
    ld a, [hl+]                                   ; $4d2b: $2a
    ld d, [hl]                                    ; $4d2c: $56
    ld e, a                                       ; $4d2d: $5f
    pop hl                                        ; $4d2e: $e1
    call Call_000_08ac                            ; $4d2f: $cd $ac $08
    sra h                                         ; $4d32: $cb $2c
    rr l                                          ; $4d34: $cb $1d
    ld a, $40                                     ; $4d36: $3e $40
    add l                                         ; $4d38: $85
    ld e, a                                       ; $4d39: $5f
    ld d, b                                       ; $4d3a: $50
    push bc                                       ; $4d3b: $c5
    ld bc, $08c6                                  ; $4d3c: $01 $c6 $08
    call Call_000_2798                            ; $4d3f: $cd $98 $27
    pop bc                                        ; $4d42: $c1
    pop hl                                        ; $4d43: $e1
    ld a, [$d408]                                 ; $4d44: $fa $08 $d4
    bit 7, a                                      ; $4d47: $cb $7f
    jr nz, jr_011_4d5a                            ; $4d49: $20 $0f

    sra h                                         ; $4d4b: $cb $2c
    rr l                                          ; $4d4d: $cb $1d
    ld a, $40                                     ; $4d4f: $3e $40
    add l                                         ; $4d51: $85
    ld e, a                                       ; $4d52: $5f
    ld d, b                                       ; $4d53: $50
    ld bc, $08d6                                  ; $4d54: $01 $d6 $08
    call Call_000_2798                            ; $4d57: $cd $98 $27

jr_011_4d5a:
    pop hl                                        ; $4d5a: $e1
    bit 7, h                                      ; $4d5b: $cb $7c
    call z, Call_011_4d61                         ; $4d5d: $cc $61 $4d
    ret                                           ; $4d60: $c9


Call_011_4d61:
    ld a, [$d4d5]                                 ; $4d61: $fa $d5 $d4
    or a                                          ; $4d64: $b7
    ret nz                                        ; $4d65: $c0

    ld de, $5025                                  ; $4d66: $11 $25 $50
    ld bc, $08e6                                  ; $4d69: $01 $e6 $08
    call Call_000_2798                            ; $4d6c: $cd $98 $27
    ld de, $5035                                  ; $4d6f: $11 $35 $50
    ld bc, $08f6                                  ; $4d72: $01 $f6 $08
    call Call_000_2798                            ; $4d75: $cd $98 $27
    ret                                           ; $4d78: $c9


Jump_011_4d79:
    ld a, l                                       ; $4d79: $7d
    ld [$d47e], a                                 ; $4d7a: $ea $7e $d4
    ld a, h                                       ; $4d7d: $7c
    ld [$d47f], a                                 ; $4d7e: $ea $7f $d4
    ld hl, $d468                                  ; $4d81: $21 $68 $d4
    push hl                                       ; $4d84: $e5
    xor a                                         ; $4d85: $af
    inc hl                                        ; $4d86: $23
    inc hl                                        ; $4d87: $23
    ld [hl+], a                                   ; $4d88: $22
    inc hl                                        ; $4d89: $23
    inc hl                                        ; $4d8a: $23
    ld [hl+], a                                   ; $4d8b: $22
    inc hl                                        ; $4d8c: $23
    inc hl                                        ; $4d8d: $23
    ld [hl+], a                                   ; $4d8e: $22
    inc hl                                        ; $4d8f: $23
    inc hl                                        ; $4d90: $23
    ld [hl+], a                                   ; $4d91: $22
    inc hl                                        ; $4d92: $23
    inc hl                                        ; $4d93: $23
    ld [hl+], a                                   ; $4d94: $22
    inc hl                                        ; $4d95: $23
    inc hl                                        ; $4d96: $23
    ld [hl], a                                    ; $4d97: $77
    pop de                                        ; $4d98: $d1
    ld a, [$d485]                                 ; $4d99: $fa $85 $d4
    ld b, a                                       ; $4d9c: $47
    srl b                                         ; $4d9d: $cb $38
    jr nc, jr_011_4dae                            ; $4d9f: $30 $0d

    ld hl, $d43f                                  ; $4da1: $21 $3f $d4
    ld a, [hl+]                                   ; $4da4: $2a
    ld [de], a                                    ; $4da5: $12
    inc de                                        ; $4da6: $13
    ld a, [hl+]                                   ; $4da7: $2a
    ld [de], a                                    ; $4da8: $12
    inc de                                        ; $4da9: $13
    ld a, $01                                     ; $4daa: $3e $01
    ld [de], a                                    ; $4dac: $12
    inc de                                        ; $4dad: $13

jr_011_4dae:
    srl b                                         ; $4dae: $cb $38
    jr nc, jr_011_4dbf                            ; $4db0: $30 $0d

    ld hl, $d428                                  ; $4db2: $21 $28 $d4
    ld a, [hl+]                                   ; $4db5: $2a
    ld [de], a                                    ; $4db6: $12
    inc de                                        ; $4db7: $13
    ld a, [hl+]                                   ; $4db8: $2a
    ld [de], a                                    ; $4db9: $12
    inc de                                        ; $4dba: $13
    ld a, $02                                     ; $4dbb: $3e $02
    ld [de], a                                    ; $4dbd: $12
    inc de                                        ; $4dbe: $13

jr_011_4dbf:
    srl b                                         ; $4dbf: $cb $38
    jr nc, jr_011_4dd0                            ; $4dc1: $30 $0d

    ld hl, $d404                                  ; $4dc3: $21 $04 $d4
    ld a, [hl+]                                   ; $4dc6: $2a
    ld [de], a                                    ; $4dc7: $12
    inc de                                        ; $4dc8: $13
    ld a, [hl+]                                   ; $4dc9: $2a
    ld [de], a                                    ; $4dca: $12
    inc de                                        ; $4dcb: $13
    ld a, $03                                     ; $4dcc: $3e $03
    ld [de], a                                    ; $4dce: $12
    inc de                                        ; $4dcf: $13

jr_011_4dd0:
    srl b                                         ; $4dd0: $cb $38
    jr nc, jr_011_4de1                            ; $4dd2: $30 $0d

    ld hl, $d483                                  ; $4dd4: $21 $83 $d4
    ld a, [hl+]                                   ; $4dd7: $2a
    ld [de], a                                    ; $4dd8: $12
    inc de                                        ; $4dd9: $13
    ld a, [hl+]                                   ; $4dda: $2a
    ld [de], a                                    ; $4ddb: $12
    inc de                                        ; $4ddc: $13
    ld a, $04                                     ; $4ddd: $3e $04
    ld [de], a                                    ; $4ddf: $12
    inc de                                        ; $4de0: $13

jr_011_4de1:
    srl b                                         ; $4de1: $cb $38
    jr nc, jr_011_4df2                            ; $4de3: $30 $0d

    ld hl, $d377                                  ; $4de5: $21 $77 $d3
    ld a, [hl+]                                   ; $4de8: $2a
    ld [de], a                                    ; $4de9: $12
    inc de                                        ; $4dea: $13
    ld a, [hl+]                                   ; $4deb: $2a
    ld [de], a                                    ; $4dec: $12
    inc de                                        ; $4ded: $13
    ld a, $05                                     ; $4dee: $3e $05
    ld [de], a                                    ; $4df0: $12
    inc de                                        ; $4df1: $13

jr_011_4df2:
    srl b                                         ; $4df2: $cb $38
    jr nc, jr_011_4e03                            ; $4df4: $30 $0d

    ld hl, $d420                                  ; $4df6: $21 $20 $d4
    ld a, [hl+]                                   ; $4df9: $2a
    ld [de], a                                    ; $4dfa: $12
    inc de                                        ; $4dfb: $13
    ld a, [hl+]                                   ; $4dfc: $2a
    ld [de], a                                    ; $4dfd: $12
    inc de                                        ; $4dfe: $13
    ld a, $06                                     ; $4dff: $3e $06
    ld [de], a                                    ; $4e01: $12
    inc de                                        ; $4e02: $13

jr_011_4e03:
    ld hl, $d468                                  ; $4e03: $21 $68 $d4
    xor a                                         ; $4e06: $af
    ld [$d47a], a                                 ; $4e07: $ea $7a $d4
    ld [$d47b], a                                 ; $4e0a: $ea $7b $d4
    ld bc, $0600                                  ; $4e0d: $01 $00 $06

jr_011_4e10:
    ld a, [hl+]                                   ; $4e10: $2a
    ld e, a                                       ; $4e11: $5f
    ld a, [hl+]                                   ; $4e12: $2a
    ld d, a                                       ; $4e13: $57
    ld a, [hl+]                                   ; $4e14: $2a
    or a                                          ; $4e15: $b7
    jr z, jr_011_4e3a                             ; $4e16: $28 $22

    push hl                                       ; $4e18: $e5
    ld hl, $d47a                                  ; $4e19: $21 $7a $d4
    ld a, [hl+]                                   ; $4e1c: $2a
    ld h, [hl]                                    ; $4e1d: $66
    ld l, a                                       ; $4e1e: $6f
    call Call_000_08ac                            ; $4e1f: $cd $ac $08
    bit 7, h                                      ; $4e22: $cb $7c
    pop hl                                        ; $4e24: $e1
    jr z, jr_011_4e3a                             ; $4e25: $28 $13

    ld a, e                                       ; $4e27: $7b
    ld [$d47a], a                                 ; $4e28: $ea $7a $d4
    ld a, d                                       ; $4e2b: $7a
    ld [$d47b], a                                 ; $4e2c: $ea $7b $d4
    dec hl                                        ; $4e2f: $2b
    ld a, l                                       ; $4e30: $7d
    ld [$d47c], a                                 ; $4e31: $ea $7c $d4
    ld a, h                                       ; $4e34: $7c
    ld [$d47d], a                                 ; $4e35: $ea $7d $d4
    ld c, [hl]                                    ; $4e38: $4e
    inc hl                                        ; $4e39: $23

jr_011_4e3a:
    dec b                                         ; $4e3a: $05
    jr nz, jr_011_4e10                            ; $4e3b: $20 $d3

    ld a, c                                       ; $4e3d: $79
    or a                                          ; $4e3e: $b7
    ret z                                         ; $4e3f: $c8

    push hl                                       ; $4e40: $e5
    call Call_011_4e50                            ; $4e41: $cd $50 $4e
    ld hl, $d47c                                  ; $4e44: $21 $7c $d4
    ld a, [hl+]                                   ; $4e47: $2a
    ld h, [hl]                                    ; $4e48: $66
    ld l, a                                       ; $4e49: $6f
    xor a                                         ; $4e4a: $af
    ld [hl], a                                    ; $4e4b: $77
    pop hl                                        ; $4e4c: $e1
    jr jr_011_4e03                                ; $4e4d: $18 $b4

    ret                                           ; $4e4f: $c9


Call_011_4e50:
    ld b, $00                                     ; $4e50: $06 $00
    ld hl, $d47e                                  ; $4e52: $21 $7e $d4
    ld a, [hl+]                                   ; $4e55: $2a
    ld h, [hl]                                    ; $4e56: $66
    ld l, a                                       ; $4e57: $6f
    add hl, bc                                    ; $4e58: $09
    add hl, bc                                    ; $4e59: $09
    ld a, [hl+]                                   ; $4e5a: $2a
    ld h, [hl]                                    ; $4e5b: $66
    ld l, a                                       ; $4e5c: $6f
    jp hl                                         ; $4e5d: $e9


Call_011_4e5e:
    ld a, [$d480]                                 ; $4e5e: $fa $80 $d4
    and $1f                                       ; $4e61: $e6 $1f
    jr nz, jr_011_4e73                            ; $4e63: $20 $0e

    rst $18                                       ; $4e65: $df

    db $3e, $10

    ld a, [$d382]                                 ; $4e68: $fa $82 $d3
    or a                                          ; $4e6b: $b7
    jr z, jr_011_4e7c                             ; $4e6c: $28 $0e

    rst $18                                       ; $4e6e: $df

    db $2a, $12

    jr jr_011_4e80                                ; $4e71: $18 $0d

jr_011_4e73:
    ld hl, $d382                                  ; $4e73: $21 $82 $d3
    ld a, [hl]                                    ; $4e76: $7e
    or a                                          ; $4e77: $b7
    jr z, jr_011_4e80                             ; $4e78: $28 $06

    ld [hl], $00                                  ; $4e7a: $36 $00

jr_011_4e7c:
    xor a                                         ; $4e7c: $af
    rst $18                                       ; $4e7d: $df

    db $2c, $12

jr_011_4e80:
    ld a, [$d513]                                 ; $4e80: $fa $13 $d5
    or a                                          ; $4e83: $b7
    jr nz, jr_011_4e89                            ; $4e84: $20 $03

    rst $18                                       ; $4e86: $df

    db $40, $10

jr_011_4e89:
    rst $18                                       ; $4e89: $df

    db $1a, $08

    ld hl, $d513                                  ; $4e8c: $21 $13 $d5
    ld c, [hl]                                    ; $4e8f: $4e
    ld [hl], a                                    ; $4e90: $77
    or a                                          ; $4e91: $b7
    jr z, jr_011_4e9f                             ; $4e92: $28 $0b

    ld a, c                                       ; $4e94: $79
    or a                                          ; $4e95: $b7
    jr nz, jr_011_4e9f                            ; $4e96: $20 $07

    ld a, $01                                     ; $4e98: $3e $01
    rst $18                                       ; $4e9a: $df

    db $2c, $12

    rst $08                                       ; $4e9d: $cf

    db $56

jr_011_4e9f:
    ld a, [$d480]                                 ; $4e9f: $fa $80 $d4
    or a                                          ; $4ea2: $b7
    jr nz, jr_011_4ea5                            ; $4ea3: $20 $00

jr_011_4ea5:
    ld hl, $d480                                  ; $4ea5: $21 $80 $d4
    inc [hl]                                      ; $4ea8: $34
    ret                                           ; $4ea9: $c9


    ret                                           ; $4eaa: $c9


    ldh a, [$96]                                  ; $4eab: $f0 $96
    push af                                       ; $4ead: $f5
    call Call_000_0341                            ; $4eae: $cd $41 $03
    ld a, $01                                     ; $4eb1: $3e $01
    ldh [$96], a                                  ; $4eb3: $e0 $96
    ldh [rSVBK], a                                ; $4eb5: $e0 $70
    ld a, $01                                     ; $4eb7: $3e $01
    ldh [rVBK], a                                 ; $4eb9: $e0 $4f
    ld b, $00                                     ; $4ebb: $06 $00
    sla c                                         ; $4ebd: $cb $21
    rl b                                          ; $4ebf: $cb $10
    ld hl, $4f02                                  ; $4ec1: $21 $02 $4f
    add hl, bc                                    ; $4ec4: $09
    push de                                       ; $4ec5: $d5
    ld a, [hl+]                                   ; $4ec6: $2a
    ld h, [hl]                                    ; $4ec7: $66
    ld l, a                                       ; $4ec8: $6f
    ld de, $d000                                  ; $4ec9: $11 $00 $d0
    call Call_000_1f2f                            ; $4ecc: $cd $2f $1f
    pop de                                        ; $4ecf: $d1
    ld a, e                                       ; $4ed0: $7b
    sub $08                                       ; $4ed1: $d6 $08
    ld h, a                                       ; $4ed3: $67
    ld l, $00                                     ; $4ed4: $2e $00
    ld e, d                                       ; $4ed6: $5a
    ld d, $00                                     ; $4ed7: $16 $00
    sla e                                         ; $4ed9: $cb $23
    rl d                                          ; $4edb: $cb $12
    sla e                                         ; $4edd: $cb $23
    rl d                                          ; $4edf: $cb $12
    sla e                                         ; $4ee1: $cb $23
    rl d                                          ; $4ee3: $cb $12
    sla e                                         ; $4ee5: $cb $23
    rl d                                          ; $4ee7: $cb $12
    add hl, de                                    ; $4ee9: $19
    ld de, $8800                                  ; $4eea: $11 $00 $88
    add hl, de                                    ; $4eed: $19
    ld d, h                                       ; $4eee: $54
    ld e, l                                       ; $4eef: $5d
    ld hl, $d000                                  ; $4ef0: $21 $00 $d0
    ld bc, $0020                                  ; $4ef3: $01 $20 $00
    call Call_000_2096                            ; $4ef6: $cd $96 $20
    call Call_000_0371                            ; $4ef9: $cd $71 $03
    pop af                                        ; $4efc: $f1
    ldh [$96], a                                  ; $4efd: $e0 $96
    ldh [rSVBK], a                                ; $4eff: $e0 $70
    ret                                           ; $4f01: $c9


    ld l, $4f                                     ; $4f02: $2e $4f
    ld h, d                                       ; $4f04: $62
    ld d, b                                       ; $4f05: $50
    adc e                                         ; $4f06: $8b
    ld d, c                                       ; $4f07: $51
    jp hl                                         ; $4f08: $e9


    ld d, d                                       ; $4f09: $52
    dec h                                         ; $4f0a: $25
    ld d, h                                       ; $4f0b: $54
    sbc b                                         ; $4f0c: $98
    ld d, l                                       ; $4f0d: $55
    db $eb                                        ; $4f0e: $eb
    ld d, [hl]                                    ; $4f0f: $56
    ld h, d                                       ; $4f10: $62
    ld e, b                                       ; $4f11: $58
    ret nz                                        ; $4f12: $c0

    ld e, c                                       ; $4f13: $59
    ld hl, $745b                                  ; $4f14: $21 $5b $74
    ld e, h                                       ; $4f17: $5c
    call nc, Call_000_315d                        ; $4f18: $d4 $5d $31
    ld e, a                                       ; $4f1b: $5f
    rst $10                                       ; $4f1c: $d7
    ld h, b                                       ; $4f1d: $60
    adc h                                         ; $4f1e: $8c
    ld h, d                                       ; $4f1f: $62
    push hl                                       ; $4f20: $e5
    ld h, e                                       ; $4f21: $63
    jr nz, jr_011_4f89                            ; $4f22: $20 $65

    ld a, e                                       ; $4f24: $7b
    ld h, [hl]                                    ; $4f25: $66
    ret nz                                        ; $4f26: $c0

    ld h, a                                       ; $4f27: $67
    inc [hl]                                      ; $4f28: $34
    ld l, c                                       ; $4f29: $69
    and a                                         ; $4f2a: $a7
    ld l, d                                       ; $4f2b: $6a
    ld a, [bc]                                    ; $4f2c: $0a
    ld l, h                                       ; $4f2d: $6c
    dec bc                                        ; $4f2e: $0b
    rrca                                          ; $4f2f: $0f
    nop                                           ; $4f30: $00
    cp $e3                                        ; $4f31: $fe $e3
    ldh a, [$fe]                                  ; $4f33: $f0 $fe
    db $ec                                        ; $4f35: $ec
    add sp, -$1b                                  ; $4f36: $e8 $e5
    ldh [$fd], a                                  ; $4f38: $e0 $fd
    ret nc                                        ; $4f3a: $d0

    rst $38                                       ; $4f3b: $ff
    ld l, h                                       ; $4f3c: $6c
    ldh [$fb], a                                  ; $4f3d: $e0 $fb
    ret nc                                        ; $4f3f: $d0

    or $07                                        ; $4f40: $f6 $07
    rrca                                          ; $4f42: $0f
    rst $38                                       ; $4f43: $ff
    ldh [$1f], a                                  ; $4f44: $e0 $1f
    rra                                           ; $4f46: $1f
    or b                                          ; $4f47: $b0
    add sp, $5f                                   ; $4f48: $e8 $5f
    add b                                         ; $4f4a: $80
    ldh a, [$c0]                                  ; $4f4b: $f0 $c0
    ldh a, [$f0]                                  ; $4f4d: $f0 $f0
    add b                                         ; $4f4f: $80
    or $01                                        ; $4f50: $f6 $01
    cp $e3                                        ; $4f52: $fe $e3
    rst $38                                       ; $4f54: $ff
    daa                                           ; $4f55: $27
    ccf                                           ; $4f56: $3f
    ld b, b                                       ; $4f57: $40
    ld a, a                                       ; $4f58: $7f
    adc a                                         ; $4f59: $8f
    rst $38                                       ; $4f5a: $ff
    sbc [hl]                                      ; $4f5b: $9e
    rst $38                                       ; $4f5c: $ff
    rst $38                                       ; $4f5d: $ff
    ld [hl+], a                                   ; $4f5e: $22
    rst $38                                       ; $4f5f: $ff
    ld l, h                                       ; $4f60: $6c
    rst $38                                       ; $4f61: $ff
    ld e, [hl]                                    ; $4f62: $5e
    di                                            ; $4f63: $f3
    sbc $f7                                       ; $4f64: $de $f7
    rst $38                                       ; $4f66: $ff
    adc b                                         ; $4f67: $88
    ld hl, sp+$04                                 ; $4f68: $f8 $04
    db $fc                                        ; $4f6a: $fc
    ld [c], a                                     ; $4f6b: $e2
    cp $f2                                        ; $4f6c: $fe $f2
    cp $ff                                        ; $4f6e: $fe $ff
    adc c                                         ; $4f70: $89
    rst $38                                       ; $4f71: $ff
    ld l, l                                       ; $4f72: $6d
    rst $38                                       ; $4f73: $ff
    push af                                       ; $4f74: $f5
    sbc a                                         ; $4f75: $9f
    rst $30                                       ; $4f76: $f7
    rst $18                                       ; $4f77: $df
    or $60                                        ; $4f78: $f6 $60
    db $ed                                        ; $4f7a: $ed
    ld c, $03                                     ; $4f7b: $0e $03
    cp $e3                                        ; $4f7d: $fe $e3
    ld sp, hl                                     ; $4f7f: $f9

Call_011_4f80:
    add hl, de                                    ; $4f80: $19
    db $e4                                        ; $4f81: $e4
    inc a                                         ; $4f82: $3c
    rst $38                                       ; $4f83: $ff
    db $e4                                        ; $4f84: $e4
    inc a                                         ; $4f85: $3c
    ld [c], a                                     ; $4f86: $e2
    ld a, $5e                                     ; $4f87: $3e $5e

jr_011_4f89:
    rst $30                                       ; $4f89: $f7
    sbc $f7                                       ; $4f8a: $de $f7
    rst $38                                       ; $4f8c: $ff
    ld b, c                                       ; $4f8d: $41
    rst $38                                       ; $4f8e: $ff
    nop                                           ; $4f8f: $00
    rst $38                                       ; $4f90: $ff
    add h                                         ; $4f91: $84
    rst $38                                       ; $4f92: $ff
    add e                                         ; $4f93: $83
    rst $38                                       ; $4f94: $ff

jr_011_4f95:
    rst $38                                       ; $4f95: $ff
    ld b, b                                       ; $4f96: $40
    ld a, a                                       ; $4f97: $7f
    jr nc, @+$41                                  ; $4f98: $30 $3f

    db $f4                                        ; $4f9a: $f4
    rst $18                                       ; $4f9b: $df
    or $df                                        ; $4f9c: $f6 $df
    push af                                       ; $4f9e: $f5
    inc b                                         ; $4f9f: $04
    ldh a, [$e0]                                  ; $4fa0: $f0 $e0
    ld b, e                                       ; $4fa2: $43
    ldh a, [$e0]                                  ; $4fa3: $f0 $e0
    ld b, $fe                                     ; $4fa5: $06 $fe
    ld e, $fe                                     ; $4fa7: $1e $fe
    ld hl, sp+$7a                                 ; $4fa9: $f8 $7a
    ldh [$fe], a                                  ; $4fab: $e0 $fe
    ld [c], a                                     ; $4fad: $e2
    jr jr_011_4f95                                ; $4fae: $18 $e5

    ei                                            ; $4fb0: $fb
    rra                                           ; $4fb1: $1f
    ld a, [c]                                     ; $4fb2: $f2
    rra                                           ; $4fb3: $1f
    db $ed                                        ; $4fb4: $ed
    rst $38                                       ; $4fb5: $ff
    ccf                                           ; $4fb6: $3f
    db $e3                                        ; $4fb7: $e3
    ccf                                           ; $4fb8: $3f
    inc e                                         ; $4fb9: $1c
    rra                                           ; $4fba: $1f
    ld de, $0e1f                                  ; $4fbb: $11 $1f $0e
    rst $38                                       ; $4fbe: $ff
    rrca                                          ; $4fbf: $0f
    rrca                                          ; $4fc0: $0f
    inc bc                                        ; $4fc1: $03
    ld a, h                                       ; $4fc2: $7c
    ld c, a                                       ; $4fc3: $4f
    rst $38                                       ; $4fc4: $ff
    db $e3                                        ; $4fc5: $e3
    ld a, a                                       ; $4fc6: $7f
    rst $38                                       ; $4fc7: $ff
    pop af                                        ; $4fc8: $f1
    ld a, a                                       ; $4fc9: $7f
    ei                                            ; $4fca: $fb
    rst $18                                       ; $4fcb: $df
    rst $38                                       ; $4fcc: $ff
    rst $18                                       ; $4fcd: $df
    rst $38                                       ; $4fce: $ff
    cp a                                          ; $4fcf: $bf
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    rst $38                                       ; $4fd3: $ff
    ld a, h                                       ; $4fd4: $7c
    db $fc                                        ; $4fd5: $fc
    ld hl, sp-$38                                 ; $4fd6: $f8 $c8
    cp $6d                                        ; $4fd8: $fe $6d
    adc [hl]                                      ; $4fda: $8e
    di                                            ; $4fdb: $f3
    ldh [rIE], a                                  ; $4fdc: $e0 $ff
    ei                                            ; $4fde: $fb
    cp $e0                                        ; $4fdf: $fe $e0
    db $fd                                        ; $4fe1: $fd
    rst $38                                       ; $4fe2: $ff
    ldh [$c6], a                                  ; $4fe3: $e0 $c6
    ld e, $b8                                     ; $4fe5: $1e $b8
    ldh [rSVBK], a                                ; $4fe7: $e0 $70
    ret nz                                        ; $4fe9: $c0

    ld [hl], b                                    ; $4fea: $70
    ldh [$d0], a                                  ; $4feb: $e0 $d0
    call $e0cd                                    ; $4fed: $cd $cd $e0
    jp z, $dfe0                                   ; $4ff0: $ca $e0 $df

    ret nz                                        ; $4ff3: $c0

    ld a, a                                       ; $4ff4: $7f
    ld b, b                                       ; $4ff5: $40
    ld a, a                                       ; $4ff6: $7f
    add b                                         ; $4ff7: $80
    jp nz, Jump_011_41e0                          ; $4ff8: $c2 $e0 $41

    ld a, a                                       ; $4ffb: $7f
    db $fd                                        ; $4ffc: $fd
    db $fd                                        ; $4ffd: $fd
    call z, $ffe0                                 ; $4ffe: $cc $e0 $ff
    rst $38                                       ; $5001: $ff
    ld bc, $31ff                                  ; $5002: $01 $ff $31
    rst $38                                       ; $5005: $ff
    db $fd                                        ; $5006: $fd
    pop bc                                        ; $5007: $c1
    or d                                          ; $5008: $b2
    ldh [$c2], a                                  ; $5009: $e0 $c2
    ld a, [hl]                                    ; $500b: $7e
    ldh a, [$90]                                  ; $500c: $f0 $90
    ldh a, [$d0]                                  ; $500e: $f0 $d0
    rst $38                                       ; $5010: $ff
    ldh a, [$b0]                                  ; $5011: $f0 $b0
    ld hl, sp-$58                                 ; $5013: $f8 $a8
    rst $38                                       ; $5015: $ff
    ld c, b                                       ; $5016: $48
    rst $38                                       ; $5017: $ff
    ld d, b                                       ; $5018: $50
    db $fd                                        ; $5019: $fd
    rst $28                                       ; $501a: $ef
    jp nz, $f0e0                                  ; $501b: $c2 $e0 $f0

    nop                                           ; $501e: $00
    di                                            ; $501f: $f3
    inc bc                                        ; $5020: $03
    db $f4                                        ; $5021: $f4
    rlca                                          ; $5022: $07
    rst $30                                       ; $5023: $f7
    ld hl, sp+$0f                                 ; $5024: $f8 $0f
    ld [$c0d1], sp                                ; $5026: $08 $d1 $c0
    ld hl, sp-$01                                 ; $5029: $f8 $ff
    rlca                                          ; $502b: $07
    rlca                                          ; $502c: $07
    cp $8d                                        ; $502d: $fe $8d
    ldh [$c1], a                                  ; $502f: $e0 $c1
    ccf                                           ; $5031: $3f
    ld [c], a                                     ; $5032: $e2
    rra                                           ; $5033: $1f
    cp $12                                        ; $5034: $fe $12
    cp $ff                                        ; $5036: $fe $ff
    cp $fe                                        ; $5038: $fe $fe
    inc bc                                        ; $503a: $03
    rst $38                                       ; $503b: $ff
    db $fc                                        ; $503c: $fc
    db $fc                                        ; $503d: $fc
    cp $7e                                        ; $503e: $fe $7e
    ld a, a                                       ; $5040: $7f
    rst $38                                       ; $5041: $ff
    add e                                         ; $5042: $83
    db $fc                                        ; $5043: $fc
    add a                                         ; $5044: $87
    ld hl, sp-$01                                 ; $5045: $f8 $ff
    adc b                                         ; $5047: $88
    xor d                                         ; $5048: $aa
    pop hl                                        ; $5049: $e1
    rst $38                                       ; $504a: $ff
    rst $38                                       ; $504b: $ff
    ld a, a                                       ; $504c: $7f
    ld a, a                                       ; $504d: $7f
    rrca                                          ; $504e: $0f
    nop                                           ; $504f: $00
    rst $08                                       ; $5050: $cf
    ret nz                                        ; $5051: $c0

    cpl                                           ; $5052: $2f
    rst $28                                       ; $5053: $ef
    ldh [$1f], a                                  ; $5054: $e0 $1f
    ldh a, [rNR10]                                ; $5056: $f0 $10
    or l                                          ; $5058: $b5
    ret nz                                        ; $5059: $c0

    rra                                           ; $505a: $1f
    rst $38                                       ; $505b: $ff
    ldh [rSB], a                                  ; $505c: $e0 $01
    ldh [rP1], a                                  ; $505e: $e0 $00
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    dec bc                                        ; $5062: $0b
    rrca                                          ; $5063: $0f
    nop                                           ; $5064: $00
    cp $e3                                        ; $5065: $fe $e3
    ldh a, [$fe]                                  ; $5067: $f0 $fe
    db $ec                                        ; $5069: $ec
    add sp, -$1b                                  ; $506a: $e8 $e5
    ldh [$fd], a                                  ; $506c: $e0 $fd
    ret nc                                        ; $506e: $d0

    rst $38                                       ; $506f: $ff
    call c, $fbe0                                 ; $5070: $dc $e0 $fb
    ret nc                                        ; $5073: $d0

    ld a, [$0c03]                                 ; $5074: $fa $03 $0c
    rrca                                          ; $5077: $0f
    or b                                          ; $5078: $b0
    push hl                                       ; $5079: $e5
    db $fc                                        ; $507a: $fc
    inc c                                         ; $507b: $0c
    cp a                                          ; $507c: $bf
    cp $1e                                        ; $507d: $fe $1e
    cp $fe                                        ; $507f: $fe $fe
    ld a, $fe                                     ; $5081: $3e $fe
    add b                                         ; $5083: $80
    db $fd                                        ; $5084: $fd
    db $10                                        ; $5085: $10
    rst $38                                       ; $5086: $ff
    rra                                           ; $5087: $1f
    jr nz, jr_011_50c9                            ; $5088: $20 $3f

    ld b, b                                       ; $508a: $40
    ld a, a                                       ; $508b: $7f
    ld b, b                                       ; $508c: $40
    ld a, a                                       ; $508d: $7f
    add c                                         ; $508e: $81
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    add e                                         ; $5091: $83
    rst $38                                       ; $5092: $ff
    add a                                         ; $5093: $87
    rst $38                                       ; $5094: $ff
    adc a                                         ; $5095: $8f
    rst $38                                       ; $5096: $ff
    inc e                                         ; $5097: $1c
    cp e                                          ; $5098: $bb
    db $fc                                        ; $5099: $fc
    ld b, $c7                                     ; $509a: $06 $c7
    ldh [$6d], a                                  ; $509c: $e0 $6d
    rst $38                                       ; $509e: $ff
    reti                                          ; $509f: $d9


    ld a, [c]                                     ; $50a0: $f2
    ldh [rIF], a                                  ; $50a1: $e0 $0f
    rst $30                                       ; $50a3: $f7
    ld sp, hl                                     ; $50a4: $f9
    rrca                                          ; $50a5: $0f
    ei                                            ; $50a6: $fb
    ld c, b                                       ; $50a7: $48
    push af                                       ; $50a8: $f5
    pop af                                        ; $50a9: $f1
    ld bc, $01f1                                  ; $50aa: $01 $f1 $01
    rst $38                                       ; $50ad: $ff
    ld a, [c]                                     ; $50ae: $f2
    inc bc                                        ; $50af: $03
    ld a, [c]                                     ; $50b0: $f2
    inc bc                                        ; $50b1: $03
    sub e                                         ; $50b2: $93
    rst $38                                       ; $50b3: $ff
    xor l                                         ; $50b4: $ad
    rst $38                                       ; $50b5: $ff
    rst $38                                       ; $50b6: $ff
    and [hl]                                      ; $50b7: $a6
    rst $38                                       ; $50b8: $ff
    and d                                         ; $50b9: $a2
    rst $38                                       ; $50ba: $ff
    ld [hl], b                                    ; $50bb: $70
    rst $38                                       ; $50bc: $ff
    ld a, b                                       ; $50bd: $78
    rst $38                                       ; $50be: $ff
    rst $38                                       ; $50bf: $ff
    cp $ff                                        ; $50c0: $fe $ff
    db $ed                                        ; $50c2: $ed
    rst $28                                       ; $50c3: $ef
    adc a                                         ; $50c4: $8f
    ei                                            ; $50c5: $fb
    adc [hl]                                      ; $50c6: $8e
    ei                                            ; $50c7: $fb
    cp e                                          ; $50c8: $bb

jr_011_50c9:
    nop                                           ; $50c9: $00
    rst $38                                       ; $50ca: $ff
    cp $e1                                        ; $50cb: $fe $e1
    ld bc, $02ff                                  ; $50cd: $01 $ff $02
    db $fc                                        ; $50d0: $fc
    ldh [$f0], a                                  ; $50d1: $e0 $f0
    rst $38                                       ; $50d3: $ff
    add b                                         ; $50d4: $80
    ld [hl], b                                    ; $50d5: $70
    ret nz                                        ; $50d6: $c0

    ldh a, [$c0]                                  ; $50d7: $f0 $c0
    ld [hl], b                                    ; $50d9: $70
    ret nz                                        ; $50da: $c0

    ld c, a                                       ; $50db: $4f
    rst $38                                       ; $50dc: $ff
    ret nz                                        ; $50dd: $c0

    adc a                                         ; $50de: $8f
    add b                                         ; $50df: $80
    adc a                                         ; $50e0: $8f
    add b                                         ; $50e1: $80
    rrca                                          ; $50e2: $0f
    nop                                           ; $50e3: $00
    ld a, [c]                                     ; $50e4: $f2
    rst $28                                       ; $50e5: $ef
    inc bc                                        ; $50e6: $03
    pop af                                        ; $50e7: $f1
    ld bc, $c2f0                                  ; $50e8: $01 $f0 $c2
    ldh [rIF], a                                  ; $50eb: $e0 $0f
    inc bc                                        ; $50ed: $03
    rrca                                          ; $50ee: $0f
    rst $38                                       ; $50ef: $ff
    rlca                                          ; $50f0: $07
    rrca                                          ; $50f1: $0f
    rlca                                          ; $50f2: $07
    dec bc                                        ; $50f3: $0b
    rrca                                          ; $50f4: $0f
    cp $fb                                        ; $50f5: $fe $fb
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    pop af                                        ; $50f9: $f1
    rst $38                                       ; $50fa: $ff
    ld hl, sp-$01                                 ; $50fb: $f8 $ff
    db $fc                                        ; $50fd: $fc
    rst $38                                       ; $50fe: $ff

Jump_011_50ff:
    rst $38                                       ; $50ff: $ff
    rst $18                                       ; $5100: $df
    cp $fe                                        ; $5101: $fe $fe
    ldh [$bf], a                                  ; $5103: $e0 $bf
    rst $38                                       ; $5105: $ff
    jp nz, $fcfe                                  ; $5106: $c2 $fe $fc

    db $fc                                        ; $5109: $fc
    cp $bf                                        ; $510a: $fe $bf
    ld c, [hl]                                    ; $510c: $4e
    rst $38                                       ; $510d: $ff
    rst $28                                       ; $510e: $ef
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    ei                                            ; $5111: $fb
    cp $e0                                        ; $5112: $fe $e0
    db $fd                                        ; $5114: $fd
    push af                                       ; $5115: $f5
    rst $38                                       ; $5116: $ff
    ldh [$c8], a                                  ; $5117: $e0 $c8
    add b                                         ; $5119: $80
    cp $e1                                        ; $511a: $fe $e1
    ld [$080f], sp                                ; $511c: $08 $0f $08
    rrca                                          ; $511f: $0f
    rst $28                                       ; $5120: $ef
    inc c                                         ; $5121: $0c
    rlca                                          ; $5122: $07
    rrca                                          ; $5123: $0f
    inc bc                                        ; $5124: $03
    ret nc                                        ; $5125: $d0

    push bc                                       ; $5126: $c5
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    ld a, a                                       ; $5129: $7f
    cp $fe                                        ; $512a: $fe $fe
    ldh [rLCDC], a                                ; $512c: $e0 $40
    rst $38                                       ; $512e: $ff
    ret nz                                        ; $512f: $c0

    rst $38                                       ; $5130: $ff
    add c                                         ; $5131: $81
    rst $38                                       ; $5132: $ff
    ld a, a                                       ; $5133: $7f
    xor a                                         ; $5134: $af
    ld a, a                                       ; $5135: $7f
    ld b, c                                       ; $5136: $41
    ld a, a                                       ; $5137: $7f
    db $fd                                        ; $5138: $fd
    call z, $ffe0                                 ; $5139: $cc $e0 $ff
    add h                                         ; $513c: $84
    ldh [rNR24], a                                ; $513d: $e0 $19
    sbc e                                         ; $513f: $9b
    rst $38                                       ; $5140: $ff
    pop hl                                        ; $5141: $e1
    ld hl, sp-$20                                 ; $5142: $f8 $e0
    jp nz, $807e                                  ; $5144: $c2 $7e $80

    rst $08                                       ; $5147: $cf
    ld c, b                                       ; $5148: $48
    pop hl                                        ; $5149: $e1
    db $f4                                        ; $514a: $f4
    rst $38                                       ; $514b: $ff
    rlca                                          ; $514c: $07
    inc c                                         ; $514d: $0c
    rlca                                          ; $514e: $07
    rlca                                          ; $514f: $07
    rlca                                          ; $5150: $07
    db $fc                                        ; $5151: $fc
    rst $38                                       ; $5152: $ff
    inc bc                                        ; $5153: $03
    rst $38                                       ; $5154: $ff
    inc bc                                        ; $5155: $03
    ld a, a                                       ; $5156: $7f
    ld a, a                                       ; $5157: $7f
    rst $38                                       ; $5158: $ff
    pop hl                                        ; $5159: $e1
    rra                                           ; $515a: $1f
    ld a, [c]                                     ; $515b: $f2
    rrca                                          ; $515c: $0f
    ld a, a                                       ; $515d: $7f
    cp $0a                                        ; $515e: $fe $0a
    cp $fe                                        ; $5160: $fe $fe
    cp $03                                        ; $5162: $fe $03
    rst $38                                       ; $5164: $ff
    add h                                         ; $5165: $84
    ldh [rIE], a                                  ; $5166: $e0 $ff
    ld a, [hl]                                    ; $5168: $7e
    rst $38                                       ; $5169: $ff
    add e                                         ; $516a: $83
    db $fc                                        ; $516b: $fc
    add a                                         ; $516c: $87
    ld hl, sp-$01                                 ; $516d: $f8 $ff
    adc b                                         ; $516f: $88
    ld a, [$e0ba]                                 ; $5170: $fa $ba $e0
    ret nz                                        ; $5173: $c0

    xor [hl]                                      ; $5174: $ae
    ldh [rIF], a                                  ; $5175: $e0 $0f
    nop                                           ; $5177: $00
    rst $08                                       ; $5178: $cf
    ret nz                                        ; $5179: $c0

    cpl                                           ; $517a: $2f
    rst $38                                       ; $517b: $ff
    ldh [$1f], a                                  ; $517c: $e0 $1f
    ldh a, [rNR10]                                ; $517e: $f0 $10
    ldh a, [$f0]                                  ; $5180: $f0 $f0
    ldh a, [$1f]                                  ; $5182: $f0 $1f
    rlca                                          ; $5184: $07
    rst $38                                       ; $5185: $ff
    ldh [$e0], a                                  ; $5186: $e0 $e0
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    dec bc                                        ; $518b: $0b
    rrca                                          ; $518c: $0f
    nop                                           ; $518d: $00
    cp $e3                                        ; $518e: $fe $e3
    ldh a, [$fe]                                  ; $5190: $f0 $fe
    db $ec                                        ; $5192: $ec
    add sp, -$1b                                  ; $5193: $e8 $e5
    ldh [$fd], a                                  ; $5195: $e0 $fd
    ret nc                                        ; $5197: $d0

    rst $38                                       ; $5198: $ff
    cp h                                          ; $5199: $bc
    ldh [$fb], a                                  ; $519a: $e0 $fb
    ret nc                                        ; $519c: $d0

    jp hl                                         ; $519d: $e9


    db $fc                                        ; $519e: $fc
    inc e                                         ; $519f: $1c
    di                                            ; $51a0: $f3
    rra                                           ; $51a1: $1f
    or b                                          ; $51a2: $b0
    ld [$bb0e], a                                 ; $51a3: $ea $0e $bb
    ld sp, $b03f                                  ; $51a6: $31 $3f $b0
    ld [$19e0], a                                 ; $51a9: $ea $e0 $19
    ld sp, hl                                     ; $51ac: $f9
    sub b                                         ; $51ad: $90
    jp hl                                         ; $51ae: $e9


    ld a, a                                       ; $51af: $7f
    rst $38                                       ; $51b0: $ff
    ld [hl], b                                    ; $51b1: $70
    sbc a                                         ; $51b2: $9f
    ldh a, [$f8]                                  ; $51b3: $f0 $f8
    rra                                           ; $51b5: $1f
    ldh [$3f], a                                  ; $51b6: $e0 $3f
    ldh a, [rIE]                                  ; $51b8: $f0 $ff
    rra                                           ; $51ba: $1f
    ld hl, sp+$1f                                 ; $51bb: $f8 $1f
    ld hl, $3f3f                                  ; $51bd: $21 $3f $3f
    ccf                                           ; $51c0: $3f
    rrca                                          ; $51c1: $0f
    rst $38                                       ; $51c2: $ff
    ld bc, $030f                                  ; $51c3: $01 $0f $03
    ret nz                                        ; $51c6: $c0

    rst $38                                       ; $51c7: $ff
    sbc [hl]                                      ; $51c8: $9e
    rst $38                                       ; $51c9: $ff
    cp a                                          ; $51ca: $bf
    ld a, a                                       ; $51cb: $7f
    pop hl                                        ; $51cc: $e1
    cp a                                          ; $51cd: $bf
    ldh [$3f], a                                  ; $51ce: $e0 $3f
    db $ec                                        ; $51d0: $ec
    ld a, a                                       ; $51d1: $7f
    ret nz                                        ; $51d2: $c0

    cp $e0                                        ; $51d3: $fe $e0
    rst $38                                       ; $51d5: $ff
    ret c                                         ; $51d6: $d8

    ld b, $ff                                     ; $51d7: $06 $ff
    ld a, [c]                                     ; $51d9: $f2
    rst $38                                       ; $51da: $ff
    ld a, [$fa0f]                                 ; $51db: $fa $0f $fa
    rst $18                                       ; $51de: $df
    rrca                                          ; $51df: $0f
    ld sp, hl                                     ; $51e0: $f9
    ld l, a                                       ; $51e1: $6f
    db $fd                                        ; $51e2: $fd
    rlca                                          ; $51e3: $07
    cp $e0                                        ; $51e4: $fe $e0
    scf                                           ; $51e6: $37
    ccf                                           ; $51e7: $3f
    rst $38                                       ; $51e8: $ff
    ldh a, [rIF]                                  ; $51e9: $f0 $0f
    ld hl, sp+$1f                                 ; $51eb: $f8 $1f
    ldh a, [$3f]                                  ; $51ed: $f0 $3f
    ldh a, [$08]                                  ; $51ef: $f0 $08
    rst $30                                       ; $51f1: $f7
    ld hl, sp-$08                                 ; $51f2: $f8 $f8
    ld hl, sp+$5c                                 ; $51f4: $f8 $5c
    ldh [$80], a                                  ; $51f6: $e0 $80
    rrca                                          ; $51f8: $0f
    inc b                                         ; $51f9: $04
    rrca                                          ; $51fa: $0f
    db $dd                                        ; $51fb: $dd
    dec b                                         ; $51fc: $05
    db $fc                                        ; $51fd: $fc
    ldh [rSC], a                                  ; $51fe: $e0 $02
    pop af                                        ; $5200: $f1
    ld bc, $e34e                                  ; $5201: $01 $4e $e3
    rst $38                                       ; $5204: $ff
    or h                                          ; $5205: $b4
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    inc l                                         ; $5208: $2c
    rst $38                                       ; $5209: $ff
    adc h                                         ; $520a: $8c
    rst $08                                       ; $520b: $cf
    or c                                          ; $520c: $b1
    rst $38                                       ; $520d: $ff
    add b                                         ; $520e: $80
    rst $38                                       ; $520f: $ff
    ld a, a                                       ; $5210: $7f
    ld b, a                                       ; $5211: $47
    ld a, $23                                     ; $5212: $3e $23
    ld a, a                                       ; $5214: $7f
    ld e, c                                       ; $5215: $59
    rst $38                                       ; $5216: $ff

jr_011_5217:
    ld e, d                                       ; $5217: $5a
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    ld l, c                                       ; $521a: $69
    rst $38                                       ; $521b: $ff
    ld h, d                                       ; $521c: $62
    rst $20                                       ; $521d: $e7
    ld a, [de]                                    ; $521e: $1a
    rst $38                                       ; $521f: $ff
    inc bc                                        ; $5220: $03
    rst $38                                       ; $5221: $ff
    db $fc                                        ; $5222: $fc
    call nz, $88f8                                ; $5223: $c4 $f8 $88
    db $fc                                        ; $5226: $fc
    inc [hl]                                      ; $5227: $34
    ldh a, [rLCDC]                                ; $5228: $f0 $40
    ld a, [$e2fe]                                 ; $522a: $fa $fe $e2
    add b                                         ; $522d: $80
    jr jr_011_5217                                ; $522e: $18 $e7

    pop af                                        ; $5230: $f1
    ld bc, $01f1                                  ; $5231: $01 $f1 $01
    di                                            ; $5234: $f3
    rst $18                                       ; $5235: $df
    ld [bc], a                                    ; $5236: $02
    rrca                                          ; $5237: $0f
    ld [bc], a                                    ; $5238: $02
    rrca                                          ; $5239: $0f
    inc bc                                        ; $523a: $03
    or h                                          ; $523b: $b4
    ldh [rDIV], a                                 ; $523c: $e0 $04
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    call nc, Call_011_53ff                        ; $5240: $d4 $ff $53
    rst $38                                       ; $5243: $ff
    ld c, d                                       ; $5244: $4a
    rst $38                                       ; $5245: $ff
    ld b, h                                       ; $5246: $44
    rst $38                                       ; $5247: $ff
    rst $30                                       ; $5248: $f7
    ld b, e                                       ; $5249: $43
    rst $38                                       ; $524a: $ff
    add b                                         ; $524b: $80
    cp $e1                                        ; $524c: $fe $e1
    cp $56                                        ; $524e: $fe $56
    rst $38                                       ; $5250: $ff
    sub l                                         ; $5251: $95
    ei                                            ; $5252: $fb
    rst $38                                       ; $5253: $ff
    and l                                         ; $5254: $a5
    ldh a, [$e0]                                  ; $5255: $f0 $e0
    add h                                         ; $5257: $84
    rst $38                                       ; $5258: $ff
    inc bc                                        ; $5259: $03
    rst $38                                       ; $525a: $ff
    ld [bc], a                                    ; $525b: $02
    dec sp                                        ; $525c: $3b
    rst $38                                       ; $525d: $ff
    ld [bc], a                                    ; $525e: $02
    ldh [$c3], a                                  ; $525f: $e0 $c3
    adc a                                         ; $5261: $8f
    add b                                         ; $5262: $80
    ldh a, [$fe]                                  ; $5263: $f0 $fe
    pop hl                                        ; $5265: $e1
    or h                                          ; $5266: $b4
    ldh [rIE], a                                  ; $5267: $e0 $ff
    rrca                                          ; $5269: $0f
    ld [$101f], sp                                ; $526a: $08 $1f $10
    ld a, a                                       ; $526d: $7f
    ld h, c                                       ; $526e: $61
    rst $38                                       ; $526f: $ff
    add c                                         ; $5270: $81
    cp a                                          ; $5271: $bf
    cp $7a                                        ; $5272: $fe $7a
    rst $38                                       ; $5274: $ff
    dec bc                                        ; $5275: $0b
    push af                                       ; $5276: $f5
    dec b                                         ; $5277: $05
    add b                                         ; $5278: $80
    ldh [$80], a                                  ; $5279: $e0 $80
    push af                                       ; $527b: $f5
    rst $38                                       ; $527c: $ff
    rst $00                                       ; $527d: $c7
    ld [c], a                                     ; $527e: $e2
    add h                                         ; $527f: $84
    db $d3                                        ; $5280: $d3
    ldh [rIE], a                                  ; $5281: $e0 $ff
    rst $38                                       ; $5283: $ff
    ld a, a                                       ; $5284: $7f
    ld b, d                                       ; $5285: $42
    halt                                          ; $5286: $76
    call z, $fee0                                 ; $5287: $cc $e0 $fe
    inc bc                                        ; $528a: $03
    push bc                                       ; $528b: $c5
    ldh [rSCY], a                                 ; $528c: $e0 $42
    cp $81                                        ; $528e: $fe $81
    ldh a, [$e0]                                  ; $5290: $f0 $e0
    rst $38                                       ; $5292: $ff
    db $fc                                        ; $5293: $fc
    add h                                         ; $5294: $84
    ldh a, [rNR41]                                ; $5295: $f0 $20
    ldh a, [$d0]                                  ; $5297: $f0 $d0
    db $fc                                        ; $5299: $fc
    inc c                                         ; $529a: $0c
    rst $38                                       ; $529b: $ff
    cp $02                                        ; $529c: $fe $02
    rst $38                                       ; $529e: $ff
    cp h                                          ; $529f: $bc
    rst $28                                       ; $52a0: $ef
    and b                                         ; $52a1: $a0
    ld c, a                                       ; $52a2: $4f
    ld b, b                                       ; $52a3: $40
    cp $98                                        ; $52a4: $fe $98
    pop bc                                        ; $52a6: $c1
    di                                            ; $52a7: $f3
    inc bc                                        ; $52a8: $03
    db $f4                                        ; $52a9: $f4
    rlca                                          ; $52aa: $07
    ld hl, sp+$0f                                 ; $52ab: $f8 $0f
    ld [$0fff], sp                                ; $52ad: $08 $ff $0f
    rrca                                          ; $52b0: $0f
    rrca                                          ; $52b1: $0f
    ld hl, sp-$01                                 ; $52b2: $f8 $ff
    rlca                                          ; $52b4: $07
    rlca                                          ; $52b5: $07
    ld a, a                                       ; $52b6: $7f
    rst $38                                       ; $52b7: $ff
    ld a, [hl]                                    ; $52b8: $7e
    rst $38                                       ; $52b9: $ff
    jp nz, $e23f                                  ; $52ba: $c2 $3f $e2

    rra                                           ; $52bd: $1f
    cp $12                                        ; $52be: $fe $12
    db $eb                                        ; $52c0: $eb
    cp $fe                                        ; $52c1: $fe $fe
    ret z                                         ; $52c3: $c8

    ldh [$fc], a                                  ; $52c4: $e0 $fc
    rst $38                                       ; $52c6: $ff
    ldh [rIE], a                                  ; $52c7: $e0 $ff
    add a                                         ; $52c9: $87
    ld hl, sp-$11                                 ; $52ca: $f8 $ef
    adc a                                         ; $52cc: $8f
    ldh a, [rIE]                                  ; $52cd: $f0 $ff
    sub b                                         ; $52cf: $90
    or d                                          ; $52d0: $b2
    ldh [$80], a                                  ; $52d1: $e0 $80
    rst $38                                       ; $52d3: $ff
    ld a, a                                       ; $52d4: $7f
    db $fd                                        ; $52d5: $fd
    ld a, a                                       ; $52d6: $7f
    add h                                         ; $52d7: $84
    pop hl                                        ; $52d8: $e1
    ld c, a                                       ; $52d9: $4f
    ret nz                                        ; $52da: $c0

    cpl                                           ; $52db: $2f
    ldh [$30], a                                  ; $52dc: $e0 $30
    ldh [$3f], a                                  ; $52de: $e0 $3f
    ldh [$e0], a                                  ; $52e0: $e0 $e0
    ccf                                           ; $52e2: $3f
    rst $38                                       ; $52e3: $ff
    ret nz                                        ; $52e4: $c0

    ret nz                                        ; $52e5: $c0

    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    dec bc                                        ; $52e9: $0b
    rrca                                          ; $52ea: $0f
    nop                                           ; $52eb: $00
    cp $e3                                        ; $52ec: $fe $e3
    ldh a, [$fe]                                  ; $52ee: $f0 $fe
    db $ec                                        ; $52f0: $ec
    add sp, -$1b                                  ; $52f1: $e8 $e5
    ldh [$fd], a                                  ; $52f3: $e0 $fd
    ret nc                                        ; $52f5: $d0

    rst $38                                       ; $52f6: $ff
    call nc, $fbe0                                ; $52f7: $d4 $e0 $fb
    ret nc                                        ; $52fa: $d0

    db $fc                                        ; $52fb: $fc
    ld c, $b0                                     ; $52fc: $0e $b0
    db $ec                                        ; $52fe: $ec
    ldh [$90], a                                  ; $52ff: $e0 $90
    db $ed                                        ; $5301: $ed
    cp $0e                                        ; $5302: $fe $0e
    rst $38                                       ; $5304: $ff
    pop af                                        ; $5305: $f1
    rra                                           ; $5306: $1f
    ldh [$3f], a                                  ; $5307: $e0 $3f
    ldh a, [$1f]                                  ; $5309: $f0 $1f
    jr nz, jr_011_534c                            ; $530b: $20 $3f

    rst $38                                       ; $530d: $ff
    add hl, sp                                    ; $530e: $39
    ccf                                           ; $530f: $3f
    ld de, $171f                                  ; $5310: $11 $1f $17
    rra                                           ; $5313: $1f
    ld sp, $ff3f                                  ; $5314: $31 $3f $ff
    pop bc                                        ; $5317: $c1
    rst $38                                       ; $5318: $ff
    add c                                         ; $5319: $81
    rst $38                                       ; $531a: $ff
    sbc a                                         ; $531b: $9f
    rst $38                                       ; $531c: $ff
    cp a                                          ; $531d: $bf
    ldh [rIE], a                                  ; $531e: $e0 $ff

jr_011_5320:
    ccf                                           ; $5320: $3f
    ldh [$7f], a                                  ; $5321: $e0 $7f
    call nz, $d87f                                ; $5323: $c4 $7f $d8
    jr jr_011_5320                                ; $5326: $18 $f8

    rst $38                                       ; $5328: $ff
    rlca                                          ; $5329: $07
    rst $38                                       ; $532a: $ff
    ld [bc], a                                    ; $532b: $02
    rst $38                                       ; $532c: $ff
    ld a, [c]                                     ; $532d: $f2
    rst $38                                       ; $532e: $ff
    ld a, [$ff0f]                                 ; $532f: $fa $0f $ff
    ld sp, hl                                     ; $5332: $f9
    rrca                                          ; $5333: $0f
    db $fd                                        ; $5334: $fd
    ld b, a                                       ; $5335: $47
    db $fd                                        ; $5336: $fd
    scf                                           ; $5337: $37
    rst $28                                       ; $5338: $ef
    ldh [rIE], a                                  ; $5339: $e0 $ff
    rra                                           ; $533b: $1f
    ldh a, [rIF]                                  ; $533c: $f0 $0f

jr_011_533e:
    ld hl, sp+$1f                                 ; $533e: $f8 $1f
    ldh a, [$08]                                  ; $5340: $f0 $08
    ld hl, sp-$01                                 ; $5342: $f8 $ff
    jr c, jr_011_533e                             ; $5344: $38 $f8

    db $10                                        ; $5346: $10
    ldh a, [$d0]                                  ; $5347: $f0 $d0
    ldh a, [rIF]                                  ; $5349: $f0 $0f
    dec c                                         ; $534b: $0d

jr_011_534c:
    rst $38                                       ; $534c: $ff
    rrca                                          ; $534d: $0f
    inc b                                         ; $534e: $04
    rrca                                          ; $534f: $0f
    dec b                                         ; $5350: $05
    rrca                                          ; $5351: $0f
    inc bc                                        ; $5352: $03
    di                                            ; $5353: $f3
    ld [bc], a                                    ; $5354: $02
    rst $38                                       ; $5355: $ff
    rst $30                                       ; $5356: $f7
    inc b                                         ; $5357: $04
    rst $38                                       ; $5358: $ff
    ld [$09ff], sp                                ; $5359: $08 $ff $09
    ld a, a                                       ; $535c: $7f
    ret nz                                        ; $535d: $c0

    rst $38                                       ; $535e: $ff
    rst $38                                       ; $535f: $ff
    add b                                         ; $5360: $80
    rst $38                                       ; $5361: $ff
    ld [hl], b                                    ; $5362: $70
    rst $38                                       ; $5363: $ff
    adc h                                         ; $5364: $8c
    rst $38                                       ; $5365: $ff
    jr c, jr_011_53e7                             ; $5366: $38 $7f

    rst $38                                       ; $5368: $ff
    ld d, c                                       ; $5369: $51
    rst $38                                       ; $536a: $ff
    ld h, b                                       ; $536b: $60
    cp a                                          ; $536c: $bf
    and b                                         ; $536d: $a0
    db $fd                                        ; $536e: $fd
    pop bc                                        ; $536f: $c1
    pop hl                                        ; $5370: $e1
    rst $30                                       ; $5371: $f7
    dec e                                         ; $5372: $1d
    rst $38                                       ; $5373: $ff
    ld h, e                                       ; $5374: $63
    ldh a, [$e0]                                  ; $5375: $f0 $e0
    inc d                                         ; $5377: $14
    rst $38                                       ; $5378: $ff
    inc c                                         ; $5379: $0c
    ei                                            ; $537a: $fb

jr_011_537b:
    rst $18                                       ; $537b: $df
    dec bc                                        ; $537c: $0b
    ldh a, [$60]                                  ; $537d: $f0 $60
    ldh a, [rLCDC]                                ; $537f: $f0 $40
    cp $e0                                        ; $5381: $fe $e0
    add b                                         ; $5383: $80
    adc a                                         ; $5384: $8f
    rst $38                                       ; $5385: $ff
    add b                                         ; $5386: $80
    rst $08                                       ; $5387: $cf
    ld b, b                                       ; $5388: $40
    rst $28                                       ; $5389: $ef
    jr nz, jr_011_537b                            ; $538a: $20 $ef

    jr nz, @+$01                                  ; $538c: $20 $ff

    db $fd                                        ; $538e: $fd
    ld de, $e0fe                                  ; $538f: $11 $fe $e0
    ld [hl+], a                                   ; $5392: $22
    rst $38                                       ; $5393: $ff
    ld hl, $213f                                  ; $5394: $21 $3f $21
    rra                                           ; $5397: $1f
    db $fd                                        ; $5398: $fd
    rra                                           ; $5399: $1f
    inc b                                         ; $539a: $04
    pop hl                                        ; $539b: $e1
    rst $38                                       ; $539c: $ff
    ld sp, hl                                     ; $539d: $f9
    rst $38                                       ; $539e: $ff
    inc [hl]                                      ; $539f: $34
    rst $38                                       ; $53a0: $ff
    dec hl                                        ; $53a1: $2b
    cp a                                          ; $53a2: $bf
    rst $38                                       ; $53a3: $ff
    ld a, [hl+]                                   ; $53a4: $2a
    rst $38                                       ; $53a5: $ff
    ld b, h                                       ; $53a6: $44
    rst $38                                       ; $53a7: $ff
    ld b, e                                       ; $53a8: $43
    or [hl]                                       ; $53a9: $b6
    ldh [$80], a                                  ; $53aa: $e0 $80
    rst $38                                       ; $53ac: $ff
    rst $38                                       ; $53ad: $ff
    ccf                                           ; $53ae: $3f
    rst $38                                       ; $53af: $ff
    ld e, c                                       ; $53b0: $59
    rst $38                                       ; $53b1: $ff
    xor b                                         ; $53b2: $a8
    rst $38                                       ; $53b3: $ff
    xor c                                         ; $53b4: $a9
    rst $28                                       ; $53b5: $ef
    rst $38                                       ; $53b6: $ff
    push bc                                       ; $53b7: $c5
    rst $38                                       ; $53b8: $ff
    add l                                         ; $53b9: $85
    ld [hl], a                                    ; $53ba: $77
    ldh [rSC], a                                  ; $53bb: $e0 $02
    rst $38                                       ; $53bd: $ff
    ret nc                                        ; $53be: $d0

    rst $38                                       ; $53bf: $ff
    rst $38                                       ; $53c0: $ff
    db $10                                        ; $53c1: $10
    rst $38                                       ; $53c2: $ff
    adc b                                         ; $53c3: $88
    rst $38                                       ; $53c4: $ff
    ld [$08f8], sp                                ; $53c5: $08 $f8 $08
    ei                                            ; $53c8: $fb
    ldh a, [$f0]                                  ; $53c9: $f0 $f0
    cp b                                          ; $53cb: $b8
    set 6, c                                      ; $53cc: $cb $f1
    ld bc, $01f1                                  ; $53ce: $01 $f1 $01
    ldh a, [$e9]                                  ; $53d1: $f0 $e9
    nop                                           ; $53d3: $00
    add d                                         ; $53d4: $82
    ldh [$c9], a                                  ; $53d5: $e0 $c9
    ld [c], a                                     ; $53d7: $e2
    add h                                         ; $53d8: $84
    ld c, d                                       ; $53d9: $4a
    ldh [rIE], a                                  ; $53da: $e0 $ff
    rst $38                                       ; $53dc: $ff
    ld a, a                                       ; $53dd: $7f
    db $ed                                        ; $53de: $ed
    ld b, d                                       ; $53df: $42
    ld b, e                                       ; $53e0: $43
    ldh [$fe], a                                  ; $53e1: $e0 $fe
    inc bc                                        ; $53e3: $03
    cp $e0                                        ; $53e4: $fe $e0
    ld b, d                                       ; $53e6: $42

jr_011_53e7:
    cp $81                                        ; $53e7: $fe $81
    and $f0                                       ; $53e9: $e6 $f0
    ldh [$fc], a                                  ; $53eb: $e0 $fc
    add h                                         ; $53ed: $84
    add b                                         ; $53ee: $80
    pop de                                        ; $53ef: $d1
    add $e1                                       ; $53f0: $c6 $e1
    ld c, $03                                     ; $53f2: $0e $03
    inc bc                                        ; $53f4: $03
    rst $38                                       ; $53f5: $ff
    inc bc                                        ; $53f6: $03
    cp $ff                                        ; $53f7: $fe $ff
    ld bc, $ff01                                  ; $53f9: $01 $01 $ff
    db $fc                                        ; $53fc: $fc
    rst $38                                       ; $53fd: $ff
    rst $28                                       ; $53fe: $ef

Call_011_53ff:
    cp h                                          ; $53ff: $bc
    jp $817e                                      ; $5400: $c3 $7e $81


    db $fc                                        ; $5403: $fc
    ret nz                                        ; $5404: $c0

    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    ld bc, $ffff                                  ; $5407: $01 $ff $ff
    cp $fe                                        ; $540a: $fe $fe
    cp $7e                                        ; $540c: $fe $7e
    cp $7a                                        ; $540e: $fe $7a
    add a                                         ; $5410: $87
    set 7, l                                      ; $5411: $cb $fd
    inc bc                                        ; $5413: $03
    or d                                          ; $5414: $b2
    ld [c], a                                     ; $5415: $e2
    nop                                           ; $5416: $00
    xor [hl]                                      ; $5417: $ae
    ldh [$60], a                                  ; $5418: $e0 $60
    add $80                                       ; $541a: $c6 $80
    add b                                         ; $541c: $80
    ld b, $96                                     ; $541d: $06 $96
    ldh [rP1], a                                  ; $541f: $e0 $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    dec bc                                        ; $5425: $0b
    rrca                                          ; $5426: $0f
    nop                                           ; $5427: $00
    cp $e3                                        ; $5428: $fe $e3
    ldh a, [$fe]                                  ; $542a: $f0 $fe
    db $ec                                        ; $542c: $ec
    add sp, -$1b                                  ; $542d: $e8 $e5
    ldh [$fd], a                                  ; $542f: $e0 $fd
    ret nc                                        ; $5431: $d0

    push af                                       ; $5432: $f5
    rst $38                                       ; $5433: $ff
    rst $30                                       ; $5434: $f7
    rlca                                          ; $5435: $07
    ld hl, sp+$1f                                 ; $5436: $f8 $1f
    db $e3                                        ; $5438: $e3
    ccf                                           ; $5439: $3f
    adc $7d                                       ; $543a: $ce $7d
    cp $a8                                        ; $543c: $fe $a8
    push hl                                       ; $543e: $e5
    rst $38                                       ; $543f: $ff
    ldh a, [rIF]                                  ; $5440: $f0 $0f
    db $fc                                        ; $5442: $fc
    db $e3                                        ; $5443: $e3
    cp $b9                                        ; $5444: $fe $b9
    ld sp, hl                                     ; $5446: $f9
    ld e, a                                       ; $5447: $5f
    ret z                                         ; $5448: $c8

    push af                                       ; $5449: $f5
    add b                                         ; $544a: $80
    pop hl                                        ; $544b: $e1
    pop af                                        ; $544c: $f1
    ld bc, $31f1                                  ; $544d: $01 $f1 $31
    sbc $ff                                       ; $5450: $de $ff
    ld [hl], c                                    ; $5452: $71
    cp a                                          ; $5453: $bf
    rst $20                                       ; $5454: $e7
    ei                                            ; $5455: $fb
    db $fc                                        ; $5456: $fc
    rst $28                                       ; $5457: $ef
    or e                                          ; $5458: $b3
    rst $38                                       ; $5459: $ff
    rst $38                                       ; $545a: $ff
    call z, $f2ff                                 ; $545b: $cc $ff $f2
    ld a, a                                       ; $545e: $7f
    call z, $d27f                                 ; $545f: $cc $7f $d2
    dec a                                         ; $5462: $3d
    rst $38                                       ; $5463: $ff
    rst $00                                       ; $5464: $c7
    cp $f3                                        ; $5465: $fe $f3
    rst $28                                       ; $5467: $ef
    rra                                           ; $5468: $1f
    ei                                            ; $5469: $fb
    and $ff                                       ; $546a: $e6 $ff
    ld a, a                                       ; $546c: $7f
    add hl, de                                    ; $546d: $19
    rst $38                                       ; $546e: $ff
    daa                                           ; $546f: $27
    rst $38                                       ; $5470: $ff
    ld bc, $19ff                                  ; $5471: $01 $ff $19
    ld e, b                                       ; $5474: $58
    ldh [$f5], a                                  ; $5475: $e0 $f5
    add b                                         ; $5477: $80
    cp $e1                                        ; $5478: $fe $e1
    adc a                                         ; $547a: $8f
    cp $e0                                        ; $547b: $fe $e0
    ld c, a                                       ; $547d: $4f
    ret nz                                        ; $547e: $c0

    ld c, a                                       ; $547f: $4f
    add $ff                                       ; $5480: $c6 $ff
    jp nc, $cd73                                  ; $5482: $d2 $73 $cd

    ld a, a                                       ; $5485: $7f
    pop bc                                        ; $5486: $c1
    ld a, a                                       ; $5487: $7f
    pop hl                                        ; $5488: $e1
    ccf                                           ; $5489: $3f
    rst $38                                       ; $548a: $ff
    db $10                                        ; $548b: $10
    rra                                           ; $548c: $1f
    ld c, $0f                                     ; $548d: $0e $0f
    rra                                           ; $548f: $1f
    add hl, de                                    ; $5490: $19
    ccf                                           ; $5491: $3f
    dec [hl]                                      ; $5492: $35
    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    or $ff                                        ; $5495: $f6 $ff
    ld d, [hl]                                    ; $5497: $56
    rst $38                                       ; $5498: $ff
    ld l, $ff                                     ; $5499: $2e $ff
    jr nz, @+$01                                  ; $549b: $20 $ff

    rst $38                                       ; $549d: $ff
    pop hl                                        ; $549e: $e1
    rra                                           ; $549f: $1f
    pop af                                        ; $54a0: $f1
    rrca                                          ; $54a1: $0f
    ld sp, hl                                     ; $54a2: $f9
    rst $00                                       ; $54a3: $c7
    cp $ff                                        ; $54a4: $fe $ff
    rst $38                                       ; $54a6: $ff
    rlca                                          ; $54a7: $07
    rst $38                                       ; $54a8: $ff
    dec a                                         ; $54a9: $3d
    rst $38                                       ; $54aa: $ff
    sbc d                                         ; $54ab: $9a
    rst $38                                       ; $54ac: $ff
    ld [bc], a                                    ; $54ad: $02
    rst $38                                       ; $54ae: $ff
    rst $38                                       ; $54af: $ff
    jp $c77c                                      ; $54b0: $c3 $7c $c7


    ld a, b                                       ; $54b3: $78
    rst $08                                       ; $54b4: $cf
    ld sp, hl                                     ; $54b5: $f9
    cp a                                          ; $54b6: $bf
    rst $30                                       ; $54b7: $f7
    xor l                                         ; $54b8: $ad
    rst $20                                       ; $54b9: $e7
    reti                                          ; $54ba: $d9


    ret nc                                        ; $54bb: $d0

jr_011_54bc:
    ldh [$c3], a                                  ; $54bc: $e0 $c3
    ld a, [hl]                                    ; $54be: $7e
    add h                                         ; $54bf: $84
    db $fc                                        ; $54c0: $fc
    rst $38                                       ; $54c1: $ff
    jr c, jr_011_54bc                             ; $54c2: $38 $f8

    ld c, b                                       ; $54c4: $48
    ld hl, sp-$3c                                 ; $54c5: $f8 $c4
    db $fc                                        ; $54c7: $fc
    ccf                                           ; $54c8: $3f
    ld a, [hl+]                                   ; $54c9: $2a
    rst $38                                       ; $54ca: $ff
    ccf                                           ; $54cb: $3f
    ld hl, $121f                                  ; $54cc: $21 $1f $12
    rra                                           ; $54cf: $1f
    ld de, $08ff                                  ; $54d0: $11 $ff $08
    rst $38                                       ; $54d3: $ff
    rst $38                                       ; $54d4: $ff
    ld [$04f7], sp                                ; $54d5: $08 $f7 $04
    di                                            ; $54d8: $f3
    ld [bc], a                                    ; $54d9: $02
    rst $38                                       ; $54da: $ff
    cp a                                          ; $54db: $bf

jr_011_54dc:
    rst $38                                       ; $54dc: $ff
    push af                                       ; $54dd: $f5
    ld e, a                                       ; $54de: $5f
    rst $30                                       ; $54df: $f7
    sbc [hl]                                      ; $54e0: $9e
    rst $20                                       ; $54e1: $e7
    inc a                                         ; $54e2: $3c
    db $e3                                        ; $54e3: $e3
    cp a                                          ; $54e4: $bf
    rst $38                                       ; $54e5: $ff
    ldh [rIE], a                                  ; $54e6: $e0 $ff
    ldh a, [$3f]                                  ; $54e8: $f0 $3f
    ret nc                                        ; $54ea: $d0

    ld e, a                                       ; $54eb: $5f
    rst $18                                       ; $54ec: $df
    cp $ff                                        ; $54ed: $fe $ff
    cpl                                           ; $54ef: $2f
    ld a, [$f1df]                                 ; $54f0: $fa $df $f1
    sbc a                                         ; $54f3: $9f
    pop af                                        ; $54f4: $f1
    rra                                           ; $54f5: $1f
    ld a, [c]                                     ; $54f6: $f2
    rst $38                                       ; $54f7: $ff
    rrca                                          ; $54f8: $0f
    db $fc                                        ; $54f9: $fc
    rra                                           ; $54fa: $1f
    ld hl, sp+$37                                 ; $54fb: $f8 $37
    db $e4                                        ; $54fd: $e4
    and h                                         ; $54fe: $a4
    db $fc                                        ; $54ff: $fc
    rst $38                                       ; $5500: $ff
    call nc, $c47c                                ; $5501: $d4 $7c $c4
    ld a, h                                       ; $5504: $7c
    ld hl, sp-$48                                 ; $5505: $f8 $b8
    rst $38                                       ; $5507: $ff
    db $10                                        ; $5508: $10
    rst $38                                       ; $5509: $ff
    rst $28                                       ; $550a: $ef
    jr nz, jr_011_54dc                            ; $550b: $20 $cf

    ld b, b                                       ; $550d: $40
    adc a                                         ; $550e: $8f
    add b                                         ; $550f: $80
    pop af                                        ; $5510: $f1
    ld bc, $d0fe                                  ; $5511: $01 $fe $d0
    res 3, a                                      ; $5514: $cb $9f
    sbc a                                         ; $5516: $9f
    rla                                           ; $5517: $17

jr_011_5518:
    inc e                                         ; $5518: $1c
    rra                                           ; $5519: $1f
    rra                                           ; $551a: $1f
    jr nz, jr_011_5518                            ; $551b: $20 $fb

    ccf                                           ; $551d: $3f
    ldh [$fe], a                                  ; $551e: $e0 $fe
    ldh [$c4], a                                  ; $5520: $e0 $c4
    ld a, a                                       ; $5522: $7f
    jp $f37f                                      ; $5523: $c3 $7f $f3


    rst $38                                       ; $5526: $ff
    db $e3                                        ; $5527: $e3
    or b                                          ; $5528: $b0
    ldh [$f0], a                                  ; $5529: $e0 $f0
    ldh a, [$08]                                  ; $552b: $f0 $08
    ld hl, sp+$0f                                 ; $552d: $f8 $0f
    sbc [hl]                                      ; $552f: $9e
    cp $e0                                        ; $5530: $fe $e0
    add a                                         ; $5532: $87
    db $fc                                        ; $5533: $fc
    rlca                                          ; $5534: $07
    db $fc                                        ; $5535: $fc
    nop                                           ; $5536: $00
    ld sp, hl                                     ; $5537: $f9
    ld a, h                                       ; $5538: $7c
    pop bc                                        ; $5539: $c1
    pop bc                                        ; $553a: $c1
    ld a, a                                       ; $553b: $7f
    ld a, a                                       ; $553c: $7f
    rst $38                                       ; $553d: $ff
    ld a, a                                       ; $553e: $7f
    rst $38                                       ; $553f: $ff
    ld hl, $21ff                                  ; $5540: $21 $ff $21
    ld l, d                                       ; $5543: $6a
    ldh [rIE], a                                  ; $5544: $e0 $ff
    inc de                                        ; $5546: $13
    rra                                           ; $5547: $1f
    ld de, $111f                                  ; $5548: $11 $1f $11
    rlca                                          ; $554b: $07
    db $fc                                        ; $554c: $fc
    rst $38                                       ; $554d: $ff
    rst $38                                       ; $554e: $ff
    db $fc                                        ; $554f: $fc
    rst $38                                       ; $5550: $ff
    add d                                         ; $5551: $82
    ld a, a                                       ; $5552: $7f
    ld b, d                                       ; $5553: $42
    cp $42                                        ; $5554: $fe $42
    cp $df                                        ; $5556: $fe $df
    ld [hl+], a                                   ; $5558: $22
    cp $22                                        ; $5559: $fe $22
    rst $38                                       ; $555b: $ff
    ld hl, $d780                                  ; $555c: $21 $80 $d7
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    rst $38                                       ; $5561: $ff
    rst $38                                       ; $5562: $ff
    rst $38                                       ; $5563: $ff
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    rra                                           ; $5566: $1f
    rra                                           ; $5567: $1f
    rra                                           ; $5568: $1f
    ld de, $7fff                                  ; $5569: $11 $ff $7f
    ld [hl], c                                    ; $556c: $71
    adc a                                         ; $556d: $8f
    rst $38                                       ; $556e: $ff
    adc c                                         ; $556f: $89
    rst $38                                       ; $5570: $ff
    rst $38                                       ; $5571: $ff
    rst $38                                       ; $5572: $ff
    rst $38                                       ; $5573: $ff
    add c                                         ; $5574: $81
    rst $38                                       ; $5575: $ff
    ld a, [hl]                                    ; $5576: $7e
    ld a, [hl]                                    ; $5577: $7e
    rst $38                                       ; $5578: $ff
    rra                                           ; $5579: $1f
    rst $38                                       ; $557a: $ff
    ld de, $ffdf                                  ; $557b: $11 $df $ff
    rla                                           ; $557e: $17
    ld hl, sp+$1f                                 ; $557f: $f8 $1f
    db $10                                        ; $5581: $10
    rst $20                                       ; $5582: $e7
    ldh [$f0], a                                  ; $5583: $e0 $f0
    rst $38                                       ; $5585: $ff
    db $eb                                        ; $5586: $eb
    rrca                                          ; $5587: $0f
    rrca                                          ; $5588: $0f
    db $10                                        ; $5589: $10
    jp $bc8f                                      ; $558a: $c3 $8f $bc


    ret nz                                        ; $558d: $c0

    add b                                         ; $558e: $80
    add b                                         ; $558f: $80
    rst $38                                       ; $5590: $ff
    rlca                                          ; $5591: $07
    rst $38                                       ; $5592: $ff
    add b                                         ; $5593: $80
    add b                                         ; $5594: $80
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    dec bc                                        ; $5598: $0b
    rrca                                          ; $5599: $0f
    nop                                           ; $559a: $00
    cp $e3                                        ; $559b: $fe $e3
    ldh a, [$fe]                                  ; $559d: $f0 $fe
    db $ec                                        ; $559f: $ec
    add sp, -$1b                                  ; $55a0: $e8 $e5
    ldh [$fd], a                                  ; $55a2: $e0 $fd
    ret nc                                        ; $55a4: $d0

    push af                                       ; $55a5: $f5
    rst $38                                       ; $55a6: $ff
    rst $30                                       ; $55a7: $f7
    rlca                                          ; $55a8: $07
    ld hl, sp+$1f                                 ; $55a9: $f8 $1f
    ldh [$7f], a                                  ; $55ab: $e0 $7f
    add b                                         ; $55ad: $80
    rst $38                                       ; $55ae: $ff
    cp $a8                                        ; $55af: $fe $a8
    push hl                                       ; $55b1: $e5
    rst $08                                       ; $55b2: $cf
    ret nz                                        ; $55b3: $c0

    ccf                                           ; $55b4: $3f
    ld hl, sp+$37                                 ; $55b5: $f8 $37
    db $ec                                        ; $55b7: $ec
    ld a, e                                       ; $55b8: $7b
    sub l                                         ; $55b9: $95
    rst $00                                       ; $55ba: $c7
    sub b                                         ; $55bb: $90
    db $ec                                        ; $55bc: $ec
    ldh [$80], a                                  ; $55bd: $e0 $80
    ldh [rSB], a                                  ; $55bf: $e0 $01
    cp $e1                                        ; $55c1: $fe $e1
    add b                                         ; $55c3: $80
    pop hl                                        ; $55c4: $e1
    pop af                                        ; $55c5: $f1
    rst $38                                       ; $55c6: $ff
    ld bc, $03f2                                  ; $55c7: $01 $f2 $03
    add b                                         ; $55ca: $80
    rst $38                                       ; $55cb: $ff
    nop                                           ; $55cc: $00
    rst $38                                       ; $55cd: $ff
    ld bc, $ffff                                  ; $55ce: $01 $ff $ff
    rrca                                          ; $55d1: $0f
    cp $ff                                        ; $55d2: $fe $ff
    ldh a, [rIE]                                  ; $55d4: $f0 $ff
    add a                                         ; $55d6: $87
    ld hl, sp-$01                                 ; $55d7: $f8 $ff
    rst $38                                       ; $55d9: $ff
    ret nz                                        ; $55da: $c0

    rst $38                                       ; $55db: $ff
    db $fc                                        ; $55dc: $fc
    adc a                                         ; $55dd: $8f
    rst $30                                       ; $55de: $f7
    cp b                                          ; $55df: $b8
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    rst $00                                       ; $55e2: $c7
    rst $38                                       ; $55e3: $ff
    cp c                                          ; $55e4: $b9
    rst $38                                       ; $55e5: $ff
    ret                                           ; $55e6: $c9


    rst $38                                       ; $55e7: $ff
    or c                                          ; $55e8: $b1
    cp $7f                                        ; $55e9: $fe $7f
    adc d                                         ; $55eb: $8a
    rst $38                                       ; $55ec: $ff
    sub a                                         ; $55ed: $97
    ldh a, [rNR41]                                ; $55ee: $f0 $20
    ldh a, [$c0]                                  ; $55f0: $f0 $c0
    ld h, b                                       ; $55f2: $60
    jp hl                                         ; $55f3: $e9


    rst $38                                       ; $55f4: $ff
    ld a, [c]                                     ; $55f5: $f2
    inc sp                                        ; $55f6: $33
    jp hl                                         ; $55f7: $e9


    add hl, sp                                    ; $55f8: $39
    and $3f                                       ; $55f9: $e6 $3f
    ldh a, [$1f]                                  ; $55fb: $f0 $1f
    rst $38                                       ; $55fd: $ff
    db $10                                        ; $55fe: $10
    rra                                           ; $55ff: $1f
    ld [$0f0f], sp                                ; $5600: $08 $0f $0f
    rlca                                          ; $5603: $07
    rrca                                          ; $5604: $0f
    nop                                           ; $5605: $00
    rst $38                                       ; $5606: $ff
    add a                                         ; $5607: $87
    rst $38                                       ; $5608: $ff
    rrca                                          ; $5609: $0f
    ld sp, hl                                     ; $560a: $f9
    rrca                                          ; $560b: $0f
    ld a, [$f80f]                                 ; $560c: $fa $0f $f8
    rst $38                                       ; $560f: $ff
    rlca                                          ; $5610: $07
    db $fd                                        ; $5611: $fd
    inc bc                                        ; $5612: $03
    rst $38                                       ; $5613: $ff
    inc b                                         ; $5614: $04
    rst $38                                       ; $5615: $ff
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    cp a                                          ; $5618: $bf
    cp $36                                        ; $5619: $fe $36
    rst $38                                       ; $561b: $ff
    dec d                                         ; $561c: $15
    rst $38                                       ; $561d: $ff
    dec c                                         ; $561e: $0d
    xor e                                         ; $561f: $ab
    ldh [rP1], a                                  ; $5620: $e0 $00
    cp a                                          ; $5622: $bf
    rst $38                                       ; $5623: $ff
    inc bc                                        ; $5624: $03

jr_011_5625:
    rst $38                                       ; $5625: $ff
    add d                                         ; $5626: $82
    ld a, a                                       ; $5627: $7f
    db $e4                                        ; $5628: $e4
    db $10                                        ; $5629: $10
    db $e3                                        ; $562a: $e3
    adc a                                         ; $562b: $8f
    rst $30                                       ; $562c: $f7
    add b                                         ; $562d: $80
    ldh a, [$80]                                  ; $562e: $f0 $80
    jr c, jr_011_5625                             ; $5630: $38 $f3

    cp $13                                        ; $5632: $fe $13
    rst $38                                       ; $5634: $ff
    ld hl, $fefe                                  ; $5635: $21 $fe $fe
    ldh [rNR44], a                                ; $5638: $e0 $23
    rra                                           ; $563a: $1f
    inc d                                         ; $563b: $14
    rra                                           ; $563c: $1f
    jr @+$11                                      ; $563d: $18 $0f

    ld [$0fff], sp                                ; $563f: $08 $ff $0f
    inc b                                         ; $5642: $04
    cp a                                          ; $5643: $bf
    db $fc                                        ; $5644: $fc
    ld [hl], a                                    ; $5645: $77

jr_011_5646:
    rst $38                                       ; $5646: $ff
    ld a, a                                       ; $5647: $7f
    sbc $fb                                       ; $5648: $de $fb

jr_011_564a:
    cp a                                          ; $564a: $bf
    pop af                                        ; $564b: $f1

jr_011_564c:
    ld [hl], l                                    ; $564c: $75
    ldh [$aa], a                                  ; $564d: $e0 $aa
    rst $38                                       ; $564f: $ff
    ld d, [hl]                                    ; $5650: $56
    rst $38                                       ; $5651: $ff
    ld e, c                                       ; $5652: $59
    db $fc                                        ; $5653: $fc
    ret c                                         ; $5654: $d8

    jp nz, $e0c2                                  ; $5655: $c2 $c2 $e0

    rst $08                                       ; $5658: $cf
    ld b, b                                       ; $5659: $40
    rst $28                                       ; $565a: $ef
    jr nz, jr_011_564c                            ; $565b: $20 $ef

    jr nz, jr_011_564a                            ; $565d: $20 $eb

    rst $08                                       ; $565f: $cf
    ld b, b                                       ; $5660: $40
    ret nc                                        ; $5661: $d0

    adc $02                                       ; $5662: $ce $02
    jr nc, jr_011_5646                            ; $5664: $30 $e0

    inc bc                                        ; $5666: $03
    inc c                                         ; $5667: $0c
    rlca                                          ; $5668: $07
    rst $28                                       ; $5669: $ef
    db $f4                                        ; $566a: $f4
    rlca                                          ; $566b: $07
    ld hl, sp+$0f                                 ; $566c: $f8 $0f
    cp $e1                                        ; $566e: $fe $e1
    rst $38                                       ; $5670: $ff
    inc sp                                        ; $5671: $33
    db $fd                                        ; $5672: $fd
    cp a                                          ; $5673: $bf
    adc a                                         ; $5674: $8f
    cp $fe                                        ; $5675: $fe $fe
    ld [bc], a                                    ; $5677: $02
    cp $03                                        ; $5678: $fe $03
    cp $e0                                        ; $567a: $fe $e0
    dec bc                                        ; $567c: $0b
    sbc a                                         ; $567d: $9f
    cp $0d                                        ; $567e: $fe $0d
    rst $38                                       ; $5680: $ff
    adc a                                         ; $5681: $8f
    add b                                         ; $5682: $80
    ret z                                         ; $5683: $c8

    db $d3                                        ; $5684: $d3
    add b                                         ; $5685: $80
    push bc                                       ; $5686: $c5
    db $f4                                        ; $5687: $f4
    rst $38                                       ; $5688: $ff
    rlca                                          ; $5689: $07
    rst $30                                       ; $568a: $f7
    rlca                                          ; $568b: $07
    rst $30                                       ; $568c: $f7
    inc b                                         ; $568d: $04
    rst $30                                       ; $568e: $f7
    inc b                                         ; $568f: $04
    rrca                                          ; $5690: $0f
    cp l                                          ; $5691: $bd
    inc b                                         ; $5692: $04
    add d                                         ; $5693: $82
    ldh [$09], a                                  ; $5694: $e0 $09
    rra                                           ; $5696: $1f
    db $10                                        ; $5697: $10
    add hl, bc                                    ; $5698: $09
    inc a                                         ; $5699: $3c
    ldh [rIE], a                                  ; $569a: $e0 $ff
    ld a, l                                       ; $569c: $7d
    ld de, $e26c                                  ; $569d: $11 $6c $e2
    ld d, b                                       ; $56a0: $50
    rst $38                                       ; $56a1: $ff
    ld c, b                                       ; $56a2: $48
    rst $38                                       ; $56a3: $ff
    adc b                                         ; $56a4: $88
    ld h, b                                       ; $56a5: $60
    rst $00                                       ; $56a6: $c7
    di                                            ; $56a7: $f3
    adc a                                         ; $56a8: $8f
    add b                                         ; $56a9: $80
    cp $e1                                        ; $56aa: $fe $e1
    ld d, b                                       ; $56ac: $50
    rst $00                                       ; $56ad: $c7
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    rst $38                                       ; $56b0: $ff
    rst $38                                       ; $56b1: $ff
    rst $28                                       ; $56b2: $ef
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    rra                                           ; $56b5: $1f
    rra                                           ; $56b6: $1f
    push af                                       ; $56b7: $f5
    ret nz                                        ; $56b8: $c0

    inc de                                        ; $56b9: $13
    inc e                                         ; $56ba: $1c
    rra                                           ; $56bb: $1f
    db $fd                                        ; $56bc: $fd
    db $f4                                        ; $56bd: $f4
    rst $30                                       ; $56be: $f7
    ldh [$f0], a                                  ; $56bf: $e0 $f0
    rst $38                                       ; $56c1: $ff
    rra                                           ; $56c2: $1f
    rra                                           ; $56c3: $1f
    rst $38                                       ; $56c4: $ff
    adc e                                         ; $56c5: $8b
    rst $38                                       ; $56c6: $ff
    rst $30                                       ; $56c7: $f7
    add h                                         ; $56c8: $84
    rst $30                                       ; $56c9: $f7
    call nz, $e333                                ; $56ca: $c4 $33 $e3
    ld l, $e3                                     ; $56cd: $2e $e3
    rst $38                                       ; $56cf: $ff
    db $e3                                        ; $56d0: $e3
    db $e3                                        ; $56d1: $e3
    ld a, $ff                                     ; $56d2: $3e $ff
    pop bc                                        ; $56d4: $c1
    pop bc                                        ; $56d5: $c1
    rst $08                                       ; $56d6: $cf
    ld b, b                                       ; $56d7: $40
    rst $38                                       ; $56d8: $ff
    rst $38                                       ; $56d9: $ff
    ld a, b                                       ; $56da: $78
    add a                                         ; $56db: $87
    db $fc                                        ; $56dc: $fc
    add a                                         ; $56dd: $87
    db $fc                                        ; $56de: $fc
    ld a, h                                       ; $56df: $7c
    db $fc                                        ; $56e0: $fc
    ccf                                           ; $56e1: $3f
    call nz, Call_000_3ffc                        ; $56e2: $c4 $fc $3f
    rst $38                                       ; $56e5: $ff
    ret nz                                        ; $56e6: $c0

    ret nz                                        ; $56e7: $c0

    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    dec bc                                        ; $56eb: $0b
    rrca                                          ; $56ec: $0f
    nop                                           ; $56ed: $00
    cp $e3                                        ; $56ee: $fe $e3
    ldh a, [$fe]                                  ; $56f0: $f0 $fe
    db $ec                                        ; $56f2: $ec
    add sp, -$1b                                  ; $56f3: $e8 $e5
    ldh [$fd], a                                  ; $56f5: $e0 $fd
    ret nc                                        ; $56f7: $d0

    push af                                       ; $56f8: $f5
    rst $38                                       ; $56f9: $ff
    pop af                                        ; $56fa: $f1
    ld bc, $03f2                                  ; $56fb: $01 $f2 $03
    db $fc                                        ; $56fe: $fc
    rrca                                          ; $56ff: $0f
    di                                            ; $5700: $f3
    rra                                           ; $5701: $1f
    cp $a8                                        ; $5702: $fe $a8
    push hl                                       ; $5704: $e5
    rst $28                                       ; $5705: $ef
    ldh [$1f], a                                  ; $5706: $e0 $1f
    ld hl, sp+$07                                 ; $5708: $f8 $07
    cp $19                                        ; $570a: $fe $19
    ld sp, hl                                     ; $570c: $f9
    rst $38                                       ; $570d: $ff
    ret z                                         ; $570e: $c8

    push af                                       ; $570f: $f5
    add b                                         ; $5710: $80
    push hl                                       ; $5711: $e5
    rst $30                                       ; $5712: $f7
    inc e                                         ; $5713: $1c
    rst $28                                       ; $5714: $ef
    jr c, @+$01                                   ; $5715: $38 $ff

    rst $38                                       ; $5717: $ff
    inc sp                                        ; $5718: $33
    rst $38                                       ; $5719: $ff
    jr nc, jr_011_575b                            ; $571a: $30 $3f

    daa                                           ; $571c: $27
    dec sp                                        ; $571d: $3b
    ccf                                           ; $571e: $3f
    ld a, e                                       ; $571f: $7b
    rst $38                                       ; $5720: $ff
    ld a, a                                       ; $5721: $7f
    ei                                            ; $5722: $fb
    sbc a                                         ; $5723: $9f
    db $fd                                        ; $5724: $fd
    rst $20                                       ; $5725: $e7
    cp $03                                        ; $5726: $fe $03
    rst $38                                       ; $5728: $ff
    rst $38                                       ; $5729: $ff
    add hl, de                                    ; $572a: $19
    rst $38                                       ; $572b: $ff
    ld bc, $1cff                                  ; $572c: $01 $ff $1c
    rst $28                                       ; $572f: $ef
    cp a                                          ; $5730: $bf
    rst $28                                       ; $5731: $ef
    ld d, a                                       ; $5732: $57
    rst $38                                       ; $5733: $ff
    rst $28                                       ; $5734: $ef
    rst $38                                       ; $5735: $ff
    ld e, b                                       ; $5736: $58
    ldh [$80], a                                  ; $5737: $e0 $80
    cp $e1                                        ; $5739: $fe $e1
    adc a                                         ; $573b: $8f
    cp $e0                                        ; $573c: $fe $e0
    rst $28                                       ; $573e: $ef
    rst $08                                       ; $573f: $cf
    ret nz                                        ; $5740: $c0

    rst $28                                       ; $5741: $ef
    jr nz, jr_011_578c                            ; $5742: $20 $48

    db $e3                                        ; $5744: $e3
    db $fc                                        ; $5745: $fc
    inc e                                         ; $5746: $1c
    ccf                                           ; $5747: $3f
    rst $38                                       ; $5748: $ff
    ld a, [hl+]                                   ; $5749: $2a
    ld a, a                                       ; $574a: $7f
    ld d, l                                       ; $574b: $55
    ld a, a                                       ; $574c: $7f
    ld l, a                                       ; $574d: $6f
    rst $38                                       ; $574e: $ff
    sub [hl]                                      ; $574f: $96
    rst $38                                       ; $5750: $ff
    rst $38                                       ; $5751: $ff
    or a                                          ; $5752: $b7
    rst $38                                       ; $5753: $ff
    sub b                                         ; $5754: $90
    rst $38                                       ; $5755: $ff
    or b                                          ; $5756: $b0
    ld e, a                                       ; $5757: $5f
    ld a, b                                       ; $5758: $78
    rst $38                                       ; $5759: $ff
    rst $38                                       ; $575a: $ff

jr_011_575b:
    add hl, sp                                    ; $575b: $39
    rst $38                                       ; $575c: $ff
    ld [$04f7], sp                                ; $575d: $08 $f7 $04
    rst $30                                       ; $5760: $f7
    add h                                         ; $5761: $84
    rst $38                                       ; $5762: $ff
    rst $38                                       ; $5763: $ff
    cp l                                          ; $5764: $bd
    rst $38                                       ; $5765: $ff
    and c                                         ; $5766: $a1
    rst $38                                       ; $5767: $ff
    ld b, c                                       ; $5768: $41

jr_011_5769:
    rst $38                                       ; $5769: $ff
    inc bc                                        ; $576a: $03
    rst $38                                       ; $576b: $ff
    rst $38                                       ; $576c: $ff
    inc sp                                        ; $576d: $33
    rst $18                                       ; $576e: $df
    ld a, [c]                                     ; $576f: $f2
    sbc a                                         ; $5770: $9f
    db $f4                                        ; $5771: $f4
    rst $38                                       ; $5772: $ff
    ld h, h                                       ; $5773: $64
    rst $28                                       ; $5774: $ef
    ld a, a                                       ; $5775: $7f
    and b                                         ; $5776: $a0
    rst $28                                       ; $5777: $ef
    jr nz, jr_011_5769                            ; $5778: $20 $ef

    and b                                         ; $577a: $a0
    ld c, a                                       ; $577b: $4f
    ret nz                                        ; $577c: $c0

    cp d                                          ; $577d: $ba
    ldh [$fe], a                                  ; $577e: $e0 $fe
    inc c                                         ; $5780: $0c
    ld [c], a                                     ; $5781: $e2
    ld a, a                                       ; $5782: $7f
    ld l, d                                       ; $5783: $6a
    ccf                                           ; $5784: $3f
    inc [hl]                                      ; $5785: $34
    ccf                                           ; $5786: $3f
    inc h                                         ; $5787: $24
    ccf                                           ; $5788: $3f
    rst $38                                       ; $5789: $ff
    jr nz, @+$01                                  ; $578a: $20 $ff

jr_011_578c:
    ld de, $1cff                                  ; $578c: $11 $ff $1c
    rst $38                                       ; $578f: $ff
    ld [$f7ff], sp                                ; $5790: $08 $ff $f7
    ld [$82f3], sp                                ; $5793: $08 $f3 $82
    cp $e0                                        ; $5796: $fe $e0
    add e                                         ; $5798: $83
    db $fc                                        ; $5799: $fc
    adc a                                         ; $579a: $8f
    or l                                          ; $579b: $b5
    ld a, a                                       ; $579c: $7f
    cp a                                          ; $579d: $bf
    call $f2ff                                    ; $579e: $cd $ff $f2
    cp a                                          ; $57a1: $bf
    ld a, [c]                                     ; $57a2: $f2
    rra                                           ; $57a3: $1f
    db $ec                                        ; $57a4: $ec
    ldh [rIE], a                                  ; $57a5: $e0 $ff
    inc c                                         ; $57a7: $0c
    di                                            ; $57a8: $f3
    ld a, $e5                                     ; $57a9: $3e $e5
    rst $38                                       ; $57ab: $ff
    adc c                                         ; $57ac: $89
    rst $38                                       ; $57ad: $ff
    ld d, b                                       ; $57ae: $50
    rst $08                                       ; $57af: $cf
    rst $38                                       ; $57b0: $ff
    ld h, b                                       ; $57b1: $60
    rst $38                                       ; $57b2: $ff
    add d                                         ; $57b3: $82
    add b                                         ; $57b4: $80
    pop hl                                        ; $57b5: $e1
    call nc, $8fc2                                ; $57b6: $d4 $c2 $8f
    add b                                         ; $57b9: $80
    cp a                                          ; $57ba: $bf
    ld c, a                                       ; $57bb: $4f
    ret nz                                        ; $57bc: $c0

    cpl                                           ; $57bd: $2f
    ldh [$2f], a                                  ; $57be: $e0 $2f
    ldh [$9c], a                                  ; $57c0: $e0 $9c
    ldh [rDIV], a                                 ; $57c2: $e0 $04
    ei                                            ; $57c4: $fb
    di                                            ; $57c5: $f3
    inc bc                                        ; $57c6: $03
    ret nc                                        ; $57c7: $d0

    rst $00                                       ; $57c8: $c7
    ld [c], a                                     ; $57c9: $e2
    ccf                                           ; $57ca: $3f
    db $e3                                        ; $57cb: $e3
    ccf                                           ; $57cc: $3f
    ldh [rIE], a                                  ; $57cd: $e0 $ff
    rst $38                                       ; $57cf: $ff
    jr nz, jr_011_5811                            ; $57d0: $20 $3f

    ret nz                                        ; $57d2: $c0

    ld a, a                                       ; $57d3: $7f
    rst $38                                       ; $57d4: $ff
    ld a, a                                       ; $57d5: $7f
    db $fc                                        ; $57d6: $fc
    xor a                                         ; $57d7: $af
    ld l, a                                       ; $57d8: $6f
    rst $38                                       ; $57d9: $ff
    ld b, e                                       ; $57da: $43
    add d                                         ; $57db: $82
    call z, Call_000_01e0                         ; $57dc: $cc $e0 $01
    cp $e2                                        ; $57df: $fe $e2
    rst $38                                       ; $57e1: $ff
    ld a, a                                       ; $57e2: $7f
    rst $38                                       ; $57e3: $ff
    ld a, a                                       ; $57e4: $7f
    rst $30                                       ; $57e5: $f7
    rst $38                                       ; $57e6: $ff
    add b                                         ; $57e7: $80

jr_011_57e8:
    ld a, a                                       ; $57e8: $7f
    ret nc                                        ; $57e9: $d0

    ld h, b                                       ; $57ea: $60
    ldh [rIE], a                                  ; $57eb: $e0 $ff
    ld [$88ff], sp                                ; $57ed: $08 $ff $88
    ld hl, sp+$08                                 ; $57f0: $f8 $08
    ldh a, [rNR10]                                ; $57f2: $f0 $10
    ldh a, [$b7]                                  ; $57f4: $f0 $b7
    jr nz, jr_011_57e8                            ; $57f6: $20 $f0

    ret nz                                        ; $57f8: $c0

    add b                                         ; $57f9: $80
    call $40ff                                    ; $57fa: $cd $ff $40
    cp $e0                                        ; $57fd: $fe $e0
    ld b, [hl]                                    ; $57ff: $46
    ld l, a                                       ; $5800: $6f
    rst $38                                       ; $5801: $ff
    ld hl, $203f                                  ; $5802: $21 $3f $20
    cp $e3                                        ; $5805: $fe $e3
    rst $38                                       ; $5807: $ff
    nop                                           ; $5808: $00
    cp $e0                                        ; $5809: $fe $e0
    ld e, a                                       ; $580b: $5f
    ld bc, $e0ff                                  ; $580c: $01 $ff $e0
    rst $38                                       ; $580f: $ff
    and b                                         ; $5810: $a0

jr_011_5811:
    cp $e2                                        ; $5811: $fe $e2
    ld d, b                                       ; $5813: $50
    ld [bc], a                                    ; $5814: $02
    db $e3                                        ; $5815: $e3
    sbc [hl]                                      ; $5816: $9e
    nop                                           ; $5817: $00
    pop hl                                        ; $5818: $e1
    rst $08                                       ; $5819: $cf
    ld b, b                                       ; $581a: $40
    rst $08                                       ; $581b: $cf
    ld b, b                                       ; $581c: $40
    nop                                           ; $581d: $00
    pop hl                                        ; $581e: $e1
    sub [hl]                                      ; $581f: $96
    pop bc                                        ; $5820: $c1
    db $f4                                        ; $5821: $f4
    rst $38                                       ; $5822: $ff
    rlca                                          ; $5823: $07
    inc c                                         ; $5824: $0c
    rlca                                          ; $5825: $07
    rlca                                          ; $5826: $07
    rlca                                          ; $5827: $07
    db $fc                                        ; $5828: $fc
    rst $38                                       ; $5829: $ff
    inc bc                                        ; $582a: $03
    rst $38                                       ; $582b: $ff
    inc bc                                        ; $582c: $03
    ld a, a                                       ; $582d: $7f
    ld b, b                                       ; $582e: $40
    rst $38                                       ; $582f: $ff
    ld hl, sp+$27                                 ; $5830: $f8 $27
    cp $11                                        ; $5832: $fe $11
    adc $c9                                       ; $5834: $ce $c9
    ldh [rIE], a                                  ; $5836: $e0 $ff
    rst $38                                       ; $5838: $ff
    inc b                                         ; $5839: $04
    adc h                                         ; $583a: $8c
    ldh [rOBP1], a                                ; $583b: $e0 $49
    ldh [$d7], a                                  ; $583d: $e0 $d7
    ld hl, sp-$01                                 ; $583f: $f8 $ff
    ld l, a                                       ; $5841: $6f
    ldh a, [rIE]                                  ; $5842: $f0 $ff
    ld d, b                                       ; $5844: $50
    rst $18                                       ; $5845: $df
    rst $18                                       ; $5846: $df
    rst $18                                       ; $5847: $df
    ld [hl], b                                    ; $5848: $70
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    adc a                                         ; $584b: $8f
    adc a                                         ; $584c: $8f
    rst $28                                       ; $584d: $ef
    jr nz, @+$01                                  ; $584e: $20 $ff

    sub b                                         ; $5850: $90
    ld a, a                                       ; $5851: $7f
    rst $38                                       ; $5852: $ff
    add sp, $1f                                   ; $5853: $e8 $1f
    ld hl, sp+$18                                 ; $5855: $f8 $18
    ld hl, sp-$10                                 ; $5857: $f8 $f0
    ldh a, [$1f]                                  ; $5859: $f0 $1f
    rlca                                          ; $585b: $07
    rst $38                                       ; $585c: $ff
    ldh [$e0], a                                  ; $585d: $e0 $e0
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    dec bc                                        ; $5862: $0b
    rrca                                          ; $5863: $0f
    nop                                           ; $5864: $00
    cp $e3                                        ; $5865: $fe $e3
    ldh a, [$fe]                                  ; $5867: $f0 $fe
    db $ec                                        ; $5869: $ec
    add sp, -$1b                                  ; $586a: $e8 $e5
    ldh [$fd], a                                  ; $586c: $e0 $fd
    ret nc                                        ; $586e: $d0

    rst $38                                       ; $586f: $ff
    ld a, [c]                                     ; $5870: $f2
    ldh [$ea], a                                  ; $5871: $e0 $ea
    rlca                                          ; $5873: $07
    ret z                                         ; $5874: $c8

    push af                                       ; $5875: $f5
    add b                                         ; $5876: $80
    db $eb                                        ; $5877: $eb
    or $06                                        ; $5878: $f6 $06
    add hl, bc                                    ; $587a: $09
    rrca                                          ; $587b: $0f

jr_011_587c:
    ei                                            ; $587c: $fb
    dec bc                                        ; $587d: $0b
    rrca                                          ; $587e: $0f
    rst $38                                       ; $587f: $ff
    pop hl                                        ; $5880: $e1
    jr jr_011_58a2                                ; $5881: $18 $1f

    jr nc, jr_011_58c4                            ; $5883: $30 $3f

    ld a, b                                       ; $5885: $78
    rst $38                                       ; $5886: $ff
    ld c, a                                       ; $5887: $4f
    cp $c7                                        ; $5888: $fe $c7
    rst $38                                       ; $588a: $ff
    ld b, c                                       ; $588b: $41
    rst $38                                       ; $588c: $ff
    add b                                         ; $588d: $80
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    sbc h                                         ; $5890: $9c
    rst $38                                       ; $5891: $ff
    db $e4                                        ; $5892: $e4
    ldh a, [$80]                                  ; $5893: $f0 $80
    ld [hl], b                                    ; $5895: $70
    ret nz                                        ; $5896: $c0

    ld [hl], b                                    ; $5897: $70
    rst $38                                       ; $5898: $ff
    ret nz                                        ; $5899: $c0

    jr nc, jr_011_587c                            ; $589a: $30 $e0

    sbc a                                         ; $589c: $9f
    ldh a, [$df]                                  ; $589d: $f0 $df
    ld [hl], b                                    ; $589f: $70
    rst $08                                       ; $58a0: $cf
    rst $30                                       ; $58a1: $f7

jr_011_58a2:
    ld a, b                                       ; $58a2: $78
    rst $08                                       ; $58a3: $cf
    ld a, b                                       ; $58a4: $78
    add b                                         ; $58a5: $80
    db $ed                                        ; $58a6: $ed
    rra                                           ; $58a7: $1f
    dec d                                         ; $58a8: $15
    rra                                           ; $58a9: $1f
    add hl, de                                    ; $58aa: $19
    rst $38                                       ; $58ab: $ff
    ccf                                           ; $58ac: $3f
    dec hl                                        ; $58ad: $2b
    ccf                                           ; $58ae: $3f
    inc h                                         ; $58af: $24
    rst $38                                       ; $58b0: $ff
    jr nc, @+$01                                  ; $58b1: $30 $ff

    jr z, @+$01                                   ; $58b3: $28 $ff

    rst $38                                       ; $58b5: $ff
    ld d, h                                       ; $58b6: $54
    rst $38                                       ; $58b7: $ff
    ld b, h                                       ; $58b8: $44
    sbc a                                         ; $58b9: $9f
    ldh a, [$bf]                                  ; $58ba: $f0 $bf
    ldh a, [rIE]                                  ; $58bc: $f0 $ff
    rst $38                                       ; $58be: $ff
    ld hl, sp-$01                                 ; $58bf: $f8 $ff
    ld sp, hl                                     ; $58c1: $f9
    rst $38                                       ; $58c2: $ff
    dec e                                         ; $58c3: $1d

jr_011_58c4:
    rst $38                                       ; $58c4: $ff
    rlca                                          ; $58c5: $07
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    ld [bc], a                                    ; $58c8: $02
    rst $38                                       ; $58c9: $ff
    inc bc                                        ; $58ca: $03
    adc a                                         ; $58cb: $8f
    ld hl, sp-$71                                 ; $58cc: $f8 $8f
    ld hl, sp-$01                                 ; $58ce: $f8 $ff
    sbc a                                         ; $58d0: $9f
    ldh a, [$1f]                                  ; $58d1: $f0 $1f
    ldh a, [$30]                                  ; $58d3: $f0 $30
    ldh [$f0], a                                  ; $58d5: $e0 $f0
    ldh [$ef], a                                  ; $58d7: $e0 $ef
    ldh a, [$50]                                  ; $58d9: $f0 $50
    ldh a, [$50]                                  ; $58db: $f0 $50
    nop                                           ; $58dd: $00
    rst $20                                       ; $58de: $e7
    pop af                                        ; $58df: $f1
    ld bc, $dff2                                  ; $58e0: $01 $f2 $df
    inc bc                                        ; $58e3: $03
    or $07                                        ; $58e4: $f6 $07
    rst $38                                       ; $58e6: $ff
    ld b, b                                       ; $58e7: $40
    cp $e0                                        ; $58e8: $fe $e0
    jr nz, @+$01                                  ; $58ea: $20 $ff

    rst $38                                       ; $58ec: $ff
    ccf                                           ; $58ed: $3f
    set 7, [hl]                                   ; $58ee: $cb $fe
    add hl, hl                                    ; $58f0: $29
    rst $38                                       ; $58f1: $ff
    ld b, $ff                                     ; $58f2: $06 $ff
    ld de, $ffff                                  ; $58f4: $11 $ff $ff
    rst $38                                       ; $58f7: $ff
    nop                                           ; $58f8: $00
    rst $38                                       ; $58f9: $ff
    inc c                                         ; $58fa: $0c
    ei                                            ; $58fb: $fb
    rra                                           ; $58fc: $1f
    db $ed                                        ; $58fd: $ed
    rst $38                                       ; $58fe: $ff
    ccf                                           ; $58ff: $3f
    add sp, $3f                                   ; $5900: $e8 $3f
    ret nc                                        ; $5902: $d0

    rst $38                                       ; $5903: $ff
    ld [hl], h                                    ; $5904: $74
    rst $38                                       ; $5905: $ff
    ld b, l                                       ; $5906: $45
    db $fd                                        ; $5907: $fd
    rst $38                                       ; $5908: $ff
    call z, $90e0                                 ; $5909: $cc $e0 $90
    ldh a, [rNR41]                                ; $590c: $f0 $20
    ldh a, [rNR41]                                ; $590e: $f0 $20
    rst $08                                       ; $5910: $cf
    rst $38                                       ; $5911: $ff
    ret nz                                        ; $5912: $c0

    adc a                                         ; $5913: $8f
    add b                                         ; $5914: $80
    adc a                                         ; $5915: $8f
    add b                                         ; $5916: $80
    rrca                                          ; $5917: $0f
    nop                                           ; $5918: $00
    rst $38                                       ; $5919: $ff
    ld [hl], a                                    ; $591a: $77
    add hl, bc                                    ; $591b: $09
    rst $38                                       ; $591c: $ff
    db $10                                        ; $591d: $10
    reti                                          ; $591e: $d9


    ldh [rNR10], a                                ; $591f: $e0 $10
    rrca                                          ; $5921: $0f
    ld [$e0fe], sp                                ; $5922: $08 $fe $e0
    rst $38                                       ; $5925: $ff
    ld b, $0f                                     ; $5926: $06 $0f
    dec b                                         ; $5928: $05
    ld de, $90ff                                  ; $5929: $11 $ff $90
    rst $38                                       ; $592c: $ff
    ldh [rIE], a                                  ; $592d: $e0 $ff
    ld a, a                                       ; $592f: $7f
    ret nz                                        ; $5930: $c0

    rst $38                                       ; $5931: $ff
    ret nz                                        ; $5932: $c0

    ld a, a                                       ; $5933: $7f
    ldh [$3f], a                                  ; $5934: $e0 $3f
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    rra                                           ; $5938: $1f
    rst $38                                       ; $5939: $ff
    sbc e                                         ; $593a: $9b
    ld b, d                                       ; $593b: $42
    cp $c2                                        ; $593c: $fe $c2
    cp $02                                        ; $593e: $fe $02
    rst $30                                       ; $5940: $f7
    cp $01                                        ; $5941: $fe $01
    rst $38                                       ; $5943: $ff
    cp $e1                                        ; $5944: $fe $e1
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    rra                                           ; $5948: $1f
    ei                                            ; $5949: $fb
    cp $c8                                        ; $594a: $fe $c8
    adc $07                                       ; $594c: $ce $07
    rrca                                          ; $594e: $0f
    add hl, bc                                    ; $594f: $09
    rrca                                          ; $5950: $0f
    ld a, [bc]                                    ; $5951: $0a
    rrca                                          ; $5952: $0f
    dec b                                         ; $5953: $05
    db $db                                        ; $5954: $db
    di                                            ; $5955: $f3
    inc bc                                        ; $5956: $03
    ld a, [hl]                                    ; $5957: $7e
    jp Jump_011_50ff                              ; $5958: $c3 $ff $50


    or b                                          ; $595b: $b0
    ldh [$94], a                                  ; $595c: $e0 $94
    rst $38                                       ; $595e: $ff
    ld a, a                                       ; $595f: $7f
    inc hl                                        ; $5960: $23
    rst $38                                       ; $5961: $ff
    pop bc                                        ; $5962: $c1
    rst $38                                       ; $5963: $ff
    add c                                         ; $5964: $81
    rst $38                                       ; $5965: $ff
    add e                                         ; $5966: $83
    db $fc                                        ; $5967: $fc
    ldh [$d5], a                                  ; $5968: $e0 $d5
    pop hl                                        ; $596a: $e1
    ld c, d                                       ; $596b: $4a
    ldh [rNR43], a                                ; $596c: $e0 $22
    ld a, [c]                                     ; $596e: $f2
    ldh [rSB], a                                  ; $596f: $e0 $01
    ldh a, [$e0]                                  ; $5971: $f0 $e0
    add b                                         ; $5973: $80
    rst $38                                       ; $5974: $ff
    db $fd                                        ; $5975: $fd
    ld b, b                                       ; $5976: $40
    sub b                                         ; $5977: $90
    ret                                           ; $5978: $c9


    adc a                                         ; $5979: $8f
    add b                                         ; $597a: $80
    rst $08                                       ; $597b: $cf
    ret nz                                        ; $597c: $c0

    pop af                                        ; $597d: $f1
    ld bc, $f3df                                  ; $597e: $01 $df $f3
    inc bc                                        ; $5981: $03
    db $f4                                        ; $5982: $f4
    rlca                                          ; $5983: $07
    ld hl, sp-$7f                                 ; $5984: $f8 $81
    ldh [rIF], a                                  ; $5986: $e0 $0f
    rrca                                          ; $5988: $0f
    rst $28                                       ; $5989: $ef
    db $fc                                        ; $598a: $fc
    rst $38                                       ; $598b: $ff
    inc bc                                        ; $598c: $03
    inc bc                                        ; $598d: $03
    sub a                                         ; $598e: $97
    ldh [$80], a                                  ; $598f: $e0 $80
    ld a, a                                       ; $5991: $7f
    ldh [$f1], a                                  ; $5992: $e0 $f1
    rra                                           ; $5994: $1f
    ld l, e                                       ; $5995: $6b
    ldh [rLYC], a                                 ; $5996: $e0 $45
    pop hl                                        ; $5998: $e1
    adc l                                         ; $5999: $8d
    ldh [rLCDC], a                                ; $599a: $e0 $40
    rst $38                                       ; $599c: $ff
    ret nz                                        ; $599d: $c0

    rst $38                                       ; $599e: $ff
    rst $28                                       ; $599f: $ef
    db $e3                                        ; $59a0: $e3
    db $fc                                        ; $59a1: $fc
    sbc a                                         ; $59a2: $9f
    db $e4                                        ; $59a3: $e4
    add d                                         ; $59a4: $82
    ldh [$c0], a                                  ; $59a5: $e0 $c0
    rst $38                                       ; $59a7: $ff
    ccf                                           ; $59a8: $3f
    rst $38                                       ; $59a9: $ff
    ccf                                           ; $59aa: $3f
    rst $28                                       ; $59ab: $ef
    jr nz, @+$01                                  ; $59ac: $20 $ff

    ldh a, [rIF]                                  ; $59ae: $f0 $0f
    ld hl, sp+$07                                 ; $59b0: $f8 $07
    rst $38                                       ; $59b2: $ff
    db $fc                                        ; $59b3: $fc
    inc b                                         ; $59b4: $04
    db $fc                                        ; $59b5: $fc
    db $fc                                        ; $59b6: $fc
    db $fc                                        ; $59b7: $fc
    rlca                                          ; $59b8: $07
    rst $38                                       ; $59b9: $ff
    ld hl, sp+$01                                 ; $59ba: $f8 $01
    ld hl, sp+$00                                 ; $59bc: $f8 $00
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    dec bc                                        ; $59c0: $0b
    rrca                                          ; $59c1: $0f
    nop                                           ; $59c2: $00
    cp $e3                                        ; $59c3: $fe $e3
    ldh a, [$fe]                                  ; $59c5: $f0 $fe
    db $ec                                        ; $59c7: $ec
    add sp, -$1b                                  ; $59c8: $e8 $e5
    ldh [$fd], a                                  ; $59ca: $e0 $fd
    ret nc                                        ; $59cc: $d0

    push af                                       ; $59cd: $f5
    rst $38                                       ; $59ce: $ff
    di                                            ; $59cf: $f3
    inc bc                                        ; $59d0: $03
    db $fc                                        ; $59d1: $fc
    rrca                                          ; $59d2: $0f
    ldh a, [$3f]                                  ; $59d3: $f0 $3f
    ret nz                                        ; $59d5: $c0

    ld a, a                                       ; $59d6: $7f
    cp $a8                                        ; $59d7: $fe $a8
    push hl                                       ; $59d9: $e5
    adc a                                         ; $59da: $8f
    add b                                         ; $59db: $80
    ld l, a                                       ; $59dc: $6f
    ldh [$1f], a                                  ; $59dd: $e0 $1f
    ld hl, sp+$07                                 ; $59df: $f8 $07
    push af                                       ; $59e1: $f5
    db $fc                                        ; $59e2: $fc
    ret z                                         ; $59e3: $c8

    ldh a, [rSB]                                  ; $59e4: $f0 $01
    cp $e1                                        ; $59e6: $fe $e1
    ldh a, [rP1]                                  ; $59e8: $f0 $00
    pop af                                        ; $59ea: $f1
    ld bc, $f3ff                                  ; $59eb: $01 $ff $f3
    ld [bc], a                                    ; $59ee: $02
    rst $30                                       ; $59ef: $f7
    dec b                                         ; $59f0: $05
    add c                                         ; $59f1: $81
    rst $38                                       ; $59f2: $ff
    inc de                                        ; $59f3: $13
    cp $ff                                        ; $59f4: $fe $ff
    inc sp                                        ; $59f6: $33
    cp $39                                        ; $59f7: $fe $39
    rst $28                                       ; $59f9: $ef
    cp a                                          ; $59fa: $bf
    or $ff                                        ; $59fb: $f6 $ff
    ldh [rIE], a                                  ; $59fd: $e0 $ff
    rst $38                                       ; $59ff: $ff
    ld a, $ff                                     ; $5a00: $3e $ff
    push bc                                       ; $5a02: $c5
    jp $f1fe                                      ; $5a03: $c3 $fe $f1


    ccf                                           ; $5a06: $3f
    rst $38                                       ; $5a07: $ff
    pop af                                        ; $5a08: $f1
    rra                                           ; $5a09: $1f
    pop af                                        ; $5a0a: $f1
    ccf                                           ; $5a0b: $3f
    ld a, [$fe5e]                                 ; $5a0c: $fa $5e $fe
    ld b, $ef                                     ; $5a0f: $06 $ef
    cp $fe                                        ; $5a11: $fe $fe
    rst $38                                       ; $5a13: $ff
    ld b, l                                       ; $5a14: $45
    ld h, b                                       ; $5a15: $60
    db $ed                                        ; $5a16: $ed
    rst $38                                       ; $5a17: $ff
    ld a, [bc]                                    ; $5a18: $0a
    rst $38                                       ; $5a19: $ff
    db $fd                                        ; $5a1a: $fd
    add hl, bc                                    ; $5a1b: $09
    db $fc                                        ; $5a1c: $fc
    pop hl                                        ; $5a1d: $e1
    rra                                           ; $5a1e: $1f
    inc de                                        ; $5a1f: $13
    ccf                                           ; $5a20: $3f
    ld hl, $223f                                  ; $5a21: $21 $3f $22
    rst $38                                       ; $5a24: $ff
    ld a, a                                       ; $5a25: $7f
    ld b, d                                       ; $5a26: $42
    rst $38                                       ; $5a27: $ff
    ld b, l                                       ; $5a28: $45
    rst $38                                       ; $5a29: $ff
    and d                                         ; $5a2a: $a2
    rst $38                                       ; $5a2b: $ff
    ld e, h                                       ; $5a2c: $5c
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    ld b, h                                       ; $5a2f: $44
    rst $38                                       ; $5a30: $ff
    jp nz, Jump_000_21ff                          ; $5a31: $c2 $ff $21

    rst $38                                       ; $5a34: $ff
    daa                                           ; $5a35: $27
    rst $38                                       ; $5a36: $ff
    cp $13                                        ; $5a37: $fe $13
    rst $38                                       ; $5a39: $ff
    ld b, [hl]                                    ; $5a3a: $46
    rst $38                                       ; $5a3b: $ff
    adc b                                         ; $5a3c: $88
    rst $38                                       ; $5a3d: $ff
    ld [hl], b                                    ; $5a3e: $70
    cp $ea                                        ; $5a3f: $fe $ea
    ldh [$86], a                                  ; $5a41: $e0 $86
    rst $38                                       ; $5a43: $ff
    ld [$c8ff], sp                                ; $5a44: $08 $ff $c8
    rst $38                                       ; $5a47: $ff
    sub b                                         ; $5a48: $90
    di                                            ; $5a49: $f3
    adc a                                         ; $5a4a: $8f
    add b                                         ; $5a4b: $80
    cp $e1                                        ; $5a4c: $fe $e1
    db $10                                        ; $5a4e: $10
    rst $20                                       ; $5a4f: $e7
    ld a, a                                       ; $5a50: $7f
    ld b, l                                       ; $5a51: $45
    ld a, a                                       ; $5a52: $7f
    ld b, b                                       ; $5a53: $40
    cp a                                          ; $5a54: $bf
    ccf                                           ; $5a55: $3f
    jr nz, @+$21                                  ; $5a56: $20 $1f

    add hl, de                                    ; $5a58: $19
    rst $30                                       ; $5a59: $f7

jr_011_5a5a:
    rlca                                          ; $5a5a: $07
    cp $c3                                        ; $5a5b: $fe $c3
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    ld sp, hl                                     ; $5a5f: $f9
    sbc a                                         ; $5a60: $9f
    db $f4                                        ; $5a61: $f4
    adc a                                         ; $5a62: $8f
    ld a, [$f90f]                                 ; $5a63: $fa $0f $f9
    ld b, $ef                                     ; $5a66: $06 $ef
    rst $38                                       ; $5a68: $ff
    jp nc, $22ff                                  ; $5a69: $d2 $ff $22

    xor l                                         ; $5a6c: $ad
    ldh [rIE], a                                  ; $5a6d: $e0 $ff
    jr nc, @+$01                                  ; $5a6f: $30 $ff

    rst $38                                       ; $5a71: $ff
    ld e, b                                       ; $5a72: $58
    rst $20                                       ; $5a73: $e7
    cp h                                          ; $5a74: $bc
    db $e3                                        ; $5a75: $e3
    ld a, $c1                                     ; $5a76: $3e $c1
    rst $38                                       ; $5a78: $ff
    sub c                                         ; $5a79: $91
    rst $18                                       ; $5a7a: $df
    rst $38                                       ; $5a7b: $ff
    adc e                                         ; $5a7c: $8b
    cp $6b                                        ; $5a7d: $fe $6b
    sbc [hl]                                      ; $5a7f: $9e
    ldh [$c7], a                                  ; $5a80: $e0 $c7
    adc a                                         ; $5a82: $8f
    add b                                         ; $5a83: $80
    rst $28                                       ; $5a84: $ef
    rst $08                                       ; $5a85: $cf
    ld b, b                                       ; $5a86: $40
    rst $28                                       ; $5a87: $ef
    jr nz, jr_011_5a5a                            ; $5a88: $20 $d0

    call Call_000_3f20                            ; $5a8a: $cd $20 $3f
    ld b, b                                       ; $5a8d: $40
    db $fd                                        ; $5a8e: $fd
    ld a, a                                       ; $5a8f: $7f
    cp $e1                                        ; $5a90: $fe $e1
    rst $38                                       ; $5a92: $ff
    ld a, a                                       ; $5a93: $7f
    ei                                            ; $5a94: $fb
    ld l, [hl]                                    ; $5a95: $6e
    rst $38                                       ; $5a96: $ff
    ld l, a                                       ; $5a97: $6f
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    ld b, b                                       ; $5a9a: $40
    rrca                                          ; $5a9b: $0f
    db $fc                                        ; $5a9c: $fc
    rlca                                          ; $5a9d: $07
    rst $38                                       ; $5a9e: $ff
    rlca                                          ; $5a9f: $07
    cp $ff                                        ; $5aa0: $fe $ff
    rlca                                          ; $5aa2: $07
    db $fc                                        ; $5aa3: $fc
    rst $38                                       ; $5aa4: $ff
    ld a, [$e1bf]                                 ; $5aa5: $fa $bf $e1
    rst $38                                       ; $5aa8: $ff
    pop af                                        ; $5aa9: $f1
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    add hl, bc                                    ; $5aac: $09

jr_011_5aad:
    rst $28                                       ; $5aad: $ef
    jr nz, @+$01                                  ; $5aae: $20 $ff

    db $10                                        ; $5ab0: $10
    rst $38                                       ; $5ab1: $ff
    db $10                                        ; $5ab2: $10
    ld l, [hl]                                    ; $5ab3: $6e
    ret z                                         ; $5ab4: $c8

    ldh [rLCDC], a                                ; $5ab5: $e0 $40
    ldh a, [$80]                                  ; $5ab7: $f0 $80
    cp b                                          ; $5ab9: $b8
    pop de                                        ; $5aba: $d1
    rst $38                                       ; $5abb: $ff
    ld b, b                                       ; $5abc: $40
    cp $e0                                        ; $5abd: $fe $e0
    rst $18                                       ; $5abf: $df
    ld b, [hl]                                    ; $5ac0: $46
    rst $38                                       ; $5ac1: $ff
    ld b, e                                       ; $5ac2: $43
    ld a, a                                       ; $5ac3: $7f
    ld b, d                                       ; $5ac4: $42
    inc [hl]                                      ; $5ac5: $34
    ldh [$82], a                                  ; $5ac6: $e0 $82
    rst $38                                       ; $5ac8: $ff
    db $fd                                        ; $5ac9: $fd
    add h                                         ; $5aca: $84
    jr nz, jr_011_5aad                            ; $5acb: $20 $e0

    ld a, [bc]                                    ; $5acd: $0a
    rst $38                                       ; $5ace: $ff
    call nz, $84ff                                ; $5acf: $c4 $ff $84
    db $fc                                        ; $5ad2: $fc
    and $fe                                       ; $5ad3: $e6 $fe
    ld [c], a                                     ; $5ad5: $e2
    cp $42                                        ; $5ad6: $fe $42
    ld h, b                                       ; $5ad8: $60
    call $c0ca                                    ; $5ad9: $cd $ca $c0
    inc bc                                        ; $5adc: $03
    db $f4                                        ; $5add: $f4
    rlca                                          ; $5ade: $07
    rst $38                                       ; $5adf: $ff
    ld hl, sp+$0f                                 ; $5ae0: $f8 $0f
    ld [$0f0f], sp                                ; $5ae2: $08 $0f $0f
    rrca                                          ; $5ae5: $0f
    ld hl, sp-$01                                 ; $5ae6: $f8 $ff
    rst $38                                       ; $5ae8: $ff
    rlca                                          ; $5ae9: $07
    rlca                                          ; $5aea: $07
    rst $38                                       ; $5aeb: $ff
    inc b                                         ; $5aec: $04
    rst $38                                       ; $5aed: $ff
    call nz, $f23f                                ; $5aee: $c4 $3f $f2
    rst $38                                       ; $5af1: $ff
    cpl                                           ; $5af2: $2f
    ld a, [$fe16]                                 ; $5af3: $fa $16 $fe
    cp $fe                                        ; $5af6: $fe $fe
    inc bc                                        ; $5af8: $03
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    db $fc                                        ; $5afb: $fc
    db $fc                                        ; $5afc: $fc
    rst $38                                       ; $5afd: $ff
    ld b, c                                       ; $5afe: $41
    rst $38                                       ; $5aff: $ff
    ld c, a                                       ; $5b00: $4f
    ld hl, sp-$61                                 ; $5b01: $f8 $9f
    rst $38                                       ; $5b03: $ff
    add sp, -$41                                  ; $5b04: $e8 $bf
    ret nc                                        ; $5b06: $d0

    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    add b                                         ; $5b0a: $80
    rst $38                                       ; $5b0b: $ff
    ei                                            ; $5b0c: $fb
    ld a, a                                       ; $5b0d: $7f
    ld a, a                                       ; $5b0e: $7f
    ld c, b                                       ; $5b0f: $48
    pop hl                                        ; $5b10: $e1
    ld c, a                                       ; $5b11: $4f
    ret nz                                        ; $5b12: $c0

    cpl                                           ; $5b13: $2f
    ldh [$30], a                                  ; $5b14: $e0 $30
    ld a, a                                       ; $5b16: $7f
    ldh [$e0], a                                  ; $5b17: $e0 $e0
    ldh [$3f], a                                  ; $5b19: $e0 $3f
    rst $38                                       ; $5b1b: $ff
    ret nz                                        ; $5b1c: $c0

    ret nz                                        ; $5b1d: $c0

    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    nop                                           ; $5b20: $00
    dec bc                                        ; $5b21: $0b
    rrca                                          ; $5b22: $0f
    nop                                           ; $5b23: $00
    cp $e3                                        ; $5b24: $fe $e3
    ldh a, [$fe]                                  ; $5b26: $f0 $fe
    db $ec                                        ; $5b28: $ec
    add sp, -$1b                                  ; $5b29: $e8 $e5
    ldh [$fd], a                                  ; $5b2b: $e0 $fd
    ret nc                                        ; $5b2d: $d0

    rst $30                                       ; $5b2e: $f7
    cp a                                          ; $5b2f: $bf
    di                                            ; $5b30: $f3
    inc bc                                        ; $5b31: $03
    db $fc                                        ; $5b32: $fc
    rrca                                          ; $5b33: $0f
    ldh a, [$3f]                                  ; $5b34: $f0 $3f
    or b                                          ; $5b36: $b0
    rst $20                                       ; $5b37: $e7
    adc a                                         ; $5b38: $8f
    rst $18                                       ; $5b39: $df
    add b                                         ; $5b3a: $80
    ld l, a                                       ; $5b3b: $6f
    ldh [$1f], a                                  ; $5b3c: $e0 $1f
    ld hl, sp-$38                                 ; $5b3e: $f8 $c8
    ld a, [c]                                     ; $5b40: $f2
    ld bc, $f70f                                  ; $5b41: $01 $0f $f7
    ld bc, $01f1                                  ; $5b44: $01 $f1 $01
    ld a, [hl]                                    ; $5b47: $7e
    db $e3                                        ; $5b48: $e3
    ret nz                                        ; $5b49: $c0

    ld a, a                                       ; $5b4a: $7f
    add c                                         ; $5b4b: $81
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    inc de                                        ; $5b4e: $13
    cp $33                                        ; $5b4f: $fe $33
    cp $39                                        ; $5b51: $fe $39
    rst $28                                       ; $5b53: $ef
    cp a                                          ; $5b54: $bf
    and $ff                                       ; $5b55: $e6 $ff
    rst $38                                       ; $5b57: $ff
    ret z                                         ; $5b58: $c8

    rst $38                                       ; $5b59: $ff
    cp $07                                        ; $5b5a: $fe $07
    db $fc                                        ; $5b5c: $fc
    jp $fffe                                      ; $5b5d: $c3 $fe $ff


    pop af                                        ; $5b60: $f1
    ccf                                           ; $5b61: $3f
    pop af                                        ; $5b62: $f1
    rra                                           ; $5b63: $1f
    pop af                                        ; $5b64: $f1
    rra                                           ; $5b65: $1f
    ld a, [$ef4e]                                 ; $5b66: $fa $4e $ef
    cp $26                                        ; $5b69: $fe $26
    cp $fe                                        ; $5b6b: $fe $fe
    ld h, b                                       ; $5b6d: $60
    db $ed                                        ; $5b6e: $ed
    pop af                                        ; $5b6f: $f1
    ld bc, $edf3                                  ; $5b70: $01 $f3 $ed
    ld [bc], a                                    ; $5b73: $02
    cp $e1                                        ; $5b74: $fe $e1
    dec c                                         ; $5b76: $0d
    ld bc, $e336                                  ; $5b77: $01 $36 $e3
    rst $38                                       ; $5b7a: $ff
    ld d, c                                       ; $5b7b: $51
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    pop de                                        ; $5b7e: $d1

jr_011_5b7f:
    rst $38                                       ; $5b7f: $ff
    ld [hl+], a                                   ; $5b80: $22
    rst $38                                       ; $5b81: $ff
    inc e                                         ; $5b82: $1c
    rst $38                                       ; $5b83: $ff
    ld b, h                                       ; $5b84: $44
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    jp nz, Jump_000_21ff                          ; $5b87: $c2 $ff $21

    rst $38                                       ; $5b8a: $ff
    jr nz, @+$01                                  ; $5b8b: $20 $ff

    ld b, l                                       ; $5b8d: $45
    rst $38                                       ; $5b8e: $ff
    rst $18                                       ; $5b8f: $df
    ld b, [hl]                                    ; $5b90: $46
    rst $38                                       ; $5b91: $ff
    adc b                                         ; $5b92: $88
    rst $38                                       ; $5b93: $ff
    ld [hl], b                                    ; $5b94: $70
    ld hl, sp-$20                                 ; $5b95: $f8 $e0
    add [hl]                                      ; $5b97: $86
    rst $38                                       ; $5b98: $ff
    and a                                         ; $5b99: $a7
    ld [$08ff], sp                                ; $5b9a: $08 $ff $08
    ld a, b                                       ; $5b9d: $78

jr_011_5b9e:
    pop hl                                        ; $5b9e: $e1
    cp $e1                                        ; $5b9f: $fe $e1
    ld [hl], b                                    ; $5ba1: $70
    cp b                                          ; $5ba2: $b8
    xor $f2                                       ; $5ba3: $ee $f2
    rst $30                                       ; $5ba5: $f7
    inc bc                                        ; $5ba6: $03
    rst $30                                       ; $5ba7: $f7
    dec b                                         ; $5ba8: $05
    sbc $e0                                       ; $5ba9: $de $e0
    inc de                                        ; $5bab: $13
    rst $38                                       ; $5bac: $ff
    jr jr_011_5b9e                                ; $5bad: $18 $ef

jr_011_5baf:
    cp a                                          ; $5baf: $bf
    ld a, h                                       ; $5bb0: $7c
    adc a                                         ; $5bb1: $8f
    ei                                            ; $5bb2: $fb
    ld b, $ff                                     ; $5bb3: $06 $ff
    ld [de], a                                    ; $5bb5: $12

jr_011_5bb6:
    cp c                                          ; $5bb6: $b9
    ldh [$a1], a                                  ; $5bb7: $e0 $a1
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    rst $38                                       ; $5bbb: $ff
    sub b                                         ; $5bbc: $90
    rst $38                                       ; $5bbd: $ff
    jr nc, jr_011_5baf                            ; $5bbe: $30 $ef

jr_011_5bc0:
    ld a, h                                       ; $5bc0: $7c
    db $e3                                        ; $5bc1: $e3
    ld a, e                                       ; $5bc2: $7b
    cp [hl]                                       ; $5bc3: $be
    pop bc                                        ; $5bc4: $c1
    rst $30                                       ; $5bc5: $f7
    ldh [$89], a                                  ; $5bc6: $e0 $89
    rst $38                                       ; $5bc8: $ff
    ld l, e                                       ; $5bc9: $6b
    sbc [hl]                                      ; $5bca: $9e
    jr nc, jr_011_5bb6                            ; $5bcb: $30 $e9

    rst $28                                       ; $5bcd: $ef
    rst $08                                       ; $5bce: $cf
    ld b, b                                       ; $5bcf: $40
    rst $28                                       ; $5bd0: $ef
    jr nz, jr_011_5b7f                            ; $5bd1: $20 $ac

    ldh [rNR11], a                                ; $5bd3: $e0 $11
    rst $38                                       ; $5bd5: $ff
    db $10                                        ; $5bd6: $10
    xor $a8                                       ; $5bd7: $ee $a8
    ldh [rDIV], a                                 ; $5bd9: $e0 $04
    rrca                                          ; $5bdb: $0f
    inc bc                                        ; $5bdc: $03
    jr c, jr_011_5bc0                             ; $5bdd: $38 $e1

    ret nz                                        ; $5bdf: $c0

    ld a, a                                       ; $5be0: $7f
    ret nz                                        ; $5be1: $c0

    db $fd                                        ; $5be2: $fd
    rst $38                                       ; $5be3: $ff
    cp $e0                                        ; $5be4: $fe $e0
    ld a, a                                       ; $5be6: $7f
    rst $38                                       ; $5be7: $ff
    ccf                                           ; $5be8: $3f
    ei                                            ; $5be9: $fb
    ld c, $ff                                     ; $5bea: $0e $ff
    rst $38                                       ; $5bec: $ff
    rra                                           ; $5bed: $1f
    rst $38                                       ; $5bee: $ff
    jr nz, jr_011_5c00                            ; $5bef: $20 $0f

    db $fc                                        ; $5bf1: $fc
    rlca                                          ; $5bf2: $07
    rst $38                                       ; $5bf3: $ff
    rlca                                          ; $5bf4: $07
    cp $3a                                        ; $5bf5: $fe $3a
    ldh [rIE], a                                  ; $5bf7: $e0 $ff

jr_011_5bf9:
    ld a, [$e1bf]                                 ; $5bf9: $fa $bf $e1
    rst $38                                       ; $5bfc: $ff
    pop af                                        ; $5bfd: $f1
    rst $38                                       ; $5bfe: $ff
    db $fd                                        ; $5bff: $fd

jr_011_5c00:
    add hl, bc                                    ; $5c00: $09
    adc $e0                                       ; $5c01: $ce $e0
    db $10                                        ; $5c03: $10
    rst $38                                       ; $5c04: $ff
    db $10                                        ; $5c05: $10
    rst $28                                       ; $5c06: $ef
    jr nz, jr_011_5bf9                            ; $5c07: $20 $f0

    or a                                          ; $5c09: $b7
    ld b, b                                       ; $5c0a: $40
    ldh a, [$80]                                  ; $5c0b: $f0 $80
    cp b                                          ; $5c0d: $b8
    pop de                                        ; $5c0e: $d1
    rst $38                                       ; $5c0f: $ff
    and b                                         ; $5c10: $a0
    cp $e0                                        ; $5c11: $fe $e0
    ld b, [hl]                                    ; $5c13: $46
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    ld b, e                                       ; $5c16: $43
    ld a, a                                       ; $5c17: $7f
    ld b, d                                       ; $5c18: $42
    ld a, a                                       ; $5c19: $7f
    ld b, d                                       ; $5c1a: $42
    rst $38                                       ; $5c1b: $ff
    add d                                         ; $5c1c: $82
    rst $28                                       ; $5c1d: $ef
    rst $38                                       ; $5c1e: $ff
    add h                                         ; $5c1f: $84
    rst $38                                       ; $5c20: $ff
    ld a, [bc]                                    ; $5c21: $0a
    cp $e0                                        ; $5c22: $fe $e0
    call nz, $84ff                                ; $5c24: $c4 $ff $84
    db $ed                                        ; $5c27: $ed
    db $fc                                        ; $5c28: $fc
    cp $e2                                        ; $5c29: $fe $e2
    cp $42                                        ; $5c2b: $fe $42
    nop                                           ; $5c2d: $00
    ldh a, [$03]                                  ; $5c2e: $f0 $03
    db $f4                                        ; $5c30: $f4
    rlca                                          ; $5c31: $07
    rst $38                                       ; $5c32: $ff
    ld hl, sp+$0f                                 ; $5c33: $f8 $0f
    ld [$0f0f], sp                                ; $5c35: $08 $0f $0f
    rrca                                          ; $5c38: $0f
    ld hl, sp-$01                                 ; $5c39: $f8 $ff
    rst $38                                       ; $5c3b: $ff
    rlca                                          ; $5c3c: $07
    rlca                                          ; $5c3d: $07
    rst $38                                       ; $5c3e: $ff
    inc b                                         ; $5c3f: $04
    rst $38                                       ; $5c40: $ff
    call nz, $f23f                                ; $5c41: $c4 $3f $f2
    rst $38                                       ; $5c44: $ff
    cpl                                           ; $5c45: $2f
    ld a, [$fe16]                                 ; $5c46: $fa $16 $fe
    cp $fe                                        ; $5c49: $fe $fe
    inc bc                                        ; $5c4b: $03
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    db $fc                                        ; $5c4e: $fc
    db $fc                                        ; $5c4f: $fc
    rst $38                                       ; $5c50: $ff
    ld b, c                                       ; $5c51: $41
    rst $38                                       ; $5c52: $ff
    ld c, a                                       ; $5c53: $4f
    ld hl, sp-$61                                 ; $5c54: $f8 $9f
    rst $38                                       ; $5c56: $ff
    add sp, -$41                                  ; $5c57: $e8 $bf
    ret nc                                        ; $5c59: $d0

    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff
    add b                                         ; $5c5d: $80
    rst $38                                       ; $5c5e: $ff
    ei                                            ; $5c5f: $fb
    ld a, a                                       ; $5c60: $7f
    ld a, a                                       ; $5c61: $7f
    ld a, b                                       ; $5c62: $78
    pop bc                                        ; $5c63: $c1
    ld c, a                                       ; $5c64: $4f
    ret nz                                        ; $5c65: $c0

    cpl                                           ; $5c66: $2f
    ldh [$30], a                                  ; $5c67: $e0 $30
    ld a, a                                       ; $5c69: $7f
    ldh [$e0], a                                  ; $5c6a: $e0 $e0
    ldh [$3f], a                                  ; $5c6c: $e0 $3f
    rst $38                                       ; $5c6e: $ff
    ret nz                                        ; $5c6f: $c0

    ret nz                                        ; $5c70: $c0

    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    dec bc                                        ; $5c74: $0b
    rrca                                          ; $5c75: $0f
    nop                                           ; $5c76: $00
    cp $e3                                        ; $5c77: $fe $e3
    ldh a, [$fe]                                  ; $5c79: $f0 $fe
    db $ec                                        ; $5c7b: $ec
    add sp, -$1b                                  ; $5c7c: $e8 $e5
    ldh [$fd], a                                  ; $5c7e: $e0 $fd
    ret nc                                        ; $5c80: $d0

    add sp, -$21                                  ; $5c81: $e8 $df
    ld bc, $010f                                  ; $5c83: $01 $0f $01
    ld c, $03                                     ; $5c86: $0e $03
    or b                                          ; $5c88: $b0
    ldh [rTAC], a                                 ; $5c89: $e0 $07
    jr jr_011_5ccc                                ; $5c8b: $18 $3f

    rra                                           ; $5c8d: $1f
    ld h, b                                       ; $5c8e: $60
    ld a, a                                       ; $5c8f: $7f
    add b                                         ; $5c90: $80
    rst $38                                       ; $5c91: $ff
    nop                                           ; $5c92: $00
    cp $e2                                        ; $5c93: $fe $e2

jr_011_5c95:
    xor b                                         ; $5c95: $a8
    ldh [rIE], a                                  ; $5c96: $e0 $ff
    add b                                         ; $5c98: $80
    ld [hl], b                                    ; $5c99: $70
    ret nz                                        ; $5c9a: $c0

    jr c, jr_011_5c95                             ; $5c9b: $38 $f8

    daa                                           ; $5c9d: $27
    cp $01                                        ; $5c9e: $fe $01
    or $ee                                        ; $5ca0: $f6 $ee
    ldh [$c0], a                                  ; $5ca2: $e0 $c0
    rst $38                                       ; $5ca4: $ff
    sub b                                         ; $5ca5: $90
    ld [$f080], a                                 ; $5ca6: $ea $80 $f0
    add b                                         ; $5ca9: $80
    ld c, $f7                                     ; $5caa: $0e $f7
    inc bc                                        ; $5cac: $03
    inc c                                         ; $5cad: $0c
    rlca                                          ; $5cae: $07
    cp $e1                                        ; $5caf: $fe $e1
    db $f4                                        ; $5cb1: $f4
    rlca                                          ; $5cb2: $07
    ld a, [c]                                     ; $5cb3: $f2
    inc bc                                        ; $5cb4: $03
    rst $38                                       ; $5cb5: $ff
    di                                            ; $5cb6: $f3
    inc bc                                        ; $5cb7: $03
    di                                            ; $5cb8: $f3
    ld [bc], a                                    ; $5cb9: $02
    ld bc, $03ff                                  ; $5cba: $01 $ff $03
    cp $ef                                        ; $5cbd: $fe $ef
    add e                                         ; $5cbf: $83
    cp $87                                        ; $5cc0: $fe $87
    db $fc                                        ; $5cc2: $fc
    cp $e1                                        ; $5cc3: $fe $e1
    ld c, a                                       ; $5cc5: $4f
    ld hl, sp-$31                                 ; $5cc6: $f8 $cf
    rst $38                                       ; $5cc8: $ff
    ld hl, sp-$08                                 ; $5cc9: $f8 $f8
    ccf                                           ; $5ccb: $3f

jr_011_5ccc:
    db $fc                                        ; $5ccc: $fc
    rlca                                          ; $5ccd: $07
    cp $03                                        ; $5cce: $fe $03
    cp $ff                                        ; $5cd0: $fe $ff
    inc sp                                        ; $5cd2: $33
    cp $4b                                        ; $5cd3: $fe $4b
    cp $03                                        ; $5cd5: $fe $03
    rst $38                                       ; $5cd7: $ff
    dec a                                         ; $5cd8: $3d
    rst $38                                       ; $5cd9: $ff
    rst $30                                       ; $5cda: $f7
    ld l, c                                       ; $5cdb: $69
    ld [hl], b                                    ; $5cdc: $70
    ret nz                                        ; $5cdd: $c0

    cp $e3                                        ; $5cde: $fe $e3
    ld c, a                                       ; $5ce0: $4f
    ret nz                                        ; $5ce1: $c0

    adc a                                         ; $5ce2: $8f
    add b                                         ; $5ce3: $80
    db $fc                                        ; $5ce4: $fc
    cp $e1                                        ; $5ce5: $fe $e1
    call z, $f7e1                                 ; $5ce7: $cc $e1 $f7
    ld b, $ff                                     ; $5cea: $06 $ff
    add hl, bc                                    ; $5cec: $09
    rra                                           ; $5ced: $1f
    ld de, $3fff                                  ; $5cee: $11 $ff $3f
    inc hl                                        ; $5cf1: $23
    ccf                                           ; $5cf2: $3f
    jr nz, @+$21                                  ; $5cf3: $20 $1f

    db $10                                        ; $5cf5: $10
    rst $28                                       ; $5cf6: $ef
    jr c, @+$01                                   ; $5cf7: $38 $ff

    rst $28                                       ; $5cf9: $ef
    cp c                                          ; $5cfa: $b9
    rst $38                                       ; $5cfb: $ff
    ld e, b                                       ; $5cfc: $58
    db $fc                                        ; $5cfd: $fc
    bit 7, [hl]                                   ; $5cfe: $cb $7e
    pop hl                                        ; $5d00: $e1
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    ret nc                                        ; $5d03: $d0

    rst $38                                       ; $5d04: $ff
    call z, Call_000_3bff                         ; $5d05: $cc $ff $3b
    rst $38                                       ; $5d08: $ff
    ld [hl], d                                    ; $5d09: $72
    cp $77                                        ; $5d0a: $fe $77
    ldh [rTIMA], a                                ; $5d0c: $e0 $05
    ld a, a                                       ; $5d0e: $7f
    add a                                         ; $5d0f: $87
    db $fd                                        ; $5d10: $fd

jr_011_5d11:
    rrca                                          ; $5d11: $0f
    rst $38                                       ; $5d12: $ff
    ld d, $ef                                     ; $5d13: $16 $ef
    rst $28                                       ; $5d15: $ef
    ld l, h                                       ; $5d16: $6c
    sbc a                                         ; $5d17: $9f
    sub b                                         ; $5d18: $90
    jp z, $cfe1                                   ; $5d19: $ca $e1 $cf

    ld b, b                                       ; $5d1c: $40
    rst $28                                       ; $5d1d: $ef
    rst $38                                       ; $5d1e: $ff
    jr nz, jr_011_5d11                            ; $5d1f: $20 $f0

    sub b                                         ; $5d21: $90
    ldh a, [rNR10]                                ; $5d22: $f0 $10
    ldh a, [rNR41]                                ; $5d24: $f0 $20
    ldh a, [$9f]                                  ; $5d26: $f0 $9f
    ld b, b                                       ; $5d28: $40
    rrca                                          ; $5d29: $0f
    inc c                                         ; $5d2a: $0c
    rrca                                          ; $5d2b: $0f

jr_011_5d2c:
    ld [bc], a                                    ; $5d2c: $02
    ld b, [hl]                                    ; $5d2d: $46
    ldh [rP1], a                                  ; $5d2e: $e0 $00
    and $ff                                       ; $5d30: $e6 $ff
    rst $38                                       ; $5d32: $ff
    jr jr_011_5d2c                                ; $5d33: $18 $f7

    inc a                                         ; $5d35: $3c
    di                                            ; $5d36: $f3
    sbc a                                         ; $5d37: $9f
    ldh a, [$5f]                                  ; $5d38: $f0 $5f
    ld hl, $3fff                                  ; $5d3a: $21 $ff $3f
    cpl                                           ; $5d3d: $2f
    ccf                                           ; $5d3e: $3f
    rra                                           ; $5d3f: $1f
    rra                                           ; $5d40: $1f
    rrca                                          ; $5d41: $0f
    rrca                                          ; $5d42: $0f
    rst $38                                       ; $5d43: $ff
    rst $38                                       ; $5d44: $ff
    ld h, b                                       ; $5d45: $60
    rst $38                                       ; $5d46: $ff
    ld sp, $facf                                  ; $5d47: $31 $cf $fa
    rlca                                          ; $5d4a: $07
    db $fc                                        ; $5d4b: $fc
    adc b                                         ; $5d4c: $88
    cpl                                           ; $5d4d: $2f
    ld hl, sp-$18                                 ; $5d4e: $f8 $e8
    ld hl, sp-$10                                 ; $5d50: $f8 $f0
    rst $38                                       ; $5d52: $ff
    pop hl                                        ; $5d53: $e1
    add b                                         ; $5d54: $80
    nop                                           ; $5d55: $00
    or $b6                                        ; $5d56: $f6 $b6
    jp $0ffb                                      ; $5d58: $c3 $fb $0f


    rra                                           ; $5d5b: $1f
    rst $38                                       ; $5d5c: $ff
    ldh [$2f], a                                  ; $5d5d: $e0 $2f
    ccf                                           ; $5d5f: $3f
    rst $20                                       ; $5d60: $e7
    ccf                                           ; $5d61: $3f
    pop bc                                        ; $5d62: $c1
    rst $38                                       ; $5d63: $ff
    ld a, a                                       ; $5d64: $7f
    ret nz                                        ; $5d65: $c0

    ld a, a                                       ; $5d66: $7f
    rst $38                                       ; $5d67: $ff
    ld a, a                                       ; $5d68: $7f
    ldh a, [$f0]                                  ; $5d69: $f0 $f0
    ld hl, sp+$7a                                 ; $5d6b: $f8 $7a
    rst $38                                       ; $5d6d: $ff
    ld [c], a                                     ; $5d6e: $e2
    rst $20                                       ; $5d6f: $e7
    ld l, $e0                                     ; $5d70: $2e $e0
    rlca                                          ; $5d72: $07
    db $fc                                        ; $5d73: $fc
    rst $38                                       ; $5d74: $ff
    db $fc                                        ; $5d75: $fc
    ret z                                         ; $5d76: $c8

    push af                                       ; $5d77: $f5
    ld a, [$e680]                                 ; $5d78: $fa $80 $e6
    ld b, c                                       ; $5d7b: $41
    cp $e0                                        ; $5d7c: $fe $e0
    ld b, e                                       ; $5d7e: $43
    cp $42                                        ; $5d7f: $fe $42
    rst $38                                       ; $5d81: $ff
    add h                                         ; $5d82: $84
    cp e                                          ; $5d83: $bb
    rst $38                                       ; $5d84: $ff
    sub h                                         ; $5d85: $94
    db $fc                                        ; $5d86: $fc
    ldh [$88], a                                  ; $5d87: $e0 $88
    rst $38                                       ; $5d89: $ff
    inc b                                         ; $5d8a: $04
    cp $e2                                        ; $5d8b: $fe $e2
    add h                                         ; $5d8d: $84
    rst $08                                       ; $5d8e: $cf
    db $fc                                        ; $5d8f: $fc
    add h                                         ; $5d90: $84
    ld hl, sp-$78                                 ; $5d91: $f8 $88
    cp $e1                                        ; $5d93: $fe $e1
    add b                                         ; $5d95: $80
    rst $08                                       ; $5d96: $cf
    pop af                                        ; $5d97: $f1
    ld bc, $f3d7                                  ; $5d98: $01 $d7 $f3
    inc bc                                        ; $5d9b: $03
    db $f4                                        ; $5d9c: $f4
    cp h                                          ; $5d9d: $bc
    ret nz                                        ; $5d9e: $c0

    rlca                                          ; $5d9f: $07
    and c                                         ; $5da0: $a1
    ldh [$03], a                                  ; $5da1: $e0 $03
    inc bc                                        ; $5da3: $03
    ld a, a                                       ; $5da4: $7f
    rst $38                                       ; $5da5: $ff
    ld hl, sp-$01                                 ; $5da6: $f8 $ff
    ld [$c8ff], sp                                ; $5da8: $08 $ff $c8
    ccf                                           ; $5dab: $3f
    inc hl                                        ; $5dac: $23
    ldh [$bf], a                                  ; $5dad: $e0 $bf
    ldh a, [$f0]                                  ; $5daf: $f0 $f0
    rra                                           ; $5db1: $1f
    rst $38                                       ; $5db2: $ff
    ldh [$e0], a                                  ; $5db3: $e0 $e0
    add d                                         ; $5db5: $82
    ldh [$88], a                                  ; $5db6: $e0 $88
    rst $30                                       ; $5db8: $f7
    rst $38                                       ; $5db9: $ff
    adc a                                         ; $5dba: $8f
    ld hl, sp-$49                                 ; $5dbb: $f8 $b7
    ldh [rIE], a                                  ; $5dbd: $e0 $ff
    rst $38                                       ; $5dbf: $ff
    add b                                         ; $5dc0: $80
    rst $38                                       ; $5dc1: $ff
    db $eb                                        ; $5dc2: $eb
    ld a, a                                       ; $5dc3: $7f
    ld a, a                                       ; $5dc4: $7f
    db $10                                        ; $5dc5: $10
    jp $868f                                      ; $5dc6: $c3 $8f $86


    ret nz                                        ; $5dc9: $c0

    add b                                         ; $5dca: $80
    add b                                         ; $5dcb: $80
    rst $38                                       ; $5dcc: $ff
    rlca                                          ; $5dcd: $07
    rst $38                                       ; $5dce: $ff
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    dec bc                                        ; $5dd4: $0b
    rrca                                          ; $5dd5: $0f
    nop                                           ; $5dd6: $00
    cp $e3                                        ; $5dd7: $fe $e3
    ldh a, [$fe]                                  ; $5dd9: $f0 $fe
    db $ec                                        ; $5ddb: $ec
    add sp, -$1b                                  ; $5ddc: $e8 $e5
    ldh [$fd], a                                  ; $5dde: $e0 $fd
    ret nc                                        ; $5de0: $d0

    ld [$01f9], a                                 ; $5de1: $ea $f9 $01
    cp $e0                                        ; $5de4: $fe $e0
    or b                                          ; $5de6: $b0
    pop hl                                        ; $5de7: $e1
    rlca                                          ; $5de8: $07
    jr jr_011_5e0a                                ; $5de9: $18 $1f

    ldh [$7f], a                                  ; $5deb: $e0 $7f
    rst $20                                       ; $5ded: $e7
    add b                                         ; $5dee: $80
    rst $38                                       ; $5def: $ff
    nop                                           ; $5df0: $00
    cp $e0                                        ; $5df1: $fe $e0
    xor b                                         ; $5df3: $a8
    ld [c], a                                     ; $5df4: $e2
    add b                                         ; $5df5: $80
    ld [hl], b                                    ; $5df6: $70
    ret nz                                        ; $5df7: $c0

    sbc a                                         ; $5df8: $9f
    ccf                                           ; $5df9: $3f
    ld hl, sp+$27                                 ; $5dfa: $f8 $27
    cp $01                                        ; $5dfc: $fe $01
    xor $e0                                       ; $5dfe: $ee $e0
    sub b                                         ; $5e00: $90
    db $ec                                        ; $5e01: $ec
    add b                                         ; $5e02: $80
    rst $38                                       ; $5e03: $ff
    ld c, $03                                     ; $5e04: $0e $03
    ld c, $03                                     ; $5e06: $0e $03
    inc c                                         ; $5e08: $0c
    rlca                                          ; $5e09: $07

jr_011_5e0a:
    inc c                                         ; $5e0a: $0c
    rlca                                          ; $5e0b: $07
    db $fd                                        ; $5e0c: $fd
    db $f4                                        ; $5e0d: $f4
    cp $e0                                        ; $5e0e: $fe $e0
    ld a, [c]                                     ; $5e10: $f2
    inc bc                                        ; $5e11: $03
    di                                            ; $5e12: $f3
    inc bc                                        ; $5e13: $03
    nop                                           ; $5e14: $00
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    ld bc, $03ff                                  ; $5e17: $01 $ff $03
    cp $83                                        ; $5e1a: $fe $83
    cp $87                                        ; $5e1c: $fe $87
    db $fc                                        ; $5e1e: $fc
    cp $fe                                        ; $5e1f: $fe $fe
    pop hl                                        ; $5e21: $e1
    ld c, a                                       ; $5e22: $4f
    ld hl, sp-$40                                 ; $5e23: $f8 $c0
    rst $38                                       ; $5e25: $ff
    ld hl, sp+$3f                                 ; $5e26: $f8 $3f
    db $fc                                        ; $5e28: $fc
    ld a, a                                       ; $5e29: $7f
    rlca                                          ; $5e2a: $07
    cp $03                                        ; $5e2b: $fe $03
    cp $13                                        ; $5e2d: $fe $13
    cp $63                                        ; $5e2f: $fe $63
    ld a, [$e9e0]                                 ; $5e31: $fa $e0 $e9
    inc bc                                        ; $5e34: $03
    or h                                          ; $5e35: $b4
    pop hl                                        ; $5e36: $e1
    cp $e1                                        ; $5e37: $fe $e1
    ld c, a                                       ; $5e39: $4f
    cp $e0                                        ; $5e3a: $fe $e0
    adc a                                         ; $5e3c: $8f
    add b                                         ; $5e3d: $80
    adc a                                         ; $5e3e: $8f
    ld e, a                                       ; $5e3f: $5f
    add b                                         ; $5e40: $80
    di                                            ; $5e41: $f3
    ld [bc], a                                    ; $5e42: $02
    di                                            ; $5e43: $f3
    inc bc                                        ; $5e44: $03
    db $fc                                        ; $5e45: $fc
    ldh [rSC], a                                  ; $5e46: $e0 $02
    add h                                         ; $5e48: $84
    push hl                                       ; $5e49: $e5
    rst $38                                       ; $5e4a: $ff
    rst $08                                       ; $5e4b: $cf
    ld hl, sp-$11                                 ; $5e4c: $f8 $ef
    inc a                                         ; $5e4e: $3c
    rst $28                                       ; $5e4f: $ef
    cp c                                          ; $5e50: $b9
    rst $38                                       ; $5e51: $ff
    ld e, b                                       ; $5e52: $58
    rst $38                                       ; $5e53: $ff
    db $fc                                        ; $5e54: $fc
    bit 7, l                                      ; $5e55: $cb $7d
    ld [c], a                                     ; $5e57: $e2
    cp $91                                        ; $5e58: $fe $91
    rst $38                                       ; $5e5a: $ff
    ld a, h                                       ; $5e5b: $7c
    rst $28                                       ; $5e5c: $ef
    rst $38                                       ; $5e5d: $ff
    dec a                                         ; $5e5e: $3d
    rst $38                                       ; $5e5f: $ff
    ld c, d                                       ; $5e60: $4a
    ld [hl], a                                    ; $5e61: $77
    ldh [rTIMA], a                                ; $5e62: $e0 $05
    ld a, a                                       ; $5e64: $7f
    add a                                         ; $5e65: $87
    cp a                                          ; $5e66: $bf
    ld a, l                                       ; $5e67: $7d
    adc a                                         ; $5e68: $8f
    rst $38                                       ; $5e69: $ff
    ld [de], a                                    ; $5e6a: $12
    rst $38                                       ; $5e6b: $ff
    ld a, h                                       ; $5e6c: $7c
    call z, $8fe1                                 ; $5e6d: $cc $e1 $8f
    ld sp, hl                                     ; $5e70: $f9
    add b                                         ; $5e71: $80
    ld c, b                                       ; $5e72: $48
    db $ec                                        ; $5e73: $ec
    nop                                           ; $5e74: $00
    db $e4                                        ; $5e75: $e4
    pop af                                        ; $5e76: $f1
    ld bc, $01f1                                  ; $5e77: $01 $f1 $01
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    sbc e                                         ; $5e7c: $9b
    rst $38                                       ; $5e7d: $ff
    sbc h                                         ; $5e7e: $9c
    di                                            ; $5e7f: $f3
    sbc [hl]                                      ; $5e80: $9e
    pop af                                        ; $5e81: $f1
    sbc a                                         ; $5e82: $9f
    ldh a, [rIE]                                  ; $5e83: $f0 $ff
    sbc a                                         ; $5e85: $9f
    di                                            ; $5e86: $f3
    sbc a                                         ; $5e87: $9f
    rst $38                                       ; $5e88: $ff
    rra                                           ; $5e89: $1f
    rst $28                                       ; $5e8a: $ef
    cpl                                           ; $5e8b: $2f
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    or d                                          ; $5e8e: $b2
    rst $38                                       ; $5e8f: $ff
    ld [hl-], a                                   ; $5e90: $32
    rst $08                                       ; $5e91: $cf
    ld a, d                                       ; $5e92: $7a
    adc a                                         ; $5e93: $8f
    ld a, [$7f0e]                                 ; $5e94: $fa $0e $7f
    ld a, [$face]                                 ; $5e97: $fa $ce $fa
    cp $f2                                        ; $5e9a: $fe $f2
    rst $38                                       ; $5e9c: $ff
    pop af                                        ; $5e9d: $f1
    ldh [$cd], a                                  ; $5e9e: $e0 $cd
    cp $84                                        ; $5ea0: $fe $84
    pop hl                                        ; $5ea2: $e1
    rst $30                                       ; $5ea3: $f7
    inc b                                         ; $5ea4: $04
    rst $38                                       ; $5ea5: $ff
    ld [$0a0f], sp                                ; $5ea6: $08 $0f $0a
    rrca                                          ; $5ea9: $0f
    rst $38                                       ; $5eaa: $ff
    add hl, bc                                    ; $5eab: $09
    rrca                                          ; $5eac: $0f
    inc b                                         ; $5ead: $04
    rrca                                          ; $5eae: $0f
    inc bc                                        ; $5eaf: $03
    rst $28                                       ; $5eb0: $ef
    cpl                                           ; $5eb1: $2f
    rst $18                                       ; $5eb2: $df
    rst $38                                       ; $5eb3: $ff
    ld e, a                                       ; $5eb4: $5f
    rst $18                                       ; $5eb5: $df
    ld e, a                                       ; $5eb6: $5f
    rst $28                                       ; $5eb7: $ef
    rst $38                                       ; $5eb8: $ff
    rst $20                                       ; $5eb9: $e7
    ld a, a                                       ; $5eba: $7f
    pop bc                                        ; $5ebb: $c1
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    ret nz                                        ; $5ebe: $c0

    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    ld a, a                                       ; $5ec1: $7f
    rst $38                                       ; $5ec2: $ff
    ld sp, hl                                     ; $5ec3: $f9
    rst $38                                       ; $5ec4: $ff
    rst $38                                       ; $5ec5: $ff
    cp $ff                                        ; $5ec6: $fe $ff
    ld hl, sp-$01                                 ; $5ec8: $f8 $ff
    cp $e7                                        ; $5eca: $fe $e7
    db $fc                                        ; $5ecc: $fc
    add a                                         ; $5ecd: $87
    rst $08                                       ; $5ece: $cf
    db $fd                                        ; $5ecf: $fd
    rlca                                          ; $5ed0: $07
    cp $ff                                        ; $5ed1: $fe $ff
    nop                                           ; $5ed3: $00
    ldh [rWY], a                                  ; $5ed4: $e0 $4a
    pop hl                                        ; $5ed6: $e1
    rst $08                                       ; $5ed7: $cf
    ld b, b                                       ; $5ed8: $40
    or l                                          ; $5ed9: $b5
    ldh a, [$fe]                                  ; $5eda: $f0 $fe
    pop hl                                        ; $5edc: $e1
    add b                                         ; $5edd: $80
    cp b                                          ; $5ede: $b8
    rst $08                                       ; $5edf: $cf
    rst $38                                       ; $5ee0: $ff
    ld b, c                                       ; $5ee1: $41
    cp $e1                                        ; $5ee2: $fe $e1
    cp $7f                                        ; $5ee4: $fe $7f
    ld b, d                                       ; $5ee6: $42
    ld a, a                                       ; $5ee7: $7f
    ld b, d                                       ; $5ee8: $42
    rst $38                                       ; $5ee9: $ff
    add d                                         ; $5eea: $82
    rst $38                                       ; $5eeb: $ff
    add h                                         ; $5eec: $84
    cp $e0                                        ; $5eed: $fe $e0
    db $ed                                        ; $5eef: $ed
    inc b                                         ; $5ef0: $04
    cp $e2                                        ; $5ef1: $fe $e2
    add h                                         ; $5ef3: $84
    db $fc                                        ; $5ef4: $fc
    cp $e0                                        ; $5ef5: $fe $e0
    cp $42                                        ; $5ef7: $fe $42
    cp $f5                                        ; $5ef9: $fe $f5
    ld b, d                                       ; $5efb: $42
    add b                                         ; $5efc: $80
    db $d3                                        ; $5efd: $d3
    pop af                                        ; $5efe: $f1
    add [hl]                                      ; $5eff: $86
    ret nz                                        ; $5f00: $c0

    ld bc, $ff01                                  ; $5f01: $01 $01 $ff
    rst $38                                       ; $5f04: $ff
    rst $28                                       ; $5f05: $ef
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    rst $38                                       ; $5f08: $ff
    db $fc                                        ; $5f09: $fc
    jp z, $fce0                                   ; $5f0a: $ca $e0 $fc

    ld b, e                                       ; $5f0d: $43
    cp $ff                                        ; $5f0e: $fe $ff
    add d                                         ; $5f10: $82
    cp $fe                                        ; $5f11: $fe $fe
    cp $03                                        ; $5f13: $fe $03
    rst $38                                       ; $5f15: $ff
    db $fc                                        ; $5f16: $fc
    db $fc                                        ; $5f17: $fc
    db $db                                        ; $5f18: $db
    cp $7e                                        ; $5f19: $fe $7e
    jp z, Jump_011_7ee0                           ; $5f1b: $ca $e0 $7e

    add [hl]                                      ; $5f1e: $86
    xor [hl]                                      ; $5f1f: $ae
    ret nz                                        ; $5f20: $c0

    cp $fe                                        ; $5f21: $fe $fe
    rrca                                          ; $5f23: $0f
    add e                                         ; $5f24: $83
    rst $38                                       ; $5f25: $ff
    ld a, h                                       ; $5f26: $7c
    ld a, h                                       ; $5f27: $7c
    db $10                                        ; $5f28: $10
    rst $00                                       ; $5f29: $c7
    call nc, $d0e0                                ; $5f2a: $d4 $e0 $d0
    ldh [rP1], a                                  ; $5f2d: $e0 $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    rrc a                                         ; $5f31: $cb $0f
    nop                                           ; $5f33: $00
    cp $e3                                        ; $5f34: $fe $e3
    ldh a, [$fe]                                  ; $5f36: $f0 $fe
    db $ec                                        ; $5f38: $ec
    add sp, -$20                                  ; $5f39: $e8 $e0
    ld bc, $770f                                  ; $5f3b: $01 $0f $77
    inc bc                                        ; $5f3e: $03
    rrca                                          ; $5f3f: $0f
    rrca                                          ; $5f40: $0f
    ldh [$ea], a                                  ; $5f41: $e0 $ea
    add b                                         ; $5f43: $80
    ldh a, [$e0]                                  ; $5f44: $f0 $e0
    ldh [$e8], a                                  ; $5f46: $e0 $e8
    call z, $eac8                                 ; $5f48: $cc $c8 $ea
    cp b                                          ; $5f4b: $b8
    push hl                                       ; $5f4c: $e5
    rrca                                          ; $5f4d: $0f
    ld b, $fe                                     ; $5f4e: $06 $fe
    ldh [$c8], a                                  ; $5f50: $e0 $c8
    ldh [$f0], a                                  ; $5f52: $e0 $f0
    rra                                           ; $5f54: $1f
    rst $38                                       ; $5f55: $ff
    ldh [$3f], a                                  ; $5f56: $e0 $3f
    ret nz                                        ; $5f58: $c0

    ld a, a                                       ; $5f59: $7f
    ret nz                                        ; $5f5a: $c0

    ld a, a                                       ; $5f5b: $7f
    ldh a, [$c0]                                  ; $5f5c: $f0 $c0
    db $fc                                        ; $5f5e: $fc
    cp $e0                                        ; $5f5f: $fe $e0
    ret z                                         ; $5f61: $c8

    ldh [$1f], a                                  ; $5f62: $e0 $1f
    ldh a, [rIF]                                  ; $5f64: $f0 $0f
    ld hl, sp+$07                                 ; $5f66: $f8 $07
    db $fc                                        ; $5f68: $fc
    ei                                            ; $5f69: $fb
    rlca                                          ; $5f6a: $07
    db $fc                                        ; $5f6b: $fc
    ret z                                         ; $5f6c: $c8

    ld a, [c]                                     ; $5f6d: $f2
    ld bc, $010f                                  ; $5f6e: $01 $0f $01
    pop af                                        ; $5f71: $f1
    ld bc, $f7ff                                  ; $5f72: $01 $ff $f7
    rlca                                          ; $5f75: $07
    ld sp, hl                                     ; $5f76: $f9
    rrca                                          ; $5f77: $0f
    ei                                            ; $5f78: $fb
    rrca                                          ; $5f79: $0f
    adc h                                         ; $5f7a: $8c
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    sub d                                         ; $5f7d: $92
    rst $38                                       ; $5f7e: $ff
    nop                                           ; $5f7f: $00
    rst $38                                       ; $5f80: $ff
    inc c                                         ; $5f81: $0c
    rst $38                                       ; $5f82: $ff
    ld e, $f7                                     ; $5f83: $1e $f7
    rst $38                                       ; $5f85: $ff
    ld e, $f3                                     ; $5f86: $1e $f3
    dec c                                         ; $5f88: $0d
    rst $38                                       ; $5f89: $ff
    ld b, $ff                                     ; $5f8a: $06 $ff
    ld h, e                                       ; $5f8c: $63
    cp $ff                                        ; $5f8d: $fe $ff
    sub e                                         ; $5f8f: $93
    cp $01                                        ; $5f90: $fe $01
    rst $38                                       ; $5f92: $ff
    ld h, c                                       ; $5f93: $61
    rst $38                                       ; $5f94: $ff
    pop af                                        ; $5f95: $f1
    rst $18                                       ; $5f96: $df
    cp a                                          ; $5f97: $bf
    pop af                                        ; $5f98: $f1
    sbc a                                         ; $5f99: $9f
    ld h, c                                       ; $5f9a: $61
    rst $38                                       ; $5f9b: $ff
    pop bc                                        ; $5f9c: $c1
    rst $38                                       ; $5f9d: $ff
    ld h, b                                       ; $5f9e: $60
    rst $20                                       ; $5f9f: $e7
    rst $08                                       ; $5fa0: $cf
    rst $38                                       ; $5fa1: $ff
    ret nz                                        ; $5fa2: $c0

    cpl                                           ; $5fa3: $2f
    ldh [$af], a                                  ; $5fa4: $e0 $af
    ldh [$f9], a                                  ; $5fa6: $e0 $f9
    rrca                                          ; $5fa8: $0f
    db $f4                                        ; $5fa9: $f4
    rst $38                                       ; $5faa: $ff
    rlca                                          ; $5fab: $07
    di                                            ; $5fac: $f3
    inc bc                                        ; $5fad: $03
    db $fc                                        ; $5fae: $fc
    rrca                                          ; $5faf: $0f
    db $10                                        ; $5fb0: $10
    rra                                           ; $5fb1: $1f
    jr nz, @+$01                                  ; $5fb2: $20 $ff

    ccf                                           ; $5fb4: $3f
    ld b, b                                       ; $5fb5: $40
    ld a, a                                       ; $5fb6: $7f
    ld b, b                                       ; $5fb7: $40
    ld a, a                                       ; $5fb8: $7f
    ld [$86ff], sp                                ; $5fb9: $08 $ff $86
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    add c                                         ; $5fbe: $81
    rst $38                                       ; $5fbf: $ff
    adc h                                         ; $5fc0: $8c
    rst $38                                       ; $5fc1: $ff
    ld d, e                                       ; $5fc2: $53
    rst $38                                       ; $5fc3: $ff
    ld b, b                                       ; $5fc4: $40
    rst $28                                       ; $5fc5: $ef
    rst $38                                       ; $5fc6: $ff
    ld hl, $38ff                                  ; $5fc7: $21 $ff $38
    db $fc                                        ; $5fca: $fc
    ldh [$c2], a                                  ; $5fcb: $e0 $c2
    rst $38                                       ; $5fcd: $ff
    inc bc                                        ; $5fce: $03
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    ld h, d                                       ; $5fd1: $62
    rst $38                                       ; $5fd2: $ff
    sub h                                         ; $5fd3: $94
    rst $38                                       ; $5fd4: $ff
    inc b                                         ; $5fd5: $04
    rst $38                                       ; $5fd6: $ff
    ld [$f0fe], sp                                ; $5fd7: $08 $fe $f0
    ldh [$2f], a                                  ; $5fda: $e0 $2f
    ldh [rVBK], a                                 ; $5fdc: $e0 $4f
    ret nz                                        ; $5fde: $c0

    adc a                                         ; $5fdf: $8f
    add b                                         ; $5fe0: $80
    ld l, a                                       ; $5fe1: $6f
    rst $38                                       ; $5fe2: $ff
    ldh [rNR10], a                                ; $5fe3: $e0 $10
    ldh a, [$08]                                  ; $5fe5: $f0 $08
    ld hl, sp+$04                                 ; $5fe7: $f8 $04
    db $fc                                        ; $5fe9: $fc
    inc b                                         ; $5fea: $04
    rst $10                                       ; $5feb: $d7
    db $fc                                        ; $5fec: $fc
    add b                                         ; $5fed: $80
    rst $38                                       ; $5fee: $ff
    cp $e1                                        ; $5fef: $fe $e1
    ld b, b                                       ; $5ff1: $40
    ld d, [hl]                                    ; $5ff2: $56
    ldh [$e0], a                                  ; $5ff3: $e0 $e0
    ccf                                           ; $5ff5: $3f
    rst $38                                       ; $5ff6: $ff
    ld hl, sp+$1f                                 ; $5ff7: $f8 $1f
    ldh a, [$1f]                                  ; $5ff9: $f0 $1f
    ccf                                           ; $5ffb: $3f
    rst $28                                       ; $5ffc: $ef
    ld a, b                                       ; $5ffd: $78
    rst $08                                       ; $5ffe: $cf
    rst $38                                       ; $5fff: $ff
    ld a, l                                       ; $6000: $7d
    rst $00                                       ; $6001: $c7
    ld a, a                                       ; $6002: $7f
    jp $c1ff                                      ; $6003: $c3 $ff $c1


    ld a, c                                       ; $6006: $79
    rst $00                                       ; $6007: $c7
    rst $38                                       ; $6008: $ff
    ld a, $e3                                     ; $6009: $3e $e3
    dec a                                         ; $600b: $3d
    ld a, [$eff8]                                 ; $600c: $fa $f8 $ef
    inc a                                         ; $600f: $3c
    rst $20                                       ; $6010: $e7
    rst $38                                       ; $6011: $ff
    ld a, h                                       ; $6012: $7c
    rst $00                                       ; $6013: $c7
    db $fc                                        ; $6014: $fc
    add a                                         ; $6015: $87
    cp $07                                        ; $6016: $fe $07
    inc a                                         ; $6018: $3c
    rst $00                                       ; $6019: $c7
    cp a                                          ; $601a: $bf
    ld hl, sp-$71                                 ; $601b: $f8 $8f
    ld a, b                                       ; $601d: $78
    cp a                                          ; $601e: $bf
    ld [bc], a                                    ; $601f: $02
    cp $fe                                        ; $6020: $fe $fe
    pop hl                                        ; $6022: $e1
    inc b                                         ; $6023: $04
    cp $36                                        ; $6024: $fe $36
    pop hl                                        ; $6026: $e1
    ld hl, sp+$3f                                 ; $6027: $f8 $3f
    ldh a, [$1f]                                  ; $6029: $f0 $1f
    ldh a, [$f0]                                  ; $602b: $f0 $f0
    rra                                           ; $602d: $1f
    or a                                          ; $602e: $b7
    ld hl, sp+$0f                                 ; $602f: $f8 $0f
    ld hl, sp+$7c                                 ; $6031: $f8 $7c
    ldh [$0e], a                                  ; $6033: $e0 $0e
    inc bc                                        ; $6035: $03
    ld a, [hl-]                                   ; $6036: $3a
    pop hl                                        ; $6037: $e1
    rrca                                          ; $6038: $0f
    sub c                                         ; $6039: $91
    ld bc, $e1ec                                  ; $603a: $01 $ec $e1
    ld d, $e2                                     ; $603d: $16 $e2
    adc d                                         ; $603f: $8a
    ldh [$83], a                                  ; $6040: $e0 $83
    ld d, b                                       ; $6042: $50
    ldh [$ac], a                                  ; $6043: $e0 $ac
    pop hl                                        ; $6045: $e1
    ldh [rIE], a                                  ; $6046: $e0 $ff
    ccf                                           ; $6048: $3f
    ldh a, [$5f]                                  ; $6049: $f0 $5f
    ld hl, sp-$31                                 ; $604b: $f8 $cf
    rst $38                                       ; $604d: $ff
    xor a                                         ; $604e: $af
    rst $38                                       ; $604f: $ff
    ld a, a                                       ; $6050: $7f
    sub e                                         ; $6051: $93
    rst $38                                       ; $6052: $ff
    rlca                                          ; $6053: $07
    rra                                           ; $6054: $1f
    ldh a, [$2f]                                  ; $6055: $f0 $2f
    ldh [$7c], a                                  ; $6057: $e0 $7c
    pop hl                                        ; $6059: $e1
    cp b                                          ; $605a: $b8
    or h                                          ; $605b: $b4
    ret nz                                        ; $605c: $c0

    sbc b                                         ; $605d: $98
    jp $e2ca                                      ; $605e: $c3 $ca $e2


    rrca                                          ; $6061: $0f
    inc bc                                        ; $6062: $03
    ld a, [c]                                     ; $6063: $f2
    cp $e0                                        ; $6064: $fe $e0
    push af                                       ; $6066: $f5
    cp a                                          ; $6067: $bf
    rlca                                          ; $6068: $07
    push af                                       ; $6069: $f5
    rlca                                          ; $606a: $07
    ld b, c                                       ; $606b: $41
    rst $38                                       ; $606c: $ff
    ld bc, $e050                                  ; $606d: $01 $50 $e0
    rst $08                                       ; $6070: $cf
    ld [hl], l                                    ; $6071: $75
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    ldh [$fe], a                                  ; $6074: $e0 $fe
    cp $e0                                        ; $6076: $fe $e0
    db $fc                                        ; $6078: $fc
    rst $38                                       ; $6079: $ff
    dec b                                         ; $607a: $05
    rst $28                                       ; $607b: $ef
    ldh [$bf], a                                  ; $607c: $e0 $bf
    add c                                         ; $607e: $81
    rst $38                                       ; $607f: $ff
    rst $20                                       ; $6080: $e7
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    cp a                                          ; $6083: $bf
    cp $e0                                        ; $6084: $fe $e0
    rst $38                                       ; $6086: $ff
    db $ed                                        ; $6087: $ed
    ld a, a                                       ; $6088: $7f
    ld e, b                                       ; $6089: $58
    call nz, $8f80                                ; $608a: $c4 $80 $8f
    cp $e0                                        ; $608d: $fe $e0
    rst $08                                       ; $608f: $cf
    ret nz                                        ; $6090: $c0

    rst $08                                       ; $6091: $cf
    ei                                            ; $6092: $fb
    ret nz                                        ; $6093: $c0

    ei                                            ; $6094: $fb
    call z, $f7c0                                 ; $6095: $cc $c0 $f7
    rra                                           ; $6098: $1f
    cp $1f                                        ; $6099: $fe $1f
    ld a, [bc]                                    ; $609b: $0a
    sbc $55                                       ; $609c: $de $55
    ret nz                                        ; $609e: $c0

    ld hl, sp-$01                                 ; $609f: $f8 $ff
    rlca                                          ; $60a1: $07
    rlca                                          ; $60a2: $07
    adc $e0                                       ; $60a3: $ce $e0
    db $fc                                        ; $60a5: $fc
    rrca                                          ; $60a6: $0f
    ei                                            ; $60a7: $fb
    cp $07                                        ; $60a8: $fe $07
    ld e, d                                       ; $60aa: $5a
    ldh [$fe], a                                  ; $60ab: $e0 $fe
    cp $03                                        ; $60ad: $fe $03
    rst $38                                       ; $60af: $ff
    db $fc                                        ; $60b0: $fc
    rst $38                                       ; $60b1: $ff
    db $fc                                        ; $60b2: $fc
    rst $38                                       ; $60b3: $ff
    ld a, a                                       ; $60b4: $7f
    rst $38                                       ; $60b5: $ff
    ld a, a                                       ; $60b6: $7f
    pop hl                                        ; $60b7: $e1
    rst $38                                       ; $60b8: $ff
    ret nz                                        ; $60b9: $c0

    ld a, [$e01a]                                 ; $60ba: $fa $1a $e0
    rst $38                                       ; $60bd: $ff
    ld d, $e0                                     ; $60be: $16 $e0
    ld a, a                                       ; $60c0: $7f
    ld a, a                                       ; $60c1: $7f
    rst $28                                       ; $60c2: $ef
    ldh [$ef], a                                  ; $60c3: $e0 $ef
    rst $38                                       ; $60c5: $ff
    ldh [rIE], a                                  ; $60c6: $e0 $ff
    ldh a, [rIE]                                  ; $60c8: $f0 $ff
    ldh a, [$b0]                                  ; $60ca: $f0 $b0
    ldh [$e0], a                                  ; $60cc: $e0 $e0
    rra                                           ; $60ce: $1f
    ldh [$3f], a                                  ; $60cf: $e0 $3f
    rst $38                                       ; $60d1: $ff
    ret nz                                        ; $60d2: $c0

    ret nz                                        ; $60d3: $c0

    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    nop                                           ; $60d6: $00
    dec bc                                        ; $60d7: $0b
    rrca                                          ; $60d8: $0f
    nop                                           ; $60d9: $00
    cp $e3                                        ; $60da: $fe $e3
    ldh a, [$fe]                                  ; $60dc: $f0 $fe
    db $ec                                        ; $60de: $ec
    add sp, -$1b                                  ; $60df: $e8 $e5
    ldh [$fd], a                                  ; $60e1: $e0 $fd
    ret z                                         ; $60e3: $c8

    db $e3                                        ; $60e4: $e3
    rst $38                                       ; $60e5: $ff
    pop af                                        ; $60e6: $f1
    ld bc, $070e                                  ; $60e7: $01 $0e $07
    jr jr_011_610b                                ; $60ea: $18 $1f

    jr nz, jr_011_612d                            ; $60ec: $20 $3f

    ei                                            ; $60ee: $fb
    ld b, b                                       ; $60ef: $40
    ld a, a                                       ; $60f0: $7f
    or b                                          ; $60f1: $b0
    pop hl                                        ; $60f2: $e1
    rra                                           ; $60f3: $1f
    ld e, $e1                                     ; $60f4: $1e $e1
    rst $38                                       ; $60f6: $ff
    nop                                           ; $60f7: $00
    sbc $fe                                       ; $60f8: $de $fe
    ldh [$08], a                                  ; $60fa: $e0 $08
    rst $38                                       ; $60fc: $ff
    jr @+$01                                      ; $60fd: $18 $ff

    xor b                                         ; $60ff: $a8
    db $e4                                        ; $6100: $e4
    add b                                         ; $6101: $80
    ld a, a                                       ; $6102: $7f
    ld a, a                                       ; $6103: $7f
    ldh a, [$1f]                                  ; $6104: $f0 $1f
    db $fc                                        ; $6106: $fc
    dec bc                                        ; $6107: $0b
    rst $38                                       ; $6108: $ff
    add hl, bc                                    ; $6109: $09
    rst $38                                       ; $610a: $ff

jr_011_610b:
    sub b                                         ; $610b: $90
    db $ec                                        ; $610c: $ec
    rst $38                                       ; $610d: $ff
    add b                                         ; $610e: $80
    ld b, b                                       ; $610f: $40
    ld a, a                                       ; $6110: $7f
    add b                                         ; $6111: $80
    rst $38                                       ; $6112: $ff
    add c                                         ; $6113: $81
    rst $38                                       ; $6114: $ff
    ld h, d                                       ; $6115: $62
    rst $38                                       ; $6116: $ff
    ld a, a                                       ; $6117: $7f
    ret nz                                        ; $6118: $c0

    ld a, a                                       ; $6119: $7f
    ldh [$3f], a                                  ; $611a: $e0 $3f
    ldh [$3f], a                                  ; $611c: $e0 $3f
    pop hl                                        ; $611e: $e1
    rst $38                                       ; $611f: $ff
    ccf                                           ; $6120: $3f
    inc a                                         ; $6121: $3c
    rst $28                                       ; $6122: $ef
    halt                                          ; $6123: $76
    rst $18                                       ; $6124: $df
    push hl                                       ; $6125: $e5
    cp a                                          ; $6126: $bf
    ld b, e                                       ; $6127: $43
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    ld c, [hl]                                    ; $612a: $4e
    rst $38                                       ; $612b: $ff
    sbc a                                         ; $612c: $9f

jr_011_612d:
    pop af                                        ; $612d: $f1
    cp a                                          ; $612e: $bf
    cp $27                                        ; $612f: $fe $27
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    and l                                         ; $6133: $a5
    rst $38                                       ; $6134: $ff
    xor h                                         ; $6135: $ac
    rst $38                                       ; $6136: $ff
    ld a, [hl+]                                   ; $6137: $2a
    rst $38                                       ; $6138: $ff
    ld l, d                                       ; $6139: $6a
    db $eb                                        ; $613a: $eb
    rst $38                                       ; $613b: $ff
    call nc, $e0ae                                ; $613c: $d4 $ae $e0
    add b                                         ; $613f: $80
    cp $e0                                        ; $6140: $fe $e0
    ld [hl], h                                    ; $6142: $74
    call nz, $ff3c                                ; $6143: $c4 $3c $ff
    db $ec                                        ; $6146: $ec
    inc a                                         ; $6147: $3c
    db $fc                                        ; $6148: $fc
    ld e, $fe                                     ; $6149: $1e $fe
    rra                                           ; $614b: $1f
    rst $30                                       ; $614c: $f7
    rra                                           ; $614d: $1f
    rst $38                                       ; $614e: $ff
    cp $3f                                        ; $614f: $fe $3f
    db $fc                                        ; $6151: $fc
    cpl                                           ; $6152: $2f
    db $e4                                        ; $6153: $e4
    pop af                                        ; $6154: $f1
    rra                                           ; $6155: $1f
    pop af                                        ; $6156: $f1
    rst $38                                       ; $6157: $ff
    rra                                           ; $6158: $1f
    ld hl, sp+$0f                                 ; $6159: $f8 $0f
    db $f4                                        ; $615b: $f4
    rlca                                          ; $615c: $07
    ld c, $07                                     ; $615d: $0e $07
    dec c                                         ; $615f: $0d
    rst $38                                       ; $6160: $ff
    rlca                                          ; $6161: $07
    rrca                                          ; $6162: $0f
    ld b, $0f                                     ; $6163: $06 $0f
    inc b                                         ; $6165: $04
    inc bc                                        ; $6166: $03
    rst $38                                       ; $6167: $ff
    ld de, $d8fe                                  ; $6168: $11 $fe $d8
    ld [c], a                                     ; $616b: $e2
    ret nz                                        ; $616c: $c0

    rst $38                                       ; $616d: $ff
    ldh a, [$3f]                                  ; $616e: $f0 $3f

jr_011_6170:
    rst $08                                       ; $6170: $cf
    ld a, a                                       ; $6171: $7f
    ret                                           ; $6172: $c9


    rst $28                                       ; $6173: $ef
    ld a, a                                       ; $6174: $7f
    add e                                         ; $6175: $83
    rst $38                                       ; $6176: $ff
    ld bc, $e078                                  ; $6177: $01 $78 $e0
    inc c                                         ; $617a: $0c
    rst $38                                       ; $617b: $ff
    rra                                           ; $617c: $1f
    rst $38                                       ; $617d: $ff
    di                                            ; $617e: $f3
    ld a, h                                       ; $617f: $7c
    rst $20                                       ; $6180: $e7
    ld hl, sp-$71                                 ; $6181: $f8 $8f
    cp $1f                                        ; $6183: $fe $1f
    ld c, a                                       ; $6185: $4f

jr_011_6186:
    db $fd                                        ; $6186: $fd
    ret nz                                        ; $6187: $c0

    cp $e1                                        ; $6188: $fe $e1
    adc a                                         ; $618a: $8f
    add b                                         ; $618b: $80
    ld [hl], b                                    ; $618c: $70
    ret nz                                        ; $618d: $c0

    jr nc, jr_011_6170                            ; $618e: $30 $e0

    cp a                                          ; $6190: $bf
    db $10                                        ; $6191: $10
    ldh a, [rNR10]                                ; $6192: $f0 $10
    ldh a, [rIF]                                  ; $6194: $f0 $0f
    inc b                                         ; $6196: $04
    cp $e2                                        ; $6197: $fe $e2
    ld b, $fb                                     ; $6199: $06 $fb
    rst $30                                       ; $619b: $f7
    inc b                                         ; $619c: $04
    cp $e1                                        ; $619d: $fe $e1
    di                                            ; $619f: $f3
    ld [bc], a                                    ; $61a0: $02
    rst $30                                       ; $61a1: $f7
    ld a, $ff                                     ; $61a2: $3e $ff
    rst $38                                       ; $61a4: $ff
    jr jr_011_6186                                ; $61a5: $18 $df

    jr nz, jr_011_61b0                            ; $61a7: $20 $07

    ld hl, sp-$71                                 ; $61a9: $f8 $8f
    ld [hl], e                                    ; $61ab: $73
    xor a                                         ; $61ac: $af
    rst $38                                       ; $61ad: $ff
    ld d, b                                       ; $61ae: $50
    rst $38                                       ; $61af: $ff

jr_011_61b0:
    inc b                                         ; $61b0: $04
    rst $38                                       ; $61b1: $ff
    ld [bc], a                                    ; $61b2: $02
    ldh a, [$1f]                                  ; $61b3: $f0 $1f
    ldh [rIE], a                                  ; $61b5: $e0 $ff
    ccf                                           ; $61b7: $3f
    db $e4                                        ; $61b8: $e4
    ccf                                           ; $61b9: $3f
    push hl                                       ; $61ba: $e5
    ccf                                           ; $61bb: $3f
    ld [$f23f], a                                 ; $61bc: $ea $3f $f2
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    ld a, [$ff0f]                                 ; $61c1: $fa $0f $ff
    rlca                                          ; $61c4: $07
    ld [$08f8], sp                                ; $61c5: $08 $f8 $08
    cp a                                          ; $61c8: $bf
    ld hl, sp+$18                                 ; $61c9: $f8 $18
    ld hl, sp+$04                                 ; $61cb: $f8 $04
    db $fc                                        ; $61cd: $fc
    rlca                                          ; $61ce: $07
    cp $e0                                        ; $61cf: $fe $e0
    ld c, a                                       ; $61d1: $4f
    rst $18                                       ; $61d2: $df
    db $fc                                        ; $61d3: $fc
    ld b, a                                       ; $61d4: $47
    db $fc                                        ; $61d5: $fc
    di                                            ; $61d6: $f3
    ld [bc], a                                    ; $61d7: $02
    cp $e2                                        ; $61d8: $fe $e2
    inc bc                                        ; $61da: $03
    ld c, $ff                                     ; $61db: $0e $ff
    inc bc                                        ; $61dd: $03
    rrca                                          ; $61de: $0f
    inc bc                                        ; $61df: $03
    dec c                                         ; $61e0: $0d
    rlca                                          ; $61e1: $07
    dec bc                                        ; $61e2: $0b
    rrca                                          ; $61e3: $0f
    rst $38                                       ; $61e4: $ff
    db $ed                                        ; $61e5: $ed
    ld [bc], a                                    ; $61e6: $02
    dec b                                         ; $61e7: $05
    ld [c], a                                     ; $61e8: $e2
    ret nz                                        ; $61e9: $c0

    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    ld [c], a                                     ; $61ec: $e2
    ei                                            ; $61ed: $fb
    rst $38                                       ; $61ee: $ff
    ld a, [$0bff]                                 ; $61ef: $fa $ff $0b
    pop af                                        ; $61f2: $f1
    ld de, $21f1                                  ; $61f3: $11 $f1 $21
    ldh a, [rNR41]                                ; $61f6: $f0 $20
    rst $28                                       ; $61f8: $ef
    ld a, a                                       ; $61f9: $7f
    ldh [$ef], a                                  ; $61fa: $e0 $ef
    ldh [rIE], a                                  ; $61fc: $e0 $ff
    pop af                                        ; $61fe: $f1
    rst $38                                       ; $61ff: $ff
    ld a, [c]                                     ; $6200: $f2
    ret z                                         ; $6201: $c8

    pop hl                                        ; $6202: $e1
    rst $28                                       ; $6203: $ef
    rlca                                          ; $6204: $07
    db $fc                                        ; $6205: $fc
    add a                                         ; $6206: $87
    db $fc                                        ; $6207: $fc
    rst $38                                       ; $6208: $ff
    ldh [$a4], a                                  ; $6209: $e0 $a4
    db $fc                                        ; $620b: $fc
    sbc h                                         ; $620c: $9c
    cp a                                          ; $620d: $bf
    db $fc                                        ; $620e: $fc
    inc c                                         ; $620f: $0c
    dec bc                                        ; $6210: $0b
    rrca                                          ; $6211: $0f
    rla                                           ; $6212: $17
    rra                                           ; $6213: $1f
    cp $e1                                        ; $6214: $fe $e1
    ei                                            ; $6216: $fb
    ld [hl], a                                    ; $6217: $77
    rrca                                          ; $6218: $0f
    push af                                       ; $6219: $f5
    rlca                                          ; $621a: $07
    cp $e1                                        ; $621b: $fe $e1
    ei                                            ; $621d: $fb
    rst $38                                       ; $621e: $ff
    rst $30                                       ; $621f: $f7
    cp $e2                                        ; $6220: $fe $e2
    rst $28                                       ; $6222: $ef
    ei                                            ; $6223: $fb
    rst $38                                       ; $6224: $ff
    ei                                            ; $6225: $fb
    rst $30                                       ; $6226: $f7
    cp $e0                                        ; $6227: $fe $e0
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    ld a, [c]                                     ; $622b: $f2
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    db $f4                                        ; $622e: $f4
    rst $38                                       ; $622f: $ff
    push af                                       ; $6230: $f5
    rst $38                                       ; $6231: $ff
    push af                                       ; $6232: $f5
    ld a, [c]                                     ; $6233: $f2
    ld a, [c]                                     ; $6234: $f2
    cp l                                          ; $6235: $bd
    ld hl, sp-$01                                 ; $6236: $f8 $ff
    ldh [$fc], a                                  ; $6238: $e0 $fc
    db $fc                                        ; $623a: $fc
    cp $02                                        ; $623b: $fe $02
    cp $e0                                        ; $623d: $fe $e0
    add d                                         ; $623f: $82
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    ld b, c                                       ; $6242: $41
    ld a, a                                       ; $6243: $7f
    ld d, l                                       ; $6244: $55
    rst $38                                       ; $6245: $ff
    sub l                                         ; $6246: $95
    rst $38                                       ; $6247: $ff
    and [hl]                                      ; $6248: $a6
    rst $38                                       ; $6249: $ff
    rst $18                                       ; $624a: $df
    ret c                                         ; $624b: $d8

    ld sp, hl                                     ; $624c: $f9
    rrca                                          ; $624d: $0f
    rst $38                                       ; $624e: $ff
    rra                                           ; $624f: $1f
    pop hl                                        ; $6250: $e1
    ccf                                           ; $6251: $3f
    rst $38                                       ; $6252: $ff
    ret nz                                        ; $6253: $c0

    ld a, a                                       ; $6254: $7f
    ld b, b                                       ; $6255: $40
    ld a, a                                       ; $6256: $7f
    ld a, a                                       ; $6257: $7f
    ld a, a                                       ; $6258: $7f
    ret nz                                        ; $6259: $c0

    rst $38                                       ; $625a: $ff
    ei                                            ; $625b: $fb
    ccf                                           ; $625c: $3f
    ccf                                           ; $625d: $3f
    ret z                                         ; $625e: $c8

    ldh [rIE], a                                  ; $625f: $e0 $ff
    or $ff                                        ; $6261: $f6 $ff
    db $fc                                        ; $6263: $fc
    rst $38                                       ; $6264: $ff
    cp l                                          ; $6265: $bd
    ld b, h                                       ; $6266: $44
    ld a, a                                       ; $6267: $7f
    ldh [rDIV], a                                 ; $6268: $e0 $04
    rst $38                                       ; $626a: $ff
    ei                                            ; $626b: $fb
    ei                                            ; $626c: $fb
    adc $e0                                       ; $626d: $ce $e0
    cp $36                                        ; $626f: $fe $36
    ld c, c                                       ; $6271: $49
    ldh [rIE], a                                  ; $6272: $e0 $ff
    dec b                                         ; $6274: $05
    ld l, a                                       ; $6275: $6f
    ldh [rSB], a                                  ; $6276: $e0 $01
    rst $38                                       ; $6278: $ff
    db $f4                                        ; $6279: $f4
    ldh [rNR10], a                                ; $627a: $e0 $10
    jp nz, $8fff                                  ; $627c: $c2 $ff $8f

    add b                                         ; $627f: $80
    ldh a, [$80]                                  ; $6280: $f0 $80
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    inc bc                                        ; $6286: $03
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    nop                                           ; $628b: $00
    dec bc                                        ; $628c: $0b
    rrca                                          ; $628d: $0f
    nop                                           ; $628e: $00
    cp $e3                                        ; $628f: $fe $e3
    ldh a, [$fe]                                  ; $6291: $f0 $fe
    db $ec                                        ; $6293: $ec
    add sp, -$1b                                  ; $6294: $e8 $e5
    ldh [$fd], a                                  ; $6296: $e0 $fd
    ret nc                                        ; $6298: $d0

    rst $38                                       ; $6299: $ff
    db $fc                                        ; $629a: $fc
    ldh [$fb], a                                  ; $629b: $e0 $fb
    ret nc                                        ; $629d: $d0

    pop af                                        ; $629e: $f1
    di                                            ; $629f: $f3
    inc bc                                        ; $62a0: $03
    db $fc                                        ; $62a1: $fc
    rrca                                          ; $62a2: $0f
    db $10                                        ; $62a3: $10
    rra                                           ; $62a4: $1f
    cp a                                          ; $62a5: $bf
    jr nz, jr_011_62e7                            ; $62a6: $20 $3f

    ld b, h                                       ; $62a8: $44
    ld a, a                                       ; $62a9: $7f
    ld b, e                                       ; $62aa: $43
    ld a, a                                       ; $62ab: $7f
    or b                                          ; $62ac: $b0
    pop hl                                        ; $62ad: $e1
    adc a                                         ; $62ae: $8f
    rst $38                                       ; $62af: $ff
    add b                                         ; $62b0: $80
    ld l, a                                       ; $62b1: $6f
    ldh [rNR10], a                                ; $62b2: $e0 $10
    ldh a, [$08]                                  ; $62b4: $f0 $08
    ld hl, sp+$04                                 ; $62b6: $f8 $04
    rst $30                                       ; $62b8: $f7
    db $fc                                        ; $62b9: $fc
    add h                                         ; $62ba: $84
    db $fc                                        ; $62bb: $fc
    sub b                                         ; $62bc: $90
    db $ed                                        ; $62bd: $ed
    ei                                            ; $62be: $fb
    dec de                                        ; $62bf: $1b
    db $fc                                        ; $62c0: $fc
    daa                                           ; $62c1: $27
    cp $fe                                        ; $62c2: $fe $fe
    ldh [rNR22], a                                ; $62c4: $e0 $17
    ld e, $13                                     ; $62c6: $1e $13
    ld a, a                                       ; $62c8: $7f
    ld l, a                                       ; $62c9: $6f
    rst $38                                       ; $62ca: $ff
    xor b                                         ; $62cb: $a8
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    call nc, $ffc0                                ; $62ce: $d4 $c0 $ff
    ldh [$bf], a                                  ; $62d1: $e0 $bf
    ld hl, sp-$61                                 ; $62d3: $f8 $9f
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    add a                                         ; $62d7: $87
    ld a, a                                       ; $62d8: $7f
    ldh [$1f], a                                  ; $62d9: $e0 $1f
    ld hl, sp-$79                                 ; $62db: $f8 $87
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    ldh a, [rIE]                                  ; $62df: $f0 $ff
    rlca                                          ; $62e1: $07
    rst $38                                       ; $62e2: $ff
    ld c, $fb                                     ; $62e3: $0e $fb
    ld a, $f3                                     ; $62e5: $3e $f3

jr_011_62e7:
    rst $38                                       ; $62e7: $ff
    cp $c3                                        ; $62e8: $fe $c3
    db $fc                                        ; $62ea: $fc
    rrca                                          ; $62eb: $0f
    ldh a, [$3f]                                  ; $62ec: $f0 $3f
    jp $ffff                                      ; $62ee: $c3 $ff $ff


    rra                                           ; $62f1: $1f
    cp $8f                                        ; $62f2: $fe $8f
    add b                                         ; $62f4: $80
    ld c, a                                       ; $62f5: $4f
    ret nz                                        ; $62f6: $c0

    cpl                                           ; $62f7: $2f
    ldh [$bf], a                                  ; $62f8: $e0 $bf
    cpl                                           ; $62fa: $2f
    ldh [rSVBK], a                                ; $62fb: $e0 $70
    ret nz                                        ; $62fd: $c0

    ldh a, [$80]                                  ; $62fe: $f0 $80
    ld e, h                                       ; $6300: $5c
    pop hl                                        ; $6301: $e1
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    cp b                                          ; $6304: $b8
    ld a, a                                       ; $6305: $7f
    ld l, c                                       ; $6306: $69
    ccf                                           ; $6307: $3f
    ld [hl-], a                                   ; $6308: $32
    rrca                                          ; $6309: $0f
    ld a, [bc]                                    ; $630a: $0a
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    add hl, bc                                    ; $630d: $09
    rst $30                                       ; $630e: $f7
    inc b                                         ; $630f: $04
    di                                            ; $6310: $f3
    ld [bc], a                                    ; $6311: $02
    pop af                                        ; $6312: $f1
    ld bc, $ffff                                  ; $6313: $01 $ff $ff
    rst $18                                       ; $6316: $df
    rst $38                                       ; $6317: $ff
    ld d, [hl]                                    ; $6318: $56
    rst $38                                       ; $6319: $ff
    call z, $40ff                                 ; $631a: $cc $ff $40
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    ld hl, $e0ff                                  ; $631f: $21 $ff $e0
    rst $38                                       ; $6322: $ff
    ld d, e                                       ; $6323: $53
    rst $38                                       ; $6324: $ff
    sbc b                                         ; $6325: $98
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    or $ff                                        ; $6328: $f6 $ff
    push de                                       ; $632a: $d5
    rst $38                                       ; $632b: $ff
    ld h, [hl]                                    ; $632c: $66
    rst $38                                       ; $632d: $ff
    inc b                                         ; $632e: $04
    rst $38                                       ; $632f: $ff
    ld a, a                                       ; $6330: $7f
    add hl, bc                                    ; $6331: $09
    cp $4e                                        ; $6332: $fe $4e
    ld hl, sp-$68                                 ; $6334: $f8 $98
    cp $36                                        ; $6336: $fe $36
    jr z, @-$1c                                   ; $6338: $28 $e2

    rst $30                                       ; $633a: $f7
    add b                                         ; $633b: $80
    ldh a, [$80]                                  ; $633c: $f0 $80
    nop                                           ; $633e: $00
    push af                                       ; $633f: $f5
    rst $30                                       ; $6340: $f7
    sbc h                                         ; $6341: $9c
    di                                            ; $6342: $f3
    sbc a                                         ; $6343: $9f
    rst $38                                       ; $6344: $ff
    ld a, e                                       ; $6345: $7b
    ld c, [hl]                                    ; $6346: $4e
    ccf                                           ; $6347: $3f
    ld h, $ff                                     ; $6348: $26 $ff
    ld [hl+], a                                   ; $634a: $22
    rst $38                                       ; $634b: $ff
    inc hl                                        ; $634c: $23
    cp $ba                                        ; $634d: $fe $ba
    ldh [rLCDC], a                                ; $634f: $e0 $40
    rst $18                                       ; $6351: $df
    ld [hl], c                                    ; $6352: $71
    sbc a                                         ; $6353: $9f
    ldh a, [$bf]                                  ; $6354: $f0 $bf
    jp hl                                         ; $6356: $e9


    xor e                                         ; $6357: $ab
    rst $38                                       ; $6358: $ff
    jp z, $e0be                                   ; $6359: $ca $be $e0

    ld b, $fe                                     ; $635c: $06 $fe
    ldh [rTIMA], a                                ; $635e: $e0 $05
    ld [hl-], a                                   ; $6360: $32
    pop hl                                        ; $6361: $e1
    adc a                                         ; $6362: $8f
    rst $18                                       ; $6363: $df
    add b                                         ; $6364: $80
    rst $08                                       ; $6365: $cf
    ld b, b                                       ; $6366: $40
    ldh a, [rNR41]                                ; $6367: $f0 $20
    cp $e0                                        ; $6369: $fe $e0
    db $10                                        ; $636b: $10
    ldh a, [$cd]                                  ; $636c: $f0 $cd
    ret nc                                        ; $636e: $d0

    ret nc                                        ; $636f: $d0

    push bc                                       ; $6370: $c5
    pop af                                        ; $6371: $f1
    ld bc, $e1fe                                  ; $6372: $01 $fe $e1
    ld [hl], b                                    ; $6375: $70
    ldh [$7f], a                                  ; $6376: $e0 $7f
    rst $28                                       ; $6378: $ef
    rst $28                                       ; $6379: $ef
    ld a, h                                       ; $637a: $7c
    add e                                         ; $637b: $83
    rst $38                                       ; $637c: $ff
    add b                                         ; $637d: $80
    adc a                                         ; $637e: $8f
    ldh [$03], a                                  ; $637f: $e0 $03
    rst $38                                       ; $6381: $ff
    ld bc, $ffff                                  ; $6382: $01 $ff $ff
    add c                                         ; $6385: $81
    rst $38                                       ; $6386: $ff
    cp $ff                                        ; $6387: $fe $ff
    db $ec                                        ; $6389: $ec
    ld a, a                                       ; $638a: $7f
    add l                                         ; $638b: $85
    cp [hl]                                       ; $638c: $be
    add c                                         ; $638d: $81
    ldh [rSCY], a                                 ; $638e: $e0 $42
    rst $38                                       ; $6390: $ff
    add l                                         ; $6391: $85
    rst $38                                       ; $6392: $ff
    dec b                                         ; $6393: $05
    db $ec                                        ; $6394: $ec
    ldh [$30], a                                  ; $6395: $e0 $30
    rst $38                                       ; $6397: $ff
    ldh a, [$d0]                                  ; $6398: $f0 $d0
    ldh a, [$30]                                  ; $639a: $f0 $30
    ldh [$f0], a                                  ; $639c: $e0 $f0
    ret nz                                        ; $639e: $c0

    adc a                                         ; $639f: $8f
    db $fc                                        ; $63a0: $fc
    ld a, [hl]                                    ; $63a1: $7e
    db $e4                                        ; $63a2: $e4
    jp nc, $f4c1                                  ; $63a3: $d2 $c1 $f4

    rlca                                          ; $63a6: $07
    ld hl, sp+$0f                                 ; $63a7: $f8 $0f
    ld [$bf0f], sp                                ; $63a9: $08 $0f $bf
    rrca                                          ; $63ac: $0f
    rrca                                          ; $63ad: $0f
    ld hl, sp-$01                                 ; $63ae: $f8 $ff
    rlca                                          ; $63b0: $07
    rlca                                          ; $63b1: $07
    rst $08                                       ; $63b2: $cf
    ldh [$84], a                                  ; $63b3: $e0 $84
    rst $38                                       ; $63b5: $ff
    ld a, a                                       ; $63b6: $7f
    db $e4                                        ; $63b7: $e4
    rra                                           ; $63b8: $1f
    db $fc                                        ; $63b9: $fc
    inc d                                         ; $63ba: $14

jr_011_63bb:
    db $fc                                        ; $63bb: $fc
    db $fc                                        ; $63bc: $fc
    db $fc                                        ; $63bd: $fc
    rst $38                                       ; $63be: $ff
    rlca                                          ; $63bf: $07
    rst $38                                       ; $63c0: $ff
    ld hl, sp-$08                                 ; $63c1: $f8 $f8
    cp $fe                                        ; $63c3: $fe $fe
    rst $38                                       ; $63c5: $ff
    ld b, e                                       ; $63c6: $43
    rst $38                                       ; $63c7: $ff
    db $fc                                        ; $63c8: $fc
    ld c, a                                       ; $63c9: $4f
    ldh a, [$7f]                                  ; $63ca: $f0 $7f
    ld d, b                                       ; $63cc: $50
    ld a, a                                       ; $63cd: $7f
    ld a, a                                       ; $63ce: $7f
    ld a, a                                       ; $63cf: $7f
    rst $08                                       ; $63d0: $cf
    ret nz                                        ; $63d1: $c0

    rst $38                                       ; $63d2: $ff
    ccf                                           ; $63d3: $3f
    ccf                                           ; $63d4: $3f
    or d                                          ; $63d5: $b2
    pop bc                                        ; $63d6: $c1
    cp $c1                                        ; $63d7: $fe $c1
    jr nc, jr_011_63bb                            ; $63d9: $30 $e0

    ccf                                           ; $63db: $3f
    ldh [$e0], a                                  ; $63dc: $e0 $e0
    ccf                                           ; $63de: $3f
    rst $38                                       ; $63df: $ff
    ret nz                                        ; $63e0: $c0

    ret nz                                        ; $63e1: $c0

    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    dec bc                                        ; $63e5: $0b
    rrca                                          ; $63e6: $0f
    nop                                           ; $63e7: $00
    cp $e3                                        ; $63e8: $fe $e3
    ldh a, [$fe]                                  ; $63ea: $f0 $fe
    db $ec                                        ; $63ec: $ec
    add sp, -$1b                                  ; $63ed: $e8 $e5
    ldh [$fd], a                                  ; $63ef: $e0 $fd
    ret nc                                        ; $63f1: $d0

    rst $38                                       ; $63f2: $ff
    db $fc                                        ; $63f3: $fc
    ldh [$fb], a                                  ; $63f4: $e0 $fb
    ret nc                                        ; $63f6: $d0

    or $03                                        ; $63f7: $f6 $03
    inc c                                         ; $63f9: $0c
    rrca                                          ; $63fa: $0f
    db $10                                        ; $63fb: $10
    rra                                           ; $63fc: $1f
    inc hl                                        ; $63fd: $23
    db $fd                                        ; $63fe: $fd
    ccf                                           ; $63ff: $3f
    or b                                          ; $6400: $b0
    and $80                                       ; $6401: $e6 $80
    ld [hl], b                                    ; $6403: $70
    ldh [rNR10], a                                ; $6404: $e0 $10
    ldh a, [$88]                                  ; $6406: $f0 $88
    db $fd                                        ; $6408: $fd
    ld hl, sp-$80                                 ; $6409: $f8 $80
    ld a, [$1e0d]                                 ; $640b: $fa $0d $1e
    inc de                                        ; $640e: $13
    ld c, a                                       ; $640f: $4f
    ld a, h                                       ; $6410: $7c
    ld e, a                                       ; $6411: $5f
    rst $38                                       ; $6412: $ff
    ld [hl], b                                    ; $6413: $70
    ld a, a                                       ; $6414: $7f
    ld h, e                                       ; $6415: $63
    db $fc                                        ; $6416: $fc
    adc a                                         ; $6417: $8f
    ldh a, [$bf]                                  ; $6418: $f0 $bf
    jp $ffff                                      ; $641a: $c3 $ff $ff


    rrca                                          ; $641d: $0f
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    db $e4                                        ; $6421: $e4
    ld a, h                                       ; $6422: $7c
    db $f4                                        ; $6423: $f4
    rst $38                                       ; $6424: $ff
    inc e                                         ; $6425: $1c
    db $fc                                        ; $6426: $fc
    adc h                                         ; $6427: $8c
    ld a, [hl]                                    ; $6428: $7e
    ld [c], a                                     ; $6429: $e2
    rra                                           ; $642a: $1f
    ld a, [$df87]                                 ; $642b: $fa $87 $df
    cp $e1                                        ; $642e: $fe $e1
    rst $38                                       ; $6430: $ff
    cp $ff                                        ; $6431: $fe $ff
    ld h, b                                       ; $6433: $60
    ld [$9060], a                                 ; $6434: $ea $60 $90
    rst $38                                       ; $6437: $ff
    ldh a, [rNR33]                                ; $6438: $f0 $1d
    rla                                           ; $643a: $17
    ccf                                           ; $643b: $3f
    daa                                           ; $643c: $27
    ccf                                           ; $643d: $3f
    ld [hl+], a                                   ; $643e: $22
    rra                                           ; $643f: $1f
    rst $18                                       ; $6440: $df
    ld de, $11ff                                  ; $6441: $11 $ff $11
    rst $38                                       ; $6444: $ff
    add hl, de                                    ; $6445: $19
    db $fc                                        ; $6446: $fc
    ldh [rNR43], a                                ; $6447: $e0 $22
    rst $30                                       ; $6449: $f7
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    ld a, [hl]                                    ; $644d: $7e
    rst $38                                       ; $644e: $ff
    call z, Call_000_21ff                         ; $644f: $cc $ff $21
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    jr nz, @+$01                                  ; $6454: $20 $ff

    db $e3                                        ; $6456: $e3
    rst $38                                       ; $6457: $ff
    sub h                                         ; $6458: $94
    rst $38                                       ; $6459: $ff
    rla                                           ; $645a: $17
    rst $18                                       ; $645b: $df
    ld a, a                                       ; $645c: $7f
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    db $fd                                        ; $645f: $fd
    cp $77                                        ; $6460: $fe $77
    rst $38                                       ; $6462: $ff
    add hl, hl                                    ; $6463: $29
    cp $e0                                        ; $6464: $fe $e0
    rst $38                                       ; $6466: $ff
    adc a                                         ; $6467: $8f
    rst $38                                       ; $6468: $ff
    ld d, e                                       ; $6469: $53
    rst $38                                       ; $646a: $ff
    ret nc                                        ; $646b: $d0

    ld d, b                                       ; $646c: $50
    ldh a, [$c8]                                  ; $646d: $f0 $c8
    rst $38                                       ; $646f: $ff
    ld hl, sp-$78                                 ; $6470: $f8 $88
    ld hl, sp+$10                                 ; $6472: $f8 $10
    ldh a, [$1f]                                  ; $6474: $f0 $1f
    ldh a, [$3f]                                  ; $6476: $f0 $3f
    cp $fc                                        ; $6478: $fe $fc
    ldh [rIE], a                                  ; $647a: $e0 $ff
    add sp, -$01                                  ; $647c: $e8 $ff
    inc hl                                        ; $647e: $23
    rst $38                                       ; $647f: $ff
    ld b, h                                       ; $6480: $44
    rst $38                                       ; $6481: $ff
    rst $18                                       ; $6482: $df
    ld b, b                                       ; $6483: $40
    rst $38                                       ; $6484: $ff
    ld b, e                                       ; $6485: $43
    ccf                                           ; $6486: $3f
    inc a                                         ; $6487: $3c
    ld b, $e3                                     ; $6488: $06 $e3
    rst $38                                       ; $648a: $ff
    ld d, $ff                                     ; $648b: $16 $ff
    rst $38                                       ; $648d: $ff
    adc b                                         ; $648e: $88
    rst $38                                       ; $648f: $ff
    xor a                                         ; $6490: $af
    rst $38                                       ; $6491: $ff
    and $ff                                       ; $6492: $e6 $ff
    ld [hl+], a                                   ; $6494: $22
    ei                                            ; $6495: $fb
    rst $38                                       ; $6496: $ff
    ld b, e                                       ; $6497: $43
    add sp, -$20                                  ; $6498: $e8 $e0
    ld b, b                                       ; $649a: $40
    rst $38                                       ; $649b: $ff
    db $d3                                        ; $649c: $d3
    rst $38                                       ; $649d: $ff
    ld [de], a                                    ; $649e: $12
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    ld [$cfff], a                                 ; $64a1: $ea $ff $cf
    rst $38                                       ; $64a4: $ff
    ld [$04ff], sp                                ; $64a5: $08 $ff $04
    ld a, [$e2fe]                                 ; $64a8: $fa $fe $e2
    adc b                                         ; $64ab: $88
    ret nc                                        ; $64ac: $d0

    ldh [rDIV], a                                 ; $64ad: $e0 $04
    rst $38                                       ; $64af: $ff
    add h                                         ; $64b0: $84
    ld hl, sp+$78                                 ; $64b1: $f8 $78
    or [hl]                                       ; $64b3: $b6
    ret z                                         ; $64b4: $c8

    set 6, c                                      ; $64b5: $cb $f1
    ld bc, $e1fe                                  ; $64b7: $01 $fe $e1
    ldh a, [rP1]                                  ; $64ba: $f0 $00
    or h                                          ; $64bc: $b4
    ldh [$7f], a                                  ; $64bd: $e0 $7f
    rst $30                                       ; $64bf: $f7
    rst $28                                       ; $64c0: $ef
    db $fc                                        ; $64c1: $fc
    add b                                         ; $64c2: $80
    db $d3                                        ; $64c3: $d3
    ldh [$03], a                                  ; $64c4: $e0 $03
    rst $38                                       ; $64c6: $ff
    ld bc, $fbff                                  ; $64c7: $01 $ff $fb
    add a                                         ; $64ca: $87
    rst $38                                       ; $64cb: $ff
    jp z, $fce2                                   ; $64cc: $ca $e2 $fc

    rlca                                          ; $64cf: $07
    cp $02                                        ; $64d0: $fe $02
    cp $ed                                        ; $64d2: $fe $ed
    add c                                         ; $64d4: $81
    ldh a, [$e0]                                  ; $64d5: $f0 $e0
    jp nz, $80fe                                  ; $64d7: $c2 $fe $80

    rst $08                                       ; $64da: $cf
    pop af                                        ; $64db: $f1
    ld bc, $fff2                                  ; $64dc: $01 $f2 $ff
    inc bc                                        ; $64df: $03
    db $f4                                        ; $64e0: $f4
    rlca                                          ; $64e1: $07
    inc c                                         ; $64e2: $0c
    rlca                                          ; $64e3: $07
    rlca                                          ; $64e4: $07
    rlca                                          ; $64e5: $07
    db $fc                                        ; $64e6: $fc
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    inc bc                                        ; $64e9: $03
    inc bc                                        ; $64ea: $03
    ld a, a                                       ; $64eb: $7f
    ld a, d                                       ; $64ec: $7a
    rst $38                                       ; $64ed: $ff
    jp nz, $ff3f                                  ; $64ee: $c2 $3f $ff

    ld [c], a                                     ; $64f1: $e2
    rra                                           ; $64f2: $1f
    cp $0a                                        ; $64f3: $fe $0a
    cp $fe                                        ; $64f5: $fe $fe
    cp $03                                        ; $64f7: $fe $03
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    db $fc                                        ; $64fb: $fc
    db $fc                                        ; $64fc: $fc
    db $fc                                        ; $64fd: $fc
    cp h                                          ; $64fe: $bc
    rst $38                                       ; $64ff: $ff
    add a                                         ; $6500: $87
    ld hl, sp-$11                                 ; $6501: $f8 $ef
    adc a                                         ; $6503: $8f
    ldh a, [rIE]                                  ; $6504: $f0 $ff
    and b                                         ; $6506: $a0
    db $f4                                        ; $6507: $f4
    ret nz                                        ; $6508: $c0

    add b                                         ; $6509: $80
    rst $38                                       ; $650a: $ff
    ld a, a                                       ; $650b: $7f
    db $fd                                        ; $650c: $fd
    ld a, a                                       ; $650d: $7f
    ld h, b                                       ; $650e: $60
    pop bc                                        ; $650f: $c1
    adc a                                         ; $6510: $8f
    add b                                         ; $6511: $80
    ld c, a                                       ; $6512: $4f
    ret nz                                        ; $6513: $c0

    ld [hl], b                                    ; $6514: $70
    ret nz                                        ; $6515: $c0

    ccf                                           ; $6516: $3f
    ret nz                                        ; $6517: $c0

    ret nz                                        ; $6518: $c0

    ld a, a                                       ; $6519: $7f
    rst $38                                       ; $651a: $ff
    add b                                         ; $651b: $80
    add b                                         ; $651c: $80
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    dec bc                                        ; $6520: $0b
    rrca                                          ; $6521: $0f
    nop                                           ; $6522: $00
    cp $e3                                        ; $6523: $fe $e3
    ldh a, [$fe]                                  ; $6525: $f0 $fe
    db $ec                                        ; $6527: $ec
    add sp, -$1b                                  ; $6528: $e8 $e5
    ldh [$fd], a                                  ; $652a: $e0 $fd
    ret nc                                        ; $652c: $d0

    rst $38                                       ; $652d: $ff
    db $ec                                        ; $652e: $ec
    ldh [$fb], a                                  ; $652f: $e0 $fb
    ret nc                                        ; $6531: $d0

    db $eb                                        ; $6532: $eb
    or $06                                        ; $6533: $f6 $06
    or b                                          ; $6535: $b0
    and $01                                       ; $6536: $e6 $01
    ld c, $07                                     ; $6538: $0e $07
    rst $28                                       ; $653a: $ef
    add hl, bc                                    ; $653b: $09
    rrca                                          ; $653c: $0f
    ld de, $b01f                                  ; $653d: $11 $1f $b0
    push hl                                       ; $6540: $e5
    db $fc                                        ; $6541: $fc
    db $fc                                        ; $6542: $fc
    ei                                            ; $6543: $fb
    rst $18                                       ; $6544: $df
    xor a                                         ; $6545: $af
    db $fc                                        ; $6546: $fc
    rlca                                          ; $6547: $07
    db $fc                                        ; $6548: $fc
    ld d, a                                       ; $6549: $57
    sub b                                         ; $654a: $90
    jp hl                                         ; $654b: $e9


    adc a                                         ; $654c: $8f
    add b                                         ; $654d: $80
    rst $38                                       ; $654e: $ff
    ld c, a                                       ; $654f: $4f
    ret nz                                        ; $6550: $c0

    rst $38                                       ; $6551: $ff
    ld l, c                                       ; $6552: $69
    rst $38                                       ; $6553: $ff
    sbc c                                         ; $6554: $99
    rst $38                                       ; $6555: $ff
    adc c                                         ; $6556: $89
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    ld c, c                                       ; $6559: $49
    ccf                                           ; $655a: $3f
    daa                                           ; $655b: $27
    ccf                                           ; $655c: $3f
    add hl, sp                                    ; $655d: $39
    ld a, a                                       ; $655e: $7f
    ld d, b                                       ; $655f: $50
    rst $30                                       ; $6560: $f7
    rst $38                                       ; $6561: $ff
    xor l                                         ; $6562: $ad
    ld hl, $e0f7                                  ; $6563: $21 $f7 $e0
    ld c, e                                       ; $6566: $4b
    ld a, a                                       ; $6567: $7f
    ld d, a                                       ; $6568: $57
    ld a, [hl]                                    ; $6569: $7e
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    ld a, c                                       ; $656c: $79
    rst $38                                       ; $656d: $ff
    ld a, [c]                                     ; $656e: $f2
    rst $38                                       ; $656f: $ff
    cp d                                          ; $6570: $ba
    rst $38                                       ; $6571: $ff
    ld a, d                                       ; $6572: $7a
    rst $38                                       ; $6573: $ff
    db $fc                                        ; $6574: $fc
    rst $38                                       ; $6575: $ff
    adc a                                         ; $6576: $8f
    rst $38                                       ; $6577: $ff
    cp $ff                                        ; $6578: $fe $ff
    rst $38                                       ; $657a: $ff
    ld d, e                                       ; $657b: $53
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    adc h                                         ; $657e: $8c
    rst $38                                       ; $657f: $ff
    ld d, d                                       ; $6580: $52
    rst $38                                       ; $6581: $ff
    jp c, $faff                                   ; $6582: $da $ff $fa

    rst $38                                       ; $6585: $ff

jr_011_6586:
    cpl                                           ; $6586: $2f
    ldh [$2f], a                                  ; $6587: $e0 $2f
    ldh [$9f], a                                  ; $6589: $e0 $9f
    ldh a, [$5f]                                  ; $658b: $f0 $5f
    ldh a, [$fe]                                  ; $658d: $f0 $fe
    rst $38                                       ; $658f: $ff
    ldh [rSVBK], a                                ; $6590: $e0 $70
    ld hl, sp-$18                                 ; $6592: $f8 $e8
    db $fc                                        ; $6594: $fc
    db $f4                                        ; $6595: $f4
    rst $38                                       ; $6596: $ff
    sub l                                         ; $6597: $95
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    reti                                          ; $659a: $d9


    rst $38                                       ; $659b: $ff
    and c                                         ; $659c: $a1
    ld a, a                                       ; $659d: $7f
    ld b, b                                       ; $659e: $40
    rst $38                                       ; $659f: $ff
    inc a                                         ; $65a0: $3c
    rst $38                                       ; $65a1: $ff
    rst $30                                       ; $65a2: $f7
    inc b                                         ; $65a3: $04
    di                                            ; $65a4: $f3
    ld [bc], a                                    ; $65a5: $02
    pop af                                        ; $65a6: $f1
    ld bc, $32ff                                  ; $65a7: $01 $ff $32
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    ld de, $25ff                                  ; $65ac: $11 $ff $25
    rst $38                                       ; $65af: $ff
    and a                                         ; $65b0: $a7
    rst $38                                       ; $65b1: $ff
    ld h, e                                       ; $65b2: $63
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    jr nc, jr_011_6586                            ; $65b5: $30 $cf

    ld a, b                                       ; $65b7: $78
    adc a                                         ; $65b8: $8f
    cp $ff                                        ; $65b9: $fe $ff
    adc d                                         ; $65bb: $8a
    rst $28                                       ; $65bc: $ef
    rst $38                                       ; $65bd: $ff
    inc b                                         ; $65be: $04
    rst $38                                       ; $65bf: $ff
    dec b                                         ; $65c0: $05
    cp e                                          ; $65c1: $bb
    pop hl                                        ; $65c2: $e1
    rst $18                                       ; $65c3: $df
    ld hl, sp-$71                                 ; $65c4: $f8 $8f
    rst $38                                       ; $65c6: $ff
    ld hl, sp-$01                                 ; $65c7: $f8 $ff
    ld [hl], e                                    ; $65c9: $73
    db $fc                                        ; $65ca: $fc
    ld h, h                                       ; $65cb: $64
    db $fc                                        ; $65cc: $fc
    ld b, h                                       ; $65cd: $44
    db $fc                                        ; $65ce: $fc
    rst $30                                       ; $65cf: $f7
    inc h                                         ; $65d0: $24
    ld hl, sp+$28                                 ; $65d1: $f8 $28
    ld [c], a                                     ; $65d3: $e2
    ldh [rLCDC], a                                ; $65d4: $e0 $40
    xor a                                         ; $65d6: $af
    ldh [$1f], a                                  ; $65d7: $e0 $1f
    db $fd                                        ; $65d9: $fd
    ldh a, [rP1]                                  ; $65da: $f0 $00
    db $ed                                        ; $65dc: $ed
    adc c                                         ; $65dd: $89
    rst $38                                       ; $65de: $ff
    ld b, h                                       ; $65df: $44
    ld a, a                                       ; $65e0: $7f
    ld h, d                                       ; $65e1: $62
    ld a, a                                       ; $65e2: $7f
    rst $30                                       ; $65e3: $f7
    ld b, c                                       ; $65e4: $41
    ld a, a                                       ; $65e5: $7f
    ret nz                                        ; $65e6: $c0

    cp $e2                                        ; $65e7: $fe $e2
    rst $38                                       ; $65e9: $ff
    ld a, a                                       ; $65ea: $7f
    db $fc                                        ; $65eb: $fc
    rlca                                          ; $65ec: $07
    rst $38                                       ; $65ed: $ff
    ld sp, hl                                     ; $65ee: $f9
    rst $38                                       ; $65ef: $ff
    ld l, l                                       ; $65f0: $6d
    rst $38                                       ; $65f1: $ff
    sub d                                         ; $65f2: $92
    rst $38                                       ; $65f3: $ff
    jr z, @+$01                                   ; $65f4: $28 $ff

    rst $38                                       ; $65f6: $ff
    db $10                                        ; $65f7: $10
    rst $38                                       ; $65f8: $ff
    nop                                           ; $65f9: $00
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $08                                       ; $65fd: $cf
    ld hl, sp-$01                                 ; $65fe: $f8 $ff
    daa                                           ; $6600: $27
    db $fc                                        ; $6601: $fc
    cpl                                           ; $6602: $2f
    ld a, [$f13f]                                 ; $6603: $fa $3f $f1
    rra                                           ; $6606: $1f
    pop af                                        ; $6607: $f1
    cp a                                          ; $6608: $bf
    ld e, $f2                                     ; $6609: $1e $f2
    inc e                                         ; $660b: $1c
    db $f4                                        ; $660c: $f4
    ld hl, sp-$08                                 ; $660d: $f8 $f8
    ret nc                                        ; $660f: $d0

    call Call_011_7dff                            ; $6610: $cd $ff $7d
    ld b, b                                       ; $6613: $40
    cp $e0                                        ; $6614: $fe $e0
    jr nz, @+$01                                  ; $6616: $20 $ff

    jr nz, @+$81                                  ; $6618: $20 $7f

    ld b, b                                       ; $661a: $40
    cp $e1                                        ; $661b: $fe $e1
    di                                            ; $661d: $f3
    rst $38                                       ; $661e: $ff
    add b                                         ; $661f: $80
    set 4, b                                      ; $6620: $cb $e0
    cp $e1                                        ; $6622: $fe $e1

jr_011_6624:
    inc b                                         ; $6624: $04
    rst $38                                       ; $6625: $ff
    jr c, @+$01                                   ; $6626: $38 $ff

    ld a, a                                       ; $6628: $7f
    jr nc, @+$01                                  ; $6629: $30 $ff

    ld d, b                                       ; $662b: $50
    rst $38                                       ; $662c: $ff
    ld d, b                                       ; $662d: $50
    ldh a, [rNR10]                                ; $662e: $f0 $10
    cp $e2                                        ; $6630: $fe $e2
    ei                                            ; $6632: $fb
    jr nz, jr_011_6624                            ; $6633: $20 $ef

    cp $e4                                        ; $6635: $fe $e4
    ldh a, [rP1]                                  ; $6637: $f0 $00
    di                                            ; $6639: $f3
    inc bc                                        ; $663a: $03
    db $f4                                        ; $663b: $f4
    rst $38                                       ; $663c: $ff
    rlca                                          ; $663d: $07
    db $f4                                        ; $663e: $f4
    rlca                                          ; $663f: $07
    inc c                                         ; $6640: $0c
    rlca                                          ; $6641: $07
    inc bc                                        ; $6642: $03
    inc bc                                        ; $6643: $03
    cp $ff                                        ; $6644: $fe $ff
    rst $38                                       ; $6646: $ff
    ld bc, $ff01                                  ; $6647: $01 $01 $ff
    ldh a, [rIF]                                  ; $664a: $f0 $0f
    ld hl, sp+$07                                 ; $664c: $f8 $07
    ld hl, sp+$4d                                 ; $664e: $f8 $4d
    ldh [$94], a                                  ; $6650: $e0 $94
    pop hl                                        ; $6652: $e1
    sub b                                         ; $6653: $90
    pop hl                                        ; $6654: $e1
    rst $38                                       ; $6655: $ff
    ret nc                                        ; $6656: $d0

    rst $38                                       ; $6657: $ff
    ld h, b                                       ; $6658: $60
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $18                                       ; $665b: $df
    ld [hl], c                                    ; $665c: $71
    rst $18                                       ; $665d: $df
    ld d, b                                       ; $665e: $50
    rst $18                                       ; $665f: $df
    rst $18                                       ; $6660: $df
    rst $18                                       ; $6661: $df
    ld [hl], b                                    ; $6662: $70
    rst $30                                       ; $6663: $f7
    rst $38                                       ; $6664: $ff
    adc a                                         ; $6665: $8f
    adc a                                         ; $6666: $8f
    ld a, c                                       ; $6667: $79
    ldh [$78], a                                  ; $6668: $e0 $78
    add a                                         ; $666a: $87
    db $fc                                        ; $666b: $fc
    inc bc                                        ; $666c: $03
    rst $38                                       ; $666d: $ff
    cp $02                                        ; $666e: $fe $02
    cp $fc                                        ; $6670: $fe $fc
    db $fc                                        ; $6672: $fc
    rlca                                          ; $6673: $07
    rst $38                                       ; $6674: $ff
    ld hl, sp+$01                                 ; $6675: $f8 $01
    ld hl, sp+$00                                 ; $6677: $f8 $00
    nop                                           ; $6679: $00
    nop                                           ; $667a: $00
    dec bc                                        ; $667b: $0b
    rrca                                          ; $667c: $0f
    nop                                           ; $667d: $00
    cp $e3                                        ; $667e: $fe $e3
    ldh a, [$fe]                                  ; $6680: $f0 $fe
    db $ec                                        ; $6682: $ec
    add sp, -$1b                                  ; $6683: $e8 $e5
    ldh [$fd], a                                  ; $6685: $e0 $fd
    ret nc                                        ; $6687: $d0

    rst $38                                       ; $6688: $ff
    db $fc                                        ; $6689: $fc
    ldh [$fb], a                                  ; $668a: $e0 $fb
    ret nc                                        ; $668c: $d0

    rst $30                                       ; $668d: $f7
    rra                                           ; $668e: $1f
    rra                                           ; $668f: $1f
    ld h, b                                       ; $6690: $60
    ld a, a                                       ; $6691: $7f

jr_011_6692:
    add b                                         ; $6692: $80
    rst $38                                       ; $6693: $ff
    cp [hl]                                       ; $6694: $be
    or b                                          ; $6695: $b0
    add sp, -$40                                  ; $6696: $e8 $c0
    jr c, jr_011_6692                             ; $6698: $38 $f8

    ld d, $fe                                     ; $669a: $16 $fe
    add b                                         ; $669c: $80
    rst $28                                       ; $669d: $ef
    pop af                                        ; $669e: $f1
    push af                                       ; $669f: $f5
    ld bc, $e1fe                                  ; $66a0: $01 $fe $e1
    rrca                                          ; $66a3: $0f
    cp $e1                                        ; $66a4: $fe $e1
    ld [bc], a                                    ; $66a6: $02
    rrca                                          ; $66a7: $0f
    dec b                                         ; $66a8: $05
    add b                                         ; $66a9: $80
    db $db                                        ; $66aa: $db
    rst $38                                       ; $66ab: $ff
    nop                                           ; $66ac: $00
    cp $e0                                        ; $66ad: $fe $e0
    ldh [rIE], a                                  ; $66af: $e0 $ff
    rst $38                                       ; $66b1: $ff
    ldh [$fc], a                                  ; $66b2: $e0 $fc
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    ld a, c                                       ; $66b6: $79
    rst $38                                       ; $66b7: $ff
    cp b                                          ; $66b8: $b8
    ccf                                           ; $66b9: $3f
    db $eb                                        ; $66ba: $eb
    ld a, a                                       ; $66bb: $7f
    ret                                           ; $66bc: $c9


    ld a, a                                       ; $66bd: $7f
    rst $28                                       ; $66be: $ef
    push de                                       ; $66bf: $d5
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    ld [hl+], a                                   ; $66c2: $22
    xor $e1                                       ; $66c3: $ee $e1
    add e                                         ; $66c5: $83
    rst $38                                       ; $66c6: $ff
    add $ef                                       ; $66c7: $c6 $ef
    rrca                                          ; $66c9: $0f
    nop                                           ; $66ca: $00
    adc a                                         ; $66cb: $8f
    add b                                         ; $66cc: $80
    cp $e1                                        ; $66cd: $fe $e1
    ldh a, [$80]                                  ; $66cf: $f0 $80
    ld [hl], b                                    ; $66d1: $70
    ld a, a                                       ; $66d2: $7f
    ret nz                                        ; $66d3: $c0

    ldh a, [$c0]                                  ; $66d4: $f0 $c0
    ldh a, [$80]                                  ; $66d6: $f0 $80
    rrca                                          ; $66d8: $0f
    inc b                                         ; $66d9: $04
    cp $e2                                        ; $66da: $fe $e2
    ld sp, hl                                     ; $66dc: $f9
    ld [bc], a                                    ; $66dd: $02
    cp d                                          ; $66de: $ba
    pop hl                                        ; $66df: $e1
    ld c, h                                       ; $66e0: $4c
    pop hl                                        ; $66e1: $e1
    rst $38                                       ; $66e2: $ff
    ld e, l                                       ; $66e3: $5d
    rst $38                                       ; $66e4: $ff
    db $dd                                        ; $66e5: $dd
    rst $38                                       ; $66e6: $ff
    db $fd                                        ; $66e7: $fd
    ld e, c                                       ; $66e8: $59
    cp e                                          ; $66e9: $bb
    ld [c], a                                     ; $66ea: $e2
    pop bc                                        ; $66eb: $c1
    rst $38                                       ; $66ec: $ff
    db $e3                                        ; $66ed: $e3
    sbc a                                         ; $66ee: $9f
    ldh a, [rIE]                                  ; $66ef: $f0 $ff
    ld a, a                                       ; $66f1: $7f
    add hl, hl                                    ; $66f2: $29
    rst $38                                       ; $66f3: $ff
    xor l                                         ; $66f4: $ad
    rst $38                                       ; $66f5: $ff
    xor a                                         ; $66f6: $af
    rst $38                                       ; $66f7: $ff
    ret nz                                        ; $66f8: $c0

    xor e                                         ; $66f9: $ab
    ld [c], a                                     ; $66fa: $e2
    rst $08                                       ; $66fb: $cf
    ldh a, [rIE]                                  ; $66fc: $f0 $ff
    ld a, a                                       ; $66fe: $7f
    ldh a, [$c6]                                  ; $66ff: $f0 $c6
    ldh [$fc], a                                  ; $6701: $e0 $fc
    pop hl                                        ; $6703: $e1
    rst $08                                       ; $6704: $cf
    ld b, b                                       ; $6705: $40
    di                                            ; $6706: $f3
    rst $08                                       ; $6707: $cf
    ld b, b                                       ; $6708: $40
    or [hl]                                       ; $6709: $b6
    pop hl                                        ; $670a: $e1
    add d                                         ; $670b: $82
    pop hl                                        ; $670c: $e1
    ld a, [c]                                     ; $670d: $f2
    inc bc                                        ; $670e: $03
    ld a, [c]                                     ; $670f: $f2
    inc bc                                        ; $6710: $03
    push af                                       ; $6711: $f5
    ld c, $fe                                     ; $6712: $0e $fe
    ldh [rIF], a                                  ; $6714: $e0 $0f
    cp $e0                                        ; $6716: $fe $e0
    rra                                           ; $6718: $1f
    ld hl, sp+$17                                 ; $6719: $f8 $17
    cp $ff                                        ; $671b: $fe $ff
    add hl, bc                                    ; $671d: $09
    rst $38                                       ; $671e: $ff
    rrca                                          ; $671f: $0f
    rst $38                                       ; $6720: $ff
    dec e                                         ; $6721: $1d
    rst $30                                       ; $6722: $f7
    ccf                                           ; $6723: $3f
    db $e3                                        ; $6724: $e3
    rst $38                                       ; $6725: $ff
    ld a, a                                       ; $6726: $7f
    ret nz                                        ; $6727: $c0

    ld a, a                                       ; $6728: $7f
    ret nz                                        ; $6729: $c0

    rst $38                                       ; $672a: $ff
    adc a                                         ; $672b: $8f
    cp $0b                                        ; $672c: $fe $0b
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    sub e                                         ; $6730: $93
    rst $38                                       ; $6731: $ff
    ld h, a                                       ; $6732: $67
    cp $0b                                        ; $6733: $fe $0b
    cp $87                                        ; $6735: $fe $87
    rst $28                                       ; $6737: $ef
    cp $03                                        ; $6738: $fe $03
    rst $38                                       ; $673a: $ff
    rlca                                          ; $673b: $07
    add b                                         ; $673c: $80
    pop hl                                        ; $673d: $e1
    ld c, a                                       ; $673e: $4f
    ret nz                                        ; $673f: $c0

    ld c, a                                       ; $6740: $4f
    rst $38                                       ; $6741: $ff
    ret nz                                        ; $6742: $c0

    or b                                          ; $6743: $b0
    ldh [$f0], a                                  ; $6744: $e0 $f0
    ldh [$f0], a                                  ; $6746: $e0 $f0
    and b                                         ; $6748: $a0
    ldh a, [$f1]                                  ; $6749: $f0 $f1
    and b                                         ; $674b: $a0
    ld c, h                                       ; $674c: $4c
    ldh [$fe], a                                  ; $674d: $e0 $fe
    pop hl                                        ; $674f: $e1
    inc a                                         ; $6750: $3c
    ld [c], a                                     ; $6751: $e2
    pop af                                        ; $6752: $f1
    ld bc, $02f3                                  ; $6753: $01 $f3 $02
    xor [hl]                                      ; $6756: $ae
    ld b, l                                       ; $6757: $45
    ldh [rNR23], a                                ; $6758: $e0 $18
    rst $38                                       ; $675a: $ff
    rlca                                          ; $675b: $07
    dec sp                                        ; $675c: $3b
    ldh [rSB], a                                  ; $675d: $e0 $01
    scf                                           ; $675f: $37
    ld [c], a                                     ; $6760: $e2
    nop                                           ; $6761: $00
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    ld [$70ff], sp                                ; $6764: $08 $ff $70
    rst $38                                       ; $6767: $ff
    add b                                         ; $6768: $80
    rst $38                                       ; $6769: $ff
    ld hl, $72fa                                  ; $676a: $21 $fa $72
    ldh [$81], a                                  ; $676d: $e0 $81
    cp $e1                                        ; $676f: $fe $e1
    ldh a, [$e0]                                  ; $6771: $f0 $e0
    or b                                          ; $6773: $b0
    ldh [$d0], a                                  ; $6774: $e0 $d0
    ld a, a                                       ; $6776: $7f
    ldh a, [$50]                                  ; $6777: $f0 $50
    ldh a, [$2f]                                  ; $6779: $f0 $2f
    ldh [$cf], a                                  ; $677b: $e0 $cf
    ret nz                                        ; $677d: $c0

    sub h                                         ; $677e: $94
    pop bc                                        ; $677f: $c1
    rst $38                                       ; $6780: $ff
    di                                            ; $6781: $f3
    ld [bc], a                                    ; $6782: $02
    di                                            ; $6783: $f3
    ld [bc], a                                    ; $6784: $02
    rst $30                                       ; $6785: $f7
    dec b                                         ; $6786: $05
    or $07                                        ; $6787: $f6 $07
    ld a, a                                       ; $6789: $7f
    ld c, $03                                     ; $678a: $0e $03
    inc bc                                        ; $678c: $03
    inc bc                                        ; $678d: $03
    cp $ff                                        ; $678e: $fe $ff
    ld bc, $e1ca                                  ; $6790: $01 $ca $e1

jr_011_6793:
    cpl                                           ; $6793: $2f
    rra                                           ; $6794: $1f
    ldh [rIE], a                                  ; $6795: $e0 $ff
    jr nz, jr_011_6793                            ; $6797: $20 $fa

    ret nz                                        ; $6799: $c0

    rst $38                                       ; $679a: $ff
    db $fc                                        ; $679b: $fc
    ld [c], a                                     ; $679c: $e2
    call nz, $bfe0                                ; $679d: $c4 $e0 $bf
    inc bc                                        ; $67a0: $03
    db $fc                                        ; $67a1: $fc
    rst $38                                       ; $67a2: $ff
    ld c, b                                       ; $67a3: $48
    rst $38                                       ; $67a4: $ff
    ld b, b                                       ; $67a5: $40
    push af                                       ; $67a6: $f5
    ld [c], a                                     ; $67a7: $e2
    ld a, a                                       ; $67a8: $7f
    rst $38                                       ; $67a9: $ff
    ld a, a                                       ; $67aa: $7f
    adc a                                         ; $67ab: $8f
    add b                                         ; $67ac: $80
    rst $08                                       ; $67ad: $cf
    ret nz                                        ; $67ae: $c0

    cpl                                           ; $67af: $2f
    ldh [$1f], a                                  ; $67b0: $e0 $1f
    rst $38                                       ; $67b2: $ff
    ldh a, [rNR10]                                ; $67b3: $f0 $10
    ldh a, [$e0]                                  ; $67b5: $f0 $e0
    ldh [$3f], a                                  ; $67b7: $e0 $3f
    rst $38                                       ; $67b9: $ff
    ret nz                                        ; $67ba: $c0

    ld bc, $00c0                                  ; $67bb: $01 $c0 $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    dec bc                                        ; $67c0: $0b
    rrca                                          ; $67c1: $0f
    nop                                           ; $67c2: $00
    cp $e3                                        ; $67c3: $fe $e3
    ldh a, [$fe]                                  ; $67c5: $f0 $fe
    db $ec                                        ; $67c7: $ec
    add sp, -$1b                                  ; $67c8: $e8 $e5
    ldh [$fd], a                                  ; $67ca: $e0 $fd
    ret nc                                        ; $67cc: $d0

    push af                                       ; $67cd: $f5
    rst $38                                       ; $67ce: $ff
    rst $30                                       ; $67cf: $f7
    rlca                                          ; $67d0: $07
    rst $38                                       ; $67d1: $ff
    dec e                                         ; $67d2: $1d
    rst $20                                       ; $67d3: $e7
    ld a, l                                       ; $67d4: $7d
    add a                                         ; $67d5: $87
    db $fc                                        ; $67d6: $fc
    cp $a8                                        ; $67d7: $fe $a8
    push hl                                       ; $67d9: $e5
    rst $08                                       ; $67da: $cf
    ret nz                                        ; $67db: $c0

    ccf                                           ; $67dc: $3f
    ldh a, [$8f]                                  ; $67dd: $f0 $8f
    db $fc                                        ; $67df: $fc
    jp Jump_011_7ee5                              ; $67e0: $c3 $e5 $7e


    ret z                                         ; $67e3: $c8

    xor $01                                       ; $67e4: $ee $01
    cp $e2                                        ; $67e6: $fe $e2
    add b                                         ; $67e8: $80
    ldh [$f1], a                                  ; $67e9: $e0 $f1
    ld bc, $fff3                                  ; $67eb: $01 $f3 $ff
    ld [bc], a                                    ; $67ee: $02
    di                                            ; $67ef: $f3
    ld [bc], a                                    ; $67f0: $02
    rrca                                          ; $67f1: $0f
    rst $38                                       ; $67f2: $ff
    inc a                                         ; $67f3: $3c
    rst $38                                       ; $67f4: $ff
    ld e, a                                       ; $67f5: $5f
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    ld a, [c]                                     ; $67f9: $f2
    rst $38                                       ; $67fa: $ff
    call z, $d2ff                                 ; $67fb: $cc $ff $d2
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    ld d, [hl]                                    ; $6800: $56
    rst $38                                       ; $6801: $ff
    rst $10                                       ; $6802: $d7
    pop hl                                        ; $6803: $e1
    rst $38                                       ; $6804: $ff
    ld a, c                                       ; $6805: $79
    rst $38                                       ; $6806: $ff
    push af                                       ; $6807: $f5
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    sbc [hl]                                      ; $680b: $9e
    cp $66                                        ; $680c: $fe $66
    rst $38                                       ; $680e: $ff
    sub a                                         ; $680f: $97
    rst $38                                       ; $6810: $ff
    rst $30                                       ; $6811: $f7
    call nc, $d6ff                                ; $6812: $d4 $ff $d6
    ld h, b                                       ; $6815: $60
    jp hl                                         ; $6816: $e9


    cp a                                          ; $6817: $bf
    cp b                                          ; $6818: $b8
    rst $20                                       ; $6819: $e7
    db $fc                                        ; $681a: $fc
    or $cc                                        ; $681b: $f6 $cc
    pop hl                                        ; $681d: $e1
    pop af                                        ; $681e: $f1
    ld bc, $e750                                  ; $681f: $01 $50 $e7
    rst $38                                       ; $6822: $ff
    inc [hl]                                      ; $6823: $34
    rst $38                                       ; $6824: $ff
    jr z, @+$01                                   ; $6825: $28 $ff

    rst $38                                       ; $6827: $ff
    ld a, h                                       ; $6828: $7c
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    ld a, $ff                                     ; $682c: $3e $ff
    inc h                                         ; $682e: $24
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    inc de                                        ; $6831: $13
    rst $38                                       ; $6832: $ff
    db $10                                        ; $6833: $10
    rst $38                                       ; $6834: $ff
    ld d, h                                       ; $6835: $54
    rst $38                                       ; $6836: $ff
    add hl, hl                                    ; $6837: $29
    ei                                            ; $6838: $fb
    rst $38                                       ; $6839: $ff
    ld a, a                                       ; $683a: $7f
    ldh a, [$e0]                                  ; $683b: $f0 $e0
    ld sp, hl                                     ; $683d: $f9
    rst $38                                       ; $683e: $ff
    ld c, c                                       ; $683f: $49
    rst $38                                       ; $6840: $ff
    sub c                                         ; $6841: $91
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    ld [de], a                                    ; $6844: $12
    xor e                                         ; $6845: $ab
    cp $51                                        ; $6846: $fe $51
    rst $38                                       ; $6848: $ff
    dec [hl]                                      ; $6849: $35
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    dec e                                         ; $684c: $1d
    rst $38                                       ; $684d: $ff
    ld hl, $82ff                                  ; $684e: $21 $ff $82
    cp $1c                                        ; $6851: $fe $1c
    db $fc                                        ; $6853: $fc
    ei                                            ; $6854: $fb
    ret z                                         ; $6855: $c8

    ld hl, sp+$00                                 ; $6856: $f8 $00
    db $eb                                        ; $6858: $eb
    pop af                                        ; $6859: $f1
    ld bc, $09ff                                  ; $685a: $01 $ff $09
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    ld [$0cff], sp                                ; $685f: $08 $ff $0c
    di                                            ; $6862: $f3
    rra                                           ; $6863: $1f
    ld sp, $4e3f                                  ; $6864: $31 $3f $4e
    rst $38                                       ; $6867: $ff
    ld a, a                                       ; $6868: $7f
    and d                                         ; $6869: $a2
    rst $38                                       ; $686a: $ff
    ld [hl+], a                                   ; $686b: $22
    rst $38                                       ; $686c: $ff
    rst $28                                       ; $686d: $ef
    inc h                                         ; $686e: $24
    db $eb                                        ; $686f: $eb
    rst $28                                       ; $6870: $ef
    ld l, $f1                                     ; $6871: $2e $f1
    ld a, a                                       ; $6873: $7f
    adc b                                         ; $6874: $88
    or a                                          ; $6875: $b7
    ldh [$e1], a                                  ; $6876: $e0 $e1
    rst $38                                       ; $6878: $ff
    adc d                                         ; $6879: $8a
    rst $38                                       ; $687a: $ff
    cp $8c                                        ; $687b: $fe $8c
    db $fc                                        ; $687d: $fc
    ldh a, [$30]                                  ; $687e: $f0 $30
    ldh a, [rNR41]                                ; $6880: $f0 $20
    ldh a, [$df]                                  ; $6882: $f0 $df
    ld b, b                                       ; $6884: $40
    ldh a, [$80]                                  ; $6885: $f0 $80
    adc a                                         ; $6887: $8f
    add b                                         ; $6888: $80
    add $c3                                       ; $6889: $c6 $c3
    pop af                                        ; $688b: $f1
    ld bc, $f2ff                                  ; $688c: $01 $ff $f2
    inc bc                                        ; $688f: $03
    di                                            ; $6890: $f3
    inc bc                                        ; $6891: $03
    rst $30                                       ; $6892: $f7
    inc b                                         ; $6893: $04
    rrca                                          ; $6894: $0f
    inc b                                         ; $6895: $04
    rst $38                                       ; $6896: $ff
    rrca                                          ; $6897: $0f
    ld [$111f], sp                                ; $6898: $08 $1f $11
    rra                                           ; $689b: $1f
    db $10                                        ; $689c: $10
    ld b, e                                       ; $689d: $43
    rst $38                                       ; $689e: $ff
    rra                                           ; $689f: $1f
    ld b, b                                       ; $68a0: $40
    rst $38                                       ; $68a1: $ff
    ret nz                                        ; $68a2: $c0

    rst $38                                       ; $68a3: $ff
    add b                                         ; $68a4: $80
    cp $e0                                        ; $68a5: $fe $e0
    ld a, h                                       ; $68a7: $7c
    ldh [$f9], a                                  ; $68a8: $e0 $f9
    ldh [$f7], a                                  ; $68aa: $e0 $f7
    add h                                         ; $68ac: $84
    db $fc                                        ; $68ad: $fc
    inc b                                         ; $68ae: $04
    cp $e0                                        ; $68af: $fe $e0
    ld [bc], a                                    ; $68b1: $02
    cp $03                                        ; $68b2: $fe $03
    cp $bf                                        ; $68b4: $fe $bf
    rst $38                                       ; $68b6: $ff
    cp $ff                                        ; $68b7: $fe $ff
    ld [bc], a                                    ; $68b9: $02
    rst $38                                       ; $68ba: $ff
    ld [bc], a                                    ; $68bb: $02
    sub b                                         ; $68bc: $90
    call Call_011_7f1f                            ; $68bd: $cd $1f $7f
    inc d                                         ; $68c0: $14
    rra                                           ; $68c1: $1f
    inc de                                        ; $68c2: $13
    rrca                                          ; $68c3: $0f
    add hl, bc                                    ; $68c4: $09
    rrca                                          ; $68c5: $0f
    ld b, $00                                     ; $68c6: $06 $00
    pop hl                                        ; $68c8: $e1
    db $fc                                        ; $68c9: $fc
    cp $c1                                        ; $68ca: $fe $c1
    jp Jump_011_40e0                              ; $68cc: $c3 $e0 $40


    rst $38                                       ; $68cf: $ff
    add h                                         ; $68d0: $84
    rst $38                                       ; $68d1: $ff
    add e                                         ; $68d2: $83
    rst $38                                       ; $68d3: $ff
    xor c                                         ; $68d4: $a9
    add c                                         ; $68d5: $81
    jp nc, $cee1                                  ; $68d6: $d2 $e1 $ce

    ldh [rDIV], a                                 ; $68d9: $e0 $04
    cp $e0                                        ; $68db: $fe $e0
    ld b, d                                       ; $68dd: $42
    ld d, e                                       ; $68de: $53
    ldh [rSC], a                                  ; $68df: $e0 $02
    xor $ee                                       ; $68e1: $ee $ee
    ldh [$81], a                                  ; $68e3: $e0 $81
    rst $38                                       ; $68e5: $ff
    add b                                         ; $68e6: $80
    ld h, b                                       ; $68e7: $60
    res 1, a                                      ; $68e8: $cb $8f
    add b                                         ; $68ea: $80
    di                                            ; $68eb: $f3
    rst $38                                       ; $68ec: $ff
    inc bc                                        ; $68ed: $03
    db $fc                                        ; $68ee: $fc
    rrca                                          ; $68ef: $0f
    ldh a, [$1f]                                  ; $68f0: $f0 $1f
    ldh [$3f], a                                  ; $68f2: $e0 $3f
    jr nz, @+$01                                  ; $68f4: $20 $ff

    ccf                                           ; $68f6: $3f
    ccf                                           ; $68f7: $3f
    ccf                                           ; $68f8: $3f
    ldh a, [rIE]                                  ; $68f9: $f0 $ff
    rrca                                          ; $68fb: $0f
    rrca                                          ; $68fc: $0f
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    add d                                         ; $68ff: $82
    ld a, a                                       ; $6900: $7f
    pop hl                                        ; $6901: $e1
    rra                                           ; $6902: $1f
    pop af                                        ; $6903: $f1
    rra                                           ; $6904: $1f
    cp $04                                        ; $6905: $fe $04
    rst $38                                       ; $6907: $ff
    db $fc                                        ; $6908: $fc
    db $fc                                        ; $6909: $fc
    db $fc                                        ; $690a: $fc
    rlca                                          ; $690b: $07
    rst $38                                       ; $690c: $ff
    ld hl, sp-$08                                 ; $690d: $f8 $f8
    rst $38                                       ; $690f: $ff
    db $fd                                        ; $6910: $fd
    add e                                         ; $6911: $83
    ldh [$e1], a                                  ; $6912: $e0 $e1
    ldh a, [rIE]                                  ; $6914: $f0 $ff
    ld b, b                                       ; $6916: $40
    ld a, a                                       ; $6917: $7f
    ld a, a                                       ; $6918: $7f
    ld a, a                                       ; $6919: $7f
    rst $38                                       ; $691a: $ff
    ret nz                                        ; $691b: $c0

    rst $38                                       ; $691c: $ff
    ccf                                           ; $691d: $3f
    ccf                                           ; $691e: $3f
    adc a                                         ; $691f: $8f
    add b                                         ; $6920: $80
    ld l, a                                       ; $6921: $6f
    ldh [rIE], a                                  ; $6922: $e0 $ff
    rra                                           ; $6924: $1f
    ldh a, [rIF]                                  ; $6925: $f0 $0f
    ld hl, sp+$08                                 ; $6927: $f8 $08
    ld hl, sp-$08                                 ; $6929: $f8 $f8
    ld hl, sp+$0f                                 ; $692b: $f8 $0f
    rra                                           ; $692d: $1f
    rst $38                                       ; $692e: $ff
    ldh [$e0], a                                  ; $692f: $e0 $e0
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    dec bc                                        ; $6934: $0b
    rrca                                          ; $6935: $0f
    nop                                           ; $6936: $00
    cp $e3                                        ; $6937: $fe $e3
    ldh a, [$fe]                                  ; $6939: $f0 $fe
    db $ec                                        ; $693b: $ec
    add sp, -$1b                                  ; $693c: $e8 $e5
    ldh [$fd], a                                  ; $693e: $e0 $fd
    ret nc                                        ; $6940: $d0

    rst $30                                       ; $6941: $f7
    cp a                                          ; $6942: $bf
    pop af                                        ; $6943: $f1
    ld bc, $07f6                                  ; $6944: $01 $f6 $07
    db $fc                                        ; $6947: $fc
    ld a, a                                       ; $6948: $7f
    or b                                          ; $6949: $b0
    rst $20                                       ; $694a: $e7
    rst $38                                       ; $694b: $ff
    rst $18                                       ; $694c: $df
    db $fc                                        ; $694d: $fc
    ld a, e                                       ; $694e: $7b
    rst $08                                       ; $694f: $cf
    ld hl, sp-$61                                 ; $6950: $f8 $9f
    sub b                                         ; $6952: $90
    db $ec                                        ; $6953: $ec
    ret nz                                        ; $6954: $c0

    rrca                                          ; $6955: $0f
    rst $38                                       ; $6956: $ff
    ld bc, $020f                                  ; $6957: $01 $0f $02
    rrca                                          ; $695a: $0f
    inc bc                                        ; $695b: $03
    rrca                                          ; $695c: $0f
    inc b                                         ; $695d: $04
    rst $30                                       ; $695e: $f7
    rst $30                                       ; $695f: $f7
    inc b                                         ; $6960: $04
    rst $30                                       ; $6961: $f7
    dec b                                         ; $6962: $05
    db $fc                                        ; $6963: $fc
    ldh [rDIV], a                                 ; $6964: $e0 $04
    rst $38                                       ; $6966: $ff
    sub e                                         ; $6967: $93
    db $fd                                        ; $6968: $fd
    rst $38                                       ; $6969: $ff
    ld c, a                                       ; $696a: $4f
    ei                                            ; $696b: $fb

jr_011_696c:
    cpl                                           ; $696c: $2f
    rst $38                                       ; $696d: $ff
    cp [hl]                                       ; $696e: $be
    rst $38                                       ; $696f: $ff
    ld l, [hl]                                    ; $6970: $6e
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    ld c, c                                       ; $6973: $49
    rst $38                                       ; $6974: $ff
    sbc l                                         ; $6975: $9d
    rst $38                                       ; $6976: $ff
    dec a                                         ; $6977: $3d
    db $fc                                        ; $6978: $fc
    rst $20                                       ; $6979: $e7
    inc a                                         ; $697a: $3c
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    sub h                                         ; $697d: $94
    rst $38                                       ; $697e: $ff
    ld a, [$ff7f]                                 ; $697f: $fa $7f $ff
    rra                                           ; $6982: $1f
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    add hl, bc                                    ; $6985: $09
    rst $38                                       ; $6986: $ff
    ld h, h                                       ; $6987: $64
    rst $38                                       ; $6988: $ff
    sub c                                         ; $6989: $91
    jr nc, jr_011_696c                            ; $698a: $30 $e0

    db $10                                        ; $698c: $10
    rst $38                                       ; $698d: $ff
    ldh a, [rNR10]                                ; $698e: $f0 $10
    ldh a, [$08]                                  ; $6990: $f0 $08
    ld hl, sp+$0f                                 ; $6992: $f8 $0f
    ld hl, sp-$71                                 ; $6994: $f8 $8f
    ld e, a                                       ; $6996: $5f
    ld hl, sp-$31                                 ; $6997: $f8 $cf
    ld hl, sp-$01                                 ; $6999: $f8 $ff
    ldh a, [$ce]                                  ; $699b: $f0 $ce
    ldh [$08], a                                  ; $699d: $e0 $08
    and $e0                                       ; $699f: $e6 $e0
    ei                                            ; $69a1: $fb
    db $10                                        ; $69a2: $10
    rra                                           ; $69a3: $1f
    cp $e0                                        ; $69a4: $fe $e0
    rrca                                          ; $69a6: $0f
    ld [$080f], sp                                ; $69a7: $08 $0f $08
    rst $38                                       ; $69aa: $ff
    rst $30                                       ; $69ab: $f7
    ld b, [hl]                                    ; $69ac: $46
    rst $38                                       ; $69ad: $ff
    add b                                         ; $69ae: $80
    cp $e0                                        ; $69af: $fe $e0
    rst $00                                       ; $69b1: $c7
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    ld [hl], a                                    ; $69b6: $77
    sbc a                                         ; $69b7: $9f
    di                                            ; $69b8: $f3
    sbc a                                         ; $69b9: $9f
    db $fc                                        ; $69ba: $fc
    rst $38                                       ; $69bb: $ff
    pop de                                        ; $69bc: $d1
    rst $38                                       ; $69bd: $ff
    ld a, a                                       ; $69be: $7f
    db $d3                                        ; $69bf: $d3
    rst $38                                       ; $69c0: $ff
    ld h, a                                       ; $69c1: $67
    rst $38                                       ; $69c2: $ff
    add [hl]                                      ; $69c3: $86
    rst $38                                       ; $69c4: $ff
    add c                                         ; $69c5: $81
    cp $e0                                        ; $69c6: $fe $e0
    rst $18                                       ; $69c8: $df
    inc b                                         ; $69c9: $04
    rst $38                                       ; $69ca: $ff
    rlca                                          ; $69cb: $07
    rst $28                                       ; $69cc: $ef
    ldh [$fe], a                                  ; $69cd: $e0 $fe
    ldh [rNR41], a                                ; $69cf: $e0 $20
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    ret nc                                        ; $69d3: $d0

    ldh a, [$90]                                  ; $69d4: $f0 $90
    ldh a, [rNR41]                                ; $69d6: $f0 $20
    ldh a, [rLCDC]                                ; $69d8: $f0 $40
    ldh a, [rPCM34]                               ; $69da: $f0 $77
    add b                                         ; $69dc: $80
    rrca                                          ; $69dd: $0f
    dec b                                         ; $69de: $05
    add d                                         ; $69df: $82
    ldh [rSB], a                                  ; $69e0: $e0 $01
    rrca                                          ; $69e2: $0f
    ld bc, $e500                                  ; $69e3: $01 $00 $e5
    rst $30                                       ; $69e6: $f7
    ccf                                           ; $69e7: $3f
    ld [c], a                                     ; $69e8: $e2
    rra                                           ; $69e9: $1f
    and h                                         ; $69ea: $a4
    ldh [rNR22], a                                ; $69eb: $e0 $17
    db $fc                                        ; $69ed: $fc
    sub e                                         ; $69ee: $93
    rst $38                                       ; $69ef: $ff
    rst $30                                       ; $69f0: $f7
    ld c, [hl]                                    ; $69f1: $4e
    ld a, a                                       ; $69f2: $7f
    ld b, l                                       ; $69f3: $45
    cp $e0                                        ; $69f4: $fe $e0
    rst $38                                       ; $69f6: $ff
    ld [$1cf7], sp                                ; $69f7: $08 $f7 $1c
    rst $38                                       ; $69fa: $ff
    rst $20                                       ; $69fb: $e7
    ld a, a                                       ; $69fc: $7f
    adc b                                         ; $69fd: $88
    rst $38                                       ; $69fe: $ff
    sub b                                         ; $69ff: $90
    rst $38                                       ; $6a00: $ff
    ldh [rIE], a                                  ; $6a01: $e0 $ff
    ld sp, hl                                     ; $6a03: $f9
    nop                                           ; $6a04: $00
    sub l                                         ; $6a05: $95
    ldh [$d8], a                                  ; $6a06: $e0 $d8
    call nz, Call_011_4f80                        ; $6a08: $c4 $80 $4f
    ret nz                                        ; $6a0b: $c0

    cpl                                           ; $6a0c: $2f
    ldh [$2f], a                                  ; $6a0d: $e0 $2f
    cpl                                           ; $6a0f: $2f
    ldh [$7f], a                                  ; $6a10: $e0 $7f
    ret nc                                        ; $6a12: $d0

    ret z                                         ; $6a13: $c8

    jp $bef1                                      ; $6a14: $c3 $f1 $be


    ldh [$fe], a                                  ; $6a17: $e0 $fe
    db $e3                                        ; $6a19: $e3
    push bc                                       ; $6a1a: $c5
    add [hl]                                      ; $6a1b: $86
    add c                                         ; $6a1c: $81
    ld [c], a                                     ; $6a1d: $e2
    nop                                           ; $6a1e: $00
    call nc, Call_011_7ee0                        ; $6a1f: $d4 $e0 $7e
    ldh [$f9], a                                  ; $6a22: $e0 $f9
    ldh [$08], a                                  ; $6a24: $e0 $08
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rlca                                          ; $6a28: $07
    rst $38                                       ; $6a29: $ff
    dec b                                         ; $6a2a: $05
    db $fd                                        ; $6a2b: $fd
    rra                                           ; $6a2c: $1f
    rst $38                                       ; $6a2d: $ff
    ld h, c                                       ; $6a2e: $61
    rst $38                                       ; $6a2f: $ff
    cp a                                          ; $6a30: $bf
    ret nz                                        ; $6a31: $c0

    rst $38                                       ; $6a32: $ff
    ld a, [c]                                     ; $6a33: $f2
    ccf                                           ; $6a34: $3f
    pop af                                        ; $6a35: $f1
    rra                                           ; $6a36: $1f
    or a                                          ; $6a37: $b7
    ldh [$08], a                                  ; $6a38: $e0 $08
    cp a                                          ; $6a3a: $bf
    rst $38                                       ; $6a3b: $ff
    adc b                                         ; $6a3c: $88
    rst $38                                       ; $6a3d: $ff
    ld [$08f8], sp                                ; $6a3e: $08 $f8 $08
    ld a, [hl]                                    ; $6a41: $7e
    ldh [$a0], a                                  ; $6a42: $e0 $a0
    ld hl, sp+$00                                 ; $6a44: $f8 $00
    ldh [$80], a                                  ; $6a46: $e0 $80
    call z, $e242                                 ; $6a48: $cc $42 $e2
    adc b                                         ; $6a4b: $88
    rst $38                                       ; $6a4c: $ff
    ld b, a                                       ; $6a4d: $47
    ld a, a                                       ; $6a4e: $7f
    ld b, c                                       ; $6a4f: $41
    rst $38                                       ; $6a50: $ff
    ld a, a                                       ; $6a51: $7f
    ld b, b                                       ; $6a52: $40
    ld a, a                                       ; $6a53: $7f
    ld b, b                                       ; $6a54: $40
    rst $38                                       ; $6a55: $ff
    add b                                         ; $6a56: $80
    pop hl                                        ; $6a57: $e1
    ccf                                           ; $6a58: $3f
    rst $38                                       ; $6a59: $ff
    push bc                                       ; $6a5a: $c5
    ld a, a                                       ; $6a5b: $7f
    db $eb                                        ; $6a5c: $eb
    ld a, $ff                                     ; $6a5d: $3e $ff
    ld e, $fe                                     ; $6a5f: $1e $fe
    ld [bc], a                                    ; $6a61: $02
    ld a, [$e23e]                                 ; $6a62: $fa $3e $e2
    ld b, b                                       ; $6a65: $40
    ld h, b                                       ; $6a66: $60
    res 1, a                                      ; $6a67: $cb $8f
    add b                                         ; $6a69: $80
    ldh a, [rP1]                                  ; $6a6a: $f0 $00
    di                                            ; $6a6c: $f3
    rst $28                                       ; $6a6d: $ef
    inc bc                                        ; $6a6e: $03
    db $f4                                        ; $6a6f: $f4
    rlca                                          ; $6a70: $07
    ld hl, sp+$05                                 ; $6a71: $f8 $05
    ldh [rIF], a                                  ; $6a73: $e0 $0f
    rrca                                          ; $6a75: $0f
    ld hl, sp-$01                                 ; $6a76: $f8 $ff
    rst $38                                       ; $6a78: $ff
    rlca                                          ; $6a79: $07
    rlca                                          ; $6a7a: $07
    rst $38                                       ; $6a7b: $ff
    ret nz                                        ; $6a7c: $c0

    ccf                                           ; $6a7d: $3f
    ldh [$1f], a                                  ; $6a7e: $e0 $1f
    di                                            ; $6a80: $f3
    ld hl, sp+$17                                 ; $6a81: $f8 $17
    add b                                         ; $6a83: $80
    ld [c], a                                     ; $6a84: $e2
    ld a, h                                       ; $6a85: $7c
    ld [c], a                                     ; $6a86: $e2
    ld e, h                                       ; $6a87: $5c
    db $e3                                        ; $6a88: $e3
    cp [hl]                                       ; $6a89: $be
    pop bc                                        ; $6a8a: $c1
    ld a, [$c2ed]                                 ; $6a8b: $fa $ed $c2
    rst $38                                       ; $6a8e: $ff
    rst $20                                       ; $6a8f: $e7
    ret nz                                        ; $6a90: $c0

    ld a, a                                       ; $6a91: $7f
    ld a, a                                       ; $6a92: $7f
    rst $08                                       ; $6a93: $cf
    ld b, b                                       ; $6a94: $40
    rst $28                                       ; $6a95: $ef
    db $fd                                        ; $6a96: $fd

jr_011_6a97:
    jr nz, jr_011_6a97                            ; $6a97: $20 $fe

    ldh [$e0], a                                  ; $6a99: $e0 $e0
    or b                                          ; $6a9b: $b0
    ldh [rLCDC], a                                ; $6a9c: $e0 $40
    ret nz                                        ; $6a9e: $c0

    ld a, a                                       ; $6a9f: $7f
    rlca                                          ; $6aa0: $07
    rst $38                                       ; $6aa1: $ff
    add b                                         ; $6aa2: $80
    add b                                         ; $6aa3: $80
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    dec bc                                        ; $6aa7: $0b
    rrca                                          ; $6aa8: $0f
    nop                                           ; $6aa9: $00
    cp $e3                                        ; $6aaa: $fe $e3
    ldh a, [$fe]                                  ; $6aac: $f0 $fe
    db $ec                                        ; $6aae: $ec
    add sp, -$1b                                  ; $6aaf: $e8 $e5
    ldh [$fd], a                                  ; $6ab1: $e0 $fd
    ret nc                                        ; $6ab3: $d0

    rst $38                                       ; $6ab4: $ff
    db $fc                                        ; $6ab5: $fc
    ldh [$fb], a                                  ; $6ab6: $e0 $fb
    ret nc                                        ; $6ab8: $d0

    or $07                                        ; $6ab9: $f6 $07
    dec de                                        ; $6abb: $1b
    inc e                                         ; $6abc: $1c
    cpl                                           ; $6abd: $2f
    ld sp, $fd4f                                  ; $6abe: $31 $4f $fd
    ld [hl], l                                    ; $6ac1: $75
    or b                                          ; $6ac2: $b0
    and $e0                                       ; $6ac3: $e6 $e0
    ld e, b                                       ; $6ac5: $58
    cp b                                          ; $6ac6: $b8
    db $e4                                        ; $6ac7: $e4
    ld e, h                                       ; $6ac8: $5c
    ld [c], a                                     ; $6ac9: $e2
    db $fd                                        ; $6aca: $fd
    ld e, [hl]                                    ; $6acb: $5e
    add b                                         ; $6acc: $80
    rst $28                                       ; $6acd: $ef
    rst $30                                       ; $6ace: $f7
    rlca                                          ; $6acf: $07
    rst $38                                       ; $6ad0: $ff
    add hl, de                                    ; $6ad1: $19
    cp $27                                        ; $6ad2: $fe $27
    rst $38                                       ; $6ad4: $ff
    ld a, [hl]                                    ; $6ad5: $7e
    ld b, e                                       ; $6ad6: $43
    ld a, [hl]                                    ; $6ad7: $7e
    ld c, e                                       ; $6ad8: $4b
    ld a, a                                       ; $6ad9: $7f
    ld d, a                                       ; $6ada: $57
    ld a, [hl]                                    ; $6adb: $7e
    ld d, e                                       ; $6adc: $53
    rst $38                                       ; $6add: $ff
    ld c, a                                       ; $6ade: $4f
    ld [hl], a                                    ; $6adf: $77
    sub a                                         ; $6ae0: $97
    ld a, [$ff9f]                                 ; $6ae1: $fa $9f $ff
    jr nc, @+$01                                  ; $6ae4: $30 $ff

    rst $38                                       ; $6ae6: $ff
    ld b, b                                       ; $6ae7: $40
    rst $38                                       ; $6ae8: $ff
    sbc a                                         ; $6ae9: $9f
    rst $38                                       ; $6aea: $ff
    cp a                                          ; $6aeb: $bf
    cp $ff                                        ; $6aec: $fe $ff
    di                                            ; $6aee: $f3
    rst $38                                       ; $6aef: $ff
    pop hl                                        ; $6af0: $e1
    rst $18                                       ; $6af1: $df
    pop de                                        ; $6af2: $d1
    cp a                                          ; $6af3: $bf
    ld hl, sp-$01                                 ; $6af4: $f8 $ff
    inc b                                         ; $6af6: $04
    rst $38                                       ; $6af7: $ff
    cp e                                          ; $6af8: $bb
    ld a, $ff                                     ; $6af9: $3e $ff
    rst $38                                       ; $6afb: $ff
    ldh [rOCPD], a                                ; $6afc: $e0 $6b
    rst $38                                       ; $6afe: $ff
    ld b, l                                       ; $6aff: $45
    ld h, b                                       ; $6b00: $60
    pop hl                                        ; $6b01: $e1
    rst $08                                       ; $6b02: $cf
    rst $38                                       ; $6b03: $ff
    ret nz                                        ; $6b04: $c0

    cpl                                           ; $6b05: $2f
    ldh [$38], a                                  ; $6b06: $e0 $38
    add sp, $3c                                   ; $6b08: $e8 $3c
    db $f4                                        ; $6b0a: $f4
    db $fc                                        ; $6b0b: $fc
    rst $38                                       ; $6b0c: $ff
    db $e4                                        ; $6b0d: $e4
    db $fc                                        ; $6b0e: $fc
    call nc, $b5ff                                ; $6b0f: $d4 $ff $b5
    rst $38                                       ; $6b12: $ff
    sub e                                         ; $6b13: $93
    ld a, a                                       ; $6b14: $7f
    rst $38                                       ; $6b15: $ff
    ld c, e                                       ; $6b16: $4b
    ld a, a                                       ; $6b17: $7f
    ld l, l                                       ; $6b18: $6d
    rst $18                                       ; $6b19: $df
    ld a, c                                       ; $6b1a: $79
    rst $08                                       ; $6b1b: $cf
    ld a, d                                       ; $6b1c: $7a
    rst $00                                       ; $6b1d: $c7
    rst $38                                       ; $6b1e: $ff
    ld a, [hl]                                    ; $6b1f: $7e
    db $e3                                        ; $6b20: $e3
    ld a, $7f                                     ; $6b21: $3e $7f
    push de                                       ; $6b23: $d5
    ld a, a                                       ; $6b24: $7f
    rst $18                                       ; $6b25: $df
    ld a, [$cfff]                                 ; $6b26: $fa $ff $cf
    ldh a, [rIE]                                  ; $6b29: $f0 $ff
    ld hl, sp+$3f                                 ; $6b2b: $f8 $3f
    cp $5f                                        ; $6b2d: $fe $5f
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    ld d, a                                       ; $6b31: $57
    rst $38                                       ; $6b32: $ff
    ld h, h                                       ; $6b33: $64
    rst $38                                       ; $6b34: $ff
    push de                                       ; $6b35: $d5
    ld a, a                                       ; $6b36: $7f
    push af                                       ; $6b37: $f5
    cpl                                           ; $6b38: $2f
    rst $38                                       ; $6b39: $ff
    ld sp, hl                                     ; $6b3a: $f9
    rlca                                          ; $6b3b: $07
    rst $38                                       ; $6b3c: $ff
    rrca                                          ; $6b3d: $0f

jr_011_6b3e:
    cp $3f                                        ; $6b3e: $fe $3f
    db $fd                                        ; $6b40: $fd
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    push af                                       ; $6b43: $f5
    rst $38                                       ; $6b44: $ff
    sub e                                         ; $6b45: $93
    ld a, h                                       ; $6b46: $7c
    db $e4                                        ; $6b47: $e4
    ld a, h                                       ; $6b48: $7c
    db $e4                                        ; $6b49: $e4
    ld hl, sp-$01                                 ; $6b4a: $f8 $ff
    ret z                                         ; $6b4c: $c8

    ld hl, sp-$28                                 ; $6b4d: $f8 $d8
    rst $38                                       ; $6b4f: $ff
    ld c, b                                       ; $6b50: $48
    rst $38                                       ; $6b51: $ff
    jr z, @+$01                                   ; $6b52: $28 $ff

    rst $38                                       ; $6b54: $ff
    jr c, jr_011_6b3e                             ; $6b55: $38 $e7

    inc a                                         ; $6b57: $3c
    pop hl                                        ; $6b58: $e1
    ccf                                           ; $6b59: $3f
    db $e3                                        ; $6b5a: $e3
    ccf                                           ; $6b5b: $3f
    rst $30                                       ; $6b5c: $f7
    rst $28                                       ; $6b5d: $ef
    rra                                           ; $6b5e: $1f
    rst $30                                       ; $6b5f: $f7
    rra                                           ; $6b60: $1f
    rrca                                          ; $6b61: $0f
    rst $38                                       ; $6b62: $ff
    ldh [$1f], a                                  ; $6b63: $e0 $1f
    inc de                                        ; $6b65: $13
    rra                                           ; $6b66: $1f
    db $fd                                        ; $6b67: $fd
    inc de                                        ; $6b68: $13
    add l                                         ; $6b69: $85
    ldh [$8e], a                                  ; $6b6a: $e0 $8e
    rst $38                                       ; $6b6c: $ff
    pop bc                                        ; $6b6d: $c1
    rst $38                                       ; $6b6e: $ff
    ldh a, [$8f]                                  ; $6b6f: $f0 $8f
    rst $28                                       ; $6b71: $ef
    ld hl, sp+$07                                 ; $6b72: $f8 $07
    rst $38                                       ; $6b74: $ff
    jp $e18c                                      ; $6b75: $c3 $8c $e1


    add [hl]                                      ; $6b78: $86
    rst $38                                       ; $6b79: $ff
    jr c, jr_011_6bfb                             ; $6b7a: $38 $7f

    rst $38                                       ; $6b7c: $ff
    pop bc                                        ; $6b7d: $c1
    cp $07                                        ; $6b7e: $fe $07
    db $fc                                        ; $6b80: $fc
    adc a                                         ; $6b81: $8f
    db $fd                                        ; $6b82: $fd
    ld a, [hl]                                    ; $6b83: $7e
    pop hl                                        ; $6b84: $e1
    rst $38                                       ; $6b85: $ff
    sbc h                                         ; $6b86: $9c
    jp $837e                                      ; $6b87: $c3 $7e $83


    cp $01                                        ; $6b8a: $fe $01
    rst $38                                       ; $6b8c: $ff
    ld b, c                                       ; $6b8d: $41
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    pop hl                                        ; $6b90: $e1
    rst $38                                       ; $6b91: $ff
    ld sp, hl                                     ; $6b92: $f9
    rra                                           ; $6b93: $1f
    db $fd                                        ; $6b94: $fd
    rst $00                                       ; $6b95: $c7
    rst $38                                       ; $6b96: $ff
    ld e, e                                       ; $6b97: $5b
    inc hl                                        ; $6b98: $23
    ccf                                           ; $6b99: $3f
    rst $38                                       ; $6b9a: $ff
    db $e4                                        ; $6b9b: $e4
    rst $38                                       ; $6b9c: $ff
    rra                                           ; $6b9d: $1f
    cp $e0                                        ; $6b9e: $fe $e0
    rrca                                          ; $6ba0: $0f
    inc [hl]                                      ; $6ba1: $34
    ldh [$fe], a                                  ; $6ba2: $e0 $fe
    rst $38                                       ; $6ba4: $ff
    db $ed                                        ; $6ba5: $ed
    sbc b                                         ; $6ba6: $98
    rst $38                                       ; $6ba7: $ff
    or $ff                                        ; $6ba8: $f6 $ff
    db $e4                                        ; $6baa: $e4
    rst $38                                       ; $6bab: $ff
    add sp, -$41                                  ; $6bac: $e8 $bf
    rst $38                                       ; $6bae: $ff
    pop af                                        ; $6baf: $f1
    rst $38                                       ; $6bb0: $ff
    cp $ff                                        ; $6bb1: $fe $ff
    db $fc                                        ; $6bb3: $fc
    dec sp                                        ; $6bb4: $3b
    ldh [rSB], a                                  ; $6bb5: $e0 $01
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    ld h, l                                       ; $6bb9: $65
    cp $32                                        ; $6bba: $fe $32
    cp $12                                        ; $6bbc: $fe $12
    rst $38                                       ; $6bbe: $ff
    ld [bc], a                                    ; $6bbf: $02
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    ld b, d                                       ; $6bc2: $42
    rst $38                                       ; $6bc3: $ff
    sub h                                         ; $6bc4: $94
    rst $38                                       ; $6bc5: $ff
    inc l                                         ; $6bc6: $2c
    rst $30                                       ; $6bc7: $f7
    rlca                                          ; $6bc8: $07
    rst $38                                       ; $6bc9: $ff
    rst $30                                       ; $6bca: $f7
    rlca                                          ; $6bcb: $07
    di                                            ; $6bcc: $f3
    inc sp                                        ; $6bcd: $33
    call z, Call_011_427f                         ; $6bce: $cc $7f $42
    ld a, a                                       ; $6bd1: $7f
    cp a                                          ; $6bd2: $bf
    ld b, b                                       ; $6bd3: $40
    ld a, a                                       ; $6bd4: $7f
    ldh [rIE], a                                  ; $6bd5: $e0 $ff
    rra                                           ; $6bd7: $1f
    rra                                           ; $6bd8: $1f
    ret nz                                        ; $6bd9: $c0

    ld [c], a                                     ; $6bda: $e2
    db $fc                                        ; $6bdb: $fc
    rst $38                                       ; $6bdc: $ff
    ld a, a                                       ; $6bdd: $7f
    ld hl, sp+$3c                                 ; $6bde: $f8 $3c
    db $fc                                        ; $6be0: $fc
    ld [bc], a                                    ; $6be1: $02
    cp $43                                        ; $6be2: $fe $43
    rst $38                                       ; $6be4: $ff
    db $fd                                        ; $6be5: $fd
    db $fc                                        ; $6be6: $fc
    adc $e1                                       ; $6be7: $ce $e1
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rra                                           ; $6beb: $1f
    rst $30                                       ; $6bec: $f7
    rlca                                          ; $6bed: $07
    ld c, $ff                                     ; $6bee: $0e $ff
    rlca                                          ; $6bf0: $07
    ld [$f90f], sp                                ; $6bf1: $08 $0f $f9
    rst $38                                       ; $6bf4: $ff
    rlca                                          ; $6bf5: $07
    rlca                                          ; $6bf6: $07
    rst $38                                       ; $6bf7: $ff
    cp l                                          ; $6bf8: $bd
    ld hl, sp-$02                                 ; $6bf9: $f8 $fe

jr_011_6bfb:
    ldh [$fc], a                                  ; $6bfb: $e0 $fc
    sbc e                                         ; $6bfd: $9b
    cp $61                                        ; $6bfe: $fe $61
    or a                                          ; $6c00: $b7
    ldh [rSB], a                                  ; $6c01: $e0 $01
    rlca                                          ; $6c03: $07
    rst $38                                       ; $6c04: $ff
    cp $fe                                        ; $6c05: $fe $fe
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    dec bc                                        ; $6c0a: $0b
    rrca                                          ; $6c0b: $0f
    nop                                           ; $6c0c: $00
    cp $e3                                        ; $6c0d: $fe $e3
    ldh a, [$fe]                                  ; $6c0f: $f0 $fe
    db $ec                                        ; $6c11: $ec
    add sp, -$1b                                  ; $6c12: $e8 $e5
    ldh [$fd], a                                  ; $6c14: $e0 $fd
    ret nc                                        ; $6c16: $d0

    rst $38                                       ; $6c17: $ff
    db $fc                                        ; $6c18: $fc
    ldh [$fb], a                                  ; $6c19: $e0 $fb
    ret nc                                        ; $6c1b: $d0

    or $03                                        ; $6c1c: $f6 $03
    inc c                                         ; $6c1e: $0c
    rrca                                          ; $6c1f: $0f
    inc de                                        ; $6c20: $13
    inc e                                         ; $6c21: $1c

jr_011_6c22:
    daa                                           ; $6c22: $27
    db $fd                                        ; $6c23: $fd
    dec sp                                        ; $6c24: $3b
    or b                                          ; $6c25: $b0
    and $e0                                       ; $6c26: $e6 $e0
    jr jr_011_6c22                                ; $6c28: $18 $f8

    ld d, h                                       ; $6c2a: $54
    xor h                                         ; $6c2b: $ac
    ld a, [$56fd]                                 ; $6c2c: $fa $fd $56
    add b                                         ; $6c2f: $80
    di                                            ; $6c30: $f3
    rst $30                                       ; $6c31: $f7
    rlca                                          ; $6c32: $07
    add hl, bc                                    ; $6c33: $09
    rrca                                          ; $6c34: $0f
    ld a, b                                       ; $6c35: $78
    ld a, a                                       ; $6c36: $7f
    rst $38                                       ; $6c37: $ff
    db $fc                                        ; $6c38: $fc
    adc a                                         ; $6c39: $8f
    cp $83                                        ; $6c3a: $fe $83
    ld b, e                                       ; $6c3c: $43
    ld a, l                                       ; $6c3d: $7d
    add l                                         ; $6c3e: $85
    cp $ff                                        ; $6c3f: $fe $ff
    add a                                         ; $6c41: $87
    rst $38                                       ; $6c42: $ff
    jr @+$01                                      ; $6c43: $18 $ff

    ld l, $ff                                     ; $6c45: $2e $ff
    ccf                                           ; $6c47: $3f
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    ld a, a                                       ; $6c4a: $7f
    ld sp, hl                                     ; $6c4b: $f9
    ld a, a                                       ; $6c4c: $7f
    ret nc                                        ; $6c4d: $d0

    db $fd                                        ; $6c4e: $fd
    cp e                                          ; $6c4f: $bb
    ld sp, hl                                     ; $6c50: $f9
    rst $30                                       ; $6c51: $f7
    rst $38                                       ; $6c52: $ff
    dec c                                         ; $6c53: $0d
    rst $38                                       ; $6c54: $ff
    inc bc                                        ; $6c55: $03
    rst $38                                       ; $6c56: $ff
    ld hl, sp-$01                                 ; $6c57: $f8 $ff
    rst $38                                       ; $6c59: $ff
    ld e, a                                       ; $6c5a: $5f
    rst $28                                       ; $6c5b: $ef
    rst $38                                       ; $6c5c: $ff
    push de                                       ; $6c5d: $d5
    rst $38                                       ; $6c5e: $ff
    db $eb                                        ; $6c5f: $eb
    ld h, b                                       ; $6c60: $60
    pop hl                                        ; $6c61: $e1
    cpl                                           ; $6c62: $2f
    jr nz, jr_011_6ce4                            ; $6c63: $20 $7f

    rst $38                                       ; $6c65: $ff
    ld d, b                                       ; $6c66: $50
    ldh a, [$90]                                  ; $6c67: $f0 $90
    ld [hl], b                                    ; $6c69: $70
    ret nc                                        ; $6c6a: $d0

    ldh a, [$d0]                                  ; $6c6b: $f0 $d0
    ldh a, [rIE]                                  ; $6c6d: $f0 $ff
    jr nz, jr_011_6cf0                            ; $6c6f: $20 $7f

    ld c, c                                       ; $6c71: $49
    ccf                                           ; $6c72: $3f
    dec h                                         ; $6c73: $25
    rra                                           ; $6c74: $1f
    inc de                                        ; $6c75: $13
    rrca                                          ; $6c76: $0f
    rst $38                                       ; $6c77: $ff
    dec bc                                        ; $6c78: $0b
    rst $38                                       ; $6c79: $ff
    add hl, bc                                    ; $6c7a: $09
    rst $38                                       ; $6c7b: $ff
    add hl, bc                                    ; $6c7c: $09
    rst $30                                       ; $6c7d: $f7
    inc b                                         ; $6c7e: $04
    rst $30                                       ; $6c7f: $f7
    rst $38                                       ; $6c80: $ff
    rlca                                          ; $6c81: $07
    rst $38                                       ; $6c82: $ff
    jp nc, $c97f                                  ; $6c83: $d2 $7f $c9

    cp a                                          ; $6c86: $bf
    rst $20                                       ; $6c87: $e7
    ld a, a                                       ; $6c88: $7f
    rst $38                                       ; $6c89: $ff
    db $fd                                        ; $6c8a: $fd
    sbc a                                         ; $6c8b: $9f
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    ld h, a                                       ; $6c8e: $67
    rst $38                                       ; $6c8f: $ff
    adc h                                         ; $6c90: $8c
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    adc [hl]                                      ; $6c93: $8e
    rst $38                                       ; $6c94: $ff
    or e                                          ; $6c95: $b3
    rst $08                                       ; $6c96: $cf
    cp $05                                        ; $6c97: $fe $05
    rst $38                                       ; $6c99: $ff
    ld b, c                                       ; $6c9a: $41
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    db $e3                                        ; $6c9d: $e3
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    db $fd                                        ; $6ca0: $fd
    rst $38                                       ; $6ca1: $ff
    and [hl]                                      ; $6ca2: $a6
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    add hl, de                                    ; $6ca5: $19
    ld hl, sp-$58                                 ; $6ca6: $f8 $a8
    ldh a, [rSVBK]                                ; $6ca8: $f0 $70
    ldh a, [$60]                                  ; $6caa: $f0 $60
    ldh a, [rIE]                                  ; $6cac: $f0 $ff
    ret nc                                        ; $6cae: $d0

    rst $38                                       ; $6caf: $ff
    sub b                                         ; $6cb0: $90
    rst $38                                       ; $6cb1: $ff
    db $10                                        ; $6cb2: $10
    rst $28                                       ; $6cb3: $ef
    jr nz, @+$01                                  ; $6cb4: $20 $ff

    rst $38                                       ; $6cb6: $ff
    ld [hl], b                                    ; $6cb7: $70
    ld hl, sp+$1f                                 ; $6cb8: $f8 $1f
    ldh [$3f], a                                  ; $6cba: $e0 $3f
    ret nz                                        ; $6cbc: $c0

    ld a, a                                       ; $6cbd: $7f
    ret nz                                        ; $6cbe: $c0

    rst $38                                       ; $6cbf: $ff
    ld a, a                                       ; $6cc0: $7f
    add b                                         ; $6cc1: $80
    rst $38                                       ; $6cc2: $ff
    sbc [hl]                                      ; $6cc3: $9e
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    pop hl                                        ; $6cc6: $e1
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    add b                                         ; $6cc9: $80
    rst $38                                       ; $6cca: $ff
    adc h                                         ; $6ccb: $8c
    ld a, a                                       ; $6ccc: $7f
    jp $e43f                                      ; $6ccd: $c3 $3f $e4


    ccf                                           ; $6cd0: $3f
    rst $30                                       ; $6cd1: $f7
    cp $1f                                        ; $6cd2: $fe $1f
    rst $38                                       ; $6cd4: $ff
    cp [hl]                                       ; $6cd5: $be
    ldh [rIE], a                                  ; $6cd6: $e0 $ff
    rst $38                                       ; $6cd8: $ff
    ld a, c                                       ; $6cd9: $79
    rst $38                                       ; $6cda: $ff
    db $fd                                        ; $6cdb: $fd
    ld h, b                                       ; $6cdc: $60
    db $ec                                        ; $6cdd: $ec
    ldh [$09], a                                  ; $6cde: $e0 $09
    rst $38                                       ; $6ce0: $ff
    rra                                           ; $6ce1: $1f
    ldh [rIE], a                                  ; $6ce2: $e0 $ff

jr_011_6ce4:
    nop                                           ; $6ce4: $00
    ei                                            ; $6ce5: $fb
    rst $38                                       ; $6ce6: $ff
    pop bc                                        ; $6ce7: $c1
    xor $e0                                       ; $6ce8: $ee $e0
    rst $08                                       ; $6cea: $cf
    ld hl, sp-$19                                 ; $6ceb: $f8 $e7
    db $fc                                        ; $6ced: $fc
    rst $30                                       ; $6cee: $f7
    rst $38                                       ; $6cef: $ff

jr_011_6cf0:
    db $fc                                        ; $6cf0: $fc
    ei                                            ; $6cf1: $fb
    cp $7a                                        ; $6cf2: $fe $7a
    cp $7f                                        ; $6cf4: $fe $7f
    rst $20                                       ; $6cf6: $e7
    rst $38                                       ; $6cf7: $ff
    db $dd                                        ; $6cf8: $dd
    push hl                                       ; $6cf9: $e5
    db $dd                                        ; $6cfa: $dd
    ldh [$b1], a                                  ; $6cfb: $e0 $b1
    ld a, a                                       ; $6cfd: $7f
    ld b, b                                       ; $6cfe: $40
    jp z, $94e0                                   ; $6cff: $ca $e0 $94

    rst $38                                       ; $6d02: $ff
    db $fd                                        ; $6d03: $fd
    xor d                                         ; $6d04: $aa
    call nz, $c0e0                                ; $6d05: $c4 $e0 $c0
    rst $38                                       ; $6d08: $ff
    ld l, d                                       ; $6d09: $6a
    rst $38                                       ; $6d0a: $ff
    cp c                                          ; $6d0b: $b9
    rst $38                                       ; $6d0c: $ff
    dec h                                         ; $6d0d: $25
    ld a, a                                       ; $6d0e: $7f
    ld b, l                                       ; $6d0f: $45
    ldh [$1f], a                                  ; $6d10: $e0 $1f
    ld d, d                                       ; $6d12: $52
    ldh [$bf], a                                  ; $6d13: $e0 $bf
    pop hl                                        ; $6d15: $e1
    ld a, a                                       ; $6d16: $7f
    cp e                                          ; $6d17: $bb
    pop hl                                        ; $6d18: $e1
    db $fc                                        ; $6d19: $fc
    ld [$fdbd], a                                 ; $6d1a: $ea $bd $fd
    cp $e1                                        ; $6d1d: $fe $e1
    cp $fe                                        ; $6d1f: $fe $fe
    rst $38                                       ; $6d21: $ff
    db $fc                                        ; $6d22: $fc
    cp $e0                                        ; $6d23: $fe $e0
    ld hl, sp-$02                                 ; $6d25: $f8 $fe
    add hl, hl                                    ; $6d27: $29
    ldh [$1f], a                                  ; $6d28: $e0 $1f
    rst $30                                       ; $6d2a: $f7
    rlca                                          ; $6d2b: $07
    rst $30                                       ; $6d2c: $f7
    rlca                                          ; $6d2d: $07
    ld sp, hl                                     ; $6d2e: $f9
    rst $08                                       ; $6d2f: $cf
    or a                                          ; $6d30: $b7
    cp h                                          ; $6d31: $bc
    rst $38                                       ; $6d32: $ff
    sub d                                         ; $6d33: $92
    pop bc                                        ; $6d34: $c1
    ldh [$3f], a                                  ; $6d35: $e0 $3f
    ccf                                           ; $6d37: $3f
    ret nc                                        ; $6d38: $d0

    ld [c], a                                     ; $6d39: $e2
    cp $ff                                        ; $6d3a: $fe $ff
    rst $38                                       ; $6d3c: $ff
    ld hl, sp+$70                                 ; $6d3d: $f8 $70
    ldh a, [$08]                                  ; $6d3f: $f0 $08
    ld hl, sp+$0f                                 ; $6d41: $f8 $0f
    rst $38                                       ; $6d43: $ff
    ei                                            ; $6d44: $fb
    ldh a, [$f0]                                  ; $6d45: $f0 $f0
    ret nz                                        ; $6d47: $c0

    ld [c], a                                     ; $6d48: $e2
    rra                                           ; $6d49: $1f
    rst $38                                       ; $6d4a: $ff
    rrca                                          ; $6d4b: $0f
    ld c, $0f                                     ; $6d4c: $0e $0f
    sbc a                                         ; $6d4e: $9f
    db $10                                        ; $6d4f: $10
    rra                                           ; $6d50: $1f
    pop af                                        ; $6d51: $f1
    rst $38                                       ; $6d52: $ff
    rrca                                          ; $6d53: $0f
    db $ed                                        ; $6d54: $ed
    ldh [$fe], a                                  ; $6d55: $e0 $fe
    pop hl                                        ; $6d57: $e1
    cpl                                           ; $6d58: $2f
    ld l, a                                       ; $6d59: $6f
    ld [c], a                                     ; $6d5a: $e2
    ld a, l                                       ; $6d5b: $7d
    rst $38                                       ; $6d5c: $ff
    ld de, $c0ea                                  ; $6d5d: $11 $ea $c0
    db $fc                                        ; $6d60: $fc
    db $fc                                        ; $6d61: $fc
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00

Call_011_6d65:
    ld a, [$d332]                                 ; $6d65: $fa $32 $d3
    ret                                           ; $6d68: $c9


    ld a, $06                                     ; $6d69: $3e $06
    ldh [$96], a                                  ; $6d6b: $e0 $96
    ldh [rSVBK], a                                ; $6d6d: $e0 $70
    call Call_011_6d65                            ; $6d6f: $cd $65 $6d
    ld h, a                                       ; $6d72: $67
    ld l, $00                                     ; $6d73: $2e $00
    ld de, $a000                                  ; $6d75: $11 $00 $a0
    call Call_011_6e1e                            ; $6d78: $cd $1e $6e
    xor a                                         ; $6d7b: $af
    call Call_011_6d8f                            ; $6d7c: $cd $8f $6d
    ld a, $0f                                     ; $6d7f: $3e $0f
    ld hl, $6e3e                                  ; $6d81: $21 $3e $6e
    call Call_000_23e8                            ; $6d84: $cd $e8 $23
    ret                                           ; $6d87: $c9


    ld hl, $6e3e                                  ; $6d88: $21 $3e $6e
    call Call_000_2449                            ; $6d8b: $cd $49 $24
    ret                                           ; $6d8e: $c9


Call_011_6d8f:
    push hl                                       ; $6d8f: $e5
    push bc                                       ; $6d90: $c5
    ld b, a                                       ; $6d91: $47
    ld a, [$d329]                                 ; $6d92: $fa $29 $d3
    ld h, $00                                     ; $6d95: $26 $00
    ld l, a                                       ; $6d97: $6f
    ld de, $6dee                                  ; $6d98: $11 $ee $6d
    add hl, de                                    ; $6d9b: $19
    ld c, [hl]                                    ; $6d9c: $4e
    ld a, b                                       ; $6d9d: $78
    and $03                                       ; $6d9e: $e6 $03
    add a                                         ; $6da0: $87
    ld h, $00                                     ; $6da1: $26 $00
    ld l, a                                       ; $6da3: $6f
    ld a, [$d32a]                                 ; $6da4: $fa $2a $d3
    cp $02                                        ; $6da7: $fe $02
    jr nz, jr_011_6dac                            ; $6da9: $20 $01

    inc hl                                        ; $6dab: $23

jr_011_6dac:
    ld de, $6dfe                                  ; $6dac: $11 $fe $6d
    add hl, de                                    ; $6daf: $19
    ld a, [hl]                                    ; $6db0: $7e
    add c                                         ; $6db1: $81
    pop bc                                        ; $6db2: $c1
    push af                                       ; $6db3: $f5
    call Call_011_6d65                            ; $6db4: $cd $65 $6d
    ld h, $00                                     ; $6db7: $26 $00
    ld l, a                                       ; $6db9: $6f
    add hl, hl                                    ; $6dba: $29
    ld de, $6ecd                                  ; $6dbb: $11 $cd $6e
    add hl, de                                    ; $6dbe: $19
    ld a, [hl+]                                   ; $6dbf: $2a
    ld h, [hl]                                    ; $6dc0: $66
    ld l, a                                       ; $6dc1: $6f
    pop af                                        ; $6dc2: $f1
    add a                                         ; $6dc3: $87
    add l                                         ; $6dc4: $85
    ld l, a                                       ; $6dc5: $6f
    ld a, h                                       ; $6dc6: $7c
    adc $00                                       ; $6dc7: $ce $00
    ld h, a                                       ; $6dc9: $67
    ld a, [hl+]                                   ; $6dca: $2a
    ld h, [hl]                                    ; $6dcb: $66
    ld l, a                                       ; $6dcc: $6f
    ld a, l                                       ; $6dcd: $7d
    ld [$d462], a                                 ; $6dce: $ea $62 $d4
    ld a, h                                       ; $6dd1: $7c
    ld [$d463], a                                 ; $6dd2: $ea $63 $d4
    xor a                                         ; $6dd5: $af
    ld [$d464], a                                 ; $6dd6: $ea $64 $d4
    ld [$d467], a                                 ; $6dd9: $ea $67 $d4
    inc a                                         ; $6ddc: $3c
    ld [$d466], a                                 ; $6ddd: $ea $66 $d4
    ld a, $ff                                     ; $6de0: $3e $ff
    ld [$d465], a                                 ; $6de2: $ea $65 $d4
    ld a, [$d443]                                 ; $6de5: $fa $43 $d4
    cp $04                                        ; $6de8: $fe $04
    jr nz, jr_011_6dec                            ; $6dea: $20 $00

jr_011_6dec:
    pop hl                                        ; $6dec: $e1
    ret                                           ; $6ded: $c9


    db $00, $00

    nop                                           ; $6df0: $00

    db $08

    ld [$0808], sp                                ; $6df2: $08 $08 $08

    db $08

    db $10                                        ; $6df6: $10
    db $10                                        ; $6df7: $10
    db $10                                        ; $6df8: $10
    db $10                                        ; $6df9: $10

    db $10, $18

    jr jr_011_6e16                                ; $6dfc: $18 $18

    db $00, $00, $01, $02, $03, $04, $05

    ld b, $07                                     ; $6e05: $06 $07
    rlca                                          ; $6e07: $07

Call_011_6e08:
    ld a, l                                       ; $6e08: $7d
    push af                                       ; $6e09: $f5
    push de                                       ; $6e0a: $d5
    ld l, h                                       ; $6e0b: $6c
    ld h, $00                                     ; $6e0c: $26 $00
    add hl, hl                                    ; $6e0e: $29
    ld de, $6eef                                  ; $6e0f: $11 $ef $6e
    add hl, de                                    ; $6e12: $19
    ld a, [hl+]                                   ; $6e13: $2a
    ld h, [hl]                                    ; $6e14: $66
    ld l, a                                       ; $6e15: $6f

jr_011_6e16:
    pop de                                        ; $6e16: $d1
    ld c, $10                                     ; $6e17: $0e $10
    pop af                                        ; $6e19: $f1
    call Call_000_06f1                            ; $6e1a: $cd $f1 $06
    ret                                           ; $6e1d: $c9


Call_011_6e1e:
    ld a, l                                       ; $6e1e: $7d
    push af                                       ; $6e1f: $f5
    push de                                       ; $6e20: $d5
    ld l, h                                       ; $6e21: $6c
    ld h, $00                                     ; $6e22: $26 $00
    add hl, hl                                    ; $6e24: $29
    ld de, $6eef                                  ; $6e25: $11 $ef $6e
    add hl, de                                    ; $6e28: $19
    ld a, [hl+]                                   ; $6e29: $2a
    ld h, [hl]                                    ; $6e2a: $66
    ld l, a                                       ; $6e2b: $6f
    pop de                                        ; $6e2c: $d1
    ld c, $10                                     ; $6e2d: $0e $10
    pop af                                        ; $6e2f: $f1
    call Call_000_071d                            ; $6e30: $cd $1d $07
    ret                                           ; $6e33: $c9


jr_011_6e34:
    call Call_000_2e3b                            ; $6e34: $cd $3b $2e
    ld a, [$d464]                                 ; $6e37: $fa $64 $d4
    or a                                          ; $6e3a: $b7
    jr z, jr_011_6e34                             ; $6e3b: $28 $f7

    ret                                           ; $6e3d: $c9


    ld a, $06                                     ; $6e3e: $3e $06
    ldh [$96], a                                  ; $6e40: $e0 $96
    ldh [rSVBK], a                                ; $6e42: $e0 $70
    ld a, [$d466]                                 ; $6e44: $fa $66 $d4
    dec a                                         ; $6e47: $3d
    ld [$d466], a                                 ; $6e48: $ea $66 $d4
    jr nz, jr_011_6e99                            ; $6e4b: $20 $4c

jr_011_6e4d:
    ld a, [$d465]                                 ; $6e4d: $fa $65 $d4
    inc a                                         ; $6e50: $3c
    ld [$d465], a                                 ; $6e51: $ea $65 $d4
    ld d, $00                                     ; $6e54: $16 $00
    ld e, a                                       ; $6e56: $5f
    ld hl, $d462                                  ; $6e57: $21 $62 $d4
    ld a, [hl+]                                   ; $6e5a: $2a
    ld h, [hl]                                    ; $6e5b: $66
    ld l, a                                       ; $6e5c: $6f
    add hl, de                                    ; $6e5d: $19
    add hl, de                                    ; $6e5e: $19
    ld a, [hl+]                                   ; $6e5f: $2a
    cp $fe                                        ; $6e60: $fe $fe
    jr nz, jr_011_6e6b                            ; $6e62: $20 $07

    ld a, $01                                     ; $6e64: $3e $01
    ld [$d464], a                                 ; $6e66: $ea $64 $d4
    jr jr_011_6e4d                                ; $6e69: $18 $e2

jr_011_6e6b:
    cp $ff                                        ; $6e6b: $fe $ff
    jr nz, jr_011_6e82                            ; $6e6d: $20 $13

    ld a, $01                                     ; $6e6f: $3e $01
    ld [$d464], a                                 ; $6e71: $ea $64 $d4
    ld a, $ff                                     ; $6e74: $3e $ff
    ld [$d466], a                                 ; $6e76: $ea $66 $d4
    ld a, [$d465]                                 ; $6e79: $fa $65 $d4
    dec a                                         ; $6e7c: $3d
    ld [$d465], a                                 ; $6e7d: $ea $65 $d4
    jr jr_011_6e99                                ; $6e80: $18 $17

jr_011_6e82:
    ld [$d467], a                                 ; $6e82: $ea $67 $d4
    ld a, [hl]                                    ; $6e85: $7e
    ld [$d466], a                                 ; $6e86: $ea $66 $d4
    call Call_011_6d65                            ; $6e89: $cd $65 $6d
    ld h, a                                       ; $6e8c: $67
    ld a, [$d467]                                 ; $6e8d: $fa $67 $d4
    ld l, a                                       ; $6e90: $6f
    ld de, $a000                                  ; $6e91: $11 $00 $a0
    ld c, $10                                     ; $6e94: $0e $10
    call Call_011_6e08                            ; $6e96: $cd $08 $6e

jr_011_6e99:
    call Call_011_6d65                            ; $6e99: $cd $65 $6d
    ld l, a                                       ; $6e9c: $6f
    ld h, $00                                     ; $6e9d: $26 $00
    add hl, hl                                    ; $6e9f: $29
    ld de, $6f0f                                  ; $6ea0: $11 $0f $6f
    add hl, de                                    ; $6ea3: $19
    ld a, [hl+]                                   ; $6ea4: $2a
    ld h, [hl]                                    ; $6ea5: $66
    ld l, a                                       ; $6ea6: $6f
    ld a, [$d467]                                 ; $6ea7: $fa $67 $d4
    ld e, a                                       ; $6eaa: $5f
    ld d, $00                                     ; $6eab: $16 $00
    add hl, de                                    ; $6ead: $19
    add hl, de                                    ; $6eae: $19
    ld a, [hl+]                                   ; $6eaf: $2a
    ld h, [hl]                                    ; $6eb0: $66
    ld l, a                                       ; $6eb1: $6f
    ld de, $507c                                  ; $6eb2: $11 $7c $50
    ld bc, $0c00                                  ; $6eb5: $01 $00 $0c
    ld a, [$d333]                                 ; $6eb8: $fa $33 $d3
    or a                                          ; $6ebb: $b7
    jr z, jr_011_6ec0                             ; $6ebc: $28 $02

    set 5, b                                      ; $6ebe: $cb $e8

jr_011_6ec0:
    ld a, [$c835]                                 ; $6ec0: $fa $35 $c8
    and $01                                       ; $6ec3: $e6 $01
    jr z, jr_011_6ec9                             ; $6ec5: $28 $02

    set 0, b                                      ; $6ec7: $cb $c0

jr_011_6ec9:
    call Call_000_26ea                            ; $6ec9: $cd $ea $26
    ret                                           ; $6ecc: $c9


    cpl                                           ; $6ecd: $2f
    ld l, a                                       ; $6ece: $6f

    db $2f, $6f

    cpl                                           ; $6ed1: $2f
    ld l, a                                       ; $6ed2: $6f
    cpl                                           ; $6ed3: $2f
    ld l, a                                       ; $6ed4: $6f
    cpl                                           ; $6ed5: $2f
    ld l, a                                       ; $6ed6: $6f
    cpl                                           ; $6ed7: $2f
    ld l, a                                       ; $6ed8: $6f
    cpl                                           ; $6ed9: $2f
    ld l, a                                       ; $6eda: $6f
    cpl                                           ; $6edb: $2f
    ld l, a                                       ; $6edc: $6f

    db $2f, $6f, $2f, $6f

    cpl                                           ; $6ee1: $2f
    ld l, a                                       ; $6ee2: $6f
    cpl                                           ; $6ee3: $2f
    ld l, a                                       ; $6ee4: $6f
    cpl                                           ; $6ee5: $2f
    ld l, a                                       ; $6ee6: $6f
    cpl                                           ; $6ee7: $2f
    ld l, a                                       ; $6ee8: $6f
    cpl                                           ; $6ee9: $2f
    ld l, a                                       ; $6eea: $6f
    cpl                                           ; $6eeb: $2f
    ld l, a                                       ; $6eec: $6f
    cpl                                           ; $6eed: $2f
    ld l, a                                       ; $6eee: $6f
    nop                                           ; $6eef: $00
    inc d                                         ; $6ef0: $14

    db $04, $14

    ld b, $14                                     ; $6ef3: $06 $14
    ld [bc], a                                    ; $6ef5: $02
    inc d                                         ; $6ef6: $14
    ld [$0a14], sp                                ; $6ef7: $08 $14 $0a
    inc d                                         ; $6efa: $14
    inc c                                         ; $6efb: $0c
    inc d                                         ; $6efc: $14
    ld c, $14                                     ; $6efd: $0e $14

    db $04, $15, $06, $15

    ld [$0415], sp                                ; $6f03: $08 $15 $04
    dec d                                         ; $6f06: $15
    inc b                                         ; $6f07: $04
    dec d                                         ; $6f08: $15
    inc b                                         ; $6f09: $04
    dec d                                         ; $6f0a: $15
    inc b                                         ; $6f0b: $04
    dec d                                         ; $6f0c: $15
    inc b                                         ; $6f0d: $04
    dec d                                         ; $6f0e: $15
    ccf                                           ; $6f0f: $3f
    ld [hl], b                                    ; $6f10: $70

    db $21, $72

    ld e, $73                                     ; $6f13: $1e $73
    inc [hl]                                      ; $6f15: $34
    ld [hl], c                                    ; $6f16: $71
    inc sp                                        ; $6f17: $33
    ld [hl], h                                    ; $6f18: $74
    inc l                                         ; $6f19: $2c
    ld [hl], l                                    ; $6f1a: $75
    ld b, l                                       ; $6f1b: $45
    halt                                          ; $6f1c: $76
    ld d, d                                       ; $6f1d: $52
    ld [hl], a                                    ; $6f1e: $77

    db $6f, $78, $88, $79

    add c                                         ; $6f23: $81
    ld a, d                                       ; $6f24: $7a
    ld l, a                                       ; $6f25: $6f
    ld a, b                                       ; $6f26: $78
    ld l, a                                       ; $6f27: $6f
    ld a, b                                       ; $6f28: $78
    ld l, a                                       ; $6f29: $6f
    ld a, b                                       ; $6f2a: $78
    ld l, a                                       ; $6f2b: $6f
    ld a, b                                       ; $6f2c: $78
    ld l, a                                       ; $6f2d: $6f
    ld a, b                                       ; $6f2e: $78

    db $67, $6f, $6a, $6f

    ld [hl], e                                    ; $6f33: $73
    ld l, a                                       ; $6f34: $6f

    db $7a, $6f

    adc c                                         ; $6f37: $89
    ld l, a                                       ; $6f38: $6f

    db $96, $6f

    sbc a                                         ; $6f3b: $9f
    ld l, a                                       ; $6f3c: $6f
    and h                                         ; $6f3d: $a4
    ld l, a                                       ; $6f3e: $6f

    db $a7, $6f, $aa, $6f

    or e                                          ; $6f43: $b3
    ld l, a                                       ; $6f44: $6f

    db $ba, $6f

    ret                                           ; $6f47: $c9


    ld l, a                                       ; $6f48: $6f
    sub $6f                                       ; $6f49: $d6 $6f
    rst $18                                       ; $6f4b: $df
    ld l, a                                       ; $6f4c: $6f
    db $e4                                        ; $6f4d: $e4
    ld l, a                                       ; $6f4e: $6f

    db $a7, $6f, $aa, $6f, $b3, $6f, $ba, $6f, $c9, $6f

    sub $6f                                       ; $6f59: $d6 $6f
    rst $18                                       ; $6f5b: $df
    ld l, a                                       ; $6f5c: $6f
    db $e4                                        ; $6f5d: $e4
    ld l, a                                       ; $6f5e: $6f
    ld h, a                                       ; $6f5f: $67
    ld l, a                                       ; $6f60: $6f

    db $67, $6f

    ld h, a                                       ; $6f63: $67
    ld l, a                                       ; $6f64: $6f
    ld h, a                                       ; $6f65: $67
    ld l, a                                       ; $6f66: $6f

    db $00, $ff

    rst $38                                       ; $6f69: $ff

    db $00, $48, $01, $08, $02, $0c, $03, $ff

    rst $38                                       ; $6f72: $ff
    nop                                           ; $6f73: $00
    ld d, l                                       ; $6f74: $55
    ld bc, $020f                                  ; $6f75: $01 $0f $02
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff

    db $04, $14, $03, $06, $02, $05, $fe

    db $01                                        ; $6f81: $01

    db $05, $04, $07, $06, $08, $ff

    rst $38                                       ; $6f88: $ff
    ld [bc], a                                    ; $6f89: $02
    ld a, [bc]                                    ; $6f8a: $0a
    ld bc, $fe06                                  ; $6f8b: $01 $06 $fe
    ld bc, $0405                                  ; $6f8e: $01 $05 $04
    ld b, $08                                     ; $6f91: $06 $08
    rlca                                          ; $6f93: $07
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff

    db $03, $0a, $02, $0a, $01, $0a, $00, $ff

    rst $38                                       ; $6f9e: $ff
    ld bc, $000f                                  ; $6f9f: $01 $0f $00
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    nop                                           ; $6fa4: $00
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff

    db $09, $ff

    rst $38                                       ; $6fa9: $ff

    db $09, $48, $01, $08, $02, $0c, $03, $ff

    rst $38                                       ; $6fb2: $ff

    db $09, $55, $01, $0f, $02, $ff

    rst $38                                       ; $6fb9: $ff

    db $04, $10, $03, $06, $02, $05, $fe

    db $01                                        ; $6fc1: $01

    db $0a, $04, $07, $06, $08, $ff

    rst $38                                       ; $6fc8: $ff

    db $02, $08, $01, $06, $fe

    db $01                                        ; $6fce: $01

    db $0a, $04, $06, $08, $07, $ff

    rst $38                                       ; $6fd5: $ff
    inc bc                                        ; $6fd6: $03
    ld [$0802], sp                                ; $6fd7: $08 $02 $08
    ld bc, $0908                                  ; $6fda: $01 $08 $09
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    ld bc, $090c                                  ; $6fdf: $01 $0c $09
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    add hl, bc                                    ; $6fe4: $09
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    cp [hl]                                       ; $6fe7: $be
    ld [hl+], a                                   ; $6fe8: $22
    rst $38                                       ; $6fe9: $ff
    ld l, e                                       ; $6fea: $6b
    rst $18                                       ; $6feb: $df
    jr jr_011_6fee                                ; $6fec: $18 $00

jr_011_6fee:
    nop                                           ; $6fee: $00
    ld a, a                                       ; $6fef: $7f
    ld [hl-], a                                   ; $6ff0: $32
    rst $18                                       ; $6ff1: $df
    ld e, a                                       ; $6ff2: $5f
    sbc a                                         ; $6ff3: $9f
    ld bc, $0000                                  ; $6ff4: $01 $00 $00
    sbc [hl]                                      ; $6ff7: $9e
    ld [hl+], a                                   ; $6ff8: $22
    rst $38                                       ; $6ff9: $ff
    ld l, e                                       ; $6ffa: $6b
    ld e, a                                       ; $6ffb: $5f
    ld bc, $0000                                  ; $6ffc: $01 $00 $00
    sbc [hl]                                      ; $6fff: $9e
    ld [hl+], a                                   ; $7000: $22
    rst $38                                       ; $7001: $ff
    ld l, e                                       ; $7002: $6b
    ld e, a                                       ; $7003: $5f
    ld bc, $0000                                  ; $7004: $01 $00 $00
    ld a, a                                       ; $7007: $7f
    ld [hl-], a                                   ; $7008: $32
    rst $38                                       ; $7009: $ff
    ld l, e                                       ; $700a: $6b
    rra                                           ; $700b: $1f
    ld [bc], a                                    ; $700c: $02
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    ccf                                           ; $700f: $3f
    ld c, d                                       ; $7010: $4a
    rst $38                                       ; $7011: $ff
    ld l, e                                       ; $7012: $6b
    rst $18                                       ; $7013: $df
    jr jr_011_7016                                ; $7014: $18 $00

jr_011_7016:
    nop                                           ; $7016: $00
    sbc [hl]                                      ; $7017: $9e
    ld [hl+], a                                   ; $7018: $22
    rst $38                                       ; $7019: $ff
    ld l, e                                       ; $701a: $6b
    ld e, a                                       ; $701b: $5f
    ld bc, $0000                                  ; $701c: $01 $00 $00
    ld e, $5e                                     ; $701f: $1e $5e
    rst $38                                       ; $7021: $ff
    ld l, e                                       ; $7022: $6b
    ret c                                         ; $7023: $d8

    ld a, h                                       ; $7024: $7c
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    ccf                                           ; $7027: $3f
    ld c, d                                       ; $7028: $4a
    rst $18                                       ; $7029: $df
    ld e, a                                       ; $702a: $5f
    rst $38                                       ; $702b: $ff
    jr nz, jr_011_702e                            ; $702c: $20 $00

jr_011_702e:
    nop                                           ; $702e: $00
    ld a, b                                       ; $702f: $78
    ld a, [hl-]                                   ; $7030: $3a
    rst $18                                       ; $7031: $df
    ld e, e                                       ; $7032: $5b
    add b                                         ; $7033: $80
    ld [de], a                                    ; $7034: $12
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    ld a, a                                       ; $7037: $7f
    ld [hl-], a                                   ; $7038: $32
    rst $18                                       ; $7039: $df
    ld e, a                                       ; $703a: $5f
    sbc a                                         ; $703b: $9f
    ld bc, $0000                                  ; $703c: $01 $00 $00
    ld d, l                                       ; $703f: $55
    ld [hl], b                                    ; $7040: $70
    ld l, d                                       ; $7041: $6a
    ld [hl], b                                    ; $7042: $70
    ld a, e                                       ; $7043: $7b
    ld [hl], b                                    ; $7044: $70
    adc h                                         ; $7045: $8c
    ld [hl], b                                    ; $7046: $70
    and l                                         ; $7047: $a5
    ld [hl], b                                    ; $7048: $70
    cp [hl]                                       ; $7049: $be
    ld [hl], b                                    ; $704a: $70
    db $d3                                        ; $704b: $d3
    ld [hl], b                                    ; $704c: $70
    db $e4                                        ; $704d: $e4
    ld [hl], b                                    ; $704e: $70
    ld sp, hl                                     ; $704f: $f9
    ld [hl], b                                    ; $7050: $70
    ld a, [bc]                                    ; $7051: $0a
    ld [hl], c                                    ; $7052: $71
    rra                                           ; $7053: $1f
    ld [hl], c                                    ; $7054: $71
    ld a, [c]                                     ; $7055: $f2
    di                                            ; $7056: $f3
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    ld [bc], a                                    ; $7059: $02
    di                                            ; $705a: $f3
    ld [bc], a                                    ; $705b: $02
    nop                                           ; $705c: $00
    ld a, [c]                                     ; $705d: $f2
    ei                                            ; $705e: $fb
    inc b                                         ; $705f: $04
    nop                                           ; $7060: $00
    ld [bc], a                                    ; $7061: $02
    ei                                            ; $7062: $fb
    ld b, $00                                     ; $7063: $06 $00
    ld [bc], a                                    ; $7065: $02
    inc bc                                        ; $7066: $03
    ld [$8000], sp                                ; $7067: $08 $00 $80
    ld a, [c]                                     ; $706a: $f2
    di                                            ; $706b: $f3
    nop                                           ; $706c: $00
    nop                                           ; $706d: $00
    ld [bc], a                                    ; $706e: $02
    di                                            ; $706f: $f3
    ld [bc], a                                    ; $7070: $02
    nop                                           ; $7071: $00
    ld a, [c]                                     ; $7072: $f2
    ei                                            ; $7073: $fb
    inc b                                         ; $7074: $04
    nop                                           ; $7075: $00
    ld [bc], a                                    ; $7076: $02
    ei                                            ; $7077: $fb
    ld b, $00                                     ; $7078: $06 $00
    add b                                         ; $707a: $80
    ld a, [c]                                     ; $707b: $f2
    di                                            ; $707c: $f3
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    ld [bc], a                                    ; $707f: $02
    di                                            ; $7080: $f3
    ld [bc], a                                    ; $7081: $02
    nop                                           ; $7082: $00
    ld a, [c]                                     ; $7083: $f2
    ei                                            ; $7084: $fb
    inc b                                         ; $7085: $04
    nop                                           ; $7086: $00
    ld [bc], a                                    ; $7087: $02
    ei                                            ; $7088: $fb
    ld b, $00                                     ; $7089: $06 $00
    add b                                         ; $708b: $80
    ld a, [c]                                     ; $708c: $f2
    db $eb                                        ; $708d: $eb
    nop                                           ; $708e: $00
    nop                                           ; $708f: $00
    ld [bc], a                                    ; $7090: $02
    db $eb                                        ; $7091: $eb
    ld [bc], a                                    ; $7092: $02
    nop                                           ; $7093: $00
    ld a, [c]                                     ; $7094: $f2
    di                                            ; $7095: $f3
    inc b                                         ; $7096: $04
    nop                                           ; $7097: $00
    ld [bc], a                                    ; $7098: $02
    di                                            ; $7099: $f3
    ld b, $00                                     ; $709a: $06 $00
    ld a, [c]                                     ; $709c: $f2
    ei                                            ; $709d: $fb
    ld [$0200], sp                                ; $709e: $08 $00 $02
    ei                                            ; $70a1: $fb
    ld a, [bc]                                    ; $70a2: $0a
    nop                                           ; $70a3: $00
    add b                                         ; $70a4: $80
    ld a, [c]                                     ; $70a5: $f2
    db $eb                                        ; $70a6: $eb
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    ld [bc], a                                    ; $70a9: $02
    db $eb                                        ; $70aa: $eb
    ld [bc], a                                    ; $70ab: $02
    nop                                           ; $70ac: $00
    ld a, [c]                                     ; $70ad: $f2
    di                                            ; $70ae: $f3
    inc b                                         ; $70af: $04
    nop                                           ; $70b0: $00
    ld [bc], a                                    ; $70b1: $02
    di                                            ; $70b2: $f3
    ld b, $00                                     ; $70b3: $06 $00
    ld a, [c]                                     ; $70b5: $f2
    ei                                            ; $70b6: $fb
    ld [$0200], sp                                ; $70b7: $08 $00 $02
    ei                                            ; $70ba: $fb
    ld a, [bc]                                    ; $70bb: $0a
    nop                                           ; $70bc: $00
    add b                                         ; $70bd: $80
    ld a, [c]                                     ; $70be: $f2
    di                                            ; $70bf: $f3
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    ld [bc], a                                    ; $70c2: $02
    di                                            ; $70c3: $f3
    ld [bc], a                                    ; $70c4: $02
    nop                                           ; $70c5: $00
    ld a, [c]                                     ; $70c6: $f2
    ei                                            ; $70c7: $fb
    inc b                                         ; $70c8: $04
    nop                                           ; $70c9: $00
    ld [bc], a                                    ; $70ca: $02
    ei                                            ; $70cb: $fb
    ld b, $00                                     ; $70cc: $06 $00
    ld [bc], a                                    ; $70ce: $02
    inc bc                                        ; $70cf: $03
    ld [$8000], sp                                ; $70d0: $08 $00 $80
    ld a, [c]                                     ; $70d3: $f2
    di                                            ; $70d4: $f3
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    ld [bc], a                                    ; $70d7: $02
    di                                            ; $70d8: $f3
    ld [bc], a                                    ; $70d9: $02
    nop                                           ; $70da: $00
    ld a, [c]                                     ; $70db: $f2
    ei                                            ; $70dc: $fb
    inc b                                         ; $70dd: $04
    nop                                           ; $70de: $00
    ld [bc], a                                    ; $70df: $02
    ei                                            ; $70e0: $fb
    ld b, $00                                     ; $70e1: $06 $00
    add b                                         ; $70e3: $80
    ld a, [c]                                     ; $70e4: $f2
    db $eb                                        ; $70e5: $eb
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    ld a, [c]                                     ; $70e8: $f2
    di                                            ; $70e9: $f3
    ld [bc], a                                    ; $70ea: $02
    nop                                           ; $70eb: $00
    ld [bc], a                                    ; $70ec: $02
    di                                            ; $70ed: $f3
    inc b                                         ; $70ee: $04
    nop                                           ; $70ef: $00
    ld a, [c]                                     ; $70f0: $f2
    ei                                            ; $70f1: $fb
    ld b, $00                                     ; $70f2: $06 $00
    ld [bc], a                                    ; $70f4: $02
    ei                                            ; $70f5: $fb
    ld [$8000], sp                                ; $70f6: $08 $00 $80
    ld a, [c]                                     ; $70f9: $f2
    di                                            ; $70fa: $f3
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    ld [bc], a                                    ; $70fd: $02
    di                                            ; $70fe: $f3
    ld [bc], a                                    ; $70ff: $02
    nop                                           ; $7100: $00
    ld a, [c]                                     ; $7101: $f2
    ei                                            ; $7102: $fb
    inc b                                         ; $7103: $04
    nop                                           ; $7104: $00
    ld [bc], a                                    ; $7105: $02
    ei                                            ; $7106: $fb
    ld b, $00                                     ; $7107: $06 $00
    add b                                         ; $7109: $80
    ld a, [c]                                     ; $710a: $f2
    di                                            ; $710b: $f3
    nop                                           ; $710c: $00
    nop                                           ; $710d: $00
    ld [bc], a                                    ; $710e: $02
    di                                            ; $710f: $f3
    ld [bc], a                                    ; $7110: $02
    nop                                           ; $7111: $00
    ld a, [c]                                     ; $7112: $f2
    ei                                            ; $7113: $fb
    inc b                                         ; $7114: $04
    nop                                           ; $7115: $00
    ld [bc], a                                    ; $7116: $02
    ei                                            ; $7117: $fb
    ld b, $00                                     ; $7118: $06 $00
    ld [bc], a                                    ; $711a: $02
    inc bc                                        ; $711b: $03
    ld [$8000], sp                                ; $711c: $08 $00 $80
    ld a, [c]                                     ; $711f: $f2
    di                                            ; $7120: $f3
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    ld [bc], a                                    ; $7123: $02
    di                                            ; $7124: $f3
    ld [bc], a                                    ; $7125: $02
    nop                                           ; $7126: $00
    ld a, [c]                                     ; $7127: $f2
    ei                                            ; $7128: $fb
    inc b                                         ; $7129: $04
    nop                                           ; $712a: $00
    ld [bc], a                                    ; $712b: $02
    ei                                            ; $712c: $fb
    ld b, $00                                     ; $712d: $06 $00
    ld [bc], a                                    ; $712f: $02
    inc bc                                        ; $7130: $03
    ld [$8000], sp                                ; $7131: $08 $00 $80
    ld c, d                                       ; $7134: $4a
    ld [hl], c                                    ; $7135: $71
    ld e, a                                       ; $7136: $5f
    ld [hl], c                                    ; $7137: $71
    ld [hl], b                                    ; $7138: $70
    ld [hl], c                                    ; $7139: $71
    add c                                         ; $713a: $81
    ld [hl], c                                    ; $713b: $71
    sub [hl]                                      ; $713c: $96
    ld [hl], c                                    ; $713d: $71
    xor e                                         ; $713e: $ab
    ld [hl], c                                    ; $713f: $71
    ret nz                                        ; $7140: $c0

    ld [hl], c                                    ; $7141: $71
    pop de                                        ; $7142: $d1
    ld [hl], c                                    ; $7143: $71
    and $71                                       ; $7144: $e6 $71
    rst $30                                       ; $7146: $f7
    ld [hl], c                                    ; $7147: $71
    inc c                                         ; $7148: $0c
    ld [hl], d                                    ; $7149: $72
    ld a, [c]                                     ; $714a: $f2
    di                                            ; $714b: $f3
    nop                                           ; $714c: $00
    nop                                           ; $714d: $00
    ld [bc], a                                    ; $714e: $02
    di                                            ; $714f: $f3
    ld [bc], a                                    ; $7150: $02
    nop                                           ; $7151: $00
    ld a, [c]                                     ; $7152: $f2
    ei                                            ; $7153: $fb
    inc b                                         ; $7154: $04
    nop                                           ; $7155: $00
    ld [bc], a                                    ; $7156: $02
    ei                                            ; $7157: $fb
    ld b, $00                                     ; $7158: $06 $00
    ld [bc], a                                    ; $715a: $02
    inc bc                                        ; $715b: $03
    ld [$8000], sp                                ; $715c: $08 $00 $80
    ld a, [c]                                     ; $715f: $f2
    di                                            ; $7160: $f3
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    ld [bc], a                                    ; $7163: $02
    di                                            ; $7164: $f3
    ld [bc], a                                    ; $7165: $02
    nop                                           ; $7166: $00
    ld a, [c]                                     ; $7167: $f2
    ei                                            ; $7168: $fb
    inc b                                         ; $7169: $04
    nop                                           ; $716a: $00
    ld [bc], a                                    ; $716b: $02
    ei                                            ; $716c: $fb
    ld b, $00                                     ; $716d: $06 $00
    add b                                         ; $716f: $80
    ld a, [c]                                     ; $7170: $f2
    di                                            ; $7171: $f3
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    ld [bc], a                                    ; $7174: $02
    di                                            ; $7175: $f3
    ld [bc], a                                    ; $7176: $02
    nop                                           ; $7177: $00
    ld a, [c]                                     ; $7178: $f2
    ei                                            ; $7179: $fb
    inc b                                         ; $717a: $04
    nop                                           ; $717b: $00
    ld [bc], a                                    ; $717c: $02
    ei                                            ; $717d: $fb
    ld b, $00                                     ; $717e: $06 $00
    add b                                         ; $7180: $80
    ld a, [c]                                     ; $7181: $f2
    db $eb                                        ; $7182: $eb
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    ld a, [c]                                     ; $7185: $f2
    di                                            ; $7186: $f3
    ld [bc], a                                    ; $7187: $02
    nop                                           ; $7188: $00
    ld [bc], a                                    ; $7189: $02
    di                                            ; $718a: $f3
    inc b                                         ; $718b: $04
    nop                                           ; $718c: $00
    ld a, [c]                                     ; $718d: $f2
    ei                                            ; $718e: $fb
    ld b, $00                                     ; $718f: $06 $00
    ld [bc], a                                    ; $7191: $02
    ei                                            ; $7192: $fb
    ld [$8000], sp                                ; $7193: $08 $00 $80
    ld a, [c]                                     ; $7196: $f2
    db $eb                                        ; $7197: $eb
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    ld a, [c]                                     ; $719a: $f2
    di                                            ; $719b: $f3
    ld [bc], a                                    ; $719c: $02
    nop                                           ; $719d: $00
    ld [bc], a                                    ; $719e: $02
    di                                            ; $719f: $f3
    inc b                                         ; $71a0: $04
    nop                                           ; $71a1: $00
    ld a, [c]                                     ; $71a2: $f2
    ei                                            ; $71a3: $fb
    ld b, $00                                     ; $71a4: $06 $00
    ld [bc], a                                    ; $71a6: $02
    ei                                            ; $71a7: $fb
    ld [$8000], sp                                ; $71a8: $08 $00 $80
    ld a, [c]                                     ; $71ab: $f2
    di                                            ; $71ac: $f3
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    ld [bc], a                                    ; $71af: $02
    di                                            ; $71b0: $f3
    ld [bc], a                                    ; $71b1: $02
    nop                                           ; $71b2: $00
    ld a, [c]                                     ; $71b3: $f2
    ei                                            ; $71b4: $fb
    inc b                                         ; $71b5: $04
    nop                                           ; $71b6: $00
    ld [bc], a                                    ; $71b7: $02
    ei                                            ; $71b8: $fb
    ld b, $00                                     ; $71b9: $06 $00
    ld [bc], a                                    ; $71bb: $02
    inc bc                                        ; $71bc: $03
    ld [$8000], sp                                ; $71bd: $08 $00 $80
    ld a, [c]                                     ; $71c0: $f2
    di                                            ; $71c1: $f3
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    ld [bc], a                                    ; $71c4: $02
    di                                            ; $71c5: $f3
    ld [bc], a                                    ; $71c6: $02
    nop                                           ; $71c7: $00
    ld a, [c]                                     ; $71c8: $f2
    ei                                            ; $71c9: $fb
    inc b                                         ; $71ca: $04
    nop                                           ; $71cb: $00
    ld [bc], a                                    ; $71cc: $02
    ei                                            ; $71cd: $fb
    ld b, $00                                     ; $71ce: $06 $00
    add b                                         ; $71d0: $80
    ld a, [c]                                     ; $71d1: $f2
    db $eb                                        ; $71d2: $eb
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    ld a, [c]                                     ; $71d5: $f2
    di                                            ; $71d6: $f3
    ld [bc], a                                    ; $71d7: $02
    nop                                           ; $71d8: $00
    ld [bc], a                                    ; $71d9: $02
    di                                            ; $71da: $f3
    inc b                                         ; $71db: $04
    nop                                           ; $71dc: $00
    ld a, [c]                                     ; $71dd: $f2
    ei                                            ; $71de: $fb
    ld b, $00                                     ; $71df: $06 $00
    ld [bc], a                                    ; $71e1: $02
    ei                                            ; $71e2: $fb
    ld [$8000], sp                                ; $71e3: $08 $00 $80
    ld a, [c]                                     ; $71e6: $f2
    di                                            ; $71e7: $f3
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    ld [bc], a                                    ; $71ea: $02
    di                                            ; $71eb: $f3
    ld [bc], a                                    ; $71ec: $02
    nop                                           ; $71ed: $00
    ld a, [c]                                     ; $71ee: $f2
    ei                                            ; $71ef: $fb
    inc b                                         ; $71f0: $04
    nop                                           ; $71f1: $00
    ld [bc], a                                    ; $71f2: $02
    ei                                            ; $71f3: $fb
    ld b, $00                                     ; $71f4: $06 $00
    add b                                         ; $71f6: $80
    ld a, [c]                                     ; $71f7: $f2
    di                                            ; $71f8: $f3
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    ld [bc], a                                    ; $71fb: $02
    di                                            ; $71fc: $f3
    ld [bc], a                                    ; $71fd: $02
    nop                                           ; $71fe: $00
    ld a, [c]                                     ; $71ff: $f2
    ei                                            ; $7200: $fb
    inc b                                         ; $7201: $04
    nop                                           ; $7202: $00
    ld [bc], a                                    ; $7203: $02
    ei                                            ; $7204: $fb
    ld b, $00                                     ; $7205: $06 $00
    ld [bc], a                                    ; $7207: $02
    inc bc                                        ; $7208: $03
    ld [$8000], sp                                ; $7209: $08 $00 $80
    ld a, [c]                                     ; $720c: $f2
    di                                            ; $720d: $f3
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    ld [bc], a                                    ; $7210: $02
    di                                            ; $7211: $f3
    ld [bc], a                                    ; $7212: $02
    nop                                           ; $7213: $00
    ld a, [c]                                     ; $7214: $f2
    ei                                            ; $7215: $fb
    inc b                                         ; $7216: $04
    nop                                           ; $7217: $00
    ld [bc], a                                    ; $7218: $02
    ei                                            ; $7219: $fb
    ld b, $00                                     ; $721a: $06 $00
    ld [bc], a                                    ; $721c: $02
    inc bc                                        ; $721d: $03
    ld [$8000], sp                                ; $721e: $08 $00 $80

    db $37, $72, $4c, $72, $5d, $72, $6e, $72, $87, $72, $9c, $72, $b5, $72, $ca, $72
    db $df, $72, $f0, $72, $05, $73, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb
    db $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $f3, $00, $00, $02
    db $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2, $f3, $00, $00
    db $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2, $eb, $00
    db $00, $02, $eb, $02, $00, $f2, $f3, $04, $00, $02, $f3, $06, $00, $f2, $fb, $08
    db $00, $02, $fb, $0a, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3
    db $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2, $f3, $00, $00, $02
    db $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $02
    db $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02
    db $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2, $f3
    db $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2
    db $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02
    db $03, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $f2, $03, $08, $00, $02, $03, $0a, $00, $80

    inc [hl]                                      ; $731e: $34
    ld [hl], e                                    ; $731f: $73
    ld c, l                                       ; $7320: $4d
    ld [hl], e                                    ; $7321: $73
    ld h, d                                       ; $7322: $62
    ld [hl], e                                    ; $7323: $73
    ld [hl], a                                    ; $7324: $77
    ld [hl], e                                    ; $7325: $73
    sub b                                         ; $7326: $90
    ld [hl], e                                    ; $7327: $73
    xor c                                         ; $7328: $a9
    ld [hl], e                                    ; $7329: $73
    jp nz, $d773                                  ; $732a: $c2 $73 $d7

    ld [hl], e                                    ; $732d: $73
    ldh a, [$73]                                  ; $732e: $f0 $73
    ld bc, $1a74                                  ; $7330: $01 $74 $1a
    ld [hl], h                                    ; $7333: $74
    ld a, [c]                                     ; $7334: $f2
    di                                            ; $7335: $f3
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    ld [bc], a                                    ; $7338: $02
    di                                            ; $7339: $f3
    ld [bc], a                                    ; $733a: $02
    nop                                           ; $733b: $00
    ld a, [c]                                     ; $733c: $f2
    ei                                            ; $733d: $fb
    inc b                                         ; $733e: $04
    nop                                           ; $733f: $00
    ld [bc], a                                    ; $7340: $02
    ei                                            ; $7341: $fb
    ld b, $00                                     ; $7342: $06 $00
    ld a, [c]                                     ; $7344: $f2
    inc bc                                        ; $7345: $03
    ld [$0200], sp                                ; $7346: $08 $00 $02
    inc bc                                        ; $7349: $03
    ld a, [bc]                                    ; $734a: $0a
    nop                                           ; $734b: $00
    add b                                         ; $734c: $80
    ld a, [c]                                     ; $734d: $f2
    di                                            ; $734e: $f3
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    ld [bc], a                                    ; $7351: $02
    di                                            ; $7352: $f3
    ld [bc], a                                    ; $7353: $02
    nop                                           ; $7354: $00
    ld a, [c]                                     ; $7355: $f2
    ei                                            ; $7356: $fb
    inc b                                         ; $7357: $04
    nop                                           ; $7358: $00
    ld [bc], a                                    ; $7359: $02
    ei                                            ; $735a: $fb
    ld b, $00                                     ; $735b: $06 $00
    ld a, [c]                                     ; $735d: $f2
    inc bc                                        ; $735e: $03
    ld [$8000], sp                                ; $735f: $08 $00 $80
    ld a, [c]                                     ; $7362: $f2
    di                                            ; $7363: $f3
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    ld [bc], a                                    ; $7366: $02
    di                                            ; $7367: $f3
    ld [bc], a                                    ; $7368: $02
    nop                                           ; $7369: $00
    ld a, [c]                                     ; $736a: $f2
    ei                                            ; $736b: $fb
    inc b                                         ; $736c: $04
    nop                                           ; $736d: $00
    ld [bc], a                                    ; $736e: $02
    ei                                            ; $736f: $fb
    ld b, $00                                     ; $7370: $06 $00
    ld a, [c]                                     ; $7372: $f2
    inc bc                                        ; $7373: $03
    ld [$8000], sp                                ; $7374: $08 $00 $80
    ld a, [c]                                     ; $7377: $f2
    db $eb                                        ; $7378: $eb
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    ld a, [c]                                     ; $737b: $f2
    di                                            ; $737c: $f3
    ld [bc], a                                    ; $737d: $02
    nop                                           ; $737e: $00
    ld [bc], a                                    ; $737f: $02
    di                                            ; $7380: $f3
    inc b                                         ; $7381: $04
    nop                                           ; $7382: $00
    ld a, [c]                                     ; $7383: $f2
    ei                                            ; $7384: $fb
    ld b, $00                                     ; $7385: $06 $00
    ld [bc], a                                    ; $7387: $02
    ei                                            ; $7388: $fb
    ld [$f200], sp                                ; $7389: $08 $00 $f2
    inc bc                                        ; $738c: $03
    ld a, [bc]                                    ; $738d: $0a
    nop                                           ; $738e: $00
    add b                                         ; $738f: $80
    ld a, [c]                                     ; $7390: $f2
    db $eb                                        ; $7391: $eb
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    ld a, [c]                                     ; $7394: $f2
    di                                            ; $7395: $f3
    ld [bc], a                                    ; $7396: $02
    nop                                           ; $7397: $00
    ld [bc], a                                    ; $7398: $02
    di                                            ; $7399: $f3
    inc b                                         ; $739a: $04
    nop                                           ; $739b: $00
    ld a, [c]                                     ; $739c: $f2
    ei                                            ; $739d: $fb
    ld b, $00                                     ; $739e: $06 $00
    ld [bc], a                                    ; $73a0: $02
    ei                                            ; $73a1: $fb
    ld [$f200], sp                                ; $73a2: $08 $00 $f2
    inc bc                                        ; $73a5: $03
    ld a, [bc]                                    ; $73a6: $0a
    nop                                           ; $73a7: $00
    add b                                         ; $73a8: $80
    ld a, [c]                                     ; $73a9: $f2
    di                                            ; $73aa: $f3
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    ld [bc], a                                    ; $73ad: $02
    di                                            ; $73ae: $f3
    ld [bc], a                                    ; $73af: $02
    nop                                           ; $73b0: $00
    ld a, [c]                                     ; $73b1: $f2
    ei                                            ; $73b2: $fb
    inc b                                         ; $73b3: $04
    nop                                           ; $73b4: $00
    ld [bc], a                                    ; $73b5: $02
    ei                                            ; $73b6: $fb
    ld b, $00                                     ; $73b7: $06 $00
    ld a, [c]                                     ; $73b9: $f2
    inc bc                                        ; $73ba: $03
    ld [$0200], sp                                ; $73bb: $08 $00 $02
    inc bc                                        ; $73be: $03
    ld a, [bc]                                    ; $73bf: $0a
    nop                                           ; $73c0: $00
    add b                                         ; $73c1: $80
    ld a, [c]                                     ; $73c2: $f2
    di                                            ; $73c3: $f3
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    ld [bc], a                                    ; $73c6: $02
    di                                            ; $73c7: $f3
    ld [bc], a                                    ; $73c8: $02
    nop                                           ; $73c9: $00
    ld a, [c]                                     ; $73ca: $f2
    ei                                            ; $73cb: $fb
    inc b                                         ; $73cc: $04
    nop                                           ; $73cd: $00
    ld [bc], a                                    ; $73ce: $02
    ei                                            ; $73cf: $fb
    ld b, $00                                     ; $73d0: $06 $00
    ld a, [c]                                     ; $73d2: $f2
    inc bc                                        ; $73d3: $03
    ld [$8000], sp                                ; $73d4: $08 $00 $80
    ld a, [c]                                     ; $73d7: $f2
    db $eb                                        ; $73d8: $eb
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    ld a, [c]                                     ; $73db: $f2
    di                                            ; $73dc: $f3
    ld [bc], a                                    ; $73dd: $02
    nop                                           ; $73de: $00
    ld [bc], a                                    ; $73df: $02
    di                                            ; $73e0: $f3
    inc b                                         ; $73e1: $04
    nop                                           ; $73e2: $00
    ld a, [c]                                     ; $73e3: $f2
    ei                                            ; $73e4: $fb
    ld b, $00                                     ; $73e5: $06 $00
    ld [bc], a                                    ; $73e7: $02
    ei                                            ; $73e8: $fb
    ld [$f200], sp                                ; $73e9: $08 $00 $f2
    inc bc                                        ; $73ec: $03
    ld a, [bc]                                    ; $73ed: $0a
    nop                                           ; $73ee: $00
    add b                                         ; $73ef: $80
    ld a, [c]                                     ; $73f0: $f2
    di                                            ; $73f1: $f3
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    ld [bc], a                                    ; $73f4: $02
    di                                            ; $73f5: $f3
    ld [bc], a                                    ; $73f6: $02
    nop                                           ; $73f7: $00
    ld a, [c]                                     ; $73f8: $f2
    ei                                            ; $73f9: $fb
    inc b                                         ; $73fa: $04
    nop                                           ; $73fb: $00
    ld [bc], a                                    ; $73fc: $02
    ei                                            ; $73fd: $fb
    ld b, $00                                     ; $73fe: $06 $00
    add b                                         ; $7400: $80
    ld a, [c]                                     ; $7401: $f2
    di                                            ; $7402: $f3
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    ld [bc], a                                    ; $7405: $02
    di                                            ; $7406: $f3
    ld [bc], a                                    ; $7407: $02
    nop                                           ; $7408: $00
    ld a, [c]                                     ; $7409: $f2
    ei                                            ; $740a: $fb
    inc b                                         ; $740b: $04
    nop                                           ; $740c: $00
    ld [bc], a                                    ; $740d: $02
    ei                                            ; $740e: $fb
    ld b, $00                                     ; $740f: $06 $00
    ld a, [c]                                     ; $7411: $f2
    inc bc                                        ; $7412: $03
    ld [$0200], sp                                ; $7413: $08 $00 $02
    inc bc                                        ; $7416: $03
    ld a, [bc]                                    ; $7417: $0a
    nop                                           ; $7418: $00
    add b                                         ; $7419: $80
    ld a, [c]                                     ; $741a: $f2
    di                                            ; $741b: $f3
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    ld [bc], a                                    ; $741e: $02
    di                                            ; $741f: $f3
    ld [bc], a                                    ; $7420: $02
    nop                                           ; $7421: $00
    ld a, [c]                                     ; $7422: $f2
    ei                                            ; $7423: $fb
    inc b                                         ; $7424: $04
    nop                                           ; $7425: $00
    ld [bc], a                                    ; $7426: $02
    ei                                            ; $7427: $fb
    ld b, $00                                     ; $7428: $06 $00
    ld a, [c]                                     ; $742a: $f2
    inc bc                                        ; $742b: $03
    ld [$0200], sp                                ; $742c: $08 $00 $02
    inc bc                                        ; $742f: $03
    ld a, [bc]                                    ; $7430: $0a
    nop                                           ; $7431: $00
    add b                                         ; $7432: $80
    ld c, c                                       ; $7433: $49
    ld [hl], h                                    ; $7434: $74
    ld e, [hl]                                    ; $7435: $5e
    ld [hl], h                                    ; $7436: $74
    ld l, a                                       ; $7437: $6f
    ld [hl], h                                    ; $7438: $74
    add h                                         ; $7439: $84
    ld [hl], h                                    ; $743a: $74
    sbc l                                         ; $743b: $9d
    ld [hl], h                                    ; $743c: $74
    or d                                          ; $743d: $b2
    ld [hl], h                                    ; $743e: $74
    rst $00                                       ; $743f: $c7
    ld [hl], h                                    ; $7440: $74
    ret c                                         ; $7441: $d8

    ld [hl], h                                    ; $7442: $74
    db $ed                                        ; $7443: $ed
    ld [hl], h                                    ; $7444: $74
    ld [bc], a                                    ; $7445: $02
    ld [hl], l                                    ; $7446: $75
    rla                                           ; $7447: $17
    ld [hl], l                                    ; $7448: $75
    ld a, [c]                                     ; $7449: $f2
    di                                            ; $744a: $f3
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    ld [bc], a                                    ; $744d: $02
    di                                            ; $744e: $f3
    ld [bc], a                                    ; $744f: $02
    nop                                           ; $7450: $00
    ld a, [c]                                     ; $7451: $f2
    ei                                            ; $7452: $fb
    inc b                                         ; $7453: $04
    nop                                           ; $7454: $00
    ld [bc], a                                    ; $7455: $02
    ei                                            ; $7456: $fb
    ld b, $00                                     ; $7457: $06 $00
    ld [bc], a                                    ; $7459: $02
    inc bc                                        ; $745a: $03
    ld [$8000], sp                                ; $745b: $08 $00 $80
    ld a, [c]                                     ; $745e: $f2
    di                                            ; $745f: $f3
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    ld [bc], a                                    ; $7462: $02
    di                                            ; $7463: $f3
    ld [bc], a                                    ; $7464: $02
    nop                                           ; $7465: $00
    ld a, [c]                                     ; $7466: $f2
    ei                                            ; $7467: $fb
    inc b                                         ; $7468: $04
    nop                                           ; $7469: $00
    ld [bc], a                                    ; $746a: $02
    ei                                            ; $746b: $fb
    ld b, $00                                     ; $746c: $06 $00
    add b                                         ; $746e: $80
    ld a, [c]                                     ; $746f: $f2
    db $eb                                        ; $7470: $eb
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    ld a, [c]                                     ; $7473: $f2
    di                                            ; $7474: $f3
    ld [bc], a                                    ; $7475: $02
    nop                                           ; $7476: $00
    ld [bc], a                                    ; $7477: $02
    di                                            ; $7478: $f3
    inc b                                         ; $7479: $04
    nop                                           ; $747a: $00
    ld a, [c]                                     ; $747b: $f2
    ei                                            ; $747c: $fb
    ld b, $00                                     ; $747d: $06 $00
    ld [bc], a                                    ; $747f: $02
    ei                                            ; $7480: $fb
    ld [$8000], sp                                ; $7481: $08 $00 $80
    ld a, [c]                                     ; $7484: $f2
    db $eb                                        ; $7485: $eb
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    ld [bc], a                                    ; $7488: $02
    db $eb                                        ; $7489: $eb
    ld [bc], a                                    ; $748a: $02
    nop                                           ; $748b: $00
    ld a, [c]                                     ; $748c: $f2
    di                                            ; $748d: $f3
    inc b                                         ; $748e: $04
    nop                                           ; $748f: $00
    ld [bc], a                                    ; $7490: $02
    di                                            ; $7491: $f3
    ld b, $00                                     ; $7492: $06 $00
    ld a, [c]                                     ; $7494: $f2
    ei                                            ; $7495: $fb
    ld [$0200], sp                                ; $7496: $08 $00 $02
    ei                                            ; $7499: $fb
    ld a, [bc]                                    ; $749a: $0a
    nop                                           ; $749b: $00
    add b                                         ; $749c: $80
    ld a, [c]                                     ; $749d: $f2
    db $eb                                        ; $749e: $eb
    nop                                           ; $749f: $00
    nop                                           ; $74a0: $00
    ld a, [c]                                     ; $74a1: $f2
    di                                            ; $74a2: $f3
    ld [bc], a                                    ; $74a3: $02
    nop                                           ; $74a4: $00
    ld [bc], a                                    ; $74a5: $02
    di                                            ; $74a6: $f3
    inc b                                         ; $74a7: $04
    nop                                           ; $74a8: $00
    ld a, [c]                                     ; $74a9: $f2
    ei                                            ; $74aa: $fb
    ld b, $00                                     ; $74ab: $06 $00
    ld [bc], a                                    ; $74ad: $02
    ei                                            ; $74ae: $fb
    ld [$8000], sp                                ; $74af: $08 $00 $80
    ld a, [c]                                     ; $74b2: $f2
    di                                            ; $74b3: $f3
    nop                                           ; $74b4: $00
    nop                                           ; $74b5: $00
    ld [bc], a                                    ; $74b6: $02
    di                                            ; $74b7: $f3
    ld [bc], a                                    ; $74b8: $02
    nop                                           ; $74b9: $00
    ld a, [c]                                     ; $74ba: $f2
    ei                                            ; $74bb: $fb
    inc b                                         ; $74bc: $04
    nop                                           ; $74bd: $00
    ld [bc], a                                    ; $74be: $02
    ei                                            ; $74bf: $fb
    ld b, $00                                     ; $74c0: $06 $00
    ld [bc], a                                    ; $74c2: $02
    inc bc                                        ; $74c3: $03
    ld [$8000], sp                                ; $74c4: $08 $00 $80
    ld a, [c]                                     ; $74c7: $f2
    di                                            ; $74c8: $f3
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    ld [bc], a                                    ; $74cb: $02
    di                                            ; $74cc: $f3
    ld [bc], a                                    ; $74cd: $02
    nop                                           ; $74ce: $00
    ld a, [c]                                     ; $74cf: $f2
    ei                                            ; $74d0: $fb
    inc b                                         ; $74d1: $04
    nop                                           ; $74d2: $00
    ld [bc], a                                    ; $74d3: $02
    ei                                            ; $74d4: $fb
    ld b, $00                                     ; $74d5: $06 $00
    add b                                         ; $74d7: $80
    ld a, [c]                                     ; $74d8: $f2
    db $eb                                        ; $74d9: $eb
    nop                                           ; $74da: $00
    nop                                           ; $74db: $00
    ld a, [c]                                     ; $74dc: $f2
    di                                            ; $74dd: $f3
    ld [bc], a                                    ; $74de: $02
    nop                                           ; $74df: $00
    ld [bc], a                                    ; $74e0: $02
    di                                            ; $74e1: $f3
    inc b                                         ; $74e2: $04
    nop                                           ; $74e3: $00
    ld a, [c]                                     ; $74e4: $f2
    ei                                            ; $74e5: $fb
    ld b, $00                                     ; $74e6: $06 $00
    ld [bc], a                                    ; $74e8: $02
    ei                                            ; $74e9: $fb
    ld [$8000], sp                                ; $74ea: $08 $00 $80
    ld a, [c]                                     ; $74ed: $f2
    db $eb                                        ; $74ee: $eb
    nop                                           ; $74ef: $00
    nop                                           ; $74f0: $00
    ld a, [c]                                     ; $74f1: $f2
    di                                            ; $74f2: $f3
    ld [bc], a                                    ; $74f3: $02
    nop                                           ; $74f4: $00
    ld [bc], a                                    ; $74f5: $02
    di                                            ; $74f6: $f3
    inc b                                         ; $74f7: $04
    nop                                           ; $74f8: $00
    ld a, [c]                                     ; $74f9: $f2
    ei                                            ; $74fa: $fb
    ld b, $00                                     ; $74fb: $06 $00
    ld [bc], a                                    ; $74fd: $02
    ei                                            ; $74fe: $fb
    ld [$8000], sp                                ; $74ff: $08 $00 $80
    ld a, [c]                                     ; $7502: $f2
    di                                            ; $7503: $f3
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    ld [bc], a                                    ; $7506: $02
    di                                            ; $7507: $f3
    ld [bc], a                                    ; $7508: $02
    nop                                           ; $7509: $00
    ld a, [c]                                     ; $750a: $f2
    ei                                            ; $750b: $fb
    inc b                                         ; $750c: $04
    nop                                           ; $750d: $00
    ld [bc], a                                    ; $750e: $02
    ei                                            ; $750f: $fb
    ld b, $00                                     ; $7510: $06 $00
    ld [bc], a                                    ; $7512: $02
    inc bc                                        ; $7513: $03
    ld [$8000], sp                                ; $7514: $08 $00 $80
    ld a, [c]                                     ; $7517: $f2
    di                                            ; $7518: $f3
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    ld [bc], a                                    ; $751b: $02
    di                                            ; $751c: $f3
    ld [bc], a                                    ; $751d: $02
    nop                                           ; $751e: $00
    ld a, [c]                                     ; $751f: $f2
    ei                                            ; $7520: $fb
    inc b                                         ; $7521: $04
    nop                                           ; $7522: $00
    ld [bc], a                                    ; $7523: $02
    ei                                            ; $7524: $fb
    ld b, $00                                     ; $7525: $06 $00
    ld [bc], a                                    ; $7527: $02
    inc bc                                        ; $7528: $03
    ld [$8000], sp                                ; $7529: $08 $00 $80
    ld b, d                                       ; $752c: $42
    ld [hl], l                                    ; $752d: $75
    ld e, e                                       ; $752e: $5b
    ld [hl], l                                    ; $752f: $75
    ld [hl], b                                    ; $7530: $70
    ld [hl], l                                    ; $7531: $75
    add l                                         ; $7532: $85
    ld [hl], l                                    ; $7533: $75
    sbc d                                         ; $7534: $9a
    ld [hl], l                                    ; $7535: $75
    or e                                          ; $7536: $b3
    ld [hl], l                                    ; $7537: $75
    call z, $e575                                 ; $7538: $cc $75 $e5
    ld [hl], l                                    ; $753b: $75
    cp $75                                        ; $753c: $fe $75
    inc de                                        ; $753e: $13
    halt                                          ; $753f: $76
    inc l                                         ; $7540: $2c
    halt                                          ; $7541: $76
    ld a, [c]                                     ; $7542: $f2
    di                                            ; $7543: $f3
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    ld [bc], a                                    ; $7546: $02
    di                                            ; $7547: $f3
    ld [bc], a                                    ; $7548: $02
    nop                                           ; $7549: $00
    ld a, [c]                                     ; $754a: $f2
    ei                                            ; $754b: $fb
    inc b                                         ; $754c: $04
    nop                                           ; $754d: $00
    ld [bc], a                                    ; $754e: $02
    ei                                            ; $754f: $fb
    ld b, $00                                     ; $7550: $06 $00
    ld a, [c]                                     ; $7552: $f2
    inc bc                                        ; $7553: $03
    ld [$0200], sp                                ; $7554: $08 $00 $02
    inc bc                                        ; $7557: $03
    ld a, [bc]                                    ; $7558: $0a
    nop                                           ; $7559: $00
    add b                                         ; $755a: $80
    ld a, [c]                                     ; $755b: $f2
    di                                            ; $755c: $f3
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    ld [bc], a                                    ; $755f: $02
    di                                            ; $7560: $f3
    ld [bc], a                                    ; $7561: $02
    nop                                           ; $7562: $00
    ld a, [c]                                     ; $7563: $f2
    ei                                            ; $7564: $fb
    inc b                                         ; $7565: $04
    nop                                           ; $7566: $00
    ld [bc], a                                    ; $7567: $02
    ei                                            ; $7568: $fb
    ld b, $00                                     ; $7569: $06 $00
    ld a, [c]                                     ; $756b: $f2
    inc bc                                        ; $756c: $03
    ld [$8000], sp                                ; $756d: $08 $00 $80
    ld a, [c]                                     ; $7570: $f2
    di                                            ; $7571: $f3
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    ld [bc], a                                    ; $7574: $02
    di                                            ; $7575: $f3
    ld [bc], a                                    ; $7576: $02
    nop                                           ; $7577: $00
    ld a, [c]                                     ; $7578: $f2
    ei                                            ; $7579: $fb
    inc b                                         ; $757a: $04
    nop                                           ; $757b: $00
    ld [bc], a                                    ; $757c: $02
    ei                                            ; $757d: $fb
    ld b, $00                                     ; $757e: $06 $00
    ld a, [c]                                     ; $7580: $f2
    inc bc                                        ; $7581: $03
    ld [$8000], sp                                ; $7582: $08 $00 $80
    ld a, [c]                                     ; $7585: $f2
    di                                            ; $7586: $f3
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    ld [bc], a                                    ; $7589: $02
    di                                            ; $758a: $f3
    ld [bc], a                                    ; $758b: $02
    nop                                           ; $758c: $00
    ld a, [c]                                     ; $758d: $f2
    ei                                            ; $758e: $fb
    inc b                                         ; $758f: $04
    nop                                           ; $7590: $00
    ld [bc], a                                    ; $7591: $02
    ei                                            ; $7592: $fb
    ld b, $00                                     ; $7593: $06 $00
    ld a, [c]                                     ; $7595: $f2
    inc bc                                        ; $7596: $03
    ld [$8000], sp                                ; $7597: $08 $00 $80
    ld a, [c]                                     ; $759a: $f2
    db $eb                                        ; $759b: $eb
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    ld a, [c]                                     ; $759e: $f2
    di                                            ; $759f: $f3
    ld [bc], a                                    ; $75a0: $02
    nop                                           ; $75a1: $00
    ld [bc], a                                    ; $75a2: $02
    di                                            ; $75a3: $f3
    inc b                                         ; $75a4: $04
    nop                                           ; $75a5: $00
    ld a, [c]                                     ; $75a6: $f2
    ei                                            ; $75a7: $fb
    ld b, $00                                     ; $75a8: $06 $00
    ld [bc], a                                    ; $75aa: $02
    ei                                            ; $75ab: $fb
    ld [$f200], sp                                ; $75ac: $08 $00 $f2
    inc bc                                        ; $75af: $03
    ld a, [bc]                                    ; $75b0: $0a
    nop                                           ; $75b1: $00
    add b                                         ; $75b2: $80
    ld a, [c]                                     ; $75b3: $f2
    di                                            ; $75b4: $f3
    nop                                           ; $75b5: $00
    nop                                           ; $75b6: $00
    ld [bc], a                                    ; $75b7: $02
    di                                            ; $75b8: $f3
    ld [bc], a                                    ; $75b9: $02
    nop                                           ; $75ba: $00
    ld a, [c]                                     ; $75bb: $f2
    ei                                            ; $75bc: $fb
    inc b                                         ; $75bd: $04
    nop                                           ; $75be: $00
    ld [bc], a                                    ; $75bf: $02
    ei                                            ; $75c0: $fb
    ld b, $00                                     ; $75c1: $06 $00
    ld a, [c]                                     ; $75c3: $f2
    inc bc                                        ; $75c4: $03
    ld [$0200], sp                                ; $75c5: $08 $00 $02
    inc bc                                        ; $75c8: $03
    ld a, [bc]                                    ; $75c9: $0a
    nop                                           ; $75ca: $00
    add b                                         ; $75cb: $80
    ld a, [c]                                     ; $75cc: $f2
    di                                            ; $75cd: $f3
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    ld [bc], a                                    ; $75d0: $02
    di                                            ; $75d1: $f3
    ld [bc], a                                    ; $75d2: $02
    nop                                           ; $75d3: $00
    ld a, [c]                                     ; $75d4: $f2
    ei                                            ; $75d5: $fb
    inc b                                         ; $75d6: $04
    nop                                           ; $75d7: $00
    ld [bc], a                                    ; $75d8: $02
    ei                                            ; $75d9: $fb
    ld b, $00                                     ; $75da: $06 $00
    ld a, [c]                                     ; $75dc: $f2
    inc bc                                        ; $75dd: $03
    ld [$0200], sp                                ; $75de: $08 $00 $02
    inc bc                                        ; $75e1: $03
    ld a, [bc]                                    ; $75e2: $0a
    nop                                           ; $75e3: $00
    add b                                         ; $75e4: $80
    ld a, [c]                                     ; $75e5: $f2
    db $eb                                        ; $75e6: $eb
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    ld a, [c]                                     ; $75e9: $f2
    di                                            ; $75ea: $f3
    ld [bc], a                                    ; $75eb: $02
    nop                                           ; $75ec: $00
    ld [bc], a                                    ; $75ed: $02
    di                                            ; $75ee: $f3
    inc b                                         ; $75ef: $04
    nop                                           ; $75f0: $00
    ld a, [c]                                     ; $75f1: $f2
    ei                                            ; $75f2: $fb
    ld b, $00                                     ; $75f3: $06 $00
    ld [bc], a                                    ; $75f5: $02
    ei                                            ; $75f6: $fb
    ld [$f200], sp                                ; $75f7: $08 $00 $f2
    inc bc                                        ; $75fa: $03
    ld a, [bc]                                    ; $75fb: $0a
    nop                                           ; $75fc: $00
    add b                                         ; $75fd: $80
    ld a, [c]                                     ; $75fe: $f2
    di                                            ; $75ff: $f3
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    ld [bc], a                                    ; $7602: $02
    di                                            ; $7603: $f3
    ld [bc], a                                    ; $7604: $02
    nop                                           ; $7605: $00
    ld a, [c]                                     ; $7606: $f2
    ei                                            ; $7607: $fb
    inc b                                         ; $7608: $04
    nop                                           ; $7609: $00
    ld [bc], a                                    ; $760a: $02
    ei                                            ; $760b: $fb
    ld b, $00                                     ; $760c: $06 $00
    ld a, [c]                                     ; $760e: $f2
    inc bc                                        ; $760f: $03
    ld [$8000], sp                                ; $7610: $08 $00 $80
    ld a, [c]                                     ; $7613: $f2
    di                                            ; $7614: $f3
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    ld [bc], a                                    ; $7617: $02
    di                                            ; $7618: $f3
    ld [bc], a                                    ; $7619: $02
    nop                                           ; $761a: $00
    ld a, [c]                                     ; $761b: $f2
    ei                                            ; $761c: $fb
    inc b                                         ; $761d: $04
    nop                                           ; $761e: $00
    ld [bc], a                                    ; $761f: $02
    ei                                            ; $7620: $fb
    ld b, $00                                     ; $7621: $06 $00
    ld a, [c]                                     ; $7623: $f2
    inc bc                                        ; $7624: $03
    ld [$0200], sp                                ; $7625: $08 $00 $02
    inc bc                                        ; $7628: $03
    ld a, [bc]                                    ; $7629: $0a
    nop                                           ; $762a: $00
    add b                                         ; $762b: $80
    ld a, [c]                                     ; $762c: $f2
    di                                            ; $762d: $f3
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    ld [bc], a                                    ; $7630: $02
    di                                            ; $7631: $f3
    ld [bc], a                                    ; $7632: $02
    nop                                           ; $7633: $00
    ld a, [c]                                     ; $7634: $f2
    ei                                            ; $7635: $fb
    inc b                                         ; $7636: $04
    nop                                           ; $7637: $00
    ld [bc], a                                    ; $7638: $02
    ei                                            ; $7639: $fb
    ld b, $00                                     ; $763a: $06 $00
    ld a, [c]                                     ; $763c: $f2
    inc bc                                        ; $763d: $03
    ld [$0200], sp                                ; $763e: $08 $00 $02
    inc bc                                        ; $7641: $03
    ld a, [bc]                                    ; $7642: $0a
    nop                                           ; $7643: $00
    add b                                         ; $7644: $80
    ld e, e                                       ; $7645: $5b
    halt                                          ; $7646: $76
    ld [hl], h                                    ; $7647: $74
    halt                                          ; $7648: $76
    adc c                                         ; $7649: $89
    halt                                          ; $764a: $76
    sbc [hl]                                      ; $764b: $9e
    halt                                          ; $764c: $76
    or e                                          ; $764d: $b3
    halt                                          ; $764e: $76
    ret z                                         ; $764f: $c8

    halt                                          ; $7650: $76
    pop hl                                        ; $7651: $e1
    halt                                          ; $7652: $76
    or $76                                        ; $7653: $f6 $76
    dec bc                                        ; $7655: $0b
    ld [hl], a                                    ; $7656: $77
    jr nz, jr_011_76d0                            ; $7657: $20 $77

    add hl, sp                                    ; $7659: $39
    ld [hl], a                                    ; $765a: $77
    ld a, [c]                                     ; $765b: $f2
    di                                            ; $765c: $f3
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    ld [bc], a                                    ; $765f: $02
    di                                            ; $7660: $f3
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    ld a, [c]                                     ; $7663: $f2
    ei                                            ; $7664: $fb
    inc b                                         ; $7665: $04
    nop                                           ; $7666: $00
    ld [bc], a                                    ; $7667: $02
    ei                                            ; $7668: $fb
    ld b, $00                                     ; $7669: $06 $00
    ld a, [c]                                     ; $766b: $f2
    inc bc                                        ; $766c: $03
    ld [$0200], sp                                ; $766d: $08 $00 $02
    inc bc                                        ; $7670: $03
    ld a, [bc]                                    ; $7671: $0a
    nop                                           ; $7672: $00
    add b                                         ; $7673: $80
    ld a, [c]                                     ; $7674: $f2
    di                                            ; $7675: $f3
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    ld [bc], a                                    ; $7678: $02
    di                                            ; $7679: $f3
    ld [bc], a                                    ; $767a: $02
    nop                                           ; $767b: $00
    ld a, [c]                                     ; $767c: $f2
    ei                                            ; $767d: $fb
    inc b                                         ; $767e: $04
    nop                                           ; $767f: $00
    ld [bc], a                                    ; $7680: $02
    ei                                            ; $7681: $fb
    ld b, $00                                     ; $7682: $06 $00
    ld a, [c]                                     ; $7684: $f2
    inc bc                                        ; $7685: $03
    ld [$8000], sp                                ; $7686: $08 $00 $80
    ld a, [c]                                     ; $7689: $f2
    di                                            ; $768a: $f3
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    ld [bc], a                                    ; $768d: $02
    di                                            ; $768e: $f3
    ld [bc], a                                    ; $768f: $02
    nop                                           ; $7690: $00
    ld a, [c]                                     ; $7691: $f2
    ei                                            ; $7692: $fb
    inc b                                         ; $7693: $04
    nop                                           ; $7694: $00
    ld [bc], a                                    ; $7695: $02
    ei                                            ; $7696: $fb
    ld b, $00                                     ; $7697: $06 $00
    ld a, [c]                                     ; $7699: $f2
    inc bc                                        ; $769a: $03
    ld [$8000], sp                                ; $769b: $08 $00 $80
    ld a, [c]                                     ; $769e: $f2
    db $eb                                        ; $769f: $eb
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    ld a, [c]                                     ; $76a2: $f2
    di                                            ; $76a3: $f3
    ld [bc], a                                    ; $76a4: $02
    nop                                           ; $76a5: $00
    ld [bc], a                                    ; $76a6: $02
    di                                            ; $76a7: $f3
    inc b                                         ; $76a8: $04
    nop                                           ; $76a9: $00
    ld a, [c]                                     ; $76aa: $f2
    ei                                            ; $76ab: $fb
    ld b, $00                                     ; $76ac: $06 $00
    ld [bc], a                                    ; $76ae: $02
    ei                                            ; $76af: $fb
    ld [$8000], sp                                ; $76b0: $08 $00 $80
    ld a, [c]                                     ; $76b3: $f2
    db $eb                                        ; $76b4: $eb
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    ld a, [c]                                     ; $76b7: $f2
    di                                            ; $76b8: $f3
    ld [bc], a                                    ; $76b9: $02
    nop                                           ; $76ba: $00
    ld [bc], a                                    ; $76bb: $02
    di                                            ; $76bc: $f3
    inc b                                         ; $76bd: $04
    nop                                           ; $76be: $00
    ld a, [c]                                     ; $76bf: $f2
    ei                                            ; $76c0: $fb
    ld b, $00                                     ; $76c1: $06 $00
    ld [bc], a                                    ; $76c3: $02
    ei                                            ; $76c4: $fb
    ld [$8000], sp                                ; $76c5: $08 $00 $80
    ld a, [c]                                     ; $76c8: $f2
    di                                            ; $76c9: $f3
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    ld [bc], a                                    ; $76cc: $02
    di                                            ; $76cd: $f3
    ld [bc], a                                    ; $76ce: $02
    nop                                           ; $76cf: $00

jr_011_76d0:
    ld a, [c]                                     ; $76d0: $f2
    ei                                            ; $76d1: $fb
    inc b                                         ; $76d2: $04
    nop                                           ; $76d3: $00
    ld [bc], a                                    ; $76d4: $02
    ei                                            ; $76d5: $fb
    ld b, $00                                     ; $76d6: $06 $00
    ld a, [c]                                     ; $76d8: $f2
    inc bc                                        ; $76d9: $03
    ld [$0200], sp                                ; $76da: $08 $00 $02
    inc bc                                        ; $76dd: $03
    ld a, [bc]                                    ; $76de: $0a
    nop                                           ; $76df: $00
    add b                                         ; $76e0: $80
    ld a, [c]                                     ; $76e1: $f2
    di                                            ; $76e2: $f3
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    ld [bc], a                                    ; $76e5: $02
    di                                            ; $76e6: $f3
    ld [bc], a                                    ; $76e7: $02
    nop                                           ; $76e8: $00
    ld a, [c]                                     ; $76e9: $f2
    ei                                            ; $76ea: $fb
    inc b                                         ; $76eb: $04
    nop                                           ; $76ec: $00
    ld [bc], a                                    ; $76ed: $02
    ei                                            ; $76ee: $fb
    ld b, $00                                     ; $76ef: $06 $00
    ld [bc], a                                    ; $76f1: $02
    inc bc                                        ; $76f2: $03
    ld [$8000], sp                                ; $76f3: $08 $00 $80
    ld a, [c]                                     ; $76f6: $f2
    db $eb                                        ; $76f7: $eb
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    ld a, [c]                                     ; $76fa: $f2
    di                                            ; $76fb: $f3
    ld [bc], a                                    ; $76fc: $02
    nop                                           ; $76fd: $00
    ld [bc], a                                    ; $76fe: $02
    di                                            ; $76ff: $f3
    inc b                                         ; $7700: $04
    nop                                           ; $7701: $00
    ld a, [c]                                     ; $7702: $f2
    ei                                            ; $7703: $fb
    ld b, $00                                     ; $7704: $06 $00
    ld [bc], a                                    ; $7706: $02
    ei                                            ; $7707: $fb
    ld [$8000], sp                                ; $7708: $08 $00 $80
    ld a, [c]                                     ; $770b: $f2
    db $eb                                        ; $770c: $eb
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    ld a, [c]                                     ; $770f: $f2
    di                                            ; $7710: $f3
    ld [bc], a                                    ; $7711: $02
    nop                                           ; $7712: $00
    ld [bc], a                                    ; $7713: $02
    di                                            ; $7714: $f3
    inc b                                         ; $7715: $04
    nop                                           ; $7716: $00
    ld a, [c]                                     ; $7717: $f2
    ei                                            ; $7718: $fb
    ld b, $00                                     ; $7719: $06 $00
    ld [bc], a                                    ; $771b: $02
    ei                                            ; $771c: $fb
    ld [$8000], sp                                ; $771d: $08 $00 $80
    ld a, [c]                                     ; $7720: $f2
    di                                            ; $7721: $f3
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    ld [bc], a                                    ; $7724: $02
    di                                            ; $7725: $f3
    ld [bc], a                                    ; $7726: $02
    nop                                           ; $7727: $00
    ld a, [c]                                     ; $7728: $f2
    ei                                            ; $7729: $fb
    inc b                                         ; $772a: $04
    nop                                           ; $772b: $00
    ld [bc], a                                    ; $772c: $02
    ei                                            ; $772d: $fb
    ld b, $00                                     ; $772e: $06 $00
    ld a, [c]                                     ; $7730: $f2
    inc bc                                        ; $7731: $03
    ld [$0200], sp                                ; $7732: $08 $00 $02
    inc bc                                        ; $7735: $03
    ld a, [bc]                                    ; $7736: $0a
    nop                                           ; $7737: $00
    add b                                         ; $7738: $80
    ld a, [c]                                     ; $7739: $f2
    di                                            ; $773a: $f3
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    ld [bc], a                                    ; $773d: $02
    di                                            ; $773e: $f3
    ld [bc], a                                    ; $773f: $02
    nop                                           ; $7740: $00
    ld a, [c]                                     ; $7741: $f2
    ei                                            ; $7742: $fb
    inc b                                         ; $7743: $04
    nop                                           ; $7744: $00
    ld [bc], a                                    ; $7745: $02
    ei                                            ; $7746: $fb
    ld b, $00                                     ; $7747: $06 $00
    ld a, [c]                                     ; $7749: $f2
    inc bc                                        ; $774a: $03
    ld [$0200], sp                                ; $774b: $08 $00 $02
    inc bc                                        ; $774e: $03
    ld a, [bc]                                    ; $774f: $0a
    nop                                           ; $7750: $00
    add b                                         ; $7751: $80
    ld l, b                                       ; $7752: $68
    ld [hl], a                                    ; $7753: $77
    add c                                         ; $7754: $81
    ld [hl], a                                    ; $7755: $77
    sub [hl]                                      ; $7756: $96
    ld [hl], a                                    ; $7757: $77
    xor e                                         ; $7758: $ab
    ld [hl], a                                    ; $7759: $77
    call nz, $dd77                                ; $775a: $c4 $77 $dd
    ld [hl], a                                    ; $775d: $77
    or $77                                        ; $775e: $f6 $77
    rrca                                          ; $7760: $0f
    ld a, b                                       ; $7761: $78
    jr z, jr_011_77dc                             ; $7762: $28 $78

    dec a                                         ; $7764: $3d
    ld a, b                                       ; $7765: $78
    ld d, [hl]                                    ; $7766: $56
    ld a, b                                       ; $7767: $78
    ld a, [c]                                     ; $7768: $f2
    di                                            ; $7769: $f3
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    ld [bc], a                                    ; $776c: $02
    di                                            ; $776d: $f3
    ld [bc], a                                    ; $776e: $02
    nop                                           ; $776f: $00
    ld a, [c]                                     ; $7770: $f2
    ei                                            ; $7771: $fb
    inc b                                         ; $7772: $04
    nop                                           ; $7773: $00
    ld [bc], a                                    ; $7774: $02
    ei                                            ; $7775: $fb
    ld b, $00                                     ; $7776: $06 $00
    ld a, [c]                                     ; $7778: $f2
    inc bc                                        ; $7779: $03
    ld [$0200], sp                                ; $777a: $08 $00 $02
    inc bc                                        ; $777d: $03
    ld a, [bc]                                    ; $777e: $0a
    nop                                           ; $777f: $00
    add b                                         ; $7780: $80
    ld a, [c]                                     ; $7781: $f2
    di                                            ; $7782: $f3
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    ld [bc], a                                    ; $7785: $02
    di                                            ; $7786: $f3
    ld [bc], a                                    ; $7787: $02
    nop                                           ; $7788: $00
    ld a, [c]                                     ; $7789: $f2
    ei                                            ; $778a: $fb
    inc b                                         ; $778b: $04
    nop                                           ; $778c: $00
    ld [bc], a                                    ; $778d: $02
    ei                                            ; $778e: $fb
    ld b, $00                                     ; $778f: $06 $00
    ld a, [c]                                     ; $7791: $f2
    inc bc                                        ; $7792: $03
    ld [$8000], sp                                ; $7793: $08 $00 $80
    ld a, [c]                                     ; $7796: $f2
    di                                            ; $7797: $f3
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    ld [bc], a                                    ; $779a: $02
    di                                            ; $779b: $f3
    ld [bc], a                                    ; $779c: $02
    nop                                           ; $779d: $00
    ld a, [c]                                     ; $779e: $f2
    ei                                            ; $779f: $fb
    inc b                                         ; $77a0: $04
    nop                                           ; $77a1: $00
    ld [bc], a                                    ; $77a2: $02
    ei                                            ; $77a3: $fb
    ld b, $00                                     ; $77a4: $06 $00
    ld a, [c]                                     ; $77a6: $f2
    inc bc                                        ; $77a7: $03
    ld [$8000], sp                                ; $77a8: $08 $00 $80
    ld a, [c]                                     ; $77ab: $f2
    db $eb                                        ; $77ac: $eb
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    ld a, [c]                                     ; $77af: $f2
    di                                            ; $77b0: $f3
    ld [bc], a                                    ; $77b1: $02
    nop                                           ; $77b2: $00
    ld [bc], a                                    ; $77b3: $02
    di                                            ; $77b4: $f3
    inc b                                         ; $77b5: $04
    nop                                           ; $77b6: $00
    ld a, [c]                                     ; $77b7: $f2
    ei                                            ; $77b8: $fb
    ld b, $00                                     ; $77b9: $06 $00
    ld [bc], a                                    ; $77bb: $02
    ei                                            ; $77bc: $fb
    ld [$f200], sp                                ; $77bd: $08 $00 $f2
    inc bc                                        ; $77c0: $03
    ld a, [bc]                                    ; $77c1: $0a
    nop                                           ; $77c2: $00
    add b                                         ; $77c3: $80
    ld a, [c]                                     ; $77c4: $f2
    db $eb                                        ; $77c5: $eb
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    ld a, [c]                                     ; $77c8: $f2
    di                                            ; $77c9: $f3
    ld [bc], a                                    ; $77ca: $02
    nop                                           ; $77cb: $00
    ld [bc], a                                    ; $77cc: $02
    di                                            ; $77cd: $f3
    inc b                                         ; $77ce: $04
    nop                                           ; $77cf: $00
    ld a, [c]                                     ; $77d0: $f2
    ei                                            ; $77d1: $fb
    ld b, $00                                     ; $77d2: $06 $00
    ld [bc], a                                    ; $77d4: $02
    ei                                            ; $77d5: $fb
    ld [$f200], sp                                ; $77d6: $08 $00 $f2
    inc bc                                        ; $77d9: $03
    ld a, [bc]                                    ; $77da: $0a
    nop                                           ; $77db: $00

jr_011_77dc:
    add b                                         ; $77dc: $80
    ld a, [c]                                     ; $77dd: $f2
    di                                            ; $77de: $f3
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    ld [bc], a                                    ; $77e1: $02
    di                                            ; $77e2: $f3
    ld [bc], a                                    ; $77e3: $02
    nop                                           ; $77e4: $00
    ld a, [c]                                     ; $77e5: $f2
    ei                                            ; $77e6: $fb
    inc b                                         ; $77e7: $04
    nop                                           ; $77e8: $00
    ld [bc], a                                    ; $77e9: $02
    ei                                            ; $77ea: $fb
    ld b, $00                                     ; $77eb: $06 $00
    ld a, [c]                                     ; $77ed: $f2
    inc bc                                        ; $77ee: $03
    ld [$0200], sp                                ; $77ef: $08 $00 $02
    inc bc                                        ; $77f2: $03
    ld a, [bc]                                    ; $77f3: $0a
    nop                                           ; $77f4: $00
    add b                                         ; $77f5: $80
    ld a, [c]                                     ; $77f6: $f2
    di                                            ; $77f7: $f3
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    ld [bc], a                                    ; $77fa: $02
    di                                            ; $77fb: $f3
    ld [bc], a                                    ; $77fc: $02
    nop                                           ; $77fd: $00
    ld a, [c]                                     ; $77fe: $f2
    ei                                            ; $77ff: $fb
    inc b                                         ; $7800: $04
    nop                                           ; $7801: $00
    ld [bc], a                                    ; $7802: $02
    ei                                            ; $7803: $fb
    ld b, $00                                     ; $7804: $06 $00
    ld a, [c]                                     ; $7806: $f2
    inc bc                                        ; $7807: $03
    ld [$0200], sp                                ; $7808: $08 $00 $02
    inc bc                                        ; $780b: $03
    ld a, [bc]                                    ; $780c: $0a
    nop                                           ; $780d: $00
    add b                                         ; $780e: $80
    ld a, [c]                                     ; $780f: $f2
    db $eb                                        ; $7810: $eb
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    ld a, [c]                                     ; $7813: $f2
    di                                            ; $7814: $f3
    ld [bc], a                                    ; $7815: $02
    nop                                           ; $7816: $00
    ld [bc], a                                    ; $7817: $02
    di                                            ; $7818: $f3
    inc b                                         ; $7819: $04
    nop                                           ; $781a: $00
    ld a, [c]                                     ; $781b: $f2
    ei                                            ; $781c: $fb
    ld b, $00                                     ; $781d: $06 $00
    ld [bc], a                                    ; $781f: $02
    ei                                            ; $7820: $fb
    ld [$f200], sp                                ; $7821: $08 $00 $f2
    inc bc                                        ; $7824: $03
    ld a, [bc]                                    ; $7825: $0a
    nop                                           ; $7826: $00
    add b                                         ; $7827: $80
    ld a, [c]                                     ; $7828: $f2
    db $eb                                        ; $7829: $eb
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    ld a, [c]                                     ; $782c: $f2
    di                                            ; $782d: $f3
    ld [bc], a                                    ; $782e: $02
    nop                                           ; $782f: $00
    ld [bc], a                                    ; $7830: $02
    di                                            ; $7831: $f3
    inc b                                         ; $7832: $04
    nop                                           ; $7833: $00
    ld a, [c]                                     ; $7834: $f2
    ei                                            ; $7835: $fb
    ld b, $00                                     ; $7836: $06 $00
    ld [bc], a                                    ; $7838: $02
    ei                                            ; $7839: $fb
    ld [$8000], sp                                ; $783a: $08 $00 $80
    ld a, [c]                                     ; $783d: $f2
    di                                            ; $783e: $f3
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    ld [bc], a                                    ; $7841: $02
    di                                            ; $7842: $f3
    ld [bc], a                                    ; $7843: $02
    nop                                           ; $7844: $00
    ld a, [c]                                     ; $7845: $f2
    ei                                            ; $7846: $fb
    inc b                                         ; $7847: $04
    nop                                           ; $7848: $00
    ld [bc], a                                    ; $7849: $02
    ei                                            ; $784a: $fb
    ld b, $00                                     ; $784b: $06 $00
    ld a, [c]                                     ; $784d: $f2
    inc bc                                        ; $784e: $03
    ld [$0200], sp                                ; $784f: $08 $00 $02
    inc bc                                        ; $7852: $03
    ld a, [bc]                                    ; $7853: $0a
    nop                                           ; $7854: $00
    add b                                         ; $7855: $80
    ld a, [c]                                     ; $7856: $f2
    di                                            ; $7857: $f3
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    ld [bc], a                                    ; $785a: $02
    di                                            ; $785b: $f3
    ld [bc], a                                    ; $785c: $02
    nop                                           ; $785d: $00
    ld a, [c]                                     ; $785e: $f2
    ei                                            ; $785f: $fb
    inc b                                         ; $7860: $04
    nop                                           ; $7861: $00
    ld [bc], a                                    ; $7862: $02
    ei                                            ; $7863: $fb
    ld b, $00                                     ; $7864: $06 $00
    ld a, [c]                                     ; $7866: $f2
    inc bc                                        ; $7867: $03
    ld [$0200], sp                                ; $7868: $08 $00 $02
    inc bc                                        ; $786b: $03
    ld a, [bc]                                    ; $786c: $0a
    nop                                           ; $786d: $00
    add b                                         ; $786e: $80

    db $85, $78, $9e, $78, $b3, $78, $c8, $78, $e1, $78, $fa, $78

    inc de                                        ; $787b: $13
    ld a, c                                       ; $787c: $79

    db $28, $79, $41, $79

    ld d, [hl]                                    ; $7881: $56
    ld a, c                                       ; $7882: $79
    ld l, a                                       ; $7883: $6f
    ld a, c                                       ; $7884: $79

    db $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00
    db $f2, $03, $08, $00, $02, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02
    db $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $80, $f2, $f3
    db $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03
    db $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2
    db $fb, $06, $00, $02, $fb, $08, $00, $f2, $03, $0a, $00, $80, $f2, $eb, $00, $00
    db $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00
    db $f2, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04
    db $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $02, $03, $0a, $00, $80

    ld a, [c]                                     ; $7913: $f2
    di                                            ; $7914: $f3
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    ld [bc], a                                    ; $7917: $02
    di                                            ; $7918: $f3
    ld [bc], a                                    ; $7919: $02
    nop                                           ; $791a: $00
    ld a, [c]                                     ; $791b: $f2
    ei                                            ; $791c: $fb
    inc b                                         ; $791d: $04
    nop                                           ; $791e: $00
    ld [bc], a                                    ; $791f: $02
    ei                                            ; $7920: $fb
    ld b, $00                                     ; $7921: $06 $00
    ld a, [c]                                     ; $7923: $f2
    inc bc                                        ; $7924: $03
    ld [$8000], sp                                ; $7925: $08 $00 $80

    db $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00
    db $02, $fb, $08, $00, $f2, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02
    db $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $80

    ld a, [c]                                     ; $7956: $f2
    di                                            ; $7957: $f3
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    ld [bc], a                                    ; $795a: $02
    di                                            ; $795b: $f3
    ld [bc], a                                    ; $795c: $02
    nop                                           ; $795d: $00
    ld a, [c]                                     ; $795e: $f2
    ei                                            ; $795f: $fb
    inc b                                         ; $7960: $04
    nop                                           ; $7961: $00
    ld [bc], a                                    ; $7962: $02
    ei                                            ; $7963: $fb
    ld b, $00                                     ; $7964: $06 $00
    ld a, [c]                                     ; $7966: $f2
    inc bc                                        ; $7967: $03
    ld [$0200], sp                                ; $7968: $08 $00 $02
    inc bc                                        ; $796b: $03
    ld a, [bc]                                    ; $796c: $0a
    nop                                           ; $796d: $00
    add b                                         ; $796e: $80
    ld a, [c]                                     ; $796f: $f2
    di                                            ; $7970: $f3
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    ld [bc], a                                    ; $7973: $02
    di                                            ; $7974: $f3
    ld [bc], a                                    ; $7975: $02
    nop                                           ; $7976: $00
    ld a, [c]                                     ; $7977: $f2
    ei                                            ; $7978: $fb
    inc b                                         ; $7979: $04
    nop                                           ; $797a: $00
    ld [bc], a                                    ; $797b: $02
    ei                                            ; $797c: $fb
    ld b, $00                                     ; $797d: $06 $00
    ld a, [c]                                     ; $797f: $f2
    inc bc                                        ; $7980: $03
    ld [$0200], sp                                ; $7981: $08 $00 $02
    inc bc                                        ; $7984: $03
    ld a, [bc]                                    ; $7985: $0a
    nop                                           ; $7986: $00
    add b                                         ; $7987: $80

    db $9e, $79, $b3, $79, $c4, $79, $d9, $79, $f2, $79, $07, $7a, $1c, $7a, $2d, $7a
    db $42, $7a, $57, $7a, $6c, $7a, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb
    db $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $f3, $00, $00, $02
    db $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2, $eb, $00, $00
    db $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00
    db $80, $f2, $eb, $00, $00, $02, $eb, $02, $00, $f2, $f3, $04, $00, $02, $f3, $06
    db $00, $f2, $fb, $08, $00, $02, $fb, $0a, $00, $80, $f2, $eb, $00, $00, $f2, $f3
    db $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2
    db $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02
    db $03, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04
    db $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3
    db $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2
    db $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02
    db $03, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $02, $03, $08, $00, $80

    sub a                                         ; $7a81: $97
    ld a, d                                       ; $7a82: $7a
    or b                                          ; $7a83: $b0
    ld a, d                                       ; $7a84: $7a
    ret                                           ; $7a85: $c9


    ld a, d                                       ; $7a86: $7a
    ld [c], a                                     ; $7a87: $e2
    ld a, d                                       ; $7a88: $7a
    inc bc                                        ; $7a89: $03
    ld a, e                                       ; $7a8a: $7b
    jr nz, jr_011_7b08                            ; $7a8b: $20 $7b

    add hl, sp                                    ; $7a8d: $39
    ld a, e                                       ; $7a8e: $7b
    ld d, d                                       ; $7a8f: $52
    ld a, e                                       ; $7a90: $7b
    ld l, e                                       ; $7a91: $6b
    ld a, e                                       ; $7a92: $7b
    add h                                         ; $7a93: $84
    ld a, e                                       ; $7a94: $7b
    sbc l                                         ; $7a95: $9d
    ld a, e                                       ; $7a96: $7b
    ld a, [c]                                     ; $7a97: $f2
    di                                            ; $7a98: $f3
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    ld [bc], a                                    ; $7a9b: $02
    di                                            ; $7a9c: $f3
    ld [bc], a                                    ; $7a9d: $02
    nop                                           ; $7a9e: $00
    ld a, [c]                                     ; $7a9f: $f2
    ei                                            ; $7aa0: $fb
    inc b                                         ; $7aa1: $04
    nop                                           ; $7aa2: $00
    ld [bc], a                                    ; $7aa3: $02
    ei                                            ; $7aa4: $fb
    ld b, $00                                     ; $7aa5: $06 $00
    ld a, [c]                                     ; $7aa7: $f2
    inc bc                                        ; $7aa8: $03
    ld [$0200], sp                                ; $7aa9: $08 $00 $02
    inc bc                                        ; $7aac: $03
    ld a, [bc]                                    ; $7aad: $0a
    nop                                           ; $7aae: $00
    add b                                         ; $7aaf: $80
    ld a, [c]                                     ; $7ab0: $f2
    di                                            ; $7ab1: $f3
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    ld [bc], a                                    ; $7ab4: $02
    di                                            ; $7ab5: $f3
    ld [bc], a                                    ; $7ab6: $02
    nop                                           ; $7ab7: $00
    ld a, [c]                                     ; $7ab8: $f2
    ei                                            ; $7ab9: $fb
    inc b                                         ; $7aba: $04
    nop                                           ; $7abb: $00
    ld [bc], a                                    ; $7abc: $02
    ei                                            ; $7abd: $fb
    ld b, $00                                     ; $7abe: $06 $00
    ld a, [c]                                     ; $7ac0: $f2
    inc bc                                        ; $7ac1: $03
    ld [$0200], sp                                ; $7ac2: $08 $00 $02
    inc bc                                        ; $7ac5: $03
    ld a, [bc]                                    ; $7ac6: $0a
    nop                                           ; $7ac7: $00
    add b                                         ; $7ac8: $80
    ld a, [c]                                     ; $7ac9: $f2
    di                                            ; $7aca: $f3
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    ld [bc], a                                    ; $7acd: $02
    di                                            ; $7ace: $f3
    ld [bc], a                                    ; $7acf: $02
    nop                                           ; $7ad0: $00
    ld a, [c]                                     ; $7ad1: $f2
    ei                                            ; $7ad2: $fb
    inc b                                         ; $7ad3: $04
    nop                                           ; $7ad4: $00
    ld [bc], a                                    ; $7ad5: $02
    ei                                            ; $7ad6: $fb
    ld b, $00                                     ; $7ad7: $06 $00
    ld a, [c]                                     ; $7ad9: $f2
    inc bc                                        ; $7ada: $03
    ld [$0200], sp                                ; $7adb: $08 $00 $02
    inc bc                                        ; $7ade: $03
    ld a, [bc]                                    ; $7adf: $0a
    nop                                           ; $7ae0: $00
    add b                                         ; $7ae1: $80
    ld a, [c]                                     ; $7ae2: $f2
    db $eb                                        ; $7ae3: $eb
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    ld [bc], a                                    ; $7ae6: $02
    db $eb                                        ; $7ae7: $eb
    ld [bc], a                                    ; $7ae8: $02
    nop                                           ; $7ae9: $00
    ld a, [c]                                     ; $7aea: $f2
    di                                            ; $7aeb: $f3
    inc b                                         ; $7aec: $04
    nop                                           ; $7aed: $00
    ld [bc], a                                    ; $7aee: $02
    di                                            ; $7aef: $f3
    ld b, $00                                     ; $7af0: $06 $00
    ld a, [c]                                     ; $7af2: $f2
    ei                                            ; $7af3: $fb
    ld [$0200], sp                                ; $7af4: $08 $00 $02
    ei                                            ; $7af7: $fb
    ld a, [bc]                                    ; $7af8: $0a
    nop                                           ; $7af9: $00
    ld a, [c]                                     ; $7afa: $f2
    inc bc                                        ; $7afb: $03
    inc c                                         ; $7afc: $0c
    nop                                           ; $7afd: $00
    ld [bc], a                                    ; $7afe: $02
    inc bc                                        ; $7aff: $03
    ld c, $00                                     ; $7b00: $0e $00
    add b                                         ; $7b02: $80
    ld a, [c]                                     ; $7b03: $f2
    db $eb                                        ; $7b04: $eb
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    ld a, [c]                                     ; $7b07: $f2

jr_011_7b08:
    di                                            ; $7b08: $f3
    ld [bc], a                                    ; $7b09: $02
    nop                                           ; $7b0a: $00
    ld [bc], a                                    ; $7b0b: $02
    di                                            ; $7b0c: $f3
    inc b                                         ; $7b0d: $04
    nop                                           ; $7b0e: $00
    ld a, [c]                                     ; $7b0f: $f2
    ei                                            ; $7b10: $fb
    ld b, $00                                     ; $7b11: $06 $00
    ld [bc], a                                    ; $7b13: $02
    ei                                            ; $7b14: $fb
    ld [$f200], sp                                ; $7b15: $08 $00 $f2
    inc bc                                        ; $7b18: $03
    ld a, [bc]                                    ; $7b19: $0a
    nop                                           ; $7b1a: $00
    ld [bc], a                                    ; $7b1b: $02
    inc bc                                        ; $7b1c: $03
    inc c                                         ; $7b1d: $0c
    nop                                           ; $7b1e: $00
    add b                                         ; $7b1f: $80
    ld a, [c]                                     ; $7b20: $f2
    di                                            ; $7b21: $f3
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    ld [bc], a                                    ; $7b24: $02
    di                                            ; $7b25: $f3
    ld [bc], a                                    ; $7b26: $02
    nop                                           ; $7b27: $00
    ld a, [c]                                     ; $7b28: $f2
    ei                                            ; $7b29: $fb
    inc b                                         ; $7b2a: $04
    nop                                           ; $7b2b: $00
    ld [bc], a                                    ; $7b2c: $02
    ei                                            ; $7b2d: $fb
    ld b, $00                                     ; $7b2e: $06 $00
    ld a, [c]                                     ; $7b30: $f2
    inc bc                                        ; $7b31: $03
    ld [$0200], sp                                ; $7b32: $08 $00 $02
    inc bc                                        ; $7b35: $03
    ld a, [bc]                                    ; $7b36: $0a
    nop                                           ; $7b37: $00
    add b                                         ; $7b38: $80
    ld a, [c]                                     ; $7b39: $f2
    di                                            ; $7b3a: $f3
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    ld [bc], a                                    ; $7b3d: $02
    di                                            ; $7b3e: $f3
    ld [bc], a                                    ; $7b3f: $02
    nop                                           ; $7b40: $00
    ld a, [c]                                     ; $7b41: $f2
    ei                                            ; $7b42: $fb
    inc b                                         ; $7b43: $04
    nop                                           ; $7b44: $00
    ld [bc], a                                    ; $7b45: $02
    ei                                            ; $7b46: $fb
    ld b, $00                                     ; $7b47: $06 $00
    ld a, [c]                                     ; $7b49: $f2
    inc bc                                        ; $7b4a: $03
    ld [$0200], sp                                ; $7b4b: $08 $00 $02
    inc bc                                        ; $7b4e: $03
    ld a, [bc]                                    ; $7b4f: $0a
    nop                                           ; $7b50: $00
    add b                                         ; $7b51: $80
    ld a, [c]                                     ; $7b52: $f2
    db $eb                                        ; $7b53: $eb
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    ld a, [c]                                     ; $7b56: $f2
    di                                            ; $7b57: $f3
    ld [bc], a                                    ; $7b58: $02
    nop                                           ; $7b59: $00
    ld [bc], a                                    ; $7b5a: $02
    di                                            ; $7b5b: $f3
    inc b                                         ; $7b5c: $04
    nop                                           ; $7b5d: $00
    ld a, [c]                                     ; $7b5e: $f2
    ei                                            ; $7b5f: $fb
    ld b, $00                                     ; $7b60: $06 $00
    ld [bc], a                                    ; $7b62: $02
    ei                                            ; $7b63: $fb
    ld [$f200], sp                                ; $7b64: $08 $00 $f2
    inc bc                                        ; $7b67: $03
    ld a, [bc]                                    ; $7b68: $0a
    nop                                           ; $7b69: $00
    add b                                         ; $7b6a: $80
    ld a, [c]                                     ; $7b6b: $f2
    di                                            ; $7b6c: $f3
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    ld [bc], a                                    ; $7b6f: $02
    di                                            ; $7b70: $f3
    ld [bc], a                                    ; $7b71: $02
    nop                                           ; $7b72: $00
    ld a, [c]                                     ; $7b73: $f2
    ei                                            ; $7b74: $fb
    inc b                                         ; $7b75: $04
    nop                                           ; $7b76: $00
    ld [bc], a                                    ; $7b77: $02
    ei                                            ; $7b78: $fb
    ld b, $00                                     ; $7b79: $06 $00
    ld a, [c]                                     ; $7b7b: $f2
    inc bc                                        ; $7b7c: $03
    ld [$0200], sp                                ; $7b7d: $08 $00 $02
    inc bc                                        ; $7b80: $03
    ld a, [bc]                                    ; $7b81: $0a
    nop                                           ; $7b82: $00
    add b                                         ; $7b83: $80
    ld a, [c]                                     ; $7b84: $f2
    di                                            ; $7b85: $f3
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    ld [bc], a                                    ; $7b88: $02
    di                                            ; $7b89: $f3
    ld [bc], a                                    ; $7b8a: $02
    nop                                           ; $7b8b: $00
    ld a, [c]                                     ; $7b8c: $f2
    ei                                            ; $7b8d: $fb
    inc b                                         ; $7b8e: $04
    nop                                           ; $7b8f: $00
    ld [bc], a                                    ; $7b90: $02
    ei                                            ; $7b91: $fb
    ld b, $00                                     ; $7b92: $06 $00
    ld a, [c]                                     ; $7b94: $f2
    inc bc                                        ; $7b95: $03
    ld [$0200], sp                                ; $7b96: $08 $00 $02
    inc bc                                        ; $7b99: $03
    ld a, [bc]                                    ; $7b9a: $0a
    nop                                           ; $7b9b: $00
    add b                                         ; $7b9c: $80
    ld a, [c]                                     ; $7b9d: $f2
    di                                            ; $7b9e: $f3
    nop                                           ; $7b9f: $00
    nop                                           ; $7ba0: $00
    ld [bc], a                                    ; $7ba1: $02
    di                                            ; $7ba2: $f3
    ld [bc], a                                    ; $7ba3: $02
    nop                                           ; $7ba4: $00
    ld a, [c]                                     ; $7ba5: $f2
    ei                                            ; $7ba6: $fb
    inc b                                         ; $7ba7: $04
    nop                                           ; $7ba8: $00
    ld [bc], a                                    ; $7ba9: $02
    ei                                            ; $7baa: $fb
    ld b, $00                                     ; $7bab: $06 $00
    ld a, [c]                                     ; $7bad: $f2
    inc bc                                        ; $7bae: $03
    ld [$0200], sp                                ; $7baf: $08 $00 $02
    inc bc                                        ; $7bb2: $03
    ld a, [bc]                                    ; $7bb3: $0a
    nop                                           ; $7bb4: $00
    add b                                         ; $7bb5: $80
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

Call_011_7dff:
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

Call_011_7ee0:
Jump_011_7ee0:
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff

Jump_011_7ee5:
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

Call_011_7f1f:
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
