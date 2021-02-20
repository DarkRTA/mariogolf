; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    db $b7, $4a, $d6, $4a

    ld a, d                                       ; $4004: $7a
    ld c, e                                       ; $4005: $4b

jr_00f_4006:
    ld [hl+], a                                   ; $4006: $22
    dec c                                         ; $4007: $0d
    jr nz, jr_00f_4006                            ; $4008: $20 $fc

    ret                                           ; $400a: $c9


Call_00f_400b:
    ld a, $06                                     ; $400b: $3e $06
    ldh [$96], a                                  ; $400d: $e0 $96
    ldh [rSVBK], a                                ; $400f: $e0 $70
    ld a, l                                       ; $4011: $7d
    ld [$d207], a                                 ; $4012: $ea $07 $d2
    ld a, h                                       ; $4015: $7c
    ld [$d208], a                                 ; $4016: $ea $08 $d2
    ld a, c                                       ; $4019: $79
    ld [$d200], a                                 ; $401a: $ea $00 $d2
    ld a, b                                       ; $401d: $78
    ld [$d201], a                                 ; $401e: $ea $01 $d2
    ld a, e                                       ; $4021: $7b
    ldh [$b0], a                                  ; $4022: $e0 $b0
    ld a, d                                       ; $4024: $7a
    ldh [$b2], a                                  ; $4025: $e0 $b2
    ld a, $10                                     ; $4027: $3e $10
    ldh [$b4], a                                  ; $4029: $e0 $b4
    push bc                                       ; $402b: $c5
    call Call_000_0341                            ; $402c: $cd $41 $03
    call Call_000_23b6                            ; $402f: $cd $b6 $23
    xor a                                         ; $4032: $af
    ldh [$8a], a                                  ; $4033: $e0 $8a
    ldh [$8b], a                                  ; $4035: $e0 $8b
    ld a, $01                                     ; $4037: $3e $01
    ldh [$96], a                                  ; $4039: $e0 $96
    ldh [rSVBK], a                                ; $403b: $e0 $70
    pop hl                                        ; $403d: $e1
    inc hl                                        ; $403e: $23
    inc hl                                        ; $403f: $23
    inc hl                                        ; $4040: $23
    inc hl                                        ; $4041: $23
    push hl                                       ; $4042: $e5
    ld a, [hl+]                                   ; $4043: $2a
    ld h, [hl]                                    ; $4044: $66
    ld l, a                                       ; $4045: $6f
    ld de, $d000                                  ; $4046: $11 $00 $d0
    call Call_000_1f2f                            ; $4049: $cd $2f $1f
    ld hl, $d000                                  ; $404c: $21 $00 $d0
    ld de, $8e00                                  ; $404f: $11 $00 $8e
    ld c, $14                                     ; $4052: $0e $14
    call Call_000_04db                            ; $4054: $cd $db $04
    pop hl                                        ; $4057: $e1
    inc hl                                        ; $4058: $23
    inc hl                                        ; $4059: $23
    ld a, [hl+]                                   ; $405a: $2a
    ld h, [hl]                                    ; $405b: $66
    ld l, a                                       ; $405c: $6f
    ld de, $0c01                                  ; $405d: $11 $01 $0c
    call Call_000_0595                            ; $4060: $cd $95 $05
    ld hl, $4840                                  ; $4063: $21 $40 $48
    ld de, $d000                                  ; $4066: $11 $00 $d0
    call Call_000_1f2f                            ; $4069: $cd $2f $1f
    ld hl, $4892                                  ; $406c: $21 $92 $48
    ld de, $d100                                  ; $406f: $11 $00 $d1
    call Call_000_1f2f                            ; $4072: $cd $2f $1f
    ld hl, $48d5                                  ; $4075: $21 $d5 $48
    ld de, $d400                                  ; $4078: $11 $00 $d4
    call Call_000_1f2f                            ; $407b: $cd $2f $1f
    ld h, $01                                     ; $407e: $26 $01
    ld l, $02                                     ; $4080: $2e $02
    call Call_00f_4613                            ; $4082: $cd $13 $46
    ld de, $d700                                  ; $4085: $11 $00 $d7
    call Call_000_1f2f                            ; $4088: $cd $2f $1f
    ld h, $ff                                     ; $408b: $26 $ff
    ld l, $02                                     ; $408d: $2e $02
    call Call_00f_4613                            ; $408f: $cd $13 $46
    ld de, $db00                                  ; $4092: $11 $00 $db
    call Call_000_1f2f                            ; $4095: $cd $2f $1f
    ld h, $00                                     ; $4098: $26 $00
    ld l, $02                                     ; $409a: $2e $02
    call Call_00f_4613                            ; $409c: $cd $13 $46
    ld de, $d900                                  ; $409f: $11 $00 $d9
    call Call_000_1f2f                            ; $40a2: $cd $2f $1f
    ld a, $01                                     ; $40a5: $3e $01
    ldh [rVBK], a                                 ; $40a7: $e0 $4f
    ld hl, $d000                                  ; $40a9: $21 $00 $d0
    ld de, $9000                                  ; $40ac: $11 $00 $90
    ld c, $10                                     ; $40af: $0e $10
    call Call_000_2096                            ; $40b1: $cd $96 $20
    ld hl, $d100                                  ; $40b4: $21 $00 $d1
    ld de, $9800                                  ; $40b7: $11 $00 $98
    ld c, $24                                     ; $40ba: $0e $24
    call Call_000_2096                            ; $40bc: $cd $96 $20
    xor a                                         ; $40bf: $af
    ldh [rVBK], a                                 ; $40c0: $e0 $4f
    ld hl, $d400                                  ; $40c2: $21 $00 $d4
    ld de, $9800                                  ; $40c5: $11 $00 $98
    ld c, $24                                     ; $40c8: $0e $24
    call Call_000_2096                            ; $40ca: $cd $96 $20
    ld hl, $4911                                  ; $40cd: $21 $11 $49
    ld de, $0103                                  ; $40d0: $11 $03 $01
    call Call_000_0595                            ; $40d3: $cd $95 $05
    ld hl, $4911                                  ; $40d6: $21 $11 $49
    ld de, $0903                                  ; $40d9: $11 $03 $09
    call Call_000_0595                            ; $40dc: $cd $95 $05
    ld h, $00                                     ; $40df: $26 $00
    ld l, $0a                                     ; $40e1: $2e $0a
    call Call_00f_4613                            ; $40e3: $cd $13 $46
    ld de, $0404                                  ; $40e6: $11 $04 $04
    call Call_000_0595                            ; $40e9: $cd $95 $05
    ld a, $01                                     ; $40ec: $3e $01
    ldh [rVBK], a                                 ; $40ee: $e0 $4f
    ld hl, $de00                                  ; $40f0: $21 $00 $de
    ld de, $9100                                  ; $40f3: $11 $00 $91
    ld c, $20                                     ; $40f6: $0e $20
    call Call_000_2096                            ; $40f8: $cd $96 $20
    ld hl, $4680                                  ; $40fb: $21 $80 $46
    ld de, $9300                                  ; $40fe: $11 $00 $93
    ld c, $08                                     ; $4101: $0e $08
    call Call_000_2096                            ; $4103: $cd $96 $20
    ld hl, $d900                                  ; $4106: $21 $00 $d9
    ld de, $9380                                  ; $4109: $11 $80 $93
    ld c, $48                                     ; $410c: $0e $48
    call Call_000_2096                            ; $410e: $cd $96 $20
    ld hl, $dd80                                  ; $4111: $21 $80 $dd
    ld de, $8800                                  ; $4114: $11 $00 $88
    ld c, $08                                     ; $4117: $0e $08
    call Call_000_2096                            ; $4119: $cd $96 $20
    ld hl, $4680                                  ; $411c: $21 $80 $46
    ld de, $8880                                  ; $411f: $11 $80 $88
    ld c, $08                                     ; $4122: $0e $08
    call Call_000_2096                            ; $4124: $cd $96 $20
    ld hl, $d700                                  ; $4127: $21 $00 $d7
    ld de, $8900                                  ; $412a: $11 $00 $89
    ld c, $20                                     ; $412d: $0e $20
    call Call_000_2096                            ; $412f: $cd $96 $20
    ld hl, $4700                                  ; $4132: $21 $00 $47
    ld de, $a700                                  ; $4135: $11 $00 $a7
    ld c, $04                                     ; $4138: $0e $04
    call Call_000_2096                            ; $413a: $cd $96 $20
    call Call_00f_459b                            ; $413d: $cd $9b $45
    call Call_00f_44fd                            ; $4140: $cd $fd $44
    call Call_000_0371                            ; $4143: $cd $71 $03
    call Call_000_2e3b                            ; $4146: $cd $3b $2e
    call Call_000_2e3b                            ; $4149: $cd $3b $2e
    ld a, $01                                     ; $414c: $3e $01
    ld hl, $4160                                  ; $414e: $21 $60 $41
    call Call_000_23e8                            ; $4151: $cd $e8 $23
    ld a, $01                                     ; $4154: $3e $01
    ld hl, $4292                                  ; $4156: $21 $92 $42
    call Call_000_23e8                            ; $4159: $cd $e8 $23
    call Call_00f_4a11                            ; $415c: $cd $11 $4a
    ret                                           ; $415f: $c9


    ldh a, [$8c]                                  ; $4160: $f0 $8c
    and $3f                                       ; $4162: $e6 $3f
    ld hl, $4179                                  ; $4164: $21 $79 $41
    add l                                         ; $4167: $85
    ld l, a                                       ; $4168: $6f
    jr nc, jr_00f_416c                            ; $4169: $30 $01

    inc h                                         ; $416b: $24

jr_00f_416c:
    ld d, $00                                     ; $416c: $16 $00
    ld e, [hl]                                    ; $416e: $5e
    ld hl, $41b9                                  ; $416f: $21 $b9 $41
    ld bc, $04e0                                  ; $4172: $01 $e0 $04
    call Call_000_26ea                            ; $4175: $cd $ea $26
    ret                                           ; $4178: $c9


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $16, $30, $00, $00, $16, $38, $02, $00, $16, $40, $04, $00, $16, $48, $06, $00
    db $16, $50, $08, $00, $16, $58, $0a, $00, $16, $60, $0c, $00, $16, $68, $0e, $00
    db $16, $70, $10, $00, $16, $78, $12, $00, $80

Call_00f_41e2:
    ld a, $01                                     ; $41e2: $3e $01
    ld hl, $4292                                  ; $41e4: $21 $92 $42
    call Call_000_23e8                            ; $41e7: $cd $e8 $23
    call Call_00f_4963                            ; $41ea: $cd $63 $49

jr_00f_41ed:
    call Call_000_2e3b                            ; $41ed: $cd $3b $2e
    ldh a, [$91]                                  ; $41f0: $f0 $91
    bit 5, a                                      ; $41f2: $cb $6f
    jr z, jr_00f_4201                             ; $41f4: $28 $0b

    ldh a, [$b2]                                  ; $41f6: $f0 $b2
    cp $02                                        ; $41f8: $fe $02
    jr c, jr_00f_41ed                             ; $41fa: $38 $f1

    call Call_00f_4401                            ; $41fc: $cd $01 $44
    jr jr_00f_423c                                ; $41ff: $18 $3b

jr_00f_4201:
    bit 4, a                                      ; $4201: $cb $67
    jr z, jr_00f_4210                             ; $4203: $28 $0b

    ldh a, [$b2]                                  ; $4205: $f0 $b2
    cp $02                                        ; $4207: $fe $02
    jr c, jr_00f_41ed                             ; $4209: $38 $e2

    call Call_00f_4328                            ; $420b: $cd $28 $43
    jr jr_00f_423c                                ; $420e: $18 $2c

jr_00f_4210:
    bit 0, a                                      ; $4210: $cb $47
    jr z, jr_00f_422c                             ; $4212: $28 $18

    rst $08                                       ; $4214: $cf

    db $5c

    ld a, $06                                     ; $4216: $3e $06
    ldh [$96], a                                  ; $4218: $e0 $96
    ldh [rSVBK], a                                ; $421a: $e0 $70
    ld hl, $d207                                  ; $421c: $21 $07 $d2
    ld a, [hl+]                                   ; $421f: $2a
    ld h, [hl]                                    ; $4220: $66
    ld l, a                                       ; $4221: $6f
    ldh a, [$b0]                                  ; $4222: $f0 $b0
    add l                                         ; $4224: $85
    ld l, a                                       ; $4225: $6f
    jr nc, jr_00f_4229                            ; $4226: $30 $01

    inc h                                         ; $4228: $24

jr_00f_4229:
    ld a, [hl]                                    ; $4229: $7e
    jr jr_00f_423e                                ; $422a: $18 $12

jr_00f_422c:
    bit 1, a                                      ; $422c: $cb $4f
    jr z, jr_00f_423c                             ; $422e: $28 $0c

    ld a, $06                                     ; $4230: $3e $06
    ldh [$96], a                                  ; $4232: $e0 $96
    ldh [rSVBK], a                                ; $4234: $e0 $70
    rst $08                                       ; $4236: $cf
    ld e, l                                       ; $4237: $5d
    ld a, $ff                                     ; $4238: $3e $ff
    jr jr_00f_423e                                ; $423a: $18 $02

jr_00f_423c:
    jr jr_00f_41ed                                ; $423c: $18 $af

jr_00f_423e:
    push af                                       ; $423e: $f5
    ld hl, $4292                                  ; $423f: $21 $92 $42
    call Call_000_2449                            ; $4242: $cd $49 $24
    pop af                                        ; $4245: $f1
    ret                                           ; $4246: $c9


Call_00f_4247:
    ld hl, $c600                                  ; $4247: $21 $00 $c6
    ld de, $b880                                  ; $424a: $11 $80 $b8
    ld c, $10                                     ; $424d: $0e $10
    call Call_000_0468                            ; $424f: $cd $68 $04
    ld hl, $c700                                  ; $4252: $21 $00 $c7
    ld de, $9880                                  ; $4255: $11 $80 $98
    ld c, $10                                     ; $4258: $0e $10
    call Call_000_0468                            ; $425a: $cd $68 $04
    ret                                           ; $425d: $c9


Call_00f_425e:
    ldh a, [$b4]                                  ; $425e: $f0 $b4
    add $08                                       ; $4260: $c6 $08
    cp $b0                                        ; $4262: $fe $b0
    jr nz, jr_00f_4268                            ; $4264: $20 $02

    ld a, $10                                     ; $4266: $3e $10

jr_00f_4268:
    ldh [$b4], a                                  ; $4268: $e0 $b4
    ret                                           ; $426a: $c9


Call_00f_426b:
    ld hl, $c601                                  ; $426b: $21 $01 $c6
    ld de, $c600                                  ; $426e: $11 $00 $c6
    ld bc, $01ff                                  ; $4271: $01 $ff $01
    call Call_000_03d3                            ; $4274: $cd $d3 $03
    ret                                           ; $4277: $c9


Call_00f_4278:
    ldh a, [$b4]                                  ; $4278: $f0 $b4
    add $f8                                       ; $427a: $c6 $f8
    cp $08                                        ; $427c: $fe $08
    jr nz, jr_00f_4282                            ; $427e: $20 $02

    ld a, $a8                                     ; $4280: $3e $a8

jr_00f_4282:
    ldh [$b4], a                                  ; $4282: $e0 $b4
    ret                                           ; $4284: $c9


Call_00f_4285:
    ld hl, $c7fe                                  ; $4285: $21 $fe $c7
    ld de, $c7ff                                  ; $4288: $11 $ff $c7
    ld bc, $01ff                                  ; $428b: $01 $ff $01
    call Call_000_03e2                            ; $428e: $cd $e2 $03
    ret                                           ; $4291: $c9


    call Call_00f_42b4                            ; $4292: $cd $b4 $42
    ldh a, [$b2]                                  ; $4295: $f0 $b2
    cp $02                                        ; $4297: $fe $02
    ret c                                         ; $4299: $d8

    ldh a, [$b1]                                  ; $429a: $f0 $b1
    and $0f                                       ; $429c: $e6 $0f
    cp $0c                                        ; $429e: $fe $0c
    ret nc                                        ; $42a0: $d0

    ld de, $1448                                  ; $42a1: $11 $48 $14
    ld bc, $0970                                  ; $42a4: $01 $70 $09
    call Call_000_26a4                            ; $42a7: $cd $a4 $26
    ld de, $8c48                                  ; $42aa: $11 $48 $8c
    ld bc, $2970                                  ; $42ad: $01 $70 $29
    call Call_000_26a4                            ; $42b0: $cd $a4 $26
    ret                                           ; $42b3: $c9


Call_00f_42b4:
    ld hl, $ffb1                                  ; $42b4: $21 $b1 $ff
    inc [hl]                                      ; $42b7: $34
    ld a, [hl]                                    ; $42b8: $7e
    and $1c                                       ; $42b9: $e6 $1c
    ld h, $00                                     ; $42bb: $26 $00
    ld l, a                                       ; $42bd: $6f
    add hl, hl                                    ; $42be: $29
    add hl, hl                                    ; $42bf: $29
    ld de, $4740                                  ; $42c0: $11 $40 $47
    add hl, de                                    ; $42c3: $19
    ld de, $b060                                  ; $42c4: $11 $60 $b0
    ld c, $01                                     ; $42c7: $0e $01
    call Call_000_0468                            ; $42c9: $cd $68 $04
    ret                                           ; $42cc: $c9


Call_00f_42cd:
    call Call_00f_426b                            ; $42cd: $cd $6b $42
    ldh a, [$b4]                                  ; $42d0: $f0 $b4
    push af                                       ; $42d2: $f5
    ld h, $00                                     ; $42d3: $26 $00
    ld l, a                                       ; $42d5: $6f
    add hl, hl                                    ; $42d6: $29
    add hl, hl                                    ; $42d7: $29
    add hl, hl                                    ; $42d8: $29
    add hl, hl                                    ; $42d9: $29
    bit 3, h                                      ; $42da: $cb $5c
    jr nz, jr_00f_42e0                            ; $42dc: $20 $02

    set 4, h                                      ; $42de: $cb $e4

jr_00f_42e0:
    ld de, $a000                                  ; $42e0: $11 $00 $a0
    add hl, de                                    ; $42e3: $19
    ld d, h                                       ; $42e4: $54
    ld e, l                                       ; $42e5: $5d
    ld hl, $ffb6                                  ; $42e6: $21 $b6 $ff
    ld a, [hl+]                                   ; $42e9: $2a
    ld h, [hl]                                    ; $42ea: $66
    ld l, a                                       ; $42eb: $6f
    ld c, $08                                     ; $42ec: $0e $08
    call Call_000_0468                            ; $42ee: $cd $68 $04
    ld hl, $ffb6                                  ; $42f1: $21 $b6 $ff
    ld a, [hl+]                                   ; $42f4: $2a
    ld h, [hl]                                    ; $42f5: $66
    ld l, a                                       ; $42f6: $6f
    ld de, $0080                                  ; $42f7: $11 $80 $00
    add hl, de                                    ; $42fa: $19
    ld a, l                                       ; $42fb: $7d
    ldh [$b6], a                                  ; $42fc: $e0 $b6
    ld a, h                                       ; $42fe: $7c
    ldh [$b7], a                                  ; $42ff: $e0 $b7
    pop af                                        ; $4301: $f1
    ld hl, $c613                                  ; $4302: $21 $13 $c6
    ld de, $0020                                  ; $4305: $11 $20 $00
    ld c, $08                                     ; $4308: $0e $08

jr_00f_430a:
    ld [hl], $0b                                  ; $430a: $36 $0b
    add hl, de                                    ; $430c: $19
    dec c                                         ; $430d: $0d
    jr nz, jr_00f_430a                            ; $430e: $20 $fa

    ld c, $08                                     ; $4310: $0e $08

jr_00f_4312:
    ld [hl], a                                    ; $4312: $77
    inc a                                         ; $4313: $3c
    add hl, de                                    ; $4314: $19
    dec c                                         ; $4315: $0d
    jr nz, jr_00f_4312                            ; $4316: $20 $fa

    ld hl, $ffb6                                  ; $4318: $21 $b6 $ff
    ld a, [hl+]                                   ; $431b: $2a
    ld h, [hl]                                    ; $431c: $66
    ld l, a                                       ; $431d: $6f
    call Call_00f_425e                            ; $431e: $cd $5e $42
    call Call_00f_4247                            ; $4321: $cd $47 $42
    call Call_000_2e3b                            ; $4324: $cd $3b $2e
    ret                                           ; $4327: $c9


Call_00f_4328:
    rst $08                                       ; $4328: $cf

    db $5b

    ld hl, $4292                                  ; $432a: $21 $92 $42
    call Call_000_2449                            ; $432d: $cd $49 $24
    call Call_00f_497b                            ; $4330: $cd $7b $49
    call Call_00f_459b                            ; $4333: $cd $9b $45
    call Call_000_2e3b                            ; $4336: $cd $3b $2e
    ldh a, [$b2]                                  ; $4339: $f0 $b2
    ld h, a                                       ; $433b: $67
    inc h                                         ; $433c: $24
    ldh a, [$b0]                                  ; $433d: $f0 $b0
    inc a                                         ; $433f: $3c
    cp h                                          ; $4340: $bc
    jr c, jr_00f_4345                             ; $4341: $38 $02

    ld a, $01                                     ; $4343: $3e $01

jr_00f_4345:
    ldh [$b0], a                                  ; $4345: $e0 $b0
    ld h, $00                                     ; $4347: $26 $00
    ld l, $02                                     ; $4349: $2e $02
    call Call_00f_4613                            ; $434b: $cd $13 $46
    ld de, $d000                                  ; $434e: $11 $00 $d0
    call Call_000_1f2f                            ; $4351: $cd $2f $1f
    ld h, $01                                     ; $4354: $26 $01
    ld l, $02                                     ; $4356: $2e $02
    call Call_00f_4613                            ; $4358: $cd $13 $46
    ld de, $d500                                  ; $435b: $11 $00 $d5
    call Call_000_1f2f                            ; $435e: $cd $2f $1f
    call Call_000_2e3b                            ; $4361: $cd $3b $2e
    call Call_000_2e3b                            ; $4364: $cd $3b $2e
    ld hl, $d200                                  ; $4367: $21 $00 $d2
    ld a, l                                       ; $436a: $7d
    ldh [$b6], a                                  ; $436b: $e0 $b6
    ld a, h                                       ; $436d: $7c
    ldh [$b7], a                                  ; $436e: $e0 $b7
    call Call_00f_42cd                            ; $4370: $cd $cd $42
    call Call_00f_42cd                            ; $4373: $cd $cd $42
    call Call_00f_42cd                            ; $4376: $cd $cd $42
    call Call_00f_42cd                            ; $4379: $cd $cd $42
    call Call_00f_42cd                            ; $437c: $cd $cd $42
    call Call_00f_42cd                            ; $437f: $cd $cd $42
    call Call_00f_426b                            ; $4382: $cd $6b $42
    ld hl, $c613                                  ; $4385: $21 $13 $c6
    call Call_00f_4481                            ; $4388: $cd $81 $44
    call Call_00f_425e                            ; $438b: $cd $5e $42
    call Call_00f_42cd                            ; $438e: $cd $cd $42
    call Call_00f_42cd                            ; $4391: $cd $cd $42
    call Call_00f_42cd                            ; $4394: $cd $cd $42
    call Call_00f_42cd                            ; $4397: $cd $cd $42
    call Call_00f_44ba                            ; $439a: $cd $ba $44
    call Call_000_2e3b                            ; $439d: $cd $3b $2e
    call Call_00f_4963                            ; $43a0: $cd $63 $49
    ld a, $01                                     ; $43a3: $3e $01
    ld hl, $4292                                  ; $43a5: $21 $92 $42
    call Call_000_23e8                            ; $43a8: $cd $e8 $23
    ret                                           ; $43ab: $c9


Call_00f_43ac:
    call Call_00f_4278                            ; $43ac: $cd $78 $42
    call Call_00f_4285                            ; $43af: $cd $85 $42
    ldh a, [$b4]                                  ; $43b2: $f0 $b4
    push af                                       ; $43b4: $f5
    ld h, $00                                     ; $43b5: $26 $00
    ld l, a                                       ; $43b7: $6f
    add hl, hl                                    ; $43b8: $29
    add hl, hl                                    ; $43b9: $29
    add hl, hl                                    ; $43ba: $29
    add hl, hl                                    ; $43bb: $29
    bit 3, h                                      ; $43bc: $cb $5c
    jr nz, jr_00f_43c2                            ; $43be: $20 $02

    set 4, h                                      ; $43c0: $cb $e4

jr_00f_43c2:
    ld de, $a000                                  ; $43c2: $11 $00 $a0
    add hl, de                                    ; $43c5: $19
    ld d, h                                       ; $43c6: $54
    ld e, l                                       ; $43c7: $5d
    ld hl, $ffb6                                  ; $43c8: $21 $b6 $ff
    ld a, [hl+]                                   ; $43cb: $2a
    ld h, [hl]                                    ; $43cc: $66
    ld l, a                                       ; $43cd: $6f
    ld c, $08                                     ; $43ce: $0e $08
    call Call_000_0468                            ; $43d0: $cd $68 $04
    ld hl, $ffb6                                  ; $43d3: $21 $b6 $ff
    ld a, [hl+]                                   ; $43d6: $2a
    ld h, [hl]                                    ; $43d7: $66
    ld l, a                                       ; $43d8: $6f
    ld de, $ff80                                  ; $43d9: $11 $80 $ff
    add hl, de                                    ; $43dc: $19
    ld a, l                                       ; $43dd: $7d
    ldh [$b6], a                                  ; $43de: $e0 $b6
    ld a, h                                       ; $43e0: $7c
    ldh [$b7], a                                  ; $43e1: $e0 $b7
    pop af                                        ; $43e3: $f1
    ld hl, $c600                                  ; $43e4: $21 $00 $c6
    ld de, $0020                                  ; $43e7: $11 $20 $00
    ld c, $08                                     ; $43ea: $0e $08

jr_00f_43ec:
    ld [hl], $0b                                  ; $43ec: $36 $0b
    add hl, de                                    ; $43ee: $19
    dec c                                         ; $43ef: $0d
    jr nz, jr_00f_43ec                            ; $43f0: $20 $fa

    ld c, $08                                     ; $43f2: $0e $08

jr_00f_43f4:
    ld [hl], a                                    ; $43f4: $77
    inc a                                         ; $43f5: $3c
    add hl, de                                    ; $43f6: $19
    dec c                                         ; $43f7: $0d
    jr nz, jr_00f_43f4                            ; $43f8: $20 $fa

    call Call_00f_4247                            ; $43fa: $cd $47 $42
    call Call_000_2e3b                            ; $43fd: $cd $3b $2e
    ret                                           ; $4400: $c9


Call_00f_4401:
    rst $08                                       ; $4401: $cf

    db $5b

    ld hl, $4292                                  ; $4403: $21 $92 $42
    call Call_000_2449                            ; $4406: $cd $49 $24
    call Call_00f_497b                            ; $4409: $cd $7b $49
    call Call_00f_459b                            ; $440c: $cd $9b $45
    call Call_000_2e3b                            ; $440f: $cd $3b $2e
    ldh a, [$b0]                                  ; $4412: $f0 $b0
    dec a                                         ; $4414: $3d
    or a                                          ; $4415: $b7
    jr nz, jr_00f_441a                            ; $4416: $20 $02

    ldh a, [$b2]                                  ; $4418: $f0 $b2

jr_00f_441a:
    ldh [$b0], a                                  ; $441a: $e0 $b0
    ld h, $00                                     ; $441c: $26 $00
    ld l, $02                                     ; $441e: $2e $02
    call Call_00f_4613                            ; $4420: $cd $13 $46
    ld de, $d500                                  ; $4423: $11 $00 $d5
    call Call_000_1f2f                            ; $4426: $cd $2f $1f
    ld h, $ff                                     ; $4429: $26 $ff
    ld l, $02                                     ; $442b: $2e $02
    call Call_00f_4613                            ; $442d: $cd $13 $46
    ld de, $d000                                  ; $4430: $11 $00 $d0
    call Call_000_1f2f                            ; $4433: $cd $2f $1f
    call Call_000_2e3b                            ; $4436: $cd $3b $2e
    call Call_000_2e3b                            ; $4439: $cd $3b $2e
    ld hl, $d780                                  ; $443c: $21 $80 $d7
    ld a, l                                       ; $443f: $7d
    ldh [$b6], a                                  ; $4440: $e0 $b6
    ld a, h                                       ; $4442: $7c
    ldh [$b7], a                                  ; $4443: $e0 $b7
    call Call_00f_43ac                            ; $4445: $cd $ac $43
    call Call_00f_43ac                            ; $4448: $cd $ac $43
    call Call_00f_43ac                            ; $444b: $cd $ac $43
    call Call_00f_43ac                            ; $444e: $cd $ac $43
    call Call_00f_43ac                            ; $4451: $cd $ac $43
    call Call_00f_43ac                            ; $4454: $cd $ac $43
    call Call_00f_4278                            ; $4457: $cd $78 $42
    call Call_00f_4285                            ; $445a: $cd $85 $42
    ld hl, $c600                                  ; $445d: $21 $00 $c6
    call Call_00f_4481                            ; $4460: $cd $81 $44
    call Call_00f_43ac                            ; $4463: $cd $ac $43
    call Call_00f_43ac                            ; $4466: $cd $ac $43
    call Call_00f_43ac                            ; $4469: $cd $ac $43
    call Call_00f_43ac                            ; $446c: $cd $ac $43
    call Call_00f_44ba                            ; $446f: $cd $ba $44
    call Call_000_2e3b                            ; $4472: $cd $3b $2e
    call Call_00f_4963                            ; $4475: $cd $63 $49
    ld a, $01                                     ; $4478: $3e $01
    ld hl, $4292                                  ; $447a: $21 $92 $42
    call Call_000_23e8                            ; $447d: $cd $e8 $23
    ret                                           ; $4480: $c9


Call_00f_4481:
    ld de, $0020                                  ; $4481: $11 $20 $00
    ld c, $08                                     ; $4484: $0e $08

jr_00f_4486:
    ld [hl], $09                                  ; $4486: $36 $09
    add hl, de                                    ; $4488: $19
    dec c                                         ; $4489: $0d
    jr nz, jr_00f_4486                            ; $448a: $20 $fa

    ldh a, [$b4]                                  ; $448c: $f0 $b4
    ld c, $08                                     ; $448e: $0e $08

jr_00f_4490:
    ld [hl], a                                    ; $4490: $77
    inc a                                         ; $4491: $3c
    add hl, de                                    ; $4492: $19
    dec c                                         ; $4493: $0d
    jr nz, jr_00f_4490                            ; $4494: $20 $fa

    ldh a, [$b4]                                  ; $4496: $f0 $b4
    ld h, $00                                     ; $4498: $26 $00
    ld l, a                                       ; $449a: $6f
    add hl, hl                                    ; $449b: $29
    add hl, hl                                    ; $449c: $29
    add hl, hl                                    ; $449d: $29
    add hl, hl                                    ; $449e: $29
    bit 3, h                                      ; $449f: $cb $5c
    jr nz, jr_00f_44a5                            ; $44a1: $20 $02

    set 4, h                                      ; $44a3: $cb $e4

jr_00f_44a5:
    ld de, $a000                                  ; $44a5: $11 $00 $a0
    add hl, de                                    ; $44a8: $19
    ld d, h                                       ; $44a9: $54
    ld e, l                                       ; $44aa: $5d
    ld hl, $4680                                  ; $44ab: $21 $80 $46
    ld c, $08                                     ; $44ae: $0e $08
    call Call_000_0468                            ; $44b0: $cd $68 $04
    call Call_00f_4247                            ; $44b3: $cd $47 $42
    call Call_000_2e3b                            ; $44b6: $cd $3b $2e
    ret                                           ; $44b9: $c9


Call_00f_44ba:
    ld h, $00                                     ; $44ba: $26 $00
    ld l, $0a                                     ; $44bc: $2e $0a
    call Call_00f_4613                            ; $44be: $cd $13 $46
    ld de, $0404                                  ; $44c1: $11 $04 $04
    call Call_000_056c                            ; $44c4: $cd $6c $05
    ld h, $00                                     ; $44c7: $26 $00
    ld l, $04                                     ; $44c9: $2e $04
    call Call_00f_4613                            ; $44cb: $cd $13 $46
    ld de, $d000                                  ; $44ce: $11 $00 $d0
    call Call_000_1f2f                            ; $44d1: $cd $2f $1f
    ld hl, $d000                                  ; $44d4: $21 $00 $d0
    ld de, $ab00                                  ; $44d7: $11 $00 $ab
    ld c, $20                                     ; $44da: $0e $20
    call Call_000_0468                            ; $44dc: $cd $68 $04
    call Call_000_2e3b                            ; $44df: $cd $3b $2e
    ld hl, $d200                                  ; $44e2: $21 $00 $d2
    ld de, $ad00                                  ; $44e5: $11 $00 $ad
    ld c, $20                                     ; $44e8: $0e $20
    call Call_000_0468                            ; $44ea: $cd $68 $04
    call Call_000_2e3b                            ; $44ed: $cd $3b $2e
    ld hl, $d400                                  ; $44f0: $21 $00 $d4
    ld de, $af00                                  ; $44f3: $11 $00 $af
    ld c, $10                                     ; $44f6: $0e $10
    call Call_000_0468                            ; $44f8: $cd $68 $04
    jr jr_00f_4538                                ; $44fb: $18 $3b

Call_00f_44fd:
    ld h, $00                                     ; $44fd: $26 $00
    ld l, $0a                                     ; $44ff: $2e $0a
    call Call_00f_4613                            ; $4501: $cd $13 $46
    ld de, $0404                                  ; $4504: $11 $04 $04
    call Call_000_0595                            ; $4507: $cd $95 $05
    ld h, $00                                     ; $450a: $26 $00
    ld l, $04                                     ; $450c: $2e $04
    call Call_00f_4613                            ; $450e: $cd $13 $46
    ld de, $d000                                  ; $4511: $11 $00 $d0
    call Call_000_1f2f                            ; $4514: $cd $2f $1f
    ld hl, $d000                                  ; $4517: $21 $00 $d0
    ld de, $ab00                                  ; $451a: $11 $00 $ab
    ld c, $20                                     ; $451d: $0e $20
    call Call_000_0468                            ; $451f: $cd $68 $04
    ld hl, $d200                                  ; $4522: $21 $00 $d2
    ld de, $ad00                                  ; $4525: $11 $00 $ad
    ld c, $20                                     ; $4528: $0e $20
    call Call_000_0468                            ; $452a: $cd $68 $04
    ld hl, $d400                                  ; $452d: $21 $00 $d4
    ld de, $af00                                  ; $4530: $11 $00 $af
    ld c, $10                                     ; $4533: $0e $10
    call Call_000_04db                            ; $4535: $cd $db $04

jr_00f_4538:
    ld de, $c605                                  ; $4538: $11 $05 $c6
    ld c, $08                                     ; $453b: $0e $08
    ld h, $00                                     ; $453d: $26 $00
    ld l, $08                                     ; $453f: $2e $08
    call Call_00f_4613                            ; $4541: $cd $13 $46

jr_00f_4544:
    ld a, [hl+]                                   ; $4544: $2a
    ld [de], a                                    ; $4545: $12
    inc de                                        ; $4546: $13
    ld a, [hl+]                                   ; $4547: $2a
    ld [de], a                                    ; $4548: $12
    inc de                                        ; $4549: $13
    ld a, [hl+]                                   ; $454a: $2a
    ld [de], a                                    ; $454b: $12
    inc de                                        ; $454c: $13
    ld a, [hl+]                                   ; $454d: $2a
    ld [de], a                                    ; $454e: $12
    inc de                                        ; $454f: $13
    ld a, [hl+]                                   ; $4550: $2a
    ld [de], a                                    ; $4551: $12
    inc de                                        ; $4552: $13
    ld a, [hl+]                                   ; $4553: $2a
    ld [de], a                                    ; $4554: $12
    inc de                                        ; $4555: $13
    ld a, [hl+]                                   ; $4556: $2a
    ld [de], a                                    ; $4557: $12
    inc de                                        ; $4558: $13
    ld a, [hl+]                                   ; $4559: $2a
    ld [de], a                                    ; $455a: $12
    inc de                                        ; $455b: $13
    ld a, [hl+]                                   ; $455c: $2a
    ld [de], a                                    ; $455d: $12
    inc de                                        ; $455e: $13
    ld a, [hl+]                                   ; $455f: $2a
    ld [de], a                                    ; $4560: $12
    inc de                                        ; $4561: $13
    ld a, $16                                     ; $4562: $3e $16
    add e                                         ; $4564: $83
    ld e, a                                       ; $4565: $5f
    ld a, d                                       ; $4566: $7a
    adc $00                                       ; $4567: $ce $00
    ld d, a                                       ; $4569: $57
    dec c                                         ; $456a: $0d
    jr nz, jr_00f_4544                            ; $456b: $20 $d7

    ld h, d                                       ; $456d: $62
    ld l, e                                       ; $456e: $6b
    ld de, $0016                                  ; $456f: $11 $16 $00
    ld c, $08                                     ; $4572: $0e $08
    ld a, $b0                                     ; $4574: $3e $b0

jr_00f_4576:
    ld [hl+], a                                   ; $4576: $22
    inc a                                         ; $4577: $3c
    ld [hl+], a                                   ; $4578: $22
    inc a                                         ; $4579: $3c
    ld [hl+], a                                   ; $457a: $22
    inc a                                         ; $457b: $3c
    ld [hl+], a                                   ; $457c: $22
    inc a                                         ; $457d: $3c
    ld [hl+], a                                   ; $457e: $22
    inc a                                         ; $457f: $3c
    ld [hl+], a                                   ; $4580: $22
    inc a                                         ; $4581: $3c
    ld [hl+], a                                   ; $4582: $22
    inc a                                         ; $4583: $3c
    ld [hl+], a                                   ; $4584: $22
    inc a                                         ; $4585: $3c
    ld [hl+], a                                   ; $4586: $22
    inc a                                         ; $4587: $3c
    ld [hl+], a                                   ; $4588: $22
    inc a                                         ; $4589: $3c
    add hl, de                                    ; $458a: $19
    dec c                                         ; $458b: $0d
    jr nz, jr_00f_4576                            ; $458c: $20 $e8

    call Call_00f_4247                            ; $458e: $cd $47 $42
    ret                                           ; $4591: $c9


Call_00f_4592:
    ld [hl+], a                                   ; $4592: $22
    add $08                                       ; $4593: $c6 $08
    cp $b0                                        ; $4595: $fe $b0
    ret c                                         ; $4597: $d8

    sub $a0                                       ; $4598: $d6 $a0
    ret                                           ; $459a: $c9


Call_00f_459b:
    ld hl, $c600                                  ; $459b: $21 $00 $c6
    ld c, $08                                     ; $459e: $0e $08

