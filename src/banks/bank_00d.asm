; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    db $a7, $4a

jr_00d_4002:
    ld [hl+], a                                   ; $4002: $22
    dec c                                         ; $4003: $0d
    jr nz, jr_00d_4002                            ; $4004: $20 $fc

    ret                                           ; $4006: $c9


Call_00d_4007:
    ld a, $06                                     ; $4007: $3e $06
    ldh [$96], a                                  ; $4009: $e0 $96
    ldh [rSVBK], a                                ; $400b: $e0 $70
    ld a, l                                       ; $400d: $7d
    ld [$d207], a                                 ; $400e: $ea $07 $d2
    ld a, h                                       ; $4011: $7c
    ld [$d208], a                                 ; $4012: $ea $08 $d2
    ld a, c                                       ; $4015: $79
    ld [$d200], a                                 ; $4016: $ea $00 $d2
    ld a, b                                       ; $4019: $78
    ld [$d201], a                                 ; $401a: $ea $01 $d2
    ld a, e                                       ; $401d: $7b
    ldh [$b0], a                                  ; $401e: $e0 $b0
    ld a, d                                       ; $4020: $7a
    ldh [$b2], a                                  ; $4021: $e0 $b2
    ld a, $10                                     ; $4023: $3e $10
    ldh [$b4], a                                  ; $4025: $e0 $b4
    push bc                                       ; $4027: $c5
    call Call_000_0341                            ; $4028: $cd $41 $03
    call Call_000_23b6                            ; $402b: $cd $b6 $23
    xor a                                         ; $402e: $af
    ldh [$8a], a                                  ; $402f: $e0 $8a
    ldh [$8b], a                                  ; $4031: $e0 $8b
    ld a, $01                                     ; $4033: $3e $01
    ldh [$96], a                                  ; $4035: $e0 $96
    ldh [rSVBK], a                                ; $4037: $e0 $70
    pop hl                                        ; $4039: $e1
    inc hl                                        ; $403a: $23
    inc hl                                        ; $403b: $23
    inc hl                                        ; $403c: $23
    inc hl                                        ; $403d: $23
    push hl                                       ; $403e: $e5
    ld a, [hl+]                                   ; $403f: $2a
    ld h, [hl]                                    ; $4040: $66
    ld l, a                                       ; $4041: $6f
    ld de, $d000                                  ; $4042: $11 $00 $d0
    call Call_000_1f2f                            ; $4045: $cd $2f $1f
    ld hl, $d000                                  ; $4048: $21 $00 $d0
    ld de, $8e00                                  ; $404b: $11 $00 $8e
    ld c, $14                                     ; $404e: $0e $14
    call Call_000_04db                            ; $4050: $cd $db $04
    pop hl                                        ; $4053: $e1
    inc hl                                        ; $4054: $23
    inc hl                                        ; $4055: $23
    ld a, [hl+]                                   ; $4056: $2a
    ld h, [hl]                                    ; $4057: $66
    ld l, a                                       ; $4058: $6f
    ld de, $0c01                                  ; $4059: $11 $01 $0c
    call Call_000_0595                            ; $405c: $cd $95 $05
    ld hl, $4830                                  ; $405f: $21 $30 $48
    ld de, $d000                                  ; $4062: $11 $00 $d0
    call Call_000_1f2f                            ; $4065: $cd $2f $1f
    ld hl, $4882                                  ; $4068: $21 $82 $48
    ld de, $d100                                  ; $406b: $11 $00 $d1
    call Call_000_1f2f                            ; $406e: $cd $2f $1f
    ld hl, $48c5                                  ; $4071: $21 $c5 $48
    ld de, $d400                                  ; $4074: $11 $00 $d4
    call Call_000_1f2f                            ; $4077: $cd $2f $1f
    ld h, $01                                     ; $407a: $26 $01
    ld l, $02                                     ; $407c: $2e $02
    call Call_00d_460f                            ; $407e: $cd $0f $46
    ld de, $d700                                  ; $4081: $11 $00 $d7
    call Call_000_1f2f                            ; $4084: $cd $2f $1f
    ld h, $ff                                     ; $4087: $26 $ff
    ld l, $02                                     ; $4089: $2e $02
    call Call_00d_460f                            ; $408b: $cd $0f $46
    ld de, $db00                                  ; $408e: $11 $00 $db
    call Call_000_1f2f                            ; $4091: $cd $2f $1f
    ld h, $00                                     ; $4094: $26 $00
    ld l, $02                                     ; $4096: $2e $02
    call Call_00d_460f                            ; $4098: $cd $0f $46
    ld de, $d900                                  ; $409b: $11 $00 $d9
    call Call_000_1f2f                            ; $409e: $cd $2f $1f
    ld a, $01                                     ; $40a1: $3e $01
    ldh [rVBK], a                                 ; $40a3: $e0 $4f
    ld hl, $d000                                  ; $40a5: $21 $00 $d0
    ld de, $9000                                  ; $40a8: $11 $00 $90
    ld c, $10                                     ; $40ab: $0e $10
    call Call_000_2096                            ; $40ad: $cd $96 $20
    ld hl, $d100                                  ; $40b0: $21 $00 $d1
    ld de, $9800                                  ; $40b3: $11 $00 $98
    ld c, $24                                     ; $40b6: $0e $24
    call Call_000_2096                            ; $40b8: $cd $96 $20
    xor a                                         ; $40bb: $af
    ldh [rVBK], a                                 ; $40bc: $e0 $4f
    ld hl, $d400                                  ; $40be: $21 $00 $d4
    ld de, $9800                                  ; $40c1: $11 $00 $98
    ld c, $24                                     ; $40c4: $0e $24
    call Call_000_2096                            ; $40c6: $cd $96 $20
    ld hl, $4901                                  ; $40c9: $21 $01 $49
    ld de, $0103                                  ; $40cc: $11 $03 $01
    call Call_000_0595                            ; $40cf: $cd $95 $05
    ld hl, $4901                                  ; $40d2: $21 $01 $49
    ld de, $0903                                  ; $40d5: $11 $03 $09
    call Call_000_0595                            ; $40d8: $cd $95 $05
    ld h, $00                                     ; $40db: $26 $00
    ld l, $0a                                     ; $40dd: $2e $0a
    call Call_00d_460f                            ; $40df: $cd $0f $46
    ld de, $0404                                  ; $40e2: $11 $04 $04
    call Call_000_0595                            ; $40e5: $cd $95 $05
    ld a, $01                                     ; $40e8: $3e $01
    ldh [rVBK], a                                 ; $40ea: $e0 $4f
    ld hl, $de00                                  ; $40ec: $21 $00 $de
    ld de, $9100                                  ; $40ef: $11 $00 $91
    ld c, $20                                     ; $40f2: $0e $20
    call Call_000_2096                            ; $40f4: $cd $96 $20
    ld hl, $4670                                  ; $40f7: $21 $70 $46
    ld de, $9300                                  ; $40fa: $11 $00 $93
    ld c, $08                                     ; $40fd: $0e $08
    call Call_000_2096                            ; $40ff: $cd $96 $20
    ld hl, $d900                                  ; $4102: $21 $00 $d9
    ld de, $9380                                  ; $4105: $11 $80 $93
    ld c, $48                                     ; $4108: $0e $48
    call Call_000_2096                            ; $410a: $cd $96 $20
    ld hl, $dd80                                  ; $410d: $21 $80 $dd
    ld de, $8800                                  ; $4110: $11 $00 $88
    ld c, $08                                     ; $4113: $0e $08
    call Call_000_2096                            ; $4115: $cd $96 $20
    ld hl, $4670                                  ; $4118: $21 $70 $46
    ld de, $8880                                  ; $411b: $11 $80 $88
    ld c, $08                                     ; $411e: $0e $08
    call Call_000_2096                            ; $4120: $cd $96 $20
    ld hl, $d700                                  ; $4123: $21 $00 $d7
    ld de, $8900                                  ; $4126: $11 $00 $89
    ld c, $20                                     ; $4129: $0e $20
    call Call_000_2096                            ; $412b: $cd $96 $20
    ld hl, $46f0                                  ; $412e: $21 $f0 $46
    ld de, $a700                                  ; $4131: $11 $00 $a7
    ld c, $04                                     ; $4134: $0e $04
    call Call_000_2096                            ; $4136: $cd $96 $20
    call Call_00d_4597                            ; $4139: $cd $97 $45
    call Call_00d_44f9                            ; $413c: $cd $f9 $44
    call Call_000_0371                            ; $413f: $cd $71 $03
    call Call_000_2e3b                            ; $4142: $cd $3b $2e
    call Call_000_2e3b                            ; $4145: $cd $3b $2e
    ld a, $01                                     ; $4148: $3e $01
    ld hl, $415c                                  ; $414a: $21 $5c $41
    call Call_000_23e8                            ; $414d: $cd $e8 $23
    ld a, $01                                     ; $4150: $3e $01
    ld hl, $428e                                  ; $4152: $21 $8e $42
    call Call_000_23e8                            ; $4155: $cd $e8 $23
    call Call_00d_4a01                            ; $4158: $cd $01 $4a
    ret                                           ; $415b: $c9


    ldh a, [$8c]                                  ; $415c: $f0 $8c
    and $3f                                       ; $415e: $e6 $3f
    ld hl, $4175                                  ; $4160: $21 $75 $41
    add l                                         ; $4163: $85
    ld l, a                                       ; $4164: $6f
    jr nc, jr_00d_4168                            ; $4165: $30 $01

    inc h                                         ; $4167: $24

jr_00d_4168:
    ld d, $00                                     ; $4168: $16 $00
    ld e, [hl]                                    ; $416a: $5e
    ld hl, $41b5                                  ; $416b: $21 $b5 $41
    ld bc, $04e0                                  ; $416e: $01 $e0 $04
    call Call_000_26ea                            ; $4171: $cd $ea $26
    ret                                           ; $4174: $c9


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $16, $30, $00, $00, $16, $38, $02, $00, $16, $40, $04, $00, $16, $48, $06, $00
    db $16, $50, $08, $00, $16, $58, $0a, $00, $16, $60, $0c, $00, $16, $68, $0e, $00
    db $16, $70, $10, $00, $16, $78, $12, $00, $80

Call_00d_41de:
    ld a, $01                                     ; $41de: $3e $01
    ld hl, $428e                                  ; $41e0: $21 $8e $42
    call Call_000_23e8                            ; $41e3: $cd $e8 $23
    call Call_00d_4953                            ; $41e6: $cd $53 $49

jr_00d_41e9:
    call Call_000_2e3b                            ; $41e9: $cd $3b $2e
    ldh a, [$91]                                  ; $41ec: $f0 $91
    bit 5, a                                      ; $41ee: $cb $6f
    jr z, jr_00d_41fd                             ; $41f0: $28 $0b

    ldh a, [$b2]                                  ; $41f2: $f0 $b2
    cp $02                                        ; $41f4: $fe $02
    jr c, jr_00d_41e9                             ; $41f6: $38 $f1

    call Call_00d_43fd                            ; $41f8: $cd $fd $43
    jr jr_00d_4238                                ; $41fb: $18 $3b

jr_00d_41fd:
    bit 4, a                                      ; $41fd: $cb $67
    jr z, jr_00d_420c                             ; $41ff: $28 $0b

    ldh a, [$b2]                                  ; $4201: $f0 $b2
    cp $02                                        ; $4203: $fe $02
    jr c, jr_00d_41e9                             ; $4205: $38 $e2

    call Call_00d_4324                            ; $4207: $cd $24 $43
    jr jr_00d_4238                                ; $420a: $18 $2c

jr_00d_420c:
    bit 0, a                                      ; $420c: $cb $47
    jr z, jr_00d_4228                             ; $420e: $28 $18

    rst $08                                       ; $4210: $cf

    db $5c

    ld a, $06                                     ; $4212: $3e $06
    ldh [$96], a                                  ; $4214: $e0 $96
    ldh [rSVBK], a                                ; $4216: $e0 $70
    ld hl, $d207                                  ; $4218: $21 $07 $d2
    ld a, [hl+]                                   ; $421b: $2a
    ld h, [hl]                                    ; $421c: $66
    ld l, a                                       ; $421d: $6f
    ldh a, [$b0]                                  ; $421e: $f0 $b0
    add l                                         ; $4220: $85
    ld l, a                                       ; $4221: $6f
    jr nc, jr_00d_4225                            ; $4222: $30 $01

    inc h                                         ; $4224: $24

jr_00d_4225:
    ld a, [hl]                                    ; $4225: $7e
    jr jr_00d_423a                                ; $4226: $18 $12

jr_00d_4228:
    bit 1, a                                      ; $4228: $cb $4f
    jr z, jr_00d_4238                             ; $422a: $28 $0c

    ld a, $06                                     ; $422c: $3e $06
    ldh [$96], a                                  ; $422e: $e0 $96
    ldh [rSVBK], a                                ; $4230: $e0 $70
    rst $08                                       ; $4232: $cf

    db $5d

    ld a, $ff                                     ; $4234: $3e $ff
    jr jr_00d_423a                                ; $4236: $18 $02

jr_00d_4238:
    jr jr_00d_41e9                                ; $4238: $18 $af

jr_00d_423a:
    push af                                       ; $423a: $f5
    ld hl, $428e                                  ; $423b: $21 $8e $42
    call Call_000_2449                            ; $423e: $cd $49 $24
    pop af                                        ; $4241: $f1
    ret                                           ; $4242: $c9


Call_00d_4243:
    ld hl, $c600                                  ; $4243: $21 $00 $c6
    ld de, $b880                                  ; $4246: $11 $80 $b8
    ld c, $10                                     ; $4249: $0e $10
    call Call_000_0468                            ; $424b: $cd $68 $04
    ld hl, $c700                                  ; $424e: $21 $00 $c7
    ld de, $9880                                  ; $4251: $11 $80 $98
    ld c, $10                                     ; $4254: $0e $10
    call Call_000_0468                            ; $4256: $cd $68 $04
    ret                                           ; $4259: $c9


Call_00d_425a:
    ldh a, [$b4]                                  ; $425a: $f0 $b4
    add $08                                       ; $425c: $c6 $08
    cp $b0                                        ; $425e: $fe $b0
    jr nz, jr_00d_4264                            ; $4260: $20 $02

    ld a, $10                                     ; $4262: $3e $10

jr_00d_4264:
    ldh [$b4], a                                  ; $4264: $e0 $b4
    ret                                           ; $4266: $c9


Call_00d_4267:
    ld hl, $c601                                  ; $4267: $21 $01 $c6
    ld de, $c600                                  ; $426a: $11 $00 $c6
    ld bc, $01ff                                  ; $426d: $01 $ff $01
    call MemCopy                            ; $4270: $cd $d3 $03
    ret                                           ; $4273: $c9


Call_00d_4274:
    ldh a, [$b4]                                  ; $4274: $f0 $b4
    add $f8                                       ; $4276: $c6 $f8
    cp $08                                        ; $4278: $fe $08
    jr nz, jr_00d_427e                            ; $427a: $20 $02

    ld a, $a8                                     ; $427c: $3e $a8

jr_00d_427e:
    ldh [$b4], a                                  ; $427e: $e0 $b4
    ret                                           ; $4280: $c9


Call_00d_4281:
    ld hl, $c7fe                                  ; $4281: $21 $fe $c7
    ld de, $c7ff                                  ; $4284: $11 $ff $c7
    ld bc, $01ff                                  ; $4287: $01 $ff $01
    call Call_000_03e2                            ; $428a: $cd $e2 $03
    ret                                           ; $428d: $c9


    call Call_00d_42b0                            ; $428e: $cd $b0 $42
    ldh a, [$b2]                                  ; $4291: $f0 $b2
    cp $02                                        ; $4293: $fe $02
    ret c                                         ; $4295: $d8

    ldh a, [$b1]                                  ; $4296: $f0 $b1
    and $0f                                       ; $4298: $e6 $0f
    cp $0c                                        ; $429a: $fe $0c
    ret nc                                        ; $429c: $d0

    ld de, $1448                                  ; $429d: $11 $48 $14
    ld bc, $0970                                  ; $42a0: $01 $70 $09
    call Call_000_26a4                            ; $42a3: $cd $a4 $26
    ld de, $8c48                                  ; $42a6: $11 $48 $8c
    ld bc, $2970                                  ; $42a9: $01 $70 $29
    call Call_000_26a4                            ; $42ac: $cd $a4 $26
    ret                                           ; $42af: $c9


Call_00d_42b0:
    ld hl, $ffb1                                  ; $42b0: $21 $b1 $ff
    inc [hl]                                      ; $42b3: $34
    ld a, [hl]                                    ; $42b4: $7e
    and $1c                                       ; $42b5: $e6 $1c
    ld h, $00                                     ; $42b7: $26 $00
    ld l, a                                       ; $42b9: $6f
    add hl, hl                                    ; $42ba: $29
    add hl, hl                                    ; $42bb: $29
    ld de, $4730                                  ; $42bc: $11 $30 $47
    add hl, de                                    ; $42bf: $19
    ld de, $b060                                  ; $42c0: $11 $60 $b0
    ld c, $01                                     ; $42c3: $0e $01
    call Call_000_0468                            ; $42c5: $cd $68 $04
    ret                                           ; $42c8: $c9


Call_00d_42c9:
    call Call_00d_4267                            ; $42c9: $cd $67 $42
    ldh a, [$b4]                                  ; $42cc: $f0 $b4
    push af                                       ; $42ce: $f5
    ld h, $00                                     ; $42cf: $26 $00
    ld l, a                                       ; $42d1: $6f
    add hl, hl                                    ; $42d2: $29
    add hl, hl                                    ; $42d3: $29
    add hl, hl                                    ; $42d4: $29
    add hl, hl                                    ; $42d5: $29
    bit 3, h                                      ; $42d6: $cb $5c
    jr nz, jr_00d_42dc                            ; $42d8: $20 $02

    set 4, h                                      ; $42da: $cb $e4

jr_00d_42dc:
    ld de, $a000                                  ; $42dc: $11 $00 $a0
    add hl, de                                    ; $42df: $19
    ld d, h                                       ; $42e0: $54
    ld e, l                                       ; $42e1: $5d
    ld hl, $ffb6                                  ; $42e2: $21 $b6 $ff
    ld a, [hl+]                                   ; $42e5: $2a
    ld h, [hl]                                    ; $42e6: $66
    ld l, a                                       ; $42e7: $6f
    ld c, $08                                     ; $42e8: $0e $08
    call Call_000_0468                            ; $42ea: $cd $68 $04
    ld hl, $ffb6                                  ; $42ed: $21 $b6 $ff
    ld a, [hl+]                                   ; $42f0: $2a
    ld h, [hl]                                    ; $42f1: $66
    ld l, a                                       ; $42f2: $6f
    ld de, $0080                                  ; $42f3: $11 $80 $00
    add hl, de                                    ; $42f6: $19
    ld a, l                                       ; $42f7: $7d
    ldh [$b6], a                                  ; $42f8: $e0 $b6
    ld a, h                                       ; $42fa: $7c
    ldh [$b7], a                                  ; $42fb: $e0 $b7
    pop af                                        ; $42fd: $f1
    ld hl, $c613                                  ; $42fe: $21 $13 $c6
    ld de, $0020                                  ; $4301: $11 $20 $00
    ld c, $08                                     ; $4304: $0e $08

jr_00d_4306:
    ld [hl], $0b                                  ; $4306: $36 $0b
    add hl, de                                    ; $4308: $19
    dec c                                         ; $4309: $0d
    jr nz, jr_00d_4306                            ; $430a: $20 $fa

    ld c, $08                                     ; $430c: $0e $08

jr_00d_430e:
    ld [hl], a                                    ; $430e: $77
    inc a                                         ; $430f: $3c
    add hl, de                                    ; $4310: $19
    dec c                                         ; $4311: $0d
    jr nz, jr_00d_430e                            ; $4312: $20 $fa

    ld hl, $ffb6                                  ; $4314: $21 $b6 $ff
    ld a, [hl+]                                   ; $4317: $2a
    ld h, [hl]                                    ; $4318: $66
    ld l, a                                       ; $4319: $6f
    call Call_00d_425a                            ; $431a: $cd $5a $42
    call Call_00d_4243                            ; $431d: $cd $43 $42
    call Call_000_2e3b                            ; $4320: $cd $3b $2e
    ret                                           ; $4323: $c9


Call_00d_4324:
    rst $08                                       ; $4324: $cf
    ld e, e                                       ; $4325: $5b
    ld hl, $428e                                  ; $4326: $21 $8e $42
    call Call_000_2449                            ; $4329: $cd $49 $24
    call Call_00d_496b                            ; $432c: $cd $6b $49
    call Call_00d_4597                            ; $432f: $cd $97 $45
    call Call_000_2e3b                            ; $4332: $cd $3b $2e
    ldh a, [$b2]                                  ; $4335: $f0 $b2
    ld h, a                                       ; $4337: $67
    inc h                                         ; $4338: $24
    ldh a, [$b0]                                  ; $4339: $f0 $b0
    inc a                                         ; $433b: $3c
    cp h                                          ; $433c: $bc
    jr c, jr_00d_4341                             ; $433d: $38 $02

    ld a, $01                                     ; $433f: $3e $01

jr_00d_4341:
    ldh [$b0], a                                  ; $4341: $e0 $b0
    ld h, $00                                     ; $4343: $26 $00
    ld l, $02                                     ; $4345: $2e $02
    call Call_00d_460f                            ; $4347: $cd $0f $46
    ld de, $d000                                  ; $434a: $11 $00 $d0
    call Call_000_1f2f                            ; $434d: $cd $2f $1f
    ld h, $01                                     ; $4350: $26 $01
    ld l, $02                                     ; $4352: $2e $02
    call Call_00d_460f                            ; $4354: $cd $0f $46
    ld de, $d500                                  ; $4357: $11 $00 $d5
    call Call_000_1f2f                            ; $435a: $cd $2f $1f
    call Call_000_2e3b                            ; $435d: $cd $3b $2e
    call Call_000_2e3b                            ; $4360: $cd $3b $2e
    ld hl, $d200                                  ; $4363: $21 $00 $d2
    ld a, l                                       ; $4366: $7d
    ldh [$b6], a                                  ; $4367: $e0 $b6
    ld a, h                                       ; $4369: $7c
    ldh [$b7], a                                  ; $436a: $e0 $b7
    call Call_00d_42c9                            ; $436c: $cd $c9 $42
    call Call_00d_42c9                            ; $436f: $cd $c9 $42
    call Call_00d_42c9                            ; $4372: $cd $c9 $42
    call Call_00d_42c9                            ; $4375: $cd $c9 $42
    call Call_00d_42c9                            ; $4378: $cd $c9 $42
    call Call_00d_42c9                            ; $437b: $cd $c9 $42
    call Call_00d_4267                            ; $437e: $cd $67 $42
    ld hl, $c613                                  ; $4381: $21 $13 $c6
    call Call_00d_447d                            ; $4384: $cd $7d $44
    call Call_00d_425a                            ; $4387: $cd $5a $42
    call Call_00d_42c9                            ; $438a: $cd $c9 $42
    call Call_00d_42c9                            ; $438d: $cd $c9 $42
    call Call_00d_42c9                            ; $4390: $cd $c9 $42
    call Call_00d_42c9                            ; $4393: $cd $c9 $42
    call Call_00d_44b6                            ; $4396: $cd $b6 $44
    call Call_000_2e3b                            ; $4399: $cd $3b $2e
    call Call_00d_4953                            ; $439c: $cd $53 $49
    ld a, $01                                     ; $439f: $3e $01
    ld hl, $428e                                  ; $43a1: $21 $8e $42
    call Call_000_23e8                            ; $43a4: $cd $e8 $23
    ret                                           ; $43a7: $c9


Call_00d_43a8:
    call Call_00d_4274                            ; $43a8: $cd $74 $42
    call Call_00d_4281                            ; $43ab: $cd $81 $42
    ldh a, [$b4]                                  ; $43ae: $f0 $b4
    push af                                       ; $43b0: $f5
    ld h, $00                                     ; $43b1: $26 $00
    ld l, a                                       ; $43b3: $6f
    add hl, hl                                    ; $43b4: $29
    add hl, hl                                    ; $43b5: $29
    add hl, hl                                    ; $43b6: $29
    add hl, hl                                    ; $43b7: $29
    bit 3, h                                      ; $43b8: $cb $5c
    jr nz, jr_00d_43be                            ; $43ba: $20 $02

    set 4, h                                      ; $43bc: $cb $e4

jr_00d_43be:
    ld de, $a000                                  ; $43be: $11 $00 $a0
    add hl, de                                    ; $43c1: $19
    ld d, h                                       ; $43c2: $54
    ld e, l                                       ; $43c3: $5d
    ld hl, $ffb6                                  ; $43c4: $21 $b6 $ff
    ld a, [hl+]                                   ; $43c7: $2a
    ld h, [hl]                                    ; $43c8: $66
    ld l, a                                       ; $43c9: $6f
    ld c, $08                                     ; $43ca: $0e $08
    call Call_000_0468                            ; $43cc: $cd $68 $04
    ld hl, $ffb6                                  ; $43cf: $21 $b6 $ff
    ld a, [hl+]                                   ; $43d2: $2a
    ld h, [hl]                                    ; $43d3: $66
    ld l, a                                       ; $43d4: $6f
    ld de, $ff80                                  ; $43d5: $11 $80 $ff
    add hl, de                                    ; $43d8: $19
    ld a, l                                       ; $43d9: $7d
    ldh [$b6], a                                  ; $43da: $e0 $b6
    ld a, h                                       ; $43dc: $7c
    ldh [$b7], a                                  ; $43dd: $e0 $b7
    pop af                                        ; $43df: $f1
    ld hl, $c600                                  ; $43e0: $21 $00 $c6
    ld de, $0020                                  ; $43e3: $11 $20 $00
    ld c, $08                                     ; $43e6: $0e $08

jr_00d_43e8:
    ld [hl], $0b                                  ; $43e8: $36 $0b
    add hl, de                                    ; $43ea: $19
    dec c                                         ; $43eb: $0d
    jr nz, jr_00d_43e8                            ; $43ec: $20 $fa

    ld c, $08                                     ; $43ee: $0e $08

jr_00d_43f0:
    ld [hl], a                                    ; $43f0: $77
    inc a                                         ; $43f1: $3c
    add hl, de                                    ; $43f2: $19
    dec c                                         ; $43f3: $0d
    jr nz, jr_00d_43f0                            ; $43f4: $20 $fa

    call Call_00d_4243                            ; $43f6: $cd $43 $42
    call Call_000_2e3b                            ; $43f9: $cd $3b $2e
    ret                                           ; $43fc: $c9


Call_00d_43fd:
    rst $08                                       ; $43fd: $cf

    db $5b

    ld hl, $428e                                  ; $43ff: $21 $8e $42
    call Call_000_2449                            ; $4402: $cd $49 $24
    call Call_00d_496b                            ; $4405: $cd $6b $49
    call Call_00d_4597                            ; $4408: $cd $97 $45
    call Call_000_2e3b                            ; $440b: $cd $3b $2e
    ldh a, [$b0]                                  ; $440e: $f0 $b0
    dec a                                         ; $4410: $3d
    or a                                          ; $4411: $b7
    jr nz, jr_00d_4416                            ; $4412: $20 $02

    ldh a, [$b2]                                  ; $4414: $f0 $b2

jr_00d_4416:
    ldh [$b0], a                                  ; $4416: $e0 $b0
    ld h, $00                                     ; $4418: $26 $00
    ld l, $02                                     ; $441a: $2e $02
    call Call_00d_460f                            ; $441c: $cd $0f $46
    ld de, $d500                                  ; $441f: $11 $00 $d5
    call Call_000_1f2f                            ; $4422: $cd $2f $1f
    ld h, $ff                                     ; $4425: $26 $ff
    ld l, $02                                     ; $4427: $2e $02
    call Call_00d_460f                            ; $4429: $cd $0f $46
    ld de, $d000                                  ; $442c: $11 $00 $d0
    call Call_000_1f2f                            ; $442f: $cd $2f $1f
    call Call_000_2e3b                            ; $4432: $cd $3b $2e
    call Call_000_2e3b                            ; $4435: $cd $3b $2e
    ld hl, $d780                                  ; $4438: $21 $80 $d7
    ld a, l                                       ; $443b: $7d
    ldh [$b6], a                                  ; $443c: $e0 $b6
    ld a, h                                       ; $443e: $7c
    ldh [$b7], a                                  ; $443f: $e0 $b7
    call Call_00d_43a8                            ; $4441: $cd $a8 $43
    call Call_00d_43a8                            ; $4444: $cd $a8 $43
    call Call_00d_43a8                            ; $4447: $cd $a8 $43
    call Call_00d_43a8                            ; $444a: $cd $a8 $43
    call Call_00d_43a8                            ; $444d: $cd $a8 $43
    call Call_00d_43a8                            ; $4450: $cd $a8 $43
    call Call_00d_4274                            ; $4453: $cd $74 $42
    call Call_00d_4281                            ; $4456: $cd $81 $42
    ld hl, $c600                                  ; $4459: $21 $00 $c6
    call Call_00d_447d                            ; $445c: $cd $7d $44
    call Call_00d_43a8                            ; $445f: $cd $a8 $43
    call Call_00d_43a8                            ; $4462: $cd $a8 $43
    call Call_00d_43a8                            ; $4465: $cd $a8 $43
    call Call_00d_43a8                            ; $4468: $cd $a8 $43
    call Call_00d_44b6                            ; $446b: $cd $b6 $44
    call Call_000_2e3b                            ; $446e: $cd $3b $2e
    call Call_00d_4953                            ; $4471: $cd $53 $49
    ld a, $01                                     ; $4474: $3e $01
    ld hl, $428e                                  ; $4476: $21 $8e $42
    call Call_000_23e8                            ; $4479: $cd $e8 $23
    ret                                           ; $447c: $c9


Call_00d_447d:
    ld de, $0020                                  ; $447d: $11 $20 $00
    ld c, $08                                     ; $4480: $0e $08

jr_00d_4482:
    ld [hl], $09                                  ; $4482: $36 $09
    add hl, de                                    ; $4484: $19
    dec c                                         ; $4485: $0d
    jr nz, jr_00d_4482                            ; $4486: $20 $fa

    ldh a, [$b4]                                  ; $4488: $f0 $b4
    ld c, $08                                     ; $448a: $0e $08

jr_00d_448c:
    ld [hl], a                                    ; $448c: $77
    inc a                                         ; $448d: $3c
    add hl, de                                    ; $448e: $19
    dec c                                         ; $448f: $0d
    jr nz, jr_00d_448c                            ; $4490: $20 $fa

    ldh a, [$b4]                                  ; $4492: $f0 $b4
    ld h, $00                                     ; $4494: $26 $00
    ld l, a                                       ; $4496: $6f
    add hl, hl                                    ; $4497: $29
    add hl, hl                                    ; $4498: $29
    add hl, hl                                    ; $4499: $29
    add hl, hl                                    ; $449a: $29
    bit 3, h                                      ; $449b: $cb $5c
    jr nz, jr_00d_44a1                            ; $449d: $20 $02

    set 4, h                                      ; $449f: $cb $e4

jr_00d_44a1:
    ld de, $a000                                  ; $44a1: $11 $00 $a0
    add hl, de                                    ; $44a4: $19
    ld d, h                                       ; $44a5: $54
    ld e, l                                       ; $44a6: $5d
    ld hl, $4670                                  ; $44a7: $21 $70 $46
    ld c, $08                                     ; $44aa: $0e $08
    call Call_000_0468                            ; $44ac: $cd $68 $04
    call Call_00d_4243                            ; $44af: $cd $43 $42
    call Call_000_2e3b                            ; $44b2: $cd $3b $2e
    ret                                           ; $44b5: $c9


Call_00d_44b6:
    ld h, $00                                     ; $44b6: $26 $00
    ld l, $0a                                     ; $44b8: $2e $0a
    call Call_00d_460f                            ; $44ba: $cd $0f $46
    ld de, $0404                                  ; $44bd: $11 $04 $04
    call Call_000_056c                            ; $44c0: $cd $6c $05
    ld h, $00                                     ; $44c3: $26 $00
    ld l, $04                                     ; $44c5: $2e $04
    call Call_00d_460f                            ; $44c7: $cd $0f $46
    ld de, $d000                                  ; $44ca: $11 $00 $d0
    call Call_000_1f2f                            ; $44cd: $cd $2f $1f
    ld hl, $d000                                  ; $44d0: $21 $00 $d0
    ld de, $ab00                                  ; $44d3: $11 $00 $ab
    ld c, $20                                     ; $44d6: $0e $20
    call Call_000_0468                            ; $44d8: $cd $68 $04
    call Call_000_2e3b                            ; $44db: $cd $3b $2e
    ld hl, $d200                                  ; $44de: $21 $00 $d2
    ld de, $ad00                                  ; $44e1: $11 $00 $ad
    ld c, $20                                     ; $44e4: $0e $20
    call Call_000_0468                            ; $44e6: $cd $68 $04
    call Call_000_2e3b                            ; $44e9: $cd $3b $2e
    ld hl, $d400                                  ; $44ec: $21 $00 $d4
    ld de, $af00                                  ; $44ef: $11 $00 $af
    ld c, $10                                     ; $44f2: $0e $10
    call Call_000_0468                            ; $44f4: $cd $68 $04
    jr jr_00d_4534                                ; $44f7: $18 $3b

