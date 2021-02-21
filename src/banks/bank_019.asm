; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    db $c3, $7a

    bit 7, d                                      ; $4002: $cb $7a
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    cpl                                           ; $4006: $2f
    nop                                           ; $4007: $00
    ld c, h                                       ; $4008: $4c
    nop                                           ; $4009: $00
    and d                                         ; $400a: $a2
    nop                                           ; $400b: $00
    ret c                                         ; $400c: $d8

    nop                                           ; $400d: $00
    inc sp                                        ; $400e: $33
    ld bc, $0162                                  ; $400f: $01 $62 $01
    ld a, a                                       ; $4012: $7f
    ld bc, $01b7                                  ; $4013: $01 $b7 $01
    db $e3                                        ; $4016: $e3
    ld bc, $0254                                  ; $4017: $01 $54 $02
    ld [hl], a                                    ; $401a: $77
    ld [bc], a                                    ; $401b: $02
    sbc l                                         ; $401c: $9d
    ld [bc], a                                    ; $401d: $02
    dec [hl]                                      ; $401e: $35
    inc bc                                        ; $401f: $03
    jp z, $d003                                   ; $4020: $ca $03 $d0

    inc bc                                        ; $4023: $03
    sub $03                                       ; $4024: $d6 $03
    dec c                                         ; $4026: $0d
    inc b                                         ; $4027: $04
    ld b, h                                       ; $4028: $44
    inc b                                         ; $4029: $04
    sbc b                                         ; $402a: $98
    inc b                                         ; $402b: $04
    cp [hl]                                       ; $402c: $be
    inc b                                         ; $402d: $04
    db $ec                                        ; $402e: $ec
    inc b                                         ; $402f: $04
    ccf                                           ; $4030: $3f
    dec b                                         ; $4031: $05
    ld a, a                                       ; $4032: $7f
    dec b                                         ; $4033: $05
    sbc c                                         ; $4034: $99
    dec b                                         ; $4035: $05
    rst $30                                       ; $4036: $f7
    dec b                                         ; $4037: $05
    inc hl                                        ; $4038: $23
    ld b, $46                                     ; $4039: $06 $46
    ld b, $4c                                     ; $403b: $06 $4c
    ld b, $52                                     ; $403d: $06 $52
    ld b, $b0                                     ; $403f: $06 $b0
    ld b, $dc                                     ; $4041: $06 $dc
    ld b, $07                                     ; $4043: $06 $07
    rlca                                          ; $4045: $07
    ld d, h                                       ; $4046: $54
    rlca                                          ; $4047: $07
    ld l, b                                       ; $4048: $68
    rlca                                          ; $4049: $07
    cp d                                          ; $404a: $ba
    rlca                                          ; $404b: $07
    db $ed                                        ; $404c: $ed
    rlca                                          ; $404d: $07
    inc e                                         ; $404e: $1c
    ld [$08b5], sp                                ; $404f: $08 $b5 $08
    ld c, c                                       ; $4052: $49
    add hl, bc                                    ; $4053: $09
    sub c                                         ; $4054: $91
    add hl, bc                                    ; $4055: $09
    db $ed                                        ; $4056: $ed
    add hl, bc                                    ; $4057: $09
    scf                                           ; $4058: $37
    ld a, [bc]                                    ; $4059: $0a
    halt                                          ; $405a: $76
    ld a, [bc]                                    ; $405b: $0a
    add $0a                                       ; $405c: $c6 $0a
    ld sp, hl                                     ; $405e: $f9
    ld a, [bc]                                    ; $405f: $0a
    rrca                                          ; $4060: $0f
    dec bc                                        ; $4061: $0b
    ld h, a                                       ; $4062: $67
    dec bc                                        ; $4063: $0b
    cp h                                          ; $4064: $bc
    dec bc                                        ; $4065: $0b
    call nc, Call_000_370b                        ; $4066: $d4 $0b $37
    inc c                                         ; $4069: $0c
    ld e, [hl]                                    ; $406a: $5e
    inc c                                         ; $406b: $0c
    add c                                         ; $406c: $81
    inc c                                         ; $406d: $0c
    call nz, $e80c                                ; $406e: $c4 $0c $e8
    inc c                                         ; $4071: $0c
    jr nc, jr_019_4081                            ; $4072: $30 $0d

    ld h, a                                       ; $4074: $67
    dec c                                         ; $4075: $0d
    adc e                                         ; $4076: $8b
    dec c                                         ; $4077: $0d
    push hl                                       ; $4078: $e5
    dec c                                         ; $4079: $0d
    cpl                                           ; $407a: $2f
    ld c, $7b                                     ; $407b: $0e $7b
    ld c, $b9                                     ; $407d: $0e $b9
    ld c, $01                                     ; $407f: $0e $01

jr_019_4081:
    rrca                                          ; $4081: $0f
    ld a, a                                       ; $4082: $7f
    rrca                                          ; $4083: $0f
    inc bc                                        ; $4084: $03
    db $10                                        ; $4085: $10
    dec sp                                        ; $4086: $3b
    db $10                                        ; $4087: $10
    sbc b                                         ; $4088: $98
    db $10                                        ; $4089: $10
    ld a, [c]                                     ; $408a: $f2
    db $10                                        ; $408b: $10
    inc sp                                        ; $408c: $33
    ld de, $115c                                  ; $408d: $11 $5c $11
    or b                                          ; $4090: $b0
    ld de, $11e8                                  ; $4091: $11 $e8 $11
    ld c, d                                       ; $4094: $4a
    ld [de], a                                    ; $4095: $12

jr_019_4096:
    ld d, b                                       ; $4096: $50
    ld [de], a                                    ; $4097: $12
    ld d, [hl]                                    ; $4098: $56
    ld [de], a                                    ; $4099: $12
    db $eb                                        ; $409a: $eb
    ld [de], a                                    ; $409b: $12
    dec sp                                        ; $409c: $3b
    inc de                                        ; $409d: $13
    ld a, b                                       ; $409e: $78
    inc de                                        ; $409f: $13
    ld a, [hl]                                    ; $40a0: $7e
    inc de                                        ; $40a1: $13
    add h                                         ; $40a2: $84
    inc de                                        ; $40a3: $13
    ret nc                                        ; $40a4: $d0

    inc de                                        ; $40a5: $13
    ld sp, hl                                     ; $40a6: $f9
    inc de                                        ; $40a7: $13
    ld e, $14                                     ; $40a8: $1e $14
    inc h                                         ; $40aa: $24
    inc d                                         ; $40ab: $14
    ld a, [hl+]                                   ; $40ac: $2a
    inc d                                         ; $40ad: $14
    pop bc                                        ; $40ae: $c1
    inc d                                         ; $40af: $14
    ld h, $15                                     ; $40b0: $26 $15
    ld e, b                                       ; $40b2: $58
    dec d                                         ; $40b3: $15
    cp c                                          ; $40b4: $b9
    dec d                                         ; $40b5: $15
    add b                                         ; $40b6: $80
    ld d, $d4                                     ; $40b7: $16 $d4
    ld d, $2e                                     ; $40b9: $16 $2e
    rla                                           ; $40bb: $17
    call nz, $f917                                ; $40bc: $c4 $17 $f9
    rla                                           ; $40bf: $17
    rst $38                                       ; $40c0: $ff
    rla                                           ; $40c1: $17
    dec b                                         ; $40c2: $05

jr_019_40c3:
    jr jr_019_40fe                                ; $40c3: $18 $39

    jr jr_019_4137                                ; $40c5: $18 $70

    jr jr_019_4096                                ; $40c7: $18 $cd

    jr jr_019_40cd                                ; $40c9: $18 $02

    add hl, de                                    ; $40cb: $19
    dec [hl]                                      ; $40cc: $35

jr_019_40cd:
    add hl, de                                    ; $40cd: $19
    and c                                         ; $40ce: $a1
    add hl, de                                    ; $40cf: $19
    ld [$161a], sp                                ; $40d0: $08 $1a $16
    ld a, [de]                                    ; $40d3: $1a
    inc a                                         ; $40d4: $3c
    ld a, [de]                                    ; $40d5: $1a
    ld [hl], b                                    ; $40d6: $70
    ld a, [de]                                    ; $40d7: $1a
    rst $10                                       ; $40d8: $d7
    ld a, [de]                                    ; $40d9: $1a
    ld b, a                                       ; $40da: $47
    dec de                                        ; $40db: $1b
    ld d, l                                       ; $40dc: $55
    dec de                                        ; $40dd: $1b
    ld a, e                                       ; $40de: $7b
    dec de                                        ; $40df: $1b
    ld [$411b], a                                 ; $40e0: $ea $1b $41
    inc e                                         ; $40e3: $1c
    sub [hl]                                      ; $40e4: $96
    inc e                                         ; $40e5: $1c
    and h                                         ; $40e6: $a4
    inc e                                         ; $40e7: $1c
    jp z, $531c                                   ; $40e8: $ca $1c $53

    dec e                                         ; $40eb: $1d
    ret nz                                        ; $40ec: $c0

    dec e                                         ; $40ed: $1d
    dec [hl]                                      ; $40ee: $35
    ld e, $61                                     ; $40ef: $1e $61
    ld e, $8a                                     ; $40f1: $1e $8a
    ld e, $c1                                     ; $40f3: $1e $c1
    ld e, $17                                     ; $40f5: $1e $17
    rra                                           ; $40f7: $1f

jr_019_40f8:
    ld b, d                                       ; $40f8: $42
    rra                                           ; $40f9: $1f
    sbc b                                         ; $40fa: $98
    rra                                           ; $40fb: $1f
    ei                                            ; $40fc: $fb
    rra                                           ; $40fd: $1f

jr_019_40fe:
    ld h, h                                       ; $40fe: $64
    jr nz, jr_019_40c3                            ; $40ff: $20 $c2

    jr nz, @+$24                                  ; $4101: $20 $22

    ld hl, $2170                                  ; $4103: $21 $70 $21
    sub l                                         ; $4106: $95
    ld hl, $21be                                  ; $4107: $21 $be $21
    push af                                       ; $410a: $f5
    ld hl, $222d                                  ; $410b: $21 $2d $22
    ld h, l                                       ; $410e: $65
    ld [hl+], a                                   ; $410f: $22

    db $98, $22, $b6, $22, $14, $23, $40, $23, $74, $23, $d9, $23, $0a, $24, $6f, $24
    db $82, $24, $b6, $24

    or $24                                        ; $4124: $f6 $24
    ld h, c                                       ; $4126: $61
    dec h                                         ; $4127: $25
    sla l                                         ; $4128: $cb $25
    inc [hl]                                      ; $412a: $34
    ld h, $68                                     ; $412b: $26 $68
    ld h, $d3                                     ; $412d: $26 $d3
    ld h, $3b                                     ; $412f: $26 $3b
    daa                                           ; $4131: $27
    xor c                                         ; $4132: $a9
    daa                                           ; $4133: $27
    rrca                                          ; $4134: $0f
    jr z, jr_019_41aa                             ; $4135: $28 $73

jr_019_4137:
    jr z, @-$23                                   ; $4137: $28 $db

    jr z, jr_019_417e                             ; $4139: $28 $43

    add hl, hl                                    ; $413b: $29
    xor l                                         ; $413c: $ad
    add hl, hl                                    ; $413d: $29
    dec de                                        ; $413e: $1b
    ld a, [hl+]                                   ; $413f: $2a
    adc d                                         ; $4140: $8a
    ld a, [hl+]                                   ; $4141: $2a
    db $e4                                        ; $4142: $e4
    ld a, [hl+]                                   ; $4143: $2a
    ld b, d                                       ; $4144: $42
    dec hl                                        ; $4145: $2b
    ld a, c                                       ; $4146: $79
    dec hl                                        ; $4147: $2b
    push hl                                       ; $4148: $e5
    dec hl                                        ; $4149: $2b
    ld c, c                                       ; $414a: $49
    inc l                                         ; $414b: $2c
    and [hl]                                      ; $414c: $a6
    inc l                                         ; $414d: $2c
    dec c                                         ; $414e: $0d
    dec l                                         ; $414f: $2d
    ld h, e                                       ; $4150: $63
    dec l                                         ; $4151: $2d
    cp e                                          ; $4152: $bb
    dec l                                         ; $4153: $2d
    ld a, [de]                                    ; $4154: $1a

jr_019_4155:
    ld l, $78                                     ; $4155: $2e $78
    ld l, $a6                                     ; $4157: $2e $a6
    ld l, $08                                     ; $4159: $2e $08
    cpl                                           ; $415b: $2f
    ld l, l                                       ; $415c: $6d
    cpl                                           ; $415d: $2f
    ret                                           ; $415e: $c9


    cpl                                           ; $415f: $2f
    dec l                                         ; $4160: $2d
    jr nc, jr_019_40f8                            ; $4161: $30 $95

    jr nc, jr_019_4165                            ; $4163: $30 $00

jr_019_4165:
    ld sp, $3168                                  ; $4165: $31 $68 $31
    ret z                                         ; $4168: $c8

    ld sp, $31f6                                  ; $4169: $31 $f6 $31
    jr jr_019_41a0                                ; $416c: $18 $32

    ld c, l                                       ; $416e: $4d
    ld [hl-], a                                   ; $416f: $32
    and c                                         ; $4170: $a1
    ld [hl-], a                                   ; $4171: $32
    dec c                                         ; $4172: $0d
    inc sp                                        ; $4173: $33
    ld a, $33                                     ; $4174: $3e $33
    ld l, l                                       ; $4176: $6d
    inc sp                                        ; $4177: $33
    xor c                                         ; $4178: $a9
    inc sp                                        ; $4179: $33
    pop hl                                        ; $417a: $e1
    inc sp                                        ; $417b: $33
    ld a, [hl-]                                   ; $417c: $3a
    inc [hl]                                      ; $417d: $34

jr_019_417e:
    sub l                                         ; $417e: $95
    inc [hl]                                      ; $417f: $34
    call z, $fc34                                 ; $4180: $cc $34 $fc
    inc [hl]                                      ; $4183: $34
    add hl, de                                    ; $4184: $19
    dec [hl]                                      ; $4185: $35
    ld a, $35                                     ; $4186: $3e $35
    ld h, a                                       ; $4188: $67
    dec [hl]                                      ; $4189: $35
    adc b                                         ; $418a: $88
    dec [hl]                                      ; $418b: $35
    or b                                          ; $418c: $b0
    dec [hl]                                      ; $418d: $35
    call z, $fa35                                 ; $418e: $cc $35 $fa
    dec [hl]                                      ; $4191: $35
    ld sp, $5836                                  ; $4192: $31 $36 $58
    ld [hl], $85                                  ; $4195: $36 $85
    ld [hl], $ad                                  ; $4197: $36 $ad
    ld [hl], $c8                                  ; $4199: $36 $c8
    ld [hl], $e6                                  ; $419b: $36 $e6
    ld [hl], $3f                                  ; $419d: $36 $3f
    scf                                           ; $419f: $37

jr_019_41a0:
    ld l, a                                       ; $41a0: $6f
    scf                                           ; $41a1: $37
    sbc e                                         ; $41a2: $9b
    scf                                           ; $41a3: $37
    push bc                                       ; $41a4: $c5
    scf                                           ; $41a5: $37
    ld [$fd37], a                                 ; $41a6: $ea $37 $fd
    scf                                           ; $41a9: $37

jr_019_41aa:
    dec b                                         ; $41aa: $05
    jr c, jr_019_41e7                             ; $41ab: $38 $3a

    jr c, jr_019_421e                             ; $41ad: $38 $6f

    jr c, jr_019_4155                             ; $41af: $38 $a4

    jr c, @-$3c                                   ; $41b1: $38 $c2

    jr c, jr_019_41f8                             ; $41b3: $38 $43

    ld l, a                                       ; $41b5: $6f
    ld l, l                                       ; $41b6: $6d
    ld h, l                                       ; $41b7: $65
    jr nz, jr_019_422e                            ; $41b8: $20 $74

    ld h, c                                       ; $41ba: $61
    ld l, h                                       ; $41bb: $6c
    ld l, e                                       ; $41bc: $6b
    jr nz, jr_019_4233                            ; $41bd: $20 $74

    ld l, a                                       ; $41bf: $6f
    jr nz, jr_019_422f                            ; $41c0: $20 $6d

    ld h, l                                       ; $41c2: $65
    ld bc, $6e6f                                  ; $41c3: $01 $6f $6e
    ld h, e                                       ; $41c6: $63
    ld h, l                                       ; $41c7: $65
    jr nz, jr_019_4243                            ; $41c8: $20 $79

    ld l, a                                       ; $41ca: $6f
    ld [hl], l                                    ; $41cb: $75
    jr nz, jr_019_4235                            ; $41cc: $20 $67

    ld h, l                                       ; $41ce: $65
    ld [hl], h                                    ; $41cf: $74
    ld bc, $6f73                                  ; $41d0: $01 $73 $6f
    ld l, l                                       ; $41d3: $6d
    ld h, l                                       ; $41d4: $65
    jr nz, jr_019_423a                            ; $41d5: $20 $63

    ld l, a                                       ; $41d7: $6f
    ld l, [hl]                                    ; $41d8: $6e
    ld h, [hl]                                    ; $41d9: $66
    ld l, c                                       ; $41da: $69
    ld h, h                                       ; $41db: $64
    ld h, l                                       ; $41dc: $65
    ld l, [hl]                                    ; $41dd: $6e
    ld h, e                                       ; $41de: $63
    ld h, l                                       ; $41df: $65
    ld hl, $0003                                  ; $41e0: $21 $03 $00
    ld d, e                                       ; $41e3: $53
    ld [hl], l                                    ; $41e4: $75
    ld [hl], d                                    ; $41e5: $72
    ld h, l                                       ; $41e6: $65

jr_019_41e7:
    ld hl, $4920                                  ; $41e7: $21 $20 $49
    daa                                           ; $41ea: $27
    ld l, h                                       ; $41eb: $6c
    ld l, h                                       ; $41ec: $6c
    jr nz, jr_019_425b                            ; $41ed: $20 $6c

    ld h, l                                       ; $41ef: $65
    ld [hl], h                                    ; $41f0: $74
    ld bc, $6f79                                  ; $41f1: $01 $79 $6f
    ld [hl], l                                    ; $41f4: $75
    jr nz, jr_019_4267                            ; $41f5: $20 $70

    ld l, h                                       ; $41f7: $6c

jr_019_41f8:
    ld h, c                                       ; $41f8: $61
    ld a, c                                       ; $41f9: $79
    jr nz, @+$6f                                  ; $41fa: $20 $6d

    ld h, l                                       ; $41fc: $65
    ld hl, $0003                                  ; $41fd: $21 $03 $00
    ld c, c                                       ; $4200: $49
    daa                                           ; $4201: $27
    ld l, l                                       ; $4202: $6d
    jr nz, jr_019_4279                            ; $4203: $20 $74

    ld l, b                                       ; $4205: $68
    ld h, l                                       ; $4206: $65
    jr nz, jr_019_424c                            ; $4207: $20 $43

    ld l, h                                       ; $4209: $6c
    ld [hl], l                                    ; $420a: $75
    ld h, d                                       ; $420b: $62
    jr nz, jr_019_4251                            ; $420c: $20 $43

    ld l, b                                       ; $420e: $68
    ld h, c                                       ; $420f: $61
    ld l, l                                       ; $4210: $6d
    ld [hl], b                                    ; $4211: $70
    ld bc, $6568                                  ; $4212: $01 $68 $65
    ld [hl], d                                    ; $4215: $72
    ld h, l                                       ; $4216: $65
    jr nz, jr_019_427a                            ; $4217: $20 $61

    ld [hl], h                                    ; $4219: $74
    ld bc, $614d                                  ; $421a: $01 $4d $61
    ld [hl], d                                    ; $421d: $72

jr_019_421e:
    ld l, c                                       ; $421e: $69
    ld l, a                                       ; $421f: $6f
    ld l, [hl]                                    ; $4220: $6e
    jr nz, jr_019_4266                            ; $4221: $20 $43

    ld l, h                                       ; $4223: $6c
    ld [hl], l                                    ; $4224: $75
    ld h, d                                       ; $4225: $62
    ld hl, $4402                                  ; $4226: $21 $02 $44
    ld l, c                                       ; $4229: $69
    ld h, h                                       ; $422a: $64
    jr nz, @+$7b                                  ; $422b: $20 $79

    ld l, a                                       ; $422d: $6f

jr_019_422e:
    ld [hl], l                                    ; $422e: $75

jr_019_422f:
    jr nz, jr_019_429d                            ; $422f: $20 $6c

    ld h, l                                       ; $4231: $65
    ld h, c                                       ; $4232: $61

jr_019_4233:
    ld [hl], d                                    ; $4233: $72
    ld l, [hl]                                    ; $4234: $6e

jr_019_4235:
    ld bc, $6f73                                  ; $4235: $01 $73 $6f
    ld l, l                                       ; $4238: $6d
    ld h, l                                       ; $4239: $65

jr_019_423a:
    ld [hl], h                                    ; $423a: $74
    ld l, b                                       ; $423b: $68
    ld l, c                                       ; $423c: $69
    ld l, [hl]                                    ; $423d: $6e
    ld h, a                                       ; $423e: $67
    jr nz, jr_019_42a7                            ; $423f: $20 $66

    ld [hl], d                                    ; $4241: $72
    ld l, a                                       ; $4242: $6f

jr_019_4243:
    ld l, l                                       ; $4243: $6d
    ld bc, $756f                                  ; $4244: $01 $6f $75
    ld [hl], d                                    ; $4247: $72
    jr nz, jr_019_42b6                            ; $4248: $20 $6c

    ld l, c                                       ; $424a: $69
    ld [hl], h                                    ; $424b: $74

jr_019_424c:
    ld [hl], h                                    ; $424c: $74
    ld l, h                                       ; $424d: $6c
    ld h, l                                       ; $424e: $65
    jr nz, jr_019_42b8                            ; $424f: $20 $67

jr_019_4251:
    ld h, c                                       ; $4251: $61
    ld l, l                                       ; $4252: $6d
    ld h, l                                       ; $4253: $65
    ccf                                           ; $4254: $3f
    nop                                           ; $4255: $00
    ld e, c                                       ; $4256: $59
    ld l, a                                       ; $4257: $6f
    ld [hl], l                                    ; $4258: $75
    jr nz, jr_019_42d2                            ; $4259: $20 $77

jr_019_425b:
    ld l, a                                       ; $425b: $6f
    ld l, [hl]                                    ; $425c: $6e
    daa                                           ; $425d: $27
    ld [hl], h                                    ; $425e: $74
    jr nz, jr_019_42ca                            ; $425f: $20 $69

    ld l, l                                       ; $4261: $6d
    ld [hl], b                                    ; $4262: $70
    ld [hl], d                                    ; $4263: $72
    ld l, a                                       ; $4264: $6f
    halt                                          ; $4265: $76

jr_019_4266:
    ld h, l                                       ; $4266: $65

jr_019_4267:
    ld bc, $6669                                  ; $4267: $01 $69 $66
    jr nz, jr_019_42e5                            ; $426a: $20 $79

    ld l, a                                       ; $426c: $6f
    ld [hl], l                                    ; $426d: $75
    jr nz, @+$66                                  ; $426e: $20 $64

    ld l, a                                       ; $4270: $6f
    ld l, [hl]                                    ; $4271: $6e
    daa                                           ; $4272: $27
    ld [hl], h                                    ; $4273: $74
    jr nz, jr_019_42e2                            ; $4274: $20 $6c

    ld h, l                                       ; $4276: $65
    ld h, c                                       ; $4277: $61
    ld [hl], d                                    ; $4278: $72

jr_019_4279:
    ld l, [hl]                                    ; $4279: $6e

jr_019_427a:
    ld bc, $7266                                  ; $427a: $01 $66 $72
    ld l, a                                       ; $427d: $6f
    ld l, l                                       ; $427e: $6d
    jr nz, jr_019_42f5                            ; $427f: $20 $74

    ld l, b                                       ; $4281: $68
    ld h, l                                       ; $4282: $65
    jr nz, jr_019_42c8                            ; $4283: $20 $43

    ld l, b                                       ; $4285: $68
    ld h, c                                       ; $4286: $61
    ld l, l                                       ; $4287: $6d
    ld [hl], b                                    ; $4288: $70
    ld l, $03                                     ; $4289: $2e $03
    nop                                           ; $428b: $00
    ld c, a                                       ; $428c: $4f
    ld l, b                                       ; $428d: $68
    ld hl, $5920                                  ; $428e: $21 $20 $59
    ld l, a                                       ; $4291: $6f
    ld [hl], l                                    ; $4292: $75
    jr nz, @+$65                                  ; $4293: $20 $63

    ld h, c                                       ; $4295: $61
    ld l, [hl]                                    ; $4296: $6e
    jr nz, jr_019_430c                            ; $4297: $20 $73

    ld [hl], h                                    ; $4299: $74
    ld [hl], l                                    ; $429a: $75
    ld h, h                                       ; $429b: $64
    ld a, c                                       ; $429c: $79

jr_019_429d:
    ld bc, $796d                                  ; $429d: $01 $6d $79
    jr nz, @+$69                                  ; $42a0: $20 $67

    ld h, c                                       ; $42a2: $61
    ld l, l                                       ; $42a3: $6d
    ld h, l                                       ; $42a4: $65
    jr nz, @+$76                                  ; $42a5: $20 $74

jr_019_42a7:
    ld l, a                                       ; $42a7: $6f
    jr nz, jr_019_430c                            ; $42a8: $20 $62

    ld h, l                                       ; $42aa: $65
    ld h, e                                       ; $42ab: $63
    ld l, a                                       ; $42ac: $6f
    ld l, l                                       ; $42ad: $6d
    ld h, l                                       ; $42ae: $65
    ld bc, $2061                                  ; $42af: $01 $61 $20
    ld h, d                                       ; $42b2: $62
    ld h, l                                       ; $42b3: $65
    ld [hl], h                                    ; $42b4: $74
    ld [hl], h                                    ; $42b5: $74

jr_019_42b6:
    ld h, l                                       ; $42b6: $65
    ld [hl], d                                    ; $42b7: $72

jr_019_42b8:
    jr nz, @+$69                                  ; $42b8: $20 $67

    ld l, a                                       ; $42ba: $6f
    ld l, h                                       ; $42bb: $6c
    ld h, [hl]                                    ; $42bc: $66
    ld h, l                                       ; $42bd: $65
    ld [hl], d                                    ; $42be: $72
    ld hl, $4d02                                  ; $42bf: $21 $02 $4d
    ld h, c                                       ; $42c2: $61
    ld a, c                                       ; $42c3: $79
    ld h, d                                       ; $42c4: $62
    ld h, l                                       ; $42c5: $65
    jr nz, jr_019_4311                            ; $42c6: $20 $49

jr_019_42c8:
    jr nz, jr_019_433d                            ; $42c8: $20 $73

jr_019_42ca:
    ld l, b                                       ; $42ca: $68
    ld l, a                                       ; $42cb: $6f
    ld [hl], l                                    ; $42cc: $75
    ld l, h                                       ; $42cd: $6c
    ld h, h                                       ; $42ce: $64
    jr nz, jr_019_433d                            ; $42cf: $20 $6c

    ld h, l                                       ; $42d1: $65

jr_019_42d2:
    ld [hl], h                                    ; $42d2: $74
    ld bc, $6f79                                  ; $42d3: $01 $79 $6f
    ld [hl], l                                    ; $42d6: $75
    jr nz, @+$72                                  ; $42d7: $20 $70

    ld l, h                                       ; $42d9: $6c
    ld h, c                                       ; $42da: $61
    ld a, c                                       ; $42db: $79
    jr nz, jr_019_434b                            ; $42dc: $20 $6d

    ld h, l                                       ; $42de: $65
    jr nz, @+$63                                  ; $42df: $20 $61

    ld h, a                                       ; $42e1: $67

jr_019_42e2:
    ld h, c                                       ; $42e2: $61
    ld l, c                                       ; $42e3: $69
    ld l, [hl]                                    ; $42e4: $6e

jr_019_42e5:
    ccf                                           ; $42e5: $3f
    nop                                           ; $42e6: $00
    ld b, e                                       ; $42e7: $43
    ld l, a                                       ; $42e8: $6f
    ld l, l                                       ; $42e9: $6d
    ld h, l                                       ; $42ea: $65
    jr nz, jr_019_4361                            ; $42eb: $20 $74

    ld h, c                                       ; $42ed: $61
    ld l, h                                       ; $42ee: $6c
    ld l, e                                       ; $42ef: $6b
    jr nz, jr_019_4366                            ; $42f0: $20 $74

    ld l, a                                       ; $42f2: $6f
    jr nz, @+$6f                                  ; $42f3: $20 $6d

jr_019_42f5:
    ld h, l                                       ; $42f5: $65
    ld bc, $6e6f                                  ; $42f6: $01 $6f $6e
    ld h, e                                       ; $42f9: $63
    ld h, l                                       ; $42fa: $65
    jr nz, jr_019_4376                            ; $42fb: $20 $79

    ld l, a                                       ; $42fd: $6f
    ld [hl], l                                    ; $42fe: $75
    jr nz, jr_019_4368                            ; $42ff: $20 $67

    ld h, l                                       ; $4301: $65
    ld [hl], h                                    ; $4302: $74
    jr nz, jr_019_4378                            ; $4303: $20 $73

    ld l, a                                       ; $4305: $6f
    ld l, l                                       ; $4306: $6d
    ld h, l                                       ; $4307: $65
    ld bc, $6f63                                  ; $4308: $01 $63 $6f
    ld l, [hl]                                    ; $430b: $6e

jr_019_430c:
    ld h, [hl]                                    ; $430c: $66
    ld l, c                                       ; $430d: $69
    ld h, h                                       ; $430e: $64
    ld h, l                                       ; $430f: $65
    ld l, [hl]                                    ; $4310: $6e

jr_019_4311:
    ld h, e                                       ; $4311: $63
    ld h, l                                       ; $4312: $65
    ld hl, $0003                                  ; $4313: $21 $03 $00
    ld d, e                                       ; $4316: $53
    ld [hl], l                                    ; $4317: $75
    ld [hl], d                                    ; $4318: $72
    ld h, l                                       ; $4319: $65
    ld hl, $4920                                  ; $431a: $21 $20 $49
    daa                                           ; $431d: $27
    ld l, h                                       ; $431e: $6c
    ld l, h                                       ; $431f: $6c
    jr nz, @+$6e                                  ; $4320: $20 $6c

    ld h, l                                       ; $4322: $65
    ld [hl], h                                    ; $4323: $74
    ld bc, $6f79                                  ; $4324: $01 $79 $6f
    ld [hl], l                                    ; $4327: $75
    jr nz, @+$72                                  ; $4328: $20 $70

    ld l, h                                       ; $432a: $6c
    ld h, c                                       ; $432b: $61
    ld a, c                                       ; $432c: $79
    jr nz, jr_019_439c                            ; $432d: $20 $6d

    ld h, l                                       ; $432f: $65
    ld hl, $0003                                  ; $4330: $21 $03 $00
    ld c, c                                       ; $4333: $49
    daa                                           ; $4334: $27
    ld l, l                                       ; $4335: $6d
    jr nz, @+$76                                  ; $4336: $20 $74

    ld l, b                                       ; $4338: $68
    ld h, l                                       ; $4339: $65
    jr nz, jr_019_43a2                            ; $433a: $20 $66

    ld l, a                                       ; $433c: $6f

jr_019_433d:
    ld [hl], d                                    ; $433d: $72
    ld l, l                                       ; $433e: $6d
    ld h, l                                       ; $433f: $65
    ld [hl], d                                    ; $4340: $72
    ld bc, $614d                                  ; $4341: $01 $4d $61
    ld [hl], d                                    ; $4344: $72
    ld l, c                                       ; $4345: $69
    ld l, a                                       ; $4346: $6f
    ld l, [hl]                                    ; $4347: $6e
    jr nz, jr_019_438d                            ; $4348: $20 $43

    ld l, h                                       ; $434a: $6c

jr_019_434b:
    ld [hl], l                                    ; $434b: $75
    ld h, d                                       ; $434c: $62
    jr nz, jr_019_4392                            ; $434d: $20 $43

    ld l, b                                       ; $434f: $68
    ld h, c                                       ; $4350: $61
    ld l, l                                       ; $4351: $6d
    ld [hl], b                                    ; $4352: $70
    ld l, $01                                     ; $4353: $2e $01
    ld e, c                                       ; $4355: $59
    ld l, a                                       ; $4356: $6f
    ld [hl], l                                    ; $4357: $75
    daa                                           ; $4358: $27
    ld [hl], d                                    ; $4359: $72
    ld h, l                                       ; $435a: $65
    jr nz, jr_019_43a0                            ; $435b: $20 $43

    ld l, b                                       ; $435d: $68
    ld h, c                                       ; $435e: $61
    ld l, l                                       ; $435f: $6d
    ld [hl], b                                    ; $4360: $70

jr_019_4361:
    jr nz, jr_019_43d1                            ; $4361: $20 $6e

    ld l, a                                       ; $4363: $6f
    ld [hl], a                                    ; $4364: $77
    inc l                                         ; $4365: $2c

jr_019_4366:
    jr nz, @+$67                                  ; $4366: $20 $65

jr_019_4368:
    ld l, b                                       ; $4368: $68
    ccf                                           ; $4369: $3f
    nop                                           ; $436a: $00
    ld c, c                                       ; $436b: $49
    jr nz, @+$69                                  ; $436c: $20 $67

    ld [hl], l                                    ; $436e: $75
    ld h, l                                       ; $436f: $65
    ld [hl], e                                    ; $4370: $73
    ld [hl], e                                    ; $4371: $73
    jr nz, @+$4b                                  ; $4372: $20 $49

    jr nz, jr_019_43ea                            ; $4374: $20 $74

jr_019_4376:
    ld l, b                                       ; $4376: $68
    ld l, a                                       ; $4377: $6f

jr_019_4378:
    ld [hl], l                                    ; $4378: $75
    ld h, a                                       ; $4379: $67
    ld l, b                                       ; $437a: $68
    ld [hl], h                                    ; $437b: $74
    ld bc, $6f79                                  ; $437c: $01 $79 $6f
    ld [hl], l                                    ; $437f: $75
    jr nz, jr_019_43f9                            ; $4380: $20 $77

    ld h, l                                       ; $4382: $65
    ld [hl], d                                    ; $4383: $72
    ld h, l                                       ; $4384: $65
    jr nz, jr_019_43fa                            ; $4385: $20 $73

    ld l, a                                       ; $4387: $6f
    ld l, l                                       ; $4388: $6d
    ld h, l                                       ; $4389: $65
    ld l, a                                       ; $438a: $6f
    ld l, [hl]                                    ; $438b: $6e
    ld h, l                                       ; $438c: $65

jr_019_438d:
    ld bc, $6c65                                  ; $438d: $01 $65 $6c
    ld [hl], e                                    ; $4390: $73
    ld h, l                                       ; $4391: $65

jr_019_4392:
    ld l, $2e                                     ; $4392: $2e $2e
    ld l, $03                                     ; $4394: $2e $03
    nop                                           ; $4396: $00
    ld d, h                                       ; $4397: $54
    ld l, a                                       ; $4398: $6f
    jr nz, jr_019_440f                            ; $4399: $20 $74

    ld l, b                                       ; $439b: $68

jr_019_439c:
    ld l, c                                       ; $439c: $69
    ld l, [hl]                                    ; $439d: $6e
    ld l, e                                       ; $439e: $6b
    inc l                                         ; $439f: $2c

jr_019_43a0:
    jr nz, jr_019_441b                            ; $43a0: $20 $79

jr_019_43a2:
    ld l, a                                       ; $43a2: $6f
    ld [hl], l                                    ; $43a3: $75
    jr nz, jr_019_4419                            ; $43a4: $20 $73

    ld [hl], h                                    ; $43a6: $74
    ld l, a                                       ; $43a7: $6f
    ld l, h                                       ; $43a8: $6c
    ld h, l                                       ; $43a9: $65
    ld bc, $6874                                  ; $43aa: $01 $74 $68
    ld h, l                                       ; $43ad: $65
    jr nz, jr_019_4413                            ; $43ae: $20 $63

    ld l, b                                       ; $43b0: $68
    ld h, c                                       ; $43b1: $61
    ld l, l                                       ; $43b2: $6d
    ld [hl], b                                    ; $43b3: $70
    ld l, c                                       ; $43b4: $69
    ld l, a                                       ; $43b5: $6f
    ld l, [hl]                                    ; $43b6: $6e
    ld [hl], e                                    ; $43b7: $73
    ld l, b                                       ; $43b8: $68
    ld l, c                                       ; $43b9: $69
    ld [hl], b                                    ; $43ba: $70
    ld bc, $7266                                  ; $43bb: $01 $66 $72
    ld l, a                                       ; $43be: $6f
    ld l, l                                       ; $43bf: $6d
    jr nz, jr_019_442f                            ; $43c0: $20 $6d

    ld h, l                                       ; $43c2: $65
    ld hl, $4902                                  ; $43c3: $21 $02 $49
    ld h, [hl]                                    ; $43c6: $66
    jr nz, jr_019_4432                            ; $43c7: $20 $69

    ld [hl], h                                    ; $43c9: $74
    daa                                           ; $43ca: $27
    ld [hl], e                                    ; $43cb: $73
    jr nz, jr_019_442f                            ; $43cc: $20 $61

    jr nz, @+$4f                                  ; $43ce: $20 $4d

    ld h, c                                       ; $43d0: $61

jr_019_43d1:
    ld [hl], h                                    ; $43d1: $74
    ld h, e                                       ; $43d2: $63
    ld l, b                                       ; $43d3: $68
    ld bc, $6147                                  ; $43d4: $01 $47 $61
    ld l, l                                       ; $43d7: $6d
    ld h, l                                       ; $43d8: $65
    inc l                                         ; $43d9: $2c
    jr nz, @+$4b                                  ; $43da: $20 $49

    jr nz, jr_019_4455                            ; $43dc: $20 $77

    ld l, a                                       ; $43de: $6f
    ld l, [hl]                                    ; $43df: $6e
    daa                                           ; $43e0: $27
    ld [hl], h                                    ; $43e1: $74
    jr nz, @+$6e                                  ; $43e2: $20 $6c

    ld l, a                                       ; $43e4: $6f
    ld [hl], e                                    ; $43e5: $73
    ld h, l                                       ; $43e6: $65
    ld hl, $4802                                  ; $43e7: $21 $02 $48

jr_019_43ea:
    ld l, a                                       ; $43ea: $6f
    ld [hl], a                                    ; $43eb: $77
    jr nz, @+$63                                  ; $43ec: $20 $61

    ld h, d                                       ; $43ee: $62
    ld l, a                                       ; $43ef: $6f
    ld [hl], l                                    ; $43f0: $75
    ld [hl], h                                    ; $43f1: $74
    jr nz, jr_019_445d                            ; $43f2: $20 $69

    ld [hl], h                                    ; $43f4: $74
    ccf                                           ; $43f5: $3f
    ld bc, $6957                                  ; $43f6: $01 $57 $69

jr_019_43f9:
    ld l, h                                       ; $43f9: $6c

jr_019_43fa:
    ld l, h                                       ; $43fa: $6c
    jr nz, jr_019_4476                            ; $43fb: $20 $79

    ld l, a                                       ; $43fd: $6f
    ld [hl], l                                    ; $43fe: $75
    jr nz, @+$76                                  ; $43ff: $20 $74

    ld [hl], d                                    ; $4401: $72
    ld a, c                                       ; $4402: $79
    jr nz, jr_019_4472                            ; $4403: $20 $6d

    ld h, l                                       ; $4405: $65
    ccf                                           ; $4406: $3f
    nop                                           ; $4407: $00
    ld d, e                                       ; $4408: $53
    ld l, a                                       ; $4409: $6f
    jr nz, jr_019_4485                            ; $440a: $20 $79

    ld l, a                                       ; $440c: $6f
    ld [hl], l                                    ; $440d: $75
    daa                                           ; $440e: $27

jr_019_440f:
    ld [hl], d                                    ; $440f: $72
    ld h, l                                       ; $4410: $65
    jr nz, @+$6c                                  ; $4411: $20 $6a

jr_019_4413:
    ld [hl], l                                    ; $4413: $75
    ld [hl], e                                    ; $4414: $73
    ld [hl], h                                    ; $4415: $74
    ld bc, $6f67                                  ; $4416: $01 $67 $6f

jr_019_4419:
    ld l, c                                       ; $4419: $69
    ld l, [hl]                                    ; $441a: $6e

jr_019_441b:
    ld h, a                                       ; $441b: $67
    jr nz, @+$76                                  ; $441c: $20 $74

    ld l, a                                       ; $441e: $6f
    jr nz, @+$74                                  ; $441f: $20 $72

    ld [hl], l                                    ; $4421: $75
    ld l, [hl]                                    ; $4422: $6e
    inc l                                         ; $4423: $2c
    jr nz, @+$6a                                  ; $4424: $20 $68

    ld [hl], l                                    ; $4426: $75
    ld l, b                                       ; $4427: $68
    ccf                                           ; $4428: $3f
    inc bc                                        ; $4429: $03
    nop                                           ; $442a: $00
    ld c, c                                       ; $442b: $49
    daa                                           ; $442c: $27
    ld l, h                                       ; $442d: $6c
    ld l, h                                       ; $442e: $6c

jr_019_442f:
    jr nz, jr_019_44a4                            ; $442f: $20 $73

    ld l, b                                       ; $4431: $68

jr_019_4432:
    ld l, a                                       ; $4432: $6f
    ld [hl], a                                    ; $4433: $77
    jr nz, jr_019_44af                            ; $4434: $20 $79

    ld l, a                                       ; $4436: $6f
    ld [hl], l                                    ; $4437: $75
    jr nz, @+$64                                  ; $4438: $20 $62

    ld a, c                                       ; $443a: $79
    ld bc, $6977                                  ; $443b: $01 $77 $69
    ld l, [hl]                                    ; $443e: $6e
    ld l, [hl]                                    ; $443f: $6e
    ld l, c                                       ; $4440: $69
    ld l, [hl]                                    ; $4441: $6e
    ld h, a                                       ; $4442: $67
    jr nz, jr_019_44b9                            ; $4443: $20 $74

    ld l, b                                       ; $4445: $68
    ld l, c                                       ; $4446: $69
    ld [hl], e                                    ; $4447: $73
    jr nz, jr_019_44b7                            ; $4448: $20 $6d

    ld h, c                                       ; $444a: $61
    ld [hl], h                                    ; $444b: $74
    ld h, e                                       ; $444c: $63
    ld l, b                                       ; $444d: $68
    ld hl, $0003                                  ; $444e: $21 $03 $00
    ld c, c                                       ; $4451: $49
    jr nz, jr_019_44b5                            ; $4452: $20 $61

    ld l, l                                       ; $4454: $6d

jr_019_4455:
    jr nz, @+$10                                  ; $4455: $20 $0e

    inc b                                         ; $4457: $04
    inc l                                         ; $4458: $2c
    jr nz, @+$76                                  ; $4459: $20 $74

    ld l, b                                       ; $445b: $68
    ld h, l                                       ; $445c: $65

jr_019_445d:
    ld bc, $614d                                  ; $445d: $01 $4d $61
    ld [hl], d                                    ; $4460: $72
    ld l, c                                       ; $4461: $69
    ld l, a                                       ; $4462: $6f
    ld l, [hl]                                    ; $4463: $6e
    jr nz, jr_019_44a9                            ; $4464: $20 $43

    ld l, h                                       ; $4466: $6c
    ld [hl], l                                    ; $4467: $75
    ld h, d                                       ; $4468: $62
    jr nz, jr_019_44ae                            ; $4469: $20 $43

    ld l, b                                       ; $446b: $68
    ld h, c                                       ; $446c: $61
    ld l, l                                       ; $446d: $6d
    ld [hl], b                                    ; $446e: $70
    ld l, $01                                     ; $446f: $2e $01
    ld e, c                                       ; $4471: $59

jr_019_4472:
    ld l, a                                       ; $4472: $6f
    ld [hl], l                                    ; $4473: $75
    jr nz, @+$64                                  ; $4474: $20 $62

jr_019_4476:
    ld h, l                                       ; $4476: $65
    ld h, c                                       ; $4477: $61
    ld [hl], h                                    ; $4478: $74
    jr nz, jr_019_44e8                            ; $4479: $20 $6d

    ld h, l                                       ; $447b: $65
    jr nz, @+$6b                                  ; $447c: $20 $69

    ld l, [hl]                                    ; $447e: $6e
    ld [bc], a                                    ; $447f: $02
    ld h, c                                       ; $4480: $61
    jr nz, jr_019_44d0                            ; $4481: $20 $4d

    ld h, c                                       ; $4483: $61
    ld [hl], h                                    ; $4484: $74

jr_019_4485:
    ld h, e                                       ; $4485: $63
    ld l, b                                       ; $4486: $68
    jr nz, jr_019_44d0                            ; $4487: $20 $47

    ld h, c                                       ; $4489: $61
    ld l, l                                       ; $448a: $6d
    ld h, l                                       ; $448b: $65
    inc l                                         ; $448c: $2c
    jr nz, jr_019_44f1                            ; $448d: $20 $62

    ld [hl], l                                    ; $448f: $75
    ld [hl], h                                    ; $4490: $74
    ld bc, $2749                                  ; $4491: $01 $49 $27
    ld l, l                                       ; $4494: $6d
    jr nz, jr_019_450a                            ; $4495: $20 $73

    ld [hl], h                                    ; $4497: $74
    ld l, c                                       ; $4498: $69
    ld l, h                                       ; $4499: $6c
    ld l, h                                       ; $449a: $6c
    jr nz, jr_019_44e0                            ; $449b: $20 $43

    ld l, b                                       ; $449d: $68
    ld h, c                                       ; $449e: $61
    ld l, l                                       ; $449f: $6d
    ld [hl], b                                    ; $44a0: $70
    ld hl, $4901                                  ; $44a1: $21 $01 $49

jr_019_44a4:
    ld h, [hl]                                    ; $44a4: $66
    jr nz, jr_019_4520                            ; $44a5: $20 $79

    ld l, a                                       ; $44a7: $6f
    ld [hl], l                                    ; $44a8: $75

jr_019_44a9:
    daa                                           ; $44a9: $27
    ld [hl], d                                    ; $44aa: $72
    ld h, l                                       ; $44ab: $65
    jr nz, jr_019_4511                            ; $44ac: $20 $63

jr_019_44ae:
    ld l, a                                       ; $44ae: $6f

jr_019_44af:
    ld l, [hl]                                    ; $44af: $6e
    ld h, [hl]                                    ; $44b0: $66
    ld l, c                                       ; $44b1: $69
    ld h, h                                       ; $44b2: $64
    ld h, l                                       ; $44b3: $65
    ld l, [hl]                                    ; $44b4: $6e

jr_019_44b5:
    ld [hl], h                                    ; $44b5: $74
    ld [bc], a                                    ; $44b6: $02

jr_019_44b7:
    ld l, c                                       ; $44b7: $69
    ld l, [hl]                                    ; $44b8: $6e

jr_019_44b9:
    jr nz, @+$7b                                  ; $44b9: $20 $79

    ld l, a                                       ; $44bb: $6f
    ld [hl], l                                    ; $44bc: $75
    ld [hl], d                                    ; $44bd: $72
    jr nz, @+$4f                                  ; $44be: $20 $4d

    ld h, c                                       ; $44c0: $61
    ld [hl], h                                    ; $44c1: $74
    ld h, e                                       ; $44c2: $63
    ld l, b                                       ; $44c3: $68
    jr nz, @+$49                                  ; $44c4: $20 $47

    ld h, c                                       ; $44c6: $61
    ld l, l                                       ; $44c7: $6d
    ld h, l                                       ; $44c8: $65
    inc l                                         ; $44c9: $2c
    ld bc, $7274                                  ; $44ca: $01 $74 $72
    ld a, c                                       ; $44cd: $79
    jr nz, jr_019_44de                            ; $44ce: $20 $0e

jr_019_44d0:
    dec b                                         ; $44d0: $05
    inc l                                         ; $44d1: $2c
    jr nz, jr_019_4548                            ; $44d2: $20 $74

    ld l, b                                       ; $44d4: $68
    ld h, l                                       ; $44d5: $65
    ld bc, $6150                                  ; $44d6: $01 $50 $61
    ld l, h                                       ; $44d9: $6c
    ld l, l                                       ; $44da: $6d
    jr nz, jr_019_4520                            ; $44db: $20 $43

    ld l, h                                       ; $44dd: $6c

jr_019_44de:
    ld [hl], l                                    ; $44de: $75
    ld h, d                                       ; $44df: $62

jr_019_44e0:
    jr nz, @+$45                                  ; $44e0: $20 $43

    ld l, b                                       ; $44e2: $68
    ld h, c                                       ; $44e3: $61
    ld l, l                                       ; $44e4: $6d
    ld [hl], b                                    ; $44e5: $70
    ld l, $03                                     ; $44e6: $2e $03

jr_019_44e8:
    nop                                           ; $44e8: $00
    ld c, c                                       ; $44e9: $49
    jr nz, @+$63                                  ; $44ea: $20 $61

    ld l, l                                       ; $44ec: $6d
    jr nz, jr_019_4563                            ; $44ed: $20 $74

    ld l, b                                       ; $44ef: $68
    ld h, l                                       ; $44f0: $65

jr_019_44f1:
    jr nz, @+$68                                  ; $44f1: $20 $66

    ld l, a                                       ; $44f3: $6f
    ld [hl], d                                    ; $44f4: $72
    ld l, l                                       ; $44f5: $6d
    ld h, l                                       ; $44f6: $65
    ld [hl], d                                    ; $44f7: $72
    ld bc, $614d                                  ; $44f8: $01 $4d $61
    ld [hl], d                                    ; $44fb: $72
    ld l, c                                       ; $44fc: $69
    ld l, a                                       ; $44fd: $6f
    ld l, [hl]                                    ; $44fe: $6e
    jr nz, jr_019_4544                            ; $44ff: $20 $43

    ld l, h                                       ; $4501: $6c
    ld [hl], l                                    ; $4502: $75
    ld h, d                                       ; $4503: $62
    jr nz, jr_019_4549                            ; $4504: $20 $43

    ld l, b                                       ; $4506: $68
    ld h, c                                       ; $4507: $61
    ld l, l                                       ; $4508: $6d
    ld [hl], b                                    ; $4509: $70

jr_019_450a:
    inc l                                         ; $450a: $2c
    ld bc, $040e                                  ; $450b: $01 $0e $04
    ld l, $20                                     ; $450e: $2e $20
    ld c, c                                       ; $4510: $49

jr_019_4511:
    jr nz, jr_019_457f                            ; $4511: $20 $6c

    ld l, a                                       ; $4513: $6f
    ld [hl], e                                    ; $4514: $73
    ld [hl], h                                    ; $4515: $74
    ld [bc], a                                    ; $4516: $02
    ld [hl], h                                    ; $4517: $74
    ld l, a                                       ; $4518: $6f
    jr nz, jr_019_4594                            ; $4519: $20 $79

    ld l, a                                       ; $451b: $6f
    ld [hl], l                                    ; $451c: $75
    jr nz, jr_019_4588                            ; $451d: $20 $69

    ld l, [hl]                                    ; $451f: $6e

jr_019_4520:
    jr nz, jr_019_4596                            ; $4520: $20 $74

    ld l, b                                       ; $4522: $68
    ld h, l                                       ; $4523: $65
    ld bc, $6f54                                  ; $4524: $01 $54 $6f
    ld [hl], l                                    ; $4527: $75
    ld [hl], d                                    ; $4528: $72
    ld l, [hl]                                    ; $4529: $6e
    ld h, c                                       ; $452a: $61
    ld l, l                                       ; $452b: $6d
    ld h, l                                       ; $452c: $65
    ld l, [hl]                                    ; $452d: $6e
    ld [hl], h                                    ; $452e: $74
    jr nz, @+$63                                  ; $452f: $20 $61

    ld l, [hl]                                    ; $4531: $6e
    ld h, h                                       ; $4532: $64
    jr nz, jr_019_4596                            ; $4533: $20 $61

    ld bc, $614d                                  ; $4535: $01 $4d $61
    ld [hl], h                                    ; $4538: $74
    ld h, e                                       ; $4539: $63
    ld l, b                                       ; $453a: $68
    jr nz, jr_019_4584                            ; $453b: $20 $47

    ld h, c                                       ; $453d: $61
    ld l, l                                       ; $453e: $6d
    ld h, l                                       ; $453f: $65
    ld hl, $5920                                  ; $4540: $21 $20 $59
    ld l, a                                       ; $4543: $6f

jr_019_4544:
    ld [hl], l                                    ; $4544: $75
    daa                                           ; $4545: $27
    ld [hl], d                                    ; $4546: $72
    ld h, l                                       ; $4547: $65

jr_019_4548:
    ld [bc], a                                    ; $4548: $02

jr_019_4549:
    ld [hl], h                                    ; $4549: $74
    ld l, a                                       ; $454a: $6f
    ld l, a                                       ; $454b: $6f
    jr nz, jr_019_45b5                            ; $454c: $20 $67

    ld l, a                                       ; $454e: $6f
    ld l, a                                       ; $454f: $6f
    ld h, h                                       ; $4550: $64
    jr nz, jr_019_45b9                            ; $4551: $20 $66

    ld l, a                                       ; $4553: $6f
    ld [hl], d                                    ; $4554: $72
    jr nz, jr_019_45c4                            ; $4555: $20 $6d

    ld h, l                                       ; $4557: $65
    ld l, $01                                     ; $4558: $2e $01
    ld e, c                                       ; $455a: $59
    ld l, a                                       ; $455b: $6f
    ld [hl], l                                    ; $455c: $75
    daa                                           ; $455d: $27
    ld [hl], d                                    ; $455e: $72
    ld h, l                                       ; $455f: $65
    jr nz, @+$76                                  ; $4560: $20 $74

    ld l, b                                       ; $4562: $68

jr_019_4563:
    ld h, l                                       ; $4563: $65
    jr nz, jr_019_45b3                            ; $4564: $20 $4d

    ld h, c                                       ; $4566: $61
    ld [hl], d                                    ; $4567: $72
    ld l, c                                       ; $4568: $69
    ld l, a                                       ; $4569: $6f
    ld l, [hl]                                    ; $456a: $6e
    ld bc, $6c43                                  ; $456b: $01 $43 $6c
    ld [hl], l                                    ; $456e: $75
    ld h, d                                       ; $456f: $62
    jr nz, jr_019_45b5                            ; $4570: $20 $43

    ld l, b                                       ; $4572: $68
    ld h, c                                       ; $4573: $61
    ld l, l                                       ; $4574: $6d
    ld [hl], b                                    ; $4575: $70
    inc l                                         ; $4576: $2c
    jr nz, @+$70                                  ; $4577: $20 $6e

    ld l, a                                       ; $4579: $6f
    ld [hl], a                                    ; $457a: $77
    ld l, $03                                     ; $457b: $2e $03
    nop                                           ; $457d: $00
    ld b, h                                       ; $457e: $44

jr_019_457f:
    ld d, l                                       ; $457f: $55
    ld c, l                                       ; $4580: $4d
    ld c, l                                       ; $4581: $4d
    ld e, c                                       ; $4582: $59
    nop                                           ; $4583: $00

jr_019_4584:
    ld b, h                                       ; $4584: $44
    ld d, l                                       ; $4585: $55
    ld c, l                                       ; $4586: $4d
    ld c, l                                       ; $4587: $4d

jr_019_4588:
    ld e, c                                       ; $4588: $59
    nop                                           ; $4589: $00
    ld c, c                                       ; $458a: $49
    daa                                           ; $458b: $27
    ld l, l                                       ; $458c: $6d
    jr nz, @+$76                                  ; $458d: $20 $74

    ld l, b                                       ; $458f: $68
    ld h, l                                       ; $4590: $65
    jr nz, jr_019_45f9                            ; $4591: $20 $66

    ld l, a                                       ; $4593: $6f

jr_019_4594:
    ld [hl], d                                    ; $4594: $72
    ld l, l                                       ; $4595: $6d

jr_019_4596:
    ld h, l                                       ; $4596: $65
    ld [hl], d                                    ; $4597: $72
    ld bc, $614d                                  ; $4598: $01 $4d $61
    ld [hl], d                                    ; $459b: $72
    ld l, c                                       ; $459c: $69
    ld l, a                                       ; $459d: $6f
    ld l, [hl]                                    ; $459e: $6e
    jr nz, @+$45                                  ; $459f: $20 $43

    ld l, h                                       ; $45a1: $6c
    ld [hl], l                                    ; $45a2: $75
    ld h, d                                       ; $45a3: $62
    jr nz, jr_019_45e9                            ; $45a4: $20 $43

    ld l, b                                       ; $45a6: $68
    ld h, c                                       ; $45a7: $61
    ld l, l                                       ; $45a8: $6d
    ld [hl], b                                    ; $45a9: $70
    ld l, $01                                     ; $45aa: $2e $01
    ld b, c                                       ; $45ac: $41
    ld [hl], d                                    ; $45ad: $72
    ld h, l                                       ; $45ae: $65
    jr nz, jr_019_462a                            ; $45af: $20 $79

    ld l, a                                       ; $45b1: $6f
    ld [hl], l                                    ; $45b2: $75

jr_019_45b3:
    jr nz, jr_019_45fc                            ; $45b3: $20 $47

jr_019_45b5:
    ld [hl], d                                    ; $45b5: $72
    ld h, c                                       ; $45b6: $61
    ld l, [hl]                                    ; $45b7: $6e
    ld h, h                                       ; $45b8: $64

jr_019_45b9:
    jr nz, jr_019_45fe                            ; $45b9: $20 $43

    ld l, b                                       ; $45bb: $68
    ld h, c                                       ; $45bc: $61
    ld l, l                                       ; $45bd: $6d
    ld [hl], b                                    ; $45be: $70
    ccf                                           ; $45bf: $3f
    nop                                           ; $45c0: $00
    ld c, c                                       ; $45c1: $49
    daa                                           ; $45c2: $27
    ld l, l                                       ; $45c3: $6d

jr_019_45c4:
    jr nz, jr_019_463a                            ; $45c4: $20 $74

    ld l, b                                       ; $45c6: $68
    ld h, l                                       ; $45c7: $65
    jr nz, jr_019_4617                            ; $45c8: $20 $4d

    ld h, c                                       ; $45ca: $61
    ld [hl], d                                    ; $45cb: $72
    ld l, c                                       ; $45cc: $69
    ld l, a                                       ; $45cd: $6f
    ld l, [hl]                                    ; $45ce: $6e
    jr nz, jr_019_4614                            ; $45cf: $20 $43

    ld l, h                                       ; $45d1: $6c
    ld [hl], l                                    ; $45d2: $75
    ld h, d                                       ; $45d3: $62
    ld bc, $6843                                  ; $45d4: $01 $43 $68
    ld h, c                                       ; $45d7: $61
    ld l, l                                       ; $45d8: $6d
    ld [hl], b                                    ; $45d9: $70
    ld l, c                                       ; $45da: $69
    ld l, a                                       ; $45db: $6f
    ld l, [hl]                                    ; $45dc: $6e
    ld l, $20                                     ; $45dd: $2e $20
    ld b, c                                       ; $45df: $41
    ld [hl], d                                    ; $45e0: $72
    ld h, l                                       ; $45e1: $65
    ld bc, $6f79                                  ; $45e2: $01 $79 $6f
    ld [hl], l                                    ; $45e5: $75
    jr nz, jr_019_465c                            ; $45e6: $20 $74

    ld l, b                                       ; $45e8: $68

jr_019_45e9:
    ld h, l                                       ; $45e9: $65
    jr nz, jr_019_4633                            ; $45ea: $20 $47

    ld [hl], d                                    ; $45ec: $72
    ld h, c                                       ; $45ed: $61
    ld l, [hl]                                    ; $45ee: $6e
    ld h, h                                       ; $45ef: $64
    jr nz, jr_019_4635                            ; $45f0: $20 $43

    ld l, b                                       ; $45f2: $68
    ld h, c                                       ; $45f3: $61
    ld l, l                                       ; $45f4: $6d
    ld [hl], b                                    ; $45f5: $70
    ccf                                           ; $45f6: $3f
    nop                                           ; $45f7: $00
    ld d, h                                       ; $45f8: $54

jr_019_45f9:
    ld l, b                                       ; $45f9: $68
    ld h, l                                       ; $45fa: $65
    ld [hl], d                                    ; $45fb: $72

jr_019_45fc:
    ld h, l                                       ; $45fc: $65
    daa                                           ; $45fd: $27

jr_019_45fe:
    ld [hl], e                                    ; $45fe: $73
    jr nz, jr_019_466f                            ; $45ff: $20 $6e

    ld l, a                                       ; $4601: $6f
    jr nz, jr_019_467b                            ; $4602: $20 $77

    ld h, c                                       ; $4604: $61
    ld a, c                                       ; $4605: $79
    jr nz, @+$4b                                  ; $4606: $20 $49

    daa                                           ; $4608: $27
    ld l, h                                       ; $4609: $6c
    ld l, h                                       ; $460a: $6c
    ld bc, $6f6c                                  ; $460b: $01 $6c $6f
    ld [hl], e                                    ; $460e: $73
    ld h, l                                       ; $460f: $65
    jr nz, jr_019_4673                            ; $4610: $20 $61

    jr nz, jr_019_4681                            ; $4612: $20 $6d

jr_019_4614:
    ld h, c                                       ; $4614: $61
    ld [hl], h                                    ; $4615: $74
    ld h, e                                       ; $4616: $63

jr_019_4617:
    ld l, b                                       ; $4617: $68
    jr nz, jr_019_468e                            ; $4618: $20 $74

    ld l, a                                       ; $461a: $6f
    ld bc, $6874                                  ; $461b: $01 $74 $68
    ld h, l                                       ; $461e: $65
    jr nz, jr_019_4668                            ; $461f: $20 $47

    ld [hl], d                                    ; $4621: $72
    ld h, c                                       ; $4622: $61
    ld l, [hl]                                    ; $4623: $6e
    ld h, h                                       ; $4624: $64
    jr nz, @+$45                                  ; $4625: $20 $43

    ld l, b                                       ; $4627: $68
    ld h, c                                       ; $4628: $61
    ld l, l                                       ; $4629: $6d

jr_019_462a:
    ld [hl], b                                    ; $462a: $70
    ld hl, $4802                                  ; $462b: $21 $02 $48
    ld l, a                                       ; $462e: $6f
    ld [hl], a                                    ; $462f: $77
    jr nz, jr_019_4693                            ; $4630: $20 $61

    ld h, d                                       ; $4632: $62

jr_019_4633:
    ld l, a                                       ; $4633: $6f
    ld [hl], l                                    ; $4634: $75

jr_019_4635:
    ld [hl], h                                    ; $4635: $74
    jr nz, jr_019_46a1                            ; $4636: $20 $69

    ld [hl], h                                    ; $4638: $74
    ccf                                           ; $4639: $3f

jr_019_463a:
    ld bc, $6957                                  ; $463a: $01 $57 $69
    ld l, h                                       ; $463d: $6c
    ld l, h                                       ; $463e: $6c
    jr nz, jr_019_46ba                            ; $463f: $20 $79

    ld l, a                                       ; $4641: $6f
    ld [hl], l                                    ; $4642: $75
    jr nz, @+$76                                  ; $4643: $20 $74

    ld [hl], d                                    ; $4645: $72
    ld a, c                                       ; $4646: $79
    jr nz, jr_019_46b6                            ; $4647: $20 $6d

    ld h, l                                       ; $4649: $65
    ccf                                           ; $464a: $3f
    nop                                           ; $464b: $00
    ld c, c                                       ; $464c: $49
    daa                                           ; $464d: $27
    ld l, h                                       ; $464e: $6c
    ld l, h                                       ; $464f: $6c
    jr nz, jr_019_46c5                            ; $4650: $20 $73

    ld l, b                                       ; $4652: $68
    ld l, a                                       ; $4653: $6f
    ld [hl], a                                    ; $4654: $77
    jr nz, jr_019_46d0                            ; $4655: $20 $79

    ld l, a                                       ; $4657: $6f
    ld [hl], l                                    ; $4658: $75
    jr nz, jr_019_46bd                            ; $4659: $20 $62

    ld a, c                                       ; $465b: $79

jr_019_465c:
    ld bc, $6977                                  ; $465c: $01 $77 $69
    ld l, [hl]                                    ; $465f: $6e
    ld l, [hl]                                    ; $4660: $6e
    ld l, c                                       ; $4661: $69
    ld l, [hl]                                    ; $4662: $6e
    ld h, a                                       ; $4663: $67
    jr nz, jr_019_46da                            ; $4664: $20 $74

    ld l, b                                       ; $4666: $68
    ld l, c                                       ; $4667: $69

jr_019_4668:
    ld [hl], e                                    ; $4668: $73
    jr nz, jr_019_46d8                            ; $4669: $20 $6d

    ld h, c                                       ; $466b: $61
    ld [hl], h                                    ; $466c: $74
    ld h, e                                       ; $466d: $63
    ld l, b                                       ; $466e: $68

jr_019_466f:
    ld hl, $0003                                  ; $466f: $21 $03 $00
    ld c, c                                       ; $4672: $49

jr_019_4673:
    jr nz, @+$6f                                  ; $4673: $20 $6d

    ld [hl], l                                    ; $4675: $75
    ld [hl], e                                    ; $4676: $73
    ld [hl], h                                    ; $4677: $74
    jr nz, @+$6a                                  ; $4678: $20 $68

    ld h, c                                       ; $467a: $61

jr_019_467b:
    halt                                          ; $467b: $76
    ld h, l                                       ; $467c: $65
    ld bc, $696d                                  ; $467d: $01 $6d $69
    ld [hl], e                                    ; $4680: $73

jr_019_4681:
    ld [hl], h                                    ; $4681: $74
    ld h, c                                       ; $4682: $61
    ld l, e                                       ; $4683: $6b
    ld h, l                                       ; $4684: $65
    ld l, [hl]                                    ; $4685: $6e
    jr nz, jr_019_4701                            ; $4686: $20 $79

    ld l, a                                       ; $4688: $6f
    ld [hl], l                                    ; $4689: $75
    jr nz, @+$68                                  ; $468a: $20 $66

    ld l, a                                       ; $468c: $6f
    ld [hl], d                                    ; $468d: $72

jr_019_468e:
    ld bc, $6f73                                  ; $468e: $01 $73 $6f
    ld l, l                                       ; $4691: $6d
    ld h, l                                       ; $4692: $65

jr_019_4693:
    ld l, a                                       ; $4693: $6f
    ld l, [hl]                                    ; $4694: $6e
    ld h, l                                       ; $4695: $65
    jr nz, jr_019_46fd                            ; $4696: $20 $65

    ld l, h                                       ; $4698: $6c
    ld [hl], e                                    ; $4699: $73
    ld h, l                                       ; $469a: $65
    ld l, $2e                                     ; $469b: $2e $2e
    ld l, $03                                     ; $469d: $2e $03
    nop                                           ; $469f: $00
    ld c, c                                       ; $46a0: $49

jr_019_46a1:
    jr nz, @+$63                                  ; $46a1: $20 $61

    ld l, l                                       ; $46a3: $6d
    jr nz, @+$10                                  ; $46a4: $20 $0e

    inc b                                         ; $46a6: $04
    inc l                                         ; $46a7: $2c
    jr nz, jr_019_471e                            ; $46a8: $20 $74

    ld l, b                                       ; $46aa: $68
    ld h, l                                       ; $46ab: $65
    ld bc, $614d                                  ; $46ac: $01 $4d $61
    ld [hl], d                                    ; $46af: $72
    ld l, c                                       ; $46b0: $69
    ld l, a                                       ; $46b1: $6f
    ld l, [hl]                                    ; $46b2: $6e
    jr nz, jr_019_46f8                            ; $46b3: $20 $43

    ld l, h                                       ; $46b5: $6c

jr_019_46b6:
    ld [hl], l                                    ; $46b6: $75
    ld h, d                                       ; $46b7: $62
    jr nz, jr_019_46fd                            ; $46b8: $20 $43

jr_019_46ba:
    ld l, b                                       ; $46ba: $68
    ld h, c                                       ; $46bb: $61
    ld l, l                                       ; $46bc: $6d

jr_019_46bd:
    ld [hl], b                                    ; $46bd: $70
    ld l, $01                                     ; $46be: $2e $01
    ld e, c                                       ; $46c0: $59
    ld l, a                                       ; $46c1: $6f
    ld [hl], l                                    ; $46c2: $75
    jr nz, @+$64                                  ; $46c3: $20 $62

jr_019_46c5:
    ld h, l                                       ; $46c5: $65
    ld h, c                                       ; $46c6: $61
    ld [hl], h                                    ; $46c7: $74
    jr nz, @+$6f                                  ; $46c8: $20 $6d

    ld h, l                                       ; $46ca: $65
    jr nz, jr_019_4736                            ; $46cb: $20 $69

    ld l, [hl]                                    ; $46cd: $6e
    ld [bc], a                                    ; $46ce: $02
    ld h, c                                       ; $46cf: $61

jr_019_46d0:
    jr nz, @+$4f                                  ; $46d0: $20 $4d

    ld h, c                                       ; $46d2: $61
    ld [hl], h                                    ; $46d3: $74
    ld h, e                                       ; $46d4: $63
    ld l, b                                       ; $46d5: $68
    jr nz, @+$49                                  ; $46d6: $20 $47

jr_019_46d8:
    ld h, c                                       ; $46d8: $61
    ld l, l                                       ; $46d9: $6d

jr_019_46da:
    ld h, l                                       ; $46da: $65
    inc l                                         ; $46db: $2c
    jr nz, jr_019_4740                            ; $46dc: $20 $62

    ld [hl], l                                    ; $46de: $75
    ld [hl], h                                    ; $46df: $74
    ld bc, $2749                                  ; $46e0: $01 $49 $27
    ld l, l                                       ; $46e3: $6d
    jr nz, @+$75                                  ; $46e4: $20 $73

    ld [hl], h                                    ; $46e6: $74
    ld l, c                                       ; $46e7: $69
    ld l, h                                       ; $46e8: $6c
    ld l, h                                       ; $46e9: $6c
    jr nz, jr_019_472f                            ; $46ea: $20 $43

    ld l, b                                       ; $46ec: $68
    ld h, c                                       ; $46ed: $61
    ld l, l                                       ; $46ee: $6d
    ld [hl], b                                    ; $46ef: $70
    ld hl, $0003                                  ; $46f0: $21 $03 $00
    ld c, b                                       ; $46f3: $48
    ld l, c                                       ; $46f4: $69
    ld hl, $4920                                  ; $46f5: $21 $20 $49

jr_019_46f8:
    daa                                           ; $46f8: $27
    ld l, l                                       ; $46f9: $6d
    jr nz, @+$10                                  ; $46fa: $20 $0e

    dec b                                         ; $46fc: $05

jr_019_46fd:
    inc l                                         ; $46fd: $2c
    ld bc, $6150                                  ; $46fe: $01 $50 $61

jr_019_4701:
    ld l, h                                       ; $4701: $6c
    ld l, l                                       ; $4702: $6d
    jr nz, jr_019_4748                            ; $4703: $20 $43

    ld l, h                                       ; $4705: $6c
    ld [hl], l                                    ; $4706: $75
    ld h, d                                       ; $4707: $62
    ld bc, $6843                                  ; $4708: $01 $43 $68
    ld h, c                                       ; $470b: $61
    ld l, l                                       ; $470c: $6d
    ld [hl], b                                    ; $470d: $70
    ld l, c                                       ; $470e: $69
    ld l, a                                       ; $470f: $6f
    ld l, [hl]                                    ; $4710: $6e
    ld l, $02                                     ; $4711: $2e $02
    ld d, e                                       ; $4713: $53
    ld l, a                                       ; $4714: $6f
    jr nz, @+$7b                                  ; $4715: $20 $79

    ld l, a                                       ; $4717: $6f
    ld [hl], l                                    ; $4718: $75
    jr nz, jr_019_477d                            ; $4719: $20 $62

    ld h, l                                       ; $471b: $65
    ld h, c                                       ; $471c: $61
    ld [hl], h                                    ; $471d: $74

jr_019_471e:
    jr nz, jr_019_472e                            ; $471e: $20 $0e

    inc b                                         ; $4720: $04
    ld bc, $6e69                                  ; $4721: $01 $69 $6e
    jr nz, @+$63                                  ; $4724: $20 $61

    jr nz, @+$4f                                  ; $4726: $20 $4d

    ld h, c                                       ; $4728: $61
    ld [hl], h                                    ; $4729: $74
    ld h, e                                       ; $472a: $63
    ld l, b                                       ; $472b: $68
    jr nz, @+$49                                  ; $472c: $20 $47

jr_019_472e:
    ld h, c                                       ; $472e: $61

jr_019_472f:
    ld l, l                                       ; $472f: $6d
    ld h, l                                       ; $4730: $65
    ccf                                           ; $4731: $3f
    nop                                           ; $4732: $00
    ld c, a                                       ; $4733: $4f
    ld l, b                                       ; $4734: $68
    inc l                                         ; $4735: $2c

jr_019_4736:
    jr nz, @+$64                                  ; $4736: $20 $62

    ld [hl], l                                    ; $4738: $75
    ld [hl], h                                    ; $4739: $74
    jr nz, jr_019_47b5                            ; $473a: $20 $79

    ld l, a                                       ; $473c: $6f
    ld [hl], l                                    ; $473d: $75
    jr nz, jr_019_47ac                            ; $473e: $20 $6c

jr_019_4740:
    ld l, a                                       ; $4740: $6f
    ld l, a                                       ; $4741: $6f
    ld l, e                                       ; $4742: $6b
    jr nz, jr_019_47b1                            ; $4743: $20 $6c

    ld l, c                                       ; $4745: $69
    ld l, e                                       ; $4746: $6b
    ld h, l                                       ; $4747: $65

jr_019_4748:
    ld l, $2e                                     ; $4748: $2e $2e
    ld l, $03                                     ; $474a: $2e $03
    nop                                           ; $474c: $00
    ld e, c                                       ; $474d: $59
    ld l, a                                       ; $474e: $6f
    ld [hl], l                                    ; $474f: $75
    jr nz, jr_019_47bf                            ; $4750: $20 $6d

    ld [hl], l                                    ; $4752: $75
    ld [hl], e                                    ; $4753: $73
    ld [hl], h                                    ; $4754: $74
    jr nz, jr_019_47b9                            ; $4755: $20 $62

    ld h, l                                       ; $4757: $65
    jr nz, @+$69                                  ; $4758: $20 $67

    ld l, a                                       ; $475a: $6f
    ld l, a                                       ; $475b: $6f
    ld h, h                                       ; $475c: $64
    ld bc, $6669                                  ; $475d: $01 $69 $66
    jr nz, jr_019_47db                            ; $4760: $20 $79

    ld l, a                                       ; $4762: $6f
    ld [hl], l                                    ; $4763: $75
    jr nz, jr_019_47c8                            ; $4764: $20 $62

    ld h, l                                       ; $4766: $65
    ld h, c                                       ; $4767: $61
    ld [hl], h                                    ; $4768: $74
    jr nz, jr_019_47df                            ; $4769: $20 $74

    ld l, b                                       ; $476b: $68
    ld h, l                                       ; $476c: $65
    ld bc, $614d                                  ; $476d: $01 $4d $61
    ld [hl], d                                    ; $4770: $72
    ld l, c                                       ; $4771: $69
    ld l, a                                       ; $4772: $6f
    ld l, [hl]                                    ; $4773: $6e
    jr nz, jr_019_47b9                            ; $4774: $20 $43

    ld l, h                                       ; $4776: $6c
    ld [hl], l                                    ; $4777: $75
    ld h, d                                       ; $4778: $62
    jr nz, @+$45                                  ; $4779: $20 $43

    ld l, b                                       ; $477b: $68
    ld h, c                                       ; $477c: $61

jr_019_477d:
    ld l, l                                       ; $477d: $6d
    ld [hl], b                                    ; $477e: $70
    ld l, $02                                     ; $477f: $2e $02
    ld c, b                                       ; $4781: $48
    ld l, a                                       ; $4782: $6f
    ld [hl], a                                    ; $4783: $77
    daa                                           ; $4784: $27
    ld h, h                                       ; $4785: $64
    jr nz, jr_019_4801                            ; $4786: $20 $79

    ld l, a                                       ; $4788: $6f
    ld [hl], l                                    ; $4789: $75
    jr nz, @+$6e                                  ; $478a: $20 $6c

    ld l, c                                       ; $478c: $69
    ld l, e                                       ; $478d: $6b
    ld h, l                                       ; $478e: $65
    ld bc, $6f74                                  ; $478f: $01 $74 $6f
    jr nz, jr_019_4808                            ; $4792: $20 $74

    ld [hl], d                                    ; $4794: $72
    ld a, c                                       ; $4795: $79
    jr nz, jr_019_4805                            ; $4796: $20 $6d

    ld h, l                                       ; $4798: $65
    jr nz, jr_019_4804                            ; $4799: $20 $69

    ld l, [hl]                                    ; $479b: $6e
    ld bc, $2061                                  ; $479c: $01 $61 $20
    ld c, l                                       ; $479f: $4d
    ld h, c                                       ; $47a0: $61
    ld [hl], h                                    ; $47a1: $74
    ld h, e                                       ; $47a2: $63
    ld l, b                                       ; $47a3: $68
    jr nz, @+$49                                  ; $47a4: $20 $47

    ld h, c                                       ; $47a6: $61
    ld l, l                                       ; $47a7: $6d
    ld h, l                                       ; $47a8: $65
    ccf                                           ; $47a9: $3f
    nop                                           ; $47aa: $00
    ld c, c                                       ; $47ab: $49

jr_019_47ac:
    daa                                           ; $47ac: $27
    ld h, h                                       ; $47ad: $64
    jr nz, @+$64                                  ; $47ae: $20 $62

    ld h, l                                       ; $47b0: $65

jr_019_47b1:
    jr nz, jr_019_481b                            ; $47b1: $20 $68

    ld h, c                                       ; $47b3: $61
    ld [hl], b                                    ; $47b4: $70

jr_019_47b5:
    ld [hl], b                                    ; $47b5: $70
    ld a, c                                       ; $47b6: $79
    jr nz, jr_019_482d                            ; $47b7: $20 $74

jr_019_47b9:
    ld l, a                                       ; $47b9: $6f
    ld bc, $6f67                                  ; $47ba: $01 $67 $6f
    jr nz, jr_019_4834                            ; $47bd: $20 $75

jr_019_47bf:
    ld [hl], b                                    ; $47bf: $70
    jr nz, jr_019_4823                            ; $47c0: $20 $61

    ld h, a                                       ; $47c2: $67
    ld h, c                                       ; $47c3: $61
    ld l, c                                       ; $47c4: $69
    ld l, [hl]                                    ; $47c5: $6e
    ld [hl], e                                    ; $47c6: $73
    ld [hl], h                                    ; $47c7: $74

jr_019_47c8:
    ld bc, $6f79                                  ; $47c8: $01 $79 $6f
    ld [hl], l                                    ; $47cb: $75
    jr nz, jr_019_482f                            ; $47cc: $20 $61

    ld l, [hl]                                    ; $47ce: $6e
    ld a, c                                       ; $47cf: $79
    ld [hl], h                                    ; $47d0: $74
    ld l, c                                       ; $47d1: $69
    ld l, l                                       ; $47d2: $6d
    ld h, l                                       ; $47d3: $65
    ld l, $03                                     ; $47d4: $2e $03
    nop                                           ; $47d6: $00
    ld d, a                                       ; $47d7: $57
    ld h, l                                       ; $47d8: $65
    ld l, h                                       ; $47d9: $6c
    ld l, h                                       ; $47da: $6c

jr_019_47db:
    inc l                                         ; $47db: $2c
    jr nz, @+$09                                  ; $47dc: $20 $07

    inc l                                         ; $47de: $2c

jr_019_47df:
    ld bc, $6873                                  ; $47df: $01 $73 $68
    ld l, a                                       ; $47e2: $6f
    ld [hl], a                                    ; $47e3: $77
    jr nz, @+$6f                                  ; $47e4: $20 $6d

    ld h, l                                       ; $47e6: $65
    jr nz, jr_019_4860                            ; $47e7: $20 $77

    ld l, b                                       ; $47e9: $68
    ld h, c                                       ; $47ea: $61
    ld [hl], h                                    ; $47eb: $74
    ld bc, $6f79                                  ; $47ec: $01 $79 $6f
    ld [hl], l                                    ; $47ef: $75
    daa                                           ; $47f0: $27
    halt                                          ; $47f1: $76
    ld h, l                                       ; $47f2: $65
    jr nz, jr_019_485c                            ; $47f3: $20 $67

    ld l, a                                       ; $47f5: $6f
    ld [hl], h                                    ; $47f6: $74
    ld hl, $0003                                  ; $47f7: $21 $03 $00
    ld b, h                                       ; $47fa: $44
    ld d, l                                       ; $47fb: $55
    ld c, l                                       ; $47fc: $4d
    ld c, l                                       ; $47fd: $4d
    ld e, c                                       ; $47fe: $59
    nop                                           ; $47ff: $00
    ld b, h                                       ; $4800: $44

jr_019_4801:
    ld d, l                                       ; $4801: $55
    ld c, l                                       ; $4802: $4d
    ld c, l                                       ; $4803: $4d

jr_019_4804:
    ld e, c                                       ; $4804: $59

jr_019_4805:
    nop                                           ; $4805: $00
    ld c, b                                       ; $4806: $48
    ld l, c                                       ; $4807: $69

jr_019_4808:
    ld hl, $4920                                  ; $4808: $21 $20 $49
    daa                                           ; $480b: $27
    ld l, l                                       ; $480c: $6d
    jr nz, @+$10                                  ; $480d: $20 $0e

    dec b                                         ; $480f: $05
    inc l                                         ; $4810: $2c
    ld bc, $6150                                  ; $4811: $01 $50 $61
    ld l, h                                       ; $4814: $6c
    ld l, l                                       ; $4815: $6d
    jr nz, @+$45                                  ; $4816: $20 $43

    ld l, h                                       ; $4818: $6c
    ld [hl], l                                    ; $4819: $75
    ld h, d                                       ; $481a: $62

jr_019_481b:
    ld bc, $6843                                  ; $481b: $01 $43 $68
    ld h, c                                       ; $481e: $61
    ld l, l                                       ; $481f: $6d
    ld [hl], b                                    ; $4820: $70
    ld l, c                                       ; $4821: $69
    ld l, a                                       ; $4822: $6f

jr_019_4823:
    ld l, [hl]                                    ; $4823: $6e
    ld l, $02                                     ; $4824: $2e $02
    ld d, h                                       ; $4826: $54
    ld l, b                                       ; $4827: $68
    ld h, c                                       ; $4828: $61
    ld [hl], h                                    ; $4829: $74
    jr nz, jr_019_4898                            ; $482a: $20 $6c

    ld h, c                                       ; $482c: $61

jr_019_482d:
    ld [hl], e                                    ; $482d: $73
    ld [hl], h                                    ; $482e: $74

jr_019_482f:
    jr nz, jr_019_489e                            ; $482f: $20 $6d

    ld h, c                                       ; $4831: $61
    ld [hl], h                                    ; $4832: $74
    ld h, e                                       ; $4833: $63

jr_019_4834:
    ld l, b                                       ; $4834: $68
    jr nz, jr_019_48ae                            ; $4835: $20 $77

    ld h, c                                       ; $4837: $61
    ld [hl], e                                    ; $4838: $73
    ld bc, $6c63                                  ; $4839: $01 $63 $6c
    ld l, a                                       ; $483c: $6f
    ld [hl], e                                    ; $483d: $73
    ld h, l                                       ; $483e: $65
    inc l                                         ; $483f: $2c
    jr nz, @+$79                                  ; $4840: $20 $77

    ld h, c                                       ; $4842: $61
    ld [hl], e                                    ; $4843: $73
    ld l, [hl]                                    ; $4844: $6e
    daa                                           ; $4845: $27
    ld [hl], h                                    ; $4846: $74
    jr nz, @+$6b                                  ; $4847: $20 $69

    ld [hl], h                                    ; $4849: $74
    ld bc, $3f07                                  ; $484a: $01 $07 $3f
    ld [bc], a                                    ; $484d: $02
    ld d, a                                       ; $484e: $57
    ld h, c                                       ; $484f: $61
    ld l, [hl]                                    ; $4850: $6e
    ld [hl], h                                    ; $4851: $74
    jr nz, @+$76                                  ; $4852: $20 $74

    ld l, a                                       ; $4854: $6f
    jr nz, jr_019_48cb                            ; $4855: $20 $74

    ld [hl], d                                    ; $4857: $72
    ld a, c                                       ; $4858: $79
    ld bc, $656d                                  ; $4859: $01 $6d $65

jr_019_485c:
    jr nz, @+$63                                  ; $485c: $20 $61

    ld h, a                                       ; $485e: $67
    ld h, c                                       ; $485f: $61

jr_019_4860:
    ld l, c                                       ; $4860: $69
    ld l, [hl]                                    ; $4861: $6e
    ccf                                           ; $4862: $3f
    nop                                           ; $4863: $00
    ld c, c                                       ; $4864: $49
    daa                                           ; $4865: $27
    ld h, h                                       ; $4866: $64
    jr nz, jr_019_48cb                            ; $4867: $20 $62

    ld h, l                                       ; $4869: $65
    jr nz, jr_019_48d4                            ; $486a: $20 $68

    ld h, c                                       ; $486c: $61
    ld [hl], b                                    ; $486d: $70
    ld [hl], b                                    ; $486e: $70
    ld a, c                                       ; $486f: $79
    jr nz, jr_019_48e6                            ; $4870: $20 $74

    ld l, a                                       ; $4872: $6f
    ld bc, $6f67                                  ; $4873: $01 $67 $6f
    jr nz, @+$77                                  ; $4876: $20 $75

    ld [hl], b                                    ; $4878: $70
    jr nz, jr_019_48dc                            ; $4879: $20 $61

    ld h, a                                       ; $487b: $67
    ld h, c                                       ; $487c: $61
    ld l, c                                       ; $487d: $69
    ld l, [hl]                                    ; $487e: $6e
    ld [hl], e                                    ; $487f: $73
    ld [hl], h                                    ; $4880: $74
    ld bc, $6f79                                  ; $4881: $01 $79 $6f
    ld [hl], l                                    ; $4884: $75
    jr nz, jr_019_48e8                            ; $4885: $20 $61

    ld l, [hl]                                    ; $4887: $6e
    ld a, c                                       ; $4888: $79
    ld [hl], h                                    ; $4889: $74
    ld l, c                                       ; $488a: $69
    ld l, l                                       ; $488b: $6d
    ld h, l                                       ; $488c: $65
    ld l, $03                                     ; $488d: $2e $03
    nop                                           ; $488f: $00
    ld d, h                                       ; $4890: $54
    ld l, b                                       ; $4891: $68
    ld h, l                                       ; $4892: $65
    ld l, [hl]                                    ; $4893: $6e
    jr nz, jr_019_4909                            ; $4894: $20 $73

    ld l, b                                       ; $4896: $68
    ld l, a                                       ; $4897: $6f

jr_019_4898:
    ld [hl], a                                    ; $4898: $77
    jr nz, jr_019_4908                            ; $4899: $20 $6d

    ld h, l                                       ; $489b: $65
    jr nz, jr_019_4908                            ; $489c: $20 $6a

jr_019_489e:
    ld [hl], l                                    ; $489e: $75
    ld [hl], e                                    ; $489f: $73
    ld [hl], h                                    ; $48a0: $74
    ld bc, $6f68                                  ; $48a1: $01 $68 $6f
    ld [hl], a                                    ; $48a4: $77
    jr nz, jr_019_490e                            ; $48a5: $20 $67

    ld l, a                                       ; $48a7: $6f
    ld l, a                                       ; $48a8: $6f
    ld h, h                                       ; $48a9: $64
    ld bc, $6f79                                  ; $48aa: $01 $79 $6f
    ld [hl], l                                    ; $48ad: $75

jr_019_48ae:
    daa                                           ; $48ae: $27
    halt                                          ; $48af: $76
    ld h, l                                       ; $48b0: $65
    jr nz, jr_019_491a                            ; $48b1: $20 $67

    ld l, a                                       ; $48b3: $6f
    ld [hl], h                                    ; $48b4: $74
    ld [hl], h                                    ; $48b5: $74
    ld h, l                                       ; $48b6: $65
    ld l, [hl]                                    ; $48b7: $6e
    ld hl, $0003                                  ; $48b8: $21 $03 $00
    ld c, b                                       ; $48bb: $48
    ld l, c                                       ; $48bc: $69
    ld hl, $4920                                  ; $48bd: $21 $20 $49
    daa                                           ; $48c0: $27
    ld l, l                                       ; $48c1: $6d
    jr nz, jr_019_48d2                            ; $48c2: $20 $0e

    dec b                                         ; $48c4: $05
    inc l                                         ; $48c5: $2c
    ld bc, $6f66                                  ; $48c6: $01 $66 $6f
    ld [hl], d                                    ; $48c9: $72
    ld l, l                                       ; $48ca: $6d

jr_019_48cb:
    ld h, l                                       ; $48cb: $65
    ld [hl], d                                    ; $48cc: $72
    jr nz, jr_019_491f                            ; $48cd: $20 $50

    ld h, c                                       ; $48cf: $61
    ld l, h                                       ; $48d0: $6c
    ld l, l                                       ; $48d1: $6d

jr_019_48d2:
    jr nz, jr_019_4917                            ; $48d2: $20 $43

jr_019_48d4:
    ld l, h                                       ; $48d4: $6c
    ld [hl], l                                    ; $48d5: $75
    ld h, d                                       ; $48d6: $62
    ld bc, $6843                                  ; $48d7: $01 $43 $68
    ld h, c                                       ; $48da: $61
    ld l, l                                       ; $48db: $6d

jr_019_48dc:
    ld [hl], b                                    ; $48dc: $70
    ld l, c                                       ; $48dd: $69
    ld l, a                                       ; $48de: $6f
    ld l, [hl]                                    ; $48df: $6e
    ld l, $02                                     ; $48e0: $2e $02
    ld b, c                                       ; $48e2: $41
    ld [hl], d                                    ; $48e3: $72
    ld h, l                                       ; $48e4: $65
    ld l, [hl]                                    ; $48e5: $6e

jr_019_48e6:
    daa                                           ; $48e6: $27
    ld [hl], h                                    ; $48e7: $74

jr_019_48e8:
    jr nz, jr_019_4963                            ; $48e8: $20 $79

    ld l, a                                       ; $48ea: $6f
    ld [hl], l                                    ; $48eb: $75
    jr nz, jr_019_4962                            ; $48ec: $20 $74

    ld l, b                                       ; $48ee: $68
    ld h, l                                       ; $48ef: $65
    jr nz, jr_019_4961                            ; $48f0: $20 $6f

    ld l, [hl]                                    ; $48f2: $6e
    ld h, l                                       ; $48f3: $65
    ld bc, $6877                                  ; $48f4: $01 $77 $68
    ld l, a                                       ; $48f7: $6f
    jr nz, jr_019_496e                            ; $48f8: $20 $74

    ld l, a                                       ; $48fa: $6f
    ld l, a                                       ; $48fb: $6f
    ld l, e                                       ; $48fc: $6b
    jr nz, jr_019_496c                            ; $48fd: $20 $6d

    ld a, c                                       ; $48ff: $79
    jr nz, jr_019_4976                            ; $4900: $20 $74

    ld l, c                                       ; $4902: $69
    ld [hl], h                                    ; $4903: $74
    ld l, h                                       ; $4904: $6c
    ld h, l                                       ; $4905: $65
    ccf                                           ; $4906: $3f
    nop                                           ; $4907: $00

jr_019_4908:
    ld c, a                                       ; $4908: $4f

jr_019_4909:
    ld l, b                                       ; $4909: $68
    inc l                                         ; $490a: $2c
    jr nz, jr_019_4976                            ; $490b: $20 $69

    ld [hl], h                                    ; $490d: $74

jr_019_490e:
    jr nz, jr_019_4987                            ; $490e: $20 $77

    ld h, c                                       ; $4910: $61
    ld [hl], e                                    ; $4911: $73
    ld l, [hl]                                    ; $4912: $6e
    daa                                           ; $4913: $27
    ld [hl], h                                    ; $4914: $74
    jr nz, jr_019_4990                            ; $4915: $20 $79

jr_019_4917:
    ld l, a                                       ; $4917: $6f
    ld [hl], l                                    ; $4918: $75
    ccf                                           ; $4919: $3f

jr_019_491a:
    inc bc                                        ; $491a: $03
    nop                                           ; $491b: $00
    ld e, c                                       ; $491c: $59
    ld l, a                                       ; $491d: $6f
    ld [hl], l                                    ; $491e: $75

jr_019_491f:
    daa                                           ; $491f: $27
    ld [hl], d                                    ; $4920: $72
    ld h, l                                       ; $4921: $65
    jr nz, jr_019_4998                            ; $4922: $20 $74

    ld l, b                                       ; $4924: $68
    ld h, l                                       ; $4925: $65
    jr nz, jr_019_496b                            ; $4926: $20 $43

    ld l, h                                       ; $4928: $6c
    ld [hl], l                                    ; $4929: $75
    ld h, d                                       ; $492a: $62
    jr nz, jr_019_4970                            ; $492b: $20 $43

    ld l, b                                       ; $492d: $68
    ld h, c                                       ; $492e: $61
    ld l, l                                       ; $492f: $6d
    ld [hl], b                                    ; $4930: $70
    inc l                                         ; $4931: $2c
    ld bc, $7562                                  ; $4932: $01 $62 $75
    ld [hl], h                                    ; $4935: $74
    jr nz, jr_019_49a0                            ; $4936: $20 $68

    ld l, a                                       ; $4938: $6f
    ld [hl], a                                    ; $4939: $77
    daa                                           ; $493a: $27
    ld [hl], e                                    ; $493b: $73
    jr nz, jr_019_49b7                            ; $493c: $20 $79

    ld l, a                                       ; $493e: $6f
    ld [hl], l                                    ; $493f: $75
    ld [hl], d                                    ; $4940: $72
    ld bc, $614d                                  ; $4941: $01 $4d $61
    ld [hl], h                                    ; $4944: $74
    ld h, e                                       ; $4945: $63
    ld l, b                                       ; $4946: $68
    jr nz, jr_019_4990                            ; $4947: $20 $47

    ld h, c                                       ; $4949: $61
    ld l, l                                       ; $494a: $6d
    ld h, l                                       ; $494b: $65
    ccf                                           ; $494c: $3f
    ld [bc], a                                    ; $494d: $02
    ld d, a                                       ; $494e: $57
    ld l, a                                       ; $494f: $6f
    ld l, [hl]                                    ; $4950: $6e
    daa                                           ; $4951: $27
    ld [hl], h                                    ; $4952: $74
    jr nz, @+$7b                                  ; $4953: $20 $79

    ld l, a                                       ; $4955: $6f
    ld [hl], l                                    ; $4956: $75
    jr nz, jr_019_49c9                            ; $4957: $20 $70

    ld l, h                                       ; $4959: $6c
    ld h, c                                       ; $495a: $61
    ld a, c                                       ; $495b: $79
    ld bc, $2061                                  ; $495c: $01 $61 $20
    ld l, l                                       ; $495f: $6d
    ld h, c                                       ; $4960: $61

jr_019_4961:
    ld [hl], h                                    ; $4961: $74

jr_019_4962:
    ld h, e                                       ; $4962: $63

jr_019_4963:
    ld l, b                                       ; $4963: $68
    jr nz, @+$79                                  ; $4964: $20 $77

    ld l, c                                       ; $4966: $69
    ld [hl], h                                    ; $4967: $74
    ld l, b                                       ; $4968: $68
    jr nz, @+$6f                                  ; $4969: $20 $6d

jr_019_496b:
    ld h, l                                       ; $496b: $65

jr_019_496c:
    ccf                                           ; $496c: $3f
    nop                                           ; $496d: $00

jr_019_496e:
    ld c, a                                       ; $496e: $4f
    ld l, b                                       ; $496f: $68

jr_019_4970:
    inc l                                         ; $4970: $2c
    jr nz, @+$6b                                  ; $4971: $20 $69

    ld [hl], h                                    ; $4973: $74
    daa                                           ; $4974: $27
    ld [hl], e                                    ; $4975: $73

jr_019_4976:
    jr nz, jr_019_49c7                            ; $4976: $20 $4f

    ld c, e                                       ; $4978: $4b
    jr nz, jr_019_49e4                            ; $4979: $20 $69

    ld h, [hl]                                    ; $497b: $66
    ld bc, $6f79                                  ; $497c: $01 $79 $6f
    ld [hl], l                                    ; $497f: $75
    daa                                           ; $4980: $27
    ld [hl], d                                    ; $4981: $72
    ld h, l                                       ; $4982: $65
    jr nz, @+$70                                  ; $4983: $20 $6e

    ld h, l                                       ; $4985: $65
    ld [hl], d                                    ; $4986: $72

jr_019_4987:
    halt                                          ; $4987: $76
    ld l, a                                       ; $4988: $6f
    ld [hl], l                                    ; $4989: $75
    ld [hl], e                                    ; $498a: $73
    ld l, $01                                     ; $498b: $2e $01
    ld d, a                                       ; $498d: $57
    ld h, l                                       ; $498e: $65
    daa                                           ; $498f: $27

jr_019_4990:
    ld l, h                                       ; $4990: $6c
    ld l, h                                       ; $4991: $6c
    jr nz, jr_019_49f8                            ; $4992: $20 $64

    ld l, a                                       ; $4994: $6f
    jr nz, jr_019_4a00                            ; $4995: $20 $69

    ld [hl], h                                    ; $4997: $74

jr_019_4998:
    jr nz, @+$6e                                  ; $4998: $20 $6c

    ld h, c                                       ; $499a: $61
    ld [hl], h                                    ; $499b: $74
    ld h, l                                       ; $499c: $65
    ld [hl], d                                    ; $499d: $72
    ld l, $03                                     ; $499e: $2e $03

jr_019_49a0:
    nop                                           ; $49a0: $00
    ld c, c                                       ; $49a1: $49
    ld [hl], h                                    ; $49a2: $74
    daa                                           ; $49a3: $27
    ld [hl], e                                    ; $49a4: $73
    jr nz, jr_019_4a1b                            ; $49a5: $20 $74

    ld l, c                                       ; $49a7: $69
    ld l, l                                       ; $49a8: $6d
    ld h, l                                       ; $49a9: $65
    jr nz, @+$76                                  ; $49aa: $20 $74

    ld l, a                                       ; $49ac: $6f
    jr nz, @+$72                                  ; $49ad: $20 $70

    ld h, c                                       ; $49af: $61
    ld a, c                                       ; $49b0: $79
    ld bc, $6f79                                  ; $49b1: $01 $79 $6f
    ld [hl], l                                    ; $49b4: $75
    jr nz, @+$64                                  ; $49b5: $20 $62

jr_019_49b7:
    ld h, c                                       ; $49b7: $61
    ld h, e                                       ; $49b8: $63
    ld l, e                                       ; $49b9: $6b
    jr nz, jr_019_4a22                            ; $49ba: $20 $66

    ld l, a                                       ; $49bc: $6f
    ld [hl], d                                    ; $49bd: $72
    ld bc, $6874                                  ; $49be: $01 $74 $68
    ld h, l                                       ; $49c1: $65
    jr nz, jr_019_4a18                            ; $49c2: $20 $54

    ld l, a                                       ; $49c4: $6f
    ld [hl], l                                    ; $49c5: $75
    ld [hl], d                                    ; $49c6: $72

jr_019_49c7:
    ld l, [hl]                                    ; $49c7: $6e
    ld h, c                                       ; $49c8: $61

jr_019_49c9:
    ld l, l                                       ; $49c9: $6d
    ld h, l                                       ; $49ca: $65
    ld l, [hl]                                    ; $49cb: $6e
    ld [hl], h                                    ; $49cc: $74
    ld l, $03                                     ; $49cd: $2e $03
    nop                                           ; $49cf: $00
    ld c, b                                       ; $49d0: $48
    ld l, c                                       ; $49d1: $69
    ld hl, $4920                                  ; $49d2: $21 $20 $49
    daa                                           ; $49d5: $27
    ld l, l                                       ; $49d6: $6d
    jr nz, jr_019_49e7                            ; $49d7: $20 $0e

    dec b                                         ; $49d9: $05
    inc l                                         ; $49da: $2c
    ld bc, $6874                                  ; $49db: $01 $74 $68
    ld h, l                                       ; $49de: $65
    jr nz, jr_019_4a31                            ; $49df: $20 $50

    ld h, c                                       ; $49e1: $61
    ld l, h                                       ; $49e2: $6c
    ld l, l                                       ; $49e3: $6d

jr_019_49e4:
    jr nz, jr_019_4a29                            ; $49e4: $20 $43

    ld l, h                                       ; $49e6: $6c

jr_019_49e7:
    ld [hl], l                                    ; $49e7: $75
    ld h, d                                       ; $49e8: $62
    ld bc, $6843                                  ; $49e9: $01 $43 $68
    ld h, c                                       ; $49ec: $61
    ld l, l                                       ; $49ed: $6d
    ld [hl], b                                    ; $49ee: $70
    ld l, c                                       ; $49ef: $69
    ld l, a                                       ; $49f0: $6f
    ld l, [hl]                                    ; $49f1: $6e
    ld l, $02                                     ; $49f2: $2e $02
    ld c, c                                       ; $49f4: $49
    jr nz, jr_019_4a63                            ; $49f5: $20 $6c

    ld l, a                                       ; $49f7: $6f

jr_019_49f8:
    ld [hl], e                                    ; $49f8: $73
    ld [hl], h                                    ; $49f9: $74
    jr nz, jr_019_4a6b                            ; $49fa: $20 $6f

    ld [hl], l                                    ; $49fc: $75
    ld [hl], d                                    ; $49fd: $72
    jr nz, @+$6e                                  ; $49fe: $20 $6c

jr_019_4a00:
    ld l, c                                       ; $4a00: $69
    ld [hl], h                                    ; $4a01: $74
    ld [hl], h                                    ; $4a02: $74
    ld l, h                                       ; $4a03: $6c
    ld h, l                                       ; $4a04: $65
    ld bc, $616d                                  ; $4a05: $01 $6d $61
    ld [hl], h                                    ; $4a08: $74
    ld h, e                                       ; $4a09: $63
    ld l, b                                       ; $4a0a: $68
    inc l                                         ; $4a0b: $2c
    jr nz, jr_019_4a70                            ; $4a0c: $20 $62

    ld [hl], l                                    ; $4a0e: $75
    ld [hl], h                                    ; $4a0f: $74
    jr nz, @+$76                                  ; $4a10: $20 $74

    ld l, b                                       ; $4a12: $68
    ld h, l                                       ; $4a13: $65
    ld [hl], d                                    ; $4a14: $72
    ld h, l                                       ; $4a15: $65
    daa                                           ; $4a16: $27
    ld [hl], e                                    ; $4a17: $73

jr_019_4a18:
    jr nz, @+$75                                  ; $4a18: $20 $73

    ld [hl], h                                    ; $4a1a: $74

jr_019_4a1b:
    ld l, c                                       ; $4a1b: $69
    ld l, h                                       ; $4a1c: $6c
    ld l, h                                       ; $4a1d: $6c
    ld bc, $6874                                  ; $4a1e: $01 $74 $68
    ld h, l                                       ; $4a21: $65

jr_019_4a22:
    jr nz, jr_019_4a78                            ; $4a22: $20 $54

    ld l, a                                       ; $4a24: $6f
    ld [hl], l                                    ; $4a25: $75
    ld [hl], d                                    ; $4a26: $72
    ld l, [hl]                                    ; $4a27: $6e
    ld h, c                                       ; $4a28: $61

jr_019_4a29:
    ld l, l                                       ; $4a29: $6d
    ld h, l                                       ; $4a2a: $65
    ld l, [hl]                                    ; $4a2b: $6e
    ld [hl], h                                    ; $4a2c: $74
    ld hl, $4902                                  ; $4a2d: $21 $02 $49
    ld h, [hl]                                    ; $4a30: $66

jr_019_4a31:
    jr nz, jr_019_4aac                            ; $4a31: $20 $79

    ld l, a                                       ; $4a33: $6f
    ld [hl], l                                    ; $4a34: $75
    jr nz, jr_019_4aae                            ; $4a35: $20 $77

    ld h, c                                       ; $4a37: $61
    ld l, [hl]                                    ; $4a38: $6e
    ld [hl], h                                    ; $4a39: $74
    jr nz, jr_019_4a9d                            ; $4a3a: $20 $61

    ld l, [hl]                                    ; $4a3c: $6e
    ld l, a                                       ; $4a3d: $6f
    ld [hl], h                                    ; $4a3e: $74
    ld l, b                                       ; $4a3f: $68
    ld h, l                                       ; $4a40: $65
    ld [hl], d                                    ; $4a41: $72
    ld bc, $614d                                  ; $4a42: $01 $4d $61
    ld [hl], h                                    ; $4a45: $74
    ld h, e                                       ; $4a46: $63
    ld l, b                                       ; $4a47: $68
    jr nz, jr_019_4a91                            ; $4a48: $20 $47

    ld h, c                                       ; $4a4a: $61
    ld l, l                                       ; $4a4b: $6d
    ld h, l                                       ; $4a4c: $65
    inc l                                         ; $4a4d: $2c
    jr nz, jr_019_4ac3                            ; $4a4e: $20 $73

    ld h, l                                       ; $4a50: $65
    ld h, l                                       ; $4a51: $65
    ld bc, $6874                                  ; $4a52: $01 $74 $68
    ld h, l                                       ; $4a55: $65
    jr nz, @+$46                                  ; $4a56: $20 $44

    ld [hl], l                                    ; $4a58: $75
    ld l, [hl]                                    ; $4a59: $6e
    ld h, l                                       ; $4a5a: $65
    jr nz, jr_019_4aa0                            ; $4a5b: $20 $43

    ld l, h                                       ; $4a5d: $6c
    ld [hl], l                                    ; $4a5e: $75
    ld h, d                                       ; $4a5f: $62
    jr nz, jr_019_4aa5                            ; $4a60: $20 $43

    ld l, b                                       ; $4a62: $68

jr_019_4a63:
    ld h, c                                       ; $4a63: $61
    ld l, l                                       ; $4a64: $6d
    ld [hl], b                                    ; $4a65: $70
    ld l, $03                                     ; $4a66: $2e $03
    nop                                           ; $4a68: $00
    ld c, b                                       ; $4a69: $48
    ld l, c                                       ; $4a6a: $69

jr_019_4a6b:
    ld hl, $4920                                  ; $4a6b: $21 $20 $49
    daa                                           ; $4a6e: $27
    ld l, l                                       ; $4a6f: $6d

jr_019_4a70:
    jr nz, jr_019_4ae6                            ; $4a70: $20 $74

    ld l, b                                       ; $4a72: $68
    ld h, l                                       ; $4a73: $65
    ld bc, $6f66                                  ; $4a74: $01 $66 $6f
    ld [hl], d                                    ; $4a77: $72

jr_019_4a78:
    ld l, l                                       ; $4a78: $6d
    ld h, l                                       ; $4a79: $65
    ld [hl], d                                    ; $4a7a: $72
    jr nz, jr_019_4acd                            ; $4a7b: $20 $50

    ld h, c                                       ; $4a7d: $61
    ld l, h                                       ; $4a7e: $6c
    ld l, l                                       ; $4a7f: $6d
    jr nz, jr_019_4ac5                            ; $4a80: $20 $43

    ld l, h                                       ; $4a82: $6c
    ld [hl], l                                    ; $4a83: $75
    ld h, d                                       ; $4a84: $62
    ld bc, $6843                                  ; $4a85: $01 $43 $68
    ld h, c                                       ; $4a88: $61
    ld l, l                                       ; $4a89: $6d
    ld [hl], b                                    ; $4a8a: $70
    inc l                                         ; $4a8b: $2c
    jr nz, @+$10                                  ; $4a8c: $20 $0e

    dec b                                         ; $4a8e: $05
    ld l, $02                                     ; $4a8f: $2e $02

jr_019_4a91:
    ld c, c                                       ; $4a91: $49
    jr nz, @+$6e                                  ; $4a92: $20 $6c

    ld l, a                                       ; $4a94: $6f
    ld [hl], e                                    ; $4a95: $73
    ld [hl], h                                    ; $4a96: $74
    jr nz, jr_019_4b0d                            ; $4a97: $20 $74

    ld l, b                                       ; $4a99: $68
    ld h, l                                       ; $4a9a: $65
    jr nz, jr_019_4b0a                            ; $4a9b: $20 $6d

jr_019_4a9d:
    ld h, c                                       ; $4a9d: $61
    ld [hl], h                                    ; $4a9e: $74
    ld h, e                                       ; $4a9f: $63

jr_019_4aa0:
    ld l, b                                       ; $4aa0: $68
    ld bc, $6e61                                  ; $4aa1: $01 $61 $6e
    ld h, h                                       ; $4aa4: $64

jr_019_4aa5:
    jr nz, jr_019_4b14                            ; $4aa5: $20 $6d

    ld a, c                                       ; $4aa7: $79
    jr nz, jr_019_4b1e                            ; $4aa8: $20 $74

    ld l, c                                       ; $4aaa: $69
    ld [hl], h                                    ; $4aab: $74

jr_019_4aac:
    ld l, h                                       ; $4aac: $6c
    ld h, l                                       ; $4aad: $65

jr_019_4aae:
    ld l, $01                                     ; $4aae: $2e $01
    ld c, [hl]                                    ; $4ab0: $4e
    ld l, a                                       ; $4ab1: $6f
    ld [hl], a                                    ; $4ab2: $77
    jr nz, jr_019_4afe                            ; $4ab3: $20 $49

    daa                                           ; $4ab5: $27
    ld l, l                                       ; $4ab6: $6d
    jr nz, jr_019_4b23                            ; $4ab7: $20 $6a

    ld [hl], l                                    ; $4ab9: $75
    ld [hl], e                                    ; $4aba: $73
    ld [hl], h                                    ; $4abb: $74
    jr nz, jr_019_4b1f                            ; $4abc: $20 $61

    ld l, [hl]                                    ; $4abe: $6e
    ld l, a                                       ; $4abf: $6f
    ld [hl], h                                    ; $4ac0: $74
    ld l, b                                       ; $4ac1: $68
    ld h, l                                       ; $4ac2: $65

jr_019_4ac3:
    ld [hl], d                                    ; $4ac3: $72
    ld [bc], a                                    ; $4ac4: $02

jr_019_4ac5:
    ld h, a                                       ; $4ac5: $67
    ld l, a                                       ; $4ac6: $6f
    ld l, h                                       ; $4ac7: $6c
    ld h, [hl]                                    ; $4ac8: $66
    ld h, l                                       ; $4ac9: $65
    ld [hl], d                                    ; $4aca: $72
    ld l, $20                                     ; $4acb: $2e $20

jr_019_4acd:
    ld b, d                                       ; $4acd: $42
    ld [hl], l                                    ; $4ace: $75
    ld [hl], h                                    ; $4acf: $74
    jr nz, jr_019_4b36                            ; $4ad0: $20 $64

    ld l, a                                       ; $4ad2: $6f
    ld l, [hl]                                    ; $4ad3: $6e
    daa                                           ; $4ad4: $27
    ld [hl], h                                    ; $4ad5: $74
    jr nz, jr_019_4b4b                            ; $4ad6: $20 $73

    ld [hl], h                                    ; $4ad8: $74
    ld l, a                                       ; $4ad9: $6f
    ld [hl], b                                    ; $4ada: $70
    ld bc, $6874                                  ; $4adb: $01 $74 $68
    ld h, l                                       ; $4ade: $65
    ld [hl], d                                    ; $4adf: $72
    ld h, l                                       ; $4ae0: $65
    ld hl, $5920                                  ; $4ae1: $21 $20 $59
    ld l, a                                       ; $4ae4: $6f
    ld [hl], l                                    ; $4ae5: $75

jr_019_4ae6:
    jr nz, jr_019_4b53                            ; $4ae6: $20 $6b

    ld h, l                                       ; $4ae8: $65
    ld h, l                                       ; $4ae9: $65
    ld [hl], b                                    ; $4aea: $70
    ld bc, $6972                                  ; $4aeb: $01 $72 $69
    ld h, a                                       ; $4aee: $67
    ld l, b                                       ; $4aef: $68
    ld [hl], h                                    ; $4af0: $74
    jr nz, jr_019_4b62                            ; $4af1: $20 $6f

    ld l, [hl]                                    ; $4af3: $6e
    jr nz, jr_019_4b5d                            ; $4af4: $20 $67

    ld l, a                                       ; $4af6: $6f
    ld l, c                                       ; $4af7: $69
    ld l, [hl]                                    ; $4af8: $6e
    ld h, a                                       ; $4af9: $67
    ld hl, $0003                                  ; $4afa: $21 $03 $00
    ld c, b                                       ; $4afd: $48

jr_019_4afe:
    ld l, c                                       ; $4afe: $69
    ld hl, $4920                                  ; $4aff: $21 $20 $49
    daa                                           ; $4b02: $27
    ld l, l                                       ; $4b03: $6d
    jr nz, jr_019_4b14                            ; $4b04: $20 $0e

    dec b                                         ; $4b06: $05
    inc l                                         ; $4b07: $2c
    jr nz, jr_019_4b5a                            ; $4b08: $20 $50

jr_019_4b0a:
    ld h, c                                       ; $4b0a: $61
    ld l, h                                       ; $4b0b: $6c
    ld l, l                                       ; $4b0c: $6d

jr_019_4b0d:
    ld bc, $6c43                                  ; $4b0d: $01 $43 $6c
    ld [hl], l                                    ; $4b10: $75
    ld h, d                                       ; $4b11: $62
    jr nz, jr_019_4b57                            ; $4b12: $20 $43

jr_019_4b14:
    ld l, b                                       ; $4b14: $68
    ld h, c                                       ; $4b15: $61
    ld l, l                                       ; $4b16: $6d
    ld [hl], b                                    ; $4b17: $70
    ld l, c                                       ; $4b18: $69
    ld l, a                                       ; $4b19: $6f
    ld l, [hl]                                    ; $4b1a: $6e
    ld l, $02                                     ; $4b1b: $2e $02
    ld e, c                                       ; $4b1d: $59

jr_019_4b1e:
    ld l, a                                       ; $4b1e: $6f

jr_019_4b1f:
    ld [hl], l                                    ; $4b1f: $75
    jr nz, jr_019_4b90                            ; $4b20: $20 $6e

    ld h, l                                       ; $4b22: $65

jr_019_4b23:
    ld [hl], a                                    ; $4b23: $77
    jr nz, jr_019_4b98                            ; $4b24: $20 $72

    ld h, l                                       ; $4b26: $65
    ld h, e                                       ; $4b27: $63
    ld [hl], d                                    ; $4b28: $72
    ld [hl], l                                    ; $4b29: $75
    ld l, c                                       ; $4b2a: $69
    ld [hl], h                                    ; $4b2b: $74
    ld [hl], e                                    ; $4b2c: $73
    jr nz, jr_019_4ba2                            ; $4b2d: $20 $73

    ld [hl], l                                    ; $4b2f: $75
    ld [hl], d                                    ; $4b30: $72
    ld h, l                                       ; $4b31: $65
    ld bc, $6d69                                  ; $4b32: $01 $69 $6d
    ld [hl], b                                    ; $4b35: $70

jr_019_4b36:
    ld [hl], d                                    ; $4b36: $72
    ld l, a                                       ; $4b37: $6f
    halt                                          ; $4b38: $76
    ld h, l                                       ; $4b39: $65
    jr nz, @+$73                                  ; $4b3a: $20 $71

    ld [hl], l                                    ; $4b3c: $75
    ld l, c                                       ; $4b3d: $69
    ld h, e                                       ; $4b3e: $63
    ld l, e                                       ; $4b3f: $6b
    ld l, h                                       ; $4b40: $6c
    ld a, c                                       ; $4b41: $79
    ld hl, $0003                                  ; $4b42: $21 $03 $00
    ld c, b                                       ; $4b45: $48
    ld l, c                                       ; $4b46: $69
    ld hl, $4920                                  ; $4b47: $21 $20 $49
    daa                                           ; $4b4a: $27

jr_019_4b4b:
    ld l, l                                       ; $4b4b: $6d
    jr nz, @+$10                                  ; $4b4c: $20 $0e

    dec b                                         ; $4b4e: $05
    inc l                                         ; $4b4f: $2c
    jr nz, jr_019_4bc6                            ; $4b50: $20 $74

    ld l, b                                       ; $4b52: $68

jr_019_4b53:
    ld h, l                                       ; $4b53: $65
    ld bc, $6f66                                  ; $4b54: $01 $66 $6f

jr_019_4b57:
    ld [hl], d                                    ; $4b57: $72
    ld l, l                                       ; $4b58: $6d
    ld h, l                                       ; $4b59: $65

jr_019_4b5a:
    ld [hl], d                                    ; $4b5a: $72
    jr nz, @+$52                                  ; $4b5b: $20 $50

jr_019_4b5d:
    ld h, c                                       ; $4b5d: $61
    ld l, h                                       ; $4b5e: $6c
    ld l, l                                       ; $4b5f: $6d
    jr nz, @+$45                                  ; $4b60: $20 $43

jr_019_4b62:
    ld l, h                                       ; $4b62: $6c
    ld [hl], l                                    ; $4b63: $75
    ld h, d                                       ; $4b64: $62
    ld bc, $6843                                  ; $4b65: $01 $43 $68
    ld h, c                                       ; $4b68: $61
    ld l, l                                       ; $4b69: $6d
    ld [hl], b                                    ; $4b6a: $70
    ld l, c                                       ; $4b6b: $69
    ld l, a                                       ; $4b6c: $6f
    ld l, [hl]                                    ; $4b6d: $6e
    ld l, $02                                     ; $4b6e: $2e $02
    ld c, c                                       ; $4b70: $49
    daa                                           ; $4b71: $27
    ld l, h                                       ; $4b72: $6c
    ld l, h                                       ; $4b73: $6c
    jr nz, jr_019_4bdd                            ; $4b74: $20 $67

    ld l, a                                       ; $4b76: $6f
    jr nz, @+$77                                  ; $4b77: $20 $75

    ld [hl], b                                    ; $4b79: $70
    jr nz, jr_019_4bdd                            ; $4b7a: $20 $61

    ld h, a                                       ; $4b7c: $67
    ld h, c                                       ; $4b7d: $61
    ld l, c                                       ; $4b7e: $69
    ld l, [hl]                                    ; $4b7f: $6e
    ld [hl], e                                    ; $4b80: $73
    ld [hl], h                                    ; $4b81: $74
    ld bc, $6f79                                  ; $4b82: $01 $79 $6f
    ld [hl], l                                    ; $4b85: $75
    jr nz, jr_019_4bf1                            ; $4b86: $20 $69

    ld l, [hl]                                    ; $4b88: $6e
    jr nz, jr_019_4bec                            ; $4b89: $20 $61

    jr nz, jr_019_4bda                            ; $4b8b: $20 $4d

    ld h, c                                       ; $4b8d: $61
    ld [hl], h                                    ; $4b8e: $74
    ld h, e                                       ; $4b8f: $63

jr_019_4b90:
    ld l, b                                       ; $4b90: $68
    ld bc, $6147                                  ; $4b91: $01 $47 $61
    ld l, l                                       ; $4b94: $6d
    ld h, l                                       ; $4b95: $65
    jr nz, jr_019_4bf9                            ; $4b96: $20 $61

jr_019_4b98:
    ld l, [hl]                                    ; $4b98: $6e
    ld a, c                                       ; $4b99: $79
    ld [hl], h                                    ; $4b9a: $74
    ld l, c                                       ; $4b9b: $69
    ld l, l                                       ; $4b9c: $6d
    ld h, l                                       ; $4b9d: $65
    ld l, $03                                     ; $4b9e: $2e $03
    nop                                           ; $4ba0: $00
    ld c, b                                       ; $4ba1: $48

jr_019_4ba2:
    ld l, c                                       ; $4ba2: $69
    ld hl, $4920                                  ; $4ba3: $21 $20 $49
    daa                                           ; $4ba6: $27
    ld l, l                                       ; $4ba7: $6d
    jr nz, @+$10                                  ; $4ba8: $20 $0e

    dec b                                         ; $4baa: $05
    inc l                                         ; $4bab: $2c
    jr nz, jr_019_4c22                            ; $4bac: $20 $74

    ld l, b                                       ; $4bae: $68
    ld h, l                                       ; $4baf: $65
    ld bc, $6f66                                  ; $4bb0: $01 $66 $6f
    ld [hl], d                                    ; $4bb3: $72
    ld l, l                                       ; $4bb4: $6d
    ld h, l                                       ; $4bb5: $65
    ld [hl], d                                    ; $4bb6: $72
    jr nz, jr_019_4c09                            ; $4bb7: $20 $50

    ld h, c                                       ; $4bb9: $61
    ld l, h                                       ; $4bba: $6c
    ld l, l                                       ; $4bbb: $6d
    jr nz, @+$45                                  ; $4bbc: $20 $43

    ld l, h                                       ; $4bbe: $6c
    ld [hl], l                                    ; $4bbf: $75
    ld h, d                                       ; $4bc0: $62
    ld bc, $6843                                  ; $4bc1: $01 $43 $68
    ld h, c                                       ; $4bc4: $61
    ld l, l                                       ; $4bc5: $6d

jr_019_4bc6:
    ld [hl], b                                    ; $4bc6: $70
    ld l, c                                       ; $4bc7: $69
    ld l, a                                       ; $4bc8: $6f
    ld l, [hl]                                    ; $4bc9: $6e
    ld l, $02                                     ; $4bca: $2e $02
    ld d, e                                       ; $4bcc: $53
    ld l, a                                       ; $4bcd: $6f
    inc l                                         ; $4bce: $2c
    jr nz, jr_019_4c4a                            ; $4bcf: $20 $79

    ld l, a                                       ; $4bd1: $6f
    ld [hl], l                                    ; $4bd2: $75
    daa                                           ; $4bd3: $27
    ld [hl], d                                    ; $4bd4: $72
    ld h, l                                       ; $4bd5: $65
    jr nz, jr_019_4c4c                            ; $4bd6: $20 $74

    ld l, b                                       ; $4bd8: $68
    ld h, l                                       ; $4bd9: $65

jr_019_4bda:
    ld bc, $7247                                  ; $4bda: $01 $47 $72

jr_019_4bdd:
    ld h, c                                       ; $4bdd: $61
    ld l, [hl]                                    ; $4bde: $6e
    ld h, h                                       ; $4bdf: $64
    jr nz, jr_019_4c25                            ; $4be0: $20 $43

    ld l, b                                       ; $4be2: $68
    ld h, c                                       ; $4be3: $61
    ld l, l                                       ; $4be4: $6d
    ld [hl], b                                    ; $4be5: $70
    ld l, c                                       ; $4be6: $69
    ld l, a                                       ; $4be7: $6f
    ld l, [hl]                                    ; $4be8: $6e
    ccf                                           ; $4be9: $3f
    nop                                           ; $4bea: $00
    ld c, b                                       ; $4beb: $48

jr_019_4bec:
    ld l, c                                       ; $4bec: $69
    ld hl, $4920                                  ; $4bed: $21 $20 $49
    daa                                           ; $4bf0: $27

jr_019_4bf1:
    ld l, l                                       ; $4bf1: $6d
    jr nz, @+$10                                  ; $4bf2: $20 $0e

    dec b                                         ; $4bf4: $05
    inc l                                         ; $4bf5: $2c
    ld bc, $6150                                  ; $4bf6: $01 $50 $61

jr_019_4bf9:
    ld l, h                                       ; $4bf9: $6c
    ld l, l                                       ; $4bfa: $6d
    jr nz, jr_019_4c40                            ; $4bfb: $20 $43

    ld l, h                                       ; $4bfd: $6c
    ld [hl], l                                    ; $4bfe: $75
    ld h, d                                       ; $4bff: $62
    ld bc, $6843                                  ; $4c00: $01 $43 $68
    ld h, c                                       ; $4c03: $61
    ld l, l                                       ; $4c04: $6d
    ld [hl], b                                    ; $4c05: $70
    ld l, c                                       ; $4c06: $69
    ld l, a                                       ; $4c07: $6f
    ld l, [hl]                                    ; $4c08: $6e

jr_019_4c09:
    ld l, $02                                     ; $4c09: $2e $02
    ld d, e                                       ; $4c0b: $53
    ld l, a                                       ; $4c0c: $6f
    inc l                                         ; $4c0d: $2c
    jr nz, jr_019_4c89                            ; $4c0e: $20 $79

    ld l, a                                       ; $4c10: $6f
    ld [hl], l                                    ; $4c11: $75
    daa                                           ; $4c12: $27
    ld [hl], d                                    ; $4c13: $72
    ld h, l                                       ; $4c14: $65
    jr nz, jr_019_4c8b                            ; $4c15: $20 $74

    ld l, b                                       ; $4c17: $68
    ld h, l                                       ; $4c18: $65
    ld bc, $7247                                  ; $4c19: $01 $47 $72
    ld h, c                                       ; $4c1c: $61
    ld l, [hl]                                    ; $4c1d: $6e
    ld h, h                                       ; $4c1e: $64
    jr nz, @+$45                                  ; $4c1f: $20 $43

    ld l, b                                       ; $4c21: $68

jr_019_4c22:
    ld h, c                                       ; $4c22: $61
    ld l, l                                       ; $4c23: $6d
    ld [hl], b                                    ; $4c24: $70

jr_019_4c25:
    ld l, c                                       ; $4c25: $69
    ld l, a                                       ; $4c26: $6f
    ld l, [hl]                                    ; $4c27: $6e
    ccf                                           ; $4c28: $3f
    nop                                           ; $4c29: $00
    ld c, c                                       ; $4c2a: $49
    jr nz, jr_019_4ca4                            ; $4c2b: $20 $77

    ld h, c                                       ; $4c2d: $61
    ld l, [hl]                                    ; $4c2e: $6e
    ld [hl], h                                    ; $4c2f: $74
    jr nz, @+$76                                  ; $4c30: $20 $74

    ld l, a                                       ; $4c32: $6f
    jr nz, jr_019_4ca8                            ; $4c33: $20 $73

    ld h, l                                       ; $4c35: $65
    ld h, l                                       ; $4c36: $65
    ld bc, $6877                                  ; $4c37: $01 $77 $68
    ld h, c                                       ; $4c3a: $61
    ld [hl], h                                    ; $4c3b: $74
    jr nz, jr_019_4cb2                            ; $4c3c: $20 $74

    ld l, b                                       ; $4c3e: $68
    ld h, l                                       ; $4c3f: $65

jr_019_4c40:
    jr nz, jr_019_4c89                            ; $4c40: $20 $47

    ld [hl], d                                    ; $4c42: $72
    ld h, c                                       ; $4c43: $61
    ld l, [hl]                                    ; $4c44: $6e
    ld h, h                                       ; $4c45: $64
    jr nz, jr_019_4c8b                            ; $4c46: $20 $43

    ld l, b                                       ; $4c48: $68
    ld h, c                                       ; $4c49: $61

jr_019_4c4a:
    ld l, l                                       ; $4c4a: $6d
    ld [hl], b                                    ; $4c4b: $70

jr_019_4c4c:
    ld bc, $6163                                  ; $4c4c: $01 $63 $61
    ld l, [hl]                                    ; $4c4f: $6e
    jr nz, jr_019_4cb6                            ; $4c50: $20 $64

    ld l, a                                       ; $4c52: $6f
    ld l, $02                                     ; $4c53: $2e $02
    ld d, a                                       ; $4c55: $57
    ld l, a                                       ; $4c56: $6f
    ld l, [hl]                                    ; $4c57: $6e
    daa                                           ; $4c58: $27
    ld [hl], h                                    ; $4c59: $74
    jr nz, jr_019_4cd5                            ; $4c5a: $20 $79

    ld l, a                                       ; $4c5c: $6f
    ld [hl], l                                    ; $4c5d: $75
    jr nz, jr_019_4cd0                            ; $4c5e: $20 $70

    ld l, h                                       ; $4c60: $6c
    ld h, c                                       ; $4c61: $61
    ld a, c                                       ; $4c62: $79
    jr nz, jr_019_4cc6                            ; $4c63: $20 $61

    ld bc, $614d                                  ; $4c65: $01 $4d $61
    ld [hl], h                                    ; $4c68: $74
    ld h, e                                       ; $4c69: $63
    ld l, b                                       ; $4c6a: $68
    jr nz, jr_019_4cb4                            ; $4c6b: $20 $47

    ld h, c                                       ; $4c6d: $61
    ld l, l                                       ; $4c6e: $6d
    ld h, l                                       ; $4c6f: $65
    jr nz, jr_019_4ce9                            ; $4c70: $20 $77

    ld l, c                                       ; $4c72: $69
    ld [hl], h                                    ; $4c73: $74
    ld l, b                                       ; $4c74: $68
    jr nz, jr_019_4ce4                            ; $4c75: $20 $6d

    ld h, l                                       ; $4c77: $65
    ccf                                           ; $4c78: $3f
    nop                                           ; $4c79: $00
    ld e, c                                       ; $4c7a: $59
    ld l, a                                       ; $4c7b: $6f
    ld [hl], l                                    ; $4c7c: $75
    jr nz, jr_019_4cf2                            ; $4c7d: $20 $73

    ld [hl], h                                    ; $4c7f: $74
    ld l, a                                       ; $4c80: $6f
    ld l, h                                       ; $4c81: $6c
    ld h, l                                       ; $4c82: $65
    jr nz, jr_019_4cf2                            ; $4c83: $20 $6d

    ld a, c                                       ; $4c85: $79
    jr nz, @+$52                                  ; $4c86: $20 $50

    ld h, c                                       ; $4c88: $61

jr_019_4c89:
    ld l, h                                       ; $4c89: $6c
    ld l, l                                       ; $4c8a: $6d

jr_019_4c8b:
    ld bc, $6c43                                  ; $4c8b: $01 $43 $6c
    ld [hl], l                                    ; $4c8e: $75
    ld h, d                                       ; $4c8f: $62
    jr nz, jr_019_4d06                            ; $4c90: $20 $74

    ld l, c                                       ; $4c92: $69
    ld [hl], h                                    ; $4c93: $74
    ld l, h                                       ; $4c94: $6c
    ld h, l                                       ; $4c95: $65
    ld l, $01                                     ; $4c96: $2e $01
    ld c, c                                       ; $4c98: $49
    jr nz, @+$71                                  ; $4c99: $20 $6f

    ld [hl], a                                    ; $4c9b: $77
    ld h, l                                       ; $4c9c: $65
    jr nz, jr_019_4d18                            ; $4c9d: $20 $79

    ld l, a                                       ; $4c9f: $6f
    ld [hl], l                                    ; $4ca0: $75
    jr nz, jr_019_4d09                            ; $4ca1: $20 $66

    ld l, a                                       ; $4ca3: $6f

jr_019_4ca4:
    ld [hl], d                                    ; $4ca4: $72
    jr nz, jr_019_4d1b                            ; $4ca5: $20 $74

    ld l, b                                       ; $4ca7: $68

jr_019_4ca8:
    ld h, c                                       ; $4ca8: $61
    ld [hl], h                                    ; $4ca9: $74
    ld l, $03                                     ; $4caa: $2e $03
    nop                                           ; $4cac: $00
    ld d, a                                       ; $4cad: $57
    ld h, l                                       ; $4cae: $65
    ld l, h                                       ; $4caf: $6c
    ld l, h                                       ; $4cb0: $6c
    inc l                                         ; $4cb1: $2c

jr_019_4cb2:
    jr nz, jr_019_4d2b                            ; $4cb2: $20 $77

jr_019_4cb4:
    ld h, c                                       ; $4cb4: $61
    ld [hl], e                                    ; $4cb5: $73

jr_019_4cb6:
    ld l, [hl]                                    ; $4cb6: $6e
    daa                                           ; $4cb7: $27
    ld [hl], h                                    ; $4cb8: $74
    jr nz, jr_019_4d24                            ; $4cb9: $20 $69

    ld [hl], h                                    ; $4cbb: $74
    jr nz, @+$7b                                  ; $4cbc: $20 $79

    ld l, a                                       ; $4cbe: $6f
    ld [hl], l                                    ; $4cbf: $75
    ccf                                           ; $4cc0: $3f
    inc bc                                        ; $4cc1: $03
    nop                                           ; $4cc2: $00
    ld c, b                                       ; $4cc3: $48
    ld l, c                                       ; $4cc4: $69
    inc l                                         ; $4cc5: $2c

jr_019_4cc6:
    jr nz, jr_019_4d11                            ; $4cc6: $20 $49

    daa                                           ; $4cc8: $27
    ld l, l                                       ; $4cc9: $6d
    jr nz, jr_019_4cda                            ; $4cca: $20 $0e

    dec b                                         ; $4ccc: $05
    inc l                                         ; $4ccd: $2c
    jr nz, jr_019_4d44                            ; $4cce: $20 $74

jr_019_4cd0:
    ld l, b                                       ; $4cd0: $68
    ld h, l                                       ; $4cd1: $65
    ld bc, $6150                                  ; $4cd2: $01 $50 $61

jr_019_4cd5:
    ld l, h                                       ; $4cd5: $6c
    ld l, l                                       ; $4cd6: $6d
    jr nz, jr_019_4d1c                            ; $4cd7: $20 $43

    ld l, h                                       ; $4cd9: $6c

jr_019_4cda:
    ld [hl], l                                    ; $4cda: $75
    ld h, d                                       ; $4cdb: $62
    jr nz, jr_019_4d21                            ; $4cdc: $20 $43

    ld l, b                                       ; $4cde: $68
    ld h, c                                       ; $4cdf: $61
    ld l, l                                       ; $4ce0: $6d
    ld [hl], b                                    ; $4ce1: $70
    ld l, $02                                     ; $4ce2: $2e $02

jr_019_4ce4:
    ld c, c                                       ; $4ce4: $49
    jr nz, jr_019_4d53                            ; $4ce5: $20 $6c

    ld l, a                                       ; $4ce7: $6f
    ld [hl], e                                    ; $4ce8: $73

jr_019_4ce9:
    ld [hl], h                                    ; $4ce9: $74
    jr nz, @+$76                                  ; $4cea: $20 $74

    ld l, b                                       ; $4cec: $68
    ld h, l                                       ; $4ced: $65
    jr nz, jr_019_4d3d                            ; $4cee: $20 $4d

    ld h, c                                       ; $4cf0: $61
    ld [hl], h                                    ; $4cf1: $74

jr_019_4cf2:
    ld h, e                                       ; $4cf2: $63
    ld l, b                                       ; $4cf3: $68
    inc l                                         ; $4cf4: $2c
    ld bc, $7562                                  ; $4cf5: $01 $62 $75
    ld [hl], h                                    ; $4cf8: $74
    jr nz, jr_019_4d44                            ; $4cf9: $20 $49

    daa                                           ; $4cfb: $27
    ld l, h                                       ; $4cfc: $6c
    ld l, h                                       ; $4cfd: $6c
    jr nz, jr_019_4d67                            ; $4cfe: $20 $67

    ld h, l                                       ; $4d00: $65
    ld [hl], h                                    ; $4d01: $74
    jr nz, jr_019_4d7d                            ; $4d02: $20 $79

    ld l, a                                       ; $4d04: $6f
    ld [hl], l                                    ; $4d05: $75

jr_019_4d06:
    ld bc, $6e69                                  ; $4d06: $01 $69 $6e

jr_019_4d09:
    jr nz, jr_019_4d7f                            ; $4d09: $20 $74

    ld l, b                                       ; $4d0b: $68
    ld h, l                                       ; $4d0c: $65
    jr nz, jr_019_4d83                            ; $4d0d: $20 $74

    ld l, a                                       ; $4d0f: $6f
    ld [hl], l                                    ; $4d10: $75

jr_019_4d11:
    ld [hl], d                                    ; $4d11: $72
    ld l, [hl]                                    ; $4d12: $6e
    ld h, c                                       ; $4d13: $61
    ld l, l                                       ; $4d14: $6d
    ld h, l                                       ; $4d15: $65
    ld l, [hl]                                    ; $4d16: $6e
    ld [hl], h                                    ; $4d17: $74

jr_019_4d18:
    ld l, $03                                     ; $4d18: $2e $03
    nop                                           ; $4d1a: $00

jr_019_4d1b:
    ld c, c                                       ; $4d1b: $49

jr_019_4d1c:
    jr nz, jr_019_4d85                            ; $4d1c: $20 $67

    ld [hl], l                                    ; $4d1e: $75
    ld h, l                                       ; $4d1f: $65
    ld [hl], e                                    ; $4d20: $73

jr_019_4d21:
    ld [hl], e                                    ; $4d21: $73
    jr nz, jr_019_4d98                            ; $4d22: $20 $74

jr_019_4d24:
    ld l, b                                       ; $4d24: $68
    ld h, l                                       ; $4d25: $65
    jr nz, @+$52                                  ; $4d26: $20 $50

    ld h, c                                       ; $4d28: $61
    ld l, h                                       ; $4d29: $6c
    ld l, l                                       ; $4d2a: $6d

jr_019_4d2b:
    ld bc, $6c43                                  ; $4d2b: $01 $43 $6c
    ld [hl], l                                    ; $4d2e: $75
    ld h, d                                       ; $4d2f: $62
    jr nz, jr_019_4d75                            ; $4d30: $20 $43

    ld l, b                                       ; $4d32: $68
    ld h, c                                       ; $4d33: $61
    ld l, l                                       ; $4d34: $6d
    ld [hl], b                                    ; $4d35: $70
    jr nz, jr_019_4da4                            ; $4d36: $20 $6c

    ld l, a                                       ; $4d38: $6f
    ld [hl], e                                    ; $4d39: $73
    ld [hl], h                                    ; $4d3a: $74
    jr nz, @+$6b                                  ; $4d3b: $20 $69

jr_019_4d3d:
    ld l, [hl]                                    ; $4d3d: $6e
    ld bc, $2061                                  ; $4d3e: $01 $61 $20
    ld c, l                                       ; $4d41: $4d
    ld h, c                                       ; $4d42: $61
    ld [hl], h                                    ; $4d43: $74

jr_019_4d44:
    ld h, e                                       ; $4d44: $63
    ld l, b                                       ; $4d45: $68
    jr nz, jr_019_4d8f                            ; $4d46: $20 $47

    ld h, c                                       ; $4d48: $61
    ld l, l                                       ; $4d49: $6d
    ld h, l                                       ; $4d4a: $65
    ld l, $02                                     ; $4d4b: $2e $02
    ld e, c                                       ; $4d4d: $59
    ld l, a                                       ; $4d4e: $6f
    ld [hl], l                                    ; $4d4f: $75
    daa                                           ; $4d50: $27
    ld [hl], d                                    ; $4d51: $72
    ld h, l                                       ; $4d52: $65

jr_019_4d53:
    jr nz, jr_019_4dc9                            ; $4d53: $20 $74

    ld l, b                                       ; $4d55: $68
    ld h, l                                       ; $4d56: $65
    jr nz, jr_019_4dc8                            ; $4d57: $20 $6f

    ld l, [hl]                                    ; $4d59: $6e
    ld h, l                                       ; $4d5a: $65
    ld bc, $6877                                  ; $4d5b: $01 $77 $68
    ld l, a                                       ; $4d5e: $6f
    jr nz, jr_019_4dc3                            ; $4d5f: $20 $62

    ld h, l                                       ; $4d61: $65
    ld h, c                                       ; $4d62: $61
    ld [hl], h                                    ; $4d63: $74
    jr nz, jr_019_4d74                            ; $4d64: $20 $0e

    dec b                                         ; $4d66: $05

jr_019_4d67:
    inc l                                         ; $4d67: $2c
    ld bc, $6972                                  ; $4d68: $01 $72 $69
    ld h, a                                       ; $4d6b: $67
    ld l, b                                       ; $4d6c: $68
    ld [hl], h                                    ; $4d6d: $74
    ccf                                           ; $4d6e: $3f
    nop                                           ; $4d6f: $00
    ld d, e                                       ; $4d70: $53
    ld l, b                                       ; $4d71: $68
    ld h, l                                       ; $4d72: $65
    ld h, l                                       ; $4d73: $65

jr_019_4d74:
    ld [hl], e                                    ; $4d74: $73

jr_019_4d75:
    ld l, b                                       ; $4d75: $68
    ld hl, $4920                                  ; $4d76: $21 $20 $49
    jr nz, @+$69                                  ; $4d79: $20 $67

    ld [hl], l                                    ; $4d7b: $75
    ld h, l                                       ; $4d7c: $65

jr_019_4d7d:
    ld [hl], e                                    ; $4d7d: $73
    ld [hl], e                                    ; $4d7e: $73

jr_019_4d7f:
    jr nz, jr_019_4def                            ; $4d7f: $20 $6e

    ld l, a                                       ; $4d81: $6f
    ld [hl], h                                    ; $4d82: $74

jr_019_4d83:
    ld l, $2e                                     ; $4d83: $2e $2e

jr_019_4d85:
    ld l, $03                                     ; $4d85: $2e $03
    nop                                           ; $4d87: $00
    ld d, a                                       ; $4d88: $57
    ld h, l                                       ; $4d89: $65
    ld l, h                                       ; $4d8a: $6c
    ld l, h                                       ; $4d8b: $6c
    inc l                                         ; $4d8c: $2c
    jr nz, jr_019_4df8                            ; $4d8d: $20 $69

jr_019_4d8f:
    ld h, [hl]                                    ; $4d8f: $66
    jr nz, jr_019_4e0b                            ; $4d90: $20 $79

    ld l, a                                       ; $4d92: $6f
    ld [hl], l                                    ; $4d93: $75
    jr nz, jr_019_4df8                            ; $4d94: $20 $62

    ld h, l                                       ; $4d96: $65
    ld h, c                                       ; $4d97: $61

jr_019_4d98:
    ld [hl], h                                    ; $4d98: $74
    ld bc, $050e                                  ; $4d99: $01 $0e $05
    inc l                                         ; $4d9c: $2c
    jr nz, jr_019_4de8                            ; $4d9d: $20 $49

    jr nz, jr_019_4e18                            ; $4d9f: $20 $77

    ld h, c                                       ; $4da1: $61
    ld l, [hl]                                    ; $4da2: $6e
    ld l, [hl]                                    ; $4da3: $6e

jr_019_4da4:
    ld h, c                                       ; $4da4: $61
    ld bc, $6573                                  ; $4da5: $01 $73 $65
    ld h, l                                       ; $4da8: $65
    jr nz, @+$7b                                  ; $4da9: $20 $79

    ld l, a                                       ; $4dab: $6f
    ld [hl], l                                    ; $4dac: $75
    jr nz, @+$72                                  ; $4dad: $20 $70

    ld l, h                                       ; $4daf: $6c
    ld h, c                                       ; $4db0: $61
    ld a, c                                       ; $4db1: $79
    ld hl, $4802                                  ; $4db2: $21 $02 $48
    ld l, a                                       ; $4db5: $6f
    ld [hl], a                                    ; $4db6: $77
    jr nz, jr_019_4de0                            ; $4db7: $20 $27

    ld h, d                                       ; $4db9: $62
    ld l, a                                       ; $4dba: $6f
    ld [hl], l                                    ; $4dbb: $75
    ld [hl], h                                    ; $4dbc: $74
    jr nz, @+$6b                                  ; $4dbd: $20 $69

    ld [hl], h                                    ; $4dbf: $74
    ccf                                           ; $4dc0: $3f
    jr nz, @+$45                                  ; $4dc1: $20 $43

jr_019_4dc3:
    ld h, c                                       ; $4dc3: $61
    ld l, [hl]                                    ; $4dc4: $6e
    ld bc, $6f79                                  ; $4dc5: $01 $79 $6f

jr_019_4dc8:
    ld [hl], l                                    ; $4dc8: $75

jr_019_4dc9:
    jr nz, @+$72                                  ; $4dc9: $20 $70

    ld l, h                                       ; $4dcb: $6c
    ld h, c                                       ; $4dcc: $61
    ld a, c                                       ; $4dcd: $79
    jr nz, jr_019_4dde                            ; $4dce: $20 $0e

    ld b, $2c                                     ; $4dd0: $06 $2c
    jr nz, jr_019_4e18                            ; $4dd2: $20 $44

    ld [hl], l                                    ; $4dd4: $75
    ld l, [hl]                                    ; $4dd5: $6e
    ld h, l                                       ; $4dd6: $65
    ld bc, $6843                                  ; $4dd7: $01 $43 $68
    ld h, c                                       ; $4dda: $61
    ld l, l                                       ; $4ddb: $6d
    ld [hl], b                                    ; $4ddc: $70
    inc l                                         ; $4ddd: $2c

jr_019_4dde:
    jr nz, jr_019_4e49                            ; $4dde: $20 $69

jr_019_4de0:
    ld l, [hl]                                    ; $4de0: $6e
    jr nz, jr_019_4e44                            ; $4de1: $20 $61

    jr nz, jr_019_4e52                            ; $4de3: $20 $6d

    ld h, c                                       ; $4de5: $61
    ld [hl], h                                    ; $4de6: $74
    ld h, e                                       ; $4de7: $63

jr_019_4de8:
    ld l, b                                       ; $4de8: $68
    ccf                                           ; $4de9: $3f
    nop                                           ; $4dea: $00
    ld c, c                                       ; $4deb: $49
    daa                                           ; $4dec: $27
    halt                                          ; $4ded: $76
    ld h, l                                       ; $4dee: $65

jr_019_4def:
    jr nz, jr_019_4e58                            ; $4def: $20 $67

    ld l, a                                       ; $4df1: $6f
    ld [hl], h                                    ; $4df2: $74
    jr nz, jr_019_4e63                            ; $4df3: $20 $6e

    ld l, a                                       ; $4df5: $6f
    ld [hl], h                                    ; $4df6: $74
    ld l, b                                       ; $4df7: $68

jr_019_4df8:
    ld l, c                                       ; $4df8: $69
    ld l, [hl]                                    ; $4df9: $6e
    ld h, a                                       ; $4dfa: $67
    ld bc, $6f74                                  ; $4dfb: $01 $74 $6f
    jr nz, @+$75                                  ; $4dfe: $20 $73

    ld h, c                                       ; $4e00: $61
    ld a, c                                       ; $4e01: $79
    jr nz, jr_019_4e78                            ; $4e02: $20 $74

    ld l, a                                       ; $4e04: $6f
    jr nz, jr_019_4e68                            ; $4e05: $20 $61

    ld bc, $6863                                  ; $4e07: $01 $63 $68
    ld l, c                                       ; $4e0a: $69

jr_019_4e0b:
    ld h, e                                       ; $4e0b: $63
    ld l, e                                       ; $4e0c: $6b
    ld h, l                                       ; $4e0d: $65
    ld l, [hl]                                    ; $4e0e: $6e
    ld hl, $0003                                  ; $4e0f: $21 $03 $00
    ld e, c                                       ; $4e12: $59
    ld l, a                                       ; $4e13: $6f
    ld [hl], l                                    ; $4e14: $75
    jr nz, jr_019_4e79                            ; $4e15: $20 $62

    ld h, l                                       ; $4e17: $65

jr_019_4e18:
    ld h, c                                       ; $4e18: $61
    ld [hl], h                                    ; $4e19: $74
    jr nz, jr_019_4e2a                            ; $4e1a: $20 $0e

    dec b                                         ; $4e1c: $05
    inc l                                         ; $4e1d: $2c
    jr nz, @+$64                                  ; $4e1e: $20 $62

    ld [hl], l                                    ; $4e20: $75
    ld [hl], h                                    ; $4e21: $74
    ld bc, $2749                                  ; $4e22: $01 $49 $27
    ld l, h                                       ; $4e25: $6c
    ld l, h                                       ; $4e26: $6c
    jr nz, jr_019_4e9c                            ; $4e27: $20 $73

    ld h, e                                       ; $4e29: $63

jr_019_4e2a:
    ld l, b                                       ; $4e2a: $68
    ld l, a                                       ; $4e2b: $6f
    ld l, a                                       ; $4e2c: $6f
    ld l, h                                       ; $4e2d: $6c
    jr nz, jr_019_4ea9                            ; $4e2e: $20 $79

    ld l, a                                       ; $4e30: $6f
    ld [hl], l                                    ; $4e31: $75
    ld hl, $0003                                  ; $4e32: $21 $03 $00
    ld c, c                                       ; $4e35: $49
    daa                                           ; $4e36: $27
    ld l, l                                       ; $4e37: $6d
    jr nz, jr_019_4e48                            ; $4e38: $20 $0e

    ld b, $2c                                     ; $4e3a: $06 $2c
    jr nz, jr_019_4eb2                            ; $4e3c: $20 $74

    ld l, b                                       ; $4e3e: $68
    ld h, l                                       ; $4e3f: $65
    jr nz, jr_019_4e86                            ; $4e40: $20 $44

    ld [hl], l                                    ; $4e42: $75
    ld l, [hl]                                    ; $4e43: $6e

jr_019_4e44:
    ld h, l                                       ; $4e44: $65
    ld bc, $6843                                  ; $4e45: $01 $43 $68

jr_019_4e48:
    ld h, c                                       ; $4e48: $61

jr_019_4e49:
    ld l, l                                       ; $4e49: $6d
    ld [hl], b                                    ; $4e4a: $70
    ld l, $20                                     ; $4e4b: $2e $20
    ld c, b                                       ; $4e4d: $48
    ld h, l                                       ; $4e4e: $65
    ld h, c                                       ; $4e4f: $61
    ld [hl], d                                    ; $4e50: $72
    ld h, h                                       ; $4e51: $64

jr_019_4e52:
    jr nz, jr_019_4ec3                            ; $4e52: $20 $6f

    ld h, [hl]                                    ; $4e54: $66
    jr nz, jr_019_4ec4                            ; $4e55: $20 $6d

    ld h, l                                       ; $4e57: $65

jr_019_4e58:
    ccf                                           ; $4e58: $3f
    ld [bc], a                                    ; $4e59: $02
    ld d, e                                       ; $4e5a: $53
    ld l, a                                       ; $4e5b: $6f
    inc l                                         ; $4e5c: $2c
    jr nz, jr_019_4ec3                            ; $4e5d: $20 $64

    ld l, c                                       ; $4e5f: $69
    ld h, h                                       ; $4e60: $64
    jr nz, jr_019_4ecf                            ; $4e61: $20 $6c

jr_019_4e63:
    ld l, a                                       ; $4e63: $6f
    ld [hl], e                                    ; $4e64: $73
    ld l, c                                       ; $4e65: $69
    ld l, [hl]                                    ; $4e66: $6e
    ld h, a                                       ; $4e67: $67

jr_019_4e68:
    jr nz, jr_019_4ede                            ; $4e68: $20 $74

    ld l, a                                       ; $4e6a: $6f
    ld bc, $656d                                  ; $4e6b: $01 $6d $65
    jr nz, jr_019_4ed2                            ; $4e6e: $20 $62

    ld [hl], l                                    ; $4e70: $75
    ld h, a                                       ; $4e71: $67
    jr nz, jr_019_4eed                            ; $4e72: $20 $79

    ld l, a                                       ; $4e74: $6f
    ld [hl], l                                    ; $4e75: $75
    ccf                                           ; $4e76: $3f
    nop                                           ; $4e77: $00

jr_019_4e78:
    ld e, c                                       ; $4e78: $59

jr_019_4e79:
    ld l, a                                       ; $4e79: $6f
    ld [hl], l                                    ; $4e7a: $75
    jr nz, jr_019_4ee1                            ; $4e7b: $20 $64

    ld l, a                                       ; $4e7d: $6f
    ld l, [hl]                                    ; $4e7e: $6e
    daa                                           ; $4e7f: $27
    ld [hl], h                                    ; $4e80: $74
    jr nz, jr_019_4ee6                            ; $4e81: $20 $63

    ld h, c                                       ; $4e83: $61
    ld [hl], d                                    ; $4e84: $72
    ld h, l                                       ; $4e85: $65

jr_019_4e86:
    ccf                                           ; $4e86: $3f
    ld hl, HeaderManufacturerCode                 ; $4e87: $21 $3f $01
    ld e, c                                       ; $4e8a: $59
    ld l, a                                       ; $4e8b: $6f
    ld [hl], l                                    ; $4e8c: $75
    daa                                           ; $4e8d: $27
    ld [hl], d                                    ; $4e8e: $72
    ld h, l                                       ; $4e8f: $65
    jr nz, @+$70                                  ; $4e90: $20 $6e

    ld l, a                                       ; $4e92: $6f
    jr nz, jr_019_4ed8                            ; $4e93: $20 $43

    ld l, b                                       ; $4e95: $68
    ld h, c                                       ; $4e96: $61
    ld l, l                                       ; $4e97: $6d
    ld [hl], b                                    ; $4e98: $70
    ld hl, $0003                                  ; $4e99: $21 $03 $00

jr_019_4e9c:
    ld c, b                                       ; $4e9c: $48
    ld [hl], l                                    ; $4e9d: $75
    ld l, b                                       ; $4e9e: $68
    dec l                                         ; $4e9f: $2d
    ld l, b                                       ; $4ea0: $68
    ld [hl], l                                    ; $4ea1: $75
    ld l, b                                       ; $4ea2: $68
    ld hl, $4920                                  ; $4ea3: $21 $20 $49
    jr nz, jr_019_4f13                            ; $4ea6: $20 $6b

    ld l, [hl]                                    ; $4ea8: $6e

jr_019_4ea9:
    ld l, a                                       ; $4ea9: $6f
    ld [hl], a                                    ; $4eaa: $77
    ld bc, $6874                                  ; $4eab: $01 $74 $68
    ld h, c                                       ; $4eae: $61
    ld [hl], h                                    ; $4eaf: $74
    jr nz, jr_019_4f18                            ; $4eb0: $20 $66

jr_019_4eb2:
    ld h, l                                       ; $4eb2: $65
    ld h, l                                       ; $4eb3: $65
    ld l, h                                       ; $4eb4: $6c
    ld l, c                                       ; $4eb5: $69
    ld l, [hl]                                    ; $4eb6: $6e
    ld h, a                                       ; $4eb7: $67
    ld l, $02                                     ; $4eb8: $2e $02
    ld d, a                                       ; $4eba: $57
    ld l, b                                       ; $4ebb: $68
    ld h, c                                       ; $4ebc: $61
    ld [hl], h                                    ; $4ebd: $74
    jr nz, jr_019_4f21                            ; $4ebe: $20 $61

    ld h, d                                       ; $4ec0: $62
    ld l, a                                       ; $4ec1: $6f
    ld [hl], l                                    ; $4ec2: $75

jr_019_4ec3:
    ld [hl], h                                    ; $4ec3: $74

jr_019_4ec4:
    jr nz, @+$6b                                  ; $4ec4: $20 $69

    ld [hl], h                                    ; $4ec6: $74
    ccf                                           ; $4ec7: $3f
    ld bc, $654c                                  ; $4ec8: $01 $4c $65
    ld [hl], h                                    ; $4ecb: $74
    jr nz, jr_019_4f3b                            ; $4ecc: $20 $6d

    ld h, l                                       ; $4ece: $65

jr_019_4ecf:
    jr nz, @+$66                                  ; $4ecf: $20 $64

    ld l, a                                       ; $4ed1: $6f

jr_019_4ed2:
    jr nz, @+$6b                                  ; $4ed2: $20 $69

    ld [hl], h                                    ; $4ed4: $74
    ld bc, $6f74                                  ; $4ed5: $01 $74 $6f

jr_019_4ed8:
    jr nz, jr_019_4f53                            ; $4ed8: $20 $79

    ld l, a                                       ; $4eda: $6f
    ld [hl], l                                    ; $4edb: $75
    jr nz, jr_019_4f3f                            ; $4edc: $20 $61

jr_019_4ede:
    ld h, a                                       ; $4ede: $67
    ld h, c                                       ; $4edf: $61
    ld l, c                                       ; $4ee0: $69

jr_019_4ee1:
    ld l, [hl]                                    ; $4ee1: $6e
    ccf                                           ; $4ee2: $3f
    nop                                           ; $4ee3: $00
    ld d, a                                       ; $4ee4: $57
    ld h, l                                       ; $4ee5: $65

jr_019_4ee6:
    ld l, h                                       ; $4ee6: $6c
    ld l, h                                       ; $4ee7: $6c
    jr nz, jr_019_4f53                            ; $4ee8: $20 $69

    ld h, [hl]                                    ; $4eea: $66
    jr nz, jr_019_4f66                            ; $4eeb: $20 $79

jr_019_4eed:
    ld l, a                                       ; $4eed: $6f
    ld [hl], l                                    ; $4eee: $75
    daa                                           ; $4eef: $27
    halt                                          ; $4ef0: $76
    ld h, l                                       ; $4ef1: $65
    jr nz, @+$69                                  ; $4ef2: $20 $67

    ld l, a                                       ; $4ef4: $6f
    ld [hl], h                                    ; $4ef5: $74
    ld bc, $6f6e                                  ; $4ef6: $01 $6e $6f
    jr nz, @+$69                                  ; $4ef9: $20 $67

    ld [hl], l                                    ; $4efb: $75
    ld [hl], h                                    ; $4efc: $74
    ld [hl], e                                    ; $4efd: $73
    inc l                                         ; $4efe: $2c
    jr nz, jr_019_4f63                            ; $4eff: $20 $62

    ld h, l                                       ; $4f01: $65
    ld h, c                                       ; $4f02: $61
    ld [hl], h                                    ; $4f03: $74
    ld l, c                                       ; $4f04: $69
    ld l, [hl]                                    ; $4f05: $6e
    ld h, a                                       ; $4f06: $67
    ld bc, $050e                                  ; $4f07: $01 $0e $05
    jr nz, jr_019_4f79                            ; $4f0a: $20 $6d

    ld h, l                                       ; $4f0c: $65
    ld h, c                                       ; $4f0d: $61
    ld l, [hl]                                    ; $4f0e: $6e
    ld [hl], e                                    ; $4f0f: $73
    jr nz, jr_019_4f80                            ; $4f10: $20 $6e

    ld l, a                                       ; $4f12: $6f

jr_019_4f13:
    ld [hl], h                                    ; $4f13: $74
    ld l, b                                       ; $4f14: $68
    ld l, c                                       ; $4f15: $69
    ld l, [hl]                                    ; $4f16: $6e
    ld h, a                                       ; $4f17: $67

jr_019_4f18:
    ld hl, $0003                                  ; $4f18: $21 $03 $00
    rlca                                          ; $4f1b: $07
    inc l                                         ; $4f1c: $2c
    jr nz, jr_019_4f98                            ; $4f1d: $20 $79

    ld l, a                                       ; $4f1f: $6f
    ld [hl], l                                    ; $4f20: $75

jr_019_4f21:
    ld bc, $6562                                  ; $4f21: $01 $62 $65
    ld h, c                                       ; $4f24: $61
    ld [hl], h                                    ; $4f25: $74
    jr nz, jr_019_4f36                            ; $4f26: $20 $0e

    dec b                                         ; $4f28: $05
    inc l                                         ; $4f29: $2c
    jr nz, @+$64                                  ; $4f2a: $20 $62

    ld [hl], l                                    ; $4f2c: $75
    ld [hl], h                                    ; $4f2d: $74
    jr nz, jr_019_4f79                            ; $4f2e: $20 $49

    daa                                           ; $4f30: $27
    ld l, h                                       ; $4f31: $6c
    ld l, h                                       ; $4f32: $6c
    ld bc, $6873                                  ; $4f33: $01 $73 $68

jr_019_4f36:
    ld l, a                                       ; $4f36: $6f
    ld [hl], a                                    ; $4f37: $77
    jr nz, jr_019_4fb3                            ; $4f38: $20 $79

    ld l, a                                       ; $4f3a: $6f

jr_019_4f3b:
    ld [hl], l                                    ; $4f3b: $75
    ld hl, $0003                                  ; $4f3c: $21 $03 $00

jr_019_4f3f:
    ld e, c                                       ; $4f3f: $59
    ld l, a                                       ; $4f40: $6f
    ld [hl], l                                    ; $4f41: $75
    daa                                           ; $4f42: $27
    ld [hl], d                                    ; $4f43: $72
    ld h, l                                       ; $4f44: $65
    jr nz, jr_019_4f4e                            ; $4f45: $20 $07

    inc l                                         ; $4f47: $2c
    ld bc, $6874                                  ; $4f48: $01 $74 $68
    ld h, l                                       ; $4f4b: $65
    jr nz, jr_019_4fbc                            ; $4f4c: $20 $6e

jr_019_4f4e:
    ld h, l                                       ; $4f4e: $65
    ld [hl], a                                    ; $4f4f: $77
    jr nz, jr_019_4f96                            ; $4f50: $20 $44

    ld [hl], l                                    ; $4f52: $75

jr_019_4f53:
    ld l, [hl]                                    ; $4f53: $6e
    ld h, l                                       ; $4f54: $65
    jr nz, jr_019_4f9a                            ; $4f55: $20 $43

    ld l, h                                       ; $4f57: $6c
    ld [hl], l                                    ; $4f58: $75
    ld h, d                                       ; $4f59: $62
    ld bc, $6843                                  ; $4f5a: $01 $43 $68
    ld h, c                                       ; $4f5d: $61
    ld l, l                                       ; $4f5e: $6d
    ld [hl], b                                    ; $4f5f: $70
    inc l                                         ; $4f60: $2c
    jr nz, jr_019_4fd5                            ; $4f61: $20 $72

jr_019_4f63:
    ld l, c                                       ; $4f63: $69
    ld h, a                                       ; $4f64: $67
    ld l, b                                       ; $4f65: $68

jr_019_4f66:
    ld [hl], h                                    ; $4f66: $74
    ccf                                           ; $4f67: $3f
    ld [bc], a                                    ; $4f68: $02
    ld b, h                                       ; $4f69: $44
    daa                                           ; $4f6a: $27
    ld a, c                                       ; $4f6b: $79
    ld h, c                                       ; $4f6c: $61
    jr nz, jr_019_4fda                            ; $4f6d: $20 $6b

    ld l, [hl]                                    ; $4f6f: $6e
    ld l, a                                       ; $4f70: $6f
    ld [hl], a                                    ; $4f71: $77
    jr nz, jr_019_4fbd                            ; $4f72: $20 $49

    daa                                           ; $4f74: $27
    ld l, l                                       ; $4f75: $6d
    jr nz, @+$76                                  ; $4f76: $20 $74

    ld l, b                                       ; $4f78: $68

jr_019_4f79:
    ld h, l                                       ; $4f79: $65
    ld bc, $7567                                  ; $4f7a: $01 $67 $75
    ld a, c                                       ; $4f7d: $79
    jr nz, jr_019_4ff9                            ; $4f7e: $20 $79

jr_019_4f80:
    ld l, a                                       ; $4f80: $6f
    ld [hl], l                                    ; $4f81: $75
    jr nz, jr_019_4ff7                            ; $4f82: $20 $73

    ld [hl], h                                    ; $4f84: $74
    ld l, a                                       ; $4f85: $6f
    ld l, h                                       ; $4f86: $6c
    ld h, l                                       ; $4f87: $65
    jr nz, jr_019_4ffe                            ; $4f88: $20 $74

    ld l, b                                       ; $4f8a: $68
    ld h, l                                       ; $4f8b: $65
    ld bc, $6974                                  ; $4f8c: $01 $74 $69
    ld [hl], h                                    ; $4f8f: $74
    ld l, h                                       ; $4f90: $6c
    ld h, l                                       ; $4f91: $65
    jr nz, jr_019_4ffa                            ; $4f92: $20 $66

    ld [hl], d                                    ; $4f94: $72
    ld l, a                                       ; $4f95: $6f

jr_019_4f96:
    ld l, l                                       ; $4f96: $6d
    ccf                                           ; $4f97: $3f

jr_019_4f98:
    nop                                           ; $4f98: $00
    ld d, d                                       ; $4f99: $52

jr_019_4f9a:
    ld h, l                                       ; $4f9a: $65
    ld l, l                                       ; $4f9b: $6d
    ld h, l                                       ; $4f9c: $65
    ld l, l                                       ; $4f9d: $6d
    ld h, d                                       ; $4f9e: $62
    ld h, l                                       ; $4f9f: $65
    ld [hl], d                                    ; $4fa0: $72
    jr nz, jr_019_5017                            ; $4fa1: $20 $74

    ld l, b                                       ; $4fa3: $68
    ld l, c                                       ; $4fa4: $69
    ld [hl], e                                    ; $4fa5: $73
    jr nz, jr_019_4fd5                            ; $4fa6: $20 $2d

    ld bc, $2749                                  ; $4fa8: $01 $49 $27
    ld l, l                                       ; $4fab: $6d
    jr nz, jr_019_4fbc                            ; $4fac: $20 $0e

    ld b, $2e                                     ; $4fae: $06 $2e
    ld l, $2e                                     ; $4fb0: $2e $2e
    ld [bc], a                                    ; $4fb2: $02

jr_019_4fb3:
    ld h, c                                       ; $4fb3: $61
    ld l, [hl]                                    ; $4fb4: $6e
    ld h, h                                       ; $4fb5: $64
    jr nz, @+$4b                                  ; $4fb6: $20 $49

    daa                                           ; $4fb8: $27
    ld l, l                                       ; $4fb9: $6d
    jr nz, @+$69                                  ; $4fba: $20 $67

jr_019_4fbc:
    ld l, a                                       ; $4fbc: $6f

jr_019_4fbd:
    ld l, [hl]                                    ; $4fbd: $6e
    ld l, [hl]                                    ; $4fbe: $6e
    ld h, c                                       ; $4fbf: $61
    jr nz, @+$69                                  ; $4fc0: $20 $67

    ld h, l                                       ; $4fc2: $65
    ld [hl], h                                    ; $4fc3: $74
    ld bc, $6874                                  ; $4fc4: $01 $74 $68
    ld h, c                                       ; $4fc7: $61
    ld [hl], h                                    ; $4fc8: $74
    jr nz, jr_019_500f                            ; $4fc9: $20 $44

    ld [hl], l                                    ; $4fcb: $75
    ld l, [hl]                                    ; $4fcc: $6e
    ld h, l                                       ; $4fcd: $65
    ld bc, $6843                                  ; $4fce: $01 $43 $68
    ld h, c                                       ; $4fd1: $61
    ld l, l                                       ; $4fd2: $6d
    ld [hl], b                                    ; $4fd3: $70
    ld l, c                                       ; $4fd4: $69

jr_019_4fd5:
    ld l, a                                       ; $4fd5: $6f
    ld l, [hl]                                    ; $4fd6: $6e
    ld [hl], e                                    ; $4fd7: $73
    ld l, b                                       ; $4fd8: $68
    ld l, c                                       ; $4fd9: $69

jr_019_4fda:
    ld [hl], b                                    ; $4fda: $70
    jr nz, jr_019_503f                            ; $4fdb: $20 $62

    ld h, c                                       ; $4fdd: $61
    ld h, e                                       ; $4fde: $63
    ld l, e                                       ; $4fdf: $6b
    ld hl, $0003                                  ; $4fe0: $21 $03 $00
    ld e, c                                       ; $4fe3: $59
    ld l, a                                       ; $4fe4: $6f
    ld [hl], l                                    ; $4fe5: $75
    jr nz, jr_019_505c                            ; $4fe6: $20 $74

    ld l, a                                       ; $4fe8: $6f
    ld l, a                                       ; $4fe9: $6f
    ld l, e                                       ; $4fea: $6b
    jr nz, jr_019_5061                            ; $4feb: $20 $74

    ld l, b                                       ; $4fed: $68
    ld h, l                                       ; $4fee: $65
    ld bc, $6f54                                  ; $4fef: $01 $54 $6f
    ld [hl], l                                    ; $4ff2: $75
    ld [hl], d                                    ; $4ff3: $72
    ld l, [hl]                                    ; $4ff4: $6e
    ld h, c                                       ; $4ff5: $61
    ld l, l                                       ; $4ff6: $6d

jr_019_4ff7:
    ld h, l                                       ; $4ff7: $65
    ld l, [hl]                                    ; $4ff8: $6e

jr_019_4ff9:
    ld [hl], h                                    ; $4ff9: $74

jr_019_4ffa:
    inc l                                         ; $4ffa: $2c
    jr nz, jr_019_505f                            ; $4ffb: $20 $62

    ld [hl], l                                    ; $4ffd: $75

jr_019_4ffe:
    ld [hl], h                                    ; $4ffe: $74
    ld bc, $6f6e                                  ; $4fff: $01 $6e $6f
    ld [hl], a                                    ; $5002: $77
    jr nz, jr_019_507e                            ; $5003: $20 $79

    ld l, a                                       ; $5005: $6f
    ld [hl], l                                    ; $5006: $75
    jr nz, jr_019_507d                            ; $5007: $20 $74

    ld l, b                                       ; $5009: $68
    ld l, c                                       ; $500a: $69
    ld l, [hl]                                    ; $500b: $6e
    ld l, e                                       ; $500c: $6b
    ld [bc], a                                    ; $500d: $02
    ld a, c                                       ; $500e: $79

jr_019_500f:
    ld l, a                                       ; $500f: $6f
    ld [hl], l                                    ; $5010: $75
    jr nz, jr_019_5076                            ; $5011: $20 $63

    ld h, c                                       ; $5013: $61
    ld l, [hl]                                    ; $5014: $6e
    jr nz, jr_019_508b                            ; $5015: $20 $74

jr_019_5017:
    ld h, c                                       ; $5017: $61
    ld l, e                                       ; $5018: $6b
    ld h, l                                       ; $5019: $65
    jr nz, jr_019_5089                            ; $501a: $20 $6d

    ld h, l                                       ; $501c: $65
    ld bc, $6e69                                  ; $501d: $01 $69 $6e
    jr nz, jr_019_5083                            ; $5020: $20 $61

    jr nz, @+$4f                                  ; $5022: $20 $4d

    ld h, c                                       ; $5024: $61
    ld [hl], h                                    ; $5025: $74
    ld h, e                                       ; $5026: $63
    ld l, b                                       ; $5027: $68
    jr nz, @+$49                                  ; $5028: $20 $47

    ld h, c                                       ; $502a: $61
    ld l, l                                       ; $502b: $6d
    ld h, l                                       ; $502c: $65
    ccf                                           ; $502d: $3f
    nop                                           ; $502e: $00
    ld d, h                                       ; $502f: $54
    ld l, b                                       ; $5030: $68
    ld h, l                                       ; $5031: $65
    ld l, [hl]                                    ; $5032: $6e
    jr nz, jr_019_507e                            ; $5033: $20 $49

    jr nz, jr_019_509a                            ; $5035: $20 $63

    ld l, b                                       ; $5037: $68
    ld h, c                                       ; $5038: $61
    ld l, h                                       ; $5039: $6c
    ld l, h                                       ; $503a: $6c
    ld h, l                                       ; $503b: $65
    ld l, [hl]                                    ; $503c: $6e
    ld h, a                                       ; $503d: $67
    ld h, l                                       ; $503e: $65

jr_019_503f:
    jr nz, jr_019_50ba                            ; $503f: $20 $79

    ld l, a                                       ; $5041: $6f
    ld [hl], l                                    ; $5042: $75
    ld hl, $4901                                  ; $5043: $21 $01 $49
    daa                                           ; $5046: $27
    ld l, h                                       ; $5047: $6c
    ld l, h                                       ; $5048: $6c
    jr nz, jr_019_50bf                            ; $5049: $20 $74

    ld h, c                                       ; $504b: $61
    ld l, e                                       ; $504c: $6b
    ld h, l                                       ; $504d: $65
    jr nz, jr_019_50c9                            ; $504e: $20 $79

    ld l, a                                       ; $5050: $6f
    ld [hl], l                                    ; $5051: $75
    jr nz, @+$6b                                  ; $5052: $20 $69

    ld l, [hl]                                    ; $5054: $6e
    jr nz, jr_019_50b8                            ; $5055: $20 $61

    ld bc, $614d                                  ; $5057: $01 $4d $61
    ld [hl], h                                    ; $505a: $74
    ld h, e                                       ; $505b: $63

jr_019_505c:
    ld l, b                                       ; $505c: $68
    jr nz, jr_019_50a6                            ; $505d: $20 $47

jr_019_505f:
    ld h, c                                       ; $505f: $61
    ld l, l                                       ; $5060: $6d

jr_019_5061:
    ld h, l                                       ; $5061: $65
    jr nz, jr_019_50c5                            ; $5062: $20 $61

    ld l, [hl]                                    ; $5064: $6e
    ld a, c                                       ; $5065: $79
    jr nz, jr_019_50cc                            ; $5066: $20 $64

    ld h, c                                       ; $5068: $61
    ld a, c                                       ; $5069: $79
    ld hl, $0003                                  ; $506a: $21 $03 $00
    ld b, c                                       ; $506d: $41
    ld l, h                                       ; $506e: $6c
    ld l, h                                       ; $506f: $6c
    jr nz, jr_019_50e4                            ; $5070: $20 $72

    ld l, c                                       ; $5072: $69
    ld h, a                                       ; $5073: $67
    ld l, b                                       ; $5074: $68
    ld [hl], h                                    ; $5075: $74

jr_019_5076:
    ld hl, $5420                                  ; $5076: $21 $20 $54
    ld l, b                                       ; $5079: $68
    ld h, c                                       ; $507a: $61
    ld l, [hl]                                    ; $507b: $6e
    ld l, e                                       ; $507c: $6b

jr_019_507d:
    ld [hl], e                                    ; $507d: $73

jr_019_507e:
    ld bc, $2e07                                  ; $507e: $01 $07 $2e
    ld l, $2e                                     ; $5081: $2e $2e

jr_019_5083:
    ld [bc], a                                    ; $5083: $02
    ld b, h                                       ; $5084: $44
    ld l, a                                       ; $5085: $6f
    ld l, [hl]                                    ; $5086: $6e
    daa                                           ; $5087: $27
    ld [hl], h                                    ; $5088: $74

jr_019_5089:
    jr nz, jr_019_50ff                            ; $5089: $20 $74

jr_019_508b:
    ld l, b                                       ; $508b: $68
    ld l, c                                       ; $508c: $69
    ld l, [hl]                                    ; $508d: $6e
    ld l, e                                       ; $508e: $6b
    jr nz, jr_019_50fa                            ; $508f: $20 $69

    ld [hl], h                                    ; $5091: $74
    daa                                           ; $5092: $27
    ld [hl], e                                    ; $5093: $73
    ld bc, $6874                                  ; $5094: $01 $74 $68
    ld h, l                                       ; $5097: $65
    jr nz, jr_019_510e                            ; $5098: $20 $74

jr_019_509a:
    ld l, a                                       ; $509a: $6f
    ld [hl], l                                    ; $509b: $75
    ld [hl], d                                    ; $509c: $72
    ld l, [hl]                                    ; $509d: $6e
    ld h, c                                       ; $509e: $61
    ld l, l                                       ; $509f: $6d
    ld h, l                                       ; $50a0: $65
    ld l, [hl]                                    ; $50a1: $6e
    ld [hl], h                                    ; $50a2: $74
    jr nz, jr_019_5106                            ; $50a3: $20 $61

    ld l, h                                       ; $50a5: $6c

jr_019_50a6:
    ld l, h                                       ; $50a6: $6c
    ld bc, $766f                                  ; $50a7: $01 $6f $76
    ld h, l                                       ; $50aa: $65
    ld [hl], d                                    ; $50ab: $72
    jr nz, @+$63                                  ; $50ac: $20 $61

    ld h, a                                       ; $50ae: $67
    ld h, c                                       ; $50af: $61
    ld l, c                                       ; $50b0: $69
    ld l, [hl]                                    ; $50b1: $6e
    ld hl, $0003                                  ; $50b2: $21 $03 $00
    ld c, c                                       ; $50b5: $49
    daa                                           ; $50b6: $27
    ld l, l                                       ; $50b7: $6d

jr_019_50b8:
    jr nz, jr_019_50c8                            ; $50b8: $20 $0e

jr_019_50ba:
    ld b, $2c                                     ; $50ba: $06 $2c
    jr nz, @+$76                                  ; $50bc: $20 $74

    ld l, b                                       ; $50be: $68

jr_019_50bf:
    ld h, l                                       ; $50bf: $65
    ld bc, $7544                                  ; $50c0: $01 $44 $75
    ld l, [hl]                                    ; $50c3: $6e
    ld h, l                                       ; $50c4: $65

jr_019_50c5:
    jr nz, jr_019_510a                            ; $50c5: $20 $43

    ld l, h                                       ; $50c7: $6c

jr_019_50c8:
    ld [hl], l                                    ; $50c8: $75

jr_019_50c9:
    ld h, d                                       ; $50c9: $62
    jr nz, @+$45                                  ; $50ca: $20 $43

jr_019_50cc:
    ld l, b                                       ; $50cc: $68
    ld h, c                                       ; $50cd: $61
    ld l, l                                       ; $50ce: $6d
    ld [hl], b                                    ; $50cf: $70
    ld l, $01                                     ; $50d0: $2e $01
    ld c, c                                       ; $50d2: $49
    jr nz, jr_019_5141                            ; $50d3: $20 $6c

    ld l, a                                       ; $50d5: $6f
    ld [hl], e                                    ; $50d6: $73
    ld [hl], h                                    ; $50d7: $74
    jr nz, @+$76                                  ; $50d8: $20 $74

    ld l, b                                       ; $50da: $68
    ld h, l                                       ; $50db: $65
    jr nz, jr_019_514b                            ; $50dc: $20 $6d

    ld h, c                                       ; $50de: $61
    ld [hl], h                                    ; $50df: $74
    ld h, e                                       ; $50e0: $63
    ld l, b                                       ; $50e1: $68
    inc l                                         ; $50e2: $2c
    ld [bc], a                                    ; $50e3: $02

jr_019_50e4:
    ld h, d                                       ; $50e4: $62
    ld [hl], l                                    ; $50e5: $75
    ld [hl], h                                    ; $50e6: $74
    jr nz, jr_019_5157                            ; $50e7: $20 $6e

    ld l, a                                       ; $50e9: $6f
    ld [hl], h                                    ; $50ea: $74
    jr nz, jr_019_5161                            ; $50eb: $20 $74

    ld l, b                                       ; $50ed: $68
    ld h, l                                       ; $50ee: $65
    ld bc, $6843                                  ; $50ef: $01 $43 $68
    ld h, c                                       ; $50f2: $61
    ld l, l                                       ; $50f3: $6d
    ld [hl], b                                    ; $50f4: $70
    ld l, c                                       ; $50f5: $69
    ld l, a                                       ; $50f6: $6f
    ld l, [hl]                                    ; $50f7: $6e
    ld [hl], e                                    ; $50f8: $73
    ld l, b                                       ; $50f9: $68

jr_019_50fa:
    ld l, c                                       ; $50fa: $69
    ld [hl], b                                    ; $50fb: $70
    ld hl, $5901                                  ; $50fc: $21 $01 $59

jr_019_50ff:
    ld l, a                                       ; $50ff: $6f
    ld [hl], l                                    ; $5100: $75
    jr nz, @+$64                                  ; $5101: $20 $62

    ld h, l                                       ; $5103: $65
    ld h, c                                       ; $5104: $61
    ld [hl], h                                    ; $5105: $74

jr_019_5106:
    jr nz, @+$6f                                  ; $5106: $20 $6d

    ld h, l                                       ; $5108: $65
    inc l                                         ; $5109: $2c

jr_019_510a:
    jr nz, jr_019_517f                            ; $510a: $20 $73

    ld l, a                                       ; $510c: $6f
    ld [bc], a                                    ; $510d: $02

jr_019_510e:
    ld c, $07                                     ; $510e: $0e $07
    ld bc, $7369                                  ; $5110: $01 $69 $73
    jr nz, @+$70                                  ; $5113: $20 $6e

    ld h, l                                       ; $5115: $65
    ld a, b                                       ; $5116: $78
    ld [hl], h                                    ; $5117: $74
    jr nz, jr_019_5180                            ; $5118: $20 $66

    ld l, a                                       ; $511a: $6f
    ld [hl], d                                    ; $511b: $72
    jr nz, @+$7b                                  ; $511c: $20 $79

    ld l, a                                       ; $511e: $6f
    ld [hl], l                                    ; $511f: $75
    ld hl, $4701                                  ; $5120: $21 $01 $47
    ld l, a                                       ; $5123: $6f
    ld l, a                                       ; $5124: $6f
    ld h, h                                       ; $5125: $64
    jr nz, jr_019_5194                            ; $5126: $20 $6c

    ld [hl], l                                    ; $5128: $75
    ld h, e                                       ; $5129: $63
    ld l, e                                       ; $512a: $6b
    ld hl, $4820                                  ; $512b: $21 $20 $48
    ld h, c                                       ; $512e: $61
    ld l, b                                       ; $512f: $68
    ld hl, $0003                                  ; $5130: $21 $03 $00
    ld c, c                                       ; $5133: $49
    daa                                           ; $5134: $27
    ld l, l                                       ; $5135: $6d
    jr nz, jr_019_51ac                            ; $5136: $20 $74

    ld l, b                                       ; $5138: $68
    ld h, l                                       ; $5139: $65
    jr nz, @+$68                                  ; $513a: $20 $66

    ld l, a                                       ; $513c: $6f
    ld [hl], d                                    ; $513d: $72
    ld l, l                                       ; $513e: $6d
    ld h, l                                       ; $513f: $65
    ld [hl], d                                    ; $5140: $72

jr_019_5141:
    jr nz, jr_019_5187                            ; $5141: $20 $44

    ld [hl], l                                    ; $5143: $75
    ld l, [hl]                                    ; $5144: $6e
    ld h, l                                       ; $5145: $65
    ld bc, $6843                                  ; $5146: $01 $43 $68
    ld h, c                                       ; $5149: $61
    ld l, l                                       ; $514a: $6d

jr_019_514b:
    ld [hl], b                                    ; $514b: $70
    inc l                                         ; $514c: $2c
    jr nz, jr_019_515d                            ; $514d: $20 $0e

    ld b, $2e                                     ; $514f: $06 $2e
    ld [bc], a                                    ; $5151: $02
    ld c, c                                       ; $5152: $49
    jr nz, jr_019_51c1                            ; $5153: $20 $6c

    ld l, a                                       ; $5155: $6f
    ld [hl], e                                    ; $5156: $73

jr_019_5157:
    ld [hl], h                                    ; $5157: $74
    jr nz, jr_019_51c3                            ; $5158: $20 $69

    ld [hl], h                                    ; $515a: $74
    jr nz, jr_019_51be                            ; $515b: $20 $61

jr_019_515d:
    ld l, h                                       ; $515d: $6c
    ld l, h                                       ; $515e: $6c
    ld l, $01                                     ; $515f: $2e $01

jr_019_5161:
    ld c, c                                       ; $5161: $49
    daa                                           ; $5162: $27
    ld l, l                                       ; $5163: $6d
    jr nz, @+$70                                  ; $5164: $20 $6e

    ld l, a                                       ; $5166: $6f
    ld [hl], h                                    ; $5167: $74
    ld l, b                                       ; $5168: $68
    ld l, c                                       ; $5169: $69
    ld l, [hl]                                    ; $516a: $6e
    ld h, a                                       ; $516b: $67
    jr nz, jr_019_51dc                            ; $516c: $20 $6e

    ld h, l                                       ; $516e: $65
    ld a, b                                       ; $516f: $78
    ld [hl], h                                    ; $5170: $74
    ld bc, $6f74                                  ; $5171: $01 $74 $6f
    jr nz, jr_019_51ef                            ; $5174: $20 $79

    ld l, a                                       ; $5176: $6f
    ld [hl], l                                    ; $5177: $75
    ld l, $02                                     ; $5178: $2e $02
    ld c, [hl]                                    ; $517a: $4e
    ld l, a                                       ; $517b: $6f
    ld [hl], a                                    ; $517c: $77
    jr nz, jr_019_51f3                            ; $517d: $20 $74

jr_019_517f:
    ld l, b                                       ; $517f: $68

jr_019_5180:
    ld h, c                                       ; $5180: $61
    ld [hl], h                                    ; $5181: $74
    jr nz, jr_019_51fd                            ; $5182: $20 $79

    ld l, a                                       ; $5184: $6f
    ld [hl], l                                    ; $5185: $75
    daa                                           ; $5186: $27

jr_019_5187:
    halt                                          ; $5187: $76
    ld h, l                                       ; $5188: $65
    ld bc, $6562                                  ; $5189: $01 $62 $65
    ld h, c                                       ; $518c: $61
    ld [hl], h                                    ; $518d: $74
    ld h, l                                       ; $518e: $65
    ld l, [hl]                                    ; $518f: $6e
    jr nz, @+$6f                                  ; $5190: $20 $6d

    ld h, l                                       ; $5192: $65
    inc l                                         ; $5193: $2c

jr_019_5194:
    jr nz, jr_019_51df                            ; $5194: $20 $49

    jr nz, jr_019_51fb                            ; $5196: $20 $63

    ld h, c                                       ; $5198: $61
    ld l, [hl]                                    ; $5199: $6e
    daa                                           ; $519a: $27
    ld [hl], h                                    ; $519b: $74
    ld bc, $6177                                  ; $519c: $01 $77 $61
    ld l, c                                       ; $519f: $69
    ld [hl], h                                    ; $51a0: $74
    jr nz, jr_019_5217                            ; $51a1: $20 $74

    ld l, a                                       ; $51a3: $6f
    jr nz, jr_019_5219                            ; $51a4: $20 $73

    ld h, l                                       ; $51a6: $65
    ld h, l                                       ; $51a7: $65
    jr nz, jr_019_5223                            ; $51a8: $20 $79

    ld l, a                                       ; $51aa: $6f
    ld [hl], l                                    ; $51ab: $75

jr_019_51ac:
    ld [bc], a                                    ; $51ac: $02
    ld [hl], b                                    ; $51ad: $70
    ld l, h                                       ; $51ae: $6c
    ld h, c                                       ; $51af: $61
    ld a, c                                       ; $51b0: $79
    jr nz, jr_019_51c1                            ; $51b1: $20 $0e

    rlca                                          ; $51b3: $07
    ld hl, $0003                                  ; $51b4: $21 $03 $00
    ld c, c                                       ; $51b7: $49
    daa                                           ; $51b8: $27
    ld l, l                                       ; $51b9: $6d
    jr nz, @+$10                                  ; $51ba: $20 $0e

    ld b, $2c                                     ; $51bc: $06 $2c

jr_019_51be:
    jr nz, jr_019_5204                            ; $51be: $20 $44

    ld [hl], l                                    ; $51c0: $75

jr_019_51c1:
    ld l, [hl]                                    ; $51c1: $6e
    ld h, l                                       ; $51c2: $65

jr_019_51c3:
    jr nz, @+$45                                  ; $51c3: $20 $43

    ld l, h                                       ; $51c5: $6c
    ld [hl], l                                    ; $51c6: $75
    ld h, d                                       ; $51c7: $62
    ld bc, $6843                                  ; $51c8: $01 $43 $68
    ld h, c                                       ; $51cb: $61
    ld l, l                                       ; $51cc: $6d
    ld [hl], b                                    ; $51cd: $70
    ld l, $20                                     ; $51ce: $2e $20
    ld b, c                                       ; $51d0: $41
    ld l, h                                       ; $51d1: $6c
    ld l, h                                       ; $51d2: $6c
    jr nz, jr_019_5249                            ; $51d3: $20 $74

    ld l, b                                       ; $51d5: $68
    ld h, l                                       ; $51d6: $65
    jr nz, jr_019_521c                            ; $51d7: $20 $43

    ld l, h                                       ; $51d9: $6c
    ld [hl], l                                    ; $51da: $75
    ld h, d                                       ; $51db: $62

jr_019_51dc:
    ld bc, $6843                                  ; $51dc: $01 $43 $68

jr_019_51df:
    ld h, c                                       ; $51df: $61
    ld l, l                                       ; $51e0: $6d
    ld [hl], b                                    ; $51e1: $70
    ld [hl], e                                    ; $51e2: $73
    jr nz, jr_019_5246                            ; $51e3: $20 $61

    ld [hl], d                                    ; $51e5: $72
    ld h, l                                       ; $51e6: $65
    jr nz, jr_019_5251                            ; $51e7: $20 $68

    ld h, l                                       ; $51e9: $65
    ld [hl], d                                    ; $51ea: $72
    ld h, l                                       ; $51eb: $65
    ld hl, $0003                                  ; $51ec: $21 $03 $00

jr_019_51ef:
    ld e, c                                       ; $51ef: $59
    ld l, a                                       ; $51f0: $6f
    ld [hl], l                                    ; $51f1: $75
    daa                                           ; $51f2: $27

jr_019_51f3:
    ld [hl], d                                    ; $51f3: $72
    ld h, l                                       ; $51f4: $65
    jr nz, jr_019_526b                            ; $51f5: $20 $74

    ld l, b                                       ; $51f7: $68
    ld h, l                                       ; $51f8: $65
    jr nz, @+$70                                  ; $51f9: $20 $6e

jr_019_51fb:
    ld h, l                                       ; $51fb: $65
    ld [hl], a                                    ; $51fc: $77

jr_019_51fd:
    ld bc, $7544                                  ; $51fd: $01 $44 $75
    ld l, [hl]                                    ; $5200: $6e
    ld h, l                                       ; $5201: $65
    jr nz, jr_019_5247                            ; $5202: $20 $43

jr_019_5204:
    ld l, h                                       ; $5204: $6c
    ld [hl], l                                    ; $5205: $75
    ld h, d                                       ; $5206: $62
    jr nz, jr_019_524c                            ; $5207: $20 $43

    ld l, b                                       ; $5209: $68
    ld h, c                                       ; $520a: $61
    ld l, l                                       ; $520b: $6d
    ld [hl], b                                    ; $520c: $70
    inc l                                         ; $520d: $2c
    ld bc, $2c07                                  ; $520e: $01 $07 $2c
    jr nz, @+$6a                                  ; $5211: $20 $68

    ld [hl], l                                    ; $5213: $75
    ld l, b                                       ; $5214: $68
    ccf                                           ; $5215: $3f
    ld [bc], a                                    ; $5216: $02

jr_019_5217:
    ld d, a                                       ; $5217: $57
    ld h, l                                       ; $5218: $65

jr_019_5219:
    ld l, h                                       ; $5219: $6c
    ld l, h                                       ; $521a: $6c
    inc l                                         ; $521b: $2c

jr_019_521c:
    jr nz, jr_019_5267                            ; $521c: $20 $49

    jr nz, jr_019_5293                            ; $521e: $20 $73

    ld [hl], a                                    ; $5220: $77
    ld h, l                                       ; $5221: $65
    ld h, c                                       ; $5222: $61

jr_019_5223:
    ld [hl], d                                    ; $5223: $72
    jr nz, jr_019_526f                            ; $5224: $20 $49

    daa                                           ; $5226: $27
    ld l, h                                       ; $5227: $6c
    ld l, h                                       ; $5228: $6c
    ld bc, $6174                                  ; $5229: $01 $74 $61
    ld l, e                                       ; $522c: $6b
    ld h, l                                       ; $522d: $65
    jr nz, jr_019_52a4                            ; $522e: $20 $74

    ld l, b                                       ; $5230: $68
    ld h, l                                       ; $5231: $65
    jr nz, jr_019_5278                            ; $5232: $20 $44

    ld [hl], l                                    ; $5234: $75
    ld l, [hl]                                    ; $5235: $6e
    ld h, l                                       ; $5236: $65
    ld bc, $6843                                  ; $5237: $01 $43 $68
    ld h, c                                       ; $523a: $61
    ld l, l                                       ; $523b: $6d
    ld [hl], b                                    ; $523c: $70
    ld l, c                                       ; $523d: $69
    ld l, a                                       ; $523e: $6f
    ld l, [hl]                                    ; $523f: $6e
    ld [hl], e                                    ; $5240: $73
    ld l, b                                       ; $5241: $68
    ld l, c                                       ; $5242: $69
    ld [hl], b                                    ; $5243: $70
    jr nz, jr_019_52a8                            ; $5244: $20 $62

jr_019_5246:
    ld h, c                                       ; $5246: $61

jr_019_5247:
    ld h, e                                       ; $5247: $63
    ld l, e                                       ; $5248: $6b

jr_019_5249:
    ld hl, $0003                                  ; $5249: $21 $03 $00

jr_019_524c:
    ld b, c                                       ; $524c: $41
    ld [hl], d                                    ; $524d: $72
    ld h, l                                       ; $524e: $65
    ld l, [hl]                                    ; $524f: $6e
    daa                                           ; $5250: $27

jr_019_5251:
    ld [hl], h                                    ; $5251: $74
    jr nz, jr_019_52cd                            ; $5252: $20 $79

    ld l, a                                       ; $5254: $6f
    ld [hl], l                                    ; $5255: $75
    jr nz, jr_019_52cc                            ; $5256: $20 $74

    ld l, b                                       ; $5258: $68
    ld h, l                                       ; $5259: $65
    ld bc, $7247                                  ; $525a: $01 $47 $72
    ld h, c                                       ; $525d: $61
    ld l, [hl]                                    ; $525e: $6e
    ld h, h                                       ; $525f: $64
    jr nz, jr_019_52a5                            ; $5260: $20 $43

    ld l, b                                       ; $5262: $68
    ld h, c                                       ; $5263: $61
    ld l, l                                       ; $5264: $6d
    ld [hl], b                                    ; $5265: $70
    ccf                                           ; $5266: $3f

jr_019_5267:
    ld bc, $6f44                                  ; $5267: $01 $44 $6f
    ld l, [hl]                                    ; $526a: $6e

jr_019_526b:
    daa                                           ; $526b: $27
    ld [hl], h                                    ; $526c: $74
    jr nz, jr_019_52e8                            ; $526d: $20 $79

jr_019_526f:
    ld l, a                                       ; $526f: $6f
    ld [hl], l                                    ; $5270: $75
    jr nz, jr_019_52de                            ; $5271: $20 $6b

    ld l, [hl]                                    ; $5273: $6e
    ld l, a                                       ; $5274: $6f
    ld [hl], a                                    ; $5275: $77
    ld [bc], a                                    ; $5276: $02
    ld c, c                                       ; $5277: $49

jr_019_5278:
    daa                                           ; $5278: $27
    ld l, l                                       ; $5279: $6d
    jr nz, jr_019_528a                            ; $527a: $20 $0e

    ld b, $2c                                     ; $527c: $06 $2c
    jr nz, @+$76                                  ; $527e: $20 $74

    ld l, b                                       ; $5280: $68
    ld h, l                                       ; $5281: $65
    jr nz, jr_019_52eb                            ; $5282: $20 $67

    ld [hl], l                                    ; $5284: $75
    ld a, c                                       ; $5285: $79
    ld bc, $6f79                                  ; $5286: $01 $79 $6f
    ld [hl], l                                    ; $5289: $75

jr_019_528a:
    jr nz, jr_019_52ff                            ; $528a: $20 $73

    ld [hl], h                                    ; $528c: $74
    ld l, a                                       ; $528d: $6f
    ld l, h                                       ; $528e: $6c
    ld h, l                                       ; $528f: $65
    jr nz, @+$76                                  ; $5290: $20 $74

    ld l, b                                       ; $5292: $68

jr_019_5293:
    ld h, l                                       ; $5293: $65
    ld bc, $7544                                  ; $5294: $01 $44 $75
    ld l, [hl]                                    ; $5297: $6e
    ld h, l                                       ; $5298: $65
    jr nz, jr_019_530f                            ; $5299: $20 $74

    ld l, c                                       ; $529b: $69
    ld [hl], h                                    ; $529c: $74
    ld l, h                                       ; $529d: $6c
    ld h, l                                       ; $529e: $65
    jr nz, jr_019_5307                            ; $529f: $20 $66

    ld [hl], d                                    ; $52a1: $72
    ld l, a                                       ; $52a2: $6f
    ld l, l                                       ; $52a3: $6d

jr_019_52a4:
    ccf                                           ; $52a4: $3f

jr_019_52a5:
    nop                                           ; $52a5: $00
    ld e, c                                       ; $52a6: $59
    ld l, a                                       ; $52a7: $6f

jr_019_52a8:
    ld [hl], l                                    ; $52a8: $75
    daa                                           ; $52a9: $27
    ld [hl], d                                    ; $52aa: $72
    ld h, l                                       ; $52ab: $65
    jr nz, @+$49                                  ; $52ac: $20 $47

    ld [hl], d                                    ; $52ae: $72
    ld h, c                                       ; $52af: $61
    ld l, [hl]                                    ; $52b0: $6e
    ld h, h                                       ; $52b1: $64
    jr nz, jr_019_52f7                            ; $52b2: $20 $43

    ld l, b                                       ; $52b4: $68
    ld h, c                                       ; $52b5: $61
    ld l, l                                       ; $52b6: $6d
    ld [hl], b                                    ; $52b7: $70
    ld bc, $2c07                                  ; $52b8: $01 $07 $2c
    jr nz, jr_019_5325                            ; $52bb: $20 $68

    ld [hl], l                                    ; $52bd: $75
    ld l, b                                       ; $52be: $68
    ccf                                           ; $52bf: $3f
    ld [bc], a                                    ; $52c0: $02
    ld b, h                                       ; $52c1: $44
    ld l, c                                       ; $52c2: $69
    ld h, h                                       ; $52c3: $64
    jr nz, @+$7b                                  ; $52c4: $20 $79

    ld l, a                                       ; $52c6: $6f
    ld [hl], l                                    ; $52c7: $75
    jr nz, jr_019_5335                            ; $52c8: $20 $6b

    ld l, [hl]                                    ; $52ca: $6e
    ld l, a                                       ; $52cb: $6f

jr_019_52cc:
    ld [hl], a                                    ; $52cc: $77

jr_019_52cd:
    jr nz, jr_019_5318                            ; $52cd: $20 $49

    daa                                           ; $52cf: $27
    ld l, l                                       ; $52d0: $6d
    ld bc, $7544                                  ; $52d1: $01 $44 $75
    ld l, [hl]                                    ; $52d4: $6e
    ld h, l                                       ; $52d5: $65
    jr nz, jr_019_531b                            ; $52d6: $20 $43

    ld l, h                                       ; $52d8: $6c
    ld [hl], l                                    ; $52d9: $75
    ld h, d                                       ; $52da: $62
    jr nz, @+$45                                  ; $52db: $20 $43

    ld l, b                                       ; $52dd: $68

jr_019_52de:
    ld h, c                                       ; $52de: $61
    ld l, l                                       ; $52df: $6d
    ld [hl], b                                    ; $52e0: $70
    inc l                                         ; $52e1: $2c
    ld bc, $060e                                  ; $52e2: $01 $0e $06
    ccf                                           ; $52e5: $3f
    nop                                           ; $52e6: $00
    ld d, e                                       ; $52e7: $53

jr_019_52e8:
    ld l, a                                       ; $52e8: $6f
    jr nz, jr_019_535f                            ; $52e9: $20 $74

jr_019_52eb:
    ld l, b                                       ; $52eb: $68
    ld h, l                                       ; $52ec: $65
    jr nz, jr_019_5336                            ; $52ed: $20 $47

    ld [hl], d                                    ; $52ef: $72
    ld h, c                                       ; $52f0: $61
    ld l, [hl]                                    ; $52f1: $6e
    ld h, h                                       ; $52f2: $64
    ld bc, $6843                                  ; $52f3: $01 $43 $68
    ld h, c                                       ; $52f6: $61

jr_019_52f7:
    ld l, l                                       ; $52f7: $6d
    ld [hl], b                                    ; $52f8: $70
    ld l, c                                       ; $52f9: $69
    ld l, a                                       ; $52fa: $6f
    ld l, [hl]                                    ; $52fb: $6e
    jr nz, jr_019_5375                            ; $52fc: $20 $77

    ld h, c                                       ; $52fe: $61

jr_019_52ff:
    ld l, [hl]                                    ; $52ff: $6e
    ld [hl], h                                    ; $5300: $74
    ld [hl], e                                    ; $5301: $73
    ld bc, $6f74                                  ; $5302: $01 $74 $6f
    jr nz, @+$72                                  ; $5305: $20 $70

jr_019_5307:
    ld l, h                                       ; $5307: $6c
    ld h, c                                       ; $5308: $61
    ld a, c                                       ; $5309: $79
    jr nz, @+$6f                                  ; $530a: $20 $6d

    ld h, l                                       ; $530c: $65
    ccf                                           ; $530d: $3f
    inc bc                                        ; $530e: $03

jr_019_530f:
    nop                                           ; $530f: $00
    ld e, c                                       ; $5310: $59
    ld l, a                                       ; $5311: $6f
    ld [hl], l                                    ; $5312: $75
    daa                                           ; $5313: $27
    ld l, h                                       ; $5314: $6c
    ld l, h                                       ; $5315: $6c
    jr nz, jr_019_5388                            ; $5316: $20 $70

jr_019_5318:
    ld l, h                                       ; $5318: $6c
    ld h, c                                       ; $5319: $61
    ld a, c                                       ; $531a: $79

jr_019_531b:
    jr nz, @+$6f                                  ; $531b: $20 $6d

    ld h, l                                       ; $531d: $65
    inc l                                         ; $531e: $2c
    ld bc, $3f07                                  ; $531f: $01 $07 $3f
    ld bc, $6c41                                  ; $5322: $01 $41 $6c

jr_019_5325:
    ld l, h                                       ; $5325: $6c
    jr nz, @+$74                                  ; $5326: $20 $72

    ld l, c                                       ; $5328: $69
    ld h, a                                       ; $5329: $67
    ld l, b                                       ; $532a: $68
    ld [hl], h                                    ; $532b: $74
    ld hl, $4402                                  ; $532c: $21 $02 $44
    ld l, a                                       ; $532f: $6f
    ld l, [hl]                                    ; $5330: $6e
    daa                                           ; $5331: $27
    ld [hl], h                                    ; $5332: $74
    jr nz, @+$76                                  ; $5333: $20 $74

jr_019_5335:
    ld l, b                                       ; $5335: $68

jr_019_5336:
    ld l, c                                       ; $5336: $69
    ld l, [hl]                                    ; $5337: $6e
    ld l, e                                       ; $5338: $6b
    jr nz, @+$6b                                  ; $5339: $20 $69

    ld [hl], h                                    ; $533b: $74
    daa                                           ; $533c: $27
    ld [hl], e                                    ; $533d: $73
    ld bc, $6874                                  ; $533e: $01 $74 $68
    ld h, l                                       ; $5341: $65
    jr nz, jr_019_5387                            ; $5342: $20 $43

    ld l, h                                       ; $5344: $6c
    ld [hl], l                                    ; $5345: $75
    ld h, d                                       ; $5346: $62
    jr nz, jr_019_539d                            ; $5347: $20 $54

    ld l, a                                       ; $5349: $6f
    ld [hl], l                                    ; $534a: $75
    ld [hl], d                                    ; $534b: $72
    ld l, [hl]                                    ; $534c: $6e
    ld h, c                                       ; $534d: $61
    ld l, l                                       ; $534e: $6d
    ld h, l                                       ; $534f: $65
    ld l, [hl]                                    ; $5350: $6e
    ld [hl], h                                    ; $5351: $74
    ld bc, $6c61                                  ; $5352: $01 $61 $6c
    ld l, h                                       ; $5355: $6c
    jr nz, jr_019_53c7                            ; $5356: $20 $6f

    halt                                          ; $5358: $76
    ld h, l                                       ; $5359: $65
    ld [hl], d                                    ; $535a: $72
    jr nz, jr_019_53be                            ; $535b: $20 $61

    ld h, a                                       ; $535d: $67
    ld h, c                                       ; $535e: $61

jr_019_535f:
    ld l, c                                       ; $535f: $69
    ld l, [hl]                                    ; $5360: $6e
    ld hl, $0003                                  ; $5361: $21 $03 $00
    ld d, a                                       ; $5364: $57
    ld h, l                                       ; $5365: $65
    ld l, h                                       ; $5366: $6c
    ld l, h                                       ; $5367: $6c
    jr nz, jr_019_53dc                            ; $5368: $20 $72

    ld h, l                                       ; $536a: $65
    ld l, l                                       ; $536b: $6d
    ld h, l                                       ; $536c: $65
    ld l, l                                       ; $536d: $6d
    ld h, d                                       ; $536e: $62
    ld h, l                                       ; $536f: $65
    ld [hl], d                                    ; $5370: $72
    jr nz, jr_019_53e7                            ; $5371: $20 $74

    ld l, b                                       ; $5373: $68
    ld l, c                                       ; $5374: $69

jr_019_5375:
    ld [hl], e                                    ; $5375: $73
    ld l, $2e                                     ; $5376: $2e $2e
    ld l, $01                                     ; $5378: $2e $01
    ld c, c                                       ; $537a: $49
    daa                                           ; $537b: $27
    ld l, l                                       ; $537c: $6d
    jr nz, jr_019_538d                            ; $537d: $20 $0e

    ld b, $21                                     ; $537f: $06 $21
    ld [bc], a                                    ; $5381: $02
    ld c, c                                       ; $5382: $49
    daa                                           ; $5383: $27
    ld l, l                                       ; $5384: $6d
    jr nz, jr_019_53fb                            ; $5385: $20 $74

jr_019_5387:
    ld l, b                                       ; $5387: $68

jr_019_5388:
    ld h, l                                       ; $5388: $65
    jr nz, @+$46                                  ; $5389: $20 $44

    ld [hl], l                                    ; $538b: $75
    ld l, [hl]                                    ; $538c: $6e

jr_019_538d:
    ld h, l                                       ; $538d: $65
    ld bc, $6c43                                  ; $538e: $01 $43 $6c
    ld [hl], l                                    ; $5391: $75
    ld h, d                                       ; $5392: $62
    jr nz, jr_019_53d8                            ; $5393: $20 $43

    ld l, b                                       ; $5395: $68
    ld h, c                                       ; $5396: $61
    ld l, l                                       ; $5397: $6d
    ld [hl], b                                    ; $5398: $70
    ld hl, $0003                                  ; $5399: $21 $03 $00
    ld c, c                                       ; $539c: $49

jr_019_539d:
    daa                                           ; $539d: $27
    ld l, l                                       ; $539e: $6d
    jr nz, jr_019_53af                            ; $539f: $20 $0e

    ld b, $2c                                     ; $53a1: $06 $2c
    jr nz, jr_019_53e9                            ; $53a3: $20 $44

    ld [hl], l                                    ; $53a5: $75
    ld l, [hl]                                    ; $53a6: $6e
    ld h, l                                       ; $53a7: $65
    ld bc, $6c43                                  ; $53a8: $01 $43 $6c
    ld [hl], l                                    ; $53ab: $75
    ld h, d                                       ; $53ac: $62
    jr nz, @+$45                                  ; $53ad: $20 $43

jr_019_53af:
    ld l, b                                       ; $53af: $68
    ld h, c                                       ; $53b0: $61
    ld l, l                                       ; $53b1: $6d
    ld [hl], b                                    ; $53b2: $70
    ld hl, $4901                                  ; $53b3: $21 $01 $49
    jr nz, jr_019_5425                            ; $53b6: $20 $6d

    ld h, c                                       ; $53b8: $61
    ld a, c                                       ; $53b9: $79
    jr nz, jr_019_5424                            ; $53ba: $20 $68

    ld h, c                                       ; $53bc: $61
    halt                                          ; $53bd: $76

jr_019_53be:
    ld h, l                                       ; $53be: $65
    jr nz, jr_019_542d                            ; $53bf: $20 $6c

    ld l, a                                       ; $53c1: $6f
    ld [hl], e                                    ; $53c2: $73
    ld [hl], h                                    ; $53c3: $74
    jr nz, jr_019_543a                            ; $53c4: $20 $74

    ld l, b                                       ; $53c6: $68

jr_019_53c7:
    ld h, l                                       ; $53c7: $65
    ld [bc], a                                    ; $53c8: $02
    ld c, l                                       ; $53c9: $4d
    ld h, c                                       ; $53ca: $61
    ld [hl], h                                    ; $53cb: $74
    ld h, e                                       ; $53cc: $63
    ld l, b                                       ; $53cd: $68
    jr nz, jr_019_5417                            ; $53ce: $20 $47

    ld h, c                                       ; $53d0: $61
    ld l, l                                       ; $53d1: $6d
    ld h, l                                       ; $53d2: $65
    inc l                                         ; $53d3: $2c
    jr nz, @+$64                                  ; $53d4: $20 $62

    ld [hl], l                                    ; $53d6: $75
    ld [hl], h                                    ; $53d7: $74

jr_019_53d8:
    jr nz, jr_019_544e                            ; $53d8: $20 $74

    ld l, b                                       ; $53da: $68
    ld h, l                                       ; $53db: $65

jr_019_53dc:
    ld bc, $6c43                                  ; $53dc: $01 $43 $6c
    ld [hl], l                                    ; $53df: $75
    ld h, d                                       ; $53e0: $62
    jr nz, @+$45                                  ; $53e1: $20 $43

    ld l, b                                       ; $53e3: $68
    ld h, c                                       ; $53e4: $61
    ld l, l                                       ; $53e5: $6d
    ld [hl], b                                    ; $53e6: $70

jr_019_53e7:
    ld l, c                                       ; $53e7: $69
    ld l, a                                       ; $53e8: $6f

jr_019_53e9:
    ld l, [hl]                                    ; $53e9: $6e
    ld [hl], e                                    ; $53ea: $73
    ld l, b                                       ; $53eb: $68
    ld l, c                                       ; $53ec: $69
    ld [hl], b                                    ; $53ed: $70
    ld bc, $7369                                  ; $53ee: $01 $69 $73
    jr nz, jr_019_5457                            ; $53f1: $20 $64

    ld l, c                                       ; $53f3: $69
    ld h, [hl]                                    ; $53f4: $66
    ld h, [hl]                                    ; $53f5: $66
    ld h, l                                       ; $53f6: $65
    ld [hl], d                                    ; $53f7: $72
    ld h, l                                       ; $53f8: $65
    ld l, [hl]                                    ; $53f9: $6e
    ld [hl], h                                    ; $53fa: $74

jr_019_53fb:
    ld hl, $0003                                  ; $53fb: $21 $03 $00
    ld b, h                                       ; $53fe: $44
    ld d, l                                       ; $53ff: $55
    ld c, l                                       ; $5400: $4d
    ld c, l                                       ; $5401: $4d
    ld e, c                                       ; $5402: $59
    nop                                           ; $5403: $00
    ld b, h                                       ; $5404: $44
    ld d, l                                       ; $5405: $55
    ld c, l                                       ; $5406: $4d
    ld c, l                                       ; $5407: $4d
    ld e, c                                       ; $5408: $59
    nop                                           ; $5409: $00
    ld c, b                                       ; $540a: $48
    ld h, l                                       ; $540b: $65
    ld l, h                                       ; $540c: $6c
    ld l, h                                       ; $540d: $6c
    ld l, a                                       ; $540e: $6f
    ld l, $20                                     ; $540f: $2e $20
    ld c, l                                       ; $5411: $4d
    ld a, c                                       ; $5412: $79
    jr nz, jr_019_5483                            ; $5413: $20 $6e

    ld h, c                                       ; $5415: $61
    ld l, l                                       ; $5416: $6d

jr_019_5417:
    ld h, l                                       ; $5417: $65
    jr nz, jr_019_5483                            ; $5418: $20 $69

    ld [hl], e                                    ; $541a: $73
    ld bc, $070e                                  ; $541b: $01 $0e $07
    inc l                                         ; $541e: $2c
    ld bc, $694c                                  ; $541f: $01 $4c $69
    ld l, [hl]                                    ; $5422: $6e
    ld l, e                                       ; $5423: $6b

jr_019_5424:
    ld [hl], e                                    ; $5424: $73

jr_019_5425:
    jr nz, jr_019_546a                            ; $5425: $20 $43

    ld l, h                                       ; $5427: $6c
    ld [hl], l                                    ; $5428: $75
    ld h, d                                       ; $5429: $62
    jr nz, jr_019_546f                            ; $542a: $20 $43

    ld l, b                                       ; $542c: $68

jr_019_542d:
    ld h, c                                       ; $542d: $61
    ld l, l                                       ; $542e: $6d
    ld [hl], b                                    ; $542f: $70
    ld l, $02                                     ; $5430: $2e $02
    ld c, c                                       ; $5432: $49
    jr nz, jr_019_54a8                            ; $5433: $20 $73

    ld h, l                                       ; $5435: $65
    ld h, l                                       ; $5436: $65
    jr nz, @+$7b                                  ; $5437: $20 $79

    ld l, a                                       ; $5439: $6f

jr_019_543a:
    ld [hl], l                                    ; $543a: $75
    jr nz, jr_019_54a5                            ; $543b: $20 $68

    ld h, c                                       ; $543d: $61
    halt                                          ; $543e: $76
    ld h, l                                       ; $543f: $65
    ld bc, $6562                                  ; $5440: $01 $62 $65
    ld h, c                                       ; $5443: $61
    ld [hl], h                                    ; $5444: $74
    ld h, l                                       ; $5445: $65
    ld l, [hl]                                    ; $5446: $6e
    jr nz, jr_019_5457                            ; $5447: $20 $0e

    ld b, $20                                     ; $5449: $06 $20
    ld h, c                                       ; $544b: $61
    ld l, [hl]                                    ; $544c: $6e
    ld h, h                                       ; $544d: $64

jr_019_544e:
    jr nz, jr_019_54c4                            ; $544e: $20 $74

    ld l, b                                       ; $5450: $68
    ld h, l                                       ; $5451: $65
    ld bc, $746f                                  ; $5452: $01 $6f $74
    ld l, b                                       ; $5455: $68
    ld h, l                                       ; $5456: $65

jr_019_5457:
    ld [hl], d                                    ; $5457: $72
    ld [hl], e                                    ; $5458: $73
    inc l                                         ; $5459: $2c
    jr nz, jr_019_54cb                            ; $545a: $20 $6f

    ld l, [hl]                                    ; $545c: $6e
    ld h, l                                       ; $545d: $65
    dec l                                         ; $545e: $2d
    ld h, d                                       ; $545f: $62
    ld a, c                                       ; $5460: $79
    dec l                                         ; $5461: $2d
    ld l, a                                       ; $5462: $6f
    ld l, [hl]                                    ; $5463: $6e
    ld h, l                                       ; $5464: $65
    ld l, $02                                     ; $5465: $2e $02
    ld c, [hl]                                    ; $5467: $4e
    ld l, a                                       ; $5468: $6f
    ld [hl], a                                    ; $5469: $77

jr_019_546a:
    jr nz, jr_019_54e0                            ; $546a: $20 $74

    ld l, b                                       ; $546c: $68
    ld h, c                                       ; $546d: $61
    ld [hl], h                                    ; $546e: $74

jr_019_546f:
    jr nz, jr_019_54ea                            ; $546f: $20 $79

    ld l, a                                       ; $5471: $6f
    ld [hl], l                                    ; $5472: $75
    daa                                           ; $5473: $27
    halt                                          ; $5474: $76
    ld h, l                                       ; $5475: $65
    ld bc, $6562                                  ; $5476: $01 $62 $65
    ld h, c                                       ; $5479: $61
    ld [hl], h                                    ; $547a: $74
    ld h, l                                       ; $547b: $65
    ld l, [hl]                                    ; $547c: $6e
    jr nz, jr_019_54f3                            ; $547d: $20 $74

    ld l, b                                       ; $547f: $68
    ld h, l                                       ; $5480: $65
    ld l, l                                       ; $5481: $6d
    inc l                                         ; $5482: $2c

jr_019_5483:
    jr nz, jr_019_54fe                            ; $5483: $20 $79

    ld l, a                                       ; $5485: $6f
    ld [hl], l                                    ; $5486: $75
    daa                                           ; $5487: $27
    ld [hl], d                                    ; $5488: $72
    ld h, l                                       ; $5489: $65
    ld bc, $6568                                  ; $548a: $01 $68 $65
    ld [hl], d                                    ; $548d: $72
    ld h, l                                       ; $548e: $65
    jr nz, jr_019_54f7                            ; $548f: $20 $66

    ld l, a                                       ; $5491: $6f
    ld [hl], d                                    ; $5492: $72
    jr nz, @+$6f                                  ; $5493: $20 $6d

    ld h, l                                       ; $5495: $65
    inc l                                         ; $5496: $2c
    jr nz, jr_019_550b                            ; $5497: $20 $72

    ld l, c                                       ; $5499: $69
    ld h, a                                       ; $549a: $67
    ld l, b                                       ; $549b: $68
    ld [hl], h                                    ; $549c: $74
    ccf                                           ; $549d: $3f
    nop                                           ; $549e: $00
    ld c, l                                       ; $549f: $4d
    ld l, a                                       ; $54a0: $6f
    ld [hl], e                                    ; $54a1: $73
    ld [hl], h                                    ; $54a2: $74
    jr nz, jr_019_5517                            ; $54a3: $20 $72

jr_019_54a5:
    ld h, l                                       ; $54a5: $65
    ld h, a                                       ; $54a6: $67
    ld [hl], d                                    ; $54a7: $72

jr_019_54a8:
    ld h, l                                       ; $54a8: $65
    ld [hl], h                                    ; $54a9: $74
    ld [hl], h                                    ; $54aa: $74
    ld h, c                                       ; $54ab: $61
    ld h, d                                       ; $54ac: $62
    ld l, h                                       ; $54ad: $6c
    ld h, l                                       ; $54ae: $65
    ld l, $2e                                     ; $54af: $2e $2e
    ld l, $01                                     ; $54b1: $2e $01
    ld c, c                                       ; $54b3: $49
    jr nz, jr_019_551e                            ; $54b4: $20 $68

    ld l, a                                       ; $54b6: $6f
    ld [hl], b                                    ; $54b7: $70
    ld h, l                                       ; $54b8: $65
    ld h, h                                       ; $54b9: $64
    jr nz, jr_019_5530                            ; $54ba: $20 $74

    ld l, a                                       ; $54bc: $6f
    jr nz, jr_019_5532                            ; $54bd: $20 $73

    ld h, l                                       ; $54bf: $65
    ld h, l                                       ; $54c0: $65
    ld bc, $756a                                  ; $54c1: $01 $6a $75

jr_019_54c4:
    ld [hl], e                                    ; $54c4: $73
    ld [hl], h                                    ; $54c5: $74
    jr nz, jr_019_553f                            ; $54c6: $20 $77

    ld l, b                                       ; $54c8: $68
    ld h, c                                       ; $54c9: $61
    ld [hl], h                                    ; $54ca: $74

jr_019_54cb:
    jr nz, jr_019_5538                            ; $54cb: $20 $6b

    ld l, c                                       ; $54cd: $69
    ld l, [hl]                                    ; $54ce: $6e
    ld h, h                                       ; $54cf: $64
    ld [bc], a                                    ; $54d0: $02
    ld l, a                                       ; $54d1: $6f
    ld h, [hl]                                    ; $54d2: $66
    jr nz, jr_019_5545                            ; $54d3: $20 $70

    ld l, h                                       ; $54d5: $6c
    ld h, c                                       ; $54d6: $61
    ld a, c                                       ; $54d7: $79
    jr nz, @+$66                                  ; $54d8: $20 $64

    ld h, l                                       ; $54da: $65
    ld h, [hl]                                    ; $54db: $66
    ld h, l                                       ; $54dc: $65
    ld h, c                                       ; $54dd: $61
    ld [hl], h                                    ; $54de: $74
    ld h, l                                       ; $54df: $65

jr_019_54e0:
    ld h, h                                       ; $54e0: $64
    ld bc, $6874                                  ; $54e1: $01 $74 $68
    ld h, l                                       ; $54e4: $65
    jr nz, jr_019_5556                            ; $54e5: $20 $6f

    ld [hl], h                                    ; $54e7: $74
    ld l, b                                       ; $54e8: $68
    ld h, l                                       ; $54e9: $65

jr_019_54ea:
    ld [hl], d                                    ; $54ea: $72
    ld [hl], e                                    ; $54eb: $73
    ld l, $03                                     ; $54ec: $2e $03
    nop                                           ; $54ee: $00
    ld d, e                                       ; $54ef: $53
    ld [hl], b                                    ; $54f0: $70
    ld l, h                                       ; $54f1: $6c
    ld h, l                                       ; $54f2: $65

jr_019_54f3:
    ld l, [hl]                                    ; $54f3: $6e
    ld h, h                                       ; $54f4: $64
    ld l, c                                       ; $54f5: $69
    ld h, h                                       ; $54f6: $64

jr_019_54f7:
    ld hl, $4920                                  ; $54f7: $21 $20 $49
    jr nz, jr_019_556f                            ; $54fa: $20 $73

    ld l, b                                       ; $54fc: $68
    ld h, c                                       ; $54fd: $61

jr_019_54fe:
    ld l, h                                       ; $54fe: $6c
    ld l, h                                       ; $54ff: $6c
    ld bc, $6873                                  ; $5500: $01 $73 $68
    ld l, a                                       ; $5503: $6f
    ld [hl], a                                    ; $5504: $77
    jr nz, jr_019_5580                            ; $5505: $20 $79

    ld l, a                                       ; $5507: $6f
    ld [hl], l                                    ; $5508: $75
    jr nz, jr_019_557f                            ; $5509: $20 $74

jr_019_550b:
    ld l, b                                       ; $550b: $68
    ld h, l                                       ; $550c: $65
    jr nz, jr_019_5582                            ; $550d: $20 $73

    ld l, e                                       ; $550f: $6b
    ld l, c                                       ; $5510: $69
    ld l, h                                       ; $5511: $6c
    ld l, h                                       ; $5512: $6c
    ld [hl], e                                    ; $5513: $73
    ld bc, $6e61                                  ; $5514: $01 $61 $6e

jr_019_5517:
    ld h, h                                       ; $5517: $64
    jr nz, jr_019_557f                            ; $5518: $20 $65

    ld a, b                                       ; $551a: $78
    ld [hl], b                                    ; $551b: $70
    ld h, l                                       ; $551c: $65
    ld [hl], d                                    ; $551d: $72

jr_019_551e:
    ld l, c                                       ; $551e: $69
    ld h, l                                       ; $551f: $65
    ld l, [hl]                                    ; $5520: $6e
    ld h, e                                       ; $5521: $63
    ld h, l                                       ; $5522: $65
    jr nz, jr_019_5594                            ; $5523: $20 $6f

    ld h, [hl]                                    ; $5525: $66
    ld [bc], a                                    ; $5526: $02
    ld c, $07                                     ; $5527: $0e $07
    ld hl, $0003                                  ; $5529: $21 $03 $00
    ld b, h                                       ; $552c: $44
    ld d, l                                       ; $552d: $55
    ld c, l                                       ; $552e: $4d
    ld c, l                                       ; $552f: $4d

jr_019_5530:
    ld e, c                                       ; $5530: $59
    nop                                           ; $5531: $00

jr_019_5532:
    ld b, h                                       ; $5532: $44
    ld d, l                                       ; $5533: $55
    ld c, l                                       ; $5534: $4d
    ld c, l                                       ; $5535: $4d
    ld e, c                                       ; $5536: $59
    nop                                           ; $5537: $00

jr_019_5538:
    ld c, b                                       ; $5538: $48
    ld h, l                                       ; $5539: $65
    ld l, h                                       ; $553a: $6c
    ld l, h                                       ; $553b: $6c
    ld l, a                                       ; $553c: $6f
    ld l, $20                                     ; $553d: $2e $20

jr_019_553f:
    ld c, l                                       ; $553f: $4d
    ld a, c                                       ; $5540: $79
    jr nz, jr_019_55b1                            ; $5541: $20 $6e

    ld h, c                                       ; $5543: $61
    ld l, l                                       ; $5544: $6d

jr_019_5545:
    ld h, l                                       ; $5545: $65
    jr nz, jr_019_55b1                            ; $5546: $20 $69

    ld [hl], e                                    ; $5548: $73
    ld bc, $070e                                  ; $5549: $01 $0e $07
    inc l                                         ; $554c: $2c
    ld bc, $694c                                  ; $554d: $01 $4c $69
    ld l, [hl]                                    ; $5550: $6e
    ld l, e                                       ; $5551: $6b
    ld [hl], e                                    ; $5552: $73
    jr nz, @+$45                                  ; $5553: $20 $43

    ld l, h                                       ; $5555: $6c

jr_019_5556:
    ld [hl], l                                    ; $5556: $75
    ld h, d                                       ; $5557: $62
    jr nz, jr_019_559d                            ; $5558: $20 $43

    ld l, b                                       ; $555a: $68
    ld h, c                                       ; $555b: $61
    ld l, l                                       ; $555c: $6d
    ld [hl], b                                    ; $555d: $70
    ld l, $02                                     ; $555e: $2e $02
    rlca                                          ; $5560: $07
    inc l                                         ; $5561: $2c
    jr nz, jr_019_55c8                            ; $5562: $20 $64

    ld l, c                                       ; $5564: $69
    ld h, h                                       ; $5565: $64
    ld bc, $756f                                  ; $5566: $01 $6f $75
    ld [hl], d                                    ; $5569: $72
    jr nz, jr_019_55d9                            ; $556a: $20 $6d

    ld h, c                                       ; $556c: $61
    ld [hl], h                                    ; $556d: $74
    ld h, e                                       ; $556e: $63

jr_019_556f:
    ld l, b                                       ; $556f: $68
    jr nz, @+$76                                  ; $5570: $20 $74

    ld h, l                                       ; $5572: $65
    ld h, c                                       ; $5573: $61
    ld h, e                                       ; $5574: $63
    ld l, b                                       ; $5575: $68
    ld bc, $6f79                                  ; $5576: $01 $79 $6f
    ld [hl], l                                    ; $5579: $75
    jr nz, @+$70                                  ; $557a: $20 $6e

    ld l, a                                       ; $557c: $6f
    ld [hl], h                                    ; $557d: $74
    ld l, b                                       ; $557e: $68

jr_019_557f:
    ld l, c                                       ; $557f: $69

jr_019_5580:
    ld l, [hl]                                    ; $5580: $6e
    ld h, a                                       ; $5581: $67

jr_019_5582:
    ccf                                           ; $5582: $3f
    nop                                           ; $5583: $00
    ld e, c                                       ; $5584: $59
    ld l, a                                       ; $5585: $6f
    ld [hl], l                                    ; $5586: $75
    ld [hl], d                                    ; $5587: $72
    jr nz, jr_019_55fd                            ; $5588: $20 $73

    ld l, e                                       ; $558a: $6b
    ld l, c                                       ; $558b: $69
    ld l, h                                       ; $558c: $6c
    ld l, h                                       ; $558d: $6c
    ld [hl], e                                    ; $558e: $73
    jr nz, @+$65                                  ; $558f: $20 $63

    ld h, c                                       ; $5591: $61
    ld l, [hl]                                    ; $5592: $6e
    ld l, [hl]                                    ; $5593: $6e

jr_019_5594:
    ld l, a                                       ; $5594: $6f
    ld [hl], h                                    ; $5595: $74
    ld bc, $6564                                  ; $5596: $01 $64 $65
    ld h, [hl]                                    ; $5599: $66
    ld h, l                                       ; $559a: $65
    ld h, c                                       ; $559b: $61
    ld [hl], h                                    ; $559c: $74

jr_019_559d:
    jr nz, jr_019_560c                            ; $559d: $20 $6d

    ld h, l                                       ; $559f: $65
    jr nz, jr_019_5603                            ; $55a0: $20 $61

    ld h, [hl]                                    ; $55a2: $66
    ld [hl], h                                    ; $55a3: $74
    ld h, l                                       ; $55a4: $65
    ld [hl], d                                    ; $55a5: $72
    jr nz, @+$63                                  ; $55a6: $20 $61

    ld l, h                                       ; $55a8: $6c
    ld l, h                                       ; $55a9: $6c
    ld l, $03                                     ; $55aa: $2e $03
    nop                                           ; $55ac: $00
    ld d, h                                       ; $55ad: $54
    ld l, b                                       ; $55ae: $68
    ld h, l                                       ; $55af: $65
    ld l, [hl]                                    ; $55b0: $6e

jr_019_55b1:
    jr nz, jr_019_55fc                            ; $55b1: $20 $49

    daa                                           ; $55b3: $27
    ld l, h                                       ; $55b4: $6c
    ld l, h                                       ; $55b5: $6c
    jr nz, jr_019_5628                            ; $55b6: $20 $70

    ld l, h                                       ; $55b8: $6c
    ld h, c                                       ; $55b9: $61
    ld a, c                                       ; $55ba: $79
    jr nz, jr_019_5636                            ; $55bb: $20 $79

    ld l, a                                       ; $55bd: $6f
    ld [hl], l                                    ; $55be: $75
    ld bc, $6e75                                  ; $55bf: $01 $75 $6e
    ld [hl], h                                    ; $55c2: $74
    ld l, c                                       ; $55c3: $69
    ld l, h                                       ; $55c4: $6c
    jr nz, jr_019_5640                            ; $55c5: $20 $79

    ld l, a                                       ; $55c7: $6f

jr_019_55c8:
    ld [hl], l                                    ; $55c8: $75
    jr nz, jr_019_5637                            ; $55c9: $20 $6c

    ld h, l                                       ; $55cb: $65
    ld h, c                                       ; $55cc: $61
    ld [hl], d                                    ; $55cd: $72
    ld l, [hl]                                    ; $55ce: $6e
    ld l, $03                                     ; $55cf: $2e $03
    nop                                           ; $55d1: $00
    ld b, h                                       ; $55d2: $44
    ld d, l                                       ; $55d3: $55
    ld c, l                                       ; $55d4: $4d
    ld c, l                                       ; $55d5: $4d
    ld e, c                                       ; $55d6: $59
    nop                                           ; $55d7: $00
    ld b, h                                       ; $55d8: $44

jr_019_55d9:
    ld d, l                                       ; $55d9: $55
    ld c, l                                       ; $55da: $4d
    ld c, l                                       ; $55db: $4d
    ld e, c                                       ; $55dc: $59
    nop                                           ; $55dd: $00
    ld c, l                                       ; $55de: $4d
    ld a, c                                       ; $55df: $79
    jr nz, jr_019_5650                            ; $55e0: $20 $6e

    ld h, c                                       ; $55e2: $61
    ld l, l                                       ; $55e3: $6d
    ld h, l                                       ; $55e4: $65
    jr nz, jr_019_5650                            ; $55e5: $20 $69

    ld [hl], e                                    ; $55e7: $73
    ld bc, $070e                                  ; $55e8: $01 $0e $07
    inc l                                         ; $55eb: $2c
    jr nz, jr_019_5654                            ; $55ec: $20 $66

    ld l, a                                       ; $55ee: $6f
    ld [hl], d                                    ; $55ef: $72
    ld l, l                                       ; $55f0: $6d
    ld h, l                                       ; $55f1: $65
    ld [hl], d                                    ; $55f2: $72
    ld bc, $694c                                  ; $55f3: $01 $4c $69
    ld l, [hl]                                    ; $55f6: $6e
    ld l, e                                       ; $55f7: $6b
    ld [hl], e                                    ; $55f8: $73
    jr nz, @+$45                                  ; $55f9: $20 $43

    ld l, h                                       ; $55fb: $6c

jr_019_55fc:
    ld [hl], l                                    ; $55fc: $75

jr_019_55fd:
    ld h, d                                       ; $55fd: $62
    jr nz, @+$45                                  ; $55fe: $20 $43

    ld l, b                                       ; $5600: $68
    ld h, c                                       ; $5601: $61
    ld l, l                                       ; $5602: $6d

jr_019_5603:
    ld [hl], b                                    ; $5603: $70
    ld l, $02                                     ; $5604: $2e $02
    rlca                                          ; $5606: $07
    inc l                                         ; $5607: $2c
    jr nz, jr_019_5653                            ; $5608: $20 $49

    daa                                           ; $560a: $27
    halt                                          ; $560b: $76

jr_019_560c:
    ld h, l                                       ; $560c: $65
    ld bc, $6f6c                                  ; $560d: $01 $6c $6f
    ld [hl], e                                    ; $5610: $73
    ld [hl], h                                    ; $5611: $74
    jr nz, @+$76                                  ; $5612: $20 $74

    ld l, b                                       ; $5614: $68
    ld h, l                                       ; $5615: $65
    jr nz, jr_019_568c                            ; $5616: $20 $74

    ld l, c                                       ; $5618: $69
    ld [hl], h                                    ; $5619: $74
    ld l, h                                       ; $561a: $6c
    ld h, l                                       ; $561b: $65
    jr nz, jr_019_568d                            ; $561c: $20 $6f

    ld h, [hl]                                    ; $561e: $66
    ld bc, $6843                                  ; $561f: $01 $43 $68
    ld h, c                                       ; $5622: $61
    ld l, l                                       ; $5623: $6d
    ld [hl], b                                    ; $5624: $70
    ld l, c                                       ; $5625: $69
    ld l, a                                       ; $5626: $6f
    ld l, [hl]                                    ; $5627: $6e

jr_019_5628:
    jr nz, @+$76                                  ; $5628: $20 $74

    ld l, a                                       ; $562a: $6f
    jr nz, jr_019_56a6                            ; $562b: $20 $79

    ld l, a                                       ; $562d: $6f
    ld [hl], l                                    ; $562e: $75
    ld l, $02                                     ; $562f: $2e $02
    ld d, h                                       ; $5631: $54
    ld l, b                                       ; $5632: $68
    ld h, l                                       ; $5633: $65
    ld [hl], d                                    ; $5634: $72
    ld h, l                                       ; $5635: $65

jr_019_5636:
    ld h, [hl]                                    ; $5636: $66

jr_019_5637:
    ld l, a                                       ; $5637: $6f
    ld [hl], d                                    ; $5638: $72
    ld h, l                                       ; $5639: $65
    inc l                                         ; $563a: $2c
    jr nz, jr_019_5686                            ; $563b: $20 $49

    jr nz, jr_019_56ac                            ; $563d: $20 $6d

    ld [hl], l                                    ; $563f: $75

jr_019_5640:
    ld [hl], e                                    ; $5640: $73
    ld [hl], h                                    ; $5641: $74
    ld bc, $6c70                                  ; $5642: $01 $70 $6c
    ld h, c                                       ; $5645: $61
    ld a, c                                       ; $5646: $79
    jr nz, jr_019_56be                            ; $5647: $20 $75

    ld l, [hl]                                    ; $5649: $6e
    ld [hl], h                                    ; $564a: $74
    ld l, c                                       ; $564b: $69
    ld l, h                                       ; $564c: $6c
    jr nz, @+$6f                                  ; $564d: $20 $6d

    ld a, c                                       ; $564f: $79

jr_019_5650:
    ld bc, $6f68                                  ; $5650: $01 $68 $6f

jr_019_5653:
    ld l, [hl]                                    ; $5653: $6e

jr_019_5654:
    ld l, a                                       ; $5654: $6f
    ld [hl], d                                    ; $5655: $72
    jr nz, @+$6b                                  ; $5656: $20 $69

    ld [hl], e                                    ; $5658: $73
    jr nz, @+$63                                  ; $5659: $20 $61

    halt                                          ; $565b: $76
    ld h, l                                       ; $565c: $65
    ld l, [hl]                                    ; $565d: $6e
    ld h, a                                       ; $565e: $67
    ld h, l                                       ; $565f: $65
    ld h, h                                       ; $5660: $64
    ld l, $02                                     ; $5661: $2e $02
    ld d, a                                       ; $5663: $57
    ld l, c                                       ; $5664: $69
    ld l, h                                       ; $5665: $6c
    ld l, h                                       ; $5666: $6c
    jr nz, jr_019_56e2                            ; $5667: $20 $79

    ld l, a                                       ; $5669: $6f
    ld [hl], l                                    ; $566a: $75
    jr nz, jr_019_56dd                            ; $566b: $20 $70

    ld l, h                                       ; $566d: $6c
    ld h, c                                       ; $566e: $61
    ld a, c                                       ; $566f: $79
    jr nz, @+$6f                                  ; $5670: $20 $6d

    ld h, l                                       ; $5672: $65
    ccf                                           ; $5673: $3f
    nop                                           ; $5674: $00
    ld d, e                                       ; $5675: $53
    ld l, a                                       ; $5676: $6f
    jr nz, @+$70                                  ; $5677: $20 $6e

    ld l, a                                       ; $5679: $6f
    ld [hl], a                                    ; $567a: $77
    jr nz, jr_019_56f1                            ; $567b: $20 $74

    ld l, b                                       ; $567d: $68
    ld h, c                                       ; $567e: $61
    ld [hl], h                                    ; $567f: $74
    jr nz, jr_019_56fb                            ; $5680: $20 $79

    ld l, a                                       ; $5682: $6f
    ld [hl], l                                    ; $5683: $75
    daa                                           ; $5684: $27
    ld [hl], d                                    ; $5685: $72

jr_019_5686:
    ld h, l                                       ; $5686: $65
    ld bc, $6843                                  ; $5687: $01 $43 $68
    ld h, c                                       ; $568a: $61
    ld l, l                                       ; $568b: $6d

jr_019_568c:
    ld [hl], b                                    ; $568c: $70

jr_019_568d:
    ld l, c                                       ; $568d: $69
    ld l, a                                       ; $568e: $6f
    ld l, [hl]                                    ; $568f: $6e
    inc l                                         ; $5690: $2c
    jr nz, jr_019_570c                            ; $5691: $20 $79

    ld l, a                                       ; $5693: $6f
    ld [hl], l                                    ; $5694: $75
    daa                                           ; $5695: $27
    ld [hl], d                                    ; $5696: $72
    ld h, l                                       ; $5697: $65
    ld bc, $6f64                                  ; $5698: $01 $64 $6f
    ld l, [hl]                                    ; $569b: $6e
    ld h, l                                       ; $569c: $65
    jr nz, jr_019_5716                            ; $569d: $20 $77

    ld l, c                                       ; $569f: $69
    ld [hl], h                                    ; $56a0: $74
    ld l, b                                       ; $56a1: $68
    jr nz, jr_019_5711                            ; $56a2: $20 $6d

    ld h, c                                       ; $56a4: $61
    ld [hl], h                                    ; $56a5: $74

jr_019_56a6:
    ld h, e                                       ; $56a6: $63
    ld l, b                                       ; $56a7: $68
    ld h, l                                       ; $56a8: $65
    ld [hl], e                                    ; $56a9: $73
    ccf                                           ; $56aa: $3f
    ld [bc], a                                    ; $56ab: $02

jr_019_56ac:
    ld c, c                                       ; $56ac: $49
    jr nz, @+$79                                  ; $56ad: $20 $77

    ld l, a                                       ; $56af: $6f
    ld l, [hl]                                    ; $56b0: $6e
    daa                                           ; $56b1: $27
    ld [hl], h                                    ; $56b2: $74
    jr nz, jr_019_5719                            ; $56b3: $20 $64

    ld l, c                                       ; $56b5: $69
    ld h, a                                       ; $56b6: $67
    ld l, [hl]                                    ; $56b7: $6e
    ld l, c                                       ; $56b8: $69
    ld h, [hl]                                    ; $56b9: $66
    ld a, c                                       ; $56ba: $79
    ld bc, $7573                                  ; $56bb: $01 $73 $75

jr_019_56be:
    ld h, e                                       ; $56be: $63
    ld l, b                                       ; $56bf: $68
    jr nz, jr_019_5725                            ; $56c0: $20 $63

    ld l, a                                       ; $56c2: $6f
    ld [hl], a                                    ; $56c3: $77
    ld h, c                                       ; $56c4: $61
    ld [hl], d                                    ; $56c5: $72
    ld h, h                                       ; $56c6: $64
    ld l, c                                       ; $56c7: $69
    ld h, e                                       ; $56c8: $63
    ld h, l                                       ; $56c9: $65
    ld bc, $6977                                  ; $56ca: $01 $77 $69
    ld [hl], h                                    ; $56cd: $74
    ld l, b                                       ; $56ce: $68
    jr nz, jr_019_5732                            ; $56cf: $20 $61

    jr nz, jr_019_5740                            ; $56d1: $20 $6d

    ld h, c                                       ; $56d3: $61
    ld [hl], h                                    ; $56d4: $74
    ld h, e                                       ; $56d5: $63
    ld l, b                                       ; $56d6: $68
    ld hl, $0003                                  ; $56d7: $21 $03 $00
    ld c, b                                       ; $56da: $48
    ld h, c                                       ; $56db: $61
    ld l, b                                       ; $56dc: $68

jr_019_56dd:
    ld hl, $4e20                                  ; $56dd: $21 $20 $4e
    ld l, a                                       ; $56e0: $6f
    ld [hl], a                                    ; $56e1: $77

jr_019_56e2:
    jr nz, jr_019_575d                            ; $56e2: $20 $79

    ld l, a                                       ; $56e4: $6f
    ld [hl], l                                    ; $56e5: $75
    jr nz, @+$75                                  ; $56e6: $20 $73

    ld l, b                                       ; $56e8: $68
    ld h, c                                       ; $56e9: $61
    ld l, h                                       ; $56ea: $6c
    ld l, h                                       ; $56eb: $6c
    ld bc, $6572                                  ; $56ec: $01 $72 $65
    ld [hl], b                                    ; $56ef: $70
    ld h, l                                       ; $56f0: $65

jr_019_56f1:
    ld l, [hl]                                    ; $56f1: $6e
    ld [hl], h                                    ; $56f2: $74
    inc l                                         ; $56f3: $2c
    jr nz, @+$6b                                  ; $56f4: $20 $69

    ld l, [hl]                                    ; $56f6: $6e
    ld [hl], e                                    ; $56f7: $73
    ld l, a                                       ; $56f8: $6f
    ld l, h                                       ; $56f9: $6c
    ld h, l                                       ; $56fa: $65

jr_019_56fb:
    ld l, [hl]                                    ; $56fb: $6e
    ld [hl], h                                    ; $56fc: $74
    ld bc, $6974                                  ; $56fd: $01 $74 $69
    ld [hl], h                                    ; $5700: $74
    ld l, h                                       ; $5701: $6c
    ld h, l                                       ; $5702: $65
    jr nz, jr_019_5779                            ; $5703: $20 $74

    ld l, b                                       ; $5705: $68
    ld l, c                                       ; $5706: $69
    ld h, l                                       ; $5707: $65
    ld h, [hl]                                    ; $5708: $66
    ld hl, $0003                                  ; $5709: $21 $03 $00

jr_019_570c:
    ld c, c                                       ; $570c: $49
    jr nz, jr_019_5770                            ; $570d: $20 $61

    ld h, e                                       ; $570f: $63
    ld l, e                                       ; $5710: $6b

jr_019_5711:
    ld l, [hl]                                    ; $5711: $6e
    ld l, a                                       ; $5712: $6f
    ld [hl], a                                    ; $5713: $77
    ld l, h                                       ; $5714: $6c
    ld h, l                                       ; $5715: $65

jr_019_5716:
    ld h, h                                       ; $5716: $64
    ld h, a                                       ; $5717: $67
    ld h, l                                       ; $5718: $65

jr_019_5719:
    ld bc, $6f79                                  ; $5719: $01 $79 $6f
    ld [hl], l                                    ; $571c: $75
    ld [hl], d                                    ; $571d: $72
    jr nz, jr_019_5793                            ; $571e: $20 $73

    ld l, e                                       ; $5720: $6b
    ld l, c                                       ; $5721: $69
    ld l, h                                       ; $5722: $6c
    ld l, h                                       ; $5723: $6c
    ld [hl], e                                    ; $5724: $73

jr_019_5725:
    jr nz, jr_019_5790                            ; $5725: $20 $69

    ld l, [hl]                                    ; $5727: $6e
    ld bc, $614d                                  ; $5728: $01 $4d $61
    ld [hl], h                                    ; $572b: $74
    ld h, e                                       ; $572c: $63
    ld l, b                                       ; $572d: $68
    jr nz, jr_019_5777                            ; $572e: $20 $47

    ld h, c                                       ; $5730: $61
    ld l, l                                       ; $5731: $6d

jr_019_5732:
    ld h, l                                       ; $5732: $65
    ld [hl], e                                    ; $5733: $73
    ld l, $2e                                     ; $5734: $2e $2e
    ld l, $02                                     ; $5736: $2e $02
    ld l, $2e                                     ; $5738: $2e $2e
    ld l, $62                                     ; $573a: $2e $62
    ld [hl], l                                    ; $573c: $75
    ld [hl], h                                    ; $573d: $74
    jr nz, jr_019_57a5                            ; $573e: $20 $65

jr_019_5740:
    ld a, b                                       ; $5740: $78
    ld [hl], b                                    ; $5741: $70
    ld h, l                                       ; $5742: $65
    ld [hl], d                                    ; $5743: $72
    ld l, c                                       ; $5744: $69
    ld h, l                                       ; $5745: $65
    ld l, [hl]                                    ; $5746: $6e
    ld h, e                                       ; $5747: $63
    ld h, l                                       ; $5748: $65
    ld bc, $6873                                  ; $5749: $01 $73 $68
    ld h, c                                       ; $574c: $61
    ld l, h                                       ; $574d: $6c
    ld l, h                                       ; $574e: $6c
    jr nz, jr_019_57c4                            ; $574f: $20 $73

    ld [hl], b                                    ; $5751: $70
    ld h, l                                       ; $5752: $65
    ld h, c                                       ; $5753: $61
    ld l, e                                       ; $5754: $6b
    jr nz, jr_019_57bd                            ; $5755: $20 $66

    ld l, a                                       ; $5757: $6f
    ld [hl], d                                    ; $5758: $72
    ld bc, $6c43                                  ; $5759: $01 $43 $6c
    ld [hl], l                                    ; $575c: $75

jr_019_575d:
    ld h, d                                       ; $575d: $62
    jr nz, @+$56                                  ; $575e: $20 $54

    ld l, a                                       ; $5760: $6f
    ld [hl], l                                    ; $5761: $75
    ld [hl], d                                    ; $5762: $72
    ld l, [hl]                                    ; $5763: $6e
    ld h, c                                       ; $5764: $61
    ld l, l                                       ; $5765: $6d
    ld h, l                                       ; $5766: $65
    ld l, [hl]                                    ; $5767: $6e
    ld [hl], h                                    ; $5768: $74
    ld [hl], e                                    ; $5769: $73
    ld hl, $0003                                  ; $576a: $21 $03 $00
    ld e, c                                       ; $576d: $59
    ld l, a                                       ; $576e: $6f
    ld [hl], l                                    ; $576f: $75

jr_019_5770:
    daa                                           ; $5770: $27
    halt                                          ; $5771: $76
    ld h, l                                       ; $5772: $65
    jr nz, jr_019_57ec                            ; $5773: $20 $77

    ld l, a                                       ; $5775: $6f
    ld l, [hl]                                    ; $5776: $6e

jr_019_5777:
    jr nz, jr_019_57da                            ; $5777: $20 $61

jr_019_5779:
    ld l, h                                       ; $5779: $6c
    ld l, h                                       ; $577a: $6c
    jr nz, jr_019_57f1                            ; $577b: $20 $74

    ld l, b                                       ; $577d: $68
    ld h, l                                       ; $577e: $65
    ld bc, $616d                                  ; $577f: $01 $6d $61
    ld [hl], h                                    ; $5782: $74
    ld h, e                                       ; $5783: $63
    ld l, b                                       ; $5784: $68
    jr nz, jr_019_57ee                            ; $5785: $20 $67

    ld h, c                                       ; $5787: $61
    ld l, l                                       ; $5788: $6d
    ld h, l                                       ; $5789: $65
    ld [hl], e                                    ; $578a: $73
    jr nz, jr_019_5804                            ; $578b: $20 $77

    ld l, c                                       ; $578d: $69
    ld [hl], h                                    ; $578e: $74
    ld l, b                                       ; $578f: $68

jr_019_5790:
    ld bc, $6874                                  ; $5790: $01 $74 $68

jr_019_5793:
    ld h, l                                       ; $5793: $65
    jr nz, jr_019_57d9                            ; $5794: $20 $43

    ld l, h                                       ; $5796: $6c
    ld [hl], l                                    ; $5797: $75
    ld h, d                                       ; $5798: $62
    jr nz, jr_019_57de                            ; $5799: $20 $43

    ld l, b                                       ; $579b: $68
    ld h, c                                       ; $579c: $61
    ld l, l                                       ; $579d: $6d
    ld [hl], b                                    ; $579e: $70
    ld [hl], e                                    ; $579f: $73
    ld hl, $5902                                  ; $57a0: $21 $02 $59
    ld l, a                                       ; $57a3: $6f
    ld [hl], l                                    ; $57a4: $75

jr_019_57a5:
    jr nz, jr_019_580f                            ; $57a5: $20 $68

    ld h, c                                       ; $57a7: $61
    halt                                          ; $57a8: $76
    ld h, l                                       ; $57a9: $65
    jr nz, jr_019_581a                            ; $57aa: $20 $6e

    ld l, a                                       ; $57ac: $6f
    jr nz, jr_019_581c                            ; $57ad: $20 $6d

    ld l, a                                       ; $57af: $6f
    ld [hl], d                                    ; $57b0: $72
    ld h, l                                       ; $57b1: $65
    ld bc, $6e65                                  ; $57b2: $01 $65 $6e
    ld h, l                                       ; $57b5: $65
    ld l, l                                       ; $57b6: $6d
    ld l, c                                       ; $57b7: $69
    ld h, l                                       ; $57b8: $65
    ld [hl], e                                    ; $57b9: $73
    inc l                                         ; $57ba: $2c
    jr nz, jr_019_57c4                            ; $57bb: $20 $07

jr_019_57bd:
    ld l, $01                                     ; $57bd: $2e $01
    ld b, c                                       ; $57bf: $41
    ld [hl], e                                    ; $57c0: $73
    jr nz, jr_019_5837                            ; $57c1: $20 $74

    ld l, b                                       ; $57c3: $68

jr_019_57c4:
    ld h, l                                       ; $57c4: $65
    jr nz, jr_019_5829                            ; $57c5: $20 $62

    ld h, l                                       ; $57c7: $65
    ld [hl], e                                    ; $57c8: $73
    ld [hl], h                                    ; $57c9: $74
    jr nz, jr_019_5833                            ; $57ca: $20 $67

    ld l, a                                       ; $57cc: $6f
    ld l, h                                       ; $57cd: $6c
    ld h, [hl]                                    ; $57ce: $66
    ld h, l                                       ; $57cf: $65
    ld [hl], d                                    ; $57d0: $72
    inc l                                         ; $57d1: $2c
    ld [bc], a                                    ; $57d2: $02
    ld a, c                                       ; $57d3: $79
    ld l, a                                       ; $57d4: $6f
    ld [hl], l                                    ; $57d5: $75
    jr nz, jr_019_584b                            ; $57d6: $20 $73

    ld l, b                                       ; $57d8: $68

jr_019_57d9:
    ld h, c                                       ; $57d9: $61

jr_019_57da:
    ld l, h                                       ; $57da: $6c
    ld l, h                                       ; $57db: $6c
    jr nz, jr_019_5850                            ; $57dc: $20 $72

jr_019_57de:
    ld h, l                                       ; $57de: $65
    ld h, e                                       ; $57df: $63
    ld h, l                                       ; $57e0: $65
    ld l, c                                       ; $57e1: $69
    halt                                          ; $57e2: $76
    ld h, l                                       ; $57e3: $65
    ld bc, $6e61                                  ; $57e4: $01 $61 $6e
    jr nz, jr_019_5852                            ; $57e7: $20 $69

    ld l, [hl]                                    ; $57e9: $6e
    halt                                          ; $57ea: $76
    ld l, c                                       ; $57eb: $69

jr_019_57ec:
    ld [hl], h                                    ; $57ec: $74
    ld h, c                                       ; $57ed: $61

jr_019_57ee:
    ld [hl], h                                    ; $57ee: $74
    ld l, c                                       ; $57ef: $69
    ld l, a                                       ; $57f0: $6f

jr_019_57f1:
    ld l, [hl]                                    ; $57f1: $6e
    jr nz, jr_019_5868                            ; $57f2: $20 $74

    ld l, a                                       ; $57f4: $6f
    ld bc, $6550                                  ; $57f5: $01 $50 $65
    ld h, c                                       ; $57f8: $61
    ld h, e                                       ; $57f9: $63
    ld l, b                                       ; $57fa: $68
    daa                                           ; $57fb: $27
    ld [hl], e                                    ; $57fc: $73
    jr nz, jr_019_5842                            ; $57fd: $20 $43

    ld h, c                                       ; $57ff: $61
    ld [hl], e                                    ; $5800: $73
    ld [hl], h                                    ; $5801: $74
    ld l, h                                       ; $5802: $6c
    ld h, l                                       ; $5803: $65

jr_019_5804:
    ld l, $02                                     ; $5804: $2e $02
    ld c, c                                       ; $5806: $49
    jr nz, jr_019_5880                            ; $5807: $20 $77

    ld l, c                                       ; $5809: $69
    ld [hl], e                                    ; $580a: $73
    ld l, b                                       ; $580b: $68
    jr nz, jr_019_5887                            ; $580c: $20 $79

    ld l, a                                       ; $580e: $6f

jr_019_580f:
    ld [hl], l                                    ; $580f: $75
    jr nz, jr_019_587e                            ; $5810: $20 $6c

    ld [hl], l                                    ; $5812: $75
    ld h, e                                       ; $5813: $63
    ld l, e                                       ; $5814: $6b
    ld bc, $6761                                  ; $5815: $01 $61 $67
    ld h, c                                       ; $5818: $61
    ld l, c                                       ; $5819: $69

jr_019_581a:
    ld l, [hl]                                    ; $581a: $6e
    ld [hl], e                                    ; $581b: $73

jr_019_581c:
    ld [hl], h                                    ; $581c: $74
    jr nz, jr_019_586c                            ; $581d: $20 $4d

    ld h, c                                       ; $581f: $61
    ld [hl], d                                    ; $5820: $72
    ld l, c                                       ; $5821: $69
    ld l, a                                       ; $5822: $6f
    jr nz, jr_019_588e                            ; $5823: $20 $69

    ld l, [hl]                                    ; $5825: $6e
    ld bc, $614d                                  ; $5826: $01 $4d $61

jr_019_5829:
    ld [hl], d                                    ; $5829: $72
    ld l, c                                       ; $582a: $69
    ld l, a                                       ; $582b: $6f
    jr nz, jr_019_587a                            ; $582c: $20 $4c

    ld h, c                                       ; $582e: $61
    ld l, [hl]                                    ; $582f: $6e
    ld h, h                                       ; $5830: $64
    ld l, $03                                     ; $5831: $2e $03

jr_019_5833:
    nop                                           ; $5833: $00
    ld c, c                                       ; $5834: $49
    jr nz, jr_019_5898                            ; $5835: $20 $61

jr_019_5837:
    ld l, l                                       ; $5837: $6d
    jr nz, @+$10                                  ; $5838: $20 $0e

    rlca                                          ; $583a: $07
    inc l                                         ; $583b: $2c
    ld bc, $694c                                  ; $583c: $01 $4c $69
    ld l, [hl]                                    ; $583f: $6e
    ld l, e                                       ; $5840: $6b
    ld [hl], e                                    ; $5841: $73

jr_019_5842:
    jr nz, jr_019_5887                            ; $5842: $20 $43

    ld l, h                                       ; $5844: $6c
    ld [hl], l                                    ; $5845: $75
    ld h, d                                       ; $5846: $62
    ld bc, $6843                                  ; $5847: $01 $43 $68
    ld h, c                                       ; $584a: $61

jr_019_584b:
    ld l, l                                       ; $584b: $6d
    ld [hl], b                                    ; $584c: $70
    ld l, c                                       ; $584d: $69
    ld l, a                                       ; $584e: $6f
    ld l, [hl]                                    ; $584f: $6e

jr_019_5850:
    ld l, $02                                     ; $5850: $2e $02

jr_019_5852:
    ld c, c                                       ; $5852: $49
    jr nz, jr_019_58b6                            ; $5853: $20 $61

    ld l, l                                       ; $5855: $6d
    jr nz, jr_019_58cc                            ; $5856: $20 $74

    ld l, b                                       ; $5858: $68
    ld h, l                                       ; $5859: $65
    jr nz, @+$69                                  ; $585a: $20 $67

    ld [hl], d                                    ; $585c: $72
    ld h, l                                       ; $585d: $65
    ld h, c                                       ; $585e: $61
    ld [hl], h                                    ; $585f: $74
    ld h, l                                       ; $5860: $65
    ld [hl], e                                    ; $5861: $73
    ld [hl], h                                    ; $5862: $74
    ld bc, $666f                                  ; $5863: $01 $6f $66
    jr nz, jr_019_58dc                            ; $5866: $20 $74

jr_019_5868:
    ld l, b                                       ; $5868: $68
    ld h, l                                       ; $5869: $65
    jr nz, jr_019_58d3                            ; $586a: $20 $67

jr_019_586c:
    ld [hl], d                                    ; $586c: $72
    ld h, l                                       ; $586d: $65
    ld h, c                                       ; $586e: $61
    ld [hl], h                                    ; $586f: $74
    ld hl, $5401                                  ; $5870: $21 $01 $54
    ld l, b                                       ; $5873: $68
    ld h, l                                       ; $5874: $65
    jr nz, jr_019_58e7                            ; $5875: $20 $70

    ld l, h                                       ; $5877: $6c
    ld h, l                                       ; $5878: $65
    ld h, c                                       ; $5879: $61

jr_019_587a:
    ld [hl], e                                    ; $587a: $73
    ld [hl], l                                    ; $587b: $75
    ld [hl], d                                    ; $587c: $72
    ld h, l                                       ; $587d: $65

jr_019_587e:
    daa                                           ; $587e: $27
    ld [hl], e                                    ; $587f: $73

jr_019_5880:
    jr nz, jr_019_58ef                            ; $5880: $20 $6d

    ld l, c                                       ; $5882: $69
    ld l, [hl]                                    ; $5883: $6e
    ld h, l                                       ; $5884: $65
    ld l, $03                                     ; $5885: $2e $03

jr_019_5887:
    nop                                           ; $5887: $00
    ld c, l                                       ; $5888: $4d
    ld a, c                                       ; $5889: $79
    jr nz, jr_019_58fa                            ; $588a: $20 $6e

    ld h, c                                       ; $588c: $61
    ld l, l                                       ; $588d: $6d

jr_019_588e:
    ld h, l                                       ; $588e: $65
    jr nz, jr_019_58fa                            ; $588f: $20 $69

    ld [hl], e                                    ; $5891: $73
    ld bc, $070e                                  ; $5892: $01 $0e $07
    inc l                                         ; $5895: $2c
    jr nz, @+$68                                  ; $5896: $20 $66

jr_019_5898:
    ld l, a                                       ; $5898: $6f
    ld [hl], d                                    ; $5899: $72
    ld l, l                                       ; $589a: $6d
    ld h, l                                       ; $589b: $65
    ld [hl], d                                    ; $589c: $72
    ld bc, $694c                                  ; $589d: $01 $4c $69
    ld l, [hl]                                    ; $58a0: $6e
    ld l, e                                       ; $58a1: $6b
    ld [hl], e                                    ; $58a2: $73
    jr nz, jr_019_58e8                            ; $58a3: $20 $43

    ld l, h                                       ; $58a5: $6c
    ld [hl], l                                    ; $58a6: $75
    ld h, d                                       ; $58a7: $62
    jr nz, @+$45                                  ; $58a8: $20 $43

    ld l, b                                       ; $58aa: $68
    ld h, c                                       ; $58ab: $61
    ld l, l                                       ; $58ac: $6d
    ld [hl], b                                    ; $58ad: $70
    ld l, $02                                     ; $58ae: $2e $02
    ld d, e                                       ; $58b0: $53
    ld l, a                                       ; $58b1: $6f
    ld l, l                                       ; $58b2: $6d
    ld h, l                                       ; $58b3: $65
    jr nz, @+$66                                  ; $58b4: $20 $64

jr_019_58b6:
    ld h, c                                       ; $58b6: $61
    ld a, c                                       ; $58b7: $79
    inc l                                         ; $58b8: $2c
    jr nz, jr_019_5904                            ; $58b9: $20 $49

    jr nz, @+$75                                  ; $58bb: $20 $73

    ld l, b                                       ; $58bd: $68
    ld h, c                                       ; $58be: $61
    ld l, h                                       ; $58bf: $6c
    ld l, h                                       ; $58c0: $6c
    ld bc, $7661                                  ; $58c1: $01 $61 $76
    ld h, l                                       ; $58c4: $65
    ld l, [hl]                                    ; $58c5: $6e
    ld h, a                                       ; $58c6: $67
    ld h, l                                       ; $58c7: $65
    jr nz, jr_019_5943                            ; $58c8: $20 $79

    ld l, a                                       ; $58ca: $6f
    ld [hl], l                                    ; $58cb: $75

jr_019_58cc:
    ld [hl], d                                    ; $58cc: $72
    jr nz, jr_019_5943                            ; $58cd: $20 $74

    ld l, b                                       ; $58cf: $68
    ld h, l                                       ; $58d0: $65
    ld h, [hl]                                    ; $58d1: $66
    ld [hl], h                                    ; $58d2: $74

jr_019_58d3:
    ld bc, $666f                                  ; $58d3: $01 $6f $66
    jr nz, jr_019_5945                            ; $58d6: $20 $6d

    ld a, c                                       ; $58d8: $79
    jr nz, jr_019_594f                            ; $58d9: $20 $74

    ld l, c                                       ; $58db: $69

jr_019_58dc:
    ld [hl], h                                    ; $58dc: $74
    ld l, h                                       ; $58dd: $6c
    ld h, l                                       ; $58de: $65
    ld l, $03                                     ; $58df: $2e $03
    nop                                           ; $58e1: $00
    ld c, l                                       ; $58e2: $4d
    ld a, c                                       ; $58e3: $79
    jr nz, @+$70                                  ; $58e4: $20 $6e

    ld h, c                                       ; $58e6: $61

jr_019_58e7:
    ld l, l                                       ; $58e7: $6d

jr_019_58e8:
    ld h, l                                       ; $58e8: $65
    jr nz, @+$6b                                  ; $58e9: $20 $69

    ld [hl], e                                    ; $58eb: $73
    ld bc, $070e                                  ; $58ec: $01 $0e $07

jr_019_58ef:
    inc l                                         ; $58ef: $2c
    jr nz, jr_019_5958                            ; $58f0: $20 $66

    ld l, a                                       ; $58f2: $6f
    ld [hl], d                                    ; $58f3: $72
    ld l, l                                       ; $58f4: $6d
    ld h, l                                       ; $58f5: $65
    ld [hl], d                                    ; $58f6: $72
    ld bc, $694c                                  ; $58f7: $01 $4c $69

jr_019_58fa:
    ld l, [hl]                                    ; $58fa: $6e
    ld l, e                                       ; $58fb: $6b
    ld [hl], e                                    ; $58fc: $73
    jr nz, jr_019_5942                            ; $58fd: $20 $43

    ld l, h                                       ; $58ff: $6c
    ld [hl], l                                    ; $5900: $75
    ld h, d                                       ; $5901: $62
    jr nz, @+$45                                  ; $5902: $20 $43

jr_019_5904:
    ld l, b                                       ; $5904: $68
    ld h, c                                       ; $5905: $61
    ld l, l                                       ; $5906: $6d
    ld [hl], b                                    ; $5907: $70
    ld l, $02                                     ; $5908: $2e $02
    ld c, c                                       ; $590a: $49
    jr nz, jr_019_5979                            ; $590b: $20 $6c

    ld l, a                                       ; $590d: $6f
    ld [hl], e                                    ; $590e: $73
    ld [hl], h                                    ; $590f: $74
    jr nz, jr_019_597f                            ; $5910: $20 $6d

    ld a, c                                       ; $5912: $79
    ld bc, $7247                                  ; $5913: $01 $47 $72
    ld h, c                                       ; $5916: $61
    ld l, [hl]                                    ; $5917: $6e
    ld h, h                                       ; $5918: $64
    jr nz, jr_019_595e                            ; $5919: $20 $43

    ld l, b                                       ; $591b: $68
    ld h, c                                       ; $591c: $61
    ld l, l                                       ; $591d: $6d
    ld [hl], b                                    ; $591e: $70
    ld l, c                                       ; $591f: $69
    ld l, a                                       ; $5920: $6f
    ld l, [hl]                                    ; $5921: $6e
    jr nz, jr_019_5998                            ; $5922: $20 $74

    ld l, c                                       ; $5924: $69
    ld [hl], h                                    ; $5925: $74
    ld l, h                                       ; $5926: $6c
    ld h, l                                       ; $5927: $65
    ld bc, $6f74                                  ; $5928: $01 $74 $6f
    jr nz, jr_019_59a6                            ; $592b: $20 $79

    ld l, a                                       ; $592d: $6f
    ld [hl], l                                    ; $592e: $75
    ld l, $20                                     ; $592f: $2e $20
    rlca                                          ; $5931: $07
    ld l, $02                                     ; $5932: $2e $02
    ld d, h                                       ; $5934: $54
    ld l, b                                       ; $5935: $68
    ld h, l                                       ; $5936: $65
    ld [hl], d                                    ; $5937: $72
    ld h, l                                       ; $5938: $65
    ld h, [hl]                                    ; $5939: $66
    ld l, a                                       ; $593a: $6f
    ld [hl], d                                    ; $593b: $72
    ld h, l                                       ; $593c: $65
    inc l                                         ; $593d: $2c
    jr nz, jr_019_5989                            ; $593e: $20 $49

    jr nz, jr_019_59af                            ; $5940: $20 $6d

jr_019_5942:
    ld [hl], l                                    ; $5942: $75

jr_019_5943:
    ld [hl], e                                    ; $5943: $73
    ld [hl], h                                    ; $5944: $74

jr_019_5945:
    ld bc, $6c70                                  ; $5945: $01 $70 $6c
    ld h, c                                       ; $5948: $61
    ld a, c                                       ; $5949: $79
    jr nz, @+$77                                  ; $594a: $20 $75

    ld l, [hl]                                    ; $594c: $6e
    ld [hl], h                                    ; $594d: $74
    ld l, c                                       ; $594e: $69

jr_019_594f:
    ld l, h                                       ; $594f: $6c
    jr nz, jr_019_59bf                            ; $5950: $20 $6d

    ld a, c                                       ; $5952: $79
    ld bc, $6f68                                  ; $5953: $01 $68 $6f
    ld l, [hl]                                    ; $5956: $6e
    ld l, a                                       ; $5957: $6f

jr_019_5958:
    ld [hl], d                                    ; $5958: $72
    jr nz, jr_019_59c4                            ; $5959: $20 $69

    ld [hl], e                                    ; $595b: $73
    jr nz, jr_019_59bf                            ; $595c: $20 $61

jr_019_595e:
    halt                                          ; $595e: $76
    ld h, l                                       ; $595f: $65
    ld l, [hl]                                    ; $5960: $6e
    ld h, a                                       ; $5961: $67
    ld h, l                                       ; $5962: $65
    ld h, h                                       ; $5963: $64
    ld l, $02                                     ; $5964: $2e $02
    ld d, a                                       ; $5966: $57
    ld l, c                                       ; $5967: $69
    ld l, h                                       ; $5968: $6c
    ld l, h                                       ; $5969: $6c
    jr nz, jr_019_59e5                            ; $596a: $20 $79

    ld l, a                                       ; $596c: $6f
    ld [hl], l                                    ; $596d: $75
    jr nz, jr_019_59e0                            ; $596e: $20 $70

    ld l, h                                       ; $5970: $6c
    ld h, c                                       ; $5971: $61
    ld a, c                                       ; $5972: $79
    jr nz, @+$6f                                  ; $5973: $20 $6d

    ld h, l                                       ; $5975: $65
    ccf                                           ; $5976: $3f
    nop                                           ; $5977: $00
    ld d, h                                       ; $5978: $54

jr_019_5979:
    ld l, b                                       ; $5979: $68
    ld h, l                                       ; $597a: $65
    ld l, [hl]                                    ; $597b: $6e
    jr nz, jr_019_59ea                            ; $597c: $20 $6c

    ld h, l                                       ; $597e: $65

jr_019_597f:
    ld [hl], h                                    ; $597f: $74
    jr nz, @+$6f                                  ; $5980: $20 $6d

    ld h, l                                       ; $5982: $65
    jr nz, @+$63                                  ; $5983: $20 $61

    halt                                          ; $5985: $76
    ld h, l                                       ; $5986: $65
    ld l, [hl]                                    ; $5987: $6e
    ld h, a                                       ; $5988: $67

jr_019_5989:
    ld h, l                                       ; $5989: $65
    ld bc, $796d                                  ; $598a: $01 $6d $79
    jr nz, jr_019_5a03                            ; $598d: $20 $74

    ld l, c                                       ; $598f: $69
    ld [hl], h                                    ; $5990: $74
    ld l, h                                       ; $5991: $6c
    ld h, l                                       ; $5992: $65
    jr nz, @+$71                                  ; $5993: $20 $6f

    ld h, [hl]                                    ; $5995: $66
    jr nz, jr_019_59e4                            ; $5996: $20 $4c

jr_019_5998:
    ld l, c                                       ; $5998: $69
    ld l, [hl]                                    ; $5999: $6e
    ld l, e                                       ; $599a: $6b
    ld [hl], e                                    ; $599b: $73
    ld bc, $6c43                                  ; $599c: $01 $43 $6c
    ld [hl], l                                    ; $599f: $75
    ld h, d                                       ; $59a0: $62
    jr nz, @+$45                                  ; $59a1: $20 $43

    ld l, b                                       ; $59a3: $68
    ld h, c                                       ; $59a4: $61
    ld l, l                                       ; $59a5: $6d

jr_019_59a6:
    ld [hl], b                                    ; $59a6: $70
    ld l, c                                       ; $59a7: $69
    ld l, a                                       ; $59a8: $6f
    ld l, [hl]                                    ; $59a9: $6e
    ld hl, $0003                                  ; $59aa: $21 $03 $00
    ld b, h                                       ; $59ad: $44
    ld d, l                                       ; $59ae: $55

jr_019_59af:
    ld c, l                                       ; $59af: $4d
    ld c, l                                       ; $59b0: $4d
    ld e, c                                       ; $59b1: $59
    nop                                           ; $59b2: $00
    ld b, h                                       ; $59b3: $44
    ld d, l                                       ; $59b4: $55
    ld c, l                                       ; $59b5: $4d
    ld c, l                                       ; $59b6: $4d
    ld e, c                                       ; $59b7: $59
    nop                                           ; $59b8: $00
    ld c, l                                       ; $59b9: $4d
    ld a, c                                       ; $59ba: $79
    jr nz, jr_019_5a1f                            ; $59bb: $20 $62

    ld h, c                                       ; $59bd: $61
    ld l, h                                       ; $59be: $6c

jr_019_59bf:
    ld l, h                                       ; $59bf: $6c
    jr nz, @+$74                                  ; $59c0: $20 $72

    ld l, a                                       ; $59c2: $6f
    ld l, h                                       ; $59c3: $6c

jr_019_59c4:
    ld l, h                                       ; $59c4: $6c
    ld h, l                                       ; $59c5: $65
    ld h, h                                       ; $59c6: $64
    ld bc, $666f                                  ; $59c7: $01 $6f $66
    ld h, [hl]                                    ; $59ca: $66
    jr nz, jr_019_5a3c                            ; $59cb: $20 $6f

    ld h, [hl]                                    ; $59cd: $66
    jr nz, jr_019_5a44                            ; $59ce: $20 $74

    ld l, b                                       ; $59d0: $68
    ld h, l                                       ; $59d1: $65
    jr nz, jr_019_5a41                            ; $59d2: $20 $6d

    ld l, a                                       ; $59d4: $6f
    ld [hl], l                                    ; $59d5: $75
    ld l, [hl]                                    ; $59d6: $6e
    ld h, h                                       ; $59d7: $64
    ld bc, $6e61                                  ; $59d8: $01 $61 $6e
    ld h, h                                       ; $59db: $64
    jr nz, @+$6b                                  ; $59dc: $20 $69

    ld l, [hl]                                    ; $59de: $6e
    ld [hl], h                                    ; $59df: $74

jr_019_59e0:
    ld l, a                                       ; $59e0: $6f
    jr nz, jr_019_5a57                            ; $59e1: $20 $74

    ld l, b                                       ; $59e3: $68

jr_019_59e4:
    ld h, l                                       ; $59e4: $65

jr_019_59e5:
    jr nz, jr_019_5a57                            ; $59e5: $20 $70

    ld l, a                                       ; $59e7: $6f
    ld l, [hl]                                    ; $59e8: $6e
    ld h, h                                       ; $59e9: $64

jr_019_59ea:
    ld hl, $0003                                  ; $59ea: $21 $03 $00
    ld c, c                                       ; $59ed: $49
    jr nz, jr_019_5a64                            ; $59ee: $20 $74

    ld l, a                                       ; $59f0: $6f
    ld l, h                                       ; $59f1: $6c
    ld h, h                                       ; $59f2: $64
    jr nz, @+$6a                                  ; $59f3: $20 $68

    ld l, c                                       ; $59f5: $69
    ld l, l                                       ; $59f6: $6d
    jr nz, jr_019_5a62                            ; $59f7: $20 $69

    ld [hl], h                                    ; $59f9: $74
    daa                                           ; $59fa: $27
    ld [hl], e                                    ; $59fb: $73
    ld bc, $2061                                  ; $59fc: $01 $61 $20
    ld [hl], d                                    ; $59ff: $72
    ld l, c                                       ; $5a00: $69
    ld [hl], e                                    ; $5a01: $73
    ld l, e                                       ; $5a02: $6b

jr_019_5a03:
    jr nz, jr_019_5a79                            ; $5a03: $20 $74

    ld l, a                                       ; $5a05: $6f
    jr nz, @+$63                                  ; $5a06: $20 $61

    ld l, c                                       ; $5a08: $69
    ld l, l                                       ; $5a09: $6d
    jr nz, @+$76                                  ; $5a0a: $20 $74

    ld l, a                                       ; $5a0c: $6f
    ld l, a                                       ; $5a0d: $6f
    ld bc, $6c63                                  ; $5a0e: $01 $63 $6c
    ld l, a                                       ; $5a11: $6f
    ld [hl], e                                    ; $5a12: $73
    ld h, l                                       ; $5a13: $65
    jr nz, @+$76                                  ; $5a14: $20 $74

    ld l, a                                       ; $5a16: $6f
    jr nz, jr_019_5a8d                            ; $5a17: $20 $74

    ld l, b                                       ; $5a19: $68
    ld h, l                                       ; $5a1a: $65
    jr nz, jr_019_5a94                            ; $5a1b: $20 $77

    ld h, c                                       ; $5a1d: $61
    ld [hl], h                                    ; $5a1e: $74

jr_019_5a1f:
    ld h, l                                       ; $5a1f: $65
    ld [hl], d                                    ; $5a20: $72
    ld l, $03                                     ; $5a21: $2e $03
    nop                                           ; $5a23: $00
    ld b, [hl]                                    ; $5a24: $46
    ld [hl], d                                    ; $5a25: $72
    ld l, a                                       ; $5a26: $6f
    ld l, l                                       ; $5a27: $6d
    jr nz, jr_019_5a92                            ; $5a28: $20 $68

    ld h, l                                       ; $5a2a: $65
    ld [hl], d                                    ; $5a2b: $72
    ld h, l                                       ; $5a2c: $65
    inc l                                         ; $5a2d: $2c
    jr nz, jr_019_5aa9                            ; $5a2e: $20 $79

    ld l, a                                       ; $5a30: $6f
    ld [hl], l                                    ; $5a31: $75
    ld bc, $6163                                  ; $5a32: $01 $63 $61
    ld l, [hl]                                    ; $5a35: $6e
    jr nz, jr_019_5aaf                            ; $5a36: $20 $77

    ld h, c                                       ; $5a38: $61
    ld [hl], h                                    ; $5a39: $74
    ld h, e                                       ; $5a3a: $63
    ld l, b                                       ; $5a3b: $68

jr_019_5a3c:
    jr nz, jr_019_5ab2                            ; $5a3c: $20 $74

    ld l, b                                       ; $5a3e: $68
    ld h, l                                       ; $5a3f: $65
    ld l, l                                       ; $5a40: $6d

jr_019_5a41:
    ld bc, $616d                                  ; $5a41: $01 $6d $61

jr_019_5a44:
    ld l, e                                       ; $5a44: $6b
    ld h, l                                       ; $5a45: $65
    jr nz, jr_019_5abb                            ; $5a46: $20 $73

    ld l, c                                       ; $5a48: $69
    ld l, h                                       ; $5a49: $6c
    ld l, h                                       ; $5a4a: $6c
    ld a, c                                       ; $5a4b: $79
    jr nz, jr_019_5abb                            ; $5a4c: $20 $6d

    ld l, c                                       ; $5a4e: $69
    ld [hl], e                                    ; $5a4f: $73
    ld [hl], h                                    ; $5a50: $74
    ld h, c                                       ; $5a51: $61
    ld l, e                                       ; $5a52: $6b
    ld h, l                                       ; $5a53: $65
    ld [hl], e                                    ; $5a54: $73
    ld l, $02                                     ; $5a55: $2e $02

jr_019_5a57:
    ld c, l                                       ; $5a57: $4d
    ld h, c                                       ; $5a58: $61
    ld [hl], d                                    ; $5a59: $72
    ld l, c                                       ; $5a5a: $69
    ld l, a                                       ; $5a5b: $6f
    jr nz, @+$79                                  ; $5a5c: $20 $77

    ld l, a                                       ; $5a5e: $6f
    ld [hl], l                                    ; $5a5f: $75
    ld l, h                                       ; $5a60: $6c
    ld h, h                                       ; $5a61: $64

jr_019_5a62:
    jr nz, jr_019_5ad2                            ; $5a62: $20 $6e

jr_019_5a64:
    ld h, l                                       ; $5a64: $65
    halt                                          ; $5a65: $76
    ld h, l                                       ; $5a66: $65
    ld [hl], d                                    ; $5a67: $72
    ld bc, $696d                                  ; $5a68: $01 $6d $69
    ld [hl], e                                    ; $5a6b: $73
    ld [hl], e                                    ; $5a6c: $73
    jr nz, @+$63                                  ; $5a6d: $20 $61

    jr nz, jr_019_5ae4                            ; $5a6f: $20 $73

    ld l, b                                       ; $5a71: $68
    ld l, a                                       ; $5a72: $6f
    ld [hl], h                                    ; $5a73: $74
    ld bc, $696c                                  ; $5a74: $01 $6c $69
    ld l, e                                       ; $5a77: $6b
    ld h, l                                       ; $5a78: $65

jr_019_5a79:
    jr nz, jr_019_5aef                            ; $5a79: $20 $74

    ld l, b                                       ; $5a7b: $68
    ld h, c                                       ; $5a7c: $61
    ld [hl], h                                    ; $5a7d: $74
    ld hl, $0003                                  ; $5a7e: $21 $03 $00
    ld d, h                                       ; $5a81: $54
    ld l, b                                       ; $5a82: $68
    ld h, l                                       ; $5a83: $65
    jr nz, @+$45                                  ; $5a84: $20 $43

    ld l, h                                       ; $5a86: $6c
    ld [hl], l                                    ; $5a87: $75
    ld h, d                                       ; $5a88: $62
    jr nz, jr_019_5ace                            ; $5a89: $20 $43

    ld l, b                                       ; $5a8b: $68
    ld h, c                                       ; $5a8c: $61

jr_019_5a8d:
    ld l, l                                       ; $5a8d: $6d
    ld [hl], b                                    ; $5a8e: $70
    ld [hl], e                                    ; $5a8f: $73
    jr nz, jr_019_5af3                            ; $5a90: $20 $61

jr_019_5a92:
    ld [hl], d                                    ; $5a92: $72
    ld h, l                                       ; $5a93: $65

jr_019_5a94:
    ld bc, $6568                                  ; $5a94: $01 $68 $65
    ld [hl], d                                    ; $5a97: $72
    ld h, l                                       ; $5a98: $65
    jr nz, jr_019_5b04                            ; $5a99: $20 $69

    ld l, [hl]                                    ; $5a9b: $6e
    jr nz, jr_019_5b12                            ; $5a9c: $20 $74

    ld l, b                                       ; $5a9e: $68
    ld h, l                                       ; $5a9f: $65
    ld bc, $6f6c                                  ; $5aa0: $01 $6c $6f
    ld [hl], l                                    ; $5aa3: $75
    ld l, [hl]                                    ; $5aa4: $6e
    ld h, a                                       ; $5aa5: $67
    ld h, l                                       ; $5aa6: $65
    jr nz, jr_019_5b0a                            ; $5aa7: $20 $61

jr_019_5aa9:
    ld h, a                                       ; $5aa9: $67
    ld h, c                                       ; $5aaa: $61
    ld l, c                                       ; $5aab: $69
    ld l, [hl]                                    ; $5aac: $6e
    jr nz, jr_019_5b23                            ; $5aad: $20 $74

jr_019_5aaf:
    ld l, a                                       ; $5aaf: $6f
    ld h, h                                       ; $5ab0: $64
    ld h, c                                       ; $5ab1: $61

jr_019_5ab2:
    ld a, c                                       ; $5ab2: $79
    ld l, $03                                     ; $5ab3: $2e $03
    nop                                           ; $5ab5: $00
    ld d, h                                       ; $5ab6: $54
    ld l, b                                       ; $5ab7: $68
    ld h, l                                       ; $5ab8: $65
    jr nz, jr_019_5b20                            ; $5ab9: $20 $65

jr_019_5abb:
    ld a, b                                       ; $5abb: $78
    dec l                                         ; $5abc: $2d
    ld b, e                                       ; $5abd: $43
    ld l, h                                       ; $5abe: $6c
    ld [hl], l                                    ; $5abf: $75
    ld h, d                                       ; $5ac0: $62
    ld bc, $6843                                  ; $5ac1: $01 $43 $68
    ld h, c                                       ; $5ac4: $61
    ld l, l                                       ; $5ac5: $6d
    ld [hl], b                                    ; $5ac6: $70
    ld [hl], e                                    ; $5ac7: $73
    jr nz, jr_019_5b2b                            ; $5ac8: $20 $61

    ld [hl], d                                    ; $5aca: $72
    ld h, l                                       ; $5acb: $65
    jr nz, jr_019_5b37                            ; $5acc: $20 $69

jr_019_5ace:
    ld l, [hl]                                    ; $5ace: $6e
    jr nz, jr_019_5b45                            ; $5acf: $20 $74

    ld l, b                                       ; $5ad1: $68

jr_019_5ad2:
    ld h, l                                       ; $5ad2: $65
    ld bc, $6f6c                                  ; $5ad3: $01 $6c $6f
    ld [hl], l                                    ; $5ad6: $75
    ld l, [hl]                                    ; $5ad7: $6e
    ld h, a                                       ; $5ad8: $67
    ld h, l                                       ; $5ad9: $65
    jr nz, jr_019_5b3d                            ; $5ada: $20 $61

    ld h, a                                       ; $5adc: $67
    ld h, c                                       ; $5add: $61
    ld l, c                                       ; $5ade: $69
    ld l, [hl]                                    ; $5adf: $6e
    jr nz, jr_019_5b56                            ; $5ae0: $20 $74

    ld l, a                                       ; $5ae2: $6f
    ld h, h                                       ; $5ae3: $64

jr_019_5ae4:
    ld h, c                                       ; $5ae4: $61
    ld a, c                                       ; $5ae5: $79
    ld l, $03                                     ; $5ae6: $2e $03
    nop                                           ; $5ae8: $00
    ld d, h                                       ; $5ae9: $54
    ld l, b                                       ; $5aea: $68
    ld h, l                                       ; $5aeb: $65
    jr nz, jr_019_5b4f                            ; $5aec: $20 $61

    ld [hl], d                                    ; $5aee: $72

jr_019_5aef:
    ld h, l                                       ; $5aef: $65
    ld h, c                                       ; $5af0: $61
    jr nz, jr_019_5b68                            ; $5af1: $20 $75

jr_019_5af3:
    ld [hl], b                                    ; $5af3: $70
    jr nz, jr_019_5b6a                            ; $5af4: $20 $74

    ld l, b                                       ; $5af6: $68
    ld h, l                                       ; $5af7: $65
    ld bc, $7473                                  ; $5af8: $01 $73 $74
    ld h, l                                       ; $5afb: $65
    ld [hl], b                                    ; $5afc: $70
    ld [hl], e                                    ; $5afd: $73
    jr nz, jr_019_5b69                            ; $5afe: $20 $69

    ld [hl], e                                    ; $5b00: $73
    jr nz, @+$76                                  ; $5b01: $20 $74

    ld l, b                                       ; $5b03: $68

jr_019_5b04:
    ld h, l                                       ; $5b04: $65
    jr nz, @+$45                                  ; $5b05: $20 $43

    ld l, h                                       ; $5b07: $6c
    ld [hl], l                                    ; $5b08: $75
    ld h, d                                       ; $5b09: $62

jr_019_5b0a:
    ld bc, $6843                                  ; $5b0a: $01 $43 $68
    ld h, c                                       ; $5b0d: $61
    ld l, l                                       ; $5b0e: $6d
    ld [hl], b                                    ; $5b0f: $70
    ld [hl], e                                    ; $5b10: $73
    daa                                           ; $5b11: $27

jr_019_5b12:
    jr nz, jr_019_5b7c                            ; $5b12: $20 $68

    ld h, c                                       ; $5b14: $61
    ld l, [hl]                                    ; $5b15: $6e
    ld h, a                                       ; $5b16: $67
    dec l                                         ; $5b17: $2d
    ld l, a                                       ; $5b18: $6f
    ld [hl], l                                    ; $5b19: $75
    ld [hl], h                                    ; $5b1a: $74
    ld l, $02                                     ; $5b1b: $2e $02
    ld d, h                                       ; $5b1d: $54
    ld l, b                                       ; $5b1e: $68
    ld h, l                                       ; $5b1f: $65

jr_019_5b20:
    jr nz, @+$75                                  ; $5b20: $20 $73

    ld h, l                                       ; $5b22: $65

jr_019_5b23:
    ld h, c                                       ; $5b23: $61
    ld [hl], h                                    ; $5b24: $74
    ld [hl], e                                    ; $5b25: $73
    jr nz, jr_019_5b9f                            ; $5b26: $20 $77

    ld l, c                                       ; $5b28: $69
    ld [hl], h                                    ; $5b29: $74
    ld l, b                                       ; $5b2a: $68

jr_019_5b2b:
    jr nz, jr_019_5ba1                            ; $5b2b: $20 $74

    ld l, b                                       ; $5b2d: $68
    ld h, l                                       ; $5b2e: $65
    ld bc, $6562                                  ; $5b2f: $01 $62 $65
    ld [hl], e                                    ; $5b32: $73
    ld [hl], h                                    ; $5b33: $74
    jr nz, jr_019_5bac                            ; $5b34: $20 $76

    ld l, c                                       ; $5b36: $69

jr_019_5b37:
    ld h, l                                       ; $5b37: $65
    ld [hl], a                                    ; $5b38: $77
    ld [hl], e                                    ; $5b39: $73
    jr nz, jr_019_5b9d                            ; $5b3a: $20 $61

    ld [hl], d                                    ; $5b3c: $72

jr_019_5b3d:
    ld h, l                                       ; $5b3d: $65
    jr nz, jr_019_5bb2                            ; $5b3e: $20 $72

    ld h, l                                       ; $5b40: $65
    dec l                                         ; $5b41: $2d
    ld bc, $6573                                  ; $5b42: $01 $73 $65

jr_019_5b45:
    ld [hl], d                                    ; $5b45: $72
    halt                                          ; $5b46: $76
    ld h, l                                       ; $5b47: $65
    ld h, h                                       ; $5b48: $64
    jr nz, @+$68                                  ; $5b49: $20 $66

    ld l, a                                       ; $5b4b: $6f
    ld [hl], d                                    ; $5b4c: $72
    jr nz, jr_019_5bc3                            ; $5b4d: $20 $74

jr_019_5b4f:
    ld l, b                                       ; $5b4f: $68
    ld h, l                                       ; $5b50: $65
    ld l, l                                       ; $5b51: $6d
    ld l, $03                                     ; $5b52: $2e $03
    nop                                           ; $5b54: $00
    ld d, h                                       ; $5b55: $54

jr_019_5b56:
    ld l, b                                       ; $5b56: $68
    ld h, l                                       ; $5b57: $65
    jr nz, jr_019_5bbb                            ; $5b58: $20 $61

    ld [hl], d                                    ; $5b5a: $72
    ld h, l                                       ; $5b5b: $65
    ld h, c                                       ; $5b5c: $61
    jr nz, jr_019_5bd4                            ; $5b5d: $20 $75

    ld [hl], b                                    ; $5b5f: $70
    jr nz, jr_019_5bd6                            ; $5b60: $20 $74

    ld l, b                                       ; $5b62: $68
    ld h, l                                       ; $5b63: $65
    ld bc, $7473                                  ; $5b64: $01 $73 $74
    ld h, l                                       ; $5b67: $65

jr_019_5b68:
    ld [hl], b                                    ; $5b68: $70

jr_019_5b69:
    ld [hl], e                                    ; $5b69: $73

jr_019_5b6a:
    jr nz, @+$6b                                  ; $5b6a: $20 $69

    ld [hl], e                                    ; $5b6c: $73
    jr nz, @+$68                                  ; $5b6d: $20 $66

    ld l, a                                       ; $5b6f: $6f
    ld [hl], d                                    ; $5b70: $72
    jr nz, jr_019_5be7                            ; $5b71: $20 $74

    ld l, b                                       ; $5b73: $68
    ld h, l                                       ; $5b74: $65
    ld bc, $7865                                  ; $5b75: $01 $65 $78
    dec l                                         ; $5b78: $2d
    ld b, e                                       ; $5b79: $43
    ld l, h                                       ; $5b7a: $6c
    ld [hl], l                                    ; $5b7b: $75

jr_019_5b7c:
    ld h, d                                       ; $5b7c: $62
    jr nz, @+$45                                  ; $5b7d: $20 $43

    ld l, b                                       ; $5b7f: $68
    ld h, c                                       ; $5b80: $61
    ld l, l                                       ; $5b81: $6d
    ld [hl], b                                    ; $5b82: $70
    ld [hl], e                                    ; $5b83: $73
    ld l, $02                                     ; $5b84: $2e $02
    ld d, h                                       ; $5b86: $54
    ld l, b                                       ; $5b87: $68
    ld h, l                                       ; $5b88: $65
    jr nz, jr_019_5bfe                            ; $5b89: $20 $73

    ld h, l                                       ; $5b8b: $65
    ld h, c                                       ; $5b8c: $61
    ld [hl], h                                    ; $5b8d: $74
    ld [hl], e                                    ; $5b8e: $73
    jr nz, jr_019_5c08                            ; $5b8f: $20 $77

    ld l, c                                       ; $5b91: $69
    ld [hl], h                                    ; $5b92: $74
    ld l, b                                       ; $5b93: $68
    jr nz, jr_019_5c0a                            ; $5b94: $20 $74

    ld l, b                                       ; $5b96: $68
    ld h, l                                       ; $5b97: $65
    ld bc, $6562                                  ; $5b98: $01 $62 $65
    ld [hl], e                                    ; $5b9b: $73
    ld [hl], h                                    ; $5b9c: $74

jr_019_5b9d:
    jr nz, jr_019_5c15                            ; $5b9d: $20 $76

jr_019_5b9f:
    ld l, c                                       ; $5b9f: $69
    ld h, l                                       ; $5ba0: $65

jr_019_5ba1:
    ld [hl], a                                    ; $5ba1: $77
    ld [hl], e                                    ; $5ba2: $73
    jr nz, jr_019_5c06                            ; $5ba3: $20 $61

    ld [hl], d                                    ; $5ba5: $72
    ld h, l                                       ; $5ba6: $65
    ld bc, $6572                                  ; $5ba7: $01 $72 $65
    ld [hl], e                                    ; $5baa: $73
    ld h, l                                       ; $5bab: $65

jr_019_5bac:
    ld [hl], d                                    ; $5bac: $72
    halt                                          ; $5bad: $76
    ld h, l                                       ; $5bae: $65
    ld h, h                                       ; $5baf: $64
    jr nz, jr_019_5c18                            ; $5bb0: $20 $66

jr_019_5bb2:
    ld l, a                                       ; $5bb2: $6f
    ld [hl], d                                    ; $5bb3: $72
    jr nz, jr_019_5c2a                            ; $5bb4: $20 $74

    ld l, b                                       ; $5bb6: $68
    ld h, l                                       ; $5bb7: $65
    ld l, l                                       ; $5bb8: $6d
    ld l, $03                                     ; $5bb9: $2e $03

jr_019_5bbb:
    nop                                           ; $5bbb: $00
    ld b, a                                       ; $5bbc: $47
    ld l, a                                       ; $5bbd: $6f
    ld [hl], h                                    ; $5bbe: $74
    jr nz, @+$63                                  ; $5bbf: $20 $61

    jr nz, @+$75                                  ; $5bc1: $20 $73

jr_019_5bc3:
    ld h, l                                       ; $5bc3: $65
    ld h, e                                       ; $5bc4: $63
    ld l, a                                       ; $5bc5: $6f
    ld l, [hl]                                    ; $5bc6: $6e
    ld h, h                                       ; $5bc7: $64
    ccf                                           ; $5bc8: $3f
    nop                                           ; $5bc9: $00
    ld d, h                                       ; $5bca: $54
    ld h, e                                       ; $5bcb: $63
    ld l, b                                       ; $5bcc: $68
    ld hl, $4920                                  ; $5bcd: $21 $20 $49
    jr nz, jr_019_5c49                            ; $5bd0: $20 $77

    ld h, c                                       ; $5bd2: $61
    ld [hl], e                                    ; $5bd3: $73

jr_019_5bd4:
    jr nz, jr_019_5c3d                            ; $5bd4: $20 $67

jr_019_5bd6:
    ld l, a                                       ; $5bd6: $6f
    ld l, [hl]                                    ; $5bd7: $6e
    ld l, [hl]                                    ; $5bd8: $6e
    ld h, c                                       ; $5bd9: $61
    ld bc, $6574                                  ; $5bda: $01 $74 $65
    ld l, h                                       ; $5bdd: $6c
    ld l, h                                       ; $5bde: $6c
    jr nz, jr_019_5c5a                            ; $5bdf: $20 $79

    ld l, a                                       ; $5be1: $6f
    ld [hl], l                                    ; $5be2: $75
    jr nz, jr_019_5c58                            ; $5be3: $20 $73

    ld l, a                                       ; $5be5: $6f
    ld l, l                                       ; $5be6: $6d

jr_019_5be7:
    ld h, l                                       ; $5be7: $65
    ld [hl], h                                    ; $5be8: $74
    ld l, b                                       ; $5be9: $68
    ld l, c                                       ; $5bea: $69
    ld l, [hl]                                    ; $5beb: $6e
    ld h, a                                       ; $5bec: $67
    ld hl, $0003                                  ; $5bed: $21 $03 $00
    ld c, a                                       ; $5bf0: $4f
    ld l, [hl]                                    ; $5bf1: $6e
    jr nz, jr_019_5c55                            ; $5bf2: $20 $61

    jr nz, jr_019_5c58                            ; $5bf4: $20 $62

    ld [hl], l                                    ; $5bf6: $75
    ld l, [hl]                                    ; $5bf7: $6e
    ld l, e                                       ; $5bf8: $6b
    ld h, l                                       ; $5bf9: $65
    ld [hl], d                                    ; $5bfa: $72
    jr nz, @+$75                                  ; $5bfb: $20 $73

    ld l, b                                       ; $5bfd: $68

jr_019_5bfe:
    ld l, a                                       ; $5bfe: $6f
    ld [hl], h                                    ; $5bff: $74
    inc l                                         ; $5c00: $2c
    ld bc, $2049                                  ; $5c01: $01 $49 $20
    ld h, e                                       ; $5c04: $63
    ld l, b                                       ; $5c05: $68

jr_019_5c06:
    ld l, c                                       ; $5c06: $69
    ld [hl], b                                    ; $5c07: $70

jr_019_5c08:
    ld [hl], b                                    ; $5c08: $70
    ld h, l                                       ; $5c09: $65

jr_019_5c0a:
    ld h, h                                       ; $5c0a: $64
    jr nz, jr_019_5c76                            ; $5c0b: $20 $69

    ld [hl], h                                    ; $5c0d: $74
    jr nz, jr_019_5c79                            ; $5c0e: $20 $69

    ld l, [hl]                                    ; $5c10: $6e
    ld l, $01                                     ; $5c11: $2e $01
    ld c, c                                       ; $5c13: $49
    daa                                           ; $5c14: $27

jr_019_5c15:
    ld l, l                                       ; $5c15: $6d
    jr nz, jr_019_5c8b                            ; $5c16: $20 $73

jr_019_5c18:
    ld l, a                                       ; $5c18: $6f
    jr nz, jr_019_5c80                            ; $5c19: $20 $65

    ld a, b                                       ; $5c1b: $78
    ld h, e                                       ; $5c1c: $63
    ld l, c                                       ; $5c1d: $69
    ld [hl], h                                    ; $5c1e: $74
    ld h, l                                       ; $5c1f: $65
    ld h, h                                       ; $5c20: $64
    ld hl, $0003                                  ; $5c21: $21 $03 $00
    ld c, c                                       ; $5c24: $49
    jr nz, @+$76                                  ; $5c25: $20 $74

    ld l, a                                       ; $5c27: $6f
    ld [hl], b                                    ; $5c28: $70
    ld [hl], b                                    ; $5c29: $70

jr_019_5c2a:
    ld h, l                                       ; $5c2a: $65
    ld h, h                                       ; $5c2b: $64
    jr nz, jr_019_5c8f                            ; $5c2c: $20 $61

    jr nz, jr_019_5c92                            ; $5c2e: $20 $62

    ld [hl], l                                    ; $5c30: $75
    ld l, [hl]                                    ; $5c31: $6e
    ld l, e                                       ; $5c32: $6b
    ld h, l                                       ; $5c33: $65
    ld [hl], d                                    ; $5c34: $72
    ld bc, $6873                                  ; $5c35: $01 $73 $68
    ld l, a                                       ; $5c38: $6f
    ld [hl], h                                    ; $5c39: $74
    jr nz, jr_019_5c9d                            ; $5c3a: $20 $61

    ld l, [hl]                                    ; $5c3c: $6e

jr_019_5c3d:
    ld h, h                                       ; $5c3d: $64
    jr nz, jr_019_5ca9                            ; $5c3e: $20 $69

    ld [hl], h                                    ; $5c40: $74
    jr nz, jr_019_5cad                            ; $5c41: $20 $6a

    ld [hl], l                                    ; $5c43: $75
    ld [hl], e                                    ; $5c44: $73
    ld [hl], h                                    ; $5c45: $74
    ld bc, $6c66                                  ; $5c46: $01 $66 $6c

jr_019_5c49:
    ld h, l                                       ; $5c49: $65
    ld [hl], a                                    ; $5c4a: $77
    ld hl, $4220                                  ; $5c4b: $21 $20 $42
    ld [hl], l                                    ; $5c4e: $75
    ld [hl], h                                    ; $5c4f: $74
    jr nz, jr_019_5cbb                            ; $5c50: $20 $69

    ld [hl], h                                    ; $5c52: $74
    jr nz, jr_019_5cbd                            ; $5c53: $20 $68

jr_019_5c55:
    ld l, c                                       ; $5c55: $69
    ld [hl], h                                    ; $5c56: $74
    ld [bc], a                                    ; $5c57: $02

jr_019_5c58:
    ld [hl], h                                    ; $5c58: $74
    ld l, b                                       ; $5c59: $68

jr_019_5c5a:
    ld h, l                                       ; $5c5a: $65
    jr nz, jr_019_5ccd                            ; $5c5b: $20 $70

    ld l, c                                       ; $5c5d: $69
    ld l, [hl]                                    ; $5c5e: $6e
    jr nz, jr_019_5cc2                            ; $5c5f: $20 $61

    ld l, [hl]                                    ; $5c61: $6e
    ld h, h                                       ; $5c62: $64
    jr nz, @+$75                                  ; $5c63: $20 $73

    ld h, c                                       ; $5c65: $61
    ld l, [hl]                                    ; $5c66: $6e
    ld l, e                                       ; $5c67: $6b
    ld hl, $5301                                  ; $5c68: $21 $01 $53
    ld l, b                                       ; $5c6b: $68
    ld l, a                                       ; $5c6c: $6f
    ld [hl], h                                    ; $5c6d: $74
    ld [hl], e                                    ; $5c6e: $73
    jr nz, jr_019_5cdd                            ; $5c6f: $20 $6c

    ld l, c                                       ; $5c71: $69
    ld l, e                                       ; $5c72: $6b
    ld h, l                                       ; $5c73: $65
    jr nz, jr_019_5cea                            ; $5c74: $20 $74

jr_019_5c76:
    ld l, b                                       ; $5c76: $68
    ld h, c                                       ; $5c77: $61
    ld [hl], h                                    ; $5c78: $74

jr_019_5c79:
    ld bc, $656b                                  ; $5c79: $01 $6b $65
    ld h, l                                       ; $5c7c: $65
    ld [hl], b                                    ; $5c7d: $70
    jr nz, jr_019_5ced                            ; $5c7e: $20 $6d

jr_019_5c80:
    ld h, l                                       ; $5c80: $65
    jr nz, jr_019_5ceb                            ; $5c81: $20 $68

    ld l, a                                       ; $5c83: $6f
    ld l, a                                       ; $5c84: $6f
    ld l, e                                       ; $5c85: $6b
    ld h, l                                       ; $5c86: $65
    ld h, h                                       ; $5c87: $64
    ld hl, $0003                                  ; $5c88: $21 $03 $00

jr_019_5c8b:
    ld l, $2e                                     ; $5c8b: $2e $2e
    ld l, $73                                     ; $5c8d: $2e $73

jr_019_5c8f:
    ld l, a                                       ; $5c8f: $6f
    jr nz, @+$4b                                  ; $5c90: $20 $49

jr_019_5c92:
    jr nz, jr_019_5cf5                            ; $5c92: $20 $61

    ld l, c                                       ; $5c94: $69
    ld l, l                                       ; $5c95: $6d
    jr nz, jr_019_5cfe                            ; $5c96: $20 $66

    ld l, a                                       ; $5c98: $6f
    ld [hl], d                                    ; $5c99: $72
    jr nz, @+$76                                  ; $5c9a: $20 $74

    ld l, b                                       ; $5c9c: $68

jr_019_5c9d:
    ld h, l                                       ; $5c9d: $65
    ld bc, $7267                                  ; $5c9e: $01 $67 $72
    ld h, l                                       ; $5ca1: $65
    ld h, l                                       ; $5ca2: $65
    ld l, [hl]                                    ; $5ca3: $6e
    jr nz, jr_019_5d0c                            ; $5ca4: $20 $66

    ld [hl], d                                    ; $5ca6: $72
    ld l, a                                       ; $5ca7: $6f
    ld l, l                                       ; $5ca8: $6d

jr_019_5ca9:
    jr nz, @+$64                                  ; $5ca9: $20 $62

    ld h, l                                       ; $5cab: $65
    ld [hl], h                                    ; $5cac: $74

jr_019_5cad:
    ld [hl], a                                    ; $5cad: $77
    ld h, l                                       ; $5cae: $65
    ld h, l                                       ; $5caf: $65
    ld l, [hl]                                    ; $5cb0: $6e
    ld bc, $6874                                  ; $5cb1: $01 $74 $68
    ld h, l                                       ; $5cb4: $65
    ld [hl], e                                    ; $5cb5: $73
    ld h, l                                       ; $5cb6: $65
    jr nz, jr_019_5ceb                            ; $5cb7: $20 $32

    jr nz, jr_019_5d2f                            ; $5cb9: $20 $74

jr_019_5cbb:
    ld [hl], d                                    ; $5cbb: $72
    ld h, l                                       ; $5cbc: $65

jr_019_5cbd:
    ld h, l                                       ; $5cbd: $65
    ld [hl], e                                    ; $5cbe: $73
    ld l, $20                                     ; $5cbf: $2e $20
    ld c, c                                       ; $5cc1: $49

jr_019_5cc2:
    daa                                           ; $5cc2: $27
    ld l, l                                       ; $5cc3: $6d
    ld [bc], a                                    ; $5cc4: $02
    ld [hl], e                                    ; $5cc5: $73
    ld [hl], l                                    ; $5cc6: $75
    ld [hl], d                                    ; $5cc7: $72
    ld h, l                                       ; $5cc8: $65
    jr nz, @+$4b                                  ; $5cc9: $20 $49

    daa                                           ; $5ccb: $27
    halt                                          ; $5ccc: $76

jr_019_5ccd:
    ld h, l                                       ; $5ccd: $65
    jr nz, jr_019_5d37                            ; $5cce: $20 $67

    ld l, a                                       ; $5cd0: $6f
    ld [hl], h                                    ; $5cd1: $74
    jr nz, @+$6b                                  ; $5cd2: $20 $69

    ld [hl], h                                    ; $5cd4: $74
    inc l                                         ; $5cd5: $2c
    ld bc, $7562                                  ; $5cd6: $01 $62 $75
    ld [hl], h                                    ; $5cd9: $74
    jr nz, @+$6b                                  ; $5cda: $20 $69

    ld [hl], h                                    ; $5cdc: $74

jr_019_5cdd:
    jr nz, @+$6a                                  ; $5cdd: $20 $68

    ld l, c                                       ; $5cdf: $69
    ld [hl], h                                    ; $5ce0: $74
    ld [hl], e                                    ; $5ce1: $73
    jr nz, @+$63                                  ; $5ce2: $20 $61

    ld bc, $7262                                  ; $5ce4: $01 $62 $72
    ld h, c                                       ; $5ce7: $61
    ld l, [hl]                                    ; $5ce8: $6e
    ld h, e                                       ; $5ce9: $63

jr_019_5cea:
    ld l, b                                       ; $5cea: $68

jr_019_5ceb:
    jr nz, jr_019_5d4e                            ; $5ceb: $20 $61

jr_019_5ced:
    ld l, [hl]                                    ; $5ced: $6e
    ld h, h                                       ; $5cee: $64
    jr nz, jr_019_5d3a                            ; $5cef: $20 $49

    jr nz, jr_019_5d67                            ; $5cf1: $20 $74

    ld [hl], d                                    ; $5cf3: $72
    ld l, c                                       ; $5cf4: $69

jr_019_5cf5:
    ld [hl], b                                    ; $5cf5: $70
    ld l, h                                       ; $5cf6: $6c
    ld h, l                                       ; $5cf7: $65
    ld hl, $0003                                  ; $5cf8: $21 $03 $00
    ld b, a                                       ; $5cfb: $47
    ld l, a                                       ; $5cfc: $6f
    ld [hl], h                                    ; $5cfd: $74

jr_019_5cfe:
    jr nz, jr_019_5d61                            ; $5cfe: $20 $61

    jr nz, @+$75                                  ; $5d00: $20 $73

    ld h, l                                       ; $5d02: $65
    ld h, e                                       ; $5d03: $63
    ld l, a                                       ; $5d04: $6f
    ld l, [hl]                                    ; $5d05: $6e
    ld h, h                                       ; $5d06: $64
    ccf                                           ; $5d07: $3f
    nop                                           ; $5d08: $00
    ld d, h                                       ; $5d09: $54
    ld h, e                                       ; $5d0a: $63
    ld l, b                                       ; $5d0b: $68

jr_019_5d0c:
    ld hl, $4920                                  ; $5d0c: $21 $20 $49
    jr nz, jr_019_5d88                            ; $5d0f: $20 $77

    ld h, c                                       ; $5d11: $61
    ld [hl], e                                    ; $5d12: $73
    jr nz, jr_019_5d7c                            ; $5d13: $20 $67

    ld l, a                                       ; $5d15: $6f
    ld l, [hl]                                    ; $5d16: $6e
    ld l, [hl]                                    ; $5d17: $6e
    ld h, c                                       ; $5d18: $61
    ld bc, $6574                                  ; $5d19: $01 $74 $65
    ld l, h                                       ; $5d1c: $6c
    ld l, h                                       ; $5d1d: $6c
    jr nz, jr_019_5d99                            ; $5d1e: $20 $79

    ld l, a                                       ; $5d20: $6f
    ld [hl], l                                    ; $5d21: $75
    jr nz, jr_019_5d97                            ; $5d22: $20 $73

    ld l, a                                       ; $5d24: $6f
    ld l, l                                       ; $5d25: $6d
    ld h, l                                       ; $5d26: $65
    ld [hl], h                                    ; $5d27: $74
    ld l, b                                       ; $5d28: $68
    ld l, c                                       ; $5d29: $69
    ld l, [hl]                                    ; $5d2a: $6e
    ld h, a                                       ; $5d2b: $67
    ld hl, $0003                                  ; $5d2c: $21 $03 $00

jr_019_5d2f:
    ld d, a                                       ; $5d2f: $57
    ld l, b                                       ; $5d30: $68
    ld h, l                                       ; $5d31: $65
    ld l, [hl]                                    ; $5d32: $6e
    jr nz, jr_019_5d7e                            ; $5d33: $20 $49

    jr nz, jr_019_5da7                            ; $5d35: $20 $70

jr_019_5d37:
    ld l, h                                       ; $5d37: $6c
    ld h, c                                       ; $5d38: $61
    ld a, c                                       ; $5d39: $79

jr_019_5d3a:
    ld h, l                                       ; $5d3a: $65
    ld h, h                                       ; $5d3b: $64
    jr nz, @+$4e                                  ; $5d3c: $20 $4c

    ld l, c                                       ; $5d3e: $69
    ld l, [hl]                                    ; $5d3f: $6e
    ld l, e                                       ; $5d40: $6b
    ld [hl], e                                    ; $5d41: $73
    inc l                                         ; $5d42: $2c
    ld bc, $796d                                  ; $5d43: $01 $6d $79
    jr nz, @+$64                                  ; $5d46: $20 $62

    ld h, c                                       ; $5d48: $61
    ld l, h                                       ; $5d49: $6c
    ld l, h                                       ; $5d4a: $6c
    jr nz, jr_019_5db8                            ; $5d4b: $20 $6b

    ld h, l                                       ; $5d4d: $65

jr_019_5d4e:
    ld [hl], b                                    ; $5d4e: $70
    ld [hl], h                                    ; $5d4f: $74
    jr nz, jr_019_5dc4                            ; $5d50: $20 $72

    ld l, a                                       ; $5d52: $6f
    ld l, h                                       ; $5d53: $6c
    ld l, h                                       ; $5d54: $6c
    dec l                                         ; $5d55: $2d
    ld bc, $6e69                                  ; $5d56: $01 $69 $6e
    ld h, a                                       ; $5d59: $67
    jr nz, jr_019_5dc5                            ; $5d5a: $20 $69

    ld l, [hl]                                    ; $5d5c: $6e
    ld [hl], h                                    ; $5d5d: $74
    ld l, a                                       ; $5d5e: $6f
    jr nz, @+$76                                  ; $5d5f: $20 $74

jr_019_5d61:
    ld l, b                                       ; $5d61: $68
    ld h, l                                       ; $5d62: $65
    jr nz, jr_019_5dd7                            ; $5d63: $20 $72

    ld l, a                                       ; $5d65: $6f
    ld [hl], l                                    ; $5d66: $75

jr_019_5d67:
    ld h, a                                       ; $5d67: $67
    ld l, b                                       ; $5d68: $68
    ld hl, $4102                                  ; $5d69: $21 $02 $41
    jr nz, jr_019_5dd4                            ; $5d6c: $20 $66

    ld h, c                                       ; $5d6e: $61
    ld l, c                                       ; $5d6f: $69
    ld [hl], d                                    ; $5d70: $72
    ld [hl], a                                    ; $5d71: $77
    ld h, c                                       ; $5d72: $61
    ld a, c                                       ; $5d73: $79
    jr nz, jr_019_5dea                            ; $5d74: $20 $74

    ld l, b                                       ; $5d76: $68
    ld h, c                                       ; $5d77: $61
    ld [hl], h                                    ; $5d78: $74
    jr nz, jr_019_5ded                            ; $5d79: $20 $72

    ld l, a                                       ; $5d7b: $6f

jr_019_5d7c:
    ld l, h                                       ; $5d7c: $6c
    ld l, h                                       ; $5d7d: $6c

jr_019_5d7e:
    ld [hl], e                                    ; $5d7e: $73
    ld bc, $6874                                  ; $5d7f: $01 $74 $68
    ld h, c                                       ; $5d82: $61
    ld [hl], h                                    ; $5d83: $74
    jr nz, @+$6f                                  ; $5d84: $20 $6d

    ld [hl], l                                    ; $5d86: $75
    ld h, e                                       ; $5d87: $63

jr_019_5d88:
    ld l, b                                       ; $5d88: $68
    jr nz, jr_019_5df4                            ; $5d89: $20 $69

    ld [hl], e                                    ; $5d8b: $73
    ld l, [hl]                                    ; $5d8c: $6e
    daa                                           ; $5d8d: $27
    ld [hl], h                                    ; $5d8e: $74
    ld bc, $6166                                  ; $5d8f: $01 $66 $61
    ld l, c                                       ; $5d92: $69
    ld [hl], d                                    ; $5d93: $72
    jr nz, jr_019_5df7                            ; $5d94: $20 $61

    ld [hl], h                                    ; $5d96: $74

jr_019_5d97:
    jr nz, jr_019_5dfa                            ; $5d97: $20 $61

jr_019_5d99:
    ld l, h                                       ; $5d99: $6c
    ld l, h                                       ; $5d9a: $6c
    ld hl, $0003                                  ; $5d9b: $21 $03 $00
    ld c, a                                       ; $5d9e: $4f
    ld [hl], d                                    ; $5d9f: $72
    ld l, c                                       ; $5da0: $69
    ld h, a                                       ; $5da1: $67
    ld l, c                                       ; $5da2: $69
    ld l, [hl]                                    ; $5da3: $6e
    ld h, c                                       ; $5da4: $61
    ld l, h                                       ; $5da5: $6c
    ld l, h                                       ; $5da6: $6c

jr_019_5da7:
    ld a, c                                       ; $5da7: $79
    inc l                                         ; $5da8: $2c
    jr nz, jr_019_5df7                            ; $5da9: $20 $4c

    ld l, c                                       ; $5dab: $69
    ld l, [hl]                                    ; $5dac: $6e
    ld l, e                                       ; $5dad: $6b
    ld [hl], e                                    ; $5dae: $73
    ld bc, $6f43                                  ; $5daf: $01 $43 $6f
    ld [hl], l                                    ; $5db2: $75
    ld [hl], d                                    ; $5db3: $72
    ld [hl], e                                    ; $5db4: $73
    ld h, l                                       ; $5db5: $65
    jr nz, jr_019_5e2f                            ; $5db6: $20 $77

jr_019_5db8:
    ld h, c                                       ; $5db8: $61
    ld [hl], e                                    ; $5db9: $73
    ld bc, $7263                                  ; $5dba: $01 $63 $72
    ld h, l                                       ; $5dbd: $65
    ld h, c                                       ; $5dbe: $61
    ld [hl], h                                    ; $5dbf: $74
    ld h, l                                       ; $5dc0: $65
    ld h, h                                       ; $5dc1: $64
    jr nz, @+$70                                  ; $5dc2: $20 $6e

jr_019_5dc4:
    ld h, c                                       ; $5dc4: $61

jr_019_5dc5:
    ld [hl], h                                    ; $5dc5: $74
    ld [hl], l                                    ; $5dc6: $75
    ld [hl], d                                    ; $5dc7: $72
    ld h, c                                       ; $5dc8: $61
    ld l, h                                       ; $5dc9: $6c
    ld l, h                                       ; $5dca: $6c
    ld a, c                                       ; $5dcb: $79
    ld l, $02                                     ; $5dcc: $2e $02
    ld c, b                                       ; $5dce: $48
    ld [hl], l                                    ; $5dcf: $75
    ld l, l                                       ; $5dd0: $6d
    ld h, c                                       ; $5dd1: $61
    ld l, [hl]                                    ; $5dd2: $6e
    ld [hl], e                                    ; $5dd3: $73

jr_019_5dd4:
    jr nz, jr_019_5e37                            ; $5dd4: $20 $61

    ld [hl], d                                    ; $5dd6: $72

jr_019_5dd7:
    ld h, l                                       ; $5dd7: $65
    jr nz, jr_019_5e4a                            ; $5dd8: $20 $70

    ld l, a                                       ; $5dda: $6f
    ld [hl], a                                    ; $5ddb: $77
    ld h, l                                       ; $5ddc: $65
    ld [hl], d                                    ; $5ddd: $72
    dec l                                         ; $5dde: $2d
    ld bc, $656c                                  ; $5ddf: $01 $6c $65
    ld [hl], e                                    ; $5de2: $73
    ld [hl], e                                    ; $5de3: $73
    jr nz, @+$64                                  ; $5de4: $20 $62

    ld h, l                                       ; $5de6: $65
    ld h, [hl]                                    ; $5de7: $66
    ld l, a                                       ; $5de8: $6f
    ld [hl], d                                    ; $5de9: $72

jr_019_5dea:
    ld h, l                                       ; $5dea: $65
    jr nz, jr_019_5e5b                            ; $5deb: $20 $6e

jr_019_5ded:
    ld h, c                                       ; $5ded: $61
    ld [hl], h                                    ; $5dee: $74
    ld [hl], l                                    ; $5def: $75
    ld [hl], d                                    ; $5df0: $72
    ld h, l                                       ; $5df1: $65
    ld l, $03                                     ; $5df2: $2e $03

jr_019_5df4:
    nop                                           ; $5df4: $00
    ld c, a                                       ; $5df5: $4f
    ld h, [hl]                                    ; $5df6: $66

jr_019_5df7:
    jr nz, jr_019_5e5a                            ; $5df7: $20 $61

    ld l, h                                       ; $5df9: $6c

jr_019_5dfa:
    ld l, h                                       ; $5dfa: $6c
    jr nz, jr_019_5e71                            ; $5dfb: $20 $74

    ld l, b                                       ; $5dfd: $68
    ld h, l                                       ; $5dfe: $65
    jr nz, jr_019_5e64                            ; $5dff: $20 $63

    ld l, a                                       ; $5e01: $6f
    ld [hl], l                                    ; $5e02: $75
    ld [hl], d                                    ; $5e03: $72
    ld [hl], e                                    ; $5e04: $73
    ld h, l                                       ; $5e05: $65
    ld [hl], e                                    ; $5e06: $73
    inc l                                         ; $5e07: $2c
    ld bc, $694c                                  ; $5e08: $01 $4c $69
    ld l, [hl]                                    ; $5e0b: $6e
    ld l, e                                       ; $5e0c: $6b
    ld [hl], e                                    ; $5e0d: $73
    jr nz, jr_019_5e79                            ; $5e0e: $20 $69

    ld [hl], e                                    ; $5e10: $73
    jr nz, @+$76                                  ; $5e11: $20 $74

    ld l, b                                       ; $5e13: $68
    ld h, l                                       ; $5e14: $65
    jr nz, jr_019_5e86                            ; $5e15: $20 $6f

    ld l, [hl]                                    ; $5e17: $6e
    ld l, h                                       ; $5e18: $6c
    ld a, c                                       ; $5e19: $79
    ld bc, $6e6f                                  ; $5e1a: $01 $6f $6e
    ld h, l                                       ; $5e1d: $65
    jr nz, @+$4b                                  ; $5e1e: $20 $49

    jr nz, jr_019_5e8a                            ; $5e20: $20 $68

    ld h, c                                       ; $5e22: $61
    ld [hl], h                                    ; $5e23: $74
    ld h, l                                       ; $5e24: $65
    ld hl, $4902                                  ; $5e25: $21 $02 $49
    jr nz, jr_019_5e92                            ; $5e28: $20 $68

    ld h, c                                       ; $5e2a: $61
    ld [hl], h                                    ; $5e2b: $74
    ld h, l                                       ; $5e2c: $65
    jr nz, jr_019_5ea3                            ; $5e2d: $20 $74

jr_019_5e2f:
    ld l, b                                       ; $5e2f: $68
    ld h, l                                       ; $5e30: $65
    jr nz, jr_019_5e9f                            ; $5e31: $20 $6c

    ld h, c                                       ; $5e33: $61
    ld a, c                                       ; $5e34: $79
    ld l, a                                       ; $5e35: $6f
    ld [hl], l                                    ; $5e36: $75

jr_019_5e37:
    ld [hl], h                                    ; $5e37: $74
    ld bc, $6e61                                  ; $5e38: $01 $61 $6e
    ld h, h                                       ; $5e3b: $64
    jr nz, jr_019_5eb2                            ; $5e3c: $20 $74

    ld l, b                                       ; $5e3e: $68
    ld h, c                                       ; $5e3f: $61
    ld [hl], h                                    ; $5e40: $74
    jr nz, @+$6a                                  ; $5e41: $20 $68

    ld h, l                                       ; $5e43: $65
    ld h, c                                       ; $5e44: $61
    ld [hl], h                                    ; $5e45: $74
    ld l, b                                       ; $5e46: $68
    ld hl, $0003                                  ; $5e47: $21 $03 $00

jr_019_5e4a:
    ld b, a                                       ; $5e4a: $47
    ld l, a                                       ; $5e4b: $6f
    ld [hl], h                                    ; $5e4c: $74
    jr nz, jr_019_5eb0                            ; $5e4d: $20 $61

    jr nz, @+$75                                  ; $5e4f: $20 $73

    ld h, l                                       ; $5e51: $65
    ld h, e                                       ; $5e52: $63
    ld l, a                                       ; $5e53: $6f
    ld l, [hl]                                    ; $5e54: $6e
    ld h, h                                       ; $5e55: $64
    ccf                                           ; $5e56: $3f
    nop                                           ; $5e57: $00
    ld d, h                                       ; $5e58: $54
    ld h, e                                       ; $5e59: $63

jr_019_5e5a:
    ld l, b                                       ; $5e5a: $68

jr_019_5e5b:
    ld hl, $4920                                  ; $5e5b: $21 $20 $49
    jr nz, jr_019_5ed7                            ; $5e5e: $20 $77

    ld h, c                                       ; $5e60: $61
    ld [hl], e                                    ; $5e61: $73
    jr nz, @+$69                                  ; $5e62: $20 $67

jr_019_5e64:
    ld l, a                                       ; $5e64: $6f
    ld l, [hl]                                    ; $5e65: $6e
    ld l, [hl]                                    ; $5e66: $6e
    ld h, c                                       ; $5e67: $61
    ld bc, $6574                                  ; $5e68: $01 $74 $65
    ld l, h                                       ; $5e6b: $6c
    ld l, h                                       ; $5e6c: $6c
    jr nz, @+$7b                                  ; $5e6d: $20 $79

    ld l, a                                       ; $5e6f: $6f
    ld [hl], l                                    ; $5e70: $75

jr_019_5e71:
    jr nz, jr_019_5ee6                            ; $5e71: $20 $73

    ld l, a                                       ; $5e73: $6f
    ld l, l                                       ; $5e74: $6d
    ld h, l                                       ; $5e75: $65
    ld [hl], h                                    ; $5e76: $74
    ld l, b                                       ; $5e77: $68
    ld l, c                                       ; $5e78: $69

jr_019_5e79:
    ld l, [hl]                                    ; $5e79: $6e
    ld h, a                                       ; $5e7a: $67
    ld hl, $0003                                  ; $5e7b: $21 $03 $00
    ld b, c                                       ; $5e7e: $41
    ld [hl], h                                    ; $5e7f: $74
    jr nz, jr_019_5ece                            ; $5e80: $20 $4c

    ld l, c                                       ; $5e82: $69
    ld l, [hl]                                    ; $5e83: $6e
    ld l, e                                       ; $5e84: $6b
    ld [hl], e                                    ; $5e85: $73

jr_019_5e86:
    jr nz, @+$45                                  ; $5e86: $20 $43

    ld l, h                                       ; $5e88: $6c
    ld [hl], l                                    ; $5e89: $75

jr_019_5e8a:
    ld h, d                                       ; $5e8a: $62
    jr nz, @+$76                                  ; $5e8b: $20 $74

    ld l, b                                       ; $5e8d: $68
    ld h, l                                       ; $5e8e: $65
    ld bc, $6568                                  ; $5e8f: $01 $68 $65

jr_019_5e92:
    ld h, c                                       ; $5e92: $61
    ld [hl], h                                    ; $5e93: $74
    ld l, b                                       ; $5e94: $68
    daa                                           ; $5e95: $27
    ld [hl], e                                    ; $5e96: $73
    jr nz, jr_019_5f0c                            ; $5e97: $20 $73

    ld l, a                                       ; $5e99: $6f
    jr nz, @+$76                                  ; $5e9a: $20 $74

    ld h, c                                       ; $5e9c: $61
    ld l, h                                       ; $5e9d: $6c
    ld l, h                                       ; $5e9e: $6c

jr_019_5e9f:
    inc l                                         ; $5e9f: $2c
    ld bc, $6874                                  ; $5ea0: $01 $74 $68

jr_019_5ea3:
    ld h, c                                       ; $5ea3: $61
    ld [hl], h                                    ; $5ea4: $74
    jr nz, jr_019_5f16                            ; $5ea5: $20 $6f

    ld l, [hl]                                    ; $5ea7: $6e
    ld h, e                                       ; $5ea8: $63
    ld h, l                                       ; $5ea9: $65
    jr nz, jr_019_5f25                            ; $5eaa: $20 $79

    ld l, a                                       ; $5eac: $6f
    ld [hl], l                                    ; $5ead: $75
    daa                                           ; $5eae: $27
    ld [hl], d                                    ; $5eaf: $72

jr_019_5eb0:
    ld h, l                                       ; $5eb0: $65
    ld [bc], a                                    ; $5eb1: $02

jr_019_5eb2:
    ld l, c                                       ; $5eb2: $69
    ld l, [hl]                                    ; $5eb3: $6e
    jr nz, jr_019_5f1f                            ; $5eb4: $20 $69

    ld [hl], h                                    ; $5eb6: $74
    inc l                                         ; $5eb7: $2c
    jr nz, @+$7b                                  ; $5eb8: $20 $79

    ld l, a                                       ; $5eba: $6f
    ld [hl], l                                    ; $5ebb: $75
    jr nz, jr_019_5f21                            ; $5ebc: $20 $63

    ld h, c                                       ; $5ebe: $61
    ld l, [hl]                                    ; $5ebf: $6e
    daa                                           ; $5ec0: $27
    ld [hl], h                                    ; $5ec1: $74
    ld bc, $6567                                  ; $5ec2: $01 $67 $65
    ld [hl], h                                    ; $5ec5: $74
    jr nz, jr_019_5f37                            ; $5ec6: $20 $6f

    ld [hl], l                                    ; $5ec8: $75
    ld [hl], h                                    ; $5ec9: $74
    ld hl, $4120                                  ; $5eca: $21 $20 $41
    ld l, [hl]                                    ; $5ecd: $6e

jr_019_5ece:
    ld h, h                                       ; $5ece: $64
    jr nz, jr_019_5f45                            ; $5ecf: $20 $74

    ld l, b                                       ; $5ed1: $68
    ld h, c                                       ; $5ed2: $61
    ld [hl], h                                    ; $5ed3: $74
    ld [bc], a                                    ; $5ed4: $02
    ld h, [hl]                                    ; $5ed5: $66
    ld h, c                                       ; $5ed6: $61

jr_019_5ed7:
    ld l, c                                       ; $5ed7: $69
    ld [hl], d                                    ; $5ed8: $72
    ld [hl], a                                    ; $5ed9: $77
    ld h, c                                       ; $5eda: $61
    ld a, c                                       ; $5edb: $79
    jr nz, jr_019_5f48                            ; $5edc: $20 $6a

    ld [hl], l                                    ; $5ede: $75
    ld [hl], e                                    ; $5edf: $73
    ld [hl], h                                    ; $5ee0: $74
    jr nz, jr_019_5f55                            ; $5ee1: $20 $72

    ld l, a                                       ; $5ee3: $6f
    ld l, h                                       ; $5ee4: $6c
    ld l, h                                       ; $5ee5: $6c

jr_019_5ee6:
    ld [hl], e                                    ; $5ee6: $73
    ld bc, $6f79                                  ; $5ee7: $01 $79 $6f
    ld [hl], l                                    ; $5eea: $75
    ld [hl], d                                    ; $5eeb: $72
    jr nz, jr_019_5f50                            ; $5eec: $20 $62

    ld h, c                                       ; $5eee: $61
    ld l, h                                       ; $5eef: $6c
    ld l, h                                       ; $5ef0: $6c
    jr nz, jr_019_5f65                            ; $5ef1: $20 $72

    ld l, c                                       ; $5ef3: $69
    ld h, a                                       ; $5ef4: $67
    ld l, b                                       ; $5ef5: $68
    ld [hl], h                                    ; $5ef6: $74
    ld bc, $6e69                                  ; $5ef7: $01 $69 $6e
    ld [hl], h                                    ; $5efa: $74
    ld l, a                                       ; $5efb: $6f
    jr nz, jr_019_5f67                            ; $5efc: $20 $69

    ld [hl], h                                    ; $5efe: $74
    inc l                                         ; $5eff: $2c
    jr nz, jr_019_5f76                            ; $5f00: $20 $74

    ld l, a                                       ; $5f02: $6f
    ld l, a                                       ; $5f03: $6f
    ld hl, $0003                                  ; $5f04: $21 $03 $00
    ld b, h                                       ; $5f07: $44
    ld l, c                                       ; $5f08: $69
    ld [hl], e                                    ; $5f09: $73
    ld [hl], h                                    ; $5f0a: $74
    ld h, c                                       ; $5f0b: $61

jr_019_5f0c:
    ld l, [hl]                                    ; $5f0c: $6e
    ld h, e                                       ; $5f0d: $63
    ld h, l                                       ; $5f0e: $65
    jr nz, @+$6b                                  ; $5f0f: $20 $69

    ld [hl], e                                    ; $5f11: $73
    jr nz, @+$65                                  ; $5f12: $20 $63

    ld [hl], l                                    ; $5f14: $75
    ld [hl], h                                    ; $5f15: $74

jr_019_5f16:
    jr nz, @+$64                                  ; $5f16: $20 $62

    ld a, c                                       ; $5f18: $79
    ld bc, $6874                                  ; $5f19: $01 $74 $68
    ld h, l                                       ; $5f1c: $65
    jr nz, jr_019_5f87                            ; $5f1d: $20 $68

jr_019_5f1f:
    ld h, l                                       ; $5f1f: $65
    ld h, c                                       ; $5f20: $61

jr_019_5f21:
    ld [hl], h                                    ; $5f21: $74
    ld l, b                                       ; $5f22: $68
    jr nz, jr_019_5f87                            ; $5f23: $20 $62

jr_019_5f25:
    ld [hl], l                                    ; $5f25: $75
    ld [hl], h                                    ; $5f26: $74
    jr nz, jr_019_5f8e                            ; $5f27: $20 $65

    ld a, b                                       ; $5f29: $78
    dec l                                         ; $5f2a: $2d
    ld bc, $6574                                  ; $5f2b: $01 $74 $65
    ld l, [hl]                                    ; $5f2e: $6e
    ld h, h                                       ; $5f2f: $64
    ld h, l                                       ; $5f30: $65
    ld h, h                                       ; $5f31: $64
    jr nz, jr_019_5f96                            ; $5f32: $20 $62

    ld a, c                                       ; $5f34: $79
    jr nz, jr_019_5fab                            ; $5f35: $20 $74

jr_019_5f37:
    ld l, b                                       ; $5f37: $68
    ld h, l                                       ; $5f38: $65
    jr nz, jr_019_5fa1                            ; $5f39: $20 $66

    ld h, c                                       ; $5f3b: $61
    ld l, c                                       ; $5f3c: $69
    ld [hl], d                                    ; $5f3d: $72
    dec l                                         ; $5f3e: $2d
    ld [bc], a                                    ; $5f3f: $02
    ld [hl], a                                    ; $5f40: $77
    ld h, c                                       ; $5f41: $61
    ld a, c                                       ; $5f42: $79
    ld l, $20                                     ; $5f43: $2e $20

jr_019_5f45:
    ld d, e                                       ; $5f45: $53
    ld h, e                                       ; $5f46: $63
    ld l, a                                       ; $5f47: $6f

jr_019_5f48:
    ld [hl], d                                    ; $5f48: $72
    ld h, l                                       ; $5f49: $65
    ld [hl], e                                    ; $5f4a: $73
    jr nz, @+$65                                  ; $5f4b: $20 $63

    ld l, h                                       ; $5f4d: $6c
    ld l, c                                       ; $5f4e: $69
    ld l, l                                       ; $5f4f: $6d

jr_019_5f50:
    ld h, d                                       ; $5f50: $62
    ld bc, $6877                                  ; $5f51: $01 $77 $68
    ld h, l                                       ; $5f54: $65

jr_019_5f55:
    ld l, [hl]                                    ; $5f55: $6e
    jr nz, jr_019_5fd1                            ; $5f56: $20 $79

    ld l, a                                       ; $5f58: $6f
    ld [hl], l                                    ; $5f59: $75
    jr nz, jr_019_5fbf                            ; $5f5a: $20 $63

    ld h, c                                       ; $5f5c: $61
    ld l, [hl]                                    ; $5f5d: $6e
    daa                                           ; $5f5e: $27
    ld [hl], h                                    ; $5f5f: $74
    ld bc, $6966                                  ; $5f60: $01 $66 $69
    ld h, a                                       ; $5f63: $67
    ld [hl], l                                    ; $5f64: $75

jr_019_5f65:
    ld [hl], d                                    ; $5f65: $72
    ld h, l                                       ; $5f66: $65

jr_019_5f67:
    jr nz, jr_019_5fcd                            ; $5f67: $20 $64

    ld l, c                                       ; $5f69: $69
    ld [hl], e                                    ; $5f6a: $73
    ld [hl], h                                    ; $5f6b: $74
    ld h, c                                       ; $5f6c: $61
    ld l, [hl]                                    ; $5f6d: $6e
    ld h, e                                       ; $5f6e: $63
    ld h, l                                       ; $5f6f: $65
    ld [hl], e                                    ; $5f70: $73
    ld l, $03                                     ; $5f71: $2e $03
    nop                                           ; $5f73: $00
    ld l, $2e                                     ; $5f74: $2e $2e

jr_019_5f76:
    ld l, $73                                     ; $5f76: $2e $73
    ld l, a                                       ; $5f78: $6f
    jr nz, jr_019_5fe4                            ; $5f79: $20 $69

    ld l, [hl]                                    ; $5f7b: $6e
    jr nz, @+$76                                  ; $5f7c: $20 $74

    ld l, b                                       ; $5f7e: $68
    ld h, l                                       ; $5f7f: $65
    jr nz, jr_019_5fea                            ; $5f80: $20 $68

    ld h, l                                       ; $5f82: $65
    ld h, c                                       ; $5f83: $61
    ld [hl], h                                    ; $5f84: $74
    ld l, b                                       ; $5f85: $68
    inc l                                         ; $5f86: $2c

jr_019_5f87:
    ld bc, $6874                                  ; $5f87: $01 $74 $68
    ld h, l                                       ; $5f8a: $65
    jr nz, jr_019_5ff4                            ; $5f8b: $20 $67

    ld [hl], d                                    ; $5f8d: $72

jr_019_5f8e:
    ld h, c                                       ; $5f8e: $61
    ld [hl], e                                    ; $5f8f: $73
    ld [hl], e                                    ; $5f90: $73
    jr nz, jr_019_5ff6                            ; $5f91: $20 $63

    ld h, c                                       ; $5f93: $61
    ld [hl], h                                    ; $5f94: $74
    ld h, e                                       ; $5f95: $63

jr_019_5f96:
    ld l, b                                       ; $5f96: $68
    ld h, l                                       ; $5f97: $65
    ld [hl], e                                    ; $5f98: $73
    ld bc, $796d                                  ; $5f99: $01 $6d $79
    jr nz, jr_019_6011                            ; $5f9c: $20 $73

    ld l, b                                       ; $5f9e: $68
    ld h, c                                       ; $5f9f: $61
    ld h, [hl]                                    ; $5fa0: $66

jr_019_5fa1:
    ld [hl], h                                    ; $5fa1: $74
    jr nz, @+$63                                  ; $5fa2: $20 $61

    ld l, [hl]                                    ; $5fa4: $6e
    ld h, h                                       ; $5fa5: $64
    jr nz, jr_019_601b                            ; $5fa6: $20 $73

    ld [hl], b                                    ; $5fa8: $70
    ld l, c                                       ; $5fa9: $69
    ld l, [hl]                                    ; $5faa: $6e

jr_019_5fab:
    ld [hl], e                                    ; $5fab: $73
    ld [bc], a                                    ; $5fac: $02
    ld l, l                                       ; $5fad: $6d
    ld a, c                                       ; $5fae: $79
    jr nz, jr_019_6019                            ; $5faf: $20 $68

    ld h, l                                       ; $5fb1: $65
    ld h, c                                       ; $5fb2: $61
    ld h, h                                       ; $5fb3: $64
    ld hl, $5420                                  ; $5fb4: $21 $20 $54
    ld l, b                                       ; $5fb7: $68
    ld h, c                                       ; $5fb8: $61
    ld [hl], h                                    ; $5fb9: $74
    daa                                           ; $5fba: $27
    ld [hl], e                                    ; $5fbb: $73
    jr nz, jr_019_6035                            ; $5fbc: $20 $77

    ld l, b                                       ; $5fbe: $68

jr_019_5fbf:
    ld a, c                                       ; $5fbf: $79
    ld bc, $7665                                  ; $5fc0: $01 $65 $76
    ld h, l                                       ; $5fc3: $65
    ld [hl], d                                    ; $5fc4: $72
    ld a, c                                       ; $5fc5: $79
    ld l, a                                       ; $5fc6: $6f
    ld l, [hl]                                    ; $5fc7: $6e
    ld h, l                                       ; $5fc8: $65
    jr nz, @+$6a                                  ; $5fc9: $20 $68

    ld l, c                                       ; $5fcb: $69
    ld [hl], h                                    ; $5fcc: $74

jr_019_5fcd:
    ld [hl], e                                    ; $5fcd: $73
    jr nz, @+$79                                  ; $5fce: $20 $77

    ld l, c                                       ; $5fd0: $69

jr_019_5fd1:
    ld h, e                                       ; $5fd1: $63
    ld l, e                                       ; $5fd2: $6b
    dec l                                         ; $5fd3: $2d
    ld bc, $6465                                  ; $5fd4: $01 $65 $64
    jr nz, jr_019_6041                            ; $5fd7: $20 $68

    ld l, a                                       ; $5fd9: $6f
    ld l, a                                       ; $5fda: $6f
    ld l, e                                       ; $5fdb: $6b
    ld [hl], e                                    ; $5fdc: $73
    jr nz, @+$28                                  ; $5fdd: $20 $26

    jr nz, jr_019_6054                            ; $5fdf: $20 $73

    ld l, h                                       ; $5fe1: $6c
    ld l, c                                       ; $5fe2: $69
    ld h, e                                       ; $5fe3: $63

jr_019_5fe4:
    ld h, l                                       ; $5fe4: $65
    ld [hl], e                                    ; $5fe5: $73
    ld hl, $0003                                  ; $5fe6: $21 $03 $00
    rlca                                          ; $5fe9: $07

jr_019_5fea:
    inc l                                         ; $5fea: $2c
    jr nz, @+$6a                                  ; $5feb: $20 $68

    ld h, c                                       ; $5fed: $61
    halt                                          ; $5fee: $76
    ld h, l                                       ; $5fef: $65
    ld bc, $6f79                                  ; $5ff0: $01 $79 $6f
    ld [hl], l                                    ; $5ff3: $75

jr_019_5ff4:
    jr nz, @+$63                                  ; $5ff4: $20 $61

jr_019_5ff6:
    ld l, h                                       ; $5ff6: $6c
    ld [hl], d                                    ; $5ff7: $72
    ld h, l                                       ; $5ff8: $65
    ld h, c                                       ; $5ff9: $61
    ld h, h                                       ; $5ffa: $64
    ld a, c                                       ; $5ffb: $79
    jr nz, @+$64                                  ; $5ffc: $20 $62

    ld h, l                                       ; $5ffe: $65
    ld h, l                                       ; $5fff: $65
    ld l, [hl]                                    ; $6000: $6e
    ld bc, $6f74                                  ; $6001: $01 $74 $6f
    jr nz, jr_019_6056                            ; $6004: $20 $50

    ld h, l                                       ; $6006: $65
    ld h, c                                       ; $6007: $61
    ld h, e                                       ; $6008: $63
    ld l, b                                       ; $6009: $68
    daa                                           ; $600a: $27
    ld [hl], e                                    ; $600b: $73
    jr nz, jr_019_6051                            ; $600c: $20 $43

    ld h, c                                       ; $600e: $61
    ld [hl], e                                    ; $600f: $73
    ld [hl], h                                    ; $6010: $74

jr_019_6011:
    ld l, h                                       ; $6011: $6c
    ld h, l                                       ; $6012: $65
    ccf                                           ; $6013: $3f
    nop                                           ; $6014: $00
    ld e, c                                       ; $6015: $59
    ld l, a                                       ; $6016: $6f
    ld [hl], l                                    ; $6017: $75
    daa                                           ; $6018: $27

jr_019_6019:
    halt                                          ; $6019: $76
    ld h, l                                       ; $601a: $65

jr_019_601b:
    jr nz, @+$67                                  ; $601b: $20 $65

    ld h, c                                       ; $601d: $61
    ld [hl], d                                    ; $601e: $72
    ld l, [hl]                                    ; $601f: $6e
    ld h, l                                       ; $6020: $65
    ld h, h                                       ; $6021: $64
    ld bc, $6874                                  ; $6022: $01 $74 $68
    ld h, l                                       ; $6025: $65
    jr nz, jr_019_609a                            ; $6026: $20 $72

    ld l, c                                       ; $6028: $69
    ld h, a                                       ; $6029: $67
    ld l, b                                       ; $602a: $68
    ld [hl], h                                    ; $602b: $74
    ld l, $20                                     ; $602c: $2e $20
    ld e, c                                       ; $602e: $59
    ld l, a                                       ; $602f: $6f
    ld [hl], l                                    ; $6030: $75
    ld bc, $6873                                  ; $6031: $01 $73 $68
    ld l, a                                       ; $6034: $6f

jr_019_6035:
    ld [hl], l                                    ; $6035: $75
    ld l, h                                       ; $6036: $6c
    ld h, h                                       ; $6037: $64
    jr nz, jr_019_60a1                            ; $6038: $20 $67

    ld l, a                                       ; $603a: $6f
    ld hl, $0003                                  ; $603b: $21 $03 $00
    ld b, c                                       ; $603e: $41
    jr nz, jr_019_60a4                            ; $603f: $20 $63

jr_019_6041:
    ld l, a                                       ; $6041: $6f
    ld [hl], l                                    ; $6042: $75
    ld [hl], d                                    ; $6043: $72
    ld [hl], e                                    ; $6044: $73
    ld h, l                                       ; $6045: $65
    jr nz, jr_019_60b1                            ; $6046: $20 $69

    ld l, [hl]                                    ; $6048: $6e
    jr nz, jr_019_60bf                            ; $6049: $20 $74

    ld l, b                                       ; $604b: $68
    ld h, l                                       ; $604c: $65
    ld bc, $6c63                                  ; $604d: $01 $63 $6c
    ld l, a                                       ; $6050: $6f

jr_019_6051:
    ld [hl], l                                    ; $6051: $75
    ld h, h                                       ; $6052: $64
    ld [hl], e                                    ; $6053: $73

jr_019_6054:
    ld l, $2e                                     ; $6054: $2e $2e

jr_019_6056:
    ld l, $74                                     ; $6056: $2e $74
    ld l, b                                       ; $6058: $68
    ld h, l                                       ; $6059: $65
    jr nz, jr_019_60d2                            ; $605a: $20 $76

    ld l, c                                       ; $605c: $69
    ld h, l                                       ; $605d: $65
    ld [hl], a                                    ; $605e: $77
    ld bc, $756d                                  ; $605f: $01 $6d $75
    ld [hl], e                                    ; $6062: $73
    ld [hl], h                                    ; $6063: $74
    jr nz, jr_019_60c8                            ; $6064: $20 $62

    ld h, l                                       ; $6066: $65
    jr nz, @+$63                                  ; $6067: $20 $61

    ld [hl], e                                    ; $6069: $73
    ld [hl], h                                    ; $606a: $74
    ld l, a                                       ; $606b: $6f
    ld [hl], l                                    ; $606c: $75
    ld l, [hl]                                    ; $606d: $6e
    ld h, h                                       ; $606e: $64
    ld l, c                                       ; $606f: $69
    ld l, [hl]                                    ; $6070: $6e
    ld h, a                                       ; $6071: $67
    ld hl, $0003                                  ; $6072: $21 $03 $00
    ld e, c                                       ; $6075: $59
    ld l, a                                       ; $6076: $6f
    ld [hl], l                                    ; $6077: $75
    jr nz, jr_019_60ee                            ; $6078: $20 $74

    ld l, a                                       ; $607a: $6f
    ld l, a                                       ; $607b: $6f
    ld l, e                                       ; $607c: $6b
    jr nz, jr_019_60f3                            ; $607d: $20 $74

    ld l, b                                       ; $607f: $68
    ld h, l                                       ; $6080: $65
    jr nz, @+$49                                  ; $6081: $20 $47

    ld [hl], d                                    ; $6083: $72
    ld h, c                                       ; $6084: $61
    ld l, [hl]                                    ; $6085: $6e
    ld h, h                                       ; $6086: $64
    ld bc, $6843                                  ; $6087: $01 $43 $68
    ld h, c                                       ; $608a: $61
    ld l, l                                       ; $608b: $6d
    ld [hl], b                                    ; $608c: $70
    ld l, c                                       ; $608d: $69
    ld l, a                                       ; $608e: $6f
    ld l, [hl]                                    ; $608f: $6e
    jr nz, jr_019_6106                            ; $6090: $20 $74

    ld l, c                                       ; $6092: $69
    ld [hl], h                                    ; $6093: $74
    ld l, h                                       ; $6094: $6c
    ld h, l                                       ; $6095: $65
    ld l, $02                                     ; $6096: $2e $02
    ld e, c                                       ; $6098: $59
    ld l, a                                       ; $6099: $6f

jr_019_609a:
    ld [hl], l                                    ; $609a: $75
    daa                                           ; $609b: $27
    halt                                          ; $609c: $76
    ld h, l                                       ; $609d: $65
    jr nz, jr_019_6106                            ; $609e: $20 $66

    ld l, c                                       ; $60a0: $69

jr_019_60a1:
    ld l, [hl]                                    ; $60a1: $6e
    ld h, c                                       ; $60a2: $61
    ld l, h                                       ; $60a3: $6c

jr_019_60a4:
    ld l, h                                       ; $60a4: $6c
    ld a, c                                       ; $60a5: $79
    ld bc, $6572                                  ; $60a6: $01 $72 $65
    ld h, c                                       ; $60a9: $61
    ld h, e                                       ; $60aa: $63
    ld l, b                                       ; $60ab: $68
    ld h, l                                       ; $60ac: $65
    ld h, h                                       ; $60ad: $64
    jr nz, jr_019_6117                            ; $60ae: $20 $67

    ld l, a                                       ; $60b0: $6f

jr_019_60b1:
    ld l, h                                       ; $60b1: $6c
    ld h, [hl]                                    ; $60b2: $66
    daa                                           ; $60b3: $27
    ld [hl], e                                    ; $60b4: $73
    ld bc, $6970                                  ; $60b5: $01 $70 $69
    ld l, [hl]                                    ; $60b8: $6e
    ld h, c                                       ; $60b9: $61
    ld h, e                                       ; $60ba: $63
    ld l, h                                       ; $60bb: $6c
    ld h, l                                       ; $60bc: $65
    jr nz, jr_019_612e                            ; $60bd: $20 $6f

jr_019_60bf:
    ld h, [hl]                                    ; $60bf: $66
    jr nz, jr_019_6135                            ; $60c0: $20 $73

    ld [hl], l                                    ; $60c2: $75
    ld h, e                                       ; $60c3: $63
    ld h, e                                       ; $60c4: $63
    ld h, l                                       ; $60c5: $65
    ld [hl], e                                    ; $60c6: $73
    ld [hl], e                                    ; $60c7: $73

jr_019_60c8:
    ld hl, $0003                                  ; $60c8: $21 $03 $00
    ld e, c                                       ; $60cb: $59
    ld l, a                                       ; $60cc: $6f
    ld [hl], l                                    ; $60cd: $75
    jr nz, jr_019_6131                            ; $60ce: $20 $61

    ld [hl], d                                    ; $60d0: $72
    ld h, l                                       ; $60d1: $65

jr_019_60d2:
    jr nz, jr_019_6135                            ; $60d2: $20 $61

    ld l, l                                       ; $60d4: $6d
    ld h, c                                       ; $60d5: $61
    ld a, d                                       ; $60d6: $7a
    ld l, c                                       ; $60d7: $69
    ld l, [hl]                                    ; $60d8: $6e
    ld h, a                                       ; $60d9: $67
    ld hl, $5301                                  ; $60da: $21 $01 $53
    ld l, a                                       ; $60dd: $6f
    ld l, l                                       ; $60de: $6d
    ld h, l                                       ; $60df: $65
    ld l, a                                       ; $60e0: $6f
    ld l, [hl]                                    ; $60e1: $6e
    ld h, l                                       ; $60e2: $65
    jr nz, jr_019_614b                            ; $60e3: $20 $66

    ld l, c                                       ; $60e5: $69
    ld l, [hl]                                    ; $60e6: $6e
    ld h, c                                       ; $60e7: $61
    ld l, h                                       ; $60e8: $6c
    ld l, h                                       ; $60e9: $6c
    ld a, c                                       ; $60ea: $79
    ld bc, $6562                                  ; $60eb: $01 $62 $65

jr_019_60ee:
    ld h, c                                       ; $60ee: $61
    ld [hl], h                                    ; $60ef: $74
    jr nz, jr_019_6100                            ; $60f0: $20 $0e

    rlca                                          ; $60f2: $07

jr_019_60f3:
    ld hl, $0003                                  ; $60f3: $21 $03 $00
    ld c, c                                       ; $60f6: $49
    jr nz, jr_019_6160                            ; $60f7: $20 $67

    ld [hl], l                                    ; $60f9: $75
    ld h, l                                       ; $60fa: $65
    ld [hl], e                                    ; $60fb: $73
    ld [hl], e                                    ; $60fc: $73
    jr nz, jr_019_6160                            ; $60fd: $20 $61

    ld l, h                                       ; $60ff: $6c

jr_019_6100:
    ld l, h                                       ; $6100: $6c
    jr nz, jr_019_614c                            ; $6101: $20 $49

    jr nz, jr_019_6168                            ; $6103: $20 $63

    ld h, c                                       ; $6105: $61

jr_019_6106:
    ld l, [hl]                                    ; $6106: $6e
    ld bc, $6f64                                  ; $6107: $01 $64 $6f
    jr nz, @+$6b                                  ; $610a: $20 $69

    ld [hl], e                                    ; $610c: $73
    jr nz, jr_019_6170                            ; $610d: $20 $61

    ld h, h                                       ; $610f: $64
    ld l, l                                       ; $6110: $6d
    ld l, c                                       ; $6111: $69
    ld [hl], h                                    ; $6112: $74
    ld bc, $6f79                                  ; $6113: $01 $79 $6f
    ld [hl], l                                    ; $6116: $75

jr_019_6117:
    daa                                           ; $6117: $27
    ld [hl], d                                    ; $6118: $72
    ld h, l                                       ; $6119: $65
    jr nz, jr_019_6190                            ; $611a: $20 $74

    ld l, b                                       ; $611c: $68
    ld h, l                                       ; $611d: $65
    jr nz, jr_019_6182                            ; $611e: $20 $62

    ld h, l                                       ; $6120: $65
    ld [hl], e                                    ; $6121: $73
    ld [hl], h                                    ; $6122: $74
    inc l                                         ; $6123: $2c
    ld [bc], a                                    ; $6124: $02
    ld h, l                                       ; $6125: $65
    halt                                          ; $6126: $76
    ld h, l                                       ; $6127: $65
    ld l, [hl]                                    ; $6128: $6e
    jr nz, jr_019_6194                            ; $6129: $20 $69

    ld h, [hl]                                    ; $612b: $66
    jr nz, @+$7b                                  ; $612c: $20 $79

jr_019_612e:
    ld l, a                                       ; $612e: $6f
    ld [hl], l                                    ; $612f: $75
    daa                                           ; $6130: $27

jr_019_6131:
    ld [hl], d                                    ; $6131: $72
    ld h, l                                       ; $6132: $65
    jr nz, jr_019_61a3                            ; $6133: $20 $6e

jr_019_6135:
    ld l, a                                       ; $6135: $6f
    ld [hl], h                                    ; $6136: $74
    ld bc, $614d                                  ; $6137: $01 $4d $61
    ld [hl], d                                    ; $613a: $72
    ld l, c                                       ; $613b: $69
    ld l, a                                       ; $613c: $6f
    ld l, [hl]                                    ; $613d: $6e
    jr nz, @+$45                                  ; $613e: $20 $43

    ld l, h                                       ; $6140: $6c
    ld [hl], l                                    ; $6141: $75
    ld h, d                                       ; $6142: $62
    jr nz, jr_019_6188                            ; $6143: $20 $43

    ld l, b                                       ; $6145: $68
    ld h, c                                       ; $6146: $61
    ld l, l                                       ; $6147: $6d
    ld [hl], b                                    ; $6148: $70
    ld l, $03                                     ; $6149: $2e $03

jr_019_614b:
    nop                                           ; $614b: $00

jr_019_614c:
    ld c, c                                       ; $614c: $49
    jr nz, @+$69                                  ; $614d: $20 $67

    ld [hl], l                                    ; $614f: $75
    ld h, l                                       ; $6150: $65
    ld [hl], e                                    ; $6151: $73
    ld [hl], e                                    ; $6152: $73
    jr nz, @+$63                                  ; $6153: $20 $61

    ld l, h                                       ; $6155: $6c
    ld l, h                                       ; $6156: $6c
    jr nz, @+$4b                                  ; $6157: $20 $49

    jr nz, jr_019_61be                            ; $6159: $20 $63

    ld h, c                                       ; $615b: $61
    ld l, [hl]                                    ; $615c: $6e
    ld bc, $6f64                                  ; $615d: $01 $64 $6f

jr_019_6160:
    jr nz, jr_019_61cb                            ; $6160: $20 $69

    ld [hl], e                                    ; $6162: $73
    jr nz, @+$63                                  ; $6163: $20 $61

    ld h, h                                       ; $6165: $64
    ld l, l                                       ; $6166: $6d
    ld l, c                                       ; $6167: $69

jr_019_6168:
    ld [hl], h                                    ; $6168: $74
    ld bc, $6f79                                  ; $6169: $01 $79 $6f
    ld [hl], l                                    ; $616c: $75
    daa                                           ; $616d: $27
    ld [hl], d                                    ; $616e: $72
    ld h, l                                       ; $616f: $65

jr_019_6170:
    jr nz, jr_019_61e6                            ; $6170: $20 $74

    ld l, b                                       ; $6172: $68
    ld h, l                                       ; $6173: $65
    jr nz, jr_019_61d8                            ; $6174: $20 $62

    ld h, l                                       ; $6176: $65
    ld [hl], e                                    ; $6177: $73
    ld [hl], h                                    ; $6178: $74
    ld l, $02                                     ; $6179: $2e $02
    ld b, d                                       ; $617b: $42
    ld h, l                                       ; $617c: $65
    jr nz, jr_019_61f2                            ; $617d: $20 $73

    ld [hl], l                                    ; $617f: $75
    ld [hl], d                                    ; $6180: $72
    ld h, l                                       ; $6181: $65

jr_019_6182:
    jr nz, jr_019_61f8                            ; $6182: $20 $74

    ld l, a                                       ; $6184: $6f
    jr nz, jr_019_61e9                            ; $6185: $20 $62

    ld h, l                                       ; $6187: $65

jr_019_6188:
    jr nz, @+$76                                  ; $6188: $20 $74

    ld l, b                                       ; $618a: $68
    ld h, l                                       ; $618b: $65
    ld bc, $6966                                  ; $618c: $01 $66 $69
    ld [hl], d                                    ; $618f: $72

jr_019_6190:
    ld [hl], e                                    ; $6190: $73
    ld [hl], h                                    ; $6191: $74
    jr nz, jr_019_61db                            ; $6192: $20 $47

jr_019_6194:
    ld [hl], d                                    ; $6194: $72
    ld h, c                                       ; $6195: $61
    ld l, [hl]                                    ; $6196: $6e
    ld h, h                                       ; $6197: $64
    jr nz, jr_019_61dd                            ; $6198: $20 $43

    ld l, b                                       ; $619a: $68
    ld h, c                                       ; $619b: $61
    ld l, l                                       ; $619c: $6d
    ld [hl], b                                    ; $619d: $70
    ld bc, $6f74                                  ; $619e: $01 $74 $6f
    jr nz, jr_019_6205                            ; $61a1: $20 $62

jr_019_61a3:
    ld h, l                                       ; $61a3: $65
    ld h, c                                       ; $61a4: $61
    ld [hl], h                                    ; $61a5: $74
    jr nz, jr_019_61f5                            ; $61a6: $20 $4d

    ld h, c                                       ; $61a8: $61
    ld [hl], d                                    ; $61a9: $72
    ld l, c                                       ; $61aa: $69
    ld l, a                                       ; $61ab: $6f
    ld l, $03                                     ; $61ac: $2e $03
    nop                                           ; $61ae: $00
    ld d, e                                       ; $61af: $53
    ld l, a                                       ; $61b0: $6f
    jr nz, @+$7b                                  ; $61b1: $20 $79

    ld l, a                                       ; $61b3: $6f
    ld [hl], l                                    ; $61b4: $75
    jr nz, jr_019_622e                            ; $61b5: $20 $77

    ld h, l                                       ; $61b7: $65
    ld [hl], d                                    ; $61b8: $72
    ld h, l                                       ; $61b9: $65
    jr nz, jr_019_621d                            ; $61ba: $20 $61

    ld l, c                                       ; $61bc: $69
    ld l, l                                       ; $61bd: $6d

jr_019_61be:
    ld l, c                                       ; $61be: $69
    ld l, [hl]                                    ; $61bf: $6e
    ld h, a                                       ; $61c0: $67
    ld bc, $6f66                                  ; $61c1: $01 $66 $6f
    ld [hl], d                                    ; $61c4: $72
    jr nz, @+$49                                  ; $61c5: $20 $47

    ld [hl], d                                    ; $61c7: $72
    ld h, c                                       ; $61c8: $61
    ld l, [hl]                                    ; $61c9: $6e
    ld h, h                                       ; $61ca: $64

jr_019_61cb:
    jr nz, jr_019_6210                            ; $61cb: $20 $43

    ld l, b                                       ; $61cd: $68
    ld h, c                                       ; $61ce: $61
    ld l, l                                       ; $61cf: $6d
    ld [hl], b                                    ; $61d0: $70
    ld l, c                                       ; $61d1: $69
    ld l, a                                       ; $61d2: $6f
    ld l, [hl]                                    ; $61d3: $6e
    ld bc, $6874                                  ; $61d4: $01 $74 $68
    ld h, l                                       ; $61d7: $65

jr_019_61d8:
    jr nz, jr_019_6251                            ; $61d8: $20 $77

    ld l, b                                       ; $61da: $68

jr_019_61db:
    ld l, a                                       ; $61db: $6f
    ld l, h                                       ; $61dc: $6c

jr_019_61dd:
    ld h, l                                       ; $61dd: $65
    jr nz, @+$76                                  ; $61de: $20 $74

    ld l, c                                       ; $61e0: $69
    ld l, l                                       ; $61e1: $6d
    ld h, l                                       ; $61e2: $65
    ld l, $20                                     ; $61e3: $2e $20
    ld c, [hl]                                    ; $61e5: $4e

jr_019_61e6:
    ld l, a                                       ; $61e6: $6f
    ld [bc], a                                    ; $61e7: $02
    ld [hl], a                                    ; $61e8: $77

jr_019_61e9:
    ld l, a                                       ; $61e9: $6f
    ld l, [hl]                                    ; $61ea: $6e
    ld h, h                                       ; $61eb: $64
    ld h, l                                       ; $61ec: $65
    ld [hl], d                                    ; $61ed: $72
    jr nz, jr_019_6269                            ; $61ee: $20 $79

    ld l, a                                       ; $61f0: $6f
    ld [hl], l                                    ; $61f1: $75

jr_019_61f2:
    jr nz, jr_019_6262                            ; $61f2: $20 $6e

    ld h, l                                       ; $61f4: $65

jr_019_61f5:
    halt                                          ; $61f5: $76
    ld h, l                                       ; $61f6: $65
    ld [hl], d                                    ; $61f7: $72

jr_019_61f8:
    ld bc, $6167                                  ; $61f8: $01 $67 $61
    halt                                          ; $61fb: $76
    ld h, l                                       ; $61fc: $65
    jr nz, jr_019_624f                            ; $61fd: $20 $50

    ld h, c                                       ; $61ff: $61
    ld l, h                                       ; $6200: $6c
    ld l, l                                       ; $6201: $6d
    jr nz, jr_019_6247                            ; $6202: $20 $43

    ld l, h                                       ; $6204: $6c

jr_019_6205:
    ld [hl], l                                    ; $6205: $75
    ld h, d                                       ; $6206: $62
    ld bc, $2061                                  ; $6207: $01 $61 $20
    ld [hl-], a                                   ; $620a: $32
    ld l, [hl]                                    ; $620b: $6e
    ld h, h                                       ; $620c: $64
    jr nz, jr_019_6283                            ; $620d: $20 $74

    ld l, b                                       ; $620f: $68

jr_019_6210:
    ld l, a                                       ; $6210: $6f
    ld [hl], l                                    ; $6211: $75
    ld h, a                                       ; $6212: $67
    ld l, b                                       ; $6213: $68
    ld [hl], h                                    ; $6214: $74
    ld l, $03                                     ; $6215: $2e $03
    nop                                           ; $6217: $00
    ld b, e                                       ; $6218: $43
    ld l, a                                       ; $6219: $6f
    ld l, [hl]                                    ; $621a: $6e
    ld h, a                                       ; $621b: $67
    ld [hl], d                                    ; $621c: $72

jr_019_621d:
    ld h, c                                       ; $621d: $61
    ld [hl], h                                    ; $621e: $74
    ld [hl], l                                    ; $621f: $75
    ld l, h                                       ; $6220: $6c
    ld h, c                                       ; $6221: $61
    ld [hl], h                                    ; $6222: $74
    ld l, c                                       ; $6223: $69
    ld l, a                                       ; $6224: $6f
    ld l, [hl]                                    ; $6225: $6e
    ld [hl], e                                    ; $6226: $73
    jr nz, jr_019_6298                            ; $6227: $20 $6f

    ld l, [hl]                                    ; $6229: $6e
    ld bc, $6874                                  ; $622a: $01 $74 $68
    ld h, l                                       ; $622d: $65

jr_019_622e:
    jr nz, jr_019_6273                            ; $622e: $20 $43

    ld l, b                                       ; $6230: $68
    ld h, c                                       ; $6231: $61
    ld l, l                                       ; $6232: $6d
    ld [hl], b                                    ; $6233: $70
    ld l, c                                       ; $6234: $69
    ld l, a                                       ; $6235: $6f
    ld l, [hl]                                    ; $6236: $6e
    ld [hl], e                                    ; $6237: $73
    ld l, b                                       ; $6238: $68
    ld l, c                                       ; $6239: $69
    ld [hl], b                                    ; $623a: $70
    inc l                                         ; $623b: $2c
    ld bc, $2e07                                  ; $623c: $01 $07 $2e
    ld [bc], a                                    ; $623f: $02
    ld d, h                                       ; $6240: $54
    ld l, b                                       ; $6241: $68
    ld h, l                                       ; $6242: $65
    jr nz, jr_019_62bc                            ; $6243: $20 $77

    ld h, c                                       ; $6245: $61
    ld a, c                                       ; $6246: $79

jr_019_6247:
    jr nz, @+$7b                                  ; $6247: $20 $79

    ld l, a                                       ; $6249: $6f
    ld [hl], l                                    ; $624a: $75
    jr nz, jr_019_62b5                            ; $624b: $20 $68

    ld h, c                                       ; $624d: $61
    ld l, [hl]                                    ; $624e: $6e

jr_019_624f:
    ld h, h                                       ; $624f: $64
    ld l, h                                       ; $6250: $6c

jr_019_6251:
    ld h, l                                       ; $6251: $65
    ld bc, $6f79                                  ; $6252: $01 $79 $6f
    ld [hl], l                                    ; $6255: $75
    ld [hl], d                                    ; $6256: $72
    jr nz, jr_019_62bc                            ; $6257: $20 $63

    ld l, h                                       ; $6259: $6c
    ld [hl], l                                    ; $625a: $75
    ld h, d                                       ; $625b: $62
    ld [hl], e                                    ; $625c: $73
    inc l                                         ; $625d: $2c
    jr nz, jr_019_62a9                            ; $625e: $20 $49

    jr nz, @+$6d                                  ; $6260: $20 $6b

jr_019_6262:
    ld l, [hl]                                    ; $6262: $6e
    ld h, l                                       ; $6263: $65
    ld [hl], a                                    ; $6264: $77
    ld bc, $6f79                                  ; $6265: $01 $79 $6f
    ld [hl], l                                    ; $6268: $75

jr_019_6269:
    daa                                           ; $6269: $27
    ld h, h                                       ; $626a: $64
    jr nz, @+$76                                  ; $626b: $20 $74

    ld h, c                                       ; $626d: $61
    ld l, e                                       ; $626e: $6b
    ld h, l                                       ; $626f: $65
    jr nz, jr_019_62db                            ; $6270: $20 $69

    ld [hl], h                                    ; $6272: $74

jr_019_6273:
    ld l, $03                                     ; $6273: $2e $03
    nop                                           ; $6275: $00
    ld e, c                                       ; $6276: $59
    ld l, a                                       ; $6277: $6f
    ld [hl], l                                    ; $6278: $75
    jr nz, jr_019_62ee                            ; $6279: $20 $73

    ld l, b                                       ; $627b: $68
    ld l, a                                       ; $627c: $6f
    ld [hl], a                                    ; $627d: $77
    ld h, l                                       ; $627e: $65
    ld h, h                                       ; $627f: $64
    jr nz, jr_019_62a9                            ; $6280: $20 $27

    ld h, l                                       ; $6282: $65

jr_019_6283:
    ld l, l                                       ; $6283: $6d
    ld bc, $6e69                                  ; $6284: $01 $69 $6e
    jr nz, jr_019_62fd                            ; $6287: $20 $74

    ld l, b                                       ; $6289: $68
    ld h, l                                       ; $628a: $65
    jr nz, jr_019_62d9                            ; $628b: $20 $4c

    ld l, c                                       ; $628d: $69
    ld l, [hl]                                    ; $628e: $6e
    ld l, e                                       ; $628f: $6b
    ld [hl], e                                    ; $6290: $73
    jr nz, jr_019_62e7                            ; $6291: $20 $54

    ld l, a                                       ; $6293: $6f
    ld [hl], l                                    ; $6294: $75
    ld [hl], d                                    ; $6295: $72
    ld l, [hl]                                    ; $6296: $6e
    ld h, c                                       ; $6297: $61

jr_019_6298:
    ld l, l                                       ; $6298: $6d
    ld h, l                                       ; $6299: $65
    ld l, [hl]                                    ; $629a: $6e
    ld [hl], h                                    ; $629b: $74
    inc l                                         ; $629c: $2c
    ld bc, $2e07                                  ; $629d: $01 $07 $2e
    ld [bc], a                                    ; $62a0: $02
    ld d, h                                       ; $62a1: $54
    ld l, b                                       ; $62a2: $68
    ld h, l                                       ; $62a3: $65
    jr nz, jr_019_631a                            ; $62a4: $20 $74

    ld l, b                                       ; $62a6: $68
    ld l, c                                       ; $62a7: $69
    ld l, [hl]                                    ; $62a8: $6e

jr_019_62a9:
    ld h, a                                       ; $62a9: $67
    jr nz, jr_019_62f5                            ; $62aa: $20 $49

    jr nz, jr_019_6312                            ; $62ac: $20 $64

    ld l, a                                       ; $62ae: $6f
    ld l, [hl]                                    ; $62af: $6e
    daa                                           ; $62b0: $27
    ld [hl], h                                    ; $62b1: $74
    ld bc, $6567                                  ; $62b2: $01 $67 $65

jr_019_62b5:
    ld [hl], h                                    ; $62b5: $74
    jr nz, jr_019_6321                            ; $62b6: $20 $69

    ld [hl], e                                    ; $62b8: $73
    jr nz, @+$79                                  ; $62b9: $20 $77

    ld l, b                                       ; $62bb: $68

jr_019_62bc:
    ld a, c                                       ; $62bc: $79
    jr nz, @+$7b                                  ; $62bd: $20 $79

    ld l, a                                       ; $62bf: $6f
    ld [hl], l                                    ; $62c0: $75
    ld bc, $656e                                  ; $62c1: $01 $6e $65
    halt                                          ; $62c4: $76
    ld h, l                                       ; $62c5: $65
    ld [hl], d                                    ; $62c6: $72
    jr nz, @+$76                                  ; $62c7: $20 $74

    ld l, a                                       ; $62c9: $6f
    ld l, a                                       ; $62ca: $6f
    ld l, e                                       ; $62cb: $6b
    jr nz, jr_019_6312                            ; $62cc: $20 $44

    ld [hl], l                                    ; $62ce: $75
    ld l, [hl]                                    ; $62cf: $6e
    ld h, l                                       ; $62d0: $65
    ld hl, $213f                                  ; $62d1: $21 $3f $21
    inc bc                                        ; $62d4: $03
    nop                                           ; $62d5: $00
    ld e, c                                       ; $62d6: $59
    ld l, a                                       ; $62d7: $6f
    ld [hl], l                                    ; $62d8: $75

jr_019_62d9:
    jr nz, jr_019_634e                            ; $62d9: $20 $73

jr_019_62db:
    ld l, b                                       ; $62db: $68
    ld l, a                                       ; $62dc: $6f
    ld [hl], a                                    ; $62dd: $77
    ld h, l                                       ; $62de: $65
    ld h, h                                       ; $62df: $64
    jr nz, jr_019_6309                            ; $62e0: $20 $27

    ld h, l                                       ; $62e2: $65
    ld l, l                                       ; $62e3: $6d
    ld bc, $6e69                                  ; $62e4: $01 $69 $6e

jr_019_62e7:
    jr nz, jr_019_635d                            ; $62e7: $20 $74

    ld l, b                                       ; $62e9: $68
    ld h, l                                       ; $62ea: $65
    jr nz, @+$4e                                  ; $62eb: $20 $4c

    ld l, c                                       ; $62ed: $69

jr_019_62ee:
    ld l, [hl]                                    ; $62ee: $6e
    ld l, e                                       ; $62ef: $6b
    ld [hl], e                                    ; $62f0: $73
    jr nz, @+$56                                  ; $62f1: $20 $54

    ld l, a                                       ; $62f3: $6f
    ld [hl], l                                    ; $62f4: $75

jr_019_62f5:
    ld [hl], d                                    ; $62f5: $72
    ld l, [hl]                                    ; $62f6: $6e
    ld h, c                                       ; $62f7: $61
    ld l, l                                       ; $62f8: $6d
    ld h, l                                       ; $62f9: $65
    ld l, [hl]                                    ; $62fa: $6e
    ld [hl], h                                    ; $62fb: $74
    inc l                                         ; $62fc: $2c

jr_019_62fd:
    ld bc, $2e07                                  ; $62fd: $01 $07 $2e
    ld [bc], a                                    ; $6300: $02
    ld c, [hl]                                    ; $6301: $4e
    ld l, a                                       ; $6302: $6f
    ld [hl], a                                    ; $6303: $77
    jr nz, jr_019_634f                            ; $6304: $20 $49

    jr nz, @+$79                                  ; $6306: $20 $77

    ld h, c                                       ; $6308: $61

jr_019_6309:
    ld l, [hl]                                    ; $6309: $6e
    ld [hl], h                                    ; $630a: $74
    jr nz, jr_019_6381                            ; $630b: $20 $74

    ld l, a                                       ; $630d: $6f
    ld bc, $6573                                  ; $630e: $01 $73 $65
    ld h, l                                       ; $6311: $65

jr_019_6312:
    jr nz, jr_019_638d                            ; $6312: $20 $79

    ld l, a                                       ; $6314: $6f
    ld [hl], l                                    ; $6315: $75
    jr nz, jr_019_637a                            ; $6316: $20 $62

    ld h, l                                       ; $6318: $65
    ld h, c                                       ; $6319: $61

jr_019_631a:
    ld [hl], h                                    ; $631a: $74
    ld bc, $614d                                  ; $631b: $01 $4d $61
    ld [hl], d                                    ; $631e: $72
    ld l, c                                       ; $631f: $69
    ld l, a                                       ; $6320: $6f

jr_019_6321:
    ld hl, $0003                                  ; $6321: $21 $03 $00
    ld c, c                                       ; $6324: $49
    daa                                           ; $6325: $27
    halt                                          ; $6326: $76
    ld h, l                                       ; $6327: $65
    jr nz, jr_019_6390                            ; $6328: $20 $66

    ld h, c                                       ; $632a: $61
    ld l, c                                       ; $632b: $69
    ld l, h                                       ; $632c: $6c
    ld h, l                                       ; $632d: $65
    ld h, h                                       ; $632e: $64
    inc l                                         ; $632f: $2c
    ld bc, $2e07                                  ; $6330: $01 $07 $2e
    jr nz, jr_019_638e                            ; $6333: $20 $59

    ld l, a                                       ; $6335: $6f
    ld [hl], l                                    ; $6336: $75
    ld bc, $6168                                  ; $6337: $01 $68 $61
    halt                                          ; $633a: $76
    ld h, l                                       ; $633b: $65
    jr nz, jr_019_63a0                            ; $633c: $20 $62

    ld h, l                                       ; $633e: $65
    ld [hl], e                                    ; $633f: $73
    ld [hl], h                                    ; $6340: $74
    ld h, l                                       ; $6341: $65
    ld h, h                                       ; $6342: $64
    jr nz, jr_019_63b2                            ; $6343: $20 $6d

    ld h, l                                       ; $6345: $65
    ld l, $03                                     ; $6346: $2e $03
    nop                                           ; $6348: $00
    ld d, e                                       ; $6349: $53
    ld [hl], l                                    ; $634a: $75
    ld [hl], d                                    ; $634b: $72
    ld h, l                                       ; $634c: $65
    ld l, h                                       ; $634d: $6c

jr_019_634e:
    ld a, c                                       ; $634e: $79

jr_019_634f:
    jr nz, jr_019_63ca                            ; $634f: $20 $79

    ld l, a                                       ; $6351: $6f
    ld [hl], l                                    ; $6352: $75
    daa                                           ; $6353: $27
    ld l, h                                       ; $6354: $6c
    ld l, h                                       ; $6355: $6c
    jr nz, @+$64                                  ; $6356: $20 $62

    ld h, l                                       ; $6358: $65
    ld bc, $6e69                                  ; $6359: $01 $69 $6e
    halt                                          ; $635c: $76

jr_019_635d:
    ld l, c                                       ; $635d: $69
    ld [hl], h                                    ; $635e: $74
    ld h, l                                       ; $635f: $65
    ld h, h                                       ; $6360: $64
    jr nz, jr_019_63d7                            ; $6361: $20 $74

    ld l, a                                       ; $6363: $6f
    jr nz, jr_019_63d3                            ; $6364: $20 $6d

    ld h, l                                       ; $6366: $65
    ld h, l                                       ; $6367: $65
    ld [hl], h                                    ; $6368: $74
    ld bc, $614d                                  ; $6369: $01 $4d $61
    ld [hl], d                                    ; $636c: $72
    ld l, c                                       ; $636d: $69
    ld l, a                                       ; $636e: $6f
    ld l, $03                                     ; $636f: $2e $03
    nop                                           ; $6371: $00
    ld c, c                                       ; $6372: $49
    jr nz, @+$65                                  ; $6373: $20 $63

    ld l, b                                       ; $6375: $68
    ld h, c                                       ; $6376: $61
    ld l, h                                       ; $6377: $6c
    ld l, h                                       ; $6378: $6c
    ld h, l                                       ; $6379: $65

jr_019_637a:
    ld l, [hl]                                    ; $637a: $6e
    ld h, a                                       ; $637b: $67
    ld h, l                                       ; $637c: $65
    ld h, h                                       ; $637d: $64
    jr nz, @+$4f                                  ; $637e: $20 $4d

    ld h, c                                       ; $6380: $61

jr_019_6381:
    ld [hl], d                                    ; $6381: $72
    ld l, c                                       ; $6382: $69
    ld l, a                                       ; $6383: $6f
    ld bc, $616d                                  ; $6384: $01 $6d $61
    ld l, [hl]                                    ; $6387: $6e
    ld a, c                                       ; $6388: $79
    jr nz, jr_019_63ff                            ; $6389: $20 $74

    ld l, c                                       ; $638b: $69
    ld l, l                                       ; $638c: $6d

jr_019_638d:
    ld h, l                                       ; $638d: $65

jr_019_638e:
    ld [hl], e                                    ; $638e: $73
    inc l                                         ; $638f: $2c

jr_019_6390:
    jr nz, jr_019_640b                            ; $6390: $20 $79

    ld h, l                                       ; $6392: $65
    ld [hl], h                                    ; $6393: $74
    ld bc, $6976                                  ; $6394: $01 $76 $69
    ld h, e                                       ; $6397: $63
    ld [hl], h                                    ; $6398: $74
    ld l, a                                       ; $6399: $6f
    ld [hl], d                                    ; $639a: $72
    ld a, c                                       ; $639b: $79
    jr nz, jr_019_6403                            ; $639c: $20 $65

    ld l, h                                       ; $639e: $6c
    ld [hl], l                                    ; $639f: $75

jr_019_63a0:
    ld h, h                                       ; $63a0: $64
    ld h, l                                       ; $63a1: $65
    ld h, h                                       ; $63a2: $64
    jr nz, jr_019_6412                            ; $63a3: $20 $6d

    ld h, l                                       ; $63a5: $65
    ld l, $03                                     ; $63a6: $2e $03
    nop                                           ; $63a8: $00
    ld e, c                                       ; $63a9: $59
    ld l, a                                       ; $63aa: $6f
    ld [hl], l                                    ; $63ab: $75
    jr nz, jr_019_641b                            ; $63ac: $20 $6d

    ld h, c                                       ; $63ae: $61
    ld a, c                                       ; $63af: $79
    jr nz, jr_019_6414                            ; $63b0: $20 $62

jr_019_63b2:
    ld h, l                                       ; $63b2: $65
    jr nz, jr_019_6416                            ; $63b3: $20 $61

    ld h, d                                       ; $63b5: $62
    ld l, h                                       ; $63b6: $6c
    ld h, l                                       ; $63b7: $65
    ld bc, $6f74                                  ; $63b8: $01 $74 $6f
    jr nz, jr_019_6421                            ; $63bb: $20 $64

    ld h, l                                       ; $63bd: $65
    ld h, [hl]                                    ; $63be: $66
    ld h, l                                       ; $63bf: $65
    ld h, c                                       ; $63c0: $61
    ld [hl], h                                    ; $63c1: $74
    jr nz, jr_019_642c                            ; $63c2: $20 $68

    ld l, c                                       ; $63c4: $69
    ld l, l                                       ; $63c5: $6d
    ld l, $20                                     ; $63c6: $2e $20
    ld e, c                                       ; $63c8: $59
    ld h, l                                       ; $63c9: $65

jr_019_63ca:
    ld [hl], e                                    ; $63ca: $73
    ld hl, $4401                                  ; $63cb: $21 $01 $44
    ld h, l                                       ; $63ce: $65
    ld h, [hl]                                    ; $63cf: $66
    ld h, l                                       ; $63d0: $65
    ld h, c                                       ; $63d1: $61
    ld [hl], h                                    ; $63d2: $74

jr_019_63d3:
    jr nz, jr_019_643d                            ; $63d3: $20 $68

    ld l, c                                       ; $63d5: $69
    ld l, l                                       ; $63d6: $6d

jr_019_63d7:
    jr nz, jr_019_643f                            ; $63d7: $20 $66

    ld l, a                                       ; $63d9: $6f
    ld [hl], d                                    ; $63da: $72
    jr nz, @+$6f                                  ; $63db: $20 $6d

    ld h, l                                       ; $63dd: $65
    ld hl, $0003                                  ; $63de: $21 $03 $00
    ld d, h                                       ; $63e1: $54
    ld l, b                                       ; $63e2: $68
    ld h, l                                       ; $63e3: $65
    jr nz, @+$68                                  ; $63e4: $20 $66

    ld l, a                                       ; $63e6: $6f
    ld [hl], d                                    ; $63e7: $72
    ld l, l                                       ; $63e8: $6d
    ld h, l                                       ; $63e9: $65
    ld [hl], d                                    ; $63ea: $72
    jr nz, jr_019_6430                            ; $63eb: $20 $43

    ld l, h                                       ; $63ed: $6c
    ld [hl], l                                    ; $63ee: $75
    ld h, d                                       ; $63ef: $62
    ld bc, $6843                                  ; $63f0: $01 $43 $68
    ld h, c                                       ; $63f3: $61
    ld l, l                                       ; $63f4: $6d
    ld [hl], b                                    ; $63f5: $70
    ld [hl], e                                    ; $63f6: $73
    jr nz, @+$77                                  ; $63f7: $20 $75

    ld [hl], e                                    ; $63f9: $73
    ld h, l                                       ; $63fa: $65
    ld h, h                                       ; $63fb: $64
    jr nz, @+$76                                  ; $63fc: $20 $74

    ld l, a                                       ; $63fe: $6f

jr_019_63ff:
    ld bc, $6168                                  ; $63ff: $01 $68 $61
    ld l, [hl]                                    ; $6402: $6e

jr_019_6403:
    ld h, a                                       ; $6403: $67
    jr nz, @+$71                                  ; $6404: $20 $6f

    ld [hl], l                                    ; $6406: $75
    ld [hl], h                                    ; $6407: $74
    jr nz, @+$6b                                  ; $6408: $20 $69

    ld l, [hl]                                    ; $640a: $6e

jr_019_640b:
    jr nz, @+$76                                  ; $640b: $20 $74

    ld l, b                                       ; $640d: $68
    ld h, l                                       ; $640e: $65
    jr nz, @+$6e                                  ; $640f: $20 $6c

    ld l, a                                       ; $6411: $6f

jr_019_6412:
    ld [hl], l                                    ; $6412: $75
    ld l, [hl]                                    ; $6413: $6e

jr_019_6414:
    ld h, a                                       ; $6414: $67
    ld h, l                                       ; $6415: $65

jr_019_6416:
    ld l, $03                                     ; $6416: $2e $03
    nop                                           ; $6418: $00
    ld d, h                                       ; $6419: $54
    ld l, b                                       ; $641a: $68

jr_019_641b:
    ld h, l                                       ; $641b: $65
    jr nz, @+$63                                  ; $641c: $20 $61

    ld [hl], d                                    ; $641e: $72
    ld h, l                                       ; $641f: $65
    ld h, c                                       ; $6420: $61

jr_019_6421:
    jr nz, @+$77                                  ; $6421: $20 $75

    ld [hl], b                                    ; $6423: $70
    jr nz, @+$76                                  ; $6424: $20 $74

    ld l, b                                       ; $6426: $68
    ld h, l                                       ; $6427: $65
    ld bc, $7473                                  ; $6428: $01 $73 $74
    ld h, l                                       ; $642b: $65

jr_019_642c:
    ld [hl], b                                    ; $642c: $70
    ld [hl], e                                    ; $642d: $73
    jr nz, @+$79                                  ; $642e: $20 $77

jr_019_6430:
    ld h, c                                       ; $6430: $61
    ld [hl], e                                    ; $6431: $73
    jr nz, @+$68                                  ; $6432: $20 $66

    ld l, a                                       ; $6434: $6f
    ld [hl], d                                    ; $6435: $72
    ld bc, $6f66                                  ; $6436: $01 $66 $6f
    ld [hl], d                                    ; $6439: $72
    ld l, l                                       ; $643a: $6d
    ld h, l                                       ; $643b: $65
    ld [hl], d                                    ; $643c: $72

jr_019_643d:
    jr nz, @+$45                                  ; $643d: $20 $43

jr_019_643f:
    ld l, h                                       ; $643f: $6c
    ld [hl], l                                    ; $6440: $75
    ld h, d                                       ; $6441: $62
    jr nz, @+$45                                  ; $6442: $20 $43

    ld l, b                                       ; $6444: $68
    ld h, c                                       ; $6445: $61
    ld l, l                                       ; $6446: $6d
    ld [hl], b                                    ; $6447: $70
    ld [hl], e                                    ; $6448: $73
    ld l, $03                                     ; $6449: $2e $03
    nop                                           ; $644b: $00

    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $01, $44, $69, $72, $65
    db $63, $74, $6f, $72, $27, $73, $20, $4f, $66, $66, $69, $63, $65, $00, $48, $65
    db $6c, $6c, $6f, $2c, $20, $07, $21, $01, $49, $74, $27, $73, $20, $79, $6f, $75
    db $72, $20, $31, $73, $74, $20, $64, $61, $79, $01, $61, $73, $20, $6f, $75, $72
    db $20, $73, $74, $75, $64, $65, $6e, $74, $21, $02, $46, $6f, $6c, $6c, $6f, $77
    db $20, $6f, $75, $72, $20, $61, $64, $76, $69, $63, $65, $2c, $01, $61, $6e, $64
    db $20, $79, $6f, $75, $27, $6c, $6c, $20, $62, $65, $01, $61, $20, $67, $72, $65
    db $61, $74, $20, $67, $6f, $6c, $66, $65, $72, $21, $03, $00, $4e, $6f, $77, $2c
    db $20, $07, $2c, $01, $6c, $65, $74, $20, $6d, $65, $20, $69, $6e, $74, $72, $6f
    db $64, $75, $63, $65, $01, $74, $68, $65, $20, $63, $6c, $75, $62, $27, $73, $20
    db $73, $74, $61, $66, $66, $2e, $03, $00, $49, $27, $6d, $20, $74, $68, $65, $20
    db $70, $72, $6f, $20, $68, $65, $72, $65, $01, $61, $74, $20, $4d, $61, $72, $69
    db $6f, $6e, $20, $43, $6c, $75, $62, $2e, $01, $4e, $69, $63, $65, $20, $74, $6f
    db $20, $6d, $65, $65, $74, $20, $79, $6f, $75, $2e, $03, $00, $54, $68, $65, $20
    db $67, $6f, $6c, $66, $20, $6d, $61, $73, $74, $65, $72, $2c, $01, $4d, $61, $72
    db $69, $6f, $2c, $20, $69, $73, $20, $74, $68, $65, $20, $69, $64, $6f, $6c, $01
    db $6f, $66, $20, $61, $6c, $6c, $20, $67, $6f, $6c, $66, $65, $72, $73, $2e, $02
    db $49, $20, $6b, $6e, $6f, $77, $20, $77, $68, $61, $74, $20, $69, $74, $27, $73
    db $01, $6c, $69, $6b, $65, $20, $74, $6f, $20, $77, $61, $6e, $74, $20, $74, $6f
    db $01, $62, $65, $20, $6c, $69, $6b, $65, $20, $4d, $61, $72, $69, $6f, $21, $03
    db $00, $49, $66, $20, $79, $6f, $75, $20, $62, $65, $63, $6f, $6d, $65, $20, $61
    db $01, $70, $72, $6f, $2c, $20, $79, $6f, $75, $20, $6d, $61, $79, $20, $67, $65
    db $74, $01, $74, $6f, $20, $6d, $65, $65, $74, $20, $4d, $61, $72, $69, $6f, $21
    db $03, $00, $49, $27, $6d, $20, $74, $68, $65, $20, $43, $61, $64, $64, $69, $65
    db $01, $4d, $61, $73, $74, $65, $72, $20, $68, $65, $72, $65, $20, $61, $74, $01
    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $2e, $02, $49, $27, $6d
    db $20, $72, $65, $73, $70, $6f, $6e, $73, $69, $62, $6c, $65, $01, $66, $6f, $72
    db $20, $74, $68, $65, $20, $63, $6f, $75, $72, $73, $65, $20, $61, $6e, $64, $01
    db $63, $61, $6e, $20, $61, $6e, $73, $77, $65, $72, $20, $71, $75, $65, $73, $74
    db $69, $6f, $6e, $73, $2e, $03, $00, $4c, $6f, $6f, $6b, $20, $61, $66, $74, $65
    db $72, $01, $07, $2c, $20, $4f, $4b, $3f, $03, $00, $55, $73, $65, $20, $4d, $61
    db $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $27, $73, $01, $66, $61, $63, $69
    db $6c, $69, $74, $69, $65, $73, $20, $74, $6f, $01, $69, $6d, $70, $72, $6f, $76
    db $65, $20, $79, $6f, $75, $72, $20, $67, $61, $6d, $65, $2e, $03, $00, $53, $65
    db $6c, $65, $63, $74, $20, $22, $43, $6c, $75, $62, $68, $6f, $75, $73, $65, $22
    db $01, $74, $6f, $20, $63, $6f, $6d, $65, $20, $68, $65, $72, $65, $01, $61, $6e
    db $79, $74, $69, $6d, $65, $2e, $02, $53, $65, $65, $20, $79, $6f, $75, $01, $6f
    db $6e, $20, $74, $68, $65, $20, $67, $72, $65, $65, $6e, $21, $03, $00, $50, $72
    db $61, $63, $74, $69, $63, $65, $20, $68, $61, $72, $64, $20, $61, $74, $01, $4d
    db $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $2e, $20, $57, $68, $65, $6e
    db $01, $79, $6f, $75, $20, $66, $69, $6e, $64, $20, $6e, $65, $77, $20, $6a, $6f
    db $79, $20, $69, $6e, $02, $67, $6f, $6c, $66, $20, $61, $6e, $64, $20, $6b, $6e
    db $6f, $77, $20, $69, $74, $73, $01, $64, $65, $70, $74, $68, $73, $2c, $20, $74
    db $68, $65, $6e, $20, $79, $6f, $75, $27, $6c, $6c, $01, $62, $65, $20, $61, $20
    db $6d, $61, $73, $74, $65, $72, $2e, $03, $00, $47, $72, $65, $61, $74, $20, $74
    db $68, $69, $6e, $67, $73, $20, $61, $77, $61, $69, $74, $01, $69, $66, $20, $79
    db $6f, $75, $20, $62, $75, $69, $6c, $64, $20, $61, $01, $72, $65, $70, $75, $74
    db $61, $74, $69, $6f, $6e, $20, $61, $73, $20, $61, $6e, $02, $65, $78, $70, $65
    db $72, $74, $2e, $20, $54, $6f, $20, $64, $6f, $20, $73, $6f, $2c, $01, $79, $6f
    db $75, $20, $6d, $75, $73, $74, $20, $66, $69, $72, $73, $74, $20, $66, $61, $63
    db $65, $01, $74, $68, $65, $20, $43, $6c, $75, $62, $20, $43, $68, $61, $6d, $70
    db $21, $03, $00, $54, $72, $61, $69, $6e, $20, $61, $74, $20, $4d, $61, $72, $69
    db $6f, $6e, $20, $43, $6c, $75, $62, $01, $74, $6f, $20, $65, $6e, $74, $65, $72
    db $20, $74, $68, $65, $20, $43, $6c, $75, $62, $01, $54, $6f, $75, $72, $6e, $61
    db $6d, $65, $6e, $74, $2e, $02, $50, $6c, $61, $63, $65, $20, $68, $65, $72, $65
    db $20, $61, $6e, $64, $20, $79, $6f, $75, $01, $63, $61, $6e, $20, $65, $6e, $74
    db $65, $72, $20, $6f, $74, $68, $65, $72, $20, $43, $6c, $75, $62, $01, $54, $6f
    db $75, $72, $6e, $61, $6d, $65, $6e, $74, $73, $2e, $03, $00, $49, $66

    jr nz, @+$7b                                  ; $67ea: $20 $79

    ld l, a                                       ; $67ec: $6f
    ld [hl], l                                    ; $67ed: $75
    jr nz, jr_019_685e                            ; $67ee: $20 $6e

    ld h, l                                       ; $67f0: $65
    ld h, l                                       ; $67f1: $65
    ld h, h                                       ; $67f2: $64
    jr nz, jr_019_6862                            ; $67f3: $20 $6d

    ld h, l                                       ; $67f5: $65
    inc l                                         ; $67f6: $2c
    ld bc, $7361                                  ; $67f7: $01 $61 $73
    ld l, e                                       ; $67fa: $6b
    jr nz, jr_019_685e                            ; $67fb: $20 $61

    ld [hl], h                                    ; $67fd: $74
    jr nz, @+$76                                  ; $67fe: $20 $74

    ld l, b                                       ; $6800: $68
    ld h, l                                       ; $6801: $65
    jr nz, jr_019_6847                            ; $6802: $20 $43

    ld h, c                                       ; $6804: $61
    ld h, h                                       ; $6805: $64
    ld h, h                                       ; $6806: $64
    ld l, c                                       ; $6807: $69
    ld h, l                                       ; $6808: $65
    ld bc, $614d                                  ; $6809: $01 $4d $61
    ld [hl], e                                    ; $680c: $73
    ld [hl], h                                    ; $680d: $74
    ld h, l                                       ; $680e: $65
    ld [hl], d                                    ; $680f: $72
    daa                                           ; $6810: $27
    ld [hl], e                                    ; $6811: $73
    jr nz, jr_019_6863                            ; $6812: $20 $4f

    ld h, [hl]                                    ; $6814: $66
    ld h, [hl]                                    ; $6815: $66
    ld l, c                                       ; $6816: $69
    ld h, e                                       ; $6817: $63
    ld h, l                                       ; $6818: $65
    ld l, $03                                     ; $6819: $2e $03
    nop                                           ; $681b: $00
    ld e, c                                       ; $681c: $59
    ld l, a                                       ; $681d: $6f
    ld [hl], l                                    ; $681e: $75
    jr nz, jr_019_6891                            ; $681f: $20 $70

    ld l, h                                       ; $6821: $6c
    ld h, c                                       ; $6822: $61
    ld h, e                                       ; $6823: $63
    ld h, l                                       ; $6824: $65
    ld h, h                                       ; $6825: $64
    jr nz, jr_019_6891                            ; $6826: $20 $69

    ld l, [hl]                                    ; $6828: $6e
    jr nz, jr_019_689f                            ; $6829: $20 $74

    ld l, b                                       ; $682b: $68
    ld h, l                                       ; $682c: $65
    ld bc, $6c43                                  ; $682d: $01 $43 $6c
    ld [hl], l                                    ; $6830: $75
    ld h, d                                       ; $6831: $62
    jr nz, jr_019_6888                            ; $6832: $20 $54

    ld l, a                                       ; $6834: $6f
    ld [hl], l                                    ; $6835: $75
    ld [hl], d                                    ; $6836: $72
    ld l, [hl]                                    ; $6837: $6e
    ld h, c                                       ; $6838: $61
    ld l, l                                       ; $6839: $6d
    ld h, l                                       ; $683a: $65
    ld l, [hl]                                    ; $683b: $6e
    ld [hl], h                                    ; $683c: $74
    jr nz, jr_019_68a8                            ; $683d: $20 $69

    ld l, [hl]                                    ; $683f: $6e
    ld bc, $7573                                  ; $6840: $01 $73 $75
    ld h, e                                       ; $6843: $63
    ld l, b                                       ; $6844: $68
    jr nz, jr_019_68a8                            ; $6845: $20 $61

jr_019_6847:
    jr nz, jr_019_68bc                            ; $6847: $20 $73

    ld l, b                                       ; $6849: $68
    ld l, a                                       ; $684a: $6f
    ld [hl], d                                    ; $684b: $72
    ld [hl], h                                    ; $684c: $74
    jr nz, jr_019_68c3                            ; $684d: $20 $74

    ld l, c                                       ; $684f: $69
    ld l, l                                       ; $6850: $6d
    ld h, l                                       ; $6851: $65
    ld l, $02                                     ; $6852: $2e $02
    ld e, c                                       ; $6854: $59
    ld l, a                                       ; $6855: $6f
    ld [hl], l                                    ; $6856: $75
    jr nz, jr_019_68cc                            ; $6857: $20 $73

    ld l, b                                       ; $6859: $68
    ld l, a                                       ; $685a: $6f
    ld [hl], l                                    ; $685b: $75
    ld l, h                                       ; $685c: $6c
    ld h, h                                       ; $685d: $64

jr_019_685e:
    jr nz, @+$76                                  ; $685e: $20 $74

    ld h, l                                       ; $6860: $65
    ld [hl], e                                    ; $6861: $73

jr_019_6862:
    ld [hl], h                                    ; $6862: $74

jr_019_6863:
    ld bc, $6f79                                  ; $6863: $01 $79 $6f
    ld [hl], l                                    ; $6866: $75
    ld [hl], d                                    ; $6867: $72
    jr nz, jr_019_68dd                            ; $6868: $20 $73

    ld l, e                                       ; $686a: $6b
    ld l, c                                       ; $686b: $69
    ld l, h                                       ; $686c: $6c
    ld l, h                                       ; $686d: $6c
    ld [hl], e                                    ; $686e: $73
    jr nz, jr_019_68da                            ; $686f: $20 $69

    ld l, [hl]                                    ; $6871: $6e
    ld bc, $6150                                  ; $6872: $01 $50 $61
    ld l, h                                       ; $6875: $6c
    ld l, l                                       ; $6876: $6d
    daa                                           ; $6877: $27
    ld [hl], e                                    ; $6878: $73
    jr nz, @+$56                                  ; $6879: $20 $54

    ld l, a                                       ; $687b: $6f
    ld [hl], l                                    ; $687c: $75
    ld [hl], d                                    ; $687d: $72
    ld l, [hl]                                    ; $687e: $6e
    ld h, c                                       ; $687f: $61
    ld l, l                                       ; $6880: $6d
    ld h, l                                       ; $6881: $65
    ld l, [hl]                                    ; $6882: $6e
    ld [hl], h                                    ; $6883: $74
    ld l, $03                                     ; $6884: $2e $03
    nop                                           ; $6886: $00
    ld c, c                                       ; $6887: $49

jr_019_6888:
    daa                                           ; $6888: $27
    ld l, l                                       ; $6889: $6d
    jr nz, @+$63                                  ; $688a: $20 $61

    ld h, [hl]                                    ; $688c: $66
    ld [hl], d                                    ; $688d: $72
    ld h, c                                       ; $688e: $61
    ld l, c                                       ; $688f: $69
    ld h, h                                       ; $6890: $64

jr_019_6891:
    jr nz, @+$4f                                  ; $6891: $20 $4d

    ld h, c                                       ; $6893: $61
    ld [hl], d                                    ; $6894: $72
    ld l, c                                       ; $6895: $69
    ld l, a                                       ; $6896: $6f
    ld l, [hl]                                    ; $6897: $6e
    ld bc, $6c43                                  ; $6898: $01 $43 $6c
    ld [hl], l                                    ; $689b: $75
    ld h, d                                       ; $689c: $62
    jr nz, @+$6b                                  ; $689d: $20 $69

jr_019_689f:
    ld [hl], e                                    ; $689f: $73
    jr nz, jr_019_6916                            ; $68a0: $20 $74

    ld l, b                                       ; $68a2: $68
    ld h, l                                       ; $68a3: $65
    jr nz, @+$6e                                  ; $68a4: $20 $6c

    ld l, a                                       ; $68a6: $6f
    ld [hl], a                                    ; $68a7: $77

jr_019_68a8:
    ld h, l                                       ; $68a8: $65
    ld [hl], e                                    ; $68a9: $73
    ld [hl], h                                    ; $68aa: $74
    ld bc, $6c63                                  ; $68ab: $01 $63 $6c
    ld [hl], l                                    ; $68ae: $75
    ld h, d                                       ; $68af: $62
    jr nz, jr_019_6913                            ; $68b0: $20 $61

    ld [hl], d                                    ; $68b2: $72
    ld l, a                                       ; $68b3: $6f
    ld [hl], l                                    ; $68b4: $75
    ld l, [hl]                                    ; $68b5: $6e
    ld h, h                                       ; $68b6: $64
    ld l, $20                                     ; $68b7: $2e $20
    ld d, a                                       ; $68b9: $57
    ld h, l                                       ; $68ba: $65
    daa                                           ; $68bb: $27

jr_019_68bc:
    ld [hl], d                                    ; $68bc: $72
    ld h, l                                       ; $68bd: $65
    ld [bc], a                                    ; $68be: $02
    ld l, b                                       ; $68bf: $68
    ld l, a                                       ; $68c0: $6f
    ld [hl], b                                    ; $68c1: $70
    ld l, c                                       ; $68c2: $69

jr_019_68c3:
    ld l, [hl]                                    ; $68c3: $6e
    ld h, a                                       ; $68c4: $67
    jr nz, jr_019_6940                            ; $68c5: $20 $79

    ld l, a                                       ; $68c7: $6f
    ld [hl], l                                    ; $68c8: $75
    jr nz, jr_019_692e                            ; $68c9: $20 $63

    ld h, c                                       ; $68cb: $61

jr_019_68cc:
    ld l, [hl]                                    ; $68cc: $6e
    ld bc, $6172                                  ; $68cd: $01 $72 $61
    ld l, c                                       ; $68d0: $69
    ld [hl], e                                    ; $68d1: $73
    ld h, l                                       ; $68d2: $65
    jr nz, jr_019_6944                            ; $68d3: $20 $6f

    ld [hl], l                                    ; $68d5: $75
    ld [hl], d                                    ; $68d6: $72
    jr nz, jr_019_694c                            ; $68d7: $20 $73

    ld [hl], h                                    ; $68d9: $74

jr_019_68da:
    ld h, c                                       ; $68da: $61
    ld [hl], h                                    ; $68db: $74
    ld [hl], l                                    ; $68dc: $75

jr_019_68dd:
    ld [hl], d                                    ; $68dd: $72
    ld h, l                                       ; $68de: $65
    ld bc, $7461                                  ; $68df: $01 $61 $74
    jr nz, jr_019_6934                            ; $68e2: $20 $50

    ld h, c                                       ; $68e4: $61
    ld l, h                                       ; $68e5: $6c
    ld l, l                                       ; $68e6: $6d
    jr nz, @+$45                                  ; $68e7: $20 $43

    ld l, h                                       ; $68e9: $6c
    ld [hl], l                                    ; $68ea: $75
    ld h, d                                       ; $68eb: $62
    ld l, $03                                     ; $68ec: $2e $03
    nop                                           ; $68ee: $00
    ld c, c                                       ; $68ef: $49
    ld [hl], h                                    ; $68f0: $74
    daa                                           ; $68f1: $27
    ld [hl], e                                    ; $68f2: $73
    jr nz, @+$69                                  ; $68f3: $20 $67

    ld [hl], d                                    ; $68f5: $72
    ld h, l                                       ; $68f6: $65
    ld h, c                                       ; $68f7: $61
    ld [hl], h                                    ; $68f8: $74
    jr nz, jr_019_6974                            ; $68f9: $20 $79

    ld l, a                                       ; $68fb: $6f
    ld [hl], l                                    ; $68fc: $75
    ld bc, $6c70                                  ; $68fd: $01 $70 $6c
    ld h, c                                       ; $6900: $61
    ld h, e                                       ; $6901: $63
    ld h, l                                       ; $6902: $65
    ld h, h                                       ; $6903: $64
    jr nz, @+$6b                                  ; $6904: $20 $69

    ld l, [hl]                                    ; $6906: $6e
    jr nz, @+$76                                  ; $6907: $20 $74

    ld l, b                                       ; $6909: $68
    ld h, l                                       ; $690a: $65
    jr nz, @+$45                                  ; $690b: $20 $43

    ld l, h                                       ; $690d: $6c
    ld [hl], l                                    ; $690e: $75
    ld h, d                                       ; $690f: $62
    ld bc, $6f54                                  ; $6910: $01 $54 $6f

jr_019_6913:
    ld [hl], l                                    ; $6913: $75
    ld [hl], d                                    ; $6914: $72
    ld l, [hl]                                    ; $6915: $6e

jr_019_6916:
    ld h, c                                       ; $6916: $61
    ld l, l                                       ; $6917: $6d
    ld h, l                                       ; $6918: $65
    ld l, [hl]                                    ; $6919: $6e
    ld [hl], h                                    ; $691a: $74
    inc l                                         ; $691b: $2c
    jr nz, jr_019_6980                            ; $691c: $20 $62

    ld [hl], l                                    ; $691e: $75
    ld [hl], h                                    ; $691f: $74
    ld [bc], a                                    ; $6920: $02
    ld h, h                                       ; $6921: $64
    ld l, a                                       ; $6922: $6f
    ld l, [hl]                                    ; $6923: $6e
    daa                                           ; $6924: $27
    ld [hl], h                                    ; $6925: $74
    jr nz, jr_019_699b                            ; $6926: $20 $73

    ld [hl], h                                    ; $6928: $74
    ld l, a                                       ; $6929: $6f
    ld [hl], b                                    ; $692a: $70
    jr nz, jr_019_69a1                            ; $692b: $20 $74

    ld l, b                                       ; $692d: $68

jr_019_692e:
    ld h, l                                       ; $692e: $65
    ld [hl], d                                    ; $692f: $72
    ld h, l                                       ; $6930: $65
    ld hl, $5401                                  ; $6931: $21 $01 $54

jr_019_6934:
    ld l, b                                       ; $6934: $68
    ld h, l                                       ; $6935: $65
    jr nz, jr_019_697b                            ; $6936: $20 $43

    ld l, h                                       ; $6938: $6c
    ld [hl], l                                    ; $6939: $75
    ld h, d                                       ; $693a: $62
    jr nz, jr_019_6980                            ; $693b: $20 $43

    ld l, b                                       ; $693d: $68
    ld h, c                                       ; $693e: $61
    ld l, l                                       ; $693f: $6d

jr_019_6940:
    ld [hl], b                                    ; $6940: $70
    ld [hl], e                                    ; $6941: $73
    jr nz, jr_019_69a5                            ; $6942: $20 $61

jr_019_6944:
    ld [hl], d                                    ; $6944: $72
    ld h, l                                       ; $6945: $65
    ld bc, $6c61                                  ; $6946: $01 $61 $6c
    ld l, h                                       ; $6949: $6c
    jr nz, @+$6a                                  ; $694a: $20 $68

jr_019_694c:
    ld h, l                                       ; $694c: $65
    ld [hl], d                                    ; $694d: $72
    ld h, l                                       ; $694e: $65
    ld l, $20                                     ; $694f: $2e $20
    ld d, b                                       ; $6951: $50
    ld l, h                                       ; $6952: $6c
    ld h, c                                       ; $6953: $61
    ld a, c                                       ; $6954: $79
    jr nz, @+$76                                  ; $6955: $20 $74

    ld l, b                                       ; $6957: $68
    ld h, l                                       ; $6958: $65
    ld l, l                                       ; $6959: $6d
    ld hl, $0003                                  ; $695a: $21 $03 $00
    ld c, c                                       ; $695d: $49
    jr nz, jr_019_69c8                            ; $695e: $20 $68

    ld h, l                                       ; $6960: $65
    ld h, c                                       ; $6961: $61
    ld [hl], d                                    ; $6962: $72
    jr nz, jr_019_69de                            ; $6963: $20 $79

    ld l, a                                       ; $6965: $6f
    ld [hl], l                                    ; $6966: $75
    jr nz, jr_019_69d9                            ; $6967: $20 $70

    ld l, h                                       ; $6969: $6c
    ld h, c                                       ; $696a: $61
    ld h, e                                       ; $696b: $63
    ld h, l                                       ; $696c: $65
    ld h, h                                       ; $696d: $64
    jr nz, jr_019_69d9                            ; $696e: $20 $69

    ld l, [hl]                                    ; $6970: $6e
    ld bc, $6874                                  ; $6971: $01 $74 $68

jr_019_6974:
    ld h, l                                       ; $6974: $65
    jr nz, jr_019_69c4                            ; $6975: $20 $4d

    ld h, c                                       ; $6977: $61
    ld [hl], d                                    ; $6978: $72
    ld l, c                                       ; $6979: $69
    ld l, a                                       ; $697a: $6f

jr_019_697b:
    ld l, [hl]                                    ; $697b: $6e
    jr nz, @+$45                                  ; $697c: $20 $43

    ld l, h                                       ; $697e: $6c
    ld [hl], l                                    ; $697f: $75

jr_019_6980:
    ld h, d                                       ; $6980: $62
    ld bc, $6f54                                  ; $6981: $01 $54 $6f
    ld [hl], l                                    ; $6984: $75
    ld [hl], d                                    ; $6985: $72
    ld l, [hl]                                    ; $6986: $6e
    ld h, c                                       ; $6987: $61
    ld l, l                                       ; $6988: $6d
    ld h, l                                       ; $6989: $65
    ld l, [hl]                                    ; $698a: $6e
    ld [hl], h                                    ; $698b: $74
    ld l, $20                                     ; $698c: $2e $20
    ld c, [hl]                                    ; $698e: $4e
    ld l, a                                       ; $698f: $6f
    ld [hl], a                                    ; $6990: $77
    inc l                                         ; $6991: $2c
    ld [bc], a                                    ; $6992: $02
    ld [hl], b                                    ; $6993: $70
    ld l, a                                       ; $6994: $6f
    ld l, h                                       ; $6995: $6c
    ld l, c                                       ; $6996: $69
    ld [hl], e                                    ; $6997: $73
    ld l, b                                       ; $6998: $68
    jr nz, jr_019_6a14                            ; $6999: $20 $79

jr_019_699b:
    ld l, a                                       ; $699b: $6f
    ld [hl], l                                    ; $699c: $75
    ld [hl], d                                    ; $699d: $72
    jr nz, jr_019_6a13                            ; $699e: $20 $73

    ld l, e                                       ; $69a0: $6b

jr_019_69a1:
    ld l, c                                       ; $69a1: $69
    ld l, h                                       ; $69a2: $6c
    ld l, h                                       ; $69a3: $6c
    ld [hl], e                                    ; $69a4: $73

jr_019_69a5:
    ld bc, $6e61                                  ; $69a5: $01 $61 $6e
    ld h, h                                       ; $69a8: $64
    jr nz, jr_019_6a11                            ; $69a9: $20 $66

    ld h, c                                       ; $69ab: $61
    ld h, e                                       ; $69ac: $63
    ld h, l                                       ; $69ad: $65
    jr nz, jr_019_6a24                            ; $69ae: $20 $74

    ld l, b                                       ; $69b0: $68
    ld h, l                                       ; $69b1: $65
    ld bc, $6c43                                  ; $69b2: $01 $43 $6c
    ld [hl], l                                    ; $69b5: $75
    ld h, d                                       ; $69b6: $62
    jr nz, @+$45                                  ; $69b7: $20 $43

    ld l, b                                       ; $69b9: $68
    ld h, c                                       ; $69ba: $61
    ld l, l                                       ; $69bb: $6d
    ld [hl], b                                    ; $69bc: $70
    ld l, c                                       ; $69bd: $69
    ld l, a                                       ; $69be: $6f
    ld l, [hl]                                    ; $69bf: $6e
    ld l, $03                                     ; $69c0: $2e $03
    nop                                           ; $69c2: $00
    ld e, c                                       ; $69c3: $59

jr_019_69c4:
    ld l, a                                       ; $69c4: $6f
    ld [hl], l                                    ; $69c5: $75
    jr nz, jr_019_6a3f                            ; $69c6: $20 $77

jr_019_69c8:
    ld l, a                                       ; $69c8: $6f
    ld l, [hl]                                    ; $69c9: $6e
    jr nz, jr_019_6a40                            ; $69ca: $20 $74

    ld l, b                                       ; $69cc: $68
    ld h, l                                       ; $69cd: $65
    jr nz, jr_019_6a1d                            ; $69ce: $20 $4d

    ld h, c                                       ; $69d0: $61
    ld [hl], d                                    ; $69d1: $72
    ld l, c                                       ; $69d2: $69
    ld l, a                                       ; $69d3: $6f
    ld l, [hl]                                    ; $69d4: $6e
    ld bc, $6c43                                  ; $69d5: $01 $43 $6c
    ld [hl], l                                    ; $69d8: $75

jr_019_69d9:
    ld h, d                                       ; $69d9: $62
    jr nz, jr_019_6a30                            ; $69da: $20 $54

    ld l, a                                       ; $69dc: $6f
    ld [hl], l                                    ; $69dd: $75

jr_019_69de:
    ld [hl], d                                    ; $69de: $72
    ld l, [hl]                                    ; $69df: $6e
    ld h, c                                       ; $69e0: $61
    ld l, l                                       ; $69e1: $6d
    ld h, l                                       ; $69e2: $65
    ld l, [hl]                                    ; $69e3: $6e
    ld [hl], h                                    ; $69e4: $74
    ccf                                           ; $69e5: $3f
    ld bc, $6f43                                  ; $69e6: $01 $43 $6f
    ld l, [hl]                                    ; $69e9: $6e
    ld h, a                                       ; $69ea: $67
    ld [hl], d                                    ; $69eb: $72
    ld h, c                                       ; $69ec: $61
    ld [hl], h                                    ; $69ed: $74
    ld [hl], l                                    ; $69ee: $75
    ld l, h                                       ; $69ef: $6c
    ld h, c                                       ; $69f0: $61
    ld [hl], h                                    ; $69f1: $74
    ld l, c                                       ; $69f2: $69
    ld l, a                                       ; $69f3: $6f
    ld l, [hl]                                    ; $69f4: $6e
    ld [hl], e                                    ; $69f5: $73
    ld hl, $5902                                  ; $69f6: $21 $02 $59
    ld l, a                                       ; $69f9: $6f
    ld [hl], l                                    ; $69fa: $75
    jr nz, jr_019_6a70                            ; $69fb: $20 $73

    ld l, b                                       ; $69fd: $68
    ld l, a                                       ; $69fe: $6f
    ld [hl], l                                    ; $69ff: $75
    ld l, h                                       ; $6a00: $6c
    ld h, h                                       ; $6a01: $64
    jr nz, @+$76                                  ; $6a02: $20 $74

    ld [hl], d                                    ; $6a04: $72
    ld a, c                                       ; $6a05: $79
    jr nz, jr_019_6a7c                            ; $6a06: $20 $74

    ld l, b                                       ; $6a08: $68
    ld h, l                                       ; $6a09: $65
    ld bc, $6150                                  ; $6a0a: $01 $50 $61
    ld l, h                                       ; $6a0d: $6c
    ld l, l                                       ; $6a0e: $6d
    jr nz, jr_019_6a54                            ; $6a0f: $20 $43

jr_019_6a11:
    ld l, h                                       ; $6a11: $6c
    ld [hl], l                                    ; $6a12: $75

jr_019_6a13:
    ld h, d                                       ; $6a13: $62

jr_019_6a14:
    ld bc, $6f54                                  ; $6a14: $01 $54 $6f
    ld [hl], l                                    ; $6a17: $75
    ld [hl], d                                    ; $6a18: $72
    ld l, [hl]                                    ; $6a19: $6e
    ld h, c                                       ; $6a1a: $61
    ld l, l                                       ; $6a1b: $6d
    ld h, l                                       ; $6a1c: $65

jr_019_6a1d:
    ld l, [hl]                                    ; $6a1d: $6e
    ld [hl], h                                    ; $6a1e: $74
    jr nz, jr_019_6a8f                            ; $6a1f: $20 $6e

    ld h, l                                       ; $6a21: $65
    ld a, b                                       ; $6a22: $78
    ld [hl], h                                    ; $6a23: $74

jr_019_6a24:
    ld l, $03                                     ; $6a24: $2e $03
    nop                                           ; $6a26: $00
    ld c, c                                       ; $6a27: $49
    daa                                           ; $6a28: $27
    ld l, l                                       ; $6a29: $6d
    jr nz, @+$63                                  ; $6a2a: $20 $61

    ld h, [hl]                                    ; $6a2c: $66
    ld [hl], d                                    ; $6a2d: $72
    ld h, c                                       ; $6a2e: $61
    ld l, c                                       ; $6a2f: $69

jr_019_6a30:
    ld h, h                                       ; $6a30: $64
    jr nz, @+$4f                                  ; $6a31: $20 $4d

    ld h, c                                       ; $6a33: $61
    ld [hl], d                                    ; $6a34: $72
    ld l, c                                       ; $6a35: $69
    ld l, a                                       ; $6a36: $6f
    ld l, [hl]                                    ; $6a37: $6e
    ld bc, $6c43                                  ; $6a38: $01 $43 $6c
    ld [hl], l                                    ; $6a3b: $75
    ld h, d                                       ; $6a3c: $62
    jr nz, jr_019_6aa8                            ; $6a3d: $20 $69

jr_019_6a3f:
    ld [hl], e                                    ; $6a3f: $73

jr_019_6a40:
    jr nz, jr_019_6ab6                            ; $6a40: $20 $74

    ld l, b                                       ; $6a42: $68
    ld h, l                                       ; $6a43: $65
    jr nz, jr_019_6ab2                            ; $6a44: $20 $6c

    ld l, a                                       ; $6a46: $6f
    ld [hl], a                                    ; $6a47: $77
    ld h, l                                       ; $6a48: $65
    ld [hl], e                                    ; $6a49: $73
    ld [hl], h                                    ; $6a4a: $74
    ld bc, $6c63                                  ; $6a4b: $01 $63 $6c
    ld [hl], l                                    ; $6a4e: $75
    ld h, d                                       ; $6a4f: $62
    jr nz, jr_019_6ab3                            ; $6a50: $20 $61

    ld [hl], d                                    ; $6a52: $72
    ld l, a                                       ; $6a53: $6f

jr_019_6a54:
    ld [hl], l                                    ; $6a54: $75
    ld l, [hl]                                    ; $6a55: $6e
    ld h, h                                       ; $6a56: $64
    ld l, $20                                     ; $6a57: $2e $20
    ld d, a                                       ; $6a59: $57
    ld h, l                                       ; $6a5a: $65
    daa                                           ; $6a5b: $27
    ld [hl], d                                    ; $6a5c: $72
    ld h, l                                       ; $6a5d: $65
    ld [bc], a                                    ; $6a5e: $02
    ld l, b                                       ; $6a5f: $68
    ld l, a                                       ; $6a60: $6f
    ld [hl], b                                    ; $6a61: $70
    ld l, c                                       ; $6a62: $69
    ld l, [hl]                                    ; $6a63: $6e
    ld h, a                                       ; $6a64: $67
    jr nz, jr_019_6ae0                            ; $6a65: $20 $79

    ld l, a                                       ; $6a67: $6f
    ld [hl], l                                    ; $6a68: $75
    jr nz, jr_019_6ace                            ; $6a69: $20 $63

    ld h, c                                       ; $6a6b: $61
    ld l, [hl]                                    ; $6a6c: $6e
    ld bc, $6172                                  ; $6a6d: $01 $72 $61

jr_019_6a70:
    ld l, c                                       ; $6a70: $69
    ld [hl], e                                    ; $6a71: $73
    ld h, l                                       ; $6a72: $65
    jr nz, jr_019_6ae4                            ; $6a73: $20 $6f

    ld [hl], l                                    ; $6a75: $75
    ld [hl], d                                    ; $6a76: $72
    jr nz, jr_019_6aec                            ; $6a77: $20 $73

    ld [hl], h                                    ; $6a79: $74
    ld h, c                                       ; $6a7a: $61
    ld [hl], h                                    ; $6a7b: $74

jr_019_6a7c:
    ld [hl], l                                    ; $6a7c: $75
    ld [hl], d                                    ; $6a7d: $72
    ld h, l                                       ; $6a7e: $65
    ld bc, $7461                                  ; $6a7f: $01 $61 $74
    jr nz, jr_019_6ad4                            ; $6a82: $20 $50

    ld h, c                                       ; $6a84: $61
    ld l, h                                       ; $6a85: $6c
    ld l, l                                       ; $6a86: $6d
    jr nz, @+$45                                  ; $6a87: $20 $43

    ld l, h                                       ; $6a89: $6c
    ld [hl], l                                    ; $6a8a: $75
    ld h, d                                       ; $6a8b: $62
    ld l, $03                                     ; $6a8c: $2e $03
    nop                                           ; $6a8e: $00

jr_019_6a8f:
    ld c, c                                       ; $6a8f: $49
    ld [hl], h                                    ; $6a90: $74
    daa                                           ; $6a91: $27
    ld [hl], e                                    ; $6a92: $73
    jr nz, jr_019_6afc                            ; $6a93: $20 $67

    ld [hl], d                                    ; $6a95: $72
    ld h, l                                       ; $6a96: $65
    ld h, c                                       ; $6a97: $61
    ld [hl], h                                    ; $6a98: $74
    jr nz, jr_019_6b14                            ; $6a99: $20 $79

    ld l, a                                       ; $6a9b: $6f
    ld [hl], l                                    ; $6a9c: $75
    ld bc, $6f77                                  ; $6a9d: $01 $77 $6f
    ld l, [hl]                                    ; $6aa0: $6e
    jr nz, jr_019_6b17                            ; $6aa1: $20 $74

    ld l, b                                       ; $6aa3: $68
    ld h, l                                       ; $6aa4: $65
    jr nz, @+$45                                  ; $6aa5: $20 $43

    ld l, h                                       ; $6aa7: $6c

jr_019_6aa8:
    ld [hl], l                                    ; $6aa8: $75
    ld h, d                                       ; $6aa9: $62
    ld bc, $6f54                                  ; $6aaa: $01 $54 $6f
    ld [hl], l                                    ; $6aad: $75
    ld [hl], d                                    ; $6aae: $72
    ld l, [hl]                                    ; $6aaf: $6e
    ld h, c                                       ; $6ab0: $61
    ld l, l                                       ; $6ab1: $6d

jr_019_6ab2:
    ld h, l                                       ; $6ab2: $65

jr_019_6ab3:
    ld l, [hl]                                    ; $6ab3: $6e
    ld [hl], h                                    ; $6ab4: $74
    inc l                                         ; $6ab5: $2c

jr_019_6ab6:
    jr nz, jr_019_6b1a                            ; $6ab6: $20 $62

    ld [hl], l                                    ; $6ab8: $75
    ld [hl], h                                    ; $6ab9: $74
    ld [bc], a                                    ; $6aba: $02
    ld h, h                                       ; $6abb: $64
    ld l, a                                       ; $6abc: $6f
    ld l, [hl]                                    ; $6abd: $6e
    daa                                           ; $6abe: $27
    ld [hl], h                                    ; $6abf: $74
    jr nz, jr_019_6b35                            ; $6ac0: $20 $73

    ld [hl], h                                    ; $6ac2: $74
    ld l, a                                       ; $6ac3: $6f
    ld [hl], b                                    ; $6ac4: $70
    jr nz, jr_019_6b3b                            ; $6ac5: $20 $74

    ld l, b                                       ; $6ac7: $68
    ld h, l                                       ; $6ac8: $65
    ld [hl], d                                    ; $6ac9: $72
    ld h, l                                       ; $6aca: $65
    ld hl, $5401                                  ; $6acb: $21 $01 $54

jr_019_6ace:
    ld l, b                                       ; $6ace: $68
    ld h, l                                       ; $6acf: $65
    jr nz, jr_019_6b15                            ; $6ad0: $20 $43

    ld l, h                                       ; $6ad2: $6c
    ld [hl], l                                    ; $6ad3: $75

jr_019_6ad4:
    ld h, d                                       ; $6ad4: $62
    jr nz, jr_019_6b1a                            ; $6ad5: $20 $43

    ld l, b                                       ; $6ad7: $68
    ld h, c                                       ; $6ad8: $61
    ld l, l                                       ; $6ad9: $6d
    ld [hl], b                                    ; $6ada: $70
    ld [hl], e                                    ; $6adb: $73
    jr nz, @+$63                                  ; $6adc: $20 $61

    ld [hl], d                                    ; $6ade: $72
    ld h, l                                       ; $6adf: $65

jr_019_6ae0:
    ld bc, $6c61                                  ; $6ae0: $01 $61 $6c
    ld l, h                                       ; $6ae3: $6c

jr_019_6ae4:
    jr nz, jr_019_6b4e                            ; $6ae4: $20 $68

    ld h, l                                       ; $6ae6: $65
    ld [hl], d                                    ; $6ae7: $72
    ld h, l                                       ; $6ae8: $65
    ld l, $20                                     ; $6ae9: $2e $20
    ld d, b                                       ; $6aeb: $50

jr_019_6aec:
    ld l, h                                       ; $6aec: $6c
    ld h, c                                       ; $6aed: $61
    ld a, c                                       ; $6aee: $79
    jr nz, jr_019_6b65                            ; $6aef: $20 $74

    ld l, b                                       ; $6af1: $68
    ld h, l                                       ; $6af2: $65
    ld l, l                                       ; $6af3: $6d
    ld hl, $0003                                  ; $6af4: $21 $03 $00
    ld d, e                                       ; $6af7: $53
    ld l, a                                       ; $6af8: $6f
    jr nz, @+$7b                                  ; $6af9: $20 $79

    ld l, a                                       ; $6afb: $6f

jr_019_6afc:
    ld [hl], l                                    ; $6afc: $75
    jr nz, @+$79                                  ; $6afd: $20 $77

    ld l, a                                       ; $6aff: $6f
    ld l, [hl]                                    ; $6b00: $6e
    jr nz, jr_019_6b77                            ; $6b01: $20 $74

    ld l, b                                       ; $6b03: $68
    ld h, l                                       ; $6b04: $65
    jr nz, jr_019_6b54                            ; $6b05: $20 $4d

    ld h, c                                       ; $6b07: $61
    ld [hl], d                                    ; $6b08: $72
    ld l, c                                       ; $6b09: $69
    ld l, a                                       ; $6b0a: $6f
    ld l, [hl]                                    ; $6b0b: $6e
    ld bc, $6c43                                  ; $6b0c: $01 $43 $6c
    ld [hl], l                                    ; $6b0f: $75
    ld h, d                                       ; $6b10: $62
    jr nz, jr_019_6b67                            ; $6b11: $20 $54

    ld l, a                                       ; $6b13: $6f

jr_019_6b14:
    ld [hl], l                                    ; $6b14: $75

jr_019_6b15:
    ld [hl], d                                    ; $6b15: $72
    ld l, [hl]                                    ; $6b16: $6e

jr_019_6b17:
    ld h, c                                       ; $6b17: $61
    ld l, l                                       ; $6b18: $6d
    ld h, l                                       ; $6b19: $65

jr_019_6b1a:
    ld l, [hl]                                    ; $6b1a: $6e
    ld [hl], h                                    ; $6b1b: $74
    ccf                                           ; $6b1c: $3f
    jr nz, jr_019_6b6d                            ; $6b1d: $20 $4e

    ld l, a                                       ; $6b1f: $6f
    ld [hl], a                                    ; $6b20: $77
    jr nz, jr_019_6b24                            ; $6b21: $20 $01

    ld a, c                                       ; $6b23: $79

jr_019_6b24:
    ld l, a                                       ; $6b24: $6f
    ld [hl], l                                    ; $6b25: $75
    jr nz, jr_019_6b95                            ; $6b26: $20 $6d

    ld [hl], l                                    ; $6b28: $75
    ld [hl], e                                    ; $6b29: $73
    ld [hl], h                                    ; $6b2a: $74
    jr nz, jr_019_6b9d                            ; $6b2b: $20 $70

    ld l, a                                       ; $6b2d: $6f
    ld l, h                                       ; $6b2e: $6c
    ld l, c                                       ; $6b2f: $69
    ld [hl], e                                    ; $6b30: $73
    ld l, b                                       ; $6b31: $68
    jr nz, jr_019_6bad                            ; $6b32: $20 $79

    ld l, a                                       ; $6b34: $6f

jr_019_6b35:
    ld [hl], l                                    ; $6b35: $75
    ld [hl], d                                    ; $6b36: $72
    ld [bc], a                                    ; $6b37: $02
    ld [hl], e                                    ; $6b38: $73
    ld l, e                                       ; $6b39: $6b
    ld l, c                                       ; $6b3a: $69

jr_019_6b3b:
    ld l, h                                       ; $6b3b: $6c
    ld l, h                                       ; $6b3c: $6c
    ld [hl], e                                    ; $6b3d: $73
    jr nz, jr_019_6ba1                            ; $6b3e: $20 $61

    ld l, [hl]                                    ; $6b40: $6e
    ld h, h                                       ; $6b41: $64
    jr nz, jr_019_6baa                            ; $6b42: $20 $66

    ld h, c                                       ; $6b44: $61
    ld h, e                                       ; $6b45: $63
    ld h, l                                       ; $6b46: $65
    jr nz, jr_019_6bbd                            ; $6b47: $20 $74

    ld l, b                                       ; $6b49: $68
    ld h, l                                       ; $6b4a: $65
    ld bc, $6150                                  ; $6b4b: $01 $50 $61

jr_019_6b4e:
    ld l, h                                       ; $6b4e: $6c
    ld l, l                                       ; $6b4f: $6d
    jr nz, jr_019_6b95                            ; $6b50: $20 $43

    ld l, h                                       ; $6b52: $6c
    ld [hl], l                                    ; $6b53: $75

jr_019_6b54:
    ld h, d                                       ; $6b54: $62
    jr nz, @+$45                                  ; $6b55: $20 $43

    ld l, b                                       ; $6b57: $68
    ld h, c                                       ; $6b58: $61
    ld l, l                                       ; $6b59: $6d
    ld [hl], b                                    ; $6b5a: $70
    ld l, c                                       ; $6b5b: $69
    ld l, a                                       ; $6b5c: $6f
    ld l, [hl]                                    ; $6b5d: $6e
    ld l, $03                                     ; $6b5e: $2e $03
    nop                                           ; $6b60: $00
    ld c, c                                       ; $6b61: $49
    jr nz, jr_019_6bcc                            ; $6b62: $20 $68

    ld h, l                                       ; $6b64: $65

jr_019_6b65:
    ld h, c                                       ; $6b65: $61
    ld [hl], d                                    ; $6b66: $72

jr_019_6b67:
    jr nz, @+$7b                                  ; $6b67: $20 $79

    ld l, a                                       ; $6b69: $6f
    ld [hl], l                                    ; $6b6a: $75
    jr nz, jr_019_6bdd                            ; $6b6b: $20 $70

jr_019_6b6d:
    ld l, h                                       ; $6b6d: $6c
    ld h, c                                       ; $6b6e: $61
    ld h, e                                       ; $6b6f: $63
    ld h, l                                       ; $6b70: $65
    ld h, h                                       ; $6b71: $64
    ld bc, $6e69                                  ; $6b72: $01 $69 $6e
    jr nz, jr_019_6beb                            ; $6b75: $20 $74

jr_019_6b77:
    ld l, b                                       ; $6b77: $68
    ld h, l                                       ; $6b78: $65
    jr nz, jr_019_6bcb                            ; $6b79: $20 $50

    ld h, c                                       ; $6b7b: $61
    ld l, h                                       ; $6b7c: $6c
    ld l, l                                       ; $6b7d: $6d
    jr nz, @+$45                                  ; $6b7e: $20 $43

    ld l, h                                       ; $6b80: $6c
    ld [hl], l                                    ; $6b81: $75
    ld h, d                                       ; $6b82: $62
    ld bc, $6f54                                  ; $6b83: $01 $54 $6f
    ld [hl], l                                    ; $6b86: $75
    ld [hl], d                                    ; $6b87: $72
    ld l, [hl]                                    ; $6b88: $6e
    ld h, c                                       ; $6b89: $61
    ld l, l                                       ; $6b8a: $6d
    ld h, l                                       ; $6b8b: $65
    ld l, [hl]                                    ; $6b8c: $6e
    ld [hl], h                                    ; $6b8d: $74
    ld l, $20                                     ; $6b8e: $2e $20
    ld b, h                                       ; $6b90: $44
    ld l, a                                       ; $6b91: $6f
    ld l, [hl]                                    ; $6b92: $6e
    daa                                           ; $6b93: $27
    ld [hl], h                                    ; $6b94: $74

jr_019_6b95:
    ld [bc], a                                    ; $6b95: $02
    ld a, c                                       ; $6b96: $79
    ld l, a                                       ; $6b97: $6f
    ld [hl], l                                    ; $6b98: $75
    jr nz, jr_019_6c0f                            ; $6b99: $20 $74

    ld l, b                                       ; $6b9b: $68
    ld l, c                                       ; $6b9c: $69

jr_019_6b9d:
    ld l, [hl]                                    ; $6b9d: $6e
    ld l, e                                       ; $6b9e: $6b
    jr nz, jr_019_6c1a                            ; $6b9f: $20 $79

jr_019_6ba1:
    ld l, a                                       ; $6ba1: $6f
    ld [hl], l                                    ; $6ba2: $75
    daa                                           ; $6ba3: $27
    ld [hl], d                                    ; $6ba4: $72
    ld h, l                                       ; $6ba5: $65
    ld bc, $6f67                                  ; $6ba6: $01 $67 $6f
    ld l, a                                       ; $6ba9: $6f

jr_019_6baa:
    ld h, h                                       ; $6baa: $64
    jr nz, jr_019_6c12                            ; $6bab: $20 $65

jr_019_6bad:
    ld l, [hl]                                    ; $6bad: $6e
    ld l, a                                       ; $6bae: $6f
    ld [hl], l                                    ; $6baf: $75
    ld h, a                                       ; $6bb0: $67
    ld l, b                                       ; $6bb1: $68
    jr nz, jr_019_6c28                            ; $6bb2: $20 $74

    ld l, a                                       ; $6bb4: $6f
    jr nz, jr_019_6c1a                            ; $6bb5: $20 $63

    ld l, a                                       ; $6bb7: $6f
    ld l, l                                       ; $6bb8: $6d
    dec l                                         ; $6bb9: $2d
    ld bc, $6570                                  ; $6bba: $01 $70 $65

jr_019_6bbd:
    ld [hl], h                                    ; $6bbd: $74
    ld h, l                                       ; $6bbe: $65
    jr nz, jr_019_6c22                            ; $6bbf: $20 $61

    ld [hl], h                                    ; $6bc1: $74
    jr nz, jr_019_6c08                            ; $6bc2: $20 $44

    ld [hl], l                                    ; $6bc4: $75
    ld l, [hl]                                    ; $6bc5: $6e
    ld h, l                                       ; $6bc6: $65
    jr nz, @+$45                                  ; $6bc7: $20 $43

    ld l, h                                       ; $6bc9: $6c
    ld [hl], l                                    ; $6bca: $75

jr_019_6bcb:
    ld h, d                                       ; $6bcb: $62

jr_019_6bcc:
    ccf                                           ; $6bcc: $3f
    inc bc                                        ; $6bcd: $03
    nop                                           ; $6bce: $00
    ld b, c                                       ; $6bcf: $41
    ld [hl], e                                    ; $6bd0: $73
    jr nz, jr_019_6c42                            ; $6bd1: $20 $6f

    ld l, [hl]                                    ; $6bd3: $6e
    ld h, l                                       ; $6bd4: $65
    jr nz, jr_019_6c4e                            ; $6bd5: $20 $77

    ld l, b                                       ; $6bd7: $68
    ld l, a                                       ; $6bd8: $6f
    jr nz, jr_019_6c4b                            ; $6bd9: $20 $70

    ld l, h                                       ; $6bdb: $6c
    ld h, c                                       ; $6bdc: $61

jr_019_6bdd:
    ld h, e                                       ; $6bdd: $63
    ld h, l                                       ; $6bde: $65
    ld h, h                                       ; $6bdf: $64
    ld bc, $6e69                                  ; $6be0: $01 $69 $6e
    jr nz, @+$76                                  ; $6be3: $20 $74

    ld l, b                                       ; $6be5: $68
    ld h, l                                       ; $6be6: $65
    jr nz, jr_019_6c39                            ; $6be7: $20 $50

    ld h, c                                       ; $6be9: $61
    ld l, h                                       ; $6bea: $6c

jr_019_6beb:
    ld l, l                                       ; $6beb: $6d
    jr nz, jr_019_6c31                            ; $6bec: $20 $43

    ld l, h                                       ; $6bee: $6c
    ld [hl], l                                    ; $6bef: $75
    ld h, d                                       ; $6bf0: $62
    ld bc, $6f54                                  ; $6bf1: $01 $54 $6f
    ld [hl], l                                    ; $6bf4: $75
    ld [hl], d                                    ; $6bf5: $72
    ld l, [hl]                                    ; $6bf6: $6e
    ld h, c                                       ; $6bf7: $61
    ld l, l                                       ; $6bf8: $6d
    ld h, l                                       ; $6bf9: $65
    ld l, [hl]                                    ; $6bfa: $6e
    ld [hl], h                                    ; $6bfb: $74
    inc l                                         ; $6bfc: $2c
    jr nz, jr_019_6c78                            ; $6bfd: $20 $79

    ld l, a                                       ; $6bff: $6f
    ld [hl], l                                    ; $6c00: $75
    daa                                           ; $6c01: $27
    halt                                          ; $6c02: $76
    ld h, l                                       ; $6c03: $65
    ld [bc], a                                    ; $6c04: $02
    ld [hl], b                                    ; $6c05: $70
    ld [hl], d                                    ; $6c06: $72
    ld l, a                                       ; $6c07: $6f

jr_019_6c08:
    halt                                          ; $6c08: $76
    ld h, l                                       ; $6c09: $65
    ld l, [hl]                                    ; $6c0a: $6e
    jr nz, jr_019_6c86                            ; $6c0b: $20 $79

    ld l, a                                       ; $6c0d: $6f
    ld [hl], l                                    ; $6c0e: $75

jr_019_6c0f:
    ld [hl], d                                    ; $6c0f: $72
    jr nz, @+$63                                  ; $6c10: $20 $61

jr_019_6c12:
    ld h, d                                       ; $6c12: $62
    ld l, c                                       ; $6c13: $69
    ld l, h                                       ; $6c14: $6c
    ld l, c                                       ; $6c15: $69
    ld [hl], h                                    ; $6c16: $74
    ld a, c                                       ; $6c17: $79
    ld l, $01                                     ; $6c18: $2e $01

jr_019_6c1a:
    ld c, a                                       ; $6c1a: $4f
    ld [hl], l                                    ; $6c1b: $75
    ld [hl], d                                    ; $6c1c: $72
    jr nz, jr_019_6c84                            ; $6c1d: $20 $65

    ld a, b                                       ; $6c1f: $78
    ld [hl], b                                    ; $6c20: $70
    ld h, l                                       ; $6c21: $65

jr_019_6c22:
    ld h, e                                       ; $6c22: $63
    ld [hl], h                                    ; $6c23: $74
    ld h, c                                       ; $6c24: $61
    ld [hl], h                                    ; $6c25: $74
    ld l, c                                       ; $6c26: $69
    ld l, a                                       ; $6c27: $6f

jr_019_6c28:
    ld l, [hl]                                    ; $6c28: $6e
    ld [hl], e                                    ; $6c29: $73
    ld bc, $756a                                  ; $6c2a: $01 $6a $75
    ld [hl], e                                    ; $6c2d: $73
    ld [hl], h                                    ; $6c2e: $74
    jr nz, @+$6d                                  ; $6c2f: $20 $6b

jr_019_6c31:
    ld h, l                                       ; $6c31: $65
    ld h, l                                       ; $6c32: $65
    ld [hl], b                                    ; $6c33: $70
    jr nz, jr_019_6ca8                            ; $6c34: $20 $72

    ld l, c                                       ; $6c36: $69
    ld [hl], e                                    ; $6c37: $73
    ld l, c                                       ; $6c38: $69

jr_019_6c39:
    ld l, [hl]                                    ; $6c39: $6e
    ld h, a                                       ; $6c3a: $67
    ld hl, $0003                                  ; $6c3b: $21 $03 $00
    ld e, c                                       ; $6c3e: $59
    ld l, a                                       ; $6c3f: $6f
    ld [hl], l                                    ; $6c40: $75
    ld [hl], d                                    ; $6c41: $72

jr_019_6c42:
    jr nz, jr_019_6cb2                            ; $6c42: $20 $6e

    ld h, l                                       ; $6c44: $65
    ld a, b                                       ; $6c45: $78
    ld [hl], h                                    ; $6c46: $74
    jr nz, jr_019_6cb0                            ; $6c47: $20 $67

    ld l, a                                       ; $6c49: $6f
    ld h, c                                       ; $6c4a: $61

jr_019_6c4b:
    ld l, h                                       ; $6c4b: $6c
    jr nz, jr_019_6cb7                            ; $6c4c: $20 $69

jr_019_6c4e:
    ld [hl], e                                    ; $6c4e: $73
    ld bc, $6874                                  ; $6c4f: $01 $74 $68
    ld h, l                                       ; $6c52: $65
    jr nz, jr_019_6c99                            ; $6c53: $20 $44

    ld [hl], l                                    ; $6c55: $75
    ld l, [hl]                                    ; $6c56: $6e
    ld h, l                                       ; $6c57: $65
    jr nz, jr_019_6c9d                            ; $6c58: $20 $43

    ld l, h                                       ; $6c5a: $6c
    ld [hl], l                                    ; $6c5b: $75
    ld h, d                                       ; $6c5c: $62
    ld bc, $6f54                                  ; $6c5d: $01 $54 $6f
    ld [hl], l                                    ; $6c60: $75
    ld [hl], d                                    ; $6c61: $72
    ld l, [hl]                                    ; $6c62: $6e
    ld h, c                                       ; $6c63: $61
    ld l, l                                       ; $6c64: $6d
    ld h, l                                       ; $6c65: $65
    ld l, [hl]                                    ; $6c66: $6e
    ld [hl], h                                    ; $6c67: $74
    ld l, $02                                     ; $6c68: $2e $02
    ld d, h                                       ; $6c6a: $54
    ld l, b                                       ; $6c6b: $68
    ld h, l                                       ; $6c6c: $65
    jr nz, jr_019_6cb2                            ; $6c6d: $20 $43

    ld l, h                                       ; $6c6f: $6c
    ld [hl], l                                    ; $6c70: $75
    ld h, d                                       ; $6c71: $62
    jr nz, jr_019_6cb7                            ; $6c72: $20 $43

    ld l, b                                       ; $6c74: $68
    ld h, c                                       ; $6c75: $61
    ld l, l                                       ; $6c76: $6d
    ld [hl], b                                    ; $6c77: $70

jr_019_6c78:
    inc l                                         ; $6c78: $2c
    ld bc, $060e                                  ; $6c79: $01 $0e $06
    inc l                                         ; $6c7c: $2c
    jr nz, jr_019_6ce8                            ; $6c7d: $20 $69

    ld [hl], e                                    ; $6c7f: $73
    jr nz, jr_019_6ce8                            ; $6c80: $20 $66

    ld h, c                                       ; $6c82: $61
    ld l, l                                       ; $6c83: $6d

jr_019_6c84:
    ld l, a                                       ; $6c84: $6f
    ld [hl], l                                    ; $6c85: $75

jr_019_6c86:
    ld [hl], e                                    ; $6c86: $73
    jr nz, jr_019_6cef                            ; $6c87: $20 $66

    ld l, a                                       ; $6c89: $6f
    ld [hl], d                                    ; $6c8a: $72
    ld bc, $6968                                  ; $6c8b: $01 $68 $69
    ld [hl], e                                    ; $6c8e: $73
    jr nz, jr_019_6cf5                            ; $6c8f: $20 $64

    ld [hl], d                                    ; $6c91: $72
    ld l, c                                       ; $6c92: $69
    halt                                          ; $6c93: $76
    ld h, l                                       ; $6c94: $65
    ld l, $03                                     ; $6c95: $2e $03
    nop                                           ; $6c97: $00
    ld e, c                                       ; $6c98: $59

jr_019_6c99:
    ld l, a                                       ; $6c99: $6f
    ld [hl], l                                    ; $6c9a: $75
    jr nz, jr_019_6d0d                            ; $6c9b: $20 $70

jr_019_6c9d:
    ld l, h                                       ; $6c9d: $6c
    ld h, c                                       ; $6c9e: $61
    ld h, e                                       ; $6c9f: $63
    ld h, l                                       ; $6ca0: $65
    ld h, h                                       ; $6ca1: $64
    jr nz, jr_019_6d0d                            ; $6ca2: $20 $69

    ld l, [hl]                                    ; $6ca4: $6e
    jr nz, jr_019_6d1b                            ; $6ca5: $20 $74

    ld l, b                                       ; $6ca7: $68

jr_019_6ca8:
    ld h, l                                       ; $6ca8: $65
    ld bc, $6150                                  ; $6ca9: $01 $50 $61
    ld l, h                                       ; $6cac: $6c
    ld l, l                                       ; $6cad: $6d
    jr nz, jr_019_6cf3                            ; $6cae: $20 $43

jr_019_6cb0:
    ld l, h                                       ; $6cb0: $6c
    ld [hl], l                                    ; $6cb1: $75

jr_019_6cb2:
    ld h, d                                       ; $6cb2: $62
    ld bc, $6f54                                  ; $6cb3: $01 $54 $6f
    ld [hl], l                                    ; $6cb6: $75

jr_019_6cb7:
    ld [hl], d                                    ; $6cb7: $72
    ld l, [hl]                                    ; $6cb8: $6e
    ld h, c                                       ; $6cb9: $61
    ld l, l                                       ; $6cba: $6d
    ld h, l                                       ; $6cbb: $65
    ld l, [hl]                                    ; $6cbc: $6e
    ld [hl], h                                    ; $6cbd: $74
    inc l                                         ; $6cbe: $2c
    jr nz, @+$76                                  ; $6cbf: $20 $74

    ld l, a                                       ; $6cc1: $6f
    ld l, a                                       ; $6cc2: $6f
    ccf                                           ; $6cc3: $3f
    ld [bc], a                                    ; $6cc4: $02
    ld d, a                                       ; $6cc5: $57
    ld l, a                                       ; $6cc6: $6f
    ld l, [hl]                                    ; $6cc7: $6e
    daa                                           ; $6cc8: $27
    ld [hl], h                                    ; $6cc9: $74
    jr nz, jr_019_6d45                            ; $6cca: $20 $79

    ld l, a                                       ; $6ccc: $6f
    ld [hl], l                                    ; $6ccd: $75
    jr nz, jr_019_6d32                            ; $6cce: $20 $62

    ld h, l                                       ; $6cd0: $65
    ld bc, $6177                                  ; $6cd1: $01 $77 $61
    ld l, [hl]                                    ; $6cd4: $6e
    ld [hl], h                                    ; $6cd5: $74
    ld l, c                                       ; $6cd6: $69
    ld l, [hl]                                    ; $6cd7: $6e
    ld h, a                                       ; $6cd8: $67
    jr nz, jr_019_6d4f                            ; $6cd9: $20 $74

    ld l, b                                       ; $6cdb: $68
    ld h, l                                       ; $6cdc: $65
    jr nz, jr_019_6d22                            ; $6cdd: $20 $43

    ld l, h                                       ; $6cdf: $6c
    ld [hl], l                                    ; $6ce0: $75
    ld h, d                                       ; $6ce1: $62
    ld bc, $6843                                  ; $6ce2: $01 $43 $68
    ld h, c                                       ; $6ce5: $61
    ld l, l                                       ; $6ce6: $6d
    ld [hl], b                                    ; $6ce7: $70

jr_019_6ce8:
    jr nz, jr_019_6d5e                            ; $6ce8: $20 $74

    ld l, c                                       ; $6cea: $69
    ld [hl], h                                    ; $6ceb: $74
    ld l, h                                       ; $6cec: $6c
    ld h, l                                       ; $6ced: $65
    inc l                                         ; $6cee: $2c

jr_019_6cef:
    jr nz, @+$76                                  ; $6cef: $20 $74

    ld l, a                                       ; $6cf1: $6f
    ld l, a                                       ; $6cf2: $6f

jr_019_6cf3:
    ccf                                           ; $6cf3: $3f
    inc bc                                        ; $6cf4: $03

jr_019_6cf5:
    nop                                           ; $6cf5: $00
    ld d, e                                       ; $6cf6: $53
    ld l, a                                       ; $6cf7: $6f
    jr nz, @+$7b                                  ; $6cf8: $20 $79

    ld l, a                                       ; $6cfa: $6f
    ld [hl], l                                    ; $6cfb: $75
    jr nz, jr_019_6d63                            ; $6cfc: $20 $65

    ld l, [hl]                                    ; $6cfe: $6e
    ld [hl], h                                    ; $6cff: $74
    ld h, l                                       ; $6d00: $65
    ld [hl], d                                    ; $6d01: $72
    ld h, l                                       ; $6d02: $65
    ld h, h                                       ; $6d03: $64
    jr nz, jr_019_6d7a                            ; $6d04: $20 $74

    ld l, b                                       ; $6d06: $68
    ld h, l                                       ; $6d07: $65
    ld bc, $6150                                  ; $6d08: $01 $50 $61
    ld l, h                                       ; $6d0b: $6c
    ld l, l                                       ; $6d0c: $6d

jr_019_6d0d:
    jr nz, jr_019_6d63                            ; $6d0d: $20 $54

    ld l, a                                       ; $6d0f: $6f
    ld [hl], l                                    ; $6d10: $75
    ld [hl], d                                    ; $6d11: $72
    ld l, [hl]                                    ; $6d12: $6e
    ld h, c                                       ; $6d13: $61
    ld l, l                                       ; $6d14: $6d
    ld h, l                                       ; $6d15: $65
    ld l, [hl]                                    ; $6d16: $6e
    ld [hl], h                                    ; $6d17: $74
    jr nz, jr_019_6d7b                            ; $6d18: $20 $61

    ld [hl], e                                    ; $6d1a: $73

jr_019_6d1b:
    ld bc, $614d                                  ; $6d1b: $01 $4d $61
    ld [hl], d                                    ; $6d1e: $72
    ld l, c                                       ; $6d1f: $69
    ld l, a                                       ; $6d20: $6f
    ld l, [hl]                                    ; $6d21: $6e

jr_019_6d22:
    daa                                           ; $6d22: $27
    ld [hl], e                                    ; $6d23: $73
    jr nz, jr_019_6d69                            ; $6d24: $20 $43

    ld l, b                                       ; $6d26: $68
    ld h, c                                       ; $6d27: $61
    ld l, l                                       ; $6d28: $6d
    ld [hl], b                                    ; $6d29: $70
    ccf                                           ; $6d2a: $3f
    inc bc                                        ; $6d2b: $03
    nop                                           ; $6d2c: $00
    ld b, d                                       ; $6d2d: $42
    ld h, l                                       ; $6d2e: $65
    ld h, c                                       ; $6d2f: $61
    ld [hl], h                                    ; $6d30: $74
    ld l, c                                       ; $6d31: $69

jr_019_6d32:
    ld l, [hl]                                    ; $6d32: $6e
    ld h, a                                       ; $6d33: $67
    jr nz, jr_019_6d44                            ; $6d34: $20 $0e

    dec b                                         ; $6d36: $05
    jr nz, @+$76                                  ; $6d37: $20 $74

    ld l, a                                       ; $6d39: $6f
    ld bc, $6562                                  ; $6d3a: $01 $62 $65
    ld h, e                                       ; $6d3d: $63
    ld l, a                                       ; $6d3e: $6f
    ld l, l                                       ; $6d3f: $6d
    ld h, l                                       ; $6d40: $65
    jr nz, jr_019_6d86                            ; $6d41: $20 $43

    ld l, h                                       ; $6d43: $6c

jr_019_6d44:
    ld [hl], l                                    ; $6d44: $75

jr_019_6d45:
    ld h, d                                       ; $6d45: $62
    jr nz, jr_019_6d8b                            ; $6d46: $20 $43

    ld l, b                                       ; $6d48: $68
    ld h, c                                       ; $6d49: $61
    ld l, l                                       ; $6d4a: $6d
    ld [hl], b                                    ; $6d4b: $70
    ld bc, $7369                                  ; $6d4c: $01 $69 $73

jr_019_6d4f:
    jr nz, jr_019_6dc4                            ; $6d4f: $20 $73

    ld l, a                                       ; $6d51: $6f
    ld l, l                                       ; $6d52: $6d
    ld h, l                                       ; $6d53: $65
    ld [hl], h                                    ; $6d54: $74
    ld l, b                                       ; $6d55: $68
    ld l, c                                       ; $6d56: $69
    ld l, [hl]                                    ; $6d57: $6e
    ld h, a                                       ; $6d58: $67
    jr nz, jr_019_6dc0                            ; $6d59: $20 $65

    ld l, h                                       ; $6d5b: $6c
    ld [hl], e                                    ; $6d5c: $73
    ld h, l                                       ; $6d5d: $65

jr_019_6d5e:
    ld hl, $5702                                  ; $6d5e: $21 $02 $57
    ld l, c                                       ; $6d61: $69
    ld [hl], h                                    ; $6d62: $74

jr_019_6d63:
    ld l, b                                       ; $6d63: $68
    jr nz, jr_019_6dda                            ; $6d64: $20 $74

    ld l, b                                       ; $6d66: $68
    ld l, a                                       ; $6d67: $6f
    ld [hl], e                                    ; $6d68: $73

jr_019_6d69:
    ld h, l                                       ; $6d69: $65
    jr nz, jr_019_6ddf                            ; $6d6a: $20 $73

    ld l, e                                       ; $6d6c: $6b
    ld l, c                                       ; $6d6d: $69
    ld l, h                                       ; $6d6e: $6c
    ld l, h                                       ; $6d6f: $6c
    ld [hl], e                                    ; $6d70: $73
    inc l                                         ; $6d71: $2c
    ld bc, $6f79                                  ; $6d72: $01 $79 $6f
    ld [hl], l                                    ; $6d75: $75
    jr nz, jr_019_6ddb                            ; $6d76: $20 $63

    ld l, a                                       ; $6d78: $6f
    ld [hl], l                                    ; $6d79: $75

jr_019_6d7a:
    ld l, h                                       ; $6d7a: $6c

jr_019_6d7b:
    ld h, h                                       ; $6d7b: $64
    jr nz, jr_019_6de3                            ; $6d7c: $20 $65

    ld l, [hl]                                    ; $6d7e: $6e
    ld [hl], h                                    ; $6d7f: $74
    ld h, l                                       ; $6d80: $65
    ld [hl], d                                    ; $6d81: $72
    jr nz, jr_019_6df8                            ; $6d82: $20 $74

    ld l, b                                       ; $6d84: $68
    ld h, l                                       ; $6d85: $65

jr_019_6d86:
    ld bc, $7544                                  ; $6d86: $01 $44 $75
    ld l, [hl]                                    ; $6d89: $6e
    ld h, l                                       ; $6d8a: $65

jr_019_6d8b:
    jr nz, jr_019_6de1                            ; $6d8b: $20 $54

    ld l, a                                       ; $6d8d: $6f
    ld [hl], l                                    ; $6d8e: $75
    ld [hl], d                                    ; $6d8f: $72
    ld l, [hl]                                    ; $6d90: $6e
    ld h, c                                       ; $6d91: $61
    ld l, l                                       ; $6d92: $6d
    ld h, l                                       ; $6d93: $65
    ld l, [hl]                                    ; $6d94: $6e
    ld [hl], h                                    ; $6d95: $74
    ld l, $03                                     ; $6d96: $2e $03
    nop                                           ; $6d98: $00
    ld e, c                                       ; $6d99: $59
    ld l, a                                       ; $6d9a: $6f
    ld [hl], l                                    ; $6d9b: $75
    daa                                           ; $6d9c: $27
    halt                                          ; $6d9d: $76
    ld h, l                                       ; $6d9e: $65
    jr nz, jr_019_6e11                            ; $6d9f: $20 $70

    ld [hl], d                                    ; $6da1: $72
    ld l, a                                       ; $6da2: $6f
    halt                                          ; $6da3: $76
    ld h, l                                       ; $6da4: $65
    ld l, [hl]                                    ; $6da5: $6e
    jr nz, @+$7b                                  ; $6da6: $20 $79

    ld l, a                                       ; $6da8: $6f
    ld [hl], l                                    ; $6da9: $75
    ld [hl], d                                    ; $6daa: $72
    ld bc, $6b73                                  ; $6dab: $01 $73 $6b
    ld l, c                                       ; $6dae: $69
    ld l, h                                       ; $6daf: $6c
    ld l, h                                       ; $6db0: $6c
    ld [hl], e                                    ; $6db1: $73
    jr nz, jr_019_6e16                            ; $6db2: $20 $62

    ld a, c                                       ; $6db4: $79
    jr nz, jr_019_6e2e                            ; $6db5: $20 $77

    ld l, c                                       ; $6db7: $69
    ld l, [hl]                                    ; $6db8: $6e
    ld l, [hl]                                    ; $6db9: $6e
    ld l, c                                       ; $6dba: $69
    ld l, [hl]                                    ; $6dbb: $6e
    ld h, a                                       ; $6dbc: $67
    ld bc, $6150                                  ; $6dbd: $01 $50 $61

jr_019_6dc0:
    ld l, h                                       ; $6dc0: $6c
    ld l, l                                       ; $6dc1: $6d
    daa                                           ; $6dc2: $27
    ld [hl], e                                    ; $6dc3: $73

jr_019_6dc4:
    jr nz, jr_019_6e1a                            ; $6dc4: $20 $54

    ld l, a                                       ; $6dc6: $6f
    ld [hl], l                                    ; $6dc7: $75
    ld [hl], d                                    ; $6dc8: $72
    ld l, [hl]                                    ; $6dc9: $6e
    ld h, c                                       ; $6dca: $61
    ld l, l                                       ; $6dcb: $6d
    ld h, l                                       ; $6dcc: $65
    ld l, [hl]                                    ; $6dcd: $6e
    ld [hl], h                                    ; $6dce: $74
    ld l, $02                                     ; $6dcf: $2e $02
    ld c, a                                       ; $6dd1: $4f
    ld [hl], l                                    ; $6dd2: $75
    ld [hl], d                                    ; $6dd3: $72
    jr nz, jr_019_6e3b                            ; $6dd4: $20 $65

    ld a, b                                       ; $6dd6: $78
    ld [hl], b                                    ; $6dd7: $70
    ld h, l                                       ; $6dd8: $65
    ld h, e                                       ; $6dd9: $63

jr_019_6dda:
    ld [hl], h                                    ; $6dda: $74

jr_019_6ddb:
    ld h, c                                       ; $6ddb: $61
    ld [hl], h                                    ; $6ddc: $74
    ld l, c                                       ; $6ddd: $69
    ld l, a                                       ; $6dde: $6f

jr_019_6ddf:
    ld l, [hl]                                    ; $6ddf: $6e
    ld [hl], e                                    ; $6de0: $73

jr_019_6de1:
    jr nz, @+$68                                  ; $6de1: $20 $66

jr_019_6de3:
    ld l, a                                       ; $6de3: $6f
    ld [hl], d                                    ; $6de4: $72
    ld bc, $6f79                                  ; $6de5: $01 $79 $6f
    ld [hl], l                                    ; $6de8: $75
    jr nz, jr_019_6e55                            ; $6de9: $20 $6a

    ld [hl], l                                    ; $6deb: $75
    ld [hl], e                                    ; $6dec: $73
    ld [hl], h                                    ; $6ded: $74
    jr nz, jr_019_6e5b                            ; $6dee: $20 $6b

    ld h, l                                       ; $6df0: $65
    ld h, l                                       ; $6df1: $65
    ld [hl], b                                    ; $6df2: $70
    ld bc, $6972                                  ; $6df3: $01 $72 $69
    ld [hl], e                                    ; $6df6: $73
    ld l, c                                       ; $6df7: $69

jr_019_6df8:
    ld l, [hl]                                    ; $6df8: $6e
    ld h, a                                       ; $6df9: $67
    ld hl, $0003                                  ; $6dfa: $21 $03 $00
    ld c, $05                                     ; $6dfd: $0e $05
    inc l                                         ; $6dff: $2c
    jr nz, jr_019_6e52                            ; $6e00: $20 $50

    ld h, c                                       ; $6e02: $61
    ld l, h                                       ; $6e03: $6c
    ld l, l                                       ; $6e04: $6d
    jr nz, jr_019_6e4a                            ; $6e05: $20 $43

    ld l, h                                       ; $6e07: $6c
    ld [hl], l                                    ; $6e08: $75
    ld h, d                                       ; $6e09: $62
    daa                                           ; $6e0a: $27
    ld [hl], e                                    ; $6e0b: $73
    ld bc, $6843                                  ; $6e0c: $01 $43 $68
    ld h, c                                       ; $6e0f: $61
    ld l, l                                       ; $6e10: $6d

jr_019_6e11:
    ld [hl], b                                    ; $6e11: $70
    inc l                                         ; $6e12: $2c
    jr nz, jr_019_6e7e                            ; $6e13: $20 $69

    ld [hl], e                                    ; $6e15: $73

jr_019_6e16:
    jr nz, jr_019_6e79                            ; $6e16: $20 $61

    jr nz, jr_019_6e8d                            ; $6e18: $20 $73

jr_019_6e1a:
    ld l, e                                       ; $6e1a: $6b
    ld l, c                                       ; $6e1b: $69
    ld l, h                                       ; $6e1c: $6c
    ld l, h                                       ; $6e1d: $6c
    ld h, l                                       ; $6e1e: $65
    ld h, h                                       ; $6e1f: $64
    ld bc, $6f67                                  ; $6e20: $01 $67 $6f
    ld l, h                                       ; $6e23: $6c
    ld h, [hl]                                    ; $6e24: $66
    ld h, l                                       ; $6e25: $65
    ld [hl], d                                    ; $6e26: $72
    ld l, $02                                     ; $6e27: $2e $02
    ld b, d                                       ; $6e29: $42
    ld h, l                                       ; $6e2a: $65
    ld h, c                                       ; $6e2b: $61
    ld [hl], h                                    ; $6e2c: $74
    ld l, c                                       ; $6e2d: $69

jr_019_6e2e:
    ld l, [hl]                                    ; $6e2e: $6e
    ld h, a                                       ; $6e2f: $67
    jr nz, jr_019_6e9a                            ; $6e30: $20 $68

    ld h, l                                       ; $6e32: $65
    ld [hl], d                                    ; $6e33: $72
    jr nz, @+$68                                  ; $6e34: $20 $66

    ld l, a                                       ; $6e36: $6f
    ld [hl], d                                    ; $6e37: $72
    ld bc, $6874                                  ; $6e38: $01 $74 $68

jr_019_6e3b:
    ld h, l                                       ; $6e3b: $65
    jr nz, jr_019_6eb5                            ; $6e3c: $20 $77

    ld l, c                                       ; $6e3e: $69
    ld l, [hl]                                    ; $6e3f: $6e
    jr nz, jr_019_6eb4                            ; $6e40: $20 $72

    ld h, l                                       ; $6e42: $65
    ld h, c                                       ; $6e43: $61
    ld l, h                                       ; $6e44: $6c
    ld l, h                                       ; $6e45: $6c
    ld a, c                                       ; $6e46: $79
    ld bc, $656d                                  ; $6e47: $01 $6d $65

jr_019_6e4a:
    ld h, c                                       ; $6e4a: $61
    ld l, [hl]                                    ; $6e4b: $6e
    ld [hl], e                                    ; $6e4c: $73
    jr nz, jr_019_6ec2                            ; $6e4d: $20 $73

    ld l, a                                       ; $6e4f: $6f
    ld l, l                                       ; $6e50: $6d
    ld h, l                                       ; $6e51: $65

jr_019_6e52:
    ld [hl], h                                    ; $6e52: $74
    ld l, b                                       ; $6e53: $68
    ld l, c                                       ; $6e54: $69

jr_019_6e55:
    ld l, [hl]                                    ; $6e55: $6e
    ld h, a                                       ; $6e56: $67
    ld hl, $0003                                  ; $6e57: $21 $03 $00
    ld c, c                                       ; $6e5a: $49

jr_019_6e5b:
    jr nz, jr_019_6ec5                            ; $6e5b: $20 $68

    ld h, l                                       ; $6e5d: $65
    ld h, c                                       ; $6e5e: $61
    ld [hl], d                                    ; $6e5f: $72
    jr nz, jr_019_6edb                            ; $6e60: $20 $79

    ld l, a                                       ; $6e62: $6f
    ld [hl], l                                    ; $6e63: $75
    jr nz, jr_019_6edd                            ; $6e64: $20 $77

    ld l, a                                       ; $6e66: $6f
    ld l, [hl]                                    ; $6e67: $6e
    jr nz, jr_019_6ede                            ; $6e68: $20 $74

    ld l, b                                       ; $6e6a: $68
    ld h, l                                       ; $6e6b: $65
    ld bc, $6150                                  ; $6e6c: $01 $50 $61
    ld l, h                                       ; $6e6f: $6c
    ld l, l                                       ; $6e70: $6d
    jr nz, jr_019_6eb6                            ; $6e71: $20 $43

    ld l, h                                       ; $6e73: $6c
    ld [hl], l                                    ; $6e74: $75
    ld h, d                                       ; $6e75: $62
    ld bc, $6f54                                  ; $6e76: $01 $54 $6f

jr_019_6e79:
    ld [hl], l                                    ; $6e79: $75
    ld [hl], d                                    ; $6e7a: $72
    ld l, [hl]                                    ; $6e7b: $6e
    ld h, c                                       ; $6e7c: $61
    ld l, l                                       ; $6e7d: $6d

jr_019_6e7e:
    ld h, l                                       ; $6e7e: $65
    ld l, [hl]                                    ; $6e7f: $6e
    ld [hl], h                                    ; $6e80: $74
    ld l, $20                                     ; $6e81: $2e $20
    ld c, [hl]                                    ; $6e83: $4e
    ld l, a                                       ; $6e84: $6f
    ld [hl], a                                    ; $6e85: $77
    inc l                                         ; $6e86: $2c
    ld [bc], a                                    ; $6e87: $02
    ld [hl], b                                    ; $6e88: $70
    ld l, a                                       ; $6e89: $6f
    ld l, h                                       ; $6e8a: $6c
    ld l, c                                       ; $6e8b: $69
    ld [hl], e                                    ; $6e8c: $73

jr_019_6e8d:
    ld l, b                                       ; $6e8d: $68
    jr nz, jr_019_6f09                            ; $6e8e: $20 $79

    ld l, a                                       ; $6e90: $6f
    ld [hl], l                                    ; $6e91: $75
    ld [hl], d                                    ; $6e92: $72
    jr nz, jr_019_6f08                            ; $6e93: $20 $73

    ld l, e                                       ; $6e95: $6b
    ld l, c                                       ; $6e96: $69
    ld l, h                                       ; $6e97: $6c
    ld l, h                                       ; $6e98: $6c
    ld [hl], e                                    ; $6e99: $73

jr_019_6e9a:
    ld bc, $6e61                                  ; $6e9a: $01 $61 $6e
    ld h, h                                       ; $6e9d: $64
    jr nz, jr_019_6f14                            ; $6e9e: $20 $74

    ld h, c                                       ; $6ea0: $61
    ld l, e                                       ; $6ea1: $6b
    ld h, l                                       ; $6ea2: $65
    jr nz, jr_019_6f19                            ; $6ea3: $20 $74

    ld l, b                                       ; $6ea5: $68
    ld h, l                                       ; $6ea6: $65
    jr nz, jr_019_6eed                            ; $6ea7: $20 $44

    ld [hl], l                                    ; $6ea9: $75
    ld l, [hl]                                    ; $6eaa: $6e
    ld h, l                                       ; $6eab: $65
    ld bc, $6c43                                  ; $6eac: $01 $43 $6c
    ld [hl], l                                    ; $6eaf: $75
    ld h, d                                       ; $6eb0: $62
    jr nz, jr_019_6ef6                            ; $6eb1: $20 $43

    ld l, b                                       ; $6eb3: $68

jr_019_6eb4:
    ld h, c                                       ; $6eb4: $61

jr_019_6eb5:
    ld l, l                                       ; $6eb5: $6d

jr_019_6eb6:
    ld [hl], b                                    ; $6eb6: $70
    ld l, c                                       ; $6eb7: $69
    ld l, a                                       ; $6eb8: $6f
    ld l, [hl]                                    ; $6eb9: $6e
    ld [hl], e                                    ; $6eba: $73
    ld l, b                                       ; $6ebb: $68
    ld l, c                                       ; $6ebc: $69
    ld [hl], b                                    ; $6ebd: $70
    ld l, $03                                     ; $6ebe: $2e $03
    nop                                           ; $6ec0: $00
    ld e, c                                       ; $6ec1: $59

jr_019_6ec2:
    ld l, a                                       ; $6ec2: $6f
    ld [hl], l                                    ; $6ec3: $75
    daa                                           ; $6ec4: $27

jr_019_6ec5:
    halt                                          ; $6ec5: $76
    ld h, l                                       ; $6ec6: $65
    jr nz, @+$63                                  ; $6ec7: $20 $61

    ld l, h                                       ; $6ec9: $6c
    ld [hl], d                                    ; $6eca: $72
    ld h, l                                       ; $6ecb: $65
    ld h, c                                       ; $6ecc: $61
    ld h, h                                       ; $6ecd: $64
    ld a, c                                       ; $6ece: $79
    ld bc, $6c70                                  ; $6ecf: $01 $70 $6c
    ld h, c                                       ; $6ed2: $61
    ld h, e                                       ; $6ed3: $63
    ld h, l                                       ; $6ed4: $65
    ld h, h                                       ; $6ed5: $64
    jr nz, jr_019_6f39                            ; $6ed6: $20 $61

    ld [hl], h                                    ; $6ed8: $74
    jr nz, @+$46                                  ; $6ed9: $20 $44

jr_019_6edb:
    ld [hl], l                                    ; $6edb: $75
    ld l, [hl]                                    ; $6edc: $6e

jr_019_6edd:
    ld h, l                                       ; $6edd: $65

jr_019_6ede:
    ccf                                           ; $6ede: $3f
    ld bc, $7247                                  ; $6edf: $01 $47 $72
    ld h, l                                       ; $6ee2: $65
    ld h, c                                       ; $6ee3: $61
    ld [hl], h                                    ; $6ee4: $74
    inc l                                         ; $6ee5: $2c
    jr nz, jr_019_6eef                            ; $6ee6: $20 $07

    ld hl, $5402                                  ; $6ee8: $21 $02 $54
    ld l, b                                       ; $6eeb: $68
    ld h, l                                       ; $6eec: $65

jr_019_6eed:
    jr nz, jr_019_6f5e                            ; $6eed: $20 $6f

jr_019_6eef:
    ld l, [hl]                                    ; $6eef: $6e
    ld l, h                                       ; $6ef0: $6c
    ld a, c                                       ; $6ef1: $79
    jr nz, jr_019_6f57                            ; $6ef2: $20 $63

    ld l, a                                       ; $6ef4: $6f
    ld [hl], l                                    ; $6ef5: $75

jr_019_6ef6:
    ld [hl], d                                    ; $6ef6: $72
    ld [hl], e                                    ; $6ef7: $73
    ld h, l                                       ; $6ef8: $65
    ld bc, $656c                                  ; $6ef9: $01 $6c $65
    ld h, [hl]                                    ; $6efc: $66
    ld [hl], h                                    ; $6efd: $74
    jr nz, jr_019_6f66                            ; $6efe: $20 $66

    ld l, a                                       ; $6f00: $6f
    ld [hl], d                                    ; $6f01: $72
    jr nz, jr_019_6f7d                            ; $6f02: $20 $79

    ld l, a                                       ; $6f04: $6f
    ld [hl], l                                    ; $6f05: $75
    jr nz, jr_019_6f71                            ; $6f06: $20 $69

jr_019_6f08:
    ld [hl], e                                    ; $6f08: $73

jr_019_6f09:
    ld bc, $694c                                  ; $6f09: $01 $4c $69
    ld l, [hl]                                    ; $6f0c: $6e
    ld l, e                                       ; $6f0d: $6b
    ld [hl], e                                    ; $6f0e: $73
    jr nz, jr_019_6f54                            ; $6f0f: $20 $43

    ld l, h                                       ; $6f11: $6c
    ld [hl], l                                    ; $6f12: $75
    ld h, d                                       ; $6f13: $62

jr_019_6f14:
    ld hl, $0003                                  ; $6f14: $21 $03 $00
    ld d, b                                       ; $6f17: $50
    ld l, h                                       ; $6f18: $6c

jr_019_6f19:
    ld h, c                                       ; $6f19: $61
    ld h, e                                       ; $6f1a: $63
    ld l, c                                       ; $6f1b: $69
    ld l, [hl]                                    ; $6f1c: $6e
    ld h, a                                       ; $6f1d: $67
    jr nz, jr_019_6f89                            ; $6f1e: $20 $69

    ld l, [hl]                                    ; $6f20: $6e
    jr nz, jr_019_6f67                            ; $6f21: $20 $44

    ld [hl], l                                    ; $6f23: $75
    ld l, [hl]                                    ; $6f24: $6e
    ld h, l                                       ; $6f25: $65
    daa                                           ; $6f26: $27
    ld [hl], e                                    ; $6f27: $73
    ld bc, $6f54                                  ; $6f28: $01 $54 $6f
    ld [hl], l                                    ; $6f2b: $75
    ld [hl], d                                    ; $6f2c: $72
    ld l, [hl]                                    ; $6f2d: $6e
    ld h, c                                       ; $6f2e: $61
    ld l, l                                       ; $6f2f: $6d
    ld h, l                                       ; $6f30: $65
    ld l, [hl]                                    ; $6f31: $6e
    ld [hl], h                                    ; $6f32: $74
    jr nz, jr_019_6f9e                            ; $6f33: $20 $69

    ld [hl], e                                    ; $6f35: $73
    ld bc, $6e69                                  ; $6f36: $01 $69 $6e

jr_019_6f39:
    ld h, e                                       ; $6f39: $63
    ld [hl], d                                    ; $6f3a: $72
    ld h, l                                       ; $6f3b: $65
    ld h, h                                       ; $6f3c: $64
    ld l, c                                       ; $6f3d: $69
    ld h, d                                       ; $6f3e: $62
    ld l, h                                       ; $6f3f: $6c
    ld h, l                                       ; $6f40: $65
    inc l                                         ; $6f41: $2c
    ld [bc], a                                    ; $6f42: $02
    rlca                                          ; $6f43: $07
    ld hl, $4e20                                  ; $6f44: $21 $20 $4e
    ld l, a                                       ; $6f47: $6f
    ld [hl], a                                    ; $6f48: $77
    ld bc, $6f79                                  ; $6f49: $01 $79 $6f
    ld [hl], l                                    ; $6f4c: $75
    jr nz, @+$65                                  ; $6f4d: $20 $63

    ld h, c                                       ; $6f4f: $61
    ld l, [hl]                                    ; $6f50: $6e
    jr nz, jr_019_6fb8                            ; $6f51: $20 $65

    ld l, [hl]                                    ; $6f53: $6e

jr_019_6f54:
    ld [hl], h                                    ; $6f54: $74
    ld h, l                                       ; $6f55: $65
    ld [hl], d                                    ; $6f56: $72

jr_019_6f57:
    jr nz, @+$76                                  ; $6f57: $20 $74

    ld l, b                                       ; $6f59: $68
    ld h, l                                       ; $6f5a: $65
    ld bc, $694c                                  ; $6f5b: $01 $4c $69

jr_019_6f5e:
    ld l, [hl]                                    ; $6f5e: $6e
    ld l, e                                       ; $6f5f: $6b
    ld [hl], e                                    ; $6f60: $73
    jr nz, jr_019_6fb7                            ; $6f61: $20 $54

    ld l, a                                       ; $6f63: $6f
    ld [hl], l                                    ; $6f64: $75
    ld [hl], d                                    ; $6f65: $72

jr_019_6f66:
    ld l, [hl]                                    ; $6f66: $6e

jr_019_6f67:
    ld h, c                                       ; $6f67: $61
    ld l, l                                       ; $6f68: $6d
    ld h, l                                       ; $6f69: $65
    ld l, [hl]                                    ; $6f6a: $6e
    ld [hl], h                                    ; $6f6b: $74
    ld hl, $0003                                  ; $6f6c: $21 $03 $00
    ld d, b                                       ; $6f6f: $50
    ld l, h                                       ; $6f70: $6c

jr_019_6f71:
    ld h, c                                       ; $6f71: $61
    ld h, e                                       ; $6f72: $63
    ld h, l                                       ; $6f73: $65
    ld h, h                                       ; $6f74: $64
    jr nz, @+$6b                                  ; $6f75: $20 $69

    ld l, [hl]                                    ; $6f77: $6e
    jr nz, jr_019_6fbe                            ; $6f78: $20 $44

    ld [hl], l                                    ; $6f7a: $75
    ld l, [hl]                                    ; $6f7b: $6e
    ld h, l                                       ; $6f7c: $65

jr_019_6f7d:
    daa                                           ; $6f7d: $27
    ld [hl], e                                    ; $6f7e: $73
    ld bc, $6c43                                  ; $6f7f: $01 $43 $6c
    ld [hl], l                                    ; $6f82: $75
    ld h, d                                       ; $6f83: $62
    jr nz, jr_019_6fda                            ; $6f84: $20 $54

    ld l, a                                       ; $6f86: $6f
    ld [hl], l                                    ; $6f87: $75
    ld [hl], d                                    ; $6f88: $72

jr_019_6f89:
    ld l, [hl]                                    ; $6f89: $6e
    ld h, c                                       ; $6f8a: $61
    ld l, l                                       ; $6f8b: $6d
    ld h, l                                       ; $6f8c: $65
    ld l, [hl]                                    ; $6f8d: $6e
    ld [hl], h                                    ; $6f8e: $74
    inc l                                         ; $6f8f: $2c
    ld bc, $6865                                  ; $6f90: $01 $65 $68
    inc l                                         ; $6f93: $2c
    jr nz, @+$09                                  ; $6f94: $20 $07

    ccf                                           ; $6f96: $3f
    ld [bc], a                                    ; $6f97: $02
    ld e, c                                       ; $6f98: $59
    ld l, a                                       ; $6f99: $6f
    ld [hl], l                                    ; $6f9a: $75
    ld [hl], d                                    ; $6f9b: $72
    jr nz, jr_019_7004                            ; $6f9c: $20 $66

jr_019_6f9e:
    ld l, c                                       ; $6f9e: $69
    ld l, [hl]                                    ; $6f9f: $6e
    ld h, c                                       ; $6fa0: $61
    ld l, h                                       ; $6fa1: $6c
    jr nz, jr_019_7013                            ; $6fa2: $20 $6f

    ld h, d                                       ; $6fa4: $62
    ld l, d                                       ; $6fa5: $6a
    ld h, l                                       ; $6fa6: $65
    ld h, e                                       ; $6fa7: $63
    ld [hl], h                                    ; $6fa8: $74
    dec l                                         ; $6fa9: $2d
    ld bc, $7669                                  ; $6faa: $01 $69 $76
    ld h, l                                       ; $6fad: $65
    jr nz, @+$6b                                  ; $6fae: $20 $69

    ld [hl], e                                    ; $6fb0: $73
    jr nz, jr_019_7027                            ; $6fb1: $20 $74

    ld l, b                                       ; $6fb3: $68
    ld h, l                                       ; $6fb4: $65
    jr nz, jr_019_7003                            ; $6fb5: $20 $4c

jr_019_6fb7:
    ld l, c                                       ; $6fb7: $69

jr_019_6fb8:
    ld l, [hl]                                    ; $6fb8: $6e
    ld l, e                                       ; $6fb9: $6b
    ld [hl], e                                    ; $6fba: $73
    ld bc, $6c43                                  ; $6fbb: $01 $43 $6c

jr_019_6fbe:
    ld [hl], l                                    ; $6fbe: $75
    ld h, d                                       ; $6fbf: $62
    jr nz, jr_019_7016                            ; $6fc0: $20 $54

    ld l, a                                       ; $6fc2: $6f
    ld [hl], l                                    ; $6fc3: $75
    ld [hl], d                                    ; $6fc4: $72
    ld l, [hl]                                    ; $6fc5: $6e
    ld h, c                                       ; $6fc6: $61
    ld l, l                                       ; $6fc7: $6d
    ld h, l                                       ; $6fc8: $65
    ld l, [hl]                                    ; $6fc9: $6e
    ld [hl], h                                    ; $6fca: $74
    ld hl, $0003                                  ; $6fcb: $21 $03 $00
    ld e, c                                       ; $6fce: $59
    ld l, a                                       ; $6fcf: $6f
    ld [hl], l                                    ; $6fd0: $75
    jr nz, jr_019_7043                            ; $6fd1: $20 $70

    ld l, h                                       ; $6fd3: $6c
    ld h, c                                       ; $6fd4: $61
    ld h, e                                       ; $6fd5: $63
    ld h, l                                       ; $6fd6: $65
    ld h, h                                       ; $6fd7: $64
    jr nz, jr_019_7043                            ; $6fd8: $20 $69

jr_019_6fda:
    ld l, [hl]                                    ; $6fda: $6e
    jr nz, jr_019_7051                            ; $6fdb: $20 $74

    ld l, b                                       ; $6fdd: $68
    ld h, l                                       ; $6fde: $65
    ld bc, $7544                                  ; $6fdf: $01 $44 $75
    ld l, [hl]                                    ; $6fe2: $6e
    ld h, l                                       ; $6fe3: $65
    jr nz, jr_019_7029                            ; $6fe4: $20 $43

    ld l, h                                       ; $6fe6: $6c
    ld [hl], l                                    ; $6fe7: $75
    ld h, d                                       ; $6fe8: $62
    ld bc, $6f54                                  ; $6fe9: $01 $54 $6f
    ld [hl], l                                    ; $6fec: $75
    ld [hl], d                                    ; $6fed: $72
    ld l, [hl]                                    ; $6fee: $6e
    ld h, c                                       ; $6fef: $61
    ld l, l                                       ; $6ff0: $6d
    ld h, l                                       ; $6ff1: $65
    ld l, [hl]                                    ; $6ff2: $6e
    ld [hl], h                                    ; $6ff3: $74
    inc l                                         ; $6ff4: $2c
    jr nz, @+$76                                  ; $6ff5: $20 $74

    ld l, a                                       ; $6ff7: $6f
    ld l, a                                       ; $6ff8: $6f
    ccf                                           ; $6ff9: $3f
    ld [bc], a                                    ; $6ffa: $02
    ld d, a                                       ; $6ffb: $57
    ld l, a                                       ; $6ffc: $6f
    ld l, [hl]                                    ; $6ffd: $6e
    daa                                           ; $6ffe: $27
    ld [hl], h                                    ; $6fff: $74
    jr nz, jr_019_707b                            ; $7000: $20 $79

    ld l, a                                       ; $7002: $6f

jr_019_7003:
    ld [hl], l                                    ; $7003: $75

jr_019_7004:
    jr nz, jr_019_7068                            ; $7004: $20 $62

    ld h, l                                       ; $7006: $65
    ld bc, $6177                                  ; $7007: $01 $77 $61
    ld l, [hl]                                    ; $700a: $6e
    ld [hl], h                                    ; $700b: $74
    ld l, c                                       ; $700c: $69
    ld l, [hl]                                    ; $700d: $6e
    ld h, a                                       ; $700e: $67
    jr nz, @+$76                                  ; $700f: $20 $74

    ld l, b                                       ; $7011: $68
    ld h, l                                       ; $7012: $65

jr_019_7013:
    jr nz, @+$45                                  ; $7013: $20 $43

    ld l, h                                       ; $7015: $6c

jr_019_7016:
    ld [hl], l                                    ; $7016: $75
    ld h, d                                       ; $7017: $62
    ld bc, $6843                                  ; $7018: $01 $43 $68
    ld h, c                                       ; $701b: $61
    ld l, l                                       ; $701c: $6d
    ld [hl], b                                    ; $701d: $70
    jr nz, jr_019_7094                            ; $701e: $20 $74

    ld l, c                                       ; $7020: $69
    ld [hl], h                                    ; $7021: $74
    ld l, h                                       ; $7022: $6c
    ld h, l                                       ; $7023: $65
    inc l                                         ; $7024: $2c
    jr nz, jr_019_709b                            ; $7025: $20 $74

jr_019_7027:
    ld l, a                                       ; $7027: $6f
    ld l, a                                       ; $7028: $6f

jr_019_7029:
    ccf                                           ; $7029: $3f
    inc bc                                        ; $702a: $03
    nop                                           ; $702b: $00
    ld b, c                                       ; $702c: $41
    ld [hl], e                                    ; $702d: $73
    jr nz, jr_019_703b                            ; $702e: $20 $0b

    jr nz, @+$45                                  ; $7030: $20 $43

    ld l, b                                       ; $7032: $68
    ld h, c                                       ; $7033: $61
    ld l, l                                       ; $7034: $6d
    ld [hl], b                                    ; $7035: $70
    inc l                                         ; $7036: $2c
    ld bc, $6f79                                  ; $7037: $01 $79 $6f
    ld [hl], l                                    ; $703a: $75

jr_019_703b:
    jr nz, jr_019_70b0                            ; $703b: $20 $73

    ld [hl], l                                    ; $703d: $75
    ld [hl], d                                    ; $703e: $72
    ld h, l                                       ; $703f: $65
    jr nz, @+$72                                  ; $7040: $20 $70

    ld h, l                                       ; $7042: $65

jr_019_7043:
    ld [hl], d                                    ; $7043: $72
    ld h, [hl]                                    ; $7044: $66
    ld l, a                                       ; $7045: $6f
    ld [hl], d                                    ; $7046: $72
    ld l, l                                       ; $7047: $6d
    ld h, l                                       ; $7048: $65
    ld h, h                                       ; $7049: $64
    ld bc, $7461                                  ; $704a: $01 $61 $74
    jr nz, jr_019_7093                            ; $704d: $20 $44

    ld [hl], l                                    ; $704f: $75
    ld l, [hl]                                    ; $7050: $6e

jr_019_7051:
    ld h, l                                       ; $7051: $65
    jr nz, jr_019_7097                            ; $7052: $20 $43

    ld l, h                                       ; $7054: $6c
    ld [hl], l                                    ; $7055: $75
    ld h, d                                       ; $7056: $62
    ld hl, $0003                                  ; $7057: $21 $03 $00
    ld c, c                                       ; $705a: $49
    daa                                           ; $705b: $27
    ld l, l                                       ; $705c: $6d
    jr nz, jr_019_70c0                            ; $705d: $20 $61

    ld l, l                                       ; $705f: $6d
    ld h, c                                       ; $7060: $61
    ld a, d                                       ; $7061: $7a
    ld h, l                                       ; $7062: $65
    ld h, h                                       ; $7063: $64
    jr nz, jr_019_70da                            ; $7064: $20 $74

    ld l, b                                       ; $7066: $68
    ld h, c                                       ; $7067: $61

jr_019_7068:
    ld [hl], h                                    ; $7068: $74
    ld bc, $6f79                                  ; $7069: $01 $79 $6f
    ld [hl], l                                    ; $706c: $75
    jr nz, @+$64                                  ; $706d: $20 $62

    ld h, l                                       ; $706f: $65
    ld h, c                                       ; $7070: $61
    ld [hl], h                                    ; $7071: $74
    jr nz, jr_019_7082                            ; $7072: $20 $0e

    ld b, $20                                     ; $7074: $06 $20
    ld [hl], h                                    ; $7076: $74
    ld l, a                                       ; $7077: $6f
    ld bc, $6562                                  ; $7078: $01 $62 $65

jr_019_707b:
    ld h, e                                       ; $707b: $63
    ld l, a                                       ; $707c: $6f
    ld l, l                                       ; $707d: $6d
    ld h, l                                       ; $707e: $65
    jr nz, @+$45                                  ; $707f: $20 $43

    ld l, h                                       ; $7081: $6c

jr_019_7082:
    ld [hl], l                                    ; $7082: $75
    ld h, d                                       ; $7083: $62
    jr nz, jr_019_70c9                            ; $7084: $20 $43

    ld l, b                                       ; $7086: $68
    ld h, c                                       ; $7087: $61
    ld l, l                                       ; $7088: $6d
    ld [hl], b                                    ; $7089: $70
    ld hl, $4c02                                  ; $708a: $21 $02 $4c
    ld l, c                                       ; $708d: $69
    ld l, [hl]                                    ; $708e: $6e
    ld l, e                                       ; $708f: $6b
    ld [hl], e                                    ; $7090: $73
    jr nz, @+$45                                  ; $7091: $20 $43

jr_019_7093:
    ld l, h                                       ; $7093: $6c

jr_019_7094:
    ld [hl], l                                    ; $7094: $75
    ld h, d                                       ; $7095: $62
    daa                                           ; $7096: $27

jr_019_7097:
    ld [hl], e                                    ; $7097: $73
    jr nz, @+$45                                  ; $7098: $20 $43

    ld l, b                                       ; $709a: $68

jr_019_709b:
    ld h, c                                       ; $709b: $61
    ld l, l                                       ; $709c: $6d
    ld [hl], b                                    ; $709d: $70
    inc l                                         ; $709e: $2c
    ld bc, $070e                                  ; $709f: $01 $0e $07
    inc l                                         ; $70a2: $2c
    jr nz, jr_019_710e                            ; $70a3: $20 $69

    ld [hl], e                                    ; $70a5: $73
    jr nz, jr_019_711c                            ; $70a6: $20 $74

    ld l, b                                       ; $70a8: $68
    ld h, l                                       ; $70a9: $65
    jr nz, jr_019_70f3                            ; $70aa: $20 $47

    ld [hl], d                                    ; $70ac: $72
    ld h, c                                       ; $70ad: $61
    ld l, [hl]                                    ; $70ae: $6e
    ld h, h                                       ; $70af: $64

jr_019_70b0:
    ld bc, $6843                                  ; $70b0: $01 $43 $68
    ld h, c                                       ; $70b3: $61
    ld l, l                                       ; $70b4: $6d
    ld [hl], b                                    ; $70b5: $70
    ld l, c                                       ; $70b6: $69
    ld l, a                                       ; $70b7: $6f
    ld l, [hl]                                    ; $70b8: $6e
    ld l, $03                                     ; $70b9: $2e $03
    nop                                           ; $70bb: $00
    ld b, d                                       ; $70bc: $42
    ld h, l                                       ; $70bd: $65
    ld h, c                                       ; $70be: $61
    ld [hl], h                                    ; $70bf: $74

jr_019_70c0:
    ld l, c                                       ; $70c0: $69
    ld l, [hl]                                    ; $70c1: $6e
    ld h, a                                       ; $70c2: $67
    jr nz, jr_019_70d3                            ; $70c3: $20 $0e

    ld b, $20                                     ; $70c5: $06 $20
    ld l, c                                       ; $70c7: $69
    ld l, [hl]                                    ; $70c8: $6e

jr_019_70c9:
    ld bc, $7544                                  ; $70c9: $01 $44 $75
    ld l, [hl]                                    ; $70cc: $6e
    ld h, l                                       ; $70cd: $65
    daa                                           ; $70ce: $27
    ld [hl], e                                    ; $70cf: $73
    jr nz, @+$45                                  ; $70d0: $20 $43

    ld l, h                                       ; $70d2: $6c

jr_019_70d3:
    ld [hl], l                                    ; $70d3: $75
    ld h, d                                       ; $70d4: $62
    jr nz, @+$56                                  ; $70d5: $20 $54

    ld l, a                                       ; $70d7: $6f
    ld [hl], l                                    ; $70d8: $75
    ld [hl], d                                    ; $70d9: $72

jr_019_70da:
    dec l                                         ; $70da: $2d
    ld bc, $616e                                  ; $70db: $01 $6e $61
    ld l, l                                       ; $70de: $6d
    ld h, l                                       ; $70df: $65
    ld l, [hl]                                    ; $70e0: $6e
    ld [hl], h                                    ; $70e1: $74
    daa                                           ; $70e2: $27
    ld [hl], e                                    ; $70e3: $73
    jr nz, @+$75                                  ; $70e4: $20 $73

    ld l, a                                       ; $70e6: $6f
    ld l, l                                       ; $70e7: $6d
    ld h, l                                       ; $70e8: $65
    ld [hl], h                                    ; $70e9: $74
    ld l, b                                       ; $70ea: $68
    ld l, c                                       ; $70eb: $69
    ld l, [hl]                                    ; $70ec: $6e
    ld h, a                                       ; $70ed: $67
    ld [bc], a                                    ; $70ee: $02
    ld h, l                                       ; $70ef: $65
    ld l, h                                       ; $70f0: $6c
    ld [hl], e                                    ; $70f1: $73
    ld h, l                                       ; $70f2: $65

jr_019_70f3:
    ld hl, $5920                                  ; $70f3: $21 $20 $59
    ld l, a                                       ; $70f6: $6f
    ld [hl], l                                    ; $70f7: $75
    daa                                           ; $70f8: $27
    ld l, h                                       ; $70f9: $6c
    ld l, h                                       ; $70fa: $6c
    jr nz, jr_019_715f                            ; $70fb: $20 $62

    ld h, l                                       ; $70fd: $65
    ld h, c                                       ; $70fe: $61
    ld [hl], h                                    ; $70ff: $74
    ld bc, $070e                                  ; $7100: $01 $0e $07
    jr nz, jr_019_7166                            ; $7103: $20 $61

    ld [hl], h                                    ; $7105: $74
    jr nz, @+$4e                                  ; $7106: $20 $4c

    ld l, c                                       ; $7108: $69
    ld l, [hl]                                    ; $7109: $6e
    ld l, e                                       ; $710a: $6b
    ld [hl], e                                    ; $710b: $73
    jr nz, jr_019_7151                            ; $710c: $20 $43

jr_019_710e:
    ld l, h                                       ; $710e: $6c
    ld [hl], l                                    ; $710f: $75
    ld h, d                                       ; $7110: $62
    ld bc, $7461                                  ; $7111: $01 $61 $74
    jr nz, jr_019_718a                            ; $7114: $20 $74

    ld l, b                                       ; $7116: $68
    ld h, c                                       ; $7117: $61
    ld [hl], h                                    ; $7118: $74
    jr nz, jr_019_718b                            ; $7119: $20 $70

    ld h, c                                       ; $711b: $61

jr_019_711c:
    ld h, e                                       ; $711c: $63
    ld h, l                                       ; $711d: $65
    ld hl, $0003                                  ; $711e: $21 $03 $00
    ld c, $06                                     ; $7121: $0e $06
    daa                                           ; $7123: $27
    ld [hl], e                                    ; $7124: $73
    jr nz, jr_019_7193                            ; $7125: $20 $6c

    ld l, a                                       ; $7127: $6f
    ld l, [hl]                                    ; $7128: $6e
    ld h, a                                       ; $7129: $67
    jr nz, @+$66                                  ; $712a: $20 $64

    ld [hl], d                                    ; $712c: $72
    ld l, c                                       ; $712d: $69
    halt                                          ; $712e: $76
    ld h, l                                       ; $712f: $65
    ld bc, $7369                                  ; $7130: $01 $69 $73
    jr nz, jr_019_7196                            ; $7133: $20 $61

    jr nz, jr_019_719d                            ; $7135: $20 $66

    ld h, l                                       ; $7137: $65
    ld h, c                                       ; $7138: $61
    ld [hl], d                                    ; $7139: $72
    ld [hl], e                                    ; $713a: $73
    ld l, a                                       ; $713b: $6f
    ld l, l                                       ; $713c: $6d
    ld h, l                                       ; $713d: $65
    ld bc, $6577                                  ; $713e: $01 $77 $65
    ld h, c                                       ; $7141: $61
    ld [hl], b                                    ; $7142: $70
    ld l, a                                       ; $7143: $6f
    ld l, [hl]                                    ; $7144: $6e
    ld l, $02                                     ; $7145: $2e $02
    ld b, d                                       ; $7147: $42
    ld [hl], l                                    ; $7148: $75
    ld [hl], h                                    ; $7149: $74
    jr nz, jr_019_71c5                            ; $714a: $20 $79

    ld l, a                                       ; $714c: $6f
    ld [hl], l                                    ; $714d: $75
    jr nz, jr_019_71b2                            ; $714e: $20 $62

    ld h, l                                       ; $7150: $65

jr_019_7151:
    ld h, c                                       ; $7151: $61
    ld [hl], h                                    ; $7152: $74
    jr nz, jr_019_71bd                            ; $7153: $20 $68

    ld l, c                                       ; $7155: $69
    ld l, l                                       ; $7156: $6d
    inc l                                         ; $7157: $2c
    ld bc, $6f73                                  ; $7158: $01 $73 $6f
    jr nz, jr_019_71a6                            ; $715b: $20 $49

    jr nz, jr_019_71c6                            ; $715d: $20 $67

jr_019_715f:
    ld [hl], l                                    ; $715f: $75
    ld h, l                                       ; $7160: $65
    ld [hl], e                                    ; $7161: $73
    ld [hl], e                                    ; $7162: $73
    jr nz, jr_019_71de                            ; $7163: $20 $79

    ld l, a                                       ; $7165: $6f

jr_019_7166:
    ld [hl], l                                    ; $7166: $75
    daa                                           ; $7167: $27
    ld [hl], d                                    ; $7168: $72
    ld h, l                                       ; $7169: $65
    ld bc, $6f73                                  ; $716a: $01 $73 $6f
    ld l, l                                       ; $716d: $6d
    ld h, l                                       ; $716e: $65
    ld l, a                                       ; $716f: $6f
    ld l, [hl]                                    ; $7170: $6e
    ld h, l                                       ; $7171: $65
    jr nz, jr_019_71e8                            ; $7172: $20 $74

    ld l, a                                       ; $7174: $6f
    jr nz, @+$68                                  ; $7175: $20 $66

    ld h, l                                       ; $7177: $65
    ld h, c                                       ; $7178: $61
    ld [hl], d                                    ; $7179: $72
    ld l, $03                                     ; $717a: $2e $03
    nop                                           ; $717c: $00
    ld c, c                                       ; $717d: $49
    jr nz, jr_019_71e8                            ; $717e: $20 $68

    ld h, l                                       ; $7180: $65
    ld h, c                                       ; $7181: $61
    ld [hl], d                                    ; $7182: $72
    jr nz, jr_019_71fe                            ; $7183: $20 $79

    ld l, a                                       ; $7185: $6f
    ld [hl], l                                    ; $7186: $75
    jr nz, jr_019_7200                            ; $7187: $20 $77

    ld l, a                                       ; $7189: $6f

jr_019_718a:
    ld l, [hl]                                    ; $718a: $6e

jr_019_718b:
    ld bc, $6874                                  ; $718b: $01 $74 $68
    ld h, l                                       ; $718e: $65
    jr nz, jr_019_71d5                            ; $718f: $20 $44

    ld [hl], l                                    ; $7191: $75
    ld l, [hl]                                    ; $7192: $6e

jr_019_7193:
    ld h, l                                       ; $7193: $65
    jr nz, jr_019_71d9                            ; $7194: $20 $43

jr_019_7196:
    ld l, h                                       ; $7196: $6c
    ld [hl], l                                    ; $7197: $75
    ld h, d                                       ; $7198: $62
    ld bc, $6f54                                  ; $7199: $01 $54 $6f
    ld [hl], l                                    ; $719c: $75

jr_019_719d:
    ld [hl], d                                    ; $719d: $72
    ld l, [hl]                                    ; $719e: $6e
    ld h, c                                       ; $719f: $61
    ld l, l                                       ; $71a0: $6d
    ld h, l                                       ; $71a1: $65
    ld l, [hl]                                    ; $71a2: $6e
    ld [hl], h                                    ; $71a3: $74
    ld l, $02                                     ; $71a4: $2e $02

jr_019_71a6:
    ld c, c                                       ; $71a6: $49
    ld h, [hl]                                    ; $71a7: $66
    jr nz, jr_019_7223                            ; $71a8: $20 $79

    ld l, a                                       ; $71aa: $6f
    ld [hl], l                                    ; $71ab: $75
    jr nz, @+$79                                  ; $71ac: $20 $77

    ld l, c                                       ; $71ae: $69
    ld l, [hl]                                    ; $71af: $6e
    jr nz, @+$63                                  ; $71b0: $20 $61

jr_019_71b2:
    ld [hl], h                                    ; $71b2: $74
    jr nz, @+$4e                                  ; $71b3: $20 $4c

    ld l, c                                       ; $71b5: $69
    ld l, [hl]                                    ; $71b6: $6e
    ld l, e                                       ; $71b7: $6b
    ld [hl], e                                    ; $71b8: $73
    ld bc, $6c43                                  ; $71b9: $01 $43 $6c
    ld [hl], l                                    ; $71bc: $75

jr_019_71bd:
    ld h, d                                       ; $71bd: $62
    inc l                                         ; $71be: $2c
    jr nz, jr_019_723a                            ; $71bf: $20 $79

    ld l, a                                       ; $71c1: $6f
    ld [hl], l                                    ; $71c2: $75
    daa                                           ; $71c3: $27
    ld l, h                                       ; $71c4: $6c

jr_019_71c5:
    ld l, h                                       ; $71c5: $6c

jr_019_71c6:
    jr nz, jr_019_722a                            ; $71c6: $20 $62

    ld h, l                                       ; $71c8: $65
    ld h, e                                       ; $71c9: $63
    ld l, a                                       ; $71ca: $6f
    ld l, l                                       ; $71cb: $6d
    ld h, l                                       ; $71cc: $65
    ld bc, $7247                                  ; $71cd: $01 $47 $72
    ld h, c                                       ; $71d0: $61
    ld l, [hl]                                    ; $71d1: $6e
    ld h, h                                       ; $71d2: $64
    jr nz, jr_019_7218                            ; $71d3: $20 $43

jr_019_71d5:
    ld l, b                                       ; $71d5: $68
    ld h, c                                       ; $71d6: $61
    ld l, l                                       ; $71d7: $6d
    ld [hl], b                                    ; $71d8: $70

jr_019_71d9:
    ld l, c                                       ; $71d9: $69
    ld l, a                                       ; $71da: $6f
    ld l, [hl]                                    ; $71db: $6e
    ld l, $2e                                     ; $71dc: $2e $2e

jr_019_71de:
    ld l, $03                                     ; $71de: $2e $03
    nop                                           ; $71e0: $00
    ld d, b                                       ; $71e1: $50
    ld l, h                                       ; $71e2: $6c
    ld h, c                                       ; $71e3: $61
    ld h, e                                       ; $71e4: $63
    ld l, c                                       ; $71e5: $69
    ld l, [hl]                                    ; $71e6: $6e
    ld h, a                                       ; $71e7: $67

jr_019_71e8:
    jr nz, jr_019_7253                            ; $71e8: $20 $69

    ld l, [hl]                                    ; $71ea: $6e
    jr nz, jr_019_7261                            ; $71eb: $20 $74

    ld l, b                                       ; $71ed: $68
    ld h, l                                       ; $71ee: $65
    ld bc, $694c                                  ; $71ef: $01 $4c $69
    ld l, [hl]                                    ; $71f2: $6e
    ld l, e                                       ; $71f3: $6b
    ld [hl], e                                    ; $71f4: $73
    jr nz, jr_019_724b                            ; $71f5: $20 $54

    ld l, a                                       ; $71f7: $6f
    ld [hl], l                                    ; $71f8: $75
    ld [hl], d                                    ; $71f9: $72
    ld l, [hl]                                    ; $71fa: $6e
    ld h, c                                       ; $71fb: $61
    ld l, l                                       ; $71fc: $6d
    ld h, l                                       ; $71fd: $65

jr_019_71fe:
    ld l, [hl]                                    ; $71fe: $6e
    ld [hl], h                                    ; $71ff: $74

jr_019_7200:
    ld bc, $7369                                  ; $7200: $01 $69 $73
    jr nz, jr_019_7278                            ; $7203: $20 $73

    ld l, a                                       ; $7205: $6f
    ld l, l                                       ; $7206: $6d
    ld h, l                                       ; $7207: $65
    ld [hl], h                                    ; $7208: $74
    ld l, b                                       ; $7209: $68
    ld l, c                                       ; $720a: $69
    ld l, [hl]                                    ; $720b: $6e
    ld h, a                                       ; $720c: $67
    jr nz, jr_019_7274                            ; $720d: $20 $65

    ld l, h                                       ; $720f: $6c
    ld [hl], e                                    ; $7210: $73
    ld h, l                                       ; $7211: $65
    ld hl, $4102                                  ; $7212: $21 $02 $41
    ld h, [hl]                                    ; $7215: $66
    ld [hl], h                                    ; $7216: $74
    ld h, l                                       ; $7217: $65

jr_019_7218:
    ld [hl], d                                    ; $7218: $72
    jr nz, jr_019_727e                            ; $7219: $20 $63

    ld l, a                                       ; $721b: $6f
    ld l, l                                       ; $721c: $6d
    ld l, c                                       ; $721d: $69
    ld l, [hl]                                    ; $721e: $6e
    ld h, a                                       ; $721f: $67
    jr nz, @+$75                                  ; $7220: $20 $73

    ld l, a                                       ; $7222: $6f

jr_019_7223:
    ld bc, $6166                                  ; $7223: $01 $66 $61
    ld [hl], d                                    ; $7226: $72
    inc l                                         ; $7227: $2c
    jr nz, jr_019_72a1                            ; $7228: $20 $77

jr_019_722a:
    ld l, c                                       ; $722a: $69
    ld l, h                                       ; $722b: $6c
    ld l, h                                       ; $722c: $6c
    jr nz, jr_019_72a8                            ; $722d: $20 $79

    ld l, a                                       ; $722f: $6f
    ld [hl], l                                    ; $7230: $75
    jr nz, @+$76                                  ; $7231: $20 $74

    ld [hl], d                                    ; $7233: $72
    ld a, c                                       ; $7234: $79
    ld bc, $6f74                                  ; $7235: $01 $74 $6f
    jr nz, @+$76                                  ; $7238: $20 $74

jr_019_723a:
    ld h, c                                       ; $723a: $61
    ld l, e                                       ; $723b: $6b
    ld h, l                                       ; $723c: $65
    jr nz, @+$71                                  ; $723d: $20 $6f

    ld l, [hl]                                    ; $723f: $6e
    jr nz, jr_019_728f                            ; $7240: $20 $4d

    ld h, c                                       ; $7242: $61
    ld [hl], d                                    ; $7243: $72
    ld l, c                                       ; $7244: $69
    ld l, a                                       ; $7245: $6f
    ccf                                           ; $7246: $3f
    inc bc                                        ; $7247: $03
    nop                                           ; $7248: $00
    ld d, e                                       ; $7249: $53
    ld l, a                                       ; $724a: $6f

jr_019_724b:
    jr nz, jr_019_72c6                            ; $724b: $20 $79

    ld l, a                                       ; $724d: $6f
    ld [hl], l                                    ; $724e: $75
    jr nz, jr_019_72c1                            ; $724f: $20 $70

    ld l, h                                       ; $7251: $6c
    ld h, c                                       ; $7252: $61

jr_019_7253:
    ld h, e                                       ; $7253: $63
    ld h, l                                       ; $7254: $65
    ld h, h                                       ; $7255: $64
    jr nz, jr_019_72c1                            ; $7256: $20 $69

    ld l, [hl]                                    ; $7258: $6e
    ld bc, $6874                                  ; $7259: $01 $74 $68
    ld h, l                                       ; $725c: $65
    jr nz, jr_019_72ab                            ; $725d: $20 $4c

    ld l, c                                       ; $725f: $69
    ld l, [hl]                                    ; $7260: $6e

jr_019_7261:
    ld l, e                                       ; $7261: $6b
    ld [hl], e                                    ; $7262: $73
    jr nz, jr_019_72a8                            ; $7263: $20 $43

    ld l, h                                       ; $7265: $6c
    ld [hl], l                                    ; $7266: $75
    ld h, d                                       ; $7267: $62
    ld bc, $6f54                                  ; $7268: $01 $54 $6f
    ld [hl], l                                    ; $726b: $75
    ld [hl], d                                    ; $726c: $72
    ld l, [hl]                                    ; $726d: $6e
    ld h, c                                       ; $726e: $61
    ld l, l                                       ; $726f: $6d
    ld h, l                                       ; $7270: $65
    ld l, [hl]                                    ; $7271: $6e
    ld [hl], h                                    ; $7272: $74
    ccf                                           ; $7273: $3f

jr_019_7274:
    jr nz, jr_019_72bd                            ; $7274: $20 $47

    ld [hl], d                                    ; $7276: $72
    ld h, l                                       ; $7277: $65

jr_019_7278:
    ld h, c                                       ; $7278: $61
    ld [hl], h                                    ; $7279: $74
    ld hl, $5902                                  ; $727a: $21 $02 $59
    ld l, a                                       ; $727d: $6f

jr_019_727e:
    ld [hl], l                                    ; $727e: $75
    ld [hl], d                                    ; $727f: $72
    jr nz, jr_019_72e6                            ; $7280: $20 $64

    ld [hl], d                                    ; $7282: $72
    ld h, l                                       ; $7283: $65
    ld h, c                                       ; $7284: $61
    ld l, l                                       ; $7285: $6d
    jr nz, @+$71                                  ; $7286: $20 $6f

    ld h, [hl]                                    ; $7288: $66
    jr nz, jr_019_72ed                            ; $7289: $20 $62

    ld h, l                                       ; $728b: $65
    ld h, e                                       ; $728c: $63
    ld l, a                                       ; $728d: $6f
    ld l, l                                       ; $728e: $6d

jr_019_728f:
    dec l                                         ; $728f: $2d
    ld bc, $6e69                                  ; $7290: $01 $69 $6e
    ld h, a                                       ; $7293: $67
    jr nz, jr_019_72dd                            ; $7294: $20 $47

    ld [hl], d                                    ; $7296: $72
    ld h, c                                       ; $7297: $61
    ld l, [hl]                                    ; $7298: $6e
    ld h, h                                       ; $7299: $64
    jr nz, jr_019_72df                            ; $729a: $20 $43

    ld l, b                                       ; $729c: $68
    ld h, c                                       ; $729d: $61
    ld l, l                                       ; $729e: $6d
    ld [hl], b                                    ; $729f: $70
    ld l, c                                       ; $72a0: $69

jr_019_72a1:
    ld l, a                                       ; $72a1: $6f
    ld l, [hl]                                    ; $72a2: $6e
    ld bc, $7369                                  ; $72a3: $01 $69 $73
    jr nz, @+$64                                  ; $72a6: $20 $62

jr_019_72a8:
    ld h, l                                       ; $72a8: $65
    ld h, [hl]                                    ; $72a9: $66
    ld l, a                                       ; $72aa: $6f

jr_019_72ab:
    ld [hl], d                                    ; $72ab: $72
    ld h, l                                       ; $72ac: $65
    jr nz, jr_019_7328                            ; $72ad: $20 $79

    ld l, a                                       ; $72af: $6f
    ld [hl], l                                    ; $72b0: $75
    ld hl, $0003                                  ; $72b1: $21 $03 $00
    ld d, h                                       ; $72b4: $54
    ld l, b                                       ; $72b5: $68
    ld h, l                                       ; $72b6: $65
    jr nz, jr_019_7305                            ; $72b7: $20 $4c

    ld l, c                                       ; $72b9: $69
    ld l, [hl]                                    ; $72ba: $6e
    ld l, e                                       ; $72bb: $6b
    ld [hl], e                                    ; $72bc: $73

jr_019_72bd:
    jr nz, jr_019_7302                            ; $72bd: $20 $43

    ld l, h                                       ; $72bf: $6c
    ld [hl], l                                    ; $72c0: $75

jr_019_72c1:
    ld h, d                                       ; $72c1: $62
    ld bc, $6f54                                  ; $72c2: $01 $54 $6f
    ld [hl], l                                    ; $72c5: $75

jr_019_72c6:
    ld [hl], d                                    ; $72c6: $72
    ld l, [hl]                                    ; $72c7: $6e
    ld h, c                                       ; $72c8: $61
    ld l, l                                       ; $72c9: $6d
    ld h, l                                       ; $72ca: $65
    ld l, [hl]                                    ; $72cb: $6e
    ld [hl], h                                    ; $72cc: $74
    jr nz, jr_019_7338                            ; $72cd: $20 $69

    ld [hl], e                                    ; $72cf: $73
    jr nz, jr_019_7346                            ; $72d0: $20 $74

    ld l, b                                       ; $72d2: $68
    ld h, l                                       ; $72d3: $65
    ld bc, $6863                                  ; $72d4: $01 $63 $68
    ld h, c                                       ; $72d7: $61
    ld l, l                                       ; $72d8: $6d
    ld [hl], b                                    ; $72d9: $70
    ld l, c                                       ; $72da: $69
    ld l, a                                       ; $72db: $6f
    ld l, [hl]                                    ; $72dc: $6e

jr_019_72dd:
    ld [hl], e                                    ; $72dd: $73
    ld l, b                                       ; $72de: $68

jr_019_72df:
    ld l, c                                       ; $72df: $69
    ld [hl], b                                    ; $72e0: $70
    jr nz, jr_019_7349                            ; $72e1: $20 $66

    ld l, a                                       ; $72e3: $6f
    ld [hl], d                                    ; $72e4: $72
    ld [bc], a                                    ; $72e5: $02

jr_019_72e6:
    ld [hl], h                                    ; $72e6: $74
    ld l, b                                       ; $72e7: $68
    ld h, l                                       ; $72e8: $65
    jr nz, @+$64                                  ; $72e9: $20 $62

    ld h, l                                       ; $72eb: $65
    ld [hl], e                                    ; $72ec: $73

jr_019_72ed:
    ld [hl], h                                    ; $72ed: $74
    jr nz, jr_019_7357                            ; $72ee: $20 $67

    ld l, a                                       ; $72f0: $6f
    ld l, h                                       ; $72f1: $6c
    ld h, [hl]                                    ; $72f2: $66
    ld h, l                                       ; $72f3: $65
    ld [hl], d                                    ; $72f4: $72
    ld [hl], e                                    ; $72f5: $73
    ld l, $01                                     ; $72f6: $2e $01
    ld d, b                                       ; $72f8: $50
    ld l, h                                       ; $72f9: $6c
    ld h, c                                       ; $72fa: $61
    ld h, e                                       ; $72fb: $63
    ld l, c                                       ; $72fc: $69
    ld l, [hl]                                    ; $72fd: $6e
    ld h, a                                       ; $72fe: $67
    jr nz, jr_019_736e                            ; $72ff: $20 $6d

    ld h, c                                       ; $7301: $61

jr_019_7302:
    ld l, e                                       ; $7302: $6b
    ld h, l                                       ; $7303: $65
    ld [hl], e                                    ; $7304: $73

jr_019_7305:
    jr nz, jr_019_7380                            ; $7305: $20 $79

    ld l, a                                       ; $7307: $6f
    ld [hl], l                                    ; $7308: $75
    ld bc, $6e6f                                  ; $7309: $01 $6f $6e
    ld h, l                                       ; $730c: $65
    jr nz, jr_019_737e                            ; $730d: $20 $6f

    ld h, [hl]                                    ; $730f: $66
    jr nz, jr_019_7386                            ; $7310: $20 $74

    ld l, b                                       ; $7312: $68
    ld h, l                                       ; $7313: $65
    jr nz, jr_019_7378                            ; $7314: $20 $62

    ld h, l                                       ; $7316: $65
    ld [hl], e                                    ; $7317: $73
    ld [hl], h                                    ; $7318: $74
    ld hl, $0003                                  ; $7319: $21 $03 $00
    ld e, c                                       ; $731c: $59
    ld l, a                                       ; $731d: $6f
    ld [hl], l                                    ; $731e: $75
    jr nz, jr_019_7391                            ; $731f: $20 $70

    ld l, h                                       ; $7321: $6c
    ld h, c                                       ; $7322: $61
    ld h, e                                       ; $7323: $63
    ld h, l                                       ; $7324: $65
    ld h, h                                       ; $7325: $64
    jr nz, jr_019_7391                            ; $7326: $20 $69

jr_019_7328:
    ld l, [hl]                                    ; $7328: $6e
    ld bc, $694c                                  ; $7329: $01 $4c $69
    ld l, [hl]                                    ; $732c: $6e
    ld l, e                                       ; $732d: $6b
    ld [hl], e                                    ; $732e: $73
    jr nz, jr_019_7374                            ; $732f: $20 $43

    ld l, h                                       ; $7331: $6c
    ld [hl], l                                    ; $7332: $75
    ld h, d                                       ; $7333: $62
    ld bc, $6f54                                  ; $7334: $01 $54 $6f
    ld [hl], l                                    ; $7337: $75

jr_019_7338:
    ld [hl], d                                    ; $7338: $72
    ld l, [hl]                                    ; $7339: $6e
    ld h, c                                       ; $733a: $61
    ld l, l                                       ; $733b: $6d
    ld h, l                                       ; $733c: $65
    ld l, [hl]                                    ; $733d: $6e
    ld [hl], h                                    ; $733e: $74
    inc l                                         ; $733f: $2c
    jr nz, @+$76                                  ; $7340: $20 $74

    ld l, a                                       ; $7342: $6f
    ld l, a                                       ; $7343: $6f
    ccf                                           ; $7344: $3f
    ld [bc], a                                    ; $7345: $02

jr_019_7346:
    ld e, c                                       ; $7346: $59
    ld l, a                                       ; $7347: $6f
    ld [hl], l                                    ; $7348: $75

jr_019_7349:
    daa                                           ; $7349: $27
    ld l, h                                       ; $734a: $6c
    ld l, h                                       ; $734b: $6c
    jr nz, jr_019_73b0                            ; $734c: $20 $62

    ld h, l                                       ; $734e: $65
    jr nz, jr_019_73c8                            ; $734f: $20 $77

    ld h, c                                       ; $7351: $61
    ld l, [hl]                                    ; $7352: $6e
    ld [hl], h                                    ; $7353: $74
    ld l, c                                       ; $7354: $69
    ld l, [hl]                                    ; $7355: $6e
    ld h, a                                       ; $7356: $67

jr_019_7357:
    ld bc, $6874                                  ; $7357: $01 $74 $68
    ld h, l                                       ; $735a: $65
    jr nz, jr_019_73d1                            ; $735b: $20 $74

    ld l, c                                       ; $735d: $69
    ld [hl], h                                    ; $735e: $74
    ld l, h                                       ; $735f: $6c
    ld h, l                                       ; $7360: $65
    jr nz, jr_019_73d2                            ; $7361: $20 $6f

    ld h, [hl]                                    ; $7363: $66
    jr nz, jr_019_73ad                            ; $7364: $20 $47

    ld [hl], d                                    ; $7366: $72
    ld h, c                                       ; $7367: $61
    ld l, [hl]                                    ; $7368: $6e
    ld h, h                                       ; $7369: $64
    ld bc, $6843                                  ; $736a: $01 $43 $68
    ld h, c                                       ; $736d: $61

jr_019_736e:
    ld l, l                                       ; $736e: $6d
    ld [hl], b                                    ; $736f: $70
    jr nz, jr_019_73e5                            ; $7370: $20 $73

    ld l, a                                       ; $7372: $6f
    ld l, a                                       ; $7373: $6f

jr_019_7374:
    ld l, [hl]                                    ; $7374: $6e
    inc l                                         ; $7375: $2c
    jr nz, @+$67                                  ; $7376: $20 $65

jr_019_7378:
    ld l, b                                       ; $7378: $68
    ccf                                           ; $7379: $3f
    inc bc                                        ; $737a: $03
    nop                                           ; $737b: $00
    ld b, c                                       ; $737c: $41
    ld [hl], e                                    ; $737d: $73

jr_019_737e:
    jr nz, @+$0d                                  ; $737e: $20 $0b

jr_019_7380:
    daa                                           ; $7380: $27
    ld [hl], e                                    ; $7381: $73
    jr nz, jr_019_73c7                            ; $7382: $20 $43

    ld l, b                                       ; $7384: $68
    ld h, c                                       ; $7385: $61

jr_019_7386:
    ld l, l                                       ; $7386: $6d
    ld [hl], b                                    ; $7387: $70
    inc l                                         ; $7388: $2c
    ld bc, $6f79                                  ; $7389: $01 $79 $6f
    ld [hl], l                                    ; $738c: $75
    jr nz, jr_019_7402                            ; $738d: $20 $73

    ld [hl], l                                    ; $738f: $75
    ld [hl], d                                    ; $7390: $72

jr_019_7391:
    ld h, l                                       ; $7391: $65
    jr nz, jr_019_7404                            ; $7392: $20 $70

    ld h, l                                       ; $7394: $65
    ld [hl], d                                    ; $7395: $72
    dec l                                         ; $7396: $2d
    ld bc, $6f66                                  ; $7397: $01 $66 $6f
    ld [hl], d                                    ; $739a: $72
    ld l, l                                       ; $739b: $6d
    ld h, l                                       ; $739c: $65
    ld h, h                                       ; $739d: $64
    jr nz, jr_019_7401                            ; $739e: $20 $61

    ld [hl], h                                    ; $73a0: $74
    jr nz, jr_019_73ef                            ; $73a1: $20 $4c

    ld l, c                                       ; $73a3: $69
    ld l, [hl]                                    ; $73a4: $6e
    ld l, e                                       ; $73a5: $6b
    ld [hl], e                                    ; $73a6: $73
    ld hl, $0003                                  ; $73a7: $21 $03 $00
    ld e, c                                       ; $73aa: $59
    ld l, a                                       ; $73ab: $6f
    ld [hl], l                                    ; $73ac: $75

jr_019_73ad:
    jr nz, jr_019_7413                            ; $73ad: $20 $64

    ld l, c                                       ; $73af: $69

jr_019_73b0:
    ld h, h                                       ; $73b0: $64
    jr nz, jr_019_741c                            ; $73b1: $20 $69

    ld [hl], h                                    ; $73b3: $74
    inc l                                         ; $73b4: $2c
    ld bc, $2107                                  ; $73b5: $01 $07 $21
    jr nz, jr_019_7413                            ; $73b8: $20 $59

    ld l, a                                       ; $73ba: $6f
    ld [hl], l                                    ; $73bb: $75
    ld bc, $6f77                                  ; $73bc: $01 $77 $6f
    ld l, [hl]                                    ; $73bf: $6e
    jr nz, jr_019_7423                            ; $73c0: $20 $61

    ld [hl], h                                    ; $73c2: $74
    jr nz, jr_019_7411                            ; $73c3: $20 $4c

    ld l, c                                       ; $73c5: $69
    ld l, [hl]                                    ; $73c6: $6e

jr_019_73c7:
    ld l, e                                       ; $73c7: $6b

jr_019_73c8:
    ld [hl], e                                    ; $73c8: $73
    ld hl, $0003                                  ; $73c9: $21 $03 $00
    ld d, h                                       ; $73cc: $54
    ld h, c                                       ; $73cd: $61
    ld l, e                                       ; $73ce: $6b
    ld l, c                                       ; $73cf: $69
    ld l, [hl]                                    ; $73d0: $6e

jr_019_73d1:
    ld h, a                                       ; $73d1: $67

jr_019_73d2:
    jr nz, jr_019_7448                            ; $73d2: $20 $74

    ld l, b                                       ; $73d4: $68
    ld h, l                                       ; $73d5: $65
    jr nz, jr_019_741f                            ; $73d6: $20 $47

    ld [hl], d                                    ; $73d8: $72
    ld h, c                                       ; $73d9: $61
    ld l, [hl]                                    ; $73da: $6e
    ld h, h                                       ; $73db: $64
    ld bc, $6843                                  ; $73dc: $01 $43 $68
    ld h, c                                       ; $73df: $61
    ld l, l                                       ; $73e0: $6d
    ld [hl], b                                    ; $73e1: $70
    jr nz, jr_019_7458                            ; $73e2: $20 $74

    ld l, c                                       ; $73e4: $69

jr_019_73e5:
    ld [hl], h                                    ; $73e5: $74
    ld l, h                                       ; $73e6: $6c
    ld h, l                                       ; $73e7: $65
    jr nz, jr_019_745d                            ; $73e8: $20 $73

    ld l, a                                       ; $73ea: $6f
    ld bc, $7571                                  ; $73eb: $01 $71 $75
    ld l, c                                       ; $73ee: $69

jr_019_73ef:
    ld h, e                                       ; $73ef: $63
    ld l, e                                       ; $73f0: $6b
    ld l, h                                       ; $73f1: $6c
    ld a, c                                       ; $73f2: $79
    jr nz, @+$6b                                  ; $73f3: $20 $69

    ld [hl], e                                    ; $73f5: $73
    jr nz, jr_019_7459                            ; $73f6: $20 $61

    ld l, l                                       ; $73f8: $6d
    ld h, c                                       ; $73f9: $61
    ld a, d                                       ; $73fa: $7a
    ld l, c                                       ; $73fb: $69
    ld l, [hl]                                    ; $73fc: $6e
    ld h, a                                       ; $73fd: $67
    ld hl, $0003                                  ; $73fe: $21 $03 $00

jr_019_7401:
    ld e, c                                       ; $7401: $59

jr_019_7402:
    ld l, a                                       ; $7402: $6f
    ld [hl], l                                    ; $7403: $75

jr_019_7404:
    jr nz, jr_019_747a                            ; $7404: $20 $74

    ld l, a                                       ; $7406: $6f
    ld l, a                                       ; $7407: $6f
    ld l, e                                       ; $7408: $6b
    jr nz, jr_019_747f                            ; $7409: $20 $74

    ld l, b                                       ; $740b: $68
    ld h, l                                       ; $740c: $65
    jr nz, jr_019_7456                            ; $740d: $20 $47

    ld [hl], d                                    ; $740f: $72
    ld h, c                                       ; $7410: $61

jr_019_7411:
    ld l, [hl]                                    ; $7411: $6e
    ld h, h                                       ; $7412: $64

jr_019_7413:
    ld bc, $6843                                  ; $7413: $01 $43 $68
    ld h, c                                       ; $7416: $61
    ld l, l                                       ; $7417: $6d
    ld [hl], b                                    ; $7418: $70
    jr nz, jr_019_748f                            ; $7419: $20 $74

    ld l, c                                       ; $741b: $69

jr_019_741c:
    ld [hl], h                                    ; $741c: $74
    ld l, h                                       ; $741d: $6c
    ld h, l                                       ; $741e: $65

jr_019_741f:
    inc l                                         ; $741f: $2c
    ld bc, $2107                                  ; $7420: $01 $07 $21

jr_019_7423:
    ld [bc], a                                    ; $7423: $02
    ld e, c                                       ; $7424: $59
    ld l, a                                       ; $7425: $6f
    ld [hl], l                                    ; $7426: $75
    daa                                           ; $7427: $27
    ld l, h                                       ; $7428: $6c
    ld l, h                                       ; $7429: $6c
    jr nz, jr_019_7490                            ; $742a: $20 $64

    ld h, l                                       ; $742c: $65
    ld h, [hl]                                    ; $742d: $66
    ld l, c                                       ; $742e: $69
    ld l, [hl]                                    ; $742f: $6e
    ld l, c                                       ; $7430: $69
    ld [hl], h                                    ; $7431: $74
    ld h, l                                       ; $7432: $65
    ld l, h                                       ; $7433: $6c
    ld a, c                                       ; $7434: $79
    ld bc, $6562                                  ; $7435: $01 $62 $65
    jr nz, jr_019_74a3                            ; $7438: $20 $69

    ld l, [hl]                                    ; $743a: $6e
    halt                                          ; $743b: $76
    ld l, c                                       ; $743c: $69
    ld [hl], h                                    ; $743d: $74
    ld h, l                                       ; $743e: $65
    ld h, h                                       ; $743f: $64
    jr nz, jr_019_74b6                            ; $7440: $20 $74

    ld l, a                                       ; $7442: $6f
    ld bc, $6550                                  ; $7443: $01 $50 $65
    ld h, c                                       ; $7446: $61
    ld h, e                                       ; $7447: $63

jr_019_7448:
    ld l, b                                       ; $7448: $68
    daa                                           ; $7449: $27
    ld [hl], e                                    ; $744a: $73
    jr nz, jr_019_7490                            ; $744b: $20 $43

    ld h, c                                       ; $744d: $61
    ld [hl], e                                    ; $744e: $73
    ld [hl], h                                    ; $744f: $74
    ld l, h                                       ; $7450: $6c
    ld h, l                                       ; $7451: $65
    ld l, $03                                     ; $7452: $2e $03
    nop                                           ; $7454: $00
    ld d, h                                       ; $7455: $54

jr_019_7456:
    ld l, b                                       ; $7456: $68
    ld h, l                                       ; $7457: $65

jr_019_7458:
    ld a, c                                       ; $7458: $79

jr_019_7459:
    jr nz, @+$75                                  ; $7459: $20 $73

    ld h, c                                       ; $745b: $61
    ld a, c                                       ; $745c: $79

jr_019_745d:
    jr nz, jr_019_74d3                            ; $745d: $20 $74

    ld l, b                                       ; $745f: $68
    ld h, l                                       ; $7460: $65
    jr nz, jr_019_74aa                            ; $7461: $20 $47

    ld [hl], d                                    ; $7463: $72
    ld h, c                                       ; $7464: $61
    ld l, [hl]                                    ; $7465: $6e
    ld h, h                                       ; $7466: $64
    ld bc, $6843                                  ; $7467: $01 $43 $68
    ld h, c                                       ; $746a: $61
    ld l, l                                       ; $746b: $6d
    ld [hl], b                                    ; $746c: $70
    ld l, c                                       ; $746d: $69
    ld l, a                                       ; $746e: $6f
    ld l, [hl]                                    ; $746f: $6e
    jr nz, jr_019_74d9                            ; $7470: $20 $67

    ld h, l                                       ; $7472: $65
    ld [hl], h                                    ; $7473: $74
    ld [hl], e                                    ; $7474: $73
    ld bc, $6e69                                  ; $7475: $01 $69 $6e
    halt                                          ; $7478: $76
    ld l, c                                       ; $7479: $69

jr_019_747a:
    ld [hl], h                                    ; $747a: $74
    ld h, l                                       ; $747b: $65
    ld h, h                                       ; $747c: $64
    jr nz, jr_019_74f3                            ; $747d: $20 $74

jr_019_747f:
    ld l, a                                       ; $747f: $6f
    jr nz, jr_019_74d2                            ; $7480: $20 $50

    ld h, l                                       ; $7482: $65
    ld h, c                                       ; $7483: $61
    ld h, e                                       ; $7484: $63
    ld l, b                                       ; $7485: $68
    daa                                           ; $7486: $27
    ld [hl], e                                    ; $7487: $73
    ld [bc], a                                    ; $7488: $02
    ld d, h                                       ; $7489: $54
    ld l, a                                       ; $748a: $6f
    ld [hl], l                                    ; $748b: $75
    ld [hl], d                                    ; $748c: $72
    ld l, [hl]                                    ; $748d: $6e
    ld h, c                                       ; $748e: $61

jr_019_748f:
    ld l, l                                       ; $748f: $6d

jr_019_7490:
    ld h, l                                       ; $7490: $65
    ld l, [hl]                                    ; $7491: $6e
    ld [hl], h                                    ; $7492: $74
    ld l, $20                                     ; $7493: $2e $20
    ld e, c                                       ; $7495: $59
    ld l, a                                       ; $7496: $6f
    ld [hl], l                                    ; $7497: $75
    daa                                           ; $7498: $27
    ld [hl], d                                    ; $7499: $72
    ld h, l                                       ; $749a: $65
    ld bc, $7247                                  ; $749b: $01 $47 $72
    ld h, c                                       ; $749e: $61
    ld l, [hl]                                    ; $749f: $6e
    ld h, h                                       ; $74a0: $64
    jr nz, jr_019_74e6                            ; $74a1: $20 $43

jr_019_74a3:
    ld l, b                                       ; $74a3: $68
    ld h, c                                       ; $74a4: $61
    ld l, l                                       ; $74a5: $6d
    ld [hl], b                                    ; $74a6: $70
    jr nz, jr_019_7517                            ; $74a7: $20 $6e

    ld l, a                                       ; $74a9: $6f

jr_019_74aa:
    ld [hl], a                                    ; $74aa: $77
    ld l, $01                                     ; $74ab: $2e $01
    ld e, c                                       ; $74ad: $59
    ld l, a                                       ; $74ae: $6f
    ld [hl], l                                    ; $74af: $75
    daa                                           ; $74b0: $27
    ld l, h                                       ; $74b1: $6c
    ld l, h                                       ; $74b2: $6c
    jr nz, jr_019_7517                            ; $74b3: $20 $62

    ld h, l                                       ; $74b5: $65

jr_019_74b6:
    jr nz, jr_019_7521                            ; $74b6: $20 $69

    ld l, [hl]                                    ; $74b8: $6e
    halt                                          ; $74b9: $76
    ld l, c                                       ; $74ba: $69
    ld [hl], h                                    ; $74bb: $74
    ld h, l                                       ; $74bc: $65
    ld h, h                                       ; $74bd: $64
    ld l, $03                                     ; $74be: $2e $03
    nop                                           ; $74c0: $00
    ld b, [hl]                                    ; $74c1: $46
    ld h, l                                       ; $74c2: $65
    ld h, c                                       ; $74c3: $61
    ld [hl], d                                    ; $74c4: $72
    jr nz, jr_019_7535                            ; $74c5: $20 $6e

    ld l, a                                       ; $74c7: $6f
    ld [hl], h                                    ; $74c8: $74
    jr nz, jr_019_753f                            ; $74c9: $20 $74

    ld l, b                                       ; $74cb: $68
    ld h, l                                       ; $74cc: $65
    ld bc, $756f                                  ; $74cd: $01 $6f $75
    ld [hl], h                                    ; $74d0: $74
    ld h, e                                       ; $74d1: $63

jr_019_74d2:
    ld l, a                                       ; $74d2: $6f

jr_019_74d3:
    ld l, l                                       ; $74d3: $6d
    ld h, l                                       ; $74d4: $65
    inc l                                         ; $74d5: $2c
    jr nz, jr_019_753a                            ; $74d6: $20 $62

    ld [hl], l                                    ; $74d8: $75

jr_019_74d9:
    ld [hl], h                                    ; $74d9: $74
    jr nz, jr_019_7542                            ; $74da: $20 $66

    ld h, c                                       ; $74dc: $61
    ld h, e                                       ; $74dd: $63
    ld h, l                                       ; $74de: $65
    ld bc, $614d                                  ; $74df: $01 $4d $61
    ld [hl], d                                    ; $74e2: $72
    ld l, c                                       ; $74e3: $69
    ld l, a                                       ; $74e4: $6f
    inc l                                         ; $74e5: $2c

jr_019_74e6:
    jr nz, jr_019_7561                            ; $74e6: $20 $79

    ld l, a                                       ; $74e8: $6f
    ld [hl], l                                    ; $74e9: $75
    jr nz, jr_019_7559                            ; $74ea: $20 $6d

    ld [hl], l                                    ; $74ec: $75
    ld [hl], e                                    ; $74ed: $73
    ld [hl], h                                    ; $74ee: $74
    ld l, $03                                     ; $74ef: $2e $03
    nop                                           ; $74f1: $00
    ld b, a                                       ; $74f2: $47

jr_019_74f3:
    ld l, a                                       ; $74f3: $6f
    ld l, a                                       ; $74f4: $6f
    ld h, h                                       ; $74f5: $64
    jr nz, jr_019_7564                            ; $74f6: $20 $6c

    ld [hl], l                                    ; $74f8: $75
    ld h, e                                       ; $74f9: $63
    ld l, e                                       ; $74fa: $6b
    jr nz, jr_019_7566                            ; $74fb: $20 $69

    ld l, [hl]                                    ; $74fd: $6e
    ld bc, $6550                                  ; $74fe: $01 $50 $65
    ld h, c                                       ; $7501: $61
    ld h, e                                       ; $7502: $63
    ld l, b                                       ; $7503: $68
    daa                                           ; $7504: $27
    ld [hl], e                                    ; $7505: $73
    jr nz, jr_019_755c                            ; $7506: $20 $54

    ld l, a                                       ; $7508: $6f
    ld [hl], l                                    ; $7509: $75
    ld [hl], d                                    ; $750a: $72
    ld l, [hl]                                    ; $750b: $6e
    ld h, c                                       ; $750c: $61
    ld l, l                                       ; $750d: $6d
    ld h, l                                       ; $750e: $65
    ld l, [hl]                                    ; $750f: $6e
    ld [hl], h                                    ; $7510: $74
    inc l                                         ; $7511: $2c
    ld bc, $7247                                  ; $7512: $01 $47 $72
    ld h, c                                       ; $7515: $61
    ld l, [hl]                                    ; $7516: $6e

jr_019_7517:
    ld h, h                                       ; $7517: $64
    jr nz, jr_019_755d                            ; $7518: $20 $43

    ld l, b                                       ; $751a: $68
    ld h, c                                       ; $751b: $61
    ld l, l                                       ; $751c: $6d
    ld [hl], b                                    ; $751d: $70
    ld hl, $0003                                  ; $751e: $21 $03 $00

jr_019_7521:
    ld d, a                                       ; $7521: $57
    ld h, l                                       ; $7522: $65
    daa                                           ; $7523: $27
    ld [hl], d                                    ; $7524: $72
    ld h, l                                       ; $7525: $65
    jr nz, jr_019_758d                            ; $7526: $20 $65

    ld a, b                                       ; $7528: $78
    ld [hl], b                                    ; $7529: $70
    ld h, l                                       ; $752a: $65
    ld h, e                                       ; $752b: $63
    ld [hl], h                                    ; $752c: $74
    ld l, c                                       ; $752d: $69
    ld l, [hl]                                    ; $752e: $6e
    ld h, a                                       ; $752f: $67
    jr nz, jr_019_75ab                            ; $7530: $20 $79

    ld l, a                                       ; $7532: $6f
    ld [hl], l                                    ; $7533: $75
    ld [hl], d                                    ; $7534: $72

jr_019_7535:
    ld bc, $6562                                  ; $7535: $01 $62 $65
    ld [hl], e                                    ; $7538: $73
    ld [hl], h                                    ; $7539: $74

jr_019_753a:
    jr nz, jr_019_75ae                            ; $753a: $20 $72

    ld l, a                                       ; $753c: $6f
    ld [hl], l                                    ; $753d: $75
    ld l, [hl]                                    ; $753e: $6e

jr_019_753f:
    ld h, h                                       ; $753f: $64
    jr nz, jr_019_75bb                            ; $7540: $20 $79

jr_019_7542:
    ld h, l                                       ; $7542: $65
    ld [hl], h                                    ; $7543: $74
    jr nz, jr_019_75a7                            ; $7544: $20 $61

    ld [hl], h                                    ; $7546: $74
    ld bc, $6550                                  ; $7547: $01 $50 $65
    ld h, c                                       ; $754a: $61
    ld h, e                                       ; $754b: $63
    ld l, b                                       ; $754c: $68
    daa                                           ; $754d: $27
    ld [hl], e                                    ; $754e: $73
    jr nz, @+$56                                  ; $754f: $20 $54

    ld l, a                                       ; $7551: $6f
    ld [hl], l                                    ; $7552: $75
    ld [hl], d                                    ; $7553: $72
    ld l, [hl]                                    ; $7554: $6e
    ld h, c                                       ; $7555: $61
    ld l, l                                       ; $7556: $6d
    ld h, l                                       ; $7557: $65
    ld l, [hl]                                    ; $7558: $6e

jr_019_7559:
    ld [hl], h                                    ; $7559: $74
    ld l, $03                                     ; $755a: $2e $03

jr_019_755c:
    nop                                           ; $755c: $00

jr_019_755d:
    ld b, [hl]                                    ; $755d: $46
    ld [hl], l                                    ; $755e: $75
    ld l, h                                       ; $755f: $6c
    ld h, [hl]                                    ; $7560: $66

jr_019_7561:
    ld l, c                                       ; $7561: $69
    ld l, h                                       ; $7562: $6c
    ld l, h                                       ; $7563: $6c

jr_019_7564:
    jr nz, @+$76                                  ; $7564: $20 $74

jr_019_7566:
    ld l, b                                       ; $7566: $68
    ld h, l                                       ; $7567: $65
    jr nz, jr_019_75d1                            ; $7568: $20 $67

    ld l, a                                       ; $756a: $6f
    ld l, h                                       ; $756b: $6c
    ld h, [hl]                                    ; $756c: $66
    dec l                                         ; $756d: $2d
    ld bc, $7265                                  ; $756e: $01 $65 $72
    ld [hl], e                                    ; $7571: $73
    daa                                           ; $7572: $27
    jr nz, jr_019_75d9                            ; $7573: $20 $64

    ld [hl], d                                    ; $7575: $72
    ld h, l                                       ; $7576: $65
    ld h, c                                       ; $7577: $61
    ld l, l                                       ; $7578: $6d
    jr nz, @+$2f                                  ; $7579: $20 $2d

    jr nz, jr_019_75f4                            ; $757b: $20 $77

    ld l, c                                       ; $757d: $69
    ld l, [hl]                                    ; $757e: $6e
    ld bc, $6550                                  ; $757f: $01 $50 $65
    ld h, c                                       ; $7582: $61
    ld h, e                                       ; $7583: $63
    ld l, b                                       ; $7584: $68
    daa                                           ; $7585: $27
    ld [hl], e                                    ; $7586: $73
    jr nz, jr_019_75dd                            ; $7587: $20 $54

    ld l, a                                       ; $7589: $6f
    ld [hl], l                                    ; $758a: $75
    ld [hl], d                                    ; $758b: $72
    ld l, [hl]                                    ; $758c: $6e

jr_019_758d:
    ld h, c                                       ; $758d: $61
    ld l, l                                       ; $758e: $6d
    ld h, l                                       ; $758f: $65
    ld l, [hl]                                    ; $7590: $6e
    ld [hl], h                                    ; $7591: $74
    ld hl, $0003                                  ; $7592: $21 $03 $00
    ld b, e                                       ; $7595: $43
    ld l, a                                       ; $7596: $6f
    ld l, [hl]                                    ; $7597: $6e
    ld h, a                                       ; $7598: $67
    ld [hl], d                                    ; $7599: $72
    ld h, c                                       ; $759a: $61
    ld [hl], h                                    ; $759b: $74
    ld [hl], l                                    ; $759c: $75
    ld l, h                                       ; $759d: $6c
    ld h, c                                       ; $759e: $61
    ld [hl], h                                    ; $759f: $74
    ld l, c                                       ; $75a0: $69
    ld l, a                                       ; $75a1: $6f
    ld l, [hl]                                    ; $75a2: $6e
    ld [hl], e                                    ; $75a3: $73
    ld bc, $6e6f                                  ; $75a4: $01 $6f $6e

jr_019_75a7:
    jr nz, jr_019_760b                            ; $75a7: $20 $62

    ld h, l                                       ; $75a9: $65
    ld h, c                                       ; $75aa: $61

jr_019_75ab:
    ld [hl], h                                    ; $75ab: $74
    ld l, c                                       ; $75ac: $69
    ld l, [hl]                                    ; $75ad: $6e

jr_019_75ae:
    ld h, a                                       ; $75ae: $67
    jr nz, jr_019_75fe                            ; $75af: $20 $4d

    ld h, c                                       ; $75b1: $61
    ld [hl], d                                    ; $75b2: $72
    ld l, c                                       ; $75b3: $69
    ld l, a                                       ; $75b4: $6f
    inc l                                         ; $75b5: $2c
    ld bc, $2107                                  ; $75b6: $01 $07 $21
    ld [bc], a                                    ; $75b9: $02
    ld c, c                                       ; $75ba: $49

jr_019_75bb:
    daa                                           ; $75bb: $27
    halt                                          ; $75bc: $76
    ld h, l                                       ; $75bd: $65
    jr nz, jr_019_7630                            ; $75be: $20 $70

    ld [hl], l                                    ; $75c0: $75
    ld [hl], h                                    ; $75c1: $74
    jr nz, @+$7b                                  ; $75c2: $20 $79

    ld l, a                                       ; $75c4: $6f
    ld [hl], l                                    ; $75c5: $75
    ld [hl], d                                    ; $75c6: $72
    ld bc, $6976                                  ; $75c7: $01 $76 $69
    ld h, e                                       ; $75ca: $63
    ld [hl], h                                    ; $75cb: $74
    ld l, a                                       ; $75cc: $6f
    ld [hl], d                                    ; $75cd: $72
    ld a, c                                       ; $75ce: $79
    jr nz, jr_019_7645                            ; $75cf: $20 $74

jr_019_75d1:
    ld [hl], d                                    ; $75d1: $72
    ld l, a                                       ; $75d2: $6f
    ld [hl], b                                    ; $75d3: $70
    ld l, b                                       ; $75d4: $68
    ld a, c                                       ; $75d5: $79
    jr nz, jr_019_7641                            ; $75d6: $20 $69

    ld l, [hl]                                    ; $75d8: $6e

jr_019_75d9:
    ld bc, $6874                                  ; $75d9: $01 $74 $68
    ld h, l                                       ; $75dc: $65

jr_019_75dd:
    jr nz, jr_019_762c                            ; $75dd: $20 $4d

    ld h, l                                       ; $75df: $65
    ld l, l                                       ; $75e0: $6d
    ld l, a                                       ; $75e1: $6f
    ld [hl], d                                    ; $75e2: $72
    ld l, c                                       ; $75e3: $69
    ld h, c                                       ; $75e4: $61
    ld l, h                                       ; $75e5: $6c
    jr nz, jr_019_763a                            ; $75e6: $20 $52

    ld l, a                                       ; $75e8: $6f
    ld l, a                                       ; $75e9: $6f
    ld l, l                                       ; $75ea: $6d
    ld l, $03                                     ; $75eb: $2e $03
    nop                                           ; $75ed: $00
    rlca                                          ; $75ee: $07
    inc l                                         ; $75ef: $2c
    jr nz, jr_019_7669                            ; $75f0: $20 $77

    ld l, b                                       ; $75f2: $68
    ld h, l                                       ; $75f3: $65

jr_019_75f4:
    ld l, [hl]                                    ; $75f4: $6e
    ld bc, $6874                                  ; $75f5: $01 $74 $68
    ld h, l                                       ; $75f8: $65
    jr nz, @+$69                                  ; $75f9: $20 $67

    ld l, a                                       ; $75fb: $6f
    ld l, h                                       ; $75fc: $6c
    ld h, [hl]                                    ; $75fd: $66

jr_019_75fe:
    ld h, l                                       ; $75fe: $65
    ld [hl], d                                    ; $75ff: $72
    ld [hl], e                                    ; $7600: $73
    jr nz, @+$6a                                  ; $7601: $20 $68

    ld h, l                                       ; $7603: $65
    ld h, c                                       ; $7604: $61
    ld [hl], d                                    ; $7605: $72
    ld bc, $666f                                  ; $7606: $01 $6f $66
    jr nz, jr_019_7684                            ; $7609: $20 $79

jr_019_760b:
    ld l, a                                       ; $760b: $6f
    ld [hl], l                                    ; $760c: $75
    ld [hl], d                                    ; $760d: $72
    jr nz, jr_019_7686                            ; $760e: $20 $76

    ld l, c                                       ; $7610: $69
    ld h, e                                       ; $7611: $63
    ld [hl], h                                    ; $7612: $74
    ld l, a                                       ; $7613: $6f
    ld [hl], d                                    ; $7614: $72
    ld a, c                                       ; $7615: $79
    inc l                                         ; $7616: $2c
    ld [bc], a                                    ; $7617: $02
    ld a, c                                       ; $7618: $79
    ld l, a                                       ; $7619: $6f
    ld [hl], l                                    ; $761a: $75
    daa                                           ; $761b: $27
    ld l, h                                       ; $761c: $6c
    ld l, h                                       ; $761d: $6c
    jr nz, jr_019_7682                            ; $761e: $20 $62

    ld h, l                                       ; $7620: $65
    jr nz, jr_019_7684                            ; $7621: $20 $61

    jr nz, jr_019_768d                            ; $7623: $20 $68

    ld h, l                                       ; $7625: $65
    ld [hl], d                                    ; $7626: $72
    ld l, a                                       ; $7627: $6f
    ld hl, $5401                                  ; $7628: $21 $01 $54
    ld l, b                                       ; $762b: $68

jr_019_762c:
    ld h, c                                       ; $762c: $61
    ld [hl], h                                    ; $762d: $74
    jr nz, jr_019_7694                            ; $762e: $20 $64

jr_019_7630:
    ld h, c                                       ; $7630: $61
    ld a, c                                       ; $7631: $79
    jr nz, jr_019_76ab                            ; $7632: $20 $77

    ld l, c                                       ; $7634: $69
    ld l, h                                       ; $7635: $6c
    ld l, h                                       ; $7636: $6c
    ld bc, $6f63                                  ; $7637: $01 $63 $6f

jr_019_763a:
    ld l, l                                       ; $763a: $6d
    ld h, l                                       ; $763b: $65
    jr nz, @+$78                                  ; $763c: $20 $76

    ld h, l                                       ; $763e: $65
    ld [hl], d                                    ; $763f: $72
    ld a, c                                       ; $7640: $79

jr_019_7641:
    jr nz, jr_019_76b6                            ; $7641: $20 $73

    ld l, a                                       ; $7643: $6f
    ld l, a                                       ; $7644: $6f

jr_019_7645:
    ld l, [hl]                                    ; $7645: $6e
    ld l, $03                                     ; $7646: $2e $03
    nop                                           ; $7648: $00
    ld b, l                                       ; $7649: $45
    halt                                          ; $764a: $76
    ld h, l                                       ; $764b: $65
    ld l, [hl]                                    ; $764c: $6e
    jr nz, jr_019_76b0                            ; $764d: $20 $61

    jr nz, @+$72                                  ; $764f: $20 $70

    ld [hl], d                                    ; $7651: $72
    ld l, a                                       ; $7652: $6f
    jr nz, @+$6e                                  ; $7653: $20 $6c

    ld l, c                                       ; $7655: $69
    ld l, e                                       ; $7656: $6b
    ld h, l                                       ; $7657: $65
    jr nz, jr_019_76c7                            ; $7658: $20 $6d

    ld h, l                                       ; $765a: $65
    ld bc, $6163                                  ; $765b: $01 $63 $61
    ld l, [hl]                                    ; $765e: $6e
    daa                                           ; $765f: $27
    ld [hl], h                                    ; $7660: $74
    jr nz, @+$64                                  ; $7661: $20 $62

    ld h, l                                       ; $7663: $65
    ld h, c                                       ; $7664: $61
    ld [hl], h                                    ; $7665: $74
    jr nz, jr_019_76dc                            ; $7666: $20 $74

    ld l, b                                       ; $7668: $68

jr_019_7669:
    ld h, l                                       ; $7669: $65
    jr nz, jr_019_76db                            ; $766a: $20 $6f

    ld l, [hl]                                    ; $766c: $6e
    ld h, l                                       ; $766d: $65
    ld bc, $6877                                  ; $766e: $01 $77 $68
    ld l, a                                       ; $7671: $6f
    jr nz, jr_019_76d6                            ; $7672: $20 $62

    ld h, l                                       ; $7674: $65
    ld h, c                                       ; $7675: $61
    ld [hl], h                                    ; $7676: $74
    jr nz, jr_019_76c6                            ; $7677: $20 $4d

    ld h, c                                       ; $7679: $61
    ld [hl], d                                    ; $767a: $72
    ld l, c                                       ; $767b: $69
    ld l, a                                       ; $767c: $6f
    ld l, $03                                     ; $767d: $2e $03
    nop                                           ; $767f: $00
    ld d, b                                       ; $7680: $50
    ld h, l                                       ; $7681: $65

jr_019_7682:
    ld [hl], d                                    ; $7682: $72
    ld l, b                                       ; $7683: $68

jr_019_7684:
    ld h, c                                       ; $7684: $61
    ld [hl], b                                    ; $7685: $70

jr_019_7686:
    ld [hl], e                                    ; $7686: $73
    jr nz, jr_019_7702                            ; $7687: $20 $79

    ld l, a                                       ; $7689: $6f
    ld [hl], l                                    ; $768a: $75
    daa                                           ; $768b: $27
    ld l, h                                       ; $768c: $6c

jr_019_768d:
    ld l, h                                       ; $768d: $6c
    ld bc, $6562                                  ; $768e: $01 $62 $65
    ld h, e                                       ; $7691: $63
    ld l, a                                       ; $7692: $6f
    ld l, l                                       ; $7693: $6d

jr_019_7694:
    ld h, l                                       ; $7694: $65
    jr nz, jr_019_76f8                            ; $7695: $20 $61

    ld l, [hl]                                    ; $7697: $6e
    jr nz, jr_019_7703                            ; $7698: $20 $69

    ld h, h                                       ; $769a: $64
    ld l, a                                       ; $769b: $6f
    ld l, h                                       ; $769c: $6c
    ld bc, $6f66                                  ; $769d: $01 $66 $6f
    ld [hl], d                                    ; $76a0: $72
    jr nz, @+$63                                  ; $76a1: $20 $61

    ld l, h                                       ; $76a3: $6c
    ld l, h                                       ; $76a4: $6c
    jr nz, jr_019_770e                            ; $76a5: $20 $67

    ld l, a                                       ; $76a7: $6f
    ld l, h                                       ; $76a8: $6c
    ld h, [hl]                                    ; $76a9: $66
    ld h, l                                       ; $76aa: $65

jr_019_76ab:
    ld [hl], d                                    ; $76ab: $72
    ld [hl], e                                    ; $76ac: $73
    ld l, $03                                     ; $76ad: $2e $03
    nop                                           ; $76af: $00

jr_019_76b0:
    ld d, e                                       ; $76b0: $53
    ld l, a                                       ; $76b1: $6f
    inc l                                         ; $76b2: $2c
    jr nz, jr_019_772e                            ; $76b3: $20 $79

    ld l, a                                       ; $76b5: $6f

jr_019_76b6:
    ld [hl], l                                    ; $76b6: $75
    jr nz, @+$63                                  ; $76b7: $20 $61

    ld l, h                                       ; $76b9: $6c
    ld [hl], d                                    ; $76ba: $72
    ld h, l                                       ; $76bb: $65
    ld h, c                                       ; $76bc: $61
    ld h, h                                       ; $76bd: $64
    ld a, c                                       ; $76be: $79
    ld bc, $6562                                  ; $76bf: $01 $62 $65
    ld h, c                                       ; $76c2: $61
    ld [hl], h                                    ; $76c3: $74
    jr nz, @+$4f                                  ; $76c4: $20 $4d

jr_019_76c6:
    ld h, c                                       ; $76c6: $61

jr_019_76c7:
    ld [hl], d                                    ; $76c7: $72
    ld l, c                                       ; $76c8: $69
    ld l, a                                       ; $76c9: $6f
    ld hl, $0003                                  ; $76ca: $21 $03 $00
    ld c, a                                       ; $76cd: $4f
    ld [hl], l                                    ; $76ce: $75
    ld [hl], d                                    ; $76cf: $72
    jr nz, jr_019_7739                            ; $76d0: $20 $67

    ld [hl], d                                    ; $76d2: $72
    ld h, l                                       ; $76d3: $65
    ld h, c                                       ; $76d4: $61
    ld [hl], h                                    ; $76d5: $74

jr_019_76d6:
    ld h, l                                       ; $76d6: $65
    ld [hl], e                                    ; $76d7: $73
    ld [hl], h                                    ; $76d8: $74
    jr nz, jr_019_7752                            ; $76d9: $20 $77

jr_019_76db:
    ld l, c                                       ; $76db: $69

jr_019_76dc:
    ld [hl], e                                    ; $76dc: $73
    ld l, b                                       ; $76dd: $68
    ld bc, $7369                                  ; $76de: $01 $69 $73
    jr nz, jr_019_7751                            ; $76e1: $20 $6e

    ld l, a                                       ; $76e3: $6f
    ld [hl], a                                    ; $76e4: $77
    jr nz, @+$68                                  ; $76e5: $20 $66

    ld [hl], l                                    ; $76e7: $75
    ld l, h                                       ; $76e8: $6c
    ld h, [hl]                                    ; $76e9: $66
    ld l, c                                       ; $76ea: $69
    ld l, h                                       ; $76eb: $6c
    ld l, h                                       ; $76ec: $6c
    ld h, l                                       ; $76ed: $65
    ld h, h                                       ; $76ee: $64
    ld hl, $0003                                  ; $76ef: $21 $03 $00
    ld e, c                                       ; $76f2: $59
    ld l, a                                       ; $76f3: $6f
    ld [hl], l                                    ; $76f4: $75
    jr nz, jr_019_775f                            ; $76f5: $20 $68

    ld h, c                                       ; $76f7: $61

jr_019_76f8:
    halt                                          ; $76f8: $76
    ld h, l                                       ; $76f9: $65
    jr nz, jr_019_775d                            ; $76fa: $20 $61

    ld h, e                                       ; $76fc: $63
    ld l, b                                       ; $76fd: $68
    ld l, c                                       ; $76fe: $69
    ld h, l                                       ; $76ff: $65
    halt                                          ; $7700: $76
    ld h, l                                       ; $7701: $65

jr_019_7702:
    ld h, h                                       ; $7702: $64

jr_019_7703:
    ld bc, $7665                                  ; $7703: $01 $65 $76
    ld h, l                                       ; $7706: $65
    ld [hl], d                                    ; $7707: $72
    ld a, c                                       ; $7708: $79
    jr nz, jr_019_7772                            ; $7709: $20 $67

    ld l, a                                       ; $770b: $6f
    ld l, h                                       ; $770c: $6c
    ld h, [hl]                                    ; $770d: $66

jr_019_770e:
    ld h, l                                       ; $770e: $65
    ld [hl], d                                    ; $770f: $72
    daa                                           ; $7710: $27
    ld [hl], e                                    ; $7711: $73
    jr nz, @+$66                                  ; $7712: $20 $64

    ld [hl], d                                    ; $7714: $72
    ld h, l                                       ; $7715: $65
    ld h, c                                       ; $7716: $61
    ld l, l                                       ; $7717: $6d
    ld hl, $0003                                  ; $7718: $21 $03 $00
    ld c, a                                       ; $771b: $4f
    ld [hl], l                                    ; $771c: $75
    ld [hl], d                                    ; $771d: $72
    jr nz, jr_019_7790                            ; $771e: $20 $70

    ld [hl], d                                    ; $7720: $72
    ld l, a                                       ; $7721: $6f
    jr nz, jr_019_7788                            ; $7722: $20 $64

    ld l, a                                       ; $7724: $6f
    ld h, l                                       ; $7725: $65
    ld [hl], e                                    ; $7726: $73
    ld l, [hl]                                    ; $7727: $6e
    daa                                           ; $7728: $27
    ld [hl], h                                    ; $7729: $74
    ld bc, $6f6c                                  ; $772a: $01 $6c $6f
    ld l, a                                       ; $772d: $6f

jr_019_772e:
    ld l, e                                       ; $772e: $6b
    jr nz, jr_019_77a5                            ; $772f: $20 $74

    ld l, a                                       ; $7731: $6f
    ld l, a                                       ; $7732: $6f
    jr nz, @+$6a                                  ; $7733: $20 $68

    ld h, c                                       ; $7735: $61
    ld [hl], b                                    ; $7736: $70
    ld [hl], b                                    ; $7737: $70
    ld a, c                                       ; $7738: $79

jr_019_7739:
    ld l, $03                                     ; $7739: $2e $03
    nop                                           ; $773b: $00
    ld c, [hl]                                    ; $773c: $4e
    ld l, a                                       ; $773d: $6f
    inc l                                         ; $773e: $2c
    jr nz, jr_019_778a                            ; $773f: $20 $49

    jr nz, jr_019_77b7                            ; $7741: $20 $74

    ld l, b                                       ; $7743: $68
    ld l, c                                       ; $7744: $69
    ld l, [hl]                                    ; $7745: $6e
    ld l, e                                       ; $7746: $6b
    jr nz, @+$6b                                  ; $7747: $20 $69

    ld [hl], h                                    ; $7749: $74
    daa                                           ; $774a: $27
    ld [hl], e                                    ; $774b: $73
    ld bc, $6d61                                  ; $774c: $01 $61 $6d
    ld h, c                                       ; $774f: $61
    ld a, d                                       ; $7750: $7a

jr_019_7751:
    ld l, c                                       ; $7751: $69

jr_019_7752:
    ld l, [hl]                                    ; $7752: $6e
    ld h, a                                       ; $7753: $67
    jr nz, jr_019_775d                            ; $7754: $20 $07

    ld bc, $6562                                  ; $7756: $01 $62 $65
    ld h, c                                       ; $7759: $61
    ld [hl], h                                    ; $775a: $74
    jr nz, jr_019_77aa                            ; $775b: $20 $4d

jr_019_775d:
    ld h, c                                       ; $775d: $61
    ld [hl], d                                    ; $775e: $72

jr_019_775f:
    ld l, c                                       ; $775f: $69
    ld l, a                                       ; $7760: $6f
    ld l, $03                                     ; $7761: $2e $03
    nop                                           ; $7763: $00
    ld d, h                                       ; $7764: $54
    ld l, b                                       ; $7765: $68
    ld h, l                                       ; $7766: $65
    ld l, [hl]                                    ; $7767: $6e
    jr nz, jr_019_77e1                            ; $7768: $20 $77

    ld l, b                                       ; $776a: $68
    ld a, c                                       ; $776b: $79
    jr nz, jr_019_77cf                            ; $776c: $20 $61

    ld [hl], d                                    ; $776e: $72
    ld h, l                                       ; $776f: $65
    jr nz, jr_019_77eb                            ; $7770: $20 $79

jr_019_7772:
    ld l, a                                       ; $7772: $6f
    ld [hl], l                                    ; $7773: $75
    ld bc, $6f73                                  ; $7774: $01 $73 $6f
    jr nz, @+$73                                  ; $7777: $20 $71

    ld [hl], l                                    ; $7779: $75
    ld l, c                                       ; $777a: $69
    ld h, l                                       ; $777b: $65
    ld [hl], h                                    ; $777c: $74
    ccf                                           ; $777d: $3f
    inc bc                                        ; $777e: $03
    nop                                           ; $777f: $00
    ld d, a                                       ; $7780: $57
    ld h, c                                       ; $7781: $61
    ld [hl], e                                    ; $7782: $73
    ld l, [hl]                                    ; $7783: $6e
    daa                                           ; $7784: $27
    ld [hl], h                                    ; $7785: $74
    jr nz, jr_019_77ec                            ; $7786: $20 $64

jr_019_7788:
    ld h, l                                       ; $7788: $65
    ld h, [hl]                                    ; $7789: $66

jr_019_778a:
    ld h, l                                       ; $778a: $65
    ld h, c                                       ; $778b: $61
    ld [hl], h                                    ; $778c: $74
    ld l, c                                       ; $778d: $69
    ld l, [hl]                                    ; $778e: $6e
    ld h, a                                       ; $778f: $67

jr_019_7790:
    ld bc, $614d                                  ; $7790: $01 $4d $61
    ld [hl], d                                    ; $7793: $72
    ld l, c                                       ; $7794: $69
    ld l, a                                       ; $7795: $6f
    jr nz, jr_019_77fd                            ; $7796: $20 $65

    halt                                          ; $7798: $76
    ld h, l                                       ; $7799: $65
    ld [hl], d                                    ; $779a: $72
    ld a, c                                       ; $779b: $79
    ld bc, $6f67                                  ; $779c: $01 $67 $6f
    ld l, h                                       ; $779f: $6c
    ld h, [hl]                                    ; $77a0: $66
    ld h, l                                       ; $77a1: $65
    ld [hl], d                                    ; $77a2: $72
    daa                                           ; $77a3: $27
    ld [hl], e                                    ; $77a4: $73

jr_019_77a5:
    jr nz, jr_019_780b                            ; $77a5: $20 $64

    ld [hl], d                                    ; $77a7: $72
    ld h, l                                       ; $77a8: $65
    ld h, c                                       ; $77a9: $61

jr_019_77aa:
    ld l, l                                       ; $77aa: $6d
    ccf                                           ; $77ab: $3f
    inc bc                                        ; $77ac: $03
    nop                                           ; $77ad: $00
    ld b, d                                       ; $77ae: $42
    ld [hl], l                                    ; $77af: $75
    ld [hl], h                                    ; $77b0: $74
    jr nz, jr_019_7821                            ; $77b1: $20 $6e

    ld l, a                                       ; $77b3: $6f
    ld [hl], a                                    ; $77b4: $77
    jr nz, jr_019_782b                            ; $77b5: $20 $74

jr_019_77b7:
    ld l, b                                       ; $77b7: $68
    ld h, c                                       ; $77b8: $61
    ld [hl], h                                    ; $77b9: $74
    ld bc, $2707                                  ; $77ba: $01 $07 $27
    ld [hl], e                                    ; $77bd: $73
    ld bc, $6f64                                  ; $77be: $01 $64 $6f
    ld l, [hl]                                    ; $77c1: $6e
    ld h, l                                       ; $77c2: $65
    jr nz, jr_019_782e                            ; $77c3: $20 $69

    ld [hl], h                                    ; $77c5: $74
    inc l                                         ; $77c6: $2c
    ld [bc], a                                    ; $77c7: $02
    ld [hl], a                                    ; $77c8: $77
    ld l, b                                       ; $77c9: $68
    ld h, c                                       ; $77ca: $61
    ld [hl], h                                    ; $77cb: $74
    jr nz, jr_019_7836                            ; $77cc: $20 $68

    ld h, c                                       ; $77ce: $61

jr_019_77cf:
    ld [hl], b                                    ; $77cf: $70
    ld [hl], b                                    ; $77d0: $70
    ld h, l                                       ; $77d1: $65
    ld l, [hl]                                    ; $77d2: $6e
    ld [hl], e                                    ; $77d3: $73
    ld bc, $6f74                                  ; $77d4: $01 $74 $6f
    jr nz, jr_019_784d                            ; $77d7: $20 $74

    ld l, b                                       ; $77d9: $68
    ld h, c                                       ; $77da: $61
    ld [hl], h                                    ; $77db: $74
    jr nz, jr_019_7842                            ; $77dc: $20 $64

    ld [hl], d                                    ; $77de: $72
    ld h, l                                       ; $77df: $65
    ld h, c                                       ; $77e0: $61

jr_019_77e1:
    ld l, l                                       ; $77e1: $6d
    ccf                                           ; $77e2: $3f
    inc bc                                        ; $77e3: $03
    nop                                           ; $77e4: $00
    ld b, a                                       ; $77e5: $47
    ld l, a                                       ; $77e6: $6f
    ld l, h                                       ; $77e7: $6c
    ld h, [hl]                                    ; $77e8: $66
    jr nz, jr_019_7862                            ; $77e9: $20 $77

jr_019_77eb:
    ld l, c                                       ; $77eb: $69

jr_019_77ec:
    ld [hl], h                                    ; $77ec: $74
    ld l, b                                       ; $77ed: $68
    jr nz, jr_019_785e                            ; $77ee: $20 $6e

    ld l, a                                       ; $77f0: $6f
    jr nz, @+$66                                  ; $77f1: $20 $64

    ld [hl], d                                    ; $77f3: $72
    ld h, l                                       ; $77f4: $65
    ld h, c                                       ; $77f5: $61
    ld l, l                                       ; $77f6: $6d
    ld bc, $7369                                  ; $77f7: $01 $69 $73
    jr nz, jr_019_786a                            ; $77fa: $20 $6e

    ld l, a                                       ; $77fc: $6f

jr_019_77fd:
    jr nz, jr_019_7866                            ; $77fd: $20 $67

    ld l, a                                       ; $77ff: $6f
    ld l, h                                       ; $7800: $6c
    ld h, [hl]                                    ; $7801: $66
    jr nz, jr_019_7865                            ; $7802: $20 $61

    ld [hl], h                                    ; $7804: $74
    jr nz, @+$63                                  ; $7805: $20 $61

    ld l, h                                       ; $7807: $6c
    ld l, h                                       ; $7808: $6c
    ld l, $03                                     ; $7809: $2e $03

jr_019_780b:
    nop                                           ; $780b: $00
    ld d, e                                       ; $780c: $53
    ld [hl], l                                    ; $780d: $75
    ld [hl], d                                    ; $780e: $72
    ld h, l                                       ; $780f: $65
    ld l, h                                       ; $7810: $6c
    ld a, c                                       ; $7811: $79
    jr nz, jr_019_787b                            ; $7812: $20 $67

    ld l, a                                       ; $7814: $6f
    ld l, h                                       ; $7815: $6c
    ld h, [hl]                                    ; $7816: $66
    jr nz, jr_019_7890                            ; $7817: $20 $77

    ld l, c                                       ; $7819: $69
    ld [hl], h                                    ; $781a: $74
    ld l, b                                       ; $781b: $68
    ld bc, $6f6e                                  ; $781c: $01 $6e $6f
    jr nz, jr_019_7885                            ; $781f: $20 $64

jr_019_7821:
    ld [hl], d                                    ; $7821: $72
    ld h, l                                       ; $7822: $65
    ld h, c                                       ; $7823: $61
    ld l, l                                       ; $7824: $6d
    jr nz, jr_019_7893                            ; $7825: $20 $6c

    ld l, a                                       ; $7827: $6f
    ld [hl], e                                    ; $7828: $73
    ld h, l                                       ; $7829: $65
    ld [hl], e                                    ; $782a: $73

jr_019_782b:
    ld bc, $7469                                  ; $782b: $01 $69 $74

jr_019_782e:
    ld [hl], e                                    ; $782e: $73
    jr nz, @+$63                                  ; $782f: $20 $61

    ld [hl], b                                    ; $7831: $70
    ld [hl], b                                    ; $7832: $70
    ld h, l                                       ; $7833: $65
    ld h, c                                       ; $7834: $61
    ld l, h                                       ; $7835: $6c

jr_019_7836:
    ld l, $03                                     ; $7836: $2e $03
    nop                                           ; $7838: $00
    ld b, d                                       ; $7839: $42
    ld [hl], l                                    ; $783a: $75
    ld [hl], h                                    ; $783b: $74
    jr nz, jr_019_78b5                            ; $783c: $20 $77

    ld h, l                                       ; $783e: $65
    jr nz, jr_019_78b4                            ; $783f: $20 $73

    ld l, b                                       ; $7841: $68

jr_019_7842:
    ld l, a                                       ; $7842: $6f
    ld [hl], l                                    ; $7843: $75
    ld l, h                                       ; $7844: $6c
    ld h, h                                       ; $7845: $64
    jr nz, jr_019_78aa                            ; $7846: $20 $62

    ld h, l                                       ; $7848: $65
    ld bc, $6168                                  ; $7849: $01 $68 $61
    ld [hl], b                                    ; $784c: $70

jr_019_784d:
    ld [hl], b                                    ; $784d: $70
    ld a, c                                       ; $784e: $79
    jr nz, jr_019_7858                            ; $784f: $20 $07

    ld bc, $6562                                  ; $7851: $01 $62 $65
    ld h, c                                       ; $7854: $61
    ld [hl], h                                    ; $7855: $74
    jr nz, @+$4f                                  ; $7856: $20 $4d

jr_019_7858:
    ld h, c                                       ; $7858: $61
    ld [hl], d                                    ; $7859: $72
    ld l, c                                       ; $785a: $69
    ld l, a                                       ; $785b: $6f
    ld l, $2e                                     ; $785c: $2e $2e

jr_019_785e:
    ld l, $03                                     ; $785e: $2e $03
    nop                                           ; $7860: $00
    ld d, e                                       ; $7861: $53

jr_019_7862:
    ld l, a                                       ; $7862: $6f
    jr nz, jr_019_78de                            ; $7863: $20 $79

jr_019_7865:
    ld l, a                                       ; $7865: $6f

jr_019_7866:
    ld [hl], l                                    ; $7866: $75
    jr nz, jr_019_78d6                            ; $7867: $20 $6d

    ld h, l                                       ; $7869: $65

jr_019_786a:
    ld h, c                                       ; $786a: $61
    ld l, [hl]                                    ; $786b: $6e
    jr nz, jr_019_78e2                            ; $786c: $20 $74

    ld l, b                                       ; $786e: $68
    ld h, c                                       ; $786f: $61
    ld [hl], h                                    ; $7870: $74
    ld bc, $2007                                  ; $7871: $01 $07 $20
    ld l, b                                       ; $7874: $68
    ld h, c                                       ; $7875: $61
    ld [hl], e                                    ; $7876: $73
    ld l, $2e                                     ; $7877: $2e $2e
    ld l, $03                                     ; $7879: $2e $03

jr_019_787b:
    nop                                           ; $787b: $00
    ld c, c                                       ; $787c: $49
    jr nz, jr_019_78e2                            ; $787d: $20 $63

    ld h, c                                       ; $787f: $61
    ld l, [hl]                                    ; $7880: $6e
    jr nz, @+$77                                  ; $7881: $20 $75

    ld l, [hl]                                    ; $7883: $6e
    ld h, h                                       ; $7884: $64

jr_019_7885:
    ld h, l                                       ; $7885: $65
    ld [hl], d                                    ; $7886: $72
    ld [hl], e                                    ; $7887: $73
    ld [hl], h                                    ; $7888: $74
    ld h, c                                       ; $7889: $61
    ld l, [hl]                                    ; $788a: $6e
    ld h, h                                       ; $788b: $64
    ld bc, $6f62                                  ; $788c: $01 $62 $6f
    ld [hl], h                                    ; $788f: $74

jr_019_7890:
    ld l, b                                       ; $7890: $68
    jr nz, @+$75                                  ; $7891: $20 $73

jr_019_7893:
    ld l, c                                       ; $7893: $69
    ld h, h                                       ; $7894: $64
    ld h, l                                       ; $7895: $65
    ld [hl], e                                    ; $7896: $73
    ld l, $03                                     ; $7897: $2e $03
    nop                                           ; $7899: $00
    ld d, h                                       ; $789a: $54
    ld l, a                                       ; $789b: $6f
    jr nz, @+$74                                  ; $789c: $20 $72

    ld h, l                                       ; $789e: $65
    ld h, c                                       ; $789f: $61
    ld l, h                                       ; $78a0: $6c
    ld l, c                                       ; $78a1: $69
    ld a, d                                       ; $78a2: $7a
    ld h, l                                       ; $78a3: $65
    jr nz, jr_019_7907                            ; $78a4: $20 $61

    jr nz, jr_019_790c                            ; $78a6: $20 $64

    ld [hl], d                                    ; $78a8: $72
    ld h, l                                       ; $78a9: $65

jr_019_78aa:
    ld h, c                                       ; $78aa: $61
    ld l, l                                       ; $78ab: $6d
    ld bc, $7369                                  ; $78ac: $01 $69 $73
    jr nz, @+$63                                  ; $78af: $20 $61

    jr nz, jr_019_792a                            ; $78b1: $20 $77

    ld l, a                                       ; $78b3: $6f

jr_019_78b4:
    ld l, [hl]                                    ; $78b4: $6e

jr_019_78b5:
    ld h, h                                       ; $78b5: $64
    ld h, l                                       ; $78b6: $65
    ld [hl], d                                    ; $78b7: $72
    ld h, [hl]                                    ; $78b8: $66
    ld [hl], l                                    ; $78b9: $75
    ld l, h                                       ; $78ba: $6c
    ld bc, $6874                                  ; $78bb: $01 $74 $68
    ld l, c                                       ; $78be: $69
    ld l, [hl]                                    ; $78bf: $6e
    ld h, a                                       ; $78c0: $67
    ld l, $2e                                     ; $78c1: $2e $2e
    ld l, $02                                     ; $78c3: $2e $02
    ld h, d                                       ; $78c5: $62
    ld [hl], l                                    ; $78c6: $75
    ld [hl], h                                    ; $78c7: $74
    jr nz, jr_019_793e                            ; $78c8: $20 $74

    ld l, a                                       ; $78ca: $6f
    jr nz, jr_019_7939                            ; $78cb: $20 $6c

    ld l, a                                       ; $78cd: $6f
    ld [hl], e                                    ; $78ce: $73
    ld h, l                                       ; $78cf: $65
    jr nz, @+$63                                  ; $78d0: $20 $61

    ld bc, $7264                                  ; $78d2: $01 $64 $72
    ld h, l                                       ; $78d5: $65

jr_019_78d6:
    ld h, c                                       ; $78d6: $61
    ld l, l                                       ; $78d7: $6d
    jr nz, jr_019_793b                            ; $78d8: $20 $61

    ld l, h                                       ; $78da: $6c
    ld [hl], h                                    ; $78db: $74
    ld l, a                                       ; $78dc: $6f
    ld h, a                                       ; $78dd: $67

jr_019_78de:
    ld h, l                                       ; $78de: $65
    ld [hl], h                                    ; $78df: $74
    ld l, b                                       ; $78e0: $68
    ld h, l                                       ; $78e1: $65

jr_019_78e2:
    ld [hl], d                                    ; $78e2: $72
    ld bc, $7369                                  ; $78e3: $01 $69 $73
    jr nz, jr_019_7949                            ; $78e6: $20 $61

    jr nz, @+$76                                  ; $78e8: $20 $74

    ld [hl], d                                    ; $78ea: $72
    ld h, c                                       ; $78eb: $61
    ld h, a                                       ; $78ec: $67
    ld h, l                                       ; $78ed: $65
    ld h, h                                       ; $78ee: $64
    ld a, c                                       ; $78ef: $79
    ld l, $03                                     ; $78f0: $2e $03
    nop                                           ; $78f2: $00
    ld d, a                                       ; $78f3: $57
    ld l, b                                       ; $78f4: $68
    ld h, c                                       ; $78f5: $61
    ld [hl], h                                    ; $78f6: $74
    jr nz, jr_019_7962                            ; $78f7: $20 $69

    ld h, [hl]                                    ; $78f9: $66
    ld l, $2e                                     ; $78fa: $2e $2e
    ld l, $01                                     ; $78fc: $2e $01
    ld [hl], a                                    ; $78fe: $77
    ld l, b                                       ; $78ff: $68
    ld h, c                                       ; $7900: $61
    ld [hl], h                                    ; $7901: $74
    jr nz, jr_019_796d                            ; $7902: $20 $69

    ld h, [hl]                                    ; $7904: $66
    jr nz, jr_019_797e                            ; $7905: $20 $77

jr_019_7907:
    ld h, l                                       ; $7907: $65
    jr nz, jr_019_796d                            ; $7908: $20 $63

    ld l, a                                       ; $790a: $6f
    halt                                          ; $790b: $76

jr_019_790c:
    ld h, l                                       ; $790c: $65
    ld [hl], d                                    ; $790d: $72
    ld bc, $7469                                  ; $790e: $01 $69 $74
    jr nz, @+$77                                  ; $7911: $20 $75

    ld [hl], b                                    ; $7913: $70
    jr nz, jr_019_797c                            ; $7914: $20 $66

    ld l, a                                       ; $7916: $6f
    ld [hl], d                                    ; $7917: $72
    jr nz, jr_019_797b                            ; $7918: $20 $61

    jr nz, jr_019_7993                            ; $791a: $20 $77

    ld l, b                                       ; $791c: $68
    ld l, c                                       ; $791d: $69
    ld l, h                                       ; $791e: $6c
    ld h, l                                       ; $791f: $65
    ccf                                           ; $7920: $3f
    inc bc                                        ; $7921: $03
    nop                                           ; $7922: $00
    ld c, c                                       ; $7923: $49
    ld [hl], e                                    ; $7924: $73
    ld l, [hl]                                    ; $7925: $6e
    daa                                           ; $7926: $27
    ld [hl], h                                    ; $7927: $74
    jr nz, jr_019_7993                            ; $7928: $20 $69

jr_019_792a:
    ld [hl], h                                    ; $792a: $74
    jr nz, jr_019_798f                            ; $792b: $20 $62

    ld h, l                                       ; $792d: $65
    ld [hl], h                                    ; $792e: $74
    ld [hl], h                                    ; $792f: $74
    ld h, l                                       ; $7930: $65
    ld [hl], d                                    ; $7931: $72
    ld bc, $6f74                                  ; $7932: $01 $74 $6f
    jr nz, jr_019_79a3                            ; $7935: $20 $6c

    ld h, l                                       ; $7937: $65
    ld [hl], h                                    ; $7938: $74

jr_019_7939:
    jr nz, jr_019_79a4                            ; $7939: $20 $69

jr_019_793b:
    ld [hl], h                                    ; $793b: $74
    jr nz, jr_019_79aa                            ; $793c: $20 $6c

jr_019_793e:
    ld h, l                                       ; $793e: $65
    ld h, c                                       ; $793f: $61
    ld l, e                                       ; $7940: $6b
    ld bc, $756f                                  ; $7941: $01 $6f $75
    ld [hl], h                                    ; $7944: $74
    jr nz, jr_019_79ba                            ; $7945: $20 $73

    ld l, h                                       ; $7947: $6c
    ld l, a                                       ; $7948: $6f

jr_019_7949:
    ld [hl], a                                    ; $7949: $77
    ld l, h                                       ; $794a: $6c
    ld a, c                                       ; $794b: $79
    ccf                                           ; $794c: $3f
    inc bc                                        ; $794d: $03
    nop                                           ; $794e: $00
    ld d, b                                       ; $794f: $50
    ld h, l                                       ; $7950: $65
    ld [hl], d                                    ; $7951: $72
    ld l, b                                       ; $7952: $68
    ld h, c                                       ; $7953: $61
    ld [hl], b                                    ; $7954: $70
    ld [hl], e                                    ; $7955: $73
    ld l, $20                                     ; $7956: $2e $20
    ld c, c                                       ; $7958: $49
    ld [hl], h                                    ; $7959: $74
    daa                                           ; $795a: $27
    ld h, h                                       ; $795b: $64
    ld bc, $6572                                  ; $795c: $01 $72 $65
    ld h, h                                       ; $795f: $64
    ld [hl], l                                    ; $7960: $75
    ld h, e                                       ; $7961: $63

jr_019_7962:
    ld h, l                                       ; $7962: $65
    jr nz, jr_019_79d9                            ; $7963: $20 $74

    ld l, b                                       ; $7965: $68
    ld h, l                                       ; $7966: $65
    jr nz, jr_019_79d0                            ; $7967: $20 $67

    ld l, a                                       ; $7969: $6f
    ld l, h                                       ; $796a: $6c
    ld h, [hl]                                    ; $796b: $66
    ld h, l                                       ; $796c: $65

jr_019_796d:
    ld [hl], d                                    ; $796d: $72
    ld [hl], e                                    ; $796e: $73
    daa                                           ; $796f: $27
    ld bc, $6873                                  ; $7970: $01 $73 $68
    ld l, a                                       ; $7973: $6f
    ld h, e                                       ; $7974: $63
    ld l, e                                       ; $7975: $6b
    ld l, $03                                     ; $7976: $2e $03
    nop                                           ; $7978: $00
    ld b, c                                       ; $7979: $41
    ld l, [hl]                                    ; $797a: $6e

jr_019_797b:
    ld h, h                                       ; $797b: $64

jr_019_797c:
    jr nz, jr_019_79f5                            ; $797c: $20 $77

jr_019_797e:
    ld h, l                                       ; $797e: $65
    daa                                           ; $797f: $27
    ld l, h                                       ; $7980: $6c
    ld l, h                                       ; $7981: $6c
    jr nz, jr_019_79f7                            ; $7982: $20 $73

    ld h, c                                       ; $7984: $61
    halt                                          ; $7985: $76
    ld h, l                                       ; $7986: $65
    ld bc, $2707                                  ; $7987: $01 $07 $27
    ld [hl], e                                    ; $798a: $73
    ld bc, $6572                                  ; $798b: $01 $72 $65
    ld [hl], b                                    ; $798e: $70

jr_019_798f:
    ld [hl], l                                    ; $798f: $75
    ld [hl], h                                    ; $7990: $74
    ld h, c                                       ; $7991: $61
    ld [hl], h                                    ; $7992: $74

jr_019_7993:
    ld l, c                                       ; $7993: $69
    ld l, a                                       ; $7994: $6f
    ld l, [hl]                                    ; $7995: $6e
    inc l                                         ; $7996: $2c
    jr nz, jr_019_7a0d                            ; $7997: $20 $74

    ld l, a                                       ; $7999: $6f
    ld l, a                                       ; $799a: $6f
    ld hl, $0003                                  ; $799b: $21 $03 $00
    ld d, h                                       ; $799e: $54
    ld l, b                                       ; $799f: $68
    ld h, c                                       ; $79a0: $61
    ld [hl], h                                    ; $79a1: $74
    daa                                           ; $79a2: $27

jr_019_79a3:
    ld [hl], e                                    ; $79a3: $73

jr_019_79a4:
    jr nz, @+$64                                  ; $79a4: $20 $62

    ld [hl], d                                    ; $79a6: $72
    ld l, c                                       ; $79a7: $69
    ld l, h                                       ; $79a8: $6c
    ld l, h                                       ; $79a9: $6c

jr_019_79aa:
    ld l, c                                       ; $79aa: $69
    ld h, c                                       ; $79ab: $61
    ld l, [hl]                                    ; $79ac: $6e
    ld [hl], h                                    ; $79ad: $74
    ld hl, $0003                                  ; $79ae: $21 $03 $00
    ld c, a                                       ; $79b1: $4f
    ld c, e                                       ; $79b2: $4b
    inc l                                         ; $79b3: $2c
    jr nz, jr_019_79bd                            ; $79b4: $20 $07

    ccf                                           ; $79b6: $3f
    inc bc                                        ; $79b7: $03
    nop                                           ; $79b8: $00
    ld e, c                                       ; $79b9: $59

jr_019_79ba:
    ld l, a                                       ; $79ba: $6f
    ld [hl], l                                    ; $79bb: $75
    daa                                           ; $79bc: $27

jr_019_79bd:
    halt                                          ; $79bd: $76
    ld h, l                                       ; $79be: $65
    jr nz, jr_019_7a38                            ; $79bf: $20 $77

    ld l, a                                       ; $79c1: $6f
    ld [hl], d                                    ; $79c2: $72
    ld l, e                                       ; $79c3: $6b
    ld h, l                                       ; $79c4: $65
    ld h, h                                       ; $79c5: $64
    jr nz, jr_019_7a30                            ; $79c6: $20 $68

    ld h, c                                       ; $79c8: $61
    ld [hl], d                                    ; $79c9: $72
    ld h, h                                       ; $79ca: $64
    ld bc, $6f74                                  ; $79cb: $01 $74 $6f
    jr nz, jr_019_7a32                            ; $79ce: $20 $62

jr_019_79d0:
    ld h, l                                       ; $79d0: $65
    ld h, e                                       ; $79d1: $63
    ld l, a                                       ; $79d2: $6f
    ld l, l                                       ; $79d3: $6d
    ld h, l                                       ; $79d4: $65
    jr nz, jr_019_7a4b                            ; $79d5: $20 $74

    ld l, b                                       ; $79d7: $68
    ld h, l                                       ; $79d8: $65

jr_019_79d9:
    ld bc, $6e6f                                  ; $79d9: $01 $6f $6e
    ld h, l                                       ; $79dc: $65
    jr nz, jr_019_7a53                            ; $79dd: $20 $74

    ld l, a                                       ; $79df: $6f
    jr nz, @+$64                                  ; $79e0: $20 $62

    ld h, l                                       ; $79e2: $65
    ld h, c                                       ; $79e3: $61
    ld [hl], h                                    ; $79e4: $74
    jr nz, jr_019_7a34                            ; $79e5: $20 $4d

    ld h, c                                       ; $79e7: $61
    ld [hl], d                                    ; $79e8: $72
    ld l, c                                       ; $79e9: $69
    ld l, a                                       ; $79ea: $6f
    ld l, $03                                     ; $79eb: $2e $03
    nop                                           ; $79ed: $00
    ld c, c                                       ; $79ee: $49
    daa                                           ; $79ef: $27
    ld l, l                                       ; $79f0: $6d
    jr nz, @+$75                                  ; $79f1: $20 $73

    ld l, a                                       ; $79f3: $6f
    ld [hl], d                                    ; $79f4: $72

jr_019_79f5:
    ld [hl], d                                    ; $79f5: $72
    ld a, c                                       ; $79f6: $79

jr_019_79f7:
    jr nz, jr_019_7a6d                            ; $79f7: $20 $74

    ld l, a                                       ; $79f9: $6f
    jr nz, jr_019_7a60                            ; $79fa: $20 $64

    ld l, a                                       ; $79fc: $6f
    ld bc, $6874                                  ; $79fd: $01 $74 $68
    ld l, c                                       ; $7a00: $69
    ld [hl], e                                    ; $7a01: $73
    inc l                                         ; $7a02: $2c
    jr nz, @+$64                                  ; $7a03: $20 $62

    ld [hl], l                                    ; $7a05: $75
    ld [hl], h                                    ; $7a06: $74
    jr nz, jr_019_7a6c                            ; $7a07: $20 $63

    ld h, c                                       ; $7a09: $61
    ld l, [hl]                                    ; $7a0a: $6e
    jr nz, @+$7b                                  ; $7a0b: $20 $79

jr_019_7a0d:
    ld l, a                                       ; $7a0d: $6f
    ld [hl], l                                    ; $7a0e: $75
    ld bc, $656b                                  ; $7a0f: $01 $6b $65
    ld h, l                                       ; $7a12: $65
    ld [hl], b                                    ; $7a13: $70
    jr nz, jr_019_7a7f                            ; $7a14: $20 $69

    ld [hl], h                                    ; $7a16: $74
    jr nz, jr_019_7a7a                            ; $7a17: $20 $61

    jr nz, @+$75                                  ; $7a19: $20 $73

    ld h, l                                       ; $7a1b: $65
    ld h, e                                       ; $7a1c: $63
    ld [hl], d                                    ; $7a1d: $72
    ld h, l                                       ; $7a1e: $65
    ld [hl], h                                    ; $7a1f: $74
    ccf                                           ; $7a20: $3f
    inc bc                                        ; $7a21: $03
    nop                                           ; $7a22: $00
    ld d, b                                       ; $7a23: $50
    ld l, h                                       ; $7a24: $6c
    ld h, l                                       ; $7a25: $65
    ld h, c                                       ; $7a26: $61
    ld [hl], e                                    ; $7a27: $73
    ld h, l                                       ; $7a28: $65
    jr nz, jr_019_7a8d                            ; $7a29: $20 $62

    ld h, l                                       ; $7a2b: $65
    jr nz, jr_019_7a9e                            ; $7a2c: $20 $70

    ld h, c                                       ; $7a2e: $61
    ld [hl], h                                    ; $7a2f: $74

jr_019_7a30:
    ld l, c                                       ; $7a30: $69
    ld h, l                                       ; $7a31: $65

jr_019_7a32:
    ld l, [hl]                                    ; $7a32: $6e
    ld [hl], h                                    ; $7a33: $74

jr_019_7a34:
    ld l, $01                                     ; $7a34: $2e $01
    ld d, a                                       ; $7a36: $57
    ld h, l                                       ; $7a37: $65

jr_019_7a38:
    daa                                           ; $7a38: $27
    ld l, h                                       ; $7a39: $6c
    ld l, h                                       ; $7a3a: $6c
    jr nz, jr_019_7aaa                            ; $7a3b: $20 $6d

    ld h, c                                       ; $7a3d: $61
    ld l, e                                       ; $7a3e: $6b
    ld h, l                                       ; $7a3f: $65
    jr nz, jr_019_7aab                            ; $7a40: $20 $69

    ld [hl], h                                    ; $7a42: $74
    ld bc, $6e6b                                  ; $7a43: $01 $6b $6e
    ld l, a                                       ; $7a46: $6f
    ld [hl], a                                    ; $7a47: $77
    ld l, [hl]                                    ; $7a48: $6e
    jr nz, @+$6b                                  ; $7a49: $20 $69

jr_019_7a4b:
    ld l, [hl]                                    ; $7a4b: $6e
    jr nz, jr_019_7ab2                            ; $7a4c: $20 $64

    ld [hl], l                                    ; $7a4e: $75
    ld h, l                                       ; $7a4f: $65
    jr nz, jr_019_7ac6                            ; $7a50: $20 $74

    ld l, c                                       ; $7a52: $69

jr_019_7a53:
    ld l, l                                       ; $7a53: $6d
    ld h, l                                       ; $7a54: $65
    ld l, $03                                     ; $7a55: $2e $03
    nop                                           ; $7a57: $00
    ld d, h                                       ; $7a58: $54
    ld l, b                                       ; $7a59: $68
    ld h, c                                       ; $7a5a: $61
    ld l, [hl]                                    ; $7a5b: $6e
    ld l, e                                       ; $7a5c: $6b
    jr nz, @+$7b                                  ; $7a5d: $20 $79

    ld l, a                                       ; $7a5f: $6f

jr_019_7a60:
    ld [hl], l                                    ; $7a60: $75
    jr nz, jr_019_7ac9                            ; $7a61: $20 $66

    ld l, a                                       ; $7a63: $6f
    ld [hl], d                                    ; $7a64: $72
    ld bc, $6e75                                  ; $7a65: $01 $75 $6e
    ld h, h                                       ; $7a68: $64
    ld h, l                                       ; $7a69: $65
    ld [hl], d                                    ; $7a6a: $72
    ld [hl], e                                    ; $7a6b: $73

jr_019_7a6c:
    ld [hl], h                                    ; $7a6c: $74

jr_019_7a6d:
    ld h, c                                       ; $7a6d: $61
    ld l, [hl]                                    ; $7a6e: $6e
    ld h, h                                       ; $7a6f: $64
    ld l, c                                       ; $7a70: $69
    ld l, [hl]                                    ; $7a71: $6e
    ld h, a                                       ; $7a72: $67
    ld l, $03                                     ; $7a73: $2e $03
    nop                                           ; $7a75: $00
    ld b, e                                       ; $7a76: $43
    ld l, a                                       ; $7a77: $6f
    ld l, [hl]                                    ; $7a78: $6e
    ld h, a                                       ; $7a79: $67

jr_019_7a7a:
    ld [hl], d                                    ; $7a7a: $72
    ld h, c                                       ; $7a7b: $61
    ld [hl], h                                    ; $7a7c: $74
    ld [hl], l                                    ; $7a7d: $75
    ld l, h                                       ; $7a7e: $6c

jr_019_7a7f:
    ld h, c                                       ; $7a7f: $61
    ld [hl], h                                    ; $7a80: $74
    ld l, c                                       ; $7a81: $69
    ld l, a                                       ; $7a82: $6f
    ld l, [hl]                                    ; $7a83: $6e
    ld [hl], e                                    ; $7a84: $73
    jr nz, jr_019_7af6                            ; $7a85: $20 $6f

    ld l, [hl]                                    ; $7a87: $6e
    ld bc, $6f79                                  ; $7a88: $01 $79 $6f
    ld [hl], l                                    ; $7a8b: $75
    ld [hl], d                                    ; $7a8c: $72

jr_019_7a8d:
    jr nz, jr_019_7b05                            ; $7a8d: $20 $76

    ld l, c                                       ; $7a8f: $69
    ld h, e                                       ; $7a90: $63
    ld [hl], h                                    ; $7a91: $74
    ld l, a                                       ; $7a92: $6f
    ld [hl], d                                    ; $7a93: $72
    ld a, c                                       ; $7a94: $79
    ld l, $02                                     ; $7a95: $2e $02
    ld c, c                                       ; $7a97: $49
    daa                                           ; $7a98: $27
    halt                                          ; $7a99: $76
    ld h, l                                       ; $7a9a: $65
    jr nz, jr_019_7b0d                            ; $7a9b: $20 $70

    ld [hl], l                                    ; $7a9d: $75

jr_019_7a9e:
    ld [hl], h                                    ; $7a9e: $74
    jr nz, jr_019_7b1a                            ; $7a9f: $20 $79

    ld l, a                                       ; $7aa1: $6f
    ld [hl], l                                    ; $7aa2: $75
    ld [hl], d                                    ; $7aa3: $72
    ld bc, $7274                                  ; $7aa4: $01 $74 $72
    ld l, a                                       ; $7aa7: $6f
    ld [hl], b                                    ; $7aa8: $70
    ld l, b                                       ; $7aa9: $68

jr_019_7aaa:
    ld a, c                                       ; $7aaa: $79

jr_019_7aab:
    jr nz, jr_019_7b16                            ; $7aab: $20 $69

    ld l, [hl]                                    ; $7aad: $6e
    jr nz, jr_019_7b24                            ; $7aae: $20 $74

    ld l, b                                       ; $7ab0: $68
    ld h, l                                       ; $7ab1: $65

jr_019_7ab2:
    ld bc, $654d                                  ; $7ab2: $01 $4d $65
    ld l, l                                       ; $7ab5: $6d
    ld l, a                                       ; $7ab6: $6f
    ld [hl], d                                    ; $7ab7: $72
    ld l, c                                       ; $7ab8: $69
    ld h, c                                       ; $7ab9: $61
    ld l, h                                       ; $7aba: $6c
    jr nz, jr_019_7b0f                            ; $7abb: $20 $52

    ld l, a                                       ; $7abd: $6f
    ld l, a                                       ; $7abe: $6f
    ld l, l                                       ; $7abf: $6d
    ld l, $03                                     ; $7ac0: $2e $03
    nop                                           ; $7ac2: $00

    push af                                       ; $7ac3: $f5
    ld a, $00                                     ; $7ac4: $3e $00

jr_019_7ac6:
    call Call_019_7ad3                            ; $7ac6: $cd $d3 $7a

jr_019_7ac9:
    pop af                                        ; $7ac9: $f1
    ret                                           ; $7aca: $c9


    push af                                       ; $7acb: $f5
    ld a, $01                                     ; $7acc: $3e $01
    call Call_019_7ad3                            ; $7ace: $cd $d3 $7a
    pop af                                        ; $7ad1: $f1
    ret                                           ; $7ad2: $c9


Call_019_7ad3:
    push bc                                       ; $7ad3: $c5
    push de                                       ; $7ad4: $d5
    push hl                                       ; $7ad5: $e5
    ld hl, $4004                                  ; $7ad6: $21 $04 $40
    sla e                                         ; $7ad9: $cb $23
    rl d                                          ; $7adb: $cb $12
    add hl, de                                    ; $7add: $19
    ld e, [hl]                                    ; $7ade: $5e
    inc hl                                        ; $7adf: $23
    ld d, [hl]                                    ; $7ae0: $56
    ld hl, $41b4                                  ; $7ae1: $21 $b4 $41
    add hl, de                                    ; $7ae4: $19
    or a                                          ; $7ae5: $b7
    jr nz, jr_019_7af0                            ; $7ae6: $20 $08

    ld de, $c600                                  ; $7ae8: $11 $00 $c6
    ld bc, $0180                                  ; $7aeb: $01 $80 $01
    jr jr_019_7af6                                ; $7aee: $18 $06

jr_019_7af0:
    ld de, $d880                                  ; $7af0: $11 $80 $d8
    ld bc, $0020                                  ; $7af3: $01 $20 $00

jr_019_7af6:
    call MemCopy                            ; $7af6: $cd $d3 $03
    pop hl                                        ; $7af9: $e1
    pop de                                        ; $7afa: $d1
    pop bc                                        ; $7afb: $c1
    ret                                           ; $7afc: $c9


    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff

jr_019_7b05:
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff

jr_019_7b0d:
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff

jr_019_7b0f:
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff

jr_019_7b16:
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff

jr_019_7b1a:
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

jr_019_7b24:
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