jr_00f_45a0:
    ld a, $0b                                     ; $45a0: $3e $0b
    ld [hl+], a                                   ; $45a2: $22
    ld [hl+], a                                   ; $45a3: $22
    ld [hl+], a                                   ; $45a4: $22
    ld [hl+], a                                   ; $45a5: $22
    ld a, $09                                     ; $45a6: $3e $09
    ld [hl+], a                                   ; $45a8: $22
    ld a, $0b                                     ; $45a9: $3e $0b
    ld [hl+], a                                   ; $45ab: $22
    ld [hl+], a                                   ; $45ac: $22
    ld [hl+], a                                   ; $45ad: $22
    ld [hl+], a                                   ; $45ae: $22
    ld [hl+], a                                   ; $45af: $22
    ld [hl+], a                                   ; $45b0: $22
    ld [hl+], a                                   ; $45b1: $22
    ld [hl+], a                                   ; $45b2: $22
    ld [hl+], a                                   ; $45b3: $22
    ld [hl+], a                                   ; $45b4: $22
    ld a, $09                                     ; $45b5: $3e $09
    ld [hl+], a                                   ; $45b7: $22
    ld a, $0b                                     ; $45b8: $3e $0b
    ld [hl+], a                                   ; $45ba: $22
    ld [hl+], a                                   ; $45bb: $22
    ld [hl+], a                                   ; $45bc: $22
    ld [hl+], a                                   ; $45bd: $22
    ld de, $000c                                  ; $45be: $11 $0c $00
    add hl, de                                    ; $45c1: $19
    dec c                                         ; $45c2: $0d
    jr nz, jr_00f_45a0                            ; $45c3: $20 $db

    ld c, $08                                     ; $45c5: $0e $08
    ldh a, [$b4]                                  ; $45c7: $f0 $b4

jr_00f_45c9:
    push af                                       ; $45c9: $f5
    call Call_00f_4592                            ; $45ca: $cd $92 $45
    call Call_00f_4592                            ; $45cd: $cd $92 $45
    call Call_00f_4592                            ; $45d0: $cd $92 $45
    call Call_00f_4592                            ; $45d3: $cd $92 $45
    call Call_00f_4592                            ; $45d6: $cd $92 $45
    call Call_00f_4592                            ; $45d9: $cd $92 $45
    call Call_00f_4592                            ; $45dc: $cd $92 $45
    call Call_00f_4592                            ; $45df: $cd $92 $45
    call Call_00f_4592                            ; $45e2: $cd $92 $45
    call Call_00f_4592                            ; $45e5: $cd $92 $45
    call Call_00f_4592                            ; $45e8: $cd $92 $45
    call Call_00f_4592                            ; $45eb: $cd $92 $45
    call Call_00f_4592                            ; $45ee: $cd $92 $45
    call Call_00f_4592                            ; $45f1: $cd $92 $45
    call Call_00f_4592                            ; $45f4: $cd $92 $45
    call Call_00f_4592                            ; $45f7: $cd $92 $45
    call Call_00f_4592                            ; $45fa: $cd $92 $45
    call Call_00f_4592                            ; $45fd: $cd $92 $45
    call Call_00f_4592                            ; $4600: $cd $92 $45
    call Call_00f_4592                            ; $4603: $cd $92 $45
    ld de, $000c                                  ; $4606: $11 $0c $00
    add hl, de                                    ; $4609: $19
    pop af                                        ; $460a: $f1
    inc a                                         ; $460b: $3c
    dec c                                         ; $460c: $0d
    jr nz, jr_00f_45c9                            ; $460d: $20 $ba

    call Call_00f_4247                            ; $460f: $cd $47 $42
    ret                                           ; $4612: $c9


Call_00f_4613:
    ldh a, [$96]                                  ; $4613: $f0 $96
    push af                                       ; $4615: $f5
    ld a, $06                                     ; $4616: $3e $06
    ldh [$96], a                                  ; $4618: $e0 $96
    ldh [rSVBK], a                                ; $461a: $e0 $70
    ldh a, [$b0]                                  ; $461c: $f0 $b0
    add h                                         ; $461e: $84
    ld h, a                                       ; $461f: $67
    or a                                          ; $4620: $b7
    jr nz, jr_00f_462c                            ; $4621: $20 $09

    ldh a, [$b2]                                  ; $4623: $f0 $b2
    cp $01                                        ; $4625: $fe $01
    jr z, jr_00f_4638                             ; $4627: $28 $0f

    ld h, a                                       ; $4629: $67
    jr jr_00f_4638                                ; $462a: $18 $0c

jr_00f_462c:
    ldh a, [$b2]                                  ; $462c: $f0 $b2
    cp h                                          ; $462e: $bc
    jr nc, jr_00f_4638                            ; $462f: $30 $07

    ld h, $00                                     ; $4631: $26 $00
    cp $01                                        ; $4633: $fe $01
    jr z, jr_00f_4638                             ; $4635: $28 $01

    inc h                                         ; $4637: $24

jr_00f_4638:
    ld a, l                                       ; $4638: $7d
    push af                                       ; $4639: $f5
    ld a, h                                       ; $463a: $7c
    push af                                       ; $463b: $f5
    ld hl, $d207                                  ; $463c: $21 $07 $d2
    ld a, [hl+]                                   ; $463f: $2a
    ld h, [hl]                                    ; $4640: $66
    ld l, a                                       ; $4641: $6f
    pop af                                        ; $4642: $f1
    add l                                         ; $4643: $85
    ld l, a                                       ; $4644: $6f
    jr nc, jr_00f_4648                            ; $4645: $30 $01

    inc h                                         ; $4647: $24

jr_00f_4648:
    ld h, [hl]                                    ; $4648: $66
    pop af                                        ; $4649: $f1
    ld l, a                                       ; $464a: $6f
    push de                                       ; $464b: $d5
    push hl                                       ; $464c: $e5
    ld l, h                                       ; $464d: $6c
    ld h, $00                                     ; $464e: $26 $00
    ld d, h                                       ; $4650: $54
    ld e, l                                       ; $4651: $5d
    add hl, hl                                    ; $4652: $29
    add hl, de                                    ; $4653: $19
    add hl, hl                                    ; $4654: $29
    add hl, hl                                    ; $4655: $29
    pop de                                        ; $4656: $d1
    ld d, $00                                     ; $4657: $16 $00
    add hl, de                                    ; $4659: $19
    push hl                                       ; $465a: $e5
    ld hl, $d200                                  ; $465b: $21 $00 $d2
    ld a, [hl+]                                   ; $465e: $2a
    ld d, [hl]                                    ; $465f: $56
    ld e, a                                       ; $4660: $5f
    pop hl                                        ; $4661: $e1
    add hl, de                                    ; $4662: $19
    ld de, $0008                                  ; $4663: $11 $08 $00
    add hl, de                                    ; $4666: $19
    ld a, [hl+]                                   ; $4667: $2a
    ld h, [hl]                                    ; $4668: $66
    ld l, a                                       ; $4669: $6f
    pop de                                        ; $466a: $d1
    pop af                                        ; $466b: $f1
    ldh [$96], a                                  ; $466c: $e0 $96
    ldh [rSVBK], a                                ; $466e: $e0 $70
    ret                                           ; $4670: $c9


    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
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
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    rst $38                                       ; $4693: $ff
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
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    rst $38                                       ; $46a3: $ff
    rst $38                                       ; $46a4: $ff
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    rst $38                                       ; $46b2: $ff
    rst $38                                       ; $46b3: $ff
    rst $38                                       ; $46b4: $ff
    rst $38                                       ; $46b5: $ff
    rst $38                                       ; $46b6: $ff
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $38                                       ; $46c1: $ff
    rst $38                                       ; $46c2: $ff
    rst $38                                       ; $46c3: $ff
    rst $38                                       ; $46c4: $ff
    rst $38                                       ; $46c5: $ff
    rst $38                                       ; $46c6: $ff
    rst $38                                       ; $46c7: $ff
    rst $38                                       ; $46c8: $ff
    rst $38                                       ; $46c9: $ff
    rst $38                                       ; $46ca: $ff
    rst $38                                       ; $46cb: $ff
    rst $38                                       ; $46cc: $ff
    rst $38                                       ; $46cd: $ff
    rst $38                                       ; $46ce: $ff
    rst $38                                       ; $46cf: $ff
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    rst $38                                       ; $46d3: $ff
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    rst $38                                       ; $46d6: $ff
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    rst $38                                       ; $46e7: $ff
    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    rst $38                                       ; $46f5: $ff
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    rst $38                                       ; $46f8: $ff
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    ld bc, $0201                                  ; $4706: $01 $01 $02
    inc bc                                        ; $4709: $03
    dec b                                         ; $470a: $05
    ld b, $0b                                     ; $470b: $06 $0b
    inc c                                         ; $470d: $0c
    ld d, $19                                     ; $470e: $16 $19
    ld d, $19                                     ; $4710: $16 $19
    dec bc                                        ; $4712: $0b
    inc c                                         ; $4713: $0c
    dec b                                         ; $4714: $05
    ld b, $02                                     ; $4715: $06 $02
    inc bc                                        ; $4717: $03
    ld bc, $0001                                  ; $4718: $01 $01 $00
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    ld a, $3e                                     ; $4720: $3e $3e
    ld e, l                                       ; $4722: $5d
    ld h, e                                       ; $4723: $63
    cp a                                          ; $4724: $bf
    pop bc                                        ; $4725: $c1
    ld h, a                                       ; $4726: $67
    sbc c                                         ; $4727: $99
    rst $18                                       ; $4728: $df
    add hl, sp                                    ; $4729: $39
    cp a                                          ; $472a: $bf
    ld a, c                                       ; $472b: $79
    ld a, a                                       ; $472c: $7f
    ld sp, hl                                     ; $472d: $f9
    rst $38                                       ; $472e: $ff
    ld sp, hl                                     ; $472f: $f9
    rst $38                                       ; $4730: $ff
    ld sp, hl                                     ; $4731: $f9
    ld a, a                                       ; $4732: $7f
    ld sp, hl                                     ; $4733: $f9
    cp a                                          ; $4734: $bf
    ld a, c                                       ; $4735: $79
    rst $18                                       ; $4736: $df
    add hl, sp                                    ; $4737: $39
    ld h, a                                       ; $4738: $67
    sbc c                                         ; $4739: $99
    cp a                                          ; $473a: $bf
    pop bc                                        ; $473b: $c1
    ld e, l                                       ; $473c: $5d
    ld h, e                                       ; $473d: $63
    ld a, $3e                                     ; $473e: $3e $3e
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    jp $dfff                                      ; $4744: $c3 $ff $df


    db $e3                                        ; $4747: $e3
    rst $18                                       ; $4748: $df
    db $e3                                        ; $4749: $e3
    rst $18                                       ; $474a: $df
    db $e3                                        ; $474b: $e3
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    add a                                         ; $4754: $87
    rst $38                                       ; $4755: $ff
    cp a                                          ; $4756: $bf
    rst $00                                       ; $4757: $c7
    cp a                                          ; $4758: $bf
    rst $00                                       ; $4759: $c7
    cp a                                          ; $475a: $bf
    rst $00                                       ; $475b: $c7
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    rrca                                          ; $4764: $0f
    rst $38                                       ; $4765: $ff
    ld a, a                                       ; $4766: $7f
    adc a                                         ; $4767: $8f
    ld a, a                                       ; $4768: $7f
    adc a                                         ; $4769: $8f
    ld a, a                                       ; $476a: $7f
    adc a                                         ; $476b: $8f
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    ld e, $ff                                     ; $4774: $1e $ff
    cp $1f                                        ; $4776: $fe $1f
    cp $1f                                        ; $4778: $fe $1f
    cp $1f                                        ; $477a: $fe $1f
    rst $38                                       ; $477c: $ff
    rst $38                                       ; $477d: $ff
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
    inc a                                         ; $4784: $3c
    rst $38                                       ; $4785: $ff
    db $fd                                        ; $4786: $fd
    ld a, $fd                                     ; $4787: $3e $fd
    ld a, $fd                                     ; $4789: $3e $fd
    ld a, $ff                                     ; $478b: $3e $ff
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    rst $38                                       ; $478f: $ff
    rst $38                                       ; $4790: $ff
    rst $38                                       ; $4791: $ff
    rst $38                                       ; $4792: $ff
    rst $38                                       ; $4793: $ff
    ld a, b                                       ; $4794: $78
    rst $38                                       ; $4795: $ff
    ei                                            ; $4796: $fb
    ld a, h                                       ; $4797: $7c
    ei                                            ; $4798: $fb
    ld a, h                                       ; $4799: $7c
    ei                                            ; $479a: $fb
    ld a, h                                       ; $479b: $7c
    rst $38                                       ; $479c: $ff
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    rst $38                                       ; $47a2: $ff
    rst $38                                       ; $47a3: $ff
    ldh a, [rIE]                                  ; $47a4: $f0 $ff
    rst $30                                       ; $47a6: $f7
    ld hl, sp-$09                                 ; $47a7: $f8 $f7
    ld hl, sp-$09                                 ; $47a9: $f8 $f7
    ld hl, sp-$01                                 ; $47ab: $f8 $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    rst $38                                       ; $47b0: $ff
    rst $38                                       ; $47b1: $ff
    rst $38                                       ; $47b2: $ff
    rst $38                                       ; $47b3: $ff
    pop hl                                        ; $47b4: $e1
    rst $38                                       ; $47b5: $ff
    rst $28                                       ; $47b6: $ef
    pop af                                        ; $47b7: $f1
    rst $28                                       ; $47b8: $ef
    pop af                                        ; $47b9: $f1
    rst $28                                       ; $47ba: $ef
    pop af                                        ; $47bb: $f1
    rst $38                                       ; $47bc: $ff
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    rst $38                                       ; $47bf: $ff
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    ld bc, $0201                                  ; $47c6: $01 $01 $02
    inc bc                                        ; $47c9: $03
    dec b                                         ; $47ca: $05
    ld b, $0b                                     ; $47cb: $06 $0b
    inc c                                         ; $47cd: $0c
    ld d, $19                                     ; $47ce: $16 $19
    ld d, $19                                     ; $47d0: $16 $19
    dec bc                                        ; $47d2: $0b
    inc c                                         ; $47d3: $0c
    dec b                                         ; $47d4: $05
    ld b, $02                                     ; $47d5: $06 $02
    inc bc                                        ; $47d7: $03
    ld bc, $0001                                  ; $47d8: $01 $01 $00
    nop                                           ; $47db: $00
    nop                                           ; $47dc: $00
    nop                                           ; $47dd: $00
    nop                                           ; $47de: $00
    nop                                           ; $47df: $00
    ld a, $3e                                     ; $47e0: $3e $3e
    ld e, l                                       ; $47e2: $5d
    ld h, e                                       ; $47e3: $63
    cp a                                          ; $47e4: $bf
    pop bc                                        ; $47e5: $c1
    ld h, a                                       ; $47e6: $67
    sbc c                                         ; $47e7: $99
    rst $18                                       ; $47e8: $df
    add hl, sp                                    ; $47e9: $39
    cp a                                          ; $47ea: $bf
    ld a, c                                       ; $47eb: $79
    ld a, a                                       ; $47ec: $7f
    ld sp, hl                                     ; $47ed: $f9
    rst $38                                       ; $47ee: $ff
    ld sp, hl                                     ; $47ef: $f9
    rst $38                                       ; $47f0: $ff
    ld sp, hl                                     ; $47f1: $f9
    ld a, a                                       ; $47f2: $7f
    ld sp, hl                                     ; $47f3: $f9
    cp a                                          ; $47f4: $bf
    ld a, c                                       ; $47f5: $79
    rst $18                                       ; $47f6: $df
    add hl, sp                                    ; $47f7: $39
    ld h, a                                       ; $47f8: $67
    sbc c                                         ; $47f9: $99
    cp a                                          ; $47fa: $bf
    pop bc                                        ; $47fb: $c1
    ld e, l                                       ; $47fc: $5d
    ld h, e                                       ; $47fd: $63
    ld a, $3e                                     ; $47fe: $3e $3e
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00
    nop                                           ; $480b: $00
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00

    db $b5, $00, $ff, $ec, $ff, $ff, $ec, $10, $e0, $fe, $e1, $f0, $df, $00, $0f, $00
    db $08, $07, $fe, $e1, $ef, $f0, $f6, $fe, $e1, $0f, $f0, $f0, $e5, $55, $00, $aa
    db $00, $3c, $fc, $e9, $b0, $f1, $c3, $ff, $df, $e3, $fe, $e1, $b0, $e9, $e7, $f0
    db $0f, $f7, $fe, $e2, $aa, $e3, $0f, $00, $0f, $66, $a8, $e2, $ef, $f0, $e0, $ed
    db $da, $e3, $f0, $0f, $e0, $e5, $00, $80, $e5, $e0, $ff, $e0, $ff, $7e, $e1, $00
    db $00

    nop                                           ; $4891: $00

    db $7b, $0a, $2a, $fe, $ef, $09, $09, $09, $29, $ff, $e5, $12, $e1, $f0, $0a, $e0
    db $e9, $c0, $f2, $29, $c0, $e7, $b4, $e0, $fd, $fa, $01, $0b, $ff, $e0, $f0, $ff
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $00, $f0, $ff, $e0, $eb, $e0
    db $dd, $80, $d4, $a9, $c6, $40, $d4, $c0, $ff, $c0, $ff, $00, $c0, $ff, $d7, $a0
    db $00, $00

    nop                                           ; $48d4: $00

    db $45, $02, $ff, $f0, $00, $ff, $e8, $e0, $ff, $e0, $fb, $06, $ff, $f0, $2a, $c0
    db $e9, $04, $ff, $e0, $01, $af, $e7, $01, $f0, $e1, $e0, $ff, $80, $e0, $ff, $e0
    db $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $fd, $e0, $dd, $03, $00, $ff, $f0, $80
    db $df, $e0, $ff, $e0, $ff, $e0, $ff, $ff, $e1, $00, $00

    nop                                           ; $4910: $00

    db $80, $2d, $ff, $7f, $ce, $39, $00, $00, $7d, $3b, $16, $33, $4c, $1e, $44, $11
    db $96, $32, $d2, $21, $ec, $10, $44, $08, $fb, $02, $03, $ff, $ee, $04, $14, $15
    db $16, $17, $ff, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $2b, $05, $20, $ff, $ee
    db $06, $e0, $fd, $00, $ff, $e8, $e0, $fd, $0b, $07, $08, $ff, $ee, $09, $c0, $e9
    db $00, $00

    nop                                           ; $4953: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $00, $00

    nop                                           ; $4962: $00

Call_00f_4963:
    ldh a, [$96]                                  ; $4963: $f0 $96
    push af                                       ; $4965: $f5
    ld a, $06                                     ; $4966: $3e $06
    ldh [$96], a                                  ; $4968: $e0 $96
    ldh [rSVBK], a                                ; $496a: $e0 $70
    ld hl, $d200                                  ; $496c: $21 $00 $d2
    ld a, [hl+]                                   ; $496f: $2a
    ld h, [hl]                                    ; $4970: $66
    ld l, a                                       ; $4971: $6f
    ld a, [hl+]                                   ; $4972: $2a
    ld h, [hl]                                    ; $4973: $66
    ld l, a                                       ; $4974: $6f
    pop af                                        ; $4975: $f1
    ldh [$96], a                                  ; $4976: $e0 $96
    ldh [rSVBK], a                                ; $4978: $e0 $70
    jp hl                                         ; $497a: $e9


Call_00f_497b:
    ldh a, [$96]                                  ; $497b: $f0 $96
    push af                                       ; $497d: $f5
    ld a, $06                                     ; $497e: $3e $06
    ldh [$96], a                                  ; $4980: $e0 $96
    ldh [rSVBK], a                                ; $4982: $e0 $70
    ld hl, $d200                                  ; $4984: $21 $00 $d2
    ld a, [hl+]                                   ; $4987: $2a
    ld h, [hl]                                    ; $4988: $66
    ld l, a                                       ; $4989: $6f
    inc hl                                        ; $498a: $23
    inc hl                                        ; $498b: $23
    ld a, [hl+]                                   ; $498c: $2a
    ld h, [hl]                                    ; $498d: $66
    ld l, a                                       ; $498e: $6f
    pop af                                        ; $498f: $f1
    ldh [$96], a                                  ; $4990: $e0 $96
    ldh [rSVBK], a                                ; $4992: $e0 $70
    jp hl                                         ; $4994: $e9


Call_00f_4995:
    push af                                       ; $4995: $f5
    ld hl, $4954                                  ; $4996: $21 $54 $49
    ld de, $d1a0                                  ; $4999: $11 $a0 $d1
    call Call_000_1f2f                            ; $499c: $cd $2f $1f
    ld hl, $4929                                  ; $499f: $21 $29 $49
    ld de, $d4a0                                  ; $49a2: $11 $a0 $d4
    call Call_000_1f2f                            ; $49a5: $cd $2f $1f
    pop af                                        ; $49a8: $f1
    ret                                           ; $49a9: $c9


Call_00f_49aa:
    ld h, $00                                     ; $49aa: $26 $00
    ld l, $00                                     ; $49ac: $2e $00
    call Call_00f_4613                            ; $49ae: $cd $13 $46
    ld de, $d600                                  ; $49b1: $11 $00 $d6
    call Call_000_1f2f                            ; $49b4: $cd $2f $1f
    ld hl, $d600                                  ; $49b7: $21 $00 $d6
    ld de, $b070                                  ; $49ba: $11 $70 $b0
    ld c, $09                                     ; $49bd: $0e $09
    call Call_000_0468                            ; $49bf: $cd $68 $04
    ld a, $07                                     ; $49c2: $3e $07
    ld hl, $d4c1                                  ; $49c4: $21 $c1 $d4
    ld bc, $001e                                  ; $49c7: $01 $1e $00
    ld [hl+], a                                   ; $49ca: $22
    inc de                                        ; $49cb: $13
    inc a                                         ; $49cc: $3c
    ld [hl+], a                                   ; $49cd: $22
    inc de                                        ; $49ce: $13
    inc a                                         ; $49cf: $3c
    ld [hl], a                                    ; $49d0: $77
    inc de                                        ; $49d1: $13
    inc a                                         ; $49d2: $3c
    add hl, bc                                    ; $49d3: $09
    ld [hl+], a                                   ; $49d4: $22
    inc de                                        ; $49d5: $13
    inc a                                         ; $49d6: $3c
    ld [hl+], a                                   ; $49d7: $22
    inc de                                        ; $49d8: $13
    inc a                                         ; $49d9: $3c
    ld [hl], a                                    ; $49da: $77
    inc de                                        ; $49db: $13
    inc a                                         ; $49dc: $3c
    add hl, bc                                    ; $49dd: $09
    ld [hl+], a                                   ; $49de: $22
    inc de                                        ; $49df: $13
    inc a                                         ; $49e0: $3c
    ld [hl+], a                                   ; $49e1: $22
    inc de                                        ; $49e2: $13
    inc a                                         ; $49e3: $3c
    ld [hl], a                                    ; $49e4: $77
    ld h, $00                                     ; $49e5: $26 $00
    ld l, $06                                     ; $49e7: $2e $06
    call Call_00f_4613                            ; $49e9: $cd $13 $46
    ld d, h                                       ; $49ec: $54
    ld e, l                                       ; $49ed: $5d
    ld hl, $d1c1                                  ; $49ee: $21 $c1 $d1
    ld bc, $001e                                  ; $49f1: $01 $1e $00
    ld a, [de]                                    ; $49f4: $1a
    ld [hl+], a                                   ; $49f5: $22
    inc de                                        ; $49f6: $13
    ld a, [de]                                    ; $49f7: $1a
    ld [hl+], a                                   ; $49f8: $22
    inc de                                        ; $49f9: $13
    ld a, [de]                                    ; $49fa: $1a
    ld [hl], a                                    ; $49fb: $77
    inc de                                        ; $49fc: $13
    add hl, bc                                    ; $49fd: $09
    ld a, [de]                                    ; $49fe: $1a
    ld [hl+], a                                   ; $49ff: $22
    inc de                                        ; $4a00: $13
    ld a, [de]                                    ; $4a01: $1a
    ld [hl+], a                                   ; $4a02: $22
    inc de                                        ; $4a03: $13
    ld a, [de]                                    ; $4a04: $1a
    ld [hl], a                                    ; $4a05: $77
    inc de                                        ; $4a06: $13
    add hl, bc                                    ; $4a07: $09
    ld a, [de]                                    ; $4a08: $1a
    ld [hl+], a                                   ; $4a09: $22
    inc de                                        ; $4a0a: $13
    ld a, [de]                                    ; $4a0b: $1a
    ld [hl+], a                                   ; $4a0c: $22
    inc de                                        ; $4a0d: $13
    ld a, [de]                                    ; $4a0e: $1a
    ld [hl], a                                    ; $4a0f: $77
    ret                                           ; $4a10: $c9


Call_00f_4a11:
    ld hl, $4892                                  ; $4a11: $21 $92 $48
    ld de, $d000                                  ; $4a14: $11 $00 $d0
    call Call_000_1f2f                            ; $4a17: $cd $2f $1f
    ld hl, $48d5                                  ; $4a1a: $21 $d5 $48
    ld de, $d300                                  ; $4a1d: $11 $00 $d3
    call Call_000_1f2f                            ; $4a20: $cd $2f $1f
    ld hl, $4954                                  ; $4a23: $21 $54 $49
    ld de, $d600                                  ; $4a26: $11 $00 $d6
    call Call_000_1f2f                            ; $4a29: $cd $2f $1f
    ld hl, $4929                                  ; $4a2c: $21 $29 $49
    ld de, $d900                                  ; $4a2f: $11 $00 $d9
    call Call_000_1f2f                            ; $4a32: $cd $2f $1f
    ld hl, $d620                                  ; $4a35: $21 $20 $d6
    ld de, $d1e0                                  ; $4a38: $11 $e0 $d1
    ld c, $02                                     ; $4a3b: $0e $02
    call Call_000_03eb                            ; $4a3d: $cd $eb $03
    ld hl, $d920                                  ; $4a40: $21 $20 $d9
    ld de, $d4e0                                  ; $4a43: $11 $e0 $d4
    ld c, $02                                     ; $4a46: $0e $02
    call Call_000_03eb                            ; $4a48: $cd $eb $03
    call Call_00f_4aa0                            ; $4a4b: $cd $a0 $4a
    call Call_000_2e3b                            ; $4a4e: $cd $3b $2e
    ld hl, $d600                                  ; $4a51: $21 $00 $d6
    ld de, $d1c0                                  ; $4a54: $11 $c0 $d1
    ld c, $04                                     ; $4a57: $0e $04
    call Call_000_03eb                            ; $4a59: $cd $eb $03
    ld hl, $d900                                  ; $4a5c: $21 $00 $d9
    ld de, $d4c0                                  ; $4a5f: $11 $c0 $d4
    ld c, $04                                     ; $4a62: $0e $04
    call Call_000_03eb                            ; $4a64: $cd $eb $03
    ld hl, $d680                                  ; $4a67: $21 $80 $d6
    ld de, $d200                                  ; $4a6a: $11 $00 $d2
    ld c, $02                                     ; $4a6d: $0e $02
    call Call_000_03eb                            ; $4a6f: $cd $eb $03
    ld hl, $d980                                  ; $4a72: $21 $80 $d9
    ld de, $d500                                  ; $4a75: $11 $00 $d5
    ld c, $02                                     ; $4a78: $0e $02
    call Call_000_03eb                            ; $4a7a: $cd $eb $03
    call Call_00f_4aa0                            ; $4a7d: $cd $a0 $4a
    call Call_000_2e3b                            ; $4a80: $cd $3b $2e
    ld hl, $d600                                  ; $4a83: $21 $00 $d6
    ld de, $d1a0                                  ; $4a86: $11 $a0 $d1
    ld c, $0a                                     ; $4a89: $0e $0a
    call Call_000_03eb                            ; $4a8b: $cd $eb $03
    ld hl, $d900                                  ; $4a8e: $21 $00 $d9
    ld de, $d4a0                                  ; $4a91: $11 $a0 $d4
    ld c, $0a                                     ; $4a94: $0e $0a
    call Call_000_03eb                            ; $4a96: $cd $eb $03
    call Call_00f_4aa0                            ; $4a99: $cd $a0 $4a
    call Call_000_2e3b                            ; $4a9c: $cd $3b $2e
    ret                                           ; $4a9f: $c9


Call_00f_4aa0:
    ld hl, $d1a0                                  ; $4aa0: $21 $a0 $d1
    ld de, $b9a0                                  ; $4aa3: $11 $a0 $b9
    ld c, $0a                                     ; $4aa6: $0e $0a
    call Call_000_0468                            ; $4aa8: $cd $68 $04
    ld hl, $d4a0                                  ; $4aab: $21 $a0 $d4
    ld de, $99a0                                  ; $4aae: $11 $a0 $99
    ld c, $0a                                     ; $4ab1: $0e $0a
    call Call_000_0468                            ; $4ab3: $cd $68 $04
    ret                                           ; $4ab6: $c9


    call Call_00f_4b7a                            ; $4ab7: $cd $7a $4b
    ld bc, $4c78                                  ; $4aba: $01 $78 $4c
    call Call_00f_400b                            ; $4abd: $cd $0b $40
    ld c, $10                                     ; $4ac0: $0e $10
    call Call_000_25af                            ; $4ac2: $cd $af $25
    call Call_000_2625                            ; $4ac5: $cd $25 $26
    call Call_00f_41e2                            ; $4ac8: $cd $e2 $41
    push af                                       ; $4acb: $f5
    ld c, $10                                     ; $4acc: $0e $10
    call Call_000_25a1                            ; $4ace: $cd $a1 $25
    call Call_000_2625                            ; $4ad1: $cd $25 $26
    pop af                                        ; $4ad4: $f1
    ret                                           ; $4ad5: $c9


    ld a, $06                                     ; $4ad6: $3e $06
    ldh [$96], a                                  ; $4ad8: $e0 $96
    ldh [rSVBK], a                                ; $4ada: $e0 $70
    ld a, l                                       ; $4adc: $7d
    ld [$d209], a                                 ; $4add: $ea $09 $d2
    push hl                                       ; $4ae0: $e5
    call Call_00f_4b7a                            ; $4ae1: $cd $7a $4b
    pop bc                                        ; $4ae4: $c1
    push hl                                       ; $4ae5: $e5
    ld e, $00                                     ; $4ae6: $1e $00
    ld a, b                                       ; $4ae8: $78

jr_00f_4ae9:
    inc e                                         ; $4ae9: $1c
    inc hl                                        ; $4aea: $23
    cp [hl]                                       ; $4aeb: $be
    jr nz, jr_00f_4ae9                            ; $4aec: $20 $fb

    pop hl                                        ; $4aee: $e1
    ld bc, $4c78                                  ; $4aef: $01 $78 $4c
    call Call_00f_400b                            ; $4af2: $cd $0b $40
    ld a, $06                                     ; $4af5: $3e $06
    ldh [$96], a                                  ; $4af7: $e0 $96
    ldh [rSVBK], a                                ; $4af9: $e0 $70
    ld a, [$d209]                                 ; $4afb: $fa $09 $d2
    bit 7, a                                      ; $4afe: $cb $7f
    jr z, jr_00f_4b08                             ; $4b00: $28 $06

    ld hl, $4292                                  ; $4b02: $21 $92 $42
    call Call_000_2449                            ; $4b05: $cd $49 $24

jr_00f_4b08:
    ld c, $10                                     ; $4b08: $0e $10
    call Call_000_25af                            ; $4b0a: $cd $af $25
    call Call_000_2625                            ; $4b0d: $cd $25 $26

jr_00f_4b10:
    ld a, $06                                     ; $4b10: $3e $06
    ldh [$96], a                                  ; $4b12: $e0 $96
    ldh [rSVBK], a                                ; $4b14: $e0 $70
    ld a, [$d209]                                 ; $4b16: $fa $09 $d2
    bit 7, a                                      ; $4b19: $cb $7f
    jr z, jr_00f_4b33                             ; $4b1b: $28 $16

    ld hl, $4292                                  ; $4b1d: $21 $92 $42
    call Call_000_2449                            ; $4b20: $cd $49 $24
    ld hl, $d207                                  ; $4b23: $21 $07 $d2
    ld a, [hl+]                                   ; $4b26: $2a
    ld h, [hl]                                    ; $4b27: $66
    ld l, a                                       ; $4b28: $6f
    ldh a, [$b0]                                  ; $4b29: $f0 $b0
    add l                                         ; $4b2b: $85
    ld l, a                                       ; $4b2c: $6f
    jr nc, jr_00f_4b30                            ; $4b2d: $30 $01

    inc h                                         ; $4b2f: $24

jr_00f_4b30:
    ld a, [hl]                                    ; $4b30: $7e
    jr jr_00f_4b40                                ; $4b31: $18 $0d

jr_00f_4b33:
    ld a, $01                                     ; $4b33: $3e $01
    ldh [$96], a                                  ; $4b35: $e0 $96
    ldh [rSVBK], a                                ; $4b37: $e0 $70
    call Call_00f_41e2                            ; $4b39: $cd $e2 $41
    cp $ff                                        ; $4b3c: $fe $ff
    jr z, jr_00f_4b6d                             ; $4b3e: $28 $2d

jr_00f_4b40:
    ld b, a                                       ; $4b40: $47
    push bc                                       ; $4b41: $c5
    ld a, $06                                     ; $4b42: $3e $06
    ldh [$96], a                                  ; $4b44: $e0 $96
    ldh [rSVBK], a                                ; $4b46: $e0 $70
    ld a, [$d209]                                 ; $4b48: $fa $09 $d2
    and $7f                                       ; $4b4b: $e6 $7f
    call Call_00f_78c5                            ; $4b4d: $cd $c5 $78
    call Call_000_2e3b                            ; $4b50: $cd $3b $2e
    ld a, $01                                     ; $4b53: $3e $01
    ld hl, $789f                                  ; $4b55: $21 $9f $78
    call Call_000_23e8                            ; $4b58: $cd $e8 $23
    call Call_00f_77b3                            ; $4b5b: $cd $b3 $77
    cp $ff                                        ; $4b5e: $fe $ff
    pop bc                                        ; $4b60: $c1
    jr nz, jr_00f_4b6b                            ; $4b61: $20 $08

    ld hl, $789f                                  ; $4b63: $21 $9f $78
    call Call_000_2449                            ; $4b66: $cd $49 $24
    jr jr_00f_4b10                                ; $4b69: $18 $a5

jr_00f_4b6b:
    ld c, a                                       ; $4b6b: $4f
    ld a, b                                       ; $4b6c: $78

jr_00f_4b6d:
    push af                                       ; $4b6d: $f5
    push bc                                       ; $4b6e: $c5
    ld c, $10                                     ; $4b6f: $0e $10
    call Call_000_25a1                            ; $4b71: $cd $a1 $25
    call Call_000_2625                            ; $4b74: $cd $25 $26
    pop bc                                        ; $4b77: $c1
    pop af                                        ; $4b78: $f1
    ret                                           ; $4b79: $c9


Call_00f_4b7a:
    ld a, $06                                     ; $4b7a: $3e $06
    ldh [$96], a                                  ; $4b7c: $e0 $96
    ldh [rSVBK], a                                ; $4b7e: $e0 $70
    ld hl, $d658                                  ; $4b80: $21 $58 $d6
    push hl                                       ; $4b83: $e5
    xor a                                         ; $4b84: $af
    ld [hl+], a                                   ; $4b85: $22
    ld d, a                                       ; $4b86: $57
    ld e, $01                                     ; $4b87: $1e $01
    ld a, [$c2a5]                                 ; $4b89: $fa $a5 $c2
    and $0f                                       ; $4b8c: $e6 $0f
    cp $0f                                        ; $4b8e: $fe $0f
    jp z, Jump_00f_4c15                           ; $4b90: $ca $15 $4c

    ld a, [$c834]                                 ; $4b93: $fa $34 $c8
    cp $01                                        ; $4b96: $fe $01
    jp z, Jump_00f_4be4                           ; $4b98: $ca $e4 $4b

    cp $02                                        ; $4b9b: $fe $02
    jp nz, Jump_00f_4bb9                          ; $4b9d: $c2 $b9 $4b

    ld a, [$c33f]                                 ; $4ba0: $fa $3f $c3
    or a                                          ; $4ba3: $b7
    jr nz, jr_00f_4bb9                            ; $4ba4: $20 $13

    ld [hl], $01                                  ; $4ba6: $36 $01
    inc hl                                        ; $4ba8: $23
    inc d                                         ; $4ba9: $14
    ld [hl], $02                                  ; $4baa: $36 $02
    inc hl                                        ; $4bac: $23
    inc d                                         ; $4bad: $14
    ld [hl], $03                                  ; $4bae: $36 $03
    inc hl                                        ; $4bb0: $23
    inc d                                         ; $4bb1: $14
    ld [hl], $04                                  ; $4bb2: $36 $04
    inc hl                                        ; $4bb4: $23
    inc d                                         ; $4bb5: $14
    jp Jump_00f_4c46                              ; $4bb6: $c3 $46 $4c


Jump_00f_4bb9:
jr_00f_4bb9:
    ldh a, [$cf]                                  ; $4bb9: $f0 $cf
    or a                                          ; $4bbb: $b7
    jp nz, Jump_00f_4c48                          ; $4bbc: $c2 $48 $4c

    ld [hl], $01                                  ; $4bbf: $36 $01
    inc hl                                        ; $4bc1: $23
    inc d                                         ; $4bc2: $14
    ld [hl], $02                                  ; $4bc3: $36 $02
    inc hl                                        ; $4bc5: $23
    inc d                                         ; $4bc6: $14
    ld [hl], $03                                  ; $4bc7: $36 $03
    inc hl                                        ; $4bc9: $23
    inc d                                         ; $4bca: $14
    ld [hl], $04                                  ; $4bcb: $36 $04
    inc hl                                        ; $4bcd: $23
    inc d                                         ; $4bce: $14
    rst $30                                       ; $4bcf: $f7
    ld h, b                                       ; $4bd0: $60
    ld de, $0428                                  ; $4bd1: $11 $28 $04
    ld [hl], $05                                  ; $4bd4: $36 $05
    inc hl                                        ; $4bd6: $23
    inc d                                         ; $4bd7: $14
    rst $30                                       ; $4bd8: $f7
    ldh [rNR13], a                                ; $4bd9: $e0 $13
    jr z, jr_00f_4be1                             ; $4bdb: $28 $04

    ld [hl], $06                                  ; $4bdd: $36 $06
    inc hl                                        ; $4bdf: $23
    inc d                                         ; $4be0: $14

jr_00f_4be1:
    jp Jump_00f_4c46                              ; $4be1: $c3 $46 $4c


Jump_00f_4be4:
    ldh a, [$cf]                                  ; $4be4: $f0 $cf
    or a                                          ; $4be6: $b7
    jp nz, Jump_00f_4c62                          ; $4be7: $c2 $62 $4c

    ld [hl], $01                                  ; $4bea: $36 $01
    inc hl                                        ; $4bec: $23
    inc d                                         ; $4bed: $14
    rst $30                                       ; $4bee: $f7
    nop                                           ; $4bef: $00
    ld c, $28                                     ; $4bf0: $0e $28
    inc b                                         ; $4bf2: $04
    ld [hl], $02                                  ; $4bf3: $36 $02
    inc hl                                        ; $4bf5: $23
    inc d                                         ; $4bf6: $14
    rst $30                                       ; $4bf7: $f7
    jr nz, jr_00f_4c08                            ; $4bf8: $20 $0e

    jr z, jr_00f_4c00                             ; $4bfa: $28 $04

    ld [hl], $03                                  ; $4bfc: $36 $03
    inc hl                                        ; $4bfe: $23
    inc d                                         ; $4bff: $14