Call_00d_44f9:
    ld h, $00                                     ; $44f9: $26 $00
    ld l, $0a                                     ; $44fb: $2e $0a
    call Call_00d_460f                            ; $44fd: $cd $0f $46
    ld de, $0404                                  ; $4500: $11 $04 $04
    call Call_000_0595                            ; $4503: $cd $95 $05
    ld h, $00                                     ; $4506: $26 $00
    ld l, $04                                     ; $4508: $2e $04
    call Call_00d_460f                            ; $450a: $cd $0f $46
    ld de, $d000                                  ; $450d: $11 $00 $d0
    call Call_000_1f2f                            ; $4510: $cd $2f $1f
    ld hl, $d000                                  ; $4513: $21 $00 $d0
    ld de, $ab00                                  ; $4516: $11 $00 $ab
    ld c, $20                                     ; $4519: $0e $20
    call Call_000_0468                            ; $451b: $cd $68 $04
    ld hl, $d200                                  ; $451e: $21 $00 $d2
    ld de, $ad00                                  ; $4521: $11 $00 $ad
    ld c, $20                                     ; $4524: $0e $20
    call Call_000_0468                            ; $4526: $cd $68 $04
    ld hl, $d400                                  ; $4529: $21 $00 $d4
    ld de, $af00                                  ; $452c: $11 $00 $af
    ld c, $10                                     ; $452f: $0e $10
    call Call_000_04db                            ; $4531: $cd $db $04

jr_00d_4534:
    ld de, $c605                                  ; $4534: $11 $05 $c6
    ld c, $08                                     ; $4537: $0e $08
    ld h, $00                                     ; $4539: $26 $00
    ld l, $08                                     ; $453b: $2e $08
    call Call_00d_460f                            ; $453d: $cd $0f $46

jr_00d_4540:
    ld a, [hl+]                                   ; $4540: $2a
    ld [de], a                                    ; $4541: $12
    inc de                                        ; $4542: $13
    ld a, [hl+]                                   ; $4543: $2a
    ld [de], a                                    ; $4544: $12
    inc de                                        ; $4545: $13
    ld a, [hl+]                                   ; $4546: $2a
    ld [de], a                                    ; $4547: $12
    inc de                                        ; $4548: $13
    ld a, [hl+]                                   ; $4549: $2a
    ld [de], a                                    ; $454a: $12
    inc de                                        ; $454b: $13
    ld a, [hl+]                                   ; $454c: $2a
    ld [de], a                                    ; $454d: $12
    inc de                                        ; $454e: $13
    ld a, [hl+]                                   ; $454f: $2a
    ld [de], a                                    ; $4550: $12
    inc de                                        ; $4551: $13
    ld a, [hl+]                                   ; $4552: $2a
    ld [de], a                                    ; $4553: $12
    inc de                                        ; $4554: $13
    ld a, [hl+]                                   ; $4555: $2a
    ld [de], a                                    ; $4556: $12
    inc de                                        ; $4557: $13
    ld a, [hl+]                                   ; $4558: $2a
    ld [de], a                                    ; $4559: $12
    inc de                                        ; $455a: $13
    ld a, [hl+]                                   ; $455b: $2a
    ld [de], a                                    ; $455c: $12
    inc de                                        ; $455d: $13
    ld a, $16                                     ; $455e: $3e $16
    add e                                         ; $4560: $83
    ld e, a                                       ; $4561: $5f
    ld a, d                                       ; $4562: $7a
    adc $00                                       ; $4563: $ce $00
    ld d, a                                       ; $4565: $57
    dec c                                         ; $4566: $0d
    jr nz, jr_00d_4540                            ; $4567: $20 $d7

    ld h, d                                       ; $4569: $62
    ld l, e                                       ; $456a: $6b
    ld de, $0016                                  ; $456b: $11 $16 $00
    ld c, $08                                     ; $456e: $0e $08
    ld a, $b0                                     ; $4570: $3e $b0

jr_00d_4572:
    ld [hl+], a                                   ; $4572: $22
    inc a                                         ; $4573: $3c
    ld [hl+], a                                   ; $4574: $22
    inc a                                         ; $4575: $3c
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
    add hl, de                                    ; $4586: $19
    dec c                                         ; $4587: $0d
    jr nz, jr_00d_4572                            ; $4588: $20 $e8

    call Call_00d_4243                            ; $458a: $cd $43 $42
    ret                                           ; $458d: $c9


Call_00d_458e:
    ld [hl+], a                                   ; $458e: $22
    add $08                                       ; $458f: $c6 $08
    cp $b0                                        ; $4591: $fe $b0
    ret c                                         ; $4593: $d8

    sub $a0                                       ; $4594: $d6 $a0
    ret                                           ; $4596: $c9


Call_00d_4597:
    ld hl, $c600                                  ; $4597: $21 $00 $c6
    ld c, $08                                     ; $459a: $0e $08

jr_00d_459c:
    ld a, $0b                                     ; $459c: $3e $0b
    ld [hl+], a                                   ; $459e: $22
    ld [hl+], a                                   ; $459f: $22
    ld [hl+], a                                   ; $45a0: $22
    ld [hl+], a                                   ; $45a1: $22
    ld a, $09                                     ; $45a2: $3e $09
    ld [hl+], a                                   ; $45a4: $22
    ld a, $0b                                     ; $45a5: $3e $0b
    ld [hl+], a                                   ; $45a7: $22
    ld [hl+], a                                   ; $45a8: $22
    ld [hl+], a                                   ; $45a9: $22
    ld [hl+], a                                   ; $45aa: $22
    ld [hl+], a                                   ; $45ab: $22
    ld [hl+], a                                   ; $45ac: $22
    ld [hl+], a                                   ; $45ad: $22
    ld [hl+], a                                   ; $45ae: $22
    ld [hl+], a                                   ; $45af: $22
    ld [hl+], a                                   ; $45b0: $22
    ld a, $09                                     ; $45b1: $3e $09
    ld [hl+], a                                   ; $45b3: $22
    ld a, $0b                                     ; $45b4: $3e $0b
    ld [hl+], a                                   ; $45b6: $22
    ld [hl+], a                                   ; $45b7: $22
    ld [hl+], a                                   ; $45b8: $22
    ld [hl+], a                                   ; $45b9: $22
    ld de, $000c                                  ; $45ba: $11 $0c $00
    add hl, de                                    ; $45bd: $19
    dec c                                         ; $45be: $0d
    jr nz, jr_00d_459c                            ; $45bf: $20 $db

    ld c, $08                                     ; $45c1: $0e $08
    ldh a, [$b4]                                  ; $45c3: $f0 $b4

jr_00d_45c5:
    push af                                       ; $45c5: $f5
    call Call_00d_458e                            ; $45c6: $cd $8e $45
    call Call_00d_458e                            ; $45c9: $cd $8e $45
    call Call_00d_458e                            ; $45cc: $cd $8e $45
    call Call_00d_458e                            ; $45cf: $cd $8e $45
    call Call_00d_458e                            ; $45d2: $cd $8e $45
    call Call_00d_458e                            ; $45d5: $cd $8e $45
    call Call_00d_458e                            ; $45d8: $cd $8e $45
    call Call_00d_458e                            ; $45db: $cd $8e $45
    call Call_00d_458e                            ; $45de: $cd $8e $45
    call Call_00d_458e                            ; $45e1: $cd $8e $45
    call Call_00d_458e                            ; $45e4: $cd $8e $45
    call Call_00d_458e                            ; $45e7: $cd $8e $45
    call Call_00d_458e                            ; $45ea: $cd $8e $45
    call Call_00d_458e                            ; $45ed: $cd $8e $45
    call Call_00d_458e                            ; $45f0: $cd $8e $45
    call Call_00d_458e                            ; $45f3: $cd $8e $45
    call Call_00d_458e                            ; $45f6: $cd $8e $45
    call Call_00d_458e                            ; $45f9: $cd $8e $45
    call Call_00d_458e                            ; $45fc: $cd $8e $45
    call Call_00d_458e                            ; $45ff: $cd $8e $45

Call_00d_4602:
    ld de, $000c                                  ; $4602: $11 $0c $00
    add hl, de                                    ; $4605: $19
    pop af                                        ; $4606: $f1
    inc a                                         ; $4607: $3c
    dec c                                         ; $4608: $0d
    jr nz, jr_00d_45c5                            ; $4609: $20 $ba

    call Call_00d_4243                            ; $460b: $cd $43 $42
    ret                                           ; $460e: $c9


Call_00d_460f:
    ldh a, [$96]                                  ; $460f: $f0 $96
    push af                                       ; $4611: $f5
    ld a, $06                                     ; $4612: $3e $06
    ldh [$96], a                                  ; $4614: $e0 $96
    ldh [rSVBK], a                                ; $4616: $e0 $70
    ldh a, [$b0]                                  ; $4618: $f0 $b0
    add h                                         ; $461a: $84
    ld h, a                                       ; $461b: $67
    or a                                          ; $461c: $b7
    jr nz, jr_00d_4628                            ; $461d: $20 $09

    ldh a, [$b2]                                  ; $461f: $f0 $b2
    cp $01                                        ; $4621: $fe $01
    jr z, jr_00d_4634                             ; $4623: $28 $0f

    ld h, a                                       ; $4625: $67
    jr jr_00d_4634                                ; $4626: $18 $0c

jr_00d_4628:
    ldh a, [$b2]                                  ; $4628: $f0 $b2
    cp h                                          ; $462a: $bc
    jr nc, jr_00d_4634                            ; $462b: $30 $07

    ld h, $00                                     ; $462d: $26 $00
    cp $01                                        ; $462f: $fe $01
    jr z, jr_00d_4634                             ; $4631: $28 $01

    inc h                                         ; $4633: $24

jr_00d_4634:
    ld a, l                                       ; $4634: $7d
    push af                                       ; $4635: $f5
    ld a, h                                       ; $4636: $7c
    push af                                       ; $4637: $f5
    ld hl, $d207                                  ; $4638: $21 $07 $d2
    ld a, [hl+]                                   ; $463b: $2a
    ld h, [hl]                                    ; $463c: $66
    ld l, a                                       ; $463d: $6f
    pop af                                        ; $463e: $f1
    add l                                         ; $463f: $85
    ld l, a                                       ; $4640: $6f
    jr nc, jr_00d_4644                            ; $4641: $30 $01

    inc h                                         ; $4643: $24

jr_00d_4644:
    ld h, [hl]                                    ; $4644: $66
    pop af                                        ; $4645: $f1
    ld l, a                                       ; $4646: $6f
    push de                                       ; $4647: $d5
    push hl                                       ; $4648: $e5
    ld l, h                                       ; $4649: $6c
    ld h, $00                                     ; $464a: $26 $00
    ld d, h                                       ; $464c: $54
    ld e, l                                       ; $464d: $5d
    add hl, hl                                    ; $464e: $29
    add hl, de                                    ; $464f: $19
    add hl, hl                                    ; $4650: $29
    add hl, hl                                    ; $4651: $29
    pop de                                        ; $4652: $d1
    ld d, $00                                     ; $4653: $16 $00
    add hl, de                                    ; $4655: $19
    push hl                                       ; $4656: $e5
    ld hl, $d200                                  ; $4657: $21 $00 $d2
    ld a, [hl+]                                   ; $465a: $2a
    ld d, [hl]                                    ; $465b: $56
    ld e, a                                       ; $465c: $5f
    pop hl                                        ; $465d: $e1
    add hl, de                                    ; $465e: $19
    ld de, $0008                                  ; $465f: $11 $08 $00
    add hl, de                                    ; $4662: $19
    ld a, [hl+]                                   ; $4663: $2a
    ld h, [hl]                                    ; $4664: $66
    ld l, a                                       ; $4665: $6f
    pop de                                        ; $4666: $d1
    pop af                                        ; $4667: $f1
    ldh [$96], a                                  ; $4668: $e0 $96
    ldh [rSVBK], a                                ; $466a: $e0 $70
    ret                                           ; $466c: $c9


    nop                                           ; $466d: $00
    nop                                           ; $466e: $00
    nop                                           ; $466f: $00
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    rst $38                                       ; $4672: $ff
    rst $38                                       ; $4673: $ff
    rst $38                                       ; $4674: $ff
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
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    ld bc, $0201                                  ; $46f6: $01 $01 $02
    inc bc                                        ; $46f9: $03
    dec b                                         ; $46fa: $05
    ld b, $0b                                     ; $46fb: $06 $0b
    inc c                                         ; $46fd: $0c
    ld d, $19                                     ; $46fe: $16 $19
    ld d, $19                                     ; $4700: $16 $19
    dec bc                                        ; $4702: $0b
    inc c                                         ; $4703: $0c
    dec b                                         ; $4704: $05
    ld b, $02                                     ; $4705: $06 $02
    inc bc                                        ; $4707: $03
    ld bc, $0001                                  ; $4708: $01 $01 $00
    nop                                           ; $470b: $00
    nop                                           ; $470c: $00
    nop                                           ; $470d: $00
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    ld a, $3e                                     ; $4710: $3e $3e
    ld e, l                                       ; $4712: $5d
    ld h, e                                       ; $4713: $63
    cp a                                          ; $4714: $bf
    pop bc                                        ; $4715: $c1
    ld h, a                                       ; $4716: $67
    sbc c                                         ; $4717: $99
    rst $18                                       ; $4718: $df
    add hl, sp                                    ; $4719: $39
    cp a                                          ; $471a: $bf
    ld a, c                                       ; $471b: $79
    ld a, a                                       ; $471c: $7f
    ld sp, hl                                     ; $471d: $f9
    rst $38                                       ; $471e: $ff
    ld sp, hl                                     ; $471f: $f9
    rst $38                                       ; $4720: $ff
    ld sp, hl                                     ; $4721: $f9
    ld a, a                                       ; $4722: $7f
    ld sp, hl                                     ; $4723: $f9
    cp a                                          ; $4724: $bf
    ld a, c                                       ; $4725: $79
    rst $18                                       ; $4726: $df
    add hl, sp                                    ; $4727: $39
    ld h, a                                       ; $4728: $67
    sbc c                                         ; $4729: $99
    cp a                                          ; $472a: $bf
    pop bc                                        ; $472b: $c1
    ld e, l                                       ; $472c: $5d
    ld h, e                                       ; $472d: $63
    ld a, $3e                                     ; $472e: $3e $3e
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    rst $38                                       ; $4732: $ff
    rst $38                                       ; $4733: $ff
    jp $dfff                                      ; $4734: $c3 $ff $df


    db $e3                                        ; $4737: $e3
    rst $18                                       ; $4738: $df
    db $e3                                        ; $4739: $e3
    rst $18                                       ; $473a: $df
    db $e3                                        ; $473b: $e3
    rst $38                                       ; $473c: $ff
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    add a                                         ; $4744: $87
    rst $38                                       ; $4745: $ff
    cp a                                          ; $4746: $bf
    rst $00                                       ; $4747: $c7
    cp a                                          ; $4748: $bf
    rst $00                                       ; $4749: $c7
    cp a                                          ; $474a: $bf
    rst $00                                       ; $474b: $c7
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rrca                                          ; $4754: $0f
    rst $38                                       ; $4755: $ff
    ld a, a                                       ; $4756: $7f
    adc a                                         ; $4757: $8f
    ld a, a                                       ; $4758: $7f
    adc a                                         ; $4759: $8f
    ld a, a                                       ; $475a: $7f
    adc a                                         ; $475b: $8f
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    ld e, $ff                                     ; $4764: $1e $ff
    cp $1f                                        ; $4766: $fe $1f
    cp $1f                                        ; $4768: $fe $1f
    cp $1f                                        ; $476a: $fe $1f
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    inc a                                         ; $4774: $3c
    rst $38                                       ; $4775: $ff
    db $fd                                        ; $4776: $fd
    ld a, $fd                                     ; $4777: $3e $fd
    ld a, $fd                                     ; $4779: $3e $fd
    ld a, $ff                                     ; $477b: $3e $ff
    rst $38                                       ; $477d: $ff
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
    ld a, b                                       ; $4784: $78
    rst $38                                       ; $4785: $ff
    ei                                            ; $4786: $fb
    ld a, h                                       ; $4787: $7c
    ei                                            ; $4788: $fb
    ld a, h                                       ; $4789: $7c
    ei                                            ; $478a: $fb
    ld a, h                                       ; $478b: $7c
    rst $38                                       ; $478c: $ff
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    rst $38                                       ; $478f: $ff
    rst $38                                       ; $4790: $ff
    rst $38                                       ; $4791: $ff
    rst $38                                       ; $4792: $ff
    rst $38                                       ; $4793: $ff
    ldh a, [rIE]                                  ; $4794: $f0 $ff
    rst $30                                       ; $4796: $f7
    ld hl, sp-$09                                 ; $4797: $f8 $f7
    ld hl, sp-$09                                 ; $4799: $f8 $f7
    ld hl, sp-$01                                 ; $479b: $f8 $ff
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    rst $38                                       ; $47a2: $ff
    rst $38                                       ; $47a3: $ff
    pop hl                                        ; $47a4: $e1
    rst $38                                       ; $47a5: $ff
    rst $28                                       ; $47a6: $ef
    pop af                                        ; $47a7: $f1
    rst $28                                       ; $47a8: $ef
    pop af                                        ; $47a9: $f1
    rst $28                                       ; $47aa: $ef
    pop af                                        ; $47ab: $f1
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    nop                                           ; $47b0: $00
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    nop                                           ; $47b3: $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    ld bc, $0201                                  ; $47b6: $01 $01 $02
    inc bc                                        ; $47b9: $03
    dec b                                         ; $47ba: $05
    ld b, $0b                                     ; $47bb: $06 $0b
    inc c                                         ; $47bd: $0c
    ld d, $19                                     ; $47be: $16 $19
    ld d, $19                                     ; $47c0: $16 $19
    dec bc                                        ; $47c2: $0b
    inc c                                         ; $47c3: $0c
    dec b                                         ; $47c4: $05
    ld b, $02                                     ; $47c5: $06 $02
    inc bc                                        ; $47c7: $03
    ld bc, $0001                                  ; $47c8: $01 $01 $00
    nop                                           ; $47cb: $00
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    ld a, $3e                                     ; $47d0: $3e $3e
    ld e, l                                       ; $47d2: $5d
    ld h, e                                       ; $47d3: $63
    cp a                                          ; $47d4: $bf
    pop bc                                        ; $47d5: $c1
    ld h, a                                       ; $47d6: $67
    sbc c                                         ; $47d7: $99
    rst $18                                       ; $47d8: $df
    add hl, sp                                    ; $47d9: $39
    cp a                                          ; $47da: $bf
    ld a, c                                       ; $47db: $79
    ld a, a                                       ; $47dc: $7f
    ld sp, hl                                     ; $47dd: $f9
    rst $38                                       ; $47de: $ff
    ld sp, hl                                     ; $47df: $f9
    rst $38                                       ; $47e0: $ff
    ld sp, hl                                     ; $47e1: $f9
    ld a, a                                       ; $47e2: $7f
    ld sp, hl                                     ; $47e3: $f9
    cp a                                          ; $47e4: $bf
    ld a, c                                       ; $47e5: $79
    rst $18                                       ; $47e6: $df
    add hl, sp                                    ; $47e7: $39
    ld h, a                                       ; $47e8: $67
    sbc c                                         ; $47e9: $99
    cp a                                          ; $47ea: $bf
    pop bc                                        ; $47eb: $c1
    ld e, l                                       ; $47ec: $5d
    ld h, e                                       ; $47ed: $63
    ld a, $3e                                     ; $47ee: $3e $3e
    nop                                           ; $47f0: $00
    nop                                           ; $47f1: $00
    nop                                           ; $47f2: $00
    nop                                           ; $47f3: $00
    nop                                           ; $47f4: $00
    nop                                           ; $47f5: $00
    nop                                           ; $47f6: $00
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00
    nop                                           ; $47f9: $00
    nop                                           ; $47fa: $00
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
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

    db $b5, $00, $ff, $ec, $ff, $ff, $ec, $10, $e0, $fe, $e1, $f0, $df, $00, $0f, $00
    db $08, $07, $fe, $e1, $ef, $f0, $f6, $fe, $e1, $0f, $f0, $f0, $e5, $55, $00, $aa
    db $00, $3c, $fc, $e9, $b0, $f1, $c3, $ff, $df, $e3, $fe, $e1, $b0, $e9, $e7, $f0
    db $0f, $f7, $fe, $e2, $aa, $e3, $0f, $00, $0f, $66, $a8, $e2, $ef, $f0, $e0, $ed
    db $da, $e3, $f0, $0f, $e0, $e5, $00, $80, $e5, $e0, $ff, $e0, $ff, $7e, $e1, $00
    db $00

    nop                                           ; $4881: $00

    db $7b, $0a, $2a, $fe, $ef, $09, $09, $09, $29, $ff, $e5, $12, $e1, $f0, $0a, $e0
    db $e9, $c0, $f2, $29, $c0, $e7, $b4, $e0, $fd, $fa, $01, $0b, $ff, $e0, $f0, $ff
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $00, $f0, $ff, $e0, $eb, $e0
    db $dd, $80, $d4, $a9, $c6, $40, $d4, $c0, $ff, $c0, $ff, $00, $c0, $ff, $d7, $a0
    db $00, $00

    nop                                           ; $48c4: $00

    db $45, $02, $ff, $f0, $00, $ff, $e8, $e0, $ff, $e0, $fb, $06, $ff, $f0, $2a, $c0
    db $e9, $04, $ff, $e0, $01, $af, $e7, $01, $f0, $e1, $e0, $ff, $80, $e0, $ff, $e0
    db $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $fd, $e0, $dd, $03, $00, $ff, $f0, $80
    db $df, $e0, $ff, $e0, $ff, $e0, $ff, $ff, $e1, $00, $00

    nop                                           ; $4900: $00

    db $80, $2d, $ff, $7f, $ce, $39, $00, $00, $7d, $3b, $16, $33, $4c, $1e, $44, $11
    db $96, $32, $d2, $21, $ec, $10, $44, $08, $fb, $02, $03, $ff, $ee, $04, $14, $15
    db $16, $17, $ff, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $2b, $05, $20, $ff, $ee
    db $06, $e0, $fd, $00, $ff, $e8, $e0, $fd, $0b, $07, $08, $ff, $ee, $09, $c0, $e9
    db $00, $00

    nop                                           ; $4943: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $00, $00

    nop                                           ; $4952: $00

Call_00d_4953:
    ldh a, [$96]                                  ; $4953: $f0 $96
    push af                                       ; $4955: $f5
    ld a, $06                                     ; $4956: $3e $06
    ldh [$96], a                                  ; $4958: $e0 $96
    ldh [rSVBK], a                                ; $495a: $e0 $70
    ld hl, $d200                                  ; $495c: $21 $00 $d2
    ld a, [hl+]                                   ; $495f: $2a
    ld h, [hl]                                    ; $4960: $66
    ld l, a                                       ; $4961: $6f
    ld a, [hl+]                                   ; $4962: $2a
    ld h, [hl]                                    ; $4963: $66
    ld l, a                                       ; $4964: $6f
    pop af                                        ; $4965: $f1
    ldh [$96], a                                  ; $4966: $e0 $96
    ldh [rSVBK], a                                ; $4968: $e0 $70
    jp hl                                         ; $496a: $e9


Call_00d_496b:
    ldh a, [$96]                                  ; $496b: $f0 $96
    push af                                       ; $496d: $f5
    ld a, $06                                     ; $496e: $3e $06
    ldh [$96], a                                  ; $4970: $e0 $96
    ldh [rSVBK], a                                ; $4972: $e0 $70
    ld hl, $d200                                  ; $4974: $21 $00 $d2
    ld a, [hl+]                                   ; $4977: $2a
    ld h, [hl]                                    ; $4978: $66
    ld l, a                                       ; $4979: $6f
    inc hl                                        ; $497a: $23
    inc hl                                        ; $497b: $23
    ld a, [hl+]                                   ; $497c: $2a
    ld h, [hl]                                    ; $497d: $66
    ld l, a                                       ; $497e: $6f
    pop af                                        ; $497f: $f1
    ldh [$96], a                                  ; $4980: $e0 $96
    ldh [rSVBK], a                                ; $4982: $e0 $70
    jp hl                                         ; $4984: $e9


Call_00d_4985:
    push af                                       ; $4985: $f5
    ld hl, $4944                                  ; $4986: $21 $44 $49
    ld de, $d1a0                                  ; $4989: $11 $a0 $d1
    call Call_000_1f2f                            ; $498c: $cd $2f $1f
    ld hl, $4919                                  ; $498f: $21 $19 $49
    ld de, $d4a0                                  ; $4992: $11 $a0 $d4
    call Call_000_1f2f                            ; $4995: $cd $2f $1f
    pop af                                        ; $4998: $f1
    ret                                           ; $4999: $c9


    ld h, $00                                     ; $499a: $26 $00
    ld l, $00                                     ; $499c: $2e $00
    call Call_00d_460f                            ; $499e: $cd $0f $46
    ld de, $d600                                  ; $49a1: $11 $00 $d6
    call Call_000_1f2f                            ; $49a4: $cd $2f $1f
    ld hl, $d600                                  ; $49a7: $21 $00 $d6
    ld de, $b070                                  ; $49aa: $11 $70 $b0
    ld c, $09                                     ; $49ad: $0e $09
    call Call_000_0468                            ; $49af: $cd $68 $04
    ld a, $07                                     ; $49b2: $3e $07
    ld hl, $d4c1                                  ; $49b4: $21 $c1 $d4
    ld bc, $001e                                  ; $49b7: $01 $1e $00
    ld [hl+], a                                   ; $49ba: $22
    inc de                                        ; $49bb: $13
    inc a                                         ; $49bc: $3c
    ld [hl+], a                                   ; $49bd: $22
    inc de                                        ; $49be: $13
    inc a                                         ; $49bf: $3c
    ld [hl], a                                    ; $49c0: $77
    inc de                                        ; $49c1: $13
    inc a                                         ; $49c2: $3c
    add hl, bc                                    ; $49c3: $09
    ld [hl+], a                                   ; $49c4: $22
    inc de                                        ; $49c5: $13
    inc a                                         ; $49c6: $3c
    ld [hl+], a                                   ; $49c7: $22
    inc de                                        ; $49c8: $13
    inc a                                         ; $49c9: $3c
    ld [hl], a                                    ; $49ca: $77
    inc de                                        ; $49cb: $13
    inc a                                         ; $49cc: $3c
    add hl, bc                                    ; $49cd: $09
    ld [hl+], a                                   ; $49ce: $22
    inc de                                        ; $49cf: $13
    inc a                                         ; $49d0: $3c
    ld [hl+], a                                   ; $49d1: $22
    inc de                                        ; $49d2: $13
    inc a                                         ; $49d3: $3c
    ld [hl], a                                    ; $49d4: $77
    ld h, $00                                     ; $49d5: $26 $00
    ld l, $06                                     ; $49d7: $2e $06
    call Call_00d_460f                            ; $49d9: $cd $0f $46
    ld d, h                                       ; $49dc: $54
    ld e, l                                       ; $49dd: $5d
    ld hl, $d1c1                                  ; $49de: $21 $c1 $d1
    ld bc, $001e                                  ; $49e1: $01 $1e $00
    ld a, [de]                                    ; $49e4: $1a
    ld [hl+], a                                   ; $49e5: $22
    inc de                                        ; $49e6: $13
    ld a, [de]                                    ; $49e7: $1a
    ld [hl+], a                                   ; $49e8: $22
    inc de                                        ; $49e9: $13
    ld a, [de]                                    ; $49ea: $1a
    ld [hl], a                                    ; $49eb: $77
    inc de                                        ; $49ec: $13
    add hl, bc                                    ; $49ed: $09
    ld a, [de]                                    ; $49ee: $1a
    ld [hl+], a                                   ; $49ef: $22
    inc de                                        ; $49f0: $13
    ld a, [de]                                    ; $49f1: $1a
    ld [hl+], a                                   ; $49f2: $22
    inc de                                        ; $49f3: $13
    ld a, [de]                                    ; $49f4: $1a
    ld [hl], a                                    ; $49f5: $77
    inc de                                        ; $49f6: $13
    add hl, bc                                    ; $49f7: $09
    ld a, [de]                                    ; $49f8: $1a
    ld [hl+], a                                   ; $49f9: $22
    inc de                                        ; $49fa: $13
    ld a, [de]                                    ; $49fb: $1a
    ld [hl+], a                                   ; $49fc: $22
    inc de                                        ; $49fd: $13
    ld a, [de]                                    ; $49fe: $1a
    ld [hl], a                                    ; $49ff: $77
    ret                                           ; $4a00: $c9


Call_00d_4a01:
    ld hl, $4882                                  ; $4a01: $21 $82 $48
    ld de, $d000                                  ; $4a04: $11 $00 $d0
    call Call_000_1f2f                            ; $4a07: $cd $2f $1f
    ld hl, $48c5                                  ; $4a0a: $21 $c5 $48
    ld de, $d300                                  ; $4a0d: $11 $00 $d3
    call Call_000_1f2f                            ; $4a10: $cd $2f $1f
    ld hl, $4944                                  ; $4a13: $21 $44 $49
    ld de, $d600                                  ; $4a16: $11 $00 $d6
    call Call_000_1f2f                            ; $4a19: $cd $2f $1f
    ld hl, $4919                                  ; $4a1c: $21 $19 $49
    ld de, $d900                                  ; $4a1f: $11 $00 $d9
    call Call_000_1f2f                            ; $4a22: $cd $2f $1f
    ld hl, $d620                                  ; $4a25: $21 $20 $d6
    ld de, $d1e0                                  ; $4a28: $11 $e0 $d1
    ld c, $02                                     ; $4a2b: $0e $02
    call Call_000_03eb                            ; $4a2d: $cd $eb $03
    ld hl, $d920                                  ; $4a30: $21 $20 $d9
    ld de, $d4e0                                  ; $4a33: $11 $e0 $d4
    ld c, $02                                     ; $4a36: $0e $02
    call Call_000_03eb                            ; $4a38: $cd $eb $03
    call Call_00d_4a90                            ; $4a3b: $cd $90 $4a
    call Call_000_2e3b                            ; $4a3e: $cd $3b $2e
    ld hl, $d600                                  ; $4a41: $21 $00 $d6
    ld de, $d1c0                                  ; $4a44: $11 $c0 $d1
    ld c, $04                                     ; $4a47: $0e $04
    call Call_000_03eb                            ; $4a49: $cd $eb $03
    ld hl, $d900                                  ; $4a4c: $21 $00 $d9
    ld de, $d4c0                                  ; $4a4f: $11 $c0 $d4
    ld c, $04                                     ; $4a52: $0e $04
    call Call_000_03eb                            ; $4a54: $cd $eb $03
    ld hl, $d680                                  ; $4a57: $21 $80 $d6
    ld de, $d200                                  ; $4a5a: $11 $00 $d2
    ld c, $02                                     ; $4a5d: $0e $02
    call Call_000_03eb                            ; $4a5f: $cd $eb $03
    ld hl, $d980                                  ; $4a62: $21 $80 $d9
    ld de, $d500                                  ; $4a65: $11 $00 $d5
    ld c, $02                                     ; $4a68: $0e $02
    call Call_000_03eb                            ; $4a6a: $cd $eb $03
    call Call_00d_4a90                            ; $4a6d: $cd $90 $4a
    call Call_000_2e3b                            ; $4a70: $cd $3b $2e
    ld hl, $d600                                  ; $4a73: $21 $00 $d6
    ld de, $d1a0                                  ; $4a76: $11 $a0 $d1
    ld c, $0a                                     ; $4a79: $0e $0a
    call Call_000_03eb                            ; $4a7b: $cd $eb $03
    ld hl, $d900                                  ; $4a7e: $21 $00 $d9
    ld de, $d4a0                                  ; $4a81: $11 $a0 $d4
    ld c, $0a                                     ; $4a84: $0e $0a
    call Call_000_03eb                            ; $4a86: $cd $eb $03
    call Call_00d_4a90                            ; $4a89: $cd $90 $4a
    call Call_000_2e3b                            ; $4a8c: $cd $3b $2e
    ret                                           ; $4a8f: $c9


