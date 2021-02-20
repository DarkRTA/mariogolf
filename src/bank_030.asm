; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    db $0e, $40

    ld hl, sp+$48                                 ; $4002: $f8 $48
    ld h, l                                       ; $4004: $65
    ld d, b                                       ; $4005: $50
    db $fd                                        ; $4006: $fd
    ld d, a                                       ; $4007: $57
    ld a, [hl+]                                   ; $4008: $2a
    ld h, h                                       ; $4009: $64
    cp e                                          ; $400a: $bb
    ld [hl], c                                    ; $400b: $71
    bit 6, e                                      ; $400c: $cb $73

    db $61, $40, $8c, $40, $1c, $40, $c5, $40, $6e, $42, $89, $42, $9a, $42, $99, $7d
    db $00, $1b, $00, $29, $00, $00, $00, $c0, $01, $0a, $f4, $7d, $00, $1f, $00, $20
    db $00, $00, $00, $c0, $01, $16, $ff, $7d, $00, $1e, $00, $1d, $00, $00, $00, $80
    db $01, $0d, $99, $7d, $00, $1c, $00, $1a, $00, $00, $00, $40, $01, $16, $99, $7d
    db $00, $18, $00, $1f, $00, $00, $00, $00, $01, $16, $00, $00, $00, $00, $00, $00
    db $00, $00, $ff, $01, $c0, $00, $1b, $00, $33

    ld [bc], a                                    ; $4067: $02
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    dec e                                         ; $406a: $1d
    nop                                           ; $406b: $00
    jr nz, jr_030_4071                            ; $406c: $20 $03

    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    inc e                                         ; $4070: $1c

jr_030_4071:
    nop                                           ; $4071: $00
    dec e                                         ; $4072: $1d
    inc b                                         ; $4073: $04
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    dec e                                         ; $4076: $1d
    nop                                           ; $4077: $00
    jr nz, jr_030_407f                            ; $4078: $20 $05

    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    inc e                                         ; $407c: $1c
    nop                                           ; $407d: $00
    dec e                                         ; $407e: $1d

jr_030_407f:
    ld b, $00                                     ; $407f: $06 $00
    nop                                           ; $4081: $00
    dec e                                         ; $4082: $1d
    nop                                           ; $4083: $00
    jr nz, @+$09                                  ; $4084: $20 $07

    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    inc e                                         ; $4088: $1c
    nop                                           ; $4089: $00
    dec e                                         ; $408a: $1d
    rst $38                                       ; $408b: $ff
    ld bc, $00ff                                  ; $408c: $01 $ff $00
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    ld [$0204], sp                                ; $4092: $08 $04 $02
    rst $38                                       ; $4095: $ff
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    dec c                                         ; $409a: $0d
    ld [bc], a                                    ; $409b: $02
    inc bc                                        ; $409c: $03
    rst $38                                       ; $409d: $ff
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    dec c                                         ; $40a2: $0d
    inc bc                                        ; $40a3: $03
    inc b                                         ; $40a4: $04
    rst $38                                       ; $40a5: $ff
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    dec c                                         ; $40aa: $0d
    inc b                                         ; $40ab: $04
    dec b                                         ; $40ac: $05
    rst $38                                       ; $40ad: $ff
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    dec c                                         ; $40b2: $0d
    dec b                                         ; $40b3: $05
    ld b, $ff                                     ; $40b4: $06 $ff
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    dec c                                         ; $40ba: $0d
    ld b, $07                                     ; $40bb: $06 $07
    rst $38                                       ; $40bd: $ff
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    dec c                                         ; $40c2: $0d
    rlca                                          ; $40c3: $07
    rst $38                                       ; $40c4: $ff
    ld [bc], a                                    ; $40c5: $02
    rst $38                                       ; $40c6: $ff
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    xor $40                                       ; $40c9: $ee $40
    inc bc                                        ; $40cb: $03
    nop                                           ; $40cc: $00
    inc bc                                        ; $40cd: $03
    rst $38                                       ; $40ce: $ff
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    add hl, de                                    ; $40d1: $19
    ld b, c                                       ; $40d2: $41
    dec bc                                        ; $40d3: $0b
    nop                                           ; $40d4: $00
    inc b                                         ; $40d5: $04
    rst $38                                       ; $40d6: $ff
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    and d                                         ; $40d9: $a2
    ld b, c                                       ; $40da: $41
    dec bc                                        ; $40db: $0b
    nop                                           ; $40dc: $00
    dec b                                         ; $40dd: $05
    rst $38                                       ; $40de: $ff
    nop                                           ; $40df: $00
    nop                                           ; $40e0: $00
    dec hl                                        ; $40e1: $2b
    ld b, d                                       ; $40e2: $42
    inc bc                                        ; $40e3: $03
    nop                                           ; $40e4: $00
    ld b, $ff                                     ; $40e5: $06 $ff
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    ld l, c                                       ; $40e9: $69
    inc c                                         ; $40ea: $0c
    inc bc                                        ; $40eb: $03
    nop                                           ; $40ec: $00
    rst $38                                       ; $40ed: $ff
    ld hl, $0c63                                  ; $40ee: $21 $63 $0c
    rst $18                                       ; $40f1: $df
    ld c, $0a                                     ; $40f2: $0e $0a
    ld a, $02                                     ; $40f4: $3e $02
    rst $18                                       ; $40f6: $df
    ld a, [bc]                                    ; $40f7: $0a
    ld a, [bc]                                    ; $40f8: $0a
    rst $18                                       ; $40f9: $df
    ld [de], a                                    ; $40fa: $12
    ld a, [bc]                                    ; $40fb: $0a
    rst $18                                       ; $40fc: $df
    inc c                                         ; $40fd: $0c
    ld a, [bc]                                    ; $40fe: $0a
    push af                                       ; $40ff: $f5
    ld a, $05                                     ; $4100: $3e $05
    rst $18                                       ; $4102: $df
    inc b                                         ; $4103: $04
    ld a, [bc]                                    ; $4104: $0a
    pop af                                        ; $4105: $f1
    and a                                         ; $4106: $a7
    jr nz, @+$09                                  ; $4107: $20 $07

    ld a, $02                                     ; $4109: $3e $02
    rst $18                                       ; $410b: $df
    ld [$180a], sp                                ; $410c: $08 $0a $18
    ld [$10df], sp                                ; $410f: $08 $df $10
    ld a, [bc]                                    ; $4112: $0a
    ld a, $02                                     ; $4113: $3e $02
    rst $18                                       ; $4115: $df
    ld [$c90a], sp                                ; $4116: $08 $0a $c9
    rst $30                                       ; $4119: $f7
    and b                                         ; $411a: $a0
    inc c                                         ; $411b: $0c
    jr z, jr_030_4122                             ; $411c: $28 $04

    call Call_030_44d0                            ; $411e: $cd $d0 $44
    ret                                           ; $4121: $c9


jr_030_4122:
    ld hl, $0c9f                                  ; $4122: $21 $9f $0c
    rst $18                                       ; $4125: $df
    ld c, $0a                                     ; $4126: $0e $0a
    ld a, $03                                     ; $4128: $3e $03
    rst $18                                       ; $412a: $df
    ld a, [bc]                                    ; $412b: $0a
    ld a, [bc]                                    ; $412c: $0a
    rst $18                                       ; $412d: $df
    ld [de], a                                    ; $412e: $12
    ld a, [bc]                                    ; $412f: $0a
    rst $18                                       ; $4130: $df
    inc c                                         ; $4131: $0c
    ld a, [bc]                                    ; $4132: $0a
    push af                                       ; $4133: $f5
    ld a, $05                                     ; $4134: $3e $05
    rst $18                                       ; $4136: $df
    inc b                                         ; $4137: $04
    ld a, [bc]                                    ; $4138: $0a
    pop af                                        ; $4139: $f1
    and a                                         ; $413a: $a7
    jr z, jr_030_4144                             ; $413b: $28 $07

    ld a, $03                                     ; $413d: $3e $03
    rst $18                                       ; $413f: $df
    ld [$180a], sp                                ; $4140: $08 $0a $18
    ld e, l                                       ; $4143: $5d

jr_030_4144:
    rst $18                                       ; $4144: $df
    db $10                                        ; $4145: $10
    ld a, [bc]                                    ; $4146: $0a
    ld a, $03                                     ; $4147: $3e $03
    rst $18                                       ; $4149: $df
    ld [$df0a], sp                                ; $414a: $08 $0a $df
    inc e                                         ; $414d: $1c
    db $10                                        ; $414e: $10
    rst $18                                       ; $414f: $df
    inc h                                         ; $4150: $24
    db $10                                        ; $4151: $10
    ld a, $0d                                     ; $4152: $3e $0d
    ld b, a                                       ; $4154: $47
    ld a, $02                                     ; $4155: $3e $02
    ld c, a                                       ; $4157: $4f
    rst $18                                       ; $4158: $df
    ld c, [hl]                                    ; $4159: $4e
    ld a, [bc]                                    ; $415a: $0a
    ld a, $0c                                     ; $415b: $3e $0c
    ld [$c834], a                                 ; $415d: $ea $34 $c8
    ld hl, $432e                                  ; $4160: $21 $2e $43
    ld de, $c600                                  ; $4163: $11 $00 $c6
    ld c, $04                                     ; $4166: $0e $04
    call Call_000_03eb                            ; $4168: $cd $eb $03
    ld bc, $4f00                                  ; $416b: $01 $00 $4f
    rst $18                                       ; $416e: $df
    ld e, $02                                     ; $416f: $1e $02
    ld bc, $ff01                                  ; $4171: $01 $01 $ff
    rst $18                                       ; $4174: $df
    ld e, $02                                     ; $4175: $1e $02
    ld hl, $0708                                  ; $4177: $21 $08 $07
    rst $18                                       ; $417a: $df
    db $10                                        ; $417b: $10
    db $10                                        ; $417c: $10
    ld a, $00                                     ; $417d: $3e $00
    rst $18                                       ; $417f: $df
    ld e, $10                                     ; $4180: $1e $10
    ld hl, $1d60                                  ; $4182: $21 $60 $1d
    ld de, $1f80                                  ; $4185: $11 $80 $1f
    rst $18                                       ; $4188: $df
    jr nz, jr_030_419b                            ; $4189: $20 $10

    ld de, $c000                                  ; $418b: $11 $00 $c0
    rst $18                                       ; $418e: $df
    ld [hl+], a                                   ; $418f: $22
    db $10                                        ; $4190: $10
    ldh a, [$95]                                  ; $4191: $f0 $95
    ld hl, $433e                                  ; $4193: $21 $3e $43
    rst $18                                       ; $4196: $df
    ld a, [de]                                    ; $4197: $1a
    db $10                                        ; $4198: $10
    ld a, $01                                     ; $4199: $3e $01

jr_030_419b:
    rst $18                                       ; $419b: $df
    ld [de], a                                    ; $419c: $12
    db $10                                        ; $419d: $10
    rst $18                                       ; $419e: $df
    jr nc, jr_030_41b1                            ; $419f: $30 $10

    ret                                           ; $41a1: $c9


    rst $30                                       ; $41a2: $f7
    ret nz                                        ; $41a3: $c0

    inc c                                         ; $41a4: $0c
    jr z, jr_030_41ab                             ; $41a5: $28 $04

    call Call_030_471c                            ; $41a7: $cd $1c $47
    ret                                           ; $41aa: $c9


jr_030_41ab:
    ld hl, $0cad                                  ; $41ab: $21 $ad $0c
    rst $18                                       ; $41ae: $df
    ld c, $0a                                     ; $41af: $0e $0a

jr_030_41b1:
    ld a, $04                                     ; $41b1: $3e $04
    rst $18                                       ; $41b3: $df
    ld a, [bc]                                    ; $41b4: $0a
    ld a, [bc]                                    ; $41b5: $0a
    rst $18                                       ; $41b6: $df
    ld [de], a                                    ; $41b7: $12
    ld a, [bc]                                    ; $41b8: $0a
    rst $18                                       ; $41b9: $df
    inc c                                         ; $41ba: $0c
    ld a, [bc]                                    ; $41bb: $0a
    push af                                       ; $41bc: $f5
    ld a, $05                                     ; $41bd: $3e $05
    rst $18                                       ; $41bf: $df
    inc b                                         ; $41c0: $04
    ld a, [bc]                                    ; $41c1: $0a
    pop af                                        ; $41c2: $f1
    and a                                         ; $41c3: $a7
    jr z, jr_030_41cd                             ; $41c4: $28 $07

    ld a, $04                                     ; $41c6: $3e $04
    rst $18                                       ; $41c8: $df
    ld [$180a], sp                                ; $41c9: $08 $0a $18
    ld e, l                                       ; $41cc: $5d

jr_030_41cd:
    rst $18                                       ; $41cd: $df
    db $10                                        ; $41ce: $10
    ld a, [bc]                                    ; $41cf: $0a
    ld a, $04                                     ; $41d0: $3e $04
    rst $18                                       ; $41d2: $df
    ld [$df0a], sp                                ; $41d3: $08 $0a $df
    inc e                                         ; $41d6: $1c
    db $10                                        ; $41d7: $10
    rst $18                                       ; $41d8: $df
    inc h                                         ; $41d9: $24
    db $10                                        ; $41da: $10
    ld a, $0d                                     ; $41db: $3e $0d
    ld b, a                                       ; $41dd: $47
    ld a, $03                                     ; $41de: $3e $03
    ld c, a                                       ; $41e0: $4f
    rst $18                                       ; $41e1: $df
    ld c, [hl]                                    ; $41e2: $4e
    ld a, [bc]                                    ; $41e3: $0a
    ld a, $0c                                     ; $41e4: $3e $0c
    ld [$c834], a                                 ; $41e6: $ea $34 $c8
    ld hl, $459a                                  ; $41e9: $21 $9a $45
    ld de, $c600                                  ; $41ec: $11 $00 $c6
    ld c, $04                                     ; $41ef: $0e $04
    call Call_000_03eb                            ; $41f1: $cd $eb $03
    ld bc, $4e00                                  ; $41f4: $01 $00 $4e
    rst $18                                       ; $41f7: $df
    ld e, $02                                     ; $41f8: $1e $02
    ld bc, $ff01                                  ; $41fa: $01 $01 $ff
    rst $18                                       ; $41fd: $df
    ld e, $02                                     ; $41fe: $1e $02
    ld hl, $0708                                  ; $4200: $21 $08 $07
    rst $18                                       ; $4203: $df
    db $10                                        ; $4204: $10
    db $10                                        ; $4205: $10
    ld a, $00                                     ; $4206: $3e $00
    rst $18                                       ; $4208: $df
    ld e, $10                                     ; $4209: $1e $10
    ld hl, $1e60                                  ; $420b: $21 $60 $1e
    ld de, $1d60                                  ; $420e: $11 $60 $1d
    rst $18                                       ; $4211: $df
    jr nz, jr_030_4224                            ; $4212: $20 $10

    ld de, $c000                                  ; $4214: $11 $00 $c0
    rst $18                                       ; $4217: $df
    ld [hl+], a                                   ; $4218: $22
    db $10                                        ; $4219: $10
    ldh a, [$95]                                  ; $421a: $f0 $95
    ld hl, $45aa                                  ; $421c: $21 $aa $45
    rst $18                                       ; $421f: $df
    ld a, [de]                                    ; $4220: $1a
    db $10                                        ; $4221: $10
    ld a, $01                                     ; $4222: $3e $01

jr_030_4224:
    rst $18                                       ; $4224: $df
    ld [de], a                                    ; $4225: $12
    db $10                                        ; $4226: $10
    rst $18                                       ; $4227: $df
    jr nc, jr_030_423a                            ; $4228: $30 $10

    ret                                           ; $422a: $c9


    ld hl, $0c66                                  ; $422b: $21 $66 $0c
    rst $18                                       ; $422e: $df
    ld c, $0a                                     ; $422f: $0e $0a
    ld a, $06                                     ; $4231: $3e $06
    rst $18                                       ; $4233: $df
    ld a, [bc]                                    ; $4234: $0a
    ld a, [bc]                                    ; $4235: $0a
    rst $18                                       ; $4236: $df
    ld [de], a                                    ; $4237: $12
    ld a, [bc]                                    ; $4238: $0a
    rst $18                                       ; $4239: $df

jr_030_423a:
    inc c                                         ; $423a: $0c
    ld a, [bc]                                    ; $423b: $0a
    push af                                       ; $423c: $f5
    ld a, $05                                     ; $423d: $3e $05
    rst $18                                       ; $423f: $df
    inc b                                         ; $4240: $04
    ld a, [bc]                                    ; $4241: $0a
    pop af                                        ; $4242: $f1
    and a                                         ; $4243: $a7
    jr nz, @+$09                                  ; $4244: $20 $07

    ld a, $06                                     ; $4246: $3e $06
    rst $18                                       ; $4248: $df
    ld [$180a], sp                                ; $4249: $08 $0a $18
    ld [$10df], sp                                ; $424c: $08 $df $10
    ld a, [bc]                                    ; $424f: $0a
    ld a, $06                                     ; $4250: $3e $06
    rst $18                                       ; $4252: $df
    ld [$c90a], sp                                ; $4253: $08 $0a $c9
    ld c, $08                                     ; $4256: $0e $08
    call Call_000_25a1                            ; $4258: $cd $a1 $25
    call Call_000_2625                            ; $425b: $cd $25 $26
    rst $18                                       ; $425e: $df
    ld a, [bc]                                    ; $425f: $0a
    ld bc, $903e                                  ; $4260: $01 $3e $90
    ldh [rWY], a                                  ; $4263: $e0 $4a
    call Call_000_2683                            ; $4265: $cd $83 $26
    ld a, $02                                     ; $4268: $3e $02
    ld [$c441], a                                 ; $426a: $ea $41 $c4
    ret                                           ; $426d: $c9


    ld bc, $00ff                                  ; $426e: $01 $ff $00
    nop                                           ; $4271: $00
    di                                            ; $4272: $f3
    ld a, l                                       ; $4273: $7d
    ld b, $00                                     ; $4274: $06 $00
    rst $38                                       ; $4276: $ff
    rst $18                                       ; $4277: $df
    nop                                           ; $4278: $00
    ld a, [bc]                                    ; $4279: $0a
    ld hl, $0857                                  ; $427a: $21 $57 $08
    rst $18                                       ; $427d: $df
    ld c, $0a                                     ; $427e: $0e $0a
    ld a, $00                                     ; $4280: $3e $00
    rst $18                                       ; $4282: $df
    ld [$df0a], sp                                ; $4283: $08 $0a $df
    ld [bc], a                                    ; $4286: $02
    ld a, [bc]                                    ; $4287: $0a
    ret                                           ; $4288: $c9


    db $01, $ff

    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    ld [hl], a                                    ; $428d: $77
    ld b, d                                       ; $428e: $42
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00

    db $0f, $ff, $00, $00, $e6, $47, $01, $00

    rst $38                                       ; $4299: $ff

    ld a, [$c46a]                                 ; $429a: $fa $6a $c4
    cp $01                                        ; $429d: $fe $01
    jr z, jr_030_42a9                             ; $429f: $28 $08

    push af                                       ; $42a1: $f5
    xor a                                         ; $42a2: $af
    ld hl, $c4b4                                  ; $42a3: $21 $b4 $c4
    ld [hl+], a                                   ; $42a6: $22
    ld [hl+], a                                   ; $42a7: $22
    pop af                                        ; $42a8: $f1

jr_030_42a9:
    cp $02                                        ; $42a9: $fe $02
    jr nz, jr_030_42b3                            ; $42ab: $20 $06

    call Call_030_44da                            ; $42ad: $cd $da $44
    jp Jump_030_432d                              ; $42b0: $c3 $2d $43


jr_030_42b3:
    cp $03                                        ; $42b3: $fe $03
    jr nz, jr_030_42bd                            ; $42b5: $20 $06

    call Call_030_4726                            ; $42b7: $cd $26 $47
    jp Jump_030_432d                              ; $42ba: $c3 $2d $43


jr_030_42bd:
    cp $04                                        ; $42bd: $fe $04
    jr nz, jr_030_42ef                            ; $42bf: $20 $2e

    call Call_030_4448                            ; $42c1: $cd $48 $44
    rst $30                                       ; $42c4: $f7
    ld b, b                                       ; $42c5: $40
    inc c                                         ; $42c6: $0c
    jr z, jr_030_432d                             ; $42c7: $28 $64

    rst $28                                       ; $42c9: $ef
    ld b, b                                       ; $42ca: $40
    inc c                                         ; $42cb: $0c
    rst $30                                       ; $42cc: $f7
    nop                                           ; $42cd: $00
    inc d                                         ; $42ce: $14
    jr nz, jr_030_432d                            ; $42cf: $20 $5c

    call Call_000_2ed5                            ; $42d1: $cd $d5 $2e
    ld e, $e7                                     ; $42d4: $1e $e7
    nop                                           ; $42d6: $00
    inc d                                         ; $42d7: $14
    ld de, $0014                                  ; $42d8: $11 $14 $00
    call Call_030_7e7f                            ; $42db: $cd $7f $7e
    ld b, $00                                     ; $42de: $06 $00
    ld c, $fa                                     ; $42e0: $0e $fa
    rst $18                                       ; $42e2: $df
    ld c, [hl]                                    ; $42e3: $4e
    ld a, [bc]                                    ; $42e4: $0a
    rst $18                                       ; $42e5: $df
    inc [hl]                                      ; $42e6: $34
    ld [bc], a                                    ; $42e7: $02
    ld a, $06                                     ; $42e8: $3e $06
    ld [$c441], a                                 ; $42ea: $ea $41 $c4
    jr jr_030_432d                                ; $42ed: $18 $3e

jr_030_42ef:
    cp $05                                        ; $42ef: $fe $05
    jr nz, jr_030_4321                            ; $42f1: $20 $2e

    call Call_030_46a1                            ; $42f3: $cd $a1 $46
    rst $30                                       ; $42f6: $f7
    ld b, b                                       ; $42f7: $40
    inc c                                         ; $42f8: $0c
    jr z, jr_030_432d                             ; $42f9: $28 $32

    rst $28                                       ; $42fb: $ef
    ld b, b                                       ; $42fc: $40
    inc c                                         ; $42fd: $0c
    rst $30                                       ; $42fe: $f7
    jr nz, jr_030_4315                            ; $42ff: $20 $14

    jr nz, jr_030_432d                            ; $4301: $20 $2a

    call Call_000_2ed5                            ; $4303: $cd $d5 $2e
    ld e, $e7                                     ; $4306: $1e $e7
    jr nz, @+$16                                  ; $4308: $20 $14

    ld de, $0014                                  ; $430a: $11 $14 $00
    call Call_030_7e7f                            ; $430d: $cd $7f $7e
    ld b, $00                                     ; $4310: $06 $00
    ld c, $fa                                     ; $4312: $0e $fa
    rst $18                                       ; $4314: $df

jr_030_4315:
    ld c, [hl]                                    ; $4315: $4e
    ld a, [bc]                                    ; $4316: $0a
    rst $18                                       ; $4317: $df
    inc [hl]                                      ; $4318: $34
    ld [bc], a                                    ; $4319: $02
    ld a, $07                                     ; $431a: $3e $07
    ld [$c441], a                                 ; $431c: $ea $41 $c4
    jr jr_030_432d                                ; $431f: $18 $0c

jr_030_4321:
    cp $fa                                        ; $4321: $fe $fa
    jr nz, jr_030_432d                            ; $4323: $20 $08

    rst $30                                       ; $4325: $f7

    db $80, $0c

    jr z, jr_030_432d                             ; $4328: $28 $03

    rst $28                                       ; $432a: $ef

    db $80, $0c

Jump_030_432d:
jr_030_432d:
    ret                                           ; $432d: $c9


    nop                                           ; $432e: $00
    ld h, b                                       ; $432f: $60
    dec e                                         ; $4330: $1d
    nop                                           ; $4331: $00
    add b                                         ; $4332: $80
    rra                                           ; $4333: $1f
    nop                                           ; $4334: $00
    add b                                         ; $4335: $80
    ld b, $02                                     ; $4336: $06 $02
    ld c, $00                                     ; $4338: $0e $00
    ld bc, $0000                                  ; $433a: $01 $00 $00
    nop                                           ; $433d: $00
    ld e, [hl]                                    ; $433e: $5e
    ld b, e                                       ; $433f: $43
    sbc e                                         ; $4340: $9b
    ld b, e                                       ; $4341: $43
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    nop                                           ; $434b: $00
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    nop                                           ; $435d: $00
    ldh a, [$96]                                  ; $435e: $f0 $96
    push af                                       ; $4360: $f5
    ld a, $06                                     ; $4361: $3e $06
    ldh [$96], a                                  ; $4363: $e0 $96
    ldh [rSVBK], a                                ; $4365: $e0 $70
    rst $18                                       ; $4367: $df
    ld a, [hl+]                                   ; $4368: $2a
    db $10                                        ; $4369: $10
    ld a, $03                                     ; $436a: $3e $03
    ld de, $0a03                                  ; $436c: $11 $03 $0a
    ld hl, $0ca2                                  ; $436f: $21 $a2 $0c
    rst $18                                       ; $4372: $df
    ld c, d                                       ; $4373: $4a
    dec b                                         ; $4374: $05
    ld a, $03                                     ; $4375: $3e $03
    ld de, $0a03                                  ; $4377: $11 $03 $0a
    ld hl, $0ca3                                  ; $437a: $21 $a3 $0c
    rst $18                                       ; $437d: $df
    ld c, d                                       ; $437e: $4a
    dec b                                         ; $437f: $05
    push af                                       ; $4380: $f5
    ld a, $3c                                     ; $4381: $3e $3c
    rst $18                                       ; $4383: $df
    inc b                                         ; $4384: $04
    ld a, [bc]                                    ; $4385: $0a
    pop af                                        ; $4386: $f1
    ld a, $03                                     ; $4387: $3e $03
    ld de, $0a03                                  ; $4389: $11 $03 $0a
    ld hl, $0ca4                                  ; $438c: $21 $a4 $0c
    rst $18                                       ; $438f: $df
    ld c, d                                       ; $4390: $4a
    dec b                                         ; $4391: $05
    rst $18                                       ; $4392: $df
    inc l                                         ; $4393: $2c
    db $10                                        ; $4394: $10
    pop af                                        ; $4395: $f1
    ldh [$96], a                                  ; $4396: $e0 $96
    ldh [rSVBK], a                                ; $4398: $e0 $70
    ret                                           ; $439a: $c9


    ldh a, [$96]                                  ; $439b: $f0 $96
    push af                                       ; $439d: $f5
    rst $18                                       ; $439e: $df
    ld a, [hl+]                                   ; $439f: $2a
    db $10                                        ; $43a0: $10
    ld a, $82                                     ; $43a1: $3e $82
    rst $18                                       ; $43a3: $df
    ld l, $10                                     ; $43a4: $2e $10
    rst $18                                       ; $43a6: $df
    inc l                                         ; $43a7: $2c
    db $10                                        ; $43a8: $10
    pop af                                        ; $43a9: $f1
    ldh [$96], a                                  ; $43aa: $e0 $96
    ldh [rSVBK], a                                ; $43ac: $e0 $70
    ret                                           ; $43ae: $c9


    rst $08                                       ; $43af: $cf
    ld b, e                                       ; $43b0: $43
    add hl, bc                                    ; $43b1: $09
    ld b, h                                       ; $43b2: $44
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    nop                                           ; $43be: $00
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    nop                                           ; $43c6: $00
    nop                                           ; $43c7: $00
    nop                                           ; $43c8: $00
    nop                                           ; $43c9: $00
    nop                                           ; $43ca: $00
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00
    nop                                           ; $43cd: $00
    nop                                           ; $43ce: $00
    ldh a, [$96]                                  ; $43cf: $f0 $96
    push af                                       ; $43d1: $f5
    ld a, $06                                     ; $43d2: $3e $06
    ldh [$96], a                                  ; $43d4: $e0 $96
    ldh [rSVBK], a                                ; $43d6: $e0 $70
    rst $18                                       ; $43d8: $df
    ld a, [hl+]                                   ; $43d9: $2a
    db $10                                        ; $43da: $10
    ld a, $03                                     ; $43db: $3e $03
    ld de, $0a03                                  ; $43dd: $11 $03 $0a
    ld hl, $0ca6                                  ; $43e0: $21 $a6 $0c
    rst $18                                       ; $43e3: $df
    ld c, d                                       ; $43e4: $4a
    dec b                                         ; $43e5: $05
    ld a, $03                                     ; $43e6: $3e $03
    ld de, $0a03                                  ; $43e8: $11 $03 $0a
    ld hl, $0ca7                                  ; $43eb: $21 $a7 $0c
    rst $18                                       ; $43ee: $df
    ld c, d                                       ; $43ef: $4a
    dec b                                         ; $43f0: $05
    call Call_000_2ed5                            ; $43f1: $cd $d5 $2e
    jr z, jr_030_4434                             ; $43f4: $28 $3e

    inc bc                                        ; $43f6: $03
    ld de, $0a03                                  ; $43f7: $11 $03 $0a
    ld hl, $0ca8                                  ; $43fa: $21 $a8 $0c
    rst $18                                       ; $43fd: $df
    ld c, d                                       ; $43fe: $4a
    dec b                                         ; $43ff: $05
    rst $18                                       ; $4400: $df
    inc l                                         ; $4401: $2c
    db $10                                        ; $4402: $10
    pop af                                        ; $4403: $f1
    ldh [$96], a                                  ; $4404: $e0 $96
    ldh [rSVBK], a                                ; $4406: $e0 $70
    ret                                           ; $4408: $c9


    rst $18                                       ; $4409: $df
    ld a, [hl+]                                   ; $440a: $2a
    db $10                                        ; $440b: $10
    ld a, [$c834]                                 ; $440c: $fa $34 $c8
    or a                                          ; $440f: $b7
    jr nz, jr_030_4419                            ; $4410: $20 $07

    ld a, $06                                     ; $4412: $3e $06
    ld [$c961], a                                 ; $4414: $ea $61 $c9
    jr jr_030_442e                                ; $4417: $18 $15

jr_030_4419:
    ld hl, $0060                                  ; $4419: $21 $60 $00
    call Call_030_7e2e                            ; $441c: $cd $2e $7e
    ld [$c968], a                                 ; $441f: $ea $68 $c9
    rst $28                                       ; $4422: $ef
    ld h, b                                       ; $4423: $60
    inc c                                         ; $4424: $0c
    ld a, [$c8aa]                                 ; $4425: $fa $aa $c8
    or a                                          ; $4428: $b7
    jr z, jr_030_442e                             ; $4429: $28 $03

    rst $20                                       ; $442b: $e7
    ld h, b                                       ; $442c: $60
    inc c                                         ; $442d: $0c

jr_030_442e:
    ld a, $06                                     ; $442e: $3e $06
    ldh [$96], a                                  ; $4430: $e0 $96
    ldh [rSVBK], a                                ; $4432: $e0 $70

jr_030_4434:
    ld hl, $d680                                  ; $4434: $21 $80 $d6
    ld bc, $0008                                  ; $4437: $01 $08 $00
    add hl, bc                                    ; $443a: $09
    ld a, [hl]                                    ; $443b: $7e
    ld [$c969], a                                 ; $443c: $ea $69 $c9
    ld a, $82                                     ; $443f: $3e $82
    rst $18                                       ; $4441: $df
    ld l, $10                                     ; $4442: $2e $10
    rst $18                                       ; $4444: $df
    inc l                                         ; $4445: $2c
    db $10                                        ; $4446: $10
    ret                                           ; $4447: $c9


Call_030_4448:
    rst $18                                       ; $4448: $df
    nop                                           ; $4449: $00
    ld a, [bc]                                    ; $444a: $0a
    ldh a, [$95]                                  ; $444b: $f0 $95
    ld b, a                                       ; $444d: $47
    ld a, $03                                     ; $444e: $3e $03
    ld de, $7d99                                  ; $4450: $11 $99 $7d
    rst $18                                       ; $4453: $df
    jr @+$0c                                      ; $4454: $18 $0a

    ld a, [$c296]                                 ; $4456: $fa $96 $c2
    ld b, a                                       ; $4459: $47
    ld a, $03                                     ; $445a: $3e $03
    rst $18                                       ; $445c: $df
    ld l, $0a                                     ; $445d: $2e $0a
    ld c, $08                                     ; $445f: $0e $08
    call Call_000_25af                            ; $4461: $cd $af $25
    call Call_000_2625                            ; $4464: $cd $25 $26
    push af                                       ; $4467: $f5
    ld a, $1e                                     ; $4468: $3e $1e
    rst $18                                       ; $446a: $df
    inc b                                         ; $446b: $04
    ld a, [bc]                                    ; $446c: $0a
    pop af                                        ; $446d: $f1
    ld a, [$c968]                                 ; $446e: $fa $68 $c9
    or a                                          ; $4471: $b7
    jr nz, jr_030_44a8                            ; $4472: $20 $34

    ld a, $03                                     ; $4474: $3e $03
    ld b, a                                       ; $4476: $47
    ld a, $07                                     ; $4477: $3e $07
    rst $18                                       ; $4479: $df
    ld [hl-], a                                   ; $447a: $32
    ld a, [bc]                                    ; $447b: $0a
    ld a, $03                                     ; $447c: $3e $03
    rst $18                                       ; $447e: $df
    inc [hl]                                      ; $447f: $34
    ld a, [bc]                                    ; $4480: $0a
    push af                                       ; $4481: $f5
    ld a, $1e                                     ; $4482: $3e $1e
    rst $18                                       ; $4484: $df
    inc b                                         ; $4485: $04
    ld a, [bc]                                    ; $4486: $0a
    pop af                                        ; $4487: $f1
    ld hl, $0caa                                  ; $4488: $21 $aa $0c
    rst $18                                       ; $448b: $df
    ld c, $0a                                     ; $448c: $0e $0a
    ld a, [$c969]                                 ; $448e: $fa $69 $c9
    cp $0d                                        ; $4491: $fe $0d
    jr nz, jr_030_449b                            ; $4493: $20 $06

    ld hl, $0cac                                  ; $4495: $21 $ac $0c
    rst $18                                       ; $4498: $df
    ld c, $0a                                     ; $4499: $0e $0a

jr_030_449b:
    ld a, $03                                     ; $449b: $3e $03
    rst $18                                       ; $449d: $df
    ld [$e70a], sp                                ; $449e: $08 $0a $e7
    ld b, b                                       ; $44a1: $40
    inc c                                         ; $44a2: $0c
    rst $28                                       ; $44a3: $ef
    and b                                         ; $44a4: $a0
    inc c                                         ; $44a5: $0c
    jr @+$14                                      ; $44a6: $18 $12

jr_030_44a8:
    push af                                       ; $44a8: $f5
    ld a, $1e                                     ; $44a9: $3e $1e
    rst $18                                       ; $44ab: $df
    inc b                                         ; $44ac: $04
    ld a, [bc]                                    ; $44ad: $0a
    pop af                                        ; $44ae: $f1
    ld hl, $0ca9                                  ; $44af: $21 $a9 $0c
    rst $18                                       ; $44b2: $df
    ld c, $0a                                     ; $44b3: $0e $0a
    ld a, $03                                     ; $44b5: $3e $03
    rst $18                                       ; $44b7: $df
    ld [$f00a], sp                                ; $44b8: $08 $0a $f0
    sub l                                         ; $44bb: $95
    ld b, a                                       ; $44bc: $47
    ld a, $03                                     ; $44bd: $3e $03
    ld de, $7dff                                  ; $44bf: $11 $ff $7d
    rst $18                                       ; $44c2: $df
    jr jr_030_44cf                                ; $44c3: $18 $0a

    ld a, $03                                     ; $44c5: $3e $03
    ld b, $c0                                     ; $44c7: $06 $c0
    rst $18                                       ; $44c9: $df
    inc l                                         ; $44ca: $2c
    ld a, [bc]                                    ; $44cb: $0a
    rst $18                                       ; $44cc: $df
    ld [bc], a                                    ; $44cd: $02
    ld a, [bc]                                    ; $44ce: $0a

jr_030_44cf:
    ret                                           ; $44cf: $c9


Call_030_44d0:
    ld hl, $0d11                                  ; $44d0: $21 $11 $0d
    rst $18                                       ; $44d3: $df
    ld c, $0a                                     ; $44d4: $0e $0a
    call Call_030_4506                            ; $44d6: $cd $06 $45
    ret                                           ; $44d9: $c9


Call_030_44da:
    rst $18                                       ; $44da: $df
    nop                                           ; $44db: $00
    ld a, [bc]                                    ; $44dc: $0a
    ldh a, [$95]                                  ; $44dd: $f0 $95
    ld b, a                                       ; $44df: $47
    ld a, $03                                     ; $44e0: $3e $03
    ld de, $7d99                                  ; $44e2: $11 $99 $7d
    rst $18                                       ; $44e5: $df
    jr @+$0c                                      ; $44e6: $18 $0a

    ld a, [$c296]                                 ; $44e8: $fa $96 $c2
    ld b, a                                       ; $44eb: $47
    ld a, $03                                     ; $44ec: $3e $03
    rst $18                                       ; $44ee: $df
    ld l, $0a                                     ; $44ef: $2e $0a
    ld c, $04                                     ; $44f1: $0e $04
    call Call_000_25af                            ; $44f3: $cd $af $25
    call Call_000_2625                            ; $44f6: $cd $25 $26
    ld hl, $0ca5                                  ; $44f9: $21 $a5 $0c
    rst $18                                       ; $44fc: $df
    ld c, $0a                                     ; $44fd: $0e $0a
    call Call_030_4506                            ; $44ff: $cd $06 $45
    rst $18                                       ; $4502: $df
    ld [bc], a                                    ; $4503: $02
    ld a, [bc]                                    ; $4504: $0a
    ret                                           ; $4505: $c9


Call_030_4506:
    ld a, $03                                     ; $4506: $3e $03
    rst $18                                       ; $4508: $df
    ld a, [bc]                                    ; $4509: $0a
    ld a, [bc]                                    ; $450a: $0a
    rst $18                                       ; $450b: $df
    ld [de], a                                    ; $450c: $12
    ld a, [bc]                                    ; $450d: $0a
    rst $18                                       ; $450e: $df
    inc c                                         ; $450f: $0c
    ld a, [bc]                                    ; $4510: $0a
    push af                                       ; $4511: $f5
    ld a, $05                                     ; $4512: $3e $05
    rst $18                                       ; $4514: $df
    inc b                                         ; $4515: $04
    ld a, [bc]                                    ; $4516: $0a
    pop af                                        ; $4517: $f1
    and a                                         ; $4518: $a7
    jr z, jr_030_453a                             ; $4519: $28 $1f

    ld hl, $0cab                                  ; $451b: $21 $ab $0c
    rst $18                                       ; $451e: $df
    ld c, $0a                                     ; $451f: $0e $0a
    ld a, $03                                     ; $4521: $3e $03
    rst $18                                       ; $4523: $df
    ld [$f00a], sp                                ; $4524: $08 $0a $f0
    sub l                                         ; $4527: $95
    ld b, a                                       ; $4528: $47
    ld a, $03                                     ; $4529: $3e $03
    ld de, $7dff                                  ; $452b: $11 $ff $7d
    rst $18                                       ; $452e: $df
    jr jr_030_453b                                ; $452f: $18 $0a

    ld a, $03                                     ; $4531: $3e $03
    ld b, $c0                                     ; $4533: $06 $c0
    rst $18                                       ; $4535: $df
    inc l                                         ; $4536: $2c
    ld a, [bc]                                    ; $4537: $0a
    jr jr_030_4599                                ; $4538: $18 $5f

jr_030_453a:
    rst $20                                       ; $453a: $e7

jr_030_453b:
    and b                                         ; $453b: $a0
    inc c                                         ; $453c: $0c
    rst $18                                       ; $453d: $df
    inc e                                         ; $453e: $1c
    db $10                                        ; $453f: $10
    rst $30                                       ; $4540: $f7
    nop                                           ; $4541: $00
    inc d                                         ; $4542: $14
    jr nz, jr_030_454a                            ; $4543: $20 $05

    ld a, $08                                     ; $4545: $3e $08
    ld [$c82c], a                                 ; $4547: $ea $2c $c8

jr_030_454a:
    rst $18                                       ; $454a: $df
    inc h                                         ; $454b: $24
    db $10                                        ; $454c: $10
    ld a, $0d                                     ; $454d: $3e $0d
    ld b, a                                       ; $454f: $47
    ld a, $04                                     ; $4550: $3e $04
    ld c, a                                       ; $4552: $4f
    rst $18                                       ; $4553: $df
    ld c, [hl]                                    ; $4554: $4e
    ld a, [bc]                                    ; $4555: $0a
    ld a, $0c                                     ; $4556: $3e $0c
    ld [$c834], a                                 ; $4558: $ea $34 $c8
    ld bc, $8000                                  ; $455b: $01 $00 $80
    rst $18                                       ; $455e: $df
    ld e, $02                                     ; $455f: $1e $02
    ld bc, $ff01                                  ; $4561: $01 $01 $ff
    rst $18                                       ; $4564: $df
    ld e, $02                                     ; $4565: $1e $02
    ld hl, $0708                                  ; $4567: $21 $08 $07
    rst $18                                       ; $456a: $df
    db $10                                        ; $456b: $10
    db $10                                        ; $456c: $10
    ld a, $00                                     ; $456d: $3e $00
    rst $18                                       ; $456f: $df
    ld e, $10                                     ; $4570: $1e $10
    ld hl, $1d60                                  ; $4572: $21 $60 $1d
    ld de, $1f80                                  ; $4575: $11 $80 $1f
    rst $18                                       ; $4578: $df
    jr nz, jr_030_458b                            ; $4579: $20 $10

    ld e, $06                                     ; $457b: $1e $06
    ld bc, $8000                                  ; $457d: $01 $00 $80
    rst $18                                       ; $4580: $df
    ld h, $10                                     ; $4581: $26 $10
    ld de, $c000                                  ; $4583: $11 $00 $c0
    rst $18                                       ; $4586: $df
    ld [hl+], a                                   ; $4587: $22
    db $10                                        ; $4588: $10
    ldh a, [$95]                                  ; $4589: $f0 $95

jr_030_458b:
    ld hl, $43af                                  ; $458b: $21 $af $43
    rst $18                                       ; $458e: $df
    ld a, [de]                                    ; $458f: $1a
    db $10                                        ; $4590: $10
    ld a, $01                                     ; $4591: $3e $01
    rst $18                                       ; $4593: $df
    ld [de], a                                    ; $4594: $12
    db $10                                        ; $4595: $10
    rst $18                                       ; $4596: $df
    jr nc, jr_030_45a9                            ; $4597: $30 $10

jr_030_4599:
    ret                                           ; $4599: $c9


    nop                                           ; $459a: $00
    ld h, b                                       ; $459b: $60
    ld e, $00                                     ; $459c: $1e $00
    ld h, b                                       ; $459e: $60
    dec e                                         ; $459f: $1d
    add b                                         ; $45a0: $80
    ld h, a                                       ; $45a1: $67
    dec bc                                        ; $45a2: $0b
    ld [bc], a                                    ; $45a3: $02
    ld e, $00                                     ; $45a4: $1e $00
    ld bc, $0000                                  ; $45a6: $01 $00 $00

jr_030_45a9:
    nop                                           ; $45a9: $00
    jp z, Jump_000_0745                           ; $45aa: $ca $45 $07

    ld b, [hl]                                    ; $45ad: $46
    nop                                           ; $45ae: $00
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    nop                                           ; $45b6: $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    nop                                           ; $45bb: $00
    nop                                           ; $45bc: $00
    nop                                           ; $45bd: $00
    nop                                           ; $45be: $00
    nop                                           ; $45bf: $00
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    ldh a, [$96]                                  ; $45ca: $f0 $96
    push af                                       ; $45cc: $f5
    ld a, $06                                     ; $45cd: $3e $06
    ldh [$96], a                                  ; $45cf: $e0 $96
    ldh [rSVBK], a                                ; $45d1: $e0 $70
    rst $18                                       ; $45d3: $df
    ld a, [hl+]                                   ; $45d4: $2a
    db $10                                        ; $45d5: $10
    ld a, $04                                     ; $45d6: $3e $04
    ld de, $0a03                                  ; $45d8: $11 $03 $0a
    ld hl, $0cb0                                  ; $45db: $21 $b0 $0c
    rst $18                                       ; $45de: $df
    ld c, d                                       ; $45df: $4a
    dec b                                         ; $45e0: $05
    ld a, $04                                     ; $45e1: $3e $04
    ld de, $0a03                                  ; $45e3: $11 $03 $0a
    ld hl, $0cb1                                  ; $45e6: $21 $b1 $0c
    rst $18                                       ; $45e9: $df
    ld c, d                                       ; $45ea: $4a
    dec b                                         ; $45eb: $05
    push af                                       ; $45ec: $f5
    ld a, $3c                                     ; $45ed: $3e $3c
    rst $18                                       ; $45ef: $df
    inc b                                         ; $45f0: $04
    ld a, [bc]                                    ; $45f1: $0a
    pop af                                        ; $45f2: $f1
    ld a, $04                                     ; $45f3: $3e $04
    ld de, $0a03                                  ; $45f5: $11 $03 $0a
    ld hl, $0cb2                                  ; $45f8: $21 $b2 $0c
    rst $18                                       ; $45fb: $df
    ld c, d                                       ; $45fc: $4a
    dec b                                         ; $45fd: $05
    rst $18                                       ; $45fe: $df
    inc l                                         ; $45ff: $2c
    db $10                                        ; $4600: $10
    pop af                                        ; $4601: $f1
    ldh [$96], a                                  ; $4602: $e0 $96
    ldh [rSVBK], a                                ; $4604: $e0 $70
    ret                                           ; $4606: $c9


    ldh a, [$96]                                  ; $4607: $f0 $96
    push af                                       ; $4609: $f5
    rst $18                                       ; $460a: $df
    ld a, [hl+]                                   ; $460b: $2a
    db $10                                        ; $460c: $10
    ld a, $82                                     ; $460d: $3e $82
    rst $18                                       ; $460f: $df
    ld l, $10                                     ; $4610: $2e $10
    rst $28                                       ; $4612: $ef
    ld h, b                                       ; $4613: $60
    inc c                                         ; $4614: $0c
    ld a, [$c8aa]                                 ; $4615: $fa $aa $c8
    or a                                          ; $4618: $b7
    jr z, jr_030_461e                             ; $4619: $28 $03

    rst $20                                       ; $461b: $e7
    ld h, b                                       ; $461c: $60
    inc c                                         ; $461d: $0c

jr_030_461e:
    rst $18                                       ; $461e: $df
    inc l                                         ; $461f: $2c
    db $10                                        ; $4620: $10
    pop af                                        ; $4621: $f1
    ldh [$96], a                                  ; $4622: $e0 $96
    ldh [rSVBK], a                                ; $4624: $e0 $70
    ret                                           ; $4626: $c9


    ld b, a                                       ; $4627: $47
    ld b, [hl]                                    ; $4628: $46
    ld [hl], e                                    ; $4629: $73
    ld b, [hl]                                    ; $462a: $46
    nop                                           ; $462b: $00
    nop                                           ; $462c: $00
    nop                                           ; $462d: $00
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    nop                                           ; $463b: $00
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    rst $18                                       ; $4647: $df
    ld a, [hl+]                                   ; $4648: $2a
    db $10                                        ; $4649: $10
    ld a, $04                                     ; $464a: $3e $04
    ld de, $0a03                                  ; $464c: $11 $03 $0a
    ld hl, $0cb4                                  ; $464f: $21 $b4 $0c
    rst $18                                       ; $4652: $df
    ld c, d                                       ; $4653: $4a
    dec b                                         ; $4654: $05
    ld a, $04                                     ; $4655: $3e $04
    ld de, $0a03                                  ; $4657: $11 $03 $0a
    ld hl, $0cb5                                  ; $465a: $21 $b5 $0c
    rst $18                                       ; $465d: $df
    ld c, d                                       ; $465e: $4a
    dec b                                         ; $465f: $05
    call Call_000_2ed5                            ; $4660: $cd $d5 $2e
    jr z, jr_030_46a3                             ; $4663: $28 $3e

    inc b                                         ; $4665: $04
    ld de, $0a03                                  ; $4666: $11 $03 $0a
    ld hl, $0cb6                                  ; $4669: $21 $b6 $0c
    rst $18                                       ; $466c: $df
    ld c, d                                       ; $466d: $4a
    dec b                                         ; $466e: $05
    rst $18                                       ; $466f: $df
    inc l                                         ; $4670: $2c
    db $10                                        ; $4671: $10
    ret                                           ; $4672: $c9


    rst $18                                       ; $4673: $df
    ld a, [hl+]                                   ; $4674: $2a
    db $10                                        ; $4675: $10
    ld a, [$c834]                                 ; $4676: $fa $34 $c8
    or a                                          ; $4679: $b7
    jr nz, jr_030_4683                            ; $467a: $20 $07

    ld a, $07                                     ; $467c: $3e $07
    ld [$c961], a                                 ; $467e: $ea $61 $c9
    jr jr_030_4698                                ; $4681: $18 $15

jr_030_4683:
    ld hl, $0060                                  ; $4683: $21 $60 $00
    call Call_030_7e2e                            ; $4686: $cd $2e $7e
    ld [$c968], a                                 ; $4689: $ea $68 $c9
    rst $28                                       ; $468c: $ef
    ld h, b                                       ; $468d: $60
    inc c                                         ; $468e: $0c
    ld a, [$c8aa]                                 ; $468f: $fa $aa $c8
    or a                                          ; $4692: $b7
    jr z, jr_030_4698                             ; $4693: $28 $03

    rst $20                                       ; $4695: $e7
    ld h, b                                       ; $4696: $60
    inc c                                         ; $4697: $0c

jr_030_4698:
    ld a, $82                                     ; $4698: $3e $82
    rst $18                                       ; $469a: $df
    ld l, $10                                     ; $469b: $2e $10
    rst $18                                       ; $469d: $df
    inc l                                         ; $469e: $2c
    db $10                                        ; $469f: $10
    ret                                           ; $46a0: $c9


Call_030_46a1:
    rst $18                                       ; $46a1: $df
    nop                                           ; $46a2: $00

jr_030_46a3:
    ld a, [bc]                                    ; $46a3: $0a
    ldh a, [$95]                                  ; $46a4: $f0 $95
    ld b, a                                       ; $46a6: $47
    ld a, $04                                     ; $46a7: $3e $04
    ld de, $7d99                                  ; $46a9: $11 $99 $7d
    rst $18                                       ; $46ac: $df
    jr @+$0c                                      ; $46ad: $18 $0a

    ld a, [$c296]                                 ; $46af: $fa $96 $c2
    ld b, a                                       ; $46b2: $47
    ld a, $04                                     ; $46b3: $3e $04
    rst $18                                       ; $46b5: $df
    ld l, $0a                                     ; $46b6: $2e $0a
    ld c, $08                                     ; $46b8: $0e $08
    call Call_000_25af                            ; $46ba: $cd $af $25
    call Call_000_2625                            ; $46bd: $cd $25 $26
    push af                                       ; $46c0: $f5
    ld a, $1e                                     ; $46c1: $3e $1e
    rst $18                                       ; $46c3: $df
    inc b                                         ; $46c4: $04
    ld a, [bc]                                    ; $46c5: $0a
    pop af                                        ; $46c6: $f1
    ld a, [$c968]                                 ; $46c7: $fa $68 $c9
    or a                                          ; $46ca: $b7
    jr nz, jr_030_46f4                            ; $46cb: $20 $27

    ld a, $04                                     ; $46cd: $3e $04
    ld b, a                                       ; $46cf: $47
    ld a, $07                                     ; $46d0: $3e $07
    rst $18                                       ; $46d2: $df
    ld [hl-], a                                   ; $46d3: $32
    ld a, [bc]                                    ; $46d4: $0a
    ld a, $04                                     ; $46d5: $3e $04
    rst $18                                       ; $46d7: $df
    inc [hl]                                      ; $46d8: $34
    ld a, [bc]                                    ; $46d9: $0a
    push af                                       ; $46da: $f5
    ld a, $1e                                     ; $46db: $3e $1e
    rst $18                                       ; $46dd: $df
    inc b                                         ; $46de: $04
    ld a, [bc]                                    ; $46df: $0a
    pop af                                        ; $46e0: $f1
    ld hl, $0cb8                                  ; $46e1: $21 $b8 $0c
    rst $18                                       ; $46e4: $df
    ld c, $0a                                     ; $46e5: $0e $0a
    ld a, $04                                     ; $46e7: $3e $04
    rst $18                                       ; $46e9: $df
    ld [$e70a], sp                                ; $46ea: $08 $0a $e7
    ld b, b                                       ; $46ed: $40
    inc c                                         ; $46ee: $0c
    rst $28                                       ; $46ef: $ef
    ret nz                                        ; $46f0: $c0

    inc c                                         ; $46f1: $0c
    jr @+$14                                      ; $46f2: $18 $12

jr_030_46f4:
    push af                                       ; $46f4: $f5
    ld a, $1e                                     ; $46f5: $3e $1e
    rst $18                                       ; $46f7: $df
    inc b                                         ; $46f8: $04
    ld a, [bc]                                    ; $46f9: $0a
    pop af                                        ; $46fa: $f1
    ld hl, $0cb7                                  ; $46fb: $21 $b7 $0c
    rst $18                                       ; $46fe: $df
    ld c, $0a                                     ; $46ff: $0e $0a
    ld a, $04                                     ; $4701: $3e $04
    rst $18                                       ; $4703: $df
    ld [$f00a], sp                                ; $4704: $08 $0a $f0
    sub l                                         ; $4707: $95
    ld b, a                                       ; $4708: $47
    ld a, $04                                     ; $4709: $3e $04
    ld de, $7e08                                  ; $470b: $11 $08 $7e
    rst $18                                       ; $470e: $df
    jr jr_030_471b                                ; $470f: $18 $0a

    ld a, $04                                     ; $4711: $3e $04
    ld b, $80                                     ; $4713: $06 $80
    rst $18                                       ; $4715: $df
    inc l                                         ; $4716: $2c
    ld a, [bc]                                    ; $4717: $0a
    rst $18                                       ; $4718: $df
    ld [bc], a                                    ; $4719: $02
    ld a, [bc]                                    ; $471a: $0a

jr_030_471b:
    ret                                           ; $471b: $c9


Call_030_471c:
    ld hl, $0d12                                  ; $471c: $21 $12 $0d
    rst $18                                       ; $471f: $df
    ld c, $0a                                     ; $4720: $0e $0a
    call Call_030_4752                            ; $4722: $cd $52 $47
    ret                                           ; $4725: $c9


Call_030_4726:
    rst $18                                       ; $4726: $df
    nop                                           ; $4727: $00
    ld a, [bc]                                    ; $4728: $0a
    ldh a, [$95]                                  ; $4729: $f0 $95
    ld b, a                                       ; $472b: $47
    ld a, $04                                     ; $472c: $3e $04
    ld de, $7d99                                  ; $472e: $11 $99 $7d
    rst $18                                       ; $4731: $df
    jr @+$0c                                      ; $4732: $18 $0a

    ld a, [$c296]                                 ; $4734: $fa $96 $c2
    ld b, a                                       ; $4737: $47
    ld a, $04                                     ; $4738: $3e $04
    rst $18                                       ; $473a: $df
    ld l, $0a                                     ; $473b: $2e $0a
    ld c, $04                                     ; $473d: $0e $04
    call Call_000_25af                            ; $473f: $cd $af $25
    call Call_000_2625                            ; $4742: $cd $25 $26
    ld hl, $0cb3                                  ; $4745: $21 $b3 $0c
    rst $18                                       ; $4748: $df
    ld c, $0a                                     ; $4749: $0e $0a
    call Call_030_4752                            ; $474b: $cd $52 $47
    rst $18                                       ; $474e: $df
    ld [bc], a                                    ; $474f: $02
    ld a, [bc]                                    ; $4750: $0a
    ret                                           ; $4751: $c9


Call_030_4752:
    ld a, $04                                     ; $4752: $3e $04
    rst $18                                       ; $4754: $df
    ld a, [bc]                                    ; $4755: $0a
    ld a, [bc]                                    ; $4756: $0a
    rst $18                                       ; $4757: $df
    ld [de], a                                    ; $4758: $12
    ld a, [bc]                                    ; $4759: $0a
    rst $18                                       ; $475a: $df
    inc c                                         ; $475b: $0c
    ld a, [bc]                                    ; $475c: $0a
    push af                                       ; $475d: $f5
    ld a, $05                                     ; $475e: $3e $05
    rst $18                                       ; $4760: $df
    inc b                                         ; $4761: $04
    ld a, [bc]                                    ; $4762: $0a
    pop af                                        ; $4763: $f1
    and a                                         ; $4764: $a7
    jr z, jr_030_4786                             ; $4765: $28 $1f

    ld hl, $0cb9                                  ; $4767: $21 $b9 $0c
    rst $18                                       ; $476a: $df
    ld c, $0a                                     ; $476b: $0e $0a
    ld a, $04                                     ; $476d: $3e $04
    rst $18                                       ; $476f: $df
    ld [$f00a], sp                                ; $4770: $08 $0a $f0
    sub l                                         ; $4773: $95
    ld b, a                                       ; $4774: $47
    ld a, $04                                     ; $4775: $3e $04
    ld de, $7e08                                  ; $4777: $11 $08 $7e
    rst $18                                       ; $477a: $df
    jr jr_030_4787                                ; $477b: $18 $0a

    ld a, $04                                     ; $477d: $3e $04
    ld b, $80                                     ; $477f: $06 $80
    rst $18                                       ; $4781: $df
    inc l                                         ; $4782: $2c
    ld a, [bc]                                    ; $4783: $0a
    jr jr_030_47e5                                ; $4784: $18 $5f

jr_030_4786:
    rst $20                                       ; $4786: $e7

jr_030_4787:
    ret nz                                        ; $4787: $c0

    inc c                                         ; $4788: $0c
    rst $18                                       ; $4789: $df
    inc e                                         ; $478a: $1c
    db $10                                        ; $478b: $10
    rst $30                                       ; $478c: $f7
    jr nz, @+$16                                  ; $478d: $20 $14

    jr nz, jr_030_4796                            ; $478f: $20 $05

    ld a, $08                                     ; $4791: $3e $08
    ld [$c82c], a                                 ; $4793: $ea $2c $c8

jr_030_4796:
    rst $18                                       ; $4796: $df
    inc h                                         ; $4797: $24
    db $10                                        ; $4798: $10
    ld a, $0d                                     ; $4799: $3e $0d
    ld b, a                                       ; $479b: $47
    ld a, $05                                     ; $479c: $3e $05
    ld c, a                                       ; $479e: $4f
    rst $18                                       ; $479f: $df
    ld c, [hl]                                    ; $47a0: $4e
    ld a, [bc]                                    ; $47a1: $0a
    ld a, $0c                                     ; $47a2: $3e $0c
    ld [$c834], a                                 ; $47a4: $ea $34 $c8
    ld bc, $8000                                  ; $47a7: $01 $00 $80
    rst $18                                       ; $47aa: $df
    ld e, $02                                     ; $47ab: $1e $02
    ld bc, $ff01                                  ; $47ad: $01 $01 $ff
    rst $18                                       ; $47b0: $df
    ld e, $02                                     ; $47b1: $1e $02
    ld hl, $0708                                  ; $47b3: $21 $08 $07
    rst $18                                       ; $47b6: $df
    db $10                                        ; $47b7: $10
    db $10                                        ; $47b8: $10
    ld a, $00                                     ; $47b9: $3e $00
    rst $18                                       ; $47bb: $df
    ld e, $10                                     ; $47bc: $1e $10
    ld hl, $1e60                                  ; $47be: $21 $60 $1e
    ld de, $1d60                                  ; $47c1: $11 $60 $1d
    rst $18                                       ; $47c4: $df
    jr nz, jr_030_47d7                            ; $47c5: $20 $10

    ld e, $0b                                     ; $47c7: $1e $0b
    ld bc, $6780                                  ; $47c9: $01 $80 $67
    rst $18                                       ; $47cc: $df
    ld h, $10                                     ; $47cd: $26 $10
    ld de, $c000                                  ; $47cf: $11 $00 $c0
    rst $18                                       ; $47d2: $df
    ld [hl+], a                                   ; $47d3: $22
    db $10                                        ; $47d4: $10
    ldh a, [$95]                                  ; $47d5: $f0 $95

jr_030_47d7:
    ld hl, $4627                                  ; $47d7: $21 $27 $46
    rst $18                                       ; $47da: $df
    ld a, [de]                                    ; $47db: $1a
    db $10                                        ; $47dc: $10
    ld a, $01                                     ; $47dd: $3e $01
    rst $18                                       ; $47df: $df
    ld [de], a                                    ; $47e0: $12
    db $10                                        ; $47e1: $10
    rst $18                                       ; $47e2: $df
    jr nc, @+$12                                  ; $47e3: $30 $10

jr_030_47e5:
    ret                                           ; $47e5: $c9


    rst $18                                       ; $47e6: $df

    db $00, $0a

    ld hl, $0c60                                  ; $47e9: $21 $60 $0c
    rst $18                                       ; $47ec: $df

    db $0e, $0a

    ld a, $80                                     ; $47ef: $3e $80
    rst $18                                       ; $47f1: $df

    db $0a, $0a

    rst $18                                       ; $47f4: $df

    db $12, $0a

    rst $18                                       ; $47f7: $df

    db $0c, $0a

    push af                                       ; $47fa: $f5
    ld a, $05                                     ; $47fb: $3e $05
    rst $18                                       ; $47fd: $df

    db $04, $0a

    pop af                                        ; $4800: $f1
    and a                                         ; $4801: $a7
    jr z, jr_030_4806                             ; $4802: $28 $02

    jr jr_030_4809                                ; $4804: $18 $03

jr_030_4806:
    call Call_030_480d                            ; $4806: $cd $0d $48

jr_030_4809:
    rst $18                                       ; $4809: $df

    db $02, $0a

    ret                                           ; $480c: $c9


Call_030_480d:
    rst $20                                       ; $480d: $e7

    db $80, $0c

    rst $18                                       ; $4810: $df

    db $1c, $10

    call Call_030_4855                            ; $4813: $cd $55 $48
    rst $18                                       ; $4816: $df

    db $24, $10

    ld bc, $8000                                  ; $4819: $01 $00 $80
    rst $18                                       ; $481c: $df

    db $1e, $02

    ld bc, $ff01                                  ; $481f: $01 $01 $ff
    rst $18                                       ; $4822: $df

    db $1e, $02

    ld a, $0c                                     ; $4825: $3e $0c
    ld [$c834], a                                 ; $4827: $ea $34 $c8
    ld a, $00                                     ; $482a: $3e $00
    rst $18                                       ; $482c: $df

    db $1e, $10

    ld hl, $c2a2                                  ; $482f: $21 $a2 $c2
    ld a, [hl+]                                   ; $4832: $2a
    ld d, [hl]                                    ; $4833: $56
    ld e, a                                       ; $4834: $5f
    ld hl, $c2a0                                  ; $4835: $21 $a0 $c2
    ld a, [hl+]                                   ; $4838: $2a
    ld h, [hl]                                    ; $4839: $66
    ld l, a                                       ; $483a: $6f
    rst $18                                       ; $483b: $df

    db $20, $10

    ld de, $c000                                  ; $483e: $11 $00 $c0
    rst $18                                       ; $4841: $df

    db $22, $10

    ldh a, [$95]                                  ; $4844: $f0 $95
    ld hl, $48bc                                  ; $4846: $21 $bc $48
    rst $18                                       ; $4849: $df

    db $1a, $10

    ld a, $01                                     ; $484c: $3e $01
    rst $18                                       ; $484e: $df

    db $12, $10

    rst $18                                       ; $4851: $df

    db $30, $10

    ret                                           ; $4854: $c9


Call_030_4855:
    ld a, [$c450]                                 ; $4855: $fa $50 $c4
    ld hl, $4868                                  ; $4858: $21 $68 $48
    cp [hl]                                       ; $485b: $be
    jr z, jr_030_486c                             ; $485c: $28 $0e

    inc hl                                        ; $485e: $23
    cp [hl]                                       ; $485f: $be
    jr z, jr_030_4873                             ; $4860: $28 $11

    inc hl                                        ; $4862: $23
    cp [hl]                                       ; $4863: $be
    jr z, jr_030_487a                             ; $4864: $28 $14

    jr jr_030_4881                                ; $4866: $18 $19

    db $0d

    db $10                                        ; $4869: $10
    inc de                                        ; $486a: $13
    db $16                                        ; $486b: $16

jr_030_486c:
    ld hl, $0708                                  ; $486c: $21 $08 $07
    rst $18                                       ; $486f: $df

    db $10, $10

    ret                                           ; $4872: $c9


jr_030_4873:
    ld hl, $070b                                  ; $4873: $21 $0b $07
    rst $18                                       ; $4876: $df
    db $10                                        ; $4877: $10
    db $10                                        ; $4878: $10
    ret                                           ; $4879: $c9


jr_030_487a:
    ld hl, $070e                                  ; $487a: $21 $0e $07
    rst $18                                       ; $487d: $df
    db $10                                        ; $487e: $10
    db $10                                        ; $487f: $10
    ret                                           ; $4880: $c9


jr_030_4881:
    ld hl, $0711                                  ; $4881: $21 $11 $07
    rst $18                                       ; $4884: $df
    db $10                                        ; $4885: $10
    db $10                                        ; $4886: $10
    ret                                           ; $4887: $c9


    rst $18                                       ; $4888: $df
    nop                                           ; $4889: $00
    ld a, [bc]                                    ; $488a: $0a
    ld c, $08                                     ; $488b: $0e $08
    call Call_000_25af                            ; $488d: $cd $af $25
    call Call_000_2625                            ; $4890: $cd $25 $26
    ld hl, $0c61                                  ; $4893: $21 $61 $0c
    rst $18                                       ; $4896: $df
    ld c, $0a                                     ; $4897: $0e $0a
    ld a, $80                                     ; $4899: $3e $80
    rst $18                                       ; $489b: $df
    ld a, [bc]                                    ; $489c: $0a
    ld a, [bc]                                    ; $489d: $0a
    rst $18                                       ; $489e: $df
    ld [de], a                                    ; $489f: $12
    ld a, [bc]                                    ; $48a0: $0a
    rst $18                                       ; $48a1: $df
    inc c                                         ; $48a2: $0c
    ld a, [bc]                                    ; $48a3: $0a
    push af                                       ; $48a4: $f5
    ld a, $05                                     ; $48a5: $3e $05
    rst $18                                       ; $48a7: $df
    inc b                                         ; $48a8: $04
    ld a, [bc]                                    ; $48a9: $0a
    pop af                                        ; $48aa: $f1
    and a                                         ; $48ab: $a7
    jr z, jr_030_48b5                             ; $48ac: $28 $07

    ld a, $80                                     ; $48ae: $3e $80
    rst $18                                       ; $48b0: $df
    ld [$180a], sp                                ; $48b1: $08 $0a $18
    inc bc                                        ; $48b4: $03

jr_030_48b5:
    call Call_030_480d                            ; $48b5: $cd $0d $48
    rst $18                                       ; $48b8: $df
    ld [bc], a                                    ; $48b9: $02
    ld a, [bc]                                    ; $48ba: $0a
    ret                                           ; $48bb: $c9


    db $dc, $48, $dd, $48, $00, $00, $00, $00, $00, $00

    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00

    ret                                           ; $48dc: $c9


    rst $18                                       ; $48dd: $df

    db $2a, $10

    ld a, [$c834]                                 ; $48e0: $fa $34 $c8
    or a                                          ; $48e3: $b7
    jr nz, jr_030_48ef                            ; $48e4: $20 $09

    ld a, $82                                     ; $48e6: $3e $82
    rst $18                                       ; $48e8: $df

    db $2e, $10

    rst $18                                       ; $48eb: $df

    db $2c, $10

    ret                                           ; $48ee: $c9


jr_030_48ef:
    ld a, $01                                     ; $48ef: $3e $01
    rst $18                                       ; $48f1: $df

    db $2e, $10

    rst $18                                       ; $48f4: $df

    db $2c, $10

    ret                                           ; $48f7: $c9


    ld c, e                                       ; $48f8: $4b
    ld c, c                                       ; $48f9: $49
    halt                                          ; $48fa: $76
    ld c, c                                       ; $48fb: $49
    ld b, $49                                     ; $48fc: $06 $49
    adc a                                         ; $48fe: $8f
    ld c, c                                       ; $48ff: $49
    ld d, b                                       ; $4900: $50
    ld c, e                                       ; $4901: $4b
    ld e, c                                       ; $4902: $59
    ld c, e                                       ; $4903: $4b
    ld h, d                                       ; $4904: $62
    ld c, e                                       ; $4905: $4b
    sbc c                                         ; $4906: $99
    ld a, l                                       ; $4907: $7d
    nop                                           ; $4908: $00
    ld e, $00                                     ; $4909: $1e $00
    dec h                                         ; $490b: $25
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    ret nz                                        ; $490f: $c0

    ld bc, $110a                                  ; $4910: $01 $0a $11
    ld a, [hl]                                    ; $4913: $7e
    nop                                           ; $4914: $00
    jr nz, jr_030_4917                            ; $4915: $20 $00

jr_030_4917:
    ld hl, $0000                                  ; $4917: $21 $00 $00
    nop                                           ; $491a: $00
    nop                                           ; $491b: $00
    ld bc, $ff16                                  ; $491c: $01 $16 $ff
    ld a, l                                       ; $491f: $7d
    nop                                           ; $4920: $00
    inc e                                         ; $4921: $1c
    nop                                           ; $4922: $00
    rra                                           ; $4923: $1f
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    ld b, b                                       ; $4927: $40
    ld bc, $990d                                  ; $4928: $01 $0d $99
    ld a, l                                       ; $492b: $7d
    nop                                           ; $492c: $00
    rra                                           ; $492d: $1f
    nop                                           ; $492e: $00
    ld a, [de]                                    ; $492f: $1a
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    ld b, b                                       ; $4933: $40
    ld bc, $9916                                  ; $4934: $01 $16 $99
    ld a, l                                       ; $4937: $7d
    nop                                           ; $4938: $00
    inc h                                         ; $4939: $24
    nop                                           ; $493a: $00
    ld e, $00                                     ; $493b: $1e $00
    nop                                           ; $493d: $00
    nop                                           ; $493e: $00
    add b                                         ; $493f: $80
    ld bc, $0016                                  ; $4940: $01 $16 $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    rst $38                                       ; $494a: $ff
    ld bc, $00c0                                  ; $494b: $01 $c0 $00
    inc hl                                        ; $494e: $23
    nop                                           ; $494f: $00
    add hl, sp                                    ; $4950: $39
    ld [bc], a                                    ; $4951: $02
    ld b, b                                       ; $4952: $40
    nop                                           ; $4953: $00
    jr nz, jr_030_4956                            ; $4954: $20 $00

jr_030_4956:
    rra                                           ; $4956: $1f
    inc bc                                        ; $4957: $03
    ret nz                                        ; $4958: $c0

    nop                                           ; $4959: $00
    inc e                                         ; $495a: $1c
    nop                                           ; $495b: $00
    ld hl, $4004                                  ; $495c: $21 $04 $40
    nop                                           ; $495f: $00
    jr nz, jr_030_4962                            ; $4960: $20 $00

jr_030_4962:
    rra                                           ; $4962: $1f
    dec b                                         ; $4963: $05
    ret nz                                        ; $4964: $c0

    nop                                           ; $4965: $00
    inc e                                         ; $4966: $1c
    nop                                           ; $4967: $00
    ld hl, $4006                                  ; $4968: $21 $06 $40
    nop                                           ; $496b: $00
    jr nz, jr_030_496e                            ; $496c: $20 $00

jr_030_496e:
    rra                                           ; $496e: $1f
    rlca                                          ; $496f: $07
    ret nz                                        ; $4970: $c0

    nop                                           ; $4971: $00
    inc e                                         ; $4972: $1c
    nop                                           ; $4973: $00
    ld hl, $01ff                                  ; $4974: $21 $ff $01
    rst $38                                       ; $4977: $ff
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    add hl, bc                                    ; $497c: $09
    inc b                                         ; $497d: $04
    ld b, $ff                                     ; $497e: $06 $ff
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    db $10                                        ; $4984: $10
    ld b, $07                                     ; $4985: $06 $07
    rst $38                                       ; $4987: $ff
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    db $10                                        ; $498c: $10
    rlca                                          ; $498d: $07
    rst $38                                       ; $498e: $ff
    ld [bc], a                                    ; $498f: $02
    rst $38                                       ; $4990: $ff
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    ret nc                                        ; $4993: $d0

    ld c, c                                       ; $4994: $49
    inc bc                                        ; $4995: $03
    nop                                           ; $4996: $00
    inc bc                                        ; $4997: $03
    rst $38                                       ; $4998: $ff
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    ld h, $4a                                     ; $499b: $26 $4a
    dec bc                                        ; $499d: $0b
    nop                                           ; $499e: $00
    inc b                                         ; $499f: $04
    rst $38                                       ; $49a0: $ff
    nop                                           ; $49a1: $00
    nop                                           ; $49a2: $00
    xor a                                         ; $49a3: $af
    ld c, d                                       ; $49a4: $4a
    dec bc                                        ; $49a5: $0b
    nop                                           ; $49a6: $00
    dec b                                         ; $49a7: $05
    rst $38                                       ; $49a8: $ff
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    ei                                            ; $49ab: $fb
    ld c, c                                       ; $49ac: $49
    inc bc                                        ; $49ad: $03
    nop                                           ; $49ae: $00
    ld b, $ff                                     ; $49af: $06 $ff
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    ld [hl], b                                    ; $49b3: $70
    inc c                                         ; $49b4: $0c
    inc bc                                        ; $49b5: $03
    nop                                           ; $49b6: $00
    rst $38                                       ; $49b7: $ff
    ld hl, $0d16                                  ; $49b8: $21 $16 $0d
    rst $18                                       ; $49bb: $df
    ld c, $0a                                     ; $49bc: $0e $0a
    ld a, $03                                     ; $49be: $3e $03
    rst $18                                       ; $49c0: $df
    ld [$c90a], sp                                ; $49c1: $08 $0a $c9
    ld hl, $0d16                                  ; $49c4: $21 $16 $0d
    rst $18                                       ; $49c7: $df
    ld c, $0a                                     ; $49c8: $0e $0a
    ld a, $04                                     ; $49ca: $3e $04
    rst $18                                       ; $49cc: $df
    ld [$c90a], sp                                ; $49cd: $08 $0a $c9
    ld hl, $0c6a                                  ; $49d0: $21 $6a $0c
    rst $18                                       ; $49d3: $df
    ld c, $0a                                     ; $49d4: $0e $0a
    ld a, $02                                     ; $49d6: $3e $02
    rst $18                                       ; $49d8: $df
    ld a, [bc]                                    ; $49d9: $0a
    ld a, [bc]                                    ; $49da: $0a
    rst $18                                       ; $49db: $df
    ld [de], a                                    ; $49dc: $12
    ld a, [bc]                                    ; $49dd: $0a
    rst $18                                       ; $49de: $df
    inc c                                         ; $49df: $0c
    ld a, [bc]                                    ; $49e0: $0a
    push af                                       ; $49e1: $f5
    ld a, $05                                     ; $49e2: $3e $05
    rst $18                                       ; $49e4: $df
    inc b                                         ; $49e5: $04
    ld a, [bc]                                    ; $49e6: $0a
    pop af                                        ; $49e7: $f1
    and a                                         ; $49e8: $a7
    jr nz, @+$09                                  ; $49e9: $20 $07

    ld a, $02                                     ; $49eb: $3e $02
    rst $18                                       ; $49ed: $df
    ld [$180a], sp                                ; $49ee: $08 $0a $18
    ld [$10df], sp                                ; $49f1: $08 $df $10
    ld a, [bc]                                    ; $49f4: $0a
    ld a, $02                                     ; $49f5: $3e $02
    rst $18                                       ; $49f7: $df
    ld [$c90a], sp                                ; $49f8: $08 $0a $c9
    ld hl, $0c6d                                  ; $49fb: $21 $6d $0c
    rst $18                                       ; $49fe: $df
    ld c, $0a                                     ; $49ff: $0e $0a
    ld a, $06                                     ; $4a01: $3e $06
    rst $18                                       ; $4a03: $df
    ld a, [bc]                                    ; $4a04: $0a
    ld a, [bc]                                    ; $4a05: $0a
    rst $18                                       ; $4a06: $df
    ld [de], a                                    ; $4a07: $12
    ld a, [bc]                                    ; $4a08: $0a
    rst $18                                       ; $4a09: $df
    inc c                                         ; $4a0a: $0c
    ld a, [bc]                                    ; $4a0b: $0a
    push af                                       ; $4a0c: $f5
    ld a, $05                                     ; $4a0d: $3e $05
    rst $18                                       ; $4a0f: $df
    inc b                                         ; $4a10: $04
    ld a, [bc]                                    ; $4a11: $0a
    pop af                                        ; $4a12: $f1
    and a                                         ; $4a13: $a7
    jr nz, @+$09                                  ; $4a14: $20 $07

    ld a, $06                                     ; $4a16: $3e $06
    rst $18                                       ; $4a18: $df
    ld [$180a], sp                                ; $4a19: $08 $0a $18
    ld [$10df], sp                                ; $4a1c: $08 $df $10
    ld a, [bc]                                    ; $4a1f: $0a
    ld a, $06                                     ; $4a20: $3e $06
    rst $18                                       ; $4a22: $df
    ld [$c90a], sp                                ; $4a23: $08 $0a $c9
    rst $30                                       ; $4a26: $f7
    and b                                         ; $4a27: $a0
    inc c                                         ; $4a28: $0c
    jr z, jr_030_4a2f                             ; $4a29: $28 $04

    call Call_030_4d6d                            ; $4a2b: $cd $6d $4d
    ret                                           ; $4a2e: $c9


jr_030_4a2f:
    ld hl, $0cba                                  ; $4a2f: $21 $ba $0c
    rst $18                                       ; $4a32: $df
    ld c, $0a                                     ; $4a33: $0e $0a
    ld a, $03                                     ; $4a35: $3e $03
    rst $18                                       ; $4a37: $df
    ld a, [bc]                                    ; $4a38: $0a
    ld a, [bc]                                    ; $4a39: $0a
    rst $18                                       ; $4a3a: $df
    ld [de], a                                    ; $4a3b: $12
    ld a, [bc]                                    ; $4a3c: $0a
    rst $18                                       ; $4a3d: $df
    inc c                                         ; $4a3e: $0c
    ld a, [bc]                                    ; $4a3f: $0a
    push af                                       ; $4a40: $f5
    ld a, $05                                     ; $4a41: $3e $05
    rst $18                                       ; $4a43: $df
    inc b                                         ; $4a44: $04
    ld a, [bc]                                    ; $4a45: $0a
    pop af                                        ; $4a46: $f1
    and a                                         ; $4a47: $a7
    jr z, jr_030_4a51                             ; $4a48: $28 $07

    ld a, $03                                     ; $4a4a: $3e $03
    rst $18                                       ; $4a4c: $df
    ld [$180a], sp                                ; $4a4d: $08 $0a $18
    ld e, l                                       ; $4a50: $5d

jr_030_4a51:
    rst $18                                       ; $4a51: $df
    db $10                                        ; $4a52: $10
    ld a, [bc]                                    ; $4a53: $0a
    ld a, $03                                     ; $4a54: $3e $03
    rst $18                                       ; $4a56: $df
    ld [$df0a], sp                                ; $4a57: $08 $0a $df
    inc e                                         ; $4a5a: $1c
    db $10                                        ; $4a5b: $10
    rst $18                                       ; $4a5c: $df
    inc h                                         ; $4a5d: $24
    db $10                                        ; $4a5e: $10
    ld a, $10                                     ; $4a5f: $3e $10
    ld b, a                                       ; $4a61: $47
    ld a, $02                                     ; $4a62: $3e $02
    ld c, a                                       ; $4a64: $4f
    rst $18                                       ; $4a65: $df
    ld c, [hl]                                    ; $4a66: $4e
    ld a, [bc]                                    ; $4a67: $0a
    ld a, $0c                                     ; $4a68: $3e $0c
    ld [$c834], a                                 ; $4a6a: $ea $34 $c8
    ld hl, $4bf7                                  ; $4a6d: $21 $f7 $4b
    ld de, $c600                                  ; $4a70: $11 $00 $c6
    ld c, $04                                     ; $4a73: $0e $04
    call Call_000_03eb                            ; $4a75: $cd $eb $03
    ld bc, $4f00                                  ; $4a78: $01 $00 $4f
    rst $18                                       ; $4a7b: $df
    ld e, $02                                     ; $4a7c: $1e $02
    ld bc, $ff01                                  ; $4a7e: $01 $01 $ff
    rst $18                                       ; $4a81: $df
    ld e, $02                                     ; $4a82: $1e $02
    ld hl, $070b                                  ; $4a84: $21 $0b $07
    rst $18                                       ; $4a87: $df
    db $10                                        ; $4a88: $10
    db $10                                        ; $4a89: $10
    ld a, $00                                     ; $4a8a: $3e $00
    rst $18                                       ; $4a8c: $df
    ld e, $10                                     ; $4a8d: $1e $10
    ld hl, $2000                                  ; $4a8f: $21 $00 $20
    ld de, $2080                                  ; $4a92: $11 $80 $20
    rst $18                                       ; $4a95: $df
    jr nz, jr_030_4aa8                            ; $4a96: $20 $10

    ld de, $c000                                  ; $4a98: $11 $00 $c0
    rst $18                                       ; $4a9b: $df
    ld [hl+], a                                   ; $4a9c: $22
    db $10                                        ; $4a9d: $10
    ldh a, [$95]                                  ; $4a9e: $f0 $95
    ld hl, $4c07                                  ; $4aa0: $21 $07 $4c
    rst $18                                       ; $4aa3: $df
    ld a, [de]                                    ; $4aa4: $1a
    db $10                                        ; $4aa5: $10
    ld a, $01                                     ; $4aa6: $3e $01

jr_030_4aa8:
    rst $18                                       ; $4aa8: $df
    ld [de], a                                    ; $4aa9: $12
    db $10                                        ; $4aaa: $10
    rst $18                                       ; $4aab: $df
    jr nc, jr_030_4abe                            ; $4aac: $30 $10

    ret                                           ; $4aae: $c9


    rst $30                                       ; $4aaf: $f7
    ret nz                                        ; $4ab0: $c0

    inc c                                         ; $4ab1: $0c
    jr z, jr_030_4ab8                             ; $4ab2: $28 $04

    call Call_030_4f9b                            ; $4ab4: $cd $9b $4f
    ret                                           ; $4ab7: $c9


jr_030_4ab8:
    ld hl, $0cc8                                  ; $4ab8: $21 $c8 $0c
    rst $18                                       ; $4abb: $df
    ld c, $0a                                     ; $4abc: $0e $0a

jr_030_4abe:
    ld a, $04                                     ; $4abe: $3e $04
    rst $18                                       ; $4ac0: $df
    ld a, [bc]                                    ; $4ac1: $0a
    ld a, [bc]                                    ; $4ac2: $0a
    rst $18                                       ; $4ac3: $df
    ld [de], a                                    ; $4ac4: $12
    ld a, [bc]                                    ; $4ac5: $0a
    rst $18                                       ; $4ac6: $df
    inc c                                         ; $4ac7: $0c
    ld a, [bc]                                    ; $4ac8: $0a
    push af                                       ; $4ac9: $f5
    ld a, $05                                     ; $4aca: $3e $05
    rst $18                                       ; $4acc: $df
    inc b                                         ; $4acd: $04
    ld a, [bc]                                    ; $4ace: $0a
    pop af                                        ; $4acf: $f1
    and a                                         ; $4ad0: $a7
    jr z, jr_030_4ada                             ; $4ad1: $28 $07

    ld a, $04                                     ; $4ad3: $3e $04
    rst $18                                       ; $4ad5: $df
    ld [$180a], sp                                ; $4ad6: $08 $0a $18
    ld e, l                                       ; $4ad9: $5d

jr_030_4ada:
    rst $18                                       ; $4ada: $df
    db $10                                        ; $4adb: $10
    ld a, [bc]                                    ; $4adc: $0a
    ld a, $04                                     ; $4add: $3e $04
    rst $18                                       ; $4adf: $df
    ld [$df0a], sp                                ; $4ae0: $08 $0a $df
    inc e                                         ; $4ae3: $1c
    db $10                                        ; $4ae4: $10
    rst $18                                       ; $4ae5: $df
    inc h                                         ; $4ae6: $24
    db $10                                        ; $4ae7: $10
    ld a, $10                                     ; $4ae8: $3e $10
    ld b, a                                       ; $4aea: $47
    ld a, $03                                     ; $4aeb: $3e $03
    ld c, a                                       ; $4aed: $4f
    rst $18                                       ; $4aee: $df
    ld c, [hl]                                    ; $4aef: $4e
    ld a, [bc]                                    ; $4af0: $0a
    ld a, $0c                                     ; $4af1: $3e $0c
    ld [$c834], a                                 ; $4af3: $ea $34 $c8
    ld hl, $4e37                                  ; $4af6: $21 $37 $4e
    ld de, $c600                                  ; $4af9: $11 $00 $c6
    ld c, $04                                     ; $4afc: $0e $04
    call Call_000_03eb                            ; $4afe: $cd $eb $03
    ld bc, $4e00                                  ; $4b01: $01 $00 $4e
    rst $18                                       ; $4b04: $df
    ld e, $02                                     ; $4b05: $1e $02
    ld bc, $ff01                                  ; $4b07: $01 $01 $ff
    rst $18                                       ; $4b0a: $df
    ld e, $02                                     ; $4b0b: $1e $02
    ld hl, $070b                                  ; $4b0d: $21 $0b $07
    rst $18                                       ; $4b10: $df
    db $10                                        ; $4b11: $10
    db $10                                        ; $4b12: $10
    ld a, $00                                     ; $4b13: $3e $00
    rst $18                                       ; $4b15: $df
    ld e, $10                                     ; $4b16: $1e $10
    ld hl, $1ca0                                  ; $4b18: $21 $a0 $1c
    ld de, $1fa0                                  ; $4b1b: $11 $a0 $1f
    rst $18                                       ; $4b1e: $df
    jr nz, jr_030_4b31                            ; $4b1f: $20 $10

    ld de, $c000                                  ; $4b21: $11 $00 $c0
    rst $18                                       ; $4b24: $df
    ld [hl+], a                                   ; $4b25: $22
    db $10                                        ; $4b26: $10
    ldh a, [$95]                                  ; $4b27: $f0 $95
    ld hl, $4e47                                  ; $4b29: $21 $47 $4e
    rst $18                                       ; $4b2c: $df
    ld a, [de]                                    ; $4b2d: $1a
    db $10                                        ; $4b2e: $10
    ld a, $01                                     ; $4b2f: $3e $01

jr_030_4b31:
    rst $18                                       ; $4b31: $df
    ld [de], a                                    ; $4b32: $12
    db $10                                        ; $4b33: $10
    rst $18                                       ; $4b34: $df
    jr nc, jr_030_4b47                            ; $4b35: $30 $10

    ret                                           ; $4b37: $c9


    ld c, $08                                     ; $4b38: $0e $08
    call Call_000_25a1                            ; $4b3a: $cd $a1 $25
    call Call_000_2625                            ; $4b3d: $cd $25 $26
    rst $18                                       ; $4b40: $df
    ld a, [bc]                                    ; $4b41: $0a
    ld bc, $903e                                  ; $4b42: $01 $3e $90
    ldh [rWY], a                                  ; $4b45: $e0 $4a

jr_030_4b47:
    call Call_000_2683                            ; $4b47: $cd $83 $26
    ld a, $01                                     ; $4b4a: $3e $01
    ld [$c441], a                                 ; $4b4c: $ea $41 $c4
    ret                                           ; $4b4f: $c9


    ld bc, $00ff                                  ; $4b50: $01 $ff $00
    nop                                           ; $4b53: $00
    di                                            ; $4b54: $f3
    ld a, l                                       ; $4b55: $7d
    ld b, $00                                     ; $4b56: $06 $00
    rst $38                                       ; $4b58: $ff
    rrca                                          ; $4b59: $0f
    rst $38                                       ; $4b5a: $ff
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    and $47                                       ; $4b5d: $e6 $47
    ld bc, $ff00                                  ; $4b5f: $01 $00 $ff
    ld a, [$c46a]                                 ; $4b62: $fa $6a $c4
    cp $01                                        ; $4b65: $fe $01
    jr z, jr_030_4b71                             ; $4b67: $28 $08

    push af                                       ; $4b69: $f5
    xor a                                         ; $4b6a: $af
    ld hl, $c4b4                                  ; $4b6b: $21 $b4 $c4
    ld [hl+], a                                   ; $4b6e: $22
    ld [hl+], a                                   ; $4b6f: $22
    pop af                                        ; $4b70: $f1

jr_030_4b71:
    cp $02                                        ; $4b71: $fe $02
    jr nz, jr_030_4b7b                            ; $4b73: $20 $06

    call Call_030_4d77                            ; $4b75: $cd $77 $4d
    jp Jump_030_4bf6                              ; $4b78: $c3 $f6 $4b


jr_030_4b7b:
    cp $03                                        ; $4b7b: $fe $03
    jr nz, jr_030_4b85                            ; $4b7d: $20 $06

    call Call_030_4fa5                            ; $4b7f: $cd $a5 $4f
    jp Jump_030_4bf6                              ; $4b82: $c3 $f6 $4b


jr_030_4b85:
    cp $04                                        ; $4b85: $fe $04
    jr nz, jr_030_4bb7                            ; $4b87: $20 $2e

    call Call_030_4cf9                            ; $4b89: $cd $f9 $4c
    rst $30                                       ; $4b8c: $f7
    ld b, b                                       ; $4b8d: $40
    inc c                                         ; $4b8e: $0c
    jr z, jr_030_4bf6                             ; $4b8f: $28 $65

    rst $28                                       ; $4b91: $ef
    ld b, b                                       ; $4b92: $40
    inc c                                         ; $4b93: $0c
    rst $30                                       ; $4b94: $f7
    add b                                         ; $4b95: $80
    inc d                                         ; $4b96: $14
    jr nz, jr_030_4bf6                            ; $4b97: $20 $5d

    call Call_000_2ed5                            ; $4b99: $cd $d5 $2e
    ld e, $e7                                     ; $4b9c: $1e $e7
    add b                                         ; $4b9e: $80
    inc d                                         ; $4b9f: $14
    ld de, $0019                                  ; $4ba0: $11 $19 $00
    call Call_030_7e7f                            ; $4ba3: $cd $7f $7e
    ld b, $00                                     ; $4ba6: $06 $00
    ld c, $fa                                     ; $4ba8: $0e $fa
    rst $18                                       ; $4baa: $df
    ld c, [hl]                                    ; $4bab: $4e
    ld a, [bc]                                    ; $4bac: $0a
    rst $18                                       ; $4bad: $df
    inc [hl]                                      ; $4bae: $34
    ld [bc], a                                    ; $4baf: $02
    ld a, $06                                     ; $4bb0: $3e $06
    ld [$c441], a                                 ; $4bb2: $ea $41 $c4
    jr jr_030_4bf6                                ; $4bb5: $18 $3f

jr_030_4bb7:
    cp $05                                        ; $4bb7: $fe $05
    jr nz, jr_030_4be9                            ; $4bb9: $20 $2e

    call Call_030_4f23                            ; $4bbb: $cd $23 $4f
    rst $30                                       ; $4bbe: $f7
    ld b, b                                       ; $4bbf: $40
    inc c                                         ; $4bc0: $0c
    jr z, jr_030_4bf6                             ; $4bc1: $28 $33

    rst $28                                       ; $4bc3: $ef
    ld b, b                                       ; $4bc4: $40
    inc c                                         ; $4bc5: $0c
    rst $30                                       ; $4bc6: $f7
    and b                                         ; $4bc7: $a0
    inc d                                         ; $4bc8: $14
    jr nz, jr_030_4bf6                            ; $4bc9: $20 $2b

    call Call_000_2ed5                            ; $4bcb: $cd $d5 $2e
    ld e, $e7                                     ; $4bce: $1e $e7
    and b                                         ; $4bd0: $a0
    inc d                                         ; $4bd1: $14
    ld de, $0019                                  ; $4bd2: $11 $19 $00
    call Call_030_7e7f                            ; $4bd5: $cd $7f $7e
    ld b, $00                                     ; $4bd8: $06 $00
    ld c, $fa                                     ; $4bda: $0e $fa
    rst $18                                       ; $4bdc: $df
    ld c, [hl]                                    ; $4bdd: $4e
    ld a, [bc]                                    ; $4bde: $0a
    rst $18                                       ; $4bdf: $df
    inc [hl]                                      ; $4be0: $34
    ld [bc], a                                    ; $4be1: $02
    ld a, $07                                     ; $4be2: $3e $07
    ld [$c441], a                                 ; $4be4: $ea $41 $c4
    jr jr_030_4bf6                                ; $4be7: $18 $0d

jr_030_4be9:
    cp $fa                                        ; $4be9: $fe $fa
    jp nz, Jump_030_4bf6                          ; $4beb: $c2 $f6 $4b

    rst $30                                       ; $4bee: $f7
    add b                                         ; $4bef: $80
    inc c                                         ; $4bf0: $0c
    jr z, jr_030_4bf6                             ; $4bf1: $28 $03

    rst $28                                       ; $4bf3: $ef
    add b                                         ; $4bf4: $80
    inc c                                         ; $4bf5: $0c

Jump_030_4bf6:
jr_030_4bf6:
    ret                                           ; $4bf6: $c9


    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    jr nz, jr_030_4bfb                            ; $4bf9: $20 $00

jr_030_4bfb:
    add b                                         ; $4bfb: $80
    jr nz, jr_030_4bfe                            ; $4bfc: $20 $00

jr_030_4bfe:
    ret nz                                        ; $4bfe: $c0

    inc c                                         ; $4bff: $0c
    ld [bc], a                                    ; $4c00: $02
    ld d, $00                                     ; $4c01: $16 $00
    ld bc, $0000                                  ; $4c03: $01 $00 $00
    nop                                           ; $4c06: $00
    daa                                           ; $4c07: $27
    ld c, h                                       ; $4c08: $4c
    ld l, a                                       ; $4c09: $6f
    ld c, h                                       ; $4c0a: $4c
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    ldh a, [$96]                                  ; $4c27: $f0 $96
    push af                                       ; $4c29: $f5
    ld a, $06                                     ; $4c2a: $3e $06
    ldh [$96], a                                  ; $4c2c: $e0 $96
    ldh [rSVBK], a                                ; $4c2e: $e0 $70
    rst $18                                       ; $4c30: $df
    ld a, [hl+]                                   ; $4c31: $2a
    db $10                                        ; $4c32: $10
    ld a, $03                                     ; $4c33: $3e $03
    ld de, $0a03                                  ; $4c35: $11 $03 $0a
    ld hl, $0cbd                                  ; $4c38: $21 $bd $0c
    rst $18                                       ; $4c3b: $df
    ld c, d                                       ; $4c3c: $4a
    dec b                                         ; $4c3d: $05
    ld a, $03                                     ; $4c3e: $3e $03
    ld de, $0a03                                  ; $4c40: $11 $03 $0a
    ld hl, $0cbe                                  ; $4c43: $21 $be $0c
    rst $18                                       ; $4c46: $df
    ld c, d                                       ; $4c47: $4a
    dec b                                         ; $4c48: $05
    ld a, $03                                     ; $4c49: $3e $03
    ld de, $0a03                                  ; $4c4b: $11 $03 $0a
    ld hl, $0cbf                                  ; $4c4e: $21 $bf $0c
    rst $18                                       ; $4c51: $df
    ld c, d                                       ; $4c52: $4a
    dec b                                         ; $4c53: $05
    push af                                       ; $4c54: $f5
    ld a, $3c                                     ; $4c55: $3e $3c
    rst $18                                       ; $4c57: $df
    inc b                                         ; $4c58: $04
    ld a, [bc]                                    ; $4c59: $0a
    pop af                                        ; $4c5a: $f1
    ld a, $03                                     ; $4c5b: $3e $03
    ld de, $0a03                                  ; $4c5d: $11 $03 $0a
    ld hl, $0cc0                                  ; $4c60: $21 $c0 $0c
    rst $18                                       ; $4c63: $df
    ld c, d                                       ; $4c64: $4a
    dec b                                         ; $4c65: $05
    rst $18                                       ; $4c66: $df
    inc l                                         ; $4c67: $2c
    db $10                                        ; $4c68: $10
    pop af                                        ; $4c69: $f1
    ldh [$96], a                                  ; $4c6a: $e0 $96
    ldh [rSVBK], a                                ; $4c6c: $e0 $70
    ret                                           ; $4c6e: $c9


    ldh a, [$96]                                  ; $4c6f: $f0 $96
    push af                                       ; $4c71: $f5
    rst $18                                       ; $4c72: $df
    ld a, [hl+]                                   ; $4c73: $2a
    db $10                                        ; $4c74: $10
    ld a, $82                                     ; $4c75: $3e $82
    rst $18                                       ; $4c77: $df
    ld l, $10                                     ; $4c78: $2e $10
    rst $18                                       ; $4c7a: $df
    inc l                                         ; $4c7b: $2c
    db $10                                        ; $4c7c: $10
    pop af                                        ; $4c7d: $f1
    ldh [$96], a                                  ; $4c7e: $e0 $96
    ldh [rSVBK], a                                ; $4c80: $e0 $70
    ret                                           ; $4c82: $c9


    and e                                         ; $4c83: $a3
    ld c, h                                       ; $4c84: $4c
    bit 1, h                                      ; $4c85: $cb $4c
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    nop                                           ; $4c9e: $00
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    rst $18                                       ; $4ca3: $df
    ld a, [hl+]                                   ; $4ca4: $2a
    db $10                                        ; $4ca5: $10
    ld a, $03                                     ; $4ca6: $3e $03
    ld de, $0a03                                  ; $4ca8: $11 $03 $0a
    ld hl, $0ca6                                  ; $4cab: $21 $a6 $0c
    rst $18                                       ; $4cae: $df
    ld c, d                                       ; $4caf: $4a
    dec b                                         ; $4cb0: $05
    ld a, $03                                     ; $4cb1: $3e $03
    ld de, $0a03                                  ; $4cb3: $11 $03 $0a
    ld hl, $0ca7                                  ; $4cb6: $21 $a7 $0c
    rst $18                                       ; $4cb9: $df
    ld c, d                                       ; $4cba: $4a
    dec b                                         ; $4cbb: $05
    ld a, $03                                     ; $4cbc: $3e $03
    ld de, $0a03                                  ; $4cbe: $11 $03 $0a
    ld hl, $0ca8                                  ; $4cc1: $21 $a8 $0c
    rst $18                                       ; $4cc4: $df
    ld c, d                                       ; $4cc5: $4a
    dec b                                         ; $4cc6: $05
    rst $18                                       ; $4cc7: $df
    inc l                                         ; $4cc8: $2c
    db $10                                        ; $4cc9: $10
    ret                                           ; $4cca: $c9


    rst $18                                       ; $4ccb: $df
    ld a, [hl+]                                   ; $4ccc: $2a
    db $10                                        ; $4ccd: $10
    ld a, [$c834]                                 ; $4cce: $fa $34 $c8
    or a                                          ; $4cd1: $b7
    jr nz, jr_030_4cdb                            ; $4cd2: $20 $07

    ld a, $06                                     ; $4cd4: $3e $06
    ld [$c961], a                                 ; $4cd6: $ea $61 $c9
    jr jr_030_4cf0                                ; $4cd9: $18 $15

jr_030_4cdb:
    ld hl, $0060                                  ; $4cdb: $21 $60 $00
    call Call_030_7e2e                            ; $4cde: $cd $2e $7e
    ld [$c968], a                                 ; $4ce1: $ea $68 $c9
    rst $28                                       ; $4ce4: $ef
    ld h, b                                       ; $4ce5: $60
    inc c                                         ; $4ce6: $0c
    ld a, [$c8aa]                                 ; $4ce7: $fa $aa $c8
    or a                                          ; $4cea: $b7
    jr z, jr_030_4cf0                             ; $4ceb: $28 $03

    rst $20                                       ; $4ced: $e7
    ld h, b                                       ; $4cee: $60
    inc c                                         ; $4cef: $0c

jr_030_4cf0:
    ld a, $82                                     ; $4cf0: $3e $82
    rst $18                                       ; $4cf2: $df
    ld l, $10                                     ; $4cf3: $2e $10
    rst $18                                       ; $4cf5: $df
    inc l                                         ; $4cf6: $2c
    db $10                                        ; $4cf7: $10
    ret                                           ; $4cf8: $c9


Call_030_4cf9:
    rst $18                                       ; $4cf9: $df
    nop                                           ; $4cfa: $00
    ld a, [bc]                                    ; $4cfb: $0a
    ldh a, [$95]                                  ; $4cfc: $f0 $95
    ld b, a                                       ; $4cfe: $47
    ld a, $03                                     ; $4cff: $3e $03
    ld de, $7d99                                  ; $4d01: $11 $99 $7d
    rst $18                                       ; $4d04: $df
    jr @+$0c                                      ; $4d05: $18 $0a

    ld a, [$c296]                                 ; $4d07: $fa $96 $c2
    ld b, a                                       ; $4d0a: $47
    ld a, $03                                     ; $4d0b: $3e $03
    rst $18                                       ; $4d0d: $df
    ld l, $0a                                     ; $4d0e: $2e $0a
    ld c, $08                                     ; $4d10: $0e $08
    call Call_000_25af                            ; $4d12: $cd $af $25
    call Call_000_2625                            ; $4d15: $cd $25 $26
    push af                                       ; $4d18: $f5
    ld a, $1e                                     ; $4d19: $3e $1e
    rst $18                                       ; $4d1b: $df
    inc b                                         ; $4d1c: $04
    ld a, [bc]                                    ; $4d1d: $0a
    pop af                                        ; $4d1e: $f1
    ld a, [$c968]                                 ; $4d1f: $fa $68 $c9
    or a                                          ; $4d22: $b7
    jr nz, jr_030_4d4c                            ; $4d23: $20 $27

    ld a, $03                                     ; $4d25: $3e $03
    ld b, a                                       ; $4d27: $47
    ld a, $07                                     ; $4d28: $3e $07
    rst $18                                       ; $4d2a: $df
    ld [hl-], a                                   ; $4d2b: $32
    ld a, [bc]                                    ; $4d2c: $0a
    ld a, $03                                     ; $4d2d: $3e $03
    rst $18                                       ; $4d2f: $df
    inc [hl]                                      ; $4d30: $34
    ld a, [bc]                                    ; $4d31: $0a
    push af                                       ; $4d32: $f5
    ld a, $1e                                     ; $4d33: $3e $1e
    rst $18                                       ; $4d35: $df
    inc b                                         ; $4d36: $04
    ld a, [bc]                                    ; $4d37: $0a
    pop af                                        ; $4d38: $f1
    ld hl, $0cc6                                  ; $4d39: $21 $c6 $0c
    rst $18                                       ; $4d3c: $df
    ld c, $0a                                     ; $4d3d: $0e $0a
    ld a, $03                                     ; $4d3f: $3e $03
    rst $18                                       ; $4d41: $df
    ld [$e70a], sp                                ; $4d42: $08 $0a $e7
    ld b, b                                       ; $4d45: $40
    inc c                                         ; $4d46: $0c
    rst $28                                       ; $4d47: $ef
    and b                                         ; $4d48: $a0
    inc c                                         ; $4d49: $0c
    jr @+$0d                                      ; $4d4a: $18 $0b

jr_030_4d4c:
    ld hl, $0cc5                                  ; $4d4c: $21 $c5 $0c
    rst $18                                       ; $4d4f: $df
    ld c, $0a                                     ; $4d50: $0e $0a
    ld a, $03                                     ; $4d52: $3e $03
    rst $18                                       ; $4d54: $df
    ld [$f00a], sp                                ; $4d55: $08 $0a $f0
    sub l                                         ; $4d58: $95
    ld b, a                                       ; $4d59: $47
    ld a, $03                                     ; $4d5a: $3e $03
    ld de, $7dff                                  ; $4d5c: $11 $ff $7d
    rst $18                                       ; $4d5f: $df
    jr jr_030_4d6c                                ; $4d60: $18 $0a

    ld a, $03                                     ; $4d62: $3e $03
    ld b, $00                                     ; $4d64: $06 $00
    rst $18                                       ; $4d66: $df
    inc l                                         ; $4d67: $2c
    ld a, [bc]                                    ; $4d68: $0a
    rst $18                                       ; $4d69: $df
    ld [bc], a                                    ; $4d6a: $02
    ld a, [bc]                                    ; $4d6b: $0a

jr_030_4d6c:
    ret                                           ; $4d6c: $c9


Call_030_4d6d:
    ld hl, $0d11                                  ; $4d6d: $21 $11 $0d
    rst $18                                       ; $4d70: $df
    ld c, $0a                                     ; $4d71: $0e $0a
    call Call_030_4da3                            ; $4d73: $cd $a3 $4d
    ret                                           ; $4d76: $c9


Call_030_4d77:
    rst $18                                       ; $4d77: $df
    nop                                           ; $4d78: $00
    ld a, [bc]                                    ; $4d79: $0a
    ldh a, [$95]                                  ; $4d7a: $f0 $95
    ld b, a                                       ; $4d7c: $47
    ld a, $03                                     ; $4d7d: $3e $03
    ld de, $7d99                                  ; $4d7f: $11 $99 $7d
    rst $18                                       ; $4d82: $df
    jr @+$0c                                      ; $4d83: $18 $0a

    ld a, [$c296]                                 ; $4d85: $fa $96 $c2
    ld b, a                                       ; $4d88: $47
    ld a, $03                                     ; $4d89: $3e $03
    rst $18                                       ; $4d8b: $df
    ld l, $0a                                     ; $4d8c: $2e $0a
    ld c, $04                                     ; $4d8e: $0e $04
    call Call_000_25af                            ; $4d90: $cd $af $25
    call Call_000_2625                            ; $4d93: $cd $25 $26
    ld hl, $0cc1                                  ; $4d96: $21 $c1 $0c
    rst $18                                       ; $4d99: $df
    ld c, $0a                                     ; $4d9a: $0e $0a
    call Call_030_4da3                            ; $4d9c: $cd $a3 $4d
    rst $18                                       ; $4d9f: $df
    ld [bc], a                                    ; $4da0: $02
    ld a, [bc]                                    ; $4da1: $0a
    ret                                           ; $4da2: $c9


Call_030_4da3:
    ld a, $03                                     ; $4da3: $3e $03
    rst $18                                       ; $4da5: $df
    ld a, [bc]                                    ; $4da6: $0a
    ld a, [bc]                                    ; $4da7: $0a
    rst $18                                       ; $4da8: $df
    ld [de], a                                    ; $4da9: $12
    ld a, [bc]                                    ; $4daa: $0a
    rst $18                                       ; $4dab: $df
    inc c                                         ; $4dac: $0c
    ld a, [bc]                                    ; $4dad: $0a
    push af                                       ; $4dae: $f5
    ld a, $05                                     ; $4daf: $3e $05
    rst $18                                       ; $4db1: $df
    inc b                                         ; $4db2: $04
    ld a, [bc]                                    ; $4db3: $0a
    pop af                                        ; $4db4: $f1
    and a                                         ; $4db5: $a7
    jr z, jr_030_4dd7                             ; $4db6: $28 $1f

    ld hl, $0cc7                                  ; $4db8: $21 $c7 $0c
    rst $18                                       ; $4dbb: $df
    ld c, $0a                                     ; $4dbc: $0e $0a
    ld a, $03                                     ; $4dbe: $3e $03
    rst $18                                       ; $4dc0: $df
    ld [$f00a], sp                                ; $4dc1: $08 $0a $f0
    sub l                                         ; $4dc4: $95
    ld b, a                                       ; $4dc5: $47
    ld a, $03                                     ; $4dc6: $3e $03
    ld de, $7dff                                  ; $4dc8: $11 $ff $7d
    rst $18                                       ; $4dcb: $df
    jr jr_030_4dd8                                ; $4dcc: $18 $0a

    ld a, $03                                     ; $4dce: $3e $03
    ld b, $c0                                     ; $4dd0: $06 $c0
    rst $18                                       ; $4dd2: $df
    inc l                                         ; $4dd3: $2c
    ld a, [bc]                                    ; $4dd4: $0a
    jr jr_030_4e36                                ; $4dd5: $18 $5f

jr_030_4dd7:
    rst $20                                       ; $4dd7: $e7

jr_030_4dd8:
    and b                                         ; $4dd8: $a0
    inc c                                         ; $4dd9: $0c
    rst $18                                       ; $4dda: $df
    inc e                                         ; $4ddb: $1c
    db $10                                        ; $4ddc: $10
    rst $30                                       ; $4ddd: $f7
    add b                                         ; $4dde: $80
    inc d                                         ; $4ddf: $14
    jr nz, jr_030_4de7                            ; $4de0: $20 $05

    ld a, $0a                                     ; $4de2: $3e $0a
    ld [$c82c], a                                 ; $4de4: $ea $2c $c8

jr_030_4de7:
    rst $18                                       ; $4de7: $df
    inc h                                         ; $4de8: $24
    db $10                                        ; $4de9: $10
    ld a, $10                                     ; $4dea: $3e $10
    ld b, a                                       ; $4dec: $47
    ld a, $04                                     ; $4ded: $3e $04
    ld c, a                                       ; $4def: $4f
    rst $18                                       ; $4df0: $df
    ld c, [hl]                                    ; $4df1: $4e
    ld a, [bc]                                    ; $4df2: $0a
    ld a, $0c                                     ; $4df3: $3e $0c
    ld [$c834], a                                 ; $4df5: $ea $34 $c8
    ld bc, $8000                                  ; $4df8: $01 $00 $80
    rst $18                                       ; $4dfb: $df
    ld e, $02                                     ; $4dfc: $1e $02
    ld bc, $ff01                                  ; $4dfe: $01 $01 $ff
    rst $18                                       ; $4e01: $df
    ld e, $02                                     ; $4e02: $1e $02
    ld hl, $070b                                  ; $4e04: $21 $0b $07
    rst $18                                       ; $4e07: $df
    db $10                                        ; $4e08: $10
    db $10                                        ; $4e09: $10
    ld a, $00                                     ; $4e0a: $3e $00
    rst $18                                       ; $4e0c: $df
    ld e, $10                                     ; $4e0d: $1e $10
    ld hl, $2000                                  ; $4e0f: $21 $00 $20
    ld de, $2080                                  ; $4e12: $11 $80 $20
    rst $18                                       ; $4e15: $df
    jr nz, jr_030_4e28                            ; $4e16: $20 $10

    ld e, $0c                                     ; $4e18: $1e $0c
    ld bc, $c000                                  ; $4e1a: $01 $00 $c0
    rst $18                                       ; $4e1d: $df
    ld h, $10                                     ; $4e1e: $26 $10
    ld de, $c000                                  ; $4e20: $11 $00 $c0
    rst $18                                       ; $4e23: $df
    ld [hl+], a                                   ; $4e24: $22
    db $10                                        ; $4e25: $10
    ldh a, [$95]                                  ; $4e26: $f0 $95

jr_030_4e28:
    ld hl, $4c83                                  ; $4e28: $21 $83 $4c
    rst $18                                       ; $4e2b: $df
    ld a, [de]                                    ; $4e2c: $1a
    db $10                                        ; $4e2d: $10
    ld a, $01                                     ; $4e2e: $3e $01
    rst $18                                       ; $4e30: $df
    ld [de], a                                    ; $4e31: $12
    db $10                                        ; $4e32: $10
    rst $18                                       ; $4e33: $df
    jr nc, jr_030_4e46                            ; $4e34: $30 $10

jr_030_4e36:
    ret                                           ; $4e36: $c9


    nop                                           ; $4e37: $00
    and b                                         ; $4e38: $a0
    inc e                                         ; $4e39: $1c
    nop                                           ; $4e3a: $00
    and b                                         ; $4e3b: $a0
    rra                                           ; $4e3c: $1f
    or b                                          ; $4e3d: $b0
    db $ec                                        ; $4e3e: $ec
    dec c                                         ; $4e3f: $0d
    ld [bc], a                                    ; $4e40: $02
    ld [hl+], a                                   ; $4e41: $22
    ld [hl+], a                                   ; $4e42: $22
    ldh a, [rP1]                                  ; $4e43: $f0 $00
    nop                                           ; $4e45: $00

jr_030_4e46:
    nop                                           ; $4e46: $00
    ld h, a                                       ; $4e47: $67
    ld c, [hl]                                    ; $4e48: $4e
    and c                                         ; $4e49: $a1
    ld c, [hl]                                    ; $4e4a: $4e
    nop                                           ; $4e4b: $00
    nop                                           ; $4e4c: $00
    nop                                           ; $4e4d: $00
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    nop                                           ; $4e50: $00
    nop                                           ; $4e51: $00
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    nop                                           ; $4e56: $00
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    nop                                           ; $4e5a: $00
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    nop                                           ; $4e5d: $00
    nop                                           ; $4e5e: $00
    nop                                           ; $4e5f: $00
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    nop                                           ; $4e62: $00
    nop                                           ; $4e63: $00
    nop                                           ; $4e64: $00
    nop                                           ; $4e65: $00
    nop                                           ; $4e66: $00
    rst $18                                       ; $4e67: $df
    ld a, [hl+]                                   ; $4e68: $2a
    db $10                                        ; $4e69: $10
    ld a, $04                                     ; $4e6a: $3e $04
    ld de, $0a03                                  ; $4e6c: $11 $03 $0a
    ld hl, $0ccb                                  ; $4e6f: $21 $cb $0c
    rst $18                                       ; $4e72: $df
    ld c, d                                       ; $4e73: $4a
    dec b                                         ; $4e74: $05
    ld a, $04                                     ; $4e75: $3e $04
    ld de, $0a03                                  ; $4e77: $11 $03 $0a
    ld hl, $0ccc                                  ; $4e7a: $21 $cc $0c
    rst $18                                       ; $4e7d: $df
    ld c, d                                       ; $4e7e: $4a
    dec b                                         ; $4e7f: $05
    ld a, $04                                     ; $4e80: $3e $04
    ld de, $0a03                                  ; $4e82: $11 $03 $0a
    ld hl, $0ccd                                  ; $4e85: $21 $cd $0c
    rst $18                                       ; $4e88: $df
    ld c, d                                       ; $4e89: $4a
    dec b                                         ; $4e8a: $05
    push af                                       ; $4e8b: $f5
    ld a, $3c                                     ; $4e8c: $3e $3c
    rst $18                                       ; $4e8e: $df
    inc b                                         ; $4e8f: $04
    ld a, [bc]                                    ; $4e90: $0a
    pop af                                        ; $4e91: $f1
    ld a, $04                                     ; $4e92: $3e $04
    ld de, $0a03                                  ; $4e94: $11 $03 $0a
    ld hl, $0cce                                  ; $4e97: $21 $ce $0c
    rst $18                                       ; $4e9a: $df
    ld c, d                                       ; $4e9b: $4a
    dec b                                         ; $4e9c: $05
    rst $18                                       ; $4e9d: $df
    inc l                                         ; $4e9e: $2c
    db $10                                        ; $4e9f: $10
    ret                                           ; $4ea0: $c9


    rst $18                                       ; $4ea1: $df
    ld a, [hl+]                                   ; $4ea2: $2a
    db $10                                        ; $4ea3: $10
    ld a, $82                                     ; $4ea4: $3e $82
    rst $18                                       ; $4ea6: $df
    ld l, $10                                     ; $4ea7: $2e $10
    rst $18                                       ; $4ea9: $df
    inc l                                         ; $4eaa: $2c
    db $10                                        ; $4eab: $10
    ret                                           ; $4eac: $c9


    call $f54e                                    ; $4ead: $cd $4e $f5
    ld c, [hl]                                    ; $4eb0: $4e
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    nop                                           ; $4ebb: $00
    nop                                           ; $4ebc: $00
    nop                                           ; $4ebd: $00
    nop                                           ; $4ebe: $00
    nop                                           ; $4ebf: $00
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    rst $18                                       ; $4ecd: $df
    ld a, [hl+]                                   ; $4ece: $2a
    db $10                                        ; $4ecf: $10
    ld a, $04                                     ; $4ed0: $3e $04
    ld de, $0a03                                  ; $4ed2: $11 $03 $0a
    ld hl, $0cd0                                  ; $4ed5: $21 $d0 $0c
    rst $18                                       ; $4ed8: $df
    ld c, d                                       ; $4ed9: $4a
    dec b                                         ; $4eda: $05
    ld a, $04                                     ; $4edb: $3e $04
    ld de, $0a03                                  ; $4edd: $11 $03 $0a
    ld hl, $0cd1                                  ; $4ee0: $21 $d1 $0c
    rst $18                                       ; $4ee3: $df
    ld c, d                                       ; $4ee4: $4a
    dec b                                         ; $4ee5: $05
    ld a, $04                                     ; $4ee6: $3e $04
    ld de, $0a03                                  ; $4ee8: $11 $03 $0a
    ld hl, $0cd2                                  ; $4eeb: $21 $d2 $0c
    rst $18                                       ; $4eee: $df
    ld c, d                                       ; $4eef: $4a
    dec b                                         ; $4ef0: $05
    rst $18                                       ; $4ef1: $df
    inc l                                         ; $4ef2: $2c
    db $10                                        ; $4ef3: $10
    ret                                           ; $4ef4: $c9


    rst $18                                       ; $4ef5: $df
    ld a, [hl+]                                   ; $4ef6: $2a
    db $10                                        ; $4ef7: $10
    ld a, [$c834]                                 ; $4ef8: $fa $34 $c8
    or a                                          ; $4efb: $b7
    jr nz, jr_030_4f05                            ; $4efc: $20 $07

    ld a, $07                                     ; $4efe: $3e $07
    ld [$c961], a                                 ; $4f00: $ea $61 $c9
    jr jr_030_4f1a                                ; $4f03: $18 $15

jr_030_4f05:
    ld hl, $0060                                  ; $4f05: $21 $60 $00
    call Call_030_7e2e                            ; $4f08: $cd $2e $7e
    ld [$c968], a                                 ; $4f0b: $ea $68 $c9
    rst $28                                       ; $4f0e: $ef
    ld h, b                                       ; $4f0f: $60
    inc c                                         ; $4f10: $0c
    ld a, [$c8aa]                                 ; $4f11: $fa $aa $c8
    or a                                          ; $4f14: $b7
    jr z, jr_030_4f1a                             ; $4f15: $28 $03

    rst $20                                       ; $4f17: $e7
    ld h, b                                       ; $4f18: $60
    inc c                                         ; $4f19: $0c

jr_030_4f1a:
    ld a, $82                                     ; $4f1a: $3e $82
    rst $18                                       ; $4f1c: $df
    ld l, $10                                     ; $4f1d: $2e $10
    rst $18                                       ; $4f1f: $df
    inc l                                         ; $4f20: $2c
    db $10                                        ; $4f21: $10
    ret                                           ; $4f22: $c9


Call_030_4f23:
    rst $18                                       ; $4f23: $df
    nop                                           ; $4f24: $00
    ld a, [bc]                                    ; $4f25: $0a
    ldh a, [$95]                                  ; $4f26: $f0 $95
    ld b, a                                       ; $4f28: $47
    ld a, $04                                     ; $4f29: $3e $04
    ld de, $7d99                                  ; $4f2b: $11 $99 $7d
    rst $18                                       ; $4f2e: $df
    jr @+$0c                                      ; $4f2f: $18 $0a

    ld a, [$c296]                                 ; $4f31: $fa $96 $c2
    ld b, a                                       ; $4f34: $47
    ld a, $04                                     ; $4f35: $3e $04
    rst $18                                       ; $4f37: $df
    ld l, $0a                                     ; $4f38: $2e $0a
    ld c, $08                                     ; $4f3a: $0e $08
    call Call_000_25af                            ; $4f3c: $cd $af $25
    call Call_000_2625                            ; $4f3f: $cd $25 $26
    push af                                       ; $4f42: $f5
    ld a, $1e                                     ; $4f43: $3e $1e
    rst $18                                       ; $4f45: $df
    inc b                                         ; $4f46: $04
    ld a, [bc]                                    ; $4f47: $0a
    pop af                                        ; $4f48: $f1
    ld a, [$c968]                                 ; $4f49: $fa $68 $c9
    or a                                          ; $4f4c: $b7
    jr nz, jr_030_4f76                            ; $4f4d: $20 $27

    ld a, $04                                     ; $4f4f: $3e $04
    ld b, a                                       ; $4f51: $47
    ld a, $07                                     ; $4f52: $3e $07
    rst $18                                       ; $4f54: $df
    ld [hl-], a                                   ; $4f55: $32
    ld a, [bc]                                    ; $4f56: $0a
    ld a, $04                                     ; $4f57: $3e $04
    rst $18                                       ; $4f59: $df
    inc [hl]                                      ; $4f5a: $34
    ld a, [bc]                                    ; $4f5b: $0a
    push af                                       ; $4f5c: $f5
    ld a, $1e                                     ; $4f5d: $3e $1e
    rst $18                                       ; $4f5f: $df
    inc b                                         ; $4f60: $04
    ld a, [bc]                                    ; $4f61: $0a
    pop af                                        ; $4f62: $f1
    ld hl, $0cd4                                  ; $4f63: $21 $d4 $0c
    rst $18                                       ; $4f66: $df
    ld c, $0a                                     ; $4f67: $0e $0a
    ld a, $04                                     ; $4f69: $3e $04
    rst $18                                       ; $4f6b: $df
    ld [$e70a], sp                                ; $4f6c: $08 $0a $e7
    ld b, b                                       ; $4f6f: $40
    inc c                                         ; $4f70: $0c
    rst $28                                       ; $4f71: $ef
    ret nz                                        ; $4f72: $c0

    inc c                                         ; $4f73: $0c
    jr @+$14                                      ; $4f74: $18 $12

jr_030_4f76:
    push af                                       ; $4f76: $f5
    ld a, $1e                                     ; $4f77: $3e $1e
    rst $18                                       ; $4f79: $df
    inc b                                         ; $4f7a: $04
    ld a, [bc]                                    ; $4f7b: $0a
    pop af                                        ; $4f7c: $f1
    ld hl, $0cd3                                  ; $4f7d: $21 $d3 $0c
    rst $18                                       ; $4f80: $df
    ld c, $0a                                     ; $4f81: $0e $0a
    ld a, $04                                     ; $4f83: $3e $04
    rst $18                                       ; $4f85: $df
    ld [$f00a], sp                                ; $4f86: $08 $0a $f0
    sub l                                         ; $4f89: $95
    ld b, a                                       ; $4f8a: $47
    ld a, $04                                     ; $4f8b: $3e $04
    ld de, $7dff                                  ; $4f8d: $11 $ff $7d
    rst $18                                       ; $4f90: $df
    jr @+$0c                                      ; $4f91: $18 $0a

    ld a, $04                                     ; $4f93: $3e $04
    ld b, $40                                     ; $4f95: $06 $40
    rst $18                                       ; $4f97: $df
    inc l                                         ; $4f98: $2c
    ld a, [bc]                                    ; $4f99: $0a
    ret                                           ; $4f9a: $c9


Call_030_4f9b:
    ld hl, $0d12                                  ; $4f9b: $21 $12 $0d
    rst $18                                       ; $4f9e: $df
    ld c, $0a                                     ; $4f9f: $0e $0a
    call Call_030_4fd1                            ; $4fa1: $cd $d1 $4f
    ret                                           ; $4fa4: $c9


Call_030_4fa5:
    rst $18                                       ; $4fa5: $df
    nop                                           ; $4fa6: $00
    ld a, [bc]                                    ; $4fa7: $0a
    ldh a, [$95]                                  ; $4fa8: $f0 $95
    ld b, a                                       ; $4faa: $47
    ld a, $04                                     ; $4fab: $3e $04
    ld de, $7d99                                  ; $4fad: $11 $99 $7d
    rst $18                                       ; $4fb0: $df
    jr @+$0c                                      ; $4fb1: $18 $0a

    ld a, [$c296]                                 ; $4fb3: $fa $96 $c2
    ld b, a                                       ; $4fb6: $47
    ld a, $04                                     ; $4fb7: $3e $04
    rst $18                                       ; $4fb9: $df
    ld l, $0a                                     ; $4fba: $2e $0a
    ld c, $04                                     ; $4fbc: $0e $04
    call Call_000_25af                            ; $4fbe: $cd $af $25
    call Call_000_2625                            ; $4fc1: $cd $25 $26
    ld hl, $0ccf                                  ; $4fc4: $21 $cf $0c
    rst $18                                       ; $4fc7: $df
    ld c, $0a                                     ; $4fc8: $0e $0a
    call Call_030_4fd1                            ; $4fca: $cd $d1 $4f
    rst $18                                       ; $4fcd: $df
    ld [bc], a                                    ; $4fce: $02
    ld a, [bc]                                    ; $4fcf: $0a
    ret                                           ; $4fd0: $c9


Call_030_4fd1:
    ld a, $04                                     ; $4fd1: $3e $04
    rst $18                                       ; $4fd3: $df
    ld a, [bc]                                    ; $4fd4: $0a
    ld a, [bc]                                    ; $4fd5: $0a
    rst $18                                       ; $4fd6: $df
    ld [de], a                                    ; $4fd7: $12
    ld a, [bc]                                    ; $4fd8: $0a
    rst $18                                       ; $4fd9: $df
    inc c                                         ; $4fda: $0c
    ld a, [bc]                                    ; $4fdb: $0a
    push af                                       ; $4fdc: $f5
    ld a, $05                                     ; $4fdd: $3e $05
    rst $18                                       ; $4fdf: $df
    inc b                                         ; $4fe0: $04
    ld a, [bc]                                    ; $4fe1: $0a
    pop af                                        ; $4fe2: $f1
    and a                                         ; $4fe3: $a7
    jr z, jr_030_5005                             ; $4fe4: $28 $1f

    ld hl, $0cd5                                  ; $4fe6: $21 $d5 $0c
    rst $18                                       ; $4fe9: $df
    ld c, $0a                                     ; $4fea: $0e $0a
    ld a, $04                                     ; $4fec: $3e $04
    rst $18                                       ; $4fee: $df
    ld [$f00a], sp                                ; $4fef: $08 $0a $f0
    sub l                                         ; $4ff2: $95
    ld b, a                                       ; $4ff3: $47
    ld a, $04                                     ; $4ff4: $3e $04
    ld de, $7e08                                  ; $4ff6: $11 $08 $7e
    rst $18                                       ; $4ff9: $df
    jr jr_030_5006                                ; $4ffa: $18 $0a

    ld a, $04                                     ; $4ffc: $3e $04
    ld b, $80                                     ; $4ffe: $06 $80
    rst $18                                       ; $5000: $df
    inc l                                         ; $5001: $2c
    ld a, [bc]                                    ; $5002: $0a
    jr jr_030_5064                                ; $5003: $18 $5f

jr_030_5005:
    rst $20                                       ; $5005: $e7

jr_030_5006:
    ret nz                                        ; $5006: $c0

    inc c                                         ; $5007: $0c
    rst $18                                       ; $5008: $df
    inc e                                         ; $5009: $1c
    db $10                                        ; $500a: $10
    rst $30                                       ; $500b: $f7
    and b                                         ; $500c: $a0
    inc d                                         ; $500d: $14
    jr nz, jr_030_5015                            ; $500e: $20 $05

    ld a, $0a                                     ; $5010: $3e $0a
    ld [$c82c], a                                 ; $5012: $ea $2c $c8

jr_030_5015:
    rst $18                                       ; $5015: $df
    inc h                                         ; $5016: $24
    db $10                                        ; $5017: $10
    ld a, $10                                     ; $5018: $3e $10
    ld b, a                                       ; $501a: $47
    ld a, $05                                     ; $501b: $3e $05
    ld c, a                                       ; $501d: $4f
    rst $18                                       ; $501e: $df
    ld c, [hl]                                    ; $501f: $4e
    ld a, [bc]                                    ; $5020: $0a
    ld a, $0c                                     ; $5021: $3e $0c
    ld [$c834], a                                 ; $5023: $ea $34 $c8
    ld bc, $8000                                  ; $5026: $01 $00 $80
    rst $18                                       ; $5029: $df
    ld e, $02                                     ; $502a: $1e $02
    ld bc, $ff01                                  ; $502c: $01 $01 $ff
    rst $18                                       ; $502f: $df
    ld e, $02                                     ; $5030: $1e $02
    ld hl, $070b                                  ; $5032: $21 $0b $07
    rst $18                                       ; $5035: $df
    db $10                                        ; $5036: $10
    db $10                                        ; $5037: $10
    ld a, $00                                     ; $5038: $3e $00
    rst $18                                       ; $503a: $df
    ld e, $10                                     ; $503b: $1e $10
    ld hl, $1ca0                                  ; $503d: $21 $a0 $1c
    ld de, $1fa0                                  ; $5040: $11 $a0 $1f
    rst $18                                       ; $5043: $df
    jr nz, jr_030_5056                            ; $5044: $20 $10

    ld e, $0d                                     ; $5046: $1e $0d
    ld bc, $eed0                                  ; $5048: $01 $d0 $ee
    rst $18                                       ; $504b: $df
    ld h, $10                                     ; $504c: $26 $10
    ld de, $c000                                  ; $504e: $11 $00 $c0
    rst $18                                       ; $5051: $df
    ld [hl+], a                                   ; $5052: $22
    db $10                                        ; $5053: $10
    ldh a, [$95]                                  ; $5054: $f0 $95

jr_030_5056:
    ld hl, $4ead                                  ; $5056: $21 $ad $4e
    rst $18                                       ; $5059: $df
    ld a, [de]                                    ; $505a: $1a
    db $10                                        ; $505b: $10
    ld a, $01                                     ; $505c: $3e $01
    rst $18                                       ; $505e: $df
    ld [de], a                                    ; $505f: $12
    db $10                                        ; $5060: $10
    rst $18                                       ; $5061: $df
    jr nc, jr_030_5074                            ; $5062: $30 $10

jr_030_5064:
    ret                                           ; $5064: $c9


    cp b                                          ; $5065: $b8
    ld d, b                                       ; $5066: $50
    db $e3                                        ; $5067: $e3
    ld d, b                                       ; $5068: $50
    ld [hl], e                                    ; $5069: $73
    ld d, b                                       ; $506a: $50
    inc e                                         ; $506b: $1c
    ld d, c                                       ; $506c: $51
    cp c                                          ; $506d: $b9
    ld d, d                                       ; $506e: $52
    jp nz, $cb52                                  ; $506f: $c2 $52 $cb

    ld d, d                                       ; $5072: $52
    sbc c                                         ; $5073: $99

jr_030_5074:
    ld a, l                                       ; $5074: $7d
    nop                                           ; $5075: $00
    add hl, de                                    ; $5076: $19
    nop                                           ; $5077: $00
    dec e                                         ; $5078: $1d
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    ld bc, $110a                                  ; $507d: $01 $0a $11
    ld a, [hl]                                    ; $5080: $7e
    nop                                           ; $5081: $00
    inc hl                                        ; $5082: $23
    nop                                           ; $5083: $00
    rra                                           ; $5084: $1f
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    ld bc, $ff16                                  ; $5089: $01 $16 $ff
    ld a, l                                       ; $508c: $7d
    nop                                           ; $508d: $00
    rra                                           ; $508e: $1f
    nop                                           ; $508f: $00
    rra                                           ; $5090: $1f
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    ld bc, $990d                                  ; $5095: $01 $0d $99
    ld a, l                                       ; $5098: $7d
    nop                                           ; $5099: $00
    ld hl, $1500                                  ; $509a: $21 $00 $15
    nop                                           ; $509d: $00
    nop                                           ; $509e: $00
    nop                                           ; $509f: $00
    ld b, b                                       ; $50a0: $40
    ld bc, $9916                                  ; $50a1: $01 $16 $99
    ld a, l                                       ; $50a4: $7d
    nop                                           ; $50a5: $00
    add hl, hl                                    ; $50a6: $29
    nop                                           ; $50a7: $00
    dec de                                        ; $50a8: $1b
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    ld bc, $0016                                  ; $50ad: $01 $16 $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    rst $38                                       ; $50b7: $ff
    ld bc, $00c0                                  ; $50b8: $01 $c0 $00
    inc de                                        ; $50bb: $13
    nop                                           ; $50bc: $00
    dec [hl]                                      ; $50bd: $35
    ld [bc], a                                    ; $50be: $02
    ret nz                                        ; $50bf: $c0

    nop                                           ; $50c0: $00
    inc hl                                        ; $50c1: $23
    nop                                           ; $50c2: $00
    ld hl, $c003                                  ; $50c3: $21 $03 $c0
    nop                                           ; $50c6: $00
    rra                                           ; $50c7: $1f
    nop                                           ; $50c8: $00
    ld hl, $c004                                  ; $50c9: $21 $04 $c0
    nop                                           ; $50cc: $00
    inc hl                                        ; $50cd: $23
    nop                                           ; $50ce: $00
    ld hl, $c005                                  ; $50cf: $21 $05 $c0
    nop                                           ; $50d2: $00
    rra                                           ; $50d3: $1f
    nop                                           ; $50d4: $00
    ld hl, $c006                                  ; $50d5: $21 $06 $c0
    nop                                           ; $50d8: $00
    inc hl                                        ; $50d9: $23
    nop                                           ; $50da: $00
    ld hl, $c007                                  ; $50db: $21 $07 $c0
    nop                                           ; $50de: $00
    rra                                           ; $50df: $1f
    nop                                           ; $50e0: $00
    ld hl, $01ff                                  ; $50e1: $21 $ff $01
    rst $38                                       ; $50e4: $ff
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    nop                                           ; $50e8: $00
    ld a, [bc]                                    ; $50e9: $0a
    inc b                                         ; $50ea: $04
    ld [bc], a                                    ; $50eb: $02
    rst $38                                       ; $50ec: $ff
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    nop                                           ; $50ef: $00
    nop                                           ; $50f0: $00
    inc de                                        ; $50f1: $13
    ld [bc], a                                    ; $50f2: $02
    inc bc                                        ; $50f3: $03
    rst $38                                       ; $50f4: $ff
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    inc de                                        ; $50f9: $13
    inc bc                                        ; $50fa: $03
    inc b                                         ; $50fb: $04
    rst $38                                       ; $50fc: $ff
    nop                                           ; $50fd: $00
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    inc de                                        ; $5101: $13
    inc b                                         ; $5102: $04
    dec b                                         ; $5103: $05
    rst $38                                       ; $5104: $ff
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    inc de                                        ; $5109: $13
    dec b                                         ; $510a: $05
    ld b, $ff                                     ; $510b: $06 $ff
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    nop                                           ; $5110: $00
    inc de                                        ; $5111: $13
    ld b, $07                                     ; $5112: $06 $07
    rst $38                                       ; $5114: $ff
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    inc de                                        ; $5119: $13
    rlca                                          ; $511a: $07
    rst $38                                       ; $511b: $ff
    ld [bc], a                                    ; $511c: $02
    rst $38                                       ; $511d: $ff
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    ld [hl], c                                    ; $5120: $71
    inc c                                         ; $5121: $0c
    inc bc                                        ; $5122: $03
    nop                                           ; $5123: $00
    inc bc                                        ; $5124: $03
    rst $38                                       ; $5125: $ff
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    and a                                         ; $5128: $a7
    ld d, c                                       ; $5129: $51
    dec bc                                        ; $512a: $0b
    nop                                           ; $512b: $00
    inc b                                         ; $512c: $04
    rst $38                                       ; $512d: $ff
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    jr nc, jr_030_5184                            ; $5130: $30 $52

    dec bc                                        ; $5132: $0b
    nop                                           ; $5133: $00
    dec b                                         ; $5134: $05
    rst $38                                       ; $5135: $ff
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    ld e, l                                       ; $5138: $5d
    ld d, c                                       ; $5139: $51
    inc bc                                        ; $513a: $03
    nop                                           ; $513b: $00
    ld b, $ff                                     ; $513c: $06 $ff
    nop                                           ; $513e: $00
    nop                                           ; $513f: $00
    ld [hl], a                                    ; $5140: $77
    inc c                                         ; $5141: $0c
    inc bc                                        ; $5142: $03
    nop                                           ; $5143: $00
    rst $38                                       ; $5144: $ff
    ld hl, $0d16                                  ; $5145: $21 $16 $0d
    rst $18                                       ; $5148: $df
    ld c, $0a                                     ; $5149: $0e $0a
    ld a, $03                                     ; $514b: $3e $03
    rst $18                                       ; $514d: $df
    ld [$c90a], sp                                ; $514e: $08 $0a $c9
    ld hl, $0d16                                  ; $5151: $21 $16 $0d
    rst $18                                       ; $5154: $df
    ld c, $0a                                     ; $5155: $0e $0a
    ld a, $04                                     ; $5157: $3e $04
    rst $18                                       ; $5159: $df
    ld [$c90a], sp                                ; $515a: $08 $0a $c9
    ld hl, $0c72                                  ; $515d: $21 $72 $0c
    rst $18                                       ; $5160: $df
    ld c, $0a                                     ; $5161: $0e $0a
    ld a, $06                                     ; $5163: $3e $06
    rst $18                                       ; $5165: $df
    ld a, [bc]                                    ; $5166: $0a
    ld a, [bc]                                    ; $5167: $0a
    rst $18                                       ; $5168: $df
    ld [de], a                                    ; $5169: $12
    ld a, [bc]                                    ; $516a: $0a
    rst $18                                       ; $516b: $df
    inc c                                         ; $516c: $0c
    ld a, [bc]                                    ; $516d: $0a
    push af                                       ; $516e: $f5
    ld a, $05                                     ; $516f: $3e $05
    rst $18                                       ; $5171: $df
    inc b                                         ; $5172: $04
    ld a, [bc]                                    ; $5173: $0a
    pop af                                        ; $5174: $f1
    and a                                         ; $5175: $a7
    jr nz, jr_030_517f                            ; $5176: $20 $07

    ld a, $06                                     ; $5178: $3e $06
    rst $18                                       ; $517a: $df
    ld [$180a], sp                                ; $517b: $08 $0a $18
    daa                                           ; $517e: $27

jr_030_517f:
    rst $18                                       ; $517f: $df
    db $10                                        ; $5180: $10
    ld a, [bc]                                    ; $5181: $0a
    ld a, $06                                     ; $5182: $3e $06

jr_030_5184:
    rst $18                                       ; $5184: $df
    ld a, [bc]                                    ; $5185: $0a
    ld a, [bc]                                    ; $5186: $0a
    rst $18                                       ; $5187: $df
    ld [de], a                                    ; $5188: $12
    ld a, [bc]                                    ; $5189: $0a
    rst $18                                       ; $518a: $df
    inc c                                         ; $518b: $0c
    ld a, [bc]                                    ; $518c: $0a
    push af                                       ; $518d: $f5
    ld a, $05                                     ; $518e: $3e $05
    rst $18                                       ; $5190: $df
    inc b                                         ; $5191: $04
    ld a, [bc]                                    ; $5192: $0a
    pop af                                        ; $5193: $f1
    and a                                         ; $5194: $a7
    jr nz, @+$09                                  ; $5195: $20 $07

    ld a, $06                                     ; $5197: $3e $06
    rst $18                                       ; $5199: $df
    ld [$180a], sp                                ; $519a: $08 $0a $18
    ld [$10df], sp                                ; $519d: $08 $df $10
    ld a, [bc]                                    ; $51a0: $0a
    ld a, $06                                     ; $51a1: $3e $06
    rst $18                                       ; $51a3: $df
    ld [$c90a], sp                                ; $51a4: $08 $0a $c9
    rst $30                                       ; $51a7: $f7
    and b                                         ; $51a8: $a0
    inc c                                         ; $51a9: $0c
    jr z, jr_030_51b0                             ; $51aa: $28 $04

    call Call_030_54e7                            ; $51ac: $cd $e7 $54
    ret                                           ; $51af: $c9


jr_030_51b0:
    ld hl, $0cd6                                  ; $51b0: $21 $d6 $0c
    rst $18                                       ; $51b3: $df
    ld c, $0a                                     ; $51b4: $0e $0a
    ld a, $03                                     ; $51b6: $3e $03
    rst $18                                       ; $51b8: $df
    ld a, [bc]                                    ; $51b9: $0a
    ld a, [bc]                                    ; $51ba: $0a
    rst $18                                       ; $51bb: $df
    ld [de], a                                    ; $51bc: $12
    ld a, [bc]                                    ; $51bd: $0a
    rst $18                                       ; $51be: $df
    inc c                                         ; $51bf: $0c
    ld a, [bc]                                    ; $51c0: $0a
    push af                                       ; $51c1: $f5
    ld a, $05                                     ; $51c2: $3e $05
    rst $18                                       ; $51c4: $df
    inc b                                         ; $51c5: $04
    ld a, [bc]                                    ; $51c6: $0a
    pop af                                        ; $51c7: $f1
    and a                                         ; $51c8: $a7
    jr z, jr_030_51d2                             ; $51c9: $28 $07

    ld a, $03                                     ; $51cb: $3e $03
    rst $18                                       ; $51cd: $df
    ld [$180a], sp                                ; $51ce: $08 $0a $18
    ld e, l                                       ; $51d1: $5d

jr_030_51d2:
    rst $18                                       ; $51d2: $df
    db $10                                        ; $51d3: $10
    ld a, [bc]                                    ; $51d4: $0a
    ld a, $03                                     ; $51d5: $3e $03
    rst $18                                       ; $51d7: $df
    ld [$df0a], sp                                ; $51d8: $08 $0a $df
    inc e                                         ; $51db: $1c
    db $10                                        ; $51dc: $10
    rst $18                                       ; $51dd: $df
    inc h                                         ; $51de: $24
    db $10                                        ; $51df: $10
    ld a, $13                                     ; $51e0: $3e $13
    ld b, a                                       ; $51e2: $47
    ld a, $02                                     ; $51e3: $3e $02
    ld c, a                                       ; $51e5: $4f
    rst $18                                       ; $51e6: $df
    ld c, [hl]                                    ; $51e7: $4e
    ld a, [bc]                                    ; $51e8: $0a
    ld a, $0c                                     ; $51e9: $3e $0c
    ld [$c834], a                                 ; $51eb: $ea $34 $c8
    ld hl, $535f                                  ; $51ee: $21 $5f $53
    ld de, $c600                                  ; $51f1: $11 $00 $c6
    ld c, $04                                     ; $51f4: $0e $04
    call Call_000_03eb                            ; $51f6: $cd $eb $03
    ld bc, $4f00                                  ; $51f9: $01 $00 $4f
    rst $18                                       ; $51fc: $df
    ld e, $02                                     ; $51fd: $1e $02
    ld bc, $ff01                                  ; $51ff: $01 $01 $ff
    rst $18                                       ; $5202: $df
    ld e, $02                                     ; $5203: $1e $02
    ld hl, $070e                                  ; $5205: $21 $0e $07
    rst $18                                       ; $5208: $df
    db $10                                        ; $5209: $10
    db $10                                        ; $520a: $10
    ld a, $00                                     ; $520b: $3e $00
    rst $18                                       ; $520d: $df
    ld e, $10                                     ; $520e: $1e $10
    ld hl, $2360                                  ; $5210: $21 $60 $23
    ld de, $1e80                                  ; $5213: $11 $80 $1e
    rst $18                                       ; $5216: $df
    jr nz, jr_030_5229                            ; $5217: $20 $10

    ld de, $c000                                  ; $5219: $11 $00 $c0
    rst $18                                       ; $521c: $df
    ld [hl+], a                                   ; $521d: $22
    db $10                                        ; $521e: $10
    ldh a, [$95]                                  ; $521f: $f0 $95
    ld hl, $536f                                  ; $5221: $21 $6f $53
    rst $18                                       ; $5224: $df
    ld a, [de]                                    ; $5225: $1a
    db $10                                        ; $5226: $10
    ld a, $01                                     ; $5227: $3e $01

jr_030_5229:
    rst $18                                       ; $5229: $df
    ld [de], a                                    ; $522a: $12
    db $10                                        ; $522b: $10
    rst $18                                       ; $522c: $df
    jr nc, jr_030_523f                            ; $522d: $30 $10

    ret                                           ; $522f: $c9


    rst $30                                       ; $5230: $f7
    ret nz                                        ; $5231: $c0

    inc c                                         ; $5232: $0c
    jr z, jr_030_5239                             ; $5233: $28 $04

    call Call_030_5733                            ; $5235: $cd $33 $57
    ret                                           ; $5238: $c9


jr_030_5239:
    ld hl, $0ce5                                  ; $5239: $21 $e5 $0c
    rst $18                                       ; $523c: $df
    ld c, $0a                                     ; $523d: $0e $0a

jr_030_523f:
    ld a, $04                                     ; $523f: $3e $04
    rst $18                                       ; $5241: $df
    ld a, [bc]                                    ; $5242: $0a
    ld a, [bc]                                    ; $5243: $0a
    rst $18                                       ; $5244: $df
    ld [de], a                                    ; $5245: $12
    ld a, [bc]                                    ; $5246: $0a
    rst $18                                       ; $5247: $df
    inc c                                         ; $5248: $0c
    ld a, [bc]                                    ; $5249: $0a
    push af                                       ; $524a: $f5
    ld a, $05                                     ; $524b: $3e $05
    rst $18                                       ; $524d: $df
    inc b                                         ; $524e: $04
    ld a, [bc]                                    ; $524f: $0a
    pop af                                        ; $5250: $f1
    and a                                         ; $5251: $a7
    jr z, jr_030_525b                             ; $5252: $28 $07

    ld a, $04                                     ; $5254: $3e $04
    rst $18                                       ; $5256: $df
    ld [$180a], sp                                ; $5257: $08 $0a $18
    ld e, l                                       ; $525a: $5d

jr_030_525b:
    rst $18                                       ; $525b: $df
    db $10                                        ; $525c: $10
    ld a, [bc]                                    ; $525d: $0a
    ld a, $04                                     ; $525e: $3e $04
    rst $18                                       ; $5260: $df
    ld [$df0a], sp                                ; $5261: $08 $0a $df
    inc e                                         ; $5264: $1c
    db $10                                        ; $5265: $10
    rst $18                                       ; $5266: $df
    inc h                                         ; $5267: $24
    db $10                                        ; $5268: $10
    ld a, $13                                     ; $5269: $3e $13
    ld b, a                                       ; $526b: $47
    ld a, $03                                     ; $526c: $3e $03
    ld c, a                                       ; $526e: $4f
    rst $18                                       ; $526f: $df
    ld c, [hl]                                    ; $5270: $4e
    ld a, [bc]                                    ; $5271: $0a
    ld a, $0c                                     ; $5272: $3e $0c
    ld [$c834], a                                 ; $5274: $ea $34 $c8
    ld hl, $55b1                                  ; $5277: $21 $b1 $55
    ld de, $c600                                  ; $527a: $11 $00 $c6
    ld c, $04                                     ; $527d: $0e $04
    call Call_000_03eb                            ; $527f: $cd $eb $03
    ld bc, $4e00                                  ; $5282: $01 $00 $4e
    rst $18                                       ; $5285: $df
    ld e, $02                                     ; $5286: $1e $02
    ld bc, $ff01                                  ; $5288: $01 $01 $ff
    rst $18                                       ; $528b: $df
    ld e, $02                                     ; $528c: $1e $02
    ld hl, $070e                                  ; $528e: $21 $0e $07
    rst $18                                       ; $5291: $df
    db $10                                        ; $5292: $10
    db $10                                        ; $5293: $10
    ld a, $00                                     ; $5294: $3e $00
    rst $18                                       ; $5296: $df
    ld e, $10                                     ; $5297: $1e $10
    ld hl, $1f60                                  ; $5299: $21 $60 $1f
    ld de, $1e40                                  ; $529c: $11 $40 $1e
    rst $18                                       ; $529f: $df
    jr nz, jr_030_52b2                            ; $52a0: $20 $10

    ld de, $c000                                  ; $52a2: $11 $00 $c0
    rst $18                                       ; $52a5: $df
    ld [hl+], a                                   ; $52a6: $22
    db $10                                        ; $52a7: $10
    ldh a, [$95]                                  ; $52a8: $f0 $95
    ld hl, $55c1                                  ; $52aa: $21 $c1 $55
    rst $18                                       ; $52ad: $df
    ld a, [de]                                    ; $52ae: $1a
    db $10                                        ; $52af: $10
    ld a, $01                                     ; $52b0: $3e $01

jr_030_52b2:
    rst $18                                       ; $52b2: $df
    ld [de], a                                    ; $52b3: $12
    db $10                                        ; $52b4: $10
    rst $18                                       ; $52b5: $df
    jr nc, jr_030_52c8                            ; $52b6: $30 $10

    ret                                           ; $52b8: $c9


    ld bc, $00ff                                  ; $52b9: $01 $ff $00
    nop                                           ; $52bc: $00
    di                                            ; $52bd: $f3
    ld a, l                                       ; $52be: $7d
    ld b, $00                                     ; $52bf: $06 $00
    rst $38                                       ; $52c1: $ff
    rrca                                          ; $52c2: $0f
    rst $38                                       ; $52c3: $ff
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    and $47                                       ; $52c6: $e6 $47

jr_030_52c8:
    ld bc, $ff00                                  ; $52c8: $01 $00 $ff
    ld a, [$c46a]                                 ; $52cb: $fa $6a $c4
    cp $01                                        ; $52ce: $fe $01
    jr z, jr_030_52da                             ; $52d0: $28 $08

    push af                                       ; $52d2: $f5
    xor a                                         ; $52d3: $af
    ld hl, $c4b4                                  ; $52d4: $21 $b4 $c4
    ld [hl+], a                                   ; $52d7: $22
    ld [hl+], a                                   ; $52d8: $22
    pop af                                        ; $52d9: $f1

jr_030_52da:
    cp $02                                        ; $52da: $fe $02
    jr nz, jr_030_52e4                            ; $52dc: $20 $06

    call Call_030_54f1                            ; $52de: $cd $f1 $54
    jp Jump_030_535e                              ; $52e1: $c3 $5e $53


jr_030_52e4:
    cp $03                                        ; $52e4: $fe $03
    jr nz, jr_030_52ee                            ; $52e6: $20 $06

    call Call_030_573d                            ; $52e8: $cd $3d $57
    jp Jump_030_535e                              ; $52eb: $c3 $5e $53


jr_030_52ee:
    cp $04                                        ; $52ee: $fe $04
    jr nz, jr_030_5320                            ; $52f0: $20 $2e

    call Call_030_545f                            ; $52f2: $cd $5f $54
    rst $30                                       ; $52f5: $f7
    ld b, b                                       ; $52f6: $40
    inc c                                         ; $52f7: $0c
    jr z, jr_030_535e                             ; $52f8: $28 $64

    rst $28                                       ; $52fa: $ef
    ld b, b                                       ; $52fb: $40
    inc c                                         ; $52fc: $0c
    rst $30                                       ; $52fd: $f7
    nop                                           ; $52fe: $00
    dec d                                         ; $52ff: $15
    jr nz, jr_030_535e                            ; $5300: $20 $5c

    call Call_000_2ed5                            ; $5302: $cd $d5 $2e
    ld e, $e7                                     ; $5305: $1e $e7
    nop                                           ; $5307: $00
    dec d                                         ; $5308: $15
    ld de, $002d                                  ; $5309: $11 $2d $00
    call Call_030_7e7f                            ; $530c: $cd $7f $7e
    ld b, $00                                     ; $530f: $06 $00
    ld c, $fa                                     ; $5311: $0e $fa
    rst $18                                       ; $5313: $df
    ld c, [hl]                                    ; $5314: $4e
    ld a, [bc]                                    ; $5315: $0a
    rst $18                                       ; $5316: $df
    inc [hl]                                      ; $5317: $34
    ld [bc], a                                    ; $5318: $02
    ld a, $06                                     ; $5319: $3e $06
    ld [$c441], a                                 ; $531b: $ea $41 $c4
    jr jr_030_535e                                ; $531e: $18 $3e

jr_030_5320:
    cp $05                                        ; $5320: $fe $05
    jr nz, jr_030_5352                            ; $5322: $20 $2e

    call Call_030_56ae                            ; $5324: $cd $ae $56
    rst $30                                       ; $5327: $f7
    ld b, b                                       ; $5328: $40
    inc c                                         ; $5329: $0c
    jr z, jr_030_535e                             ; $532a: $28 $32

    rst $28                                       ; $532c: $ef
    ld b, b                                       ; $532d: $40
    inc c                                         ; $532e: $0c
    rst $30                                       ; $532f: $f7
    jr nz, jr_030_5347                            ; $5330: $20 $15

    jr nz, jr_030_535e                            ; $5332: $20 $2a

    call Call_000_2ed5                            ; $5334: $cd $d5 $2e
    ld e, $e7                                     ; $5337: $1e $e7
    jr nz, jr_030_5350                            ; $5339: $20 $15

    ld de, $002d                                  ; $533b: $11 $2d $00
    call Call_030_7e7f                            ; $533e: $cd $7f $7e
    ld b, $00                                     ; $5341: $06 $00
    ld c, $fa                                     ; $5343: $0e $fa
    rst $18                                       ; $5345: $df
    ld c, [hl]                                    ; $5346: $4e

jr_030_5347:
    ld a, [bc]                                    ; $5347: $0a
    rst $18                                       ; $5348: $df
    inc [hl]                                      ; $5349: $34
    ld [bc], a                                    ; $534a: $02
    ld a, $07                                     ; $534b: $3e $07
    ld [$c441], a                                 ; $534d: $ea $41 $c4

jr_030_5350:
    jr jr_030_535e                                ; $5350: $18 $0c

jr_030_5352:
    cp $fa                                        ; $5352: $fe $fa
    jr nz, jr_030_535e                            ; $5354: $20 $08

    rst $30                                       ; $5356: $f7
    add b                                         ; $5357: $80
    inc c                                         ; $5358: $0c
    jr z, jr_030_535e                             ; $5359: $28 $03

    rst $28                                       ; $535b: $ef
    add b                                         ; $535c: $80
    inc c                                         ; $535d: $0c

Jump_030_535e:
jr_030_535e:
    ret                                           ; $535e: $c9


    nop                                           ; $535f: $00
    ld h, b                                       ; $5360: $60
    inc hl                                        ; $5361: $23
    nop                                           ; $5362: $00
    add b                                         ; $5363: $80
    ld e, $c0                                     ; $5364: $1e $c0
    and l                                         ; $5366: $a5
    inc c                                         ; $5367: $0c
    ld [bc], a                                    ; $5368: $02
    ld d, $00                                     ; $5369: $16 $00
    add c                                         ; $536b: $81
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    adc a                                         ; $536f: $8f
    ld d, e                                       ; $5370: $53
    ret                                           ; $5371: $c9


    ld d, e                                       ; $5372: $53
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    rst $18                                       ; $538f: $df
    ld a, [hl+]                                   ; $5390: $2a
    db $10                                        ; $5391: $10
    ld a, $03                                     ; $5392: $3e $03
    ld de, $0a03                                  ; $5394: $11 $03 $0a
    ld hl, $0cd9                                  ; $5397: $21 $d9 $0c
    rst $18                                       ; $539a: $df
    ld c, d                                       ; $539b: $4a
    dec b                                         ; $539c: $05
    ld a, $03                                     ; $539d: $3e $03
    ld de, $0a03                                  ; $539f: $11 $03 $0a
    ld hl, $0cda                                  ; $53a2: $21 $da $0c
    rst $18                                       ; $53a5: $df
    ld c, d                                       ; $53a6: $4a
    dec b                                         ; $53a7: $05
    ld a, $03                                     ; $53a8: $3e $03
    ld de, $0a03                                  ; $53aa: $11 $03 $0a
    ld hl, $0cdb                                  ; $53ad: $21 $db $0c
    rst $18                                       ; $53b0: $df
    ld c, d                                       ; $53b1: $4a
    dec b                                         ; $53b2: $05
    push af                                       ; $53b3: $f5
    ld a, $3c                                     ; $53b4: $3e $3c
    rst $18                                       ; $53b6: $df
    inc b                                         ; $53b7: $04
    ld a, [bc]                                    ; $53b8: $0a
    pop af                                        ; $53b9: $f1
    ld a, $03                                     ; $53ba: $3e $03
    ld de, $0a03                                  ; $53bc: $11 $03 $0a
    ld hl, $0cdc                                  ; $53bf: $21 $dc $0c
    rst $18                                       ; $53c2: $df
    ld c, d                                       ; $53c3: $4a
    dec b                                         ; $53c4: $05
    rst $18                                       ; $53c5: $df
    inc l                                         ; $53c6: $2c
    db $10                                        ; $53c7: $10
    ret                                           ; $53c8: $c9


    rst $18                                       ; $53c9: $df
    ld a, [hl+]                                   ; $53ca: $2a
    db $10                                        ; $53cb: $10
    ld a, $82                                     ; $53cc: $3e $82
    rst $18                                       ; $53ce: $df
    ld l, $10                                     ; $53cf: $2e $10
    rst $18                                       ; $53d1: $df
    inc l                                         ; $53d2: $2c
    db $10                                        ; $53d3: $10
    ret                                           ; $53d4: $c9


    push af                                       ; $53d5: $f5
    ld d, e                                       ; $53d6: $53
    dec e                                         ; $53d7: $1d
    ld d, h                                       ; $53d8: $54
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    rst $18                                       ; $53f5: $df
    ld a, [hl+]                                   ; $53f6: $2a
    db $10                                        ; $53f7: $10
    ld a, $03                                     ; $53f8: $3e $03
    ld de, $0a03                                  ; $53fa: $11 $03 $0a
    ld hl, $0cde                                  ; $53fd: $21 $de $0c
    rst $18                                       ; $5400: $df
    ld c, d                                       ; $5401: $4a
    dec b                                         ; $5402: $05
    ld a, $03                                     ; $5403: $3e $03
    ld de, $0a03                                  ; $5405: $11 $03 $0a
    ld hl, $0cdf                                  ; $5408: $21 $df $0c
    rst $18                                       ; $540b: $df
    ld c, d                                       ; $540c: $4a
    dec b                                         ; $540d: $05
    ld a, $03                                     ; $540e: $3e $03
    ld de, $0a03                                  ; $5410: $11 $03 $0a
    ld hl, $0ce0                                  ; $5413: $21 $e0 $0c
    rst $18                                       ; $5416: $df
    ld c, d                                       ; $5417: $4a
    dec b                                         ; $5418: $05
    rst $18                                       ; $5419: $df
    inc l                                         ; $541a: $2c
    db $10                                        ; $541b: $10
    ret                                           ; $541c: $c9


    rst $18                                       ; $541d: $df
    ld a, [hl+]                                   ; $541e: $2a
    db $10                                        ; $541f: $10
    ld a, [$c834]                                 ; $5420: $fa $34 $c8
    or a                                          ; $5423: $b7
    jr nz, jr_030_542d                            ; $5424: $20 $07

    ld a, $06                                     ; $5426: $3e $06
    ld [$c961], a                                 ; $5428: $ea $61 $c9
    jr jr_030_5456                                ; $542b: $18 $29

jr_030_542d:
    ld hl, $0060                                  ; $542d: $21 $60 $00
    call Call_030_7e2e                            ; $5430: $cd $2e $7e
    ld [$c968], a                                 ; $5433: $ea $68 $c9
    ldh a, [$96]                                  ; $5436: $f0 $96
    push af                                       ; $5438: $f5
    ld a, $06                                     ; $5439: $3e $06
    ldh [$96], a                                  ; $543b: $e0 $96
    ldh [rSVBK], a                                ; $543d: $e0 $70
    ld a, [$d68c]                                 ; $543f: $fa $8c $d6
    ld [$c969], a                                 ; $5442: $ea $69 $c9
    pop af                                        ; $5445: $f1
    ldh [$96], a                                  ; $5446: $e0 $96
    ldh [rSVBK], a                                ; $5448: $e0 $70
    rst $28                                       ; $544a: $ef
    ld h, b                                       ; $544b: $60
    inc c                                         ; $544c: $0c
    ld a, [$c8aa]                                 ; $544d: $fa $aa $c8
    or a                                          ; $5450: $b7
    jr z, jr_030_5456                             ; $5451: $28 $03

    rst $20                                       ; $5453: $e7
    ld h, b                                       ; $5454: $60
    inc c                                         ; $5455: $0c

jr_030_5456:
    ld a, $82                                     ; $5456: $3e $82
    rst $18                                       ; $5458: $df
    ld l, $10                                     ; $5459: $2e $10
    rst $18                                       ; $545b: $df
    inc l                                         ; $545c: $2c
    db $10                                        ; $545d: $10
    ret                                           ; $545e: $c9


Call_030_545f:
    rst $18                                       ; $545f: $df
    nop                                           ; $5460: $00
    ld a, [bc]                                    ; $5461: $0a
    ldh a, [$95]                                  ; $5462: $f0 $95
    ld b, a                                       ; $5464: $47
    ld a, $03                                     ; $5465: $3e $03
    ld de, $7d99                                  ; $5467: $11 $99 $7d
    rst $18                                       ; $546a: $df
    jr @+$0c                                      ; $546b: $18 $0a

    ld a, [$c296]                                 ; $546d: $fa $96 $c2
    ld b, a                                       ; $5470: $47
    ld a, $03                                     ; $5471: $3e $03
    rst $18                                       ; $5473: $df
    ld l, $0a                                     ; $5474: $2e $0a
    ld c, $08                                     ; $5476: $0e $08
    call Call_000_25af                            ; $5478: $cd $af $25
    call Call_000_2625                            ; $547b: $cd $25 $26
    push af                                       ; $547e: $f5
    ld a, $1e                                     ; $547f: $3e $1e
    rst $18                                       ; $5481: $df
    inc b                                         ; $5482: $04
    ld a, [bc]                                    ; $5483: $0a
    pop af                                        ; $5484: $f1
    ld a, [$c968]                                 ; $5485: $fa $68 $c9
    or a                                          ; $5488: $b7
    jr nz, jr_030_54b2                            ; $5489: $20 $27

    ld a, $03                                     ; $548b: $3e $03
    ld b, a                                       ; $548d: $47
    ld a, $07                                     ; $548e: $3e $07
    rst $18                                       ; $5490: $df
    ld [hl-], a                                   ; $5491: $32
    ld a, [bc]                                    ; $5492: $0a
    ld a, $03                                     ; $5493: $3e $03
    rst $18                                       ; $5495: $df
    inc [hl]                                      ; $5496: $34
    ld a, [bc]                                    ; $5497: $0a
    push af                                       ; $5498: $f5
    ld a, $1e                                     ; $5499: $3e $1e
    rst $18                                       ; $549b: $df
    inc b                                         ; $549c: $04
    ld a, [bc]                                    ; $549d: $0a
    pop af                                        ; $549e: $f1
    ld hl, $0ce3                                  ; $549f: $21 $e3 $0c
    rst $18                                       ; $54a2: $df
    ld c, $0a                                     ; $54a3: $0e $0a
    ld a, $03                                     ; $54a5: $3e $03
    rst $18                                       ; $54a7: $df
    ld [$e70a], sp                                ; $54a8: $08 $0a $e7
    ld b, b                                       ; $54ab: $40
    inc c                                         ; $54ac: $0c
    rst $28                                       ; $54ad: $ef
    and b                                         ; $54ae: $a0
    inc c                                         ; $54af: $0c
    jr @+$21                                      ; $54b0: $18 $1f

jr_030_54b2:
    ld a, [$c969]                                 ; $54b2: $fa $69 $c9
    bit 7, a                                      ; $54b5: $cb $7f
    jr z, jr_030_54c6                             ; $54b7: $28 $0d

    ld hl, $0ce1                                  ; $54b9: $21 $e1 $0c
    rst $18                                       ; $54bc: $df
    ld c, $0a                                     ; $54bd: $0e $0a
    ld a, $03                                     ; $54bf: $3e $03
    rst $18                                       ; $54c1: $df
    ld [$180a], sp                                ; $54c2: $08 $0a $18
    dec bc                                        ; $54c5: $0b

jr_030_54c6:
    ld hl, $0ce2                                  ; $54c6: $21 $e2 $0c
    rst $18                                       ; $54c9: $df
    ld c, $0a                                     ; $54ca: $0e $0a
    ld a, $03                                     ; $54cc: $3e $03
    rst $18                                       ; $54ce: $df
    ld [$f00a], sp                                ; $54cf: $08 $0a $f0
    sub l                                         ; $54d2: $95
    ld b, a                                       ; $54d3: $47
    ld a, $03                                     ; $54d4: $3e $03
    ld de, $7e11                                  ; $54d6: $11 $11 $7e
    rst $18                                       ; $54d9: $df
    jr jr_030_54e6                                ; $54da: $18 $0a

    ld a, $03                                     ; $54dc: $3e $03
    ld b, $00                                     ; $54de: $06 $00
    rst $18                                       ; $54e0: $df
    inc l                                         ; $54e1: $2c
    ld a, [bc]                                    ; $54e2: $0a
    rst $18                                       ; $54e3: $df
    ld [bc], a                                    ; $54e4: $02
    ld a, [bc]                                    ; $54e5: $0a

jr_030_54e6:
    ret                                           ; $54e6: $c9


Call_030_54e7:
    ld hl, $0d11                                  ; $54e7: $21 $11 $0d
    rst $18                                       ; $54ea: $df
    ld c, $0a                                     ; $54eb: $0e $0a
    call Call_030_551d                            ; $54ed: $cd $1d $55
    ret                                           ; $54f0: $c9


Call_030_54f1:
    rst $18                                       ; $54f1: $df
    nop                                           ; $54f2: $00
    ld a, [bc]                                    ; $54f3: $0a
    ldh a, [$95]                                  ; $54f4: $f0 $95
    ld b, a                                       ; $54f6: $47
    ld a, $03                                     ; $54f7: $3e $03
    ld de, $7d99                                  ; $54f9: $11 $99 $7d
    rst $18                                       ; $54fc: $df
    jr @+$0c                                      ; $54fd: $18 $0a

    ld a, [$c296]                                 ; $54ff: $fa $96 $c2
    ld b, a                                       ; $5502: $47
    ld a, $03                                     ; $5503: $3e $03
    rst $18                                       ; $5505: $df
    ld l, $0a                                     ; $5506: $2e $0a
    ld c, $04                                     ; $5508: $0e $04
    call Call_000_25af                            ; $550a: $cd $af $25
    call Call_000_2625                            ; $550d: $cd $25 $26
    ld hl, $0cdd                                  ; $5510: $21 $dd $0c
    rst $18                                       ; $5513: $df
    ld c, $0a                                     ; $5514: $0e $0a
    call Call_030_551d                            ; $5516: $cd $1d $55
    rst $18                                       ; $5519: $df
    ld [bc], a                                    ; $551a: $02
    ld a, [bc]                                    ; $551b: $0a
    ret                                           ; $551c: $c9


Call_030_551d:
    ld a, $03                                     ; $551d: $3e $03
    rst $18                                       ; $551f: $df
    ld a, [bc]                                    ; $5520: $0a
    ld a, [bc]                                    ; $5521: $0a
    rst $18                                       ; $5522: $df
    ld [de], a                                    ; $5523: $12
    ld a, [bc]                                    ; $5524: $0a
    rst $18                                       ; $5525: $df
    inc c                                         ; $5526: $0c
    ld a, [bc]                                    ; $5527: $0a
    push af                                       ; $5528: $f5
    ld a, $05                                     ; $5529: $3e $05
    rst $18                                       ; $552b: $df
    inc b                                         ; $552c: $04
    ld a, [bc]                                    ; $552d: $0a
    pop af                                        ; $552e: $f1
    and a                                         ; $552f: $a7
    jr z, jr_030_5551                             ; $5530: $28 $1f

    ld hl, $0ce4                                  ; $5532: $21 $e4 $0c
    rst $18                                       ; $5535: $df
    ld c, $0a                                     ; $5536: $0e $0a
    ld a, $03                                     ; $5538: $3e $03
    rst $18                                       ; $553a: $df
    ld [$f00a], sp                                ; $553b: $08 $0a $f0
    sub l                                         ; $553e: $95
    ld b, a                                       ; $553f: $47
    ld a, $03                                     ; $5540: $3e $03
    ld de, $7dff                                  ; $5542: $11 $ff $7d
    rst $18                                       ; $5545: $df
    jr jr_030_5552                                ; $5546: $18 $0a

    ld a, $03                                     ; $5548: $3e $03
    ld b, $00                                     ; $554a: $06 $00
    rst $18                                       ; $554c: $df
    inc l                                         ; $554d: $2c
    ld a, [bc]                                    ; $554e: $0a
    jr jr_030_55b0                                ; $554f: $18 $5f

jr_030_5551:
    rst $20                                       ; $5551: $e7

jr_030_5552:
    and b                                         ; $5552: $a0
    inc c                                         ; $5553: $0c
    rst $18                                       ; $5554: $df
    inc e                                         ; $5555: $1c
    db $10                                        ; $5556: $10
    rst $30                                       ; $5557: $f7
    nop                                           ; $5558: $00
    dec d                                         ; $5559: $15
    jr nz, jr_030_5561                            ; $555a: $20 $05

    ld a, $09                                     ; $555c: $3e $09
    ld [$c82c], a                                 ; $555e: $ea $2c $c8

jr_030_5561:
    rst $18                                       ; $5561: $df
    inc h                                         ; $5562: $24
    db $10                                        ; $5563: $10
    ld a, $13                                     ; $5564: $3e $13
    ld b, a                                       ; $5566: $47
    ld a, $04                                     ; $5567: $3e $04
    ld c, a                                       ; $5569: $4f
    rst $18                                       ; $556a: $df
    ld c, [hl]                                    ; $556b: $4e
    ld a, [bc]                                    ; $556c: $0a
    ld a, $0c                                     ; $556d: $3e $0c
    ld [$c834], a                                 ; $556f: $ea $34 $c8
    ld bc, $8000                                  ; $5572: $01 $00 $80
    rst $18                                       ; $5575: $df
    ld e, $02                                     ; $5576: $1e $02
    ld bc, $ff01                                  ; $5578: $01 $01 $ff
    rst $18                                       ; $557b: $df
    ld e, $02                                     ; $557c: $1e $02
    ld hl, $070e                                  ; $557e: $21 $0e $07
    rst $18                                       ; $5581: $df
    db $10                                        ; $5582: $10
    db $10                                        ; $5583: $10
    ld a, $00                                     ; $5584: $3e $00
    rst $18                                       ; $5586: $df
    ld e, $10                                     ; $5587: $1e $10
    ld hl, $2360                                  ; $5589: $21 $60 $23
    ld de, $1e80                                  ; $558c: $11 $80 $1e
    rst $18                                       ; $558f: $df
    jr nz, jr_030_55a2                            ; $5590: $20 $10

    ld e, $0c                                     ; $5592: $1e $0c
    ld bc, $a5c0                                  ; $5594: $01 $c0 $a5
    rst $18                                       ; $5597: $df
    ld h, $10                                     ; $5598: $26 $10
    ld de, $c000                                  ; $559a: $11 $00 $c0
    rst $18                                       ; $559d: $df
    ld [hl+], a                                   ; $559e: $22
    db $10                                        ; $559f: $10
    ldh a, [$95]                                  ; $55a0: $f0 $95

jr_030_55a2:
    ld hl, $53d5                                  ; $55a2: $21 $d5 $53
    rst $18                                       ; $55a5: $df
    ld a, [de]                                    ; $55a6: $1a
    db $10                                        ; $55a7: $10
    ld a, $01                                     ; $55a8: $3e $01
    rst $18                                       ; $55aa: $df
    ld [de], a                                    ; $55ab: $12
    db $10                                        ; $55ac: $10
    rst $18                                       ; $55ad: $df
    jr nc, jr_030_55c0                            ; $55ae: $30 $10

jr_030_55b0:
    ret                                           ; $55b0: $c9


    nop                                           ; $55b1: $00
    ld h, b                                       ; $55b2: $60
    rra                                           ; $55b3: $1f
    nop                                           ; $55b4: $00
    ld b, b                                       ; $55b5: $40
    ld e, $c0                                     ; $55b6: $1e $c0
    sbc $08                                       ; $55b8: $de $08
    ld [bc], a                                    ; $55ba: $02
    inc d                                         ; $55bb: $14
    nop                                           ; $55bc: $00
    ld bc, $0000                                  ; $55bd: $01 $00 $00

jr_030_55c0:
    nop                                           ; $55c0: $00
    pop hl                                        ; $55c1: $e1
    ld d, l                                       ; $55c2: $55
    dec de                                        ; $55c3: $1b
    ld d, [hl]                                    ; $55c4: $56
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    rst $18                                       ; $55e1: $df
    ld a, [hl+]                                   ; $55e2: $2a
    db $10                                        ; $55e3: $10
    ld a, $04                                     ; $55e4: $3e $04
    ld de, $0a03                                  ; $55e6: $11 $03 $0a
    ld hl, $0ce8                                  ; $55e9: $21 $e8 $0c
    rst $18                                       ; $55ec: $df
    ld c, d                                       ; $55ed: $4a
    dec b                                         ; $55ee: $05
    ld a, $04                                     ; $55ef: $3e $04
    ld de, $0a03                                  ; $55f1: $11 $03 $0a
    ld hl, $0ce9                                  ; $55f4: $21 $e9 $0c
    rst $18                                       ; $55f7: $df
    ld c, d                                       ; $55f8: $4a
    dec b                                         ; $55f9: $05
    ld a, $04                                     ; $55fa: $3e $04
    ld de, $0a03                                  ; $55fc: $11 $03 $0a
    ld hl, $0cea                                  ; $55ff: $21 $ea $0c
    rst $18                                       ; $5602: $df
    ld c, d                                       ; $5603: $4a
    dec b                                         ; $5604: $05
    push af                                       ; $5605: $f5
    ld a, $3c                                     ; $5606: $3e $3c
    rst $18                                       ; $5608: $df
    inc b                                         ; $5609: $04
    ld a, [bc]                                    ; $560a: $0a
    pop af                                        ; $560b: $f1
    ld a, $04                                     ; $560c: $3e $04
    ld de, $0a03                                  ; $560e: $11 $03 $0a
    ld hl, $0ceb                                  ; $5611: $21 $eb $0c
    rst $18                                       ; $5614: $df
    ld c, d                                       ; $5615: $4a
    dec b                                         ; $5616: $05
    rst $18                                       ; $5617: $df
    inc l                                         ; $5618: $2c
    db $10                                        ; $5619: $10
    ret                                           ; $561a: $c9


    rst $18                                       ; $561b: $df
    ld a, [hl+]                                   ; $561c: $2a
    db $10                                        ; $561d: $10
    ld a, $82                                     ; $561e: $3e $82
    rst $18                                       ; $5620: $df
    ld l, $10                                     ; $5621: $2e $10
    rst $18                                       ; $5623: $df
    inc l                                         ; $5624: $2c
    db $10                                        ; $5625: $10
    ret                                           ; $5626: $c9


    ld b, a                                       ; $5627: $47
    ld d, [hl]                                    ; $5628: $56
    ld l, a                                       ; $5629: $6f
    ld d, [hl]                                    ; $562a: $56
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    rst $18                                       ; $5647: $df
    ld a, [hl+]                                   ; $5648: $2a
    db $10                                        ; $5649: $10
    ld a, $04                                     ; $564a: $3e $04
    ld de, $0a03                                  ; $564c: $11 $03 $0a
    ld hl, $0ced                                  ; $564f: $21 $ed $0c
    rst $18                                       ; $5652: $df
    ld c, d                                       ; $5653: $4a
    dec b                                         ; $5654: $05
    ld a, $04                                     ; $5655: $3e $04
    ld de, $0a03                                  ; $5657: $11 $03 $0a
    ld hl, $0cee                                  ; $565a: $21 $ee $0c
    rst $18                                       ; $565d: $df
    ld c, d                                       ; $565e: $4a
    dec b                                         ; $565f: $05
    ld a, $04                                     ; $5660: $3e $04
    ld de, $0a03                                  ; $5662: $11 $03 $0a
    ld hl, $0cef                                  ; $5665: $21 $ef $0c
    rst $18                                       ; $5668: $df
    ld c, d                                       ; $5669: $4a
    dec b                                         ; $566a: $05
    rst $18                                       ; $566b: $df
    inc l                                         ; $566c: $2c
    db $10                                        ; $566d: $10
    ret                                           ; $566e: $c9


    rst $18                                       ; $566f: $df
    ld a, [hl+]                                   ; $5670: $2a
    db $10                                        ; $5671: $10
    ld a, [$c834]                                 ; $5672: $fa $34 $c8
    or a                                          ; $5675: $b7
    jr nz, jr_030_567f                            ; $5676: $20 $07

    ld a, $07                                     ; $5678: $3e $07
    ld [$c961], a                                 ; $567a: $ea $61 $c9
    jr jr_030_5694                                ; $567d: $18 $15

jr_030_567f:
    ld hl, $0060                                  ; $567f: $21 $60 $00
    call Call_030_7e2e                            ; $5682: $cd $2e $7e
    ld [$c968], a                                 ; $5685: $ea $68 $c9
    rst $28                                       ; $5688: $ef
    ld h, b                                       ; $5689: $60
    inc c                                         ; $568a: $0c
    ld a, [$c8aa]                                 ; $568b: $fa $aa $c8
    or a                                          ; $568e: $b7
    jr z, jr_030_5694                             ; $568f: $28 $03

    rst $20                                       ; $5691: $e7
    ld h, b                                       ; $5692: $60
    inc c                                         ; $5693: $0c

jr_030_5694:
    ld a, $06                                     ; $5694: $3e $06
    ldh [$96], a                                  ; $5696: $e0 $96
    ldh [rSVBK], a                                ; $5698: $e0 $70
    ld hl, $d680                                  ; $569a: $21 $80 $d6
    ld bc, $0008                                  ; $569d: $01 $08 $00
    add hl, bc                                    ; $56a0: $09
    ld a, [hl]                                    ; $56a1: $7e
    ld [$c969], a                                 ; $56a2: $ea $69 $c9
    ld a, $82                                     ; $56a5: $3e $82
    rst $18                                       ; $56a7: $df
    ld l, $10                                     ; $56a8: $2e $10
    rst $18                                       ; $56aa: $df
    inc l                                         ; $56ab: $2c
    db $10                                        ; $56ac: $10
    ret                                           ; $56ad: $c9


Call_030_56ae:
    rst $18                                       ; $56ae: $df
    nop                                           ; $56af: $00
    ld a, [bc]                                    ; $56b0: $0a
    ldh a, [$95]                                  ; $56b1: $f0 $95
    ld b, a                                       ; $56b3: $47
    ld a, $04                                     ; $56b4: $3e $04
    ld de, $7d99                                  ; $56b6: $11 $99 $7d
    rst $18                                       ; $56b9: $df
    jr @+$0c                                      ; $56ba: $18 $0a

    ld a, [$c296]                                 ; $56bc: $fa $96 $c2
    ld b, a                                       ; $56bf: $47
    ld a, $04                                     ; $56c0: $3e $04
    rst $18                                       ; $56c2: $df
    ld l, $0a                                     ; $56c3: $2e $0a
    ld c, $08                                     ; $56c5: $0e $08
    call Call_000_25af                            ; $56c7: $cd $af $25
    call Call_000_2625                            ; $56ca: $cd $25 $26
    push af                                       ; $56cd: $f5
    ld a, $1e                                     ; $56ce: $3e $1e
    rst $18                                       ; $56d0: $df
    inc b                                         ; $56d1: $04
    ld a, [bc]                                    ; $56d2: $0a
    pop af                                        ; $56d3: $f1
    ld a, [$c968]                                 ; $56d4: $fa $68 $c9
    or a                                          ; $56d7: $b7
    jr nz, jr_030_570e                            ; $56d8: $20 $34

    ld a, $04                                     ; $56da: $3e $04
    ld b, a                                       ; $56dc: $47
    ld a, $07                                     ; $56dd: $3e $07
    rst $18                                       ; $56df: $df
    ld [hl-], a                                   ; $56e0: $32
    ld a, [bc]                                    ; $56e1: $0a
    ld a, $04                                     ; $56e2: $3e $04
    rst $18                                       ; $56e4: $df
    inc [hl]                                      ; $56e5: $34
    ld a, [bc]                                    ; $56e6: $0a
    push af                                       ; $56e7: $f5
    ld a, $1e                                     ; $56e8: $3e $1e
    rst $18                                       ; $56ea: $df
    inc b                                         ; $56eb: $04
    ld a, [bc]                                    ; $56ec: $0a
    pop af                                        ; $56ed: $f1
    ld hl, $0cf1                                  ; $56ee: $21 $f1 $0c
    rst $18                                       ; $56f1: $df
    ld c, $0a                                     ; $56f2: $0e $0a
    ld a, [$c969]                                 ; $56f4: $fa $69 $c9
    cp $0d                                        ; $56f7: $fe $0d
    jr nz, jr_030_5701                            ; $56f9: $20 $06

    ld hl, $0cf3                                  ; $56fb: $21 $f3 $0c
    rst $18                                       ; $56fe: $df
    ld c, $0a                                     ; $56ff: $0e $0a

jr_030_5701:
    ld a, $04                                     ; $5701: $3e $04
    rst $18                                       ; $5703: $df
    ld [$e70a], sp                                ; $5704: $08 $0a $e7
    ld b, b                                       ; $5707: $40
    inc c                                         ; $5708: $0c
    rst $28                                       ; $5709: $ef
    ret nz                                        ; $570a: $c0

    inc c                                         ; $570b: $0c
    jr @+$14                                      ; $570c: $18 $12

jr_030_570e:
    push af                                       ; $570e: $f5
    ld a, $1e                                     ; $570f: $3e $1e
    rst $18                                       ; $5711: $df
    inc b                                         ; $5712: $04
    ld a, [bc]                                    ; $5713: $0a
    pop af                                        ; $5714: $f1
    ld hl, $0cf0                                  ; $5715: $21 $f0 $0c
    rst $18                                       ; $5718: $df
    ld c, $0a                                     ; $5719: $0e $0a
    ld a, $04                                     ; $571b: $3e $04
    rst $18                                       ; $571d: $df
    ld [$f00a], sp                                ; $571e: $08 $0a $f0
    sub l                                         ; $5721: $95
    ld b, a                                       ; $5722: $47
    ld a, $04                                     ; $5723: $3e $04
    ld de, $7dff                                  ; $5725: $11 $ff $7d
    rst $18                                       ; $5728: $df
    jr @+$0c                                      ; $5729: $18 $0a

    ld a, $04                                     ; $572b: $3e $04
    ld b, $00                                     ; $572d: $06 $00
    rst $18                                       ; $572f: $df
    inc l                                         ; $5730: $2c
    ld a, [bc]                                    ; $5731: $0a
    ret                                           ; $5732: $c9


Call_030_5733:
    ld hl, $0d12                                  ; $5733: $21 $12 $0d
    rst $18                                       ; $5736: $df
    ld c, $0a                                     ; $5737: $0e $0a
    call Call_030_5769                            ; $5739: $cd $69 $57
    ret                                           ; $573c: $c9


Call_030_573d:
    rst $18                                       ; $573d: $df
    nop                                           ; $573e: $00
    ld a, [bc]                                    ; $573f: $0a
    ldh a, [$95]                                  ; $5740: $f0 $95
    ld b, a                                       ; $5742: $47
    ld a, $04                                     ; $5743: $3e $04
    ld de, $7d99                                  ; $5745: $11 $99 $7d
    rst $18                                       ; $5748: $df
    jr @+$0c                                      ; $5749: $18 $0a

    ld a, [$c296]                                 ; $574b: $fa $96 $c2
    ld b, a                                       ; $574e: $47
    ld a, $04                                     ; $574f: $3e $04
    rst $18                                       ; $5751: $df
    ld l, $0a                                     ; $5752: $2e $0a
    ld c, $04                                     ; $5754: $0e $04
    call Call_000_25af                            ; $5756: $cd $af $25
    call Call_000_2625                            ; $5759: $cd $25 $26
    ld hl, $0cec                                  ; $575c: $21 $ec $0c
    rst $18                                       ; $575f: $df
    ld c, $0a                                     ; $5760: $0e $0a
    call Call_030_5769                            ; $5762: $cd $69 $57
    rst $18                                       ; $5765: $df
    ld [bc], a                                    ; $5766: $02
    ld a, [bc]                                    ; $5767: $0a
    ret                                           ; $5768: $c9


Call_030_5769:
    ld a, $04                                     ; $5769: $3e $04
    rst $18                                       ; $576b: $df
    ld a, [bc]                                    ; $576c: $0a
    ld a, [bc]                                    ; $576d: $0a
    rst $18                                       ; $576e: $df
    ld [de], a                                    ; $576f: $12
    ld a, [bc]                                    ; $5770: $0a
    rst $18                                       ; $5771: $df
    inc c                                         ; $5772: $0c
    ld a, [bc]                                    ; $5773: $0a
    push af                                       ; $5774: $f5
    ld a, $05                                     ; $5775: $3e $05
    rst $18                                       ; $5777: $df
    inc b                                         ; $5778: $04
    ld a, [bc]                                    ; $5779: $0a
    pop af                                        ; $577a: $f1
    and a                                         ; $577b: $a7
    jr z, jr_030_579d                             ; $577c: $28 $1f

    ld hl, $0cf2                                  ; $577e: $21 $f2 $0c
    rst $18                                       ; $5781: $df
    ld c, $0a                                     ; $5782: $0e $0a
    ld a, $04                                     ; $5784: $3e $04
    rst $18                                       ; $5786: $df
    ld [$f00a], sp                                ; $5787: $08 $0a $f0
    sub l                                         ; $578a: $95
    ld b, a                                       ; $578b: $47
    ld a, $04                                     ; $578c: $3e $04
    ld de, $7e08                                  ; $578e: $11 $08 $7e
    rst $18                                       ; $5791: $df
    jr jr_030_579e                                ; $5792: $18 $0a

    ld a, $04                                     ; $5794: $3e $04
    ld b, $00                                     ; $5796: $06 $00
    rst $18                                       ; $5798: $df
    inc l                                         ; $5799: $2c
    ld a, [bc]                                    ; $579a: $0a
    jr jr_030_57fc                                ; $579b: $18 $5f

jr_030_579d:
    rst $20                                       ; $579d: $e7

jr_030_579e:
    ret nz                                        ; $579e: $c0

    inc c                                         ; $579f: $0c
    rst $18                                       ; $57a0: $df
    inc e                                         ; $57a1: $1c
    db $10                                        ; $57a2: $10
    rst $30                                       ; $57a3: $f7
    jr nz, jr_030_57bb                            ; $57a4: $20 $15

    jr nz, jr_030_57ad                            ; $57a6: $20 $05

    ld a, $09                                     ; $57a8: $3e $09
    ld [$c82c], a                                 ; $57aa: $ea $2c $c8

jr_030_57ad:
    rst $18                                       ; $57ad: $df
    inc h                                         ; $57ae: $24
    db $10                                        ; $57af: $10
    ld a, $13                                     ; $57b0: $3e $13
    ld b, a                                       ; $57b2: $47
    ld a, $05                                     ; $57b3: $3e $05
    ld c, a                                       ; $57b5: $4f
    rst $18                                       ; $57b6: $df
    ld c, [hl]                                    ; $57b7: $4e
    ld a, [bc]                                    ; $57b8: $0a
    ld a, $0c                                     ; $57b9: $3e $0c

jr_030_57bb:
    ld [$c834], a                                 ; $57bb: $ea $34 $c8
    ld bc, $8000                                  ; $57be: $01 $00 $80
    rst $18                                       ; $57c1: $df
    ld e, $02                                     ; $57c2: $1e $02
    ld bc, $ff01                                  ; $57c4: $01 $01 $ff
    rst $18                                       ; $57c7: $df
    ld e, $02                                     ; $57c8: $1e $02
    ld hl, $070e                                  ; $57ca: $21 $0e $07
    rst $18                                       ; $57cd: $df
    db $10                                        ; $57ce: $10
    db $10                                        ; $57cf: $10
    ld a, $00                                     ; $57d0: $3e $00
    rst $18                                       ; $57d2: $df
    ld e, $10                                     ; $57d3: $1e $10
    ld hl, $1f60                                  ; $57d5: $21 $60 $1f
    ld de, $1e40                                  ; $57d8: $11 $40 $1e
    rst $18                                       ; $57db: $df
    jr nz, jr_030_57ee                            ; $57dc: $20 $10

    ld e, $08                                     ; $57de: $1e $08
    ld bc, $dec0                                  ; $57e0: $01 $c0 $de
    rst $18                                       ; $57e3: $df
    ld h, $10                                     ; $57e4: $26 $10
    ld de, $c000                                  ; $57e6: $11 $00 $c0
    rst $18                                       ; $57e9: $df
    ld [hl+], a                                   ; $57ea: $22
    db $10                                        ; $57eb: $10
    ldh a, [$95]                                  ; $57ec: $f0 $95

jr_030_57ee:
    ld hl, $5627                                  ; $57ee: $21 $27 $56
    rst $18                                       ; $57f1: $df
    ld a, [de]                                    ; $57f2: $1a
    db $10                                        ; $57f3: $10
    ld a, $01                                     ; $57f4: $3e $01
    rst $18                                       ; $57f6: $df
    ld [de], a                                    ; $57f7: $12
    db $10                                        ; $57f8: $10
    rst $18                                       ; $57f9: $df
    jr nc, jr_030_580c                            ; $57fa: $30 $10

jr_030_57fc:
    ret                                           ; $57fc: $c9


    ld d, b                                       ; $57fd: $50
    ld e, b                                       ; $57fe: $58
    ld a, e                                       ; $57ff: $7b
    ld e, b                                       ; $5800: $58
    dec bc                                        ; $5801: $0b
    ld e, b                                       ; $5802: $58
    sub h                                         ; $5803: $94
    ld e, b                                       ; $5804: $58
    ld l, d                                       ; $5805: $6a
    ld e, c                                       ; $5806: $59
    ld [hl], e                                    ; $5807: $73
    ld e, c                                       ; $5808: $59
    ld a, h                                       ; $5809: $7c
    ld e, c                                       ; $580a: $59
    sbc c                                         ; $580b: $99

jr_030_580c:
    ld a, l                                       ; $580c: $7d
    nop                                           ; $580d: $00
    jr nz, jr_030_5810                            ; $580e: $20 $00

jr_030_5810:
    ld a, [hl+]                                   ; $5810: $2a
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
    ret nz                                        ; $5814: $c0

    ld bc, $110a                                  ; $5815: $01 $0a $11
    ld a, [hl]                                    ; $5818: $7e
    nop                                           ; $5819: $00
    jr nz, jr_030_581c                            ; $581a: $20 $00

jr_030_581c:
    jr nz, jr_030_581e                            ; $581c: $20 $00

jr_030_581e:
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    add b                                         ; $5820: $80
    ld bc, $ff16                                  ; $5821: $01 $16 $ff
    ld a, l                                       ; $5824: $7d
    nop                                           ; $5825: $00
    dec e                                         ; $5826: $1d
    nop                                           ; $5827: $00
    inc hl                                        ; $5828: $23
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    ld b, b                                       ; $582c: $40
    ld bc, $990d                                  ; $582d: $01 $0d $99
    ld a, l                                       ; $5830: $7d
    nop                                           ; $5831: $00
    daa                                           ; $5832: $27
    nop                                           ; $5833: $00
    inc hl                                        ; $5834: $23
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    add b                                         ; $5838: $80
    ld bc, $a516                                  ; $5839: $01 $16 $a5
    ld a, l                                       ; $583c: $7d
    nop                                           ; $583d: $00
    dec de                                        ; $583e: $1b
    nop                                           ; $583f: $00
    dec e                                         ; $5840: $1d
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    ld b, b                                       ; $5844: $40
    ld bc, $0016                                  ; $5845: $01 $16 $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    rst $38                                       ; $584f: $ff
    ld bc, $00c0                                  ; $5850: $01 $c0 $00
    dec de                                        ; $5853: $1b
    nop                                           ; $5854: $00
    inc sp                                        ; $5855: $33
    ld [bc], a                                    ; $5856: $02
    add b                                         ; $5857: $80
    nop                                           ; $5858: $00
    ld [hl+], a                                   ; $5859: $22
    nop                                           ; $585a: $00
    jr nz, jr_030_5860                            ; $585b: $20 $03

    add b                                         ; $585d: $80
    nop                                           ; $585e: $00
    rra                                           ; $585f: $1f

jr_030_5860:
    nop                                           ; $5860: $00
    inc hl                                        ; $5861: $23
    inc b                                         ; $5862: $04
    add b                                         ; $5863: $80
    nop                                           ; $5864: $00
    ld [hl+], a                                   ; $5865: $22
    nop                                           ; $5866: $00
    jr nz, jr_030_586e                            ; $5867: $20 $05

    add b                                         ; $5869: $80
    nop                                           ; $586a: $00
    rra                                           ; $586b: $1f
    nop                                           ; $586c: $00
    inc hl                                        ; $586d: $23

jr_030_586e:
    ld b, $80                                     ; $586e: $06 $80
    nop                                           ; $5870: $00
    ld [hl+], a                                   ; $5871: $22
    nop                                           ; $5872: $00
    jr nz, @+$09                                  ; $5873: $20 $07

    add b                                         ; $5875: $80
    nop                                           ; $5876: $00
    rra                                           ; $5877: $1f
    nop                                           ; $5878: $00
    inc hl                                        ; $5879: $23
    rst $38                                       ; $587a: $ff
    ld bc, $00ff                                  ; $587b: $01 $ff $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    dec bc                                        ; $5881: $0b
    inc b                                         ; $5882: $04
    ld b, $ff                                     ; $5883: $06 $ff
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    ld d, $06                                     ; $5889: $16 $06
    rlca                                          ; $588b: $07
    rst $38                                       ; $588c: $ff
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    ld d, $07                                     ; $5891: $16 $07
    rst $38                                       ; $5893: $ff
    ld [bc], a                                    ; $5894: $02
    rst $38                                       ; $5895: $ff
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    ld a, b                                       ; $5898: $78
    inc c                                         ; $5899: $0c
    inc bc                                        ; $589a: $03
    nop                                           ; $589b: $00
    inc bc                                        ; $589c: $03
    rst $38                                       ; $589d: $ff
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    sub h                                         ; $58a0: $94
    ld e, d                                       ; $58a1: $5a
    dec bc                                        ; $58a2: $0b
    nop                                           ; $58a3: $00
    inc b                                         ; $58a4: $04
    rst $38                                       ; $58a5: $ff
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    dec hl                                        ; $58a8: $2b
    ld e, e                                       ; $58a9: $5b
    dec bc                                        ; $58aa: $0b
    nop                                           ; $58ab: $00
    dec b                                         ; $58ac: $05
    rst $38                                       ; $58ad: $ff
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    push de                                       ; $58b0: $d5
    ld e, b                                       ; $58b1: $58
    inc bc                                        ; $58b2: $03
    nop                                           ; $58b3: $00
    ld b, $ff                                     ; $58b4: $06 $ff
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    ld a, [hl]                                    ; $58b8: $7e
    inc c                                         ; $58b9: $0c
    inc bc                                        ; $58ba: $03
    nop                                           ; $58bb: $00
    rst $38                                       ; $58bc: $ff
    ld hl, $0d16                                  ; $58bd: $21 $16 $0d
    rst $18                                       ; $58c0: $df
    ld c, $0a                                     ; $58c1: $0e $0a
    ld a, $03                                     ; $58c3: $3e $03
    rst $18                                       ; $58c5: $df
    ld [$c90a], sp                                ; $58c6: $08 $0a $c9
    ld hl, $0d16                                  ; $58c9: $21 $16 $0d
    rst $18                                       ; $58cc: $df
    ld c, $0a                                     ; $58cd: $0e $0a
    ld a, $04                                     ; $58cf: $3e $04
    rst $18                                       ; $58d1: $df
    ld [$c90a], sp                                ; $58d2: $08 $0a $c9
    ld hl, $0c79                                  ; $58d5: $21 $79 $0c
    rst $18                                       ; $58d8: $df
    ld c, $0a                                     ; $58d9: $0e $0a
    ld a, $06                                     ; $58db: $3e $06
    rst $18                                       ; $58dd: $df
    ld a, [bc]                                    ; $58de: $0a
    ld a, [bc]                                    ; $58df: $0a
    rst $18                                       ; $58e0: $df
    ld [de], a                                    ; $58e1: $12
    ld a, [bc]                                    ; $58e2: $0a
    rst $18                                       ; $58e3: $df
    inc c                                         ; $58e4: $0c
    ld a, [bc]                                    ; $58e5: $0a
    push af                                       ; $58e6: $f5
    ld a, $05                                     ; $58e7: $3e $05
    rst $18                                       ; $58e9: $df
    inc b                                         ; $58ea: $04
    ld a, [bc]                                    ; $58eb: $0a
    pop af                                        ; $58ec: $f1
    and a                                         ; $58ed: $a7
    jr nz, @+$09                                  ; $58ee: $20 $07

jr_030_58f0:
    ld a, $06                                     ; $58f0: $3e $06
    rst $18                                       ; $58f2: $df
    ld [$180a], sp                                ; $58f3: $08 $0a $18
    jr nz, @-$1f                                  ; $58f6: $20 $df

    db $10                                        ; $58f8: $10
    ld a, [bc]                                    ; $58f9: $0a
    ld a, $06                                     ; $58fa: $3e $06
    rst $18                                       ; $58fc: $df
    ld a, [bc]                                    ; $58fd: $0a
    ld a, [bc]                                    ; $58fe: $0a
    rst $18                                       ; $58ff: $df
    ld [de], a                                    ; $5900: $12
    ld a, [bc]                                    ; $5901: $0a
    rst $18                                       ; $5902: $df
    inc c                                         ; $5903: $0c
    ld a, [bc]                                    ; $5904: $0a
    push af                                       ; $5905: $f5
    ld a, $05                                     ; $5906: $3e $05
    rst $18                                       ; $5908: $df
    inc b                                         ; $5909: $04
    ld a, [bc]                                    ; $590a: $0a
    pop af                                        ; $590b: $f1
    and a                                         ; $590c: $a7
    jr nz, jr_030_58f0                            ; $590d: $20 $e1

    rst $18                                       ; $590f: $df
    db $10                                        ; $5910: $10
    ld a, [bc]                                    ; $5911: $0a
    ld a, $06                                     ; $5912: $3e $06
    rst $18                                       ; $5914: $df
    ld [$c90a], sp                                ; $5915: $08 $0a $c9
    ld [bc], a                                    ; $5918: $02
    rst $38                                       ; $5919: $ff
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    ld a, a                                       ; $591c: $7f
    inc c                                         ; $591d: $0c
    inc bc                                        ; $591e: $03
    nop                                           ; $591f: $00
    inc bc                                        ; $5920: $03
    rst $38                                       ; $5921: $ff
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    sub h                                         ; $5924: $94
    ld e, d                                       ; $5925: $5a
    dec bc                                        ; $5926: $0b
    nop                                           ; $5927: $00
    inc b                                         ; $5928: $04
    rst $38                                       ; $5929: $ff
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    dec hl                                        ; $592c: $2b
    ld e, e                                       ; $592d: $5b
    dec bc                                        ; $592e: $0b
    nop                                           ; $592f: $00
    dec b                                         ; $5930: $05
    rst $38                                       ; $5931: $ff
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    add b                                         ; $5934: $80
    inc c                                         ; $5935: $0c
    inc bc                                        ; $5936: $03
    nop                                           ; $5937: $00
    ld b, $ff                                     ; $5938: $06 $ff
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    add c                                         ; $593c: $81
    inc c                                         ; $593d: $0c
    inc bc                                        ; $593e: $03
    nop                                           ; $593f: $00
    rst $38                                       ; $5940: $ff
    ld [bc], a                                    ; $5941: $02
    rst $38                                       ; $5942: $ff
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    sub d                                         ; $5945: $92
    inc c                                         ; $5946: $0c
    inc bc                                        ; $5947: $03
    nop                                           ; $5948: $00
    inc bc                                        ; $5949: $03
    rst $38                                       ; $594a: $ff
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    sub h                                         ; $594d: $94
    ld e, d                                       ; $594e: $5a
    dec bc                                        ; $594f: $0b
    nop                                           ; $5950: $00
    inc b                                         ; $5951: $04
    rst $38                                       ; $5952: $ff
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    dec hl                                        ; $5955: $2b
    ld e, e                                       ; $5956: $5b
    dec bc                                        ; $5957: $0b
    nop                                           ; $5958: $00
    dec b                                         ; $5959: $05
    rst $38                                       ; $595a: $ff
    nop                                           ; $595b: $00
    nop                                           ; $595c: $00
    sub e                                         ; $595d: $93
    inc c                                         ; $595e: $0c
    inc bc                                        ; $595f: $03
    nop                                           ; $5960: $00
    ld b, $ff                                     ; $5961: $06 $ff
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    sub h                                         ; $5965: $94
    inc c                                         ; $5966: $0c
    inc bc                                        ; $5967: $03
    nop                                           ; $5968: $00
    rst $38                                       ; $5969: $ff
    ld bc, $00ff                                  ; $596a: $01 $ff $00
    nop                                           ; $596d: $00
    di                                            ; $596e: $f3
    ld a, l                                       ; $596f: $7d
    ld b, $00                                     ; $5970: $06 $00
    rst $38                                       ; $5972: $ff
    rrca                                          ; $5973: $0f
    rst $38                                       ; $5974: $ff
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    and $47                                       ; $5977: $e6 $47
    ld bc, $ff00                                  ; $5979: $01 $00 $ff
    call Call_030_6414                            ; $597c: $cd $14 $64
    rst $30                                       ; $597f: $f7
    ld h, b                                       ; $5980: $60
    ld de, $0b28                                  ; $5981: $11 $28 $0b
    ld hl, $5941                                  ; $5984: $21 $41 $59
    ld de, $000c                                  ; $5987: $11 $0c $00
    rst $18                                       ; $598a: $df
    ld c, h                                       ; $598b: $4c
    ld a, [bc]                                    ; $598c: $0a
    jr jr_030_599d                                ; $598d: $18 $0e

    rst $30                                       ; $598f: $f7
    ld h, b                                       ; $5990: $60
    ld c, $28                                     ; $5991: $0e $28
    add hl, bc                                    ; $5993: $09
    ld hl, $5918                                  ; $5994: $21 $18 $59
    ld de, $000c                                  ; $5997: $11 $0c $00
    rst $18                                       ; $599a: $df
    ld c, h                                       ; $599b: $4c
    ld a, [bc]                                    ; $599c: $0a

jr_030_599d:
    ld a, [$c46a]                                 ; $599d: $fa $6a $c4
    cp $01                                        ; $59a0: $fe $01
    jr z, jr_030_59ac                             ; $59a2: $28 $08

    push af                                       ; $59a4: $f5
    xor a                                         ; $59a5: $af
    ld hl, $c4b4                                  ; $59a6: $21 $b4 $c4
    ld [hl+], a                                   ; $59a9: $22
    ld [hl+], a                                   ; $59aa: $22
    pop af                                        ; $59ab: $f1

jr_030_59ac:
    cp $02                                        ; $59ac: $fe $02
    jr nz, jr_030_59b6                            ; $59ae: $20 $06

    call Call_030_5d54                            ; $59b0: $cd $54 $5d
    jp Jump_030_5a93                              ; $59b3: $c3 $93 $5a


jr_030_59b6:
    cp $03                                        ; $59b6: $fe $03
    jr nz, jr_030_59c0                            ; $59b8: $20 $06

    call Call_030_5f7a                            ; $59ba: $cd $7a $5f
    jp Jump_030_5a93                              ; $59bd: $c3 $93 $5a


jr_030_59c0:
    cp $04                                        ; $59c0: $fe $04
    jr nz, jr_030_5a2a                            ; $59c2: $20 $66

    rst $30                                       ; $59c4: $f7
    nop                                           ; $59c5: $00
    inc e                                         ; $59c6: $1c
    jr z, jr_030_59fa                             ; $59c7: $28 $31

    call Call_030_60da                            ; $59c9: $cd $da $60
    rst $30                                       ; $59cc: $f7
    ld b, b                                       ; $59cd: $40
    inc c                                         ; $59ce: $0c
    jp z, Jump_030_5a93                           ; $59cf: $ca $93 $5a

    rst $28                                       ; $59d2: $ef
    ld b, b                                       ; $59d3: $40
    inc c                                         ; $59d4: $0c
    rst $30                                       ; $59d5: $f7
    add b                                         ; $59d6: $80
    dec de                                        ; $59d7: $1b
    jp nz, Jump_030_5a93                          ; $59d8: $c2 $93 $5a

    call Call_000_2ed5                            ; $59db: $cd $d5 $2e
    ld e, $e7                                     ; $59de: $1e $e7
    add b                                         ; $59e0: $80
    dec de                                        ; $59e1: $1b
    ld de, $0032                                  ; $59e2: $11 $32 $00
    call Call_030_7e7f                            ; $59e5: $cd $7f $7e
    ld b, $00                                     ; $59e8: $06 $00
    ld c, $fa                                     ; $59ea: $0e $fa
    rst $18                                       ; $59ec: $df
    ld c, [hl]                                    ; $59ed: $4e
    ld a, [bc]                                    ; $59ee: $0a
    rst $18                                       ; $59ef: $df
    inc [hl]                                      ; $59f0: $34
    ld [bc], a                                    ; $59f1: $02
    ld a, $06                                     ; $59f2: $3e $06
    ld [$c441], a                                 ; $59f4: $ea $41 $c4
    jp Jump_030_5a93                              ; $59f7: $c3 $93 $5a


jr_030_59fa:
    call Call_030_5cc2                            ; $59fa: $cd $c2 $5c
    rst $30                                       ; $59fd: $f7
    ld b, b                                       ; $59fe: $40
    inc c                                         ; $59ff: $0c
    jp z, Jump_030_5a93                           ; $5a00: $ca $93 $5a

    rst $28                                       ; $5a03: $ef
    ld b, b                                       ; $5a04: $40
    inc c                                         ; $5a05: $0c
    rst $30                                       ; $5a06: $f7
    add b                                         ; $5a07: $80
    dec d                                         ; $5a08: $15
    jp nz, Jump_030_5a93                          ; $5a09: $c2 $93 $5a

    call Call_000_2ed5                            ; $5a0c: $cd $d5 $2e
    ld e, $e7                                     ; $5a0f: $1e $e7
    add b                                         ; $5a11: $80

Call_030_5a12:
    dec d                                         ; $5a12: $15
    ld de, $0032                                  ; $5a13: $11 $32 $00
    call Call_030_7e7f                            ; $5a16: $cd $7f $7e
    ld b, $00                                     ; $5a19: $06 $00
    ld c, $fa                                     ; $5a1b: $0e $fa
    rst $18                                       ; $5a1d: $df
    ld c, [hl]                                    ; $5a1e: $4e
    ld a, [bc]                                    ; $5a1f: $0a
    rst $18                                       ; $5a20: $df
    inc [hl]                                      ; $5a21: $34
    ld [bc], a                                    ; $5a22: $02
    ld a, $06                                     ; $5a23: $3e $06
    ld [$c441], a                                 ; $5a25: $ea $41 $c4
    jr jr_030_5a93                                ; $5a28: $18 $69

jr_030_5a2a:
    cp $05                                        ; $5a2a: $fe $05
    jr nz, jr_030_5a87                            ; $5a2c: $20 $59

    rst $30                                       ; $5a2e: $f7
    jr nz, @+$1e                                  ; $5a2f: $20 $1c

    jr z, jr_030_5a5d                             ; $5a31: $28 $2a

    call Call_030_62cb                            ; $5a33: $cd $cb $62
    rst $30                                       ; $5a36: $f7
    ld b, b                                       ; $5a37: $40
    inc c                                         ; $5a38: $0c
    jr z, jr_030_5a93                             ; $5a39: $28 $58

    rst $28                                       ; $5a3b: $ef
    ld b, b                                       ; $5a3c: $40
    inc c                                         ; $5a3d: $0c
    rst $30                                       ; $5a3e: $f7
    and b                                         ; $5a3f: $a0
    dec de                                        ; $5a40: $1b
    jr nz, jr_030_5a93                            ; $5a41: $20 $50

    rst $20                                       ; $5a43: $e7
    and b                                         ; $5a44: $a0
    dec de                                        ; $5a45: $1b
    ld de, $0032                                  ; $5a46: $11 $32 $00
    call Call_030_7e7f                            ; $5a49: $cd $7f $7e
    ld b, $00                                     ; $5a4c: $06 $00
    ld c, $fa                                     ; $5a4e: $0e $fa
    rst $18                                       ; $5a50: $df
    ld c, [hl]                                    ; $5a51: $4e
    ld a, [bc]                                    ; $5a52: $0a
    rst $18                                       ; $5a53: $df
    inc [hl]                                      ; $5a54: $34
    ld [bc], a                                    ; $5a55: $02
    ld a, $07                                     ; $5a56: $3e $07
    ld [$c441], a                                 ; $5a58: $ea $41 $c4
    jr jr_030_5a93                                ; $5a5b: $18 $36

jr_030_5a5d:
    call Call_030_5ef8                            ; $5a5d: $cd $f8 $5e
    rst $30                                       ; $5a60: $f7
    ld b, b                                       ; $5a61: $40
    inc c                                         ; $5a62: $0c
    jr z, jr_030_5a93                             ; $5a63: $28 $2e

    rst $28                                       ; $5a65: $ef
    ld b, b                                       ; $5a66: $40
    inc c                                         ; $5a67: $0c
    rst $30                                       ; $5a68: $f7
    and b                                         ; $5a69: $a0
    dec d                                         ; $5a6a: $15
    jr nz, jr_030_5a93                            ; $5a6b: $20 $26

    rst $20                                       ; $5a6d: $e7
    and b                                         ; $5a6e: $a0
    dec d                                         ; $5a6f: $15
    ld de, $0032                                  ; $5a70: $11 $32 $00
    call Call_030_7e7f                            ; $5a73: $cd $7f $7e
    ld b, $00                                     ; $5a76: $06 $00
    ld c, $fa                                     ; $5a78: $0e $fa
    rst $18                                       ; $5a7a: $df
    ld c, [hl]                                    ; $5a7b: $4e
    ld a, [bc]                                    ; $5a7c: $0a
    rst $18                                       ; $5a7d: $df
    inc [hl]                                      ; $5a7e: $34
    ld [bc], a                                    ; $5a7f: $02
    ld a, $07                                     ; $5a80: $3e $07
    ld [$c441], a                                 ; $5a82: $ea $41 $c4
    jr jr_030_5a93                                ; $5a85: $18 $0c

jr_030_5a87:
    cp $fa                                        ; $5a87: $fe $fa
    jr nz, jr_030_5a93                            ; $5a89: $20 $08

    rst $30                                       ; $5a8b: $f7
    add b                                         ; $5a8c: $80
    inc c                                         ; $5a8d: $0c
    jr z, jr_030_5a93                             ; $5a8e: $28 $03

    rst $28                                       ; $5a90: $ef
    add b                                         ; $5a91: $80
    inc c                                         ; $5a92: $0c

Jump_030_5a93:
jr_030_5a93:
    ret                                           ; $5a93: $c9


    rst $30                                       ; $5a94: $f7
    nop                                           ; $5a95: $00
    inc e                                         ; $5a96: $1c
    jr z, jr_030_5a9d                             ; $5a97: $28 $04

    call Call_030_6159                            ; $5a99: $cd $59 $61
    ret                                           ; $5a9c: $c9


jr_030_5a9d:
    rst $30                                       ; $5a9d: $f7
    and b                                         ; $5a9e: $a0
    inc c                                         ; $5a9f: $0c
    jr z, jr_030_5aa6                             ; $5aa0: $28 $04

    call Call_030_5d4a                            ; $5aa2: $cd $4a $5d
    ret                                           ; $5aa5: $c9


jr_030_5aa6:
    ld hl, $0cf4                                  ; $5aa6: $21 $f4 $0c
    rst $18                                       ; $5aa9: $df
    ld c, $0a                                     ; $5aaa: $0e $0a
    ld a, $03                                     ; $5aac: $3e $03
    rst $18                                       ; $5aae: $df
    ld a, [bc]                                    ; $5aaf: $0a
    ld a, [bc]                                    ; $5ab0: $0a
    rst $18                                       ; $5ab1: $df
    ld [de], a                                    ; $5ab2: $12
    ld a, [bc]                                    ; $5ab3: $0a
    rst $18                                       ; $5ab4: $df
    inc c                                         ; $5ab5: $0c
    ld a, [bc]                                    ; $5ab6: $0a
    push af                                       ; $5ab7: $f5
    ld a, $05                                     ; $5ab8: $3e $05
    rst $18                                       ; $5aba: $df
    inc b                                         ; $5abb: $04
    ld a, [bc]                                    ; $5abc: $0a
    pop af                                        ; $5abd: $f1
    and a                                         ; $5abe: $a7
    jr z, jr_030_5ac8                             ; $5abf: $28 $07

    ld a, $03                                     ; $5ac1: $3e $03
    rst $18                                       ; $5ac3: $df
    ld [$180a], sp                                ; $5ac4: $08 $0a $18
    ld h, d                                       ; $5ac7: $62

jr_030_5ac8:
    rst $18                                       ; $5ac8: $df
    db $10                                        ; $5ac9: $10
    ld a, [bc]                                    ; $5aca: $0a
    ld a, $03                                     ; $5acb: $3e $03
    rst $18                                       ; $5acd: $df
    ld [$df0a], sp                                ; $5ace: $08 $0a $df
    inc e                                         ; $5ad1: $1c
    db $10                                        ; $5ad2: $10
    ld a, $07                                     ; $5ad3: $3e $07
    ld [$c82c], a                                 ; $5ad5: $ea $2c $c8
    rst $18                                       ; $5ad8: $df
    inc h                                         ; $5ad9: $24
    db $10                                        ; $5ada: $10
    ld a, $16                                     ; $5adb: $3e $16
    ld b, a                                       ; $5add: $47
    ld a, $02                                     ; $5ade: $3e $02
    ld c, a                                       ; $5ae0: $4f
    rst $18                                       ; $5ae1: $df
    ld c, [hl]                                    ; $5ae2: $4e
    ld a, [bc]                                    ; $5ae3: $0a
    ld a, $0c                                     ; $5ae4: $3e $0c
    ld [$c834], a                                 ; $5ae6: $ea $34 $c8
    ld hl, $5bc2                                  ; $5ae9: $21 $c2 $5b
    ld de, $c600                                  ; $5aec: $11 $00 $c6
    ld c, $04                                     ; $5aef: $0e $04
    call Call_000_03eb                            ; $5af1: $cd $eb $03
    ld bc, $4f00                                  ; $5af4: $01 $00 $4f
    rst $18                                       ; $5af7: $df
    ld e, $02                                     ; $5af8: $1e $02
    ld bc, $ff01                                  ; $5afa: $01 $01 $ff
    rst $18                                       ; $5afd: $df
    ld e, $02                                     ; $5afe: $1e $02
    ld hl, $0711                                  ; $5b00: $21 $11 $07
    rst $18                                       ; $5b03: $df
    db $10                                        ; $5b04: $10
    db $10                                        ; $5b05: $10
    ld a, $00                                     ; $5b06: $3e $00
    rst $18                                       ; $5b08: $df
    ld e, $10                                     ; $5b09: $1e $10
    ld hl, $1ec0                                  ; $5b0b: $21 $c0 $1e
    ld de, $2060                                  ; $5b0e: $11 $60 $20
    rst $18                                       ; $5b11: $df
    jr nz, jr_030_5b24                            ; $5b12: $20 $10

    ld de, $c000                                  ; $5b14: $11 $00 $c0
    rst $18                                       ; $5b17: $df
    ld [hl+], a                                   ; $5b18: $22
    db $10                                        ; $5b19: $10
    ldh a, [$95]                                  ; $5b1a: $f0 $95
    ld hl, $5bd2                                  ; $5b1c: $21 $d2 $5b
    rst $18                                       ; $5b1f: $df
    ld a, [de]                                    ; $5b20: $1a
    db $10                                        ; $5b21: $10
    ld a, $01                                     ; $5b22: $3e $01

jr_030_5b24:
    rst $18                                       ; $5b24: $df
    ld [de], a                                    ; $5b25: $12
    db $10                                        ; $5b26: $10
    rst $18                                       ; $5b27: $df
    jr nc, @+$12                                  ; $5b28: $30 $10

    ret                                           ; $5b2a: $c9


    rst $30                                       ; $5b2b: $f7
    jr nz, jr_030_5b4a                            ; $5b2c: $20 $1c

    jr z, jr_030_5b34                             ; $5b2e: $28 $04

    call Call_030_634a                            ; $5b30: $cd $4a $63
    ret                                           ; $5b33: $c9


jr_030_5b34:
    rst $30                                       ; $5b34: $f7
    ret nz                                        ; $5b35: $c0

    inc c                                         ; $5b36: $0c
    jr z, jr_030_5b3d                             ; $5b37: $28 $04

    call Call_030_5f70                            ; $5b39: $cd $70 $5f
    ret                                           ; $5b3c: $c9


jr_030_5b3d:
    ld hl, $0d03                                  ; $5b3d: $21 $03 $0d
    rst $18                                       ; $5b40: $df
    ld c, $0a                                     ; $5b41: $0e $0a
    ld a, $04                                     ; $5b43: $3e $04
    rst $18                                       ; $5b45: $df
    ld a, [bc]                                    ; $5b46: $0a
    ld a, [bc]                                    ; $5b47: $0a
    rst $18                                       ; $5b48: $df
    ld [de], a                                    ; $5b49: $12

jr_030_5b4a:
    ld a, [bc]                                    ; $5b4a: $0a
    rst $18                                       ; $5b4b: $df
    inc c                                         ; $5b4c: $0c
    ld a, [bc]                                    ; $5b4d: $0a
    push af                                       ; $5b4e: $f5
    ld a, $05                                     ; $5b4f: $3e $05
    rst $18                                       ; $5b51: $df
    inc b                                         ; $5b52: $04
    ld a, [bc]                                    ; $5b53: $0a
    pop af                                        ; $5b54: $f1
    and a                                         ; $5b55: $a7
    jr z, jr_030_5b5f                             ; $5b56: $28 $07

    ld a, $04                                     ; $5b58: $3e $04
    rst $18                                       ; $5b5a: $df
    ld [$180a], sp                                ; $5b5b: $08 $0a $18
    ld h, d                                       ; $5b5e: $62

jr_030_5b5f:
    rst $18                                       ; $5b5f: $df
    db $10                                        ; $5b60: $10
    ld a, [bc]                                    ; $5b61: $0a
    ld a, $04                                     ; $5b62: $3e $04
    rst $18                                       ; $5b64: $df
    ld [$df0a], sp                                ; $5b65: $08 $0a $df
    inc e                                         ; $5b68: $1c
    db $10                                        ; $5b69: $10
    ld a, $07                                     ; $5b6a: $3e $07
    ld [$c82c], a                                 ; $5b6c: $ea $2c $c8
    rst $18                                       ; $5b6f: $df
    inc h                                         ; $5b70: $24
    db $10                                        ; $5b71: $10
    ld a, $16                                     ; $5b72: $3e $16
    ld b, a                                       ; $5b74: $47
    ld a, $03                                     ; $5b75: $3e $03
    ld c, a                                       ; $5b77: $4f
    rst $18                                       ; $5b78: $df
    ld c, [hl]                                    ; $5b79: $4e
    ld a, [bc]                                    ; $5b7a: $0a
    ld a, $0c                                     ; $5b7b: $3e $0c
    ld [$c834], a                                 ; $5b7d: $ea $34 $c8
    ld hl, $5e0c                                  ; $5b80: $21 $0c $5e
    ld de, $c600                                  ; $5b83: $11 $00 $c6
    ld c, $04                                     ; $5b86: $0e $04
    call Call_000_03eb                            ; $5b88: $cd $eb $03
    ld bc, $4e00                                  ; $5b8b: $01 $00 $4e
    rst $18                                       ; $5b8e: $df
    ld e, $02                                     ; $5b8f: $1e $02
    ld bc, $ff01                                  ; $5b91: $01 $01 $ff
    rst $18                                       ; $5b94: $df
    ld e, $02                                     ; $5b95: $1e $02
    ld hl, $0711                                  ; $5b97: $21 $11 $07
    rst $18                                       ; $5b9a: $df
    db $10                                        ; $5b9b: $10
    db $10                                        ; $5b9c: $10
    ld a, $00                                     ; $5b9d: $3e $00
    rst $18                                       ; $5b9f: $df
    ld e, $10                                     ; $5ba0: $1e $10
    ld hl, $1d60                                  ; $5ba2: $21 $60 $1d
    ld de, $2380                                  ; $5ba5: $11 $80 $23
    rst $18                                       ; $5ba8: $df
    jr nz, jr_030_5bbb                            ; $5ba9: $20 $10

    ld de, $c000                                  ; $5bab: $11 $00 $c0
    rst $18                                       ; $5bae: $df
    ld [hl+], a                                   ; $5baf: $22
    db $10                                        ; $5bb0: $10
    ldh a, [$95]                                  ; $5bb1: $f0 $95
    ld hl, $5e1c                                  ; $5bb3: $21 $1c $5e
    rst $18                                       ; $5bb6: $df
    ld a, [de]                                    ; $5bb7: $1a
    db $10                                        ; $5bb8: $10
    ld a, $01                                     ; $5bb9: $3e $01

jr_030_5bbb:
    rst $18                                       ; $5bbb: $df
    ld [de], a                                    ; $5bbc: $12
    db $10                                        ; $5bbd: $10
    rst $18                                       ; $5bbe: $df
    jr nc, jr_030_5bd1                            ; $5bbf: $30 $10

    ret                                           ; $5bc1: $c9


    nop                                           ; $5bc2: $00
    ret nz                                        ; $5bc3: $c0

    ld e, $00                                     ; $5bc4: $1e $00
    ld h, b                                       ; $5bc6: $60
    jr nz, jr_030_5bfe                            ; $5bc7: $20 $35

    jr nc, jr_030_5bd6                            ; $5bc9: $30 $0b

    ld [bc], a                                    ; $5bcb: $02
    rla                                           ; $5bcc: $17
    nop                                           ; $5bcd: $00
    add c                                         ; $5bce: $81
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00

jr_030_5bd1:
    nop                                           ; $5bd1: $00
    ld a, [c]                                     ; $5bd2: $f2
    ld e, e                                       ; $5bd3: $5b
    inc l                                         ; $5bd4: $2c
    ld e, h                                       ; $5bd5: $5c

jr_030_5bd6:
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    rst $18                                       ; $5bf2: $df
    ld a, [hl+]                                   ; $5bf3: $2a
    db $10                                        ; $5bf4: $10
    ld a, $03                                     ; $5bf5: $3e $03
    ld de, $0a03                                  ; $5bf7: $11 $03 $0a
    ld hl, $0cf7                                  ; $5bfa: $21 $f7 $0c
    rst $18                                       ; $5bfd: $df

jr_030_5bfe:
    ld c, d                                       ; $5bfe: $4a
    dec b                                         ; $5bff: $05
    ld a, $03                                     ; $5c00: $3e $03
    ld de, $0a03                                  ; $5c02: $11 $03 $0a
    ld hl, $0cf8                                  ; $5c05: $21 $f8 $0c
    rst $18                                       ; $5c08: $df
    ld c, d                                       ; $5c09: $4a
    dec b                                         ; $5c0a: $05
    ld a, $03                                     ; $5c0b: $3e $03
    ld de, $0a03                                  ; $5c0d: $11 $03 $0a
    ld hl, $0cf9                                  ; $5c10: $21 $f9 $0c
    rst $18                                       ; $5c13: $df
    ld c, d                                       ; $5c14: $4a
    dec b                                         ; $5c15: $05
    push af                                       ; $5c16: $f5
    ld a, $3c                                     ; $5c17: $3e $3c
    rst $18                                       ; $5c19: $df
    inc b                                         ; $5c1a: $04
    ld a, [bc]                                    ; $5c1b: $0a
    pop af                                        ; $5c1c: $f1
    ld a, $03                                     ; $5c1d: $3e $03
    ld de, $0a03                                  ; $5c1f: $11 $03 $0a
    ld hl, $0cfa                                  ; $5c22: $21 $fa $0c
    rst $18                                       ; $5c25: $df
    ld c, d                                       ; $5c26: $4a
    dec b                                         ; $5c27: $05
    rst $18                                       ; $5c28: $df
    inc l                                         ; $5c29: $2c
    db $10                                        ; $5c2a: $10
    ret                                           ; $5c2b: $c9


    rst $18                                       ; $5c2c: $df
    ld a, [hl+]                                   ; $5c2d: $2a
    db $10                                        ; $5c2e: $10
    ld a, $82                                     ; $5c2f: $3e $82
    rst $18                                       ; $5c31: $df
    ld l, $10                                     ; $5c32: $2e $10
    rst $18                                       ; $5c34: $df
    inc l                                         ; $5c35: $2c
    db $10                                        ; $5c36: $10
    ret                                           ; $5c37: $c9


    ld e, b                                       ; $5c38: $58
    ld e, h                                       ; $5c39: $5c
    add b                                         ; $5c3a: $80
    ld e, h                                       ; $5c3b: $5c
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    nop                                           ; $5c43: $00
    nop                                           ; $5c44: $00
    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    rst $18                                       ; $5c58: $df
    ld a, [hl+]                                   ; $5c59: $2a
    db $10                                        ; $5c5a: $10
    ld a, $03                                     ; $5c5b: $3e $03
    ld de, $0a03                                  ; $5c5d: $11 $03 $0a
    ld hl, $0cfc                                  ; $5c60: $21 $fc $0c
    rst $18                                       ; $5c63: $df
    ld c, d                                       ; $5c64: $4a
    dec b                                         ; $5c65: $05
    ld a, $03                                     ; $5c66: $3e $03
    ld de, $0a03                                  ; $5c68: $11 $03 $0a
    ld hl, $0cfd                                  ; $5c6b: $21 $fd $0c
    rst $18                                       ; $5c6e: $df
    ld c, d                                       ; $5c6f: $4a
    dec b                                         ; $5c70: $05
    ld a, $03                                     ; $5c71: $3e $03
    ld de, $0a03                                  ; $5c73: $11 $03 $0a
    ld hl, $0cfe                                  ; $5c76: $21 $fe $0c
    rst $18                                       ; $5c79: $df
    ld c, d                                       ; $5c7a: $4a
    dec b                                         ; $5c7b: $05
    rst $18                                       ; $5c7c: $df
    inc l                                         ; $5c7d: $2c
    db $10                                        ; $5c7e: $10
    ret                                           ; $5c7f: $c9


    rst $18                                       ; $5c80: $df
    ld a, [hl+]                                   ; $5c81: $2a
    db $10                                        ; $5c82: $10
    ld a, [$c834]                                 ; $5c83: $fa $34 $c8
    or a                                          ; $5c86: $b7
    jr nz, jr_030_5c90                            ; $5c87: $20 $07

    ld a, $06                                     ; $5c89: $3e $06
    ld [$c961], a                                 ; $5c8b: $ea $61 $c9
    jr jr_030_5cb9                                ; $5c8e: $18 $29

jr_030_5c90:
    ld hl, $0060                                  ; $5c90: $21 $60 $00
    call Call_030_7e2e                            ; $5c93: $cd $2e $7e
    ld [$c968], a                                 ; $5c96: $ea $68 $c9
    ldh a, [$96]                                  ; $5c99: $f0 $96
    push af                                       ; $5c9b: $f5
    ld a, $06                                     ; $5c9c: $3e $06
    ldh [$96], a                                  ; $5c9e: $e0 $96
    ldh [rSVBK], a                                ; $5ca0: $e0 $70
    ld a, [$d68c]                                 ; $5ca2: $fa $8c $d6
    ld [$c969], a                                 ; $5ca5: $ea $69 $c9
    pop af                                        ; $5ca8: $f1
    ldh [$96], a                                  ; $5ca9: $e0 $96
    ldh [rSVBK], a                                ; $5cab: $e0 $70
    rst $28                                       ; $5cad: $ef
    ld h, b                                       ; $5cae: $60
    inc c                                         ; $5caf: $0c
    ld a, [$c8aa]                                 ; $5cb0: $fa $aa $c8
    or a                                          ; $5cb3: $b7
    jr z, jr_030_5cb9                             ; $5cb4: $28 $03

    rst $20                                       ; $5cb6: $e7
    ld h, b                                       ; $5cb7: $60
    inc c                                         ; $5cb8: $0c

jr_030_5cb9:
    ld a, $82                                     ; $5cb9: $3e $82
    rst $18                                       ; $5cbb: $df
    ld l, $10                                     ; $5cbc: $2e $10
    rst $18                                       ; $5cbe: $df
    inc l                                         ; $5cbf: $2c
    db $10                                        ; $5cc0: $10
    ret                                           ; $5cc1: $c9


Call_030_5cc2:
    rst $18                                       ; $5cc2: $df
    nop                                           ; $5cc3: $00
    ld a, [bc]                                    ; $5cc4: $0a
    ldh a, [$95]                                  ; $5cc5: $f0 $95
    ld b, a                                       ; $5cc7: $47
    ld a, $03                                     ; $5cc8: $3e $03
    ld de, $7d99                                  ; $5cca: $11 $99 $7d
    rst $18                                       ; $5ccd: $df
    jr @+$0c                                      ; $5cce: $18 $0a

    ld a, [$c296]                                 ; $5cd0: $fa $96 $c2
    ld b, a                                       ; $5cd3: $47
    ld a, $03                                     ; $5cd4: $3e $03
    rst $18                                       ; $5cd6: $df
    ld l, $0a                                     ; $5cd7: $2e $0a
    ld c, $08                                     ; $5cd9: $0e $08
    call Call_000_25af                            ; $5cdb: $cd $af $25
    call Call_000_2625                            ; $5cde: $cd $25 $26
    push af                                       ; $5ce1: $f5
    ld a, $1e                                     ; $5ce2: $3e $1e
    rst $18                                       ; $5ce4: $df
    inc b                                         ; $5ce5: $04
    ld a, [bc]                                    ; $5ce6: $0a
    pop af                                        ; $5ce7: $f1
    ld a, [$c968]                                 ; $5ce8: $fa $68 $c9
    or a                                          ; $5ceb: $b7
    jr nz, jr_030_5d15                            ; $5cec: $20 $27

    ld a, $03                                     ; $5cee: $3e $03
    ld b, a                                       ; $5cf0: $47
    ld a, $07                                     ; $5cf1: $3e $07
    rst $18                                       ; $5cf3: $df
    ld [hl-], a                                   ; $5cf4: $32
    ld a, [bc]                                    ; $5cf5: $0a
    ld a, $03                                     ; $5cf6: $3e $03
    rst $18                                       ; $5cf8: $df
    inc [hl]                                      ; $5cf9: $34
    ld a, [bc]                                    ; $5cfa: $0a
    push af                                       ; $5cfb: $f5
    ld a, $1e                                     ; $5cfc: $3e $1e
    rst $18                                       ; $5cfe: $df
    inc b                                         ; $5cff: $04
    ld a, [bc]                                    ; $5d00: $0a
    pop af                                        ; $5d01: $f1
    ld hl, $0d01                                  ; $5d02: $21 $01 $0d
    rst $18                                       ; $5d05: $df
    ld c, $0a                                     ; $5d06: $0e $0a
    ld a, $03                                     ; $5d08: $3e $03
    rst $18                                       ; $5d0a: $df
    ld [$e70a], sp                                ; $5d0b: $08 $0a $e7
    ld b, b                                       ; $5d0e: $40
    inc c                                         ; $5d0f: $0c
    rst $28                                       ; $5d10: $ef
    and b                                         ; $5d11: $a0
    inc c                                         ; $5d12: $0c
    jr @+$21                                      ; $5d13: $18 $1f

jr_030_5d15:
    ld a, [$c969]                                 ; $5d15: $fa $69 $c9
    bit 7, a                                      ; $5d18: $cb $7f
    jr z, jr_030_5d29                             ; $5d1a: $28 $0d

    ld hl, $0cff                                  ; $5d1c: $21 $ff $0c
    rst $18                                       ; $5d1f: $df
    ld c, $0a                                     ; $5d20: $0e $0a
    ld a, $03                                     ; $5d22: $3e $03
    rst $18                                       ; $5d24: $df
    ld [$180a], sp                                ; $5d25: $08 $0a $18
    dec bc                                        ; $5d28: $0b

jr_030_5d29:
    ld hl, $0d00                                  ; $5d29: $21 $00 $0d
    rst $18                                       ; $5d2c: $df
    ld c, $0a                                     ; $5d2d: $0e $0a
    ld a, $03                                     ; $5d2f: $3e $03
    rst $18                                       ; $5d31: $df
    ld [$f00a], sp                                ; $5d32: $08 $0a $f0
    sub l                                         ; $5d35: $95
    ld b, a                                       ; $5d36: $47
    ld a, $03                                     ; $5d37: $3e $03
    ld de, $7e11                                  ; $5d39: $11 $11 $7e
    rst $18                                       ; $5d3c: $df
    jr jr_030_5d49                                ; $5d3d: $18 $0a

    ld a, $03                                     ; $5d3f: $3e $03
    ld b, $80                                     ; $5d41: $06 $80
    rst $18                                       ; $5d43: $df
    inc l                                         ; $5d44: $2c
    ld a, [bc]                                    ; $5d45: $0a
    rst $18                                       ; $5d46: $df
    ld [bc], a                                    ; $5d47: $02
    ld a, [bc]                                    ; $5d48: $0a

jr_030_5d49:
    ret                                           ; $5d49: $c9


Call_030_5d4a:
    ld hl, $0d11                                  ; $5d4a: $21 $11 $0d
    rst $18                                       ; $5d4d: $df
    ld c, $0a                                     ; $5d4e: $0e $0a
    call Call_030_5d80                            ; $5d50: $cd $80 $5d
    ret                                           ; $5d53: $c9


Call_030_5d54:
    rst $18                                       ; $5d54: $df
    nop                                           ; $5d55: $00
    ld a, [bc]                                    ; $5d56: $0a
    ldh a, [$95]                                  ; $5d57: $f0 $95
    ld b, a                                       ; $5d59: $47
    ld a, $03                                     ; $5d5a: $3e $03
    ld de, $7d99                                  ; $5d5c: $11 $99 $7d
    rst $18                                       ; $5d5f: $df
    jr @+$0c                                      ; $5d60: $18 $0a

    ld a, [$c296]                                 ; $5d62: $fa $96 $c2
    ld b, a                                       ; $5d65: $47
    ld a, $03                                     ; $5d66: $3e $03
    rst $18                                       ; $5d68: $df
    ld l, $0a                                     ; $5d69: $2e $0a
    ld c, $04                                     ; $5d6b: $0e $04
    call Call_000_25af                            ; $5d6d: $cd $af $25
    call Call_000_2625                            ; $5d70: $cd $25 $26
    ld hl, $0cfb                                  ; $5d73: $21 $fb $0c
    rst $18                                       ; $5d76: $df
    ld c, $0a                                     ; $5d77: $0e $0a
    call Call_030_5d80                            ; $5d79: $cd $80 $5d
    rst $18                                       ; $5d7c: $df
    ld [bc], a                                    ; $5d7d: $02
    ld a, [bc]                                    ; $5d7e: $0a
    ret                                           ; $5d7f: $c9


Call_030_5d80:
    ld a, $03                                     ; $5d80: $3e $03
    rst $18                                       ; $5d82: $df
    ld a, [bc]                                    ; $5d83: $0a
    ld a, [bc]                                    ; $5d84: $0a
    rst $18                                       ; $5d85: $df
    ld [de], a                                    ; $5d86: $12
    ld a, [bc]                                    ; $5d87: $0a
    rst $18                                       ; $5d88: $df
    inc c                                         ; $5d89: $0c
    ld a, [bc]                                    ; $5d8a: $0a
    push af                                       ; $5d8b: $f5
    ld a, $05                                     ; $5d8c: $3e $05
    rst $18                                       ; $5d8e: $df
    inc b                                         ; $5d8f: $04
    ld a, [bc]                                    ; $5d90: $0a
    pop af                                        ; $5d91: $f1
    and a                                         ; $5d92: $a7
    jr z, jr_030_5db4                             ; $5d93: $28 $1f

    ld hl, $0d02                                  ; $5d95: $21 $02 $0d
    rst $18                                       ; $5d98: $df
    ld c, $0a                                     ; $5d99: $0e $0a
    ld a, $03                                     ; $5d9b: $3e $03
    rst $18                                       ; $5d9d: $df
    ld [$f00a], sp                                ; $5d9e: $08 $0a $f0
    sub l                                         ; $5da1: $95
    ld b, a                                       ; $5da2: $47
    ld a, $03                                     ; $5da3: $3e $03
    ld de, $7dff                                  ; $5da5: $11 $ff $7d
    rst $18                                       ; $5da8: $df
    jr jr_030_5db5                                ; $5da9: $18 $0a

    ld a, $03                                     ; $5dab: $3e $03
    ld b, $80                                     ; $5dad: $06 $80
    rst $18                                       ; $5daf: $df
    inc l                                         ; $5db0: $2c
    ld a, [bc]                                    ; $5db1: $0a
    jr jr_030_5e0b                                ; $5db2: $18 $57

jr_030_5db4:
    rst $20                                       ; $5db4: $e7

jr_030_5db5:
    and b                                         ; $5db5: $a0
    inc c                                         ; $5db6: $0c
    rst $18                                       ; $5db7: $df
    inc e                                         ; $5db8: $1c
    db $10                                        ; $5db9: $10
    rst $30                                       ; $5dba: $f7
    add b                                         ; $5dbb: $80
    dec d                                         ; $5dbc: $15
    jr nz, jr_030_5dc4                            ; $5dbd: $20 $05

    ld a, $0b                                     ; $5dbf: $3e $0b
    ld [$c82c], a                                 ; $5dc1: $ea $2c $c8

jr_030_5dc4:
    rst $18                                       ; $5dc4: $df
    inc h                                         ; $5dc5: $24
    db $10                                        ; $5dc6: $10
    ld a, $16                                     ; $5dc7: $3e $16
    ld b, a                                       ; $5dc9: $47
    ld a, $04                                     ; $5dca: $3e $04
    ld c, a                                       ; $5dcc: $4f
    rst $18                                       ; $5dcd: $df
    ld c, [hl]                                    ; $5dce: $4e
    ld a, [bc]                                    ; $5dcf: $0a
    ld a, $0c                                     ; $5dd0: $3e $0c
    ld [$c834], a                                 ; $5dd2: $ea $34 $c8
    ld bc, $8000                                  ; $5dd5: $01 $00 $80
    rst $18                                       ; $5dd8: $df
    ld e, $02                                     ; $5dd9: $1e $02
    ld bc, $ff01                                  ; $5ddb: $01 $01 $ff
    rst $18                                       ; $5dde: $df
    ld e, $02                                     ; $5ddf: $1e $02
    ld hl, $0711                                  ; $5de1: $21 $11 $07
    rst $18                                       ; $5de4: $df
    db $10                                        ; $5de5: $10
    db $10                                        ; $5de6: $10
    ld a, $00                                     ; $5de7: $3e $00
    rst $18                                       ; $5de9: $df
    ld e, $10                                     ; $5dea: $1e $10
    ld hl, $1ec0                                  ; $5dec: $21 $c0 $1e
    ld de, $2060                                  ; $5def: $11 $60 $20
    rst $18                                       ; $5df2: $df
    jr nz, jr_030_5e05                            ; $5df3: $20 $10

    ld de, $c000                                  ; $5df5: $11 $00 $c0
    rst $18                                       ; $5df8: $df
    ld [hl+], a                                   ; $5df9: $22
    db $10                                        ; $5dfa: $10
    ldh a, [$95]                                  ; $5dfb: $f0 $95
    ld hl, $5c38                                  ; $5dfd: $21 $38 $5c
    rst $18                                       ; $5e00: $df
    ld a, [de]                                    ; $5e01: $1a
    db $10                                        ; $5e02: $10
    ld a, $01                                     ; $5e03: $3e $01

jr_030_5e05:
    rst $18                                       ; $5e05: $df
    ld [de], a                                    ; $5e06: $12
    db $10                                        ; $5e07: $10
    rst $18                                       ; $5e08: $df
    jr nc, jr_030_5e1b                            ; $5e09: $30 $10

jr_030_5e0b:
    ret                                           ; $5e0b: $c9


    nop                                           ; $5e0c: $00
    ld h, b                                       ; $5e0d: $60
    dec e                                         ; $5e0e: $1d
    nop                                           ; $5e0f: $00
    add b                                         ; $5e10: $80
    inc hl                                        ; $5e11: $23
    call Call_000_06ef                            ; $5e12: $cd $ef $06
    ld [bc], a                                    ; $5e15: $02
    ld d, $00                                     ; $5e16: $16 $00
    ld bc, $0000                                  ; $5e18: $01 $00 $00

jr_030_5e1b:
    nop                                           ; $5e1b: $00
    inc a                                         ; $5e1c: $3c
    ld e, [hl]                                    ; $5e1d: $5e
    halt                                          ; $5e1e: $76
    ld e, [hl]                                    ; $5e1f: $5e
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    rst $18                                       ; $5e3c: $df
    ld a, [hl+]                                   ; $5e3d: $2a
    db $10                                        ; $5e3e: $10
    ld a, $04                                     ; $5e3f: $3e $04
    ld de, $0a03                                  ; $5e41: $11 $03 $0a
    ld hl, $0d06                                  ; $5e44: $21 $06 $0d
    rst $18                                       ; $5e47: $df
    ld c, d                                       ; $5e48: $4a
    dec b                                         ; $5e49: $05
    ld a, $04                                     ; $5e4a: $3e $04
    ld de, $0a03                                  ; $5e4c: $11 $03 $0a
    ld hl, $0d07                                  ; $5e4f: $21 $07 $0d
    rst $18                                       ; $5e52: $df
    ld c, d                                       ; $5e53: $4a
    dec b                                         ; $5e54: $05
    ld a, $04                                     ; $5e55: $3e $04
    ld de, $0a03                                  ; $5e57: $11 $03 $0a
    ld hl, $0d08                                  ; $5e5a: $21 $08 $0d
    rst $18                                       ; $5e5d: $df
    ld c, d                                       ; $5e5e: $4a
    dec b                                         ; $5e5f: $05
    push af                                       ; $5e60: $f5
    ld a, $3c                                     ; $5e61: $3e $3c
    rst $18                                       ; $5e63: $df
    inc b                                         ; $5e64: $04
    ld a, [bc]                                    ; $5e65: $0a
    pop af                                        ; $5e66: $f1
    ld a, $04                                     ; $5e67: $3e $04
    ld de, $0a03                                  ; $5e69: $11 $03 $0a
    ld hl, $0d09                                  ; $5e6c: $21 $09 $0d
    rst $18                                       ; $5e6f: $df
    ld c, d                                       ; $5e70: $4a
    dec b                                         ; $5e71: $05
    rst $18                                       ; $5e72: $df
    inc l                                         ; $5e73: $2c
    db $10                                        ; $5e74: $10
    ret                                           ; $5e75: $c9


    rst $18                                       ; $5e76: $df
    ld a, [hl+]                                   ; $5e77: $2a
    db $10                                        ; $5e78: $10
    ld a, $82                                     ; $5e79: $3e $82
    rst $18                                       ; $5e7b: $df
    ld l, $10                                     ; $5e7c: $2e $10
    rst $18                                       ; $5e7e: $df
    inc l                                         ; $5e7f: $2c
    db $10                                        ; $5e80: $10
    ret                                           ; $5e81: $c9


    and d                                         ; $5e82: $a2
    ld e, [hl]                                    ; $5e83: $5e
    jp z, Jump_000_005e                           ; $5e84: $ca $5e $00

    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    rst $18                                       ; $5ea2: $df
    ld a, [hl+]                                   ; $5ea3: $2a
    db $10                                        ; $5ea4: $10
    ld a, $04                                     ; $5ea5: $3e $04
    ld de, $0a03                                  ; $5ea7: $11 $03 $0a
    ld hl, $0d0b                                  ; $5eaa: $21 $0b $0d
    rst $18                                       ; $5ead: $df
    ld c, d                                       ; $5eae: $4a
    dec b                                         ; $5eaf: $05
    ld a, $04                                     ; $5eb0: $3e $04
    ld de, $0a03                                  ; $5eb2: $11 $03 $0a
    ld hl, $0d0c                                  ; $5eb5: $21 $0c $0d
    rst $18                                       ; $5eb8: $df
    ld c, d                                       ; $5eb9: $4a
    dec b                                         ; $5eba: $05
    ld a, $04                                     ; $5ebb: $3e $04
    ld de, $0a03                                  ; $5ebd: $11 $03 $0a
    ld hl, $0d0d                                  ; $5ec0: $21 $0d $0d
    rst $18                                       ; $5ec3: $df
    ld c, d                                       ; $5ec4: $4a
    dec b                                         ; $5ec5: $05
    rst $18                                       ; $5ec6: $df
    inc l                                         ; $5ec7: $2c
    db $10                                        ; $5ec8: $10
    ret                                           ; $5ec9: $c9


    rst $18                                       ; $5eca: $df
    ld a, [hl+]                                   ; $5ecb: $2a
    db $10                                        ; $5ecc: $10
    ld a, [$c834]                                 ; $5ecd: $fa $34 $c8
    or a                                          ; $5ed0: $b7
    jr nz, jr_030_5eda                            ; $5ed1: $20 $07

    ld a, $07                                     ; $5ed3: $3e $07
    ld [$c961], a                                 ; $5ed5: $ea $61 $c9
    jr jr_030_5eef                                ; $5ed8: $18 $15

jr_030_5eda:
    ld hl, $0060                                  ; $5eda: $21 $60 $00
    call Call_030_7e2e                            ; $5edd: $cd $2e $7e
    ld [$c968], a                                 ; $5ee0: $ea $68 $c9
    rst $28                                       ; $5ee3: $ef
    ld h, b                                       ; $5ee4: $60
    inc c                                         ; $5ee5: $0c
    ld a, [$c8aa]                                 ; $5ee6: $fa $aa $c8
    or a                                          ; $5ee9: $b7
    jr z, jr_030_5eef                             ; $5eea: $28 $03

    rst $20                                       ; $5eec: $e7
    ld h, b                                       ; $5eed: $60
    inc c                                         ; $5eee: $0c

jr_030_5eef:
    ld a, $82                                     ; $5eef: $3e $82
    rst $18                                       ; $5ef1: $df
    ld l, $10                                     ; $5ef2: $2e $10
    rst $18                                       ; $5ef4: $df
    inc l                                         ; $5ef5: $2c
    db $10                                        ; $5ef6: $10
    ret                                           ; $5ef7: $c9


Call_030_5ef8:
    rst $18                                       ; $5ef8: $df
    nop                                           ; $5ef9: $00
    ld a, [bc]                                    ; $5efa: $0a
    ldh a, [$95]                                  ; $5efb: $f0 $95
    ld b, a                                       ; $5efd: $47
    ld a, $04                                     ; $5efe: $3e $04
    ld de, $7d99                                  ; $5f00: $11 $99 $7d
    rst $18                                       ; $5f03: $df
    jr @+$0c                                      ; $5f04: $18 $0a

    ld a, [$c296]                                 ; $5f06: $fa $96 $c2
    ld b, a                                       ; $5f09: $47
    ld a, $04                                     ; $5f0a: $3e $04
    rst $18                                       ; $5f0c: $df
    ld l, $0a                                     ; $5f0d: $2e $0a
    ld c, $08                                     ; $5f0f: $0e $08
    call Call_000_25af                            ; $5f11: $cd $af $25
    call Call_000_2625                            ; $5f14: $cd $25 $26
    push af                                       ; $5f17: $f5
    ld a, $1e                                     ; $5f18: $3e $1e
    rst $18                                       ; $5f1a: $df
    inc b                                         ; $5f1b: $04
    ld a, [bc]                                    ; $5f1c: $0a
    pop af                                        ; $5f1d: $f1
    ld a, [$c968]                                 ; $5f1e: $fa $68 $c9
    or a                                          ; $5f21: $b7
    jr nz, jr_030_5f4b                            ; $5f22: $20 $27

    ld a, $04                                     ; $5f24: $3e $04
    ld b, a                                       ; $5f26: $47
    ld a, $07                                     ; $5f27: $3e $07
    rst $18                                       ; $5f29: $df
    ld [hl-], a                                   ; $5f2a: $32
    ld a, [bc]                                    ; $5f2b: $0a
    ld a, $04                                     ; $5f2c: $3e $04
    rst $18                                       ; $5f2e: $df
    inc [hl]                                      ; $5f2f: $34
    ld a, [bc]                                    ; $5f30: $0a
    push af                                       ; $5f31: $f5
    ld a, $1e                                     ; $5f32: $3e $1e
    rst $18                                       ; $5f34: $df
    inc b                                         ; $5f35: $04
    ld a, [bc]                                    ; $5f36: $0a
    pop af                                        ; $5f37: $f1
    ld hl, $0d0f                                  ; $5f38: $21 $0f $0d
    rst $18                                       ; $5f3b: $df
    ld c, $0a                                     ; $5f3c: $0e $0a
    ld a, $04                                     ; $5f3e: $3e $04
    rst $18                                       ; $5f40: $df
    ld [$e70a], sp                                ; $5f41: $08 $0a $e7
    ld b, b                                       ; $5f44: $40
    inc c                                         ; $5f45: $0c
    rst $28                                       ; $5f46: $ef
    ret nz                                        ; $5f47: $c0

    inc c                                         ; $5f48: $0c
    jr @+$14                                      ; $5f49: $18 $12

jr_030_5f4b:
    push af                                       ; $5f4b: $f5
    ld a, $1e                                     ; $5f4c: $3e $1e
    rst $18                                       ; $5f4e: $df
    inc b                                         ; $5f4f: $04
    ld a, [bc]                                    ; $5f50: $0a
    pop af                                        ; $5f51: $f1
    ld hl, $0d0e                                  ; $5f52: $21 $0e $0d
    rst $18                                       ; $5f55: $df
    ld c, $0a                                     ; $5f56: $0e $0a
    ld a, $04                                     ; $5f58: $3e $04
    rst $18                                       ; $5f5a: $df
    ld [$f00a], sp                                ; $5f5b: $08 $0a $f0
    sub l                                         ; $5f5e: $95
    ld b, a                                       ; $5f5f: $47
    ld a, $04                                     ; $5f60: $3e $04
    ld de, $7dff                                  ; $5f62: $11 $ff $7d
    rst $18                                       ; $5f65: $df
    jr @+$0c                                      ; $5f66: $18 $0a

    ld a, $04                                     ; $5f68: $3e $04
    ld b, $40                                     ; $5f6a: $06 $40
    rst $18                                       ; $5f6c: $df
    inc l                                         ; $5f6d: $2c
    ld a, [bc]                                    ; $5f6e: $0a
    ret                                           ; $5f6f: $c9


Call_030_5f70:
    ld hl, $0d12                                  ; $5f70: $21 $12 $0d
    rst $18                                       ; $5f73: $df
    ld c, $0a                                     ; $5f74: $0e $0a
    call Call_030_5fa6                            ; $5f76: $cd $a6 $5f
    ret                                           ; $5f79: $c9


Call_030_5f7a:
    rst $18                                       ; $5f7a: $df
    nop                                           ; $5f7b: $00
    ld a, [bc]                                    ; $5f7c: $0a
    ldh a, [$95]                                  ; $5f7d: $f0 $95
    ld b, a                                       ; $5f7f: $47
    ld a, $04                                     ; $5f80: $3e $04
    ld de, $7d99                                  ; $5f82: $11 $99 $7d
    rst $18                                       ; $5f85: $df
    jr @+$0c                                      ; $5f86: $18 $0a

    ld a, [$c296]                                 ; $5f88: $fa $96 $c2
    ld b, a                                       ; $5f8b: $47
    ld a, $04                                     ; $5f8c: $3e $04
    rst $18                                       ; $5f8e: $df
    ld l, $0a                                     ; $5f8f: $2e $0a
    ld c, $04                                     ; $5f91: $0e $04
    call Call_000_25af                            ; $5f93: $cd $af $25
    call Call_000_2625                            ; $5f96: $cd $25 $26
    ld hl, $0d0a                                  ; $5f99: $21 $0a $0d
    rst $18                                       ; $5f9c: $df
    ld c, $0a                                     ; $5f9d: $0e $0a
    call Call_030_5fa6                            ; $5f9f: $cd $a6 $5f
    rst $18                                       ; $5fa2: $df
    ld [bc], a                                    ; $5fa3: $02
    ld a, [bc]                                    ; $5fa4: $0a
    ret                                           ; $5fa5: $c9


Call_030_5fa6:
    ld a, $04                                     ; $5fa6: $3e $04
    rst $18                                       ; $5fa8: $df
    ld a, [bc]                                    ; $5fa9: $0a
    ld a, [bc]                                    ; $5faa: $0a
    rst $18                                       ; $5fab: $df
    ld [de], a                                    ; $5fac: $12
    ld a, [bc]                                    ; $5fad: $0a
    rst $18                                       ; $5fae: $df
    inc c                                         ; $5faf: $0c
    ld a, [bc]                                    ; $5fb0: $0a
    push af                                       ; $5fb1: $f5
    ld a, $05                                     ; $5fb2: $3e $05
    rst $18                                       ; $5fb4: $df
    inc b                                         ; $5fb5: $04
    ld a, [bc]                                    ; $5fb6: $0a
    pop af                                        ; $5fb7: $f1
    and a                                         ; $5fb8: $a7
    jr z, jr_030_5fda                             ; $5fb9: $28 $1f

    ld hl, $0d10                                  ; $5fbb: $21 $10 $0d
    rst $18                                       ; $5fbe: $df
    ld c, $0a                                     ; $5fbf: $0e $0a
    ld a, $04                                     ; $5fc1: $3e $04
    rst $18                                       ; $5fc3: $df
    ld [$f00a], sp                                ; $5fc4: $08 $0a $f0
    sub l                                         ; $5fc7: $95
    ld b, a                                       ; $5fc8: $47
    ld a, $04                                     ; $5fc9: $3e $04
    ld de, $7e08                                  ; $5fcb: $11 $08 $7e
    rst $18                                       ; $5fce: $df
    jr jr_030_5fdb                                ; $5fcf: $18 $0a

    ld a, $04                                     ; $5fd1: $3e $04
    ld b, $40                                     ; $5fd3: $06 $40
    rst $18                                       ; $5fd5: $df
    inc l                                         ; $5fd6: $2c
    ld a, [bc]                                    ; $5fd7: $0a
    jr jr_030_6031                                ; $5fd8: $18 $57

jr_030_5fda:
    rst $20                                       ; $5fda: $e7

jr_030_5fdb:
    ret nz                                        ; $5fdb: $c0

    inc c                                         ; $5fdc: $0c
    rst $18                                       ; $5fdd: $df
    inc e                                         ; $5fde: $1c
    db $10                                        ; $5fdf: $10
    rst $30                                       ; $5fe0: $f7
    and b                                         ; $5fe1: $a0
    dec d                                         ; $5fe2: $15
    jr nz, jr_030_5fea                            ; $5fe3: $20 $05

    ld a, $0b                                     ; $5fe5: $3e $0b
    ld [$c82c], a                                 ; $5fe7: $ea $2c $c8

jr_030_5fea:
    rst $18                                       ; $5fea: $df
    inc h                                         ; $5feb: $24
    db $10                                        ; $5fec: $10
    ld a, $16                                     ; $5fed: $3e $16
    ld b, a                                       ; $5fef: $47
    ld a, $05                                     ; $5ff0: $3e $05
    ld c, a                                       ; $5ff2: $4f
    rst $18                                       ; $5ff3: $df
    ld c, [hl]                                    ; $5ff4: $4e
    ld a, [bc]                                    ; $5ff5: $0a
    ld a, $0c                                     ; $5ff6: $3e $0c
    ld [$c834], a                                 ; $5ff8: $ea $34 $c8
    ld bc, $8000                                  ; $5ffb: $01 $00 $80
    rst $18                                       ; $5ffe: $df
    ld e, $02                                     ; $5fff: $1e $02
    ld bc, $ff01                                  ; $6001: $01 $01 $ff
    rst $18                                       ; $6004: $df
    ld e, $02                                     ; $6005: $1e $02
    ld hl, $0711                                  ; $6007: $21 $11 $07
    rst $18                                       ; $600a: $df
    db $10                                        ; $600b: $10
    db $10                                        ; $600c: $10
    ld a, $00                                     ; $600d: $3e $00
    rst $18                                       ; $600f: $df
    ld e, $10                                     ; $6010: $1e $10
    ld hl, $1d60                                  ; $6012: $21 $60 $1d
    ld de, $2380                                  ; $6015: $11 $80 $23
    rst $18                                       ; $6018: $df
    jr nz, jr_030_602b                            ; $6019: $20 $10

    ld de, $c000                                  ; $601b: $11 $00 $c0
    rst $18                                       ; $601e: $df
    ld [hl+], a                                   ; $601f: $22
    db $10                                        ; $6020: $10
    ldh a, [$95]                                  ; $6021: $f0 $95
    ld hl, $5e82                                  ; $6023: $21 $82 $5e
    rst $18                                       ; $6026: $df
    ld a, [de]                                    ; $6027: $1a
    db $10                                        ; $6028: $10
    ld a, $01                                     ; $6029: $3e $01

jr_030_602b:
    rst $18                                       ; $602b: $df
    ld [de], a                                    ; $602c: $12
    db $10                                        ; $602d: $10
    rst $18                                       ; $602e: $df
    jr nc, jr_030_6041                            ; $602f: $30 $10

jr_030_6031:
    ret                                           ; $6031: $c9


    ld d, d                                       ; $6032: $52
    ld h, b                                       ; $6033: $60
    ld e, h                                       ; $6034: $5c
    ld h, b                                       ; $6035: $60
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    nop                                           ; $603b: $00
    nop                                           ; $603c: $00
    nop                                           ; $603d: $00
    nop                                           ; $603e: $00
    nop                                           ; $603f: $00
    nop                                           ; $6040: $00

jr_030_6041:
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    ld a, [$c969]                                 ; $6052: $fa $69 $c9
    ld [$c8a0], a                                 ; $6055: $ea $a0 $c8
    rst $18                                       ; $6058: $df
    db $10                                        ; $6059: $10
    ld [de], a                                    ; $605a: $12
    ret                                           ; $605b: $c9


    rst $18                                       ; $605c: $df
    ld a, [hl+]                                   ; $605d: $2a
    db $10                                        ; $605e: $10
    ld a, [$c834]                                 ; $605f: $fa $34 $c8
    or a                                          ; $6062: $b7
    jr nz, jr_030_6073                            ; $6063: $20 $0e

    ld a, $06                                     ; $6065: $3e $06
    ld [$c961], a                                 ; $6067: $ea $61 $c9
    ld a, $82                                     ; $606a: $3e $82
    rst $18                                       ; $606c: $df
    ld l, $10                                     ; $606d: $2e $10
    rst $18                                       ; $606f: $df
    inc l                                         ; $6070: $2c
    db $10                                        ; $6071: $10
    ret                                           ; $6072: $c9


jr_030_6073:
    ld hl, $0060                                  ; $6073: $21 $60 $00
    call Call_030_7e2e                            ; $6076: $cd $2e $7e
    or a                                          ; $6079: $b7
    jr nz, jr_030_609c                            ; $607a: $20 $20

    ld hl, $c968                                  ; $607c: $21 $68 $c9
    inc [hl]                                      ; $607f: $34
    ld a, [hl+]                                   ; $6080: $2a
    inc [hl]                                      ; $6081: $34
    ld b, [hl]                                    ; $6082: $46
    ld h, $00                                     ; $6083: $26 $00
    ld l, b                                       ; $6085: $68
    rst $18                                       ; $6086: $df
    ld d, [hl]                                    ; $6087: $56
    dec b                                         ; $6088: $05
    ld h, $00                                     ; $6089: $26 $00
    ld l, a                                       ; $608b: $6f
    rst $18                                       ; $608c: $df
    ld d, [hl]                                    ; $608d: $56
    dec b                                         ; $608e: $05
    ld a, $03                                     ; $608f: $3e $03
    ld de, $0a03                                  ; $6091: $11 $03 $0a
    ld hl, $0c85                                  ; $6094: $21 $85 $0c
    rst $18                                       ; $6097: $df
    ld c, d                                       ; $6098: $4a
    dec b                                         ; $6099: $05
    jr jr_030_60b9                                ; $609a: $18 $1d

jr_030_609c:
    ld hl, $c968                                  ; $609c: $21 $68 $c9
    ld a, [hl+]                                   ; $609f: $2a
    inc [hl]                                      ; $60a0: $34
    ld b, [hl]                                    ; $60a1: $46
    ld h, $00                                     ; $60a2: $26 $00
    ld l, b                                       ; $60a4: $68
    rst $18                                       ; $60a5: $df
    ld d, [hl]                                    ; $60a6: $56
    dec b                                         ; $60a7: $05
    ld h, $00                                     ; $60a8: $26 $00
    ld l, a                                       ; $60aa: $6f
    rst $18                                       ; $60ab: $df
    ld d, [hl]                                    ; $60ac: $56
    dec b                                         ; $60ad: $05
    ld a, $03                                     ; $60ae: $3e $03
    ld de, $0a03                                  ; $60b0: $11 $03 $0a
    ld hl, $0c86                                  ; $60b3: $21 $86 $0c
    rst $18                                       ; $60b6: $df
    ld c, d                                       ; $60b7: $4a
    dec b                                         ; $60b8: $05

jr_030_60b9:
    ld a, b                                       ; $60b9: $78
    cp $0a                                        ; $60ba: $fe $0a
    jr z, jr_030_60c7                             ; $60bc: $28 $09

    ld a, $01                                     ; $60be: $3e $01
    rst $18                                       ; $60c0: $df
    ld l, $10                                     ; $60c1: $2e $10
    rst $18                                       ; $60c3: $df
    inc l                                         ; $60c4: $2c
    db $10                                        ; $60c5: $10
    ret                                           ; $60c6: $c9


jr_030_60c7:
    ld a, [$c968]                                 ; $60c7: $fa $68 $c9
    cp $07                                        ; $60ca: $fe $07
    jr c, jr_030_60d1                             ; $60cc: $38 $03

    rst $20                                       ; $60ce: $e7
    ld b, b                                       ; $60cf: $40
    inc c                                         ; $60d0: $0c

jr_030_60d1:
    ld a, $82                                     ; $60d1: $3e $82
    rst $18                                       ; $60d3: $df
    ld l, $10                                     ; $60d4: $2e $10
    rst $18                                       ; $60d6: $df
    inc l                                         ; $60d7: $2c
    db $10                                        ; $60d8: $10
    ret                                           ; $60d9: $c9


Call_030_60da:
    rst $18                                       ; $60da: $df
    nop                                           ; $60db: $00
    ld a, [bc]                                    ; $60dc: $0a
    ldh a, [$95]                                  ; $60dd: $f0 $95
    ld b, a                                       ; $60df: $47
    ld a, $03                                     ; $60e0: $3e $03
    ld de, $7d99                                  ; $60e2: $11 $99 $7d
    rst $18                                       ; $60e5: $df
    jr @+$0c                                      ; $60e6: $18 $0a

    ld a, [$c296]                                 ; $60e8: $fa $96 $c2
    ld b, a                                       ; $60eb: $47
    ld a, $03                                     ; $60ec: $3e $03
    rst $18                                       ; $60ee: $df
    ld l, $0a                                     ; $60ef: $2e $0a
    ld c, $08                                     ; $60f1: $0e $08
    call Call_000_25af                            ; $60f3: $cd $af $25
    call Call_000_2625                            ; $60f6: $cd $25 $26
    push af                                       ; $60f9: $f5
    ld a, $1e                                     ; $60fa: $3e $1e
    rst $18                                       ; $60fc: $df
    inc b                                         ; $60fd: $04
    ld a, [bc]                                    ; $60fe: $0a
    pop af                                        ; $60ff: $f1
    ld a, [$c968]                                 ; $6100: $fa $68 $c9
    cp $07                                        ; $6103: $fe $07
    jr c, jr_030_6138                             ; $6105: $38 $31

    rst $28                                       ; $6107: $ef
    ld h, b                                       ; $6108: $60
    inc c                                         ; $6109: $0c
    cp $0a                                        ; $610a: $fe $0a
    jr nz, jr_030_6111                            ; $610c: $20 $03

    rst $20                                       ; $610e: $e7
    ld h, b                                       ; $610f: $60
    inc c                                         ; $6110: $0c

jr_030_6111:
    ld a, $03                                     ; $6111: $3e $03
    ld b, a                                       ; $6113: $47
    ld a, $07                                     ; $6114: $3e $07
    rst $18                                       ; $6116: $df
    ld [hl-], a                                   ; $6117: $32
    ld a, [bc]                                    ; $6118: $0a
    ld a, $03                                     ; $6119: $3e $03
    rst $18                                       ; $611b: $df
    inc [hl]                                      ; $611c: $34
    ld a, [bc]                                    ; $611d: $0a
    push af                                       ; $611e: $f5
    ld a, $1e                                     ; $611f: $3e $1e
    rst $18                                       ; $6121: $df
    inc b                                         ; $6122: $04
    ld a, [bc]                                    ; $6123: $0a
    pop af                                        ; $6124: $f1
    ld hl, $0c87                                  ; $6125: $21 $87 $0c
    rst $18                                       ; $6128: $df
    ld c, $0a                                     ; $6129: $0e $0a
    ld a, $03                                     ; $612b: $3e $03
    rst $18                                       ; $612d: $df
    ld [$e70a], sp                                ; $612e: $08 $0a $e7
    ld b, b                                       ; $6131: $40
    inc c                                         ; $6132: $0c
    rst $28                                       ; $6133: $ef
    and b                                         ; $6134: $a0
    inc c                                         ; $6135: $0c
    jr @+$0d                                      ; $6136: $18 $0b

jr_030_6138:
    ld hl, $0c89                                  ; $6138: $21 $89 $0c
    rst $18                                       ; $613b: $df
    ld c, $0a                                     ; $613c: $0e $0a
    ld a, $03                                     ; $613e: $3e $03
    rst $18                                       ; $6140: $df
    ld [$f00a], sp                                ; $6141: $08 $0a $f0
    sub l                                         ; $6144: $95
    ld b, a                                       ; $6145: $47
    ld a, $03                                     ; $6146: $3e $03
    ld de, $7e11                                  ; $6148: $11 $11 $7e
    rst $18                                       ; $614b: $df
    jr jr_030_6158                                ; $614c: $18 $0a

    ld a, $03                                     ; $614e: $3e $03
    ld b, $80                                     ; $6150: $06 $80
    rst $18                                       ; $6152: $df
    inc l                                         ; $6153: $2c
    ld a, [bc]                                    ; $6154: $0a
    rst $18                                       ; $6155: $df
    ld [bc], a                                    ; $6156: $02
    ld a, [bc]                                    ; $6157: $0a

jr_030_6158:
    ret                                           ; $6158: $c9


Call_030_6159:
    rst $18                                       ; $6159: $df
    nop                                           ; $615a: $00
    ld a, [bc]                                    ; $615b: $0a
    ldh a, [$95]                                  ; $615c: $f0 $95
    ld b, a                                       ; $615e: $47
    ld a, $03                                     ; $615f: $3e $03
    ld de, $7d99                                  ; $6161: $11 $99 $7d
    rst $18                                       ; $6164: $df
    jr @+$0c                                      ; $6165: $18 $0a

    ld a, [$c296]                                 ; $6167: $fa $96 $c2
    ld b, a                                       ; $616a: $47
    ld a, $03                                     ; $616b: $3e $03
    rst $18                                       ; $616d: $df
    ld l, $0a                                     ; $616e: $2e $0a
    ld c, $04                                     ; $6170: $0e $04
    call Call_000_25af                            ; $6172: $cd $af $25
    call Call_000_2625                            ; $6175: $cd $25 $26
    ld hl, $0c82                                  ; $6178: $21 $82 $0c
    rst $18                                       ; $617b: $df
    ld c, $0a                                     ; $617c: $0e $0a
    call Call_030_6185                            ; $617e: $cd $85 $61
    rst $18                                       ; $6181: $df
    ld [bc], a                                    ; $6182: $02
    ld a, [bc]                                    ; $6183: $0a
    ret                                           ; $6184: $c9


Call_030_6185:
    ld a, $03                                     ; $6185: $3e $03
    rst $18                                       ; $6187: $df
    ld a, [bc]                                    ; $6188: $0a
    ld a, [bc]                                    ; $6189: $0a
    rst $18                                       ; $618a: $df
    ld [de], a                                    ; $618b: $12
    ld a, [bc]                                    ; $618c: $0a
    rst $18                                       ; $618d: $df
    inc c                                         ; $618e: $0c
    ld a, [bc]                                    ; $618f: $0a
    push af                                       ; $6190: $f5
    ld a, $05                                     ; $6191: $3e $05
    rst $18                                       ; $6193: $df
    inc b                                         ; $6194: $04
    ld a, [bc]                                    ; $6195: $0a
    pop af                                        ; $6196: $f1
    and a                                         ; $6197: $a7
    jr z, jr_030_61b9                             ; $6198: $28 $1f

    ld hl, $0c96                                  ; $619a: $21 $96 $0c
    rst $18                                       ; $619d: $df
    ld c, $0a                                     ; $619e: $0e $0a
    ld a, $03                                     ; $61a0: $3e $03
    rst $18                                       ; $61a2: $df
    ld [$f00a], sp                                ; $61a3: $08 $0a $f0
    sub l                                         ; $61a6: $95
    ld b, a                                       ; $61a7: $47
    ld a, $03                                     ; $61a8: $3e $03
    ld de, $7dff                                  ; $61aa: $11 $ff $7d
    rst $18                                       ; $61ad: $df
    jr jr_030_61ba                                ; $61ae: $18 $0a

    ld a, $03                                     ; $61b0: $3e $03
    ld b, $80                                     ; $61b2: $06 $80
    rst $18                                       ; $61b4: $df
    inc l                                         ; $61b5: $2c
    ld a, [bc]                                    ; $61b6: $0a
    jr jr_030_621e                                ; $61b7: $18 $65

jr_030_61b9:
    rst $20                                       ; $61b9: $e7

jr_030_61ba:
    and b                                         ; $61ba: $a0
    inc c                                         ; $61bb: $0c
    rst $18                                       ; $61bc: $df
    db $10                                        ; $61bd: $10
    ld a, [bc]                                    ; $61be: $0a
    ld a, $03                                     ; $61bf: $3e $03
    rst $18                                       ; $61c1: $df
    ld [$210a], sp                                ; $61c2: $08 $0a $21
    ld l, b                                       ; $61c5: $68
    ret                                           ; $61c6: $c9


    xor a                                         ; $61c7: $af
    ld [hl+], a                                   ; $61c8: $22
    ld [hl], a                                    ; $61c9: $77
    rst $18                                       ; $61ca: $df
    inc e                                         ; $61cb: $1c
    db $10                                        ; $61cc: $10
    rst $30                                       ; $61cd: $f7
    add b                                         ; $61ce: $80
    dec de                                        ; $61cf: $1b
    jr nz, jr_030_61d7                            ; $61d0: $20 $05

    ld a, $0b                                     ; $61d2: $3e $0b
    ld [$c82c], a                                 ; $61d4: $ea $2c $c8

jr_030_61d7:
    rst $18                                       ; $61d7: $df
    inc h                                         ; $61d8: $24
    db $10                                        ; $61d9: $10
    ld a, $16                                     ; $61da: $3e $16
    ld b, a                                       ; $61dc: $47
    ld a, $04                                     ; $61dd: $3e $04
    ld c, a                                       ; $61df: $4f
    rst $18                                       ; $61e0: $df
    ld c, [hl]                                    ; $61e1: $4e
    ld a, [bc]                                    ; $61e2: $0a
    ld a, $05                                     ; $61e3: $3e $05
    ld [$c834], a                                 ; $61e5: $ea $34 $c8
    ld bc, $8000                                  ; $61e8: $01 $00 $80
    rst $18                                       ; $61eb: $df
    ld e, $02                                     ; $61ec: $1e $02
    ld bc, $ff01                                  ; $61ee: $01 $01 $ff
    rst $18                                       ; $61f1: $df
    ld e, $02                                     ; $61f2: $1e $02
    ld hl, $0711                                  ; $61f4: $21 $11 $07
    rst $18                                       ; $61f7: $df
    db $10                                        ; $61f8: $10
    db $10                                        ; $61f9: $10
    ld a, $00                                     ; $61fa: $3e $00
    rst $18                                       ; $61fc: $df
    ld e, $10                                     ; $61fd: $1e $10
    ld hl, $1e60                                  ; $61ff: $21 $60 $1e
    ld de, $20a0                                  ; $6202: $11 $a0 $20
    rst $18                                       ; $6205: $df
    jr nz, jr_030_6218                            ; $6206: $20 $10

    ld de, $c000                                  ; $6208: $11 $00 $c0
    rst $18                                       ; $620b: $df
    ld [hl+], a                                   ; $620c: $22
    db $10                                        ; $620d: $10
    ldh a, [$95]                                  ; $620e: $f0 $95
    ld hl, $6032                                  ; $6210: $21 $32 $60
    rst $18                                       ; $6213: $df
    ld a, [de]                                    ; $6214: $1a
    db $10                                        ; $6215: $10
    ld a, $01                                     ; $6216: $3e $01

jr_030_6218:
    rst $18                                       ; $6218: $df
    ld [de], a                                    ; $6219: $12
    db $10                                        ; $621a: $10
    rst $18                                       ; $621b: $df
    jr nc, jr_030_622e                            ; $621c: $30 $10

jr_030_621e:
    ret                                           ; $621e: $c9


    call Call_030_6159                            ; $621f: $cd $59 $61
    ret                                           ; $6222: $c9


    ld b, e                                       ; $6223: $43
    ld h, d                                       ; $6224: $62
    ld c, l                                       ; $6225: $4d
    ld h, d                                       ; $6226: $62
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622a: $00
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00

jr_030_622e:
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    ld a, [$c969]                                 ; $6243: $fa $69 $c9
    ld [$c8a0], a                                 ; $6246: $ea $a0 $c8
    rst $18                                       ; $6249: $df
    db $10                                        ; $624a: $10
    ld [de], a                                    ; $624b: $12
    ret                                           ; $624c: $c9


    rst $18                                       ; $624d: $df
    ld a, [hl+]                                   ; $624e: $2a
    db $10                                        ; $624f: $10
    ld a, [$c834]                                 ; $6250: $fa $34 $c8
    or a                                          ; $6253: $b7
    jr nz, jr_030_6264                            ; $6254: $20 $0e

    ld a, $07                                     ; $6256: $3e $07
    ld [$c961], a                                 ; $6258: $ea $61 $c9
    ld a, $82                                     ; $625b: $3e $82
    rst $18                                       ; $625d: $df
    ld l, $10                                     ; $625e: $2e $10
    rst $18                                       ; $6260: $df
    inc l                                         ; $6261: $2c
    db $10                                        ; $6262: $10
    ret                                           ; $6263: $c9


jr_030_6264:
    ld hl, $0060                                  ; $6264: $21 $60 $00
    call Call_030_7e2e                            ; $6267: $cd $2e $7e
    or a                                          ; $626a: $b7
    jr nz, jr_030_628d                            ; $626b: $20 $20

    ld hl, $c968                                  ; $626d: $21 $68 $c9
    inc [hl]                                      ; $6270: $34
    ld a, [hl+]                                   ; $6271: $2a
    inc [hl]                                      ; $6272: $34
    ld b, [hl]                                    ; $6273: $46
    ld h, $00                                     ; $6274: $26 $00
    ld l, b                                       ; $6276: $68
    rst $18                                       ; $6277: $df
    ld d, [hl]                                    ; $6278: $56
    dec b                                         ; $6279: $05
    ld h, $00                                     ; $627a: $26 $00
    ld l, a                                       ; $627c: $6f
    rst $18                                       ; $627d: $df
    ld d, [hl]                                    ; $627e: $56
    dec b                                         ; $627f: $05
    ld a, $04                                     ; $6280: $3e $04
    ld de, $0a03                                  ; $6282: $11 $03 $0a
    ld hl, $0c8d                                  ; $6285: $21 $8d $0c
    rst $18                                       ; $6288: $df
    ld c, d                                       ; $6289: $4a
    dec b                                         ; $628a: $05
    jr jr_030_62aa                                ; $628b: $18 $1d

jr_030_628d:
    ld hl, $c968                                  ; $628d: $21 $68 $c9
    ld a, [hl+]                                   ; $6290: $2a
    inc [hl]                                      ; $6291: $34
    ld b, [hl]                                    ; $6292: $46
    ld h, $00                                     ; $6293: $26 $00
    ld l, b                                       ; $6295: $68
    rst $18                                       ; $6296: $df
    ld d, [hl]                                    ; $6297: $56
    dec b                                         ; $6298: $05
    ld h, $00                                     ; $6299: $26 $00
    ld l, a                                       ; $629b: $6f
    rst $18                                       ; $629c: $df
    ld d, [hl]                                    ; $629d: $56
    dec b                                         ; $629e: $05
    ld a, $04                                     ; $629f: $3e $04
    ld de, $0a03                                  ; $62a1: $11 $03 $0a
    ld hl, $0c8e                                  ; $62a4: $21 $8e $0c
    rst $18                                       ; $62a7: $df
    ld c, d                                       ; $62a8: $4a
    dec b                                         ; $62a9: $05

jr_030_62aa:
    ld a, b                                       ; $62aa: $78
    cp $0a                                        ; $62ab: $fe $0a
    jr z, jr_030_62b8                             ; $62ad: $28 $09

    ld a, $01                                     ; $62af: $3e $01
    rst $18                                       ; $62b1: $df
    ld l, $10                                     ; $62b2: $2e $10
    rst $18                                       ; $62b4: $df
    inc l                                         ; $62b5: $2c
    db $10                                        ; $62b6: $10
    ret                                           ; $62b7: $c9


jr_030_62b8:
    ld a, [$c968]                                 ; $62b8: $fa $68 $c9
    cp $07                                        ; $62bb: $fe $07
    jr c, jr_030_62c2                             ; $62bd: $38 $03

    rst $20                                       ; $62bf: $e7
    ld b, b                                       ; $62c0: $40
    inc c                                         ; $62c1: $0c

jr_030_62c2:
    ld a, $82                                     ; $62c2: $3e $82
    rst $18                                       ; $62c4: $df
    ld l, $10                                     ; $62c5: $2e $10
    rst $18                                       ; $62c7: $df
    inc l                                         ; $62c8: $2c
    db $10                                        ; $62c9: $10
    ret                                           ; $62ca: $c9


Call_030_62cb:
    rst $18                                       ; $62cb: $df
    nop                                           ; $62cc: $00
    ld a, [bc]                                    ; $62cd: $0a
    ldh a, [$95]                                  ; $62ce: $f0 $95
    ld b, a                                       ; $62d0: $47
    ld a, $04                                     ; $62d1: $3e $04
    ld de, $7d99                                  ; $62d3: $11 $99 $7d
    rst $18                                       ; $62d6: $df
    jr @+$0c                                      ; $62d7: $18 $0a

    ld a, [$c296]                                 ; $62d9: $fa $96 $c2
    ld b, a                                       ; $62dc: $47
    ld a, $04                                     ; $62dd: $3e $04
    rst $18                                       ; $62df: $df
    ld l, $0a                                     ; $62e0: $2e $0a
    ld c, $08                                     ; $62e2: $0e $08
    call Call_000_25af                            ; $62e4: $cd $af $25
    call Call_000_2625                            ; $62e7: $cd $25 $26
    push af                                       ; $62ea: $f5
    ld a, $1e                                     ; $62eb: $3e $1e
    rst $18                                       ; $62ed: $df
    inc b                                         ; $62ee: $04
    ld a, [bc]                                    ; $62ef: $0a
    pop af                                        ; $62f0: $f1
    ld a, [$c968]                                 ; $62f1: $fa $68 $c9
    cp $07                                        ; $62f4: $fe $07
    jr c, jr_030_6329                             ; $62f6: $38 $31

    rst $28                                       ; $62f8: $ef
    ld h, b                                       ; $62f9: $60
    inc c                                         ; $62fa: $0c
    cp $0a                                        ; $62fb: $fe $0a
    jr nz, jr_030_6302                            ; $62fd: $20 $03

    rst $20                                       ; $62ff: $e7
    ld h, b                                       ; $6300: $60
    inc c                                         ; $6301: $0c

jr_030_6302:
    ld a, $04                                     ; $6302: $3e $04
    ld b, a                                       ; $6304: $47
    ld a, $07                                     ; $6305: $3e $07
    rst $18                                       ; $6307: $df
    ld [hl-], a                                   ; $6308: $32
    ld a, [bc]                                    ; $6309: $0a
    ld a, $04                                     ; $630a: $3e $04
    rst $18                                       ; $630c: $df
    inc [hl]                                      ; $630d: $34
    ld a, [bc]                                    ; $630e: $0a
    push af                                       ; $630f: $f5
    ld a, $1e                                     ; $6310: $3e $1e
    rst $18                                       ; $6312: $df
    inc b                                         ; $6313: $04
    ld a, [bc]                                    ; $6314: $0a
    pop af                                        ; $6315: $f1
    ld hl, $0c8f                                  ; $6316: $21 $8f $0c
    rst $18                                       ; $6319: $df
    ld c, $0a                                     ; $631a: $0e $0a
    ld a, $04                                     ; $631c: $3e $04
    rst $18                                       ; $631e: $df
    ld [$e70a], sp                                ; $631f: $08 $0a $e7
    ld b, b                                       ; $6322: $40
    inc c                                         ; $6323: $0c
    rst $28                                       ; $6324: $ef
    and b                                         ; $6325: $a0
    inc c                                         ; $6326: $0c
    jr @+$0d                                      ; $6327: $18 $0b

jr_030_6329:
    ld hl, $0c91                                  ; $6329: $21 $91 $0c
    rst $18                                       ; $632c: $df
    ld c, $0a                                     ; $632d: $0e $0a
    ld a, $04                                     ; $632f: $3e $04
    rst $18                                       ; $6331: $df
    ld [$f00a], sp                                ; $6332: $08 $0a $f0
    sub l                                         ; $6335: $95
    ld b, a                                       ; $6336: $47
    ld a, $04                                     ; $6337: $3e $04
    ld de, $7e11                                  ; $6339: $11 $11 $7e
    rst $18                                       ; $633c: $df
    jr jr_030_6349                                ; $633d: $18 $0a

    ld a, $04                                     ; $633f: $3e $04
    ld b, $80                                     ; $6341: $06 $80
    rst $18                                       ; $6343: $df
    inc l                                         ; $6344: $2c
    ld a, [bc]                                    ; $6345: $0a
    rst $18                                       ; $6346: $df
    ld [bc], a                                    ; $6347: $02
    ld a, [bc]                                    ; $6348: $0a

jr_030_6349:
    ret                                           ; $6349: $c9


Call_030_634a:
    rst $18                                       ; $634a: $df
    nop                                           ; $634b: $00
    ld a, [bc]                                    ; $634c: $0a
    ldh a, [$95]                                  ; $634d: $f0 $95
    ld b, a                                       ; $634f: $47
    ld a, $04                                     ; $6350: $3e $04
    ld de, $7d99                                  ; $6352: $11 $99 $7d
    rst $18                                       ; $6355: $df
    jr @+$0c                                      ; $6356: $18 $0a

    ld a, [$c296]                                 ; $6358: $fa $96 $c2
    ld b, a                                       ; $635b: $47
    ld a, $04                                     ; $635c: $3e $04
    rst $18                                       ; $635e: $df
    ld l, $0a                                     ; $635f: $2e $0a
    ld c, $04                                     ; $6361: $0e $04
    call Call_000_25af                            ; $6363: $cd $af $25
    call Call_000_2625                            ; $6366: $cd $25 $26
    ld hl, $0c8a                                  ; $6369: $21 $8a $0c
    rst $18                                       ; $636c: $df
    ld c, $0a                                     ; $636d: $0e $0a
    call Call_030_6376                            ; $636f: $cd $76 $63
    rst $18                                       ; $6372: $df
    ld [bc], a                                    ; $6373: $02
    ld a, [bc]                                    ; $6374: $0a
    ret                                           ; $6375: $c9


Call_030_6376:
    ld a, $04                                     ; $6376: $3e $04
    rst $18                                       ; $6378: $df
    ld a, [bc]                                    ; $6379: $0a
    ld a, [bc]                                    ; $637a: $0a
    rst $18                                       ; $637b: $df
    ld [de], a                                    ; $637c: $12
    ld a, [bc]                                    ; $637d: $0a
    rst $18                                       ; $637e: $df
    inc c                                         ; $637f: $0c
    ld a, [bc]                                    ; $6380: $0a
    push af                                       ; $6381: $f5
    ld a, $05                                     ; $6382: $3e $05
    rst $18                                       ; $6384: $df
    inc b                                         ; $6385: $04
    ld a, [bc]                                    ; $6386: $0a
    pop af                                        ; $6387: $f1
    and a                                         ; $6388: $a7
    jr z, jr_030_63aa                             ; $6389: $28 $1f

    ld hl, $0c8b                                  ; $638b: $21 $8b $0c
    rst $18                                       ; $638e: $df
    ld c, $0a                                     ; $638f: $0e $0a
    ld a, $04                                     ; $6391: $3e $04
    rst $18                                       ; $6393: $df
    ld [$f00a], sp                                ; $6394: $08 $0a $f0
    sub l                                         ; $6397: $95
    ld b, a                                       ; $6398: $47
    ld a, $04                                     ; $6399: $3e $04
    ld de, $7dff                                  ; $639b: $11 $ff $7d
    rst $18                                       ; $639e: $df
    jr jr_030_63ab                                ; $639f: $18 $0a

    ld a, $04                                     ; $63a1: $3e $04
    ld b, $80                                     ; $63a3: $06 $80
    rst $18                                       ; $63a5: $df
    inc l                                         ; $63a6: $2c
    ld a, [bc]                                    ; $63a7: $0a
    jr jr_030_640f                                ; $63a8: $18 $65

jr_030_63aa:
    rst $20                                       ; $63aa: $e7

jr_030_63ab:
    ret nz                                        ; $63ab: $c0

    inc c                                         ; $63ac: $0c
    rst $18                                       ; $63ad: $df
    db $10                                        ; $63ae: $10
    ld a, [bc]                                    ; $63af: $0a
    ld a, $04                                     ; $63b0: $3e $04
    rst $18                                       ; $63b2: $df
    ld [$210a], sp                                ; $63b3: $08 $0a $21
    ld l, b                                       ; $63b6: $68
    ret                                           ; $63b7: $c9


    xor a                                         ; $63b8: $af
    ld [hl+], a                                   ; $63b9: $22
    ld [hl], a                                    ; $63ba: $77
    rst $18                                       ; $63bb: $df
    inc e                                         ; $63bc: $1c
    db $10                                        ; $63bd: $10
    rst $30                                       ; $63be: $f7
    and b                                         ; $63bf: $a0
    dec de                                        ; $63c0: $1b
    jr nz, jr_030_63c8                            ; $63c1: $20 $05

    ld a, $0b                                     ; $63c3: $3e $0b
    ld [$c82c], a                                 ; $63c5: $ea $2c $c8

jr_030_63c8:
    rst $18                                       ; $63c8: $df
    inc h                                         ; $63c9: $24
    db $10                                        ; $63ca: $10
    ld a, $16                                     ; $63cb: $3e $16
    ld b, a                                       ; $63cd: $47
    ld a, $05                                     ; $63ce: $3e $05
    ld c, a                                       ; $63d0: $4f
    rst $18                                       ; $63d1: $df
    ld c, [hl]                                    ; $63d2: $4e
    ld a, [bc]                                    ; $63d3: $0a
    ld a, $05                                     ; $63d4: $3e $05
    ld [$c834], a                                 ; $63d6: $ea $34 $c8
    ld bc, $8000                                  ; $63d9: $01 $00 $80
    rst $18                                       ; $63dc: $df
    ld e, $02                                     ; $63dd: $1e $02
    ld bc, $ff01                                  ; $63df: $01 $01 $ff
    rst $18                                       ; $63e2: $df
    ld e, $02                                     ; $63e3: $1e $02
    ld hl, $0711                                  ; $63e5: $21 $11 $07
    rst $18                                       ; $63e8: $df
    db $10                                        ; $63e9: $10
    db $10                                        ; $63ea: $10
    ld a, $00                                     ; $63eb: $3e $00
    rst $18                                       ; $63ed: $df
    ld e, $10                                     ; $63ee: $1e $10
    ld hl, $1d60                                  ; $63f0: $21 $60 $1d
    ld de, $22c0                                  ; $63f3: $11 $c0 $22
    rst $18                                       ; $63f6: $df
    jr nz, jr_030_6409                            ; $63f7: $20 $10

    ld de, $c000                                  ; $63f9: $11 $00 $c0
    rst $18                                       ; $63fc: $df
    ld [hl+], a                                   ; $63fd: $22
    db $10                                        ; $63fe: $10
    ldh a, [$95]                                  ; $63ff: $f0 $95
    ld hl, $6223                                  ; $6401: $21 $23 $62
    rst $18                                       ; $6404: $df
    ld a, [de]                                    ; $6405: $1a
    db $10                                        ; $6406: $10
    ld a, $01                                     ; $6407: $3e $01

jr_030_6409:
    rst $18                                       ; $6409: $df
    ld [de], a                                    ; $640a: $12
    db $10                                        ; $640b: $10
    rst $18                                       ; $640c: $df
    jr nc, jr_030_641f                            ; $640d: $30 $10

jr_030_640f:
    ret                                           ; $640f: $c9


    call Call_030_634a                            ; $6410: $cd $4a $63
    ret                                           ; $6413: $c9


Call_030_6414:
    rst $30                                       ; $6414: $f7
    ld h, b                                       ; $6415: $60
    ld de, $1028                                  ; $6416: $11 $28 $10
    rst $30                                       ; $6419: $f7
    add b                                         ; $641a: $80
    dec d                                         ; $641b: $15
    jr z, jr_030_6421                             ; $641c: $28 $03

    rst $20                                       ; $641e: $e7

jr_030_641f:
    nop                                           ; $641f: $00
    inc e                                         ; $6420: $1c

jr_030_6421:
    rst $30                                       ; $6421: $f7
    and b                                         ; $6422: $a0
    dec d                                         ; $6423: $15
    jr z, jr_030_6429                             ; $6424: $28 $03

    rst $20                                       ; $6426: $e7
    jr nz, jr_030_6445                            ; $6427: $20 $1c

jr_030_6429:
    ret                                           ; $6429: $c9


    ret nc                                        ; $642a: $d0

    ld h, l                                       ; $642b: $65
    ld bc, $3866                                  ; $642c: $01 $66 $38
    ld h, h                                       ; $642f: $64
    xor b                                         ; $6430: $a8
    ld h, a                                       ; $6431: $67
    and a                                         ; $6432: $a7
    ld l, c                                       ; $6433: $69
    or b                                          ; $6434: $b0
    ld l, c                                       ; $6435: $69
    cp c                                          ; $6436: $b9
    ld l, c                                       ; $6437: $69
    sbc c                                         ; $6438: $99
    ld a, l                                       ; $6439: $7d
    nop                                           ; $643a: $00
    dec d                                         ; $643b: $15
    nop                                           ; $643c: $00
    ld e, $00                                     ; $643d: $1e $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    ld bc, $990a                                  ; $6442: $01 $0a $99

jr_030_6445:
    ld a, l                                       ; $6445: $7d
    nop                                           ; $6446: $00
    jr z, jr_030_6449                             ; $6447: $28 $00

jr_030_6449:
    rra                                           ; $6449: $1f
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    add b                                         ; $644d: $80
    ld bc, $9916                                  ; $644e: $01 $16 $99
    ld a, l                                       ; $6451: $7d
    nop                                           ; $6452: $00
    jr nz, jr_030_6455                            ; $6453: $20 $00

jr_030_6455:
    add hl, de                                    ; $6455: $19
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    ld b, b                                       ; $6459: $40
    ld bc, $a516                                  ; $645a: $01 $16 $a5
    ld a, l                                       ; $645d: $7d
    nop                                           ; $645e: $00
    daa                                           ; $645f: $27
    nop                                           ; $6460: $00
    inc hl                                        ; $6461: $23
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    ret nz                                        ; $6465: $c0

    ld bc, $990e                                  ; $6466: $01 $0e $99
    ld a, l                                       ; $6469: $7d
    nop                                           ; $646a: $00
    rra                                           ; $646b: $1f
    nop                                           ; $646c: $00
    ld h, $00                                     ; $646d: $26 $00
    nop                                           ; $646f: $00
    nop                                           ; $6470: $00
    ret nz                                        ; $6471: $c0

    ld bc, $7a16                                  ; $6472: $01 $16 $7a
    ld l, d                                       ; $6475: $6a
    nop                                           ; $6476: $00
    jr nz, jr_030_6479                            ; $6477: $20 $00

jr_030_6479:
    rra                                           ; $6479: $1f
    nop                                           ; $647a: $00
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    ret nz                                        ; $647d: $c0

    ld bc, $9928                                  ; $647e: $01 $28 $99
    ld a, l                                       ; $6481: $7d
    nop                                           ; $6482: $00
    dec h                                         ; $6483: $25
    nop                                           ; $6484: $00
    inc e                                         ; $6485: $1c
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    ld b, b                                       ; $6489: $40
    ld bc, $8316                                  ; $648a: $01 $16 $83
    ld l, d                                       ; $648d: $6a
    nop                                           ; $648e: $00
    jr nz, jr_030_6491                            ; $648f: $20 $00

jr_030_6491:
    inc hl                                        ; $6491: $23
    ld d, b                                       ; $6492: $50
    add b                                         ; $6493: $80
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    ld bc, $9904                                  ; $6496: $01 $04 $99
    ld a, l                                       ; $6499: $7d
    nop                                           ; $649a: $00
    ld bc, $0100                                  ; $649b: $01 $00 $01
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    ret nz                                        ; $64a1: $c0

    ld bc, $0027                                  ; $64a2: $01 $27 $00
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    rst $38                                       ; $64ac: $ff
    sbc c                                         ; $64ad: $99
    ld a, l                                       ; $64ae: $7d
    nop                                           ; $64af: $00
    rra                                           ; $64b0: $1f
    nop                                           ; $64b1: $00
    dec h                                         ; $64b2: $25
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    ret nz                                        ; $64b6: $c0

    ld bc, $990a                                  ; $64b7: $01 $0a $99
    ld a, l                                       ; $64ba: $7d
    nop                                           ; $64bb: $00
    rra                                           ; $64bc: $1f
    nop                                           ; $64bd: $00
    dec de                                        ; $64be: $1b
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    ld b, b                                       ; $64c2: $40
    ld bc, $9916                                  ; $64c3: $01 $16 $99
    ld a, l                                       ; $64c6: $7d
    nop                                           ; $64c7: $00
    jr jr_030_64ca                                ; $64c8: $18 $00

jr_030_64ca:
    jr nz, jr_030_64cc                            ; $64ca: $20 $00

jr_030_64cc:
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    ld bc, $9916                                  ; $64cf: $01 $16 $99
    ld a, l                                       ; $64d2: $7d
    nop                                           ; $64d3: $00
    add hl, de                                    ; $64d4: $19
    nop                                           ; $64d5: $00
    dec de                                        ; $64d6: $1b
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    ld b, b                                       ; $64da: $40
    ld bc, $990e                                  ; $64db: $01 $0e $99
    ld a, l                                       ; $64de: $7d
    nop                                           ; $64df: $00
    ld h, $00                                     ; $64e0: $26 $00
    jr nz, jr_030_64e4                            ; $64e2: $20 $00

jr_030_64e4:
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    add b                                         ; $64e6: $80
    ld bc, $7a16                                  ; $64e7: $01 $16 $7a
    ld l, d                                       ; $64ea: $6a
    nop                                           ; $64eb: $00
    rra                                           ; $64ec: $1f
    add b                                         ; $64ed: $80
    jr nz, jr_030_64f0                            ; $64ee: $20 $00

jr_030_64f0:
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    ret nz                                        ; $64f2: $c0

    ld bc, $9928                                  ; $64f3: $01 $28 $99
    ld a, l                                       ; $64f6: $7d
    nop                                           ; $64f7: $00
    ld sp, $1c00                                  ; $64f8: $31 $00 $1c
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    add b                                         ; $64fe: $80
    ld bc, $0003                                  ; $64ff: $01 $03 $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    rst $38                                       ; $6509: $ff
    sbc c                                         ; $650a: $99
    ld a, l                                       ; $650b: $7d
    nop                                           ; $650c: $00
    ld a, [de]                                    ; $650d: $1a
    nop                                           ; $650e: $00
    jr nz, jr_030_6511                            ; $650f: $20 $00

jr_030_6511:
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    ld bc, $a50a                                  ; $6514: $01 $0a $a5
    ld a, l                                       ; $6517: $7d
    nop                                           ; $6518: $00
    rla                                           ; $6519: $17
    nop                                           ; $651a: $00
    jr jr_030_651d                                ; $651b: $18 $00

jr_030_651d:
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    ld bc, $9916                                  ; $6520: $01 $16 $99
    ld a, l                                       ; $6523: $7d
    nop                                           ; $6524: $00
    ld hl, $1b00                                  ; $6525: $21 $00 $1b
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    ld b, b                                       ; $652b: $40
    ld bc, $9916                                  ; $652c: $01 $16 $99
    ld a, l                                       ; $652f: $7d
    nop                                           ; $6530: $00
    ld h, $00                                     ; $6531: $26 $00
    rra                                           ; $6533: $1f
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    add b                                         ; $6537: $80
    ld bc, $990e                                  ; $6538: $01 $0e $99
    ld a, l                                       ; $653b: $7d
    nop                                           ; $653c: $00
    inc e                                         ; $653d: $1c
    nop                                           ; $653e: $00
    dec h                                         ; $653f: $25

jr_030_6540:
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    ret nz                                        ; $6543: $c0

    ld bc, $7a16                                  ; $6544: $01 $16 $7a
    ld l, d                                       ; $6547: $6a
    nop                                           ; $6548: $00
    ld hl, $2080                                  ; $6549: $21 $80 $20
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    ret nz                                        ; $654f: $c0

    ld bc, $9928                                  ; $6550: $01 $28 $99
    ld a, l                                       ; $6553: $7d
    nop                                           ; $6554: $00
    rra                                           ; $6555: $1f
    nop                                           ; $6556: $00
    dec d                                         ; $6557: $15
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    ret nz                                        ; $655b: $c0

    ld bc, $992d                                  ; $655c: $01 $2d $99
    ld a, l                                       ; $655f: $7d
    nop                                           ; $6560: $00
    dec e                                         ; $6561: $1d
    nop                                           ; $6562: $00
    inc de                                        ; $6563: $13
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    ld bc, $990d                                  ; $6568: $01 $0d $99
    ld a, l                                       ; $656b: $7d
    nop                                           ; $656c: $00
    ld hl, $1300                                  ; $656d: $21 $00 $13
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    add b                                         ; $6573: $80
    ld bc, $0016                                  ; $6574: $01 $16 $00
    nop                                           ; $6577: $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    rst $38                                       ; $657e: $ff
    sbc c                                         ; $657f: $99
    ld a, l                                       ; $6580: $7d
    nop                                           ; $6581: $00
    ld a, [de]                                    ; $6582: $1a
    nop                                           ; $6583: $00
    jr nz, jr_030_6586                            ; $6584: $20 $00

jr_030_6586:
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    ld bc, $a50a                                  ; $6589: $01 $0a $a5
    ld a, l                                       ; $658c: $7d
    nop                                           ; $658d: $00
    rla                                           ; $658e: $17
    nop                                           ; $658f: $00
    jr jr_030_6592                                ; $6590: $18 $00

jr_030_6592:
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    ld bc, $9916                                  ; $6595: $01 $16 $99
    ld a, l                                       ; $6598: $7d
    nop                                           ; $6599: $00
    ld hl, $1b00                                  ; $659a: $21 $00 $1b
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    ld b, b                                       ; $65a0: $40
    ld bc, $9916                                  ; $65a1: $01 $16 $99
    ld a, l                                       ; $65a4: $7d
    nop                                           ; $65a5: $00
    ld h, $00                                     ; $65a6: $26 $00
    rra                                           ; $65a8: $1f
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00
    add b                                         ; $65ac: $80
    ld bc, $990e                                  ; $65ad: $01 $0e $99
    ld a, l                                       ; $65b0: $7d
    nop                                           ; $65b1: $00
    ld a, [de]                                    ; $65b2: $1a
    nop                                           ; $65b3: $00
    dec h                                         ; $65b4: $25
    nop                                           ; $65b5: $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    ret nz                                        ; $65b8: $c0

    ld bc, $7a16                                  ; $65b9: $01 $16 $7a
    ld l, d                                       ; $65bc: $6a
    nop                                           ; $65bd: $00
    jr nz, jr_030_6540                            ; $65be: $20 $80

    ld e, $00                                     ; $65c0: $1e $00
    nop                                           ; $65c2: $00
    nop                                           ; $65c3: $00
    ret nz                                        ; $65c4: $c0

    ld bc, $0028                                  ; $65c5: $01 $28 $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    rst $38                                       ; $65cf: $ff
    ld bc, $c000                                  ; $65d0: $01 $00 $c0
    dec c                                         ; $65d3: $0d
    nop                                           ; $65d4: $00
    dec e                                         ; $65d5: $1d
    ld [bc], a                                    ; $65d6: $02
    nop                                           ; $65d7: $00
    ret nz                                        ; $65d8: $c0

    dec bc                                        ; $65d9: $0b
    nop                                           ; $65da: $00
    jr z, jr_030_65e0                             ; $65db: $28 $03

    nop                                           ; $65dd: $00
    ret nz                                        ; $65de: $c0

    dec bc                                        ; $65df: $0b

jr_030_65e0:
    nop                                           ; $65e0: $00
    dec d                                         ; $65e1: $15
    inc b                                         ; $65e2: $04
    nop                                           ; $65e3: $00
    ret nz                                        ; $65e4: $c0

    dec c                                         ; $65e5: $0d
    nop                                           ; $65e6: $00
    inc hl                                        ; $65e7: $23
    dec b                                         ; $65e8: $05
    nop                                           ; $65e9: $00
    ret nz                                        ; $65ea: $c0

    dec c                                         ; $65eb: $0d
    nop                                           ; $65ec: $00
    dec e                                         ; $65ed: $1d
    ld b, $00                                     ; $65ee: $06 $00
    nop                                           ; $65f0: $00
    dec h                                         ; $65f1: $25
    nop                                           ; $65f2: $00
    rra                                           ; $65f3: $1f
    rlca                                          ; $65f4: $07
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    dec de                                        ; $65f7: $1b
    nop                                           ; $65f8: $00
    ld h, $08                                     ; $65f9: $26 $08
    nop                                           ; $65fb: $00
    ret nz                                        ; $65fc: $c0

    dec de                                        ; $65fd: $1b
    nop                                           ; $65fe: $00
    ld h, $ff                                     ; $65ff: $26 $ff
    ld bc, $00ff                                  ; $6601: $01 $ff $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    ld [$ff05], sp                                ; $6607: $08 $05 $ff
    ld bc, $00ff                                  ; $660a: $01 $ff $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    add hl, bc                                    ; $6610: $09
    dec b                                         ; $6611: $05
    rst $38                                       ; $6612: $ff
    ld bc, $00ff                                  ; $6613: $01 $ff $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    ld a, [bc]                                    ; $6619: $0a
    dec b                                         ; $661a: $05
    ld [bc], a                                    ; $661b: $02
    rst $38                                       ; $661c: $ff
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    dec hl                                        ; $6621: $2b
    ld bc, $ff03                                  ; $6622: $01 $03 $ff
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    ld a, [hl+]                                   ; $6629: $2a
    rrca                                          ; $662a: $0f
    rst $38                                       ; $662b: $ff
    ld bc, $00ff                                  ; $662c: $01 $ff $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    dec bc                                        ; $6632: $0b
    dec b                                         ; $6633: $05
    rst $38                                       ; $6634: $ff
    ld hl, $10b1                                  ; $6635: $21 $b1 $10
    rst $18                                       ; $6638: $df
    ld c, $0a                                     ; $6639: $0e $0a
    ld a, $02                                     ; $663b: $3e $02
    rst $18                                       ; $663d: $df
    ld a, [bc]                                    ; $663e: $0a
    ld a, [bc]                                    ; $663f: $0a
    push af                                       ; $6640: $f5
    ld a, $05                                     ; $6641: $3e $05
    rst $18                                       ; $6643: $df
    inc b                                         ; $6644: $04
    ld a, [bc]                                    ; $6645: $0a
    pop af                                        ; $6646: $f1

jr_030_6647:
    rst $18                                       ; $6647: $df
    ld [de], a                                    ; $6648: $12
    ld a, [bc]                                    ; $6649: $0a
    rst $18                                       ; $664a: $df
    inc c                                         ; $664b: $0c
    ld a, [bc]                                    ; $664c: $0a
    push af                                       ; $664d: $f5
    ld a, $05                                     ; $664e: $3e $05
    rst $18                                       ; $6650: $df
    inc b                                         ; $6651: $04
    ld a, [bc]                                    ; $6652: $0a
    pop af                                        ; $6653: $f1
    and a                                         ; $6654: $a7
    jr nz, jr_030_665d                            ; $6655: $20 $06

    ld a, $02                                     ; $6657: $3e $02
    rst $18                                       ; $6659: $df
    ld [$c90a], sp                                ; $665a: $08 $0a $c9

jr_030_665d:
    rst $18                                       ; $665d: $df
    db $10                                        ; $665e: $10
    ld a, [bc]                                    ; $665f: $0a
    ld a, $02                                     ; $6660: $3e $02
    rst $18                                       ; $6662: $df
    ld [$c90a], sp                                ; $6663: $08 $0a $c9
    call Call_030_6eb3                            ; $6666: $cd $b3 $6e
    jr z, jr_030_6673                             ; $6669: $28 $08

    ld hl, $10db                                  ; $666b: $21 $db $10
    rst $18                                       ; $666e: $df
    ld c, $0a                                     ; $666f: $0e $0a
    jr jr_030_6679                                ; $6671: $18 $06

jr_030_6673:
    ld hl, $10ce                                  ; $6673: $21 $ce $10
    rst $18                                       ; $6676: $df
    ld c, $0a                                     ; $6677: $0e $0a

jr_030_6679:
    rst $30                                       ; $6679: $f7
    ld b, b                                       ; $667a: $40
    jr jr_030_6647                                ; $667b: $18 $ca

    add hl, sp                                    ; $667d: $39
    ld h, a                                       ; $667e: $67
    ld hl, $10d9                                  ; $667f: $21 $d9 $10
    rst $18                                       ; $6682: $df
    ld c, $0a                                     ; $6683: $0e $0a
    ld a, $08                                     ; $6685: $3e $08
    rst $18                                       ; $6687: $df
    ld [$c90a], sp                                ; $6688: $08 $0a $c9
    call Call_030_6eb3                            ; $668b: $cd $b3 $6e
    jr z, jr_030_669c                             ; $668e: $28 $0c

    ld hl, $10db                                  ; $6690: $21 $db $10
    rst $18                                       ; $6693: $df
    ld c, $0a                                     ; $6694: $0e $0a
    rst $30                                       ; $6696: $f7
    ld h, b                                       ; $6697: $60
    jr @-$34                                      ; $6698: $18 $ca

    add hl, sp                                    ; $669a: $39
    ld h, a                                       ; $669b: $67

jr_030_669c:
    ld hl, $10ce                                  ; $669c: $21 $ce $10
    rst $18                                       ; $669f: $df
    ld c, $0a                                     ; $66a0: $0e $0a
    rst $30                                       ; $66a2: $f7
    ld h, b                                       ; $66a3: $60
    jr jr_030_66ce                                ; $66a4: $18 $28

    ld e, d                                       ; $66a6: $5a
    ld hl, $10d9                                  ; $66a7: $21 $d9 $10
    rst $18                                       ; $66aa: $df
    ld c, $0a                                     ; $66ab: $0e $0a
    ld a, $06                                     ; $66ad: $3e $06
    rst $18                                       ; $66af: $df
    ld [$c90a], sp                                ; $66b0: $08 $0a $c9
    call Call_030_6eb3                            ; $66b3: $cd $b3 $6e
    jr z, jr_030_66c3                             ; $66b6: $28 $0b

    ld hl, $10db                                  ; $66b8: $21 $db $10
    rst $18                                       ; $66bb: $df
    ld c, $0a                                     ; $66bc: $0e $0a
    rst $30                                       ; $66be: $f7
    add b                                         ; $66bf: $80
    jr jr_030_66ea                                ; $66c0: $18 $28

    halt                                          ; $66c2: $76

jr_030_66c3:
    ld hl, $10ce                                  ; $66c3: $21 $ce $10
    rst $18                                       ; $66c6: $df
    ld c, $0a                                     ; $66c7: $0e $0a
    rst $30                                       ; $66c9: $f7
    add b                                         ; $66ca: $80
    jr jr_030_66f5                                ; $66cb: $18 $28

    inc sp                                        ; $66cd: $33

jr_030_66ce:
    ld hl, $10d9                                  ; $66ce: $21 $d9 $10
    rst $18                                       ; $66d1: $df
    ld c, $0a                                     ; $66d2: $0e $0a
    ld a, $06                                     ; $66d4: $3e $06
    rst $18                                       ; $66d6: $df
    ld [$c90a], sp                                ; $66d7: $08 $0a $c9
    call Call_030_6eb3                            ; $66da: $cd $b3 $6e
    jr z, jr_030_66ea                             ; $66dd: $28 $0b

    ld hl, $10db                                  ; $66df: $21 $db $10
    rst $18                                       ; $66e2: $df
    ld c, $0a                                     ; $66e3: $0e $0a
    rst $30                                       ; $66e5: $f7
    and b                                         ; $66e6: $a0
    jr jr_030_6711                                ; $66e7: $18 $28

    ld c, a                                       ; $66e9: $4f

jr_030_66ea:
    ld hl, $10ce                                  ; $66ea: $21 $ce $10
    rst $18                                       ; $66ed: $df
    ld c, $0a                                     ; $66ee: $0e $0a
    rst $30                                       ; $66f0: $f7
    and b                                         ; $66f1: $a0
    jr jr_030_671c                                ; $66f2: $18 $28

    inc c                                         ; $66f4: $0c

jr_030_66f5:
    ld hl, $10d9                                  ; $66f5: $21 $d9 $10
    rst $18                                       ; $66f8: $df
    ld c, $0a                                     ; $66f9: $0e $0a
    ld a, $06                                     ; $66fb: $3e $06
    rst $18                                       ; $66fd: $df
    ld [$c90a], sp                                ; $66fe: $08 $0a $c9
    call Call_030_6df6                            ; $6701: $cd $f6 $6d
    ld a, $06                                     ; $6704: $3e $06
    rst $18                                       ; $6706: $df
    ld a, [bc]                                    ; $6707: $0a
    ld a, [bc]                                    ; $6708: $0a
    push af                                       ; $6709: $f5
    ld a, $05                                     ; $670a: $3e $05
    rst $18                                       ; $670c: $df
    inc b                                         ; $670d: $04
    ld a, [bc]                                    ; $670e: $0a
    pop af                                        ; $670f: $f1
    rst $18                                       ; $6710: $df

jr_030_6711:
    ld [de], a                                    ; $6711: $12
    ld a, [bc]                                    ; $6712: $0a
    rst $18                                       ; $6713: $df
    inc c                                         ; $6714: $0c
    ld a, [bc]                                    ; $6715: $0a
    push af                                       ; $6716: $f5
    ld a, $05                                     ; $6717: $3e $05
    rst $18                                       ; $6719: $df
    inc b                                         ; $671a: $04
    ld a, [bc]                                    ; $671b: $0a

jr_030_671c:
    pop af                                        ; $671c: $f1
    and a                                         ; $671d: $a7
    push af                                       ; $671e: $f5
    ld a, $05                                     ; $671f: $3e $05
    rst $18                                       ; $6721: $df
    inc b                                         ; $6722: $04
    ld a, [bc]                                    ; $6723: $0a
    pop af                                        ; $6724: $f1
    jr z, jr_030_6733                             ; $6725: $28 $0c

    ld hl, $10d1                                  ; $6727: $21 $d1 $10
    rst $18                                       ; $672a: $df
    ld c, $0a                                     ; $672b: $0e $0a
    ld a, $06                                     ; $672d: $3e $06
    rst $18                                       ; $672f: $df
    ld [$c90a], sp                                ; $6730: $08 $0a $c9

jr_030_6733:
    ld hl, $10d2                                  ; $6733: $21 $d2 $10
    rst $18                                       ; $6736: $df
    ld c, $0a                                     ; $6737: $0e $0a
    ld a, $06                                     ; $6739: $3e $06
    rst $18                                       ; $673b: $df
    ld a, [bc]                                    ; $673c: $0a
    ld a, [bc]                                    ; $673d: $0a
    rst $18                                       ; $673e: $df
    ld [de], a                                    ; $673f: $12
    ld a, [bc]                                    ; $6740: $0a
    rst $18                                       ; $6741: $df
    inc c                                         ; $6742: $0c
    ld a, [bc]                                    ; $6743: $0a
    push af                                       ; $6744: $f5
    ld a, $05                                     ; $6745: $3e $05
    rst $18                                       ; $6747: $df
    inc b                                         ; $6748: $04
    ld a, [bc]                                    ; $6749: $0a
    pop af                                        ; $674a: $f1
    and a                                         ; $674b: $a7
    jr z, jr_030_675a                             ; $674c: $28 $0c

    ld hl, $10d3                                  ; $674e: $21 $d3 $10
    rst $18                                       ; $6751: $df
    ld c, $0a                                     ; $6752: $0e $0a
    ld a, $06                                     ; $6754: $3e $06
    rst $18                                       ; $6756: $df
    ld [$c90a], sp                                ; $6757: $08 $0a $c9

jr_030_675a:
    ld hl, $10d4                                  ; $675a: $21 $d4 $10
    rst $18                                       ; $675d: $df
    ld c, $0a                                     ; $675e: $0e $0a
    ld a, $0a                                     ; $6760: $3e $0a
    ld [$c967], a                                 ; $6762: $ea $67 $c9
    ld a, $06                                     ; $6765: $3e $06
    rst $18                                       ; $6767: $df
    ld [$3e0a], sp                                ; $6768: $08 $0a $3e
    nop                                           ; $676b: $00
    ld [$c3e0], a                                 ; $676c: $ea $e0 $c3
    ld [$c3e1], a                                 ; $676f: $ea $e1 $c3
    rst $18                                       ; $6772: $df
    inc e                                         ; $6773: $1c
    db $10                                        ; $6774: $10
    rst $18                                       ; $6775: $df
    inc h                                         ; $6776: $24
    db $10                                        ; $6777: $10
    ld a, $05                                     ; $6778: $3e $05
    ld [$c834], a                                 ; $677a: $ea $34 $c8
    ld bc, $8000                                  ; $677d: $01 $00 $80
    rst $18                                       ; $6780: $df
    ld e, $02                                     ; $6781: $1e $02
    ld bc, $ff01                                  ; $6783: $01 $01 $ff
    rst $18                                       ; $6786: $df
    ld e, $02                                     ; $6787: $1e $02
    call Call_030_6b90                            ; $6789: $cd $90 $6b
    ld a, $00                                     ; $678c: $3e $00
    rst $18                                       ; $678e: $df
    ld e, $10                                     ; $678f: $1e $10
    ld de, $c000                                  ; $6791: $11 $00 $c0
    rst $18                                       ; $6794: $df
    ld [hl+], a                                   ; $6795: $22
    db $10                                        ; $6796: $10
    ldh a, [$95]                                  ; $6797: $f0 $95
    ld hl, $6c0f                                  ; $6799: $21 $0f $6c
    rst $18                                       ; $679c: $df
    ld a, [de]                                    ; $679d: $1a
    db $10                                        ; $679e: $10
    ld a, $05                                     ; $679f: $3e $05
    rst $18                                       ; $67a1: $df
    ld [de], a                                    ; $67a2: $12
    db $10                                        ; $67a3: $10
    rst $18                                       ; $67a4: $df
    jr nc, jr_030_67b7                            ; $67a5: $30 $10

    ret                                           ; $67a7: $c9


    ld [bc], a                                    ; $67a8: $02
    rst $38                                       ; $67a9: $ff
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    dec [hl]                                      ; $67ac: $35
    ld h, [hl]                                    ; $67ad: $66
    inc bc                                        ; $67ae: $03
    nop                                           ; $67af: $00
    inc bc                                        ; $67b0: $03
    rst $38                                       ; $67b1: $ff
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    or h                                          ; $67b4: $b4
    db $10                                        ; $67b5: $10
    inc bc                                        ; $67b6: $03

jr_030_67b7:
    nop                                           ; $67b7: $00
    inc b                                         ; $67b8: $04
    rst $38                                       ; $67b9: $ff
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    or l                                          ; $67bc: $b5
    db $10                                        ; $67bd: $10
    inc bc                                        ; $67be: $03
    nop                                           ; $67bf: $00
    dec b                                         ; $67c0: $05
    rst $38                                       ; $67c1: $ff
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    or [hl]                                       ; $67c4: $b6
    db $10                                        ; $67c5: $10
    inc bc                                        ; $67c6: $03
    nop                                           ; $67c7: $00
    ld b, $ff                                     ; $67c8: $06 $ff
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    or a                                          ; $67cc: $b7
    db $10                                        ; $67cd: $10
    inc bc                                        ; $67ce: $03
    nop                                           ; $67cf: $00
    ld [$00ff], sp                                ; $67d0: $08 $ff $00
    nop                                           ; $67d3: $00
    ld h, [hl]                                    ; $67d4: $66
    ld h, [hl]                                    ; $67d5: $66
    inc bc                                        ; $67d6: $03
    nop                                           ; $67d7: $00
    add hl, bc                                    ; $67d8: $09
    add b                                         ; $67d9: $80
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    ldh [rOCPS], a                                ; $67dc: $e0 $6a
    stop                                          ; $67de: $10 $00
    add hl, bc                                    ; $67e0: $09
    rst $38                                       ; $67e1: $ff
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    adc h                                         ; $67e4: $8c
    ld l, d                                       ; $67e5: $6a
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    rst $38                                       ; $67e8: $ff
    ld [bc], a                                    ; $67e9: $02
    rst $38                                       ; $67ea: $ff
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    cp c                                          ; $67ed: $b9
    db $10                                        ; $67ee: $10
    inc bc                                        ; $67ef: $03
    nop                                           ; $67f0: $00
    inc bc                                        ; $67f1: $03
    rst $38                                       ; $67f2: $ff
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    cp d                                          ; $67f5: $ba
    db $10                                        ; $67f6: $10
    inc bc                                        ; $67f7: $03
    nop                                           ; $67f8: $00
    inc b                                         ; $67f9: $04
    rst $38                                       ; $67fa: $ff
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    cp e                                          ; $67fd: $bb
    db $10                                        ; $67fe: $10
    inc bc                                        ; $67ff: $03
    nop                                           ; $6800: $00
    dec b                                         ; $6801: $05
    rst $38                                       ; $6802: $ff
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    cp h                                          ; $6805: $bc
    db $10                                        ; $6806: $10
    inc bc                                        ; $6807: $03
    nop                                           ; $6808: $00
    ld b, $ff                                     ; $6809: $06 $ff
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00
    adc e                                         ; $680d: $8b
    ld h, [hl]                                    ; $680e: $66
    inc bc                                        ; $680f: $03
    nop                                           ; $6810: $00
    ld [$00ff], sp                                ; $6811: $08 $ff $00
    nop                                           ; $6814: $00
    ld e, l                                       ; $6815: $5d
    inc c                                         ; $6816: $0c
    inc bc                                        ; $6817: $03
    nop                                           ; $6818: $00
    rst $38                                       ; $6819: $ff
    rst $30                                       ; $681a: $f7
    jr nz, @+$21                                  ; $681b: $20 $1f

    jp nz, Jump_030_71af                          ; $681d: $c2 $af $71

    rst $30                                       ; $6820: $f7
    ldh [rNR12], a                                ; $6821: $e0 $12
    jp nz, Jump_030_70b0                          ; $6823: $c2 $b0 $70

    rst $30                                       ; $6826: $f7
    ld b, b                                       ; $6827: $40
    inc de                                        ; $6828: $13
    jp nz, Jump_030_70b0                          ; $6829: $c2 $b0 $70

    rst $30                                       ; $682c: $f7
    ld b, b                                       ; $682d: $40
    ld c, $c2                                     ; $682e: $0e $c2
    ld b, d                                       ; $6830: $42
    ld l, a                                       ; $6831: $6f
    ld hl, $1529                                  ; $6832: $21 $29 $15
    rst $18                                       ; $6835: $df
    ld c, $0a                                     ; $6836: $0e $0a
    ld a, $08                                     ; $6838: $3e $08
    rst $18                                       ; $683a: $df
    ld [$c90a], sp                                ; $683b: $08 $0a $c9
    rst $30                                       ; $683e: $f7
    jr nz, @+$21                                  ; $683f: $20 $1f

    jp nz, Jump_030_71af                          ; $6841: $c2 $af $71

    rst $30                                       ; $6844: $f7
    ldh [rNR12], a                                ; $6845: $e0 $12
    jp nz, Jump_030_70b0                          ; $6847: $c2 $b0 $70

    rst $30                                       ; $684a: $f7
    ld b, b                                       ; $684b: $40
    inc de                                        ; $684c: $13
    jp nz, Jump_030_70b0                          ; $684d: $c2 $b0 $70

    rst $30                                       ; $6850: $f7
    ld b, b                                       ; $6851: $40
    ld c, $c2                                     ; $6852: $0e $c2
    ld b, d                                       ; $6854: $42
    ld l, a                                       ; $6855: $6f
    ld hl, $152a                                  ; $6856: $21 $2a $15
    rst $18                                       ; $6859: $df
    ld c, $0a                                     ; $685a: $0e $0a
    ld a, $09                                     ; $685c: $3e $09
    rst $18                                       ; $685e: $df
    ld [$c90a], sp                                ; $685f: $08 $0a $c9
    rst $30                                       ; $6862: $f7
    jr nz, @+$21                                  ; $6863: $20 $1f

    jp nz, Jump_030_71af                          ; $6865: $c2 $af $71

    rst $30                                       ; $6868: $f7
    ldh [rNR12], a                                ; $6869: $e0 $12
    jp nz, Jump_030_70b0                          ; $686b: $c2 $b0 $70

    rst $30                                       ; $686e: $f7
    ld b, b                                       ; $686f: $40
    inc de                                        ; $6870: $13
    jp nz, Jump_030_70b0                          ; $6871: $c2 $b0 $70

    rst $30                                       ; $6874: $f7
    ld b, b                                       ; $6875: $40
    ld c, $c2                                     ; $6876: $0e $c2
    ld b, d                                       ; $6878: $42
    ld l, a                                       ; $6879: $6f
    ld hl, $152b                                  ; $687a: $21 $2b $15
    rst $18                                       ; $687d: $df
    ld c, $0a                                     ; $687e: $0e $0a
    ld a, $0a                                     ; $6880: $3e $0a
    rst $18                                       ; $6882: $df
    ld [$c90a], sp                                ; $6883: $08 $0a $c9
    ld [bc], a                                    ; $6886: $02
    rst $38                                       ; $6887: $ff
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    cp l                                          ; $688a: $bd
    db $10                                        ; $688b: $10
    inc bc                                        ; $688c: $03
    nop                                           ; $688d: $00
    inc bc                                        ; $688e: $03
    rst $38                                       ; $688f: $ff
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    cp [hl]                                       ; $6892: $be
    db $10                                        ; $6893: $10
    inc bc                                        ; $6894: $03
    nop                                           ; $6895: $00
    inc b                                         ; $6896: $04
    rst $38                                       ; $6897: $ff
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    cp a                                          ; $689a: $bf
    db $10                                        ; $689b: $10
    inc bc                                        ; $689c: $03
    nop                                           ; $689d: $00
    dec b                                         ; $689e: $05
    rst $38                                       ; $689f: $ff
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    ret nz                                        ; $68a2: $c0

    db $10                                        ; $68a3: $10
    inc bc                                        ; $68a4: $03
    nop                                           ; $68a5: $00
    ld b, $ff                                     ; $68a6: $06 $ff
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    or e                                          ; $68aa: $b3
    ld h, [hl]                                    ; $68ab: $66
    inc bc                                        ; $68ac: $03
    nop                                           ; $68ad: $00
    ld [$00ff], sp                                ; $68ae: $08 $ff $00
    nop                                           ; $68b1: $00
    ld a, [de]                                    ; $68b2: $1a
    ld l, b                                       ; $68b3: $68
    ld bc, $0900                                  ; $68b4: $01 $00 $09
    rst $38                                       ; $68b7: $ff
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    ld a, $68                                     ; $68ba: $3e $68
    ld bc, $0a00                                  ; $68bc: $01 $00 $0a
    rst $38                                       ; $68bf: $ff
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    ld h, d                                       ; $68c2: $62
    ld l, b                                       ; $68c3: $68
    ld bc, $ff00                                  ; $68c4: $01 $00 $ff
    ld [bc], a                                    ; $68c7: $02
    rst $38                                       ; $68c8: $ff
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    pop bc                                        ; $68cb: $c1
    db $10                                        ; $68cc: $10
    inc bc                                        ; $68cd: $03
    nop                                           ; $68ce: $00
    inc bc                                        ; $68cf: $03
    rst $38                                       ; $68d0: $ff
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    jp nz, Jump_000_0310                          ; $68d3: $c2 $10 $03

    nop                                           ; $68d6: $00
    inc b                                         ; $68d7: $04
    rst $38                                       ; $68d8: $ff
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    jp Jump_000_0310                              ; $68db: $c3 $10 $03


    nop                                           ; $68de: $00
    dec b                                         ; $68df: $05
    rst $38                                       ; $68e0: $ff
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    call nz, Call_000_0310                        ; $68e3: $c4 $10 $03
    nop                                           ; $68e6: $00
    ld b, $ff                                     ; $68e7: $06 $ff
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    jp c, $0366                                   ; $68eb: $da $66 $03

    nop                                           ; $68ee: $00
    rst $38                                       ; $68ef: $ff
    ld [bc], a                                    ; $68f0: $02
    rst $38                                       ; $68f1: $ff
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    push bc                                       ; $68f4: $c5
    db $10                                        ; $68f5: $10
    inc bc                                        ; $68f6: $03
    nop                                           ; $68f7: $00
    inc bc                                        ; $68f8: $03
    rst $38                                       ; $68f9: $ff
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    add $10                                       ; $68fc: $c6 $10
    inc bc                                        ; $68fe: $03
    nop                                           ; $68ff: $00
    inc b                                         ; $6900: $04
    rst $38                                       ; $6901: $ff
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    rst $00                                       ; $6904: $c7
    db $10                                        ; $6905: $10
    inc bc                                        ; $6906: $03
    nop                                           ; $6907: $00
    dec b                                         ; $6908: $05
    rst $38                                       ; $6909: $ff
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    ret z                                         ; $690c: $c8

    db $10                                        ; $690d: $10
    inc bc                                        ; $690e: $03
    nop                                           ; $690f: $00
    ld b, $ff                                     ; $6910: $06 $ff
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    jp c, $0366                                   ; $6914: $da $66 $03

    nop                                           ; $6917: $00
    rst $38                                       ; $6918: $ff
    ld [bc], a                                    ; $6919: $02
    rst $38                                       ; $691a: $ff
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    ret                                           ; $691d: $c9


    db $10                                        ; $691e: $10
    inc bc                                        ; $691f: $03
    nop                                           ; $6920: $00
    inc bc                                        ; $6921: $03
    rst $38                                       ; $6922: $ff
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    jp z, Jump_000_0310                           ; $6925: $ca $10 $03

    nop                                           ; $6928: $00
    inc b                                         ; $6929: $04
    rst $38                                       ; $692a: $ff
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    rl b                                          ; $692d: $cb $10
    inc bc                                        ; $692f: $03
    nop                                           ; $6930: $00
    dec b                                         ; $6931: $05
    rst $38                                       ; $6932: $ff
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    call z, Call_000_0310                         ; $6935: $cc $10 $03
    nop                                           ; $6938: $00
    ld b, $ff                                     ; $6939: $06 $ff
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    jp c, $0366                                   ; $693d: $da $66 $03

    nop                                           ; $6940: $00
    rst $38                                       ; $6941: $ff
    ld a, [$c810]                                 ; $6942: $fa $10 $c8
    cp $02                                        ; $6945: $fe $02
    jr z, jr_030_69a6                             ; $6947: $28 $5d

    rst $20                                       ; $6949: $e7
    ret nz                                        ; $694a: $c0

    ld de, $5921                                  ; $694b: $11 $21 $59
    inc c                                         ; $694e: $0c
    rst $18                                       ; $694f: $df
    ld c, $0a                                     ; $6950: $0e $0a
    ld a, $80                                     ; $6952: $3e $80
    rst $18                                       ; $6954: $df
    ld [$3e0a], sp                                ; $6955: $08 $0a $3e
    ld [$0001], sp                                ; $6958: $08 $01 $00
    inc sp                                        ; $695b: $33
    ld de, $1c00                                  ; $695c: $11 $00 $1c
    rst $18                                       ; $695f: $df
    jr nz, @+$0c                                  ; $6960: $20 $0a

    ld a, $00                                     ; $6962: $3e $00
    ld b, $01                                     ; $6964: $06 $01
    rst $18                                       ; $6966: $df
    ld a, [hl+]                                   ; $6967: $2a
    ld a, [bc]                                    ; $6968: $0a
    rst $08                                       ; $6969: $cf
    adc d                                         ; $696a: $8a
    ld a, $00                                     ; $696b: $3e $00
    ld de, $ff80                                  ; $696d: $11 $80 $ff
    rst $18                                       ; $6970: $df
    ld b, b                                       ; $6971: $40
    ld a, [bc]                                    ; $6972: $0a
    ld a, $00                                     ; $6973: $3e $00
    ld b, $80                                     ; $6975: $06 $80
    ld de, $0200                                  ; $6977: $11 $00 $02
    rst $18                                       ; $697a: $df
    jr z, jr_030_6987                             ; $697b: $28 $0a

    ld a, $00                                     ; $697d: $3e $00
    rst $18                                       ; $697f: $df
    ld e, $0a                                     ; $6980: $1e $0a
    ld a, $00                                     ; $6982: $3e $00
    ld b, $00                                     ; $6984: $06 $00
    rst $18                                       ; $6986: $df

jr_030_6987:
    ld a, [hl+]                                   ; $6987: $2a
    ld a, [bc]                                    ; $6988: $0a
    ld a, $08                                     ; $6989: $3e $08
    ld b, $80                                     ; $698b: $06 $80
    ld de, $0200                                  ; $698d: $11 $00 $02
    rst $18                                       ; $6990: $df
    jr z, @+$0c                                   ; $6991: $28 $0a

    ld a, $08                                     ; $6993: $3e $08
    rst $18                                       ; $6995: $df
    ld e, $0a                                     ; $6996: $1e $0a
    ld hl, $0c5d                                  ; $6998: $21 $5d $0c
    rst $18                                       ; $699b: $df
    ld c, $0a                                     ; $699c: $0e $0a
    ld a, $08                                     ; $699e: $3e $08
    rst $18                                       ; $69a0: $df
    ld [$cd0a], sp                                ; $69a1: $08 $0a $cd
    xor l                                         ; $69a4: $ad
    ld a, [hl]                                    ; $69a5: $7e

jr_030_69a6:
    ret                                           ; $69a6: $c9


    rrca                                          ; $69a7: $0f
    stop                                          ; $69a8: $10 $00
    nop                                           ; $69aa: $00
    ld b, d                                       ; $69ab: $42
    ld l, c                                       ; $69ac: $69
    ld b, $00                                     ; $69ad: $06 $00
    rst $38                                       ; $69af: $ff
    rrca                                          ; $69b0: $0f
    rst $38                                       ; $69b1: $ff
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    db $ec                                        ; $69b4: $ec
    ld l, d                                       ; $69b5: $6a
    ld bc, $ff00                                  ; $69b6: $01 $00 $ff
    ld a, [$c46a]                                 ; $69b9: $fa $6a $c4
    cp $fa                                        ; $69bc: $fe $fa
    jr nz, jr_030_69c6                            ; $69be: $20 $06

    xor a                                         ; $69c0: $af
    ld hl, $c4b4                                  ; $69c1: $21 $b4 $c4
    ld [hl+], a                                   ; $69c4: $22
    ld [hl+], a                                   ; $69c5: $22

jr_030_69c6:
    ld a, [$c450]                                 ; $69c6: $fa $50 $c4
    cp $17                                        ; $69c9: $fe $17
    jr nz, jr_030_6a08                            ; $69cb: $20 $3b

    ldh a, [$95]                                  ; $69cd: $f0 $95
    ld hl, $657f                                  ; $69cf: $21 $7f $65
    rst $18                                       ; $69d2: $df
    ld b, $0a                                     ; $69d3: $06 $0a
    ld hl, $68c7                                  ; $69d5: $21 $c7 $68
    ld de, $000c                                  ; $69d8: $11 $0c $00
    rst $18                                       ; $69db: $df
    ld c, h                                       ; $69dc: $4c
    ld a, [bc]                                    ; $69dd: $0a
    ld hl, $662c                                  ; $69de: $21 $2c $66
    ld de, $0008                                  ; $69e1: $11 $08 $00
    rst $18                                       ; $69e4: $df
    ld c, h                                       ; $69e5: $4c
    ld a, [bc]                                    ; $69e6: $0a
    rst $30                                       ; $69e7: $f7
    ld h, b                                       ; $69e8: $60
    ld de, $0b28                                  ; $69e9: $11 $28 $0b
    ld hl, $6919                                  ; $69ec: $21 $19 $69
    ld de, $000c                                  ; $69ef: $11 $0c $00
    rst $18                                       ; $69f2: $df
    ld c, h                                       ; $69f3: $4c
    ld a, [bc]                                    ; $69f4: $0a
    jr jr_030_6a05                                ; $69f5: $18 $0e

    rst $30                                       ; $69f7: $f7
    ld h, b                                       ; $69f8: $60
    ld c, $28                                     ; $69f9: $0e $28
    add hl, bc                                    ; $69fb: $09
    ld hl, $68f0                                  ; $69fc: $21 $f0 $68
    ld de, $000c                                  ; $69ff: $11 $0c $00
    rst $18                                       ; $6a02: $df
    ld c, h                                       ; $6a03: $4c
    ld a, [bc]                                    ; $6a04: $0a

jr_030_6a05:
    ld a, [$c450]                                 ; $6a05: $fa $50 $c4

jr_030_6a08:
    cp $14                                        ; $6a08: $fe $14
    jr nz, jr_030_6a28                            ; $6a0a: $20 $1c

    ldh a, [$95]                                  ; $6a0c: $f0 $95
    ld hl, $650a                                  ; $6a0e: $21 $0a $65
    rst $18                                       ; $6a11: $df
    ld b, $0a                                     ; $6a12: $06 $0a
    ld hl, $6886                                  ; $6a14: $21 $86 $68
    ld de, $000c                                  ; $6a17: $11 $0c $00
    rst $18                                       ; $6a1a: $df
    ld c, h                                       ; $6a1b: $4c
    ld a, [bc]                                    ; $6a1c: $0a
    ld hl, $6613                                  ; $6a1d: $21 $13 $66
    ld de, $0008                                  ; $6a20: $11 $08 $00
    rst $18                                       ; $6a23: $df
    ld c, h                                       ; $6a24: $4c
    ld a, [bc]                                    ; $6a25: $0a
    jr jr_030_6a58                                ; $6a26: $18 $30

jr_030_6a28:
    cp $11                                        ; $6a28: $fe $11
    jr nz, jr_030_6a58                            ; $6a2a: $20 $2c

    ldh a, [$95]                                  ; $6a2c: $f0 $95
    ld hl, $64ad                                  ; $6a2e: $21 $ad $64
    rst $18                                       ; $6a31: $df
    ld b, $0a                                     ; $6a32: $06 $0a
    ld hl, $67e9                                  ; $6a34: $21 $e9 $67
    ld de, $000c                                  ; $6a37: $11 $0c $00
    rst $18                                       ; $6a3a: $df
    ld c, h                                       ; $6a3b: $4c
    ld a, [bc]                                    ; $6a3c: $0a
    ld hl, $660a                                  ; $6a3d: $21 $0a $66
    ld de, $0008                                  ; $6a40: $11 $08 $00
    rst $18                                       ; $6a43: $df
    ld c, h                                       ; $6a44: $4c
    ld a, [bc]                                    ; $6a45: $0a
    rst $30                                       ; $6a46: $f7
    ret nz                                        ; $6a47: $c0

    ld de, $0d20                                  ; $6a48: $11 $20 $0d
    ld a, $08                                     ; $6a4b: $3e $08
    ld bc, $3f00                                  ; $6a4d: $01 $00 $3f
    ld de, $3f00                                  ; $6a50: $11 $00 $3f
    rst $18                                       ; $6a53: $df
    jr nz, @+$0c                                  ; $6a54: $20 $0a

    jr jr_030_6a58                                ; $6a56: $18 $00

jr_030_6a58:
    ld a, [$c46a]                                 ; $6a58: $fa $6a $c4
    cp $fa                                        ; $6a5b: $fe $fa
    jr nz, jr_030_6a73                            ; $6a5d: $20 $14

    ld a, [$c967]                                 ; $6a5f: $fa $67 $c9
    cp $14                                        ; $6a62: $fe $14
    jr z, jr_030_6a74                             ; $6a64: $28 $0e

    cp $0a                                        ; $6a66: $fe $0a
    jr z, jr_030_6a6b                             ; $6a68: $28 $01

    ret                                           ; $6a6a: $c9


jr_030_6a6b:
    call Call_030_6cf2                            ; $6a6b: $cd $f2 $6c
    ld a, $00                                     ; $6a6e: $3e $00
    ld [$c967], a                                 ; $6a70: $ea $67 $c9

jr_030_6a73:
    ret                                           ; $6a73: $c9


jr_030_6a74:
    ld a, $00                                     ; $6a74: $3e $00
    ld [$c967], a                                 ; $6a76: $ea $67 $c9
    ret                                           ; $6a79: $c9


    dec c                                         ; $6a7a: $0d
    dec de                                        ; $6a7b: $1b
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    dec c                                         ; $6a7e: $0d
    rla                                           ; $6a7f: $17
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    ld bc, $1044                                  ; $6a83: $01 $44 $10
    inc b                                         ; $6a86: $04
    ld bc, $0c3c                                  ; $6a87: $01 $3c $0c
    ld sp, hl                                     ; $6a8a: $f9
    rst $38                                       ; $6a8b: $ff
    ld hl, $10b8                                  ; $6a8c: $21 $b8 $10
    rst $18                                       ; $6a8f: $df
    ld c, $0a                                     ; $6a90: $0e $0a
    ld a, $09                                     ; $6a92: $3e $09
    rst $18                                       ; $6a94: $df
    ld [$3e0a], sp                                ; $6a95: $08 $0a $3e
    ld a, [bc]                                    ; $6a98: $0a
    ld bc, $2100                                  ; $6a99: $01 $00 $21
    ld de, $2400                                  ; $6a9c: $11 $00 $24
    rst $18                                       ; $6a9f: $df
    jr nz, @+$0c                                  ; $6aa0: $20 $0a

    ld a, $0a                                     ; $6aa2: $3e $0a
    ld bc, $0008                                  ; $6aa4: $01 $08 $00
    rst $18                                       ; $6aa7: $df
    ld d, $0a                                     ; $6aa8: $16 $0a
    push af                                       ; $6aaa: $f5
    ld a, $05                                     ; $6aab: $3e $05
    rst $18                                       ; $6aad: $df
    inc b                                         ; $6aae: $04
    ld a, [bc]                                    ; $6aaf: $0a
    pop af                                        ; $6ab0: $f1
    ld a, $09                                     ; $6ab1: $3e $09
    ld b, a                                       ; $6ab3: $47
    ld a, $04                                     ; $6ab4: $3e $04
    rst $18                                       ; $6ab6: $df
    ld [hl-], a                                   ; $6ab7: $32
    ld a, [bc]                                    ; $6ab8: $0a
    push af                                       ; $6ab9: $f5
    ld a, $3c                                     ; $6aba: $3e $3c
    rst $18                                       ; $6abc: $df
    inc b                                         ; $6abd: $04
    ld a, [bc]                                    ; $6abe: $0a
    pop af                                        ; $6abf: $f1
    rst $08                                       ; $6ac0: $cf
    ld c, b                                       ; $6ac1: $48
    ld a, $0a                                     ; $6ac2: $3e $0a
    ld bc, $2000                                  ; $6ac4: $01 $00 $20
    ld de, $1f00                                  ; $6ac7: $11 $00 $1f
    rst $18                                       ; $6aca: $df
    ld [hl+], a                                   ; $6acb: $22
    ld a, [bc]                                    ; $6acc: $0a
    ld a, $0a                                     ; $6acd: $3e $0a
    rst $18                                       ; $6acf: $df
    ld e, $0a                                     ; $6ad0: $1e $0a
    rst $08                                       ; $6ad2: $cf
    ld e, d                                       ; $6ad3: $5a
    ld a, $0a                                     ; $6ad4: $3e $0a
    ld bc, $3f00                                  ; $6ad6: $01 $00 $3f
    ld de, $3f00                                  ; $6ad9: $11 $00 $3f
    rst $18                                       ; $6adc: $df
    jr nz, jr_030_6ae9                            ; $6add: $20 $0a

    ret                                           ; $6adf: $c9


    ld hl, $10b8                                  ; $6ae0: $21 $b8 $10
    rst $18                                       ; $6ae3: $df
    ld c, $0a                                     ; $6ae4: $0e $0a
    ld a, $09                                     ; $6ae6: $3e $09
    rst $18                                       ; $6ae8: $df

jr_030_6ae9:
    ld [$c90a], sp                                ; $6ae9: $08 $0a $c9
    rst $18                                       ; $6aec: $df
    nop                                           ; $6aed: $00
    ld a, [bc]                                    ; $6aee: $0a
    ld hl, $0c60                                  ; $6aef: $21 $60 $0c
    rst $18                                       ; $6af2: $df
    ld c, $0a                                     ; $6af3: $0e $0a
    ld a, $80                                     ; $6af5: $3e $80
    rst $18                                       ; $6af7: $df
    ld a, [bc]                                    ; $6af8: $0a
    ld a, [bc]                                    ; $6af9: $0a
    rst $18                                       ; $6afa: $df
    ld [de], a                                    ; $6afb: $12
    ld a, [bc]                                    ; $6afc: $0a
    rst $18                                       ; $6afd: $df
    inc c                                         ; $6afe: $0c
    ld a, [bc]                                    ; $6aff: $0a
    push af                                       ; $6b00: $f5
    ld a, $05                                     ; $6b01: $3e $05
    rst $18                                       ; $6b03: $df
    inc b                                         ; $6b04: $04
    ld a, [bc]                                    ; $6b05: $0a
    pop af                                        ; $6b06: $f1
    and a                                         ; $6b07: $a7
    jr z, jr_030_6b0c                             ; $6b08: $28 $02

    jr jr_030_6b0f                                ; $6b0a: $18 $03

jr_030_6b0c:
    call Call_030_6b13                            ; $6b0c: $cd $13 $6b

jr_030_6b0f:
    rst $18                                       ; $6b0f: $df
    ld [bc], a                                    ; $6b10: $02
    ld a, [bc]                                    ; $6b11: $0a
    ret                                           ; $6b12: $c9


Call_030_6b13:
    ld a, $14                                     ; $6b13: $3e $14
    ld [$c967], a                                 ; $6b15: $ea $67 $c9
    rst $18                                       ; $6b18: $df
    inc e                                         ; $6b19: $1c
    db $10                                        ; $6b1a: $10
    rst $18                                       ; $6b1b: $df
    inc h                                         ; $6b1c: $24
    db $10                                        ; $6b1d: $10
    ld a, $07                                     ; $6b1e: $3e $07
    ld [$c834], a                                 ; $6b20: $ea $34 $c8
    ld bc, $8000                                  ; $6b23: $01 $00 $80
    rst $18                                       ; $6b26: $df
    ld e, $02                                     ; $6b27: $1e $02
    ld bc, $ff01                                  ; $6b29: $01 $01 $ff
    rst $18                                       ; $6b2c: $df
    ld e, $02                                     ; $6b2d: $1e $02
    call Call_030_6b51                            ; $6b2f: $cd $51 $6b
    ld a, $00                                     ; $6b32: $3e $00
    rst $18                                       ; $6b34: $df
    ld e, $10                                     ; $6b35: $1e $10
    call Call_030_6d40                            ; $6b37: $cd $40 $6d
    ld de, $c000                                  ; $6b3a: $11 $00 $c0
    rst $18                                       ; $6b3d: $df
    ld [hl+], a                                   ; $6b3e: $22
    db $10                                        ; $6b3f: $10
    ldh a, [$95]                                  ; $6b40: $f0 $95
    ld hl, $6bdb                                  ; $6b42: $21 $db $6b
    rst $18                                       ; $6b45: $df
    ld a, [de]                                    ; $6b46: $1a
    db $10                                        ; $6b47: $10
    ld a, $01                                     ; $6b48: $3e $01
    rst $18                                       ; $6b4a: $df
    ld [de], a                                    ; $6b4b: $12
    db $10                                        ; $6b4c: $10
    rst $18                                       ; $6b4d: $df
    jr nc, jr_030_6b60                            ; $6b4e: $30 $10

    ret                                           ; $6b50: $c9


Call_030_6b51:
    ld a, [$c450]                                 ; $6b51: $fa $50 $c4
    cp $17                                        ; $6b54: $fe $17
    jr nz, jr_030_6b64                            ; $6b56: $20 $0c

    ld hl, $0712                                  ; $6b58: $21 $12 $07
    rst $18                                       ; $6b5b: $df
    db $10                                        ; $6b5c: $10
    db $10                                        ; $6b5d: $10
    ld a, $0b                                     ; $6b5e: $3e $0b

jr_030_6b60:
    ld [$c82c], a                                 ; $6b60: $ea $2c $c8
    ret                                           ; $6b63: $c9


jr_030_6b64:
    cp $14                                        ; $6b64: $fe $14
    jr nz, jr_030_6b74                            ; $6b66: $20 $0c

    ld hl, $070f                                  ; $6b68: $21 $0f $07
    rst $18                                       ; $6b6b: $df
    db $10                                        ; $6b6c: $10
    db $10                                        ; $6b6d: $10
    ld a, $09                                     ; $6b6e: $3e $09
    ld [$c82c], a                                 ; $6b70: $ea $2c $c8
    ret                                           ; $6b73: $c9


jr_030_6b74:
    cp $11                                        ; $6b74: $fe $11
    jr nz, jr_030_6b84                            ; $6b76: $20 $0c

    ld hl, $070c                                  ; $6b78: $21 $0c $07
    rst $18                                       ; $6b7b: $df
    db $10                                        ; $6b7c: $10
    db $10                                        ; $6b7d: $10
    ld a, $0a                                     ; $6b7e: $3e $0a
    ld [$c82c], a                                 ; $6b80: $ea $2c $c8
    ret                                           ; $6b83: $c9


jr_030_6b84:
    ld hl, $0709                                  ; $6b84: $21 $09 $07
    rst $18                                       ; $6b87: $df
    db $10                                        ; $6b88: $10
    db $10                                        ; $6b89: $10
    ld a, $08                                     ; $6b8a: $3e $08
    ld [$c82c], a                                 ; $6b8c: $ea $2c $c8
    ret                                           ; $6b8f: $c9


Call_030_6b90:
    ld a, [$c450]                                 ; $6b90: $fa $50 $c4
    cp $17                                        ; $6b93: $fe $17
    jr nz, jr_030_6b9e                            ; $6b95: $20 $07

    ld hl, $0a0c                                  ; $6b97: $21 $0c $0a
    rst $18                                       ; $6b9a: $df
    db $10                                        ; $6b9b: $10
    db $10                                        ; $6b9c: $10
    ret                                           ; $6b9d: $c9


jr_030_6b9e:
    cp $14                                        ; $6b9e: $fe $14
    jr nz, jr_030_6ba9                            ; $6ba0: $20 $07

    ld hl, $0a07                                  ; $6ba2: $21 $07 $0a
    rst $18                                       ; $6ba5: $df
    db $10                                        ; $6ba6: $10
    db $10                                        ; $6ba7: $10
    ret                                           ; $6ba8: $c9


jr_030_6ba9:
    cp $11                                        ; $6ba9: $fe $11
    jr nz, jr_030_6bb4                            ; $6bab: $20 $07

    ld hl, $0a02                                  ; $6bad: $21 $02 $0a
    rst $18                                       ; $6bb0: $df
    db $10                                        ; $6bb1: $10
    db $10                                        ; $6bb2: $10
    ret                                           ; $6bb3: $c9


jr_030_6bb4:
    ld hl, $080e                                  ; $6bb4: $21 $0e $08
    rst $18                                       ; $6bb7: $df
    db $10                                        ; $6bb8: $10
    db $10                                        ; $6bb9: $10
    ret                                           ; $6bba: $c9


    rst $18                                       ; $6bbb: $df
    nop                                           ; $6bbc: $00
    ld a, [bc]                                    ; $6bbd: $0a
    xor a                                         ; $6bbe: $af
    ld hl, $c4b4                                  ; $6bbf: $21 $b4 $c4
    ld [hl+], a                                   ; $6bc2: $22
    ld [hl+], a                                   ; $6bc3: $22
    ld c, $08                                     ; $6bc4: $0e $08
    call Call_000_25af                            ; $6bc6: $cd $af $25
    call Call_000_2625                            ; $6bc9: $cd $25 $26
    ld hl, $10de                                  ; $6bcc: $21 $de $10
    rst $18                                       ; $6bcf: $df
    ld c, $0a                                     ; $6bd0: $0e $0a
    ld a, $80                                     ; $6bd2: $3e $80
    rst $18                                       ; $6bd4: $df
    ld [$df0a], sp                                ; $6bd5: $08 $0a $df
    ld [bc], a                                    ; $6bd8: $02
    ld a, [bc]                                    ; $6bd9: $0a
    ret                                           ; $6bda: $c9


    ei                                            ; $6bdb: $fb
    ld l, e                                       ; $6bdc: $6b
    db $fc                                        ; $6bdd: $fc
    ld l, e                                       ; $6bde: $6b
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    ret                                           ; $6bfb: $c9


    ld a, [$c834]                                 ; $6bfc: $fa $34 $c8
    cp $07                                        ; $6bff: $fe $07
    jr nz, jr_030_6c09                            ; $6c01: $20 $06

    ld a, $01                                     ; $6c03: $3e $01
    rst $18                                       ; $6c05: $df
    ld l, $10                                     ; $6c06: $2e $10
    ret                                           ; $6c08: $c9


jr_030_6c09:
    ld a, $80                                     ; $6c09: $3e $80
    rst $18                                       ; $6c0b: $df
    ld l, $10                                     ; $6c0c: $2e $10
    ret                                           ; $6c0e: $c9


    cpl                                           ; $6c0f: $2f
    ld l, h                                       ; $6c10: $6c
    ld e, b                                       ; $6c11: $58
    ld l, h                                       ; $6c12: $6c
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    rst $30                                       ; $6c2f: $f7
    nop                                           ; $6c30: $00
    inc e                                         ; $6c31: $1c
    jr z, jr_030_6c35                             ; $6c32: $28 $01

    ret                                           ; $6c34: $c9


jr_030_6c35:
    rst $20                                       ; $6c35: $e7
    nop                                           ; $6c36: $00
    inc e                                         ; $6c37: $1c
    ldh a, [$96]                                  ; $6c38: $f0 $96
    push af                                       ; $6c3a: $f5
    ld a, $06                                     ; $6c3b: $3e $06
    ldh [$96], a                                  ; $6c3d: $e0 $96
    ldh [rSVBK], a                                ; $6c3f: $e0 $70
    rst $18                                       ; $6c41: $df
    ld a, [hl+]                                   ; $6c42: $2a
    db $10                                        ; $6c43: $10
    ld a, $80                                     ; $6c44: $3e $80
    ld de, $0a03                                  ; $6c46: $11 $03 $0a
    ld hl, $10d5                                  ; $6c49: $21 $d5 $10
    rst $18                                       ; $6c4c: $df
    ld c, d                                       ; $6c4d: $4a
    dec b                                         ; $6c4e: $05
    rst $18                                       ; $6c4f: $df
    inc l                                         ; $6c50: $2c
    db $10                                        ; $6c51: $10
    pop af                                        ; $6c52: $f1
    ldh [$96], a                                  ; $6c53: $e0 $96
    ldh [rSVBK], a                                ; $6c55: $e0 $70
    ret                                           ; $6c57: $c9


    ld a, [$c3e0]                                 ; $6c58: $fa $e0 $c3
    inc a                                         ; $6c5b: $3c
    ld [$c3e0], a                                 ; $6c5c: $ea $e0 $c3
    ldh a, [$96]                                  ; $6c5f: $f0 $96
    push af                                       ; $6c61: $f5
    rst $18                                       ; $6c62: $df
    ld a, [hl+]                                   ; $6c63: $2a
    db $10                                        ; $6c64: $10
    ld a, [$c834]                                 ; $6c65: $fa $34 $c8
    cp $00                                        ; $6c68: $fe $00
    jr nz, jr_030_6c73                            ; $6c6a: $20 $07

    ld a, $00                                     ; $6c6c: $3e $00
    ld [$c967], a                                 ; $6c6e: $ea $67 $c9
    jr jr_030_6cd1                                ; $6c71: $18 $5e

jr_030_6c73:
    ld hl, $0034                                  ; $6c73: $21 $34 $00
    call Call_030_7e2e                            ; $6c76: $cd $2e $7e
    or a                                          ; $6c79: $b7
    jr nz, jr_030_6c93                            ; $6c7a: $20 $17

    ld a, [$c3e1]                                 ; $6c7c: $fa $e1 $c3
    inc a                                         ; $6c7f: $3c
    ld [$c3e1], a                                 ; $6c80: $ea $e1 $c3
    call Call_030_6cdf                            ; $6c83: $cd $df $6c
    ld a, $80                                     ; $6c86: $3e $80
    ld de, $0a03                                  ; $6c88: $11 $03 $0a
    ld hl, $10d6                                  ; $6c8b: $21 $d6 $10
    rst $18                                       ; $6c8e: $df
    ld c, d                                       ; $6c8f: $4a
    dec b                                         ; $6c90: $05
    jr jr_030_6ca4                                ; $6c91: $18 $11

jr_030_6c93:
    rst $18                                       ; $6c93: $df
    ld a, [hl+]                                   ; $6c94: $2a
    db $10                                        ; $6c95: $10
    call Call_030_6cdf                            ; $6c96: $cd $df $6c
    ld a, $80                                     ; $6c99: $3e $80
    ld de, $0a03                                  ; $6c9b: $11 $03 $0a
    ld hl, $10d7                                  ; $6c9e: $21 $d7 $10
    rst $18                                       ; $6ca1: $df
    ld c, d                                       ; $6ca2: $4a
    dec b                                         ; $6ca3: $05

jr_030_6ca4:
    ld a, [$c3e0]                                 ; $6ca4: $fa $e0 $c3
    cp $0a                                        ; $6ca7: $fe $0a
    jr z, jr_030_6cd1                             ; $6ca9: $28 $26

    and $01                                       ; $6cab: $e6 $01
    jr z, jr_030_6cbd                             ; $6cad: $28 $0e

    ld a, $01                                     ; $6caf: $3e $01
    rst $18                                       ; $6cb1: $df
    ld l, $10                                     ; $6cb2: $2e $10
    rst $18                                       ; $6cb4: $df
    inc l                                         ; $6cb5: $2c
    db $10                                        ; $6cb6: $10
    pop af                                        ; $6cb7: $f1
    ldh [$96], a                                  ; $6cb8: $e0 $96
    ldh [rSVBK], a                                ; $6cba: $e0 $70
    ret                                           ; $6cbc: $c9


jr_030_6cbd:
    ld a, $01                                     ; $6cbd: $3e $01
    ld [$c8aa], a                                 ; $6cbf: $ea $aa $c8
    ld a, [$c3e0]                                 ; $6cc2: $fa $e0 $c3
    rst $18                                       ; $6cc5: $df
    ld b, [hl]                                    ; $6cc6: $46
    db $10                                        ; $6cc7: $10
    rst $18                                       ; $6cc8: $df
    inc l                                         ; $6cc9: $2c
    db $10                                        ; $6cca: $10
    pop af                                        ; $6ccb: $f1
    ldh [$96], a                                  ; $6ccc: $e0 $96
    ldh [rSVBK], a                                ; $6cce: $e0 $70
    ret                                           ; $6cd0: $c9


jr_030_6cd1:
    ld a, $82                                     ; $6cd1: $3e $82
    rst $18                                       ; $6cd3: $df
    ld l, $10                                     ; $6cd4: $2e $10
    rst $18                                       ; $6cd6: $df
    inc l                                         ; $6cd7: $2c
    db $10                                        ; $6cd8: $10
    pop af                                        ; $6cd9: $f1
    ldh [$96], a                                  ; $6cda: $e0 $96
    ldh [rSVBK], a                                ; $6cdc: $e0 $70
    ret                                           ; $6cde: $c9


Call_030_6cdf:
    ld a, [$c3e0]                                 ; $6cdf: $fa $e0 $c3
    ld l, a                                       ; $6ce2: $6f
    ld h, $00                                     ; $6ce3: $26 $00
    rst $18                                       ; $6ce5: $df
    ld d, [hl]                                    ; $6ce6: $56
    dec b                                         ; $6ce7: $05
    ld a, [$c3e1]                                 ; $6ce8: $fa $e1 $c3
    ld l, a                                       ; $6ceb: $6f
    ld h, $00                                     ; $6cec: $26 $00
    rst $18                                       ; $6cee: $df
    ld d, [hl]                                    ; $6cef: $56
    dec b                                         ; $6cf0: $05
    ret                                           ; $6cf1: $c9


Call_030_6cf2:
    rst $18                                       ; $6cf2: $df
    nop                                           ; $6cf3: $00
    ld a, [bc]                                    ; $6cf4: $0a
    ld a, $00                                     ; $6cf5: $3e $00
    ld b, a                                       ; $6cf7: $47
    ld a, $06                                     ; $6cf8: $3e $06
    rst $18                                       ; $6cfa: $df
    ld l, $0a                                     ; $6cfb: $2e $0a
    ld c, $04                                     ; $6cfd: $0e $04
    call Call_000_25af                            ; $6cff: $cd $af $25
    call Call_000_2625                            ; $6d02: $cd $25 $26
    call Call_030_6e89                            ; $6d05: $cd $89 $6e
    jr nz, jr_030_6d3f                            ; $6d08: $20 $35

    ld a, [$c3e1]                                 ; $6d0a: $fa $e1 $c3
    cp $07                                        ; $6d0d: $fe $07
    jr nc, jr_030_6d27                            ; $6d0f: $30 $16

    ld hl, $10da                                  ; $6d11: $21 $da $10
    rst $18                                       ; $6d14: $df
    ld c, $0a                                     ; $6d15: $0e $0a
    call Call_030_6e9e                            ; $6d17: $cd $9e $6e
    ld a, $06                                     ; $6d1a: $3e $06
    rst $18                                       ; $6d1c: $df
    ld [$3e0a], sp                                ; $6d1d: $08 $0a $3e
    ld b, $06                                     ; $6d20: $06 $06
    add b                                         ; $6d22: $80
    rst $18                                       ; $6d23: $df
    inc l                                         ; $6d24: $2c
    ld a, [bc]                                    ; $6d25: $0a
    ret                                           ; $6d26: $c9


jr_030_6d27:
    ld hl, $10d8                                  ; $6d27: $21 $d8 $10
    rst $18                                       ; $6d2a: $df
    ld c, $0a                                     ; $6d2b: $0e $0a
    ld a, $06                                     ; $6d2d: $3e $06
    rst $18                                       ; $6d2f: $df
    ld [$cd0a], sp                                ; $6d30: $08 $0a $cd
    ld [hl], h                                    ; $6d33: $74
    ld l, [hl]                                    ; $6d34: $6e
    call Call_030_6ec8                            ; $6d35: $cd $c8 $6e
    ld a, $06                                     ; $6d38: $3e $06
    ld b, $80                                     ; $6d3a: $06 $80
    rst $18                                       ; $6d3c: $df
    inc l                                         ; $6d3d: $2c
    ld a, [bc]                                    ; $6d3e: $0a

jr_030_6d3f:
    ret                                           ; $6d3f: $c9


Call_030_6d40:
    call Call_030_6d89                            ; $6d40: $cd $89 $6d
    ld hl, $c3e4                                  ; $6d43: $21 $e4 $c3
    ld a, [hl+]                                   ; $6d46: $2a
    ld d, [hl]                                    ; $6d47: $56
    ld e, a                                       ; $6d48: $5f
    ld hl, $c2a2                                  ; $6d49: $21 $a2 $c2
    ld a, [hl+]                                   ; $6d4c: $2a
    ld h, [hl]                                    ; $6d4d: $66
    ld l, a                                       ; $6d4e: $6f
    call Call_000_08ac                            ; $6d4f: $cd $ac $08
    sra h                                         ; $6d52: $cb $2c
    rr l                                          ; $6d54: $cb $1d
    sra h                                         ; $6d56: $cb $2c
    rr l                                          ; $6d58: $cb $1d
    push hl                                       ; $6d5a: $e5
    ld hl, $c3e4                                  ; $6d5b: $21 $e4 $c3
    ld a, [hl+]                                   ; $6d5e: $2a
    ld d, [hl]                                    ; $6d5f: $56
    ld e, a                                       ; $6d60: $5f
    pop hl                                        ; $6d61: $e1
    add hl, de                                    ; $6d62: $19
    push hl                                       ; $6d63: $e5
    ld hl, $c3e2                                  ; $6d64: $21 $e2 $c3
    ld a, [hl+]                                   ; $6d67: $2a
    ld d, [hl]                                    ; $6d68: $56
    ld e, a                                       ; $6d69: $5f
    ld hl, $c2a0                                  ; $6d6a: $21 $a0 $c2
    ld a, [hl+]                                   ; $6d6d: $2a
    ld h, [hl]                                    ; $6d6e: $66
    ld l, a                                       ; $6d6f: $6f
    call Call_000_08ac                            ; $6d70: $cd $ac $08
    sra h                                         ; $6d73: $cb $2c
    rr l                                          ; $6d75: $cb $1d
    sra h                                         ; $6d77: $cb $2c
    rr l                                          ; $6d79: $cb $1d
    push hl                                       ; $6d7b: $e5
    ld hl, $c3e2                                  ; $6d7c: $21 $e2 $c3
    ld a, [hl+]                                   ; $6d7f: $2a
    ld d, [hl]                                    ; $6d80: $56
    ld e, a                                       ; $6d81: $5f
    pop hl                                        ; $6d82: $e1
    add hl, de                                    ; $6d83: $19
    pop de                                        ; $6d84: $d1
    rst $18                                       ; $6d85: $df
    jr nz, jr_030_6d98                            ; $6d86: $20 $10

    ret                                           ; $6d88: $c9


Call_030_6d89:
    ld a, [$c450]                                 ; $6d89: $fa $50 $c4
    cp $17                                        ; $6d8c: $fe $17
    jr nz, jr_030_6da3                            ; $6d8e: $20 $13

    ld de, $2780                                  ; $6d90: $11 $80 $27
    ld hl, $c3e2                                  ; $6d93: $21 $e2 $c3
    ld a, e                                       ; $6d96: $7b
    ld [hl+], a                                   ; $6d97: $22

jr_030_6d98:
    ld [hl], d                                    ; $6d98: $72
    ld de, $1dc0                                  ; $6d99: $11 $c0 $1d
    ld hl, $c3e4                                  ; $6d9c: $21 $e4 $c3
    ld a, e                                       ; $6d9f: $7b
    ld [hl+], a                                   ; $6da0: $22
    ld [hl], d                                    ; $6da1: $72
    ret                                           ; $6da2: $c9


jr_030_6da3:
    cp $14                                        ; $6da3: $fe $14
    jr nz, jr_030_6dba                            ; $6da5: $20 $13

    ld de, $28c0                                  ; $6da7: $11 $c0 $28
    ld hl, $c3e2                                  ; $6daa: $21 $e2 $c3
    ld a, e                                       ; $6dad: $7b
    ld [hl+], a                                   ; $6dae: $22
    ld [hl], d                                    ; $6daf: $72
    ld de, $20e0                                  ; $6db0: $11 $e0 $20
    ld hl, $c3e4                                  ; $6db3: $21 $e4 $c3
    ld a, e                                       ; $6db6: $7b
    ld [hl+], a                                   ; $6db7: $22
    ld [hl], d                                    ; $6db8: $72
    ret                                           ; $6db9: $c9


jr_030_6dba:
    cp $11                                        ; $6dba: $fe $11
    jr nz, jr_030_6dd1                            ; $6dbc: $20 $13

    ld de, $1f40                                  ; $6dbe: $11 $40 $1f
    ld hl, $c3e2                                  ; $6dc1: $21 $e2 $c3
    ld a, e                                       ; $6dc4: $7b
    ld [hl+], a                                   ; $6dc5: $22
    ld [hl], d                                    ; $6dc6: $72
    ld de, $2040                                  ; $6dc7: $11 $40 $20
    ld hl, $c3e4                                  ; $6dca: $21 $e4 $c3
    ld a, e                                       ; $6dcd: $7b
    ld [hl+], a                                   ; $6dce: $22
    ld [hl], d                                    ; $6dcf: $72
    ret                                           ; $6dd0: $c9


jr_030_6dd1:
    ld de, $21e0                                  ; $6dd1: $11 $e0 $21
    ld hl, $c3e2                                  ; $6dd4: $21 $e2 $c3
    ld a, e                                       ; $6dd7: $7b
    ld [hl+], a                                   ; $6dd8: $22
    ld [hl], d                                    ; $6dd9: $72
    ld de, $1ec0                                  ; $6dda: $11 $c0 $1e
    ld hl, $c3e4                                  ; $6ddd: $21 $e4 $c3
    ld a, e                                       ; $6de0: $7b
    ld [hl+], a                                   ; $6de1: $22
    ld [hl], d                                    ; $6de2: $72
    ret                                           ; $6de3: $c9


    call Call_030_6e49                            ; $6de4: $cd $49 $6e
    ld h, $00                                     ; $6de7: $26 $00
    ld l, a                                       ; $6de9: $6f
    add hl, de                                    ; $6dea: $19
    add hl, hl                                    ; $6deb: $29
    add hl, hl                                    ; $6dec: $29
    add hl, hl                                    ; $6ded: $29
    add hl, hl                                    ; $6dee: $29
    add hl, hl                                    ; $6def: $29
    ld e, l                                       ; $6df0: $5d
    ld d, h                                       ; $6df1: $54
    call Call_000_2d10                            ; $6df2: $cd $10 $2d
    ret                                           ; $6df5: $c9


Call_030_6df6:
    ld de, $0004                                  ; $6df6: $11 $04 $00
    rst $30                                       ; $6df9: $f7
    ld h, b                                       ; $6dfa: $60
    ld c, $28                                     ; $6dfb: $0e $28
    rlca                                          ; $6dfd: $07
    rst $30                                       ; $6dfe: $f7
    ld h, b                                       ; $6dff: $60
    ld de, $2a20                                  ; $6e00: $11 $20 $2a
    jr jr_030_6e37                                ; $6e03: $18 $32

    ld de, $0003                                  ; $6e05: $11 $03 $00
    rst $30                                       ; $6e08: $f7
    ld b, b                                       ; $6e09: $40
    ld c, $28                                     ; $6e0a: $0e $28
    rlca                                          ; $6e0c: $07
    rst $30                                       ; $6e0d: $f7
    ld b, b                                       ; $6e0e: $40
    ld de, $1b20                                  ; $6e0f: $11 $20 $1b
    jr jr_030_6e37                                ; $6e12: $18 $23

    ld de, $0002                                  ; $6e14: $11 $02 $00
    rst $30                                       ; $6e17: $f7
    jr nz, jr_030_6e28                            ; $6e18: $20 $0e

    jr z, jr_030_6e23                             ; $6e1a: $28 $07

    rst $30                                       ; $6e1c: $f7
    jr nz, jr_030_6e30                            ; $6e1d: $20 $11

    jr nz, jr_030_6e2d                            ; $6e1f: $20 $0c

    jr jr_030_6e37                                ; $6e21: $18 $14

jr_030_6e23:
    ld de, $0001                                  ; $6e23: $11 $01 $00
    rst $30                                       ; $6e26: $f7
    nop                                           ; $6e27: $00

jr_030_6e28:
    ld de, $0220                                  ; $6e28: $11 $20 $02
    jr jr_030_6e37                                ; $6e2b: $18 $0a

jr_030_6e2d:
    ld hl, $10cf                                  ; $6e2d: $21 $cf $10

jr_030_6e30:
    rst $18                                       ; $6e30: $df
    ld c, $0a                                     ; $6e31: $0e $0a
    call Call_030_6e41                            ; $6e33: $cd $41 $6e
    ret                                           ; $6e36: $c9


jr_030_6e37:
    ld hl, $10d0                                  ; $6e37: $21 $d0 $10
    rst $18                                       ; $6e3a: $df
    ld c, $0a                                     ; $6e3b: $0e $0a
    call Call_030_6e41                            ; $6e3d: $cd $41 $6e
    ret                                           ; $6e40: $c9


Call_030_6e41:
    ld a, e                                       ; $6e41: $7b
    rst $18                                       ; $6e42: $df
    ld e, d                                       ; $6e43: $5a
    dec b                                         ; $6e44: $05
    ld [$c3ea], a                                 ; $6e45: $ea $ea $c3
    ret                                           ; $6e48: $c9


Call_030_6e49:
    ld a, [$c450]                                 ; $6e49: $fa $50 $c4
    cp $0e                                        ; $6e4c: $fe $0e
    jr nz, jr_030_6e54                            ; $6e4e: $20 $04

    ld a, $00                                     ; $6e50: $3e $00
    jr jr_030_6e73                                ; $6e52: $18 $1f

jr_030_6e54:
    ld a, [$c450]                                 ; $6e54: $fa $50 $c4
    cp $11                                        ; $6e57: $fe $11
    jr nz, jr_030_6e5f                            ; $6e59: $20 $04

    ld a, $01                                     ; $6e5b: $3e $01
    jr jr_030_6e73                                ; $6e5d: $18 $14

jr_030_6e5f:
    ld a, [$c450]                                 ; $6e5f: $fa $50 $c4
    cp $14                                        ; $6e62: $fe $14
    jr nz, jr_030_6e6a                            ; $6e64: $20 $04

    ld a, $02                                     ; $6e66: $3e $02
    jr jr_030_6e73                                ; $6e68: $18 $09

jr_030_6e6a:
    ld a, [$c450]                                 ; $6e6a: $fa $50 $c4
    cp $17                                        ; $6e6d: $fe $17
    jr nz, jr_030_6e73                            ; $6e6f: $20 $02

    ld a, $03                                     ; $6e71: $3e $03

jr_030_6e73:
    ret                                           ; $6e73: $c9


    ld de, $00c2                                  ; $6e74: $11 $c2 $00
    call Call_030_6e49                            ; $6e77: $cd $49 $6e
    ld h, $00                                     ; $6e7a: $26 $00
    ld l, a                                       ; $6e7c: $6f
    add hl, de                                    ; $6e7d: $19
    add hl, hl                                    ; $6e7e: $29
    add hl, hl                                    ; $6e7f: $29
    add hl, hl                                    ; $6e80: $29
    add hl, hl                                    ; $6e81: $29
    add hl, hl                                    ; $6e82: $29
    ld e, l                                       ; $6e83: $5d
    ld d, h                                       ; $6e84: $54
    call Call_000_2d2e                            ; $6e85: $cd $2e $2d
    ret                                           ; $6e88: $c9


Call_030_6e89:
    ld de, $00c2                                  ; $6e89: $11 $c2 $00
    call Call_030_6e49                            ; $6e8c: $cd $49 $6e
    ld h, $00                                     ; $6e8f: $26 $00
    ld l, a                                       ; $6e91: $6f
    add hl, de                                    ; $6e92: $19
    add hl, hl                                    ; $6e93: $29
    add hl, hl                                    ; $6e94: $29
    add hl, hl                                    ; $6e95: $29
    add hl, hl                                    ; $6e96: $29
    add hl, hl                                    ; $6e97: $29
    ld e, l                                       ; $6e98: $5d
    ld d, h                                       ; $6e99: $54
    call Call_000_2d10                            ; $6e9a: $cd $10 $2d
    ret                                           ; $6e9d: $c9


Call_030_6e9e:
    ld de, $00be                                  ; $6e9e: $11 $be $00
    call Call_030_6e49                            ; $6ea1: $cd $49 $6e
    ld h, $00                                     ; $6ea4: $26 $00
    ld l, a                                       ; $6ea6: $6f
    add hl, de                                    ; $6ea7: $19
    add hl, hl                                    ; $6ea8: $29
    add hl, hl                                    ; $6ea9: $29
    add hl, hl                                    ; $6eaa: $29
    add hl, hl                                    ; $6eab: $29
    add hl, hl                                    ; $6eac: $29
    ld e, l                                       ; $6ead: $5d
    ld d, h                                       ; $6eae: $54
    call Call_000_2d2e                            ; $6eaf: $cd $2e $2d
    ret                                           ; $6eb2: $c9


Call_030_6eb3:
    ld de, $00be                                  ; $6eb3: $11 $be $00
    call Call_030_6e49                            ; $6eb6: $cd $49 $6e
    ld h, $00                                     ; $6eb9: $26 $00
    ld l, a                                       ; $6ebb: $6f
    add hl, de                                    ; $6ebc: $19
    add hl, hl                                    ; $6ebd: $29
    add hl, hl                                    ; $6ebe: $29
    add hl, hl                                    ; $6ebf: $29
    add hl, hl                                    ; $6ec0: $29
    add hl, hl                                    ; $6ec1: $29
    ld e, l                                       ; $6ec2: $5d
    ld d, h                                       ; $6ec3: $54
    call Call_000_2d10                            ; $6ec4: $cd $10 $2d
    ret                                           ; $6ec7: $c9


Call_030_6ec8:
    ld a, [$c450]                                 ; $6ec8: $fa $50 $c4
    cp $17                                        ; $6ecb: $fe $17
    jr nz, jr_030_6ed4                            ; $6ecd: $20 $05

    ld de, $0032                                  ; $6ecf: $11 $32 $00
    jr jr_030_6eec                                ; $6ed2: $18 $18

jr_030_6ed4:
    ld a, [$c450]                                 ; $6ed4: $fa $50 $c4
    cp $14                                        ; $6ed7: $fe $14
    jr nz, jr_030_6ee0                            ; $6ed9: $20 $05

    ld de, $002d                                  ; $6edb: $11 $2d $00
    jr jr_030_6eec                                ; $6ede: $18 $0c

jr_030_6ee0:
    cp $11                                        ; $6ee0: $fe $11
    jr nz, jr_030_6ee9                            ; $6ee2: $20 $05

    ld de, $0019                                  ; $6ee4: $11 $19 $00
    jr jr_030_6eec                                ; $6ee7: $18 $03

jr_030_6ee9:
    ld de, $0014                                  ; $6ee9: $11 $14 $00

jr_030_6eec:
    ld a, [$c3e1]                                 ; $6eec: $fa $e1 $c3
    cp $0a                                        ; $6eef: $fe $0a
    jr nz, jr_030_6f00                            ; $6ef1: $20 $0d

    ld h, d                                       ; $6ef3: $62
    ld l, e                                       ; $6ef4: $6b
    sra h                                         ; $6ef5: $cb $2c
    rr l                                          ; $6ef7: $cb $1d
    sra h                                         ; $6ef9: $cb $2c
    rr l                                          ; $6efb: $cb $1d
    add hl, de                                    ; $6efd: $19
    ld d, h                                       ; $6efe: $54
    ld e, l                                       ; $6eff: $5d

jr_030_6f00:
    push de                                       ; $6f00: $d5
    rst $18                                       ; $6f01: $df
    ld [hl+], a                                   ; $6f02: $22
    ld [bc], a                                    ; $6f03: $02
    pop hl                                        ; $6f04: $e1
    rst $18                                       ; $6f05: $df
    ld d, [hl]                                    ; $6f06: $56
    dec b                                         ; $6f07: $05
    rst $08                                       ; $6f08: $cf
    jr c, jr_030_6f2c                             ; $6f09: $38 $21

    dec de                                        ; $6f0b: $1b
    ld bc, $0edf                                  ; $6f0c: $01 $df $0e
    ld a, [bc]                                    ; $6f0f: $0a
    ld a, $80                                     ; $6f10: $3e $80
    rst $18                                       ; $6f12: $df
    ld [$cd0a], sp                                ; $6f13: $08 $0a $cd
    rra                                           ; $6f16: $1f
    inc l                                         ; $6f17: $2c
    call Call_030_7e73                            ; $6f18: $cd $73 $7e
    ld b, $00                                     ; $6f1b: $06 $00
    ld c, $fa                                     ; $6f1d: $0e $fa
    rst $18                                       ; $6f1f: $df
    ld c, [hl]                                    ; $6f20: $4e
    ld a, [bc]                                    ; $6f21: $0a
    rst $18                                       ; $6f22: $df
    inc [hl]                                      ; $6f23: $34
    ld [bc], a                                    ; $6f24: $02
    ld a, $fa                                     ; $6f25: $3e $fa
    ld [$c441], a                                 ; $6f27: $ea $41 $c4
    ld a, $fa                                     ; $6f2a: $3e $fa

jr_030_6f2c:
    ld [$c46a], a                                 ; $6f2c: $ea $6a $c4
    ld hl, $c2a0                                  ; $6f2f: $21 $a0 $c2
    ld de, $c466                                  ; $6f32: $11 $66 $c4
    ld bc, $0004                                  ; $6f35: $01 $04 $00
    call Call_000_03d3                            ; $6f38: $cd $d3 $03
    ld a, [$c2a4]                                 ; $6f3b: $fa $a4 $c2
    ld [$c465], a                                 ; $6f3e: $ea $65 $c4
    ret                                           ; $6f41: $c9


    ld a, $00                                     ; $6f42: $3e $00
    ld b, a                                       ; $6f44: $47
    ld a, $08                                     ; $6f45: $3e $08
    rst $18                                       ; $6f47: $df
    ld l, $0a                                     ; $6f48: $2e $0a
    ld a, $08                                     ; $6f4a: $3e $08
    ld b, a                                       ; $6f4c: $47
    ld a, $07                                     ; $6f4d: $3e $07
    rst $18                                       ; $6f4f: $df
    ld [hl-], a                                   ; $6f50: $32
    ld a, [bc]                                    ; $6f51: $0a
    ld a, $08                                     ; $6f52: $3e $08
    rst $18                                       ; $6f54: $df
    inc [hl]                                      ; $6f55: $34
    ld a, [bc]                                    ; $6f56: $0a
    ld a, $00                                     ; $6f57: $3e $00
    ld b, a                                       ; $6f59: $47
    ld a, $09                                     ; $6f5a: $3e $09
    rst $18                                       ; $6f5c: $df
    ld l, $0a                                     ; $6f5d: $2e $0a
    ld a, $00                                     ; $6f5f: $3e $00
    ld b, a                                       ; $6f61: $47
    ld a, $0a                                     ; $6f62: $3e $0a
    rst $18                                       ; $6f64: $df
    ld l, $0a                                     ; $6f65: $2e $0a
    ld hl, $152c                                  ; $6f67: $21 $2c $15
    rst $18                                       ; $6f6a: $df
    ld c, $0a                                     ; $6f6b: $0e $0a
    ld a, $08                                     ; $6f6d: $3e $08
    rst $18                                       ; $6f6f: $df
    ld a, [bc]                                    ; $6f70: $0a
    ld a, [bc]                                    ; $6f71: $0a
    ld a, $08                                     ; $6f72: $3e $08
    ld b, a                                       ; $6f74: $47
    ld a, $00                                     ; $6f75: $3e $00
    rst $18                                       ; $6f77: $df
    ld l, $0a                                     ; $6f78: $2e $0a
    push af                                       ; $6f7a: $f5
    ld a, $0a                                     ; $6f7b: $3e $0a
    rst $18                                       ; $6f7d: $df
    inc b                                         ; $6f7e: $04
    ld a, [bc]                                    ; $6f7f: $0a
    pop af                                        ; $6f80: $f1
    rst $18                                       ; $6f81: $df
    ld [de], a                                    ; $6f82: $12
    ld a, [bc]                                    ; $6f83: $0a
    rst $18                                       ; $6f84: $df
    inc c                                         ; $6f85: $0c
    ld a, [bc]                                    ; $6f86: $0a
    push af                                       ; $6f87: $f5
    ld a, $05                                     ; $6f88: $3e $05
    rst $18                                       ; $6f8a: $df
    inc b                                         ; $6f8b: $04
    ld a, [bc]                                    ; $6f8c: $0a
    pop af                                        ; $6f8d: $f1
    and a                                         ; $6f8e: $a7
    jp nz, Jump_030_7060                          ; $6f8f: $c2 $60 $70

    rst $18                                       ; $6f92: $df
    db $10                                        ; $6f93: $10
    ld a, [bc]                                    ; $6f94: $0a
    ld a, $08                                     ; $6f95: $3e $08
    rst $18                                       ; $6f97: $df
    ld a, [bc]                                    ; $6f98: $0a
    ld a, [bc]                                    ; $6f99: $0a
    push af                                       ; $6f9a: $f5
    ld a, $0a                                     ; $6f9b: $3e $0a
    rst $18                                       ; $6f9d: $df
    inc b                                         ; $6f9e: $04
    ld a, [bc]                                    ; $6f9f: $0a
    pop af                                        ; $6fa0: $f1
    rst $18                                       ; $6fa1: $df
    ld [de], a                                    ; $6fa2: $12
    ld a, [bc]                                    ; $6fa3: $0a
    rst $18                                       ; $6fa4: $df
    inc c                                         ; $6fa5: $0c
    ld a, [bc]                                    ; $6fa6: $0a
    push af                                       ; $6fa7: $f5
    ld a, $05                                     ; $6fa8: $3e $05
    rst $18                                       ; $6faa: $df
    inc b                                         ; $6fab: $04
    ld a, [bc]                                    ; $6fac: $0a
    pop af                                        ; $6fad: $f1
    and a                                         ; $6fae: $a7
    jp nz, Jump_030_7088                          ; $6faf: $c2 $88 $70

    rst $18                                       ; $6fb2: $df
    db $10                                        ; $6fb3: $10
    ld a, [bc]                                    ; $6fb4: $0a
    ld a, $08                                     ; $6fb5: $3e $08
    rst $18                                       ; $6fb7: $df
    ld [$cf0a], sp                                ; $6fb8: $08 $0a $cf
    adc d                                         ; $6fbb: $8a
    ld a, $08                                     ; $6fbc: $3e $08
    ld de, $ff80                                  ; $6fbe: $11 $80 $ff
    rst $18                                       ; $6fc1: $df
    ld b, b                                       ; $6fc2: $40
    ld a, [bc]                                    ; $6fc3: $0a
    ld a, $08                                     ; $6fc4: $3e $08
    rst $18                                       ; $6fc6: $df
    ld b, d                                       ; $6fc7: $42
    ld a, [bc]                                    ; $6fc8: $0a
    ld a, $09                                     ; $6fc9: $3e $09
    ld b, a                                       ; $6fcb: $47
    ld a, $0a                                     ; $6fcc: $3e $0a
    rst $18                                       ; $6fce: $df
    jr nc, jr_030_6fdb                            ; $6fcf: $30 $0a

    ld a, $0a                                     ; $6fd1: $3e $0a
    ld b, a                                       ; $6fd3: $47
    ld a, $07                                     ; $6fd4: $3e $07
    rst $18                                       ; $6fd6: $df
    ld [hl-], a                                   ; $6fd7: $32
    ld a, [bc]                                    ; $6fd8: $0a
    ld a, $0a                                     ; $6fd9: $3e $0a

jr_030_6fdb:
    rst $18                                       ; $6fdb: $df
    inc [hl]                                      ; $6fdc: $34
    ld a, [bc]                                    ; $6fdd: $0a
    ld a, $0a                                     ; $6fde: $3e $0a
    rst $18                                       ; $6fe0: $df
    ld [$3e0a], sp                                ; $6fe1: $08 $0a $3e
    add hl, bc                                    ; $6fe4: $09
    ld b, a                                       ; $6fe5: $47
    ld a, $05                                     ; $6fe6: $3e $05
    rst $18                                       ; $6fe8: $df
    ld [hl-], a                                   ; $6fe9: $32
    ld a, [bc]                                    ; $6fea: $0a
    ld a, $09                                     ; $6feb: $3e $09
    rst $18                                       ; $6fed: $df
    inc [hl]                                      ; $6fee: $34
    ld a, [bc]                                    ; $6fef: $0a
    ld a, $08                                     ; $6ff0: $3e $08
    rst $18                                       ; $6ff2: $df
    ld [$ef0a], sp                                ; $6ff3: $08 $0a $ef
    ld h, b                                       ; $6ff6: $60
    inc de                                        ; $6ff7: $13

jr_030_6ff8:
    ld hl, $1808                                  ; $6ff8: $21 $08 $18
    rst $18                                       ; $6ffb: $df
    ld c, $0a                                     ; $6ffc: $0e $0a
    ld a, $08                                     ; $6ffe: $3e $08
    rst $18                                       ; $7000: $df
    ld [$f50a], sp                                ; $7001: $08 $0a $f5
    ld a, $14                                     ; $7004: $3e $14
    rst $18                                       ; $7006: $df
    inc b                                         ; $7007: $04
    ld a, [bc]                                    ; $7008: $0a
    pop af                                        ; $7009: $f1
    ld hl, $1809                                  ; $700a: $21 $09 $18
    ld de, $0101                                  ; $700d: $11 $01 $01
    rst $18                                       ; $7010: $df
    ld b, h                                       ; $7011: $44
    ld a, [bc]                                    ; $7012: $0a
    cp $ff                                        ; $7013: $fe $ff
    jr z, jr_030_6ff8                             ; $7015: $28 $e1

    cp $01                                        ; $7017: $fe $01
    jr nz, jr_030_7026                            ; $7019: $20 $0b

    rst $20                                       ; $701b: $e7
    ld h, b                                       ; $701c: $60
    inc de                                        ; $701d: $13
    ld hl, $180b                                  ; $701e: $21 $0b $18
    rst $18                                       ; $7021: $df
    ld c, $0a                                     ; $7022: $0e $0a
    jr jr_030_702c                                ; $7024: $18 $06

jr_030_7026:
    ld hl, $180a                                  ; $7026: $21 $0a $18
    rst $18                                       ; $7029: $df
    ld c, $0a                                     ; $702a: $0e $0a

jr_030_702c:
    ld a, $08                                     ; $702c: $3e $08
    rst $18                                       ; $702e: $df
    ld [$3e0a], sp                                ; $702f: $08 $0a $3e
    ld a, [bc]                                    ; $7032: $0a
    ld b, a                                       ; $7033: $47
    ld a, $05                                     ; $7034: $3e $05
    rst $18                                       ; $7036: $df
    ld [hl-], a                                   ; $7037: $32
    ld a, [bc]                                    ; $7038: $0a
    ld a, $0a                                     ; $7039: $3e $0a
    rst $18                                       ; $703b: $df
    inc [hl]                                      ; $703c: $34
    ld a, [bc]                                    ; $703d: $0a
    ld a, $08                                     ; $703e: $3e $08
    ld b, $c0                                     ; $7040: $06 $c0
    rst $18                                       ; $7042: $df
    inc l                                         ; $7043: $2c
    ld a, [bc]                                    ; $7044: $0a
    ld a, $08                                     ; $7045: $3e $08
    ld b, a                                       ; $7047: $47
    ld a, $05                                     ; $7048: $3e $05
    rst $18                                       ; $704a: $df
    ld [hl-], a                                   ; $704b: $32
    ld a, [bc]                                    ; $704c: $0a
    ld a, $09                                     ; $704d: $3e $09
    ld b, a                                       ; $704f: $47
    ld a, $05                                     ; $7050: $3e $05
    rst $18                                       ; $7052: $df
    ld [hl-], a                                   ; $7053: $32
    ld a, [bc]                                    ; $7054: $0a
    ld a, $09                                     ; $7055: $3e $09
    rst $18                                       ; $7057: $df
    inc [hl]                                      ; $7058: $34
    ld a, [bc]                                    ; $7059: $0a
    ld a, $02                                     ; $705a: $3e $02
    ld [$c441], a                                 ; $705c: $ea $41 $c4
    ret                                           ; $705f: $c9


Jump_030_7060:
    ld a, $08                                     ; $7060: $3e $08
    rst $18                                       ; $7062: $df
    ld [$3e0a], sp                                ; $7063: $08 $0a $3e
    ld [$c006], sp                                ; $7066: $08 $06 $c0
    rst $18                                       ; $7069: $df
    inc l                                         ; $706a: $2c
    ld a, [bc]                                    ; $706b: $0a
    ld a, $09                                     ; $706c: $3e $09
    ld b, $00                                     ; $706e: $06 $00
    rst $18                                       ; $7070: $df
    inc l                                         ; $7071: $2c
    ld a, [bc]                                    ; $7072: $0a
    ld a, $0a                                     ; $7073: $3e $0a
    ld b, $80                                     ; $7075: $06 $80
    rst $18                                       ; $7077: $df
    inc l                                         ; $7078: $2c
    ld a, [bc]                                    ; $7079: $0a
    ld a, $08                                     ; $707a: $3e $08
    ld b, a                                       ; $707c: $47
    ld a, $06                                     ; $707d: $3e $06
    rst $18                                       ; $707f: $df
    ld [hl-], a                                   ; $7080: $32
    ld a, [bc]                                    ; $7081: $0a
    ld a, $08                                     ; $7082: $3e $08
    rst $18                                       ; $7084: $df
    inc [hl]                                      ; $7085: $34
    ld a, [bc]                                    ; $7086: $0a
    ret                                           ; $7087: $c9


Jump_030_7088:
    ld a, $08                                     ; $7088: $3e $08
    rst $18                                       ; $708a: $df
    ld [$3e0a], sp                                ; $708b: $08 $0a $3e
    ld [$c006], sp                                ; $708e: $08 $06 $c0
    rst $18                                       ; $7091: $df
    inc l                                         ; $7092: $2c
    ld a, [bc]                                    ; $7093: $0a
    ld a, $08                                     ; $7094: $3e $08
    ld b, a                                       ; $7096: $47
    ld a, $05                                     ; $7097: $3e $05
    rst $18                                       ; $7099: $df
    ld [hl-], a                                   ; $709a: $32
    ld a, [bc]                                    ; $709b: $0a
    ld a, $08                                     ; $709c: $3e $08
    rst $18                                       ; $709e: $df
    inc [hl]                                      ; $709f: $34
    ld a, [bc]                                    ; $70a0: $0a
    ld a, $09                                     ; $70a1: $3e $09
    ld b, $00                                     ; $70a3: $06 $00
    rst $18                                       ; $70a5: $df
    inc l                                         ; $70a6: $2c
    ld a, [bc]                                    ; $70a7: $0a
    ld a, $0a                                     ; $70a8: $3e $0a
    ld b, $80                                     ; $70aa: $06 $80
    rst $18                                       ; $70ac: $df
    inc l                                         ; $70ad: $2c
    ld a, [bc]                                    ; $70ae: $0a
    ret                                           ; $70af: $c9


Jump_030_70b0:
    ld a, $00                                     ; $70b0: $3e $00
    ld b, a                                       ; $70b2: $47
    ld a, $08                                     ; $70b3: $3e $08
    rst $18                                       ; $70b5: $df
    ld l, $0a                                     ; $70b6: $2e $0a
    ld a, $08                                     ; $70b8: $3e $08
    ld b, a                                       ; $70ba: $47
    ld a, $07                                     ; $70bb: $3e $07
    rst $18                                       ; $70bd: $df
    ld [hl-], a                                   ; $70be: $32
    ld a, [bc]                                    ; $70bf: $0a
    ld a, $08                                     ; $70c0: $3e $08
    rst $18                                       ; $70c2: $df
    inc [hl]                                      ; $70c3: $34
    ld a, [bc]                                    ; $70c4: $0a
    ld a, $00                                     ; $70c5: $3e $00
    ld b, a                                       ; $70c7: $47
    ld a, $09                                     ; $70c8: $3e $09
    rst $18                                       ; $70ca: $df
    ld l, $0a                                     ; $70cb: $2e $0a
    ld a, $00                                     ; $70cd: $3e $00
    ld b, a                                       ; $70cf: $47
    ld a, $0a                                     ; $70d0: $3e $0a
    rst $18                                       ; $70d2: $df
    ld l, $0a                                     ; $70d3: $2e $0a
    ld hl, $154b                                  ; $70d5: $21 $4b $15
    rst $18                                       ; $70d8: $df
    ld c, $0a                                     ; $70d9: $0e $0a
    ld a, $08                                     ; $70db: $3e $08
    rst $18                                       ; $70dd: $df
    ld a, [bc]                                    ; $70de: $0a
    ld a, [bc]                                    ; $70df: $0a
    ld a, $08                                     ; $70e0: $3e $08
    ld b, a                                       ; $70e2: $47
    ld a, $00                                     ; $70e3: $3e $00
    rst $18                                       ; $70e5: $df
    ld l, $0a                                     ; $70e6: $2e $0a
    push af                                       ; $70e8: $f5
    ld a, $0a                                     ; $70e9: $3e $0a
    rst $18                                       ; $70eb: $df
    inc b                                         ; $70ec: $04
    ld a, [bc]                                    ; $70ed: $0a
    pop af                                        ; $70ee: $f1
    rst $18                                       ; $70ef: $df
    ld [de], a                                    ; $70f0: $12
    ld a, [bc]                                    ; $70f1: $0a
    rst $18                                       ; $70f2: $df
    inc c                                         ; $70f3: $0c
    ld a, [bc]                                    ; $70f4: $0a
    push af                                       ; $70f5: $f5
    ld a, $05                                     ; $70f6: $3e $05
    rst $18                                       ; $70f8: $df
    inc b                                         ; $70f9: $04
    ld a, [bc]                                    ; $70fa: $0a
    pop af                                        ; $70fb: $f1
    and a                                         ; $70fc: $a7
    jp nz, Jump_030_7184                          ; $70fd: $c2 $84 $71

    rst $18                                       ; $7100: $df
    db $10                                        ; $7101: $10
    ld a, [bc]                                    ; $7102: $0a
    rst $08                                       ; $7103: $cf
    adc d                                         ; $7104: $8a
    ld a, $08                                     ; $7105: $3e $08
    ld de, $ff80                                  ; $7107: $11 $80 $ff
    rst $18                                       ; $710a: $df
    ld b, b                                       ; $710b: $40
    ld a, [bc]                                    ; $710c: $0a
    ld a, $08                                     ; $710d: $3e $08
    rst $18                                       ; $710f: $df
    ld b, d                                       ; $7110: $42
    ld a, [bc]                                    ; $7111: $0a
    ld a, $08                                     ; $7112: $3e $08
    rst $18                                       ; $7114: $df
    ld [$ef0a], sp                                ; $7115: $08 $0a $ef
    ld h, b                                       ; $7118: $60
    inc de                                        ; $7119: $13
    jr @+$0d                                      ; $711a: $18 $0b

jr_030_711c:
    ld hl, $1808                                  ; $711c: $21 $08 $18
    rst $18                                       ; $711f: $df
    ld c, $0a                                     ; $7120: $0e $0a
    ld a, $08                                     ; $7122: $3e $08
    rst $18                                       ; $7124: $df
    ld [$f50a], sp                                ; $7125: $08 $0a $f5
    ld a, $14                                     ; $7128: $3e $14
    rst $18                                       ; $712a: $df
    inc b                                         ; $712b: $04
    ld a, [bc]                                    ; $712c: $0a
    pop af                                        ; $712d: $f1
    ld de, $0101                                  ; $712e: $11 $01 $01
    ld hl, $1809                                  ; $7131: $21 $09 $18
    rst $18                                       ; $7134: $df
    ld b, h                                       ; $7135: $44
    ld a, [bc]                                    ; $7136: $0a
    cp $ff                                        ; $7137: $fe $ff
    jr z, jr_030_711c                             ; $7139: $28 $e1

    cp $01                                        ; $713b: $fe $01
    jr nz, jr_030_714a                            ; $713d: $20 $0b

    rst $20                                       ; $713f: $e7
    ld h, b                                       ; $7140: $60
    inc de                                        ; $7141: $13
    ld hl, $180b                                  ; $7142: $21 $0b $18
    rst $18                                       ; $7145: $df
    ld c, $0a                                     ; $7146: $0e $0a
    jr jr_030_7150                                ; $7148: $18 $06

jr_030_714a:
    ld hl, $180a                                  ; $714a: $21 $0a $18
    rst $18                                       ; $714d: $df
    ld c, $0a                                     ; $714e: $0e $0a

jr_030_7150:
    ld a, $08                                     ; $7150: $3e $08
    rst $18                                       ; $7152: $df
    ld [$3e0a], sp                                ; $7153: $08 $0a $3e
    ld a, [bc]                                    ; $7156: $0a
    ld b, a                                       ; $7157: $47
    ld a, $05                                     ; $7158: $3e $05
    rst $18                                       ; $715a: $df
    ld [hl-], a                                   ; $715b: $32
    ld a, [bc]                                    ; $715c: $0a
    ld a, $0a                                     ; $715d: $3e $0a
    rst $18                                       ; $715f: $df
    inc [hl]                                      ; $7160: $34
    ld a, [bc]                                    ; $7161: $0a
    ld a, $08                                     ; $7162: $3e $08
    ld b, $c0                                     ; $7164: $06 $c0
    rst $18                                       ; $7166: $df
    inc l                                         ; $7167: $2c
    ld a, [bc]                                    ; $7168: $0a
    ld a, $08                                     ; $7169: $3e $08
    ld b, a                                       ; $716b: $47
    ld a, $05                                     ; $716c: $3e $05
    rst $18                                       ; $716e: $df
    ld [hl-], a                                   ; $716f: $32
    ld a, [bc]                                    ; $7170: $0a
    ld a, $09                                     ; $7171: $3e $09
    ld b, a                                       ; $7173: $47
    ld a, $05                                     ; $7174: $3e $05
    rst $18                                       ; $7176: $df
    ld [hl-], a                                   ; $7177: $32
    ld a, [bc]                                    ; $7178: $0a
    ld a, $09                                     ; $7179: $3e $09
    rst $18                                       ; $717b: $df
    inc [hl]                                      ; $717c: $34
    ld a, [bc]                                    ; $717d: $0a
    ld a, $03                                     ; $717e: $3e $03
    ld [$c441], a                                 ; $7180: $ea $41 $c4
    ret                                           ; $7183: $c9


Jump_030_7184:
    rst $20                                       ; $7184: $e7
    jr nz, jr_030_71a6                            ; $7185: $20 $1f

    ld a, $08                                     ; $7187: $3e $08
    rst $18                                       ; $7189: $df
    ld [$3e0a], sp                                ; $718a: $08 $0a $3e
    ld [$c006], sp                                ; $718d: $08 $06 $c0
    rst $18                                       ; $7190: $df
    inc l                                         ; $7191: $2c
    ld a, [bc]                                    ; $7192: $0a
    ld a, $08                                     ; $7193: $3e $08
    ld b, a                                       ; $7195: $47
    ld a, $05                                     ; $7196: $3e $05
    rst $18                                       ; $7198: $df
    ld [hl-], a                                   ; $7199: $32
    ld a, [bc]                                    ; $719a: $0a
    ld a, $08                                     ; $719b: $3e $08
    rst $18                                       ; $719d: $df
    inc [hl]                                      ; $719e: $34
    ld a, [bc]                                    ; $719f: $0a
    ld a, $09                                     ; $71a0: $3e $09
    ld b, $00                                     ; $71a2: $06 $00
    rst $18                                       ; $71a4: $df
    inc l                                         ; $71a5: $2c

jr_030_71a6:
    ld a, [bc]                                    ; $71a6: $0a
    ld a, $0a                                     ; $71a7: $3e $0a
    ld b, $80                                     ; $71a9: $06 $80
    rst $18                                       ; $71ab: $df
    inc l                                         ; $71ac: $2c
    ld a, [bc]                                    ; $71ad: $0a
    ret                                           ; $71ae: $c9


Jump_030_71af:
    ld hl, $154e                                  ; $71af: $21 $4e $15
    rst $18                                       ; $71b2: $df
    ld c, $0a                                     ; $71b3: $0e $0a
    ld a, $08                                     ; $71b5: $3e $08
    rst $18                                       ; $71b7: $df
    ld [$c90a], sp                                ; $71b8: $08 $0a $c9
    rst $38                                       ; $71bb: $ff
    ld [hl], c                                    ; $71bc: $71
    ld b, $72                                     ; $71bd: $06 $72
    ret                                           ; $71bf: $c9


    ld [hl], c                                    ; $71c0: $71
    rrca                                          ; $71c1: $0f
    ld [hl], d                                    ; $71c2: $72
    db $10                                        ; $71c3: $10
    ld [hl], d                                    ; $71c4: $72
    ld de, $1272                                  ; $71c5: $11 $72 $12
    ld [hl], d                                    ; $71c8: $72
    sbc c                                         ; $71c9: $99
    ld a, l                                       ; $71ca: $7d
    nop                                           ; $71cb: $00
    add hl, bc                                    ; $71cc: $09
    nop                                           ; $71cd: $00
    dec bc                                        ; $71ce: $0b
    nop                                           ; $71cf: $00
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    ret nz                                        ; $71d2: $c0

    ld bc, $992d                                  ; $71d3: $01 $2d $99
    ld a, l                                       ; $71d6: $7d
    nop                                           ; $71d7: $00
    dec bc                                        ; $71d8: $0b
    nop                                           ; $71d9: $00
    dec c                                         ; $71da: $0d
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    ret nz                                        ; $71de: $c0

    ld bc, $990d                                  ; $71df: $01 $0d $99
    ld a, l                                       ; $71e2: $7d
    nop                                           ; $71e3: $00
    add hl, bc                                    ; $71e4: $09
    nop                                           ; $71e5: $00
    dec c                                         ; $71e6: $0d
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    ret nz                                        ; $71ea: $c0

    ld bc, $0016                                  ; $71eb: $01 $16 $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    rst $38                                       ; $71f5: $ff
    nop                                           ; $71f6: $00
    nop                                           ; $71f7: $00
    nop                                           ; $71f8: $00
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    rst $38                                       ; $71fe: $ff
    ld bc, $00c0                                  ; $71ff: $01 $c0 $00
    dec bc                                        ; $7202: $0b
    nop                                           ; $7203: $00
    dec bc                                        ; $7204: $0b
    rst $38                                       ; $7205: $ff
    ld bc, $00ff                                  ; $7206: $01 $ff $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    ld [bc], a                                    ; $720c: $02
    inc bc                                        ; $720d: $03
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    ld c, $7f                                     ; $7212: $0e $7f
    call Call_000_25a1                            ; $7214: $cd $a1 $25
    ld a, [$c46a]                                 ; $7217: $fa $6a $c4
    cp $0f                                        ; $721a: $fe $0f
    jp z, Jump_030_7220                           ; $721c: $ca $20 $72

    ret                                           ; $721f: $c9


Jump_030_7220:
    rst $18                                       ; $7220: $df
    nop                                           ; $7221: $00
    ld a, [bc]                                    ; $7222: $0a
    ld hl, $1539                                  ; $7223: $21 $39 $15
    rst $18                                       ; $7226: $df
    ld c, $0a                                     ; $7227: $0e $0a
    ld c, $04                                     ; $7229: $0e $04
    call Call_000_25af                            ; $722b: $cd $af $25
    call Call_000_2625                            ; $722e: $cd $25 $26
    push af                                       ; $7231: $f5
    ld a, $1e                                     ; $7232: $3e $1e
    rst $18                                       ; $7234: $df
    inc b                                         ; $7235: $04
    ld a, [bc]                                    ; $7236: $0a
    pop af                                        ; $7237: $f1
    ld a, $00                                     ; $7238: $3e $00
    ld b, a                                       ; $723a: $47
    ld a, $02                                     ; $723b: $3e $02
    rst $18                                       ; $723d: $df
    ld l, $0a                                     ; $723e: $2e $0a
    rst $30                                       ; $7240: $f7
    ldh [rNR12], a                                ; $7241: $e0 $12
    jr nz, jr_030_726c                            ; $7243: $20 $27

    rst $30                                       ; $7245: $f7
    ld b, b                                       ; $7246: $40
    inc de                                        ; $7247: $13
    jr nz, jr_030_726c                            ; $7248: $20 $22

    rst $20                                       ; $724a: $e7
    ldh [rNR12], a                                ; $724b: $e0 $12
    ld a, $02                                     ; $724d: $3e $02
    ld b, a                                       ; $724f: $47
    ld a, $05                                     ; $7250: $3e $05
    rst $18                                       ; $7252: $df
    ld [hl-], a                                   ; $7253: $32
    ld a, [bc]                                    ; $7254: $0a
    ld a, $02                                     ; $7255: $3e $02
    rst $18                                       ; $7257: $df
    inc [hl]                                      ; $7258: $34
    ld a, [bc]                                    ; $7259: $0a
    ld a, $02                                     ; $725a: $3e $02
    rst $18                                       ; $725c: $df
    ld [$3e0a], sp                                ; $725d: $08 $0a $3e
    ld [bc], a                                    ; $7260: $02
    ld b, a                                       ; $7261: $47
    ld a, $07                                     ; $7262: $3e $07
    rst $18                                       ; $7264: $df
    ld [hl-], a                                   ; $7265: $32
    ld a, [bc]                                    ; $7266: $0a
    ld a, $02                                     ; $7267: $3e $02
    rst $18                                       ; $7269: $df
    inc [hl]                                      ; $726a: $34
    ld a, [bc]                                    ; $726b: $0a

jr_030_726c:
    ld hl, $153a                                  ; $726c: $21 $3a $15
    rst $18                                       ; $726f: $df
    ld c, $0a                                     ; $7270: $0e $0a
    ld a, $02                                     ; $7272: $3e $02
    rst $18                                       ; $7274: $df
    ld a, [bc]                                    ; $7275: $0a
    ld a, [bc]                                    ; $7276: $0a
    rst $18                                       ; $7277: $df
    ld [de], a                                    ; $7278: $12
    ld a, [bc]                                    ; $7279: $0a
    rst $18                                       ; $727a: $df
    inc c                                         ; $727b: $0c
    ld a, [bc]                                    ; $727c: $0a
    push af                                       ; $727d: $f5
    ld a, $05                                     ; $727e: $3e $05
    rst $18                                       ; $7280: $df
    inc b                                         ; $7281: $04
    ld a, [bc]                                    ; $7282: $0a
    pop af                                        ; $7283: $f1
    and a                                         ; $7284: $a7
    jr nz, jr_030_728c                            ; $7285: $20 $05

    rst $28                                       ; $7287: $ef
    nop                                           ; $7288: $00
    inc de                                        ; $7289: $13
    jr jr_030_72a4                                ; $728a: $18 $18

jr_030_728c:
    ld a, $02                                     ; $728c: $3e $02
    rst $18                                       ; $728e: $df
    ld a, [bc]                                    ; $728f: $0a
    ld a, [bc]                                    ; $7290: $0a
    rst $18                                       ; $7291: $df
    ld [de], a                                    ; $7292: $12
    ld a, [bc]                                    ; $7293: $0a
    rst $18                                       ; $7294: $df
    inc c                                         ; $7295: $0c
    ld a, [bc]                                    ; $7296: $0a
    push af                                       ; $7297: $f5
    ld a, $05                                     ; $7298: $3e $05
    rst $18                                       ; $729a: $df
    inc b                                         ; $729b: $04
    ld a, [bc]                                    ; $729c: $0a
    pop af                                        ; $729d: $f1
    and a                                         ; $729e: $a7
    jr nz, jr_030_726c                            ; $729f: $20 $cb

    rst $20                                       ; $72a1: $e7
    nop                                           ; $72a2: $00
    inc de                                        ; $72a3: $13

jr_030_72a4:
    call Call_030_72f0                            ; $72a4: $cd $f0 $72
    ret                                           ; $72a7: $c9


Call_030_72a8:
    ld a, $06                                     ; $72a8: $3e $06
    ldh [$96], a                                  ; $72aa: $e0 $96
    ldh [rSVBK], a                                ; $72ac: $e0 $70
    ld hl, $c873                                  ; $72ae: $21 $73 $c8
    ld a, [$c835]                                 ; $72b1: $fa $35 $c8
    or a                                          ; $72b4: $b7
    jr nz, jr_030_72c9                            ; $72b5: $20 $12

    bit 0, [hl]                                   ; $72b7: $cb $46
    jr z, jr_030_72c2                             ; $72b9: $28 $07

    res 0, [hl]                                   ; $72bb: $cb $86
    ld bc, $8000                                  ; $72bd: $01 $00 $80
    jr jr_030_72db                                ; $72c0: $18 $19

jr_030_72c2:
    set 0, [hl]                                   ; $72c2: $cb $c6
    ld bc, $0b00                                  ; $72c4: $01 $00 $0b
    jr jr_030_72db                                ; $72c7: $18 $12

jr_030_72c9:
    bit 1, [hl]                                   ; $72c9: $cb $4e
    jr z, jr_030_72d4                             ; $72cb: $28 $07

    res 1, [hl]                                   ; $72cd: $cb $8e
    ld bc, $0c01                                  ; $72cf: $01 $01 $0c
    jr jr_030_72db                                ; $72d2: $18 $07

jr_030_72d4:
    set 1, [hl]                                   ; $72d4: $cb $ce
    ld bc, $0d01                                  ; $72d6: $01 $01 $0d
    jr jr_030_72db                                ; $72d9: $18 $00

jr_030_72db:
    rst $18                                       ; $72db: $df
    jr nz, jr_030_72e0                            ; $72dc: $20 $02

    ret                                           ; $72de: $c9


Call_030_72df:
    rst $30                                       ; $72df: $f7

jr_030_72e0:
    ld h, b                                       ; $72e0: $60
    inc de                                        ; $72e1: $13
    jr z, jr_030_72ea                             ; $72e2: $28 $06

    ld a, $03                                     ; $72e4: $3e $03
    ld [$c834], a                                 ; $72e6: $ea $34 $c8
    ret                                           ; $72e9: $c9


jr_030_72ea:
    ld a, $02                                     ; $72ea: $3e $02
    ld [$c834], a                                 ; $72ec: $ea $34 $c8
    ret                                           ; $72ef: $c9


Call_030_72f0:
    ld c, $04                                     ; $72f0: $0e $04
    call Call_000_25a1                            ; $72f2: $cd $a1 $25
    call Call_000_2625                            ; $72f5: $cd $25 $26
    rst $18                                       ; $72f8: $df
    inc e                                         ; $72f9: $1c
    db $10                                        ; $72fa: $10
    call Call_030_72df                            ; $72fb: $cd $df $72
    ld bc, $8000                                  ; $72fe: $01 $00 $80
    rst $18                                       ; $7301: $df
    ld e, $02                                     ; $7302: $1e $02
    ld bc, $0c01                                  ; $7304: $01 $01 $0c
    rst $18                                       ; $7307: $df
    ld e, $02                                     ; $7308: $1e $02
    ld a, $2b                                     ; $730a: $3e $2b
    ld b, a                                       ; $730c: $47
    ld a, $06                                     ; $730d: $3e $06
    ld c, a                                       ; $730f: $4f
    rst $18                                       ; $7310: $df
    ld c, [hl]                                    ; $7311: $4e
    ld a, [bc]                                    ; $7312: $0a
    ld hl, $0301                                  ; $7313: $21 $01 $03
    rst $18                                       ; $7316: $df
    db $10                                        ; $7317: $10
    db $10                                        ; $7318: $10
    ld a, $80                                     ; $7319: $3e $80
    rst $18                                       ; $731b: $df
    ld e, $10                                     ; $731c: $1e $10
    ldh a, [$95]                                  ; $731e: $f0 $95
    ld hl, $7361                                  ; $7320: $21 $61 $73
    rst $18                                       ; $7323: $df
    ld a, [de]                                    ; $7324: $1a
    db $10                                        ; $7325: $10
    xor a                                         ; $7326: $af
    ld [$c873], a                                 ; $7327: $ea $73 $c8
    ld hl, $c878                                  ; $732a: $21 $78 $c8
    ld [hl], $01                                  ; $732d: $36 $01
    inc hl                                        ; $732f: $23
    ld a, [$c810]                                 ; $7330: $fa $10 $c8
    ld [hl+], a                                   ; $7333: $22
    ld [hl], $0b                                  ; $7334: $36 $0b
    inc hl                                        ; $7336: $23
    ld [hl], $0c                                  ; $7337: $36 $0c
    inc hl                                        ; $7339: $23
    ld [hl], $0d                                  ; $733a: $36 $0d
    rst $30                                       ; $733c: $f7
    nop                                           ; $733d: $00
    inc de                                        ; $733e: $13
    jr z, jr_030_7358                             ; $733f: $28 $17

    ld a, $06                                     ; $7341: $3e $06
    ldh [$96], a                                  ; $7343: $e0 $96
    ldh [rSVBK], a                                ; $7345: $e0 $70
    xor a                                         ; $7347: $af
    ld [$c835], a                                 ; $7348: $ea $35 $c8
    call Call_030_72a8                            ; $734b: $cd $a8 $72
    ld hl, $c879                                  ; $734e: $21 $79 $c8
    ld [hl], $0b                                  ; $7351: $36 $0b
    inc hl                                        ; $7353: $23
    ld a, [$c810]                                 ; $7354: $fa $10 $c8
    ld [hl], a                                    ; $7357: $77

jr_030_7358:
    ld a, $12                                     ; $7358: $3e $12
    rst $18                                       ; $735a: $df
    ld [de], a                                    ; $735b: $12
    db $10                                        ; $735c: $10
    rst $18                                       ; $735d: $df
    jr nc, jr_030_7370                            ; $735e: $30 $10

    ret                                           ; $7360: $c9


    or l                                          ; $7361: $b5
    ld [hl], e                                    ; $7362: $73
    rst $00                                       ; $7363: $c7
    ld [hl], e                                    ; $7364: $73
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    add c                                         ; $7367: $81
    ld [hl], e                                    ; $7368: $73
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00

jr_030_7370:
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    ld a, $06                                     ; $7381: $3e $06
    ldh [$96], a                                  ; $7383: $e0 $96
    ldh [rSVBK], a                                ; $7385: $e0 $70
    ld hl, $c873                                  ; $7387: $21 $73 $c8
    bit 0, [hl]                                   ; $738a: $cb $46
    jr nz, jr_030_7396                            ; $738c: $20 $08

    ld bc, $8000                                  ; $738e: $01 $00 $80
    call Call_030_73af                            ; $7391: $cd $af $73
    jr jr_030_739c                                ; $7394: $18 $06

jr_030_7396:
    ld bc, $0b00                                  ; $7396: $01 $00 $0b
    call Call_030_73af                            ; $7399: $cd $af $73

jr_030_739c:
    bit 1, [hl]                                   ; $739c: $cb $4e
    jr nz, jr_030_73a8                            ; $739e: $20 $08

    ld bc, $0c01                                  ; $73a0: $01 $01 $0c
    call Call_030_73af                            ; $73a3: $cd $af $73
    jr jr_030_73ae                                ; $73a6: $18 $06

jr_030_73a8:
    ld bc, $0d01                                  ; $73a8: $01 $01 $0d
    call Call_030_73af                            ; $73ab: $cd $af $73

jr_030_73ae:
    ret                                           ; $73ae: $c9


Call_030_73af:
    push hl                                       ; $73af: $e5
    rst $18                                       ; $73b0: $df
    jr nz, jr_030_73b5                            ; $73b1: $20 $02

    pop hl                                        ; $73b3: $e1
    ret                                           ; $73b4: $c9


jr_030_73b5:
    ld a, [$c835]                                 ; $73b5: $fa $35 $c8
    or a                                          ; $73b8: $b7
    jr nz, jr_030_73c0                            ; $73b9: $20 $05

    rst $18                                       ; $73bb: $df
    db $10                                        ; $73bc: $10
    ld [de], a                                    ; $73bd: $12
    jr jr_030_73c3                                ; $73be: $18 $03

jr_030_73c0:
    rst $18                                       ; $73c0: $df
    ld [de], a                                    ; $73c1: $12
    ld [de], a                                    ; $73c2: $12

jr_030_73c3:
    call Call_000_2e3b                            ; $73c3: $cd $3b $2e
    ret                                           ; $73c6: $c9


    call Call_030_72a8                            ; $73c7: $cd $a8 $72
    ret                                           ; $73ca: $c9


    dec de                                        ; $73cb: $1b
    ld [hl], h                                    ; $73cc: $74
    ld a, [hl-]                                   ; $73cd: $3a
    ld [hl], h                                    ; $73ce: $74
    reti                                          ; $73cf: $d9


    ld [hl], e                                    ; $73d0: $73
    ld h, c                                       ; $73d1: $61
    ld [hl], h                                    ; $73d2: $74
    ld [hl], d                                    ; $73d3: $72
    ld [hl], h                                    ; $73d4: $74
    ld [hl], h                                    ; $73d5: $74
    ld [hl], h                                    ; $73d6: $74
    ld a, l                                       ; $73d7: $7d
    ld [hl], h                                    ; $73d8: $74
    sbc c                                         ; $73d9: $99
    ld a, l                                       ; $73da: $7d
    nop                                           ; $73db: $00
    rlca                                          ; $73dc: $07
    nop                                           ; $73dd: $00
    dec c                                         ; $73de: $0d
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    ret nz                                        ; $73e2: $c0

    ld bc, $992d                                  ; $73e3: $01 $2d $99
    ld a, l                                       ; $73e6: $7d
    nop                                           ; $73e7: $00
    add hl, bc                                    ; $73e8: $09
    nop                                           ; $73e9: $00
    rrca                                          ; $73ea: $0f
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    ret nz                                        ; $73ee: $c0

    ld bc, $990d                                  ; $73ef: $01 $0d $99
    ld a, l                                       ; $73f2: $7d
    nop                                           ; $73f3: $00
    rlca                                          ; $73f4: $07
    nop                                           ; $73f5: $00
    rrca                                          ; $73f6: $0f
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    ret nz                                        ; $73fa: $c0

    ld bc, $9916                                  ; $73fb: $01 $16 $99
    ld a, l                                       ; $73fe: $7d
    nop                                           ; $73ff: $00
    add hl, bc                                    ; $7400: $09
    nop                                           ; $7401: $00
    dec bc                                        ; $7402: $0b
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    ld b, b                                       ; $7406: $40
    ld bc, $001d                                  ; $7407: $01 $1d $00
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    nop                                           ; $740f: $00
    nop                                           ; $7410: $00
    rst $38                                       ; $7411: $ff
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    rst $38                                       ; $741a: $ff
    ld bc, $00c0                                  ; $741b: $01 $c0 $00
    add hl, bc                                    ; $741e: $09
    nop                                           ; $741f: $00
    dec c                                         ; $7420: $0d
    ld a, [bc]                                    ; $7421: $0a
    ld b, b                                       ; $7422: $40
    nop                                           ; $7423: $00
    add hl, bc                                    ; $7424: $09
    nop                                           ; $7425: $00
    dec c                                         ; $7426: $0d
    dec bc                                        ; $7427: $0b
    ret nz                                        ; $7428: $c0

    nop                                           ; $7429: $00
    ld bc, $0d00                                  ; $742a: $01 $00 $0d
    inc c                                         ; $742d: $0c
    ret nz                                        ; $742e: $c0

    nop                                           ; $742f: $00
    ld bc, $0d00                                  ; $7430: $01 $00 $0d
    dec c                                         ; $7433: $0d
    ret nz                                        ; $7434: $c0

    nop                                           ; $7435: $00
    ld bc, $0d00                                  ; $7436: $01 $00 $0d
    rst $38                                       ; $7439: $ff
    ld bc, $00ff                                  ; $743a: $01 $ff $00
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00
    ld [bc], a                                    ; $7440: $02
    inc bc                                        ; $7441: $03
    ld c, $ff                                     ; $7442: $0e $ff
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    dec hl                                        ; $7448: $2b
    ld a, [bc]                                    ; $7449: $0a
    rrca                                          ; $744a: $0f
    rst $38                                       ; $744b: $ff
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    nop                                           ; $744e: $00
    nop                                           ; $744f: $00
    ld a, [hl+]                                   ; $7450: $2a
    rrca                                          ; $7451: $0f
    rst $38                                       ; $7452: $ff
    call Call_030_7c61                            ; $7453: $cd $61 $7c
    call Call_030_7cae                            ; $7456: $cd $ae $7c
    ret                                           ; $7459: $c9


    call Call_030_7c61                            ; $745a: $cd $61 $7c
    call Call_030_7ce3                            ; $745d: $cd $e3 $7c
    ret                                           ; $7460: $c9


    dec b                                         ; $7461: $05
    ld b, b                                       ; $7462: $40
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    ld d, e                                       ; $7465: $53
    ld [hl], h                                    ; $7466: $74
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    dec b                                         ; $7469: $05
    jr nz, jr_030_746c                            ; $746a: $20 $00

jr_030_746c:
    nop                                           ; $746c: $00
    ld e, d                                       ; $746d: $5a
    ld [hl], h                                    ; $746e: $74
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    ret                                           ; $7473: $c9


    ld bc, $00ff                                  ; $7474: $01 $ff $00
    nop                                           ; $7477: $00
    ld [hl], e                                    ; $7478: $73
    ld [hl], h                                    ; $7479: $74
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    rst $38                                       ; $747c: $ff
    call $74e5                                    ; $747d: $cd $e5 $74
    ld a, [$c46a]                                 ; $7480: $fa $6a $c4
    cp $01                                        ; $7483: $fe $01
    jp z, Jump_030_74fe                           ; $7485: $ca $fe $74

    cp $06                                        ; $7488: $fe $06
    jp z, Jump_030_76f9                           ; $748a: $ca $f9 $76

    cp $0a                                        ; $748d: $fe $0a
    jp z, Jump_030_7a67                           ; $748f: $ca $67 $7a

    ld a, [$c46a]                                 ; $7492: $fa $6a $c4
    cp $0b                                        ; $7495: $fe $0b
    jp z, Jump_030_790f                           ; $7497: $ca $0f $79

    cp $0c                                        ; $749a: $fe $0c
    jp z, Jump_030_7705                           ; $749c: $ca $05 $77

    cp $0d                                        ; $749f: $fe $0d
    jp z, Jump_030_770d                           ; $74a1: $ca $0d $77

    ret                                           ; $74a4: $c9


    add b                                         ; $74a5: $80
    nop                                           ; $74a6: $00
    jr nz, jr_030_74fe                            ; $74a7: $20 $55

    and b                                         ; $74a9: $a0
    ld a, [hl]                                    ; $74aa: $7e
    rst $38                                       ; $74ab: $ff
    ld a, a                                       ; $74ac: $7f
    ld [$0825], sp                                ; $74ad: $08 $25 $08
    dec h                                         ; $74b0: $25
    ld [$0825], sp                                ; $74b1: $08 $25 $08
    dec h                                         ; $74b4: $25
    ld c, h                                       ; $74b5: $4c
    ld [bc], a                                    ; $74b6: $02
    ld e, d                                       ; $74b7: $5a
    nop                                           ; $74b8: $00
    call c, $a912                                 ; $74b9: $dc $12 $a9
    inc h                                         ; $74bc: $24
    call c, $9f12                                 ; $74bd: $dc $12 $9f
    ld [bc], a                                    ; $74c0: $02
    ld c, h                                       ; $74c1: $4c
    ld [bc], a                                    ; $74c2: $02
    xor c                                         ; $74c3: $a9
    inc h                                         ; $74c4: $24
    call c, Call_030_5a12                         ; $74c5: $dc $12 $5a
    nop                                           ; $74c8: $00
    call c, $a912                                 ; $74c9: $dc $12 $a9
    inc h                                         ; $74cc: $24
    rra                                           ; $74cd: $1f
    ld h, e                                       ; $74ce: $63
    xor c                                         ; $74cf: $a9
    inc h                                         ; $74d0: $24
    jp z, $4c05                                   ; $74d1: $ca $05 $4c

    ld [bc], a                                    ; $74d4: $02
    sbc a                                         ; $74d5: $9f
    ld [bc], a                                    ; $74d6: $02
    rra                                           ; $74d7: $1f
    ld h, e                                       ; $74d8: $63
    rst $18                                       ; $74d9: $df
    nop                                           ; $74da: $00
    jp z, Jump_000_0828                           ; $74db: $ca $28 $08

    dec h                                         ; $74de: $25
    ld [$0825], sp                                ; $74df: $08 $25 $08
    dec h                                         ; $74e2: $25
    ld [$0625], sp                                ; $74e3: $08 $25 $06
    ld bc, $1a0e                                  ; $74e6: $01 $0e $1a
    ld d, $01                                     ; $74e9: $16 $01
    ld e, $06                                     ; $74eb: $1e $06
    ld h, $3a                                     ; $74ed: $26 $3a
    ld l, $04                                     ; $74ef: $2e $04
    rst $18                                       ; $74f1: $df
    ld a, [bc]                                    ; $74f2: $0a
    dec bc                                        ; $74f3: $0b
    ld hl, $74b5                                  ; $74f4: $21 $b5 $74
    ld de, $0206                                  ; $74f7: $11 $06 $02
    call Call_000_0595                            ; $74fa: $cd $95 $05
    ret                                           ; $74fd: $c9


Jump_030_74fe:
jr_030_74fe:
    rst $18                                       ; $74fe: $df
    nop                                           ; $74ff: $00
    ld a, [bc]                                    ; $7500: $0a
    ld hl, $1533                                  ; $7501: $21 $33 $15
    rst $18                                       ; $7504: $df
    ld c, $0a                                     ; $7505: $0e $0a
    ld c, $04                                     ; $7507: $0e $04
    call Call_000_25af                            ; $7509: $cd $af $25
    call Call_000_2625                            ; $750c: $cd $25 $26
    ld a, $05                                     ; $750f: $3e $05
    ld b, a                                       ; $7511: $47
    ld a, $06                                     ; $7512: $3e $06
    rst $18                                       ; $7514: $df
    ld [hl-], a                                   ; $7515: $32
    ld a, [bc]                                    ; $7516: $0a
    ld a, $05                                     ; $7517: $3e $05
    rst $18                                       ; $7519: $df
    inc [hl]                                      ; $751a: $34
    ld a, [bc]                                    ; $751b: $0a
    ld a, $05                                     ; $751c: $3e $05
    rst $18                                       ; $751e: $df
    ld [$3e0a], sp                                ; $751f: $08 $0a $3e
    ld [bc], a                                    ; $7522: $02
    ld b, a                                       ; $7523: $47
    ld a, $00                                     ; $7524: $3e $00
    rst $18                                       ; $7526: $df
    jr nc, jr_030_7533                            ; $7527: $30 $0a

    push af                                       ; $7529: $f5
    ld a, $1e                                     ; $752a: $3e $1e
    rst $18                                       ; $752c: $df
    inc b                                         ; $752d: $04
    ld a, [bc]                                    ; $752e: $0a
    pop af                                        ; $752f: $f1
    ld a, $05                                     ; $7530: $3e $05
    ld b, a                                       ; $7532: $47

jr_030_7533:
    ld a, $07                                     ; $7533: $3e $07
    rst $18                                       ; $7535: $df
    ld [hl-], a                                   ; $7536: $32
    ld a, [bc]                                    ; $7537: $0a
    ld a, $05                                     ; $7538: $3e $05
    rst $18                                       ; $753a: $df
    inc [hl]                                      ; $753b: $34
    ld a, [bc]                                    ; $753c: $0a
    push af                                       ; $753d: $f5
    ld a, $1e                                     ; $753e: $3e $1e
    rst $18                                       ; $7540: $df
    inc b                                         ; $7541: $04
    ld a, [bc]                                    ; $7542: $0a
    pop af                                        ; $7543: $f1
    ld a, $05                                     ; $7544: $3e $05
    ld b, a                                       ; $7546: $47
    ld a, $05                                     ; $7547: $3e $05
    rst $18                                       ; $7549: $df
    ld [hl-], a                                   ; $754a: $32
    ld a, [bc]                                    ; $754b: $0a
    ld a, $05                                     ; $754c: $3e $05
    rst $18                                       ; $754e: $df
    inc [hl]                                      ; $754f: $34
    ld a, [bc]                                    ; $7550: $0a
    rst $30                                       ; $7551: $f7
    ld b, b                                       ; $7552: $40
    ld de, $eec2                                  ; $7553: $11 $c2 $ee
    halt                                          ; $7556: $76
    ld a, $05                                     ; $7557: $3e $05
    rst $18                                       ; $7559: $df
    ld [$df0a], sp                                ; $755a: $08 $0a $df
    db $10                                        ; $755d: $10
    ld a, [bc]                                    ; $755e: $0a
    ld a, $00                                     ; $755f: $3e $00
    ld b, $c0                                     ; $7561: $06 $c0
    rst $18                                       ; $7563: $df
    inc l                                         ; $7564: $2c
    ld a, [bc]                                    ; $7565: $0a
    ld a, $02                                     ; $7566: $3e $02
    ld b, $c0                                     ; $7568: $06 $c0
    rst $18                                       ; $756a: $df
    inc l                                         ; $756b: $2c
    ld a, [bc]                                    ; $756c: $0a
    push af                                       ; $756d: $f5
    ld a, $1e                                     ; $756e: $3e $1e
    rst $18                                       ; $7570: $df
    inc b                                         ; $7571: $04
    ld a, [bc]                                    ; $7572: $0a
    pop af                                        ; $7573: $f1
    ld a, $05                                     ; $7574: $3e $05
    ld b, a                                       ; $7576: $47
    ld a, $05                                     ; $7577: $3e $05
    rst $18                                       ; $7579: $df
    ld [hl-], a                                   ; $757a: $32
    ld a, [bc]                                    ; $757b: $0a
    ld a, $05                                     ; $757c: $3e $05
    rst $18                                       ; $757e: $df
    inc [hl]                                      ; $757f: $34
    ld a, [bc]                                    ; $7580: $0a
    ld a, $05                                     ; $7581: $3e $05
    rst $18                                       ; $7583: $df
    ld [$3e0a], sp                                ; $7584: $08 $0a $3e
    inc b                                         ; $7587: $04
    ld b, a                                       ; $7588: $47
    ld a, $03                                     ; $7589: $3e $03
    rst $18                                       ; $758b: $df
    jr nc, jr_030_7598                            ; $758c: $30 $0a

    push af                                       ; $758e: $f5
    ld a, $1e                                     ; $758f: $3e $1e
    rst $18                                       ; $7591: $df
    inc b                                         ; $7592: $04
    ld a, [bc]                                    ; $7593: $0a
    pop af                                        ; $7594: $f1
    ld a, $04                                     ; $7595: $3e $04
    ld b, a                                       ; $7597: $47

jr_030_7598:
    ld a, $05                                     ; $7598: $3e $05
    rst $18                                       ; $759a: $df
    ld [hl-], a                                   ; $759b: $32
    ld a, [bc]                                    ; $759c: $0a
    ld a, $03                                     ; $759d: $3e $03
    ld b, a                                       ; $759f: $47
    ld a, $05                                     ; $75a0: $3e $05
    rst $18                                       ; $75a2: $df
    ld [hl-], a                                   ; $75a3: $32
    ld a, [bc]                                    ; $75a4: $0a
    ld a, $03                                     ; $75a5: $3e $03
    rst $18                                       ; $75a7: $df
    inc [hl]                                      ; $75a8: $34
    ld a, [bc]                                    ; $75a9: $0a
    ld a, $04                                     ; $75aa: $3e $04
    ld b, $c0                                     ; $75ac: $06 $c0
    rst $18                                       ; $75ae: $df
    inc l                                         ; $75af: $2c
    ld a, [bc]                                    ; $75b0: $0a
    ld a, $03                                     ; $75b1: $3e $03
    ld b, $c0                                     ; $75b3: $06 $c0
    rst $18                                       ; $75b5: $df
    inc l                                         ; $75b6: $2c
    ld a, [bc]                                    ; $75b7: $0a
    ld a, $04                                     ; $75b8: $3e $04
    ld b, a                                       ; $75ba: $47
    ld a, $05                                     ; $75bb: $3e $05
    rst $18                                       ; $75bd: $df
    ld [hl-], a                                   ; $75be: $32
    ld a, [bc]                                    ; $75bf: $0a
    ld a, $00                                     ; $75c0: $3e $00
    ld b, a                                       ; $75c2: $47
    ld a, $05                                     ; $75c3: $3e $05
    rst $18                                       ; $75c5: $df
    ld [hl-], a                                   ; $75c6: $32
    ld a, [bc]                                    ; $75c7: $0a
    ld a, $02                                     ; $75c8: $3e $02
    ld b, a                                       ; $75ca: $47
    ld a, $05                                     ; $75cb: $3e $05
    rst $18                                       ; $75cd: $df
    ld [hl-], a                                   ; $75ce: $32
    ld a, [bc]                                    ; $75cf: $0a
    ld a, $03                                     ; $75d0: $3e $03
    ld b, a                                       ; $75d2: $47
    ld a, $05                                     ; $75d3: $3e $05
    rst $18                                       ; $75d5: $df
    ld [hl-], a                                   ; $75d6: $32
    ld a, [bc]                                    ; $75d7: $0a
    ld a, $03                                     ; $75d8: $3e $03
    rst $18                                       ; $75da: $df
    inc [hl]                                      ; $75db: $34
    ld a, [bc]                                    ; $75dc: $0a
    ld a, $00                                     ; $75dd: $3e $00
    ld bc, $0010                                  ; $75df: $01 $10 $00
    rst $18                                       ; $75e2: $df
    ld d, $0a                                     ; $75e3: $16 $0a
    ld a, $02                                     ; $75e5: $3e $02
    ld bc, $0010                                  ; $75e7: $01 $10 $00
    rst $18                                       ; $75ea: $df
    ld d, $0a                                     ; $75eb: $16 $0a
    ld a, $03                                     ; $75ed: $3e $03
    ld bc, $0010                                  ; $75ef: $01 $10 $00
    rst $18                                       ; $75f2: $df
    ld d, $0a                                     ; $75f3: $16 $0a
    ld a, $04                                     ; $75f5: $3e $04
    ld bc, $0010                                  ; $75f7: $01 $10 $00
    rst $18                                       ; $75fa: $df
    ld d, $0a                                     ; $75fb: $16 $0a
    push af                                       ; $75fd: $f5
    ld a, $01                                     ; $75fe: $3e $01
    rst $18                                       ; $7600: $df
    inc b                                         ; $7601: $04
    ld a, [bc]                                    ; $7602: $0a
    pop af                                        ; $7603: $f1
    xor a                                         ; $7604: $af
    ld bc, $1d80                                  ; $7605: $01 $80 $1d
    ld de, $0d80                                  ; $7608: $11 $80 $0d
    rst $18                                       ; $760b: $df
    jr c, jr_030_7618                             ; $760c: $38 $0a

    ld a, $00                                     ; $760e: $3e $00
    ld bc, $1d80                                  ; $7610: $01 $80 $1d
    ld de, $0d80                                  ; $7613: $11 $80 $0d
    rst $18                                       ; $7616: $df
    ld [hl+], a                                   ; $7617: $22

jr_030_7618:
    ld a, [bc]                                    ; $7618: $0a
    ld a, $02                                     ; $7619: $3e $02
    ld b, $00                                     ; $761b: $06 $00
    ld de, $0200                                  ; $761d: $11 $00 $02
    rst $18                                       ; $7620: $df
    jr z, jr_030_762d                             ; $7621: $28 $0a

    ld a, $02                                     ; $7623: $3e $02
    rst $18                                       ; $7625: $df
    ld e, $0a                                     ; $7626: $1e $0a
    ld a, $02                                     ; $7628: $3e $02
    ld bc, $1b00                                  ; $762a: $01 $00 $1b

jr_030_762d:
    ld de, $0d80                                  ; $762d: $11 $80 $0d
    rst $18                                       ; $7630: $df
    ld [hl+], a                                   ; $7631: $22
    ld a, [bc]                                    ; $7632: $0a
    ld a, $04                                     ; $7633: $3e $04
    ld b, $c0                                     ; $7635: $06 $c0
    ld de, $0200                                  ; $7637: $11 $00 $02
    rst $18                                       ; $763a: $df
    jr z, @+$0c                                   ; $763b: $28 $0a

    push af                                       ; $763d: $f5
    ld a, $05                                     ; $763e: $3e $05
    rst $18                                       ; $7640: $df
    inc b                                         ; $7641: $04
    ld a, [bc]                                    ; $7642: $0a
    pop af                                        ; $7643: $f1
    ld a, $03                                     ; $7644: $3e $03
    ld b, $c0                                     ; $7646: $06 $c0
    ld de, $0200                                  ; $7648: $11 $00 $02
    rst $18                                       ; $764b: $df
    jr z, jr_030_7658                             ; $764c: $28 $0a

    ld a, $03                                     ; $764e: $3e $03
    rst $18                                       ; $7650: $df
    ld e, $0a                                     ; $7651: $1e $0a
    ld a, $03                                     ; $7653: $3e $03
    ld bc, $1900                                  ; $7655: $01 $00 $19

jr_030_7658:
    ld de, $0d80                                  ; $7658: $11 $80 $0d
    rst $18                                       ; $765b: $df
    ld [hl+], a                                   ; $765c: $22
    ld a, [bc]                                    ; $765d: $0a
    ld a, $04                                     ; $765e: $3e $04
    ld bc, $1700                                  ; $7660: $01 $00 $17
    ld de, $0d80                                  ; $7663: $11 $80 $0d
    rst $18                                       ; $7666: $df
    ld [hl+], a                                   ; $7667: $22
    ld a, [bc]                                    ; $7668: $0a
    ld a, $04                                     ; $7669: $3e $04
    rst $18                                       ; $766b: $df
    ld e, $0a                                     ; $766c: $1e $0a
    rst $18                                       ; $766e: $df
    inc a                                         ; $766f: $3c
    ld a, [bc]                                    ; $7670: $0a
    ld a, $02                                     ; $7671: $3e $02
    rst $18                                       ; $7673: $df
    ld [$3e0a], sp                                ; $7674: $08 $0a $3e
    ld [bc], a                                    ; $7677: $02
    ld b, a                                       ; $7678: $47
    ld a, $00                                     ; $7679: $3e $00
    rst $18                                       ; $767b: $df
    ld l, $0a                                     ; $767c: $2e $0a
    ld a, $02                                     ; $767e: $3e $02
    ld b, a                                       ; $7680: $47
    ld a, $05                                     ; $7681: $3e $05
    rst $18                                       ; $7683: $df
    ld [hl-], a                                   ; $7684: $32
    ld a, [bc]                                    ; $7685: $0a
    ld a, $02                                     ; $7686: $3e $02
    rst $18                                       ; $7688: $df
    inc [hl]                                      ; $7689: $34
    ld a, [bc]                                    ; $768a: $0a
    ld a, $02                                     ; $768b: $3e $02
    rst $18                                       ; $768d: $df
    ld [$3e0a], sp                                ; $768e: $08 $0a $3e
    nop                                           ; $7691: $00
    ld b, a                                       ; $7692: $47
    ld a, $07                                     ; $7693: $3e $07
    rst $18                                       ; $7695: $df
    ld [hl-], a                                   ; $7696: $32
    ld a, [bc]                                    ; $7697: $0a
    ld a, $00                                     ; $7698: $3e $00
    rst $18                                       ; $769a: $df
    inc [hl]                                      ; $769b: $34
    ld a, [bc]                                    ; $769c: $0a
    ldh a, [$95]                                  ; $769d: $f0 $95
    ld b, a                                       ; $769f: $47
    ld a, $02                                     ; $76a0: $3e $02
    ld de, $7d7b                                  ; $76a2: $11 $7b $7d
    rst $18                                       ; $76a5: $df
    jr jr_030_76b2                                ; $76a6: $18 $0a

    push af                                       ; $76a8: $f5
    ld a, $15                                     ; $76a9: $3e $15
    rst $18                                       ; $76ab: $df
    inc b                                         ; $76ac: $04
    ld a, [bc]                                    ; $76ad: $0a
    pop af                                        ; $76ae: $f1
    ldh a, [$95]                                  ; $76af: $f0 $95
    ld b, a                                       ; $76b1: $47

jr_030_76b2:
    ld a, $03                                     ; $76b2: $3e $03
    ld de, $7d7b                                  ; $76b4: $11 $7b $7d
    rst $18                                       ; $76b7: $df
    jr jr_030_76c4                                ; $76b8: $18 $0a

    push af                                       ; $76ba: $f5
    ld a, $01                                     ; $76bb: $3e $01
    rst $18                                       ; $76bd: $df
    inc b                                         ; $76be: $04
    ld a, [bc]                                    ; $76bf: $0a
    pop af                                        ; $76c0: $f1
    ldh a, [$95]                                  ; $76c1: $f0 $95
    ld b, a                                       ; $76c3: $47

jr_030_76c4:
    ld a, $04                                     ; $76c4: $3e $04
    ld de, $7d7b                                  ; $76c6: $11 $7b $7d
    rst $18                                       ; $76c9: $df
    jr jr_030_76d6                                ; $76ca: $18 $0a

    push af                                       ; $76cc: $f5
    ld a, $64                                     ; $76cd: $3e $64
    rst $18                                       ; $76cf: $df
    inc b                                         ; $76d0: $04
    ld a, [bc]                                    ; $76d1: $0a
    pop af                                        ; $76d2: $f1
    ldh a, [$95]                                  ; $76d3: $f0 $95
    ld b, a                                       ; $76d5: $47

jr_030_76d6:
    ld a, $00                                     ; $76d6: $3e $00
    ld de, $7d7b                                  ; $76d8: $11 $7b $7d
    rst $18                                       ; $76db: $df
    jr @+$0c                                      ; $76dc: $18 $0a

    push af                                       ; $76de: $f5
    ld a, $5a                                     ; $76df: $3e $5a
    rst $18                                       ; $76e1: $df
    inc b                                         ; $76e2: $04
    ld a, [bc]                                    ; $76e3: $0a
    pop af                                        ; $76e4: $f1
    ld a, $0f                                     ; $76e5: $3e $0f
    ld [$c441], a                                 ; $76e7: $ea $41 $c4
    rst $18                                       ; $76ea: $df
    ld [bc], a                                    ; $76eb: $02
    ld a, [bc]                                    ; $76ec: $0a
    ret                                           ; $76ed: $c9


    rst $18                                       ; $76ee: $df
    db $10                                        ; $76ef: $10
    ld a, [bc]                                    ; $76f0: $0a
    ld a, $05                                     ; $76f1: $3e $05
    rst $18                                       ; $76f3: $df
    ld [$c30a], sp                                ; $76f4: $08 $0a $c3
    ld e, a                                       ; $76f7: $5f
    ld [hl], l                                    ; $76f8: $75

Jump_030_76f9:
    ld a, [$c96c]                                 ; $76f9: $fa $6c $c9
    cp $01                                        ; $76fc: $fe $01
    jp z, Jump_030_790f                           ; $76fe: $ca $0f $79

    cp $02                                        ; $7701: $fe $02
    jr z, jr_030_770d                             ; $7703: $28 $08

Jump_030_7705:
    ld hl, $1541                                  ; $7705: $21 $41 $15
    rst $18                                       ; $7708: $df
    ld c, $0a                                     ; $7709: $0e $0a
    jr jr_030_7713                                ; $770b: $18 $06

Jump_030_770d:
jr_030_770d:
    ld hl, $153c                                  ; $770d: $21 $3c $15
    rst $18                                       ; $7710: $df
    ld c, $0a                                     ; $7711: $0e $0a

jr_030_7713:
    call Call_030_7d02                            ; $7713: $cd $02 $7d
    ld c, $04                                     ; $7716: $0e $04
    call Call_000_25af                            ; $7718: $cd $af $25
    call Call_000_2625                            ; $771b: $cd $25 $26
    ld a, $00                                     ; $771e: $3e $00
    rst $18                                       ; $7720: $df
    ld e, $0a                                     ; $7721: $1e $0a
    ld a, $02                                     ; $7723: $3e $02
    ld b, a                                       ; $7725: $47
    ld a, $07                                     ; $7726: $3e $07
    rst $18                                       ; $7728: $df
    ld [hl-], a                                   ; $7729: $32
    ld a, [bc]                                    ; $772a: $0a
    ld a, $02                                     ; $772b: $3e $02
    rst $18                                       ; $772d: $df
    inc [hl]                                      ; $772e: $34
    ld a, [bc]                                    ; $772f: $0a
    ld a, $03                                     ; $7730: $3e $03
    ld b, a                                       ; $7732: $47
    ld a, $02                                     ; $7733: $3e $02
    rst $18                                       ; $7735: $df
    ld l, $0a                                     ; $7736: $2e $0a
    ld a, $02                                     ; $7738: $3e $02
    ld b, a                                       ; $773a: $47
    ld a, $07                                     ; $773b: $3e $07
    rst $18                                       ; $773d: $df
    ld [hl-], a                                   ; $773e: $32
    ld a, [bc]                                    ; $773f: $0a
    ld a, $02                                     ; $7740: $3e $02
    rst $18                                       ; $7742: $df
    inc [hl]                                      ; $7743: $34
    ld a, [bc]                                    ; $7744: $0a
    ld a, $02                                     ; $7745: $3e $02
    rst $18                                       ; $7747: $df
    ld [$3e0a], sp                                ; $7748: $08 $0a $3e
    ld [bc], a                                    ; $774b: $02
    ld b, a                                       ; $774c: $47
    ld a, $00                                     ; $774d: $3e $00
    rst $18                                       ; $774f: $df
    ld l, $0a                                     ; $7750: $2e $0a
    ld a, $00                                     ; $7752: $3e $00
    ld b, a                                       ; $7754: $47
    ld a, $07                                     ; $7755: $3e $07
    rst $18                                       ; $7757: $df
    ld [hl-], a                                   ; $7758: $32
    ld a, [bc]                                    ; $7759: $0a
    ld a, $00                                     ; $775a: $3e $00
    rst $18                                       ; $775c: $df
    inc [hl]                                      ; $775d: $34
    ld a, [bc]                                    ; $775e: $0a
    ld a, $00                                     ; $775f: $3e $00
    ld b, a                                       ; $7761: $47
    ld a, $02                                     ; $7762: $3e $02
    rst $18                                       ; $7764: $df
    ld l, $0a                                     ; $7765: $2e $0a
    ld a, $02                                     ; $7767: $3e $02
    rst $18                                       ; $7769: $df
    ld [$3e0a], sp                                ; $776a: $08 $0a $3e
    ld [bc], a                                    ; $776d: $02
    ld b, a                                       ; $776e: $47
    ld a, $05                                     ; $776f: $3e $05
    rst $18                                       ; $7771: $df
    ld [hl-], a                                   ; $7772: $32
    ld a, [bc]                                    ; $7773: $0a
    ld a, $02                                     ; $7774: $3e $02
    rst $18                                       ; $7776: $df
    inc [hl]                                      ; $7777: $34
    ld a, [bc]                                    ; $7778: $0a
    ld a, $02                                     ; $7779: $3e $02
    rst $18                                       ; $777b: $df
    ld [$3e0a], sp                                ; $777c: $08 $0a $3e
    inc b                                         ; $777f: $04
    ld b, a                                       ; $7780: $47
    ld a, $03                                     ; $7781: $3e $03
    rst $18                                       ; $7783: $df
    jr nc, jr_030_7790                            ; $7784: $30 $0a

    push af                                       ; $7786: $f5
    ld a, $28                                     ; $7787: $3e $28
    rst $18                                       ; $7789: $df
    inc b                                         ; $778a: $04
    ld a, [bc]                                    ; $778b: $0a
    pop af                                        ; $778c: $f1
    ld a, $00                                     ; $778d: $3e $00
    ld b, a                                       ; $778f: $47

jr_030_7790:
    ld a, $03                                     ; $7790: $3e $03
    rst $18                                       ; $7792: $df
    ld l, $0a                                     ; $7793: $2e $0a
    ld a, $00                                     ; $7795: $3e $00
    ld b, a                                       ; $7797: $47
    ld a, $04                                     ; $7798: $3e $04
    rst $18                                       ; $779a: $df
    ld l, $0a                                     ; $779b: $2e $0a
    push af                                       ; $779d: $f5
    ld a, $0a                                     ; $779e: $3e $0a
    rst $18                                       ; $77a0: $df
    inc b                                         ; $77a1: $04
    ld a, [bc]                                    ; $77a2: $0a
    pop af                                        ; $77a3: $f1
    ld a, $03                                     ; $77a4: $3e $03
    ld b, a                                       ; $77a6: $47
    ld a, $05                                     ; $77a7: $3e $05
    rst $18                                       ; $77a9: $df
    ld [hl-], a                                   ; $77aa: $32
    ld a, [bc]                                    ; $77ab: $0a
    ld a, $04                                     ; $77ac: $3e $04
    ld b, a                                       ; $77ae: $47
    ld a, $05                                     ; $77af: $3e $05
    rst $18                                       ; $77b1: $df
    ld [hl-], a                                   ; $77b2: $32
    ld a, [bc]                                    ; $77b3: $0a
    ld a, $04                                     ; $77b4: $3e $04
    rst $18                                       ; $77b6: $df
    inc [hl]                                      ; $77b7: $34
    ld a, [bc]                                    ; $77b8: $0a
    ld a, $02                                     ; $77b9: $3e $02
    ld b, $40                                     ; $77bb: $06 $40
    ld de, $0200                                  ; $77bd: $11 $00 $02
    rst $18                                       ; $77c0: $df
    jr z, jr_030_77cd                             ; $77c1: $28 $0a

    ld a, $03                                     ; $77c3: $3e $03
    ld b, $00                                     ; $77c5: $06 $00
    ld de, $0200                                  ; $77c7: $11 $00 $02
    rst $18                                       ; $77ca: $df
    jr z, jr_030_77d7                             ; $77cb: $28 $0a

jr_030_77cd:
    ld a, $04                                     ; $77cd: $3e $04
    ld b, $00                                     ; $77cf: $06 $00
    ld de, $0200                                  ; $77d1: $11 $00 $02
    rst $18                                       ; $77d4: $df
    jr z, @+$0c                                   ; $77d5: $28 $0a

jr_030_77d7:
    ld a, $02                                     ; $77d7: $3e $02
    rst $18                                       ; $77d9: $df
    ld e, $0a                                     ; $77da: $1e $0a
    ld a, $02                                     ; $77dc: $3e $02
    ld b, $00                                     ; $77de: $06 $00
    ld de, $0200                                  ; $77e0: $11 $00 $02
    rst $18                                       ; $77e3: $df
    jr z, jr_030_77f0                             ; $77e4: $28 $0a

    ld a, $03                                     ; $77e6: $3e $03
    ld b, $40                                     ; $77e8: $06 $40
    ld de, $0200                                  ; $77ea: $11 $00 $02
    rst $18                                       ; $77ed: $df
    jr z, jr_030_77fa                             ; $77ee: $28 $0a

jr_030_77f0:
    ld a, $04                                     ; $77f0: $3e $04
    ld b, $00                                     ; $77f2: $06 $00
    ld de, $0200                                  ; $77f4: $11 $00 $02
    rst $18                                       ; $77f7: $df
    jr z, jr_030_7804                             ; $77f8: $28 $0a

jr_030_77fa:
    ld a, $04                                     ; $77fa: $3e $04
    rst $18                                       ; $77fc: $df
    ld e, $0a                                     ; $77fd: $1e $0a
    ld a, $02                                     ; $77ff: $3e $02
    rst $18                                       ; $7801: $df
    ld e, $0a                                     ; $7802: $1e $0a

jr_030_7804:
    ld a, $00                                     ; $7804: $3e $00
    ld b, a                                       ; $7806: $47
    ld a, $02                                     ; $7807: $3e $02
    rst $18                                       ; $7809: $df
    ld l, $0a                                     ; $780a: $2e $0a
    ld a, $00                                     ; $780c: $3e $00
    ld b, a                                       ; $780e: $47
    ld a, $03                                     ; $780f: $3e $03
    rst $18                                       ; $7811: $df
    ld l, $0a                                     ; $7812: $2e $0a
    ld a, $02                                     ; $7814: $3e $02
    rst $18                                       ; $7816: $df
    ld [$3e0a], sp                                ; $7817: $08 $0a $3e
    ld [bc], a                                    ; $781a: $02
    ld b, a                                       ; $781b: $47
    ld a, $05                                     ; $781c: $3e $05
    rst $18                                       ; $781e: $df
    ld [hl-], a                                   ; $781f: $32
    ld a, [bc]                                    ; $7820: $0a
    ld a, $03                                     ; $7821: $3e $03
    ld b, a                                       ; $7823: $47
    ld a, $05                                     ; $7824: $3e $05
    rst $18                                       ; $7826: $df
    ld [hl-], a                                   ; $7827: $32
    ld a, [bc]                                    ; $7828: $0a
    ld a, $03                                     ; $7829: $3e $03
    rst $18                                       ; $782b: $df
    inc [hl]                                      ; $782c: $34
    ld a, [bc]                                    ; $782d: $0a
    ld a, $04                                     ; $782e: $3e $04
    ld b, a                                       ; $7830: $47
    ld a, $02                                     ; $7831: $3e $02
    rst $18                                       ; $7833: $df
    ld l, $0a                                     ; $7834: $2e $0a
    ld a, $02                                     ; $7836: $3e $02
    rst $18                                       ; $7838: $df
    ld [$3e0a], sp                                ; $7839: $08 $0a $3e
    ld [bc], a                                    ; $783c: $02
    ld b, a                                       ; $783d: $47
    ld a, $04                                     ; $783e: $3e $04
    rst $18                                       ; $7840: $df
    ld l, $0a                                     ; $7841: $2e $0a
    ld a, $04                                     ; $7843: $3e $04
    ld b, a                                       ; $7845: $47
    ld a, $05                                     ; $7846: $3e $05
    rst $18                                       ; $7848: $df
    ld [hl-], a                                   ; $7849: $32
    ld a, [bc]                                    ; $784a: $0a
    ld a, $04                                     ; $784b: $3e $04
    rst $18                                       ; $784d: $df
    inc [hl]                                      ; $784e: $34
    ld a, [bc]                                    ; $784f: $0a
    ld a, $02                                     ; $7850: $3e $02
    ld bc, $0700                                  ; $7852: $01 $00 $07
    ld de, $1400                                  ; $7855: $11 $00 $14
    rst $18                                       ; $7858: $df
    ld [hl+], a                                   ; $7859: $22
    ld a, [bc]                                    ; $785a: $0a
    ld a, $03                                     ; $785b: $3e $03
    ld bc, $0500                                  ; $785d: $01 $00 $05
    ld de, $1400                                  ; $7860: $11 $00 $14
    rst $18                                       ; $7863: $df
    ld [hl+], a                                   ; $7864: $22
    ld a, [bc]                                    ; $7865: $0a
    ld a, $04                                     ; $7866: $3e $04
    ld bc, $0500                                  ; $7868: $01 $00 $05
    ld de, $1400                                  ; $786b: $11 $00 $14
    rst $18                                       ; $786e: $df
    ld [hl+], a                                   ; $786f: $22
    ld a, [bc]                                    ; $7870: $0a
    ld a, $02                                     ; $7871: $3e $02
    ld b, a                                       ; $7873: $47
    ld a, $00                                     ; $7874: $3e $00
    rst $18                                       ; $7876: $df
    ld l, $0a                                     ; $7877: $2e $0a
    push af                                       ; $7879: $f5
    ld a, $32                                     ; $787a: $3e $32
    rst $18                                       ; $787c: $df
    inc b                                         ; $787d: $04
    ld a, [bc]                                    ; $787e: $0a
    pop af                                        ; $787f: $f1
    ld a, $05                                     ; $7880: $3e $05
    ld b, a                                       ; $7882: $47
    ld a, $00                                     ; $7883: $3e $00
    rst $18                                       ; $7885: $df
    ld l, $0a                                     ; $7886: $2e $0a
    ld a, $02                                     ; $7888: $3e $02
    rst $18                                       ; $788a: $df
    ld e, $0a                                     ; $788b: $1e $0a
    ld a, $02                                     ; $788d: $3e $02
    ld bc, $3f00                                  ; $788f: $01 $00 $3f
    ld de, $3f00                                  ; $7892: $11 $00 $3f
    rst $18                                       ; $7895: $df
    jr nz, @+$0c                                  ; $7896: $20 $0a

    ld a, $03                                     ; $7898: $3e $03
    ld bc, $3f00                                  ; $789a: $01 $00 $3f
    ld de, $3f00                                  ; $789d: $11 $00 $3f
    rst $18                                       ; $78a0: $df
    jr nz, jr_030_78ad                            ; $78a1: $20 $0a

    ld a, $04                                     ; $78a3: $3e $04
    rst $18                                       ; $78a5: $df
    ld e, $0a                                     ; $78a6: $1e $0a
    ld a, $05                                     ; $78a8: $3e $05
    ld b, a                                       ; $78aa: $47
    ld a, $00                                     ; $78ab: $3e $00

jr_030_78ad:
    rst $18                                       ; $78ad: $df
    ld l, $0a                                     ; $78ae: $2e $0a
    ld a, $04                                     ; $78b0: $3e $04
    ld bc, $3f00                                  ; $78b2: $01 $00 $3f
    ld de, $3f00                                  ; $78b5: $11 $00 $3f
    rst $18                                       ; $78b8: $df
    jr nz, jr_030_78c5                            ; $78b9: $20 $0a

    push af                                       ; $78bb: $f5
    ld a, $14                                     ; $78bc: $3e $14
    rst $18                                       ; $78be: $df
    inc b                                         ; $78bf: $04
    ld a, [bc]                                    ; $78c0: $0a
    pop af                                        ; $78c1: $f1
    ld a, $00                                     ; $78c2: $3e $00
    ld b, a                                       ; $78c4: $47

jr_030_78c5:
    ld a, $07                                     ; $78c5: $3e $07
    rst $18                                       ; $78c7: $df
    ld [hl-], a                                   ; $78c8: $32
    ld a, [bc]                                    ; $78c9: $0a
    ld a, $00                                     ; $78ca: $3e $00
    rst $18                                       ; $78cc: $df
    inc [hl]                                      ; $78cd: $34
    ld a, [bc]                                    ; $78ce: $0a
    push af                                       ; $78cf: $f5
    ld a, $14                                     ; $78d0: $3e $14
    rst $18                                       ; $78d2: $df
    inc b                                         ; $78d3: $04
    ld a, [bc]                                    ; $78d4: $0a
    pop af                                        ; $78d5: $f1
    ld a, $05                                     ; $78d6: $3e $05
    ld b, a                                       ; $78d8: $47
    ld a, $05                                     ; $78d9: $3e $05
    rst $18                                       ; $78db: $df
    ld [hl-], a                                   ; $78dc: $32
    ld a, [bc]                                    ; $78dd: $0a
    ld a, $05                                     ; $78de: $3e $05
    rst $18                                       ; $78e0: $df
    inc [hl]                                      ; $78e1: $34
    ld a, [bc]                                    ; $78e2: $0a
    push af                                       ; $78e3: $f5
    ld a, $14                                     ; $78e4: $3e $14
    rst $18                                       ; $78e6: $df
    inc b                                         ; $78e7: $04
    ld a, [bc]                                    ; $78e8: $0a
    pop af                                        ; $78e9: $f1
    ld a, $00                                     ; $78ea: $3e $00
    ld b, a                                       ; $78ec: $47
    ld a, $05                                     ; $78ed: $3e $05
    rst $18                                       ; $78ef: $df
    ld [hl-], a                                   ; $78f0: $32
    ld a, [bc]                                    ; $78f1: $0a
    ld a, $00                                     ; $78f2: $3e $00
    rst $18                                       ; $78f4: $df
    inc [hl]                                      ; $78f5: $34
    ld a, [bc]                                    ; $78f6: $0a
    ld a, $00                                     ; $78f7: $3e $00
    ld bc, $0700                                  ; $78f9: $01 $00 $07
    ld de, $1300                                  ; $78fc: $11 $00 $13
    rst $18                                       ; $78ff: $df
    ld [hl+], a                                   ; $7900: $22
    ld a, [bc]                                    ; $7901: $0a
    push af                                       ; $7902: $f5
    ld a, $5a                                     ; $7903: $3e $5a
    rst $18                                       ; $7905: $df
    inc b                                         ; $7906: $04
    ld a, [bc]                                    ; $7907: $0a
    pop af                                        ; $7908: $f1
    ld a, $01                                     ; $7909: $3e $01
    ld [$c441], a                                 ; $790b: $ea $41 $c4
    ret                                           ; $790e: $c9


Jump_030_790f:
    call Call_030_7d02                            ; $790f: $cd $02 $7d
    ld c, $04                                     ; $7912: $0e $04
    call Call_000_25af                            ; $7914: $cd $af $25
    call Call_000_2625                            ; $7917: $cd $25 $26
    ld a, $00                                     ; $791a: $3e $00
    rst $18                                       ; $791c: $df
    ld e, $0a                                     ; $791d: $1e $0a
    ld hl, $1546                                  ; $791f: $21 $46 $15
    rst $18                                       ; $7922: $df
    ld c, $0a                                     ; $7923: $0e $0a
    rst $08                                       ; $7925: $cf
    adc d                                         ; $7926: $8a
    ld a, $02                                     ; $7927: $3e $02
    ld de, $ff80                                  ; $7929: $11 $80 $ff
    rst $18                                       ; $792c: $df
    ld b, b                                       ; $792d: $40
    ld a, [bc]                                    ; $792e: $0a
    ld a, $02                                     ; $792f: $3e $02
    rst $18                                       ; $7931: $df
    ld b, d                                       ; $7932: $42
    ld a, [bc]                                    ; $7933: $0a
    rst $08                                       ; $7934: $cf
    adc d                                         ; $7935: $8a
    ld a, $02                                     ; $7936: $3e $02
    ld de, $ff40                                  ; $7938: $11 $40 $ff
    rst $18                                       ; $793b: $df
    ld b, b                                       ; $793c: $40
    ld a, [bc]                                    ; $793d: $0a
    ld a, $02                                     ; $793e: $3e $02
    rst $18                                       ; $7940: $df
    ld b, d                                       ; $7941: $42
    ld a, [bc]                                    ; $7942: $0a
    push af                                       ; $7943: $f5
    ld a, $1e                                     ; $7944: $3e $1e
    rst $18                                       ; $7946: $df
    inc b                                         ; $7947: $04
    ld a, [bc]                                    ; $7948: $0a
    pop af                                        ; $7949: $f1
    ld a, $02                                     ; $794a: $3e $02
    rst $18                                       ; $794c: $df
    ld [$3e0a], sp                                ; $794d: $08 $0a $3e
    ld [bc], a                                    ; $7950: $02
    ld b, a                                       ; $7951: $47
    ld a, $00                                     ; $7952: $3e $00
    rst $18                                       ; $7954: $df
    ld l, $0a                                     ; $7955: $2e $0a
    ld a, $00                                     ; $7957: $3e $00
    ld b, a                                       ; $7959: $47
    ld a, $07                                     ; $795a: $3e $07
    rst $18                                       ; $795c: $df
    ld [hl-], a                                   ; $795d: $32
    ld a, [bc]                                    ; $795e: $0a
    ld a, $00                                     ; $795f: $3e $00
    rst $18                                       ; $7961: $df
    inc [hl]                                      ; $7962: $34
    ld a, [bc]                                    ; $7963: $0a
    ld a, $02                                     ; $7964: $3e $02
    rst $18                                       ; $7966: $df
    ld [$3e0a], sp                                ; $7967: $08 $0a $3e
    ld [bc], a                                    ; $796a: $02
    ld b, a                                       ; $796b: $47
    ld a, $05                                     ; $796c: $3e $05
    rst $18                                       ; $796e: $df
    ld [hl-], a                                   ; $796f: $32
    ld a, [bc]                                    ; $7970: $0a
    ld a, $02                                     ; $7971: $3e $02
    rst $18                                       ; $7973: $df
    inc [hl]                                      ; $7974: $34
    ld a, [bc]                                    ; $7975: $0a
    ld a, $02                                     ; $7976: $3e $02
    rst $18                                       ; $7978: $df
    ld [$210a], sp                                ; $7979: $08 $0a $21
    ld c, c                                       ; $797c: $49
    dec d                                         ; $797d: $15
    rst $18                                       ; $797e: $df
    ld c, $0a                                     ; $797f: $0e $0a
    ld a, $04                                     ; $7981: $3e $04
    ld b, a                                       ; $7983: $47
    ld a, $03                                     ; $7984: $3e $03
    rst $18                                       ; $7986: $df
    jr nc, jr_030_7993                            ; $7987: $30 $0a

    push af                                       ; $7989: $f5
    ld a, $28                                     ; $798a: $3e $28
    rst $18                                       ; $798c: $df
    inc b                                         ; $798d: $04
    ld a, [bc]                                    ; $798e: $0a
    pop af                                        ; $798f: $f1
    ld a, $00                                     ; $7990: $3e $00
    ld b, a                                       ; $7992: $47

jr_030_7993:
    ld a, $03                                     ; $7993: $3e $03
    rst $18                                       ; $7995: $df
    ld l, $0a                                     ; $7996: $2e $0a
    ld a, $00                                     ; $7998: $3e $00
    ld b, a                                       ; $799a: $47
    ld a, $04                                     ; $799b: $3e $04
    rst $18                                       ; $799d: $df
    ld l, $0a                                     ; $799e: $2e $0a
    push af                                       ; $79a0: $f5
    ld a, $0a                                     ; $79a1: $3e $0a
    rst $18                                       ; $79a3: $df
    inc b                                         ; $79a4: $04
    ld a, [bc]                                    ; $79a5: $0a
    pop af                                        ; $79a6: $f1
    ld a, $03                                     ; $79a7: $3e $03
    ld b, a                                       ; $79a9: $47
    ld a, $05                                     ; $79aa: $3e $05
    rst $18                                       ; $79ac: $df
    ld [hl-], a                                   ; $79ad: $32
    ld a, [bc]                                    ; $79ae: $0a
    ld a, $04                                     ; $79af: $3e $04
    ld b, a                                       ; $79b1: $47
    ld a, $05                                     ; $79b2: $3e $05
    rst $18                                       ; $79b4: $df
    ld [hl-], a                                   ; $79b5: $32
    ld a, [bc]                                    ; $79b6: $0a
    ld a, $04                                     ; $79b7: $3e $04
    rst $18                                       ; $79b9: $df
    inc [hl]                                      ; $79ba: $34
    ld a, [bc]                                    ; $79bb: $0a
    ld a, $02                                     ; $79bc: $3e $02
    ld b, $40                                     ; $79be: $06 $40
    ld de, $0200                                  ; $79c0: $11 $00 $02
    rst $18                                       ; $79c3: $df
    jr z, jr_030_79d0                             ; $79c4: $28 $0a

    ld a, $03                                     ; $79c6: $3e $03
    ld b, $00                                     ; $79c8: $06 $00
    ld de, $0200                                  ; $79ca: $11 $00 $02
    rst $18                                       ; $79cd: $df
    jr z, jr_030_79da                             ; $79ce: $28 $0a

jr_030_79d0:
    ld a, $04                                     ; $79d0: $3e $04
    ld b, $00                                     ; $79d2: $06 $00
    ld de, $0200                                  ; $79d4: $11 $00 $02
    rst $18                                       ; $79d7: $df
    jr z, @+$0c                                   ; $79d8: $28 $0a

jr_030_79da:
    ld a, $02                                     ; $79da: $3e $02
    rst $18                                       ; $79dc: $df
    ld e, $0a                                     ; $79dd: $1e $0a
    ld a, $02                                     ; $79df: $3e $02
    ld b, $00                                     ; $79e1: $06 $00
    ld de, $0200                                  ; $79e3: $11 $00 $02
    rst $18                                       ; $79e6: $df
    jr z, jr_030_79f3                             ; $79e7: $28 $0a

    ld a, $03                                     ; $79e9: $3e $03
    ld b, $40                                     ; $79eb: $06 $40
    ld de, $0200                                  ; $79ed: $11 $00 $02
    rst $18                                       ; $79f0: $df
    jr z, jr_030_79fd                             ; $79f1: $28 $0a

jr_030_79f3:
    ld a, $04                                     ; $79f3: $3e $04
    ld b, $00                                     ; $79f5: $06 $00
    ld de, $0200                                  ; $79f7: $11 $00 $02
    rst $18                                       ; $79fa: $df
    jr z, jr_030_7a07                             ; $79fb: $28 $0a

jr_030_79fd:
    ld a, $04                                     ; $79fd: $3e $04
    rst $18                                       ; $79ff: $df
    ld e, $0a                                     ; $7a00: $1e $0a
    ld a, $02                                     ; $7a02: $3e $02
    rst $18                                       ; $7a04: $df
    ld e, $0a                                     ; $7a05: $1e $0a

jr_030_7a07:
    ld a, $00                                     ; $7a07: $3e $00
    ld b, a                                       ; $7a09: $47
    ld a, $02                                     ; $7a0a: $3e $02
    rst $18                                       ; $7a0c: $df
    ld l, $0a                                     ; $7a0d: $2e $0a
    ld a, $00                                     ; $7a0f: $3e $00
    ld b, a                                       ; $7a11: $47
    ld a, $03                                     ; $7a12: $3e $03
    rst $18                                       ; $7a14: $df
    ld l, $0a                                     ; $7a15: $2e $0a
    ld a, $04                                     ; $7a17: $3e $04
    rst $18                                       ; $7a19: $df
    ld [$3e0a], sp                                ; $7a1a: $08 $0a $3e
    ld [bc], a                                    ; $7a1d: $02
    ld b, a                                       ; $7a1e: $47
    ld a, $05                                     ; $7a1f: $3e $05
    rst $18                                       ; $7a21: $df
    ld [hl-], a                                   ; $7a22: $32
    ld a, [bc]                                    ; $7a23: $0a
    ld a, $03                                     ; $7a24: $3e $03
    ld b, a                                       ; $7a26: $47
    ld a, $05                                     ; $7a27: $3e $05
    rst $18                                       ; $7a29: $df
    ld [hl-], a                                   ; $7a2a: $32
    ld a, [bc]                                    ; $7a2b: $0a
    ld a, $03                                     ; $7a2c: $3e $03
    rst $18                                       ; $7a2e: $df
    inc [hl]                                      ; $7a2f: $34
    ld a, [bc]                                    ; $7a30: $0a
    rst $30                                       ; $7a31: $f7
    ld b, b                                       ; $7a32: $40
    inc de                                        ; $7a33: $13
    jr nz, jr_030_7a97                            ; $7a34: $20 $61

    rst $20                                       ; $7a36: $e7
    ld b, b                                       ; $7a37: $40
    inc de                                        ; $7a38: $13
    ld de, $00c8                                  ; $7a39: $11 $c8 $00
    push de                                       ; $7a3c: $d5
    rst $18                                       ; $7a3d: $df
    ld [hl+], a                                   ; $7a3e: $22
    ld [bc], a                                    ; $7a3f: $02
    pop hl                                        ; $7a40: $e1
    rst $18                                       ; $7a41: $df
    ld d, [hl]                                    ; $7a42: $56
    dec b                                         ; $7a43: $05
    rst $08                                       ; $7a44: $cf
    jr c, @+$23                                   ; $7a45: $38 $21

    dec de                                        ; $7a47: $1b
    ld bc, $0edf                                  ; $7a48: $01 $df $0e
    ld a, [bc]                                    ; $7a4b: $0a
    ld a, $80                                     ; $7a4c: $3e $80
    rst $18                                       ; $7a4e: $df
    ld [$cd0a], sp                                ; $7a4f: $08 $0a $cd
    rra                                           ; $7a52: $1f
    inc l                                         ; $7a53: $2c
    call Call_030_7e73                            ; $7a54: $cd $73 $7e
    ld b, $00                                     ; $7a57: $06 $00
    ld c, $fa                                     ; $7a59: $0e $fa
    rst $18                                       ; $7a5b: $df
    ld c, [hl]                                    ; $7a5c: $4e
    ld a, [bc]                                    ; $7a5d: $0a
    rst $18                                       ; $7a5e: $df
    inc [hl]                                      ; $7a5f: $34
    ld [bc], a                                    ; $7a60: $02
    ld a, $0e                                     ; $7a61: $3e $0e
    ld [$c441], a                                 ; $7a63: $ea $41 $c4
    ret                                           ; $7a66: $c9


Jump_030_7a67:
    ld a, $02                                     ; $7a67: $3e $02
    ld bc, $0900                                  ; $7a69: $01 $00 $09
    ld de, $0f00                                  ; $7a6c: $11 $00 $0f
    rst $18                                       ; $7a6f: $df
    jr nz, @+$0c                                  ; $7a70: $20 $0a

    ld a, $03                                     ; $7a72: $3e $03
    ld bc, $0700                                  ; $7a74: $01 $00 $07
    ld de, $0f00                                  ; $7a77: $11 $00 $0f
    rst $18                                       ; $7a7a: $df
    jr nz, @+$0c                                  ; $7a7b: $20 $0a

    ld a, $04                                     ; $7a7d: $3e $04
    ld bc, $0700                                  ; $7a7f: $01 $00 $07
    ld de, $0d00                                  ; $7a82: $11 $00 $0d
    rst $18                                       ; $7a85: $df
    jr nz, @+$0c                                  ; $7a86: $20 $0a

    ld a, $04                                     ; $7a88: $3e $04
    ld b, $40                                     ; $7a8a: $06 $40
    rst $18                                       ; $7a8c: $df
    inc l                                         ; $7a8d: $2c
    ld a, [bc]                                    ; $7a8e: $0a
    ld c, $04                                     ; $7a8f: $0e $04
    call Call_000_25af                            ; $7a91: $cd $af $25
    call Call_000_2625                            ; $7a94: $cd $25 $26

jr_030_7a97:
    ld a, $00                                     ; $7a97: $3e $00
    ld bc, $0008                                  ; $7a99: $01 $08 $00
    rst $18                                       ; $7a9c: $df
    ld d, $0a                                     ; $7a9d: $16 $0a
    ld a, $02                                     ; $7a9f: $3e $02
    ld bc, $0008                                  ; $7aa1: $01 $08 $00
    rst $18                                       ; $7aa4: $df
    ld d, $0a                                     ; $7aa5: $16 $0a
    ld a, $03                                     ; $7aa7: $3e $03
    ld bc, $0008                                  ; $7aa9: $01 $08 $00
    rst $18                                       ; $7aac: $df
    ld d, $0a                                     ; $7aad: $16 $0a
    ld a, $04                                     ; $7aaf: $3e $04
    ld bc, $0008                                  ; $7ab1: $01 $08 $00
    rst $18                                       ; $7ab4: $df
    ld d, $0a                                     ; $7ab5: $16 $0a
    ld hl, $154a                                  ; $7ab7: $21 $4a $15
    rst $18                                       ; $7aba: $df
    ld c, $0a                                     ; $7abb: $0e $0a
    ld a, $04                                     ; $7abd: $3e $04
    ld b, a                                       ; $7abf: $47
    ld a, $02                                     ; $7ac0: $3e $02
    rst $18                                       ; $7ac2: $df
    ld l, $0a                                     ; $7ac3: $2e $0a
    ld a, $03                                     ; $7ac5: $3e $03
    rst $18                                       ; $7ac7: $df
    ld [$3e0a], sp                                ; $7ac8: $08 $0a $3e
    inc b                                         ; $7acb: $04
    ld b, a                                       ; $7acc: $47
    ld a, $05                                     ; $7acd: $3e $05
    rst $18                                       ; $7acf: $df
    ld [hl-], a                                   ; $7ad0: $32
    ld a, [bc]                                    ; $7ad1: $0a
    ld a, $04                                     ; $7ad2: $3e $04
    rst $18                                       ; $7ad4: $df
    inc [hl]                                      ; $7ad5: $34
    ld a, [bc]                                    ; $7ad6: $0a
    ld a, $02                                     ; $7ad7: $3e $02
    ld bc, $0700                                  ; $7ad9: $01 $00 $07
    ld de, $1400                                  ; $7adc: $11 $00 $14
    rst $18                                       ; $7adf: $df
    ld [hl+], a                                   ; $7ae0: $22
    ld a, [bc]                                    ; $7ae1: $0a
    ld a, $03                                     ; $7ae2: $3e $03
    ld bc, $0500                                  ; $7ae4: $01 $00 $05
    ld de, $1400                                  ; $7ae7: $11 $00 $14
    rst $18                                       ; $7aea: $df
    ld [hl+], a                                   ; $7aeb: $22
    ld a, [bc]                                    ; $7aec: $0a
    ld a, $04                                     ; $7aed: $3e $04
    ld bc, $0500                                  ; $7aef: $01 $00 $05
    ld de, $1400                                  ; $7af2: $11 $00 $14
    rst $18                                       ; $7af5: $df
    ld [hl+], a                                   ; $7af6: $22
    ld a, [bc]                                    ; $7af7: $0a
    ld a, $02                                     ; $7af8: $3e $02
    ld b, a                                       ; $7afa: $47
    ld a, $00                                     ; $7afb: $3e $00
    rst $18                                       ; $7afd: $df
    ld l, $0a                                     ; $7afe: $2e $0a
    push af                                       ; $7b00: $f5
    ld a, $32                                     ; $7b01: $3e $32
    rst $18                                       ; $7b03: $df
    inc b                                         ; $7b04: $04
    ld a, [bc]                                    ; $7b05: $0a
    pop af                                        ; $7b06: $f1
    ld a, $05                                     ; $7b07: $3e $05
    ld b, a                                       ; $7b09: $47
    ld a, $00                                     ; $7b0a: $3e $00
    rst $18                                       ; $7b0c: $df
    ld l, $0a                                     ; $7b0d: $2e $0a
    ld a, $02                                     ; $7b0f: $3e $02
    rst $18                                       ; $7b11: $df
    ld e, $0a                                     ; $7b12: $1e $0a
    ld a, $02                                     ; $7b14: $3e $02
    ld bc, $3f00                                  ; $7b16: $01 $00 $3f
    ld de, $3f00                                  ; $7b19: $11 $00 $3f
    rst $18                                       ; $7b1c: $df
    jr nz, @+$0c                                  ; $7b1d: $20 $0a

    ld a, $03                                     ; $7b1f: $3e $03
    ld bc, $3f00                                  ; $7b21: $01 $00 $3f
    ld de, $3f00                                  ; $7b24: $11 $00 $3f
    rst $18                                       ; $7b27: $df
    jr nz, jr_030_7b34                            ; $7b28: $20 $0a

    ld a, $04                                     ; $7b2a: $3e $04
    rst $18                                       ; $7b2c: $df
    ld e, $0a                                     ; $7b2d: $1e $0a
    ld a, $05                                     ; $7b2f: $3e $05
    ld b, a                                       ; $7b31: $47
    ld a, $00                                     ; $7b32: $3e $00

jr_030_7b34:
    rst $18                                       ; $7b34: $df
    ld l, $0a                                     ; $7b35: $2e $0a
    ld a, $04                                     ; $7b37: $3e $04
    ld bc, $3f00                                  ; $7b39: $01 $00 $3f
    ld de, $3f00                                  ; $7b3c: $11 $00 $3f
    rst $18                                       ; $7b3f: $df
    jr nz, jr_030_7b4c                            ; $7b40: $20 $0a

    ld a, $00                                     ; $7b42: $3e $00
    ld b, a                                       ; $7b44: $47
    ld a, $07                                     ; $7b45: $3e $07
    rst $18                                       ; $7b47: $df
    ld [hl-], a                                   ; $7b48: $32
    ld a, [bc]                                    ; $7b49: $0a
    ld a, $00                                     ; $7b4a: $3e $00

jr_030_7b4c:
    rst $18                                       ; $7b4c: $df
    inc [hl]                                      ; $7b4d: $34
    ld a, [bc]                                    ; $7b4e: $0a
    push af                                       ; $7b4f: $f5
    ld a, $14                                     ; $7b50: $3e $14
    rst $18                                       ; $7b52: $df
    inc b                                         ; $7b53: $04
    ld a, [bc]                                    ; $7b54: $0a
    pop af                                        ; $7b55: $f1
    ld a, $05                                     ; $7b56: $3e $05
    ld b, a                                       ; $7b58: $47
    ld a, $05                                     ; $7b59: $3e $05
    rst $18                                       ; $7b5b: $df
    ld [hl-], a                                   ; $7b5c: $32
    ld a, [bc]                                    ; $7b5d: $0a
    ld a, $05                                     ; $7b5e: $3e $05
    rst $18                                       ; $7b60: $df
    inc [hl]                                      ; $7b61: $34
    ld a, [bc]                                    ; $7b62: $0a
    push af                                       ; $7b63: $f5
    ld a, $14                                     ; $7b64: $3e $14
    rst $18                                       ; $7b66: $df

jr_030_7b67:
    inc b                                         ; $7b67: $04
    ld a, [bc]                                    ; $7b68: $0a
    pop af                                        ; $7b69: $f1
    ld a, $00                                     ; $7b6a: $3e $00
    ld b, a                                       ; $7b6c: $47
    ld a, $05                                     ; $7b6d: $3e $05
    rst $18                                       ; $7b6f: $df
    ld [hl-], a                                   ; $7b70: $32
    ld a, [bc]                                    ; $7b71: $0a
    ld a, $00                                     ; $7b72: $3e $00
    rst $18                                       ; $7b74: $df
    inc [hl]                                      ; $7b75: $34
    ld a, [bc]                                    ; $7b76: $0a
    ld a, $00                                     ; $7b77: $3e $00
    ld bc, $0700                                  ; $7b79: $01 $00 $07
    ld de, $1300                                  ; $7b7c: $11 $00 $13
    rst $18                                       ; $7b7f: $df
    ld [hl+], a                                   ; $7b80: $22
    ld a, [bc]                                    ; $7b81: $0a
    push af                                       ; $7b82: $f5
    ld a, $5a                                     ; $7b83: $3e $5a
    rst $18                                       ; $7b85: $df
    inc b                                         ; $7b86: $04
    ld a, [bc]                                    ; $7b87: $0a
    pop af                                        ; $7b88: $f1
    ld a, $01                                     ; $7b89: $3e $01
    ld [$c441], a                                 ; $7b8b: $ea $41 $c4
    ret                                           ; $7b8e: $c9


    nop                                           ; $7b8f: $00
    rlca                                          ; $7b90: $07
    rlca                                          ; $7b91: $07
    dec de                                        ; $7b92: $1b
    inc e                                         ; $7b93: $1c
    cpl                                           ; $7b94: $2f
    jr nc, jr_030_7c16                            ; $7b95: $30 $7f

    ld b, b                                       ; $7b97: $40
    cp a                                          ; $7b98: $bf
    rst $00                                       ; $7b99: $c7
    ld hl, sp-$78                                 ; $7b9a: $f8 $88
    add sp, -$68                                  ; $7b9c: $e8 $98
    ld [hl], b                                    ; $7b9e: $70
    ld [hl], b                                    ; $7b9f: $70
    ld bc, $0301                                  ; $7ba0: $01 $01 $03
    ld [bc], a                                    ; $7ba3: $02
    rlca                                          ; $7ba4: $07
    inc b                                         ; $7ba5: $04
    dec b                                         ; $7ba6: $05
    ld b, $03                                     ; $7ba7: $06 $03

jr_030_7ba9:
    inc bc                                        ; $7ba9: $03
    dec b                                         ; $7baa: $05
    ld b, $07                                     ; $7bab: $06 $07
    inc b                                         ; $7bad: $04
    inc bc                                        ; $7bae: $03
    inc bc                                        ; $7baf: $03
    ldh [$e0], a                                  ; $7bb0: $e0 $e0
    ret c                                         ; $7bb2: $d8

    jr c, jr_030_7ba9                             ; $7bb3: $38 $f4

    inc c                                         ; $7bb5: $0c
    cp $02                                        ; $7bb6: $fe $02
    db $fd                                        ; $7bb8: $fd
    db $e3                                        ; $7bb9: $e3
    rra                                           ; $7bba: $1f
    ld de, $111f                                  ; $7bbb: $11 $1f $11
    ld a, l                                       ; $7bbe: $7d
    ld h, e                                       ; $7bbf: $63
    cp $82                                        ; $7bc0: $fe $82
    db $f4                                        ; $7bc2: $f4
    inc c                                         ; $7bc3: $0c
    ret c                                         ; $7bc4: $d8

    jr c, jr_030_7b67                             ; $7bc5: $38 $a0

    ld h, b                                       ; $7bc7: $60
    ret nz                                        ; $7bc8: $c0

    ret nz                                        ; $7bc9: $c0

    ldh [rNR41], a                                ; $7bca: $e0 $20
    and b                                         ; $7bcc: $a0
    ld h, b                                       ; $7bcd: $60
    ret nz                                        ; $7bce: $c0

    ret nz                                        ; $7bcf: $c0

    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    inc bc                                        ; $7bd4: $03
    inc bc                                        ; $7bd5: $03
    dec c                                         ; $7bd6: $0d
    ld c, $17                                     ; $7bd7: $0e $17
    jr jr_030_7c0a                                ; $7bd9: $18 $2f

    inc sp                                        ; $7bdb: $33
    inc a                                         ; $7bdc: $3c
    inc h                                         ; $7bdd: $24
    inc l                                         ; $7bde: $2c
    inc [hl]                                      ; $7bdf: $34
    jr jr_030_7bfa                                ; $7be0: $18 $18

    ld bc, $0301                                  ; $7be2: $01 $01 $03
    ld [bc], a                                    ; $7be5: $02
    inc bc                                        ; $7be6: $03
    ld [bc], a                                    ; $7be7: $02
    ld bc, $0301                                  ; $7be8: $01 $01 $03
    ld [bc], a                                    ; $7beb: $02
    inc bc                                        ; $7bec: $03
    ld [bc], a                                    ; $7bed: $02
    ld bc, $0001                                  ; $7bee: $01 $01 $00
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    ret nz                                        ; $7bf4: $c0

    ret nz                                        ; $7bf5: $c0

    or b                                          ; $7bf6: $b0
    ld [hl], b                                    ; $7bf7: $70
    add sp, $18                                   ; $7bf8: $e8 $18

jr_030_7bfa:
    db $f4                                        ; $7bfa: $f4
    call z, Call_000_243c                         ; $7bfb: $cc $3c $24
    inc a                                         ; $7bfe: $3c
    inc h                                         ; $7bff: $24
    db $f4                                        ; $7c00: $f4
    call z, Call_000_18e8                         ; $7c01: $cc $e8 $18
    or b                                          ; $7c04: $b0
    ld [hl], b                                    ; $7c05: $70
    ld b, b                                       ; $7c06: $40
    ret nz                                        ; $7c07: $c0

    add b                                         ; $7c08: $80
    add b                                         ; $7c09: $80

jr_030_7c0a:
    ret nz                                        ; $7c0a: $c0

    ld b, b                                       ; $7c0b: $40
    ld b, b                                       ; $7c0c: $40
    ret nz                                        ; $7c0d: $c0

    add b                                         ; $7c0e: $80
    add b                                         ; $7c0f: $80
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00

jr_030_7c16:
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    inc bc                                        ; $7c18: $03
    inc bc                                        ; $7c19: $03
    rlca                                          ; $7c1a: $07
    inc b                                         ; $7c1b: $04
    rrca                                          ; $7c1c: $0f
    add hl, bc                                    ; $7c1d: $09
    ld c, $0a                                     ; $7c1e: $0e $0a
    ld a, [bc]                                    ; $7c20: $0a
    ld c, $04                                     ; $7c21: $0e $04
    inc b                                         ; $7c23: $04
    ld bc, $0301                                  ; $7c24: $01 $01 $03
    ld [bc], a                                    ; $7c27: $02
    inc bc                                        ; $7c28: $03
    ld [bc], a                                    ; $7c29: $02
    ld bc, $0301                                  ; $7c2a: $01 $01 $03
    ld [bc], a                                    ; $7c2d: $02
    ld bc, $0001                                  ; $7c2e: $01 $01 $00
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    nop                                           ; $7c36: $00
    nop                                           ; $7c37: $00
    ret nz                                        ; $7c38: $c0

    ret nz                                        ; $7c39: $c0

    ldh [rNR41], a                                ; $7c3a: $e0 $20
    ldh a, [$90]                                  ; $7c3c: $f0 $90
    ld [hl], b                                    ; $7c3e: $70
    ld d, b                                       ; $7c3f: $50
    ld [hl], b                                    ; $7c40: $70
    ld d, b                                       ; $7c41: $50
    ldh a, [$90]                                  ; $7c42: $f0 $90
    ldh [rNR41], a                                ; $7c44: $e0 $20
    ld b, b                                       ; $7c46: $40
    ret nz                                        ; $7c47: $c0

    add b                                         ; $7c48: $80
    add b                                         ; $7c49: $80
    nop                                           ; $7c4a: $00
    nop                                           ; $7c4b: $00
    add b                                         ; $7c4c: $80
    add b                                         ; $7c4d: $80
    nop                                           ; $7c4e: $00
    nop                                           ; $7c4f: $00
    db $10                                        ; $7c50: $10
    ld [$0000], sp                                ; $7c51: $08 $00 $00
    db $10                                        ; $7c54: $10
    db $10                                        ; $7c55: $10
    ld [bc], a                                    ; $7c56: $02
    nop                                           ; $7c57: $00
    add b                                         ; $7c58: $80
    ret nz                                        ; $7c59: $c0

    ld bc, $7fff                                  ; $7c5a: $01 $ff $7f
    ld c, e                                       ; $7c5d: $4b
    ld b, e                                       ; $7c5e: $43
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00

Call_030_7c61:
    xor a                                         ; $7c61: $af
    ldh [rVBK], a                                 ; $7c62: $e0 $4f
    ld hl, $7b90                                  ; $7c64: $21 $90 $7b
    ld de, $8500                                  ; $7c67: $11 $00 $85
    ld c, $18                                     ; $7c6a: $0e $18
    call Call_000_0468                            ; $7c6c: $cd $68 $04
    ld hl, $7c59                                  ; $7c6f: $21 $59 $7c
    ld de, $0f01                                  ; $7c72: $11 $01 $0f
    call Call_000_056c                            ; $7c75: $cd $6c $05
    ret                                           ; $7c78: $c9


Call_030_7c79:
    ld h, $06                                     ; $7c79: $26 $06

jr_030_7c7b:
    push hl                                       ; $7c7b: $e5
    push bc                                       ; $7c7c: $c5
    ld hl, $c320                                  ; $7c7d: $21 $20 $c3
    ld a, [hl+]                                   ; $7c80: $2a
    ld d, [hl]                                    ; $7c81: $56
    ld e, a                                       ; $7c82: $5f
    ld hl, $0800                                  ; $7c83: $21 $00 $08
    call Call_000_08ac                            ; $7c86: $cd $ac $08
    add hl, hl                                    ; $7c89: $29
    add hl, hl                                    ; $7c8a: $29
    add hl, hl                                    ; $7c8b: $29
    push hl                                       ; $7c8c: $e5
    ld hl, $c322                                  ; $7c8d: $21 $22 $c3
    ld a, [hl+]                                   ; $7c90: $2a
    ld d, [hl]                                    ; $7c91: $56
    ld e, a                                       ; $7c92: $5f
    ld hl, $0700                                  ; $7c93: $21 $00 $07
    call Call_000_08ac                            ; $7c96: $cd $ac $08
    add hl, hl                                    ; $7c99: $29
    add hl, hl                                    ; $7c9a: $29
    add hl, hl                                    ; $7c9b: $29
    ld e, h                                       ; $7c9c: $5c
    pop hl                                        ; $7c9d: $e1
    ld d, h                                       ; $7c9e: $54
    ld hl, $7c50                                  ; $7c9f: $21 $50 $7c
    call Call_000_26ea                            ; $7ca2: $cd $ea $26
    call Call_000_2e3b                            ; $7ca5: $cd $3b $2e
    pop bc                                        ; $7ca8: $c1
    pop hl                                        ; $7ca9: $e1
    dec h                                         ; $7caa: $25
    jr nz, jr_030_7c7b                            ; $7cab: $20 $ce

    ret                                           ; $7cad: $c9


Call_030_7cae:
    ld a, $00                                     ; $7cae: $3e $00
    ld [$c3e0], a                                 ; $7cb0: $ea $e0 $c3
    ld a, $05                                     ; $7cb3: $3e $05
    ld [$c3e1], a                                 ; $7cb5: $ea $e1 $c3
    ld a, $05                                     ; $7cb8: $3e $05
    ld [$c3e2], a                                 ; $7cba: $ea $e2 $c3

jr_030_7cbd:
    ld a, [$c3e0]                                 ; $7cbd: $fa $e0 $c3
    cp $05                                        ; $7cc0: $fe $05
    jr z, jr_030_7ce2                             ; $7cc2: $28 $1e

    inc a                                         ; $7cc4: $3c
    ld [$c3e0], a                                 ; $7cc5: $ea $e0 $c3
    ld bc, $0750                                  ; $7cc8: $01 $50 $07
    call Call_030_7c79                            ; $7ccb: $cd $79 $7c
    ld bc, $0754                                  ; $7cce: $01 $54 $07
    call Call_030_7c79                            ; $7cd1: $cd $79 $7c
    ld bc, $0758                                  ; $7cd4: $01 $58 $07
    call Call_030_7c79                            ; $7cd7: $cd $79 $7c
    ld bc, $0754                                  ; $7cda: $01 $54 $07
    call Call_030_7c79                            ; $7cdd: $cd $79 $7c
    jr jr_030_7cbd                                ; $7ce0: $18 $db

jr_030_7ce2:
    ret                                           ; $7ce2: $c9


Call_030_7ce3:
    ld a, $00                                     ; $7ce3: $3e $00
    ld [$c3e0], a                                 ; $7ce5: $ea $e0 $c3

jr_030_7ce8:
    ld a, [$c3e0]                                 ; $7ce8: $fa $e0 $c3
    cp $08                                        ; $7ceb: $fe $08
    jr z, jr_030_7d01                             ; $7ced: $28 $12

    inc a                                         ; $7cef: $3c
    ld [$c3e0], a                                 ; $7cf0: $ea $e0 $c3
    ld bc, $0754                                  ; $7cf3: $01 $54 $07
    call Call_030_7c79                            ; $7cf6: $cd $79 $7c
    ld bc, $0758                                  ; $7cf9: $01 $58 $07
    call Call_030_7c79                            ; $7cfc: $cd $79 $7c
    jr jr_030_7ce8                                ; $7cff: $18 $e7

jr_030_7d01:
    ret                                           ; $7d01: $c9


Call_030_7d02:
    ld a, $00                                     ; $7d02: $3e $00
    ld bc, $0700                                  ; $7d04: $01 $00 $07
    ld de, $0d00                                  ; $7d07: $11 $00 $0d
    rst $18                                       ; $7d0a: $df
    jr nz, @+$0c                                  ; $7d0b: $20 $0a

    ld a, $02                                     ; $7d0d: $3e $02
    ld bc, $0500                                  ; $7d0f: $01 $00 $05
    ld de, $0d00                                  ; $7d12: $11 $00 $0d
    rst $18                                       ; $7d15: $df
    jr nz, @+$0c                                  ; $7d16: $20 $0a

    ld a, $03                                     ; $7d18: $3e $03
    ld bc, $0300                                  ; $7d1a: $01 $00 $03
    ld de, $0d00                                  ; $7d1d: $11 $00 $0d
    rst $18                                       ; $7d20: $df
    jr nz, @+$0c                                  ; $7d21: $20 $0a

    ld a, $04                                     ; $7d23: $3e $04
    ld bc, $0100                                  ; $7d25: $01 $00 $01
    ld de, $0d00                                  ; $7d28: $11 $00 $0d
    rst $18                                       ; $7d2b: $df
    jr nz, jr_030_7d38                            ; $7d2c: $20 $0a

    ld a, $00                                     ; $7d2e: $3e $00
    ld bc, $000a                                  ; $7d30: $01 $0a $00
    rst $18                                       ; $7d33: $df
    ld d, $0a                                     ; $7d34: $16 $0a
    ld a, $02                                     ; $7d36: $3e $02

jr_030_7d38:
    ld bc, $000a                                  ; $7d38: $01 $0a $00
    rst $18                                       ; $7d3b: $df
    ld d, $0a                                     ; $7d3c: $16 $0a
    ld a, $03                                     ; $7d3e: $3e $03
    ld bc, $000a                                  ; $7d40: $01 $0a $00
    rst $18                                       ; $7d43: $df
    ld d, $0a                                     ; $7d44: $16 $0a
    ld a, $04                                     ; $7d46: $3e $04
    ld bc, $000a                                  ; $7d48: $01 $0a $00
    rst $18                                       ; $7d4b: $df
    ld d, $0a                                     ; $7d4c: $16 $0a
    ld a, $00                                     ; $7d4e: $3e $00
    ld bc, $0900                                  ; $7d50: $01 $00 $09
    ld de, $0d00                                  ; $7d53: $11 $00 $0d
    rst $18                                       ; $7d56: $df
    ld [hl+], a                                   ; $7d57: $22
    ld a, [bc]                                    ; $7d58: $0a
    ld a, $02                                     ; $7d59: $3e $02
    ld bc, $0700                                  ; $7d5b: $01 $00 $07
    ld de, $0d00                                  ; $7d5e: $11 $00 $0d
    rst $18                                       ; $7d61: $df
    ld [hl+], a                                   ; $7d62: $22
    ld a, [bc]                                    ; $7d63: $0a
    ld a, $03                                     ; $7d64: $3e $03
    ld bc, $0500                                  ; $7d66: $01 $00 $05
    ld de, $0d00                                  ; $7d69: $11 $00 $0d
    rst $18                                       ; $7d6c: $df
    ld [hl+], a                                   ; $7d6d: $22
    ld a, [bc]                                    ; $7d6e: $0a
    ld a, $04                                     ; $7d6f: $3e $04
    ld bc, $0300                                  ; $7d71: $01 $00 $03
    ld de, $0d00                                  ; $7d74: $11 $00 $0d
    rst $18                                       ; $7d77: $df
    ld [hl+], a                                   ; $7d78: $22
    ld a, [bc]                                    ; $7d79: $0a
    ret                                           ; $7d7a: $c9


    dec c                                         ; $7d7b: $0d
    ld c, $08                                     ; $7d7c: $0e $08
    nop                                           ; $7d7e: $00
    inc b                                         ; $7d7f: $04
    nop                                           ; $7d80: $00
    dec de                                        ; $7d81: $1b
    nop                                           ; $7d82: $00
    dec c                                         ; $7d83: $0d
    ld [bc], a                                    ; $7d84: $02
    rlca                                          ; $7d85: $07
    ret nz                                        ; $7d86: $c0

    add b                                         ; $7d87: $80
    ld [bc], a                                    ; $7d88: $02
    ld [bc], a                                    ; $7d89: $02
    rlca                                          ; $7d8a: $07
    ret nz                                        ; $7d8b: $c0

    ld b, b                                       ; $7d8c: $40
    ld [bc], a                                    ; $7d8d: $02
    db $10                                        ; $7d8e: $10
    ld a, [bc]                                    ; $7d8f: $0a
    ld [bc], a                                    ; $7d90: $02
    inc bc                                        ; $7d91: $03
    nop                                           ; $7d92: $00
    dec de                                        ; $7d93: $1b
    nop                                           ; $7d94: $00
    ld hl, $0201                                  ; $7d95: $21 $01 $02
    nop                                           ; $7d98: $00

    db $00

    dec c                                         ; $7d9a: $0d
    dec de                                        ; $7d9b: $1b
    nop                                           ; $7d9c: $00
    nop                                           ; $7d9d: $00
    nop                                           ; $7d9e: $00
    ld a, [bc]                                    ; $7d9f: $0a
    ld bc, $0c01                                  ; $7da0: $01 $01 $0c
    db $fc                                        ; $7da3: $fc
    rst $38                                       ; $7da4: $ff
    inc de                                        ; $7da5: $13
    add hl, bc                                    ; $7da6: $09
    ld [bc], a                                    ; $7da7: $02
    ld bc, $0c28                                  ; $7da8: $01 $28 $0c
    ei                                            ; $7dab: $fb
    rst $38                                       ; $7dac: $ff
    inc bc                                        ; $7dad: $03
    nop                                           ; $7dae: $00
    dec d                                         ; $7daf: $15
    nop                                           ; $7db0: $00
    dec d                                         ; $7db1: $15
    ld bc, $0414                                  ; $7db2: $01 $14 $04
    nop                                           ; $7db5: $00
    rla                                           ; $7db6: $17
    nop                                           ; $7db7: $00
    dec d                                         ; $7db8: $15
    ld [bc], a                                    ; $7db9: $02
    ld bc, $0614                                  ; $7dba: $01 $14 $06
    nop                                           ; $7dbd: $00
    nop                                           ; $7dbe: $00
    nop                                           ; $7dbf: $00
    cp $02                                        ; $7dc0: $fe $02
    ld bc, $0714                                  ; $7dc2: $01 $14 $07
    add b                                         ; $7dc5: $80
    nop                                           ; $7dc6: $00
    ld [bc], a                                    ; $7dc7: $02
    ld [bc], a                                    ; $7dc8: $02
    ld bc, $0814                                  ; $7dc9: $01 $14 $08
    ld b, b                                       ; $7dcc: $40
    nop                                           ; $7dcd: $00
    ld [bc], a                                    ; $7dce: $02
    ld [bc], a                                    ; $7dcf: $02
    ld bc, $0d14                                  ; $7dd0: $01 $14 $0d
    ld a, [bc]                                    ; $7dd3: $0a
    nop                                           ; $7dd4: $00
    add hl, de                                    ; $7dd5: $19
    dec c                                         ; $7dd6: $0d
    ld [de], a                                    ; $7dd7: $12
    ld bc, $0200                                  ; $7dd8: $01 $00 $02
    ld bc, $0e14                                  ; $7ddb: $01 $14 $0e
    inc c                                         ; $7dde: $0c
    nop                                           ; $7ddf: $00
    cp $0d                                        ; $7de0: $fe $0d
    ld [de], a                                    ; $7de2: $12
    ld bc, $0200                                  ; $7de3: $01 $00 $02
    ld bc, $1014                                  ; $7de6: $01 $14 $10
    inc bc                                        ; $7de9: $03
    ld bc, $1078                                  ; $7dea: $01 $78 $10
    ld bc, $1401                                  ; $7ded: $01 $01 $14
    inc c                                         ; $7df0: $0c
    cp h                                          ; $7df1: $bc
    rst $38                                       ; $7df2: $ff
    ret                                           ; $7df3: $c9


    db $10, $03, $01, $a0, $10, $02, $01, $04, $0c, $f7, $ff, $01, $28, $10, $03, $01
    db $78, $0c, $f9, $ff

    ld bc, $1050                                  ; $7e08: $01 $50 $10
    inc bc                                        ; $7e0b: $03
    ld bc, $0c78                                  ; $7e0c: $01 $78 $0c
    ld sp, hl                                     ; $7e0f: $f9
    rst $38                                       ; $7e10: $ff
    ld bc, $108c                                  ; $7e11: $01 $8c $10
    inc bc                                        ; $7e14: $03
    ld bc, $0c78                                  ; $7e15: $01 $78 $0c
    ld sp, hl                                     ; $7e18: $f9
    rst $38                                       ; $7e19: $ff
    push de                                       ; $7e1a: $d5
    ld hl, $c880                                  ; $7e1b: $21 $80 $c8
    ld d, $00                                     ; $7e1e: $16 $00
    ld e, a                                       ; $7e20: $5f
    ld a, [$c835]                                 ; $7e21: $fa $35 $c8
    or a                                          ; $7e24: $b7
    jr z, jr_030_7e2b                             ; $7e25: $28 $04

    ld a, $40                                     ; $7e27: $3e $40
    add e                                         ; $7e29: $83
    ld e, a                                       ; $7e2a: $5f

jr_030_7e2b:
    add hl, de                                    ; $7e2b: $19
    pop de                                        ; $7e2c: $d1
    ret                                           ; $7e2d: $c9


Call_030_7e2e:
    push bc                                       ; $7e2e: $c5
    push de                                       ; $7e2f: $d5
    push hl                                       ; $7e30: $e5
    push hl                                       ; $7e31: $e5
    rst $18                                       ; $7e32: $df
    inc b                                         ; $7e33: $04
    db $10                                        ; $7e34: $10
    ld d, h                                       ; $7e35: $54
    ld e, l                                       ; $7e36: $5d
    pop hl                                        ; $7e37: $e1
    call Call_000_08ac                            ; $7e38: $cd $ac $08
    bit 7, h                                      ; $7e3b: $cb $7c
    ld a, $01                                     ; $7e3d: $3e $01
    jr nz, jr_030_7e42                            ; $7e3f: $20 $01

    xor a                                         ; $7e41: $af

jr_030_7e42:
    pop hl                                        ; $7e42: $e1
    pop de                                        ; $7e43: $d1
    pop bc                                        ; $7e44: $c1
    ret                                           ; $7e45: $c9


    push af                                       ; $7e46: $f5
    push bc                                       ; $7e47: $c5
    ld hl, $c290                                  ; $7e48: $21 $90 $c2
    ld a, [hl+]                                   ; $7e4b: $2a
    ld h, [hl]                                    ; $7e4c: $66
    ld l, a                                       ; $7e4d: $6f
    ld a, l                                       ; $7e4e: $7d
    ldh [$e0], a                                  ; $7e4f: $e0 $e0
    ld a, h                                       ; $7e51: $7c
    ldh [$e1], a                                  ; $7e52: $e0 $e1
    ld a, $04                                     ; $7e54: $3e $04
    ldh [$96], a                                  ; $7e56: $e0 $96
    ldh [rSVBK], a                                ; $7e58: $e0 $70
    ld hl, $ffe0                                  ; $7e5a: $21 $e0 $ff
    ld a, [hl+]                                   ; $7e5d: $2a
    ld h, [hl]                                    ; $7e5e: $66
    add $06                                       ; $7e5f: $c6 $06
    ld l, a                                       ; $7e61: $6f
    ld a, [hl+]                                   ; $7e62: $2a
    ld d, [hl]                                    ; $7e63: $56
    ld e, a                                       ; $7e64: $5f
    ld hl, $ffe0                                  ; $7e65: $21 $e0 $ff
    ld a, [hl+]                                   ; $7e68: $2a
    ld h, [hl]                                    ; $7e69: $66
    add $04                                       ; $7e6a: $c6 $04
    ld l, a                                       ; $7e6c: $6f
    ld a, [hl+]                                   ; $7e6d: $2a
    ld h, [hl]                                    ; $7e6e: $66
    ld l, a                                       ; $7e6f: $6f
    pop bc                                        ; $7e70: $c1
    pop af                                        ; $7e71: $f1
    ret                                           ; $7e72: $c9


Call_030_7e73:
    ld c, $08                                     ; $7e73: $0e $08
    call Call_000_25a1                            ; $7e75: $cd $a1 $25
    call Call_000_2625                            ; $7e78: $cd $25 $26
    rst $18                                       ; $7e7b: $df
    nop                                           ; $7e7c: $00
    ld b, c                                       ; $7e7d: $41
    ret                                           ; $7e7e: $c9


Call_030_7e7f:
    rst $30                                       ; $7e7f: $f7
    ld h, b                                       ; $7e80: $60
    inc c                                         ; $7e81: $0c
    jr z, jr_030_7e91                             ; $7e82: $28 $0d

    ld h, d                                       ; $7e84: $62
    ld l, e                                       ; $7e85: $6b
    sra h                                         ; $7e86: $cb $2c
    rr l                                          ; $7e88: $cb $1d
    sra h                                         ; $7e8a: $cb $2c
    rr l                                          ; $7e8c: $cb $1d
    add hl, de                                    ; $7e8e: $19
    ld d, h                                       ; $7e8f: $54
    ld e, l                                       ; $7e90: $5d

jr_030_7e91:
    push de                                       ; $7e91: $d5
    rst $18                                       ; $7e92: $df
    ld [hl+], a                                   ; $7e93: $22
    ld [bc], a                                    ; $7e94: $02
    pop hl                                        ; $7e95: $e1
    rst $18                                       ; $7e96: $df
    ld d, [hl]                                    ; $7e97: $56
    dec b                                         ; $7e98: $05
    rst $08                                       ; $7e99: $cf
    jr c, @+$23                                   ; $7e9a: $38 $21

    dec de                                        ; $7e9c: $1b
    ld bc, $0edf                                  ; $7e9d: $01 $df $0e
    ld a, [bc]                                    ; $7ea0: $0a
    ld a, $80                                     ; $7ea1: $3e $80
    rst $18                                       ; $7ea3: $df
    ld [$cd0a], sp                                ; $7ea4: $08 $0a $cd
    rra                                           ; $7ea7: $1f
    inc l                                         ; $7ea8: $2c
    call Call_030_7e73                            ; $7ea9: $cd $73 $7e
    ret                                           ; $7eac: $c9


    ld a, [$c810]                                 ; $7ead: $fa $10 $c8
    cp $00                                        ; $7eb0: $fe $00
    jr z, jr_030_7eb9                             ; $7eb2: $28 $05

    rst $30                                       ; $7eb4: $f7
    add b                                         ; $7eb5: $80
    ld de, $6828                                  ; $7eb6: $11 $28 $68

jr_030_7eb9:
    ld a, [$c810]                                 ; $7eb9: $fa $10 $c8
    cp $01                                        ; $7ebc: $fe $01
    jr z, jr_030_7ec5                             ; $7ebe: $28 $05

    rst $30                                       ; $7ec0: $f7
    and b                                         ; $7ec1: $a0
    ld de, $5c28                                  ; $7ec2: $11 $28 $5c

jr_030_7ec5:
    ld a, [$c810]                                 ; $7ec5: $fa $10 $c8
    cp $02                                        ; $7ec8: $fe $02
    jr z, jr_030_7ed1                             ; $7eca: $28 $05

    rst $30                                       ; $7ecc: $f7
    ret nz                                        ; $7ecd: $c0

    ld de, $5028                                  ; $7ece: $11 $28 $50

jr_030_7ed1:
    ld a, [$c810]                                 ; $7ed1: $fa $10 $c8
    cp $03                                        ; $7ed4: $fe $03
    jr z, jr_030_7edd                             ; $7ed6: $28 $05

    rst $30                                       ; $7ed8: $f7
    ldh [rNR11], a                                ; $7ed9: $e0 $11
    jr z, jr_030_7f21                             ; $7edb: $28 $44

jr_030_7edd:
    ld de, $012c                                  ; $7edd: $11 $2c $01
    push de                                       ; $7ee0: $d5
    rst $18                                       ; $7ee1: $df
    ld [hl+], a                                   ; $7ee2: $22
    ld [bc], a                                    ; $7ee3: $02
    pop hl                                        ; $7ee4: $e1
    rst $18                                       ; $7ee5: $df
    ld d, [hl]                                    ; $7ee6: $56
    dec b                                         ; $7ee7: $05
    rst $08                                       ; $7ee8: $cf
    jr c, jr_030_7f0c                             ; $7ee9: $38 $21

    dec de                                        ; $7eeb: $1b
    ld bc, $0edf                                  ; $7eec: $01 $df $0e
    ld a, [bc]                                    ; $7eef: $0a
    ld a, $80                                     ; $7ef0: $3e $80
    rst $18                                       ; $7ef2: $df
    ld [$cd0a], sp                                ; $7ef3: $08 $0a $cd
    rra                                           ; $7ef6: $1f
    inc l                                         ; $7ef7: $2c
    call Call_030_7e73                            ; $7ef8: $cd $73 $7e
    ld b, $00                                     ; $7efb: $06 $00
    ld c, $fa                                     ; $7efd: $0e $fa
    rst $18                                       ; $7eff: $df
    ld c, [hl]                                    ; $7f00: $4e
    ld a, [bc]                                    ; $7f01: $0a
    rst $18                                       ; $7f02: $df
    inc [hl]                                      ; $7f03: $34
    ld [bc], a                                    ; $7f04: $02
    ld a, $fa                                     ; $7f05: $3e $fa
    ld [$c441], a                                 ; $7f07: $ea $41 $c4
    ld a, $fa                                     ; $7f0a: $3e $fa

jr_030_7f0c:
    ld [$c46a], a                                 ; $7f0c: $ea $6a $c4
    ld hl, $c2a0                                  ; $7f0f: $21 $a0 $c2
    ld de, $c466                                  ; $7f12: $11 $66 $c4
    ld bc, $0004                                  ; $7f15: $01 $04 $00
    call Call_000_03d3                            ; $7f18: $cd $d3 $03
    ld a, [$c2a4]                                 ; $7f1b: $fa $a4 $c2
    ld [$c465], a                                 ; $7f1e: $ea $65 $c4

jr_030_7f21:
    ret                                           ; $7f21: $c9


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