jr_00f_4c00:
    rst $30                                       ; $4c00: $f7
    ld b, b                                       ; $4c01: $40
    ld c, $28                                     ; $4c02: $0e $28
    inc b                                         ; $4c04: $04
    ld [hl], $04                                  ; $4c05: $36 $04
    inc hl                                        ; $4c07: $23

jr_00f_4c08:
    inc d                                         ; $4c08: $14
    rst $30                                       ; $4c09: $f7
    ld h, b                                       ; $4c0a: $60
    ld de, $0428                                  ; $4c0b: $11 $28 $04
    ld [hl], $05                                  ; $4c0e: $36 $05
    inc hl                                        ; $4c10: $23
    inc d                                         ; $4c11: $14
    jp Jump_00f_4c46                              ; $4c12: $c3 $46 $4c


Jump_00f_4c15:
    ldh a, [$cf]                                  ; $4c15: $f0 $cf
    or a                                          ; $4c17: $b7
    jr nz, jr_00f_4c48                            ; $4c18: $20 $2e

    ld [hl], $01                                  ; $4c1a: $36 $01
    inc hl                                        ; $4c1c: $23
    inc d                                         ; $4c1d: $14
    ld [hl], $02                                  ; $4c1e: $36 $02
    inc hl                                        ; $4c20: $23
    inc d                                         ; $4c21: $14
    ld [hl], $03                                  ; $4c22: $36 $03
    inc hl                                        ; $4c24: $23
    inc d                                         ; $4c25: $14
    ld [hl], $04                                  ; $4c26: $36 $04
    inc hl                                        ; $4c28: $23
    inc d                                         ; $4c29: $14
    push de                                       ; $4c2a: $d5
    ld de, $01e0                                  ; $4c2b: $11 $e0 $01
    rst $18                                       ; $4c2e: $df

    db $42, $02

    pop de                                        ; $4c31: $d1
    jr z, jr_00f_4c38                             ; $4c32: $28 $04

    ld [hl], $05                                  ; $4c34: $36 $05
    inc hl                                        ; $4c36: $23
    inc d                                         ; $4c37: $14

jr_00f_4c38:
    push de                                       ; $4c38: $d5
    ld de, $0200                                  ; $4c39: $11 $00 $02
    rst $18                                       ; $4c3c: $df

    db $42, $02

    pop de                                        ; $4c3f: $d1
    jr z, jr_00f_4c46                             ; $4c40: $28 $04

    ld [hl], $06                                  ; $4c42: $36 $06
    inc hl                                        ; $4c44: $23
    inc d                                         ; $4c45: $14

Jump_00f_4c46:
jr_00f_4c46:
    pop hl                                        ; $4c46: $e1
    ret                                           ; $4c47: $c9


Jump_00f_4c48:
jr_00f_4c48:
    ld [hl], $01                                  ; $4c48: $36 $01
    inc hl                                        ; $4c4a: $23
    inc d                                         ; $4c4b: $14
    ld [hl], $02                                  ; $4c4c: $36 $02
    inc hl                                        ; $4c4e: $23
    inc d                                         ; $4c4f: $14
    ld [hl], $03                                  ; $4c50: $36 $03
    inc hl                                        ; $4c52: $23
    inc d                                         ; $4c53: $14
    ld [hl], $04                                  ; $4c54: $36 $04
    inc hl                                        ; $4c56: $23
    inc d                                         ; $4c57: $14
    ld [hl], $05                                  ; $4c58: $36 $05
    inc hl                                        ; $4c5a: $23
    inc d                                         ; $4c5b: $14
    ld [hl], $06                                  ; $4c5c: $36 $06
    inc hl                                        ; $4c5e: $23
    inc d                                         ; $4c5f: $14
    jr jr_00f_4c46                                ; $4c60: $18 $e4

Jump_00f_4c62:
    ld [hl], $01                                  ; $4c62: $36 $01
    inc hl                                        ; $4c64: $23
    inc d                                         ; $4c65: $14
    ld [hl], $02                                  ; $4c66: $36 $02
    inc hl                                        ; $4c68: $23
    inc d                                         ; $4c69: $14
    ld [hl], $03                                  ; $4c6a: $36 $03
    inc hl                                        ; $4c6c: $23
    inc d                                         ; $4c6d: $14
    ld [hl], $04                                  ; $4c6e: $36 $04
    inc hl                                        ; $4c70: $23
    inc d                                         ; $4c71: $14
    ld [hl], $05                                  ; $4c72: $36 $05
    inc hl                                        ; $4c74: $23
    inc d                                         ; $4c75: $14
    jr jr_00f_4c46                                ; $4c76: $18 $ce

    db $d4, $4c, $33, $4d, $57, $4d, $90, $4e

    sbc b                                         ; $4c80: $98
    ld c, [hl]                                    ; $4c81: $4e
    and a                                         ; $4c82: $a7
    ld c, [hl]                                    ; $4c83: $4e
    nop                                           ; $4c84: $00
    ld c, a                                       ; $4c85: $4f
    ld e, c                                       ; $4c86: $59
    ld c, a                                       ; $4c87: $4f
    ld h, d                                       ; $4c88: $62
    ld c, a                                       ; $4c89: $4f
    or d                                          ; $4c8a: $b2
    ld c, a                                       ; $4c8b: $4f

    db $d2, $4f, $52, $50, $61, $53, $da, $56, $e3, $56, $33, $57, $53, $57, $a0, $57
    db $79, $5a, $84, $5d, $8d, $5d, $dd, $5d, $fd, $5d, $6a, $5e, $c5, $60, $8c, $63
    db $95, $63, $e5, $63, $05, $64, $5c, $64, $e2, $66, $a1, $69, $aa, $69, $fa, $69

    ld a, [de]                                    ; $4cbc: $1a
    ld l, d                                       ; $4cbd: $6a
    and e                                         ; $4cbe: $a3
    ld l, d                                       ; $4cbf: $6a
    or d                                          ; $4cc0: $b2
    ld l, l                                       ; $4cc1: $6d
    db $ed                                        ; $4cc2: $ed
    ld [hl], b                                    ; $4cc3: $70
    or $70                                        ; $4cc4: $f6 $70
    ld b, [hl]                                    ; $4cc6: $46
    ld [hl], c                                    ; $4cc7: $71
    ld h, [hl]                                    ; $4cc8: $66
    ld [hl], c                                    ; $4cc9: $71
    ret nz                                        ; $4cca: $c0

    ld [hl], c                                    ; $4ccb: $71
    ld b, h                                       ; $4ccc: $44
    ld [hl], h                                    ; $4ccd: $74
    ld a, [hl-]                                   ; $4cce: $3a
    ld [hl], a                                    ; $4ccf: $77
    ld b, e                                       ; $4cd0: $43
    ld [hl], a                                    ; $4cd1: $77
    sub e                                         ; $4cd2: $93
    ld [hl], a                                    ; $4cd3: $77

    rst $18                                       ; $4cd4: $df

    db $1a, $03

    call Call_00f_4995                            ; $4cd7: $cd $95 $49
    call Call_00f_49aa                            ; $4cda: $cd $aa $49
    ldh a, [$96]                                  ; $4cdd: $f0 $96
    push af                                       ; $4cdf: $f5
    ld a, $06                                     ; $4ce0: $3e $06
    ldh [$96], a                                  ; $4ce2: $e0 $96
    ldh [rSVBK], a                                ; $4ce4: $e0 $70
    ld hl, $d207                                  ; $4ce6: $21 $07 $d2
    ld a, [hl+]                                   ; $4ce9: $2a
    ld h, [hl]                                    ; $4cea: $66
    ld l, a                                       ; $4ceb: $6f
    ldh a, [$b0]                                  ; $4cec: $f0 $b0
    add l                                         ; $4cee: $85
    ld l, a                                       ; $4cef: $6f
    jr nc, jr_00f_4cf3                            ; $4cf0: $30 $01

    inc h                                         ; $4cf2: $24

jr_00f_4cf3:
    ld d, [hl]                                    ; $4cf3: $56
    pop af                                        ; $4cf4: $f1
    ldh [$96], a                                  ; $4cf5: $e0 $96
    ldh [rSVBK], a                                ; $4cf7: $e0 $70
    ld hl, $0021                                  ; $4cf9: $21 $21 $00
    ld a, d                                       ; $4cfc: $7a
    push af                                       ; $4cfd: $f5
    add l                                         ; $4cfe: $85
    ld l, a                                       ; $4cff: $6f
    jr nc, jr_00f_4d03                            ; $4d00: $30 $01

    inc h                                         ; $4d02: $24

jr_00f_4d03:
    ld de, $d4c5                                  ; $4d03: $11 $c5 $d4
    ld c, $20                                     ; $4d06: $0e $20
    rst $18                                       ; $4d08: $df

    db $22, $05

    ld hl, $0028                                  ; $4d0b: $21 $28 $00
    ld a, [$c2a5]                                 ; $4d0e: $fa $a5 $c2
    and $0f                                       ; $4d11: $e6 $0f
    cp $0f                                        ; $4d13: $fe $0f
    jp nz, Jump_00f_4d1b                          ; $4d15: $c2 $1b $4d

    ld hl, $002f                                  ; $4d18: $21 $2f $00

Jump_00f_4d1b:
    pop af                                        ; $4d1b: $f1
    add l                                         ; $4d1c: $85
    ld l, a                                       ; $4d1d: $6f
    jr nc, jr_00f_4d21                            ; $4d1e: $30 $01

    inc h                                         ; $4d20: $24