Call_00d_4a90:
    ld hl, $d1a0                                  ; $4a90: $21 $a0 $d1
    ld de, $b9a0                                  ; $4a93: $11 $a0 $b9
    ld c, $0a                                     ; $4a96: $0e $0a
    call Call_000_0468                            ; $4a98: $cd $68 $04
    ld hl, $d4a0                                  ; $4a9b: $21 $a0 $d4
    ld de, $99a0                                  ; $4a9e: $11 $a0 $99
    ld c, $0a                                     ; $4aa1: $0e $0a
    call Call_000_0468                            ; $4aa3: $cd $68 $04
    ret                                           ; $4aa6: $c9


    call Call_00d_707a                            ; $4aa7: $cd $7a $70
    ld a, [$c834]                                 ; $4aaa: $fa $34 $c8
    call Call_00d_70a9                            ; $4aad: $cd $a9 $70
    ld bc, $4acc                                  ; $4ab0: $01 $cc $4a
    call Call_00d_4007                            ; $4ab3: $cd $07 $40
    ld c, $08                                     ; $4ab6: $0e $08
    call Call_000_25af                            ; $4ab8: $cd $af $25
    call Call_000_2625                            ; $4abb: $cd $25 $26
    call Call_00d_41de                            ; $4abe: $cd $de $41
    push af                                       ; $4ac1: $f5
    ld c, $08                                     ; $4ac2: $0e $08
    call Call_000_25a1                            ; $4ac4: $cd $a1 $25
    call Call_000_2625                            ; $4ac7: $cd $25 $26
    pop af                                        ; $4aca: $f1
    ret                                           ; $4acb: $c9


    db $f7, $6f, $70, $70, $4c, $4b, $86, $4c

    adc [hl]                                      ; $4ad4: $8e
    ld c, h                                       ; $4ad5: $4c
    adc [hl]                                      ; $4ad6: $8e
    ld c, h                                       ; $4ad7: $4c
    rst $20                                       ; $4ad8: $e7
    ld c, h                                       ; $4ad9: $4c
    ld b, b                                       ; $4ada: $40
    ld c, l                                       ; $4adb: $4d
    ld c, c                                       ; $4adc: $49
    ld c, l                                       ; $4add: $4d
    sbc c                                         ; $4ade: $99
    ld c, l                                       ; $4adf: $4d
    adc h                                         ; $4ae0: $8c
    ld d, l                                       ; $4ae1: $55

    db $8c, $55

    ld a, [hl]                                    ; $4ae4: $7e
    ld e, c                                       ; $4ae5: $59
    ld [hl], e                                    ; $4ae6: $73
    ld e, l                                       ; $4ae7: $5d
    ld a, h                                       ; $4ae8: $7c
    ld e, l                                       ; $4ae9: $5d
    call z, $ec5d                                 ; $4aea: $cc $5d $ec
    ld e, l                                       ; $4aed: $5d
    db $ec                                        ; $4aee: $ec
    ld e, l                                       ; $4aef: $5d
    ld c, h                                       ; $4af0: $4c
    ld h, c                                       ; $4af1: $61
    cp e                                          ; $4af2: $bb
    ld h, h                                       ; $4af3: $64
    call nz, $1464                                ; $4af4: $c4 $64 $14
    ld h, l                                       ; $4af7: $65
    inc [hl]                                      ; $4af8: $34
    ld h, l                                       ; $4af9: $65

    db $34, $65, $cf, $67

    adc d                                         ; $4afe: $8a
    ld l, d                                       ; $4aff: $6a

    db $93, $6a, $e3, $6a

    inc bc                                        ; $4b04: $03
    ld l, e                                       ; $4b05: $6b

    db $03, $6b, $3b, $6d

    ld a, [hl]                                    ; $4b0a: $7e
    ld l, a                                       ; $4b0b: $6f

    db $87, $6f, $d7, $6f

    cp c                                          ; $4b10: $b9
    ld c, l                                       ; $4b11: $4d
    cp c                                          ; $4b12: $b9
    ld c, l                                       ; $4b13: $4d
    ld h, a                                       ; $4b14: $67
    ld d, c                                       ; $4b15: $51
    inc de                                        ; $4b16: $13
    ld d, l                                       ; $4b17: $55
    inc e                                         ; $4b18: $1c
    ld d, l                                       ; $4b19: $55
    ld l, h                                       ; $4b1a: $6c
    ld d, l                                       ; $4b1b: $55
    cp c                                          ; $4b1c: $b9
    ld c, l                                       ; $4b1d: $4d
    cp c                                          ; $4b1e: $b9
    ld c, l                                       ; $4b1f: $4d
    ld h, a                                       ; $4b20: $67
    ld d, c                                       ; $4b21: $51
    inc de                                        ; $4b22: $13
    ld d, l                                       ; $4b23: $55
    inc e                                         ; $4b24: $1c
    ld d, l                                       ; $4b25: $55
    ld l, h                                       ; $4b26: $6c
    ld d, l                                       ; $4b27: $55
    cp c                                          ; $4b28: $b9
    ld c, l                                       ; $4b29: $4d
    cp c                                          ; $4b2a: $b9
    ld c, l                                       ; $4b2b: $4d
    ld h, a                                       ; $4b2c: $67
    ld d, c                                       ; $4b2d: $51
    inc de                                        ; $4b2e: $13
    ld d, l                                       ; $4b2f: $55
    inc e                                         ; $4b30: $1c
    ld d, l                                       ; $4b31: $55
    ld l, h                                       ; $4b32: $6c
    ld d, l                                       ; $4b33: $55
    cp c                                          ; $4b34: $b9
    ld c, l                                       ; $4b35: $4d
    cp c                                          ; $4b36: $b9
    ld c, l                                       ; $4b37: $4d
    ld h, a                                       ; $4b38: $67
    ld d, c                                       ; $4b39: $51
    inc de                                        ; $4b3a: $13
    ld d, l                                       ; $4b3b: $55
    inc e                                         ; $4b3c: $1c
    ld d, l                                       ; $4b3d: $55
    ld l, h                                       ; $4b3e: $6c
    ld d, l                                       ; $4b3f: $55
    cp c                                          ; $4b40: $b9
    ld c, l                                       ; $4b41: $4d

    db $b9, $4d, $67, $51

    inc de                                        ; $4b46: $13
    ld d, l                                       ; $4b47: $55

    db $1c, $55, $6c, $55, $2f, $07, $0f, $0f, $08, $fe, $e2, $09, $fe, $e2, $f4, $e1
    db $ff, $19, $17, $19, $1d, $13, $1f, $13, $0f, $ff, $1f, $06, $0f, $00, $00, $c6
    db $ef, $ad, $ff, $7b, $d7, $39, $eb, $1d, $b7, $cd, $ff, $ff, $c5, $bf, $c5, $f7
    db $0d, $db, $3d, $ff, $ff, $f9, $ff, $f9, $8f, $89, $8f, $89, $07, $ef, $8f, $03
    db $07, $00, $ff, $e0, $01, $83, $83, $ff, $82, $9b, $be, $66, $ff, $bb, $c7, $7f
    db $ff, $83, $ff, $33, $df, $33, $ff, $03, $7d, $ff, $83, $df, $e1, $bb, $fd, $9f
    db $bf, $03, $ff, $87, $00, $00, $03, $07, $85, $ce, $4b, $ff, $fc, $b6, $79, $dd
    db $33, $7b, $87, $b7, $ff, $cf, $7e, $cf, $7c, $4e, $7c, $4c, $7c, $bb, $cc, $fc
    db $fe, $e1, $fc, $98, $fc, $c2, $e1, $82, $ff, $c3, $c3, $c6, $c5, $c6, $c7, $cc
    db $8b, $ff, $cc, $0f, $88, $0f, $18, $16, $19, $1f, $ff, $11, $1f, $11, $17, $19
    db $0b, $1d, $07, $fd, $0f, $a0, $e1, $b8, $fc, $54, $ee, $be, $46, $ff, $fe, $06
    db $fa, $07, $7f, $93, $df, $b3, $ff, $b5, $fb, $ff, $f9, $ef, $f9, $8a, $8d, $ff
    db $87, $8c, $87, $84, $83, $87, $01, $83, $fc, $80, $e1, $fc, $e3, $18, $3c, $64
    db $fe, $be, $c3, $ff, $d5, $bb, $7f, $b9, $75, $bb, $ff, $83, $bf, $b7, $cf, $ce
    db $ff, $bc, $fe, $a0, $e1, $04, $bf, $0e, $0a, $1f, $17, $1b, $1f, $30, $e0, $6f
    db $ff, $f3, $bf, $c3, $7e, $83, $ef, $32, $df, $ff, $32, $7f, $82, $be, $c3, $6f
    db $f3, $3f, $f7, $7f, $0e, $1f, $c0, $e6, $01, $31, $7b, $ca, $ff, $ff, $77, $8e
    db $f7, $6c, $af, $5c, $fe, $ff, $3f, $dd, $3e, $ff, $0c, $be, $cd, $7f, $f7, $ff
    db $3b, $7f, $a0, $e5, $c0, $e0, $20, $f0, $9f, $f0, $30, $b0, $70, $70, $fa, $e0
    db $f8, $e3, $e0, $7f, $f0, $c0, $e0, $80, $c0, $00, $00, $00, $00

    nop                                           ; $4c85: $00

    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    rrca                                          ; $4c8e: $0f
    ld d, l                                       ; $4c8f: $55
    nop                                           ; $4c90: $00
    xor d                                         ; $4c91: $aa
    nop                                           ; $4c92: $00
    db $fc                                        ; $4c93: $fc
    rst $38                                       ; $4c94: $ff
    db $fc                                        ; $4c95: $fc
    rst $38                                       ; $4c96: $ff
    db $fc                                        ; $4c97: $fc
    rst $38                                       ; $4c98: $ff
    db $fc                                        ; $4c99: $fc
    rst $38                                       ; $4c9a: $ff
    nop                                           ; $4c9b: $00
    db $fc                                        ; $4c9c: $fc
    rst $38                                       ; $4c9d: $ff
    db $fc                                        ; $4c9e: $fc
    rst $38                                       ; $4c9f: $ff
    db $fc                                        ; $4ca0: $fc
    rst $38                                       ; $4ca1: $ff
    db $fc                                        ; $4ca2: $fc
    rst $38                                       ; $4ca3: $ff
    db $fc                                        ; $4ca4: $fc
    rst $38                                       ; $4ca5: $ff
    db $fc                                        ; $4ca6: $fc
    rst $38                                       ; $4ca7: $ff
    db $fc                                        ; $4ca8: $fc
    rst $38                                       ; $4ca9: $ff
    db $fc                                        ; $4caa: $fc
    rst $38                                       ; $4cab: $ff
    nop                                           ; $4cac: $00
    db $fc                                        ; $4cad: $fc
    rst $38                                       ; $4cae: $ff
    db $fc                                        ; $4caf: $fc
    rst $38                                       ; $4cb0: $ff
    db $fc                                        ; $4cb1: $fc
    rst $38                                       ; $4cb2: $ff
    db $fc                                        ; $4cb3: $fc
    rst $38                                       ; $4cb4: $ff
    db $fc                                        ; $4cb5: $fc
    rst $38                                       ; $4cb6: $ff
    db $fc                                        ; $4cb7: $fc
    rst $38                                       ; $4cb8: $ff
    db $fc                                        ; $4cb9: $fc
    rst $38                                       ; $4cba: $ff
    db $fc                                        ; $4cbb: $fc
    rst $38                                       ; $4cbc: $ff
    nop                                           ; $4cbd: $00
    db $fc                                        ; $4cbe: $fc
    rst $38                                       ; $4cbf: $ff
    db $fc                                        ; $4cc0: $fc
    rst $38                                       ; $4cc1: $ff
    db $fc                                        ; $4cc2: $fc
    rst $38                                       ; $4cc3: $ff
    db $fc                                        ; $4cc4: $fc
    rst $38                                       ; $4cc5: $ff
    db $fc                                        ; $4cc6: $fc
    rst $38                                       ; $4cc7: $ff
    db $fc                                        ; $4cc8: $fc
    rst $38                                       ; $4cc9: $ff
    db $fc                                        ; $4cca: $fc
    rst $38                                       ; $4ccb: $ff
    db $fc                                        ; $4ccc: $fc
    rst $38                                       ; $4ccd: $ff
    nop                                           ; $4cce: $00
    db $fc                                        ; $4ccf: $fc
    rst $38                                       ; $4cd0: $ff
    db $fc                                        ; $4cd1: $fc
    rst $38                                       ; $4cd2: $ff
    db $fc                                        ; $4cd3: $fc
    rst $38                                       ; $4cd4: $ff
    db $fc                                        ; $4cd5: $fc
    rst $38                                       ; $4cd6: $ff
    db $fc                                        ; $4cd7: $fc
    rst $38                                       ; $4cd8: $ff
    db $fc                                        ; $4cd9: $fc
    rst $38                                       ; $4cda: $ff
    db $fc                                        ; $4cdb: $fc
    rst $38                                       ; $4cdc: $ff
    db $fc                                        ; $4cdd: $fc
    rst $38                                       ; $4cde: $ff
    nop                                           ; $4cdf: $00
    db $fc                                        ; $4ce0: $fc
    rst $38                                       ; $4ce1: $ff
    ldh a, [$ef]                                  ; $4ce2: $f0 $ef
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    rrca                                          ; $4ce7: $0f
    ld d, l                                       ; $4ce8: $55
    nop                                           ; $4ce9: $00
    xor d                                         ; $4cea: $aa
    nop                                           ; $4ceb: $00
    db $fc                                        ; $4cec: $fc
    rst $38                                       ; $4ced: $ff
    db $fc                                        ; $4cee: $fc
    rst $38                                       ; $4cef: $ff
    db $fc                                        ; $4cf0: $fc
    rst $38                                       ; $4cf1: $ff
    db $fc                                        ; $4cf2: $fc
    rst $38                                       ; $4cf3: $ff
    nop                                           ; $4cf4: $00
    db $fc                                        ; $4cf5: $fc
    rst $38                                       ; $4cf6: $ff
    db $fc                                        ; $4cf7: $fc
    rst $38                                       ; $4cf8: $ff
    db $fc                                        ; $4cf9: $fc
    rst $38                                       ; $4cfa: $ff
    db $fc                                        ; $4cfb: $fc
    rst $38                                       ; $4cfc: $ff
    db $fc                                        ; $4cfd: $fc
    rst $38                                       ; $4cfe: $ff
    db $fc                                        ; $4cff: $fc
    rst $38                                       ; $4d00: $ff
    db $fc                                        ; $4d01: $fc
    rst $38                                       ; $4d02: $ff
    db $fc                                        ; $4d03: $fc
    rst $38                                       ; $4d04: $ff
    nop                                           ; $4d05: $00
    db $fc                                        ; $4d06: $fc
    rst $38                                       ; $4d07: $ff
    db $fc                                        ; $4d08: $fc
    rst $38                                       ; $4d09: $ff
    db $fc                                        ; $4d0a: $fc
    rst $38                                       ; $4d0b: $ff
    db $fc                                        ; $4d0c: $fc
    rst $38                                       ; $4d0d: $ff
    db $fc                                        ; $4d0e: $fc
    rst $38                                       ; $4d0f: $ff
    db $fc                                        ; $4d10: $fc
    rst $38                                       ; $4d11: $ff
    db $fc                                        ; $4d12: $fc
    rst $38                                       ; $4d13: $ff
    db $fc                                        ; $4d14: $fc
    rst $38                                       ; $4d15: $ff
    nop                                           ; $4d16: $00
    db $fc                                        ; $4d17: $fc
    rst $38                                       ; $4d18: $ff
    db $fc                                        ; $4d19: $fc
    rst $38                                       ; $4d1a: $ff
    db $fc                                        ; $4d1b: $fc
    rst $38                                       ; $4d1c: $ff
    db $fc                                        ; $4d1d: $fc
    rst $38                                       ; $4d1e: $ff
    db $fc                                        ; $4d1f: $fc
    rst $38                                       ; $4d20: $ff
    db $fc                                        ; $4d21: $fc
    rst $38                                       ; $4d22: $ff
    db $fc                                        ; $4d23: $fc
    rst $38                                       ; $4d24: $ff
    db $fc                                        ; $4d25: $fc
    rst $38                                       ; $4d26: $ff
    nop                                           ; $4d27: $00
    db $fc                                        ; $4d28: $fc
    rst $38                                       ; $4d29: $ff
    db $fc                                        ; $4d2a: $fc
    rst $38                                       ; $4d2b: $ff
    db $fc                                        ; $4d2c: $fc
    rst $38                                       ; $4d2d: $ff
    db $fc                                        ; $4d2e: $fc
    rst $38                                       ; $4d2f: $ff
    db $fc                                        ; $4d30: $fc
    rst $38                                       ; $4d31: $ff
    db $fc                                        ; $4d32: $fc
    rst $38                                       ; $4d33: $ff
    db $fc                                        ; $4d34: $fc
    rst $38                                       ; $4d35: $ff
    db $fc                                        ; $4d36: $fc
    rst $38                                       ; $4d37: $ff
    nop                                           ; $4d38: $00
    db $fc                                        ; $4d39: $fc
    rst $38                                       ; $4d3a: $ff
    ldh a, [$ef]                                  ; $4d3b: $f0 $ef
    nop                                           ; $4d3d: $00
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    ld a, [bc]                                    ; $4d40: $0a
    ld a, [hl+]                                   ; $4d41: $2a
    ld a, [bc]                                    ; $4d42: $0a
    ld a, [hl+]                                   ; $4d43: $2a
    ld a, [bc]                                    ; $4d44: $0a
    ld a, [hl+]                                   ; $4d45: $2a
    ld a, [bc]                                    ; $4d46: $0a
    ld a, [hl+]                                   ; $4d47: $2a
    ld a, [bc]                                    ; $4d48: $0a
    inc c                                         ; $4d49: $0c
    inc c                                         ; $4d4a: $0c
    inc c                                         ; $4d4b: $0c
    inc c                                         ; $4d4c: $0c
    inc c                                         ; $4d4d: $0c
    inc c                                         ; $4d4e: $0c
    inc c                                         ; $4d4f: $0c
    inc c                                         ; $4d50: $0c
    inc c                                         ; $4d51: $0c
    inc c                                         ; $4d52: $0c
    inc c                                         ; $4d53: $0c
    inc c                                         ; $4d54: $0c
    inc c                                         ; $4d55: $0c
    inc c                                         ; $4d56: $0c
    inc c                                         ; $4d57: $0c
    inc c                                         ; $4d58: $0c
    inc c                                         ; $4d59: $0c
    inc c                                         ; $4d5a: $0c
    inc c                                         ; $4d5b: $0c
    inc c                                         ; $4d5c: $0c
    inc c                                         ; $4d5d: $0c
    inc c                                         ; $4d5e: $0c
    inc c                                         ; $4d5f: $0c
    inc c                                         ; $4d60: $0c
    inc c                                         ; $4d61: $0c
    inc c                                         ; $4d62: $0c
    inc c                                         ; $4d63: $0c
    inc c                                         ; $4d64: $0c
    inc c                                         ; $4d65: $0c
    inc c                                         ; $4d66: $0c
    inc c                                         ; $4d67: $0c
    inc c                                         ; $4d68: $0c
    inc c                                         ; $4d69: $0c
    inc c                                         ; $4d6a: $0c
    inc c                                         ; $4d6b: $0c
    inc c                                         ; $4d6c: $0c
    inc c                                         ; $4d6d: $0c
    inc c                                         ; $4d6e: $0c
    inc c                                         ; $4d6f: $0c
    inc c                                         ; $4d70: $0c
    inc c                                         ; $4d71: $0c
    inc c                                         ; $4d72: $0c
    inc c                                         ; $4d73: $0c
    inc c                                         ; $4d74: $0c
    inc c                                         ; $4d75: $0c
    inc c                                         ; $4d76: $0c
    inc c                                         ; $4d77: $0c
    inc c                                         ; $4d78: $0c
    inc c                                         ; $4d79: $0c
    inc c                                         ; $4d7a: $0c
    inc c                                         ; $4d7b: $0c
    inc c                                         ; $4d7c: $0c
    inc c                                         ; $4d7d: $0c
    inc c                                         ; $4d7e: $0c
    inc c                                         ; $4d7f: $0c
    inc c                                         ; $4d80: $0c
    inc c                                         ; $4d81: $0c
    inc c                                         ; $4d82: $0c
    inc c                                         ; $4d83: $0c
    inc c                                         ; $4d84: $0c
    inc c                                         ; $4d85: $0c
    inc c                                         ; $4d86: $0c
    inc c                                         ; $4d87: $0c
    inc c                                         ; $4d88: $0c
    inc c                                         ; $4d89: $0c
    inc c                                         ; $4d8a: $0c
    inc c                                         ; $4d8b: $0c
    inc c                                         ; $4d8c: $0c
    inc c                                         ; $4d8d: $0c
    inc c                                         ; $4d8e: $0c
    inc c                                         ; $4d8f: $0c
    inc c                                         ; $4d90: $0c
    inc c                                         ; $4d91: $0c
    inc c                                         ; $4d92: $0c
    inc c                                         ; $4d93: $0c
    inc c                                         ; $4d94: $0c
    inc c                                         ; $4d95: $0c
    inc c                                         ; $4d96: $0c
    inc c                                         ; $4d97: $0c
    inc c                                         ; $4d98: $0c
    rst $38                                       ; $4d99: $ff
    ld a, a                                       ; $4d9a: $7f
    sub b                                         ; $4d9b: $90
    ld a, a                                       ; $4d9c: $7f
    call nc, Call_00d_4602                        ; $4d9d: $d4 $02 $46
    ld [bc], a                                    ; $4da0: $02
    rra                                           ; $4da1: $1f
    jr @+$48                                      ; $4da2: $18 $46

    ld [bc], a                                    ; $4da4: $02
    add b                                         ; $4da5: $80
    add hl, bc                                    ; $4da6: $09
    nop                                           ; $4da7: $00
    nop                                           ; $4da8: $00
    sbc $33                                       ; $4da9: $de $33
    call z, Call_000_0803                         ; $4dab: $cc $03 $08
    inc bc                                        ; $4dae: $03
    ld b, [hl]                                    ; $4daf: $46
    ld [bc], a                                    ; $4db0: $02
    adc e                                         ; $4db1: $8b
    ld hl, $04ca                                  ; $4db2: $21 $ca $04
    or l                                          ; $4db5: $b5
    ld de, $03ff                                  ; $4db6: $11 $ff $03

    db $fb, $00, $ff, $fe, $fa, $fc, $00, $f1, $03, $e7, $ff, $0f, $ec, $0c, $e8, $0f
    db $ef, $07, $e7, $bf, $07, $f7, $06, $f7, $04, $f4, $fe, $f9, $07, $c7, $f7, $00
    db $f0, $ae, $fc, $fe, $ff, $88, $e5, $c7, $0f, $ff, $1c, $3f, $70, $ff, $c3, $ff
    db $0c, $ff, $ef, $31, $e7, $c6, $ff, $ff, $e0, $80, $ff, $00, $fe, $ff, $e4, $30
    db $70, $78, $c0, $fc, $80, $f4, $fe, $fe, $e4, $e4, $80, $a4, $80, $c4, $80, $8c
    db $ef, $80, $fc, $84, $ff, $de, $e1, $f0, $03, $f7, $ff, $17, $e4, $03, $e6, $07
    db $ee, $0f, $e8, $bf, $0f, $e9, $07, $ed, $0f, $eb, $44, $e0, $ef, $ff, $11, $e3
    db $09, $f1, $00, $fd, $00, $fc, $bf, $02, $fc, $00, $fe, $01, $fe, $88, $ff, $ff
    db $fd, $c0, $5f, $e0, $01, $ff, $c6, $ff, $18, $ff, $1f, $63, $ff, $8c, $39, $31
    db $80, $e1, $4c, $e0, $80, $f0, $fd, $e4, $80, $ec, $14, $08, $80, $c1, $cf, $ef
    db $ff, $ff, $75, $ff, $c9, $ff, $91, $fe, $b9, $ff, $ff, $60, $ff, $40, $ff, $c0
    db $df, $68, $ff, $ff, $70, $ff, $a0, $ef, $f4, $ff, $b8, $ff, $77, $d8, $3d, $6e
    db $1f, $3f, $9b, $1d, $ff, $24, $75, $47, $67, $40, $60, $60, $60, $e2, $f8, $cc
    db $00, $18, $e0, $10, $e0, $82, $e2, $03, $ff, $8c, $fe, $f6, $e0, $c6, $fe, $18
    db $f9, $61, $e7, $86, $7f, $fc, $fa, $f0, $e8, $c0, $c0, $40, $fe, $e4, $7f, $43
    db $c3, $47, $c0, $4f, $c0, $4e, $fe, $e6, $ff, $4a, $c0, $4c, $c0, $48, $c0, $4f
    db $c8, $fe, $00, $e1, $6c, $fe, $b6, $db, $ff, $93, $ff, $ff, $07, $ff, $04, $ff
    db $81, $ff, $e7, $bf, $ff, $be, $4f, $d9, $be, $73, $de, $3a, $f6, $ff, $26, $e4
    db $26, $e0, $30, $d0, $38, $e8, $ff, $18, $f8, $09, $5b, $bf, $fe, $ff, $e7, $7f
    db $7f, $8c, $ce, $08, $0c, $08, $08, $80, $f0, $dd, $63, $97, $c0, $01, $ff, $06
    db $88, $e3, $9c, $1a, $3f, $70, $68, $c0, $a0, $00, $80, $86, $c5, $7e, $c3, $bf
    db $03, $83, $87, $c6, $c7, $44, $fe, $e7, $c6, $fc, $fc, $e4, $80, $c2, $7f, $40
    db $3f, $00, $3f, $20, $ff, $9f, $90, $8f, $80, $cf, $c0, $6f, $e1, $ff, $2e, $e2
    db $ac, $60, $6d, $c1, $dd, $c1, $ff, $ed, $e1, $6d, $21, $6d, $20, $2d, $42, $ff
    db $ec, $c1, $ee, $84, $83, $32, $39, $48, $7f, $cd, $84, $c5, $44, $4d, $48, $78
    db $00, $ed, $ff, $fe, $ff, $ff, $19, $f9, $60, $e7, $86, $ff, $9f, $1b, $71, $6b
    db $c0, $a1, $00, $80, $ff, $0e, $0e, $1f, $03, $1f, $01, $0e, $02, $ff, $00, $00
    db $0f, $1f, $31, $70, $7f, $c3, $ef, $8f, $80, $ff, $9f, $64, $c0, $ff, $ff, $1f
    db $af, $ff, $0d, $df, $09, $fe, $e3, $9f, $fe, $e0, $1f, $ff, $09, $3f, $09, $ff
    db $09, $ff, $ff, $01, $ef, $03, $01, $f1, $00, $20, $c4, $20, $c0, $8e, $ff, $1f
    db $3d, $73, $5e, $e1, $bf, $c1, $ff, $ff, $92, $7f, $80, $7f, $89, $bc, $d3, $df
    db $f3, $ef, $7f, $bc, $a1, $84, $a4, $20, $c0, $07, $0f, $7e, $78, $a9, $01, $fe
    db $80, $7c, $40, $3c, $46, $e0, $ff, $cf, $c8, $67, $e4, $33, $f2, $99, $f9, $ff
    db $cc, $7c, $e6, $3e, $73, $1f, $39, $0f, $ff, $1d, $07, $0f, $02, $07, $fe, $ff
    db $f3, $ff, $3f, $c0, $c1, $8e, $8e, $8e, $82, $80, $7d, $80, $72, $a0, $e7, $f7
    db $72, $72, $52, $fe, $ed, $fd, $7e, $ff, $e0, $ff, $e7, $1f, $3c, $43, $87, $ff
    db $08, $f1, $02, $fc, $80, $7f, $02, $01, $ff, $b9, $fc, $f4, $de, $7e, $ef, $7f
    db $f7, $df, $bb, $f7, $77, $ff, $ef, $3b, $a0, $f0, $f8, $fb, $04, $03, $96, $e1
    db $08, $f0, $83, $07, $3f, $f7, $7f, $e7, $e1, $f8, $88, $e0, $31, $00, $0e, $76
    db $1f, $a0, $40, $80, $e4, $87, $80, $7f, $00, $fe, $e4, $ff, $01, $7e, $00, $3e
    db $00, $9e, $82, $dc, $ef, $40, $dd, $41, $5d, $b2, $c0, $dd, $a0, $9c, $df, $80
    db $be, $80, $bd, $81, $fe, $e2, $80, $bc, $fb, $80, $bf, $fe, $e7, $84, $c3, $f0
    db $f8, $fe, $ff, $1f, $ff, $d3, $3e, $66, $97, $31, $4f, $ff, $98, $26, $ce, $95
    db $64, $03, $76, $0b, $ff, $73, $01, $7b, $11, $0b, $e1, $eb, $8b, $ff, $d3, $12
    db $26, $27, $cf, $4c, $9c, $1b, $ff, $38, $77, $f1, $ce, $ce, $3d, $04, $fb, $6e
    db $00, $c8, $40, $3f, $30, $a1, $82, $81, $40, $64, $81, $ff, $11, $e0, $24, $ce
    db $4e, $9b, $9f, $31, $ff, $3f, $66, $7f, $4f, $7f, $61, $7f, $46, $bf, $7f, $6f
    db $7f, $c1, $ff, $86, $3d, $e0, $c7, $fe, $79, $80, $06, $ff, $ef, $7f, $6f, $ff
    db $c5, $fb, $ff, $82, $d8, $a1, $ff, $ff, $3b, $3f, $8a, $d7, $0e, $0a, $ee, $fe
    db $e1, $0b, $96, $80, $10, $e0, $ff, $80, $7f, $10, $0f, $c4, $e3, $f1, $78, $ff
    db $dc, $de, $bf, $87, $7d, $45, $fb, $38, $ff, $9b, $88, $7f, $04, $7f, $0f, $f1
    db $91, $ff, $6f, $60, $6f, $20, $ff, $31, $ce, $ce, $ff, $bd, $84, $bf, $84, $ff
    db $c6, $38, $38, $cf, $f7, $10, $f7, $10, $f8, $69, $12, $e0, $1f, $20, $75, $1f
    db $04, $e7, $40, $ba, $a0, $80, $df, $c0, $fe, $e2, $ff, $d0, $cf, $c0, $ef, $e0
    db $ef, $e8, $e7, $ff, $e0, $f7, $f0, $f7, $f0, $77, $f0, $f7, $0f, $80, $87, $e0
    db $ef, $f4, $e0, $f6, $e0, $f4, $e1, $ca, $e3, $3f, $02, $01, $fc, $fd, $e0, $f1
    db $a0, $c1, $2e, $e5, $ff, $20, $9f, $88, $c7, $e4, $f3, $f2, $39, $ff, $f9, $7c
    db $9c, $8e, $7e, $06, $fe, $83, $ff, $ff, $87, $f9, $c9, $77, $30, $f7, $10, $ff
    db $ff, $08, $ff, $1f, $e3, $e1, $cf, $40, $03, $df, $40, $00, $00

    nop                                           ; $5166: $00

    db $29, $00, $ff, $ff, $e9, $e8, $03, $dd, $ec, $ff, $f0, $ff, $c0, $f6, $df, $1f
    db $00, $ce, $00, $f1, $8d, $e8, $80, $00, $f5, $cf, $b0, $ee, $e0, $80, $f4, $03
    db $00, $0e, $00, $bf, $3b, $03, $ec, $0f, $b0, $3f, $f8, $e5, $c0, $ff, $ff, $00
    db $ff, $01, $ff, $c6, $ff, $ff, $df, $ff, $0c, $ff, $31, $ff, $f2, $e1, $03, $ff
    db $7d, $8c, $f6, $e0, $ff, $ff, $63, $ff, $80, $e6, $e0, $ff, $06, $ff, $19, $fe
    db $67, $f9, $9e, $e7, $df, $fe, $fe, $19, $ff, $66, $f8, $e0, $7b, $9f, $ff, $e5
    db $71, $9e, $c0, $7f, $00, $83, $00, $ff, $40, $00, $a0, $80, $50, $c0, $28, $e0
    db $ff, $94, $f0, $ca, $f8, $65, $7c, $ff, $00, $f5, $3f, $2e, $ec, $3e, $e9, $c2
    db $0e, $00, $15, $04, $5f, $2a, $0e, $51, $1f, $c0, $4e, $ea, $40, $78, $e0, $ff
    db $1b, $03, $1c, $0f, $1b, $0c, $1f, $0f, $7f, $1f, $07, $0f, $07, $0e, $06, $c3
    db $80, $e2, $fb, $de, $e7, $77, $e0, $ff, $80, $80, $ff, $00, $3d, $18, $80, $e0
    db $8c, $ff, $f7, $39, $f0, $e1, $e0, $c1, $fd, $c6, $78, $e4, $f9, $fc, $e7, $f0
    db $ff, $c0, $7f, $7f, $40, $79, $9c, $e7, $70, $9f, $78, $e0, $fc, $41, $e0, $fc
    db $e3, $0e, $e3, $1f, $e1, $1f, $f3, $ff, $0e, $ff, $00, $ef, $0f, $be, $31, $43
    db $ff, $7f, $b2, $3e, $d9, $1f, $ed, $0f, $f7, $ff, $07, $fa, $02, $fe, $fe, $33
    db $f3, $fe, $f3, $c0, $80, $d8, $c0, $fc, $e3, $c1, $00, $61, $00, $ff, $a1, $80
    db $a6, $3f, $cf, $7f, $e1, $7f, $ff, $c6, $7f, $ef, $7f, $41, $7f, $86, $ff, $bf
    db $ef, $ff, $a0, $80, $e0, $c0, $fe, $e3, $d0, $7f, $c0, $f0, $e0, $f0, $e0, $0f
    db $04, $fe, $eb, $fe, $98, $e3, $bf, $30, $47, $78, $83, $fc, $8b, $b7, $f4, $8b
    db $f4, $f0, $ed, $7f, $40, $fe, $e2, $43, $ff, $78, $47, $70, $4f, $71, $4e, $71
    db $4e, $7e, $68, $e3, $7f, $03, $be, $87, $7c, $c7, $fe, $e1, $f7, $f0, $8f, $9f
    db $a2, $c0, $ff, $ff, $1f, $ff, $ff, $0d, $ff, $29, $df, $29, $df, $ff, $8e, $fb
    db $f3, $8e, $9f, $c0, $ff, $e7, $ff, $7a, $f7, $ff, $df, $72, $df, $72, $62, $40
    db $e3, $41, $ff, $e3, $c1, $e3, $c1, $c3, $80, $c1, $80, $5f, $c2, $80, $c3, $81
    db $c7, $82, $c0, $06, $68, $e0, $df, $ef, $7f, $c5, $ff, $82, $5e, $c0, $e8, $e0
    db $ff, $f8, $f0, $78, $f0, $f8, $f0, $f8, $80, $bf, $f0, $e0, $e8, $e0, $78, $f0
    db $60, $ec, $07, $fe, $6c, $e1, $9b, $e4, $db, $a4, $bb, $c4, $f3, $1f, $8c, $87
    db $fc, $ff, $ff, $f2, $e1, $f0, $e9, $6c, $e1, $ff, $71, $4e, $75, $4a, $73, $4c
    db $77, $48, $6f, $78, $4f, $ff, $ff, $6a, $e3, $7d, $c6, $fc, $e3, $fd, $ff, $6c
    db $e2, $69, $9f, $69, $9f, $e9, $1f, $c7, $c9, $3f, $09, $f2, $a0, $6c, $e1, $fc
    db $e7, $ff, $7e, $5b, $c3, $81, $fe, $e0, $80, $c0, $fe, $e6, $06, $ce, $a0, $5f
    db $fb, $3b, $7b, $0a, $1b, $fe, $e3, $0b, $66, $e0, $7c, $64, $e0, $1a, $c3, $fc
    db $00, $fe, $fc, $0f, $1e, $ae, $ff, $0f, $00, $0b, $03, $0c, $07, $1a, $03, $ff
    db $16, $07, $18, $0f, $19, $0f, $ff, $00, $ff, $e3, $00, $be, $80, $df, $cf, $75
    db $ff, $df, $c9, $ff, $91, $ff, $b8, $1b, $c0, $6d, $6c, $ff, $92, $b6, $93, $ff
    db $07, $ff, $04, $ff, $d5, $81, $ea, $c0, $ff, $50, $c2, $c0, $9a, $a0, $e0, $80
    db $7d, $b0, $98, $a0, $fd, $01, $0f, $01, $01, $fe, $86, $ff, $6e, $0e, $ff, $7e
    db $e7, $ff, $dc, $1f, $ef, $3b, $03, $06, $00, $ea, $e1, $fc, $00, $c0, $ff, $80
    db $b8, $80, $f7, $f0, $1e, $fe, $d3, $ff, $ff, $a6, $3e, $51, $17, $28, $0f, $17
    db $fd, $07, $7e, $e1, $e0, $00, $d8, $c0, $76, $f0, $7f, $dd, $dc, $87, $bf, $ee
    db $e0, $f8, $80, $aa, $be, $4c, $8d, $15, $07, $1b, $0f, $1f, $ca, $e0, $0d, $ef
    db $01, $07, $01, $02, $50, $80, $60, $ff, $40, $fe, $f2, $80, $48, $ff, $70, $ff
    db $a0, $ff, $e4, $fe, $60, $e0, $fe, $bf, $69, $cf, $32, $fe, $1b, $ff, $fe, $2f
    db $f6, $3d, $e4, $2f, $e0, $17, $ff, $f0, $30, $e0, $b1, $e0, $f2, $60, $e3, $ff
    db $c1, $d3, $c1, $73, $e1, $b3, $21, $f2, $ff, $20, $b1, $3f, $40, $7f, $81, $ff
    db $92, $fe, $b2, $80, $09, $ff, $90, $ff, $cf, $ff, $ba, $ff, $b8, $d5, $fc, $6e
    db $fe, $77, $ff, $b3, $fb, $ff, $77, $a2, $a0, $ff, $ff, $16, $06, $0c, $ff, $05
    db $8a, $03, $87, $03, $85, $01, $e5, $ff, $01, $f5, $e1, $a7, $83, $45, $7d, $38
    db $ff, $fb, $88, $9b, $04, $7f, $0f, $7f, $91, $ff, $f1, $60, $6f, $20, $6f, $b0
    db $80, $e8, $ff, $e0, $34, $f0, $7a, $f8, $8d, $9c, $07, $0f, $7e, $82, $fe, $87
    db $df, $6d, $1a, $e0, $02, $e5, $92, $63, $ff, $50, $7f, $ac, $3f, $df, $1f, $79
    db $1b, $ff, $ae, $24, $df, $47, $df, $40, $ff, $60, $ff, $0f, $f8, $0e, $f8, $1b
    db $fb, $fe, $fe, $ff, $67, $e7, $bd, $8c, $fb, $08, $ff, $08, $ff, $51, $40, $d0
    db $c0, $f8, $80, $f4, $30, $ff, $7a, $48, $be, $84, $f6, $44, $cf, $48, $fb, $7f
    db $7f, $8c, $67, $1f, $00, $f7, $07, $f7, $fd, $f0, $f0, $c3, $07, $00, $7b, $03
    db $bf, $3f, $ff, $e1, $e7, $ca, $02, $17, $07, $2c, $0c, $ff, $d8, $1b, $71, $77
    db $ce, $ce, $04, $3d, $ff, $08, $fb, $31, $ff, $ce, $ce, $84, $bd, $ff, $84, $bf
    db $c6, $ff, $38, $38, $10, $f7, $ff, $10, $f7, $c9, $f9, $30, $77, $10, $f7, $fd
    db $08, $40, $a0, $e1, $e3, $40, $cf, $40, $df, $00, $00, $00

    ld [$0808], sp                                ; $5513: $08 $08 $08
    ld [$0808], sp                                ; $5516: $08 $08 $08
    ld [$0808], sp                                ; $5519: $08 $08 $08

    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f
    db $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f
    db $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
    db $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $ff, $7f, $5f, $03, $5f, $02, $00, $00, $5f, $02, $ff, $6b, $3f, $01, $00, $00
    db $5f, $02, $ff, $6b, $40, $02, $00, $00, $5f, $02, $ff, $6b, $40, $7d, $00, $00
    db $f3, $00, $ff, $fe, $ff, $fe, $fd, $04, $f8, $11, $e3, $ff, $27, $cf, $4f, $99
    db $1e, $b2, $3f, $a2, $ff, $bf, $2f, $37, $73, $6f, $66, $5e, $dc, $ff, $fd, $e5
    db $fd, $85, $7d, $19, $e0, $20, $ff, $e0, $20, $f4, $14, $fe, $9c, $77, $fe, $ff
    db $01, $03, $22, $c6, $4f, $9f, $17, $b5, $df, $a3, $22, $23, $62, $41, $ff, $e0
    db $71, $71, $3f, $5b, $ca, $8f, $84, $9b, $8e, $a2, $ff, $fe, $ff, $ff, $01, $00
    db $fc, $fe, $87, $03, $3c, $1c, $ff, $e1, $60, $8f, $80, $ff, $f8, $df, $8f, $ff
    db $03, $01, $e3, $e3, $63, $63, $62, $42, $ff, $00, $00, $04, $04, $00, $00, $18
    db $18, $ff, $01, $00, $03, $01, $9e, $87, $ce, $cb, $ff, $6b, $29, $3d, $15, $a7
    db $a2, $f7, $66, $cf, $fb, $32, $ff, $0c, $a9, $e5, $a2, $ea, $f7, $00, $1f, $f7
    db $14, $e3, $00, $c1, $fc, $e0, $f6, $e0, $88, $ff, $fe, $fe, $c8, $03, $f0, $fb
    db $18, $1b, $ea, $09, $ff, $d0, $18, $a3, $37, $cf, $fe, $fe, $b2, $ff, $ff, $98
    db $ff, $88, $ff, $c9, $fe, $4a, $ff, $7d, $4d, $7f, $5e, $ef, $b8, $cf, $e9, $ff
    db $0f, $8a, $66, $0e, $32, $06, $89, $d3, $ff, $54, $49, $c2, $ec, $ec, $61, $e1
    db $73, $ff, $f2, $76, $f4, $54, $d4, $5c, $d8, $98, $fb, $98, $98, $38, $ea, $fe
    db $02, $fc, $04, $f9, $be, $b4, $c1, $0f, $d9, $1b, $d3, $12, $fe, $e0, $1a, $ff
    db $d3, $0a, $db, $2b, $c9, $0d, $e9, $05, $ff, $ec, $12, $e6, $09, $f3, $05, $f9
    db $01, $ff, $fd, $00, $fd, $02, $fc, $00, $fe, $01, $ff, $be, $00, $bf, $01, $1e
    db $00, $be, $02, $ef, $bc, $00, $fd, $01, $fe, $e4, $02, $fc, $01, $ff, $fe, $42
    db $3c, $00, $81, $bb, $ff, $ff, $ff, $66, $ff, $41, $ff, $4e, $f8, $90, $f0, $ff
    db $a0, $fc, $5c, $ec, $6c, $ac, $ac, $ec, $ff, $e0, $b0, $b0, $80, $00, $00, $00
    db $c1, $ff, $81, $f8, $f8, $c4, $c4, $87, $87, $8e, $ff, $86, $1b, $0b, $3b, $3b
    db $34, $24, $61, $ff, $21, $e0, $40, $00, $fc, $01, $fb, $02, $ff, $fa, $0a, $f2
    db $13, $e7, $46, $8e, $1d, $ff, $39, $7c, $e0, $c3, $80, $f8, $80, $ff, $ff, $70
    db $cf, $0f, $e0, $e0, $ff, $bf, $ff, $fb, $80, $c4, $fe, $e0, $e4, $80, $64, $c0
    db $f4, $ff, $c0, $f2, $60, $7a, $30, $9f, $88, $6f, $ff, $2f, $ee, $ec, $4a, $ce
    db $7e, $ee, $3e, $ff, $7c, $7f, $73, $78, $50, $7f, $cf, $e3, $ff, $c0, $fc, $a0
    db $be, $9c, $c3, $c3, $3c, $ff, $38, $c7, $87, $78, $f0, $0f, $1f, $00, $ff, $00
    db $79, $fc, $fc, $c6, $fe, $67, $ff, $ff, $11, $ff, $c9, $7f, $29, $3e, $17, $7c
    db $ff, $76, $7c, $7e, $6e, $6a, $6a, $0a, $1e, $ff, $16, $86, $86, $0c, $06, $18
    db $0c, $39, $ff, $3c, $cc, $4d, $8d, $84, $84, $86, $46, $ff, $42, $f2, $f3, $f3
    db $e1, $e1, $a1, $71, $ff, $30, $00, $3f, $80, $df, $c0, $5f, $d0, $ff, $4f, $c8
    db $e7, $e2, $71, $b8, $9c, $3e, $ff, $07, $c3, $01, $1f, $01, $ff, $0e, $ff, $ff
    db $f0, $1f, $07, $ff, $fd, $ff, $01, $67, $fb, $01, $27, $fe, $e0, $26, $03, $2f
    db $03, $4f, $ff, $06, $5e, $0c, $f9, $11, $f6, $f4, $77, $ff, $37, $52, $73, $fe
    db $76, $7c, $3e, $fe, $ff, $ce, $1e, $0a, $fe, $f3, $c7, $03, $3f, $ff, $05, $7f
    db $39, $c7, $c3, $3f, $1c, $e7, $ff, $e1, $1e, $0f, $f0, $f8, $00, $00, $2d, $ff
    db $cf, $5f, $9e, $1f, $3f, $7f, $7f, $7f, $ff, $78, $3f, $77, $1f, $3e, $bf, $32
    db $3f, $ff, $6c, $77, $f6, $f7, $b6, $f3, $b2, $ff, $ff, $ef, $66, $c2, $6f, $40
    db $3f, $61, $3f, $ff, $20, $9f, $30, $4f, $8c, $9f, $3b, $3b, $8f, $39, $3b, $fb
    db $ff, $ff, $e0, $24, $c0, $ac, $c0, $00, $dd, $f8, $fa, $e1, $80, $7f, $40, $e1
    db $e0, $88, $c7, $7f, $e4, $f3, $f0, $9b, $d8, $cb, $48, $fe, $e0, $ff, $58, $cb
    db $50, $db, $d4, $93, $b0, $97, $ff, $a0, $37, $48, $67, $90, $cf, $a0, $9f, $ff
    db $80, $bf, $00, $bf, $40, $3f, $80, $7f, $38, $ee, $a1, $fa, $e0, $d0, $e0, $00
    db $bf, $80, $fe, $e4, $e8, $e1, $ff, $04, $03, $f1, $f8, $fc, $0e, $fe, $83, $ff
    db $ff, $c1, $ff, $01, $ff, $e0, $ff, $fc, $ff, $ff, $8e, $ff, $73, $cf, $c9, $cf
    db $c9, $ef, $8f, $8b, $ff, $72, $ee, $e0, $00, $ff, $03, $ff, $fe, $03, $fc, $06
    db $fe, $1b, $f7, $e7, $3f, $87, $07, $cf, $8f, $ff, $df, $80, $e2, $fe, $ff, $6e
    db $66, $ae, $01, $fe, $00, $d4, $a0, $00, $fd, $ee, $a0, $ff, $fb, $0b, $f3, $13
    db $e6, $07, $ef, $0f, $ff, $e9, $0f, $eb, $07, $ee, $13, $e7, $05, $ff, $f5, $84
    db $74, $05, $75, $44, $34, $04, $ff, $b4, $a6, $94, $82, $d6, $db, $c2, $c1, $ff
    db $eb, $e4, $e9, $e4, $e9, $e1, $6b, $eb, $ff, $62, $e3, $66, $c7, $64, $87, $cf
    db $0c, $ff, $1c, $d8, $10, $1c, $1c, $8c, $d8, $df, $7f, $fe, $f7, $f3, $f3, $f1
    db $ff, $9f, $84, $ff, $fe, $f0, $ef, $82, $01, $38, $7c, $67, $c7, $cf, $ff, $80
    db $ff, $80, $ff, $fc, $87, $03, $86, $ff, $86, $01, $01, $be, $bc, $ff, $e7, $ff
    db $9f, $2f, $3f, $3f, $be, $9e, $99, $a0, $96, $a0, $e0, $ff, $e0, $e0, $20, $c0
    db $c0, $01, $00, $01, $ff, $01, $9c, $0c, $f9, $f1, $ff, $be, $ff, $ff, $90, $ff
    db $a9, $ff, $cb, $ff, $4e, $ff, $ff, $60, $ff, $87, $fc, $48, $78, $78, $18, $ff
    db $08, $0c, $04, $87, $03, $c1, $80, $e0, $79, $c0, $92, $ff, $f2, $f1, $40, $3f
    db $10, $8f, $ce, $a0, $ff, $31, $f9, $1c, $fc, $86, $fe, $42, $7e, $ff, $43, $7f
    db $61, $3f, $11, $df, $d1, $ff, $ff, $f1, $fe, $7b, $6e, $27, $06, $06, $1c, $ff
    db $16, $3d, $3c, $7c, $2e, $fe, $7a, $fe, $ff, $e2, $fe, $72, $fe, $be, $fc, $26
    db $fe, $fd, $63, $70, $c0, $81, $ff, $10, $ff, $20, $ff, $ff, $38, $ef, $c4, $c7
    db $42, $63, $22, $23, $ff, $22, $e3, $c3, $87, $02, $8f, $84, $1f, $01, $08, $00
    db $00

    nop                                           ; $597d: $00
    ret                                           ; $597e: $c9


    nop                                           ; $597f: $00
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $20                                       ; $5982: $e7
    and $08                                       ; $5983: $e6 $08
    cp $e0                                        ; $5985: $fe $e0
    jp c, Jump_000_01ea                           ; $5987: $da $ea $01

    ld bc, $02ff                                  ; $598a: $01 $ff $02
    inc bc                                        ; $598d: $03
    nop                                           ; $598e: $00
    dec b                                         ; $598f: $05
    ld bc, $0207                                  ; $5990: $01 $07 $02
    rlca                                          ; $5993: $07
    rst $38                                       ; $5994: $ff
    ld a, [bc]                                    ; $5995: $0a
    dec bc                                        ; $5996: $0b
    inc de                                        ; $5997: $13
    scf                                           ; $5998: $37
    ld b, [hl]                                    ; $5999: $46
    db $db                                        ; $599a: $db
    dec e                                         ; $599b: $1d
    ld h, e                                       ; $599c: $63
    rst $38                                       ; $599d: $ff
    ld a, h                                       ; $599e: $7c
    ret nz                                        ; $599f: $c0

    nop                                           ; $59a0: $00
    and b                                         ; $59a1: $a0
    add b                                         ; $59a2: $80
    ld h, b                                       ; $59a3: $60
    ret nz                                        ; $59a4: $c0

    ld h, b                                       ; $59a5: $60
    rst $38                                       ; $59a6: $ff
    ret nc                                        ; $59a7: $d0

    ret nc                                        ; $59a8: $d0

    ret z                                         ; $59a9: $c8

    ld l, h                                       ; $59aa: $6c
    ld [c], a                                     ; $59ab: $e2
    db $db                                        ; $59ac: $db
    cp b                                          ; $59ad: $b8
    add $af                                       ; $59ae: $c6 $af
    ld a, $00                                     ; $59b0: $3e $00
    nop                                           ; $59b2: $00
    ld [bc], a                                    ; $59b3: $02

