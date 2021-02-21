; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    dec d                                         ; $4000: $15
    ld b, h                                       ; $4001: $44

    db $b1, $68, $ad, $62

    ld e, h                                       ; $4006: $5c
    ld b, b                                       ; $4007: $40
    ld a, [$0661]                                 ; $4008: $fa $61 $06
    ld h, h                                       ; $400b: $64
    ld b, c                                       ; $400c: $41
    ld h, e                                       ; $400d: $63
    or h                                          ; $400e: $b4
    ld l, b                                       ; $400f: $68

    db $3b, $42, $51, $44, $14, $4b

    ld a, h                                       ; $4016: $7c
    ld b, a                                       ; $4017: $47
    ld [hl], d                                    ; $4018: $72
    ld h, h                                       ; $4019: $64

    db $c7, $4b, $28, $4b, $e5, $4b, $04, $4c, $26, $4c, $1a, $4c

    ld [hl], $4c                                  ; $4026: $36 $4c
    ld c, h                                       ; $4028: $4c
    ld c, h                                       ; $4029: $4c

    db $6e, $4c, $b9, $4c, $ad, $4c, $94, $4b

    rlca                                          ; $4032: $07
    ld l, c                                       ; $4033: $69
    adc e                                         ; $4034: $8b
    ld h, h                                       ; $4035: $64
    db $01                                        ; $4036: $01
    ld b, c                                       ; $4037: $41

    db $76, $62, $26, $42

    ld e, [hl]                                    ; $403c: $5e
    ld b, e                                       ; $403d: $43

    db $3c, $54, $55, $53

    cp c                                          ; $4042: $b9
    ld e, [hl]                                    ; $4043: $5e
    rst $28                                       ; $4044: $ef
    ld e, [hl]                                    ; $4045: $5e
    ld h, d                                       ; $4046: $62
    ld c, h                                       ; $4047: $4c
    xor h                                         ; $4048: $ac
    ld b, b                                       ; $4049: $40
    sub h                                         ; $404a: $94
    ld e, a                                       ; $404b: $5f
    ld b, l                                       ; $404c: $45
    ld c, l                                       ; $404d: $4d
    ld [hl], a                                    ; $404e: $77
    ld [hl], b                                    ; $404f: $70
    ld b, [hl]                                    ; $4050: $46
    ld b, d                                       ; $4051: $42
    dec bc                                        ; $4052: $0b
    ld d, l                                       ; $4053: $55
    jr jr_010_40ab                                ; $4054: $18 $55

    db $c3, $4c, $0e, $42

    inc a                                         ; $405a: $3c
    ld e, d                                       ; $405b: $5a

Call_010_405c:
    ld a, $06                                     ; $405c: $3e $06
    ldh [$96], a                                  ; $405e: $e0 $96
    ldh [rSVBK], a                                ; $4060: $e0 $70
    xor a                                         ; $4062: $af
    ld [$c8e0], a                                 ; $4063: $ea $e0 $c8
    ld [$c8a1], a                                 ; $4066: $ea $a1 $c8
    ld [$c8e1], a                                 ; $4069: $ea $e1 $c8
    ld [$c8aa], a                                 ; $406c: $ea $aa $c8
    ld [$c8ea], a                                 ; $406f: $ea $ea $c8
    ld [$c8ab], a                                 ; $4072: $ea $ab $c8
    ld [$c8eb], a                                 ; $4075: $ea $eb $c8
    ld [$c895], a                                 ; $4078: $ea $95 $c8
    ld [$c8d5], a                                 ; $407b: $ea $d5 $c8
    ld a, [$d4ef]                                 ; $407e: $fa $ef $d4
    ld [$c8a0], a                                 ; $4081: $ea $a0 $c8
    ld a, [$d4e3]                                 ; $4084: $fa $e3 $d4
    and $01                                       ; $4087: $e6 $01
    ld [$c8a9], a                                 ; $4089: $ea $a9 $c8
    ld a, [$d4e3]                                 ; $408c: $fa $e3 $d4
    swap a                                        ; $408f: $cb $37
    and $03                                       ; $4091: $e6 $03
    ld [$c8bf], a                                 ; $4093: $ea $bf $c8
    xor a                                         ; $4096: $af
    ld [$c8e9], a                                 ; $4097: $ea $e9 $c8
    ld [$c8ff], a                                 ; $409a: $ea $ff $c8
    ld a, [$c8d0]                                 ; $409d: $fa $d0 $c8
    cp $ff                                        ; $40a0: $fe $ff
    ret nz                                        ; $40a2: $c0

    ld a, $01                                     ; $40a3: $3e $01
    ld [$c8ea], a                                 ; $40a5: $ea $ea $c8
    ld [$c8eb], a                                 ; $40a8: $ea $eb $c8

jr_010_40ab:
    ret                                           ; $40ab: $c9


Call_010_40ac:
    ld a, $06                                     ; $40ac: $3e $06
    ldh [$96], a                                  ; $40ae: $e0 $96
    ldh [rSVBK], a                                ; $40b0: $e0 $70
    ld de, $d439                                  ; $40b2: $11 $39 $d4
    ld hl, $c8a2                                  ; $40b5: $21 $a2 $c8
    ld [hl], $00                                  ; $40b8: $36 $00
    inc hl                                        ; $40ba: $23
    ld a, [de]                                    ; $40bb: $1a
    ld [hl+], a                                   ; $40bc: $22
    inc de                                        ; $40bd: $13
    ld a, [de]                                    ; $40be: $1a
    ld [hl+], a                                   ; $40bf: $22
    inc de                                        ; $40c0: $13
    ld [hl], $00                                  ; $40c1: $36 $00
    inc hl                                        ; $40c3: $23
    ld a, [de]                                    ; $40c4: $1a
    ld [hl+], a                                   ; $40c5: $22
    inc de                                        ; $40c6: $13
    ld a, [de]                                    ; $40c7: $1a
    ld [hl], a                                    ; $40c8: $77
    ld de, $d439                                  ; $40c9: $11 $39 $d4
    ld hl, $c8e2                                  ; $40cc: $21 $e2 $c8
    ld [hl], $00                                  ; $40cf: $36 $00
    inc hl                                        ; $40d1: $23
    ld a, [de]                                    ; $40d2: $1a
    ld [hl+], a                                   ; $40d3: $22
    inc de                                        ; $40d4: $13
    ld a, [de]                                    ; $40d5: $1a
    ld [hl+], a                                   ; $40d6: $22
    inc de                                        ; $40d7: $13
    ld [hl], $00                                  ; $40d8: $36 $00
    inc hl                                        ; $40da: $23
    ld a, [de]                                    ; $40db: $1a
    ld [hl+], a                                   ; $40dc: $22
    inc de                                        ; $40dd: $13
    ld a, [de]                                    ; $40de: $1a
    ld [hl], a                                    ; $40df: $77
    ld de, $d439                                  ; $40e0: $11 $39 $d4
    ld hl, $d400                                  ; $40e3: $21 $00 $d4
    ld [hl], $00                                  ; $40e6: $36 $00
    inc hl                                        ; $40e8: $23
    ld a, [de]                                    ; $40e9: $1a
    inc de                                        ; $40ea: $13
    ld [hl+], a                                   ; $40eb: $22
    ld a, [de]                                    ; $40ec: $1a
    inc de                                        ; $40ed: $13
    ld [hl+], a                                   ; $40ee: $22
    ld [hl], $00                                  ; $40ef: $36 $00
    inc hl                                        ; $40f1: $23
    ld a, [de]                                    ; $40f2: $1a
    inc de                                        ; $40f3: $13
    ld [hl+], a                                   ; $40f4: $22
    ld a, [de]                                    ; $40f5: $1a
    ld [hl], a                                    ; $40f6: $77
    ret                                           ; $40f7: $c9


Call_010_40f8:
    ld a, l                                       ; $40f8: $7d
    ld [$c815], a                                 ; $40f9: $ea $15 $c8
    ld a, h                                       ; $40fc: $7c
    ld [$c816], a                                 ; $40fd: $ea $16 $c8
    ret                                           ; $4100: $c9


Call_010_4101:
    ld a, $06                                     ; $4101: $3e $06
    ldh [$96], a                                  ; $4103: $e0 $96
    ldh [rSVBK], a                                ; $4105: $e0 $70
    ld a, $20                                     ; $4107: $3e $20
    call Call_010_4b14                            ; $4109: $cd $14 $4b
    ld a, [hl+]                                   ; $410c: $2a
    push af                                       ; $410d: $f5
    ld b, [hl]                                    ; $410e: $46
    swap b                                        ; $410f: $cb $30
    or b                                          ; $4111: $b0
    ld b, a                                       ; $4112: $47
    ld a, $2c                                     ; $4113: $3e $2c
    call Call_010_4b14                            ; $4115: $cd $14 $4b
    ld a, [$c837]                                 ; $4118: $fa $37 $c8
    dec a                                         ; $411b: $3d
    cp $12                                        ; $411c: $fe $12
    jr nc, jr_010_4126                            ; $411e: $30 $06

    add l                                         ; $4120: $85
    ld l, a                                       ; $4121: $6f
    jr nc, jr_010_4125                            ; $4122: $30 $01

    inc h                                         ; $4124: $24

jr_010_4125:
    ld [hl], b                                    ; $4125: $70

jr_010_4126:
    ld a, [$d325]                                 ; $4126: $fa $25 $d3
    ld b, a                                       ; $4129: $47
    ld a, $3e                                     ; $412a: $3e $3e
    call Call_010_4b14                            ; $412c: $cd $14 $4b
    pop af                                        ; $412f: $f1
    add [hl]                                      ; $4130: $86
    sub b                                         ; $4131: $90
    ld [hl], a                                    ; $4132: $77
    ret                                           ; $4133: $c9


Call_010_4134:
    cp $80                                        ; $4134: $fe $80
    ret z                                         ; $4136: $c8

    push af                                       ; $4137: $f5
    push hl                                       ; $4138: $e5
    push de                                       ; $4139: $d5
    ld a, [$c834]                                 ; $413a: $fa $34 $c8
    or a                                          ; $413d: $b7
    jr z, jr_010_4154                             ; $413e: $28 $14

    cp $04                                        ; $4140: $fe $04
    jr z, jr_010_4154                             ; $4142: $28 $10

    ld a, [$d325]                                 ; $4144: $fa $25 $d3
    ld d, a                                       ; $4147: $57
    add a                                         ; $4148: $87
    add d                                         ; $4149: $82
    ld d, a                                       ; $414a: $57
    ld a, $20                                     ; $414b: $3e $20
    call Call_010_4b14                            ; $414d: $cd $14 $4b
    ld a, [hl]                                    ; $4150: $7e
    cp d                                          ; $4151: $ba
    jr nc, jr_010_4158                            ; $4152: $30 $04

jr_010_4154:
    pop de                                        ; $4154: $d1
    pop hl                                        ; $4155: $e1
    pop af                                        ; $4156: $f1
    ret                                           ; $4157: $c9


jr_010_4158:
    ld [hl], d                                    ; $4158: $72
    call Call_010_4786                            ; $4159: $cd $86 $47
    ld hl, $d485                                  ; $415c: $21 $85 $d4
    res 4, [hl]                                   ; $415f: $cb $a6
    ld hl, $d48e                                  ; $4161: $21 $8e $d4
    set 7, [hl]                                   ; $4164: $cb $fe
    push bc                                       ; $4166: $c5
    rst $18                                       ; $4167: $df
    ld [de], a                                    ; $4168: $12
    dec sp                                        ; $4169: $3b
    pop bc                                        ; $416a: $c1
    pop de                                        ; $416b: $d1
    pop hl                                        ; $416c: $e1
    pop af                                        ; $416d: $f1
    ld a, $81                                     ; $416e: $3e $81
    ret                                           ; $4170: $c9


    ld a, [$d402]                                 ; $4171: $fa $02 $d4
    ld b, a                                       ; $4174: $47
    ld a, [$c329]                                 ; $4175: $fa $29 $c3
    cp b                                          ; $4178: $b8
    jr z, jr_010_417d                             ; $4179: $28 $02

    jr nc, jr_010_41da                            ; $417b: $30 $5d

jr_010_417d:
    ld a, [$c32b]                                 ; $417d: $fa $2b $c3
    cp b                                          ; $4180: $b8
    jr z, jr_010_41da                             ; $4181: $28 $57

    jr c, jr_010_41da                             ; $4183: $38 $55

    ld a, [$d405]                                 ; $4185: $fa $05 $d4
    ld b, a                                       ; $4188: $47
    ld a, [$c32a]                                 ; $4189: $fa $2a $c3
    cp b                                          ; $418c: $b8
    jr z, jr_010_4191                             ; $418d: $28 $02

    jr nc, jr_010_41da                            ; $418f: $30 $49

jr_010_4191:
    ld a, [$c32c]                                 ; $4191: $fa $2c $c3
    dec a                                         ; $4194: $3d
    dec a                                         ; $4195: $3d
    cp b                                          ; $4196: $b8
    jp z, Jump_010_41da                           ; $4197: $ca $da $41

    jp c, Jump_010_41da                           ; $419a: $da $da $41

    ld hl, $d4cf                                  ; $419d: $21 $cf $d4
    ld de, $d401                                  ; $41a0: $11 $01 $d4
    ld a, [de]                                    ; $41a3: $1a
    cp [hl]                                       ; $41a4: $be
    jr nz, jr_010_41c4                            ; $41a5: $20 $1d

    inc hl                                        ; $41a7: $23
    inc de                                        ; $41a8: $13
    ld a, [de]                                    ; $41a9: $1a
    cp [hl]                                       ; $41aa: $be
    jr nz, jr_010_41c4                            ; $41ab: $20 $17

    inc hl                                        ; $41ad: $23
    inc de                                        ; $41ae: $13
    inc de                                        ; $41af: $13
    ld a, [de]                                    ; $41b0: $1a
    cp [hl]                                       ; $41b1: $be
    jr nz, jr_010_41c4                            ; $41b2: $20 $10

    inc hl                                        ; $41b4: $23
    inc de                                        ; $41b5: $13
    ld a, [de]                                    ; $41b6: $1a
    cp [hl]                                       ; $41b7: $be
    jr nz, jr_010_41c4                            ; $41b8: $20 $0a

    inc hl                                        ; $41ba: $23
    inc [hl]                                      ; $41bb: $34
    ld a, [hl]                                    ; $41bc: $7e
    cp $28                                        ; $41bd: $fe $28
    jr nc, jr_010_41da                            ; $41bf: $30 $19

    jp Jump_010_41d8                              ; $41c1: $c3 $d8 $41


jr_010_41c4:
    ld hl, $d4cf                                  ; $41c4: $21 $cf $d4
    ld de, $d401                                  ; $41c7: $11 $01 $d4
    ld a, [de]                                    ; $41ca: $1a
    ld [hl+], a                                   ; $41cb: $22
    inc de                                        ; $41cc: $13
    ld a, [de]                                    ; $41cd: $1a
    ld [hl+], a                                   ; $41ce: $22
    inc de                                        ; $41cf: $13
    inc de                                        ; $41d0: $13
    ld a, [de]                                    ; $41d1: $1a
    ld [hl+], a                                   ; $41d2: $22
    inc de                                        ; $41d3: $13
    ld a, [de]                                    ; $41d4: $1a
    ld [hl+], a                                   ; $41d5: $22
    ld [hl], $00                                  ; $41d6: $36 $00

Jump_010_41d8:
    xor a                                         ; $41d8: $af
    ret                                           ; $41d9: $c9


Jump_010_41da:
jr_010_41da:
    ld a, $ff                                     ; $41da: $3e $ff
    or a                                          ; $41dc: $b7
    ret                                           ; $41dd: $c9


    ld d, $00                                     ; $41de: $16 $00

jr_010_41e0:
    push de                                       ; $41e0: $d5
    ld a, d                                       ; $41e1: $7a
    ld de, $0802                                  ; $41e2: $11 $02 $08
    call Call_000_22e9                            ; $41e5: $cd $e9 $22
    pop de                                        ; $41e8: $d1
    call Call_000_2e3b                            ; $41e9: $cd $3b $2e
    ldh a, [$91]                                  ; $41ec: $f0 $91
    bit 5, a                                      ; $41ee: $cb $6f
    jr z, jr_010_41fb                             ; $41f0: $28 $09

    dec d                                         ; $41f2: $15
    ld a, d                                       ; $41f3: $7a
    cp $fb                                        ; $41f4: $fe $fb
    jr nz, jr_010_41e0                            ; $41f6: $20 $e8

    inc d                                         ; $41f8: $14
    jr jr_010_41e0                                ; $41f9: $18 $e5

jr_010_41fb:
    bit 4, a                                      ; $41fb: $cb $67
    jr z, jr_010_4208                             ; $41fd: $28 $09

    inc d                                         ; $41ff: $14
    ld a, d                                       ; $4200: $7a
    cp $05                                        ; $4201: $fe $05
    jr nz, jr_010_41e0                            ; $4203: $20 $db

    dec d                                         ; $4205: $15
    jr jr_010_41e0                                ; $4206: $18 $d8

jr_010_4208:
    bit 0, a                                      ; $4208: $cb $47
    jr z, jr_010_41e0                             ; $420a: $28 $d4

    ld a, d                                       ; $420c: $7a
    ret                                           ; $420d: $c9


Call_010_420e:
    call Call_000_23b6                            ; $420e: $cd $b6 $23
    call Call_000_2683                            ; $4211: $cd $83 $26
    rst $18                                       ; $4214: $df

    db $00, $12

    rst $18                                       ; $4217: $df

    db $00, $04

    rst $18                                       ; $421a: $df

    db $04, $11

    rst $18                                       ; $421d: $df

    db $56, $04

    ld a, $ff                                     ; $4220: $3e $ff
    ld [$d443], a                                 ; $4222: $ea $43 $d4
    ret                                           ; $4225: $c9


Call_010_4226:
    call Call_010_420e                            ; $4226: $cd $0e $42
    call Call_010_5632                            ; $4229: $cd $32 $56
    xor a                                         ; $422c: $af
    ld [$d328], a                                 ; $422d: $ea $28 $d3
    ld c, $7f                                     ; $4230: $0e $7f
    call Call_000_258d                            ; $4232: $cd $8d $25
    ld a, $04                                     ; $4235: $3e $04
    rst $18                                       ; $4237: $df

    db $56, $10

    ret                                           ; $423a: $c9


    ld [$c838], a                                 ; $423b: $ea $38 $c8
    ld a, h                                       ; $423e: $7c
    ld [$c836], a                                 ; $423f: $ea $36 $c8
    ld a, l                                       ; $4242: $7d
    ld [$c837], a                                 ; $4243: $ea $37 $c8

Call_010_4246:
    push hl                                       ; $4246: $e5
    ld a, [$c836]                                 ; $4247: $fa $36 $c8
    add a                                         ; $424a: $87
    ld hl, $4265                                  ; $424b: $21 $65 $42
    add l                                         ; $424e: $85
    ld l, a                                       ; $424f: $6f
    jr nc, jr_010_4253                            ; $4250: $30 $01

    inc h                                         ; $4252: $24

jr_010_4253:
    ld a, [hl+]                                   ; $4253: $2a
    ld h, [hl]                                    ; $4254: $66
    ld l, a                                       ; $4255: $6f
    ld a, [$c837]                                 ; $4256: $fa $37 $c8
    dec a                                         ; $4259: $3d
    add l                                         ; $425a: $85
    ld l, a                                       ; $425b: $6f
    jr nc, jr_010_425f                            ; $425c: $30 $01

    inc h                                         ; $425e: $24

jr_010_425f:
    ld a, [hl]                                    ; $425f: $7e
    ld [$d320], a                                 ; $4260: $ea $20 $d3
    pop hl                                        ; $4263: $e1
    ret                                           ; $4264: $c9


    ld a, l                                       ; $4265: $7d
    ld b, d                                       ; $4266: $42
    add a                                         ; $4267: $87
    ld b, d                                       ; $4268: $42

    db $99, $42

    xor e                                         ; $426b: $ab
    ld b, d                                       ; $426c: $42
    cp l                                          ; $426d: $bd
    ld b, d                                       ; $426e: $42
    rst $08                                       ; $426f: $cf
    ld b, d                                       ; $4270: $42
    pop hl                                        ; $4271: $e1
    ld b, d                                       ; $4272: $42

    db $f3, $42

    dec b                                         ; $4275: $05
    ld b, e                                       ; $4276: $43
    rla                                           ; $4277: $17
    ld b, e                                       ; $4278: $43
    add hl, hl                                    ; $4279: $29
    ld b, e                                       ; $427a: $43
    ld a, l                                       ; $427b: $7d
    ld b, d                                       ; $427c: $42
    nop                                           ; $427d: $00
    ld bc, $0302                                  ; $427e: $01 $02 $03
    inc b                                         ; $4281: $04
    dec b                                         ; $4282: $05
    ld b, $07                                     ; $4283: $06 $07
    ld [$0a09], sp                                ; $4285: $08 $09 $0a
    dec bc                                        ; $4288: $0b
    inc c                                         ; $4289: $0c
    dec c                                         ; $428a: $0d
    ld c, $0f                                     ; $428b: $0e $0f
    db $10                                        ; $428d: $10
    ld de, $1312                                  ; $428e: $11 $12 $13
    inc d                                         ; $4291: $14
    dec d                                         ; $4292: $15
    ld d, $17                                     ; $4293: $16 $17
    jr jr_010_42b0                                ; $4295: $18 $19

    ld a, [de]                                    ; $4297: $1a
    dec de                                        ; $4298: $1b

    db $1c, $1d, $1e

    rra                                           ; $429c: $1f
    jr nz, jr_010_42c0                            ; $429d: $20 $21

    ld [hl+], a                                   ; $429f: $22
    inc hl                                        ; $42a0: $23
    inc h                                         ; $42a1: $24
    dec h                                         ; $42a2: $25
    ld h, $27                                     ; $42a3: $26 $27
    db $28                                        ; $42a5: $28

    db $29

    ld a, [hl+]                                   ; $42a7: $2a
    dec hl                                        ; $42a8: $2b
    inc l                                         ; $42a9: $2c
    dec l                                         ; $42aa: $2d
    ld l, $2f                                     ; $42ab: $2e $2f
    jr nc, jr_010_42e0                            ; $42ad: $30 $31

    ld [hl-], a                                   ; $42af: $32

jr_010_42b0:
    inc sp                                        ; $42b0: $33
    inc [hl]                                      ; $42b1: $34
    dec [hl]                                      ; $42b2: $35
    ld [hl], $37                                  ; $42b3: $36 $37
    jr c, jr_010_42f0                             ; $42b5: $38 $39

    ld a, [hl-]                                   ; $42b7: $3a
    dec sp                                        ; $42b8: $3b
    inc a                                         ; $42b9: $3c
    dec a                                         ; $42ba: $3d
    ld a, $3f                                     ; $42bb: $3e $3f
    ld b, b                                       ; $42bd: $40
    ld b, c                                       ; $42be: $41
    ld b, d                                       ; $42bf: $42

jr_010_42c0:
    ld b, e                                       ; $42c0: $43
    ld b, h                                       ; $42c1: $44
    ld b, l                                       ; $42c2: $45
    ld b, [hl]                                    ; $42c3: $46
    ld b, a                                       ; $42c4: $47
    ld c, b                                       ; $42c5: $48
    ld c, c                                       ; $42c6: $49
    ld c, d                                       ; $42c7: $4a
    ld c, e                                       ; $42c8: $4b
    ld c, h                                       ; $42c9: $4c
    ld c, l                                       ; $42ca: $4d
    ld c, [hl]                                    ; $42cb: $4e
    ld c, a                                       ; $42cc: $4f
    ld d, b                                       ; $42cd: $50
    ld d, c                                       ; $42ce: $51
    ld d, d                                       ; $42cf: $52

jr_010_42d0:
    ld d, e                                       ; $42d0: $53
    ld d, h                                       ; $42d1: $54
    ld d, l                                       ; $42d2: $55
    ld d, [hl]                                    ; $42d3: $56
    ld d, a                                       ; $42d4: $57
    ld e, b                                       ; $42d5: $58
    ld e, c                                       ; $42d6: $59
    ld e, d                                       ; $42d7: $5a
    ld e, e                                       ; $42d8: $5b
    ld e, h                                       ; $42d9: $5c
    ld e, l                                       ; $42da: $5d
    ld e, [hl]                                    ; $42db: $5e
    ld e, a                                       ; $42dc: $5f
    ld h, b                                       ; $42dd: $60
    ld h, c                                       ; $42de: $61
    ld h, d                                       ; $42df: $62

jr_010_42e0:
    ld h, e                                       ; $42e0: $63
    ld h, h                                       ; $42e1: $64
    ld h, l                                       ; $42e2: $65
    ld h, [hl]                                    ; $42e3: $66
    ld h, a                                       ; $42e4: $67
    ld l, b                                       ; $42e5: $68
    ld l, c                                       ; $42e6: $69
    ld l, d                                       ; $42e7: $6a
    ld l, e                                       ; $42e8: $6b
    ld l, h                                       ; $42e9: $6c
    ld l, l                                       ; $42ea: $6d
    ld l, [hl]                                    ; $42eb: $6e
    ld l, a                                       ; $42ec: $6f
    ld [hl], b                                    ; $42ed: $70
    ld [hl], c                                    ; $42ee: $71
    ld [hl], d                                    ; $42ef: $72

jr_010_42f0:
    ld [hl], e                                    ; $42f0: $73
    ld [hl], h                                    ; $42f1: $74
    ld [hl], l                                    ; $42f2: $75
    halt                                          ; $42f3: $76
    ld [hl], a                                    ; $42f4: $77
    ld a, b                                       ; $42f5: $78
    ld a, c                                       ; $42f6: $79
    ld a, d                                       ; $42f7: $7a
    ld a, e                                       ; $42f8: $7b
    ld a, h                                       ; $42f9: $7c

    db $7d

    ld a, [hl]                                    ; $42fb: $7e
    ld a, a                                       ; $42fc: $7f
    add b                                         ; $42fd: $80
    add c                                         ; $42fe: $81
    add d                                         ; $42ff: $82
    add e                                         ; $4300: $83
    add h                                         ; $4301: $84
    add l                                         ; $4302: $85
    add [hl]                                      ; $4303: $86
    add a                                         ; $4304: $87
    adc b                                         ; $4305: $88
    adc c                                         ; $4306: $89
    adc d                                         ; $4307: $8a
    adc e                                         ; $4308: $8b
    adc h                                         ; $4309: $8c
    adc l                                         ; $430a: $8d
    adc [hl]                                      ; $430b: $8e
    adc a                                         ; $430c: $8f
    sub b                                         ; $430d: $90
    sub c                                         ; $430e: $91
    sub d                                         ; $430f: $92
    sub e                                         ; $4310: $93
    sub h                                         ; $4311: $94
    sub l                                         ; $4312: $95
    sub [hl]                                      ; $4313: $96
    sub a                                         ; $4314: $97
    sbc b                                         ; $4315: $98
    sbc c                                         ; $4316: $99
    sbc d                                         ; $4317: $9a
    sbc e                                         ; $4318: $9b
    sbc h                                         ; $4319: $9c
    sbc l                                         ; $431a: $9d
    sbc [hl]                                      ; $431b: $9e
    sbc a                                         ; $431c: $9f
    and b                                         ; $431d: $a0
    and c                                         ; $431e: $a1
    and d                                         ; $431f: $a2
    and e                                         ; $4320: $a3
    and h                                         ; $4321: $a4
    and l                                         ; $4322: $a5
    and [hl]                                      ; $4323: $a6
    and a                                         ; $4324: $a7
    xor b                                         ; $4325: $a8
    xor c                                         ; $4326: $a9
    xor d                                         ; $4327: $aa
    xor e                                         ; $4328: $ab
    xor h                                         ; $4329: $ac
    xor l                                         ; $432a: $ad
    xor [hl]                                      ; $432b: $ae
    xor a                                         ; $432c: $af
    or b                                          ; $432d: $b0
    or c                                          ; $432e: $b1
    or d                                          ; $432f: $b2
    or e                                          ; $4330: $b3
    or h                                          ; $4331: $b4
    or l                                          ; $4332: $b5
    or [hl]                                       ; $4333: $b6
    or a                                          ; $4334: $b7
    cp b                                          ; $4335: $b8
    cp c                                          ; $4336: $b9
    cp d                                          ; $4337: $ba
    cp e                                          ; $4338: $bb
    cp h                                          ; $4339: $bc
    cp l                                          ; $433a: $bd

Call_010_433b:
    ld a, [$d32a]                                 ; $433b: $fa $2a $d3
    cp $01                                        ; $433e: $fe $01
    ret nz                                        ; $4340: $c0

    ld a, [$d329]                                 ; $4341: $fa $29 $d3
    cp $0d                                        ; $4344: $fe $0d
    ret z                                         ; $4346: $c8

    ld a, [$d44f]                                 ; $4347: $fa $4f $d4
    or a                                          ; $434a: $b7
    jr nz, jr_010_4353                            ; $434b: $20 $06

    ld a, [$d450]                                 ; $434d: $fa $50 $d4
    cp $3c                                        ; $4350: $fe $3c
    ret z                                         ; $4352: $c8

jr_010_4353:
    ld a, $28                                     ; $4353: $3e $28
    call Call_010_4b14                            ; $4355: $cd $14 $4b
    dec [hl]                                      ; $4358: $35
    ld a, [hl]                                    ; $4359: $7e
    rst $18                                       ; $435a: $df

    db $38, $12

    ret                                           ; $435d: $c9


    push af                                       ; $435e: $f5
    push bc                                       ; $435f: $c5
    push de                                       ; $4360: $d5
    push hl                                       ; $4361: $e5
    call Call_010_4b28                            ; $4362: $cd $28 $4b
    ld a, $08                                     ; $4365: $3e $08
    ld [$c834], a                                 ; $4367: $ea $34 $c8
    pop hl                                        ; $436a: $e1
    pop de                                        ; $436b: $d1
    pop bc                                        ; $436c: $c1
    pop af                                        ; $436d: $f1
    ld a, $01                                     ; $436e: $3e $01
    ldh [$96], a                                  ; $4370: $e0 $96
    ldh [rSVBK], a                                ; $4372: $e0 $70
    ld a, $04                                     ; $4374: $3e $04
    add b                                         ; $4376: $80
    ld b, a                                       ; $4377: $47
    ld hl, $d000                                  ; $4378: $21 $00 $d0
    rst $18                                       ; $437b: $df
    ld b, $02                                     ; $437c: $06 $02
    or a                                          ; $437e: $b7
    jr z, jr_010_4382                             ; $437f: $28 $01

    ret                                           ; $4381: $c9


jr_010_4382:
    ld h, $00                                     ; $4382: $26 $00
    ld l, c                                       ; $4384: $69
    add hl, hl                                    ; $4385: $29
    add hl, hl                                    ; $4386: $29
    add hl, hl                                    ; $4387: $29
    add hl, hl                                    ; $4388: $29
    add hl, hl                                    ; $4389: $29
    add hl, hl                                    ; $438a: $29
    add hl, hl                                    ; $438b: $29
    ld de, $d000                                  ; $438c: $11 $00 $d0
    add hl, de                                    ; $438f: $19
    ld de, $c600                                  ; $4390: $11 $00 $c6
    ld c, $08                                     ; $4393: $0e $08
    call Call_000_03eb                            ; $4395: $cd $eb $03
    ld a, $06                                     ; $4398: $3e $06
    ldh [$96], a                                  ; $439a: $e0 $96
    ldh [rSVBK], a                                ; $439c: $e0 $70
    ld bc, $8100                                  ; $439e: $01 $00 $81
    rst $18                                       ; $43a1: $df
    ld e, $02                                     ; $43a2: $1e $02
    ld bc, $ff01                                  ; $43a4: $01 $01 $ff
    rst $18                                       ; $43a7: $df
    ld e, $02                                     ; $43a8: $1e $02
    ld hl, $c620                                  ; $43aa: $21 $20 $c6
    ld a, [hl+]                                   ; $43ad: $2a
    ld [$c836], a                                 ; $43ae: $ea $36 $c8
    ld a, [hl+]                                   ; $43b1: $2a
    ld [$c837], a                                 ; $43b2: $ea $37 $c8
    ld a, [hl+]                                   ; $43b5: $2a
    ld [$c815], a                                 ; $43b6: $ea $15 $c8
    ld a, [hl+]                                   ; $43b9: $2a
    ld [$c816], a                                 ; $43ba: $ea $16 $c8
    ld a, [hl+]                                   ; $43bd: $2a
    ld [$c838], a                                 ; $43be: $ea $38 $c8
    ld c, [hl]                                    ; $43c1: $4e
    push bc                                       ; $43c2: $c5
    ld hl, $c640                                  ; $43c3: $21 $40 $c6
    ld de, $d680                                  ; $43c6: $11 $80 $d6
    ld c, $04                                     ; $43c9: $0e $04
    call Call_000_03eb                            ; $43cb: $cd $eb $03
    ld a, $08                                     ; $43ce: $3e $08
    ld [$c834], a                                 ; $43d0: $ea $34 $c8
    ld a, $01                                     ; $43d3: $3e $01
    ld [$c96d], a                                 ; $43d5: $ea $6d $c9
    rst $18                                       ; $43d8: $df
    db $10                                        ; $43d9: $10
    ld [$5ccd], sp                                ; $43da: $08 $cd $5c
    ld b, b                                       ; $43dd: $40
    ld a, $06                                     ; $43de: $3e $06
    ldh [$96], a                                  ; $43e0: $e0 $96
    ldh [rSVBK], a                                ; $43e2: $e0 $70
    ld a, $01                                     ; $43e4: $3e $01
    ld [$d438], a                                 ; $43e6: $ea $38 $d4
    call Call_010_4246                            ; $43e9: $cd $46 $42
    rst $18                                       ; $43ec: $df
    ld [$cd13], sp                                ; $43ed: $08 $13 $cd
    ld e, h                                       ; $43f0: $5c
    ld b, b                                       ; $43f1: $40
    call Call_010_40ac                            ; $43f2: $cd $ac $40
    call Call_010_4226                            ; $43f5: $cd $26 $42
    pop bc                                        ; $43f8: $c1

jr_010_43f9:
    push bc                                       ; $43f9: $c5
    call Call_010_46d9                            ; $43fa: $cd $d9 $46
    call Call_010_5632                            ; $43fd: $cd $32 $56
    call Call_010_4798                            ; $4400: $cd $98 $47
    rst $18                                       ; $4403: $df
    ld a, $12                                     ; $4404: $3e $12
    pop bc                                        ; $4406: $c1
    dec c                                         ; $4407: $0d
    jr nz, jr_010_43f9                            ; $4408: $20 $ef

    rst $18                                       ; $440a: $df
    inc b                                         ; $440b: $04
    ld c, d                                       ; $440c: $4a
    call Call_000_2e3b                            ; $440d: $cd $3b $2e
    xor a                                         ; $4410: $af
    ld [$c96d], a                                 ; $4411: $ea $6d $c9
    ret                                           ; $4414: $c9


    rst $18                                       ; $4415: $df
    inc d                                         ; $4416: $14
    ld [bc], a                                    ; $4417: $02
    rst $18                                       ; $4418: $df
    ld [bc], a                                    ; $4419: $02
    ld [bc], a                                    ; $441a: $02
    ld hl, $c800                                  ; $441b: $21 $00 $c8
    ld b, $00                                     ; $441e: $06 $00
    rst $18                                       ; $4420: $df
    ld b, $02                                     ; $4421: $06 $02
    call Call_010_4b28                            ; $4423: $cd $28 $4b
    ld a, $03                                     ; $4426: $3e $03
    ld [$c834], a                                 ; $4428: $ea $34 $c8
    ld a, $0f                                     ; $442b: $3e $0f
    ld [$c2a5], a                                 ; $442d: $ea $a5 $c2
    ld hl, $c893                                  ; $4430: $21 $93 $c8
    ld [hl], $00                                  ; $4433: $36 $00
    ld hl, $c8d3                                  ; $4435: $21 $d3 $c8
    ld [hl], $00                                  ; $4438: $36 $00

jr_010_443a:
    ld a, $06                                     ; $443a: $3e $06
    ldh [$96], a                                  ; $443c: $e0 $96
    ldh [rSVBK], a                                ; $443e: $e0 $70
    ld hl, $0101                                  ; $4440: $21 $01 $01
    xor a                                         ; $4443: $af
    rst $18                                       ; $4444: $df
    db $10                                        ; $4445: $10
    db $10                                        ; $4446: $10
    call Call_010_7bac                            ; $4447: $cd $ac $7b
    ld a, $12                                     ; $444a: $3e $12
    call Call_010_4451                            ; $444c: $cd $51 $44
    jr jr_010_443a                                ; $444f: $18 $e9

Call_010_4451:
    call Call_000_2b7a                            ; $4451: $cd $7a $2b
    push af                                       ; $4454: $f5
    ld a, $06                                     ; $4455: $3e $06
    ldh [$96], a                                  ; $4457: $e0 $96
    ldh [rSVBK], a                                ; $4459: $e0 $70
    pop af                                        ; $445b: $f1
    ld [$d4f0], a                                 ; $445c: $ea $f0 $d4
    cp $ff                                        ; $445f: $fe $ff
    jr z, jr_010_4489                             ; $4461: $28 $26

    ld [$c839], a                                 ; $4463: $ea $39 $c8
    ld [$c833], a                                 ; $4466: $ea $33 $c8
    ld a, $01                                     ; $4469: $3e $01
    ld [$c96d], a                                 ; $446b: $ea $6d $c9
    xor a                                         ; $446e: $af
    ld [$c814], a                                 ; $446f: $ea $14 $c8
    rst $18                                       ; $4472: $df

    db $00, $08

    rst $18                                       ; $4475: $df

    db $58, $02

    ld hl, $c890                                  ; $4478: $21 $90 $c8
    ld a, [hl]                                    ; $447b: $7e
    ld hl, $c8d0                                  ; $447c: $21 $d0 $c8
    cp [hl]                                       ; $447f: $be
    jr nz, jr_010_4487                            ; $4480: $20 $05

    ld hl, $c8d9                                  ; $4482: $21 $d9 $c8
    set 4, [hl]                                   ; $4485: $cb $e6

jr_010_4487:
    jr jr_010_44a7                                ; $4487: $18 $1e

jr_010_4489:
    ld a, [$c896]                                 ; $4489: $fa $96 $c8
    ld [$c8a8], a                                 ; $448c: $ea $a8 $c8
    ld a, [$c8d6]                                 ; $448f: $fa $d6 $c8
    ld [$c8e8], a                                 ; $4492: $ea $e8 $c8
    ld a, [$c874]                                 ; $4495: $fa $74 $c8
    ld [$c873], a                                 ; $4498: $ea $73 $c8
    ld a, [$c876]                                 ; $449b: $fa $76 $c8
    ld [$c8be], a                                 ; $449e: $ea $be $c8
    ld a, [$c877]                                 ; $44a1: $fa $77 $c8
    ld [$c8fe], a                                 ; $44a4: $ea $fe $c8

jr_010_44a7:
    rst $18                                       ; $44a7: $df

    db $00, $05

    call Call_010_405c                            ; $44aa: $cd $5c $40
    xor a                                         ; $44ad: $af
    ld [$c835], a                                 ; $44ae: $ea $35 $c8
    ld [$c2a6], a                                 ; $44b1: $ea $a6 $c2

Jump_010_44b4:
    ld a, $06                                     ; $44b4: $3e $06
    ldh [$96], a                                  ; $44b6: $e0 $96
    ldh [rSVBK], a                                ; $44b8: $e0 $70
    ld a, $01                                     ; $44ba: $3e $01
    ld [$d485], a                                 ; $44bc: $ea $85 $d4
    xor a                                         ; $44bf: $af
    ld hl, $d4f1                                  ; $44c0: $21 $f1 $d4
    ld [hl+], a                                   ; $44c3: $22
    ld [hl], a                                    ; $44c4: $77
    ld a, [$c8a8]                                 ; $44c5: $fa $a8 $c8
    ld [$c896], a                                 ; $44c8: $ea $96 $c8
    ld a, [$c8e8]                                 ; $44cb: $fa $e8 $c8
    ld [$c8d6], a                                 ; $44ce: $ea $d6 $c8
    ld a, [$c873]                                 ; $44d1: $fa $73 $c8
    ld [$c874], a                                 ; $44d4: $ea $74 $c8
    ld a, [$c8be]                                 ; $44d7: $fa $be $c8
    ld [$c876], a                                 ; $44da: $ea $76 $c8
    ld a, [$c8fe]                                 ; $44dd: $fa $fe $c8
    ld [$c877], a                                 ; $44e0: $ea $77 $c8
    ld a, [$c893]                                 ; $44e3: $fa $93 $c8
    cp $03                                        ; $44e6: $fe $03
    jr nz, jr_010_4516                            ; $44e8: $20 $2c

    call Call_000_2e3b                            ; $44ea: $cd $3b $2e
    ld a, $24                                     ; $44ed: $3e $24
    ldh [$c1], a                                  ; $44ef: $e0 $c1

jr_010_44f1:
    ldh a, [$c0]                                  ; $44f1: $f0 $c0
    cp $23                                        ; $44f3: $fe $23
    jr z, jr_010_44fc                             ; $44f5: $28 $05

    call Call_000_2e3b                            ; $44f7: $cd $3b $2e
    jr jr_010_44f1                                ; $44fa: $18 $f5

jr_010_44fc:
    ld hl, $cb40                                  ; $44fc: $21 $40 $cb
    ld a, [hl+]                                   ; $44ff: $2a
    ld [$c836], a                                 ; $4500: $ea $36 $c8
    ld a, [hl+]                                   ; $4503: $2a
    ld [$c837], a                                 ; $4504: $ea $37 $c8
    ld a, [hl+]                                   ; $4507: $2a
    ld [$c838], a                                 ; $4508: $ea $38 $c8
    ld a, [hl+]                                   ; $450b: $2a
    ld [$c815], a                                 ; $450c: $ea $15 $c8
    ld a, [hl+]                                   ; $450f: $2a
    ld [$c816], a                                 ; $4510: $ea $16 $c8
    jp Jump_010_45a2                              ; $4513: $c3 $a2 $45


jr_010_4516:
    ld hl, $d4f0                                  ; $4516: $21 $f0 $d4
    ld a, [hl]                                    ; $4519: $7e
    ld [hl], $00                                  ; $451a: $36 $00
    cp $ff                                        ; $451c: $fe $ff
    jr z, jr_010_4560                             ; $451e: $28 $40

    call Call_000_0a61                            ; $4520: $cd $61 $0a
    ld a, h                                       ; $4523: $7c
    and $03                                       ; $4524: $e6 $03
    ld [$c838], a                                 ; $4526: $ea $38 $c8
    ld a, [$d4ed]                                 ; $4529: $fa $ed $d4
    or a                                          ; $452c: $b7
    jr z, jr_010_4535                             ; $452d: $28 $06

    ld a, [$d4ee]                                 ; $452f: $fa $ee $d4
    ld [$c838], a                                 ; $4532: $ea $38 $c8

jr_010_4535:
    call Call_000_0a61                            ; $4535: $cd $61 $0a
    ld a, $14                                     ; $4538: $3e $14
    call Call_000_0bec                            ; $453a: $cd $ec $0b
    ld d, h                                       ; $453d: $54
    call Call_000_0a61                            ; $453e: $cd $61 $0a
    ld a, h                                       ; $4541: $7c
    and $f0                                       ; $4542: $e6 $f0
    ld h, a                                       ; $4544: $67
    ld l, d                                       ; $4545: $6a
    ld a, [$c836]                                 ; $4546: $fa $36 $c8
    or a                                          ; $4549: $b7
    jr nz, jr_010_454f                            ; $454a: $20 $03

    ld hl, $4000                                  ; $454c: $21 $00 $40

jr_010_454f:
    ld a, [$d4e4]                                 ; $454f: $fa $e4 $d4
    or a                                          ; $4552: $b7
    jr z, jr_010_455d                             ; $4553: $28 $08

    ld hl, $d4e5                                  ; $4555: $21 $e5 $d4
    ld a, [hl+]                                   ; $4558: $2a
    ld h, [hl]                                    ; $4559: $66
    ld l, a                                       ; $455a: $6f
    sla l                                         ; $455b: $cb $25

jr_010_455d:
    call Call_010_40f8                            ; $455d: $cd $f8 $40

jr_010_4560:
    ld a, [$c8d3]                                 ; $4560: $fa $d3 $c8
    cp $03                                        ; $4563: $fe $03
    jr nz, jr_010_45a2                            ; $4565: $20 $3b

jr_010_4567:
    ldh a, [$c0]                                  ; $4567: $f0 $c0
    cp $24                                        ; $4569: $fe $24
    jr z, jr_010_4572                             ; $456b: $28 $05

    call Call_000_2e3b                            ; $456d: $cd $3b $2e
    jr jr_010_4567                                ; $4570: $18 $f5

jr_010_4572:
    xor a                                         ; $4572: $af
    ld [$cb47], a                                 ; $4573: $ea $47 $cb
    ld hl, $cb00                                  ; $4576: $21 $00 $cb
    ld a, [$c836]                                 ; $4579: $fa $36 $c8
    ld [hl+], a                                   ; $457c: $22
    ld a, [$c837]                                 ; $457d: $fa $37 $c8
    ld [hl+], a                                   ; $4580: $22
    ld a, [$c838]                                 ; $4581: $fa $38 $c8
    ld [hl+], a                                   ; $4584: $22
    ld a, [$c815]                                 ; $4585: $fa $15 $c8
    ld [hl+], a                                   ; $4588: $22
    ld a, [$c816]                                 ; $4589: $fa $16 $c8
    ld [hl+], a                                   ; $458c: $22
    ld a, $10                                     ; $458d: $3e $10
    ld [$cb07], a                                 ; $458f: $ea $07 $cb
    ld a, $23                                     ; $4592: $3e $23
    ldh [$c9], a                                  ; $4594: $e0 $c9
    ld a, $08                                     ; $4596: $3e $08
    call Call_000_3081                            ; $4598: $cd $81 $30
    call Call_000_30eb                            ; $459b: $cd $eb $30
    call Call_000_2ed5                            ; $459e: $cd $d5 $2e
    ld [bc], a                                    ; $45a1: $02

Jump_010_45a2:
jr_010_45a2:
    rst $18                                       ; $45a2: $df

    db $10, $08

    call Call_010_4246                            ; $45a5: $cd $46 $42
    rst $18                                       ; $45a8: $df

    db $08, $13

    call Call_010_405c                            ; $45ab: $cd $5c $40
    call Call_010_40ac                            ; $45ae: $cd $ac $40
    call Call_010_46d9                            ; $45b1: $cd $d9 $46
    xor a                                         ; $45b4: $af
    ld [$d329], a                                 ; $45b5: $ea $29 $d3
    ld [$d32a], a                                 ; $45b8: $ea $2a $d3
    ld [$d32b], a                                 ; $45bb: $ea $2b $d3
    inc a                                         ; $45be: $3c
    ld [$d445], a                                 ; $45bf: $ea $45 $d4
    ld a, [$6907]                                 ; $45c2: $fa $07 $69
    ld [$d321], a                                 ; $45c5: $ea $21 $d3
    rst $18                                       ; $45c8: $df

    db $0c, $08

    ld a, $03                                     ; $45cb: $3e $03
    call Call_010_4cc3                            ; $45cd: $cd $c3 $4c
    rst $18                                       ; $45d0: $df

    db $24, $08

    rst $18                                       ; $45d3: $df

    db $44, $12

    rst $18                                       ; $45d6: $df

    db $02, $08

Jump_010_45d9:
    call Call_010_4674                            ; $45d9: $cd $74 $46
    ld a, $01                                     ; $45dc: $3e $01
    ld [$d438], a                                 ; $45de: $ea $38 $d4
    call Call_010_5632                            ; $45e1: $cd $32 $56
    call Call_010_4798                            ; $45e4: $cd $98 $47
    ld hl, $d438                                  ; $45e7: $21 $38 $d4
    ld [hl], $00                                  ; $45ea: $36 $00
    call Call_010_4134                            ; $45ec: $cd $34 $41
    bit 7, a                                      ; $45ef: $cb $7f
    jp z, Jump_010_460c                           ; $45f1: $ca $0c $46

    ld a, $2a                                     ; $45f4: $3e $2a
    call Call_010_4b14                            ; $45f6: $cd $14 $4b
    ld a, $01                                     ; $45f9: $3e $01
    ld [hl+], a                                   ; $45fb: $22
    ld [hl], a                                    ; $45fc: $77
    ld a, $22                                     ; $45fd: $3e $22
    call Call_010_4b14                            ; $45ff: $cd $14 $4b
    xor a                                         ; $4602: $af
    ld [hl+], a                                   ; $4603: $22
    ld [hl+], a                                   ; $4604: $22
    ld [hl+], a                                   ; $4605: $22
    ld [hl+], a                                   ; $4606: $22
    ld [hl+], a                                   ; $4607: $22
    ld [hl], a                                    ; $4608: $77
    call Call_010_4101                            ; $4609: $cd $01 $41

Jump_010_460c:
    rst $18                                       ; $460c: $df

    db $06, $08

    ld a, $01                                     ; $460f: $3e $01
    call Call_010_4cc3                            ; $4611: $cd $c3 $4c
    rst $18                                       ; $4614: $df

    db $04, $4a

    call Call_000_2e3b                            ; $4617: $cd $3b $2e
    ld a, [$d4dd]                                 ; $461a: $fa $dd $d4
    or a                                          ; $461d: $b7
    jr z, jr_010_4627                             ; $461e: $28 $07

    bit 7, a                                      ; $4620: $cb $7f
    jr nz, jr_010_464a                            ; $4622: $20 $26

    rst $18                                       ; $4624: $df

    db $26, $08

jr_010_4627:
    rst $18                                       ; $4627: $df

    db $3e, $12

    ld a, [$c8aa]                                 ; $462a: $fa $aa $c8
    ld b, a                                       ; $462d: $47
    ld a, [$c8ea]                                 ; $462e: $fa $ea $c8
    and b                                         ; $4631: $a0
    jp z, Jump_010_45d9                           ; $4632: $ca $d9 $45

    rst $18                                       ; $4635: $df

    db $08, $08

    ld hl, $c837                                  ; $4638: $21 $37 $c8
    inc [hl]                                      ; $463b: $34
    ld a, [hl]                                    ; $463c: $7e
    cp $13                                        ; $463d: $fe $13
    jr c, jr_010_4643                             ; $463f: $38 $02

    ld [hl], $01                                  ; $4641: $36 $01

jr_010_4643:
    ld hl, $c839                                  ; $4643: $21 $39 $c8
    dec [hl]                                      ; $4646: $35
    jp nz, Jump_010_44b4                          ; $4647: $c2 $b4 $44

jr_010_464a:
    ld a, $01                                     ; $464a: $3e $01
    ld [$d328], a                                 ; $464c: $ea $28 $d3
    xor a                                         ; $464f: $af
    ld [$c96d], a                                 ; $4650: $ea $6d $c9
    ld a, [$c33f]                                 ; $4653: $fa $3f $c3
    or a                                          ; $4656: $b7
    jr z, jr_010_466d                             ; $4657: $28 $14

    ld a, $2e                                     ; $4659: $3e $2e
    ldh [$c1], a                                  ; $465b: $e0 $c1

jr_010_465d:
    call Call_000_2e3b                            ; $465d: $cd $3b $2e
    ldh a, [$c0]                                  ; $4660: $f0 $c0
    cp $2e                                        ; $4662: $fe $2e
    jr nz, jr_010_465d                            ; $4664: $20 $f7

    call Call_000_2ed5                            ; $4666: $cd $d5 $2e
    ld [bc], a                                    ; $4669: $02
    call Call_000_30fd                            ; $466a: $cd $fd $30

jr_010_466d:
    rst $18                                       ; $466d: $df

    db $0a, $08

    call Call_000_2b6c                            ; $4670: $cd $6c $2b
    ret                                           ; $4673: $c9


Call_010_4674:
    ld a, [$c8ea]                                 ; $4674: $fa $ea $c8
    or a                                          ; $4677: $b7
    jr nz, jr_010_46d9                            ; $4678: $20 $5f

    ld a, [$c8aa]                                 ; $467a: $fa $aa $c8
    or a                                          ; $467d: $b7
    jr nz, jr_010_46ee                            ; $467e: $20 $6e

    ld a, [$c835]                                 ; $4680: $fa $35 $c8
    push af                                       ; $4683: $f5
    call Call_010_46d9                            ; $4684: $cd $d9 $46
    call Call_010_62ad                            ; $4687: $cd $ad $62
    call Call_010_46b5                            ; $468a: $cd $b5 $46
    call Call_010_46c7                            ; $468d: $cd $c7 $46
    push hl                                       ; $4690: $e5
    call Call_010_46ee                            ; $4691: $cd $ee $46
    call Call_010_62ad                            ; $4694: $cd $ad $62
    call Call_010_46b5                            ; $4697: $cd $b5 $46
    call Call_010_46c7                            ; $469a: $cd $c7 $46
    pop de                                        ; $469d: $d1
    call Call_000_08ac                            ; $469e: $cd $ac $08
    pop bc                                        ; $46a1: $c1
    ld a, h                                       ; $46a2: $7c
    or l                                          ; $46a3: $b5
    jr nz, jr_010_46ad                            ; $46a4: $20 $07

    ld a, b                                       ; $46a6: $78
    xor $01                                       ; $46a7: $ee $01
    jr z, jr_010_46b1                             ; $46a9: $28 $06

    jr jr_010_46b4                                ; $46ab: $18 $07

jr_010_46ad:
    bit 7, h                                      ; $46ad: $cb $7c
    jr z, jr_010_46b4                             ; $46af: $28 $03

jr_010_46b1:
    call Call_010_46d9                            ; $46b1: $cd $d9 $46

jr_010_46b4:
    ret                                           ; $46b4: $c9


Call_010_46b5:
    push de                                       ; $46b5: $d5
    push hl                                       ; $46b6: $e5
    ld a, $2b                                     ; $46b7: $3e $2b
    call Call_010_4b14                            ; $46b9: $cd $14 $4b
    ld a, [hl]                                    ; $46bc: $7e
    pop hl                                        ; $46bd: $e1
    or a                                          ; $46be: $b7
    jr nz, jr_010_46c5                            ; $46bf: $20 $04

    ld de, $0c80                                  ; $46c1: $11 $80 $0c
    add hl, de                                    ; $46c4: $19

jr_010_46c5:
    pop de                                        ; $46c5: $d1
    ret                                           ; $46c6: $c9


Call_010_46c7:
    push de                                       ; $46c7: $d5
    push hl                                       ; $46c8: $e5
    ld a, $29                                     ; $46c9: $3e $29
    call Call_010_4b14                            ; $46cb: $cd $14 $4b
    ld a, [hl]                                    ; $46ce: $7e
    pop hl                                        ; $46cf: $e1
    or a                                          ; $46d0: $b7
    jr nz, jr_010_46d7                            ; $46d1: $20 $04

    ld de, $3200                                  ; $46d3: $11 $00 $32
    add hl, de                                    ; $46d6: $19

jr_010_46d7:
    pop de                                        ; $46d7: $d1
    ret                                           ; $46d8: $c9


Call_010_46d9:
jr_010_46d9:
    ld bc, $c880                                  ; $46d9: $01 $80 $c8
    ld hl, $c8a2                                  ; $46dc: $21 $a2 $c8
    ld de, $c8e3                                  ; $46df: $11 $e3 $c8
    ld a, [$c8e9]                                 ; $46e2: $fa $e9 $c8
    or a                                          ; $46e5: $b7
    jr nz, jr_010_46eb                            ; $46e6: $20 $03

    ld de, $4771                                  ; $46e8: $11 $71 $47

jr_010_46eb:
    xor a                                         ; $46eb: $af
    jr jr_010_4702                                ; $46ec: $18 $14

Call_010_46ee:
jr_010_46ee:
    ld bc, $c8c0                                  ; $46ee: $01 $c0 $c8
    ld hl, $c8e2                                  ; $46f1: $21 $e2 $c8
    ld de, $c8a3                                  ; $46f4: $11 $a3 $c8
    ld a, [$c8a9]                                 ; $46f7: $fa $a9 $c8
    or a                                          ; $46fa: $b7
    jr nz, jr_010_4700                            ; $46fb: $20 $03

    ld de, $4771                                  ; $46fd: $11 $71 $47

jr_010_4700:
    ld a, $01                                     ; $4700: $3e $01

jr_010_4702:
    push bc                                       ; $4702: $c5
    push de                                       ; $4703: $d5
    ld [$c835], a                                 ; $4704: $ea $35 $c8
    ld de, $d400                                  ; $4707: $11 $00 $d4
    ld bc, $0006                                  ; $470a: $01 $06 $00
    call Call_000_03d3                            ; $470d: $cd $d3 $03
    ld hl, $d406                                  ; $4710: $21 $06 $d4
    xor a                                         ; $4713: $af
    ld [hl+], a                                   ; $4714: $22
    ld [hl+], a                                   ; $4715: $22
    ld [hl], a                                    ; $4716: $77
    pop hl                                        ; $4717: $e1
    ld de, $d41e                                  ; $4718: $11 $1e $d4
    ld a, [hl+]                                   ; $471b: $2a
    ld [de], a                                    ; $471c: $12
    inc de                                        ; $471d: $13
    ld a, [hl+]                                   ; $471e: $2a
    ld [de], a                                    ; $471f: $12
    inc de                                        ; $4720: $13
    inc hl                                        ; $4721: $23
    ld a, [hl+]                                   ; $4722: $2a
    ld [de], a                                    ; $4723: $12
    inc de                                        ; $4724: $13
    ld a, [hl]                                    ; $4725: $7e
    ld [de], a                                    ; $4726: $12
    ld hl, $d409                                  ; $4727: $21 $09 $d4
    ld [hl+], a                                   ; $472a: $22
    ld [hl+], a                                   ; $472b: $22
    ld [hl+], a                                   ; $472c: $22
    ld [hl+], a                                   ; $472d: $22
    ld [hl+], a                                   ; $472e: $22
    ld [hl], a                                    ; $472f: $77
    pop bc                                        ; $4730: $c1
    ld hl, $001a                                  ; $4731: $21 $1a $00
    add hl, bc                                    ; $4734: $09
    ld a, [hl+]                                   ; $4735: $2a
    ld h, [hl]                                    ; $4736: $66
    ld l, a                                       ; $4737: $6f
    ld a, l                                       ; $4738: $7d
    ld [$d4c6], a                                 ; $4739: $ea $c6 $d4
    ld a, h                                       ; $473c: $7c
    ld [$d4c7], a                                 ; $473d: $ea $c7 $d4
    ld hl, $001d                                  ; $4740: $21 $1d $00
    add hl, bc                                    ; $4743: $09
    ld a, [hl]                                    ; $4744: $7e
    ld [$d4ca], a                                 ; $4745: $ea $ca $d4
    ld hl, $001c                                  ; $4748: $21 $1c $00
    add hl, bc                                    ; $474b: $09
    ld a, [hl]                                    ; $474c: $7e
    ld [$d4c8], a                                 ; $474d: $ea $c8 $d4
    ld hl, $001e                                  ; $4750: $21 $1e $00
    add hl, bc                                    ; $4753: $09
    ld a, [hl]                                    ; $4754: $7e
    ld [$d4c9], a                                 ; $4755: $ea $c9 $d4
    ld hl, $001f                                  ; $4758: $21 $1f $00
    add hl, bc                                    ; $475b: $09
    ld a, [hl]                                    ; $475c: $7e
    ld [$d4cb], a                                 ; $475d: $ea $cb $d4
    ld hl, $0019                                  ; $4760: $21 $19 $00
    add hl, bc                                    ; $4763: $09
    ld a, [hl]                                    ; $4764: $7e
    ld [$d4cc], a                                 ; $4765: $ea $cc $d4
    ld hl, $0013                                  ; $4768: $21 $13 $00
    add hl, bc                                    ; $476b: $09
    ld a, [hl]                                    ; $476c: $7e
    ld [$d4d7], a                                 ; $476d: $ea $d7 $d4
    ret                                           ; $4770: $c9


    db $00, $00

    nop                                           ; $4773: $00

    db $00, $df

    db $10                                        ; $4776: $10
    ld [de], a                                    ; $4777: $12
    rst $18                                       ; $4778: $df
    ld [de], a                                    ; $4779: $12
    ld [de], a                                    ; $477a: $12
    ret                                           ; $477b: $c9


Call_010_477c:
    ld a, $20                                     ; $477c: $3e $20
    call Call_010_4b14                            ; $477e: $cd $14 $4b
    ld a, [hl]                                    ; $4781: $7e
    cp $14                                        ; $4782: $fe $14
    ret nc                                        ; $4784: $d0

    inc [hl]                                      ; $4785: $34

Call_010_4786:
    ld a, [$c835]                                 ; $4786: $fa $35 $c8
    or a                                          ; $4789: $b7
    jr nz, jr_010_4791                            ; $478a: $20 $05

    rst $18                                       ; $478c: $df

    db $10, $12

    jr jr_010_4794                                ; $478f: $18 $03

jr_010_4791:
    rst $18                                       ; $4791: $df
    ld [de], a                                    ; $4792: $12
    ld [de], a                                    ; $4793: $12

jr_010_4794:
    call Call_000_2e3b                            ; $4794: $cd $3b $2e
    ret                                           ; $4797: $c9


Call_010_4798:
    ld hl, $c0f4                                  ; $4798: $21 $f4 $c0
    ld a, [hl]                                    ; $479b: $7e
    or a                                          ; $479c: $b7
    jr z, jr_010_47a1                             ; $479d: $28 $02

    ld [hl], $01                                  ; $479f: $36 $01

jr_010_47a1:
    ld a, $20                                     ; $47a1: $3e $20
    ldh [$c1], a                                  ; $47a3: $e0 $c1
    xor a                                         ; $47a5: $af
    ld [$d48e], a                                 ; $47a6: $ea $8e $d4
    xor a                                         ; $47a9: $af
    ld [$d445], a                                 ; $47aa: $ea $45 $d4
    ld a, $29                                     ; $47ad: $3e $29
    call Call_010_4b14                            ; $47af: $cd $14 $4b
    ld a, [hl]                                    ; $47b2: $7e
    or a                                          ; $47b3: $b7
    jr nz, jr_010_47bb                            ; $47b4: $20 $05

    ld a, $01                                     ; $47b6: $3e $01
    ld [$d445], a                                 ; $47b8: $ea $45 $d4

jr_010_47bb:
    ld a, $3f                                     ; $47bb: $3e $3f
    call Call_010_4b14                            ; $47bd: $cd $14 $4b
    ld a, [hl]                                    ; $47c0: $7e
    ld [$d446], a                                 ; $47c1: $ea $46 $d4
    ld [hl], $00                                  ; $47c4: $36 $00
    rst $18                                       ; $47c6: $df

    db $1e, $12

    call Call_010_648b                            ; $47c9: $cd $8b $64
    ld [$d4cd], a                                 ; $47cc: $ea $cd $d4
    ld hl, $d4d5                                  ; $47cf: $21 $d5 $d4
    ld [hl], $00                                  ; $47d2: $36 $00
    cp $06                                        ; $47d4: $fe $06
    jr nz, jr_010_47da                            ; $47d6: $20 $02

    ld [hl], $01                                  ; $47d8: $36 $01

jr_010_47da:
    ld a, $10                                     ; $47da: $3e $10
    call Call_010_4b14                            ; $47dc: $cd $14 $4b
    ld a, [hl]                                    ; $47df: $7e
    ld [$d332], a                                 ; $47e0: $ea $32 $d3
    ld a, $11                                     ; $47e3: $3e $11
    call Call_010_4b14                            ; $47e5: $cd $14 $4b
    ld a, [hl]                                    ; $47e8: $7e
    ld [$d333], a                                 ; $47e9: $ea $33 $d3
    call Call_010_6341                            ; $47ec: $cd $41 $63
    call Call_010_5eef                            ; $47ef: $cd $ef $5e
    ld a, $25                                     ; $47f2: $3e $25
    ld [$d485], a                                 ; $47f4: $ea $85 $d4
    rst $18                                       ; $47f7: $df

    db $56, $04

    call Call_010_61fa                            ; $47fa: $cd $fa $61
    ld a, c                                       ; $47fd: $79
    ld [$d418], a                                 ; $47fe: $ea $18 $d4
    ld a, b                                       ; $4801: $78
    ld [$d419], a                                 ; $4802: $ea $19 $d4
    ld a, [$d443]                                 ; $4805: $fa $43 $d4
    cp $02                                        ; $4808: $fe $02
    jr nz, jr_010_4817                            ; $480a: $20 $0b

    rst $18                                       ; $480c: $df
    ld b, $13                                     ; $480d: $06 $13
    ld a, $01                                     ; $480f: $3e $01
    ld [$d443], a                                 ; $4811: $ea $43 $d4
    call Call_000_2e3b                            ; $4814: $cd $3b $2e

jr_010_4817:
    rst $18                                       ; $4817: $df

    db $02, $13

    ld a, $01                                     ; $481a: $3e $01
    ld [$d438], a                                 ; $481c: $ea $38 $d4
    call Call_010_6145                            ; $481f: $cd $45 $61
    call Call_000_2e3b                            ; $4822: $cd $3b $2e
    rst $18                                       ; $4825: $df

    db $06, $12

    call Call_000_2e3b                            ; $4828: $cd $3b $2e
    rst $18                                       ; $482b: $df

    db $0e, $12

    call Call_000_2e3b                            ; $482e: $cd $3b $2e
    call Call_000_2e3b                            ; $4831: $cd $3b $2e
    call Call_010_55ff                            ; $4834: $cd $ff $55
    call Call_000_2e3b                            ; $4837: $cd $3b $2e
    ld a, $2d                                     ; $483a: $3e $2d
    ld [$d485], a                                 ; $483c: $ea $85 $d4
    rst $18                                       ; $483f: $df

    db $62, $02

    ld a, $28                                     ; $4842: $3e $28
    call Call_010_4b14                            ; $4844: $cd $14 $4b
    ld a, [hl]                                    ; $4847: $7e
    ld [$d51c], a                                 ; $4848: $ea $1c $d5
    xor a                                         ; $484b: $af
    call Call_010_4cc3                            ; $484c: $cd $c3 $4c
    rst $18                                       ; $484f: $df

    db $04, $08

    ld c, $1e                                     ; $4852: $0e $1e

jr_010_4854:
    call Call_000_2e3b                            ; $4854: $cd $3b $2e
    ldh a, [$94]                                  ; $4857: $f0 $94
    or a                                          ; $4859: $b7
    jr nz, jr_010_485f                            ; $485a: $20 $03

    dec c                                         ; $485c: $0d
    jr nz, jr_010_4854                            ; $485d: $20 $f5

jr_010_485f:
    ld a, $3f                                     ; $485f: $3e $3f
    ld [$d485], a                                 ; $4861: $ea $85 $d4
    call Call_010_550b                            ; $4864: $cd $0b $55
    xor a                                         ; $4867: $af

Jump_010_4868:
    call Call_010_5ba6                            ; $4868: $cd $a6 $5b
    cp $8f                                        ; $486b: $fe $8f
    ret z                                         ; $486d: $c8

    cp $82                                        ; $486e: $fe $82
    jr z, jr_010_4877                             ; $4870: $28 $05

    cp $80                                        ; $4872: $fe $80
    jp nz, Jump_010_488b                          ; $4874: $c2 $8b $48

jr_010_4877:
    xor a                                         ; $4877: $af
    ld [$c834], a                                 ; $4878: $ea $34 $c8
    ld a, $01                                     ; $487b: $3e $01
    ld [$c839], a                                 ; $487d: $ea $39 $c8
    ld a, $01                                     ; $4880: $3e $01
    ld [$c8aa], a                                 ; $4882: $ea $aa $c8
    ld [$c8ea], a                                 ; $4885: $ea $ea $c8
    ld a, $81                                     ; $4888: $3e $81
    ret                                           ; $488a: $c9


Jump_010_488b:
    cp $81                                        ; $488b: $fe $81
    jp nz, Jump_010_489d                          ; $488d: $c2 $9d $48

    ld a, $20                                     ; $4890: $3e $20
    call Call_010_4b14                            ; $4892: $cd $14 $4b
    ld a, [$d325]                                 ; $4895: $fa $25 $d3
    ld b, a                                       ; $4898: $47
    add a                                         ; $4899: $87
    add b                                         ; $489a: $80
    ld [hl], a                                    ; $489b: $77
    ret                                           ; $489c: $c9


Jump_010_489d:
    cp $ff                                        ; $489d: $fe $ff
    jr nz, jr_010_48b2                            ; $489f: $20 $11

    rst $18                                       ; $48a1: $df
    ld [$cd13], sp                                ; $48a2: $08 $13 $cd
    ld h, $42                                     ; $48a5: $26 $42
    call Call_000_2e3b                            ; $48a7: $cd $3b $2e
    call Call_010_5632                            ; $48aa: $cd $32 $56
    ld a, $01                                     ; $48ad: $3e $01
    jp Jump_010_4868                              ; $48af: $c3 $68 $48


jr_010_48b2:
    ld a, [$d332]                                 ; $48b2: $fa $32 $d3
    cp $0b                                        ; $48b5: $fe $0b
    jr nc, jr_010_48e5                            ; $48b7: $30 $2c

    ld a, [$d329]                                 ; $48b9: $fa $29 $d3
    cp $0d                                        ; $48bc: $fe $0d
    jr z, jr_010_48e5                             ; $48be: $28 $25

    ld a, $13                                     ; $48c0: $3e $13
    call Call_010_4b14                            ; $48c2: $cd $14 $4b
    ld a, [hl]                                    ; $48c5: $7e
    cp $03                                        ; $48c6: $fe $03
    jr z, jr_010_48e5                             ; $48c8: $28 $1b

    ld a, [$c818]                                 ; $48ca: $fa $18 $c8
    bit 1, a                                      ; $48cd: $cb $4f
    jr nz, jr_010_48e5                            ; $48cf: $20 $14

    rst $18                                       ; $48d1: $df

    db $04, $3b

    rst $18                                       ; $48d4: $df

    db $58, $04

    rst $18                                       ; $48d7: $df

    db $02, $11

    xor a                                         ; $48da: $af
    ld [$d438], a                                 ; $48db: $ea $38 $d4
    ld a, $04                                     ; $48de: $3e $04
    rst $18                                       ; $48e0: $df

    db $00, $13

    jr jr_010_48ed                                ; $48e3: $18 $08

jr_010_48e5:
    ld a, $01                                     ; $48e5: $3e $01
    ld [$d438], a                                 ; $48e7: $ea $38 $d4
    rst $18                                       ; $48ea: $df

    db $02, $13

jr_010_48ed:
    ld a, $01                                     ; $48ed: $3e $01
    ld [$d438], a                                 ; $48ef: $ea $38 $d4
    ld a, [$d443]                                 ; $48f2: $fa $43 $d4
    cp $04                                        ; $48f5: $fe $04
    jr z, jr_010_48fc                             ; $48f7: $28 $03

    call Call_010_5632                            ; $48f9: $cd $32 $56

jr_010_48fc:
    call Call_010_56b0                            ; $48fc: $cd $b0 $56
    or a                                          ; $48ff: $b7
    jr z, jr_010_4921                             ; $4900: $28 $1f

    ld a, [$d443]                                 ; $4902: $fa $43 $d4
    cp $04                                        ; $4905: $fe $04
    jr nz, jr_010_4918                            ; $4907: $20 $0f

    rst $18                                       ; $4909: $df

    db $02, $15

    rst $18                                       ; $490c: $df

    db $56, $04

    rst $18                                       ; $490f: $df

    db $00, $04

    call Call_010_5632                            ; $4912: $cd $32 $56
    rst $18                                       ; $4915: $df

    db $0c, $12

jr_010_4918:
    call Call_000_2ed5                            ; $4918: $cd $d5 $2e

    db $05

    ld a, $01                                     ; $491c: $3e $01
    jp Jump_010_4868                              ; $491e: $c3 $68 $48


jr_010_4921:
    ld hl, $d485                                  ; $4921: $21 $85 $d4
    res 4, [hl]                                   ; $4924: $cb $a6
    rst $18                                       ; $4926: $df

    db $26, $02

    rst $18                                       ; $4929: $df

    db $30, $02

    ld a, $2d                                     ; $492c: $3e $2d
    ld [$d485], a                                 ; $492e: $ea $85 $d4
    ld a, [$d443]                                 ; $4931: $fa $43 $d4
    cp $04                                        ; $4934: $fe $04
    jr nz, jr_010_493d                            ; $4936: $20 $05

    rst $18                                       ; $4938: $df

    db $10, $11

    jr jr_010_4940                                ; $493b: $18 $03

jr_010_493d:
    call Call_010_4aef                            ; $493d: $cd $ef $4a

jr_010_4940:
    ld a, [$c8a0]                                 ; $4940: $fa $a0 $c8
    ld [$d35a], a                                 ; $4943: $ea $5a $d3
    ld a, [$c8a1]                                 ; $4946: $fa $a1 $c8
    ld [$d35b], a                                 ; $4949: $ea $5b $d3
    ld a, [$d32a]                                 ; $494c: $fa $2a $d3
    ld [$d35d], a                                 ; $494f: $ea $5d $d3
    ld a, [$d32b]                                 ; $4952: $fa $2b $d3
    ld [$d35e], a                                 ; $4955: $ea $5e $d3
    ld a, $2b                                     ; $4958: $3e $2b
    call Call_010_4b14                            ; $495a: $cd $14 $4b
    ld a, [hl]                                    ; $495d: $7e
    ld [$d35c], a                                 ; $495e: $ea $5c $d3
    ld hl, $d418                                  ; $4961: $21 $18 $d4
    ld de, $d369                                  ; $4964: $11 $69 $d3
    ld a, [hl+]                                   ; $4967: $2a
    ld [de], a                                    ; $4968: $12
    inc de                                        ; $4969: $13
    ld a, [hl]                                    ; $496a: $7e
    ld [de], a                                    ; $496b: $12
    ld a, $29                                     ; $496c: $3e $29
    call Call_010_4b14                            ; $496e: $cd $14 $4b
    ld a, [hl]                                    ; $4971: $7e
    ld [$d359], a                                 ; $4972: $ea $59 $d3
    ld a, [$d446]                                 ; $4975: $fa $46 $d4
    ld [$d447], a                                 ; $4978: $ea $47 $d4
    call Call_010_477c                            ; $497b: $cd $7c $47
    ld hl, $c0f4                                  ; $497e: $21 $f4 $c0
    ld a, [hl]                                    ; $4981: $7e
    or a                                          ; $4982: $b7
    jr z, jr_010_4987                             ; $4983: $28 $02

    ld [hl], $02                                  ; $4985: $36 $02

jr_010_4987:
    xor a                                         ; $4987: $af
    ld [$d35f], a                                 ; $4988: $ea $5f $d3

Jump_010_498b:
    xor a                                         ; $498b: $af
    ld [$d360], a                                 ; $498c: $ea $60 $d3
    ld a, [$d405]                                 ; $498f: $fa $05 $d4
    ld [$d519], a                                 ; $4992: $ea $19 $d5
    ld a, [$d402]                                 ; $4995: $fa $02 $d4
    ld [$d516], a                                 ; $4998: $ea $16 $d5
    ld hl, $d485                                  ; $499b: $21 $85 $d4
    set 2, [hl]                                   ; $499e: $cb $d6
    call Call_010_5f94                            ; $49a0: $cd $94 $5f
    call Call_010_706c                            ; $49a3: $cd $6c $70
    xor a                                         ; $49a6: $af
    ld [$d446], a                                 ; $49a7: $ea $46 $d4
    rst $18                                       ; $49aa: $df

    db $3c, $12

    call Call_010_433b                            ; $49ad: $cd $3b $43
    ld a, $11                                     ; $49b0: $3e $11
    ld [$d438], a                                 ; $49b2: $ea $38 $d4
    ld a, $01                                     ; $49b5: $3e $01
    ld hl, $4d45                                  ; $49b7: $21 $45 $4d
    call Call_000_23e8                            ; $49ba: $cd $e8 $23
    ld a, [$d443]                                 ; $49bd: $fa $43 $d4
    cp $04                                        ; $49c0: $fe $04
    jr nz, jr_010_4a0e                            ; $49c2: $20 $4a

    ld hl, $d331                                  ; $49c4: $21 $31 $d3
    ld [hl], $00                                  ; $49c7: $36 $00
    ld a, [$c33f]                                 ; $49c9: $fa $3f $c3
    or a                                          ; $49cc: $b7
    jr z, jr_010_49d8                             ; $49cd: $28 $09

    ld a, [$d417]                                 ; $49cf: $fa $17 $d4
    cp $08                                        ; $49d2: $fe $08
    jr nc, jr_010_49d8                            ; $49d4: $30 $02

    ld [hl], $01                                  ; $49d6: $36 $01

jr_010_49d8:
    ld c, $5a                                     ; $49d8: $0e $5a

jr_010_49da:
    call Call_000_2e3b                            ; $49da: $cd $3b $2e
    push hl                                       ; $49dd: $e5
    push de                                       ; $49de: $d5
    push bc                                       ; $49df: $c5
    call Call_010_5617                            ; $49e0: $cd $17 $56
    ld a, c                                       ; $49e3: $79
    pop bc                                        ; $49e4: $c1
    pop de                                        ; $49e5: $d1
    pop hl                                        ; $49e6: $e1
    or a                                          ; $49e7: $b7
    jr nz, jr_010_49f1                            ; $49e8: $20 $07

    ld a, [hl]                                    ; $49ea: $7e
    or a                                          ; $49eb: $b7
    jr nz, jr_010_49f1                            ; $49ec: $20 $03

    dec c                                         ; $49ee: $0d
    jr nz, jr_010_49da                            ; $49ef: $20 $e9

jr_010_49f1:
    call Call_000_30eb                            ; $49f1: $cd $eb $30
    rst $18                                       ; $49f4: $df

    db $02, $15

    rst $18                                       ; $49f7: $df

    db $56, $04

    rst $18                                       ; $49fa: $df

    db $5c, $04

    rst $18                                       ; $49fd: $df

    db $00, $04

    call Call_010_5617                            ; $4a00: $cd $17 $56
    ld a, c                                       ; $4a03: $79
    rst $18                                       ; $4a04: $df

    db $00, $13

    rst $18                                       ; $4a07: $df

    db $0c, $12

    call Call_000_2ed5                            ; $4a0a: $cd $d5 $2e

    db $01

jr_010_4a0e:
    ld a, [$d48e]                                 ; $4a0e: $fa $8e $d4
    bit 4, a                                      ; $4a11: $cb $67
    jr nz, jr_010_4a1e                            ; $4a13: $20 $09

    bit 3, a                                      ; $4a15: $cb $5f
    jr z, jr_010_4a1e                             ; $4a17: $28 $05

    ld a, $08                                     ; $4a19: $3e $08
    rst $18                                       ; $4a1b: $df

    db $00, $3b

jr_010_4a1e:
    call Call_000_2ed5                            ; $4a1e: $cd $d5 $2e

    db $01

    call Call_010_6e99                            ; $4a22: $cd $99 $6e
    push af                                       ; $4a25: $f5
    ld hl, $4d45                                  ; $4a26: $21 $45 $4d
    call Call_000_2449                            ; $4a29: $cd $49 $24
    pop af                                        ; $4a2c: $f1
    ld hl, $ff90                                  ; $4a2d: $21 $90 $ff
    bit 1, [hl]                                   ; $4a30: $cb $4e
    jr nz, jr_010_4a38                            ; $4a32: $20 $04

    bit 1, [hl]                                   ; $4a34: $cb $4e
    jr z, jr_010_4a82                             ; $4a36: $28 $4a

jr_010_4a38:
    ld hl, $d35f                                  ; $4a38: $21 $5f $d3
    bit 0, [hl]                                   ; $4a3b: $cb $46
    jr nz, jr_010_4a62                            ; $4a3d: $20 $23

    ld [hl], $01                                  ; $4a3f: $36 $01
    ld [$d367], a                                 ; $4a41: $ea $67 $d3
    ld hl, $d400                                  ; $4a44: $21 $00 $d4
    ld de, $d361                                  ; $4a47: $11 $61 $d3
    ld bc, $0006                                  ; $4a4a: $01 $06 $00
    call Call_000_03d3                            ; $4a4d: $cd $d3 $03
    ld hl, $d51d                                  ; $4a50: $21 $1d $d5
    ld de, $d36d                                  ; $4a53: $11 $6d $d3
    ld bc, $0006                                  ; $4a56: $01 $06 $00
    call Call_000_03d3                            ; $4a59: $cd $d3 $03
    ld a, [$d446]                                 ; $4a5c: $fa $46 $d4
    ld [$d368], a                                 ; $4a5f: $ea $68 $d3

jr_010_4a62:
    xor a                                         ; $4a62: $af
    ld [$d444], a                                 ; $4a63: $ea $44 $d4
    rst $18                                       ; $4a66: $df
    ld b, b                                       ; $4a67: $40
    ld [bc], a                                    ; $4a68: $02
    ld a, $28                                     ; $4a69: $3e $28
    call Call_010_4b14                            ; $4a6b: $cd $14 $4b
    ld a, [$d51c]                                 ; $4a6e: $fa $1c $d5
    ld [hl], a                                    ; $4a71: $77
    ld a, [$d447]                                 ; $4a72: $fa $47 $d4
    ld [$d446], a                                 ; $4a75: $ea $46 $d4
    call Call_010_5617                            ; $4a78: $cd $17 $56
    ld a, c                                       ; $4a7b: $79
    rst $18                                       ; $4a7c: $df
    nop                                           ; $4a7d: $00
    inc de                                        ; $4a7e: $13
    jp Jump_010_498b                              ; $4a7f: $c3 $8b $49


jr_010_4a82:
    push af                                       ; $4a82: $f5
    rst $18                                       ; $4a83: $df

    db $0e, $12

    call Call_000_2e3b                            ; $4a86: $cd $3b $2e
    ld a, $21                                     ; $4a89: $3e $21
    call Call_010_4b14                            ; $4a8b: $cd $14 $4b
    ld a, [$d4cd]                                 ; $4a8e: $fa $cd $d4
    cp $06                                        ; $4a91: $fe $06
    jr nz, jr_010_4a98                            ; $4a93: $20 $03

    inc [hl]                                      ; $4a95: $34
    jr jr_010_4a98                                ; $4a96: $18 $00

jr_010_4a98:
    ld hl, $d438                                  ; $4a98: $21 $38 $d4
    ld a, [hl]                                    ; $4a9b: $7e
    and $0f                                       ; $4a9c: $e6 $0f
    ld [hl], a                                    ; $4a9e: $77
    pop af                                        ; $4a9f: $f1
    push af                                       ; $4aa0: $f5
    ld [$d4dc], a                                 ; $4aa1: $ea $dc $d4
    push hl                                       ; $4aa4: $e5
    push af                                       ; $4aa5: $f5
    ld a, $14                                     ; $4aa6: $3e $14
    call Call_010_4b14                            ; $4aa8: $cd $14 $4b
    pop af                                        ; $4aab: $f1
    ld [hl], a                                    ; $4aac: $77
    pop hl                                        ; $4aad: $e1
    push af                                       ; $4aae: $f5
    call Call_010_55ff                            ; $4aaf: $cd $ff $55
    pop af                                        ; $4ab2: $f1
    rst $18                                       ; $4ab3: $df

    db $06, $3b

    push af                                       ; $4ab6: $f5
    ldh a, [$9e]                                  ; $4ab7: $f0 $9e
    or a                                          ; $4ab9: $b7
    jr z, jr_010_4ac9                             ; $4aba: $28 $0d

    ldh a, [$90]                                  ; $4abc: $f0 $90
    bit 2, a                                      ; $4abe: $cb $57
    jr z, jr_010_4ac9                             ; $4ac0: $28 $07

    ld a, $13                                     ; $4ac2: $3e $13
    call Call_010_4b14                            ; $4ac4: $cd $14 $4b
    ld [hl], $01                                  ; $4ac7: $36 $01

jr_010_4ac9:
    pop af                                        ; $4ac9: $f1
    or a                                          ; $4aca: $b7
    jr nz, jr_010_4aed                            ; $4acb: $20 $20

    ld a, $29                                     ; $4acd: $3e $29
    call Call_010_4b14                            ; $4acf: $cd $14 $4b
    ld [hl], $01                                  ; $4ad2: $36 $01
    ld a, $22                                     ; $4ad4: $3e $22
    call Call_010_4b14                            ; $4ad6: $cd $14 $4b
    ld de, $d400                                  ; $4ad9: $11 $00 $d4
    ld a, [de]                                    ; $4adc: $1a
    ld [hl+], a                                   ; $4add: $22
    inc de                                        ; $4ade: $13
    ld a, [de]                                    ; $4adf: $1a
    ld [hl+], a                                   ; $4ae0: $22
    inc de                                        ; $4ae1: $13
    ld a, [de]                                    ; $4ae2: $1a
    ld [hl+], a                                   ; $4ae3: $22
    inc de                                        ; $4ae4: $13
    ld a, [de]                                    ; $4ae5: $1a
    ld [hl+], a                                   ; $4ae6: $22
    inc de                                        ; $4ae7: $13
    ld a, [de]                                    ; $4ae8: $1a
    ld [hl+], a                                   ; $4ae9: $22
    inc de                                        ; $4aea: $13
    ld a, [de]                                    ; $4aeb: $1a
    ld [hl], a                                    ; $4aec: $77

jr_010_4aed:
    pop af                                        ; $4aed: $f1
    ret                                           ; $4aee: $c9


Call_010_4aef:
    ld a, [$d329]                                 ; $4aef: $fa $29 $d3
    cp $0d                                        ; $4af2: $fe $0d
    jr nz, jr_010_4afb                            ; $4af4: $20 $05

    ld bc, $0430                                  ; $4af6: $01 $30 $04
    jr jr_010_4b0a                                ; $4af9: $18 $0f

jr_010_4afb:
    ld a, [$d32a]                                 ; $4afb: $fa $2a $d3
    cp $02                                        ; $4afe: $fe $02
    jr c, jr_010_4b07                             ; $4b00: $38 $05

    ld bc, $0824                                  ; $4b02: $01 $24 $08
    jr jr_010_4b0a                                ; $4b05: $18 $03

jr_010_4b07:
    ld bc, $0332                                  ; $4b07: $01 $32 $03

jr_010_4b0a:
    ld a, b                                       ; $4b0a: $78
    push bc                                       ; $4b0b: $c5
    rst $18                                       ; $4b0c: $df

    db $5a, $04

    pop bc                                        ; $4b0f: $c1
    call Call_000_2ef0                            ; $4b10: $cd $f0 $2e
    ret                                           ; $4b13: $c9


Call_010_4b14:
    push de                                       ; $4b14: $d5
    ld hl, $c880                                  ; $4b15: $21 $80 $c8
    ld d, $00                                     ; $4b18: $16 $00
    ld e, a                                       ; $4b1a: $5f
    ld a, [$c835]                                 ; $4b1b: $fa $35 $c8
    or a                                          ; $4b1e: $b7
    jr z, jr_010_4b25                             ; $4b1f: $28 $04

    ld a, $40                                     ; $4b21: $3e $40
    add e                                         ; $4b23: $83
    ld e, a                                       ; $4b24: $5f

jr_010_4b25:
    add hl, de                                    ; $4b25: $19
    pop de                                        ; $4b26: $d1
    ret                                           ; $4b27: $c9


Call_010_4b28:
    ld a, $06                                     ; $4b28: $3e $06
    ldh [$96], a                                  ; $4b2a: $e0 $96
    ldh [rSVBK], a                                ; $4b2c: $e0 $70
    ld hl, $d000                                  ; $4b2e: $21 $00 $d0
    ld c, $70                                     ; $4b31: $0e $70
    call Call_000_03a7                            ; $4b33: $cd $a7 $03
    xor a                                         ; $4b36: $af
    ld [$d4de], a                                 ; $4b37: $ea $de $d4
    ld [$d4e3], a                                 ; $4b3a: $ea $e3 $d4
    ld [$d4e4], a                                 ; $4b3d: $ea $e4 $d4
    ld [$d4e7], a                                 ; $4b40: $ea $e7 $d4
    ld [$d4ed], a                                 ; $4b43: $ea $ed $d4
    ld [$d4ef], a                                 ; $4b46: $ea $ef $d4
    ld [$c2a6], a                                 ; $4b49: $ea $a6 $c2
    ld [$c0f4], a                                 ; $4b4c: $ea $f4 $c0
    ld [$c832], a                                 ; $4b4f: $ea $32 $c8
    ld [$c82c], a                                 ; $4b52: $ea $2c $c8
    ld [$c96c], a                                 ; $4b55: $ea $6c $c9
    ld hl, $c878                                  ; $4b58: $21 $78 $c8
    ld [hl+], a                                   ; $4b5b: $22
    ld [hl+], a                                   ; $4b5c: $22
    ld [hl+], a                                   ; $4b5d: $22
    ld [hl+], a                                   ; $4b5e: $22
    ld [hl+], a                                   ; $4b5f: $22
    ld [hl+], a                                   ; $4b60: $22
    ld [hl+], a                                   ; $4b61: $22
    ld [hl+], a                                   ; $4b62: $22
    ld hl, $caad                                  ; $4b63: $21 $ad $ca
    ld [hl+], a                                   ; $4b66: $22
    ld [hl+], a                                   ; $4b67: $22
    ld [hl+], a                                   ; $4b68: $22
    ld h, a                                       ; $4b69: $67
    ld l, a                                       ; $4b6a: $6f
    call Call_010_4bc7                            ; $4b6b: $cd $c7 $4b
    ld bc, $8000                                  ; $4b6e: $01 $00 $80
    rst $18                                       ; $4b71: $df

    db $1e, $02

    ld bc, $ff01                                  ; $4b74: $01 $01 $ff
    rst $18                                       ; $4b77: $df

    db $1e, $02

    ld a, $00                                     ; $4b7a: $3e $00
    ld [$c834], a                                 ; $4b7c: $ea $34 $c8
    rst $18                                       ; $4b7f: $df

    db $2a, $02

    ld bc, $ffff                                  ; $4b82: $01 $ff $ff
    rst $18                                       ; $4b85: $df

    db $4e, $0a

    call Call_000_0a61                            ; $4b88: $cd $61 $0a
    ld a, l                                       ; $4b8b: $7d
    ld [$c9fe], a                                 ; $4b8c: $ea $fe $c9
    ld a, h                                       ; $4b8f: $7c
    ld [$c9ff], a                                 ; $4b90: $ea $ff $c9
    ret                                           ; $4b93: $c9


    ld c, $08                                     ; $4b94: $0e $08
    call Call_000_25a1                            ; $4b96: $cd $a1 $25
    call Call_000_2625                            ; $4b99: $cd $25 $26
    rst $18                                       ; $4b9c: $df

    db $0a, $01

    xor a                                         ; $4b9f: $af
    ld [$c0f4], a                                 ; $4ba0: $ea $f4 $c0
    ld a, $90                                     ; $4ba3: $3e $90
    ldh [rWY], a                                  ; $4ba5: $e0 $4a
    call Call_000_2683                            ; $4ba7: $cd $83 $26
    ld a, $09                                     ; $4baa: $3e $09
    ld [$c834], a                                 ; $4bac: $ea $34 $c8
    ld a, [$c2a6]                                 ; $4baf: $fa $a6 $c2
    or a                                          ; $4bb2: $b7
    jr z, jr_010_4bc3                             ; $4bb3: $28 $0e

    ld [$c46a], a                                 ; $4bb5: $ea $6a $c4
    ld a, $00                                     ; $4bb8: $3e $00
    ld [$c450], a                                 ; $4bba: $ea $50 $c4
    ld a, $fa                                     ; $4bbd: $3e $fa
    ld [$c441], a                                 ; $4bbf: $ea $41 $c4
    ret                                           ; $4bc2: $c9


jr_010_4bc3:
    rst $18                                       ; $4bc3: $df

    db $50, $0a

    ret                                           ; $4bc6: $c9


Call_010_4bc7:
    push bc                                       ; $4bc7: $c5
    ld b, a                                       ; $4bc8: $47
    ldh a, [$96]                                  ; $4bc9: $f0 $96
    push af                                       ; $4bcb: $f5
    ld a, $06                                     ; $4bcc: $3e $06
    ldh [$96], a                                  ; $4bce: $e0 $96
    ldh [rSVBK], a                                ; $4bd0: $e0 $70
    ld a, b                                       ; $4bd2: $78
    ld [$c870], a                                 ; $4bd3: $ea $70 $c8
    ld a, l                                       ; $4bd6: $7d
    ld [$c871], a                                 ; $4bd7: $ea $71 $c8
    ld a, h                                       ; $4bda: $7c
    ld [$c872], a                                 ; $4bdb: $ea $72 $c8
    pop af                                        ; $4bde: $f1
    ldh [$96], a                                  ; $4bdf: $e0 $96
    ldh [rSVBK], a                                ; $4be1: $e0 $70
    pop bc                                        ; $4be3: $c1
    ret                                           ; $4be4: $c9


    bit 7, a                                      ; $4be5: $cb $7f
    jr nz, jr_010_4bf9                            ; $4be7: $20 $10

    push af                                       ; $4be9: $f5
    ld a, $06                                     ; $4bea: $3e $06
    ldh [$96], a                                  ; $4bec: $e0 $96
    ldh [rSVBK], a                                ; $4bee: $e0 $70
    ld hl, $d4ed                                  ; $4bf0: $21 $ed $d4
    ld [hl], $01                                  ; $4bf3: $36 $01
    inc hl                                        ; $4bf5: $23
    pop af                                        ; $4bf6: $f1
    ld [hl], a                                    ; $4bf7: $77
    ret                                           ; $4bf8: $c9


jr_010_4bf9:
    ld a, $06                                     ; $4bf9: $3e $06
    ldh [$96], a                                  ; $4bfb: $e0 $96
    ldh [rSVBK], a                                ; $4bfd: $e0 $70
    xor a                                         ; $4bff: $af
    ld [$d4ed], a                                 ; $4c00: $ea $ed $d4
    ret                                           ; $4c03: $c9


    ld a, $06                                     ; $4c04: $3e $06
    ldh [$96], a                                  ; $4c06: $e0 $96
    ldh [rSVBK], a                                ; $4c08: $e0 $70
    ld b, h                                       ; $4c0a: $44
    ld c, l                                       ; $4c0b: $4d
    ld hl, $d4de                                  ; $4c0c: $21 $de $d4
    ld [hl], $01                                  ; $4c0f: $36 $01
    inc hl                                        ; $4c11: $23
    ld [hl], c                                    ; $4c12: $71
    inc hl                                        ; $4c13: $23
    ld [hl], b                                    ; $4c14: $70
    inc hl                                        ; $4c15: $23
    ld [hl], e                                    ; $4c16: $73
    inc hl                                        ; $4c17: $23
    ld [hl], d                                    ; $4c18: $72
    ret                                           ; $4c19: $c9


    ld a, $06                                     ; $4c1a: $3e $06
    ldh [$96], a                                  ; $4c1c: $e0 $96
    ldh [rSVBK], a                                ; $4c1e: $e0 $70
    ld hl, $d4e3                                  ; $4c20: $21 $e3 $d4
    ld [hl], $01                                  ; $4c23: $36 $01
    ret                                           ; $4c25: $c9


    ld a, $06                                     ; $4c26: $3e $06
    ldh [$96], a                                  ; $4c28: $e0 $96
    ldh [rSVBK], a                                ; $4c2a: $e0 $70
    ld hl, $d4e4                                  ; $4c2c: $21 $e4 $d4
    ld [hl], $01                                  ; $4c2f: $36 $01
    inc hl                                        ; $4c31: $23
    ld [hl], e                                    ; $4c32: $73
    inc hl                                        ; $4c33: $23
    ld [hl], d                                    ; $4c34: $72
    ret                                           ; $4c35: $c9


    ld a, $06                                     ; $4c36: $3e $06
    ldh [$96], a                                  ; $4c38: $e0 $96
    ldh [rSVBK], a                                ; $4c3a: $e0 $70
    ld hl, $d4e7                                  ; $4c3c: $21 $e7 $d4
    ld [hl], $01                                  ; $4c3f: $36 $01
    inc hl                                        ; $4c41: $23
    ld [hl], e                                    ; $4c42: $73
    inc hl                                        ; $4c43: $23
    ld [hl], c                                    ; $4c44: $71
    inc hl                                        ; $4c45: $23
    ld [hl], b                                    ; $4c46: $70
    inc hl                                        ; $4c47: $23
    xor a                                         ; $4c48: $af
    ld [hl+], a                                   ; $4c49: $22
    ld [hl], a                                    ; $4c4a: $77
    ret                                           ; $4c4b: $c9


    ld a, $06                                     ; $4c4c: $3e $06
    ldh [$96], a                                  ; $4c4e: $e0 $96
    ldh [rSVBK], a                                ; $4c50: $e0 $70
    ld hl, $d4e7                                  ; $4c52: $21 $e7 $d4
    ld [hl], $01                                  ; $4c55: $36 $01
    inc hl                                        ; $4c57: $23
    ld [hl], e                                    ; $4c58: $73
    inc hl                                        ; $4c59: $23
    ld [hl], c                                    ; $4c5a: $71
    inc hl                                        ; $4c5b: $23
    ld [hl], b                                    ; $4c5c: $70
    inc hl                                        ; $4c5d: $23
    ld [hl], d                                    ; $4c5e: $72
    inc hl                                        ; $4c5f: $23
    ld [hl], d                                    ; $4c60: $72
    ret                                           ; $4c61: $c9


    push af                                       ; $4c62: $f5
    ld a, $06                                     ; $4c63: $3e $06
    ldh [$96], a                                  ; $4c65: $e0 $96
    ldh [rSVBK], a                                ; $4c67: $e0 $70
    pop af                                        ; $4c69: $f1
    ld [$d4ef], a                                 ; $4c6a: $ea $ef $d4
    ret                                           ; $4c6d: $c9


    ld a, $06                                     ; $4c6e: $3e $06
    ldh [$96], a                                  ; $4c70: $e0 $96
    ldh [rSVBK], a                                ; $4c72: $e0 $70
    ld a, [$d443]                                 ; $4c74: $fa $43 $d4
    cp $02                                        ; $4c77: $fe $02
    jr nz, jr_010_4c8b                            ; $4c79: $20 $10

    rst $18                                       ; $4c7b: $df

    db $06, $13

    ld a, $01                                     ; $4c7e: $3e $01
    ld [$d443], a                                 ; $4c80: $ea $43 $d4
    call Call_000_2e3b                            ; $4c83: $cd $3b $2e
    rst $18                                       ; $4c86: $df

    db $12, $13

    jr jr_010_4c97                                ; $4c89: $18 $0c

jr_010_4c8b:
    cp $ff                                        ; $4c8b: $fe $ff
    jr nz, jr_010_4c97                            ; $4c8d: $20 $08

    rst $18                                       ; $4c8f: $df
    inc b                                         ; $4c90: $04
    ld c, d                                       ; $4c91: $4a
    ld a, $01                                     ; $4c92: $3e $01
    rst $18                                       ; $4c94: $df
    nop                                           ; $4c95: $00
    inc de                                        ; $4c96: $13

jr_010_4c97:
    xor a                                         ; $4c97: $af
    ld [$d4dd], a                                 ; $4c98: $ea $dd $d4
    rst $18                                       ; $4c9b: $df

    db $04, $01

    rst $18                                       ; $4c9e: $df

    db $0c, $11

    rst $18                                       ; $4ca1: $df

    db $00, $05

    ld a, [$c82d]                                 ; $4ca4: $fa $2d $c8
    and $7f                                       ; $4ca7: $e6 $7f
    ld [$c82d], a                                 ; $4ca9: $ea $2d $c8
    ret                                           ; $4cac: $c9


    push af                                       ; $4cad: $f5
    ld a, $06                                     ; $4cae: $3e $06
    ldh [$96], a                                  ; $4cb0: $e0 $96
    ldh [rSVBK], a                                ; $4cb2: $e0 $70
    pop af                                        ; $4cb4: $f1
    ld [$d4dd], a                                 ; $4cb5: $ea $dd $d4
    ret                                           ; $4cb8: $c9


    ld a, $06                                     ; $4cb9: $3e $06
    ldh [$96], a                                  ; $4cbb: $e0 $96
    ldh [rSVBK], a                                ; $4cbd: $e0 $70
    call Call_000_2e3b                            ; $4cbf: $cd $3b $2e
    ret                                           ; $4cc2: $c9


Call_010_4cc3:
    ld b, a                                       ; $4cc3: $47
    ld a, [$c870]                                 ; $4cc4: $fa $70 $c8
    or a                                          ; $4cc7: $b7
    ret z                                         ; $4cc8: $c8

    ldh a, [$96]                                  ; $4cc9: $f0 $96
    push af                                       ; $4ccb: $f5
    ld hl, $c871                                  ; $4ccc: $21 $71 $c8
    ld a, [hl+]                                   ; $4ccf: $2a
    ld h, [hl]                                    ; $4cd0: $66
    ld l, a                                       ; $4cd1: $6f
    ld a, [$c870]                                 ; $4cd2: $fa $70 $c8
    call Call_000_0184                            ; $4cd5: $cd $84 $01
    pop af                                        ; $4cd8: $f1
    ldh [$96], a                                  ; $4cd9: $e0 $96
    ldh [rSVBK], a                                ; $4cdb: $e0 $70
    ret                                           ; $4cdd: $c9


Call_010_4cde:
    ld hl, $d409                                  ; $4cde: $21 $09 $d4
    ld a, [hl+]                                   ; $4ce1: $2a
    ld d, [hl]                                    ; $4ce2: $56
    ld e, a                                       ; $4ce3: $5f
    ld hl, $d40b                                  ; $4ce4: $21 $0b $d4
    ld a, [hl+]                                   ; $4ce7: $2a
    ld h, [hl]                                    ; $4ce8: $66
    ld l, a                                       ; $4ce9: $6f
    push hl                                       ; $4cea: $e5
    push de                                       ; $4ceb: $d5
    call Call_000_1a03                            ; $4cec: $cd $03 $1a
    ld a, b                                       ; $4cef: $78
    ld [$d414], a                                 ; $4cf0: $ea $14 $d4
    pop de                                        ; $4cf3: $d1
    ld h, d                                       ; $4cf4: $62
    ld l, e                                       ; $4cf5: $6b
    call Call_000_0c8e                            ; $4cf6: $cd $8e $0c
    pop de                                        ; $4cf9: $d1
    push hl                                       ; $4cfa: $e5
    ld h, d                                       ; $4cfb: $62
    ld l, e                                       ; $4cfc: $6b
    call Call_000_0c8e                            ; $4cfd: $cd $8e $0c
    pop de                                        ; $4d00: $d1
    add hl, de                                    ; $4d01: $19
    call Call_000_0f04                            ; $4d02: $cd $04 $0f
    ld [$d413], a                                 ; $4d05: $ea $13 $d4
    ret                                           ; $4d08: $c9


Call_010_4d09:
    ld hl, $d407                                  ; $4d09: $21 $07 $d4
    ld a, [hl+]                                   ; $4d0c: $2a
    ld h, [hl]                                    ; $4d0d: $66
    ld l, a                                       ; $4d0e: $6f
    ld a, h                                       ; $4d0f: $7c
    or l                                          ; $4d10: $b5
    ret nz                                        ; $4d11: $c0

    ld hl, $d40d                                  ; $4d12: $21 $0d $d4
    ld a, [hl+]                                   ; $4d15: $2a
    ld h, [hl]                                    ; $4d16: $66
    ld l, a                                       ; $4d17: $6f
    bit 7, h                                      ; $4d18: $cb $7c
    jr z, jr_010_4d23                             ; $4d1a: $28 $07

    ld a, l                                       ; $4d1c: $7d
    cpl                                           ; $4d1d: $2f
    ld l, a                                       ; $4d1e: $6f
    ld a, h                                       ; $4d1f: $7c
    cpl                                           ; $4d20: $2f
    ld h, a                                       ; $4d21: $67
    inc hl                                        ; $4d22: $23

jr_010_4d23:
    ld a, h                                       ; $4d23: $7c
    or a                                          ; $4d24: $b7
    ret nz                                        ; $4d25: $c0

    ld a, l                                       ; $4d26: $7d
    cp $20                                        ; $4d27: $fe $20
    ret nc                                        ; $4d29: $d0

    xor a                                         ; $4d2a: $af
    ld [$d415], a                                 ; $4d2b: $ea $15 $d4
    ld hl, $d406                                  ; $4d2e: $21 $06 $d4
    ld [hl+], a                                   ; $4d31: $22
    ld [hl+], a                                   ; $4d32: $22
    ld [hl], a                                    ; $4d33: $77
    ld hl, $d40d                                  ; $4d34: $21 $0d $d4
    ld [hl+], a                                   ; $4d37: $22
    ld [hl], a                                    ; $4d38: $77
    ld hl, $d489                                  ; $4d39: $21 $89 $d4
    ld a, [hl]                                    ; $4d3c: $7e
    or a                                          ; $4d3d: $b7
    jr z, jr_010_4d44                             ; $4d3e: $28 $04

    ld [hl], $00                                  ; $4d40: $36 $00
    rst $08                                       ; $4d42: $cf
    ld b, b                                       ; $4d43: $40

jr_010_4d44:
    ret                                           ; $4d44: $c9


    ld a, $06                                     ; $4d45: $3e $06
    ldh [$96], a                                  ; $4d47: $e0 $96
    ldh [rSVBK], a                                ; $4d49: $e0 $70
    ld a, [$d415]                                 ; $4d4b: $fa $15 $d4
    or a                                          ; $4d4e: $b7
    jr nz, jr_010_4d56                            ; $4d4f: $20 $05

    call Call_010_4d86                            ; $4d51: $cd $86 $4d
    jr jr_010_4d5c                                ; $4d54: $18 $06

jr_010_4d56:
    call Call_010_4ee0                            ; $4d56: $cd $e0 $4e
    call Call_010_4d09                            ; $4d59: $cd $09 $4d

jr_010_4d5c:
    call Call_010_527c                            ; $4d5c: $cd $7c $52
    rst $18                                       ; $4d5f: $df

    db $1c, $08

    ldh a, [$94]                                  ; $4d62: $f0 $94
    and $02                                       ; $4d64: $e6 $02
    jr z, jr_010_4d6b                             ; $4d66: $28 $03

    ld [$d360], a                                 ; $4d68: $ea $60 $d3

jr_010_4d6b:
    call Call_010_7077                            ; $4d6b: $cd $77 $70
    ld hl, $d407                                  ; $4d6e: $21 $07 $d4
    ld de, $caab                                  ; $4d71: $11 $ab $ca
    ld a, [hl+]                                   ; $4d74: $2a
    ld [de], a                                    ; $4d75: $12
    inc de                                        ; $4d76: $13
    ld a, [hl]                                    ; $4d77: $7e
    ld [de], a                                    ; $4d78: $12
    ld hl, $d407                                  ; $4d79: $21 $07 $d4
    ld a, [hl+]                                   ; $4d7c: $2a
    ld d, [hl]                                    ; $4d7d: $56
    ld e, a                                       ; $4d7e: $5f
    ld hl, $d4c1                                  ; $4d7f: $21 $c1 $d4
    ld [hl], e                                    ; $4d82: $73
    inc hl                                        ; $4d83: $23
    ld [hl], d                                    ; $4d84: $72
    ret                                           ; $4d85: $c9


Call_010_4d86:
    call Call_010_4cde                            ; $4d86: $cd $de $4c
    ld hl, $d40f                                  ; $4d89: $21 $0f $d4
    ld a, [hl+]                                   ; $4d8c: $2a
    ld h, [hl]                                    ; $4d8d: $66
    ld l, a                                       ; $4d8e: $6f
    ld a, [$d413]                                 ; $4d8f: $fa $13 $d4
    call Call_000_0bce                            ; $4d92: $cd $ce $0b
    ld a, $40                                     ; $4d95: $3e $40
    call Call_000_0bce                            ; $4d97: $cd $ce $0b
    ld a, [$d414]                                 ; $4d9a: $fa $14 $d4
    add $40                                       ; $4d9d: $c6 $40
    ld b, a                                       ; $4d9f: $47
    ld c, $00                                     ; $4da0: $0e $00
    call Call_000_11ac                            ; $4da2: $cd $ac $11
    push hl                                       ; $4da5: $e5
    ld hl, $d40b                                  ; $4da6: $21 $0b $d4
    ld a, [hl+]                                   ; $4da9: $2a
    ld h, [hl]                                    ; $4daa: $66
    ld l, a                                       ; $4dab: $6f
    add hl, de                                    ; $4dac: $19
    ld a, l                                       ; $4dad: $7d
    ld [$d40b], a                                 ; $4dae: $ea $0b $d4
    ld a, h                                       ; $4db1: $7c
    ld [$d40c], a                                 ; $4db2: $ea $0c $d4
    pop de                                        ; $4db5: $d1
    ld hl, $d409                                  ; $4db6: $21 $09 $d4
    ld a, [hl+]                                   ; $4db9: $2a
    ld h, [hl]                                    ; $4dba: $66
    ld l, a                                       ; $4dbb: $6f
    add hl, de                                    ; $4dbc: $19
    ld a, l                                       ; $4dbd: $7d
    ld [$d409], a                                 ; $4dbe: $ea $09 $d4
    ld a, h                                       ; $4dc1: $7c
    ld [$d40a], a                                 ; $4dc2: $ea $0a $d4
    ld hl, $d40f                                  ; $4dc5: $21 $0f $d4
    ld a, [hl+]                                   ; $4dc8: $2a
    ld h, [hl]                                    ; $4dc9: $66
    ld l, a                                       ; $4dca: $6f
    ld a, $fc                                     ; $4dcb: $3e $fc
    call Call_000_0bce                            ; $4dcd: $cd $ce $0b
    ld a, l                                       ; $4dd0: $7d
    ld [$d40f], a                                 ; $4dd1: $ea $0f $d4
    ld a, h                                       ; $4dd4: $7c
    ld [$d410], a                                 ; $4dd5: $ea $10 $d4
    ld hl, $d411                                  ; $4dd8: $21 $11 $d4
    ld a, [hl+]                                   ; $4ddb: $2a
    ld h, [hl]                                    ; $4ddc: $66
    ld l, a                                       ; $4ddd: $6f
    ld a, [$d413]                                 ; $4dde: $fa $13 $d4
    call Call_000_0bec                            ; $4de1: $cd $ec $0b
    ld a, $40                                     ; $4de4: $3e $40
    call Call_000_0bce                            ; $4de6: $cd $ce $0b
    ld a, [$d414]                                 ; $4de9: $fa $14 $d4
    ld b, a                                       ; $4dec: $47
    ld c, $00                                     ; $4ded: $0e $00
    call Call_000_11ba                            ; $4def: $cd $ba $11
    push hl                                       ; $4df2: $e5
    ld hl, $d40b                                  ; $4df3: $21 $0b $d4
    ld a, [hl+]                                   ; $4df6: $2a
    ld h, [hl]                                    ; $4df7: $66
    ld l, a                                       ; $4df8: $6f
    add hl, de                                    ; $4df9: $19
    ld a, l                                       ; $4dfa: $7d
    ld [$d40b], a                                 ; $4dfb: $ea $0b $d4
    ld a, h                                       ; $4dfe: $7c
    ld [$d40c], a                                 ; $4dff: $ea $0c $d4
    pop de                                        ; $4e02: $d1
    ld hl, $d409                                  ; $4e03: $21 $09 $d4
    ld a, [hl+]                                   ; $4e06: $2a
    ld h, [hl]                                    ; $4e07: $66
    ld l, a                                       ; $4e08: $6f
    add hl, de                                    ; $4e09: $19
    ld a, l                                       ; $4e0a: $7d
    ld [$d409], a                                 ; $4e0b: $ea $09 $d4
    ld a, h                                       ; $4e0e: $7c
    ld [$d40a], a                                 ; $4e0f: $ea $0a $d4
    ld hl, $d411                                  ; $4e12: $21 $11 $d4
    ld a, [hl+]                                   ; $4e15: $2a
    ld h, [hl]                                    ; $4e16: $66
    ld l, a                                       ; $4e17: $6f
    ld a, $fc                                     ; $4e18: $3e $fc
    call Call_000_0bce                            ; $4e1a: $cd $ce $0b
    ld a, l                                       ; $4e1d: $7d
    ld [$d411], a                                 ; $4e1e: $ea $11 $d4
    ld a, h                                       ; $4e21: $7c
    ld [$d412], a                                 ; $4e22: $ea $12 $d4
    call Call_010_66db                            ; $4e25: $cd $db $66
    or a                                          ; $4e28: $b7
    jr nz, jr_010_4e32                            ; $4e29: $20 $07

    xor a                                         ; $4e2b: $af
    ld h, a                                       ; $4e2c: $67
    ld l, a                                       ; $4e2d: $6f
    ld d, a                                       ; $4e2e: $57
    ld e, a                                       ; $4e2f: $5f
    jr jr_010_4e35                                ; $4e30: $18 $03

jr_010_4e32:
    call Call_000_11ba                            ; $4e32: $cd $ba $11

jr_010_4e35:
    push hl                                       ; $4e35: $e5
    push de                                       ; $4e36: $d5
    call Call_010_67e4                            ; $4e37: $cd $e4 $67
    inc hl                                        ; $4e3a: $23
    ld c, [hl]                                    ; $4e3b: $4e
    pop de                                        ; $4e3c: $d1
    pop hl                                        ; $4e3d: $e1
    ld a, b                                       ; $4e3e: $78
    cp $03                                        ; $4e3f: $fe $03
    jr nz, jr_010_4e5a                            ; $4e41: $20 $17

    rst $08                                       ; $4e43: $cf
    ld d, c                                       ; $4e44: $51
    ld hl, $d404                                  ; $4e45: $21 $04 $d4
    ld a, [hl+]                                   ; $4e48: $2a
    ld d, [hl]                                    ; $4e49: $56
    ld e, a                                       ; $4e4a: $5f
    ld hl, $d401                                  ; $4e4b: $21 $01 $d4
    ld a, [hl+]                                   ; $4e4e: $2a
    ld h, [hl]                                    ; $4e4f: $66
    ld l, a                                       ; $4e50: $6f
    rst $18                                       ; $4e51: $df
    inc [hl]                                      ; $4e52: $34
    ld [de], a                                    ; $4e53: $12
    rst $18                                       ; $4e54: $df
    ld [hl-], a                                   ; $4e55: $32
    ld [de], a                                    ; $4e56: $12
    jp $521c                                      ; $4e57: $c3 $1c $52


jr_010_4e5a:
    cp $06                                        ; $4e5a: $fe $06
    jr nz, jr_010_4e61                            ; $4e5c: $20 $03

    call Call_010_4e98                            ; $4e5e: $cd $98 $4e

jr_010_4e61:
    push de                                       ; $4e61: $d5
    push hl                                       ; $4e62: $e5
    ld hl, $d409                                  ; $4e63: $21 $09 $d4
    ld a, [hl+]                                   ; $4e66: $2a
    ld d, [hl]                                    ; $4e67: $56
    ld e, a                                       ; $4e68: $5f
    pop hl                                        ; $4e69: $e1
    add hl, de                                    ; $4e6a: $19
    ld a, c                                       ; $4e6b: $79
    call Call_000_0bce                            ; $4e6c: $cd $ce $0b
    ld d, h                                       ; $4e6f: $54
    ld e, l                                       ; $4e70: $5d
    ld hl, $d409                                  ; $4e71: $21 $09 $d4
    ld [hl], e                                    ; $4e74: $73
    inc hl                                        ; $4e75: $23
    ld [hl], d                                    ; $4e76: $72
    ld hl, $d400                                  ; $4e77: $21 $00 $d4
    call Call_010_52da                            ; $4e7a: $cd $da $52
    ld hl, $d40b                                  ; $4e7d: $21 $0b $d4
    ld a, [hl+]                                   ; $4e80: $2a
    ld d, [hl]                                    ; $4e81: $56
    ld e, a                                       ; $4e82: $5f
    pop hl                                        ; $4e83: $e1
    add hl, de                                    ; $4e84: $19
    ld a, c                                       ; $4e85: $79
    call Call_000_0bce                            ; $4e86: $cd $ce $0b
    ld d, h                                       ; $4e89: $54
    ld e, l                                       ; $4e8a: $5d
    ld hl, $d40b                                  ; $4e8b: $21 $0b $d4
    ld [hl], e                                    ; $4e8e: $73
    inc hl                                        ; $4e8f: $23
    ld [hl], d                                    ; $4e90: $72
    ld hl, $d403                                  ; $4e91: $21 $03 $d4
    call Call_010_52da                            ; $4e94: $cd $da $52
    ret                                           ; $4e97: $c9


Call_010_4e98:
    push hl                                       ; $4e98: $e5
    push de                                       ; $4e99: $d5
    ld hl, $d40b                                  ; $4e9a: $21 $0b $d4
    ld a, [hl+]                                   ; $4e9d: $2a
    ld h, [hl]                                    ; $4e9e: $66
    ld l, a                                       ; $4e9f: $6f
    bit 7, h                                      ; $4ea0: $cb $7c
    jr z, jr_010_4ea7                             ; $4ea2: $28 $03

    call Call_000_0c60                            ; $4ea4: $cd $60 $0c

jr_010_4ea7:
    ld a, h                                       ; $4ea7: $7c
    or a                                          ; $4ea8: $b7
    jr nz, jr_010_4edd                            ; $4ea9: $20 $32

    ld d, h                                       ; $4eab: $54
    ld e, l                                       ; $4eac: $5d
    ld hl, $d409                                  ; $4ead: $21 $09 $d4
    ld a, [hl+]                                   ; $4eb0: $2a
    ld h, [hl]                                    ; $4eb1: $66
    ld l, a                                       ; $4eb2: $6f
    bit 7, h                                      ; $4eb3: $cb $7c
    jr z, jr_010_4eba                             ; $4eb5: $28 $03

    call Call_000_0c60                            ; $4eb7: $cd $60 $0c

jr_010_4eba:
    ld a, h                                       ; $4eba: $7c
    or a                                          ; $4ebb: $b7
    jr nz, jr_010_4edd                            ; $4ebc: $20 $1f

    ld a, l                                       ; $4ebe: $7d
    call Call_000_08b9                            ; $4ebf: $cd $b9 $08
    push hl                                       ; $4ec2: $e5
    ld h, d                                       ; $4ec3: $62
    ld l, e                                       ; $4ec4: $6b
    ld a, l                                       ; $4ec5: $7d
    call Call_000_08b9                            ; $4ec6: $cd $b9 $08
    pop de                                        ; $4ec9: $d1
    add hl, de                                    ; $4eca: $19
    call Call_000_0f04                            ; $4ecb: $cd $04 $0f
    ld b, a                                       ; $4ece: $47
    pop hl                                        ; $4ecf: $e1
    call Call_000_0bce                            ; $4ed0: $cd $ce $0b
    pop de                                        ; $4ed3: $d1
    push hl                                       ; $4ed4: $e5
    ld h, d                                       ; $4ed5: $62
    ld l, e                                       ; $4ed6: $6b
    ld a, b                                       ; $4ed7: $78
    call Call_000_0bce                            ; $4ed8: $cd $ce $0b
    pop de                                        ; $4edb: $d1
    ret                                           ; $4edc: $c9


jr_010_4edd:
    pop de                                        ; $4edd: $d1
    pop hl                                        ; $4ede: $e1
    ret                                           ; $4edf: $c9


Call_010_4ee0:
    call Call_010_4cde                            ; $4ee0: $cd $de $4c
    ld hl, $d40f                                  ; $4ee3: $21 $0f $d4
    ld a, [hl+]                                   ; $4ee6: $2a
    ld h, [hl]                                    ; $4ee7: $66
    ld l, a                                       ; $4ee8: $6f
    ld a, [$d413]                                 ; $4ee9: $fa $13 $d4
    call Call_000_0bce                            ; $4eec: $cd $ce $0b
    ld a, $1c                                     ; $4eef: $3e $1c
    call Call_000_0bce                            ; $4ef1: $cd $ce $0b
    ld a, [$d414]                                 ; $4ef4: $fa $14 $d4
    add $40                                       ; $4ef7: $c6 $40
    ld b, a                                       ; $4ef9: $47
    ld c, $00                                     ; $4efa: $0e $00
    call Call_000_11ac                            ; $4efc: $cd $ac $11
    push hl                                       ; $4eff: $e5
    ld hl, $d40b                                  ; $4f00: $21 $0b $d4
    ld a, [hl+]                                   ; $4f03: $2a
    ld h, [hl]                                    ; $4f04: $66
    ld l, a                                       ; $4f05: $6f
    add hl, de                                    ; $4f06: $19
    ld a, l                                       ; $4f07: $7d
    ld [$d40b], a                                 ; $4f08: $ea $0b $d4
    ld a, h                                       ; $4f0b: $7c
    ld [$d40c], a                                 ; $4f0c: $ea $0c $d4
    pop de                                        ; $4f0f: $d1
    ld hl, $d409                                  ; $4f10: $21 $09 $d4
    ld a, [hl+]                                   ; $4f13: $2a
    ld h, [hl]                                    ; $4f14: $66
    ld l, a                                       ; $4f15: $6f
    add hl, de                                    ; $4f16: $19
    ld a, l                                       ; $4f17: $7d
    ld [$d409], a                                 ; $4f18: $ea $09 $d4
    ld a, h                                       ; $4f1b: $7c
    ld [$d40a], a                                 ; $4f1c: $ea $0a $d4
    call Call_010_52ee                            ; $4f1f: $cd $ee $52
    ld a, [$d414]                                 ; $4f22: $fa $14 $d4
    sub b                                         ; $4f25: $90
    add $80                                       ; $4f26: $c6 $80
    ld b, a                                       ; $4f28: $47
    ld c, $00                                     ; $4f29: $0e $00
    call Call_000_11ba                            ; $4f2b: $cd $ba $11
    ld a, [$d413]                                 ; $4f2e: $fa $13 $d4
    ld d, a                                       ; $4f31: $57
    ld e, $00                                     ; $4f32: $1e $00
    add hl, de                                    ; $4f34: $19
    push hl                                       ; $4f35: $e5
    ld hl, $d411                                  ; $4f36: $21 $11 $d4
    ld a, [hl+]                                   ; $4f39: $2a
    ld h, [hl]                                    ; $4f3a: $66
    ld l, a                                       ; $4f3b: $6f
    pop de                                        ; $4f3c: $d1
    call Call_000_0c8e                            ; $4f3d: $cd $8e $0c
    ld a, $1c                                     ; $4f40: $3e $1c
    call Call_000_0bce                            ; $4f42: $cd $ce $0b
    ld a, [$d40d]                                 ; $4f45: $fa $0d $d4
    ld e, a                                       ; $4f48: $5f
    ld a, [$d40e]                                 ; $4f49: $fa $0e $d4
    ld d, a                                       ; $4f4c: $57
    add hl, de                                    ; $4f4d: $19
    ld de, $ffe0                                  ; $4f4e: $11 $e0 $ff
    add hl, de                                    ; $4f51: $19
    ld a, l                                       ; $4f52: $7d
    ld [$d40d], a                                 ; $4f53: $ea $0d $d4
    ld a, h                                       ; $4f56: $7c
    ld [$d40e], a                                 ; $4f57: $ea $0e $d4
    ld hl, $d411                                  ; $4f5a: $21 $11 $d4
    ld a, [hl+]                                   ; $4f5d: $2a
    ld h, [hl]                                    ; $4f5e: $66
    ld l, a                                       ; $4f5f: $6f
    xor a                                         ; $4f60: $af
    sub l                                         ; $4f61: $95
    ld c, a                                       ; $4f62: $4f
    sbc a                                         ; $4f63: $9f
    sub h                                         ; $4f64: $94
    ld b, a                                       ; $4f65: $47
    add a                                         ; $4f66: $87
    sbc a                                         ; $4f67: $9f
    sla c                                         ; $4f68: $cb $21
    jr nz, jr_010_4f73                            ; $4f6a: $20 $07

    rl b                                          ; $4f6c: $cb $10
    rla                                           ; $4f6e: $17
    ld c, b                                       ; $4f6f: $48
    ld b, a                                       ; $4f70: $47
    jr jr_010_4f7b                                ; $4f71: $18 $08

jr_010_4f73:
    rl b                                          ; $4f73: $cb $10
    rla                                           ; $4f75: $17
    ld c, b                                       ; $4f76: $48
    ld b, a                                       ; $4f77: $47
    jr c, jr_010_4f7b                             ; $4f78: $38 $01

    inc bc                                        ; $4f7a: $03

jr_010_4f7b:
    add hl, bc                                    ; $4f7b: $09
    ld a, l                                       ; $4f7c: $7d
    ld [$d411], a                                 ; $4f7d: $ea $11 $d4
    ld a, h                                       ; $4f80: $7c
    ld [$d412], a                                 ; $4f81: $ea $12 $d4
    call Call_010_52ee                            ; $4f84: $cd $ee $52
    call Call_000_11ba                            ; $4f87: $cd $ba $11
    push de                                       ; $4f8a: $d5
    push hl                                       ; $4f8b: $e5
    ld hl, $d409                                  ; $4f8c: $21 $09 $d4
    ld a, [hl+]                                   ; $4f8f: $2a
    ld d, [hl]                                    ; $4f90: $56
    ld e, a                                       ; $4f91: $5f
    pop hl                                        ; $4f92: $e1
    push de                                       ; $4f93: $d5
    call Call_000_08ac                            ; $4f94: $cd $ac $08
    call Call_010_5268                            ; $4f97: $cd $68 $52
    pop hl                                        ; $4f9a: $e1
    add hl, de                                    ; $4f9b: $19
    ld a, l                                       ; $4f9c: $7d
    ld [$d409], a                                 ; $4f9d: $ea $09 $d4
    ld a, h                                       ; $4fa0: $7c
    ld [$d40a], a                                 ; $4fa1: $ea $0a $d4
    ld d, h                                       ; $4fa4: $54
    ld e, l                                       ; $4fa5: $5d
    ld hl, $d400                                  ; $4fa6: $21 $00 $d4
    call Call_010_52da                            ; $4fa9: $cd $da $52
    ld hl, $d40b                                  ; $4fac: $21 $0b $d4
    ld a, [hl+]                                   ; $4faf: $2a
    ld d, [hl]                                    ; $4fb0: $56
    ld e, a                                       ; $4fb1: $5f
    pop hl                                        ; $4fb2: $e1
    push de                                       ; $4fb3: $d5
    call Call_000_08ac                            ; $4fb4: $cd $ac $08
    call Call_010_5268                            ; $4fb7: $cd $68 $52
    pop hl                                        ; $4fba: $e1
    add hl, de                                    ; $4fbb: $19
    ld a, l                                       ; $4fbc: $7d
    ld [$d40b], a                                 ; $4fbd: $ea $0b $d4
    ld a, h                                       ; $4fc0: $7c
    ld [$d40c], a                                 ; $4fc1: $ea $0c $d4
    ld d, h                                       ; $4fc4: $54
    ld e, l                                       ; $4fc5: $5d
    ld hl, $d403                                  ; $4fc6: $21 $03 $d4
    call Call_010_52da                            ; $4fc9: $cd $da $52
    ld hl, $d40d                                  ; $4fcc: $21 $0d $d4
    ld a, [hl+]                                   ; $4fcf: $2a
    ld h, [hl]                                    ; $4fd0: $66
    ld l, a                                       ; $4fd1: $6f
    push hl                                       ; $4fd2: $e5
    call Call_010_5268                            ; $4fd3: $cd $68 $52
    pop hl                                        ; $4fd6: $e1
    call Call_000_08ac                            ; $4fd7: $cd $ac $08
    ld a, l                                       ; $4fda: $7d
    ld [$d40d], a                                 ; $4fdb: $ea $0d $d4
    ld a, h                                       ; $4fde: $7c
    ld [$d40e], a                                 ; $4fdf: $ea $0e $d4
    ld d, h                                       ; $4fe2: $54
    ld e, l                                       ; $4fe3: $5d
    ld hl, $d406                                  ; $4fe4: $21 $06 $d4
    call Call_010_52da                            ; $4fe7: $cd $da $52
    ld a, [$d408]                                 ; $4fea: $fa $08 $d4
    bit 7, a                                      ; $4fed: $cb $7f
    jp z, Jump_010_5213                           ; $4fef: $ca $13 $52

    ld hl, $d489                                  ; $4ff2: $21 $89 $d4
    ld a, [hl]                                    ; $4ff5: $7e
    or a                                          ; $4ff6: $b7
    jr z, jr_010_500d                             ; $4ff7: $28 $14

    ld [hl], $00                                  ; $4ff9: $36 $00
    ld hl, $d401                                  ; $4ffb: $21 $01 $d4
    ld de, $d48a                                  ; $4ffe: $11 $8a $d4
    ld a, [hl+]                                   ; $5001: $2a
    ld [de], a                                    ; $5002: $12
    inc de                                        ; $5003: $13
    ld a, [hl+]                                   ; $5004: $2a
    ld [de], a                                    ; $5005: $12
    inc de                                        ; $5006: $13
    inc hl                                        ; $5007: $23
    ld a, [hl+]                                   ; $5008: $2a
    ld [de], a                                    ; $5009: $12
    inc de                                        ; $500a: $13
    ld a, [hl]                                    ; $500b: $7e
    ld [de], a                                    ; $500c: $12

jr_010_500d:
    ld a, $01                                     ; $500d: $3e $01
    ld [$d331], a                                 ; $500f: $ea $31 $d3
    call Call_010_67e4                            ; $5012: $cd $e4 $67
    ld a, [hl+]                                   ; $5015: $2a
    ld [$d448], a                                 ; $5016: $ea $48 $d4
    inc hl                                        ; $5019: $23
    ld a, [hl]                                    ; $501a: $7e
    ld [$d449], a                                 ; $501b: $ea $49 $d4
    ld a, b                                       ; $501e: $78
    rst $08                                       ; $501f: $cf

    db $49

    cp $03                                        ; $5021: $fe $03
    jr nz, jr_010_5068                            ; $5023: $20 $43

    rst $08                                       ; $5025: $cf
    ld d, c                                       ; $5026: $51
    ld hl, $d404                                  ; $5027: $21 $04 $d4
    ld a, [hl+]                                   ; $502a: $2a
    ld d, [hl]                                    ; $502b: $56
    ld e, a                                       ; $502c: $5f
    ld hl, $d401                                  ; $502d: $21 $01 $d4
    ld a, [hl+]                                   ; $5030: $2a
    ld h, [hl]                                    ; $5031: $66
    ld l, a                                       ; $5032: $6f
    rst $18                                       ; $5033: $df
    inc [hl]                                      ; $5034: $34
    ld [de], a                                    ; $5035: $12
    rst $18                                       ; $5036: $df
    ld [hl-], a                                   ; $5037: $32
    ld [de], a                                    ; $5038: $12
    ld a, [$d413]                                 ; $5039: $fa $13 $d4
    cp $05                                        ; $503c: $fe $05
    jp c, Jump_010_5060                           ; $503e: $da $60 $50

    push af                                       ; $5041: $f5
    ld hl, $d40d                                  ; $5042: $21 $0d $d4
    ld a, [hl+]                                   ; $5045: $2a
    ld d, [hl]                                    ; $5046: $56
    ld e, a                                       ; $5047: $5f
    call Call_000_0c67                            ; $5048: $cd $67 $0c
    pop af                                        ; $504b: $f1
    ld h, a                                       ; $504c: $67
    ld l, $00                                     ; $504d: $2e $00
    call Call_000_1a03                            ; $504f: $cd $03 $1a
    ld a, b                                       ; $5052: $78
    cp $28                                        ; $5053: $fe $28
    jp c, Jump_010_5060                           ; $5055: $da $60 $50

    ld hl, $d48e                                  ; $5058: $21 $8e $d4
    set 0, [hl]                                   ; $505b: $cb $c6
    jp Jump_010_50a5                              ; $505d: $c3 $a5 $50


Jump_010_5060:
    ld hl, $d48e                                  ; $5060: $21 $8e $d4
    res 0, [hl]                                   ; $5063: $cb $86
    jp $521c                                      ; $5065: $c3 $1c $52


jr_010_5068:
    cp $02                                        ; $5068: $fe $02
    jr z, jr_010_5070                             ; $506a: $28 $04

    cp $0d                                        ; $506c: $fe $0d
    jr nz, jr_010_50a5                            ; $506e: $20 $35

jr_010_5070:
    ld a, $15                                     ; $5070: $3e $15
    call Call_010_4b14                            ; $5072: $cd $14 $4b
    set 0, [hl]                                   ; $5075: $cb $c6
    ld hl, $d40d                                  ; $5077: $21 $0d $d4
    ld a, [hl+]                                   ; $507a: $2a
    ld d, [hl]                                    ; $507b: $56
    ld e, a                                       ; $507c: $5f
    call Call_000_0c67                            ; $507d: $cd $67 $0c
    ld a, [$d413]                                 ; $5080: $fa $13 $d4
    ld h, a                                       ; $5083: $67
    ld l, $00                                     ; $5084: $2e $00
    call Call_000_1a03                            ; $5086: $cd $03 $1a
    ld a, $3f                                     ; $5089: $3e $3f
    call Call_010_4b14                            ; $508b: $cd $14 $4b
    ld a, b                                       ; $508e: $78
    cp $14                                        ; $508f: $fe $14
    jr nc, jr_010_50a5                            ; $5091: $30 $12

    ld d, $01                                     ; $5093: $16 $01
    cp $0e                                        ; $5095: $fe $0e
    jp nc, Jump_010_509b                          ; $5097: $d2 $9b $50

    inc d                                         ; $509a: $14

Jump_010_509b:
    ld a, d                                       ; $509b: $7a
    ld [hl], a                                    ; $509c: $77
    ld [$d446], a                                 ; $509d: $ea $46 $d4
    rst $08                                       ; $50a0: $cf
    ld c, e                                       ; $50a1: $4b
    jp $521c                                      ; $50a2: $c3 $1c $52


Jump_010_50a5:
jr_010_50a5:
    ld hl, $d406                                  ; $50a5: $21 $06 $d4
    ld a, [hl+]                                   ; $50a8: $2a
    ld h, [hl]                                    ; $50a9: $66
    ld l, a                                       ; $50aa: $6f
    ld a, [$d448]                                 ; $50ab: $fa $48 $d4
    call Call_000_0bce                            ; $50ae: $cd $ce $0b
    ld a, l                                       ; $50b1: $7d
    cpl                                           ; $50b2: $2f
    add $01                                       ; $50b3: $c6 $01
    ld e, a                                       ; $50b5: $5f
    ld a, h                                       ; $50b6: $7c
    sbc $00                                       ; $50b7: $de $00
    cpl                                           ; $50b9: $2f
    ld d, a                                       ; $50ba: $57
    ld hl, $d406                                  ; $50bb: $21 $06 $d4
    ld [hl], e                                    ; $50be: $73
    inc hl                                        ; $50bf: $23
    ld [hl], d                                    ; $50c0: $72
    inc hl                                        ; $50c1: $23
    ld [hl], $00                                  ; $50c2: $36 $00
    ld hl, $d40d                                  ; $50c4: $21 $0d $d4
    ld a, [hl+]                                   ; $50c7: $2a
    ld h, [hl]                                    ; $50c8: $66
    ld l, a                                       ; $50c9: $6f
    ld a, [$d448]                                 ; $50ca: $fa $48 $d4
    call Call_000_0bce                            ; $50cd: $cd $ce $0b
    ld a, l                                       ; $50d0: $7d
    cpl                                           ; $50d1: $2f
    add $01                                       ; $50d2: $c6 $01
    ld e, a                                       ; $50d4: $5f
    ld a, h                                       ; $50d5: $7c
    sbc $00                                       ; $50d6: $de $00
    cpl                                           ; $50d8: $2f
    ld d, a                                       ; $50d9: $57
    ld hl, $d40d                                  ; $50da: $21 $0d $d4
    ld [hl], e                                    ; $50dd: $73
    inc hl                                        ; $50de: $23
    ld [hl], d                                    ; $50df: $72
    ld hl, $d409                                  ; $50e0: $21 $09 $d4
    ld a, [hl+]                                   ; $50e3: $2a
    ld d, [hl]                                    ; $50e4: $56
    ld e, a                                       ; $50e5: $5f
    ld hl, $d40b                                  ; $50e6: $21 $0b $d4
    ld a, [hl+]                                   ; $50e9: $2a
    ld h, [hl]                                    ; $50ea: $66
    ld l, a                                       ; $50eb: $6f
    push hl                                       ; $50ec: $e5
    push de                                       ; $50ed: $d5
    call Call_000_1a03                            ; $50ee: $cd $03 $1a
    ld a, b                                       ; $50f1: $78
    ld [$d414], a                                 ; $50f2: $ea $14 $d4
    pop de                                        ; $50f5: $d1
    ld h, d                                       ; $50f6: $62
    ld l, e                                       ; $50f7: $6b
    call Call_000_0c8e                            ; $50f8: $cd $8e $0c
    pop de                                        ; $50fb: $d1
    push hl                                       ; $50fc: $e5
    ld h, d                                       ; $50fd: $62
    ld l, e                                       ; $50fe: $6b
    call Call_000_0c8e                            ; $50ff: $cd $8e $0c
    pop de                                        ; $5102: $d1
    add hl, de                                    ; $5103: $19
    call Call_000_0f04                            ; $5104: $cd $04 $0f
    ld [$d413], a                                 ; $5107: $ea $13 $d4
    ld a, [$d443]                                 ; $510a: $fa $43 $d4
    or a                                          ; $510d: $b7
    jp nz, Jump_010_5179                          ; $510e: $c2 $79 $51

    call Call_010_66db                            ; $5111: $cd $db $66
    or a                                          ; $5114: $b7
    jp z, Jump_010_5179                           ; $5115: $ca $79 $51

    ld a, b                                       ; $5118: $78
    and $f0                                       ; $5119: $e6 $f0
    ld [$d44a], a                                 ; $511b: $ea $4a $d4
    ld hl, $ffe0                                  ; $511e: $21 $e0 $ff
    call Call_000_0b31                            ; $5121: $cd $31 $0b
    push de                                       ; $5124: $d5
    push hl                                       ; $5125: $e5
    ld hl, $d40d                                  ; $5126: $21 $0d $d4
    ld a, [hl+]                                   ; $5129: $2a
    ld h, [hl]                                    ; $512a: $66
    ld l, a                                       ; $512b: $6f
    push hl                                       ; $512c: $e5
    ld a, $80                                     ; $512d: $3e $80
    call Call_000_0bce                            ; $512f: $cd $ce $0b
    ld a, l                                       ; $5132: $7d
    ld [$d40d], a                                 ; $5133: $ea $0d $d4
    ld a, h                                       ; $5136: $7c
    ld [$d40e], a                                 ; $5137: $ea $0e $d4
    pop hl                                        ; $513a: $e1
    ld a, $dd                                     ; $513b: $3e $dd
    call Call_000_0bce                            ; $513d: $cd $ce $0b
    ld a, [$d44a]                                 ; $5140: $fa $4a $d4
    ld b, a                                       ; $5143: $47
    ld c, $00                                     ; $5144: $0e $00
    call Call_000_11ba                            ; $5146: $cd $ba $11
    push de                                       ; $5149: $d5
    push hl                                       ; $514a: $e5
    ld hl, $d40b                                  ; $514b: $21 $0b $d4
    ld a, [hl+]                                   ; $514e: $2a
    ld d, [hl]                                    ; $514f: $56
    ld e, a                                       ; $5150: $5f
    ld hl, $d409                                  ; $5151: $21 $09 $d4
    ld a, [hl+]                                   ; $5154: $2a
    ld h, [hl]                                    ; $5155: $66
    ld l, a                                       ; $5156: $6f
    pop bc                                        ; $5157: $c1
    add hl, bc                                    ; $5158: $09
    pop bc                                        ; $5159: $c1
    ld a, e                                       ; $515a: $7b
    add c                                         ; $515b: $81
    ld e, a                                       ; $515c: $5f
    ld a, d                                       ; $515d: $7a
    adc b                                         ; $515e: $88
    ld d, a                                       ; $515f: $57
    pop bc                                        ; $5160: $c1
    add hl, bc                                    ; $5161: $09
    pop bc                                        ; $5162: $c1
    ld a, e                                       ; $5163: $7b
    add c                                         ; $5164: $81
    ld e, a                                       ; $5165: $5f
    ld a, d                                       ; $5166: $7a
    adc b                                         ; $5167: $88
    ld d, a                                       ; $5168: $57
    ld a, l                                       ; $5169: $7d
    ld [$d409], a                                 ; $516a: $ea $09 $d4
    ld a, h                                       ; $516d: $7c
    ld [$d40a], a                                 ; $516e: $ea $0a $d4
    ld a, e                                       ; $5171: $7b
    ld [$d40b], a                                 ; $5172: $ea $0b $d4
    ld a, d                                       ; $5175: $7a
    ld [$d40c], a                                 ; $5176: $ea $0c $d4

Jump_010_5179:
    ld hl, $d409                                  ; $5179: $21 $09 $d4
    ld a, [hl+]                                   ; $517c: $2a
    ld d, [hl]                                    ; $517d: $56
    ld e, a                                       ; $517e: $5f
    ld hl, $d40b                                  ; $517f: $21 $0b $d4
    ld a, [hl+]                                   ; $5182: $2a
    ld h, [hl]                                    ; $5183: $66
    ld l, a                                       ; $5184: $6f
    push hl                                       ; $5185: $e5
    push de                                       ; $5186: $d5
    ld hl, $d40f                                  ; $5187: $21 $0f $d4
    ld a, [hl+]                                   ; $518a: $2a
    ld h, [hl]                                    ; $518b: $66
    ld l, a                                       ; $518c: $6f
    ld a, [$d413]                                 ; $518d: $fa $13 $d4
    call Call_000_0bce                            ; $5190: $cd $ce $0b
    ld a, $40                                     ; $5193: $3e $40
    call Call_000_0bce                            ; $5195: $cd $ce $0b
    ld a, [$d414]                                 ; $5198: $fa $14 $d4
    add $40                                       ; $519b: $c6 $40
    ld b, a                                       ; $519d: $47
    ld c, $00                                     ; $519e: $0e $00
    call Call_000_11ac                            ; $51a0: $cd $ac $11
    push de                                       ; $51a3: $d5
    push hl                                       ; $51a4: $e5
    ld hl, $d411                                  ; $51a5: $21 $11 $d4
    ld a, [hl+]                                   ; $51a8: $2a
    ld h, [hl]                                    ; $51a9: $66
    ld l, a                                       ; $51aa: $6f
    ld a, $40                                     ; $51ab: $3e $40
    call Call_000_0bec                            ; $51ad: $cd $ec $0b
    ld a, [$d414]                                 ; $51b0: $fa $14 $d4
    add $80                                       ; $51b3: $c6 $80
    ld b, a                                       ; $51b5: $47
    ld c, $00                                     ; $51b6: $0e $00
    call Call_000_11ba                            ; $51b8: $cd $ba $11
    pop bc                                        ; $51bb: $c1
    add hl, bc                                    ; $51bc: $09
    pop bc                                        ; $51bd: $c1
    ld a, e                                       ; $51be: $7b
    add c                                         ; $51bf: $81
    ld e, a                                       ; $51c0: $5f
    ld a, d                                       ; $51c1: $7a
    adc b                                         ; $51c2: $88
    ld d, a                                       ; $51c3: $57
    pop bc                                        ; $51c4: $c1
    add hl, bc                                    ; $51c5: $09
    pop bc                                        ; $51c6: $c1
    ld a, e                                       ; $51c7: $7b
    add c                                         ; $51c8: $81
    ld e, a                                       ; $51c9: $5f
    ld a, d                                       ; $51ca: $7a
    adc b                                         ; $51cb: $88
    ld d, a                                       ; $51cc: $57
    push de                                       ; $51cd: $d5
    ld a, [$d449]                                 ; $51ce: $fa $49 $d4
    call Call_000_0bce                            ; $51d1: $cd $ce $0b
    ld a, l                                       ; $51d4: $7d
    ld [$d409], a                                 ; $51d5: $ea $09 $d4
    ld a, h                                       ; $51d8: $7c
    ld [$d40a], a                                 ; $51d9: $ea $0a $d4
    pop hl                                        ; $51dc: $e1
    ld a, [$d449]                                 ; $51dd: $fa $49 $d4
    call Call_000_0bce                            ; $51e0: $cd $ce $0b
    ld a, l                                       ; $51e3: $7d
    ld [$d40b], a                                 ; $51e4: $ea $0b $d4
    ld a, h                                       ; $51e7: $7c
    ld [$d40c], a                                 ; $51e8: $ea $0c $d4
    ld hl, $d411                                  ; $51eb: $21 $11 $d4
    ld a, [hl+]                                   ; $51ee: $2a
    ld h, [hl]                                    ; $51ef: $66
    ld l, a                                       ; $51f0: $6f
    ld a, [$d448]                                 ; $51f1: $fa $48 $d4
    call Call_000_0bce                            ; $51f4: $cd $ce $0b
    ld a, l                                       ; $51f7: $7d
    ld [$d411], a                                 ; $51f8: $ea $11 $d4
    ld a, h                                       ; $51fb: $7c
    ld [$d412], a                                 ; $51fc: $ea $12 $d4
    ld hl, $d40f                                  ; $51ff: $21 $0f $d4
    ld a, [hl+]                                   ; $5202: $2a
    ld h, [hl]                                    ; $5203: $66
    ld l, a                                       ; $5204: $6f
    ld a, [$d448]                                 ; $5205: $fa $48 $d4
    call Call_000_0bce                            ; $5208: $cd $ce $0b
    ld a, l                                       ; $520b: $7d
    ld [$d40f], a                                 ; $520c: $ea $0f $d4
    ld a, h                                       ; $520f: $7c
    ld [$d410], a                                 ; $5210: $ea $10 $d4

Jump_010_5213:
    ret                                           ; $5213: $c9


    dec d                                         ; $5214: $15
    ld c, $00                                     ; $5215: $0e $00
    ld a, [c]                                     ; $5217: $f2
    db $eb                                        ; $5218: $eb
    ld a, [c]                                     ; $5219: $f2
    nop                                           ; $521a: $00
    ld c, $af                                     ; $521b: $0e $af
    ld hl, $d409                                  ; $521d: $21 $09 $d4
    ld [hl+], a                                   ; $5220: $22
    ld [hl+], a                                   ; $5221: $22
    ld [hl+], a                                   ; $5222: $22
    ld [hl+], a                                   ; $5223: $22
    ld [hl+], a                                   ; $5224: $22
    ld [hl], a                                    ; $5225: $77
    ld hl, $d406                                  ; $5226: $21 $06 $d4
    ld [hl+], a                                   ; $5229: $22
    ld [hl+], a                                   ; $522a: $22
    ld [hl], a                                    ; $522b: $77
    ld a, $01                                     ; $522c: $3e $01
    ld [$d331], a                                 ; $522e: $ea $31 $d3
    ld de, $d401                                  ; $5231: $11 $01 $d4
    ld hl, $d4cf                                  ; $5234: $21 $cf $d4
    ld a, [de]                                    ; $5237: $1a
    ld [hl+], a                                   ; $5238: $22
    inc de                                        ; $5239: $13
    ld a, [de]                                    ; $523a: $1a
    ld [hl+], a                                   ; $523b: $22
    inc de                                        ; $523c: $13
    inc de                                        ; $523d: $13
    ld a, [de]                                    ; $523e: $1a
    ld [hl+], a                                   ; $523f: $22
    inc de                                        ; $5240: $13
    ld a, [de]                                    ; $5241: $1a
    ld [hl+], a                                   ; $5242: $22
    ld [hl], $c8                                  ; $5243: $36 $c8
    ret                                           ; $5245: $c9


    bit 7, h                                      ; $5246: $cb $7c
    jr z, jr_010_5259                             ; $5248: $28 $0f

    push hl                                       ; $524a: $e5
    ld a, c                                       ; $524b: $79
    call Call_000_0bce                            ; $524c: $cd $ce $0b
    ld d, h                                       ; $524f: $54
    ld e, l                                       ; $5250: $5d
    pop hl                                        ; $5251: $e1
    ld a, d                                       ; $5252: $7a
    or e                                          ; $5253: $b3
    ret nz                                        ; $5254: $c0

    ld de, $ffff                                  ; $5255: $11 $ff $ff
    ret                                           ; $5258: $c9


jr_010_5259:
    push hl                                       ; $5259: $e5
    ld a, c                                       ; $525a: $79
    call Call_000_0bec                            ; $525b: $cd $ec $0b
    ld d, h                                       ; $525e: $54
    ld e, l                                       ; $525f: $5d
    pop hl                                        ; $5260: $e1
    ld a, d                                       ; $5261: $7a
    or e                                          ; $5262: $b3
    ret nz                                        ; $5263: $c0

    ld de, $0001                                  ; $5264: $11 $01 $00
    ret                                           ; $5267: $c9


Call_010_5268:
    bit 7, h                                      ; $5268: $cb $7c
    jr z, jr_010_5278                             ; $526a: $28 $0c

    ld de, $00ff                                  ; $526c: $11 $ff $00
    add hl, de                                    ; $526f: $19
    ld d, $00                                     ; $5270: $16 $00
    ld e, h                                       ; $5272: $5c
    ld a, h                                       ; $5273: $7c
    or a                                          ; $5274: $b7
    ret z                                         ; $5275: $c8

    dec d                                         ; $5276: $15
    ret                                           ; $5277: $c9


jr_010_5278:
    ld d, $00                                     ; $5278: $16 $00
    ld e, h                                       ; $527a: $5c
    ret                                           ; $527b: $c9


Call_010_527c:
    ld hl, $d404                                  ; $527c: $21 $04 $d4
    ld a, [hl+]                                   ; $527f: $2a
    ld d, [hl]                                    ; $5280: $56
    ld e, a                                       ; $5281: $5f
    ld hl, $d401                                  ; $5282: $21 $01 $d4
    ld a, [hl+]                                   ; $5285: $2a
    ld h, [hl]                                    ; $5286: $66
    ld l, a                                       ; $5287: $6f
    ld a, [$d443]                                 ; $5288: $fa $43 $d4
    or a                                          ; $528b: $b7
    jr z, jr_010_52b9                             ; $528c: $28 $2b

    cp $04                                        ; $528e: $fe $04
    jp z, Jump_010_52b9                           ; $5290: $ca $b9 $52

    ld a, [$d442]                                 ; $5293: $fa $42 $d4
    ld b, a                                       ; $5296: $47
    ld a, d                                       ; $5297: $7a
    sub b                                         ; $5298: $90
    ld d, a                                       ; $5299: $57
    ld a, [$d441]                                 ; $529a: $fa $41 $d4
    ld b, a                                       ; $529d: $47
    ld a, h                                       ; $529e: $7c
    sub b                                         ; $529f: $90
    ld h, a                                       ; $52a0: $67
    ld a, h                                       ; $52a1: $7c
    cp $05                                        ; $52a2: $fe $05
    ret nc                                        ; $52a4: $d0

    ld a, d                                       ; $52a5: $7a
    cp $04                                        ; $52a6: $fe $04
    ret nc                                        ; $52a8: $d0

    sla l                                         ; $52a9: $cb $25
    rl h                                          ; $52ab: $cb $14
    sla l                                         ; $52ad: $cb $25
    rl h                                          ; $52af: $cb $14
    sla e                                         ; $52b1: $cb $23
    rl d                                          ; $52b3: $cb $12
    sla e                                         ; $52b5: $cb $23
    rl d                                          ; $52b7: $cb $12

Jump_010_52b9:
jr_010_52b9:
    call Call_010_6536                            ; $52b9: $cd $36 $65
    cp $03                                        ; $52bc: $fe $03
    ret z                                         ; $52be: $c8

    cp $07                                        ; $52bf: $fe $07
    ret z                                         ; $52c1: $c8

Call_010_52c2:
    ld hl, $d400                                  ; $52c2: $21 $00 $d4
    ld de, $d51d                                  ; $52c5: $11 $1d $d5
    ld a, [hl+]                                   ; $52c8: $2a
    ld [de], a                                    ; $52c9: $12
    inc de                                        ; $52ca: $13
    ld a, [hl+]                                   ; $52cb: $2a
    ld [de], a                                    ; $52cc: $12
    inc de                                        ; $52cd: $13
    ld a, [hl+]                                   ; $52ce: $2a
    ld [de], a                                    ; $52cf: $12
    inc de                                        ; $52d0: $13
    ld a, [hl+]                                   ; $52d1: $2a
    ld [de], a                                    ; $52d2: $12
    inc de                                        ; $52d3: $13
    ld a, [hl+]                                   ; $52d4: $2a
    ld [de], a                                    ; $52d5: $12
    inc de                                        ; $52d6: $13
    ld a, [hl]                                    ; $52d7: $7e
    ld [de], a                                    ; $52d8: $12
    ret                                           ; $52d9: $c9


Call_010_52da:
    ld a, [hl]                                    ; $52da: $7e
    add e                                         ; $52db: $83
    ld [hl+], a                                   ; $52dc: $22
    ld a, [hl]                                    ; $52dd: $7e
    adc d                                         ; $52de: $8a
    ld [hl+], a                                   ; $52df: $22
    bit 7, d                                      ; $52e0: $cb $7a
    jr nz, jr_010_52e9                            ; $52e2: $20 $05

    ld a, [hl]                                    ; $52e4: $7e
    adc $00                                       ; $52e5: $ce $00
    ld [hl], a                                    ; $52e7: $77
    ret                                           ; $52e8: $c9


jr_010_52e9:
    ld a, [hl]                                    ; $52e9: $7e
    adc $ff                                       ; $52ea: $ce $ff
    ld [hl], a                                    ; $52ec: $77
    ret                                           ; $52ed: $c9


Call_010_52ee:
    ld hl, $d406                                  ; $52ee: $21 $06 $d4
    ld a, [hl+]                                   ; $52f1: $2a
    or [hl]                                       ; $52f2: $b6
    inc hl                                        ; $52f3: $23
    or [hl]                                       ; $52f4: $b6
    jr nz, jr_010_52fe                            ; $52f5: $20 $07

    ld hl, $0000                                  ; $52f7: $21 $00 $00
    ld bc, $0000                                  ; $52fa: $01 $00 $00
    ret                                           ; $52fd: $c9


jr_010_52fe:
    ld a, [$c815]                                 ; $52fe: $fa $15 $c8
    and $1f                                       ; $5301: $e6 $1f
    add a                                         ; $5303: $87
    ld d, $00                                     ; $5304: $16 $00
    ld e, a                                       ; $5306: $5f
    ld hl, $5315                                  ; $5307: $21 $15 $53
    add hl, de                                    ; $530a: $19
    ld a, [hl+]                                   ; $530b: $2a
    ld h, [hl]                                    ; $530c: $66
    ld l, a                                       ; $530d: $6f
    ld a, [$c816]                                 ; $530e: $fa $16 $c8
    ld b, a                                       ; $5311: $47
    ld c, $00                                     ; $5312: $0e $00
    ret                                           ; $5314: $c9


    db $00, $00

    ld b, e                                       ; $5317: $43
    nop                                           ; $5318: $00
    add [hl]                                      ; $5319: $86
    nop                                           ; $531a: $00
    ret z                                         ; $531b: $c8

    nop                                           ; $531c: $00
    dec bc                                        ; $531d: $0b
    ld bc, HeaderGlobalChecksum                   ; $531e: $01 $4e $01
    sub c                                         ; $5321: $91
    db $01                                        ; $5322: $01

    db $d3, $01

    ld d, $02                                     ; $5325: $16 $02
    ld e, c                                       ; $5327: $59
    ld [bc], a                                    ; $5328: $02
    sbc h                                         ; $5329: $9c
    ld [bc], a                                    ; $532a: $02
    sbc $02                                       ; $532b: $de $02

    db $21, $03

    ld h, h                                       ; $532f: $64
    inc bc                                        ; $5330: $03
    and a                                         ; $5331: $a7
    inc bc                                        ; $5332: $03

    db $e9, $03

    inc l                                         ; $5335: $2c
    inc b                                         ; $5336: $04
    ld l, a                                       ; $5337: $6f
    inc b                                         ; $5338: $04
    or d                                          ; $5339: $b2
    inc b                                         ; $533a: $04
    push af                                       ; $533b: $f5
    inc b                                         ; $533c: $04
    push af                                       ; $533d: $f5
    inc b                                         ; $533e: $04
    push af                                       ; $533f: $f5
    inc b                                         ; $5340: $04
    push af                                       ; $5341: $f5
    inc b                                         ; $5342: $04
    push af                                       ; $5343: $f5
    inc b                                         ; $5344: $04
    push af                                       ; $5345: $f5
    inc b                                         ; $5346: $04
    push af                                       ; $5347: $f5
    inc b                                         ; $5348: $04
    push af                                       ; $5349: $f5
    inc b                                         ; $534a: $04
    push af                                       ; $534b: $f5
    inc b                                         ; $534c: $04
    push af                                       ; $534d: $f5
    inc b                                         ; $534e: $04
    push af                                       ; $534f: $f5
    inc b                                         ; $5350: $04
    push af                                       ; $5351: $f5
    inc b                                         ; $5352: $04
    push af                                       ; $5353: $f5
    inc b                                         ; $5354: $04

    ld a, $06                                     ; $5355: $3e $06
    ldh [$96], a                                  ; $5357: $e0 $96
    ldh [rSVBK], a                                ; $5359: $e0 $70
    call Call_010_4cde                            ; $535b: $cd $de $4c
    ld hl, $d40f                                  ; $535e: $21 $0f $d4
    ld a, [hl+]                                   ; $5361: $2a
    ld h, [hl]                                    ; $5362: $66
    ld l, a                                       ; $5363: $6f
    ld a, [$d413]                                 ; $5364: $fa $13 $d4
    call Call_000_0bce                            ; $5367: $cd $ce $0b
    ld a, $1c                                     ; $536a: $3e $1c
    call Call_000_0bce                            ; $536c: $cd $ce $0b
    ld a, [$d414]                                 ; $536f: $fa $14 $d4
    add $40                                       ; $5372: $c6 $40
    ld b, a                                       ; $5374: $47
    ld c, $00                                     ; $5375: $0e $00
    call Call_000_11ac                            ; $5377: $cd $ac $11
    push hl                                       ; $537a: $e5
    ld hl, $d37e                                  ; $537b: $21 $7e $d3
    ld a, [hl+]                                   ; $537e: $2a
    ld h, [hl]                                    ; $537f: $66
    ld l, a                                       ; $5380: $6f
    add hl, de                                    ; $5381: $19
    ld a, l                                       ; $5382: $7d
    ld [$d37e], a                                 ; $5383: $ea $7e $d3
    ld a, h                                       ; $5386: $7c
    ld [$d37f], a                                 ; $5387: $ea $7f $d3
    pop de                                        ; $538a: $d1
    ld hl, $d37c                                  ; $538b: $21 $7c $d3
    ld a, [hl+]                                   ; $538e: $2a
    ld h, [hl]                                    ; $538f: $66
    ld l, a                                       ; $5390: $6f
    add hl, de                                    ; $5391: $19
    ld a, l                                       ; $5392: $7d
    ld [$d37c], a                                 ; $5393: $ea $7c $d3
    ld a, h                                       ; $5396: $7c
    ld [$d37d], a                                 ; $5397: $ea $7d $d3
    call Call_010_52ee                            ; $539a: $cd $ee $52
    ld a, [$d414]                                 ; $539d: $fa $14 $d4
    sub b                                         ; $53a0: $90
    add $80                                       ; $53a1: $c6 $80
    ld b, a                                       ; $53a3: $47
    ld c, $00                                     ; $53a4: $0e $00
    call Call_000_11ba                            ; $53a6: $cd $ba $11
    ld a, [$d413]                                 ; $53a9: $fa $13 $d4
    ld d, a                                       ; $53ac: $57
    ld e, $00                                     ; $53ad: $1e $00
    add hl, de                                    ; $53af: $19
    push hl                                       ; $53b0: $e5
    ld hl, $d411                                  ; $53b1: $21 $11 $d4
    ld a, [hl+]                                   ; $53b4: $2a
    ld h, [hl]                                    ; $53b5: $66
    ld l, a                                       ; $53b6: $6f
    pop de                                        ; $53b7: $d1
    call Call_000_0c8e                            ; $53b8: $cd $8e $0c
    ld a, $1c                                     ; $53bb: $3e $1c
    call Call_000_0bce                            ; $53bd: $cd $ce $0b
    ld a, [$d380]                                 ; $53c0: $fa $80 $d3
    ld e, a                                       ; $53c3: $5f
    ld a, [$d381]                                 ; $53c4: $fa $81 $d3
    ld d, a                                       ; $53c7: $57
    add hl, de                                    ; $53c8: $19
    ld de, $ffe0                                  ; $53c9: $11 $e0 $ff
    add hl, de                                    ; $53cc: $19
    ld a, l                                       ; $53cd: $7d
    ld [$d380], a                                 ; $53ce: $ea $80 $d3
    ld a, h                                       ; $53d1: $7c
    ld [$d381], a                                 ; $53d2: $ea $81 $d3
    call Call_010_52ee                            ; $53d5: $cd $ee $52
    call Call_000_11ba                            ; $53d8: $cd $ba $11
    push de                                       ; $53db: $d5
    push hl                                       ; $53dc: $e5
    ld hl, $d37c                                  ; $53dd: $21 $7c $d3
    ld a, [hl+]                                   ; $53e0: $2a
    ld d, [hl]                                    ; $53e1: $56
    ld e, a                                       ; $53e2: $5f
    pop hl                                        ; $53e3: $e1
    push de                                       ; $53e4: $d5
    call Call_000_08ac                            ; $53e5: $cd $ac $08
    call Call_010_5268                            ; $53e8: $cd $68 $52
    pop hl                                        ; $53eb: $e1
    add hl, de                                    ; $53ec: $19
    ld a, l                                       ; $53ed: $7d
    ld [$d37c], a                                 ; $53ee: $ea $7c $d3
    ld a, h                                       ; $53f1: $7c
    ld [$d37d], a                                 ; $53f2: $ea $7d $d3
    ld d, h                                       ; $53f5: $54
    ld e, l                                       ; $53f6: $5d
    ld hl, $d373                                  ; $53f7: $21 $73 $d3
    call Call_010_52da                            ; $53fa: $cd $da $52
    ld hl, $d37e                                  ; $53fd: $21 $7e $d3
    ld a, [hl+]                                   ; $5400: $2a
    ld d, [hl]                                    ; $5401: $56
    ld e, a                                       ; $5402: $5f
    pop hl                                        ; $5403: $e1
    push de                                       ; $5404: $d5
    call Call_000_08ac                            ; $5405: $cd $ac $08
    call Call_010_5268                            ; $5408: $cd $68 $52
    pop hl                                        ; $540b: $e1
    add hl, de                                    ; $540c: $19
    ld a, l                                       ; $540d: $7d
    ld [$d37e], a                                 ; $540e: $ea $7e $d3
    ld a, h                                       ; $5411: $7c
    ld [$d37f], a                                 ; $5412: $ea $7f $d3
    ld d, h                                       ; $5415: $54
    ld e, l                                       ; $5416: $5d
    ld hl, $d376                                  ; $5417: $21 $76 $d3
    call Call_010_52da                            ; $541a: $cd $da $52
    ld hl, $d380                                  ; $541d: $21 $80 $d3
    ld a, [hl+]                                   ; $5420: $2a
    ld h, [hl]                                    ; $5421: $66
    ld l, a                                       ; $5422: $6f
    push hl                                       ; $5423: $e5
    call Call_010_5268                            ; $5424: $cd $68 $52
    pop hl                                        ; $5427: $e1
    call Call_000_08ac                            ; $5428: $cd $ac $08
    ld a, l                                       ; $542b: $7d
    ld [$d380], a                                 ; $542c: $ea $80 $d3
    ld a, h                                       ; $542f: $7c
    ld [$d381], a                                 ; $5430: $ea $81 $d3
    ld d, h                                       ; $5433: $54
    ld e, l                                       ; $5434: $5d
    ld hl, $d379                                  ; $5435: $21 $79 $d3
    call Call_010_52da                            ; $5438: $cd $da $52
    ret                                           ; $543b: $c9


    ld a, $06                                     ; $543c: $3e $06
    ldh [$96], a                                  ; $543e: $e0 $96
    ldh [rSVBK], a                                ; $5440: $e0 $70
    call Call_010_5518                            ; $5442: $cd $18 $55
    ld hl, $d418                                  ; $5445: $21 $18 $d4
    ld de, $d51a                                  ; $5448: $11 $1a $d5
    ld a, [hl+]                                   ; $544b: $2a
    ld [de], a                                    ; $544c: $12
    inc de                                        ; $544d: $13
    ld a, [hl]                                    ; $544e: $7e
    ld [de], a                                    ; $544f: $12
    call Call_010_5eef                            ; $5450: $cd $ef $5e
    ld hl, $d41c                                  ; $5453: $21 $1c $d4
    ld a, [hl+]                                   ; $5456: $2a
    ld d, [hl]                                    ; $5457: $56
    ld e, a                                       ; $5458: $5f
    ld hl, $d418                                  ; $5459: $21 $18 $d4
    ld a, [hl+]                                   ; $545c: $2a
    ld h, [hl]                                    ; $545d: $66
    ld l, a                                       ; $545e: $6f
    add hl, de                                    ; $545f: $19
    ld a, l                                       ; $5460: $7d
    ld [$d418], a                                 ; $5461: $ea $18 $d4
    ld a, h                                       ; $5464: $7c
    ld [$d419], a                                 ; $5465: $ea $19 $d4
    ld hl, $d450                                  ; $5468: $21 $50 $d4
    ld a, [hl]                                    ; $546b: $7e
    ld [hl], $3c                                  ; $546c: $36 $3c
    push af                                       ; $546e: $f5
    ld hl, $d44f                                  ; $546f: $21 $4f $d4
    ld a, [hl]                                    ; $5472: $7e
    ld [hl], $00                                  ; $5473: $36 $00
    push af                                       ; $5475: $f5
    call Call_010_6cdb                            ; $5476: $cd $db $6c
    xor a                                         ; $5479: $af
    ld [$d48e], a                                 ; $547a: $ea $8e $d4
    pop af                                        ; $547d: $f1
    ld [$d44f], a                                 ; $547e: $ea $4f $d4
    pop af                                        ; $5481: $f1
    ld [$d450], a                                 ; $5482: $ea $50 $d4
    push hl                                       ; $5485: $e5
    ld hl, $d416                                  ; $5486: $21 $16 $d4
    ld a, [hl+]                                   ; $5489: $2a
    ld h, [hl]                                    ; $548a: $66
    ld l, a                                       ; $548b: $6f
    pop de                                        ; $548c: $d1
    call Call_010_6134                            ; $548d: $cd $34 $61
    ld a, l                                       ; $5490: $7d
    ld [$d416], a                                 ; $5491: $ea $16 $d4
    ld a, h                                       ; $5494: $7c
    ld [$d417], a                                 ; $5495: $ea $17 $d4
    ld hl, $d411                                  ; $5498: $21 $11 $d4
    ld a, [hl+]                                   ; $549b: $2a
    ld h, [hl]                                    ; $549c: $66
    ld l, a                                       ; $549d: $6f
    ld a, [$d44c]                                 ; $549e: $fa $4c $d4
    ld d, $00                                     ; $54a1: $16 $00
    ld e, a                                       ; $54a3: $5f
    bit 7, a                                      ; $54a4: $cb $7f
    jr nz, jr_010_54a9                            ; $54a6: $20 $01

    inc d                                         ; $54a8: $14

jr_010_54a9:
    call Call_010_6134                            ; $54a9: $cd $34 $61
    ld hl, $d40f                                  ; $54ac: $21 $0f $d4
    ld a, [hl+]                                   ; $54af: $2a
    ld d, [hl]                                    ; $54b0: $56
    ld e, a                                       ; $54b1: $5f
    ld a, [$d44b]                                 ; $54b2: $fa $4b $d4
    cpl                                           ; $54b5: $2f
    inc a                                         ; $54b6: $3c
    ld h, $00                                     ; $54b7: $26 $00
    ld l, a                                       ; $54b9: $6f
    bit 7, a                                      ; $54ba: $cb $7f
    jr z, jr_010_54bf                             ; $54bc: $28 $01

    dec h                                         ; $54be: $25

jr_010_54bf:
    add hl, hl                                    ; $54bf: $29
    add hl, hl                                    ; $54c0: $29
    add hl, hl                                    ; $54c1: $29
    add hl, hl                                    ; $54c2: $29
    add hl, hl                                    ; $54c3: $29
    add hl, de                                    ; $54c4: $19
    ld a, l                                       ; $54c5: $7d
    ld [$d40f], a                                 ; $54c6: $ea $0f $d4
    ld a, h                                       ; $54c9: $7c
    ld [$d410], a                                 ; $54ca: $ea $10 $d4
    ld hl, $d41a                                  ; $54cd: $21 $1a $d4
    ld a, [hl+]                                   ; $54d0: $2a
    ld b, [hl]                                    ; $54d1: $46
    ld c, a                                       ; $54d2: $4f
    ld hl, $d416                                  ; $54d3: $21 $16 $d4
    ld a, [hl+]                                   ; $54d6: $2a
    ld h, [hl]                                    ; $54d7: $66
    ld l, a                                       ; $54d8: $6f
    call Call_000_11ba                            ; $54d9: $cd $ba $11
    ld a, e                                       ; $54dc: $7b
    ld [$d380], a                                 ; $54dd: $ea $80 $d3
    ld a, d                                       ; $54e0: $7a
    ld [$d381], a                                 ; $54e1: $ea $81 $d3
    ld a, [$d418]                                 ; $54e4: $fa $18 $d4
    ld c, a                                       ; $54e7: $4f
    ld a, [$d419]                                 ; $54e8: $fa $19 $d4
    ld b, a                                       ; $54eb: $47
    call Call_000_11ba                            ; $54ec: $cd $ba $11
    ld a, l                                       ; $54ef: $7d
    ld [$d37c], a                                 ; $54f0: $ea $7c $d3
    ld a, h                                       ; $54f3: $7c
    ld [$d37d], a                                 ; $54f4: $ea $7d $d3
    ld a, e                                       ; $54f7: $7b
    ld [$d37e], a                                 ; $54f8: $ea $7e $d3
    ld a, d                                       ; $54fb: $7a
    ld [$d37f], a                                 ; $54fc: $ea $7f $d3
    ld hl, $d51a                                  ; $54ff: $21 $1a $d5
    ld de, $d418                                  ; $5502: $11 $18 $d4
    ld a, [hl+]                                   ; $5505: $2a
    ld [de], a                                    ; $5506: $12
    inc de                                        ; $5507: $13
    ld a, [hl]                                    ; $5508: $7e
    ld [de], a                                    ; $5509: $12
    ret                                           ; $550a: $c9


Call_010_550b:
    ld hl, $d400                                  ; $550b: $21 $00 $d4
    ld de, $d514                                  ; $550e: $11 $14 $d5
    ld bc, $0006                                  ; $5511: $01 $06 $00
    call Call_000_03d3                            ; $5514: $cd $d3 $03
    ret                                           ; $5517: $c9


Call_010_5518:
    ld hl, $d514                                  ; $5518: $21 $14 $d5
    ld de, $d373                                  ; $551b: $11 $73 $d3
    ld bc, $0006                                  ; $551e: $01 $06 $00
    call Call_000_03d3                            ; $5521: $cd $d3 $03
    xor a                                         ; $5524: $af
    ld h, d                                       ; $5525: $62
    ld l, e                                       ; $5526: $6b
    ld [hl+], a                                   ; $5527: $22
    ld [hl+], a                                   ; $5528: $22
    ld [hl+], a                                   ; $5529: $22
    ld hl, $d37c                                  ; $552a: $21 $7c $d3
    ld bc, $0006                                  ; $552d: $01 $06 $00
    call Call_000_039f                            ; $5530: $cd $9f $03
    ret                                           ; $5533: $c9


Call_010_5534:
    ld a, [$d329]                                 ; $5534: $fa $29 $d3
    cp $0d                                        ; $5537: $fe $0d
    ret z                                         ; $5539: $c8

    call Call_010_6b1f                            ; $553a: $cd $1f $6b
    bit 7, a                                      ; $553d: $cb $7f
    jr z, jr_010_5543                             ; $553f: $28 $02

    cpl                                           ; $5541: $2f
    inc a                                         ; $5542: $3c

jr_010_5543:
    cp $09                                        ; $5543: $fe $09
    ret nz                                        ; $5545: $c0

    rst $08                                       ; $5546: $cf

    db $5f

    ret                                           ; $5548: $c9


Call_010_5549:
    ldh a, [$9e]                                  ; $5549: $f0 $9e
    cp $02                                        ; $554b: $fe $02
    ret c                                         ; $554d: $d8

    ld hl, $d426                                  ; $554e: $21 $26 $d4
    ld a, [hl+]                                   ; $5551: $2a
    ld h, [hl]                                    ; $5552: $66
    ld l, a                                       ; $5553: $6f
    srl h                                         ; $5554: $cb $3c
    rr l                                          ; $5556: $cb $1d
    srl h                                         ; $5558: $cb $3c
    rr l                                          ; $555a: $cb $1d
    srl h                                         ; $555c: $cb $3c
    rr l                                          ; $555e: $cb $1d
    srl h                                         ; $5560: $cb $3c
    rr l                                          ; $5562: $cb $1d
    srl h                                         ; $5564: $cb $3c
    rr l                                          ; $5566: $cb $1d
    ld de, $0004                                  ; $5568: $11 $04 $00
    call Call_000_22bc                            ; $556b: $cd $bc $22
    ld hl, $d428                                  ; $556e: $21 $28 $d4
    ld a, [hl+]                                   ; $5571: $2a
    ld h, [hl]                                    ; $5572: $66
    ld l, a                                       ; $5573: $6f
    srl h                                         ; $5574: $cb $3c
    rr l                                          ; $5576: $cb $1d
    srl h                                         ; $5578: $cb $3c
    rr l                                          ; $557a: $cb $1d
    srl h                                         ; $557c: $cb $3c
    rr l                                          ; $557e: $cb $1d
    srl h                                         ; $5580: $cb $3c
    rr l                                          ; $5582: $cb $1d
    srl h                                         ; $5584: $cb $3c
    rr l                                          ; $5586: $cb $1d
    ld de, $0005                                  ; $5588: $11 $05 $00
    call Call_000_22bc                            ; $558b: $cd $bc $22
    call Call_010_621e                            ; $558e: $cd $1e $62
    srl h                                         ; $5591: $cb $3c
    rr l                                          ; $5593: $cb $1d
    srl h                                         ; $5595: $cb $3c
    rr l                                          ; $5597: $cb $1d
    srl h                                         ; $5599: $cb $3c
    rr l                                          ; $559b: $cb $1d
    srl h                                         ; $559d: $cb $3c
    rr l                                          ; $559f: $cb $1d
    srl h                                         ; $55a1: $cb $3c
    rr l                                          ; $55a3: $cb $1d
    ld de, $0006                                  ; $55a5: $11 $06 $00
    call Call_000_22bc                            ; $55a8: $cd $bc $22
    ret                                           ; $55ab: $c9


    ld a, $06                                     ; $55ac: $3e $06
    ldh [$96], a                                  ; $55ae: $e0 $96
    ldh [rSVBK], a                                ; $55b0: $e0 $70
    ldh a, [$90]                                  ; $55b2: $f0 $90
    ld [$d44d], a                                 ; $55b4: $ea $4d $d4

Call_010_55b7:
    rrca                                          ; $55b7: $0f
    rrca                                          ; $55b8: $0f
    rrca                                          ; $55b9: $0f
    and $1e                                       ; $55ba: $e6 $1e
    ld hl, $55ce                                  ; $55bc: $21 $ce $55
    add l                                         ; $55bf: $85
    ld l, a                                       ; $55c0: $6f
    ld a, h                                       ; $55c1: $7c
    adc $00                                       ; $55c2: $ce $00
    ld h, a                                       ; $55c4: $67
    ld a, [hl+]                                   ; $55c5: $2a
    ld [$d44b], a                                 ; $55c6: $ea $4b $d4
    ld a, [hl+]                                   ; $55c9: $2a
    ld [$d44c], a                                 ; $55ca: $ea $4c $d4
    ret                                           ; $55cd: $c9


    db $00, $00

    stop                                          ; $55d0: $10 $00

    db $f0, $00

    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    ldh [$0c], a                                  ; $55d7: $e0 $0c
    ld [$eaf4], a                                 ; $55d9: $ea $f4 $ea
    nop                                           ; $55dc: $00
    ldh [rP1], a                                  ; $55dd: $e0 $00
    jr nz, jr_010_55ed                            ; $55df: $20 $0c

    ld d, $f4                                     ; $55e1: $16 $f4
    ld d, $00                                     ; $55e3: $16 $00
    jr nz, jr_010_55e7                            ; $55e5: $20 $00

jr_010_55e7:
    nop                                           ; $55e7: $00
    stop                                          ; $55e8: $10 $00
    ldh a, [rP1]                                  ; $55ea: $f0 $00
    nop                                           ; $55ec: $00

jr_010_55ed:
    nop                                           ; $55ed: $00
    ld a, [$d44e]                                 ; $55ee: $fa $4e $d4
    cp $3c                                        ; $55f1: $fe $3c
    jr c, jr_010_55fb                             ; $55f3: $38 $06

    push bc                                       ; $55f5: $c5
    ld b, a                                       ; $55f6: $47
    ld a, $78                                     ; $55f7: $3e $78
    sub b                                         ; $55f9: $90
    pop bc                                        ; $55fa: $c1

jr_010_55fb:
    ld [$d44f], a                                 ; $55fb: $ea $4f $d4
    ret                                           ; $55fe: $c9


Call_010_55ff:
    xor a                                         ; $55ff: $af
    ld [$d44e], a                                 ; $5600: $ea $4e $d4
    ld [$d44f], a                                 ; $5603: $ea $4f $d4
    ld [$d451], a                                 ; $5606: $ea $51 $d4
    ld [$d452], a                                 ; $5609: $ea $52 $d4
    ld a, $80                                     ; $560c: $3e $80
    ld [$d450], a                                 ; $560e: $ea $50 $d4
    ld a, $f0                                     ; $5611: $3e $f0
    ld [$d44d], a                                 ; $5613: $ea $4d $d4
    ret                                           ; $5616: $c9


Call_010_5617:
    ld c, $00                                     ; $5617: $0e $00
    ld a, [$d442]                                 ; $5619: $fa $42 $d4
    ld b, a                                       ; $561c: $47
    ld a, [$d405]                                 ; $561d: $fa $05 $d4
    sub b                                         ; $5620: $90
    cp $04                                        ; $5621: $fe $04
    ret nc                                        ; $5623: $d0

    ld a, [$d441]                                 ; $5624: $fa $41 $d4
    ld b, a                                       ; $5627: $47
    ld a, [$d402]                                 ; $5628: $fa $02 $d4
    sub b                                         ; $562b: $90
    cp $05                                        ; $562c: $fe $05
    ret nc                                        ; $562e: $d0

    ld c, $01                                     ; $562f: $0e $01
    ret                                           ; $5631: $c9


Call_010_5632:
    call Call_010_5617                            ; $5632: $cd $17 $56
    ld a, [$d443]                                 ; $5635: $fa $43 $d4
    cp c                                          ; $5638: $b9
    jr z, jr_010_563f                             ; $5639: $28 $04

    ld a, c                                       ; $563b: $79
    rst $18                                       ; $563c: $df

    db $00, $13

jr_010_563f:
    call Call_010_6145                            ; $563f: $cd $45 $61
    ret                                           ; $5642: $c9


Jump_010_5643:
    xor a                                         ; $5643: $af
    ld [$d44d], a                                 ; $5644: $ea $4d $d4
    ld a, $01                                     ; $5647: $3e $01
    rst $18                                       ; $5649: $df
    ld c, $11                                     ; $564a: $0e $11
    rst $08                                       ; $564c: $cf
    sub b                                         ; $564d: $90
    ld hl, $d44e                                  ; $564e: $21 $4e $d4
    ld c, $3c                                     ; $5651: $0e $3c

jr_010_5653:
    inc [hl]                                      ; $5653: $34
    ld a, [hl]                                    ; $5654: $7e
    ld [$d44f], a                                 ; $5655: $ea $4f $d4
    call Call_000_2e3b                            ; $5658: $cd $3b $2e
    ld a, [$d4d8]                                 ; $565b: $fa $d8 $d4
    cp [hl]                                       ; $565e: $be
    jr nz, jr_010_566d                            ; $565f: $20 $0c

    rst $08                                       ; $5661: $cf
    sub b                                         ; $5662: $90
    ld [$d450], a                                 ; $5663: $ea $50 $d4
    ld a, [$d329]                                 ; $5666: $fa $29 $d3
    cp $0d                                        ; $5669: $fe $0d
    jr z, jr_010_56a9                             ; $566b: $28 $3c

jr_010_566d:
    dec c                                         ; $566d: $0d
    jr nz, jr_010_5653                            ; $566e: $20 $e3

    ld a, [$d450]                                 ; $5670: $fa $50 $d4
    cp $3c                                        ; $5673: $fe $3c
    jr nz, jr_010_567e                            ; $5675: $20 $07

    ld a, $01                                     ; $5677: $3e $01
    ld [$d452], a                                 ; $5679: $ea $52 $d4
    rst $08                                       ; $567c: $cf
    ld e, [hl]                                    ; $567d: $5e

jr_010_567e:
    ld a, [$d4da]                                 ; $567e: $fa $da $d4
    ld [$d44d], a                                 ; $5681: $ea $4d $d4
    push hl                                       ; $5684: $e5
    call Call_010_55b7                            ; $5685: $cd $b7 $55
    pop hl                                        ; $5688: $e1

jr_010_5689:
    dec [hl]                                      ; $5689: $35
    ld a, [hl]                                    ; $568a: $7e
    ld [$d44f], a                                 ; $568b: $ea $4f $d4
    call Call_000_2e3b                            ; $568e: $cd $3b $2e
    ld a, [$d4d9]                                 ; $5691: $fa $d9 $d4
    cp [hl]                                       ; $5694: $be
    jr nz, jr_010_5689                            ; $5695: $20 $f2

    rst $08                                       ; $5697: $cf
    sub b                                         ; $5698: $90
    ld a, [$d44f]                                 ; $5699: $fa $4f $d4
    or a                                          ; $569c: $b7
    jr nz, jr_010_56a6                            ; $569d: $20 $07

    ld a, $01                                     ; $569f: $3e $01
    ld [$d451], a                                 ; $56a1: $ea $51 $d4
    rst $08                                       ; $56a4: $cf
    ld e, [hl]                                    ; $56a5: $5e

jr_010_56a6:
    call Call_010_5534                            ; $56a6: $cd $34 $55

jr_010_56a9:
    ld a, $02                                     ; $56a9: $3e $02
    rst $18                                       ; $56ab: $df
    ld c, $11                                     ; $56ac: $0e $11
    xor a                                         ; $56ae: $af
    ret                                           ; $56af: $c9


Call_010_56b0:
    xor a                                         ; $56b0: $af
    ld hl, $d460                                  ; $56b1: $21 $60 $d4
    ld [hl+], a                                   ; $56b4: $22
    ld [hl], a                                    ; $56b5: $77

Jump_010_56b6:
    call Call_010_55ff                            ; $56b6: $cd $ff $55
    call Call_000_2e3b                            ; $56b9: $cd $3b $2e
    ld a, [$d4d7]                                 ; $56bc: $fa $d7 $d4
    or a                                          ; $56bf: $b7
    jp nz, Jump_010_5643                          ; $56c0: $c2 $43 $56

    xor a                                         ; $56c3: $af
    ld [$d453], a                                 ; $56c4: $ea $53 $d4
    ld a, $01                                     ; $56c7: $3e $01
    ld [$d451], a                                 ; $56c9: $ea $51 $d4

Jump_010_56cc:
    call Call_010_6907                            ; $56cc: $cd $07 $69
    ld [$d321], a                                 ; $56cf: $ea $21 $d3
    rst $18                                       ; $56d2: $df

    db $18, $12

    rst $18                                       ; $56d5: $df

    db $08, $12

    call Call_000_2e3b                            ; $56d8: $cd $3b $2e
    rst $18                                       ; $56db: $df

    db $36, $12

    call Call_000_2e3b                            ; $56de: $cd $3b $2e
    rst $18                                       ; $56e1: $df

    db $06, $12

    call Call_010_5eef                            ; $56e4: $cd $ef $5e

Jump_010_56e7:
    xor a                                         ; $56e7: $af
    ld [$d480], a                                 ; $56e8: $ea $80 $d4
    inc a                                         ; $56eb: $3c
    ld [$d382], a                                 ; $56ec: $ea $82 $d3
    call Call_010_5ee2                            ; $56ef: $cd $e2 $5e
    push hl                                       ; $56f2: $e5
    ld hl, $d404                                  ; $56f3: $21 $04 $d4
    ld a, [hl+]                                   ; $56f6: $2a
    ld h, [hl]                                    ; $56f7: $66
    ld l, a                                       ; $56f8: $6f
    add hl, de                                    ; $56f9: $19
    pop de                                        ; $56fa: $d1
    push hl                                       ; $56fb: $e5
    ld hl, $d401                                  ; $56fc: $21 $01 $d4
    ld a, [hl+]                                   ; $56ff: $2a
    ld h, [hl]                                    ; $5700: $66
    ld l, a                                       ; $5701: $6f
    add hl, de                                    ; $5702: $19
    pop de                                        ; $5703: $d1
    ld c, l                                       ; $5704: $4d
    ld b, h                                       ; $5705: $44
    ld hl, $d426                                  ; $5706: $21 $26 $d4
    ld [hl], c                                    ; $5709: $71
    inc hl                                        ; $570a: $23
    ld [hl], b                                    ; $570b: $70
    inc hl                                        ; $570c: $23
    ld [hl], e                                    ; $570d: $73
    inc hl                                        ; $570e: $23
    ld [hl], d                                    ; $570f: $72

Jump_010_5710:
    call Call_000_2e3b                            ; $5710: $cd $3b $2e
    ld a, [$c0f4]                                 ; $5713: $fa $f4 $c0
    or a                                          ; $5716: $b7
    jr z, jr_010_5723                             ; $5717: $28 $0a

    ld hl, $c0f6                                  ; $5719: $21 $f6 $c0
    ld a, [hl+]                                   ; $571c: $2a
    or [hl]                                       ; $571d: $b6
    jr nz, jr_010_5723                            ; $571e: $20 $03

    jp Jump_010_58ae                              ; $5720: $c3 $ae $58


jr_010_5723:
    ldh a, [$94]                                  ; $5723: $f0 $94
    bit 0, a                                      ; $5725: $cb $47
    jp nz, Jump_010_57c0                          ; $5727: $c2 $c0 $57

    bit 1, a                                      ; $572a: $cb $4f
    jp nz, Jump_010_58ae                          ; $572c: $c2 $ae $58

    ld a, [$d443]                                 ; $572f: $fa $43 $d4
    cp $04                                        ; $5732: $fe $04
    jp nz, Jump_010_5710                          ; $5734: $c2 $10 $57

    ldh a, [$91]                                  ; $5737: $f0 $91
    bit 6, a                                      ; $5739: $cb $77
    jr z, jr_010_5755                             ; $573b: $28 $18

    ld a, [$d4cd]                                 ; $573d: $fa $cd $d4
    cp $06                                        ; $5740: $fe $06
    jp z, Jump_010_5710                           ; $5742: $ca $10 $57

    ld a, [$d329]                                 ; $5745: $fa $29 $d3
    or a                                          ; $5748: $b7
    jp z, Jump_010_5710                           ; $5749: $ca $10 $57

    dec a                                         ; $574c: $3d
    ld [$d329], a                                 ; $574d: $ea $29 $d3
    rst $08                                       ; $5750: $cf
    adc h                                         ; $5751: $8c
    jp Jump_010_56cc                              ; $5752: $c3 $cc $56


jr_010_5755:
    bit 7, a                                      ; $5755: $cb $7f
    jr z, jr_010_5772                             ; $5757: $28 $19

    ld a, [$d4cd]                                 ; $5759: $fa $cd $d4
    cp $06                                        ; $575c: $fe $06
    jp z, Jump_010_5710                           ; $575e: $ca $10 $57

    ld a, [$d329]                                 ; $5761: $fa $29 $d3
    cp $0c                                        ; $5764: $fe $0c
    jp z, Jump_010_5710                           ; $5766: $ca $10 $57

    inc a                                         ; $5769: $3c
    ld [$d329], a                                 ; $576a: $ea $29 $d3
    rst $08                                       ; $576d: $cf
    adc h                                         ; $576e: $8c
    jp Jump_010_56cc                              ; $576f: $c3 $cc $56


jr_010_5772:
    ldh a, [$90]                                  ; $5772: $f0 $90
    bit 5, a                                      ; $5774: $cb $6f
    jr z, jr_010_5789                             ; $5776: $28 $11

    ld bc, $0000                                  ; $5778: $01 $00 $00
    ld a, [$d461]                                 ; $577b: $fa $61 $d4
    sub $f8                                       ; $577e: $d6 $f8
    bit 7, a                                      ; $5780: $cb $7f
    jr nz, jr_010_579c                            ; $5782: $20 $18

    ld bc, $ff80                                  ; $5784: $01 $80 $ff
    jr jr_010_579c                                ; $5787: $18 $13

jr_010_5789:
    bit 4, a                                      ; $5789: $cb $67
    jr z, jr_010_57bd                             ; $578b: $28 $30

    ld bc, $0000                                  ; $578d: $01 $00 $00
    ld a, [$d461]                                 ; $5790: $fa $61 $d4
    sub $08                                       ; $5793: $d6 $08
    bit 7, a                                      ; $5795: $cb $7f
    jr z, jr_010_579c                             ; $5797: $28 $03

    ld bc, $0080                                  ; $5799: $01 $80 $00

jr_010_579c:
    ld hl, $d418                                  ; $579c: $21 $18 $d4
    ld a, [hl+]                                   ; $579f: $2a
    ld h, [hl]                                    ; $57a0: $66
    ld l, a                                       ; $57a1: $6f
    add hl, bc                                    ; $57a2: $09
    ld a, l                                       ; $57a3: $7d
    ld [$d418], a                                 ; $57a4: $ea $18 $d4
    ld a, h                                       ; $57a7: $7c
    ld [$d419], a                                 ; $57a8: $ea $19 $d4
    ld hl, $d460                                  ; $57ab: $21 $60 $d4
    ld a, [hl+]                                   ; $57ae: $2a
    ld h, [hl]                                    ; $57af: $66
    ld l, a                                       ; $57b0: $6f
    add hl, bc                                    ; $57b1: $09
    ld a, l                                       ; $57b2: $7d
    ld [$d460], a                                 ; $57b3: $ea $60 $d4
    ld a, h                                       ; $57b6: $7c
    ld [$d461], a                                 ; $57b7: $ea $61 $d4
    jp Jump_010_56e7                              ; $57ba: $c3 $e7 $56


jr_010_57bd:
    jp Jump_010_5710                              ; $57bd: $c3 $10 $57


Jump_010_57c0:
    rst $08                                       ; $57c0: $cf

    db $90

    xor a                                         ; $57c2: $af
    ld [$d44d], a                                 ; $57c3: $ea $4d $d4
    ld [$d451], a                                 ; $57c6: $ea $51 $d4
    ld a, [$d329]                                 ; $57c9: $fa $29 $d3
    cp $0d                                        ; $57cc: $fe $0d
    jr z, jr_010_57d8                             ; $57ce: $28 $08

    ld a, $01                                     ; $57d0: $3e $01
    ld hl, $55ac                                  ; $57d2: $21 $ac $55
    call Call_000_23e8                            ; $57d5: $cd $e8 $23

jr_010_57d8:
    ld a, $01                                     ; $57d8: $3e $01
    rst $18                                       ; $57da: $df

    db $0e, $11

    ld bc, $0000                                  ; $57dd: $01 $00 $00

jr_010_57e0:
    call Call_000_2e3b                            ; $57e0: $cd $3b $2e
    ld a, [$d44e]                                 ; $57e3: $fa $4e $d4
    cp $3c                                        ; $57e6: $fe $3c
    jr c, jr_010_57f0                             ; $57e8: $38 $06

    push bc                                       ; $57ea: $c5
    ld b, a                                       ; $57eb: $47
    ld a, $78                                     ; $57ec: $3e $78
    sub b                                         ; $57ee: $90
    pop bc                                        ; $57ef: $c1

jr_010_57f0:
    ld [$d44f], a                                 ; $57f0: $ea $4f $d4
    ld a, [$d44e]                                 ; $57f3: $fa $4e $d4
    cp $78                                        ; $57f6: $fe $78
    jr c, jr_010_57fe                             ; $57f8: $38 $04

    ld a, b                                       ; $57fa: $78
    or a                                          ; $57fb: $b7
    jr z, jr_010_5861                             ; $57fc: $28 $63

jr_010_57fe:
    ld a, [$d44e]                                 ; $57fe: $fa $4e $d4
    and $01                                       ; $5801: $e6 $01
    jr nz, jr_010_580f                            ; $5803: $20 $0a

    ldh a, [$94]                                  ; $5805: $f0 $94
    ld c, a                                       ; $5807: $4f
    ld a, [$d453]                                 ; $5808: $fa $53 $d4
    or c                                          ; $580b: $b1
    ld c, a                                       ; $580c: $4f
    jr jr_010_5816                                ; $580d: $18 $07

jr_010_580f:
    ldh a, [$94]                                  ; $580f: $f0 $94
    ld [$d453], a                                 ; $5811: $ea $53 $d4
    ld c, $00                                     ; $5814: $0e $00

jr_010_5816:
    bit 1, c                                      ; $5816: $cb $49
    jr z, jr_010_581e                             ; $5818: $28 $04

    ld a, b                                       ; $581a: $78
    or a                                          ; $581b: $b7
    jr z, jr_010_5861                             ; $581c: $28 $43

jr_010_581e:
    bit 0, c                                      ; $581e: $cb $41
    jr z, jr_010_5852                             ; $5820: $28 $30

    rst $08                                       ; $5822: $cf

    db $90

    ld c, $00                                     ; $5824: $0e $00
    ld a, b                                       ; $5826: $78
    or a                                          ; $5827: $b7
    jr nz, jr_010_587a                            ; $5828: $20 $50

    ld a, [$d44f]                                 ; $582a: $fa $4f $d4
    ld [$d450], a                                 ; $582d: $ea $50 $d4
    inc b                                         ; $5830: $04
    ld a, [$d329]                                 ; $5831: $fa $29 $d3
    cp $0d                                        ; $5834: $fe $0d
    jr nz, jr_010_5844                            ; $5836: $20 $0c

    ld a, [$d32b]                                 ; $5838: $fa $2b $d3
    ld [$d32a], a                                 ; $583b: $ea $2a $d3
    xor a                                         ; $583e: $af
    ld a, [$d44f]                                 ; $583f: $fa $4f $d4
    jr jr_010_588d                                ; $5842: $18 $49

jr_010_5844:
    ld a, [$d450]                                 ; $5844: $fa $50 $d4
    cp $3c                                        ; $5847: $fe $3c
    jr nz, jr_010_5852                            ; $5849: $20 $07

    ld a, $01                                     ; $584b: $3e $01
    ld [$d452], a                                 ; $584d: $ea $52 $d4
    rst $08                                       ; $5850: $cf

    db $5e

jr_010_5852:
    ld a, [$d44e]                                 ; $5852: $fa $4e $d4
    inc a                                         ; $5855: $3c
    ld [$d44e], a                                 ; $5856: $ea $4e $d4
    cp $8a                                        ; $5859: $fe $8a
    jr nz, jr_010_57e0                            ; $585b: $20 $83

    ld a, b                                       ; $585d: $78
    or a                                          ; $585e: $b7
    jr nz, jr_010_587a                            ; $585f: $20 $19

jr_010_5861:
    rst $08                                       ; $5861: $cf

    db $5f

    ld a, $f0                                     ; $5863: $3e $f0
    ld [$d44d], a                                 ; $5865: $ea $4d $d4
    ld hl, $55ac                                  ; $5868: $21 $ac $55
    call Call_000_2449                            ; $586b: $cd $49 $24
    ld a, $03                                     ; $586e: $3e $03
    rst $18                                       ; $5870: $df

    db $0e, $11

    call Call_000_2ed5                            ; $5873: $cd $d5 $2e

    db $14

    jp Jump_010_56b6                              ; $5877: $c3 $b6 $56


jr_010_587a:
    ld a, $02                                     ; $587a: $3e $02
    rst $18                                       ; $587c: $df

    db $0e, $11

    ld a, [$d44f]                                 ; $587f: $fa $4f $d4
    cp $00                                        ; $5882: $fe $00
    jr nz, jr_010_588d                            ; $5884: $20 $07

    ld a, $01                                     ; $5886: $3e $01
    ld [$d451], a                                 ; $5888: $ea $51 $d4
    rst $08                                       ; $588b: $cf

    db $5e

jr_010_588d:
    ld hl, $55ac                                  ; $588d: $21 $ac $55
    call Call_000_2449                            ; $5890: $cd $49 $24
    call Call_010_5534                            ; $5893: $cd $34 $55
    ldh a, [$9e]                                  ; $5896: $f0 $9e
    or a                                          ; $5898: $b7
    jr z, jr_010_58ab                             ; $5899: $28 $10

    ldh a, [$90]                                  ; $589b: $f0 $90
    bit 2, a                                      ; $589d: $cb $57
    jr z, jr_010_58ab                             ; $589f: $28 $0a

    ld a, $3c                                     ; $58a1: $3e $3c
    ld [$d450], a                                 ; $58a3: $ea $50 $d4
    ld a, $00                                     ; $58a6: $3e $00
    ld [$d44f], a                                 ; $58a8: $ea $4f $d4

jr_010_58ab:
    ld a, $00                                     ; $58ab: $3e $00
    ret                                           ; $58ad: $c9


Jump_010_58ae:
    ld a, $f0                                     ; $58ae: $3e $f0
    ld [$d44d], a                                 ; $58b0: $ea $4d $d4
    xor a                                         ; $58b3: $af
    ld [$d451], a                                 ; $58b4: $ea $51 $d4
    ld hl, $55ac                                  ; $58b7: $21 $ac $55
    call Call_000_2449                            ; $58ba: $cd $49 $24
    ld a, $ff                                     ; $58bd: $3e $ff
    ret                                           ; $58bf: $c9


    nop                                           ; $58c0: $00
    ld [bc], a                                    ; $58c1: $02
    ld [bc], a                                    ; $58c2: $02
    inc b                                         ; $58c3: $04
    inc b                                         ; $58c4: $04
    ld b, $06                                     ; $58c5: $06 $06
    ld [$0a08], sp                                ; $58c7: $08 $08 $0a
    ld a, [bc]                                    ; $58ca: $0a
    inc c                                         ; $58cb: $0c
    inc c                                         ; $58cc: $0c
    ld c, $0e                                     ; $58cd: $0e $0e
    db $10                                        ; $58cf: $10
    db $10                                        ; $58d0: $10
    ld [de], a                                    ; $58d1: $12
    ld [de], a                                    ; $58d2: $12
    inc d                                         ; $58d3: $14
    inc d                                         ; $58d4: $14
    ld d, $16                                     ; $58d5: $16 $16
    jr jr_010_58f1                                ; $58d7: $18 $18

    ld a, [de]                                    ; $58d9: $1a
    ld a, [de]                                    ; $58da: $1a
    inc e                                         ; $58db: $1c
    inc e                                         ; $58dc: $1c
    ld e, $1e                                     ; $58dd: $1e $1e
    jr nz, jr_010_5901                            ; $58df: $20 $20

    ld [hl+], a                                   ; $58e1: $22
    ld [hl+], a                                   ; $58e2: $22
    inc h                                         ; $58e3: $24
    inc h                                         ; $58e4: $24
    ld h, $26                                     ; $58e5: $26 $26
    jr z, jr_010_5911                             ; $58e7: $28 $28

    ld a, [hl+]                                   ; $58e9: $2a
    ld a, [hl+]                                   ; $58ea: $2a
    inc l                                         ; $58eb: $2c
    inc l                                         ; $58ec: $2c
    ld l, $2e                                     ; $58ed: $2e $2e
    jr nc, jr_010_5921                            ; $58ef: $30 $30

jr_010_58f1:
    ld [hl-], a                                   ; $58f1: $32
    ld [hl-], a                                   ; $58f2: $32
    inc [hl]                                      ; $58f3: $34
    inc [hl]                                      ; $58f4: $34
    ld [hl], $36                                  ; $58f5: $36 $36
    jr c, @+$3a                                   ; $58f7: $38 $38

    ld a, [hl-]                                   ; $58f9: $3a
    ld a, [hl-]                                   ; $58fa: $3a
    inc a                                         ; $58fb: $3c
    inc a                                         ; $58fc: $3c
    ld a, [hl-]                                   ; $58fd: $3a
    ld a, [hl-]                                   ; $58fe: $3a
    jr c, jr_010_5939                             ; $58ff: $38 $38

jr_010_5901:
    ld [hl], $36                                  ; $5901: $36 $36
    inc [hl]                                      ; $5903: $34
    inc [hl]                                      ; $5904: $34
    ld [hl-], a                                   ; $5905: $32
    ld [hl-], a                                   ; $5906: $32
    jr nc, jr_010_5939                            ; $5907: $30 $30

    ld l, $2e                                     ; $5909: $2e $2e
    inc l                                         ; $590b: $2c
    inc l                                         ; $590c: $2c
    ld a, [hl+]                                   ; $590d: $2a
    ld a, [hl+]                                   ; $590e: $2a
    jr z, jr_010_5939                             ; $590f: $28 $28

jr_010_5911:
    ld h, $26                                     ; $5911: $26 $26
    inc h                                         ; $5913: $24
    inc h                                         ; $5914: $24
    ld [hl+], a                                   ; $5915: $22
    ld [hl+], a                                   ; $5916: $22
    jr nz, jr_010_5939                            ; $5917: $20 $20

    ld e, $1e                                     ; $5919: $1e $1e
    inc e                                         ; $591b: $1c
    inc e                                         ; $591c: $1c
    ld a, [de]                                    ; $591d: $1a
    ld a, [de]                                    ; $591e: $1a
    jr jr_010_5939                                ; $591f: $18 $18

jr_010_5921:
    ld d, $16                                     ; $5921: $16 $16
    inc d                                         ; $5923: $14
    inc d                                         ; $5924: $14
    ld [de], a                                    ; $5925: $12
    ld [de], a                                    ; $5926: $12
    db $10                                        ; $5927: $10
    db $10                                        ; $5928: $10
    ld c, $0e                                     ; $5929: $0e $0e
    inc c                                         ; $592b: $0c
    inc c                                         ; $592c: $0c
    ld a, [bc]                                    ; $592d: $0a
    ld a, [bc]                                    ; $592e: $0a
    ld [$0608], sp                                ; $592f: $08 $08 $06
    ld b, $04                                     ; $5932: $06 $04
    inc b                                         ; $5934: $04
    ld [bc], a                                    ; $5935: $02
    ld [bc], a                                    ; $5936: $02
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00

jr_010_5939:
    cp $fe                                        ; $5939: $fe $fe
    db $fc                                        ; $593b: $fc
    db $fc                                        ; $593c: $fc
    ld a, [$f8fa]                                 ; $593d: $fa $fa $f8
    ld hl, sp-$0a                                 ; $5940: $f8 $f6
    or $3e                                        ; $5942: $f6 $3e
    dec l                                         ; $5944: $2d
    ld [$d485], a                                 ; $5945: $ea $85 $d4
    rst $18                                       ; $5948: $df
    db $10                                        ; $5949: $10
    dec sp                                        ; $594a: $3b
    rst $18                                       ; $594b: $df
    ld l, $02                                     ; $594c: $2e $02
    rst $18                                       ; $594e: $df
    ld c, $3b                                     ; $594f: $0e $3b
    ld a, [$d4db]                                 ; $5951: $fa $db $d4
    or a                                          ; $5954: $b7
    ret nz                                        ; $5955: $c0

    call Call_010_6907                            ; $5956: $cd $07 $69
    ld [$d321], a                                 ; $5959: $ea $21 $d3
    rst $18                                       ; $595c: $df
    jr jr_010_5971                                ; $595d: $18 $12

    rst $18                                       ; $595f: $df
    ld [$df12], sp                                ; $5960: $08 $12 $df
    ld d, b                                       ; $5963: $50
    ld [de], a                                    ; $5964: $12
    call Call_000_2e3b                            ; $5965: $cd $3b $2e
    rst $18                                       ; $5968: $df
    ld c, $12                                     ; $5969: $0e $12
    rst $18                                       ; $596b: $df
    ld b, $12                                     ; $596c: $06 $12
    call Call_010_5eef                            ; $596e: $cd $ef $5e

jr_010_5971:
    xor a                                         ; $5971: $af
    ret                                           ; $5972: $c9


Jump_010_5973:
    rst $18                                       ; $5973: $df
    jr z, jr_010_5978                             ; $5974: $28 $02

    jr jr_010_5999                                ; $5976: $18 $21

Jump_010_5978:
jr_010_5978:
    rst $18                                       ; $5978: $df
    nop                                           ; $5979: $00
    inc a                                         ; $597a: $3c
    ld [$d329], a                                 ; $597b: $ea $29 $d3
    ld a, d                                       ; $597e: $7a
    ld [$d32a], a                                 ; $597f: $ea $2a $d3
    ld [$d32b], a                                 ; $5982: $ea $2b $d3
    ld a, c                                       ; $5985: $79
    ld [$d418], a                                 ; $5986: $ea $18 $d4
    ld a, b                                       ; $5989: $78
    ld [$d419], a                                 ; $598a: $ea $19 $d4
    ld a, l                                       ; $598d: $7d
    ld [$d4d9], a                                 ; $598e: $ea $d9 $d4
    ld a, h                                       ; $5991: $7c
    ld [$d4d8], a                                 ; $5992: $ea $d8 $d4
    ld a, e                                       ; $5995: $7b
    ld [$d4da], a                                 ; $5996: $ea $da $d4

jr_010_5999:
    ld a, $f0                                     ; $5999: $3e $f0
    ld [$d44d], a                                 ; $599b: $ea $4d $d4
    ld a, $02                                     ; $599e: $3e $02
    ld [$d438], a                                 ; $59a0: $ea $38 $d4
    call Call_000_2e3b                            ; $59a3: $cd $3b $2e
    call Call_010_6907                            ; $59a6: $cd $07 $69
    ld [$d321], a                                 ; $59a9: $ea $21 $d3
    call Call_010_5eef                            ; $59ac: $cd $ef $5e
    ld hl, $d426                                  ; $59af: $21 $26 $d4
    ld de, $d42a                                  ; $59b2: $11 $2a $d4
    ld bc, $0004                                  ; $59b5: $01 $04 $00
    call Call_000_03d3                            ; $59b8: $cd $d3 $03
    call Call_010_5ee2                            ; $59bb: $cd $e2 $5e
    ld bc, $0103                                  ; $59be: $01 $03 $01

Jump_010_59c1:
    push de                                       ; $59c1: $d5
    push hl                                       ; $59c2: $e5
    push hl                                       ; $59c3: $e5
    ld hl, $d404                                  ; $59c4: $21 $04 $d4
    ld a, [hl+]                                   ; $59c7: $2a
    ld h, [hl]                                    ; $59c8: $66
    ld l, a                                       ; $59c9: $6f
    add hl, de                                    ; $59ca: $19
    pop de                                        ; $59cb: $d1
    push hl                                       ; $59cc: $e5
    ld hl, $d401                                  ; $59cd: $21 $01 $d4
    ld a, [hl+]                                   ; $59d0: $2a
    ld h, [hl]                                    ; $59d1: $66
    ld l, a                                       ; $59d2: $6f
    add hl, de                                    ; $59d3: $19
    pop de                                        ; $59d4: $d1
    push de                                       ; $59d5: $d5
    ld a, [$d42a]                                 ; $59d6: $fa $2a $d4
    ld e, a                                       ; $59d9: $5f
    ld a, [$d42b]                                 ; $59da: $fa $2b $d4
    ld d, a                                       ; $59dd: $57
    push de                                       ; $59de: $d5
    call Call_000_08ac                            ; $59df: $cd $ac $08
    ld a, b                                       ; $59e2: $78
    call Call_000_0bb5                            ; $59e3: $cd $b5 $0b
    sra h                                         ; $59e6: $cb $2c
    rr l                                          ; $59e8: $cb $1d
    sra h                                         ; $59ea: $cb $2c
    rr l                                          ; $59ec: $cb $1d
    pop de                                        ; $59ee: $d1
    add hl, de                                    ; $59ef: $19
    ld a, l                                       ; $59f0: $7d
    ld [$d426], a                                 ; $59f1: $ea $26 $d4
    ld a, h                                       ; $59f4: $7c
    ld [$d427], a                                 ; $59f5: $ea $27 $d4
    pop hl                                        ; $59f8: $e1
    ld a, [$d42c]                                 ; $59f9: $fa $2c $d4
    ld e, a                                       ; $59fc: $5f
    ld a, [$d42d]                                 ; $59fd: $fa $2d $d4
    ld d, a                                       ; $5a00: $57
    push de                                       ; $5a01: $d5
    call Call_000_08ac                            ; $5a02: $cd $ac $08
    ld a, b                                       ; $5a05: $78
    call Call_000_0bb5                            ; $5a06: $cd $b5 $0b
    sra h                                         ; $5a09: $cb $2c
    rr l                                          ; $5a0b: $cb $1d
    sra h                                         ; $5a0d: $cb $2c
    rr l                                          ; $5a0f: $cb $1d
    pop de                                        ; $5a11: $d1
    add hl, de                                    ; $5a12: $19
    ld a, l                                       ; $5a13: $7d
    ld [$d428], a                                 ; $5a14: $ea $28 $d4
    ld a, h                                       ; $5a17: $7c
    ld [$d429], a                                 ; $5a18: $ea $29 $d4
    call Call_010_5b81                            ; $5a1b: $cd $81 $5b
    call Call_000_2e3b                            ; $5a1e: $cd $3b $2e
    pop hl                                        ; $5a21: $e1
    pop de                                        ; $5a22: $d1
    inc b                                         ; $5a23: $04
    dec c                                         ; $5a24: $0d
    jp nz, Jump_010_59c1                          ; $5a25: $c2 $c1 $59

    call Call_010_6145                            ; $5a28: $cd $45 $61
    rst $18                                       ; $5a2b: $df
    ld b, $40                                     ; $5a2c: $06 $40
    ld a, l                                       ; $5a2e: $7d
    ld [$d428], a                                 ; $5a2f: $ea $28 $d4
    ld a, h                                       ; $5a32: $7c
    ld [$d429], a                                 ; $5a33: $ea $29 $d4
    call Call_000_2ed5                            ; $5a36: $cd $d5 $2e
    inc a                                         ; $5a39: $3c
    xor a                                         ; $5a3a: $af
    ret                                           ; $5a3b: $c9


    xor a                                         ; $5a3c: $af
    ld [$d36b], a                                 ; $5a3d: $ea $6b $d3
    call Call_010_5ee2                            ; $5a40: $cd $e2 $5e
    push hl                                       ; $5a43: $e5
    ld hl, $d404                                  ; $5a44: $21 $04 $d4
    ld a, [hl+]                                   ; $5a47: $2a
    ld h, [hl]                                    ; $5a48: $66
    ld l, a                                       ; $5a49: $6f
    add hl, de                                    ; $5a4a: $19
    pop de                                        ; $5a4b: $d1
    push hl                                       ; $5a4c: $e5
    ld hl, $d401                                  ; $5a4d: $21 $01 $d4
    ld a, [hl+]                                   ; $5a50: $2a
    ld h, [hl]                                    ; $5a51: $66
    ld l, a                                       ; $5a52: $6f
    add hl, de                                    ; $5a53: $19
    ld a, [$d443]                                 ; $5a54: $fa $43 $d4
    cp $01                                        ; $5a57: $fe $01
    jp z, Jump_010_5aef                           ; $5a59: $ca $ef $5a

    cp $02                                        ; $5a5c: $fe $02
    jp z, Jump_010_5aef                           ; $5a5e: $ca $ef $5a

    push hl                                       ; $5a61: $e5
    ld a, [$c329]                                 ; $5a62: $fa $29 $c3
    ld h, a                                       ; $5a65: $67
    ld l, $00                                     ; $5a66: $2e $00
    ld de, $0080                                  ; $5a68: $11 $80 $00
    add hl, de                                    ; $5a6b: $19
    ld b, h                                       ; $5a6c: $44
    ld c, l                                       ; $5a6d: $4d
    pop de                                        ; $5a6e: $d1
    push de                                       ; $5a6f: $d5
    call Call_000_08ac                            ; $5a70: $cd $ac $08
    bit 7, h                                      ; $5a73: $cb $7c
    pop hl                                        ; $5a75: $e1
    jr nz, jr_010_5a81                            ; $5a76: $20 $09

    ld hl, $d36b                                  ; $5a78: $21 $6b $d3
    set 1, [hl]                                   ; $5a7b: $cb $ce
    ld h, b                                       ; $5a7d: $60
    ld l, c                                       ; $5a7e: $69
    jr jr_010_5a9f                                ; $5a7f: $18 $1e

jr_010_5a81:
    push hl                                       ; $5a81: $e5
    ld a, [$c32b]                                 ; $5a82: $fa $2b $c3
    ld h, a                                       ; $5a85: $67
    ld l, $00                                     ; $5a86: $2e $00
    ld de, $ff80                                  ; $5a88: $11 $80 $ff
    add hl, de                                    ; $5a8b: $19
    ld b, h                                       ; $5a8c: $44
    ld c, l                                       ; $5a8d: $4d
    pop de                                        ; $5a8e: $d1
    push de                                       ; $5a8f: $d5
    call Call_000_08ac                            ; $5a90: $cd $ac $08
    bit 7, h                                      ; $5a93: $cb $7c
    pop hl                                        ; $5a95: $e1
    jr z, jr_010_5a9f                             ; $5a96: $28 $07

    ld hl, $d36b                                  ; $5a98: $21 $6b $d3
    set 0, [hl]                                   ; $5a9b: $cb $c6
    ld h, b                                       ; $5a9d: $60
    ld l, c                                       ; $5a9e: $69

jr_010_5a9f:
    ld a, l                                       ; $5a9f: $7d
    ld [$d426], a                                 ; $5aa0: $ea $26 $d4
    ld a, h                                       ; $5aa3: $7c
    ld [$d427], a                                 ; $5aa4: $ea $27 $d4
    pop hl                                        ; $5aa7: $e1
    push hl                                       ; $5aa8: $e5
    ld a, [$c32a]                                 ; $5aa9: $fa $2a $c3
    ld h, a                                       ; $5aac: $67
    ld l, $00                                     ; $5aad: $2e $00
    ld de, $0080                                  ; $5aaf: $11 $80 $00
    add hl, de                                    ; $5ab2: $19
    ld b, h                                       ; $5ab3: $44
    ld c, l                                       ; $5ab4: $4d
    pop de                                        ; $5ab5: $d1
    push de                                       ; $5ab6: $d5
    call Call_000_08ac                            ; $5ab7: $cd $ac $08
    bit 7, h                                      ; $5aba: $cb $7c
    pop hl                                        ; $5abc: $e1
    jr nz, jr_010_5ac8                            ; $5abd: $20 $09

    ld hl, $d36b                                  ; $5abf: $21 $6b $d3
    set 3, [hl]                                   ; $5ac2: $cb $de
    ld h, b                                       ; $5ac4: $60
    ld l, c                                       ; $5ac5: $69
    jr jr_010_5ae6                                ; $5ac6: $18 $1e

jr_010_5ac8:
    push hl                                       ; $5ac8: $e5
    ld a, [$c32c]                                 ; $5ac9: $fa $2c $c3
    ld h, a                                       ; $5acc: $67
    ld l, $00                                     ; $5acd: $2e $00
    ld de, $fd80                                  ; $5acf: $11 $80 $fd
    add hl, de                                    ; $5ad2: $19
    ld b, h                                       ; $5ad3: $44
    ld c, l                                       ; $5ad4: $4d
    pop de                                        ; $5ad5: $d1
    push de                                       ; $5ad6: $d5
    call Call_000_08ac                            ; $5ad7: $cd $ac $08
    bit 7, h                                      ; $5ada: $cb $7c
    pop hl                                        ; $5adc: $e1
    jr z, jr_010_5ae6                             ; $5add: $28 $07

    ld hl, $d36b                                  ; $5adf: $21 $6b $d3
    set 2, [hl]                                   ; $5ae2: $cb $d6
    ld h, b                                       ; $5ae4: $60
    ld l, c                                       ; $5ae5: $69

jr_010_5ae6:
    ld a, l                                       ; $5ae6: $7d
    ld [$d428], a                                 ; $5ae7: $ea $28 $d4
    ld a, h                                       ; $5aea: $7c
    ld [$d429], a                                 ; $5aeb: $ea $29 $d4
    ret                                           ; $5aee: $c9


Jump_010_5aef:
    push hl                                       ; $5aef: $e5
    ld a, [$d441]                                 ; $5af0: $fa $41 $d4
    ld h, a                                       ; $5af3: $67
    ld l, $00                                     ; $5af4: $2e $00
    ld de, $0020                                  ; $5af6: $11 $20 $00
    add hl, de                                    ; $5af9: $19
    ld b, h                                       ; $5afa: $44
    ld c, l                                       ; $5afb: $4d
    pop de                                        ; $5afc: $d1
    push de                                       ; $5afd: $d5
    call Call_000_08ac                            ; $5afe: $cd $ac $08
    bit 7, h                                      ; $5b01: $cb $7c
    pop hl                                        ; $5b03: $e1
    jr nz, jr_010_5b0f                            ; $5b04: $20 $09

    ld hl, $d36b                                  ; $5b06: $21 $6b $d3
    set 1, [hl]                                   ; $5b09: $cb $ce
    ld h, b                                       ; $5b0b: $60
    ld l, c                                       ; $5b0c: $69
    jr jr_010_5b2f                                ; $5b0d: $18 $20

jr_010_5b0f:
    push hl                                       ; $5b0f: $e5
    ld a, [$d441]                                 ; $5b10: $fa $41 $d4
    add $05                                       ; $5b13: $c6 $05
    ld h, a                                       ; $5b15: $67
    ld l, $00                                     ; $5b16: $2e $00
    ld de, $ffe0                                  ; $5b18: $11 $e0 $ff
    add hl, de                                    ; $5b1b: $19
    ld b, h                                       ; $5b1c: $44
    ld c, l                                       ; $5b1d: $4d
    pop de                                        ; $5b1e: $d1
    push de                                       ; $5b1f: $d5
    call Call_000_08ac                            ; $5b20: $cd $ac $08
    bit 7, h                                      ; $5b23: $cb $7c
    pop hl                                        ; $5b25: $e1
    jr z, jr_010_5b2f                             ; $5b26: $28 $07

    ld hl, $d36b                                  ; $5b28: $21 $6b $d3
    set 0, [hl]                                   ; $5b2b: $cb $c6
    ld h, b                                       ; $5b2d: $60
    ld l, c                                       ; $5b2e: $69

jr_010_5b2f:
    ld a, l                                       ; $5b2f: $7d
    ld [$d426], a                                 ; $5b30: $ea $26 $d4
    ld a, h                                       ; $5b33: $7c
    ld [$d427], a                                 ; $5b34: $ea $27 $d4
    pop hl                                        ; $5b37: $e1
    push hl                                       ; $5b38: $e5
    ld a, [$d442]                                 ; $5b39: $fa $42 $d4
    ld h, a                                       ; $5b3c: $67
    ld l, $00                                     ; $5b3d: $2e $00
    ld de, $0020                                  ; $5b3f: $11 $20 $00
    add hl, de                                    ; $5b42: $19
    ld b, h                                       ; $5b43: $44
    ld c, l                                       ; $5b44: $4d
    pop de                                        ; $5b45: $d1
    push de                                       ; $5b46: $d5
    call Call_000_08ac                            ; $5b47: $cd $ac $08
    bit 7, h                                      ; $5b4a: $cb $7c
    pop hl                                        ; $5b4c: $e1
    jr nz, jr_010_5b58                            ; $5b4d: $20 $09

    ld hl, $d36b                                  ; $5b4f: $21 $6b $d3
    set 3, [hl]                                   ; $5b52: $cb $de
    ld h, b                                       ; $5b54: $60
    ld l, c                                       ; $5b55: $69
    jr jr_010_5b78                                ; $5b56: $18 $20

jr_010_5b58:
    push hl                                       ; $5b58: $e5
    ld a, [$d442]                                 ; $5b59: $fa $42 $d4
    add $04                                       ; $5b5c: $c6 $04
    ld h, a                                       ; $5b5e: $67
    ld l, $00                                     ; $5b5f: $2e $00
    ld de, $ffe0                                  ; $5b61: $11 $e0 $ff
    add hl, de                                    ; $5b64: $19
    ld b, h                                       ; $5b65: $44
    ld c, l                                       ; $5b66: $4d
    pop de                                        ; $5b67: $d1
    push de                                       ; $5b68: $d5
    call Call_000_08ac                            ; $5b69: $cd $ac $08
    bit 7, h                                      ; $5b6c: $cb $7c
    pop hl                                        ; $5b6e: $e1
    jr z, jr_010_5b78                             ; $5b6f: $28 $07

    ld hl, $d36b                                  ; $5b71: $21 $6b $d3
    set 2, [hl]                                   ; $5b74: $cb $d6
    ld h, b                                       ; $5b76: $60
    ld l, c                                       ; $5b77: $69

jr_010_5b78:
    ld a, l                                       ; $5b78: $7d
    ld [$d428], a                                 ; $5b79: $ea $28 $d4
    ld a, h                                       ; $5b7c: $7c
    ld [$d429], a                                 ; $5b7d: $ea $29 $d4
    ret                                           ; $5b80: $c9


Call_010_5b81:
    push af                                       ; $5b81: $f5
    push bc                                       ; $5b82: $c5
    push de                                       ; $5b83: $d5
    push hl                                       ; $5b84: $e5
    ld a, c                                       ; $5b85: $79
    cp $01                                        ; $5b86: $fe $01
    jr nz, jr_010_5b95                            ; $5b88: $20 $0b

    rst $18                                       ; $5b8a: $df

    db $18, $12

    rst $18                                       ; $5b8d: $df

    db $08, $12

    rst $18                                       ; $5b90: $df

    db $50, $12

    jr jr_010_5ba1                                ; $5b93: $18 $0c

jr_010_5b95:
    cp $02                                        ; $5b95: $fe $02
    jr nz, jr_010_5b9e                            ; $5b97: $20 $05

    rst $18                                       ; $5b99: $df

    db $36, $12

    jr jr_010_5ba1                                ; $5b9c: $18 $03

jr_010_5b9e:
    rst $18                                       ; $5b9e: $df

    db $06, $12

jr_010_5ba1:
    pop hl                                        ; $5ba1: $e1
    pop de                                        ; $5ba2: $d1
    pop bc                                        ; $5ba3: $c1
    pop af                                        ; $5ba4: $f1
    ret                                           ; $5ba5: $c9


Call_010_5ba6:
    or a                                          ; $5ba6: $b7
    jr nz, jr_010_5c1f                            ; $5ba7: $20 $76

    ld hl, $d401                                  ; $5ba9: $21 $01 $d4
    ld de, $d426                                  ; $5bac: $11 $26 $d4
    ld a, [hl+]                                   ; $5baf: $2a
    ld [de], a                                    ; $5bb0: $12
    inc de                                        ; $5bb1: $13
    ld a, [hl+]                                   ; $5bb2: $2a
    ld [de], a                                    ; $5bb3: $12
    inc de                                        ; $5bb4: $13
    inc hl                                        ; $5bb5: $23
    ld a, [hl+]                                   ; $5bb6: $2a
    ld [de], a                                    ; $5bb7: $12
    inc de                                        ; $5bb8: $13
    ld a, [hl]                                    ; $5bb9: $7e
    ld [de], a                                    ; $5bba: $12
    xor a                                         ; $5bbb: $af
    ld [$d36c], a                                 ; $5bbc: $ea $6c $d3
    ld a, [$d4e7]                                 ; $5bbf: $fa $e7 $d4
    or a                                          ; $5bc2: $b7
    jr nz, jr_010_5bf9                            ; $5bc3: $20 $34

    call Call_010_6406                            ; $5bc5: $cd $06 $64
    ld a, c                                       ; $5bc8: $79
    ld [$d418], a                                 ; $5bc9: $ea $18 $d4
    ld a, b                                       ; $5bcc: $78
    ld [$d419], a                                 ; $5bcd: $ea $19 $d4
    xor a                                         ; $5bd0: $af
    ld hl, $d32a                                  ; $5bd1: $21 $2a $d3
    ld [hl+], a                                   ; $5bd4: $22
    ld [hl], a                                    ; $5bd5: $77
    call Call_010_62ad                            ; $5bd6: $cd $ad $62
    push hl                                       ; $5bd9: $e5
    ld de, $fbd5                                  ; $5bda: $11 $d5 $fb
    add hl, de                                    ; $5bdd: $19
    bit 7, h                                      ; $5bde: $cb $7c
    pop hl                                        ; $5be0: $e1
    jr nz, jr_010_5be7                            ; $5be1: $20 $04

    ld a, $02                                     ; $5be3: $3e $02
    jr jr_010_5bf4                                ; $5be5: $18 $0d

jr_010_5be7:
    ld de, $fec0                                  ; $5be7: $11 $c0 $fe
    add hl, de                                    ; $5bea: $19
    bit 7, h                                      ; $5beb: $cb $7c
    jr nz, jr_010_5bf3                            ; $5bed: $20 $04

    ld a, $01                                     ; $5bef: $3e $01
    jr jr_010_5bf4                                ; $5bf1: $18 $01

jr_010_5bf3:
    xor a                                         ; $5bf3: $af

jr_010_5bf4:
    ld [$d32b], a                                 ; $5bf4: $ea $2b $d3
    jr jr_010_5c1d                                ; $5bf7: $18 $24

jr_010_5bf9:
    ld a, [$d4e8]                                 ; $5bf9: $fa $e8 $d4
    ld [$d329], a                                 ; $5bfc: $ea $29 $d3
    ld hl, $d4e9                                  ; $5bff: $21 $e9 $d4
    ld a, [hl+]                                   ; $5c02: $2a
    ld b, [hl]                                    ; $5c03: $46
    ld c, a                                       ; $5c04: $4f
    ld a, c                                       ; $5c05: $79
    ld [$d418], a                                 ; $5c06: $ea $18 $d4
    ld a, b                                       ; $5c09: $78
    ld [$d419], a                                 ; $5c0a: $ea $19 $d4
    ld a, [$d4eb]                                 ; $5c0d: $fa $eb $d4
    ld [$d32a], a                                 ; $5c10: $ea $2a $d3
    ld a, [$d4ec]                                 ; $5c13: $fa $ec $d4
    ld [$d32b], a                                 ; $5c16: $ea $2b $d3
    xor a                                         ; $5c19: $af
    ld [$d4e7], a                                 ; $5c1a: $ea $e7 $d4

jr_010_5c1d:
    rst $08                                       ; $5c1d: $cf

    db $60

jr_010_5c1f:
    ld a, [$d329]                                 ; $5c1f: $fa $29 $d3
    cp $0d                                        ; $5c22: $fe $0d
    jr nz, jr_010_5c2a                            ; $5c24: $20 $04

    xor a                                         ; $5c26: $af
    ld [$d32a], a                                 ; $5c27: $ea $2a $d3

jr_010_5c2a:
    xor a                                         ; $5c2a: $af
    ld [$d480], a                                 ; $5c2b: $ea $80 $d4
    ld [$d382], a                                 ; $5c2e: $ea $82 $d3
    ld a, $28                                     ; $5c31: $3e $28
    call Call_010_4b14                            ; $5c33: $cd $14 $4b
    ld a, [hl]                                    ; $5c36: $7e
    rst $18                                       ; $5c37: $df

    db $38, $12

    call Call_000_2e3b                            ; $5c3a: $cd $3b $2e
    rst $18                                       ; $5c3d: $df

    db $18, $12

    call Call_000_2e3b                            ; $5c40: $cd $3b $2e
    rst $18                                       ; $5c43: $df

    db $08, $12

    rst $18                                       ; $5c46: $df

    db $50, $12

    call Call_000_2e3b                            ; $5c49: $cd $3b $2e
    rst $18                                       ; $5c4c: $df

    db $0e, $12

    call Call_000_2e3b                            ; $5c4f: $cd $3b $2e
    xor a                                         ; $5c52: $af
    ld [$d513], a                                 ; $5c53: $ea $13 $d5
    ld a, [$d4d7]                                 ; $5c56: $fa $d7 $d4
    cp $01                                        ; $5c59: $fe $01
    jp z, Jump_010_5978                           ; $5c5b: $ca $78 $59

    cp $02                                        ; $5c5e: $fe $02
    jp z, Jump_010_5973                           ; $5c60: $ca $73 $59

    cp $03                                        ; $5c63: $fe $03
    jp z, $5943                                   ; $5c65: $ca $43 $59

    rst $18                                       ; $5c68: $df

    db $5e, $02

    ld a, $f0                                     ; $5c6b: $3e $f0
    ld [$d44d], a                                 ; $5c6d: $ea $4d $d4
    ld hl, $d438                                  ; $5c70: $21 $38 $d4
    ld a, [$d443]                                 ; $5c73: $fa $43 $d4
    or a                                          ; $5c76: $b7
    jr z, jr_010_5c7d                             ; $5c77: $28 $04

    ld [hl], $04                                  ; $5c79: $36 $04
    jr jr_010_5c7f                                ; $5c7b: $18 $02

jr_010_5c7d:
    ld [hl], $02                                  ; $5c7d: $36 $02

jr_010_5c7f:
    ld a, $01                                     ; $5c7f: $3e $01
    ld [$d4d4], a                                 ; $5c81: $ea $d4 $d4
    call Call_000_2e3b                            ; $5c84: $cd $3b $2e

Jump_010_5c87:
    call Call_010_6907                            ; $5c87: $cd $07 $69
    ld [$d321], a                                 ; $5c8a: $ea $21 $d3
    call Call_010_5eef                            ; $5c8d: $cd $ef $5e
    xor a                                         ; $5c90: $af
    ld [$d480], a                                 ; $5c91: $ea $80 $d4
    ld hl, $d426                                  ; $5c94: $21 $26 $d4
    ld de, $d42a                                  ; $5c97: $11 $2a $d4
    ld bc, $0004                                  ; $5c9a: $01 $04 $00
    call Call_000_03d3                            ; $5c9d: $cd $d3 $03
    call Call_010_5ee2                            ; $5ca0: $cd $e2 $5e
    ld bc, $0103                                  ; $5ca3: $01 $03 $01

Jump_010_5ca6:
    push de                                       ; $5ca6: $d5
    push hl                                       ; $5ca7: $e5
    push hl                                       ; $5ca8: $e5
    ld hl, $d404                                  ; $5ca9: $21 $04 $d4
    ld a, [hl+]                                   ; $5cac: $2a
    ld h, [hl]                                    ; $5cad: $66
    ld l, a                                       ; $5cae: $6f
    add hl, de                                    ; $5caf: $19
    pop de                                        ; $5cb0: $d1
    push hl                                       ; $5cb1: $e5
    ld hl, $d401                                  ; $5cb2: $21 $01 $d4
    ld a, [hl+]                                   ; $5cb5: $2a
    ld h, [hl]                                    ; $5cb6: $66
    ld l, a                                       ; $5cb7: $6f
    add hl, de                                    ; $5cb8: $19
    pop de                                        ; $5cb9: $d1
    push de                                       ; $5cba: $d5
    ld a, [$d42a]                                 ; $5cbb: $fa $2a $d4
    ld e, a                                       ; $5cbe: $5f
    ld a, [$d42b]                                 ; $5cbf: $fa $2b $d4
    ld d, a                                       ; $5cc2: $57
    push de                                       ; $5cc3: $d5
    call Call_000_08ac                            ; $5cc4: $cd $ac $08
    ld a, b                                       ; $5cc7: $78
    call Call_000_0bb5                            ; $5cc8: $cd $b5 $0b
    sra h                                         ; $5ccb: $cb $2c
    rr l                                          ; $5ccd: $cb $1d
    sra h                                         ; $5ccf: $cb $2c
    rr l                                          ; $5cd1: $cb $1d
    pop de                                        ; $5cd3: $d1
    add hl, de                                    ; $5cd4: $19
    ld a, l                                       ; $5cd5: $7d
    ld [$d426], a                                 ; $5cd6: $ea $26 $d4
    ld a, h                                       ; $5cd9: $7c
    ld [$d427], a                                 ; $5cda: $ea $27 $d4
    pop hl                                        ; $5cdd: $e1
    ld a, [$d42c]                                 ; $5cde: $fa $2c $d4
    ld e, a                                       ; $5ce1: $5f
    ld a, [$d42d]                                 ; $5ce2: $fa $2d $d4
    ld d, a                                       ; $5ce5: $57
    push de                                       ; $5ce6: $d5
    call Call_000_08ac                            ; $5ce7: $cd $ac $08
    ld a, b                                       ; $5cea: $78
    call Call_000_0bb5                            ; $5ceb: $cd $b5 $0b
    sra h                                         ; $5cee: $cb $2c
    rr l                                          ; $5cf0: $cb $1d
    sra h                                         ; $5cf2: $cb $2c
    rr l                                          ; $5cf4: $cb $1d
    pop de                                        ; $5cf6: $d1
    add hl, de                                    ; $5cf7: $19
    ld a, l                                       ; $5cf8: $7d
    ld [$d428], a                                 ; $5cf9: $ea $28 $d4
    ld a, h                                       ; $5cfc: $7c
    ld [$d429], a                                 ; $5cfd: $ea $29 $d4
    call Call_010_5b81                            ; $5d00: $cd $81 $5b
    call Call_000_2e3b                            ; $5d03: $cd $3b $2e
    pop hl                                        ; $5d06: $e1
    pop de                                        ; $5d07: $d1
    inc b                                         ; $5d08: $04
    dec c                                         ; $5d09: $0d
    jp nz, Jump_010_5ca6                          ; $5d0a: $c2 $a6 $5c

Jump_010_5d0d:
    call Call_010_6145                            ; $5d0d: $cd $45 $61
    rst $18                                       ; $5d10: $df

    db $06, $40

    call Call_010_5549                            ; $5d13: $cd $49 $55

Jump_010_5d16:
    call Call_000_2e3b                            ; $5d16: $cd $3b $2e
    rst $18                                       ; $5d19: $df

    db $5c, $02

    ld a, [$c0f4]                                 ; $5d1c: $fa $f4 $c0
    or a                                          ; $5d1f: $b7
    jr z, jr_010_5d32                             ; $5d20: $28 $10

    ld hl, $c0f6                                  ; $5d22: $21 $f6 $c0
    ld a, [hl+]                                   ; $5d25: $2a
    or [hl]                                       ; $5d26: $b6
    jr nz, jr_010_5d32                            ; $5d27: $20 $09

    call Call_000_2ed5                            ; $5d29: $cd $d5 $2e
    inc a                                         ; $5d2c: $3c
    ld a, $8f                                     ; $5d2d: $3e $8f
    jp Jump_010_5eaf                              ; $5d2f: $c3 $af $5e


jr_010_5d32:
    ld a, [$d438]                                 ; $5d32: $fa $38 $d4
    cp $01                                        ; $5d35: $fe $01
    jr nz, jr_010_5d46                            ; $5d37: $20 $0d

    ldh a, [$90]                                  ; $5d39: $f0 $90
    bit 2, a                                      ; $5d3b: $cb $57
    jr nz, jr_010_5d46                            ; $5d3d: $20 $07

    ld a, $02                                     ; $5d3f: $3e $02
    ld [$d438], a                                 ; $5d41: $ea $38 $d4
    rst $08                                       ; $5d44: $cf
    ld h, b                                       ; $5d45: $60

jr_010_5d46:
    ldh a, [$94]                                  ; $5d46: $f0 $94
    bit 0, a                                      ; $5d48: $cb $47
    jp nz, Jump_010_5eaf                          ; $5d4a: $c2 $af $5e

    bit 2, a                                      ; $5d4d: $cb $57
    jr z, jr_010_5d99                             ; $5d4f: $28 $48

    ld a, [$d438]                                 ; $5d51: $fa $38 $d4
    cp $02                                        ; $5d54: $fe $02
    jr nz, jr_010_5d7f                            ; $5d56: $20 $27

    rst $08                                       ; $5d58: $cf
    ld h, b                                       ; $5d59: $60
    ld a, $04                                     ; $5d5a: $3e $04
    ld [$d438], a                                 ; $5d5c: $ea $38 $d4
    call Call_000_2e3b                            ; $5d5f: $cd $3b $2e
    ldh a, [$94]                                  ; $5d62: $f0 $94
    or a                                          ; $5d64: $b7
    jr nz, jr_010_5d76                            ; $5d65: $20 $0f

    rst $18                                       ; $5d67: $df
    ld a, [bc]                                    ; $5d68: $0a
    ld de, $28b7                                  ; $5d69: $11 $b7 $28
    ld a, [c]                                     ; $5d6c: $f2

jr_010_5d6d:
    call Call_000_2e3b                            ; $5d6d: $cd $3b $2e
    ldh a, [$90]                                  ; $5d70: $f0 $90
    bit 2, a                                      ; $5d72: $cb $57
    jr nz, jr_010_5d6d                            ; $5d74: $20 $f7

jr_010_5d76:
    ld a, $01                                     ; $5d76: $3e $01
    rst $18                                       ; $5d78: $df
    nop                                           ; $5d79: $00
    inc de                                        ; $5d7a: $13
    rst $08                                       ; $5d7b: $cf
    ld h, c                                       ; $5d7c: $61
    jr jr_010_5d8e                                ; $5d7d: $18 $0f

jr_010_5d7f:
    cp $04                                        ; $5d7f: $fe $04
    jr nz, jr_010_5d8e                            ; $5d81: $20 $0b

    ld a, $01                                     ; $5d83: $3e $01
    ld [$d438], a                                 ; $5d85: $ea $38 $d4
    xor a                                         ; $5d88: $af
    rst $18                                       ; $5d89: $df
    nop                                           ; $5d8a: $00
    inc de                                        ; $5d8b: $13
    rst $08                                       ; $5d8c: $cf
    ld h, c                                       ; $5d8d: $61

jr_010_5d8e:
    jp Jump_010_5d0d                              ; $5d8e: $c3 $0d $5d


    nop                                           ; $5d91: $00
    ld [bc], a                                    ; $5d92: $02
    inc b                                         ; $5d93: $04
    inc bc                                        ; $5d94: $03
    ld bc, $0000                                  ; $5d95: $01 $00 $00
    nop                                           ; $5d98: $00

jr_010_5d99:
    bit 3, a                                      ; $5d99: $cb $5f
    jr z, jr_010_5db7                             ; $5d9b: $28 $1a

    rst $18                                       ; $5d9d: $df

    db $0e, $08

    bit 7, a                                      ; $5da0: $cb $7f
    jp z, Jump_010_5d16                           ; $5da2: $ca $16 $5d

    push af                                       ; $5da5: $f5
    cp $81                                        ; $5da6: $fe $81
    jr nz, jr_010_5db3                            ; $5da8: $20 $09

    rst $18                                       ; $5daa: $df
    ld [hl-], a                                   ; $5dab: $32
    ld [bc], a                                    ; $5dac: $02
    xor a                                         ; $5dad: $af
    ld [$d4d4], a                                 ; $5dae: $ea $d4 $d4
    pop af                                        ; $5db1: $f1
    ret                                           ; $5db2: $c9


jr_010_5db3:
    pop af                                        ; $5db3: $f1
    jp Jump_010_5eaf                              ; $5db4: $c3 $af $5e


jr_010_5db7:
    bit 1, a                                      ; $5db7: $cb $4f
    jr z, jr_010_5e26                             ; $5db9: $28 $6b

    ld a, [$d329]                                 ; $5dbb: $fa $29 $d3
    cp $0d                                        ; $5dbe: $fe $0d
    jr z, jr_010_5e0e                             ; $5dc0: $28 $4c

    call Call_010_62ad                            ; $5dc2: $cd $ad $62
    ld de, $f860                                  ; $5dc5: $11 $60 $f8
    add hl, de                                    ; $5dc8: $19
    bit 7, h                                      ; $5dc9: $cb $7c
    jr nz, jr_010_5df6                            ; $5dcb: $20 $29

    ld a, [$d32a]                                 ; $5dcd: $fa $2a $d3
    or a                                          ; $5dd0: $b7
    jr z, jr_010_5ddc                             ; $5dd1: $28 $09

    xor a                                         ; $5dd3: $af
    ld [$d32a], a                                 ; $5dd4: $ea $2a $d3
    rst $08                                       ; $5dd7: $cf

    db $8d

    jp Jump_010_5c87                              ; $5dd9: $c3 $87 $5c


jr_010_5ddc:
    ld a, $28                                     ; $5ddc: $3e $28
    call Call_010_4b14                            ; $5dde: $cd $14 $4b
    ld a, [hl]                                    ; $5de1: $7e
    or a                                          ; $5de2: $b7
    jr nz, jr_010_5dea                            ; $5de3: $20 $05

    rst $08                                       ; $5de5: $cf
    ld d, h                                       ; $5de6: $54
    jp Jump_010_5c87                              ; $5de7: $c3 $87 $5c


jr_010_5dea:
    ld hl, $d32a                                  ; $5dea: $21 $2a $d3
    ld a, [hl]                                    ; $5ded: $7e
    xor $01                                       ; $5dee: $ee $01
    ld [hl], a                                    ; $5df0: $77
    rst $08                                       ; $5df1: $cf

    db $8d

    jp Jump_010_5c87                              ; $5df3: $c3 $87 $5c


jr_010_5df6:
    ld a, [$d32a]                                 ; $5df6: $fa $2a $d3
    ld hl, $5e0a                                  ; $5df9: $21 $0a $5e
    add l                                         ; $5dfc: $85
    ld l, a                                       ; $5dfd: $6f
    jr nc, jr_010_5e01                            ; $5dfe: $30 $01

    inc h                                         ; $5e00: $24

jr_010_5e01:
    ld a, [hl]                                    ; $5e01: $7e
    ld [$d32a], a                                 ; $5e02: $ea $2a $d3
    rst $08                                       ; $5e05: $cf

    db $8d

    jp Jump_010_5c87                              ; $5e07: $c3 $87 $5c


    db $03

    nop                                           ; $5e0b: $00

    db $00, $02

jr_010_5e0e:
    ld hl, $5e22                                  ; $5e0e: $21 $22 $5e
    ld a, [$d32b]                                 ; $5e11: $fa $2b $d3
    add l                                         ; $5e14: $85
    ld l, a                                       ; $5e15: $6f
    jr nc, jr_010_5e19                            ; $5e16: $30 $01

    inc h                                         ; $5e18: $24

jr_010_5e19:
    ld a, [hl]                                    ; $5e19: $7e
    ld [$d32b], a                                 ; $5e1a: $ea $2b $d3
    rst $08                                       ; $5e1d: $cf
    adc l                                         ; $5e1e: $8d
    jp Jump_010_5c87                              ; $5e1f: $c3 $87 $5c


    ld bc, $0002                                  ; $5e22: $01 $02 $00
    nop                                           ; $5e25: $00

jr_010_5e26:
    ldh a, [$91]                                  ; $5e26: $f0 $91
    bit 6, a                                      ; $5e28: $cb $77
    jr z, jr_010_5e44                             ; $5e2a: $28 $18

    ld a, [$d4cd]                                 ; $5e2c: $fa $cd $d4
    cp $06                                        ; $5e2f: $fe $06
    jp z, Jump_010_5d16                           ; $5e31: $ca $16 $5d

    ld a, [$d329]                                 ; $5e34: $fa $29 $d3
    or a                                          ; $5e37: $b7
    jp z, Jump_010_5d16                           ; $5e38: $ca $16 $5d

    dec a                                         ; $5e3b: $3d
    ld [$d329], a                                 ; $5e3c: $ea $29 $d3
    rst $08                                       ; $5e3f: $cf

    db $8c

    jp Jump_010_5c87                              ; $5e41: $c3 $87 $5c


jr_010_5e44:
    bit 7, a                                      ; $5e44: $cb $7f
    jr z, jr_010_5e61                             ; $5e46: $28 $19

    ld a, [$d4cd]                                 ; $5e48: $fa $cd $d4
    cp $06                                        ; $5e4b: $fe $06
    jp z, Jump_010_5d16                           ; $5e4d: $ca $16 $5d

    ld a, [$d329]                                 ; $5e50: $fa $29 $d3
    cp $0d                                        ; $5e53: $fe $0d
    jp z, Jump_010_5d16                           ; $5e55: $ca $16 $5d

    inc a                                         ; $5e58: $3c
    ld [$d329], a                                 ; $5e59: $ea $29 $d3
    rst $08                                       ; $5e5c: $cf

    db $8c

    jp Jump_010_5c87                              ; $5e5e: $c3 $87 $5c


jr_010_5e61:
    ldh a, [$90]                                  ; $5e61: $f0 $90
    bit 5, a                                      ; $5e63: $cb $6f
    jr z, jr_010_5e89                             ; $5e65: $28 $22

    call Call_010_68b1                            ; $5e67: $cd $b1 $68
    rst $18                                       ; $5e6a: $df

    db $20, $08

    call Call_010_5eb9                            ; $5e6d: $cd $b9 $5e
    dec bc                                        ; $5e70: $0b
    ld a, c                                       ; $5e71: $79
    cpl                                           ; $5e72: $2f
    ld c, a                                       ; $5e73: $4f
    ld a, b                                       ; $5e74: $78
    cpl                                           ; $5e75: $2f
    ld b, a                                       ; $5e76: $47
    ld hl, $d418                                  ; $5e77: $21 $18 $d4
    ld a, [hl+]                                   ; $5e7a: $2a
    ld h, [hl]                                    ; $5e7b: $66
    ld l, a                                       ; $5e7c: $6f
    add hl, bc                                    ; $5e7d: $09
    ld a, l                                       ; $5e7e: $7d
    ld [$d418], a                                 ; $5e7f: $ea $18 $d4
    ld a, h                                       ; $5e82: $7c
    ld [$d419], a                                 ; $5e83: $ea $19 $d4
    jp Jump_010_5d0d                              ; $5e86: $c3 $0d $5d


jr_010_5e89:
    bit 4, a                                      ; $5e89: $cb $67
    jr z, jr_010_5ea8                             ; $5e8b: $28 $1b

    call Call_010_68b1                            ; $5e8d: $cd $b1 $68
    rst $18                                       ; $5e90: $df

    db $20, $08

    call Call_010_5eb9                            ; $5e93: $cd $b9 $5e
    ld hl, $d418                                  ; $5e96: $21 $18 $d4
    ld a, [hl+]                                   ; $5e99: $2a
    ld h, [hl]                                    ; $5e9a: $66
    ld l, a                                       ; $5e9b: $6f
    add hl, bc                                    ; $5e9c: $09
    ld a, l                                       ; $5e9d: $7d
    ld [$d418], a                                 ; $5e9e: $ea $18 $d4
    ld a, h                                       ; $5ea1: $7c
    ld [$d419], a                                 ; $5ea2: $ea $19 $d4
    jp Jump_010_5d0d                              ; $5ea5: $c3 $0d $5d


jr_010_5ea8:
    xor a                                         ; $5ea8: $af
    ld [$d486], a                                 ; $5ea9: $ea $86 $d4
    jp Jump_010_5d16                              ; $5eac: $c3 $16 $5d


Jump_010_5eaf:
    push af                                       ; $5eaf: $f5
    rst $18                                       ; $5eb0: $df

    db $60, $02

    xor a                                         ; $5eb3: $af
    ld [$d4d4], a                                 ; $5eb4: $ea $d4 $d4
    pop af                                        ; $5eb7: $f1
    ret                                           ; $5eb8: $c9


Call_010_5eb9:
    push hl                                       ; $5eb9: $e5
    push af                                       ; $5eba: $f5
    ld h, b                                       ; $5ebb: $60
    ld l, c                                       ; $5ebc: $69
    ld a, [$d486]                                 ; $5ebd: $fa $86 $d4
    cp $40                                        ; $5ec0: $fe $40
    jr c, jr_010_5ec8                             ; $5ec2: $38 $04

    add hl, bc                                    ; $5ec4: $09
    add hl, bc                                    ; $5ec5: $09
    jr jr_010_5ecf                                ; $5ec6: $18 $07

jr_010_5ec8:
    add a                                         ; $5ec8: $87
    add a                                         ; $5ec9: $87
    call Call_000_0bec                            ; $5eca: $cd $ec $0b
    add hl, hl                                    ; $5ecd: $29
    add hl, bc                                    ; $5ece: $09

jr_010_5ecf:
    srl h                                         ; $5ecf: $cb $3c
    rr l                                          ; $5ed1: $cb $1d
    ld b, h                                       ; $5ed3: $44
    ld c, l                                       ; $5ed4: $4d
    ld hl, $d486                                  ; $5ed5: $21 $86 $d4
    ld a, [hl]                                    ; $5ed8: $7e
    cp $40                                        ; $5ed9: $fe $40
    jp nc, Jump_010_5edf                          ; $5edb: $d2 $df $5e

    inc [hl]                                      ; $5ede: $34

Jump_010_5edf:
    pop af                                        ; $5edf: $f1
    pop hl                                        ; $5ee0: $e1
    ret                                           ; $5ee1: $c9


Call_010_5ee2:
    ld hl, $d418                                  ; $5ee2: $21 $18 $d4
    ld a, [hl+]                                   ; $5ee5: $2a
    ld b, [hl]                                    ; $5ee6: $46
    ld c, a                                       ; $5ee7: $4f
    call Call_010_68b1                            ; $5ee8: $cd $b1 $68
    call Call_000_11ba                            ; $5eeb: $cd $ba $11
    ret                                           ; $5eee: $c9


Call_010_5eef:
    ld a, [$d329]                                 ; $5eef: $fa $29 $d3
    add a                                         ; $5ef2: $87
    ld hl, $61a6                                  ; $5ef3: $21 $a6 $61
    add l                                         ; $5ef6: $85
    ld l, a                                       ; $5ef7: $6f
    ld a, h                                       ; $5ef8: $7c
    adc $00                                       ; $5ef9: $ce $00
    ld h, a                                       ; $5efb: $67
    ld a, [hl+]                                   ; $5efc: $2a
    ld h, [hl]                                    ; $5efd: $66
    ld l, a                                       ; $5efe: $6f
    ld a, [hl+]                                   ; $5eff: $2a
    ld [$d411], a                                 ; $5f00: $ea $11 $d4
    ld a, [hl+]                                   ; $5f03: $2a
    ld [$d412], a                                 ; $5f04: $ea $12 $d4
    ld a, [hl+]                                   ; $5f07: $2a
    ld [$d416], a                                 ; $5f08: $ea $16 $d4
    ld a, [hl+]                                   ; $5f0b: $2a
    ld [$d417], a                                 ; $5f0c: $ea $17 $d4
    ld a, [$d329]                                 ; $5f0f: $fa $29 $d3
    cp $0d                                        ; $5f12: $fe $0d
    jp z, Jump_010_5f63                           ; $5f14: $ca $63 $5f

    ld a, [$d4c8]                                 ; $5f17: $fa $c8 $d4
    ld l, a                                       ; $5f1a: $6f
    ld a, [$d329]                                 ; $5f1b: $fa $29 $d3
    rst $18                                       ; $5f1e: $df

    db $12, $02

    ld a, l                                       ; $5f21: $7d
    ld [$d41a], a                                 ; $5f22: $ea $1a $d4
    ld a, h                                       ; $5f25: $7c
    ld [$d41b], a                                 ; $5f26: $ea $1b $d4
    ld hl, $d4c6                                  ; $5f29: $21 $c6 $d4
    ld a, [hl+]                                   ; $5f2c: $2a
    ld h, [hl]                                    ; $5f2d: $66
    ld l, a                                       ; $5f2e: $6f
    ld a, [$d4cc]                                 ; $5f2f: $fa $cc $d4
    ld b, a                                       ; $5f32: $47
    ld a, [$d329]                                 ; $5f33: $fa $29 $d3
    rst $18                                       ; $5f36: $df

    db $10, $02

    call Call_010_6b03                            ; $5f39: $cd $03 $6b
    rst $18                                       ; $5f3c: $df

    db $1e, $08

    ld a, c                                       ; $5f3f: $79
    ld [$d41c], a                                 ; $5f40: $ea $1c $d4
    ld a, b                                       ; $5f43: $78
    ld [$d41d], a                                 ; $5f44: $ea $1d $d4
    call Call_010_6b03                            ; $5f47: $cd $03 $6b
    add $08                                       ; $5f4a: $c6 $08
    and $0f                                       ; $5f4c: $e6 $0f
    add a                                         ; $5f4e: $87
    ld h, $00                                     ; $5f4f: $26 $00
    ld l, a                                       ; $5f51: $6f
    ld de, $5f74                                  ; $5f52: $11 $74 $5f
    add hl, de                                    ; $5f55: $19
    ld a, [hl+]                                   ; $5f56: $2a
    ld h, [hl]                                    ; $5f57: $66
    ld l, a                                       ; $5f58: $6f
    add hl, hl                                    ; $5f59: $29
    ld a, l                                       ; $5f5a: $7d
    ld [$d40f], a                                 ; $5f5b: $ea $0f $d4
    ld a, h                                       ; $5f5e: $7c
    ld [$d410], a                                 ; $5f5f: $ea $10 $d4
    ret                                           ; $5f62: $c9


Jump_010_5f63:
    xor a                                         ; $5f63: $af
    ld hl, $d41c                                  ; $5f64: $21 $1c $d4
    ld [hl+], a                                   ; $5f67: $22
    ld [hl], a                                    ; $5f68: $77
    ld hl, $d41a                                  ; $5f69: $21 $1a $d4
    ld [hl+], a                                   ; $5f6c: $22
    ld [hl], a                                    ; $5f6d: $77
    ld hl, $d40f                                  ; $5f6e: $21 $0f $d4
    ld [hl+], a                                   ; $5f71: $22
    ld [hl], a                                    ; $5f72: $77
    ret                                           ; $5f73: $c9


    nop                                           ; $5f74: $00
    inc bc                                        ; $5f75: $03
    nop                                           ; $5f76: $00
    inc bc                                        ; $5f77: $03
    nop                                           ; $5f78: $00
    inc bc                                        ; $5f79: $03
    nop                                           ; $5f7a: $00
    inc bc                                        ; $5f7b: $03
    nop                                           ; $5f7c: $00
    inc bc                                        ; $5f7d: $03
    nop                                           ; $5f7e: $00
    ld [bc], a                                    ; $5f7f: $02
    nop                                           ; $5f80: $00
    db $01                                        ; $5f81: $01

    db $80, $00, $00, $00, $80, $ff

    nop                                           ; $5f88: $00
    rst $38                                       ; $5f89: $ff
    nop                                           ; $5f8a: $00
    cp $00                                        ; $5f8b: $fe $00
    db $fd                                        ; $5f8d: $fd
    nop                                           ; $5f8e: $00
    db $fd                                        ; $5f8f: $fd
    nop                                           ; $5f90: $00
    db $fd                                        ; $5f91: $fd
    nop                                           ; $5f92: $00
    db $fd                                        ; $5f93: $fd

Call_010_5f94:
    ld a, $06                                     ; $5f94: $3e $06
    ldh [$96], a                                  ; $5f96: $e0 $96
    ldh [rSVBK], a                                ; $5f98: $e0 $70
    call Call_010_52c2                            ; $5f9a: $cd $c2 $52
    call Call_010_5eef                            ; $5f9d: $cd $ef $5e
    ld hl, $d41c                                  ; $5fa0: $21 $1c $d4
    ld a, [hl+]                                   ; $5fa3: $2a
    ld d, [hl]                                    ; $5fa4: $56
    ld e, a                                       ; $5fa5: $5f
    ld hl, $d418                                  ; $5fa6: $21 $18 $d4
    ld a, [hl+]                                   ; $5fa9: $2a
    ld h, [hl]                                    ; $5faa: $66
    ld l, a                                       ; $5fab: $6f
    add hl, de                                    ; $5fac: $19
    ld a, l                                       ; $5fad: $7d
    ld [$d418], a                                 ; $5fae: $ea $18 $d4
    ld a, h                                       ; $5fb1: $7c
    ld [$d419], a                                 ; $5fb2: $ea $19 $d4
    ld a, [$d4bf]                                 ; $5fb5: $fa $bf $d4
    or a                                          ; $5fb8: $b7
    jr z, jr_010_5fd7                             ; $5fb9: $28 $1c

    ld hl, $d4c6                                  ; $5fbb: $21 $c6 $d4
    ld a, [hl+]                                   ; $5fbe: $2a
    ld h, [hl]                                    ; $5fbf: $66
    ld l, a                                       ; $5fc0: $6f
    ld a, [$d4d9]                                 ; $5fc1: $fa $d9 $d4
    ld [$d44f], a                                 ; $5fc4: $ea $4f $d4
    ld a, [$d4d8]                                 ; $5fc7: $fa $d8 $d4
    ld [$d450], a                                 ; $5fca: $ea $50 $d4
    ld a, $00                                     ; $5fcd: $3e $00
    ld [$d44b], a                                 ; $5fcf: $ea $4b $d4
    ld [$d44c], a                                 ; $5fd2: $ea $4c $d4
    jr jr_010_5fda                                ; $5fd5: $18 $03

jr_010_5fd7:
    call Call_010_6cdb                            ; $5fd7: $cd $db $6c

jr_010_5fda:
    push hl                                       ; $5fda: $e5
    ld hl, $d416                                  ; $5fdb: $21 $16 $d4
    ld a, [hl+]                                   ; $5fde: $2a
    ld h, [hl]                                    ; $5fdf: $66
    ld l, a                                       ; $5fe0: $6f
    pop de                                        ; $5fe1: $d1
    call Call_010_6134                            ; $5fe2: $cd $34 $61
    ld a, [$d44c]                                 ; $5fe5: $fa $4c $d4
    or a                                          ; $5fe8: $b7
    jr z, jr_010_5ffe                             ; $5fe9: $28 $13

    bit 7, a                                      ; $5feb: $cb $7f
    jr nz, jr_010_5ff6                            ; $5fed: $20 $07

    ld a, $f9                                     ; $5fef: $3e $f9
    call Call_000_0bec                            ; $5ff1: $cd $ec $0b
    jr jr_010_5ffe                                ; $5ff4: $18 $08

jr_010_5ff6:
    push hl                                       ; $5ff6: $e5
    ld a, $07                                     ; $5ff7: $3e $07
    call Call_000_0bec                            ; $5ff9: $cd $ec $0b
    pop de                                        ; $5ffc: $d1
    add hl, de                                    ; $5ffd: $19

jr_010_5ffe:
    ld a, l                                       ; $5ffe: $7d
    ld [$d416], a                                 ; $5fff: $ea $16 $d4
    ld a, h                                       ; $6002: $7c
    ld [$d417], a                                 ; $6003: $ea $17 $d4
    ld a, [$d329]                                 ; $6006: $fa $29 $d3
    cp $0d                                        ; $6009: $fe $0d
    jp z, Jump_010_6093                           ; $600b: $ca $93 $60

    call Call_010_6b1f                            ; $600e: $cd $1f $6b
    ld b, a                                       ; $6011: $47
    call Call_010_6c18                            ; $6012: $cd $18 $6c
    ld hl, $d41a                                  ; $6015: $21 $1a $d4
    ld a, [hl+]                                   ; $6018: $2a
    ld h, [hl]                                    ; $6019: $66
    ld l, a                                       ; $601a: $6f
    add hl, de                                    ; $601b: $19
    ld a, h                                       ; $601c: $7c
    cp $40                                        ; $601d: $fe $40
    jr c, jr_010_6024                             ; $601f: $38 $03

    ld hl, $3f00                                  ; $6021: $21 $00 $3f

jr_010_6024:
    ld a, l                                       ; $6024: $7d
    ld [$d41a], a                                 ; $6025: $ea $1a $d4
    ld a, h                                       ; $6028: $7c
    ld [$d41b], a                                 ; $6029: $ea $1b $d4
    call Call_010_6c54                            ; $602c: $cd $54 $6c
    ld hl, $d418                                  ; $602f: $21 $18 $d4
    ld a, [hl+]                                   ; $6032: $2a
    ld h, [hl]                                    ; $6033: $66
    ld l, a                                       ; $6034: $6f
    add hl, de                                    ; $6035: $19
    ld a, l                                       ; $6036: $7d
    ld [$d418], a                                 ; $6037: $ea $18 $d4
    ld a, h                                       ; $603a: $7c
    ld [$d419], a                                 ; $603b: $ea $19 $d4
    call Call_010_6c9f                            ; $603e: $cd $9f $6c
    ld hl, $d40f                                  ; $6041: $21 $0f $d4
    ld a, [hl+]                                   ; $6044: $2a
    ld h, [hl]                                    ; $6045: $66
    ld l, a                                       ; $6046: $6f
    add hl, de                                    ; $6047: $19
    ld a, l                                       ; $6048: $7d
    ld [$d40f], a                                 ; $6049: $ea $0f $d4
    ld a, h                                       ; $604c: $7c
    ld [$d410], a                                 ; $604d: $ea $10 $d4
    ld hl, $d411                                  ; $6050: $21 $11 $d4
    ld a, [hl+]                                   ; $6053: $2a
    ld h, [hl]                                    ; $6054: $66
    ld l, a                                       ; $6055: $6f
    ld a, [$d44c]                                 ; $6056: $fa $4c $d4
    ld d, $00                                     ; $6059: $16 $00
    ld e, a                                       ; $605b: $5f
    bit 7, a                                      ; $605c: $cb $7f
    jr nz, jr_010_6061                            ; $605e: $20 $01

    inc d                                         ; $6060: $14

jr_010_6061:
    call Call_010_6134                            ; $6061: $cd $34 $61
    ld a, [$d450]                                 ; $6064: $fa $50 $d4
    call Call_010_6865                            ; $6067: $cd $65 $68
    ld a, l                                       ; $606a: $7d
    ld [$d411], a                                 ; $606b: $ea $11 $d4
    ld a, h                                       ; $606e: $7c
    ld [$d412], a                                 ; $606f: $ea $12 $d4
    ld hl, $d40f                                  ; $6072: $21 $0f $d4
    ld a, [hl+]                                   ; $6075: $2a
    ld d, [hl]                                    ; $6076: $56
    ld e, a                                       ; $6077: $5f
    ld a, [$d44b]                                 ; $6078: $fa $4b $d4
    cpl                                           ; $607b: $2f
    inc a                                         ; $607c: $3c
    ld h, $00                                     ; $607d: $26 $00
    ld l, a                                       ; $607f: $6f
    bit 7, a                                      ; $6080: $cb $7f
    jr z, jr_010_6085                             ; $6082: $28 $01

    dec h                                         ; $6084: $25

jr_010_6085:
    add hl, hl                                    ; $6085: $29
    add hl, hl                                    ; $6086: $29
    add hl, hl                                    ; $6087: $29
    add hl, hl                                    ; $6088: $29
    add hl, hl                                    ; $6089: $29
    add hl, de                                    ; $608a: $19
    ld a, l                                       ; $608b: $7d
    ld [$d40f], a                                 ; $608c: $ea $0f $d4
    ld a, h                                       ; $608f: $7c
    ld [$d410], a                                 ; $6090: $ea $10 $d4

Jump_010_6093:
    ld hl, $d41a                                  ; $6093: $21 $1a $d4
    ld a, [hl+]                                   ; $6096: $2a
    ld b, [hl]                                    ; $6097: $46
    ld c, a                                       ; $6098: $4f
    ld hl, $d416                                  ; $6099: $21 $16 $d4
    ld a, [hl+]                                   ; $609c: $2a
    ld h, [hl]                                    ; $609d: $66
    ld l, a                                       ; $609e: $6f
    call Call_000_11ba                            ; $609f: $cd $ba $11
    ld a, e                                       ; $60a2: $7b
    ld [$d40d], a                                 ; $60a3: $ea $0d $d4
    ld a, d                                       ; $60a6: $7a
    ld [$d40e], a                                 ; $60a7: $ea $0e $d4
    ld a, [$d418]                                 ; $60aa: $fa $18 $d4
    ld c, a                                       ; $60ad: $4f
    ld a, [$d419]                                 ; $60ae: $fa $19 $d4
    ld b, a                                       ; $60b1: $47
    call Call_000_11ba                            ; $60b2: $cd $ba $11
    ld a, l                                       ; $60b5: $7d
    ld [$d409], a                                 ; $60b6: $ea $09 $d4
    ld a, h                                       ; $60b9: $7c
    ld [$d40a], a                                 ; $60ba: $ea $0a $d4
    ld a, e                                       ; $60bd: $7b
    ld [$d40b], a                                 ; $60be: $ea $0b $d4
    ld a, d                                       ; $60c1: $7a
    ld [$d40c], a                                 ; $60c2: $ea $0c $d4
    ld a, [$d329]                                 ; $60c5: $fa $29 $d3
    cp $0d                                        ; $60c8: $fe $0d
    jr z, jr_010_60d0                             ; $60ca: $28 $04

    ld a, $01                                     ; $60cc: $3e $01
    jr jr_010_60d1                                ; $60ce: $18 $01

jr_010_60d0:
    xor a                                         ; $60d0: $af

jr_010_60d1:
    ld [$d415], a                                 ; $60d1: $ea $15 $d4
    ld [$d489], a                                 ; $60d4: $ea $89 $d4
    ld hl, $d401                                  ; $60d7: $21 $01 $d4
    ld de, $d48a                                  ; $60da: $11 $8a $d4
    ld a, [hl+]                                   ; $60dd: $2a
    ld [de], a                                    ; $60de: $12
    inc de                                        ; $60df: $13
    ld a, [hl+]                                   ; $60e0: $2a
    ld [de], a                                    ; $60e1: $12
    inc de                                        ; $60e2: $13
    inc hl                                        ; $60e3: $23
    ld a, [hl+]                                   ; $60e4: $2a
    ld [de], a                                    ; $60e5: $12
    inc de                                        ; $60e6: $13
    ld a, [hl]                                    ; $60e7: $7e
    ld [de], a                                    ; $60e8: $12
    ld a, [$d329]                                 ; $60e9: $fa $29 $d3
    cp $0d                                        ; $60ec: $fe $0d
    jr nz, jr_010_60f3                            ; $60ee: $20 $03

    rst $08                                       ; $60f0: $cf

    db $48

    ret                                           ; $60f2: $c9


jr_010_60f3:
    cp $07                                        ; $60f3: $fe $07
    jr c, jr_010_6113                             ; $60f5: $38 $1c

    ld a, [$d4cd]                                 ; $60f7: $fa $cd $d4
    cp $02                                        ; $60fa: $fe $02
    jr z, jr_010_610d                             ; $60fc: $28 $0f

    cp $0d                                        ; $60fe: $fe $0d
    jr z, jr_010_610d                             ; $6100: $28 $0b

    cp $01                                        ; $6102: $fe $01
    jr z, jr_010_6110                             ; $6104: $28 $0a

    cp $0c                                        ; $6106: $fe $0c
    jr z, jr_010_6110                             ; $6108: $28 $06

    rst $08                                       ; $610a: $cf

    db $45

    ret                                           ; $610c: $c9


jr_010_610d:
    rst $08                                       ; $610d: $cf
    ld b, a                                       ; $610e: $47
    ret                                           ; $610f: $c9


jr_010_6110:
    rst $08                                       ; $6110: $cf

    db $46

    ret                                           ; $6112: $c9


jr_010_6113:
    or a                                          ; $6113: $b7
    jr nz, jr_010_6131                            ; $6114: $20 $1b

    ld a, [$d32a]                                 ; $6116: $fa $2a $d3
    cp $01                                        ; $6119: $fe $01
    jr nz, jr_010_612e                            ; $611b: $20 $11

    ld a, [$d44f]                                 ; $611d: $fa $4f $d4
    cp $00                                        ; $6120: $fe $00
    jr nz, jr_010_612e                            ; $6122: $20 $0a

    ld a, [$d450]                                 ; $6124: $fa $50 $d4
    cp $3c                                        ; $6127: $fe $3c
    jr nz, jr_010_612e                            ; $6129: $20 $03

    rst $08                                       ; $612b: $cf
    ld b, d                                       ; $612c: $42
    ret                                           ; $612d: $c9


jr_010_612e:
    rst $08                                       ; $612e: $cf

    db $41

    ret                                           ; $6130: $c9


jr_010_6131:
    rst $08                                       ; $6131: $cf

    db $43

    ret                                           ; $6133: $c9


Call_010_6134:
    ld a, d                                       ; $6134: $7a
    or a                                          ; $6135: $b7
    jr nz, jr_010_613d                            ; $6136: $20 $05

    ld a, e                                       ; $6138: $7b
    call Call_000_0bec                            ; $6139: $cd $ec $0b
    ret                                           ; $613c: $c9


jr_010_613d:
    push hl                                       ; $613d: $e5
    ld a, e                                       ; $613e: $7b
    call Call_000_0bec                            ; $613f: $cd $ec $0b
    pop de                                        ; $6142: $d1
    add hl, de                                    ; $6143: $19
    ret                                           ; $6144: $c9


Call_010_6145:
    ld b, $c0                                     ; $6145: $06 $c0
    ld hl, $d333                                  ; $6147: $21 $33 $d3
    bit 0, [hl]                                   ; $614a: $cb $46
    jr z, jr_010_6150                             ; $614c: $28 $02

    ld b, $40                                     ; $614e: $06 $40

jr_010_6150:
    ld hl, $d418                                  ; $6150: $21 $18 $d4
    ld a, [hl+]                                   ; $6153: $2a
    ld h, [hl]                                    ; $6154: $66
    ld l, a                                       ; $6155: $6f
    ld a, h                                       ; $6156: $7c
    add b                                         ; $6157: $80
    ld b, a                                       ; $6158: $47
    ld c, l                                       ; $6159: $4d
    ld a, [$d333]                                 ; $615a: $fa $33 $d3
    or a                                          ; $615d: $b7
    jr nz, jr_010_6165                            ; $615e: $20 $05

    ld a, $80                                     ; $6160: $3e $80
    add b                                         ; $6162: $80
    jr jr_010_6168                                ; $6163: $18 $03

jr_010_6165:
    ld a, $00                                     ; $6165: $3e $00
    sub b                                         ; $6167: $90

jr_010_6168:
    push af                                       ; $6168: $f5
    ld a, $04                                     ; $6169: $3e $04
    ldh [$96], a                                  ; $616b: $e0 $96
    ldh [rSVBK], a                                ; $616d: $e0 $70
    pop af                                        ; $616f: $f1
    ld [$d010], a                                 ; $6170: $ea $10 $d0
    ld a, $06                                     ; $6173: $3e $06
    ldh [$96], a                                  ; $6175: $e0 $96
    ldh [rSVBK], a                                ; $6177: $e0 $70
    ld hl, $0020                                  ; $6179: $21 $20 $00
    ld a, [$d443]                                 ; $617c: $fa $43 $d4
    or a                                          ; $617f: $b7
    jr nz, jr_010_6184                            ; $6180: $20 $02

    add hl, hl                                    ; $6182: $29
    add hl, hl                                    ; $6183: $29

jr_010_6184:
    call Call_000_11ba                            ; $6184: $cd $ba $11
    push hl                                       ; $6187: $e5
    ld hl, $d404                                  ; $6188: $21 $04 $d4
    ld a, [hl+]                                   ; $618b: $2a
    ld h, [hl]                                    ; $618c: $66
    ld l, a                                       ; $618d: $6f
    add hl, de                                    ; $618e: $19
    pop de                                        ; $618f: $d1
    push hl                                       ; $6190: $e5
    ld hl, $d401                                  ; $6191: $21 $01 $d4
    ld a, [hl+]                                   ; $6194: $2a
    ld h, [hl]                                    ; $6195: $66
    ld l, a                                       ; $6196: $6f
    add hl, de                                    ; $6197: $19
    pop de                                        ; $6198: $d1
    ld c, l                                       ; $6199: $4d
    ld b, h                                       ; $619a: $44
    ld hl, $d481                                  ; $619b: $21 $81 $d4
    ld [hl], c                                    ; $619e: $71
    inc hl                                        ; $619f: $23
    ld [hl], b                                    ; $61a0: $70
    inc hl                                        ; $61a1: $23
    ld [hl], e                                    ; $61a2: $73
    inc hl                                        ; $61a3: $23
    ld [hl], d                                    ; $61a4: $72
    ret                                           ; $61a5: $c9


    db $c2, $61, $c6, $61

    db $ca                                        ; $61aa: $ca
    ld h, c                                       ; $61ab: $61

    db $ce, $61

    jp nc, $d661                                  ; $61ae: $d2 $61 $d6

    ld h, c                                       ; $61b1: $61

    db $da, $61, $de, $61, $e2, $61

    and $61                                       ; $61b8: $e6 $61
    ld [$ee61], a                                 ; $61ba: $ea $61 $ee
    ld h, c                                       ; $61bd: $61

    db $f2, $61, $f6, $61, $b8, $0b, $1d, $27, $a0, $0f, $dc, $22

    sub h                                         ; $61ca: $94
    ld de, $2030                                  ; $61cb: $11 $30 $20

    db $d0, $07, $9d, $22

    cp b                                          ; $61d2: $b8
    dec bc                                        ; $61d3: $0b
    inc h                                         ; $61d4: $24
    rra                                           ; $61d5: $1f
    and b                                         ; $61d6: $a0
    rrca                                          ; $61d7: $0f
    ld c, b                                       ; $61d8: $48
    inc e                                         ; $61d9: $1c

    db $94, $11, $56, $1a, $88, $13, $d0, $18, $7c, $15, $32, $17

    ld [hl], b                                    ; $61e6: $70
    rla                                           ; $61e7: $17
    sbc [hl]                                      ; $61e8: $9e
    dec d                                         ; $61e9: $15
    ld h, h                                       ; $61ea: $64
    add hl, de                                    ; $61eb: $19
    ld a, h                                       ; $61ec: $7c
    inc d                                         ; $61ed: $14
    ld e, b                                       ; $61ee: $58
    dec de                                        ; $61ef: $1b
    xor c                                         ; $61f0: $a9
    ld [de], a                                    ; $61f1: $12

    db $4c, $1d, $49, $10, $00, $00, $85, $11

Call_010_61fa:
    ld hl, $d401                                  ; $61fa: $21 $01 $d4
    ld a, [hl+]                                   ; $61fd: $2a
    ld d, [hl]                                    ; $61fe: $56
    ld e, a                                       ; $61ff: $5f
    ld hl, $d43d                                  ; $6200: $21 $3d $d4
    ld a, [hl+]                                   ; $6203: $2a
    ld h, [hl]                                    ; $6204: $66
    ld l, a                                       ; $6205: $6f
    call Call_000_08ac                            ; $6206: $cd $ac $08
    push hl                                       ; $6209: $e5
    ld hl, $d404                                  ; $620a: $21 $04 $d4
    ld a, [hl+]                                   ; $620d: $2a
    ld d, [hl]                                    ; $620e: $56
    ld e, a                                       ; $620f: $5f
    ld hl, $d43f                                  ; $6210: $21 $3f $d4
    ld a, [hl+]                                   ; $6213: $2a
    ld h, [hl]                                    ; $6214: $66
    ld l, a                                       ; $6215: $6f
    call Call_000_08ac                            ; $6216: $cd $ac $08
    pop de                                        ; $6219: $d1
    call Call_000_1a03                            ; $621a: $cd $03 $1a
    ret                                           ; $621d: $c9


Call_010_621e:
    push af                                       ; $621e: $f5
    push bc                                       ; $621f: $c5
    push de                                       ; $6220: $d5
    ld hl, $d426                                  ; $6221: $21 $26 $d4
    ld a, [hl+]                                   ; $6224: $2a
    ld d, [hl]                                    ; $6225: $56
    ld e, a                                       ; $6226: $5f
    ld hl, $d43d                                  ; $6227: $21 $3d $d4
    ld a, [hl+]                                   ; $622a: $2a
    ld h, [hl]                                    ; $622b: $66
    ld l, a                                       ; $622c: $6f
    call Call_000_08ac                            ; $622d: $cd $ac $08
    push hl                                       ; $6230: $e5
    ld hl, $d428                                  ; $6231: $21 $28 $d4
    ld a, [hl+]                                   ; $6234: $2a
    ld d, [hl]                                    ; $6235: $56
    ld e, a                                       ; $6236: $5f
    ld hl, $d43f                                  ; $6237: $21 $3f $d4
    ld a, [hl+]                                   ; $623a: $2a
    ld h, [hl]                                    ; $623b: $66
    ld l, a                                       ; $623c: $6f
    call Call_000_08ac                            ; $623d: $cd $ac $08
    pop de                                        ; $6240: $d1
    ld bc, $0000                                  ; $6241: $01 $00 $00
    jp Jump_010_62da                              ; $6244: $c3 $da $62


    push af                                       ; $6247: $f5
    push bc                                       ; $6248: $c5
    push de                                       ; $6249: $d5
    ld hl, $d48a                                  ; $624a: $21 $8a $d4
    ld a, [hl+]                                   ; $624d: $2a
    ld d, [hl]                                    ; $624e: $56
    ld e, a                                       ; $624f: $5f
    ld hl, $d5f8                                  ; $6250: $21 $f8 $d5
    ld a, [hl+]                                   ; $6253: $2a
    ld c, a                                       ; $6254: $4f
    ld a, [hl+]                                   ; $6255: $2a
    ld h, [hl]                                    ; $6256: $66
    ld l, a                                       ; $6257: $6f
    ld a, l                                       ; $6258: $7d
    sub e                                         ; $6259: $93
    ld l, a                                       ; $625a: $6f
    ld a, h                                       ; $625b: $7c
    sbc d                                         ; $625c: $9a
    ld h, a                                       ; $625d: $67
    push hl                                       ; $625e: $e5
    ld hl, $d48c                                  ; $625f: $21 $8c $d4
    ld a, [hl+]                                   ; $6262: $2a
    ld d, [hl]                                    ; $6263: $56
    ld e, a                                       ; $6264: $5f
    ld hl, $d5fb                                  ; $6265: $21 $fb $d5
    ld a, [hl+]                                   ; $6268: $2a
    ld b, a                                       ; $6269: $47
    ld a, [hl+]                                   ; $626a: $2a
    ld h, [hl]                                    ; $626b: $66
    ld l, a                                       ; $626c: $6f
    ld a, l                                       ; $626d: $7d
    sub e                                         ; $626e: $93
    ld l, a                                       ; $626f: $6f
    ld a, h                                       ; $6270: $7c
    sbc d                                         ; $6271: $9a
    ld h, a                                       ; $6272: $67
    pop de                                        ; $6273: $d1
    jr jr_010_62da                                ; $6274: $18 $64

    push af                                       ; $6276: $f5
    push bc                                       ; $6277: $c5
    push de                                       ; $6278: $d5
    ld a, [$d5f8]                                 ; $6279: $fa $f8 $d5
    ld hl, $d400                                  ; $627c: $21 $00 $d4
    sub [hl]                                      ; $627f: $96
    ld c, a                                       ; $6280: $4f
    inc hl                                        ; $6281: $23
    ld a, [hl+]                                   ; $6282: $2a
    ld d, [hl]                                    ; $6283: $56
    ld e, a                                       ; $6284: $5f
    ld hl, $d5f9                                  ; $6285: $21 $f9 $d5
    ld a, [hl+]                                   ; $6288: $2a
    ld h, [hl]                                    ; $6289: $66
    ld l, a                                       ; $628a: $6f
    ld a, l                                       ; $628b: $7d
    sbc e                                         ; $628c: $9b
    ld l, a                                       ; $628d: $6f
    ld a, h                                       ; $628e: $7c
    sbc d                                         ; $628f: $9a
    ld h, a                                       ; $6290: $67
    push hl                                       ; $6291: $e5
    ld a, [$d5fb]                                 ; $6292: $fa $fb $d5
    ld hl, $d403                                  ; $6295: $21 $03 $d4
    sub [hl]                                      ; $6298: $96
    ld b, a                                       ; $6299: $47
    inc hl                                        ; $629a: $23
    ld a, [hl+]                                   ; $629b: $2a
    ld d, [hl]                                    ; $629c: $56
    ld e, a                                       ; $629d: $5f
    ld hl, $d5fc                                  ; $629e: $21 $fc $d5
    ld a, [hl+]                                   ; $62a1: $2a
    ld h, [hl]                                    ; $62a2: $66
    ld l, a                                       ; $62a3: $6f
    ld a, l                                       ; $62a4: $7d
    sbc e                                         ; $62a5: $9b
    ld l, a                                       ; $62a6: $6f
    ld a, h                                       ; $62a7: $7c
    sbc d                                         ; $62a8: $9a
    ld h, a                                       ; $62a9: $67
    pop de                                        ; $62aa: $d1
    jr jr_010_62da                                ; $62ab: $18 $2d

Call_010_62ad:
    push af                                       ; $62ad: $f5
    push bc                                       ; $62ae: $c5
    push de                                       ; $62af: $d5
    ld hl, $d43d                                  ; $62b0: $21 $3d $d4
    ld a, [hl+]                                   ; $62b3: $2a
    ld d, [hl]                                    ; $62b4: $56
    ld e, a                                       ; $62b5: $5f
    ld hl, $d400                                  ; $62b6: $21 $00 $d4
    ld a, [hl+]                                   ; $62b9: $2a
    ld c, a                                       ; $62ba: $4f
    ld a, [hl+]                                   ; $62bb: $2a
    ld h, [hl]                                    ; $62bc: $66
    ld l, a                                       ; $62bd: $6f
    ld a, l                                       ; $62be: $7d
    sub e                                         ; $62bf: $93
    ld l, a                                       ; $62c0: $6f
    ld a, h                                       ; $62c1: $7c
    sbc d                                         ; $62c2: $9a
    ld h, a                                       ; $62c3: $67
    push hl                                       ; $62c4: $e5
    ld hl, $d43f                                  ; $62c5: $21 $3f $d4
    ld a, [hl+]                                   ; $62c8: $2a
    ld d, [hl]                                    ; $62c9: $56
    ld e, a                                       ; $62ca: $5f
    ld hl, $d403                                  ; $62cb: $21 $03 $d4
    ld a, [hl+]                                   ; $62ce: $2a
    ld b, a                                       ; $62cf: $47
    ld a, [hl+]                                   ; $62d0: $2a
    ld h, [hl]                                    ; $62d1: $66
    ld l, a                                       ; $62d2: $6f
    ld a, l                                       ; $62d3: $7d
    sub e                                         ; $62d4: $93
    ld l, a                                       ; $62d5: $6f
    ld a, h                                       ; $62d6: $7c
    sbc d                                         ; $62d7: $9a
    ld h, a                                       ; $62d8: $67
    pop de                                        ; $62d9: $d1

Jump_010_62da:
jr_010_62da:
    bit 7, h                                      ; $62da: $cb $7c
    jr z, jr_010_62ea                             ; $62dc: $28 $0c

    xor a                                         ; $62de: $af
    sub b                                         ; $62df: $90
    ld b, a                                       ; $62e0: $47
    sbc a                                         ; $62e1: $9f
    jr nc, jr_010_62e5                            ; $62e2: $30 $01

    inc h                                         ; $62e4: $24

jr_010_62e5:
    sub l                                         ; $62e5: $95
    ld l, a                                       ; $62e6: $6f
    sbc a                                         ; $62e7: $9f
    sub h                                         ; $62e8: $94
    ld h, a                                       ; $62e9: $67

jr_010_62ea:
    bit 7, d                                      ; $62ea: $cb $7a
    jr z, jr_010_62fa                             ; $62ec: $28 $0c

    xor a                                         ; $62ee: $af
    sub c                                         ; $62ef: $91
    ld c, a                                       ; $62f0: $4f
    sbc a                                         ; $62f1: $9f
    jr nc, jr_010_62f5                            ; $62f2: $30 $01

    inc d                                         ; $62f4: $14

jr_010_62f5:
    sub e                                         ; $62f5: $93
    ld e, a                                       ; $62f6: $5f
    sbc a                                         ; $62f7: $9f
    sub d                                         ; $62f8: $92
    ld d, a                                       ; $62f9: $57

jr_010_62fa:
    ld a, h                                       ; $62fa: $7c
    or d                                          ; $62fb: $b2
    scf                                           ; $62fc: $37
    adc a                                         ; $62fd: $8f
    push af                                       ; $62fe: $f5
    jr c, jr_010_6312                             ; $62ff: $38 $11

    jr jr_010_630f                                ; $6301: $18 $0c

jr_010_6303:
    sla b                                         ; $6303: $cb $20
    rl l                                          ; $6305: $cb $15
    rl h                                          ; $6307: $cb $14
    sla c                                         ; $6309: $cb $21
    rl e                                          ; $630b: $cb $13
    rl d                                          ; $630d: $cb $12

jr_010_630f:
    add a                                         ; $630f: $87
    jr nc, jr_010_6303                            ; $6310: $30 $f1

jr_010_6312:
    push de                                       ; $6312: $d5
    ld e, l                                       ; $6313: $5d
    ld d, h                                       ; $6314: $54
    call Call_000_0cb5                            ; $6315: $cd $b5 $0c
    ldh a, [$a9]                                  ; $6318: $f0 $a9
    ld b, a                                       ; $631a: $47
    pop de                                        ; $631b: $d1
    push hl                                       ; $631c: $e5
    ld l, e                                       ; $631d: $6b
    ld h, d                                       ; $631e: $62
    call Call_000_0cb5                            ; $631f: $cd $b5 $0c
    pop de                                        ; $6322: $d1
    add hl, de                                    ; $6323: $19
    ldh a, [$a9]                                  ; $6324: $f0 $a9
    add b                                         ; $6326: $80
    jr nc, jr_010_632a                            ; $6327: $30 $01

    inc hl                                        ; $6329: $23

jr_010_632a:
    call Call_000_1d6a                            ; $632a: $cd $6a $1d
    add hl, hl                                    ; $632d: $29
    add hl, hl                                    ; $632e: $29
    add hl, hl                                    ; $632f: $29
    add hl, hl                                    ; $6330: $29
    pop af                                        ; $6331: $f1
    jr c, jr_010_633d                             ; $6332: $38 $09

    jr jr_010_633a                                ; $6334: $18 $04

jr_010_6336:
    srl h                                         ; $6336: $cb $3c
    rr l                                          ; $6338: $cb $1d

jr_010_633a:
    add a                                         ; $633a: $87
    jr nc, jr_010_6336                            ; $633b: $30 $f9

jr_010_633d:
    pop de                                        ; $633d: $d1
    pop bc                                        ; $633e: $c1
    pop af                                        ; $633f: $f1
    ret                                           ; $6340: $c9


Call_010_6341:
    ld a, $0c                                     ; $6341: $3e $0c
    ldh [$b0], a                                  ; $6343: $e0 $b0
    xor a                                         ; $6345: $af
    ld [$d32a], a                                 ; $6346: $ea $2a $d3
    ld a, [$d4cd]                                 ; $6349: $fa $cd $d4
    cp $06                                        ; $634c: $fe $06
    jr z, jr_010_6394                             ; $634e: $28 $44

    cp $0a                                        ; $6350: $fe $0a
    jr z, jr_010_6394                             ; $6352: $28 $40

    call Call_010_62ad                            ; $6354: $cd $ad $62
    push hl                                       ; $6357: $e5
    call Call_010_6672                            ; $6358: $cd $72 $66
    and $0f                                       ; $635b: $e6 $0f
    ld hl, $639a                                  ; $635d: $21 $9a $63
    add l                                         ; $6360: $85
    ld l, a                                       ; $6361: $6f
    jr nc, jr_010_6365                            ; $6362: $30 $01

    inc h                                         ; $6364: $24

jr_010_6365:
    ld c, [hl]                                    ; $6365: $4e
    pop hl                                        ; $6366: $e1
    ld b, $0c                                     ; $6367: $06 $0c

jr_010_6369:
    ld a, b                                       ; $6369: $78
    ld [$d329], a                                 ; $636a: $ea $29 $d3
    push bc                                       ; $636d: $c5
    push hl                                       ; $636e: $e5
    call Call_010_6907                            ; $636f: $cd $07 $69
    pop hl                                        ; $6372: $e1
    pop bc                                        ; $6373: $c1
    or a                                          ; $6374: $b7
    jr z, jr_010_638a                             ; $6375: $28 $13

    ld a, b                                       ; $6377: $78
    ldh [$b0], a                                  ; $6378: $e0 $b0
    push hl                                       ; $637a: $e5
    call Call_010_68b1                            ; $637b: $cd $b1 $68
    ld d, h                                       ; $637e: $54
    ld e, l                                       ; $637f: $5d
    pop hl                                        ; $6380: $e1
    push hl                                       ; $6381: $e5
    call Call_000_08ac                            ; $6382: $cd $ac $08
    bit 7, h                                      ; $6385: $cb $7c
    pop hl                                        ; $6387: $e1
    jr nz, jr_010_638e                            ; $6388: $20 $04

jr_010_638a:
    dec b                                         ; $638a: $05
    dec c                                         ; $638b: $0d
    jr nz, jr_010_6369                            ; $638c: $20 $db

jr_010_638e:
    ldh a, [$b0]                                  ; $638e: $f0 $b0
    ld [$d329], a                                 ; $6390: $ea $29 $d3
    ret                                           ; $6393: $c9


jr_010_6394:
    ld a, $0d                                     ; $6394: $3e $0d
    ld [$d329], a                                 ; $6396: $ea $29 $d3
    ret                                           ; $6399: $c9


    db $0d, $0c, $0a

    ld a, [bc]                                    ; $639d: $0a
    ld a, [bc]                                    ; $639e: $0a
    ld a, [bc]                                    ; $639f: $0a
    ld a, [bc]                                    ; $63a0: $0a
    dec c                                         ; $63a1: $0d

    db $0c

    inc c                                         ; $63a3: $0c

    db $0c, $0a

    ld a, [bc]                                    ; $63a6: $0a
    ld a, [bc]                                    ; $63a7: $0a
    ld a, [bc]                                    ; $63a8: $0a
    ld a, [bc]                                    ; $63a9: $0a

Call_010_63aa:
    push hl                                       ; $63aa: $e5
    ld hl, $63be                                  ; $63ab: $21 $be $63
    ld a, d                                       ; $63ae: $7a
    add a                                         ; $63af: $87
    add l                                         ; $63b0: $85
    ld l, a                                       ; $63b1: $6f
    jr nc, jr_010_63b5                            ; $63b2: $30 $01

    inc h                                         ; $63b4: $24

jr_010_63b5:
    ld a, [hl+]                                   ; $63b5: $2a
    ld h, [hl]                                    ; $63b6: $66
    ld l, a                                       ; $63b7: $6f
    add hl, bc                                    ; $63b8: $09
    ld b, h                                       ; $63b9: $44
    ld c, l                                       ; $63ba: $4d
    inc d                                         ; $63bb: $14
    pop hl                                        ; $63bc: $e1
    ret                                           ; $63bd: $c9


    db $8e, $03, $e4, $f8, $aa, $0a, $c8, $f1, $c6, $11, $ac, $ea, $e2, $18, $90, $e3
    db $fe, $1f, $74, $dc, $1a, $27, $58, $d5, $36, $2e, $3c, $ce, $52, $35, $20, $c7
    db $6e, $3c, $04, $c0, $8a, $43, $e8, $b8, $a6, $4a, $cc, $b1, $c2, $51, $b0, $aa
    db $de, $58, $94, $a3, $fa, $5f, $78, $9c, $16, $67, $5c, $95, $32, $6e, $40, $8e
    db $4e, $75, $24, $87, $6a, $7c, $08, $80

Call_010_6406:
    call Call_010_68b1                            ; $6406: $cd $b1 $68
    push hl                                       ; $6409: $e5
    call Call_010_62ad                            ; $640a: $cd $ad $62
    pop de                                        ; $640d: $d1
    call Call_000_08ac                            ; $640e: $cd $ac $08
    bit 7, h                                      ; $6411: $cb $7c
    jp nz, Jump_010_646e                          ; $6413: $c2 $6e $64

Jump_010_6416:
    call Call_010_61fa                            ; $6416: $cd $fa $61
    ld de, $0024                                  ; $6419: $11 $24 $00

Jump_010_641c:
    push bc                                       ; $641c: $c5
    push de                                       ; $641d: $d5
    rst $18                                       ; $641e: $df

    db $02, $10

    call Call_000_11ba                            ; $6421: $cd $ba $11
    push hl                                       ; $6424: $e5
    ld hl, $d404                                  ; $6425: $21 $04 $d4
    ld a, [hl+]                                   ; $6428: $2a
    ld h, [hl]                                    ; $6429: $66
    ld l, a                                       ; $642a: $6f
    add hl, de                                    ; $642b: $19
    pop de                                        ; $642c: $d1
    push hl                                       ; $642d: $e5
    ld hl, $d401                                  ; $642e: $21 $01 $d4
    ld a, [hl+]                                   ; $6431: $2a
    ld h, [hl]                                    ; $6432: $66
    ld l, a                                       ; $6433: $6f
    add hl, de                                    ; $6434: $19
    pop de                                        ; $6435: $d1
    ld a, h                                       ; $6436: $7c
    and $c0                                       ; $6437: $e6 $c0
    jr nz, jr_010_6459                            ; $6439: $20 $1e

    ld a, d                                       ; $643b: $7a
    and $c0                                       ; $643c: $e6 $c0
    jr nz, jr_010_6459                            ; $643e: $20 $19

    call Call_010_6536                            ; $6440: $cd $36 $65
    pop de                                        ; $6443: $d1
    pop bc                                        ; $6444: $c1
    cp $00                                        ; $6445: $fe $00
    jr z, jr_010_6458                             ; $6447: $28 $0f

    cp $06                                        ; $6449: $fe $06
    jr z, jr_010_6458                             ; $644b: $28 $0b

    cp $0a                                        ; $644d: $fe $0a
    jr z, jr_010_6458                             ; $644f: $28 $07

    cp $0e                                        ; $6451: $fe $0e
    jr z, jr_010_6458                             ; $6453: $28 $03

    jp Jump_010_645b                              ; $6455: $c3 $5b $64


jr_010_6458:
    ret                                           ; $6458: $c9


jr_010_6459:
    pop de                                        ; $6459: $d1
    pop bc                                        ; $645a: $c1

Jump_010_645b:
    call Call_010_63aa                            ; $645b: $cd $aa $63
    dec e                                         ; $645e: $1d
    jp nz, Jump_010_641c                          ; $645f: $c2 $1c $64

    ld hl, $d329                                  ; $6462: $21 $29 $d3
    ld a, [hl]                                    ; $6465: $7e
    cp $0c                                        ; $6466: $fe $0c
    jr nc, jr_010_646e                            ; $6468: $30 $04

    inc [hl]                                      ; $646a: $34
    jp Jump_010_6416                              ; $646b: $c3 $16 $64


Jump_010_646e:
jr_010_646e:
    call Call_010_61fa                            ; $646e: $cd $fa $61
    ret                                           ; $6471: $c9


    ld de, $d400                                  ; $6472: $11 $00 $d4
    ld hl, $d51d                                  ; $6475: $21 $1d $d5
    ld a, [hl+]                                   ; $6478: $2a
    ld [de], a                                    ; $6479: $12
    inc de                                        ; $647a: $13
    ld a, [hl+]                                   ; $647b: $2a
    ld [de], a                                    ; $647c: $12
    inc de                                        ; $647d: $13
    ld a, [hl+]                                   ; $647e: $2a
    ld [de], a                                    ; $647f: $12
    inc de                                        ; $6480: $13
    ld a, [hl+]                                   ; $6481: $2a
    ld [de], a                                    ; $6482: $12
    inc de                                        ; $6483: $13
    ld a, [hl+]                                   ; $6484: $2a
    ld [de], a                                    ; $6485: $12
    inc de                                        ; $6486: $13
    ld a, [hl]                                    ; $6487: $7e
    ld [de], a                                    ; $6488: $12
    xor a                                         ; $6489: $af
    ret                                           ; $648a: $c9


Call_010_648b:
    ld hl, $d404                                  ; $648b: $21 $04 $d4
    ld a, [hl+]                                   ; $648e: $2a
    ld d, [hl]                                    ; $648f: $56
    ld e, a                                       ; $6490: $5f
    ld hl, $d401                                  ; $6491: $21 $01 $d4
    ld a, [hl+]                                   ; $6494: $2a
    ld h, [hl]                                    ; $6495: $66
    ld l, a                                       ; $6496: $6f
    ld a, [$d443]                                 ; $6497: $fa $43 $d4
    or a                                          ; $649a: $b7
    jr z, jr_010_64c0                             ; $649b: $28 $23

    cp $04                                        ; $649d: $fe $04
    jp z, Jump_010_64c0                           ; $649f: $ca $c0 $64

    ld a, [$d442]                                 ; $64a2: $fa $42 $d4
    ld b, a                                       ; $64a5: $47
    ld a, d                                       ; $64a6: $7a
    sub b                                         ; $64a7: $90
    ld d, a                                       ; $64a8: $57
    ld a, [$d441]                                 ; $64a9: $fa $41 $d4
    ld b, a                                       ; $64ac: $47
    ld a, h                                       ; $64ad: $7c
    sub b                                         ; $64ae: $90
    ld h, a                                       ; $64af: $67
    sla l                                         ; $64b0: $cb $25
    rl h                                          ; $64b2: $cb $14
    sla l                                         ; $64b4: $cb $25
    rl h                                          ; $64b6: $cb $14
    sla e                                         ; $64b8: $cb $23
    rl d                                          ; $64ba: $cb $12
    sla e                                         ; $64bc: $cb $23
    rl d                                          ; $64be: $cb $12

Jump_010_64c0:
jr_010_64c0:
    push hl                                       ; $64c0: $e5
    push de                                       ; $64c1: $d5
    call Call_010_64d1                            ; $64c2: $cd $d1 $64
    pop de                                        ; $64c5: $d1
    pop hl                                        ; $64c6: $e1
    push bc                                       ; $64c7: $c5
    call Call_010_6536                            ; $64c8: $cd $36 $65
    pop bc                                        ; $64cb: $c1
    ret                                           ; $64cc: $c9


    xor a                                         ; $64cd: $af
    ld b, a                                       ; $64ce: $47
    ld c, a                                       ; $64cf: $4f
    ret                                           ; $64d0: $c9


Call_010_64d1:
    ldh a, [$96]                                  ; $64d1: $f0 $96
    push af                                       ; $64d3: $f5
    ld e, h                                       ; $64d4: $5c
    ld l, d                                       ; $64d5: $6a
    ld h, $00                                     ; $64d6: $26 $00
    ld d, $00                                     ; $64d8: $16 $00
    add hl, hl                                    ; $64da: $29
    add hl, hl                                    ; $64db: $29
    add hl, hl                                    ; $64dc: $29
    add hl, hl                                    ; $64dd: $29
    add hl, hl                                    ; $64de: $29
    add hl, hl                                    ; $64df: $29
    add hl, de                                    ; $64e0: $19
    ld de, $d000                                  ; $64e1: $11 $00 $d0
    add hl, de                                    ; $64e4: $19
    ld a, $02                                     ; $64e5: $3e $02
    ldh [$96], a                                  ; $64e7: $e0 $96
    ldh [rSVBK], a                                ; $64e9: $e0 $70
    ld a, [hl]                                    ; $64eb: $7e
    rrca                                          ; $64ec: $0f
    rrca                                          ; $64ed: $0f
    and $18                                       ; $64ee: $e6 $18
    ld b, a                                       ; $64f0: $47
    ld a, $03                                     ; $64f1: $3e $03
    ldh [$96], a                                  ; $64f3: $e0 $96
    ldh [rSVBK], a                                ; $64f5: $e0 $70
    ld l, [hl]                                    ; $64f7: $6e
    ld h, $d7                                     ; $64f8: $26 $d7
    ld a, $06                                     ; $64fa: $3e $06
    ldh [$96], a                                  ; $64fc: $e0 $96
    ldh [rSVBK], a                                ; $64fe: $e0 $70
    ld a, [hl]                                    ; $6500: $7e
    ld c, a                                       ; $6501: $4f
    and $07                                       ; $6502: $e6 $07
    add b                                         ; $6504: $80
    ld hl, $6516                                  ; $6505: $21 $16 $65
    add l                                         ; $6508: $85
    ld l, a                                       ; $6509: $6f
    ld a, h                                       ; $650a: $7c
    adc $00                                       ; $650b: $ce $00
    ld h, a                                       ; $650d: $67
    ld b, [hl]                                    ; $650e: $46
    pop af                                        ; $650f: $f1
    ldh [$96], a                                  ; $6510: $e0 $96
    ldh [rSVBK], a                                ; $6512: $e0 $70
    ld a, c                                       ; $6514: $79
    ret                                           ; $6515: $c9


    db $00

    jr nz, jr_010_6559                            ; $6517: $20 $40

    ld h, b                                       ; $6519: $60
    add b                                         ; $651a: $80
    and b                                         ; $651b: $a0
    ret nz                                        ; $651c: $c0

    db $e0, $80

    ld h, b                                       ; $651f: $60
    ld b, b                                       ; $6520: $40
    jr nz, jr_010_6523                            ; $6521: $20 $00

jr_010_6523:
    ldh [$c0], a                                  ; $6523: $e0 $c0

    db $a0, $00

    ldh [$c0], a                                  ; $6527: $e0 $c0
    and b                                         ; $6529: $a0
    add b                                         ; $652a: $80
    ld h, b                                       ; $652b: $60
    ld b, b                                       ; $652c: $40

    db $20

    add b                                         ; $652e: $80
    and b                                         ; $652f: $a0
    ret nz                                        ; $6530: $c0

    ldh [rP1], a                                  ; $6531: $e0 $00
    jr nz, jr_010_6575                            ; $6533: $20 $40

    ld h, b                                       ; $6535: $60

Call_010_6536:
    ldh a, [$96]                                  ; $6536: $f0 $96
    push af                                       ; $6538: $f5
    push hl                                       ; $6539: $e5
    push de                                       ; $653a: $d5
    ld e, h                                       ; $653b: $5c
    ld l, d                                       ; $653c: $6a
    ld h, $00                                     ; $653d: $26 $00
    ld d, $00                                     ; $653f: $16 $00
    add hl, hl                                    ; $6541: $29
    add hl, hl                                    ; $6542: $29
    add hl, hl                                    ; $6543: $29
    add hl, hl                                    ; $6544: $29
    add hl, hl                                    ; $6545: $29
    add hl, hl                                    ; $6546: $29
    add hl, de                                    ; $6547: $19
    ld de, $d000                                  ; $6548: $11 $00 $d0
    add hl, de                                    ; $654b: $19
    pop de                                        ; $654c: $d1
    pop bc                                        ; $654d: $c1
    xor a                                         ; $654e: $af
    sla c                                         ; $654f: $cb $21
    rla                                           ; $6551: $17
    sla c                                         ; $6552: $cb $21
    rla                                           ; $6554: $17
    ld c, a                                       ; $6555: $4f
    xor a                                         ; $6556: $af
    sla e                                         ; $6557: $cb $23

jr_010_6559:
    rla                                           ; $6559: $17
    sla e                                         ; $655a: $cb $23
    rla                                           ; $655c: $17
    ld d, $00                                     ; $655d: $16 $00
    ld e, a                                       ; $655f: $5f
    ld a, $02                                     ; $6560: $3e $02
    ldh [$96], a                                  ; $6562: $e0 $96
    ldh [rSVBK], a                                ; $6564: $e0 $70
    bit 5, [hl]                                   ; $6566: $cb $6e
    jr z, jr_010_656e                             ; $6568: $28 $04

    ld a, $03                                     ; $656a: $3e $03
    sub c                                         ; $656c: $91
    ld c, a                                       ; $656d: $4f

jr_010_656e:
    bit 6, [hl]                                   ; $656e: $cb $76
    jr z, jr_010_6576                             ; $6570: $28 $04

    ld a, $03                                     ; $6572: $3e $03
    sub e                                         ; $6574: $93

jr_010_6575:
    ld e, a                                       ; $6575: $5f

jr_010_6576:
    ld a, $03                                     ; $6576: $3e $03
    ldh [$96], a                                  ; $6578: $e0 $96
    ldh [rSVBK], a                                ; $657a: $e0 $70
    ld l, [hl]                                    ; $657c: $6e
    ld h, $00                                     ; $657d: $26 $00
    add hl, hl                                    ; $657f: $29
    add hl, hl                                    ; $6580: $29
    add hl, hl                                    ; $6581: $29
    add hl, de                                    ; $6582: $19
    add hl, de                                    ; $6583: $19
    ld de, $d800                                  ; $6584: $11 $00 $d8
    add hl, de                                    ; $6587: $19
    bit 1, c                                      ; $6588: $cb $49
    jr z, jr_010_658d                             ; $658a: $28 $01

    inc hl                                        ; $658c: $23

jr_010_658d:
    ld a, $06                                     ; $658d: $3e $06
    ldh [$96], a                                  ; $658f: $e0 $96
    ldh [rSVBK], a                                ; $6591: $e0 $70
    ld a, [hl]                                    ; $6593: $7e
    bit 0, c                                      ; $6594: $cb $41
    jr nz, jr_010_659a                            ; $6596: $20 $02

    swap a                                        ; $6598: $cb $37

jr_010_659a:
    and $0f                                       ; $659a: $e6 $0f
    ld b, a                                       ; $659c: $47
    pop af                                        ; $659d: $f1
    ldh [$96], a                                  ; $659e: $e0 $96
    ldh [rSVBK], a                                ; $65a0: $e0 $70
    ld a, b                                       ; $65a2: $78
    ret                                           ; $65a3: $c9


    ld a, e                                       ; $65a4: $7b
    and $fc                                       ; $65a5: $e6 $fc
    swap a                                        ; $65a7: $cb $37
    ld l, a                                       ; $65a9: $6f
    and $0f                                       ; $65aa: $e6 $0f
    ld h, a                                       ; $65ac: $67
    xor l                                         ; $65ad: $ad
    ld l, a                                       ; $65ae: $6f
    ld c, d                                       ; $65af: $4a
    srl c                                         ; $65b0: $cb $39
    srl c                                         ; $65b2: $cb $39
    ld b, $d0                                     ; $65b4: $06 $d0
    add hl, bc                                    ; $65b6: $09
    ld a, $02                                     ; $65b7: $3e $02
    ldh [$96], a                                  ; $65b9: $e0 $96
    ldh [rSVBK], a                                ; $65bb: $e0 $70
    ld a, d                                       ; $65bd: $7a
    bit 5, [hl]                                   ; $65be: $cb $6e
    jr z, jr_010_65c3                             ; $65c0: $28 $01

    cpl                                           ; $65c2: $2f

jr_010_65c3:
    ld c, a                                       ; $65c3: $4f
    rrca                                          ; $65c4: $0f
    rrca                                          ; $65c5: $0f
    ld a, e                                       ; $65c6: $7b
    bit 6, [hl]                                   ; $65c7: $cb $76
    jr z, jr_010_65cc                             ; $65c9: $28 $01

    cpl                                           ; $65cb: $2f

jr_010_65cc:
    rla                                           ; $65cc: $17
    and $07                                       ; $65cd: $e6 $07
    ld e, a                                       ; $65cf: $5f
    ld a, $03                                     ; $65d0: $3e $03
    ldh [$96], a                                  ; $65d2: $e0 $96
    ldh [rSVBK], a                                ; $65d4: $e0 $70
    ld l, [hl]                                    ; $65d6: $6e
    xor a                                         ; $65d7: $af
    ld h, a                                       ; $65d8: $67
    ld d, $d8                                     ; $65d9: $16 $d8
    add hl, hl                                    ; $65db: $29
    add hl, hl                                    ; $65dc: $29
    add hl, hl                                    ; $65dd: $29
    add hl, de                                    ; $65de: $19
    ld a, $06                                     ; $65df: $3e $06
    ldh [$96], a                                  ; $65e1: $e0 $96
    ldh [rSVBK], a                                ; $65e3: $e0 $70
    ld a, [hl]                                    ; $65e5: $7e
    bit 0, c                                      ; $65e6: $cb $41
    jr nz, jr_010_65ec                            ; $65e8: $20 $02

    swap a                                        ; $65ea: $cb $37

jr_010_65ec:
    and $0f                                       ; $65ec: $e6 $0f
    ret                                           ; $65ee: $c9


Call_010_65ef:
    ld a, [$d329]                                 ; $65ef: $fa $29 $d3
    add a                                         ; $65f2: $87
    ld hl, $660e                                  ; $65f3: $21 $0e $66
    add l                                         ; $65f6: $85
    ld l, a                                       ; $65f7: $6f
    jr nc, jr_010_65fb                            ; $65f8: $30 $01

    inc h                                         ; $65fa: $24

jr_010_65fb:
    ld a, [hl+]                                   ; $65fb: $2a
    ld d, [hl]                                    ; $65fc: $56
    ld e, a                                       ; $65fd: $5f
    call Call_010_6672                            ; $65fe: $cd $72 $66
    add a                                         ; $6601: $87
    ld h, $00                                     ; $6602: $26 $00
    ld l, a                                       ; $6604: $6f
    add hl, de                                    ; $6605: $19
    ld e, [hl]                                    ; $6606: $5e
    inc hl                                        ; $6607: $23
    ld d, [hl]                                    ; $6608: $56
    inc hl                                        ; $6609: $23
    ld a, [hl+]                                   ; $660a: $2a
    ld h, [hl]                                    ; $660b: $66
    ld l, a                                       ; $660c: $6f
    ret                                           ; $660d: $c9


    db $2a, $66, $42, $66

    ld b, d                                       ; $6612: $42
    ld h, [hl]                                    ; $6613: $66

    db $5a, $66

    ld e, d                                       ; $6616: $5a
    ld h, [hl]                                    ; $6617: $66
    ld e, d                                       ; $6618: $5a
    ld h, [hl]                                    ; $6619: $66

    db $5a, $66, $5a, $66, $5a, $66

    ld e, d                                       ; $6620: $5a
    ld h, [hl]                                    ; $6621: $66
    ld e, d                                       ; $6622: $5a
    ld h, [hl]                                    ; $6623: $66
    ld e, d                                       ; $6624: $5a
    ld h, [hl]                                    ; $6625: $66

    db $5a, $66

    ld e, d                                       ; $6628: $5a
    ld h, [hl]                                    ; $6629: $66

    db $62, $64, $5d, $5f

    ld [hl-], a                                   ; $662e: $32
    inc a                                         ; $662f: $3c
    inc d                                         ; $6630: $14
    ld [hl-], a                                   ; $6631: $32
    jr z, @+$39                                   ; $6632: $28 $37

    inc d                                         ; $6634: $14
    jr z, @+$0c                                   ; $6635: $28 $0a

    ld e, $63                                     ; $6637: $1e $63
    ld h, h                                       ; $6639: $64
    inc a                                         ; $663a: $3c
    ld b, h                                       ; $663b: $44
    ld d, a                                       ; $663c: $57
    ld e, e                                       ; $663d: $5b
    ld d, e                                       ; $663e: $53
    ld d, a                                       ; $663f: $57
    jr z, jr_010_6679                             ; $6640: $28 $37

    db $62, $64, $62, $64, $32, $3c

    inc d                                         ; $6648: $14
    ld [hl-], a                                   ; $6649: $32
    jr z, jr_010_6683                             ; $664a: $28 $37

    inc d                                         ; $664c: $14
    jr z, @+$0c                                   ; $664d: $28 $0a

    ld e, $63                                     ; $664f: $1e $63
    ld h, h                                       ; $6651: $64
    ld e, d                                       ; $6652: $5a
    ld h, d                                       ; $6653: $62
    ld e, [hl]                                    ; $6654: $5e
    ld h, d                                       ; $6655: $62
    ld e, d                                       ; $6656: $5a
    ld e, [hl]                                    ; $6657: $5e
    jr z, jr_010_6691                             ; $6658: $28 $37

    ld h, d                                       ; $665a: $62
    ld h, h                                       ; $665b: $64

    db $62, $64, $50, $5a, $32, $50

    ld b, [hl]                                    ; $6662: $46
    ld d, l                                       ; $6663: $55
    ld [hl-], a                                   ; $6664: $32
    ld b, [hl]                                    ; $6665: $46
    jr z, @+$3e                                   ; $6666: $28 $3c

    ld h, e                                       ; $6668: $63
    ld h, h                                       ; $6669: $64

    db $5a, $62, $5e, $62, $5a, $5e, $46, $55

Call_010_6672:
    ld a, [$d445]                                 ; $6672: $fa $45 $d4
    or a                                          ; $6675: $b7
    jr z, jr_010_667a                             ; $6676: $28 $02

    xor a                                         ; $6678: $af

jr_010_6679:
    ret                                           ; $6679: $c9


jr_010_667a:
    ld a, [$d4cd]                                 ; $667a: $fa $cd $d4
    cp $0d                                        ; $667d: $fe $0d
    jr z, jr_010_6685                             ; $667f: $28 $04

    cp $02                                        ; $6681: $fe $02

jr_010_6683:
    jr nz, jr_010_6695                            ; $6683: $20 $10

jr_010_6685:
    ld a, [$d446]                                 ; $6685: $fa $46 $d4
    or a                                          ; $6688: $b7
    jr z, jr_010_66ba                             ; $6689: $28 $2f

    cp $01                                        ; $668b: $fe $01
    jr nz, jr_010_6692                            ; $668d: $20 $03

    ld a, $05                                     ; $668f: $3e $05

jr_010_6691:
    ret                                           ; $6691: $c9


jr_010_6692:
    ld a, $06                                     ; $6692: $3e $06
    ret                                           ; $6694: $c9


jr_010_6695:
    cp $00                                        ; $6695: $fe $00
    jr z, jr_010_669d                             ; $6697: $28 $04

    cp $0e                                        ; $6699: $fe $0e
    jr nz, jr_010_66ad                            ; $669b: $20 $10

jr_010_669d:
    ld a, [$d446]                                 ; $669d: $fa $46 $d4
    or a                                          ; $66a0: $b7
    jr z, jr_010_66ba                             ; $66a1: $28 $17

    cp $01                                        ; $66a3: $fe $01
    jr nz, jr_010_66aa                            ; $66a5: $20 $03

    ld a, $09                                     ; $66a7: $3e $09
    ret                                           ; $66a9: $c9


jr_010_66aa:
    ld a, $0a                                     ; $66aa: $3e $0a
    ret                                           ; $66ac: $c9


jr_010_66ad:
    cp $01                                        ; $66ad: $fe $01
    jr nz, jr_010_66ba                            ; $66af: $20 $09

    ld a, [$d446]                                 ; $66b1: $fa $46 $d4
    or a                                          ; $66b4: $b7
    jr z, jr_010_66ba                             ; $66b5: $28 $03

    ld a, $0b                                     ; $66b7: $3e $0b
    ret                                           ; $66b9: $c9


jr_010_66ba:
    push hl                                       ; $66ba: $e5
    push de                                       ; $66bb: $d5
    ld a, [$d4cd]                                 ; $66bc: $fa $cd $d4
    ld hl, $66cb                                  ; $66bf: $21 $cb $66
    add l                                         ; $66c2: $85
    ld l, a                                       ; $66c3: $6f
    jr nc, jr_010_66c7                            ; $66c4: $30 $01

    inc h                                         ; $66c6: $24

jr_010_66c7:
    ld a, [hl]                                    ; $66c7: $7e
    pop de                                        ; $66c8: $d1
    pop hl                                        ; $66c9: $e1
    ret                                           ; $66ca: $c9


    db $01, $02

    inc b                                         ; $66cd: $04
    ld [bc], a                                    ; $66ce: $02
    ld [bc], a                                    ; $66cf: $02
    inc bc                                        ; $66d0: $03

    db $07

    ld [bc], a                                    ; $66d2: $02
    ld [bc], a                                    ; $66d3: $02

    db $08

    rlca                                          ; $66d5: $07
    dec bc                                        ; $66d6: $0b
    inc bc                                        ; $66d7: $03
    inc b                                         ; $66d8: $04
    db $01                                        ; $66d9: $01
    db $01                                        ; $66da: $01

Call_010_66db:
    ld hl, $d404                                  ; $66db: $21 $04 $d4
    ld a, [hl+]                                   ; $66de: $2a
    ld d, [hl]                                    ; $66df: $56
    ld e, a                                       ; $66e0: $5f
    ld hl, $d401                                  ; $66e1: $21 $01 $d4
    ld a, [hl+]                                   ; $66e4: $2a
    ld h, [hl]                                    ; $66e5: $66
    ld l, a                                       ; $66e6: $6f
    ld a, [$d443]                                 ; $66e7: $fa $43 $d4
    or a                                          ; $66ea: $b7
    jr z, jr_010_674e                             ; $66eb: $28 $61

    cp $04                                        ; $66ed: $fe $04
    jr z, jr_010_674e                             ; $66ef: $28 $5d

    ld a, [$d442]                                 ; $66f1: $fa $42 $d4
    ld c, a                                       ; $66f4: $4f
    ld a, d                                       ; $66f5: $7a
    sub c                                         ; $66f6: $91
    ld d, a                                       ; $66f7: $57
    ld a, [$d441]                                 ; $66f8: $fa $41 $d4
    ld c, a                                       ; $66fb: $4f
    ld a, h                                       ; $66fc: $7c
    sub c                                         ; $66fd: $91
    ld h, a                                       ; $66fe: $67
    sla l                                         ; $66ff: $cb $25
    rl h                                          ; $6701: $cb $14
    sla l                                         ; $6703: $cb $25
    rl h                                          ; $6705: $cb $14
    sla e                                         ; $6707: $cb $23
    rl d                                          ; $6709: $cb $12
    sla e                                         ; $670b: $cb $23
    rl d                                          ; $670d: $cb $12
    push hl                                       ; $670f: $e5
    push de                                       ; $6710: $d5
    call Call_010_64d1                            ; $6711: $cd $d1 $64
    pop de                                        ; $6714: $d1
    pop hl                                        ; $6715: $e1
    swap a                                        ; $6716: $cb $37
    and $03                                       ; $6718: $e6 $03
    jr z, jr_010_6748                             ; $671a: $28 $2c

    ld c, a                                       ; $671c: $4f
    push bc                                       ; $671d: $c5
    call Call_010_6536                            ; $671e: $cd $36 $65
    cp $06                                        ; $6721: $fe $06
    pop bc                                        ; $6723: $c1
    jr nz, jr_010_6740                            ; $6724: $20 $1a

    ld a, c                                       ; $6726: $79
    add a                                         ; $6727: $87
    ld hl, $6738                                  ; $6728: $21 $38 $67
    add l                                         ; $672b: $85
    ld l, a                                       ; $672c: $6f
    jr nc, jr_010_6730                            ; $672d: $30 $01

    inc h                                         ; $672f: $24

jr_010_6730:
    ld a, [hl+]                                   ; $6730: $2a
    ld h, [hl]                                    ; $6731: $66
    ld l, a                                       ; $6732: $6f
    ld c, $00                                     ; $6733: $0e $00
    ld a, $ff                                     ; $6735: $3e $ff
    ret                                           ; $6737: $c9


    nop                                           ; $6738: $00
    nop                                           ; $6739: $00

    db $02, $00, $04, $00

    ld b, $00                                     ; $673e: $06 $00

jr_010_6740:
    ld hl, $0020                                  ; $6740: $21 $20 $00
    ld c, $00                                     ; $6743: $0e $00
    ld a, $ff                                     ; $6745: $3e $ff
    ret                                           ; $6747: $c9


jr_010_6748:
    xor a                                         ; $6748: $af
    ld h, a                                       ; $6749: $67
    ld l, a                                       ; $674a: $6f
    ld c, a                                       ; $674b: $4f
    ld b, a                                       ; $674c: $47
    ret                                           ; $674d: $c9


jr_010_674e:
    ldh a, [$96]                                  ; $674e: $f0 $96
    push af                                       ; $6750: $f5
    push hl                                       ; $6751: $e5
    push de                                       ; $6752: $d5
    ld e, h                                       ; $6753: $5c
    ld l, d                                       ; $6754: $6a
    ld h, $00                                     ; $6755: $26 $00
    ld d, $00                                     ; $6757: $16 $00
    add hl, hl                                    ; $6759: $29
    add hl, hl                                    ; $675a: $29
    add hl, hl                                    ; $675b: $29
    add hl, hl                                    ; $675c: $29
    add hl, hl                                    ; $675d: $29
    add hl, hl                                    ; $675e: $29
    add hl, de                                    ; $675f: $19
    ld de, $d000                                  ; $6760: $11 $00 $d0
    add hl, de                                    ; $6763: $19
    pop de                                        ; $6764: $d1
    pop bc                                        ; $6765: $c1
    xor a                                         ; $6766: $af
    sla c                                         ; $6767: $cb $21
    rla                                           ; $6769: $17
    sla c                                         ; $676a: $cb $21
    rla                                           ; $676c: $17
    ld c, a                                       ; $676d: $4f
    xor a                                         ; $676e: $af
    sla e                                         ; $676f: $cb $23
    rla                                           ; $6771: $17
    sla e                                         ; $6772: $cb $23
    rla                                           ; $6774: $17
    ld d, $00                                     ; $6775: $16 $00
    ld e, a                                       ; $6777: $5f
    ld a, $02                                     ; $6778: $3e $02
    ldh [$96], a                                  ; $677a: $e0 $96
    ldh [rSVBK], a                                ; $677c: $e0 $70
    ld b, [hl]                                    ; $677e: $46
    bit 5, b                                      ; $677f: $cb $68
    jr z, jr_010_6787                             ; $6781: $28 $04

    ld a, $03                                     ; $6783: $3e $03
    sub c                                         ; $6785: $91
    ld c, a                                       ; $6786: $4f

jr_010_6787:
    bit 6, b                                      ; $6787: $cb $70
    jr z, jr_010_678f                             ; $6789: $28 $04

    ld a, $03                                     ; $678b: $3e $03
    sub e                                         ; $678d: $93
    ld e, a                                       ; $678e: $5f

jr_010_678f:
    ld a, $03                                     ; $678f: $3e $03
    ldh [$96], a                                  ; $6791: $e0 $96
    ldh [rSVBK], a                                ; $6793: $e0 $70
    ld l, [hl]                                    ; $6795: $6e
    ld h, $00                                     ; $6796: $26 $00
    add hl, hl                                    ; $6798: $29
    add hl, hl                                    ; $6799: $29
    add hl, hl                                    ; $679a: $29
    add hl, de                                    ; $679b: $19
    add hl, de                                    ; $679c: $19
    ld de, $d800                                  ; $679d: $11 $00 $d8
    add hl, de                                    ; $67a0: $19
    bit 1, c                                      ; $67a1: $cb $49
    jr z, jr_010_67a6                             ; $67a3: $28 $01

    inc hl                                        ; $67a5: $23

jr_010_67a6:
    ld a, $01                                     ; $67a6: $3e $01
    ldh [$96], a                                  ; $67a8: $e0 $96
    ldh [rSVBK], a                                ; $67aa: $e0 $70
    ld a, [hl]                                    ; $67ac: $7e
    bit 0, c                                      ; $67ad: $cb $41
    jr nz, jr_010_67b3                            ; $67af: $20 $02

    swap a                                        ; $67b1: $cb $37

jr_010_67b3:
    bit 3, a                                      ; $67b3: $cb $5f
    jr nz, jr_010_67c4                            ; $67b5: $20 $0d

    ld bc, $0000                                  ; $67b7: $01 $00 $00
    ld hl, $0000                                  ; $67ba: $21 $00 $00
    pop af                                        ; $67bd: $f1
    ldh [$96], a                                  ; $67be: $e0 $96
    ldh [rSVBK], a                                ; $67c0: $e0 $70
    xor a                                         ; $67c2: $af
    ret                                           ; $67c3: $c9


jr_010_67c4:
    and $07                                       ; $67c4: $e6 $07
    ld c, a                                       ; $67c6: $4f
    ld a, b                                       ; $67c7: $78
    rrca                                          ; $67c8: $0f
    rrca                                          ; $67c9: $0f
    and $18                                       ; $67ca: $e6 $18
    add c                                         ; $67cc: $81
    ld hl, $6516                                  ; $67cd: $21 $16 $65
    add l                                         ; $67d0: $85
    ld l, a                                       ; $67d1: $6f
    ld a, h                                       ; $67d2: $7c
    adc $00                                       ; $67d3: $ce $00
    ld h, a                                       ; $67d5: $67
    ld b, [hl]                                    ; $67d6: $46
    ld c, $00                                     ; $67d7: $0e $00
    ld hl, $0020                                  ; $67d9: $21 $20 $00
    pop af                                        ; $67dc: $f1
    ldh [$96], a                                  ; $67dd: $e0 $96
    ldh [rSVBK], a                                ; $67df: $e0 $70
    ld a, $ff                                     ; $67e1: $3e $ff
    ret                                           ; $67e3: $c9


Call_010_67e4:
    ld hl, $d404                                  ; $67e4: $21 $04 $d4
    ld a, [hl+]                                   ; $67e7: $2a
    ld d, [hl]                                    ; $67e8: $56
    ld e, a                                       ; $67e9: $5f
    ld hl, $d401                                  ; $67ea: $21 $01 $d4
    ld a, [hl+]                                   ; $67ed: $2a
    ld h, [hl]                                    ; $67ee: $66
    ld l, a                                       ; $67ef: $6f
    ld a, [$d443]                                 ; $67f0: $fa $43 $d4
    or a                                          ; $67f3: $b7
    jr z, jr_010_6818                             ; $67f4: $28 $22

    cp $04                                        ; $67f6: $fe $04
    jr nc, jr_010_6818                            ; $67f8: $30 $1e

    ld a, [$d442]                                 ; $67fa: $fa $42 $d4
    ld b, a                                       ; $67fd: $47
    ld a, d                                       ; $67fe: $7a
    sub b                                         ; $67ff: $90
    ld d, a                                       ; $6800: $57
    ld a, [$d441]                                 ; $6801: $fa $41 $d4
    ld b, a                                       ; $6804: $47
    ld a, h                                       ; $6805: $7c
    sub b                                         ; $6806: $90
    ld h, a                                       ; $6807: $67
    sla l                                         ; $6808: $cb $25
    rl h                                          ; $680a: $cb $14
    sla l                                         ; $680c: $cb $25
    rl h                                          ; $680e: $cb $14
    sla e                                         ; $6810: $cb $23
    rl d                                          ; $6812: $cb $12
    sla e                                         ; $6814: $cb $23
    rl d                                          ; $6816: $cb $12

jr_010_6818:
    call Call_010_6536                            ; $6818: $cd $36 $65
    add a                                         ; $681b: $87
    add a                                         ; $681c: $87
    ld h, $00                                     ; $681d: $26 $00
    ld l, a                                       ; $681f: $6f
    ld de, $6825                                  ; $6820: $11 $25 $68
    add hl, de                                    ; $6823: $19
    ret                                           ; $6824: $c9


    db $40, $f8, $b0

    nop                                           ; $6828: $00

    db $20, $e0, $60

    nop                                           ; $682c: $00
    ld [$80f0], sp                                ; $682d: $08 $f0 $80
    nop                                           ; $6830: $00
    ld h, b                                       ; $6831: $60
    ld bc, $00a0                                  ; $6832: $01 $a0 $00
    add b                                         ; $6835: $80
    cp $f8                                        ; $6836: $fe $f8
    nop                                           ; $6838: $00
    db $10                                        ; $6839: $10
    ret nz                                        ; $683a: $c0

    ld b, b                                       ; $683b: $40
    nop                                           ; $683c: $00

    db $40, $fc, $b0

    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    add b                                         ; $6842: $80

jr_010_6843:
    ld b, b                                       ; $6843: $40
    nop                                           ; $6844: $00
    add b                                         ; $6845: $80
    db $fc                                        ; $6846: $fc
    ld hl, sp+$00                                 ; $6847: $f8 $00

    db $28, $e0, $a0

    nop                                           ; $684c: $00
    db $38                                        ; $684d: $38

    db $fa

    ret nc                                        ; $684f: $d0

    nop                                           ; $6850: $00
    jr nc, jr_010_6843                            ; $6851: $30 $f0

    add b                                         ; $6853: $80
    nop                                           ; $6854: $00
    db $10                                        ; $6855: $10
    ret nc                                        ; $6856: $d0

    ld b, b                                       ; $6857: $40
    nop                                           ; $6858: $00
    ld [$80f0], sp                                ; $6859: $08 $f0 $80
    nop                                           ; $685c: $00
    ld h, b                                       ; $685d: $60
    cp $c0                                        ; $685e: $fe $c0
    nop                                           ; $6860: $00
    ld bc, $e0f0                                  ; $6861: $01 $f0 $e0
    nop                                           ; $6864: $00

Call_010_6865:
    cp $3c                                        ; $6865: $fe $3c
    ret nc                                        ; $6867: $d0

    push hl                                       ; $6868: $e5
    ld h, $00                                     ; $6869: $26 $00
    ld l, a                                       ; $686b: $6f
    ld de, $6875                                  ; $686c: $11 $75 $68
    add hl, de                                    ; $686f: $19
    ld a, [hl]                                    ; $6870: $7e
    pop hl                                        ; $6871: $e1
    jp Jump_000_0bec                              ; $6872: $c3 $ec $0b


    nop                                           ; $6875: $00
    inc b                                         ; $6876: $04
    add hl, bc                                    ; $6877: $09
    dec c                                         ; $6878: $0d
    ld de, $1a15                                  ; $6879: $11 $15 $1a
    ld e, $22                                     ; $687c: $1e $22
    db $26                                        ; $687e: $26

    db $2b

    cpl                                           ; $6880: $2f
    inc sp                                        ; $6881: $33
    scf                                           ; $6882: $37
    inc a                                         ; $6883: $3c
    ld b, b                                       ; $6884: $40
    ld b, h                                       ; $6885: $44
    ld c, c                                       ; $6886: $49
    ld c, l                                       ; $6887: $4d
    ld d, c                                       ; $6888: $51

    db $55

    ld e, d                                       ; $688a: $5a
    ld e, [hl]                                    ; $688b: $5e
    ld h, d                                       ; $688c: $62
    ld h, [hl]                                    ; $688d: $66
    ld l, e                                       ; $688e: $6b

    db $6f

    ld [hl], e                                    ; $6890: $73
    ld [hl], a                                    ; $6891: $77
    ld a, h                                       ; $6892: $7c
    add b                                         ; $6893: $80
    add h                                         ; $6894: $84

    db $89

    adc l                                         ; $6896: $8d
    sub c                                         ; $6897: $91
    sub l                                         ; $6898: $95
    sbc d                                         ; $6899: $9a
    sbc [hl]                                      ; $689a: $9e
    and d                                         ; $689b: $a2
    and [hl]                                      ; $689c: $a6
    xor e                                         ; $689d: $ab
    xor a                                         ; $689e: $af
    or e                                          ; $689f: $b3
    or a                                          ; $68a0: $b7

    db $bc

    ret nz                                        ; $68a2: $c0

    db $c4

    ret                                           ; $68a4: $c9


    db $cd                                        ; $68a5: $cd
    pop de                                        ; $68a6: $d1

    db $d5

    jp c, $e2de                                   ; $68a8: $da $de $e2

    db $e6

    db $eb                                        ; $68ac: $eb

    db $ef

    di                                            ; $68ae: $f3

    db $f7

    db $fc                                        ; $68b0: $fc

Call_010_68b1:
    ld a, [$d329]                                 ; $68b1: $fa $29 $d3
    ld d, a                                       ; $68b4: $57
    cp $0d                                        ; $68b5: $fe $0d
    jp z, Jump_010_68f1                           ; $68b7: $ca $f1 $68

    ld a, [$d32a]                                 ; $68ba: $fa $2a $d3
    cp $02                                        ; $68bd: $fe $02
    jr nz, jr_010_68c5                            ; $68bf: $20 $04

    ld hl, $0780                                  ; $68c1: $21 $80 $07
    ret                                           ; $68c4: $c9


jr_010_68c5:
    cp $03                                        ; $68c5: $fe $03
    jr nz, jr_010_68cd                            ; $68c7: $20 $04

    ld hl, $03c0                                  ; $68c9: $21 $c0 $03
    ret                                           ; $68cc: $c9


jr_010_68cd:
    push bc                                       ; $68cd: $c5
    ld a, [$d4cc]                                 ; $68ce: $fa $cc $d4
    ld b, a                                       ; $68d1: $47
    ld hl, $d4c6                                  ; $68d2: $21 $c6 $d4
    ld a, [hl+]                                   ; $68d5: $2a
    ld h, [hl]                                    ; $68d6: $66
    ld l, a                                       ; $68d7: $6f
    ld a, d                                       ; $68d8: $7a
    rst $18                                       ; $68d9: $df

    db $10, $02

    pop bc                                        ; $68dc: $c1
    ld a, $20                                     ; $68dd: $3e $20
    call Call_000_08b9                            ; $68df: $cd $b9 $08
    ld a, [$d32a]                                 ; $68e2: $fa $2a $d3
    or a                                          ; $68e5: $b7
    ret z                                         ; $68e6: $c8

    push hl                                       ; $68e7: $e5
    ld de, $199a                                  ; $68e8: $11 $9a $19
    call Call_000_0cb5                            ; $68eb: $cd $b5 $0c
    pop de                                        ; $68ee: $d1
    add hl, de                                    ; $68ef: $19
    ret                                           ; $68f0: $c9


Jump_010_68f1:
    ld a, [$d32b]                                 ; $68f1: $fa $2b $d3
    or a                                          ; $68f4: $b7
    jr nz, jr_010_68fb                            ; $68f5: $20 $04

    ld hl, $0140                                  ; $68f7: $21 $40 $01
    ret                                           ; $68fa: $c9


jr_010_68fb:
    cp $01                                        ; $68fb: $fe $01
    jr nz, jr_010_6903                            ; $68fd: $20 $04

    ld hl, $042a                                  ; $68ff: $21 $2a $04
    ret                                           ; $6902: $c9


jr_010_6903:
    ld hl, $0855                                  ; $6903: $21 $55 $08
    ret                                           ; $6906: $c9


Call_010_6907:
    push de                                       ; $6907: $d5
    ld a, [$d329]                                 ; $6908: $fa $29 $d3
    ld d, a                                       ; $690b: $57
    call Call_010_6672                            ; $690c: $cd $72 $66
    and $0f                                       ; $690f: $e6 $0f
    swap a                                        ; $6911: $cb $37
    or d                                          ; $6913: $b2
    ld d, $00                                     ; $6914: $16 $00
    ld e, a                                       ; $6916: $5f
    ld hl, $6983                                  ; $6917: $21 $83 $69
    ld a, [$d32a]                                 ; $691a: $fa $2a $d3
    cp $02                                        ; $691d: $fe $02
    jr c, jr_010_6924                             ; $691f: $38 $03

    ld hl, $6a43                                  ; $6921: $21 $43 $6a

jr_010_6924:
    add hl, de                                    ; $6924: $19
    ld l, [hl]                                    ; $6925: $6e
    ld a, [$d4c9]                                 ; $6926: $fa $c9 $d4
    add $04                                       ; $6929: $c6 $04
    add a                                         ; $692b: $87
    add a                                         ; $692c: $87
    add a                                         ; $692d: $87
    add l                                         ; $692e: $85
    ld hl, $693b                                  ; $692f: $21 $3b $69
    add l                                         ; $6932: $85
    ld l, a                                       ; $6933: $6f
    jr nc, jr_010_6937                            ; $6934: $30 $01

    inc h                                         ; $6936: $24

jr_010_6937:
    ld a, [hl]                                    ; $6937: $7e
    dec a                                         ; $6938: $3d
    pop de                                        ; $6939: $d1
    ret                                           ; $693a: $c9


    ld bc, $0101                                  ; $693b: $01 $01 $01
    ld bc, $0201                                  ; $693e: $01 $01 $02
    dec b                                         ; $6941: $05
    dec b                                         ; $6942: $05
    ld bc, $0101                                  ; $6943: $01 $01 $01
    ld [bc], a                                    ; $6946: $02
    ld [bc], a                                    ; $6947: $02
    inc bc                                        ; $6948: $03
    dec b                                         ; $6949: $05
    dec b                                         ; $694a: $05
    ld bc, $0101                                  ; $694b: $01 $01 $01
    ld [bc], a                                    ; $694e: $02
    inc bc                                        ; $694f: $03
    inc b                                         ; $6950: $04
    dec b                                         ; $6951: $05
    dec b                                         ; $6952: $05
    ld bc, $0201                                  ; $6953: $01 $01 $02
    ld [bc], a                                    ; $6956: $02
    inc bc                                        ; $6957: $03
    inc b                                         ; $6958: $04
    dec b                                         ; $6959: $05
    dec b                                         ; $695a: $05
    ld bc, $0201                                  ; $695b: $01 $01 $02
    inc bc                                        ; $695e: $03
    inc b                                         ; $695f: $04
    dec b                                         ; $6960: $05
    dec b                                         ; $6961: $05
    dec b                                         ; $6962: $05
    ld bc, $0201                                  ; $6963: $01 $01 $02

    db $03, $05, $05

    dec b                                         ; $6969: $05
    dec b                                         ; $696a: $05
    ld bc, $0201                                  ; $696b: $01 $01 $02
    inc b                                         ; $696e: $04
    dec b                                         ; $696f: $05
    dec b                                         ; $6970: $05
    dec b                                         ; $6971: $05
    dec b                                         ; $6972: $05
    ld bc, $0301                                  ; $6973: $01 $01 $03

    db $04, $05, $05

    dec b                                         ; $6979: $05
    dec b                                         ; $697a: $05
    ld bc, $0302                                  ; $697b: $01 $02 $03
    dec b                                         ; $697e: $05
    dec b                                         ; $697f: $05
    dec b                                         ; $6980: $05
    dec b                                         ; $6981: $05
    dec b                                         ; $6982: $05

    db $03, $04, $04, $04, $04, $04, $04, $05, $05, $05, $05, $05, $05

    dec b                                         ; $6990: $05
    dec b                                         ; $6991: $05
    dec b                                         ; $6992: $05
    inc bc                                        ; $6993: $03

    db $03, $03, $04, $04, $04, $04, $04, $04, $05, $05, $05, $05, $05

    dec b                                         ; $69a1: $05
    dec b                                         ; $69a2: $05
    ld bc, $0202                                  ; $69a3: $01 $02 $02

    db $03, $03, $03, $03, $04, $04, $04, $04, $05, $05

    dec b                                         ; $69b0: $05
    dec b                                         ; $69b1: $05
    dec b                                         ; $69b2: $05
    ld bc, $0101                                  ; $69b3: $01 $01 $01
    ld bc, $0202                                  ; $69b6: $01 $02 $02
    ld [bc], a                                    ; $69b9: $02
    ld [bc], a                                    ; $69ba: $02
    inc bc                                        ; $69bb: $03
    inc bc                                        ; $69bc: $03
    inc bc                                        ; $69bd: $03
    inc bc                                        ; $69be: $03
    inc b                                         ; $69bf: $04
    dec b                                         ; $69c0: $05
    dec b                                         ; $69c1: $05
    dec b                                         ; $69c2: $05
    ld bc, $0101                                  ; $69c3: $01 $01 $01
    ld [bc], a                                    ; $69c6: $02
    ld [bc], a                                    ; $69c7: $02
    ld [bc], a                                    ; $69c8: $02
    inc bc                                        ; $69c9: $03
    inc bc                                        ; $69ca: $03
    inc bc                                        ; $69cb: $03
    inc bc                                        ; $69cc: $03
    inc b                                         ; $69cd: $04
    inc b                                         ; $69ce: $04
    dec b                                         ; $69cf: $05
    dec b                                         ; $69d0: $05
    dec b                                         ; $69d1: $05
    dec b                                         ; $69d2: $05
    ld bc, $0101                                  ; $69d3: $01 $01 $01
    ld bc, $0201                                  ; $69d6: $01 $01 $02
    ld [bc], a                                    ; $69d9: $02
    ld [bc], a                                    ; $69da: $02
    ld [bc], a                                    ; $69db: $02
    ld [bc], a                                    ; $69dc: $02
    inc bc                                        ; $69dd: $03
    inc bc                                        ; $69de: $03
    inc b                                         ; $69df: $04
    dec b                                         ; $69e0: $05
    dec b                                         ; $69e1: $05
    dec b                                         ; $69e2: $05
    ld bc, $0101                                  ; $69e3: $01 $01 $01
    ld bc, $0101                                  ; $69e6: $01 $01 $01
    ld bc, $0202                                  ; $69e9: $01 $02 $02
    ld [bc], a                                    ; $69ec: $02
    ld [bc], a                                    ; $69ed: $02
    ld [bc], a                                    ; $69ee: $02
    inc bc                                        ; $69ef: $03
    dec b                                         ; $69f0: $05
    dec b                                         ; $69f1: $05
    dec b                                         ; $69f2: $05
    dec b                                         ; $69f3: $05
    dec b                                         ; $69f4: $05
    dec b                                         ; $69f5: $05
    dec b                                         ; $69f6: $05
    dec b                                         ; $69f7: $05
    dec b                                         ; $69f8: $05
    dec b                                         ; $69f9: $05
    dec b                                         ; $69fa: $05
    dec b                                         ; $69fb: $05
    dec b                                         ; $69fc: $05
    dec b                                         ; $69fd: $05
    dec b                                         ; $69fe: $05
    dec b                                         ; $69ff: $05

    db $05

    dec b                                         ; $6a01: $05
    dec b                                         ; $6a02: $05
    ld bc, $0202                                  ; $6a03: $01 $02 $02
    ld [bc], a                                    ; $6a06: $02
    inc bc                                        ; $6a07: $03
    inc bc                                        ; $6a08: $03
    inc bc                                        ; $6a09: $03
    inc bc                                        ; $6a0a: $03
    inc b                                         ; $6a0b: $04
    inc b                                         ; $6a0c: $04
    inc b                                         ; $6a0d: $04
    inc b                                         ; $6a0e: $04

    db $05

    dec b                                         ; $6a10: $05
    dec b                                         ; $6a11: $05
    dec b                                         ; $6a12: $05
    ld [bc], a                                    ; $6a13: $02
    inc bc                                        ; $6a14: $03
    inc bc                                        ; $6a15: $03
    inc bc                                        ; $6a16: $03
    inc bc                                        ; $6a17: $03
    inc b                                         ; $6a18: $04
    inc b                                         ; $6a19: $04
    inc b                                         ; $6a1a: $04
    inc b                                         ; $6a1b: $04
    inc b                                         ; $6a1c: $04
    inc b                                         ; $6a1d: $04
    dec b                                         ; $6a1e: $05
    dec b                                         ; $6a1f: $05
    dec b                                         ; $6a20: $05
    dec b                                         ; $6a21: $05
    dec b                                         ; $6a22: $05
    ld bc, $0202                                  ; $6a23: $01 $02 $02
    ld [bc], a                                    ; $6a26: $02
    inc bc                                        ; $6a27: $03
    inc bc                                        ; $6a28: $03
    inc bc                                        ; $6a29: $03
    inc bc                                        ; $6a2a: $03
    inc b                                         ; $6a2b: $04
    inc b                                         ; $6a2c: $04
    inc b                                         ; $6a2d: $04
    inc b                                         ; $6a2e: $04

    db $05, $05

    dec b                                         ; $6a31: $05
    dec b                                         ; $6a32: $05
    ld bc, $0101                                  ; $6a33: $01 $01 $01
    ld [bc], a                                    ; $6a36: $02
    ld [bc], a                                    ; $6a37: $02
    ld [bc], a                                    ; $6a38: $02
    inc bc                                        ; $6a39: $03
    inc bc                                        ; $6a3a: $03
    inc bc                                        ; $6a3b: $03
    inc b                                         ; $6a3c: $04
    inc b                                         ; $6a3d: $04
    inc b                                         ; $6a3e: $04

    db $05

    dec b                                         ; $6a40: $05
    dec b                                         ; $6a41: $05
    dec b                                         ; $6a42: $05
    dec b                                         ; $6a43: $05
    dec b                                         ; $6a44: $05
    dec b                                         ; $6a45: $05
    dec b                                         ; $6a46: $05
    dec b                                         ; $6a47: $05
    dec b                                         ; $6a48: $05
    dec b                                         ; $6a49: $05
    dec b                                         ; $6a4a: $05
    dec b                                         ; $6a4b: $05
    dec b                                         ; $6a4c: $05
    dec b                                         ; $6a4d: $05
    dec b                                         ; $6a4e: $05
    dec b                                         ; $6a4f: $05
    dec b                                         ; $6a50: $05
    dec b                                         ; $6a51: $05
    dec b                                         ; $6a52: $05
    inc b                                         ; $6a53: $04
    inc b                                         ; $6a54: $04
    inc b                                         ; $6a55: $04
    inc b                                         ; $6a56: $04
    dec b                                         ; $6a57: $05
    dec b                                         ; $6a58: $05
    dec b                                         ; $6a59: $05
    dec b                                         ; $6a5a: $05
    dec b                                         ; $6a5b: $05
    dec b                                         ; $6a5c: $05
    dec b                                         ; $6a5d: $05
    dec b                                         ; $6a5e: $05

    db $05

    dec b                                         ; $6a60: $05
    dec b                                         ; $6a61: $05
    dec b                                         ; $6a62: $05
    ld [bc], a                                    ; $6a63: $02
    ld [bc], a                                    ; $6a64: $02
    inc bc                                        ; $6a65: $03
    inc bc                                        ; $6a66: $03
    inc bc                                        ; $6a67: $03
    inc b                                         ; $6a68: $04
    inc b                                         ; $6a69: $04
    inc b                                         ; $6a6a: $04
    inc b                                         ; $6a6b: $04
    dec b                                         ; $6a6c: $05
    dec b                                         ; $6a6d: $05
    dec b                                         ; $6a6e: $05

    db $05

    dec b                                         ; $6a70: $05
    dec b                                         ; $6a71: $05
    dec b                                         ; $6a72: $05
    ld bc, $0101                                  ; $6a73: $01 $01 $01
    ld [bc], a                                    ; $6a76: $02
    ld [bc], a                                    ; $6a77: $02
    ld [bc], a                                    ; $6a78: $02
    ld [bc], a                                    ; $6a79: $02
    inc bc                                        ; $6a7a: $03
    inc bc                                        ; $6a7b: $03
    inc bc                                        ; $6a7c: $03
    inc bc                                        ; $6a7d: $03
    inc b                                         ; $6a7e: $04
    inc b                                         ; $6a7f: $04
    dec b                                         ; $6a80: $05
    dec b                                         ; $6a81: $05
    dec b                                         ; $6a82: $05
    ld [bc], a                                    ; $6a83: $02
    ld [bc], a                                    ; $6a84: $02
    ld [bc], a                                    ; $6a85: $02
    inc bc                                        ; $6a86: $03
    inc bc                                        ; $6a87: $03
    inc bc                                        ; $6a88: $03
    inc bc                                        ; $6a89: $03
    inc b                                         ; $6a8a: $04
    inc b                                         ; $6a8b: $04
    inc b                                         ; $6a8c: $04
    inc b                                         ; $6a8d: $04
    dec b                                         ; $6a8e: $05
    dec b                                         ; $6a8f: $05
    dec b                                         ; $6a90: $05
    dec b                                         ; $6a91: $05
    dec b                                         ; $6a92: $05
    ld bc, $0101                                  ; $6a93: $01 $01 $01
    ld [bc], a                                    ; $6a96: $02
    ld [bc], a                                    ; $6a97: $02
    ld [bc], a                                    ; $6a98: $02
    inc bc                                        ; $6a99: $03
    inc bc                                        ; $6a9a: $03
    inc bc                                        ; $6a9b: $03
    inc bc                                        ; $6a9c: $03
    inc b                                         ; $6a9d: $04
    inc b                                         ; $6a9e: $04
    inc b                                         ; $6a9f: $04
    dec b                                         ; $6aa0: $05
    dec b                                         ; $6aa1: $05
    dec b                                         ; $6aa2: $05
    ld bc, $0101                                  ; $6aa3: $01 $01 $01
    ld bc, $0101                                  ; $6aa6: $01 $01 $01
    ld [bc], a                                    ; $6aa9: $02
    ld [bc], a                                    ; $6aaa: $02
    ld [bc], a                                    ; $6aab: $02
    inc bc                                        ; $6aac: $03
    inc bc                                        ; $6aad: $03
    inc bc                                        ; $6aae: $03
    inc b                                         ; $6aaf: $04
    dec b                                         ; $6ab0: $05
    dec b                                         ; $6ab1: $05
    dec b                                         ; $6ab2: $05
    dec b                                         ; $6ab3: $05
    dec b                                         ; $6ab4: $05
    dec b                                         ; $6ab5: $05
    dec b                                         ; $6ab6: $05
    dec b                                         ; $6ab7: $05
    dec b                                         ; $6ab8: $05
    dec b                                         ; $6ab9: $05
    dec b                                         ; $6aba: $05
    dec b                                         ; $6abb: $05
    dec b                                         ; $6abc: $05
    dec b                                         ; $6abd: $05
    dec b                                         ; $6abe: $05
    dec b                                         ; $6abf: $05
    dec b                                         ; $6ac0: $05
    dec b                                         ; $6ac1: $05
    dec b                                         ; $6ac2: $05
    ld [bc], a                                    ; $6ac3: $02
    inc bc                                        ; $6ac4: $03
    inc bc                                        ; $6ac5: $03
    inc bc                                        ; $6ac6: $03
    inc bc                                        ; $6ac7: $03
    inc bc                                        ; $6ac8: $03
    inc b                                         ; $6ac9: $04
    inc b                                         ; $6aca: $04
    inc b                                         ; $6acb: $04
    inc b                                         ; $6acc: $04
    inc b                                         ; $6acd: $04
    dec b                                         ; $6ace: $05

    db $05

    dec b                                         ; $6ad0: $05
    dec b                                         ; $6ad1: $05
    dec b                                         ; $6ad2: $05
    inc bc                                        ; $6ad3: $03
    inc bc                                        ; $6ad4: $03
    inc b                                         ; $6ad5: $04
    inc b                                         ; $6ad6: $04
    inc b                                         ; $6ad7: $04
    inc b                                         ; $6ad8: $04
    dec b                                         ; $6ad9: $05
    dec b                                         ; $6ada: $05
    dec b                                         ; $6adb: $05
    dec b                                         ; $6adc: $05
    dec b                                         ; $6add: $05
    dec b                                         ; $6ade: $05
    dec b                                         ; $6adf: $05
    dec b                                         ; $6ae0: $05
    dec b                                         ; $6ae1: $05
    dec b                                         ; $6ae2: $05
    ld [bc], a                                    ; $6ae3: $02
    inc bc                                        ; $6ae4: $03
    inc bc                                        ; $6ae5: $03
    inc bc                                        ; $6ae6: $03
    inc bc                                        ; $6ae7: $03
    inc bc                                        ; $6ae8: $03
    inc b                                         ; $6ae9: $04
    inc b                                         ; $6aea: $04
    inc b                                         ; $6aeb: $04
    inc b                                         ; $6aec: $04
    inc b                                         ; $6aed: $04
    dec b                                         ; $6aee: $05
    dec b                                         ; $6aef: $05
    dec b                                         ; $6af0: $05
    dec b                                         ; $6af1: $05
    dec b                                         ; $6af2: $05
    ld [bc], a                                    ; $6af3: $02
    ld [bc], a                                    ; $6af4: $02
    ld [bc], a                                    ; $6af5: $02
    ld [bc], a                                    ; $6af6: $02
    inc bc                                        ; $6af7: $03
    inc bc                                        ; $6af8: $03
    inc bc                                        ; $6af9: $03
    inc b                                         ; $6afa: $04
    inc b                                         ; $6afb: $04
    inc b                                         ; $6afc: $04
    inc b                                         ; $6afd: $04
    dec b                                         ; $6afe: $05

    db $05

    dec b                                         ; $6b00: $05
    dec b                                         ; $6b01: $05
    dec b                                         ; $6b02: $05

Call_010_6b03:
    push de                                       ; $6b03: $d5
    ld a, [$d4cc]                                 ; $6b04: $fa $cc $d4
    ld e, a                                       ; $6b07: $5f
    ld a, [$d329]                                 ; $6b08: $fa $29 $d3
    ld d, a                                       ; $6b0b: $57
    ld a, [$d4ca]                                 ; $6b0c: $fa $ca $d4
    rst $18                                       ; $6b0f: $df

    db $74, $02

    pop de                                        ; $6b12: $d1
    push hl                                       ; $6b13: $e5
    ld hl, $d333                                  ; $6b14: $21 $33 $d3
    bit 0, [hl]                                   ; $6b17: $cb $46
    jr z, jr_010_6b1d                             ; $6b19: $28 $02

    cpl                                           ; $6b1b: $2f
    inc a                                         ; $6b1c: $3c

jr_010_6b1d:
    pop hl                                        ; $6b1d: $e1
    ret                                           ; $6b1e: $c9


Call_010_6b1f:
    ld a, [$d44f]                                 ; $6b1f: $fa $4f $d4
    ld hl, $d333                                  ; $6b22: $21 $33 $d3
    bit 0, [hl]                                   ; $6b25: $cb $46
    jr z, jr_010_6b2b                             ; $6b27: $28 $02

    cpl                                           ; $6b29: $2f
    inc a                                         ; $6b2a: $3c

jr_010_6b2b:
    bit 7, a                                      ; $6b2b: $cb $7f
    jr z, jr_010_6b38                             ; $6b2d: $28 $09

    cp $f2                                        ; $6b2f: $fe $f2
    jr nc, jr_010_6b3e                            ; $6b31: $30 $0b

    ld a, $f2                                     ; $6b33: $3e $f2
    jp Jump_010_6b3e                              ; $6b35: $c3 $3e $6b


jr_010_6b38:
    cp $0e                                        ; $6b38: $fe $0e
    jr c, jr_010_6b3e                             ; $6b3a: $38 $02

    ld a, $0e                                     ; $6b3c: $3e $0e

Jump_010_6b3e:
jr_010_6b3e:
    push af                                       ; $6b3e: $f5
    ld a, [$d321]                                 ; $6b3f: $fa $21 $d3
    and $07                                       ; $6b42: $e6 $07
    add a                                         ; $6b44: $87
    add $5b                                       ; $6b45: $c6 $5b
    ld l, a                                       ; $6b47: $6f
    adc $6b                                       ; $6b48: $ce $6b
    sub l                                         ; $6b4a: $95
    ld h, a                                       ; $6b4b: $67
    ld a, [hl+]                                   ; $6b4c: $2a
    ld h, [hl]                                    ; $6b4d: $66
    ld l, a                                       ; $6b4e: $6f
    pop af                                        ; $6b4f: $f1
    add $0e                                       ; $6b50: $c6 $0e
    srl a                                         ; $6b52: $cb $3f
    add l                                         ; $6b54: $85
    ld l, a                                       ; $6b55: $6f
    jr nc, jr_010_6b59                            ; $6b56: $30 $01

    inc h                                         ; $6b58: $24

jr_010_6b59:
    ld a, [hl]                                    ; $6b59: $7e
    ret                                           ; $6b5a: $c9


    ld l, l                                       ; $6b5b: $6d
    ld l, e                                       ; $6b5c: $6b
    ld a, h                                       ; $6b5d: $7c
    ld l, e                                       ; $6b5e: $6b

    db $8b, $6b, $9a, $6b, $a9, $6b, $b8, $6b

    cp b                                          ; $6b67: $b8
    ld l, e                                       ; $6b68: $6b
    cp b                                          ; $6b69: $b8
    ld l, e                                       ; $6b6a: $6b
    cp b                                          ; $6b6b: $b8
    ld l, e                                       ; $6b6c: $6b
    add hl, bc                                    ; $6b6d: $09
    add hl, bc                                    ; $6b6e: $09
    add hl, bc                                    ; $6b6f: $09
    add hl, bc                                    ; $6b70: $09
    add hl, bc                                    ; $6b71: $09
    add hl, bc                                    ; $6b72: $09
    add hl, bc                                    ; $6b73: $09
    nop                                           ; $6b74: $00
    rst $30                                       ; $6b75: $f7
    rst $30                                       ; $6b76: $f7
    rst $30                                       ; $6b77: $f7
    rst $30                                       ; $6b78: $f7
    rst $30                                       ; $6b79: $f7
    rst $30                                       ; $6b7a: $f7
    rst $30                                       ; $6b7b: $f7
    add hl, bc                                    ; $6b7c: $09
    add hl, bc                                    ; $6b7d: $09
    add hl, bc                                    ; $6b7e: $09
    add hl, bc                                    ; $6b7f: $09
    add hl, bc                                    ; $6b80: $09
    add hl, bc                                    ; $6b81: $09
    ld [bc], a                                    ; $6b82: $02
    nop                                           ; $6b83: $00
    cp $f7                                        ; $6b84: $fe $f7
    rst $30                                       ; $6b86: $f7
    rst $30                                       ; $6b87: $f7
    rst $30                                       ; $6b88: $f7
    rst $30                                       ; $6b89: $f7
    rst $30                                       ; $6b8a: $f7
    add hl, bc                                    ; $6b8b: $09
    add hl, bc                                    ; $6b8c: $09
    add hl, bc                                    ; $6b8d: $09
    add hl, bc                                    ; $6b8e: $09
    add hl, bc                                    ; $6b8f: $09
    inc b                                         ; $6b90: $04

    db $02, $00

    cp $fc                                        ; $6b93: $fe $fc
    rst $30                                       ; $6b95: $f7
    rst $30                                       ; $6b96: $f7
    rst $30                                       ; $6b97: $f7
    rst $30                                       ; $6b98: $f7
    rst $30                                       ; $6b99: $f7
    add hl, bc                                    ; $6b9a: $09
    add hl, bc                                    ; $6b9b: $09
    add hl, bc                                    ; $6b9c: $09
    add hl, bc                                    ; $6b9d: $09
    inc b                                         ; $6b9e: $04
    ld [bc], a                                    ; $6b9f: $02

    db $01, $00

    rst $38                                       ; $6ba2: $ff
    cp $fc                                        ; $6ba3: $fe $fc
    rst $30                                       ; $6ba5: $f7
    rst $30                                       ; $6ba6: $f7
    rst $30                                       ; $6ba7: $f7
    rst $30                                       ; $6ba8: $f7
    add hl, bc                                    ; $6ba9: $09
    add hl, bc                                    ; $6baa: $09
    add hl, bc                                    ; $6bab: $09
    inc b                                         ; $6bac: $04
    inc bc                                        ; $6bad: $03

    db $02, $01, $00, $ff

    cp $fd                                        ; $6bb2: $fe $fd
    db $fc                                        ; $6bb4: $fc
    rst $30                                       ; $6bb5: $f7
    rst $30                                       ; $6bb6: $f7

    db $f7

    add hl, bc                                    ; $6bb8: $09
    add hl, bc                                    ; $6bb9: $09
    dec b                                         ; $6bba: $05
    inc b                                         ; $6bbb: $04
    inc bc                                        ; $6bbc: $03
    ld [bc], a                                    ; $6bbd: $02
    db $01                                        ; $6bbe: $01

    db $00

    rst $38                                       ; $6bc0: $ff
    cp $fd                                        ; $6bc1: $fe $fd
    db $fc                                        ; $6bc3: $fc
    ei                                            ; $6bc4: $fb
    rst $30                                       ; $6bc5: $f7
    rst $30                                       ; $6bc6: $f7

Call_010_6bc7:
    push hl                                       ; $6bc7: $e5
    push de                                       ; $6bc8: $d5
    call Call_010_6b1f                            ; $6bc9: $cd $1f $6b
    ld [$c9fd], a                                 ; $6bcc: $ea $fd $c9
    add $09                                       ; $6bcf: $c6 $09
    add $dc                                       ; $6bd1: $c6 $dc
    ld l, a                                       ; $6bd3: $6f
    adc $6b                                       ; $6bd4: $ce $6b
    sub l                                         ; $6bd6: $95
    ld h, a                                       ; $6bd7: $67
    ld a, [hl]                                    ; $6bd8: $7e
    pop de                                        ; $6bd9: $d1
    pop hl                                        ; $6bda: $e1
    ret                                           ; $6bdb: $c9


    db $33

    ld h, [hl]                                    ; $6bdd: $66
    add b                                         ; $6bde: $80
    sbc c                                         ; $6bdf: $99
    or e                                          ; $6be0: $b3
    call z, $f3e6                                 ; $6be1: $cc $e6 $f3

    db $fa, $00, $fa, $f3

    and $cc                                       ; $6be8: $e6 $cc
    or e                                          ; $6bea: $b3
    sbc c                                         ; $6beb: $99
    add b                                         ; $6bec: $80
    ld h, [hl]                                    ; $6bed: $66
    inc sp                                        ; $6bee: $33

Call_010_6bef:
    push hl                                       ; $6bef: $e5
    ld a, [$d4cb]                                 ; $6bf0: $fa $cb $d4
    add $04                                       ; $6bf3: $c6 $04
    and $0f                                       ; $6bf5: $e6 $0f
    add $08                                       ; $6bf7: $c6 $08
    ld l, a                                       ; $6bf9: $6f
    adc $6c                                       ; $6bfa: $ce $6c
    sub l                                         ; $6bfc: $95
    ld h, a                                       ; $6bfd: $67
    ld a, [hl]                                    ; $6bfe: $7e
    pop hl                                        ; $6bff: $e1
    or a                                          ; $6c00: $b7
    jr z, jr_010_6c06                             ; $6c01: $28 $03

    call Call_000_0bce                            ; $6c03: $cd $ce $0b

jr_010_6c06:
    add hl, hl                                    ; $6c06: $29
    ret                                           ; $6c07: $c9


    nop                                           ; $6c08: $00
    ldh [$c0], a                                  ; $6c09: $e0 $c0
    and b                                         ; $6c0b: $a0
    add b                                         ; $6c0c: $80

    db $60

    ld b, b                                       ; $6c0e: $40

    db $20

    dec c                                         ; $6c10: $0d
    ld a, [bc]                                    ; $6c11: $0a
    ld [$0406], sp                                ; $6c12: $08 $06 $04
    ld [bc], a                                    ; $6c15: $02
    db $01                                        ; $6c16: $01
    db $01                                        ; $6c17: $01

Call_010_6c18:
    push hl                                       ; $6c18: $e5
    ld a, b                                       ; $6c19: $78
    add $09                                       ; $6c1a: $c6 $09
    add a                                         ; $6c1c: $87
    add $2e                                       ; $6c1d: $c6 $2e
    ld l, a                                       ; $6c1f: $6f
    adc $6c                                       ; $6c20: $ce $6c
    sub l                                         ; $6c22: $95
    ld h, a                                       ; $6c23: $67
    ld a, [hl+]                                   ; $6c24: $2a
    ld h, [hl]                                    ; $6c25: $66
    ld l, a                                       ; $6c26: $6f
    call Call_010_6bef                            ; $6c27: $cd $ef $6b
    ld d, h                                       ; $6c2a: $54
    ld e, l                                       ; $6c2b: $5d
    pop hl                                        ; $6c2c: $e1
    ret                                           ; $6c2d: $c9


    db $c6, $11

    adc [hl]                                      ; $6c30: $8e
    inc bc                                        ; $6c31: $03
    adc [hl]                                      ; $6c32: $8e
    inc bc                                        ; $6c33: $03
    adc [hl]                                      ; $6c34: $8e
    inc bc                                        ; $6c35: $03
    adc [hl]                                      ; $6c36: $8e
    inc bc                                        ; $6c37: $03
    ld l, h                                       ; $6c38: $6c
    ld bc, $00b6                                  ; $6c39: $01 $b6 $00
    ld e, e                                       ; $6c3c: $5b
    nop                                           ; $6c3d: $00

    db $24, $00, $00, $00, $a5, $ff, $dc, $ff

    ld c, d                                       ; $6c46: $4a
    rst $38                                       ; $6c47: $ff
    ld [hl], d                                    ; $6c48: $72
    db $fc                                        ; $6c49: $fc
    ld [hl], d                                    ; $6c4a: $72
    db $fc                                        ; $6c4b: $fc
    ld [hl], d                                    ; $6c4c: $72
    db $fc                                        ; $6c4d: $fc
    ld [hl], d                                    ; $6c4e: $72
    db $fc                                        ; $6c4f: $fc
    ld [hl], d                                    ; $6c50: $72
    db $fc                                        ; $6c51: $fc
    db $e4                                        ; $6c52: $e4
    db $f8                                        ; $6c53: $f8

Call_010_6c54:
    push hl                                       ; $6c54: $e5
    ld a, b                                       ; $6c55: $78
    add $09                                       ; $6c56: $c6 $09
    add a                                         ; $6c58: $87
    add $79                                       ; $6c59: $c6 $79
    ld l, a                                       ; $6c5b: $6f
    adc $6c                                       ; $6c5c: $ce $6c
    sub l                                         ; $6c5e: $95
    ld h, a                                       ; $6c5f: $67
    ld a, [hl+]                                   ; $6c60: $2a
    ld h, [hl]                                    ; $6c61: $66
    ld l, a                                       ; $6c62: $6f
    call Call_010_6bef                            ; $6c63: $cd $ef $6b
    ld a, [$d4cd]                                 ; $6c66: $fa $cd $d4
    cp $0c                                        ; $6c69: $fe $0c
    jr nz, jr_010_6c75                            ; $6c6b: $20 $08

    push hl                                       ; $6c6d: $e5
    ld a, $80                                     ; $6c6e: $3e $80
    call Call_000_0bce                            ; $6c70: $cd $ce $0b
    pop de                                        ; $6c73: $d1
    add hl, de                                    ; $6c74: $19

jr_010_6c75:
    ld d, h                                       ; $6c75: $54
    ld e, l                                       ; $6c76: $5d
    pop hl                                        ; $6c77: $e1
    ret                                           ; $6c78: $c9


    db $00, $00

    adc [hl]                                      ; $6c7b: $8e
    inc bc                                        ; $6c7c: $03
    adc [hl]                                      ; $6c7d: $8e
    inc bc                                        ; $6c7e: $03
    adc [hl]                                      ; $6c7f: $8e
    inc bc                                        ; $6c80: $03
    adc [hl]                                      ; $6c81: $8e
    inc bc                                        ; $6c82: $03
    ld de, $b601                                  ; $6c83: $11 $01 $b6
    nop                                           ; $6c86: $00
    ld e, e                                       ; $6c87: $5b
    nop                                           ; $6c88: $00

    db $00, $00, $00, $00, $00, $00, $a5, $ff

    ld c, d                                       ; $6c91: $4a
    rst $38                                       ; $6c92: $ff
    rst $28                                       ; $6c93: $ef
    cp $72                                        ; $6c94: $fe $72
    db $fc                                        ; $6c96: $fc
    ld [hl], d                                    ; $6c97: $72
    db $fc                                        ; $6c98: $fc
    ld [hl], d                                    ; $6c99: $72
    db $fc                                        ; $6c9a: $fc
    ld [hl], d                                    ; $6c9b: $72
    db $fc                                        ; $6c9c: $fc
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00

Call_010_6c9f:
    push hl                                       ; $6c9f: $e5
    ld a, b                                       ; $6ca0: $78
    add $09                                       ; $6ca1: $c6 $09
    add a                                         ; $6ca3: $87
    add $b5                                       ; $6ca4: $c6 $b5
    ld l, a                                       ; $6ca6: $6f
    adc $6c                                       ; $6ca7: $ce $6c
    sub l                                         ; $6ca9: $95
    ld h, a                                       ; $6caa: $67
    ld a, [hl+]                                   ; $6cab: $2a
    ld h, [hl]                                    ; $6cac: $66
    ld l, a                                       ; $6cad: $6f
    call Call_010_6bef                            ; $6cae: $cd $ef $6b
    ld d, h                                       ; $6cb1: $54
    ld e, l                                       ; $6cb2: $5d
    pop hl                                        ; $6cb3: $e1
    ret                                           ; $6cb4: $c9


    db $00, $00

    add b                                         ; $6cb7: $80
    ld [bc], a                                    ; $6cb8: $02
    add b                                         ; $6cb9: $80
    ld [bc], a                                    ; $6cba: $02
    add b                                         ; $6cbb: $80
    ld [bc], a                                    ; $6cbc: $02
    add b                                         ; $6cbd: $80
    ld [bc], a                                    ; $6cbe: $02
    nop                                           ; $6cbf: $00
    ld [bc], a                                    ; $6cc0: $02
    add b                                         ; $6cc1: $80
    ld bc, $0100                                  ; $6cc2: $01 $00 $01

    db $80, $00, $00, $00, $80, $ff, $00, $ff

    add b                                         ; $6ccd: $80
    cp $00                                        ; $6cce: $fe $00
    cp $80                                        ; $6cd0: $fe $80
    db $fd                                        ; $6cd2: $fd
    add b                                         ; $6cd3: $80
    db $fd                                        ; $6cd4: $fd
    add b                                         ; $6cd5: $80
    db $fd                                        ; $6cd6: $fd
    add b                                         ; $6cd7: $80
    db $fd                                        ; $6cd8: $fd
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00

Call_010_6cdb:
    ld a, [$d329]                                 ; $6cdb: $fa $29 $d3
    cp $0d                                        ; $6cde: $fe $0d
    jp z, Jump_010_6dae                           ; $6ce0: $ca $ae $6d

    call Call_010_68b1                            ; $6ce3: $cd $b1 $68
    push hl                                       ; $6ce6: $e5
    call Call_010_65ef                            ; $6ce7: $cd $ef $65
    ld a, d                                       ; $6cea: $7a
    add e                                         ; $6ceb: $83
    push af                                       ; $6cec: $f5
    cp $a0                                        ; $6ced: $fe $a0
    jr c, jr_010_6d0c                             ; $6cef: $38 $1b

    ld a, [$d32a]                                 ; $6cf1: $fa $2a $d3
    cp $02                                        ; $6cf4: $fe $02
    jr nc, jr_010_6d0c                            ; $6cf6: $30 $14

    ld a, [$d450]                                 ; $6cf8: $fa $50 $d4
    cp $3c                                        ; $6cfb: $fe $3c
    jr nz, jr_010_6d0c                            ; $6cfd: $20 $0d

    ld a, [$d44f]                                 ; $6cff: $fa $4f $d4
    or a                                          ; $6d02: $b7
    jr nz, jr_010_6d0c                            ; $6d03: $20 $07

    push hl                                       ; $6d05: $e5
    ld hl, $d48e                                  ; $6d06: $21 $8e $d4
    set 3, [hl]                                   ; $6d09: $cb $de
    pop hl                                        ; $6d0b: $e1

jr_010_6d0c:
    pop af                                        ; $6d0c: $f1
    pop hl                                        ; $6d0d: $e1
    cp $c6                                        ; $6d0e: $fe $c6
    jr z, jr_010_6d22                             ; $6d10: $28 $10

    push hl                                       ; $6d12: $e5
    ld hl, HeaderROMSize                          ; $6d13: $21 $48 $01
    call Call_000_08b9                            ; $6d16: $cd $b9 $08
    ld de, $0080                                  ; $6d19: $11 $80 $00
    add hl, de                                    ; $6d1c: $19
    ld a, h                                       ; $6d1d: $7c
    pop hl                                        ; $6d1e: $e1
    call Call_000_0bec                            ; $6d1f: $cd $ec $0b

jr_010_6d22:
    call Call_010_6bc7                            ; $6d22: $cd $c7 $6b
    or a                                          ; $6d25: $b7
    jr z, jr_010_6d2b                             ; $6d26: $28 $03

    call Call_000_0bec                            ; $6d28: $cd $ec $0b

jr_010_6d2b:
    ld a, [$d450]                                 ; $6d2b: $fa $50 $d4
    call Call_010_6865                            ; $6d2e: $cd $65 $68
    ld de, $0010                                  ; $6d31: $11 $10 $00
    add hl, de                                    ; $6d34: $19
    srl h                                         ; $6d35: $cb $3c
    rr l                                          ; $6d37: $cb $1d
    srl h                                         ; $6d39: $cb $3c
    rr l                                          ; $6d3b: $cb $1d
    srl h                                         ; $6d3d: $cb $3c
    rr l                                          ; $6d3f: $cb $1d
    srl h                                         ; $6d41: $cb $3c
    rr l                                          ; $6d43: $cb $1d
    srl h                                         ; $6d45: $cb $3c
    rr l                                          ; $6d47: $cb $1d
    call Call_010_6b03                            ; $6d49: $cd $03 $6b
    rst $18                                       ; $6d4c: $df

    db $22, $08

    ld a, [$d329]                                 ; $6d4f: $fa $29 $d3
    ld c, a                                       ; $6d52: $4f
    ld d, h                                       ; $6d53: $54
    ld e, l                                       ; $6d54: $5d
    push de                                       ; $6d55: $d5
    ld a, [$d4c8]                                 ; $6d56: $fa $c8 $d4
    add $08                                       ; $6d59: $c6 $08
    and $0f                                       ; $6d5b: $e6 $0f
    add a                                         ; $6d5d: $87
    ld h, $00                                     ; $6d5e: $26 $00
    ld l, a                                       ; $6d60: $6f
    ld de, $6d6a                                  ; $6d61: $11 $6a $6d
    add hl, de                                    ; $6d64: $19
    ld a, [hl+]                                   ; $6d65: $2a
    ld h, [hl]                                    ; $6d66: $66
    ld l, a                                       ; $6d67: $6f
    pop de                                        ; $6d68: $d1
    jp hl                                         ; $6d69: $e9


    adc d                                         ; $6d6a: $8a

jr_010_6d6b:
    ld l, l                                       ; $6d6b: $6d
    adc d                                         ; $6d6c: $8a
    ld l, l                                       ; $6d6d: $6d
    adc d                                         ; $6d6e: $8a
    ld l, l                                       ; $6d6f: $6d
    adc d                                         ; $6d70: $8a
    ld l, l                                       ; $6d71: $6d
    adc d                                         ; $6d72: $8a
    ld l, l                                       ; $6d73: $6d
    adc [hl]                                      ; $6d74: $8e
    ld l, l                                       ; $6d75: $6d
    sub d                                         ; $6d76: $92
    ld l, l                                       ; $6d77: $6d

    db $96, $6d, $9a, $6d

    sbc [hl]                                      ; $6d7c: $9e
    ld l, l                                       ; $6d7d: $6d

    db $a2, $6d

    and [hl]                                      ; $6d80: $a6
    ld l, l                                       ; $6d81: $6d
    xor d                                         ; $6d82: $aa
    ld l, l                                       ; $6d83: $6d
    xor d                                         ; $6d84: $aa
    ld l, l                                       ; $6d85: $6d
    xor d                                         ; $6d86: $aa
    ld l, l                                       ; $6d87: $6d
    xor d                                         ; $6d88: $aa
    ld l, l                                       ; $6d89: $6d
    rst $18                                       ; $6d8a: $df
    inc b                                         ; $6d8b: $04
    add hl, sp                                    ; $6d8c: $39
    ret                                           ; $6d8d: $c9


    rst $18                                       ; $6d8e: $df
    ld [bc], a                                    ; $6d8f: $02
    add hl, sp                                    ; $6d90: $39
    ret                                           ; $6d91: $c9


    rst $18                                       ; $6d92: $df
    nop                                           ; $6d93: $00
    add hl, sp                                    ; $6d94: $39
    ret                                           ; $6d95: $c9


    rst $18                                       ; $6d96: $df

    db $02, $38

    ret                                           ; $6d99: $c9


    rst $18                                       ; $6d9a: $df

    db $00, $38

    ret                                           ; $6d9d: $c9


    rst $18                                       ; $6d9e: $df
    inc b                                         ; $6d9f: $04
    jr c, jr_010_6d6b                             ; $6da0: $38 $c9

    rst $18                                       ; $6da2: $df

    db $00, $3a

    ret                                           ; $6da5: $c9


    rst $18                                       ; $6da6: $df
    ld [bc], a                                    ; $6da7: $02
    ld a, [hl-]                                   ; $6da8: $3a
    ret                                           ; $6da9: $c9


    rst $18                                       ; $6daa: $df
    inc b                                         ; $6dab: $04
    ld a, [hl-]                                   ; $6dac: $3a
    ret                                           ; $6dad: $c9


Jump_010_6dae:
    ld a, [$d32b]                                 ; $6dae: $fa $2b $d3
    and $03                                       ; $6db1: $e6 $03
    add a                                         ; $6db3: $87
    ld hl, $6dcd                                  ; $6db4: $21 $cd $6d
    add l                                         ; $6db7: $85
    ld l, a                                       ; $6db8: $6f
    jr nc, jr_010_6dbc                            ; $6db9: $30 $01

    inc h                                         ; $6dbb: $24

jr_010_6dbc:
    ld a, [hl+]                                   ; $6dbc: $2a
    ld h, [hl]                                    ; $6dbd: $66
    ld l, a                                       ; $6dbe: $6f
    ld a, [$d450]                                 ; $6dbf: $fa $50 $d4
    and $fe                                       ; $6dc2: $e6 $fe
    add l                                         ; $6dc4: $85
    ld l, a                                       ; $6dc5: $6f
    jr nc, jr_010_6dc9                            ; $6dc6: $30 $01

    inc h                                         ; $6dc8: $24

jr_010_6dc9:
    ld a, [hl+]                                   ; $6dc9: $2a
    ld h, [hl]                                    ; $6dca: $66
    ld l, a                                       ; $6dcb: $6f
    ret                                           ; $6dcc: $c9


    db $d5, $6d

    inc de                                        ; $6dcf: $13
    ld l, [hl]                                    ; $6dd0: $6e

    db $51, $6e

    ld d, c                                       ; $6dd3: $51
    ld l, [hl]                                    ; $6dd4: $6e
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    dec b                                         ; $6dd7: $05
    nop                                           ; $6dd8: $00
    db $08                                        ; $6dd9: $08
    nop                                           ; $6dda: $00

    db $0b, $00

    ld c, $00                                     ; $6ddd: $0e $00
    ld de, $1400                                  ; $6ddf: $11 $00 $14
    nop                                           ; $6de2: $00
    ld d, $00                                     ; $6de3: $16 $00

    db $19, $00

    inc e                                         ; $6de7: $1c
    nop                                           ; $6de8: $00
    ld e, $00                                     ; $6de9: $1e $00
    ld hl, $2300                                  ; $6deb: $21 $00 $23
    nop                                           ; $6dee: $00
    ld h, $00                                     ; $6def: $26 $00
    add hl, hl                                    ; $6df1: $29
    nop                                           ; $6df2: $00
    dec hl                                        ; $6df3: $2b
    nop                                           ; $6df4: $00
    ld l, $00                                     ; $6df5: $2e $00
    jr nc, jr_010_6df9                            ; $6df7: $30 $00

jr_010_6df9:
    inc sp                                        ; $6df9: $33
    nop                                           ; $6dfa: $00
    dec [hl]                                      ; $6dfb: $35
    nop                                           ; $6dfc: $00
    jr c, jr_010_6dff                             ; $6dfd: $38 $00

jr_010_6dff:
    dec sp                                        ; $6dff: $3b
    nop                                           ; $6e00: $00
    dec a                                         ; $6e01: $3d
    nop                                           ; $6e02: $00
    ld b, b                                       ; $6e03: $40
    nop                                           ; $6e04: $00
    ld b, d                                       ; $6e05: $42
    nop                                           ; $6e06: $00

    db $45, $00

    ld b, a                                       ; $6e09: $47
    nop                                           ; $6e0a: $00
    ld c, d                                       ; $6e0b: $4a
    nop                                           ; $6e0c: $00
    ld c, h                                       ; $6e0d: $4c
    nop                                           ; $6e0e: $00
    ld c, a                                       ; $6e0f: $4f
    nop                                           ; $6e10: $00

    db $52, $00

    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    inc c                                         ; $6e15: $0c
    nop                                           ; $6e16: $00
    dec d                                         ; $6e17: $15
    nop                                           ; $6e18: $00
    ld e, $00                                     ; $6e19: $1e $00
    daa                                           ; $6e1b: $27
    nop                                           ; $6e1c: $00
    cpl                                           ; $6e1d: $2f
    nop                                           ; $6e1e: $00
    jr c, jr_010_6e21                             ; $6e1f: $38 $00

jr_010_6e21:
    ld b, b                                       ; $6e21: $40
    nop                                           ; $6e22: $00
    ld c, c                                       ; $6e23: $49
    nop                                           ; $6e24: $00
    ld d, d                                       ; $6e25: $52
    nop                                           ; $6e26: $00
    ld e, d                                       ; $6e27: $5a
    nop                                           ; $6e28: $00
    ld h, d                                       ; $6e29: $62
    nop                                           ; $6e2a: $00
    ld l, e                                       ; $6e2b: $6b
    nop                                           ; $6e2c: $00
    ld [hl], e                                    ; $6e2d: $73
    nop                                           ; $6e2e: $00
    ld a, h                                       ; $6e2f: $7c
    nop                                           ; $6e30: $00
    add h                                         ; $6e31: $84
    nop                                           ; $6e32: $00
    adc h                                         ; $6e33: $8c
    nop                                           ; $6e34: $00
    sub h                                         ; $6e35: $94
    nop                                           ; $6e36: $00
    sbc l                                         ; $6e37: $9d
    nop                                           ; $6e38: $00
    and l                                         ; $6e39: $a5
    nop                                           ; $6e3a: $00
    xor [hl]                                      ; $6e3b: $ae
    nop                                           ; $6e3c: $00
    or [hl]                                       ; $6e3d: $b6
    nop                                           ; $6e3e: $00
    cp [hl]                                       ; $6e3f: $be
    nop                                           ; $6e40: $00
    rst $00                                       ; $6e41: $c7
    nop                                           ; $6e42: $00
    rst $08                                       ; $6e43: $cf
    nop                                           ; $6e44: $00
    rst $10                                       ; $6e45: $d7
    nop                                           ; $6e46: $00
    rst $18                                       ; $6e47: $df
    nop                                           ; $6e48: $00
    add sp, $00                                   ; $6e49: $e8 $00
    ldh a, [rP1]                                  ; $6e4b: $f0 $00
    ld hl, sp+$00                                 ; $6e4d: $f8 $00
    nop                                           ; $6e4f: $00
    ld bc, $0000                                  ; $6e50: $01 $00 $00
    dec d                                         ; $6e53: $15
    nop                                           ; $6e54: $00
    daa                                           ; $6e55: $27
    nop                                           ; $6e56: $00
    jr c, jr_010_6e59                             ; $6e57: $38 $00

jr_010_6e59:
    ld c, c                                       ; $6e59: $49
    nop                                           ; $6e5a: $00
    ld e, d                                       ; $6e5b: $5a
    nop                                           ; $6e5c: $00
    ld l, e                                       ; $6e5d: $6b
    nop                                           ; $6e5e: $00
    ld a, h                                       ; $6e5f: $7c
    nop                                           ; $6e60: $00
    adc h                                         ; $6e61: $8c
    nop                                           ; $6e62: $00
    sbc l                                         ; $6e63: $9d
    nop                                           ; $6e64: $00
    xor [hl]                                      ; $6e65: $ae
    nop                                           ; $6e66: $00
    cp [hl]                                       ; $6e67: $be
    nop                                           ; $6e68: $00
    rst $08                                       ; $6e69: $cf
    nop                                           ; $6e6a: $00
    rst $18                                       ; $6e6b: $df
    nop                                           ; $6e6c: $00
    ldh a, [rP1]                                  ; $6e6d: $f0 $00
    nop                                           ; $6e6f: $00
    ld bc, $0111                                  ; $6e70: $01 $11 $01
    ld [hl+], a                                   ; $6e73: $22
    ld bc, $0132                                  ; $6e74: $01 $32 $01
    ld b, e                                       ; $6e77: $43
    ld bc, $0154                                  ; $6e78: $01 $54 $01
    ld h, h                                       ; $6e7b: $64
    ld bc, $0175                                  ; $6e7c: $01 $75 $01
    add l                                         ; $6e7f: $85
    ld bc, $0196                                  ; $6e80: $01 $96 $01
    and a                                         ; $6e83: $a7
    ld bc, $01b7                                  ; $6e84: $01 $b7 $01
    ret z                                         ; $6e87: $c8

    ld bc, $01d8                                  ; $6e88: $01 $d8 $01
    jp hl                                         ; $6e8b: $e9


    db $01                                        ; $6e8c: $01

    db $f9, $01

    ret                                           ; $6e8f: $c9


Jump_010_6e90:
jr_010_6e90:
    rst $08                                       ; $6e90: $cf
    ld b, b                                       ; $6e91: $40
    ld a, $07                                     ; $6e92: $3e $07
    call Call_000_2ed5                            ; $6e94: $cd $d5 $2e
    ld e, $c9                                     ; $6e97: $1e $c9

Call_010_6e99:
    xor a                                         ; $6e99: $af
    ld hl, $d4bb                                  ; $6e9a: $21 $bb $d4
    ld [hl+], a                                   ; $6e9d: $22
    ld [hl+], a                                   ; $6e9e: $22
    ld [hl+], a                                   ; $6e9f: $22
    ld [hl+], a                                   ; $6ea0: $22
    ld [$d4b9], a                                 ; $6ea1: $ea $b9 $d4
    ld [$d444], a                                 ; $6ea4: $ea $44 $d4

Jump_010_6ea7:
    call Call_000_2e3b                            ; $6ea7: $cd $3b $2e
    ld a, [$d402]                                 ; $6eaa: $fa $02 $d4
    ld b, a                                       ; $6ead: $47
    ld a, [$c329]                                 ; $6eae: $fa $29 $c3
    cp b                                          ; $6eb1: $b8
    jr z, jr_010_6eb6                             ; $6eb2: $28 $02

    jr nc, jr_010_6e90                            ; $6eb4: $30 $da

jr_010_6eb6:
    ld a, [$c32b]                                 ; $6eb6: $fa $2b $c3
    cp b                                          ; $6eb9: $b8
    jr z, jr_010_6e90                             ; $6eba: $28 $d4

    jr c, jr_010_6e90                             ; $6ebc: $38 $d2

    ld a, [$d405]                                 ; $6ebe: $fa $05 $d4
    ld b, a                                       ; $6ec1: $47
    ld a, [$c32a]                                 ; $6ec2: $fa $2a $c3
    cp b                                          ; $6ec5: $b8
    jr z, jr_010_6eca                             ; $6ec6: $28 $02

    jr nc, jr_010_6e90                            ; $6ec8: $30 $c6

jr_010_6eca:
    ld a, [$c32c]                                 ; $6eca: $fa $2c $c3
    dec a                                         ; $6ecd: $3d
    dec a                                         ; $6ece: $3d
    cp b                                          ; $6ecf: $b8
    jp z, Jump_010_6e90                           ; $6ed0: $ca $90 $6e

    jp c, Jump_010_6e90                           ; $6ed3: $da $90 $6e

    ld a, [$d443]                                 ; $6ed6: $fa $43 $d4
    cp $01                                        ; $6ed9: $fe $01
    jr nz, jr_010_6efd                            ; $6edb: $20 $20

    call Call_010_7122                            ; $6edd: $cd $22 $71
    or a                                          ; $6ee0: $b7
    jr z, jr_010_6f28                             ; $6ee1: $28 $45

    call Call_010_72e7                            ; $6ee3: $cd $e7 $72
    ld a, [$d408]                                 ; $6ee6: $fa $08 $d4
    or a                                          ; $6ee9: $b7
    jr nz, jr_010_6f28                            ; $6eea: $20 $3c

    ld a, [$d407]                                 ; $6eec: $fa $07 $d4
    cp $20                                        ; $6eef: $fe $20
    jr nc, jr_010_6f28                            ; $6ef1: $30 $35

    rst $18                                       ; $6ef3: $df

    db $04, $13

    ld a, $02                                     ; $6ef6: $3e $02
    ld [$d443], a                                 ; $6ef8: $ea $43 $d4
    jr jr_010_6f43                                ; $6efb: $18 $46

jr_010_6efd:
    ld a, [$d443]                                 ; $6efd: $fa $43 $d4
    cp $02                                        ; $6f00: $fe $02
    jr nz, jr_010_6f28                            ; $6f02: $20 $24

    call Call_010_72e7                            ; $6f04: $cd $e7 $72
    ld a, [$d408]                                 ; $6f07: $fa $08 $d4
    bit 7, a                                      ; $6f0a: $cb $7f
    jr nz, jr_010_6f18                            ; $6f0c: $20 $0a

    or a                                          ; $6f0e: $b7
    jr nz, jr_010_6f1e                            ; $6f0f: $20 $0d

    ld a, [$d407]                                 ; $6f11: $fa $07 $d4
    cp $20                                        ; $6f14: $fe $20
    jr nc, jr_010_6f1e                            ; $6f16: $30 $06

jr_010_6f18:
    call Call_010_7122                            ; $6f18: $cd $22 $71
    or a                                          ; $6f1b: $b7
    jr nz, jr_010_6f43                            ; $6f1c: $20 $25

jr_010_6f1e:
    rst $18                                       ; $6f1e: $df

    db $06, $13

    ld a, $01                                     ; $6f21: $3e $01
    ld [$d443], a                                 ; $6f23: $ea $43 $d4
    jr jr_010_6f43                                ; $6f26: $18 $1b

jr_010_6f28:
    call Call_010_5617                            ; $6f28: $cd $17 $56
    ld a, [$d443]                                 ; $6f2b: $fa $43 $d4
    cp c                                          ; $6f2e: $b9
    jr z, jr_010_6f43                             ; $6f2f: $28 $12

    push af                                       ; $6f31: $f5
    push bc                                       ; $6f32: $c5
    push de                                       ; $6f33: $d5
    push hl                                       ; $6f34: $e5
    rst $18                                       ; $6f35: $df

    db $04, $3b

    pop hl                                        ; $6f38: $e1
    pop de                                        ; $6f39: $d1
    pop bc                                        ; $6f3a: $c1
    pop af                                        ; $6f3b: $f1
    ld a, c                                       ; $6f3c: $79
    ld [$d443], a                                 ; $6f3d: $ea $43 $d4
    rst $18                                       ; $6f40: $df

    db $00, $13

jr_010_6f43:
    ld a, [$d443]                                 ; $6f43: $fa $43 $d4
    cp $02                                        ; $6f46: $fe $02
    jp nz, Jump_010_6f9e                          ; $6f48: $c2 $9e $6f

    call Call_010_7263                            ; $6f4b: $cd $63 $72
    or a                                          ; $6f4e: $b7
    jp nz, Jump_010_7052                          ; $6f4f: $c2 $52 $70

    ld hl, $d407                                  ; $6f52: $21 $07 $d4
    ld a, [hl+]                                   ; $6f55: $2a
    ld h, [hl]                                    ; $6f56: $66
    ld l, a                                       ; $6f57: $6f
    ld de, $fffc                                  ; $6f58: $11 $fc $ff
    add hl, de                                    ; $6f5b: $19
    bit 7, h                                      ; $6f5c: $cb $7c
    jp z, Jump_010_6ea7                           ; $6f5e: $ca $a7 $6e

    ld hl, $d43f                                  ; $6f61: $21 $3f $d4
    ld a, [hl+]                                   ; $6f64: $2a
    ld d, [hl]                                    ; $6f65: $56
    ld e, a                                       ; $6f66: $5f
    ld hl, $d404                                  ; $6f67: $21 $04 $d4
    ld a, [hl+]                                   ; $6f6a: $2a
    ld h, [hl]                                    ; $6f6b: $66
    ld l, a                                       ; $6f6c: $6f
    call Call_000_08ac                            ; $6f6d: $cd $ac $08
    push hl                                       ; $6f70: $e5
    ld hl, $d43d                                  ; $6f71: $21 $3d $d4
    ld a, [hl+]                                   ; $6f74: $2a
    ld d, [hl]                                    ; $6f75: $56
    ld e, a                                       ; $6f76: $5f
    ld hl, $d401                                  ; $6f77: $21 $01 $d4
    ld a, [hl+]                                   ; $6f7a: $2a
    ld h, [hl]                                    ; $6f7b: $66
    ld l, a                                       ; $6f7c: $6f
    call Call_000_08ac                            ; $6f7d: $cd $ac $08
    pop de                                        ; $6f80: $d1
    ld h, l                                       ; $6f81: $65
    ld l, $00                                     ; $6f82: $2e $00
    ld d, e                                       ; $6f84: $53
    ld e, $00                                     ; $6f85: $1e $00
    push de                                       ; $6f87: $d5
    ld d, h                                       ; $6f88: $54
    ld e, l                                       ; $6f89: $5d
    call Call_000_0c8e                            ; $6f8a: $cd $8e $0c
    pop de                                        ; $6f8d: $d1
    push hl                                       ; $6f8e: $e5
    ld h, d                                       ; $6f8f: $62
    ld l, e                                       ; $6f90: $6b
    call Call_000_0c8e                            ; $6f91: $cd $8e $0c
    pop de                                        ; $6f94: $d1
    add hl, de                                    ; $6f95: $19
    call Call_000_0f04                            ; $6f96: $cd $04 $0f
    cp $06                                        ; $6f99: $fe $06
    jp c, Jump_010_7048                           ; $6f9b: $da $48 $70

Jump_010_6f9e:
    call Call_010_7cab                            ; $6f9e: $cd $ab $7c
    or a                                          ; $6fa1: $b7
    jp nz, Jump_010_6ea7                          ; $6fa2: $c2 $a7 $6e

    ld hl, $d4d3                                  ; $6fa5: $21 $d3 $d4
    ld a, [hl]                                    ; $6fa8: $7e
    cp $28                                        ; $6fa9: $fe $28
    jp nc, Jump_010_7029                          ; $6fab: $d2 $29 $70

    ld a, [$d35f]                                 ; $6fae: $fa $5f $d3
    or a                                          ; $6fb1: $b7
    jp z, Jump_010_6ea7                           ; $6fb2: $ca $a7 $6e

    ld a, [$d367]                                 ; $6fb5: $fa $67 $d3
    bit 7, a                                      ; $6fb8: $cb $7f
    jp nz, Jump_010_6ea7                          ; $6fba: $c2 $a7 $6e

    ldh a, [$94]                                  ; $6fbd: $f0 $94
    bit 1, a                                      ; $6fbf: $cb $4f
    jp nz, Jump_010_7029                          ; $6fc1: $c2 $29 $70

    bit 0, a                                      ; $6fc4: $cb $47
    jp z, Jump_010_6ea7                           ; $6fc6: $ca $a7 $6e

    ld hl, $d361                                  ; $6fc9: $21 $61 $d3
    ld de, $d400                                  ; $6fcc: $11 $00 $d4
    ld bc, $0006                                  ; $6fcf: $01 $06 $00
    call Call_000_03d3                            ; $6fd2: $cd $d3 $03
    ld hl, $d36d                                  ; $6fd5: $21 $6d $d3
    ld de, $d51d                                  ; $6fd8: $11 $1d $d5
    ld bc, $0006                                  ; $6fdb: $01 $06 $00
    call Call_000_03d3                            ; $6fde: $cd $d3 $03
    ld a, $3f                                     ; $6fe1: $3e $3f
    call Call_010_4b14                            ; $6fe3: $cd $14 $4b
    ld a, [$d368]                                 ; $6fe6: $fa $68 $d3
    ld [hl], a                                    ; $6fe9: $77
    ld [$d446], a                                 ; $6fea: $ea $46 $d4
    xor a                                         ; $6fed: $af
    ld hl, $d406                                  ; $6fee: $21 $06 $d4
    ld [hl+], a                                   ; $6ff1: $22
    ld [hl+], a                                   ; $6ff2: $22
    ld [hl], a                                    ; $6ff3: $77
    ld hl, $d409                                  ; $6ff4: $21 $09 $d4
    ld [hl+], a                                   ; $6ff7: $22
    ld [hl+], a                                   ; $6ff8: $22
    ld [hl+], a                                   ; $6ff9: $22
    ld [hl+], a                                   ; $6ffa: $22
    ld [hl+], a                                   ; $6ffb: $22
    ld [hl], a                                    ; $6ffc: $77
    ld [$d415], a                                 ; $6ffd: $ea $15 $d4
    rst $08                                       ; $7000: $cf
    ld b, b                                       ; $7001: $40
    call Call_010_5617                            ; $7002: $cd $17 $56
    ld a, c                                       ; $7005: $79
    or a                                          ; $7006: $b7
    jr nz, jr_010_701a                            ; $7007: $20 $11

    ld a, [$d443]                                 ; $7009: $fa $43 $d4
    or a                                          ; $700c: $b7
    jr z, jr_010_7015                             ; $700d: $28 $06

    xor a                                         ; $700f: $af
    rst $18                                       ; $7010: $df
    nop                                           ; $7011: $00
    inc de                                        ; $7012: $13
    jr jr_010_7021                                ; $7013: $18 $0c

jr_010_7015:
    rst $18                                       ; $7015: $df
    ld [bc], a                                    ; $7016: $02
    inc de                                        ; $7017: $13
    jr jr_010_7021                                ; $7018: $18 $07

jr_010_701a:
    ld a, $01                                     ; $701a: $3e $01
    rst $18                                       ; $701c: $df
    nop                                           ; $701d: $00
    inc de                                        ; $701e: $13
    jr jr_010_7021                                ; $701f: $18 $00

jr_010_7021:
    xor a                                         ; $7021: $af
    ld [$d360], a                                 ; $7022: $ea $60 $d3
    ld a, [$d367]                                 ; $7025: $fa $67 $d3
    ret                                           ; $7028: $c9


Jump_010_7029:
    xor a                                         ; $7029: $af
    ld hl, $d40d                                  ; $702a: $21 $0d $d4
    ld [hl+], a                                   ; $702d: $22
    ld [hl], a                                    ; $702e: $77
    ld hl, $d406                                  ; $702f: $21 $06 $d4
    ld [hl+], a                                   ; $7032: $22
    ld [hl+], a                                   ; $7033: $22
    ld [hl], a                                    ; $7034: $77
    call Call_010_648b                            ; $7035: $cd $8b $64
    cp $00                                        ; $7038: $fe $00
    jp z, Jump_010_70b4                           ; $703a: $ca $b4 $70

    cp $0e                                        ; $703d: $fe $0e
    jp z, Jump_010_70b4                           ; $703f: $ca $b4 $70

    cp $01                                        ; $7042: $fe $01
    jp z, Jump_010_70eb                           ; $7044: $ca $eb $70

    ret                                           ; $7047: $c9


Jump_010_7048:
    call Call_010_716b                            ; $7048: $cd $6b $71
    ld a, [$d4b1]                                 ; $704b: $fa $b1 $d4
    or a                                          ; $704e: $b7
    jp z, Jump_010_6ea7                           ; $704f: $ca $a7 $6e

Jump_010_7052:
    ld a, $01                                     ; $7052: $3e $01
    ld [$d444], a                                 ; $7054: $ea $44 $d4
    call Call_010_79af                            ; $7057: $cd $af $79
    cp $02                                        ; $705a: $fe $02
    jp z, Jump_010_6ea7                           ; $705c: $ca $a7 $6e

    rst $08                                       ; $705f: $cf

    db $5a

    call Call_010_7888                            ; $7061: $cd $88 $78
    ld hl, $d485                                  ; $7064: $21 $85 $d4
    res 2, [hl]                                   ; $7067: $cb $96
    ld a, $80                                     ; $7069: $3e $80
    ret                                           ; $706b: $c9


Call_010_706c:
    xor a                                         ; $706c: $af
    ld hl, $d4cf                                  ; $706d: $21 $cf $d4
    ld [hl+], a                                   ; $7070: $22
    ld [hl+], a                                   ; $7071: $22
    ld [hl+], a                                   ; $7072: $22
    ld [hl+], a                                   ; $7073: $22
    ld [hl+], a                                   ; $7074: $22
    ld [hl], a                                    ; $7075: $77
    ret                                           ; $7076: $c9


Call_010_7077:
    ld hl, $d4cf                                  ; $7077: $21 $cf $d4
    ld de, $d401                                  ; $707a: $11 $01 $d4
    ld a, [de]                                    ; $707d: $1a
    cp [hl]                                       ; $707e: $be
    jr nz, jr_010_709f                            ; $707f: $20 $1e

    inc hl                                        ; $7081: $23
    inc de                                        ; $7082: $13
    ld a, [de]                                    ; $7083: $1a
    cp [hl]                                       ; $7084: $be
    jr nz, jr_010_709f                            ; $7085: $20 $18

    inc hl                                        ; $7087: $23
    inc de                                        ; $7088: $13
    inc de                                        ; $7089: $13
    ld a, [de]                                    ; $708a: $1a
    cp [hl]                                       ; $708b: $be
    jr nz, jr_010_709f                            ; $708c: $20 $11

    inc hl                                        ; $708e: $23
    inc de                                        ; $708f: $13
    ld a, [de]                                    ; $7090: $1a
    cp [hl]                                       ; $7091: $be
    jr nz, jr_010_709f                            ; $7092: $20 $0b

    inc hl                                        ; $7094: $23
    inc de                                        ; $7095: $13
    inc de                                        ; $7096: $13
    ld a, [de]                                    ; $7097: $1a
    inc a                                         ; $7098: $3c
    cp $02                                        ; $7099: $fe $02
    jr nc, jr_010_709f                            ; $709b: $30 $02

    inc [hl]                                      ; $709d: $34
    ret                                           ; $709e: $c9


jr_010_709f:
    ld hl, $d4cf                                  ; $709f: $21 $cf $d4
    ld de, $d401                                  ; $70a2: $11 $01 $d4
    ld a, [de]                                    ; $70a5: $1a
    ld [hl+], a                                   ; $70a6: $22
    inc de                                        ; $70a7: $13
    ld a, [de]                                    ; $70a8: $1a
    ld [hl+], a                                   ; $70a9: $22
    inc de                                        ; $70aa: $13
    inc de                                        ; $70ab: $13
    ld a, [de]                                    ; $70ac: $1a
    ld [hl+], a                                   ; $70ad: $22
    inc de                                        ; $70ae: $13
    ld a, [de]                                    ; $70af: $1a
    ld [hl+], a                                   ; $70b0: $22
    ld [hl], $00                                  ; $70b1: $36 $00
    ret                                           ; $70b3: $c9


Jump_010_70b4:
    push af                                       ; $70b4: $f5
    push hl                                       ; $70b5: $e5
    ld a, [$d403]                                 ; $70b6: $fa $03 $d4
    swap a                                        ; $70b9: $cb $37
    ld h, a                                       ; $70bb: $67
    ld a, [$d400]                                 ; $70bc: $fa $00 $d4
    swap a                                        ; $70bf: $cb $37
    add h                                         ; $70c1: $84
    and $0f                                       ; $70c2: $e6 $0f
    ld hl, $70db                                  ; $70c4: $21 $db $70
    add l                                         ; $70c7: $85
    ld l, a                                       ; $70c8: $6f
    jr nc, jr_010_70cc                            ; $70c9: $30 $01

    inc h                                         ; $70cb: $24

jr_010_70cc:
    ld a, [hl]                                    ; $70cc: $7e
    push af                                       ; $70cd: $f5
    ld a, $3f                                     ; $70ce: $3e $3f
    call Call_010_4b14                            ; $70d0: $cd $14 $4b
    pop af                                        ; $70d3: $f1
    ld [hl], a                                    ; $70d4: $77
    ld [$d446], a                                 ; $70d5: $ea $46 $d4
    pop hl                                        ; $70d8: $e1
    pop af                                        ; $70d9: $f1
    ret                                           ; $70da: $c9


    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00

    db $00

    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    ld bc, $0101                                  ; $70e3: $01 $01 $01
    ld bc, $0101                                  ; $70e6: $01 $01 $01

    db $02

    ld [bc], a                                    ; $70ea: $02

Jump_010_70eb:
    push af                                       ; $70eb: $f5
    push hl                                       ; $70ec: $e5
    ld a, [$d403]                                 ; $70ed: $fa $03 $d4
    swap a                                        ; $70f0: $cb $37
    ld h, a                                       ; $70f2: $67
    ld a, [$d400]                                 ; $70f3: $fa $00 $d4
    swap a                                        ; $70f6: $cb $37
    add h                                         ; $70f8: $84
    and $0f                                       ; $70f9: $e6 $0f
    ld hl, $7112                                  ; $70fb: $21 $12 $71
    add l                                         ; $70fe: $85
    ld l, a                                       ; $70ff: $6f
    jr nc, jr_010_7103                            ; $7100: $30 $01

    inc h                                         ; $7102: $24

jr_010_7103:
    ld a, [hl]                                    ; $7103: $7e
    push af                                       ; $7104: $f5
    ld a, $3f                                     ; $7105: $3e $3f
    call Call_010_4b14                            ; $7107: $cd $14 $4b
    pop af                                        ; $710a: $f1
    ld [hl], a                                    ; $710b: $77
    ld [$d446], a                                 ; $710c: $ea $46 $d4
    pop hl                                        ; $710f: $e1
    pop af                                        ; $7110: $f1
    ret                                           ; $7111: $c9


    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00

    db $00

    nop                                           ; $711a: $00

    db $00

    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    ld bc, $0101                                  ; $711e: $01 $01 $01

    db $01

Call_010_7122:
    ld hl, $d43f                                  ; $7122: $21 $3f $d4
    ld a, [hl+]                                   ; $7125: $2a
    ld d, [hl]                                    ; $7126: $56
    ld e, a                                       ; $7127: $5f
    ld hl, $d404                                  ; $7128: $21 $04 $d4
    ld a, [hl+]                                   ; $712b: $2a
    ld h, [hl]                                    ; $712c: $66
    ld l, a                                       ; $712d: $6f
    call Call_000_08ac                            ; $712e: $cd $ac $08
    bit 7, h                                      ; $7131: $cb $7c
    jr z, jr_010_713c                             ; $7133: $28 $07

    ld a, h                                       ; $7135: $7c
    cpl                                           ; $7136: $2f
    ld h, a                                       ; $7137: $67
    ld a, l                                       ; $7138: $7d
    cpl                                           ; $7139: $2f
    ld l, a                                       ; $713a: $6f
    inc hl                                        ; $713b: $23

jr_010_713c:
    ld de, $ffe0                                  ; $713c: $11 $e0 $ff
    add hl, de                                    ; $713f: $19
    bit 7, h                                      ; $7140: $cb $7c
    jr z, jr_010_7169                             ; $7142: $28 $25

    ld hl, $d43d                                  ; $7144: $21 $3d $d4
    ld a, [hl+]                                   ; $7147: $2a
    ld d, [hl]                                    ; $7148: $56
    ld e, a                                       ; $7149: $5f
    ld hl, $d401                                  ; $714a: $21 $01 $d4
    ld a, [hl+]                                   ; $714d: $2a
    ld h, [hl]                                    ; $714e: $66
    ld l, a                                       ; $714f: $6f
    call Call_000_08ac                            ; $7150: $cd $ac $08
    bit 7, h                                      ; $7153: $cb $7c
    jr z, jr_010_715e                             ; $7155: $28 $07

    ld a, h                                       ; $7157: $7c
    cpl                                           ; $7158: $2f
    ld h, a                                       ; $7159: $67
    ld a, l                                       ; $715a: $7d
    cpl                                           ; $715b: $2f
    ld l, a                                       ; $715c: $6f
    inc hl                                        ; $715d: $23

jr_010_715e:
    ld de, $ffe0                                  ; $715e: $11 $e0 $ff
    add hl, de                                    ; $7161: $19
    bit 7, h                                      ; $7162: $cb $7c
    jr z, jr_010_7169                             ; $7164: $28 $03

    ld a, $01                                     ; $7166: $3e $01
    ret                                           ; $7168: $c9


jr_010_7169:
    xor a                                         ; $7169: $af
    ret                                           ; $716a: $c9


Call_010_716b:
    push af                                       ; $716b: $f5
    push bc                                       ; $716c: $c5
    push de                                       ; $716d: $d5
    push hl                                       ; $716e: $e5
    ld hl, $d499                                  ; $716f: $21 $99 $d4
    ld a, [hl+]                                   ; $7172: $2a
    ld b, [hl]                                    ; $7173: $46
    ld c, a                                       ; $7174: $4f
    ld hl, $d4bb                                  ; $7175: $21 $bb $d4
    ld a, c                                       ; $7178: $79
    ld [hl+], a                                   ; $7179: $22
    ld [hl], b                                    ; $717a: $70
    ld hl, $d49b                                  ; $717b: $21 $9b $d4
    ld a, [hl+]                                   ; $717e: $2a
    ld b, [hl]                                    ; $717f: $46
    ld c, a                                       ; $7180: $4f
    ld hl, $d4bd                                  ; $7181: $21 $bd $d4
    ld a, c                                       ; $7184: $79
    ld [hl+], a                                   ; $7185: $22
    ld [hl], b                                    ; $7186: $70
    ld hl, $d43d                                  ; $7187: $21 $3d $d4
    ld a, [hl+]                                   ; $718a: $2a
    ld d, [hl]                                    ; $718b: $56
    ld e, a                                       ; $718c: $5f
    ld hl, $d401                                  ; $718d: $21 $01 $d4
    ld a, [hl+]                                   ; $7190: $2a
    ld h, [hl]                                    ; $7191: $66
    ld l, a                                       ; $7192: $6f
    call Call_000_08ac                            ; $7193: $cd $ac $08
    push hl                                       ; $7196: $e5
    bit 7, h                                      ; $7197: $cb $7c
    call nz, Call_000_0c60                        ; $7199: $c4 $60 $0c
    ld h, l                                       ; $719c: $65
    ld a, [$d400]                                 ; $719d: $fa $00 $d4
    ld l, a                                       ; $71a0: $6f
    pop de                                        ; $71a1: $d1
    bit 7, d                                      ; $71a2: $cb $7a
    call nz, Call_000_0c60                        ; $71a4: $c4 $60 $0c
    ld a, l                                       ; $71a7: $7d
    ld [$d499], a                                 ; $71a8: $ea $99 $d4
    ld a, h                                       ; $71ab: $7c
    ld [$d49a], a                                 ; $71ac: $ea $9a $d4
    ld hl, $d43f                                  ; $71af: $21 $3f $d4
    ld a, [hl+]                                   ; $71b2: $2a
    ld d, [hl]                                    ; $71b3: $56
    ld e, a                                       ; $71b4: $5f
    ld hl, $d404                                  ; $71b5: $21 $04 $d4
    ld a, [hl+]                                   ; $71b8: $2a
    ld h, [hl]                                    ; $71b9: $66
    ld l, a                                       ; $71ba: $6f
    call Call_000_08ac                            ; $71bb: $cd $ac $08
    push hl                                       ; $71be: $e5
    bit 7, h                                      ; $71bf: $cb $7c
    call nz, Call_000_0c60                        ; $71c1: $c4 $60 $0c
    ld h, l                                       ; $71c4: $65
    ld a, [$d403]                                 ; $71c5: $fa $03 $d4
    ld l, a                                       ; $71c8: $6f
    pop de                                        ; $71c9: $d1
    bit 7, d                                      ; $71ca: $cb $7a
    call nz, Call_000_0c60                        ; $71cc: $c4 $60 $0c
    ld a, l                                       ; $71cf: $7d
    ld [$d49b], a                                 ; $71d0: $ea $9b $d4
    ld a, h                                       ; $71d3: $7c
    ld [$d49c], a                                 ; $71d4: $ea $9c $d4
    ld a, [$d4d5]                                 ; $71d7: $fa $d5 $d4
    or a                                          ; $71da: $b7
    jr nz, jr_010_71e7                            ; $71db: $20 $0a

    call Call_010_73ca                            ; $71dd: $cd $ca $73
    ld a, h                                       ; $71e0: $7c
    cp $02                                        ; $71e1: $fe $02
    ld a, $01                                     ; $71e3: $3e $01
    jr c, jr_010_725b                             ; $71e5: $38 $74

jr_010_71e7:
    call Call_010_74a1                            ; $71e7: $cd $a1 $74
    ld hl, $d49d                                  ; $71ea: $21 $9d $d4
    ld a, [hl+]                                   ; $71ed: $2a
    ld d, [hl]                                    ; $71ee: $56
    ld e, a                                       ; $71ef: $5f
    ld hl, $d499                                  ; $71f0: $21 $99 $d4
    ld a, [hl+]                                   ; $71f3: $2a
    ld h, [hl]                                    ; $71f4: $66
    ld l, a                                       ; $71f5: $6f
    call Call_000_08ac                            ; $71f6: $cd $ac $08
    bit 7, h                                      ; $71f9: $cb $7c
    call nz, Call_000_0c60                        ; $71fb: $c4 $60 $0c
    push hl                                       ; $71fe: $e5
    ld hl, $d49f                                  ; $71ff: $21 $9f $d4
    ld a, [hl+]                                   ; $7202: $2a
    ld d, [hl]                                    ; $7203: $56
    ld e, a                                       ; $7204: $5f
    ld hl, $d49b                                  ; $7205: $21 $9b $d4
    ld a, [hl+]                                   ; $7208: $2a
    ld h, [hl]                                    ; $7209: $66
    ld l, a                                       ; $720a: $6f
    call Call_000_08ac                            ; $720b: $cd $ac $08
    bit 7, h                                      ; $720e: $cb $7c
    call nz, Call_000_0c60                        ; $7210: $c4 $60 $0c
    pop de                                        ; $7213: $d1
    push de                                       ; $7214: $d5
    call Call_000_1a03                            ; $7215: $cd $03 $1a
    ld hl, $0040                                  ; $7218: $21 $40 $00
    call Call_000_11ba                            ; $721b: $cd $ba $11
    ld d, h                                       ; $721e: $54
    ld e, l                                       ; $721f: $5d
    pop hl                                        ; $7220: $e1
    ld a, h                                       ; $7221: $7c
    ld h, l                                       ; $7222: $65
    ld l, $00                                     ; $7223: $2e $00
    sra a                                         ; $7225: $cb $2f
    rr h                                          ; $7227: $cb $1c
    rr l                                          ; $7229: $cb $1d
    sra a                                         ; $722b: $cb $2f
    rr h                                          ; $722d: $cb $1c
    rr l                                          ; $722f: $cb $1d
    call Call_000_0ddb                            ; $7231: $cd $db $0d
    or a                                          ; $7234: $b7
    jr z, jr_010_723a                             ; $7235: $28 $03

    ld hl, $3fff                                  ; $7237: $21 $ff $3f

jr_010_723a:
    add hl, hl                                    ; $723a: $29
    push hl                                       ; $723b: $e5
    ld hl, $d40b                                  ; $723c: $21 $0b $d4
    ld a, [hl+]                                   ; $723f: $2a
    ld d, [hl]                                    ; $7240: $56
    ld e, a                                       ; $7241: $5f
    ld hl, $d409                                  ; $7242: $21 $09 $d4
    ld a, [hl+]                                   ; $7245: $2a
    ld h, [hl]                                    ; $7246: $66
    ld l, a                                       ; $7247: $6f
    call Call_010_7372                            ; $7248: $cd $72 $73
    ld b, h                                       ; $724b: $44
    ld c, l                                       ; $724c: $4d
    add hl, hl                                    ; $724d: $29
    add hl, bc                                    ; $724e: $09
    pop de                                        ; $724f: $d1
    call Call_000_08ac                            ; $7250: $cd $ac $08
    ld a, $00                                     ; $7253: $3e $00
    bit 7, h                                      ; $7255: $cb $7c
    jr z, jr_010_725b                             ; $7257: $28 $02

    ld a, $01                                     ; $7259: $3e $01

jr_010_725b:
    ld [$d4b1], a                                 ; $725b: $ea $b1 $d4
    pop hl                                        ; $725e: $e1
    pop de                                        ; $725f: $d1
    pop bc                                        ; $7260: $c1
    pop af                                        ; $7261: $f1
    ret                                           ; $7262: $c9


Call_010_7263:
    push bc                                       ; $7263: $c5
    push de                                       ; $7264: $d5
    push hl                                       ; $7265: $e5
    ld a, [$d415]                                 ; $7266: $fa $15 $d4
    or a                                          ; $7269: $b7
    ld a, $00                                     ; $726a: $3e $00
    jr z, jr_010_72e3                             ; $726c: $28 $75

    ld hl, $d40d                                  ; $726e: $21 $0d $d4
    ld a, [hl+]                                   ; $7271: $2a
    ld h, [hl]                                    ; $7272: $66
    ld l, a                                       ; $7273: $6f
    bit 7, h                                      ; $7274: $cb $7c
    ld a, $00                                     ; $7276: $3e $00
    jr z, jr_010_72e3                             ; $7278: $28 $69

    ld de, $ffc8                                  ; $727a: $11 $c8 $ff
    add hl, de                                    ; $727d: $19
    ld b, h                                       ; $727e: $44
    ld c, l                                       ; $727f: $4d
    ld hl, $d406                                  ; $7280: $21 $06 $d4
    ld de, $d4b3                                  ; $7283: $11 $b3 $d4
    ld a, [hl+]                                   ; $7286: $2a
    ld [de], a                                    ; $7287: $12
    inc de                                        ; $7288: $13
    ld a, [hl+]                                   ; $7289: $2a
    ld [de], a                                    ; $728a: $12
    inc de                                        ; $728b: $13
    ld a, [hl]                                    ; $728c: $7e
    ld [de], a                                    ; $728d: $12
    ld hl, $d4b3                                  ; $728e: $21 $b3 $d4
    ld d, b                                       ; $7291: $50
    ld e, c                                       ; $7292: $59
    call Call_010_52da                            ; $7293: $cd $da $52
    ld a, [$d4b5]                                 ; $7296: $fa $b5 $d4
    bit 7, a                                      ; $7299: $cb $7f
    ld a, $00                                     ; $729b: $3e $00
    jr z, jr_010_72e3                             ; $729d: $28 $44

    ld hl, $d43f                                  ; $729f: $21 $3f $d4
    ld a, [hl+]                                   ; $72a2: $2a
    ld d, [hl]                                    ; $72a3: $56
    ld e, a                                       ; $72a4: $5f
    ld hl, $d404                                  ; $72a5: $21 $04 $d4
    ld a, [hl+]                                   ; $72a8: $2a
    ld h, [hl]                                    ; $72a9: $66
    ld l, a                                       ; $72aa: $6f
    call Call_000_08ac                            ; $72ab: $cd $ac $08
    push hl                                       ; $72ae: $e5
    ld hl, $d43d                                  ; $72af: $21 $3d $d4
    ld a, [hl+]                                   ; $72b2: $2a
    ld d, [hl]                                    ; $72b3: $56
    ld e, a                                       ; $72b4: $5f
    ld hl, $d401                                  ; $72b5: $21 $01 $d4
    ld a, [hl+]                                   ; $72b8: $2a
    ld h, [hl]                                    ; $72b9: $66
    ld l, a                                       ; $72ba: $6f
    call Call_000_08ac                            ; $72bb: $cd $ac $08
    pop de                                        ; $72be: $d1
    ld h, l                                       ; $72bf: $65
    ld l, $00                                     ; $72c0: $2e $00
    ld d, e                                       ; $72c2: $53
    ld e, $00                                     ; $72c3: $1e $00
    push de                                       ; $72c5: $d5
    ld d, h                                       ; $72c6: $54
    ld e, l                                       ; $72c7: $5d
    call Call_000_0c8e                            ; $72c8: $cd $8e $0c
    pop de                                        ; $72cb: $d1
    push hl                                       ; $72cc: $e5
    ld h, d                                       ; $72cd: $62
    ld l, e                                       ; $72ce: $6b
    call Call_000_0c8e                            ; $72cf: $cd $8e $0c
    pop de                                        ; $72d2: $d1
    add hl, de                                    ; $72d3: $19
    call Call_000_0f04                            ; $72d4: $cd $04 $0f
    cp $06                                        ; $72d7: $fe $06
    ld a, $00                                     ; $72d9: $3e $00
    jr nc, jr_010_72e3                            ; $72db: $30 $06

    xor a                                         ; $72dd: $af
    ld [$d415], a                                 ; $72de: $ea $15 $d4
    ld a, $01                                     ; $72e1: $3e $01

jr_010_72e3:
    pop hl                                        ; $72e3: $e1
    pop de                                        ; $72e4: $d1
    pop bc                                        ; $72e5: $c1
    ret                                           ; $72e6: $c9


Call_010_72e7:
    push af                                       ; $72e7: $f5
    push bc                                       ; $72e8: $c5
    push de                                       ; $72e9: $d5
    push hl                                       ; $72ea: $e5
    ld a, $06                                     ; $72eb: $3e $06
    ldh [$96], a                                  ; $72ed: $e0 $96
    ldh [rSVBK], a                                ; $72ef: $e0 $70
    ld a, [$d4d5]                                 ; $72f1: $fa $d5 $d4
    or a                                          ; $72f4: $b7
    jp nz, Jump_010_7355                          ; $72f5: $c2 $55 $73

    ld a, [$d4b9]                                 ; $72f8: $fa $b9 $d4
    bit 0, a                                      ; $72fb: $cb $47
    jp nz, Jump_010_7355                          ; $72fd: $c2 $55 $73

    ld a, [$d408]                                 ; $7300: $fa $08 $d4
    or a                                          ; $7303: $b7
    jp nz, Jump_010_7355                          ; $7304: $c2 $55 $73

    ld b, $00                                     ; $7307: $06 $00
    ld a, [$d407]                                 ; $7309: $fa $07 $d4
    cp $e8                                        ; $730c: $fe $e8
    jp nc, Jump_010_7355                          ; $730e: $d2 $55 $73

    cp $c0                                        ; $7311: $fe $c0
    jr c, jr_010_7317                             ; $7313: $38 $02

    ld b, $01                                     ; $7315: $06 $01

jr_010_7317:
    ld hl, $0002                                  ; $7317: $21 $02 $00
    call Call_010_735a                            ; $731a: $cd $5a $73
    or a                                          ; $731d: $b7
    jp nz, Jump_010_7355                          ; $731e: $c2 $55 $73

    ld hl, $d4b9                                  ; $7321: $21 $b9 $d4
    set 0, [hl]                                   ; $7324: $cb $c6
    ld a, b                                       ; $7326: $78
    or a                                          ; $7327: $b7
    jr z, jr_010_734c                             ; $7328: $28 $22

    ld hl, $d48e                                  ; $732a: $21 $8e $d4
    set 2, [hl]                                   ; $732d: $cb $d6
    rst $08                                       ; $732f: $cf
    ld e, c                                       ; $7330: $59
    ld hl, $d4b9                                  ; $7331: $21 $b9 $d4
    set 1, [hl]                                   ; $7334: $cb $ce
    xor a                                         ; $7336: $af
    ld [$d409], a                                 ; $7337: $ea $09 $d4
    ld [$d40a], a                                 ; $733a: $ea $0a $d4
    ld [$d40b], a                                 ; $733d: $ea $0b $d4
    ld [$d40c], a                                 ; $7340: $ea $0c $d4
    ld [$d40d], a                                 ; $7343: $ea $0d $d4
    ld [$d40e], a                                 ; $7346: $ea $0e $d4
    jp Jump_010_7355                              ; $7349: $c3 $55 $73


jr_010_734c:
    call Call_010_74a1                            ; $734c: $cd $a1 $74
    call Call_010_750b                            ; $734f: $cd $0b $75
    call Call_010_765f                            ; $7352: $cd $5f $76

Jump_010_7355:
    pop hl                                        ; $7355: $e1
    pop de                                        ; $7356: $d1
    pop bc                                        ; $7357: $c1
    pop af                                        ; $7358: $f1
    ret                                           ; $7359: $c9


Call_010_735a:
    push bc                                       ; $735a: $c5
    push de                                       ; $735b: $d5
    push hl                                       ; $735c: $e5
    push hl                                       ; $735d: $e5
    rst $18                                       ; $735e: $df

    db $04, $10

    ld d, h                                       ; $7361: $54
    ld e, l                                       ; $7362: $5d
    pop hl                                        ; $7363: $e1
    call Call_000_08ac                            ; $7364: $cd $ac $08
    bit 7, h                                      ; $7367: $cb $7c
    ld a, $01                                     ; $7369: $3e $01
    jr nz, jr_010_736e                            ; $736b: $20 $01

    xor a                                         ; $736d: $af

jr_010_736e:
    pop hl                                        ; $736e: $e1
    pop de                                        ; $736f: $d1
    pop bc                                        ; $7370: $c1
    ret                                           ; $7371: $c9


Call_010_7372:
    push de                                       ; $7372: $d5
    bit 7, h                                      ; $7373: $cb $7c
    call nz, Call_000_0c60                        ; $7375: $c4 $60 $0c
    ld d, h                                       ; $7378: $54
    ld e, l                                       ; $7379: $5d
    call Call_000_0cb5                            ; $737a: $cd $b5 $0c
    pop hl                                        ; $737d: $e1
    ldh a, [$ab]                                  ; $737e: $f0 $ab
    or a                                          ; $7380: $b7
    jr z, jr_010_7388                             ; $7381: $28 $05

    ld de, $ffff                                  ; $7383: $11 $ff $ff
    jr jr_010_738e                                ; $7386: $18 $06

jr_010_7388:
    ldh a, [$a9]                                  ; $7388: $f0 $a9
    ld e, a                                       ; $738a: $5f
    ldh a, [$aa]                                  ; $738b: $f0 $aa
    ld d, a                                       ; $738d: $57

jr_010_738e:
    push de                                       ; $738e: $d5
    bit 7, h                                      ; $738f: $cb $7c
    call nz, Call_000_0c60                        ; $7391: $c4 $60 $0c
    ld d, h                                       ; $7394: $54
    ld e, l                                       ; $7395: $5d
    call Call_000_0cb5                            ; $7396: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7399: $f0 $ab
    or a                                          ; $739b: $b7
    jr z, jr_010_73a3                             ; $739c: $28 $05

    ld hl, $ffff                                  ; $739e: $21 $ff $ff
    jr jr_010_73a9                                ; $73a1: $18 $06

jr_010_73a3:
    ldh a, [$a9]                                  ; $73a3: $f0 $a9
    ld l, a                                       ; $73a5: $6f
    ldh a, [$aa]                                  ; $73a6: $f0 $aa
    ld h, a                                       ; $73a8: $67

jr_010_73a9:
    pop de                                        ; $73a9: $d1
    add hl, de                                    ; $73aa: $19
    jr nc, jr_010_73b2                            ; $73ab: $30 $05

    ld hl, $0fff                                  ; $73ad: $21 $ff $0f
    jr jr_010_73c9                                ; $73b0: $18 $17

jr_010_73b2:
    call Call_000_0f04                            ; $73b2: $cd $04 $0f
    ld b, a                                       ; $73b5: $47
    ld h, $00                                     ; $73b6: $26 $00
    ld l, a                                       ; $73b8: $6f
    sla l                                         ; $73b9: $cb $25
    rl h                                          ; $73bb: $cb $14
    sla l                                         ; $73bd: $cb $25
    rl h                                          ; $73bf: $cb $14
    sla l                                         ; $73c1: $cb $25
    rl h                                          ; $73c3: $cb $14
    sla l                                         ; $73c5: $cb $25
    rl h                                          ; $73c7: $cb $14

jr_010_73c9:
    ret                                           ; $73c9: $c9


Call_010_73ca:
    ld hl, $d43f                                  ; $73ca: $21 $3f $d4
    ld a, [hl+]                                   ; $73cd: $2a
    ld d, [hl]                                    ; $73ce: $56
    ld e, a                                       ; $73cf: $5f
    ld hl, $d404                                  ; $73d0: $21 $04 $d4
    ld a, [hl+]                                   ; $73d3: $2a
    ld h, [hl]                                    ; $73d4: $66
    ld l, a                                       ; $73d5: $6f
    call Call_000_08ac                            ; $73d6: $cd $ac $08
    ld a, [$d403]                                 ; $73d9: $fa $03 $d4
    ld h, l                                       ; $73dc: $65
    ld l, a                                       ; $73dd: $6f
    ld d, h                                       ; $73de: $54
    ld e, l                                       ; $73df: $5d
    ld a, l                                       ; $73e0: $7d
    ld [$d49b], a                                 ; $73e1: $ea $9b $d4
    ld a, h                                       ; $73e4: $7c
    ld [$d49c], a                                 ; $73e5: $ea $9c $d4
    push de                                       ; $73e8: $d5
    ld hl, $d43d                                  ; $73e9: $21 $3d $d4
    ld a, [hl+]                                   ; $73ec: $2a
    ld d, [hl]                                    ; $73ed: $56
    ld e, a                                       ; $73ee: $5f
    ld hl, $d401                                  ; $73ef: $21 $01 $d4
    ld a, [hl+]                                   ; $73f2: $2a
    ld h, [hl]                                    ; $73f3: $66
    ld l, a                                       ; $73f4: $6f
    call Call_000_08ac                            ; $73f5: $cd $ac $08
    ld a, [$d400]                                 ; $73f8: $fa $00 $d4
    ld h, l                                       ; $73fb: $65
    ld l, a                                       ; $73fc: $6f
    ld a, l                                       ; $73fd: $7d
    ld [$d499], a                                 ; $73fe: $ea $99 $d4
    ld a, h                                       ; $7401: $7c
    ld [$d49a], a                                 ; $7402: $ea $9a $d4
    pop de                                        ; $7405: $d1
    call Call_010_7372                            ; $7406: $cd $72 $73
    ld a, l                                       ; $7409: $7d
    ld [$d4a5], a                                 ; $740a: $ea $a5 $d4
    ld a, h                                       ; $740d: $7c
    ld [$d4a6], a                                 ; $740e: $ea $a6 $d4
    ret                                           ; $7411: $c9


    ld a, h                                       ; $7412: $7c
    cp $06                                        ; $7413: $fe $06
    jr nc, jr_010_741a                            ; $7415: $30 $03

    xor a                                         ; $7417: $af
    jr jr_010_741c                                ; $7418: $18 $02

jr_010_741a:
    ld a, $01                                     ; $741a: $3e $01

jr_010_741c:
    ret                                           ; $741c: $c9


Call_010_741d:
    ld hl, $d40b                                  ; $741d: $21 $0b $d4
    ld a, [hl+]                                   ; $7420: $2a
    ld d, [hl]                                    ; $7421: $56
    ld e, a                                       ; $7422: $5f
    push de                                       ; $7423: $d5
    bit 7, d                                      ; $7424: $cb $7a
    call nz, Call_000_0c67                        ; $7426: $c4 $67 $0c
    sra d                                         ; $7429: $cb $2a
    rr e                                          ; $742b: $cb $1b
    sra d                                         ; $742d: $cb $2a
    rr e                                          ; $742f: $cb $1b
    sra d                                         ; $7431: $cb $2a
    rr e                                          ; $7433: $cb $1b
    sra d                                         ; $7435: $cb $2a
    rr e                                          ; $7437: $cb $1b
    ld hl, $d499                                  ; $7439: $21 $99 $d4
    ld a, [hl+]                                   ; $743c: $2a
    ld h, [hl]                                    ; $743d: $66
    ld l, a                                       ; $743e: $6f
    push hl                                       ; $743f: $e5
    bit 7, h                                      ; $7440: $cb $7c
    call nz, Call_000_0c60                        ; $7442: $c4 $60 $0c
    call Call_000_0cb5                            ; $7445: $cd $b5 $0c
    ld hl, $d409                                  ; $7448: $21 $09 $d4
    ld a, [hl+]                                   ; $744b: $2a
    ld d, [hl]                                    ; $744c: $56
    ld e, a                                       ; $744d: $5f
    push de                                       ; $744e: $d5
    bit 7, d                                      ; $744f: $cb $7a
    call nz, Call_000_0c67                        ; $7451: $c4 $67 $0c
    sra d                                         ; $7454: $cb $2a
    rr e                                          ; $7456: $cb $1b
    sra d                                         ; $7458: $cb $2a
    rr e                                          ; $745a: $cb $1b
    sra d                                         ; $745c: $cb $2a
    rr e                                          ; $745e: $cb $1b
    sra d                                         ; $7460: $cb $2a
    rr e                                          ; $7462: $cb $1b
    ldh a, [$ab]                                  ; $7464: $f0 $ab
    or a                                          ; $7466: $b7
    jr z, jr_010_746f                             ; $7467: $28 $06

    ld a, $ff                                     ; $7469: $3e $ff
    ld h, a                                       ; $746b: $67
    ld l, a                                       ; $746c: $6f
    jr jr_010_7477                                ; $746d: $18 $08

jr_010_746f:
    ldh a, [$a8]                                  ; $746f: $f0 $a8
    ld l, a                                       ; $7471: $6f
    ldh a, [$a9]                                  ; $7472: $f0 $a9
    ld h, a                                       ; $7474: $67
    ldh a, [$aa]                                  ; $7475: $f0 $aa

jr_010_7477:
    call Call_000_0ddb                            ; $7477: $cd $db $0d
    or a                                          ; $747a: $b7
    jr z, jr_010_7480                             ; $747b: $28 $03

    ld hl, $3fff                                  ; $747d: $21 $ff $3f

jr_010_7480:
    xor a                                         ; $7480: $af
    pop bc                                        ; $7481: $c1
    sla b                                         ; $7482: $cb $20
    adc $00                                       ; $7484: $ce $00
    pop bc                                        ; $7486: $c1
    sla b                                         ; $7487: $cb $20
    adc $00                                       ; $7489: $ce $00
    pop bc                                        ; $748b: $c1
    sla b                                         ; $748c: $cb $20
    adc $00                                       ; $748e: $ce $00
    bit 0, a                                      ; $7490: $cb $47
    call nz, Call_000_0c60                        ; $7492: $c4 $60 $0c
    ld d, h                                       ; $7495: $54
    ld e, l                                       ; $7496: $5d
    ld hl, $d49b                                  ; $7497: $21 $9b $d4
    ld a, [hl+]                                   ; $749a: $2a
    ld h, [hl]                                    ; $749b: $66
    ld l, a                                       ; $749c: $6f
    call Call_000_08ac                            ; $749d: $cd $ac $08
    ret                                           ; $74a0: $c9


Call_010_74a1:
    call Call_010_741d                            ; $74a1: $cd $1d $74
    push hl                                       ; $74a4: $e5
    bit 7, h                                      ; $74a5: $cb $7c
    call nz, Call_000_0c60                        ; $74a7: $c4 $60 $0c
    push hl                                       ; $74aa: $e5
    ld hl, $d409                                  ; $74ab: $21 $09 $d4
    ld a, [hl+]                                   ; $74ae: $2a
    ld h, [hl]                                    ; $74af: $66
    ld l, a                                       ; $74b0: $6f
    bit 7, h                                      ; $74b1: $cb $7c
    call nz, Call_000_0c60                        ; $74b3: $c4 $60 $0c
    push hl                                       ; $74b6: $e5
    ld hl, $d40b                                  ; $74b7: $21 $0b $d4
    ld a, [hl+]                                   ; $74ba: $2a
    ld h, [hl]                                    ; $74bb: $66
    ld l, a                                       ; $74bc: $6f
    bit 7, h                                      ; $74bd: $cb $7c
    call nz, Call_000_0c60                        ; $74bf: $c4 $60 $0c
    pop de                                        ; $74c2: $d1
    call Call_000_1a03                            ; $74c3: $cd $03 $1a
    pop hl                                        ; $74c6: $e1
    push bc                                       ; $74c7: $c5
    call Call_000_11ba                            ; $74c8: $cd $ba $11
    pop de                                        ; $74cb: $d1
    push hl                                       ; $74cc: $e5
    ld hl, $4000                                  ; $74cd: $21 $00 $40
    call Call_000_08ac                            ; $74d0: $cd $ac $08
    ld b, h                                       ; $74d3: $44
    ld c, l                                       ; $74d4: $4d
    pop hl                                        ; $74d5: $e1
    call Call_000_11ba                            ; $74d6: $cd $ba $11
    ld a, [$d40a]                                 ; $74d9: $fa $0a $d4
    ld b, a                                       ; $74dc: $47
    ld a, [$d40c]                                 ; $74dd: $fa $0c $d4
    ld c, a                                       ; $74e0: $4f
    xor a                                         ; $74e1: $af
    rl b                                          ; $74e2: $cb $10
    adc $00                                       ; $74e4: $ce $00
    rl c                                          ; $74e6: $cb $11
    adc $00                                       ; $74e8: $ce $00
    bit 0, a                                      ; $74ea: $cb $47
    call z, Call_000_0c60                         ; $74ec: $cc $60 $0c
    pop bc                                        ; $74ef: $c1
    bit 7, b                                      ; $74f0: $cb $78
    call nz, Call_000_0c60                        ; $74f2: $c4 $60 $0c
    ld a, l                                       ; $74f5: $7d
    ld [$d49d], a                                 ; $74f6: $ea $9d $d4
    ld a, h                                       ; $74f9: $7c
    ld [$d49e], a                                 ; $74fa: $ea $9e $d4
    bit 7, b                                      ; $74fd: $cb $78
    call nz, Call_000_0c67                        ; $74ff: $c4 $67 $0c
    ld a, e                                       ; $7502: $7b
    ld [$d49f], a                                 ; $7503: $ea $9f $d4
    ld a, d                                       ; $7506: $7a
    ld [$d4a0], a                                 ; $7507: $ea $a0 $d4
    ret                                           ; $750a: $c9


Call_010_750b:
    ld hl, $d40b                                  ; $750b: $21 $0b $d4
    ld a, [hl+]                                   ; $750e: $2a
    ld d, [hl]                                    ; $750f: $56
    ld e, a                                       ; $7510: $5f
    ld hl, $d409                                  ; $7511: $21 $09 $d4
    ld a, [hl+]                                   ; $7514: $2a
    ld h, [hl]                                    ; $7515: $66
    ld l, a                                       ; $7516: $6f
    call Call_010_7372                            ; $7517: $cd $72 $73
    ld a, l                                       ; $751a: $7d
    ld [$d4a7], a                                 ; $751b: $ea $a7 $d4
    ld a, h                                       ; $751e: $7c
    ld [$d4a8], a                                 ; $751f: $ea $a8 $d4
    ld hl, $d49f                                  ; $7522: $21 $9f $d4
    ld a, [hl+]                                   ; $7525: $2a
    ld d, [hl]                                    ; $7526: $56
    ld e, a                                       ; $7527: $5f
    ld hl, $d49d                                  ; $7528: $21 $9d $d4
    ld a, [hl+]                                   ; $752b: $2a
    ld h, [hl]                                    ; $752c: $66
    ld l, a                                       ; $752d: $6f
    call Call_010_7372                            ; $752e: $cd $72 $73
    ld de, $0040                                  ; $7531: $11 $40 $00
    call Call_000_0cb5                            ; $7534: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7537: $f0 $ab
    or a                                          ; $7539: $b7
    jr z, jr_010_7542                             ; $753a: $28 $06

    ld a, $ff                                     ; $753c: $3e $ff
    ld h, a                                       ; $753e: $67
    ld l, a                                       ; $753f: $6f
    jr jr_010_754a                                ; $7540: $18 $08

jr_010_7542:
    ldh a, [$a8]                                  ; $7542: $f0 $a8
    ld l, a                                       ; $7544: $6f
    ldh a, [$a9]                                  ; $7545: $f0 $a9
    ld h, a                                       ; $7547: $67
    ldh a, [$aa]                                  ; $7548: $f0 $aa

jr_010_754a:
    ld e, a                                       ; $754a: $5f
    ld d, $06                                     ; $754b: $16 $06
    ld a, [$d4b8]                                 ; $754d: $fa $b8 $d4
    bit 1, a                                      ; $7550: $cb $4f
    jr z, jr_010_755c                             ; $7552: $28 $08

    ld a, [$d4d5]                                 ; $7554: $fa $d5 $d4
    or a                                          ; $7557: $b7
    jr nz, jr_010_755c                            ; $7558: $20 $02

    ld d, $02                                     ; $755a: $16 $02

jr_010_755c:
    ld a, e                                       ; $755c: $7b
    ld e, $00                                     ; $755d: $1e $00
    call Call_000_0ddb                            ; $755f: $cd $db $0d
    or a                                          ; $7562: $b7
    jr z, jr_010_7568                             ; $7563: $28 $03

    ld hl, $3fff                                  ; $7565: $21 $ff $3f

jr_010_7568:
    ld b, l                                       ; $7568: $45
    ld c, $00                                     ; $7569: $0e $00
    ld hl, $d4a5                                  ; $756b: $21 $a5 $d4
    ld a, [hl+]                                   ; $756e: $2a
    ld h, [hl]                                    ; $756f: $66
    ld l, a                                       ; $7570: $6f
    call Call_000_11ba                            ; $7571: $cd $ba $11
    bit 7, h                                      ; $7574: $cb $7c
    call nz, Call_000_0c60                        ; $7576: $c4 $60 $0c
    push hl                                       ; $7579: $e5
    ld d, h                                       ; $757a: $54
    ld e, l                                       ; $757b: $5d
    ld hl, $d409                                  ; $757c: $21 $09 $d4
    ld a, [hl+]                                   ; $757f: $2a
    ld h, [hl]                                    ; $7580: $66
    ld l, a                                       ; $7581: $6f
    push hl                                       ; $7582: $e5
    bit 7, h                                      ; $7583: $cb $7c
    call nz, Call_000_0c60                        ; $7585: $c4 $60 $0c
    call Call_000_0cb5                            ; $7588: $cd $b5 $0c
    ld hl, $d4a7                                  ; $758b: $21 $a7 $d4
    ld a, [hl+]                                   ; $758e: $2a
    ld d, [hl]                                    ; $758f: $56
    ld e, a                                       ; $7590: $5f
    ldh a, [$ab]                                  ; $7591: $f0 $ab
    or a                                          ; $7593: $b7
    jr z, jr_010_759c                             ; $7594: $28 $06

    ld a, $ff                                     ; $7596: $3e $ff
    ld h, a                                       ; $7598: $67
    ld l, a                                       ; $7599: $6f
    jr jr_010_75a4                                ; $759a: $18 $08

jr_010_759c:
    ldh a, [$a8]                                  ; $759c: $f0 $a8
    ld l, a                                       ; $759e: $6f
    ldh a, [$a9]                                  ; $759f: $f0 $a9
    ld h, a                                       ; $75a1: $67
    ldh a, [$aa]                                  ; $75a2: $f0 $aa

jr_010_75a4:
    call Call_000_0ddb                            ; $75a4: $cd $db $0d
    or a                                          ; $75a7: $b7
    jr z, jr_010_75ad                             ; $75a8: $28 $03

    ld hl, $3fff                                  ; $75aa: $21 $ff $3f

jr_010_75ad:
    pop bc                                        ; $75ad: $c1
    bit 7, b                                      ; $75ae: $cb $78
    call nz, Call_000_0c60                        ; $75b0: $c4 $60 $0c
    push hl                                       ; $75b3: $e5
    ld hl, $d49d                                  ; $75b4: $21 $9d $d4
    ld a, [hl+]                                   ; $75b7: $2a
    ld d, [hl]                                    ; $75b8: $56
    ld e, a                                       ; $75b9: $5f
    pop hl                                        ; $75ba: $e1
    add hl, de                                    ; $75bb: $19
    ld a, l                                       ; $75bc: $7d
    ld [$d4a1], a                                 ; $75bd: $ea $a1 $d4
    ld a, h                                       ; $75c0: $7c
    ld [$d4a2], a                                 ; $75c1: $ea $a2 $d4
    pop de                                        ; $75c4: $d1
    ld hl, $d40b                                  ; $75c5: $21 $0b $d4
    ld a, [hl+]                                   ; $75c8: $2a
    ld h, [hl]                                    ; $75c9: $66
    ld l, a                                       ; $75ca: $6f
    push hl                                       ; $75cb: $e5
    bit 7, h                                      ; $75cc: $cb $7c
    call nz, Call_000_0c60                        ; $75ce: $c4 $60 $0c
    call Call_000_0cb5                            ; $75d1: $cd $b5 $0c
    ld hl, $d4a7                                  ; $75d4: $21 $a7 $d4
    ld a, [hl+]                                   ; $75d7: $2a
    ld d, [hl]                                    ; $75d8: $56
    ld e, a                                       ; $75d9: $5f
    ldh a, [$ab]                                  ; $75da: $f0 $ab
    or a                                          ; $75dc: $b7
    jr z, jr_010_75e5                             ; $75dd: $28 $06

    ld a, $ff                                     ; $75df: $3e $ff
    ld h, a                                       ; $75e1: $67
    ld l, a                                       ; $75e2: $6f
    jr jr_010_75ed                                ; $75e3: $18 $08

jr_010_75e5:
    ldh a, [$a8]                                  ; $75e5: $f0 $a8
    ld l, a                                       ; $75e7: $6f
    ldh a, [$a9]                                  ; $75e8: $f0 $a9
    ld h, a                                       ; $75ea: $67
    ldh a, [$aa]                                  ; $75eb: $f0 $aa

jr_010_75ed:
    call Call_000_0ddb                            ; $75ed: $cd $db $0d
    or a                                          ; $75f0: $b7
    jr z, jr_010_75f6                             ; $75f1: $28 $03

    ld hl, $3fff                                  ; $75f3: $21 $ff $3f

jr_010_75f6:
    pop bc                                        ; $75f6: $c1
    bit 7, b                                      ; $75f7: $cb $78
    call nz, Call_000_0c60                        ; $75f9: $c4 $60 $0c
    push hl                                       ; $75fc: $e5
    ld hl, $d49f                                  ; $75fd: $21 $9f $d4
    ld a, [hl+]                                   ; $7600: $2a
    ld d, [hl]                                    ; $7601: $56
    ld e, a                                       ; $7602: $5f
    pop hl                                        ; $7603: $e1
    add hl, de                                    ; $7604: $19
    ld a, l                                       ; $7605: $7d
    ld [$d4a3], a                                 ; $7606: $ea $a3 $d4
    ld a, h                                       ; $7609: $7c
    ld [$d4a4], a                                 ; $760a: $ea $a4 $d4
    ret                                           ; $760d: $c9


Call_010_760e:
    call Call_010_771e                            ; $760e: $cd $1e $77
    ld hl, $d406                                  ; $7611: $21 $06 $d4
    ld a, [hl+]                                   ; $7614: $2a
    ld h, [hl]                                    ; $7615: $66
    ld l, a                                       ; $7616: $6f
    bit 7, h                                      ; $7617: $cb $7c
    call nz, Call_000_0c60                        ; $7619: $c4 $60 $0c
    ld de, $0400                                  ; $761c: $11 $00 $04
    call Call_000_08ac                            ; $761f: $cd $ac $08
    bit 7, h                                      ; $7622: $cb $7c
    jr z, jr_010_7629                             ; $7624: $28 $03

    call Call_010_7a63                            ; $7626: $cd $63 $7a

jr_010_7629:
    ld hl, $d4ad                                  ; $7629: $21 $ad $d4
    ld a, [hl+]                                   ; $762c: $2a
    ld d, [hl]                                    ; $762d: $56
    ld e, a                                       ; $762e: $5f
    ld hl, $d4a9                                  ; $762f: $21 $a9 $d4
    ld a, [hl+]                                   ; $7632: $2a
    ld h, [hl]                                    ; $7633: $66
    ld l, a                                       ; $7634: $6f
    add hl, de                                    ; $7635: $19
    ld a, l                                       ; $7636: $7d
    ld [$d409], a                                 ; $7637: $ea $09 $d4
    ld a, h                                       ; $763a: $7c
    ld [$d40a], a                                 ; $763b: $ea $0a $d4
    ld hl, $d4af                                  ; $763e: $21 $af $d4
    ld a, [hl+]                                   ; $7641: $2a
    ld d, [hl]                                    ; $7642: $56
    ld e, a                                       ; $7643: $5f
    ld hl, $d4ab                                  ; $7644: $21 $ab $d4
    ld a, [hl+]                                   ; $7647: $2a
    ld h, [hl]                                    ; $7648: $66
    ld l, a                                       ; $7649: $6f
    add hl, de                                    ; $764a: $19
    ld a, l                                       ; $764b: $7d
    ld [$d40b], a                                 ; $764c: $ea $0b $d4
    ld a, h                                       ; $764f: $7c
    ld [$d40c], a                                 ; $7650: $ea $0c $d4
    ld d, h                                       ; $7653: $54
    ld e, l                                       ; $7654: $5d
    ld hl, $d409                                  ; $7655: $21 $09 $d4
    ld a, [hl+]                                   ; $7658: $2a
    ld h, [hl]                                    ; $7659: $66
    ld l, a                                       ; $765a: $6f
    call Call_010_7372                            ; $765b: $cd $72 $73
    ret                                           ; $765e: $c9


Call_010_765f:
    ld hl, $d48e                                  ; $765f: $21 $8e $d4
    set 1, [hl]                                   ; $7662: $cb $ce
    rst $08                                       ; $7664: $cf

    db $58

    call Call_010_771e                            ; $7666: $cd $1e $77
    ld hl, $d4ad                                  ; $7669: $21 $ad $d4
    ld a, [hl+]                                   ; $766c: $2a
    ld d, [hl]                                    ; $766d: $56
    ld e, a                                       ; $766e: $5f
    ld hl, $d4a9                                  ; $766f: $21 $a9 $d4
    ld a, [hl+]                                   ; $7672: $2a
    ld h, [hl]                                    ; $7673: $66
    ld l, a                                       ; $7674: $6f
    call Call_000_0c60                            ; $7675: $cd $60 $0c
    add hl, de                                    ; $7678: $19
    push hl                                       ; $7679: $e5
    bit 7, h                                      ; $767a: $cb $7c
    call nz, Call_000_0c60                        ; $767c: $c4 $60 $0c
    sra h                                         ; $767f: $cb $2c
    rr l                                          ; $7681: $cb $1d
    pop bc                                        ; $7683: $c1
    bit 7, b                                      ; $7684: $cb $78
    call nz, Call_000_0c60                        ; $7686: $c4 $60 $0c
    ld a, l                                       ; $7689: $7d
    ld [$d409], a                                 ; $768a: $ea $09 $d4
    ld a, h                                       ; $768d: $7c
    ld [$d40a], a                                 ; $768e: $ea $0a $d4
    ld hl, $d4af                                  ; $7691: $21 $af $d4
    ld a, [hl+]                                   ; $7694: $2a
    ld d, [hl]                                    ; $7695: $56
    ld e, a                                       ; $7696: $5f
    ld hl, $d4ab                                  ; $7697: $21 $ab $d4
    ld a, [hl+]                                   ; $769a: $2a
    ld h, [hl]                                    ; $769b: $66
    ld l, a                                       ; $769c: $6f
    call Call_000_0c60                            ; $769d: $cd $60 $0c
    add hl, de                                    ; $76a0: $19
    push hl                                       ; $76a1: $e5
    bit 7, h                                      ; $76a2: $cb $7c
    call nz, Call_000_0c60                        ; $76a4: $c4 $60 $0c
    sra h                                         ; $76a7: $cb $2c
    rr l                                          ; $76a9: $cb $1d
    pop bc                                        ; $76ab: $c1
    bit 7, b                                      ; $76ac: $cb $78
    call nz, Call_000_0c60                        ; $76ae: $c4 $60 $0c
    ld a, l                                       ; $76b1: $7d
    ld [$d40b], a                                 ; $76b2: $ea $0b $d4
    ld a, h                                       ; $76b5: $7c
    ld [$d40c], a                                 ; $76b6: $ea $0c $d4
    ret                                           ; $76b9: $c9


Call_010_76ba:
    ld hl, $d4a3                                  ; $76ba: $21 $a3 $d4
    ld a, [hl+]                                   ; $76bd: $2a
    ld d, [hl]                                    ; $76be: $56
    ld e, a                                       ; $76bf: $5f
    push de                                       ; $76c0: $d5
    bit 7, d                                      ; $76c1: $cb $7a
    call nz, Call_000_0c67                        ; $76c3: $c4 $67 $0c
    ld hl, $d409                                  ; $76c6: $21 $09 $d4
    ld a, [hl+]                                   ; $76c9: $2a
    ld h, [hl]                                    ; $76ca: $66
    ld l, a                                       ; $76cb: $6f
    push hl                                       ; $76cc: $e5
    bit 7, h                                      ; $76cd: $cb $7c
    call nz, Call_000_0c60                        ; $76cf: $c4 $60 $0c
    call Call_000_0cb5                            ; $76d2: $cd $b5 $0c
    ld hl, $d4a1                                  ; $76d5: $21 $a1 $d4
    ld a, [hl+]                                   ; $76d8: $2a
    ld d, [hl]                                    ; $76d9: $56
    ld e, a                                       ; $76da: $5f
    push de                                       ; $76db: $d5
    bit 7, d                                      ; $76dc: $cb $7a
    call nz, Call_000_0c67                        ; $76de: $c4 $67 $0c
    ldh a, [$ab]                                  ; $76e1: $f0 $ab
    or a                                          ; $76e3: $b7
    jr z, jr_010_76ec                             ; $76e4: $28 $06

    ld a, $ff                                     ; $76e6: $3e $ff
    ld h, a                                       ; $76e8: $67
    ld l, a                                       ; $76e9: $6f
    jr jr_010_76f4                                ; $76ea: $18 $08

jr_010_76ec:
    ldh a, [$a8]                                  ; $76ec: $f0 $a8
    ld l, a                                       ; $76ee: $6f
    ldh a, [$a9]                                  ; $76ef: $f0 $a9
    ld h, a                                       ; $76f1: $67
    ldh a, [$aa]                                  ; $76f2: $f0 $aa

jr_010_76f4:
    call Call_000_0ddb                            ; $76f4: $cd $db $0d
    or a                                          ; $76f7: $b7
    jr z, jr_010_76fd                             ; $76f8: $28 $03

    ld hl, $3fff                                  ; $76fa: $21 $ff $3f

jr_010_76fd:
    xor a                                         ; $76fd: $af
    pop bc                                        ; $76fe: $c1
    sla b                                         ; $76ff: $cb $20
    adc $00                                       ; $7701: $ce $00
    pop bc                                        ; $7703: $c1
    sla b                                         ; $7704: $cb $20
    adc $00                                       ; $7706: $ce $00
    pop bc                                        ; $7708: $c1
    sla b                                         ; $7709: $cb $20
    adc $00                                       ; $770b: $ce $00
    bit 0, a                                      ; $770d: $cb $47
    call nz, Call_000_0c60                        ; $770f: $c4 $60 $0c
    ld d, h                                       ; $7712: $54
    ld e, l                                       ; $7713: $5d
    ld hl, $d40b                                  ; $7714: $21 $0b $d4
    ld a, [hl+]                                   ; $7717: $2a
    ld h, [hl]                                    ; $7718: $66
    ld l, a                                       ; $7719: $6f
    call Call_000_08ac                            ; $771a: $cd $ac $08
    ret                                           ; $771d: $c9


Call_010_771e:
    call Call_010_76ba                            ; $771e: $cd $ba $76
    push hl                                       ; $7721: $e5
    ld a, [$d4a2]                                 ; $7722: $fa $a2 $d4
    cpl                                           ; $7725: $2f
    ld b, a                                       ; $7726: $47
    ld a, [$d4a4]                                 ; $7727: $fa $a4 $d4
    ld c, a                                       ; $772a: $4f
    xor a                                         ; $772b: $af
    rl b                                          ; $772c: $cb $10
    rl a                                          ; $772e: $cb $17
    rl c                                          ; $7730: $cb $11
    rl a                                          ; $7732: $cb $17
    ld b, a                                       ; $7734: $47
    ld d, a                                       ; $7735: $57
    ld e, h                                       ; $7736: $5c
    xor a                                         ; $7737: $af
    rr d                                          ; $7738: $cb $1a
    rr d                                          ; $773a: $cb $1a
    adc $00                                       ; $773c: $ce $00
    rl e                                          ; $773e: $cb $13
    adc $00                                       ; $7740: $ce $00
    bit 0, a                                      ; $7742: $cb $47
    ld a, b                                       ; $7744: $78
    jr z, jr_010_7749                             ; $7745: $28 $02

    xor $03                                       ; $7747: $ee $03

jr_010_7749:
    ld [$d4ba], a                                 ; $7749: $ea $ba $d4
    pop hl                                        ; $774c: $e1
    bit 7, h                                      ; $774d: $cb $7c
    call nz, Call_000_0c60                        ; $774f: $c4 $60 $0c
    push hl                                       ; $7752: $e5
    ld hl, $d4a1                                  ; $7753: $21 $a1 $d4
    ld a, [hl+]                                   ; $7756: $2a
    ld h, [hl]                                    ; $7757: $66
    ld l, a                                       ; $7758: $6f
    bit 7, h                                      ; $7759: $cb $7c
    call nz, Call_000_0c60                        ; $775b: $c4 $60 $0c
    push hl                                       ; $775e: $e5
    ld hl, $d4a3                                  ; $775f: $21 $a3 $d4
    ld a, [hl+]                                   ; $7762: $2a
    ld h, [hl]                                    ; $7763: $66
    ld l, a                                       ; $7764: $6f
    bit 7, h                                      ; $7765: $cb $7c
    call nz, Call_000_0c60                        ; $7767: $c4 $60 $0c
    pop de                                        ; $776a: $d1
    call Call_000_1a03                            ; $776b: $cd $03 $1a
    pop hl                                        ; $776e: $e1
    push bc                                       ; $776f: $c5
    call Call_000_11ba                            ; $7770: $cd $ba $11
    pop de                                        ; $7773: $d1
    push hl                                       ; $7774: $e5
    ld hl, $4000                                  ; $7775: $21 $00 $40
    call Call_000_08ac                            ; $7778: $cd $ac $08
    ld b, h                                       ; $777b: $44
    ld c, l                                       ; $777c: $4d
    pop hl                                        ; $777d: $e1
    call Call_000_11ba                            ; $777e: $cd $ba $11
    ld a, [$d4ba]                                 ; $7781: $fa $ba $d4
    bit 0, a                                      ; $7784: $cb $47
    call nz, Call_000_0c60                        ; $7786: $c4 $60 $0c
    ld a, l                                       ; $7789: $7d
    ld [$d4a9], a                                 ; $778a: $ea $a9 $d4
    ld a, h                                       ; $778d: $7c
    ld [$d4aa], a                                 ; $778e: $ea $aa $d4
    ld a, [$d4ba]                                 ; $7791: $fa $ba $d4
    bit 1, a                                      ; $7794: $cb $4f
    call nz, Call_000_0c67                        ; $7796: $c4 $67 $0c
    ld a, e                                       ; $7799: $7b
    ld [$d4ab], a                                 ; $779a: $ea $ab $d4
    ld a, d                                       ; $779d: $7a
    ld [$d4ac], a                                 ; $779e: $ea $ac $d4
    push de                                       ; $77a1: $d5
    ld hl, $d40b                                  ; $77a2: $21 $0b $d4
    ld a, [hl+]                                   ; $77a5: $2a
    ld d, [hl]                                    ; $77a6: $56
    ld e, a                                       ; $77a7: $5f
    pop hl                                        ; $77a8: $e1
    call Call_000_08ac                            ; $77a9: $cd $ac $08
    ld a, l                                       ; $77ac: $7d
    ld [$d4af], a                                 ; $77ad: $ea $af $d4
    ld a, h                                       ; $77b0: $7c
    ld [$d4b0], a                                 ; $77b1: $ea $b0 $d4
    ld hl, $d409                                  ; $77b4: $21 $09 $d4
    ld a, [hl+]                                   ; $77b7: $2a
    ld d, [hl]                                    ; $77b8: $56
    ld e, a                                       ; $77b9: $5f
    ld hl, $d4a9                                  ; $77ba: $21 $a9 $d4
    ld a, [hl+]                                   ; $77bd: $2a
    ld h, [hl]                                    ; $77be: $66
    ld l, a                                       ; $77bf: $6f
    call Call_000_08ac                            ; $77c0: $cd $ac $08
    ld a, l                                       ; $77c3: $7d
    ld [$d4ad], a                                 ; $77c4: $ea $ad $d4
    ld a, h                                       ; $77c7: $7c
    ld [$d4ae], a                                 ; $77c8: $ea $ae $d4
    ret                                           ; $77cb: $c9


    ld hl, $d409                                  ; $77cc: $21 $09 $d4
    ld a, [hl+]                                   ; $77cf: $2a
    ld d, [hl]                                    ; $77d0: $56
    ld e, a                                       ; $77d1: $5f
    ld hl, $d4a9                                  ; $77d2: $21 $a9 $d4
    ld a, [hl+]                                   ; $77d5: $2a
    ld h, [hl]                                    ; $77d6: $66
    ld l, a                                       ; $77d7: $6f
    call Call_000_08ac                            ; $77d8: $cd $ac $08
    push hl                                       ; $77db: $e5
    ld hl, $d40b                                  ; $77dc: $21 $0b $d4
    ld a, [hl+]                                   ; $77df: $2a
    ld d, [hl]                                    ; $77e0: $56
    ld e, a                                       ; $77e1: $5f
    ld hl, $d4ab                                  ; $77e2: $21 $ab $d4
    ld a, [hl+]                                   ; $77e5: $2a
    ld h, [hl]                                    ; $77e6: $66
    ld l, a                                       ; $77e7: $6f
    call Call_000_08ac                            ; $77e8: $cd $ac $08
    pop de                                        ; $77eb: $d1
    call Call_010_7372                            ; $77ec: $cd $72 $73
    push hl                                       ; $77ef: $e5
    ld hl, $d4a1                                  ; $77f0: $21 $a1 $d4
    ld a, [hl+]                                   ; $77f3: $2a
    ld d, [hl]                                    ; $77f4: $56
    ld e, a                                       ; $77f5: $5f
    call Call_000_0c67                            ; $77f6: $cd $67 $0c
    ld hl, $d409                                  ; $77f9: $21 $09 $d4
    ld a, [hl+]                                   ; $77fc: $2a
    ld h, [hl]                                    ; $77fd: $66
    ld l, a                                       ; $77fe: $6f
    call Call_000_0cb5                            ; $77ff: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7802: $f0 $ab
    or a                                          ; $7804: $b7
    jr z, jr_010_780d                             ; $7805: $28 $06

    ld a, $ff                                     ; $7807: $3e $ff
    ld h, a                                       ; $7809: $67
    ld l, a                                       ; $780a: $6f
    jr jr_010_7815                                ; $780b: $18 $08

jr_010_780d:
    ldh a, [$a8]                                  ; $780d: $f0 $a8
    ld l, a                                       ; $780f: $6f
    ldh a, [$a9]                                  ; $7810: $f0 $a9
    ld h, a                                       ; $7812: $67
    ldh a, [$aa]                                  ; $7813: $f0 $aa

jr_010_7815:
    pop de                                        ; $7815: $d1
    push de                                       ; $7816: $d5
    call Call_000_0ddb                            ; $7817: $cd $db $0d
    or a                                          ; $781a: $b7
    jr z, jr_010_7820                             ; $781b: $28 $03

    ld hl, $3fff                                  ; $781d: $21 $ff $3f

jr_010_7820:
    ld a, l                                       ; $7820: $7d
    ld [$d4a9], a                                 ; $7821: $ea $a9 $d4
    ld a, h                                       ; $7824: $7c
    ld [$d4aa], a                                 ; $7825: $ea $aa $d4
    ld hl, $d4a3                                  ; $7828: $21 $a3 $d4
    ld a, [hl+]                                   ; $782b: $2a
    ld d, [hl]                                    ; $782c: $56
    ld e, a                                       ; $782d: $5f
    call Call_000_0c67                            ; $782e: $cd $67 $0c
    ld hl, $d40b                                  ; $7831: $21 $0b $d4
    ld a, [hl+]                                   ; $7834: $2a
    ld h, [hl]                                    ; $7835: $66
    ld l, a                                       ; $7836: $6f
    call Call_000_0cb5                            ; $7837: $cd $b5 $0c
    ldh a, [$ab]                                  ; $783a: $f0 $ab
    or a                                          ; $783c: $b7
    jr z, jr_010_7845                             ; $783d: $28 $06

    ld a, $ff                                     ; $783f: $3e $ff
    ld h, a                                       ; $7841: $67
    ld l, a                                       ; $7842: $6f
    jr jr_010_784d                                ; $7843: $18 $08

jr_010_7845:
    ldh a, [$a8]                                  ; $7845: $f0 $a8
    ld l, a                                       ; $7847: $6f
    ldh a, [$a9]                                  ; $7848: $f0 $a9
    ld h, a                                       ; $784a: $67
    ldh a, [$aa]                                  ; $784b: $f0 $aa

jr_010_784d:
    pop de                                        ; $784d: $d1
    call Call_000_0ddb                            ; $784e: $cd $db $0d
    or a                                          ; $7851: $b7
    jr z, jr_010_7857                             ; $7852: $28 $03

    ld hl, $3fff                                  ; $7854: $21 $ff $3f

jr_010_7857:
    ld a, l                                       ; $7857: $7d
    ld [$d4ab], a                                 ; $7858: $ea $ab $d4
    ld a, h                                       ; $785b: $7c
    ld [$d4ac], a                                 ; $785c: $ea $ac $d4
    ret                                           ; $785f: $c9


Call_010_7860:
    ld hl, $d40d                                  ; $7860: $21 $0d $d4
    ld a, [hl+]                                   ; $7863: $2a
    ld h, [hl]                                    ; $7864: $66
    ld l, a                                       ; $7865: $6f
    ld de, $ffc8                                  ; $7866: $11 $c8 $ff
    add hl, de                                    ; $7869: $19
    ld a, l                                       ; $786a: $7d
    ld [$d40d], a                                 ; $786b: $ea $0d $d4
    ld a, h                                       ; $786e: $7c
    ld [$d40e], a                                 ; $786f: $ea $0e $d4
    ld a, [$d407]                                 ; $7872: $fa $07 $d4
    sub $ec                                       ; $7875: $d6 $ec
    bit 7, a                                      ; $7877: $cb $7f
    ld a, $01                                     ; $7879: $3e $01
    jr nz, jr_010_7887                            ; $787b: $20 $0a

    ld d, h                                       ; $787d: $54
    ld e, l                                       ; $787e: $5d
    ld hl, $d406                                  ; $787f: $21 $06 $d4
    call Call_010_52da                            ; $7882: $cd $da $52
    ld a, $00                                     ; $7885: $3e $00

jr_010_7887:
    ret                                           ; $7887: $c9


Call_010_7888:
    xor a                                         ; $7888: $af
    ld hl, $d409                                  ; $7889: $21 $09 $d4
    ld [hl+], a                                   ; $788c: $22
    ld [hl+], a                                   ; $788d: $22
    ld [hl+], a                                   ; $788e: $22
    ld [hl+], a                                   ; $788f: $22
    ld hl, $d43d                                  ; $7890: $21 $3d $d4
    ld de, $d400                                  ; $7893: $11 $00 $d4
    xor a                                         ; $7896: $af
    ld [de], a                                    ; $7897: $12
    inc de                                        ; $7898: $13
    ld a, [hl+]                                   ; $7899: $2a
    ld [de], a                                    ; $789a: $12
    inc de                                        ; $789b: $13
    ld a, [hl+]                                   ; $789c: $2a
    ld [de], a                                    ; $789d: $12
    inc de                                        ; $789e: $13
    xor a                                         ; $789f: $af
    ld [de], a                                    ; $78a0: $12
    inc de                                        ; $78a1: $13
    ld a, [hl+]                                   ; $78a2: $2a
    ld [de], a                                    ; $78a3: $12
    inc de                                        ; $78a4: $13
    ld a, [hl+]                                   ; $78a5: $2a
    ld [de], a                                    ; $78a6: $12
    inc de                                        ; $78a7: $13
    call Call_000_2ed5                            ; $78a8: $cd $d5 $2e

    db $1e

    ret                                           ; $78ac: $c9


Call_010_78ad:
    ld hl, $d499                                  ; $78ad: $21 $99 $d4
    ld a, [hl+]                                   ; $78b0: $2a
    ld b, [hl]                                    ; $78b1: $46
    ld c, a                                       ; $78b2: $4f
    ld hl, $d4bb                                  ; $78b3: $21 $bb $d4
    ld a, c                                       ; $78b6: $79
    ld [hl+], a                                   ; $78b7: $22
    ld [hl], b                                    ; $78b8: $70
    ld hl, $d49b                                  ; $78b9: $21 $9b $d4
    ld a, [hl+]                                   ; $78bc: $2a
    ld b, [hl]                                    ; $78bd: $46
    ld c, a                                       ; $78be: $4f
    ld hl, $d4bd                                  ; $78bf: $21 $bd $d4
    ld a, c                                       ; $78c2: $79
    ld [hl+], a                                   ; $78c3: $22
    ld [hl], b                                    ; $78c4: $70
    xor a                                         ; $78c5: $af
    ld [$d4b8], a                                 ; $78c6: $ea $b8 $d4
    call Call_010_73ca                            ; $78c9: $cd $ca $73
    ld a, h                                       ; $78cc: $7c
    cp $02                                        ; $78cd: $fe $02
    jr nc, jr_010_78d9                            ; $78cf: $30 $08

    ld a, [$d4b8]                                 ; $78d1: $fa $b8 $d4
    or $02                                        ; $78d4: $f6 $02
    ld [$d4b8], a                                 ; $78d6: $ea $b8 $d4

jr_010_78d9:
    ld a, h                                       ; $78d9: $7c
    cp $06                                        ; $78da: $fe $06
    jp c, Jump_010_79ae                           ; $78dc: $da $ae $79

    ld a, [$d4b8]                                 ; $78df: $fa $b8 $d4
    or $01                                        ; $78e2: $f6 $01
    ld [$d4b8], a                                 ; $78e4: $ea $b8 $d4
    push hl                                       ; $78e7: $e5
    ld hl, $d499                                  ; $78e8: $21 $99 $d4
    ld a, [hl+]                                   ; $78eb: $2a
    ld h, [hl]                                    ; $78ec: $66
    ld l, a                                       ; $78ed: $6f
    ld b, h                                       ; $78ee: $44
    bit 7, h                                      ; $78ef: $cb $7c
    call nz, Call_000_0c60                        ; $78f1: $c4 $60 $0c
    ld d, $06                                     ; $78f4: $16 $06
    ld e, $00                                     ; $78f6: $1e $00
    call Call_000_0cb5                            ; $78f8: $cd $b5 $0c
    ldh a, [$ab]                                  ; $78fb: $f0 $ab
    or a                                          ; $78fd: $b7
    jr z, jr_010_7906                             ; $78fe: $28 $06

    ld a, $ff                                     ; $7900: $3e $ff
    ld h, a                                       ; $7902: $67
    ld l, a                                       ; $7903: $6f
    jr jr_010_790e                                ; $7904: $18 $08

jr_010_7906:
    ldh a, [$a8]                                  ; $7906: $f0 $a8
    ld l, a                                       ; $7908: $6f
    ldh a, [$a9]                                  ; $7909: $f0 $a9
    ld h, a                                       ; $790b: $67
    ldh a, [$aa]                                  ; $790c: $f0 $aa

jr_010_790e:
    pop de                                        ; $790e: $d1
    push de                                       ; $790f: $d5
    call Call_000_0ddb                            ; $7910: $cd $db $0d
    or a                                          ; $7913: $b7
    jr z, jr_010_7919                             ; $7914: $28 $03

    ld hl, $3fff                                  ; $7916: $21 $ff $3f

jr_010_7919:
    ld d, h                                       ; $7919: $54
    ld e, l                                       ; $791a: $5d
    bit 7, b                                      ; $791b: $cb $78
    call nz, Call_000_0c67                        ; $791d: $c4 $67 $0c
    ld a, e                                       ; $7920: $7b
    ld [$d499], a                                 ; $7921: $ea $99 $d4
    ld a, d                                       ; $7924: $7a
    ld [$d49a], a                                 ; $7925: $ea $9a $d4
    ld hl, $d43d                                  ; $7928: $21 $3d $d4
    ld a, [hl+]                                   ; $792b: $2a
    ld h, [hl]                                    ; $792c: $66
    ld l, a                                       ; $792d: $6f
    xor a                                         ; $792e: $af
    ld [$d400], a                                 ; $792f: $ea $00 $d4
    ld a, l                                       ; $7932: $7d
    ld [$d401], a                                 ; $7933: $ea $01 $d4
    ld a, h                                       ; $7936: $7c
    ld [$d402], a                                 ; $7937: $ea $02 $d4
    ld hl, $d400                                  ; $793a: $21 $00 $d4
    call Call_010_52da                            ; $793d: $cd $da $52
    ld hl, $d49b                                  ; $7940: $21 $9b $d4
    ld a, [hl+]                                   ; $7943: $2a
    ld h, [hl]                                    ; $7944: $66
    ld l, a                                       ; $7945: $6f
    ld b, h                                       ; $7946: $44
    bit 7, h                                      ; $7947: $cb $7c
    call nz, Call_000_0c60                        ; $7949: $c4 $60 $0c
    ld d, $06                                     ; $794c: $16 $06
    ld e, $00                                     ; $794e: $1e $00
    call Call_000_0cb5                            ; $7950: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7953: $f0 $ab
    or a                                          ; $7955: $b7
    jr z, jr_010_795e                             ; $7956: $28 $06

    ld a, $ff                                     ; $7958: $3e $ff
    ld h, a                                       ; $795a: $67
    ld l, a                                       ; $795b: $6f
    jr jr_010_7966                                ; $795c: $18 $08

jr_010_795e:
    ldh a, [$a8]                                  ; $795e: $f0 $a8
    ld l, a                                       ; $7960: $6f
    ldh a, [$a9]                                  ; $7961: $f0 $a9
    ld h, a                                       ; $7963: $67
    ldh a, [$aa]                                  ; $7964: $f0 $aa

jr_010_7966:
    pop de                                        ; $7966: $d1
    call Call_000_0ddb                            ; $7967: $cd $db $0d
    or a                                          ; $796a: $b7
    jr z, jr_010_7970                             ; $796b: $28 $03

    ld hl, $3fff                                  ; $796d: $21 $ff $3f

jr_010_7970:
    ld d, h                                       ; $7970: $54
    ld e, l                                       ; $7971: $5d
    bit 7, b                                      ; $7972: $cb $78
    call nz, Call_000_0c67                        ; $7974: $c4 $67 $0c
    ld a, e                                       ; $7977: $7b
    ld [$d49b], a                                 ; $7978: $ea $9b $d4
    ld a, d                                       ; $797b: $7a
    ld [$d49c], a                                 ; $797c: $ea $9c $d4
    ld hl, $d43f                                  ; $797f: $21 $3f $d4
    ld a, [hl+]                                   ; $7982: $2a
    ld h, [hl]                                    ; $7983: $66
    ld l, a                                       ; $7984: $6f
    xor a                                         ; $7985: $af
    ld [$d403], a                                 ; $7986: $ea $03 $d4
    ld a, l                                       ; $7989: $7d
    ld [$d404], a                                 ; $798a: $ea $04 $d4
    ld a, h                                       ; $798d: $7c
    ld [$d405], a                                 ; $798e: $ea $05 $d4
    ld hl, $d403                                  ; $7991: $21 $03 $d4
    call Call_010_52da                            ; $7994: $cd $da $52
    ld hl, $d49b                                  ; $7997: $21 $9b $d4
    ld a, [hl+]                                   ; $799a: $2a
    ld d, [hl]                                    ; $799b: $56
    ld e, a                                       ; $799c: $5f
    ld hl, $d499                                  ; $799d: $21 $99 $d4
    ld a, [hl+]                                   ; $79a0: $2a
    ld h, [hl]                                    ; $79a1: $66
    ld l, a                                       ; $79a2: $6f
    call Call_010_7372                            ; $79a3: $cd $72 $73
    ld a, l                                       ; $79a6: $7d
    ld [$d4a5], a                                 ; $79a7: $ea $a5 $d4
    ld a, h                                       ; $79aa: $7c
    ld [$d4a6], a                                 ; $79ab: $ea $a6 $d4

Jump_010_79ae:
    ret                                           ; $79ae: $c9


Call_010_79af:
    push bc                                       ; $79af: $c5
    push de                                       ; $79b0: $d5
    push hl                                       ; $79b1: $e5
    ld hl, $d43f                                  ; $79b2: $21 $3f $d4
    ld a, [hl+]                                   ; $79b5: $2a
    ld d, [hl]                                    ; $79b6: $56
    ld e, a                                       ; $79b7: $5f
    ld hl, $d43d                                  ; $79b8: $21 $3d $d4
    ld a, [hl+]                                   ; $79bb: $2a
    ld h, [hl]                                    ; $79bc: $66
    ld l, a                                       ; $79bd: $6f
    xor a                                         ; $79be: $af
    ld [$d415], a                                 ; $79bf: $ea $15 $d4
    ld [$d4b8], a                                 ; $79c2: $ea $b8 $d4
    ld hl, $4d45                                  ; $79c5: $21 $45 $4d
    call Call_000_2449                            ; $79c8: $cd $49 $24

Jump_010_79cb:
    ld a, [$d4b8]                                 ; $79cb: $fa $b8 $d4
    or a                                          ; $79ce: $b7
    jp z, Jump_010_7a0e                           ; $79cf: $ca $0e $7a

    ld a, [$d408]                                 ; $79d2: $fa $08 $d4
    bit 7, a                                      ; $79d5: $cb $7f
    jr nz, jr_010_79e7                            ; $79d7: $20 $0e

    xor a                                         ; $79d9: $af
    ld [$d444], a                                 ; $79da: $ea $44 $d4
    ld a, $01                                     ; $79dd: $3e $01
    ld [$d415], a                                 ; $79df: $ea $15 $d4
    ld a, $02                                     ; $79e2: $3e $02
    jp Jump_010_7a33                              ; $79e4: $c3 $33 $7a


jr_010_79e7:
    call Call_010_74a1                            ; $79e7: $cd $a1 $74
    call Call_010_750b                            ; $79ea: $cd $0b $75
    ld a, [$d4b8]                                 ; $79ed: $fa $b8 $d4
    bit 1, a                                      ; $79f0: $cb $4f
    jr nz, jr_010_79fd                            ; $79f2: $20 $09

    bit 0, a                                      ; $79f4: $cb $47
    jr z, jr_010_7a0e                             ; $79f6: $28 $16

    call Call_010_760e                            ; $79f8: $cd $0e $76
    jr jr_010_7a0e                                ; $79fb: $18 $11

jr_010_79fd:
    ld a, [$d4d5]                                 ; $79fd: $fa $d5 $d4
    or a                                          ; $7a00: $b7
    jr nz, jr_010_7a0e                            ; $7a01: $20 $0b

    ld a, [$d4b9]                                 ; $7a03: $fa $b9 $d4
    or a                                          ; $7a06: $b7
    jr nz, jr_010_7a0e                            ; $7a07: $20 $05

    or $01                                        ; $7a09: $f6 $01
    ld [$d4b9], a                                 ; $7a0b: $ea $b9 $d4

Jump_010_7a0e:
jr_010_7a0e:
    ld hl, $d409                                  ; $7a0e: $21 $09 $d4
    ld a, [hl+]                                   ; $7a11: $2a
    ld d, [hl]                                    ; $7a12: $56
    ld e, a                                       ; $7a13: $5f
    ld hl, $d400                                  ; $7a14: $21 $00 $d4
    call Call_010_52da                            ; $7a17: $cd $da $52
    ld hl, $d40b                                  ; $7a1a: $21 $0b $d4
    ld a, [hl+]                                   ; $7a1d: $2a
    ld d, [hl]                                    ; $7a1e: $56
    ld e, a                                       ; $7a1f: $5f
    ld hl, $d403                                  ; $7a20: $21 $03 $d4
    call Call_010_52da                            ; $7a23: $cd $da $52
    call Call_010_78ad                            ; $7a26: $cd $ad $78
    call Call_010_7860                            ; $7a29: $cd $60 $78
    call Call_000_2e3b                            ; $7a2c: $cd $3b $2e
    or a                                          ; $7a2f: $b7
    jp z, Jump_010_79cb                           ; $7a30: $ca $cb $79

Jump_010_7a33:
    push af                                       ; $7a33: $f5
    ld a, $01                                     ; $7a34: $3e $01
    ld hl, $4d45                                  ; $7a36: $21 $45 $4d
    call Call_000_23e8                            ; $7a39: $cd $e8 $23
    pop af                                        ; $7a3c: $f1
    pop hl                                        ; $7a3d: $e1
    pop de                                        ; $7a3e: $d1
    pop bc                                        ; $7a3f: $c1
    ret                                           ; $7a40: $c9


    sra d                                         ; $7a41: $cb $2a
    rr e                                          ; $7a43: $cb $1b
    sra d                                         ; $7a45: $cb $2a
    rr e                                          ; $7a47: $cb $1b
    sra d                                         ; $7a49: $cb $2a
    rr e                                          ; $7a4b: $cb $1b
    sra d                                         ; $7a4d: $cb $2a
    rr e                                          ; $7a4f: $cb $1b
    sra d                                         ; $7a51: $cb $2a
    rr e                                          ; $7a53: $cb $1b
    ld a, h                                       ; $7a55: $7c
    ld h, l                                       ; $7a56: $65
    ld l, $00                                     ; $7a57: $2e $00
    call Call_000_0ddb                            ; $7a59: $cd $db $0d
    or a                                          ; $7a5c: $b7
    jr z, jr_010_7a62                             ; $7a5d: $28 $03

    ld hl, $3fff                                  ; $7a5f: $21 $ff $3f

jr_010_7a62:
    ret                                           ; $7a62: $c9


Call_010_7a63:
    xor a                                         ; $7a63: $af
    ld [$d4ba], a                                 ; $7a64: $ea $ba $d4
    ld hl, $d4af                                  ; $7a67: $21 $af $d4
    ld a, [hl+]                                   ; $7a6a: $2a
    ld d, [hl]                                    ; $7a6b: $56
    ld e, a                                       ; $7a6c: $5f
    ld hl, $d4ad                                  ; $7a6d: $21 $ad $d4
    ld a, [hl+]                                   ; $7a70: $2a
    ld h, [hl]                                    ; $7a71: $66
    ld l, a                                       ; $7a72: $6f
    call Call_010_7372                            ; $7a73: $cd $72 $73
    ld a, l                                       ; $7a76: $7d
    ld [$d4b3], a                                 ; $7a77: $ea $b3 $d4
    ld a, h                                       ; $7a7a: $7c
    ld [$d4b4], a                                 ; $7a7b: $ea $b4 $d4
    ld hl, $d406                                  ; $7a7e: $21 $06 $d4
    ld a, [hl+]                                   ; $7a81: $2a
    ld h, [hl]                                    ; $7a82: $66
    ld l, a                                       ; $7a83: $6f
    bit 7, h                                      ; $7a84: $cb $7c
    call nz, Call_000_0c60                        ; $7a86: $c4 $60 $0c
    ld de, $0080                                  ; $7a89: $11 $80 $00
    call Call_000_0cb5                            ; $7a8c: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7a8f: $f0 $ab
    or a                                          ; $7a91: $b7
    jr z, jr_010_7a9a                             ; $7a92: $28 $06

    ld a, $ff                                     ; $7a94: $3e $ff
    ld h, a                                       ; $7a96: $67
    ld l, a                                       ; $7a97: $6f
    jr jr_010_7aa2                                ; $7a98: $18 $08

jr_010_7a9a:
    ldh a, [$a8]                                  ; $7a9a: $f0 $a8
    ld l, a                                       ; $7a9c: $6f
    ldh a, [$a9]                                  ; $7a9d: $f0 $a9
    ld h, a                                       ; $7a9f: $67
    ldh a, [$aa]                                  ; $7aa0: $f0 $aa

jr_010_7aa2:
    ld de, $0400                                  ; $7aa2: $11 $00 $04
    call Call_000_0ddb                            ; $7aa5: $cd $db $0d
    or a                                          ; $7aa8: $b7
    jr z, jr_010_7aae                             ; $7aa9: $28 $03

    ld hl, $3fff                                  ; $7aab: $21 $ff $3f

jr_010_7aae:
    ld b, l                                       ; $7aae: $45
    ld c, $00                                     ; $7aaf: $0e $00
    ld a, [$d4b3]                                 ; $7ab1: $fa $b3 $d4
    ld l, a                                       ; $7ab4: $6f
    ld a, [$d4b4]                                 ; $7ab5: $fa $b4 $d4
    ld h, a                                       ; $7ab8: $67
    call Call_000_11ba                            ; $7ab9: $cd $ba $11
    push hl                                       ; $7abc: $e5
    ld hl, $d40d                                  ; $7abd: $21 $0d $d4
    ld a, [hl+]                                   ; $7ac0: $2a
    ld h, [hl]                                    ; $7ac1: $66
    ld l, a                                       ; $7ac2: $6f
    sla e                                         ; $7ac3: $cb $23
    rl d                                          ; $7ac5: $cb $12
    add hl, de                                    ; $7ac7: $19
    ld a, l                                       ; $7ac8: $7d
    ld [$d40d], a                                 ; $7ac9: $ea $0d $d4
    ld a, h                                       ; $7acc: $7c
    ld [$d40e], a                                 ; $7acd: $ea $0e $d4
    pop de                                        ; $7ad0: $d1
    ld a, [$d4ba]                                 ; $7ad1: $fa $ba $d4
    ld b, d                                       ; $7ad4: $42
    rl b                                          ; $7ad5: $cb $10
    rl a                                          ; $7ad7: $cb $17
    ld [$d4ba], a                                 ; $7ad9: $ea $ba $d4
    bit 7, d                                      ; $7adc: $cb $7a
    call nz, Call_000_0c67                        ; $7ade: $c4 $67 $0c
    push de                                       ; $7ae1: $d5
    ld hl, $d4ad                                  ; $7ae2: $21 $ad $d4
    ld a, [hl+]                                   ; $7ae5: $2a
    ld h, [hl]                                    ; $7ae6: $66
    ld l, a                                       ; $7ae7: $6f
    ld a, [$d4ba]                                 ; $7ae8: $fa $ba $d4
    ld b, h                                       ; $7aeb: $44
    rl b                                          ; $7aec: $cb $10
    rl a                                          ; $7aee: $cb $17
    ld [$d4ba], a                                 ; $7af0: $ea $ba $d4
    bit 7, h                                      ; $7af3: $cb $7c
    call nz, Call_000_0c60                        ; $7af5: $c4 $60 $0c
    call Call_000_0cb5                            ; $7af8: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7afb: $f0 $ab
    or a                                          ; $7afd: $b7
    jr z, jr_010_7b06                             ; $7afe: $28 $06

    ld a, $ff                                     ; $7b00: $3e $ff
    ld h, a                                       ; $7b02: $67
    ld l, a                                       ; $7b03: $6f
    jr jr_010_7b0e                                ; $7b04: $18 $08

jr_010_7b06:
    ldh a, [$a8]                                  ; $7b06: $f0 $a8
    ld l, a                                       ; $7b08: $6f
    ldh a, [$a9]                                  ; $7b09: $f0 $a9
    ld h, a                                       ; $7b0b: $67
    ldh a, [$aa]                                  ; $7b0c: $f0 $aa

jr_010_7b0e:
    push af                                       ; $7b0e: $f5
    ld a, [$d4b3]                                 ; $7b0f: $fa $b3 $d4
    ld e, a                                       ; $7b12: $5f
    ld a, [$d4b4]                                 ; $7b13: $fa $b4 $d4
    ld d, a                                       ; $7b16: $57
    or d                                          ; $7b17: $b2
    jr nz, jr_010_7b21                            ; $7b18: $20 $07

    ld a, e                                       ; $7b1a: $7b
    or a                                          ; $7b1b: $b7
    jr nz, jr_010_7b21                            ; $7b1c: $20 $03

    ld de, $0001                                  ; $7b1e: $11 $01 $00

jr_010_7b21:
    pop af                                        ; $7b21: $f1
    call Call_000_0ddb                            ; $7b22: $cd $db $0d
    or a                                          ; $7b25: $b7
    jr z, jr_010_7b2b                             ; $7b26: $28 $03

    ld hl, $3fff                                  ; $7b28: $21 $ff $3f

jr_010_7b2b:
    ld a, [$d4ba]                                 ; $7b2b: $fa $ba $d4
    ld b, a                                       ; $7b2e: $47
    xor a                                         ; $7b2f: $af
    rr b                                          ; $7b30: $cb $18
    adc $00                                       ; $7b32: $ce $00
    rr b                                          ; $7b34: $cb $18
    adc $00                                       ; $7b36: $ce $00
    bit 0, a                                      ; $7b38: $cb $47
    call z, Call_000_0c60                         ; $7b3a: $cc $60 $0c
    ld a, l                                       ; $7b3d: $7d
    ld [$d4ad], a                                 ; $7b3e: $ea $ad $d4
    ld a, h                                       ; $7b41: $7c
    ld [$d4ae], a                                 ; $7b42: $ea $ae $d4
    pop de                                        ; $7b45: $d1
    ld hl, $d4af                                  ; $7b46: $21 $af $d4
    ld a, [hl+]                                   ; $7b49: $2a
    ld h, [hl]                                    ; $7b4a: $66
    ld l, a                                       ; $7b4b: $6f
    ld a, [$d4ba]                                 ; $7b4c: $fa $ba $d4
    rr a                                          ; $7b4f: $cb $1f
    ld b, h                                       ; $7b51: $44
    rl b                                          ; $7b52: $cb $10
    rl a                                          ; $7b54: $cb $17
    ld [$d4ba], a                                 ; $7b56: $ea $ba $d4
    bit 7, h                                      ; $7b59: $cb $7c
    call nz, Call_000_0c60                        ; $7b5b: $c4 $60 $0c
    call Call_000_0cb5                            ; $7b5e: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7b61: $f0 $ab
    or a                                          ; $7b63: $b7
    jr z, jr_010_7b6c                             ; $7b64: $28 $06

    ld a, $ff                                     ; $7b66: $3e $ff
    ld h, a                                       ; $7b68: $67
    ld l, a                                       ; $7b69: $6f
    jr jr_010_7b74                                ; $7b6a: $18 $08

jr_010_7b6c:
    ldh a, [$a8]                                  ; $7b6c: $f0 $a8
    ld l, a                                       ; $7b6e: $6f
    ldh a, [$a9]                                  ; $7b6f: $f0 $a9
    ld h, a                                       ; $7b71: $67
    ldh a, [$aa]                                  ; $7b72: $f0 $aa

jr_010_7b74:
    push af                                       ; $7b74: $f5
    ld a, [$d4b3]                                 ; $7b75: $fa $b3 $d4
    ld e, a                                       ; $7b78: $5f
    ld a, [$d4b4]                                 ; $7b79: $fa $b4 $d4
    ld d, a                                       ; $7b7c: $57
    or d                                          ; $7b7d: $b2
    jr nz, jr_010_7b87                            ; $7b7e: $20 $07

    ld a, e                                       ; $7b80: $7b
    or a                                          ; $7b81: $b7
    jr nz, jr_010_7b87                            ; $7b82: $20 $03

    ld de, $0001                                  ; $7b84: $11 $01 $00

jr_010_7b87:
    pop af                                        ; $7b87: $f1
    call Call_000_0ddb                            ; $7b88: $cd $db $0d
    or a                                          ; $7b8b: $b7
    jr z, jr_010_7b91                             ; $7b8c: $28 $03

    ld hl, $3fff                                  ; $7b8e: $21 $ff $3f

jr_010_7b91:
    ld a, [$d4ba]                                 ; $7b91: $fa $ba $d4
    ld b, a                                       ; $7b94: $47
    xor a                                         ; $7b95: $af
    rr b                                          ; $7b96: $cb $18
    adc $00                                       ; $7b98: $ce $00
    rr b                                          ; $7b9a: $cb $18
    adc $00                                       ; $7b9c: $ce $00
    bit 0, a                                      ; $7b9e: $cb $47
    call z, Call_000_0c60                         ; $7ba0: $cc $60 $0c
    ld a, l                                       ; $7ba3: $7d
    ld [$d4af], a                                 ; $7ba4: $ea $af $d4
    ld a, h                                       ; $7ba7: $7c
    ld [$d4b0], a                                 ; $7ba8: $ea $b0 $d4
    ret                                           ; $7bab: $c9


Call_010_7bac:
    rst $20                                       ; $7bac: $e7
    ld h, b                                       ; $7bad: $60
    add hl, bc                                    ; $7bae: $09
    push af                                       ; $7baf: $f5
    push bc                                       ; $7bb0: $c5
    push de                                       ; $7bb1: $d5
    push hl                                       ; $7bb2: $e5
    ld a, [$c836]                                 ; $7bb3: $fa $36 $c8
    ld d, a                                       ; $7bb6: $57
    ld a, [$c837]                                 ; $7bb7: $fa $37 $c8
    ld e, a                                       ; $7bba: $5f
    ld b, $00                                     ; $7bbb: $06 $00
    ldh a, [$9e]                                  ; $7bbd: $f0 $9e
    push af                                       ; $7bbf: $f5
    ld a, $03                                     ; $7bc0: $3e $03
    ldh [$9e], a                                  ; $7bc2: $e0 $9e
    push hl                                       ; $7bc4: $e5
    push de                                       ; $7bc5: $d5
    ld hl, $7c9b                                  ; $7bc6: $21 $9b $7c
    ld de, $0d09                                  ; $7bc9: $11 $09 $0d
    call Call_000_20b1                            ; $7bcc: $cd $b1 $20
    pop de                                        ; $7bcf: $d1
    pop hl                                        ; $7bd0: $e1
    push hl                                       ; $7bd1: $e5
    push de                                       ; $7bd2: $d5
    ld hl, $7ca2                                  ; $7bd3: $21 $a2 $7c
    ld de, $0d0b                                  ; $7bd6: $11 $0b $0d
    call Call_000_20b1                            ; $7bd9: $cd $b1 $20
    pop de                                        ; $7bdc: $d1
    pop hl                                        ; $7bdd: $e1

Jump_010_7bde:
    call Call_000_2e3b                            ; $7bde: $cd $3b $2e
    ldh a, [$91]                                  ; $7be1: $f0 $91
    and $c0                                       ; $7be3: $e6 $c0
    jr z, jr_010_7beb                             ; $7be5: $28 $04

    ld a, b                                       ; $7be7: $78
    xor $01                                       ; $7be8: $ee $01
    ld b, a                                       ; $7bea: $47

jr_010_7beb:
    ld a, b                                       ; $7beb: $78
    or a                                          ; $7bec: $b7
    jr nz, jr_010_7c10                            ; $7bed: $20 $21

    ldh a, [$91]                                  ; $7bef: $f0 $91
    bit 4, a                                      ; $7bf1: $cb $67
    jr z, jr_010_7bf8                             ; $7bf3: $28 $03

    inc d                                         ; $7bf5: $14
    jr jr_010_7bfd                                ; $7bf6: $18 $05

jr_010_7bf8:
    bit 5, a                                      ; $7bf8: $cb $6f
    jr z, jr_010_7c2f                             ; $7bfa: $28 $33

    dec d                                         ; $7bfc: $15

jr_010_7bfd:
    bit 7, d                                      ; $7bfd: $cb $7a
    jr z, jr_010_7c05                             ; $7bff: $28 $04

    ld d, $0a                                     ; $7c01: $16 $0a
    jr jr_010_7c2f                                ; $7c03: $18 $2a

jr_010_7c05:
    ld a, d                                       ; $7c05: $7a
    cp $0a                                        ; $7c06: $fe $0a
    jr c, jr_010_7c2f                             ; $7c08: $38 $25

    jr z, jr_010_7c2f                             ; $7c0a: $28 $23

    ld d, $00                                     ; $7c0c: $16 $00
    jr jr_010_7c2f                                ; $7c0e: $18 $1f

jr_010_7c10:
    ldh a, [$91]                                  ; $7c10: $f0 $91
    bit 4, a                                      ; $7c12: $cb $67
    jr z, jr_010_7c19                             ; $7c14: $28 $03

    inc e                                         ; $7c16: $1c
    jr jr_010_7c1e                                ; $7c17: $18 $05

jr_010_7c19:
    bit 5, a                                      ; $7c19: $cb $6f
    jr z, jr_010_7c2f                             ; $7c1b: $28 $12

    dec e                                         ; $7c1d: $1d

jr_010_7c1e:
    ld a, e                                       ; $7c1e: $7b
    or a                                          ; $7c1f: $b7
    jr nz, jr_010_7c26                            ; $7c20: $20 $04

    ld e, $12                                     ; $7c22: $1e $12
    jr jr_010_7c2f                                ; $7c24: $18 $09

jr_010_7c26:
    ld a, e                                       ; $7c26: $7b
    cp $12                                        ; $7c27: $fe $12
    jr c, jr_010_7c2f                             ; $7c29: $38 $04

    jr z, jr_010_7c2f                             ; $7c2b: $28 $02

    ld e, $01                                     ; $7c2d: $1e $01

jr_010_7c2f:
    ld a, b                                       ; $7c2f: $78
    or a                                          ; $7c30: $b7
    jr nz, jr_010_7c4f                            ; $7c31: $20 $1c

    push hl                                       ; $7c33: $e5
    push de                                       ; $7c34: $d5
    ld hl, $7ca7                                  ; $7c35: $21 $a7 $7c
    ld de, $0c09                                  ; $7c38: $11 $09 $0c
    call Call_000_20b1                            ; $7c3b: $cd $b1 $20
    pop de                                        ; $7c3e: $d1
    pop hl                                        ; $7c3f: $e1
    push hl                                       ; $7c40: $e5
    push de                                       ; $7c41: $d5
    ld hl, $7ca9                                  ; $7c42: $21 $a9 $7c
    ld de, $0c0b                                  ; $7c45: $11 $0b $0c
    call Call_000_20b1                            ; $7c48: $cd $b1 $20
    pop de                                        ; $7c4b: $d1
    pop hl                                        ; $7c4c: $e1
    jr jr_010_7c69                                ; $7c4d: $18 $1a

jr_010_7c4f:
    push hl                                       ; $7c4f: $e5
    push de                                       ; $7c50: $d5
    ld hl, $7ca7                                  ; $7c51: $21 $a7 $7c
    ld de, $0c0b                                  ; $7c54: $11 $0b $0c
    call Call_000_20b1                            ; $7c57: $cd $b1 $20
    pop de                                        ; $7c5a: $d1
    pop hl                                        ; $7c5b: $e1
    push hl                                       ; $7c5c: $e5
    push de                                       ; $7c5d: $d5
    ld hl, $7ca9                                  ; $7c5e: $21 $a9 $7c
    ld de, $0c09                                  ; $7c61: $11 $09 $0c
    call Call_000_20b1                            ; $7c64: $cd $b1 $20
    pop de                                        ; $7c67: $d1
    pop hl                                        ; $7c68: $e1

jr_010_7c69:
    push de                                       ; $7c69: $d5
    push af                                       ; $7c6a: $f5
    ld a, d                                       ; $7c6b: $7a
    ld de, $0e0a                                  ; $7c6c: $11 $0a $0e
    call Call_000_22d2                            ; $7c6f: $cd $d2 $22
    pop af                                        ; $7c72: $f1
    pop de                                        ; $7c73: $d1
    push de                                       ; $7c74: $d5
    push af                                       ; $7c75: $f5
    ld a, e                                       ; $7c76: $7b
    ld de, $0e0c                                  ; $7c77: $11 $0c $0e
    call Call_000_22d2                            ; $7c7a: $cd $d2 $22
    pop af                                        ; $7c7d: $f1
    pop de                                        ; $7c7e: $d1
    ldh a, [$91]                                  ; $7c7f: $f0 $91
    bit 0, a                                      ; $7c81: $cb $47
    jr nz, jr_010_7c8b                            ; $7c83: $20 $06

    call Call_000_0a61                            ; $7c85: $cd $61 $0a
    jp Jump_010_7bde                              ; $7c88: $c3 $de $7b


jr_010_7c8b:
    pop af                                        ; $7c8b: $f1
    ldh [$9e], a                                  ; $7c8c: $e0 $9e
    ld a, d                                       ; $7c8e: $7a
    ld [$c836], a                                 ; $7c8f: $ea $36 $c8
    ld a, e                                       ; $7c92: $7b
    ld [$c837], a                                 ; $7c93: $ea $37 $c8
    pop hl                                        ; $7c96: $e1
    pop de                                        ; $7c97: $d1
    pop bc                                        ; $7c98: $c1
    pop af                                        ; $7c99: $f1
    ret                                           ; $7c9a: $c9


    ld b, e                                       ; $7c9b: $43
    ld c, a                                       ; $7c9c: $4f
    ld d, l                                       ; $7c9d: $55
    ld d, d                                       ; $7c9e: $52
    ld d, e                                       ; $7c9f: $53
    ld b, l                                       ; $7ca0: $45
    nop                                           ; $7ca1: $00
    ld c, b                                       ; $7ca2: $48
    ld c, a                                       ; $7ca3: $4f
    ld c, h                                       ; $7ca4: $4c
    ld b, l                                       ; $7ca5: $45
    nop                                           ; $7ca6: $00
    ld a, $00                                     ; $7ca7: $3e $00
    jr nz, jr_010_7cab                            ; $7ca9: $20 $00

Call_010_7cab:
jr_010_7cab:
    ld hl, $d4b9                                  ; $7cab: $21 $b9 $d4
    bit 1, [hl]                                   ; $7cae: $cb $4e
    jr z, jr_010_7cb4                             ; $7cb0: $28 $02

    xor a                                         ; $7cb2: $af
    ret                                           ; $7cb3: $c9


jr_010_7cb4:
    ld hl, $d40b                                  ; $7cb4: $21 $0b $d4
    ld a, [hl+]                                   ; $7cb7: $2a
    ld d, [hl]                                    ; $7cb8: $56
    ld e, a                                       ; $7cb9: $5f
    ld hl, $d409                                  ; $7cba: $21 $09 $d4
    ld a, [hl+]                                   ; $7cbd: $2a
    ld h, [hl]                                    ; $7cbe: $66
    ld l, a                                       ; $7cbf: $6f
    call Call_010_7372                            ; $7cc0: $cd $72 $73
    ld a, h                                       ; $7cc3: $7c
    cp $03                                        ; $7cc4: $fe $03
    ld a, $00                                     ; $7cc6: $3e $00
    jp nc, Jump_010_7e67                          ; $7cc8: $d2 $67 $7e

    ld hl, $d43d                                  ; $7ccb: $21 $3d $d4
    ld a, [hl+]                                   ; $7cce: $2a
    ld d, [hl]                                    ; $7ccf: $56
    ld e, a                                       ; $7cd0: $5f
    ld hl, $d401                                  ; $7cd1: $21 $01 $d4
    ld a, [hl+]                                   ; $7cd4: $2a
    ld h, [hl]                                    ; $7cd5: $66
    ld l, a                                       ; $7cd6: $6f
    call Call_000_08ac                            ; $7cd7: $cd $ac $08
    push hl                                       ; $7cda: $e5
    ld hl, $d43f                                  ; $7cdb: $21 $3f $d4
    ld a, [hl+]                                   ; $7cde: $2a
    ld d, [hl]                                    ; $7cdf: $56
    ld e, a                                       ; $7ce0: $5f
    ld hl, $d404                                  ; $7ce1: $21 $04 $d4
    ld a, [hl+]                                   ; $7ce4: $2a
    ld h, [hl]                                    ; $7ce5: $66
    ld l, a                                       ; $7ce6: $6f
    call Call_000_08ac                            ; $7ce7: $cd $ac $08
    pop de                                        ; $7cea: $d1
    call Call_010_7372                            ; $7ceb: $cd $72 $73
    ld a, h                                       ; $7cee: $7c
    or l                                          ; $7cef: $b5
    ld a, $00                                     ; $7cf0: $3e $00
    jp nz, Jump_010_7e67                          ; $7cf2: $c2 $67 $7e

    ld hl, $d43d                                  ; $7cf5: $21 $3d $d4
    ld a, [hl+]                                   ; $7cf8: $2a
    ld d, [hl]                                    ; $7cf9: $56
    ld e, a                                       ; $7cfa: $5f
    ld d, e                                       ; $7cfb: $53
    ld e, $00                                     ; $7cfc: $1e $00
    ld hl, $d400                                  ; $7cfe: $21 $00 $d4
    ld a, [hl+]                                   ; $7d01: $2a
    ld h, [hl]                                    ; $7d02: $66
    ld l, a                                       ; $7d03: $6f
    call Call_000_08ac                            ; $7d04: $cd $ac $08
    bit 7, h                                      ; $7d07: $cb $7c
    call nz, Call_000_0c60                        ; $7d09: $c4 $60 $0c
    push hl                                       ; $7d0c: $e5
    ld d, h                                       ; $7d0d: $54
    ld a, l                                       ; $7d0e: $7d
    ld hl, $d4b3                                  ; $7d0f: $21 $b3 $d4
    ld [hl+], a                                   ; $7d12: $22
    ld [hl], d                                    ; $7d13: $72
    pop hl                                        ; $7d14: $e1
    ld d, $0b                                     ; $7d15: $16 $0b
    ld e, $00                                     ; $7d17: $1e $00
    call Call_000_08ac                            ; $7d19: $cd $ac $08
    bit 7, h                                      ; $7d1c: $cb $7c
    ld a, $00                                     ; $7d1e: $3e $00
    jp z, Jump_010_7e67                           ; $7d20: $ca $67 $7e

    ld hl, $d43f                                  ; $7d23: $21 $3f $d4
    ld a, [hl+]                                   ; $7d26: $2a
    ld d, [hl]                                    ; $7d27: $56
    ld e, a                                       ; $7d28: $5f
    ld d, e                                       ; $7d29: $53
    ld e, $00                                     ; $7d2a: $1e $00
    ld hl, $d403                                  ; $7d2c: $21 $03 $d4
    ld a, [hl+]                                   ; $7d2f: $2a
    ld h, [hl]                                    ; $7d30: $66
    ld l, a                                       ; $7d31: $6f
    call Call_000_08ac                            ; $7d32: $cd $ac $08
    bit 7, h                                      ; $7d35: $cb $7c
    call nz, Call_000_0c60                        ; $7d37: $c4 $60 $0c
    ld b, h                                       ; $7d3a: $44
    ld c, l                                       ; $7d3b: $4d
    ld d, $0d                                     ; $7d3c: $16 $0d
    ld e, $00                                     ; $7d3e: $1e $00
    call Call_000_08ac                            ; $7d40: $cd $ac $08
    bit 7, h                                      ; $7d43: $cb $7c
    ld a, $00                                     ; $7d45: $3e $00
    jp z, Jump_010_7e67                           ; $7d47: $ca $67 $7e

    ld hl, $d4b3                                  ; $7d4a: $21 $b3 $d4
    ld a, [hl+]                                   ; $7d4d: $2a
    ld h, [hl]                                    ; $7d4e: $66
    ld l, a                                       ; $7d4f: $6f
    ld d, b                                       ; $7d50: $50
    ld e, c                                       ; $7d51: $59
    call Call_010_7372                            ; $7d52: $cd $72 $73
    ld d, $10                                     ; $7d55: $16 $10
    ld e, $00                                     ; $7d57: $1e $00
    call Call_000_08ac                            ; $7d59: $cd $ac $08
    bit 7, h                                      ; $7d5c: $cb $7c
    call nz, Call_000_0c60                        ; $7d5e: $c4 $60 $0c
    sra h                                         ; $7d61: $cb $2c
    rr l                                          ; $7d63: $cb $1d
    sra h                                         ; $7d65: $cb $2c
    rr l                                          ; $7d67: $cb $1d
    ld a, h                                       ; $7d69: $7c
    ld [$d4a5], a                                 ; $7d6a: $ea $a5 $d4
    ld a, $00                                     ; $7d6d: $3e $00
    ld [$d4a6], a                                 ; $7d6f: $ea $a6 $d4
    ld hl, $d43d                                  ; $7d72: $21 $3d $d4
    ld a, [hl+]                                   ; $7d75: $2a
    ld d, [hl]                                    ; $7d76: $56
    ld e, a                                       ; $7d77: $5f
    push de                                       ; $7d78: $d5
    bit 7, d                                      ; $7d79: $cb $7a
    call nz, Call_000_0c67                        ; $7d7b: $c4 $67 $0c
    ld d, e                                       ; $7d7e: $53
    ld e, $00                                     ; $7d7f: $1e $00
    pop hl                                        ; $7d81: $e1
    bit 7, h                                      ; $7d82: $cb $7c
    call nz, Call_000_0c67                        ; $7d84: $c4 $67 $0c
    push de                                       ; $7d87: $d5
    ld hl, $d400                                  ; $7d88: $21 $00 $d4
    ld a, [hl+]                                   ; $7d8b: $2a
    ld d, [hl]                                    ; $7d8c: $56
    ld e, a                                       ; $7d8d: $5f
    pop hl                                        ; $7d8e: $e1
    call Call_000_08ac                            ; $7d8f: $cd $ac $08
    push hl                                       ; $7d92: $e5
    ld hl, $d43f                                  ; $7d93: $21 $3f $d4
    ld a, [hl+]                                   ; $7d96: $2a
    ld d, [hl]                                    ; $7d97: $56
    ld e, a                                       ; $7d98: $5f
    push de                                       ; $7d99: $d5
    bit 7, d                                      ; $7d9a: $cb $7a
    call nz, Call_000_0c67                        ; $7d9c: $c4 $67 $0c
    ld d, e                                       ; $7d9f: $53
    ld e, $00                                     ; $7da0: $1e $00
    pop hl                                        ; $7da2: $e1
    bit 7, h                                      ; $7da3: $cb $7c
    call nz, Call_000_0c67                        ; $7da5: $c4 $67 $0c
    push de                                       ; $7da8: $d5
    ld hl, $d403                                  ; $7da9: $21 $03 $d4
    ld a, [hl+]                                   ; $7dac: $2a
    ld d, [hl]                                    ; $7dad: $56
    ld e, a                                       ; $7dae: $5f
    pop hl                                        ; $7daf: $e1
    call Call_000_08ac                            ; $7db0: $cd $ac $08
    pop de                                        ; $7db3: $d1
    ld a, e                                       ; $7db4: $7b
    ld [$d499], a                                 ; $7db5: $ea $99 $d4
    ld a, d                                       ; $7db8: $7a
    ld [$d49a], a                                 ; $7db9: $ea $9a $d4
    ld a, l                                       ; $7dbc: $7d
    ld [$d49b], a                                 ; $7dbd: $ea $9b $d4
    ld a, h                                       ; $7dc0: $7c
    ld [$d49c], a                                 ; $7dc1: $ea $9c $d4
    call Call_010_7372                            ; $7dc4: $cd $72 $73
    push hl                                       ; $7dc7: $e5
    ld hl, $d499                                  ; $7dc8: $21 $99 $d4
    ld a, [hl+]                                   ; $7dcb: $2a
    ld d, [hl]                                    ; $7dcc: $56
    ld e, a                                       ; $7dcd: $5f
    ld hl, $d4a5                                  ; $7dce: $21 $a5 $d4
    ld a, [hl+]                                   ; $7dd1: $2a
    ld h, [hl]                                    ; $7dd2: $66
    ld l, a                                       ; $7dd3: $6f
    ld bc, $0004                                  ; $7dd4: $01 $04 $00
    add hl, bc                                    ; $7dd7: $09
    bit 7, d                                      ; $7dd8: $cb $7a
    call nz, Call_000_0c67                        ; $7dda: $c4 $67 $0c
    call Call_000_0cb5                            ; $7ddd: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7de0: $f0 $ab
    or a                                          ; $7de2: $b7
    jr z, jr_010_7deb                             ; $7de3: $28 $06

    ld a, $ff                                     ; $7de5: $3e $ff
    ld h, a                                       ; $7de7: $67
    ld l, a                                       ; $7de8: $6f
    jr jr_010_7df3                                ; $7de9: $18 $08

jr_010_7deb:
    ldh a, [$a8]                                  ; $7deb: $f0 $a8
    ld l, a                                       ; $7ded: $6f
    ldh a, [$a9]                                  ; $7dee: $f0 $a9
    ld h, a                                       ; $7df0: $67
    ldh a, [$aa]                                  ; $7df1: $f0 $aa

jr_010_7df3:
    pop de                                        ; $7df3: $d1
    push de                                       ; $7df4: $d5
    call Call_000_0ddb                            ; $7df5: $cd $db $0d
    or a                                          ; $7df8: $b7
    jr z, jr_010_7dfe                             ; $7df9: $28 $03

    ld hl, $3fff                                  ; $7dfb: $21 $ff $3f

jr_010_7dfe:
    ld a, [$d49a]                                 ; $7dfe: $fa $9a $d4
    bit 7, a                                      ; $7e01: $cb $7f
    call nz, Call_000_0c60                        ; $7e03: $c4 $60 $0c
    ld d, h                                       ; $7e06: $54
    ld e, l                                       ; $7e07: $5d
    ld hl, $d409                                  ; $7e08: $21 $09 $d4
    ld a, [hl+]                                   ; $7e0b: $2a
    ld h, [hl]                                    ; $7e0c: $66
    ld l, a                                       ; $7e0d: $6f
    add hl, de                                    ; $7e0e: $19
    ld a, l                                       ; $7e0f: $7d
    ld [$d409], a                                 ; $7e10: $ea $09 $d4
    ld a, h                                       ; $7e13: $7c
    ld [$d40a], a                                 ; $7e14: $ea $0a $d4
    ld hl, $d49b                                  ; $7e17: $21 $9b $d4
    ld a, [hl+]                                   ; $7e1a: $2a
    ld d, [hl]                                    ; $7e1b: $56
    ld e, a                                       ; $7e1c: $5f
    ld hl, $d4a5                                  ; $7e1d: $21 $a5 $d4
    ld a, [hl+]                                   ; $7e20: $2a
    ld h, [hl]                                    ; $7e21: $66
    ld l, a                                       ; $7e22: $6f
    ld bc, $0004                                  ; $7e23: $01 $04 $00
    add hl, bc                                    ; $7e26: $09
    bit 7, d                                      ; $7e27: $cb $7a
    call nz, Call_000_0c67                        ; $7e29: $c4 $67 $0c
    call Call_000_0cb5                            ; $7e2c: $cd $b5 $0c
    ldh a, [$ab]                                  ; $7e2f: $f0 $ab
    or a                                          ; $7e31: $b7
    jr z, jr_010_7e3a                             ; $7e32: $28 $06

    ld a, $ff                                     ; $7e34: $3e $ff
    ld h, a                                       ; $7e36: $67
    ld l, a                                       ; $7e37: $6f
    jr jr_010_7e42                                ; $7e38: $18 $08

jr_010_7e3a:
    ldh a, [$a8]                                  ; $7e3a: $f0 $a8
    ld l, a                                       ; $7e3c: $6f
    ldh a, [$a9]                                  ; $7e3d: $f0 $a9
    ld h, a                                       ; $7e3f: $67
    ldh a, [$aa]                                  ; $7e40: $f0 $aa

jr_010_7e42:
    pop de                                        ; $7e42: $d1
    call Call_000_0ddb                            ; $7e43: $cd $db $0d
    or a                                          ; $7e46: $b7
    jr z, jr_010_7e4c                             ; $7e47: $28 $03

    ld hl, $3fff                                  ; $7e49: $21 $ff $3f

jr_010_7e4c:
    ld a, [$d49c]                                 ; $7e4c: $fa $9c $d4
    bit 7, a                                      ; $7e4f: $cb $7f
    call nz, Call_000_0c60                        ; $7e51: $c4 $60 $0c
    ld d, h                                       ; $7e54: $54
    ld e, l                                       ; $7e55: $5d
    ld hl, $d40b                                  ; $7e56: $21 $0b $d4
    ld a, [hl+]                                   ; $7e59: $2a
    ld h, [hl]                                    ; $7e5a: $66
    ld l, a                                       ; $7e5b: $6f
    add hl, de                                    ; $7e5c: $19
    ld a, l                                       ; $7e5d: $7d
    ld [$d40b], a                                 ; $7e5e: $ea $0b $d4
    ld a, h                                       ; $7e61: $7c
    ld [$d40c], a                                 ; $7e62: $ea $0c $d4
    ld a, $01                                     ; $7e65: $3e $01

Jump_010_7e67:
    ret                                           ; $7e67: $c9


    push af                                       ; $7e68: $f5
    push bc                                       ; $7e69: $c5
    push de                                       ; $7e6a: $d5
    ldh a, [$96]                                  ; $7e6b: $f0 $96
    push af                                       ; $7e6d: $f5
    ld a, $06                                     ; $7e6e: $3e $06
    ldh [$96], a                                  ; $7e70: $e0 $96
    ldh [rSVBK], a                                ; $7e72: $e0 $70
    push hl                                       ; $7e74: $e5
    ld hl, $d43d                                  ; $7e75: $21 $3d $d4
    ld a, [hl+]                                   ; $7e78: $2a
    ld d, [hl]                                    ; $7e79: $56
    ld e, a                                       ; $7e7a: $5f
    ld hl, $d401                                  ; $7e7b: $21 $01 $d4
    ld a, [hl+]                                   ; $7e7e: $2a
    ld h, [hl]                                    ; $7e7f: $66
    ld l, a                                       ; $7e80: $6f
    call Call_000_08ac                            ; $7e81: $cd $ac $08
    push hl                                       ; $7e84: $e5
    ld hl, $d43f                                  ; $7e85: $21 $3f $d4
    ld a, [hl+]                                   ; $7e88: $2a
    ld d, [hl]                                    ; $7e89: $56
    ld e, a                                       ; $7e8a: $5f
    ld hl, $d404                                  ; $7e8b: $21 $04 $d4
    ld a, [hl+]                                   ; $7e8e: $2a
    ld h, [hl]                                    ; $7e8f: $66
    ld l, a                                       ; $7e90: $6f
    call Call_000_08ac                            ; $7e91: $cd $ac $08
    pop de                                        ; $7e94: $d1
    call Call_010_7372                            ; $7e95: $cd $72 $73
    ld d, h                                       ; $7e98: $54
    ld e, l                                       ; $7e99: $5d
    pop hl                                        ; $7e9a: $e1
    call Call_000_08ac                            ; $7e9b: $cd $ac $08
    bit 7, h                                      ; $7e9e: $cb $7c
    ld a, $01                                     ; $7ea0: $3e $01
    jr nz, jr_010_7ea5                            ; $7ea2: $20 $01

    xor a                                         ; $7ea4: $af

jr_010_7ea5:
    pop de                                        ; $7ea5: $d1
    pop bc                                        ; $7ea6: $c1
    pop af                                        ; $7ea7: $f1
    ret                                           ; $7ea8: $c9


    push bc                                       ; $7ea9: $c5
    push de                                       ; $7eaa: $d5
    push hl                                       ; $7eab: $e5
    ld hl, $d4bb                                  ; $7eac: $21 $bb $d4
    ld a, [hl+]                                   ; $7eaf: $2a
    ld d, [hl]                                    ; $7eb0: $56
    ld e, a                                       ; $7eb1: $5f
    ld hl, $d499                                  ; $7eb2: $21 $99 $d4
    ld a, [hl+]                                   ; $7eb5: $2a
    ld h, [hl]                                    ; $7eb6: $66
    ld l, a                                       ; $7eb7: $6f
    ld a, d                                       ; $7eb8: $7a
    or e                                          ; $7eb9: $b3
    jr nz, jr_010_7ebe                            ; $7eba: $20 $02

    ld d, h                                       ; $7ebc: $54
    ld e, l                                       ; $7ebd: $5d

jr_010_7ebe:
    ld b, $01                                     ; $7ebe: $06 $01
    xor a                                         ; $7ec0: $af
    sla d                                         ; $7ec1: $cb $22
    adc $00                                       ; $7ec3: $ce $00
    sla h                                         ; $7ec5: $cb $24
    adc $00                                       ; $7ec7: $ce $00
    bit 0, a                                      ; $7ec9: $cb $47
    jr nz, jr_010_7ecf                            ; $7ecb: $20 $02

    ld b, $00                                     ; $7ecd: $06 $00

jr_010_7ecf:
    ld hl, $d4bd                                  ; $7ecf: $21 $bd $d4
    ld a, [hl+]                                   ; $7ed2: $2a
    ld d, [hl]                                    ; $7ed3: $56
    ld e, a                                       ; $7ed4: $5f
    ld hl, $d49b                                  ; $7ed5: $21 $9b $d4
    ld a, [hl+]                                   ; $7ed8: $2a
    ld h, [hl]                                    ; $7ed9: $66
    ld l, a                                       ; $7eda: $6f
    ld a, d                                       ; $7edb: $7a
    or e                                          ; $7edc: $b3
    jr nz, jr_010_7ee1                            ; $7edd: $20 $02

    ld d, h                                       ; $7edf: $54
    ld e, l                                       ; $7ee0: $5d

jr_010_7ee1:
    ld c, $01                                     ; $7ee1: $0e $01
    xor a                                         ; $7ee3: $af
    sla d                                         ; $7ee4: $cb $22
    adc $00                                       ; $7ee6: $ce $00
    sla h                                         ; $7ee8: $cb $24
    adc $00                                       ; $7eea: $ce $00
    bit 0, a                                      ; $7eec: $cb $47
    jr nz, jr_010_7ef2                            ; $7eee: $20 $02

    ld c, $00                                     ; $7ef0: $0e $00

jr_010_7ef2:
    ld a, b                                       ; $7ef2: $78
    add c                                         ; $7ef3: $81
    sra a                                         ; $7ef4: $cb $2f
    or a                                          ; $7ef6: $b7
    jr z, jr_010_7f21                             ; $7ef7: $28 $28

    ld hl, $d43d                                  ; $7ef9: $21 $3d $d4
    ld a, [hl+]                                   ; $7efc: $2a
    ld d, [hl]                                    ; $7efd: $56
    ld e, a                                       ; $7efe: $5f
    ld hl, $d401                                  ; $7eff: $21 $01 $d4
    ld a, e                                       ; $7f02: $7b
    ld [hl+], a                                   ; $7f03: $22
    ld [hl], d                                    ; $7f04: $72
    inc hl                                        ; $7f05: $23
    xor a                                         ; $7f06: $af
    ld [hl], a                                    ; $7f07: $77
    ld hl, $d43f                                  ; $7f08: $21 $3f $d4
    ld a, [hl+]                                   ; $7f0b: $2a
    ld d, [hl]                                    ; $7f0c: $56
    ld e, a                                       ; $7f0d: $5f
    ld hl, $d404                                  ; $7f0e: $21 $04 $d4
    ld a, e                                       ; $7f11: $7b
    ld [hl+], a                                   ; $7f12: $22
    ld [hl], d                                    ; $7f13: $72
    inc hl                                        ; $7f14: $23
    xor a                                         ; $7f15: $af
    ld [hl], a                                    ; $7f16: $77
    ld a, [$d4b8]                                 ; $7f17: $fa $b8 $d4
    or $02                                        ; $7f1a: $f6 $02
    ld [$d4b8], a                                 ; $7f1c: $ea $b8 $d4
    ld a, $01                                     ; $7f1f: $3e $01

jr_010_7f21:
    pop hl                                        ; $7f21: $e1
    pop de                                        ; $7f22: $d1
    pop bc                                        ; $7f23: $c1
    ret                                           ; $7f24: $c9


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