jr_00f_4d21:
    ld de, $d505                                  ; $4d21: $11 $05 $d5
    ld c, $20                                     ; $4d24: $0e $20
    rst $18                                       ; $4d26: $df

    db $22, $05

    rst $18                                       ; $4d29: $df

    db $24, $03

    call Call_00f_4aa0                            ; $4d2c: $cd $a0 $4a
    call Call_000_2e3b                            ; $4d2f: $cd $3b $2e
    ret                                           ; $4d32: $c9


    call Call_00f_4995                            ; $4d33: $cd $95 $49
    call Call_00f_4aa0                            ; $4d36: $cd $a0 $4a
    call Call_000_2e3b                            ; $4d39: $cd $3b $2e
    ret                                           ; $4d3c: $c9


    ld bc, $ff00                                  ; $4d3d: $01 $00 $ff
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    rst $38                                       ; $4d42: $ff
    rst $38                                       ; $4d43: $ff
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    rst $38                                       ; $4d47: $ff
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    rst $38                                       ; $4d4a: $ff
    rst $38                                       ; $4d4b: $ff
    rst $38                                       ; $4d4c: $ff
    nop                                           ; $4d4d: $00
    rst $38                                       ; $4d4e: $ff
    rst $38                                       ; $4d4f: $ff
    rst $38                                       ; $4d50: $ff
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    ld [$0000], a                                 ; $4d53: $ea $00 $00
    nop                                           ; $4d56: $00

    db $ff, $07, $0f, $0a, $1d, $17, $38, $2f, $30, $ff, $3b, $67, $57, $ef, $be, $cf
    db $b8, $cd, $ff, $57, $ef, $2e, $71, $17, $38, $0b, $1c, $ff, $05, $0e, $03, $07
    db $01, $03, $00, $00, $ef, $00, $80, $80, $c0, $ff, $e1, $d9, $ff, $e5, $ff, $fe
    db $be, $c3, $d5, $bb, $7f, $b9, $f5, $ff, $bb, $ff, $83, $b7, $cf, $ce, $ff, $fc
    db $e7, $fe, $98, $fc, $e0, $e0, $fd, $e4, $81, $c3, $c6, $ff, $6f, $ef, $69, $ef
    db $69, $cd, $6b, $b6, $ff, $7b, $7b, $86, $b7, $ce, $4f, $fe, $3d, $f7, $7f, $18
    db $3d, $e0, $e5, $03, $07, $b4, $ff, $ff, $4b, $fc, $fe, $09, $b5, $7b, $ff, $70
    db $ff, $fb, $7c, $f6, $79, $fd, $73, $fb, $77, $ef, $ef, $ff, $c6, $ef, $c0, $e6
    db $80, $8c, $de, $ff, $b2, $ff, $dd, $e3, $bd, $db, $eb, $97, $ff, $ff, $8f, $f4
    db $8f, $be, $c3, $ef, $f3, $ef, $1f, $ff, $0e, $1f, $c6, $e1, $05, $0e, $0b, $ff
    db $1c, $16, $39, $2d, $33, $2e, $31, $17, $ff, $b8, $8b, $9c, $85, $8e, $0b, $9c
    db $36, $ff, $79, $7d, $43, $7b, $47, $3f, $7f, $1e, $fd, $3f, $60, $e7, $c3, $c7
    db $8c, $df, $57, $f8, $ff, $af, $76, $ba, $65, $5f, $e3, $fd, $e3, $ff, $ef, $f0
    db $9b, $fc, $0f, $9f, $03, $07, $ff, $00, $00, $60, $f0, $d0, $b8, $f8, $98, $ff
    db $f8, $98, $79, $9b, $b6, $df, $7b, $dc, $ff, $77, $db, $bd, $d2, $7f, $91, $7e
    db $91, $ff, $f7, $98, $fd, $9e, $ff, $ff, $b1, $fb, $fe, $40, $e7, $87, $cf, $5b
    db $fc, $af, $70, $bb, $fe, $fa, $c0, $db, $e7, $ef, $f0, $f7, $78, $ec, $df, $7f
    db $a7, $ef, $c1, $e3, $20, $e3, $30, $78, $ff, $78, $4c, $7c, $cc, $fc, $86, $fe
    db $ce, $ff, $fc, $ce, $f8, $cc, $f4, $ce, $dc, $e6, $ff, $fa, $e7, $ef, $f3, $df
    db $ff, $8e, $df, $03, $00, $00, $00, $00

    nop                                           ; $4e8f: $00

    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    ld bc, $ff00                                  ; $4e98: $01 $00 $ff
    rst $38                                       ; $4e9b: $ff
    rst $38                                       ; $4e9c: $ff
    rst $38                                       ; $4e9d: $ff
    rst $38                                       ; $4e9e: $ff
    rst $38                                       ; $4e9f: $ff
    rst $38                                       ; $4ea0: $ff
    rst $38                                       ; $4ea1: $ff
    rst $38                                       ; $4ea2: $ff
    db $e4                                        ; $4ea3: $e4
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    rrca                                          ; $4ea7: $0f
    ld d, l                                       ; $4ea8: $55
    nop                                           ; $4ea9: $00
    xor d                                         ; $4eaa: $aa
    nop                                           ; $4eab: $00
    db $fc                                        ; $4eac: $fc
    rst $38                                       ; $4ead: $ff
    db $fc                                        ; $4eae: $fc
    rst $38                                       ; $4eaf: $ff
    db $fc                                        ; $4eb0: $fc
    rst $38                                       ; $4eb1: $ff
    db $fc                                        ; $4eb2: $fc
    rst $38                                       ; $4eb3: $ff
    nop                                           ; $4eb4: $00
    db $fc                                        ; $4eb5: $fc
    rst $38                                       ; $4eb6: $ff
    db $fc                                        ; $4eb7: $fc
    rst $38                                       ; $4eb8: $ff
    db $fc                                        ; $4eb9: $fc
    rst $38                                       ; $4eba: $ff
    db $fc                                        ; $4ebb: $fc
    rst $38                                       ; $4ebc: $ff
    db $fc                                        ; $4ebd: $fc
    rst $38                                       ; $4ebe: $ff
    db $fc                                        ; $4ebf: $fc
    rst $38                                       ; $4ec0: $ff
    db $fc                                        ; $4ec1: $fc
    rst $38                                       ; $4ec2: $ff
    db $fc                                        ; $4ec3: $fc
    rst $38                                       ; $4ec4: $ff
    nop                                           ; $4ec5: $00
    db $fc                                        ; $4ec6: $fc
    rst $38                                       ; $4ec7: $ff
    db $fc                                        ; $4ec8: $fc
    rst $38                                       ; $4ec9: $ff
    db $fc                                        ; $4eca: $fc
    rst $38                                       ; $4ecb: $ff
    db $fc                                        ; $4ecc: $fc
    rst $38                                       ; $4ecd: $ff
    db $fc                                        ; $4ece: $fc
    rst $38                                       ; $4ecf: $ff
    db $fc                                        ; $4ed0: $fc
    rst $38                                       ; $4ed1: $ff
    db $fc                                        ; $4ed2: $fc
    rst $38                                       ; $4ed3: $ff
    db $fc                                        ; $4ed4: $fc
    rst $38                                       ; $4ed5: $ff
    nop                                           ; $4ed6: $00
    db $fc                                        ; $4ed7: $fc
    rst $38                                       ; $4ed8: $ff
    db $fc                                        ; $4ed9: $fc
    rst $38                                       ; $4eda: $ff
    db $fc                                        ; $4edb: $fc
    rst $38                                       ; $4edc: $ff
    db $fc                                        ; $4edd: $fc
    rst $38                                       ; $4ede: $ff
    db $fc                                        ; $4edf: $fc
    rst $38                                       ; $4ee0: $ff
    db $fc                                        ; $4ee1: $fc
    rst $38                                       ; $4ee2: $ff
    db $fc                                        ; $4ee3: $fc
    rst $38                                       ; $4ee4: $ff
    db $fc                                        ; $4ee5: $fc
    rst $38                                       ; $4ee6: $ff
    nop                                           ; $4ee7: $00
    db $fc                                        ; $4ee8: $fc
    rst $38                                       ; $4ee9: $ff
    db $fc                                        ; $4eea: $fc
    rst $38                                       ; $4eeb: $ff
    db $fc                                        ; $4eec: $fc
    rst $38                                       ; $4eed: $ff
    db $fc                                        ; $4eee: $fc
    rst $38                                       ; $4eef: $ff
    db $fc                                        ; $4ef0: $fc
    rst $38                                       ; $4ef1: $ff
    db $fc                                        ; $4ef2: $fc
    rst $38                                       ; $4ef3: $ff
    db $fc                                        ; $4ef4: $fc
    rst $38                                       ; $4ef5: $ff
    db $fc                                        ; $4ef6: $fc
    rst $38                                       ; $4ef7: $ff
    nop                                           ; $4ef8: $00
    db $fc                                        ; $4ef9: $fc
    rst $38                                       ; $4efa: $ff
    ldh a, [$ef]                                  ; $4efb: $f0 $ef
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    rrca                                          ; $4f00: $0f
    ld d, l                                       ; $4f01: $55
    nop                                           ; $4f02: $00
    xor d                                         ; $4f03: $aa
    nop                                           ; $4f04: $00
    db $fc                                        ; $4f05: $fc
    rst $38                                       ; $4f06: $ff
    db $fc                                        ; $4f07: $fc
    rst $38                                       ; $4f08: $ff
    db $fc                                        ; $4f09: $fc
    rst $38                                       ; $4f0a: $ff
    db $fc                                        ; $4f0b: $fc
    rst $38                                       ; $4f0c: $ff
    nop                                           ; $4f0d: $00
    db $fc                                        ; $4f0e: $fc
    rst $38                                       ; $4f0f: $ff
    db $fc                                        ; $4f10: $fc
    rst $38                                       ; $4f11: $ff
    db $fc                                        ; $4f12: $fc
    rst $38                                       ; $4f13: $ff
    db $fc                                        ; $4f14: $fc
    rst $38                                       ; $4f15: $ff
    db $fc                                        ; $4f16: $fc
    rst $38                                       ; $4f17: $ff
    db $fc                                        ; $4f18: $fc
    rst $38                                       ; $4f19: $ff
    db $fc                                        ; $4f1a: $fc
    rst $38                                       ; $4f1b: $ff
    db $fc                                        ; $4f1c: $fc
    rst $38                                       ; $4f1d: $ff
    nop                                           ; $4f1e: $00
    db $fc                                        ; $4f1f: $fc
    rst $38                                       ; $4f20: $ff
    db $fc                                        ; $4f21: $fc
    rst $38                                       ; $4f22: $ff
    db $fc                                        ; $4f23: $fc
    rst $38                                       ; $4f24: $ff
    db $fc                                        ; $4f25: $fc
    rst $38                                       ; $4f26: $ff
    db $fc                                        ; $4f27: $fc
    rst $38                                       ; $4f28: $ff
    db $fc                                        ; $4f29: $fc
    rst $38                                       ; $4f2a: $ff
    db $fc                                        ; $4f2b: $fc
    rst $38                                       ; $4f2c: $ff
    db $fc                                        ; $4f2d: $fc
    rst $38                                       ; $4f2e: $ff
    nop                                           ; $4f2f: $00
    db $fc                                        ; $4f30: $fc
    rst $38                                       ; $4f31: $ff
    db $fc                                        ; $4f32: $fc
    rst $38                                       ; $4f33: $ff
    db $fc                                        ; $4f34: $fc
    rst $38                                       ; $4f35: $ff
    db $fc                                        ; $4f36: $fc
    rst $38                                       ; $4f37: $ff
    db $fc                                        ; $4f38: $fc
    rst $38                                       ; $4f39: $ff
    db $fc                                        ; $4f3a: $fc
    rst $38                                       ; $4f3b: $ff
    db $fc                                        ; $4f3c: $fc
    rst $38                                       ; $4f3d: $ff
    db $fc                                        ; $4f3e: $fc
    rst $38                                       ; $4f3f: $ff
    nop                                           ; $4f40: $00
    db $fc                                        ; $4f41: $fc
    rst $38                                       ; $4f42: $ff
    db $fc                                        ; $4f43: $fc
    rst $38                                       ; $4f44: $ff
    db $fc                                        ; $4f45: $fc
    rst $38                                       ; $4f46: $ff
    db $fc                                        ; $4f47: $fc
    rst $38                                       ; $4f48: $ff
    db $fc                                        ; $4f49: $fc
    rst $38                                       ; $4f4a: $ff
    db $fc                                        ; $4f4b: $fc
    rst $38                                       ; $4f4c: $ff
    db $fc                                        ; $4f4d: $fc
    rst $38                                       ; $4f4e: $ff
    db $fc                                        ; $4f4f: $fc
    rst $38                                       ; $4f50: $ff
    nop                                           ; $4f51: $00
    db $fc                                        ; $4f52: $fc
    rst $38                                       ; $4f53: $ff
    ldh a, [$ef]                                  ; $4f54: $f0 $ef
    nop                                           ; $4f56: $00
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    ld a, [bc]                                    ; $4f59: $0a
    ld a, [hl+]                                   ; $4f5a: $2a
    ld a, [bc]                                    ; $4f5b: $0a
    ld a, [hl+]                                   ; $4f5c: $2a
    ld a, [bc]                                    ; $4f5d: $0a
    ld a, [hl+]                                   ; $4f5e: $2a
    ld a, [bc]                                    ; $4f5f: $0a
    ld a, [hl+]                                   ; $4f60: $2a
    ld a, [bc]                                    ; $4f61: $0a
    inc c                                         ; $4f62: $0c
    inc c                                         ; $4f63: $0c
    inc c                                         ; $4f64: $0c
    inc c                                         ; $4f65: $0c
    inc c                                         ; $4f66: $0c
    inc c                                         ; $4f67: $0c
    inc c                                         ; $4f68: $0c
    inc c                                         ; $4f69: $0c
    inc c                                         ; $4f6a: $0c
    inc c                                         ; $4f6b: $0c
    inc c                                         ; $4f6c: $0c
    inc c                                         ; $4f6d: $0c
    inc c                                         ; $4f6e: $0c
    inc c                                         ; $4f6f: $0c
    inc c                                         ; $4f70: $0c
    inc c                                         ; $4f71: $0c
    inc c                                         ; $4f72: $0c
    inc c                                         ; $4f73: $0c
    inc c                                         ; $4f74: $0c
    inc c                                         ; $4f75: $0c
    inc c                                         ; $4f76: $0c
    inc c                                         ; $4f77: $0c
    inc c                                         ; $4f78: $0c
    inc c                                         ; $4f79: $0c
    inc c                                         ; $4f7a: $0c
    inc c                                         ; $4f7b: $0c
    inc c                                         ; $4f7c: $0c
    inc c                                         ; $4f7d: $0c
    inc c                                         ; $4f7e: $0c
    inc c                                         ; $4f7f: $0c
    inc c                                         ; $4f80: $0c
    inc c                                         ; $4f81: $0c
    inc c                                         ; $4f82: $0c
    inc c                                         ; $4f83: $0c
    inc c                                         ; $4f84: $0c
    inc c                                         ; $4f85: $0c
    inc c                                         ; $4f86: $0c
    inc c                                         ; $4f87: $0c
    inc c                                         ; $4f88: $0c
    inc c                                         ; $4f89: $0c
    inc c                                         ; $4f8a: $0c
    inc c                                         ; $4f8b: $0c
    inc c                                         ; $4f8c: $0c
    inc c                                         ; $4f8d: $0c
    inc c                                         ; $4f8e: $0c
    inc c                                         ; $4f8f: $0c
    inc c                                         ; $4f90: $0c
    inc c                                         ; $4f91: $0c
    inc c                                         ; $4f92: $0c
    inc c                                         ; $4f93: $0c
    inc c                                         ; $4f94: $0c
    inc c                                         ; $4f95: $0c
    inc c                                         ; $4f96: $0c
    inc c                                         ; $4f97: $0c
    inc c                                         ; $4f98: $0c
    inc c                                         ; $4f99: $0c
    inc c                                         ; $4f9a: $0c
    inc c                                         ; $4f9b: $0c
    inc c                                         ; $4f9c: $0c
    inc c                                         ; $4f9d: $0c
    inc c                                         ; $4f9e: $0c
    inc c                                         ; $4f9f: $0c
    inc c                                         ; $4fa0: $0c
    inc c                                         ; $4fa1: $0c
    inc c                                         ; $4fa2: $0c
    inc c                                         ; $4fa3: $0c
    inc c                                         ; $4fa4: $0c
    inc c                                         ; $4fa5: $0c
    inc c                                         ; $4fa6: $0c
    inc c                                         ; $4fa7: $0c
    inc c                                         ; $4fa8: $0c
    inc c                                         ; $4fa9: $0c
    inc c                                         ; $4faa: $0c
    inc c                                         ; $4fab: $0c
    inc c                                         ; $4fac: $0c
    inc c                                         ; $4fad: $0c
    inc c                                         ; $4fae: $0c
    inc c                                         ; $4faf: $0c
    inc c                                         ; $4fb0: $0c
    inc c                                         ; $4fb1: $0c
    rst $38                                       ; $4fb2: $ff
    ld a, a                                       ; $4fb3: $7f
    sub b                                         ; $4fb4: $90
    ld a, a                                       ; $4fb5: $7f
    call nc, $4602                                ; $4fb6: $d4 $02 $46
    ld [bc], a                                    ; $4fb9: $02
    rra                                           ; $4fba: $1f
    jr @+$48                                      ; $4fbb: $18 $46

    ld [bc], a                                    ; $4fbd: $02
    add b                                         ; $4fbe: $80
    add hl, bc                                    ; $4fbf: $09
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    sbc $33                                       ; $4fc2: $de $33
    call z, Call_000_0803                         ; $4fc4: $cc $03 $08
    inc bc                                        ; $4fc7: $03
    ld b, [hl]                                    ; $4fc8: $46
    ld [bc], a                                    ; $4fc9: $02
    adc e                                         ; $4fca: $8b
    ld hl, $04ca                                  ; $4fcb: $21 $ca $04
    or l                                          ; $4fce: $b5
    ld de, $03ff                                  ; $4fcf: $11 $ff $03

    db $ff, $00, $30, $00, $30, $30, $ff, $30, $ff, $be, $f8, $e1, $00, $31, $01, $31
    db $00, $ff, $e0, $1c, $df, $ff, $3e, $ff, $7e, $ff, $ff, $e3, $00, $0c, $df, $00
    db $0c, $0c, $ff, $0c, $f8, $e2, $00, $0c, $ff, $c0, $ec, $01, $31, $01, $33, $07
    db $3f, $ff, $0e, $3f, $1f, $3e, $1f, $3e, $0f, $3e, $ff, $02, $37, $b3, $cc, $4c
    db $80, $88, $00, $ff, $80, $00, $14, $00, $3c, $00, $2c, $18, $ff, $db, $3c, $70
    db $fc, $c0, $6c, $80, $4c, $ff, $98, $3c, $fc, $7c, $fc, $7c, $f8, $7c, $ff, $40
    db $ec, $03, $33, $07, $37, $03, $37, $fc, $9c, $e7, $a9, $e1, $3f, $ff, $0c, $1e
    db $00, $ff, $3c, $fe, $e0, $93, $e0, $c0, $cc, $00, $8c, $9c, $e9, $00, $00

    nop                                           ; $5051: $00

    db $fb, $ff, $00, $fe, $f5, $3e, $00, $1c, $00, $08, $ff, $00, $10, $00, $90, $00
    db $50, $00, $b0, $ff, $00, $d1, $00, $e3, $00, $c7, $00, $8f, $ff, $00, $ee, $f1
    db $57, $bb, $ad, $5e, $5e, $3f, $e1, $b1, $ff, $ef, $ff, $ff, $c3, $e0, $c0, $e3
    db $fc, $ff, $f7, $a0, $e3, $df, $3f, $e7, $78, $f8, $47, $ff, $e0, $5f, $e0, $5f
    db $ff, $5f, $e0, $7f, $ce, $f8, $e1, $ef, $5f, $f0, $f8, $e2, $80, $ef, $fe, $00
    db $57, $fc, $00, $f8, $ae, $e0, $f8, $f8, $e0, $fe, $62, $ea, $ff, $81, $7e, $02
    db $fd, $e4, $fb, $53, $bf, $ae, $80, $e1, $e1, $ff, $be, $80, $e8, $03, $7e, $f2
    db $01, $fe, $24, $e1, $03, $fb, $06, $7f, $fe, $9f, $e2, $ff, $e3, $1e, $03, $fe
    db $07, $fe, $fb, $fe, $7d, $03, $fe, $e0, $07, $fe, $7b, $fe, $83, $f6, $e0, $ef
    db $0f, $fe, $f7, $fa, $00, $ed, $07, $00, $7b, $ff, $00, $7d, $00, $7e, $00, $1f
    db $00, $3f, $fb, $00, $7f, $e4, $c0, $f0, $0f, $e0, $1f, $c0, $b3, $3f, $80, $f5
    db $e1, $d5, $c2, $e0, $ff, $80, $e3, $a1, $c8, $02, $e0, $00, $e7, $fe, $cf, $07
    db $c0, $e0, $a4, $c1, $af, $df, $ff, $f3, $7c, $5c, $e3, $60, $ff, $e3, $ff, $e7
    db $7c, $ff, $60, $fe, $e0, $f8, $e7, $7d, $fe, $6f, $f7, $f0, $7f, $c0, $80, $d3
    db $f8, $00, $70, $00, $b7, $a0, $00, $c1, $8c, $c0, $0f, $f0, $fe, $e3, $0e, $7f
    db $f1, $0c, $f3, $08, $f7, $10, $ef, $80, $e5, $97, $e0, $ff, $77, $80, $c6, $fe
    db $d4, $c2, $fc, $cb, $f8, $fe, $28, $c4, $ef, $f0, $d7, $38, $0b, $fc, $3d, $fb
    db $fe, $c3, $06, $e0, $05, $fe, $3f, $fc, $cb, $ff, $fc, $0f, $f8, $17, $f8, $7f
    db $f0, $bf, $fc, $86, $f4, $f0, $a3, $7f, $00, $bf, $00, $df, $00, $7f, $ef, $00
    db $f6, $00, $f1, $00, $e0, $78, $e0, $95, $83, $e8, $c0, $0f, $ec, $c0, $ff, $00
    db $c0, $80, $c5, $b7, $94, $00, $c6, $01, $c3, $e0, $d0, $a0, $07, $8c, $c0, $88
    db $c1, $01, $7c, $6e, $c0, $a6, $a1, $e0, $00, $c0, $00, $80, $fe, $e0, $a9, $c0
    db $70, $e6, $fe, $fd, $fe, $fe, $e2, $f0, $8a, $e0, $e0, $2e, $aa, $a4, $80, $00
    db $40, $f4, $c0, $df, $78, $e0, $80, $a3, $4a, $80, $c5, $f7, $80, $a6, $7f, $88
    db $e4, $d4, $e1, $fe, $8e, $e0, $aa, $71, $a3, $c0, $b6, $a0, $07, $66, $aa, $f0
    db $14, $a4, $fb, $ff, $07, $f7, $0f, $fc, $1f, $db, $3c, $f7, $87, $38, $be, $71
    db $00, $a5, $18, $e1, $8e, $e5, $c4, $a3, $02, $f3, $00, $04, $00, $a2, $fe, $e3
    db $91, $00, $63, $00, $f7, $87, $00, $cf, $00, $a0, $d7, $3b, $2e, $df, $ff, $5d
    db $e6, $e7, $fc, $bb, $fc, $ff, $f8, $ff, $0b, $fc, $f4, $0f, $e3, $1f, $f0, $0f
    db $4b, $fc, $03, $f8, $b3, $ff, $b8, $a0, $72, $a7, $0f, $94, $82, $ff, $ed, $1e
    db $bf, $ff, $f3, $ff, $ee, $f1, $7f, $ff, $00, $f3, $0c, $00, $ff, $f9, $14, $e0
    db $8a, $dc, $c3, $e0, $94, $80, $08, $9a, $c0, $88, $e1, $00, $a9, $fe, $ff, $01
    db $df, $3f, $aa, $77, $dd, $63, $ff, $ff, $41, $7f, $c1, $b4, $cf, $fb, $8e, $f5
    db $dd, $8e, $4c, $81, $5f, $e0, $bf, $b1, $80, $fe, $07, $ff, $05, $ff, $e4, $ff
    db $7e, $ff, $05, $ff, $ff, $84, $7f, $e4, $1f, $fb, $04, $fb, $04, $e5, $04, $4a
    db $e0, $04, $82, $8c, $a8, $84, $01, $ef, $1f, $ff, $df, $3f, $f7, $38, $bf, $70
    db $ec, $f3, $7f, $d8, $e7, $78, $87, $f0, $0f, $c0, $5d, $a0, $ea, $00, $81, $3f
    db $12, $a0, $1f, $06, $a0, $03, $00, $fb, $fa, $0c, $e0, $7a, $00, $ac, $c1, $ff
    db $22, $ff, $2d, $ef, $fe, $17, $f8, $0d, $c4, $80, $82, $ff, $41, $ff, $ff, $c1
    db $7f, $c2, $7f, $a1, $7f, $d0, $ff, $3f, $f0, $1f, $f0, $1f, $d1, $3f, $e7, $f3
    db $ff, $7f, $fe, $e0, $39, $a1, $60, $9f, $fe, $01, $e4, $c6, $a1, $74, $85, $03
    db $c0, $82, $40, $e1, $b9, $7f, $7f, $ff, $ff, $c6, $ff, $ff, $c0, $bf, $c0, $70
    db $fd, $8f, $b2, $81, $00, $ff, $01, $ff, $07, $ff, $9f, $09, $ff, $17, $fb, $10
    db $c0, $86, $86, $a7, $3f, $cf, $00, $23, $00, $88, $8c, $60, $00, $a5, $cf, $f0
    db $ff, $af, $7b, $d6, $3f, $fc, $07, $5a, $e7, $ff, $ba, $e7, $5c, $e7, $f4, $0f
    db $e8, $1f, $ff, $f0, $3f, $70, $9f, $f8, $8f, $f4, $8f, $9f, $fc, $87, $74, $8f
    db $8e, $78, $84, $15, $82, $fc, $fc, $32, $65, $1e, $c1, $ec, $1f, $fb, $1c, $d7
    db $38, $ff, $7e, $f1, $fc, $f3, $8c, $f3, $7c, $83, $fb, $f8, $07, $3c, $87, $00
    db $ff, $80, $ff, $c0, $7f, $7f, $70, $ff, $88, $ff, $08, $ff, $00, $00

    nop                                           ; $5360: $00

    db $e3, $ff, $00, $fe, $ff, $fe, $ff, $fe, $ff, $f1, $00, $e0, $fe, $fe, $e0, $00
    db $00, $f9, $00, $f0, $00, $c0, $fb, $00, $80, $fe, $e0, $e0, $00, $10, $00, $08
    db $ee, $c6, $e2, $3f, $00, $1f, $fe, $e0, $07, $00, $03, $fb, $00, $fb, $b6, $f8
    db $3e, $01, $1c, $03, $08, $ff, $07, $ff, $00, $fe, $01, $fc, $03, $f8, $ff, $07
    db $00, $ff, $f8, $ff, $fc, $ff, $fe, $ff, $ff, $07, $f8, $7b, $fc, $7d, $fe, $7e
    db $7f, $ff, $1f, $ff, $3f, $ff, $7f, $ff, $ff, $e0, $fe, $74, $e2, $f8, $07, $70
    db $8f, $a0, $df, $c1, $fb, $ff, $e3, $f0, $e4, $7f, $80, $bf, $c0, $df, $7f, $e0
    db $ef, $f0, $f6, $f8, $fe, $00, $fe, $e1, $f9, $f0, $72, $e4, $fd, $e7, $01, $00
    db $02, $01, $04, $72, $a0, $e0, $0f, $f8, $e2, $a0, $e7, $04, $f8, $7a, $a0, $ea
    db $7d, $7f, $52, $e0, $23, $00, $88, $07, $50, $a0, $e4, $ff, $10, $0f, $90, $0f
    db $50, $8f, $b0, $cf, $7f, $d1, $ef, $e3, $ff, $c7, $ff, $8f, $80, $e4, $fe, $f0
    db $c3, $81, $7e, $02, $fd, $f0, $0f, $e0, $df, $1f, $c0, $3f, $80, $7f, $dd, $c5
    db $0f, $f0, $fe, $fe, $e3, $0e, $f1, $0c, $f3, $08, $f7, $10, $ff, $ef, $f1, $fe
    db $e0, $ff, $c1, $ff, $83, $8f, $ff, $07, $ff, $0f, $3c, $e0, $41, $e0, $e4, $c0
    db $40, $6b, $80, $a0, $52, $e0, $e0, $b0, $e2, $10, $0f, $fe, $e3, $7f, $91, $0f
    db $63, $9f, $87, $ff, $cf, $20, $e0, $ff, $fe, $01, $df, $3f, $aa, $77, $dd, $63
    db $ff, $ff, $41, $7f, $c1, $b4, $cf, $f0, $0f, $ff, $c1, $ff, $22, $ff, $2d, $fe
    db $17, $f8, $df, $0d, $fe, $03, $fe, $82, $a0, $e0, $cf, $f0, $ff, $af, $7b, $d6
    db $3f, $fc, $07, $5a, $e7, $ff, $ba, $a7, $5c, $e7, $ee, $f1, $57, $bb, $7f, $ad
    db $5e, $5e, $e1, $b1, $ff, $ef, $e3, $c2, $ef, $e4, $fb, $53, $bf, $f0, $e1, $e1
    db $ff, $be, $96, $d3, $c2, $e0, $ff, $f0, $e3, $a1, $c4, $c1, $f0, $e8, $e0, $5b
    db $ff, $77, $b3, $c2, $ee, $f1, $d0, $e5, $b7, $f0, $ea, $f7, $a1, $ff, $f7, $e0
    db $e4, $d7, $3b, $2e, $df, $ff, $5d, $e6, $e7, $fc, $bb, $fc, $ff, $f8, $bf, $0b
    db $fc, $fb, $8a, $f5, $8e, $f2, $a1, $5f, $ff, $e0, $bf, $a0, $5f, $e0, $fe, $07
    db $41, $ff, $ff, $c1, $7f, $c2, $7f, $a1, $7f, $d0, $ff, $3f, $f0, $1f, $f0, $1f
    db $d1, $3f, $f4, $ff, $0f, $e8, $1f, $f0, $3f, $70, $9f, $f8, $3f, $8f, $f4, $8f
    db $fc, $87, $74, $cf, $c0, $87, $e4, $ec, $bc, $a5, $78, $e2, $c3, $3f, $f0, $eb
    db $ff, $ff, $f8, $fc, $06, $c0, $e0, $e5, $fe, $ff, $f8, $fc, $fd, $fe, $eb, $f3
    db $0f, $d0, $e5, $81, $36, $c2, $e8, $f0, $9d, $f7, $7e, $f7, $0f, $fd, $a1, $7f
    db $ff, $37, $0f, $f7, $05, $03, $01, $2c, $c0, $a2, $c1, $f4, $0f, $bf, $e3, $1f
    db $f0, $0f, $fc, $03, $5e, $a5, $05, $ff, $fd, $e4, $fc, $7e, $fe, $05, $ff, $84
    db $ff, $7f, $e4, $1f, $fb, $04, $fb, $04, $e7, $eb, $ff, $7f, $ff, $e0, $c0, $3f
    db $a0, $60, $9f, $fe, $6f, $01, $ff, $00, $8e, $71, $e8, $03, $fc, $28, $ad, $ec
    db $7a, $e6, $0e, $a2, $f9, $07, $90, $a5, $fe, $01, $f7, $f3, $0f, $bf, $81, $a2
    db $f6, $83, $1f, $e0, $f9, $fe, $76, $26, $e3, $fd, $03, $aa, $e0, $01, $fd, $03
    db $52, $e0, $fe, $62, $a0, $e8, $f0, $fe, $ff, $cf, $f0, $7f, $35, $80, $6e, $a1
    db $cf, $f4, $e0, $37, $0f, $f4, $e1, $c2, $85, $ff, $3f, $c0, $ff, $ff, $fc, $07
    db $ff, $04, $b0, $fe, $e0, $ae, $82, $4a, $e0, $2c, $a0, $f3, $0f, $68, $e1, $fe
    db $f7, $01, $f3, $0f, $20, $a7, $fb, $07, $f7, $0f, $bf, $ec, $1f, $fb, $1c, $d7
    db $38, $86, $83, $df, $ff, $3f, $e0, $78, $c0, $47, $c0, $5f, $c0, $ff, $5f, $ff
    db $03, $fa, $06, $7e, $fe, $82, $ff, $e2, $02, $1e, $02, $fe, $06, $fe, $fa, $ff
    db $fe, $af, $df, $70, $7c, $40, $e3, $60, $ee, $f6, $80, $7c, $ff, $60, $fe, $e0
    db $ef, $f0, $17, $bf, $38, $0b, $fc, $3d, $fe, $c3, $d2, $a0, $05, $ff, $fe, $3f
    db $fc, $e0, $c0, $c0, $80, $c0, $eb, $80, $d0, $50, $e6, $01, $ea, $86, $20, $c0
    db $f3, $7f, $fc, $ff, $ff, $9f, $7f, $02, $01, $ec, $e1, $9f, $01, $00, $05, $03
    db $6f, $5f, $a2, $14, $85, $fe, $ef, $01, $ef, $1f, $df, $58, $c0, $fe, $01, $b9
    db $ff, $7f, $7f, $ff, $c6, $ff, $ff, $c0, $bf, $ff, $c0, $70, $8f, $7e, $f1, $fc
    db $f3, $8c, $df, $f3, $7c, $83, $f8, $07, $0c, $a3, $df, $5f, $bb, $e0, $7f, $68
    db $e1, $cf, $5f, $f0, $f8, $e2, $02, $dd, $fe, $68, $e1, $7a, $fe, $82, $f8, $e0
    db $0e, $fe, $fb, $f6, $fa, $68, $e5, $e3, $ff, $7d, $fe, $6f, $fe, $dd, $e0, $cb
    db $fc, $0f, $f8, $17, $f8, $7f, $e3, $f0, $bf, $6d, $c1, $a8, $74, $02, $e1, $fc
    db $1f, $db, $ff, $3c, $f7, $38, $be, $71, $ff, $00, $ed, $ef, $1e, $bf, $ff, $f3
    db $58, $a0, $ff, $00, $f3, $ff, $0c, $00, $ff, $f7, $38, $bf, $70, $ec, $ff, $f3
    db $d8, $e7, $78, $87, $f0, $0f, $c0, $b9, $3f, $20, $a0, $82, $80, $00, $ff, $01
    db $a0, $80, $09, $df, $f9, $17, $f3, $10, $f0, $55, $63, $80, $ff, $ff, $c0, $7f
    db $70, $ff, $88, $8f, $08, $0f, $00, $00, $00, $0f, $0f, $0f, $0f, $0d, $0f, $0f
    db $0f, $0f, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0d, $0d, $0d, $0c, $0c, $0c, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0e
    db $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f, $0f
    db $0f, $0f, $0e, $0e, $0e, $0d, $0d, $0d, $0f, $0f, $0f, $0f, $0d, $0d, $0d, $0d
    db $0d, $0d, $ff, $7f, $90, $7f, $d4, $02, $46, $02, $1f, $18, $46, $02, $80, $09
    db $00, $00, $de, $33, $cc, $03, $08, $03, $46, $02, $7e, $02, $46, $02, $8f, $01
    db $00, $00, $4f, $ff, $ff, $ff, $80, $fe, $ea, $ff, $e2, $c3, $fe, $e4, $22, $f2
    db $e1, $01, $ff, $ea, $d2, $ec, $d0, $e2, $e7, $fe, $e0, $ce, $e1, $f1, $81, $fe
    db $e0, $d2, $eb, $d0, $e2, $ff, $e0, $e0, $e6, $cf, $e6, $e0, $e0, $e7, $ff, $e0
    db $a2, $e3, $82, $82, $ed, $9e, $ff, $e2, $82, $82, $a2, $e1, $ff, $ff, $0f, $ff
    db $0f, $7f, $7f, $4f, $4f, $6f, $6f, $0f, $07, $0f, $ff, $ff, $00, $00

    nop                                           ; $579f: $00

    db $fb, $00, $ff, $fe, $e9, $7c, $83, $fe, $7d, $87, $ff, $82, $3b, $02, $7f, $01
    db $7f, $01, $7e, $fd, $02, $fe, $e3, $fe, $82, $fe, $42, $fe, $42, $7f, $ff, $4f
    db $f0, $50, $e7, $20, $ef, $fe, $f1, $ff, $21, $ee, $22, $ff, $3b, $ff, $6f, $ff
    db $ff, $5f, $f9, $f8, $e7, $e3, $bf, $9f, $7f, $ff, $3f, $fd, $78, $f3, $f3, $ef
    db $e7, $ff, $ff, $de, $fd, $bc, $fb, $79, $e7, $63, $0f, $ff, $07, $1f, $0f, $1e
    db $0e, $9c, $1c, $d8, $ff, $98, $e0, $c0, $f8, $60, $be, $b8, $ff, $ff, $de, $fb
    db $b3, $df, $de, $ff, $ff, $de, $df, $de, $ff, $bf, $f7, $f7, $80, $eb, $00, $ff
    db $7f, $7e, $81, $ff, $7e, $83, $81, $7d, $80, $e0, $dd, $ff, $fe, $ed, $81, $ff
    db $41, $fe, $f0, $f1, $db, $ff, $4b, $fe, $fe, $ff, $bf, $ff, $ff, $ff, $ff, $cf
    db $7f, $47, $bf, $a8, $df, $d6, $ff, $df, $fd, $ff, $7f, $ff, $be, $f0, $e0, $3c
    db $ff, $fd, $db, $ea, $e0, $ff, $ff, $ef, $b9, $a9, $38, $fd, $28, $fe, $e7, $b8
    db $28, $f8, $a8, $f8, $e8, $ff, $bf, $a8, $ff, $af, $fb, $fb, $ff, $bf, $fc, $80
    db $ed, $f0, $cb, $38, $c7, $fe, $39, $cf, $46, $bf, $b5, $85, $7b, $09, $77, $11
    db $fe, $e3, $6f, $fd, $21, $fe, $ec, $22, $7f, $35, $ef, $2a, $fd, $ff, $ad, $fd
    db $7d, $ff, $fb, $ff, $fe, $1f, $ff, $0f, $f7, $f4, $fc, $f8, $dc, $08, $ef, $ff
    db $e6, $f7, $f7, $7c, $38, $bc, $98, $de, $ff, $dc, $de, $ce, $ee, $c2, $f0, $e0
    db $f0, $bf, $e0, $60, $60, $20, $20, $00, $ff, $e8, $80, $7f, $00, $f8, $80, $ff
    db $f8, $ff, $7f, $80, $fb, $ce, $e2, $cc, $0f, $00, $03, $bc, $e9, $b0, $e0, $ff
    db $ff, $fd, $80, $fe, $e2, $40, $ff, $c0, $78, $40, $e7, $af, $c0, $cf, $00, $1f
    db $db, $e0, $07, $97, $e2, $03, $bf, $00, $0f, $01, $3f, $02, $1f, $f2, $e0, $01
    db $1c, $cb, $ec, $78, $e5, $c0, $00, $ff, $fd, $e0, $fe, $ff, $5c, $cc, $f7, $7e
    db $00, $3c, $80, $e8, $00, $ff, $30, $ef, $ff, $28, $ff, $30, $ff, $20, $20, $20
    db $ff, $f4, $fe, $e1, $af, $a2, $00, $78, $e0, $ff, $1f, $ff, $f2, $ff, $ff, $11
    db $ff, $ff, $e0, $1f, $fe, $01, $89, $7f, $6c, $e4, $77, $ed, $e0, $3e, $e0, $fe
    db $ff, $5c, $a0, $fe, $af, $00, $fc, $00, $f8, $fe, $e0, $f0, $cd, $e0, $18, $f3
    db $00, $04, $80, $ea, $3d, $a4, $3f, $00, $87, $00, $fd, $c1, $ae, $e0, $c1, $00
    db $87, $01, $3f, $06, $ff, $ff, $38, $ff, $c4, $ff, $25, $ff, $3e, $0d, $e0, $20
    db $a0, $01, $fe, $c1, $c5, $f7, $d0, $8a, $fb, $88, $e3, $01, $86, $bd, $d6, $80
    db $e7, $50, $a1, $b3, $83, $6e, $c3, $68, $c1, $a3, $80, $ff, $76, $04, $ab, $20
    db $fd, $d9, $fe, $b6, $1b, $d7, $d3, $6a, $a0, $1a, $ff, $60, $c0, $72, $cc, $18
    db $ed, $f5, $ff, $1c, $e2, $80, $4d, $cf, $01, $00, $01, $01, $ff, $07, $01, $1f
    db $06, $39, $19, $26, $20, $ff, $2f, $20, $6f, $20, $df, $40, $df, $c0, $ff, $bf
    db $80, $bb, $80, $a7, $83, $bf, $9f, $bd, $ff, $8c, $83, $07, $ff, $1e, $7d, $8c
    db $81, $73, $ff, $0f, $f7, $1f, $ef, $1e, $ef, $1c, $ff, $ff, $18, $ff, $dd, $14
    db $7e, $3e, $ff, $f7, $ff, $fe, $dc, $f5, $74, $ff, $7b, $ff, $3e, $8f, $ff, $0f
    db $ff, $03, $d6, $c1, $72, $c8, $00, $85, $83, $be, $d9, $a4, $80, $00, $60, $00
    db $10, $8a, $e9, $03, $ff, $01, $06, $02, $3d, $04, $fd, $3c, $c5, $6f, $c4, $bb
    db $02, $7f, $fe, $e0, $bf, $82, $fe, $ea, $6f, $16, $ef, $a4, $f7, $8c, $91, $ef
    db $38, $fe, $e2, $ff, $fd, $6d, $ff, $ab, $ff, $ef, $ff, $ed, $ff, $ff, $ae, $fd
    db $ed, $ff, $6f, $7f, $6f, $3f, $ff, $fe, $ff, $3f, $ff, $07, $f8, $c1, $35, $a4
    db $ca, $80, $61, $f8, $f7, $a0, $c0, $0c, $f1, $de, $a1, $f3, $e0, $ff, $1f, $13
    db $ec, $0c, $fb, $08, $f7, $10, $7e, $fe, $f4, $00, $ff, $f0, $fb, $f8, $dd, $8c
    db $82, $ff, $7f, $38, $bc, $9b, $de, $dd, $de, $cf, $ff, $e6, $cf, $f2, $ed, $f3
    db $ef, $6b, $fb, $ff, $bf, $be, $be, $2a, $7f, $3f, $ff, $f7, $ff, $ff, $ff, $fe
    db $fe, $fd, $59, $7b, $79, $bf, $ef, $ef, $df, $cb, $fb, $f9, $ea, $61, $fe, $0f
    db $1e, $ff, $03, $3f, $e8, $80, $00, $00

    nop                                           ; $5a78: $00

    db $1b, $00, $ff, $fe, $e9, $7c, $83, $f0, $eb, $fe, $ff, $fe, $ff, $7a, $fa, $fa
    db $fe, $80, $e6, $83, $00, $01, $00, $ff, $e1, $fe, $70, $e1, $f8, $00, $e0, $00
    db $c0, $00, $80, $fe, $f0, $e1, $fe, $7d, $87, $82, $3b, $02, $7f, $df, $01, $7f
    db $01, $7e, $02, $fe, $e2, $81, $ff, $2f, $7e, $83, $81, $7d, $f0, $e0, $ff, $fe
    db $e2, $40, $eb, $23, $38, $c7, $8c, $ff, $72, $fa, $70, $e1, $f0, $82, $e0, $84
    db $e2, $3e, $70, $e2, $80, $00, $60, $00, $10, $f2, $e6, $f7, $ee, $ff, $7e, $02
    db $fe, $82, $fe, $42, $fe, $42, $ff, $ff, $4f, $f0, $50, $e7, $20, $ef, $20, $fc
    db $6a, $e3, $64, $e2, $81, $ff, $41, $ff, $41, $fe, $ff, $39, $cf, $46, $b5, $85
    db $7b, $09, $77, $b9, $11, $fe, $e3, $90, $ca, $0f, $00, $03, $e8, $d6, $fc, $92
    db $fa, $c0, $f8, $74, $e0, $f8, $e1, $86, $e4, $c4, $79, $ea, $01, $ff, $00, $01
    db $01, $07, $01, $01, $00, $03, $ff, $01, $06, $02, $3d, $04, $fd, $3c, $c5, $ff
    db $c4, $bb, $02, $7f, $02, $e0, $00, $f3, $ff, $e0, $1f, $13, $ec, $0c, $fb, $08
    db $f7, $85, $10, $fe, $e1, $ef, $6c, $e0, $fc, $e9, $6c, $e1, $fc, $e9, $6f, $71
    db $21, $fe, $eb, $16, $ec, $e2, $a1, $7e, $00, $3c, $f0, $e8, $9f, $e0, $00, $18
    db $00, $04, $e0, $e8, $d0, $ec, $1f, $ff, $06, $39, $19, $26, $20, $2f, $20, $6f
    db $ff, $20, $df, $40, $df, $c0, $bf, $80, $7f, $87, $02, $bf, $82, $fe, $e9, $6a
    db $e3, $fa, $e7, $60, $e0, $21, $ff, $ee, $22, $fb, $3f, $ff, $6f, $5f, $ff, $ff
    db $f8, $f9, $e3, $e7, $ff, $f1, $4b, $db, $ff, $fe, $fe, $bf, $ff, $ff, $ff, $cf
    db $ff, $ff, $47, $7f, $a4, $bf, $6f, $22, $7d, $37, $ff, $6a, $af, $ad, $fd, $fd
    db $7d, $fb, $ff, $bf, $ff, $fe, $0f, $1f, $ff, $80, $fe, $e1, $7f, $ff, $c0, $c0
    db $ff, $40, $78, $c0, $e7, $00, $fd, $cf, $41, $a0, $30, $ef, $28, $ff, $30, $20
    db $d7, $ff, $20, $20, $fc, $e0, $ff, $31, $a5, $3f, $c0, $3f, $07, $38, $01, $86
    db $00, $c1, $21, $a6, $d0, $a1, $fe, $13, $a0, $b8, $83, $a3, $87, $9f, $bf, $bf
    db $ff, $7f, $78, $fd, $f3, $f3, $e7, $0f, $5e, $ff, $bf, $37, $9e, $a5, $ee, $d6
    db $f7, $fd, $ef, $ff, $7f, $ff, $be, $8c, $e0, $3c, $ff, $f7, $ff, $10, $07, $f0
    db $f7, $f8, $fb, $f8, $09, $ff, $dc, $e6, $ef, $f7, $f7, $3a, $7d, $9f, $fb, $bf
    db $3f, $d4, $e3, $ef, $de, $ff, $bc, $fd, $af, $79, $fb, $d6, $df, $d4, $e7, $db
    db $5a, $e0, $f4, $ef, $f7, $f8, $fc, $08, $d4, $e2, $38, $7c, $98, $5f, $bc, $dc
    db $de, $00, $1f, $2a, $c0, $07, $36, $a2, $df, $03, $01, $0f, $03, $3e, $a0, $84
    db $00, $00, $7f, $0f, $0f, $ff, $ff, $f2, $ff, $11, $26, $a0, $ff, $c1, $01, $87
    db $07, $3e, $3f, $f8, $ff, $3f, $c4, $ff, $25, $ff, $3e, $7f, $30, $e2, $2a, $e4
    db $ff, $80, $ff, $00, $7d, $bc, $fb, $79, $e7, $ff, $73, $0f, $f7, $1f, $ef, $1e
    db $ef, $1c, $f7, $ff, $18, $ff, $9b, $e2, $ff, $ff, $ef, $b9, $fb, $ef, $38, $fe
    db $e2, $bc, $9b, $de, $dd, $de, $ff, $cf, $e6, $cf, $f2, $ed, $f3, $ef, $6b, $ff
    db $fb, $bf, $be, $e7, $63, $0f, $07, $9f, $ff, $0f, $de, $8e, $fc, $dc, $f8, $e8
    db $fc, $f7, $f0, $fe, $7c, $d5, $e0, $ff, $b9, $a9, $38, $fd, $28, $fe, $e5, $de
    db $ce, $ee, $c2, $f0, $e0, $bf, $f0, $e0, $60, $60, $20, $20, $a0, $81, $1f, $fc
    db $63, $e0, $b3, $a9, $ff, $ff, $e0, $1f, $fe, $01, $5d, $7f, $4d, $e4, $00, $00
    db $e0, $d5, $c1, $fe, $61, $a5, $ff, $00, $00, $76, $04, $ab, $20, $7d, $59, $ef
    db $fe, $b6, $d7, $d3, $dd, $c0, $1a, $ff, $00, $ff, $dd, $14, $7e, $3e, $ff, $f7
    db $fe, $dc, $ff, $f5, $74, $ff, $7b, $ff, $3e, $ff, $0f, $ff, $6d, $fd, $bb, $ef
    db $ff, $ef, $fd, $ef, $ff, $be, $ef, $fd, $ed, $6f, $ff, $6f, $7f, $bf, $be, $2a
    db $7f, $3f, $ff, $f7, $55, $c0, $fe, $ff, $fd, $59, $7b, $79, $ef, $ef, $b7, $b6
    db $ff, $ff, $df, $fb, $b3, $df, $de, $ff, $ff, $ff, $de, $de, $ff, $bf, $f7, $f7
    db $b8, $28, $fb, $f8, $a8, $56, $e0, $e8, $bf, $ac, $ff, $bf, $ef, $fb, $fb, $ff
    db $bf, $99, $87, $f0, $80, $ff, $97, $f0, $ff, $7f, $96, $8b, $f0, $87, $97, $5f
    db $84, $1f, $c6, $e5, $8c, $ff, $03, $04, $c0, $32, $e6, $b1, $60, $fe, $ff, $af
    db $3f, $ff, $07, $ff, $69, $c0, $03, $a1, $62, $df, $f7, $cb, $fb, $f9, $ae, $c1
    db $fe, $1e, $ff, $03, $01, $3f, $a2, $e0, $00, $00

    nop                                           ; $5d83: $00

    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0e, $0f, $0f, $0f, $0f, $0d, $0f, $0f, $0f, $0f, $0f, $0f, $0d, $0f, $0f
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $fc, $7f, $8e, $01, $c0, $7d, $c0
    db $00, $8b, $03, $8e, $01, $40, $02, $c0, $00, $8b, $03, $00, $7f, $40, $02, $c0
    db $00, $8b, $03, $40, $02, $c0, $7d, $c0, $00, $9d, $ff, $ff, $e0, $fe, $ff, $fe
    db $ff, $e3, $f3, $e1, $ff, $ff, $9f, $3f, $4d, $1e, $fc, $49, $db, $81, $3f, $49
    db $eb, $7d, $2b, $02, $81, $ed, $e2, $fb, $ea, $ff, $c7, $c3, $eb, $c1, $ed, $e9
    db $ed, $ed, $ff, $ed, $e9, $eb, $c1, $c7, $c3, $b9, $1c, $ff, $ba, $bc, $80, $80
    db $be, $bc, $9e, $bc, $ff, $d9, $9c, $80, $c1, $d9, $dd, $ff, $ff, $ff, $f7, $e3
    db $eb, $c1, $dd, $c9, $df, $df, $bf, $dd, $c9, $eb, $c1, $f7, $e3, $c0, $ed, $e3
    db $ff, $c1, $eb, $eb, $c1, $e3, $d9, $dd, $c1, $76, $cc, $e0, $80, $00, $a2, $ec
    db $7f, $ff, $ff, $00, $00

    nop                                           ; $5e69: $00

    db $fb, $ff, $00, $fe, $eb, $07, $00, $7b, $00, $7d, $ff, $00, $7e, $00, $1f, $00
    db $3f, $00, $7f, $fe, $e4, $e0, $f0, $0f, $e0, $1f, $c0, $3f, $80, $fc, $f5, $e1
    db $d5, $e4, $cc, $33, $33, $cc, $00, $ff, $df, $60, $ff, $f6, $ff, $ff, $c3, $e0
    db $ff, $00, $fb, $fe, $01, $fe, $e1, $ff, $00, $df, $20, $fd, $ff, $02, $ff, $00
    db $d7, $38, $bf, $68, $fb, $ff, $4c, $ef, $5c, $dd, $7e, $b9, $7e, $c3, $fd, $3c
    db $a2, $e5, $df, $20, $fe, $01, $fb, $04, $fe, $94, $e2, $3e, $ff, $7f, $c3, $e7
    db $81, $c3, $ff, $81, $8f, $03, $9f, $07, $1f, $07, $1f, $fc, $80, $ed, $70, $e3
    db $f8, $00, $70, $00, $a0, $00, $bf, $c1, $00, $e3, $00, $0f, $f0, $fe, $e3, $0e
    db $ff, $f1, $0c, $f3, $08, $f7, $10, $ef, $20, $fd, $df, $80, $e9, $c0, $7f, $bf
    db $60, $bf, $60, $ef, $7f, $e0, $9f, $e0, $a2, $e4, $00, $ff, $3c, $ff, $cf, $6e
    db $87, $cf, $87, $9f, $8f, $9f, $af, $87, $9f, $87, $df, $fa, $e2, $bf, $f4, $e2
    db $9f, $eb, $8f, $df, $fa, $e2, $bf, $e8, $e1, $cf, $df, $c7, $cf, $ff, $e7, $ff
    db $ef, $fc, $e0, $80, $f3, $7f, $00, $ff, $bf, $00, $df, $00, $ef, $00, $f7, $00
    db $57, $f1, $00, $e0, $78, $e0, $83, $e8, $c0, $0f, $ec, $c0, $dc, $d2, $c3, $00
    db $e5, $fd, $ff, $02, $c0, $e2, $c1, $00, $f7, $80, $00, $00, $fc, $e0, $e0, $00
    db $f0, $00, $d5, $fc, $b0, $c2, $fe, $f8, $e0, $f8, $f4, $e3, $1c, $e7, $ff, $36
    db $c3, $67, $c3, $4f, $c7, $4f, $c3, $bd, $6f, $fa, $ec, $cf, $c3, $df, $8b, $80
    db $e8, $c0, $fa, $ba, $e0, $c0, $72, $f8, $e0, $00, $c7, $00, $8f, $54, $80, $ea
    db $80, $c3, $f0, $88, $e2, $3f, $46, $c0, $03, $fe, $e0, $85, $3f, $7e, $e0, $c0
    db $72, $e0, $fd, $e5, $ac, $e1, $fe, $e3, $80, $04, $5a, $e2, $e5, $e3, $7f, $4e
    db $e0, $1e, $e3, $0c, $e9, $0e, $c3, $ee, $a5, $fa, $3c, $e3, $f0, $fe, $e4, $f1
    db $00, $63, $00, $87, $8b, $00, $cf, $24, $e1, $01, $00, $c9, $94, $e5, $46, $e1
    db $f8, $88, $d4, $c0, $ff, $ff, $63, $e1, $ff, $fc, $e2, $04, $d3, $c4, $c3, $00
    db $da, $c0, $c2, $fe, $62, $aa, $81, $7e, $80, $a3, $37, $ce, $f7, $05, $ff, $65
    db $80, $a2, $04, $ff, $07, $00, $55, $04, $12, $e2, $03, $38, $a0, $1f, $fc, $c2
    db $07, $fe, $e4, $a1, $03, $80, $ff, $84, $b0, $00, $bf, $00, $ad, $0f, $e4, $a2
    db $ff, $e0, $06, $c0, $a0, $c3, $f8, $a1, $b8, $a7, $e2, $e1, $03, $00, $01, $c8
    db $fe, $e6, $00, $ed, $9e, $c3, $f8, $00, $bf, $00, $b0, $ef, $ff, $95, $10, $40
    db $a4, $e0, $24, $c6, $03, $58, $a0, $3a, $c9, $f5, $ff, $0e, $da, $3f, $ad, $73
    db $cf, $7f, $fe, $17, $7f, $c0, $3f, $18, $c7, $cf, $d4, $a0, $56, $a3, $6e, $e3
    db $39, $01, $00, $bf, $00, $b0, $bf, $ff, $40, $c0, $84, $18, $e3, $fe, $f8, $c3
    db $ff, $00, $57, $b8, $eb, $3c, $b5, $ff, $6e, $d3, $6e, $63, $de, $be, $df, $df
    db $ff, $bf, $bf, $ff, $fc, $ff, $80, $ff, $25, $dd, $de, $e2, $60, $20, $ef, $10
    db $90, $c9, $1f, $00, $f1, $e1, $fa, $b6, $00, $bf, $80, $64, $1a, $e7, $a4, $d3
    db $ff, $52, $c3, $43, $cb, $ee, $c3, $7e, $ff, $77, $3c, $e7, $24, $f4, $e0, $c3
    db $cb, $6e, $f4, $e0, $ff, $bc, $f3, $12, $e9, $29, $e1, $21, $e5, $df, $37, $e1
    db $7f, $ff, $1e, $e8, $e2, $c2, $cb, $ff, $6f, $c3, $7e, $bd, $7e, $c0, $3f, $70
    db $1f, $ff, $c8, $bf, $78, $ff, $f0, $c3, $00, $00

    nop                                           ; $60c4: $00

    db $73, $ff, $00, $fe, $ff, $f4, $f3, $c0, $00, $80, $fc, $e0, $ce, $d8, $e7, $7f
    db $00, $3f, $fc, $e0, $c8, $fd, $f8, $00, $b5, $f0, $fe, $e0, $f8, $a0, $e6, $01
    db $00, $ff, $e1, $01, $fe, $90, $f6, $07, $f8, $7b, $fc, $7d, $fe, $7e, $7f, $ff
    db $1f, $ff, $3f, $ff, $7f, $ff, $ff, $e0, $fe, $ba, $e3, $07, $70, $8f, $a0, $df
    db $c1, $ff, $fd, $e3, $f0, $e4, $7f, $80, $bf, $c0, $df, $e0, $ef, $ef, $f0, $f7
    db $f8, $48, $f7, $fe, $01, $fc, $f7, $03, $f8, $07, $f8, $e5, $00, $ff, $f8, $ff
    db $cf, $fc, $ff, $fe, $ff, $a0, $ff, $a0, $fb, $f0, $0f, $df, $e0, $1f, $c0, $3f
    db $80, $07, $e6, $0f, $f0, $fe, $fe, $e3, $0e, $f1, $0c, $f3, $08, $f7, $10, $ff
    db $ef, $f1, $fe, $e0, $ff, $c1, $ff, $83, $8f, $ff, $07, $ff, $0f, $9c, $e0, $a0
    db $e3, $52, $e3, $e0, $df, $ff, $c7, $ff, $8f, $ff, $d1, $e4, $0f, $f1, $3f, $0f
    db $63, $9f, $87, $ff, $cf, $80, $e4, $82, $c3, $c7, $81, $7e, $00, $e0, $e0, $a0
    db $ff, $a0, $f9, $00, $ff, $ff, $cc, $33, $33, $cc, $00, $ff, $60, $ff, $6d, $f6
    db $23, $e2, $20, $df, $f0, $e9, $c0, $7f, $18, $c1, $0e, $e0, $e5, $fd, $ff, $02
    db $00, $e2, $d0, $e9, $c8, $c1, $c0, $e9, $7e, $b0, $e1, $37, $ce, $05, $fd, $65
    db $fd, $b0, $e1, $dd, $04, $a0, $fa, $ef, $ff, $10, $b0, $ea, $bf, $ff, $f9, $40
    db $a0, $f2, $fe, $e1, $ff, $00, $df, $20, $fd, $ff, $02, $ff, $00, $bf, $60, $bf
    db $60, $7f, $8f, $e0, $9f, $e0, $fb, $a5, $e1, $7a, $a1, $6c, $c0, $a2, $ff, $c1
    db $41, $80, $80, $00, $40, $80, $d0, $ff, $e0, $e8, $f0, $fe, $ff, $ef, $f0, $df
    db $ff, $e0, $6f, $f0, $5e, $3f, $0b, $07, $01, $9f, $03, $05, $03, $3f, $c0, $56
    db $a3, $f8, $e0, $ff, $bf, $f7, $f8, $df, $e0, $fc, $07, $6b, $e2, $00, $ff, $fc
    db $03, $ff, $ff, $e7, $1f, $fb, $07, $ff, $7f, $ff, $f7, $0f, $fb, $07, $f7, $0f
    db $9f, $7f, $ff, $fb, $fc, $40, $ba, $e0, $1d, $c1, $ff, $9f, $ff, $d0, $e0, $40
    db $80, $87, $a2, $f0, $e4, $bf, $ff, $7f, $17, $0f, $0b, $07, $03, $07, $17, $ff
    db $0f, $ff, $1a, $e7, $a4, $d3, $52, $c3, $ff, $43, $cb, $ee, $c3, $7e, $ff, $3c
    db $e7, $ff, $24, $d7, $38, $bf, $68, $fb, $4c, $ef, $7f, $5c, $dd, $7e, $b9, $7e
    db $c3, $3c, $ea, $80, $ff, $3c, $cf, $6e, $87, $cf, $87, $9f, $8f, $ff, $9f, $87
    db $9f, $87, $df, $8f, $9f, $fb, $ed, $fc, $cb, $a1, $fd, $fe, $f8, $e0, $f8, $fb
    db $fc, $3f, $fe, $fd, $4e, $3f, $f3, $fc, $6c, $e5, $bc, $92, $f7, $03, $fb, $07
    db $f3, $a0, $07, $fb, $07, $fd, $f1, $03, $9c, $81, $28, $e3, $6a, $e3, $7f, $ff
    db $9f, $7f, $1f, $05, $03, $17, $0f, $bf, $77, $a2, $fc, $e4, $76, $80, $ff, $57
    db $b8, $eb, $3c, $b5, $6e, $d3, $6e, $ef, $63, $de, $be, $df, $64, $e0, $c3, $cb
    db $6e, $fe, $64, $e0, $bc, $f3, $12, $e9, $29, $e1, $21, $9e, $58, $83, $df, $20
    db $fe, $01, $ce, $c3, $6a, $e0, $bf, $ee, $64, $e2, $9f, $8f, $df, $fa, $e1, $ff
    db $1c, $e7, $ff, $36, $c3, $67, $c3, $4f, $c7, $4f, $c3, $c9, $6f, $fa, $e1, $d6
    db $81, $ff, $fe, $e0, $fa, $e0, $80, $7f, $d1, $80, $1a, $9f, $c2, $c1, $56, $e0
    db $01, $fe, $e3, $fe, $01, $ff, $f5, $0e, $da, $3f, $ad, $73, $cf, $7f, $6f, $fe
    db $7f, $c0, $3f, $86, $e2, $bf, $bf, $b8, $80, $ef, $80, $ff, $25, $de, $42, $c0
    db $20, $ef, $10, $ff, $e5, $37, $e1, $7f, $ff, $1e, $e7, $24, $ee, $bc, $c0, $c2
    db $cb, $6f, $bc, $c0, $3e, $ff, $7f, $ff, $c3, $e7, $81, $c3, $81, $8f, $03, $9f
    db $bf, $07, $1f, $07, $1f, $8f, $bf, $c8, $c1, $cf, $6f, $df, $c7, $ff, $e7, $e0
    db $a0, $e7, $ff, $6a, $e3, $de, $64, $e2, $cf, $c3, $df, $8b, $80, $84, $80, $7f
    db $ff, $7f, $80, $c0, $bf, $a0, $df, $d0, $ef, $e0, $5e, $e3, $78, $a1, $f1, $a4
    db $f0, $fd, $34, $c0, $df, $3f, $37, $9f, $cf, $fd, $03, $03, $fc, $c1, $a4, $b3
    db $c4, $3f, $fe, $f0, $a0, $1e, $e1, $bd, $7e, $c0, $3f, $70, $1f, $ff, $c8, $bf
    db $78, $ff, $40, $e3, $00, $00

    nop                                           ; $638b: $00

    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0d, $0d, $0c
    db $0c, $0c, $0d, $0d, $0d, $0c, $0c, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0f, $0d, $0f, $0e, $0e, $0e
    db $0e, $0e, $0e, $0d, $0f, $0d, $0f, $0f, $0e, $0e, $0e, $0e, $0d, $0d, $0f, $0f
    db $0f, $0f, $0e, $0e, $0e, $0e, $0e, $0e, $0d, $ff, $4b, $9f, $01, $df, $02, $90
    db $01, $9f, $00, $90, $01, $ca, $18, $00, $00, $9c, $7f, $94, $03, $d4, $02, $90
    db $01, $5a, $03, $90, $01, $c4, $01, $00, $18, $fb, $ff, $00, $fe, $f6, $10, $d7
    db $38, $ab, $7c, $fc, $e0, $ed, $ff, $e1, $01, $00, $01, $01, $01, $03, $ff, $06
    db $03, $04, $07, $04, $0f, $44, $7c, $ff, $44, $fe, $83, $fe, $01, $ff, $ff, $ff
    db $3f, $82, $c7, $44, $c7, $44, $ef, $df, $e2, $da, $e1, $ff, $80, $c0, $80, $40
    db $c0, $40, $e0, $e8, $df, $1f, $f0, $1f, $ff, $1f, $9a, $e7, $28, $ff, $f9, $10
    db $d4, $e0, $8a, $e7, $2f, $f0, $1f, $f0, $ff, $01, $f0, $a0, $e7, $00, $00

    nop                                           ; $645b: $00

    db $7d, $00, $ff, $e0, $01, $00, $03, $00, $0f, $fe, $e0, $df, $1f, $00, $3f, $00
    db $ff, $fe, $e0, $7e, $81, $93, $3c, $c3, $f7, $e2, $fc, $e6, $01, $fe, $e1, $ff
    db $e1, $ff, $ff, $ff, $ff, $60, $81, $01, $00, $60, $80, $cf, $0f, $f0, $60, $80
    db $c4, $e1, $fc, $e9, $80, $00, $fb, $18, $e0, $c8, $e9, $80, $ff, $7c, $ff, $df
    db $ff, $3f, $ef, $f0, $f7, $0f, $f9, $fe, $7b, $cf, $8c, $ec, $1f, $1f, $c2, $e0
    db $a8, $e5, $3f, $c0, $dc, $9f, $e3, $c8, $e3, $c0, $00, $f0, $fe, $e0, $f8, $00
    db $fd, $fc, $80, $f4, $80, $ff, $40, $7f, $c2, $c2, $67, $05, $07, $05, $be, $e1
    db $89, $e2, $fe, $01, $82, $ed, $de, $72, $e3, $c0, $00, $07, $f8, $44, $e9, $f0
    db $ff, $ff, $9f, $7f, $e7, $f8, $ee, $31, $b1, $7f, $8f, $7e, $ff, $fd, $fe, $80
    db $e5, $23, $e7, $00, $e9, $17, $e7, $08, $23, $1c, $08, $eb, $fa, $c9, $40, $40
    db $a0, $fb, $e0, $a0, $00, $e0, $0c, $03, $01, $00, $0c, $ff, $03, $00, $ff, $60
    db $1f, $18, $07, $03, $fa, $7b, $f2, $1c, $fa, $cc, $ce, $ff, $b5, $fb, $7b, $df
    db $80, $de, $00, $4a, $fc, $00, $e5, $f0, $0f, $f6, $80, $e9, $81, $00, $91, $c3
    db $e7, $18, $c3, $3c, $b8, $80, $f7, $92, $c2, $be, $c2, $63, $80, $80, $94, $c0
    db $20, $95, $c0, $53, $c1, $07, $f9, $d2, $38, $e4, $e2, $3c, $c7, $ec, $ff, $ff
    db $db, $3f, $7e, $01, $77, $00, $7a, $fe, $7e, $e0, $e7, $ff, $c3, $ff, $c0, $ff
    db $60, $e2, $fe, $e0, $e1, $f6, $e0, $80, $df, $fe, $a5, $02, $03, $02, $fb, $03
    db $04, $00, $c0, $03, $fe, $07, $ff, $20, $9f, $1f, $10, $0f, $20, $1f, $dc, $a3
    db $7e, $f3, $1e, $fe, $f6, $aa, $00, $ff, $cc, $ff, $b3, $7f, $b9, $ff, $00, $f9
    db $00, $cd, $e3, $eb, $f7, $3e, $cb, $ff, $1c, $a2, $a2, $c1, $32, $c4, $80, $df
    db $00, $ff, $7f, $10, $ff, $a8, $b8, $a8, $b8, $44, $80, $a0, $ff, $b8, $ef, $f0
    db $ff, $38, $ff, $46, $ff, $5f, $b9, $ff, $fe, $ff, $7f, $9a, $a1, $7f, $f6, $b3
    db $dd, $03, $b3, $a3, $ff, $01, $fe, $34, $a3, $30, $ff, $ff, $cf, $ff, $7b, $fc
    db $fc, $ff, $87, $ff, $cd, $03, $24, $a2, $78, $ff, $71, $c0, $00, $e6, $c0, $00
    db $d9, $e0, $00, $fa, $55, $a1, $19, $1b, $40, $a5, $0c, $ff, $a7, $73, $ff, $8c
    db $82, $e0, $30, $a3, $3e, $74, $b2, $e0, $d8, $52, $c0, $fc, $80, $9f, $80, $40
    db $80, $74, $e3, $d9, $ff, $ff, $b6, $7f, $ee, $f0, $fa, $fc, $1c, $ff, $f5, $07
    db $7c, $e2, $f0, $3e, $e0, $0e, $07, $9e, $0f, $9f, $fe, $3f, $fc, $7f, $e0, $6c
    db $c0, $fe, $e5, $e0, $ba, $64, $e0, $3c, $9c, $e0, $0e, $ff, $06, $d6, $e2, $01
    db $ce, $6b, $80, $28, $ff, $7d, $84, $80, $c0, $85, $0e, $ff, $9f, $91, $ff, $6e
    db $ff, $9f, $b0, $87, $f3, $92, $1f, $ea, $72, $80, $38, $df, $a2, $c0, $74, $e3
    db $ff, $71, $ff, $ff, $af, $1f, $f3, $00, $d2, $e0, $ee, $f0, $e7, $3e, $ff, $1f
    db $f8, $c4, $16, $8b, $0e, $f1, $01, $ff, $fa, $31, $c4, $01, $ea, $44, $93, $44
    db $57, $ab, $30, $cf, $f1, $61, $c0, $bc, $80, $78, $4e, $c0, $fd, $be, $80, $e8
    db $00, $ff, $98, $ff, $67, $ff, $e1, $99, $80, $fc, $df, $60, $c4, $61, $f2, $c8
    db $c0, $ff, $3e, $ff, $ff, $cd, $03, $cb, $00, $b2, $79, $fd, $fa, $72, $c0, $81
    db $93, $60, $22, $c9, $22, $d5, $0c, $f9, $f3, $0a, $b8, $9c, $a3, $ff, $0f, $ff
    db $1d, $ff, $bf, $fa, $fd, $f6, $f9, $fa, $c1, $fe, $e1, $e2, $bb, $c1, $e6, $fe
    db $e2, $e2, $c1, $f2, $fe, $e0, $f6, $0e, $f0, $e0, $e2, $c1, $ee, $fe, $e2, $f6
    db $e1, $e4, $e1, $e8, $e1, $25, $f2, $d8, $e2, $f6, $d8, $e2, $d6, $e1, $f6, $d6
    db $e4, $d4, $e9, $00, $00, $00, $ff, $ff, $00, $ff, $00, $fe, $01, $fc, $03, $ff
    db $f0, $0f, $f0, $0f, $e0, $1f, $c0, $3f, $de, $f0, $e1, $7f, $80, $3f, $c0, $f1
    db $e0, $f0, $07, $77, $f8, $03, $fc, $e0, $e9, $e8, $1f, $dc, $e0, $e2, $ef, $7e
    db $81, $3c, $c3, $c9, $e0, $ff, $18, $ff, $f3, $3c, $ff, $d0, $ff, $e0, $e3, $3f
    db $c0, $1f, $e0, $de, $b0, $e1, $e0, $ff, $e0, $7f, $fe, $e0, $ff, $c0, $f8, $fe
    db $e4, $b8, $e1, $fc, $e9, $22, $c9, $22, $d5, $0c, $3d, $f3, $ea, $eb, $81, $ff
    db $c3, $ff, $ff, $e5, $f0, $ed, $f0, $fe, $fd, $d0, $fd, $a0, $ed, $68, $e1, $e0
    db $ff, $f8, $7f, $ff, $fc, $3f, $fc, $0f, $fe, $0f, $fe, $07, $ff, $0e, $f1, $01
    db $fa, $31, $c4, $01, $ea, $bf, $44, $93, $44, $ab, $30, $cf, $52, $ed, $00, $3e
    db $9f, $e3, $00, $ff, $01, $ff, $01, $ff, $e2, $f0, $e5, $ff, $80, $7f, $40, $c2
    db $c2, $05, $07, $05, $7c, $e0, $e5, $9a, $c0, $40, $40, $a0, $e0, $a0, $f0, $e8
    db $fc, $ff, $e2, $e0, $e7, $01, $02, $03, $02, $03, $04, $7e, $d0, $e7, $10, $a8
    db $b8, $a8, $b8, $44, $d0, $ea, $bb, $19, $1b, $29, $e0, $07, $ff, $03, $92, $e0
    db $00, $77, $ff, $28, $7d, $20, $e4, $c0, $ff, $f0, $50, $e1, $eb, $1f, $be, $10
    db $e6, $00, $db, $e0, $0f, $ff, $1d, $ff, $ff, $fa, $fd, $f6, $f9, $ff, $ff, $60
    db $ff, $81, $01, $00, $60, $80, $0f, $f0, $60, $d9, $80, $8f, $e4, $86, $e2, $fe
    db $01, $7f, $e5, $0c, $03, $ff, $01, $00, $0c, $03, $00, $ff, $60, $1f, $f3, $18
    db $07, $f9, $e0, $ef, $a0, $63, $80, $80, $00, $ef, $80, $00, $20, $c0, $20, $e2
    db $ff, $03, $fe, $ff, $03, $ff, $20, $1f, $10, $0f, $20, $1f, $fe, $f0, $e3, $b8
    db $ef, $f0, $ff, $38, $ff, $46, $bf, $ff, $b9, $ff, $fe, $ff, $7f, $40, $c4, $0c
    db $cf, $ff, $73, $ff, $8c, $f2, $e0, $f1, $c5, $0e, $ff, $df, $91, $ff, $6e, $ff
    db $9f, $70, $e6, $00, $ff, $df, $98, $ff, $67, $ff, $99, $6a, $c0, $fa, $c1, $6e
    db $fe, $e1, $e2, $c1, $e6, $fe, $e2, $e2, $c1, $f9, $c3, $9e, $f3, $c3, $80, $00
    db $18, $e0, $f0, $e9, $f4, $f1, $07, $e2, $df, $ed, $ff, $ee, $ec, $85, $c0, $e0
    db $eb, $00, $ff, $3e, $f0, $14, $e4, $f0, $e5, $83, $c5, $f0, $f1, $f2, $c1, $f2
    db $c1, $9d, $f6, $60, $e0, $e2, $c1, $ee, $fe, $e2, $60, $a9, $80, $7f, $ff, $7c
    db $ff, $c0, $00, $07, $f8, $4c, $aa, $76, $38, $c0, $1c, $e0, $f0, $eb, $00, $00
    db $38, $c4, $c2, $32, $96, $e9, $1e, $dc, $e5, $0f, $e6, $03, $fc, $76, $eb, $05
    db $e0, $66, $66, $eb, $00, $1f, $a8, $e1, $e0, $ca, $00, $ff, $66, $e1, $f4, $c4
    db $c1, $58, $e1, $f2, $b8, $c0, $df, $3f, $ef, $f0, $ff, $f7, $0f, $f9, $fe, $7b
    db $8c, $ec, $1f, $fd, $1f, $0a, $a0, $f0, $ff, $9f, $7f, $e7, $f8, $ff, $ee, $31
    db $b1, $7f, $7e, $ff, $fd, $fe, $fe, $61, $81, $80, $ff, $ce, $ff, $b5, $fb, $7b
    db $bf, $80, $de, $00, $4a, $fc, $fe, $90, $84, $ec, $ff, $ff, $db, $3f, $7e, $01
    db $77, $00, $7a, $fc, $7c, $e3, $fb, $60, $cc, $ff, $b3, $7f, $b9, $00, $ed, $f9
    db $6e, $a0, $01, $fe, $6c, $83, $30, $ff, $cf, $b7, $ff, $7b, $fc, $cb, $a1, $40
    db $80, $54, $e3, $d9, $af, $ff, $b6, $7f, $38, $7f, $c2, $c0, $a8, $c2, $80, $73
    db $ff, $71, $05, $a1, $42, $e8, $c0, $ff, $e6, $c2, $c0, $ea, $28, $c1, $e2, $b8
    db $c2, $f6, $20, $c0, $01, $01, $3f, $61, $3f, $a8, $81, $16, $83, $5b, $e2, $0a
    db $88, $fc, $fc, $55, $81, $ed, $0f, $b0, $87, $ff, $e7, $12, $80, $c0, $ff, $60
    db $fa, $fe, $e0, $e1, $08, $80, $cd, $e3, $eb, $f7, $3e, $eb, $ff, $1c, $d8, $62
    db $c1, $2a, $80, $fc, $ff, $87, $f4, $ff, $80, $82, $61, $78, $f4, $e0, $ff, $ff
    db $ee, $f0, $d7, $fa, $fc, $1c, $eb, $82, $00, $f8, $80, $fe, $ff, $ff, $af, $1f
    db $f3, $00, $d2, $e0, $ee, $f0, $f7, $3e, $ff, $1f, $d8, $e2, $3e, $ff, $cd, $03
    db $5f, $cb, $00, $b2, $79, $fd, $32, $e0, $81, $13, $60, $00, $26, $c1, $24, $c5
    db $1a, $c1, $00, $00

    nop                                           ; $69a0: $00

    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0f, $0f, $0e, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0d, $0e, $0f, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0e, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f
    db $0f, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0f, $0f, $0e, $0e, $0e, $0e
    db $0e, $0e, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0c
    db $0c, $0c, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $00, $00, $1f, $3a, $1f, $31, $1f
    db $28, $52, $7e, $1f, $28, $80, $31, $00, $00, $80, $43, $80, $4a, $80, $31, $00
    db $00, $9c, $5b, $52, $42, $a0, $31, $00, $00

    ei                                            ; $6a1a: $fb
    db $fc                                        ; $6a1b: $fc
    nop                                           ; $6a1c: $00
    cp $e3                                        ; $6a1d: $fe $e3
    db $fd                                        ; $6a1f: $fd
    inc bc                                        ; $6a20: $03
    ld a, [$f40f]                                 ; $6a21: $fa $0f $f4
    rst $28                                       ; $6a24: $ef
    ld c, $f8                                     ; $6a25: $0e $f8
    inc e                                         ; $6a27: $1c
    nop                                           ; $6a28: $00
    rst $38                                       ; $6a29: $ff
    ld [c], a                                     ; $6a2a: $e2
    add c                                         ; $6a2b: $81
    jp $ff00                                      ; $6a2c: $c3 $00 $ff


    add c                                         ; $6a2f: $81
    nop                                           ; $6a30: $00