jr_00d_59b4:
    cp $e0                                        ; $59b4: $fe $e0
    rlca                                          ; $59b6: $07
    ld a, [$00e2]                                 ; $59b7: $fa $e2 $00
    rst $00                                       ; $59ba: $c7
    add b                                         ; $59bb: $80
    add b                                         ; $59bc: $80
    ld b, b                                       ; $59bd: $40
    sbc d                                         ; $59be: $9a
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    ld l, h                                       ; $59c2: $6c
    ld [$3e14], a                                 ; $59c3: $ea $14 $3e
    db $fc                                        ; $59c6: $fc
    db $fc                                        ; $59c7: $fc
    ldh [$66], a                                  ; $59c8: $e0 $66
    rst $20                                       ; $59ca: $e7
    ld [bc], a                                    ; $59cb: $02
    inc b                                         ; $59cc: $04
    dec c                                         ; $59cd: $0d
    ld de, $2717                                  ; $59ce: $11 $17 $27
    rst $38                                       ; $59d1: $ff
    add hl, hl                                    ; $59d2: $29
    rrca                                          ; $59d3: $0f
    scf                                           ; $59d4: $37
    dec de                                        ; $59d5: $1b
    ld a, $12                                     ; $59d6: $3e $12
    ld a, $12                                     ; $59d8: $3e $12
    rst $38                                       ; $59da: $ff
    ld [hl], $1a                                  ; $59db: $36 $1a
    cp h                                          ; $59dd: $bc
    jp $f887                                      ; $59de: $c3 $87 $f8


    ld [hl], b                                    ; $59e1: $70
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    ccf                                           ; $59e4: $3f
    rst $08                                       ; $59e5: $cf
    rst $38                                       ; $59e6: $ff
    ldh [$bf], a                                  ; $59e7: $e0 $bf
    rst $38                                       ; $59e9: $ff
    add b                                         ; $59ea: $80
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    cp e                                          ; $59ed: $bb
    call nz, $c33d                                ; $59ee: $c4 $3d $c3
    pop hl                                        ; $59f1: $e1
    rra                                           ; $59f2: $1f
    ld c, $ff                                     ; $59f3: $0e $ff
    rst $38                                       ; $59f5: $ff
    ldh a, [rIE]                                  ; $59f6: $f0 $ff
    rst $20                                       ; $59f8: $e7
    rra                                           ; $59f9: $1f
    db $fd                                        ; $59fa: $fd
    rst $38                                       ; $59fb: $ff
    ld bc, $ffff                                  ; $59fc: $01 $ff $ff
    sbc c                                         ; $59ff: $99
    ld h, a                                       ; $5a00: $67
    ld b, b                                       ; $5a01: $40
    jr nz, jr_00d_59b4                            ; $5a02: $20 $b0

    adc b                                         ; $5a04: $88
    add sp, -$1c                                  ; $5a05: $e8 $e4
    rst $38                                       ; $5a07: $ff
    sub h                                         ; $5a08: $94
    ldh a, [$ec]                                  ; $5a09: $f0 $ec
    ret c                                         ; $5a0b: $d8

    ld a, h                                       ; $5a0c: $7c
    ld c, b                                       ; $5a0d: $48
    ld a, h                                       ; $5a0e: $7c
    ld c, b                                       ; $5a0f: $48
    db $e3                                        ; $5a10: $e3
    ld l, h                                       ; $5a11: $6c
    ld e, b                                       ; $5a12: $58
    adc [hl]                                      ; $5a13: $8e
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    ld a, [$2ef9]                                 ; $5a17: $fa $f9 $2e
    ld a, [bc]                                    ; $5a1a: $0a
    dec e                                         ; $5a1b: $1d
    rst $38                                       ; $5a1c: $ff
    dec hl                                        ; $5a1d: $2b
    dec de                                        ; $5a1e: $1b
    dec c                                         ; $5a1f: $0d
    ld d, $05                                     ; $5a20: $16 $05
    dec bc                                        ; $5a22: $0b
    ld [de], a                                    ; $5a23: $12
    dec b                                         ; $5a24: $05
    rst $38                                       ; $5a25: $ff
    add hl, bc                                    ; $5a26: $09
    inc bc                                        ; $5a27: $03
    dec b                                         ; $5a28: $05
    inc bc                                        ; $5a29: $03
    ld bc, $c4bb                                  ; $5a2a: $01 $bb $c4
    sbc e                                         ; $5a2d: $9b
    rst $38                                       ; $5a2e: $ff
    db $e4                                        ; $5a2f: $e4
    ld e, e                                       ; $5a30: $5b
    ld h, h                                       ; $5a31: $64
    set 6, h                                      ; $5a32: $cb $f4
    ld l, l                                       ; $5a34: $6d
    ld a, [c]                                     ; $5a35: $f2
    or l                                          ; $5a36: $b5
    rst $38                                       ; $5a37: $ff
    ld a, d                                       ; $5a38: $7a
    add sp, -$61                                  ; $5a39: $e8 $9f
    cp a                                          ; $5a3b: $bf
    ld l, a                                       ; $5a3c: $6f
    reti                                          ; $5a3d: $d9


    daa                                           ; $5a3e: $27
    reti                                          ; $5a3f: $d9


    rst $38                                       ; $5a40: $ff
    daa                                           ; $5a41: $27
    jp c, $d326                                   ; $5a42: $da $26 $d3

    cpl                                           ; $5a45: $2f
    or [hl]                                       ; $5a46: $b6
    ld c, a                                       ; $5a47: $4f
    xor l                                         ; $5a48: $ad
    rst $38                                       ; $5a49: $ff
    ld e, [hl]                                    ; $5a4a: $5e
    rla                                           ; $5a4b: $17
    ld sp, hl                                     ; $5a4c: $f9
    db $fd                                        ; $5a4d: $fd
    or $74                                        ; $5a4e: $f6 $74
    ld d, b                                       ; $5a50: $50
    cp b                                          ; $5a51: $b8
    rst $38                                       ; $5a52: $ff
    call nc, $b0d8                                ; $5a53: $d4 $d8 $b0
    ld l, b                                       ; $5a56: $68
    and b                                         ; $5a57: $a0
    ret nc                                        ; $5a58: $d0

    ld c, b                                       ; $5a59: $48
    and b                                         ; $5a5a: $a0
    rra                                           ; $5a5b: $1f
    sub b                                         ; $5a5c: $90
    ret nz                                        ; $5a5d: $c0

    and b                                         ; $5a5e: $a0
    ret nz                                        ; $5a5f: $c0

    add b                                         ; $5a60: $80
    halt                                          ; $5a61: $76
    rst $00                                       ; $5a62: $c7
    ld b, $e3                                     ; $5a63: $06 $e3
    adc [hl]                                      ; $5a65: $8e
    rst $38                                       ; $5a66: $ff
    db $fc                                        ; $5a67: $fc
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    ld [$02e9], a                                 ; $5a6a: $ea $e9 $02
    nop                                           ; $5a6d: $00
    ld bc, $0102                                  ; $5a6e: $01 $02 $01
    nop                                           ; $5a71: $00
    rst $38                                       ; $5a72: $ff
    ld b, b                                       ; $5a73: $40
    ld bc, $0040                                  ; $5a74: $01 $40 $00
    ldh [rSB], a                                  ; $5a77: $e0 $01
    ld b, c                                       ; $5a79: $41
    nop                                           ; $5a7a: $00
    rst $38                                       ; $5a7b: $ff
    ld b, c                                       ; $5a7c: $41
    ld [bc], a                                    ; $5a7d: $02
    db $fd                                        ; $5a7e: $fd
    xor $7b                                       ; $5a7f: $ee $7b
    ld c, d                                       ; $5a81: $4a
    ld l, a                                       ; $5a82: $6f
    ld a, [hl]                                    ; $5a83: $7e
    rst $38                                       ; $5a84: $ff
    cp l                                          ; $5a85: $bd
    ld a, $f3                                     ; $5a86: $3e $f3
    ld a, a                                       ; $5a88: $7f
    rst $10                                       ; $5a89: $d7
    ld a, b                                       ; $5a8a: $78
    ld c, a                                       ; $5a8b: $4f
    ld a, a                                       ; $5a8c: $7f
    rst $38                                       ; $5a8d: $ff
    call c, $bfe3                                 ; $5a8e: $dc $e3 $bf
    ld [hl], a                                    ; $5a91: $77
    sbc $52                                       ; $5a92: $de $52
    ld [hl], a                                    ; $5a94: $77
    cp $ff                                        ; $5a95: $fe $ff
    cp l                                          ; $5a97: $bd
    ld a, h                                       ; $5a98: $7c
    rst $08                                       ; $5a99: $cf
    cp $eb                                        ; $5a9a: $fe $eb
    ld e, $f2                                     ; $5a9c: $1e $f2
    cp $cf                                        ; $5a9e: $fe $cf
    dec sp                                        ; $5aa0: $3b
    rst $00                                       ; $5aa1: $c7
    ld b, b                                       ; $5aa2: $40
    nop                                           ; $5aa3: $00
    inc l                                         ; $5aa4: $2c
    ret nz                                        ; $5aa5: $c0

    ld l, d                                       ; $5aa6: $6a
    db $e3                                        ; $5aa7: $e3
    add b                                         ; $5aa8: $80
    add b                                         ; $5aa9: $80
    db $ec                                        ; $5aaa: $ec
    db $f4                                        ; $5aab: $f4
    ldh [$dc], a                                  ; $5aac: $e0 $dc
    and h                                         ; $5aae: $a4
    ld bc, $b801                                  ; $5aaf: $01 $01 $b8
    ldh [rSC], a                                  ; $5ab2: $e0 $02
    nop                                           ; $5ab4: $00
    inc bc                                        ; $5ab5: $03
    db $fd                                        ; $5ab6: $fd
    dec b                                         ; $5ab7: $05
    adc [hl]                                      ; $5ab8: $8e
    pop hl                                        ; $5ab9: $e1
    ld a, h                                       ; $5aba: $7c
    add d                                         ; $5abb: $82
    cp e                                          ; $5abc: $bb
    jr c, jr_00d_5b1e                             ; $5abd: $38 $5f

    ld h, a                                       ; $5abf: $67
    cp a                                          ; $5ac0: $bf
    or b                                          ; $5ac1: $b0
    rst $08                                       ; $5ac2: $cf
    add b                                         ; $5ac3: $80
    rst $38                                       ; $5ac4: $ff
    db $fc                                        ; $5ac5: $fc
    rst $38                                       ; $5ac6: $ff
    ld a, [hl]                                    ; $5ac7: $7e
    db $e3                                        ; $5ac8: $e3
    add b                                         ; $5ac9: $80
    rst $38                                       ; $5aca: $ff
    ld b, b                                       ; $5acb: $40
    ld h, b                                       ; $5acc: $60
    db $10                                        ; $5acd: $10
    ret nc                                        ; $5ace: $d0

    ret z                                         ; $5acf: $c8

    inc l                                         ; $5ad0: $2c
    ld [c], a                                     ; $5ad1: $e2
    ld a, [de]                                    ; $5ad2: $1a
    push af                                       ; $5ad3: $f5
    ld sp, hl                                     ; $5ad4: $f9
    ld l, [hl]                                    ; $5ad5: $6e
    pop hl                                        ; $5ad6: $e1
    inc bc                                        ; $5ad7: $03
    ld c, h                                       ; $5ad8: $4c
    jp $534f                                      ; $5ad9: $c3 $4f $53


    ld e, $62                                     ; $5adc: $1e $62
    db $fd                                        ; $5ade: $fd
    ccf                                           ; $5adf: $3f
    ld e, [hl]                                    ; $5ae0: $5e
    pop hl                                        ; $5ae1: $e1
    cp $01                                        ; $5ae2: $fe $01
    db $fd                                        ; $5ae4: $fd
    db $fc                                        ; $5ae5: $fc
    ld a, e                                       ; $5ae6: $7b
    add a                                         ; $5ae7: $87
    cp a                                          ; $5ae8: $bf
    rst $18                                       ; $5ae9: $df
    inc a                                         ; $5aea: $3c
    ld a, [hl]                                    ; $5aeb: $7e
    pop hl                                        ; $5aec: $e1
    ldh a, [$8f]                                  ; $5aed: $f0 $8f
    ld c, [hl]                                    ; $5aef: $4e
    db $e3                                        ; $5af0: $e3
    ld hl, sp-$01                                 ; $5af1: $f8 $ff
    inc b                                         ; $5af3: $04
    db $f4                                        ; $5af4: $f4
    ldh a, [$fc]                                  ; $5af5: $f0 $fc
    jr jr_00d_5b15                                ; $5af7: $18 $1c

    ld [$d537], a                                 ; $5af9: $ea $37 $d5
    ret nc                                        ; $5afc: $d0

    xor h                                         ; $5afd: $ac
    ldh [rSB], a                                  ; $5afe: $e0 $01
    cp $e3                                        ; $5b00: $fe $e3
    ld bc, $e055                                  ; $5b02: $01 $55 $e0
    add c                                         ; $5b05: $81
    ld b, d                                       ; $5b06: $42
    rst $38                                       ; $5b07: $ff
    and e                                         ; $5b08: $a3
    db $fc                                        ; $5b09: $fc
    db $dd                                        ; $5b0a: $dd
    cp [hl]                                       ; $5b0b: $be
    rst $38                                       ; $5b0c: $ff
    jp Jump_000_3cfb                              ; $5b0d: $c3 $fb $3c


    rst $38                                       ; $5b10: $ff
    cp a                                          ; $5b11: $bf
    rst $00                                       ; $5b12: $c7
    ld [hl], a                                    ; $5b13: $77
    ld a, b                                       ; $5b14: $78

