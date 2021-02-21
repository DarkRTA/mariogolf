; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    ld a, [bc]                                    ; $4000: $0a
    ld b, b                                       ; $4001: $40
    db $08                                        ; $4002: $08
    ld b, b                                       ; $4003: $40

    db $0b, $40, $74, $40

    ret                                           ; $4008: $c9


    ret                                           ; $4009: $c9


    ret                                           ; $400a: $c9


    ld a, $06                                     ; $400b: $3e $06
    ldh [$96], a                                  ; $400d: $e0 $96
    ldh [rSVBK], a                                ; $400f: $e0 $70
    ld hl, $c800                                  ; $4011: $21 $00 $c8
    ld a, l                                       ; $4014: $7d
    add $10                                       ; $4015: $c6 $10
    ld l, a                                       ; $4017: $6f
    ld a, h                                       ; $4018: $7c
    adc $00                                       ; $4019: $ce $00
    ld h, a                                       ; $401b: $67
    ld c, [hl]                                    ; $401c: $4e
    ld a, c                                       ; $401d: $79
    ld hl, $41f2                                  ; $401e: $21 $f2 $41
    add a                                         ; $4021: $87
    add l                                         ; $4022: $85
    ld l, a                                       ; $4023: $6f
    jr nc, jr_042_4027                            ; $4024: $30 $01

    inc h                                         ; $4026: $24

jr_042_4027:
    ld a, [hl+]                                   ; $4027: $2a
    ld h, [hl]                                    ; $4028: $66
    ld l, a                                       ; $4029: $6f
    push hl                                       ; $402a: $e5
    ld a, [hl+]                                   ; $402b: $2a
    ld h, [hl]                                    ; $402c: $66
    ld l, a                                       ; $402d: $6f
    ld de, $0e01                                  ; $402e: $11 $01 $0e
    call Call_000_0595                            ; $4031: $cd $95 $05
    pop hl                                        ; $4034: $e1
    ld a, $06                                     ; $4035: $3e $06
    ldh [$96], a                                  ; $4037: $e0 $96
    ldh [rSVBK], a                                ; $4039: $e0 $70
    ld b, h                                       ; $403b: $44
    ld c, l                                       ; $403c: $4d
    inc bc                                        ; $403d: $03
    inc bc                                        ; $403e: $03
    ld hl, $d540                                  ; $403f: $21 $40 $d5
    ld a, c                                       ; $4042: $79
    ld [hl+], a                                   ; $4043: $22
    ld [hl], b                                    ; $4044: $70
    inc bc                                        ; $4045: $03
    inc bc                                        ; $4046: $03
    inc hl                                        ; $4047: $23
    ld a, c                                       ; $4048: $79
    ld [hl+], a                                   ; $4049: $22
    ld [hl], b                                    ; $404a: $70
    inc bc                                        ; $404b: $03
    inc bc                                        ; $404c: $03
    inc hl                                        ; $404d: $23
    ld a, c                                       ; $404e: $79
    ld [hl+], a                                   ; $404f: $22
    ld [hl], b                                    ; $4050: $70
    inc bc                                        ; $4051: $03
    inc bc                                        ; $4052: $03
    inc hl                                        ; $4053: $23
    ld a, c                                       ; $4054: $79
    ld [hl+], a                                   ; $4055: $22
    ld [hl], b                                    ; $4056: $70
    inc hl                                        ; $4057: $23
    ld [hl], $00                                  ; $4058: $36 $00
    inc hl                                        ; $405a: $23
    ld [hl], $ff                                  ; $405b: $36 $ff
    inc hl                                        ; $405d: $23
    ld [hl], $01                                  ; $405e: $36 $01
    inc hl                                        ; $4060: $23
    ld [hl], $ff                                  ; $4061: $36 $ff
    inc hl                                        ; $4063: $23
    ld [hl], $09                                  ; $4064: $36 $09
    inc hl                                        ; $4066: $23
    ld [hl], $4a                                  ; $4067: $36 $4a
    inc hl                                        ; $4069: $23
    xor a                                         ; $406a: $af
    ld [hl+], a                                   ; $406b: $22
    ld [hl+], a                                   ; $406c: $22
    ld [hl], $01                                  ; $406d: $36 $01
    inc hl                                        ; $406f: $23
    call Call_042_416b                            ; $4070: $cd $6b $41
    ret                                           ; $4073: $c9


    ld a, $06                                     ; $4074: $3e $06
    ldh [$96], a                                  ; $4076: $e0 $96
    ldh [rSVBK], a                                ; $4078: $e0 $70
    ld a, [$d550]                                 ; $407a: $fa $50 $d5
    and a                                         ; $407d: $a7
    jr z, jr_042_4085                             ; $407e: $28 $05

    dec a                                         ; $4080: $3d
    ld [$d550], a                                 ; $4081: $ea $50 $d5
    ret                                           ; $4084: $c9


jr_042_4085:
    ld hl, $d551                                  ; $4085: $21 $51 $d5
    ld a, [hl]                                    ; $4088: $7e
    and a                                         ; $4089: $a7
    jr z, jr_042_408d                             ; $408a: $28 $01

    dec [hl]                                      ; $408c: $35

jr_042_408d:
    ld hl, $d54a                                  ; $408d: $21 $4a $d5
    ld a, [hl]                                    ; $4090: $7e
    dec a                                         ; $4091: $3d
    ld [hl], a                                    ; $4092: $77
    jr z, jr_042_4098                             ; $4093: $28 $03

    jp Jump_042_40cb                              ; $4095: $c3 $cb $40


jr_042_4098:
    ld hl, $d549                                  ; $4098: $21 $49 $d5
    inc [hl]                                      ; $409b: $34
    call Call_042_40d2                            ; $409c: $cd $d2 $40
    ld a, [hl]                                    ; $409f: $7e
    cp $ff                                        ; $40a0: $fe $ff
    jr z, jr_042_40ac                             ; $40a2: $28 $08

    inc hl                                        ; $40a4: $23
    ld a, [hl]                                    ; $40a5: $7e
    ld hl, $d54a                                  ; $40a6: $21 $4a $d5
    ld [hl], a                                    ; $40a9: $77
    jr jr_042_40c8                                ; $40aa: $18 $1c

jr_042_40ac:
    ld a, [$d54b]                                 ; $40ac: $fa $4b $d5
    bit 7, a                                      ; $40af: $cb $7f
    jr nz, jr_042_40bb                            ; $40b1: $20 $08

    ld [$d548], a                                 ; $40b3: $ea $48 $d5
    ld a, $ff                                     ; $40b6: $3e $ff
    ld [$d54b], a                                 ; $40b8: $ea $4b $d5

jr_042_40bb:
    ld hl, $d549                                  ; $40bb: $21 $49 $d5
    ld [hl], $00                                  ; $40be: $36 $00
    call Call_042_40d2                            ; $40c0: $cd $d2 $40
    inc hl                                        ; $40c3: $23
    ld a, [hl]                                    ; $40c4: $7e
    ld [$d54a], a                                 ; $40c5: $ea $4a $d5

jr_042_40c8:
    call Call_042_40f1                            ; $40c8: $cd $f1 $40

Jump_042_40cb:
    call Call_042_4128                            ; $40cb: $cd $28 $41
    call Call_042_41b1                            ; $40ce: $cd $b1 $41
    ret                                           ; $40d1: $c9


Call_042_40d2:
    ld hl, $d548                                  ; $40d2: $21 $48 $d5
    ld c, [hl]                                    ; $40d5: $4e
    inc hl                                        ; $40d6: $23
    ld b, [hl]                                    ; $40d7: $46
    ld hl, $d544                                  ; $40d8: $21 $44 $d5
    ld a, [hl+]                                   ; $40db: $2a
    ld h, [hl]                                    ; $40dc: $66
    ld l, a                                       ; $40dd: $6f
    ld a, c                                       ; $40de: $79
    add a                                         ; $40df: $87
    add l                                         ; $40e0: $85
    ld l, a                                       ; $40e1: $6f
    jr nc, jr_042_40e5                            ; $40e2: $30 $01

Jump_042_40e4:
    inc h                                         ; $40e4: $24

jr_042_40e5:
    ld a, [hl+]                                   ; $40e5: $2a
    ld h, [hl]                                    ; $40e6: $66
    ld l, a                                       ; $40e7: $6f
    ld a, b                                       ; $40e8: $78
    add a                                         ; $40e9: $87
    add a                                         ; $40ea: $87
    add l                                         ; $40eb: $85
    ld l, a                                       ; $40ec: $6f

Jump_042_40ed:
    jr nc, jr_042_40f0                            ; $40ed: $30 $01

    inc h                                         ; $40ef: $24

jr_042_40f0:
    ret                                           ; $40f0: $c9


Call_042_40f1:
    call Call_042_40d2                            ; $40f1: $cd $d2 $40
    ld b, [hl]                                    ; $40f4: $46
    ld hl, $d540                                  ; $40f5: $21 $40 $d5
    ld a, [hl+]                                   ; $40f8: $2a
    ld h, [hl]                                    ; $40f9: $66
    ld l, a                                       ; $40fa: $6f
    ld a, [hl+]                                   ; $40fb: $2a
    ld h, [hl]                                    ; $40fc: $66
    ld l, a                                       ; $40fd: $6f
    ld a, b                                       ; $40fe: $78
    add a                                         ; $40ff: $87
    add l                                         ; $4100: $85
    ld l, a                                       ; $4101: $6f
    jr nc, jr_042_4105                            ; $4102: $30 $01

    inc h                                         ; $4104: $24

jr_042_4105:
    ld a, [hl+]                                   ; $4105: $2a
    ld h, [hl]                                    ; $4106: $66
    ld l, a                                       ; $4107: $6f
    ld de, $d000                                  ; $4108: $11 $00 $d0
    call Call_000_1f2f                            ; $410b: $cd $2f $1f
    ld hl, $d000                                  ; $410e: $21 $00 $d0
    ld de, $a000                                  ; $4111: $11 $00 $a0
    ld c, $20                                     ; $4114: $0e $20
    call Call_000_0468                            ; $4116: $cd $68 $04
    call Call_000_0460                            ; $4119: $cd $60 $04
    ld a, $06                                     ; $411c: $3e $06
    ldh [$96], a                                  ; $411e: $e0 $96
    ldh [rSVBK], a                                ; $4120: $e0 $70
    ld a, $01                                     ; $4122: $3e $01
    ld [$d551], a                                 ; $4124: $ea $51 $d5
    ret                                           ; $4127: $c9


Call_042_4128:
    call Call_042_414a                            ; $4128: $cd $4a $41
    call Call_042_40d2                            ; $412b: $cd $d2 $40
    ld b, [hl]                                    ; $412e: $46
    ld hl, $d542                                  ; $412f: $21 $42 $d5
    ld a, [hl+]                                   ; $4132: $2a
    ld h, [hl]                                    ; $4133: $66
    ld l, a                                       ; $4134: $6f
    ld a, [hl+]                                   ; $4135: $2a
    ld h, [hl]                                    ; $4136: $66
    ld l, a                                       ; $4137: $6f
    ld a, b                                       ; $4138: $78
    add a                                         ; $4139: $87
    add l                                         ; $413a: $85
    ld l, a                                       ; $413b: $6f
    jr nc, jr_042_413f                            ; $413c: $30 $01

    inc h                                         ; $413e: $24

jr_042_413f:
    ld a, [hl+]                                   ; $413f: $2a
    ld h, [hl]                                    ; $4140: $66
    ld l, a                                       ; $4141: $6f
    ld b, $0e                                     ; $4142: $06 $0e
    ld c, $00                                     ; $4144: $0e $00
    call Call_000_26ea                            ; $4146: $cd $ea $26
    ret                                           ; $4149: $c9


Call_042_414a:
    call Call_042_40d2                            ; $414a: $cd $d2 $40
    inc hl                                        ; $414d: $23
    inc hl                                        ; $414e: $23
    ld b, h                                       ; $414f: $44
    ld c, l                                       ; $4150: $4d
    ld a, [bc]                                    ; $4151: $0a
    ld hl, $d54e                                  ; $4152: $21 $4e $d5
    add [hl]                                      ; $4155: $86
    ld [hl], a                                    ; $4156: $77
    inc bc                                        ; $4157: $03
    inc hl                                        ; $4158: $23
    ld a, [bc]                                    ; $4159: $0a
    add [hl]                                      ; $415a: $86
    ld [hl], a                                    ; $415b: $77
    ld hl, $d54c                                  ; $415c: $21 $4c $d5
    ld a, [hl+]                                   ; $415f: $2a
    ld b, [hl]                                    ; $4160: $46
    inc hl                                        ; $4161: $23
    ld d, [hl]                                    ; $4162: $56
    inc hl                                        ; $4163: $23
    ld c, [hl]                                    ; $4164: $4e
    add d                                         ; $4165: $82
    ld d, a                                       ; $4166: $57
    ld a, b                                       ; $4167: $78
    add c                                         ; $4168: $81
    ld e, a                                       ; $4169: $5f
    ret                                           ; $416a: $c9


Call_042_416b:
    call Call_000_04de                            ; $416b: $cd $de $04
    ld a, $01                                     ; $416e: $3e $01
    ldh [$96], a                                  ; $4170: $e0 $96
    ldh [rSVBK], a                                ; $4172: $e0 $70
    ld hl, $4200                                  ; $4174: $21 $00 $42
    ld de, $d000                                  ; $4177: $11 $00 $d0
    call Call_000_1f2f                            ; $417a: $cd $2f $1f
    ld hl, $d000                                  ; $417d: $21 $00 $d0
    ld de, $a200                                  ; $4180: $11 $00 $a2
    ld c, $06                                     ; $4183: $0e $06
    call Call_000_04db                            ; $4185: $cd $db $04
    ld hl, $421c                                  ; $4188: $21 $1c $42
    ld de, $d000                                  ; $418b: $11 $00 $d0
    call Call_000_1f2f                            ; $418e: $cd $2f $1f
    ld hl, $d000                                  ; $4191: $21 $00 $d0
    ld de, $a280                                  ; $4194: $11 $80 $a2
    ld c, $06                                     ; $4197: $0e $06
    call Call_000_04db                            ; $4199: $cd $db $04
    ld hl, $4238                                  ; $419c: $21 $38 $42
    ld de, $d000                                  ; $419f: $11 $00 $d0
    call Call_000_1f2f                            ; $41a2: $cd $2f $1f
    ld hl, $d000                                  ; $41a5: $21 $00 $d0
    ld de, $a300                                  ; $41a8: $11 $00 $a3
    ld c, $06                                     ; $41ab: $0e $06
    call Call_000_04db                            ; $41ad: $cd $db $04
    ret                                           ; $41b0: $c9


Call_042_41b1:
    ld b, $00                                     ; $41b1: $06 $00
    ld hl, $d54f                                  ; $41b3: $21 $4f $d5
    ld a, [hl]                                    ; $41b6: $7e
    sub $01                                       ; $41b7: $d6 $01
    add $08                                       ; $41b9: $c6 $08
    jr c, jr_042_41c3                             ; $41bb: $38 $06

    inc b                                         ; $41bd: $04
    add $08                                       ; $41be: $c6 $08
    jr c, jr_042_41c3                             ; $41c0: $38 $01

    inc b                                         ; $41c2: $04

jr_042_41c3:
    ld a, $20                                     ; $41c3: $3e $20
    inc b                                         ; $41c5: $04
    ld hl, $4254                                  ; $41c6: $21 $54 $42

jr_042_41c9:
    inc hl                                        ; $41c9: $23
    inc hl                                        ; $41ca: $23
    add $08                                       ; $41cb: $c6 $08
    dec b                                         ; $41cd: $05
    jr nz, jr_042_41c9                            ; $41ce: $20 $f9

    dec hl                                        ; $41d0: $2b
    dec hl                                        ; $41d1: $2b
    sub $08                                       ; $41d2: $d6 $08
    ld b, $0e                                     ; $41d4: $06 $0e
    ld c, a                                       ; $41d6: $4f
    ld a, [hl+]                                   ; $41d7: $2a
    ld h, [hl]                                    ; $41d8: $66
    ld l, a                                       ; $41d9: $6f
    ld a, $06                                     ; $41da: $3e $06
    ldh [$96], a                                  ; $41dc: $e0 $96
    ldh [rSVBK], a                                ; $41de: $e0 $70
    ld a, [$d54c]                                 ; $41e0: $fa $4c $d5
    ld d, $04                                     ; $41e3: $16 $04
    add d                                         ; $41e5: $82
    ld d, a                                       ; $41e6: $57
    ld a, [$d54d]                                 ; $41e7: $fa $4d $d5
    ld e, $3e                                     ; $41ea: $1e $3e
    add e                                         ; $41ec: $83
    ld e, a                                       ; $41ed: $5f
    call Call_000_26ea                            ; $41ee: $cd $ea $26
    ret                                           ; $41f1: $c9


    add c                                         ; $41f2: $81
    ld b, d                                       ; $41f3: $42

    db $8c, $4c

    inc a                                         ; $41f6: $3c
    ld e, b                                       ; $41f7: $58
    sbc l                                         ; $41f8: $9d
    ld h, e                                       ; $41f9: $63
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    nop                                           ; $41ff: $00

    db $7f, $7f, $7f, $ff, $ff, $7f, $7f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $fe, $fe, $ff, $ff, $fe, $01, $fe, $c0, $f7, $00, $00

    nop                                           ; $421b: $00

    db $7f, $1f, $1f, $3f, $3f, $1f, $1f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $f8, $f8, $fc, $fc, $f8, $01, $f8, $c0, $f7, $00, $00

    nop                                           ; $4237: $00

    db $7f, $0f, $0f, $1f, $1f, $0f, $0f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $f0, $f0, $f8, $f8, $f0, $01, $f0, $c0, $f7, $00, $00

    nop                                           ; $4253: $00

    db $5a, $42

    ld h, a                                       ; $4256: $67
    ld b, d                                       ; $4257: $42
    ld [hl], h                                    ; $4258: $74
    ld b, d                                       ; $4259: $42

    db $10, $08, $00, $00, $10, $10, $02, $00, $10, $18, $04, $00, $80

    db $10                                        ; $4267: $10
    ld [$0000], sp                                ; $4268: $08 $00 $00
    db $10                                        ; $426b: $10
    db $10                                        ; $426c: $10
    ld [bc], a                                    ; $426d: $02
    nop                                           ; $426e: $00
    db $10                                        ; $426f: $10
    jr @+$06                                      ; $4270: $18 $04

    nop                                           ; $4272: $00
    add b                                         ; $4273: $80
    db $10                                        ; $4274: $10
    ld [$0000], sp                                ; $4275: $08 $00 $00
    db $10                                        ; $4278: $10
    db $10                                        ; $4279: $10
    ld [bc], a                                    ; $427a: $02
    nop                                           ; $427b: $00
    db $10                                        ; $427c: $10
    jr jr_042_4283                                ; $427d: $18 $04

    nop                                           ; $427f: $00
    add b                                         ; $4280: $80
    adc e                                         ; $4281: $8b
    ld b, d                                       ; $4282: $42

jr_042_4283:
    sub e                                         ; $4283: $93
    ld b, d                                       ; $4284: $42
    add a                                         ; $4285: $87
    ld c, d                                       ; $4286: $4a
    ld e, h                                       ; $4287: $5c
    ld c, h                                       ; $4288: $4c
    ld l, b                                       ; $4289: $68
    ld c, h                                       ; $428a: $4c
    ld d, h                                       ; $428b: $54
    ld h, d                                       ; $428c: $62
    rst $38                                       ; $428d: $ff
    ld l, e                                       ; $428e: $6b
    rst $18                                       ; $428f: $df
    jr jr_042_4292                                ; $4290: $18 $00

jr_042_4292:
    nop                                           ; $4292: $00
    or b                                          ; $4293: $b0
    ld b, d                                       ; $4294: $42
    call nc, $f443                                ; $4295: $d4 $43 $f4
    ld b, h                                       ; $4298: $44
    xor $45                                       ; $4299: $ee $45
    ld a, [hl+]                                   ; $429b: $2a
    ld b, a                                       ; $429c: $47
    ld [hl], $48                                  ; $429d: $36 $48
    ld d, a                                       ; $429f: $57
    ld c, c                                       ; $42a0: $49
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    ld l, c                                       ; $42b0: $69
    nop                                           ; $42b1: $00
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    di                                            ; $42b4: $f3
    ld a, [c]                                     ; $42b5: $f2
    ld bc, $e4ff                                  ; $42b6: $01 $ff $e4
    ld [bc], a                                    ; $42b9: $02
    inc bc                                        ; $42ba: $03
    cp $e3                                        ; $42bb: $fe $e3
    db $eb                                        ; $42bd: $eb
    ld bc, $e401                                  ; $42be: $01 $01 $e4
    jp hl                                         ; $42c1: $e9


    inc bc                                        ; $42c2: $03
    rst $38                                       ; $42c3: $ff
    ldh [rTIMA], a                                ; $42c4: $e0 $05
    rlca                                          ; $42c6: $07
    ld [$0fff], sp                                ; $42c7: $08 $ff $0f
    ld [$110f], sp                                ; $42ca: $08 $0f $11
    rra                                           ; $42cd: $1f
    db $10                                        ; $42ce: $10
    rra                                           ; $42cf: $1f
    jr nz, @+$01                                  ; $42d0: $20 $ff

    ccf                                           ; $42d2: $3f
    ld hl, $293f                                  ; $42d3: $21 $3f $29
    ccf                                           ; $42d6: $3f
    inc d                                         ; $42d7: $14
    rra                                           ; $42d8: $1f
    rrca                                          ; $42d9: $0f
    ld e, l                                       ; $42da: $5d
    rrca                                          ; $42db: $0f
    xor b                                         ; $42dc: $a8
    pop hl                                        ; $42dd: $e1
    inc bc                                        ; $42de: $03
    inc bc                                        ; $42df: $03
    inc b                                         ; $42e0: $04
    and $e2                                       ; $42e1: $e6 $e2
    rrca                                          ; $42e3: $0f
    ld [c], a                                     ; $42e4: $e2
    ldh [$b3], a                                  ; $42e5: $e0 $b3
    rlca                                          ; $42e7: $07
    rlca                                          ; $42e8: $07
    sub [hl]                                      ; $42e9: $96
    rst $38                                       ; $42ea: $ff
    db $e4                                        ; $42eb: $e4
    db $e3                                        ; $42ec: $e3
    rlca                                          ; $42ed: $07
    rlca                                          ; $42ee: $07
    rst $08                                       ; $42ef: $cf
    ldh [rIF], a                                  ; $42f0: $e0 $0f
    rst $38                                       ; $42f2: $ff
    rra                                           ; $42f3: $1f
    rra                                           ; $42f4: $1f
    daa                                           ; $42f5: $27
    ccf                                           ; $42f6: $3f
    ld b, b                                       ; $42f7: $40
    ld a, a                                       ; $42f8: $7f
    adc a                                         ; $42f9: $8f
    rst $38                                       ; $42fa: $ff
    rst $38                                       ; $42fb: $ff
    sbc [hl]                                      ; $42fc: $9e
    rst $38                                       ; $42fd: $ff
    ld [hl+], a                                   ; $42fe: $22
    rst $38                                       ; $42ff: $ff
    ld l, h                                       ; $4300: $6c
    rst $38                                       ; $4301: $ff
    ld e, [hl]                                    ; $4302: $5e
    di                                            ; $4303: $f3
    rst $38                                       ; $4304: $ff
    sbc $f7                                       ; $4305: $de $f7
    ld e, [hl]                                    ; $4307: $5e
    rst $30                                       ; $4308: $f7
    sbc $f7                                       ; $4309: $de $f7
    ld b, c                                       ; $430b: $41
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    nop                                           ; $430e: $00
    rst $38                                       ; $430f: $ff
    add h                                         ; $4310: $84
    rst $38                                       ; $4311: $ff
    add e                                         ; $4312: $83
    rst $38                                       ; $4313: $ff
    ld b, b                                       ; $4314: $40
    ld a, a                                       ; $4315: $7f
    rst $38                                       ; $4316: $ff
    jr nc, jr_042_4358                            ; $4317: $30 $3f

    ld a, h                                       ; $4319: $7c
    ld c, a                                       ; $431a: $4f
    rst $38                                       ; $431b: $ff
    db $e3                                        ; $431c: $e3
    rst $38                                       ; $431d: $ff
    pop af                                        ; $431e: $f1
    rst $18                                       ; $431f: $df
    rst $38                                       ; $4320: $ff
    ei                                            ; $4321: $fb
    rst $38                                       ; $4322: $ff
    rst $38                                       ; $4323: $ff
    rst $28                                       ; $4324: $ef
    cp $e0                                        ; $4325: $fe $e0
    ld e, a                                       ; $4327: $5f
    rst $38                                       ; $4328: $ff
    cp $ff                                        ; $4329: $fe $ff
    pop hl                                        ; $432b: $e1
    ld a, a                                       ; $432c: $7f
    rst $38                                       ; $432d: $ff
    ld b, b                                       ; $432e: $40
    rst $38                                       ; $432f: $ff
    ret nz                                        ; $4330: $c0

    rst $38                                       ; $4331: $ff
    add b                                         ; $4332: $80
    rst $18                                       ; $4333: $df
    rst $38                                       ; $4334: $ff
    ld a, a                                       ; $4335: $7f
    ld a, a                                       ; $4336: $7f
    ld b, c                                       ; $4337: $41
    ld a, a                                       ; $4338: $7f
    rst $28                                       ; $4339: $ef
    ldh [$c1], a                                  ; $433a: $e0 $c1
    ld a, $ff                                     ; $433c: $3e $ff
    ld [c], a                                     ; $433e: $e2
    ld e, $fe                                     ; $433f: $1e $fe
    ld [de], a                                    ; $4341: $12
    cp $fe                                        ; $4342: $fe $fe
    cp $02                                        ; $4344: $fe $02
    rst $20                                       ; $4346: $e7
    cp $fc                                        ; $4347: $fe $fc
    db $fc                                        ; $4349: $fc
    add [hl]                                      ; $434a: $86
    rst $38                                       ; $434b: $ff
    and $e5                                       ; $434c: $e6 $e5
    add b                                         ; $434e: $80
    add b                                         ; $434f: $80
    ret nz                                        ; $4350: $c0

    rst $38                                       ; $4351: $ff
    ret nz                                        ; $4352: $c0

    ldh a, [$f0]                                  ; $4353: $f0 $f0
    adc b                                         ; $4355: $88
    ld hl, sp+$04                                 ; $4356: $f8 $04

jr_042_4358:
    db $fc                                        ; $4358: $fc
    ld [c], a                                     ; $4359: $e2
    rst $38                                       ; $435a: $ff
    cp $f2                                        ; $435b: $fe $f2
    cp $89                                        ; $435d: $fe $89
    rst $38                                       ; $435f: $ff
    ld l, l                                       ; $4360: $6d
    rst $38                                       ; $4361: $ff
    push af                                       ; $4362: $f5
    rst $38                                       ; $4363: $ff
    sbc a                                         ; $4364: $9f
    rst $30                                       ; $4365: $f7
    rst $18                                       ; $4366: $df
    db $f4                                        ; $4367: $f4
    rst $18                                       ; $4368: $df
    or $df                                        ; $4369: $f6 $df
    inc b                                         ; $436b: $04
    ld a, [$e080]                                 ; $436c: $fa $80 $e0
    ld b, e                                       ; $436f: $43
    add b                                         ; $4370: $80
    ldh [rTMA], a                                 ; $4371: $e0 $06
    cp $1e                                        ; $4373: $fe $1e
    cp $7c                                        ; $4375: $fe $7c
    rst $38                                       ; $4377: $ff
    db $fc                                        ; $4378: $fc
    ld hl, sp-$38                                 ; $4379: $f8 $c8
    cp $8e                                        ; $437b: $fe $8e
    rst $38                                       ; $437d: $ff
    rst $18                                       ; $437e: $df
    rst $38                                       ; $437f: $ff
    xor $7d                                       ; $4380: $ee $7d
    ldh [$fb], a                                  ; $4382: $e0 $fb
    rst $38                                       ; $4384: $ff
    db $fd                                        ; $4385: $fd
    cp $e2                                        ; $4386: $fe $e2
    rst $38                                       ; $4388: $ff
    rst $38                                       ; $4389: $ff
    ld bc, $ffef                                  ; $438a: $01 $ef $ff
    ld sp, $c1ff                                  ; $438d: $31 $ff $c1
    ld [hl], h                                    ; $4390: $74
    ldh [rSCY], a                                 ; $4391: $e0 $42
    ld a, [hl]                                    ; $4393: $7e
    ld a, [hl]                                    ; $4394: $7e
    rst $38                                       ; $4395: $ff
    ld a, [hl]                                    ; $4396: $7e
    rst $38                                       ; $4397: $ff
    add e                                         ; $4398: $83
    db $fc                                        ; $4399: $fc
    add a                                         ; $439a: $87
    ld hl, sp-$01                                 ; $439b: $f8 $ff
    adc b                                         ; $439d: $88
    add d                                         ; $439e: $82
    ld h, [hl]                                    ; $439f: $66
    ldh [$c0], a                                  ; $43a0: $e0 $c0
    ld l, [hl]                                    ; $43a2: $6e
    ldh [$88], a                                  ; $43a3: $e0 $88
    rst $38                                       ; $43a5: $ff
    ld l, d                                       ; $43a6: $6a

jr_042_43a7:
    db $fd                                        ; $43a7: $fd
    cp $e3                                        ; $43a8: $fe $e3
    add sp, -$0f                                  ; $43aa: $e8 $f1
    ld b, b                                       ; $43ac: $40
    rst $38                                       ; $43ad: $ff
    ret nz                                        ; $43ae: $c0

    ld h, b                                       ; $43af: $60
    ldh [$f0], a                                  ; $43b0: $e0 $f0
    sub b                                         ; $43b2: $90
    ldh a, [$d0]                                  ; $43b3: $f0 $d0
    ldh a, [rIE]                                  ; $43b5: $f0 $ff
    or b                                          ; $43b7: $b0
    ld hl, sp-$58                                 ; $43b8: $f8 $a8
    ld hl, sp+$48                                 ; $43ba: $f8 $48
    ldh a, [$50]                                  ; $43bc: $f0 $50
    ldh [$fd], a                                  ; $43be: $e0 $fd
    ldh [$b0], a                                  ; $43c0: $e0 $b0
    pop hl                                        ; $43c2: $e1
    ret nz                                        ; $43c3: $c0

    ret nz                                        ; $43c4: $c0

    jr nz, jr_042_43a7                            ; $43c5: $20 $e0

    db $10                                        ; $43c7: $10
    ldh a, [$37]                                  ; $43c8: $f0 $37
    db $10                                        ; $43ca: $10
    ldh a, [$f0]                                  ; $43cb: $f0 $f0
    db $fc                                        ; $43cd: $fc
    ldh [$e0], a                                  ; $43ce: $e0 $e0
    ldh [rP1], a                                  ; $43d0: $e0 $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    ld l, c                                       ; $43d4: $69
    nop                                           ; $43d5: $00
    rst $38                                       ; $43d6: $ff
    rst $38                                       ; $43d7: $ff
    di                                            ; $43d8: $f3
    ld a, [c]                                     ; $43d9: $f2
    ld bc, $e4ff                                  ; $43da: $01 $ff $e4
    ld [bc], a                                    ; $43dd: $02
    inc bc                                        ; $43de: $03
    cp $e3                                        ; $43df: $fe $e3
    rst $38                                       ; $43e1: $ff
    add hl, de                                    ; $43e2: $19
    add hl, de                                    ; $43e3: $19
    inc h                                         ; $43e4: $24
    inc a                                         ; $43e5: $3c
    inc h                                         ; $43e6: $24
    inc a                                         ; $43e7: $3c
    ld [hl+], a                                   ; $43e8: $22
    ld a, $ff                                     ; $43e9: $3e $ff
    dec de                                        ; $43eb: $1b
    rra                                           ; $43ec: $1f
    ld [de], a                                    ; $43ed: $12
    rra                                           ; $43ee: $1f
    dec l                                         ; $43ef: $2d
    ccf                                           ; $43f0: $3f
    inc hl                                        ; $43f1: $23
    ccf                                           ; $43f2: $3f
    rst $38                                       ; $43f3: $ff
    inc e                                         ; $43f4: $1c
    rra                                           ; $43f5: $1f
    ld de, $0e1f                                  ; $43f6: $11 $1f $0e
    rrca                                          ; $43f9: $0f
    inc bc                                        ; $43fa: $03
    inc bc                                        ; $43fb: $03
    cp $b6                                        ; $43fc: $fe $b6
    rst $28                                       ; $43fe: $ef
    inc bc                                        ; $43ff: $03
    inc bc                                        ; $4400: $03
    inc b                                         ; $4401: $04
    rlca                                          ; $4402: $07
    ld [$080f], sp                                ; $4403: $08 $0f $08
    sbc e                                         ; $4406: $9b
    rrca                                          ; $4407: $0f
    rrca                                          ; $4408: $0f
    db $fc                                        ; $4409: $fc
    ldh [rTAC], a                                 ; $440a: $e0 $07
    rlca                                          ; $440c: $07
    sub [hl]                                      ; $440d: $96
    rst $38                                       ; $440e: $ff
    db $e4                                        ; $440f: $e4
    db $e3                                        ; $4410: $e3
    rlca                                          ; $4411: $07
    db $fd                                        ; $4412: $fd
    rlca                                          ; $4413: $07
    rst $08                                       ; $4414: $cf
    ldh [rIF], a                                  ; $4415: $e0 $0f
    rra                                           ; $4417: $1f
    rra                                           ; $4418: $1f
    daa                                           ; $4419: $27
    ccf                                           ; $441a: $3f
    ld b, b                                       ; $441b: $40
    rst $38                                       ; $441c: $ff
    ld a, a                                       ; $441d: $7f
    adc a                                         ; $441e: $8f
    rst $38                                       ; $441f: $ff
    sbc [hl]                                      ; $4420: $9e
    rst $38                                       ; $4421: $ff
    ld [hl+], a                                   ; $4422: $22
    rst $38                                       ; $4423: $ff
    ld l, h                                       ; $4424: $6c
    rst $38                                       ; $4425: $ff
    rst $38                                       ; $4426: $ff
    ld e, [hl]                                    ; $4427: $5e
    di                                            ; $4428: $f3
    sbc $f7                                       ; $4429: $de $f7
    ld e, [hl]                                    ; $442b: $5e
    rst $30                                       ; $442c: $f7
    sbc $ff                                       ; $442d: $de $ff
    rst $30                                       ; $442f: $f7
    ld b, c                                       ; $4430: $41
    rst $38                                       ; $4431: $ff
    nop                                           ; $4432: $00
    rst $38                                       ; $4433: $ff
    add h                                         ; $4434: $84
    rst $38                                       ; $4435: $ff
    add e                                         ; $4436: $83
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    ld b, b                                       ; $4439: $40
    ld a, a                                       ; $443a: $7f
    jr nc, jr_042_447c                            ; $443b: $30 $3f

    ld a, h                                       ; $443d: $7c
    ld c, a                                       ; $443e: $4f
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    db $e3                                        ; $4441: $e3
    ld a, a                                       ; $4442: $7f
    pop af                                        ; $4443: $f1
    ld a, a                                       ; $4444: $7f
    ei                                            ; $4445: $fb
    rst $18                                       ; $4446: $df
    rst $38                                       ; $4447: $ff
    rst $18                                       ; $4448: $df
    rst $30                                       ; $4449: $f7
    rst $38                                       ; $444a: $ff
    cp a                                          ; $444b: $bf
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    push hl                                       ; $444e: $e5
    ld b, b                                       ; $444f: $40
    ld a, a                                       ; $4450: $7f
    ld b, b                                       ; $4451: $40
    ld a, a                                       ; $4452: $7f
    db $ed                                        ; $4453: $ed
    add b                                         ; $4454: $80
    ld a, [c]                                     ; $4455: $f2
    ldh [rSTAT], a                                ; $4456: $e0 $41
    ld a, a                                       ; $4458: $7f
    db $ed                                        ; $4459: $ed
    ldh [$c1], a                                  ; $445a: $e0 $c1
    ld a, $e2                                     ; $445c: $3e $e2
    rst $38                                       ; $445e: $ff
    ld e, $fe                                     ; $445f: $1e $fe
    ld [de], a                                    ; $4461: $12
    cp $fe                                        ; $4462: $fe $fe
    cp $02                                        ; $4464: $fe $02
    cp $f3                                        ; $4466: $fe $f3
    db $fc                                        ; $4468: $fc
    db $fc                                        ; $4469: $fc
    add [hl]                                      ; $446a: $86
    rst $38                                       ; $446b: $ff
    and $e5                                       ; $446c: $e6 $e5
    add b                                         ; $446e: $80
    add b                                         ; $446f: $80
    ret nz                                        ; $4470: $c0

    ret nz                                        ; $4471: $c0

    rst $38                                       ; $4472: $ff
    ldh a, [$f0]                                  ; $4473: $f0 $f0
    adc b                                         ; $4475: $88
    ld hl, sp+$04                                 ; $4476: $f8 $04
    db $fc                                        ; $4478: $fc
    ld [c], a                                     ; $4479: $e2
    cp $ff                                        ; $447a: $fe $ff

jr_042_447c:
    ld a, [c]                                     ; $447c: $f2
    cp $89                                        ; $447d: $fe $89
    rst $38                                       ; $447f: $ff
    ld l, l                                       ; $4480: $6d
    rst $38                                       ; $4481: $ff
    push af                                       ; $4482: $f5
    sbc a                                         ; $4483: $9f
    ld a, a                                       ; $4484: $7f
    rst $30                                       ; $4485: $f7
    rst $18                                       ; $4486: $df
    db $f4                                        ; $4487: $f4
    rst $18                                       ; $4488: $df
    or $df                                        ; $4489: $f6 $df
    inc b                                         ; $448b: $04
    add b                                         ; $448c: $80
    ldh [$fd], a                                  ; $448d: $e0 $fd
    ld b, e                                       ; $448f: $43
    add b                                         ; $4490: $80
    ldh [rTMA], a                                 ; $4491: $e0 $06
    cp $1e                                        ; $4493: $fe $1e
    cp $7c                                        ; $4495: $fe $7c
    db $fc                                        ; $4497: $fc
    ld l, a                                       ; $4498: $6f
    ld hl, sp-$38                                 ; $4499: $f8 $c8
    cp $8e                                        ; $449b: $fe $8e
    add e                                         ; $449d: $83
    ldh [rIE], a                                  ; $449e: $e0 $ff
    ei                                            ; $44a0: $fb
    cp $e0                                        ; $44a1: $fe $e0
    db $fd                                        ; $44a3: $fd
    db $fd                                        ; $44a4: $fd
    cp $e2                                        ; $44a5: $fe $e2
    rst $38                                       ; $44a7: $ff
    rst $38                                       ; $44a8: $ff
    ld bc, $31ff                                  ; $44a9: $01 $ff $31
    rst $38                                       ; $44ac: $ff
    db $fd                                        ; $44ad: $fd
    pop bc                                        ; $44ae: $c1
    ld [hl], d                                    ; $44af: $72
    ldh [rSCY], a                                 ; $44b0: $e0 $42
    ld a, [hl]                                    ; $44b2: $7e
    ld a, [hl]                                    ; $44b3: $7e
    ld a, [hl]                                    ; $44b4: $7e
    rst $38                                       ; $44b5: $ff
    add e                                         ; $44b6: $83
    rst $18                                       ; $44b7: $df
    db $fc                                        ; $44b8: $fc
    add a                                         ; $44b9: $87
    ld hl, sp-$01                                 ; $44ba: $f8 $ff
    adc b                                         ; $44bc: $88
    ld h, h                                       ; $44bd: $64
    ldh [$c0], a                                  ; $44be: $e0 $c0
    rst $38                                       ; $44c0: $ff
    jp Jump_042_7f7f                              ; $44c1: $c3 $7f $7f


    adc b                                         ; $44c4: $88
    rst $38                                       ; $44c5: $ff
    ld l, d                                       ; $44c6: $6a

jr_042_44c7:
    db $fd                                        ; $44c7: $fd
    cp $e3                                        ; $44c8: $fe $e3
    add sp, -$0f                                  ; $44ca: $e8 $f1
    ld b, b                                       ; $44cc: $40
    ret nz                                        ; $44cd: $c0

    rst $38                                       ; $44ce: $ff
    ld h, b                                       ; $44cf: $60
    ldh [$f0], a                                  ; $44d0: $e0 $f0
    sub b                                         ; $44d2: $90
    ldh a, [$d0]                                  ; $44d3: $f0 $d0
    ldh a, [$b0]                                  ; $44d5: $f0 $b0
    rst $38                                       ; $44d7: $ff
    ld hl, sp-$58                                 ; $44d8: $f8 $a8
    ld hl, sp+$48                                 ; $44da: $f8 $48
    ldh a, [$50]                                  ; $44dc: $f0 $50
    ldh [$e0], a                                  ; $44de: $e0 $e0
    cp $b0                                        ; $44e0: $fe $b0
    pop hl                                        ; $44e2: $e1
    ret nz                                        ; $44e3: $c0

    ret nz                                        ; $44e4: $c0

    jr nz, jr_042_44c7                            ; $44e5: $20 $e0

    db $10                                        ; $44e7: $10
    ldh a, [rNR10]                                ; $44e8: $f0 $10
    dec de                                        ; $44ea: $1b
    ldh a, [$f0]                                  ; $44eb: $f0 $f0
    db $fc                                        ; $44ed: $fc
    ldh [$e0], a                                  ; $44ee: $e0 $e0
    ldh [rP1], a                                  ; $44f0: $e0 $00
    nop                                           ; $44f2: $00
    nop                                           ; $44f3: $00
    ld l, c                                       ; $44f4: $69
    nop                                           ; $44f5: $00
    rst $38                                       ; $44f6: $ff
    rst $38                                       ; $44f7: $ff
    rst $38                                       ; $44f8: $ff
    cp $01                                        ; $44f9: $fe $01
    rst $38                                       ; $44fb: $ff
    db $e4                                        ; $44fc: $e4
    ld [bc], a                                    ; $44fd: $02
    inc bc                                        ; $44fe: $03
    cp $e1                                        ; $44ff: $fe $e1
    rst $38                                       ; $4501: $ff
    ld b, $07                                     ; $4502: $06 $07
    rrca                                          ; $4504: $0f
    rrca                                          ; $4505: $0f
    rla                                           ; $4506: $17
    rra                                           ; $4507: $1f
    inc hl                                        ; $4508: $23
    ccf                                           ; $4509: $3f
    rst $38                                       ; $450a: $ff
    ld hl, $433f                                  ; $450b: $21 $3f $43
    ld a, a                                       ; $450e: $7f
    ld b, h                                       ; $450f: $44
    ld a, h                                       ; $4510: $7c
    add h                                         ; $4511: $84
    db $fc                                        ; $4512: $fc
    rst $38                                       ; $4513: $ff
    add d                                         ; $4514: $82
    cp $8e                                        ; $4515: $fe $8e
    cp $44                                        ; $4517: $fe $44
    ld a, h                                       ; $4519: $7c
    dec a                                         ; $451a: $3d
    dec a                                         ; $451b: $3d
    ld a, [c]                                     ; $451c: $f2
    ldh [$e1], a                                  ; $451d: $e0 $e1
    inc bc                                        ; $451f: $03
    sbc $e0                                       ; $4520: $de $e0
    sub $e3                                       ; $4522: $d6 $e3
    inc b                                         ; $4524: $04
    rlca                                          ; $4525: $07
    rlca                                          ; $4526: $07
    rlca                                          ; $4527: $07
    add sp, -$04                                  ; $4528: $e8 $fc
    pop hl                                        ; $452a: $e1
    and d                                         ; $452b: $a2
    rst $38                                       ; $452c: $ff
    ldh a, [$ef]                                  ; $452d: $f0 $ef
    rlca                                          ; $452f: $07
    sbc [hl]                                      ; $4530: $9e
    ldh [rIF], a                                  ; $4531: $e0 $0f
    rrca                                          ; $4533: $0f
    rra                                           ; $4534: $1f
    rst $38                                       ; $4535: $ff
    rra                                           ; $4536: $1f
    cpl                                           ; $4537: $2f
    ccf                                           ; $4538: $3f
    ld b, a                                       ; $4539: $47
    ld a, a                                       ; $453a: $7f
    add b                                         ; $453b: $80
    rst $38                                       ; $453c: $ff
    add b                                         ; $453d: $80
    rst $38                                       ; $453e: $ff
    rst $38                                       ; $453f: $ff
    nop                                           ; $4540: $00
    rst $38                                       ; $4541: $ff
    rra                                           ; $4542: $1f
    rst $38                                       ; $4543: $ff
    ld l, [hl]                                    ; $4544: $6e
    rst $38                                       ; $4545: $ff
    ld [c], a                                     ; $4546: $e2
    rst $38                                       ; $4547: $ff
    rst $38                                       ; $4548: $ff
    ld b, b                                       ; $4549: $40
    rst $38                                       ; $454a: $ff
    call z, Call_042_5eff                         ; $454b: $cc $ff $5e
    di                                            ; $454e: $f3
    ld e, $fb                                     ; $454f: $1e $fb
    rst $30                                       ; $4551: $f7
    sbc [hl]                                      ; $4552: $9e
    cp $e0                                        ; $4553: $fe $e0
    add c                                         ; $4555: $81
    rst $38                                       ; $4556: $ff
    ret nz                                        ; $4557: $c0

    rst $38                                       ; $4558: $ff
    db $e3                                        ; $4559: $e3
    ld d, a                                       ; $455a: $57
    rst $38                                       ; $455b: $ff
    ld a, b                                       ; $455c: $78
    ld a, a                                       ; $455d: $7f
    rst $38                                       ; $455e: $ff
    pop hl                                        ; $455f: $e1
    rst $38                                       ; $4560: $ff
    rst $38                                       ; $4561: $ff
    ld [c], a                                     ; $4562: $e2
    rrca                                          ; $4563: $0f
    ldh a, [$e0]                                  ; $4564: $f0 $e0
    rst $30                                       ; $4566: $f7
    db $10                                        ; $4567: $10
    rst $38                                       ; $4568: $ff
    add hl, bc                                    ; $4569: $09
    call nc, $fee0                                ; $456a: $d4 $e0 $fe
    ld a, [c]                                     ; $456d: $f2
    ld c, $fe                                     ; $456e: $0e $fe
    rst $38                                       ; $4570: $ff
    ld a, [bc]                                    ; $4571: $0a
    cp $fa                                        ; $4572: $fe $fa
    cp $06                                        ; $4574: $fe $06
    cp $fc                                        ; $4576: $fe $fc
    db $fc                                        ; $4578: $fc
    db $fc                                        ; $4579: $fc
    sub d                                         ; $457a: $92
    rst $38                                       ; $457b: $ff
    ld a, [c]                                     ; $457c: $f2
    pop af                                        ; $457d: $f1
    add b                                         ; $457e: $80
    add b                                         ; $457f: $80
    ret nz                                        ; $4580: $c0

    ret nz                                        ; $4581: $c0

    ldh a, [$f0]                                  ; $4582: $f0 $f0
    rst $38                                       ; $4584: $ff
    ret z                                         ; $4585: $c8

    ld hl, sp-$7c                                 ; $4586: $f8 $84
    db $fc                                        ; $4588: $fc
    ld [bc], a                                    ; $4589: $02
    cp $02                                        ; $458a: $fe $02

jr_042_458c:
    cp $ff                                        ; $458c: $fe $ff
    ld bc, $f1ff                                  ; $458e: $01 $ff $f1
    rst $38                                       ; $4591: $ff
    db $ed                                        ; $4592: $ed
    rst $38                                       ; $4593: $ff
    adc a                                         ; $4594: $8f
    rst $38                                       ; $4595: $ff
    rst $38                                       ; $4596: $ff
    inc b                                         ; $4597: $04
    rst $38                                       ; $4598: $ff
    ld h, [hl]                                    ; $4599: $66
    rst $38                                       ; $459a: $ff
    db $f4                                        ; $459b: $f4
    sbc a                                         ; $459c: $9f
    ldh a, [$df]                                  ; $459d: $f0 $df
    db $dd                                        ; $459f: $dd
    di                                            ; $45a0: $f3
    cp $e0                                        ; $45a1: $fe $e0
    inc bc                                        ; $45a3: $03
    rst $38                                       ; $45a4: $ff
    rlca                                          ; $45a5: $07
    xor $e0                                       ; $45a6: $ee $e0
    ld a, $fe                                     ; $45a8: $3e $fe
    db $fc                                        ; $45aa: $fc
    rst $38                                       ; $45ab: $ff
    db $e3                                        ; $45ac: $e3
    ld a, [hl]                                    ; $45ad: $7e
    pop hl                                        ; $45ae: $e1
    pop hl                                        ; $45af: $e1
    rst $38                                       ; $45b0: $ff
    adc [hl]                                      ; $45b1: $8e
    rst $38                                       ; $45b2: $ff
    ld de, $fdff                                  ; $45b3: $11 $ff $fd
    jr nz, jr_042_458c                            ; $45b6: $20 $d4

    ldh [rIE], a                                  ; $45b8: $e0 $ff
    sbc a                                         ; $45ba: $9f
    ldh [rIE], a                                  ; $45bb: $e0 $ff
    and b                                         ; $45bd: $a0
    rst $38                                       ; $45be: $ff
    dec c                                         ; $45bf: $0d
    cp a                                          ; $45c0: $bf
    ld e, [hl]                                    ; $45c1: $5e
    ldh [$7f], a                                  ; $45c2: $e0 $7f
    ld a, a                                       ; $45c4: $7f
    sub h                                         ; $45c5: $94
    rst $38                                       ; $45c6: $ff
    rst $38                                       ; $45c7: $ff
    rst $38                                       ; $45c8: $ff
    ld l, d                                       ; $45c9: $6a
    rst $20                                       ; $45ca: $e7
    cp $e1                                        ; $45cb: $fe $e1
    cp $66                                        ; $45cd: $fe $66
    push hl                                       ; $45cf: $e5
    add h                                         ; $45d0: $84
    db $fc                                        ; $45d1: $fc
    adc $fa                                       ; $45d2: $ce $fa
    ld a, a                                       ; $45d4: $7f
    ld [hl], c                                    ; $45d5: $71
    ld a, a                                       ; $45d6: $7f
    ld a, l                                       ; $45d7: $7d
    ld b, c                                       ; $45d8: $41
    cp $e0                                        ; $45d9: $fe $e0
    ld e, c                                       ; $45db: $59
    ld a, [hl]                                    ; $45dc: $7e
    ld [hl], d                                    ; $45dd: $72
    inc a                                         ; $45de: $3c
    inc a                                         ; $45df: $3c
    ldh [$e5], a                                  ; $45e0: $e0 $e5
    ld e, $40                                     ; $45e2: $1e $40
    db $e3                                        ; $45e4: $e3
    ld b, b                                       ; $45e5: $40
    ret nz                                        ; $45e6: $c0

    ret nz                                        ; $45e7: $c0

    ret nz                                        ; $45e8: $c0

    db $fc                                        ; $45e9: $fc
    pop hl                                        ; $45ea: $e1
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    db $dd                                        ; $45ee: $dd
    nop                                           ; $45ef: $00
    rst $38                                       ; $45f0: $ff
    and $07                                       ; $45f1: $e6 $07
    rlca                                          ; $45f3: $07
    rrca                                          ; $45f4: $0f
    rst $38                                       ; $45f5: $ff
    ld [c], a                                     ; $45f6: $e2
    rlca                                          ; $45f7: $07
    rlca                                          ; $45f8: $07
    rst $38                                       ; $45f9: $ff
    inc b                                         ; $45fa: $04
    rlca                                          ; $45fb: $07
    ld [$090f], sp                                ; $45fc: $08 $0f $09
    rrca                                          ; $45ff: $0f
    inc de                                        ; $4600: $13
    rra                                           ; $4601: $1f
    rst $18                                       ; $4602: $df
    ld [de], a                                    ; $4603: $12
    rra                                           ; $4604: $1f
    inc d                                         ; $4605: $14
    rra                                           ; $4606: $1f
    dec d                                         ; $4607: $15
    db $fc                                        ; $4608: $fc
    ldh [$0c], a                                  ; $4609: $e0 $0c
    rrca                                          ; $460b: $0f
    rst $38                                       ; $460c: $ff
    inc d                                         ; $460d: $14
    rra                                           ; $460e: $1f
    ld d, $1f                                     ; $460f: $16 $1f
    inc de                                        ; $4611: $13
    rra                                           ; $4612: $1f
    ld a, [bc]                                    ; $4613: $0a
    rrca                                          ; $4614: $0f
    rst $38                                       ; $4615: $ff
    inc b                                         ; $4616: $04
    rlca                                          ; $4617: $07
    dec b                                         ; $4618: $05
    rlca                                          ; $4619: $07
    inc c                                         ; $461a: $0c
    rrca                                          ; $461b: $0f
    ld d, $1f                                     ; $461c: $16 $1f
    rst $38                                       ; $461e: $ff
    ld [hl+], a                                   ; $461f: $22
    ccf                                           ; $4620: $3f
    ld hl, $203f                                  ; $4621: $21 $3f $20
    ccf                                           ; $4624: $3f
    ld de, $e31f                                  ; $4625: $11 $1f $e3
    rrca                                          ; $4628: $0f
    rrca                                          ; $4629: $0f
    ret nz                                        ; $462a: $c0

    rst $20                                       ; $462b: $e7
    rst $38                                       ; $462c: $ff
    rst $38                                       ; $462d: $ff
    cp $fd                                        ; $462e: $fe $fd
    add b                                         ; $4630: $80
    add b                                         ; $4631: $80
    ld hl, sp-$01                                 ; $4632: $f8 $ff
    ld hl, sp-$7a                                 ; $4634: $f8 $86
    cp $01                                        ; $4636: $fe $01
    rst $38                                       ; $4638: $ff
    ld a, $ff                                     ; $4639: $3e $ff
    db $dd                                        ; $463b: $dd
    rst $38                                       ; $463c: $ff
    rst $38                                       ; $463d: $ff
    db $10                                        ; $463e: $10
    rst $38                                       ; $463f: $ff
    add [hl]                                      ; $4640: $86
    rst $38                                       ; $4641: $ff
    rrca                                          ; $4642: $0f
    ld sp, hl                                     ; $4643: $f9
    rrca                                          ; $4644: $0f
    rst $38                                       ; $4645: $ff
    db $fd                                        ; $4646: $fd
    rst $08                                       ; $4647: $cf
    db $fd                                        ; $4648: $fd
    ld h, [hl]                                    ; $4649: $66
    db $fd                                        ; $464a: $fd
    adc h                                         ; $464b: $8c
    rst $38                                       ; $464c: $ff
    nop                                           ; $464d: $00
    rst $38                                       ; $464e: $ff
    rst $38                                       ; $464f: $ff
    rra                                           ; $4650: $1f
    rst $38                                       ; $4651: $ff
    sbc [hl]                                      ; $4652: $9e
    rst $38                                       ; $4653: $ff
    ld c, h                                       ; $4654: $4c
    rst $38                                       ; $4655: $ff
    pop bc                                        ; $4656: $c1
    rst $38                                       ; $4657: $ff
    rst $38                                       ; $4658: $ff
    ccf                                           ; $4659: $3f
    rst $38                                       ; $465a: $ff
    rra                                           ; $465b: $1f
    di                                            ; $465c: $f3
    rra                                           ; $465d: $1f
    rst $30                                       ; $465e: $f7
    ccf                                           ; $465f: $3f
    rst $10                                       ; $4660: $d7
    rst $38                                       ; $4661: $ff
    ld a, a                                       ; $4662: $7f
    rst $38                                       ; $4663: $ff
    rst $38                                       ; $4664: $ff
    db $e3                                        ; $4665: $e3
    ld a, a                                       ; $4666: $7f
    rst $38                                       ; $4667: $ff
    db $e4                                        ; $4668: $e4
    ld a, [hl]                                    ; $4669: $7e
    ld a, a                                       ; $466a: $7f
    db $fd                                        ; $466b: $fd
    jr nz, jr_042_46dc                            ; $466c: $20 $6e

    ldh [rNR41], a                                ; $466e: $e0 $20
    ccf                                           ; $4670: $3f
    ccf                                           ; $4671: $3f
    ccf                                           ; $4672: $3f
    db $10                                        ; $4673: $10
    rra                                           ; $4674: $1f
    ld a, e                                       ; $4675: $7b
    db $10                                        ; $4676: $10
    rra                                           ; $4677: $1f
    rst $38                                       ; $4678: $ff
    ldh [rNR10], a                                ; $4679: $e0 $10
    rra                                           ; $467b: $1f
    inc e                                         ; $467c: $1c
    inc hl                                        ; $467d: $23
    ld e, d                                       ; $467e: $5a
    ldh [$fb], a                                  ; $467f: $e0 $fb
    ld b, b                                       ; $4681: $40
    ld a, a                                       ; $4682: $7f
    cp $e3                                        ; $4683: $fe $e3
    ld hl, $3e3f                                  ; $4685: $21 $3f $3e
    ccf                                           ; $4688: $3f
    rra                                           ; $4689: $1f
    db $fd                                        ; $468a: $fd
    rra                                           ; $468b: $1f
    ld a, h                                       ; $468c: $7c
    db $fd                                        ; $468d: $fd
    ld bc, $0301                                  ; $468e: $01 $01 $03
    ld [bc], a                                    ; $4691: $02
    inc bc                                        ; $4692: $03
    ld [bc], a                                    ; $4693: $02
    rst $38                                       ; $4694: $ff
    add e                                         ; $4695: $83
    add d                                         ; $4696: $82
    ld b, a                                       ; $4697: $47
    rst $00                                       ; $4698: $c7
    rst $00                                       ; $4699: $c7
    call nz, $f477                                ; $469a: $c4 $77 $f4
    rst $38                                       ; $469d: $ff
    ld c, a                                       ; $469e: $4f
    rst $38                                       ; $469f: $ff
    dec hl                                        ; $46a0: $2b
    ld a, [$fb2b]                                 ; $46a1: $fa $2b $fb
    inc e                                         ; $46a4: $1c
    rst $38                                       ; $46a5: $ff
    push af                                       ; $46a6: $f5

jr_042_46a7:
    jr jr_042_46a7                                ; $46a7: $18 $fe

    ldh [$3c], a                                  ; $46a9: $e0 $3c
    add [hl]                                      ; $46ab: $86
    ldh [$7f], a                                  ; $46ac: $e0 $7f
    rst $18                                       ; $46ae: $df
    rst $38                                       ; $46af: $ff
    cp a                                          ; $46b0: $bf
    rst $00                                       ; $46b1: $c7
    rst $38                                       ; $46b2: $ff
    ccf                                           ; $46b3: $3f
    cp $ff                                        ; $46b4: $fe $ff
    ldh [$83], a                                  ; $46b6: $e0 $83
    db $e4                                        ; $46b8: $e4
    ld a, h                                       ; $46b9: $7c
    db $e4                                        ; $46ba: $e4
    ld hl, sp-$01                                 ; $46bb: $f8 $ff
    rst $18                                       ; $46bd: $df
    pop hl                                        ; $46be: $e1
    rst $38                                       ; $46bf: $ff
    ld [hl+], a                                   ; $46c0: $22
    rst $38                                       ; $46c1: $ff
    inc d                                         ; $46c2: $14
    ret c                                         ; $46c3: $d8

    ldh [$38], a                                  ; $46c4: $e0 $38
    rst $38                                       ; $46c6: $ff
    rst $38                                       ; $46c7: $ff
    db $fc                                        ; $46c8: $fc
    rst $38                                       ; $46c9: $ff
    rst $18                                       ; $46ca: $df
    rst $30                                       ; $46cb: $f7
    rst $18                                       ; $46cc: $df
    ld hl, sp-$11                                 ; $46cd: $f8 $ef
    ld a, a                                       ; $46cf: $7f
    rst $38                                       ; $46d0: $ff
    add sp, $7f                                   ; $46d1: $e8 $7f
    ldh a, [rIE]                                  ; $46d3: $f0 $ff
    ld d, b                                       ; $46d5: $50
    rst $18                                       ; $46d6: $df
    ld d, b                                       ; $46d7: $50
    rst $18                                       ; $46d8: $df
    rst $38                                       ; $46d9: $ff
    ret z                                         ; $46da: $c8

    rst $08                                       ; $46db: $cf

jr_042_46dc:
    ld b, a                                       ; $46dc: $47
    rst $00                                       ; $46dd: $c7
    ld b, b                                       ; $46de: $40
    ret nz                                        ; $46df: $c0

    ret nz                                        ; $46e0: $c0

    ret nz                                        ; $46e1: $c0

    rst $28                                       ; $46e2: $ef
    ld b, b                                       ; $46e3: $40
    ret nz                                        ; $46e4: $c0

    add b                                         ; $46e5: $80
    add b                                         ; $46e6: $80
    cp $df                                        ; $46e7: $fe $df

jr_042_46e9:
    add b                                         ; $46e9: $80
    add b                                         ; $46ea: $80
    ldh a, [$df]                                  ; $46eb: $f0 $df
    ld [hl], b                                    ; $46ed: $70
    ld hl, sp+$08                                 ; $46ee: $f8 $08
    db $fc                                        ; $46f0: $fc
    add h                                         ; $46f1: $84
    cp $e0                                        ; $46f2: $fe $e0
    call nz, $fffc                                ; $46f4: $c4 $fc $ff
    ld h, h                                       ; $46f7: $64
    ld hl, sp-$78                                 ; $46f8: $f8 $88

jr_042_46fa:
    ldh a, [$30]                                  ; $46fa: $f0 $30
    ldh a, [rNR10]                                ; $46fc: $f0 $10
    ldh [$8f], a                                  ; $46fe: $e0 $8f
    ldh [rNR41], a                                ; $4700: $e0 $20
    ldh [rLCDC], a                                ; $4702: $e0 $40
    ret nz                                        ; $4704: $c0

    ld [c], a                                     ; $4705: $e2
    cp [hl]                                       ; $4706: $be
    db $eb                                        ; $4707: $eb
    ldh a, [$e1]                                  ; $4708: $f0 $e1
    add b                                         ; $470a: $80
    ld l, l                                       ; $470b: $6d
    add b                                         ; $470c: $80
    and [hl]                                      ; $470d: $a6
    pop hl                                        ; $470e: $e1
    ld b, b                                       ; $470f: $40
    ret nz                                        ; $4710: $c0

    call c, Call_000_10e1                         ; $4711: $dc $e1 $10
    ldh a, [$fe]                                  ; $4714: $f0 $fe
    pop hl                                        ; $4716: $e1
    daa                                           ; $4717: $27
    jr nz, jr_042_46fa                            ; $4718: $20 $e0

    ret nz                                        ; $471a: $c0

    sub [hl]                                      ; $471b: $96
    ldh [$d0], a                                  ; $471c: $e0 $d0
    pop hl                                        ; $471e: $e1
    jr nz, jr_042_46e9                            ; $471f: $20 $c8

    ldh [$c6], a                                  ; $4721: $e0 $c6
    pop hl                                        ; $4723: $e1
    nop                                           ; $4724: $00
    adc b                                         ; $4725: $88
    ei                                            ; $4726: $fb
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    jp hl                                         ; $472a: $e9


    nop                                           ; $472b: $00
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    push hl                                       ; $472e: $e5
    db $e4                                        ; $472f: $e4
    ld bc, $e4ff                                  ; $4730: $01 $ff $e4
    ld [bc], a                                    ; $4733: $02
    inc bc                                        ; $4734: $03
    ld [bc], a                                    ; $4735: $02
    rst $38                                       ; $4736: $ff
    inc bc                                        ; $4737: $03
    ld a, [hl-]                                   ; $4738: $3a
    dec sp                                        ; $4739: $3b
    ld b, [hl]                                    ; $473a: $46
    ld a, a                                       ; $473b: $7f
    add c                                         ; $473c: $81
    rst $38                                       ; $473d: $ff
    add b                                         ; $473e: $80
    ld a, [hl]                                    ; $473f: $7e
    cp $e0                                        ; $4740: $fe $e0
    adc l                                         ; $4742: $8d
    rst $38                                       ; $4743: $ff
    ld [hl], e                                    ; $4744: $73
    ld [hl], e                                    ; $4745: $73
    ld bc, $d201                                  ; $4746: $01 $01 $d2
    di                                            ; $4749: $f3
    db $fc                                        ; $474a: $fc
    xor h                                         ; $474b: $ac
    rst $38                                       ; $474c: $ff
    db $fc                                        ; $474d: $fc
    ei                                            ; $474e: $fb
    rlca                                          ; $474f: $07
    rlca                                          ; $4750: $07
    rrca                                          ; $4751: $0f
    rrca                                          ; $4752: $0f
    rra                                           ; $4753: $1f
    rra                                           ; $4754: $1f
    rst $18                                       ; $4755: $df
    cpl                                           ; $4756: $2f
    ccf                                           ; $4757: $3f
    ld c, a                                       ; $4758: $4f
    ld a, a                                       ; $4759: $7f
    add a                                         ; $475a: $87
    sub h                                         ; $475b: $94
    ldh [rIF], a                                  ; $475c: $e0 $0f
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    ld a, $ff                                     ; $4760: $3e $ff
    ld h, d                                       ; $4762: $62
    rst $38                                       ; $4763: $ff
    call z, Call_042_5eff                         ; $4764: $cc $ff $5e
    di                                            ; $4767: $f3
    cp a                                          ; $4768: $bf
    sbc $f7                                       ; $4769: $de $f7
    ld e, [hl]                                    ; $476b: $5e
    rst $30                                       ; $476c: $f7
    ld e, $f7                                     ; $476d: $1e $f7
    add b                                         ; $476f: $80
    pop hl                                        ; $4770: $e1
    ret nz                                        ; $4771: $c0

    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    pop af                                        ; $4774: $f1
    rst $38                                       ; $4775: $ff
    db $fc                                        ; $4776: $fc
    rst $28                                       ; $4777: $ef
    rst $38                                       ; $4778: $ff
    di                                            ; $4779: $f3
    rst $38                                       ; $477a: $ff
    db $eb                                        ; $477b: $eb
    ld sp, hl                                     ; $477c: $f9
    ld a, a                                       ; $477d: $7f
    rst $38                                       ; $477e: $ff
    db $e4                                        ; $477f: $e4
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    db $e4                                        ; $4782: $e4
    ld c, $ff                                     ; $4783: $0e $ff
    nop                                           ; $4785: $00
    rst $38                                       ; $4786: $ff
    rst $38                                       ; $4787: $ff
    add c                                         ; $4788: $81
    rst $38                                       ; $4789: $ff
    ld a, a                                       ; $478a: $7f
    ld a, a                                       ; $478b: $7f
    ld b, e                                       ; $478c: $43
    ld a, a                                       ; $478d: $7f
    ld b, a                                       ; $478e: $47
    rst $38                                       ; $478f: $ff
    ld a, l                                       ; $4790: $7d
    ccf                                           ; $4791: $3f
    add hl, sp                                    ; $4792: $39
    ld a, $23                                     ; $4793: $3e $23
    inc a                                         ; $4795: $3c
    ccf                                           ; $4796: $3f
    ld b, b                                       ; $4797: $40
    ei                                            ; $4798: $fb
    ld a, a                                       ; $4799: $7f
    ld b, c                                       ; $479a: $41
    ld c, h                                       ; $479b: $4c
    ldh [$83], a                                  ; $479c: $e0 $83

jr_042_479e:
    rst $38                                       ; $479e: $ff
    db $fd                                        ; $479f: $fd
    rst $38                                       ; $47a0: $ff
    add d                                         ; $47a1: $82
    rst $20                                       ; $47a2: $e7
    cp $7c                                        ; $47a3: $fe $7c
    ld a, h                                       ; $47a5: $7c
    add d                                         ; $47a6: $82
    rst $38                                       ; $47a7: $ff
    ld [c], a                                     ; $47a8: $e2
    pop hl                                        ; $47a9: $e1
    add b                                         ; $47aa: $80
    add b                                         ; $47ab: $80
    ldh a, [rIE]                                  ; $47ac: $f0 $ff
    ldh a, [$c8]                                  ; $47ae: $f0 $c8
    ld hl, sp-$3c                                 ; $47b0: $f8 $c4
    db $fc                                        ; $47b2: $fc
    add d                                         ; $47b3: $82
    cp $02                                        ; $47b4: $fe $02
    rst $28                                       ; $47b6: $ef
    cp $e1                                        ; $47b7: $fe $e1
    rst $38                                       ; $47b9: $ff
    ld sp, hl                                     ; $47ba: $f9
    ld [de], a                                    ; $47bb: $12
    ldh [$67], a                                  ; $47bc: $e0 $67
    rst $38                                       ; $47be: $ff
    db $f4                                        ; $47bf: $f4
    rst $38                                       ; $47c0: $ff
    sbc a                                         ; $47c1: $9f
    or $df                                        ; $47c2: $f6 $df
    db $f4                                        ; $47c4: $f4
    rst $18                                       ; $47c5: $df
    ldh a, [$df]                                  ; $47c6: $f0 $df
    inc bc                                        ; $47c8: $03
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    ld [bc], a                                    ; $47cb: $02
    rst $38                                       ; $47cc: $ff
    rlca                                          ; $47cd: $07
    rst $38                                       ; $47ce: $ff
    rra                                           ; $47cf: $1f
    rst $38                                       ; $47d0: $ff
    ld a, a                                       ; $47d1: $7f
    ld a, a                                       ; $47d2: $7f
    rst $28                                       ; $47d3: $ef
    rst $38                                       ; $47d4: $ff
    sbc a                                         ; $47d5: $9f
    cp $be                                        ; $47d6: $fe $be
    cp $fe                                        ; $47d8: $fe $fe
    add [hl]                                      ; $47da: $86
    push hl                                       ; $47db: $e5
    rst $10                                       ; $47dc: $d7
    db $fc                                        ; $47dd: $fc
    rst $38                                       ; $47de: $ff
    ldh a, [$e6]                                  ; $47df: $f0 $e6
    ret nz                                        ; $47e1: $c0

    inc bc                                        ; $47e2: $03
    ld d, [hl]                                    ; $47e3: $56
    ldh [rSVBK], a                                ; $47e4: $e0 $70
    ld a, a                                       ; $47e6: $7f
    rst $38                                       ; $47e7: $ff
    jr jr_042_4809                                ; $47e8: $18 $1f

    rra                                           ; $47ea: $1f
    rla                                           ; $47eb: $17
    ccf                                           ; $47ec: $3f
    jr c, jr_042_479e                             ; $47ed: $38 $af

    cp a                                          ; $47ef: $bf
    rst $30                                       ; $47f0: $f7
    xor b                                         ; $47f1: $a8
    cp a                                          ; $47f2: $bf
    or b                                          ; $47f3: $b0
    cp $e0                                        ; $47f4: $fe $e0
    sbc b                                         ; $47f6: $98
    sbc a                                         ; $47f7: $9f
    sub a                                         ; $47f8: $97
    sbc a                                         ; $47f9: $9f
    rst $08                                       ; $47fa: $cf
    ld [$070f], sp                                ; $47fb: $08 $0f $07
    rlca                                          ; $47fe: $07
    adc b                                         ; $47ff: $88
    rst $38                                       ; $4800: $ff
    ld l, h                                       ; $4801: $6c
    ei                                            ; $4802: $fb
    sbc h                                         ; $4803: $9c
    sbc h                                         ; $4804: $9c
    rst $38                                       ; $4805: $ff
    cp $f2                                        ; $4806: $fe $f2
    cp a                                          ; $4808: $bf

jr_042_4809:
    pop hl                                        ; $4809: $e1
    rra                                           ; $480a: $1f
    pop af                                        ; $480b: $f1
    rra                                           ; $480c: $1f
    pop af                                        ; $480d: $f1
    ccf                                           ; $480e: $3f
    ld a, a                                       ; $480f: $7f
    push af                                       ; $4810: $f5
    cp a                                          ; $4811: $bf
    and a                                         ; $4812: $a7
    sbc h                                         ; $4813: $9c
    sbc h                                         ; $4814: $9c
    ld d, b                                       ; $4815: $50
    jp hl                                         ; $4816: $e9


    cp $e3                                        ; $4817: $fe $e3
    sbc a                                         ; $4819: $9f
    ld b, b                                       ; $481a: $40
    ret nz                                        ; $481b: $c0

    ret nz                                        ; $481c: $c0

    ret nz                                        ; $481d: $c0

    ld b, b                                       ; $481e: $40
    cp $e2                                        ; $481f: $fe $e2
    ldh a, [$e5]                                  ; $4821: $f0 $e5
    jr nz, @+$01                                  ; $4823: $20 $ff

    ldh [rNR41], a                                ; $4825: $e0 $20
    ldh [rNR10], a                                ; $4827: $e0 $10
    ldh a, [$f0]                                  ; $4829: $f0 $f0
    ldh a, [rNR10]                                ; $482b: $f0 $10
    rlca                                          ; $482d: $07
    ldh a, [$e0]                                  ; $482e: $f0 $e0
    ldh [$9c], a                                  ; $4830: $e0 $9c
    jp hl                                         ; $4832: $e9


    nop                                           ; $4833: $00
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    ld a, c                                       ; $4836: $79
    nop                                           ; $4837: $00
    rst $38                                       ; $4838: $ff
    rst $38                                       ; $4839: $ff
    pop af                                        ; $483a: $f1
    ldh a, [rSB]                                  ; $483b: $f0 $01
    ld bc, $0302                                  ; $483d: $01 $02 $03
    cp $e1                                        ; $4840: $fe $e1
    db $eb                                        ; $4842: $eb
    ld bc, $e601                                  ; $4843: $01 $01 $e6
    rst $28                                       ; $4846: $ef
    rrca                                          ; $4847: $0f
    rst $38                                       ; $4848: $ff
    ldh [$1f], a                                  ; $4849: $e0 $1f
    rra                                           ; $484b: $1f
    inc hl                                        ; $484c: $23
    rst $38                                       ; $484d: $ff
    ccf                                           ; $484e: $3f
    ld b, a                                       ; $484f: $47
    ld a, a                                       ; $4850: $7f
    ld e, b                                       ; $4851: $58
    ld a, a                                       ; $4852: $7f
    ld h, d                                       ; $4853: $62
    ld a, a                                       ; $4854: $7f
    ld b, d                                       ; $4855: $42
    rst $38                                       ; $4856: $ff
    ld a, a                                       ; $4857: $7f
    ld b, e                                       ; $4858: $43
    ld a, a                                       ; $4859: $7f
    ld b, [hl]                                    ; $485a: $46
    ld a, a                                       ; $485b: $7f
    dec sp                                        ; $485c: $3b
    dec sp                                        ; $485d: $3b
    ld bc, $fffe                                  ; $485e: $01 $fe $ff
    ldh [rSC], a                                  ; $4861: $e0 $02
    inc bc                                        ; $4863: $03
    inc bc                                        ; $4864: $03
    inc bc                                        ; $4865: $03
    inc b                                         ; $4866: $04
    rlca                                          ; $4867: $07
    inc b                                         ; $4868: $04
    rst $38                                       ; $4869: $ff
    rlca                                          ; $486a: $07
    rlca                                          ; $486b: $07
    rlca                                          ; $486c: $07
    ld [$100f], sp                                ; $486d: $08 $0f $10
    rra                                           ; $4870: $1f
    rra                                           ; $4871: $1f
    sbc a                                         ; $4872: $9f
    rra                                           ; $4873: $1f
    db $10                                        ; $4874: $10
    rra                                           ; $4875: $1f
    rrca                                          ; $4876: $0f
    rrca                                          ; $4877: $0f
    sub h                                         ; $4878: $94
    rst $38                                       ; $4879: $ff
    add [hl]                                      ; $487a: $86
    db $ed                                        ; $487b: $ed
    ld c, $bf                                     ; $487c: $0e $bf
    rrca                                          ; $487e: $0f
    ld hl, sp-$01                                 ; $487f: $f8 $ff
    db $10                                        ; $4881: $10
    rst $38                                       ; $4882: $ff

jr_042_4883:
    jr nz, jr_042_4883                            ; $4883: $20 $fe

    ldh [rLCDC], a                                ; $4885: $e0 $40
    cp $fe                                        ; $4887: $fe $fe
    ldh [$c0], a                                  ; $4889: $e0 $c0
    rst $38                                       ; $488b: $ff
    ld h, b                                       ; $488c: $60
    ld a, a                                       ; $488d: $7f
    ld a, b                                       ; $488e: $78
    ld a, a                                       ; $488f: $7f
    sbc a                                         ; $4890: $9f
    rst $38                                       ; $4891: $ff
    rst $38                                       ; $4892: $ff
    cp h                                          ; $4893: $bc
    rst $38                                       ; $4894: $ff
    xor h                                         ; $4895: $ac
    rst $38                                       ; $4896: $ff
    ld c, b                                       ; $4897: $48
    ld a, a                                       ; $4898: $7f
    ld h, b                                       ; $4899: $60
    rst $38                                       ; $489a: $ff
    ld a, a                                       ; $489b: $7f
    ld hl, sp-$01                                 ; $489c: $f8 $ff
    ld hl, sp-$01                                 ; $489e: $f8 $ff
    db $fc                                        ; $48a0: $fc
    rst $30                                       ; $48a1: $f7
    cp $bf                                        ; $48a2: $fe $bf
    ei                                            ; $48a4: $fb
    rst $18                                       ; $48a5: $df
    ld sp, hl                                     ; $48a6: $f9
    cp a                                          ; $48a7: $bf
    db $fc                                        ; $48a8: $fc
    rst $38                                       ; $48a9: $ff
    rst $38                                       ; $48aa: $ff
    ld [c], a                                     ; $48ab: $e2
    ld a, a                                       ; $48ac: $7f
    cp $fa                                        ; $48ad: $fe $fa
    db $e4                                        ; $48af: $e4
    ccf                                           ; $48b0: $3f
    rst $38                                       ; $48b1: $ff
    ld c, $ff                                     ; $48b2: $0e $ff
    ld [bc], a                                    ; $48b4: $02
    rst $38                                       ; $48b5: $ff
    rst $00                                       ; $48b6: $c7
    rst $38                                       ; $48b7: $ff
    rst $38                                       ; $48b8: $ff
    inc a                                         ; $48b9: $3c
    db $fc                                        ; $48ba: $fc
    call c, Call_000_3cf4                         ; $48bb: $dc $f4 $3c
    db $ec                                        ; $48be: $ec
    inc e                                         ; $48bf: $1c
    ld a, a                                       ; $48c0: $7f
    db $fc                                        ; $48c1: $fc
    db $f4                                        ; $48c2: $f4
    db $fc                                        ; $48c3: $fc
    ld [$f0f8], sp                                ; $48c4: $08 $f8 $f0
    ldh a, [$8e]                                  ; $48c7: $f0 $8e
    rst $38                                       ; $48c9: $ff
    cp $ec                                        ; $48ca: $fe $ec
    db $eb                                        ; $48cc: $eb
    ldh a, [$f0]                                  ; $48cd: $f0 $f0
    inc c                                         ; $48cf: $0c
    db $fc                                        ; $48d0: $fc
    ld [bc], a                                    ; $48d1: $02
    cp $01                                        ; $48d2: $fe $01
    xor a                                         ; $48d4: $af
    rst $38                                       ; $48d5: $ff
    rlca                                          ; $48d6: $07
    rst $38                                       ; $48d7: $ff
    rrca                                          ; $48d8: $0f
    cp $e0                                        ; $48d9: $fe $e0
    rra                                           ; $48db: $1f
    cp $e2                                        ; $48dc: $fe $e2
    ld c, $fb                                     ; $48de: $0e $fb
    rst $38                                       ; $48e0: $ff
    nop                                           ; $48e1: $00
    sub l                                         ; $48e2: $95
    ldh [$f7], a                                  ; $48e3: $e0 $f7
    sbc $f3                                       ; $48e5: $de $f3
    sbc $f3                                       ; $48e7: $de $f3
    rst $38                                       ; $48e9: $ff
    rst $18                                       ; $48ea: $df
    and $9f                                       ; $48eb: $e6 $9f
    nop                                           ; $48ed: $00
    rst $38                                       ; $48ee: $ff
    ld bc, $13ff                                  ; $48ef: $01 $ff $13
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    adc a                                         ; $48f4: $8f
    rst $38                                       ; $48f5: $ff
    db $fc                                        ; $48f6: $fc
    db $fc                                        ; $48f7: $fc
    ld hl, sp-$08                                 ; $48f8: $f8 $f8
    add sp, -$21                                  ; $48fa: $e8 $df
    ld hl, sp-$3c                                 ; $48fc: $f8 $c4
    db $fc                                        ; $48fe: $fc
    cp [hl]                                       ; $48ff: $be
    cp $ff                                        ; $4900: $fe $ff
    pop hl                                        ; $4902: $e1
    call nz, $f7fc                                ; $4903: $c4 $fc $f7
    ld c, $fe                                     ; $4906: $0e $fe
    ld de, $e04a                                  ; $4908: $11 $4a $e0
    ld h, b                                       ; $490b: $60
    rst $38                                       ; $490c: $ff
    rst $30                                       ; $490d: $f7
    rst $18                                       ; $490e: $df
    rst $18                                       ; $490f: $df
    ld hl, sp-$11                                 ; $4910: $f8 $ef
    or b                                          ; $4912: $b0
    rst $38                                       ; $4913: $ff
    sub b                                         ; $4914: $90
    ld h, e                                       ; $4915: $63
    ldh [$c0], a                                  ; $4916: $e0 $c0
    rst $38                                       ; $4918: $ff
    ld d, e                                       ; $4919: $53
    ld a, a                                       ; $491a: $7f
    ld a, a                                       ; $491b: $7f

jr_042_491c:
    adc [hl]                                      ; $491c: $8e
    rst $38                                       ; $491d: $ff
    db $f4                                        ; $491e: $f4
    di                                            ; $491f: $f3
    add b                                         ; $4920: $80
    rst $38                                       ; $4921: $ff
    ldh [$c0], a                                  ; $4922: $e0 $c0
    rst $38                                       ; $4924: $ff
    ldh [$fd], a                                  ; $4925: $e0 $fd
    ld b, b                                       ; $4927: $40
    cp $e2                                        ; $4928: $fe $e2
    ret nz                                        ; $492a: $c0

    ret nz                                        ; $492b: $c0

    ldh [$e0], a                                  ; $492c: $e0 $e0
    ldh [$a0], a                                  ; $492e: $e0 $a0
    rst $38                                       ; $4930: $ff
    ldh a, [$b0]                                  ; $4931: $f0 $b0
    db $fc                                        ; $4933: $fc
    call z, $82fe                                 ; $4934: $cc $fe $82
    rst $38                                       ; $4937: $ff
    adc c                                         ; $4938: $89
    rst $38                                       ; $4939: $ff
    rst $38                                       ; $493a: $ff
    ld l, l                                       ; $493b: $6d
    rst $38                                       ; $493c: $ff
    rst $08                                       ; $493d: $cf
    db $fc                                        ; $493e: $fc
    db $f4                                        ; $493f: $f4
    ld hl, sp-$38                                 ; $4940: $f8 $c8
    ei                                            ; $4942: $fb
    ld [hl], b                                    ; $4943: $70
    ld [hl], b                                    ; $4944: $70
    jp z, Jump_000_20f3                           ; $4945: $ca $f3 $20

    ldh [rNR10], a                                ; $4948: $e0 $10
    ldh a, [rNR10]                                ; $494a: $f0 $10
    ld a, a                                       ; $494c: $7f
    ldh a, [$f0]                                  ; $494d: $f0 $f0
    ldh a, [$30]                                  ; $494f: $f0 $30
    ldh a, [$e0]                                  ; $4951: $f0 $e0
    ldh [rP1], a                                  ; $4953: $e0 $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    ret                                           ; $4957: $c9


    nop                                           ; $4958: $00
    rst $38                                       ; $4959: $ff
    rst $38                                       ; $495a: $ff
    ei                                            ; $495b: $fb
    ld a, [$ff01]                                 ; $495c: $fa $01 $ff
    db $e4                                        ; $495f: $e4
    sub $e7                                       ; $4960: $d6 $e7
    ld b, $06                                     ; $4962: $06 $06
    rst $38                                       ; $4964: $ff
    add hl, bc                                    ; $4965: $09
    rrca                                          ; $4966: $0f
    ld [$120f], sp                                ; $4967: $08 $0f $12
    rra                                           ; $496a: $1f
    ld hl, $ff3f                                  ; $496b: $21 $3f $ff
    ld b, c                                       ; $496e: $41
    ld a, a                                       ; $496f: $7f
    ld b, d                                       ; $4970: $42
    ld a, a                                       ; $4971: $7f
    dec h                                         ; $4972: $25
    ccf                                           ; $4973: $3f
    dec de                                        ; $4974: $1b
    dec de                                        ; $4975: $1b
    cp $ba                                        ; $4976: $fe $ba
    db $eb                                        ; $4978: $eb
    rrca                                          ; $4979: $0f
    rrca                                          ; $497a: $0f
    db $10                                        ; $497b: $10
    rra                                           ; $497c: $1f
    jr nz, jr_042_49be                            ; $497d: $20 $3f

    jr nz, jr_042_491c                            ; $497f: $20 $9b

    ccf                                           ; $4981: $3f
    ccf                                           ; $4982: $3f
    db $fc                                        ; $4983: $fc
    ldh [$1f], a                                  ; $4984: $e0 $1f
    rra                                           ; $4986: $1f
    sbc [hl]                                      ; $4987: $9e
    rst $38                                       ; $4988: $ff
    sub [hl]                                      ; $4989: $96
    rst $20                                       ; $498a: $e7
    inc bc                                        ; $498b: $03
    rst $28                                       ; $498c: $ef
    inc bc                                        ; $498d: $03
    rrca                                          ; $498e: $0f
    rrca                                          ; $498f: $0f
    ld de, $e0c4                                  ; $4990: $11 $c4 $e0
    ld b, a                                       ; $4993: $47
    ld a, a                                       ; $4994: $7f
    ld c, a                                       ; $4995: $4f
    rst $38                                       ; $4996: $ff
    ld a, a                                       ; $4997: $7f
    sub c                                         ; $4998: $91
    rst $38                                       ; $4999: $ff
    or [hl]                                       ; $499a: $b6
    rst $38                                       ; $499b: $ff
    xor a                                         ; $499c: $af
    ld sp, hl                                     ; $499d: $f9
    rst $28                                       ; $499e: $ef
    rst $38                                       ; $499f: $ff
    ei                                            ; $49a0: $fb
    cpl                                           ; $49a1: $2f
    ei                                            ; $49a2: $fb
    ld l, a                                       ; $49a3: $6f
    ei                                            ; $49a4: $fb
    ld hl, $40ff                                  ; $49a5: $21 $ff $40
    rst $38                                       ; $49a8: $ff
    rst $38                                       ; $49a9: $ff
    ret nz                                        ; $49aa: $c0

    rst $38                                       ; $49ab: $ff
    ld b, c                                       ; $49ac: $41
    ld a, a                                       ; $49ad: $7f
    jr nz, jr_042_49ef                            ; $49ae: $20 $3f

    jr @+$01                                      ; $49b0: $18 $ff

    rra                                           ; $49b2: $1f
    ld c, $0f                                     ; $49b3: $0e $0f
    rrca                                          ; $49b5: $0f
    dec bc                                        ; $49b6: $0b
    rra                                           ; $49b7: $1f
    rla                                           ; $49b8: $17
    cp a                                          ; $49b9: $bf
    rst $18                                       ; $49ba: $df
    cp a                                          ; $49bb: $bf
    ld a, a                                       ; $49bc: $7f
    rst $38                                       ; $49bd: $ff

jr_042_49be:
    ld a, a                                       ; $49be: $7f
    rst $38                                       ; $49bf: $ff
    rst $38                                       ; $49c0: $ff
    jp hl                                         ; $49c1: $e9


    ld b, b                                       ; $49c2: $40
    ld a, a                                       ; $49c3: $7f
    rst $38                                       ; $49c4: $ff
    add e                                         ; $49c5: $83
    rst $38                                       ; $49c6: $ff
    pop af                                        ; $49c7: $f1
    rst $38                                       ; $49c8: $ff
    ld c, a                                       ; $49c9: $4f
    ld a, a                                       ; $49ca: $7f
    pop bc                                        ; $49cb: $c1
    rst $38                                       ; $49cc: $ff
    rst $38                                       ; $49cd: $ff
    cp $be                                        ; $49ce: $fe $be
    cp $82                                        ; $49d0: $fe $82
    ld a, h                                       ; $49d2: $7c
    db $fc                                        ; $49d3: $fc
    ld b, h                                       ; $49d4: $44
    db $fc                                        ; $49d5: $fc
    ccf                                           ; $49d6: $3f
    db $fc                                        ; $49d7: $fc
    db $fc                                        ; $49d8: $fc
    inc c                                         ; $49d9: $0c
    db $fc                                        ; $49da: $fc
    ld hl, sp-$08                                 ; $49db: $f8 $f8
    adc b                                         ; $49dd: $88
    rst $38                                       ; $49de: $ff
    db $e4                                        ; $49df: $e4
    db $e3                                        ; $49e0: $e3
    rst $30                                       ; $49e1: $f7
    ldh [$e0], a                                  ; $49e2: $e0 $e0
    ldh a, [rIE]                                  ; $49e4: $f0 $ff
    ldh [$f8], a                                  ; $49e6: $e0 $f8
    ld hl, sp-$1c                                 ; $49e8: $f8 $e4
    db $fc                                        ; $49ea: $fc
    rst $38                                       ; $49eb: $ff
    ld [bc], a                                    ; $49ec: $02
    cp $f1                                        ; $49ed: $fe $f1

jr_042_49ef:
    rst $38                                       ; $49ef: $ff
    ld a, c                                       ; $49f0: $79
    rst $38                                       ; $49f1: $ff
    ld b, h                                       ; $49f2: $44
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    ld b, $ff                                     ; $49f5: $06 $ff
    ld [hl-], a                                   ; $49f7: $32
    rst $38                                       ; $49f8: $ff
    ld h, e                                       ; $49f9: $63
    rst $38                                       ; $49fa: $ff
    ld [hl], d                                    ; $49fb: $72
    rst $38                                       ; $49fc: $ff
    rst $30                                       ; $49fd: $f7
    ld bc, $81ff                                  ; $49fe: $01 $ff $81
    db $fc                                        ; $4a01: $fc
    ldh [rNR42], a                                ; $4a02: $e0 $21
    rst $38                                       ; $4a04: $ff
    jp $fffe                                      ; $4a05: $c3 $fe $ff


    rlca                                          ; $4a08: $07
    db $fc                                        ; $4a09: $fc
    rrca                                          ; $4a0a: $0f
    ld hl, sp+$3f                                 ; $4a0b: $f8 $3f
    ld sp, hl                                     ; $4a0d: $f9
    rst $38                                       ; $4a0e: $ff
    ret c                                         ; $4a0f: $d8

    ld a, a                                       ; $4a10: $7f
    rst $38                                       ; $4a11: $ff
    inc a                                         ; $4a12: $3c
    rst $38                                       ; $4a13: $ff
    ld a, a                                       ; $4a14: $7f
    cp $ff                                        ; $4a15: $fe $ff
    rst $30                                       ; $4a17: $f7
    cp $e0                                        ; $4a18: $fe $e0
    rst $30                                       ; $4a1a: $f7
    ei                                            ; $4a1b: $fb
    rst $38                                       ; $4a1c: $ff
    db $fc                                        ; $4a1d: $fc
    ld a, d                                       ; $4a1e: $7a
    db $e4                                        ; $4a1f: $e4
    nop                                           ; $4a20: $00
    rst $38                                       ; $4a21: $ff
    inc bc                                        ; $4a22: $03
    rst $38                                       ; $4a23: $ff
    rst $38                                       ; $4a24: $ff
    adc h                                         ; $4a25: $8c
    rst $38                                       ; $4a26: $ff
    pop de                                        ; $4a27: $d1
    rst $38                                       ; $4a28: $ff
    daa                                           ; $4a29: $27
    ld a, $3f                                     ; $4a2a: $3e $3f
    jr c, @+$01                                   ; $4a2c: $38 $ff

    rra                                           ; $4a2e: $1f
    ld de, $1f1e                                  ; $4a2f: $11 $1e $1f
    ld [de], a                                    ; $4a32: $12
    rra                                           ; $4a33: $1f
    rra                                           ; $4a34: $1f
    rra                                           ; $4a35: $1f
    rst $08                                       ; $4a36: $cf
    db $10                                        ; $4a37: $10
    rra                                           ; $4a38: $1f
    rrca                                          ; $4a39: $0f
    rrca                                          ; $4a3a: $0f
    add [hl]                                      ; $4a3b: $86
    rst $38                                       ; $4a3c: $ff
    db $f4                                        ; $4a3d: $f4
    di                                            ; $4a3e: $f3
    or b                                          ; $4a3f: $b0
    or b                                          ; $4a40: $b0
    cp a                                          ; $4a41: $bf
    ld hl, sp-$38                                 ; $4a42: $f8 $c8
    cp $8e                                        ; $4a44: $fe $8e
    rst $38                                       ; $4a46: $ff
    adc c                                         ; $4a47: $89
    cp $e0                                        ; $4a48: $fe $e0
    ld de, $feff                                  ; $4a4a: $11 $ff $fe
    ld [de], a                                    ; $4a4d: $12
    cp $22                                        ; $4a4e: $fe $22
    db $fc                                        ; $4a50: $fc
    inc h                                         ; $4a51: $24
    db $fc                                        ; $4a52: $fc
    ld c, h                                       ; $4a53: $4c
    rst $38                                       ; $4a54: $ff
    cp $1a                                        ; $4a55: $fe $1a
    cp $32                                        ; $4a57: $fe $32
    rst $38                                       ; $4a59: $ff
    rst $20                                       ; $4a5a: $e7
    rst $38                                       ; $4a5b: $ff
    ld a, l                                       ; $4a5c: $7d
    rst $38                                       ; $4a5d: $ff
    rst $38                                       ; $4a5e: $ff
    add hl, sp                                    ; $4a5f: $39
    cp $3e                                        ; $4a60: $fe $3e
    ld hl, sp-$08                                 ; $4a62: $f8 $f8
    db $10                                        ; $4a64: $10
    ldh a, [$6d]                                  ; $4a65: $f0 $6d
    ldh [rIE], a                                  ; $4a67: $e0 $ff
    ldh [$c0], a                                  ; $4a69: $e0 $c0
    ret nz                                        ; $4a6b: $c0

    or h                                          ; $4a6c: $b4
    db $e3                                        ; $4a6d: $e3
    add b                                         ; $4a6e: $80
    add b                                         ; $4a6f: $80
    db $fc                                        ; $4a70: $fc
    pop hl                                        ; $4a71: $e1
    rst $38                                       ; $4a72: $ff
    add b                                         ; $4a73: $80
    add b                                         ; $4a74: $80
    ret nz                                        ; $4a75: $c0

    ld b, b                                       ; $4a76: $40
    ldh a, [$f0]                                  ; $4a77: $f0 $f0
    ld [$17f8], sp                                ; $4a79: $08 $f8 $17
    inc b                                         ; $4a7c: $04
    db $fc                                        ; $4a7d: $fc
    inc b                                         ; $4a7e: $04
    nop                                           ; $4a7f: $00
    ldh [rDIV], a                                 ; $4a80: $e0 $04
    nop                                           ; $4a82: $00
    ldh [rP1], a                                  ; $4a83: $e0 $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    sub l                                         ; $4a87: $95
    ld c, d                                       ; $4a88: $4a
    sub $4a                                       ; $4a89: $d6 $4a
    rla                                           ; $4a8b: $17
    ld c, e                                       ; $4a8c: $4b
    ld e, b                                       ; $4a8d: $58
    ld c, e                                       ; $4a8e: $4b
    sbc c                                         ; $4a8f: $99
    ld c, e                                       ; $4a90: $4b
    jp c, Jump_000_1b4b                           ; $4a91: $da $4b $1b

    ld c, h                                       ; $4a94: $4c
    db $10                                        ; $4a95: $10
    ld [$0000], sp                                ; $4a96: $08 $00 $00
    jr nz, @+$0a                                  ; $4a99: $20 $08

    ld [bc], a                                    ; $4a9b: $02
    nop                                           ; $4a9c: $00
    jr nc, jr_042_4aa7                            ; $4a9d: $30 $08

    inc b                                         ; $4a9f: $04
    nop                                           ; $4aa0: $00
    ld b, b                                       ; $4aa1: $40
    ld [$0006], sp                                ; $4aa2: $08 $06 $00
    db $10                                        ; $4aa5: $10
    db $10                                        ; $4aa6: $10

jr_042_4aa7:
    ld [$2000], sp                                ; $4aa7: $08 $00 $20
    db $10                                        ; $4aaa: $10
    ld a, [bc]                                    ; $4aab: $0a
    nop                                           ; $4aac: $00
    jr nc, jr_042_4abf                            ; $4aad: $30 $10

    inc c                                         ; $4aaf: $0c
    nop                                           ; $4ab0: $00
    ld b, b                                       ; $4ab1: $40
    db $10                                        ; $4ab2: $10
    ld c, $00                                     ; $4ab3: $0e $00
    db $10                                        ; $4ab5: $10
    jr jr_042_4ac8                                ; $4ab6: $18 $10

    nop                                           ; $4ab8: $00
    jr nz, @+$1a                                  ; $4ab9: $20 $18

    ld [de], a                                    ; $4abb: $12
    nop                                           ; $4abc: $00
    jr nc, jr_042_4ad7                            ; $4abd: $30 $18

jr_042_4abf:
    inc d                                         ; $4abf: $14
    nop                                           ; $4ac0: $00
    ld b, b                                       ; $4ac1: $40
    jr jr_042_4ada                                ; $4ac2: $18 $16

    nop                                           ; $4ac4: $00
    db $10                                        ; $4ac5: $10
    jr nz, jr_042_4ae0                            ; $4ac6: $20 $18

jr_042_4ac8:
    nop                                           ; $4ac8: $00
    jr nz, jr_042_4aeb                            ; $4ac9: $20 $20

    ld a, [de]                                    ; $4acb: $1a
    nop                                           ; $4acc: $00
    jr nc, @+$22                                  ; $4acd: $30 $20

    inc e                                         ; $4acf: $1c
    nop                                           ; $4ad0: $00
    ld b, b                                       ; $4ad1: $40
    jr nz, jr_042_4af2                            ; $4ad2: $20 $1e

    nop                                           ; $4ad4: $00
    add b                                         ; $4ad5: $80
    db $10                                        ; $4ad6: $10

jr_042_4ad7:
    ld [$0000], sp                                ; $4ad7: $08 $00 $00

jr_042_4ada:
    jr nz, @+$0a                                  ; $4ada: $20 $08

    ld [bc], a                                    ; $4adc: $02
    nop                                           ; $4add: $00
    jr nc, jr_042_4ae8                            ; $4ade: $30 $08

jr_042_4ae0:
    inc b                                         ; $4ae0: $04
    nop                                           ; $4ae1: $00
    ld b, b                                       ; $4ae2: $40
    ld [$0006], sp                                ; $4ae3: $08 $06 $00
    db $10                                        ; $4ae6: $10
    db $10                                        ; $4ae7: $10

jr_042_4ae8:
    ld [$2000], sp                                ; $4ae8: $08 $00 $20

jr_042_4aeb:
    db $10                                        ; $4aeb: $10
    ld a, [bc]                                    ; $4aec: $0a
    nop                                           ; $4aed: $00
    jr nc, jr_042_4b00                            ; $4aee: $30 $10

    inc c                                         ; $4af0: $0c
    nop                                           ; $4af1: $00

jr_042_4af2:
    ld b, b                                       ; $4af2: $40
    db $10                                        ; $4af3: $10
    ld c, $00                                     ; $4af4: $0e $00
    db $10                                        ; $4af6: $10
    jr jr_042_4b09                                ; $4af7: $18 $10

    nop                                           ; $4af9: $00
    jr nz, @+$1a                                  ; $4afa: $20 $18

    ld [de], a                                    ; $4afc: $12
    nop                                           ; $4afd: $00
    jr nc, jr_042_4b18                            ; $4afe: $30 $18

jr_042_4b00:
    inc d                                         ; $4b00: $14
    nop                                           ; $4b01: $00
    ld b, b                                       ; $4b02: $40
    jr jr_042_4b1b                                ; $4b03: $18 $16

    nop                                           ; $4b05: $00
    db $10                                        ; $4b06: $10
    jr nz, jr_042_4b21                            ; $4b07: $20 $18

jr_042_4b09:
    nop                                           ; $4b09: $00
    jr nz, jr_042_4b2c                            ; $4b0a: $20 $20

    ld a, [de]                                    ; $4b0c: $1a
    nop                                           ; $4b0d: $00
    jr nc, @+$22                                  ; $4b0e: $30 $20

    inc e                                         ; $4b10: $1c
    nop                                           ; $4b11: $00
    ld b, b                                       ; $4b12: $40
    jr nz, jr_042_4b33                            ; $4b13: $20 $1e

    nop                                           ; $4b15: $00
    add b                                         ; $4b16: $80
    db $10                                        ; $4b17: $10

jr_042_4b18:
    ld [$0000], sp                                ; $4b18: $08 $00 $00

jr_042_4b1b:
    jr nz, @+$0a                                  ; $4b1b: $20 $08

    ld [bc], a                                    ; $4b1d: $02
    nop                                           ; $4b1e: $00
    jr nc, jr_042_4b29                            ; $4b1f: $30 $08

jr_042_4b21:
    inc b                                         ; $4b21: $04
    nop                                           ; $4b22: $00
    ld b, b                                       ; $4b23: $40
    ld [$0006], sp                                ; $4b24: $08 $06 $00
    db $10                                        ; $4b27: $10
    db $10                                        ; $4b28: $10

jr_042_4b29:
    ld [$2000], sp                                ; $4b29: $08 $00 $20

jr_042_4b2c:
    db $10                                        ; $4b2c: $10
    ld a, [bc]                                    ; $4b2d: $0a
    nop                                           ; $4b2e: $00
    jr nc, jr_042_4b41                            ; $4b2f: $30 $10

    inc c                                         ; $4b31: $0c
    nop                                           ; $4b32: $00

jr_042_4b33:
    ld b, b                                       ; $4b33: $40
    db $10                                        ; $4b34: $10
    ld c, $00                                     ; $4b35: $0e $00
    db $10                                        ; $4b37: $10
    jr jr_042_4b4a                                ; $4b38: $18 $10

    nop                                           ; $4b3a: $00
    jr nz, @+$1a                                  ; $4b3b: $20 $18

    ld [de], a                                    ; $4b3d: $12
    nop                                           ; $4b3e: $00
    jr nc, jr_042_4b59                            ; $4b3f: $30 $18

jr_042_4b41:
    inc d                                         ; $4b41: $14
    nop                                           ; $4b42: $00
    ld b, b                                       ; $4b43: $40
    jr jr_042_4b5c                                ; $4b44: $18 $16

    nop                                           ; $4b46: $00
    db $10                                        ; $4b47: $10
    jr nz, jr_042_4b62                            ; $4b48: $20 $18

jr_042_4b4a:
    nop                                           ; $4b4a: $00
    jr nz, jr_042_4b6d                            ; $4b4b: $20 $20

    ld a, [de]                                    ; $4b4d: $1a
    nop                                           ; $4b4e: $00
    jr nc, @+$22                                  ; $4b4f: $30 $20

    inc e                                         ; $4b51: $1c
    nop                                           ; $4b52: $00
    ld b, b                                       ; $4b53: $40
    jr nz, jr_042_4b74                            ; $4b54: $20 $1e

    nop                                           ; $4b56: $00
    add b                                         ; $4b57: $80
    db $10                                        ; $4b58: $10

jr_042_4b59:
    ld [$0000], sp                                ; $4b59: $08 $00 $00

jr_042_4b5c:
    jr nz, @+$0a                                  ; $4b5c: $20 $08

    ld [bc], a                                    ; $4b5e: $02
    nop                                           ; $4b5f: $00
    jr nc, jr_042_4b6a                            ; $4b60: $30 $08

jr_042_4b62:
    inc b                                         ; $4b62: $04
    nop                                           ; $4b63: $00
    ld b, b                                       ; $4b64: $40
    ld [$0006], sp                                ; $4b65: $08 $06 $00
    db $10                                        ; $4b68: $10
    db $10                                        ; $4b69: $10

jr_042_4b6a:
    ld [$2000], sp                                ; $4b6a: $08 $00 $20

jr_042_4b6d:
    db $10                                        ; $4b6d: $10
    ld a, [bc]                                    ; $4b6e: $0a
    nop                                           ; $4b6f: $00
    jr nc, jr_042_4b82                            ; $4b70: $30 $10

    inc c                                         ; $4b72: $0c
    nop                                           ; $4b73: $00

jr_042_4b74:
    ld b, b                                       ; $4b74: $40
    db $10                                        ; $4b75: $10
    ld c, $00                                     ; $4b76: $0e $00
    db $10                                        ; $4b78: $10
    jr jr_042_4b8b                                ; $4b79: $18 $10

    nop                                           ; $4b7b: $00
    jr nz, @+$1a                                  ; $4b7c: $20 $18

    ld [de], a                                    ; $4b7e: $12
    nop                                           ; $4b7f: $00
    jr nc, jr_042_4b9a                            ; $4b80: $30 $18

jr_042_4b82:
    inc d                                         ; $4b82: $14
    nop                                           ; $4b83: $00
    ld b, b                                       ; $4b84: $40
    jr jr_042_4b9d                                ; $4b85: $18 $16

    nop                                           ; $4b87: $00
    db $10                                        ; $4b88: $10
    jr nz, jr_042_4ba3                            ; $4b89: $20 $18

jr_042_4b8b:
    nop                                           ; $4b8b: $00
    jr nz, jr_042_4bae                            ; $4b8c: $20 $20

    ld a, [de]                                    ; $4b8e: $1a
    nop                                           ; $4b8f: $00
    jr nc, @+$22                                  ; $4b90: $30 $20

    inc e                                         ; $4b92: $1c
    nop                                           ; $4b93: $00
    ld b, b                                       ; $4b94: $40
    jr nz, jr_042_4bb5                            ; $4b95: $20 $1e

    nop                                           ; $4b97: $00
    add b                                         ; $4b98: $80
    db $10                                        ; $4b99: $10

jr_042_4b9a:
    ld [$0000], sp                                ; $4b9a: $08 $00 $00

jr_042_4b9d:
    jr nz, @+$0a                                  ; $4b9d: $20 $08

    ld [bc], a                                    ; $4b9f: $02
    nop                                           ; $4ba0: $00
    jr nc, jr_042_4bab                            ; $4ba1: $30 $08

jr_042_4ba3:
    inc b                                         ; $4ba3: $04
    nop                                           ; $4ba4: $00
    ld b, b                                       ; $4ba5: $40
    ld [$0006], sp                                ; $4ba6: $08 $06 $00
    db $10                                        ; $4ba9: $10
    db $10                                        ; $4baa: $10

jr_042_4bab:
    ld [$2000], sp                                ; $4bab: $08 $00 $20

jr_042_4bae:
    db $10                                        ; $4bae: $10
    ld a, [bc]                                    ; $4baf: $0a
    nop                                           ; $4bb0: $00
    jr nc, jr_042_4bc3                            ; $4bb1: $30 $10

    inc c                                         ; $4bb3: $0c
    nop                                           ; $4bb4: $00

jr_042_4bb5:
    ld b, b                                       ; $4bb5: $40
    db $10                                        ; $4bb6: $10
    ld c, $00                                     ; $4bb7: $0e $00
    db $10                                        ; $4bb9: $10
    jr jr_042_4bcc                                ; $4bba: $18 $10

    nop                                           ; $4bbc: $00
    jr nz, @+$1a                                  ; $4bbd: $20 $18

    ld [de], a                                    ; $4bbf: $12
    nop                                           ; $4bc0: $00
    jr nc, jr_042_4bdb                            ; $4bc1: $30 $18

jr_042_4bc3:
    inc d                                         ; $4bc3: $14
    nop                                           ; $4bc4: $00
    ld b, b                                       ; $4bc5: $40
    jr jr_042_4bde                                ; $4bc6: $18 $16

    nop                                           ; $4bc8: $00
    db $10                                        ; $4bc9: $10
    jr nz, jr_042_4be4                            ; $4bca: $20 $18

jr_042_4bcc:
    nop                                           ; $4bcc: $00
    jr nz, jr_042_4bef                            ; $4bcd: $20 $20

    ld a, [de]                                    ; $4bcf: $1a
    nop                                           ; $4bd0: $00
    jr nc, @+$22                                  ; $4bd1: $30 $20

    inc e                                         ; $4bd3: $1c
    nop                                           ; $4bd4: $00
    ld b, b                                       ; $4bd5: $40
    jr nz, jr_042_4bf6                            ; $4bd6: $20 $1e

    nop                                           ; $4bd8: $00
    add b                                         ; $4bd9: $80
    db $10                                        ; $4bda: $10

jr_042_4bdb:
    ld [$0000], sp                                ; $4bdb: $08 $00 $00

jr_042_4bde:
    jr nz, @+$0a                                  ; $4bde: $20 $08

    ld [bc], a                                    ; $4be0: $02
    nop                                           ; $4be1: $00
    jr nc, jr_042_4bec                            ; $4be2: $30 $08

jr_042_4be4:
    inc b                                         ; $4be4: $04
    nop                                           ; $4be5: $00
    ld b, b                                       ; $4be6: $40
    ld [$0006], sp                                ; $4be7: $08 $06 $00
    db $10                                        ; $4bea: $10
    db $10                                        ; $4beb: $10

jr_042_4bec:
    ld [$2000], sp                                ; $4bec: $08 $00 $20

jr_042_4bef:
    db $10                                        ; $4bef: $10
    ld a, [bc]                                    ; $4bf0: $0a
    nop                                           ; $4bf1: $00
    jr nc, jr_042_4c04                            ; $4bf2: $30 $10

    inc c                                         ; $4bf4: $0c
    nop                                           ; $4bf5: $00

jr_042_4bf6:
    ld b, b                                       ; $4bf6: $40
    db $10                                        ; $4bf7: $10
    ld c, $00                                     ; $4bf8: $0e $00
    db $10                                        ; $4bfa: $10
    jr jr_042_4c0d                                ; $4bfb: $18 $10

    nop                                           ; $4bfd: $00
    jr nz, @+$1a                                  ; $4bfe: $20 $18

    ld [de], a                                    ; $4c00: $12
    nop                                           ; $4c01: $00
    jr nc, jr_042_4c1c                            ; $4c02: $30 $18

jr_042_4c04:
    inc d                                         ; $4c04: $14
    nop                                           ; $4c05: $00
    ld b, b                                       ; $4c06: $40
    jr jr_042_4c1f                                ; $4c07: $18 $16

    nop                                           ; $4c09: $00
    db $10                                        ; $4c0a: $10
    jr nz, jr_042_4c25                            ; $4c0b: $20 $18

jr_042_4c0d:
    nop                                           ; $4c0d: $00
    jr nz, jr_042_4c30                            ; $4c0e: $20 $20

    ld a, [de]                                    ; $4c10: $1a
    nop                                           ; $4c11: $00
    jr nc, @+$22                                  ; $4c12: $30 $20

    inc e                                         ; $4c14: $1c
    nop                                           ; $4c15: $00
    ld b, b                                       ; $4c16: $40
    jr nz, jr_042_4c37                            ; $4c17: $20 $1e

    nop                                           ; $4c19: $00
    add b                                         ; $4c1a: $80
    db $10                                        ; $4c1b: $10

jr_042_4c1c:
    ld [$0000], sp                                ; $4c1c: $08 $00 $00

jr_042_4c1f:
    jr nz, @+$0a                                  ; $4c1f: $20 $08

    ld [bc], a                                    ; $4c21: $02
    nop                                           ; $4c22: $00
    jr nc, jr_042_4c2d                            ; $4c23: $30 $08

jr_042_4c25:
    inc b                                         ; $4c25: $04
    nop                                           ; $4c26: $00
    ld b, b                                       ; $4c27: $40
    ld [$0006], sp                                ; $4c28: $08 $06 $00
    db $10                                        ; $4c2b: $10
    db $10                                        ; $4c2c: $10

jr_042_4c2d:
    ld [$2000], sp                                ; $4c2d: $08 $00 $20

jr_042_4c30:
    db $10                                        ; $4c30: $10
    ld a, [bc]                                    ; $4c31: $0a
    nop                                           ; $4c32: $00
    jr nc, jr_042_4c45                            ; $4c33: $30 $10

    inc c                                         ; $4c35: $0c
    nop                                           ; $4c36: $00

jr_042_4c37:
    ld b, b                                       ; $4c37: $40
    db $10                                        ; $4c38: $10
    ld c, $00                                     ; $4c39: $0e $00
    db $10                                        ; $4c3b: $10
    jr jr_042_4c4e                                ; $4c3c: $18 $10

    nop                                           ; $4c3e: $00
    jr nz, @+$1a                                  ; $4c3f: $20 $18

    ld [de], a                                    ; $4c41: $12
    nop                                           ; $4c42: $00
    jr nc, jr_042_4c5d                            ; $4c43: $30 $18

jr_042_4c45:
    inc d                                         ; $4c45: $14
    nop                                           ; $4c46: $00
    ld b, b                                       ; $4c47: $40
    jr jr_042_4c60                                ; $4c48: $18 $16

    nop                                           ; $4c4a: $00
    db $10                                        ; $4c4b: $10
    jr nz, jr_042_4c66                            ; $4c4c: $20 $18

jr_042_4c4e:
    nop                                           ; $4c4e: $00
    jr nz, jr_042_4c71                            ; $4c4f: $20 $20

    ld a, [de]                                    ; $4c51: $1a
    nop                                           ; $4c52: $00
    jr nc, jr_042_4c75                            ; $4c53: $30 $20

    inc e                                         ; $4c55: $1c
    nop                                           ; $4c56: $00
    ld b, b                                       ; $4c57: $40
    jr nz, @+$20                                  ; $4c58: $20 $1e

    nop                                           ; $4c5a: $00
    add b                                         ; $4c5b: $80
    nop                                           ; $4c5c: $00

jr_042_4c5d:
    inc d                                         ; $4c5d: $14
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00

jr_042_4c60:
    ld bc, $0014                                  ; $4c60: $01 $14 $00
    nop                                           ; $4c63: $00
    rst $38                                       ; $4c64: $ff
    nop                                           ; $4c65: $00

jr_042_4c66:
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    ld [bc], a                                    ; $4c68: $02
    ld [$0000], sp                                ; $4c69: $08 $00 $00
    inc bc                                        ; $4c6c: $03
    ld [$fe00], sp                                ; $4c6d: $08 $00 $fe
    inc bc                                        ; $4c70: $03

jr_042_4c71:
    ld b, $00                                     ; $4c71: $06 $00
    nop                                           ; $4c73: $00
    inc bc                                        ; $4c74: $03

jr_042_4c75:
    ld [bc], a                                    ; $4c75: $02
    nop                                           ; $4c76: $00
    ld bc, $0604                                  ; $4c77: $01 $04 $06
    nop                                           ; $4c7a: $00
    ld [bc], a                                    ; $4c7b: $02
    inc b                                         ; $4c7c: $04
    ld [bc], a                                    ; $4c7d: $02
    nop                                           ; $4c7e: $00
    ld bc, $1005                                  ; $4c7f: $01 $05 $10
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    ld b, $20                                     ; $4c84: $06 $20
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    rst $38                                       ; $4c88: $ff
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00

    db $96, $4c, $9e, $4c, $f8, $55, $10, $58

    inc e                                         ; $4c94: $1c
    ld e, b                                       ; $4c95: $58

    db $82, $55, $ff, $6b, $ff, $20, $00, $00, $b0, $4c, $fb, $4d

    ld b, h                                       ; $4ca2: $44
    ld c, a                                       ; $4ca3: $4f
    adc a                                         ; $4ca4: $8f
    ld d, b                                       ; $4ca5: $50
    bit 2, c                                      ; $4ca6: $cb $51
    or l                                          ; $4ca8: $b5
    ld d, d                                       ; $4ca9: $52
    call nc, $c253                                ; $4caa: $d4 $53 $c2
    ld d, h                                       ; $4cad: $54
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00

    db $f9, $00, $ff, $ff, $e7, $e6, $1c, $1c, $13, $1f, $18, $ef, $1f, $20, $3f, $10
    db $fa, $e0, $21, $3f, $3f, $ff, $3f, $01, $01, $03, $03, $07, $04, $07, $7f, $05
    db $07, $04, $03, $02, $01, $01, $c0, $e5, $cd, $01, $ff, $e0, $03, $02, $fe, $e0
    db $e4, $e1, $04, $0f, $ff, $08, $1f, $10, $7f, $61, $ff, $81, $7e, $df, $7a, $0f
    db $0b, $05, $05, $9c, $e1, $03, $03, $7f, $04, $07, $08, $0f, $08, $0f, $0f, $fc
    db $e0, $f3, $07, $07, $8a, $ff, $e8, $e7, $0e, $0e, $31, $3f, $ff, $c0, $ff, $9e
    db $ff, $bf, $e1, $bf, $e0, $ef, $3f, $ec, $7f, $c0, $fe, $e0, $d8, $ff, $b4, $ff
    db $ff, $2c, $ff, $8c, $cf, $b1, $ff, $80, $ff, $7f, $47, $3e, $23, $7f, $59, $ff
    db $d4, $ff, $ff, $53, $ff, $4a, $ff, $44, $ff, $43, $f3, $ff, $80, $fe, $e4, $f7
    db $e2, $84, $ff, $02, $ff, $ff, $ff, $ff, $7e, $42, $7e, $7e, $fe, $c2, $ff, $3e
    db $e2, $1e, $fe, $12, $fe, $fe, $fe, $cf, $02, $fe, $fc, $fc, $8a, $ff, $e8, $e7
    db $e0, $e0, $ff, $19, $f9, $06, $ff, $f2, $ff, $fa, $0f, $bf, $fa, $0f, $f9, $6f
    db $fd, $07, $fe, $e0, $37, $ff, $ff, $5a, $ff, $69, $ff, $62, $e7, $1a, $ff, $ff
    db $03, $fc, $c4, $f8, $88, $fc, $34, $bf, $fe, $56, $ff, $95, $ff, $a5, $80, $e0
    db $84, $b3, $ff, $03, $8d, $e0, $fe, $e1, $fe, $03, $f5, $e0, $42, $fb, $fe, $81
    db $80, $e0, $fc, $84, $fc, $fc, $ff, $bf, $87, $f8, $8f, $f0, $ff, $90, $72, $e0
    db $80, $e7, $ff, $7f, $7f, $8a, $ff, $e8, $e7, $70, $70, $90, $bf, $f0, $30, $f0
    db $08, $f8, $10, $fa, $e2, $f8, $7f, $f8, $00, $00, $80, $80, $c0, $40, $fe, $e1
    db $cb, $80, $80, $c2, $eb, $80, $ff, $e2, $e4, $e1, $e0, $20, $ff, $f0, $d0, $fc
    db $0c, $fe, $02, $fc, $bc, $ef, $e0, $a0, $40, $40, $e4, $e3, $40, $c0, $20, $6f
    db $e0, $20, $e0, $e0, $fc, $e0, $c0, $c0, $00, $00

    nop                                           ; $4dfa: $00

    db $f9, $00, $ff, $ff, $e5, $e4, $1c, $1c, $13, $1f, $18, $ef, $1f, $20, $3f, $10
    db $fa, $e0, $29, $3f, $7f, $ff, $57, $7f, $45, $ff, $97, $ff, $bd, $ff, $ff, $c9
    db $ff, $92, $ff, $82, $7f, $47, $3f, $ff, $31, $1f, $10, $0f, $09, $07, $06, $07
    db $5f, $04, $03, $02, $01, $01, $b2, $ef, $01, $ff, $e0, $fe, $9c, $e3, $03, $03
    db $04, $07, $08, $0f, $08, $9b, $0f, $0f, $fc, $e0, $07, $07, $88, $ff, $e6, $e5
    db $0e, $ff, $0e, $31, $3f, $c0, $ff, $9e, $ff, $bf, $7f, $e1, $bf, $e0, $3f, $ec
    db $7f, $c0, $fe, $e0, $ff, $d8, $ff, $b4, $ff, $2c, $ff, $8c, $cf, $ff, $b1, $ff
    db $84, $7f, $47, $fe, $e3, $ff, $ff, $39, $ff, $34, $ff, $33, $ff, $4a, $ff, $9f
    db $44, $ff, $c3, $ff, $80, $fe, $e4, $f7, $e2, $84, $ff, $ff, $02, $ff, $ff, $ff
    db $7e, $42, $7e, $ff, $7e, $fe, $c2, $3e, $e2, $1e, $fe, $12, $ff, $fe, $1e, $fe
    db $e2, $fe, $0e, $fe, $f0, $f9, $f0, $88, $ff, $e6, $e5, $e0, $e0, $19, $f9, $06
    db $ff, $ff, $f2, $ff, $fa, $0f, $fa, $0f, $f9, $f7, $6f, $fd, $07, $fe, $e0, $37
    db $ff, $5a, $ff, $ff, $69, $ff, $62, $e7, $1a, $ff, $43, $fc, $ff, $c4, $f8, $88
    db $fc, $34, $fe, $56, $ff, $77, $95, $ff, $a5, $80, $e0, $84, $ff, $03, $8d, $e0
    db $76, $fe, $e1, $fe, $03, $f5, $e0, $42, $fe, $81, $80, $e0, $ff, $fc, $84, $fc
    db $fc, $fe, $86, $f9, $8f, $ff, $f0, $ff, $90, $ff, $f0, $ff, $8f, $ff, $cf, $e0
    db $ff, $1f, $1f, $88, $ff, $e6, $e5, $70, $70, $7f, $90, $f0, $30, $f0, $08, $f8
    db $10, $fa, $e2, $ff, $f8, $f8, $00, $00, $80, $80, $c0, $40, $96, $fe, $e1, $80
    db $80, $c2, $eb, $80, $ff, $e2, $e4, $e1, $e0, $ff, $20, $f0, $d0, $fc, $0c, $fe
    db $02, $fc, $df, $bc, $e0, $a0, $40, $40, $e2, $e5, $40, $c0, $df, $20, $e0, $20
    db $e0, $e0, $fc, $e0, $c0, $c0, $00, $00, $00

    ld sp, hl                                     ; $4f44: $f9
    nop                                           ; $4f45: $00
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $20                                       ; $4f48: $e7
    and $1c                                       ; $4f49: $e6 $1c
    inc e                                         ; $4f4b: $1c
    inc de                                        ; $4f4c: $13
    rra                                           ; $4f4d: $1f
    jr @-$0f                                      ; $4f4e: $18 $ef

    rra                                           ; $4f50: $1f
    jr nz, jr_042_4f92                            ; $4f51: $20 $3f

    db $10                                        ; $4f53: $10
    ld a, [$21e0]                                 ; $4f54: $fa $e0 $21
    ccf                                           ; $4f57: $3f
    ccf                                           ; $4f58: $3f
    rst $38                                       ; $4f59: $ff
    ccf                                           ; $4f5a: $3f
    ld bc, $0301                                  ; $4f5b: $01 $01 $03
    inc bc                                        ; $4f5e: $03
    rlca                                          ; $4f5f: $07
    inc b                                         ; $4f60: $04
    rlca                                          ; $4f61: $07
    ld a, a                                       ; $4f62: $7f
    dec b                                         ; $4f63: $05
    rlca                                          ; $4f64: $07
    inc b                                         ; $4f65: $04
    inc bc                                        ; $4f66: $03
    ld [bc], a                                    ; $4f67: $02
    ld bc, $c001                                  ; $4f68: $01 $01 $c0
    push hl                                       ; $4f6b: $e5
    call $ff01                                    ; $4f6c: $cd $01 $ff
    ldh [$03], a                                  ; $4f6f: $e0 $03
    ld [bc], a                                    ; $4f71: $02
    cp $e0                                        ; $4f72: $fe $e0
    db $e4                                        ; $4f74: $e4
    pop hl                                        ; $4f75: $e1
    inc b                                         ; $4f76: $04
    rrca                                          ; $4f77: $0f
    rst $38                                       ; $4f78: $ff
    ld [$101f], sp                                ; $4f79: $08 $1f $10
    ld a, a                                       ; $4f7c: $7f
    ld h, c                                       ; $4f7d: $61
    rst $38                                       ; $4f7e: $ff
    add c                                         ; $4f7f: $81
    ld a, [hl]                                    ; $4f80: $7e
    rst $18                                       ; $4f81: $df
    ld a, d                                       ; $4f82: $7a
    rrca                                          ; $4f83: $0f
    dec bc                                        ; $4f84: $0b
    dec b                                         ; $4f85: $05
    dec b                                         ; $4f86: $05
    sbc h                                         ; $4f87: $9c
    pop hl                                        ; $4f88: $e1
    inc bc                                        ; $4f89: $03
    inc bc                                        ; $4f8a: $03
    ld a, a                                       ; $4f8b: $7f
    inc b                                         ; $4f8c: $04
    rlca                                          ; $4f8d: $07
    ld [$080f], sp                                ; $4f8e: $08 $0f $08
    rrca                                          ; $4f91: $0f

jr_042_4f92:
    rrca                                          ; $4f92: $0f
    db $fc                                        ; $4f93: $fc
    ldh [$f3], a                                  ; $4f94: $e0 $f3
    rlca                                          ; $4f96: $07
    rlca                                          ; $4f97: $07
    adc d                                         ; $4f98: $8a
    rst $38                                       ; $4f99: $ff
    add sp, -$19                                  ; $4f9a: $e8 $e7
    ld c, $0e                                     ; $4f9c: $0e $0e
    ld sp, $ff3f                                  ; $4f9e: $31 $3f $ff
    ret nz                                        ; $4fa1: $c0

    rst $38                                       ; $4fa2: $ff
    sbc [hl]                                      ; $4fa3: $9e
    rst $38                                       ; $4fa4: $ff
    cp a                                          ; $4fa5: $bf
    pop hl                                        ; $4fa6: $e1
    cp a                                          ; $4fa7: $bf
    ldh [$ef], a                                  ; $4fa8: $e0 $ef
    ccf                                           ; $4faa: $3f
    db $ec                                        ; $4fab: $ec
    ld a, a                                       ; $4fac: $7f
    ret nz                                        ; $4fad: $c0

    cp $e0                                        ; $4fae: $fe $e0
    ret c                                         ; $4fb0: $d8

    rst $38                                       ; $4fb1: $ff
    or h                                          ; $4fb2: $b4
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    inc l                                         ; $4fb5: $2c
    rst $38                                       ; $4fb6: $ff
    adc h                                         ; $4fb7: $8c
    rst $08                                       ; $4fb8: $cf
    or c                                          ; $4fb9: $b1
    rst $38                                       ; $4fba: $ff
    add b                                         ; $4fbb: $80
    rst $38                                       ; $4fbc: $ff
    ld a, a                                       ; $4fbd: $7f
    ld b, a                                       ; $4fbe: $47
    ld a, $23                                     ; $4fbf: $3e $23
    ld a, a                                       ; $4fc1: $7f
    ld e, c                                       ; $4fc2: $59
    rst $38                                       ; $4fc3: $ff
    call nc, $ffff                                ; $4fc4: $d4 $ff $ff
    ld d, e                                       ; $4fc7: $53
    rst $38                                       ; $4fc8: $ff
    ld c, d                                       ; $4fc9: $4a
    rst $38                                       ; $4fca: $ff
    ld b, h                                       ; $4fcb: $44
    rst $38                                       ; $4fcc: $ff
    ld b, e                                       ; $4fcd: $43
    di                                            ; $4fce: $f3
    rst $38                                       ; $4fcf: $ff
    add b                                         ; $4fd0: $80
    cp $e4                                        ; $4fd1: $fe $e4
    rst $30                                       ; $4fd3: $f7
    ld [c], a                                     ; $4fd4: $e2
    add h                                         ; $4fd5: $84
    rst $38                                       ; $4fd6: $ff
    ld [bc], a                                    ; $4fd7: $02
    rst $38                                       ; $4fd8: $ff
    rst $38                                       ; $4fd9: $ff
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    ld a, [hl]                                    ; $4fdc: $7e
    ld b, d                                       ; $4fdd: $42
    ld a, [hl]                                    ; $4fde: $7e
    ld a, [hl]                                    ; $4fdf: $7e
    cp $c2                                        ; $4fe0: $fe $c2
    rst $38                                       ; $4fe2: $ff
    ld a, $e2                                     ; $4fe3: $3e $e2
    ld e, $fe                                     ; $4fe5: $1e $fe
    ld [de], a                                    ; $4fe7: $12
    cp $fe                                        ; $4fe8: $fe $fe
    cp $cf                                        ; $4fea: $fe $cf
    ld [bc], a                                    ; $4fec: $02
    cp $fc                                        ; $4fed: $fe $fc
    db $fc                                        ; $4fef: $fc
    adc d                                         ; $4ff0: $8a
    rst $38                                       ; $4ff1: $ff
    add sp, -$19                                  ; $4ff2: $e8 $e7
    ldh [$e0], a                                  ; $4ff4: $e0 $e0
    rst $38                                       ; $4ff6: $ff
    add hl, de                                    ; $4ff7: $19
    ld sp, hl                                     ; $4ff8: $f9
    ld b, $ff                                     ; $4ff9: $06 $ff
    ld a, [c]                                     ; $4ffb: $f2
    rst $38                                       ; $4ffc: $ff
    ld a, [$bf0f]                                 ; $4ffd: $fa $0f $bf
    ld a, [$f90f]                                 ; $5000: $fa $0f $f9
    ld l, a                                       ; $5003: $6f
    db $fd                                        ; $5004: $fd
    rlca                                          ; $5005: $07
    cp $e0                                        ; $5006: $fe $e0
    scf                                           ; $5008: $37
    rst $38                                       ; $5009: $ff
    rst $38                                       ; $500a: $ff
    ld e, d                                       ; $500b: $5a
    rst $38                                       ; $500c: $ff
    ld l, c                                       ; $500d: $69
    rst $38                                       ; $500e: $ff
    ld h, d                                       ; $500f: $62
    rst $20                                       ; $5010: $e7
    ld a, [de]                                    ; $5011: $1a
    rst $38                                       ; $5012: $ff
    rst $38                                       ; $5013: $ff
    inc bc                                        ; $5014: $03
    db $fc                                        ; $5015: $fc
    call nz, $88f8                                ; $5016: $c4 $f8 $88
    db $fc                                        ; $5019: $fc
    inc [hl]                                      ; $501a: $34
    cp a                                          ; $501b: $bf
    cp $56                                        ; $501c: $fe $56
    rst $38                                       ; $501e: $ff
    sub l                                         ; $501f: $95
    rst $38                                       ; $5020: $ff
    and l                                         ; $5021: $a5
    add b                                         ; $5022: $80
    ldh [$84], a                                  ; $5023: $e0 $84
    or e                                          ; $5025: $b3
    rst $38                                       ; $5026: $ff
    inc bc                                        ; $5027: $03
    adc l                                         ; $5028: $8d
    ldh [$fe], a                                  ; $5029: $e0 $fe
    pop hl                                        ; $502b: $e1
    cp $03                                        ; $502c: $fe $03
    push af                                       ; $502e: $f5
    ldh [rSCY], a                                 ; $502f: $e0 $42
    ei                                            ; $5031: $fb
    cp $81                                        ; $5032: $fe $81
    add b                                         ; $5034: $80
    ldh [$fc], a                                  ; $5035: $e0 $fc
    add h                                         ; $5037: $84
    db $fc                                        ; $5038: $fc
    db $fc                                        ; $5039: $fc
    rst $38                                       ; $503a: $ff
    cp a                                          ; $503b: $bf
    add a                                         ; $503c: $87
    ld hl, sp-$71                                 ; $503d: $f8 $8f
    ldh a, [rIE]                                  ; $503f: $f0 $ff
    sub b                                         ; $5041: $90
    ld [hl], d                                    ; $5042: $72
    ldh [$80], a                                  ; $5043: $e0 $80
    rst $20                                       ; $5045: $e7
    rst $38                                       ; $5046: $ff
    ld a, a                                       ; $5047: $7f
    ld a, a                                       ; $5048: $7f
    adc d                                         ; $5049: $8a
    rst $38                                       ; $504a: $ff
    add sp, -$19                                  ; $504b: $e8 $e7
    ld [hl], b                                    ; $504d: $70
    ld [hl], b                                    ; $504e: $70
    sub b                                         ; $504f: $90
    cp a                                          ; $5050: $bf
    ldh a, [$30]                                  ; $5051: $f0 $30
    ldh a, [$08]                                  ; $5053: $f0 $08
    ld hl, sp+$10                                 ; $5055: $f8 $10
    ld a, [$f8e2]                                 ; $5057: $fa $e2 $f8
    ld a, a                                       ; $505a: $7f
    ld hl, sp+$00                                 ; $505b: $f8 $00
    nop                                           ; $505d: $00
    add b                                         ; $505e: $80
    add b                                         ; $505f: $80
    ret nz                                        ; $5060: $c0

    ld b, b                                       ; $5061: $40
    cp $e1                                        ; $5062: $fe $e1
    res 0, b                                      ; $5064: $cb $80
    add b                                         ; $5066: $80
    jp nz, $80eb                                  ; $5067: $c2 $eb $80

    rst $38                                       ; $506a: $ff
    ld [c], a                                     ; $506b: $e2
    db $e4                                        ; $506c: $e4
    pop hl                                        ; $506d: $e1
    ldh [rNR41], a                                ; $506e: $e0 $20
    rst $38                                       ; $5070: $ff
    ldh a, [$d0]                                  ; $5071: $f0 $d0
    db $fc                                        ; $5073: $fc
    inc c                                         ; $5074: $0c
    cp $02                                        ; $5075: $fe $02
    db $fc                                        ; $5077: $fc
    cp h                                          ; $5078: $bc
    rst $28                                       ; $5079: $ef
    ldh [$a0], a                                  ; $507a: $e0 $a0
    ld b, b                                       ; $507c: $40
    ld b, b                                       ; $507d: $40
    db $e4                                        ; $507e: $e4
    db $e3                                        ; $507f: $e3
    ld b, b                                       ; $5080: $40
    ret nz                                        ; $5081: $c0

    jr nz, jr_042_50f3                            ; $5082: $20 $6f

    ldh [rNR41], a                                ; $5084: $e0 $20
    ldh [$e0], a                                  ; $5086: $e0 $e0
    db $fc                                        ; $5088: $fc
    ldh [$c0], a                                  ; $5089: $e0 $c0
    ret nz                                        ; $508b: $c0

    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    ld sp, hl                                     ; $508f: $f9
    nop                                           ; $5090: $00
    rst $38                                       ; $5091: $ff
    rst $38                                       ; $5092: $ff
    db $e3                                        ; $5093: $e3
    ld [c], a                                     ; $5094: $e2
    inc bc                                        ; $5095: $03
    inc bc                                        ; $5096: $03
    inc b                                         ; $5097: $04
    rlca                                          ; $5098: $07
    rlca                                          ; $5099: $07
    rst $18                                       ; $509a: $df
    rlca                                          ; $509b: $07
    ld [$0c0f], sp                                ; $509c: $08 $0f $0c
    rrca                                          ; $509f: $0f
    ld a, [$07e1]                                 ; $50a0: $fa $e1 $07
    rlca                                          ; $50a3: $07
    rst $30                                       ; $50a4: $f7
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    ld bc, $e4ff                                  ; $50a7: $01 $ff $e4
    nop                                           ; $50aa: $00
    nop                                           ; $50ab: $00
    db $10                                        ; $50ac: $10
    db $10                                        ; $50ad: $10
    rst $38                                       ; $50ae: $ff
    inc a                                         ; $50af: $3c
    inc l                                         ; $50b0: $2c
    ld a, h                                       ; $50b1: $7c
    ld d, h                                       ; $50b2: $54
    db $fc                                        ; $50b3: $fc
    sbc h                                         ; $50b4: $9c
    cp $b2                                        ; $50b5: $fe $b2
    rst $38                                       ; $50b7: $ff
    ld a, a                                       ; $50b8: $7f
    ld e, a                                       ; $50b9: $5f
    ccf                                           ; $50ba: $3f
    inc sp                                        ; $50bb: $33
    ccf                                           ; $50bc: $3f
    jr nz, jr_042_50de                            ; $50bd: $20 $1f

    db $10                                        ; $50bf: $10
    ccf                                           ; $50c0: $3f
    rrca                                          ; $50c1: $0f
    ld [$0407], sp                                ; $50c2: $08 $07 $04
    inc bc                                        ; $50c5: $03
    inc bc                                        ; $50c6: $03
    xor d                                         ; $50c7: $aa
    push af                                       ; $50c8: $f5
    add $e7                                       ; $50c9: $c6 $e7
    db $fc                                        ; $50cb: $fc
    rst $38                                       ; $50cc: $ff
    rst $38                                       ; $50cd: $ff
    and $e5                                       ; $50ce: $e6 $e5
    rrca                                          ; $50d0: $0f
    rrca                                          ; $50d1: $0f
    ld a, [c]                                     ; $50d2: $f2
    rst $38                                       ; $50d3: $ff
    ld b, b                                       ; $50d4: $40
    rst $38                                       ; $50d5: $ff
    rst $38                                       ; $50d6: $ff
    sbc e                                         ; $50d7: $9b
    rst $38                                       ; $50d8: $ff
    cp a                                          ; $50d9: $bf
    db $e4                                        ; $50da: $e4
    ld a, a                                       ; $50db: $7f
    ret nz                                        ; $50dc: $c0

    ld a, a                                       ; $50dd: $7f

jr_042_50de:
    pop af                                        ; $50de: $f1
    rst $38                                       ; $50df: $ff
    ld a, a                                       ; $50e0: $7f
    ret nz                                        ; $50e1: $c0

    rst $38                                       ; $50e2: $ff
    add b                                         ; $50e3: $80
    rst $38                                       ; $50e4: $ff
    and b                                         ; $50e5: $a0
    rst $38                                       ; $50e6: $ff
    pop de                                        ; $50e7: $d1
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    ld [hl], b                                    ; $50ea: $70
    rst $38                                       ; $50eb: $ff
    or b                                          ; $50ec: $b0
    cp a                                          ; $50ed: $bf
    ret z                                         ; $50ee: $c8

    rst $38                                       ; $50ef: $ff
    add c                                         ; $50f0: $81
    rst $38                                       ; $50f1: $ff
    ld a, a                                       ; $50f2: $7f

jr_042_50f3:
    ld c, [hl]                                    ; $50f3: $4e
    ccf                                           ; $50f4: $3f
    jr nz, jr_042_5176                            ; $50f5: $20 $7f

    ld a, b                                       ; $50f7: $78
    rst $38                                       ; $50f8: $ff
    sbc a                                         ; $50f9: $9f
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    ld d, $ff                                     ; $50fc: $16 $ff
    add hl, hl                                    ; $50fe: $29
    rst $38                                       ; $50ff: $ff
    xor b                                         ; $5100: $a8
    rst $38                                       ; $5101: $ff
    ld h, a                                       ; $5102: $67
    cp $d5                                        ; $5103: $fe $d5
    ldh [$c0], a                                  ; $5105: $e0 $c0
    ld a, a                                       ; $5107: $7f
    ld b, b                                       ; $5108: $40
    ld a, a                                       ; $5109: $7f
    ld b, b                                       ; $510a: $40
    ccf                                           ; $510b: $3f
    ccf                                           ; $510c: $3f
    rst $38                                       ; $510d: $ff
    jr nz, @+$41                                  ; $510e: $20 $3f

    ld hl, $223f                                  ; $5110: $21 $3f $22
    ccf                                           ; $5113: $3f
    ld b, e                                       ; $5114: $43
    ld a, a                                       ; $5115: $7f
    rst $38                                       ; $5116: $ff
    ld a, a                                       ; $5117: $7f
    ld a, a                                       ; $5118: $7f
    rra                                           ; $5119: $1f
    inc de                                        ; $511a: $13
    rra                                           ; $511b: $1f
    rra                                           ; $511c: $1f
    rra                                           ; $511d: $1f
    ld de, $7fff                                  ; $511e: $11 $ff $7f
    ld a, l                                       ; $5121: $7d
    add e                                         ; $5122: $83
    rst $38                                       ; $5123: $ff
    ld [bc], a                                    ; $5124: $02
    rst $38                                       ; $5125: $ff
    rrca                                          ; $5126: $0f
    rst $38                                       ; $5127: $ff
    ccf                                           ; $5128: $3f
    ldh a, [rIE]                                  ; $5129: $f0 $ff
    rlca                                          ; $512b: $07
    rst $38                                       ; $512c: $ff
    ld hl, sp-$08                                 ; $512d: $f8 $f8
    adc b                                         ; $512f: $88

jr_042_5130:
    rst $38                                       ; $5130: $ff
    and $e5                                       ; $5131: $e6 $e5
    rst $38                                       ; $5133: $ff
    ldh [$e0], a                                  ; $5134: $e0 $e0
    jr jr_042_5130                                ; $5136: $18 $f8

    inc b                                         ; $5138: $04
    db $fc                                        ; $5139: $fc
    rst $00                                       ; $513a: $c7
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    ld [c], a                                     ; $513d: $e2
    ccf                                           ; $513e: $3f
    ld a, [c]                                     ; $513f: $f2
    rra                                           ; $5140: $1f
    pop af                                        ; $5141: $f1
    sbc a                                         ; $5142: $9f
    ld sp, hl                                     ; $5143: $f9
    rrca                                          ; $5144: $0f
    cp $fe                                        ; $5145: $fe $fe
    ldh [$cf], a                                  ; $5147: $e0 $cf
    rst $38                                       ; $5149: $ff
    and [hl]                                      ; $514a: $a6
    rst $38                                       ; $514b: $ff
    ld [c], a                                     ; $514c: $e2
    rst $38                                       ; $514d: $ff
    call nz, $9fff                                ; $514e: $c4 $ff $9f
    ld h, c                                       ; $5151: $61
    cp $06                                        ; $5152: $fe $06
    db $fc                                        ; $5154: $fc
    inc b                                         ; $5155: $04
    db $fc                                        ; $5156: $fc
    inc c                                         ; $5157: $0c
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    scf                                           ; $515a: $37
    rst $38                                       ; $515b: $ff
    call nc, Call_000_24ff                        ; $515c: $d4 $ff $24
    rst $38                                       ; $515f: $ff
    ld b, h                                       ; $5160: $44
    cp a                                          ; $5161: $bf
    rst $38                                       ; $5162: $ff
    add h                                         ; $5163: $84
    rst $38                                       ; $5164: $ff
    dec b                                         ; $5165: $05
    rst $38                                       ; $5166: $ff
    inc bc                                        ; $5167: $03
    cp $e0                                        ; $5168: $fe $e0
    ld bc, $fece                                  ; $516a: $01 $ce $fe
    ldh [rIE], a                                  ; $516d: $e0 $ff
    ld [bc], a                                    ; $516f: $02
    cp $fe                                        ; $5170: $fe $fe
    pop hl                                        ; $5172: $e1
    rst $30                                       ; $5173: $f7
    ldh [rIE], a                                  ; $5174: $e0 $ff

jr_042_5176:
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    rra                                           ; $5178: $1f
    cp $e7                                        ; $5179: $fe $e7
    db $fd                                        ; $517b: $fd
    rlca                                          ; $517c: $07
    ld sp, hl                                     ; $517d: $f9
    rst $08                                       ; $517e: $cf
    ld [hl], c                                    ; $517f: $71
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    pop de                                        ; $5182: $d1
    rst $18                                       ; $5183: $df
    ld d, c                                       ; $5184: $51
    rst $18                                       ; $5185: $df
    jp z, $87cf                                   ; $5186: $ca $cf $87

    ld sp, hl                                     ; $5189: $f9
    add a                                         ; $518a: $87
    adc d                                         ; $518b: $8a
    rst $38                                       ; $518c: $ff
    db $ec                                        ; $518d: $ec
    db $eb                                        ; $518e: $eb
    ld a, h                                       ; $518f: $7c
    ld a, h                                       ; $5190: $7c
    add h                                         ; $5191: $84
    db $fc                                        ; $5192: $fc
    inc e                                         ; $5193: $1c

jr_042_5194:
    rst $38                                       ; $5194: $ff
    db $fc                                        ; $5195: $fc
    ld [bc], a                                    ; $5196: $02
    cp $04                                        ; $5197: $fe $04
    db $fc                                        ; $5199: $fc
    jr jr_042_5194                                ; $519a: $18 $f8

    call nz, $fccf                                ; $519c: $c4 $cf $fc
    db $fc                                        ; $519f: $fc
    db $fc                                        ; $51a0: $fc
    add b                                         ; $51a1: $80
    rst $38                                       ; $51a2: $ff
    ld [c], a                                     ; $51a3: $e2
    ret z                                         ; $51a4: $c8

    db $e3                                        ; $51a5: $e3
    jr c, jr_042_51e0                             ; $51a6: $38 $38

    rst $28                                       ; $51a8: $ef
    ld a, h                                       ; $51a9: $7c
    ld b, h                                       ; $51aa: $44
    db $fc                                        ; $51ab: $fc
    and h                                         ; $51ac: $a4
    cp $e0                                        ; $51ad: $fe $e0
    db $e4                                        ; $51af: $e4
    db $fc                                        ; $51b0: $fc
    call nz, $f8ff                                ; $51b1: $c4 $ff $f8
    cp b                                          ; $51b4: $b8
    ld hl, sp+$08                                 ; $51b5: $f8 $08
    ld hl, sp+$08                                 ; $51b7: $f8 $08
    ldh a, [rNR10]                                ; $51b9: $f0 $10
    inc sp                                        ; $51bb: $33
    ldh [$e0], a                                  ; $51bc: $e0 $e0
    xor h                                         ; $51be: $ac
    rst $20                                       ; $51bf: $e7
    call nc, $40e3                                ; $51c0: $d4 $e3 $40
    ret nz                                        ; $51c3: $c0

    cp $e5                                        ; $51c4: $fe $e5
    ret z                                         ; $51c6: $c8

    push hl                                       ; $51c7: $e5
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    add hl, bc                                    ; $51cb: $09
    nop                                           ; $51cc: $00
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    rst $30                                       ; $51cf: $f7
    or $01                                        ; $51d0: $f6 $01
    rst $38                                       ; $51d2: $ff
    ld [c], a                                     ; $51d3: $e2
    ret c                                         ; $51d4: $d8

    rst $38                                       ; $51d5: $ff
    rst $38                                       ; $51d6: $ff
    rst $38                                       ; $51d7: $ff
    ld hl, sp-$09                                 ; $51d8: $f8 $f7
    rst $38                                       ; $51da: $ff
    rlca                                          ; $51db: $07
    rlca                                          ; $51dc: $07
    add hl, bc                                    ; $51dd: $09
    rrca                                          ; $51de: $0f
    rrca                                          ; $51df: $0f

jr_042_51e0:
    rrca                                          ; $51e0: $0f
    jr nc, jr_042_5222                            ; $51e1: $30 $3f

    rst $38                                       ; $51e3: $ff
    ld b, b                                       ; $51e4: $40
    ld a, a                                       ; $51e5: $7f
    ld a, h                                       ; $51e6: $7c
    ld a, a                                       ; $51e7: $7f
    rst $38                                       ; $51e8: $ff
    rst $00                                       ; $51e9: $c7
    rst $38                                       ; $51ea: $ff
    add b                                         ; $51eb: $80
    di                                            ; $51ec: $f3

jr_042_51ed:
    rst $38                                       ; $51ed: $ff
    sbc b                                         ; $51ee: $98
    db $fc                                        ; $51ef: $fc
    ldh [$fa], a                                  ; $51f0: $e0 $fa
    pop hl                                        ; $51f2: $e1
    or h                                          ; $51f3: $b4
    rst $38                                       ; $51f4: $ff
    adc h                                         ; $51f5: $8c
    rst $38                                       ; $51f6: $ff
    rst $38                                       ; $51f7: $ff
    jr jr_042_51ed                                ; $51f8: $18 $f3

    inc c                                         ; $51fa: $0c
    rst $38                                       ; $51fb: $ff
    nop                                           ; $51fc: $00
    rst $38                                       ; $51fd: $ff
    and b                                         ; $51fe: $a0
    ld a, a                                       ; $51ff: $7f
    rst $38                                       ; $5200: $ff
    ld b, b                                       ; $5201: $40
    ccf                                           ; $5202: $3f
    ld sp, $1f1f                                  ; $5203: $31 $1f $1f
    ccf                                           ; $5206: $3f
    dec hl                                        ; $5207: $2b
    ccf                                           ; $5208: $3f
    ld a, a                                       ; $5209: $7f
    daa                                           ; $520a: $27
    ccf                                           ; $520b: $3f
    dec l                                         ; $520c: $2d
    ld a, a                                       ; $520d: $7f
    ld [hl], c                                    ; $520e: $71
    ld a, a                                       ; $520f: $7f
    ld b, b                                       ; $5210: $40
    cp $e3                                        ; $5211: $fe $e3
    rst $18                                       ; $5213: $df
    ccf                                           ; $5214: $3f
    ccf                                           ; $5215: $3f
    jr nc, jr_042_5257                            ; $5216: $30 $3f

    jr nz, @-$36                                  ; $5218: $20 $c8

    ldh [rLCDC], a                                ; $521a: $e0 $40
    ld a, a                                       ; $521c: $7f
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    add e                                         ; $5221: $83

jr_042_5222:
    rst $38                                       ; $5222: $ff
    add l                                         ; $5223: $85
    ld a, a                                       ; $5224: $7f
    ld a, c                                       ; $5225: $79
    rst $38                                       ; $5226: $ff
    ld a, a                                       ; $5227: $7f
    ld b, c                                       ; $5228: $41
    ld a, $33                                     ; $5229: $3e $33
    inc c                                         ; $522b: $0c
    rrca                                          ; $522c: $0f
    inc e                                         ; $522d: $1c
    rra                                           ; $522e: $1f
    rst $38                                       ; $522f: $ff
    inc e                                         ; $5230: $1c
    rra                                           ; $5231: $1f
    ld e, $1f                                     ; $5232: $1e $1f
    rra                                           ; $5234: $1f
    rra                                           ; $5235: $1f
    rrca                                          ; $5236: $0f
    rrca                                          ; $5237: $0f
    cp $82                                        ; $5238: $fe $82
    rst $38                                       ; $523a: $ff
    nop                                           ; $523b: $00
    nop                                           ; $523c: $00
    add b                                         ; $523d: $80
    add b                                         ; $523e: $80
    ld b, b                                       ; $523f: $40
    ret nz                                        ; $5240: $c0

    ldh [rIE], a                                  ; $5241: $e0 $ff
    ldh [rNR32], a                                ; $5243: $e0 $1c
    db $fc                                        ; $5245: $fc
    rlca                                          ; $5246: $07
    rst $38                                       ; $5247: $ff
    ld b, $ff                                     ; $5248: $06 $ff
    ld [$ffff], sp                                ; $524a: $08 $ff $ff
    sub b                                         ; $524d: $90
    rst $38                                       ; $524e: $ff
    ret nc                                        ; $524f: $d0

    ld a, a                                       ; $5250: $7f
    ret z                                         ; $5251: $c8

    ld a, a                                       ; $5252: $7f
    and $ff                                       ; $5253: $e6 $ff
    ccf                                           ; $5255: $3f
    db $e3                                        ; $5256: $e3

jr_042_5257:
    ccf                                           ; $5257: $3f
    ld sp, hl                                     ; $5258: $f9
    ccf                                           ; $5259: $3f
    db $fd                                        ; $525a: $fd
    rla                                           ; $525b: $17
    db $fd                                        ; $525c: $fd
    rst $38                                       ; $525d: $ff
    rla                                           ; $525e: $17
    rst $38                                       ; $525f: $ff
    daa                                           ; $5260: $27
    ld a, [$f60e]                                 ; $5261: $fa $0e $f6
    ld a, $fc                                     ; $5264: $3e $fc
    rst $18                                       ; $5266: $df
    ld a, h                                       ; $5267: $7c
    ld hl, sp-$68                                 ; $5268: $f8 $98
    db $fc                                        ; $526a: $fc
    inc c                                         ; $526b: $0c
    cp $e0                                        ; $526c: $fe $e0
    sbc h                                         ; $526e: $9c
    db $fc                                        ; $526f: $fc
    rst $38                                       ; $5270: $ff
    inc d                                         ; $5271: $14
    db $fc                                        ; $5272: $fc
    db $ec                                        ; $5273: $ec
    cp $8a                                        ; $5274: $fe $8a
    rst $38                                       ; $5276: $ff
    adc e                                         ; $5277: $8b
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    sub c                                         ; $527a: $91
    rst $38                                       ; $527b: $ff
    ld a, c                                       ; $527c: $79
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    ld c, $fe                                     ; $527f: $0e $fe
    ld a, [bc]                                    ; $5281: $0a
    jp c, $e0fe                                   ; $5282: $da $fe $e0

    add hl, sp                                    ; $5285: $39
    add c                                         ; $5286: $81
    ldh [$b8], a                                  ; $5287: $e0 $b8
    ld hl, sp-$02                                 ; $5289: $f8 $fe
    pop hl                                        ; $528b: $e1
    ld e, h                                       ; $528c: $5c
    db $fc                                        ; $528d: $fc
    ld a, [hl]                                    ; $528e: $7e
    cp $e5                                        ; $528f: $fe $e5
    cp h                                          ; $5291: $bc
    db $fc                                        ; $5292: $fc
    ld hl, sp-$08                                 ; $5293: $f8 $f8
    add b                                         ; $5295: $80
    add b                                         ; $5296: $80
    add d                                         ; $5297: $82
    rst $38                                       ; $5298: $ff
    cp $e8                                        ; $5299: $fe $e8
    rst $20                                       ; $529b: $e7
    ldh [$e0], a                                  ; $529c: $e0 $e0
    db $10                                        ; $529e: $10
    ldh a, [$f0]                                  ; $529f: $f0 $f0
    ldh a, [$08]                                  ; $52a1: $f0 $08
    cpl                                           ; $52a3: $2f
    ld hl, sp+$18                                 ; $52a4: $f8 $18
    ld hl, sp-$60                                 ; $52a6: $f8 $a0
    or $e2                                        ; $52a8: $f6 $e2
    add b                                         ; $52aa: $80
    rst $38                                       ; $52ab: $ff
    ldh [$ca], a                                  ; $52ac: $e0 $ca
    rst $38                                       ; $52ae: $ff
    nop                                           ; $52af: $00
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    db $fd                                        ; $52b5: $fd
    nop                                           ; $52b6: $00
    rst $38                                       ; $52b7: $ff
    db $fc                                        ; $52b8: $fc
    inc e                                         ; $52b9: $1c
    inc e                                         ; $52ba: $1c
    inc de                                        ; $52bb: $13
    rra                                           ; $52bc: $1f
    jr jr_042_52de                                ; $52bd: $18 $1f

    rst $30                                       ; $52bf: $f7
    jr nz, jr_042_5301                            ; $52c0: $20 $3f

    db $10                                        ; $52c2: $10
    ld a, [$21e0]                                 ; $52c3: $fa $e0 $21
    ccf                                           ; $52c6: $3f
    ccf                                           ; $52c7: $3f
    ccf                                           ; $52c8: $3f
    cp a                                          ; $52c9: $bf
    ld bc, $0301                                  ; $52ca: $01 $01 $03
    inc bc                                        ; $52cd: $03
    rlca                                          ; $52ce: $07
    inc b                                         ; $52cf: $04
    cp $e1                                        ; $52d0: $fe $e1
    inc bc                                        ; $52d2: $03
    rst $38                                       ; $52d3: $ff
    ld [bc], a                                    ; $52d4: $02
    ld a, c                                       ; $52d5: $79
    ld a, c                                       ; $52d6: $79
    cp $8e                                        ; $52d7: $fe $8e
    cp $8a                                        ; $52d9: $fe $8a
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    cp a                                          ; $52dd: $bf

jr_042_52de:
    rst $38                                       ; $52de: $ff
    and e                                         ; $52df: $a3
    rst $38                                       ; $52e0: $ff
    ld [c], a                                     ; $52e1: $e2
    rra                                           ; $52e2: $1f
    ld [de], a                                    ; $52e3: $12
    rra                                           ; $52e4: $1f
    ld a, a                                       ; $52e5: $7f
    ld [de], a                                    ; $52e6: $12
    rrca                                          ; $52e7: $0f
    add hl, bc                                    ; $52e8: $09
    rrca                                          ; $52e9: $0f
    add hl, bc                                    ; $52ea: $09
    rlca                                          ; $52eb: $07
    rlca                                          ; $52ec: $07
    xor [hl]                                      ; $52ed: $ae
    rst $20                                       ; $52ee: $e7
    pop bc                                        ; $52ef: $c1
    ld bc, $e0ff                                  ; $52f0: $01 $ff $e0
    or $e7                                        ; $52f3: $f6 $e7
    db $fc                                        ; $52f5: $fc
    push hl                                       ; $52f6: $e5
    adc [hl]                                      ; $52f7: $8e
    db $fd                                        ; $52f8: $fd
    ld l, [hl]                                    ; $52f9: $6e
    db $eb                                        ; $52fa: $eb
    ld c, $0e                                     ; $52fb: $0e $0e
    rst $38                                       ; $52fd: $ff
    ld sp, $c13f                                  ; $52fe: $31 $3f $c1

jr_042_5301:
    rst $38                                       ; $5301: $ff
    add b                                         ; $5302: $80
    rst $38                                       ; $5303: $ff
    add c                                         ; $5304: $81
    rst $38                                       ; $5305: $ff
    rst $18                                       ; $5306: $df
    add l                                         ; $5307: $85
    rst $38                                       ; $5308: $ff
    inc bc                                        ; $5309: $03
    rst $38                                       ; $530a: $ff
    ld bc, $e2fe                                  ; $530b: $01 $fe $e2
    add b                                         ; $530e: $80
    rst $38                                       ; $530f: $ff
    db $fd                                        ; $5310: $fd
    add [hl]                                      ; $5311: $86
    ldh a, [$e0]                                  ; $5312: $f0 $e0
    add c                                         ; $5314: $81
    rst $38                                       ; $5315: $ff
    jp Jump_042_67ff                              ; $5316: $c3 $ff $67


    ld a, h                                       ; $5319: $7c
    rst $38                                       ; $531a: $ff
    ld a, a                                       ; $531b: $7f
    ld a, e                                       ; $531c: $7b
    rst $38                                       ; $531d: $ff
    rst $08                                       ; $531e: $cf
    rst $38                                       ; $531f: $ff
    ld b, c                                       ; $5320: $41
    rst $38                                       ; $5321: $ff
    ld b, b                                       ; $5322: $40
    jp c, $e4fe                                   ; $5323: $da $fe $e4

    add b                                         ; $5326: $80
    push de                                       ; $5327: $d5
    ld [c], a                                     ; $5328: $e2
    add c                                         ; $5329: $81
    rst $38                                       ; $532a: $ff
    adc $e0                                       ; $532b: $ce $e0
    add d                                         ; $532d: $82
    rst $38                                       ; $532e: $ff
    ei                                            ; $532f: $fb
    ld [bc], a                                    ; $5330: $02
    rst $38                                       ; $5331: $ff
    rst $38                                       ; $5332: $ff
    ldh [$87], a                                  ; $5333: $e0 $87
    rst $38                                       ; $5335: $ff
    rst $38                                       ; $5336: $ff
    adc a                                         ; $5337: $8f
    rst $38                                       ; $5338: $ff
    ld a, e                                       ; $5339: $7b
    ld a, l                                       ; $533a: $7d
    db $fd                                        ; $533b: $fd
    rst $38                                       ; $533c: $ff
    rst $20                                       ; $533d: $e7
    ld sp, hl                                     ; $533e: $f9
    ld sp, hl                                     ; $533f: $f9
    ld a, b                                       ; $5340: $78
    ld a, b                                       ; $5341: $78
    adc b                                         ; $5342: $88
    rst $38                                       ; $5343: $ff
    cp [hl]                                       ; $5344: $be
    add sp, -$3b                                  ; $5345: $e8 $c5
    ldh [$e0], a                                  ; $5347: $e0 $e0
    add hl, de                                    ; $5349: $19
    ld sp, hl                                     ; $534a: $f9
    ld b, $b6                                     ; $534b: $06 $b6
    ldh [rSC], a                                  ; $534d: $e0 $02
    db $eb                                        ; $534f: $eb
    rst $38                                       ; $5350: $ff
    jp nz, $e282                                  ; $5351: $c2 $82 $e2

    ld hl, $e076                                  ; $5354: $21 $76 $e0
    inc bc                                        ; $5357: $03
    cp $83                                        ; $5358: $fe $83
    ei                                            ; $535a: $fb
    cp $03                                        ; $535b: $fe $03
    cp $e0                                        ; $535d: $fe $e0
    add a                                         ; $535f: $87
    rst $38                                       ; $5360: $ff
    call z, $f87c                                 ; $5361: $cc $7c $f8
    ld a, a                                       ; $5364: $7f
    cp b                                          ; $5365: $b8
    cp $e6                                        ; $5366: $fe $e6
    rst $38                                       ; $5368: $ff
    dec b                                         ; $5369: $05
    rst $38                                       ; $536a: $ff
    inc b                                         ; $536b: $04
    cp $e4                                        ; $536c: $fe $e4
    db $fd                                        ; $536e: $fd
    inc bc                                        ; $536f: $03
    db $e3                                        ; $5370: $e3
    ldh [rSC], a                                  ; $5371: $e0 $02
    rst $38                                       ; $5373: $ff
    add c                                         ; $5374: $81
    cp $fe                                        ; $5375: $fe $fe
    ld [bc], a                                    ; $5377: $02
    xor $fe                                       ; $5378: $ee $fe
    ldh [$82], a                                  ; $537a: $e0 $82
    cp $01                                        ; $537c: $fe $01
    ld a, [hl]                                    ; $537e: $7e
    ldh [$f8], a                                  ; $537f: $e0 $f8
    ld [$fdf8], sp                                ; $5381: $08 $f8 $fd
    ld hl, sp-$04                                 ; $5384: $f8 $fc
    ldh [$08], a                                  ; $5386: $e0 $08
    db $fc                                        ; $5388: $fc
    db $fc                                        ; $5389: $fc
    ld [bc], a                                    ; $538a: $02
    cp $f9                                        ; $538b: $fe $f9
    cp $d5                                        ; $538d: $fe $d5
    ldh [$fb], a                                  ; $538f: $e0 $fb
    rst $38                                       ; $5391: $ff
    db $fd                                        ; $5392: $fd
    rst $38                                       ; $5393: $ff
    ld a, a                                       ; $5394: $7f
    ld a, a                                       ; $5395: $7f
    ld e, $f9                                     ; $5396: $1e $f9
    ld e, $84                                     ; $5398: $1e $84
    rst $38                                       ; $539a: $ff
    ld h, h                                       ; $539b: $64
    pop bc                                        ; $539c: $c1
    ld [hl], b                                    ; $539d: $70
    ld [hl], b                                    ; $539e: $70
    sub b                                         ; $539f: $90
    ldh a, [$30]                                  ; $53a0: $f0 $30
    rst $28                                       ; $53a2: $ef
    ldh a, [$08]                                  ; $53a3: $f0 $08
    ld hl, sp+$10                                 ; $53a5: $f8 $10
    ld a, [$f8e2]                                 ; $53a7: $fa $e2 $f8
    ld hl, sp+$00                                 ; $53aa: $f8 $00
    rst $18                                       ; $53ac: $df
    nop                                           ; $53ad: $00
    add b                                         ; $53ae: $80
    add b                                         ; $53af: $80
    ret nz                                        ; $53b0: $c0

    ld b, b                                       ; $53b1: $40
    cp $e1                                        ; $53b2: $fe $e1
    add b                                         ; $53b4: $80
    add b                                         ; $53b5: $80
    rst $38                                       ; $53b6: $ff
    inc a                                         ; $53b7: $3c
    inc a                                         ; $53b8: $3c
    ld a, [hl]                                    ; $53b9: $7e
    ld b, [hl]                                    ; $53ba: $46
    cp $c2                                        ; $53bb: $fe $c2
    cp $a2                                        ; $53bd: $fe $a2
    cp a                                          ; $53bf: $bf
    cp $f2                                        ; $53c0: $fe $f2
    db $fc                                        ; $53c2: $fc
    call z, $88f8                                 ; $53c3: $cc $f8 $88
    cp $e1                                        ; $53c6: $fe $e1
    ldh a, [rTAC]                                 ; $53c8: $f0 $07
    db $10                                        ; $53ca: $10
    ldh [$e0], a                                  ; $53cb: $e0 $e0
    xor h                                         ; $53cd: $ac
    rst $38                                       ; $53ce: $ff
    rst $38                                       ; $53cf: $ff
    jp hl                                         ; $53d0: $e9


    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    ld sp, hl                                     ; $53d4: $f9
    nop                                           ; $53d5: $00
    rst $38                                       ; $53d6: $ff
    rst $38                                       ; $53d7: $ff
    db $e3                                        ; $53d8: $e3
    ld [c], a                                     ; $53d9: $e2
    rlca                                          ; $53da: $07
    rlca                                          ; $53db: $07
    ld [$0f0f], sp                                ; $53dc: $08 $0f $0f
    cp a                                          ; $53df: $bf
    rrca                                          ; $53e0: $0f
    db $10                                        ; $53e1: $10
    rra                                           ; $53e2: $1f
    jr jr_042_5404                                ; $53e3: $18 $1f

    dec b                                         ; $53e5: $05
    or $e2                                        ; $53e6: $f6 $e2
    ld bc, $fff0                                  ; $53e8: $01 $f0 $ff
    ldh [$ca], a                                  ; $53eb: $e0 $ca
    rst $38                                       ; $53ed: $ff
    rst $38                                       ; $53ee: $ff
    rst $38                                       ; $53ef: $ff
    cp $fd                                        ; $53f0: $fe $fd
    ld bc, $0201                                  ; $53f2: $01 $01 $02
    inc bc                                        ; $53f5: $03
    rst $38                                       ; $53f6: $ff
    rlca                                          ; $53f7: $07
    rlca                                          ; $53f8: $07
    jr c, @+$41                                   ; $53f9: $38 $3f

    ldh [rIE], a                                  ; $53fb: $e0 $ff
    ld h, b                                       ; $53fd: $60
    rst $38                                       ; $53fe: $ff
    rst $38                                       ; $53ff: $ff
    db $10                                        ; $5400: $10
    rst $38                                       ; $5401: $ff
    add hl, bc                                    ; $5402: $09
    rst $38                                       ; $5403: $ff

jr_042_5404:
    dec bc                                        ; $5404: $0b
    cp $13                                        ; $5405: $fe $13
    cp $ff                                        ; $5407: $fe $ff
    ld h, a                                       ; $5409: $67
    db $fc                                        ; $540a: $fc
    rst $00                                       ; $540b: $c7
    db $fc                                        ; $540c: $fc
    sbc a                                         ; $540d: $9f
    db $fc                                        ; $540e: $fc
    cp a                                          ; $540f: $bf
    add sp, -$01                                  ; $5410: $e8 $ff
    cp a                                          ; $5412: $bf
    add sp, -$01                                  ; $5413: $e8 $ff
    db $e4                                        ; $5415: $e4
    ld e, a                                       ; $5416: $5f
    ld [hl], b                                    ; $5417: $70
    ld l, a                                       ; $5418: $6f
    ld a, h                                       ; $5419: $7c
    rst $38                                       ; $541a: $ff
    ccf                                           ; $541b: $3f
    ccf                                           ; $541c: $3f
    rra                                           ; $541d: $1f
    inc e                                         ; $541e: $1c
    ccf                                           ; $541f: $3f
    jr c, @+$41                                   ; $5420: $38 $3f

    jr z, @+$01                                   ; $5422: $28 $ff

    ld a, a                                       ; $5424: $7f
    ld c, b                                       ; $5425: $48
    ld a, a                                       ; $5426: $7f
    ld [hl], l                                    ; $5427: $75
    ccf                                           ; $5428: $3f
    inc hl                                        ; $5429: $23
    ld a, a                                       ; $542a: $7f
    ld h, c                                       ; $542b: $61
    rst $38                                       ; $542c: $ff
    ld a, a                                       ; $542d: $7f
    ld d, c                                       ; $542e: $51
    rst $38                                       ; $542f: $ff
    sub d                                         ; $5430: $92
    rst $38                                       ; $5431: $ff
    sbc [hl]                                      ; $5432: $9e
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $30                                       ; $5435: $f7
    ld [hl], b                                    ; $5436: $70
    ld a, a                                       ; $5437: $7f
    ld b, b                                       ; $5438: $40
    cp $e0                                        ; $5439: $fe $e0
    add b                                         ; $543b: $80
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    rst $38                                       ; $543e: $ff
    db $eb                                        ; $543f: $eb
    rra                                           ; $5440: $1f
    db $10                                        ; $5441: $10
    cp $e0                                        ; $5442: $fe $e0
    rra                                           ; $5444: $1f
    db $fc                                        ; $5445: $fc
    pop hl                                        ; $5446: $e1
    ld d, $1f                                     ; $5447: $16 $1f
    ld a, [de]                                    ; $5449: $1a
    sbc e                                         ; $544a: $9b
    rra                                           ; $544b: $1f
    rla                                           ; $544c: $17
    ld a, [hl-]                                   ; $544d: $3a
    ldh [rIF], a                                  ; $544e: $e0 $0f
    rrca                                          ; $5450: $0f
    add h                                         ; $5451: $84
    rst $38                                       ; $5452: $ff
    ld [c], a                                     ; $5453: $e2
    pop hl                                        ; $5454: $e1
    ldh [rIE], a                                  ; $5455: $e0 $ff
    ldh [$90], a                                  ; $5457: $e0 $90
    ldh a, [$f0]                                  ; $5459: $f0 $f0
    ldh a, [$0c]                                  ; $545b: $f0 $0c
    db $fc                                        ; $545d: $fc
    ld [bc], a                                    ; $545e: $02
    rst $38                                       ; $545f: $ff
    cp $3e                                        ; $5460: $fe $3e
    cp $ff                                        ; $5462: $fe $ff
    db $e3                                        ; $5464: $e3
    rst $38                                       ; $5465: $ff
    ld bc, $f9ff                                  ; $5466: $01 $ff $f9
    add hl, de                                    ; $5469: $19
    db $fc                                        ; $546a: $fc
    ldh [$fa], a                                  ; $546b: $e0 $fa
    pop hl                                        ; $546d: $e1
    dec l                                         ; $546e: $2d
    rst $38                                       ; $546f: $ff
    ld sp, $18ff                                  ; $5470: $31 $ff $18
    rst $38                                       ; $5473: $ff
    rst $08                                       ; $5474: $cf
    jr nc, @+$01                                  ; $5475: $30 $ff

    nop                                           ; $5477: $00
    rst $38                                       ; $5478: $ff
    dec b                                         ; $5479: $05
    cp $02                                        ; $547a: $fe $02
    rst $38                                       ; $547c: $ff
    db $fc                                        ; $547d: $fc
    db $ec                                        ; $547e: $ec
    ld hl, sp-$08                                 ; $547f: $f8 $f8
    db $fc                                        ; $5481: $fc
    or h                                          ; $5482: $b4
    db $fc                                        ; $5483: $fc
    db $e4                                        ; $5484: $e4
    cp a                                          ; $5485: $bf
    db $fc                                        ; $5486: $fc
    or h                                          ; $5487: $b4
    cp $0e                                        ; $5488: $fe $0e
    cp $02                                        ; $548a: $fe $02
    cp $e3                                        ; $548c: $fe $e3
    db $fc                                        ; $548e: $fc
    rst $38                                       ; $548f: $ff
    db $fc                                        ; $5490: $fc
    inc c                                         ; $5491: $0c
    db $fc                                        ; $5492: $fc
    ld b, h                                       ; $5493: $44
    db $fc                                        ; $5494: $fc
    ld [hl+], a                                   ; $5495: $22
    cp $32                                        ; $5496: $fe $32
    db $fd                                        ; $5498: $fd
    cp $ff                                        ; $5499: $fe $ff
    ldh [$72], a                                  ; $549b: $e0 $72
    cp $62                                        ; $549d: $fe $62
    db $fc                                        ; $549f: $fc

jr_042_54a0:
    call c, $fffc                                 ; $54a0: $dc $fc $ff
    ld h, h                                       ; $54a3: $64
    ld hl, sp-$08                                 ; $54a4: $f8 $f8
    jr jr_042_54a0                                ; $54a6: $18 $f8

    inc b                                         ; $54a8: $04
    db $fc                                        ; $54a9: $fc
    add h                                         ; $54aa: $84
    ld a, a                                       ; $54ab: $7f
    db $fc                                        ; $54ac: $fc
    ld a, h                                       ; $54ad: $7c
    db $fc                                        ; $54ae: $fc
    inc b                                         ; $54af: $04
    db $fc                                        ; $54b0: $fc
    ld hl, sp-$08                                 ; $54b1: $f8 $f8
    add d                                         ; $54b3: $82
    rst $38                                       ; $54b4: $ff
    ld [bc], a                                    ; $54b5: $02
    db $fc                                        ; $54b6: $fc
    ei                                            ; $54b7: $fb
    add b                                         ; $54b8: $80
    rst $38                                       ; $54b9: $ff
    ld [c], a                                     ; $54ba: $e2
    ret c                                         ; $54bb: $d8

    rst $38                                       ; $54bc: $ff
    rst $38                                       ; $54bd: $ff
    ld sp, hl                                     ; $54be: $f9
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    ld sp, hl                                     ; $54c2: $f9
    nop                                           ; $54c3: $00
    rst $38                                       ; $54c4: $ff
    rst $38                                       ; $54c5: $ff
    rst $20                                       ; $54c6: $e7
    and $3e                                       ; $54c7: $e6 $3e
    ld a, $21                                     ; $54c9: $3e $21
    ccf                                           ; $54cb: $3f
    jr c, @+$01                                   ; $54cc: $38 $ff

    ccf                                           ; $54ce: $3f
    ld b, b                                       ; $54cf: $40
    ld a, a                                       ; $54d0: $7f
    jr nz, @+$41                                  ; $54d1: $20 $3f

    jr @+$21                                      ; $54d3: $18 $1f

    inc hl                                        ; $54d5: $23
    rst $08                                       ; $54d6: $cf
    ccf                                           ; $54d7: $3f
    ccf                                           ; $54d8: $3f
    ccf                                           ; $54d9: $3f
    ld bc, $e2ff                                  ; $54da: $01 $ff $e2
    ret z                                         ; $54dd: $c8

    rst $20                                       ; $54de: $e7
    dec c                                         ; $54df: $0d
    dec c                                         ; $54e0: $0d
    rst $38                                       ; $54e1: $ff
    ccf                                           ; $54e2: $3f
    dec sp                                        ; $54e3: $3b
    ld a, a                                       ; $54e4: $7f
    ld c, e                                       ; $54e5: $4b
    ccf                                           ; $54e6: $3f
    inc sp                                        ; $54e7: $33
    ccf                                           ; $54e8: $3f
    ld h, $ff                                     ; $54e9: $26 $ff
    ccf                                           ; $54eb: $3f
    ld [hl], $3f                                  ; $54ec: $36 $3f
    ld [hl+], a                                   ; $54ee: $22
    rra                                           ; $54ef: $1f
    ld e, $0f                                     ; $54f0: $1e $0f
    ld [$07f3], sp                                ; $54f2: $08 $f3 $07
    rlca                                          ; $54f5: $07
    xor d                                         ; $54f6: $aa
    rst $28                                       ; $54f7: $ef
    jp z, $02e1                                   ; $54f8: $ca $e1 $02

    inc bc                                        ; $54fb: $03
    inc bc                                        ; $54fc: $03
    inc bc                                        ; $54fd: $03
    di                                            ; $54fe: $f3
    ld [bc], a                                    ; $54ff: $02
    inc bc                                        ; $5500: $03
    call nz, $fee9                                ; $5501: $c4 $e9 $fe
    db $fd                                        ; $5504: $fd
    rlca                                          ; $5505: $07
    rlca                                          ; $5506: $07
    jr jr_042_5528                                ; $5507: $18 $1f

    rst $38                                       ; $5509: $ff
    jr nz, jr_042_554b                            ; $550a: $20 $3f

    db $e3                                        ; $550c: $e3
    rst $38                                       ; $550d: $ff
    ld b, a                                       ; $550e: $47
    db $fc                                        ; $550f: $fc
    ld c, a                                       ; $5510: $4f
    ld hl, sp-$01                                 ; $5511: $f8 $ff
    adc a                                         ; $5513: $8f
    ld sp, hl                                     ; $5514: $f9
    sbc a                                         ; $5515: $9f
    ldh a, [$9f]                                  ; $5516: $f0 $9f
    ldh a, [$df]                                  ; $5518: $f0 $df
    di                                            ; $551a: $f3
    rst $38                                       ; $551b: $ff
    rst $38                                       ; $551c: $ff
    ld h, l                                       ; $551d: $65
    rst $38                                       ; $551e: $ff
    ld b, a                                       ; $551f: $47
    rst $38                                       ; $5520: $ff
    inc hl                                        ; $5521: $23
    ld sp, hl                                     ; $5522: $f9
    add [hl]                                      ; $5523: $86
    rst $38                                       ; $5524: $ff
    ld a, a                                       ; $5525: $7f
    ld h, b                                       ; $5526: $60
    ccf                                           ; $5527: $3f

jr_042_5528:
    jr nz, jr_042_5569                            ; $5528: $20 $3f

    jr nc, @+$01                                  ; $552a: $30 $ff

    db $ec                                        ; $552c: $ec
    rst $38                                       ; $552d: $ff
    rst $38                                       ; $552e: $ff
    dec hl                                        ; $552f: $2b
    rst $38                                       ; $5530: $ff
    inc h                                         ; $5531: $24
    rst $38                                       ; $5532: $ff
    ld [hl+], a                                   ; $5533: $22
    rst $38                                       ; $5534: $ff
    ld hl, $ffaf                                  ; $5535: $21 $af $ff
    and b                                         ; $5538: $a0
    rst $38                                       ; $5539: $ff
    ret nz                                        ; $553a: $c0

    cp $e0                                        ; $553b: $fe $e0
    add b                                         ; $553d: $80
    cp $e0                                        ; $553e: $fe $e0
    rst $38                                       ; $5540: $ff
    cp a                                          ; $5541: $bf
    ld b, b                                       ; $5542: $40
    ld a, a                                       ; $5543: $7f
    ld b, c                                       ; $5544: $41
    ld a, a                                       ; $5545: $7f
    ld b, b                                       ; $5546: $40
    ld a, a                                       ; $5547: $7f
    rst $30                                       ; $5548: $f7
    ldh [rIE], a                                  ; $5549: $e0 $ff

jr_042_554b:
    rst $38                                       ; $554b: $ff
    ld a, a                                       ; $554c: $7f
    ld h, c                                       ; $554d: $61
    ld a, a                                       ; $554e: $7f
    ld a, a                                       ; $554f: $7f
    rst $38                                       ; $5550: $ff
    pop bc                                        ; $5551: $c1
    rst $38                                       ; $5552: $ff
    cp l                                          ; $5553: $bd
    rst $18                                       ; $5554: $df
    jp $817f                                      ; $5555: $c3 $7f $81


    rst $38                                       ; $5558: $ff
    add c                                         ; $5559: $81
    ldh a, [$e0]                                  ; $555a: $f0 $e0
    ld bc, $f3ff                                  ; $555c: $01 $ff $f3
    cp $fe                                        ; $555f: $fe $fe
    adc b                                         ; $5561: $88
    rst $38                                       ; $5562: $ff
    and $e5                                       ; $5563: $e6 $e5
    ldh a, [$f0]                                  ; $5565: $f0 $f0
    adc a                                         ; $5567: $8f
    rst $38                                       ; $5568: $ff

jr_042_5569:
    rst $38                                       ; $5569: $ff
    ld [bc], a                                    ; $556a: $02
    rst $38                                       ; $556b: $ff
    reti                                          ; $556c: $d9


    rst $38                                       ; $556d: $ff
    db $fd                                        ; $556e: $fd
    daa                                           ; $556f: $27
    cp $03                                        ; $5570: $fe $03
    rst $28                                       ; $5572: $ef
    cp $8f                                        ; $5573: $fe $8f
    cp $03                                        ; $5575: $fe $03
    pop bc                                        ; $5577: $c1
    ldh [rDIV], a                                 ; $5578: $e0 $04
    rst $38                                       ; $557a: $ff
    adc d                                         ; $557b: $8a
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    ld c, $ff                                     ; $557e: $0e $ff
    dec c                                         ; $5580: $0d
    db $fd                                        ; $5581: $fd
    inc de                                        ; $5582: $13
    rst $38                                       ; $5583: $ff
    add c                                         ; $5584: $81
    rst $38                                       ; $5585: $ff
    cp $72                                        ; $5586: $fe $72
    db $fc                                        ; $5588: $fc
    inc b                                         ; $5589: $04
    cp $1e                                        ; $558a: $fe $1e
    rst $38                                       ; $558c: $ff
    ld sp, hl                                     ; $558d: $f9
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    ld l, b                                       ; $5590: $68
    rst $38                                       ; $5591: $ff
    sub h                                         ; $5592: $94
    rst $38                                       ; $5593: $ff
    inc d                                         ; $5594: $14
    rst $38                                       ; $5595: $ff
    rst $20                                       ; $5596: $e7
    cp $d5                                        ; $5597: $fe $d5
    ldh [$03], a                                  ; $5599: $e0 $03
    cp $02                                        ; $559b: $fe $02
    cp $02                                        ; $559d: $fe $02
    db $fc                                        ; $559f: $fc
    db $fc                                        ; $55a0: $fc
    db $fd                                        ; $55a1: $fd
    inc b                                         ; $55a2: $04
    cp $e0                                        ; $55a3: $fe $e0
    call nz, $82fc                                ; $55a5: $c4 $fc $82
    cp $fe                                        ; $55a8: $fe $fe
    cp $fe                                        ; $55aa: $fe $fe
    ld sp, hl                                     ; $55ac: $f9
    ldh [$fc], a                                  ; $55ad: $e0 $fc
    ld hl, sp-$78                                 ; $55af: $f8 $88
    cp $9e                                        ; $55b1: $fe $9e
    pop hl                                        ; $55b3: $e1
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    ld b, b                                       ; $55b6: $40
    rst $38                                       ; $55b7: $ff
    ldh a, [rIE]                                  ; $55b8: $f0 $ff
    rrca                                          ; $55ba: $0f
    rst $38                                       ; $55bb: $ff
    ldh [rIE], a                                  ; $55bc: $e0 $ff
    di                                            ; $55be: $f3
    rra                                           ; $55bf: $1f
    rra                                           ; $55c0: $1f
    adc b                                         ; $55c1: $88
    rst $38                                       ; $55c2: $ff
    and $e5                                       ; $55c3: $e6 $e5
    ret nz                                        ; $55c5: $c0

    ret nz                                        ; $55c6: $c0

    jr nz, @-$1e                                  ; $55c7: $20 $e0

    cp a                                          ; $55c9: $bf
    ldh [$e0], a                                  ; $55ca: $e0 $e0
    db $10                                        ; $55cc: $10
    ldh a, [$30]                                  ; $55cd: $f0 $30
    ldh a, [$fa]                                  ; $55cf: $f0 $fa
    pop hl                                        ; $55d1: $e1
    ldh [$cf], a                                  ; $55d2: $e0 $cf
    ldh [rP1], a                                  ; $55d4: $e0 $00
    nop                                           ; $55d6: $00
    add b                                         ; $55d7: $80
    rst $38                                       ; $55d8: $ff
    db $e4                                        ; $55d9: $e4
    call nz, Call_000_08e7                        ; $55da: $c4 $e7 $08
    ld [$bcff], sp                                ; $55dd: $08 $ff $bc
    or h                                          ; $55e0: $b4
    cp $6a                                        ; $55e1: $fe $6a
    rst $38                                       ; $55e3: $ff
    cp c                                          ; $55e4: $b9
    rst $38                                       ; $55e5: $ff
    dec l                                         ; $55e6: $2d
    rst $38                                       ; $55e7: $ff
    cp $3a                                        ; $55e8: $fe $3a
    db $fc                                        ; $55ea: $fc
    inc e                                         ; $55eb: $1c
    db $fc                                        ; $55ec: $fc
    call nz, Call_000_3838                        ; $55ed: $c4 $38 $38
    nop                                           ; $55f0: $00
    xor b                                         ; $55f1: $a8
    di                                            ; $55f2: $f3
    add $e9                                       ; $55f3: $c6 $e9
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00

    db $08, $56, $49, $56

    adc d                                         ; $55fc: $8a
    ld d, [hl]                                    ; $55fd: $56
    bit 2, [hl]                                   ; $55fe: $cb $56
    inc c                                         ; $5600: $0c
    ld d, a                                       ; $5601: $57
    ld c, l                                       ; $5602: $4d
    ld d, a                                       ; $5603: $57
    adc [hl]                                      ; $5604: $8e
    ld d, a                                       ; $5605: $57
    rst $08                                       ; $5606: $cf
    ld d, a                                       ; $5607: $57

    db $10, $08, $00, $00, $20, $08, $02, $00, $30, $08, $04, $00, $40, $08, $06, $00
    db $10, $10, $08, $00, $20, $10, $0a, $00, $30, $10, $0c, $00, $40, $10, $0e, $00
    db $10, $18, $10, $00, $20, $18, $12, $00, $30, $18, $14, $00, $40, $18, $16, $00
    db $10, $20, $18, $00, $20, $20, $1a, $00, $30, $20, $1c, $00, $40, $20, $1e, $00
    db $80, $10, $08, $00, $00, $20, $08, $02, $00, $30, $08, $04, $00, $40, $08, $06
    db $00, $10, $10, $08, $00, $20, $10, $0a, $00, $30, $10, $0c, $00, $40, $10, $0e
    db $00, $10, $18, $10, $00, $20, $18, $12, $00, $30, $18, $14, $00, $40, $18, $16
    db $00, $10, $20, $18, $00, $20, $20, $1a, $00, $30, $20, $1c, $00, $40, $20, $1e
    db $00, $80

    db $10                                        ; $568a: $10
    ld [$0000], sp                                ; $568b: $08 $00 $00
    jr nz, @+$0a                                  ; $568e: $20 $08

    ld [bc], a                                    ; $5690: $02
    nop                                           ; $5691: $00
    jr nc, jr_042_569c                            ; $5692: $30 $08

    inc b                                         ; $5694: $04
    nop                                           ; $5695: $00
    ld b, b                                       ; $5696: $40
    ld [$0006], sp                                ; $5697: $08 $06 $00
    db $10                                        ; $569a: $10
    db $10                                        ; $569b: $10

jr_042_569c:
    ld [$2000], sp                                ; $569c: $08 $00 $20
    db $10                                        ; $569f: $10
    ld a, [bc]                                    ; $56a0: $0a
    nop                                           ; $56a1: $00
    jr nc, jr_042_56b4                            ; $56a2: $30 $10

    inc c                                         ; $56a4: $0c
    nop                                           ; $56a5: $00
    ld b, b                                       ; $56a6: $40
    db $10                                        ; $56a7: $10
    ld c, $00                                     ; $56a8: $0e $00
    db $10                                        ; $56aa: $10
    jr jr_042_56bd                                ; $56ab: $18 $10

    nop                                           ; $56ad: $00
    jr nz, @+$1a                                  ; $56ae: $20 $18

    ld [de], a                                    ; $56b0: $12
    nop                                           ; $56b1: $00
    jr nc, jr_042_56cc                            ; $56b2: $30 $18

jr_042_56b4:
    inc d                                         ; $56b4: $14
    nop                                           ; $56b5: $00
    ld b, b                                       ; $56b6: $40
    jr jr_042_56cf                                ; $56b7: $18 $16

    nop                                           ; $56b9: $00
    db $10                                        ; $56ba: $10
    jr nz, jr_042_56d5                            ; $56bb: $20 $18

jr_042_56bd:
    nop                                           ; $56bd: $00
    jr nz, jr_042_56e0                            ; $56be: $20 $20

    ld a, [de]                                    ; $56c0: $1a
    nop                                           ; $56c1: $00
    jr nc, @+$22                                  ; $56c2: $30 $20

    inc e                                         ; $56c4: $1c
    nop                                           ; $56c5: $00
    ld b, b                                       ; $56c6: $40
    jr nz, jr_042_56e7                            ; $56c7: $20 $1e

    nop                                           ; $56c9: $00
    add b                                         ; $56ca: $80
    db $10                                        ; $56cb: $10

jr_042_56cc:
    ld [$0000], sp                                ; $56cc: $08 $00 $00

jr_042_56cf:
    jr nz, @+$0a                                  ; $56cf: $20 $08

    ld [bc], a                                    ; $56d1: $02
    nop                                           ; $56d2: $00
    jr nc, jr_042_56dd                            ; $56d3: $30 $08

jr_042_56d5:
    inc b                                         ; $56d5: $04
    nop                                           ; $56d6: $00
    ld b, b                                       ; $56d7: $40
    ld [$0006], sp                                ; $56d8: $08 $06 $00
    db $10                                        ; $56db: $10
    db $10                                        ; $56dc: $10

jr_042_56dd:
    ld [$2000], sp                                ; $56dd: $08 $00 $20

jr_042_56e0:
    db $10                                        ; $56e0: $10
    ld a, [bc]                                    ; $56e1: $0a
    nop                                           ; $56e2: $00
    jr nc, jr_042_56f5                            ; $56e3: $30 $10

    inc c                                         ; $56e5: $0c
    nop                                           ; $56e6: $00

jr_042_56e7:
    ld b, b                                       ; $56e7: $40
    db $10                                        ; $56e8: $10
    ld c, $00                                     ; $56e9: $0e $00
    db $10                                        ; $56eb: $10
    jr jr_042_56fe                                ; $56ec: $18 $10

    nop                                           ; $56ee: $00
    jr nz, @+$1a                                  ; $56ef: $20 $18

    ld [de], a                                    ; $56f1: $12
    nop                                           ; $56f2: $00
    jr nc, jr_042_570d                            ; $56f3: $30 $18

jr_042_56f5:
    inc d                                         ; $56f5: $14
    nop                                           ; $56f6: $00
    ld b, b                                       ; $56f7: $40
    jr jr_042_5710                                ; $56f8: $18 $16

    nop                                           ; $56fa: $00
    db $10                                        ; $56fb: $10
    jr nz, jr_042_5716                            ; $56fc: $20 $18

jr_042_56fe:
    nop                                           ; $56fe: $00
    jr nz, jr_042_5721                            ; $56ff: $20 $20

    ld a, [de]                                    ; $5701: $1a
    nop                                           ; $5702: $00
    jr nc, @+$22                                  ; $5703: $30 $20

    inc e                                         ; $5705: $1c
    nop                                           ; $5706: $00
    ld b, b                                       ; $5707: $40
    jr nz, jr_042_5728                            ; $5708: $20 $1e

    nop                                           ; $570a: $00
    add b                                         ; $570b: $80
    db $10                                        ; $570c: $10

jr_042_570d:
    ld [$0000], sp                                ; $570d: $08 $00 $00

jr_042_5710:
    jr nz, @+$0a                                  ; $5710: $20 $08

    ld [bc], a                                    ; $5712: $02
    nop                                           ; $5713: $00
    jr nc, jr_042_571e                            ; $5714: $30 $08

jr_042_5716:
    inc b                                         ; $5716: $04
    nop                                           ; $5717: $00
    ld b, b                                       ; $5718: $40
    ld [$0006], sp                                ; $5719: $08 $06 $00
    db $10                                        ; $571c: $10
    db $10                                        ; $571d: $10

jr_042_571e:
    ld [$2000], sp                                ; $571e: $08 $00 $20

jr_042_5721:
    db $10                                        ; $5721: $10
    ld a, [bc]                                    ; $5722: $0a
    nop                                           ; $5723: $00
    jr nc, jr_042_5736                            ; $5724: $30 $10

    inc c                                         ; $5726: $0c
    nop                                           ; $5727: $00

jr_042_5728:
    ld b, b                                       ; $5728: $40
    db $10                                        ; $5729: $10
    ld c, $00                                     ; $572a: $0e $00
    db $10                                        ; $572c: $10
    jr jr_042_573f                                ; $572d: $18 $10

    nop                                           ; $572f: $00
    jr nz, @+$1a                                  ; $5730: $20 $18

    ld [de], a                                    ; $5732: $12
    nop                                           ; $5733: $00
    jr nc, jr_042_574e                            ; $5734: $30 $18

jr_042_5736:
    inc d                                         ; $5736: $14
    nop                                           ; $5737: $00
    ld b, b                                       ; $5738: $40
    jr jr_042_5751                                ; $5739: $18 $16

    nop                                           ; $573b: $00
    db $10                                        ; $573c: $10
    jr nz, jr_042_5757                            ; $573d: $20 $18

jr_042_573f:
    nop                                           ; $573f: $00
    jr nz, jr_042_5762                            ; $5740: $20 $20

    ld a, [de]                                    ; $5742: $1a
    nop                                           ; $5743: $00
    jr nc, @+$22                                  ; $5744: $30 $20

    inc e                                         ; $5746: $1c
    nop                                           ; $5747: $00
    ld b, b                                       ; $5748: $40
    jr nz, jr_042_5769                            ; $5749: $20 $1e

    nop                                           ; $574b: $00
    add b                                         ; $574c: $80
    db $10                                        ; $574d: $10

jr_042_574e:
    ld [$0000], sp                                ; $574e: $08 $00 $00

jr_042_5751:
    jr nz, @+$0a                                  ; $5751: $20 $08

    ld [bc], a                                    ; $5753: $02
    nop                                           ; $5754: $00
    jr nc, jr_042_575f                            ; $5755: $30 $08

jr_042_5757:
    inc b                                         ; $5757: $04
    nop                                           ; $5758: $00
    ld b, b                                       ; $5759: $40
    ld [$0006], sp                                ; $575a: $08 $06 $00
    db $10                                        ; $575d: $10
    db $10                                        ; $575e: $10

jr_042_575f:
    ld [$2000], sp                                ; $575f: $08 $00 $20

jr_042_5762:
    db $10                                        ; $5762: $10
    ld a, [bc]                                    ; $5763: $0a
    nop                                           ; $5764: $00
    jr nc, jr_042_5777                            ; $5765: $30 $10

    inc c                                         ; $5767: $0c
    nop                                           ; $5768: $00

jr_042_5769:
    ld b, b                                       ; $5769: $40
    db $10                                        ; $576a: $10
    ld c, $00                                     ; $576b: $0e $00
    db $10                                        ; $576d: $10
    jr jr_042_5780                                ; $576e: $18 $10

    nop                                           ; $5770: $00
    jr nz, @+$1a                                  ; $5771: $20 $18

    ld [de], a                                    ; $5773: $12
    nop                                           ; $5774: $00
    jr nc, jr_042_578f                            ; $5775: $30 $18

jr_042_5777:
    inc d                                         ; $5777: $14
    nop                                           ; $5778: $00
    ld b, b                                       ; $5779: $40
    jr jr_042_5792                                ; $577a: $18 $16

    nop                                           ; $577c: $00
    db $10                                        ; $577d: $10
    jr nz, jr_042_5798                            ; $577e: $20 $18

jr_042_5780:
    nop                                           ; $5780: $00
    jr nz, jr_042_57a3                            ; $5781: $20 $20

    ld a, [de]                                    ; $5783: $1a
    nop                                           ; $5784: $00
    jr nc, @+$22                                  ; $5785: $30 $20

    inc e                                         ; $5787: $1c
    nop                                           ; $5788: $00
    ld b, b                                       ; $5789: $40
    jr nz, jr_042_57aa                            ; $578a: $20 $1e

    nop                                           ; $578c: $00
    add b                                         ; $578d: $80
    db $10                                        ; $578e: $10

jr_042_578f:
    ld [$0000], sp                                ; $578f: $08 $00 $00

jr_042_5792:
    jr nz, @+$0a                                  ; $5792: $20 $08

    ld [bc], a                                    ; $5794: $02
    nop                                           ; $5795: $00
    jr nc, jr_042_57a0                            ; $5796: $30 $08

jr_042_5798:
    inc b                                         ; $5798: $04
    nop                                           ; $5799: $00
    ld b, b                                       ; $579a: $40
    ld [$0006], sp                                ; $579b: $08 $06 $00
    db $10                                        ; $579e: $10
    db $10                                        ; $579f: $10

jr_042_57a0:
    ld [$2000], sp                                ; $57a0: $08 $00 $20

jr_042_57a3:
    db $10                                        ; $57a3: $10
    ld a, [bc]                                    ; $57a4: $0a
    nop                                           ; $57a5: $00
    jr nc, jr_042_57b8                            ; $57a6: $30 $10

    inc c                                         ; $57a8: $0c
    nop                                           ; $57a9: $00

jr_042_57aa:
    ld b, b                                       ; $57aa: $40
    db $10                                        ; $57ab: $10
    ld c, $00                                     ; $57ac: $0e $00
    db $10                                        ; $57ae: $10
    jr jr_042_57c1                                ; $57af: $18 $10

    nop                                           ; $57b1: $00
    jr nz, @+$1a                                  ; $57b2: $20 $18

    ld [de], a                                    ; $57b4: $12
    nop                                           ; $57b5: $00
    jr nc, jr_042_57d0                            ; $57b6: $30 $18

jr_042_57b8:
    inc d                                         ; $57b8: $14
    nop                                           ; $57b9: $00
    ld b, b                                       ; $57ba: $40
    jr jr_042_57d3                                ; $57bb: $18 $16

    nop                                           ; $57bd: $00
    db $10                                        ; $57be: $10
    jr nz, jr_042_57d9                            ; $57bf: $20 $18

jr_042_57c1:
    nop                                           ; $57c1: $00
    jr nz, jr_042_57e4                            ; $57c2: $20 $20

    ld a, [de]                                    ; $57c4: $1a
    nop                                           ; $57c5: $00
    jr nc, @+$22                                  ; $57c6: $30 $20

    inc e                                         ; $57c8: $1c
    nop                                           ; $57c9: $00
    ld b, b                                       ; $57ca: $40
    jr nz, jr_042_57eb                            ; $57cb: $20 $1e

    nop                                           ; $57cd: $00
    add b                                         ; $57ce: $80
    db $10                                        ; $57cf: $10

jr_042_57d0:
    ld [$0000], sp                                ; $57d0: $08 $00 $00

jr_042_57d3:
    jr nz, @+$0a                                  ; $57d3: $20 $08

    ld [bc], a                                    ; $57d5: $02
    nop                                           ; $57d6: $00
    jr nc, jr_042_57e1                            ; $57d7: $30 $08

jr_042_57d9:
    inc b                                         ; $57d9: $04
    nop                                           ; $57da: $00
    ld b, b                                       ; $57db: $40
    ld [$0006], sp                                ; $57dc: $08 $06 $00
    db $10                                        ; $57df: $10
    db $10                                        ; $57e0: $10

jr_042_57e1:
    ld [$2000], sp                                ; $57e1: $08 $00 $20

jr_042_57e4:
    db $10                                        ; $57e4: $10
    ld a, [bc]                                    ; $57e5: $0a
    nop                                           ; $57e6: $00
    jr nc, jr_042_57f9                            ; $57e7: $30 $10

    inc c                                         ; $57e9: $0c
    nop                                           ; $57ea: $00

jr_042_57eb:
    ld b, b                                       ; $57eb: $40
    db $10                                        ; $57ec: $10
    ld c, $00                                     ; $57ed: $0e $00
    db $10                                        ; $57ef: $10
    jr jr_042_5802                                ; $57f0: $18 $10

    nop                                           ; $57f2: $00
    jr nz, @+$1a                                  ; $57f3: $20 $18

    ld [de], a                                    ; $57f5: $12
    nop                                           ; $57f6: $00
    jr nc, @+$1a                                  ; $57f7: $30 $18

jr_042_57f9:
    inc d                                         ; $57f9: $14
    nop                                           ; $57fa: $00
    ld b, b                                       ; $57fb: $40
    jr @+$18                                      ; $57fc: $18 $16

    nop                                           ; $57fe: $00
    db $10                                        ; $57ff: $10
    jr nz, jr_042_581a                            ; $5800: $20 $18

jr_042_5802:
    nop                                           ; $5802: $00
    jr nz, jr_042_5825                            ; $5803: $20 $20

    ld a, [de]                                    ; $5805: $1a
    nop                                           ; $5806: $00
    jr nc, jr_042_5829                            ; $5807: $30 $20

    inc e                                         ; $5809: $1c
    nop                                           ; $580a: $00
    ld b, b                                       ; $580b: $40
    jr nz, jr_042_582c                            ; $580c: $20 $1e

    nop                                           ; $580e: $00
    add b                                         ; $580f: $80

    db $00, $14, $00, $00, $01, $14, $00, $00, $ff

    nop                                           ; $5819: $00

jr_042_581a:
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    ld [bc], a                                    ; $581c: $02
    inc d                                         ; $581d: $14
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    inc bc                                        ; $5820: $03
    ld [$ff00], sp                                ; $5821: $08 $00 $ff
    inc b                                         ; $5824: $04

jr_042_5825:
    ld [$ff00], sp                                ; $5825: $08 $00 $ff
    dec b                                         ; $5828: $05

jr_042_5829:
    ld [$0000], sp                                ; $5829: $08 $00 $00

jr_042_582c:
    ld b, $06                                     ; $582c: $06 $06
    nop                                           ; $582e: $00
    ld bc, $0607                                  ; $582f: $01 $07 $06
    nop                                           ; $5832: $00
    ld bc, $0207                                  ; $5833: $01 $07 $02
    nop                                           ; $5836: $00
    ld [bc], a                                    ; $5837: $02
    rst $38                                       ; $5838: $ff
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    ld b, [hl]                                    ; $583c: $46
    ld e, b                                       ; $583d: $58
    ld c, [hl]                                    ; $583e: $4e
    ld e, b                                       ; $583f: $58
    ld e, h                                       ; $5840: $5c
    ld h, c                                       ; $5841: $61
    ld sp, $3d63                                  ; $5842: $31 $63 $3d
    ld h, e                                       ; $5845: $63
    rst $38                                       ; $5846: $ff
    ld l, e                                       ; $5847: $6b
    rst $38                                       ; $5848: $ff
    ld l, e                                       ; $5849: $6b
    ld e, a                                       ; $584a: $5f
    ld bc, $0000                                  ; $584b: $01 $00 $00
    ld h, b                                       ; $584e: $60
    ld e, b                                       ; $584f: $58
    sub [hl]                                      ; $5850: $96
    ld e, c                                       ; $5851: $59
    db $dd                                        ; $5852: $dd
    ld e, d                                       ; $5853: $5a
    dec e                                         ; $5854: $1d
    ld e, h                                       ; $5855: $5c
    ld e, a                                       ; $5856: $5f
    ld e, l                                       ; $5857: $5d
    ret nz                                        ; $5858: $c0

    ld e, [hl]                                    ; $5859: $5e
    ld b, $60                                     ; $585a: $06 $60
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    ld sp, hl                                     ; $5860: $f9
    nop                                           ; $5861: $00
    rst $38                                       ; $5862: $ff
    rst $38                                       ; $5863: $ff
    rst $20                                       ; $5864: $e7
    and $01                                       ; $5865: $e6 $01
    ld bc, $3131                                  ; $5867: $01 $31 $31
    ld d, d                                       ; $586a: $52
    rst $38                                       ; $586b: $ff
    ld [hl], e                                    ; $586c: $73
    ld c, l                                       ; $586d: $4d
    ld a, a                                       ; $586e: $7f
    ld b, c                                       ; $586f: $41
    ld a, a                                       ; $5870: $7f
    ld hl, $103f                                  ; $5871: $21 $3f $10
    ld a, a                                       ; $5874: $7f
    rra                                           ; $5875: $1f
    ld [$060f], sp                                ; $5876: $08 $0f $06
    rlca                                          ; $5879: $07
    ld bc, $dc01                                  ; $587a: $01 $01 $dc
    rst $28                                       ; $587d: $ef
    add [hl]                                      ; $587e: $86
    cp $e1                                        ; $587f: $fe $e1
    inc bc                                        ; $5881: $03
    ld [bc], a                                    ; $5882: $02
    cp $e1                                        ; $5883: $fe $e1
    ld [c], a                                     ; $5885: $e2
    rst $28                                       ; $5886: $ef
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    and $e5                                       ; $5889: $e6 $e5
    rlca                                          ; $588b: $07
    rst $38                                       ; $588c: $ff
    rlca                                          ; $588d: $07
    jr @+$21                                      ; $588e: $18 $1f

    inc hl                                        ; $5890: $23
    ccf                                           ; $5891: $3f
    ld c, [hl]                                    ; $5892: $4e
    ld a, l                                       ; $5893: $7d
    ld e, [hl]                                    ; $5894: $5e
    rst $38                                       ; $5895: $ff
    ld [hl], c                                    ; $5896: $71
    cp a                                          ; $5897: $bf
    rst $20                                       ; $5898: $e7
    ei                                            ; $5899: $fb
    db $fc                                        ; $589a: $fc
    rst $28                                       ; $589b: $ef
    or e                                          ; $589c: $b3
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    call z, $f2ff                                 ; $589f: $cc $ff $f2
    ld a, a                                       ; $58a2: $7f
    call z, $d27f                                 ; $58a3: $cc $7f $d2
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    or $ff                                        ; $58a8: $f6 $ff
    ld d, [hl]                                    ; $58aa: $56
    rst $38                                       ; $58ab: $ff
    ld l, $ff                                     ; $58ac: $2e $ff
    jr nz, @+$01                                  ; $58ae: $20 $ff

    rst $38                                       ; $58b0: $ff
    pop hl                                        ; $58b1: $e1
    rra                                           ; $58b2: $1f
    ldh a, [rIF]                                  ; $58b3: $f0 $0f
    ld hl, sp-$39                                 ; $58b5: $f8 $c7
    cp $3f                                        ; $58b7: $fe $3f
    rst $38                                       ; $58b9: $ff
    ccf                                           ; $58ba: $3f
    dec [hl]                                      ; $58bb: $35
    ccf                                           ; $58bc: $3f
    ld [hl], a                                    ; $58bd: $77
    ld e, [hl]                                    ; $58be: $5e
    db $e3                                        ; $58bf: $e3
    cp a                                          ; $58c0: $bf
    ldh [rIE], a                                  ; $58c1: $e0 $ff
    cp a                                          ; $58c3: $bf
    ldh [rIE], a                                  ; $58c4: $e0 $ff
    ldh a, [$9f]                                  ; $58c6: $f0 $9f
    ldh a, [$9f]                                  ; $58c8: $f0 $9f
    rst $38                                       ; $58ca: $ff
    ld a, a                                       ; $58cb: $7f
    rra                                           ; $58cc: $1f
    db $f4                                        ; $58cd: $f4
    inc e                                         ; $58ce: $1c
    rst $38                                       ; $58cf: $ff
    cp a                                          ; $58d0: $bf
    ldh [$3f], a                                  ; $58d1: $e0 $3f
    ldh a, [$e1]                                  ; $58d3: $f0 $e1
    rst $38                                       ; $58d5: $ff
    call nz, $c37f                                ; $58d6: $c4 $7f $c3
    rst $38                                       ; $58d9: $ff
    ld b, c                                       ; $58da: $41
    ld a, a                                       ; $58db: $7f
    ld a, a                                       ; $58dc: $7f
    ld a, a                                       ; $58dd: $7f
    ld a, e                                       ; $58de: $7b
    ccf                                           ; $58df: $3f
    ld hl, $e1fe                                  ; $58e0: $21 $fe $e1
    rra                                           ; $58e3: $1f
    inc de                                        ; $58e4: $13
    rra                                           ; $58e5: $1f
    ld de, $e0fe                                  ; $58e6: $11 $fe $e0
    rst $38                                       ; $58e9: $ff
    rra                                           ; $58ea: $1f
    rra                                           ; $58eb: $1f
    ld de, $717f                                  ; $58ec: $11 $7f $71
    adc a                                         ; $58ef: $8f
    rst $38                                       ; $58f0: $ff
    adc c                                         ; $58f1: $89
    ld a, a                                       ; $58f2: $7f
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    add c                                         ; $58f6: $81
    rst $38                                       ; $58f7: $ff
    ld a, [hl]                                    ; $58f8: $7e
    ld a, [hl]                                    ; $58f9: $7e
    halt                                          ; $58fa: $76
    push af                                       ; $58fb: $f5
    rst $38                                       ; $58fc: $ff
    ldh a, [$f0]                                  ; $58fd: $f0 $f0
    inc c                                         ; $58ff: $0c
    db $fc                                        ; $5900: $fc
    ld [c], a                                     ; $5901: $e2
    cp $b9                                        ; $5902: $fe $b9
    ld e, a                                       ; $5904: $5f
    rst $38                                       ; $5905: $ff
    dec a                                         ; $5906: $3d
    rst $00                                       ; $5907: $c7
    cp $f3                                        ; $5908: $fe $f3
    rst $28                                       ; $590a: $ef
    rra                                           ; $590b: $1f
    ei                                            ; $590c: $fb
    and $ef                                       ; $590d: $e6 $ef
    rst $38                                       ; $590f: $ff
    add hl, de                                    ; $5910: $19
    rst $38                                       ; $5911: $ff
    daa                                           ; $5912: $27
    db $fc                                        ; $5913: $fc
    ldh [rNR51], a                                ; $5914: $e0 $25
    rst $38                                       ; $5916: $ff
    scf                                           ; $5917: $37
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    dec [hl]                                      ; $591a: $35
    rst $38                                       ; $591b: $ff
    cp d                                          ; $591c: $ba
    rst $38                                       ; $591d: $ff
    ld [bc], a                                    ; $591e: $02
    rst $38                                       ; $591f: $ff
    jp $fcff                                      ; $5920: $c3 $ff $fc


    add a                                         ; $5923: $87
    ld hl, sp+$0f                                 ; $5924: $f8 $0f
    ld sp, hl                                     ; $5926: $f9
    ccf                                           ; $5927: $3f
    sbc $fe                                       ; $5928: $de $fe
    rst $38                                       ; $592a: $ff
    inc l                                         ; $592b: $2c
    db $fc                                        ; $592c: $fc
    sbc $f2                                       ; $592d: $de $f2
    rra                                           ; $592f: $1f
    pop af                                        ; $5930: $f1
    rra                                           ; $5931: $1f
    di                                            ; $5932: $f3
    rst $38                                       ; $5933: $ff
    rrca                                          ; $5934: $0f
    db $fd                                        ; $5935: $fd
    rra                                           ; $5936: $1f
    ld hl, sp+$2f                                 ; $5937: $f8 $2f
    add sp, -$19                                  ; $5939: $e8 $e7
    and $ff                                       ; $593b: $e6 $ff
    and a                                         ; $593d: $a7
    db $e4                                        ; $593e: $e4
    rst $30                                       ; $593f: $f7
    or $09                                        ; $5940: $f6 $09
    rst $38                                       ; $5942: $ff
    inc d                                         ; $5943: $14
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    inc e                                         ; $5946: $1c
    rst $38                                       ; $5947: $ff
    sub b                                         ; $5948: $90
    rst $38                                       ; $5949: $ff
    add hl, bc                                    ; $594a: $09
    rst $38                                       ; $594b: $ff
    ld b, $fe                                     ; $594c: $06 $fe
    rst $38                                       ; $594e: $ff
    db $fc                                        ; $594f: $fc
    db $fc                                        ; $5950: $fc
    cp $82                                        ; $5951: $fe $82
    ld a, [hl]                                    ; $5953: $7e
    ld b, d                                       ; $5954: $42
    ld a, [hl]                                    ; $5955: $7e
    ld b, d                                       ; $5956: $42
    rst $08                                       ; $5957: $cf
    ld a, $22                                     ; $5958: $3e $22
    ld a, $22                                     ; $595a: $3e $22
    ld a, d                                       ; $595c: $7a
    ldh [$80], a                                  ; $595d: $e0 $80
    ldh [$1f], a                                  ; $595f: $e0 $1f
    rla                                           ; $5961: $17
    rst $30                                       ; $5962: $f7
    jr @+$21                                      ; $5963: $18 $1f

    db $10                                        ; $5965: $10
    ld [hl], a                                    ; $5966: $77
    ldh [rNR10], a                                ; $5967: $e0 $10
    rra                                           ; $5969: $1f
    rrca                                          ; $596a: $0f
    rrca                                          ; $596b: $0f
    ld a, [$dff6]                                 ; $596c: $fa $f6 $df
    add b                                         ; $596f: $80
    rst $38                                       ; $5970: $ff
    and $40                                       ; $5971: $e6 $40
    ret nz                                        ; $5973: $c0

    ld b, [hl]                                    ; $5974: $46
    add $a5                                       ; $5975: $c6 $a5
    rst $38                                       ; $5977: $ff
    rst $20                                       ; $5978: $e7
    reti                                          ; $5979: $d9


    ld a, a                                       ; $597a: $7f
    pop bc                                        ; $597b: $c1
    ld a, a                                       ; $597c: $7f
    jp nz, $847e                                  ; $597d: $c2 $7e $84

    ld a, a                                       ; $5980: $7f
    db $fc                                        ; $5981: $fc
    ld [$30f8], sp                                ; $5982: $08 $f8 $30
    ldh a, [$c0]                                  ; $5985: $f0 $c0
    ret nz                                        ; $5987: $c0

    sub $ed                                       ; $5988: $d6 $ed
    inc bc                                        ; $598a: $03
    ret nz                                        ; $598b: $c0

    ld b, b                                       ; $598c: $40
    cp $e3                                        ; $598d: $fe $e3
    jp z, $ace3                                   ; $598f: $ca $e3 $ac

    rst $38                                       ; $5992: $ff
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    ld sp, hl                                     ; $5996: $f9
    nop                                           ; $5997: $00
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $20                                       ; $599a: $e7
    and $01                                       ; $599b: $e6 $01
    ld bc, $3131                                  ; $599d: $01 $31 $31
    ld d, d                                       ; $59a0: $52
    rst $38                                       ; $59a1: $ff
    ld [hl], e                                    ; $59a2: $73
    ld c, l                                       ; $59a3: $4d
    ld a, a                                       ; $59a4: $7f
    ld b, c                                       ; $59a5: $41
    ld a, a                                       ; $59a6: $7f
    ld hl, $103f                                  ; $59a7: $21 $3f $10
    rst $38                                       ; $59aa: $ff
    rra                                           ; $59ab: $1f
    ld c, $0f                                     ; $59ac: $0e $0f
    rra                                           ; $59ae: $1f
    add hl, de                                    ; $59af: $19
    ccf                                           ; $59b0: $3f
    dec [hl]                                      ; $59b1: $35
    ccf                                           ; $59b2: $3f
    rst $38                                       ; $59b3: $ff
    ld a, [hl+]                                   ; $59b4: $2a
    ccf                                           ; $59b5: $3f
    ld hl, $121f                                  ; $59b6: $21 $1f $12
    rra                                           ; $59b9: $1f
    ld de, $ff0f                                  ; $59ba: $11 $0f $ff
    ld [$080f], sp                                ; $59bd: $08 $0f $08
    rlca                                          ; $59c0: $07
    inc b                                         ; $59c1: $04
    inc bc                                        ; $59c2: $03
    ld [bc], a                                    ; $59c3: $02
    ld bc, $01f9                                  ; $59c4: $01 $f9 $01
    cp b                                          ; $59c7: $b8
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    rlca                                          ; $59cd: $07
    rlca                                          ; $59ce: $07
    jr @+$01                                      ; $59cf: $18 $ff

    rra                                           ; $59d1: $1f
    inc hl                                        ; $59d2: $23
    ccf                                           ; $59d3: $3f
    ld c, [hl]                                    ; $59d4: $4e
    ld a, l                                       ; $59d5: $7d
    ld e, [hl]                                    ; $59d6: $5e
    ld [hl], c                                    ; $59d7: $71
    cp a                                          ; $59d8: $bf
    rst $38                                       ; $59d9: $ff
    rst $20                                       ; $59da: $e7
    ei                                            ; $59db: $fb
    db $fc                                        ; $59dc: $fc
    rst $28                                       ; $59dd: $ef
    or e                                          ; $59de: $b3
    rst $38                                       ; $59df: $ff
    call z, $ffff                                 ; $59e0: $cc $ff $ff
    ld a, [c]                                     ; $59e3: $f2
    ld a, a                                       ; $59e4: $7f
    call z, $d27f                                 ; $59e5: $cc $7f $d2
    rst $38                                       ; $59e8: $ff
    or $ff                                        ; $59e9: $f6 $ff
    rst $38                                       ; $59eb: $ff
    ld d, [hl]                                    ; $59ec: $56
    rst $38                                       ; $59ed: $ff
    ld l, $ff                                     ; $59ee: $2e $ff
    jr nz, @+$01                                  ; $59f0: $20 $ff

    pop hl                                        ; $59f2: $e1
    rra                                           ; $59f3: $1f
    rst $38                                       ; $59f4: $ff
    pop af                                        ; $59f5: $f1
    rrca                                          ; $59f6: $0f
    ld sp, hl                                     ; $59f7: $f9
    rst $00                                       ; $59f8: $c7
    cp $ff                                        ; $59f9: $fe $ff
    cp a                                          ; $59fb: $bf
    push af                                       ; $59fc: $f5
    rst $38                                       ; $59fd: $ff
    ld e, a                                       ; $59fe: $5f
    rst $30                                       ; $59ff: $f7
    sbc [hl]                                      ; $5a00: $9e
    db $e3                                        ; $5a01: $e3
    ccf                                           ; $5a02: $3f
    ldh [$bf], a                                  ; $5a03: $e0 $bf
    ldh [rIE], a                                  ; $5a05: $e0 $ff
    rst $38                                       ; $5a07: $ff
    ldh a, [$3f]                                  ; $5a08: $f0 $3f
    ret nc                                        ; $5a0a: $d0

    ld e, a                                       ; $5a0b: $5f
    sbc a                                         ; $5a0c: $9f
    sbc a                                         ; $5a0d: $9f
    inc d                                         ; $5a0e: $14
    rst $28                                       ; $5a0f: $ef
    inc e                                         ; $5a10: $1c
    ccf                                           ; $5a11: $3f
    ccf                                           ; $5a12: $3f

jr_042_5a13:
    jr nz, jr_042_5a13                            ; $5a13: $20 $fe

    ld [c], a                                     ; $5a15: $e2
    ld b, h                                       ; $5a16: $44
    ld a, a                                       ; $5a17: $7f
    ld b, e                                       ; $5a18: $43
    sbc $54                                       ; $5a19: $de $54
    ldh [$7f], a                                  ; $5a1b: $e0 $7f
    ld a, a                                       ; $5a1d: $7f
    ccf                                           ; $5a1e: $3f
    ld hl, $e1fe                                  ; $5a1f: $21 $fe $e1
    rra                                           ; $5a22: $1f
    inc de                                        ; $5a23: $13
    ei                                            ; $5a24: $fb
    rra                                           ; $5a25: $1f
    ld de, $e0fe                                  ; $5a26: $11 $fe $e0
    rra                                           ; $5a29: $1f
    rra                                           ; $5a2a: $1f
    ld de, $717f                                  ; $5a2b: $11 $7f $71
    rst $38                                       ; $5a2e: $ff
    adc a                                         ; $5a2f: $8f
    rst $38                                       ; $5a30: $ff
    adc c                                         ; $5a31: $89
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    add c                                         ; $5a35: $81
    rst $38                                       ; $5a36: $ff
    ei                                            ; $5a37: $fb
    ld a, [hl]                                    ; $5a38: $7e
    ld a, [hl]                                    ; $5a39: $7e
    halt                                          ; $5a3a: $76
    push af                                       ; $5a3b: $f5
    ldh a, [$f0]                                  ; $5a3c: $f0 $f0
    inc c                                         ; $5a3e: $0c
    db $fc                                        ; $5a3f: $fc
    ld [c], a                                     ; $5a40: $e2
    rst $38                                       ; $5a41: $ff
    cp $b9                                        ; $5a42: $fe $b9
    ld e, a                                       ; $5a44: $5f
    dec a                                         ; $5a45: $3d
    rst $00                                       ; $5a46: $c7
    cp $f3                                        ; $5a47: $fe $f3
    rst $28                                       ; $5a49: $ef
    rst $38                                       ; $5a4a: $ff
    rra                                           ; $5a4b: $1f
    ei                                            ; $5a4c: $fb
    and $ff                                       ; $5a4d: $e6 $ff
    add hl, de                                    ; $5a4f: $19
    rst $38                                       ; $5a50: $ff
    daa                                           ; $5a51: $27
    rst $38                                       ; $5a52: $ff
    db $fd                                        ; $5a53: $fd
    ld bc, $e0fa                                  ; $5a54: $01 $fa $e0
    rlca                                          ; $5a57: $07
    rst $38                                       ; $5a58: $ff
    dec a                                         ; $5a59: $3d
    rst $38                                       ; $5a5a: $ff
    sbc d                                         ; $5a5b: $9a
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    ld [bc], a                                    ; $5a5e: $02
    rst $38                                       ; $5a5f: $ff
    jp $c77c                                      ; $5a60: $c3 $7c $c7


    ld a, b                                       ; $5a63: $78
    rst $08                                       ; $5a64: $cf
    ld sp, hl                                     ; $5a65: $f9
    rst $38                                       ; $5a66: $ff
    cp a                                          ; $5a67: $bf
    rst $18                                       ; $5a68: $df
    cp $2f                                        ; $5a69: $fe $2f
    ld a, [$f1df]                                 ; $5a6b: $fa $df $f1
    rra                                           ; $5a6e: $1f
    rst $38                                       ; $5a6f: $ff
    pop af                                        ; $5a70: $f1
    rra                                           ; $5a71: $1f
    ld a, [c]                                     ; $5a72: $f2
    rrca                                          ; $5a73: $0f
    db $fc                                        ; $5a74: $fc
    rra                                           ; $5a75: $1f
    ld hl, sp+$27                                 ; $5a76: $f8 $27
    rst $38                                       ; $5a78: $ff
    db $e4                                        ; $5a79: $e4
    db $e3                                        ; $5a7a: $e3
    db $e3                                        ; $5a7b: $e3
    and b                                         ; $5a7c: $a0
    ldh [$f0], a                                  ; $5a7d: $e0 $f0
    ldh a, [$08]                                  ; $5a7f: $f0 $08
    db $dd                                        ; $5a81: $dd
    ld hl, sp-$02                                 ; $5a82: $f8 $fe
    pop hl                                        ; $5a84: $e1
    add h                                         ; $5a85: $84
    db $fc                                        ; $5a86: $fc
    inc b                                         ; $5a87: $04
    cp $e0                                        ; $5a88: $fe $e0
    db $fc                                        ; $5a8a: $fc
    db $fc                                        ; $5a8b: $fc
    rst $38                                       ; $5a8c: $ff
    cp $82                                        ; $5a8d: $fe $82
    ld a, [hl]                                    ; $5a8f: $7e
    ld b, d                                       ; $5a90: $42
    ld a, [hl]                                    ; $5a91: $7e
    ld b, d                                       ; $5a92: $42

jr_042_5a93:
    ld a, $22                                     ; $5a93: $3e $22
    di                                            ; $5a95: $f3
    ld a, $22                                     ; $5a96: $3e $22
    call nc, $80c0                                ; $5a98: $d4 $c0 $80
    ldh [$1f], a                                  ; $5a9b: $e0 $1f
    rla                                           ; $5a9d: $17
    jr jr_042_5abf                                ; $5a9e: $18 $1f

    cp l                                          ; $5aa0: $bd
    db $10                                        ; $5aa1: $10
    ld [hl], a                                    ; $5aa2: $77
    ldh [rNR10], a                                ; $5aa3: $e0 $10
    rra                                           ; $5aa5: $1f
    rrca                                          ; $5aa6: $0f
    rrca                                          ; $5aa7: $0f
    or $df                                        ; $5aa8: $f6 $df
    add b                                         ; $5aaa: $80
    cp $ff                                        ; $5aab: $fe $ff
    and $40                                       ; $5aad: $e6 $40
    ret nz                                        ; $5aaf: $c0

    ld b, [hl]                                    ; $5ab0: $46
    add $a5                                       ; $5ab1: $c6 $a5
    rst $20                                       ; $5ab3: $e7
    reti                                          ; $5ab4: $d9


    rst $38                                       ; $5ab5: $ff
    ld a, a                                       ; $5ab6: $7f
    pop bc                                        ; $5ab7: $c1
    ld a, a                                       ; $5ab8: $7f
    jp nz, $847e                                  ; $5ab9: $c2 $7e $84

    db $fc                                        ; $5abc: $fc
    jr c, @+$01                                   ; $5abd: $38 $ff

jr_042_5abf:
    ld hl, sp+$48                                 ; $5abf: $f8 $48
    ld hl, sp-$3c                                 ; $5ac1: $f8 $c4
    db $fc                                        ; $5ac3: $fc
    and h                                         ; $5ac4: $a4
    db $fc                                        ; $5ac5: $fc
    call nc, Call_042_7cff                        ; $5ac6: $d4 $ff $7c
    call nz, $f87c                                ; $5ac9: $c4 $7c $f8
    cp b                                          ; $5acc: $b8
    ldh a, [rNR10]                                ; $5acd: $f0 $10
    ldh [$1f], a                                  ; $5acf: $e0 $1f
    jr nz, jr_042_5a93                            ; $5ad1: $20 $c0

    ld b, b                                       ; $5ad3: $40
    add b                                         ; $5ad4: $80
    add b                                         ; $5ad5: $80
    or b                                          ; $5ad6: $b0
    rst $38                                       ; $5ad7: $ff
    xor h                                         ; $5ad8: $ac
    db $eb                                        ; $5ad9: $eb
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    ld sp, hl                                     ; $5add: $f9
    nop                                           ; $5ade: $00
    rst $38                                       ; $5adf: $ff
    rst $38                                       ; $5ae0: $ff
    rst $20                                       ; $5ae1: $e7
    and $01                                       ; $5ae2: $e6 $01
    ld bc, $3131                                  ; $5ae4: $01 $31 $31
    ld d, d                                       ; $5ae7: $52
    rst $38                                       ; $5ae8: $ff
    ld [hl], e                                    ; $5ae9: $73
    ld c, l                                       ; $5aea: $4d
    ld a, a                                       ; $5aeb: $7f
    ld b, c                                       ; $5aec: $41
    ld a, a                                       ; $5aed: $7f
    ld hl, $103f                                  ; $5aee: $21 $3f $10
    rst $38                                       ; $5af1: $ff
    rra                                           ; $5af2: $1f
    inc e                                         ; $5af3: $1c
    rra                                           ; $5af4: $1f
    ld a, $33                                     ; $5af5: $3e $33
    ld a, a                                       ; $5af7: $7f
    ld l, e                                       ; $5af8: $6b
    ld a, a                                       ; $5af9: $7f
    rst $38                                       ; $5afa: $ff
    ld d, l                                       ; $5afb: $55
    ld a, a                                       ; $5afc: $7f
    ld b, d                                       ; $5afd: $42
    ccf                                           ; $5afe: $3f
    dec h                                         ; $5aff: $25
    ccf                                           ; $5b00: $3f
    ld [hl+], a                                   ; $5b01: $22
    ccf                                           ; $5b02: $3f
    rst $38                                       ; $5b03: $ff
    ld [hl+], a                                   ; $5b04: $22
    rra                                           ; $5b05: $1f
    ld de, $101f                                  ; $5b06: $11 $1f $10
    rrca                                          ; $5b09: $0f
    ld [$f907], sp                                ; $5b0a: $08 $07 $f9
    rlca                                          ; $5b0d: $07
    cp b                                          ; $5b0e: $b8
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    rlca                                          ; $5b14: $07
    rlca                                          ; $5b15: $07
    jr @+$01                                      ; $5b16: $18 $ff

    rra                                           ; $5b18: $1f
    inc hl                                        ; $5b19: $23
    ccf                                           ; $5b1a: $3f
    ld c, [hl]                                    ; $5b1b: $4e
    ld a, l                                       ; $5b1c: $7d
    ld e, [hl]                                    ; $5b1d: $5e
    ld [hl], c                                    ; $5b1e: $71
    cp a                                          ; $5b1f: $bf
    rst $38                                       ; $5b20: $ff
    rst $20                                       ; $5b21: $e7
    ei                                            ; $5b22: $fb
    db $fc                                        ; $5b23: $fc
    rst $28                                       ; $5b24: $ef
    or e                                          ; $5b25: $b3
    rst $38                                       ; $5b26: $ff
    call z, $ffff                                 ; $5b27: $cc $ff $ff
    ld a, [c]                                     ; $5b2a: $f2
    ld a, a                                       ; $5b2b: $7f
    ret nz                                        ; $5b2c: $c0

    ld a, a                                       ; $5b2d: $7f
    call z, $feff                                 ; $5b2e: $cc $ff $fe
    rst $38                                       ; $5b31: $ff
    rst $30                                       ; $5b32: $f7
    ld d, d                                       ; $5b33: $52
    rst $38                                       ; $5b34: $ff

jr_042_5b35:
    jr nz, jr_042_5b35                            ; $5b35: $20 $fe

    ldh [$e1], a                                  ; $5b37: $e0 $e1
    rra                                           ; $5b39: $1f
    ldh a, [rIF]                                  ; $5b3a: $f0 $0f
    rst $38                                       ; $5b3c: $ff
    ld hl, sp-$79                                 ; $5b3d: $f8 $87
    cp $fb                                        ; $5b3f: $fe $fb
    ld a, a                                       ; $5b41: $7f
    push af                                       ; $5b42: $f5
    rst $18                                       ; $5b43: $df
    di                                            ; $5b44: $f3
    rst $38                                       ; $5b45: $ff
    ld e, $f1                                     ; $5b46: $1e $f1
    rra                                           ; $5b48: $1f
    ldh a, [$1f]                                  ; $5b49: $f0 $1f
    ldh a, [$9f]                                  ; $5b4b: $f0 $9f
    ldh a, [rIE]                                  ; $5b4d: $f0 $ff
    ld e, a                                       ; $5b4f: $5f
    ldh a, [rIE]                                  ; $5b50: $f0 $ff
    rrca                                          ; $5b52: $0f
    rrca                                          ; $5b53: $0f
    dec bc                                        ; $5b54: $0b
    ld c, $1f                                     ; $5b55: $0e $1f
    ei                                            ; $5b57: $fb
    rra                                           ; $5b58: $1f
    db $10                                        ; $5b59: $10
    cp $e2                                        ; $5b5a: $fe $e2
    ld [hl+], a                                   ; $5b5c: $22
    ccf                                           ; $5b5d: $3f
    ld hl, $203f                                  ; $5b5e: $21 $3f $20
    rst $20                                       ; $5b61: $e7
    ccf                                           ; $5b62: $3f
    ccf                                           ; $5b63: $3f
    ccf                                           ; $5b64: $3f
    ld h, [hl]                                    ; $5b65: $66
    ldh [$fe], a                                  ; $5b66: $e0 $fe
    ldh [$3f], a                                  ; $5b68: $e0 $3f
    ld hl, $fd3e                                  ; $5b6a: $21 $3e $fd
    ld [hl+], a                                   ; $5b6d: $22
    cp $e0                                        ; $5b6e: $fe $e0
    ld a, $3e                                     ; $5b70: $3e $3e
    ld [hl+], a                                   ; $5b72: $22
    ld a, [hl]                                    ; $5b73: $7e
    ld [hl], d                                    ; $5b74: $72
    adc [hl]                                      ; $5b75: $8e
    rst $38                                       ; $5b76: $ff
    cp $8a                                        ; $5b77: $fe $8a
    cp $fe                                        ; $5b79: $fe $fe
    cp $82                                        ; $5b7b: $fe $82
    cp $7e                                        ; $5b7d: $fe $7e
    db $fd                                        ; $5b7f: $fd
    ld a, [hl]                                    ; $5b80: $7e
    halt                                          ; $5b81: $76
    push af                                       ; $5b82: $f5
    ldh a, [$f0]                                  ; $5b83: $f0 $f0
    inc c                                         ; $5b85: $0c
    db $fc                                        ; $5b86: $fc
    ld [c], a                                     ; $5b87: $e2
    cp $ff                                        ; $5b88: $fe $ff
    cp c                                          ; $5b8a: $b9
    ld e, a                                       ; $5b8b: $5f
    dec a                                         ; $5b8c: $3d
    rst $00                                       ; $5b8d: $c7
    cp $f3                                        ; $5b8e: $fe $f3
    rst $28                                       ; $5b90: $ef
    rra                                           ; $5b91: $1f
    rst $38                                       ; $5b92: $ff
    ei                                            ; $5b93: $fb
    and $ff                                       ; $5b94: $e6 $ff
    add hl, de                                    ; $5b96: $19
    rst $38                                       ; $5b97: $ff
    daa                                           ; $5b98: $27
    rst $38                                       ; $5b99: $ff
    ld bc, $fafe                                  ; $5b9a: $01 $fe $fa
    ldh [$3f], a                                  ; $5b9d: $e0 $3f
    rst $38                                       ; $5b9f: $ff
    dec h                                         ; $5ba0: $25
    rst $38                                       ; $5ba1: $ff
    add d                                         ; $5ba2: $82
    rst $38                                       ; $5ba3: $ff
    ld [bc], a                                    ; $5ba4: $02
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    jp $87fc                                      ; $5ba7: $c3 $fc $87


    ld hl, sp+$0f                                 ; $5baa: $f8 $0f
    pop af                                        ; $5bac: $f1
    ccf                                           ; $5bad: $3f
    rst $38                                       ; $5bae: $ff
    rst $18                                       ; $5baf: $df
    cp $af                                        ; $5bb0: $fe $af
    ei                                            ; $5bb2: $fb
    rst $08                                       ; $5bb3: $cf
    ld a, b                                       ; $5bb4: $78
    adc a                                         ; $5bb5: $8f
    ld hl, sp-$01                                 ; $5bb6: $f8 $ff
    rrca                                          ; $5bb8: $0f
    ld sp, hl                                     ; $5bb9: $f9
    rrca                                          ; $5bba: $0f
    ld a, [$fc0f]                                 ; $5bbb: $fa $0f $fc
    dec bc                                        ; $5bbe: $0b
    ei                                            ; $5bbf: $fb
    rst $38                                       ; $5bc0: $ff
    ldh a, [$f0]                                  ; $5bc1: $f0 $f0
    ret nc                                        ; $5bc3: $d0

    ld [hl], b                                    ; $5bc4: $70
    ld hl, sp-$08                                 ; $5bc5: $f8 $f8
    inc b                                         ; $5bc7: $04
    db $fc                                        ; $5bc8: $fc
    ld l, d                                       ; $5bc9: $6a
    cp $e1                                        ; $5bca: $fe $e1
    ld b, d                                       ; $5bcc: $42
    sbc [hl]                                      ; $5bcd: $9e
    ldh [$82], a                                  ; $5bce: $e0 $82
    sbc b                                         ; $5bd0: $98
    ldh [$7c], a                                  ; $5bd1: $e0 $7c
    ld b, h                                       ; $5bd3: $44
    cp $e1                                        ; $5bd4: $fe $e1
    ei                                            ; $5bd6: $fb
    ld a, [hl]                                    ; $5bd7: $7e
    ld b, d                                       ; $5bd8: $42
    add b                                         ; $5bd9: $80
    push hl                                       ; $5bda: $e5
    ccf                                           ; $5bdb: $3f
    daa                                           ; $5bdc: $27
    jr c, jr_042_5c1e                             ; $5bdd: $38 $3f

    jr z, jr_042_5c3f                             ; $5bdf: $28 $5e

    ld l, b                                       ; $5be1: $68
    ldh [rNR41], a                                ; $5be2: $e0 $20
    ccf                                           ; $5be4: $3f
    rra                                           ; $5be5: $1f
    rra                                           ; $5be6: $1f
    or $df                                        ; $5be7: $f6 $df
    add b                                         ; $5be9: $80
    rst $38                                       ; $5bea: $ff
    and $ff                                       ; $5beb: $e6 $ff
    ld b, b                                       ; $5bed: $40
    ret nz                                        ; $5bee: $c0

    ld b, [hl]                                    ; $5bef: $46
    add $a5                                       ; $5bf0: $c6 $a5
    rst $20                                       ; $5bf2: $e7
    reti                                          ; $5bf3: $d9


    ld a, a                                       ; $5bf4: $7f
    rst $38                                       ; $5bf5: $ff
    pop bc                                        ; $5bf6: $c1
    ld a, a                                       ; $5bf7: $7f
    jp nz, $847e                                  ; $5bf8: $c2 $7e $84

    db $fc                                        ; $5bfb: $fc
    inc e                                         ; $5bfc: $1c
    db $fc                                        ; $5bfd: $fc
    db $fd                                        ; $5bfe: $fd
    inc h                                         ; $5bff: $24
    ld e, [hl]                                    ; $5c00: $5e
    ldh [$d2], a                                  ; $5c01: $e0 $d2
    ld a, [hl]                                    ; $5c03: $7e
    ld [$e23e], a                                 ; $5c04: $ea $3e $e2
    cp [hl]                                       ; $5c07: $be
    rst $38                                       ; $5c08: $ff
    db $fc                                        ; $5c09: $fc
    ld e, h                                       ; $5c0a: $5c
    ld hl, sp-$78                                 ; $5c0b: $f8 $88
    ld hl, sp-$78                                 ; $5c0d: $f8 $88
    ldh a, [rNR10]                                ; $5c0f: $f0 $10
    rrca                                          ; $5c11: $0f
    ldh [rNR41], a                                ; $5c12: $e0 $20
    ret nz                                        ; $5c14: $c0

    ret nz                                        ; $5c15: $c0

    xor [hl]                                      ; $5c16: $ae
    rst $38                                       ; $5c17: $ff
    xor h                                         ; $5c18: $ac
    jp hl                                         ; $5c19: $e9


    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    ld sp, hl                                     ; $5c1d: $f9

jr_042_5c1e:
    nop                                           ; $5c1e: $00
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $28                                       ; $5c21: $ef
    xor $19                                       ; $5c22: $ee $19
    add hl, de                                    ; $5c24: $19
    add hl, hl                                    ; $5c25: $29
    add hl, sp                                    ; $5c26: $39
    ld h, $fb                                     ; $5c27: $26 $fb
    ccf                                           ; $5c29: $3f
    ld hl, $e0fe                                  ; $5c2a: $21 $fe $e0
    ld de, $101f                                  ; $5c2d: $11 $1f $10
    rra                                           ; $5c30: $1f
    ld [$0fff], sp                                ; $5c31: $08 $ff $0f
    inc e                                         ; $5c34: $1c
    rra                                           ; $5c35: $1f
    ccf                                           ; $5c36: $3f
    scf                                           ; $5c37: $37
    ld a, a                                       ; $5c38: $7f
    ld l, e                                       ; $5c39: $6b
    ld a, a                                       ; $5c3a: $7f
    rst $38                                       ; $5c3b: $ff
    ld d, l                                       ; $5c3c: $55
    ld a, a                                       ; $5c3d: $7f
    ld b, d                                       ; $5c3e: $42

jr_042_5c3f:
    ccf                                           ; $5c3f: $3f
    dec h                                         ; $5c40: $25
    ccf                                           ; $5c41: $3f
    ld [hl+], a                                   ; $5c42: $22
    rra                                           ; $5c43: $1f
    rst $38                                       ; $5c44: $ff
    ld de, $111f                                  ; $5c45: $11 $1f $11
    rrca                                          ; $5c48: $0f
    ld [$0407], sp                                ; $5c49: $08 $07 $04
    inc bc                                        ; $5c4c: $03
    ld sp, hl                                     ; $5c4d: $f9
    inc bc                                        ; $5c4e: $03
    or [hl]                                       ; $5c4f: $b6
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    rlca                                          ; $5c53: $07
    rlca                                          ; $5c54: $07
    jr jr_042_5c76                                ; $5c55: $18 $1f

    inc hl                                        ; $5c57: $23
    rst $38                                       ; $5c58: $ff
    ccf                                           ; $5c59: $3f
    ld c, [hl]                                    ; $5c5a: $4e
    ld a, l                                       ; $5c5b: $7d
    ld e, [hl]                                    ; $5c5c: $5e
    ld [hl], c                                    ; $5c5d: $71
    cp a                                          ; $5c5e: $bf
    rst $20                                       ; $5c5f: $e7
    ld hl, sp-$01                                 ; $5c60: $f8 $ff
    rst $28                                       ; $5c62: $ef
    ldh a, [$bf]                                  ; $5c63: $f0 $bf
    rst $28                                       ; $5c65: $ef
    ldh a, [rIE]                                  ; $5c66: $f0 $ff
    rst $08                                       ; $5c68: $cf
    ld a, a                                       ; $5c69: $7f
    rst $38                                       ; $5c6a: $ff
    ld a, [c]                                     ; $5c6b: $f2
    ld a, a                                       ; $5c6c: $7f
    ret nz                                        ; $5c6d: $c0

    rst $38                                       ; $5c6e: $ff
    call z, Call_042_7eff                         ; $5c6f: $cc $ff $7e
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    ld [de], a                                    ; $5c74: $12
    rst $38                                       ; $5c75: $ff

jr_042_5c76:
    jr nz, @+$01                                  ; $5c76: $20 $ff

    ldh [$1f], a                                  ; $5c78: $e0 $1f
    pop af                                        ; $5c7a: $f1
    rrca                                          ; $5c7b: $0f
    rst $38                                       ; $5c7c: $ff
    ld hl, sp+$07                                 ; $5c7d: $f8 $07
    cp $fb                                        ; $5c7f: $fe $fb
    rst $38                                       ; $5c81: $ff
    push af                                       ; $5c82: $f5
    ld e, a                                       ; $5c83: $5f
    di                                            ; $5c84: $f3
    rst $28                                       ; $5c85: $ef
    sbc [hl]                                      ; $5c86: $9e
    pop af                                        ; $5c87: $f1
    rra                                           ; $5c88: $1f
    ldh a, [$fe]                                  ; $5c89: $f0 $fe
    pop hl                                        ; $5c8b: $e1
    sbc a                                         ; $5c8c: $9f
    ldh a, [$7f]                                  ; $5c8d: $f0 $7f
    ld a, a                                       ; $5c8f: $7f
    sbc a                                         ; $5c90: $9f
    sbc a                                         ; $5c91: $9f
    dec bc                                        ; $5c92: $0b
    ld c, $0f                                     ; $5c93: $0e $0f
    rrca                                          ; $5c95: $0f
    db $10                                        ; $5c96: $10
    ld h, b                                       ; $5c97: $60
    ldh [$bd], a                                  ; $5c98: $e0 $bd
    ld [hl+], a                                   ; $5c9a: $22
    ld d, [hl]                                    ; $5c9b: $56
    ldh [$2c], a                                  ; $5c9c: $e0 $2c
    ccf                                           ; $5c9e: $3f
    ccf                                           ; $5c9f: $3f
    inc sp                                        ; $5ca0: $33
    ld d, l                                       ; $5ca1: $55
    ldh [rNR10], a                                ; $5ca2: $e0 $10
    rst $38                                       ; $5ca4: $ff
    ccf                                           ; $5ca5: $3f
    jr nz, jr_042_5ce7                            ; $5ca6: $20 $3f

    ld hl, $5e7e                                  ; $5ca8: $21 $7e $5e
    ld a, [hl]                                    ; $5cab: $7e
    ld h, d                                       ; $5cac: $62
    rst $38                                       ; $5cad: $ff
    cp [hl]                                       ; $5cae: $be
    cp $c1                                        ; $5caf: $fe $c1
    rst $38                                       ; $5cb1: $ff
    cp a                                          ; $5cb2: $bf
    rst $38                                       ; $5cb3: $ff
    pop bc                                        ; $5cb4: $c1
    rst $38                                       ; $5cb5: $ff
    ei                                            ; $5cb6: $fb
    ld a, [hl]                                    ; $5cb7: $7e
    ld a, [hl]                                    ; $5cb8: $7e
    ld a, [hl]                                    ; $5cb9: $7e
    db $fd                                        ; $5cba: $fd
    ldh a, [$f0]                                  ; $5cbb: $f0 $f0
    inc c                                         ; $5cbd: $0c
    db $fc                                        ; $5cbe: $fc
    ld [c], a                                     ; $5cbf: $e2
    rst $38                                       ; $5cc0: $ff
    cp $b9                                        ; $5cc1: $fe $b9
    ld e, a                                       ; $5cc3: $5f
    dec a                                         ; $5cc4: $3d
    rst $00                                       ; $5cc5: $c7
    db $fc                                        ; $5cc6: $fc
    rst $30                                       ; $5cc7: $f7
    rrca                                          ; $5cc8: $0f
    db $fd                                        ; $5cc9: $fd
    ei                                            ; $5cca: $fb
    sbc b                                         ; $5ccb: $98
    ldh [rTAC], a                                 ; $5ccc: $e0 $07
    rst $38                                       ; $5cce: $ff
    ld sp, hl                                     ; $5ccf: $f9
    rst $38                                       ; $5cd0: $ff
    daa                                           ; $5cd1: $27
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    ld bc, $19ff                                  ; $5cd4: $01 $ff $19
    rst $38                                       ; $5cd7: $ff
    ccf                                           ; $5cd8: $3f
    rst $38                                       ; $5cd9: $ff
    inc h                                         ; $5cda: $24
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    ld [bc], a                                    ; $5cdd: $02
    rst $38                                       ; $5cde: $ff
    add e                                         ; $5cdf: $83
    db $fc                                        ; $5ce0: $fc
    rst $00                                       ; $5ce1: $c7
    ld hl, sp+$0f                                 ; $5ce2: $f8 $0f
    ldh a, [rIE]                                  ; $5ce4: $f0 $ff
    ccf                                           ; $5ce6: $3f

jr_042_5ce7:
    rst $18                                       ; $5ce7: $df
    rst $38                                       ; $5ce8: $ff
    xor a                                         ; $5ce9: $af
    ld sp, hl                                     ; $5cea: $f9
    rst $08                                       ; $5ceb: $cf
    ld a, b                                       ; $5cec: $78
    adc a                                         ; $5ced: $8f
    rst $30                                       ; $5cee: $f7
    ld hl, sp+$0f                                 ; $5cef: $f8 $0f
    ld sp, hl                                     ; $5cf1: $f9
    cp $e0                                        ; $5cf2: $fe $e0
    cp $0b                                        ; $5cf4: $fe $0b
    ld a, [$fff9]                                 ; $5cf6: $fa $f9 $ff
    ld sp, hl                                     ; $5cf9: $f9
    ret nc                                        ; $5cfa: $d0

    ld [hl], b                                    ; $5cfb: $70
    ld hl, sp-$08                                 ; $5cfc: $f8 $f8
    inc b                                         ; $5cfe: $04
    db $fc                                        ; $5cff: $fc
    inc b                                         ; $5d00: $04
    rst $38                                       ; $5d01: $ff
    db $fc                                        ; $5d02: $fc
    ld b, d                                       ; $5d03: $42
    cp $82                                        ; $5d04: $fe $82
    cp $ba                                        ; $5d06: $fe $ba
    cp $fe                                        ; $5d08: $fe $fe
    rst $38                                       ; $5d0a: $ff
    add $fc                                       ; $5d0b: $c6 $fc
    add h                                         ; $5d0d: $84
    db $fc                                        ; $5d0e: $fc
    add h                                         ; $5d0f: $84
    cp $82                                        ; $5d10: $fe $82
    ld a, [hl]                                    ; $5d12: $7e
    rst $38                                       ; $5d13: $ff
    ld b, d                                       ; $5d14: $42
    ccf                                           ; $5d15: $3f
    dec a                                         ; $5d16: $3d
    ccf                                           ; $5d17: $3f
    inc hl                                        ; $5d18: $23
    ld a, $3f                                     ; $5d19: $3e $3f
    ld b, c                                       ; $5d1b: $41
    ld a, a                                       ; $5d1c: $7f
    ld a, a                                       ; $5d1d: $7f
    ld a, [hl]                                    ; $5d1e: $7e
    ld a, a                                       ; $5d1f: $7f
    ld b, c                                       ; $5d20: $41
    ld a, a                                       ; $5d21: $7f
    ccf                                           ; $5d22: $3f
    ccf                                           ; $5d23: $3f
    cp $df                                        ; $5d24: $fe $df
    ld a, [$e5e6]                                 ; $5d26: $fa $e6 $e5
    add b                                         ; $5d29: $80
    rst $38                                       ; $5d2a: $ff
    and $44                                       ; $5d2b: $e6 $44
    call nz, $ce4a                                ; $5d2d: $c4 $4a $ce
    xor d                                         ; $5d30: $aa
    rst $38                                       ; $5d31: $ff

jr_042_5d32:
    xor $d2                                       ; $5d32: $ee $d2
    ld a, [hl]                                    ; $5d34: $7e
    jp nz, $c47e                                  ; $5d35: $c2 $7e $c4

    ld a, h                                       ; $5d38: $7c
    add h                                         ; $5d39: $84
    cp a                                          ; $5d3a: $bf
    db $fc                                        ; $5d3b: $fc
    ld [$1cf8], sp                                ; $5d3c: $08 $f8 $1c
    db $fc                                        ; $5d3f: $fc
    ld h, h                                       ; $5d40: $64
    ld e, h                                       ; $5d41: $5c
    ldh [$d2], a                                  ; $5d42: $e0 $d2
    rst $38                                       ; $5d44: $ff
    ld a, [hl]                                    ; $5d45: $7e
    ld [$e2be], a                                 ; $5d46: $ea $be $e2
    cp [hl]                                       ; $5d49: $be
    db $fc                                        ; $5d4a: $fc
    ld e, h                                       ; $5d4b: $5c
    ld hl, sp+$7f                                 ; $5d4c: $f8 $7f
    ld [$10f0], sp                                ; $5d4e: $08 $f0 $10
    ldh [rNR41], a                                ; $5d51: $e0 $20
    ret nz                                        ; $5d53: $c0

    ret nz                                        ; $5d54: $c0

    or h                                          ; $5d55: $b4
    rst $38                                       ; $5d56: $ff
    rrca                                          ; $5d57: $0f
    add b                                         ; $5d58: $80
    add b                                         ; $5d59: $80
    nop                                           ; $5d5a: $00
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    db $fd                                        ; $5d5f: $fd
    nop                                           ; $5d60: $00
    rst $38                                       ; $5d61: $ff
    add sp, $08                                   ; $5d62: $e8 $08
    ld [$141c], sp                                ; $5d64: $08 $1c $14
    ld a, $2a                                     ; $5d67: $3e $2a
    rst $38                                       ; $5d69: $ff
    ld a, [hl]                                    ; $5d6a: $7e
    ld d, [hl]                                    ; $5d6b: $56
    ld a, a                                       ; $5d6c: $7f
    ld l, e                                       ; $5d6d: $6b
    ld a, a                                       ; $5d6e: $7f
    ld d, h                                       ; $5d6f: $54
    ccf                                           ; $5d70: $3f
    jr nz, jr_042_5d32                            ; $5d71: $20 $bf

    ccf                                           ; $5d73: $3f
    jr nz, @+$21                                  ; $5d74: $20 $1f

    ld de, $090f                                  ; $5d76: $11 $0f $09
    cp $e0                                        ; $5d79: $fe $e0
    ld [$0fef], sp                                ; $5d7b: $08 $ef $0f
    ld [$0407], sp                                ; $5d7e: $08 $07 $04
    cp $e1                                        ; $5d81: $fe $e1
    dec de                                        ; $5d83: $1b
    ld a, [de]                                    ; $5d84: $1a
    cpl                                           ; $5d85: $2f
    ei                                            ; $5d86: $fb
    ld a, $23                                     ; $5d87: $3e $23
    cp $e0                                        ; $5d89: $fe $e0
    ld de, $0d1f                                  ; $5d8b: $11 $1f $0d
    rrca                                          ; $5d8e: $0f
    inc bc                                        ; $5d8f: $03
    sbc a                                         ; $5d90: $9f
    ld [bc], a                                    ; $5d91: $02
    inc bc                                        ; $5d92: $03
    ld [bc], a                                    ; $5d93: $02
    ld bc, $c201                                  ; $5d94: $01 $01 $c2
    jp hl                                         ; $5d97: $e9


    or [hl]                                       ; $5d98: $b6
    rst $20                                       ; $5d99: $e7
    inc bc                                        ; $5d9a: $03
    db $fd                                        ; $5d9b: $fd
    inc bc                                        ; $5d9c: $03
    pop de                                        ; $5d9d: $d1
    pop hl                                        ; $5d9e: $e1
    rrca                                          ; $5d9f: $0f
    rrca                                          ; $5da0: $0f
    inc de                                        ; $5da1: $13
    ld e, $13                                     ; $5da2: $1e $13
    ld e, $cf                                     ; $5da4: $1e $cf
    ld de, $0e1f                                  ; $5da6: $11 $1f $0e
    ld c, $da                                     ; $5da9: $0e $da

jr_042_5dab:
    di                                            ; $5dab: $f3
    or $f5                                        ; $5dac: $f6 $f5
    rst $00                                       ; $5dae: $c7
    rst $00                                       ; $5daf: $c7
    rst $38                                       ; $5db0: $ff
    ret c                                         ; $5db1: $d8

    ld e, a                                       ; $5db2: $5f
    and e                                         ; $5db3: $a3
    cp a                                          ; $5db4: $bf
    adc $fd                                       ; $5db5: $ce $fd
    sbc a                                         ; $5db7: $9f
    rst $30                                       ; $5db8: $f7
    rst $38                                       ; $5db9: $ff
    jr c, jr_042_5dab                             ; $5dba: $38 $ef

    rst $30                                       ; $5dbc: $f7
    ld hl, sp-$11                                 ; $5dbd: $f8 $ef
    or e                                          ; $5dbf: $b3
    rst $38                                       ; $5dc0: $ff
    call z, $ffff                                 ; $5dc1: $cc $ff $ff
    ld a, [c]                                     ; $5dc4: $f2
    rst $38                                       ; $5dc5: $ff
    ret nz                                        ; $5dc6: $c0

    rst $38                                       ; $5dc7: $ff
    ld c, h                                       ; $5dc8: $4c
    rst $38                                       ; $5dc9: $ff
    ld a, [hl]                                    ; $5dca: $7e
    rst $28                                       ; $5dcb: $ef
    rst $38                                       ; $5dcc: $ff
    ld d, d                                       ; $5dcd: $52
    rst $38                                       ; $5dce: $ff

jr_042_5dcf:
    jr nz, jr_042_5dcf                            ; $5dcf: $20 $fe

    ldh [$31], a                                  ; $5dd1: $e0 $31
    rst $38                                       ; $5dd3: $ff
    ld d, c                                       ; $5dd4: $51
    rst $38                                       ; $5dd5: $ff
    rst $38                                       ; $5dd6: $ff
    adc c                                         ; $5dd7: $89
    rst $38                                       ; $5dd8: $ff
    ld c, $ff                                     ; $5dd9: $0e $ff
    dec bc                                        ; $5ddb: $0b
    rst $30                                       ; $5ddc: $f7
    dec e                                         ; $5ddd: $1d
    rst $38                                       ; $5dde: $ff
    di                                            ; $5ddf: $f3
    sbc [hl]                                      ; $5de0: $9e
    ld [hl], c                                    ; $5de1: $71
    ld e, a                                       ; $5de2: $5f
    jr nc, jr_042_5e24                            ; $5de3: $30 $3f

    db $10                                        ; $5de5: $10
    rra                                           ; $5de6: $1f
    ld a, [hl]                                    ; $5de7: $7e
    cp $e1                                        ; $5de8: $fe $e1
    rrca                                          ; $5dea: $0f
    rrca                                          ; $5deb: $0f
    dec bc                                        ; $5dec: $0b
    ld c, $0f                                     ; $5ded: $0e $0f
    rrca                                          ; $5def: $0f
    db $f4                                        ; $5df0: $f4
    pop hl                                        ; $5df1: $e1
    rst $38                                       ; $5df2: $ff
    and b                                         ; $5df3: $a0
    cp a                                          ; $5df4: $bf
    ld h, d                                       ; $5df5: $62
    rst $38                                       ; $5df6: $ff
    pop hl                                        ; $5df7: $e1
    rst $38                                       ; $5df8: $ff
    ldh [$3f], a                                  ; $5df9: $e0 $3f
    rst $28                                       ; $5dfb: $ef
    rst $38                                       ; $5dfc: $ff
    ld a, a                                       ; $5dfd: $7f
    rst $38                                       ; $5dfe: $ff
    and c                                         ; $5dff: $a1
    cp $e1                                        ; $5e00: $fe $e1
    ld a, a                                       ; $5e02: $7f
    ld h, c                                       ; $5e03: $61
    ld a, a                                       ; $5e04: $7f
    sbc a                                         ; $5e05: $9f
    ld h, c                                       ; $5e06: $61
    ld a, $22                                     ; $5e07: $3e $22
    inc e                                         ; $5e09: $1c
    inc e                                         ; $5e0a: $1c
    add h                                         ; $5e0b: $84
    rst $38                                       ; $5e0c: $ff
    ld a, [c]                                     ; $5e0d: $f2
    pop bc                                        ; $5e0e: $c1
    ldh a, [rIE]                                  ; $5e0f: $f0 $ff
    ldh a, [$0c]                                  ; $5e11: $f0 $0c
    db $fc                                        ; $5e13: $fc
    ld [c], a                                     ; $5e14: $e2
    cp $b9                                        ; $5e15: $fe $b9
    ld e, a                                       ; $5e17: $5f
    db $fd                                        ; $5e18: $fd
    rst $38                                       ; $5e19: $ff
    rst $30                                       ; $5e1a: $f7
    ld c, $fb                                     ; $5e1b: $0e $fb
    rst $30                                       ; $5e1d: $f7
    rrca                                          ; $5e1e: $0f
    ei                                            ; $5e1f: $fb
    and $ff                                       ; $5e20: $e6 $ff
    rst $18                                       ; $5e22: $df
    add hl, de                                    ; $5e23: $19

jr_042_5e24:
    rst $38                                       ; $5e24: $ff
    daa                                           ; $5e25: $27
    rst $38                                       ; $5e26: $ff
    ld bc, $e0fa                                  ; $5e27: $01 $fa $e0
    ccf                                           ; $5e2a: $3f
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    dec h                                         ; $5e2d: $25
    rst $38                                       ; $5e2e: $ff
    add e                                         ; $5e2f: $83
    rst $38                                       ; $5e30: $ff
    ld [bc], a                                    ; $5e31: $02
    rst $38                                       ; $5e32: $ff
    jp nz, $ff7f                                  ; $5e33: $c2 $7f $ff

    push bc                                       ; $5e36: $c5
    ld a, a                                       ; $5e37: $7f
    ret z                                         ; $5e38: $c8

    rst $38                                       ; $5e39: $ff
    or b                                          ; $5e3a: $b0
    rst $38                                       ; $5e3b: $ff
    ret nc                                        ; $5e3c: $d0

    rst $28                                       ; $5e3d: $ef
    rst $38                                       ; $5e3e: $ff
    cp b                                          ; $5e3f: $b8
    rst $08                                       ; $5e40: $cf
    ld a, b                                       ; $5e41: $78
    adc a                                         ; $5e42: $8f
    ld sp, hl                                     ; $5e43: $f9
    ld c, $fa                                     ; $5e44: $0e $fa
    inc c                                         ; $5e46: $0c
    rst $38                                       ; $5e47: $ff
    db $fc                                        ; $5e48: $fc
    ld [$08f8], sp                                ; $5e49: $08 $f8 $08
    ld hl, sp-$10                                 ; $5e4c: $f8 $f0
    ldh a, [$d0]                                  ; $5e4e: $f0 $d0
    rst $38                                       ; $5e50: $ff
    ld [hl], b                                    ; $5e51: $70
    ld hl, sp-$08                                 ; $5e52: $f8 $f8
    inc b                                         ; $5e54: $04
    db $fc                                        ; $5e55: $fc
    inc b                                         ; $5e56: $04
    db $fc                                        ; $5e57: $fc
    ld [bc], a                                    ; $5e58: $02
    ei                                            ; $5e59: $fb
    cp $43                                        ; $5e5a: $fe $43
    rst $10                                       ; $5e5c: $d7
    ldh [$83], a                                  ; $5e5d: $e0 $83
    cp $ff                                        ; $5e5f: $fe $ff
    rst $38                                       ; $5e61: $ff
    ld a, a                                       ; $5e62: $7f
    db $dd                                        ; $5e63: $dd
    ld b, d                                       ; $5e64: $42
    cp $e2                                        ; $5e65: $fe $e2
    ld b, e                                       ; $5e67: $43
    ld a, a                                       ; $5e68: $7f
    ld b, e                                       ; $5e69: $43
    add b                                         ; $5e6a: $80
    rst $38                                       ; $5e6b: $ff
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    rst $38                                       ; $5e6e: $ff
    inc c                                         ; $5e6f: $0c
    inc c                                         ; $5e70: $0c
    ld a, [de]                                    ; $5e71: $1a
    ld e, $15                                     ; $5e72: $1e $15
    rra                                           ; $5e74: $1f
    db $db                                        ; $5e75: $db
    rst $18                                       ; $5e76: $df
    rst $38                                       ; $5e77: $ff
    or l                                          ; $5e78: $b5
    rst $38                                       ; $5e79: $ff
    ld c, e                                       ; $5e7a: $4b
    ld a, a                                       ; $5e7b: $7f
    ld b, c                                       ; $5e7c: $41
    ld a, a                                       ; $5e7d: $7f
    ld hl, $ff3f                                  ; $5e7e: $21 $3f $ff
    cp [hl]                                       ; $5e81: $be
    cp [hl]                                       ; $5e82: $be
    ld a, h                                       ; $5e83: $7c
    db $e4                                        ; $5e84: $e4
    db $fc                                        ; $5e85: $fc
    call nz, $c8f8                                ; $5e86: $c4 $f8 $c8
    rst $28                                       ; $5e89: $ef
    ld a, b                                       ; $5e8a: $78
    ret z                                         ; $5e8b: $c8

    ldh a, [$90]                                  ; $5e8c: $f0 $90
    cp $e0                                        ; $5e8e: $fe $e0
    db $10                                        ; $5e90: $10
    or $36                                        ; $5e91: $f6 $36
    rst $38                                       ; $5e93: $ff
    db $ed                                        ; $5e94: $ed
    ccf                                           ; $5e95: $3f
    pop hl                                        ; $5e96: $e1
    ccf                                           ; $5e97: $3f
    jp nz, $c47e                                  ; $5e98: $c2 $7e $c4

    ld a, h                                       ; $5e9b: $7c
    rst $38                                       ; $5e9c: $ff
    ret z                                         ; $5e9d: $c8

    ld hl, sp-$10                                 ; $5e9e: $f8 $f0
    ld [hl], b                                    ; $5ea0: $70
    ldh [rNR41], a                                ; $5ea1: $e0 $20
    ret nz                                        ; $5ea3: $c0

    ld b, b                                       ; $5ea4: $40
    cp e                                          ; $5ea5: $bb
    add b                                         ; $5ea6: $80
    add b                                         ; $5ea7: $80
    ld a, [hl]                                    ; $5ea8: $7e
    pop de                                        ; $5ea9: $d1
    ldh [$e0], a                                  ; $5eaa: $e0 $e0
    db $10                                        ; $5eac: $10
    rst $08                                       ; $5ead: $cf
    ldh [$f8], a                                  ; $5eae: $e0 $f8
    rst $38                                       ; $5eb0: $ff
    ld a, b                                       ; $5eb1: $78
    db $e4                                        ; $5eb2: $e4
    inc a                                         ; $5eb3: $3c
    db $e4                                        ; $5eb4: $e4
    cp h                                          ; $5eb5: $bc
    call nz, $b8fc                                ; $5eb6: $c4 $fc $b8
    ld bc, $0cb8                                  ; $5eb9: $01 $b8 $0c
    ld sp, hl                                     ; $5ebc: $f9
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    db $fd                                        ; $5ec0: $fd
    nop                                           ; $5ec1: $00
    rst $38                                       ; $5ec2: $ff
    ld a, [$0e0e]                                 ; $5ec3: $fa $0e $0e
    rra                                           ; $5ec6: $1f
    dec de                                        ; $5ec7: $1b
    rra                                           ; $5ec8: $1f
    ld d, $ff                                     ; $5ec9: $16 $ff
    ccf                                           ; $5ecb: $3f
    dec hl                                        ; $5ecc: $2b
    ccf                                           ; $5ecd: $3f
    dec [hl]                                      ; $5ece: $35
    ccf                                           ; $5ecf: $3f
    jr z, jr_042_5f11                             ; $5ed0: $28 $3f

    jr nc, @+$01                                  ; $5ed2: $30 $ff

    ccf                                           ; $5ed4: $3f
    add hl, sp                                    ; $5ed5: $39
    cpl                                           ; $5ed6: $2f
    add hl, sp                                    ; $5ed7: $39
    rra                                           ; $5ed8: $1f
    add hl, de                                    ; $5ed9: $19
    rrca                                          ; $5eda: $0f
    add hl, bc                                    ; $5edb: $09
    cp a                                          ; $5edc: $bf
    rrca                                          ; $5edd: $0f
    ld [$080f], sp                                ; $5ede: $08 $0f $08
    rlca                                          ; $5ee1: $07
    inc b                                         ; $5ee2: $04
    cp $e0                                        ; $5ee3: $fe $e0
    dec b                                         ; $5ee5: $05
    ld c, a                                       ; $5ee6: $4f
    inc bc                                        ; $5ee7: $03
    ld [bc], a                                    ; $5ee8: $02
    ld bc, $be01                                  ; $5ee9: $01 $01 $be
    ei                                            ; $5eec: $fb
    and b                                         ; $5eed: $a0
    rst $20                                       ; $5eee: $e7
    ld bc, $e4ff                                  ; $5eef: $01 $ff $e4
    cp $d6                                        ; $5ef2: $fe $d6
    db $fd                                        ; $5ef4: $fd
    rlca                                          ; $5ef5: $07
    rlca                                          ; $5ef6: $07
    jr jr_042_5f18                                ; $5ef7: $18 $1f

    inc hl                                        ; $5ef9: $23
    ccf                                           ; $5efa: $3f
    ld c, [hl]                                    ; $5efb: $4e
    rst $38                                       ; $5efc: $ff
    ld a, l                                       ; $5efd: $7d
    sbc a                                         ; $5efe: $9f

Call_042_5eff:
    rst $30                                       ; $5eff: $f7
    cp b                                          ; $5f00: $b8
    rst $28                                       ; $5f01: $ef
    rst $30                                       ; $5f02: $f7
    ld hl, sp-$11                                 ; $5f03: $f8 $ef
    rst $38                                       ; $5f05: $ff
    or e                                          ; $5f06: $b3
    rst $38                                       ; $5f07: $ff
    call z, Call_042_72ff                         ; $5f08: $cc $ff $72
    rst $38                                       ; $5f0b: $ff
    ld b, b                                       ; $5f0c: $40
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    ld c, h                                       ; $5f0f: $4c
    rst $38                                       ; $5f10: $ff

jr_042_5f11:
    cp $7f                                        ; $5f11: $fe $7f
    ld d, d                                       ; $5f13: $52
    ccf                                           ; $5f14: $3f
    jr nz, @+$41                                  ; $5f15: $20 $3f

    rst $38                                       ; $5f17: $ff

jr_042_5f18:
    jr nz, @+$01                                  ; $5f18: $20 $ff

    pop hl                                        ; $5f1a: $e1
    sbc a                                         ; $5f1b: $9f
    pop af                                        ; $5f1c: $f1
    rst $28                                       ; $5f1d: $ef
    ld sp, hl                                     ; $5f1e: $f9
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    sbc [hl]                                      ; $5f21: $9e
    ei                                            ; $5f22: $fb
    adc a                                         ; $5f23: $8f
    push af                                       ; $5f24: $f5
    rra                                           ; $5f25: $1f
    di                                            ; $5f26: $f3
    ld e, $f1                                     ; $5f27: $1e $f1
    rst $38                                       ; $5f29: $ff
    rra                                           ; $5f2a: $1f
    ldh a, [$df]                                  ; $5f2b: $f0 $df
    jr nc, jr_042_5f6e                            ; $5f2d: $30 $3f

    db $10                                        ; $5f2f: $10
    rra                                           ; $5f30: $1f
    db $10                                        ; $5f31: $10
    ccf                                           ; $5f32: $3f
    rra                                           ; $5f33: $1f
    rrca                                          ; $5f34: $0f
    rrca                                          ; $5f35: $0f
    dec bc                                        ; $5f36: $0b
    ld c, $1f                                     ; $5f37: $0e $1f
    ld hl, sp-$20                                 ; $5f39: $f8 $e0
    db $f4                                        ; $5f3b: $f4
    pop hl                                        ; $5f3c: $e1
    rst $30                                       ; $5f3d: $f7
    ld [hl+], a                                   ; $5f3e: $22
    ccf                                           ; $5f3f: $3f
    ld hl, $e0d5                                  ; $5f40: $21 $d5 $e0
    ccf                                           ; $5f43: $3f
    ccf                                           ; $5f44: $3f
    rra                                           ; $5f45: $1f
    ld de, $1fff                                  ; $5f46: $11 $ff $1f
    ld de, $213f                                  ; $5f49: $11 $3f $21
    ld a, [hl]                                    ; $5f4c: $7e
    ld h, d                                       ; $5f4d: $62
    cp [hl]                                       ; $5f4e: $be
    ld [c], a                                     ; $5f4f: $e2
    rst $38                                       ; $5f50: $ff

jr_042_5f51:
    cp h                                          ; $5f51: $bc
    db $e4                                        ; $5f52: $e4
    ld a, h                                       ; $5f53: $7c
    call c, $c47c                                 ; $5f54: $dc $7c $c4
    jr c, jr_042_5f51                             ; $5f57: $38 $f8

    rst $28                                       ; $5f59: $ef
    ld [$f0f8], sp                                ; $5f5a: $08 $f8 $f0
    ldh a, [$0c]                                  ; $5f5d: $f0 $0c
    ei                                            ; $5f5f: $fb
    ldh a, [$f0]                                  ; $5f60: $f0 $f0
    inc c                                         ; $5f62: $0c
    rst $38                                       ; $5f63: $ff
    db $fc                                        ; $5f64: $fc
    ld [c], a                                     ; $5f65: $e2
    cp $b9                                        ; $5f66: $fe $b9
    ld e, a                                       ; $5f68: $5f
    db $fd                                        ; $5f69: $fd
    rst $30                                       ; $5f6a: $f7
    ld c, $ff                                     ; $5f6b: $0e $ff
    ei                                            ; $5f6d: $fb

jr_042_5f6e:
    rst $30                                       ; $5f6e: $f7
    rrca                                          ; $5f6f: $0f
    ei                                            ; $5f70: $fb
    and $ff                                       ; $5f71: $e6 $ff
    add hl, de                                    ; $5f73: $19
    rst $38                                       ; $5f74: $ff
    rst $30                                       ; $5f75: $f7
    daa                                           ; $5f76: $27
    rst $38                                       ; $5f77: $ff
    ld bc, $e0fa                                  ; $5f78: $01 $fa $e0
    ccf                                           ; $5f7b: $3f
    rst $38                                       ; $5f7c: $ff
    dec h                                         ; $5f7d: $25
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    add d                                         ; $5f80: $82
    rst $38                                       ; $5f81: $ff
    ld [bc], a                                    ; $5f82: $02
    rst $38                                       ; $5f83: $ff
    jp $c77c                                      ; $5f84: $c3 $7c $c7


    ld a, b                                       ; $5f87: $78
    rst $38                                       ; $5f88: $ff
    rst $08                                       ; $5f89: $cf
    rst $38                                       ; $5f8a: $ff
    cp a                                          ; $5f8b: $bf
    rst $18                                       ; $5f8c: $df
    pop af                                        ; $5f8d: $f1
    xor a                                         ; $5f8e: $af
    ld hl, sp-$31                                 ; $5f8f: $f8 $cf
    rst $38                                       ; $5f91: $ff
    ld a, b                                       ; $5f92: $78
    adc a                                         ; $5f93: $8f
    ld sp, hl                                     ; $5f94: $f9
    rrca                                          ; $5f95: $0f
    ld sp, hl                                     ; $5f96: $f9
    rrca                                          ; $5f97: $0f
    cp $0b                                        ; $5f98: $fe $0b
    rst $38                                       ; $5f9a: $ff
    ld a, [$fa0b]                                 ; $5f9b: $fa $0b $fa
    pop af                                        ; $5f9e: $f1
    pop af                                        ; $5f9f: $f1
    ret nc                                        ; $5fa0: $d0

    ld [hl], b                                    ; $5fa1: $70
    ld hl, sp+$77                                 ; $5fa2: $f8 $77
    ld hl, sp+$04                                 ; $5fa4: $f8 $04
    db $fc                                        ; $5fa6: $fc
    cp $e1                                        ; $5fa7: $fe $e1
    ld b, d                                       ; $5fa9: $42
    cp $82                                        ; $5faa: $fe $82
    cp $e0                                        ; $5fac: $fe $e0
    rst $38                                       ; $5fae: $ff
    cp $fe                                        ; $5faf: $fe $fe
    ld a, h                                       ; $5fb1: $7c
    ld b, h                                       ; $5fb2: $44
    ld a, h                                       ; $5fb3: $7c
    ld b, h                                       ; $5fb4: $44
    ld a, [hl]                                    ; $5fb5: $7e
    ld b, d                                       ; $5fb6: $42
    rst $38                                       ; $5fb7: $ff
    ccf                                           ; $5fb8: $3f
    inc hl                                        ; $5fb9: $23
    ld a, $23                                     ; $5fba: $3e $23
    ld e, $13                                     ; $5fbc: $1e $13
    rra                                           ; $5fbe: $1f
    dec e                                         ; $5fbf: $1d
    scf                                           ; $5fc0: $37
    rra                                           ; $5fc1: $1f
    ld de, $c50e                                  ; $5fc2: $11 $0e $c5
    ret nz                                        ; $5fc5: $c0

    rlca                                          ; $5fc6: $07
    rlca                                          ; $5fc7: $07
    call nc, Call_042_6adf                        ; $5fc8: $d4 $df $6a
    jp $80fd                                      ; $5fcb: $c3 $fd $80


    rst $38                                       ; $5fce: $ff
    and $40                                       ; $5fcf: $e6 $40
    ret nz                                        ; $5fd1: $c0

    ld b, [hl]                                    ; $5fd2: $46
    add $b9                                       ; $5fd3: $c6 $b9
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    pop bc                                        ; $5fd7: $c1
    ld a, a                                       ; $5fd8: $7f

jr_042_5fd9:
    reti                                          ; $5fd9: $d9


    ld a, a                                       ; $5fda: $7f
    and $7e                                       ; $5fdb: $e6 $7e
    and d                                         ; $5fdd: $a2
    cp $ff                                        ; $5fde: $fe $ff
    sub d                                         ; $5fe0: $92
    cp $ca                                        ; $5fe1: $fe $ca
    cp $44                                        ; $5fe3: $fe $44
    ld a, h                                       ; $5fe5: $7c
    add sp, -$08                                  ; $5fe6: $e8 $f8
    rst $38                                       ; $5fe8: $ff
    ldh a, [$b0]                                  ; $5fe9: $f0 $b0
    ldh a, [$90]                                  ; $5feb: $f0 $90
    ldh a, [rNR10]                                ; $5fed: $f0 $10
    ldh a, [rNR10]                                ; $5fef: $f0 $10
    rst $38                                       ; $5ff1: $ff
    ldh [rNR41], a                                ; $5ff2: $e0 $20
    ldh [rNR41], a                                ; $5ff4: $e0 $20
    ret nz                                        ; $5ff6: $c0

    ld b, b                                       ; $5ff7: $40
    add b                                         ; $5ff8: $80
    add b                                         ; $5ff9: $80
    ld b, $b6                                     ; $5ffa: $06 $b6
    ei                                            ; $5ffc: $fb
    ld b, b                                       ; $5ffd: $40
    ret nz                                        ; $5ffe: $c0

    cp $e3                                        ; $5fff: $fe $e3
    ret c                                         ; $6001: $d8

    db $eb                                        ; $6002: $eb
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    db $fd                                        ; $6006: $fd
    nop                                           ; $6007: $00
    rst $38                                       ; $6008: $ff
    add sp, $08                                   ; $6009: $e8 $08
    ld [$141c], sp                                ; $600b: $08 $1c $14
    ld a, $2a                                     ; $600e: $3e $2a
    rst $38                                       ; $6010: $ff
    ld a, [hl]                                    ; $6011: $7e
    ld d, [hl]                                    ; $6012: $56
    ld a, a                                       ; $6013: $7f
    ld l, e                                       ; $6014: $6b
    ld a, a                                       ; $6015: $7f
    ld d, h                                       ; $6016: $54
    ccf                                           ; $6017: $3f
    jr nz, jr_042_5fd9                            ; $6018: $20 $bf

    ccf                                           ; $601a: $3f
    jr nz, @+$21                                  ; $601b: $20 $1f

    ld de, $090f                                  ; $601d: $11 $0f $09
    cp $e0                                        ; $6020: $fe $e0
    ld [$0fef], sp                                ; $6022: $08 $ef $0f
    ld [$0407], sp                                ; $6025: $08 $07 $04
    cp $e1                                        ; $6028: $fe $e1
    dec de                                        ; $602a: $1b
    ld a, [de]                                    ; $602b: $1a
    cpl                                           ; $602c: $2f
    ei                                            ; $602d: $fb
    ld a, $23                                     ; $602e: $3e $23
    cp $e0                                        ; $6030: $fe $e0
    ld de, $0d1f                                  ; $6032: $11 $1f $0d
    rrca                                          ; $6035: $0f
    inc bc                                        ; $6036: $03
    rra                                           ; $6037: $1f
    ld [bc], a                                    ; $6038: $02
    inc bc                                        ; $6039: $03
    ld [bc], a                                    ; $603a: $02
    ld bc, $c201                                  ; $603b: $01 $01 $c2
    jp hl                                         ; $603e: $e9


    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff

jr_042_6042:
    rst $38                                       ; $6042: $ff
    cp $72                                        ; $6043: $fe $72
    pop hl                                        ; $6045: $e1
    rst $00                                       ; $6046: $c7
    rst $00                                       ; $6047: $c7
    ret c                                         ; $6048: $d8

    ld e, a                                       ; $6049: $5f
    and e                                         ; $604a: $a3
    cp a                                          ; $604b: $bf
    adc $ff                                       ; $604c: $ce $ff
    db $fd                                        ; $604e: $fd
    sbc a                                         ; $604f: $9f
    rst $30                                       ; $6050: $f7
    jr c, jr_042_6042                             ; $6051: $38 $ef

    rst $30                                       ; $6053: $f7
    ld hl, sp-$11                                 ; $6054: $f8 $ef
    rst $38                                       ; $6056: $ff
    or e                                          ; $6057: $b3
    rst $38                                       ; $6058: $ff
    call z, $f2ff                                 ; $6059: $cc $ff $f2
    rst $38                                       ; $605c: $ff
    ret nz                                        ; $605d: $c0

    rst $38                                       ; $605e: $ff
    ld a, a                                       ; $605f: $7f
    ld c, h                                       ; $6060: $4c
    rst $38                                       ; $6061: $ff
    ld a, [hl]                                    ; $6062: $7e
    rst $38                                       ; $6063: $ff
    ld d, d                                       ; $6064: $52
    rst $38                                       ; $6065: $ff

jr_042_6066:
    jr nz, jr_042_6066                            ; $6066: $20 $fe

    ldh [rIE], a                                  ; $6068: $e0 $ff
    ld sp, $51ff                                  ; $606a: $31 $ff $51
    rst $38                                       ; $606d: $ff
    adc c                                         ; $606e: $89
    rst $38                                       ; $606f: $ff
    ld c, $ff                                     ; $6070: $0e $ff
    rst $38                                       ; $6072: $ff

jr_042_6073:
    dec bc                                        ; $6073: $0b
    rst $30                                       ; $6074: $f7
    dec e                                         ; $6075: $1d
    di                                            ; $6076: $f3
    sbc [hl]                                      ; $6077: $9e
    ld [hl], c                                    ; $6078: $71
    ld e, a                                       ; $6079: $5f
    jr nc, jr_042_6073                            ; $607a: $30 $f7

    ccf                                           ; $607c: $3f
    db $10                                        ; $607d: $10
    rra                                           ; $607e: $1f
    cp $e1                                        ; $607f: $fe $e1
    rrca                                          ; $6081: $0f
    rrca                                          ; $6082: $0f
    dec bc                                        ; $6083: $0b
    ld c, $7d                                     ; $6084: $0e $7d
    rra                                           ; $6086: $1f
    or $e2                                        ; $6087: $f6 $e2
    db $10                                        ; $6089: $10
    rra                                           ; $608a: $1f
    ld [hl+], a                                   ; $608b: $22
    ccf                                           ; $608c: $3f
    ld hl, $e03f                                  ; $608d: $21 $3f $e0
    rst $28                                       ; $6090: $ef
    ccf                                           ; $6091: $3f
    ccf                                           ; $6092: $3f
    rra                                           ; $6093: $1f
    ld de, $e1fe                                  ; $6094: $11 $fe $e1
    ccf                                           ; $6097: $3f
    ld hl, $f53e                                  ; $6098: $21 $3e $f5
    ld [hl+], a                                   ; $609b: $22
    cp $e0                                        ; $609c: $fe $e0
    ld a, $fa                                     ; $609e: $3e $fa
    ld [c], a                                     ; $60a0: $e2
    ld [hl+], a                                   ; $60a1: $22
    ld e, [hl]                                    ; $60a2: $5e
    ld a, [hl]                                    ; $60a3: $7e
    ld b, d                                       ; $60a4: $42
    rst $28                                       ; $60a5: $ef
    ld a, [hl]                                    ; $60a6: $7e
    ld e, d                                       ; $60a7: $5a
    ld a, [hl]                                    ; $60a8: $7e
    ld h, [hl]                                    ; $60a9: $66
    ld a, [$42e0]                                 ; $60aa: $fa $e0 $42
    ld a, [hl]                                    ; $60ad: $7e
    inc a                                         ; $60ae: $3c
    db $fd                                        ; $60af: $fd
    inc a                                         ; $60b0: $3c
    ld [hl], b                                    ; $60b1: $70
    rst $28                                       ; $60b2: $ef
    ldh a, [$f0]                                  ; $60b3: $f0 $f0
    inc c                                         ; $60b5: $0c
    db $fc                                        ; $60b6: $fc
    ld [c], a                                     ; $60b7: $e2
    cp $ff                                        ; $60b8: $fe $ff
    cp c                                          ; $60ba: $b9
    ld e, a                                       ; $60bb: $5f
    db $fd                                        ; $60bc: $fd
    rst $30                                       ; $60bd: $f7
    ld c, $fb                                     ; $60be: $0e $fb
    rst $30                                       ; $60c0: $f7
    rrca                                          ; $60c1: $0f
    rst $38                                       ; $60c2: $ff
    ei                                            ; $60c3: $fb
    and $ff                                       ; $60c4: $e6 $ff
    add hl, de                                    ; $60c6: $19
    rst $38                                       ; $60c7: $ff
    daa                                           ; $60c8: $27
    rst $38                                       ; $60c9: $ff
    ld bc, $fafe                                  ; $60ca: $01 $fe $fa
    ldh [$3f], a                                  ; $60cd: $e0 $3f
    rst $38                                       ; $60cf: $ff
    dec h                                         ; $60d0: $25
    rst $38                                       ; $60d1: $ff
    add e                                         ; $60d2: $83
    rst $38                                       ; $60d3: $ff
    ld [bc], a                                    ; $60d4: $02
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    jp nz, $c57f                                  ; $60d7: $c2 $7f $c5

    ld a, a                                       ; $60da: $7f
    ret z                                         ; $60db: $c8

    rst $38                                       ; $60dc: $ff
    or b                                          ; $60dd: $b0
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff

Jump_042_60e0:
    ret nc                                        ; $60e0: $d0

    rst $28                                       ; $60e1: $ef
    cp b                                          ; $60e2: $b8
    rst $08                                       ; $60e3: $cf
    ld a, b                                       ; $60e4: $78
    adc a                                         ; $60e5: $8f
    ld sp, hl                                     ; $60e6: $f9
    rst $38                                       ; $60e7: $ff
    ld c, $fa                                     ; $60e8: $0e $fa
    inc c                                         ; $60ea: $0c
    db $fc                                        ; $60eb: $fc
    ld [$08f8], sp                                ; $60ec: $08 $f8 $08
    ld hl, sp-$01                                 ; $60ef: $f8 $ff
    ldh a, [$f0]                                  ; $60f1: $f0 $f0
    ret nc                                        ; $60f3: $d0

    ld [hl], b                                    ; $60f4: $70
    ld hl, sp-$08                                 ; $60f5: $f8 $f8
    inc b                                         ; $60f7: $04
    db $fc                                        ; $60f8: $fc
    xor $fe                                       ; $60f9: $ee $fe
    pop hl                                        ; $60fb: $e1
    ld b, d                                       ; $60fc: $42
    cp $82                                        ; $60fd: $fe $82
    cp $e0                                        ; $60ff: $fe $e0
    cp $fe                                        ; $6101: $fe $fe
    ld a, h                                       ; $6103: $7c
    xor l                                         ; $6104: $ad
    ld b, h                                       ; $6105: $44
    cp $e1                                        ; $6106: $fe $e1
    ld a, [hl]                                    ; $6108: $7e
    ld b, d                                       ; $6109: $42
    add b                                         ; $610a: $80
    jp hl                                         ; $610b: $e9


    dec a                                         ; $610c: $3d
    ld h, h                                       ; $610d: $64
    ldh [$2d], a                                  ; $610e: $e0 $2d
    ld a, e                                       ; $6110: $7b
    ccf                                           ; $6111: $3f
    inc sp                                        ; $6112: $33
    ld e, [hl]                                    ; $6113: $5e
    ldh [rNR42], a                                ; $6114: $e0 $21
    ccf                                           ; $6116: $3f
    ld e, $1e                                     ; $6117: $1e $1e
    add b                                         ; $6119: $80
    ret                                           ; $611a: $c9


    rst $38                                       ; $611b: $ff
    inc c                                         ; $611c: $0c
    inc c                                         ; $611d: $0c
    ld a, [de]                                    ; $611e: $1a
    ld e, $15                                     ; $611f: $1e $15
    rra                                           ; $6121: $1f
    db $db                                        ; $6122: $db
    rst $18                                       ; $6123: $df
    rst $38                                       ; $6124: $ff
    or l                                          ; $6125: $b5
    rst $38                                       ; $6126: $ff
    ld c, e                                       ; $6127: $4b
    ld a, a                                       ; $6128: $7f
    ld b, c                                       ; $6129: $41
    ld a, a                                       ; $612a: $7f
    ld hl, $ff3f                                  ; $612b: $21 $3f $ff
    cp [hl]                                       ; $612e: $be
    cp [hl]                                       ; $612f: $be
    ld a, h                                       ; $6130: $7c
    db $e4                                        ; $6131: $e4
    db $fc                                        ; $6132: $fc
    call nz, $c8f8                                ; $6133: $c4 $f8 $c8
    rst $28                                       ; $6136: $ef
    ld a, b                                       ; $6137: $78
    ret z                                         ; $6138: $c8

    ldh a, [$90]                                  ; $6139: $f0 $90
    cp $e0                                        ; $613b: $fe $e0
    db $10                                        ; $613d: $10
    or $36                                        ; $613e: $f6 $36
    rst $38                                       ; $6140: $ff
    db $ed                                        ; $6141: $ed
    ccf                                           ; $6142: $3f
    pop hl                                        ; $6143: $e1
    ccf                                           ; $6144: $3f
    jp nz, $c47e                                  ; $6145: $c2 $7e $c4

    ld a, h                                       ; $6148: $7c
    rst $38                                       ; $6149: $ff
    ret z                                         ; $614a: $c8

    ld hl, sp-$10                                 ; $614b: $f8 $f0
    ld [hl], b                                    ; $614d: $70
    ldh [rNR41], a                                ; $614e: $e0 $20
    ret nz                                        ; $6150: $c0

    ld b, b                                       ; $6151: $40
    inc bc                                        ; $6152: $03
    add b                                         ; $6153: $80
    add b                                         ; $6154: $80
    or b                                          ; $6155: $b0
    rst $18                                       ; $6156: $df
    rst $38                                       ; $6157: $ff
    ei                                            ; $6158: $fb
    nop                                           ; $6159: $00
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00
    ld l, d                                       ; $615c: $6a
    ld h, c                                       ; $615d: $61
    xor e                                         ; $615e: $ab
    ld h, c                                       ; $615f: $61
    db $ec                                        ; $6160: $ec
    ld h, c                                       ; $6161: $61
    dec l                                         ; $6162: $2d
    ld h, d                                       ; $6163: $62
    ld l, [hl]                                    ; $6164: $6e
    ld h, d                                       ; $6165: $62
    xor a                                         ; $6166: $af
    ld h, d                                       ; $6167: $62
    ldh a, [$62]                                  ; $6168: $f0 $62
    db $10                                        ; $616a: $10
    ld [$0000], sp                                ; $616b: $08 $00 $00
    jr nz, @+$0a                                  ; $616e: $20 $08

    ld [bc], a                                    ; $6170: $02
    nop                                           ; $6171: $00
    jr nc, jr_042_617c                            ; $6172: $30 $08

    inc b                                         ; $6174: $04
    nop                                           ; $6175: $00
    ld b, b                                       ; $6176: $40
    ld [$0006], sp                                ; $6177: $08 $06 $00
    db $10                                        ; $617a: $10
    db $10                                        ; $617b: $10

jr_042_617c:
    ld [$2000], sp                                ; $617c: $08 $00 $20
    db $10                                        ; $617f: $10
    ld a, [bc]                                    ; $6180: $0a
    nop                                           ; $6181: $00
    jr nc, jr_042_6194                            ; $6182: $30 $10

    inc c                                         ; $6184: $0c
    nop                                           ; $6185: $00
    ld b, b                                       ; $6186: $40
    db $10                                        ; $6187: $10
    ld c, $00                                     ; $6188: $0e $00
    db $10                                        ; $618a: $10
    jr jr_042_619d                                ; $618b: $18 $10

    nop                                           ; $618d: $00
    jr nz, @+$1a                                  ; $618e: $20 $18

    ld [de], a                                    ; $6190: $12
    nop                                           ; $6191: $00
    jr nc, jr_042_61ac                            ; $6192: $30 $18

jr_042_6194:
    inc d                                         ; $6194: $14
    nop                                           ; $6195: $00
    ld b, b                                       ; $6196: $40
    jr jr_042_61af                                ; $6197: $18 $16

    nop                                           ; $6199: $00
    db $10                                        ; $619a: $10
    jr nz, jr_042_61b5                            ; $619b: $20 $18

jr_042_619d:
    nop                                           ; $619d: $00
    jr nz, jr_042_61c0                            ; $619e: $20 $20

    ld a, [de]                                    ; $61a0: $1a
    nop                                           ; $61a1: $00
    jr nc, @+$22                                  ; $61a2: $30 $20

    inc e                                         ; $61a4: $1c
    nop                                           ; $61a5: $00
    ld b, b                                       ; $61a6: $40
    jr nz, jr_042_61c7                            ; $61a7: $20 $1e

    nop                                           ; $61a9: $00
    add b                                         ; $61aa: $80
    db $10                                        ; $61ab: $10

jr_042_61ac:
    ld [$0000], sp                                ; $61ac: $08 $00 $00

jr_042_61af:
    jr nz, @+$0a                                  ; $61af: $20 $08

    ld [bc], a                                    ; $61b1: $02
    nop                                           ; $61b2: $00
    jr nc, jr_042_61bd                            ; $61b3: $30 $08

jr_042_61b5:
    inc b                                         ; $61b5: $04
    nop                                           ; $61b6: $00
    ld b, b                                       ; $61b7: $40
    ld [$0006], sp                                ; $61b8: $08 $06 $00
    db $10                                        ; $61bb: $10
    db $10                                        ; $61bc: $10

jr_042_61bd:
    ld [$2000], sp                                ; $61bd: $08 $00 $20

jr_042_61c0:
    db $10                                        ; $61c0: $10
    ld a, [bc]                                    ; $61c1: $0a
    nop                                           ; $61c2: $00
    jr nc, jr_042_61d5                            ; $61c3: $30 $10

    inc c                                         ; $61c5: $0c
    nop                                           ; $61c6: $00

jr_042_61c7:
    ld b, b                                       ; $61c7: $40
    db $10                                        ; $61c8: $10
    ld c, $00                                     ; $61c9: $0e $00
    db $10                                        ; $61cb: $10
    jr jr_042_61de                                ; $61cc: $18 $10

    nop                                           ; $61ce: $00
    jr nz, @+$1a                                  ; $61cf: $20 $18

    ld [de], a                                    ; $61d1: $12
    nop                                           ; $61d2: $00
    jr nc, jr_042_61ed                            ; $61d3: $30 $18

jr_042_61d5:
    inc d                                         ; $61d5: $14
    nop                                           ; $61d6: $00
    ld b, b                                       ; $61d7: $40
    jr jr_042_61f0                                ; $61d8: $18 $16

    nop                                           ; $61da: $00
    db $10                                        ; $61db: $10
    jr nz, jr_042_61f6                            ; $61dc: $20 $18

jr_042_61de:
    nop                                           ; $61de: $00
    jr nz, jr_042_6201                            ; $61df: $20 $20

    ld a, [de]                                    ; $61e1: $1a
    nop                                           ; $61e2: $00
    jr nc, @+$22                                  ; $61e3: $30 $20

    inc e                                         ; $61e5: $1c
    nop                                           ; $61e6: $00
    ld b, b                                       ; $61e7: $40
    jr nz, jr_042_6208                            ; $61e8: $20 $1e

    nop                                           ; $61ea: $00
    add b                                         ; $61eb: $80
    db $10                                        ; $61ec: $10

jr_042_61ed:
    ld [$0000], sp                                ; $61ed: $08 $00 $00

jr_042_61f0:
    jr nz, @+$0a                                  ; $61f0: $20 $08

    ld [bc], a                                    ; $61f2: $02
    nop                                           ; $61f3: $00
    jr nc, jr_042_61fe                            ; $61f4: $30 $08

jr_042_61f6:
    inc b                                         ; $61f6: $04
    nop                                           ; $61f7: $00
    ld b, b                                       ; $61f8: $40
    ld [$0006], sp                                ; $61f9: $08 $06 $00
    db $10                                        ; $61fc: $10
    db $10                                        ; $61fd: $10

jr_042_61fe:
    ld [$2000], sp                                ; $61fe: $08 $00 $20

jr_042_6201:
    db $10                                        ; $6201: $10
    ld a, [bc]                                    ; $6202: $0a
    nop                                           ; $6203: $00
    jr nc, jr_042_6216                            ; $6204: $30 $10

    inc c                                         ; $6206: $0c
    nop                                           ; $6207: $00

jr_042_6208:
    ld b, b                                       ; $6208: $40
    db $10                                        ; $6209: $10
    ld c, $00                                     ; $620a: $0e $00
    db $10                                        ; $620c: $10
    jr jr_042_621f                                ; $620d: $18 $10

    nop                                           ; $620f: $00
    jr nz, @+$1a                                  ; $6210: $20 $18

    ld [de], a                                    ; $6212: $12
    nop                                           ; $6213: $00
    jr nc, jr_042_622e                            ; $6214: $30 $18

jr_042_6216:
    inc d                                         ; $6216: $14
    nop                                           ; $6217: $00
    ld b, b                                       ; $6218: $40
    jr jr_042_6231                                ; $6219: $18 $16

    nop                                           ; $621b: $00
    db $10                                        ; $621c: $10
    jr nz, jr_042_6237                            ; $621d: $20 $18

jr_042_621f:
    nop                                           ; $621f: $00
    jr nz, jr_042_6242                            ; $6220: $20 $20

    ld a, [de]                                    ; $6222: $1a
    nop                                           ; $6223: $00
    jr nc, @+$22                                  ; $6224: $30 $20

    inc e                                         ; $6226: $1c
    nop                                           ; $6227: $00
    ld b, b                                       ; $6228: $40
    jr nz, jr_042_6249                            ; $6229: $20 $1e

    nop                                           ; $622b: $00
    add b                                         ; $622c: $80
    db $10                                        ; $622d: $10

jr_042_622e:
    ld [$0000], sp                                ; $622e: $08 $00 $00

jr_042_6231:
    jr nz, @+$0a                                  ; $6231: $20 $08

    ld [bc], a                                    ; $6233: $02
    nop                                           ; $6234: $00
    jr nc, jr_042_623f                            ; $6235: $30 $08

jr_042_6237:
    inc b                                         ; $6237: $04
    nop                                           ; $6238: $00
    ld b, b                                       ; $6239: $40
    ld [$0006], sp                                ; $623a: $08 $06 $00
    db $10                                        ; $623d: $10
    db $10                                        ; $623e: $10

jr_042_623f:
    ld [$2000], sp                                ; $623f: $08 $00 $20

jr_042_6242:
    db $10                                        ; $6242: $10
    ld a, [bc]                                    ; $6243: $0a
    nop                                           ; $6244: $00
    jr nc, jr_042_6257                            ; $6245: $30 $10

    inc c                                         ; $6247: $0c
    nop                                           ; $6248: $00

jr_042_6249:
    ld b, b                                       ; $6249: $40
    db $10                                        ; $624a: $10
    ld c, $00                                     ; $624b: $0e $00
    db $10                                        ; $624d: $10
    jr jr_042_6260                                ; $624e: $18 $10

    nop                                           ; $6250: $00
    jr nz, @+$1a                                  ; $6251: $20 $18

    ld [de], a                                    ; $6253: $12
    nop                                           ; $6254: $00
    jr nc, jr_042_626f                            ; $6255: $30 $18

jr_042_6257:
    inc d                                         ; $6257: $14
    nop                                           ; $6258: $00
    ld b, b                                       ; $6259: $40
    jr jr_042_6272                                ; $625a: $18 $16

    nop                                           ; $625c: $00
    db $10                                        ; $625d: $10
    jr nz, jr_042_6278                            ; $625e: $20 $18

jr_042_6260:
    nop                                           ; $6260: $00
    jr nz, jr_042_6283                            ; $6261: $20 $20

    ld a, [de]                                    ; $6263: $1a
    nop                                           ; $6264: $00
    jr nc, @+$22                                  ; $6265: $30 $20

    inc e                                         ; $6267: $1c
    nop                                           ; $6268: $00
    ld b, b                                       ; $6269: $40
    jr nz, jr_042_628a                            ; $626a: $20 $1e

    nop                                           ; $626c: $00
    add b                                         ; $626d: $80
    db $10                                        ; $626e: $10

jr_042_626f:
    ld [$0000], sp                                ; $626f: $08 $00 $00

jr_042_6272:
    jr nz, @+$0a                                  ; $6272: $20 $08

    ld [bc], a                                    ; $6274: $02
    nop                                           ; $6275: $00
    jr nc, jr_042_6280                            ; $6276: $30 $08

jr_042_6278:
    inc b                                         ; $6278: $04
    nop                                           ; $6279: $00
    ld b, b                                       ; $627a: $40
    ld [$0006], sp                                ; $627b: $08 $06 $00
    db $10                                        ; $627e: $10
    db $10                                        ; $627f: $10

jr_042_6280:
    ld [$2000], sp                                ; $6280: $08 $00 $20

jr_042_6283:
    db $10                                        ; $6283: $10
    ld a, [bc]                                    ; $6284: $0a
    nop                                           ; $6285: $00
    jr nc, jr_042_6298                            ; $6286: $30 $10

    inc c                                         ; $6288: $0c
    nop                                           ; $6289: $00

jr_042_628a:
    ld b, b                                       ; $628a: $40
    db $10                                        ; $628b: $10
    ld c, $00                                     ; $628c: $0e $00
    db $10                                        ; $628e: $10
    jr jr_042_62a1                                ; $628f: $18 $10

    nop                                           ; $6291: $00
    jr nz, @+$1a                                  ; $6292: $20 $18

    ld [de], a                                    ; $6294: $12
    nop                                           ; $6295: $00
    jr nc, jr_042_62b0                            ; $6296: $30 $18

jr_042_6298:
    inc d                                         ; $6298: $14
    nop                                           ; $6299: $00
    ld b, b                                       ; $629a: $40
    jr jr_042_62b3                                ; $629b: $18 $16

    nop                                           ; $629d: $00
    db $10                                        ; $629e: $10
    jr nz, jr_042_62b9                            ; $629f: $20 $18

jr_042_62a1:
    nop                                           ; $62a1: $00
    jr nz, jr_042_62c4                            ; $62a2: $20 $20

    ld a, [de]                                    ; $62a4: $1a
    nop                                           ; $62a5: $00
    jr nc, @+$22                                  ; $62a6: $30 $20

    inc e                                         ; $62a8: $1c
    nop                                           ; $62a9: $00
    ld b, b                                       ; $62aa: $40
    jr nz, jr_042_62cb                            ; $62ab: $20 $1e

    nop                                           ; $62ad: $00
    add b                                         ; $62ae: $80
    db $10                                        ; $62af: $10

jr_042_62b0:
    ld [$0000], sp                                ; $62b0: $08 $00 $00

jr_042_62b3:
    jr nz, @+$0a                                  ; $62b3: $20 $08

    ld [bc], a                                    ; $62b5: $02
    nop                                           ; $62b6: $00
    jr nc, jr_042_62c1                            ; $62b7: $30 $08

jr_042_62b9:
    inc b                                         ; $62b9: $04
    nop                                           ; $62ba: $00
    ld b, b                                       ; $62bb: $40
    ld [$0006], sp                                ; $62bc: $08 $06 $00
    db $10                                        ; $62bf: $10
    db $10                                        ; $62c0: $10

jr_042_62c1:
    ld [$2000], sp                                ; $62c1: $08 $00 $20

jr_042_62c4:
    db $10                                        ; $62c4: $10
    ld a, [bc]                                    ; $62c5: $0a
    nop                                           ; $62c6: $00
    jr nc, jr_042_62d9                            ; $62c7: $30 $10

    inc c                                         ; $62c9: $0c
    nop                                           ; $62ca: $00

jr_042_62cb:
    ld b, b                                       ; $62cb: $40
    db $10                                        ; $62cc: $10
    ld c, $00                                     ; $62cd: $0e $00
    db $10                                        ; $62cf: $10
    jr jr_042_62e2                                ; $62d0: $18 $10

    nop                                           ; $62d2: $00
    jr nz, @+$1a                                  ; $62d3: $20 $18

    ld [de], a                                    ; $62d5: $12
    nop                                           ; $62d6: $00
    jr nc, jr_042_62f1                            ; $62d7: $30 $18

jr_042_62d9:
    inc d                                         ; $62d9: $14
    nop                                           ; $62da: $00
    ld b, b                                       ; $62db: $40
    jr jr_042_62f4                                ; $62dc: $18 $16

    nop                                           ; $62de: $00
    db $10                                        ; $62df: $10
    jr nz, jr_042_62fa                            ; $62e0: $20 $18

jr_042_62e2:
    nop                                           ; $62e2: $00
    jr nz, jr_042_6305                            ; $62e3: $20 $20

    ld a, [de]                                    ; $62e5: $1a
    nop                                           ; $62e6: $00
    jr nc, @+$22                                  ; $62e7: $30 $20

    inc e                                         ; $62e9: $1c
    nop                                           ; $62ea: $00
    ld b, b                                       ; $62eb: $40
    jr nz, jr_042_630c                            ; $62ec: $20 $1e

    nop                                           ; $62ee: $00
    add b                                         ; $62ef: $80
    db $10                                        ; $62f0: $10

jr_042_62f1:
    ld [$0000], sp                                ; $62f1: $08 $00 $00

jr_042_62f4:
    jr nz, @+$0a                                  ; $62f4: $20 $08

    ld [bc], a                                    ; $62f6: $02
    nop                                           ; $62f7: $00
    jr nc, jr_042_6302                            ; $62f8: $30 $08

jr_042_62fa:
    inc b                                         ; $62fa: $04
    nop                                           ; $62fb: $00
    ld b, b                                       ; $62fc: $40
    ld [$0006], sp                                ; $62fd: $08 $06 $00
    db $10                                        ; $6300: $10
    db $10                                        ; $6301: $10

jr_042_6302:
    ld [$2000], sp                                ; $6302: $08 $00 $20

jr_042_6305:
    db $10                                        ; $6305: $10
    ld a, [bc]                                    ; $6306: $0a
    nop                                           ; $6307: $00
    jr nc, jr_042_631a                            ; $6308: $30 $10

    inc c                                         ; $630a: $0c
    nop                                           ; $630b: $00

jr_042_630c:
    ld b, b                                       ; $630c: $40
    db $10                                        ; $630d: $10
    ld c, $00                                     ; $630e: $0e $00
    db $10                                        ; $6310: $10
    jr jr_042_6323                                ; $6311: $18 $10

    nop                                           ; $6313: $00
    jr nz, @+$1a                                  ; $6314: $20 $18

    ld [de], a                                    ; $6316: $12
    nop                                           ; $6317: $00
    jr nc, jr_042_6332                            ; $6318: $30 $18

jr_042_631a:
    inc d                                         ; $631a: $14
    nop                                           ; $631b: $00
    ld b, b                                       ; $631c: $40
    jr jr_042_6335                                ; $631d: $18 $16

    nop                                           ; $631f: $00
    db $10                                        ; $6320: $10
    jr nz, jr_042_633b                            ; $6321: $20 $18

jr_042_6323:
    nop                                           ; $6323: $00
    jr nz, @+$22                                  ; $6324: $20 $20

    ld a, [de]                                    ; $6326: $1a
    nop                                           ; $6327: $00
    jr nc, @+$22                                  ; $6328: $30 $20

    inc e                                         ; $632a: $1c
    nop                                           ; $632b: $00
    ld b, b                                       ; $632c: $40
    jr nz, jr_042_634d                            ; $632d: $20 $1e

    nop                                           ; $632f: $00
    add b                                         ; $6330: $80
    nop                                           ; $6331: $00

jr_042_6332:
    inc d                                         ; $6332: $14
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00

jr_042_6335:
    ld bc, $0014                                  ; $6335: $01 $14 $00
    nop                                           ; $6338: $00
    rst $38                                       ; $6339: $ff
    nop                                           ; $633a: $00

jr_042_633b:
    nop                                           ; $633b: $00
    nop                                           ; $633c: $00
    ld [bc], a                                    ; $633d: $02
    inc c                                         ; $633e: $0c
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    inc bc                                        ; $6341: $03
    rrca                                          ; $6342: $0f
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    ld b, $01                                     ; $6345: $06 $01
    nop                                           ; $6347: $00
    ld a, [$0206]                                 ; $6348: $fa $06 $02
    nop                                           ; $634b: $00
    db $fc                                        ; $634c: $fc

jr_042_634d:
    ld b, $01                                     ; $634d: $06 $01
    nop                                           ; $634f: $00
    db $fd                                        ; $6350: $fd
    ld b, $01                                     ; $6351: $06 $01
    nop                                           ; $6353: $00
    db $fd                                        ; $6354: $fd
    ld b, $01                                     ; $6355: $06 $01
    nop                                           ; $6357: $00
    cp $06                                        ; $6358: $fe $06
    ld bc, $fe00                                  ; $635a: $01 $00 $fe
    ld b, $01                                     ; $635d: $06 $01
    nop                                           ; $635f: $00
    rst $38                                       ; $6360: $ff
    inc b                                         ; $6361: $04
    ld bc, $ff00                                  ; $6362: $01 $00 $ff
    inc b                                         ; $6365: $04
    ld bc, $ff00                                  ; $6366: $01 $00 $ff
    inc b                                         ; $6369: $04
    ld bc, $ff00                                  ; $636a: $01 $00 $ff
    inc b                                         ; $636d: $04
    ld bc, $ff00                                  ; $636e: $01 $00 $ff
    inc b                                         ; $6371: $04
    inc b                                         ; $6372: $04
    nop                                           ; $6373: $00
    rst $38                                       ; $6374: $ff
    inc b                                         ; $6375: $04
    ld a, [bc]                                    ; $6376: $0a
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    inc b                                         ; $6379: $04
    ld bc, $0100                                  ; $637a: $01 $00 $01
    inc b                                         ; $637d: $04
    ld bc, $0100                                  ; $637e: $01 $00 $01
    inc b                                         ; $6381: $04
    ld bc, $0100                                  ; $6382: $01 $00 $01
    inc b                                         ; $6385: $04
    ld bc, $0100                                  ; $6386: $01 $00 $01
    dec b                                         ; $6389: $05
    ld bc, $0100                                  ; $638a: $01 $00 $01
    dec b                                         ; $638d: $05
    ld bc, $0100                                  ; $638e: $01 $00 $01
    dec b                                         ; $6391: $05
    ld b, $00                                     ; $6392: $06 $00
    ld [bc], a                                    ; $6394: $02
    dec b                                         ; $6395: $05
    dec b                                         ; $6396: $05
    nop                                           ; $6397: $00
    inc bc                                        ; $6398: $03
    rst $38                                       ; $6399: $ff
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    and a                                         ; $639d: $a7
    ld h, e                                       ; $639e: $63
    xor a                                         ; $639f: $af
    ld h, e                                       ; $63a0: $63
    ld [hl], d                                    ; $63a1: $72
    ld l, e                                       ; $63a2: $6b
    inc b                                         ; $63a3: $04
    ld l, l                                       ; $63a4: $6d
    db $10                                        ; $63a5: $10
    ld l, l                                       ; $63a6: $6d
    rst $38                                       ; $63a7: $ff
    ld l, e                                       ; $63a8: $6b
    rst $38                                       ; $63a9: $ff
    ld l, e                                       ; $63aa: $6b
    rra                                           ; $63ab: $1f
    ld [bc], a                                    ; $63ac: $02
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    ret nz                                        ; $63af: $c0

    ld h, e                                       ; $63b0: $63
    ld [bc], a                                    ; $63b1: $02
    ld h, l                                       ; $63b2: $65
    ld d, d                                       ; $63b3: $52
    ld h, [hl]                                    ; $63b4: $66
    adc a                                         ; $63b5: $8f
    ld h, a                                       ; $63b6: $67
    xor l                                         ; $63b7: $ad
    ld l, b                                       ; $63b8: $68
    ld [$006a], sp                                ; $63b9: $08 $6a $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    ld sp, hl                                     ; $63c0: $f9
    nop                                           ; $63c1: $00
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    pop af                                        ; $63c4: $f1
    ldh a, [rSB]                                  ; $63c5: $f0 $01
    ld bc, $0607                                  ; $63c7: $01 $07 $06
    rlca                                          ; $63ca: $07
    ld e, a                                       ; $63cb: $5f
    dec b                                         ; $63cc: $05
    rrca                                          ; $63cd: $0f
    ld a, [bc]                                    ; $63ce: $0a
    rlca                                          ; $63cf: $07
    dec b                                         ; $63d0: $05
    ld hl, sp-$20                                 ; $63d1: $f8 $e0
    inc b                                         ; $63d3: $04
    cp $e2                                        ; $63d4: $fe $e2
    ld l, h                                       ; $63d6: $6c
    ld hl, sp-$1b                                 ; $63d7: $f8 $e5
    ld a, [c]                                     ; $63d9: $f2
    ldh [$03], a                                  ; $63da: $e0 $03
    inc bc                                        ; $63dc: $03
    call nz, Call_000_02fb                        ; $63dd: $c4 $fb $02
    inc bc                                        ; $63e0: $03
    call $f1e1                                    ; $63e1: $cd $e1 $f1
    rlca                                          ; $63e4: $07
    rst $00                                       ; $63e5: $c7
    ldh [$d6], a                                  ; $63e6: $e0 $d6
    rst $30                                       ; $63e8: $f7
    jp c, Jump_000_0ce1                           ; $63e9: $da $e1 $0c

    rrca                                          ; $63ec: $0f
    inc de                                        ; $63ed: $13
    rra                                           ; $63ee: $1f
    rst $38                                       ; $63ef: $ff
    rla                                           ; $63f0: $17
    inc e                                         ; $63f1: $1c
    cpl                                           ; $63f2: $2f
    jr c, jr_042_6434                             ; $63f3: $38 $3f

    inc sp                                        ; $63f5: $33
    ccf                                           ; $63f6: $3f
    jr nc, @+$01                                  ; $63f7: $30 $ff

    ccf                                           ; $63f9: $3f
    daa                                           ; $63fa: $27
    dec sp                                        ; $63fb: $3b
    ccf                                           ; $63fc: $3f
    ld a, e                                       ; $63fd: $7b
    ld a, a                                       ; $63fe: $7f
    ei                                            ; $63ff: $fb
    sbc a                                         ; $6400: $9f
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    or a                                          ; $6403: $b7
    rst $38                                       ; $6404: $ff
    sub b                                         ; $6405: $90
    rst $38                                       ; $6406: $ff
    or b                                          ; $6407: $b0
    rst $18                                       ; $6408: $df
    ld hl, sp-$01                                 ; $6409: $f8 $ff
    rst $38                                       ; $640b: $ff
    cp c                                          ; $640c: $b9
    rst $28                                       ; $640d: $ef
    xor b                                         ; $640e: $a8
    rst $30                                       ; $640f: $f7
    or h                                          ; $6410: $b4
    rst $38                                       ; $6411: $ff
    db $ec                                        ; $6412: $ec
    rst $38                                       ; $6413: $ff
    ei                                            ; $6414: $fb
    ld l, d                                       ; $6415: $6a
    di                                            ; $6416: $f3
    sub d                                         ; $6417: $92
    di                                            ; $6418: $f3
    sub e                                         ; $6419: $93
    db $ec                                        ; $641a: $ec
    cpl                                           ; $641b: $2f
    rst $38                                       ; $641c: $ff
    push af                                       ; $641d: $f5
    ccf                                           ; $641e: $3f
    call $f2ff                                    ; $641f: $cd $ff $f2
    ld a, a                                       ; $6422: $7f
    ld a, [c]                                     ; $6423: $f2
    ld e, a                                       ; $6424: $5f
    rst $38                                       ; $6425: $ff
    ld [c], a                                     ; $6426: $e2
    ccf                                           ; $6427: $3f
    db $e3                                        ; $6428: $e3
    ccf                                           ; $6429: $3f
    ldh [rIE], a                                  ; $642a: $e0 $ff
    jr nz, jr_042_646d                            ; $642c: $20 $3f

    rst $38                                       ; $642e: $ff
    ld b, b                                       ; $642f: $40
    ld a, a                                       ; $6430: $7f
    ld b, b                                       ; $6431: $40
    ld a, a                                       ; $6432: $7f
    ld a, a                                       ; $6433: $7f

jr_042_6434:
    ld a, a                                       ; $6434: $7f
    ld a, h                                       ; $6435: $7c
    ld l, a                                       ; $6436: $6f
    ei                                            ; $6437: $fb
    ld a, a                                       ; $6438: $7f
    ld b, e                                       ; $6439: $43
    rst $30                                       ; $643a: $f7
    ldh [rDMA], a                                 ; $643b: $e0 $46
    ccf                                           ; $643d: $3f
    ld hl, $203f                                  ; $643e: $21 $3f $20
    cp $fe                                        ; $6441: $fe $fe
    db $e3                                        ; $6443: $e3
    ld a, a                                       ; $6444: $7f
    ld b, b                                       ; $6445: $40
    rst $38                                       ; $6446: $ff
    ld hl, sp+$27                                 ; $6447: $f8 $27
    cp $11                                        ; $6449: $fe $11
    ccf                                           ; $644b: $3f
    rst $38                                       ; $644c: $ff
    nop                                           ; $644d: $00
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    inc b                                         ; $6451: $04
    db $fc                                        ; $6452: $fc

jr_042_6453:
    ldh [rNR14], a                                ; $6453: $e0 $14
    push af                                       ; $6455: $f5
    rst $38                                       ; $6456: $ff
    ldh [$e0], a                                  ; $6457: $e0 $e0
    jr jr_042_6453                                ; $6459: $18 $f8

    ld b, $fe                                     ; $645b: $06 $fe
    add hl, de                                    ; $645d: $19
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    db $fd                                        ; $6460: $fd
    rst $20                                       ; $6461: $e7
    cp $03                                        ; $6462: $fe $03
    rst $38                                       ; $6464: $ff
    add hl, de                                    ; $6465: $19
    rst $38                                       ; $6466: $ff
    ld bc, $ffff                                  ; $6467: $01 $ff $ff
    inc e                                         ; $646a: $1c
    rst $28                                       ; $646b: $ef
    cp a                                          ; $646c: $bf

jr_042_646d:
    rst $28                                       ; $646d: $ef
    rst $38                                       ; $646e: $ff
    rst $28                                       ; $646f: $ef
    rst $38                                       ; $6470: $ff
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    cp l                                          ; $6473: $bd
    rst $38                                       ; $6474: $ff
    and c                                         ; $6475: $a1
    rst $38                                       ; $6476: $ff
    ld b, c                                       ; $6477: $41
    rst $38                                       ; $6478: $ff
    inc bc                                        ; $6479: $03
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    inc sp                                        ; $647c: $33
    sbc $f2                                       ; $647d: $de $f2
    sbc h                                         ; $647f: $9c
    db $f4                                        ; $6480: $f4
    db $fc                                        ; $6481: $fc
    ld h, h                                       ; $6482: $64
    rst $38                                       ; $6483: $ff
    ld hl, sp+$08                                 ; $6484: $f8 $08
    db $fc                                        ; $6486: $fc
    inc c                                         ; $6487: $0c
    ld a, [c]                                     ; $6488: $f2
    ld a, $e5                                     ; $6489: $3e $e5
    rst $38                                       ; $648b: $ff
    ld a, a                                       ; $648c: $7f
    adc c                                         ; $648d: $89
    rst $38                                       ; $648e: $ff
    ld d, b                                       ; $648f: $50
    rst $38                                       ; $6490: $ff
    ld h, b                                       ; $6491: $60
    rst $38                                       ; $6492: $ff
    add d                                         ; $6493: $82
    cp $e2                                        ; $6494: $fe $e2
    xor c                                         ; $6496: $a9
    ld bc, $e4fe                                  ; $6497: $01 $fe $e4
    sbc l                                         ; $649a: $9d
    ldh [$f7], a                                  ; $649b: $e0 $f7
    sub a                                         ; $649d: $97
    ldh [rP1], a                                  ; $649e: $e0 $00
    jp nz, $e0e0                                  ; $64a0: $c2 $e0 $e0

    db $db                                        ; $64a3: $db
    cp a                                          ; $64a4: $bf
    and b                                         ; $64a5: $a0
    cp $e1                                        ; $64a6: $fe $e1
    rst $18                                       ; $64a8: $df
    ld d, b                                       ; $64a9: $50
    cp $e0                                        ; $64aa: $fe $e0
    rst $10                                       ; $64ac: $d7
    ld hl, sp-$41                                 ; $64ad: $f8 $bf
    ld l, a                                       ; $64af: $6f
    ldh a, [rIE]                                  ; $64b0: $f0 $ff
    ld d, b                                       ; $64b2: $50
    rst $18                                       ; $64b3: $df

jr_042_64b4:
    rst $18                                       ; $64b4: $df
    di                                            ; $64b5: $f3
    ldh [$8f], a                                  ; $64b6: $e0 $8f
    push af                                       ; $64b8: $f5
    adc a                                         ; $64b9: $8f
    sub h                                         ; $64ba: $94
    rst $18                                       ; $64bb: $df
    add b                                         ; $64bc: $80
    rst $38                                       ; $64bd: $ff
    and $c0                                       ; $64be: $e6 $c0
    ret nz                                        ; $64c0: $c0

    ldh [rNR41], a                                ; $64c1: $e0 $20
    ld a, e                                       ; $64c3: $7b
    ldh [$a0], a                                  ; $64c4: $e0 $a0
    db $fc                                        ; $64c6: $fc
    pop hl                                        ; $64c7: $e1
    ld b, b                                       ; $64c8: $40
    ret nz                                        ; $64c9: $c0

    add b                                         ; $64ca: $80
    add b                                         ; $64cb: $80
    jp c, $f7ed                                   ; $64cc: $da $ed $f7

    ld b, b                                       ; $64cf: $40
    ret nz                                        ; $64d0: $c0

    jr nz, jr_042_64b4                            ; $64d1: $20 $e1

    ldh [rSVBK], a                                ; $64d3: $e0 $70
    ret nc                                        ; $64d5: $d0

    ldh a, [$90]                                  ; $64d6: $f0 $90
    rst $38                                       ; $64d8: $ff
    ld hl, sp+$08                                 ; $64d9: $f8 $08
    ld hl, sp-$78                                 ; $64db: $f8 $88
    ld hl, sp+$08                                 ; $64dd: $f8 $08
    ldh a, [rNR10]                                ; $64df: $f0 $10
    rst $20                                       ; $64e1: $e7
    ldh [rNR41], a                                ; $64e2: $e0 $20
    ret nz                                        ; $64e4: $c0

    ret c                                         ; $64e5: $d8

    ldh [$c2], a                                  ; $64e6: $e0 $c2
    and $40                                       ; $64e8: $e6 $40
    ret nz                                        ; $64ea: $c0

    ld b, b                                       ; $64eb: $40
    cp $c0                                        ; $64ec: $fe $c0
    ldh [rNR41], a                                ; $64ee: $e0 $20
    ldh a, [$90]                                  ; $64f0: $f0 $90
    ld a, b                                       ; $64f2: $78
    add sp, $18                                   ; $64f3: $e8 $18
    ld hl, sp-$01                                 ; $64f5: $f8 $ff
    jr @-$06                                      ; $64f7: $18 $f8

    ldh a, [$f0]                                  ; $64f9: $f0 $f0
    db $10                                        ; $64fb: $10
    ldh a, [$e0]                                  ; $64fc: $f0 $e0
    ldh [rP1], a                                  ; $64fe: $e0 $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    ld sp, hl                                     ; $6502: $f9
    nop                                           ; $6503: $00
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    pop af                                        ; $6506: $f1
    ldh a, [rNR32]                                ; $6507: $f0 $1c
    inc e                                         ; $6509: $1c
    ld a, $2a                                     ; $650a: $3e $2a
    ld a, a                                       ; $650c: $7f
    rst $38                                       ; $650d: $ff
    ld d, l                                       ; $650e: $55
    ld a, a                                       ; $650f: $7f
    ld l, a                                       ; $6510: $6f
    rst $38                                       ; $6511: $ff
    sub [hl]                                      ; $6512: $96
    ld a, a                                       ; $6513: $7f
    ld l, d                                       ; $6514: $6a
    ccf                                           ; $6515: $3f
    rst $38                                       ; $6516: $ff
    inc [hl]                                      ; $6517: $34
    ccf                                           ; $6518: $3f
    inc h                                         ; $6519: $24
    ccf                                           ; $651a: $3f
    jr nz, @+$21                                  ; $651b: $20 $1f

    ld de, $ff1f                                  ; $651d: $11 $1f $ff
    inc e                                         ; $6520: $1c
    rrca                                          ; $6521: $0f
    ld [$080f], sp                                ; $6522: $08 $0f $08
    rlca                                          ; $6525: $07
    inc b                                         ; $6526: $04
    rlca                                          ; $6527: $07
    rst $30                                       ; $6528: $f7
    inc b                                         ; $6529: $04
    inc bc                                        ; $652a: $03
    inc bc                                        ; $652b: $03
    cp [hl]                                       ; $652c: $be
    ld sp, hl                                     ; $652d: $f9
    ld bc, $0201                                  ; $652e: $01 $01 $02
    inc bc                                        ; $6531: $03
    add $db                                       ; $6532: $c6 $db
    ldh [rTAC], a                                 ; $6534: $e0 $07
    rlca                                          ; $6536: $07
    push de                                       ; $6537: $d5
    ldh [$d6], a                                  ; $6538: $e0 $d6
    rst $30                                       ; $653a: $f7
    jp c, Jump_000_0ce1                           ; $653b: $da $e1 $0c

    rrca                                          ; $653e: $0f
    rst $38                                       ; $653f: $ff
    inc de                                        ; $6540: $13
    rra                                           ; $6541: $1f
    rla                                           ; $6542: $17
    inc e                                         ; $6543: $1c
    cpl                                           ; $6544: $2f
    jr c, jr_042_6586                             ; $6545: $38 $3f

    inc sp                                        ; $6547: $33
    rst $38                                       ; $6548: $ff
    ccf                                           ; $6549: $3f
    jr nc, jr_042_658b                            ; $654a: $30 $3f

    daa                                           ; $654c: $27
    dec sp                                        ; $654d: $3b
    ccf                                           ; $654e: $3f
    ld a, e                                       ; $654f: $7b
    ld a, a                                       ; $6550: $7f
    rst $38                                       ; $6551: $ff
    ei                                            ; $6552: $fb
    sbc a                                         ; $6553: $9f
    rst $38                                       ; $6554: $ff
    or a                                          ; $6555: $b7
    rst $38                                       ; $6556: $ff
    sub b                                         ; $6557: $90
    rst $38                                       ; $6558: $ff
    or b                                          ; $6559: $b0
    rst $28                                       ; $655a: $ef
    ld e, a                                       ; $655b: $5f
    ld a, b                                       ; $655c: $78
    ccf                                           ; $655d: $3f
    add hl, sp                                    ; $655e: $39
    sub h                                         ; $655f: $94
    pop hl                                        ; $6560: $e1
    add a                                         ; $6561: $87
    add h                                         ; $6562: $84
    add e                                         ; $6563: $83
    db $fd                                        ; $6564: $fd
    add d                                         ; $6565: $82
    cp $e0                                        ; $6566: $fe $e0
    add e                                         ; $6568: $83
    adc h                                         ; $6569: $8c
    adc a                                         ; $656a: $8f
    or l                                          ; $656b: $b5
    cp a                                          ; $656c: $bf
    call $ffff                                    ; $656d: $cd $ff $ff
    ld a, [c]                                     ; $6570: $f2
    cp a                                          ; $6571: $bf
    ld a, [c]                                     ; $6572: $f2
    rra                                           ; $6573: $1f
    ld [c], a                                     ; $6574: $e2
    ccf                                           ; $6575: $3f
    db $e3                                        ; $6576: $e3
    rst $38                                       ; $6577: $ff
    ccf                                           ; $6578: $3f
    ldh [rIE], a                                  ; $6579: $e0 $ff
    jr nz, jr_042_65bc                            ; $657b: $20 $3f

    ld b, b                                       ; $657d: $40
    ld a, a                                       ; $657e: $7f
    ld b, b                                       ; $657f: $40
    ld a, a                                       ; $6580: $7f
    ld a, a                                       ; $6581: $7f
    ld a, a                                       ; $6582: $7f
    ld a, a                                       ; $6583: $7f
    ld a, h                                       ; $6584: $7c
    ld l, a                                       ; $6585: $6f

jr_042_6586:
    ld a, a                                       ; $6586: $7f
    ld b, e                                       ; $6587: $43
    rst $30                                       ; $6588: $f7
    ldh [$df], a                                  ; $6589: $e0 $df

jr_042_658b:
    ld b, [hl]                                    ; $658b: $46
    ccf                                           ; $658c: $3f
    ld hl, $203f                                  ; $658d: $21 $3f $20
    cp $e3                                        ; $6590: $fe $e3
    ld a, a                                       ; $6592: $7f
    ld b, b                                       ; $6593: $40
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    ld hl, sp+$27                                 ; $6596: $f8 $27
    cp $11                                        ; $6598: $fe $11
    rst $38                                       ; $659a: $ff
    nop                                           ; $659b: $00
    rst $38                                       ; $659c: $ff
    rst $20                                       ; $659d: $e7
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    inc b                                         ; $65a0: $04
    db $fc                                        ; $65a1: $fc
    ldh [rNR14], a                                ; $65a2: $e0 $14
    push af                                       ; $65a4: $f5
    ldh [$e0], a                                  ; $65a5: $e0 $e0
    jr @+$01                                      ; $65a7: $18 $ff

    ld hl, sp+$06                                 ; $65a9: $f8 $06
    cp $19                                        ; $65ab: $fe $19
    rst $38                                       ; $65ad: $ff
    db $fd                                        ; $65ae: $fd
    rst $20                                       ; $65af: $e7
    cp $ff                                        ; $65b0: $fe $ff
    inc bc                                        ; $65b2: $03
    rst $38                                       ; $65b3: $ff
    add hl, de                                    ; $65b4: $19
    rst $38                                       ; $65b5: $ff
    ld bc, $1cff                                  ; $65b6: $01 $ff $1c
    rst $28                                       ; $65b9: $ef
    rst $38                                       ; $65ba: $ff
    cp a                                          ; $65bb: $bf

jr_042_65bc:
    rst $28                                       ; $65bc: $ef
    rst $38                                       ; $65bd: $ff
    rst $28                                       ; $65be: $ef
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    cp l                                          ; $65c1: $bd
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    and c                                         ; $65c4: $a1
    rst $38                                       ; $65c5: $ff
    ld b, c                                       ; $65c6: $41
    rst $38                                       ; $65c7: $ff
    inc bc                                        ; $65c8: $03
    rst $38                                       ; $65c9: $ff
    inc sp                                        ; $65ca: $33
    sbc $ff                                       ; $65cb: $de $ff
    ld a, [c]                                     ; $65cd: $f2
    sbc h                                         ; $65ce: $9c
    db $f4                                        ; $65cf: $f4
    db $fc                                        ; $65d0: $fc
    ld h, h                                       ; $65d1: $64
    ld hl, sp+$08                                 ; $65d2: $f8 $08
    db $fc                                        ; $65d4: $fc
    rst $38                                       ; $65d5: $ff
    inc c                                         ; $65d6: $0c
    ld a, [c]                                     ; $65d7: $f2
    ld a, $e5                                     ; $65d8: $3e $e5
    rst $38                                       ; $65da: $ff
    adc c                                         ; $65db: $89
    rst $38                                       ; $65dc: $ff
    ld d, b                                       ; $65dd: $50
    cpl                                           ; $65de: $2f
    rst $38                                       ; $65df: $ff
    ld h, b                                       ; $65e0: $60
    rst $38                                       ; $65e1: $ff
    add d                                         ; $65e2: $82
    cp $e2                                        ; $65e3: $fe $e2
    ld bc, $e4fe                                  ; $65e5: $01 $fe $e4
    sbc l                                         ; $65e8: $9d
    ldh [$75], a                                  ; $65e9: $e0 $75
    rst $30                                       ; $65eb: $f7
    sub a                                         ; $65ec: $97
    ldh [rP1], a                                  ; $65ed: $e0 $00
    jp nz, $e0e0                                  ; $65ef: $c2 $e0 $e0

    cp a                                          ; $65f2: $bf
    and b                                         ; $65f3: $a0
    cp $e1                                        ; $65f4: $fe $e1
    ei                                            ; $65f6: $fb
    rst $18                                       ; $65f7: $df
    ld d, b                                       ; $65f8: $50
    cp $e0                                        ; $65f9: $fe $e0
    rst $10                                       ; $65fb: $d7
    ld hl, sp+$6f                                 ; $65fc: $f8 $6f
    ldh a, [rIE]                                  ; $65fe: $f0 $ff
    rst $38                                       ; $6600: $ff
    ld d, b                                       ; $6601: $50
    rst $18                                       ; $6602: $df
    rst $18                                       ; $6603: $df

jr_042_6604:
    rst $18                                       ; $6604: $df
    ld [hl], b                                    ; $6605: $70
    rst $38                                       ; $6606: $ff
    adc a                                         ; $6607: $8f
    adc a                                         ; $6608: $8f
    ld a, [$df94]                                 ; $6609: $fa $94 $df
    add b                                         ; $660c: $80
    rst $38                                       ; $660d: $ff
    and $c0                                       ; $660e: $e6 $c0
    ret nz                                        ; $6610: $c0

    ldh [rNR41], a                                ; $6611: $e0 $20
    ldh [$bd], a                                  ; $6613: $e0 $bd
    and b                                         ; $6615: $a0
    db $fc                                        ; $6616: $fc
    pop hl                                        ; $6617: $e1
    ld b, b                                       ; $6618: $40
    ret nz                                        ; $6619: $c0

    add b                                         ; $661a: $80
    add b                                         ; $661b: $80
    jp c, Jump_042_40ed                           ; $661c: $da $ed $40

    ei                                            ; $661f: $fb
    ret nz                                        ; $6620: $c0

    jr nz, jr_042_6604                            ; $6621: $20 $e1

    ldh [rSVBK], a                                ; $6623: $e0 $70
    ret nc                                        ; $6625: $d0

    ldh a, [$90]                                  ; $6626: $f0 $90
    ld hl, sp-$01                                 ; $6628: $f8 $ff
    ld [$88f8], sp                                ; $662a: $08 $f8 $88
    ld hl, sp+$08                                 ; $662d: $f8 $08
    ldh a, [rNR10]                                ; $662f: $f0 $10

jr_042_6631:
    ldh [$73], a                                  ; $6631: $e0 $73
    jr nz, @-$3e                                  ; $6633: $20 $c0

    ret c                                         ; $6635: $d8

    ldh [$c2], a                                  ; $6636: $e0 $c2
    and $40                                       ; $6638: $e6 $40
    ret nz                                        ; $663a: $c0

    ld b, b                                       ; $663b: $40
    ret nz                                        ; $663c: $c0

    ldh [rIE], a                                  ; $663d: $e0 $ff
    jr nz, jr_042_6631                            ; $663f: $20 $f0

    sub b                                         ; $6641: $90
    ld a, b                                       ; $6642: $78
    add sp, $18                                   ; $6643: $e8 $18
    ld hl, sp+$18                                 ; $6645: $f8 $18
    ld a, a                                       ; $6647: $7f
    ld hl, sp-$10                                 ; $6648: $f8 $f0
    ldh a, [rNR10]                                ; $664a: $f0 $10
    ldh a, [$e0]                                  ; $664c: $f0 $e0
    ldh [rP1], a                                  ; $664e: $e0 $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    ld de, $ff00                                  ; $6652: $11 $00 $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    jp hl                                         ; $6658: $e9


    add sp, $01                                   ; $6659: $e8 $01
    rst $38                                       ; $665b: $ff
    ld [c], a                                     ; $665c: $e2
    or $eb                                        ; $665d: $f6 $eb
    sbc $ed                                       ; $665f: $de $ed
    ld a, a                                       ; $6661: $7f
    ld [bc], a                                    ; $6662: $02
    inc bc                                        ; $6663: $03
    inc b                                         ; $6664: $04
    rlca                                          ; $6665: $07
    inc b                                         ; $6666: $04
    rlca                                          ; $6667: $07
    rlca                                          ; $6668: $07
    db $fc                                        ; $6669: $fc
    ldh [$fb], a                                  ; $666a: $e0 $fb
    inc bc                                        ; $666c: $03
    inc bc                                        ; $666d: $03
    cp b                                          ; $666e: $b8
    rst $30                                       ; $666f: $f7
    ld [bc], a                                    ; $6670: $02
    inc bc                                        ; $6671: $03
    inc c                                         ; $6672: $0c
    rrca                                          ; $6673: $0f
    inc de                                        ; $6674: $13
    rst $38                                       ; $6675: $ff
    rra                                           ; $6676: $1f
    rla                                           ; $6677: $17
    inc e                                         ; $6678: $1c
    cpl                                           ; $6679: $2f
    jr c, jr_042_66bb                             ; $667a: $38 $3f

    inc sp                                        ; $667c: $33
    ccf                                           ; $667d: $3f
    rst $38                                       ; $667e: $ff
    jr nc, jr_042_66c0                            ; $667f: $30 $3f

    daa                                           ; $6681: $27
    dec sp                                        ; $6682: $3b
    ccf                                           ; $6683: $3f
    ld a, e                                       ; $6684: $7b
    ld a, a                                       ; $6685: $7f
    ei                                            ; $6686: $fb
    rst $38                                       ; $6687: $ff
    sbc a                                         ; $6688: $9f
    rst $38                                       ; $6689: $ff
    or a                                          ; $668a: $b7
    rst $38                                       ; $668b: $ff
    sub b                                         ; $668c: $90
    rst $38                                       ; $668d: $ff
    or b                                          ; $668e: $b0
    ld e, a                                       ; $668f: $5f
    rst $18                                       ; $6690: $df
    ld a, b                                       ; $6691: $78
    ccf                                           ; $6692: $3f
    add hl, sp                                    ; $6693: $39
    rrca                                          ; $6694: $0f
    ld [$e0bb], sp                                ; $6695: $08 $bb $e0
    inc b                                         ; $6698: $04
    inc bc                                        ; $6699: $03
    rst $38                                       ; $669a: $ff
    ld [bc], a                                    ; $669b: $02
    inc bc                                        ; $669c: $03
    ld [bc], a                                    ; $669d: $02
    rlca                                          ; $669e: $07
    rlca                                          ; $669f: $07
    inc e                                         ; $66a0: $1c
    rra                                           ; $66a1: $1f
    dec l                                         ; $66a2: $2d
    rst $38                                       ; $66a3: $ff
    ccf                                           ; $66a4: $3f
    ld d, l                                       ; $66a5: $55
    ld a, a                                       ; $66a6: $7f
    ld d, d                                       ; $66a7: $52
    ld a, a                                       ; $66a8: $7f
    ld [c], a                                     ; $66a9: $e2
    rst $38                                       ; $66aa: $ff
    ld [c], a                                     ; $66ab: $e2
    ld a, a                                       ; $66ac: $7f
    ccf                                           ; $66ad: $3f
    db $e3                                        ; $66ae: $e3
    ccf                                           ; $66af: $3f
    ret nz                                        ; $66b0: $c0

    ld a, a                                       ; $66b1: $7f
    ret nz                                        ; $66b2: $c0

    rst $38                                       ; $66b3: $ff
    cp $e0                                        ; $66b4: $fe $e0
    rst $38                                       ; $66b6: $ff
    ld a, a                                       ; $66b7: $7f
    rst $38                                       ; $66b8: $ff
    ld a, a                                       ; $66b9: $7f
    db $fc                                        ; $66ba: $fc

jr_042_66bb:
    ld l, a                                       ; $66bb: $6f
    rst $38                                       ; $66bc: $ff
    jp Jump_042_7f7f                              ; $66bd: $c3 $7f $7f


jr_042_66c0:
    ld b, b                                       ; $66c0: $40
    ld a, a                                       ; $66c1: $7f
    ld b, [hl]                                    ; $66c2: $46
    ccf                                           ; $66c3: $3f
    ld hl, $203f                                  ; $66c4: $21 $3f $20
    cp $e3                                        ; $66c7: $fe $e3
    rst $38                                       ; $66c9: $ff
    ld a, a                                       ; $66ca: $7f
    ld b, b                                       ; $66cb: $40
    rst $38                                       ; $66cc: $ff
    ld hl, sp+$27                                 ; $66cd: $f8 $27
    cp $11                                        ; $66cf: $fe $11
    rst $38                                       ; $66d1: $ff
    sbc a                                         ; $66d2: $9f
    nop                                           ; $66d3: $00
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    inc b                                         ; $66d7: $04
    db $fc                                        ; $66d8: $fc
    ldh [$2e], a                                  ; $66d9: $e0 $2e
    push af                                       ; $66db: $f5
    ldh [rIE], a                                  ; $66dc: $e0 $ff
    ldh [rNR23], a                                ; $66de: $e0 $18
    ld hl, sp+$06                                 ; $66e0: $f8 $06
    cp $19                                        ; $66e2: $fe $19
    rst $38                                       ; $66e4: $ff
    db $fd                                        ; $66e5: $fd
    rst $38                                       ; $66e6: $ff
    rst $20                                       ; $66e7: $e7
    cp $03                                        ; $66e8: $fe $03
    rst $38                                       ; $66ea: $ff
    add hl, de                                    ; $66eb: $19
    rst $38                                       ; $66ec: $ff
    ld bc, $ffff                                  ; $66ed: $01 $ff $ff
    inc e                                         ; $66f0: $1c
    rst $28                                       ; $66f1: $ef
    cp a                                          ; $66f2: $bf
    rst $28                                       ; $66f3: $ef
    rst $38                                       ; $66f4: $ff
    rst $28                                       ; $66f5: $ef
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    cp l                                          ; $66f9: $bd
    rst $38                                       ; $66fa: $ff
    and c                                         ; $66fb: $a1
    rst $38                                       ; $66fc: $ff
    ld b, c                                       ; $66fd: $41
    rst $38                                       ; $66fe: $ff
    inc bc                                        ; $66ff: $03
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    inc sp                                        ; $6702: $33
    sbc $f2                                       ; $6703: $de $f2
    sbc h                                         ; $6705: $9c
    db $f4                                        ; $6706: $f4
    db $fc                                        ; $6707: $fc
    ld h, h                                       ; $6708: $64
    ld hl, sp-$01                                 ; $6709: $f8 $ff
    ld [$0cfc], sp                                ; $670b: $08 $fc $0c
    ld a, [c]                                     ; $670e: $f2
    ld a, $e5                                     ; $670f: $3e $e5
    rst $38                                       ; $6711: $ff
    adc c                                         ; $6712: $89
    cp a                                          ; $6713: $bf
    rst $38                                       ; $6714: $ff
    ld d, b                                       ; $6715: $50
    rst $38                                       ; $6716: $ff
    ld h, b                                       ; $6717: $60
    rst $38                                       ; $6718: $ff
    add d                                         ; $6719: $82
    cp $e2                                        ; $671a: $fe $e2
    ld bc, $fe7e                                  ; $671c: $01 $7e $fe
    ld [c], a                                     ; $671f: $e2
    inc bc                                        ; $6720: $03
    cp $ff                                        ; $6721: $fe $ff
    db $fc                                        ; $6723: $fc
    rst $38                                       ; $6724: $ff
    call c, $e09b                                 ; $6725: $dc $9b $e0
    db $dd                                        ; $6728: $dd
    ld [bc], a                                    ; $6729: $02
    jp nz, $e0e0                                  ; $672a: $c2 $e0 $e0

    cp a                                          ; $672d: $bf
    and b                                         ; $672e: $a0
    cp $e1                                        ; $672f: $fe $e1
    rst $18                                       ; $6731: $df
    ld d, b                                       ; $6732: $50
    cp $fe                                        ; $6733: $fe $fe
    ldh [$d7], a                                  ; $6735: $e0 $d7
    ld hl, sp+$6f                                 ; $6737: $f8 $6f
    ldh a, [rIE]                                  ; $6739: $f0 $ff
    ld d, b                                       ; $673b: $50
    rst $18                                       ; $673c: $df
    cp a                                          ; $673d: $bf
    rst $18                                       ; $673e: $df
    rst $18                                       ; $673f: $df
    ld [hl], b                                    ; $6740: $70
    rst $38                                       ; $6741: $ff
    adc a                                         ; $6742: $8f
    adc a                                         ; $6743: $8f
    xor [hl]                                      ; $6744: $ae
    rst $18                                       ; $6745: $df
    add b                                         ; $6746: $80
    ld a, [hl]                                    ; $6747: $7e
    rst $38                                       ; $6748: $ff
    and $c0                                       ; $6749: $e6 $c0
    ret nz                                        ; $674b: $c0

    ldh [rNR41], a                                ; $674c: $e0 $20
    ldh [$a0], a                                  ; $674e: $e0 $a0
    db $fc                                        ; $6750: $fc
    pop hl                                        ; $6751: $e1
    rst $28                                       ; $6752: $ef
    ld b, b                                       ; $6753: $40
    ret nz                                        ; $6754: $c0

    add b                                         ; $6755: $80
    add b                                         ; $6756: $80
    jp c, Jump_042_40ed                           ; $6757: $da $ed $40

    ret nz                                        ; $675a: $c0

jr_042_675b:
    jr nz, jr_042_675b                            ; $675b: $20 $fe

    pop hl                                        ; $675d: $e1
    ldh [rSVBK], a                                ; $675e: $e0 $70
    ret nc                                        ; $6760: $d0

    ldh a, [$90]                                  ; $6761: $f0 $90
    ld hl, sp+$08                                 ; $6763: $f8 $08
    ld hl, sp-$21                                 ; $6765: $f8 $df
    adc b                                         ; $6767: $88
    ld hl, sp+$08                                 ; $6768: $f8 $08
    ldh a, [rNR10]                                ; $676a: $f0 $10
    jp nc, Jump_042_60e0                          ; $676c: $d2 $e0 $60

    ldh [rPCM34], a                               ; $676f: $e0 $77
    and b                                         ; $6771: $a0
    ret nz                                        ; $6772: $c0

    ld b, b                                       ; $6773: $40
    jp nz, Jump_042_40e4                          ; $6774: $c2 $e4 $40

    ret nz                                        ; $6777: $c0

    ld b, b                                       ; $6778: $40
    ret nz                                        ; $6779: $c0

    ldh [rIE], a                                  ; $677a: $e0 $ff
    jr nz, @-$0e                                  ; $677c: $20 $f0

    sub b                                         ; $677e: $90
    ld a, b                                       ; $677f: $78
    add sp, $18                                   ; $6780: $e8 $18
    ld hl, sp+$18                                 ; $6782: $f8 $18
    ld a, a                                       ; $6784: $7f
    ld hl, sp-$10                                 ; $6785: $f8 $f0
    ldh a, [rNR10]                                ; $6787: $f0 $10
    ldh a, [$e0]                                  ; $6789: $f0 $e0
    ldh [rP1], a                                  ; $678b: $e0 $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    sub c                                         ; $678f: $91
    nop                                           ; $6790: $00
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    db $e3                                        ; $6795: $e3
    ld [c], a                                     ; $6796: $e2
    ld bc, $e0ff                                  ; $6797: $01 $ff $e0
    jp c, Jump_000_03e7                           ; $679a: $da $e7 $03

    rst $38                                       ; $679d: $ff
    inc bc                                        ; $679e: $03
    rlca                                          ; $679f: $07
    inc b                                         ; $67a0: $04
    rrca                                          ; $67a1: $0f
    add hl, bc                                    ; $67a2: $09
    rra                                           ; $67a3: $1f
    inc d                                         ; $67a4: $14
    rra                                           ; $67a5: $1f
    ld a, a                                       ; $67a6: $7f
    ld [de], a                                    ; $67a7: $12
    rrca                                          ; $67a8: $0f
    dec bc                                        ; $67a9: $0b
    rlca                                          ; $67aa: $07
    rlca                                          ; $67ab: $07
    inc bc                                        ; $67ac: $03
    inc bc                                        ; $67ad: $03
    db $e4                                        ; $67ae: $e4
    rst $20                                       ; $67af: $e7
    rst $38                                       ; $67b0: $ff
    ld bc, $0201                                  ; $67b1: $01 $01 $02
    inc bc                                        ; $67b4: $03
    inc b                                         ; $67b5: $04
    rlca                                          ; $67b6: $07
    inc b                                         ; $67b7: $04
    rlca                                          ; $67b8: $07
    call $fc07                                    ; $67b9: $cd $07 $fc
    ldh [$03], a                                  ; $67bc: $e0 $03
    inc bc                                        ; $67be: $03
    xor b                                         ; $67bf: $a8
    rst $38                                       ; $67c0: $ff
    ldh a, [$ef]                                  ; $67c1: $f0 $ef
    rlca                                          ; $67c3: $07
    rlca                                          ; $67c4: $07
    rst $38                                       ; $67c5: $ff
    jr jr_042_67e7                                ; $67c6: $18 $1f

    ld [hl+], a                                   ; $67c8: $22
    ccf                                           ; $67c9: $3f
    inc h                                         ; $67ca: $24
    ccf                                           ; $67cb: $3f
    ld b, h                                       ; $67cc: $44
    ld a, a                                       ; $67cd: $7f
    rst $38                                       ; $67ce: $ff
    ld c, h                                       ; $67cf: $4c
    ld a, a                                       ; $67d0: $7f
    ld e, a                                       ; $67d1: $5f
    ld [hl], e                                    ; $67d2: $73
    ld a, a                                       ; $67d3: $7f
    ld h, [hl]                                    ; $67d4: $66
    ld a, a                                       ; $67d5: $7f
    ld b, b                                       ; $67d6: $40
    rst $38                                       ; $67d7: $ff
    ld a, a                                       ; $67d8: $7f
    ld l, [hl]                                    ; $67d9: $6e
    di                                            ; $67da: $f3
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    ccf                                           ; $67dd: $3f
    rst $38                                       ; $67de: $ff
    ld a, a                                       ; $67df: $7f
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $28                                       ; $67e2: $ef
    cp a                                          ; $67e3: $bf
    pop hl                                        ; $67e4: $e1
    ld a, a                                       ; $67e5: $7f
    ld [hl], c                                    ; $67e6: $71

jr_042_67e7:
    rra                                           ; $67e7: $1f
    inc de                                        ; $67e8: $13
    rst $38                                       ; $67e9: $ff
    ccf                                           ; $67ea: $3f
    jr c, jr_042_683c                             ; $67eb: $38 $4f

    ld a, b                                       ; $67ed: $78
    add a                                         ; $67ee: $87
    db $fc                                        ; $67ef: $fc
    bit 7, [hl]                                   ; $67f0: $cb $7e
    rst $38                                       ; $67f2: $ff
    db $eb                                        ; $67f3: $eb
    rst $38                                       ; $67f4: $ff
    ei                                            ; $67f5: $fb
    cp a                                          ; $67f6: $bf
    ld hl, sp+$3f                                 ; $67f7: $f8 $3f
    db $fc                                        ; $67f9: $fc
    rst $28                                       ; $67fa: $ef
    rst $38                                       ; $67fb: $ff
    cp $9f                                        ; $67fc: $fe $9f
    rst $38                                       ; $67fe: $ff

Jump_042_67ff:
    rst $38                                       ; $67ff: $ff
    ld a, a                                       ; $6800: $7f
    ld b, e                                       ; $6801: $43
    rst $38                                       ; $6802: $ff
    add c                                         ; $6803: $81
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    add d                                         ; $6806: $82
    rst $38                                       ; $6807: $ff
    pop bc                                        ; $6808: $c1
    rst $38                                       ; $6809: $ff
    ldh a, [$2f]                                  ; $680a: $f0 $2f
    db $fc                                        ; $680c: $fc
    ld a, a                                       ; $680d: $7f
    inc de                                        ; $680e: $13
    rst $38                                       ; $680f: $ff
    nop                                           ; $6810: $00
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    inc b                                         ; $6814: $04
    db $fc                                        ; $6815: $fc
    ldh [$fc], a                                  ; $6816: $e0 $fc
    sub d                                         ; $6818: $92
    rst $38                                       ; $6819: $ff
    ldh a, [$ef]                                  ; $681a: $f0 $ef
    ldh a, [$f0]                                  ; $681c: $f0 $f0
    inc c                                         ; $681e: $0c
    db $fc                                        ; $681f: $fc
    ld [bc], a                                    ; $6820: $02
    cp $ff                                        ; $6821: $fe $ff
    ld [bc], a                                    ; $6823: $02
    cp $01                                        ; $6824: $fe $01
    rst $38                                       ; $6826: $ff
    add hl, sp                                    ; $6827: $39
    rst $38                                       ; $6828: $ff
    db $fd                                        ; $6829: $fd
    rst $00                                       ; $682a: $c7
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    inc sp                                        ; $682d: $33
    rst $38                                       ; $682e: $ff
    ld bc, $3bff                                  ; $682f: $01 $ff $3b
    rst $08                                       ; $6832: $cf
    ld a, a                                       ; $6833: $7f
    ei                                            ; $6834: $fb
    rst $38                                       ; $6835: $ff
    cp $ad                                        ; $6836: $fe $ad
    ldh [$7b], a                                  ; $6838: $e0 $7b
    cp $43                                        ; $683a: $fe $43

jr_042_683c:
    db $fd                                        ; $683c: $fd
    ld d, l                                       ; $683d: $55
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $20                                       ; $6840: $e7
    cp $0f                                        ; $6841: $fe $0f
    db $fc                                        ; $6843: $fc
    rrca                                          ; $6844: $0f
    push af                                       ; $6845: $f5
    rra                                           ; $6846: $1f
    rst $38                                       ; $6847: $ff
    rst $30                                       ; $6848: $f7
    ccf                                           ; $6849: $3f
    rst $20                                       ; $684a: $e7
    cp $b7                                        ; $684b: $fe $b7
    cp $a9                                        ; $684d: $fe $a9
    rst $38                                       ; $684f: $ff
    db $fd                                        ; $6850: $fd
    ld h, b                                       ; $6851: $60
    rst $18                                       ; $6852: $df
    ldh [$87], a                                  ; $6853: $e0 $87
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    ld hl, sp-$01                                 ; $6857: $f8 $ff
    ldh a, [$fe]                                  ; $6859: $f0 $fe
    db $fc                                        ; $685b: $fc
    ld [c], a                                     ; $685c: $e2
    rst $20                                       ; $685d: $e7
    ld hl, sp+$6f                                 ; $685e: $f8 $6f
    ldh a, [rIE]                                  ; $6860: $f0 $ff
    ret nc                                        ; $6862: $d0

    rst $18                                       ; $6863: $df
    ccf                                           ; $6864: $3f
    rst $18                                       ; $6865: $df
    rst $18                                       ; $6866: $df
    ld e, b                                       ; $6867: $58
    rst $18                                       ; $6868: $df
    adc a                                         ; $6869: $8f
    adc a                                         ; $686a: $8f
    sub d                                         ; $686b: $92
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    cp $e2                                        ; $686f: $fe $e2
    pop hl                                        ; $6871: $e1
    add b                                         ; $6872: $80
    add b                                         ; $6873: $80
    ret nz                                        ; $6874: $c0

    ld b, b                                       ; $6875: $40
    ret nz                                        ; $6876: $c0

    ld b, b                                       ; $6877: $40
    add b                                         ; $6878: $80
    db $fc                                        ; $6879: $fc
    rst $38                                       ; $687a: $ff
    ldh [$f4], a                                  ; $687b: $e0 $f4
    pop hl                                        ; $687d: $e1
    ld b, b                                       ; $687e: $40
    ret nz                                        ; $687f: $c0

    ldh a, [$f0]                                  ; $6880: $f0 $f0
    ld hl, sp+$08                                 ; $6882: $f8 $08
    rst $28                                       ; $6884: $ef
    db $fc                                        ; $6885: $fc
    db $e4                                        ; $6886: $e4
    db $fc                                        ; $6887: $fc
    add h                                         ; $6888: $84
    db $fc                                        ; $6889: $fc
    ldh [$8c], a                                  ; $688a: $e0 $8c
    db $fc                                        ; $688c: $fc
    db $f4                                        ; $688d: $f4
    rst $38                                       ; $688e: $ff
    db $fc                                        ; $688f: $fc
    add h                                         ; $6890: $84
    ld hl, sp-$38                                 ; $6891: $f8 $c8
    ldh a, [$30]                                  ; $6893: $f0 $30
    ldh a, [rNR10]                                ; $6895: $f0 $10
    cp $fe                                        ; $6897: $fe $fe
    ldh [$30], a                                  ; $6899: $e0 $30
    ld hl, sp-$68                                 ; $689b: $f8 $98
    ld a, b                                       ; $689d: $78
    add sp, $1c                                   ; $689e: $e8 $1c
    db $fc                                        ; $68a0: $fc
    rst $38                                       ; $68a1: $ff
    inc e                                         ; $68a2: $1c
    db $fc                                        ; $68a3: $fc
    ld hl, sp-$08                                 ; $68a4: $f8 $f8
    db $10                                        ; $68a6: $10
    ldh a, [$e0]                                  ; $68a7: $f0 $e0
    ldh [rP1], a                                  ; $68a9: $e0 $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    cp a                                          ; $68ad: $bf
    inc c                                         ; $68ae: $0c
    inc c                                         ; $68af: $0c
    rra                                           ; $68b0: $1f
    rla                                           ; $68b1: $17
    rra                                           ; $68b2: $1f
    dec d                                         ; $68b3: $15
    cp $e0                                        ; $68b4: $fe $e0
    add hl, de                                    ; $68b6: $19
    rst $38                                       ; $68b7: $ff
    ccf                                           ; $68b8: $3f
    dec l                                         ; $68b9: $2d
    ld a, a                                       ; $68ba: $7f
    ld c, e                                       ; $68bb: $4b
    ld a, a                                       ; $68bc: $7f
    ld e, c                                       ; $68bd: $59
    ld a, a                                       ; $68be: $7f
    ld a, l                                       ; $68bf: $7d
    rst $38                                       ; $68c0: $ff
    ld a, a                                       ; $68c1: $7f
    ld c, c                                       ; $68c2: $49
    ccf                                           ; $68c3: $3f
    ld hl, $3b3f                                  ; $68c4: $21 $3f $3b
    rra                                           ; $68c7: $1f
    ld de, $0fff                                  ; $68c8: $11 $ff $0f
    add hl, bc                                    ; $68cb: $09
    rrca                                          ; $68cc: $0f
    add hl, bc                                    ; $68cd: $09
    rlca                                          ; $68ce: $07
    inc b                                         ; $68cf: $04
    rlca                                          ; $68d0: $07
    inc b                                         ; $68d1: $04
    ld e, a                                       ; $68d2: $5f
    inc bc                                        ; $68d3: $03
    ld [bc], a                                    ; $68d4: $02
    inc bc                                        ; $68d5: $03
    ld [bc], a                                    ; $68d6: $02
    ld bc, $e2ff                                  ; $68d7: $01 $ff $e2
    nop                                           ; $68da: $00
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    db $fc                                        ; $68dd: $fc
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    db $ed                                        ; $68e0: $ed
    db $ec                                        ; $68e1: $ec
    inc bc                                        ; $68e2: $03
    inc bc                                        ; $68e3: $03
    inc b                                         ; $68e4: $04
    rlca                                          ; $68e5: $07
    jr jr_042_6907                                ; $68e6: $18 $1f

    rst $38                                       ; $68e8: $ff
    ld h, $3f                                     ; $68e9: $26 $3f
    cpl                                           ; $68eb: $2f
    add hl, sp                                    ; $68ec: $39
    ld e, a                                       ; $68ed: $5f
    halt                                          ; $68ee: $76
    ld a, a                                       ; $68ef: $7f
    ld l, b                                       ; $68f0: $68
    rst $38                                       ; $68f1: $ff
    ld a, a                                       ; $68f2: $7f
    ld h, b                                       ; $68f3: $60
    ld a, a                                       ; $68f4: $7f
    ld c, [hl]                                    ; $68f5: $4e
    ld [hl], a                                    ; $68f6: $77
    ld a, a                                       ; $68f7: $7f
    rst $30                                       ; $68f8: $f7
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $30                                       ; $68fb: $f7
    ccf                                           ; $68fc: $3f
    rst $38                                       ; $68fd: $ff
    ld l, a                                       ; $68fe: $6f
    rst $38                                       ; $68ff: $ff
    ld hl, $60ff                                  ; $6900: $21 $ff $60
    rst $38                                       ; $6903: $ff
    cp a                                          ; $6904: $bf
    ld a, [c]                                     ; $6905: $f2
    rst $38                                       ; $6906: $ff

jr_042_6907:
    ld [hl], e                                    ; $6907: $73
    rst $38                                       ; $6908: $ff
    ld de, $39ff                                  ; $6909: $11 $ff $39
    rst $38                                       ; $690c: $ff
    rst $08                                       ; $690d: $cf
    ld a, b                                       ; $690e: $78
    add a                                         ; $690f: $87
    db $fc                                        ; $6910: $fc
    rlca                                          ; $6911: $07
    db $fc                                        ; $6912: $fc
    add a                                         ; $6913: $87
    cp $ff                                        ; $6914: $fe $ff
    ld l, c                                       ; $6916: $69
    ld a, a                                       ; $6917: $7f
    dec de                                        ; $6918: $1b
    rra                                           ; $6919: $1f
    ld a, [hl+]                                   ; $691a: $2a
    ccf                                           ; $691b: $3f
    inc h                                         ; $691c: $24
    ccf                                           ; $691d: $3f
    rst $38                                       ; $691e: $ff
    ld b, l                                       ; $691f: $45
    ld a, a                                       ; $6920: $7f
    ld b, l                                       ; $6921: $45
    ld a, a                                       ; $6922: $7f
    ld b, a                                       ; $6923: $47
    ld a, a                                       ; $6924: $7f
    add b                                         ; $6925: $80
    rst $38                                       ; $6926: $ff
    cp $fe                                        ; $6927: $fe $fe
    pop hl                                        ; $6929: $e1
    sbc a                                         ; $692a: $9f
    rst $38                                       ; $692b: $ff
    db $fc                                        ; $692c: $fc
    rst $28                                       ; $692d: $ef
    rst $38                                       ; $692e: $ff
    db $e3                                        ; $692f: $e3
    ld a, a                                       ; $6930: $7f
    ld a, a                                       ; $6931: $7f
    ld b, b                                       ; $6932: $40
    ld a, a                                       ; $6933: $7f
    ld b, d                                       ; $6934: $42
    ld a, a                                       ; $6935: $7f
    ld b, c                                       ; $6936: $41
    ccf                                           ; $6937: $3f

jr_042_6938:
    jr nz, jr_042_6938                            ; $6938: $20 $fe

    db $e3                                        ; $693a: $e3
    sbc e                                         ; $693b: $9b
    rra                                           ; $693c: $1f
    db $10                                        ; $693d: $10
    cp $e6                                        ; $693e: $fe $e6
    jr jr_042_6961                                ; $6940: $18 $1f

    rra                                           ; $6942: $1f
    ldh [$e9], a                                  ; $6943: $e0 $e9
    db $e3                                        ; $6945: $e3
    db $10                                        ; $6946: $10
    rst $30                                       ; $6947: $f7
    rra                                           ; $6948: $1f
    rrca                                          ; $6949: $0f
    rrca                                          ; $694a: $0f
    ld l, [hl]                                    ; $694b: $6e
    db $ed                                        ; $694c: $ed
    ret nz                                        ; $694d: $c0

    ret nz                                        ; $694e: $c0

    jr nc, @-$0e                                  ; $694f: $30 $f0

    rst $38                                       ; $6951: $ff
    inc c                                         ; $6952: $0c
    db $fc                                        ; $6953: $fc
    ld [hl-], a                                   ; $6954: $32
    cp $fa                                        ; $6955: $fe $fa
    adc $fd                                       ; $6957: $ce $fd
    scf                                           ; $6959: $37
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    dec bc                                        ; $695c: $0b
    rst $38                                       ; $695d: $ff
    inc bc                                        ; $695e: $03
    rst $38                                       ; $695f: $ff

jr_042_6960:
    add hl, sp                                    ; $6960: $39

jr_042_6961:
    rst $18                                       ; $6961: $df
    ld a, a                                       ; $6962: $7f
    rst $38                                       ; $6963: $ff
    rst $18                                       ; $6964: $df
    rst $38                                       ; $6965: $ff
    rst $18                                       ; $6966: $df
    cp $ff                                        ; $6967: $fe $ff
    ld a, e                                       ; $6969: $7b
    rst $38                                       ; $696a: $ff
    ld b, d                                       ; $696b: $42
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    add e                                         ; $696e: $83
    cp $67                                        ; $696f: $fe $67
    rst $38                                       ; $6971: $ff
    rst $20                                       ; $6972: $e7
    cp h                                          ; $6973: $bc
    db $e4                                        ; $6974: $e4
    rst $38                                       ; $6975: $ff
    jr c, jr_042_6960                             ; $6976: $38 $e8

    ld hl, sp-$38                                 ; $6978: $f8 $c8
    ldh a, [rNR10]                                ; $697a: $f0 $10
    ld hl, sp+$18                                 ; $697c: $f8 $18
    rst $30                                       ; $697e: $f7
    db $e4                                        ; $697f: $e4
    ld a, h                                       ; $6980: $7c
    bit 6, e                                      ; $6981: $cb $73
    ldh [$a1], a                                  ; $6983: $e0 $a1
    rst $38                                       ; $6985: $ff
    pop bc                                        ; $6986: $c1
    rst $38                                       ; $6987: $ff
    push af                                       ; $6988: $f5
    ld [bc], a                                    ; $6989: $02
    cp $e0                                        ; $698a: $fe $e0
    inc bc                                        ; $698c: $03
    db $d3                                        ; $698d: $d3
    ldh [rSB], a                                  ; $698e: $e0 $01
    rst $38                                       ; $6990: $ff
    ccf                                           ; $6991: $3f
    rst $38                                       ; $6992: $ff
    db $eb                                        ; $6993: $eb
    cp $f7                                        ; $6994: $fe $f7
    rst $28                                       ; $6996: $ef
    ldh [rP1], a                                  ; $6997: $e0 $00
    ld [hl], l                                    ; $6999: $75
    ldh [$e0], a                                  ; $699a: $e0 $e0
    rst $38                                       ; $699c: $ff
    ret nz                                        ; $699d: $c0

    cp $fc                                        ; $699e: $fe $fc
    pop hl                                        ; $69a0: $e1
    cp a                                          ; $69a1: $bf
    or b                                          ; $69a2: $b0
    sbc a                                         ; $69a3: $9f
    sbc a                                         ; $69a4: $9f
    ret                                           ; $69a5: $c9


    ld c, a                                       ; $69a6: $4f
    xor $ff                                       ; $69a7: $ee $ff
    cpl                                           ; $69a9: $2f
    or $37                                        ; $69aa: $f6 $37
    di                                            ; $69ac: $f3
    inc de                                        ; $69ad: $13
    pop af                                        ; $69ae: $f1
    ld de, $fff0                                  ; $69af: $11 $f0 $ff
    jr nc, @-$2e                                  ; $69b2: $30 $d0

    ldh a, [$b0]                                  ; $69b4: $f0 $b0
    ldh a, [$e0]                                  ; $69b6: $f0 $e0
    ldh [rLCDC], a                                ; $69b8: $e0 $40
    sbc a                                         ; $69ba: $9f
    ret nz                                        ; $69bb: $c0

    ld b, b                                       ; $69bc: $40
    ret nz                                        ; $69bd: $c0

    add b                                         ; $69be: $80
    add b                                         ; $69bf: $80
    ldh a, [$df]                                  ; $69c0: $f0 $df
    ld [c], a                                     ; $69c2: $e2
    pop hl                                        ; $69c3: $e1
    add b                                         ; $69c4: $80
    pop af                                        ; $69c5: $f1
    add b                                         ; $69c6: $80
    db $d3                                        ; $69c7: $d3
    ldh [$fe], a                                  ; $69c8: $e0 $fe
    ld [c], a                                     ; $69ca: $e2
    adc $e9                                       ; $69cb: $ce $e9
    jr c, jr_042_6a07                             ; $69cd: $38 $38

    db $fc                                        ; $69cf: $fc
    db $e4                                        ; $69d0: $e4
    rst $38                                       ; $69d1: $ff
    cp $92                                        ; $69d2: $fe $92
    cp $42                                        ; $69d4: $fe $42
    cp $02                                        ; $69d6: $fe $02
    db $fc                                        ; $69d8: $fc
    add h                                         ; $69d9: $84
    rst $38                                       ; $69da: $ff
    db $fc                                        ; $69db: $fc
    add h                                         ; $69dc: $84
    ld hl, sp-$38                                 ; $69dd: $f8 $c8
    ld hl, sp+$48                                 ; $69df: $f8 $48
    ld hl, sp+$08                                 ; $69e1: $f8 $08
    ld a, a                                       ; $69e3: $7f
    ld hl, sp-$78                                 ; $69e4: $f8 $88
    ld hl, sp-$38                                 ; $69e6: $f8 $c8
    or b                                          ; $69e8: $b0
    or b                                          ; $69e9: $b0
    add b                                         ; $69ea: $80
    rst $38                                       ; $69eb: $ff
    ld [c], a                                     ; $69ec: $e2
    cp a                                          ; $69ed: $bf
    ret nz                                        ; $69ee: $c0

    ld b, b                                       ; $69ef: $40
    ldh [rNR41], a                                ; $69f0: $e0 $20
    ldh [rNR41], a                                ; $69f2: $e0 $20
    ld a, [$e0e0]                                 ; $69f4: $fa $e0 $e0
    ld [hl], a                                    ; $69f7: $77
    sub b                                         ; $69f8: $90
    ldh a, [$08]                                  ; $69f9: $f0 $08
    push hl                                       ; $69fb: $e5
    ldh [$08], a                                  ; $69fc: $e0 $08
    ld hl, sp+$10                                 ; $69fe: $f8 $10
    adc b                                         ; $6a00: $88
    ldh [rP1], a                                  ; $6a01: $e0 $00
    sub d                                         ; $6a03: $92
    db $fd                                        ; $6a04: $fd
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00

jr_042_6a07:
    nop                                           ; $6a07: $00
    db $fd                                        ; $6a08: $fd
    nop                                           ; $6a09: $00
    rst $38                                       ; $6a0a: $ff
    cp $19                                        ; $6a0b: $fe $19
    add hl, de                                    ; $6a0d: $19
    ccf                                           ; $6a0e: $3f
    cpl                                           ; $6a0f: $2f
    ccf                                           ; $6a10: $3f
    dec hl                                        ; $6a11: $2b
    rst $38                                       ; $6a12: $ff
    ccf                                           ; $6a13: $3f
    dec hl                                        ; $6a14: $2b
    ld a, $32                                     ; $6a15: $3e $32
    ld a, [hl]                                    ; $6a17: $7e
    ld e, d                                       ; $6a18: $5a
    cp $96                                        ; $6a19: $fe $96
    rst $38                                       ; $6a1b: $ff
    cp $b2                                        ; $6a1c: $fe $b2
    cp $fa                                        ; $6a1e: $fe $fa
    cp $92                                        ; $6a20: $fe $92
    ld a, a                                       ; $6a22: $7f
    ld b, e                                       ; $6a23: $43
    rst $38                                       ; $6a24: $ff
    ld a, [hl]                                    ; $6a25: $7e
    ld [hl], a                                    ; $6a26: $77
    ccf                                           ; $6a27: $3f
    inc hl                                        ; $6a28: $23
    ccf                                           ; $6a29: $3f
    inc hl                                        ; $6a2a: $23
    rra                                           ; $6a2b: $1f
    db $10                                        ; $6a2c: $10
    cp a                                          ; $6a2d: $bf
    rra                                           ; $6a2e: $1f
    db $10                                        ; $6a2f: $10
    rrca                                          ; $6a30: $0f
    add hl, bc                                    ; $6a31: $09
    rlca                                          ; $6a32: $07
    rlca                                          ; $6a33: $07
    cp d                                          ; $6a34: $ba
    pop hl                                        ; $6a35: $e1
    ld bc, $fff8                                  ; $6a36: $01 $f8 $ff
    and $ac                                       ; $6a39: $e6 $ac
    rst $38                                       ; $6a3b: $ff
    xor $ed                                       ; $6a3c: $ee $ed
    ld bc, $0301                                  ; $6a3e: $01 $01 $03
    inc bc                                        ; $6a41: $03
    ld [bc], a                                    ; $6a42: $02
    rst $38                                       ; $6a43: $ff
    inc bc                                        ; $6a44: $03
    rlca                                          ; $6a45: $07
    rlca                                          ; $6a46: $07
    ld [$180f], sp                                ; $6a47: $08 $0f $18
    rra                                           ; $6a4a: $1f
    ld h, $ff                                     ; $6a4b: $26 $ff
    ccf                                           ; $6a4d: $3f
    cpl                                           ; $6a4e: $2f
    add hl, sp                                    ; $6a4f: $39
    ld e, a                                       ; $6a50: $5f
    halt                                          ; $6a51: $76
    ld a, a                                       ; $6a52: $7f
    ld l, b                                       ; $6a53: $68
    ld a, a                                       ; $6a54: $7f
    rst $38                                       ; $6a55: $ff
    ld l, [hl]                                    ; $6a56: $6e
    ld [hl], a                                    ; $6a57: $77
    ld e, a                                       ; $6a58: $5f
    ld [hl], a                                    ; $6a59: $77
    ld a, a                                       ; $6a5a: $7f
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    cpl                                           ; $6a5f: $2f
    rst $38                                       ; $6a60: $ff
    ld h, c                                       ; $6a61: $61
    rst $38                                       ; $6a62: $ff
    jr nz, @+$01                                  ; $6a63: $20 $ff

    ld h, d                                       ; $6a65: $62
    cp a                                          ; $6a66: $bf
    rst $30                                       ; $6a67: $f7
    pop af                                        ; $6a68: $f1
    ld a, a                                       ; $6a69: $7f
    ld [hl], b                                    ; $6a6a: $70
    sub d                                         ; $6a6b: $92
    ldh [$08], a                                  ; $6a6c: $e0 $08
    rrca                                          ; $6a6e: $0f
    ld [$ffef], sp                                ; $6a6f: $08 $ef $ff
    db $ec                                        ; $6a72: $ec
    rra                                           ; $6a73: $1f
    db $fc                                        ; $6a74: $fc
    rrca                                          ; $6a75: $0f
    cp $09                                        ; $6a76: $fe $09
    rst $38                                       ; $6a78: $ff
    sbc e                                         ; $6a79: $9b
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    xor d                                         ; $6a7c: $aa
    rst $38                                       ; $6a7d: $ff
    and h                                         ; $6a7e: $a4
    rst $38                                       ; $6a7f: $ff
    push bc                                       ; $6a80: $c5
    rst $38                                       ; $6a81: $ff
    rst $00                                       ; $6a82: $c7
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    ld h, b                                       ; $6a85: $60
    ld a, a                                       ; $6a86: $7f
    add b                                         ; $6a87: $80
    rst $38                                       ; $6a88: $ff
    ld bc, $07ff                                  ; $6a89: $01 $ff $07
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    ld a, h                                       ; $6a8e: $7c
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $28                                       ; $6a91: $ef
    rst $38                                       ; $6a92: $ff
    ldh [rIE], a                                  ; $6a93: $e0 $ff
    rst $38                                       ; $6a95: $ff
    ret nz                                        ; $6a96: $c0

    ld a, a                                       ; $6a97: $7f
    ld b, b                                       ; $6a98: $40
    ld a, a                                       ; $6a99: $7f
    ld b, d                                       ; $6a9a: $42
    ccf                                           ; $6a9b: $3f
    ld hl, $e73f                                  ; $6a9c: $21 $3f $e7
    jr nz, jr_042_6ae0                            ; $6a9f: $20 $3f

    jr nz, jr_042_6b01                            ; $6aa1: $20 $5e

    pop hl                                        ; $6aa3: $e1
    db $fc                                        ; $6aa4: $fc
    and $18                                       ; $6aa5: $e6 $18
    rra                                           ; $6aa7: $1f
    rra                                           ; $6aa8: $1f
    di                                            ; $6aa9: $f3
    rla                                           ; $6aaa: $17
    rra                                           ; $6aab: $1f
    db $eb                                        ; $6aac: $eb

jr_042_6aad:
    ldh [$e7], a                                  ; $6aad: $e0 $e7
    ldh [rNR10], a                                ; $6aaf: $e0 $10
    rra                                           ; $6ab1: $1f
    rrca                                          ; $6ab2: $0f
    rrca                                          ; $6ab3: $0f
    cp $68                                        ; $6ab4: $fe $68
    db $eb                                        ; $6ab6: $eb
    add b                                         ; $6ab7: $80
    add b                                         ; $6ab8: $80
    ld b, b                                       ; $6ab9: $40
    ret nz                                        ; $6aba: $c0

    jr nc, jr_042_6aad                            ; $6abb: $30 $f0

    inc c                                         ; $6abd: $0c
    rst $38                                       ; $6abe: $ff
    db $fc                                        ; $6abf: $fc
    ld [hl-], a                                   ; $6ac0: $32
    cp $fa                                        ; $6ac1: $fe $fa
    adc $fd                                       ; $6ac3: $ce $fd
    scf                                           ; $6ac5: $37
    rst $38                                       ; $6ac6: $ff
    cp a                                          ; $6ac7: $bf
    dec bc                                        ; $6ac8: $0b
    rst $38                                       ; $6ac9: $ff
    dec sp                                        ; $6aca: $3b
    rst $18                                       ; $6acb: $df
    ld a, l                                       ; $6acc: $7d
    rst $18                                       ; $6acd: $df
    add c                                         ; $6ace: $81
    ldh [rIE], a                                  ; $6acf: $e0 $ff
    rst $38                                       ; $6ad1: $ff
    ld a, d                                       ; $6ad2: $7a
    rst $38                                       ; $6ad3: $ff
    ld b, e                                       ; $6ad4: $43
    rst $38                                       ; $6ad5: $ff
    add d                                         ; $6ad6: $82
    rst $38                                       ; $6ad7: $ff
    ld h, e                                       ; $6ad8: $63
    cp [hl]                                       ; $6ad9: $be
    rst $38                                       ; $6ada: $ff
    rst $20                                       ; $6adb: $e7
    rst $38                                       ; $6adc: $ff
    rst $00                                       ; $6add: $c7
    db $fc                                        ; $6ade: $fc

Call_042_6adf:
    inc b                                         ; $6adf: $04

jr_042_6ae0:
    ld hl, sp+$08                                 ; $6ae0: $f8 $08
    ld hl, sp-$01                                 ; $6ae2: $f8 $ff
    ld [$11f1], sp                                ; $6ae4: $08 $f1 $11
    cp $1f                                        ; $6ae7: $fe $1f
    db $e4                                        ; $6ae9: $e4
    ld a, a                                       ; $6aea: $7f
    ret z                                         ; $6aeb: $c8

    cp a                                          ; $6aec: $bf
    rst $38                                       ; $6aed: $ff
    ld [de], a                                    ; $6aee: $12
    rst $38                                       ; $6aef: $ff
    and c                                         ; $6af0: $a1
    rst $38                                       ; $6af1: $ff
    ret nz                                        ; $6af2: $c0

    adc b                                         ; $6af3: $88
    ldh [$03], a                                  ; $6af4: $e0 $03
    db $fd                                        ; $6af6: $fd
    cp $fe                                        ; $6af7: $fe $fe
    ldh [rIE], a                                  ; $6af9: $e0 $ff
    db $fd                                        ; $6afb: $fd
    rst $38                                       ; $6afc: $ff
    cp $ef                                        ; $6afd: $fe $ef
    cp $fd                                        ; $6aff: $fe $fd

jr_042_6b01:
    add e                                         ; $6b01: $83
    ld a, e                                       ; $6b02: $7b
    ldh [rSB], a                                  ; $6b03: $e0 $01
    rst $38                                       ; $6b05: $ff
    nop                                           ; $6b06: $00
    rst $38                                       ; $6b07: $ff
    add b                                         ; $6b08: $80
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    ldh [$bf], a                                  ; $6b0b: $e0 $bf
    and b                                         ; $6b0d: $a0
    sbc a                                         ; $6b0e: $9f
    sub b                                         ; $6b0f: $90
    sbc a                                         ; $6b10: $9f
    sub b                                         ; $6b11: $90
    rst $18                                       ; $6b12: $df
    rst $38                                       ; $6b13: $ff
    ld d, b                                       ; $6b14: $50
    rst $08                                       ; $6b15: $cf
    ld c, a                                       ; $6b16: $4f
    jp hl                                         ; $6b17: $e9


    cpl                                           ; $6b18: $2f
    cp $3f                                        ; $6b19: $fe $3f
    or $ff                                        ; $6b1b: $f6 $ff
    rla                                           ; $6b1d: $17
    di                                            ; $6b1e: $f3
    inc de                                        ; $6b1f: $13
    pop af                                        ; $6b20: $f1
    ld sp, $f0d0                                  ; $6b21: $31 $d0 $f0
    or b                                          ; $6b24: $b0
    rst $38                                       ; $6b25: $ff
    ldh a, [$e0]                                  ; $6b26: $f0 $e0
    ldh [rLCDC], a                                ; $6b28: $e0 $40
    ret nz                                        ; $6b2a: $c0

    ld b, b                                       ; $6b2b: $40
    ret nz                                        ; $6b2c: $c0

    add b                                         ; $6b2d: $80
    pop bc                                        ; $6b2e: $c1
    add b                                         ; $6b2f: $80
    ld [$6adf], a                                 ; $6b30: $ea $df $6a
    db $e3                                        ; $6b33: $e3
    db $d3                                        ; $6b34: $d3
    ldh [$fe], a                                  ; $6b35: $e0 $fe
    ld [c], a                                     ; $6b37: $e2
    adc $e7                                       ; $6b38: $ce $e7
    ldh [$e0], a                                  ; $6b3a: $e0 $e0
    rst $28                                       ; $6b3c: $ef
    db $10                                        ; $6b3d: $10
    ldh a, [$78]                                  ; $6b3e: $f0 $78
    ld hl, sp-$01                                 ; $6b40: $f8 $ff
    ldh [$98], a                                  ; $6b42: $e0 $98
    ld hl, sp-$78                                 ; $6b44: $f8 $88
    rst $38                                       ; $6b46: $ff
    db $fc                                        ; $6b47: $fc
    add h                                         ; $6b48: $84
    db $fc                                        ; $6b49: $fc
    call nc, $62fe                                ; $6b4a: $d4 $fe $62
    cp $92                                        ; $6b4d: $fe $92
    rst $28                                       ; $6b4f: $ef
    cp $0a                                        ; $6b50: $fe $0a
    cp $42                                        ; $6b52: $fe $42
    db $f4                                        ; $6b54: $f4
    ldh [$a4], a                                  ; $6b55: $e0 $a4
    ret c                                         ; $6b57: $d8

    ret c                                         ; $6b58: $d8

    sbc $cc                                       ; $6b59: $de $cc
    push hl                                       ; $6b5b: $e5
    ldh [rNR41], a                                ; $6b5c: $e0 $20
    ldh [rNR41], a                                ; $6b5e: $e0 $20
    ld a, [$e0e0]                                 ; $6b60: $fa $e0 $e0
    sub b                                         ; $6b63: $90
    add hl, bc                                    ; $6b64: $09
    ldh a, [rKEY1]                                ; $6b65: $f0 $4d
    ldh [rOBP1], a                                ; $6b67: $e0 $49
    ldh [rNR10], a                                ; $6b69: $e0 $10
    add [hl]                                      ; $6b6b: $86
    ldh [$90], a                                  ; $6b6c: $e0 $90
    rst $28                                       ; $6b6e: $ef
    nop                                           ; $6b6f: $00
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00
    ld a, [hl]                                    ; $6b72: $7e
    ld l, e                                       ; $6b73: $6b
    cp a                                          ; $6b74: $bf
    ld l, e                                       ; $6b75: $6b
    nop                                           ; $6b76: $00
    ld l, h                                       ; $6b77: $6c
    ld b, c                                       ; $6b78: $41
    ld l, h                                       ; $6b79: $6c
    add d                                         ; $6b7a: $82
    ld l, h                                       ; $6b7b: $6c
    jp $106c                                      ; $6b7c: $c3 $6c $10


    ld [$0000], sp                                ; $6b7f: $08 $00 $00
    jr nz, @+$0a                                  ; $6b82: $20 $08

    ld [bc], a                                    ; $6b84: $02
    nop                                           ; $6b85: $00
    jr nc, jr_042_6b90                            ; $6b86: $30 $08

    inc b                                         ; $6b88: $04
    nop                                           ; $6b89: $00
    ld b, b                                       ; $6b8a: $40
    ld [$0006], sp                                ; $6b8b: $08 $06 $00
    db $10                                        ; $6b8e: $10
    db $10                                        ; $6b8f: $10

jr_042_6b90:
    ld [$2000], sp                                ; $6b90: $08 $00 $20
    db $10                                        ; $6b93: $10
    ld a, [bc]                                    ; $6b94: $0a
    nop                                           ; $6b95: $00
    jr nc, jr_042_6ba8                            ; $6b96: $30 $10

    inc c                                         ; $6b98: $0c
    nop                                           ; $6b99: $00
    ld b, b                                       ; $6b9a: $40
    db $10                                        ; $6b9b: $10
    ld c, $00                                     ; $6b9c: $0e $00
    db $10                                        ; $6b9e: $10
    jr jr_042_6bb1                                ; $6b9f: $18 $10

    nop                                           ; $6ba1: $00
    jr nz, @+$1a                                  ; $6ba2: $20 $18

    ld [de], a                                    ; $6ba4: $12
    nop                                           ; $6ba5: $00
    jr nc, jr_042_6bc0                            ; $6ba6: $30 $18

jr_042_6ba8:
    inc d                                         ; $6ba8: $14
    nop                                           ; $6ba9: $00
    ld b, b                                       ; $6baa: $40
    jr jr_042_6bc3                                ; $6bab: $18 $16

    nop                                           ; $6bad: $00
    db $10                                        ; $6bae: $10
    jr nz, jr_042_6bc9                            ; $6baf: $20 $18

jr_042_6bb1:
    nop                                           ; $6bb1: $00
    jr nz, jr_042_6bd4                            ; $6bb2: $20 $20

    ld a, [de]                                    ; $6bb4: $1a
    nop                                           ; $6bb5: $00
    jr nc, @+$22                                  ; $6bb6: $30 $20

    inc e                                         ; $6bb8: $1c
    nop                                           ; $6bb9: $00
    ld b, b                                       ; $6bba: $40
    jr nz, jr_042_6bdb                            ; $6bbb: $20 $1e

    nop                                           ; $6bbd: $00
    add b                                         ; $6bbe: $80
    db $10                                        ; $6bbf: $10

jr_042_6bc0:
    ld [$0000], sp                                ; $6bc0: $08 $00 $00

jr_042_6bc3:
    jr nz, @+$0a                                  ; $6bc3: $20 $08

    ld [bc], a                                    ; $6bc5: $02
    nop                                           ; $6bc6: $00
    jr nc, jr_042_6bd1                            ; $6bc7: $30 $08

jr_042_6bc9:
    inc b                                         ; $6bc9: $04
    nop                                           ; $6bca: $00
    ld b, b                                       ; $6bcb: $40
    ld [$0006], sp                                ; $6bcc: $08 $06 $00
    db $10                                        ; $6bcf: $10
    db $10                                        ; $6bd0: $10

jr_042_6bd1:
    ld [$2000], sp                                ; $6bd1: $08 $00 $20

jr_042_6bd4:
    db $10                                        ; $6bd4: $10
    ld a, [bc]                                    ; $6bd5: $0a
    nop                                           ; $6bd6: $00
    jr nc, jr_042_6be9                            ; $6bd7: $30 $10

    inc c                                         ; $6bd9: $0c
    nop                                           ; $6bda: $00

jr_042_6bdb:
    ld b, b                                       ; $6bdb: $40
    db $10                                        ; $6bdc: $10
    ld c, $00                                     ; $6bdd: $0e $00
    db $10                                        ; $6bdf: $10
    jr jr_042_6bf2                                ; $6be0: $18 $10

    nop                                           ; $6be2: $00
    jr nz, @+$1a                                  ; $6be3: $20 $18

    ld [de], a                                    ; $6be5: $12
    nop                                           ; $6be6: $00
    jr nc, jr_042_6c01                            ; $6be7: $30 $18

jr_042_6be9:
    inc d                                         ; $6be9: $14
    nop                                           ; $6bea: $00
    ld b, b                                       ; $6beb: $40
    jr jr_042_6c04                                ; $6bec: $18 $16

    nop                                           ; $6bee: $00
    db $10                                        ; $6bef: $10
    jr nz, jr_042_6c0a                            ; $6bf0: $20 $18

jr_042_6bf2:
    nop                                           ; $6bf2: $00
    jr nz, jr_042_6c15                            ; $6bf3: $20 $20

    ld a, [de]                                    ; $6bf5: $1a
    nop                                           ; $6bf6: $00
    jr nc, @+$22                                  ; $6bf7: $30 $20

    inc e                                         ; $6bf9: $1c
    nop                                           ; $6bfa: $00
    ld b, b                                       ; $6bfb: $40
    jr nz, jr_042_6c1c                            ; $6bfc: $20 $1e

    nop                                           ; $6bfe: $00
    add b                                         ; $6bff: $80
    db $10                                        ; $6c00: $10

jr_042_6c01:
    ld [$0000], sp                                ; $6c01: $08 $00 $00

jr_042_6c04:
    jr nz, @+$0a                                  ; $6c04: $20 $08

    ld [bc], a                                    ; $6c06: $02
    nop                                           ; $6c07: $00
    jr nc, jr_042_6c12                            ; $6c08: $30 $08

jr_042_6c0a:
    inc b                                         ; $6c0a: $04
    nop                                           ; $6c0b: $00
    ld b, b                                       ; $6c0c: $40
    ld [$0006], sp                                ; $6c0d: $08 $06 $00
    db $10                                        ; $6c10: $10
    db $10                                        ; $6c11: $10

jr_042_6c12:
    ld [$2000], sp                                ; $6c12: $08 $00 $20

jr_042_6c15:
    db $10                                        ; $6c15: $10
    ld a, [bc]                                    ; $6c16: $0a
    nop                                           ; $6c17: $00
    jr nc, jr_042_6c2a                            ; $6c18: $30 $10

    inc c                                         ; $6c1a: $0c
    nop                                           ; $6c1b: $00

jr_042_6c1c:
    ld b, b                                       ; $6c1c: $40
    db $10                                        ; $6c1d: $10
    ld c, $00                                     ; $6c1e: $0e $00
    db $10                                        ; $6c20: $10
    jr jr_042_6c33                                ; $6c21: $18 $10

    nop                                           ; $6c23: $00
    jr nz, @+$1a                                  ; $6c24: $20 $18

    ld [de], a                                    ; $6c26: $12
    nop                                           ; $6c27: $00
    jr nc, jr_042_6c42                            ; $6c28: $30 $18

jr_042_6c2a:
    inc d                                         ; $6c2a: $14
    nop                                           ; $6c2b: $00
    ld b, b                                       ; $6c2c: $40
    jr jr_042_6c45                                ; $6c2d: $18 $16

    nop                                           ; $6c2f: $00
    db $10                                        ; $6c30: $10
    jr nz, jr_042_6c4b                            ; $6c31: $20 $18

jr_042_6c33:
    nop                                           ; $6c33: $00
    jr nz, jr_042_6c56                            ; $6c34: $20 $20

    ld a, [de]                                    ; $6c36: $1a
    nop                                           ; $6c37: $00
    jr nc, @+$22                                  ; $6c38: $30 $20

    inc e                                         ; $6c3a: $1c
    nop                                           ; $6c3b: $00
    ld b, b                                       ; $6c3c: $40
    jr nz, jr_042_6c5d                            ; $6c3d: $20 $1e

    nop                                           ; $6c3f: $00
    add b                                         ; $6c40: $80
    db $10                                        ; $6c41: $10

jr_042_6c42:
    ld [$0000], sp                                ; $6c42: $08 $00 $00

jr_042_6c45:
    jr nz, @+$0a                                  ; $6c45: $20 $08

    ld [bc], a                                    ; $6c47: $02
    nop                                           ; $6c48: $00
    jr nc, jr_042_6c53                            ; $6c49: $30 $08

jr_042_6c4b:
    inc b                                         ; $6c4b: $04
    nop                                           ; $6c4c: $00
    ld b, b                                       ; $6c4d: $40
    ld [$0006], sp                                ; $6c4e: $08 $06 $00
    db $10                                        ; $6c51: $10
    db $10                                        ; $6c52: $10

jr_042_6c53:
    ld [$2000], sp                                ; $6c53: $08 $00 $20

jr_042_6c56:
    db $10                                        ; $6c56: $10
    ld a, [bc]                                    ; $6c57: $0a
    nop                                           ; $6c58: $00
    jr nc, jr_042_6c6b                            ; $6c59: $30 $10

    inc c                                         ; $6c5b: $0c
    nop                                           ; $6c5c: $00

jr_042_6c5d:
    ld b, b                                       ; $6c5d: $40
    db $10                                        ; $6c5e: $10
    ld c, $00                                     ; $6c5f: $0e $00
    db $10                                        ; $6c61: $10
    jr jr_042_6c74                                ; $6c62: $18 $10

    nop                                           ; $6c64: $00
    jr nz, @+$1a                                  ; $6c65: $20 $18

    ld [de], a                                    ; $6c67: $12
    nop                                           ; $6c68: $00
    jr nc, jr_042_6c83                            ; $6c69: $30 $18

jr_042_6c6b:
    inc d                                         ; $6c6b: $14
    nop                                           ; $6c6c: $00
    ld b, b                                       ; $6c6d: $40
    jr jr_042_6c86                                ; $6c6e: $18 $16

    nop                                           ; $6c70: $00
    db $10                                        ; $6c71: $10
    jr nz, jr_042_6c8c                            ; $6c72: $20 $18

jr_042_6c74:
    nop                                           ; $6c74: $00
    jr nz, jr_042_6c97                            ; $6c75: $20 $20

    ld a, [de]                                    ; $6c77: $1a
    nop                                           ; $6c78: $00
    jr nc, @+$22                                  ; $6c79: $30 $20

    inc e                                         ; $6c7b: $1c
    nop                                           ; $6c7c: $00
    ld b, b                                       ; $6c7d: $40
    jr nz, jr_042_6c9e                            ; $6c7e: $20 $1e

    nop                                           ; $6c80: $00
    add b                                         ; $6c81: $80
    db $10                                        ; $6c82: $10

jr_042_6c83:
    ld [$0000], sp                                ; $6c83: $08 $00 $00

jr_042_6c86:
    jr nz, @+$0a                                  ; $6c86: $20 $08

    ld [bc], a                                    ; $6c88: $02
    nop                                           ; $6c89: $00
    jr nc, jr_042_6c94                            ; $6c8a: $30 $08

jr_042_6c8c:
    inc b                                         ; $6c8c: $04
    nop                                           ; $6c8d: $00
    ld b, b                                       ; $6c8e: $40
    ld [$0006], sp                                ; $6c8f: $08 $06 $00
    db $10                                        ; $6c92: $10
    db $10                                        ; $6c93: $10

jr_042_6c94:
    ld [$2000], sp                                ; $6c94: $08 $00 $20

jr_042_6c97:
    db $10                                        ; $6c97: $10
    ld a, [bc]                                    ; $6c98: $0a
    nop                                           ; $6c99: $00
    jr nc, jr_042_6cac                            ; $6c9a: $30 $10

    inc c                                         ; $6c9c: $0c
    nop                                           ; $6c9d: $00

jr_042_6c9e:
    ld b, b                                       ; $6c9e: $40
    db $10                                        ; $6c9f: $10
    ld c, $00                                     ; $6ca0: $0e $00
    db $10                                        ; $6ca2: $10
    jr jr_042_6cb5                                ; $6ca3: $18 $10

    nop                                           ; $6ca5: $00
    jr nz, @+$1a                                  ; $6ca6: $20 $18

    ld [de], a                                    ; $6ca8: $12
    nop                                           ; $6ca9: $00
    jr nc, jr_042_6cc4                            ; $6caa: $30 $18

jr_042_6cac:
    inc d                                         ; $6cac: $14
    nop                                           ; $6cad: $00
    ld b, b                                       ; $6cae: $40
    jr jr_042_6cc7                                ; $6caf: $18 $16

    nop                                           ; $6cb1: $00
    db $10                                        ; $6cb2: $10
    jr nz, jr_042_6ccd                            ; $6cb3: $20 $18

jr_042_6cb5:
    nop                                           ; $6cb5: $00
    jr nz, jr_042_6cd8                            ; $6cb6: $20 $20

    ld a, [de]                                    ; $6cb8: $1a
    nop                                           ; $6cb9: $00
    jr nc, @+$22                                  ; $6cba: $30 $20

    inc e                                         ; $6cbc: $1c
    nop                                           ; $6cbd: $00
    ld b, b                                       ; $6cbe: $40
    jr nz, jr_042_6cdf                            ; $6cbf: $20 $1e

    nop                                           ; $6cc1: $00
    add b                                         ; $6cc2: $80
    db $10                                        ; $6cc3: $10

jr_042_6cc4:
    ld [$0000], sp                                ; $6cc4: $08 $00 $00

jr_042_6cc7:
    jr nz, @+$0a                                  ; $6cc7: $20 $08

    ld [bc], a                                    ; $6cc9: $02
    nop                                           ; $6cca: $00
    jr nc, jr_042_6cd5                            ; $6ccb: $30 $08

jr_042_6ccd:
    inc b                                         ; $6ccd: $04
    nop                                           ; $6cce: $00
    ld b, b                                       ; $6ccf: $40
    ld [$0006], sp                                ; $6cd0: $08 $06 $00
    db $10                                        ; $6cd3: $10
    db $10                                        ; $6cd4: $10

jr_042_6cd5:
    ld [$2000], sp                                ; $6cd5: $08 $00 $20

jr_042_6cd8:
    db $10                                        ; $6cd8: $10
    ld a, [bc]                                    ; $6cd9: $0a
    nop                                           ; $6cda: $00
    jr nc, jr_042_6ced                            ; $6cdb: $30 $10

    inc c                                         ; $6cdd: $0c
    nop                                           ; $6cde: $00

jr_042_6cdf:
    ld b, b                                       ; $6cdf: $40
    db $10                                        ; $6ce0: $10
    ld c, $00                                     ; $6ce1: $0e $00
    db $10                                        ; $6ce3: $10
    jr jr_042_6cf6                                ; $6ce4: $18 $10

    nop                                           ; $6ce6: $00
    jr nz, @+$1a                                  ; $6ce7: $20 $18

    ld [de], a                                    ; $6ce9: $12
    nop                                           ; $6cea: $00
    jr nc, jr_042_6d05                            ; $6ceb: $30 $18

jr_042_6ced:
    inc d                                         ; $6ced: $14
    nop                                           ; $6cee: $00
    ld b, b                                       ; $6cef: $40
    jr jr_042_6d08                                ; $6cf0: $18 $16

    nop                                           ; $6cf2: $00
    db $10                                        ; $6cf3: $10
    jr nz, jr_042_6d0e                            ; $6cf4: $20 $18

jr_042_6cf6:
    nop                                           ; $6cf6: $00
    jr nz, jr_042_6d19                            ; $6cf7: $20 $20

    ld a, [de]                                    ; $6cf9: $1a
    nop                                           ; $6cfa: $00
    jr nc, jr_042_6d1d                            ; $6cfb: $30 $20

    inc e                                         ; $6cfd: $1c
    nop                                           ; $6cfe: $00
    ld b, b                                       ; $6cff: $40
    jr nz, jr_042_6d20                            ; $6d00: $20 $1e

    nop                                           ; $6d02: $00
    add b                                         ; $6d03: $80
    nop                                           ; $6d04: $00

jr_042_6d05:
    inc d                                         ; $6d05: $14
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00

jr_042_6d08:
    ld bc, $0014                                  ; $6d08: $01 $14 $00
    nop                                           ; $6d0b: $00
    rst $38                                       ; $6d0c: $ff
    nop                                           ; $6d0d: $00

jr_042_6d0e:
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    ld [bc], a                                    ; $6d10: $02
    rrca                                          ; $6d11: $0f
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    inc bc                                        ; $6d14: $03
    ld a, [bc]                                    ; $6d15: $0a
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    inc b                                         ; $6d18: $04

jr_042_6d19:
    ld bc, $fc00                                  ; $6d19: $01 $00 $fc
    inc b                                         ; $6d1c: $04

jr_042_6d1d:
    ld [bc], a                                    ; $6d1d: $02
    nop                                           ; $6d1e: $00
    db $fd                                        ; $6d1f: $fd

jr_042_6d20:
    inc b                                         ; $6d20: $04
    inc bc                                        ; $6d21: $03
    nop                                           ; $6d22: $00
    cp $04                                        ; $6d23: $fe $04
    ld b, $00                                     ; $6d25: $06 $00
    rst $38                                       ; $6d27: $ff
    inc b                                         ; $6d28: $04
    ld a, [bc]                                    ; $6d29: $0a
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    dec b                                         ; $6d2c: $05
    dec b                                         ; $6d2d: $05
    nop                                           ; $6d2e: $00
    ld bc, $0405                                  ; $6d2f: $01 $05 $04
    nop                                           ; $6d32: $00
    ld [bc], a                                    ; $6d33: $02
    dec b                                         ; $6d34: $05
    inc bc                                        ; $6d35: $03
    nop                                           ; $6d36: $00
    inc bc                                        ; $6d37: $03
    ld [bc], a                                    ; $6d38: $02
    inc d                                         ; $6d39: $14
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    rst $38                                       ; $6d3c: $ff
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
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

Call_042_72ff:
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

Call_042_7cff:
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

Call_042_7eff:
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

Jump_042_7f7f:
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