jr_00f_6a31:
    nop                                           ; $6a31: $00
    inc e                                         ; $6a32: $1c
    inc e                                         ; $6a33: $1c
    rst $30                                       ; $6a34: $f7
    rst $30                                       ; $6a35: $f7
    ccf                                           ; $6a36: $3f
    db $fd                                        ; $6a37: $fd
    nop                                           ; $6a38: $00
    cp $e3                                        ; $6a39: $fe $e3
    cp a                                          ; $6a3b: $bf
    ret nz                                        ; $6a3c: $c0

    ld e, a                                       ; $6a3d: $5f
    ldh a, [$2f]                                  ; $6a3e: $f0 $2f
    ld [hl], b                                    ; $6a40: $70
    rst $38                                       ; $6a41: $ff

jr_00f_6a42:
    rra                                           ; $6a42: $1f
    jr c, jr_00f_6a31                             ; $6a43: $38 $ec

jr_00f_6a45:
    inc e                                         ; $6a45: $1c
    db $f4                                        ; $6a46: $f4
    jr jr_00f_6a45                                ; $6a47: $18 $fc

    jr c, @+$01                                   ; $6a49: $38 $ff

    db $f4                                        ; $6a4b: $f4
    jr jr_00f_6a42                                ; $6a4c: $18 $f4

    inc a                                         ; $6a4e: $3c
    add sp, $1c                                   ; $6a4f: $e8 $1c
    jp c, $ff3e                                   ; $6a51: $da $3e $ff

    or $0f                                        ; $6a54: $f6 $0f
    sbc l                                         ; $6a56: $9d
    rst $38                                       ; $6a57: $ff
    add l                                         ; $6a58: $85
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $10                                       ; $6a5d: $d7
    rst $28                                       ; $6a5e: $ef
    rst $08                                       ; $6a5f: $cf
    adc a                                         ; $6a60: $8f
    add c                                         ; $6a61: $81
    add c                                         ; $6a62: $81
    and l                                         ; $6a63: $a5
    jp $5aff                                      ; $6a64: $c3 $ff $5a


    rst $38                                       ; $6a67: $ff
    scf                                           ; $6a68: $37
    jr c, jr_00f_6a9a                             ; $6a69: $38 $2f

    jr jr_00f_6aac                                ; $6a6b: $18 $3f

    inc e                                         ; $6a6d: $1c
    rst $38                                       ; $6a6e: $ff
    cpl                                           ; $6a6f: $2f
    jr jr_00f_6aa1                                ; $6a70: $18 $2f

    inc a                                         ; $6a72: $3c
    rla                                           ; $6a73: $17
    jr c, jr_00f_6ad1                             ; $6a74: $38 $5b

    ld a, h                                       ; $6a76: $7c
    rst $38                                       ; $6a77: $ff
    ld l, a                                       ; $6a78: $6f
    ldh a, [$ee]                                  ; $6a79: $f0 $ee
    rra                                           ; $6a7b: $1f
    db $fd                                        ; $6a7c: $fd
    inc bc                                        ; $6a7d: $03
    ei                                            ; $6a7e: $fb
    rlca                                          ; $6a7f: $07
    cp $9a                                        ; $6a80: $fe $9a
    push hl                                       ; $6a82: $e5
    db $fc                                        ; $6a83: $fc
    nop                                           ; $6a84: $00
    and l                                         ; $6a85: $a5
    xor l                                         ; $6a86: $ad
    cp l                                          ; $6a87: $bd
    rst $38                                       ; $6a88: $ff
    db $db                                        ; $6a89: $db
    ld a, a                                       ; $6a8a: $7f
    rst $38                                       ; $6a8b: $ff
    ld a, [hl]                                    ; $6a8c: $7e
    rst $38                                       ; $6a8d: $ff
    rst $20                                       ; $6a8e: $e7
    rst $38                                       ; $6a8f: $ff
    ld b, d                                       ; $6a90: $42
    rst $20                                       ; $6a91: $e7
    sub h                                         ; $6a92: $94
    pop hl                                        ; $6a93: $e1
    cp a                                          ; $6a94: $bf
    ld [hl], a                                    ; $6a95: $77
    ld hl, sp-$41                                 ; $6a96: $f8 $bf
    ret nz                                        ; $6a98: $c0

    rst $18                                       ; $6a99: $df

jr_00f_6a9a:
    ldh [$9a], a                                  ; $6a9a: $e0 $9a
    push hl                                       ; $6a9c: $e5
    ccf                                           ; $6a9d: $3f
    ld bc, $0000                                  ; $6a9e: $01 $00 $00

jr_00f_6aa1:
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    ccf                                           ; $6aa3: $3f
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    nop                                           ; $6aa6: $00
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    nop                                           ; $6aa9: $00
    db $fc                                        ; $6aaa: $fc
    pop hl                                        ; $6aab: $e1

jr_00f_6aac:
    cp $f7                                        ; $6aac: $fe $f7
    rst $38                                       ; $6aae: $ff
    ld a, a                                       ; $6aaf: $7f
    nop                                           ; $6ab0: $00
    ccf                                           ; $6ab1: $3f
    nop                                           ; $6ab2: $00
    rra                                           ; $6ab3: $1f
    nop                                           ; $6ab4: $00
    ld de, $fe00                                  ; $6ab5: $11 $00 $fe
    rst $38                                       ; $6ab8: $ff
    pop hl                                        ; $6ab9: $e1
    ldh a, [$60]                                  ; $6aba: $f0 $60
    sbc c                                         ; $6abc: $99
    ldh a, [rIF]                                  ; $6abd: $f0 $0f
    rst $38                                       ; $6abf: $ff
    ld h, b                                       ; $6ac0: $60
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    pop af                                        ; $6ac3: $f1
    rst $38                                       ; $6ac4: $ff
    cp a                                          ; $6ac5: $bf
    rst $38                                       ; $6ac6: $ff
    and b                                         ; $6ac7: $a0
    rst $38                                       ; $6ac8: $ff
    db $10                                        ; $6ac9: $10
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    or a                                          ; $6acc: $b7
    jr @+$11                                      ; $6acd: $18 $0f

    ld hl, sp+$18                                 ; $6acf: $f8 $18

jr_00f_6ad1:
    rrca                                          ; $6ad1: $0f
    dec b                                         ; $6ad2: $05
    rst $08                                       ; $6ad3: $cf
    rst $38                                       ; $6ad4: $ff
    dec e                                         ; $6ad5: $1d
    rlca                                          ; $6ad6: $07
    ld hl, sp-$10                                 ; $6ad7: $f8 $f0
    ldh [$b9], a                                  ; $6ad9: $e0 $b9
    pop hl                                        ; $6adb: $e1

jr_00f_6adc:
    rrca                                          ; $6adc: $0f
    ldh a, [rIE]                                  ; $6add: $f0 $ff
    rrca                                          ; $6adf: $0f
    ldh a, [$1f]                                  ; $6ae0: $f0 $1f
    ldh [$1f], a                                  ; $6ae2: $e0 $1f
    ldh [$bf], a                                  ; $6ae4: $e0 $bf
    ld b, b                                       ; $6ae6: $40
    ei                                            ; $6ae7: $fb
    cp a                                          ; $6ae8: $bf
    ld b, b                                       ; $6ae9: $40
    xor d                                         ; $6aea: $aa
    jp hl                                         ; $6aeb: $e9


    cp $01                                        ; $6aec: $fe $01
    ld l, a                                       ; $6aee: $6f
    sbc a                                         ; $6aef: $9f
    cp a                                          ; $6af0: $bf
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    push af                                       ; $6af3: $f5
    ei                                            ; $6af4: $fb
    ld l, a                                       ; $6af5: $6f
    ldh a, [rIE]                                  ; $6af6: $f0 $ff
    nop                                           ; $6af8: $00
    ld l, [hl]                                    ; $6af9: $6e
    add e                                         ; $6afa: $83
    sbc a                                         ; $6afb: $9f
    sbc a                                         ; $6afc: $9f
    call nc, $fde0                                ; $6afd: $d4 $e0 $fd
    pop hl                                        ; $6b00: $e1
    add b                                         ; $6b01: $80
    rst $38                                       ; $6b02: $ff
    call nz, $fee2                                ; $6b03: $c4 $e2 $fe
    ldh [$e0], a                                  ; $6b06: $e0 $e0
    ei                                            ; $6b08: $fb
    nop                                           ; $6b09: $00
    ret nz                                        ; $6b0a: $c0

    ld a, [hl]                                    ; $6b0b: $7e
    ldh [$78], a                                  ; $6b0c: $e0 $78
    jr nc, jr_00f_6adc                            ; $6b0e: $30 $cc

    ld hl, sp+$07                                 ; $6b10: $f8 $07
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    ld [hl], b                                    ; $6b14: $70
    rst $38                                       ; $6b15: $ff
    ld hl, sp-$01                                 ; $6b16: $f8 $ff
    rst $28                                       ; $6b18: $ef
    rst $38                                       ; $6b19: $ff
    jr z, @+$01                                   ; $6b1a: $28 $ff

    rst $38                                       ; $6b1c: $ff
    ld b, h                                       ; $6b1d: $44
    rst $38                                       ; $6b1e: $ff
    ld l, l                                       ; $6b1f: $6d
    add $83                                       ; $6b20: $c6 $83
    cp $c6                                        ; $6b22: $fe $c6
    ccf                                           ; $6b24: $3f
    add e                                         ; $6b25: $83
    ld bc, $c7ff                                  ; $6b26: $01 $ff $c7
    ld bc, $f0fe                                  ; $6b29: $01 $fe $f0
    ldh [$39], a                                  ; $6b2c: $e0 $39
    pop hl                                        ; $6b2e: $e1
    rst $38                                       ; $6b2f: $ff
    add e                                         ; $6b30: $83
    ld a, h                                       ; $6b31: $7c
    add e                                         ; $6b32: $83
    ld a, h                                       ; $6b33: $7c
    rst $00                                       ; $6b34: $c7
    jr c, @-$37                                   ; $6b35: $38 $c7

    jr c, @-$0f                                   ; $6b37: $38 $ef

    rst $28                                       ; $6b39: $ef
    db $10                                        ; $6b3a: $10
    rst $28                                       ; $6b3b: $ef
    db $10                                        ; $6b3c: $10
    ld a, [hl+]                                   ; $6b3d: $2a
    jp hl                                         ; $6b3e: $e9


    push af                                       ; $6b3f: $f5
    ei                                            ; $6b40: $fb
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    sbc a                                         ; $6b44: $9f
    rst $38                                       ; $6b45: $ff
    xor [hl]                                      ; $6b46: $ae
    rst $18                                       ; $6b47: $df
    call c, $b83f                                 ; $6b48: $dc $3f $b8
    rst $38                                       ; $6b4b: $ff
    ld a, a                                       ; $6b4c: $7f
    ld [hl], b                                    ; $6b4d: $70
    rst $38                                       ; $6b4e: $ff
    ldh [rIE], a                                  ; $6b4f: $e0 $ff
    ret nz                                        ; $6b51: $c0

    rst $38                                       ; $6b52: $ff
    add b                                         ; $6b53: $80
    rst $20                                       ; $6b54: $e7
    rst $38                                       ; $6b55: $ff
    ld bc, $80fe                                  ; $6b56: $01 $fe $80
    push af                                       ; $6b59: $f5
    adc [hl]                                      ; $6b5a: $8e
    pop hl                                        ; $6b5b: $e1
    cp $00                                        ; $6b5c: $fe $00
    ldh a, [rIE]                                  ; $6b5e: $f0 $ff
    nop                                           ; $6b60: $00
    ldh [rSB], a                                  ; $6b61: $e0 $01
    pop hl                                        ; $6b63: $e1
    ld bc, $0301                                  ; $6b64: $01 $01 $03
    ld [bc], a                                    ; $6b67: $02
    xor $fe                                       ; $6b68: $ee $fe
    ldh [$03], a                                  ; $6b6a: $e0 $03
    inc bc                                        ; $6b6c: $03
    ld bc, $e0fd                                  ; $6b6d: $01 $fd $e0
    inc a                                         ; $6b70: $3c
    rra                                           ; $6b71: $1f
    add sp, -$01                                  ; $6b72: $e8 $ff
    ld a, a                                       ; $6b74: $7f
    sub b                                         ; $6b75: $90
    rst $38                                       ; $6b76: $ff
    jr nz, @+$01                                  ; $6b77: $20 $ff

    call nz, $0aff                                ; $6b79: $c4 $ff $0a
    cp $fe                                        ; $6b7c: $fe $fe
    ldh [rNR11], a                                ; $6b7e: $e0 $11
    rst $38                                       ; $6b80: $ff
    sbc e                                         ; $6b81: $9b
    ld [hl], c                                    ; $6b82: $71
    and b                                         ; $6b83: $a0
    ld a, a                                       ; $6b84: $7f
    ld sp, $e03f                                  ; $6b85: $31 $3f $e0
    ld b, b                                       ; $6b88: $40
    rst $38                                       ; $6b89: $ff
    ld [hl], c                                    ; $6b8a: $71
    ret nz                                        ; $6b8b: $c0

    ccf                                           ; $6b8c: $3f
    xor $e0                                       ; $6b8d: $ee $e0
    cp c                                          ; $6b8f: $b9
    pop bc                                        ; $6b90: $c1
    cp $05                                        ; $6b91: $fe $05
    ldh [$1f], a                                  ; $6b93: $e0 $1f
    pop af                                        ; $6b95: $f1
    ld c, $f1                                     ; $6b96: $0e $f1
    ld c, $fb                                     ; $6b98: $0e $fb
    inc b                                         ; $6b9a: $04

jr_00f_6b9b:
    db $d3                                        ; $6b9b: $d3
    ei                                            ; $6b9c: $fb
    inc b                                         ; $6b9d: $04
    cp h                                          ; $6b9e: $bc
    ret z                                         ; $6b9f: $c8

    db $e4                                        ; $6ba0: $e4
    ret nz                                        ; $6ba1: $c0

    ret nz                                        ; $6ba2: $c0

    inc d                                         ; $6ba3: $14
    ldh [$03], a                                  ; $6ba4: $e0 $03
    db $fc                                        ; $6ba6: $fc
    rst $38                                       ; $6ba7: $ff
    inc b                                         ; $6ba8: $04
    ld hl, sp+$08                                 ; $6ba9: $f8 $08
    ldh a, [rNR10]                                ; $6bab: $f0 $10
    ldh [rNR41], a                                ; $6bad: $e0 $20
    ret nz                                        ; $6baf: $c0

    and a                                         ; $6bb0: $a7
    ld b, b                                       ; $6bb1: $40
    add b                                         ; $6bb2: $80
    add b                                         ; $6bb3: $80
    xor [hl]                                      ; $6bb4: $ae
    pop bc                                        ; $6bb5: $c1
    nop                                           ; $6bb6: $00
    db $ec                                        ; $6bb7: $ec
    pop af                                        ; $6bb8: $f1
    jr jr_00f_6b9b                                ; $6bb9: $18 $e0

    ldh [$fe], a                                  ; $6bbb: $e0 $fe
    sub [hl]                                      ; $6bbd: $96
    jp nz, $0000                                  ; $6bbe: $c2 $00 $00

    ld b, h                                       ; $6bc1: $44
    xor $aa                                       ; $6bc2: $ee $aa

jr_00f_6bc4:
    xor $aa                                       ; $6bc4: $ee $aa
    ld a, a                                       ; $6bc6: $7f
    rst $38                                       ; $6bc7: $ff
    ld d, l                                       ; $6bc8: $55
    cp e                                          ; $6bc9: $bb
    ld de, $aeff                                  ; $6bca: $11 $ff $ae
    dec de                                        ; $6bcd: $1b
    and h                                         ; $6bce: $a4
    pop hl                                        ; $6bcf: $e1
    ld sp, hl                                     ; $6bd0: $f9
    cp e                                          ; $6bd1: $bb
    and b                                         ; $6bd2: $a0
    jp nz, $c152                                  ; $6bd3: $c2 $52 $c1

    ld d, h                                       ; $6bd6: $54
    xor e                                         ; $6bd7: $ab
    xor c                                         ; $6bd8: $a9
    ld d, [hl]                                    ; $6bd9: $56

jr_00f_6bda:
    ld d, d                                       ; $6bda: $52
    rst $10                                       ; $6bdb: $d7
    xor h                                         ; $6bdc: $ac
    ld [bc], a                                    ; $6bdd: $02
    db $fc                                        ; $6bde: $fc
    ld b, b                                       ; $6bdf: $40
    pop hl                                        ; $6be0: $e1
    add b                                         ; $6be1: $80
    jr c, jr_00f_6bc4                             ; $6be2: $38 $e0

    ld b, b                                       ; $6be4: $40
    rst $38                                       ; $6be5: $ff
    rst $10                                       ; $6be6: $d7
    ret nz                                        ; $6be7: $c0

    ld a, a                                       ; $6be8: $7f
    add b                                         ; $6be9: $80
    dec a                                         ; $6bea: $3d
    jp nz, $e480                                  ; $6beb: $c2 $80 $e4

    ret nz                                        ; $6bee: $c0

    rst $08                                       ; $6bef: $cf
    ccf                                           ; $6bf0: $3f
    call nz, $d032                                ; $6bf1: $c4 $32 $d0
    sub h                                         ; $6bf4: $94
    push bc                                       ; $6bf5: $c5
    ld bc, $e4ff                                  ; $6bf6: $01 $ff $e4
    sbc h                                         ; $6bf9: $9c
    db $e4                                        ; $6bfa: $e4
    add b                                         ; $6bfb: $80
    pop de                                        ; $6bfc: $d1
    rra                                           ; $6bfd: $1f
    nop                                           ; $6bfe: $00
    or l                                          ; $6bff: $b5
    rrca                                          ; $6c00: $0f
    cp $e0                                        ; $6c01: $fe $e0
    ld bc, $e980                                  ; $6c03: $01 $80 $e9
    add hl, de                                    ; $6c06: $19
    ld [$ea80], sp                                ; $6c07: $08 $80 $ea
    ld h, d                                       ; $6c0a: $62
    rst $38                                       ; $6c0b: $ff
    add c                                         ; $6c0c: $81
    dec b                                         ; $6c0d: $05
    ld [bc], a                                    ; $6c0e: $02
    ld bc, $0406                                  ; $6c0f: $01 $06 $04
    inc bc                                        ; $6c12: $03
    inc bc                                        ; $6c13: $03
    ld a, a                                       ; $6c14: $7f
    nop                                           ; $6c15: $00
    add b                                         ; $6c16: $80
    nop                                           ; $6c17: $00
    jr nc, jr_00f_6bda                            ; $6c18: $30 $c0

    inc bc                                        ; $6c1a: $03
    db $fc                                        ; $6c1b: $fc
    ld a, [hl-]                                   ; $6c1c: $3a
    pop bc                                        ; $6c1d: $c1
    adc a                                         ; $6c1e: $8f
    ld bc, $02fe                                  ; $6c1f: $01 $fe $02
    db $fd                                        ; $6c22: $fd
    or b                                          ; $6c23: $b0
    call nz, $b1b2                                ; $6c24: $c4 $b2 $b1
    db $e4                                        ; $6c27: $e4
    and b                                         ; $6c28: $a0
    ld a, [hl]                                    ; $6c29: $7e
    cp a                                          ; $6c2a: $bf
    rst $38                                       ; $6c2b: $ff
    jp $81e7                                      ; $6c2c: $c3 $e7 $81


    jp $ff81                                      ; $6c2f: $c3 $81 $ff


    pop hl                                        ; $6c32: $e1

jr_00f_6c33:
    jp $c3bd                                      ; $6c33: $c3 $bd $c3


    ld a, [c]                                     ; $6c36: $f2
    ldh [$7e], a                                  ; $6c37: $e0 $7e
    rst $38                                       ; $6c39: $ff
    ld h, a                                       ; $6c3a: $67
    rst $28                                       ; $6c3b: $ef
    nop                                           ; $6c3c: $00
    rst $10                                       ; $6c3d: $d7
    db $e3                                        ; $6c3e: $e3
    cp e                                          ; $6c3f: $bb
    nop                                           ; $6c40: $00
    pop bc                                        ; $6c41: $c1
    pop hl                                        ; $6c42: $e1
    pop bc                                        ; $6c43: $c1
    db $ed                                        ; $6c44: $ed
    rst $38                                       ; $6c45: $ff
    or [hl]                                       ; $6c46: $b6
    ld d, a                                       ; $6c47: $57
    ret nz                                        ; $6c48: $c0

    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    and h                                         ; $6c4c: $a4
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    db $fc                                        ; $6c4f: $fc
    sub a                                         ; $6c50: $97
    db $fc                                        ; $6c51: $fc
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rlca                                          ; $6c54: $07
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    inc b                                         ; $6c57: $04
    inc b                                         ; $6c58: $04
    rst $38                                       ; $6c59: $ff
    ld h, h                                       ; $6c5a: $64
    add h                                         ; $6c5b: $84
    ccf                                           ; $6c5c: $3f
    nop                                           ; $6c5d: $00
    inc b                                         ; $6c5e: $04
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    ld h, b                                       ; $6c61: $60
    add b                                         ; $6c62: $80
    jp nz, Jump_000_3aa0                          ; $6c63: $c2 $a0 $3a

    and $3f                                       ; $6c66: $e6 $3f
    ld d, l                                       ; $6c68: $55
    xor d                                         ; $6c69: $aa
    xor d                                         ; $6c6a: $aa
    ld d, l                                       ; $6c6b: $55
    ld d, l                                       ; $6c6c: $55
    xor d                                         ; $6c6d: $aa
    add b                                         ; $6c6e: $80
    ld sp, hl                                     ; $6c6f: $f9
    sub h                                         ; $6c70: $94
    and d                                         ; $6c71: $a2
    pop bc                                        ; $6c72: $c1
    add b                                         ; $6c73: $80
    rst $38                                       ; $6c74: $ff
    db $e4                                        ; $6c75: $e4
    ld [hl-], a                                   ; $6c76: $32
    and b                                         ; $6c77: $a0
    add b                                         ; $6c78: $80
    ret nz                                        ; $6c79: $c0

    cp [hl]                                       ; $6c7a: $be
    pop hl                                        ; $6c7b: $e1
    nop                                           ; $6c7c: $00
    and h                                         ; $6c7d: $a4
    ei                                            ; $6c7e: $fb
    inc e                                         ; $6c7f: $1c
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    ld d, $fb                                     ; $6c82: $16 $fb
    inc e                                         ; $6c84: $1c
    rst $10                                       ; $6c85: $d7
    jr c, jr_00f_6c33                             ; $6c86: $38 $ab

    ld a, h                                       ; $6c88: $7c
    cp a                                          ; $6c89: $bf
    ld b, l                                       ; $6c8a: $45
    cp $83                                        ; $6c8b: $fe $83
    cp $ff                                        ; $6c8d: $fe $ff
    cp $33                                        ; $6c8f: $fe $33
    and b                                         ; $6c91: $a0
    sub [hl]                                      ; $6c92: $96
    ld a, [hl+]                                   ; $6c93: $2a
    cpl                                           ; $6c94: $2f
    and b                                         ; $6c95: $a0
    adc a                                         ; $6c96: $8f
    dec hl                                        ; $6c97: $2b
    and b                                         ; $6c98: $a0
    and [hl]                                      ; $6c99: $a6
    daa                                           ; $6c9a: $27
    and b                                         ; $6c9b: $a0
    sub a                                         ; $6c9c: $97
    ld hl, sp-$1d                                 ; $6c9d: $f8 $e3
    ld [hl], l                                    ; $6c9f: $75
    ldh [$ee], a                                  ; $6ca0: $e0 $ee
    jp nc, $0c80                                  ; $6ca2: $d2 $80 $0c

    inc bc                                        ; $6ca5: $03
    ld bc, $c0e0                                  ; $6ca6: $01 $e0 $c0
    inc c                                         ; $6ca9: $0c
    inc bc                                        ; $6caa: $03
    nop                                           ; $6cab: $00
    ld a, a                                       ; $6cac: $7f
    rst $38                                       ; $6cad: $ff
    jr nc, jr_00f_6cbf                            ; $6cae: $30 $0f

    ld [$3007], sp                                ; $6cb0: $08 $07 $30
    rrca                                          ; $6cb3: $0f
    jp $c383                                      ; $6cb4: $c3 $83 $c3


    add b                                         ; $6cb7: $80
    ld a, a                                       ; $6cb8: $7f
    sub l                                         ; $6cb9: $95
    jp z, $d380                                   ; $6cba: $ca $80 $d3

    adc b                                         ; $6cbd: $88
    push bc                                       ; $6cbe: $c5

jr_00f_6cbf:
    inc e                                         ; $6cbf: $1c
    call nz, $fb0e                                ; $6cc0: $c4 $0e $fb
    rst $38                                       ; $6cc3: $ff
    inc c                                         ; $6cc4: $0c
    rst $38                                       ; $6cc5: $ff
    db $eb                                        ; $6cc6: $eb
    inc e                                         ; $6cc7: $1c
    inc d                                         ; $6cc8: $14
    rst $38                                       ; $6cc9: $ff
    push de                                       ; $6cca: $d5
    ld a, $7f                                     ; $6ccb: $3e $7f
    db $e3                                        ; $6ccd: $e3
    ld a, $a2                                     ; $6cce: $3e $a2
    ld a, a                                       ; $6cd0: $7f
    pop bc                                        ; $6cd1: $c1
    ld a, a                                       ; $6cd2: $7f
    rst $38                                       ; $6cd3: $ff
    cp $e1                                        ; $6cd4: $fe $e1
    push hl                                       ; $6cd6: $e5
    ld e, e                                       ; $6cd7: $5b
    ld a, [$53e0]                                 ; $6cd8: $fa $e0 $53
    inc de                                        ; $6cdb: $13
    jp $80ad                                      ; $6cdc: $c3 $ad $80


    jp $beff                                      ; $6cdf: $c3 $ff $be


    ld [$80a7], a                                 ; $6ce2: $ea $a7 $80
    dec a                                         ; $6ce5: $3d
    and e                                         ; $6ce6: $a3
    add b                                         ; $6ce7: $80
    cp h                                          ; $6ce8: $bc
    nop                                           ; $6ce9: $00
    push bc                                       ; $6cea: $c5
    add [hl]                                      ; $6ceb: $86
    ld bc, $ff41                                  ; $6cec: $01 $41 $ff
    add b                                         ; $6cef: $80
    ld b, c                                       ; $6cf0: $41
    add b                                         ; $6cf1: $80
    add d                                         ; $6cf2: $82
    ld bc, $0798                                  ; $6cf3: $01 $98 $07
    ld [bc], a                                    ; $6cf6: $02
    sbc a                                         ; $6cf7: $9f
    db $fc                                        ; $6cf8: $fc
    ld [$08f0], sp                                ; $6cf9: $08 $f0 $08
    ldh a, [$7e]                                  ; $6cfc: $f0 $7e
    jp $853d                                      ; $6cfe: $c3 $3d $85


    ldh [rIE], a                                  ; $6d01: $e0 $ff
    rst $38                                       ; $6d03: $ff
    ret c                                         ; $6d04: $d8

    ccf                                           ; $6d05: $3f
    db $f4                                        ; $6d06: $f4
    rrca                                          ; $6d07: $0f
    ld a, [$fa07]                                 ; $6d08: $fa $07 $fa
    rst $38                                       ; $6d0b: $ff
    rlca                                          ; $6d0c: $07
    db $fc                                        ; $6d0d: $fc
    rlca                                          ; $6d0e: $07
    db $f4                                        ; $6d0f: $f4
    rrca                                          ; $6d10: $0f
    ld hl, sp+$0f                                 ; $6d11: $f8 $0f
    add sp, -$19                                  ; $6d13: $e8 $e7
    rra                                           ; $6d15: $1f
    ldh a, [$1f]                                  ; $6d16: $f0 $1f
    add b                                         ; $6d18: $80
    push af                                       ; $6d19: $f5
    add b                                         ; $6d1a: $80
    add a                                         ; $6d1b: $87
    db $fd                                        ; $6d1c: $fd
    ld c, $ff                                     ; $6d1d: $0e $ff
    cp a                                          ; $6d1f: $bf
    dec bc                                        ; $6d20: $0b
    db $fd                                        ; $6d21: $fd
    ld c, $eb                                     ; $6d22: $0e $eb
    inc e                                         ; $6d24: $1c
    push de                                       ; $6d25: $d5
    ld a, b                                       ; $6d26: $78
    push hl                                       ; $6d27: $e5
    rst $38                                       ; $6d28: $ff
    ld c, e                                       ; $6d29: $4b
    rst $38                                       ; $6d2a: $ff
    ld c, e                                       ; $6d2b: $4b
    cpl                                           ; $6d2c: $2f
    add b                                         ; $6d2d: $80
    rst $00                                       ; $6d2e: $c7
    dec hl                                        ; $6d2f: $2b
    add b                                         ; $6d30: $80
    ld [hl], h                                    ; $6d31: $74
    pop hl                                        ; $6d32: $e1
    ld b, a                                       ; $6d33: $47
    inc hl                                        ; $6d34: $23
    add b                                         ; $6d35: $80
    dec d                                         ; $6d36: $15
    res 0, b                                      ; $6d37: $cb $80
    and l                                         ; $6d39: $a5
    rra                                           ; $6d3a: $1f
    ld b, b                                       ; $6d3b: $40
    and b                                         ; $6d3c: $a0
    nop                                           ; $6d3d: $00
    ld a, $a5                                     ; $6d3e: $3e $a5
    add sp, $62                                   ; $6d40: $e8 $62
    ldh a, [$e0]                                  ; $6d42: $f0 $e0
    rst $38                                       ; $6d44: $ff
    ldh a, [$08]                                  ; $6d45: $f0 $08
    pop af                                        ; $6d47: $f1
    inc bc                                        ; $6d48: $03
    ld sp, hl                                     ; $6d49: $f9
    ld bc, $07fb                                  ; $6d4a: $01 $fb $07
    rst $38                                       ; $6d4d: $ff
    ei                                            ; $6d4e: $fb
    ld a, [bc]                                    ; $6d4f: $0a
    rst $30                                       ; $6d50: $f7
    ld c, $f6                                     ; $6d51: $0e $f6