jr_00d_5b15:
    rst $28                                       ; $5b15: $ef
    rrca                                          ; $5b16: $0f
    rst $38                                       ; $5b17: $ff
    nop                                           ; $5b18: $00
    rst $38                                       ; $5b19: $ff
    push bc                                       ; $5b1a: $c5
    ccf                                           ; $5b1b: $3f
    cp c                                          ; $5b1c: $b9
    ld a, a                                       ; $5b1d: $7f

jr_00d_5b1e:
    ei                                            ; $5b1e: $fb
    rst $00                                       ; $5b1f: $c7
    call c, $ff3f                                 ; $5b20: $dc $3f $ff
    ld sp, hl                                     ; $5b23: $f9
    rst $20                                       ; $5b24: $e7
    xor $1e                                       ; $5b25: $ee $1e
    rst $30                                       ; $5b27: $f7
    ldh a, [rIE]                                  ; $5b28: $f0 $ff
    nop                                           ; $5b2a: $00
    rst $08                                       ; $5b2b: $cf
    ld b, b                                       ; $5b2c: $40
    nop                                           ; $5b2d: $00
    ret nz                                        ; $5b2e: $c0

    add b                                         ; $5b2f: $80
    cp $e3                                        ; $5b30: $fe $e3
    ld e, b                                       ; $5b32: $58
    pop hl                                        ; $5b33: $e1
    ld hl, sp+$04                                 ; $5b34: $f8 $04
    cp $52                                        ; $5b36: $fe $52
    and b                                         ; $5b38: $a0
    dec bc                                        ; $5b39: $0b
    ld a, [bc]                                    ; $5b3a: $0a
    inc de                                        ; $5b3b: $13
    rla                                           ; $5b3c: $17
    rlca                                          ; $5b3d: $07
    add hl, de                                    ; $5b3e: $19
    rrca                                          ; $5b3f: $0f
    rst $38                                       ; $5b40: $ff
    dec de                                        ; $5b41: $1b
    rrca                                          ; $5b42: $0f
    ld d, $07                                     ; $5b43: $16 $07
    dec bc                                        ; $5b45: $0b
    inc de                                        ; $5b46: $13
    ld a, e                                       ; $5b47: $7b
    add a                                         ; $5b48: $87
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    add [hl]                                      ; $5b4b: $86
    rst $38                                       ; $5b4c: $ff
    ld bc, $befd                                  ; $5b4d: $01 $fd $be
    rst $20                                       ; $5b50: $e7
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    cpl                                           ; $5b53: $2f
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    ccf                                           ; $5b56: $3f
    rst $18                                       ; $5b57: $df
    cp [hl]                                       ; $5b58: $be
    add l                                         ; $5b59: $85
    db $fc                                        ; $5b5a: $fc
    rst $38                                       ; $5b5b: $ff
    ld b, e                                       ; $5b5c: $43
    cp $c2                                        ; $5b5d: $fe $c2
    ld a, [hl]                                    ; $5b5f: $7e
    pop hl                                        ; $5b60: $e1
    ld a, a                                       ; $5b61: $7f
    pop de                                        ; $5b62: $d1
    ccf                                           ; $5b63: $3f
    rst $38                                       ; $5b64: $ff
    pop af                                        ; $5b65: $f1
    rst $18                                       ; $5b66: $df
    pop af                                        ; $5b67: $f1
    rst $38                                       ; $5b68: $ff
    ld a, d                                       ; $5b69: $7a
    cp $6f                                        ; $5b6a: $fe $6f
    cp a                                          ; $5b6c: $bf
    rst $38                                       ; $5b6d: $ff
    cp e                                          ; $5b6e: $bb
    scf                                           ; $5b6f: $37
    or $6f                                        ; $5b70: $f6 $6f
    ld a, l                                       ; $5b72: $7d
    ld e, [hl]                                    ; $5b73: $5e
    rst $20                                       ; $5b74: $e7
    db $fd                                        ; $5b75: $fd
    rst $38                                       ; $5b76: $ff
    add a                                         ; $5b77: $87
    db $fd                                        ; $5b78: $fd
    sbc e                                         ; $5b79: $9b
    ld a, l                                       ; $5b7a: $7d
    ccf                                           ; $5b7b: $3f
    ldh [$f8], a                                  ; $5b7c: $e0 $f8
    rst $38                                       ; $5b7e: $ff
    rst $38                                       ; $5b7f: $ff
    xor a                                         ; $5b80: $af
    rst $18                                       ; $5b81: $df
    db $fd                                        ; $5b82: $fd
    inc bc                                        ; $5b83: $03
    rst $38                                       ; $5b84: $ff
    db $e3                                        ; $5b85: $e3
    rst $38                                       ; $5b86: $ff
    ld h, e                                       ; $5b87: $63
    rst $38                                       ; $5b88: $ff
    rst $18                                       ; $5b89: $df
    ld h, d                                       ; $5b8a: $62
    rst $38                                       ; $5b8b: $ff
    nop                                           ; $5b8c: $00
    rst $38                                       ; $5b8d: $ff
    inc b                                         ; $5b8e: $04
    ld l, e                                       ; $5b8f: $6b
    and e                                         ; $5b90: $a3
    rst $38                                       ; $5b91: $ff
    adc $cf                                       ; $5b92: $ce $cf
    or e                                          ; $5b94: $b3
    cp $98                                        ; $5b95: $fe $98
    rst $38                                       ; $5b97: $ff
    adc b                                         ; $5b98: $88
    rst $38                                       ; $5b99: $ff
    rst $38                                       ; $5b9a: $ff
    ret                                           ; $5b9b: $c9


    rst $38                                       ; $5b9c: $ff
    ld c, e                                       ; $5b9d: $4b
    cp $cf                                        ; $5b9e: $fe $cf
    ld a, l                                       ; $5ba0: $7d
    ld a, [hl]                                    ; $5ba1: $7e
    nop                                           ; $5ba2: $00
    rst $38                                       ; $5ba3: $ff
    cp e                                          ; $5ba4: $bb
    cp e                                          ; $5ba5: $bb
    ld h, [hl]                                    ; $5ba6: $66
    rst $38                                       ; $5ba7: $ff
    ld b, c                                       ; $5ba8: $41
    rst $38                                       ; $5ba9: $ff
    ld c, [hl]                                    ; $5baa: $4e
    rst $38                                       ; $5bab: $ff
    rst $38                                       ; $5bac: $ff
    sub a                                         ; $5bad: $97
    ld hl, sp-$51                                 ; $5bae: $f8 $af
    ldh a, [$5f]                                  ; $5bb0: $f0 $5f
    db $fc                                        ; $5bb2: $fc
    ld a, d                                       ; $5bb3: $7a
    ld a, c                                       ; $5bb4: $79
    rst $18                                       ; $5bb5: $df
    push bc                                       ; $5bb6: $c5
    db $fc                                        ; $5bb7: $fc
    ld h, [hl]                                    ; $5bb8: $66
    cp $11                                        ; $5bb9: $fe $11
    ld [c], a                                     ; $5bbb: $e2
    ldh [$a9], a                                  ; $5bbc: $e0 $a9
    ld a, a                                       ; $5bbe: $7f
    rst $38                                       ; $5bbf: $ff
    sub $3e                                       ; $5bc0: $d6 $3e
    push af                                       ; $5bc2: $f5
    ld a, h                                       ; $5bc3: $7c
    dec e                                         ; $5bc4: $1d
    dec l                                         ; $5bc5: $2d
    ld a, $5f                                     ; $5bc6: $3e $5f
    rst $38                                       ; $5bc8: $ff
    rst $18                                       ; $5bc9: $df
    rra                                           ; $5bca: $1f
    rst $38                                       ; $5bcb: $ff
    ld a, a                                       ; $5bcc: $7f
    ld hl, sp+$7f                                 ; $5bcd: $f8 $7f
    or a                                          ; $5bcf: $b7
    ccf                                           ; $5bd0: $3f
    rst $38                                       ; $5bd1: $ff
    sbc $1f                                       ; $5bd2: $de $1f
    ld [hl], d                                    ; $5bd4: $72
    cp a                                          ; $5bd5: $bf
    or $f1                                        ; $5bd6: $f6 $f1
    dec c                                         ; $5bd8: $0d
    db $fc                                        ; $5bd9: $fc
    rst $10                                       ; $5bda: $d7
    add d                                         ; $5bdb: $82
    cp $c1                                        ; $5bdc: $fe $c1
    ld [hl], h                                    ; $5bde: $74
    and b                                         ; $5bdf: $a0
    ldh [$e2], a                                  ; $5be0: $e0 $e2
    ret nz                                        ; $5be2: $c0

    adc [hl]                                      ; $5be3: $8e
    rst $38                                       ; $5be4: $ff
    rst $38                                       ; $5be5: $ff
    rrca                                          ; $5be6: $0f
    dec b                                         ; $5be7: $05
    rrca                                          ; $5be8: $0f
    add h                                         ; $5be9: $84
    adc a                                         ; $5bea: $8f
    dec b                                         ; $5beb: $05
    adc a                                         ; $5bec: $8f
    ld b, h                                       ; $5bed: $44
    rst $38                                       ; $5bee: $ff
    ld c, a                                       ; $5bef: $4f
    inc b                                         ; $5bf0: $04
    call $aba6                                    ; $5bf1: $cd $a6 $ab
    add d                                         ; $5bf4: $82
    and $db                                       ; $5bf5: $e6 $db
    db $fc                                        ; $5bf7: $fc
    sbc h                                         ; $5bf8: $9c
    ldh [$fe], a                                  ; $5bf9: $e0 $fe
    pop hl                                        ; $5bfb: $e1
    ldh [$3f], a                                  ; $5bfc: $e0 $3f
    ldh [rIE], a                                  ; $5bfe: $e0 $ff
    ret nz                                        ; $5c00: $c0

    cp $ff                                        ; $5c01: $fe $ff
    ld bc, $01ff                                  ; $5c03: $01 $ff $01
    or [hl]                                       ; $5c06: $b6
    ld l, [hl]                                    ; $5c07: $6e
    rst $38                                       ; $5c08: $ff
    ld b, $f5                                     ; $5c09: $06 $f5
    rst $38                                       ; $5c0b: $ff
    inc e                                         ; $5c0c: $1c
    cp $3d                                        ; $5c0d: $fe $3d
    xor l                                         ; $5c0f: $ad
    ld a, h                                       ; $5c10: $7c
    ld a, e                                       ; $5c11: $7b
    cp $e3                                        ; $5c12: $fe $e3
    rst $38                                       ; $5c14: $ff
    cp $73                                        ; $5c15: $fe $73
    cp $3f                                        ; $5c17: $fe $3f
    ldh [$1f], a                                  ; $5c19: $e0 $1f
    db $f4                                        ; $5c1b: $f4
    sbc l                                         ; $5c1c: $9d
    rst $38                                       ; $5c1d: $ff
    cp $76                                        ; $5c1e: $fe $76
    ld [hl], a                                    ; $5c20: $77
    db $fd                                        ; $5c21: $fd
    ld bc, $221b                                  ; $5c22: $01 $1b $22
    cpl                                           ; $5c25: $2f
    rst $10                                       ; $5c26: $d7
    ld c, a                                       ; $5c27: $4f
    ld e, l                                       ; $5c28: $5d
    rla                                           ; $5c29: $17
    ld l, h                                       ; $5c2a: $6c
    ldh [rNR23], a                                ; $5c2b: $e0 $18
    ret nz                                        ; $5c2d: $c0

    ret nz                                        ; $5c2e: $c0

    inc bc                                        ; $5c2f: $03
    and $ff                                       ; $5c30: $e6 $ff
    sbc [hl]                                      ; $5c32: $9e
    ld a, [$bdce]                                 ; $5c33: $fa $ce $bd
    ld l, e                                       ; $5c36: $6b
    rst $10                                       ; $5c37: $d7
    dec a                                         ; $5c38: $3d
    sbc $ff                                       ; $5c39: $de $ff
    ld a, a                                       ; $5c3b: $7f
    xor b                                         ; $5c3c: $a8
    rst $28                                       ; $5c3d: $ef
    reti                                          ; $5c3e: $d9


    rst $08                                       ; $5c3f: $cf
    ld a, d                                       ; $5c40: $7a
    rrca                                          ; $5c41: $0f
    sub a                                         ; $5c42: $97
    rst $38                                       ; $5c43: $ff
    ld h, [hl]                                    ; $5c44: $66
    swap d                                        ; $5c45: $cb $32
    and l                                         ; $5c47: $a5
    adc c                                         ; $5c48: $89
    ld [c], a                                     ; $5c49: $e2
    ld d, h                                       ; $5c4a: $54
    ld a, a                                       ; $5c4b: $7f
    rst $38                                       ; $5c4c: $ff
    db $ec                                        ; $5c4d: $ec
    rst $38                                       ; $5c4e: $ff
    xor h                                         ; $5c4f: $ac
    di                                            ; $5c50: $f3
    db $ec                                        ; $5c51: $ec
    rst $38                                       ; $5c52: $ff
    or b                                          ; $5c53: $b0
    ld a, a                                       ; $5c54: $7f
    rst $38                                       ; $5c55: $ff
    add b                                         ; $5c56: $80
    rst $38                                       ; $5c57: $ff
    nop                                           ; $5c58: $00
    cp a                                          ; $5c59: $bf
    pop bc                                        ; $5c5a: $c1
    rst $38                                       ; $5c5b: $ff
    ld hl, sp-$03                                 ; $5c5c: $f8 $fd
    rst $38                                       ; $5c5e: $ff
    ld a, h                                       ; $5c5f: $7c
    ei                                            ; $5c60: $fb
    ld l, [hl]                                    ; $5c61: $6e
    sbc a                                         ; $5c62: $9f
    ld l, d                                       ; $5c63: $6a
    rst $30                                       ; $5c64: $f7
    ld e, $ff                                     ; $5c65: $1e $ff
    rst $38                                       ; $5c67: $ff

jr_00d_5c68:
    add [hl]                                      ; $5c68: $86
    push af                                       ; $5c69: $f5
    inc c                                         ; $5c6a: $0c
    db $eb                                        ; $5c6b: $eb
    jr jr_00d_5c68                                ; $5c6c: $18 $fa

    add hl, sp                                    ; $5c6e: $39
    xor h                                         ; $5c6f: $ac
    rst $38                                       ; $5c70: $ff
    ccf                                           ; $5c71: $3f
    ld a, [hl]                                    ; $5c72: $7e
    ld [hl], a                                    ; $5c73: $77
    cp [hl]                                       ; $5c74: $be
    rst $30                                       ; $5c75: $f7
    cp [hl]                                       ; $5c76: $be
    di                                            ; $5c77: $f3
    rst $28                                       ; $5c78: $ef
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    ld e, e                                       ; $5c7b: $5b
    ld h, [hl]                                    ; $5c7c: $66
    ret nc                                        ; $5c7d: $d0

    ld l, a                                       ; $5c7e: $6f
    and c                                         ; $5c7f: $a1
    ccf                                           ; $5c80: $3f
    ld [hl], e                                    ; $5c81: $73
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    ld sp, hl                                     ; $5c84: $f9
    rst $08                                       ; $5c85: $cf
    ld sp, hl                                     ; $5c86: $f9
    rst $08                                       ; $5c87: $cf
    ei                                            ; $5c88: $fb
    adc a                                         ; $5c89: $8f
    ld [hl], d                                    ; $5c8a: $72
    cp $d2                                        ; $5c8b: $fe $d2
    add b                                         ; $5c8d: $80
    nop                                           ; $5c8e: $00
    rst $38                                       ; $5c8f: $ff
    inc bc                                        ; $5c90: $03
    rst $38                                       ; $5c91: $ff
    push de                                       ; $5c92: $d5
    pop bc                                        ; $5c93: $c1
    ld a, [c]                                     ; $5c94: $f2
    rst $38                                       ; $5c95: $ff
    db $e4                                        ; $5c96: $e4
    ld a, [c]                                     ; $5c97: $f2
    db $e4                                        ; $5c98: $e4
    ld [hl], l                                    ; $5c99: $75
    pop hl                                        ; $5c9a: $e1
    halt                                          ; $5c9b: $76
    db $eb                                        ; $5c9c: $eb
    ld a, d                                       ; $5c9d: $7a
    rst $38                                       ; $5c9e: $ff
    db $e3                                        ; $5c9f: $e3
    ld e, h                                       ; $5ca0: $5c
    rst $00                                       ; $5ca1: $c7
    or a                                          ; $5ca2: $b7
    add a                                         ; $5ca3: $87

jr_00d_5ca4:
    ld l, a                                       ; $5ca4: $6f
    sbc h                                         ; $5ca5: $9c
    rst $30                                       ; $5ca6: $f7
    rst $38                                       ; $5ca7: $ff
    ld sp, hl                                     ; $5ca8: $f9
    cp [hl]                                       ; $5ca9: $be
    rst $38                                       ; $5caa: $ff
    sub b                                         ; $5cab: $90
    rst $38                                       ; $5cac: $ff
    xor c                                         ; $5cad: $a9
    rst $38                                       ; $5cae: $ff
    set 7, [hl]                                   ; $5caf: $cb $fe
    inc c                                         ; $5cb1: $0c
    ldh [$60], a                                  ; $5cb2: $e0 $60
    rst $38                                       ; $5cb4: $ff
    cp a                                          ; $5cb5: $bf
    cp $25                                        ; $5cb6: $fe $25
    db $fc                                        ; $5cb8: $fc
    ld h, d                                       ; $5cb9: $62
    cp $30                                        ; $5cba: $fe $30
    ldh [$81], a                                  ; $5cbc: $e0 $81
    rst $38                                       ; $5cbe: $ff
    db $10                                        ; $5cbf: $10
    rst $38                                       ; $5cc0: $ff
    jr nz, @+$01                                  ; $5cc1: $20 $ff

    jr c, jr_00d_5ca4                             ; $5cc3: $38 $df

    rst $38                                       ; $5cc5: $ff
    ld a, [hl]                                    ; $5cc6: $7e
    and e                                         ; $5cc7: $a3
    cp [hl]                                       ; $5cc8: $be
    inc hl                                        ; $5cc9: $23
    pop af                                        ; $5cca: $f1
    ret nz                                        ; $5ccb: $c0

    ld b, c                                       ; $5ccc: $41
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    ld [hl], c                                    ; $5ccf: $71
    ld l, [hl]                                    ; $5cd0: $6e
    ld e, e                                       ; $5cd1: $5b
    db $f4                                        ; $5cd2: $f4
    adc a                                         ; $5cd3: $8f
    ld [$fa9b], a                                 ; $5cd4: $ea $9b $fa
    cp a                                          ; $5cd7: $bf
    and a                                         ; $5cd8: $a7
    ld l, [hl]                                    ; $5cd9: $6e
    rst $30                                       ; $5cda: $f7
    ld [hl], $fb                                  ; $5cdb: $36 $fb
    inc c                                         ; $5cdd: $0c
    add hl, hl                                    ; $5cde: $29
    db $e4                                        ; $5cdf: $e4
    nop                                           ; $5ce0: $00
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    pop de                                        ; $5ce3: $d1
    jp nz, $ec72                                  ; $5ce4: $c2 $72 $ec

    ld l, l                                       ; $5ce7: $6d
    pop hl                                        ; $5ce8: $e1
    ld a, e                                       ; $5ce9: $7b
    rst $38                                       ; $5cea: $ff
    ld a, [c]                                     ; $5ceb: $f2
    ld e, a                                       ; $5cec: $5f
    db $f4                                        ; $5ced: $f4
    ld [hl], a                                    ; $5cee: $77
    call nc, $d8bf                                ; $5cef: $d4 $bf $d8
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    sbc b                                         ; $5cf4: $98
    rst $38                                       ; $5cf5: $ff
    call nz, $87ff                                ; $5cf6: $c4 $ff $87
    rst $30                                       ; $5cf9: $f7
    adc [hl]                                      ; $5cfa: $8e
    rst $28                                       ; $5cfb: $ef
    rst $38                                       ; $5cfc: $ff
    dec de                                        ; $5cfd: $1b
    rst $38                                       ; $5cfe: $ff
    dec sp                                        ; $5cff: $3b
    rst $28                                       ; $5d00: $ef
    inc [hl]                                      ; $5d01: $34
    cp a                                          ; $5d02: $bf
    ld h, c                                       ; $5d03: $61
    ld e, a                                       ; $5d04: $5f
    rst $38                                       ; $5d05: $ff
    ldh [$7e], a                                  ; $5d06: $e0 $7e
    call z, $8df6                                 ; $5d08: $cc $f6 $8d
    db $fd                                        ; $5d0b: $fd
    add h                                         ; $5d0c: $84
    ei                                            ; $5d0d: $fb
    rst $38                                       ; $5d0e: $ff
    ld b, [hl]                                    ; $5d0f: $46
    cp $f2                                        ; $5d10: $fe $f2
    db $ed                                        ; $5d12: $ed
    di                                            ; $5d13: $f3
    cp a                                          ; $5d14: $bf
    pop hl                                        ; $5d15: $e1
    cp [hl]                                       ; $5d16: $be
    rst $38                                       ; $5d17: $ff
    ld [hl], c                                    ; $5d18: $71
    ldh [$3f], a                                  ; $5d19: $e0 $3f
    ld d, b                                       ; $5d1b: $50
    sbc a                                         ; $5d1c: $9f
    inc a                                         ; $5d1d: $3c
    ld c, a                                       ; $5d1e: $4f
    ld e, e                                       ; $5d1f: $5b
    cp a                                          ; $5d20: $bf
    sbc a                                         ; $5d21: $9f
    db $fd                                        ; $5d22: $fd
    dec sp                                        ; $5d23: $3b
    ccf                                           ; $5d24: $3f
    dec sp                                        ; $5d25: $3b
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    ldh [rSC], a                                  ; $5d28: $e0 $02
    rst $38                                       ; $5d2a: $ff
    cp $05                                        ; $5d2b: $fe $05
    db $fc                                        ; $5d2d: $fc
    ld a, [de]                                    ; $5d2e: $1a
    cp $ef                                        ; $5d2f: $fe $ef
    rst $30                                       ; $5d31: $f7
    ld a, a                                       ; $5d32: $7f
    rst $28                                       ; $5d33: $ef
    add a                                         ; $5d34: $87
    cp a                                          ; $5d35: $bf
    rst $08                                       ; $5d36: $cf
    rst $18                                       ; $5d37: $df
    rst $28                                       ; $5d38: $ef
    ldh [$ef], a                                  ; $5d39: $e0 $ef
    inc c                                         ; $5d3b: $0c
    scf                                           ; $5d3c: $37
    rst $38                                       ; $5d3d: $ff
    ret c                                         ; $5d3e: $d8

    rst $38                                       ; $5d3f: $ff
    inc e                                         ; $5d40: $1c
    xor e                                         ; $5d41: $ab
    adc h                                         ; $5d42: $8c
    sbc $df                                       ; $5d43: $de $df
    ei                                            ; $5d45: $fb
    rst $38                                       ; $5d46: $ff
    rst $30                                       ; $5d47: $f7
    db $fd                                        ; $5d48: $fd
    di                                            ; $5d49: $f3
    sbc a                                         ; $5d4a: $9f
    rst $38                                       ; $5d4b: $ff
    add a                                         ; $5d4c: $87

jr_00d_5d4d:
    rst $38                                       ; $5d4d: $ff
    ld c, e                                       ; $5d4e: $4b
    rst $38                                       ; $5d4f: $ff
    db $fc                                        ; $5d50: $fc
    rst $38                                       ; $5d51: $ff
    ld a, b                                       ; $5d52: $78
    rst $28                                       ; $5d53: $ef
    jr jr_00d_5d4d                                ; $5d54: $18 $f7

    inc c                                         ; $5d56: $0c
    ld a, e                                       ; $5d57: $7b
    rst $38                                       ; $5d58: $ff
    add a                                         ; $5d59: $87
    cp [hl]                                       ; $5d5a: $be
    pop bc                                        ; $5d5b: $c1
    rst $18                                       ; $5d5c: $df
    ldh [$d4], a                                  ; $5d5d: $e0 $d4
    rst $28                                       ; $5d5f: $ef
    ld a, d                                       ; $5d60: $7a
    rst $38                                       ; $5d61: $ff
    rst $00                                       ; $5d62: $c7
    cp [hl]                                       ; $5d63: $be
    ld h, e                                       ; $5d64: $63
    cp $23                                        ; $5d65: $fe $23
    rst $18                                       ; $5d67: $df
    db $e3                                        ; $5d68: $e3
    ld a, d                                       ; $5d69: $7a
    rra                                           ; $5d6a: $1f
    add a                                         ; $5d6b: $87
    db $f4                                        ; $5d6c: $f4
    adc a                                         ; $5d6d: $8f
    add sp, $1f                                   ; $5d6e: $e8 $1f
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    ld [$0808], sp                                ; $5d73: $08 $08 $08
    ld [$0808], sp                                ; $5d76: $08 $08 $08
    ld [$0808], sp                                ; $5d79: $08 $08 $08
    dec c                                         ; $5d7c: $0d
    dec c                                         ; $5d7d: $0d
    dec c                                         ; $5d7e: $0d
    dec c                                         ; $5d7f: $0d
    dec c                                         ; $5d80: $0d
    dec c                                         ; $5d81: $0d
    dec c                                         ; $5d82: $0d
    dec c                                         ; $5d83: $0d
    dec c                                         ; $5d84: $0d
    dec c                                         ; $5d85: $0d
    dec c                                         ; $5d86: $0d
    dec c                                         ; $5d87: $0d
    dec c                                         ; $5d88: $0d
    dec c                                         ; $5d89: $0d
    dec c                                         ; $5d8a: $0d
    dec c                                         ; $5d8b: $0d
    dec c                                         ; $5d8c: $0d
    dec c                                         ; $5d8d: $0d
    dec c                                         ; $5d8e: $0d
    dec c                                         ; $5d8f: $0d
    dec c                                         ; $5d90: $0d
    dec c                                         ; $5d91: $0d
    dec c                                         ; $5d92: $0d
    dec c                                         ; $5d93: $0d
    dec c                                         ; $5d94: $0d
    dec c                                         ; $5d95: $0d
    dec c                                         ; $5d96: $0d
    dec c                                         ; $5d97: $0d
    dec c                                         ; $5d98: $0d
    dec c                                         ; $5d99: $0d
    dec c                                         ; $5d9a: $0d
    dec c                                         ; $5d9b: $0d
    dec c                                         ; $5d9c: $0d
    dec c                                         ; $5d9d: $0d
    dec c                                         ; $5d9e: $0d
    dec c                                         ; $5d9f: $0d
    dec c                                         ; $5da0: $0d
    dec c                                         ; $5da1: $0d
    dec c                                         ; $5da2: $0d
    dec c                                         ; $5da3: $0d
    ld c, $0e                                     ; $5da4: $0e $0e
    ld c, $0d                                     ; $5da6: $0e $0d
    dec c                                         ; $5da8: $0d
    dec c                                         ; $5da9: $0d
    dec c                                         ; $5daa: $0d
    dec c                                         ; $5dab: $0d
    dec c                                         ; $5dac: $0d
    dec c                                         ; $5dad: $0d
    ld c, $0e                                     ; $5dae: $0e $0e
    ld c, $0e                                     ; $5db0: $0e $0e
    ld c, $0c                                     ; $5db2: $0e $0c
    inc c                                         ; $5db4: $0c
    dec c                                         ; $5db5: $0d
    dec c                                         ; $5db6: $0d
    dec c                                         ; $5db7: $0d
    ld c, $0e                                     ; $5db8: $0e $0e
    ld c, $0e                                     ; $5dba: $0e $0e
    ld c, $0d                                     ; $5dbc: $0e $0d
    dec c                                         ; $5dbe: $0d
    dec c                                         ; $5dbf: $0d
    dec c                                         ; $5dc0: $0d
    dec c                                         ; $5dc1: $0d
    ld c, $0e                                     ; $5dc2: $0e $0e
    ld c, $0e                                     ; $5dc4: $0e $0e
    ld c, $0d                                     ; $5dc6: $0e $0d
    dec c                                         ; $5dc8: $0d
    dec c                                         ; $5dc9: $0d
    dec c                                         ; $5dca: $0d
    dec c                                         ; $5dcb: $0d
    ld d, $7c                                     ; $5dcc: $16 $7c
    rst $38                                       ; $5dce: $ff
    ld e, e                                       ; $5dcf: $5b
    cp a                                          ; $5dd0: $bf
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    ld d, $7c                                     ; $5dd4: $16 $7c
    rst $38                                       ; $5dd6: $ff
    ld e, e                                       ; $5dd7: $5b
    rra                                           ; $5dd8: $1f
    ld [bc], a                                    ; $5dd9: $02
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    ld d, $7c                                     ; $5ddc: $16 $7c
    rst $38                                       ; $5dde: $ff
    ld e, e                                       ; $5ddf: $5b
    sbc a                                         ; $5de0: $9f

jr_00d_5de1:
    ld bc, $0000                                  ; $5de1: $01 $00 $00
    adc e                                         ; $5de4: $8b
    ld hl, $218b                                  ; $5de5: $21 $8b $21
    adc e                                         ; $5de8: $8b
    ld hl, $218b                                  ; $5de9: $21 $8b $21
    di                                            ; $5dec: $f3
    nop                                           ; $5ded: $00
    rst $38                                       ; $5dee: $ff
    cp $ff                                        ; $5def: $fe $ff
    or $f5                                        ; $5df1: $f6 $f5
    ld bc, $00fe                                  ; $5df3: $01 $fe $00
    cp $7f                                        ; $5df6: $fe $7f
    ld [bc], a                                    ; $5df8: $02
    db $fc                                        ; $5df9: $fc
    ld [bc], a                                    ; $5dfa: $02
    db $fc                                        ; $5dfb: $fc
    nop                                           ; $5dfc: $00
    db $fd                                        ; $5dfd: $fd
    ld bc, $e4fe                                  ; $5dfe: $01 $fe $e4
    db $fd                                        ; $5e01: $fd
    nop                                           ; $5e02: $00
    cp $e0                                        ; $5e03: $fe $e0
    inc b                                         ; $5e05: $04
    ld sp, hl                                     ; $5e06: $f9
    add hl, bc                                    ; $5e07: $09
    di                                            ; $5e08: $f3
    ld [bc], a                                    ; $5e09: $02
    rst $30                                       ; $5e0a: $f7
    rst $38                                       ; $5e0b: $ff
    inc d                                         ; $5e0c: $14
    rst $20                                       ; $5e0d: $e7
    inc b                                         ; $5e0e: $04
    rst $28                                       ; $5e0f: $ef
    jr z, jr_00d_5de1                             ; $5e10: $28 $cf

    add hl, bc                                    ; $5e12: $09
    rst $18                                       ; $5e13: $df
    rst $38                                       ; $5e14: $ff
    inc de                                        ; $5e15: $13
    rst $18                                       ; $5e16: $df
    rra                                           ; $5e17: $1f
    rst $18                                       ; $5e18: $df
    inc c                                         ; $5e19: $0c
    sbc $21                                       ; $5e1a: $de $21
    ret nz                                        ; $5e1c: $c0

    ld hl, sp-$4e                                 ; $5e1d: $f8 $b2
    rst $38                                       ; $5e1f: $ff
    cp $ff                                        ; $5e20: $fe $ff
    db $e4                                        ; $5e22: $e4
    db $e3                                        ; $5e23: $e3
    inc c                                         ; $5e24: $0c
    ldh a, [rNR42]                                ; $5e25: $f0 $21
    jp $ff4e                                      ; $5e27: $c3 $4e $ff


    sbc a                                         ; $5e2a: $9f
    sub b                                         ; $5e2b: $90
    ccf                                           ; $5e2c: $3f
    jr nz, jr_00d_5eae                            ; $5e2d: $20 $7f

    ld b, b                                       ; $5e2f: $40
    ld a, a                                       ; $5e30: $7f
    ld b, b                                       ; $5e31: $40
    di                                            ; $5e32: $f3
    rst $38                                       ; $5e33: $ff
    add b                                         ; $5e34: $80
    cp $e2                                        ; $5e35: $fe $e2
    ld [hl], d                                    ; $5e37: $72
    ld [c], a                                     ; $5e38: $e2
    rst $38                                       ; $5e39: $ff
    inc bc                                        ; $5e3a: $03
    rst $38                                       ; $5e3b: $ff
    add a                                         ; $5e3c: $87
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    adc a                                         ; $5e3f: $8f
    rst $38                                       ; $5e40: $ff
    adc c                                         ; $5e41: $89
    rst $38                                       ; $5e42: $ff
    ld d, $f9                                     ; $5e43: $16 $f9
    cpl                                           ; $5e45: $2f
    rst $38                                       ; $5e46: $ff
    or $7f                                        ; $5e47: $f6 $7f
    pop hl                                        ; $5e49: $e1
    rst $28                                       ; $5e4a: $ef
    ldh a, [$f6]                                  ; $5e4b: $f0 $f6
    ld sp, hl                                     ; $5e4d: $f9
    rst $08                                       ; $5e4e: $cf

