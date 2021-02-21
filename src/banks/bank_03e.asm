; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    ccf                                           ; $4000: $3f
    ld b, b                                       ; $4001: $40
    ld h, c                                       ; $4002: $61
    ld h, e                                       ; $4003: $63
    ld e, h                                       ; $4004: $5c
    ld h, a                                       ; $4005: $67
    rlca                                          ; $4006: $07
    rlca                                          ; $4007: $07
    ld sp, hl                                     ; $4008: $f9
    ld a, [$fcfb]                                 ; $4009: $fa $fb $fc
    db $fd                                        ; $400c: $fd
    cp $ff                                        ; $400d: $fe $ff
    nop                                           ; $400f: $00
    add hl, bc                                    ; $4010: $09
    rlca                                          ; $4011: $07
    ldh a, [$f1]                                  ; $4012: $f0 $f1
    ld a, [c]                                     ; $4014: $f2
    di                                            ; $4015: $f3
    db $f4                                        ; $4016: $f4
    push af                                       ; $4017: $f5
    or $f7                                        ; $4018: $f6 $f7
    ld hl, sp+$00                                 ; $401a: $f8 $00
    ld [bc], a                                    ; $401c: $02
    ld [$cbca], sp                                ; $401d: $08 $ca $cb
    call z, Call_000_00cd                         ; $4020: $cc $cd $00
    ld [bc], a                                    ; $4023: $02
    ld [$cfce], sp                                ; $4024: $08 $ce $cf
    nop                                           ; $4027: $00
    add hl, bc                                    ; $4028: $09
    ld b, $ca                                     ; $4029: $06 $ca
    set 1, h                                      ; $402b: $cb $cc
    call Call_000_0900                            ; $402d: $cd $00 $09
    ld b, $ce                                     ; $4030: $06 $ce
    rst $08                                       ; $4032: $cf
    nop                                           ; $4033: $00
    ld [hl-], a                                   ; $4034: $32
    add hl, bc                                    ; $4035: $09
    ld b, d                                       ; $4036: $42
    add hl, bc                                    ; $4037: $09
    ld sp, $4109                                  ; $4038: $31 $09 $41
    add hl, bc                                    ; $403b: $09
    rlca                                          ; $403c: $07
    ld [$c505], sp                                ; $403d: $08 $05 $c5
    push de                                       ; $4040: $d5
    push hl                                       ; $4041: $e5
    ld c, $10                                     ; $4042: $0e $10
    call Call_000_25a1                            ; $4044: $cd $a1 $25
    call Call_000_2625                            ; $4047: $cd $25 $26
    ld a, $05                                     ; $404a: $3e $05
    ldh [$96], a                                  ; $404c: $e0 $96
    ldh [rSVBK], a                                ; $404e: $e0 $70
    rst $18                                       ; $4050: $df
    nop                                           ; $4051: $00
    dec b                                         ; $4052: $05
    ld a, $06                                     ; $4053: $3e $06
    ldh [$96], a                                  ; $4055: $e0 $96
    ldh [rSVBK], a                                ; $4057: $e0 $70
    rst $18                                       ; $4059: $df
    ld b, $01                                     ; $405a: $06 $01
    rst $18                                       ; $405c: $df
    ld a, [de]                                    ; $405d: $1a
    inc bc                                        ; $405e: $03
    call Call_000_0341                            ; $405f: $cd $41 $03
    call Call_000_23b6                            ; $4062: $cd $b6 $23
    call Call_000_2683                            ; $4065: $cd $83 $26
    ld a, $90                                     ; $4068: $3e $90
    ldh [rWY], a                                  ; $406a: $e0 $4a
    xor a                                         ; $406c: $af
    ldh [$8a], a                                  ; $406d: $e0 $8a
    ldh [$8b], a                                  ; $406f: $e0 $8b
    ldh a, [$96]                                  ; $4071: $f0 $96
    push af                                       ; $4073: $f5
    call Call_03e_4102                            ; $4074: $cd $02 $41
    ld a, $06                                     ; $4077: $3e $06
    ldh [$96], a                                  ; $4079: $e0 $96
    ldh [rSVBK], a                                ; $407b: $e0 $70
    xor a                                         ; $407d: $af
    ld [$d592], a                                 ; $407e: $ea $92 $d5
    ld a, [$c83a]                                 ; $4081: $fa $3a $c8
    or a                                          ; $4084: $b7
    jr nz, jr_03e_408c                            ; $4085: $20 $05

    call Call_03e_4164                            ; $4087: $cd $64 $41
    jr jr_03e_408f                                ; $408a: $18 $03

jr_03e_408c:
    call Call_03e_4377                            ; $408c: $cd $77 $43

jr_03e_408f:
    call Call_03e_43f7                            ; $408f: $cd $f7 $43
    call Call_03e_4842                            ; $4092: $cd $42 $48
    xor a                                         ; $4095: $af
    call Call_03e_4450                            ; $4096: $cd $50 $44
    call Call_03e_4505                            ; $4099: $cd $05 $45
    ld bc, $0506                                  ; $409c: $01 $06 $05
    call Call_03e_60ca                            ; $409f: $cd $ca $60
    call Call_03e_456a                            ; $40a2: $cd $6a $45
    ld a, $01                                     ; $40a5: $3e $01
    call Call_03e_4450                            ; $40a7: $cd $50 $44
    call Call_03e_4505                            ; $40aa: $cd $05 $45
    ld bc, $050b                                  ; $40ad: $01 $0b $05
    call Call_03e_60ca                            ; $40b0: $cd $ca $60
    call Call_03e_456a                            ; $40b3: $cd $6a $45
    ld a, $01                                     ; $40b6: $3e $01
    ldh [$96], a                                  ; $40b8: $e0 $96
    ldh [rSVBK], a                                ; $40ba: $e0 $70
    ld hl, $d000                                  ; $40bc: $21 $00 $d0
    ld de, $b800                                  ; $40bf: $11 $00 $b8
    ld c, $24                                     ; $40c2: $0e $24
    call Call_000_0468                            ; $40c4: $cd $68 $04
    ld hl, $d400                                  ; $40c7: $21 $00 $d4
    ld de, $9800                                  ; $40ca: $11 $00 $98
    ld c, $24                                     ; $40cd: $0e $24
    call Call_000_04db                            ; $40cf: $cd $db $04
    call Call_000_0804                            ; $40d2: $cd $04 $08
    rst $18                                       ; $40d5: $df
    inc h                                         ; $40d6: $24
    inc bc                                        ; $40d7: $03
    call Call_03e_489e                            ; $40d8: $cd $9e $48
    call Call_03e_45b0                            ; $40db: $cd $b0 $45
    call Call_03e_4605                            ; $40de: $cd $05 $46
    ld a, $0f                                     ; $40e1: $3e $0f
    ld hl, $465a                                  ; $40e3: $21 $5a $46
    call Call_000_23e8                            ; $40e6: $cd $e8 $23
    call Call_000_0371                            ; $40e9: $cd $71 $03
    ld c, $10                                     ; $40ec: $0e $10
    call Call_000_25af                            ; $40ee: $cd $af $25
    call Call_000_2625                            ; $40f1: $cd $25 $26
    call Call_03e_6098                            ; $40f4: $cd $98 $60
    ld b, a                                       ; $40f7: $47
    pop af                                        ; $40f8: $f1
    ldh [$96], a                                  ; $40f9: $e0 $96
    ldh [rSVBK], a                                ; $40fb: $e0 $70
    ld a, b                                       ; $40fd: $78
    pop hl                                        ; $40fe: $e1
    pop de                                        ; $40ff: $d1
    pop bc                                        ; $4100: $c1
    ret                                           ; $4101: $c9


Call_03e_4102:
    ld a, $01                                     ; $4102: $3e $01
    ldh [$96], a                                  ; $4104: $e0 $96
    ldh [rSVBK], a                                ; $4106: $e0 $70
    ld hl, $4e90                                  ; $4108: $21 $90 $4e
    ld de, $d000                                  ; $410b: $11 $00 $d0
    call Call_000_1f2f                            ; $410e: $cd $2f $1f
    ld hl, $d000                                  ; $4111: $21 $00 $d0
    ld de, $b000                                  ; $4114: $11 $00 $b0
    ld c, $80                                     ; $4117: $0e $80
    call Call_000_0468                            ; $4119: $cd $68 $04
    ld hl, $d800                                  ; $411c: $21 $00 $d8
    ld de, $a800                                  ; $411f: $11 $00 $a8
    ld c, $80                                     ; $4122: $0e $80
    call Call_000_04db                            ; $4124: $cd $db $04
    ld hl, $5d50                                  ; $4127: $21 $50 $5d
    ld de, $d000                                  ; $412a: $11 $00 $d0
    call Call_000_1f2f                            ; $412d: $cd $2f $1f
    ld hl, $d000                                  ; $4130: $21 $00 $d0
    ld de, $a000                                  ; $4133: $11 $00 $a0
    ld c, $0a                                     ; $4136: $0e $0a
    call Call_000_04db                            ; $4138: $cd $db $04
    ld hl, $5882                                  ; $413b: $21 $82 $58
    ld de, $0008                                  ; $413e: $11 $08 $00
    call Call_000_0595                            ; $4141: $cd $95 $05
    ld hl, $6048                                  ; $4144: $21 $48 $60
    ld de, $0801                                  ; $4147: $11 $01 $08
    call Call_000_0595                            ; $414a: $cd $95 $05
    ld hl, $58d0                                  ; $414d: $21 $d0 $58
    ld de, $d000                                  ; $4150: $11 $00 $d0
    ld c, $24                                     ; $4153: $0e $24
    call Call_000_03eb                            ; $4155: $cd $eb $03
    ld hl, $5b10                                  ; $4158: $21 $10 $5b
    ld de, $d400                                  ; $415b: $11 $00 $d4
    ld c, $24                                     ; $415e: $0e $24
    call Call_000_03eb                            ; $4160: $cd $eb $03
    ret                                           ; $4163: $c9


Call_03e_4164:
    push af                                       ; $4164: $f5
    push bc                                       ; $4165: $c5
    push de                                       ; $4166: $d5
    push hl                                       ; $4167: $e5
    ld hl, $d553                                  ; $4168: $21 $53 $d5
    ld a, $14                                     ; $416b: $3e $14
    ld [hl], a                                    ; $416d: $77
    xor a                                         ; $416e: $af
    ld hl, $d557                                  ; $416f: $21 $57 $d5
    ld [hl], a                                    ; $4172: $77
    ld hl, $d555                                  ; $4173: $21 $55 $d5
    ld [hl], a                                    ; $4176: $77
    ld hl, $d556                                  ; $4177: $21 $56 $d5
    ld [hl], a                                    ; $417a: $77
    ld hl, $d559                                  ; $417b: $21 $59 $d5
    ld [hl], a                                    ; $417e: $77
    ld hl, $d55a                                  ; $417f: $21 $5a $d5
    ld [hl], a                                    ; $4182: $77
    ld hl, $d55b                                  ; $4183: $21 $5b $d5
    ld [hl], a                                    ; $4186: $77
    ld hl, $d55c                                  ; $4187: $21 $5c $d5
    ld [hl], a                                    ; $418a: $77
    ld hl, $d526                                  ; $418b: $21 $26 $d5
    ld [hl], a                                    ; $418e: $77
    ld hl, $d527                                  ; $418f: $21 $27 $d5
    ld [hl], a                                    ; $4192: $77
    ld hl, $d528                                  ; $4193: $21 $28 $d5
    ld [hl], a                                    ; $4196: $77
    ld hl, $d529                                  ; $4197: $21 $29 $d5
    ld [hl], a                                    ; $419a: $77
    ld hl, $d558                                  ; $419b: $21 $58 $d5
    ld [hl], a                                    ; $419e: $77

Jump_03e_419f:
    ld a, [$c837]                                 ; $419f: $fa $37 $c8
    ld b, a                                       ; $41a2: $47
    ld a, [$c4bd]                                 ; $41a3: $fa $bd $c4
    cp $00                                        ; $41a6: $fe $00
    jr nz, jr_03e_41b1                            ; $41a8: $20 $07

    dec b                                         ; $41aa: $05
    ld a, b                                       ; $41ab: $78
    cp $00                                        ; $41ac: $fe $00
    jp z, Jump_03e_425b                           ; $41ae: $ca $5b $42

jr_03e_41b1:
    ld hl, $d558                                  ; $41b1: $21 $58 $d5
    ld a, [hl]                                    ; $41b4: $7e
    cp b                                          ; $41b5: $b8
    jp z, Jump_03e_425b                           ; $41b6: $ca $5b $42

    ld d, $00                                     ; $41b9: $16 $00
    ld e, a                                       ; $41bb: $5f
    ld hl, $c96e                                  ; $41bc: $21 $6e $c9
    add hl, de                                    ; $41bf: $19
    ld a, [hl]                                    ; $41c0: $7e
    cp $01                                        ; $41c1: $fe $01
    jr z, jr_03e_4202                             ; $41c3: $28 $3d

    cp $02                                        ; $41c5: $fe $02
    jr z, jr_03e_422b                             ; $41c7: $28 $62

    ld hl, $d553                                  ; $41c9: $21 $53 $d5
    ld a, [hl]                                    ; $41cc: $7e
    dec a                                         ; $41cd: $3d
    ld [hl], a                                    ; $41ce: $77
    ld hl, $d557                                  ; $41cf: $21 $57 $d5
    ld a, [hl]                                    ; $41d2: $7e
    inc a                                         ; $41d3: $3c
    ld [hl], a                                    ; $41d4: $77
    ld hl, $d559                                  ; $41d5: $21 $59 $d5
    ld a, [hl]                                    ; $41d8: $7e
    inc a                                         ; $41d9: $3c
    ld [hl], a                                    ; $41da: $77
    ld hl, $d55a                                  ; $41db: $21 $5a $d5
    ld a, [hl]                                    ; $41de: $7e
    inc a                                         ; $41df: $3c
    ld [hl], a                                    ; $41e0: $77
    ld a, [$c4bd]                                 ; $41e1: $fa $bd $c4
    cp $00                                        ; $41e4: $fe $00
    jr z, jr_03e_41f4                             ; $41e6: $28 $0c

    ld a, [$c837]                                 ; $41e8: $fa $37 $c8
    ld b, a                                       ; $41eb: $47
    dec b                                         ; $41ec: $05
    ld hl, $d558                                  ; $41ed: $21 $58 $d5
    ld a, [hl]                                    ; $41f0: $7e
    cp b                                          ; $41f1: $b8
    jr z, jr_03e_4252                             ; $41f2: $28 $5e

jr_03e_41f4:
    ld hl, $d55b                                  ; $41f4: $21 $5b $d5
    ld a, [hl]                                    ; $41f7: $7e
    inc a                                         ; $41f8: $3c
    ld [hl], a                                    ; $41f9: $77
    ld hl, $d55c                                  ; $41fa: $21 $5c $d5
    ld a, [hl]                                    ; $41fd: $7e
    inc a                                         ; $41fe: $3c

Jump_03e_41ff:
    ld [hl], a                                    ; $41ff: $77
    jr jr_03e_4252                                ; $4200: $18 $50

jr_03e_4202:
    ld hl, $d555                                  ; $4202: $21 $55 $d5
    ld a, [hl]                                    ; $4205: $7e
    inc a                                         ; $4206: $3c
    ld [hl], a                                    ; $4207: $77
    ld hl, $d559                                  ; $4208: $21 $59 $d5
    ld a, [hl]                                    ; $420b: $7e
    inc a                                         ; $420c: $3c
    inc a                                         ; $420d: $3c
    ld [hl], a                                    ; $420e: $77
    ld a, [$c4bd]                                 ; $420f: $fa $bd $c4
    cp $00                                        ; $4212: $fe $00
    jr z, jr_03e_4222                             ; $4214: $28 $0c

    ld a, [$c837]                                 ; $4216: $fa $37 $c8
    ld b, a                                       ; $4219: $47
    dec b                                         ; $421a: $05
    ld hl, $d558                                  ; $421b: $21 $58 $d5
    ld a, [hl]                                    ; $421e: $7e
    cp b                                          ; $421f: $b8
    jr z, jr_03e_4252                             ; $4220: $28 $30

jr_03e_4222:
    ld hl, $d55b                                  ; $4222: $21 $5b $d5
    ld a, [hl]                                    ; $4225: $7e
    inc a                                         ; $4226: $3c
    inc a                                         ; $4227: $3c
    ld [hl], a                                    ; $4228: $77
    jr jr_03e_4252                                ; $4229: $18 $27

jr_03e_422b:
    ld hl, $d556                                  ; $422b: $21 $56 $d5
    ld a, [hl]                                    ; $422e: $7e
    inc a                                         ; $422f: $3c
    ld [hl], a                                    ; $4230: $77
    ld hl, $d55a                                  ; $4231: $21 $5a $d5
    ld a, [hl]                                    ; $4234: $7e
    inc a                                         ; $4235: $3c
    inc a                                         ; $4236: $3c
    ld [hl], a                                    ; $4237: $77
    ld a, [$c4bd]                                 ; $4238: $fa $bd $c4
    cp $00                                        ; $423b: $fe $00
    jr z, jr_03e_424b                             ; $423d: $28 $0c

    ld a, [$c837]                                 ; $423f: $fa $37 $c8
    ld b, a                                       ; $4242: $47
    dec b                                         ; $4243: $05
    ld hl, $d558                                  ; $4244: $21 $58 $d5
    ld a, [hl]                                    ; $4247: $7e
    cp b                                          ; $4248: $b8
    jr z, jr_03e_4252                             ; $4249: $28 $07

jr_03e_424b:
    ld hl, $d55c                                  ; $424b: $21 $5c $d5
    ld a, [hl]                                    ; $424e: $7e
    inc a                                         ; $424f: $3c
    inc a                                         ; $4250: $3c
    ld [hl], a                                    ; $4251: $77

jr_03e_4252:
    ld hl, $d558                                  ; $4252: $21 $58 $d5
    ld a, [hl]                                    ; $4255: $7e
    inc a                                         ; $4256: $3c
    ld [hl], a                                    ; $4257: $77
    jp Jump_03e_419f                              ; $4258: $c3 $9f $41


Jump_03e_425b:
    ld hl, $d553                                  ; $425b: $21 $53 $d5
    ld a, [hl]                                    ; $425e: $7e
    ld hl, $d554                                  ; $425f: $21 $54 $d5
    ld [hl], a                                    ; $4262: $77
    sra a                                         ; $4263: $cb $2f
    ld hl, $d553                                  ; $4265: $21 $53 $d5
    ld [hl], a                                    ; $4268: $77
    ld b, a                                       ; $4269: $47
    ld hl, $d554                                  ; $426a: $21 $54 $d5
    ld a, [hl]                                    ; $426d: $7e
    dec a                                         ; $426e: $3d
    sra a                                         ; $426f: $cb $2f
    cp b                                          ; $4271: $b8
    jr z, jr_03e_427a                             ; $4272: $28 $06

    ld hl, $d552                                  ; $4274: $21 $52 $d5
    ld a, $01                                     ; $4277: $3e $01
    ld [hl], a                                    ; $4279: $77

jr_03e_427a:
    bit 7, b                                      ; $427a: $cb $78
    jr z, jr_03e_4284                             ; $427c: $28 $06

    ld a, $01                                     ; $427e: $3e $01
    ld hl, $d553                                  ; $4280: $21 $53 $d5
    ld [hl], a                                    ; $4283: $77

jr_03e_4284:
    ld a, [$c83a]                                 ; $4284: $fa $3a $c8
    cp $00                                        ; $4287: $fe $00
    jr nz, jr_03e_428f                            ; $4289: $20 $04

    ld a, $11                                     ; $428b: $3e $11
    jr jr_03e_4291                                ; $428d: $18 $02

jr_03e_428f:
    ld a, $01                                     ; $428f: $3e $01

jr_03e_4291:
    ld b, a                                       ; $4291: $47
    ld hl, $d559                                  ; $4292: $21 $59 $d5
    ld a, [hl]                                    ; $4295: $7e
    sub b                                         ; $4296: $90
    bit 7, a                                      ; $4297: $cb $7f
    jr nz, jr_03e_42a1                            ; $4299: $20 $06

    cp $00                                        ; $429b: $fe $00
    jr z, jr_03e_42a1                             ; $429d: $28 $02

    jr jr_03e_42bc                                ; $429f: $18 $1b

jr_03e_42a1:
    ld a, [$c83a]                                 ; $42a1: $fa $3a $c8
    cp $00                                        ; $42a4: $fe $00
    jr nz, jr_03e_42ac                            ; $42a6: $20 $04

    ld a, $11                                     ; $42a8: $3e $11
    jr jr_03e_42ae                                ; $42aa: $18 $02

jr_03e_42ac:
    ld a, $01                                     ; $42ac: $3e $01

jr_03e_42ae:
    ld b, a                                       ; $42ae: $47
    ld hl, $d55a                                  ; $42af: $21 $5a $d5
    ld a, [hl]                                    ; $42b2: $7e
    sub b                                         ; $42b3: $90
    bit 7, a                                      ; $42b4: $cb $7f
    jr nz, jr_03e_42c4                            ; $42b6: $20 $0c

    cp $00                                        ; $42b8: $fe $00
    jr z, jr_03e_42c4                             ; $42ba: $28 $08

jr_03e_42bc:
    ld hl, $d525                                  ; $42bc: $21 $25 $d5
    ld a, $01                                     ; $42bf: $3e $01
    ld [hl], a                                    ; $42c1: $77
    jr jr_03e_42c9                                ; $42c2: $18 $05

jr_03e_42c4:
    ld hl, $d525                                  ; $42c4: $21 $25 $d5
    xor a                                         ; $42c7: $af
    ld [hl], a                                    ; $42c8: $77

jr_03e_42c9:
    ld a, [$c83a]                                 ; $42c9: $fa $3a $c8
    cp $00                                        ; $42cc: $fe $00
    jr nz, jr_03e_42d4                            ; $42ce: $20 $04

    ld a, $11                                     ; $42d0: $3e $11
    jr jr_03e_42d6                                ; $42d2: $18 $02

jr_03e_42d4:
    ld a, $01                                     ; $42d4: $3e $01

jr_03e_42d6:
    ld b, a                                       ; $42d6: $47
    ld hl, $d55b                                  ; $42d7: $21 $5b $d5
    ld a, [hl]                                    ; $42da: $7e
    sub b                                         ; $42db: $90
    cp $01                                        ; $42dc: $fe $01
    jr nz, jr_03e_42e2                            ; $42de: $20 $02

    jr jr_03e_42f9                                ; $42e0: $18 $17

jr_03e_42e2:
    ld a, [$c83a]                                 ; $42e2: $fa $3a $c8
    cp $00                                        ; $42e5: $fe $00
    jr nz, jr_03e_42ed                            ; $42e7: $20 $04

    ld a, $11                                     ; $42e9: $3e $11
    jr jr_03e_42ef                                ; $42eb: $18 $02

jr_03e_42ed:
    ld a, $01                                     ; $42ed: $3e $01

jr_03e_42ef:
    ld b, a                                       ; $42ef: $47
    ld hl, $d55c                                  ; $42f0: $21 $5c $d5
    ld a, [hl]                                    ; $42f3: $7e
    sub b                                         ; $42f4: $90
    cp $01                                        ; $42f5: $fe $01
    jr nz, jr_03e_4301                            ; $42f7: $20 $08

jr_03e_42f9:
    ld hl, $d52a                                  ; $42f9: $21 $2a $d5
    ld a, $01                                     ; $42fc: $3e $01
    ld [hl], a                                    ; $42fe: $77
    jr jr_03e_4306                                ; $42ff: $18 $05

jr_03e_4301:
    ld hl, $d52a                                  ; $4301: $21 $2a $d5
    xor a                                         ; $4304: $af
    ld [hl], a                                    ; $4305: $77

jr_03e_4306:
    ld hl, $d525                                  ; $4306: $21 $25 $d5
    ld a, [hl]                                    ; $4309: $7e
    cp $00                                        ; $430a: $fe $00
    jr z, jr_03e_4356                             ; $430c: $28 $48

    ld hl, $d555                                  ; $430e: $21 $55 $d5
    ld a, [hl]                                    ; $4311: $7e
    ld b, a                                       ; $4312: $47
    ld hl, $d553                                  ; $4313: $21 $53 $d5
    ld a, [hl]                                    ; $4316: $7e
    sub b                                         ; $4317: $90
    cp $01                                        ; $4318: $fe $01
    jr nz, jr_03e_4332                            ; $431a: $20 $16

    ld hl, $d556                                  ; $431c: $21 $56 $d5
    ld a, [hl]                                    ; $431f: $7e
    ld b, a                                       ; $4320: $47
    ld hl, $d553                                  ; $4321: $21 $53 $d5
    ld a, [hl]                                    ; $4324: $7e
    sub b                                         ; $4325: $90
    sub $02                                       ; $4326: $d6 $02
    bit 7, a                                      ; $4328: $cb $7f
    jr nz, jr_03e_4332                            ; $432a: $20 $06

    ld hl, $d526                                  ; $432c: $21 $26 $d5
    ld a, $01                                     ; $432f: $3e $01
    ld [hl], a                                    ; $4331: $77

jr_03e_4332:
    ld hl, $d556                                  ; $4332: $21 $56 $d5
    ld a, [hl]                                    ; $4335: $7e
    ld b, a                                       ; $4336: $47
    ld hl, $d553                                  ; $4337: $21 $53 $d5
    ld a, [hl]                                    ; $433a: $7e
    sub b                                         ; $433b: $90
    cp $01                                        ; $433c: $fe $01
    jr nz, jr_03e_4356                            ; $433e: $20 $16

    ld hl, $d555                                  ; $4340: $21 $55 $d5
    ld a, [hl]                                    ; $4343: $7e
    ld b, a                                       ; $4344: $47
    ld hl, $d553                                  ; $4345: $21 $53 $d5
    ld a, [hl]                                    ; $4348: $7e
    sub b                                         ; $4349: $90
    sub $02                                       ; $434a: $d6 $02
    bit 7, a                                      ; $434c: $cb $7f
    jr nz, jr_03e_4356                            ; $434e: $20 $06

    ld hl, $d527                                  ; $4350: $21 $27 $d5
    ld a, $01                                     ; $4353: $3e $01
    ld [hl], a                                    ; $4355: $77

jr_03e_4356:
    ld hl, $d555                                  ; $4356: $21 $55 $d5
    ld a, [hl]                                    ; $4359: $7e
    ld b, a                                       ; $435a: $47
    ld hl, $d553                                  ; $435b: $21 $53 $d5
    ld a, [hl]                                    ; $435e: $7e
    sub b                                         ; $435f: $90
    ld hl, $d528                                  ; $4360: $21 $28 $d5
    ld [hl], a                                    ; $4363: $77
    ld hl, $d556                                  ; $4364: $21 $56 $d5
    ld a, [hl]                                    ; $4367: $7e
    ld b, a                                       ; $4368: $47
    ld hl, $d553                                  ; $4369: $21 $53 $d5
    ld a, [hl]                                    ; $436c: $7e
    sub b                                         ; $436d: $90
    ld hl, $d529                                  ; $436e: $21 $29 $d5
    ld [hl], a                                    ; $4371: $77
    pop hl                                        ; $4372: $e1
    pop de                                        ; $4373: $d1
    pop bc                                        ; $4374: $c1
    pop af                                        ; $4375: $f1
    ret                                           ; $4376: $c9


Call_03e_4377:
    push af                                       ; $4377: $f5
    push bc                                       ; $4378: $c5
    push de                                       ; $4379: $d5
    push hl                                       ; $437a: $e5
    ld hl, $d553                                  ; $437b: $21 $53 $d5
    ld a, $02                                     ; $437e: $3e $02
    ld [hl], a                                    ; $4380: $77
    xor a                                         ; $4381: $af
    ld hl, $d557                                  ; $4382: $21 $57 $d5
    ld [hl], a                                    ; $4385: $77
    ld hl, $d555                                  ; $4386: $21 $55 $d5
    ld [hl], a                                    ; $4389: $77
    ld hl, $d556                                  ; $438a: $21 $56 $d5
    ld [hl], a                                    ; $438d: $77
    ld hl, $d559                                  ; $438e: $21 $59 $d5
    ld [hl], a                                    ; $4391: $77
    ld hl, $d55a                                  ; $4392: $21 $5a $d5
    ld [hl], a                                    ; $4395: $77
    ld hl, $d526                                  ; $4396: $21 $26 $d5
    ld [hl], a                                    ; $4399: $77
    ld hl, $d527                                  ; $439a: $21 $27 $d5
    ld [hl], a                                    ; $439d: $77
    ld hl, $d528                                  ; $439e: $21 $28 $d5
    ld [hl], a                                    ; $43a1: $77
    ld hl, $d529                                  ; $43a2: $21 $29 $d5
    ld [hl], a                                    ; $43a5: $77
    ld hl, $d55b                                  ; $43a6: $21 $5b $d5
    ld [hl], a                                    ; $43a9: $77
    ld hl, $d55c                                  ; $43aa: $21 $5c $d5
    ld [hl], a                                    ; $43ad: $77
    ld hl, $d558                                  ; $43ae: $21 $58 $d5
    ld [hl], a                                    ; $43b1: $77
    ld a, [$c4bd]                                 ; $43b2: $fa $bd $c4
    cp $00                                        ; $43b5: $fe $00
    jr z, jr_03e_43f4                             ; $43b7: $28 $3b

    ld a, [$c96c]                                 ; $43b9: $fa $6c $c9
    cp $01                                        ; $43bc: $fe $01
    jr z, jr_03e_43d8                             ; $43be: $28 $18

    cp $02                                        ; $43c0: $fe $02
    jr z, jr_03e_43e7                             ; $43c2: $28 $23

    ld hl, $d557                                  ; $43c4: $21 $57 $d5
    ld a, [hl]                                    ; $43c7: $7e
    inc a                                         ; $43c8: $3c
    ld [hl], a                                    ; $43c9: $77
    ld hl, $d559                                  ; $43ca: $21 $59 $d5
    ld a, [hl]                                    ; $43cd: $7e
    inc a                                         ; $43ce: $3c
    ld [hl], a                                    ; $43cf: $77
    ld hl, $d55a                                  ; $43d0: $21 $5a $d5
    ld a, [hl]                                    ; $43d3: $7e
    inc a                                         ; $43d4: $3c
    ld [hl], a                                    ; $43d5: $77
    jr jr_03e_43f4                                ; $43d6: $18 $1c

jr_03e_43d8:
    ld hl, $d555                                  ; $43d8: $21 $55 $d5
    ld a, [hl]                                    ; $43db: $7e
    inc a                                         ; $43dc: $3c
    ld [hl], a                                    ; $43dd: $77
    ld hl, $d559                                  ; $43de: $21 $59 $d5
    ld a, [hl]                                    ; $43e1: $7e
    inc a                                         ; $43e2: $3c
    inc a                                         ; $43e3: $3c
    ld [hl], a                                    ; $43e4: $77
    jr jr_03e_43f4                                ; $43e5: $18 $0d

jr_03e_43e7:
    ld hl, $d556                                  ; $43e7: $21 $56 $d5
    ld a, [hl]                                    ; $43ea: $7e
    inc a                                         ; $43eb: $3c
    ld [hl], a                                    ; $43ec: $77
    ld hl, $d55a                                  ; $43ed: $21 $5a $d5
    ld a, [hl]                                    ; $43f0: $7e
    inc a                                         ; $43f1: $3c
    inc a                                         ; $43f2: $3c
    ld [hl], a                                    ; $43f3: $77

jr_03e_43f4:
    jp Jump_03e_425b                              ; $43f4: $c3 $5b $42


Call_03e_43f7:
    push af                                       ; $43f7: $f5
    push bc                                       ; $43f8: $c5
    push de                                       ; $43f9: $d5
    push hl                                       ; $43fa: $e5
    ld a, [$c837]                                 ; $43fb: $fa $37 $c8
    ld d, a                                       ; $43fe: $57
    sub $0a                                       ; $43ff: $d6 $0a
    bit 7, a                                      ; $4401: $cb $7f
    jr nz, jr_03e_441d                            ; $4403: $20 $18

    ld b, $07                                     ; $4405: $06 $07
    ld c, $04                                     ; $4407: $0e $04
    ld a, $c0                                     ; $4409: $3e $c0
    call Call_03e_6209                            ; $440b: $cd $09 $62
    ld b, $07                                     ; $440e: $06 $07
    ld c, $05                                     ; $4410: $0e $05
    ld a, $d0                                     ; $4412: $3e $d0
    call Call_03e_6209                            ; $4414: $cd $09 $62
    ld a, [$c837]                                 ; $4417: $fa $37 $c8
    sub $0a                                       ; $441a: $d6 $0a
    ld d, a                                       ; $441c: $57

jr_03e_441d:
    ld a, d                                       ; $441d: $7a
    cp $00                                        ; $441e: $fe $00
    jr z, jr_03e_4439                             ; $4420: $28 $17

    dec a                                         ; $4422: $3d
    push af                                       ; $4423: $f5
    add $c0                                       ; $4424: $c6 $c0
    ld b, $08                                     ; $4426: $06 $08
    ld c, $04                                     ; $4428: $0e $04
    call Call_03e_6209                            ; $442a: $cd $09 $62
    pop af                                        ; $442d: $f1
    add $d0                                       ; $442e: $c6 $d0
    ld b, $08                                     ; $4430: $06 $08
    ld c, $05                                     ; $4432: $0e $05
    call Call_03e_6209                            ; $4434: $cd $09 $62
    jr jr_03e_444b                                ; $4437: $18 $12

jr_03e_4439:
    ld a, $af                                     ; $4439: $3e $af
    ld b, $08                                     ; $443b: $06 $08
    ld c, $04                                     ; $443d: $0e $04
    call Call_03e_6209                            ; $443f: $cd $09 $62
    ld a, $bf                                     ; $4442: $3e $bf
    ld b, $08                                     ; $4444: $06 $08
    ld c, $05                                     ; $4446: $0e $05
    call Call_03e_6209                            ; $4448: $cd $09 $62

jr_03e_444b:
    pop hl                                        ; $444b: $e1
    pop de                                        ; $444c: $d1
    pop bc                                        ; $444d: $c1
    pop af                                        ; $444e: $f1
    ret                                           ; $444f: $c9


Call_03e_4450:
    push af                                       ; $4450: $f5
    push bc                                       ; $4451: $c5
    push de                                       ; $4452: $d5
    push hl                                       ; $4453: $e5
    ld h, a                                       ; $4454: $67
    ldh a, [$96]                                  ; $4455: $f0 $96
    push af                                       ; $4457: $f5
    ld a, h                                       ; $4458: $7c
    cp $01                                        ; $4459: $fe $01
    jp z, Jump_03e_44ae                           ; $445b: $ca $ae $44

    ld a, [$d528]                                 ; $445e: $fa $28 $d5
    cp $00                                        ; $4461: $fe $00
    jp z, Jump_03e_44fb                           ; $4463: $ca $fb $44

    ld a, [$d529]                                 ; $4466: $fa $29 $d5
    cp $00                                        ; $4469: $fe $00
    jp z, Jump_03e_44fb                           ; $446b: $ca $fb $44

    ld hl, $d526                                  ; $446e: $21 $26 $d5
    ld a, [hl]                                    ; $4471: $7e
    cp $01                                        ; $4472: $fe $01
    jp nz, Jump_03e_4482                          ; $4474: $c2 $82 $44

    ld hl, $4006                                  ; $4477: $21 $06 $40
    ld d, $00                                     ; $447a: $16 $00
    call Call_03e_6293                            ; $447c: $cd $93 $62
    jp Jump_03e_44fb                              ; $447f: $c3 $fb $44


Jump_03e_4482:
    ld hl, $d528                                  ; $4482: $21 $28 $d5
    ld a, [hl]                                    ; $4485: $7e
    ld h, $00                                     ; $4486: $26 $00
    ld l, a                                       ; $4488: $6f
    rst $18                                       ; $4489: $df
    ld d, [hl]                                    ; $448a: $56
    dec b                                         ; $448b: $05
    ld a, $01                                     ; $448c: $3e $01
    ldh [$96], a                                  ; $448e: $e0 $96
    ldh [rSVBK], a                                ; $4490: $e0 $70
    ld hl, $14be                                  ; $4492: $21 $be $14
    ld de, $d4e7                                  ; $4495: $11 $e7 $d4
    rst $18                                       ; $4498: $df
    ld [hl+], a                                   ; $4499: $22
    dec b                                         ; $449a: $05
    ld hl, $d0e7                                  ; $449b: $21 $e7 $d0
    ld a, $00                                     ; $449e: $3e $00
    ld [hl], a                                    ; $44a0: $77
    inc hl                                        ; $44a1: $23
    ld [hl], a                                    ; $44a2: $77
    ld hl, $4010                                  ; $44a3: $21 $10 $40
    ld d, $00                                     ; $44a6: $16 $00
    call Call_03e_6293                            ; $44a8: $cd $93 $62
    jp Jump_03e_44fb                              ; $44ab: $c3 $fb $44


Jump_03e_44ae:
    ld a, [$d528]                                 ; $44ae: $fa $28 $d5
    cp $00                                        ; $44b1: $fe $00
    jp z, Jump_03e_44fb                           ; $44b3: $ca $fb $44

    ld a, [$d529]                                 ; $44b6: $fa $29 $d5
    cp $00                                        ; $44b9: $fe $00

Call_03e_44bb:
    jp z, Jump_03e_44fb                           ; $44bb: $ca $fb $44

    ld hl, $d527                                  ; $44be: $21 $27 $d5
    ld a, [hl]                                    ; $44c1: $7e
    cp $01                                        ; $44c2: $fe $01
    jp nz, Jump_03e_44d2                          ; $44c4: $c2 $d2 $44

    ld hl, $4006                                  ; $44c7: $21 $06 $40
    ld d, $05                                     ; $44ca: $16 $05
    call Call_03e_6293                            ; $44cc: $cd $93 $62
    jp Jump_03e_44fb                              ; $44cf: $c3 $fb $44


Jump_03e_44d2:
    ld hl, $d529                                  ; $44d2: $21 $29 $d5
    ld a, [hl]                                    ; $44d5: $7e
    ld h, $00                                     ; $44d6: $26 $00
    ld l, a                                       ; $44d8: $6f
    rst $18                                       ; $44d9: $df
    ld d, [hl]                                    ; $44da: $56
    dec b                                         ; $44db: $05
    ld a, $01                                     ; $44dc: $3e $01
    ldh [$96], a                                  ; $44de: $e0 $96
    ldh [rSVBK], a                                ; $44e0: $e0 $70
    ld hl, $14be                                  ; $44e2: $21 $be $14
    ld de, $d587                                  ; $44e5: $11 $87 $d5
    rst $18                                       ; $44e8: $df
    ld [hl+], a                                   ; $44e9: $22
    dec b                                         ; $44ea: $05
    ld hl, $d187                                  ; $44eb: $21 $87 $d1
    ld a, $00                                     ; $44ee: $3e $00
    ld [hl], a                                    ; $44f0: $77
    inc hl                                        ; $44f1: $23
    ld [hl], a                                    ; $44f2: $77
    ld hl, $4010                                  ; $44f3: $21 $10 $40
    ld d, $05                                     ; $44f6: $16 $05
    call Call_03e_6293                            ; $44f8: $cd $93 $62

Jump_03e_44fb:
    pop af                                        ; $44fb: $f1
    ldh [$96], a                                  ; $44fc: $e0 $96
    ldh [rSVBK], a                                ; $44fe: $e0 $70
    pop hl                                        ; $4500: $e1
    pop de                                        ; $4501: $d1
    pop bc                                        ; $4502: $c1
    pop af                                        ; $4503: $f1
    ret                                           ; $4504: $c9


Call_03e_4505:
    push af                                       ; $4505: $f5
    push bc                                       ; $4506: $c5
    push de                                       ; $4507: $d5
    push hl                                       ; $4508: $e5
    ld h, a                                       ; $4509: $67
    ld a, $06                                     ; $450a: $3e $06
    ldh [$96], a                                  ; $450c: $e0 $96
    ldh [rSVBK], a                                ; $450e: $e0 $70
    ld a, h                                       ; $4510: $7c
    cp $01                                        ; $4511: $fe $01
    jp z, Jump_03e_453b                           ; $4513: $ca $3b $45

    ld a, [$403c]                                 ; $4516: $fa $3c $40
    ld b, a                                       ; $4519: $47
    ld a, [$403d]                                 ; $451a: $fa $3d $40
    ld c, a                                       ; $451d: $4f
    ld hl, $d555                                  ; $451e: $21 $55 $d5
    ld a, [hl]                                    ; $4521: $7e

jr_03e_4522:
    cp $00                                        ; $4522: $fe $00
    jr z, jr_03e_4565                             ; $4524: $28 $3f

    push af                                       ; $4526: $f5
    ld a, [$4038]                                 ; $4527: $fa $38 $40
    call Call_03e_6209                            ; $452a: $cd $09 $62
    push bc                                       ; $452d: $c5
    inc c                                         ; $452e: $0c
    ld a, [$403a]                                 ; $452f: $fa $3a $40
    call Call_03e_6209                            ; $4532: $cd $09 $62
    pop bc                                        ; $4535: $c1
    pop af                                        ; $4536: $f1
    inc b                                         ; $4537: $04
    dec a                                         ; $4538: $3d
    jr jr_03e_4522                                ; $4539: $18 $e7

Jump_03e_453b:
    ld a, [$403e]                                 ; $453b: $fa $3e $40
    ld c, a                                       ; $453e: $4f
    ld a, [$403c]                                 ; $453f: $fa $3c $40
    ld b, a                                       ; $4542: $47
    ld a, [$403d]                                 ; $4543: $fa $3d $40
    add c                                         ; $4546: $81
    ld c, a                                       ; $4547: $4f
    ld hl, $d556                                  ; $4548: $21 $56 $d5
    ld a, [hl]                                    ; $454b: $7e

jr_03e_454c:
    cp $00                                        ; $454c: $fe $00
    jr z, jr_03e_4565                             ; $454e: $28 $15

    push af                                       ; $4550: $f5
    ld a, [$4038]                                 ; $4551: $fa $38 $40
    call Call_03e_6209                            ; $4554: $cd $09 $62
    push bc                                       ; $4557: $c5
    inc c                                         ; $4558: $0c
    ld a, [$403a]                                 ; $4559: $fa $3a $40
    call Call_03e_6209                            ; $455c: $cd $09 $62
    pop bc                                        ; $455f: $c1
    pop af                                        ; $4560: $f1
    inc b                                         ; $4561: $04
    dec a                                         ; $4562: $3d
    jr jr_03e_454c                                ; $4563: $18 $e7

jr_03e_4565:
    pop hl                                        ; $4565: $e1
    pop de                                        ; $4566: $d1
    pop bc                                        ; $4567: $c1
    pop af                                        ; $4568: $f1
    ret                                           ; $4569: $c9


Call_03e_456a:
    push af                                       ; $456a: $f5
    push bc                                       ; $456b: $c5
    push de                                       ; $456c: $d5
    push hl                                       ; $456d: $e5
    cp $01                                        ; $456e: $fe $01
    jr z, jr_03e_457d                             ; $4570: $28 $0b

    ld hl, $c890                                  ; $4572: $21 $90 $c8
    ld a, [hl]                                    ; $4575: $7e
    ld hl, $c893                                  ; $4576: $21 $93 $c8
    ld d, $00                                     ; $4579: $16 $00
    jr jr_03e_4586                                ; $457b: $18 $09

jr_03e_457d:
    ld hl, $c8d0                                  ; $457d: $21 $d0 $c8
    ld a, [hl]                                    ; $4580: $7e
    ld hl, $c8d3                                  ; $4581: $21 $d3 $c8
    ld d, $05                                     ; $4584: $16 $05

jr_03e_4586:
    cp $0b                                        ; $4586: $fe $0b
    jr z, jr_03e_459d                             ; $4588: $28 $13

    ld a, [hl]                                    ; $458a: $7e
    cp $00                                        ; $458b: $fe $00
    jr z, jr_03e_459d                             ; $458d: $28 $0e

    cp $01                                        ; $458f: $fe $01
    jr z, jr_03e_45a5                             ; $4591: $28 $12

    cp $02                                        ; $4593: $fe $02
    jr z, jr_03e_459d                             ; $4595: $28 $06

    cp $03                                        ; $4597: $fe $03
    jr z, jr_03e_45a5                             ; $4599: $28 $0a

    jr jr_03e_45ab                                ; $459b: $18 $0e

jr_03e_459d:
    ld hl, $4023                                  ; $459d: $21 $23 $40
    call Call_03e_6293                            ; $45a0: $cd $93 $62
    jr jr_03e_45ab                                ; $45a3: $18 $06

jr_03e_45a5:
    ld hl, $401c                                  ; $45a5: $21 $1c $40
    call Call_03e_6293                            ; $45a8: $cd $93 $62

jr_03e_45ab:
    pop hl                                        ; $45ab: $e1
    pop de                                        ; $45ac: $d1
    pop bc                                        ; $45ad: $c1
    pop af                                        ; $45ae: $f1
    ret                                           ; $45af: $c9


Call_03e_45b0:
    push af                                       ; $45b0: $f5
    push bc                                       ; $45b1: $c5
    push de                                       ; $45b2: $d5
    push hl                                       ; $45b3: $e5
    ld a, [$c890]                                 ; $45b4: $fa $90 $c8
    ld h, $00                                     ; $45b7: $26 $00
    ld l, a                                       ; $45b9: $6f
    add hl, hl                                    ; $45ba: $29
    add hl, hl                                    ; $45bb: $29
    add hl, hl                                    ; $45bc: $29
    push hl                                       ; $45bd: $e5
    add hl, hl                                    ; $45be: $29
    add hl, hl                                    ; $45bf: $29
    add hl, hl                                    ; $45c0: $29
    ld de, $4990                                  ; $45c1: $11 $90 $49
    add hl, de                                    ; $45c4: $19
    ld de, $a5c0                                  ; $45c5: $11 $c0 $a5
    ld c, $04                                     ; $45c8: $0e $04
    call Call_000_04db                            ; $45ca: $cd $db $04
    pop hl                                        ; $45cd: $e1
    ld de, $4d90                                  ; $45ce: $11 $90 $4d
    add hl, de                                    ; $45d1: $19
    ld a, [$c899]                                 ; $45d2: $fa $99 $c8
    bit 4, a                                      ; $45d5: $cb $67
    jr z, jr_03e_45dd                             ; $45d7: $28 $04

    ld de, $0080                                  ; $45d9: $11 $80 $00
    add hl, de                                    ; $45dc: $19

jr_03e_45dd:
    ld de, $0c01                                  ; $45dd: $11 $01 $0c
    call Call_000_056c                            ; $45e0: $cd $6c $05
    jr jr_03e_4600                                ; $45e3: $18 $1b

    ld h, $00                                     ; $45e5: $26 $00
    ld l, a                                       ; $45e7: $6f
    add hl, hl                                    ; $45e8: $29
    add hl, hl                                    ; $45e9: $29
    add hl, hl                                    ; $45ea: $29
    ld de, $4d90                                  ; $45eb: $11 $90 $4d
    add hl, de                                    ; $45ee: $19
    ld de, $0c01                                  ; $45ef: $11 $01 $0c
    call Call_000_056c                            ; $45f2: $cd $6c $05
    ld hl, $4950                                  ; $45f5: $21 $50 $49
    ld de, $a5c0                                  ; $45f8: $11 $c0 $a5
    ld c, $04                                     ; $45fb: $0e $04
    call Call_000_04db                            ; $45fd: $cd $db $04

jr_03e_4600:
    pop hl                                        ; $4600: $e1
    pop de                                        ; $4601: $d1
    pop bc                                        ; $4602: $c1
    pop af                                        ; $4603: $f1
    ret                                           ; $4604: $c9


Call_03e_4605:
    push af                                       ; $4605: $f5
    push bc                                       ; $4606: $c5
    push de                                       ; $4607: $d5
    push hl                                       ; $4608: $e5
    ld a, [$c8d0]                                 ; $4609: $fa $d0 $c8
    ld h, $00                                     ; $460c: $26 $00
    ld l, a                                       ; $460e: $6f
    add hl, hl                                    ; $460f: $29
    add hl, hl                                    ; $4610: $29
    add hl, hl                                    ; $4611: $29
    push hl                                       ; $4612: $e5
    add hl, hl                                    ; $4613: $29
    add hl, hl                                    ; $4614: $29
    add hl, hl                                    ; $4615: $29
    ld de, $4990                                  ; $4616: $11 $90 $49
    add hl, de                                    ; $4619: $19
    ld de, $a6c0                                  ; $461a: $11 $c0 $a6
    ld c, $04                                     ; $461d: $0e $04
    call Call_000_04db                            ; $461f: $cd $db $04
    pop hl                                        ; $4622: $e1
    ld de, $4d90                                  ; $4623: $11 $90 $4d
    add hl, de                                    ; $4626: $19
    ld a, [$c8d9]                                 ; $4627: $fa $d9 $c8
    bit 4, a                                      ; $462a: $cb $67
    jr z, jr_03e_4632                             ; $462c: $28 $04

    ld de, $0080                                  ; $462e: $11 $80 $00
    add hl, de                                    ; $4631: $19

jr_03e_4632:
    ld de, $0d01                                  ; $4632: $11 $01 $0d
    call Call_000_056c                            ; $4635: $cd $6c $05
    jr jr_03e_4655                                ; $4638: $18 $1b

    ld h, $00                                     ; $463a: $26 $00
    ld l, a                                       ; $463c: $6f
    add hl, hl                                    ; $463d: $29
    add hl, hl                                    ; $463e: $29
    add hl, hl                                    ; $463f: $29
    ld de, $4d90                                  ; $4640: $11 $90 $4d
    add hl, de                                    ; $4643: $19
    ld de, $0d01                                  ; $4644: $11 $01 $0d
    call Call_000_056c                            ; $4647: $cd $6c $05
    ld hl, $4950                                  ; $464a: $21 $50 $49
    ld de, $a6c0                                  ; $464d: $11 $c0 $a6
    ld c, $04                                     ; $4650: $0e $04
    call Call_000_04db                            ; $4652: $cd $db $04

jr_03e_4655:
    pop hl                                        ; $4655: $e1
    pop de                                        ; $4656: $d1
    pop bc                                        ; $4657: $c1
    pop af                                        ; $4658: $f1
    ret                                           ; $4659: $c9


    ldh a, [$96]                                  ; $465a: $f0 $96
    push af                                       ; $465c: $f5
    push af                                       ; $465d: $f5
    push bc                                       ; $465e: $c5
    push de                                       ; $465f: $d5
    push hl                                       ; $4660: $e5
    ld a, $06                                     ; $4661: $3e $06
    ldh [$96], a                                  ; $4663: $e0 $96
    ldh [rSVBK], a                                ; $4665: $e0 $70
    ld hl, $0201                                  ; $4667: $21 $01 $02
    ld de, $1030                                  ; $466a: $11 $30 $10
    ld bc, $0c5c                                  ; $466d: $01 $5c $0c
    call Call_000_2756                            ; $4670: $cd $56 $27
    ld hl, $0201                                  ; $4673: $21 $01 $02
    ld de, $1058                                  ; $4676: $11 $58 $10
    ld bc, $0d6c                                  ; $4679: $01 $6c $0d
    call Call_000_2756                            ; $467c: $cd $56 $27
    ldh a, [$8c]                                  ; $467f: $f0 $8c
    and $3f                                       ; $4681: $e6 $3f
    ld hl, $47b3                                  ; $4683: $21 $b3 $47
    add l                                         ; $4686: $85
    ld l, a                                       ; $4687: $6f
    jr nc, jr_03e_468b                            ; $4688: $30 $01

    inc h                                         ; $468a: $24

jr_03e_468b:
    ld e, $00                                     ; $468b: $1e $00
    ld d, [hl]                                    ; $468d: $56
    ld hl, $4930                                  ; $468e: $21 $30 $49
    ld bc, $0800                                  ; $4691: $01 $00 $08
    call Call_000_26ea                            ; $4694: $cd $ea $26
    ld a, [$d61d]                                 ; $4697: $fa $1d $d6
    or a                                          ; $469a: $b7
    jr z, jr_03e_46be                             ; $469b: $28 $21

    ld a, [$d61d]                                 ; $469d: $fa $1d $d6
    cp $02                                        ; $46a0: $fe $02
    jr z, jr_03e_46b2                             ; $46a2: $28 $0e

    ld hl, $4800                                  ; $46a4: $21 $00 $48
    ld bc, $0b30                                  ; $46a7: $01 $30 $0b
    ld de, $0000                                  ; $46aa: $11 $00 $00
    call Call_000_26ea                            ; $46ad: $cd $ea $26
    jr jr_03e_46be                                ; $46b0: $18 $0c

jr_03e_46b2:
    ld hl, $4820                                  ; $46b2: $21 $20 $48
    ld bc, $0b30                                  ; $46b5: $01 $30 $0b
    ld de, $0000                                  ; $46b8: $11 $00 $00
    call Call_000_26ea                            ; $46bb: $cd $ea $26

jr_03e_46be:
    ld a, [$c4bd]                                 ; $46be: $fa $bd $c4
    cp $00                                        ; $46c1: $fe $00
    jp z, Jump_03e_47a9                           ; $46c3: $ca $a9 $47

    ld a, [$c83a]                                 ; $46c6: $fa $3a $c8
    cp $00                                        ; $46c9: $fe $00
    jr z, jr_03e_46d2                             ; $46cb: $28 $05

    ld a, [$c96c]                                 ; $46cd: $fa $6c $c9
    jr jr_03e_46de                                ; $46d0: $18 $0c

jr_03e_46d2:
    ld hl, $c96e                                  ; $46d2: $21 $6e $c9
    ld a, [$c837]                                 ; $46d5: $fa $37 $c8
    dec a                                         ; $46d8: $3d
    ld e, a                                       ; $46d9: $5f
    ld d, $00                                     ; $46da: $16 $00
    add hl, de                                    ; $46dc: $19
    ld a, [hl]                                    ; $46dd: $7e

jr_03e_46de:
    cp $01                                        ; $46de: $fe $01
    jr z, jr_03e_46e9                             ; $46e0: $28 $07

    cp $02                                        ; $46e2: $fe $02
    jr z, jr_03e_4748                             ; $46e4: $28 $62

    jp Jump_03e_47a9                              ; $46e6: $c3 $a9 $47


jr_03e_46e9:
    ld hl, $d555                                  ; $46e9: $21 $55 $d5
    ld a, [hl]                                    ; $46ec: $7e
    dec a                                         ; $46ed: $3d
    ld b, a                                       ; $46ee: $47
    ld a, [$403c]                                 ; $46ef: $fa $3c $40
    add b                                         ; $46f2: $80
    ld b, a                                       ; $46f3: $47
    ld a, [$403d]                                 ; $46f4: $fa $3d $40
    ld c, a                                       ; $46f7: $4f
    ld a, [$d592]                                 ; $46f8: $fa $92 $d5
    inc a                                         ; $46fb: $3c
    and $1f                                       ; $46fc: $e6 $1f
    ld [$d592], a                                 ; $46fe: $ea $92 $d5
    bit 4, a                                      ; $4701: $cb $67
    jr nz, jr_03e_4727                            ; $4703: $20 $22

    push bc                                       ; $4705: $c5
    call Call_03e_61cd                            ; $4706: $cd $cd $61
    push hl                                       ; $4709: $e5
    pop de                                        ; $470a: $d1
    ld hl, $4034                                  ; $470b: $21 $34 $40
    ld a, [hl+]                                   ; $470e: $2a
    ld h, [hl]                                    ; $470f: $66
    ld l, a                                       ; $4710: $6f
    call Call_000_04b4                            ; $4711: $cd $b4 $04
    pop bc                                        ; $4714: $c1
    inc c                                         ; $4715: $0c
    call Call_03e_61cd                            ; $4716: $cd $cd $61
    push hl                                       ; $4719: $e5
    pop de                                        ; $471a: $d1
    ld hl, $4036                                  ; $471b: $21 $36 $40
    ld a, [hl+]                                   ; $471e: $2a
    ld h, [hl]                                    ; $471f: $66
    ld l, a                                       ; $4720: $6f
    call Call_000_04b4                            ; $4721: $cd $b4 $04
    jp Jump_03e_47a9                              ; $4724: $c3 $a9 $47


jr_03e_4727:
    push bc                                       ; $4727: $c5
    call Call_03e_61cd                            ; $4728: $cd $cd $61
    push hl                                       ; $472b: $e5
    pop de                                        ; $472c: $d1
    ld hl, $4038                                  ; $472d: $21 $38 $40
    ld a, [hl+]                                   ; $4730: $2a
    ld h, [hl]                                    ; $4731: $66
    ld l, a                                       ; $4732: $6f
    call Call_000_04b4                            ; $4733: $cd $b4 $04
    pop bc                                        ; $4736: $c1
    inc c                                         ; $4737: $0c
    call Call_03e_61cd                            ; $4738: $cd $cd $61
    push hl                                       ; $473b: $e5
    pop de                                        ; $473c: $d1
    ld hl, $403a                                  ; $473d: $21 $3a $40
    ld a, [hl+]                                   ; $4740: $2a
    ld h, [hl]                                    ; $4741: $66
    ld l, a                                       ; $4742: $6f
    call Call_000_04b4                            ; $4743: $cd $b4 $04
    jr jr_03e_47a9                                ; $4746: $18 $61

jr_03e_4748:
    ld hl, $d556                                  ; $4748: $21 $56 $d5
    ld a, [hl]                                    ; $474b: $7e
    dec a                                         ; $474c: $3d
    ld b, a                                       ; $474d: $47
    ld a, [$403e]                                 ; $474e: $fa $3e $40
    ld c, a                                       ; $4751: $4f
    ld a, [$403c]                                 ; $4752: $fa $3c $40
    add b                                         ; $4755: $80
    ld b, a                                       ; $4756: $47
    ld a, [$403d]                                 ; $4757: $fa $3d $40
    add c                                         ; $475a: $81
    ld c, a                                       ; $475b: $4f
    ld a, [$d592]                                 ; $475c: $fa $92 $d5
    inc a                                         ; $475f: $3c
    and $1f                                       ; $4760: $e6 $1f
    ld [$d592], a                                 ; $4762: $ea $92 $d5
    bit 4, a                                      ; $4765: $cb $67
    jr nz, jr_03e_478a                            ; $4767: $20 $21

    push bc                                       ; $4769: $c5
    call Call_03e_61cd                            ; $476a: $cd $cd $61
    push hl                                       ; $476d: $e5
    pop de                                        ; $476e: $d1
    ld hl, $4034                                  ; $476f: $21 $34 $40
    ld a, [hl+]                                   ; $4772: $2a
    ld h, [hl]                                    ; $4773: $66
    ld l, a                                       ; $4774: $6f
    call Call_000_04b4                            ; $4775: $cd $b4 $04
    pop bc                                        ; $4778: $c1
    inc c                                         ; $4779: $0c
    call Call_03e_61cd                            ; $477a: $cd $cd $61
    push hl                                       ; $477d: $e5
    pop de                                        ; $477e: $d1
    ld hl, $4036                                  ; $477f: $21 $36 $40
    ld a, [hl+]                                   ; $4782: $2a
    ld h, [hl]                                    ; $4783: $66
    ld l, a                                       ; $4784: $6f
    call Call_000_04b4                            ; $4785: $cd $b4 $04
    jr jr_03e_47a9                                ; $4788: $18 $1f

jr_03e_478a:
    push bc                                       ; $478a: $c5
    call Call_03e_61cd                            ; $478b: $cd $cd $61
    push hl                                       ; $478e: $e5
    pop de                                        ; $478f: $d1
    ld hl, $4038                                  ; $4790: $21 $38 $40
    ld a, [hl+]                                   ; $4793: $2a
    ld h, [hl]                                    ; $4794: $66
    ld l, a                                       ; $4795: $6f
    call Call_000_04b4                            ; $4796: $cd $b4 $04
    pop bc                                        ; $4799: $c1
    inc c                                         ; $479a: $0c
    call Call_03e_61cd                            ; $479b: $cd $cd $61
    push hl                                       ; $479e: $e5
    pop de                                        ; $479f: $d1
    ld hl, $403a                                  ; $47a0: $21 $3a $40
    ld a, [hl+]                                   ; $47a3: $2a
    ld h, [hl]                                    ; $47a4: $66
    ld l, a                                       ; $47a5: $6f
    call Call_000_04b4                            ; $47a6: $cd $b4 $04

Jump_03e_47a9:
jr_03e_47a9:
    pop hl                                        ; $47a9: $e1

jr_03e_47aa:
    pop de                                        ; $47aa: $d1
    pop bc                                        ; $47ab: $c1
    pop af                                        ; $47ac: $f1
    pop af                                        ; $47ad: $f1
    ldh [$96], a                                  ; $47ae: $e0 $96
    ldh [rSVBK], a                                ; $47b0: $e0 $70
    ret                                           ; $47b2: $c9


    nop                                           ; $47b3: $00
    nop                                           ; $47b4: $00
    nop                                           ; $47b5: $00
    ld bc, $0101                                  ; $47b6: $01 $01 $01
    ld [bc], a                                    ; $47b9: $02
    ld [bc], a                                    ; $47ba: $02
    ld [bc], a                                    ; $47bb: $02
    inc bc                                        ; $47bc: $03
    inc bc                                        ; $47bd: $03
    inc bc                                        ; $47be: $03
    inc bc                                        ; $47bf: $03
    inc bc                                        ; $47c0: $03
    inc bc                                        ; $47c1: $03
    inc bc                                        ; $47c2: $03
    inc bc                                        ; $47c3: $03
    inc bc                                        ; $47c4: $03
    inc bc                                        ; $47c5: $03

jr_03e_47c6:
    inc bc                                        ; $47c6: $03
    inc bc                                        ; $47c7: $03
    inc bc                                        ; $47c8: $03
    inc bc                                        ; $47c9: $03
    inc bc                                        ; $47ca: $03
    ld [bc], a                                    ; $47cb: $02
    ld [bc], a                                    ; $47cc: $02
    ld [bc], a                                    ; $47cd: $02
    ld bc, $0101                                  ; $47ce: $01 $01 $01
    nop                                           ; $47d1: $00

jr_03e_47d2:
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    cp $fe                                        ; $47d9: $fe $fe
    cp $fd                                        ; $47db: $fe $fd
    db $fd                                        ; $47dd: $fd
    db $fd                                        ; $47de: $fd
    db $fd                                        ; $47df: $fd
    db $fd                                        ; $47e0: $fd
    db $fd                                        ; $47e1: $fd
    db $fd                                        ; $47e2: $fd
    db $fd                                        ; $47e3: $fd
    db $fd                                        ; $47e4: $fd
    db $fd                                        ; $47e5: $fd
    db $fd                                        ; $47e6: $fd
    db $fd                                        ; $47e7: $fd
    db $fd                                        ; $47e8: $fd
    db $fd                                        ; $47e9: $fd
    db $fd                                        ; $47ea: $fd
    cp $fe                                        ; $47eb: $fe $fe
    cp $ff                                        ; $47ed: $fe $ff
    rst $38                                       ; $47ef: $ff
    rst $38                                       ; $47f0: $ff
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
    jr nc, jr_03e_4862                            ; $4800: $30 $60

    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    jr nc, jr_03e_486e                            ; $4804: $30 $68

    ld [bc], a                                    ; $4806: $02
    nop                                           ; $4807: $00
    jr nc, @+$72                                  ; $4808: $30 $70

    inc b                                         ; $480a: $04
    nop                                           ; $480b: $00
    jr nc, jr_03e_4886                            ; $480c: $30 $78

    ld b, $00                                     ; $480e: $06 $00
    jr nc, @-$7e                                  ; $4810: $30 $80

    ld [$3000], sp                                ; $4812: $08 $00 $30
    adc b                                         ; $4815: $88
    ld a, [bc]                                    ; $4816: $0a
    nop                                           ; $4817: $00
    jr nc, jr_03e_47aa                            ; $4818: $30 $90

    inc c                                         ; $481a: $0c
    nop                                           ; $481b: $00
    add b                                         ; $481c: $80
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    jr nc, jr_03e_487e                            ; $4820: $30 $5c

    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    jr nc, @+$66                                  ; $4824: $30 $64

    ld [bc], a                                    ; $4826: $02
    nop                                           ; $4827: $00
    jr nc, jr_03e_4896                            ; $4828: $30 $6c

    inc b                                         ; $482a: $04
    nop                                           ; $482b: $00
    jr nc, jr_03e_48a2                            ; $482c: $30 $74

    ld b, $00                                     ; $482e: $06 $00
    jr nc, @+$7e                                  ; $4830: $30 $7c

    ld [$3000], sp                                ; $4832: $08 $00 $30
    add h                                         ; $4835: $84
    ld a, [bc]                                    ; $4836: $0a
    nop                                           ; $4837: $00
    jr nc, jr_03e_47c6                            ; $4838: $30 $8c

    inc c                                         ; $483a: $0c
    nop                                           ; $483b: $00
    jr nc, jr_03e_47d2                            ; $483c: $30 $94

    ld c, $00                                     ; $483e: $0e $00
    add b                                         ; $4840: $80
    nop                                           ; $4841: $00

Call_03e_4842:
    push af                                       ; $4842: $f5
    push bc                                       ; $4843: $c5
    push de                                       ; $4844: $d5
    push hl                                       ; $4845: $e5
    ld bc, $1008                                  ; $4846: $01 $08 $10
    ld a, [$c83a]                                 ; $4849: $fa $3a $c8
    cp $00                                        ; $484c: $fe $00
    jr z, jr_03e_4854                             ; $484e: $28 $04

    ld a, $09                                     ; $4850: $3e $09
    jr jr_03e_485b                                ; $4852: $18 $07

jr_03e_4854:
    ld a, [$d553]                                 ; $4854: $fa $53 $d5
    ld d, a                                       ; $4857: $57
    ld a, $0a                                     ; $4858: $3e $0a
    sub d                                         ; $485a: $92

jr_03e_485b:
    cp $00                                        ; $485b: $fe $00
    jr z, jr_03e_4872                             ; $485d: $28 $13

    push af                                       ; $485f: $f5
    ld a, $c9                                     ; $4860: $3e $c9

jr_03e_4862:
    call Call_03e_6209                            ; $4862: $cd $09 $62
    push bc                                       ; $4865: $c5
    inc c                                         ; $4866: $0c
    ld a, $c9                                     ; $4867: $3e $c9
    call Call_03e_6209                            ; $4869: $cd $09 $62
    pop bc                                        ; $486c: $c1
    pop af                                        ; $486d: $f1

jr_03e_486e:
    dec b                                         ; $486e: $05
    dec a                                         ; $486f: $3d
    jr jr_03e_485b                                ; $4870: $18 $e9

jr_03e_4872:
    ld bc, $100d                                  ; $4872: $01 $0d $10
    jr z, jr_03e_487b                             ; $4875: $28 $04

    ld a, $09                                     ; $4877: $3e $09
    jr jr_03e_4882                                ; $4879: $18 $07

jr_03e_487b:
    ld a, [$d553]                                 ; $487b: $fa $53 $d5

jr_03e_487e:
    ld d, a                                       ; $487e: $57
    ld a, $0a                                     ; $487f: $3e $0a
    sub d                                         ; $4881: $92

jr_03e_4882:
    cp $00                                        ; $4882: $fe $00
    jr z, jr_03e_4899                             ; $4884: $28 $13

jr_03e_4886:
    push af                                       ; $4886: $f5
    ld a, $c9                                     ; $4887: $3e $c9
    call Call_03e_6209                            ; $4889: $cd $09 $62
    push bc                                       ; $488c: $c5
    inc c                                         ; $488d: $0c
    ld a, $c9                                     ; $488e: $3e $c9
    call Call_03e_6209                            ; $4890: $cd $09 $62
    pop bc                                        ; $4893: $c1
    pop af                                        ; $4894: $f1
    dec b                                         ; $4895: $05

jr_03e_4896:
    dec a                                         ; $4896: $3d
    jr jr_03e_4882                                ; $4897: $18 $e9

jr_03e_4899:
    pop hl                                        ; $4899: $e1
    pop de                                        ; $489a: $d1
    pop bc                                        ; $489b: $c1
    pop af                                        ; $489c: $f1
    ret                                           ; $489d: $c9


Call_03e_489e:
    push af                                       ; $489e: $f5
    push bc                                       ; $489f: $c5
    push de                                       ; $48a0: $d5
    push hl                                       ; $48a1: $e5

jr_03e_48a2:
    ldh a, [$96]                                  ; $48a2: $f0 $96
    push af                                       ; $48a4: $f5
    ld a, $06                                     ; $48a5: $3e $06
    ldh [$96], a                                  ; $48a7: $e0 $96
    ldh [rSVBK], a                                ; $48a9: $e0 $70
    xor a                                         ; $48ab: $af
    ld [$d61d], a                                 ; $48ac: $ea $1d $d6
    ld a, $01                                     ; $48af: $3e $01
    ldh [$96], a                                  ; $48b1: $e0 $96
    ldh [rSVBK], a                                ; $48b3: $e0 $70
    ld a, [$c83a]                                 ; $48b5: $fa $3a $c8
    or a                                          ; $48b8: $b7
    jr z, jr_03e_48e5                             ; $48b9: $28 $2a

    ld hl, $5e88                                  ; $48bb: $21 $88 $5e
    ld de, $d000                                  ; $48be: $11 $00 $d0
    call Call_000_1f2f                            ; $48c1: $cd $2f $1f
    ld hl, $d000                                  ; $48c4: $21 $00 $d0
    ld de, $a300                                  ; $48c7: $11 $00 $a3
    ld c, $10                                     ; $48ca: $0e $10
    call Call_000_04db                            ; $48cc: $cd $db $04
    ld hl, $6078                                  ; $48cf: $21 $78 $60
    ld de, $0b01                                  ; $48d2: $11 $01 $0b
    call Call_000_0595                            ; $48d5: $cd $95 $05
    ld a, $06                                     ; $48d8: $3e $06
    ldh [$96], a                                  ; $48da: $e0 $96
    ldh [rSVBK], a                                ; $48dc: $e0 $70
    ld a, $02                                     ; $48de: $3e $02
    ld [$d61d], a                                 ; $48e0: $ea $1d $d6
    jr jr_03e_4920                                ; $48e3: $18 $3b

jr_03e_48e5:
    ld a, $06                                     ; $48e5: $3e $06
    ldh [$96], a                                  ; $48e7: $e0 $96
    ldh [rSVBK], a                                ; $48e9: $e0 $70
    ld a, [$d52a]                                 ; $48eb: $fa $2a $d5
    cp $01                                        ; $48ee: $fe $01
    jr nz, jr_03e_4920                            ; $48f0: $20 $2e

    ld a, $01                                     ; $48f2: $3e $01
    ldh [$96], a                                  ; $48f4: $e0 $96
    ldh [rSVBK], a                                ; $48f6: $e0 $70
    ld hl, $5f94                                  ; $48f8: $21 $94 $5f
    ld de, $d000                                  ; $48fb: $11 $00 $d0
    call Call_000_1f2f                            ; $48fe: $cd $2f $1f
    ld hl, $d000                                  ; $4901: $21 $00 $d0
    ld de, $a300                                  ; $4904: $11 $00 $a3
    ld c, $0e                                     ; $4907: $0e $0e
    call Call_000_04db                            ; $4909: $cd $db $04
    ld hl, $6088                                  ; $490c: $21 $88 $60
    ld de, $0b01                                  ; $490f: $11 $01 $0b
    call Call_000_0595                            ; $4912: $cd $95 $05
    ld a, $06                                     ; $4915: $3e $06
    ldh [$96], a                                  ; $4917: $e0 $96
    ldh [rSVBK], a                                ; $4919: $e0 $70
    ld a, $01                                     ; $491b: $3e $01
    ld [$d61d], a                                 ; $491d: $ea $1d $d6

jr_03e_4920:
    pop af                                        ; $4920: $f1
    ldh [$96], a                                  ; $4921: $e0 $96
    ldh [rSVBK], a                                ; $4923: $e0 $70
    pop hl                                        ; $4925: $e1
    pop de                                        ; $4926: $d1
    pop bc                                        ; $4927: $c1
    pop af                                        ; $4928: $f1
    ret                                           ; $4929: $c9


    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    db $10                                        ; $4930: $10
    ld [hl], b                                    ; $4931: $70
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    db $10                                        ; $4934: $10
    ld a, b                                       ; $4935: $78
    ld [bc], a                                    ; $4936: $02
    nop                                           ; $4937: $00
    db $10                                        ; $4938: $10
    add b                                         ; $4939: $80
    inc b                                         ; $493a: $04
    nop                                           ; $493b: $00
    db $10                                        ; $493c: $10
    adc b                                         ; $493d: $88
    ld b, $00                                     ; $493e: $06 $00
    db $10                                        ; $4940: $10
    sub b                                         ; $4941: $90
    ld [$8000], sp                                ; $4942: $08 $00 $80
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    inc e                                         ; $4990: $1c
    inc e                                         ; $4991: $1c
    rra                                           ; $4992: $1f
    rra                                           ; $4993: $1f
    inc e                                         ; $4994: $1c
    rra                                           ; $4995: $1f
    inc l                                         ; $4996: $2c
    ccf                                           ; $4997: $3f

jr_03e_4998:
    ld b, b                                       ; $4998: $40
    ld a, a                                       ; $4999: $7f
    ld a, a                                       ; $499a: $7f
    ld a, a                                       ; $499b: $7f
    ld [hl], e                                    ; $499c: $73
    ld a, a                                       ; $499d: $7f
    ld d, d                                       ; $499e: $52
    ld l, l                                       ; $499f: $6d
    ld [hl], e                                    ; $49a0: $73
    ld e, [hl]                                    ; $49a1: $5e
    ld [hl], e                                    ; $49a2: $73
    ld e, [hl]                                    ; $49a3: $5e
    adc b                                         ; $49a4: $88
    rst $38                                       ; $49a5: $ff
    add b                                         ; $49a6: $80
    rst $38                                       ; $49a7: $ff
    ld c, h                                       ; $49a8: $4c
    ld a, a                                       ; $49a9: $7f
    jr nz, jr_03e_49eb                            ; $49aa: $20 $3f

    add hl, de                                    ; $49ac: $19
    rra                                           ; $49ad: $1f
    ld b, $06                                     ; $49ae: $06 $06
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    ret nz                                        ; $49b4: $c0

    ret nz                                        ; $49b5: $c0

    jr nz, jr_03e_4998                            ; $49b6: $20 $e0

    db $10                                        ; $49b8: $10
    ldh a, [rNR10]                                ; $49b9: $f0 $10
    ldh a, [$c8]                                  ; $49bb: $f0 $c8
    ld hl, sp+$68                                 ; $49bd: $f8 $68
    ld hl, sp+$34                                 ; $49bf: $f8 $34
    db $fc                                        ; $49c1: $fc
    inc a                                         ; $49c2: $3c
    db $fc                                        ; $49c3: $fc
    ld c, h                                       ; $49c4: $4c
    db $fc                                        ; $49c5: $fc
    inc l                                         ; $49c6: $2c
    db $fc                                        ; $49c7: $fc
    inc e                                         ; $49c8: $1c
    db $fc                                        ; $49c9: $fc
    ld a, b                                       ; $49ca: $78
    ld hl, sp-$10                                 ; $49cb: $f8 $f0
    ldh a, [rP1]                                  ; $49cd: $f0 $00
    nop                                           ; $49cf: $00
    jr nc, jr_03e_4a02                            ; $49d0: $30 $30

    ld c, a                                       ; $49d2: $4f
    ld a, a                                       ; $49d3: $7f
    sub h                                         ; $49d4: $94
    rst $38                                       ; $49d5: $ff
    cp a                                          ; $49d6: $bf
    rst $38                                       ; $49d7: $ff
    ld a, a                                       ; $49d8: $7f
    ld h, b                                       ; $49d9: $60
    ld a, a                                       ; $49da: $7f
    ld b, b                                       ; $49db: $40
    ld a, a                                       ; $49dc: $7f
    ld [hl], e                                    ; $49dd: $73
    ld a, a                                       ; $49de: $7f
    ld d, d                                       ; $49df: $52
    ld l, l                                       ; $49e0: $6d
    ld d, d                                       ; $49e1: $52
    rst $38                                       ; $49e2: $ff
    adc b                                         ; $49e3: $88
    rst $38                                       ; $49e4: $ff
    add b                                         ; $49e5: $80
    ld a, a                                       ; $49e6: $7f
    ld b, [hl]                                    ; $49e7: $46
    ccf                                           ; $49e8: $3f
    jr nz, jr_03e_4a0a                            ; $49e9: $20 $1f

jr_03e_49eb:
    add hl, de                                    ; $49eb: $19
    ld b, $06                                     ; $49ec: $06 $06
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    ld [$9608], sp                                ; $49f0: $08 $08 $96
    sbc [hl]                                      ; $49f3: $9e
    ld h, d                                       ; $49f4: $62
    cp $a1                                        ; $49f5: $fe $a1
    rst $38                                       ; $49f7: $ff
    and c                                         ; $49f8: $a1
    rst $38                                       ; $49f9: $ff
    sbc $7e                                       ; $49fa: $de $7e
    ret z                                         ; $49fc: $c8

    ld a, b                                       ; $49fd: $78
    ld hl, sp-$48                                 ; $49fe: $f8 $b8
    db $fc                                        ; $4a00: $fc
    and h                                         ; $4a01: $a4

jr_03e_4a02:
    db $fc                                        ; $4a02: $fc
    inc d                                         ; $4a03: $14
    ld hl, sp+$08                                 ; $4a04: $f8 $08
    ldh a, [$30]                                  ; $4a06: $f0 $30
    ret nz                                        ; $4a08: $c0

    ld b, b                                       ; $4a09: $40

jr_03e_4a0a:
    add b                                         ; $4a0a: $80
    add b                                         ; $4a0b: $80
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    rlca                                          ; $4a10: $07
    rlca                                          ; $4a11: $07
    ld [$1f0f], sp                                ; $4a12: $08 $0f $1f
    rra                                           ; $4a15: $1f
    ccf                                           ; $4a16: $3f
    jr nz, jr_03e_4a58                            ; $4a17: $20 $3f

    jr nz, jr_03e_4a5a                            ; $4a19: $20 $3f

    ccf                                           ; $4a1b: $3f
    ld a, a                                       ; $4a1c: $7f
    ld b, b                                       ; $4a1d: $40
    rst $38                                       ; $4a1e: $ff
    cp a                                          ; $4a1f: $bf
    rst $38                                       ; $4a20: $ff
    pop af                                        ; $4a21: $f1
    xor [hl]                                      ; $4a22: $ae
    pop af                                        ; $4a23: $f1
    cp a                                          ; $4a24: $bf
    add sp, -$41                                  ; $4a25: $e8 $bf
    ldh [$5f], a                                  ; $4a27: $e0 $5f
    ld [hl], h                                    ; $4a29: $74
    ccf                                           ; $4a2a: $3f
    jr c, @+$09                                   ; $4a2b: $38 $07

    rlca                                          ; $4a2d: $07
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    add b                                         ; $4a30: $80
    add b                                         ; $4a31: $80
    ld h, b                                       ; $4a32: $60
    ldh [$90], a                                  ; $4a33: $e0 $90
    ldh a, [$c8]                                  ; $4a35: $f0 $c8
    ld a, b                                       ; $4a37: $78
    add sp, $38                                   ; $4a38: $e8 $38
    ld hl, sp-$48                                 ; $4a3a: $f8 $b8
    db $fd                                        ; $4a3c: $fd
    ld h, l                                       ; $4a3d: $65
    ei                                            ; $4a3e: $fb
    ccf                                           ; $4a3f: $3f
    pop af                                        ; $4a40: $f1
    rst $38                                       ; $4a41: $ff
    reti                                          ; $4a42: $d9


    cpl                                           ; $4a43: $2f
    ld a, [$f20e]                                 ; $4a44: $fa $0e $f2
    ld a, $cc                                     ; $4a47: $3e $cc
    ld a, h                                       ; $4a49: $7c
    ldh a, [$f0]                                  ; $4a4a: $f0 $f0
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    inc c                                         ; $4a50: $0c
    inc c                                         ; $4a51: $0c
    inc de                                        ; $4a52: $13
    rra                                           ; $4a53: $1f
    jr nz, jr_03e_4a95                            ; $4a54: $20 $3f

    inc sp                                        ; $4a56: $33
    ccf                                           ; $4a57: $3f

jr_03e_4a58:
    ccf                                           ; $4a58: $3f
    inc l                                         ; $4a59: $2c

jr_03e_4a5a:
    ld a, a                                       ; $4a5a: $7f
    ld b, b                                       ; $4a5b: $40
    ld e, c                                       ; $4a5c: $59
    ld h, [hl]                                    ; $4a5d: $66
    rst $38                                       ; $4a5e: $ff
    rst $38                                       ; $4a5f: $ff
    rst $38                                       ; $4a60: $ff
    rst $38                                       ; $4a61: $ff
    ld a, a                                       ; $4a62: $7f
    ld h, [hl]                                    ; $4a63: $66
    ld a, a                                       ; $4a64: $7f
    ld d, b                                       ; $4a65: $50
    ld a, a                                       ; $4a66: $7f
    ld b, b                                       ; $4a67: $40
    ccf                                           ; $4a68: $3f
    inc l                                         ; $4a69: $2c
    ccf                                           ; $4a6a: $3f
    jr nz, jr_03e_4a8c                            ; $4a6b: $20 $1f

    ld de, $0e0e                                  ; $4a6d: $11 $0e $0e
    nop                                           ; $4a70: $00
    nop                                           ; $4a71: $00
    add b                                         ; $4a72: $80
    add b                                         ; $4a73: $80
    ld b, b                                       ; $4a74: $40
    ret nz                                        ; $4a75: $c0

    jr nz, jr_03e_4a58                            ; $4a76: $20 $e0

    sub b                                         ; $4a78: $90
    ldh a, [$90]                                  ; $4a79: $f0 $90
    ldh a, [$d0]                                  ; $4a7b: $f0 $d0
    ld [hl], b                                    ; $4a7d: $70
    ret nc                                        ; $4a7e: $d0

    ldh a, [$f0]                                  ; $4a7f: $f0 $f0
    ld [hl], b                                    ; $4a81: $70
    ld hl, sp+$48                                 ; $4a82: $f8 $48
    ld hl, sp+$28                                 ; $4a84: $f8 $28
    ld hl, sp+$18                                 ; $4a86: $f8 $18
    db $f4                                        ; $4a88: $f4
    ld a, h                                       ; $4a89: $7c
    db $e4                                        ; $4a8a: $e4
    db $fc                                        ; $4a8b: $fc

jr_03e_4a8c:
    inc e                                         ; $4a8c: $1c
    inc e                                         ; $4a8d: $1c
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    rra                                           ; $4a90: $1f
    rra                                           ; $4a91: $1f
    ld h, b                                       ; $4a92: $60
    ld a, a                                       ; $4a93: $7f
    add b                                         ; $4a94: $80

jr_03e_4a95:
    rst $38                                       ; $4a95: $ff
    add a                                         ; $4a96: $87
    rst $38                                       ; $4a97: $ff
    ld h, a                                       ; $4a98: $67
    ld a, h                                       ; $4a99: $7c
    ld a, a                                       ; $4a9a: $7f
    ld e, b                                       ; $4a9b: $58
    ld a, a                                       ; $4a9c: $7f
    ld a, [hl]                                    ; $4a9d: $7e
    rst $38                                       ; $4a9e: $ff
    push de                                       ; $4a9f: $d5
    rst $38                                       ; $4aa0: $ff
    xor c                                         ; $4aa1: $a9
    ld a, a                                       ; $4aa2: $7f
    ld c, [hl]                                    ; $4aa3: $4e
    ld a, a                                       ; $4aa4: $7f
    ld c, b                                       ; $4aa5: $48
    ccf                                           ; $4aa6: $3f
    jr nc, @+$41                                  ; $4aa7: $30 $3f

    inc l                                         ; $4aa9: $2c
    rra                                           ; $4aaa: $1f
    db $10                                        ; $4aab: $10
    rrca                                          ; $4aac: $0f
    add hl, bc                                    ; $4aad: $09
    ld b, $06                                     ; $4aae: $06 $06
    add b                                         ; $4ab0: $80
    add b                                         ; $4ab1: $80
    ld h, b                                       ; $4ab2: $60
    ldh [rNR10], a                                ; $4ab3: $e0 $10
    ldh a, [$08]                                  ; $4ab5: $f0 $08
    ld hl, sp-$78                                 ; $4ab7: $f8 $88
    ld hl, sp-$70                                 ; $4ab9: $f8 $90
    ldh a, [$d0]                                  ; $4abb: $f0 $d0
    ld [hl], b                                    ; $4abd: $70
    ldh a, [$f0]                                  ; $4abe: $f0 $f0
    ld hl, sp+$48                                 ; $4ac0: $f8 $48
    ld hl, sp+$28                                 ; $4ac2: $f8 $28
    ldh a, [rNR10]                                ; $4ac4: $f0 $10
    ldh [$60], a                                  ; $4ac6: $e0 $60
    add b                                         ; $4ac8: $80
    add b                                         ; $4ac9: $80
    add b                                         ; $4aca: $80
    add b                                         ; $4acb: $80
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    rlca                                          ; $4ad0: $07
    rlca                                          ; $4ad1: $07
    jr @+$21                                      ; $4ad2: $18 $1f

    jr nz, jr_03e_4b15                            ; $4ad4: $20 $3f

    ld b, b                                       ; $4ad6: $40
    ld a, a                                       ; $4ad7: $7f
    ld d, b                                       ; $4ad8: $50
    ld a, a                                       ; $4ad9: $7f
    sbc b                                         ; $4ada: $98
    rst $38                                       ; $4adb: $ff
    cp h                                          ; $4adc: $bc
    rst $20                                       ; $4add: $e7
    ld a, [hl]                                    ; $4ade: $7e
    ld [hl], e                                    ; $4adf: $73
    ld a, [hl]                                    ; $4ae0: $7e
    ld d, e                                       ; $4ae1: $53
    cpl                                           ; $4ae2: $2f
    ld sp, $293f                                  ; $4ae3: $31 $3f $29
    ccf                                           ; $4ae6: $3f
    jr nz, @+$21                                  ; $4ae7: $20 $1f

    inc d                                         ; $4ae9: $14
    rrca                                          ; $4aea: $0f
    add hl, bc                                    ; $4aeb: $09
    ld b, $06                                     ; $4aec: $06 $06
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    ret nz                                        ; $4af0: $c0

    ret nz                                        ; $4af1: $c0

    jr nc, @-$0e                                  ; $4af2: $30 $f0

    ld [$04f8], sp                                ; $4af4: $08 $f8 $04
    db $fc                                        ; $4af7: $fc
    inc b                                         ; $4af8: $04
    db $fc                                        ; $4af9: $fc
    ld [bc], a                                    ; $4afa: $02
    cp $02                                        ; $4afb: $fe $02
    cp $02                                        ; $4afd: $fe $02
    cp $0a                                        ; $4aff: $fe $0a
    cp $1c                                        ; $4b01: $fe $1c
    db $f4                                        ; $4b03: $f4
    inc e                                         ; $4b04: $1c
    db $f4                                        ; $4b05: $f4
    cp b                                          ; $4b06: $b8
    add sp, -$4c                                  ; $4b07: $e8 $b4
    db $fc                                        ; $4b09: $fc
    ret z                                         ; $4b0a: $c8

    ret z                                         ; $4b0b: $c8

    add b                                         ; $4b0c: $80
    add b                                         ; $4b0d: $80
    nop                                           ; $4b0e: $00
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    rlca                                          ; $4b14: $07

jr_03e_4b15:
    rlca                                          ; $4b15: $07
    jr jr_03e_4b37                                ; $4b16: $18 $1f

    jr nz, jr_03e_4b59                            ; $4b18: $20 $3f

    ld [hl], $3f                                  ; $4b1a: $36 $3f
    halt                                          ; $4b1c: $76
    ld c, c                                       ; $4b1d: $49
    halt                                          ; $4b1e: $76
    ld e, l                                       ; $4b1f: $5d
    sub b                                         ; $4b20: $90
    rst $38                                       ; $4b21: $ff
    xor b                                         ; $4b22: $a8
    rst $38                                       ; $4b23: $ff
    sub b                                         ; $4b24: $90
    rst $38                                       ; $4b25: $ff
    add c                                         ; $4b26: $81
    rst $38                                       ; $4b27: $ff
    and $ff                                       ; $4b28: $e6 $ff
    sbc b                                         ; $4b2a: $98
    rst $38                                       ; $4b2b: $ff
    ld b, c                                       ; $4b2c: $41
    ld a, a                                       ; $4b2d: $7f
    ld a, $3e                                     ; $4b2e: $3e $3e
    jr @+$1a                                      ; $4b30: $18 $18

Jump_03e_4b32:
    inc e                                         ; $4b32: $1c
    inc e                                         ; $4b33: $1c
    db $fc                                        ; $4b34: $fc
    db $ec                                        ; $4b35: $ec
    ld [hl], b                                    ; $4b36: $70

jr_03e_4b37:
    ldh a, [$30]                                  ; $4b37: $f0 $30
    ldh a, [rNR10]                                ; $4b39: $f0 $10
    ldh a, [$08]                                  ; $4b3b: $f0 $08
    ld hl, sp+$08                                 ; $4b3d: $f8 $08
    ld hl, sp+$08                                 ; $4b3f: $f8 $08
    ld hl, sp+$38                                 ; $4b41: $f8 $38
    ld hl, sp+$48                                 ; $4b43: $f8 $48
    ld hl, sp+$28                                 ; $4b45: $f8 $28
    ld hl, sp+$08                                 ; $4b47: $f8 $08
    ld hl, sp+$70                                 ; $4b49: $f8 $70
    ldh a, [$80]                                  ; $4b4b: $f0 $80
    add b                                         ; $4b4d: $80
    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    rlca                                          ; $4b50: $07
    rlca                                          ; $4b51: $07
    jr jr_03e_4b73                                ; $4b52: $18 $1f

    jr nz, @+$41                                  ; $4b54: $20 $3f

    jr nz, jr_03e_4b97                            ; $4b56: $20 $3f

    ld [hl], b                                    ; $4b58: $70

jr_03e_4b59:
    ld a, a                                       ; $4b59: $7f
    cp a                                          ; $4b5a: $bf
    rst $28                                       ; $4b5b: $ef
    cp a                                          ; $4b5c: $bf
    ldh a, [$8f]                                  ; $4b5d: $f0 $8f
    rst $38                                       ; $4b5f: $ff
    ld b, b                                       ; $4b60: $40
    ld a, a                                       ; $4b61: $7f
    ccf                                           ; $4b62: $3f
    ccf                                           ; $4b63: $3f
    ccf                                           ; $4b64: $3f
    jr nc, jr_03e_4b86                            ; $4b65: $30 $1f

    inc d                                         ; $4b67: $14
    rra                                           ; $4b68: $1f
    db $10                                        ; $4b69: $10
    rrca                                          ; $4b6a: $0f
    dec bc                                        ; $4b6b: $0b
    rlca                                          ; $4b6c: $07
    inc b                                         ; $4b6d: $04
    inc bc                                        ; $4b6e: $03
    inc bc                                        ; $4b6f: $03
    ldh [$e0], a                                  ; $4b70: $e0 $e0
    db $10                                        ; $4b72: $10

jr_03e_4b73:
    ldh a, [$08]                                  ; $4b73: $f0 $08
    ld hl, sp+$1e                                 ; $4b75: $f8 $1e
    cp $f9                                        ; $4b77: $fe $f9
    rst $28                                       ; $4b79: $ef
    pop af                                        ; $4b7a: $f1
    rra                                           ; $4b7b: $1f
    ld [c], a                                     ; $4b7c: $e2
    cp $1c                                        ; $4b7d: $fe $1c
    db $fc                                        ; $4b7f: $fc
    db $fc                                        ; $4b80: $fc
    db $f4                                        ; $4b81: $f4
    cp h                                          ; $4b82: $bc
    call nc, $847c                                ; $4b83: $d4 $7c $84

jr_03e_4b86:
    ld hl, sp+$18                                 ; $4b86: $f8 $18
    ldh a, [rNR10]                                ; $4b88: $f0 $10
    ldh [rNR41], a                                ; $4b8a: $e0 $20
    ret nz                                        ; $4b8c: $c0

    ld b, b                                       ; $4b8d: $40
    add b                                         ; $4b8e: $80
    add b                                         ; $4b8f: $80
    rlca                                          ; $4b90: $07
    rlca                                          ; $4b91: $07
    ld c, $0b                                     ; $4b92: $0e $0b
    ld a, $3f                                     ; $4b94: $3e $3f
    ld b, e                                       ; $4b96: $43

jr_03e_4b97:
    ld a, a                                       ; $4b97: $7f
    ld a, h                                       ; $4b98: $7c
    ld a, a                                       ; $4b99: $7f
    ccf                                           ; $4b9a: $3f
    inc hl                                        ; $4b9b: $23
    ccf                                           ; $4b9c: $3f
    dec [hl]                                      ; $4b9d: $35
    ld a, a                                       ; $4b9e: $7f
    ld [hl], h                                    ; $4b9f: $74
    rst $38                                       ; $4ba0: $ff
    add b                                         ; $4ba1: $80
    rst $38                                       ; $4ba2: $ff
    add a                                         ; $4ba3: $87
    ld a, a                                       ; $4ba4: $7f
    ld a, [hl]                                    ; $4ba5: $7e
    ld a, a                                       ; $4ba6: $7f
    ld a, h                                       ; $4ba7: $7c
    ccf                                           ; $4ba8: $3f
    jr nz, jr_03e_4bca                            ; $4ba9: $20 $1f

    add hl, de                                    ; $4bab: $19
    ld b, $06                                     ; $4bac: $06 $06
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    add b                                         ; $4bb0: $80
    add b                                         ; $4bb1: $80
    ld h, b                                       ; $4bb2: $60
    ldh [$90], a                                  ; $4bb3: $e0 $90
    ldh a, [$88]                                  ; $4bb5: $f0 $88
    ld hl, sp+$44                                 ; $4bb7: $f8 $44
    db $fc                                        ; $4bb9: $fc
    call nz, $f4fc                                ; $4bba: $c4 $fc $f4
    inc a                                         ; $4bbd: $3c
    ld hl, sp+$78                                 ; $4bbe: $f8 $78
    db $fc                                        ; $4bc0: $fc
    db $e4                                        ; $4bc1: $e4
    db $fc                                        ; $4bc2: $fc
    ld d, h                                       ; $4bc3: $54
    db $fc                                        ; $4bc4: $fc
    inc b                                         ; $4bc5: $04
    ld hl, sp+$08                                 ; $4bc6: $f8 $08
    ld hl, sp+$78                                 ; $4bc8: $f8 $78

jr_03e_4bca:
    ldh a, [$f0]                                  ; $4bca: $f0 $f0
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    rrca                                          ; $4bd0: $0f
    rrca                                          ; $4bd1: $0f
    inc e                                         ; $4bd2: $1c
    rla                                           ; $4bd3: $17
    ld a, $3f                                     ; $4bd4: $3e $3f
    ld b, c                                       ; $4bd6: $41
    ld a, a                                       ; $4bd7: $7f
    ld a, a                                       ; $4bd8: $7f
    ld a, a                                       ; $4bd9: $7f
    ccf                                           ; $4bda: $3f
    ld [hl+], a                                   ; $4bdb: $22
    ccf                                           ; $4bdc: $3f
    inc [hl]                                      ; $4bdd: $34
    ccf                                           ; $4bde: $3f
    inc [hl]                                      ; $4bdf: $34
    ld a, a                                       ; $4be0: $7f
    ld b, b                                       ; $4be1: $40
    rst $38                                       ; $4be2: $ff
    add d                                         ; $4be3: $82
    rst $38                                       ; $4be4: $ff
    adc [hl]                                      ; $4be5: $8e
    ld a, a                                       ; $4be6: $7f
    ld a, [hl]                                    ; $4be7: $7e
    ccf                                           ; $4be8: $3f
    inc a                                         ; $4be9: $3c
    rra                                           ; $4bea: $1f
    db $10                                        ; $4beb: $10
    rrca                                          ; $4bec: $0f
    ld [$0707], sp                                ; $4bed: $08 $07 $07
    add b                                         ; $4bf0: $80
    add b                                         ; $4bf1: $80
    ld h, b                                       ; $4bf2: $60
    ldh [$90], a                                  ; $4bf3: $e0 $90
    ldh a, [$08]                                  ; $4bf5: $f0 $08
    ld hl, sp-$78                                 ; $4bf7: $f8 $88
    ld hl, sp-$18                                 ; $4bf9: $f8 $e8
    ld a, b                                       ; $4bfb: $78
    ld hl, sp+$78                                 ; $4bfc: $f8 $78
    ld hl, sp-$38                                 ; $4bfe: $f8 $c8
    ld hl, sp-$58                                 ; $4c00: $f8 $a8
    ld hl, sp+$08                                 ; $4c02: $f8 $08
    ldh a, [rNR10]                                ; $4c04: $f0 $10
    ldh [$60], a                                  ; $4c06: $e0 $60
    ret nz                                        ; $4c08: $c0

    ld b, b                                       ; $4c09: $40
    ldh [$e0], a                                  ; $4c0a: $e0 $e0
    ret nz                                        ; $4c0c: $c0

    ret nz                                        ; $4c0d: $c0

    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    rra                                           ; $4c10: $1f
    rra                                           ; $4c11: $1f
    inc h                                         ; $4c12: $24
    dec sp                                        ; $4c13: $3b
    ld c, [hl]                                    ; $4c14: $4e
    ld [hl], c                                    ; $4c15: $71
    ld e, a                                       ; $4c16: $5f
    ld a, a                                       ; $4c17: $7f
    ld h, b                                       ; $4c18: $60
    ld a, a                                       ; $4c19: $7f
    sbc a                                         ; $4c1a: $9f
    rst $38                                       ; $4c1b: $ff
    rst $38                                       ; $4c1c: $ff
    di                                            ; $4c1d: $f3
    ld a, a                                       ; $4c1e: $7f
    ld e, [hl]                                    ; $4c1f: $5e
    ld [hl], e                                    ; $4c20: $73
    ld e, [hl]                                    ; $4c21: $5e
    jp hl                                         ; $4c22: $e9


    rst $30                                       ; $4c23: $f7
    ld [hl], e                                    ; $4c24: $73
    ld a, a                                       ; $4c25: $7f
    rst $38                                       ; $4c26: $ff
    cp a                                          ; $4c27: $bf
    rst $38                                       ; $4c28: $ff
    or e                                          ; $4c29: $b3
    ld a, a                                       ; $4c2a: $7f
    ld b, b                                       ; $4c2b: $40
    ccf                                           ; $4c2c: $3f
    inc h                                         ; $4c2d: $24

jr_03e_4c2e:
    ccf                                           ; $4c2e: $3f
    ccf                                           ; $4c2f: $3f
    add b                                         ; $4c30: $80
    add b                                         ; $4c31: $80
    ld b, b                                       ; $4c32: $40
    ret nz                                        ; $4c33: $c0

    jr c, jr_03e_4c2e                             ; $4c34: $38 $f8

    inc d                                         ; $4c36: $14
    db $fc                                        ; $4c37: $fc
    rst $00                                       ; $4c38: $c7
    rst $38                                       ; $4c39: $ff
    rst $20                                       ; $4c3a: $e7
    db $fd                                        ; $4c3b: $fd
    rst $38                                       ; $4c3c: $ff
    cp c                                          ; $4c3d: $b9
    rst $28                                       ; $4c3e: $ef
    cp l                                          ; $4c3f: $bd
    rst $38                                       ; $4c40: $ff
    ld de, $7afe                                  ; $4c41: $11 $fe $7a
    cp $f2                                        ; $4c44: $fe $f2
    db $fc                                        ; $4c46: $fc
    call z, $88f8                                 ; $4c47: $cc $f8 $88
    ldh a, [rNR10]                                ; $4c4a: $f0 $10
    ldh [$60], a                                  ; $4c4c: $e0 $60
    add b                                         ; $4c4e: $80
    add b                                         ; $4c4f: $80
    rlca                                          ; $4c50: $07
    rlca                                          ; $4c51: $07
    jr jr_03e_4c73                                ; $4c52: $18 $1f

    jr nz, @+$41                                  ; $4c54: $20 $3f

    ld c, b                                       ; $4c56: $48
    ld a, a                                       ; $4c57: $7f
    sub e                                         ; $4c58: $93
    rst $38                                       ; $4c59: $ff
    and a                                         ; $4c5a: $a7
    db $fc                                        ; $4c5b: $fc
    xor a                                         ; $4c5c: $af
    ld hl, sp-$41                                 ; $4c5d: $f8 $bf
    di                                            ; $4c5f: $f3
    cp a                                          ; $4c60: $bf
    ld a, [c]                                     ; $4c61: $f2
    ld l, l                                       ; $4c62: $6d
    ld d, d                                       ; $4c63: $52
    ld a, a                                       ; $4c64: $7f
    ld c, b                                       ; $4c65: $48
    ld a, a                                       ; $4c66: $7f
    ld b, b                                       ; $4c67: $40
    ccf                                           ; $4c68: $3f
    inc h                                         ; $4c69: $24
    rra                                           ; $4c6a: $1f
    ld de, $0e0e                                  ; $4c6b: $11 $0e $0e
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    sbc h                                         ; $4c70: $9c
    sbc h                                         ; $4c71: $9c
    ld h, d                                       ; $4c72: $62

jr_03e_4c73:
    cp $12                                        ; $4c73: $fe $12
    cp $91                                        ; $4c75: $fe $91
    rst $38                                       ; $4c77: $ff
    add hl, bc                                    ; $4c78: $09
    rst $38                                       ; $4c79: $ff
    adc c                                         ; $4c7a: $89
    rst $38                                       ; $4c7b: $ff
    ret                                           ; $4c7c: $c9


    ld a, a                                       ; $4c7d: $7f
    reti                                          ; $4c7e: $d9


    ld a, a                                       ; $4c7f: $7f
    db $fd                                        ; $4c80: $fd
    and a                                         ; $4c81: $a7
    db $dd                                        ; $4c82: $dd
    scf                                           ; $4c83: $37
    cp $06                                        ; $4c84: $fe $06
    ld a, [$cc3e]                                 ; $4c86: $fa $3e $cc
    ld c, h                                       ; $4c89: $4c
    adc h                                         ; $4c8a: $8c
    adc h                                         ; $4c8b: $8c
    ld [$0008], sp                                ; $4c8c: $08 $08 $00
    nop                                           ; $4c8f: $00
    rrca                                          ; $4c90: $0f
    rrca                                          ; $4c91: $0f
    db $10                                        ; $4c92: $10
    rra                                           ; $4c93: $1f
    jr nz, jr_03e_4cd5                            ; $4c94: $20 $3f

    ld d, e                                       ; $4c96: $53
    ld a, a                                       ; $4c97: $7f
    ld a, a                                       ; $4c98: $7f
    ld l, h                                       ; $4c99: $6c
    ld a, a                                       ; $4c9a: $7f
    ld h, b                                       ; $4c9b: $60
    ld a, a                                       ; $4c9c: $7f
    ld e, c                                       ; $4c9d: $59
    ld a, a                                       ; $4c9e: $7f
    ld l, c                                       ; $4c9f: $69
    halt                                          ; $4ca0: $76
    ld c, c                                       ; $4ca1: $49
    ld a, a                                       ; $4ca2: $7f
    ld b, b                                       ; $4ca3: $40

jr_03e_4ca4:
    ld a, a                                       ; $4ca4: $7f
    ld b, h                                       ; $4ca5: $44
    ccf                                           ; $4ca6: $3f
    jr nz, jr_03e_4ce8                            ; $4ca7: $20 $3f

    ld h, $1f                                     ; $4ca9: $26 $1f
    db $10                                        ; $4cab: $10
    rrca                                          ; $4cac: $0f
    ld [$0707], sp                                ; $4cad: $08 $07 $07
    ret nz                                        ; $4cb0: $c0

    ret nz                                        ; $4cb1: $c0

    jr nc, jr_03e_4ca4                            ; $4cb2: $30 $f0

    ld [$c4f8], sp                                ; $4cb4: $08 $f8 $c4
    db $fc                                        ; $4cb7: $fc
    db $e4                                        ; $4cb8: $e4
    inc a                                         ; $4cb9: $3c
    db $e4                                        ; $4cba: $e4
    inc a                                         ; $4cbb: $3c
    db $f4                                        ; $4cbc: $f4
    sbc h                                         ; $4cbd: $9c
    db $fc                                        ; $4cbe: $fc
    ld e, h                                       ; $4cbf: $5c
    cp $12                                        ; $4cc0: $fe $12
    cp $0a                                        ; $4cc2: $fe $0a
    cp $02                                        ; $4cc4: $fe $02
    db $fc                                        ; $4cc6: $fc
    inc e                                         ; $4cc7: $1c
    ldh a, [rNR10]                                ; $4cc8: $f0 $10
    ldh [rNR41], a                                ; $4cca: $e0 $20
    ret nz                                        ; $4ccc: $c0

    ld b, b                                       ; $4ccd: $40
    add b                                         ; $4cce: $80
    add b                                         ; $4ccf: $80
    rrca                                          ; $4cd0: $0f
    rrca                                          ; $4cd1: $0f
    jr nc, @+$41                                  ; $4cd2: $30 $3f

    ld b, b                                       ; $4cd4: $40

jr_03e_4cd5:
    ld a, a                                       ; $4cd5: $7f
    add b                                         ; $4cd6: $80
    rst $38                                       ; $4cd7: $ff
    add a                                         ; $4cd8: $87
    rst $38                                       ; $4cd9: $ff
    xor a                                         ; $4cda: $af
    ld hl, sp+$7f                                 ; $4cdb: $f8 $7f
    ld [hl], e                                    ; $4cdd: $73
    ld a, a                                       ; $4cde: $7f
    ld d, d                                       ; $4cdf: $52
    ld l, l                                       ; $4ce0: $6d
    ld d, d                                       ; $4ce1: $52
    rst $38                                       ; $4ce2: $ff
    adc b                                         ; $4ce3: $88
    rst $38                                       ; $4ce4: $ff
    add b                                         ; $4ce5: $80
    ld a, l                                       ; $4ce6: $7d
    ld b, [hl]                                    ; $4ce7: $46

jr_03e_4ce8:
    ccf                                           ; $4ce8: $3f
    jr nz, jr_03e_4d0a                            ; $4ce9: $20 $1f

    add hl, de                                    ; $4ceb: $19
    ld b, $06                                     ; $4cec: $06 $06
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    or b                                          ; $4cf0: $b0
    or b                                          ; $4cf1: $b0
    ld a, h                                       ; $4cf2: $7c
    db $ec                                        ; $4cf3: $ec
    sub d                                         ; $4cf4: $92
    cp $92                                        ; $4cf5: $fe $92
    cp $c9                                        ; $4cf7: $fe $c9
    rst $38                                       ; $4cf9: $ff
    ret                                           ; $4cfa: $c9


    ld a, a                                       ; $4cfb: $7f
    ld sp, hl                                     ; $4cfc: $f9
    ccf                                           ; $4cfd: $3f
    db $fd                                        ; $4cfe: $fd
    and a                                         ; $4cff: $a7
    db $dd                                        ; $4d00: $dd
    or a                                          ; $4d01: $b7
    db $fd                                        ; $4d02: $fd
    rlca                                          ; $4d03: $07
    ld sp, hl                                     ; $4d04: $f9
    rra                                           ; $4d05: $1f
    ld a, [$ca3e]                                 ; $4d06: $fa $3e $ca
    ld c, [hl]                                    ; $4d09: $4e

jr_03e_4d0a:
    add [hl]                                      ; $4d0a: $86
    add [hl]                                      ; $4d0b: $86
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    rrca                                          ; $4d10: $0f
    rrca                                          ; $4d11: $0f
    jr nc, jr_03e_4d53                            ; $4d12: $30 $3f

    ld b, b                                       ; $4d14: $40
    ld a, a                                       ; $4d15: $7f
    add b                                         ; $4d16: $80
    rst $38                                       ; $4d17: $ff
    add a                                         ; $4d18: $87
    rst $38                                       ; $4d19: $ff
    xor a                                         ; $4d1a: $af
    ld hl, sp+$7f                                 ; $4d1b: $f8 $7f
    ld [hl], e                                    ; $4d1d: $73
    ld a, a                                       ; $4d1e: $7f
    ld d, d                                       ; $4d1f: $52
    ld l, l                                       ; $4d20: $6d
    ld d, d                                       ; $4d21: $52
    rst $38                                       ; $4d22: $ff
    adc b                                         ; $4d23: $88
    rst $38                                       ; $4d24: $ff
    add b                                         ; $4d25: $80
    ld a, l                                       ; $4d26: $7d
    ld b, [hl]                                    ; $4d27: $46
    ccf                                           ; $4d28: $3f
    jr nz, jr_03e_4d4a                            ; $4d29: $20 $1f

    add hl, de                                    ; $4d2b: $19
    ld b, $06                                     ; $4d2c: $06 $06
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    or b                                          ; $4d30: $b0
    or b                                          ; $4d31: $b0
    ld a, h                                       ; $4d32: $7c
    db $ec                                        ; $4d33: $ec
    sub d                                         ; $4d34: $92
    cp $92                                        ; $4d35: $fe $92
    cp $c9                                        ; $4d37: $fe $c9
    rst $38                                       ; $4d39: $ff
    ret                                           ; $4d3a: $c9


    ld a, a                                       ; $4d3b: $7f
    ld sp, hl                                     ; $4d3c: $f9
    ccf                                           ; $4d3d: $3f
    db $fd                                        ; $4d3e: $fd
    and a                                         ; $4d3f: $a7
    db $dd                                        ; $4d40: $dd
    or a                                          ; $4d41: $b7
    db $fd                                        ; $4d42: $fd
    rlca                                          ; $4d43: $07
    ld sp, hl                                     ; $4d44: $f9
    rra                                           ; $4d45: $1f
    ld a, [$ca3e]                                 ; $4d46: $fa $3e $ca
    ld c, [hl]                                    ; $4d49: $4e

jr_03e_4d4a:
    add [hl]                                      ; $4d4a: $86
    add [hl]                                      ; $4d4b: $86
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    rrca                                          ; $4d50: $0f
    rrca                                          ; $4d51: $0f
    db $10                                        ; $4d52: $10

jr_03e_4d53:
    rra                                           ; $4d53: $1f
    jr nz, jr_03e_4d95                            ; $4d54: $20 $3f

    ld d, e                                       ; $4d56: $53
    ld a, a                                       ; $4d57: $7f
    ld a, a                                       ; $4d58: $7f
    ld l, h                                       ; $4d59: $6c
    ld a, a                                       ; $4d5a: $7f
    ld h, b                                       ; $4d5b: $60
    ld a, a                                       ; $4d5c: $7f
    ld e, c                                       ; $4d5d: $59
    ld a, a                                       ; $4d5e: $7f
    ld l, c                                       ; $4d5f: $69
    halt                                          ; $4d60: $76
    ld c, c                                       ; $4d61: $49
    ld a, a                                       ; $4d62: $7f
    ld b, b                                       ; $4d63: $40

jr_03e_4d64:
    ld a, a                                       ; $4d64: $7f
    ld b, h                                       ; $4d65: $44
    ccf                                           ; $4d66: $3f
    jr nz, jr_03e_4da8                            ; $4d67: $20 $3f

    ld h, $1f                                     ; $4d69: $26 $1f
    db $10                                        ; $4d6b: $10
    rrca                                          ; $4d6c: $0f
    ld [$0707], sp                                ; $4d6d: $08 $07 $07
    ret nz                                        ; $4d70: $c0

    ret nz                                        ; $4d71: $c0

    jr nc, jr_03e_4d64                            ; $4d72: $30 $f0

    ld [$c4f8], sp                                ; $4d74: $08 $f8 $c4
    db $fc                                        ; $4d77: $fc
    db $e4                                        ; $4d78: $e4
    inc a                                         ; $4d79: $3c
    db $e4                                        ; $4d7a: $e4
    inc a                                         ; $4d7b: $3c
    db $f4                                        ; $4d7c: $f4
    sbc h                                         ; $4d7d: $9c
    db $fc                                        ; $4d7e: $fc
    ld e, h                                       ; $4d7f: $5c
    cp $12                                        ; $4d80: $fe $12
    cp $0a                                        ; $4d82: $fe $0a
    cp $02                                        ; $4d84: $fe $02
    db $fc                                        ; $4d86: $fc
    inc e                                         ; $4d87: $1c
    ldh a, [rNR10]                                ; $4d88: $f0 $10
    ldh [rNR41], a                                ; $4d8a: $e0 $20
    ret nz                                        ; $4d8c: $c0

    ld b, b                                       ; $4d8d: $40
    add b                                         ; $4d8e: $80
    add b                                         ; $4d8f: $80
    ccf                                           ; $4d90: $3f
    ld c, d                                       ; $4d91: $4a
    rst $38                                       ; $4d92: $ff
    ld l, e                                       ; $4d93: $6b
    rst $18                                       ; $4d94: $df

jr_03e_4d95:
    jr jr_03e_4d97                                ; $4d95: $18 $00

jr_03e_4d97:
    nop                                           ; $4d97: $00
    sbc [hl]                                      ; $4d98: $9e
    ld [hl+], a                                   ; $4d99: $22
    rst $38                                       ; $4d9a: $ff
    ld l, e                                       ; $4d9b: $6b
    ld e, a                                       ; $4d9c: $5f
    ld bc, $0000                                  ; $4d9d: $01 $00 $00
    sbc [hl]                                      ; $4da0: $9e
    ld [hl+], a                                   ; $4da1: $22
    rst $38                                       ; $4da2: $ff
    ld l, e                                       ; $4da3: $6b
    ld e, a                                       ; $4da4: $5f
    ld bc, $0000                                  ; $4da5: $01 $00 $00

jr_03e_4da8:
    ld a, a                                       ; $4da8: $7f
    ld [hl-], a                                   ; $4da9: $32
    rst $38                                       ; $4daa: $ff
    ld l, e                                       ; $4dab: $6b
    rra                                           ; $4dac: $1f
    ld [bc], a                                    ; $4dad: $02
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    ld a, a                                       ; $4db0: $7f
    ld [hl-], a                                   ; $4db1: $32
    rst $38                                       ; $4db2: $ff
    ld l, e                                       ; $4db3: $6b
    rra                                           ; $4db4: $1f
    ld [bc], a                                    ; $4db5: $02
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    ccf                                           ; $4db8: $3f
    ld c, d                                       ; $4db9: $4a
    rst $38                                       ; $4dba: $ff
    ld l, e                                       ; $4dbb: $6b
    rst $18                                       ; $4dbc: $df
    jr jr_03e_4dbf                                ; $4dbd: $18 $00

jr_03e_4dbf:
    nop                                           ; $4dbf: $00
    sbc [hl]                                      ; $4dc0: $9e
    ld [hl+], a                                   ; $4dc1: $22
    rst $38                                       ; $4dc2: $ff
    ld l, e                                       ; $4dc3: $6b
    ld e, a                                       ; $4dc4: $5f
    ld bc, $0000                                  ; $4dc5: $01 $00 $00
    ld e, $5e                                     ; $4dc8: $1e $5e
    rst $38                                       ; $4dca: $ff
    ld l, e                                       ; $4dcb: $6b
    ret c                                         ; $4dcc: $d8

    ld a, h                                       ; $4dcd: $7c
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    ccf                                           ; $4dd0: $3f
    ld c, d                                       ; $4dd1: $4a
    rst $38                                       ; $4dd2: $ff
    ld l, e                                       ; $4dd3: $6b
    rst $18                                       ; $4dd4: $df
    jr jr_03e_4dd7                                ; $4dd5: $18 $00

jr_03e_4dd7:
    nop                                           ; $4dd7: $00
    ld a, b                                       ; $4dd8: $78
    ld a, [hl-]                                   ; $4dd9: $3a
    rst $18                                       ; $4dda: $df
    ld l, e                                       ; $4ddb: $6b
    add b                                         ; $4ddc: $80
    ld [de], a                                    ; $4ddd: $12
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    rst $38                                       ; $4de0: $ff
    ld bc, $6bdf                                  ; $4de1: $01 $df $6b
    ld e, a                                       ; $4de4: $5f
    inc bc                                        ; $4de5: $03
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    ld a, b                                       ; $4de8: $78
    ld a, [hl-]                                   ; $4de9: $3a
    rst $18                                       ; $4dea: $df
    ld l, e                                       ; $4deb: $6b
    add b                                         ; $4dec: $80
    ld [de], a                                    ; $4ded: $12
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
    ld a, a                                       ; $4df0: $7f
    ld [hl-], a                                   ; $4df1: $32
    rst $38                                       ; $4df2: $ff
    ld l, e                                       ; $4df3: $6b
    rra                                           ; $4df4: $1f
    ld [bc], a                                    ; $4df5: $02
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    sbc [hl]                                      ; $4df8: $9e
    ld [hl+], a                                   ; $4df9: $22
    rst $38                                       ; $4dfa: $ff
    ld l, e                                       ; $4dfb: $6b
    ld e, a                                       ; $4dfc: $5f
    ld bc, $0000                                  ; $4dfd: $01 $00 $00
    sbc [hl]                                      ; $4e00: $9e
    ld [hl+], a                                   ; $4e01: $22
    rst $38                                       ; $4e02: $ff
    ld l, e                                       ; $4e03: $6b
    ld e, a                                       ; $4e04: $5f
    ld bc, $0000                                  ; $4e05: $01 $00 $00
    ld a, a                                       ; $4e08: $7f
    ld [hl-], a                                   ; $4e09: $32
    rst $38                                       ; $4e0a: $ff
    ld l, e                                       ; $4e0b: $6b
    rra                                           ; $4e0c: $1f
    ld [bc], a                                    ; $4e0d: $02
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    rra                                           ; $4e10: $1f
    ld c, d                                       ; $4e11: $4a
    rst $38                                       ; $4e12: $ff
    ld l, e                                       ; $4e13: $6b
    sbc a                                         ; $4e14: $9f
    ld d, c                                       ; $4e15: $51
    nop                                           ; $4e16: $00
    nop                                           ; $4e17: $00
    sbc [hl]                                      ; $4e18: $9e
    ld [hl+], a                                   ; $4e19: $22
    rst $38                                       ; $4e1a: $ff
    ld l, e                                       ; $4e1b: $6b
    sbc a                                         ; $4e1c: $9f
    jr nz, jr_03e_4e1f                            ; $4e1d: $20 $00

jr_03e_4e1f:
    nop                                           ; $4e1f: $00
    sbc [hl]                                      ; $4e20: $9e
    ld [hl+], a                                   ; $4e21: $22
    rst $38                                       ; $4e22: $ff
    ld l, e                                       ; $4e23: $6b
    sbc a                                         ; $4e24: $9f
    jr nz, jr_03e_4e27                            ; $4e25: $20 $00

jr_03e_4e27:
    nop                                           ; $4e27: $00
    ld a, a                                       ; $4e28: $7f
    ld [hl-], a                                   ; $4e29: $32
    rst $38                                       ; $4e2a: $ff
    ld l, e                                       ; $4e2b: $6b
    nop                                           ; $4e2c: $00
    ld a, d                                       ; $4e2d: $7a
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    ld a, a                                       ; $4e30: $7f
    ld [hl-], a                                   ; $4e31: $32
    rst $38                                       ; $4e32: $ff
    ld l, e                                       ; $4e33: $6b
    nop                                           ; $4e34: $00
    ld a, d                                       ; $4e35: $7a
    nop                                           ; $4e36: $00
    nop                                           ; $4e37: $00
    rra                                           ; $4e38: $1f
    ld c, d                                       ; $4e39: $4a
    rst $38                                       ; $4e3a: $ff
    ld l, e                                       ; $4e3b: $6b
    sbc a                                         ; $4e3c: $9f
    ld d, c                                       ; $4e3d: $51
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    sbc [hl]                                      ; $4e40: $9e
    ld [hl+], a                                   ; $4e41: $22
    rst $38                                       ; $4e42: $ff
    ld l, e                                       ; $4e43: $6b
    sbc a                                         ; $4e44: $9f
    jr nz, jr_03e_4e47                            ; $4e45: $20 $00

jr_03e_4e47:
    nop                                           ; $4e47: $00
    ld e, $5e                                     ; $4e48: $1e $5e
    rst $38                                       ; $4e4a: $ff
    ld l, e                                       ; $4e4b: $6b
    sbc a                                         ; $4e4c: $9f
    ld bc, $0000                                  ; $4e4d: $01 $00 $00
    rra                                           ; $4e50: $1f
    ld c, d                                       ; $4e51: $4a
    rst $38                                       ; $4e52: $ff
    ld l, e                                       ; $4e53: $6b
    sbc a                                         ; $4e54: $9f
    ld d, c                                       ; $4e55: $51
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    ld a, b                                       ; $4e58: $78
    ld a, [hl-]                                   ; $4e59: $3a
    rst $38                                       ; $4e5a: $ff
    ld l, e                                       ; $4e5b: $6b
    inc b                                         ; $4e5c: $04
    ld a, a                                       ; $4e5d: $7f
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    rst $38                                       ; $4e60: $ff
    ld bc, $6bff                                  ; $4e61: $01 $ff $6b
    nop                                           ; $4e64: $00
    ld a, d                                       ; $4e65: $7a
    nop                                           ; $4e66: $00
    nop                                           ; $4e67: $00
    ld a, b                                       ; $4e68: $78
    ld a, [hl-]                                   ; $4e69: $3a
    rst $38                                       ; $4e6a: $ff
    ld l, e                                       ; $4e6b: $6b
    inc b                                         ; $4e6c: $04
    ld a, a                                       ; $4e6d: $7f
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    ld a, a                                       ; $4e70: $7f
    ld [hl-], a                                   ; $4e71: $32
    rst $38                                       ; $4e72: $ff
    ld l, e                                       ; $4e73: $6b
    nop                                           ; $4e74: $00
    ld a, d                                       ; $4e75: $7a
    nop                                           ; $4e76: $00
    nop                                           ; $4e77: $00
    sbc [hl]                                      ; $4e78: $9e
    ld [hl+], a                                   ; $4e79: $22
    rst $38                                       ; $4e7a: $ff
    ld l, e                                       ; $4e7b: $6b
    sbc a                                         ; $4e7c: $9f
    jr nz, jr_03e_4e7f                            ; $4e7d: $20 $00

jr_03e_4e7f:
    nop                                           ; $4e7f: $00

jr_03e_4e80:
    sbc [hl]                                      ; $4e80: $9e
    ld [hl+], a                                   ; $4e81: $22
    rst $38                                       ; $4e82: $ff
    ld l, e                                       ; $4e83: $6b
    sbc a                                         ; $4e84: $9f
    jr nz, jr_03e_4e87                            ; $4e85: $20 $00

jr_03e_4e87:
    nop                                           ; $4e87: $00
    ld a, a                                       ; $4e88: $7f
    ld [hl-], a                                   ; $4e89: $32
    rst $38                                       ; $4e8a: $ff
    ld l, e                                       ; $4e8b: $6b
    nop                                           ; $4e8c: $00
    ld a, d                                       ; $4e8d: $7a
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    rst $38                                       ; $4e90: $ff
    rst $38                                       ; $4e91: $ff
    nop                                           ; $4e92: $00
    rst $38                                       ; $4e93: $ff
    nop                                           ; $4e94: $00
    call z, $f733                                 ; $4e95: $cc $33 $f7
    ld [$f0ff], sp                                ; $4e98: $08 $ff $f0
    rrca                                          ; $4e9b: $0f
    rst $18                                       ; $4e9c: $df
    jr nz, jr_03e_4e80                            ; $4e9d: $20 $e1

    ld e, $80                                     ; $4e9f: $1e $80
    ld a, a                                       ; $4ea1: $7f
    cp $f0                                        ; $4ea2: $fe $f0

jr_03e_4ea4:
    pop hl                                        ; $4ea4: $e1
    ld [hl], b                                    ; $4ea5: $70
    adc a                                         ; $4ea6: $8f
    rst $08                                       ; $4ea7: $cf
    jr nc, jr_03e_4f22                            ; $4ea8: $30 $78

    add a                                         ; $4eaa: $87
    adc a                                         ; $4eab: $8f
    rst $18                                       ; $4eac: $df
    ld [hl], b                                    ; $4ead: $70

jr_03e_4eae:
    di                                            ; $4eae: $f3
    inc c                                         ; $4eaf: $0c
    nop                                           ; $4eb0: $00
    rst $38                                       ; $4eb1: $ff
    ldh [$e1], a                                  ; $4eb2: $e0 $e1
    ld a, a                                       ; $4eb4: $7f
    add b                                         ; $4eb5: $80
    rst $38                                       ; $4eb6: $ff
    add b                                         ; $4eb7: $80
    ld a, a                                       ; $4eb8: $7f
    ld a, a                                       ; $4eb9: $7f
    add b                                         ; $4eba: $80
    ret nz                                        ; $4ebb: $c0

    ccf                                           ; $4ebc: $3f
    ccf                                           ; $4ebd: $3f
    ret nz                                        ; $4ebe: $c0

    cp $f0                                        ; $4ebf: $fe $f0
    db $e3                                        ; $4ec1: $e3
    rra                                           ; $4ec2: $1f
    ldh [$f0], a                                  ; $4ec3: $e0 $f0
    rrca                                          ; $4ec5: $0f
    adc a                                         ; $4ec6: $8f
    ld [hl], b                                    ; $4ec7: $70
    ld [hl], b                                    ; $4ec8: $70
    or a                                          ; $4ec9: $b7
    adc a                                         ; $4eca: $8f
    rst $18                                       ; $4ecb: $df
    jr nz, jr_03e_4eae                            ; $4ecc: $20 $e0

    db $e3                                        ; $4ece: $e3
    rst $00                                       ; $4ecf: $c7
    jr c, jr_03e_4ea4                             ; $4ed0: $38 $d2

    pop hl                                        ; $4ed2: $e1
    ldh a, [$f7]                                  ; $4ed3: $f0 $f7
    rrca                                          ; $4ed5: $0f
    rra                                           ; $4ed6: $1f
    ldh [$d0], a                                  ; $4ed7: $e0 $d0
    db $e3                                        ; $4ed9: $e3
    adc a                                         ; $4eda: $8f
    ld [hl], b                                    ; $4edb: $70
    ld a, b                                       ; $4edc: $78
    add a                                         ; $4edd: $87
    cp a                                          ; $4ede: $bf
    add a                                         ; $4edf: $87
    ld a, b                                       ; $4ee0: $78
    ld hl, sp+$07                                 ; $4ee1: $f8 $07
    rlca                                          ; $4ee3: $07
    ld hl, sp-$40                                 ; $4ee4: $f8 $c0
    db $e3                                        ; $4ee6: $e3
    call z, Call_000_3337                         ; $4ee7: $cc $37 $33
    scf                                           ; $4eea: $37
    ret z                                         ; $4eeb: $c8

    ld [c], a                                     ; $4eec: $e2
    pop hl                                        ; $4eed: $e1
    pop hl                                        ; $4eee: $e1
    ld e, $b0                                     ; $4eef: $1e $b0
    db $e3                                        ; $4ef1: $e3
    and b                                         ; $4ef2: $a0
    rst $38                                       ; $4ef3: $ff
    cp $a0                                        ; $4ef4: $fe $a0
    rst $30                                       ; $4ef6: $f7
    cp $01                                        ; $4ef7: $fe $01
    db $fc                                        ; $4ef9: $fc
    inc bc                                        ; $4efa: $03
    adc h                                         ; $4efb: $8c
    ld [hl], e                                    ; $4efc: $73
    ld a, b                                       ; $4efd: $78
    ld a, a                                       ; $4efe: $7f
    add a                                         ; $4eff: $87
    add h                                         ; $4f00: $84
    ld a, e                                       ; $4f01: $7b
    ld hl, sp+$07                                 ; $4f02: $f8 $07
    inc b                                         ; $4f04: $04
    ei                                            ; $4f05: $fb
    ret nz                                        ; $4f06: $c0

    pop hl                                        ; $4f07: $e1
    rst $38                                       ; $4f08: $ff
    ld d, [hl]                                    ; $4f09: $56
    xor c                                         ; $4f0a: $a9
    add sp, $17                                   ; $4f0b: $e8 $17
    ld l, h                                       ; $4f0d: $6c
    sub e                                         ; $4f0e: $93
    or b                                          ; $4f0f: $b0
    ld c, a                                       ; $4f10: $4f
    rst $38                                       ; $4f11: $ff
    call c, Call_03e_6023                         ; $4f12: $dc $23 $60
    sbc a                                         ; $4f15: $9f
    sbc h                                         ; $4f16: $9c
    ld h, e                                       ; $4f17: $63
    cp $01                                        ; $4f18: $fe $01
    ei                                            ; $4f1a: $fb
    ld d, h                                       ; $4f1b: $54
    xor e                                         ; $4f1c: $ab
    ldh a, [$e9]                                  ; $4f1d: $f0 $e9
    rst $38                                       ; $4f1f: $ff
    cp $3e                                        ; $4f20: $fe $3e

jr_03e_4f22:
    nop                                           ; $4f22: $00
    call nz, Call_000_00ff                        ; $4f23: $c4 $ff $00
    ld hl, sp+$00                                 ; $4f26: $f8 $00
    inc c                                         ; $4f28: $0c
    nop                                           ; $4f29: $00
    db $f4                                        ; $4f2a: $f4
    nop                                           ; $4f2b: $00
    jr @-$43                                      ; $4f2c: $18 $bb

    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    adc a                                         ; $4f30: $8f
    ldh [$3c], a                                  ; $4f31: $e0 $3c
    nop                                           ; $4f33: $00
    rst $00                                       ; $4f34: $c7
    ldh a, [$e0]                                  ; $4f35: $f0 $e0
    rrca                                          ; $4f37: $0f
    ei                                            ; $4f38: $fb
    nop                                           ; $4f39: $00
    rst $30                                       ; $4f3a: $f7
    ldh a, [$e3]                                  ; $4f3b: $f0 $e3
    nop                                           ; $4f3d: $00
    db $fc                                        ; $4f3e: $fc
    inc bc                                        ; $4f3f: $03
    rst $00                                       ; $4f40: $c7
    jr c, @+$01                                   ; $4f41: $38 $ff

    ld sp, hl                                     ; $4f43: $f9
    ld b, $ce                                     ; $4f44: $06 $ce
    ld sp, $09f6                                  ; $4f46: $31 $f6 $09
    reti                                          ; $4f49: $d9


    ld h, $ff                                     ; $4f4a: $26 $ff
    rst $20                                       ; $4f4c: $e7
    jr @+$01                                      ; $4f4d: $18 $ff

    nop                                           ; $4f4f: $00

jr_03e_4f50:
    rst $18                                       ; $4f50: $df
    jr nz, @+$69                                  ; $4f51: $20 $67

    sbc b                                         ; $4f53: $98
    rst $38                                       ; $4f54: $ff
    cp b                                          ; $4f55: $b8
    ld b, a                                       ; $4f56: $47
    rst $08                                       ; $4f57: $cf
    jr nc, jr_03e_4f50                            ; $4f58: $30 $f6

    add hl, bc                                    ; $4f5a: $09
    add hl, sp                                    ; $4f5b: $39
    add $ff                                       ; $4f5c: $c6 $ff
    rst $08                                       ; $4f5e: $cf
    jr nc, @+$01                                  ; $4f5f: $30 $ff

    nop                                           ; $4f61: $00
    ldh a, [rIF]                                  ; $4f62: $f0 $0f
    rst $08                                       ; $4f64: $cf
    jr nc, @+$01                                  ; $4f65: $30 $ff

    ld sp, $fece                                  ; $4f67: $31 $ce $fe
    ld bc, $fc03                                  ; $4f6a: $01 $03 $fc
    db $fc                                        ; $4f6d: $fc
    inc bc                                        ; $4f6e: $03
    rst $38                                       ; $4f6f: $ff
    adc a                                         ; $4f70: $8f
    ld [hl], b                                    ; $4f71: $70
    rst $38                                       ; $4f72: $ff
    nop                                           ; $4f73: $00
    sbc a                                         ; $4f74: $9f
    ld h, b                                       ; $4f75: $60
    halt                                          ; $4f76: $76
    adc c                                         ; $4f77: $89
    rst $38                                       ; $4f78: $ff
    call Call_000_3b32                            ; $4f79: $cd $32 $3b
    call nz, Call_000_09f6                        ; $4f7c: $c4 $f6 $09
    add hl, de                                    ; $4f7f: $19
    and $ff                                       ; $4f80: $e6 $ff
    rst $30                                       ; $4f82: $f7
    ld [$00ff], sp                                ; $4f83: $08 $ff $00
    jp $fc3c                                      ; $4f86: $c3 $3c $fc


    inc bc                                        ; $4f89: $03

jr_03e_4f8a:
    rst $38                                       ; $4f8a: $ff
    sbc e                                         ; $4f8b: $9b
    ld h, h                                       ; $4f8c: $64
    ld l, h                                       ; $4f8d: $6c
    sub e                                         ; $4f8e: $93
    rst $00                                       ; $4f8f: $c7
    jr c, jr_03e_4f8a                             ; $4f90: $38 $f8

    rlca                                          ; $4f92: $07
    rst $38                                       ; $4f93: $ff
    rrca                                          ; $4f94: $0f
    ldh a, [rIE]                                  ; $4f95: $f0 $ff
    nop                                           ; $4f97: $00
    sbc [hl]                                      ; $4f98: $9e
    ld h, c                                       ; $4f99: $61
    ld [hl], c                                    ; $4f9a: $71
    adc [hl]                                      ; $4f9b: $8e

jr_03e_4f9c:
    cp $fe                                        ; $4f9c: $fe $fe
    pop bc                                        ; $4f9e: $c1
    rst $00                                       ; $4f9f: $c7
    jr c, jr_03e_4fde                             ; $4fa0: $38 $3c

    jp $1ce3                                      ; $4fa2: $c3 $e3 $1c


    rst $38                                       ; $4fa5: $ff
    scf                                           ; $4fa6: $37
    nop                                           ; $4fa7: $00
    inc a                                         ; $4fa8: $3c
    jp $e1a0                                      ; $4fa9: $c3 $a0 $e1


    ld c, $f1                                     ; $4fac: $0e $f1
    ret nc                                        ; $4fae: $d0

    pop hl                                        ; $4faf: $e1
    and b                                         ; $4fb0: $a0
    rst $38                                       ; $4fb1: $ff
    rst $28                                       ; $4fb2: $ef
    rst $38                                       ; $4fb3: $ff
    nop                                           ; $4fb4: $00
    sbc d                                         ; $4fb5: $9a
    ld h, l                                       ; $4fb6: $65
    and b                                         ; $4fb7: $a0
    ld sp, hl                                     ; $4fb8: $f9
    cp $01                                        ; $4fb9: $fe $01
    sbc h                                         ; $4fbb: $9c
    rst $30                                       ; $4fbc: $f7

jr_03e_4fbd:
    ld h, e                                       ; $4fbd: $63
    ld [hl], b                                    ; $4fbe: $70
    adc a                                         ; $4fbf: $8f
    cp $c1                                        ; $4fc0: $fe $c1
    call nz, Call_000_3c3b                        ; $4fc2: $c4 $3b $3c
    jp $e0bf                                      ; $4fc5: $c3 $bf $e0


    rra                                           ; $4fc8: $1f
    db $ec                                        ; $4fc9: $ec
    inc de                                        ; $4fca: $13
    jr nc, jr_03e_4f9c                            ; $4fcb: $30 $cf

    ld b, $e1                                     ; $4fcd: $06 $e1
    cp h                                          ; $4fcf: $bc
    ld e, a                                       ; $4fd0: $5f
    ld b, e                                       ; $4fd1: $43
    call nz, Call_03e_783b                        ; $4fd2: $c4 $3b $78
    add a                                         ; $4fd5: $87
    or b                                          ; $4fd6: $b0
    pop bc                                        ; $4fd7: $c1
    ei                                            ; $4fd8: $fb
    jr nz, jr_03e_4fbd                            ; $4fd9: $20 $e2

    sbc l                                         ; $4fdb: $9d
    rst $08                                       ; $4fdc: $cf
    inc c                                         ; $4fdd: $0c

jr_03e_4fde:
    ldh [$c7], a                                  ; $4fde: $e0 $c7
    nop                                           ; $4fe0: $00
    db $fc                                        ; $4fe1: $fc
    ld [hl+], a                                   ; $4fe2: $22
    ret nz                                        ; $4fe3: $c0

    db $10                                        ; $4fe4: $10
    pop hl                                        ; $4fe5: $e1
    ld a, b                                       ; $4fe6: $78
    rst $38                                       ; $4fe7: $ff
    nop                                           ; $4fe8: $00
    adc a                                         ; $4fe9: $8f
    nop                                           ; $4fea: $00
    di                                            ; $4feb: $f3
    nop                                           ; $4fec: $00
    inc e                                         ; $4fed: $1c
    nop                                           ; $4fee: $00
    rst $20                                       ; $4fef: $e7
    db $fc                                        ; $4ff0: $fc
    cp $c0                                        ; $4ff1: $fe $c0
    db $fd                                        ; $4ff3: $fd

jr_03e_4ff4:
    db $eb                                        ; $4ff4: $eb
    sbc $21                                       ; $4ff5: $de $21
    di                                            ; $4ff7: $f3

jr_03e_4ff8:
    inc c                                         ; $4ff8: $0c
    rst $08                                       ; $4ff9: $cf
    jr nc, @+$01                                  ; $4ffa: $30 $ff

    ld hl, sp+$07                                 ; $4ffc: $f8 $07
    rst $00                                       ; $4ffe: $c7
    jr c, @-$02                                   ; $4fff: $38 $fc

    inc bc                                        ; $5001: $03
    jp $ff3c                                      ; $5002: $c3 $3c $ff


    add b                                         ; $5005: $80
    ld a, a                                       ; $5006: $7f
    ld [hl-], a                                   ; $5007: $32
    call Call_000_02fd                            ; $5008: $cd $fd $02
    inc bc                                        ; $500b: $03
    db $fc                                        ; $500c: $fc
    rst $38                                       ; $500d: $ff
    cp $01                                        ; $500e: $fe $01
    ld bc, $fffe                                  ; $5010: $01 $fe $ff
    nop                                           ; $5013: $00
    add b                                         ; $5014: $80
    ld a, a                                       ; $5015: $7f

jr_03e_5016:
    rst $38                                       ; $5016: $ff
    nop                                           ; $5017: $00
    rst $38                                       ; $5018: $ff
    ld a, c                                       ; $5019: $79
    add [hl]                                      ; $501a: $86
    add $39                                       ; $501b: $c6 $39
    cp a                                          ; $501d: $bf
    ld b, b                                       ; $501e: $40
    rst $28                                       ; $501f: $ef
    ld h, b                                       ; $5020: $60
    sbc a                                         ; $5021: $9f
    sbc a                                         ; $5022: $9f
    ld h, b                                       ; $5023: $60
    ld c, d                                       ; $5024: $4a
    pop bc                                        ; $5025: $c1
    nop                                           ; $5026: $00
    rst $38                                       ; $5027: $ff
    call z, Call_000_3367                         ; $5028: $cc $67 $33
    dec sp                                        ; $502b: $3b
    call nz, $c310                                ; $502c: $c4 $10 $c3
    jr nz, jr_03e_4ff4                            ; $502f: $20 $c3

    di                                            ; $5031: $f3
    inc c                                         ; $5032: $0c
    jr nz, jr_03e_5016                            ; $5033: $20 $e1

    cp $32                                        ; $5035: $fe $32
    jp $e31c                                      ; $5037: $c3 $1c $e3


    nop                                           ; $503a: $00
    rst $38                                       ; $503b: $ff
    ld e, $e1                                     ; $503c: $1e $e1
    pop hl                                        ; $503e: $e1
    rst $38                                       ; $503f: $ff
    ld e, $9f                                     ; $5040: $1e $9f
    ld h, b                                       ; $5042: $60
    ld h, b                                       ; $5043: $60
    sbc a                                         ; $5044: $9f
    rst $18                                       ; $5045: $df
    jr nz, jr_03e_4ff8                            ; $5046: $20 $b0

    rst $30                                       ; $5048: $f7
    ld c, a                                       ; $5049: $4f
    ld a, a                                       ; $504a: $7f
    add b                                         ; $504b: $80
    ldh a, [$e1]                                  ; $504c: $f0 $e1
    di                                            ; $504e: $f3
    inc c                                         ; $504f: $0c
    rrca                                          ; $5050: $0f
    ldh a, [rIE]                                  ; $5051: $f0 $ff
    ld hl, sp+$07                                 ; $5053: $f8 $07
    add a                                         ; $5055: $87
    ld a, b                                       ; $5056: $78
    ld a, h                                       ; $5057: $7c
    add e                                         ; $5058: $83
    jp $f33c                                      ; $5059: $c3 $3c $f3


    nop                                           ; $505c: $00
    rst $38                                       ; $505d: $ff
    and b                                         ; $505e: $a0
    rst $38                                       ; $505f: $ff
    and b                                         ; $5060: $a0
    ei                                            ; $5061: $fb
    inc e                                         ; $5062: $1c
    db $e3                                        ; $5063: $e3
    ldh [$1f], a                                  ; $5064: $e0 $1f
    rst $38                                       ; $5066: $ff
    sbc h                                         ; $5067: $9c
    ld h, e                                       ; $5068: $63
    ld h, b                                       ; $5069: $60
    sbc a                                         ; $506a: $9f
    call c, $b023                                 ; $506b: $dc $23 $b0
    ld c, a                                       ; $506e: $4f
    jp $837c                                      ; $506f: $c3 $7c $83


    and b                                         ; $5072: $a0
    and l                                         ; $5073: $a5
    ld b, b                                       ; $5074: $40
    and a                                         ; $5075: $a7
    ldh [$ad], a                                  ; $5076: $e0 $ad
    rrca                                          ; $5078: $0f
    db $ed                                        ; $5079: $ed
    rst $38                                       ; $507a: $ff
    ld hl, sp+$7f                                 ; $507b: $f8 $7f
    rst $38                                       ; $507d: $ff
    ldh [$fc], a                                  ; $507e: $e0 $fc
    jp $88f7                                      ; $5080: $c3 $f7 $88


    ldh a, [rSCY]                                 ; $5083: $f0 $42
    and b                                         ; $5085: $a0
    cp $10                                        ; $5086: $fe $10
    and l                                         ; $5088: $a5
    rst $20                                       ; $5089: $e7
    inc e                                         ; $508a: $1c
    jp $8332                                      ; $508b: $c3 $32 $83


    ld h, e                                       ; $508e: $63
    add c                                         ; $508f: $81
    ld sp, hl                                     ; $5090: $f9
    ld b, c                                       ; $5091: $41
    cp $e1                                        ; $5092: $fe $e1
    ldh a, [$81]                                  ; $5094: $f0 $81
    db $e3                                        ; $5096: $e3
    inc b                                         ; $5097: $04
    db $dd                                        ; $5098: $dd
    ld e, $bc                                     ; $5099: $1e $bc
    ld a, a                                       ; $509b: $7f
    dec a                                         ; $509c: $3d
    or [hl]                                       ; $509d: $b6
    scf                                           ; $509e: $37
    sub [hl]                                      ; $509f: $96
    rla                                           ; $50a0: $17
    sub [hl]                                      ; $50a1: $96
    rla                                           ; $50a2: $17
    jr nz, @-$3e                                  ; $50a3: $20 $c0

    rst $38                                       ; $50a5: $ff
    inc b                                         ; $50a6: $04
    cp c                                          ; $50a7: $b9
    ld a, [hl-]                                   ; $50a8: $3a
    cp h                                          ; $50a9: $bc
    dec a                                         ; $50aa: $3d
    ld a, d                                       ; $50ab: $7a
    ld a, e                                       ; $50ac: $7b
    ld a, [hl-]                                   ; $50ad: $3a
    push af                                       ; $50ae: $f5
    dec sp                                        ; $50af: $3b
    cp $e1                                        ; $50b0: $fe $e1
    rst $38                                       ; $50b2: $ff
    rst $38                                       ; $50b3: $ff
    ldh [$fc], a                                  ; $50b4: $e0 $fc
    rst $38                                       ; $50b6: $ff
    db $e3                                        ; $50b7: $e3
    db $fc                                        ; $50b8: $fc
    rst $38                                       ; $50b9: $ff
    rst $08                                       ; $50ba: $cf
    ldh [$83], a                                  ; $50bb: $e0 $83
    ret nz                                        ; $50bd: $c0

    add b                                         ; $50be: $80
    ret nz                                        ; $50bf: $c0

    ld c, $80                                     ; $50c0: $0e $80
    cp $f0                                        ; $50c2: $fe $f0
    pop hl                                        ; $50c4: $e1
    rrca                                          ; $50c5: $0f
    rst $38                                       ; $50c6: $ff
    sub a                                         ; $50c7: $97
    rrca                                          ; $50c8: $0f
    cp e                                          ; $50c9: $bb
    rlca                                          ; $50ca: $07
    inc sp                                        ; $50cb: $33
    sbc a                                         ; $50cc: $9f
    rlca                                          ; $50cd: $07
    inc bc                                        ; $50ce: $03
    ld [hl], a                                    ; $50cf: $77
    daa                                           ; $50d0: $27
    rst $18                                       ; $50d1: $df
    ldh [$e1], a                                  ; $50d2: $e0 $e1
    db $fc                                        ; $50d4: $fc
    rst $20                                       ; $50d5: $e7
    rlca                                          ; $50d6: $07
    ldh a, [$f1]                                  ; $50d7: $f0 $f1
    db $eb                                        ; $50d9: $eb
    ld a, [c]                                     ; $50da: $f2
    pop af                                        ; $50db: $f1
    add b                                         ; $50dc: $80
    add b                                         ; $50dd: $80
    db $fc                                        ; $50de: $fc
    pop af                                        ; $50df: $f1
    cp c                                          ; $50e0: $b9
    ld a, a                                       ; $50e1: $7f
    ld b, [hl]                                    ; $50e2: $46
    add $ef                                       ; $50e3: $c6 $ef
    add h                                         ; $50e5: $84
    add h                                         ; $50e6: $84
    sbc l                                         ; $50e7: $9d
    sbc l                                         ; $50e8: $9d
    ldh [$e5], a                                  ; $50e9: $e0 $e5
    sbc c                                         ; $50eb: $99
    rst $38                                       ; $50ec: $ff
    ld h, [hl]                                    ; $50ed: $66
    rst $18                                       ; $50ee: $df
    ld h, [hl]                                    ; $50ef: $66
    ld b, h                                       ; $50f0: $44
    ld b, h                                       ; $50f1: $44
    push de                                       ; $50f2: $d5
    push de                                       ; $50f3: $d5
    ret nc                                        ; $50f4: $d0

    push hl                                       ; $50f5: $e5
    xor [hl]                                      ; $50f6: $ae
    rst $18                                       ; $50f7: $df
    ccf                                           ; $50f8: $3f
    ld d, c                                       ; $50f9: $51
    ld [hl], c                                    ; $50fa: $71
    ld sp, $a631                                  ; $50fb: $31 $31 $a6
    and a                                         ; $50fe: $a7
    pop bc                                        ; $50ff: $c1
    xor $10                                       ; $5100: $ee $10
    db $ed                                        ; $5102: $ed
    cp $4f                                        ; $5103: $fe $4f
    pop hl                                        ; $5105: $e1
    rst $20                                       ; $5106: $e7

jr_03e_5107:
    di                                            ; $5107: $f3
    adc a                                         ; $5108: $8f
    rst $00                                       ; $5109: $c7
    ccf                                           ; $510a: $3f
    rst $08                                       ; $510b: $cf
    ccf                                           ; $510c: $3f
    rst $38                                       ; $510d: $ff
    add b                                         ; $510e: $80
    ld h, b                                       ; $510f: $60
    adc a                                         ; $5110: $8f
    ld a, a                                       ; $5111: $7f
    rst $38                                       ; $5112: $ff
    rra                                           ; $5113: $1f
    rst $38                                       ; $5114: $ff
    rlca                                          ; $5115: $07
    sbc a                                         ; $5116: $9f
    adc a                                         ; $5117: $8f
    ld [hl], e                                    ; $5118: $73

jr_03e_5119:
    ld a, c                                       ; $5119: $79
    add a                                         ; $511a: $87
    add l                                         ; $511b: $85
    ret nz                                        ; $511c: $c0

    add h                                         ; $511d: $84
    ld a, [bc]                                    ; $511e: $0a
    db $e3                                        ; $511f: $e3
    add e                                         ; $5120: $83
    rst $28                                       ; $5121: $ef
    ld h, e                                       ; $5122: $63
    rst $00                                       ; $5123: $c7
    ld h, $ef                                     ; $5124: $26 $ef
    ld d, h                                       ; $5126: $54
    and b                                         ; $5127: $a0
    rst $38                                       ; $5128: $ff
    nop                                           ; $5129: $00
    sub [hl]                                      ; $512a: $96
    rst $38                                       ; $512b: $ff
    rla                                           ; $512c: $17
    or [hl]                                       ; $512d: $b6
    scf                                           ; $512e: $37
    or [hl]                                       ; $512f: $b6
    scf                                           ; $5130: $37
    xor h                                         ; $5131: $ac
    dec l                                         ; $5132: $2d
    reti                                          ; $5133: $d9


    rst $20                                       ; $5134: $e7
    ld a, [de]                                    ; $5135: $1a
    db $e3                                        ; $5136: $e3
    inc b                                         ; $5137: $04
    db $e4                                        ; $5138: $e4
    ld h, c                                       ; $5139: $61
    ld a, [bc]                                    ; $513a: $0a
    pop hl                                        ; $513b: $e1
    ld a, d                                       ; $513c: $7a
    ld a, e                                       ; $513d: $7b
    halt                                          ; $513e: $76
    db $fd                                        ; $513f: $fd
    ld [hl], a                                    ; $5140: $77
    xor $e5                                       ; $5141: $ee $e5
    inc e                                         ; $5143: $1c
    add e                                         ; $5144: $83
    inc e                                         ; $5145: $1c
    add e                                         ; $5146: $83
    dec de                                        ; $5147: $1b
    add h                                         ; $5148: $84
    rst $38                                       ; $5149: $ff
    ld [$4287], sp                                ; $514a: $08 $87 $42
    adc l                                         ; $514d: $8d
    ld h, h                                       ; $514e: $64
    adc e                                         ; $514f: $8b
    jr nz, jr_03e_5119                            ; $5150: $20 $c7

    rst $38                                       ; $5152: $ff
    add c                                         ; $5153: $81
    rst $38                                       ; $5154: $ff
    and [hl]                                      ; $5155: $a6
    ld e, a                                       ; $5156: $5f
    adc l                                         ; $5157: $8d
    ld a, [hl]                                    ; $5158: $7e
    ld h, b                                       ; $5159: $60
    sbc [hl]                                      ; $515a: $9e
    rst $38                                       ; $515b: $ff
    sbc $21                                       ; $515c: $de $21
    ei                                            ; $515e: $fb
    inc b                                         ; $515f: $04
    ld a, l                                       ; $5160: $7d
    add d                                         ; $5161: $82
    ld h, l                                       ; $5162: $65
    sbc d                                         ; $5163: $9a
    rst $38                                       ; $5164: $ff
    cp b                                          ; $5165: $b8
    rst $00                                       ; $5166: $c7
    sbc e                                         ; $5167: $9b
    rlca                                          ; $5168: $07
    sbc l                                         ; $5169: $9d
    inc bc                                        ; $516a: $03
    dec c                                         ; $516b: $0d
    inc bc                                        ; $516c: $03
    rst $38                                       ; $516d: $ff
    nop                                           ; $516e: $00
    ld sp, $c930                                  ; $516f: $31 $30 $c9
    ld a, b                                       ; $5172: $78
    add l                                         ; $5173: $85
    ld l, b                                       ; $5174: $68
    sub a                                         ; $5175: $97
    cp a                                          ; $5176: $bf
    ld sp, $c0cf                                  ; $5177: $31 $cf $c0
    ccf                                           ; $517a: $3f
    rst $30                                       ; $517b: $f7
    ld [$c102], sp                                ; $517c: $08 $02 $c1
    cp $f7                                        ; $517f: $fe $f7
    ld bc, $3ec1                                  ; $5181: $01 $c1 $3e
    jr nz, jr_03e_5107                            ; $5184: $20 $81

    add a                                         ; $5186: $87
    ld a, b                                       ; $5187: $78
    db $fd                                        ; $5188: $fd
    ld [bc], a                                    ; $5189: $02
    rst $08                                       ; $518a: $cf
    ccf                                           ; $518b: $3f
    ret nz                                        ; $518c: $c0

jr_03e_518d:
    db $e4                                        ; $518d: $e4
    dec de                                        ; $518e: $1b
    db $10                                        ; $518f: $10
    adc c                                         ; $5190: $89
    db $fc                                        ; $5191: $fc
    ret                                           ; $5192: $c9


    ld c, c                                       ; $5193: $49
    ret                                           ; $5194: $c9


    rst $38                                       ; $5195: $ff
    ld l, b                                       ; $5196: $68
    add sp, -$78                                  ; $5197: $e8 $88
    adc b                                         ; $5199: $88
    sub h                                         ; $519a: $94
    sbc h                                         ; $519b: $9c
    ld l, e                                       ; $519c: $6b
    rst $30                                       ; $519d: $f7
    cp $e6                                        ; $519e: $fe $e6
    jp $9595                                      ; $51a0: $c3 $95 $95


    add h                                         ; $51a3: $84
    add h                                         ; $51a4: $84
    add l                                         ; $51a5: $85
    add l                                         ; $51a6: $85
    call $cdfb                                    ; $51a7: $cd $fb $cd
    ld [hl-], a                                   ; $51aa: $32
    sub $c4                                       ; $51ab: $d6 $c4
    inc hl                                        ; $51ad: $23
    ld [hl+], a                                   ; $51ae: $22
    ld l, l                                       ; $51af: $6d
    ld l, [hl]                                    ; $51b0: $6e
    inc hl                                        ; $51b1: $23
    rrca                                          ; $51b2: $0f
    ld [hl+], a                                   ; $51b3: $22
    inc hl                                        ; $51b4: $23
    ld [hl+], a                                   ; $51b5: $22
    db $dd                                        ; $51b6: $dd
    ret nz                                        ; $51b7: $c0

    and b                                         ; $51b8: $a0
    call nz, $c0c5                                ; $51b9: $c4 $c5 $c0
    ld l, d                                       ; $51bc: $6a
    cp $fd                                        ; $51bd: $fe $fd
    or $00                                        ; $51bf: $f6 $00
    ldh [$8c], a                                  ; $51c1: $e0 $8c
    ld [hl], b                                    ; $51c3: $70
    nop                                           ; $51c4: $00
    rst $20                                       ; $51c5: $e7
    rst $38                                       ; $51c6: $ff
    nop                                           ; $51c7: $00
    ldh [$1f], a                                  ; $51c8: $e0 $1f
    di                                            ; $51ca: $f3
    rst $18                                       ; $51cb: $df
    jr nz, jr_03e_51ea                            ; $51cc: $20 $1c

    add c                                         ; $51ce: $81
    cp $41                                        ; $51cf: $fe $41
    pop af                                        ; $51d1: $f1
    ld c, $ff                                     ; $51d2: $0e $ff
    nop                                           ; $51d4: $00
    ei                                            ; $51d5: $fb
    add hl, sp                                    ; $51d6: $39
    add $30                                       ; $51d7: $c6 $30
    ld h, a                                       ; $51d9: $67
    pop hl                                        ; $51da: $e1
    ld e, $ff                                     ; $51db: $1e $ff
    nop                                           ; $51dd: $00
    jr c, jr_03e_518d                             ; $51de: $38 $ad

    rst $00                                       ; $51e0: $c7
    jr nc, jr_03e_524a                            ; $51e1: $30 $67

    db $fc                                        ; $51e3: $fc
    inc bc                                        ; $51e4: $03
    and b                                         ; $51e5: $a0
    add b                                         ; $51e6: $80

jr_03e_51e7:
    inc b                                         ; $51e7: $04
    jr nc, jr_03e_5251                            ; $51e8: $30 $67

jr_03e_51ea:
    ld a, $df                                     ; $51ea: $3e $df
    pop bc                                        ; $51ec: $c1
    rst $38                                       ; $51ed: $ff
    nop                                           ; $51ee: $00
    cp a                                          ; $51ef: $bf
    ld b, b                                       ; $51f0: $40
    jr nc, jr_03e_525a                            ; $51f1: $30 $67

    ld l, [hl]                                    ; $51f3: $6e
    sub c                                         ; $51f4: $91
    ld l, a                                       ; $51f5: $6f
    rst $38                                       ; $51f6: $ff
    nop                                           ; $51f7: $00
    pop bc                                        ; $51f8: $c1
    ld a, $30                                     ; $51f9: $3e $30
    ld h, a                                       ; $51fb: $67
    ldh [$1f], a                                  ; $51fc: $e0 $1f
    ret nz                                        ; $51fe: $c0

    rst $38                                       ; $51ff: $ff
    db $fc                                        ; $5200: $fc
    and b                                         ; $5201: $a0
    rst $38                                       ; $5202: $ff
    and b                                         ; $5203: $a0
    jp hl                                         ; $5204: $e9


    cp $01                                        ; $5205: $fe $01
    ldh a, [rIF]                                  ; $5207: $f0 $0f
    ld a, h                                       ; $5209: $7c
    add e                                         ; $520a: $83
    ccf                                           ; $520b: $3f
    add b                                         ; $520c: $80
    ld a, a                                       ; $520d: $7f
    ld a, h                                       ; $520e: $7c
    add e                                         ; $520f: $83
    ret nz                                        ; $5210: $c0

    ccf                                           ; $5211: $3f
    nop                                           ; $5212: $00
    add c                                         ; $5213: $81
    cpl                                           ; $5214: $2f
    add l                                         ; $5215: $85
    ld a, a                                       ; $5216: $7f
    add d                                         ; $5217: $82
    nop                                           ; $5218: $00
    ld [de], a                                    ; $5219: $12
    nop                                           ; $521a: $00
    ld [hl], $00                                  ; $521b: $36 $00
    ld h, [hl]                                    ; $521d: $66
    jr nz, @-$7c                                  ; $521e: $20 $82

    rst $38                                       ; $5220: $ff
    inc b                                         ; $5221: $04
    nop                                           ; $5222: $00
    ld [$1900], sp                                ; $5223: $08 $00 $19
    nop                                           ; $5226: $00
    inc de                                        ; $5227: $13
    nop                                           ; $5228: $00
    add a                                         ; $5229: $87
    inc sp                                        ; $522a: $33
    nop                                           ; $522b: $00
    scf                                           ; $522c: $37
    rst $38                                       ; $522d: $ff
    and h                                         ; $522e: $a4
    sub c                                         ; $522f: $91
    or c                                          ; $5230: $b1
    push hl                                       ; $5231: $e5
    add b                                         ; $5232: $80
    inc bc                                        ; $5233: $03
    ld b, b                                       ; $5234: $40
    rst $28                                       ; $5235: $ef
    rst $38                                       ; $5236: $ff
    db $10                                        ; $5237: $10
    jp c, $f625                                   ; $5238: $da $25 $f6

    add hl, bc                                    ; $523b: $09
    call $fb32                                    ; $523c: $cd $32 $fb
    cp l                                          ; $523f: $bd
    inc b                                         ; $5240: $04
    nop                                           ; $5241: $00
    ld h, c                                       ; $5242: $61
    add b                                         ; $5243: $80
    ld a, a                                       ; $5244: $7f
    ld a, $c1                                     ; $5245: $3e $c1
    jr nc, jr_03e_52b2                            ; $5247: $30 $69

jr_03e_5249:
    nop                                           ; $5249: $00

jr_03e_524a:
    rst $30                                       ; $524a: $f7
    rst $38                                       ; $524b: $ff
    ld h, c                                       ; $524c: $61
    sbc [hl]                                      ; $524d: $9e
    jr nc, jr_03e_52b9                            ; $524e: $30 $69

    nop                                           ; $5250: $00

jr_03e_5251:
    rst $38                                       ; $5251: $ff
    jp Jump_03e_7e3c                              ; $5252: $c3 $3c $7e


    jr nc, jr_03e_52c0                            ; $5255: $30 $69

    nop                                           ; $5257: $00
    rst $38                                       ; $5258: $ff
    or e                                          ; $5259: $b3

jr_03e_525a:
    ld c, h                                       ; $525a: $4c
    call c, $d023                                 ; $525b: $dc $23 $d0
    ld b, a                                       ; $525e: $47
    di                                            ; $525f: $f3
    nop                                           ; $5260: $00
    rst $38                                       ; $5261: $ff
    jr c, jr_03e_51e7                             ; $5262: $38 $83

    ret nc                                        ; $5264: $d0

    ld b, l                                       ; $5265: $45
    nop                                           ; $5266: $00
    rst $38                                       ; $5267: $ff
    xor $11                                       ; $5268: $ee $11
    add $30                                       ; $526a: $c6 $30
    ld l, c                                       ; $526c: $69
    nop                                           ; $526d: $00
    rst $38                                       ; $526e: $ff
    and b                                         ; $526f: $a0
    rst $38                                       ; $5270: $ff
    and b                                         ; $5271: $a0
    ei                                            ; $5272: $fb
    ld [bc], a                                    ; $5273: $02
    ld h, c                                       ; $5274: $61
    call z, $d333                                 ; $5275: $cc $33 $d3
    jr nc, jr_03e_5249                            ; $5278: $30 $cf

    and h                                         ; $527a: $a4
    pop hl                                        ; $527b: $e1
    and b                                         ; $527c: $a0
    pop hl                                        ; $527d: $e1
    ld l, [hl]                                    ; $527e: $6e
    ret nz                                        ; $527f: $c0

    adc h                                         ; $5280: $8c
    ld [hl], a                                    ; $5281: $77
    nop                                           ; $5282: $00
    ld sp, hl                                     ; $5283: $f9
    ld a, a                                       ; $5284: $7f
    cp $e0                                        ; $5285: $fe $e0
    ld a, [hl+]                                   ; $5287: $2a
    ld hl, $08f7                                  ; $5288: $21 $f7 $08
    di                                            ; $528b: $f3
    inc c                                         ; $528c: $0c
    ld sp, hl                                     ; $528d: $f9
    pop hl                                        ; $528e: $e1
    ld b, $95                                     ; $528f: $06 $95
    adc e                                         ; $5291: $8b
    sub c                                         ; $5292: $91
    add e                                         ; $5293: $83
    ld b, $e3                                     ; $5294: $06 $e3
    cp $c3                                        ; $5296: $fe $c3
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    jp $dace                                      ; $529a: $c3 $ce $da


    ld b, b                                       ; $529d: $40
    sbc e                                         ; $529e: $9b
    nop                                           ; $529f: $00
    ld l, h                                       ; $52a0: $6c
    ld [$e022], a                                 ; $52a1: $ea $22 $e0
    ld hl, $009e                                  ; $52a4: $21 $9e $00
    push de                                       ; $52a7: $d5
    ld [hl], c                                    ; $52a8: $71
    jp nc, Jump_03e_7840                          ; $52a9: $d2 $40 $78

    jp c, Jump_000_3c20                           ; $52ac: $da $20 $3c

    ret nc                                        ; $52af: $d0

    ld h, $f9                                     ; $52b0: $26 $f9

jr_03e_52b2:
    nop                                           ; $52b2: $00
    rst $20                                       ; $52b3: $e7
    ld c, $00                                     ; $52b4: $0e $00
    or $ac                                        ; $52b6: $f6 $ac
    ret nz                                        ; $52b8: $c0

jr_03e_52b9:
    ret nz                                        ; $52b9: $c0

    ld hl, $00dc                                  ; $52ba: $21 $dc $00
    ld h, a                                       ; $52bd: $67
    cp e                                          ; $52be: $bb
    nop                                           ; $52bf: $00

jr_03e_52c0:
    cp b                                          ; $52c0: $b8
    and b                                         ; $52c1: $a0
    ld b, b                                       ; $52c2: $40
    or $00                                        ; $52c3: $f6 $00
    add hl, sp                                    ; $52c5: $39
    or b                                          ; $52c6: $b0
    ld [hl+], a                                   ; $52c7: $22
    ld [hl], b                                    ; $52c8: $70
    ld a, $94                                     ; $52c9: $3e $94
    ld b, b                                       ; $52cb: $40
    ld sp, $fe00                                  ; $52cc: $31 $00 $fe
    nop                                           ; $52cf: $00
    inc bc                                        ; $52d0: $03
    sub d                                         ; $52d1: $92
    ld b, b                                       ; $52d2: $40
    and b                                         ; $52d3: $a0
    ld hl, $9a7f                                  ; $52d4: $21 $7f $9a
    nop                                           ; $52d7: $00
    halt                                          ; $52d8: $76
    nop                                           ; $52d9: $00
    call Call_000_3b00                            ; $52da: $cd $00 $3b
    ret nc                                        ; $52dd: $d0

    and $fe                                       ; $52de: $e6 $fe
    and b                                         ; $52e0: $a0

jr_03e_52e1:
    db $eb                                        ; $52e1: $eb
    cp $80                                        ; $52e2: $fe $80
    ldh [$80], a                                  ; $52e4: $e0 $80
    db $fc                                        ; $52e6: $fc
    add b                                         ; $52e7: $80
    add b                                         ; $52e8: $80
    adc $fc                                       ; $52e9: $ce $fc
    ldh [$c0], a                                  ; $52eb: $e0 $c0
    add b                                         ; $52ed: $80
    cp h                                          ; $52ee: $bc
    db $f4                                        ; $52ef: $f4
    ldh [$30], a                                  ; $52f0: $e0 $30
    ld hl, $39c6                                  ; $52f2: $21 $c6 $39
    ld a, e                                       ; $52f5: $7b
    ld hl, sp+$07                                 ; $52f6: $f8 $07
    add b                                         ; $52f8: $80
    ld hl, $27d8                                  ; $52f9: $21 $d8 $27
    and $19                                       ; $52fc: $e6 $19
    ret nz                                        ; $52fe: $c0

    ld l, b                                       ; $52ff: $68
    rst $18                                       ; $5300: $df
    db $fc                                        ; $5301: $fc
    dec c                                         ; $5302: $0d
    ld [bc], a                                    ; $5303: $02
    di                                            ; $5304: $f3
    adc h                                         ; $5305: $8c
    ld b, b                                       ; $5306: $40

jr_03e_5307:
    add l                                         ; $5307: $85
    and a                                         ; $5308: $a7
    ld e, a                                       ; $5309: $5f
    db $fc                                        ; $530a: $fc
    ld b, b                                       ; $530b: $40
    add e                                         ; $530c: $83
    ccf                                           ; $530d: $3f
    ld c, l                                       ; $530e: $4d
    rst $18                                       ; $530f: $df
    jr nz, jr_03e_52e1                            ; $5310: $20 $cf

    jr nc, jr_03e_537b                            ; $5312: $30 $67

    sbc b                                         ; $5314: $98
    rst $38                                       ; $5315: $ff
    ld h, a                                       ; $5316: $67
    sbc b                                         ; $5317: $98
    inc hl                                        ; $5318: $23
    call c, $dc23                                 ; $5319: $dc $23 $dc
    ld bc, $fffe                                  ; $531c: $01 $fe $ff
    ld bc, $f8fe                                  ; $531f: $01 $fe $f8
    rlca                                          ; $5322: $07
    db $fc                                        ; $5323: $fc
    inc bc                                        ; $5324: $03
    sbc h                                         ; $5325: $9c
    ld h, e                                       ; $5326: $63
    rst $38                                       ; $5327: $ff
    call z, Call_03e_6633                         ; $5328: $cc $33 $66
    sbc c                                         ; $532b: $99
    ld h, [hl]                                    ; $532c: $66
    sbc c                                         ; $532d: $99
    ld [hl+], a                                   ; $532e: $22
    db $dd                                        ; $532f: $dd
    add e                                         ; $5330: $83
    ld [bc], a                                    ; $5331: $02
    db $fd                                        ; $5332: $fd
    ld [$02e5], sp                                ; $5333: $08 $e5 $02
    db $eb                                        ; $5336: $eb
    rst $10                                       ; $5337: $d7
    ld h, d                                       ; $5338: $62
    di                                            ; $5339: $f3
    call nz, Call_000_21e8                        ; $533a: $c4 $e8 $21
    and $ea                                       ; $533d: $e6 $ea
    ld d, b                                       ; $533f: $50
    ldh [$cc], a                                  ; $5340: $e0 $cc
    ret nc                                        ; $5342: $d0

    ld h, h                                       ; $5343: $64
    adc h                                         ; $5344: $8c
    sub $20                                       ; $5345: $d6 $20
    ld e, $00                                     ; $5347: $1e $00
    pop hl                                        ; $5349: $e1
    db $ec                                        ; $534a: $ec
    cp b                                          ; $534b: $b8
    ret nz                                        ; $534c: $c0

    ret nz                                        ; $534d: $c0

    ld h, e                                       ; $534e: $63
    db $e3                                        ; $534f: $e3
    nop                                           ; $5350: $00
    xor $c1                                       ; $5351: $ee $c1
    rst $08                                       ; $5353: $cf
    nop                                           ; $5354: $00
    ld [hl-], a                                   ; $5355: $32
    and $b0                                       ; $5356: $e6 $b0
    ld h, l                                       ; $5358: $65
    nop                                           ; $5359: $00
    ld bc, $e612                                  ; $535a: $01 $12 $e6
    or b                                          ; $535d: $b0
    ld bc, $0033                                  ; $535e: $01 $33 $00
    call c, Call_000_004f                         ; $5361: $dc $4f $00
    ld h, e                                       ; $5364: $63
    nop                                           ; $5365: $00
    cp [hl]                                       ; $5366: $be
    xor d                                         ; $5367: $aa
    nop                                           ; $5368: $00
    sub b                                         ; $5369: $90
    ld h, e                                       ; $536a: $63
    sbc c                                         ; $536b: $99
    nop                                           ; $536c: $00
    ldh [$e7], a                                  ; $536d: $e0 $e7
    rst $08                                       ; $536f: $cf
    nop                                           ; $5370: $00
    jr c, jr_03e_5307                             ; $5371: $38 $94

    inc h                                         ; $5373: $24

jr_03e_5374:
    and b                                         ; $5374: $a0
    db $ed                                        ; $5375: $ed
    sbc h                                         ; $5376: $9c
    add b                                         ; $5377: $80
    ldh a, [$af]                                  ; $5378: $f0 $af
    add b                                         ; $537a: $80

jr_03e_537b:
    call z, $b080                                 ; $537b: $cc $80 $b0
    db $fc                                        ; $537e: $fc
    jp nz, $f8f0                                  ; $537f: $c2 $f0 $f8

    ret nz                                        ; $5382: $c0

    sbc $ff                                       ; $5383: $de $ff
    ld hl, $0df2                                  ; $5385: $21 $f2 $0d
    adc $31                                       ; $5388: $ce $31
    ld hl, sp+$07                                 ; $538a: $f8 $07
    add $df                                       ; $538c: $c6 $df
    add hl, sp                                    ; $538e: $39
    db $fc                                        ; $538f: $fc
    inc bc                                        ; $5390: $03
    jp nz, $803d                                  ; $5391: $c2 $3d $80

    and c                                         ; $5394: $a1
    adc b                                         ; $5395: $88
    ld [hl], a                                    ; $5396: $77
    ld a, e                                       ; $5397: $7b
    cp $01                                        ; $5398: $fe $01
    ret nc                                        ; $539a: $d0

    ld h, a                                       ; $539b: $67
    rrca                                          ; $539c: $0f
    ldh a, [$1f]                                  ; $539d: $f0 $1f

jr_03e_539f:
    ldh [$b8], a                                  ; $539f: $e0 $b8

jr_03e_53a1:
    add c                                         ; $53a1: $81
    jr c, jr_03e_5374                             ; $53a2: $38 $d0

    ld h, l                                       ; $53a4: $65
    ccf                                           ; $53a5: $3f
    ld l, $bf                                     ; $53a6: $2e $bf
    ld b, [hl]                                    ; $53a8: $46
    ld bc, $03ff                                  ; $53a9: $01 $ff $03
    sub b                                         ; $53ac: $90
    ld b, b                                       ; $53ad: $40
    or c                                          ; $53ae: $b1
    ld b, c                                       ; $53af: $41
    rst $38                                       ; $53b0: $ff
    db $10                                        ; $53b1: $10
    rst $38                                       ; $53b2: $ff
    ld h, b                                       ; $53b3: $60
    rst $38                                       ; $53b4: $ff
    ret nz                                        ; $53b5: $c0

    rst $38                                       ; $53b6: $ff
    add b                                         ; $53b7: $80
    rst $38                                       ; $53b8: $ff
    add e                                         ; $53b9: $83
    adc b                                         ; $53ba: $88
    rst $38                                       ; $53bb: $ff
    sub c                                         ; $53bc: $91
    nop                                           ; $53bd: $00
    sbc l                                         ; $53be: $9d
    ld b, [hl]                                    ; $53bf: $46
    inc b                                         ; $53c0: $04
    push bc                                       ; $53c1: $c5
    push de                                       ; $53c2: $d5
    ld c, c                                       ; $53c3: $49
    jp nz, $d921                                  ; $53c4: $c2 $21 $d9

    or a                                          ; $53c7: $b7
    ld h, $f6                                     ; $53c8: $26 $f6
    add hl, bc                                    ; $53ca: $09
    cp $01                                        ; $53cb: $fe $01
    rst $20                                       ; $53cd: $e7
    jr jr_03e_5440                                ; $53ce: $18 $70

    ld hl, $fdff                                  ; $53d0: $21 $ff $fd
    nop                                           ; $53d3: $00
    jr c, @+$23                                   ; $53d4: $38 $21

    and $19                                       ; $53d6: $e6 $19
    dec sp                                        ; $53d8: $3b
    call nz, Call_000_33cc                        ; $53d9: $c4 $cc $33
    ld e, $da                                     ; $53dc: $1e $da
    add e                                         ; $53de: $83
    adc h                                         ; $53df: $8c
    ld [hl], e                                    ; $53e0: $73
    di                                            ; $53e1: $f3
    inc c                                         ; $53e2: $0c
    ld a, [hl+]                                   ; $53e3: $2a
    ld hl, $2132                                  ; $53e4: $21 $32 $21
    add $c1                                       ; $53e7: $c6 $c1
    ld a, e                                       ; $53e9: $7b
    db $e3                                        ; $53ea: $e3
    inc e                                         ; $53eb: $1c
    ld c, [hl]                                    ; $53ec: $4e

jr_03e_53ed:
    and c                                         ; $53ed: $a1
    rst $08                                       ; $53ee: $cf
    jr nc, jr_03e_5423                            ; $53ef: $30 $32

    call $e5b0                                    ; $53f1: $cd $b0 $e5
    di                                            ; $53f4: $f3
    ld bc, $12fe                                  ; $53f5: $01 $fe $12
    and l                                         ; $53f8: $a5
    and [hl]                                      ; $53f9: $a6
    pop bc                                        ; $53fa: $c1
    inc sp                                        ; $53fb: $33
    call z, $23dc                                 ; $53fc: $cc $dc $23
    cp a                                          ; $53ff: $bf
    ld h, e                                       ; $5400: $63
    sbc h                                         ; $5401: $9c
    cp [hl]                                       ; $5402: $be
    ld b, c                                       ; $5403: $41
    rst $00                                       ; $5404: $c7
    jr c, jr_03e_53a1                             ; $5405: $38 $9a

    add e                                         ; $5407: $83
    sbc c                                         ; $5408: $99
    rst $38                                       ; $5409: $ff
    ld h, [hl]                                    ; $540a: $66
    halt                                          ; $540b: $76
    adc c                                         ; $540c: $89
    rst $08                                       ; $540d: $cf
    jr nc, jr_03e_5448                            ; $540e: $30 $38

    rst $00                                       ; $5410: $c7
    rst $20                                       ; $5411: $e7
    pop af                                        ; $5412: $f1
    jr jr_03e_539f                                ; $5413: $18 $8a

    add e                                         ; $5415: $83
    and b                                         ; $5416: $a0
    rst $38                                       ; $5417: $ff
    and b                                         ; $5418: $a0
    ld sp, hl                                     ; $5419: $f9
    cp $01                                        ; $541a: $fe $01
    jr nc, jr_03e_53ed                            ; $541c: $30 $cf

    rst $38                                       ; $541e: $ff
    ret c                                         ; $541f: $d8

    daa                                           ; $5420: $27
    ld h, b                                       ; $5421: $60
    sbc a                                         ; $5422: $9f

jr_03e_5423:
    cp b                                          ; $5423: $b8
    ld b, a                                       ; $5424: $47
    ret nz                                        ; $5425: $c0

    ccf                                           ; $5426: $3f
    xor $c5                                       ; $5427: $ee $c5
    ld hl, $ff0f                                  ; $5429: $21 $0f $ff
    sbc [hl]                                      ; $542c: $9e
    cp $e0                                        ; $542d: $fe $e0
    cp [hl]                                       ; $542f: $be
    rst $38                                       ; $5430: $ff
    cp h                                          ; $5431: $bc
    ei                                            ; $5432: $fb
    rst $38                                       ; $5433: $ff
    ld a, l                                       ; $5434: $7d
    cp $e0                                        ; $5435: $fe $e0
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    jr nc, @+$01                                  ; $5439: $30 $ff

    ld [hl], b                                    ; $543b: $70
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    ld [hl], c                                    ; $543e: $71
    rst $38                                       ; $543f: $ff

jr_03e_5440:
    db $e3                                        ; $5440: $e3
    rst $38                                       ; $5441: $ff
    rst $20                                       ; $5442: $e7
    rst $38                                       ; $5443: $ff
    rst $28                                       ; $5444: $ef
    cp $75                                        ; $5445: $fe $75
    inc h                                         ; $5447: $24

jr_03e_5448:
    pop hl                                        ; $5448: $e1
    nop                                           ; $5449: $00
    sbc a                                         ; $544a: $9f
    nop                                           ; $544b: $00
    ld h, b                                       ; $544c: $60
    nop                                           ; $544d: $00
    rst $18                                       ; $544e: $df
    di                                            ; $544f: $f3
    nop                                           ; $5450: $00
    or b                                          ; $5451: $b0
    add sp, -$80                                  ; $5452: $e8 $80
    sbc a                                         ; $5454: $9f
    add b                                         ; $5455: $80
    cp $f2                                        ; $5456: $fe $f2
    nop                                           ; $5458: $00
    inc c                                         ; $5459: $0c
    cp $16                                        ; $545a: $fe $16
    and b                                         ; $545c: $a0
    add h                                         ; $545d: $84
    nop                                           ; $545e: $00
    ld a, h                                       ; $545f: $7c
    nop                                           ; $5460: $00

jr_03e_5461:
    ret nz                                        ; $5461: $c0

    nop                                           ; $5462: $00
    ld a, $fa                                     ; $5463: $3e $fa
    or c                                          ; $5465: $b1
    pop bc                                        ; $5466: $c1
    ld a, a                                       ; $5467: $7f
    rst $30                                       ; $5468: $f7
    ldh [$80], a                                  ; $5469: $e0 $80
    ld b, $8f                                     ; $546b: $06 $8f
    dec c                                         ; $546d: $0d
    adc c                                         ; $546e: $89
    ld hl, sp-$02                                 ; $546f: $f8 $fe
    pop hl                                        ; $5471: $e1
    xor [hl]                                      ; $5472: $ae
    jp nz, $c028                                  ; $5473: $c2 $28 $c0

    inc e                                         ; $5476: $1c
    ld a, $2a                                     ; $5477: $3e $2a
    ld [hl+], a                                   ; $5479: $22
    ld a, [hl-]                                   ; $547a: $3a
    rst $30                                       ; $547b: $f7
    ld h, d                                       ; $547c: $62
    ld e, d                                       ; $547d: $5a
    add $f0                                       ; $547e: $c6 $f0
    push hl                                       ; $5480: $e5
    ccf                                           ; $5481: $3f
    ld a, a                                       ; $5482: $7f
    ld e, [hl]                                    ; $5483: $5e
    ret nz                                        ; $5484: $c0

    rst $28                                       ; $5485: $ef
    and b                                         ; $5486: $a0
    add c                                         ; $5487: $81
    rst $38                                       ; $5488: $ff
    sbc a                                         ; $5489: $9f
    ldh [$e5], a                                  ; $548a: $e0 $e5
    nop                                           ; $548c: $00
    add c                                         ; $548d: $81
    add c                                         ; $548e: $81
    rst $18                                       ; $548f: $df
    add e                                         ; $5490: $83
    add d                                         ; $5491: $82
    add d                                         ; $5492: $82
    inc bc                                        ; $5493: $03
    add [hl]                                      ; $5494: $86
    ret nc                                        ; $5495: $d0

    push hl                                       ; $5496: $e5
    db $e3                                        ; $5497: $e3
    rst $30                                       ; $5498: $f7
    cp a                                          ; $5499: $bf
    ld d, h                                       ; $549a: $54
    inc e                                         ; $549b: $1c
    db $eb                                        ; $549c: $eb
    ld [$486d], sp                                ; $549d: $08 $6d $48
    ret nz                                        ; $54a0: $c0

    push hl                                       ; $54a1: $e5
    inc c                                         ; $54a2: $0c
    ld a, a                                       ; $54a3: $7f
    sbc a                                         ; $54a4: $9f
    sub e                                         ; $54a5: $93
    di                                            ; $54a6: $f3
    ld l, d                                       ; $54a7: $6a
    ld h, d                                       ; $54a8: $62
    ld e, e                                       ; $54a9: $5b
    ld b, d                                       ; $54aa: $42
    ldh [$e7], a                                  ; $54ab: $e0 $e7
    push af                                       ; $54ad: $f5
    ld d, a                                       ; $54ae: $57
    ldh [$e1], a                                  ; $54af: $e0 $e1
    ld c, c                                       ; $54b1: $49
    db $fd                                        ; $54b2: $fd
    add c                                         ; $54b3: $81
    ld bc, $0102                                  ; $54b4: $01 $02 $01
    nop                                           ; $54b7: $00
    rst $38                                       ; $54b8: $ff
    add c                                         ; $54b9: $81
    ret nz                                        ; $54ba: $c0

    ld b, c                                       ; $54bb: $41
    ld h, b                                       ; $54bc: $60
    and c                                         ; $54bd: $a1
    jr nz, jr_03e_5461                            ; $54be: $20 $a1

    jr nz, @+$01                                  ; $54c0: $20 $ff

    ld [hl-], a                                   ; $54c2: $32
    call Call_000_02fd                            ; $54c3: $cd $fd $02
    inc bc                                        ; $54c6: $03
    db $fc                                        ; $54c7: $fc
    cp $01                                        ; $54c8: $fe $01
    ld sp, hl                                     ; $54ca: $f9
    ld bc, $4030                                  ; $54cb: $01 $30 $40
    add b                                         ; $54ce: $80
    pop bc                                        ; $54cf: $c1
    ld a, c                                       ; $54d0: $79
    add [hl]                                      ; $54d1: $86
    add $39                                       ; $54d2: $c6 $39
    nop                                           ; $54d4: $00
    rst $18                                       ; $54d5: $df
    rst $38                                       ; $54d6: $ff
    dec a                                         ; $54d7: $3d
    jp $827e                                      ; $54d8: $c3 $7e $82


    cp $e3                                        ; $54db: $fe $e3
    call z, $ef33                                 ; $54dd: $cc $33 $ef
    dec sp                                        ; $54e0: $3b
    call nz, $ff00                                ; $54e1: $c4 $00 $ff
    ld [bc], a                                    ; $54e4: $02
    ld hl, $6464                                  ; $54e5: $21 $64 $64
    inc b                                         ; $54e8: $04
    or $ff                                        ; $54e9: $f6 $ff
    ldh [$f3], a                                  ; $54eb: $e0 $f3
    inc c                                         ; $54ed: $0c
    jp c, $e661                                   ; $54ee: $da $61 $e6

    rst $38                                       ; $54f1: $ff
    add hl, de                                    ; $54f2: $19
    add hl, de                                    ; $54f3: $19
    rst $20                                       ; $54f4: $e7
    add hl, bc                                    ; $54f5: $09
    add hl, bc                                    ; $54f6: $09
    ret                                           ; $54f7: $c9


    rst $38                                       ; $54f8: $ff
    ldh [$c6], a                                  ; $54f9: $e0 $c6
    pop bc                                        ; $54fb: $c1
    nop                                           ; $54fc: $00
    rst $38                                       ; $54fd: $ff
    sbc $ff                                       ; $54fe: $de $ff
    ccf                                           ; $5500: $3f
    pop hl                                        ; $5501: $e1
    ld hl, $21e1                                  ; $5502: $21 $e1 $21
    xor $2f                                       ; $5505: $ee $2f
    inc hl                                        ; $5507: $23
    rra                                           ; $5508: $1f
    ld [c], a                                     ; $5509: $e2
    ld e, $e1                                     ; $550a: $1e $e1
    di                                            ; $550c: $f3
    inc c                                         ; $550d: $0c
    xor d                                         ; $550e: $aa
    add hl, hl                                    ; $550f: $29
    and b                                         ; $5510: $a0
    pop hl                                        ; $5511: $e1
    ld [$ff81], a                                 ; $5512: $ea $81 $ff
    db $fd                                        ; $5515: $fd
    ld [bc], a                                    ; $5516: $02
    db $fd                                        ; $5517: $fd
    ld [bc], a                                    ; $5518: $02
    db $fc                                        ; $5519: $fc
    inc bc                                        ; $551a: $03
    db $fc                                        ; $551b: $fc
    inc bc                                        ; $551c: $03
    cp $e0                                        ; $551d: $fe $e0
    db $e3                                        ; $551f: $e3
    db $dd                                        ; $5520: $dd
    ld a, $a3                                     ; $5521: $3e $a3
    ld h, d                                       ; $5523: $62
    jp $db42                                      ; $5524: $c3 $42 $db


    rst $38                                       ; $5527: $ff
    ld e, d                                       ; $5528: $5a
    db $db                                        ; $5529: $db
    ld e, d                                       ; $552a: $5a
    rrca                                          ; $552b: $0f
    adc c                                         ; $552c: $89
    ld c, $88                                     ; $552d: $0e $88
    rrca                                          ; $552f: $0f
    rst $38                                       ; $5530: $ff
    adc b                                         ; $5531: $88
    dec bc                                        ; $5532: $0b
    adc b                                         ; $5533: $88
    inc b                                         ; $5534: $04
    adc h                                         ; $5535: $8c
    inc bc                                        ; $5536: $03
    add a                                         ; $5537: $87
    nop                                           ; $5538: $00
    rst $38                                       ; $5539: $ff
    ret nz                                        ; $553a: $c0

    ld a, a                                       ; $553b: $7f
    nop                                           ; $553c: $00
    or h                                          ; $553d: $b4
    add [hl]                                      ; $553e: $86
    ld [hl], h                                    ; $553f: $74
    inc c                                         ; $5540: $0c
    add sp, $7f                                   ; $5541: $e8 $7f
    dec e                                         ; $5543: $1d
    sub c                                         ; $5544: $91
    add hl, sp                                    ; $5545: $39
    ld hl, $c071                                  ; $5546: $21 $71 $c0
    pop hl                                        ; $5549: $e1
    rst $18                                       ; $554a: $df
    ld b, c                                       ; $554b: $41
    rst $38                                       ; $554c: $ff
    cp d                                          ; $554d: $ba
    add e                                         ; $554e: $83
    ld a, l                                       ; $554f: $7d
    pop af                                        ; $5550: $f1
    db $ed                                        ; $5551: $ed
    pop hl                                        ; $5552: $e1
    ld sp, hl                                     ; $5553: $f9
    inc bc                                        ; $5554: $03
    rst $28                                       ; $5555: $ef
    ld [bc], a                                    ; $5556: $02
    add a                                         ; $5557: $87
    db $fc                                        ; $5558: $fc
    cp $cf                                        ; $5559: $fe $cf
    ld b, c                                       ; $555b: $41
    dec b                                         ; $555c: $05
    inc b                                         ; $555d: $04
    rlca                                          ; $555e: $07
    rst $38                                       ; $555f: $ff
    inc c                                         ; $5560: $0c
    ld a, [bc]                                    ; $5561: $0a
    ld [$e84f], sp                                ; $5562: $08 $4f $e8
    add sp, -$58                                  ; $5565: $e8 $a8
    ld b, a                                       ; $5567: $47
    db $fd                                        ; $5568: $fd
    rst $28                                       ; $5569: $ef
    cp a                                          ; $556a: $bf
    ld b, c                                       ; $556b: $41
    rst $10                                       ; $556c: $d7
    ld [de], a                                    ; $556d: $12
    cp a                                          ; $556e: $bf
    ld [hl-], a                                   ; $556f: $32
    rst $18                                       ; $5570: $df
    sub b                                         ; $5571: $90
    rst $18                                       ; $5572: $df
    sub $31                                       ; $5573: $d6 $31
    add hl, hl                                    ; $5575: $29
    ld a, c                                       ; $5576: $79
    add $f0                                       ; $5577: $c6 $f0
    ld [c], a                                     ; $5579: $e2
    ld a, e                                       ; $557a: $7b
    jp nc, $bbff                                  ; $557b: $d2 $ff $bb

    add d                                         ; $557e: $82
    ei                                            ; $557f: $fb
    add d                                         ; $5580: $82
    db $db                                        ; $5581: $db
    sub d                                         ; $5582: $92
    sub d                                         ; $5583: $92
    or [hl]                                       ; $5584: $b6
    db $fd                                        ; $5585: $fd
    ld l, l                                       ; $5586: $6d
    sbc a                                         ; $5587: $9f
    ld b, d                                       ; $5588: $42
    rst $28                                       ; $5589: $ef
    dec de                                        ; $558a: $1b
    rst $18                                       ; $558b: $df
    dec de                                        ; $558c: $1b
    ld l, a                                       ; $558d: $6f
    ld a, [de]                                    ; $558e: $1a
    sbc a                                         ; $558f: $9f
    ld l, a                                       ; $5590: $6f
    ld c, b                                       ; $5591: $48
    ld c, b                                       ; $5592: $48
    reti                                          ; $5593: $d9


    or a                                          ; $5594: $b7
    adc a                                         ; $5595: $8f
    ld b, d                                       ; $5596: $42
    inc c                                         ; $5597: $0c
    ldh [$60], a                                  ; $5598: $e0 $60
    rst $38                                       ; $559a: $ff
    ld b, c                                       ; $559b: $41
    ld h, b                                       ; $559c: $60
    ld b, c                                       ; $559d: $41
    ret nz                                        ; $559e: $c0

    add c                                         ; $559f: $81
    ret nz                                        ; $55a0: $c0

    ld bc, $fd80                                  ; $55a1: $01 $80 $fd
    inc bc                                        ; $55a4: $03
    jp z, $ff60                                   ; $55a5: $ca $60 $ff

    nop                                           ; $55a8: $00
    ld a, [hl]                                    ; $55a9: $7e
    add c                                         ; $55aa: $81
    pop bc                                        ; $55ab: $c1
    ld a, $ff                                     ; $55ac: $3e $ff
    ld a, $c1                                     ; $55ae: $3e $c1
    db $e3                                        ; $55b0: $e3
    inc e                                         ; $55b1: $1c
    sbc h                                         ; $55b2: $9c
    ld h, e                                       ; $55b3: $63
    ld h, a                                       ; $55b4: $67
    sbc b                                         ; $55b5: $98
    ei                                            ; $55b6: $fb
    nop                                           ; $55b7: $00
    rst $38                                       ; $55b8: $ff
    ld [$3de3], sp                                ; $55b9: $08 $e3 $3d
    jp Jump_03e_7f80                              ; $55bc: $c3 $80 $7f


    rst $18                                       ; $55bf: $df
    rst $38                                       ; $55c0: $ff
    jr nz, @+$63                                  ; $55c1: $20 $61

    sbc [hl]                                      ; $55c3: $9e
    nop                                           ; $55c4: $00
    rst $38                                       ; $55c5: $ff

jr_03e_55c6:
    inc b                                         ; $55c6: $04
    inc b                                         ; $55c7: $04
    ld h, h                                       ; $55c8: $64
    rst $28                                       ; $55c9: $ef
    ld h, h                                       ; $55ca: $64
    ld h, [hl]                                    ; $55cb: $66
    ld h, [hl]                                    ; $55cc: $66
    sbc c                                         ; $55cd: $99
    ld h, l                                       ; $55ce: $65
    nop                                           ; $55cf: $00
    ld h, $d9                                     ; $55d0: $26 $d9
    rst $18                                       ; $55d2: $df
    rst $38                                       ; $55d3: $ff
    jr nz, jr_03e_55d6                            ; $55d4: $20 $00

jr_03e_55d6:
    rst $38                                       ; $55d6: $ff
    ret                                           ; $55d7: $c9


    ret                                           ; $55d8: $c9


    ld [$1808], sp                                ; $55d9: $08 $08 $18
    ld a, e                                       ; $55dc: $7b
    jr jr_03e_55c6                                ; $55dd: $18 $e7

    ld d, l                                       ; $55df: $55
    nop                                           ; $55e0: $00
    ld a, l                                       ; $55e1: $7d
    add d                                         ; $55e2: $82
    add [hl]                                      ; $55e3: $86
    ld a, c                                       ; $55e4: $79
    and b                                         ; $55e5: $a0
    ld b, b                                       ; $55e6: $40
    db $eb                                        ; $55e7: $eb
    rst $28                                       ; $55e8: $ef
    ld hl, $e0ff                                  ; $55e9: $21 $ff $e0
    sbc $45                                       ; $55ec: $de $45
    nop                                           ; $55ee: $00
    jp Jump_03e_7e3c                              ; $55ef: $c3 $3c $7e


    db $fd                                        ; $55f2: $fd
    add c                                         ; $55f3: $81
    or b                                          ; $55f4: $b0
    rlca                                          ; $55f5: $07
    nop                                           ; $55f6: $00
    rst $38                                       ; $55f7: $ff
    rst $18                                       ; $55f8: $df
    jr nz, jr_03e_562b                            ; $55f9: $20 $30

    rst $08                                       ; $55fb: $cf
    ei                                            ; $55fc: $fb
    nop                                           ; $55fd: $00
    rst $38                                       ; $55fe: $ff
    ld [$f9e3], sp                                ; $55ff: $08 $e3 $f9
    ld b, $03                                     ; $5602: $06 $03
    db $fc                                        ; $5604: $fc
    db $fd                                        ; $5605: $fd
    db $fd                                        ; $5606: $fd
    ld [bc], a                                    ; $5607: $02
    ret nc                                        ; $5608: $d0

    pop hl                                        ; $5609: $e1
    db $db                                        ; $560a: $db
    ld e, d                                       ; $560b: $5a
    jp $c542                                      ; $560c: $c3 $42 $c5


    ld b, [hl]                                    ; $560f: $46
    di                                            ; $5610: $f3
    cp e                                          ; $5611: $bb
    ld a, h                                       ; $5612: $7c
    ldh [$e5], a                                  ; $5613: $e0 $e5
    ret nc                                        ; $5615: $d0

    jp Jump_000_3cdb                              ; $5616: $c3 $db $3c


    and a                                         ; $5619: $a7
    ld h, h                                       ; $561a: $64
    cp a                                          ; $561b: $bf
    rst $00                                       ; $561c: $c7
    ld b, h                                       ; $561d: $44
    rst $20                                       ; $561e: $e7
    ld h, h                                       ; $561f: $64
    and a                                         ; $5620: $a7
    ld h, h                                       ; $5621: $64
    ret nz                                        ; $5622: $c0

    jp $ffbd                                      ; $5623: $c3 $bd $ff


    ld a, [hl]                                    ; $5626: $7e
    ld b, e                                       ; $5627: $43
    jp nz, $9293                                  ; $5628: $c2 $93 $92

jr_03e_562b:
    ld [hl], e                                    ; $562b: $73
    ld a, [c]                                     ; $562c: $f2
    dec h                                         ; $562d: $25
    cp l                                          ; $562e: $bd
    and $b0                                       ; $562f: $e6 $b0
    jp Jump_03e_7cbb                              ; $5631: $c3 $bb $7c


    ld b, l                                       ; $5634: $45
    add $f0                                       ; $5635: $c6 $f0
    pop hl                                        ; $5637: $e1
    rst $00                                       ; $5638: $c7
    db $fd                                        ; $5639: $fd
    ld b, [hl]                                    ; $563a: $46
    and b                                         ; $563b: $a0
    jp Jump_000_1eed                              ; $563c: $c3 $ed $1e


    or e                                          ; $563f: $b3
    ld [hl], d                                    ; $5640: $72
    db $d3                                        ; $5641: $d3
    ld d, d                                       ; $5642: $52
    rst $28                                       ; $5643: $ef
    db $d3                                        ; $5644: $d3
    ld d, d                                       ; $5645: $52
    jp $9042                                      ; $5646: $c3 $42 $90


    jp $fc7b                                      ; $5649: $c3 $7b $fc


    add l                                         ; $564c: $85
    ld a, a                                       ; $564d: $7f
    add [hl]                                      ; $564e: $86
    sbc e                                         ; $564f: $9b
    sbc h                                         ; $5650: $9c
    add l                                         ; $5651: $85
    add [hl]                                      ; $5652: $86
    ld [hl], e                                    ; $5653: $73
    ld a, [c]                                     ; $5654: $f2
    ret nc                                        ; $5655: $d0

    rst $20                                       ; $5656: $e7
    or $f0                                        ; $5657: $f6 $f0
    pop hl                                        ; $5659: $e1
    sub e                                         ; $565a: $93
    sub d                                         ; $565b: $92
    ld [hl], b                                    ; $565c: $70
    jp $fe7d                                      ; $565d: $c3 $7d $fe


    add e                                         ; $5660: $83
    add d                                         ; $5661: $82
    di                                            ; $5662: $f3
    add e                                         ; $5663: $83
    add d                                         ; $5664: $82
    xor [hl]                                      ; $5665: $ae
    pop hl                                        ; $5666: $e1
    or b                                          ; $5667: $b0
    jp hl                                         ; $5668: $e9


    sub e                                         ; $5669: $93
    sub d                                         ; $566a: $92
    ld b, l                                       ; $566b: $45
    add $e6                                       ; $566c: $c6 $e6
    ldh a, [$eb]                                  ; $566e: $f0 $eb
    ld b, e                                       ; $5670: $43
    jp nz, Jump_03e_4b32                          ; $5671: $c2 $32 $4b

    ld [hl+], a                                   ; $5674: $22
    nop                                           ; $5675: $00
    ldh a, [$8f]                                  ; $5676: $f0 $8f
    ld hl, sp-$01                                 ; $5678: $f8 $ff
    cp e                                          ; $567a: $bb
    call $f4fb                                    ; $567b: $cd $fb $f4
    sub a                                         ; $567e: $97
    ld hl, sp-$41                                 ; $567f: $f8 $bf
    ret z                                         ; $5681: $c8

    rst $38                                       ; $5682: $ff
    cp e                                          ; $5683: $bb
    call z, Call_03e_44bb                         ; $5684: $cc $bb $44
    rst $38                                       ; $5687: $ff
    add b                                         ; $5688: $80
    cp a                                          ; $5689: $bf
    ld b, b                                       ; $568a: $40
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    sub c                                         ; $568d: $91
    or a                                          ; $568e: $b7
    reti                                          ; $568f: $d9


    cp a                                          ; $5690: $bf
    jp z, $cfba                                   ; $5691: $ca $ba $cf

    rst $28                                       ; $5694: $ef
    cp [hl]                                       ; $5695: $be
    push bc                                       ; $5696: $c5
    cp l                                          ; $5697: $bd
    ld b, d                                       ; $5698: $42
    ld [bc], a                                    ; $5699: $02
    ld b, d                                       ; $569a: $42
    jr c, jr_03e_5704                             ; $569b: $38 $67

    sbc h                                         ; $569d: $9c
    rst $38                                       ; $569e: $ff
    ld a, l                                       ; $569f: $7d
    cp [hl]                                       ; $56a0: $be
    push hl                                       ; $56a1: $e5
    ld e, [hl]                                    ; $56a2: $5e
    rst $38                                       ; $56a3: $ff
    ld a, [hl-]                                   ; $56a4: $3a
    ld [c], a                                     ; $56a5: $e2
    dec e                                         ; $56a6: $1d
    rst $28                                       ; $56a7: $ef
    rst $38                                       ; $56a8: $ff
    ret nz                                        ; $56a9: $c0

    rst $18                                       ; $56aa: $df
    ld h, b                                       ; $56ab: $60
    cp $e8                                        ; $56ac: $fe $e8
    jr nz, @+$01                                  ; $56ae: $20 $ff

    add d                                         ; $56b0: $82
    rst $38                                       ; $56b1: $ff
    cp $c7                                        ; $56b2: $fe $c7
    sbc $e7                                       ; $56b4: $de $e7
    cp [hl]                                       ; $56b6: $be
    db $eb                                        ; $56b7: $eb

jr_03e_56b8:
    xor d                                         ; $56b8: $aa
    rst $38                                       ; $56b9: $ff
    cp a                                          ; $56ba: $bf
    cp d                                          ; $56bb: $ba
    rst $10                                       ; $56bc: $d7
    or [hl]                                       ; $56bd: $b6
    res 7, [hl]                                   ; $56be: $cb $be
    ld b, c                                       ; $56c0: $41
    jp nc, Jump_03e_7022                          ; $56c1: $d2 $22 $70

    rst $38                                       ; $56c4: $ff
    rst $08                                       ; $56c5: $cf
    cp b                                          ; $56c6: $b8
    ei                                            ; $56c7: $fb
    db $f4                                        ; $56c8: $f4
    add a                                         ; $56c9: $87
    ld hl, sp-$01                                 ; $56ca: $f8 $ff
    ld [hl], b                                    ; $56cc: $70
    ld l, a                                       ; $56cd: $6f
    rst $00                                       ; $56ce: $c7
    jr c, jr_03e_56b8                             ; $56cf: $38 $e7

    inc h                                         ; $56d1: $24
    cp $e1                                        ; $56d2: $fe $e1
    db $db                                        ; $56d4: $db
    inc a                                         ; $56d5: $3c
    ret nc                                        ; $56d6: $d0

    push bc                                       ; $56d7: $c5
    bit 1, l                                      ; $56d8: $cb $4d
    adc $56                                       ; $56da: $ce $56
    pop hl                                        ; $56dc: $e1
    ld a, l                                       ; $56dd: $7d
    ld h, a                                       ; $56de: $67
    ret nz                                        ; $56df: $c0

    ret nz                                        ; $56e0: $c0

    jp $f273                                      ; $56e1: $c3 $73 $f2


    ld l, a                                       ; $56e4: $6f
    or e                                          ; $56e5: $b3
    or d                                          ; $56e6: $b2
    ld b, l                                       ; $56e7: $45
    add $d0                                       ; $56e8: $c6 $d0
    rst $00                                       ; $56ea: $c7
    jp Jump_000_0642                              ; $56eb: $c3 $42 $06


    ldh [$d3], a                                  ; $56ee: $e0 $d3
    ld [hl-], a                                   ; $56f0: $32
    db $ed                                        ; $56f1: $ed
    adc h                                         ; $56f2: $8c
    and b                                         ; $56f3: $a0
    and b                                         ; $56f4: $a0
    jp $e053                                      ; $56f5: $c3 $53 $e0


    ldh [$85], a                                  ; $56f8: $e0 $85
    add [hl]                                      ; $56fa: $86
    ld a, e                                       ; $56fb: $7b
    ld a, e                                       ; $56fc: $7b
    db $fc                                        ; $56fd: $fc
    sub b                                         ; $56fe: $90
    push bc                                       ; $56ff: $c5
    sub e                                         ; $5700: $93
    sub d                                         ; $5701: $92
    add e                                         ; $5702: $83
    add d                                         ; $5703: $82

jr_03e_5704:
    ret nc                                        ; $5704: $d0

    jp hl                                         ; $5705: $e9


    ld h, e                                       ; $5706: $63
    push hl                                       ; $5707: $e5
    ld h, $a0                                     ; $5708: $26 $a0
    db $eb                                        ; $570a: $eb
    ld a, [bc]                                    ; $570b: $0a
    db $e3                                        ; $570c: $e3
    add b                                         ; $570d: $80
    rst $00                                       ; $570e: $c7
    or e                                          ; $570f: $b3
    ld [hl], d                                    ; $5710: $72
    ld [hl], b                                    ; $5711: $70
    res 2, b                                      ; $5712: $cb $90
    nop                                           ; $5714: $00
    xor $fe                                       ; $5715: $ee $fe
    rst $38                                       ; $5717: $ff
    cp $ff                                        ; $5718: $fe $ff
    ld hl, sp-$08                                 ; $571a: $f8 $f8
    ld h, c                                       ; $571c: $61
    ld [hl+], a                                   ; $571d: $22
    ld b, d                                       ; $571e: $42
    db $10                                        ; $571f: $10
    daa                                           ; $5720: $27
    jp $0a64                                      ; $5721: $c3 $64 $0a


    jr nz, @+$12                                  ; $5724: $20 $10

    add hl, hl                                    ; $5726: $29
    or e                                          ; $5727: $b3
    ld [hl+], a                                   ; $5728: $22
    ld b, b                                       ; $5729: $40
    db $10                                        ; $572a: $10
    add hl, hl                                    ; $572b: $29
    sbc a                                         ; $572c: $9f
    nop                                           ; $572d: $00
    db $10                                        ; $572e: $10
    dec hl                                        ; $572f: $2b
    dec bc                                        ; $5730: $0b
    xor $00                                       ; $5731: $ee $00
    db $10                                        ; $5733: $10
    dec hl                                        ; $5734: $2b
    ld a, $9c                                     ; $5735: $3e $9c
    ld h, b                                       ; $5737: $60
    or b                                          ; $5738: $b0
    add hl, bc                                    ; $5739: $09
    and b                                         ; $573a: $a0
    db $ed                                        ; $573b: $ed
    db $10                                        ; $573c: $10
    and b                                         ; $573d: $a0
    dec sp                                        ; $573e: $3b

jr_03e_573f:
    nop                                           ; $573f: $00
    pop bc                                        ; $5740: $c1
    adc b                                         ; $5741: $88
    ld h, b                                       ; $5742: $60
    db $e3                                        ; $5743: $e3
    nop                                           ; $5744: $00
    sbc h                                         ; $5745: $9c
    cp b                                          ; $5746: $b8
    nop                                           ; $5747: $00
    ld [hl], a                                    ; $5748: $77
    ld bc, $565f                                  ; $5749: $01 $5f $56
    nop                                           ; $574c: $00
    jp hl                                         ; $574d: $e9


    nop                                           ; $574e: $00
    ld l, a                                       ; $574f: $6f
    ld h, d                                       ; $5750: $62
    ld h, b                                       ; $5751: $60
    rst $18                                       ; $5752: $df
    ld [hl], h                                    ; $5753: $74
    ldh [$ee], a                                  ; $5754: $e0 $ee
    ld h, a                                       ; $5756: $67
    ld bc, $00ee                                  ; $5757: $01 $ee $00
    xor c                                         ; $575a: $a9
    db $ec                                        ; $575b: $ec
    ldh [$d1], a                                  ; $575c: $e0 $d1

jr_03e_575e:
    nop                                           ; $575e: $00
    ld h, $7c                                     ; $575f: $26 $7c
    ld c, h                                       ; $5761: $4c
    ld h, b                                       ; $5762: $60
    ld d, a                                       ; $5763: $57
    ld bc, $007f                                  ; $5764: $01 $7f $00
    call nz, Call_000_3f00                        ; $5767: $c4 $00 $3f
    ld b, [hl]                                    ; $576a: $46
    ld h, b                                       ; $576b: $60
    xor e                                         ; $576c: $ab
    ld a, l                                       ; $576d: $7d
    nop                                           ; $576e: $00
    sub e                                         ; $576f: $93
    ld h, e                                       ; $5770: $63
    rst $00                                       ; $5771: $c7
    and h                                         ; $5772: $a4
    ld [hl+], a                                   ; $5773: $22
    inc a                                         ; $5774: $3c
    inc [hl]                                      ; $5775: $34
    ld h, b                                       ; $5776: $60
    ld a, [hl]                                    ; $5777: $7e
    cp d                                          ; $5778: $ba
    ld bc, $9e42                                  ; $5779: $01 $42 $9e
    inc a                                         ; $577c: $3c
    ldh [$df], a                                  ; $577d: $e0 $df
    nop                                           ; $577f: $00
    jr nz, jr_03e_57a0                            ; $5780: $20 $1e

    ld h, b                                       ; $5782: $60
    jr nc, jr_03e_573f                            ; $5783: $30 $ba

    ret nc                                        ; $5785: $d0

    db $e4                                        ; $5786: $e4
    add h                                         ; $5787: $84
    sbc b                                         ; $5788: $98
    add b                                         ; $5789: $80
    jp $fd00                                      ; $578a: $c3 $00 $fd


    ret nc                                        ; $578d: $d0

    ld [c], a                                     ; $578e: $e2
    rra                                           ; $578f: $1f
    rst $38                                       ; $5790: $ff
    ldh [$c4], a                                  ; $5791: $e0 $c4
    dec sp                                        ; $5793: $3b
    di                                            ; $5794: $f3
    inc c                                         ; $5795: $0c
    ld sp, hl                                     ; $5796: $f9
    ld b, $fd                                     ; $5797: $06 $fd
    push af                                       ; $5799: $f5
    ld [bc], a                                    ; $579a: $02
    db $10                                        ; $579b: $10
    db $e4                                        ; $579c: $e4
    sbc [hl]                                      ; $579d: $9e
    ld b, d                                       ; $579e: $42
    ld b, c                                       ; $579f: $41

jr_03e_57a0:
    adc a                                         ; $57a0: $8f
    ld [hl], b                                    ; $57a1: $70
    ld a, b                                       ; $57a2: $78
    add a                                         ; $57a3: $87
    di                                            ; $57a4: $f3
    rst $00                                       ; $57a5: $c7
    jr c, jr_03e_575e                             ; $57a6: $38 $b6

    ld h, c                                       ; $57a8: $61
    ld a, [c]                                     ; $57a9: $f2
    jp nz, $ff0b                                  ; $57aa: $c2 $0b $ff

    dec c                                         ; $57ad: $0d
    ld sp, hl                                     ; $57ae: $f9
    rst $10                                       ; $57af: $d7
    rrca                                          ; $57b0: $0f
    ei                                            ; $57b1: $fb
    dec c                                         ; $57b2: $0d
    cp $e0                                        ; $57b3: $fe $e0
    inc b                                         ; $57b5: $04
    ld [c], a                                     ; $57b6: $e2
    jp nz, $fc47                                  ; $57b7: $c2 $47 $fc

    rst $38                                       ; $57ba: $ff
    xor e                                         ; $57bb: $ab
    dec hl                                        ; $57bc: $2b
    db $fc                                        ; $57bd: $fc
    ld l, e                                       ; $57be: $6b
    cp h                                          ; $57bf: $bc
    ld l, a                                       ; $57c0: $6f
    or a                                          ; $57c1: $b7
    ld l, h                                       ; $57c2: $6c
    db $fd                                        ; $57c3: $fd
    sub e                                         ; $57c4: $93
    jp nc, Jump_000_2cc2                          ; $57c5: $d2 $c2 $2c

    ld sp, hl                                     ; $57c8: $f9
    or a                                          ; $57c9: $b7
    and a                                         ; $57ca: $a7
    ld sp, hl                                     ; $57cb: $f9
    xor a                                         ; $57cc: $af
    rst $18                                       ; $57cd: $df
    pop af                                        ; $57ce: $f1
    xor a                                         ; $57cf: $af
    ld [hl], b                                    ; $57d0: $70
    ld l, a                                       ; $57d1: $6f
    sub b                                         ; $57d2: $90
    jp nz, $e0c2                                  ; $57d3: $c2 $c2 $e0

    sbc a                                         ; $57d6: $9f
    rst $38                                       ; $57d7: $ff
    ld [hl], b                                    ; $57d8: $70
    rst $30                                       ; $57d9: $f7
    add sp, $0f                                   ; $57da: $e8 $0f
    ldh a, [rIE]                                  ; $57dc: $f0 $ff
    ldh [$8f], a                                  ; $57de: $e0 $8f
    rst $38                                       ; $57e0: $ff
    ld [hl], b                                    ; $57e1: $70
    rst $38                                       ; $57e2: $ff
    nop                                           ; $57e3: $00
    rst $18                                       ; $57e4: $df
    ld h, b                                       ; $57e5: $60
    rst $38                                       ; $57e6: $ff
    db $e3                                        ; $57e7: $e3
    adc $7f                                       ; $57e8: $ce $7f
    ld [hl], l                                    ; $57ea: $75
    db $dd                                        ; $57eb: $dd
    ld h, [hl]                                    ; $57ec: $66
    db $dd                                        ; $57ed: $dd
    ld h, [hl]                                    ; $57ee: $66
    rst $38                                       ; $57ef: $ff
    inc sp                                        ; $57f0: $33
    ld b, b                                       ; $57f1: $40
    nop                                           ; $57f2: $00
    cp [hl]                                       ; $57f3: $be
    and b                                         ; $57f4: $a0
    pop bc                                        ; $57f5: $c1

jr_03e_57f6:
    add c                                         ; $57f6: $81
    ld a, a                                       ; $57f7: $7f
    pop bc                                        ; $57f8: $c1
    rst $18                                       ; $57f9: $df
    ld h, c                                       ; $57fa: $61
    cp $e0                                        ; $57fb: $fe $e0
    and b                                         ; $57fd: $a0
    ei                                            ; $57fe: $fb
    ccf                                           ; $57ff: $3f
    ret nz                                        ; $5800: $c0

    sub d                                         ; $5801: $92
    jp nz, Jump_03e_7d05                          ; $5802: $c2 $05 $7d

    and [hl]                                      ; $5805: $a6
    ld l, l                                       ; $5806: $6d
    or [hl]                                       ; $5807: $b6
    cp a                                          ; $5808: $bf
    ld l, l                                       ; $5809: $6d
    or [hl]                                       ; $580a: $b6
    db $fd                                        ; $580b: $fd
    jp c, Jump_03e_6c93                           ; $580c: $da $93 $6c

    ld b, b                                       ; $580f: $40
    and d                                         ; $5810: $a2
    sub [hl]                                      ; $5811: $96
    cp a                                          ; $5812: $bf
    cp l                                          ; $5813: $bd
    db $db                                        ; $5814: $db
    or e                                          ; $5815: $b3
    db $dd                                        ; $5816: $dd
    or a                                          ; $5817: $b7
    reti                                          ; $5818: $d9


    cp $e0                                        ; $5819: $fe $e0
    ld c, b                                       ; $581b: $48
    or $72                                        ; $581c: $f6 $72
    push bc                                       ; $581e: $c5
    ld a, a                                       ; $581f: $7f
    add b                                         ; $5820: $80
    cp $e3                                        ; $5821: $fe $e3
    rst $38                                       ; $5823: $ff
    ld hl, sp-$5d                                 ; $5824: $f8 $a3

jr_03e_5826:
    ld a, h                                       ; $5826: $7c
    xor a                                         ; $5827: $af
    rst $28                                       ; $5828: $ef
    ld sp, $30ef                                  ; $5829: $31 $ef $30
    cp $e4                                        ; $582c: $fe $e4
    db $10                                        ; $582e: $10
    db $10                                        ; $582f: $10
    and d                                         ; $5830: $a2
    adc [hl]                                      ; $5831: $8e
    rst $38                                       ; $5832: $ff
    cp c                                          ; $5833: $b9
    rst $10                                       ; $5834: $d7
    cp a                                          ; $5835: $bf
    sbc $b0                                       ; $5836: $de $b0
    rst $18                                       ; $5838: $df
    cp a                                          ; $5839: $bf
    adc $ff                                       ; $583a: $ce $ff
    cp b                                          ; $583c: $b8
    ld b, a                                       ; $583d: $47
    rst $38                                       ; $583e: $ff
    ld [$0cfb], sp                                ; $583f: $08 $fb $0c
    rst $38                                       ; $5842: $ff
    inc e                                         ; $5843: $1c
    rst $28                                       ; $5844: $ef
    ld sp, hl                                     ; $5845: $f9
    ld c, $7b                                     ; $5846: $0e $7b
    adc h                                         ; $5848: $8c
    ld hl, sp-$20                                 ; $5849: $f8 $e0
    ld b, $fc                                     ; $584b: $06 $fc
    inc bc                                        ; $584d: $03
    ld a, h                                       ; $584e: $7c
    jr nc, jr_03e_57f6                            ; $584f: $30 $a5

    db $e4                                        ; $5851: $e4
    add b                                         ; $5852: $80
    call z, Call_03e_74fb                         ; $5853: $cc $fb $74
    rst $00                                       ; $5856: $c7
    jr c, @+$24                                   ; $5857: $38 $22

    jp nz, Jump_03e_41ff                          ; $5859: $c2 $ff $41

    rst $18                                       ; $585c: $df
    ld l, c                                       ; $585d: $69
    db $db                                        ; $585e: $db
    ld l, l                                       ; $585f: $6d
    db $db                                        ; $5860: $db
    ld l, l                                       ; $5861: $6d
    rst $38                                       ; $5862: $ff
    rst $18                                       ; $5863: $df
    ld [hl], $e4                                  ; $5864: $36 $e4
    dec de                                        ; $5866: $1b
    rst $38                                       ; $5867: $ff
    jr nz, jr_03e_5826                            ; $5868: $20 $bc

    ldh [$65], a                                  ; $586a: $e0 $65
    ld l, a                                       ; $586c: $6f
    or a                                          ; $586d: $b7
    or [hl]                                       ; $586e: $b6
    ld l, h                                       ; $586f: $6c
    or a                                          ; $5870: $b7
    ld a, [hl]                                    ; $5871: $7e
    pop hl                                        ; $5872: $e1
    db $ed                                        ; $5873: $ed
    ld [de], a                                    ; $5874: $12
    ld [bc], a                                    ; $5875: $02
    jp nz, $1d80                                  ; $5876: $c2 $80 $1d

    ld a, a                                       ; $5879: $7f
    jp c, Jump_03e_6c83                           ; $587a: $da $83 $6c

    reti                                          ; $587d: $d9


    ld h, $00                                     ; $587e: $26 $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    rst $38                                       ; $5882: $ff
    ld a, a                                       ; $5883: $7f
    rra                                           ; $5884: $1f
    ld [de], a                                    ; $5885: $12
    ld [hl], b                                    ; $5886: $70
    nop                                           ; $5887: $00
    rst $38                                       ; $5888: $ff
    ld a, a                                       ; $5889: $7f
    or $00                                        ; $588a: $f6 $00
    rra                                           ; $588c: $1f
    ld [de], a                                    ; $588d: $12
    ld l, l                                       ; $588e: $6d
    nop                                           ; $588f: $00
    rst $38                                       ; $5890: $ff
    daa                                           ; $5891: $27
    ld hl, sp+$03                                 ; $5892: $f8 $03
    ld b, h                                       ; $5894: $44
    inc bc                                        ; $5895: $03
    nop                                           ; $5896: $00
    ld [bc], a                                    ; $5897: $02
    ld b, b                                       ; $5898: $40
    ld bc, $1fe0                                  ; $5899: $01 $e0 $1f
    rra                                           ; $589c: $1f
    ld [de], a                                    ; $589d: $12
    or $00                                        ; $589e: $f6 $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    sbc a                                         ; $58a2: $9f
    nop                                           ; $58a3: $00
    sbc a                                         ; $58a4: $9f
    cp e                                          ; $58a5: $bb
    xor [hl]                                      ; $58a6: $ae
    nop                                           ; $58a7: $00
    add b                                         ; $58a8: $80
    ld a, l                                       ; $58a9: $7d
    sbc $7b                                       ; $58aa: $de $7b
    adc [hl]                                      ; $58ac: $8e
    ld a, a                                       ; $58ad: $7f
    add b                                         ; $58ae: $80
    ld a, [hl]                                    ; $58af: $7e
    add b                                         ; $58b0: $80
    ld a, l                                       ; $58b1: $7d
    rra                                           ; $58b2: $1f
    ld [de], a                                    ; $58b3: $12
    rst $38                                       ; $58b4: $ff
    inc de                                        ; $58b5: $13
    or $00                                        ; $58b6: $f6 $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    add b                                         ; $58ba: $80
    ld a, [hl]                                    ; $58bb: $7e
    rra                                           ; $58bc: $1f
    ld [de], a                                    ; $58bd: $12
    or $00                                        ; $58be: $f6 $00
    add b                                         ; $58c0: $80
    ld a, l                                       ; $58c1: $7d
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    dec c                                         ; $58d0: $0d
    dec c                                         ; $58d1: $0d
    dec c                                         ; $58d2: $0d
    dec c                                         ; $58d3: $0d
    dec c                                         ; $58d4: $0d
    dec c                                         ; $58d5: $0d
    dec c                                         ; $58d6: $0d
    dec c                                         ; $58d7: $0d
    dec c                                         ; $58d8: $0d
    dec c                                         ; $58d9: $0d
    dec c                                         ; $58da: $0d
    dec c                                         ; $58db: $0d
    dec c                                         ; $58dc: $0d
    dec c                                         ; $58dd: $0d
    dec c                                         ; $58de: $0d
    dec c                                         ; $58df: $0d
    dec c                                         ; $58e0: $0d
    dec c                                         ; $58e1: $0d
    dec c                                         ; $58e2: $0d
    dec c                                         ; $58e3: $0d
    dec bc                                        ; $58e4: $0b
    dec bc                                        ; $58e5: $0b
    dec bc                                        ; $58e6: $0b
    dec bc                                        ; $58e7: $0b
    dec bc                                        ; $58e8: $0b
    dec bc                                        ; $58e9: $0b
    dec bc                                        ; $58ea: $0b
    dec bc                                        ; $58eb: $0b
    dec bc                                        ; $58ec: $0b
    dec bc                                        ; $58ed: $0b
    dec bc                                        ; $58ee: $0b
    dec hl                                        ; $58ef: $2b
    dec c                                         ; $58f0: $0d
    dec c                                         ; $58f1: $0d
    dec c                                         ; $58f2: $0d
    dec c                                         ; $58f3: $0d
    dec c                                         ; $58f4: $0d
    dec c                                         ; $58f5: $0d
    dec c                                         ; $58f6: $0d
    dec c                                         ; $58f7: $0d
    dec c                                         ; $58f8: $0d
    dec c                                         ; $58f9: $0d
    dec c                                         ; $58fa: $0d
    dec c                                         ; $58fb: $0d
    dec c                                         ; $58fc: $0d
    dec c                                         ; $58fd: $0d
    dec c                                         ; $58fe: $0d
    dec c                                         ; $58ff: $0d
    dec c                                         ; $5900: $0d
    dec c                                         ; $5901: $0d
    dec c                                         ; $5902: $0d
    dec c                                         ; $5903: $0d
    dec bc                                        ; $5904: $0b
    dec bc                                        ; $5905: $0b
    dec bc                                        ; $5906: $0b
    dec bc                                        ; $5907: $0b
    dec bc                                        ; $5908: $0b
    dec bc                                        ; $5909: $0b
    dec bc                                        ; $590a: $0b
    dec bc                                        ; $590b: $0b
    dec bc                                        ; $590c: $0b
    dec bc                                        ; $590d: $0b
    dec bc                                        ; $590e: $0b
    dec bc                                        ; $590f: $0b
    dec c                                         ; $5910: $0d
    rrca                                          ; $5911: $0f
    ld c, $0e                                     ; $5912: $0e $0e
    ld c, $0e                                     ; $5914: $0e $0e
    ld c, $0e                                     ; $5916: $0e $0e
    ld c, $0e                                     ; $5918: $0e $0e
    rrca                                          ; $591a: $0f
    dec c                                         ; $591b: $0d
    dec c                                         ; $591c: $0d
    inc c                                         ; $591d: $0c
    inc c                                         ; $591e: $0c
    inc c                                         ; $591f: $0c
    dec c                                         ; $5920: $0d
    dec c                                         ; $5921: $0d
    dec c                                         ; $5922: $0d
    dec c                                         ; $5923: $0d
    dec bc                                        ; $5924: $0b
    dec bc                                        ; $5925: $0b
    dec bc                                        ; $5926: $0b
    dec bc                                        ; $5927: $0b
    dec bc                                        ; $5928: $0b
    dec bc                                        ; $5929: $0b
    dec bc                                        ; $592a: $0b
    dec bc                                        ; $592b: $0b
    dec bc                                        ; $592c: $0b
    dec bc                                        ; $592d: $0b
    dec bc                                        ; $592e: $0b
    dec bc                                        ; $592f: $0b
    dec c                                         ; $5930: $0d
    dec bc                                        ; $5931: $0b
    ld c, $0e                                     ; $5932: $0e $0e
    ld c, $0e                                     ; $5934: $0e $0e
    ld c, $0e                                     ; $5936: $0e $0e
    ld c, $0e                                     ; $5938: $0e $0e
    dec bc                                        ; $593a: $0b
    dec c                                         ; $593b: $0d
    dec c                                         ; $593c: $0d
    inc c                                         ; $593d: $0c
    inc c                                         ; $593e: $0c
    inc c                                         ; $593f: $0c
    rrca                                          ; $5940: $0f
    rrca                                          ; $5941: $0f
    dec c                                         ; $5942: $0d
    dec c                                         ; $5943: $0d
    dec bc                                        ; $5944: $0b
    dec bc                                        ; $5945: $0b
    dec bc                                        ; $5946: $0b
    dec bc                                        ; $5947: $0b
    dec bc                                        ; $5948: $0b
    dec bc                                        ; $5949: $0b
    dec bc                                        ; $594a: $0b
    dec bc                                        ; $594b: $0b
    dec bc                                        ; $594c: $0b
    dec bc                                        ; $594d: $0b
    dec bc                                        ; $594e: $0b
    dec bc                                        ; $594f: $0b
    dec c                                         ; $5950: $0d
    dec bc                                        ; $5951: $0b
    dec bc                                        ; $5952: $0b
    dec bc                                        ; $5953: $0b
    dec bc                                        ; $5954: $0b
    dec bc                                        ; $5955: $0b
    dec bc                                        ; $5956: $0b
    dec bc                                        ; $5957: $0b
    dec bc                                        ; $5958: $0b
    dec bc                                        ; $5959: $0b
    dec bc                                        ; $595a: $0b
    dec bc                                        ; $595b: $0b
    dec bc                                        ; $595c: $0b
    dec bc                                        ; $595d: $0b
    dec bc                                        ; $595e: $0b
    dec bc                                        ; $595f: $0b
    dec bc                                        ; $5960: $0b
    rrca                                          ; $5961: $0f
    rrca                                          ; $5962: $0f
    dec c                                         ; $5963: $0d
    dec bc                                        ; $5964: $0b
    dec bc                                        ; $5965: $0b
    dec bc                                        ; $5966: $0b
    dec bc                                        ; $5967: $0b
    dec bc                                        ; $5968: $0b
    dec bc                                        ; $5969: $0b
    dec bc                                        ; $596a: $0b
    dec bc                                        ; $596b: $0b
    dec bc                                        ; $596c: $0b
    dec bc                                        ; $596d: $0b
    dec bc                                        ; $596e: $0b
    dec bc                                        ; $596f: $0b
    dec c                                         ; $5970: $0d
    dec bc                                        ; $5971: $0b
    add hl, bc                                    ; $5972: $09
    dec bc                                        ; $5973: $0b
    dec bc                                        ; $5974: $0b
    dec bc                                        ; $5975: $0b
    dec bc                                        ; $5976: $0b
    dec bc                                        ; $5977: $0b
    dec bc                                        ; $5978: $0b
    dec bc                                        ; $5979: $0b
    add hl, bc                                    ; $597a: $09
    add hl, bc                                    ; $597b: $09
    add hl, bc                                    ; $597c: $09
    add hl, bc                                    ; $597d: $09
    add hl, bc                                    ; $597e: $09
    add hl, bc                                    ; $597f: $09
    dec bc                                        ; $5980: $0b
    dec bc                                        ; $5981: $0b
    dec bc                                        ; $5982: $0b
    dec c                                         ; $5983: $0d
    dec bc                                        ; $5984: $0b
    dec bc                                        ; $5985: $0b
    dec bc                                        ; $5986: $0b
    dec bc                                        ; $5987: $0b
    dec bc                                        ; $5988: $0b
    dec bc                                        ; $5989: $0b
    dec bc                                        ; $598a: $0b
    dec bc                                        ; $598b: $0b
    dec bc                                        ; $598c: $0b
    dec bc                                        ; $598d: $0b
    dec bc                                        ; $598e: $0b
    dec hl                                        ; $598f: $2b
    dec c                                         ; $5990: $0d
    dec bc                                        ; $5991: $0b
    add hl, bc                                    ; $5992: $09
    add hl, bc                                    ; $5993: $09
    add hl, bc                                    ; $5994: $09
    add hl, bc                                    ; $5995: $09
    add hl, bc                                    ; $5996: $09
    add hl, bc                                    ; $5997: $09
    add hl, bc                                    ; $5998: $09
    add hl, bc                                    ; $5999: $09
    add hl, bc                                    ; $599a: $09
    add hl, bc                                    ; $599b: $09
    add hl, bc                                    ; $599c: $09
    add hl, bc                                    ; $599d: $09
    add hl, bc                                    ; $599e: $09
    add hl, bc                                    ; $599f: $09
    add hl, bc                                    ; $59a0: $09
    dec bc                                        ; $59a1: $0b
    dec bc                                        ; $59a2: $0b
    dec c                                         ; $59a3: $0d
    dec bc                                        ; $59a4: $0b
    dec bc                                        ; $59a5: $0b
    dec bc                                        ; $59a6: $0b
    dec bc                                        ; $59a7: $0b
    dec bc                                        ; $59a8: $0b
    dec bc                                        ; $59a9: $0b
    dec bc                                        ; $59aa: $0b
    dec bc                                        ; $59ab: $0b
    dec bc                                        ; $59ac: $0b
    dec bc                                        ; $59ad: $0b
    dec bc                                        ; $59ae: $0b
    dec hl                                        ; $59af: $2b
    dec c                                         ; $59b0: $0d
    dec bc                                        ; $59b1: $0b
    add hl, bc                                    ; $59b2: $09
    add hl, bc                                    ; $59b3: $09
    add hl, bc                                    ; $59b4: $09
    add hl, bc                                    ; $59b5: $09
    add hl, bc                                    ; $59b6: $09
    add hl, bc                                    ; $59b7: $09
    add hl, bc                                    ; $59b8: $09
    add hl, bc                                    ; $59b9: $09
    add hl, bc                                    ; $59ba: $09
    add hl, bc                                    ; $59bb: $09
    add hl, bc                                    ; $59bc: $09
    add hl, bc                                    ; $59bd: $09
    add hl, bc                                    ; $59be: $09
    add hl, bc                                    ; $59bf: $09
    add hl, bc                                    ; $59c0: $09
    add hl, bc                                    ; $59c1: $09
    add hl, bc                                    ; $59c2: $09
    dec c                                         ; $59c3: $0d
    dec bc                                        ; $59c4: $0b
    dec bc                                        ; $59c5: $0b
    dec bc                                        ; $59c6: $0b
    dec bc                                        ; $59c7: $0b
    dec bc                                        ; $59c8: $0b
    dec bc                                        ; $59c9: $0b
    dec bc                                        ; $59ca: $0b
    dec bc                                        ; $59cb: $0b
    dec bc                                        ; $59cc: $0b
    dec bc                                        ; $59cd: $0b
    dec bc                                        ; $59ce: $0b
    dec hl                                        ; $59cf: $2b
    dec c                                         ; $59d0: $0d
    dec bc                                        ; $59d1: $0b
    add hl, bc                                    ; $59d2: $09
    add hl, bc                                    ; $59d3: $09
    add hl, bc                                    ; $59d4: $09
    add hl, bc                                    ; $59d5: $09
    add hl, bc                                    ; $59d6: $09
    add hl, bc                                    ; $59d7: $09
    add hl, bc                                    ; $59d8: $09
    add hl, bc                                    ; $59d9: $09
    add hl, bc                                    ; $59da: $09
    add hl, bc                                    ; $59db: $09
    add hl, bc                                    ; $59dc: $09
    add hl, bc                                    ; $59dd: $09
    add hl, bc                                    ; $59de: $09
    add hl, bc                                    ; $59df: $09
    add hl, bc                                    ; $59e0: $09
    add hl, bc                                    ; $59e1: $09
    add hl, bc                                    ; $59e2: $09
    dec c                                         ; $59e3: $0d
    dec bc                                        ; $59e4: $0b
    dec bc                                        ; $59e5: $0b
    dec bc                                        ; $59e6: $0b
    dec bc                                        ; $59e7: $0b
    dec bc                                        ; $59e8: $0b
    dec bc                                        ; $59e9: $0b
    dec bc                                        ; $59ea: $0b
    dec bc                                        ; $59eb: $0b
    dec bc                                        ; $59ec: $0b
    dec bc                                        ; $59ed: $0b
    dec bc                                        ; $59ee: $0b
    dec bc                                        ; $59ef: $0b
    dec c                                         ; $59f0: $0d
    dec bc                                        ; $59f1: $0b
    add hl, bc                                    ; $59f2: $09
    add hl, bc                                    ; $59f3: $09
    add hl, bc                                    ; $59f4: $09
    add hl, bc                                    ; $59f5: $09
    add hl, bc                                    ; $59f6: $09
    add hl, bc                                    ; $59f7: $09
    add hl, bc                                    ; $59f8: $09
    add hl, bc                                    ; $59f9: $09
    add hl, bc                                    ; $59fa: $09
    add hl, bc                                    ; $59fb: $09
    add hl, bc                                    ; $59fc: $09
    add hl, bc                                    ; $59fd: $09
    add hl, bc                                    ; $59fe: $09
    add hl, bc                                    ; $59ff: $09
    add hl, bc                                    ; $5a00: $09
    add hl, bc                                    ; $5a01: $09
    add hl, bc                                    ; $5a02: $09
    dec c                                         ; $5a03: $0d
    dec bc                                        ; $5a04: $0b
    dec bc                                        ; $5a05: $0b
    dec bc                                        ; $5a06: $0b
    dec bc                                        ; $5a07: $0b
    dec bc                                        ; $5a08: $0b
    dec bc                                        ; $5a09: $0b
    dec bc                                        ; $5a0a: $0b
    dec bc                                        ; $5a0b: $0b
    dec bc                                        ; $5a0c: $0b
    dec bc                                        ; $5a0d: $0b
    dec bc                                        ; $5a0e: $0b
    dec bc                                        ; $5a0f: $0b
    dec c                                         ; $5a10: $0d
    dec bc                                        ; $5a11: $0b
    add hl, bc                                    ; $5a12: $09
    add hl, bc                                    ; $5a13: $09
    add hl, bc                                    ; $5a14: $09
    add hl, bc                                    ; $5a15: $09
    add hl, bc                                    ; $5a16: $09
    add hl, bc                                    ; $5a17: $09
    add hl, bc                                    ; $5a18: $09
    add hl, bc                                    ; $5a19: $09
    add hl, bc                                    ; $5a1a: $09
    add hl, bc                                    ; $5a1b: $09
    add hl, bc                                    ; $5a1c: $09
    add hl, bc                                    ; $5a1d: $09
    add hl, bc                                    ; $5a1e: $09
    add hl, bc                                    ; $5a1f: $09
    add hl, bc                                    ; $5a20: $09
    add hl, bc                                    ; $5a21: $09
    dec bc                                        ; $5a22: $0b
    dec c                                         ; $5a23: $0d
    dec bc                                        ; $5a24: $0b
    dec bc                                        ; $5a25: $0b
    dec bc                                        ; $5a26: $0b
    dec bc                                        ; $5a27: $0b
    dec bc                                        ; $5a28: $0b
    dec bc                                        ; $5a29: $0b
    dec bc                                        ; $5a2a: $0b
    dec bc                                        ; $5a2b: $0b
    dec bc                                        ; $5a2c: $0b
    dec bc                                        ; $5a2d: $0b
    dec bc                                        ; $5a2e: $0b
    dec bc                                        ; $5a2f: $0b
    ld [$090b], sp                                ; $5a30: $08 $0b $09
    add hl, bc                                    ; $5a33: $09
    add hl, bc                                    ; $5a34: $09
    add hl, bc                                    ; $5a35: $09
    add hl, bc                                    ; $5a36: $09
    add hl, bc                                    ; $5a37: $09
    add hl, bc                                    ; $5a38: $09
    add hl, bc                                    ; $5a39: $09
    add hl, bc                                    ; $5a3a: $09
    add hl, bc                                    ; $5a3b: $09
    add hl, bc                                    ; $5a3c: $09
    add hl, bc                                    ; $5a3d: $09
    add hl, bc                                    ; $5a3e: $09
    add hl, bc                                    ; $5a3f: $09
    add hl, bc                                    ; $5a40: $09
    dec bc                                        ; $5a41: $0b
    dec bc                                        ; $5a42: $0b
    ld [$0b0b], sp                                ; $5a43: $08 $0b $0b
    dec bc                                        ; $5a46: $0b
    dec bc                                        ; $5a47: $0b
    dec bc                                        ; $5a48: $0b
    dec bc                                        ; $5a49: $0b
    dec bc                                        ; $5a4a: $0b
    dec bc                                        ; $5a4b: $0b
    dec bc                                        ; $5a4c: $0b
    dec bc                                        ; $5a4d: $0b
    dec bc                                        ; $5a4e: $0b
    dec bc                                        ; $5a4f: $0b
    ld a, [bc]                                    ; $5a50: $0a
    dec bc                                        ; $5a51: $0b
    add hl, bc                                    ; $5a52: $09
    add hl, bc                                    ; $5a53: $09
    add hl, bc                                    ; $5a54: $09
    add hl, bc                                    ; $5a55: $09
    add hl, bc                                    ; $5a56: $09
    add hl, bc                                    ; $5a57: $09
    add hl, bc                                    ; $5a58: $09
    add hl, bc                                    ; $5a59: $09
    add hl, bc                                    ; $5a5a: $09
    add hl, bc                                    ; $5a5b: $09
    add hl, bc                                    ; $5a5c: $09
    add hl, bc                                    ; $5a5d: $09
    add hl, bc                                    ; $5a5e: $09
    add hl, bc                                    ; $5a5f: $09
    add hl, bc                                    ; $5a60: $09
    add hl, bc                                    ; $5a61: $09
    add hl, bc                                    ; $5a62: $09
    ld a, [bc]                                    ; $5a63: $0a
    dec bc                                        ; $5a64: $0b
    dec bc                                        ; $5a65: $0b
    dec bc                                        ; $5a66: $0b
    dec bc                                        ; $5a67: $0b
    dec bc                                        ; $5a68: $0b
    dec bc                                        ; $5a69: $0b
    dec bc                                        ; $5a6a: $0b
    dec bc                                        ; $5a6b: $0b
    dec bc                                        ; $5a6c: $0b
    dec bc                                        ; $5a6d: $0b
    dec bc                                        ; $5a6e: $0b
    dec bc                                        ; $5a6f: $0b
    ld a, [bc]                                    ; $5a70: $0a
    dec bc                                        ; $5a71: $0b
    add hl, bc                                    ; $5a72: $09
    add hl, bc                                    ; $5a73: $09
    add hl, bc                                    ; $5a74: $09
    add hl, bc                                    ; $5a75: $09
    add hl, bc                                    ; $5a76: $09
    add hl, bc                                    ; $5a77: $09
    add hl, bc                                    ; $5a78: $09
    add hl, bc                                    ; $5a79: $09
    add hl, bc                                    ; $5a7a: $09
    add hl, bc                                    ; $5a7b: $09
    add hl, bc                                    ; $5a7c: $09
    add hl, bc                                    ; $5a7d: $09
    add hl, bc                                    ; $5a7e: $09
    add hl, bc                                    ; $5a7f: $09
    add hl, bc                                    ; $5a80: $09
    add hl, bc                                    ; $5a81: $09
    add hl, bc                                    ; $5a82: $09
    ld a, [bc]                                    ; $5a83: $0a
    dec bc                                        ; $5a84: $0b
    dec bc                                        ; $5a85: $0b
    dec bc                                        ; $5a86: $0b
    dec bc                                        ; $5a87: $0b
    dec bc                                        ; $5a88: $0b
    dec bc                                        ; $5a89: $0b
    dec bc                                        ; $5a8a: $0b
    dec bc                                        ; $5a8b: $0b
    dec bc                                        ; $5a8c: $0b
    dec bc                                        ; $5a8d: $0b
    dec bc                                        ; $5a8e: $0b
    dec bc                                        ; $5a8f: $0b
    ld a, [bc]                                    ; $5a90: $0a
    dec bc                                        ; $5a91: $0b
    add hl, bc                                    ; $5a92: $09
    add hl, bc                                    ; $5a93: $09
    add hl, bc                                    ; $5a94: $09
    add hl, bc                                    ; $5a95: $09
    add hl, bc                                    ; $5a96: $09
    add hl, bc                                    ; $5a97: $09
    add hl, bc                                    ; $5a98: $09
    add hl, bc                                    ; $5a99: $09
    add hl, bc                                    ; $5a9a: $09
    add hl, bc                                    ; $5a9b: $09
    add hl, bc                                    ; $5a9c: $09
    add hl, bc                                    ; $5a9d: $09
    add hl, bc                                    ; $5a9e: $09
    add hl, bc                                    ; $5a9f: $09
    add hl, bc                                    ; $5aa0: $09
    add hl, bc                                    ; $5aa1: $09
    add hl, bc                                    ; $5aa2: $09
    ld a, [bc]                                    ; $5aa3: $0a
    dec bc                                        ; $5aa4: $0b
    dec bc                                        ; $5aa5: $0b
    dec bc                                        ; $5aa6: $0b
    dec bc                                        ; $5aa7: $0b
    dec bc                                        ; $5aa8: $0b
    dec bc                                        ; $5aa9: $0b
    dec bc                                        ; $5aaa: $0b
    dec bc                                        ; $5aab: $0b
    dec bc                                        ; $5aac: $0b
    dec bc                                        ; $5aad: $0b
    dec bc                                        ; $5aae: $0b
    dec bc                                        ; $5aaf: $0b
    ld a, [bc]                                    ; $5ab0: $0a
    dec bc                                        ; $5ab1: $0b
    add hl, bc                                    ; $5ab2: $09
    add hl, bc                                    ; $5ab3: $09
    add hl, bc                                    ; $5ab4: $09
    add hl, bc                                    ; $5ab5: $09
    add hl, bc                                    ; $5ab6: $09
    add hl, bc                                    ; $5ab7: $09
    add hl, bc                                    ; $5ab8: $09
    add hl, bc                                    ; $5ab9: $09
    add hl, bc                                    ; $5aba: $09
    add hl, bc                                    ; $5abb: $09
    add hl, bc                                    ; $5abc: $09
    add hl, bc                                    ; $5abd: $09
    add hl, bc                                    ; $5abe: $09
    add hl, bc                                    ; $5abf: $09
    add hl, bc                                    ; $5ac0: $09
    add hl, bc                                    ; $5ac1: $09
    dec bc                                        ; $5ac2: $0b
    ld a, [bc]                                    ; $5ac3: $0a
    dec bc                                        ; $5ac4: $0b
    dec bc                                        ; $5ac5: $0b
    dec bc                                        ; $5ac6: $0b
    dec bc                                        ; $5ac7: $0b
    dec bc                                        ; $5ac8: $0b
    dec bc                                        ; $5ac9: $0b
    dec bc                                        ; $5aca: $0b
    dec bc                                        ; $5acb: $0b
    dec bc                                        ; $5acc: $0b
    dec bc                                        ; $5acd: $0b
    dec bc                                        ; $5ace: $0b
    dec bc                                        ; $5acf: $0b
    ld a, [bc]                                    ; $5ad0: $0a
    ld a, [bc]                                    ; $5ad1: $0a
    ld a, [bc]                                    ; $5ad2: $0a
    ld a, [bc]                                    ; $5ad3: $0a
    ld a, [bc]                                    ; $5ad4: $0a
    ld a, [bc]                                    ; $5ad5: $0a
    ld a, [bc]                                    ; $5ad6: $0a
    ld a, [bc]                                    ; $5ad7: $0a
    ld a, [bc]                                    ; $5ad8: $0a
    ld a, [bc]                                    ; $5ad9: $0a
    ld a, [bc]                                    ; $5ada: $0a
    ld a, [bc]                                    ; $5adb: $0a
    ld a, [bc]                                    ; $5adc: $0a
    ld a, [bc]                                    ; $5add: $0a
    ld a, [bc]                                    ; $5ade: $0a
    ld a, [bc]                                    ; $5adf: $0a
    ld a, [bc]                                    ; $5ae0: $0a
    ld a, [bc]                                    ; $5ae1: $0a
    ld a, [bc]                                    ; $5ae2: $0a
    ld a, [bc]                                    ; $5ae3: $0a
    ld c, e                                       ; $5ae4: $4b
    dec bc                                        ; $5ae5: $0b
    dec bc                                        ; $5ae6: $0b
    dec bc                                        ; $5ae7: $0b
    dec bc                                        ; $5ae8: $0b
    dec bc                                        ; $5ae9: $0b
    dec bc                                        ; $5aea: $0b
    dec bc                                        ; $5aeb: $0b
    dec bc                                        ; $5aec: $0b
    dec bc                                        ; $5aed: $0b
    dec bc                                        ; $5aee: $0b
    dec bc                                        ; $5aef: $0b
    ld a, [bc]                                    ; $5af0: $0a
    ld a, [bc]                                    ; $5af1: $0a
    ld a, [bc]                                    ; $5af2: $0a
    ld a, [bc]                                    ; $5af3: $0a
    ld a, [bc]                                    ; $5af4: $0a
    ld a, [bc]                                    ; $5af5: $0a
    ld a, [bc]                                    ; $5af6: $0a
    ld a, [bc]                                    ; $5af7: $0a
    ld a, [bc]                                    ; $5af8: $0a
    ld a, [bc]                                    ; $5af9: $0a
    ld a, [bc]                                    ; $5afa: $0a
    ld a, [bc]                                    ; $5afb: $0a
    ld a, [bc]                                    ; $5afc: $0a
    ld a, [bc]                                    ; $5afd: $0a
    ld a, [bc]                                    ; $5afe: $0a
    ld a, [bc]                                    ; $5aff: $0a
    ld a, [bc]                                    ; $5b00: $0a
    ld a, [bc]                                    ; $5b01: $0a
    ld a, [bc]                                    ; $5b02: $0a
    ld a, [bc]                                    ; $5b03: $0a
    dec bc                                        ; $5b04: $0b
    dec bc                                        ; $5b05: $0b
    dec bc                                        ; $5b06: $0b
    dec bc                                        ; $5b07: $0b
    dec bc                                        ; $5b08: $0b
    dec bc                                        ; $5b09: $0b
    dec bc                                        ; $5b0a: $0b
    dec bc                                        ; $5b0b: $0b
    dec bc                                        ; $5b0c: $0b
    dec bc                                        ; $5b0d: $0b
    dec bc                                        ; $5b0e: $0b
    dec bc                                        ; $5b0f: $0b
    ld c, [hl]                                    ; $5b10: $4e
    ld c, [hl]                                    ; $5b11: $4e
    ld c, [hl]                                    ; $5b12: $4e
    ld c, [hl]                                    ; $5b13: $4e
    ld c, [hl]                                    ; $5b14: $4e
    ld c, [hl]                                    ; $5b15: $4e
    ld c, [hl]                                    ; $5b16: $4e
    ld c, [hl]                                    ; $5b17: $4e
    ld c, [hl]                                    ; $5b18: $4e
    ld c, [hl]                                    ; $5b19: $4e
    ld c, [hl]                                    ; $5b1a: $4e
    ld c, [hl]                                    ; $5b1b: $4e
    ld c, [hl]                                    ; $5b1c: $4e
    ld c, [hl]                                    ; $5b1d: $4e
    ld c, [hl]                                    ; $5b1e: $4e
    ld c, [hl]                                    ; $5b1f: $4e
    ld c, [hl]                                    ; $5b20: $4e
    ld c, [hl]                                    ; $5b21: $4e
    ld c, [hl]                                    ; $5b22: $4e
    ld c, [hl]                                    ; $5b23: $4e
    ld c, h                                       ; $5b24: $4c
    ld c, h                                       ; $5b25: $4c
    ld c, h                                       ; $5b26: $4c
    ld c, h                                       ; $5b27: $4c
    ld c, h                                       ; $5b28: $4c
    ld c, h                                       ; $5b29: $4c
    ld c, h                                       ; $5b2a: $4c
    ld c, h                                       ; $5b2b: $4c
    ld c, h                                       ; $5b2c: $4c
    ld c, h                                       ; $5b2d: $4c
    ld c, h                                       ; $5b2e: $4c
    nop                                           ; $5b2f: $00
    ld c, [hl]                                    ; $5b30: $4e
    ld c, [hl]                                    ; $5b31: $4e
    ld c, [hl]                                    ; $5b32: $4e
    ld c, [hl]                                    ; $5b33: $4e
    ld c, [hl]                                    ; $5b34: $4e
    ld c, [hl]                                    ; $5b35: $4e
    ld c, [hl]                                    ; $5b36: $4e
    ld c, [hl]                                    ; $5b37: $4e
    ld c, [hl]                                    ; $5b38: $4e
    ld c, [hl]                                    ; $5b39: $4e
    ld c, [hl]                                    ; $5b3a: $4e
    ld c, [hl]                                    ; $5b3b: $4e
    ld c, [hl]                                    ; $5b3c: $4e
    ld c, [hl]                                    ; $5b3d: $4e
    ld c, [hl]                                    ; $5b3e: $4e
    ld c, [hl]                                    ; $5b3f: $4e
    ld c, [hl]                                    ; $5b40: $4e
    ld c, [hl]                                    ; $5b41: $4e
    ld c, [hl]                                    ; $5b42: $4e
    ld c, [hl]                                    ; $5b43: $4e
    ld c, h                                       ; $5b44: $4c
    ld c, h                                       ; $5b45: $4c
    ld c, h                                       ; $5b46: $4c
    ld c, h                                       ; $5b47: $4c
    ld c, h                                       ; $5b48: $4c
    ld c, h                                       ; $5b49: $4c
    ld c, h                                       ; $5b4a: $4c
    ld c, h                                       ; $5b4b: $4c
    ld c, h                                       ; $5b4c: $4c
    ld c, h                                       ; $5b4d: $4c
    ld c, h                                       ; $5b4e: $4c
    ld c, h                                       ; $5b4f: $4c
    ld c, [hl]                                    ; $5b50: $4e
    cpl                                           ; $5b51: $2f
    and b                                         ; $5b52: $a0
    and c                                         ; $5b53: $a1
    and d                                         ; $5b54: $a2
    and e                                         ; $5b55: $a3
    and h                                         ; $5b56: $a4
    and l                                         ; $5b57: $a5
    and [hl]                                      ; $5b58: $a6
    and a                                         ; $5b59: $a7
    ccf                                           ; $5b5a: $3f
    ld c, [hl]                                    ; $5b5b: $4e
    ld c, [hl]                                    ; $5b5c: $4e
    inc sp                                        ; $5b5d: $33
    inc [hl]                                      ; $5b5e: $34
    dec [hl]                                      ; $5b5f: $35
    ld c, [hl]                                    ; $5b60: $4e
    ld c, [hl]                                    ; $5b61: $4e
    ld c, [hl]                                    ; $5b62: $4e
    ld c, [hl]                                    ; $5b63: $4e
    ld c, h                                       ; $5b64: $4c
    ld c, h                                       ; $5b65: $4c
    ld c, h                                       ; $5b66: $4c
    ld c, h                                       ; $5b67: $4c
    ld c, h                                       ; $5b68: $4c
    ld c, h                                       ; $5b69: $4c
    ld c, h                                       ; $5b6a: $4c
    ld c, h                                       ; $5b6b: $4c
    ld c, h                                       ; $5b6c: $4c
    ld c, h                                       ; $5b6d: $4c
    ld c, h                                       ; $5b6e: $4c
    ld c, h                                       ; $5b6f: $4c
    ld l, [hl]                                    ; $5b70: $6e
    db $10                                        ; $5b71: $10
    or b                                          ; $5b72: $b0
    or c                                          ; $5b73: $b1
    or d                                          ; $5b74: $b2
    or e                                          ; $5b75: $b3
    or h                                          ; $5b76: $b4
    or l                                          ; $5b77: $b5
    or [hl]                                       ; $5b78: $b6
    or a                                          ; $5b79: $b7
    ld e, e                                       ; $5b7a: $5b
    ld l, [hl]                                    ; $5b7b: $6e
    ld l, [hl]                                    ; $5b7c: $6e
    ld b, e                                       ; $5b7d: $43
    ld b, h                                       ; $5b7e: $44
    ld b, l                                       ; $5b7f: $45
    ld a, c                                       ; $5b80: $79
    ld a, d                                       ; $5b81: $7a
    ld l, [hl]                                    ; $5b82: $6e
    ld l, [hl]                                    ; $5b83: $6e
    ld c, h                                       ; $5b84: $4c
    ld c, h                                       ; $5b85: $4c
    ld c, h                                       ; $5b86: $4c
    ld c, h                                       ; $5b87: $4c
    ld c, h                                       ; $5b88: $4c
    ld c, h                                       ; $5b89: $4c
    ld c, h                                       ; $5b8a: $4c
    ld c, h                                       ; $5b8b: $4c
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    ld c, h                                       ; $5b8e: $4c
    ld c, h                                       ; $5b8f: $4c
    ld a, [hl]                                    ; $5b90: $7e
    jr nz, @+$23                                  ; $5b91: $20 $21

    xor c                                         ; $5b93: $a9
    xor d                                         ; $5b94: $aa
    xor e                                         ; $5b95: $ab
    xor h                                         ; $5b96: $ac
    xor l                                         ; $5b97: $ad
    xor l                                         ; $5b98: $ad
    xor [hl]                                      ; $5b99: $ae
    inc h                                         ; $5b9a: $24
    rlca                                          ; $5b9b: $07
    dec b                                         ; $5b9c: $05
    dec b                                         ; $5b9d: $05
    ld b, [hl]                                    ; $5b9e: $46
    ld b, a                                       ; $5b9f: $47
    adc c                                         ; $5ba0: $89
    adc d                                         ; $5ba1: $8a
    ld c, a                                       ; $5ba2: $4f
    ld a, [hl]                                    ; $5ba3: $7e
    ld c, h                                       ; $5ba4: $4c
    ld c, h                                       ; $5ba5: $4c
    ld c, h                                       ; $5ba6: $4c
    ld c, h                                       ; $5ba7: $4c
    ld c, h                                       ; $5ba8: $4c
    ld c, h                                       ; $5ba9: $4c

jr_03e_5baa:
    ld c, h                                       ; $5baa: $4c
    ld c, h                                       ; $5bab: $4c
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    ld c, h                                       ; $5bae: $4c
    ld c, h                                       ; $5baf: $4c
    adc [hl]                                      ; $5bb0: $8e
    ld d, b                                       ; $5bb1: $50
    ld [$bab9], a                                 ; $5bb2: $ea $b9 $ba
    cp e                                          ; $5bb5: $bb
    cp h                                          ; $5bb6: $bc
    cp l                                          ; $5bb7: $bd
    cp l                                          ; $5bb8: $bd
    cp [hl]                                       ; $5bb9: $be
    rst $20                                       ; $5bba: $e7
    add sp, -$17                                  ; $5bbb: $e8 $e9
    ld [$eceb], a                                 ; $5bbd: $ea $eb $ec
    add hl, bc                                    ; $5bc0: $09

jr_03e_5bc1:
    dec d                                         ; $5bc1: $15
    dec de                                        ; $5bc2: $1b
    adc [hl]                                      ; $5bc3: $8e
    ld c, h                                       ; $5bc4: $4c
    ld c, h                                       ; $5bc5: $4c
    ld c, h                                       ; $5bc6: $4c
    ld c, h                                       ; $5bc7: $4c
    ld c, h                                       ; $5bc8: $4c
    ld c, h                                       ; $5bc9: $4c
    ld c, h                                       ; $5bca: $4c
    ld c, h                                       ; $5bcb: $4c
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    inc a                                         ; $5bd0: $3c
    adc b                                         ; $5bd1: $88
    ret                                           ; $5bd2: $c9


    ret                                           ; $5bd3: $c9


    ret                                           ; $5bd4: $c9


    ret                                           ; $5bd5: $c9


    ret                                           ; $5bd6: $c9


    ret                                           ; $5bd7: $c9


    ret                                           ; $5bd8: $c9


    ret                                           ; $5bd9: $c9


    ret                                           ; $5bda: $c9


    ret                                           ; $5bdb: $c9


    ret                                           ; $5bdc: $c9


    ret                                           ; $5bdd: $c9


    ret                                           ; $5bde: $c9


    ret                                           ; $5bdf: $c9


    ret                                           ; $5be0: $c9


    xor $2b                                       ; $5be1: $ee $2b
    inc a                                         ; $5be3: $3c
    ld c, h                                       ; $5be4: $4c
    ld c, h                                       ; $5be5: $4c
    ld c, h                                       ; $5be6: $4c
    ld c, h                                       ; $5be7: $4c
    ld c, h                                       ; $5be8: $4c
    ld c, h                                       ; $5be9: $4c
    ld c, h                                       ; $5bea: $4c
    ld c, h                                       ; $5beb: $4c
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    ld e, a                                       ; $5bf0: $5f
    ld a, b                                       ; $5bf1: $78
    ret                                           ; $5bf2: $c9


    ret                                           ; $5bf3: $c9


    jr c, jr_03e_5c2e                             ; $5bf4: $38 $38

    jr c, jr_03e_5bc1                             ; $5bf6: $38 $c9

    ret                                           ; $5bf8: $c9


    ret                                           ; $5bf9: $c9


    ret                                           ; $5bfa: $c9


    ret                                           ; $5bfb: $c9


    ret                                           ; $5bfc: $c9


    ret                                           ; $5bfd: $c9


    jr c, jr_03e_5c38                             ; $5bfe: $38 $38

    jr c, jr_03e_5c3a                             ; $5c00: $38 $38

    ld [hl], a                                    ; $5c02: $77
    ld e, a                                       ; $5c03: $5f
    ld c, h                                       ; $5c04: $4c
    ld c, h                                       ; $5c05: $4c
    ld c, h                                       ; $5c06: $4c
    ld c, h                                       ; $5c07: $4c
    ld c, h                                       ; $5c08: $4c
    ld c, h                                       ; $5c09: $4c
    ld c, h                                       ; $5c0a: $4c
    ld c, h                                       ; $5c0b: $4c
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00
    ld l, a                                       ; $5c10: $6f
    adc b                                         ; $5c11: $88
    ret                                           ; $5c12: $c9


    ret                                           ; $5c13: $c9


    ret                                           ; $5c14: $c9


    ret                                           ; $5c15: $c9


    ret                                           ; $5c16: $c9


    jr nc, jr_03e_5c49                            ; $5c17: $30 $30

    jr nc, jr_03e_5c4b                            ; $5c19: $30 $30

    jr nc, jr_03e_5c4d                            ; $5c1b: $30 $30

    jr nc, jr_03e_5c4f                            ; $5c1d: $30 $30

    jr nc, jr_03e_5c51                            ; $5c1f: $30 $30

    jr c, jr_03e_5baa                             ; $5c21: $38 $87

    ld l, a                                       ; $5c23: $6f
    ld c, h                                       ; $5c24: $4c
    ld c, h                                       ; $5c25: $4c
    ld c, h                                       ; $5c26: $4c
    ld c, h                                       ; $5c27: $4c
    ld c, h                                       ; $5c28: $4c
    ld c, h                                       ; $5c29: $4c

jr_03e_5c2a:
    ld c, h                                       ; $5c2a: $4c
    ld c, h                                       ; $5c2b: $4c
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00

jr_03e_5c2e:
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    ld a, a                                       ; $5c30: $7f
    ld a, b                                       ; $5c31: $78
    ret                                           ; $5c32: $c9


    ret                                           ; $5c33: $c9


    ret                                           ; $5c34: $c9


    ret                                           ; $5c35: $c9


    ret                                           ; $5c36: $c9


    ld b, b                                       ; $5c37: $40

jr_03e_5c38:
    ld b, b                                       ; $5c38: $40
    ld b, b                                       ; $5c39: $40

jr_03e_5c3a:
    ld b, b                                       ; $5c3a: $40
    ld b, b                                       ; $5c3b: $40
    ld b, b                                       ; $5c3c: $40
    ld b, b                                       ; $5c3d: $40
    ld b, b                                       ; $5c3e: $40
    ld b, b                                       ; $5c3f: $40
    ld b, b                                       ; $5c40: $40
    jr c, @+$79                                   ; $5c41: $38 $77

    ld a, a                                       ; $5c43: $7f
    ld c, h                                       ; $5c44: $4c
    ld c, h                                       ; $5c45: $4c
    ld c, h                                       ; $5c46: $4c
    ld c, h                                       ; $5c47: $4c
    ld c, h                                       ; $5c48: $4c

jr_03e_5c49:
    ld c, h                                       ; $5c49: $4c
    ld c, h                                       ; $5c4a: $4c

jr_03e_5c4b:
    ld c, h                                       ; $5c4b: $4c
    nop                                           ; $5c4c: $00

jr_03e_5c4d:
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00

jr_03e_5c4f:
    nop                                           ; $5c4f: $00
    adc a                                         ; $5c50: $8f

jr_03e_5c51:
    ld h, b                                       ; $5c51: $60
    ld [hl], b                                    ; $5c52: $70
    ld [hl], c                                    ; $5c53: $71
    ld [hl], d                                    ; $5c54: $72
    ld [hl], e                                    ; $5c55: $73
    ld [hl], h                                    ; $5c56: $74
    ld [hl], l                                    ; $5c57: $75
    halt                                          ; $5c58: $76
    ld [hl], b                                    ; $5c59: $70
    ld [hl], c                                    ; $5c5a: $71
    ld [hl], d                                    ; $5c5b: $72
    ld [hl], e                                    ; $5c5c: $73
    ld [hl], h                                    ; $5c5d: $74
    ld [hl], l                                    ; $5c5e: $75
    halt                                          ; $5c5f: $76
    ld [hl], e                                    ; $5c60: $73

jr_03e_5c61:
    ld [hl], h                                    ; $5c61: $74
    ld l, e                                       ; $5c62: $6b
    adc a                                         ; $5c63: $8f
    ld c, h                                       ; $5c64: $4c
    ld c, h                                       ; $5c65: $4c
    ld c, h                                       ; $5c66: $4c

jr_03e_5c67:
    ld c, h                                       ; $5c67: $4c
    ld c, h                                       ; $5c68: $4c
    ld c, h                                       ; $5c69: $4c

jr_03e_5c6a:
    ld c, h                                       ; $5c6a: $4c
    ld c, h                                       ; $5c6b: $4c
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00

jr_03e_5c70:
    dec a                                         ; $5c70: $3d
    ld a, b                                       ; $5c71: $78
    ret                                           ; $5c72: $c9


    ret                                           ; $5c73: $c9


    ret                                           ; $5c74: $c9


    ret                                           ; $5c75: $c9


    ret                                           ; $5c76: $c9


    jr c, jr_03e_5cb1                             ; $5c77: $38 $38

    jr c, jr_03e_5cb3                             ; $5c79: $38 $38

    ret                                           ; $5c7b: $c9


    jr c, jr_03e_5cb6                             ; $5c7c: $38 $38

    jr c, jr_03e_5c49                             ; $5c7e: $38 $c9

    jr c, jr_03e_5c70                             ; $5c80: $38 $ee

    ld e, e                                       ; $5c82: $5b
    dec a                                         ; $5c83: $3d
    ld c, h                                       ; $5c84: $4c
    ld c, h                                       ; $5c85: $4c
    ld c, h                                       ; $5c86: $4c
    ld c, h                                       ; $5c87: $4c
    ld c, h                                       ; $5c88: $4c
    ld c, h                                       ; $5c89: $4c
    ld c, h                                       ; $5c8a: $4c
    ld c, h                                       ; $5c8b: $4c
    ld c, h                                       ; $5c8c: $4c
    ld c, h                                       ; $5c8d: $4c
    ld c, h                                       ; $5c8e: $4c
    ld c, h                                       ; $5c8f: $4c
    ld e, h                                       ; $5c90: $5c
    adc b                                         ; $5c91: $88
    ret                                           ; $5c92: $c9


    ret                                           ; $5c93: $c9


    jr c, jr_03e_5cce                             ; $5c94: $38 $38

    jr c, jr_03e_5c61                             ; $5c96: $38 $c9

    ret                                           ; $5c98: $c9


    ret                                           ; $5c99: $c9


    ret                                           ; $5c9a: $c9


    ret                                           ; $5c9b: $c9


    jr c, jr_03e_5c67                             ; $5c9c: $38 $c9

    ret                                           ; $5c9e: $c9


    ret                                           ; $5c9f: $c9


    ret                                           ; $5ca0: $c9


    jr c, jr_03e_5c2a                             ; $5ca1: $38 $87

    ld e, l                                       ; $5ca3: $5d
    ld c, h                                       ; $5ca4: $4c
    ld c, h                                       ; $5ca5: $4c
    ld c, h                                       ; $5ca6: $4c
    ld c, h                                       ; $5ca7: $4c
    ld c, h                                       ; $5ca8: $4c
    ld c, h                                       ; $5ca9: $4c
    ld c, h                                       ; $5caa: $4c
    ld c, h                                       ; $5cab: $4c
    ld c, h                                       ; $5cac: $4c
    ld c, h                                       ; $5cad: $4c
    ld c, h                                       ; $5cae: $4c
    ld c, h                                       ; $5caf: $4c
    ld l, h                                       ; $5cb0: $6c

jr_03e_5cb1:
    ld a, b                                       ; $5cb1: $78
    ret                                           ; $5cb2: $c9


jr_03e_5cb3:
    ret                                           ; $5cb3: $c9


    ret                                           ; $5cb4: $c9


    ret                                           ; $5cb5: $c9


jr_03e_5cb6:
    ret                                           ; $5cb6: $c9


    jr nc, jr_03e_5ce9                            ; $5cb7: $30 $30

    jr nc, jr_03e_5ceb                            ; $5cb9: $30 $30

    jr nc, jr_03e_5ced                            ; $5cbb: $30 $30

    jr nc, jr_03e_5cef                            ; $5cbd: $30 $30

    jr nc, jr_03e_5cf1                            ; $5cbf: $30 $30

    jr c, jr_03e_5d3a                             ; $5cc1: $38 $77

    ld l, l                                       ; $5cc3: $6d
    ld c, h                                       ; $5cc4: $4c
    ld c, h                                       ; $5cc5: $4c
    ld c, h                                       ; $5cc6: $4c
    ld c, h                                       ; $5cc7: $4c
    ld c, h                                       ; $5cc8: $4c
    ld c, h                                       ; $5cc9: $4c
    ld c, h                                       ; $5cca: $4c
    ld c, h                                       ; $5ccb: $4c
    ld c, h                                       ; $5ccc: $4c
    ld c, h                                       ; $5ccd: $4c

jr_03e_5cce:
    ld c, h                                       ; $5cce: $4c
    ld c, h                                       ; $5ccf: $4c
    ld a, h                                       ; $5cd0: $7c
    adc b                                         ; $5cd1: $88
    ret                                           ; $5cd2: $c9


    ret                                           ; $5cd3: $c9


    ret                                           ; $5cd4: $c9


    ret                                           ; $5cd5: $c9


    ret                                           ; $5cd6: $c9


    ld b, b                                       ; $5cd7: $40
    ld b, b                                       ; $5cd8: $40
    ld b, b                                       ; $5cd9: $40
    ld b, b                                       ; $5cda: $40
    ld b, b                                       ; $5cdb: $40
    ld b, b                                       ; $5cdc: $40
    ld b, b                                       ; $5cdd: $40
    ld b, b                                       ; $5cde: $40
    ld b, b                                       ; $5cdf: $40
    ld b, b                                       ; $5ce0: $40
    jr c, jr_03e_5c6a                             ; $5ce1: $38 $87

    ld a, l                                       ; $5ce3: $7d
    ld c, h                                       ; $5ce4: $4c
    ld c, h                                       ; $5ce5: $4c
    ld c, h                                       ; $5ce6: $4c
    ld c, h                                       ; $5ce7: $4c
    ld c, h                                       ; $5ce8: $4c

jr_03e_5ce9:
    ld c, h                                       ; $5ce9: $4c
    ld c, h                                       ; $5cea: $4c

jr_03e_5ceb:
    ld c, h                                       ; $5ceb: $4c
    ld c, h                                       ; $5cec: $4c

jr_03e_5ced:
    ld c, h                                       ; $5ced: $4c
    ld c, h                                       ; $5cee: $4c

jr_03e_5cef:
    ld c, h                                       ; $5cef: $4c
    adc h                                         ; $5cf0: $8c

jr_03e_5cf1:
    sub b                                         ; $5cf1: $90
    add b                                         ; $5cf2: $80
    add c                                         ; $5cf3: $81
    add d                                         ; $5cf4: $82
    add e                                         ; $5cf5: $83
    add h                                         ; $5cf6: $84
    add l                                         ; $5cf7: $85
    add [hl]                                      ; $5cf8: $86
    add b                                         ; $5cf9: $80
    add c                                         ; $5cfa: $81
    add d                                         ; $5cfb: $82
    add e                                         ; $5cfc: $83
    add h                                         ; $5cfd: $84
    add l                                         ; $5cfe: $85
    add [hl]                                      ; $5cff: $86
    add c                                         ; $5d00: $81
    add d                                         ; $5d01: $82
    sbc e                                         ; $5d02: $9b
    adc l                                         ; $5d03: $8d
    ld c, h                                       ; $5d04: $4c
    ld c, h                                       ; $5d05: $4c
    ld c, h                                       ; $5d06: $4c
    ld c, h                                       ; $5d07: $4c
    ld c, h                                       ; $5d08: $4c
    ld c, h                                       ; $5d09: $4c
    ld c, h                                       ; $5d0a: $4c
    ld c, h                                       ; $5d0b: $4c
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    sbc h                                         ; $5d10: $9c
    sbc l                                         ; $5d11: $9d
    sbc h                                         ; $5d12: $9c
    sbc l                                         ; $5d13: $9d
    sbc h                                         ; $5d14: $9c
    sbc l                                         ; $5d15: $9d
    sbc h                                         ; $5d16: $9c
    sbc l                                         ; $5d17: $9d
    sbc h                                         ; $5d18: $9c
    sbc l                                         ; $5d19: $9d
    sbc h                                         ; $5d1a: $9c
    sbc l                                         ; $5d1b: $9d
    sbc h                                         ; $5d1c: $9c
    sbc l                                         ; $5d1d: $9d
    sbc h                                         ; $5d1e: $9c
    sbc l                                         ; $5d1f: $9d
    sbc h                                         ; $5d20: $9c
    sbc l                                         ; $5d21: $9d
    sbc h                                         ; $5d22: $9c
    sbc l                                         ; $5d23: $9d
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    ld c, l                                       ; $5d30: $4d
    ld c, l                                       ; $5d31: $4d
    ld c, l                                       ; $5d32: $4d
    ld c, l                                       ; $5d33: $4d
    ld c, l                                       ; $5d34: $4d
    ld c, l                                       ; $5d35: $4d
    ld c, l                                       ; $5d36: $4d
    ld c, l                                       ; $5d37: $4d
    ld c, l                                       ; $5d38: $4d
    ld c, l                                       ; $5d39: $4d

jr_03e_5d3a:
    ld c, l                                       ; $5d3a: $4d
    ld c, l                                       ; $5d3b: $4d
    ld c, l                                       ; $5d3c: $4d
    ld c, l                                       ; $5d3d: $4d
    ld c, l                                       ; $5d3e: $4d
    ld c, l                                       ; $5d3f: $4d
    ld c, l                                       ; $5d40: $4d
    ld c, l                                       ; $5d41: $4d
    ld c, l                                       ; $5d42: $4d
    ld c, l                                       ; $5d43: $4d
    nop                                           ; $5d44: $00
    ld c, h                                       ; $5d45: $4c
    ld c, h                                       ; $5d46: $4c
    ld c, h                                       ; $5d47: $4c
    ld c, h                                       ; $5d48: $4c
    ld c, h                                       ; $5d49: $4c
    ld c, h                                       ; $5d4a: $4c
    ld c, h                                       ; $5d4b: $4c
    ld c, h                                       ; $5d4c: $4c
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    db $fd                                        ; $5d50: $fd
    nop                                           ; $5d51: $00
    rst $38                                       ; $5d52: $ff
    ld [c], a                                     ; $5d53: $e2
    ld a, a                                       ; $5d54: $7f
    ld a, a                                       ; $5d55: $7f
    sbc c                                         ; $5d56: $99
    and $bf                                       ; $5d57: $e6 $bf
    reti                                          ; $5d59: $d9


    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    and e                                         ; $5d5c: $a3
    rst $38                                       ; $5d5d: $ff
    or d                                          ; $5d5e: $b2
    cp a                                          ; $5d5f: $bf
    jp c, $baff                                   ; $5d60: $da $ff $ba

    ld a, a                                       ; $5d63: $7f
    ei                                            ; $5d64: $fb
    or l                                          ; $5d65: $b5
    or c                                          ; $5d66: $b1
    adc $00                                       ; $5d67: $ce $00
    ld a, a                                       ; $5d69: $7f
    ccf                                           ; $5d6a: $3f
    push hl                                       ; $5d6b: $e5
    db $e3                                        ; $5d6c: $e3
    cp $df                                        ; $5d6d: $fe $df
    ld [c], a                                     ; $5d6f: $e2
    rst $38                                       ; $5d70: $ff
    rst $38                                       ; $5d71: $ff
    sub e                                         ; $5d72: $93
    ld l, h                                       ; $5d73: $6c
    rst $38                                       ; $5d74: $ff
    sub e                                         ; $5d75: $93
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    cp d                                          ; $5d78: $ba
    rst $38                                       ; $5d79: $ff
    dec hl                                        ; $5d7a: $2b
    ld a, a                                       ; $5d7b: $7f
    xor e                                         ; $5d7c: $ab
    rst $38                                       ; $5d7d: $ff
    ld a, [hl-]                                   ; $5d7e: $3a
    rst $38                                       ; $5d7f: $ff
    rst $20                                       ; $5d80: $e7
    sub d                                         ; $5d81: $92
    sub d                                         ; $5d82: $92
    ld l, l                                       ; $5d83: $6d
    db $ed                                        ; $5d84: $ed
    ldh [$e0], a                                  ; $5d85: $e0 $e0
    ld [$4cb3], a                                 ; $5d87: $ea $b3 $4c
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    or e                                          ; $5d8c: $b3
    rst $38                                       ; $5d8d: $ff
    or a                                          ; $5d8e: $b7
    rst $38                                       ; $5d8f: $ff
    and h                                         ; $5d90: $a4
    cp $35                                        ; $5d91: $fe $35
    rst $38                                       ; $5d93: $ff
    ld e, a                                       ; $5d94: $5f
    and h                                         ; $5d95: $a4
    rst $38                                       ; $5d96: $ff
    or e                                          ; $5d97: $b3
    or a                                          ; $5d98: $b7
    ld c, b                                       ; $5d99: $48
    ldh [$e7], a                                  ; $5d9a: $e0 $e7
    ld bc, $e0ff                                  ; $5d9c: $01 $ff $e0
    rst $38                                       ; $5d9f: $ff
    cp $ff                                        ; $5da0: $fe $ff
    scf                                           ; $5da2: $37
    ret z                                         ; $5da3: $c8

    rst $38                                       ; $5da4: $ff
    scf                                           ; $5da5: $37
    rst $38                                       ; $5da6: $ff
    ld [hl], l                                    ; $5da7: $75
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    ld d, a                                       ; $5daa: $57
    rst $38                                       ; $5dab: $ff
    halt                                          ; $5dac: $76
    rst $38                                       ; $5dad: $ff
    ld d, l                                       ; $5dae: $55
    rst $38                                       ; $5daf: $ff
    ld d, l                                       ; $5db0: $55
    rst $38                                       ; $5db1: $ff
    ld d, l                                       ; $5db2: $55
    xor d                                         ; $5db3: $aa
    nop                                           ; $5db4: $00
    rst $38                                       ; $5db5: $ff
    cp $01                                        ; $5db6: $fe $01
    nop                                           ; $5db8: $00
    ld bc, $82fe                                  ; $5db9: $01 $fe $82
    pop hl                                        ; $5dbc: $e1
    add b                                         ; $5dbd: $80
    add b                                         ; $5dbe: $80
    nop                                           ; $5dbf: $00
    ret nz                                        ; $5dc0: $c0

    nop                                           ; $5dc1: $00
    ldh [$60], a                                  ; $5dc2: $e0 $60
    rst $38                                       ; $5dc4: $ff
    sub b                                         ; $5dc5: $90
    ldh a, [rBCPS]                                ; $5dc6: $f0 $68
    ld hl, sp+$74                                 ; $5dc8: $f8 $74
    ld hl, sp+$56                                 ; $5dca: $f8 $56
    ld sp, hl                                     ; $5dcc: $f9
    rst $38                                       ; $5dcd: $ff
    ld d, [hl]                                    ; $5dce: $56
    ei                                            ; $5dcf: $fb
    ld [hl], h                                    ; $5dd0: $74
    or $68                                        ; $5dd1: $f6 $68
    ld l, h                                       ; $5dd3: $6c
    sub b                                         ; $5dd4: $90
    jr jr_03e_5e56                                ; $5dd5: $18 $7f

    ldh [$30], a                                  ; $5dd7: $e0 $30
    ret nz                                        ; $5dd9: $c0

    ld h, b                                       ; $5dda: $60
    add b                                         ; $5ddb: $80
    ret nz                                        ; $5ddc: $c0

    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    rst $38                                       ; $5de1: $ff
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    ld e, $1e                                     ; $5de5: $1e $1e
    ld hl, $4f3e                                  ; $5de7: $21 $3e $4f
    rst $38                                       ; $5dea: $ff
    ld a, $5f                                     ; $5deb: $3e $5f
    ld c, $7f                                     ; $5ded: $0e $7f
    ld c, $17                                     ; $5def: $0e $17
    inc c                                         ; $5df1: $0c
    rla                                           ; $5df2: $17
    rst $38                                       ; $5df3: $ff
    inc e                                         ; $5df4: $1c
    daa                                           ; $5df5: $27
    inc e                                         ; $5df6: $1c
    cpl                                           ; $5df7: $2f
    inc e                                         ; $5df8: $1c
    cpl                                           ; $5df9: $2f
    jr c, jr_03e_5e4b                             ; $5dfa: $38 $4f

    rst $38                                       ; $5dfc: $ff
    jr c, jr_03e_5e5d                             ; $5dfd: $38 $5e

    jr c, @+$60                                   ; $5dff: $38 $5e

    nop                                           ; $5e01: $00
    ld a, $00                                     ; $5e02: $3e $00
    inc e                                         ; $5e04: $1c
    db $e4                                        ; $5e05: $e4
    ldh [$e0], a                                  ; $5e06: $e0 $e0
    db $fd                                        ; $5e08: $fd
    db $e3                                        ; $5e09: $e3
    add b                                         ; $5e0a: $80
    cp $e4                                        ; $5e0b: $fe $e4
    jp nc, Jump_000_30e0                          ; $5e0d: $d2 $e0 $30

    ld c, [hl]                                    ; $5e10: $4e
    inc a                                         ; $5e11: $3c
    ld a, a                                       ; $5e12: $7f
    ld b, d                                       ; $5e13: $42
    ld e, $21                                     ; $5e14: $1e $21
    ld c, $31                                     ; $5e16: $0e $31
    inc a                                         ; $5e18: $3c
    ld b, d                                       ; $5e19: $42
    sbc $e0                                       ; $5e1a: $de $e0
    cp $ff                                        ; $5e1c: $fe $ff
    db $ed                                        ; $5e1e: $ed
    db $fc                                        ; $5e1f: $fc
    db $fc                                        ; $5e20: $fc
    ld [bc], a                                    ; $5e21: $02
    jr nc, @-$32                                  ; $5e22: $30 $cc

    jr nc, jr_03e_5e6e                            ; $5e24: $30 $48

    ld b, $fe                                     ; $5e26: $06 $fe
    db $e3                                        ; $5e28: $e3
    nop                                           ; $5e29: $00
    jr nc, jr_03e_5e2c                            ; $5e2a: $30 $00

jr_03e_5e2c:
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    rst $38                                       ; $5e2e: $ff
    nop                                           ; $5e2f: $00
    rra                                           ; $5e30: $1f
    rra                                           ; $5e31: $1f
    jr nz, jr_03e_5e73                            ; $5e32: $20 $3f

    ld c, a                                       ; $5e34: $4f
    ld a, a                                       ; $5e35: $7f
    sbc a                                         ; $5e36: $9f
    rst $38                                       ; $5e37: $ff
    ld [hl], e                                    ; $5e38: $73
    cp a                                          ; $5e39: $bf
    ld h, c                                       ; $5e3a: $61
    cp a                                          ; $5e3b: $bf
    ld bc, $037a                                  ; $5e3c: $01 $7a $03
    dec [hl]                                      ; $5e3f: $35
    rst $38                                       ; $5e40: $ff
    rlca                                          ; $5e41: $07
    dec de                                        ; $5e42: $1b
    ld e, $27                                     ; $5e43: $1e $27
    inc a                                         ; $5e45: $3c
    ld c, a                                       ; $5e46: $4f
    ld a, a                                       ; $5e47: $7f
    sbc h                                         ; $5e48: $9c
    rst $38                                       ; $5e49: $ff
    ld a, a                                       ; $5e4a: $7f

jr_03e_5e4b:
    cp a                                          ; $5e4b: $bf
    ld a, a                                       ; $5e4c: $7f
    cp a                                          ; $5e4d: $bf
    nop                                           ; $5e4e: $00
    ld a, a                                       ; $5e4f: $7f
    nop                                           ; $5e50: $00
    ccf                                           ; $5e51: $3f
    cp a                                          ; $5e52: $bf
    nop                                           ; $5e53: $00
    add b                                         ; $5e54: $80
    add b                                         ; $5e55: $80

jr_03e_5e56:
    ld b, b                                       ; $5e56: $40
    ret nz                                        ; $5e57: $c0

    ldh [$fe], a                                  ; $5e58: $e0 $fe
    ldh [$f0], a                                  ; $5e5a: $e0 $f0
    rst $38                                       ; $5e5c: $ff

jr_03e_5e5d:
    ret nz                                        ; $5e5d: $c0

    ldh a, [$80]                                  ; $5e5e: $f0 $80
    ldh a, [$80]                                  ; $5e60: $f0 $80
    ldh [rP1], a                                  ; $5e62: $e0 $00
    di                                            ; $5e64: $f3
    rst $38                                       ; $5e65: $ff
    inc sp                                        ; $5e66: $33
    call z, $c43b                                 ; $5e67: $cc $3b $c4
    cp a                                          ; $5e6a: $bf
    ld b, b                                       ; $5e6b: $40
    or a                                          ; $5e6c: $b7
    ret z                                         ; $5e6d: $c8

jr_03e_5e6e:
    ld a, a                                       ; $5e6e: $7f
    inc sp                                        ; $5e6f: $33
    call z, $cc33                                 ; $5e70: $cc $33 $cc

jr_03e_5e73:
    nop                                           ; $5e73: $00
    or e                                          ; $5e74: $b3
    nop                                           ; $5e75: $00
    rst $38                                       ; $5e76: $ff
    db $ed                                        ; $5e77: $ed
    rst $18                                       ; $5e78: $df
    ld a, b                                       ; $5e79: $78
    ld a, b                                       ; $5e7a: $78
    add h                                         ; $5e7b: $84
    ld l, h                                       ; $5e7c: $6c
    sub d                                         ; $5e7d: $92
    cp $e3                                        ; $5e7e: $fe $e3
    ld a, b                                       ; $5e80: $78
    add h                                         ; $5e81: $84
    inc bc                                        ; $5e82: $03
    nop                                           ; $5e83: $00
    ld a, b                                       ; $5e84: $78
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    rst $38                                       ; $5e88: $ff
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    inc c                                         ; $5e8b: $0c
    inc c                                         ; $5e8c: $0c
    ld e, $12                                     ; $5e8d: $1e $12
    ld [hl], $2a                                  ; $5e8f: $36 $2a
    rst $38                                       ; $5e91: $ff
    ld h, [hl]                                    ; $5e92: $66
    ld e, d                                       ; $5e93: $5a
    rst $08                                       ; $5e94: $cf
    or a                                          ; $5e95: $b7
    rst $00                                       ; $5e96: $c7
    cp e                                          ; $5e97: $bb
    ld h, e                                       ; $5e98: $63
    ld e, l                                       ; $5e99: $5d
    rst $38                                       ; $5e9a: $ff
    inc sp                                        ; $5e9b: $33
    dec l                                         ; $5e9c: $2d
    dec de                                        ; $5e9d: $1b
    dec d                                         ; $5e9e: $15
    inc sp                                        ; $5e9f: $33
    dec l                                         ; $5ea0: $2d
    ld h, a                                       ; $5ea1: $67
    ld e, e                                       ; $5ea2: $5b
    rst $38                                       ; $5ea3: $ff
    adc a                                         ; $5ea4: $8f
    rst $30                                       ; $5ea5: $f7
    db $fc                                        ; $5ea6: $fc
    adc h                                         ; $5ea7: $8c
    ld hl, sp-$08                                 ; $5ea8: $f8 $f8
    ld [hl], b                                    ; $5eaa: $70
    ld [hl], b                                    ; $5eab: $70
    db $fd                                        ; $5eac: $fd
    nop                                           ; $5ead: $00
    rst $38                                       ; $5eae: $ff
    and $c0                                       ; $5eaf: $e6 $c0
    ret nz                                        ; $5eb1: $c0

    ld a, c                                       ; $5eb2: $79
    cp c                                          ; $5eb3: $b9
    ld l, a                                       ; $5eb4: $6f
    or [hl]                                       ; $5eb5: $b6
    rst $38                                       ; $5eb6: $ff
    ld l, [hl]                                    ; $5eb7: $6e
    or l                                          ; $5eb8: $b5
    ld l, l                                       ; $5eb9: $6d
    or [hl]                                       ; $5eba: $b6
    dec l                                         ; $5ebb: $2d
    sub $8e                                       ; $5ebc: $d6 $8e
    ld [hl], l                                    ; $5ebe: $75
    rst $38                                       ; $5ebf: $ff
    rst $08                                       ; $5ec0: $cf
    or [hl]                                       ; $5ec1: $b6
    rst $38                                       ; $5ec2: $ff
    rst $00                                       ; $5ec3: $c7
    ld a, l                                       ; $5ec4: $7d
    ld a, l                                       ; $5ec5: $7d
    jr c, jr_03e_5f00                             ; $5ec6: $38 $38

    rst $38                                       ; $5ec8: $ff
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    ld hl, $7321                                  ; $5ecb: $21 $21 $73
    ld d, d                                       ; $5ece: $52
    rst $30                                       ; $5ecf: $f7
    sub h                                         ; $5ed0: $94
    rst $38                                       ; $5ed1: $ff
    or l                                          ; $5ed2: $b5
    sub $b5                                       ; $5ed3: $d6 $b5
    sub $bd                                       ; $5ed5: $d6 $bd
    ld e, d                                       ; $5ed7: $5a
    add hl, sp                                    ; $5ed8: $39
    sub $ff                                       ; $5ed9: $d6 $ff
    ld sp, $adef                                  ; $5edb: $31 $ef $ad
    ld [hl], e                                    ; $5ede: $73
    xor l                                         ; $5edf: $ad
    rst $30                                       ; $5ee0: $f7
    ld sp, $ffef                                  ; $5ee1: $31 $ef $ff
    add hl, sp                                    ; $5ee4: $39
    rst $30                                       ; $5ee5: $f7
    rst $38                                       ; $5ee6: $ff
    jr @+$01                                      ; $5ee7: $18 $ff

    rst $38                                       ; $5ee9: $ff
    rst $20                                       ; $5eea: $e7
    rst $20                                       ; $5eeb: $e7
    ld a, [$e1c0]                                 ; $5eec: $fa $c0 $e1
    add b                                         ; $5eef: $80
    rst $38                                       ; $5ef0: $ff
    ld [c], a                                     ; $5ef1: $e2
    or b                                          ; $5ef2: $b0
    or b                                          ; $5ef3: $b0
    rst $38                                       ; $5ef4: $ff
    rst $08                                       ; $5ef5: $cf
    call nz, $bfff                                ; $5ef6: $c4 $ff $bf
    or h                                          ; $5ef9: $b4
    ld a, a                                       ; $5efa: $7f
    inc l                                         ; $5efb: $2c
    rst $10                                       ; $5efc: $d7
    dec e                                         ; $5efd: $1d
    cp $9d                                        ; $5efe: $fe $9d

jr_03e_5f00:
    rst $38                                       ; $5f00: $ff
    ld l, [hl]                                    ; $5f01: $6e
    call $ffb6                                    ; $5f02: $cd $b6 $ff
    call nz, $ffff                                ; $5f05: $c4 $ff $ff
    dec sp                                        ; $5f08: $3b
    rst $38                                       ; $5f09: $ff
    dec sp                                        ; $5f0a: $3b
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    ld e, $1e                                     ; $5f0d: $1e $1e
    inc sp                                        ; $5f0f: $33
    dec l                                         ; $5f10: $2d
    ld hl, $3eff                                  ; $5f11: $21 $ff $3e
    jr nc, jr_03e_5f45                            ; $5f14: $30 $2f

    jr nc, jr_03e_5f57                            ; $5f16: $30 $3f

    sub $d9                                       ; $5f18: $d6 $d9
    ld [hl], a                                    ; $5f1a: $77
    rst $38                                       ; $5f1b: $ff
    cp d                                          ; $5f1c: $ba
    scf                                           ; $5f1d: $37
    db $db                                        ; $5f1e: $db
    or [hl]                                       ; $5f1f: $b6
    ld e, e                                       ; $5f20: $5b
    or b                                          ; $5f21: $b0
    rst $18                                       ; $5f22: $df
    or b                                          ; $5f23: $b0
    rst $38                                       ; $5f24: $ff
    rst $18                                       ; $5f25: $df
    or e                                          ; $5f26: $b3
    call c, $93ff                                 ; $5f27: $dc $ff $93
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    ld l, h                                       ; $5f2c: $6c
    db $fd                                        ; $5f2d: $fd
    ld l, h                                       ; $5f2e: $6c
    add b                                         ; $5f2f: $80
    db $e3                                        ; $5f30: $e3
    add b                                         ; $5f31: $80
    add b                                         ; $5f32: $80
    ret nz                                        ; $5f33: $c0

    ld b, b                                       ; $5f34: $40
    call z, $ff4c                                 ; $5f35: $cc $4c $ff
    ld a, a                                       ; $5f38: $7f
    or e                                          ; $5f39: $b3
    ld [hl], e                                    ; $5f3a: $73
    xor l                                         ; $5f3b: $ad
    ld l, l                                       ; $5f3c: $6d
    rst $18                                       ; $5f3d: $df
    ld c, e                                       ; $5f3e: $4b
    push af                                       ; $5f3f: $f5
    rst $38                                       ; $5f40: $ff
    ld b, a                                       ; $5f41: $47
    rst $38                                       ; $5f42: $ff
    rst $20                                       ; $5f43: $e7
    ld e, e                                       ; $5f44: $5b

jr_03e_5f45:
    di                                            ; $5f45: $f3
    db $ed                                        ; $5f46: $ed
    cp a                                          ; $5f47: $bf
    or c                                          ; $5f48: $b1
    rst $28                                       ; $5f49: $ef
    rra                                           ; $5f4a: $1f
    rra                                           ; $5f4b: $1f
    ld c, $0e                                     ; $5f4c: $0e $0e
    ld h, b                                       ; $5f4e: $60
    db $e3                                        ; $5f4f: $e3
    ld bc, $3201                                  ; $5f50: $01 $01 $32
    rst $38                                       ; $5f53: $ff
    inc sp                                        ; $5f54: $33
    ld a, d                                       ; $5f55: $7a
    ld c, e                                       ; $5f56: $4b

jr_03e_5f57:
    call z, $8eb7                                 ; $5f57: $cc $b7 $8e
    ld [hl], a                                    ; $5f5a: $77
    ld l, [hl]                                    ; $5f5b: $6e
    rst $38                                       ; $5f5c: $ff
    sub a                                         ; $5f5d: $97
    ld l, [hl]                                    ; $5f5e: $6e
    or a                                          ; $5f5f: $b7
    ld c, $f7                                     ; $5f60: $0e $f7
    add [hl]                                      ; $5f62: $86
    ld a, e                                       ; $5f63: $7b
    rst $30                                       ; $5f64: $f7
    rst $38                                       ; $5f65: $ff
    sbc d                                         ; $5f66: $9a
    rst $30                                       ; $5f67: $f7
    ei                                            ; $5f68: $fb
    ld a, a                                       ; $5f69: $7f
    ld a, a                                       ; $5f6a: $7f
    inc c                                         ; $5f6b: $0c
    inc c                                         ; $5f6c: $0c
    nop                                           ; $5f6d: $00
    rst $38                                       ; $5f6e: $ff
    nop                                           ; $5f6f: $00
    jr jr_03e_5f8a                                ; $5f70: $18 $18

    inc l                                         ; $5f72: $2c
    inc [hl]                                      ; $5f73: $34
    xor h                                         ; $5f74: $ac
    or h                                          ; $5f75: $b4
    db $ec                                        ; $5f76: $ec
    rst $38                                       ; $5f77: $ff
    ld [hl], h                                    ; $5f78: $74
    db $ec                                        ; $5f79: $ec
    ld [hl], h                                    ; $5f7a: $74
    ld h, [hl]                                    ; $5f7b: $66
    cp d                                          ; $5f7c: $ba
    db $e3                                        ; $5f7d: $e3
    ld a, l                                       ; $5f7e: $7d
    jp hl                                         ; $5f7f: $e9


    rst $38                                       ; $5f80: $ff
    ld [hl], a                                    ; $5f81: $77
    db $ed                                        ; $5f82: $ed
    ld [hl], e                                    ; $5f83: $73
    db $ed                                        ; $5f84: $ed
    ld [hl], a                                    ; $5f85: $77
    db $ed                                        ; $5f86: $ed
    ld [hl], a                                    ; $5f87: $77
    ld a, l                                       ; $5f88: $7d
    ld a, a                                       ; $5f89: $7f

jr_03e_5f8a:
    and a                                         ; $5f8a: $a7
    rst $38                                       ; $5f8b: $ff
    dec a                                         ; $5f8c: $3d
    rst $20                                       ; $5f8d: $e7
    rst $20                                       ; $5f8e: $e7
    jp nz, Jump_000_00c2                          ; $5f8f: $c2 $c2 $00

    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    rst $38                                       ; $5f94: $ff
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    ld a, b                                       ; $5f97: $78
    ld a, b                                       ; $5f98: $78
    adc $b6                                       ; $5f99: $ce $b6
    add e                                         ; $5f9b: $83
    db $fd                                        ; $5f9c: $fd
    rst $38                                       ; $5f9d: $ff
    pop bc                                        ; $5f9e: $c1
    cp [hl]                                       ; $5f9f: $be
    ret nz                                        ; $5fa0: $c0

    rst $38                                       ; $5fa1: $ff
    ld c, h                                       ; $5fa2: $4c
    ld [hl], e                                    ; $5fa3: $73
    ld c, [hl]                                    ; $5fa4: $4e
    ld [hl], l                                    ; $5fa5: $75
    rst $38                                       ; $5fa6: $ff
    ld c, [hl]                                    ; $5fa7: $4e
    ld [hl], a                                    ; $5fa8: $77
    ld c, h                                       ; $5fa9: $4c
    ld [hl], a                                    ; $5faa: $77
    ld b, b                                       ; $5fab: $40
    ld a, a                                       ; $5fac: $7f
    ld b, b                                       ; $5fad: $40
    ld a, a                                       ; $5fae: $7f
    rst $38                                       ; $5faf: $ff
    ld b, e                                       ; $5fb0: $43
    ld a, h                                       ; $5fb1: $7c
    ld a, a                                       ; $5fb2: $7f
    ld b, e                                       ; $5fb3: $43
    ld a, a                                       ; $5fb4: $7f
    ld a, a                                       ; $5fb5: $7f
    inc a                                         ; $5fb6: $3c
    inc a                                         ; $5fb7: $3c
    db $fd                                        ; $5fb8: $fd
    nop                                           ; $5fb9: $00
    rst $38                                       ; $5fba: $ff
    db $e4                                        ; $5fbb: $e4
    add b                                         ; $5fbc: $80
    add b                                         ; $5fbd: $80
    pop bc                                        ; $5fbe: $c1
    ld b, c                                       ; $5fbf: $41
    ld h, a                                       ; $5fc0: $67
    and [hl]                                      ; $5fc1: $a6
    rst $38                                       ; $5fc2: $ff
    inc a                                         ; $5fc3: $3c
    db $db                                        ; $5fc4: $db
    dec sp                                        ; $5fc5: $3b
    call c, $d53b                                 ; $5fc6: $dc $3b $d5
    ld [hl], b                                    ; $5fc9: $70
    cp a                                          ; $5fca: $bf
    rst $38                                       ; $5fcb: $ff
    ld hl, sp+$77                                 ; $5fcc: $f8 $77
    call c, $8fdb                                 ; $5fce: $dc $db $8f
    adc h                                         ; $5fd1: $8c
    rlca                                          ; $5fd2: $07
    rlca                                          ; $5fd3: $07
    ei                                            ; $5fd4: $fb
    inc bc                                        ; $5fd5: $03
    inc bc                                        ; $5fd6: $03
    ldh [$e5], a                                  ; $5fd7: $e0 $e5
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    adc l                                         ; $5fdb: $8d
    adc l                                         ; $5fdc: $8d
    sub $ff                                       ; $5fdd: $d6 $ff
    ld e, e                                       ; $5fdf: $5b
    ld [hl], c                                    ; $5fe0: $71
    cp [hl]                                       ; $5fe1: $be
    inc sp                                        ; $5fe2: $33
    db $dd                                        ; $5fe3: $dd
    scf                                           ; $5fe4: $37
    db $db                                        ; $5fe5: $db
    ld [hl], $ff                                  ; $5fe6: $36 $ff
    jp c, $da36                                   ; $5fe8: $da $36 $da

    halt                                          ; $5feb: $76
    cp d                                          ; $5fec: $ba
    cp $72                                        ; $5fed: $fe $72
    sbc $f7                                       ; $5fef: $de $f7
    sbc $8c                                       ; $5ff1: $de $8c
    adc h                                         ; $5ff3: $8c
    ldh [$e7], a                                  ; $5ff4: $e0 $e7
    add b                                         ; $5ff6: $80
    add b                                         ; $5ff7: $80
    rst $38                                       ; $5ff8: $ff
    ld a, a                                       ; $5ff9: $7f
    rst $38                                       ; $5ffa: $ff
    jp $c07d                                      ; $5ffb: $c3 $7d $c0


    rst $38                                       ; $5ffe: $ff
    ret nz                                        ; $5fff: $c0

    rst $38                                       ; $6000: $ff
    ld e, e                                       ; $6001: $5b
    ld l, l                                       ; $6002: $6d
    ld a, [hl]                                    ; $6003: $7e
    cp $e1                                        ; $6004: $fe $e1
    ld a, a                                       ; $6006: $7f
    ld c, c                                       ; $6007: $49
    ld a, a                                       ; $6008: $7f
    ld a, a                                       ; $6009: $7f
    ld [hl], $36                                  ; $600a: $36 $36
    and b                                         ; $600c: $a0
    push hl                                       ; $600d: $e5
    rst $38                                       ; $600e: $ff
    inc c                                         ; $600f: $0c
    inc c                                         ; $6010: $0c
    ld d, $1a                                     ; $6011: $16 $1a
    sbc [hl]                                      ; $6013: $9e
    sub d                                         ; $6014: $92
    sbc $5e                                       ; $6015: $de $5e
    rst $28                                       ; $6017: $ef
    ld l, a                                       ; $6018: $6f
    xor e                                         ; $6019: $ab
    ld [hl], a                                    ; $601a: $77
    cp d                                          ; $601b: $ba
    cp $e0                                        ; $601c: $fe $e0
    cp e                                          ; $601e: $bb
    ld [hl], a                                    ; $601f: $77
    cp e                                          ; $6020: $bb
    cp a                                          ; $6021: $bf
    rst $38                                       ; $6022: $ff

Call_03e_6023:
    inc sp                                        ; $6023: $33
    cp $fe                                        ; $6024: $fe $fe
    call z, $a0cc                                 ; $6026: $cc $cc $a0
    rst $20                                       ; $6029: $e7
    jr @+$01                                      ; $602a: $18 $ff

    jr @+$7e                                      ; $602c: $18 $7c

    ld h, h                                       ; $602e: $64
    add $ba                                       ; $602f: $c6 $ba
    or [hl]                                       ; $6031: $b6
    ld a, d                                       ; $6032: $7a
    ld l, $ff                                     ; $6033: $2e $ff
    sub $1c                                       ; $6035: $d6 $1c
    db $fc                                        ; $6037: $fc
    inc e                                         ; $6038: $1c
    db $ec                                        ; $6039: $ec
    add [hl]                                      ; $603a: $86
    ld a, d                                       ; $603b: $7a
    cp $07                                        ; $603c: $fe $07
    jp nz, $fefe                                  ; $603e: $c2 $fe $fe

    ld h, b                                       ; $6041: $60
    rst $20                                       ; $6042: $e7
    rst $38                                       ; $6043: $ff
    push af                                       ; $6044: $f5
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    add b                                         ; $6048: $80
    ld a, l                                       ; $6049: $7d
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    add d                                         ; $604c: $82
    ld [bc], a                                    ; $604d: $02
    rst $38                                       ; $604e: $ff
    daa                                           ; $604f: $27
    rra                                           ; $6050: $1f
    ld [de], a                                    ; $6051: $12
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    add d                                         ; $6054: $82
    ld [bc], a                                    ; $6055: $02
    rst $38                                       ; $6056: $ff
    daa                                           ; $6057: $27
    rra                                           ; $6058: $1f
    ld [de], a                                    ; $6059: $12
    rst $38                                       ; $605a: $ff
    ld a, a                                       ; $605b: $7f
    nop                                           ; $605c: $00
    nop                                           ; $605d: $00
    add b                                         ; $605e: $80
    ld a, l                                       ; $605f: $7d
    rra                                           ; $6060: $1f
    ld [de], a                                    ; $6061: $12
    rst $38                                       ; $6062: $ff
    ld a, a                                       ; $6063: $7f
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    add b                                         ; $6066: $80
    ld a, l                                       ; $6067: $7d
    rra                                           ; $6068: $1f
    ld [de], a                                    ; $6069: $12
    rst $38                                       ; $606a: $ff
    ld a, a                                       ; $606b: $7f
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    rra                                           ; $606e: $1f
    nop                                           ; $606f: $00
    ret nz                                        ; $6070: $c0

    inc bc                                        ; $6071: $03
    rst $38                                       ; $6072: $ff
    ld a, a                                       ; $6073: $7f
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    rra                                           ; $6076: $1f
    nop                                           ; $6077: $00
    ret nz                                        ; $6078: $c0

    inc bc                                        ; $6079: $03
    ld h, b                                       ; $607a: $60
    db $fd                                        ; $607b: $fd
    nop                                           ; $607c: $00
    ld a, a                                       ; $607d: $7f
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    rra                                           ; $6080: $1f
    inc b                                         ; $6081: $04
    ld h, b                                       ; $6082: $60
    db $fd                                        ; $6083: $fd
    nop                                           ; $6084: $00
    ld a, a                                       ; $6085: $7f
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    rra                                           ; $6088: $1f
    inc b                                         ; $6089: $04
    ld h, b                                       ; $608a: $60
    add d                                         ; $608b: $82
    ldh [$2b], a                                  ; $608c: $e0 $2b
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    ldh [$03], a                                  ; $6090: $e0 $03
    ld h, b                                       ; $6092: $60
    add d                                         ; $6093: $82
    ldh [$2b], a                                  ; $6094: $e0 $2b
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00

Call_03e_6098:
    push bc                                       ; $6098: $c5
    push de                                       ; $6099: $d5
    push hl                                       ; $609a: $e5
    ld bc, $012c                                  ; $609b: $01 $2c $01

jr_03e_609e:
    call Call_000_2e3b                            ; $609e: $cd $3b $2e
    ldh a, [$94]                                  ; $60a1: $f0 $94
    bit 0, a                                      ; $60a3: $cb $47
    jr nz, jr_03e_60b3                            ; $60a5: $20 $0c

    bit 1, a                                      ; $60a7: $cb $4f
    jr nz, jr_03e_60b3                            ; $60a9: $20 $08

    bit 4, a                                      ; $60ab: $cb $67
    jr nz, jr_03e_60b8                            ; $60ad: $20 $09

    ld a, b                                       ; $60af: $78
    or c                                          ; $60b0: $b1
    jr nz, jr_03e_609e                            ; $60b1: $20 $eb

jr_03e_60b3:
    rst $08                                       ; $60b3: $cf
    ld e, h                                       ; $60b4: $5c
    xor a                                         ; $60b5: $af
    jr jr_03e_60bc                                ; $60b6: $18 $04

jr_03e_60b8:
    rst $08                                       ; $60b8: $cf
    ld e, h                                       ; $60b9: $5c
    ld a, $01                                     ; $60ba: $3e $01

jr_03e_60bc:
    call Call_000_2e3b                            ; $60bc: $cd $3b $2e
    pop hl                                        ; $60bf: $e1
    pop de                                        ; $60c0: $d1
    pop bc                                        ; $60c1: $c1
    ret                                           ; $60c2: $c9


Call_03e_60c3:
    push af                                       ; $60c3: $f5
    push bc                                       ; $60c4: $c5
    push de                                       ; $60c5: $d5
    push hl                                       ; $60c6: $e5
    jp Jump_03e_617c                              ; $60c7: $c3 $7c $61


Call_03e_60ca:
    push af                                       ; $60ca: $f5
    push bc                                       ; $60cb: $c5
    push de                                       ; $60cc: $d5
    push hl                                       ; $60cd: $e5
    ld h, a                                       ; $60ce: $67
    ldh a, [$96]                                  ; $60cf: $f0 $96
    push af                                       ; $60d1: $f5
    ld a, $01                                     ; $60d2: $3e $01
    ldh [$96], a                                  ; $60d4: $e0 $96
    ldh [rSVBK], a                                ; $60d6: $e0 $70
    ld a, h                                       ; $60d8: $7c
    push bc                                       ; $60d9: $c5
    call Call_03e_612c                            ; $60da: $cd $2c $61
    cp $01                                        ; $60dd: $fe $01
    jr z, jr_03e_60e6                             ; $60df: $28 $05

    ld hl, $c880                                  ; $60e1: $21 $80 $c8
    jr jr_03e_60e9                                ; $60e4: $18 $03

jr_03e_60e6:
    ld hl, $c8c0                                  ; $60e6: $21 $c0 $c8

jr_03e_60e9:
    ld a, $05                                     ; $60e9: $3e $05
    ldh [$96], a                                  ; $60eb: $e0 $96
    ldh [rSVBK], a                                ; $60ed: $e0 $70
    rst $18                                       ; $60ef: $df
    ld d, h                                       ; $60f0: $54
    dec b                                         ; $60f1: $05
    ld hl, $d847                                  ; $60f2: $21 $47 $d8
    xor a                                         ; $60f5: $af
    ld [hl], a                                    ; $60f6: $77
    pop bc                                        ; $60f7: $c1
    ld hl, $0020                                  ; $60f8: $21 $20 $00
    ld a, c                                       ; $60fb: $79
    call Call_000_08b9                            ; $60fc: $cd $b9 $08
    ld d, $00                                     ; $60ff: $16 $00
    ld e, b                                       ; $6101: $58
    add hl, de                                    ; $6102: $19
    push hl                                       ; $6103: $e5
    pop de                                        ; $6104: $d1
    ld hl, $d400                                  ; $6105: $21 $00 $d4
    add hl, de                                    ; $6108: $19
    push hl                                       ; $6109: $e5
    call Call_03e_6144                            ; $610a: $cd $44 $61
    ld de, $ca00                                  ; $610d: $11 $00 $ca
    ld c, $20                                     ; $6110: $0e $20
    ld hl, $14bf                                  ; $6112: $21 $bf $14
    rst $18                                       ; $6115: $df
    ld [hl+], a                                   ; $6116: $22
    dec b                                         ; $6117: $05
    ld a, $01                                     ; $6118: $3e $01
    ldh [$96], a                                  ; $611a: $e0 $96
    ldh [rSVBK], a                                ; $611c: $e0 $70
    pop de                                        ; $611e: $d1
    call Call_03e_615e                            ; $611f: $cd $5e $61
    pop af                                        ; $6122: $f1
    ldh [$96], a                                  ; $6123: $e0 $96
    ldh [rSVBK], a                                ; $6125: $e0 $70
    pop hl                                        ; $6127: $e1
    pop de                                        ; $6128: $d1
    pop bc                                        ; $6129: $c1
    pop af                                        ; $612a: $f1
    ret                                           ; $612b: $c9


Call_03e_612c:
    push af                                       ; $612c: $f5
    push bc                                       ; $612d: $c5
    push de                                       ; $612e: $d5
    push hl                                       ; $612f: $e5
    xor a                                         ; $6130: $af

jr_03e_6131:
    cp $07                                        ; $6131: $fe $07
    jr z, jr_03e_613f                             ; $6133: $28 $0a

    push af                                       ; $6135: $f5
    xor a                                         ; $6136: $af
    call Call_03e_6250                            ; $6137: $cd $50 $62
    pop af                                        ; $613a: $f1
    inc b                                         ; $613b: $04
    inc a                                         ; $613c: $3c
    jr jr_03e_6131                                ; $613d: $18 $f2

jr_03e_613f:
    pop hl                                        ; $613f: $e1
    pop de                                        ; $6140: $d1
    pop bc                                        ; $6141: $c1
    pop af                                        ; $6142: $f1
    ret                                           ; $6143: $c9


Call_03e_6144:
    push af                                       ; $6144: $f5
    push bc                                       ; $6145: $c5
    push de                                       ; $6146: $d5
    push hl                                       ; $6147: $e5
    ld hl, $ca00                                  ; $6148: $21 $00 $ca
    xor a                                         ; $614b: $af

jr_03e_614c:
    cp $07                                        ; $614c: $fe $07
    jr z, jr_03e_6159                             ; $614e: $28 $09

    push af                                       ; $6150: $f5
    ld a, $20                                     ; $6151: $3e $20
    ld [hl], a                                    ; $6153: $77
    pop af                                        ; $6154: $f1
    inc hl                                        ; $6155: $23
    inc a                                         ; $6156: $3c
    jr jr_03e_614c                                ; $6157: $18 $f3

jr_03e_6159:
    pop hl                                        ; $6159: $e1
    pop de                                        ; $615a: $d1
    pop bc                                        ; $615b: $c1
    pop af                                        ; $615c: $f1
    ret                                           ; $615d: $c9


Call_03e_615e:
    push af                                       ; $615e: $f5
    push bc                                       ; $615f: $c5
    push de                                       ; $6160: $d5
    push hl                                       ; $6161: $e5
    ld hl, $ca00                                  ; $6162: $21 $00 $ca
    xor a                                         ; $6165: $af

jr_03e_6166:
    cp $07                                        ; $6166: $fe $07
    jr z, jr_03e_6177                             ; $6168: $28 $0d

    push af                                       ; $616a: $f5
    ld a, [hl]                                    ; $616b: $7e
    push hl                                       ; $616c: $e5
    push de                                       ; $616d: $d5
    pop hl                                        ; $616e: $e1
    ld [hl], a                                    ; $616f: $77
    pop hl                                        ; $6170: $e1
    pop af                                        ; $6171: $f1
    inc hl                                        ; $6172: $23
    inc de                                        ; $6173: $13
    inc a                                         ; $6174: $3c
    jr jr_03e_6166                                ; $6175: $18 $ef

jr_03e_6177:
    pop hl                                        ; $6177: $e1
    pop de                                        ; $6178: $d1
    pop bc                                        ; $6179: $c1
    pop af                                        ; $617a: $f1
    ret                                           ; $617b: $c9


Jump_03e_617c:
jr_03e_617c:
    ld a, [hl]                                    ; $617c: $7e
    cp $00                                        ; $617d: $fe $00
    jr z, jr_03e_6188                             ; $617f: $28 $07

    call Call_03e_61e3                            ; $6181: $cd $e3 $61
    inc b                                         ; $6184: $04
    inc hl                                        ; $6185: $23
    jr jr_03e_617c                                ; $6186: $18 $f4

jr_03e_6188:
    pop hl                                        ; $6188: $e1
    pop de                                        ; $6189: $d1
    pop bc                                        ; $618a: $c1
    pop af                                        ; $618b: $f1
    ret                                           ; $618c: $c9


Call_03e_618d:
    push af                                       ; $618d: $f5
    push bc                                       ; $618e: $c5
    push de                                       ; $618f: $d5
    push hl                                       ; $6190: $e5

jr_03e_6191:
    ld a, [hl]                                    ; $6191: $7e
    cp $00                                        ; $6192: $fe $00
    jr z, jr_03e_619d                             ; $6194: $28 $07

    call Call_03e_6209                            ; $6196: $cd $09 $62
    inc b                                         ; $6199: $04
    inc hl                                        ; $619a: $23
    jr jr_03e_6191                                ; $619b: $18 $f4

jr_03e_619d:
    pop hl                                        ; $619d: $e1
    pop de                                        ; $619e: $d1
    pop bc                                        ; $619f: $c1
    pop af                                        ; $61a0: $f1
    ret                                           ; $61a1: $c9


Call_03e_61a2:
    push af                                       ; $61a2: $f5
    push bc                                       ; $61a3: $c5
    push de                                       ; $61a4: $d5
    push hl                                       ; $61a5: $e5

jr_03e_61a6:
    ld a, [hl]                                    ; $61a6: $7e
    cp $00                                        ; $61a7: $fe $00
    jr z, jr_03e_61b2                             ; $61a9: $28 $07

    call Call_03e_622a                            ; $61ab: $cd $2a $62
    inc b                                         ; $61ae: $04
    inc hl                                        ; $61af: $23
    jr jr_03e_61a6                                ; $61b0: $18 $f4

jr_03e_61b2:
    pop hl                                        ; $61b2: $e1
    pop de                                        ; $61b3: $d1
    pop bc                                        ; $61b4: $c1
    pop af                                        ; $61b5: $f1
    ret                                           ; $61b6: $c9


Call_03e_61b7:
    push af                                       ; $61b7: $f5
    push de                                       ; $61b8: $d5
    ld hl, $0020                                  ; $61b9: $21 $20 $00
    ld a, c                                       ; $61bc: $79
    call Call_000_08b9                            ; $61bd: $cd $b9 $08
    ld d, $00                                     ; $61c0: $16 $00
    ld e, b                                       ; $61c2: $58
    add hl, de                                    ; $61c3: $19
    push hl                                       ; $61c4: $e5
    pop de                                        ; $61c5: $d1
    ld hl, $d000                                  ; $61c6: $21 $00 $d0
    add hl, de                                    ; $61c9: $19
    pop de                                        ; $61ca: $d1
    pop af                                        ; $61cb: $f1
    ret                                           ; $61cc: $c9


Call_03e_61cd:
    push af                                       ; $61cd: $f5
    push de                                       ; $61ce: $d5
    ld hl, $0020                                  ; $61cf: $21 $20 $00
    ld a, c                                       ; $61d2: $79
    call Call_000_08b9                            ; $61d3: $cd $b9 $08
    ld d, $00                                     ; $61d6: $16 $00
    ld e, b                                       ; $61d8: $58
    add hl, de                                    ; $61d9: $19
    push hl                                       ; $61da: $e5
    pop de                                        ; $61db: $d1
    ld hl, $9800                                  ; $61dc: $21 $00 $98
    add hl, de                                    ; $61df: $19
    pop de                                        ; $61e0: $d1
    pop af                                        ; $61e1: $f1
    ret                                           ; $61e2: $c9


Call_03e_61e3:
    push af                                       ; $61e3: $f5
    push bc                                       ; $61e4: $c5
    push de                                       ; $61e5: $d5
    push hl                                       ; $61e6: $e5
    ld h, a                                       ; $61e7: $67
    ldh a, [$96]                                  ; $61e8: $f0 $96
    push af                                       ; $61ea: $f5
    ld a, $01                                     ; $61eb: $3e $01
    ldh [$96], a                                  ; $61ed: $e0 $96
    ldh [rSVBK], a                                ; $61ef: $e0 $70
    ld a, h                                       ; $61f1: $7c
    call Call_03e_61b7                            ; $61f2: $cd $b7 $61
    push hl                                       ; $61f5: $e5
    ld de, $0400                                  ; $61f6: $11 $00 $04
    add hl, de                                    ; $61f9: $19
    ld [hl], a                                    ; $61fa: $77
    pop hl                                        ; $61fb: $e1
    ld a, $00                                     ; $61fc: $3e $00
    ld [hl], a                                    ; $61fe: $77
    pop af                                        ; $61ff: $f1
    ldh [$96], a                                  ; $6200: $e0 $96
    ldh [rSVBK], a                                ; $6202: $e0 $70
    pop hl                                        ; $6204: $e1
    pop de                                        ; $6205: $d1
    pop bc                                        ; $6206: $c1
    pop af                                        ; $6207: $f1
    ret                                           ; $6208: $c9


Call_03e_6209:
    push af                                       ; $6209: $f5
    push bc                                       ; $620a: $c5
    push de                                       ; $620b: $d5
    push hl                                       ; $620c: $e5
    ld h, a                                       ; $620d: $67
    ldh a, [$96]                                  ; $620e: $f0 $96
    push af                                       ; $6210: $f5
    ld a, $01                                     ; $6211: $3e $01
    ldh [$96], a                                  ; $6213: $e0 $96
    ldh [rSVBK], a                                ; $6215: $e0 $70
    ld a, h                                       ; $6217: $7c
    call Call_03e_61b7                            ; $6218: $cd $b7 $61
    ld de, $0400                                  ; $621b: $11 $00 $04
    add hl, de                                    ; $621e: $19
    ld [hl], a                                    ; $621f: $77
    pop af                                        ; $6220: $f1
    ldh [$96], a                                  ; $6221: $e0 $96
    ldh [rSVBK], a                                ; $6223: $e0 $70
    pop hl                                        ; $6225: $e1
    pop de                                        ; $6226: $d1
    pop bc                                        ; $6227: $c1
    pop af                                        ; $6228: $f1
    ret                                           ; $6229: $c9


Call_03e_622a:
    push af                                       ; $622a: $f5
    push bc                                       ; $622b: $c5
    push de                                       ; $622c: $d5
    push hl                                       ; $622d: $e5
    ld h, a                                       ; $622e: $67
    ldh a, [$96]                                  ; $622f: $f0 $96
    push af                                       ; $6231: $f5
    ld a, $01                                     ; $6232: $3e $01
    ldh [$96], a                                  ; $6234: $e0 $96
    ldh [rSVBK], a                                ; $6236: $e0 $70
    ld a, h                                       ; $6238: $7c
    call Call_03e_61b7                            ; $6239: $cd $b7 $61
    push hl                                       ; $623c: $e5
    ld de, $0400                                  ; $623d: $11 $00 $04
    add hl, de                                    ; $6240: $19
    ld [hl], a                                    ; $6241: $77
    pop hl                                        ; $6242: $e1
    ld a, $08                                     ; $6243: $3e $08
    ld [hl], a                                    ; $6245: $77
    pop af                                        ; $6246: $f1
    ldh [$96], a                                  ; $6247: $e0 $96
    ldh [rSVBK], a                                ; $6249: $e0 $70
    pop hl                                        ; $624b: $e1
    pop de                                        ; $624c: $d1
    pop bc                                        ; $624d: $c1
    pop af                                        ; $624e: $f1
    ret                                           ; $624f: $c9


Call_03e_6250:
    push af                                       ; $6250: $f5
    push bc                                       ; $6251: $c5
    push de                                       ; $6252: $d5
    push hl                                       ; $6253: $e5
    ld h, a                                       ; $6254: $67
    ldh a, [$96]                                  ; $6255: $f0 $96
    push af                                       ; $6257: $f5
    ld a, $01                                     ; $6258: $3e $01
    ldh [$96], a                                  ; $625a: $e0 $96
    ldh [rSVBK], a                                ; $625c: $e0 $70
    ld a, h                                       ; $625e: $7c
    call Call_03e_61b7                            ; $625f: $cd $b7 $61
    ld [hl], a                                    ; $6262: $77
    pop af                                        ; $6263: $f1
    ldh [$96], a                                  ; $6264: $e0 $96
    ldh [rSVBK], a                                ; $6266: $e0 $70
    pop hl                                        ; $6268: $e1
    pop de                                        ; $6269: $d1
    pop bc                                        ; $626a: $c1
    pop af                                        ; $626b: $f1
    ret                                           ; $626c: $c9


    push af                                       ; $626d: $f5
    push bc                                       ; $626e: $c5
    push de                                       ; $626f: $d5
    push hl                                       ; $6270: $e5
    ld a, [hl]                                    ; $6271: $7e
    ld b, a                                       ; $6272: $47
    inc hl                                        ; $6273: $23
    ld a, [hl]                                    ; $6274: $7e
    add d                                         ; $6275: $82
    ld c, a                                       ; $6276: $4f
    inc hl                                        ; $6277: $23
    call Call_03e_60c3                            ; $6278: $cd $c3 $60
    pop hl                                        ; $627b: $e1
    pop de                                        ; $627c: $d1
    pop bc                                        ; $627d: $c1
    pop af                                        ; $627e: $f1
    ret                                           ; $627f: $c9


    push af                                       ; $6280: $f5
    push bc                                       ; $6281: $c5
    push de                                       ; $6282: $d5
    push hl                                       ; $6283: $e5
    ld a, [hl]                                    ; $6284: $7e
    ld b, a                                       ; $6285: $47
    inc hl                                        ; $6286: $23
    ld a, [hl]                                    ; $6287: $7e
    add d                                         ; $6288: $82
    ld c, a                                       ; $6289: $4f
    inc hl                                        ; $628a: $23
    call Call_03e_618d                            ; $628b: $cd $8d $61
    pop hl                                        ; $628e: $e1
    pop de                                        ; $628f: $d1
    pop bc                                        ; $6290: $c1
    pop af                                        ; $6291: $f1
    ret                                           ; $6292: $c9


Call_03e_6293:
    push af                                       ; $6293: $f5
    push bc                                       ; $6294: $c5
    push de                                       ; $6295: $d5
    push hl                                       ; $6296: $e5
    ld a, [hl]                                    ; $6297: $7e
    ld b, a                                       ; $6298: $47
    inc hl                                        ; $6299: $23
    ld a, [hl]                                    ; $629a: $7e
    add d                                         ; $629b: $82
    ld c, a                                       ; $629c: $4f
    inc hl                                        ; $629d: $23
    call Call_03e_61a2                            ; $629e: $cd $a2 $61
    pop hl                                        ; $62a1: $e1
    pop de                                        ; $62a2: $d1
    pop bc                                        ; $62a3: $c1
    pop af                                        ; $62a4: $f1
    ret                                           ; $62a5: $c9


Call_03e_62a6:
    push bc                                       ; $62a6: $c5
    push de                                       ; $62a7: $d5
    push hl                                       ; $62a8: $e5
    call Call_03e_6342                            ; $62a9: $cd $42 $63
    bit 7, h                                      ; $62ac: $cb $7c
    jr z, jr_03e_62b8                             ; $62ae: $28 $08

    push hl                                       ; $62b0: $e5
    pop de                                        ; $62b1: $d1
    ld hl, $0000                                  ; $62b2: $21 $00 $00
    call Call_000_08ac                            ; $62b5: $cd $ac $08

jr_03e_62b8:
    push hl                                       ; $62b8: $e5
    pop bc                                        ; $62b9: $c1
    ld de, $0064                                  ; $62ba: $11 $64 $00
    call Call_000_08ac                            ; $62bd: $cd $ac $08
    bit 7, h                                      ; $62c0: $cb $7c
    jr nz, jr_03e_62c6                            ; $62c2: $20 $02

    push hl                                       ; $62c4: $e5
    pop bc                                        ; $62c5: $c1

jr_03e_62c6:
    push bc                                       ; $62c6: $c5
    pop hl                                        ; $62c7: $e1
    ld de, $000a                                  ; $62c8: $11 $0a $00
    call Call_000_09ae                            ; $62cb: $cd $ae $09
    ld a, l                                       ; $62ce: $7d
    pop hl                                        ; $62cf: $e1
    pop de                                        ; $62d0: $d1
    pop bc                                        ; $62d1: $c1
    ret                                           ; $62d2: $c9


Call_03e_62d3:
    push bc                                       ; $62d3: $c5
    push de                                       ; $62d4: $d5
    push hl                                       ; $62d5: $e5
    call Call_03e_6342                            ; $62d6: $cd $42 $63
    bit 7, h                                      ; $62d9: $cb $7c
    jr z, jr_03e_62e5                             ; $62db: $28 $08

    push hl                                       ; $62dd: $e5
    pop de                                        ; $62de: $d1
    ld hl, $0000                                  ; $62df: $21 $00 $00
    call Call_000_08ac                            ; $62e2: $cd $ac $08

jr_03e_62e5:
    push hl                                       ; $62e5: $e5
    pop bc                                        ; $62e6: $c1
    ld de, $0064                                  ; $62e7: $11 $64 $00
    call Call_000_08ac                            ; $62ea: $cd $ac $08
    bit 7, h                                      ; $62ed: $cb $7c
    jr nz, jr_03e_62f3                            ; $62ef: $20 $02

    push hl                                       ; $62f1: $e5
    pop bc                                        ; $62f2: $c1

jr_03e_62f3:
    push bc                                       ; $62f3: $c5
    pop hl                                        ; $62f4: $e1
    ld de, $000a                                  ; $62f5: $11 $0a $00
    call Call_000_09ae                            ; $62f8: $cd $ae $09
    ld a, $0a                                     ; $62fb: $3e $0a
    call Call_000_08b9                            ; $62fd: $cd $b9 $08
    push hl                                       ; $6300: $e5
    pop de                                        ; $6301: $d1
    push bc                                       ; $6302: $c5
    pop hl                                        ; $6303: $e1
    call Call_000_08ac                            ; $6304: $cd $ac $08
    ld a, l                                       ; $6307: $7d
    pop hl                                        ; $6308: $e1
    pop de                                        ; $6309: $d1
    pop bc                                        ; $630a: $c1
    ret                                           ; $630b: $c9


    push bc                                       ; $630c: $c5
    push de                                       ; $630d: $d5
    push hl                                       ; $630e: $e5
    ld l, a                                       ; $630f: $6f
    ld h, $00                                     ; $6310: $26 $00
    ld d, $00                                     ; $6312: $16 $00
    ld e, $0a                                     ; $6314: $1e $0a
    call Call_000_09ae                            ; $6316: $cd $ae $09
    ld a, l                                       ; $6319: $7d
    pop hl                                        ; $631a: $e1
    pop de                                        ; $631b: $d1
    pop bc                                        ; $631c: $c1
    ret                                           ; $631d: $c9


    push bc                                       ; $631e: $c5
    push de                                       ; $631f: $d5
    push hl                                       ; $6320: $e5
    ld b, a                                       ; $6321: $47
    sub $0a                                       ; $6322: $d6 $0a
    bit 7, a                                      ; $6324: $cb $7f
    jp nz, Jump_03e_633d                          ; $6326: $c2 $3d $63

    ld l, b                                       ; $6329: $68
    ld h, $00                                     ; $632a: $26 $00
    ld d, $00                                     ; $632c: $16 $00
    ld e, $0a                                     ; $632e: $1e $0a
    call Call_000_09ae                            ; $6330: $cd $ae $09
    ld a, $0a                                     ; $6333: $3e $0a
    call Call_000_08b9                            ; $6335: $cd $b9 $08
    ld c, l                                       ; $6338: $4d
    ld a, b                                       ; $6339: $78
    sub c                                         ; $633a: $91
    jr jr_03e_633e                                ; $633b: $18 $01

Jump_03e_633d:
    ld a, b                                       ; $633d: $78

jr_03e_633e:
    pop hl                                        ; $633e: $e1
    pop de                                        ; $633f: $d1
    pop bc                                        ; $6340: $c1
    ret                                           ; $6341: $c9


Call_03e_6342:
    push af                                       ; $6342: $f5
    push bc                                       ; $6343: $c5
    push de                                       ; $6344: $d5
    ld l, a                                       ; $6345: $6f
    ld h, $00                                     ; $6346: $26 $00
    push hl                                       ; $6348: $e5
    pop bc                                        ; $6349: $c1
    ld d, $00                                     ; $634a: $16 $00
    ld e, $91                                     ; $634c: $1e $91
    call Call_000_08ac                            ; $634e: $cd $ac $08
    bit 7, h                                      ; $6351: $cb $7c
    jr nz, jr_03e_635b                            ; $6353: $20 $06

    push bc                                       ; $6355: $c5
    pop hl                                        ; $6356: $e1
    ld h, $ff                                     ; $6357: $26 $ff
    jr jr_03e_635d                                ; $6359: $18 $02

jr_03e_635b:
    push bc                                       ; $635b: $c5
    pop hl                                        ; $635c: $e1

jr_03e_635d:
    pop de                                        ; $635d: $d1
    pop bc                                        ; $635e: $c1
    pop af                                        ; $635f: $f1
    ret                                           ; $6360: $c9


    push bc                                       ; $6361: $c5
    push de                                       ; $6362: $d5
    push hl                                       ; $6363: $e5
    ld c, $08                                     ; $6364: $0e $08
    call Call_000_25a1                            ; $6366: $cd $a1 $25
    call Call_000_2625                            ; $6369: $cd $25 $26
    rst $18                                       ; $636c: $df
    nop                                           ; $636d: $00
    dec b                                         ; $636e: $05
    rst $18                                       ; $636f: $df
    ld b, $01                                     ; $6370: $06 $01
    rst $18                                       ; $6372: $df
    ld a, [de]                                    ; $6373: $1a
    inc bc                                        ; $6374: $03
    call Call_000_0341                            ; $6375: $cd $41 $03
    call Call_000_23b6                            ; $6378: $cd $b6 $23
    call Call_000_2683                            ; $637b: $cd $83 $26
    ld a, $90                                     ; $637e: $3e $90
    ldh [rWY], a                                  ; $6380: $e0 $4a
    xor a                                         ; $6382: $af
    ldh [$8a], a                                  ; $6383: $e0 $8a
    ldh [$8b], a                                  ; $6385: $e0 $8b
    ldh a, [$96]                                  ; $6387: $f0 $96
    push af                                       ; $6389: $f5
    call Call_03e_4102                            ; $638a: $cd $02 $41
    call Call_03e_6421                            ; $638d: $cd $21 $64
    ld a, $06                                     ; $6390: $3e $06
    ldh [$96], a                                  ; $6392: $e0 $96
    ldh [rSVBK], a                                ; $6394: $e0 $70
    call Call_03e_43f7                            ; $6396: $cd $f7 $43
    ld a, $00                                     ; $6399: $3e $00
    ld bc, $0608                                  ; $639b: $01 $08 $06
    call Call_03e_60ca                            ; $639e: $cd $ca $60
    call Call_03e_659d                            ; $63a1: $cd $9d $65
    ld a, $01                                     ; $63a4: $3e $01
    ld bc, $060d                                  ; $63a6: $01 $0d $06
    call Call_03e_60ca                            ; $63a9: $cd $ca $60
    call Call_03e_659d                            ; $63ac: $cd $9d $65
    ld bc, $0e06                                  ; $63af: $01 $06 $0e
    call Call_03e_64fb                            ; $63b2: $cd $fb $64
    ld bc, $0e0b                                  ; $63b5: $01 $0b $0e
    call Call_03e_64fb                            ; $63b8: $cd $fb $64
    ld hl, $c8be                                  ; $63bb: $21 $be $c8
    ld a, [hl]                                    ; $63be: $7e
    ld bc, $0e08                                  ; $63bf: $01 $08 $0e
    call Call_03e_6525                            ; $63c2: $cd $25 $65
    ld hl, $c8fe                                  ; $63c5: $21 $fe $c8
    ld a, [hl]                                    ; $63c8: $7e
    ld bc, $0e0d                                  ; $63c9: $01 $0d $0e
    call Call_03e_6525                            ; $63cc: $cd $25 $65
    ld a, $01                                     ; $63cf: $3e $01
    ldh [$96], a                                  ; $63d1: $e0 $96
    ldh [rSVBK], a                                ; $63d3: $e0 $70
    ld hl, $d000                                  ; $63d5: $21 $00 $d0
    ld de, $b800                                  ; $63d8: $11 $00 $b8
    ld c, $24                                     ; $63db: $0e $24
    call Call_000_0468                            ; $63dd: $cd $68 $04
    ld hl, $d400                                  ; $63e0: $21 $00 $d4
    ld de, $9800                                  ; $63e3: $11 $00 $98
    ld c, $24                                     ; $63e6: $0e $24
    call Call_000_04db                            ; $63e8: $cd $db $04
    call Call_000_0804                            ; $63eb: $cd $04 $08
    rst $18                                       ; $63ee: $df
    inc h                                         ; $63ef: $24
    inc bc                                        ; $63f0: $03
    ld a, $01                                     ; $63f1: $3e $01
    ldh [$96], a                                  ; $63f3: $e0 $96
    ldh [rSVBK], a                                ; $63f5: $e0 $70
    call Call_03e_45b0                            ; $63f7: $cd $b0 $45
    call Call_03e_4605                            ; $63fa: $cd $05 $46
    call Call_03e_665b                            ; $63fd: $cd $5b $66
    ld a, $0f                                     ; $6400: $3e $0f
    ld hl, $645c                                  ; $6402: $21 $5c $64
    call Call_000_23e8                            ; $6405: $cd $e8 $23
    call Call_000_0371                            ; $6408: $cd $71 $03
    ld c, $08                                     ; $640b: $0e $08
    call Call_000_25af                            ; $640d: $cd $af $25
    call Call_000_2625                            ; $6410: $cd $25 $26
    call Call_03e_6098                            ; $6413: $cd $98 $60
    ld b, a                                       ; $6416: $47
    pop af                                        ; $6417: $f1
    ldh [$96], a                                  ; $6418: $e0 $96
    ldh [rSVBK], a                                ; $641a: $e0 $70
    ld a, b                                       ; $641c: $78
    pop hl                                        ; $641d: $e1
    pop de                                        ; $641e: $d1
    pop bc                                        ; $641f: $c1
    ret                                           ; $6420: $c9


Call_03e_6421:
    push af                                       ; $6421: $f5
    push bc                                       ; $6422: $c5
    push de                                       ; $6423: $d5
    push hl                                       ; $6424: $e5
    ld c, $08                                     ; $6425: $0e $08

jr_03e_6427:
    ld a, c                                       ; $6427: $79
    cp $0a                                        ; $6428: $fe $0a
    jr z, jr_03e_643e                             ; $642a: $28 $12

    ld b, $07                                     ; $642c: $06 $07

jr_03e_642e:
    ld a, b                                       ; $642e: $78
    cp $11                                        ; $642f: $fe $11
    jr z, jr_03e_643b                             ; $6431: $28 $08

    ld a, $c9                                     ; $6433: $3e $c9
    call Call_03e_6209                            ; $6435: $cd $09 $62
    inc b                                         ; $6438: $04
    jr jr_03e_642e                                ; $6439: $18 $f3

jr_03e_643b:
    inc c                                         ; $643b: $0c
    jr jr_03e_6427                                ; $643c: $18 $e9

jr_03e_643e:
    ld c, $0d                                     ; $643e: $0e $0d

jr_03e_6440:
    ld a, c                                       ; $6440: $79
    cp $0f                                        ; $6441: $fe $0f
    jr z, jr_03e_6457                             ; $6443: $28 $12

    ld b, $07                                     ; $6445: $06 $07

jr_03e_6447:
    ld a, b                                       ; $6447: $78
    cp $11                                        ; $6448: $fe $11
    jr z, jr_03e_6454                             ; $644a: $28 $08

    ld a, $c9                                     ; $644c: $3e $c9
    call Call_03e_6209                            ; $644e: $cd $09 $62
    inc b                                         ; $6451: $04
    jr jr_03e_6447                                ; $6452: $18 $f3

jr_03e_6454:
    inc c                                         ; $6454: $0c
    jr jr_03e_6440                                ; $6455: $18 $e9

jr_03e_6457:
    pop hl                                        ; $6457: $e1
    pop de                                        ; $6458: $d1
    pop bc                                        ; $6459: $c1
    pop af                                        ; $645a: $f1
    ret                                           ; $645b: $c9


    ldh a, [$96]                                  ; $645c: $f0 $96
    push af                                       ; $645e: $f5
    push af                                       ; $645f: $f5
    push bc                                       ; $6460: $c5
    push de                                       ; $6461: $d5
    push hl                                       ; $6462: $e5
    ld a, $06                                     ; $6463: $3e $06
    ldh [$96], a                                  ; $6465: $e0 $96
    ldh [rSVBK], a                                ; $6467: $e0 $70
    ld hl, $0201                                  ; $6469: $21 $01 $02
    ld de, $3030                                  ; $646c: $11 $30 $30
    ld bc, $0c5c                                  ; $646f: $01 $5c $0c
    call Call_000_2756                            ; $6472: $cd $56 $27
    ld hl, $0201                                  ; $6475: $21 $01 $02
    ld de, $3058                                  ; $6478: $11 $58 $30
    ld bc, $0d6c                                  ; $647b: $01 $6c $0d
    call Call_000_2756                            ; $647e: $cd $56 $27
    ld hl, $6740                                  ; $6481: $21 $40 $67
    ld bc, $0910                                  ; $6484: $01 $10 $09
    ld de, $0000                                  ; $6487: $11 $00 $00
    call Call_000_26ea                            ; $648a: $cd $ea $26
    ld hl, $674e                                  ; $648d: $21 $4e $67
    ld bc, $0a20                                  ; $6490: $01 $20 $0a
    ld de, $0000                                  ; $6493: $11 $00 $00
    call Call_000_26ea                            ; $6496: $cd $ea $26
    ldh a, [$8c]                                  ; $6499: $f0 $8c
    and $3f                                       ; $649b: $e6 $3f
    ld hl, $64bb                                  ; $649d: $21 $bb $64
    add l                                         ; $64a0: $85
    ld l, a                                       ; $64a1: $6f
    jr nc, jr_03e_64a5                            ; $64a2: $30 $01

    inc h                                         ; $64a4: $24

jr_03e_64a5:
    ld e, $00                                     ; $64a5: $1e $00
    ld d, [hl]                                    ; $64a7: $56
    ld hl, $4930                                  ; $64a8: $21 $30 $49
    ld bc, $0800                                  ; $64ab: $01 $00 $08
    call Call_000_26ea                            ; $64ae: $cd $ea $26
    pop hl                                        ; $64b1: $e1
    pop de                                        ; $64b2: $d1
    pop bc                                        ; $64b3: $c1
    pop af                                        ; $64b4: $f1
    pop af                                        ; $64b5: $f1
    ldh [$96], a                                  ; $64b6: $e0 $96
    ldh [rSVBK], a                                ; $64b8: $e0 $70
    ret                                           ; $64ba: $c9


    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    ld bc, $0101                                  ; $64be: $01 $01 $01
    ld [bc], a                                    ; $64c1: $02
    ld [bc], a                                    ; $64c2: $02
    ld [bc], a                                    ; $64c3: $02
    inc bc                                        ; $64c4: $03
    inc bc                                        ; $64c5: $03
    inc bc                                        ; $64c6: $03
    inc bc                                        ; $64c7: $03
    inc bc                                        ; $64c8: $03
    inc bc                                        ; $64c9: $03
    inc bc                                        ; $64ca: $03
    inc bc                                        ; $64cb: $03
    inc bc                                        ; $64cc: $03
    inc bc                                        ; $64cd: $03
    inc bc                                        ; $64ce: $03
    inc bc                                        ; $64cf: $03
    inc bc                                        ; $64d0: $03
    inc bc                                        ; $64d1: $03
    inc bc                                        ; $64d2: $03
    ld [bc], a                                    ; $64d3: $02
    ld [bc], a                                    ; $64d4: $02
    ld [bc], a                                    ; $64d5: $02
    ld bc, $0101                                  ; $64d6: $01 $01 $01
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    cp $fe                                        ; $64e1: $fe $fe
    cp $fd                                        ; $64e3: $fe $fd
    db $fd                                        ; $64e5: $fd
    db $fd                                        ; $64e6: $fd
    db $fd                                        ; $64e7: $fd
    db $fd                                        ; $64e8: $fd
    db $fd                                        ; $64e9: $fd
    db $fd                                        ; $64ea: $fd
    db $fd                                        ; $64eb: $fd
    db $fd                                        ; $64ec: $fd
    db $fd                                        ; $64ed: $fd
    db $fd                                        ; $64ee: $fd
    db $fd                                        ; $64ef: $fd
    db $fd                                        ; $64f0: $fd
    db $fd                                        ; $64f1: $fd
    db $fd                                        ; $64f2: $fd
    cp $fe                                        ; $64f3: $fe $fe
    cp $ff                                        ; $64f5: $fe $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00

Call_03e_64fb:
    push af                                       ; $64fb: $f5
    push bc                                       ; $64fc: $c5
    push de                                       ; $64fd: $d5
    push hl                                       ; $64fe: $e5
    push bc                                       ; $64ff: $c5
    ld a, $39                                     ; $6500: $3e $39
    call Call_03e_6209                            ; $6502: $cd $09 $62
    inc b                                         ; $6505: $04
    inc a                                         ; $6506: $3c
    call Call_03e_6209                            ; $6507: $cd $09 $62
    inc b                                         ; $650a: $04
    inc a                                         ; $650b: $3c
    call Call_03e_6209                            ; $650c: $cd $09 $62
    pop bc                                        ; $650f: $c1
    inc c                                         ; $6510: $0c
    ld a, $49                                     ; $6511: $3e $49
    call Call_03e_6209                            ; $6513: $cd $09 $62
    inc a                                         ; $6516: $3c
    inc b                                         ; $6517: $04
    call Call_03e_6209                            ; $6518: $cd $09 $62
    inc a                                         ; $651b: $3c
    inc b                                         ; $651c: $04
    call Call_03e_6209                            ; $651d: $cd $09 $62
    pop hl                                        ; $6520: $e1
    pop de                                        ; $6521: $d1
    pop bc                                        ; $6522: $c1
    pop af                                        ; $6523: $f1
    ret                                           ; $6524: $c9


Call_03e_6525:
    push af                                       ; $6525: $f5
    push bc                                       ; $6526: $c5
    push de                                       ; $6527: $d5
    push hl                                       ; $6528: $e5
    ld d, a                                       ; $6529: $57
    push bc                                       ; $652a: $c5
    push de                                       ; $652b: $d5
    call Call_03e_6342                            ; $652c: $cd $42 $63
    push hl                                       ; $652f: $e5
    pop bc                                        ; $6530: $c1
    ld de, $0000                                  ; $6531: $11 $00 $00
    call Call_03e_6637                            ; $6534: $cd $37 $66
    cp $00                                        ; $6537: $fe $00
    jr z, jr_03e_6547                             ; $6539: $28 $0c

    bit 7, h                                      ; $653b: $cb $7c
    jr nz, jr_03e_6543                            ; $653d: $20 $04

    ld a, $2b                                     ; $653f: $3e $2b
    jr jr_03e_6549                                ; $6541: $18 $06

jr_03e_6543:
    ld a, $2d                                     ; $6543: $3e $2d
    jr jr_03e_6549                                ; $6545: $18 $02

jr_03e_6547:
    ld a, $60                                     ; $6547: $3e $60

jr_03e_6549:
    pop de                                        ; $6549: $d1
    pop bc                                        ; $654a: $c1
    call Call_03e_61e3                            ; $654b: $cd $e3 $61
    inc b                                         ; $654e: $04
    ld a, d                                       ; $654f: $7a
    cp $00                                        ; $6550: $fe $00
    jr z, jr_03e_6577                             ; $6552: $28 $23

    push bc                                       ; $6554: $c5
    push de                                       ; $6555: $d5
    call Call_03e_6342                            ; $6556: $cd $42 $63
    bit 7, h                                      ; $6559: $cb $7c
    jr z, jr_03e_6565                             ; $655b: $28 $08

    push hl                                       ; $655d: $e5
    pop de                                        ; $655e: $d1
    ld hl, $0000                                  ; $655f: $21 $00 $00
    call Call_000_08ac                            ; $6562: $cd $ac $08

jr_03e_6565:
    ld de, $0064                                  ; $6565: $11 $64 $00
    call Call_000_09ae                            ; $6568: $cd $ae $09
    pop de                                        ; $656b: $d1
    pop bc                                        ; $656c: $c1
    ld a, l                                       ; $656d: $7d
    cp $00                                        ; $656e: $fe $00
    jr z, jr_03e_6577                             ; $6570: $28 $05

    ld a, $31                                     ; $6572: $3e $31
    call Call_03e_61e3                            ; $6574: $cd $e3 $61

jr_03e_6577:
    inc b                                         ; $6577: $04
    ld a, d                                       ; $6578: $7a
    call Call_03e_62a6                            ; $6579: $cd $a6 $62
    cp $00                                        ; $657c: $fe $00
    jr nz, jr_03e_6589                            ; $657e: $20 $09

    ld a, d                                       ; $6580: $7a
    sub $64                                       ; $6581: $d6 $64
    bit 7, a                                      ; $6583: $cb $7f
    jr nz, jr_03e_658e                            ; $6585: $20 $07

    ld a, $00                                     ; $6587: $3e $00

jr_03e_6589:
    add $30                                       ; $6589: $c6 $30
    call Call_03e_61e3                            ; $658b: $cd $e3 $61

jr_03e_658e:
    inc b                                         ; $658e: $04
    ld a, d                                       ; $658f: $7a
    call Call_03e_62d3                            ; $6590: $cd $d3 $62
    add $30                                       ; $6593: $c6 $30
    call Call_03e_61e3                            ; $6595: $cd $e3 $61
    pop hl                                        ; $6598: $e1
    pop de                                        ; $6599: $d1
    pop bc                                        ; $659a: $c1
    pop af                                        ; $659b: $f1
    ret                                           ; $659c: $c9


Call_03e_659d:
    push af                                       ; $659d: $f5
    push bc                                       ; $659e: $c5
    push de                                       ; $659f: $d5
    push hl                                       ; $65a0: $e5
    cp $01                                        ; $65a1: $fe $01
    jr z, jr_03e_65b0                             ; $65a3: $28 $0b

    ld hl, $c890                                  ; $65a5: $21 $90 $c8
    ld a, [hl]                                    ; $65a8: $7e
    ld hl, $c893                                  ; $65a9: $21 $93 $c8
    ld d, $00                                     ; $65ac: $16 $00
    jr jr_03e_65b9                                ; $65ae: $18 $09

jr_03e_65b0:
    ld hl, $c8d0                                  ; $65b0: $21 $d0 $c8
    ld a, [hl]                                    ; $65b3: $7e
    ld hl, $c8d3                                  ; $65b4: $21 $d3 $c8
    ld d, $05                                     ; $65b7: $16 $05

jr_03e_65b9:
    cp $0b                                        ; $65b9: $fe $0b
    jr z, jr_03e_65d0                             ; $65bb: $28 $13

    ld a, [hl]                                    ; $65bd: $7e
    cp $00                                        ; $65be: $fe $00
    jr z, jr_03e_65d0                             ; $65c0: $28 $0e

    cp $01                                        ; $65c2: $fe $01
    jr z, jr_03e_65d8                             ; $65c4: $28 $12

    cp $02                                        ; $65c6: $fe $02
    jr z, jr_03e_65d0                             ; $65c8: $28 $06

    cp $03                                        ; $65ca: $fe $03
    jr z, jr_03e_65d8                             ; $65cc: $28 $0a

    jr jr_03e_65de                                ; $65ce: $18 $0e

jr_03e_65d0:
    ld hl, $402f                                  ; $65d0: $21 $2f $40
    call Call_03e_6293                            ; $65d3: $cd $93 $62
    jr jr_03e_65de                                ; $65d6: $18 $06

jr_03e_65d8:
    ld hl, $4028                                  ; $65d8: $21 $28 $40
    call Call_03e_6293                            ; $65db: $cd $93 $62

jr_03e_65de:
    pop hl                                        ; $65de: $e1
    pop de                                        ; $65df: $d1
    pop bc                                        ; $65e0: $c1
    pop af                                        ; $65e1: $f1
    ret                                           ; $65e2: $c9


    push af                                       ; $65e3: $f5
    push bc                                       ; $65e4: $c5
    push de                                       ; $65e5: $d5
    push hl                                       ; $65e6: $e5
    push bc                                       ; $65e7: $c5
    ld a, $ca                                     ; $65e8: $3e $ca
    call Call_03e_6209                            ; $65ea: $cd $09 $62
    inc b                                         ; $65ed: $04
    inc a                                         ; $65ee: $3c
    call Call_03e_6209                            ; $65ef: $cd $09 $62
    inc b                                         ; $65f2: $04
    inc a                                         ; $65f3: $3c
    call Call_03e_6209                            ; $65f4: $cd $09 $62
    pop bc                                        ; $65f7: $c1
    inc c                                         ; $65f8: $0c
    ld a, $da                                     ; $65f9: $3e $da
    call Call_03e_6209                            ; $65fb: $cd $09 $62
    inc a                                         ; $65fe: $3c
    inc b                                         ; $65ff: $04
    call Call_03e_6209                            ; $6600: $cd $09 $62
    inc a                                         ; $6603: $3c
    inc b                                         ; $6604: $04
    call Call_03e_6209                            ; $6605: $cd $09 $62
    pop hl                                        ; $6608: $e1
    pop de                                        ; $6609: $d1
    pop bc                                        ; $660a: $c1
    pop af                                        ; $660b: $f1
    ret                                           ; $660c: $c9


    push af                                       ; $660d: $f5
    push bc                                       ; $660e: $c5
    push de                                       ; $660f: $d5
    push hl                                       ; $6610: $e5
    push bc                                       ; $6611: $c5
    ld a, $cd                                     ; $6612: $3e $cd
    call Call_03e_6209                            ; $6614: $cd $09 $62
    inc b                                         ; $6617: $04
    inc a                                         ; $6618: $3c
    call Call_03e_6209                            ; $6619: $cd $09 $62
    inc b                                         ; $661c: $04
    inc a                                         ; $661d: $3c
    call Call_03e_6209                            ; $661e: $cd $09 $62
    pop bc                                        ; $6621: $c1
    inc c                                         ; $6622: $0c
    ld a, $dd                                     ; $6623: $3e $dd
    call Call_03e_6209                            ; $6625: $cd $09 $62
    inc a                                         ; $6628: $3c
    inc b                                         ; $6629: $04
    call Call_03e_6209                            ; $662a: $cd $09 $62
    inc a                                         ; $662d: $3c
    inc b                                         ; $662e: $04
    call Call_03e_6209                            ; $662f: $cd $09 $62
    pop hl                                        ; $6632: $e1

Call_03e_6633:
    pop de                                        ; $6633: $d1
    pop bc                                        ; $6634: $c1
    pop af                                        ; $6635: $f1
    ret                                           ; $6636: $c9


Call_03e_6637:
    push bc                                       ; $6637: $c5
    push de                                       ; $6638: $d5
    push hl                                       ; $6639: $e5
    push bc                                       ; $663a: $c5
    pop hl                                        ; $663b: $e1
    call Call_000_08ac                            ; $663c: $cd $ac $08
    bit 7, h                                      ; $663f: $cb $7c
    jr nz, jr_03e_6655                            ; $6641: $20 $12

    ld a, h                                       ; $6643: $7c
    cp $00                                        ; $6644: $fe $00
    jr nz, jr_03e_6651                            ; $6646: $20 $09

    ld a, l                                       ; $6648: $7d
    cp $00                                        ; $6649: $fe $00
    jr nz, jr_03e_6651                            ; $664b: $20 $04

    ld a, $00                                     ; $664d: $3e $00
    jr jr_03e_6657                                ; $664f: $18 $06

jr_03e_6651:
    ld a, $01                                     ; $6651: $3e $01
    jr jr_03e_6657                                ; $6653: $18 $02

jr_03e_6655:
    ld a, $02                                     ; $6655: $3e $02

jr_03e_6657:
    pop hl                                        ; $6657: $e1
    pop de                                        ; $6658: $d1
    pop bc                                        ; $6659: $c1
    ret                                           ; $665a: $c9


Call_03e_665b:
    push af                                       ; $665b: $f5
    push bc                                       ; $665c: $c5
    push de                                       ; $665d: $d5
    push hl                                       ; $665e: $e5
    ldh a, [$96]                                  ; $665f: $f0 $96
    push af                                       ; $6661: $f5
    ld a, $01                                     ; $6662: $3e $01
    ldh [$96], a                                  ; $6664: $e0 $96
    ldh [rSVBK], a                                ; $6666: $e0 $70
    ld hl, $c8be                                  ; $6668: $21 $be $c8
    ld a, [hl]                                    ; $666b: $7e
    call Call_03e_6342                            ; $666c: $cd $42 $63
    push hl                                       ; $666f: $e5
    pop bc                                        ; $6670: $c1
    ld hl, $c8fe                                  ; $6671: $21 $fe $c8
    ld a, [hl]                                    ; $6674: $7e
    call Call_03e_6342                            ; $6675: $cd $42 $63
    push hl                                       ; $6678: $e5
    pop de                                        ; $6679: $d1
    call Call_03e_6637                            ; $667a: $cd $37 $66
    cp $00                                        ; $667d: $fe $00
    jr z, jr_03e_66fd                             ; $667f: $28 $7c

    cp $02                                        ; $6681: $fe $02
    jr z, jr_03e_66c1                             ; $6683: $28 $3c

    ld hl, $5e2e                                  ; $6685: $21 $2e $5e
    ld de, $d000                                  ; $6688: $11 $00 $d0
    call Call_000_1f2f                            ; $668b: $cd $2f $1f
    ld hl, $d000                                  ; $668e: $21 $00 $d0
    ld de, $a100                                  ; $6691: $11 $00 $a1
    ld c, $06                                     ; $6694: $0e $06
    call Call_000_04db                            ; $6696: $cd $db $04
    ld hl, $6058                                  ; $6699: $21 $58 $60
    ld de, $0901                                  ; $669c: $11 $01 $09
    call Call_000_0595                            ; $669f: $cd $95 $05
    ld hl, $5de1                                  ; $66a2: $21 $e1 $5d
    ld de, $d000                                  ; $66a5: $11 $00 $d0
    call Call_000_1f2f                            ; $66a8: $cd $2f $1f
    ld hl, $d000                                  ; $66ab: $21 $00 $d0
    ld de, $a200                                  ; $66ae: $11 $00 $a2
    ld c, $06                                     ; $66b1: $0e $06
    call Call_000_04db                            ; $66b3: $cd $db $04
    ld hl, $6068                                  ; $66b6: $21 $68 $60
    ld de, $0a01                                  ; $66b9: $11 $01 $0a
    call Call_000_0595                            ; $66bc: $cd $95 $05
    jr jr_03e_672e                                ; $66bf: $18 $6d

jr_03e_66c1:
    ld hl, $5de1                                  ; $66c1: $21 $e1 $5d
    ld de, $d000                                  ; $66c4: $11 $00 $d0
    call Call_000_1f2f                            ; $66c7: $cd $2f $1f
    ld hl, $d000                                  ; $66ca: $21 $00 $d0
    ld de, $a100                                  ; $66cd: $11 $00 $a1
    ld c, $06                                     ; $66d0: $0e $06
    call Call_000_04db                            ; $66d2: $cd $db $04
    ld hl, $6068                                  ; $66d5: $21 $68 $60
    ld de, $0901                                  ; $66d8: $11 $01 $09
    call Call_000_0595                            ; $66db: $cd $95 $05
    ld hl, $5e2e                                  ; $66de: $21 $2e $5e
    ld de, $d000                                  ; $66e1: $11 $00 $d0
    call Call_000_1f2f                            ; $66e4: $cd $2f $1f
    ld hl, $d000                                  ; $66e7: $21 $00 $d0
    ld de, $a200                                  ; $66ea: $11 $00 $a2
    ld c, $06                                     ; $66ed: $0e $06
    call Call_000_04db                            ; $66ef: $cd $db $04
    ld hl, $6058                                  ; $66f2: $21 $58 $60
    ld de, $0a01                                  ; $66f5: $11 $01 $0a
    call Call_000_0595                            ; $66f8: $cd $95 $05
    jr jr_03e_672e                                ; $66fb: $18 $31

jr_03e_66fd:
    ld hl, $5de1                                  ; $66fd: $21 $e1 $5d
    ld de, $d000                                  ; $6700: $11 $00 $d0
    call Call_000_1f2f                            ; $6703: $cd $2f $1f
    ld hl, $d000                                  ; $6706: $21 $00 $d0
    ld de, $a100                                  ; $6709: $11 $00 $a1
    ld c, $06                                     ; $670c: $0e $06
    call Call_000_04db                            ; $670e: $cd $db $04
    ld hl, $d000                                  ; $6711: $21 $00 $d0
    ld de, $a200                                  ; $6714: $11 $00 $a2
    ld c, $06                                     ; $6717: $0e $06
    call Call_000_04db                            ; $6719: $cd $db $04
    ld hl, $6068                                  ; $671c: $21 $68 $60
    ld de, $0901                                  ; $671f: $11 $01 $09
    call Call_000_0595                            ; $6722: $cd $95 $05
    ld hl, $6068                                  ; $6725: $21 $68 $60
    ld de, $0a01                                  ; $6728: $11 $01 $0a
    call Call_000_0595                            ; $672b: $cd $95 $05

jr_03e_672e:
    pop af                                        ; $672e: $f1
    ldh [$96], a                                  ; $672f: $e0 $96
    ldh [rSVBK], a                                ; $6731: $e0 $70
    pop hl                                        ; $6733: $e1
    pop de                                        ; $6734: $d1
    pop bc                                        ; $6735: $c1
    pop af                                        ; $6736: $f1
    ret                                           ; $6737: $c9


    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    ld c, b                                       ; $6740: $48
    inc e                                         ; $6741: $1c
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    ld c, b                                       ; $6744: $48
    inc h                                         ; $6745: $24
    ld [bc], a                                    ; $6746: $02
    nop                                           ; $6747: $00
    ld c, b                                       ; $6748: $48
    inc l                                         ; $6749: $2c
    inc b                                         ; $674a: $04
    nop                                           ; $674b: $00
    add b                                         ; $674c: $80
    nop                                           ; $674d: $00
    ld [hl], b                                    ; $674e: $70
    inc e                                         ; $674f: $1c
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    ld [hl], b                                    ; $6752: $70
    inc h                                         ; $6753: $24
    ld [bc], a                                    ; $6754: $02
    nop                                           ; $6755: $00
    ld [hl], b                                    ; $6756: $70
    inc l                                         ; $6757: $2c
    inc b                                         ; $6758: $04
    nop                                           ; $6759: $00
    add b                                         ; $675a: $80
    nop                                           ; $675b: $00
    rst $18                                       ; $675c: $df
    nop                                           ; $675d: $00
    ld c, $c9                                     ; $675e: $0e $c9
    push af                                       ; $6760: $f5
    push bc                                       ; $6761: $c5
    push de                                       ; $6762: $d5
    push hl                                       ; $6763: $e5

jr_03e_6764:
    call $403f                                    ; $6764: $cd $3f $40
    cp $00                                        ; $6767: $fe $00
    jr z, jr_03e_677a                             ; $6769: $28 $0f

    cp $01                                        ; $676b: $fe $01
    jr z, jr_03e_676f                             ; $676d: $28 $00

jr_03e_676f:
    rst $18                                       ; $676f: $df
    nop                                           ; $6770: $00
    ld c, $fe                                     ; $6771: $0e $fe
    nop                                           ; $6773: $00
    jr z, jr_03e_677a                             ; $6774: $28 $04

    cp $01                                        ; $6776: $fe $01
    jr z, jr_03e_6764                             ; $6778: $28 $ea

jr_03e_677a:
    pop hl                                        ; $677a: $e1
    pop de                                        ; $677b: $d1
    pop bc                                        ; $677c: $c1
    pop af                                        ; $677d: $f1
    ret                                           ; $677e: $c9


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

Jump_03e_6c83:
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

Jump_03e_6c93:
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

Jump_03e_7022:
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

Call_03e_74fb:
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

Call_03e_783b:
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff

Jump_03e_7840:
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

Jump_03e_7cbb:
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

Jump_03e_7d05:
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

Jump_03e_7e3c:
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

Jump_03e_7f80:
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