jr_00f_6d53:
    inc b                                         ; $6d53: $04
    rst $38                                       ; $6d54: $ff
    inc c                                         ; $6d55: $0c
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    ld [$18fc], sp                                ; $6d58: $08 $fc $18
    ld hl, sp+$10                                 ; $6d5b: $f8 $10
    rst $38                                       ; $6d5d: $ff
    jr nc, @-$5f                                  ; $6d5e: $30 $9f

    rst $38                                       ; $6d60: $ff
    jr nz, jr_00f_6d53                            ; $6d61: $20 $f0

    ld [hl], b                                    ; $6d63: $70
    ldh [$80], a                                  ; $6d64: $e0 $80
    rst $38                                       ; $6d66: $ff
    ld a, [hl]                                    ; $6d67: $7e
    ld h, a                                       ; $6d68: $67
    db $fc                                        ; $6d69: $fc
    rst $28                                       ; $6d6a: $ef
    nop                                           ; $6d6b: $00
    ld hl, sp+$00                                 ; $6d6c: $f8 $00
    sbc b                                         ; $6d6e: $98
    ld h, c                                       ; $6d6f: $61
    and l                                         ; $6d70: $a5
    db $db                                        ; $6d71: $db
    rst $38                                       ; $6d72: $ff
    ld l, l                                       ; $6d73: $6d
    xor e                                         ; $6d74: $ab
    rst $38                                       ; $6d75: $ff
    ld bc, $60a7                                  ; $6d76: $01 $a7 $60
    ld c, c                                       ; $6d79: $49
    and e                                         ; $6d7a: $a3
    ld h, b                                       ; $6d7b: $60
    dec h                                         ; $6d7c: $25
    nop                                           ; $6d7d: $00
    and l                                         ; $6d7e: $a5
    ldh [$b3], a                                  ; $6d7f: $e0 $b3
    rra                                           ; $6d81: $1f
    ld b, $3f                                     ; $6d82: $06 $3f
    and [hl]                                      ; $6d84: $a6
    ld l, c                                       ; $6d85: $69
    ld h, b                                       ; $6d86: $60
    ld bc, $5c03                                  ; $6d87: $01 $03 $5c
    add b                                         ; $6d8a: $80
    rlca                                          ; $6d8b: $07
    rst $38                                       ; $6d8c: $ff
    inc bc                                        ; $6d8d: $03
    add d                                         ; $6d8e: $82
    rst $00                                       ; $6d8f: $c7
    rst $28                                       ; $6d90: $ef
    add $c4                                       ; $6d91: $c6 $c4
    ld l, a                                       ; $6d93: $6f
    ld a, h                                       ; $6d94: $7c
    rst $38                                       ; $6d95: $ff
    ld l, a                                       ; $6d96: $6f
    dec hl                                        ; $6d97: $2b
    ld a, h                                       ; $6d98: $7c
    ccf                                           ; $6d99: $3f
    jr c, jr_00f_6dac                             ; $6d9a: $38 $10

    rst $38                                       ; $6d9c: $ff
    jr @+$01                                      ; $6d9d: $18 $ff

    rst $38                                       ; $6d9f: $ff
    dec bc                                        ; $6da0: $0b
    inc e                                         ; $6da1: $1c
    rrca                                          ; $6da2: $0f
    inc c                                         ; $6da3: $0c
    inc b                                         ; $6da4: $04
    rst $38                                       ; $6da5: $ff
    ld b, $1f                                     ; $6da6: $06 $1f
    rst $38                                       ; $6da8: $ff
    inc bc                                        ; $6da9: $03
    ld b, $07                                     ; $6daa: $06 $07

jr_00f_6dac:
    inc bc                                        ; $6dac: $03
    add b                                         ; $6dad: $80
    push af                                       ; $6dae: $f5
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    ccf                                           ; $6db2: $3f
    nop                                           ; $6db3: $00
    rst $38                                       ; $6db4: $ff
    nop                                           ; $6db5: $00
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    nop                                           ; $6db8: $00
    db $fc                                        ; $6db9: $fc
    pop hl                                        ; $6dba: $e1
    cp $e3                                        ; $6dbb: $fe $e3
    ld hl, sp-$10                                 ; $6dbd: $f8 $f0
    rst $38                                       ; $6dbf: $ff
    ldh a, [rIE]                                  ; $6dc0: $f0 $ff
    ldh a, [$f3]                                  ; $6dc2: $f0 $f3
    ei                                            ; $6dc4: $fb
    inc e                                         ; $6dc5: $1c
    rst $30                                       ; $6dc6: $f7
    ld d, $fb                                     ; $6dc7: $16 $fb
    rst $38                                       ; $6dc9: $ff
    inc e                                         ; $6dca: $1c
    ld a, [bc]                                    ; $6dcb: $0a
    ei                                            ; $6dcc: $fb
    inc c                                         ; $6dcd: $0c
    rst $38                                       ; $6dce: $ff
    db $eb                                        ; $6dcf: $eb
    inc e                                         ; $6dd0: $1c
    inc d                                         ; $6dd1: $14
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    push de                                       ; $6dd4: $d5
    ld a, $e3                                     ; $6dd5: $3e $e3
    ld a, $a2                                     ; $6dd7: $3e $a2
    ld a, a                                       ; $6dd9: $7f
    pop bc                                        ; $6dda: $c1
    db $fd                                        ; $6ddb: $fd
    ld a, a                                       ; $6ddc: $7f
    ret nz                                        ; $6ddd: $c0

    rst $20                                       ; $6dde: $e7
    db $fd                                        ; $6ddf: $fd
    ld c, $fb                                     ; $6de0: $0e $fb
    dec bc                                        ; $6de2: $0b
    db $fd                                        ; $6de3: $fd
    ld c, $e8                                     ; $6de4: $0e $e8
    or b                                          ; $6de6: $b0
    db $ed                                        ; $6de7: $ed
    cp $ff                                        ; $6de8: $fe $ff
    add [hl]                                      ; $6dea: $86
    db $e3                                        ; $6deb: $e3
    cp $fe                                        ; $6dec: $fe $fe
    ld [c], a                                     ; $6dee: $e2
    ldh a, [rP1]                                  ; $6def: $f0 $00
    pop af                                        ; $6df1: $f1
    di                                            ; $6df2: $f3
    nop                                           ; $6df3: $00
    ldh [$fe], a                                  ; $6df4: $e0 $fe
    ldh [rIE], a                                  ; $6df6: $e0 $ff
    db $e3                                        ; $6df8: $e3
    ld b, h                                       ; $6df9: $44
    xor $aa                                       ; $6dfa: $ee $aa
    xor $2e                                       ; $6dfc: $ee $2e
    ld l, b                                       ; $6dfe: $68
    pop hl                                        ; $6dff: $e1
    rra                                           ; $6e00: $1f
    nop                                           ; $6e01: $00
    rrca                                          ; $6e02: $0f
    cp $e0                                        ; $6e03: $fe $e0
    ld bc, $e6f0                                  ; $6e05: $01 $f0 $e6
    ld d, h                                       ; $6e08: $54
    db $e3                                        ; $6e09: $e3
    rst $30                                       ; $6e0a: $f7
    db $e3                                        ; $6e0b: $e3
    nop                                           ; $6e0c: $00
    pop bc                                        ; $6e0d: $c1
    ret c                                         ; $6e0e: $d8

    ldh [$d7], a                                  ; $6e0f: $e0 $d7
    jr c, @-$53                                   ; $6e11: $38 $ab

    ld a, h                                       ; $6e13: $7c
    rst $38                                       ; $6e14: $ff
    ld b, l                                       ; $6e15: $45
    cp $83                                        ; $6e16: $fe $83
    cp $ff                                        ; $6e18: $fe $ff
    cp $ff                                        ; $6e1a: $fe $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    sub [hl]                                      ; $6e1e: $96
    sub [hl]                                      ; $6e1f: $96
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    ld a, a                                       ; $6e23: $7f
    rst $38                                       ; $6e24: $ff
    ld a, a                                       ; $6e25: $7f
    cp a                                          ; $6e26: $bf
    db $db                                        ; $6e27: $db
    ld e, e                                       ; $6e28: $5b
    rst $38                                       ; $6e29: $ff
    ld a, a                                       ; $6e2a: $7f
    db $d3                                        ; $6e2b: $d3
    ld d, e                                       ; $6e2c: $53
    add hl, hl                                    ; $6e2d: $29
    db $e3                                        ; $6e2e: $e3
    db $eb                                        ; $6e2f: $eb
    ld [hl], e                                    ; $6e30: $73
    inc e                                         ; $6e31: $1c
    push de                                       ; $6e32: $d5
    ld e, b                                       ; $6e33: $58
    ld [c], a                                     ; $6e34: $e2
    add sp, -$20                                  ; $6e35: $e8 $e0
    rst $38                                       ; $6e37: $ff
    ld c, e                                       ; $6e38: $4b
    ld c, e                                       ; $6e39: $4b
    ldh [$e0], a                                  ; $6e3a: $e0 $e0
    ld a, $0f                                     ; $6e3c: $3e $0f
    ldh [$fc], a                                  ; $6e3e: $e0 $fc
    nop                                           ; $6e40: $00
    ld hl, sp+$00                                 ; $6e41: $f8 $00
    sbc b                                         ; $6e43: $98
    sbc h                                         ; $6e44: $9c
    db $e4                                        ; $6e45: $e4
    ld [$97e1], sp                                ; $6e46: $08 $e1 $97
    ld a, a                                       ; $6e49: $7f
    nop                                           ; $6e4a: $00
    ccf                                           ; $6e4b: $3f
    sbc h                                         ; $6e4c: $9c
    ldh [rNR11], a                                ; $6e4d: $e0 $11
    ldh a, [$e6]                                  ; $6e4f: $f0 $e6
    ld [hl], d                                    ; $6e51: $72
    db $e3                                        ; $6e52: $e3
    ldh [$fb], a                                  ; $6e53: $e0 $fb
    nop                                           ; $6e55: $00
    ret nz                                        ; $6e56: $c0

    ld a, b                                       ; $6e57: $78
    ldh [$e0], a                                  ; $6e58: $e0 $e0
    ld bc, $01e1                                  ; $6e5a: $01 $e1 $01
    ld bc, $03fb                                  ; $6e5d: $01 $fb $03
    ld [bc], a                                    ; $6e60: $02
    cp $e0                                        ; $6e61: $fe $e0
    inc bc                                        ; $6e63: $03
    inc bc                                        ; $6e64: $03
    ld bc, $0703                                  ; $6e65: $01 $03 $07
    rst $38                                       ; $6e68: $ff
    inc bc                                        ; $6e69: $03
    xor d                                         ; $6e6a: $aa
    rst $38                                       ; $6e6b: $ff
    ld d, l                                       ; $6e6c: $55
    cp e                                          ; $6e6d: $bb
    ld de, $aeff                                  ; $6e6e: $11 $ff $ae
    rr e                                          ; $6e71: $cb $1b
    ld a, [bc]                                    ; $6e73: $0a
    sub l                                         ; $6e74: $95
    ldh [$bb], a                                  ; $6e75: $e0 $bb
    sub c                                         ; $6e77: $91
    ldh [$f0], a                                  ; $6e78: $e0 $f0
    db $e4                                        ; $6e7a: $e4
    add hl, de                                    ; $6e7b: $19
    ld [$f0fe], sp                                ; $6e7c: $08 $fe $f0
    db $e4                                        ; $6e7f: $e4
    db $ed                                        ; $6e80: $ed
    db $ed                                        ; $6e81: $ed
    or [hl]                                       ; $6e82: $b6
    or [hl]                                       ; $6e83: $b6
    add b                                         ; $6e84: $80
    add b                                         ; $6e85: $80
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    and h                                         ; $6e89: $a4
    and h                                         ; $6e8a: $a4
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    sub h                                         ; $6e8d: $94
    sub a                                         ; $6e8e: $97
    db $fc                                        ; $6e8f: $fc
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    adc a                                         ; $6e92: $8f
    adc a                                         ; $6e93: $8f
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    and [hl]                                      ; $6e96: $a6
    and [hl]                                      ; $6e97: $a6
    rst $38                                       ; $6e98: $ff
    rst $30                                       ; $6e99: $f7
    rst $38                                       ; $6e9a: $ff
    sub a                                         ; $6e9b: $97
    sub a                                         ; $6e9c: $97
    ld hl, sp-$1d                                 ; $6e9d: $f8 $e3
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    jp $ffc3                                      ; $6ea1: $c3 $c3 $ff


    cp [hl]                                       ; $6ea4: $be
    cp [hl]                                       ; $6ea5: $be
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    dec a                                         ; $6ea8: $3d
    dec a                                         ; $6ea9: $3d
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    cp h                                          ; $6ead: $bc
    cp h                                          ; $6eae: $bc
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $00                                       ; $6eb1: $c7
    rst $00                                       ; $6eb2: $c7
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff

jr_00f_6eb5:
    db $fd                                        ; $6eb5: $fd
    ld d, e                                       ; $6eb6: $53
    ld d, h                                       ; $6eb7: $54
    ldh [rBGP], a                                 ; $6eb8: $e0 $47
    ld b, a                                       ; $6eba: $47
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    set 1, e                                      ; $6ebd: $cb $cb
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    db $db                                        ; $6ec2: $db
    db $db                                        ; $6ec3: $db
    ld l, l                                       ; $6ec4: $6d
    ld l, l                                       ; $6ec5: $6d
    ld bc, $ff01                                  ; $6ec6: $01 $01 $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    ld c, c                                       ; $6ecb: $49
    ld c, c                                       ; $6ecc: $49
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    dec h                                         ; $6ecf: $25
    dec h                                         ; $6ed0: $25
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    ldh a, [$60]                                  ; $6ed4: $f0 $60
    sbc c                                         ; $6ed6: $99
    ldh a, [rIF]                                  ; $6ed7: $f0 $0f
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    ld h, b                                       ; $6edb: $60
    rst $38                                       ; $6edc: $ff
    pop af                                        ; $6edd: $f1
    rst $38                                       ; $6ede: $ff
    cp a                                          ; $6edf: $bf
    rst $38                                       ; $6ee0: $ff
    and b                                         ; $6ee1: $a0
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    db $10                                        ; $6ee4: $10
    rst $38                                       ; $6ee5: $ff
    ld a, b                                       ; $6ee6: $78
    jr nc, jr_00f_6eb5                            ; $6ee7: $30 $cc

    ld hl, sp+$07                                 ; $6ee9: $f8 $07
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    ld [hl], b                                    ; $6eed: $70
    rst $38                                       ; $6eee: $ff
    ld hl, sp-$01                                 ; $6eef: $f8 $ff
    rst $28                                       ; $6ef1: $ef
    rst $38                                       ; $6ef2: $ff
    jr z, @+$01                                   ; $6ef3: $28 $ff

    rst $38                                       ; $6ef5: $ff
    ld b, h                                       ; $6ef6: $44
    rst $38                                       ; $6ef7: $ff
    inc a                                         ; $6ef8: $3c
    rra                                           ; $6ef9: $1f
    add sp, $7f                                   ; $6efa: $e8 $7f
    sub b                                         ; $6efc: $90
    rst $38                                       ; $6efd: $ff
    ld e, a                                       ; $6efe: $5f
    jr nz, @+$01                                  ; $6eff: $20 $ff

    call nz, $0aff                                ; $6f01: $c4 $ff $0a
    cp $e0                                        ; $6f04: $fe $e0
    ld de, $c432                                  ; $6f06: $11 $32 $c4
    rst $38                                       ; $6f09: $ff
    ld d, h                                       ; $6f0a: $54
    rst $38                                       ; $6f0b: $ff
    xor c                                         ; $6f0c: $a9
    cp $52                                        ; $6f0d: $fe $52
    db $fc                                        ; $6f0f: $fc
    ld [bc], a                                    ; $6f10: $02
    db $fc                                        ; $6f11: $fc
    ei                                            ; $6f12: $fb
    ld bc, $22fe                                  ; $6f13: $01 $fe $22
    jp $8162                                      ; $6f16: $c3 $62 $81


    dec b                                         ; $6f19: $05
    ld [bc], a                                    ; $6f1a: $02
    ld bc, $06ff                                  ; $6f1b: $01 $ff $06
    inc b                                         ; $6f1e: $04
    inc bc                                        ; $6f1f: $03
    inc bc                                        ; $6f20: $03
    nop                                           ; $6f21: $00
    rlca                                          ; $6f22: $07
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    inc b                                         ; $6f26: $04
    inc b                                         ; $6f27: $04
    rst $38                                       ; $6f28: $ff
    ld h, h                                       ; $6f29: $64
    add h                                         ; $6f2a: $84
    nop                                           ; $6f2b: $00
    inc b                                         ; $6f2c: $04
    nop                                           ; $6f2d: $00
    sbc a                                         ; $6f2e: $9f
    nop                                           ; $6f2f: $00
    ld h, b                                       ; $6f30: $60
    add b                                         ; $6f31: $80
    nop                                           ; $6f32: $00
    rst $38                                       ; $6f33: $ff
    ld d, l                                       ; $6f34: $55
    ldh [rSC], a                                  ; $6f35: $e0 $02
    ret nz                                        ; $6f37: $c0

    inc c                                         ; $6f38: $0c
    db $db                                        ; $6f39: $db
    inc bc                                        ; $6f3a: $03
    ld bc, $c0a0                                  ; $6f3b: $01 $a0 $c0
    inc c                                         ; $6f3e: $0c
    inc bc                                        ; $6f3f: $03
    ld a, [c]                                     ; $6f40: $f2
    and l                                         ; $6f41: $a5
    add [hl]                                      ; $6f42: $86
    ld bc, $41ff                                  ; $6f43: $01 $ff $41
    add b                                         ; $6f46: $80
    ld b, c                                       ; $6f47: $41
    add b                                         ; $6f48: $80
    add d                                         ; $6f49: $82
    ld bc, $0798                                  ; $6f4a: $01 $98 $07
    cp $e2                                        ; $6f4d: $fe $e2
    and e                                         ; $6f4f: $a3
    rra                                           ; $6f50: $1f
    ldh [rNR41], a                                ; $6f51: $e0 $20
    ret nz                                        ; $6f53: $c0

    nop                                           ; $6f54: $00
    ret nz                                        ; $6f55: $c0

    ld b, b                                       ; $6f56: $40
    ei                                            ; $6f57: $fb
    add b                                         ; $6f58: $80
    add b                                         ; $6f59: $80
    sub $a2                                       ; $6f5a: $d6 $a2
    nop                                           ; $6f5c: $00
    rst $38                                       ; $6f5d: $ff
    ldh [$1f], a                                  ; $6f5e: $e0 $1f
    ld b, $fd                                     ; $6f60: $06 $fd
    ld bc, $c35b                                  ; $6f62: $01 $5b $c3
    or a                                          ; $6f65: $b7

jr_00f_6f66:
    jr jr_00f_6f77                                ; $6f66: $18 $0f

    ld hl, sp+$18                                 ; $6f68: $f8 $18
    rrca                                          ; $6f6a: $0f
    rst $18                                       ; $6f6b: $df
    dec b                                         ; $6f6c: $05
    rst $38                                       ; $6f6d: $ff
    dec e                                         ; $6f6e: $1d
    rlca                                          ; $6f6f: $07
    ld hl, sp+$60                                 ; $6f70: $f8 $60
    ldh [rIE], a                                  ; $6f72: $e0 $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    ld l, l                                       ; $6f76: $6d

jr_00f_6f77:
    add $83                                       ; $6f77: $c6 $83
    cp $c6                                        ; $6f79: $fe $c6
    add e                                         ; $6f7b: $83
    ld bc, $f7ff                                  ; $6f7c: $01 $ff $f7
    rst $00                                       ; $6f7f: $c7
    ld bc, $60fe                                  ; $6f80: $01 $fe $60
    ldh [rIE], a                                  ; $6f83: $e0 $ff
    rst $38                                       ; $6f85: $ff
    sbc e                                         ; $6f86: $9b
    ld [hl], c                                    ; $6f87: $71
    rst $38                                       ; $6f88: $ff
    and b                                         ; $6f89: $a0
    ld a, a                                       ; $6f8a: $7f
    ld sp, $40e0                                  ; $6f8b: $31 $e0 $40
    rst $38                                       ; $6f8e: $ff
    ld [hl], c                                    ; $6f8f: $71
    ret nz                                        ; $6f90: $c0

    jp hl                                         ; $6f91: $e9


    ccf                                           ; $6f92: $3f
    ld e, [hl]                                    ; $6f93: $5e
    ldh [$99], a                                  ; $6f94: $e0 $99
    and c                                         ; $6f96: $a1
    add b                                         ; $6f97: $80
    adc h                                         ; $6f98: $8c
    ldh [rLCDC], a                                ; $6f99: $e0 $40
    rst $38                                       ; $6f9b: $ff
    ret nz                                        ; $6f9c: $c0

    ei                                            ; $6f9d: $fb
    ld a, a                                       ; $6f9e: $7f
    add b                                         ; $6f9f: $80
    adc l                                         ; $6fa0: $8d
    and d                                         ; $6fa1: $a2
    add b                                         ; $6fa2: $80
    nop                                           ; $6fa3: $00
    jr nz, jr_00f_6f66                            ; $6fa4: $20 $c0

    ld b, $9d                                     ; $6fa6: $06 $9d
    ld hl, sp+$7a                                 ; $6fa8: $f8 $7a
    and c                                         ; $6faa: $a1
    ld bc, $02ff                                  ; $6fab: $01 $ff $02
    db $fc                                        ; $6fae: $fc
    ldh [rBCPD], a                                ; $6faf: $e0 $69
    rst $00                                       ; $6fb1: $c7
    ld d, l                                       ; $6fb2: $55
    cp $a4                                        ; $6fb3: $fe $a4
    pop bc                                        ; $6fb5: $c1
    rst $38                                       ; $6fb6: $ff
    jr nc, @+$11                                  ; $6fb7: $30 $0f

    ld [$3007], sp                                ; $6fb9: $08 $07 $30
    rrca                                          ; $6fbc: $0f
    db $fc                                        ; $6fbd: $fc
    ld d, e                                       ; $6fbe: $53
    and e                                         ; $6fbf: $a3
    adc $e1                                       ; $6fc0: $ce $e1
    ld [bc], a                                    ; $6fc2: $02
    db $fc                                        ; $6fc3: $fc
    ld [$08f0], sp                                ; $6fc4: $08 $f0 $08
    ldh a, [$e3]                                  ; $6fc7: $f0 $e3
    inc bc                                        ; $6fc9: $03
    db $fc                                        ; $6fca: $fc
    xor l                                         ; $6fcb: $ad
    and [hl]                                      ; $6fcc: $a6
    call nc, $60a4                                ; $6fcd: $d4 $a4 $60
    ldh [$f0], a                                  ; $6fd0: $e0 $f0
    ld [$dbf1], sp                                ; $6fd2: $08 $f1 $db
    inc bc                                        ; $6fd5: $03
    ld sp, hl                                     ; $6fd6: $f9
    push bc                                       ; $6fd7: $c5
    and d                                         ; $6fd8: $a2
    ld bc, $4c03                                  ; $6fd9: $01 $03 $4c
    ret nz                                        ; $6fdc: $c0

    rlca                                          ; $6fdd: $07
    inc bc                                        ; $6fde: $03
    rst $38                                       ; $6fdf: $ff
    add d                                         ; $6fe0: $82
    rst $00                                       ; $6fe1: $c7
    rst $28                                       ; $6fe2: $ef
    add $00                                       ; $6fe3: $c6 $00
    rst $38                                       ; $6fe5: $ff
    rrca                                          ; $6fe6: $0f
    ldh a, [rIE]                                  ; $6fe7: $f0 $ff
    rrca                                          ; $6fe9: $0f
    ldh a, [$1f]                                  ; $6fea: $f0 $1f
    ldh [$1f], a                                  ; $6fec: $e0 $1f
    ldh [$bf], a                                  ; $6fee: $e0 $bf
    ld b, b                                       ; $6ff0: $40
    ei                                            ; $6ff1: $fb
    cp a                                          ; $6ff2: $bf
    ld b, b                                       ; $6ff3: $40
    ld d, $a1                                     ; $6ff4: $16 $a1
    add e                                         ; $6ff6: $83
    ld a, h                                       ; $6ff7: $7c
    add e                                         ; $6ff8: $83
    ld a, h                                       ; $6ff9: $7c
    rst $00                                       ; $6ffa: $c7
    ld a, a                                       ; $6ffb: $7f
    jr c, @-$37                                   ; $6ffc: $38 $c7

    jr c, @-$0f                                   ; $6ffe: $38 $ef

    db $10                                        ; $7000: $10
    rst $28                                       ; $7001: $ef
    db $10                                        ; $7002: $10
    inc [hl]                                      ; $7003: $34
    db $e3                                        ; $7004: $e3
    rst $38                                       ; $7005: $ff
    ldh [$1f], a                                  ; $7006: $e0 $1f
    pop af                                        ; $7008: $f1
    ld c, $f1                                     ; $7009: $0e $f1
    ld c, $fb                                     ; $700b: $0e $fb
    inc b                                         ; $700d: $04
    rst $18                                       ; $700e: $df
    ei                                            ; $700f: $fb
    inc b                                         ; $7010: $04
    rst $38                                       ; $7011: $ff
    nop                                           ; $7012: $00
    add b                                         ; $7013: $80
    and h                                         ; $7014: $a4
    ret nz                                        ; $7015: $c0

    rst $08                                       ; $7016: $cf
    ccf                                           ; $7017: $3f
    ldh [$50], a                                  ; $7018: $e0 $50
    and a                                         ; $701a: $a7
    ldh [$82], a                                  ; $701b: $e0 $82
    ld [hl-], a                                   ; $701d: $32
    xor b                                         ; $701e: $a8
    ldh a, [rIE]                                  ; $701f: $f0 $ff
    ld [c], a                                     ; $7021: $e2
    ret nz                                        ; $7022: $c0

    rst $38                                       ; $7023: $ff
    ret c                                         ; $7024: $d8

    ccf                                           ; $7025: $3f
    rst $38                                       ; $7026: $ff
    db $f4                                        ; $7027: $f4
    rrca                                          ; $7028: $0f
    ld a, [$fa07]                                 ; $7029: $fa $07 $fa
    rlca                                          ; $702c: $07
    db $fc                                        ; $702d: $fc
    rlca                                          ; $702e: $07
    rst $38                                       ; $702f: $ff
    ld bc, $07fb                                  ; $7030: $01 $fb $07
    ei                                            ; $7033: $fb
    ld a, [bc]                                    ; $7034: $0a
    rst $30                                       ; $7035: $f7
    ld c, $f6                                     ; $7036: $0e $f6
    rst $38                                       ; $7038: $ff
    inc b                                         ; $7039: $04
    rst $38                                       ; $703a: $ff
    inc c                                         ; $703b: $0c
    rst $38                                       ; $703c: $ff
    ld [$18fc], sp                                ; $703d: $08 $fc $18
    ld hl, sp-$01                                 ; $7040: $f8 $ff
    call nz, Call_00f_7c6f                        ; $7042: $c4 $6f $7c
    ld l, a                                       ; $7045: $6f
    dec hl                                        ; $7046: $2b
    ld a, h                                       ; $7047: $7c
    ccf                                           ; $7048: $3f
    jr c, @+$01                                   ; $7049: $38 $ff

    db $10                                        ; $704b: $10
    rst $38                                       ; $704c: $ff
    jr @+$01                                      ; $704d: $18 $ff

    dec bc                                        ; $704f: $0b
    inc e                                         ; $7050: $1c
    rrca                                          ; $7051: $0f
    inc c                                         ; $7052: $0c
    sbc $fe                                       ; $7053: $de $fe
    adc b                                         ; $7055: $88
    ld bc, $9f6f                                  ; $7056: $01 $6f $9f
    cp a                                          ; $7059: $bf
    ret z                                         ; $705a: $c8

    adc b                                         ; $705b: $88
    push af                                       ; $705c: $f5
    ei                                            ; $705d: $fb
    ld h, a                                       ; $705e: $67
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    sbc a                                         ; $7061: $9f
    ld l, b                                       ; $7062: $68
    add [hl]                                      ; $7063: $86
    ld b, c                                       ; $7064: $41
    and b                                         ; $7065: $a0
    rst $38                                       ; $7066: $ff
    ret nz                                        ; $7067: $c0

    ld d, h                                       ; $7068: $54
    add d                                         ; $7069: $82
    ld a, b                                       ; $706a: $78
    ld d, [hl]                                    ; $706b: $56
    add h                                         ; $706c: $84
    ld l, e                                       ; $706d: $6b
    db $e4                                        ; $706e: $e4
    ldh a, [$e9]                                  ; $706f: $f0 $e9
    ld a, [hl]                                    ; $7071: $7e
    rst $38                                       ; $7072: $ff
    jp $e0e7                                      ; $7073: $c3 $e7 $e0


    ld sp, hl                                     ; $7076: $f9
    cp $14                                        ; $7077: $fe $14
    add c                                         ; $7079: $81
    db $f4                                        ; $707a: $f4

jr_00f_707b:
    rrca                                          ; $707b: $0f
    ld hl, sp+$0f                                 ; $707c: $f8 $0f
    add sp, $1f                                   ; $707e: $e8 $1f
    ldh a, [$fd]                                  ; $7080: $f0 $fd
    rra                                           ; $7082: $1f
    dec hl                                        ; $7083: $2b
    push hl                                       ; $7084: $e5
    db $10                                        ; $7085: $10
    rst $38                                       ; $7086: $ff
    jr nc, @+$01                                  ; $7087: $30 $ff

    jr nz, jr_00f_707b                            ; $7089: $20 $f0

    ei                                            ; $708b: $fb
    ld [hl], b                                    ; $708c: $70
    ldh [rNR31], a                                ; $708d: $e0 $1b
    push hl                                       ; $708f: $e5
    inc b                                         ; $7090: $04
    rst $38                                       ; $7091: $ff
    ld b, $ff                                     ; $7092: $06 $ff
    inc bc                                        ; $7094: $03
    rst $30                                       ; $7095: $f7
    ld b, $07                                     ; $7096: $06 $07
    inc bc                                        ; $7098: $03
    dec bc                                        ; $7099: $0b
    push hl                                       ; $709a: $e5
    push af                                       ; $709b: $f5
    ei                                            ; $709c: $fb
    ld l, a                                       ; $709d: $6f
    ldh a, [$cf]                                  ; $709e: $f0 $cf
    rst $38                                       ; $70a0: $ff
    nop                                           ; $70a1: $00
    ld l, [hl]                                    ; $70a2: $6e
    sbc a                                         ; $70a3: $9f
    halt                                          ; $70a4: $76
    ldh [$fe], a                                  ; $70a5: $e0 $fe
    ld [c], a                                     ; $70a7: $e2
    xor [hl]                                      ; $70a8: $ae
    rst $18                                       ; $70a9: $df
    ld e, a                                       ; $70aa: $5f
    call c, $b83f                                 ; $70ab: $dc $3f $b8
    ld a, a                                       ; $70ae: $7f
    ld [hl], b                                    ; $70af: $70
    inc e                                         ; $70b0: $1c
    ldh [$c0], a                                  ; $70b1: $e0 $c0
    call nz, $ffa0                                ; $70b3: $c4 $a0 $ff
    ld bc, $03fe                                  ; $70b6: $01 $fe $03
    db $fc                                        ; $70b9: $fc
    inc b                                         ; $70ba: $04
    ld hl, sp+$08                                 ; $70bb: $f8 $08
    ldh a, [$c1]                                  ; $70bd: $f0 $c1
    db $10                                        ; $70bf: $10
    ldh [$a0], a                                  ; $70c0: $e0 $a0
    ld [c], a                                     ; $70c2: $e2
    and d                                         ; $70c3: $a2
    add hl, sp                                    ; $70c4: $39
    ret nz                                        ; $70c5: $c0

    rst $38                                       ; $70c6: $ff
    db $e4                                        ; $70c7: $e4
    inc a                                         ; $70c8: $3c
    add h                                         ; $70c9: $84
    add c                                         ; $70ca: $81
    jp $81ed                                      ; $70cb: $c3 $ed $81


    rst $38                                       ; $70ce: $ff
    pop hl                                        ; $70cf: $e1
    jp $62c3                                      ; $70d0: $c3 $c3 $62


    ldh [$7e], a                                  ; $70d3: $e0 $7e
    rst $38                                       ; $70d5: $ff
    ld h, a                                       ; $70d6: $67
    rlca                                          ; $70d7: $07
    rst $28                                       ; $70d8: $ef
    rst $38                                       ; $70d9: $ff
    add b                                         ; $70da: $80
    rst $38                                       ; $70db: $ff
    db $e4                                        ; $70dc: $e4
    inc e                                         ; $70dd: $1c
    add b                                         ; $70de: $80
    or d                                          ; $70df: $b2
    and b                                         ; $70e0: $a0
    ei                                            ; $70e1: $fb
    and b                                         ; $70e2: $a0
    rst $38                                       ; $70e3: $ff
    db $eb                                        ; $70e4: $eb
    nop                                           ; $70e5: $00
    ldh a, [rIE]                                  ; $70e6: $f0 $ff
    rst $38                                       ; $70e8: $ff
    db $eb                                        ; $70e9: $eb
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    dec c                                         ; $70ed: $0d
    dec c                                         ; $70ee: $0d
    dec c                                         ; $70ef: $0d
    dec c                                         ; $70f0: $0d
    ld c, $0d                                     ; $70f1: $0e $0d
    dec c                                         ; $70f3: $0d
    dec c                                         ; $70f4: $0d
    dec c                                         ; $70f5: $0d
    inc c                                         ; $70f6: $0c
    inc c                                         ; $70f7: $0c
    inc c                                         ; $70f8: $0c
    inc c                                         ; $70f9: $0c
    inc c                                         ; $70fa: $0c
    inc c                                         ; $70fb: $0c
    inc c                                         ; $70fc: $0c
    inc c                                         ; $70fd: $0c
    inc c                                         ; $70fe: $0c
    inc c                                         ; $70ff: $0c
    dec c                                         ; $7100: $0d
    dec c                                         ; $7101: $0d
    dec c                                         ; $7102: $0d
    dec c                                         ; $7103: $0d
    dec c                                         ; $7104: $0d
    dec c                                         ; $7105: $0d
    inc c                                         ; $7106: $0c
    inc c                                         ; $7107: $0c
    inc c                                         ; $7108: $0c
    dec c                                         ; $7109: $0d
    dec c                                         ; $710a: $0d
    dec c                                         ; $710b: $0d
    dec c                                         ; $710c: $0d
    ld c, $0e                                     ; $710d: $0e $0e
    inc c                                         ; $710f: $0c
    inc c                                         ; $7110: $0c
    inc c                                         ; $7111: $0c
    inc c                                         ; $7112: $0c
    inc c                                         ; $7113: $0c
    dec c                                         ; $7114: $0d
    dec c                                         ; $7115: $0d
    dec c                                         ; $7116: $0d
    rrca                                          ; $7117: $0f
    rrca                                          ; $7118: $0f
    ld c, $0e                                     ; $7119: $0e $0e
    rrca                                          ; $711b: $0f
    ld c, $0e                                     ; $711c: $0e $0e
    ld c, $0e                                     ; $711e: $0e $0e
    ld c, $0e                                     ; $7120: $0e $0e
    rrca                                          ; $7122: $0f
    rrca                                          ; $7123: $0f
    rrca                                          ; $7124: $0f
    ld c, $0e                                     ; $7125: $0e $0e
    ld c, $0c                                     ; $7127: $0e $0c
    inc c                                         ; $7129: $0c
    inc c                                         ; $712a: $0c
    dec c                                         ; $712b: $0d
    dec c                                         ; $712c: $0d
    dec c                                         ; $712d: $0d
    dec c                                         ; $712e: $0d
    dec c                                         ; $712f: $0d
    ld c, $0e                                     ; $7130: $0e $0e
    dec c                                         ; $7132: $0d
    dec c                                         ; $7133: $0d
    dec c                                         ; $7134: $0d
    dec c                                         ; $7135: $0d
    dec c                                         ; $7136: $0d
    dec c                                         ; $7137: $0d
    dec c                                         ; $7138: $0d
    dec c                                         ; $7139: $0d
    ld c, $0e                                     ; $713a: $0e $0e
    ld c, $0e                                     ; $713c: $0e $0e
    ld c, $0e                                     ; $713e: $0e $0e
    dec c                                         ; $7140: $0d
    ld c, $0e                                     ; $7141: $0e $0e
    ld c, $0e                                     ; $7143: $0e $0e
    ld c, $16                                     ; $7145: $0e $16
    ld b, d                                       ; $7147: $42
    rst $18                                       ; $7148: $df
    ld c, l                                       ; $7149: $4d
    rst $18                                       ; $714a: $df
    jr c, @+$28                                   ; $714b: $38 $26

    db $10                                        ; $714d: $10
    rst $38                                       ; $714e: $ff
    ld c, e                                       ; $714f: $4b
    rst $18                                       ; $7150: $df
    ld d, c                                       ; $7151: $51
    nop                                           ; $7152: $00
    ld [bc], a                                    ; $7153: $02
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    adc [hl]                                      ; $7156: $8e
    inc bc                                        ; $7157: $03