jr_00d_5e4f:
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    add a                                         ; $5e51: $87
    rst $08                                       ; $5e52: $cf
    ld [hl-], a                                   ; $5e53: $32
    add [hl]                                      ; $5e54: $86
    ld c, d                                       ; $5e55: $4a
    ld [hl-], a                                   ; $5e56: $32
    inc de                                        ; $5e57: $13
    ld a, $72                                     ; $5e58: $3e $72
    ldh [$2f], a                                  ; $5e5a: $e0 $2f
    rst $08                                       ; $5e5c: $cf
    ld [$17df], sp                                ; $5e5d: $08 $df $17
    ld [hl], d                                    ; $5e60: $72
    ldh [$fe], a                                  ; $5e61: $e0 $fe
    rst $20                                       ; $5e63: $e7
    ld l, a                                       ; $5e64: $6f
    ld c, $df                                     ; $5e65: $0e $df
    dec l                                         ; $5e67: $2d
    rst $08                                       ; $5e68: $cf
    inc e                                         ; $5e69: $1c
    rst $38                                       ; $5e6a: $ff
    ld [bc], a                                    ; $5e6b: $02
    db $fc                                        ; $5e6c: $fc
    jr jr_00d_5e4f                                ; $5e6d: $18 $e0

    ld a, $68                                     ; $5e6f: $3e $68
    add sp, $05                                   ; $5e71: $e8 $05
    ld [bc], a                                    ; $5e73: $02
    ldh a, [$f8]                                  ; $5e74: $f0 $f8
    ld c, $92                                     ; $5e76: $0e $92
    ldh [$fa], a                                  ; $5e78: $e0 $fa
    add $ff                                       ; $5e7a: $c6 $ff
    rst $38                                       ; $5e7c: $ff
    ld b, $ff                                     ; $5e7d: $06 $ff
    rra                                           ; $5e7f: $1f
    rst $38                                       ; $5e80: $ff
    ld l, a                                       ; $5e81: $6f
    rst $30                                       ; $5e82: $f7
    cp [hl]                                       ; $5e83: $be
    rst $18                                       ; $5e84: $df
    pop bc                                        ; $5e85: $c1
    db $fd                                        ; $5e86: $fd
    add e                                         ; $5e87: $83
    cp $82                                        ; $5e88: $fe $82
    cp $e1                                        ; $5e8a: $fe $e1
    db $fd                                        ; $5e8c: $fd
    add e                                         ; $5e8d: $83
    cp $39                                        ; $5e8e: $fe $39
    db $e4                                        ; $5e90: $e4
    add b                                         ; $5e91: $80
    rst $18                                       ; $5e92: $df
    ld h, b                                       ; $5e93: $60
    or $f9                                        ; $5e94: $f6 $f9
    rst $28                                       ; $5e96: $ef
    ld a, a                                       ; $5e97: $7f
    rst $38                                       ; $5e98: $ff
    inc [hl]                                      ; $5e99: $34
    ld e, $dc                                     ; $5e9a: $1e $dc

jr_00d_5e9c:
    adc [hl]                                      ; $5e9c: $8e
    and $c3                                       ; $5e9d: $e6 $c3
    di                                            ; $5e9f: $f3
    db $e3                                        ; $5ea0: $e3
    rst $38                                       ; $5ea1: $ff
    ei                                            ; $5ea2: $fb
    di                                            ; $5ea3: $f3
    ld a, d                                       ; $5ea4: $7a
    ei                                            ; $5ea5: $fb
    cp [hl]                                       ; $5ea6: $be
    ei                                            ; $5ea7: $fb
    cp a                                          ; $5ea8: $bf
    rst $38                                       ; $5ea9: $ff
    push af                                       ; $5eaa: $f5
    rst $18                                       ; $5eab: $df
    cp $e0                                        ; $5eac: $fe $e0

jr_00d_5eae:
    rst $28                                       ; $5eae: $ef
    ld d, [hl]                                    ; $5eaf: $56
    ldh [$7f], a                                  ; $5eb0: $e0 $7f
    rst $38                                       ; $5eb2: $ff
    rst $30                                       ; $5eb3: $f7
    sbc a                                         ; $5eb4: $9f
    db $fc                                        ; $5eb5: $fc
    and h                                         ; $5eb6: $a4
    db $eb                                        ; $5eb7: $eb
    ld [bc], a                                    ; $5eb8: $02
    jp hl                                         ; $5eb9: $e9


    ld b, b                                       ; $5eba: $40
    cp a                                          ; $5ebb: $bf
    ld [hl], b                                    ; $5ebc: $70
    adc a                                         ; $5ebd: $8f

jr_00d_5ebe:
    adc b                                         ; $5ebe: $88
    ld [hl], a                                    ; $5ebf: $77
    rst $18                                       ; $5ec0: $df
    inc b                                         ; $5ec1: $04
    ei                                            ; $5ec2: $fb
    add h                                         ; $5ec3: $84
    ld a, e                                       ; $5ec4: $7b
    inc bc                                        ; $5ec5: $03
    ld a, [hl]                                    ; $5ec6: $7e
    ld [$0304], a                                 ; $5ec7: $ea $04 $03
    rst $30                                       ; $5eca: $f7
    ld [hl], b                                    ; $5ecb: $70
    ei                                            ; $5ecc: $fb
    ld hl, sp-$02                                 ; $5ecd: $f8 $fe
    ld [c], a                                     ; $5ecf: $e2
    ldh a, [$fb]                                  ; $5ed0: $f0 $fb
    ld h, h                                       ; $5ed2: $64
    di                                            ; $5ed3: $f3
    rst $38                                       ; $5ed4: $ff
    jr z, jr_00d_5ebe                             ; $5ed5: $28 $e7

    ldh [$ef], a                                  ; $5ed7: $e0 $ef
    ldh [$2f], a                                  ; $5ed9: $e0 $2f
    ld h, b                                       ; $5edb: $60
    xor a                                         ; $5edc: $af
    rst $38                                       ; $5edd: $ff
    ldh [$ef], a                                  ; $5ede: $e0 $ef
    add sp, -$59                                  ; $5ee0: $e8 $a7
    db $e4                                        ; $5ee2: $e4
    or e                                          ; $5ee3: $b3
    ld hl, sp-$45                                 ; $5ee4: $f8 $bb
    rst $38                                       ; $5ee6: $ff
    ld hl, sp-$75                                 ; $5ee7: $f8 $8b
    ld hl, sp-$65                                 ; $5ee9: $f8 $9b
    add sp, -$65                                  ; $5eeb: $e8 $9b
    ld hl, sp+$0b                                 ; $5eed: $f8 $0b
    rst $38                                       ; $5eef: $ff
    ldh a, [rNR31]                                ; $5ef0: $f0 $1b
    db $f4                                        ; $5ef2: $f4
    ld [hl], e                                    ; $5ef3: $73
    ldh [$37], a                                  ; $5ef4: $e0 $37
    ld c, b                                       ; $5ef6: $48

jr_00d_5ef7:
    rst $20                                       ; $5ef7: $e7
    rst $38                                       ; $5ef8: $ff
    sub b                                         ; $5ef9: $90
    rst $08                                       ; $5efa: $cf
    jr nz, jr_00d_5e9c                            ; $5efb: $20 $9f

    ld b, b                                       ; $5efd: $40
    ccf                                           ; $5efe: $3f
    add b                                         ; $5eff: $80
    ld a, a                                       ; $5f00: $7f
    rst $38                                       ; $5f01: $ff
    nop                                           ; $5f02: $00

jr_00d_5f03:
    ld a, a                                       ; $5f03: $7f
    ld b, b                                       ; $5f04: $40
    ccf                                           ; $5f05: $3f
    nop                                           ; $5f06: $00
    cp a                                          ; $5f07: $bf
    and b                                         ; $5f08: $a0
    sbc a                                         ; $5f09: $9f
    rst $38                                       ; $5f0a: $ff
    add b                                         ; $5f0b: $80
    rst $18                                       ; $5f0c: $df
    ld d, b                                       ; $5f0d: $50
    rst $08                                       ; $5f0e: $cf
    ld b, b                                       ; $5f0f: $40
    rst $28                                       ; $5f10: $ef
    and b                                         ; $5f11: $a0

jr_00d_5f12:
    rst $28                                       ; $5f12: $ef
    rst $18                                       ; $5f13: $df
    xor b                                         ; $5f14: $a8
    rst $20                                       ; $5f15: $e7
    and b                                         ; $5f16: $a0
    rst $30                                       ; $5f17: $f7
    ret nc                                        ; $5f18: $d0

    cp $e0                                        ; $5f19: $fe $e0
    ld c, d                                       ; $5f1b: $4a
    ld sp, $4aff                                  ; $5f1c: $31 $ff $4a
    ld sp, $33c8                                  ; $5f1f: $31 $c8 $33
    jr z, jr_00d_5ef7                             ; $5f22: $28 $d3

    add hl, de                                    ; $5f24: $19
    ld [c], a                                     ; $5f25: $e2
    ld a, a                                       ; $5f26: $7f
    ld de, $04e2                                  ; $5f27: $11 $e2 $04
    ld a, [c]                                     ; $5f2a: $f2
    ld b, $f0                                     ; $5f2b: $06 $f0
    inc b                                         ; $5f2d: $04
    cp $e0                                        ; $5f2e: $fe $e0
    rst $38                                       ; $5f30: $ff
    db $10                                        ; $5f31: $10
    ldh [rNR11], a                                ; $5f32: $e0 $11
    ldh [rSC], a                                  ; $5f34: $e0 $02
    pop hl                                        ; $5f36: $e1
    inc b                                         ; $5f37: $04

jr_00d_5f38:
    db $e3                                        ; $5f38: $e3
    rst $38                                       ; $5f39: $ff
    jr nz, jr_00d_5f03                            ; $5f3a: $20 $c7

    ld c, b                                       ; $5f3c: $48
    add a                                         ; $5f3d: $87
    add b                                         ; $5f3e: $80
    rrca                                          ; $5f3f: $0f
    db $10                                        ; $5f40: $10
    rrca                                          ; $5f41: $0f
    rst $38                                       ; $5f42: $ff
    inc e                                         ; $5f43: $1c
    nop                                           ; $5f44: $00
    ld bc, $c400                                  ; $5f45: $01 $00 $c4
    inc bc                                        ; $5f48: $03
    jr c, jr_00d_5f12                             ; $5f49: $38 $c7

    cp $e8                                        ; $5f4b: $fe $e8
    call $f804                                    ; $5f4d: $cd $04 $f8
    ld bc, $00f8                                  ; $5f50: $01 $f8 $00
    ld sp, hl                                     ; $5f53: $f9
    nop                                           ; $5f54: $00
    rst $38                                       ; $5f55: $ff
    ld sp, hl                                     ; $5f56: $f9
    ld a, [bc]                                    ; $5f57: $0a
    pop af                                        ; $5f58: $f1
    nop                                           ; $5f59: $00
    di                                            ; $5f5a: $f3
    ld de, $05e2                                  ; $5f5b: $11 $e2 $05
    rst $38                                       ; $5f5e: $ff
    ld [c], a                                     ; $5f5f: $e2
    ld bc, $01e6                                  ; $5f60: $01 $e6 $01
    and $14                                       ; $5f63: $e6 $14
    ld [c], a                                     ; $5f65: $e2
    ld a, [bc]                                    ; $5f66: $0a
    rst $38                                       ; $5f67: $ff
    ldh a, [rDIV]                                 ; $5f68: $f0 $04
    ld hl, sp+$21                                 ; $5f6a: $f8 $21
    call c, $ec11                                 ; $5f6c: $dc $11 $ec
    inc l                                         ; $5f6f: $2c
    rst $38                                       ; $5f70: $ff
    ret nz                                        ; $5f71: $c0

    inc d                                         ; $5f72: $14
    ldh [rLCDC], a                                ; $5f73: $e0 $40
    add b                                         ; $5f75: $80
    jr nz, jr_00d_5f38                            ; $5f76: $20 $c0

    jr nc, @+$01                                  ; $5f78: $30 $ff

    ret nz                                        ; $5f7a: $c0

    ld b, b                                       ; $5f7b: $40
    add b                                         ; $5f7c: $80
    sbc h                                         ; $5f7d: $9c
    ld a, $2e                                     ; $5f7e: $3e $2e
    ld h, [hl]                                    ; $5f80: $66
    ld a, [hl]                                    ; $5f81: $7e
    rst $38                                       ; $5f82: $ff
    ld c, [hl]                                    ; $5f83: $4e
    ld a, h                                       ; $5f84: $7c
    ld a, [hl]                                    ; $5f85: $7e
    ld a, l                                       ; $5f86: $7d
    ld a, h                                       ; $5f87: $7c
    ld a, b                                       ; $5f88: $78
    ld a, l                                       ; $5f89: $7d
    ld a, c                                       ; $5f8a: $79
    rst $38                                       ; $5f8b: $ff
    ld a, h                                       ; $5f8c: $7c
    inc a                                         ; $5f8d: $3c
    halt                                          ; $5f8e: $76
    sbc [hl]                                      ; $5f8f: $9e
    dec sp                                        ; $5f90: $3b
    ld c, a                                       ; $5f91: $4f
    sbc a                                         ; $5f92: $9f
    daa                                           ; $5f93: $27
    rst $38                                       ; $5f94: $ff
    call $e613                                    ; $5f95: $cd $13 $e6
    add hl, bc                                    ; $5f98: $09
    di                                            ; $5f99: $f3
    add b                                         ; $5f9a: $80
    nop                                           ; $5f9b: $00
    add c                                         ; $5f9c: $81
    rst $38                                       ; $5f9d: $ff
    nop                                           ; $5f9e: $00
    add d                                         ; $5f9f: $82
    ld bc, $0304                                  ; $5fa0: $01 $04 $03
    ld [$1007], sp                                ; $5fa3: $08 $07 $10
    sbc [hl]                                      ; $5fa6: $9e
    sub [hl]                                      ; $5fa7: $96
    ldh [rNR41], a                                ; $5fa8: $e0 $20
    rra                                           ; $5faa: $1f
    jr nz, jr_00d_5fcc                            ; $5fab: $20 $1f

    ld d, d                                       ; $5fad: $52
    ld [c], a                                     ; $5fae: $e2
    ld hl, sp-$5a                                 ; $5faf: $f8 $a6
    dec c                                         ; $5fb1: $0d
    rst $38                                       ; $5fb2: $ff
    ldh a, [$30]                                  ; $5fb3: $f0 $30
    ret nz                                        ; $5fb5: $c0

    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    db $10                                        ; $5fb8: $10
    ldh [$09], a                                  ; $5fb9: $e0 $09
    rst $38                                       ; $5fbb: $ff
    ldh a, [rSC]                                  ; $5fbc: $f0 $02
    pop af                                        ; $5fbe: $f1
    inc d                                         ; $5fbf: $14
    db $e3                                        ; $5fc0: $e3
    ld [$20e7], sp                                ; $5fc1: $08 $e7 $20
    rst $38                                       ; $5fc4: $ff
    rst $08                                       ; $5fc5: $cf
    nop                                           ; $5fc6: $00
    rst $08                                       ; $5fc7: $cf
    ld d, b                                       ; $5fc8: $50
    adc a                                         ; $5fc9: $8f
    add b                                         ; $5fca: $80
    rra                                           ; $5fcb: $1f

jr_00d_5fcc:
    nop                                           ; $5fcc: $00
    rst $38                                       ; $5fcd: $ff
    rra                                           ; $5fce: $1f
    ld b, b                                       ; $5fcf: $40
    rra                                           ; $5fd0: $1f
    and b                                         ; $5fd1: $a0
    ld e, a                                       ; $5fd2: $5f
    jr nz, @-$1f                                  ; $5fd3: $20 $df

    ld h, b                                       ; $5fd5: $60
    rst $38                                       ; $5fd6: $ff
    sbc a                                         ; $5fd7: $9f
    ld b, b                                       ; $5fd8: $40
    cp a                                          ; $5fd9: $bf
    ret nz                                        ; $5fda: $c0

    ccf                                           ; $5fdb: $3f
    add d                                         ; $5fdc: $82
    ld a, h                                       ; $5fdd: $7c
    add b                                         ; $5fde: $80
    cp c                                          ; $5fdf: $b9
    ld a, l                                       ; $5fe0: $7d
    ld a, h                                       ; $5fe1: $7c
    and c                                         ; $5fe2: $a1
    ld [hl], h                                    ; $5fe3: $74
    and b                                         ; $5fe4: $a0
    rst $38                                       ; $5fe5: $ff
    ld [bc], a                                    ; $5fe6: $02
    db $fd                                        ; $5fe7: $fd
    cp h                                          ; $5fe8: $bc
    and c                                         ; $5fe9: $a1
    call nz, Call_000_3bbf                        ; $5fea: $c4 $bf $3b
    add b                                         ; $5fed: $80
    scf                                           ; $5fee: $37
    jr @+$29                                      ; $5fef: $18 $27

    ld c, b                                       ; $5ff1: $48
    xor d                                         ; $5ff2: $aa
    ldh [$08], a                                  ; $5ff3: $e0 $08
    rst $38                                       ; $5ff5: $ff
    rlca                                          ; $5ff6: $07
    add d                                         ; $5ff7: $82
    ld bc, $7c39                                  ; $5ff8: $01 $39 $7c
    ld [hl], h                                    ; $5ffb: $74
    ld h, [hl]                                    ; $5ffc: $66
    ld a, [hl]                                    ; $5ffd: $7e
    rst $38                                       ; $5ffe: $ff
    ld [hl], d                                    ; $5fff: $72
    ld a, $7e                                     ; $6000: $3e $7e
    cp [hl]                                       ; $6002: $be
    ld a, $1e                                     ; $6003: $3e $1e
    cp [hl]                                       ; $6005: $be
    sbc [hl]                                      ; $6006: $9e
    rst $38                                       ; $6007: $ff
    ld a, $3c                                     ; $6008: $3e $3c
    ld l, [hl]                                    ; $600a: $6e
    ld a, c                                       ; $600b: $79
    call c, $f9f2                                 ; $600c: $dc $f2 $f9
    db $e4                                        ; $600f: $e4
    rst $28                                       ; $6010: $ef
    or e                                          ; $6011: $b3
    ret z                                         ; $6012: $c8

    ld h, a                                       ; $6013: $67
    sub b                                         ; $6014: $90
    nop                                           ; $6015: $00
    ret c                                         ; $6016: $d8

    ld [$08f7], sp                                ; $6017: $08 $f7 $08
    rst $38                                       ; $601a: $ff
    rst $30                                       ; $601b: $f7
    db $10                                        ; $601c: $10
    rst $28                                       ; $601d: $ef
    ld sp, $a1ce                                  ; $601e: $31 $ce $a1
    ld e, $42                                     ; $6021: $1e $42
    rst $30                                       ; $6023: $f7
    dec a                                         ; $6024: $3d
    inc a                                         ; $6025: $3c
    inc bc                                        ; $6026: $03
    ld l, h                                       ; $6027: $6c
    push hl                                       ; $6028: $e5
    ld [$23f0], sp                                ; $6029: $08 $f0 $23
    rst $00                                       ; $602c: $c7

jr_00d_602d:
    rst $38                                       ; $602d: $ff
    dec c                                         ; $602e: $0d
    sbc $17                                       ; $602f: $de $17
    ret c                                         ; $6031: $d8

    rra                                           ; $6032: $1f
    ret nc                                        ; $6033: $d0

    rra                                           ; $6034: $1f
    ret nc                                        ; $6035: $d0

    rst $38                                       ; $6036: $ff
    dec d                                         ; $6037: $15
    db $db                                        ; $6038: $db
    rrca                                          ; $6039: $0f
    sbc $08                                       ; $603a: $de $08
    ret z                                         ; $603c: $c8

jr_00d_603d:
    rrca                                          ; $603d: $0f
    reti                                          ; $603e: $d9


    rst $38                                       ; $603f: $ff
    ld e, $bf                                     ; $6040: $1e $bf
    cpl                                           ; $6042: $2f
    ld [hl], b                                    ; $6043: $70
    sbc $e1                                       ; $6044: $de $e1
    ld l, a                                       ; $6046: $6f
    sbc a                                         ; $6047: $9f
    rst $38                                       ; $6048: $ff
    or $fc                                        ; $6049: $f6 $fc
    ld [bc], a                                    ; $604b: $02
    ld b, $0a                                     ; $604c: $06 $0a

jr_00d_604e:
    ld a, [c]                                     ; $604e: $f2
    ld [bc], a                                    ; $604f: $02
    or $ff                                        ; $6050: $f6 $ff
    ld b, $f4                                     ; $6052: $06 $f4
    inc b                                         ; $6054: $04
    db $f4                                        ; $6055: $f4
    rlca                                          ; $6056: $07
    rst $30                                       ; $6057: $f7
    ld [$81f1], sp                                ; $6058: $08 $f1 $81
    nop                                           ; $605b: $00
    ldh [$80], a                                  ; $605c: $e0 $80
    jr nz, jr_00d_602d                            ; $605e: $20 $cd

    call z, $ca81                                 ; $6060: $cc $81 $ca
    add c                                         ; $6063: $81
    call z, $1085                                 ; $6064: $cc $85 $10
    xor e                                         ; $6067: $ab
    db $10                                        ; $6068: $10
    rst $18                                       ; $6069: $df
    rst $28                                       ; $606a: $ef
    db $10                                        ; $606b: $10
    rst $28                                       ; $606c: $ef
    jr nz, jr_00d_604e                            ; $606d: $20 $df

    ld hl, sp-$1d                                 ; $606f: $f8 $e3
    ld [$cff7], sp                                ; $6071: $08 $f7 $cf
    jr nc, jr_00d_603d                            ; $6074: $30 $c7

    ret nz                                        ; $6076: $c0

    ccf                                           ; $6077: $3f
    ld [hl], b                                    ; $6078: $70
    add sp, -$7a                                  ; $6079: $e8 $86
    ldh [$8d], a                                  ; $607b: $e0 $8d
    ld e, $ff                                     ; $607d: $1e $ff
    scf                                           ; $607f: $37
    ld a, b                                       ; $6080: $78
    rst $18                                       ; $6081: $df
    ldh [rIE], a                                  ; $6082: $e0 $ff
    nop                                           ; $6084: $00
    db $fd                                        ; $6085: $fd
    inc bc                                        ; $6086: $03
    rst $38                                       ; $6087: $ff
    rst $30                                       ; $6088: $f7
    ld c, $bc                                     ; $6089: $0e $bc
    ld a, b                                       ; $608b: $78
    pop hl                                        ; $608c: $e1
    ret nz                                        ; $608d: $c0

    rrca                                          ; $608e: $0f
    rlca                                          ; $608f: $07
    rst $38                                       ; $6090: $ff
    ld a, e                                       ; $6091: $7b
    inc a                                         ; $6092: $3c
    rst $18                                       ; $6093: $df
    ldh [$fe], a                                  ; $6094: $e0 $fe
    ld bc, $1fef                                  ; $6096: $01 $ef $1f
    rst $38                                       ; $6099: $ff
    ld a, [$f3f3]                                 ; $609a: $fa $f3 $f3
    ld h, c                                       ; $609d: $61
    pop de                                        ; $609e: $d1
    pop de                                        ; $609f: $d1
    ld d, c                                       ; $60a0: $51
    ld d, b                                       ; $60a1: $50
    rst $30                                       ; $60a2: $f7
    ld [hl], b                                    ; $60a3: $70
    ld h, b                                       ; $60a4: $60
    nop                                           ; $60a5: $00
    rst $38                                       ; $60a6: $ff
    ld [c], a                                     ; $60a7: $e2
    add b                                         ; $60a8: $80
    nop                                           ; $60a9: $00
    ldh [$e0], a                                  ; $60aa: $e0 $e0
    rst $38                                       ; $60ac: $ff
    pop bc                                        ; $60ad: $c1
    add b                                         ; $60ae: $80
    ld b, c                                       ; $60af: $41
    pop bc                                        ; $60b0: $c1
    ld b, e                                       ; $60b1: $43
    ld b, d                                       ; $60b2: $42
    ld l, a                                       ; $60b3: $6f
    ld b, a                                       ; $60b4: $47
    rst $38                                       ; $60b5: $ff
    ccf                                           ; $60b6: $3f
    ld a, b                                       ; $60b7: $78
    rrca                                          ; $60b8: $0f
    sbc b                                         ; $60b9: $98
    ld e, a                                       ; $60ba: $5f
    sub c                                         ; $60bb: $91
    ld e, $b2                                     ; $60bc: $1e $b2
    rst $38                                       ; $60be: $ff
    cp l                                          ; $60bf: $bd
    dec l                                         ; $60c0: $2d
    dec hl                                        ; $60c1: $2b
    ld h, d                                       ; $60c2: $62
    ld h, [hl]                                    ; $60c3: $66
    ld b, d                                       ; $60c4: $42
    ld b, [hl]                                    ; $60c5: $46
    call nz, $ccff                                ; $60c6: $c4 $ff $cc
    add h                                         ; $60c9: $84
    adc h                                         ; $60ca: $8c
    adc b                                         ; $60cb: $88

jr_00d_60cc:
    adc b                                         ; $60cc: $88
    adc b                                         ; $60cd: $88
    sbc a                                         ; $60ce: $9f
    ld c, $cf                                     ; $60cf: $0e $cf
    sbc e                                         ; $60d1: $9b
    ld de, $1010                                  ; $60d2: $11 $10 $10
    sub b                                         ; $60d5: $90
    sbc a                                         ; $60d6: $9f
    ld h, h                                       ; $60d7: $64
    and $0f                                       ; $60d8: $e6 $0f
    ret z                                         ; $60da: $c8

    rst $38                                       ; $60db: $ff
    rst $20                                       ; $60dc: $e7
    and b                                         ; $60dd: $a0
    ld [hl], a                                    ; $60de: $77
    call nc, $f033                                ; $60df: $d4 $33 $f0
    dec de                                        ; $60e2: $1b
    ld a, b                                       ; $60e3: $78
    rst $38                                       ; $60e4: $ff
    add sp, -$31                                  ; $60e5: $e8 $cf
    adc a                                         ; $60e7: $8f
    add hl, de                                    ; $60e8: $19
    ld c, $77                                     ; $60e9: $0e $77
    jr c, jr_00d_60cc                             ; $60eb: $38 $df

    rst $38                                       ; $60ed: $ff
    ldh [$7d], a                                  ; $60ee: $e0 $7d
    add e                                         ; $60f0: $83
    or $0f                                        ; $60f1: $f6 $0f
    jp c, $ee3e                                   ; $60f3: $da $3e $ee

    rst $38                                       ; $60f6: $ff
    ld a, [c]                                     ; $60f7: $f2
    ld a, [hl]                                    ; $60f8: $7e
    add d                                         ; $60f9: $82
    cp $02                                        ; $60fa: $fe $02
    ld a, [$5c06]                                 ; $60fc: $fa $06 $5c
    rst $38                                       ; $60ff: $ff
    cp [hl]                                       ; $6100: $be
    and [hl]                                      ; $6101: $a6
    ld [c], a                                     ; $6102: $e2
    jp c, $fada                                   ; $6103: $da $da $fa

    and d                                         ; $6106: $a2
    ld [hl+], a                                   ; $6107: $22
    rst $38                                       ; $6108: $ff
    ld [hl+], a                                   ; $6109: $22
    ld b, $02                                     ; $610a: $06 $02
    inc c                                         ; $610c: $0c
    ld b, $f9                                     ; $610d: $06 $f9
    ld a, h                                       ; $610f: $7c
    jp nc, $99ff                                  ; $6110: $d2 $ff $99

    ldh a, [$3b]                                  ; $6113: $f0 $3b
    ld a, [$f8c9]                                 ; $6115: $fa $c9 $f8
    dec c                                         ; $6118: $0d
    db $fc                                        ; $6119: $fc
    ld a, a                                       ; $611a: $7f
    dec [hl]                                      ; $611b: $35
    db $fd                                        ; $611c: $fd
    call z, $068c                                 ; $611d: $cc $8c $06
    ld b, $02                                     ; $6120: $06 $02
    rst $38                                       ; $6122: $ff
    db $e3                                        ; $6123: $e3
    rst $30                                       ; $6124: $f7
    ld b, $02                                     ; $6125: $06 $02
    ld b, $ff                                     ; $6127: $06 $ff

jr_00d_6129:
    ldh [$0e], a                                  ; $6129: $e0 $0e
    ld b, $0e                                     ; $612b: $06 $0e
    ld a, [bc]                                    ; $612d: $0a
    rst $08                                       ; $612e: $cf
    ld [$7aca], a                                 ; $612f: $ea $ca $7a
    ld a, [hl-]                                   ; $6132: $3a
    adc b                                         ; $6133: $88
    rst $38                                       ; $6134: $ff
    ld h, [hl]                                    ; $6135: $66
    ret nc                                        ; $6136: $d0

    rlca                                          ; $6137: $07
    ldh [$5f], a                                  ; $6138: $e0 $5f
    rst $30                                       ; $613a: $f7
    ret nc                                        ; $613b: $d0

    scf                                           ; $613c: $37
    and b                                         ; $613d: $a0
    ld [hl], a                                    ; $613e: $77
    ld [hl+], a                                   ; $613f: $22
    and d                                         ; $6140: $a2
    rra                                           ; $6141: $1f
    jp nc, Jump_000_00a9                          ; $6142: $d2 $a9 $00

    cp $ff                                        ; $6145: $fe $ff
    xor $ed                                       ; $6147: $ee $ed
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    jp hl                                         ; $614c: $e9


    nop                                           ; $614d: $00
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    db $ec                                        ; $6150: $ec
    db $eb                                        ; $6151: $eb
    ld bc, $ebdd                                  ; $6152: $01 $dd $eb
    add h                                         ; $6155: $84
    ld c, d                                       ; $6156: $4a
    add h                                         ; $6157: $84
    rst $38                                       ; $6158: $ff
    ld c, d                                       ; $6159: $4a
    inc b                                         ; $615a: $04
    ret z                                         ; $615b: $c8

    inc b                                         ; $615c: $04
    jr z, @+$06                                   ; $615d: $28 $04

    add hl, de                                    ; $615f: $19
    inc c                                         ; $6160: $0c
    rst $38                                       ; $6161: $ff
    ld de, $0409                                  ; $6162: $11 $09 $04
    add hl, bc                                    ; $6165: $09
    ld b, $7f                                     ; $6166: $06 $7f
    add b                                         ; $6168: $80
    ld a, [hl]                                    ; $6169: $7e
    rst $38                                       ; $616a: $ff
    add c                                         ; $616b: $81
    ld a, h                                       ; $616c: $7c
    add d                                         ; $616d: $82
    ld hl, sp+$04                                 ; $616e: $f8 $04
    ldh a, [$08]                                  ; $6170: $f0 $08
    ldh [$5f], a                                  ; $6172: $e0 $5f
    db $10                                        ; $6174: $10
    ldh [rNR10], a                                ; $6175: $e0 $10
    ret nz                                        ; $6177: $c0

    jr nz, jr_00d_6129                            ; $6178: $20 $af

    db $fc                                        ; $617a: $fc
    db $10                                        ; $617b: $10
    adc a                                         ; $617c: $8f
    rst $38                                       ; $617d: $ff
    db $fc                                        ; $617e: $fc
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    push af                                       ; $6181: $f5
    db $f4                                        ; $6182: $f4
    ld b, b                                       ; $6183: $40
    nop                                           ; $6184: $00
    ld [hl], b                                    ; $6185: $70
    nop                                           ; $6186: $00
    adc b                                         ; $6187: $88
    dec bc                                        ; $6188: $0b
    rst $38                                       ; $6189: $ff
    inc b                                         ; $618a: $04
    dec bc                                        ; $618b: $0b
    inc b                                         ; $618c: $04
    rrca                                          ; $618d: $0f
    db $10                                        ; $618e: $10
    ld c, $11                                     ; $618f: $0e $11
    inc e                                         ; $6191: $1c
    rst $38                                       ; $6192: $ff