jr_00f_7158:
    and $02                                       ; $7158: $e6 $02
    nop                                           ; $715a: $00
    ld [bc], a                                    ; $715b: $02
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    sbc b                                         ; $715e: $98
    ld b, e                                       ; $715f: $43
    ld b, $03                                     ; $7160: $06 $03
    nop                                           ; $7162: $00
    ld [bc], a                                    ; $7163: $02
    sbc a                                         ; $7164: $9f
    ld h, c                                       ; $7165: $61
    ei                                            ; $7166: $fb
    nop                                           ; $7167: $00
    rst $38                                       ; $7168: $ff
    cp $e3                                        ; $7169: $fe $e3
    ld bc, $03ff                                  ; $716b: $01 $ff $03
    rst $38                                       ; $716e: $ff
    nop                                           ; $716f: $00
    db $dd                                        ; $7170: $dd
    ld bc, $e5f2                                  ; $7171: $01 $f2 $e5
    ret nz                                        ; $7174: $c0

    rst $38                                       ; $7175: $ff
    ldh [$fe], a                                  ; $7176: $e0 $fe
    pop hl                                        ; $7178: $e1
    ldh a, [$f0]                                  ; $7179: $f0 $f0
    add h                                         ; $717b: $84
    ld [c], a                                     ; $717c: $e2
    db $e4                                        ; $717d: $e4
    jp c, Jump_000_00e4                           ; $717e: $da $e4 $00

    ret c                                         ; $7181: $d8

    ldh [rIE], a                                  ; $7182: $e0 $ff
    ld [c], a                                     ; $7184: $e2
    sub $e0                                       ; $7185: $d6 $e0
    rst $38                                       ; $7187: $ff
    db $e4                                        ; $7188: $e4
    ldh a, [$fd]                                  ; $7189: $f0 $fd
    ld hl, sp-$01                                 ; $718b: $f8 $ff
    ldh [$fc], a                                  ; $718d: $e0 $fc
    db $fc                                        ; $718f: $fc
    db $fc                                        ; $7190: $fc
    ld a, h                                       ; $7191: $7c
    cp $3e                                        ; $7192: $fe $3e
    rra                                           ; $7194: $1f
    ld a, [hl]                                    ; $7195: $7e
    ld a, $3f                                     ; $7196: $3e $3f
    rra                                           ; $7198: $1f
    ccf                                           ; $7199: $3f
    add sp, -$1b                                  ; $719a: $e8 $e5
    ld hl, sp-$1a                                 ; $719c: $f8 $e6
    jp z, $fee2                                   ; $719e: $ca $e2 $fe

    cp d                                          ; $71a1: $ba
    rst $20                                       ; $71a2: $e7
    rra                                           ; $71a3: $1f
    rst $38                                       ; $71a4: $ff
    jr c, jr_00f_7224                             ; $71a5: $38 $7d

    ld b, h                                       ; $71a7: $44
    rst $28                                       ; $71a8: $ef
    nop                                           ; $71a9: $00
    rst $30                                       ; $71aa: $f7
    rst $00                                       ; $71ab: $c7
    nop                                           ; $71ac: $00
    add e                                         ; $71ad: $83
    db $fc                                        ; $71ae: $fc
    ldh [$ef], a                                  ; $71af: $e0 $ef
    nop                                           ; $71b1: $00
    rst $38                                       ; $71b2: $ff
    add b                                         ; $71b3: $80
    ccf                                           ; $71b4: $3f
    rst $38                                       ; $71b5: $ff
    ret nz                                        ; $71b6: $c0

    ldh [$60], a                                  ; $71b7: $e0 $60
    rst $38                                       ; $71b9: $ff
    jr nz, jr_00f_7158                            ; $71ba: $20 $9c

    and $00                                       ; $71bc: $e6 $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    push af                                       ; $71c0: $f5
    nop                                           ; $71c1: $00
    rst $38                                       ; $71c2: $ff
    db $e4                                        ; $71c3: $e4
    rst $38                                       ; $71c4: $ff
    cp $f8                                        ; $71c5: $fe $f8
    ccf                                           ; $71c7: $3f
    nop                                           ; $71c8: $00
    rrca                                          ; $71c9: $0f
    nop                                           ; $71ca: $00
    rst $10                                       ; $71cb: $d7
    ld b, b                                       ; $71cc: $40
    nop                                           ; $71cd: $00
    ld b, e                                       ; $71ce: $43
    ld a, [$3fe0]                                 ; $71cf: $fa $e0 $3f
    ret c                                         ; $71d2: $d8

    ldh [$db], a                                  ; $71d3: $e0 $db
    inc a                                         ; $71d5: $3c
    rst $38                                       ; $71d6: $ff
    and h                                         ; $71d7: $a4
    ld a, a                                       ; $71d8: $7f
    db $db                                        ; $71d9: $db
    rst $20                                       ; $71da: $e7
    rst $20                                       ; $71db: $e7
    jr jr_00f_721a                                ; $71dc: $18 $3c

    rst $38                                       ; $71de: $ff
    ld d, c                                       ; $71df: $51
    rst $38                                       ; $71e0: $ff
    set 4, b                                      ; $71e1: $cb $e0
    ret z                                         ; $71e3: $c8

    push hl                                       ; $71e4: $e5
    rst $38                                       ; $71e5: $ff
    rst $20                                       ; $71e6: $e7
    rrca                                          ; $71e7: $0f
    or h                                          ; $71e8: $b4
    db $eb                                        ; $71e9: $eb
    ld bc, $e1fe                                  ; $71ea: $01 $fe $e1
    rst $38                                       ; $71ed: $ff
    rst $18                                       ; $71ee: $df
    pop hl                                        ; $71ef: $e1
    rst $28                                       ; $71f0: $ef
    pop af                                        ; $71f1: $f1
    ld a, a                                       ; $71f2: $7f
    pop af                                        ; $71f3: $f1
    ccf                                           ; $71f4: $3f
    pop af                                        ; $71f5: $f1
    rst $38                                       ; $71f6: $ff
    scf                                           ; $71f7: $37
    ld sp, hl                                     ; $71f8: $f9
    dec sp                                        ; $71f9: $3b
    db $fd                                        ; $71fa: $fd
    rra                                           ; $71fb: $1f
    db $fd                                        ; $71fc: $fd
    rrca                                          ; $71fd: $0f
    db $fd                                        ; $71fe: $fd
    sbc a                                         ; $71ff: $9f
    dec c                                         ; $7200: $0d
    rst $38                                       ; $7201: $ff
    rrca                                          ; $7202: $0f
    rst $38                                       ; $7203: $ff
    rlca                                          ; $7204: $07
    cp $e2                                        ; $7205: $fe $e2
    add b                                         ; $7207: $80
    db $e3                                        ; $7208: $e3
    ld bc, $80fe                                  ; $7209: $01 $fe $80
    or $fc                                        ; $720c: $f6 $fc
    nop                                           ; $720e: $00
    di                                            ; $720f: $f3
    nop                                           ; $7210: $00
    rst $08                                       ; $7211: $cf
    nop                                           ; $7212: $00
    dec sp                                        ; $7213: $3b
    cp e                                          ; $7214: $bb
    nop                                           ; $7215: $00
    ei                                            ; $7216: $fb
    ld e, [hl]                                    ; $7217: $5e
    ldh [$bf], a                                  ; $7218: $e0 $bf

jr_00f_721a:
    nop                                           ; $721a: $00
    cp l                                          ; $721b: $bd
    add d                                         ; $721c: $82
    ldh [$a5], a                                  ; $721d: $e0 $a5
    rst $38                                       ; $721f: $ff
    ld a, [hl]                                    ; $7220: $7e
    jp c, $65e7                                   ; $7221: $da $e7 $65

jr_00f_7224:
    sbc e                                         ; $7224: $9b
    cp e                                          ; $7225: $bb
    ld a, h                                       ; $7226: $7c
    cp $fa                                        ; $7227: $fe $fa
    add b                                         ; $7229: $80
    and $f0                                       ; $722a: $e6 $f0
    add b                                         ; $722c: $80
    and $01                                       ; $722d: $e6 $01
    nop                                           ; $722f: $00
    or a                                          ; $7230: $b7
    ld a, b                                       ; $7231: $78
    ld e, l                                       ; $7232: $5d
    rst $38                                       ; $7233: $ff
    xor $bf                                       ; $7234: $ee $bf
    jp z, $9ee3                                   ; $7236: $ca $e3 $9e

    call $70be                                    ; $7239: $cd $be $70
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    add e                                         ; $723e: $83
    ld a, h                                       ; $723f: $7c
    rst $38                                       ; $7240: $ff
    nop                                           ; $7241: $00
    ld a, a                                       ; $7242: $7f
    add b                                         ; $7243: $80
    cp a                                          ; $7244: $bf
    rst $38                                       ; $7245: $ff
    ret nz                                        ; $7246: $c0

    rst $38                                       ; $7247: $ff
    ld [hl], b                                    ; $7248: $70
    ccf                                           ; $7249: $3f
    db $10                                        ; $724a: $10
    rra                                           ; $724b: $1f
    db $10                                        ; $724c: $10
    sbc a                                         ; $724d: $9f
    rst $10                                       ; $724e: $d7
    sub b                                         ; $724f: $90
    ld a, a                                       ; $7250: $7f
    ldh a, [rHDMA4]                               ; $7251: $f0 $54
    db $ed                                        ; $7253: $ed
    nop                                           ; $7254: $00
    inc h                                         ; $7255: $24
    ldh [$3f], a                                  ; $7256: $e0 $3f
    nop                                           ; $7258: $00
    db $dd                                        ; $7259: $dd
    ld a, a                                       ; $725a: $7f
    ld [bc], a                                    ; $725b: $02
    ld a, [c]                                     ; $725c: $f2
    di                                            ; $725d: $f3
    nop                                           ; $725e: $00
    call z, $e006                                 ; $725f: $cc $06 $e0
    ei                                            ; $7262: $fb
    nop                                           ; $7263: $00
    sub l                                         ; $7264: $95
    ld a, e                                       ; $7265: $7b
    ldh [$e2], a                                  ; $7266: $e0 $e2
    rst $28                                       ; $7268: $ef
    cp $e0                                        ; $7269: $fe $e0
    cp $fe                                        ; $726b: $fe $fe
    ldh [rP1], a                                  ; $726d: $e0 $00
    pop af                                        ; $726f: $f1
    inc bc                                        ; $7270: $03
    call nc, $e05a                                ; $7271: $d4 $5a $e0
    or h                                          ; $7274: $b4
    db $e3                                        ; $7275: $e3
    ret nz                                        ; $7276: $c0

    inc [hl]                                      ; $7277: $34
    and $fc                                       ; $7278: $e6 $fc
    ld l, d                                       ; $727a: $6a
    ldh [$c0], a                                  ; $727b: $e0 $c0
    nop                                           ; $727d: $00
    dec d                                         ; $727e: $15
    add b                                         ; $727f: $80
    add sp, -$3a                                  ; $7280: $e8 $c6
    add b                                         ; $7282: $80
    db $e4                                        ; $7283: $e4
    ldh [$f8], a                                  ; $7284: $e0 $f8
    call nc, $88ce                                ; $7286: $d4 $ce $88
    db $db                                        ; $7289: $db
    add [hl]                                      ; $728a: $86
    pop bc                                        ; $728b: $c1
    ld [hl], l                                    ; $728c: $75
    rst $08                                       ; $728d: $cf
    nop                                           ; $728e: $00
    ldh [$fc], a                                  ; $728f: $e0 $fc
    ld b, $e0                                     ; $7291: $06 $e0
    cp a                                          ; $7293: $bf
    nop                                           ; $7294: $00
    db $fd                                        ; $7295: $fd
    cp $e0                                        ; $7296: $fe $e0
    ld d, b                                       ; $7298: $50
    add d                                         ; $7299: $82
    pop bc                                        ; $729a: $c1
    nop                                           ; $729b: $00
    db $ed                                        ; $729c: $ed
    adc h                                         ; $729d: $8c
    pop hl                                        ; $729e: $e1
    or d                                          ; $729f: $b2
    pop hl                                        ; $72a0: $e1
    inc bc                                        ; $72a1: $03
    inc a                                         ; $72a2: $3c
    ret nz                                        ; $72a3: $c0

    rrca                                          ; $72a4: $0f
    inc [hl]                                      ; $72a5: $34
    ld [c], a                                     ; $72a6: $e2
    sub c                                         ; $72a7: $91
    db $fc                                        ; $72a8: $fc
    db $ec                                        ; $72a9: $ec
    and $f9                                       ; $72aa: $e6 $f9
    db $ed                                        ; $72ac: $ed
    ld a, [de]                                    ; $72ad: $1a
    jp $801f                                      ; $72ae: $c3 $1f $80


    db $ec                                        ; $72b1: $ec
    ld e, d                                       ; $72b2: $5a
    pop hl                                        ; $72b3: $e1
    add b                                         ; $72b4: $80
    ld a, $fe                                     ; $72b5: $3e $fe
    cp d                                          ; $72b7: $ba
    inc a                                         ; $72b8: $3c
    nop                                           ; $72b9: $00
    pop bc                                        ; $72ba: $c1
    nop                                           ; $72bb: $00
    pop af                                        ; $72bc: $f1
    ld [hl], h                                    ; $72bd: $74
    ret nz                                        ; $72be: $c0

    jp c, $fea1                                   ; $72bf: $da $a1 $fe

    nop                                           ; $72c2: $00
    pop bc                                        ; $72c3: $c1
    ei                                            ; $72c4: $fb
    rst $20                                       ; $72c5: $e7
    push de                                       ; $72c6: $d5
    cp $7a                                        ; $72c7: $fe $7a
    rst $18                                       ; $72c9: $df
    rst $20                                       ; $72ca: $e7
    rst $38                                       ; $72cb: $ff
    db $db                                        ; $72cc: $db
    halt                                          ; $72cd: $76
    res 7, d                                      ; $72ce: $cb $ba
    rst $00                                       ; $72d0: $c7
    jp hl                                         ; $72d1: $e9


    sub a                                         ; $72d2: $97
    pop hl                                        ; $72d3: $e1
    rst $38                                       ; $72d4: $ff
    sbc a                                         ; $72d5: $9f
    xor c                                         ; $72d6: $a9
    rst $18                                       ; $72d7: $df
    ld c, [hl]                                    ; $72d8: $4e
    rst $38                                       ; $72d9: $ff
    ld [hl], c                                    ; $72da: $71
    cp $80                                        ; $72db: $fe $80
    xor a                                         ; $72dd: $af
    ld a, a                                       ; $72de: $7f
    pop bc                                        ; $72df: $c1
    ld a, $f8                                     ; $72e0: $3e $f8

jr_00f_72e2:
    inc c                                         ; $72e2: $0c
    db $e4                                        ; $72e3: $e4
    ld bc, $c0ea                                  ; $72e4: $01 $ea $c0
    ld [bc], a                                    ; $72e7: $02
    ld e, h                                       ; $72e8: $5c
    jr z, @-$3e                                   ; $72e9: $28 $c0

    rst $20                                       ; $72eb: $e7
    and a                                         ; $72ec: $a7
    ld bc, $0700                                  ; $72ed: $01 $00 $07
    xor [hl]                                      ; $72f0: $ae
    xor b                                         ; $72f1: $a8
    inc bc                                        ; $72f2: $03
    nop                                           ; $72f3: $00
    add sp, -$1f                                  ; $72f4: $e8 $e1
    rrca                                          ; $72f6: $0f
    and $e0                                       ; $72f7: $e6 $e0
    jp z, $7aac                                   ; $72f9: $ca $ac $7a

    ret z                                         ; $72fc: $c8

    xor h                                         ; $72fd: $ac
    pop bc                                        ; $72fe: $c1
    stop                                          ; $72ff: $10 $00
    ld [de], a                                    ; $7301: $12
    cp b                                          ; $7302: $b8
    sbc d                                         ; $7303: $9a
    ret nz                                        ; $7304: $c0

    add b                                         ; $7305: $80
    and c                                         ; $7306: $a1
    nop                                           ; $7307: $00
    call Call_000_00f8                            ; $7308: $cd $f8 $00
    ld a, [$a244]                                 ; $730b: $fa $44 $a2
    ld hl, sp-$2c                                 ; $730e: $f8 $d4
    ld h, d                                       ; $7310: $62
    ret nz                                        ; $7311: $c0

    add h                                         ; $7312: $84
    db $e3                                        ; $7313: $e3
    rlca                                          ; $7314: $07
    ld a, b                                       ; $7315: $78
    jp nz, $8401                                  ; $7316: $c2 $01 $84

    db $e4                                        ; $7319: $e4
    rst $28                                       ; $731a: $ef
    rra                                           ; $731b: $1f
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rra                                           ; $731e: $1f
    jp c, $f73d                                   ; $731f: $da $3d $f7

    jr c, jr_00f_72e2                             ; $7322: $38 $be

    ld [hl], c                                    ; $7324: $71
    rst $38                                       ; $7325: $ff
    ld l, h                                       ; $7326: $6c
    di                                            ; $7327: $f3
    db $fc                                        ; $7328: $fc
    db $e3                                        ; $7329: $e3
    ret c                                         ; $732a: $d8

    rst $20                                       ; $732b: $e7
    ld hl, sp-$19                                 ; $732c: $f8 $e7
    rst $38                                       ; $732e: $ff
    ld l, h                                       ; $732f: $6c
    di                                            ; $7330: $f3
    cp h                                          ; $7331: $bc
    ld [hl], e                                    ; $7332: $73
    ld a, h                                       ; $7333: $7c
    di                                            ; $7334: $f3
    db $ec                                        ; $7335: $ec
    di                                            ; $7336: $f3
    ccf                                           ; $7337: $3f
    ret c                                         ; $7338: $d8

    rst $20                                       ; $7339: $e7
    ldh a, [$cf]                                  ; $733a: $f0 $cf
    ldh a, [$cf]                                  ; $733c: $f0 $cf
    add b                                         ; $733e: $80
    db $db                                        ; $733f: $db
    add b                                         ; $7340: $80
    and e                                         ; $7341: $a3
    rla                                           ; $7342: $17
    rrca                                          ; $7343: $0f
    nop                                           ; $7344: $00
    dec a                                         ; $7345: $3d
    add d                                         ; $7346: $82
    ret nz                                        ; $7347: $c0

    rst $18                                       ; $7348: $df
    cp $e0                                        ; $7349: $fe $e0
    nop                                           ; $734b: $00
    push hl                                       ; $734c: $e5
    nop                                           ; $734d: $00
    and a                                         ; $734e: $a7
    ld d, a                                       ; $734f: $57
    ld bc, $0900                                  ; $7350: $01 $00 $09
    call nz, $0382                                ; $7353: $c4 $82 $03
    adc [hl]                                      ; $7356: $8e
    ld [c], a                                     ; $7357: $e2
    rlca                                          ; $7358: $07
    ld [c], a                                     ; $7359: $e2
    add b                                         ; $735a: $80
    db $fd                                        ; $735b: $fd
    rst $38                                       ; $735c: $ff
    ld e, [hl]                                    ; $735d: $5e
    and b                                         ; $735e: $a0
    rst $38                                       ; $735f: $ff
    ld h, [hl]                                    ; $7360: $66
    db $db                                        ; $7361: $db
    ld h, [hl]                                    ; $7362: $66
    ld [hl], d                                    ; $7363: $72
    rst $08                                       ; $7364: $cf
    rst $38                                       ; $7365: $ff
    ld h, e                                       ; $7366: $63
    rst $18                                       ; $7367: $df
    pop hl                                        ; $7368: $e1
    rst $18                                       ; $7369: $df
    ldh [$df], a                                  ; $736a: $e0 $df
    and b                                         ; $736c: $a0
    rst $18                                       ; $736d: $df
    rst $30                                       ; $736e: $f7
    ret nz                                        ; $736f: $c0

    rst $38                                       ; $7370: $ff
    ld h, b                                       ; $7371: $60

jr_00f_7372:
    cp $e4                                        ; $7372: $fe $e4
    jr nc, @+$01                                  ; $7374: $30 $ff

    jr c, @+$01                                   ; $7376: $38 $ff

    push bc                                       ; $7378: $c5

jr_00f_7379:
    jr jr_00f_7379                                ; $7379: $18 $fe

    ld [c], a                                     ; $737b: $e2
    jr nc, jr_00f_7372                            ; $737c: $30 $f4

    ldh [$f6], a                                  ; $737e: $e0 $f6
    pop hl                                        ; $7380: $e1
    nop                                           ; $7381: $00
    rst $18                                       ; $7382: $df
    di                                            ; $7383: $f3
    nop                                           ; $7384: $00
    ret                                           ; $7385: $c9


    call c, $e286                                 ; $7386: $dc $86 $e2
    ld [bc], a                                    ; $7389: $02
    and c                                         ; $738a: $a1
    db $fd                                        ; $738b: $fd
    nop                                           ; $738c: $00
    or b                                          ; $738d: $b0
    xor $81                                       ; $738e: $ee $81
    jp $cf7e                                      ; $7390: $c3 $7e $cf


    or e                                          ; $7393: $b3
    ld a, [hl]                                    ; $7394: $7e
    db $ed                                        ; $7395: $ed
    ld e, $3c                                     ; $7396: $1e $3c
    adc l                                         ; $7398: $8d
    inc b                                         ; $7399: $04
    and d                                         ; $739a: $a2
    ret nz                                        ; $739b: $c0

    ld a, a                                       ; $739c: $7f
    rst $38                                       ; $739d: $ff
    ret nz                                        ; $739e: $c0

    ld a, [hl]                                    ; $739f: $7e
    pop bc                                        ; $73a0: $c1
    ld a, a                                       ; $73a1: $7f
    pop bc                                        ; $73a2: $c1
    rst $38                                       ; $73a3: $ff
    pop bc                                        ; $73a4: $c1
    cp a                                          ; $73a5: $bf
    rst $38                                       ; $73a6: $ff
    pop bc                                        ; $73a7: $c1
    cp h                                          ; $73a8: $bc
    jp $c3fc                                      ; $73a9: $c3 $fc $c3


    ld e, c                                       ; $73ac: $59
    rst $20                                       ; $73ad: $e7
    ld a, c                                       ; $73ae: $79
    rst $38                                       ; $73af: $ff
    rst $20                                       ; $73b0: $e7
    add hl, sp                                    ; $73b1: $39
    rst $20                                       ; $73b2: $e7
    dec a                                         ; $73b3: $3d
    db $e3                                        ; $73b4: $e3
    dec a                                         ; $73b5: $3d
    db $e3                                        ; $73b6: $e3
    ld a, l                                       ; $73b7: $7d
    ld e, a                                       ; $73b8: $5f
    db $e3                                        ; $73b9: $e3
    reti                                          ; $73ba: $d9


    rst $20                                       ; $73bb: $e7
    adc c                                         ; $73bc: $89
    rst $30                                       ; $73bd: $f7
    ld [$fe83], sp                                ; $73be: $08 $83 $fe
    sbc b                                         ; $73c1: $98
    add b                                         ; $73c2: $80
    sbc h                                         ; $73c3: $9c
    inc h                                         ; $73c4: $24
    and c                                         ; $73c5: $a1
    ld a, b                                       ; $73c6: $78
    cp c                                          ; $73c7: $b9
    or b                                          ; $73c8: $b0
    nop                                           ; $73c9: $00
    cp h                                          ; $73ca: $bc
    nop                                           ; $73cb: $00
    ldh a, [rTMA]                                 ; $73cc: $f0 $06
    and c                                         ; $73ce: $a1
    inc b                                         ; $73cf: $04
    db $fc                                        ; $73d0: $fc
    add h                                         ; $73d1: $84
    and d                                         ; $73d2: $a2
    cp [hl]                                       ; $73d3: $be
    ld h, l                                       ; $73d4: $65
    ei                                            ; $73d5: $fb
    rlca                                          ; $73d6: $07
    xor $1f                                       ; $73d7: $ee $1f
    db $d3                                        ; $73d9: $d3
    add hl, sp                                    ; $73da: $39
    rst $38                                       ; $73db: $ff
    or a                                          ; $73dc: $b7
    ld a, a                                       ; $73dd: $7f
    jp z, $6d5c                                   ; $73de: $ca $5c $6d

    ret c                                         ; $73e1: $d8

    sub b                                         ; $73e2: $90
    cp b                                          ; $73e3: $b8
    rst $38                                       ; $73e4: $ff
    sub b                                         ; $73e5: $90
    ei                                            ; $73e6: $fb
    call nc, $a0f3                                ; $73e7: $d4 $f3 $a0
    ldh a, [$94]                                  ; $73ea: $f0 $94
    or e                                          ; $73ec: $b3
    rst $38                                       ; $73ed: $ff
    pop af                                        ; $73ee: $f1
    sub b                                         ; $73ef: $90
    sub h                                         ; $73f0: $94
    di                                            ; $73f1: $f3
    ld hl, sp-$0d                                 ; $73f2: $f8 $f3
    sub b                                         ; $73f4: $90
    cp e                                          ; $73f5: $bb
    rst $38                                       ; $73f6: $ff
    ret z                                         ; $73f7: $c8

    sbc e                                         ; $73f8: $9b
    xor b                                         ; $73f9: $a8
    db $db                                        ; $73fa: $db
    ldh a, [$fb]                                  ; $73fb: $f0 $fb
    sub d                                         ; $73fd: $92
    ld sp, hl                                     ; $73fe: $f9
    rst $38                                       ; $73ff: $ff
    call z, $9899                                 ; $7400: $cc $99 $98
    call $d9ec                                    ; $7403: $cd $ec $d9
    cp l                                          ; $7406: $bd
    db $fc                                        ; $7407: $fc
    call nc, $69c2                                ; $7408: $d4 $c2 $69
    cp $75                                        ; $740b: $fe $75
    pop af                                        ; $740d: $f1
    add d                                         ; $740e: $82
    and b                                         ; $740f: $a0
    nop                                           ; $7410: $00
    ld a, [hl]                                    ; $7411: $7e
    ld h, b                                       ; $7412: $60
    ld c, b                                       ; $7413: $48
    nop                                           ; $7414: $00
    cp l                                          ; $7415: $bd
    ld [$8400], sp                                ; $7416: $08 $00 $84
    push hl                                       ; $7419: $e5
    ei                                            ; $741a: $fb
    cp e                                          ; $741b: $bb
    cp h                                          ; $741c: $bc
    nop                                           ; $741d: $00
    add c                                         ; $741e: $81
    add b                                         ; $741f: $80
    db $e3                                        ; $7420: $e3
    rst $38                                       ; $7421: $ff
    add e                                         ; $7422: $83
    ld b, $a4                                     ; $7423: $06 $a4
    sub h                                         ; $7425: $94
    add c                                         ; $7426: $81
    sbc [hl]                                      ; $7427: $9e
    add e                                         ; $7428: $83
    rst $18                                       ; $7429: $df
    ldh [$7b], a                                  ; $742a: $e0 $7b
    rst $38                                       ; $742c: $ff
    inc a                                         ; $742d: $3c
    xor a                                         ; $742e: $af
    ld [hl], a                                    ; $742f: $77
    jp c, Jump_000_07fc                           ; $7430: $da $fc $07

    rrca                                          ; $7433: $0f
    db $10                                        ; $7434: $10
    ld d, a                                       ; $7435: $57
    pop hl                                        ; $7436: $e1
    and d                                         ; $7437: $a2
    ld e, h                                       ; $7438: $5c
    daa                                           ; $7439: $27
    ld h, c                                       ; $743a: $61
    ret z                                         ; $743b: $c8

    ld hl, $9068                                  ; $743c: $21 $68 $90
    sub a                                         ; $743f: $97
    xor h                                         ; $7440: $ac
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    and l                                         ; $7444: $a5
    nop                                           ; $7445: $00
    rst $38                                       ; $7446: $ff
    db $e4                                        ; $7447: $e4
    rst $38                                       ; $7448: $ff
    cp $e4                                        ; $7449: $fe $e4
    ldh a, [$e3]                                  ; $744b: $f0 $e3
    ld bc, $e6f0                                  ; $744d: $01 $f0 $e6
    ccf                                           ; $7450: $3f
    ld d, d                                       ; $7451: $52
    cp $e0                                        ; $7452: $fe $e0
    ld a, a                                       ; $7454: $7f
    ld [c], a                                     ; $7455: $e2
    and $f8                                       ; $7456: $e6 $f8
    di                                            ; $7458: $f3
    add b                                         ; $7459: $80
    cp e                                          ; $745a: $bb
    ldh [$80], a                                  ; $745b: $e0 $80
    call c, $c7e8                                 ; $745d: $dc $e8 $c7
    rrca                                          ; $7460: $0f
    nop                                           ; $7461: $00
    rlca                                          ; $7462: $07
    db $fc                                        ; $7463: $fc
    ldh [$cc], a                                  ; $7464: $e0 $cc
    ei                                            ; $7466: $fb
    xor [hl]                                      ; $7467: $ae
    db $eb                                        ; $7468: $eb
    cp $00                                        ; $7469: $fe $00
    pop bc                                        ; $746b: $c1
    db $fc                                        ; $746c: $fc
    db $fc                                        ; $746d: $fc
    ldh [$9a], a                                  ; $746e: $e0 $9a
    rst $20                                       ; $7470: $e7
    ld l, h                                       ; $7471: $6c
    db $eb                                        ; $7472: $eb
    cp $ff                                        ; $7473: $fe $ff
    ld b, d                                       ; $7475: $42
    db $e3                                        ; $7476: $e3
    db $ed                                        ; $7477: $ed
    ld e, $1b                                     ; $7478: $1e $1b
    cp a                                          ; $747a: $bf
    ld a, a                                       ; $747b: $7f
    ld d, [hl]                                    ; $747c: $56
    db $eb                                        ; $747d: $eb
    ld a, a                                       ; $747e: $7f
    add b                                         ; $747f: $80
    jp z, $feff                                   ; $7480: $ca $ff $fe

    rst $38                                       ; $7483: $ff
    cp $fd                                        ; $7484: $fe $fd
    rst $38                                       ; $7486: $ff
    ccf                                           ; $7487: $3f
    ret nz                                        ; $7488: $c0

    rrca                                          ; $7489: $0f
    ldh a, [rSCY]                                 ; $748a: $f0 $42
    cp l                                          ; $748c: $bd
    ld b, e                                       ; $748d: $43
    cp a                                          ; $748e: $bf
    rst $38                                       ; $748f: $ff
    rrca                                          ; $7490: $0f
    rst $38                                       ; $7491: $ff
    ccf                                           ; $7492: $3f
    rst $38                                       ; $7493: $ff
    cp $01                                        ; $7494: $fe $01
    ei                                            ; $7496: $fb
    rlca                                          ; $7497: $07
    rst $38                                       ; $7498: $ff
    rst $28                                       ; $7499: $ef
    rra                                           ; $749a: $1f
    cp e                                          ; $749b: $bb
    ld a, a                                       ; $749c: $7f
    ei                                            ; $749d: $fb
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    cp a                                          ; $74a2: $bf
    rst $38                                       ; $74a3: $ff
    cp l                                          ; $74a4: $bd
    rst $38                                       ; $74a5: $ff
    ei                                            ; $74a6: $fb
    rst $38                                       ; $74a7: $ff
    ld a, e                                       ; $74a8: $7b
    rst $38                                       ; $74a9: $ff
    push de                                       ; $74aa: $d5
    ld a, a                                       ; $74ab: $7f
    db $f4                                        ; $74ac: $f4
    ldh [$ef], a                                  ; $74ad: $e0 $ef
    cp $e0                                        ; $74af: $fe $e0
    cp $fe                                        ; $74b1: $fe $fe
    ldh [$df], a                                  ; $74b3: $e0 $df
    ldh [$5f], a                                  ; $74b5: $e0 $5f
    rst $30                                       ; $74b7: $f7
    ld hl, sp-$03                                 ; $74b8: $f8 $fd
    cp $bf                                        ; $74ba: $fe $bf
    db $e4                                        ; $74bc: $e4
    ldh [$fd], a                                  ; $74bd: $e0 $fd
    cp $e0                                        ; $74bf: $fe $e0
    db $fc                                        ; $74c1: $fc
    db $db                                        ; $74c2: $db
    ldh [$86], a                                  ; $74c3: $e0 $86
    jp nz, $837c                                  ; $74c5: $c2 $7c $83

    pop de                                        ; $74c8: $d1
    xor $f1                                       ; $74c9: $ee $f1
    cp $fd                                        ; $74cb: $fe $fd
    db $fc                                        ; $74cd: $fc
    call z, $f3e0                                 ; $74ce: $cc $e0 $f3
    inc c                                         ; $74d1: $0c
    ret nz                                        ; $74d2: $c0

    ccf                                           ; $74d3: $3f
    nop                                           ; $74d4: $00
    rst $38                                       ; $74d5: $ff
    cp a                                          ; $74d6: $bf
    db $10                                        ; $74d7: $10
    rst $28                                       ; $74d8: $ef
    ld [de], a                                    ; $74d9: $12
    db $ed                                        ; $74da: $ed
    inc bc                                        ; $74db: $03
    rst $38                                       ; $74dc: $ff
    or b                                          ; $74dd: $b0
    push hl                                       ; $74de: $e5
    cpl                                           ; $74df: $2f
    xor e                                         ; $74e0: $ab
    rst $18                                       ; $74e1: $df
    dec a                                         ; $74e2: $3d
    jp nc, $dfe0                                  ; $74e3: $d2 $e0 $df

    cp $e0                                        ; $74e6: $fe $e0
    rst $38                                       ; $74e8: $ff
    ret nz                                        ; $74e9: $c0

    ld [c], a                                     ; $74ea: $e2
    db $dd                                        ; $74eb: $dd
    pop hl                                        ; $74ec: $e1
    cp $f6                                        ; $74ed: $fe $f6
    pop hl                                        ; $74ef: $e1
    and d                                         ; $74f0: $a2
    pop hl                                        ; $74f1: $e1
    cp [hl]                                       ; $74f2: $be
    ldh [rNR23], a                                ; $74f3: $e0 $18
    db $e4                                        ; $74f5: $e4
    rst $18                                       ; $74f6: $df
    ldh [$b4], a                                  ; $74f7: $e0 $b4
    ei                                            ; $74f9: $fb
    ei                                            ; $74fa: $fb
    cp h                                          ; $74fb: $bc
    or b                                          ; $74fc: $b0
    ld [c], a                                     ; $74fd: $e2
    db $fc                                        ; $74fe: $fc
    inc bc                                        ; $74ff: $03
    pop af                                        ; $7500: $f1
    ld c, $c1                                     ; $7501: $0e $c1
    rst $38                                       ; $7503: $ff
    ld a, $00                                     ; $7504: $3e $00
    rst $38                                       ; $7506: $ff
    ld b, b                                       ; $7507: $40
    cp a                                          ; $7508: $bf
    ld c, b                                       ; $7509: $48
    or a                                          ; $750a: $b7
    ld [$f7ff], sp                                ; $750b: $08 $ff $f7
    rst $38                                       ; $750e: $ff
    nop                                           ; $750f: $00
    db $db                                        ; $7510: $db
    inc a                                         ; $7511: $3c
    and h                                         ; $7512: $a4
    ld a, a                                       ; $7513: $7f
    db $db                                        ; $7514: $db
    rst $28                                       ; $7515: $ef
    rst $20                                       ; $7516: $e7
    rst $20                                       ; $7517: $e7
    jr jr_00f_7556                                ; $7518: $18 $3c

    sub e                                         ; $751a: $93
    ld [c], a                                     ; $751b: $e2
    db $db                                        ; $751c: $db
    inc a                                         ; $751d: $3c
    and l                                         ; $751e: $a5
    rst $38                                       ; $751f: $ff
    ld a, [hl]                                    ; $7520: $7e
    jp c, $65e7                                   ; $7521: $da $e7 $65

    sbc e                                         ; $7524: $9b
    cp e                                          ; $7525: $bb
    ld a, h                                       ; $7526: $7c
    cp $f8                                        ; $7527: $fe $f8
    add e                                         ; $7529: $83
    ld [c], a                                     ; $752a: $e2
    ldh [rIE], a                                  ; $752b: $e0 $ff
    ldh [$e1], a                                  ; $752d: $e0 $e1
    ei                                            ; $752f: $fb
    rst $20                                       ; $7530: $e7
    push de                                       ; $7531: $d5
    cp $7a                                        ; $7532: $fe $7a
    sbc a                                         ; $7534: $9f
    rst $18                                       ; $7535: $df
    rst $20                                       ; $7536: $e7
    db $db                                        ; $7537: $db
    halt                                          ; $7538: $76
    set 0, b                                      ; $7539: $cb $c0
    rst $38                                       ; $753b: $ff
    ldh [rIE], a                                  ; $753c: $e0 $ff
    jp c, $e75f                                   ; $753e: $da $5f $e7

    push hl                                       ; $7541: $e5
    ei                                            ; $7542: $fb
    cp e                                          ; $7543: $bb
    cp h                                          ; $7544: $bc
    ret nz                                        ; $7545: $c0

    pop hl                                        ; $7546: $e1
    add b                                         ; $7547: $80
    cp $c1                                        ; $7548: $fe $c1
    ret c                                         ; $754a: $d8

    db $fc                                        ; $754b: $fc
    db $e3                                        ; $754c: $e3
    ld a, [hl]                                    ; $754d: $7e
    and l                                         ; $754e: $a5
    ret z                                         ; $754f: $c8

    ret nz                                        ; $7550: $c0

    ldh a, [$f8]                                  ; $7551: $f0 $f8
    add sp, -$3b                                  ; $7553: $e8 $c5
    ld sp, hl                                     ; $7555: $f9