jr_00d_6193:
    ld [bc], a                                    ; $6193: $02
    jr jr_00d_619a                                ; $6194: $18 $04

    jr jr_00d_61b8                                ; $6196: $18 $20

    jr nc, @+$4a                                  ; $6198: $30 $48

jr_00d_619a:
    ret nz                                        ; $619a: $c0

    ld e, a                                       ; $619b: $5f
    jr nz, @-$7e                                  ; $619c: $20 $80

    ld b, b                                       ; $619e: $40
    nop                                           ; $619f: $00

jr_00d_61a0:
    add b                                         ; $61a0: $80
    jp Jump_000_08f2                              ; $61a1: $c3 $f2 $08


    cp $e0                                        ; $61a4: $fe $e0
    pop af                                        ; $61a6: $f1
    db $10                                        ; $61a7: $10
    ld l, [hl]                                    ; $61a8: $6e
    ldh [$4c], a                                  ; $61a9: $e0 $4c
    pop hl                                        ; $61ab: $e1
    ld hl, sp-$1f                                 ; $61ac: $f8 $e1
    ld [$3008], sp                                ; $61ae: $08 $08 $30
    nop                                           ; $61b1: $00
    reti                                          ; $61b2: $d9


    ret nz                                        ; $61b3: $c0

    sbc c                                         ; $61b4: $99
    rst $38                                       ; $61b5: $ff
    ret nc                                        ; $61b6: $d0

    db $dd                                        ; $61b7: $dd

jr_00d_61b8:
    ld bc, $cc02                                  ; $61b8: $01 $02 $cc
    jp z, Jump_000_0004                           ; $61bb: $ca $04 $00

    rst $30                                       ; $61be: $f7
    add h                                         ; $61bf: $84
    nop                                           ; $61c0: $00
    inc bc                                        ; $61c1: $03
    cp d                                          ; $61c2: $ba
    rst $00                                       ; $61c3: $c7
    ld [hl], b                                    ; $61c4: $70
    add b                                         ; $61c5: $80
    ldh [rNR10], a                                ; $61c6: $e0 $10
    rst $38                                       ; $61c8: $ff
    db $e3                                        ; $61c9: $e3
    inc e                                         ; $61ca: $1c
    cp $01                                        ; $61cb: $fe $01
    jr c, jr_00d_6193                             ; $61cd: $38 $c4

    nop                                           ; $61cf: $00

jr_00d_61d0:
    jr c, jr_00d_61d0                             ; $61d0: $38 $fe

    or e                                          ; $61d2: $b3
    pop hl                                        ; $61d3: $e1
    ld [bc], a                                    ; $61d4: $02
    dec c                                         ; $61d5: $0d
    rrca                                          ; $61d6: $0f
    jr nc, @+$01                                  ; $61d7: $30 $ff

    nop                                           ; $61d9: $00
    rrca                                          ; $61da: $0f
    rst $38                                       ; $61db: $ff
    db $10                                        ; $61dc: $10
    ld b, $09                                     ; $61dd: $06 $09
    inc c                                         ; $61df: $0c
    ld [bc], a                                    ; $61e0: $02
    ld [$1014], sp                                ; $61e1: $08 $14 $10
    rst $38                                       ; $61e4: $ff
    ld [$3100], sp                                ; $61e5: $08 $00 $31
    ld b, b                                       ; $61e8: $40
    and c                                         ; $61e9: $a1
    add b                                         ; $61ea: $80
    ld b, d                                       ; $61eb: $42
    ret nz                                        ; $61ec: $c0

    db $fd                                        ; $61ed: $fd
    inc a                                         ; $61ee: $3c
    ld c, h                                       ; $61ef: $4c
    rst $28                                       ; $61f0: $ef
    rlca                                          ; $61f1: $07
    ld [$231b], sp                                ; $61f2: $08 $1b $23
    ld l, h                                       ; $61f5: $6c
    adc l                                         ; $61f6: $8d
    ld a, [hl]                                    ; $61f7: $7e
    ld a, a                                       ; $61f8: $7f
    rst $20                                       ; $61f9: $e7
    ldh [rNR10], a                                ; $61fa: $e0 $10
    ret nc                                        ; $61fc: $d0

    ret z                                         ; $61fd: $c8

    jr z, jr_00d_61a0                             ; $61fe: $28 $a0

    ld [hl], h                                    ; $6200: $74
    db $fc                                        ; $6201: $fc
    cp $50                                        ; $6202: $fe $50
    ldh [$03], a                                  ; $6204: $e0 $03
    inc c                                         ; $6206: $0c
    dec e                                         ; $6207: $1d
    ld hl, $4e2e                                  ; $6208: $21 $2e $4e
    ld d, b                                       ; $620b: $50
    rst $38                                       ; $620c: $ff
    sub b                                         ; $620d: $90
    and b                                         ; $620e: $a0
    jr nz, @-$3e                                  ; $620f: $20 $c0

    ld b, b                                       ; $6211: $40
    ld b, b                                       ; $6212: $40
    ld b, b                                       ; $6213: $40
    nop                                           ; $6214: $00
    ld a, a                                       ; $6215: $7f
    nop                                           ; $6216: $00
    ld hl, sp+$05                                 ; $6217: $f8 $05
    rst $30                                       ; $6219: $f7

jr_00d_621a:
    ldh a, [$0e]                                  ; $621a: $f0 $0e
    ld c, $e5                                     ; $621c: $0e $e5
    ld [c], a                                     ; $621e: $e2
    ld a, [hl]                                    ; $621f: $7e
    ld [hl-], a                                   ; $6220: $32
    ld [c], a                                     ; $6221: $e2
    ld hl, sp+$04                                 ; $6222: $f8 $04
    ld [hl], h                                    ; $6224: $74
    ld [hl], b                                    ; $6225: $70

jr_00d_6226:
    db $fc                                        ; $6226: $fc
    ld hl, sp-$02                                 ; $6227: $f8 $fe
    pop hl                                        ; $6229: $e1
    rst $28                                       ; $622a: $ef
    db $f4                                        ; $622b: $f4
    ldh a, [rBCPS]                                ; $622c: $f0 $68
    ld h, h                                       ; $622e: $64
    jr c, jr_00d_621a                             ; $622f: $38 $e9

    inc bc                                        ; $6231: $03
    inc b                                         ; $6232: $04
    ld b, $ff                                     ; $6233: $06 $ff
    ld bc, $2010                                  ; $6235: $01 $10 $20
    jr nc, jr_00d_623a                            ; $6238: $30 $00

jr_00d_623a:
    jr nz, @+$52                                  ; $623a: $20 $50

    ld h, b                                       ; $623c: $60
    rst $38                                       ; $623d: $ff
    add b                                         ; $623e: $80

jr_00d_623f:
    ldh [rP1], a                                  ; $623f: $e0 $00
    and b                                         ; $6241: $a0
    ld b, b                                       ; $6242: $40
    nop                                           ; $6243: $00
    and b                                         ; $6244: $a0
    nop                                           ; $6245: $00
    db $fd                                        ; $6246: $fd
    jr nz, jr_00d_62c3                            ; $6247: $20 $7a

    pop hl                                        ; $6249: $e1
    inc l                                         ; $624a: $2c
    dec c                                         ; $624b: $0d
    jr nc, jr_00d_6265                            ; $624c: $30 $17

    jr nc, jr_00d_626f                            ; $624e: $30 $1f

    rst $38                                       ; $6250: $ff
    jr nc, jr_00d_6272                            ; $6251: $30 $1f

    ld sp, $2e15                                  ; $6253: $31 $15 $2e
    rrca                                          ; $6256: $0f
    or b                                          ; $6257: $b0
    scf                                           ; $6258: $37
    rst $38                                       ; $6259: $ff
    ret nz                                        ; $625a: $c0

    rst $18                                       ; $625b: $df
    nop                                           ; $625c: $00
    rst $38                                       ; $625d: $ff
    ld bc, $06fd                                  ; $625e: $01 $fd $06
    rst $30                                       ; $6261: $f7
    rst $38                                       ; $6262: $ff
    dec sp                                        ; $6263: $3b
    cp h                                          ; $6264: $bc

jr_00d_6265:
    sbc $e1                                       ; $6265: $de $e1
    rst $30                                       ; $6267: $f7
    rrca                                          ; $6268: $0f
    jr jr_00d_623f                                ; $6269: $18 $d4

    rst $38                                       ; $626b: $ff
    inc d                                         ; $626c: $14
    ldh a, [$6f]                                  ; $626d: $f0 $6f

jr_00d_626f:
    ld a, b                                       ; $626f: $78
    cp a                                          ; $6270: $bf
    rst $08                                       ; $6271: $cf

jr_00d_6272:
    add sp, $19                                   ; $6272: $e8 $19
    cp a                                          ; $6274: $bf
    or b                                          ; $6275: $b0
    ld [hl], a                                    ; $6276: $77
    ret nz                                        ; $6277: $c0

    rst $18                                       ; $6278: $df
    ld bc, $cf7d                                  ; $6279: $01 $7d $cf
    pop bc                                        ; $627c: $c1
    ldh a, [rIE]                                  ; $627d: $f0 $ff
    ld [$e0e8], sp                                ; $627f: $08 $e8 $e0
    jr @-$2e                                      ; $6282: $18 $d0

    jr z, jr_00d_6226                             ; $6284: $28 $a0

    ld d, b                                       ; $6286: $50
    rst $38                                       ; $6287: $ff
    ld c, b                                       ; $6288: $48
    and b                                         ; $6289: $a0
    sub b                                         ; $628a: $90
    ld bc, $0102                                  ; $628b: $01 $02 $01
    ld [bc], a                                    ; $628e: $02
    ld [bc], a                                    ; $628f: $02
    ld [hl], a                                    ; $6290: $77
    nop                                           ; $6291: $00
    inc bc                                        ; $6292: $03
    ld bc, $e3fe                                  ; $6293: $01 $fe $e3
    ld [bc], a                                    ; $6296: $02
    nop                                           ; $6297: $00
    add b                                         ; $6298: $80
    rst $38                                       ; $6299: $ff
    ld [c], a                                     ; $629a: $e2
    sbc $c7                                       ; $629b: $de $c7
    jp Jump_000_0303                              ; $629d: $c3 $03 $03


    add a                                         ; $62a0: $87
    add a                                         ; $62a1: $87
    cp a                                          ; $62a2: $bf
    pop bc                                        ; $62a3: $c1
    ld b, $06                                     ; $62a4: $06 $06
    rst $38                                       ; $62a6: $ff
    rra                                           ; $62a7: $1f
    rra                                           ; $62a8: $1f
    ld h, a                                       ; $62a9: $67
    ld l, a                                       ; $62aa: $6f
    add b                                         ; $62ab: $80
    cp [hl]                                       ; $62ac: $be
    add c                                         ; $62ad: $81
    db $fd                                        ; $62ae: $fd
    rst $38                                       ; $62af: $ff
    add e                                         ; $62b0: $83
    cp $30                                        ; $62b1: $fe $30
    jr z, @-$0e                                   ; $62b3: $28 $f0

    ldh [$30], a                                  ; $62b5: $e0 $30
    ldh [rIE], a                                  ; $62b7: $e0 $ff
    jr nc, jr_00d_631b                            ; $62b9: $30 $60

    ldh a, [$e0]                                  ; $62bb: $f0 $e0
    or b                                          ; $62bd: $b0
    add sp, -$58                                  ; $62be: $e8 $a8
    db $e4                                        ; $62c0: $e4
    rst $38                                       ; $62c1: $ff
    cp h                                          ; $62c2: $bc

jr_00d_62c3:
    ld hl, sp+$06                                 ; $62c3: $f8 $06
    nop                                           ; $62c5: $00
    ld b, $00                                     ; $62c6: $06 $00
    inc b                                         ; $62c8: $04
    ld a, [bc]                                    ; $62c9: $0a
    rst $38                                       ; $62ca: $ff
    inc c                                         ; $62cb: $0c
    nop                                           ; $62cc: $00
    inc c                                         ; $62cd: $0c
    ld de, $0518                                  ; $62ce: $11 $18 $05
    jr jr_00d_62d4                                ; $62d1: $18 $01

    rst $28                                       ; $62d3: $ef

jr_00d_62d4:
    jr jr_00d_62d7                                ; $62d4: $18 $01

    nop                                           ; $62d6: $00

jr_00d_62d7:
    ld h, b                                       ; $62d7: $60
    ld [$c0c0], sp                                ; $62d8: $08 $c0 $c0
    ld bc, $fb82                                  ; $62db: $01 $82 $fb
    ld [bc], a                                    ; $62de: $02
    add b                                         ; $62df: $80
    xor h                                         ; $62e0: $ac
    pop hl                                        ; $62e1: $e1
    ld bc, $3f02                                  ; $62e2: $01 $02 $3f
    ld [$ff29], sp                                ; $62e5: $08 $29 $ff
    rrca                                          ; $62e8: $0f
    ld e, [hl]                                    ; $62e9: $5e
    ld e, $a0                                     ; $62ea: $1e $a0
    cpl                                           ; $62ec: $2f
    ret nz                                        ; $62ed: $c0

    sbc $0f                                       ; $62ee: $de $0f
    ld a, a                                       ; $62f0: $7f
    ld l, a                                       ; $62f1: $6f
    push af                                       ; $62f2: $f5
    or $fb                                        ; $62f3: $f6 $fb
    ld [bc], a                                    ; $62f5: $02
    cp b                                          ; $62f6: $b8
    ld a, e                                       ; $62f7: $7b
    ld h, b                                       ; $62f8: $60
    ldh [rIE], a                                  ; $62f9: $e0 $ff
    cp $0f                                        ; $62fb: $fe $0f
    rst $28                                       ; $62fd: $ef
    or $fa                                        ; $62fe: $f6 $fa
    ld l, l                                       ; $6300: $6d
    di                                            ; $6301: $f3
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    pop de                                        ; $6304: $d1
    cp $51                                        ; $6305: $fe $51
    ld b, $f6                                     ; $6307: $06 $f6
    dec de                                        ; $6309: $1b
    jp c, $ffe3                                   ; $630a: $da $e3 $ff

    xor $03                                       ; $630d: $ee $03
    ld a, [hl]                                    ; $630f: $7e
    inc bc                                        ; $6310: $03
    cp $03                                        ; $6311: $fe $03
    ld a, [$e71d]                                 ; $6313: $fa $1d $e7
    ld e, h                                       ; $6316: $5c
    cp e                                          ; $6317: $bb
    and [hl]                                      ; $6318: $a6
    ld c, [hl]                                    ; $6319: $4e
    and b                                         ; $631a: $a0

jr_00d_631b:
    ld [c], a                                     ; $631b: $e2
    xor d                                         ; $631c: $aa
    ld [bc], a                                    ; $631d: $02
    nop                                           ; $631e: $00
    ld [bc], a                                    ; $631f: $02
    rst $38                                       ; $6320: $ff
    inc b                                         ; $6321: $04
    dec b                                         ; $6322: $05
    add hl, bc                                    ; $6323: $09
    ld a, [bc]                                    ; $6324: $0a
    ld [bc], a                                    ; $6325: $02
    inc c                                         ; $6326: $0c
    inc d                                         ; $6327: $14
    inc d                                         ; $6328: $14
    rst $38                                       ; $6329: $ff
    inc b                                         ; $632a: $04
    jr @+$2a                                      ; $632b: $18 $28

    add hl, hl                                    ; $632d: $29
    add hl, bc                                    ; $632e: $09
    adc a                                         ; $632f: $8f
    adc a                                         ; $6330: $8f

jr_00d_6331:
    adc c                                         ; $6331: $89
    rst $38                                       ; $6332: $ff
    adc c                                         ; $6333: $89
    db $10                                        ; $6334: $10
    ld d, $26                                     ; $6335: $16 $26
    cpl                                           ; $6337: $2f
    ld h, c                                       ; $6338: $61
    ld a, a                                       ; $6339: $7f
    ldh [rIE], a                                  ; $633a: $e0 $ff
    rst $28                                       ; $633c: $ef
    ldh a, [$f6]                                  ; $633d: $f0 $f6
    rst $08                                       ; $633f: $cf

jr_00d_6340:
    rst $08                                       ; $6340: $cf
    add e                                         ; $6341: $83
    cp $83                                        ; $6342: $fe $83
    rst $18                                       ; $6344: $df
    cp $81                                        ; $6345: $fe $81
    db $fd                                        ; $6347: $fd
    nop                                           ; $6348: $00
    rst $38                                       ; $6349: $ff
    cp $e1                                        ; $634a: $fe $e1
    add b                                         ; $634c: $80
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    ld b, b                                       ; $634f: $40
    rst $18                                       ; $6350: $df
    adc h                                         ; $6351: $8c
    ld hl, sp-$64                                 ; $6352: $f8 $9c
    ld hl, sp-$74                                 ; $6354: $f8 $8c
    add sp, -$01                                  ; $6356: $e8 $ff
    inc c                                         ; $6358: $0c
    ld hl, sp+$14                                 ; $6359: $f8 $14
    ldh a, [$78]                                  ; $635b: $f0 $78
    db $f4                                        ; $635d: $f4
    jr z, jr_00d_6340                             ; $635e: $28 $e0

    rst $38                                       ; $6360: $ff
    ld d, b                                       ; $6361: $50
    ld c, b                                       ; $6362: $48
    add hl, bc                                    ; $6363: $09
    inc d                                         ; $6364: $14
    dec b                                         ; $6365: $05
    ld a, [bc]                                    ; $6366: $0a
    inc bc                                        ; $6367: $03
    inc b                                         ; $6368: $04
    rst $38                                       ; $6369: $ff
    ld [bc], a                                    ; $636a: $02
    ld hl, $1102                                  ; $636b: $21 $02 $11
    inc de                                        ; $636e: $13
    inc l                                         ; $636f: $2c
    dec bc                                        ; $6370: $0b
    inc d                                         ; $6371: $14
    pop af                                        ; $6372: $f1
    ccf                                           ; $6373: $3f
    sub b                                         ; $6374: $90
    ret nz                                        ; $6375: $c0

    xor l                                         ; $6376: $ad
    ldh [$ca], a                                  ; $6377: $e0 $ca
    and c                                         ; $6379: $a1
    call nz, $8048                                ; $637a: $c4 $48 $80
    ret nz                                        ; $637d: $c0

    rst $38                                       ; $637e: $ff
    jr jr_00d_6331                                ; $637f: $18 $b0

    ld c, b                                       ; $6381: $48
    rlca                                          ; $6382: $07
    ld a, [bc]                                    ; $6383: $0a
    dec bc                                        ; $6384: $0b
    ld [bc], a                                    ; $6385: $02
    dec c                                         ; $6386: $0d
    rst $38                                       ; $6387: $ff
    ld b, $0f                                     ; $6388: $06 $0f
    inc b                                         ; $638a: $04
    rrca                                          ; $638b: $0f
    rlca                                          ; $638c: $07
    ld b, $08                                     ; $638d: $06 $08
    ld bc, $a3f6                                  ; $638f: $01 $f6 $a3
    add b                                         ; $6392: $80
    rst $28                                       ; $6393: $ef
    ld [hl], b                                    ; $6394: $70
    or l                                          ; $6395: $b5
    ld [c], a                                     ; $6396: $e2
    nop                                           ; $6397: $00
    ld a, a                                       ; $6398: $7f
    add b                                         ; $6399: $80
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    ldh [$be], a                                  ; $639c: $e0 $be
    pop bc                                        ; $639e: $c1
    ld a, a                                       ; $639f: $7f
    ld b, c                                       ; $63a0: $41
    rst $38                                       ; $63a1: $ff
    jp c, $ffa7                                   ; $63a2: $da $a7 $ff

    ld a, [$22ff]                                 ; $63a5: $fa $ff $22
    ei                                            ; $63a8: $fb
    ld b, $f5                                     ; $63a9: $06 $f5
    inc c                                         ; $63ab: $0c
    ld a, d                                       ; $63ac: $7a
    rst $18                                       ; $63ad: $df
    ld sp, hl                                     ; $63ae: $f9
    or h                                          ; $63af: $b4
    jp nc, $f034                                  ; $63b0: $d2 $34 $f0

    adc a                                         ; $63b3: $8f
    xor l                                         ; $63b4: $ad
    inc sp                                        ; $63b5: $33
    inc de                                        ; $63b6: $13
    cp a                                          ; $63b7: $bf
    ccf                                           ; $63b8: $3f
    rra                                           ; $63b9: $1f
    dec l                                         ; $63ba: $2d
    inc c                                         ; $63bb: $0c
    ld e, $21                                     ; $63bc: $1e $21
    ld [hl], a                                    ; $63be: $77
    and l                                         ; $63bf: $a5
    or a                                          ; $63c0: $b7
    rst $38                                       ; $63c1: $ff
    add a                                         ; $63c2: $87
    ld c, e                                       ; $63c3: $4b
    ld [hl-], a                                   ; $63c4: $32
    add a                                         ; $63c5: $87
    ld c, d                                       ; $63c6: $4a
    dec bc                                        ; $63c7: $0b
    inc de                                        ; $63c8: $13
    inc d                                         ; $63c9: $14
    rst $38                                       ; $63ca: $ff
    inc b                                         ; $63cb: $04
    rra                                           ; $63cc: $1f
    cpl                                           ; $63cd: $2f
    jr z, jr_00d_63d8                             ; $63ce: $28 $08

    scf                                           ; $63d0: $37
    rla                                           ; $63d1: $17
    ldh a, [rIE]                                  ; $63d2: $f0 $ff
    or $6f                                        ; $63d4: $f6 $6f
    rst $28                                       ; $63d6: $ef
    push de                                       ; $63d7: $d5

jr_00d_63d8:
    inc [hl]                                      ; $63d8: $34
    xor l                                         ; $63d9: $ad
    call c, $ffda                                 ; $63da: $dc $da $ff
    and $ef                                       ; $63dd: $e6 $ef
    di                                            ; $63df: $f3
    rst $30                                       ; $63e0: $f7
    ei                                            ; $63e1: $fb
    ld a, [hl]                                    ; $63e2: $7e
    ld a, d                                       ; $63e3: $7a
    and b                                         ; $63e4: $a0
    cp e                                          ; $63e5: $bb
    sub b                                         ; $63e6: $90
    ld b, b                                       ; $63e7: $40
    cp $82                                        ; $63e8: $fe $82
    add b                                         ; $63ea: $80
    nop                                           ; $63eb: $00
    add b                                         ; $63ec: $80
    inc bc                                        ; $63ed: $03
    ret nz                                        ; $63ee: $c0

    ret nz                                        ; $63ef: $c0

    rst $38                                       ; $63f0: $ff
    and b                                         ; $63f1: $a0
    rra                                           ; $63f2: $1f
    jr nz, jr_00d_6404                            ; $63f3: $20 $0f

    jr nc, jr_00d_6436                            ; $63f5: $30 $3f

    ld b, b                                       ; $63f7: $40
    ld e, l                                       ; $63f8: $5d
    rst $38                                       ; $63f9: $ff
    sbc h                                         ; $63fa: $9c
    or a                                          ; $63fb: $b7
    ld l, $cf                                     ; $63fc: $2e $cf
    ld a, [hl]                                    ; $63fe: $7e
    db $fd                                        ; $63ff: $fd
    ld a, h                                       ; $6400: $7c
    cp $ff                                        ; $6401: $fe $ff
    ld a, l                                       ; $6403: $7d

jr_00d_6404:
    ldh [rNR10], a                                ; $6404: $e0 $10
    ldh a, [$08]                                  ; $6406: $f0 $08
    ld a, h                                       ; $6408: $7c
    add d                                         ; $6409: $82
    cp d                                          ; $640a: $ba
    rst $38                                       ; $640b: $ff
    add hl, sp                                    ; $640c: $39
    db $ed                                        ; $640d: $ed
    ld [hl], h                                    ; $640e: $74
    di                                            ; $640f: $f3
    ld a, [hl]                                    ; $6410: $7e
    cp a                                          ; $6411: $bf
    ld a, $7f                                     ; $6412: $3e $7f
    db $fd                                        ; $6414: $fd
    cp [hl]                                       ; $6415: $be
    db $10                                        ; $6416: $10
    adc l                                         ; $6417: $8d
    cp $43                                        ; $6418: $fe $43
    rst $10                                       ; $641a: $d7
    ld l, a                                       ; $641b: $6f
    cp b                                          ; $641c: $b8
    ccf                                           ; $641d: $3f
    rst $38                                       ; $641e: $ff
    ld l, b                                       ; $641f: $68
    rrca                                          ; $6420: $0f
    ld sp, $535f                                  ; $6421: $31 $5f $53
    ld e, $6f                                     ; $6424: $1e $6f
    cp l                                          ; $6426: $bd
    rst $38                                       ; $6427: $ff
    or [hl]                                       ; $6428: $b6
    dec hl                                        ; $6429: $2b
    call z, Call_000_0afa                         ; $642a: $cc $fa $0a
    ld hl, sp+$36                                 ; $642d: $f8 $36
    db $fc                                        ; $642f: $fc
    rst $38                                       ; $6430: $ff
    adc $fd                                       ; $6431: $ce $fd
    ld [hl], l                                    ; $6433: $75
    adc h                                         ; $6434: $8c
    ei                                            ; $6435: $fb

jr_00d_6436:
    ld b, $ff                                     ; $6436: $06 $ff
    ld [bc], a                                    ; $6438: $02
    reti                                          ; $6439: $d9


    rst $38                                       ; $643a: $ff
    inc h                                         ; $643b: $24
    db $e3                                        ; $643c: $e3
    ld [$3f98], a                                 ; $643d: $ea $98 $3f
    rra                                           ; $6440: $1f
    cp $e7                                        ; $6441: $fe $e7
    ld l, $0e                                     ; $6443: $2e $0e
    ld a, a                                       ; $6445: $7f
    dec e                                         ; $6446: $1d
    dec l                                         ; $6447: $2d
    cp d                                          ; $6448: $ba
    cp [hl]                                       ; $6449: $be
    cp a                                          ; $644a: $bf
    cp a                                          ; $644b: $bf
    rst $18                                       ; $644c: $df
    rst $38                                       ; $644d: $ff
    ldh [rIE], a                                  ; $644e: $e0 $ff
    rst $28                                       ; $6450: $ef
    rst $28                                       ; $6451: $ef
    adc a                                         ; $6452: $8f
    adc a                                         ; $6453: $8f
    ld a, a                                       ; $6454: $7f
    ld a, a                                       ; $6455: $7f
    sub a                                         ; $6456: $97
    rst $30                                       ; $6457: $f7
    rst $38                                       ; $6458: $ff
    and b                                         ; $6459: $a0
    add b                                         ; $645a: $80
    ld h, b                                       ; $645b: $60
    ld d, b                                       ; $645c: $50
    ld d, b                                       ; $645d: $50
    ld b, b                                       ; $645e: $40
    or b                                          ; $645f: $b0
    and b                                         ; $6460: $a0
    rst $38                                       ; $6461: $ff
    or b                                          ; $6462: $b0
    xor b                                         ; $6463: $a8
    xor b                                         ; $6464: $a8
    and b                                         ; $6465: $a0
    ret c                                         ; $6466: $d8

    ret nc                                        ; $6467: $d0

    ret c                                         ; $6468: $d8

    ret nc                                        ; $6469: $d0

    rst $38                                       ; $646a: $ff
    ld a, [$fa78]                                 ; $646b: $fa $78 $fa
    ld a, c                                       ; $646e: $79
    or l                                          ; $646f: $b5
    inc a                                         ; $6470: $3c
    ld e, d                                       ; $6471: $5a
    sbc [hl]                                      ; $6472: $9e
    rst $38                                       ; $6473: $ff
    cpl                                           ; $6474: $2f
    ld c, a                                       ; $6475: $4f
    dec d                                         ; $6476: $15
    daa                                           ; $6477: $27
    ld a, [bc]                                    ; $6478: $0a
    inc de                                        ; $6479: $13
    dec b                                         ; $647a: $05
    add hl, bc                                    ; $647b: $09
    rst $38                                       ; $647c: $ff
    ld e, a                                       ; $647d: $5f
    ld e, $5f                                     ; $647e: $1e $5f
    sbc [hl]                                      ; $6480: $9e
    xor l                                         ; $6481: $ad
    inc a                                         ; $6482: $3c
    ld e, d                                       ; $6483: $5a
    ld a, c                                       ; $6484: $79
    rst $38                                       ; $6485: $ff
    db $f4                                        ; $6486: $f4
    ld a, [c]                                     ; $6487: $f2
    xor b                                         ; $6488: $a8
    db $e4                                        ; $6489: $e4
    ld d, b                                       ; $648a: $50
    ret z                                         ; $648b: $c8

    and b                                         ; $648c: $a0
    sub b                                         ; $648d: $90
    ld hl, sp+$2c                                 ; $648e: $f8 $2c
    and c                                         ; $6490: $a1
    ret z                                         ; $6491: $c8

    ret nz                                        ; $6492: $c0

    cp h                                          ; $6493: $bc
    and [hl]                                      ; $6494: $a6
    db $db                                        ; $6495: $db
    ld h, [hl]                                    ; $6496: $66
    ld a, l                                       ; $6497: $7d
    ld b, [hl]                                    ; $6498: $46
    or a                                          ; $6499: $b7
    rst $38                                       ; $649a: $ff
    call z, $8cfb                                 ; $649b: $cc $fb $8c
    rst $38                                       ; $649e: $ff
    adc b                                         ; $649f: $88
    ld l, [hl]                                    ; $64a0: $6e
    sbc a                                         ; $64a1: $9f
    ld [hl], l                                    ; $64a2: $75
    sbc a                                         ; $64a3: $9f
    sbc e                                         ; $64a4: $9b
    rst $38                                       ; $64a5: $ff
    db $10                                        ; $64a6: $10
    rst $38                                       ; $64a7: $ff
    ld [bc], a                                    ; $64a8: $02
    ld l, b                                       ; $64a9: $68
    ldh [$fe], a                                  ; $64aa: $e0 $fe
    ldh [$f7], a                                  ; $64ac: $e0 $f7
    ld a, a                                       ; $64ae: $7f
    ld c, $fb                                     ; $64af: $0e $fb
    ld c, $df                                     ; $64b1: $0e $df
    ld [$7abf], a                                 ; $64b3: $ea $bf $7a
    ld c, a                                       ; $64b6: $4f
    adc l                                         ; $64b7: $8d
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    nop                                           ; $64ba: $00
    ld [$0808], sp                                ; $64bb: $08 $08 $08
    ld [$0808], sp                                ; $64be: $08 $08 $08
    ld [$0808], sp                                ; $64c1: $08 $08 $08
    dec c                                         ; $64c4: $0d
    dec c                                         ; $64c5: $0d
    rrca                                          ; $64c6: $0f
    rrca                                          ; $64c7: $0f
    rrca                                          ; $64c8: $0f
    rrca                                          ; $64c9: $0f
    rrca                                          ; $64ca: $0f
    rrca                                          ; $64cb: $0f
    ld c, $0e                                     ; $64cc: $0e $0e
    dec c                                         ; $64ce: $0d
    dec c                                         ; $64cf: $0d
    rrca                                          ; $64d0: $0f
    rrca                                          ; $64d1: $0f
    rrca                                          ; $64d2: $0f
    rrca                                          ; $64d3: $0f
    rrca                                          ; $64d4: $0f
    rrca                                          ; $64d5: $0f
    ld c, $0e                                     ; $64d6: $0e $0e
    dec c                                         ; $64d8: $0d
    dec c                                         ; $64d9: $0d
    rrca                                          ; $64da: $0f
    rrca                                          ; $64db: $0f
    rrca                                          ; $64dc: $0f
    rrca                                          ; $64dd: $0f
    rrca                                          ; $64de: $0f
    ld c, $0e                                     ; $64df: $0e $0e
    ld c, $0d                                     ; $64e1: $0e $0d
    dec c                                         ; $64e3: $0d
    dec c                                         ; $64e4: $0d
    dec c                                         ; $64e5: $0d
    rrca                                          ; $64e6: $0f
    rrca                                          ; $64e7: $0f
    ld c, $0e                                     ; $64e8: $0e $0e
    ld c, $0e                                     ; $64ea: $0e $0e
    dec c                                         ; $64ec: $0d
    dec c                                         ; $64ed: $0d
    dec c                                         ; $64ee: $0d
    dec c                                         ; $64ef: $0d
    rrca                                          ; $64f0: $0f
    rrca                                          ; $64f1: $0f
    ld c, $0e                                     ; $64f2: $0e $0e
    ld c, $0e                                     ; $64f4: $0e $0e
    dec c                                         ; $64f6: $0d
    dec c                                         ; $64f7: $0d
    dec c                                         ; $64f8: $0d
    dec c                                         ; $64f9: $0d
    rrca                                          ; $64fa: $0f
    rrca                                          ; $64fb: $0f
    ld c, $0e                                     ; $64fc: $0e $0e
    ld c, $0e                                     ; $64fe: $0e $0e
    dec c                                         ; $6500: $0d
    dec c                                         ; $6501: $0d
    dec c                                         ; $6502: $0d
    dec c                                         ; $6503: $0d
    rrca                                          ; $6504: $0f
    rrca                                          ; $6505: $0f
    ld c, $0e                                     ; $6506: $0e $0e
    ld c, $0e                                     ; $6508: $0e $0e
    dec c                                         ; $650a: $0d
    dec c                                         ; $650b: $0d
    dec c                                         ; $650c: $0d
    dec c                                         ; $650d: $0d
    rrca                                          ; $650e: $0f
    rrca                                          ; $650f: $0f
    ld c, $0e                                     ; $6510: $0e $0e
    ld c, $0e                                     ; $6512: $0e $0e
    rst $38                                       ; $6514: $ff
    ld a, a                                       ; $6515: $7f
    rra                                           ; $6516: $1f
    ld [bc], a                                    ; $6517: $02
    ld e, a                                       ; $6518: $5f
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    sbc a                                         ; $651c: $9f
    nop                                           ; $651d: $00
    rst $38                                       ; $651e: $ff
    ld l, e                                       ; $651f: $6b
    rra                                           ; $6520: $1f
    ld [de], a                                    ; $6521: $12
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    sbc a                                         ; $6524: $9f
    nop                                           ; $6525: $00
    rst $38                                       ; $6526: $ff
    ld h, a                                       ; $6527: $67
    ld a, a                                       ; $6528: $7f
    ld h, c                                       ; $6529: $61
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    sbc a                                         ; $652c: $9f
    nop                                           ; $652d: $00
    rst $38                                       ; $652e: $ff
    ld l, e                                       ; $652f: $6b
    ld d, b                                       ; $6530: $50
    ld a, [hl]                                    ; $6531: $7e
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00

    db $f3, $00, $ff, $fe, $ff, $fa, $f9, $08, $f0, $23, $c7, $ff, $0d, $de, $17, $d8
    db $0d, $de, $23, $c7, $fb, $08, $f0, $d0, $f2, $f0, $16, $e7, $27, $cd, $ff, $0a
    db $dd, $1d, $d3, $16, $da, $0f, $db, $ff, $2d, $cb, $0f, $ef, $13, $e3, $02, $fa
    db $3f, $02, $fa, $01, $fb, $04, $f8, $a0, $ff, $fc, $fb, $bf, $c0, $00, $1f, $3f
    db $e7, $f8, $d7, $e3, $e7, $df, $f8, $1f, $3f, $c0, $00, $cc, $ef, $80, $7f, $ff
    db $00, $00, $9e, $ff, $ed, $f3, $bf, $c8, $ff, $ff, $90, $7f, $91, $ff, $30, $ff
    db $18, $ff, $ff, $10, $7f, $b0, $ee, $99, $bf, $c9, $ef, $7e, $fe, $41, $41, $9c
    db $f5, $04, $c3, $10, $ff, $d8, $1b, $df, $1f, $d5, $1f, $d1, $1f, $ff, $d1, $1e
    db $db, $14, $de, $11, $d0, $10, $fd, $d7, $fe, $f0, $10, $ff, $ff, $ff, $10, $ff
    db $ed, $38, $55, $e4, $ff, $00, $80, $f0, $10, $e0, $c6, $ff, $0e, $1a, $3e, $ae
    db $f2, $fc, $46, $fe, $ff, $c2, $5e, $66, $ee, $f2, $be, $7e, $f0, $ff, $50, $d0
    db $97, $90, $97, $e0, $f7, $88, $d7, $c7, $c0, $df, $1c, $f8, $7f, $fe, $e1, $01
    db $7e, $ff, $02, $7c, $04, $79, $89, $72, $02, $f4, $ff, $11, $e4, $04, $e9, $22
    db $c9, $08, $d2, $ff, $44, $92, $1d, $b8, $24, $a5, $24, $a5, $ff, $18, $bd, $42
    db $81, $00, $00, $fe, $ff, $bb, $f9, $07, $d7, $c3, $f9, $07, $fe, $80, $ee, $02
    db $ff, $fc, $00, $fd, $01, $fd, $11, $e1, $26, $ff, $cf, $08, $df, $11, $df, $10
    db $df, $90, $ef, $1f, $30, $7f, $50, $fe, $e0, $58, $7f, $67, $7f, $7f, $20, $7f
    db $a0, $3f, $10, $bf, $9c, $db, $ff, $90, $0f, $08, $67, $60, $97, $e0, $17, $ff
    db $48, $27, $90, $4f, $20, $9f, $40, $3f, $f3, $00, $7f, $b2, $c0, $80, $c9, $3f
    db $04, $03, $f1, $ff, $f8, $ec, $1e, $fa, $06, $ec, $1e, $f1, $df, $f8, $04, $03
    db $c0, $3f, $04, $ec, $0f, $c0, $ff, $ef, $e0, $ef, $e4, $e3, $32, $f9, $08, $fb
    db $fd, $04, $fe, $e1, $fc, $06, $ff, $05, $ff, $ff, $0d, $ff, $35, $ff, $ca, $ff
    db $0c, $fe, $8f, $19, $fc, $2c, $ed, $1c, $df, $fe, $ff, $fe, $fd, $01, $1b, $fe
    db $00, $fe, $e4, $81, $7e, $aa, $c3, $a4, $c1, $36, $eb, $ce, $c4, $f7, $02, $fc
    db $01, $bc, $c0, $fc, $e1, $11, $e3, $ff, $47, $8f, $9d, $38, $39, $61, $63, $41
    db $ff, $4e, $4f, $6f, $45, $3d, $68, $98, $38, $ff, $59, $90, $19, $d1, $13, $d1
    db $1f, $b2, $ff, $3d, $ae, $3f, $b8, $3f, $a7, $20, $a0, $ff, $20, $a0, $21, $a0
    db $27, $a3, $21, $a1, $ff, $23, $a2, $33, $a1, $31, $a1, $11, $b1, $ff, $51, $90
    db $11, $b0, $b0, $20, $30, $60, $ff, $58, $f0, $df, $ef, $ed, $f3, $7f, $ff, $cf
    db $0f, $1f, $20, $c0, $8c, $ff, $e2, $e1, $40, $80, $ff, $1e, $bf, $ad, $33, $3f
    db $63, $7f, $50, $ff, $57, $d8, $df, $88, $ef, $c8, $f7, $f8, $ff, $ff, $90, $af
    db $28, $7f, $28, $f6, $fb, $ff, $7d, $8d, $f7, $8f, $df, $3f, $78, $ed, $ff, $fd
    db $85, $fc, $85, $f4, $ac, $59, $6c, $ff, $aa, $d9, $f0, $1b, $f4, $13, $b0, $77
    db $ff, $f0, $d7, $10, $17, $90, $17, $b0, $97, $ff, $90, $37, $30, $17, $14, $13
    db $32, $19, $ff, $99, $0c, $8c, $86, $c6, $83, $df, $cf, $ff, $d5, $db, $7b, $57
    db $ef, $77, $d6, $ef, $3e, $56, $a0, $ff, $f8, $fc, $02, $01, $84, $ff, $ca, $83
    db $ff, $40, $3f, $20, $9f, $90, $cf, $40, $ef, $ef, $a0, $6f, $e0, $2f, $fe, $e1
    db $a0, $6f, $c0, $df, $6f, $50, $cf, $80, $df, $ea, $e1, $c4, $e3, $ff, $f1, $f8
    db $fc, $3e, $a7, $ef, $41, $e3, $8b, $14, $09, $e0, $c0, $fe, $bc, $f5, $92, $c7
    db $67, $80, $ff, $8f, $80, $c0, $20, $1f, $86, $ff, $fe, $ff, $de, $c4, $3f, $ff
    db $10, $8f, $c8, $e7, $d0, $d7, $50, $f7, $ef, $60, $77, $88, $07, $d0, $fb, $82
    db $01, $38, $07, $7d, $f8, $fd, $04, $f1, $00, $00

    nop                                           ; $67ce: $00

    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $fa, $38, $7f
    db $04, $37, $10, $3b, $1b, $35, $1f, $d6, $e7, $99, $80, $fe, $e2, $c6, $eb, $60
    db $90, $b6, $ff, $e4, $e3, $3f, $7f, $40, $5e, $1e, $61, $ad, $a3, $3f, $b1, $e7
    db $9f, $80, $40, $40, $20, $a0, $c0, $ff, $ed, $ec, $31, $ff, $1f, $31, $1f, $3a
    db $1e, $35, $14, $3e, $f7, $11, $38, $10, $fe, $e1, $80, $01, $81, $02, $ff, $82
    db $04, $04, $89, $09, $02, $0a, $11, $ff, $12, $04, $14, $22, $90, $08, $08, $60
    db $ff, $08, $e0, $90, $48, $20, $90, $40, $20, $f3, $80, $40, $50, $ed, $a0, $e0
    db $01, $01, $02, $03, $fd, $01, $fe, $e3, $0d, $11, $37, $47, $d0, $7f, $ff, $70
    db $57, $a8, $df, $d8, $ef, $f0, $f7, $ff, $90, $ff, $78, $af, $a8, $7f, $50, $40
    db $ef, $30, $a0, $30, $e0, $fe, $e2, $a0, $50, $c0, $93, $60, $50, $6e, $ff, $1a
    db $ea, $c0, $6a, $e3, $fa, $e5, $ff, $ff, $10, $25, $08, $29, $44, $5a, $1d, $7e
    db $ff, $24, $7e, $24, $5a, $18, $3c, $42, $ff, $f4, $b9, $c1, $b9, $e9, $c0, $ac
    db $ed, $5a, $9d, $a7, $39, $ff, $dd, $63, $fe, $4e, $d5, $6f, $aa, $3d, $ff, $5f
    db $98, $36, $59, $f2, $f6, $0f, $7d, $ff, $87, $f7, $1f, $df, $6a, $78, $87, $fd
    db $bf, $86, $fc, $a7, $f4, $a0, $80, $ca, $c1, $d8, $ff, $c4, $f6, $f1, $3d, $fc
    db $b7, $a7, $5d, $fd, $41, $60, $c8, $40, $60, $10, $d0, $c8, $07, $ff, $08, $1b
    db $23, $2c, $0d, $30, $17, $2c, $ff, $0d, $1b, $23, $07, $08, $00, $00, $df, $df
    db $1f, $e0, $e7, $00, $ff, $fe, $e1, $e0, $e7, $ff, $df, $1f, $3f, $c0, $ff, $ff
    db $10, $ff, $ed, $38, $f0, $e2, $00, $ff, $ff, $e0, $00, $fe, $fe, $fb, $01, $f9
    db $e0, $e3, $01, $f9, $fe, $fe, $ff, $ff, $00, $f8, $04, $f6, $f1, $0d, $ec, $03
    db $7f, $fa, $0d, $ec, $f6, $f1, $f8, $04, $60, $ef, $ff, $37, $19, $3d, $13, $52
    db $1f, $6c, $3d, $ff, $78, $3f, $67, $3f, $7f, $20, $7f, $20, $ff, $ca, $59, $8c
    db $aa, $14, $f0, $18, $f4, $ff, $38, $b0, $d8, $f0, $f8, $10, $78, $90, $bf, $e2
    db $14, $01, $02, $00, $01, $d6, $c7, $f8, $7f, $d0, $58, $50, $e8, $60, $70, $88
    db $c4, $df, $b4, $ff, $ff, $43, $c0, $02, $dc, $eb, $e0, $10, $cc, $ed, $7e, $ff
    db $21, $7b, $27, $7f, $21, $7e, $23, $6d, $ff, $33, $6f, $31, $5f, $11, $3e, $51
    db $d8, $ff, $b0, $58, $90, $d8, $30, $f8, $14, $d4, $7f, $32, $6a, $99, $f5, $8c
    db $ba, $c6, $9c, $ea, $fd, $80, $e0, $b0, $00, $0f, $00, $0e, $16, $15, $ff, $27
    db $28, $0a, $31, $1d, $33, $16, $2b, $fd, $0f, $07, $a1, $ff, $00, $9e, $9e, $e1
    db $ed, $bf, $88, $bf, $90, $ff, $11, $7f, $e0, $e0, $10, $ff, $37, $c6, $db, $1a
    db $a3, $ae, $45, $fc, $ff, $c3, $fe, $c7, $5e, $02, $00, $03, $01, $ff, $0f, $11
    db $16, $27, $28, $0f, $31, $1f, $ff, $30, $1f, $70, $9f, $d0, $c0, $f0, $e0, $ff
    db $f8, $e4, $34, $f2, $0a, $f8, $06, $fc, $8f, $06, $fc, $07, $fc, $8c, $a4, $ed
    db $c0, $fc, $e1, $00, $ff, $81, $5e, $11, $6f, $b0, $af, $30, $57, $ff, $58, $cf
    db $df, $e1, $ed, $7f, $7f, $ef, $ff, $0f, $ef, $df, $f1, $d5, $d3, $7b, $67, $b7
    db $ef, $c6, $d6, $71, $c1, $fb, $f8, $9a, $83, $80, $de, $61, $c2, $bf, $80, $c0
    db $20, $ec, $c3, $7c, $82, $df, $ba, $38, $fa, $f8, $fc, $02, $e0, $19, $2d, $ff
    db $1f, $0f, $0f, $13, $07, $02, $07, $02, $ff, $05, $01, $03, $04, $00, $00, $30
    db $ff, $fd, $18, $2e, $c0, $30, $7f, $88, $ee, $89, $bf, $ff, $7f, $7e, $ff, $41
    db $e3, $ee, $3f, $be, $ff, $5f, $f0, $b8, $d0, $f8, $90, $e8, $e0, $ff, $b0, $88
    db $e0, $c0, $b0, $3f, $d0, $7f, $ff, $d0, $7f, $d8, $7f, $e7, $7f, $a0, $3f, $ff
    db $60, $bf, $50, $1f, $06, $fe, $05, $ff, $ff, $0d, $ff, $35, $ff, $ca, $fe, $0d
    db $fc, $8f, $1a, $f9, $3e, $ec, $90, $e5, $26, $80, $23, $82, $1f, $00, $8e, $e4
    db $74, $c5, $8c, $e1, $ff, $ff, $ff, $e7, $00, $00

    nop                                           ; $6a89: $00
    ld [$0808], sp                                ; $6a8a: $08 $08 $08
    ld [$0808], sp                                ; $6a8d: $08 $08 $08
    ld [$0808], sp                                ; $6a90: $08 $08 $08

    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f
    db $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0f, $0d, $0d, $0d, $0d, $0d
    db $ff, $7f, $80, $7e, $80, $7d, $00, $00, $00, $7d, $ff, $6b, $1f, $02, $00, $00
    db $00, $7d, $ff, $6b, $00, $02, $00, $00, $00, $7d, $ff, $6b, $df, $20, $00, $00
    db $03, $00, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $f8
    db $fe, $ff, $fe, $ff, $f4, $f3, $02, $fc, $01, $fc, $01, $ff, $fd, $01, $fc, $88
    db $04, $75, $22, $58, $9f, $5a, $75, $32, $88, $07, $cc, $ff, $c6, $e5, $00, $ff
    db $fd, $09, $f1, $03, $f7, $25, $c4, $0f, $ff, $dd, $17, $d3, $1f, $df, $1f, $d0
    db $0f, $ff, $da, $2f, $ca, $0f, $e8, $07, $ef, $10, $ff, $e0, $00, $ff, $08, $07
    db $74, $63, $78, $ff, $50, $7c, $5a, $5e, $56, $5e, $52, $7e, $fb, $52, $7e, $f8
    db $e0, $50, $50, $70, $57, $70, $f3, $57, $50, $fe, $e0, $f8, $eb, $d0, $d7, $70
    db $57, $ff, $f0, $d7, $50, $50, $53, $57, $fc, $fe, $ff, $01, $00, $74, $23, $58
    db $5b, $74, $33, $e3, $8a, $04, $6a, $e3, $9c, $e0, $76, $f6, $10, $0f, $c2, $ff
    db $e1, $38, $3d, $6c, $25, $fc, $e4, $7e, $ff, $3f, $eb, $29, $ff, $ff, $ff, $01
    db $ff, $7d, $ab, $fe, $e0, $03, $ff, $ff, $00, $00, $42, $ff, $fe, $e8, $e7, $22
    db $c1, $1c, $c9, $54, $94, $1f, $ff, $3f, $e3, $f2, $09, $03, $05, $f9, $00, $fd
    db $fd, $8c, $e1, $20, $1f, $d1, $8e, $60, $6e, $0f, $d2, $cc, $20, $1d, $e4, $c0
    db $fe, $e0, $ea, $e3, $b4, $f3, $f7, $80, $7f, $00, $fe, $e0, $08, $07, $64, $f3
    db $ff, $b0, $9b, $f8, $9b, $e0, $f3, $08, $87, $fb, $40, $3f, $8a, $ff, $08, $f0
    db $13, $e7, $25, $ff, $cf, $0f, $d8, $17, $d8, $5f, $90, $1f, $ff, $bf, $14, $34
    db $ff, $ff, $df, $e0, $ff, $ff, $00, $7f, $80, $df, $e0, $3b, $7c, $07, $ff, $8f
    db $9e, $3c, $3b, $6f, $6f, $c8, $cf, $ff, $88, $9f, $88, $ff, $58, $6f, $3f, $bb
    db $ff, $1c, $ff, $9f, $7f, $d0, $7f, $70, $5f, $ff, $50, $5b, $57, $7f, $51, $3f
    db $71, $9f, $ff, $31, $4f, $9f, $29, $c9, $09, $e9, $29, $ff, $c9, $0b, $d9, $1a
    db $d3, $12, $d2, $12, $f7, $d2, $1e, $de, $fc, $e0, $df, $5d, $93, $3f, $7f, $b1
    db $3f, $bf, $4f, $9f, $20, $c0, $80, $ff, $ff, $10, $0f, $c8, $e7, $24, $f3, $f0
    db $1b, $ff, $e8, $1b, $f8, $0b, $fa, $f9, $88, $8c, $ff, $fc, $ff, $fb, $07, $ff
    db $00, $fd, $03, $ff, $fa, $07, $dc, $3e, $e1, $f0, $f9, $7c, $ff, $ac, $e6, $e6
    db $23, $f3, $21, $d9, $31, $ff, $ff, $1a, $f6, $fc, $d2, $3e, $fd, $fc, $ff, $eb
    db $19, $f6, $33, $f4, $36, $54, $b6, $ff, $fe, $17, $fb, $0f, $f9, $0b, $f8, $f9
    db $ff, $4a, $48, $4b, $48, $48, $4d, $6c, $45, $ff, $25, $64, $24, $a6, $36, $a2
    db $1e, $be, $ff, $13, $d3, $1e, $5f, $1f, $30, $f7, $f8, $e7, $ff, $ff, $fe, $80
    db $df, $f0, $ef, $1f, $c0, $df, $ff, $c0, $5f, $80, $df, $00, $bf, $40, $3f, $78
    db $b0, $c0, $aa, $c2, $ba, $c0, $bf, $a0, $9f, $80, $e8, $e0, $e6, $e6, $e1, $20
    db $9f, $e6, $e1, $ea, $e1, $20, $9f, $90, $ff, $cf, $c8, $e7, $60, $f7, $34, $70
    db $91, $ff, $3b, $5b, $9e, $0f, $dc, $2f, $c9, $86, $ff, $6f, $30, $00, $01, $83
    db $8f, $ff, $f8, $7f, $7c, $62, $f1, $c8, $e7, $10, $0f, $be, $e3, $98, $fe, $ff
    db $fe, $ff, $fa, $f9, $20, $1f, $64, $e1, $66, $e1, $04, $ff, $03, $78, $fb, $f0
    db $fb, $34, $b3, $4a, $7f, $49, $5c, $4d, $32, $79, $84, $03, $c4, $ff, $00, $fe
    db $ff, $fe, $ff, $fc, $fb, $00, $00

    nop                                           ; $6d3a: $00

    db $f9, $00, $ff, $ff, $eb, $ea, $f0, $08, $e8, $74, $d7, $ff, $78, $d9, $7c, $f7
    db $5e, $f3, $5e, $d3, $07, $7e, $db, $7e, $ce, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $e6, $e5, $ff, $f7, $5e, $ff, $50, $d8, $70, $d8, $70, $07, $f8, $50, $f8, $f8
    db $e2, $ce, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $01, $02, $02, $01, $03, $01
    db $02, $01, $d4, $68, $e5, $60, $e0, $d0, $58, $e0, $f0, $c6, $e7, $1c, $22, $ff
    db $2a, $1c, $3f, $54, $07, $08, $0b, $13, $ff, $15, $25, $28, $0f, $30, $17, $30
    db $5f, $ff, $5f, $1f, $df, $14, $e0, $10, $d0, $c8, $ff, $28, $24, $14, $f0, $0c
    db $e8, $0c, $f8, $2f, $fc, $fa, $fb, $88, $96, $eb, $e0, $87, $ff, $fd, $fc, $ff
    db $73, $88, $a8, $75, $fd, $58, $b8, $75, $fd, $70, $a6, $e4, $ff, $50, $fb, $53
    db $fd, $fc, $ff, $fe, $01, $a8, $74, $fc, $58, $b8, $74, $ff, $71, $8a, $df, $1f
    db $ee, $e3, $f5, $09, $f7, $03, $05, $02, $3e, $e0, $00, $00, $c0, $20, $ff, $ff
    db $ff, $c0, $df, $00, $ff, $00, $7f, $ff, $c0, $df, $b8, $3b, $77, $07, $5d, $9e
    db $ff, $fc, $fc, $03, $fb, $00, $ff, $01, $fd, $ff, $02, $fa, $1d, $dc, $ee, $e1
    db $7a, $f9, $ff, $e0, $c0, $60, $c0, $a0, $80, $40, $00, $80, $fd, $e1, $82, $ff
    db $ff, $ff, $ee, $ed, $ba, $c3, $74, $e1, $d4, $e3, $a0, $ff, $d1, $f1, $60, $e1
    db $d2, $c2, $20, $03, $fc, $a2, $c0, $a0, $c0, $00, $ab, $3b, $58, $6f, $b8, $ff
    db $cf, $e8, $9f, $58, $ff, $af, $6f, $58, $ff, $bb, $9f, $ff, $b5, $ac, $3a, $e6
    db $2d, $ff, $f3, $17, $d9, $1a, $ff, $f5, $f6, $13, $ff, $d2, $fe, $fd, $00, $80
    db $80, $40, $40, $3f, $00, $c0, $a0, $a0, $80, $60, $56, $e2, $8e, $ff, $f8, $ff
    db $ff, $08, $db, $dc, $eb, $50, $7f, $f0, $7f, $f0, $ff, $5f, $f3, $5b, $d1, $7f
    db $b1, $3f, $51, $ff, $9f, $2f, $4f, $0d, $eb, $3a, $f6, $3d, $ff, $f4, $1d, $54
    db $16, $fe, $0b, $fb, $0d, $9f, $f9, $fe, $f8, $40, $20, $c6, $c2, $5a, $e1, $20
    db $cf, $a0, $90, $d0, $c8, $9e, $ff, $7e, $ff, $02, $00, $ff, $07, $09, $0b, $03
    db $1e, $25, $2d, $0f, $fb, $3b, $17, $cc, $a0, $10, $dc, $c2, $fa, $38, $ff, $b6
    db $6c, $e7, $fc, $be, $7e, $3d, $eb, $fa, $c0, $e8, $80, $89, $e0, $00, $1f, $29
    db $1f, $09, $ff, $1f, $29, $2d, $0b, $36, $1a, $3f, $12, $fe, $fe, $e0, $1e, $fd
    db $4a, $fc, $4b, $fa, $48, $ff, $d6, $6c, $be, $25, $7d, $24, $6b, $36, $ff, $5f
    db $1e, $68, $60, $bb, $34, $55, $91, $ff, $3a, $5b, $2c, $0f, $19, $2f, $16, $86
    db $e3, $cf, $30, $ec, $a1, $b4, $c1, $0c, $c0, $20, $f8, $04, $f3, $7c, $78, $70
    db $ff, $ec, $eb, $3f, $1f, $30, $1f, $ff, $2a, $0f, $1a, $2f, $18, $0f, $17, $07
    db $7b, $0f, $10, $80, $a0, $ff, $01, $ff, $ab, $fe, $e0, $f3, $03, $ff, $ff, $e0
    db $90, $62, $68, $64, $d4, $b0, $bf, $9c, $f8, $ec, $e0, $70, $08, $a9, $a0, $00
    db $ff, $3f, $12, $3e, $1e, $31, $5d, $71, $3f, $bf, $7f, $3f, $2f, $4f, $1f, $20
    db $c0, $e0, $13, $ff, $be, $1e, $d0, $1f, $f0, $f7, $ff, $ff, $fb, $fe, $fe, $d0
    db $e1, $7d, $01, $8f, $8f, $7b, $7f, $f8, $6c, $62, $d0, $c8, $e0, $10, $7e, $a1
    db $ff, $f4, $f0, $78, $34, $fc, $4a, $ee, $5c, $0f, $b4, $32, $78, $84, $72, $f1
    db $00, $00

    nop                                           ; $6f7d: $00
    ld [$0808], sp                                ; $6f7e: $08 $08 $08
    ld [$0808], sp                                ; $6f81: $08 $08 $08
    ld [$0808], sp                                ; $6f84: $08 $08 $08

    db $0d, $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e
    db $0e, $0d, $0d, $0f, $0f, $0d, $0d, $0d, $0f, $0f, $0e, $0d, $0d, $0d, $0e, $0d
    db $ff, $7f, $40, $03, $00, $02, $00, $00, $00, $02, $ff, $6b, $9f, $01, $00, $00
    db $00, $02, $ff, $6b, $40, $7e, $00, $00, $00, $02, $ff, $6b, $94, $52, $00, $00

    rst $18                                       ; $6ff7: $df

    db $1a, $03

    call Call_00d_4985                            ; $6ffa: $cd $85 $49
    ldh a, [$96]                                  ; $6ffd: $f0 $96
    push af                                       ; $6fff: $f5
    ld a, $06                                     ; $7000: $3e $06
    ldh [$96], a                                  ; $7002: $e0 $96
    ldh [rSVBK], a                                ; $7004: $e0 $70
    ld hl, $d207                                  ; $7006: $21 $07 $d2
    ld a, [hl+]                                   ; $7009: $2a
    ld h, [hl]                                    ; $700a: $66
    ld l, a                                       ; $700b: $6f
    ldh a, [$b0]                                  ; $700c: $f0 $b0
    add l                                         ; $700e: $85
    ld l, a                                       ; $700f: $6f
    jr nc, jr_00d_7013                            ; $7010: $30 $01

    inc h                                         ; $7012: $24

jr_00d_7013:
    ld d, [hl]                                    ; $7013: $56
    pop af                                        ; $7014: $f1
    ldh [$96], a                                  ; $7015: $e0 $96
    ldh [rSVBK], a                                ; $7017: $e0 $70
    ld hl, $0066                                  ; $7019: $21 $66 $00
    ld a, d                                       ; $701c: $7a
    push af                                       ; $701d: $f5
    add l                                         ; $701e: $85
    ld l, a                                       ; $701f: $6f
    jr nc, jr_00d_7023                            ; $7020: $30 $01

    inc h                                         ; $7022: $24

jr_00d_7023:
    push hl                                       ; $7023: $e5
    rst $18                                       ; $7024: $df

    db $3c, $05

    inc a                                         ; $7027: $3c
    srl a                                         ; $7028: $cb $3f
    ld hl, $d4ca                                  ; $702a: $21 $ca $d4
    ld d, $00                                     ; $702d: $16 $00
    ld e, a                                       ; $702f: $5f
    call Call_000_08ac                            ; $7030: $cd $ac $08
    ld d, h                                       ; $7033: $54
    ld e, l                                       ; $7034: $5d
    pop hl                                        ; $7035: $e1
    ld c, $20                                     ; $7036: $0e $20
    rst $18                                       ; $7038: $df

    db $22, $05

    ld hl, $0070                                  ; $703b: $21 $70 $00
    ld a, [$c33f]                                 ; $703e: $fa $3f $c3
    or a                                          ; $7041: $b7
    jp z, Jump_00d_7048                           ; $7042: $ca $48 $70

    ld hl, $007a                                  ; $7045: $21 $7a $00

Jump_00d_7048:
    pop af                                        ; $7048: $f1
    add l                                         ; $7049: $85
    ld l, a                                       ; $704a: $6f
    jr nc, jr_00d_704e                            ; $704b: $30 $01

    inc h                                         ; $704d: $24

jr_00d_704e:
    push hl                                       ; $704e: $e5
    rst $18                                       ; $704f: $df

    db $3c, $05

    inc a                                         ; $7052: $3c
    srl a                                         ; $7053: $cb $3f
    ld hl, $d50a                                  ; $7055: $21 $0a $d5
    ld d, $00                                     ; $7058: $16 $00
    ld e, a                                       ; $705a: $5f
    call Call_000_08ac                            ; $705b: $cd $ac $08
    ld d, h                                       ; $705e: $54
    ld e, l                                       ; $705f: $5d
    pop hl                                        ; $7060: $e1
    ld c, $20                                     ; $7061: $0e $20
    rst $18                                       ; $7063: $df

    db $22, $05

    rst $18                                       ; $7066: $df

    db $24, $03

    call Call_00d_4a90                            ; $7069: $cd $90 $4a
    call Call_000_2e3b                            ; $706c: $cd $3b $2e
    ret                                           ; $706f: $c9


    call Call_00d_4985                            ; $7070: $cd $85 $49
    call Call_00d_4a90                            ; $7073: $cd $90 $4a
    call Call_000_2e3b                            ; $7076: $cd $3b $2e
    ret                                           ; $7079: $c9


Call_00d_707a:
    ld a, [$c33f]                                 ; $707a: $fa $3f $c3
    or a                                          ; $707d: $b7
    jr nz, jr_00d_70a0                            ; $707e: $20 $20

    ld a, [$c2a5]                                 ; $7080: $fa $a5 $c2
    and $0f                                       ; $7083: $e6 $0f
    cp $0f                                        ; $7085: $fe $0f
    jr z, jr_00d_7097                             ; $7087: $28 $0e

    ld hl, $708f                                  ; $7089: $21 $8f $70
    ld d, $05                                     ; $708c: $16 $05
    ret                                           ; $708e: $c9


    db $00, $01, $02, $03, $04, $09

    dec b                                         ; $7095: $05
    db $06                                        ; $7096: $06

jr_00d_7097:
    ld hl, $709d                                  ; $7097: $21 $9d $70
    ld d, $02                                     ; $709a: $16 $02
    ret                                           ; $709c: $c9


    db $00, $03, $04

jr_00d_70a0:
    ld hl, $70a6                                  ; $70a0: $21 $a6 $70
    ld d, $02                                     ; $70a3: $16 $02
    ret                                           ; $70a5: $c9


    nop                                           ; $70a6: $00
    ld [bc], a                                    ; $70a7: $02
    inc bc                                        ; $70a8: $03

Call_00d_70a9:
    push hl                                       ; $70a9: $e5
    push bc                                       ; $70aa: $c5
    ld c, d                                       ; $70ab: $4a
    inc c                                         ; $70ac: $0c
    ld e, $00                                     ; $70ad: $1e $00

jr_00d_70af:
    cp [hl]                                       ; $70af: $be
    jr z, jr_00d_70b9                             ; $70b0: $28 $07

    inc hl                                        ; $70b2: $23
    inc e                                         ; $70b3: $1c
    dec c                                         ; $70b4: $0d
    jr nz, jr_00d_70af                            ; $70b5: $20 $f8

    ld e, $01                                     ; $70b7: $1e $01

jr_00d_70b9:
    pop bc                                        ; $70b9: $c1
    pop hl                                        ; $70ba: $e1
    ret                                           ; $70bb: $c9


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