jr_00f_7556:
    rlca                                          ; $7556: $07
    and $dd                                       ; $7557: $e6 $dd
    pop bc                                        ; $7559: $c1
    dec bc                                        ; $755a: $0b
    rlca                                          ; $755b: $07
    and $c0                                       ; $755c: $e6 $c0
    ld [hl], h                                    ; $755e: $74
    and c                                         ; $755f: $a1
    rst $38                                       ; $7560: $ff
    ret nc                                        ; $7561: $d0

    ldh [$bf], a                                  ; $7562: $e0 $bf
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $08                                       ; $7566: $cf
    ldh a, [$3f]                                  ; $7567: $f0 $3f
    ret nz                                        ; $7569: $c0

    ld d, d                                       ; $756a: $52
    and c                                         ; $756b: $a1
    di                                            ; $756c: $f3
    rst $38                                       ; $756d: $ff
    rrca                                          ; $756e: $0f
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    cpl                                           ; $7571: $2f
    rra                                           ; $7572: $1f
    cp d                                          ; $7573: $ba
    rst $00                                       ; $7574: $c7
    jp hl                                         ; $7575: $e9


    rst $38                                       ; $7576: $ff
    sub a                                         ; $7577: $97
    pop hl                                        ; $7578: $e1
    sbc a                                         ; $7579: $9f
    xor c                                         ; $757a: $a9
    rst $18                                       ; $757b: $df
    ld c, [hl]                                    ; $757c: $4e
    rst $38                                       ; $757d: $ff
    ld [hl], c                                    ; $757e: $71
    rst $38                                       ; $757f: $ff
    cp $80                                        ; $7580: $fe $80
    ld a, a                                       ; $7582: $7f
    pop bc                                        ; $7583: $c1
    ld a, $f8                                     ; $7584: $3e $f8
    db $fd                                        ; $7586: $fd
    rst $38                                       ; $7587: $ff
    db $fd                                        ; $7588: $fd
    ld a, [$c1a9]                                 ; $7589: $fa $a9 $c1
    ei                                            ; $758c: $fb
    db $fc                                        ; $758d: $fc
    cp $ff                                        ; $758e: $fe $ff
    ld sp, hl                                     ; $7590: $f9
    cp $bf                                        ; $7591: $fe $bf
    sbc a                                         ; $7593: $9f
    ldh [rSB], a                                  ; $7594: $e0 $01
    rst $30                                       ; $7596: $f7
    db $fd                                        ; $7597: $fd
    dec bc                                        ; $7598: $0b
    ldh a, [$e2]                                  ; $7599: $f0 $e2
    rlca                                          ; $759b: $07
    cp a                                          ; $759c: $bf
    rst $38                                       ; $759d: $ff
    ld bc, $03fd                                  ; $759e: $01 $fd $03
    rst $30                                       ; $75a1: $f7
    rrca                                          ; $75a2: $0f
    ld d, b                                       ; $75a3: $50
    pop hl                                        ; $75a4: $e1
    and l                                         ; $75a5: $a5
    ld a, a                                       ; $75a6: $7f
    ld a, [hl]                                    ; $75a7: $7e
    jp $b37e                                      ; $75a8: $c3 $7e $b3


    ld a, [hl]                                    ; $75ab: $7e
    db $ed                                        ; $75ac: $ed
    ld e, $0c                                     ; $75ad: $1e $0c
    and c                                         ; $75af: $a1
    rst $38                                       ; $75b0: $ff
    db $fc                                        ; $75b1: $fc
    rst $38                                       ; $75b2: $ff
    rlca                                          ; $75b3: $07
    sbc b                                         ; $75b4: $98
    inc b                                         ; $75b5: $04
    rrca                                          ; $75b6: $0f
    inc bc                                        ; $75b7: $03
    rst $00                                       ; $75b8: $c7
    sbc $77                                       ; $75b9: $de $77
    push hl                                       ; $75bb: $e5
    di                                            ; $75bc: $f3
    adc a                                         ; $75bd: $8f
    ld a, [hl]                                    ; $75be: $7e
    add c                                         ; $75bf: $81
    and [hl]                                      ; $75c0: $a6
    pop hl                                        ; $75c1: $e1
    rst $08                                       ; $75c2: $cf
    ldh a, [rIE]                                  ; $75c3: $f0 $ff
    cp a                                          ; $75c5: $bf
    ret nz                                        ; $75c6: $c0

    rst $08                                       ; $75c7: $cf
    ldh a, [$fb]                                  ; $75c8: $f0 $fb
    db $fc                                        ; $75ca: $fc
    db $fc                                        ; $75cb: $fc
    inc bc                                        ; $75cc: $03
    ld sp, hl                                     ; $75cd: $f9
    adc a                                         ; $75ce: $8f
    ld b, c                                       ; $75cf: $41
    pop bc                                        ; $75d0: $c1
    ld e, b                                       ; $75d1: $58
    and $b7                                       ; $75d2: $e6 $b7
    ld a, b                                       ; $75d4: $78
    ld e, l                                       ; $75d5: $5d
    xor $bf                                       ; $75d6: $ee $bf
    rst $38                                       ; $75d8: $ff
    jp z, $9ee3                                   ; $75d9: $ca $e3 $9e

    call $70be                                    ; $75dc: $cd $be $70
    rst $38                                       ; $75df: $ff
    add e                                         ; $75e0: $83
    ld a, a                                       ; $75e1: $7f
    ld a, h                                       ; $75e2: $7c
    rst $38                                       ; $75e3: $ff
    nop                                           ; $75e4: $00
    add c                                         ; $75e5: $81
    nop                                           ; $75e6: $00
    ld b, l                                       ; $75e7: $45
    add e                                         ; $75e8: $83
    add hl, sp                                    ; $75e9: $39
    pop bc                                        ; $75ea: $c1
    rst $38                                       ; $75eb: $ff
    db $fc                                        ; $75ec: $fc
    rst $38                                       ; $75ed: $ff
    rst $30                                       ; $75ee: $f7
    ld hl, sp-$21                                 ; $75ef: $f8 $df
    ldh [$bf], a                                  ; $75f1: $e0 $bf
    ret nz                                        ; $75f3: $c0

    add d                                         ; $75f4: $82
    inc d                                         ; $75f5: $14
    pop bc                                        ; $75f6: $c1
    db $fc                                        ; $75f7: $fc
    ld e, h                                       ; $75f8: $5c
    ldh [$b0], a                                  ; $75f9: $e0 $b0
    add l                                         ; $75fb: $85
    ld a, h                                       ; $75fc: $7c
    pop hl                                        ; $75fd: $e1
    jr nz, @-$5e                                  ; $75fe: $20 $a0

    add h                                         ; $7600: $84
    ldh [rIE], a                                  ; $7601: $e0 $ff
    rst $38                                       ; $7603: $ff
    inc bc                                        ; $7604: $03
    cp $03                                        ; $7605: $fe $03
    db $fd                                        ; $7607: $fd
    inc bc                                        ; $7608: $03
    db $fc                                        ; $7609: $fc
    inc bc                                        ; $760a: $03
    rst $20                                       ; $760b: $e7
    rst $38                                       ; $760c: $ff
    rra                                           ; $760d: $1f
    cp a                                          ; $760e: $bf
    ld a, a                                       ; $760f: $7f
    jp nc, $41e1                                  ; $7610: $d2 $e1 $41

    add e                                         ; $7613: $83
    ld bc, $03ff                                  ; $7614: $01 $ff $03
    ld bc, $4000                                  ; $7617: $01 $00 $40
    add b                                         ; $761a: $80
    db $db                                        ; $761b: $db
    inc a                                         ; $761c: $3c
    rst $38                                       ; $761d: $ff
    cp $ce                                        ; $761e: $fe $ce
    ret nz                                        ; $7620: $c0

    rst $38                                       ; $7621: $ff
    ld h, [hl]                                    ; $7622: $66
    db $db                                        ; $7623: $db
    ld h, [hl]                                    ; $7624: $66
    ld [hl], d                                    ; $7625: $72
    rst $08                                       ; $7626: $cf
    ld h, e                                       ; $7627: $63
    rst $30                                       ; $7628: $f7
    rst $18                                       ; $7629: $df
    pop hl                                        ; $762a: $e1
    rst $18                                       ; $762b: $df
    ld b, d                                       ; $762c: $42
    xor e                                         ; $762d: $ab
    cp a                                          ; $762e: $bf
    ret nz                                        ; $762f: $c0

    nop                                           ; $7630: $00
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rlca                                          ; $7633: $07
    ei                                            ; $7634: $fb
    rra                                           ; $7635: $1f
    xor $39                                       ; $7636: $ee $39
    db $d3                                        ; $7638: $d3
    ld a, a                                       ; $7639: $7f
    or a                                          ; $763a: $b7
    rst $38                                       ; $763b: $ff
    ld e, h                                       ; $763c: $5c
    jp z, $6dd8                                   ; $763d: $ca $d8 $6d

    cp b                                          ; $7640: $b8
    sub b                                         ; $7641: $90
    nop                                           ; $7642: $00
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    ldh [$df], a                                  ; $7645: $e0 $df
    inc a                                         ; $7647: $3c
    ld a, e                                       ; $7648: $7b
    ld [hl], a                                    ; $7649: $77
    xor a                                         ; $764a: $af
    db $fc                                        ; $764b: $fc
    jp c, $0fff                                   ; $764c: $da $ff $0f

    rlca                                          ; $764f: $07
    pop hl                                        ; $7650: $e1
    db $10                                        ; $7651: $10
    ld e, h                                       ; $7652: $5c
    and d                                         ; $7653: $a2
    rst $38                                       ; $7654: $ff
    ld bc, $fefe                                  ; $7655: $01 $fe $fe
    pop hl                                        ; $7658: $e1
    rst $18                                       ; $7659: $df
    pop hl                                        ; $765a: $e1
    rst $28                                       ; $765b: $ef
    pop af                                        ; $765c: $f1
    ld a, a                                       ; $765d: $7f
    pop af                                        ; $765e: $f1
    ccf                                           ; $765f: $3f
    rst $30                                       ; $7660: $f7
    pop af                                        ; $7661: $f1
    scf                                           ; $7662: $37
    ld sp, hl                                     ; $7663: $f9
    call z, $ffe1                                 ; $7664: $cc $e1 $ff
    ld [hl], b                                    ; $7667: $70
    ccf                                           ; $7668: $3f
    db $10                                        ; $7669: $10
    rra                                           ; $766a: $1f
    rra                                           ; $766b: $1f
    db $10                                        ; $766c: $10
    sbc a                                         ; $766d: $9f
    sub b                                         ; $766e: $90
    ld a, a                                       ; $766f: $7f
    ld a, d                                       ; $7670: $7a
    ldh [$fe], a                                  ; $7671: $e0 $fe
    add e                                         ; $7673: $83
    ld hl, sp-$80                                 ; $7674: $f8 $80
    ret nz                                        ; $7676: $c0

    sbc $a0                                       ; $7677: $de $a0
    xor c                                         ; $7679: $a9
    pop bc                                        ; $767a: $c1
    ld [hl], $8c                                  ; $767b: $36 $8c
    ld d, b                                       ; $767d: $50
    and b                                         ; $767e: $a0
    ld a, [hl]                                    ; $767f: $7e
    add h                                         ; $7680: $84
    ld [c], a                                     ; $7681: $e2
    ret nz                                        ; $7682: $c0

    rst $00                                       ; $7683: $c7
    ccf                                           ; $7684: $3f
    cp $58                                        ; $7685: $fe $58
    and b                                         ; $7687: $a0
    rra                                           ; $7688: $1f
    rst $38                                       ; $7689: $ff
    rra                                           ; $768a: $1f
    jp c, $f73d                                   ; $768b: $da $3d $f7

    jr c, @+$01                                   ; $768e: $38 $ff

    cp [hl]                                       ; $7690: $be
    ld [hl], c                                    ; $7691: $71
    ld l, h                                       ; $7692: $6c
    di                                            ; $7693: $f3
    db $fc                                        ; $7694: $fc
    db $e3                                        ; $7695: $e3
    ret c                                         ; $7696: $d8

    rst $20                                       ; $7697: $e7
    ld a, a                                       ; $7698: $7f
    ldh [$df], a                                  ; $7699: $e0 $df
    and b                                         ; $769b: $a0
    rst $18                                       ; $769c: $df
    ret nz                                        ; $769d: $c0

    rst $38                                       ; $769e: $ff
    ld h, b                                       ; $769f: $60
    cp $e4                                        ; $76a0: $fe $e4
    rst $38                                       ; $76a2: $ff
    jr nc, @+$01                                  ; $76a3: $30 $ff

    rst $38                                       ; $76a5: $ff
    ret nz                                        ; $76a6: $c0

    ld a, a                                       ; $76a7: $7f
    ret nz                                        ; $76a8: $c0

    ld a, [hl]                                    ; $76a9: $7e
    pop bc                                        ; $76aa: $c1
    rst $38                                       ; $76ab: $ff
    ld a, a                                       ; $76ac: $7f
    pop bc                                        ; $76ad: $c1
    rst $38                                       ; $76ae: $ff
    pop bc                                        ; $76af: $c1
    cp a                                          ; $76b0: $bf
    pop bc                                        ; $76b1: $c1
    cp h                                          ; $76b2: $bc
    jp $fcff                                      ; $76b3: $c3 $ff $fc


    jp $90fb                                      ; $76b6: $c3 $fb $90


    di                                            ; $76b9: $f3
    call nc, $a0f0                                ; $76ba: $d4 $f0 $a0
    rst $38                                       ; $76bd: $ff
    or e                                          ; $76be: $b3
    sub h                                         ; $76bf: $94
    sub b                                         ; $76c0: $90
    pop af                                        ; $76c1: $f1
    di                                            ; $76c2: $f3
    sub h                                         ; $76c3: $94
    di                                            ; $76c4: $f3
    ld hl, sp-$15                                 ; $76c5: $f8 $eb
    cp e                                          ; $76c7: $bb
    sub b                                         ; $76c8: $90
    cp h                                          ; $76c9: $bc
    ld h, d                                       ; $76ca: $62
    ret z                                         ; $76cb: $c8

    ret nc                                        ; $76cc: $d0

    ld h, a                                       ; $76cd: $67
    dec sp                                        ; $76ce: $3b
    db $fd                                        ; $76cf: $fd
    rra                                           ; $76d0: $1f
    cpl                                           ; $76d1: $2f
    db $fd                                        ; $76d2: $fd
    rrca                                          ; $76d3: $0f
    db $fd                                        ; $76d4: $fd
    dec c                                         ; $76d5: $0d
    inc [hl]                                      ; $76d6: $34
    and b                                         ; $76d7: $a0
    rlca                                          ; $76d8: $07
    cp $e2                                        ; $76d9: $fe $e2
    inc d                                         ; $76db: $14
    jp z, Jump_000_1096                           ; $76dc: $ca $96 $10

    call nz, Call_000_03fc                        ; $76df: $c4 $fc $03
    ldh a, [$eb]                                  ; $76e2: $f0 $eb
    rra                                           ; $76e4: $1f
    ld l, d                                       ; $76e5: $6a
    and $f0                                       ; $76e6: $e6 $f0
    and e                                         ; $76e8: $a3
    rst $38                                       ; $76e9: $ff
    or $a8                                        ; $76ea: $f6 $a8
    add b                                         ; $76ec: $80
    di                                            ; $76ed: $f3
    rrca                                          ; $76ee: $0f
    ld d, [hl]                                    ; $76ef: $56
    db $e3                                        ; $76f0: $e3
    ld hl, sp-$19                                 ; $76f1: $f8 $e7
    ld l, h                                       ; $76f3: $6c
    di                                            ; $76f4: $f3
    rst $38                                       ; $76f5: $ff
    cp h                                          ; $76f6: $bc
    ld [hl], e                                    ; $76f7: $73
    ld a, h                                       ; $76f8: $7c
    di                                            ; $76f9: $f3
    db $ec                                        ; $76fa: $ec
    di                                            ; $76fb: $f3
    ret c                                         ; $76fc: $d8

    rst $20                                       ; $76fd: $e7
    ld a, a                                       ; $76fe: $7f
    ldh a, [$cf]                                  ; $76ff: $f0 $cf
    ldh a, [$cf]                                  ; $7701: $f0 $cf
    jr c, @+$01                                   ; $7703: $38 $ff

jr_00f_7705:
    jr jr_00f_7705                                ; $7705: $18 $fe

    ld [c], a                                     ; $7707: $e2
    ld sp, hl                                     ; $7708: $f9
    jr nc, jr_00f_776f                            ; $7709: $30 $64

    ldh [$f6], a                                  ; $770b: $e0 $f6
    pop hl                                        ; $770d: $e1
    ld e, c                                       ; $770e: $59
    rst $20                                       ; $770f: $e7
    ld a, c                                       ; $7710: $79
    rst $20                                       ; $7711: $e7
    add hl, sp                                    ; $7712: $39
    rst $38                                       ; $7713: $ff
    rst $20                                       ; $7714: $e7
    dec a                                         ; $7715: $3d
    db $e3                                        ; $7716: $e3
    dec a                                         ; $7717: $3d
    db $e3                                        ; $7718: $e3
    ld a, l                                       ; $7719: $7d
    db $e3                                        ; $771a: $e3
    reti                                          ; $771b: $d9


    rst $38                                       ; $771c: $ff
    rst $20                                       ; $771d: $e7
    adc c                                         ; $771e: $89
    rst $30                                       ; $771f: $f7
    sbc c                                         ; $7720: $99
    jp z, $a8db                                   ; $7721: $ca $db $a8

    ei                                            ; $7724: $fb
    rst $38                                       ; $7725: $ff
    ldh a, [$f9]                                  ; $7726: $f0 $f9
    sub d                                         ; $7728: $92
    sbc c                                         ; $7729: $99
    call z, $98cd                                 ; $772a: $cc $cd $98
    reti                                          ; $772d: $d9


    rrca                                          ; $772e: $0f
    db $ec                                        ; $772f: $ec
    db $fc                                        ; $7730: $fc
    cp l                                          ; $7731: $bd
    rrca                                          ; $7732: $0f
    ld e, [hl]                                    ; $7733: $5e
    ld [c], a                                     ; $7734: $e2
    sub [hl]                                      ; $7735: $96
    ld h, a                                       ; $7736: $67
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    rrca                                          ; $773a: $0f
    rrca                                          ; $773b: $0f
    rrca                                          ; $773c: $0f
    rrca                                          ; $773d: $0f
    rrca                                          ; $773e: $0f
    rrca                                          ; $773f: $0f
    rrca                                          ; $7740: $0f
    rrca                                          ; $7741: $0f
    rrca                                          ; $7742: $0f
    inc c                                         ; $7743: $0c
    inc c                                         ; $7744: $0c
    inc c                                         ; $7745: $0c
    inc c                                         ; $7746: $0c
    inc c                                         ; $7747: $0c
    inc c                                         ; $7748: $0c
    inc c                                         ; $7749: $0c
    inc c                                         ; $774a: $0c
    inc c                                         ; $774b: $0c
    inc c                                         ; $774c: $0c
    inc c                                         ; $774d: $0c
    inc c                                         ; $774e: $0c
    inc c                                         ; $774f: $0c
    inc c                                         ; $7750: $0c
    inc c                                         ; $7751: $0c
    inc c                                         ; $7752: $0c
    inc c                                         ; $7753: $0c
    inc c                                         ; $7754: $0c
    inc c                                         ; $7755: $0c
    inc c                                         ; $7756: $0c
    inc c                                         ; $7757: $0c
    inc c                                         ; $7758: $0c
    inc c                                         ; $7759: $0c
    inc c                                         ; $775a: $0c
    inc c                                         ; $775b: $0c
    inc c                                         ; $775c: $0c
    inc c                                         ; $775d: $0c
    inc c                                         ; $775e: $0c
    inc c                                         ; $775f: $0c
    inc c                                         ; $7760: $0c
    dec c                                         ; $7761: $0d
    dec c                                         ; $7762: $0d
    dec c                                         ; $7763: $0d
    dec c                                         ; $7764: $0d
    dec c                                         ; $7765: $0d
    dec c                                         ; $7766: $0d
    dec c                                         ; $7767: $0d
    dec c                                         ; $7768: $0d
    dec c                                         ; $7769: $0d
    dec c                                         ; $776a: $0d
    ld c, $0e                                     ; $776b: $0e $0e
    ld c, $0e                                     ; $776d: $0e $0e

jr_00f_776f:
    dec c                                         ; $776f: $0d
    ld c, $0e                                     ; $7770: $0e $0e
    dec c                                         ; $7772: $0d
    ld c, $0e                                     ; $7773: $0e $0e
    ld c, $0d                                     ; $7775: $0e $0d
    ld c, $0e                                     ; $7777: $0e $0e
    ld c, $0e                                     ; $7779: $0e $0e
    dec c                                         ; $777b: $0d
    dec c                                         ; $777c: $0d
    rrca                                          ; $777d: $0f
    rrca                                          ; $777e: $0f
    dec c                                         ; $777f: $0d
    dec c                                         ; $7780: $0d
    ld c, $0e                                     ; $7781: $0e $0e
    ld c, $0d                                     ; $7783: $0e $0d
    dec c                                         ; $7785: $0d
    dec c                                         ; $7786: $0d
    rrca                                          ; $7787: $0f
    rrca                                          ; $7788: $0f
    dec c                                         ; $7789: $0d
    ld c, $0e                                     ; $778a: $0e $0e
    ld c, $0e                                     ; $778c: $0e $0e
    dec c                                         ; $778e: $0d
    dec c                                         ; $778f: $0d
    dec c                                         ; $7790: $0d
    rrca                                          ; $7791: $0f
    rrca                                          ; $7792: $0f
    rst $38                                       ; $7793: $ff
    ld a, a                                       ; $7794: $7f
    sub b                                         ; $7795: $90
    ld a, [hl]                                    ; $7796: $7e
    ld c, h                                       ; $7797: $4c
    ld b, d                                       ; $7798: $42
    inc b                                         ; $7799: $04
    ld a, [bc]                                    ; $779a: $0a
    sbc a                                         ; $779b: $9f
    ld [bc], a                                    ; $779c: $02
    inc b                                         ; $779d: $04
    ld a, [bc]                                    ; $779e: $0a
    nop                                           ; $779f: $00
    add hl, bc                                    ; $77a0: $09
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    sbc [hl]                                      ; $77a3: $9e
    dec sp                                        ; $77a4: $3b
    xor h                                         ; $77a5: $ac
    inc bc                                        ; $77a6: $03
    ret z                                         ; $77a7: $c8

    ld [bc], a                                    ; $77a8: $02
    inc b                                         ; $77a9: $04
    ld a, [bc]                                    ; $77aa: $0a
    adc d                                         ; $77ab: $8a
    ld a, [hl]                                    ; $77ac: $7e
    nop                                           ; $77ad: $00
    ld b, c                                       ; $77ae: $41
    inc b                                         ; $77af: $04
    ld [bc], a                                    ; $77b0: $02
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00

Call_00f_77b3:
    ld hl, $7b9a                                  ; $77b3: $21 $9a $7b
    ld de, $0d01                                  ; $77b6: $11 $01 $0d
    call Call_000_056c                            ; $77b9: $cd $6c $05
    ld a, $01                                     ; $77bc: $3e $01
    ldh [$96], a                                  ; $77be: $e0 $96
    ldh [rSVBK], a                                ; $77c0: $e0 $70
    rst $18                                       ; $77c2: $df

    db $1a, $03

    call Call_00f_4995                            ; $77c5: $cd $95 $49
    call Call_00f_49aa                            ; $77c8: $cd $aa $49
    ldh a, [$96]                                  ; $77cb: $f0 $96
    push af                                       ; $77cd: $f5
    ld a, $06                                     ; $77ce: $3e $06
    ldh [$96], a                                  ; $77d0: $e0 $96
    ldh [rSVBK], a                                ; $77d2: $e0 $70
    ld hl, $d207                                  ; $77d4: $21 $07 $d2
    ld a, [hl+]                                   ; $77d7: $2a
    ld h, [hl]                                    ; $77d8: $66
    ld l, a                                       ; $77d9: $6f
    ldh a, [$b0]                                  ; $77da: $f0 $b0
    add l                                         ; $77dc: $85
    ld l, a                                       ; $77dd: $6f
    jr nc, jr_00f_77e1                            ; $77de: $30 $01

    inc h                                         ; $77e0: $24

jr_00f_77e1:
    ld h, [hl]                                    ; $77e1: $66
    pop af                                        ; $77e2: $f1
    ldh [$96], a                                  ; $77e3: $e0 $96
    ldh [rSVBK], a                                ; $77e5: $e0 $70
    ld a, h                                       ; $77e7: $7c
    ld hl, $0021                                  ; $77e8: $21 $21 $00
    add l                                         ; $77eb: $85
    ld l, a                                       ; $77ec: $6f
    jr nc, jr_00f_77f0                            ; $77ed: $30 $01

    inc h                                         ; $77ef: $24

jr_00f_77f0:
    ld de, $d4c5                                  ; $77f0: $11 $c5 $d4
    ld c, $20                                     ; $77f3: $0e $20
    rst $18                                       ; $77f5: $df

    db $22, $05

    ld hl, $003b                                  ; $77f8: $21 $3b $00
    ld de, $d505                                  ; $77fb: $11 $05 $d5
    ld c, $20                                     ; $77fe: $0e $20
    rst $18                                       ; $7800: $df

    db $22, $05

    rst $18                                       ; $7803: $df

    db $24, $03

    call Call_00f_4aa0                            ; $7806: $cd $a0 $4a
    ldh a, [$96]                                  ; $7809: $f0 $96
    push af                                       ; $780b: $f5
    ld a, $06                                     ; $780c: $3e $06
    ldh [$96], a                                  ; $780e: $e0 $96
    ldh [rSVBK], a                                ; $7810: $e0 $70
    ld a, [$d209]                                 ; $7812: $fa $09 $d2
    and $7f                                       ; $7815: $e6 $7f
    ld b, a                                       ; $7817: $47
    pop af                                        ; $7818: $f1
    ldh [$96], a                                  ; $7819: $e0 $96
    ldh [rSVBK], a                                ; $781b: $e0 $70

Jump_00f_781d:
jr_00f_781d:
    ld hl, $ffb3                                  ; $781d: $21 $b3 $ff
    inc [hl]                                      ; $7820: $34
    call Call_000_2e3b                            ; $7821: $cd $3b $2e
    ldh a, [$91]                                  ; $7824: $f0 $91
    bit 5, a                                      ; $7826: $cb $6f
    jr z, jr_00f_783c                             ; $7828: $28 $12

    rst $08                                       ; $782a: $cf

    db $5b

    dec b                                         ; $782c: $05
    ld a, b                                       ; $782d: $78
    or a                                          ; $782e: $b7
    jr nz, jr_00f_7833                            ; $782f: $20 $02

    ld a, $12                                     ; $7831: $3e $12

jr_00f_7833:
    ld [hl], $00                                  ; $7833: $36 $00
    push af                                       ; $7835: $f5
    call Call_00f_78c5                            ; $7836: $cd $c5 $78
    pop bc                                        ; $7839: $c1
    jr jr_00f_781d                                ; $783a: $18 $e1

jr_00f_783c:
    bit 4, a                                      ; $783c: $cb $67
    jr z, jr_00f_7853                             ; $783e: $28 $13

    rst $08                                       ; $7840: $cf

    db $5b

    inc b                                         ; $7842: $04
    ld a, b                                       ; $7843: $78
    cp $13                                        ; $7844: $fe $13
    jr nz, jr_00f_784a                            ; $7846: $20 $02

    ld a, $01                                     ; $7848: $3e $01

jr_00f_784a:
    ld [hl], $00                                  ; $784a: $36 $00
    push af                                       ; $784c: $f5
    call Call_00f_78c5                            ; $784d: $cd $c5 $78
    pop bc                                        ; $7850: $c1
    jr jr_00f_781d                                ; $7851: $18 $ca

jr_00f_7853:
    bit 6, a                                      ; $7853: $cb $77
    jr z, jr_00f_7869                             ; $7855: $28 $12

    rst $08                                       ; $7857: $cf

    db $5b

    dec b                                         ; $7859: $05
    ld a, b                                       ; $785a: $78
    or a                                          ; $785b: $b7
    jr nz, jr_00f_7860                            ; $785c: $20 $02

    ld a, $12                                     ; $785e: $3e $12

jr_00f_7860:
    ld [hl], $00                                  ; $7860: $36 $00
    push af                                       ; $7862: $f5
    call Call_00f_78c5                            ; $7863: $cd $c5 $78
    pop bc                                        ; $7866: $c1
    jr jr_00f_781d                                ; $7867: $18 $b4

jr_00f_7869:
    bit 7, a                                      ; $7869: $cb $7f
    jr z, jr_00f_7880                             ; $786b: $28 $13

    rst $08                                       ; $786d: $cf

    db $5b

    inc b                                         ; $786f: $04
    ld a, b                                       ; $7870: $78
    cp $13                                        ; $7871: $fe $13
    jr nz, jr_00f_7877                            ; $7873: $20 $02

    ld a, $01                                     ; $7875: $3e $01

jr_00f_7877:
    ld [hl], $00                                  ; $7877: $36 $00
    push af                                       ; $7879: $f5
    call Call_00f_78c5                            ; $787a: $cd $c5 $78
    pop bc                                        ; $787d: $c1
    jr jr_00f_781d                                ; $787e: $18 $9d

jr_00f_7880:
    bit 0, a                                      ; $7880: $cb $47
    jr z, jr_00f_7888                             ; $7882: $28 $04

    rst $08                                       ; $7884: $cf

    db $5c

    ld a, b                                       ; $7886: $78
    ret                                           ; $7887: $c9


jr_00f_7888:
    bit 1, a                                      ; $7888: $cb $4f
    jr z, jr_00f_789c                             ; $788a: $28 $10

    rst $08                                       ; $788c: $cf
    ld e, l                                       ; $788d: $5d
    ld a, $06                                     ; $788e: $3e $06
    ldh [$96], a                                  ; $7890: $e0 $96
    ldh [rSVBK], a                                ; $7892: $e0 $70
    ld a, $01                                     ; $7894: $3e $01
    ld [$d209], a                                 ; $7896: $ea $09 $d2
    ld a, $ff                                     ; $7899: $3e $ff
    ret                                           ; $789b: $c9


jr_00f_789c:
    jp Jump_00f_781d                              ; $789c: $c3 $1d $78


    call Call_00f_42b4                            ; $789f: $cd $b4 $42
    ldh a, [$b3]                                  ; $78a2: $f0 $b3
    and $0f                                       ; $78a4: $e6 $0f
    cp $0c                                        ; $78a6: $fe $0c
    ret nc                                        ; $78a8: $d0

    ld bc, $0d20                                  ; $78a9: $01 $20 $0d
    ld de, $5060                                  ; $78ac: $11 $60 $50
    call Call_000_26a4                            ; $78af: $cd $a4 $26
    ld bc, $0d24                                  ; $78b2: $01 $24 $0d
    ld de, $6060                                  ; $78b5: $11 $60 $60
    call Call_000_26a4                            ; $78b8: $cd $a4 $26
    ld bc, $0d28                                  ; $78bb: $01 $28 $0d
    ld de, $7060                                  ; $78be: $11 $60 $70
    call Call_000_26a4                            ; $78c1: $cd $a4 $26
    ret                                           ; $78c4: $c9


Call_00f_78c5:
    ld hl, $78ea                                  ; $78c5: $21 $ea $78
    add l                                         ; $78c8: $85
    ld l, a                                       ; $78c9: $6f
    jr nc, jr_00f_78cd                            ; $78ca: $30 $01

    inc h                                         ; $78cc: $24

jr_00f_78cd:
    ld a, [hl]                                    ; $78cd: $7e
    push af                                       ; $78ce: $f5
    swap a                                        ; $78cf: $cb $37
    and $0f                                       ; $78d1: $e6 $0f
    ld b, a                                       ; $78d3: $47
    ld c, $00                                     ; $78d4: $0e $00
    call Call_00f_78fe                            ; $78d6: $cd $fe $78
    pop af                                        ; $78d9: $f1
    and $0f                                       ; $78da: $e6 $0f
    ld b, a                                       ; $78dc: $47
    ld c, $01                                     ; $78dd: $0e $01
    call Call_00f_78fe                            ; $78df: $cd $fe $78
    ld b, $0b                                     ; $78e2: $06 $0b
    ld c, $02                                     ; $78e4: $0e $02
    call Call_00f_78fe                            ; $78e6: $cd $fe $78
    ret                                           ; $78e9: $c9


    and b                                         ; $78ea: $a0

    db $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $10, $11, $12, $13, $14, $15, $16
    db $17, $18

    add hl, de                                    ; $78fd: $19

Call_00f_78fe:
    ldh a, [$96]                                  ; $78fe: $f0 $96
    push af                                       ; $7900: $f5
    ld a, $01                                     ; $7901: $3e $01
    ldh [$96], a                                  ; $7903: $e0 $96
    ldh [rSVBK], a                                ; $7905: $e0 $70
    push bc                                       ; $7907: $c5
    ld a, b                                       ; $7908: $78
    add a                                         ; $7909: $87
    ld hl, $7934                                  ; $790a: $21 $34 $79
    add l                                         ; $790d: $85
    ld l, a                                       ; $790e: $6f
    jr nc, jr_00f_7912                            ; $790f: $30 $01

    inc h                                         ; $7911: $24

jr_00f_7912:
    ld a, [hl+]                                   ; $7912: $2a
    ld h, [hl]                                    ; $7913: $66
    ld l, a                                       ; $7914: $6f
    ld a, $d0                                     ; $7915: $3e $d0
    add c                                         ; $7917: $81
    ld d, a                                       ; $7918: $57
    ld e, $00                                     ; $7919: $1e $00
    push de                                       ; $791b: $d5
    call Call_000_1f2f                            ; $791c: $cd $2f $1f
    pop hl                                        ; $791f: $e1
    pop bc                                        ; $7920: $c1
    ld a, c                                       ; $7921: $79
    swap a                                        ; $7922: $cb $37
    add a                                         ; $7924: $87
    add a                                         ; $7925: $87
    ld d, $a2                                     ; $7926: $16 $a2
    ld e, a                                       ; $7928: $5f
    ld c, $04                                     ; $7929: $0e $04
    call Call_000_0468                            ; $792b: $cd $68 $04
    pop af                                        ; $792e: $f1
    ldh [$96], a                                  ; $792f: $e0 $96
    ldh [rSVBK], a                                ; $7931: $e0 $70
    ret                                           ; $7933: $c9


    db $4c, $79, $83, $79, $ac, $79, $ed, $79, $36, $7a, $78, $7a, $a8, $7a, $d4, $7a
    db $0c, $7b, $3f, $7b, $72, $7b, $7b, $7b, $ff, $00, $00, $0f, $0f, $33, $3c, $cf
    db $f0, $df, $ff, $c0, $fc, $c3, $ff, $fe, $e7, $c0, $cf, $ff, $f0, $f3, $fc, $3f
    db $3f, $0f, $0f, $00, $ff, $00, $f0, $f0, $cc, $3c, $f3, $0f, $3f, $fe, $e2, $e9
    db $c3, $3f, $c3, $f3, $0f, $cf, $3f, $0f, $fc, $fc, $f0, $f0, $00, $00

    nop                                           ; $7982: $00

    db $fd, $00, $ff, $e0, $03, $03, $0c, $0f, $0f, $0c, $f6, $fe, $e0, $0f, $03, $ff
    db $ee, $00, $00, $3f, $3f, $ff, $cf, $f3, $3f, $c3, $ff, $03, $ff, $03, $0b, $3f
    db $c3, $fe, $eb, $ff, $ff, $e0, $00, $00

    nop                                           ; $79ab: $00

    db $ff, $00, $00, $3f, $3f, $33, $3c, $cf, $f0, $ff, $ff, $c0, $fc, $c3, $f3, $cf
    db $ff, $ff, $8f, $03, $03, $0c, $0f, $f0, $e3, $fe, $e0, $ff, $e0, $00, $ff, $00
    db $f0, $f0, $cc, $3c, $ff, $0f, $f3, $ff, $0f, $ff, $03, $3f, $c3, $33, $cf, $ff
    db $5f, $0f, $cc, $3c, $fc, $3c, $e6, $e0, $03, $fe, $e0, $00, $e0, $e0, $00, $00

    nop                                           ; $79ec: $00

    db $ff, $00, $00, $3f, $3f, $33, $3c, $cf, $f0, $ff, $fc, $c3, $c3, $ff, $ff, $ff
    db $0f, $0c, $ff, $0f, $0c, $ff, $ff, $c3, $ff, $fc, $c3, $ff, $cf, $f0, $f3, $fc
    db $3f, $3f, $0f, $0f, $ff, $00, $00, $f0, $f0, $cc, $3c, $ff, $0f, $ff, $f3, $0f
    db $3f, $c3, $ff, $03, $ff, $0f, $de, $fe, $e0, $03, $3f, $c3, $f3, $f8, $e0, $cf
    db $3f, $0f, $fc, $fc, $f0, $f0, $00, $00

    nop                                           ; $7a35: $00

    db $f7, $00, $00, $03, $ff, $e0, $0c, $0f, $0f, $0c, $ff, $33, $3c, $3c, $33, $cf
    db $f3, $ff, $c0, $ff, $ff, $c0, $fc, $ff, $fc, $ff, $0c, $0f, $fc, $ec, $e0, $fe
    db $e0, $00, $00, $fc, $fc, $3c, $cc, $ef, $fc, $0c, $fc, $0c, $fa, $e0, $cc, $ff
    db $cf, $bb, $ff, $03, $fe, $e0, $0f, $ff, $0f, $ee, $e1, $fc, $00, $ff, $e0, $00
    db $00

    nop                                           ; $7a77: $00

    db $bf, $00, $00, $ff, $ff, $ff, $c0, $fe, $e0, $c3, $20, $fe, $e0, $f8, $e1, $f1
    db $e0, $ec, $e6, $f4, $e5, $03, $fe, $e0, $d9, $e0, $ef, $cc, $3c, $f3, $0f, $d8
    db $e2, $c3, $3f, $c3, $ff, $f3, $0f, $cf, $3f, $fc, $fc, $f0, $f0, $00, $00, $00
    db $bf, $00, $00, $ff, $ff, $ff, $c3, $fe, $e4, $c0, $e8, $fe, $e0, $f4, $e9, $e5
    db $e0, $00, $ff, $e6, $f0, $f0, $cc, $ef, $3c, $f3, $0f, $3f, $d4, $e2, $3f, $c3
    db $f3, $7f, $0f, $cf, $3f, $fc, $fc, $f0, $f0, $00, $00

    nop                                           ; $7ad3: $00

    db $ff, $00, $00, $ff, $ff, $ff, $c0, $ff, $c0, $7f, $fc, $c3, $f3, $cf, $fc, $fc
    db $00, $ff, $e0, $3d, $03, $ff, $e2, $0c, $0f, $0c, $0f, $ff, $e1, $e0, $e2, $7f
    db $03, $ff, $03, $3f, $c3, $cf, $f3, $fe, $e1, $07, $ff, $c3, $3f, $fe, $e0, $ee
    db $e1, $ea, $e0, $c5, $e0, $00, $00

    nop                                           ; $7b0b: $00

    db $ff, $00, $00, $0f, $0f, $33, $3c, $cf, $f0, $db, $ff, $c3, $fe, $e1, $cf, $f0
    db $f6, $e7, $f3, $fc, $ff, $3f, $3f, $0f, $0f, $00, $00, $f0, $f0, $df, $cc, $3c
    db $f3, $0f, $3f, $e0, $e2, $f3, $0f, $7e, $f6, $e7, $cf, $3f, $fc, $fc, $f0, $f0
    db $00, $00

    nop                                           ; $7b3e: $00

    db $ff, $00, $00, $0f, $0f, $33, $3c, $cf, $f0, $fb, $ff, $c3, $fe, $e1, $cf, $f0
    db $30, $3f, $0f, $fb, $0f, $03, $ff, $e8, $00, $00, $f0, $f0, $cc, $6f, $3c, $f3
    db $0f, $3f, $e0, $e2, $ff, $03, $fe, $e3, $0b, $3f, $c3, $fe, $e1, $ff, $ff, $e0
    db $00, $00

    nop                                           ; $7b71: $00

    db $01, $00, $ff, $ff, $ff, $fa, $00, $00

    nop                                           ; $7b7a: $00

    db $9d, $00, $ff, $e2, $ff, $ff, $c3, $fd, $e1, $fe, $e1, $c0, $20, $fe, $e0, $f6
    db $e2, $ee, $e0, $fe, $e0, $e0, $ee, $03, $fe, $e0, $e0, $e8, $00, $00, $00, $96
    db $32, $ff, $7f, $18, $63, $00, $00

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

Call_00f_7c6f:
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
