; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    db $4b, $7b

    ld d, e                                       ; $4002: $53
    ld a, e                                       ; $4003: $7b
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    ld a, $00                                     ; $4006: $3e $00
    sub c                                         ; $4008: $91
    nop                                           ; $4009: $00
    pop bc                                        ; $400a: $c1
    nop                                           ; $400b: $00
    db $e4                                        ; $400c: $e4
    nop                                           ; $400d: $00
    dec b                                         ; $400e: $05
    ld bc, $0126                                  ; $400f: $01 $26 $01
    ld c, b                                       ; $4012: $48
    ld bc, $017b                                  ; $4013: $01 $7b $01
    xor [hl]                                      ; $4016: $ae
    ld bc, $01e6                                  ; $4017: $01 $e6 $01
    inc de                                        ; $401a: $13
    ld [bc], a                                    ; $401b: $02
    ld b, e                                       ; $401c: $43
    ld [bc], a                                    ; $401d: $02
    ld b, a                                       ; $401e: $47
    ld [bc], a                                    ; $401f: $02
    ld a, [hl]                                    ; $4020: $7e
    ld [bc], a                                    ; $4021: $02
    or b                                          ; $4022: $b0
    ld [bc], a                                    ; $4023: $02
    call nz, $de02                                ; $4024: $c4 $02 $de
    ld [bc], a                                    ; $4027: $02
    rst $28                                       ; $4028: $ef
    ld [bc], a                                    ; $4029: $02
    ld c, $03                                     ; $402a: $0e $03
    inc hl                                        ; $402c: $23
    inc bc                                        ; $402d: $03
    dec [hl]                                      ; $402e: $35
    inc bc                                        ; $402f: $03
    ld b, a                                       ; $4030: $47
    inc bc                                        ; $4031: $03
    ld e, e                                       ; $4032: $5b
    inc bc                                        ; $4033: $03
    ld h, [hl]                                    ; $4034: $66
    inc bc                                        ; $4035: $03
    add d                                         ; $4036: $82
    inc bc                                        ; $4037: $03
    adc a                                         ; $4038: $8f
    inc bc                                        ; $4039: $03
    and b                                         ; $403a: $a0
    inc bc                                        ; $403b: $03
    xor e                                         ; $403c: $ab
    inc bc                                        ; $403d: $03
    cp l                                          ; $403e: $bd
    inc bc                                        ; $403f: $03
    sbc $03                                       ; $4040: $de $03
    rst $38                                       ; $4042: $ff
    inc bc                                        ; $4043: $03
    ld [de], a                                    ; $4044: $12
    inc b                                         ; $4045: $04
    ld [hl], $04                                  ; $4046: $36 $04
    ld d, [hl]                                    ; $4048: $56
    inc b                                         ; $4049: $04
    add e                                         ; $404a: $83
    inc b                                         ; $404b: $04
    or l                                          ; $404c: $b5
    inc b                                         ; $404d: $04
    inc bc                                        ; $404e: $03
    dec b                                         ; $404f: $05
    dec hl                                        ; $4050: $2b
    dec b                                         ; $4051: $05
    ld d, c                                       ; $4052: $51
    dec b                                         ; $4053: $05
    halt                                          ; $4054: $76
    dec b                                         ; $4055: $05
    cp c                                          ; $4056: $b9
    dec b                                         ; $4057: $05
    jp hl                                         ; $4058: $e9


    dec b                                         ; $4059: $05
    dec c                                         ; $405a: $0d
    ld b, $44                                     ; $405b: $06 $44
    ld b, $6a                                     ; $405d: $06 $6a
    ld b, $8e                                     ; $405f: $06 $8e
    ld b, $bc                                     ; $4061: $06 $bc
    ld b, $dd                                     ; $4063: $06 $dd
    ld b, $f3                                     ; $4065: $06 $f3
    ld b, $0f                                     ; $4067: $06 $0f
    rlca                                          ; $4069: $07
    cpl                                           ; $406a: $2f
    rlca                                          ; $406b: $07
    ld [hl], c                                    ; $406c: $71
    rlca                                          ; $406d: $07
    reti                                          ; $406e: $d9


    rlca                                          ; $406f: $07
    ld b, c                                       ; $4070: $41
    ld [$0883], sp                                ; $4071: $08 $83 $08
    db $eb                                        ; $4074: $eb
    ld [$0953], sp                                ; $4075: $08 $53 $09
    sub l                                         ; $4078: $95
    add hl, bc                                    ; $4079: $09
    db $fd                                        ; $407a: $fd
    add hl, bc                                    ; $407b: $09
    inc h                                         ; $407c: $24
    ld a, [bc]                                    ; $407d: $0a
    ld d, d                                       ; $407e: $52
    ld a, [bc]                                    ; $407f: $0a
    ld l, h                                       ; $4080: $6c
    ld a, [bc]                                    ; $4081: $0a
    ld [hl], b                                    ; $4082: $70
    ld a, [bc]                                    ; $4083: $0a
    sub c                                         ; $4084: $91
    ld a, [bc]                                    ; $4085: $0a
    and [hl]                                      ; $4086: $a6
    ld a, [bc]                                    ; $4087: $0a
    jp z, $d60a                                   ; $4088: $ca $0a $d6

    ld a, [bc]                                    ; $408b: $0a
    add sp, $0a                                   ; $408c: $e8 $0a
    ei                                            ; $408e: $fb
    ld a, [bc]                                    ; $408f: $0a
    inc d                                         ; $4090: $14
    dec bc                                        ; $4091: $0b
    ld [hl], $0b                                  ; $4092: $36 $0b
    ld d, [hl]                                    ; $4094: $56
    dec bc                                        ; $4095: $0b
    ld a, b                                       ; $4096: $78
    dec bc                                        ; $4097: $0b
    sub h                                         ; $4098: $94
    dec bc                                        ; $4099: $0b
    add $0b                                       ; $409a: $c6 $0b
    db $f4                                        ; $409c: $f4
    dec bc                                        ; $409d: $0b
    inc h                                         ; $409e: $24
    inc c                                         ; $409f: $0c

jr_01b_40a0:
    ld e, d                                       ; $40a0: $5a
    inc c                                         ; $40a1: $0c
    ld l, [hl]                                    ; $40a2: $6e
    inc c                                         ; $40a3: $0c
    ld a, a                                       ; $40a4: $7f
    inc c                                         ; $40a5: $0c
    sub h                                         ; $40a6: $94
    inc c                                         ; $40a7: $0c
    and e                                         ; $40a8: $a3
    inc c                                         ; $40a9: $0c
    or [hl]                                       ; $40aa: $b6
    inc c                                         ; $40ab: $0c
    db $dd                                        ; $40ac: $dd
    inc c                                         ; $40ad: $0c
    dec d                                         ; $40ae: $15
    dec c                                         ; $40af: $0d
    dec sp                                        ; $40b0: $3b
    dec c                                         ; $40b1: $0d
    ld l, e                                       ; $40b2: $6b
    dec c                                         ; $40b3: $0d
    ld a, l                                       ; $40b4: $7d
    dec c                                         ; $40b5: $0d
    sub c                                         ; $40b6: $91
    dec c                                         ; $40b7: $0d
    and l                                         ; $40b8: $a5
    dec c                                         ; $40b9: $0d
    cp c                                          ; $40ba: $b9
    dec c                                         ; $40bb: $0d
    db $dd                                        ; $40bc: $dd
    dec c                                         ; $40bd: $0d
    dec e                                         ; $40be: $1d
    ld c, $73                                     ; $40bf: $0e $73
    ld c, $9d                                     ; $40c1: $0e $9d
    db $0e                                        ; $40c3: $0e

    db $b5, $0e

    call nz, $d50e                                ; $40c6: $c4 $0e $d5
    ld c, $e9                                     ; $40c9: $0e $e9
    ld c, $0e                                     ; $40cb: $0e $0e
    rrca                                          ; $40cd: $0f
    ld [hl], h                                    ; $40ce: $74
    rrca                                          ; $40cf: $0f
    xor d                                         ; $40d0: $aa
    rrca                                          ; $40d1: $0f
    call nc, Call_000_240f                        ; $40d2: $d4 $0f $24

jr_01b_40d5:
    db $10                                        ; $40d5: $10
    adc [hl]                                      ; $40d6: $8e
    db $10                                        ; $40d7: $10
    inc bc                                        ; $40d8: $03
    ld de, $1138                                  ; $40d9: $11 $38 $11
    and d                                         ; $40dc: $a2

jr_01b_40dd:
    ld de, $11d5                                  ; $40dd: $11 $d5 $11
    db $fc                                        ; $40e0: $fc
    ld de, $1231                                  ; $40e1: $11 $31 $12
    or b                                          ; $40e4: $b0
    ld [de], a                                    ; $40e5: $12
    ld a, [bc]                                    ; $40e6: $0a
    inc de                                        ; $40e7: $13
    ld [hl], e                                    ; $40e8: $73
    inc de                                        ; $40e9: $13
    sub d                                         ; $40ea: $92
    inc de                                        ; $40eb: $13
    xor d                                         ; $40ec: $aa
    inc de                                        ; $40ed: $13
    jp nc, Jump_000_0713                          ; $40ee: $d2 $13 $07

    inc d                                         ; $40f1: $14
    and c                                         ; $40f2: $a1
    inc d                                         ; $40f3: $14
    cp $14                                        ; $40f4: $fe $14
    ld h, l                                       ; $40f6: $65
    dec d                                         ; $40f7: $15
    rst $30                                       ; $40f8: $f7
    dec d                                         ; $40f9: $15
    dec bc                                        ; $40fa: $0b
    ld d, $33                                     ; $40fb: $16 $33
    ld d, $b7                                     ; $40fd: $16 $b7
    ld d, $ec                                     ; $40ff: $16 $ec
    ld d, $49                                     ; $4101: $16 $49
    rla                                           ; $4103: $17
    and a                                         ; $4104: $a7
    rla                                           ; $4105: $17
    ld bc, $2c18                                  ; $4106: $01 $18 $2c
    jr jr_01b_40a0                                ; $4109: $18 $95

    jr jr_01b_40d5                                ; $410b: $18 $c8

    jr @+$2d                                      ; $410d: $18 $2b

    add hl, de                                    ; $410f: $19
    ld d, d                                       ; $4110: $52
    add hl, de                                    ; $4111: $19
    ld a, [hl]                                    ; $4112: $7e
    add hl, de                                    ; $4113: $19
    xor [hl]                                      ; $4114: $ae
    add hl, de                                    ; $4115: $19
    jp nc, $f219                                  ; $4116: $d2 $19 $f2

    add hl, de                                    ; $4119: $19
    ld d, d                                       ; $411a: $52
    ld a, [de]                                    ; $411b: $1a

jr_01b_411c:
    add l                                         ; $411c: $85
    ld a, [de]                                    ; $411d: $1a
    and $1a                                       ; $411e: $e6 $1a
    inc de                                        ; $4120: $13
    dec de                                        ; $4121: $1b
    ld [hl-], a                                   ; $4122: $32
    dec de                                        ; $4123: $1b
    ld [hl], h                                    ; $4124: $74
    dec de                                        ; $4125: $1b
    sbc h                                         ; $4126: $9c
    dec de                                        ; $4127: $1b
    call z, Call_000_331b                         ; $4128: $cc $1b $33
    inc e                                         ; $412b: $1c
    adc d                                         ; $412c: $8a
    inc e                                         ; $412d: $1c
    cp b                                          ; $412e: $b8
    inc e                                         ; $412f: $1c
    ld hl, $551d                                  ; $4130: $21 $1d $55
    dec e                                         ; $4133: $1d

jr_01b_4134:
    cp b                                          ; $4134: $b8
    dec e                                         ; $4135: $1d
    rst $18                                       ; $4136: $df
    dec e                                         ; $4137: $1d
    dec bc                                        ; $4138: $0b
    ld e, $41                                     ; $4139: $1e $41
    ld e, $6e                                     ; $413b: $1e $6e
    ld e, $8e                                     ; $413d: $1e $8e
    ld e, $bf                                     ; $413f: $1e $bf
    ld e, $ed                                     ; $4141: $1e $ed
    ld e, $21                                     ; $4143: $1e $21
    rra                                           ; $4145: $1f

jr_01b_4146:
    add a                                         ; $4146: $87
    rra                                           ; $4147: $1f
    push af                                       ; $4148: $f5
    rra                                           ; $4149: $1f
    ld a, [hl+]                                   ; $414a: $2a
    jr nz, jr_01b_41a2                            ; $414b: $20 $55

    jr nz, jr_01b_40dd                            ; $414d: $20 $8e

    jr nz, @-$51                                  ; $414f: $20 $ad

    jr nz, jr_01b_411c                            ; $4151: $20 $c9

    jr nz, jr_01b_4134                            ; $4153: $20 $df

    jr nz, jr_01b_4146                            ; $4155: $20 $ef

    jr nz, @+$2a                                  ; $4157: $20 $28

    ld hl, $215b                                  ; $4159: $21 $5b $21
    add a                                         ; $415c: $87
    ld hl, $21b8                                  ; $415d: $21 $b8 $21
    push hl                                       ; $4160: $e5
    ld hl, $223d                                  ; $4161: $21 $3d $22
    xor c                                         ; $4164: $a9
    ld [hl+], a                                   ; $4165: $22
    ld b, $23                                     ; $4166: $06 $23
    ld sp, $5223                                  ; $4168: $31 $23 $52
    inc hl                                        ; $416b: $23
    ld [hl], c                                    ; $416c: $71
    inc hl                                        ; $416d: $23
    adc l                                         ; $416e: $8d
    inc hl                                        ; $416f: $23
    and e                                         ; $4170: $a3
    inc hl                                        ; $4171: $23
    xor a                                         ; $4172: $af
    inc hl                                        ; $4173: $23
    call c, $0723                                 ; $4174: $dc $23 $07
    inc h                                         ; $4177: $24
    ld [hl], h                                    ; $4178: $74
    inc h                                         ; $4179: $24
    sbc [hl]                                      ; $417a: $9e
    inc h                                         ; $417b: $24

jr_01b_417c:
    db $fd                                        ; $417c: $fd
    inc h                                         ; $417d: $24
    ld h, a                                       ; $417e: $67
    dec h                                         ; $417f: $25

jr_01b_4180:
    call nz, $e025                                ; $4180: $c4 $25 $e0
    dec h                                         ; $4183: $25
    or $25                                        ; $4184: $f6 $25
    dec hl                                        ; $4186: $2b
    ld h, $4a                                     ; $4187: $26 $4a
    ld h, $66                                     ; $4189: $26 $66
    ld h, $7c                                     ; $418b: $26 $7c
    ld h, $88                                     ; $418d: $26 $88
    ld h, $b1                                     ; $418f: $26 $b1
    ld h, $e4                                     ; $4191: $26 $e4
    ld h, $17                                     ; $4193: $26 $17
    daa                                           ; $4195: $27
    ld a, c                                       ; $4196: $79
    daa                                           ; $4197: $27
    db $eb                                        ; $4198: $eb
    daa                                           ; $4199: $27

jr_01b_419a:
    halt                                          ; $419a: $76
    jr z, jr_01b_417c                             ; $419b: $28 $df

    jr z, jr_01b_419a                             ; $419d: $28 $fb

    jr z, jr_01b_41b1                             ; $419f: $28 $10

    add hl, hl                                    ; $41a1: $29

jr_01b_41a2:
    ld b, a                                       ; $41a2: $47
    add hl, hl                                    ; $41a3: $29
    ld h, e                                       ; $41a4: $63
    add hl, hl                                    ; $41a5: $29
    ld a, a                                       ; $41a6: $7f
    add hl, hl                                    ; $41a7: $29
    sub l                                         ; $41a8: $95
    add hl, hl                                    ; $41a9: $29
    and c                                         ; $41aa: $a1
    add hl, hl                                    ; $41ab: $29
    ret c                                         ; $41ac: $d8

    add hl, hl                                    ; $41ad: $29
    dec c                                         ; $41ae: $0d
    ld a, [hl+]                                   ; $41af: $2a
    ld h, l                                       ; $41b0: $65

jr_01b_41b1:
    ld a, [hl+]                                   ; $41b1: $2a
    cp h                                          ; $41b2: $bc
    ld a, [hl+]                                   ; $41b3: $2a
    cp $2a                                        ; $41b4: $fe $2a
    ld d, [hl]                                    ; $41b6: $56
    dec hl                                        ; $41b7: $2b
    pop bc                                        ; $41b8: $c1
    dec hl                                        ; $41b9: $2b
    db $dd                                        ; $41ba: $dd
    dec hl                                        ; $41bb: $2b
    di                                            ; $41bc: $f3
    dec hl                                        ; $41bd: $2b
    ld l, d                                       ; $41be: $6a
    inc l                                         ; $41bf: $2c
    add l                                         ; $41c0: $85
    inc l                                         ; $41c1: $2c
    and c                                         ; $41c2: $a1
    inc l                                         ; $41c3: $2c
    or a                                          ; $41c4: $b7
    inc l                                         ; $41c5: $2c
    sra h                                         ; $41c6: $cb $2c
    db $fd                                        ; $41c8: $fd
    inc l                                         ; $41c9: $2c
    ld d, a                                       ; $41ca: $57
    dec l                                         ; $41cb: $2d
    ld a, h                                       ; $41cc: $7c
    dec l                                         ; $41cd: $2d
    xor [hl]                                      ; $41ce: $ae
    dec l                                         ; $41cf: $2d
    db $10                                        ; $41d0: $10
    ld l, $41                                     ; $41d1: $2e $41
    ld l, $9b                                     ; $41d3: $2e $9b
    ld l, $0c                                     ; $41d5: $2e $0c
    cpl                                           ; $41d7: $2f
    jr z, jr_01b_4209                             ; $41d8: $28 $2f

    ld a, $2f                                     ; $41da: $3e $2f
    xor a                                         ; $41dc: $af
    cpl                                           ; $41dd: $2f
    adc $2f                                       ; $41de: $ce $2f

jr_01b_41e0:
    ld [$002f], a                                 ; $41e0: $ea $2f $00
    jr nc, @+$0e                                  ; $41e3: $30 $0c

    jr nc, jr_01b_421f                            ; $41e5: $30 $38

    jr nc, jr_01b_424d                            ; $41e7: $30 $64

    jr nc, jr_01b_4180                            ; $41e9: $30 $95

    jr nc, jr_01b_41e0                            ; $41eb: $30 $f3

    jr nc, @+$66                                  ; $41ed: $30 $64

    ld sp, $3192                                  ; $41ef: $31 $92 $31
    db $fd                                        ; $41f2: $fd
    ld sp, $3271                                  ; $41f3: $31 $71 $32
    adc l                                         ; $41f6: $8d
    ld [hl-], a                                   ; $41f7: $32
    and e                                         ; $41f8: $a3
    ld [hl-], a                                   ; $41f9: $32
    ld [bc], a                                    ; $41fa: $02
    inc sp                                        ; $41fb: $33
    inc [hl]                                      ; $41fc: $34
    inc sp                                        ; $41fd: $33
    ld d, b                                       ; $41fe: $50
    inc sp                                        ; $41ff: $33
    ld h, [hl]                                    ; $4200: $66
    inc sp                                        ; $4201: $33
    ld a, d                                       ; $4202: $7a
    inc sp                                        ; $4203: $33
    and [hl]                                      ; $4204: $a6
    inc sp                                        ; $4205: $33
    ld sp, hl                                     ; $4206: $f9
    inc sp                                        ; $4207: $33
    ld a, [de]                                    ; $4208: $1a

jr_01b_4209:
    inc [hl]                                      ; $4209: $34
    ld c, b                                       ; $420a: $48
    inc [hl]                                      ; $420b: $34
    ld a, [hl]                                    ; $420c: $7e
    inc [hl]                                      ; $420d: $34
    xor a                                         ; $420e: $af
    inc [hl]                                      ; $420f: $34
    pop hl                                        ; $4210: $e1
    inc [hl]                                      ; $4211: $34
    ld b, e                                       ; $4212: $43
    dec [hl]                                      ; $4213: $35
    ld e, a                                       ; $4214: $5f
    dec [hl]                                      ; $4215: $35
    ld [hl], l                                    ; $4216: $75
    dec [hl]                                      ; $4217: $35
    rst $08                                       ; $4218: $cf
    dec [hl]                                      ; $4219: $35
    dec b                                         ; $421a: $05
    ld [hl], $21                                  ; $421b: $36 $21
    ld [hl], $3a                                  ; $421d: $36 $3a

jr_01b_421f:
    ld [hl], $4d                                  ; $421f: $36 $4d
    ld [hl], $81                                  ; $4221: $36 $81
    ld [hl], $b0                                  ; $4223: $36 $b0
    ld [hl], $dd                                  ; $4225: $36 $dd
    ld [hl], $e8                                  ; $4227: $36 $e8
    ld [hl], $fb                                  ; $4229: $36 $fb
    ld [hl], $12                                  ; $422b: $36 $12
    scf                                           ; $422d: $37
    inc hl                                        ; $422e: $23
    scf                                           ; $422f: $37
    scf                                           ; $4230: $37
    scf                                           ; $4231: $37
    ld c, d                                       ; $4232: $4a
    scf                                           ; $4233: $37
    ld [hl], l                                    ; $4234: $75
    scf                                           ; $4235: $37
    xor a                                         ; $4236: $af
    scf                                           ; $4237: $37
    ld c, $38                                     ; $4238: $0e $38
    ld [hl], h                                    ; $423a: $74
    jr c, @-$15                                   ; $423b: $38 $e9

    jr c, @+$55                                   ; $423d: $38 $53

    ld l, a                                       ; $423f: $6f
    jr nz, jr_01b_42bb                            ; $4240: $20 $79

    ld l, a                                       ; $4242: $6f
    ld [hl], l                                    ; $4243: $75
    jr nz, jr_01b_42b6                            ; $4244: $20 $70

    ld l, h                                       ; $4246: $6c
    ld h, c                                       ; $4247: $61
    ld h, e                                       ; $4248: $63
    ld h, l                                       ; $4249: $65
    ld h, h                                       ; $424a: $64
    ccf                                           ; $424b: $3f
    ld [bc], a                                    ; $424c: $02

jr_01b_424d:
    ld c, c                                       ; $424d: $49
    daa                                           ; $424e: $27
    ld l, l                                       ; $424f: $6d
    jr nz, jr_01b_42b3                            ; $4250: $20 $61

    jr nz, jr_01b_42c8                            ; $4252: $20 $74

    ld [hl], d                                    ; $4254: $72
    ld l, c                                       ; $4255: $69
    ld h, [hl]                                    ; $4256: $66
    ld l, h                                       ; $4257: $6c
    ld h, l                                       ; $4258: $65
    ld bc, $6e61                                  ; $4259: $01 $61 $6e
    ld l, [hl]                                    ; $425c: $6e
    ld l, a                                       ; $425d: $6f
    ld a, c                                       ; $425e: $79
    ld h, l                                       ; $425f: $65
    ld h, h                                       ; $4260: $64
    inc l                                         ; $4261: $2c
    jr nz, jr_01b_42c6                            ; $4262: $20 $62

    ld [hl], l                                    ; $4264: $75
    ld [hl], h                                    ; $4265: $74
    ld l, $2e                                     ; $4266: $2e $2e
    ld l, $01                                     ; $4268: $2e $01
    ld h, e                                       ; $426a: $63
    ld l, a                                       ; $426b: $6f
    ld l, [hl]                                    ; $426c: $6e
    ld h, a                                       ; $426d: $67
    ld [hl], d                                    ; $426e: $72
    ld h, c                                       ; $426f: $61
    ld [hl], h                                    ; $4270: $74
    ld [hl], l                                    ; $4271: $75
    ld l, h                                       ; $4272: $6c
    ld h, c                                       ; $4273: $61
    ld [hl], h                                    ; $4274: $74
    ld l, c                                       ; $4275: $69
    ld l, a                                       ; $4276: $6f
    ld l, [hl]                                    ; $4277: $6e
    ld [hl], e                                    ; $4278: $73
    ld l, $03                                     ; $4279: $2e $03
    nop                                           ; $427b: $00
    ld e, c                                       ; $427c: $59
    ld l, a                                       ; $427d: $6f
    ld [hl], l                                    ; $427e: $75
    jr nz, jr_01b_42f3                            ; $427f: $20 $72

    ld h, l                                       ; $4281: $65
    ld h, c                                       ; $4282: $61
    ld h, e                                       ; $4283: $63
    ld l, b                                       ; $4284: $68
    ld h, l                                       ; $4285: $65
    ld h, h                                       ; $4286: $64
    jr nz, @+$76                                  ; $4287: $20 $74

    ld l, b                                       ; $4289: $68
    ld h, l                                       ; $428a: $65
    ld bc, $6570                                  ; $428b: $01 $70 $65
    ld h, c                                       ; $428e: $61
    ld l, e                                       ; $428f: $6b
    inc l                                         ; $4290: $2c
    jr nz, jr_01b_42da                            ; $4291: $20 $47

    ld [hl], d                                    ; $4293: $72
    ld h, c                                       ; $4294: $61
    ld l, [hl]                                    ; $4295: $6e
    ld h, h                                       ; $4296: $64
    jr nz, jr_01b_42dc                            ; $4297: $20 $43

    ld l, b                                       ; $4299: $68
    ld h, c                                       ; $429a: $61
    ld l, l                                       ; $429b: $6d
    ld [hl], b                                    ; $429c: $70
    ld bc, $2107                                  ; $429d: $01 $07 $21
    ld [bc], a                                    ; $42a0: $02
    ld b, [hl]                                    ; $42a1: $46
    ld [hl], d                                    ; $42a2: $72
    ld l, a                                       ; $42a3: $6f
    ld l, l                                       ; $42a4: $6d
    jr nz, jr_01b_4315                            ; $42a5: $20 $6e

    ld l, a                                       ; $42a7: $6f
    ld [hl], a                                    ; $42a8: $77
    jr nz, @+$71                                  ; $42a9: $20 $6f

    ld l, [hl]                                    ; $42ab: $6e
    inc l                                         ; $42ac: $2c
    ld bc, $6f79                                  ; $42ad: $01 $79 $6f
    ld [hl], l                                    ; $42b0: $75
    daa                                           ; $42b1: $27
    ld l, h                                       ; $42b2: $6c

jr_01b_42b3:
    ld l, h                                       ; $42b3: $6c
    jr nz, jr_01b_4318                            ; $42b4: $20 $62

jr_01b_42b6:
    ld h, l                                       ; $42b6: $65
    ld bc, $7665                                  ; $42b7: $01 $65 $76
    ld h, l                                       ; $42ba: $65

jr_01b_42bb:
    ld [hl], d                                    ; $42bb: $72
    ld a, c                                       ; $42bc: $79
    ld l, a                                       ; $42bd: $6f
    ld l, [hl]                                    ; $42be: $6e
    ld h, l                                       ; $42bf: $65
    daa                                           ; $42c0: $27
    ld [hl], e                                    ; $42c1: $73
    jr nz, @+$71                                  ; $42c2: $20 $6f

    ld h, d                                       ; $42c4: $62
    ld l, d                                       ; $42c5: $6a

jr_01b_42c6:
    ld h, l                                       ; $42c6: $65
    ld h, e                                       ; $42c7: $63

jr_01b_42c8:
    ld [hl], h                                    ; $42c8: $74
    ld l, c                                       ; $42c9: $69
    halt                                          ; $42ca: $76
    ld h, l                                       ; $42cb: $65
    ld hl, $0003                                  ; $42cc: $21 $03 $00
    ld d, a                                       ; $42cf: $57
    ld l, b                                       ; $42d0: $68
    ld h, l                                       ; $42d1: $65
    ld l, [hl]                                    ; $42d2: $6e
    jr nz, jr_01b_434e                            ; $42d3: $20 $79

    ld l, a                                       ; $42d5: $6f
    ld [hl], l                                    ; $42d6: $75
    daa                                           ; $42d7: $27
    ld [hl], d                                    ; $42d8: $72
    ld h, l                                       ; $42d9: $65

jr_01b_42da:
    jr nz, jr_01b_4323                            ; $42da: $20 $47

jr_01b_42dc:
    ld [hl], d                                    ; $42dc: $72
    ld h, c                                       ; $42dd: $61
    ld l, [hl]                                    ; $42de: $6e
    ld h, h                                       ; $42df: $64
    ld bc, $6843                                  ; $42e0: $01 $43 $68
    ld h, c                                       ; $42e3: $61
    ld l, l                                       ; $42e4: $6d
    ld [hl], b                                    ; $42e5: $70
    inc l                                         ; $42e6: $2c
    jr nz, jr_01b_4362                            ; $42e7: $20 $79

    ld l, a                                       ; $42e9: $6f
    ld [hl], l                                    ; $42ea: $75
    jr nz, jr_01b_4350                            ; $42eb: $20 $63

    ld h, c                                       ; $42ed: $61
    ld l, [hl]                                    ; $42ee: $6e
    jr nz, jr_01b_435e                            ; $42ef: $20 $6d

    ld h, l                                       ; $42f1: $65
    ld h, l                                       ; $42f2: $65

jr_01b_42f3:
    ld [hl], h                                    ; $42f3: $74
    ld bc, $614d                                  ; $42f4: $01 $4d $61
    ld [hl], d                                    ; $42f7: $72
    ld l, c                                       ; $42f8: $69
    ld l, a                                       ; $42f9: $6f
    ld l, $2e                                     ; $42fa: $2e $2e
    ld l, $03                                     ; $42fc: $2e $03
    nop                                           ; $42fe: $00
    ld d, h                                       ; $42ff: $54
    ld l, b                                       ; $4300: $68
    ld h, l                                       ; $4301: $65
    jr nz, jr_01b_4377                            ; $4302: $20 $73

    ld l, c                                       ; $4304: $69
    ld h, a                                       ; $4305: $67
    ld l, [hl]                                    ; $4306: $6e
    jr nz, jr_01b_437b                            ; $4307: $20 $72

    ld h, l                                       ; $4309: $65
    ld h, c                                       ; $430a: $61
    ld h, h                                       ; $430b: $64
    ld [hl], e                                    ; $430c: $73
    ld a, [hl-]                                   ; $430d: $3a
    ld bc, $5422                                  ; $430e: $01 $22 $54
    ld l, a                                       ; $4311: $6f
    jr nz, @+$4f                                  ; $4312: $20 $4d

    ld h, c                                       ; $4314: $61

jr_01b_4315:
    ld [hl], d                                    ; $4315: $72
    ld l, c                                       ; $4316: $69
    ld l, a                                       ; $4317: $6f

jr_01b_4318:
    ld l, [hl]                                    ; $4318: $6e
    jr nz, jr_01b_435e                            ; $4319: $20 $43

    ld l, h                                       ; $431b: $6c
    ld [hl], l                                    ; $431c: $75
    ld h, d                                       ; $431d: $62
    ld l, $22                                     ; $431e: $2e $22
    inc bc                                        ; $4320: $03
    nop                                           ; $4321: $00
    ld d, h                                       ; $4322: $54

jr_01b_4323:
    ld l, b                                       ; $4323: $68
    ld h, l                                       ; $4324: $65
    jr nz, jr_01b_439a                            ; $4325: $20 $73

    ld l, c                                       ; $4327: $69
    ld h, a                                       ; $4328: $67
    ld l, [hl]                                    ; $4329: $6e
    jr nz, jr_01b_439e                            ; $432a: $20 $72

    ld h, l                                       ; $432c: $65
    ld h, c                                       ; $432d: $61
    ld h, h                                       ; $432e: $64
    ld [hl], e                                    ; $432f: $73
    ld a, [hl-]                                   ; $4330: $3a
    ld bc, $5422                                  ; $4331: $01 $22 $54
    ld l, a                                       ; $4334: $6f
    jr nz, jr_01b_4387                            ; $4335: $20 $50

    ld h, c                                       ; $4337: $61
    ld l, h                                       ; $4338: $6c
    ld l, l                                       ; $4339: $6d
    jr nz, jr_01b_437f                            ; $433a: $20 $43

    ld l, h                                       ; $433c: $6c
    ld [hl], l                                    ; $433d: $75
    ld h, d                                       ; $433e: $62
    ld l, $22                                     ; $433f: $2e $22
    inc bc                                        ; $4341: $03
    nop                                           ; $4342: $00
    ld d, h                                       ; $4343: $54
    ld l, b                                       ; $4344: $68
    ld h, l                                       ; $4345: $65
    jr nz, jr_01b_43bb                            ; $4346: $20 $73

    ld l, c                                       ; $4348: $69
    ld h, a                                       ; $4349: $67
    ld l, [hl]                                    ; $434a: $6e
    jr nz, jr_01b_43bf                            ; $434b: $20 $72

    ld h, l                                       ; $434d: $65

jr_01b_434e:
    ld h, c                                       ; $434e: $61
    ld h, h                                       ; $434f: $64

jr_01b_4350:
    ld [hl], e                                    ; $4350: $73
    ld a, [hl-]                                   ; $4351: $3a
    ld bc, $5422                                  ; $4352: $01 $22 $54
    ld l, a                                       ; $4355: $6f
    jr nz, jr_01b_439c                            ; $4356: $20 $44

    ld [hl], l                                    ; $4358: $75
    ld l, [hl]                                    ; $4359: $6e
    ld h, l                                       ; $435a: $65
    jr nz, jr_01b_43a0                            ; $435b: $20 $43

    ld l, h                                       ; $435d: $6c

jr_01b_435e:
    ld [hl], l                                    ; $435e: $75
    ld h, d                                       ; $435f: $62
    ld l, $22                                     ; $4360: $2e $22

jr_01b_4362:
    inc bc                                        ; $4362: $03
    nop                                           ; $4363: $00
    ld d, h                                       ; $4364: $54
    ld l, b                                       ; $4365: $68
    ld h, l                                       ; $4366: $65
    jr nz, jr_01b_43dc                            ; $4367: $20 $73

    ld l, c                                       ; $4369: $69
    ld h, a                                       ; $436a: $67
    ld l, [hl]                                    ; $436b: $6e
    jr nz, jr_01b_43e0                            ; $436c: $20 $72

    ld h, l                                       ; $436e: $65
    ld h, c                                       ; $436f: $61
    ld h, h                                       ; $4370: $64
    ld [hl], e                                    ; $4371: $73
    ld a, [hl-]                                   ; $4372: $3a
    ld bc, $5422                                  ; $4373: $01 $22 $54
    ld l, a                                       ; $4376: $6f

jr_01b_4377:
    jr nz, jr_01b_43c5                            ; $4377: $20 $4c

    ld l, c                                       ; $4379: $69
    ld l, [hl]                                    ; $437a: $6e

jr_01b_437b:
    ld l, e                                       ; $437b: $6b
    ld [hl], e                                    ; $437c: $73
    jr nz, @+$45                                  ; $437d: $20 $43

jr_01b_437f:
    ld l, h                                       ; $437f: $6c
    ld [hl], l                                    ; $4380: $75
    ld h, d                                       ; $4381: $62
    ld l, $22                                     ; $4382: $2e $22
    inc bc                                        ; $4384: $03
    nop                                           ; $4385: $00
    ld d, h                                       ; $4386: $54

jr_01b_4387:
    ld l, b                                       ; $4387: $68
    ld h, l                                       ; $4388: $65
    ld [hl], d                                    ; $4389: $72
    ld h, l                                       ; $438a: $65
    daa                                           ; $438b: $27
    ld [hl], e                                    ; $438c: $73
    jr nz, @+$63                                  ; $438d: $20 $61

    jr nz, jr_01b_43f4                            ; $438f: $20 $63

    ld h, c                                       ; $4391: $61
    ld h, d                                       ; $4392: $62
    ld l, c                                       ; $4393: $69
    ld l, [hl]                                    ; $4394: $6e
    ld bc, $6e69                                  ; $4395: $01 $69 $6e
    jr nz, jr_01b_440e                            ; $4398: $20 $74

jr_01b_439a:
    ld l, b                                       ; $439a: $68
    ld h, l                                       ; $439b: $65

jr_01b_439c:
    jr nz, jr_01b_4415                            ; $439c: $20 $77

jr_01b_439e:
    ld l, a                                       ; $439e: $6f
    ld l, a                                       ; $439f: $6f

jr_01b_43a0:
    ld h, h                                       ; $43a0: $64
    ld [hl], e                                    ; $43a1: $73
    ld l, $2e                                     ; $43a2: $2e $2e
    ld l, $01                                     ; $43a4: $2e $01
    ld d, a                                       ; $43a6: $57
    ld l, b                                       ; $43a7: $68
    ld h, c                                       ; $43a8: $61
    ld [hl], h                                    ; $43a9: $74
    jr nz, jr_01b_440f                            ; $43aa: $20 $63

    ld l, a                                       ; $43ac: $6f
    ld [hl], l                                    ; $43ad: $75
    ld l, h                                       ; $43ae: $6c
    ld h, h                                       ; $43af: $64
    jr nz, jr_01b_441b                            ; $43b0: $20 $69

    ld [hl], h                                    ; $43b2: $74
    jr nz, jr_01b_4417                            ; $43b3: $20 $62

    ld h, l                                       ; $43b5: $65
    ccf                                           ; $43b6: $3f
    inc bc                                        ; $43b7: $03
    nop                                           ; $43b8: $00
    ld d, h                                       ; $43b9: $54
    ld l, b                                       ; $43ba: $68

jr_01b_43bb:
    ld h, l                                       ; $43bb: $65
    jr nz, jr_01b_4431                            ; $43bc: $20 $73

    ld l, c                                       ; $43be: $69

jr_01b_43bf:
    ld h, a                                       ; $43bf: $67
    ld l, [hl]                                    ; $43c0: $6e
    jr nz, @+$74                                  ; $43c1: $20 $72

    ld h, l                                       ; $43c3: $65
    ld h, c                                       ; $43c4: $61

jr_01b_43c5:
    ld h, h                                       ; $43c5: $64
    ld [hl], e                                    ; $43c6: $73
    ld a, [hl-]                                   ; $43c7: $3a
    ld bc, $5922                                  ; $43c8: $01 $22 $59
    ld l, a                                       ; $43cb: $6f
    ld [hl], l                                    ; $43cc: $75
    ld [hl], d                                    ; $43cd: $72
    jr nz, jr_01b_4433                            ; $43ce: $20 $63

    ld l, b                                       ; $43d0: $68
    ld h, c                                       ; $43d1: $61
    ld l, h                                       ; $43d2: $6c
    ld l, h                                       ; $43d3: $6c
    ld h, l                                       ; $43d4: $65
    ld l, [hl]                                    ; $43d5: $6e
    ld h, a                                       ; $43d6: $67
    ld h, l                                       ; $43d7: $65
    ld a, [hl-]                                   ; $43d8: $3a
    ld bc, $6948                                  ; $43d9: $01 $48 $69

jr_01b_43dc:
    ld [hl], h                                    ; $43dc: $74
    jr nz, jr_01b_4453                            ; $43dd: $20 $74

    ld l, b                                       ; $43df: $68

jr_01b_43e0:
    ld h, l                                       ; $43e0: $65
    jr nz, jr_01b_4457                            ; $43e1: $20 $74

    ld h, c                                       ; $43e3: $61
    ld [hl], d                                    ; $43e4: $72
    ld h, a                                       ; $43e5: $67
    ld h, l                                       ; $43e6: $65
    ld [hl], h                                    ; $43e7: $74
    ld hl, $0322                                  ; $43e8: $21 $22 $03
    nop                                           ; $43eb: $00
    ld d, h                                       ; $43ec: $54
    ld l, b                                       ; $43ed: $68
    ld h, l                                       ; $43ee: $65
    jr nz, jr_01b_4464                            ; $43ef: $20 $73

    ld l, c                                       ; $43f1: $69
    ld h, a                                       ; $43f2: $67
    ld l, [hl]                                    ; $43f3: $6e

jr_01b_43f4:
    jr nz, jr_01b_4468                            ; $43f4: $20 $72

    ld h, l                                       ; $43f6: $65
    ld h, c                                       ; $43f7: $61
    ld h, h                                       ; $43f8: $64
    ld [hl], e                                    ; $43f9: $73
    ld a, [hl-]                                   ; $43fa: $3a
    ld bc, $4422                                  ; $43fb: $01 $22 $44
    ld l, a                                       ; $43fe: $6f
    ld l, [hl]                                    ; $43ff: $6e
    daa                                           ; $4400: $27
    ld [hl], h                                    ; $4401: $74
    jr nz, jr_01b_446a                            ; $4402: $20 $66

    ld l, a                                       ; $4404: $6f
    ld [hl], d                                    ; $4405: $72
    ld h, a                                       ; $4406: $67
    ld h, l                                       ; $4407: $65
    ld [hl], h                                    ; $4408: $74
    ld hl, $5020                                  ; $4409: $21 $20 $50
    ld l, c                                       ; $440c: $69
    ld h, e                                       ; $440d: $63

jr_01b_440e:
    ld l, e                                       ; $440e: $6b

jr_01b_440f:
    ld bc, $7075                                  ; $440f: $01 $75 $70
    jr nz, jr_01b_4475                            ; $4412: $20 $61

    ld h, [hl]                                    ; $4414: $66

jr_01b_4415:
    ld [hl], h                                    ; $4415: $74
    ld h, l                                       ; $4416: $65

jr_01b_4417:
    ld [hl], d                                    ; $4417: $72
    jr nz, @+$76                                  ; $4418: $20 $74

    ld h, l                                       ; $441a: $65

jr_01b_441b:
    ld h, l                                       ; $441b: $65
    jr nz, jr_01b_448d                            ; $441c: $20 $6f

    ld h, [hl]                                    ; $441e: $66
    ld h, [hl]                                    ; $441f: $66
    ld hl, $0322                                  ; $4420: $21 $22 $03
    nop                                           ; $4423: $00
    ld d, h                                       ; $4424: $54
    ld l, b                                       ; $4425: $68
    ld h, l                                       ; $4426: $65
    jr nz, @+$75                                  ; $4427: $20 $73

    ld l, c                                       ; $4429: $69
    ld h, a                                       ; $442a: $67
    ld l, [hl]                                    ; $442b: $6e
    jr nz, @+$74                                  ; $442c: $20 $72

    ld h, l                                       ; $442e: $65
    ld h, c                                       ; $442f: $61
    ld h, h                                       ; $4430: $64

jr_01b_4431:
    ld [hl], e                                    ; $4431: $73
    ld a, [hl-]                                   ; $4432: $3a

jr_01b_4433:
    ld bc, $5022                                  ; $4433: $01 $22 $50
    ld [hl], d                                    ; $4436: $72
    ld h, c                                       ; $4437: $61
    ld h, e                                       ; $4438: $63
    ld [hl], h                                    ; $4439: $74
    ld l, c                                       ; $443a: $69
    ld h, e                                       ; $443b: $63
    ld h, l                                       ; $443c: $65
    jr nz, jr_01b_44ac                            ; $443d: $20 $6d

    ld h, c                                       ; $443f: $61
    ld l, e                                       ; $4440: $6b
    ld h, l                                       ; $4441: $65
    ld [hl], e                                    ; $4442: $73
    ld bc, $6570                                  ; $4443: $01 $70 $65
    ld [hl], d                                    ; $4446: $72
    ld h, [hl]                                    ; $4447: $66
    ld h, l                                       ; $4448: $65
    ld h, e                                       ; $4449: $63
    ld [hl], h                                    ; $444a: $74
    ld l, $2e                                     ; $444b: $2e $2e
    ld l, $22                                     ; $444d: $2e $22
    inc bc                                        ; $444f: $03
    nop                                           ; $4450: $00
    ld d, h                                       ; $4451: $54
    ld l, b                                       ; $4452: $68

jr_01b_4453:
    ld h, l                                       ; $4453: $65
    jr nz, jr_01b_44c9                            ; $4454: $20 $73

    ld l, c                                       ; $4456: $69

jr_01b_4457:
    ld h, a                                       ; $4457: $67
    ld l, [hl]                                    ; $4458: $6e
    jr nz, @+$74                                  ; $4459: $20 $72

    ld h, l                                       ; $445b: $65
    ld h, c                                       ; $445c: $61
    ld h, h                                       ; $445d: $64
    ld [hl], e                                    ; $445e: $73
    ld a, [hl-]                                   ; $445f: $3a
    ld bc, $4222                                  ; $4460: $01 $22 $42
    ld h, l                                       ; $4463: $65

jr_01b_4464:
    ld [hl], a                                    ; $4464: $77
    ld h, c                                       ; $4465: $61
    ld [hl], d                                    ; $4466: $72
    ld h, l                                       ; $4467: $65

jr_01b_4468:
    jr nz, jr_01b_44de                            ; $4468: $20 $74

jr_01b_446a:
    ld l, b                                       ; $446a: $68
    ld h, l                                       ; $446b: $65
    ld bc, $6f62                                  ; $446c: $01 $62 $6f
    ld [hl], h                                    ; $446f: $74
    ld l, b                                       ; $4470: $68
    ld h, l                                       ; $4471: $65
    ld [hl], d                                    ; $4472: $72
    ld [hl], e                                    ; $4473: $73
    ld l, a                                       ; $4474: $6f

jr_01b_4475:
    ld l, l                                       ; $4475: $6d
    ld h, l                                       ; $4476: $65
    jr nz, @+$65                                  ; $4477: $20 $63

    ld [hl], d                                    ; $4479: $72
    ld l, a                                       ; $447a: $6f
    ld [hl], a                                    ; $447b: $77
    ld [hl], e                                    ; $447c: $73
    ld hl, $0322                                  ; $447d: $21 $22 $03
    nop                                           ; $4480: $00
    ld [hl+], a                                   ; $4481: $22
    ld [hl+], a                                   ; $4482: $22
    inc bc                                        ; $4483: $03
    nop                                           ; $4484: $00
    ld d, h                                       ; $4485: $54
    ld l, b                                       ; $4486: $68
    ld h, l                                       ; $4487: $65
    jr nz, jr_01b_44fd                            ; $4488: $20 $73

    ld l, c                                       ; $448a: $69
    ld h, a                                       ; $448b: $67
    ld l, [hl]                                    ; $448c: $6e

jr_01b_448d:
    jr nz, jr_01b_4501                            ; $448d: $20 $72

    ld h, l                                       ; $448f: $65
    ld h, c                                       ; $4490: $61
    ld h, h                                       ; $4491: $64
    ld [hl], e                                    ; $4492: $73
    ld a, [hl-]                                   ; $4493: $3a
    ld bc, $5322                                  ; $4494: $01 $22 $53
    ld l, b                                       ; $4497: $68
    ld l, a                                       ; $4498: $6f
    ld [hl], d                                    ; $4499: $72
    ld [hl], h                                    ; $449a: $74
    jr nz, jr_01b_44ff                            ; $449b: $20 $62

    ld [hl], l                                    ; $449d: $75
    ld [hl], h                                    ; $449e: $74
    jr nz, jr_01b_4514                            ; $449f: $20 $73

    ld [hl], a                                    ; $44a1: $77
    ld h, l                                       ; $44a2: $65
    ld h, l                                       ; $44a3: $65
    ld [hl], h                                    ; $44a4: $74
    ld hl, $5401                                  ; $44a5: $21 $01 $54
    ld l, a                                       ; $44a8: $6f
    jr nz, jr_01b_44fb                            ; $44a9: $20 $50

    ld l, c                                       ; $44ab: $69

jr_01b_44ac:
    ld [hl], h                                    ; $44ac: $74
    ld h, e                                       ; $44ad: $63
    ld l, b                                       ; $44ae: $68
    jr nz, jr_01b_4512                            ; $44af: $20 $61

    ld l, [hl]                                    ; $44b1: $6e
    ld h, h                                       ; $44b2: $64
    jr nz, jr_01b_4505                            ; $44b3: $20 $50

    ld [hl], l                                    ; $44b5: $75
    ld [hl], h                                    ; $44b6: $74
    ld [hl], h                                    ; $44b7: $74
    ld l, $22                                     ; $44b8: $2e $22
    inc bc                                        ; $44ba: $03
    nop                                           ; $44bb: $00
    ld d, h                                       ; $44bc: $54
    ld l, b                                       ; $44bd: $68
    ld h, l                                       ; $44be: $65
    jr nz, jr_01b_4534                            ; $44bf: $20 $73

    ld l, c                                       ; $44c1: $69
    ld h, a                                       ; $44c2: $67
    ld l, [hl]                                    ; $44c3: $6e
    jr nz, jr_01b_4538                            ; $44c4: $20 $72

    ld h, l                                       ; $44c6: $65
    ld h, c                                       ; $44c7: $61
    ld h, h                                       ; $44c8: $64

jr_01b_44c9:
    ld [hl], e                                    ; $44c9: $73
    ld a, [hl-]                                   ; $44ca: $3a
    ld bc, $4322                                  ; $44cb: $01 $22 $43
    ld l, a                                       ; $44ce: $6f
    ld l, l                                       ; $44cf: $6d
    ld h, l                                       ; $44d0: $65
    jr nz, @+$6a                                  ; $44d1: $20 $68

    ld h, c                                       ; $44d3: $61
    halt                                          ; $44d4: $76
    ld h, l                                       ; $44d5: $65
    jr nz, @+$7b                                  ; $44d6: $20 $79

    ld l, a                                       ; $44d8: $6f
    ld [hl], l                                    ; $44d9: $75
    ld [hl], d                                    ; $44da: $72
    ld bc, $7773                                  ; $44db: $01 $73 $77

jr_01b_44de:
    ld l, c                                       ; $44de: $69
    ld l, [hl]                                    ; $44df: $6e
    ld h, a                                       ; $44e0: $67
    jr nz, jr_01b_4548                            ; $44e1: $20 $65

    ld a, b                                       ; $44e3: $78
    ld h, c                                       ; $44e4: $61
    ld l, l                                       ; $44e5: $6d
    ld l, c                                       ; $44e6: $69
    ld l, [hl]                                    ; $44e7: $6e
    ld h, l                                       ; $44e8: $65
    ld h, h                                       ; $44e9: $64
    ld hl, $0322                                  ; $44ea: $21 $22 $03
    nop                                           ; $44ed: $00
    ld [hl+], a                                   ; $44ee: $22
    ld b, e                                       ; $44ef: $43
    ld l, h                                       ; $44f0: $6c
    ld [hl], l                                    ; $44f1: $75
    ld h, d                                       ; $44f2: $62
    jr nz, jr_01b_4542                            ; $44f3: $20 $4d

    ld h, c                                       ; $44f5: $61
    ld l, e                                       ; $44f6: $6b
    ld h, l                                       ; $44f7: $65
    ld [hl], d                                    ; $44f8: $72
    daa                                           ; $44f9: $27
    ld [hl], e                                    ; $44fa: $73

jr_01b_44fb:
    jr nz, @+$4a                                  ; $44fb: $20 $48

jr_01b_44fd:
    ld [hl], l                                    ; $44fd: $75
    ld [hl], h                                    ; $44fe: $74

jr_01b_44ff:
    ld [hl+], a                                   ; $44ff: $22
    inc bc                                        ; $4500: $03

jr_01b_4501:
    nop                                           ; $4501: $00
    ld [hl+], a                                   ; $4502: $22
    ld d, d                                       ; $4503: $52
    ld l, a                                       ; $4504: $6f

jr_01b_4505:
    ld h, c                                       ; $4505: $61
    ld h, h                                       ; $4506: $64
    jr nz, @+$76                                  ; $4507: $20 $74

    ld l, a                                       ; $4509: $6f
    ld bc, $6550                                  ; $450a: $01 $50 $65
    ld h, c                                       ; $450d: $61
    ld h, e                                       ; $450e: $63
    ld l, b                                       ; $450f: $68
    daa                                           ; $4510: $27
    ld [hl], e                                    ; $4511: $73

jr_01b_4512:
    jr nz, jr_01b_4557                            ; $4512: $20 $43

jr_01b_4514:
    ld h, c                                       ; $4514: $61
    ld [hl], e                                    ; $4515: $73
    ld [hl], h                                    ; $4516: $74
    ld l, h                                       ; $4517: $6c
    ld h, l                                       ; $4518: $65
    ld [hl+], a                                   ; $4519: $22
    inc bc                                        ; $451a: $03
    nop                                           ; $451b: $00
    ld [hl+], a                                   ; $451c: $22
    ld b, h                                       ; $451d: $44
    ld l, a                                       ; $451e: $6f
    ld [hl], a                                    ; $451f: $77
    ld l, [hl]                                    ; $4520: $6e
    jr nz, jr_01b_4597                            ; $4521: $20 $74

    ld l, a                                       ; $4523: $6f
    jr nz, @+$47                                  ; $4524: $20 $45

    ld h, c                                       ; $4526: $61
    ld [hl], d                                    ; $4527: $72
    ld [hl], h                                    ; $4528: $74
    ld l, b                                       ; $4529: $68
    ld [hl+], a                                   ; $452a: $22
    inc bc                                        ; $452b: $03
    nop                                           ; $452c: $00
    ld b, c                                       ; $452d: $41
    jr nz, jr_01b_459c                            ; $452e: $20 $6c

    ld h, c                                       ; $4530: $61
    ld [hl], d                                    ; $4531: $72
    ld h, a                                       ; $4532: $67
    ld h, l                                       ; $4533: $65

jr_01b_4534:
    jr nz, jr_01b_45aa                            ; $4534: $20 $74

    ld [hl], d                                    ; $4536: $72
    ld h, l                                       ; $4537: $65

jr_01b_4538:
    ld h, l                                       ; $4538: $65
    ld bc, $6c62                                  ; $4539: $01 $62 $6c
    ld l, a                                       ; $453c: $6f
    ld h, e                                       ; $453d: $63
    ld l, e                                       ; $453e: $6b
    ld [hl], e                                    ; $453f: $73
    jr nz, @+$76                                  ; $4540: $20 $74

jr_01b_4542:
    ld l, b                                       ; $4542: $68
    ld h, l                                       ; $4543: $65
    jr nz, @+$72                                  ; $4544: $20 $70

    ld h, c                                       ; $4546: $61
    ld [hl], h                                    ; $4547: $74

jr_01b_4548:
    ld l, b                                       ; $4548: $68
    ld l, $03                                     ; $4549: $2e $03
    nop                                           ; $454b: $00
    ld b, a                                       ; $454c: $47
    ld h, c                                       ; $454d: $61
    ld l, h                                       ; $454e: $6c
    ld h, l                                       ; $454f: $65
    jr nz, jr_01b_45a8                            ; $4550: $20 $56

    ld h, c                                       ; $4552: $61
    ld l, h                                       ; $4553: $6c
    ld l, h                                       ; $4554: $6c
    ld h, l                                       ; $4555: $65
    ld a, c                                       ; $4556: $79

jr_01b_4557:
    jr nz, jr_01b_459c                            ; $4557: $20 $43

    ld l, b                                       ; $4559: $68
    ld h, c                                       ; $455a: $61
    ld [hl], h                                    ; $455b: $74
    ld h, l                                       ; $455c: $65
    ld h, c                                       ; $455d: $61
    ld [hl], l                                    ; $455e: $75
    inc bc                                        ; $455f: $03
    nop                                           ; $4560: $00
    ld d, h                                       ; $4561: $54
    ld l, c                                       ; $4562: $69
    ld l, [hl]                                    ; $4563: $6e
    ld a, c                                       ; $4564: $79
    jr nz, jr_01b_45bb                            ; $4565: $20 $54

    ld l, a                                       ; $4567: $6f
    ld [hl], h                                    ; $4568: $74
    ld [hl], e                                    ; $4569: $73
    jr nz, jr_01b_45af                            ; $456a: $20 $43

    ld l, a                                       ; $456c: $6f
    ld [hl], l                                    ; $456d: $75
    ld [hl], d                                    ; $456e: $72
    ld [hl], e                                    ; $456f: $73
    ld h, l                                       ; $4570: $65
    inc bc                                        ; $4571: $03
    nop                                           ; $4572: $00
    ld c, l                                       ; $4573: $4d
    ld l, c                                       ; $4574: $69
    ld l, [hl]                                    ; $4575: $6e
    ld l, c                                       ; $4576: $69
    jr nz, @+$4e                                  ; $4577: $20 $4c

    ld h, c                                       ; $4579: $61
    ld l, e                                       ; $457a: $6b
    ld h, l                                       ; $457b: $65
    jr nz, jr_01b_45c1                            ; $457c: $20 $43

    ld l, a                                       ; $457e: $6f
    ld [hl], l                                    ; $457f: $75
    ld [hl], d                                    ; $4580: $72
    ld [hl], e                                    ; $4581: $73
    ld h, l                                       ; $4582: $65
    inc bc                                        ; $4583: $03
    nop                                           ; $4584: $00
    ld d, d                                       ; $4585: $52
    ld h, c                                       ; $4586: $61
    halt                                          ; $4587: $76
    ld h, l                                       ; $4588: $65
    ld l, [hl]                                    ; $4589: $6e
    jr nz, jr_01b_45e3                            ; $458a: $20 $57

    ld l, a                                       ; $458c: $6f
    ld l, a                                       ; $458d: $6f
    ld h, h                                       ; $458e: $64
    ld [hl], e                                    ; $458f: $73
    jr nz, jr_01b_45d5                            ; $4590: $20 $43

    ld l, a                                       ; $4592: $6f
    ld [hl], l                                    ; $4593: $75
    ld [hl], d                                    ; $4594: $72
    ld [hl], e                                    ; $4595: $73
    ld h, l                                       ; $4596: $65

jr_01b_4597:
    inc bc                                        ; $4597: $03
    nop                                           ; $4598: $00
    ld b, h                                       ; $4599: $44
    ld [hl], l                                    ; $459a: $75
    ld l, [hl]                                    ; $459b: $6e

jr_01b_459c:
    ld h, l                                       ; $459c: $65
    jr nz, jr_01b_45e2                            ; $459d: $20 $43

    ld l, h                                       ; $459f: $6c
    ld [hl], l                                    ; $45a0: $75
    ld h, d                                       ; $45a1: $62
    jr nz, jr_01b_45a4                            ; $45a2: $20 $00

jr_01b_45a4:
    ld b, a                                       ; $45a4: $47
    ld l, a                                       ; $45a5: $6f
    ld l, h                                       ; $45a6: $6c
    ld h, [hl]                                    ; $45a7: $66

jr_01b_45a8:
    jr nz, jr_01b_45f1                            ; $45a8: $20 $47

jr_01b_45aa:
    ld [hl], l                                    ; $45aa: $75
    ld [hl], d                                    ; $45ab: $72
    ld [hl], l                                    ; $45ac: $75
    daa                                           ; $45ad: $27
    ld [hl], e                                    ; $45ae: $73

jr_01b_45af:
    ld bc, $6950                                  ; $45af: $01 $50 $69
    ld [hl], h                                    ; $45b2: $74
    ld h, e                                       ; $45b3: $63
    ld l, b                                       ; $45b4: $68
    jr nz, jr_01b_4618                            ; $45b5: $20 $61

    ld l, [hl]                                    ; $45b7: $6e
    ld h, h                                       ; $45b8: $64
    jr nz, jr_01b_460b                            ; $45b9: $20 $50

jr_01b_45bb:
    ld [hl], l                                    ; $45bb: $75
    ld [hl], h                                    ; $45bc: $74
    ld [hl], h                                    ; $45bd: $74
    inc bc                                        ; $45be: $03
    nop                                           ; $45bf: $00
    ld b, a                                       ; $45c0: $47

jr_01b_45c1:
    ld l, a                                       ; $45c1: $6f
    ld l, h                                       ; $45c2: $6c
    ld h, [hl]                                    ; $45c3: $66
    jr nz, jr_01b_4609                            ; $45c4: $20 $43

    ld l, h                                       ; $45c6: $6c
    ld l, c                                       ; $45c7: $69
    ld l, [hl]                                    ; $45c8: $6e
    ld l, c                                       ; $45c9: $69
    ld h, e                                       ; $45ca: $63
    inc bc                                        ; $45cb: $03
    nop                                           ; $45cc: $00
    ld b, e                                       ; $45cd: $43
    ld l, h                                       ; $45ce: $6c
    ld [hl], l                                    ; $45cf: $75
    ld h, d                                       ; $45d0: $62
    jr nz, jr_01b_4620                            ; $45d1: $20 $4d

    ld h, c                                       ; $45d3: $61
    ld l, e                                       ; $45d4: $6b

jr_01b_45d5:
    ld h, l                                       ; $45d5: $65
    ld [hl], d                                    ; $45d6: $72
    daa                                           ; $45d7: $27
    ld [hl], e                                    ; $45d8: $73
    jr nz, jr_01b_4623                            ; $45d9: $20 $48

    ld [hl], l                                    ; $45db: $75
    ld [hl], h                                    ; $45dc: $74
    nop                                           ; $45dd: $00
    ld c, b                                       ; $45de: $48
    ld h, l                                       ; $45df: $65
    ld l, h                                       ; $45e0: $6c
    ld l, h                                       ; $45e1: $6c

jr_01b_45e2:
    ld l, a                                       ; $45e2: $6f

jr_01b_45e3:
    inc l                                         ; $45e3: $2c
    jr nz, jr_01b_45ed                            ; $45e4: $20 $07

    ld l, $03                                     ; $45e6: $2e $03
    nop                                           ; $45e8: $00
    ld d, e                                       ; $45e9: $53
    ld [hl], h                                    ; $45ea: $74
    ld h, c                                       ; $45eb: $61
    ld [hl], d                                    ; $45ec: $72

jr_01b_45ed:
    ld [hl], h                                    ; $45ed: $74
    ld l, c                                       ; $45ee: $69
    ld l, [hl]                                    ; $45ef: $6e
    ld h, a                                       ; $45f0: $67

jr_01b_45f1:
    jr nz, jr_01b_4654                            ; $45f1: $20 $61

    jr nz, @+$74                                  ; $45f3: $20 $72

    ld l, a                                       ; $45f5: $6f
    ld [hl], l                                    ; $45f6: $75
    ld l, [hl]                                    ; $45f7: $6e
    ld h, h                                       ; $45f8: $64
    ccf                                           ; $45f9: $3f
    nop                                           ; $45fa: $00
    ld b, e                                       ; $45fb: $43
    ld h, c                                       ; $45fc: $61
    ld l, h                                       ; $45fd: $6c
    ld l, h                                       ; $45fe: $6c
    jr nz, jr_01b_466e                            ; $45ff: $20 $6d

    ld h, l                                       ; $4601: $65
    jr nz, jr_01b_467b                            ; $4602: $20 $77

    ld l, b                                       ; $4604: $68
    ld h, l                                       ; $4605: $65
    ld l, [hl]                                    ; $4606: $6e
    jr nz, jr_01b_4682                            ; $4607: $20 $79

jr_01b_4609:
    ld l, a                                       ; $4609: $6f
    ld [hl], l                                    ; $460a: $75

jr_01b_460b:
    ld bc, $6177                                  ; $460b: $01 $77 $61
    ld l, [hl]                                    ; $460e: $6e
    ld [hl], h                                    ; $460f: $74
    jr nz, jr_01b_4686                            ; $4610: $20 $74

    ld l, a                                       ; $4612: $6f
    jr nz, @+$75                                  ; $4613: $20 $73

    ld [hl], h                                    ; $4615: $74
    ld h, c                                       ; $4616: $61
    ld [hl], d                                    ; $4617: $72

jr_01b_4618:
    ld [hl], h                                    ; $4618: $74
    ld l, $03                                     ; $4619: $2e $03
    nop                                           ; $461b: $00
    ld b, a                                       ; $461c: $47
    ld l, a                                       ; $461d: $6f
    jr nz, jr_01b_4681                            ; $461e: $20 $61

jr_01b_4620:
    ld l, b                                       ; $4620: $68
    ld h, l                                       ; $4621: $65
    ld h, c                                       ; $4622: $61

jr_01b_4623:
    ld h, h                                       ; $4623: $64
    jr nz, jr_01b_4687                            ; $4624: $20 $61

    ld l, [hl]                                    ; $4626: $6e
    ld h, h                                       ; $4627: $64
    jr nz, jr_01b_469d                            ; $4628: $20 $73

    ld [hl], h                                    ; $462a: $74
    ld h, c                                       ; $462b: $61
    ld [hl], d                                    ; $462c: $72
    ld [hl], h                                    ; $462d: $74
    ld bc, $7266                                  ; $462e: $01 $66 $72
    ld l, a                                       ; $4631: $6f
    ld l, l                                       ; $4632: $6d
    jr nz, jr_01b_467d                            ; $4633: $20 $48

    ld l, a                                       ; $4635: $6f
    ld l, h                                       ; $4636: $6c
    ld h, l                                       ; $4637: $65
    jr nz, @+$33                                  ; $4638: $20 $31

    ld l, $03                                     ; $463a: $2e $03
    nop                                           ; $463c: $00
    ld e, c                                       ; $463d: $59
    ld l, a                                       ; $463e: $6f
    ld [hl], l                                    ; $463f: $75
    jr nz, jr_01b_46a5                            ; $4640: $20 $63

    ld h, c                                       ; $4642: $61
    ld l, l                                       ; $4643: $6d
    ld h, l                                       ; $4644: $65
    jr nz, jr_01b_46bb                            ; $4645: $20 $74

    ld l, a                                       ; $4647: $6f
    jr nz, @+$69                                  ; $4648: $20 $67

    ld l, a                                       ; $464a: $6f
    ld l, h                                       ; $464b: $6c
    ld h, [hl]                                    ; $464c: $66
    ccf                                           ; $464d: $3f
    inc bc                                        ; $464e: $03
    nop                                           ; $464f: $00
    ld c, a                                       ; $4650: $4f
    ld l, [hl]                                    ; $4651: $6e
    ld l, h                                       ; $4652: $6c
    ld a, c                                       ; $4653: $79

jr_01b_4654:
    jr nz, jr_01b_46c6                            ; $4654: $20 $70

    ld l, h                                       ; $4656: $6c
    ld h, c                                       ; $4657: $61
    ld a, c                                       ; $4658: $79
    ld h, l                                       ; $4659: $65
    ld [hl], d                                    ; $465a: $72
    ld [hl], e                                    ; $465b: $73
    jr nz, jr_01b_46c1                            ; $465c: $20 $63

    ld h, c                                       ; $465e: $61
    ld l, [hl]                                    ; $465f: $6e
    ld bc, $6f67                                  ; $4660: $01 $67 $6f
    jr nz, jr_01b_46d4                            ; $4663: $20 $6f

    ld l, [hl]                                    ; $4665: $6e
    jr nz, jr_01b_46dc                            ; $4666: $20 $74

    ld l, b                                       ; $4668: $68
    ld h, l                                       ; $4669: $65
    jr nz, jr_01b_46cf                            ; $466a: $20 $63

    ld l, a                                       ; $466c: $6f
    ld [hl], l                                    ; $466d: $75

jr_01b_466e:
    ld [hl], d                                    ; $466e: $72
    ld [hl], e                                    ; $466f: $73
    ld h, l                                       ; $4670: $65
    ld l, $03                                     ; $4671: $2e $03
    nop                                           ; $4673: $00
    ld b, l                                       ; $4674: $45
    ld l, [hl]                                    ; $4675: $6e
    ld [hl], h                                    ; $4676: $74
    ld h, l                                       ; $4677: $65
    ld [hl], d                                    ; $4678: $72
    jr nz, jr_01b_46c8                            ; $4679: $20 $4d

jr_01b_467b:
    ld h, c                                       ; $467b: $61
    ld [hl], d                                    ; $467c: $72

jr_01b_467d:
    ld l, c                                       ; $467d: $69
    ld l, a                                       ; $467e: $6f
    ld l, [hl]                                    ; $467f: $6e
    daa                                           ; $4680: $27

jr_01b_4681:
    ld [hl], e                                    ; $4681: $73

jr_01b_4682:
    ld bc, $6c43                                  ; $4682: $01 $43 $6c
    ld [hl], l                                    ; $4685: $75

jr_01b_4686:
    ld h, d                                       ; $4686: $62

jr_01b_4687:
    jr nz, jr_01b_46dd                            ; $4687: $20 $54

    ld l, a                                       ; $4689: $6f
    ld [hl], l                                    ; $468a: $75
    ld [hl], d                                    ; $468b: $72
    ld l, [hl]                                    ; $468c: $6e
    ld h, c                                       ; $468d: $61
    ld l, l                                       ; $468e: $6d
    ld h, l                                       ; $468f: $65
    ld l, [hl]                                    ; $4690: $6e
    ld [hl], h                                    ; $4691: $74
    ccf                                           ; $4692: $3f
    nop                                           ; $4693: $00
    dec bc                                        ; $4694: $0b
    jr nz, jr_01b_46da                            ; $4695: $20 $43

    ld l, h                                       ; $4697: $6c
    ld [hl], l                                    ; $4698: $75
    ld h, d                                       ; $4699: $62
    ld bc, $6f54                                  ; $469a: $01 $54 $6f

jr_01b_469d:
    ld [hl], l                                    ; $469d: $75
    ld [hl], d                                    ; $469e: $72
    ld l, [hl]                                    ; $469f: $6e
    ld h, c                                       ; $46a0: $61
    ld l, l                                       ; $46a1: $6d
    ld h, l                                       ; $46a2: $65
    ld l, [hl]                                    ; $46a3: $6e
    ld [hl], h                                    ; $46a4: $74

jr_01b_46a5:
    daa                                           ; $46a5: $27
    ld [hl], e                                    ; $46a6: $73
    jr nz, jr_01b_4718                            ; $46a7: $20 $6f

    ld l, [hl]                                    ; $46a9: $6e
    ld l, h                                       ; $46aa: $6c
    ld a, c                                       ; $46ab: $79
    ld bc, $6f66                                  ; $46ac: $01 $66 $6f
    ld [hl], d                                    ; $46af: $72
    jr nz, jr_01b_4726                            ; $46b0: $20 $74

    ld l, b                                       ; $46b2: $68
    ld h, l                                       ; $46b3: $65
    jr nz, jr_01b_4727                            ; $46b4: $20 $71

    ld [hl], l                                    ; $46b6: $75
    ld h, c                                       ; $46b7: $61
    ld l, h                                       ; $46b8: $6c
    ld l, c                                       ; $46b9: $69
    ld h, [hl]                                    ; $46ba: $66

jr_01b_46bb:
    ld l, c                                       ; $46bb: $69
    ld h, l                                       ; $46bc: $65
    ld h, h                                       ; $46bd: $64
    ld l, $03                                     ; $46be: $2e $03
    nop                                           ; $46c0: $00

jr_01b_46c1:
    ld e, c                                       ; $46c1: $59
    ld l, a                                       ; $46c2: $6f
    ld [hl], l                                    ; $46c3: $75
    jr nz, jr_01b_4729                            ; $46c4: $20 $63

jr_01b_46c6:
    ld h, c                                       ; $46c6: $61
    ld l, [hl]                                    ; $46c7: $6e

jr_01b_46c8:
    jr nz, jr_01b_473a                            ; $46c8: $20 $70

    ld l, h                                       ; $46ca: $6c
    ld h, c                                       ; $46cb: $61
    ld a, c                                       ; $46cc: $79
    jr nz, jr_01b_4730                            ; $46cd: $20 $61

jr_01b_46cf:
    ld bc, $7270                                  ; $46cf: $01 $70 $72
    ld h, c                                       ; $46d2: $61
    ld h, e                                       ; $46d3: $63

jr_01b_46d4:
    ld [hl], h                                    ; $46d4: $74
    ld l, c                                       ; $46d5: $69
    ld h, e                                       ; $46d6: $63
    ld h, l                                       ; $46d7: $65
    jr nz, jr_01b_474c                            ; $46d8: $20 $72

jr_01b_46da:
    ld l, a                                       ; $46da: $6f
    ld [hl], l                                    ; $46db: $75

jr_01b_46dc:
    ld l, [hl]                                    ; $46dc: $6e

jr_01b_46dd:
    ld h, h                                       ; $46dd: $64
    ld bc, $6e61                                  ; $46de: $01 $61 $6e
    ld a, c                                       ; $46e1: $79
    ld [hl], h                                    ; $46e2: $74
    ld l, c                                       ; $46e3: $69
    ld l, l                                       ; $46e4: $6d
    ld h, l                                       ; $46e5: $65
    ld l, $20                                     ; $46e6: $2e $20
    ld d, e                                       ; $46e8: $53
    ld [hl], h                                    ; $46e9: $74
    ld h, c                                       ; $46ea: $61
    ld [hl], d                                    ; $46eb: $72
    ld [hl], h                                    ; $46ec: $74
    jr nz, @+$70                                  ; $46ed: $20 $6e

    ld l, a                                       ; $46ef: $6f
    ld [hl], a                                    ; $46f0: $77
    ccf                                           ; $46f1: $3f
    nop                                           ; $46f2: $00
    ld e, c                                       ; $46f3: $59
    ld l, a                                       ; $46f4: $6f
    ld [hl], l                                    ; $46f5: $75
    jr nz, jr_01b_475b                            ; $46f6: $20 $63

    ld h, c                                       ; $46f8: $61
    ld l, [hl]                                    ; $46f9: $6e
    jr nz, jr_01b_476f                            ; $46fa: $20 $73

    ld [hl], h                                    ; $46fc: $74
    ld h, c                                       ; $46fd: $61
    ld [hl], d                                    ; $46fe: $72
    ld [hl], h                                    ; $46ff: $74
    jr nz, @+$7b                                  ; $4700: $20 $79

    ld l, a                                       ; $4702: $6f
    ld [hl], l                                    ; $4703: $75
    ld [hl], d                                    ; $4704: $72
    ld bc, $6f72                                  ; $4705: $01 $72 $6f
    ld [hl], l                                    ; $4708: $75
    ld l, [hl]                                    ; $4709: $6e
    ld h, h                                       ; $470a: $64
    jr nz, jr_01b_476e                            ; $470b: $20 $61

    ld l, [hl]                                    ; $470d: $6e
    ld a, c                                       ; $470e: $79
    ld [hl], h                                    ; $470f: $74
    ld l, c                                       ; $4710: $69
    ld l, l                                       ; $4711: $6d
    ld h, l                                       ; $4712: $65
    ld bc, $6661                                  ; $4713: $01 $61 $66
    ld [hl], h                                    ; $4716: $74
    ld h, l                                       ; $4717: $65

jr_01b_4718:
    ld [hl], d                                    ; $4718: $72
    jr nz, jr_01b_478f                            ; $4719: $20 $74

    ld l, b                                       ; $471b: $68
    ld h, c                                       ; $471c: $61
    ld [hl], h                                    ; $471d: $74
    jr nz, jr_01b_4787                            ; $471e: $20 $67

    ld [hl], d                                    ; $4720: $72
    ld l, a                                       ; $4721: $6f
    ld [hl], l                                    ; $4722: $75
    ld [hl], b                                    ; $4723: $70
    ld l, $02                                     ; $4724: $2e $02

jr_01b_4726:
    ld d, a                                       ; $4726: $57

jr_01b_4727:
    ld l, c                                       ; $4727: $69
    ld l, h                                       ; $4728: $6c

jr_01b_4729:
    ld l, h                                       ; $4729: $6c
    jr nz, jr_01b_47a5                            ; $472a: $20 $79

    ld l, a                                       ; $472c: $6f
    ld [hl], l                                    ; $472d: $75
    jr nz, @+$75                                  ; $472e: $20 $73

jr_01b_4730:
    ld [hl], h                                    ; $4730: $74
    ld h, c                                       ; $4731: $61
    ld [hl], d                                    ; $4732: $72
    ld [hl], h                                    ; $4733: $74
    ld bc, $6972                                  ; $4734: $01 $72 $69
    ld h, a                                       ; $4737: $67
    ld l, b                                       ; $4738: $68
    ld [hl], h                                    ; $4739: $74

jr_01b_473a:
    jr nz, @+$63                                  ; $473a: $20 $61

    ld [hl], a                                    ; $473c: $77
    ld h, c                                       ; $473d: $61
    ld a, c                                       ; $473e: $79
    ccf                                           ; $473f: $3f
    nop                                           ; $4740: $00
    ld c, a                                       ; $4741: $4f
    ld c, e                                       ; $4742: $4b
    ld l, $20                                     ; $4743: $2e $20
    ld d, a                                       ; $4745: $57
    ld h, c                                       ; $4746: $61
    ld l, c                                       ; $4747: $69
    ld [hl], h                                    ; $4748: $74
    jr nz, jr_01b_47b1                            ; $4749: $20 $66

    ld l, a                                       ; $474b: $6f

jr_01b_474c:
    ld [hl], d                                    ; $474c: $72
    jr nz, jr_01b_47c3                            ; $474d: $20 $74

    ld l, b                                       ; $474f: $68
    ld h, l                                       ; $4750: $65
    ld l, l                                       ; $4751: $6d
    inc l                                         ; $4752: $2c
    ld bc, $6874                                  ; $4753: $01 $74 $68
    ld h, l                                       ; $4756: $65
    ld l, [hl]                                    ; $4757: $6e
    jr nz, jr_01b_47d3                            ; $4758: $20 $79

    ld l, a                                       ; $475a: $6f

jr_01b_475b:
    ld [hl], l                                    ; $475b: $75
    jr nz, jr_01b_47c1                            ; $475c: $20 $63

    ld h, c                                       ; $475e: $61
    ld l, [hl]                                    ; $475f: $6e
    jr nz, jr_01b_47d5                            ; $4760: $20 $73

    ld [hl], h                                    ; $4762: $74
    ld h, c                                       ; $4763: $61
    ld [hl], d                                    ; $4764: $72
    ld [hl], h                                    ; $4765: $74
    ld l, $03                                     ; $4766: $2e $03
    nop                                           ; $4768: $00
    ld b, l                                       ; $4769: $45
    ld l, [hl]                                    ; $476a: $6e
    ld [hl], h                                    ; $476b: $74
    ld h, l                                       ; $476c: $65
    ld [hl], d                                    ; $476d: $72

jr_01b_476e:
    ld l, c                                       ; $476e: $69

jr_01b_476f:
    ld l, [hl]                                    ; $476f: $6e
    ld h, a                                       ; $4770: $67
    jr nz, jr_01b_47c0                            ; $4771: $20 $4d

    ld h, c                                       ; $4773: $61
    ld [hl], d                                    ; $4774: $72
    ld l, c                                       ; $4775: $69
    ld l, a                                       ; $4776: $6f
    ld l, [hl]                                    ; $4777: $6e
    daa                                           ; $4778: $27
    ld [hl], e                                    ; $4779: $73
    ld bc, $6c43                                  ; $477a: $01 $43 $6c
    ld [hl], l                                    ; $477d: $75
    ld h, d                                       ; $477e: $62
    jr nz, jr_01b_47d5                            ; $477f: $20 $54

    ld l, a                                       ; $4781: $6f
    ld [hl], l                                    ; $4782: $75
    ld [hl], d                                    ; $4783: $72
    ld l, [hl]                                    ; $4784: $6e
    ld h, c                                       ; $4785: $61
    ld l, l                                       ; $4786: $6d

jr_01b_4787:
    ld h, l                                       ; $4787: $65
    ld l, [hl]                                    ; $4788: $6e
    ld [hl], h                                    ; $4789: $74
    inc l                                         ; $478a: $2c
    ld bc, $3f07                                  ; $478b: $01 $07 $3f
    nop                                           ; $478e: $00

jr_01b_478f:
    ld c, a                                       ; $478f: $4f
    ld c, b                                       ; $4790: $48
    ccf                                           ; $4791: $3f
    jr nz, jr_01b_47e4                            ; $4792: $20 $50

    ld l, h                                       ; $4794: $6c
    ld h, c                                       ; $4795: $61
    ld a, c                                       ; $4796: $79
    ld l, c                                       ; $4797: $69
    ld l, [hl]                                    ; $4798: $6e
    ld h, a                                       ; $4799: $67
    jr nz, jr_01b_47fd                            ; $479a: $20 $61

    jr nz, jr_01b_480e                            ; $479c: $20 $70

    ld [hl], d                                    ; $479e: $72
    ld h, c                                       ; $479f: $61
    ld h, e                                       ; $47a0: $63
    dec l                                         ; $47a1: $2d
    ld bc, $6974                                  ; $47a2: $01 $74 $69

jr_01b_47a5:
    ld h, e                                       ; $47a5: $63
    ld h, l                                       ; $47a6: $65
    jr nz, jr_01b_481b                            ; $47a7: $20 $72

    ld l, a                                       ; $47a9: $6f
    ld [hl], l                                    ; $47aa: $75
    ld l, [hl]                                    ; $47ab: $6e
    ld h, h                                       ; $47ac: $64
    jr nz, jr_01b_4823                            ; $47ad: $20 $74

    ld l, b                                       ; $47af: $68
    ld h, l                                       ; $47b0: $65

jr_01b_47b1:
    ld l, [hl]                                    ; $47b1: $6e
    ccf                                           ; $47b2: $3f
    nop                                           ; $47b3: $00
    ld e, c                                       ; $47b4: $59
    ld l, a                                       ; $47b5: $6f
    ld [hl], l                                    ; $47b6: $75
    daa                                           ; $47b7: $27
    ld l, h                                       ; $47b8: $6c
    ld l, h                                       ; $47b9: $6c
    jr nz, jr_01b_4821                            ; $47ba: $20 $65

    ld l, [hl]                                    ; $47bc: $6e
    ld [hl], h                                    ; $47bd: $74
    ld h, l                                       ; $47be: $65
    ld [hl], d                                    ; $47bf: $72

jr_01b_47c0:
    inc l                                         ; $47c0: $2c

jr_01b_47c1:
    jr nz, jr_01b_4828                            ; $47c1: $20 $65

jr_01b_47c3:
    ld l, b                                       ; $47c3: $68
    ld bc, $3f07                                  ; $47c4: $01 $07 $3f
    ld [bc], a                                    ; $47c7: $02
    ld c, d                                       ; $47c8: $4a
    ld l, a                                       ; $47c9: $6f
    ld l, c                                       ; $47ca: $69
    ld l, [hl]                                    ; $47cb: $6e
    jr nz, jr_01b_4842                            ; $47cc: $20 $74

    ld l, b                                       ; $47ce: $68
    ld h, l                                       ; $47cf: $65
    jr nz, @+$6e                                  ; $47d0: $20 $6c

    ld h, c                                       ; $47d2: $61

jr_01b_47d3:
    ld [hl], e                                    ; $47d3: $73
    ld [hl], h                                    ; $47d4: $74

jr_01b_47d5:
    ld bc, $7267                                  ; $47d5: $01 $67 $72
    ld l, a                                       ; $47d8: $6f
    ld [hl], l                                    ; $47d9: $75
    ld [hl], b                                    ; $47da: $70
    jr nz, jr_01b_480a                            ; $47db: $20 $2d

    jr nz, jr_01b_4853                            ; $47dd: $20 $74

    ld l, b                                       ; $47df: $68
    ld h, l                                       ; $47e0: $65
    ld a, c                                       ; $47e1: $79
    daa                                           ; $47e2: $27
    ld [hl], d                                    ; $47e3: $72

jr_01b_47e4:
    ld h, l                                       ; $47e4: $65
    ld bc, $6261                                  ; $47e5: $01 $61 $62
    ld l, a                                       ; $47e8: $6f
    ld [hl], l                                    ; $47e9: $75
    ld [hl], h                                    ; $47ea: $74
    jr nz, @+$76                                  ; $47eb: $20 $74

    ld l, a                                       ; $47ed: $6f
    jr nz, jr_01b_485c                            ; $47ee: $20 $6c

    ld h, l                                       ; $47f0: $65
    ld h, c                                       ; $47f1: $61
    halt                                          ; $47f2: $76
    ld h, l                                       ; $47f3: $65
    ld l, $03                                     ; $47f4: $2e $03
    nop                                           ; $47f6: $00
    ld d, h                                       ; $47f7: $54
    ld l, b                                       ; $47f8: $68
    ld h, l                                       ; $47f9: $65
    jr nz, jr_01b_4862                            ; $47fa: $20 $66

    ld l, c                                       ; $47fc: $69

jr_01b_47fd:
    ld l, [hl]                                    ; $47fd: $6e
    ld h, c                                       ; $47fe: $61
    ld l, h                                       ; $47ff: $6c
    jr nz, jr_01b_4869                            ; $4800: $20 $67

    ld [hl], d                                    ; $4802: $72
    ld l, a                                       ; $4803: $6f
    ld [hl], l                                    ; $4804: $75
    ld [hl], b                                    ; $4805: $70
    ld bc, $6977                                  ; $4806: $01 $77 $69
    ld l, h                                       ; $4809: $6c

jr_01b_480a:
    ld l, h                                       ; $480a: $6c
    jr nz, jr_01b_487b                            ; $480b: $20 $6e

    ld l, a                                       ; $480d: $6f

jr_01b_480e:
    ld [hl], a                                    ; $480e: $77
    jr nz, @+$64                                  ; $480f: $20 $62

    ld h, l                                       ; $4811: $65
    ld h, a                                       ; $4812: $67
    ld l, c                                       ; $4813: $69
    ld l, [hl]                                    ; $4814: $6e
    ld bc, $6874                                  ; $4815: $01 $74 $68
    ld h, l                                       ; $4818: $65
    jr nz, jr_01b_488f                            ; $4819: $20 $74

jr_01b_481b:
    ld l, a                                       ; $481b: $6f
    ld [hl], l                                    ; $481c: $75
    ld [hl], d                                    ; $481d: $72
    ld l, [hl]                                    ; $481e: $6e
    ld h, c                                       ; $481f: $61
    ld l, l                                       ; $4820: $6d

jr_01b_4821:
    ld h, l                                       ; $4821: $65
    ld l, [hl]                                    ; $4822: $6e

jr_01b_4823:
    ld [hl], h                                    ; $4823: $74
    ld l, $03                                     ; $4824: $2e $03
    nop                                           ; $4826: $00
    ld d, h                                       ; $4827: $54

jr_01b_4828:
    ld l, b                                       ; $4828: $68
    ld h, l                                       ; $4829: $65
    ld a, c                                       ; $482a: $79
    daa                                           ; $482b: $27
    ld [hl], d                                    ; $482c: $72
    ld h, l                                       ; $482d: $65
    jr nz, jr_01b_4891                            ; $482e: $20 $61

    ld h, d                                       ; $4830: $62
    ld l, a                                       ; $4831: $6f
    ld [hl], l                                    ; $4832: $75
    ld [hl], h                                    ; $4833: $74
    jr nz, jr_01b_48aa                            ; $4834: $20 $74

    ld l, a                                       ; $4836: $6f
    ld bc, $7473                                  ; $4837: $01 $73 $74
    ld h, c                                       ; $483a: $61
    ld [hl], d                                    ; $483b: $72
    ld [hl], h                                    ; $483c: $74
    ld l, $20                                     ; $483d: $2e $20
    ld b, a                                       ; $483f: $47
    ld l, a                                       ; $4840: $6f
    ld l, a                                       ; $4841: $6f

jr_01b_4842:
    ld h, h                                       ; $4842: $64
    jr nz, jr_01b_48b1                            ; $4843: $20 $6c

    ld [hl], l                                    ; $4845: $75
    ld h, e                                       ; $4846: $63
    ld l, e                                       ; $4847: $6b
    ld hl, $0003                                  ; $4848: $21 $03 $00
    ld d, h                                       ; $484b: $54
    ld l, b                                       ; $484c: $68
    ld h, c                                       ; $484d: $61
    ld l, [hl]                                    ; $484e: $6e
    ld l, e                                       ; $484f: $6b
    jr nz, jr_01b_48cb                            ; $4850: $20 $79

    ld l, a                                       ; $4852: $6f

jr_01b_4853:
    ld [hl], l                                    ; $4853: $75
    jr nz, @+$68                                  ; $4854: $20 $66

    ld l, a                                       ; $4856: $6f
    ld [hl], d                                    ; $4857: $72
    jr nz, jr_01b_48d1                            ; $4858: $20 $77

    ld h, c                                       ; $485a: $61
    ld l, c                                       ; $485b: $69

jr_01b_485c:
    ld [hl], h                                    ; $485c: $74
    ld l, c                                       ; $485d: $69
    ld l, [hl]                                    ; $485e: $6e
    ld h, a                                       ; $485f: $67
    ld l, $01                                     ; $4860: $2e $01

jr_01b_4862:
    ld d, h                                       ; $4862: $54
    ld l, b                                       ; $4863: $68
    ld h, l                                       ; $4864: $65
    jr nz, jr_01b_48cd                            ; $4865: $20 $66

    ld l, c                                       ; $4867: $69
    ld l, [hl]                                    ; $4868: $6e

jr_01b_4869:
    ld h, c                                       ; $4869: $61
    ld l, h                                       ; $486a: $6c
    jr nz, @+$69                                  ; $486b: $20 $67

    ld [hl], d                                    ; $486d: $72
    ld l, a                                       ; $486e: $6f
    ld [hl], l                                    ; $486f: $75
    ld [hl], b                                    ; $4870: $70
    ld bc, $616d                                  ; $4871: $01 $6d $61
    ld a, c                                       ; $4874: $79
    jr nz, jr_01b_48e5                            ; $4875: $20 $6e

    ld l, a                                       ; $4877: $6f
    ld [hl], a                                    ; $4878: $77
    jr nz, @+$75                                  ; $4879: $20 $73

jr_01b_487b:
    ld [hl], h                                    ; $487b: $74
    ld h, c                                       ; $487c: $61
    ld [hl], d                                    ; $487d: $72
    ld [hl], h                                    ; $487e: $74
    ld l, $03                                     ; $487f: $2e $03
    nop                                           ; $4881: $00
    ld b, c                                       ; $4882: $41
    jr nz, jr_01b_48b7                            ; $4883: $20 $32

    dec l                                         ; $4885: $2d
    ld [hl], b                                    ; $4886: $70
    ld l, h                                       ; $4887: $6c
    ld h, c                                       ; $4888: $61
    ld a, c                                       ; $4889: $79
    ld h, l                                       ; $488a: $65
    ld [hl], d                                    ; $488b: $72
    jr nz, jr_01b_4900                            ; $488c: $20 $72

    ld l, a                                       ; $488e: $6f

jr_01b_488f:
    ld [hl], l                                    ; $488f: $75
    ld l, [hl]                                    ; $4890: $6e

jr_01b_4891:
    ld h, h                                       ; $4891: $64
    ccf                                           ; $4892: $3f
    ld bc, $7349                                  ; $4893: $01 $49 $73
    jr nz, jr_01b_4901                            ; $4896: $20 $69

    ld [hl], h                                    ; $4898: $74
    jr nz, jr_01b_48fc                            ; $4899: $20 $61

    jr nz, jr_01b_48ea                            ; $489b: $20 $4d

    ld h, c                                       ; $489d: $61
    ld [hl], h                                    ; $489e: $74
    ld h, e                                       ; $489f: $63
    ld l, b                                       ; $48a0: $68
    jr nz, jr_01b_48ea                            ; $48a1: $20 $47

    ld h, c                                       ; $48a3: $61
    ld l, l                                       ; $48a4: $6d
    ld h, l                                       ; $48a5: $65
    ccf                                           ; $48a6: $3f
    nop                                           ; $48a7: $00
    ld c, a                                       ; $48a8: $4f
    ld l, [hl]                                    ; $48a9: $6e

jr_01b_48aa:
    ld l, h                                       ; $48aa: $6c
    ld a, c                                       ; $48ab: $79
    jr nz, jr_01b_491e                            ; $48ac: $20 $70

    ld l, h                                       ; $48ae: $6c
    ld h, c                                       ; $48af: $61
    ld a, c                                       ; $48b0: $79

jr_01b_48b1:
    ld h, l                                       ; $48b1: $65
    ld [hl], d                                    ; $48b2: $72
    ld [hl], e                                    ; $48b3: $73
    jr nz, @+$65                                  ; $48b4: $20 $63

    ld h, c                                       ; $48b6: $61

jr_01b_48b7:
    ld l, [hl]                                    ; $48b7: $6e
    ld bc, $6f67                                  ; $48b8: $01 $67 $6f
    jr nz, jr_01b_492c                            ; $48bb: $20 $6f

    ld l, [hl]                                    ; $48bd: $6e
    jr nz, jr_01b_4934                            ; $48be: $20 $74

    ld l, b                                       ; $48c0: $68
    ld h, l                                       ; $48c1: $65
    jr nz, jr_01b_4927                            ; $48c2: $20 $63

    ld l, a                                       ; $48c4: $6f
    ld [hl], l                                    ; $48c5: $75
    ld [hl], d                                    ; $48c6: $72
    ld [hl], e                                    ; $48c7: $73
    ld h, l                                       ; $48c8: $65
    ld l, $03                                     ; $48c9: $2e $03

jr_01b_48cb:
    nop                                           ; $48cb: $00
    ld e, c                                       ; $48cc: $59

jr_01b_48cd:
    ld l, a                                       ; $48cd: $6f
    ld [hl], l                                    ; $48ce: $75
    jr nz, jr_01b_4934                            ; $48cf: $20 $63

jr_01b_48d1:
    ld h, c                                       ; $48d1: $61
    ld l, [hl]                                    ; $48d2: $6e
    jr nz, @+$72                                  ; $48d3: $20 $70

    ld l, h                                       ; $48d5: $6c
    ld h, c                                       ; $48d6: $61
    ld a, c                                       ; $48d7: $79
    jr nz, jr_01b_493b                            ; $48d8: $20 $61

    ld bc, $614d                                  ; $48da: $01 $4d $61
    ld [hl], h                                    ; $48dd: $74
    ld h, e                                       ; $48de: $63
    ld l, b                                       ; $48df: $68
    jr nz, @+$49                                  ; $48e0: $20 $47

    ld h, c                                       ; $48e2: $61
    ld l, l                                       ; $48e3: $6d
    ld h, l                                       ; $48e4: $65

jr_01b_48e5:
    jr nz, jr_01b_4948                            ; $48e5: $20 $61

    ld l, [hl]                                    ; $48e7: $6e
    ld a, c                                       ; $48e8: $79
    ld [hl], h                                    ; $48e9: $74

jr_01b_48ea:
    ld l, c                                       ; $48ea: $69
    ld l, l                                       ; $48eb: $6d
    ld h, l                                       ; $48ec: $65
    ld l, $01                                     ; $48ed: $2e $01
    ld d, e                                       ; $48ef: $53
    ld [hl], h                                    ; $48f0: $74
    ld h, c                                       ; $48f1: $61
    ld [hl], d                                    ; $48f2: $72
    ld [hl], h                                    ; $48f3: $74
    jr nz, jr_01b_4964                            ; $48f4: $20 $6e

    ld l, a                                       ; $48f6: $6f
    ld [hl], a                                    ; $48f7: $77
    ccf                                           ; $48f8: $3f
    nop                                           ; $48f9: $00
    ld b, e                                       ; $48fa: $43
    ld h, c                                       ; $48fb: $61

jr_01b_48fc:
    ld l, h                                       ; $48fc: $6c
    ld l, h                                       ; $48fd: $6c
    jr nz, jr_01b_496d                            ; $48fe: $20 $6d

jr_01b_4900:
    ld h, l                                       ; $4900: $65

jr_01b_4901:
    jr nz, @+$79                                  ; $4901: $20 $77

    ld l, b                                       ; $4903: $68
    ld h, l                                       ; $4904: $65
    ld l, [hl]                                    ; $4905: $6e
    jr nz, jr_01b_4981                            ; $4906: $20 $79

    ld l, a                                       ; $4908: $6f
    ld [hl], l                                    ; $4909: $75
    ld bc, $6177                                  ; $490a: $01 $77 $61
    ld l, [hl]                                    ; $490d: $6e
    ld [hl], h                                    ; $490e: $74
    jr nz, jr_01b_4985                            ; $490f: $20 $74

    ld l, a                                       ; $4911: $6f
    jr nz, @+$75                                  ; $4912: $20 $73

    ld [hl], h                                    ; $4914: $74
    ld h, c                                       ; $4915: $61
    ld [hl], d                                    ; $4916: $72
    ld [hl], h                                    ; $4917: $74
    ld l, $03                                     ; $4918: $2e $03
    nop                                           ; $491a: $00
    ld c, b                                       ; $491b: $48
    ld l, c                                       ; $491c: $69
    inc l                                         ; $491d: $2c

jr_01b_491e:
    jr nz, jr_01b_4927                            ; $491e: $20 $07

    ld l, $2e                                     ; $4920: $2e $2e
    ld l, $01                                     ; $4922: $2e $01
    ld b, e                                       ; $4924: $43
    ld l, h                                       ; $4925: $6c
    ld [hl], l                                    ; $4926: $75

jr_01b_4927:
    ld h, d                                       ; $4927: $62
    jr nz, jr_01b_496d                            ; $4928: $20 $43

    ld l, b                                       ; $492a: $68
    ld h, c                                       ; $492b: $61

jr_01b_492c:
    ld l, l                                       ; $492c: $6d
    ld [hl], b                                    ; $492d: $70
    ld hl, $0003                                  ; $492e: $21 $03 $00
    ld b, c                                       ; $4931: $41
    jr nz, jr_01b_49a4                            ; $4932: $20 $70

jr_01b_4934:
    ld [hl], d                                    ; $4934: $72
    ld h, c                                       ; $4935: $61
    ld h, e                                       ; $4936: $63
    ld [hl], h                                    ; $4937: $74
    ld l, c                                       ; $4938: $69
    ld h, e                                       ; $4939: $63
    ld h, l                                       ; $493a: $65

jr_01b_493b:
    jr nz, jr_01b_49af                            ; $493b: $20 $72

    ld l, a                                       ; $493d: $6f
    ld [hl], l                                    ; $493e: $75
    ld l, [hl]                                    ; $493f: $6e
    ld h, h                                       ; $4940: $64
    ld bc, $7461                                  ; $4941: $01 $61 $74
    jr nz, jr_01b_4951                            ; $4944: $20 $0b

    jr nz, @+$45                                  ; $4946: $20 $43

jr_01b_4948:
    ld l, h                                       ; $4948: $6c
    ld [hl], l                                    ; $4949: $75
    ld h, d                                       ; $494a: $62
    ccf                                           ; $494b: $3f
    nop                                           ; $494c: $00
    ld d, a                                       ; $494d: $57
    ld h, l                                       ; $494e: $65
    ld l, h                                       ; $494f: $6c
    ld l, h                                       ; $4950: $6c

jr_01b_4951:
    jr nz, jr_01b_49c7                            ; $4951: $20 $74

    ld l, b                                       ; $4953: $68
    ld h, l                                       ; $4954: $65
    ld l, [hl]                                    ; $4955: $6e
    inc l                                         ; $4956: $2c
    jr nz, jr_01b_49d2                            ; $4957: $20 $79

    ld l, a                                       ; $4959: $6f
    ld [hl], l                                    ; $495a: $75
    ld bc, $6163                                  ; $495b: $01 $63 $61
    ld l, [hl]                                    ; $495e: $6e
    jr nz, @+$75                                  ; $495f: $20 $73

    ld [hl], h                                    ; $4961: $74
    ld h, c                                       ; $4962: $61
    ld [hl], d                                    ; $4963: $72

jr_01b_4964:
    ld [hl], h                                    ; $4964: $74
    jr nz, @+$70                                  ; $4965: $20 $6e

    ld h, l                                       ; $4967: $65
    ld a, b                                       ; $4968: $78
    ld [hl], h                                    ; $4969: $74
    ld l, $03                                     ; $496a: $2e $03
    nop                                           ; $496c: $00

jr_01b_496d:
    ld c, c                                       ; $496d: $49
    ld [hl], h                                    ; $496e: $74
    daa                                           ; $496f: $27
    ld [hl], e                                    ; $4970: $73
    jr nz, jr_01b_49e7                            ; $4971: $20 $74

    ld l, a                                       ; $4973: $6f
    ld l, a                                       ; $4974: $6f
    jr nz, @+$64                                  ; $4975: $20 $62

    ld h, c                                       ; $4977: $61
    ld h, h                                       ; $4978: $64
    jr nz, jr_01b_49f4                            ; $4979: $20 $79

    ld l, a                                       ; $497b: $6f
    ld [hl], l                                    ; $497c: $75
    ld bc, $6f63                                  ; $497d: $01 $63 $6f
    ld [hl], l                                    ; $4980: $75

jr_01b_4981:
    ld l, h                                       ; $4981: $6c
    ld h, h                                       ; $4982: $64
    ld l, [hl]                                    ; $4983: $6e
    daa                                           ; $4984: $27

jr_01b_4985:
    ld [hl], h                                    ; $4985: $74
    jr nz, jr_01b_49ff                            ; $4986: $20 $77

    ld l, c                                       ; $4988: $69
    ld l, [hl]                                    ; $4989: $6e
    ld l, $02                                     ; $498a: $2e $02
    ld b, a                                       ; $498c: $47
    ld l, a                                       ; $498d: $6f
    ld l, a                                       ; $498e: $6f
    ld h, h                                       ; $498f: $64
    jr nz, jr_01b_49fe                            ; $4990: $20 $6c

    ld [hl], l                                    ; $4992: $75
    ld h, e                                       ; $4993: $63
    ld l, e                                       ; $4994: $6b
    jr nz, jr_01b_4a00                            ; $4995: $20 $69

    ld l, [hl]                                    ; $4997: $6e
    jr nz, @+$76                                  ; $4998: $20 $74

    ld l, b                                       ; $499a: $68
    ld h, l                                       ; $499b: $65
    ld bc, $656e                                  ; $499c: $01 $6e $65
    ld a, b                                       ; $499f: $78
    ld [hl], h                                    ; $49a0: $74
    jr nz, jr_01b_4a17                            ; $49a1: $20 $74

    ld l, a                                       ; $49a3: $6f

jr_01b_49a4:
    ld [hl], l                                    ; $49a4: $75
    ld [hl], d                                    ; $49a5: $72
    ld l, [hl]                                    ; $49a6: $6e
    ld h, c                                       ; $49a7: $61
    ld l, l                                       ; $49a8: $6d
    ld h, l                                       ; $49a9: $65
    ld l, [hl]                                    ; $49aa: $6e
    ld [hl], h                                    ; $49ab: $74
    ld hl, $0003                                  ; $49ac: $21 $03 $00

jr_01b_49af:
    ld b, e                                       ; $49af: $43
    ld l, a                                       ; $49b0: $6f
    ld l, [hl]                                    ; $49b1: $6e
    ld h, a                                       ; $49b2: $67
    ld [hl], d                                    ; $49b3: $72
    ld h, c                                       ; $49b4: $61
    ld [hl], h                                    ; $49b5: $74
    ld [hl], l                                    ; $49b6: $75
    ld l, h                                       ; $49b7: $6c
    ld h, c                                       ; $49b8: $61
    ld [hl], h                                    ; $49b9: $74
    ld l, c                                       ; $49ba: $69
    ld l, a                                       ; $49bb: $6f
    ld l, [hl]                                    ; $49bc: $6e
    ld [hl], e                                    ; $49bd: $73
    jr nz, jr_01b_4a2f                            ; $49be: $20 $6f

    ld l, [hl]                                    ; $49c0: $6e
    ld bc, $6c70                                  ; $49c1: $01 $70 $6c
    ld h, c                                       ; $49c4: $61
    ld h, e                                       ; $49c5: $63
    ld l, c                                       ; $49c6: $69

jr_01b_49c7:
    ld l, [hl]                                    ; $49c7: $6e
    ld h, a                                       ; $49c8: $67
    jr nz, jr_01b_4a34                            ; $49c9: $20 $69

    ld l, [hl]                                    ; $49cb: $6e
    jr nz, jr_01b_4a1e                            ; $49cc: $20 $50

    ld h, c                                       ; $49ce: $61
    ld l, h                                       ; $49cf: $6c
    ld l, l                                       ; $49d0: $6d
    daa                                           ; $49d1: $27

jr_01b_49d2:
    ld [hl], e                                    ; $49d2: $73
    ld bc, $6c43                                  ; $49d3: $01 $43 $6c
    ld [hl], l                                    ; $49d6: $75
    ld h, d                                       ; $49d7: $62
    jr nz, jr_01b_4a2e                            ; $49d8: $20 $54

    ld l, a                                       ; $49da: $6f
    ld [hl], l                                    ; $49db: $75
    ld [hl], d                                    ; $49dc: $72
    ld l, [hl]                                    ; $49dd: $6e
    ld h, c                                       ; $49de: $61
    ld l, l                                       ; $49df: $6d
    ld h, l                                       ; $49e0: $65
    ld l, [hl]                                    ; $49e1: $6e
    ld [hl], h                                    ; $49e2: $74
    ld hl, $5402                                  ; $49e3: $21 $02 $54
    ld l, b                                       ; $49e6: $68

jr_01b_49e7:
    ld l, c                                       ; $49e7: $69
    ld [hl], e                                    ; $49e8: $73
    jr nz, @+$72                                  ; $49e9: $20 $70

    ld [hl], l                                    ; $49eb: $75
    ld [hl], h                                    ; $49ec: $74
    ld [hl], e                                    ; $49ed: $73
    jr nz, jr_01b_4a69                            ; $49ee: $20 $79

    ld l, a                                       ; $49f0: $6f
    ld [hl], l                                    ; $49f1: $75
    jr nz, jr_01b_4a63                            ; $49f2: $20 $6f

jr_01b_49f4:
    ld l, [hl]                                    ; $49f4: $6e
    ld h, l                                       ; $49f5: $65
    ld bc, $7473                                  ; $49f6: $01 $73 $74
    ld h, l                                       ; $49f9: $65
    ld [hl], b                                    ; $49fa: $70
    jr nz, jr_01b_4a60                            ; $49fb: $20 $63

    ld l, h                                       ; $49fd: $6c

jr_01b_49fe:
    ld l, a                                       ; $49fe: $6f

jr_01b_49ff:
    ld [hl], e                                    ; $49ff: $73

jr_01b_4a00:
    ld h, l                                       ; $4a00: $65
    ld [hl], d                                    ; $4a01: $72
    jr nz, jr_01b_4a78                            ; $4a02: $20 $74

    ld l, a                                       ; $4a04: $6f
    ld bc, $6562                                  ; $4a05: $01 $62 $65
    ld l, c                                       ; $4a08: $69
    ld l, [hl]                                    ; $4a09: $6e
    ld h, a                                       ; $4a0a: $67
    jr nz, jr_01b_4a6e                            ; $4a0b: $20 $61

    jr nz, jr_01b_4a7c                            ; $4a0d: $20 $6d

    ld h, c                                       ; $4a0f: $61
    ld [hl], e                                    ; $4a10: $73
    ld [hl], h                                    ; $4a11: $74
    ld h, l                                       ; $4a12: $65
    ld [hl], d                                    ; $4a13: $72
    ld hl, $0003                                  ; $4a14: $21 $03 $00

jr_01b_4a17:
    ld b, e                                       ; $4a17: $43
    ld l, a                                       ; $4a18: $6f
    ld l, [hl]                                    ; $4a19: $6e
    ld h, a                                       ; $4a1a: $67
    ld [hl], d                                    ; $4a1b: $72
    ld h, c                                       ; $4a1c: $61
    ld [hl], h                                    ; $4a1d: $74

jr_01b_4a1e:
    ld [hl], l                                    ; $4a1e: $75
    ld l, h                                       ; $4a1f: $6c
    ld h, c                                       ; $4a20: $61
    ld [hl], h                                    ; $4a21: $74
    ld l, c                                       ; $4a22: $69
    ld l, a                                       ; $4a23: $6f
    ld l, [hl]                                    ; $4a24: $6e
    ld [hl], e                                    ; $4a25: $73
    jr nz, jr_01b_4a97                            ; $4a26: $20 $6f

    ld l, [hl]                                    ; $4a28: $6e
    ld bc, $6977                                  ; $4a29: $01 $77 $69
    ld l, [hl]                                    ; $4a2c: $6e
    ld l, [hl]                                    ; $4a2d: $6e

jr_01b_4a2e:
    ld l, c                                       ; $4a2e: $69

jr_01b_4a2f:
    ld l, [hl]                                    ; $4a2f: $6e
    ld h, a                                       ; $4a30: $67
    jr nz, jr_01b_4a83                            ; $4a31: $20 $50

    ld h, c                                       ; $4a33: $61

jr_01b_4a34:
    ld l, h                                       ; $4a34: $6c
    ld l, l                                       ; $4a35: $6d
    daa                                           ; $4a36: $27
    ld [hl], e                                    ; $4a37: $73
    ld bc, $6c43                                  ; $4a38: $01 $43 $6c
    ld [hl], l                                    ; $4a3b: $75
    ld h, d                                       ; $4a3c: $62
    jr nz, jr_01b_4a93                            ; $4a3d: $20 $54

    ld l, a                                       ; $4a3f: $6f
    ld [hl], l                                    ; $4a40: $75
    ld [hl], d                                    ; $4a41: $72
    ld l, [hl]                                    ; $4a42: $6e
    ld h, c                                       ; $4a43: $61
    ld l, l                                       ; $4a44: $6d
    ld h, l                                       ; $4a45: $65
    ld l, [hl]                                    ; $4a46: $6e
    ld [hl], h                                    ; $4a47: $74
    ld hl, $4202                                  ; $4a48: $21 $02 $42
    ld [hl], l                                    ; $4a4b: $75
    ld [hl], h                                    ; $4a4c: $74
    jr nz, jr_01b_4ab3                            ; $4a4d: $20 $64

    ld l, a                                       ; $4a4f: $6f
    ld l, [hl]                                    ; $4a50: $6e
    daa                                           ; $4a51: $27
    ld [hl], h                                    ; $4a52: $74
    jr nz, jr_01b_4ac8                            ; $4a53: $20 $73

    ld h, l                                       ; $4a55: $65
    ld [hl], h                                    ; $4a56: $74
    ld [hl], h                                    ; $4a57: $74
    ld l, h                                       ; $4a58: $6c
    ld h, l                                       ; $4a59: $65
    ld bc, $6f66                                  ; $4a5a: $01 $66 $6f
    ld [hl], d                                    ; $4a5d: $72
    jr nz, @+$76                                  ; $4a5e: $20 $74

jr_01b_4a60:
    ld l, b                                       ; $4a60: $68
    ld h, c                                       ; $4a61: $61
    ld [hl], h                                    ; $4a62: $74

jr_01b_4a63:
    ld hl, $4b20                                  ; $4a63: $21 $20 $4b
    ld h, l                                       ; $4a66: $65
    ld h, l                                       ; $4a67: $65
    ld [hl], b                                    ; $4a68: $70

jr_01b_4a69:
    ld bc, $6c63                                  ; $4a69: $01 $63 $6c
    ld l, c                                       ; $4a6c: $69
    ld l, l                                       ; $4a6d: $6d

jr_01b_4a6e:
    ld h, d                                       ; $4a6e: $62
    ld l, c                                       ; $4a6f: $69
    ld l, [hl]                                    ; $4a70: $6e
    ld h, a                                       ; $4a71: $67
    jr nz, jr_01b_4ae8                            ; $4a72: $20 $74

    ld l, b                                       ; $4a74: $68
    ld h, l                                       ; $4a75: $65
    jr nz, jr_01b_4aea                            ; $4a76: $20 $72

jr_01b_4a78:
    ld h, c                                       ; $4a78: $61
    ld l, [hl]                                    ; $4a79: $6e
    ld l, e                                       ; $4a7a: $6b
    ld [hl], e                                    ; $4a7b: $73

jr_01b_4a7c:
    ld hl, $0003                                  ; $4a7c: $21 $03 $00
    ld c, c                                       ; $4a7f: $49
    ld [hl], h                                    ; $4a80: $74
    daa                                           ; $4a81: $27
    ld [hl], e                                    ; $4a82: $73

jr_01b_4a83:
    jr nz, jr_01b_4af9                            ; $4a83: $20 $74

    ld l, a                                       ; $4a85: $6f
    ld l, a                                       ; $4a86: $6f
    jr nz, @+$64                                  ; $4a87: $20 $62

    ld h, c                                       ; $4a89: $61
    ld h, h                                       ; $4a8a: $64
    jr nz, jr_01b_4b06                            ; $4a8b: $20 $79

    ld l, a                                       ; $4a8d: $6f
    ld [hl], l                                    ; $4a8e: $75
    ld bc, $6f63                                  ; $4a8f: $01 $63 $6f
    ld [hl], l                                    ; $4a92: $75

jr_01b_4a93:
    ld l, h                                       ; $4a93: $6c
    ld h, h                                       ; $4a94: $64
    ld l, [hl]                                    ; $4a95: $6e
    daa                                           ; $4a96: $27

jr_01b_4a97:
    ld [hl], h                                    ; $4a97: $74
    jr nz, jr_01b_4b11                            ; $4a98: $20 $77

    ld l, c                                       ; $4a9a: $69
    ld l, [hl]                                    ; $4a9b: $6e
    ld l, $02                                     ; $4a9c: $2e $02
    ld b, a                                       ; $4a9e: $47
    ld l, a                                       ; $4a9f: $6f
    ld l, a                                       ; $4aa0: $6f
    ld h, h                                       ; $4aa1: $64
    jr nz, jr_01b_4b10                            ; $4aa2: $20 $6c

    ld [hl], l                                    ; $4aa4: $75
    ld h, e                                       ; $4aa5: $63
    ld l, e                                       ; $4aa6: $6b
    jr nz, jr_01b_4b12                            ; $4aa7: $20 $69

    ld l, [hl]                                    ; $4aa9: $6e
    jr nz, @+$76                                  ; $4aaa: $20 $74

    ld l, b                                       ; $4aac: $68
    ld h, l                                       ; $4aad: $65
    ld bc, $656e                                  ; $4aae: $01 $6e $65
    ld a, b                                       ; $4ab1: $78
    ld [hl], h                                    ; $4ab2: $74

jr_01b_4ab3:
    jr nz, jr_01b_4b29                            ; $4ab3: $20 $74

    ld l, a                                       ; $4ab5: $6f
    ld [hl], l                                    ; $4ab6: $75
    ld [hl], d                                    ; $4ab7: $72
    ld l, [hl]                                    ; $4ab8: $6e
    ld h, c                                       ; $4ab9: $61
    ld l, l                                       ; $4aba: $6d
    ld h, l                                       ; $4abb: $65
    ld l, [hl]                                    ; $4abc: $6e
    ld [hl], h                                    ; $4abd: $74
    ld hl, $0003                                  ; $4abe: $21 $03 $00
    ld b, e                                       ; $4ac1: $43
    ld l, a                                       ; $4ac2: $6f
    ld l, [hl]                                    ; $4ac3: $6e
    ld h, a                                       ; $4ac4: $67
    ld [hl], d                                    ; $4ac5: $72
    ld h, c                                       ; $4ac6: $61
    ld [hl], h                                    ; $4ac7: $74

jr_01b_4ac8:
    ld [hl], l                                    ; $4ac8: $75
    ld l, h                                       ; $4ac9: $6c
    ld h, c                                       ; $4aca: $61
    ld [hl], h                                    ; $4acb: $74
    ld l, c                                       ; $4acc: $69
    ld l, a                                       ; $4acd: $6f
    ld l, [hl]                                    ; $4ace: $6e
    ld [hl], e                                    ; $4acf: $73
    jr nz, jr_01b_4b41                            ; $4ad0: $20 $6f

    ld l, [hl]                                    ; $4ad2: $6e
    ld bc, $6c70                                  ; $4ad3: $01 $70 $6c
    ld h, c                                       ; $4ad6: $61
    ld h, e                                       ; $4ad7: $63
    ld l, c                                       ; $4ad8: $69
    ld l, [hl]                                    ; $4ad9: $6e
    ld h, a                                       ; $4ada: $67
    jr nz, jr_01b_4b46                            ; $4adb: $20 $69

    ld l, [hl]                                    ; $4add: $6e
    jr nz, jr_01b_4b24                            ; $4ade: $20 $44

    ld [hl], l                                    ; $4ae0: $75
    ld l, [hl]                                    ; $4ae1: $6e
    ld h, l                                       ; $4ae2: $65
    daa                                           ; $4ae3: $27
    ld [hl], e                                    ; $4ae4: $73
    ld bc, $6c43                                  ; $4ae5: $01 $43 $6c

jr_01b_4ae8:
    ld [hl], l                                    ; $4ae8: $75
    ld h, d                                       ; $4ae9: $62

jr_01b_4aea:
    jr nz, jr_01b_4b40                            ; $4aea: $20 $54

    ld l, a                                       ; $4aec: $6f
    ld [hl], l                                    ; $4aed: $75
    ld [hl], d                                    ; $4aee: $72
    ld l, [hl]                                    ; $4aef: $6e
    ld h, c                                       ; $4af0: $61
    ld l, l                                       ; $4af1: $6d
    ld h, l                                       ; $4af2: $65
    ld l, [hl]                                    ; $4af3: $6e
    ld [hl], h                                    ; $4af4: $74
    ld hl, $5402                                  ; $4af5: $21 $02 $54
    ld l, b                                       ; $4af8: $68

jr_01b_4af9:
    ld l, c                                       ; $4af9: $69
    ld [hl], e                                    ; $4afa: $73
    jr nz, @+$72                                  ; $4afb: $20 $70

    ld [hl], l                                    ; $4afd: $75
    ld [hl], h                                    ; $4afe: $74
    ld [hl], e                                    ; $4aff: $73
    jr nz, jr_01b_4b7b                            ; $4b00: $20 $79

    ld l, a                                       ; $4b02: $6f
    ld [hl], l                                    ; $4b03: $75
    jr nz, jr_01b_4b75                            ; $4b04: $20 $6f

jr_01b_4b06:
    ld l, [hl]                                    ; $4b06: $6e
    ld h, l                                       ; $4b07: $65
    ld bc, $7473                                  ; $4b08: $01 $73 $74
    ld h, l                                       ; $4b0b: $65
    ld [hl], b                                    ; $4b0c: $70
    jr nz, jr_01b_4b72                            ; $4b0d: $20 $63

    ld l, h                                       ; $4b0f: $6c

jr_01b_4b10:
    ld l, a                                       ; $4b10: $6f

jr_01b_4b11:
    ld [hl], e                                    ; $4b11: $73

jr_01b_4b12:
    ld h, l                                       ; $4b12: $65
    ld [hl], d                                    ; $4b13: $72
    jr nz, jr_01b_4b8a                            ; $4b14: $20 $74

    ld l, a                                       ; $4b16: $6f
    ld bc, $6562                                  ; $4b17: $01 $62 $65
    ld l, c                                       ; $4b1a: $69
    ld l, [hl]                                    ; $4b1b: $6e
    ld h, a                                       ; $4b1c: $67
    jr nz, jr_01b_4b80                            ; $4b1d: $20 $61

    jr nz, jr_01b_4b8e                            ; $4b1f: $20 $6d

    ld h, c                                       ; $4b21: $61
    ld [hl], e                                    ; $4b22: $73
    ld [hl], h                                    ; $4b23: $74

jr_01b_4b24:
    ld h, l                                       ; $4b24: $65
    ld [hl], d                                    ; $4b25: $72
    ld hl, $0003                                  ; $4b26: $21 $03 $00

jr_01b_4b29:
    ld b, e                                       ; $4b29: $43
    ld l, a                                       ; $4b2a: $6f
    ld l, [hl]                                    ; $4b2b: $6e
    ld h, a                                       ; $4b2c: $67
    ld [hl], d                                    ; $4b2d: $72
    ld h, c                                       ; $4b2e: $61
    ld [hl], h                                    ; $4b2f: $74
    ld [hl], l                                    ; $4b30: $75
    ld l, h                                       ; $4b31: $6c
    ld h, c                                       ; $4b32: $61
    ld [hl], h                                    ; $4b33: $74
    ld l, c                                       ; $4b34: $69
    ld l, a                                       ; $4b35: $6f
    ld l, [hl]                                    ; $4b36: $6e
    ld [hl], e                                    ; $4b37: $73
    jr nz, jr_01b_4ba9                            ; $4b38: $20 $6f

    ld l, [hl]                                    ; $4b3a: $6e
    ld bc, $6977                                  ; $4b3b: $01 $77 $69
    ld l, [hl]                                    ; $4b3e: $6e
    ld l, [hl]                                    ; $4b3f: $6e

jr_01b_4b40:
    ld l, c                                       ; $4b40: $69

jr_01b_4b41:
    ld l, [hl]                                    ; $4b41: $6e
    ld h, a                                       ; $4b42: $67
    jr nz, @+$46                                  ; $4b43: $20 $44

    ld [hl], l                                    ; $4b45: $75

jr_01b_4b46:
    ld l, [hl]                                    ; $4b46: $6e
    ld h, l                                       ; $4b47: $65
    daa                                           ; $4b48: $27
    ld [hl], e                                    ; $4b49: $73
    ld bc, $6c43                                  ; $4b4a: $01 $43 $6c
    ld [hl], l                                    ; $4b4d: $75
    ld h, d                                       ; $4b4e: $62
    jr nz, jr_01b_4ba5                            ; $4b4f: $20 $54

    ld l, a                                       ; $4b51: $6f
    ld [hl], l                                    ; $4b52: $75
    ld [hl], d                                    ; $4b53: $72
    ld l, [hl]                                    ; $4b54: $6e
    ld h, c                                       ; $4b55: $61
    ld l, l                                       ; $4b56: $6d
    ld h, l                                       ; $4b57: $65
    ld l, [hl]                                    ; $4b58: $6e
    ld [hl], h                                    ; $4b59: $74
    ld hl, $4202                                  ; $4b5a: $21 $02 $42
    ld [hl], l                                    ; $4b5d: $75
    ld [hl], h                                    ; $4b5e: $74
    jr nz, jr_01b_4bc5                            ; $4b5f: $20 $64

    ld l, a                                       ; $4b61: $6f
    ld l, [hl]                                    ; $4b62: $6e
    daa                                           ; $4b63: $27
    ld [hl], h                                    ; $4b64: $74
    jr nz, jr_01b_4bda                            ; $4b65: $20 $73

    ld h, l                                       ; $4b67: $65
    ld [hl], h                                    ; $4b68: $74
    ld [hl], h                                    ; $4b69: $74
    ld l, h                                       ; $4b6a: $6c
    ld h, l                                       ; $4b6b: $65
    ld bc, $6f66                                  ; $4b6c: $01 $66 $6f
    ld [hl], d                                    ; $4b6f: $72
    jr nz, @+$76                                  ; $4b70: $20 $74

jr_01b_4b72:
    ld l, b                                       ; $4b72: $68
    ld h, c                                       ; $4b73: $61
    ld [hl], h                                    ; $4b74: $74

jr_01b_4b75:
    ld hl, $4b20                                  ; $4b75: $21 $20 $4b
    ld h, l                                       ; $4b78: $65
    ld h, l                                       ; $4b79: $65
    ld [hl], b                                    ; $4b7a: $70

jr_01b_4b7b:
    ld bc, $6c63                                  ; $4b7b: $01 $63 $6c
    ld l, c                                       ; $4b7e: $69
    ld l, l                                       ; $4b7f: $6d

jr_01b_4b80:
    ld h, d                                       ; $4b80: $62
    ld l, c                                       ; $4b81: $69
    ld l, [hl]                                    ; $4b82: $6e
    ld h, a                                       ; $4b83: $67
    jr nz, jr_01b_4bfa                            ; $4b84: $20 $74

    ld l, b                                       ; $4b86: $68
    ld h, l                                       ; $4b87: $65
    jr nz, jr_01b_4bfc                            ; $4b88: $20 $72

jr_01b_4b8a:
    ld h, c                                       ; $4b8a: $61
    ld l, [hl]                                    ; $4b8b: $6e
    ld l, e                                       ; $4b8c: $6b
    ld [hl], e                                    ; $4b8d: $73

jr_01b_4b8e:
    ld hl, $0003                                  ; $4b8e: $21 $03 $00
    ld c, c                                       ; $4b91: $49
    ld [hl], h                                    ; $4b92: $74
    daa                                           ; $4b93: $27
    ld [hl], e                                    ; $4b94: $73
    jr nz, jr_01b_4c0b                            ; $4b95: $20 $74

    ld l, a                                       ; $4b97: $6f
    ld l, a                                       ; $4b98: $6f
    jr nz, @+$64                                  ; $4b99: $20 $62

    ld h, c                                       ; $4b9b: $61
    ld h, h                                       ; $4b9c: $64
    jr nz, jr_01b_4c18                            ; $4b9d: $20 $79

    ld l, a                                       ; $4b9f: $6f
    ld [hl], l                                    ; $4ba0: $75
    ld bc, $6f63                                  ; $4ba1: $01 $63 $6f
    ld [hl], l                                    ; $4ba4: $75

jr_01b_4ba5:
    ld l, h                                       ; $4ba5: $6c
    ld h, h                                       ; $4ba6: $64
    ld l, [hl]                                    ; $4ba7: $6e
    daa                                           ; $4ba8: $27

jr_01b_4ba9:
    ld [hl], h                                    ; $4ba9: $74
    jr nz, jr_01b_4c23                            ; $4baa: $20 $77

    ld l, c                                       ; $4bac: $69
    ld l, [hl]                                    ; $4bad: $6e
    ld l, $02                                     ; $4bae: $2e $02
    ld b, a                                       ; $4bb0: $47
    ld l, a                                       ; $4bb1: $6f
    ld l, a                                       ; $4bb2: $6f
    ld h, h                                       ; $4bb3: $64
    jr nz, jr_01b_4c22                            ; $4bb4: $20 $6c

    ld [hl], l                                    ; $4bb6: $75
    ld h, e                                       ; $4bb7: $63
    ld l, e                                       ; $4bb8: $6b
    jr nz, jr_01b_4c24                            ; $4bb9: $20 $69

    ld l, [hl]                                    ; $4bbb: $6e
    jr nz, @+$76                                  ; $4bbc: $20 $74

    ld l, b                                       ; $4bbe: $68
    ld h, l                                       ; $4bbf: $65
    ld bc, $656e                                  ; $4bc0: $01 $6e $65
    ld a, b                                       ; $4bc3: $78
    ld [hl], h                                    ; $4bc4: $74

jr_01b_4bc5:
    jr nz, jr_01b_4c3b                            ; $4bc5: $20 $74

    ld l, a                                       ; $4bc7: $6f
    ld [hl], l                                    ; $4bc8: $75
    ld [hl], d                                    ; $4bc9: $72
    ld l, [hl]                                    ; $4bca: $6e
    ld h, c                                       ; $4bcb: $61
    ld l, l                                       ; $4bcc: $6d
    ld h, l                                       ; $4bcd: $65
    ld l, [hl]                                    ; $4bce: $6e
    ld [hl], h                                    ; $4bcf: $74
    ld hl, $0003                                  ; $4bd0: $21 $03 $00
    ld b, e                                       ; $4bd3: $43
    ld l, a                                       ; $4bd4: $6f
    ld l, [hl]                                    ; $4bd5: $6e
    ld h, a                                       ; $4bd6: $67
    ld [hl], d                                    ; $4bd7: $72
    ld h, c                                       ; $4bd8: $61
    ld [hl], h                                    ; $4bd9: $74

jr_01b_4bda:
    ld [hl], l                                    ; $4bda: $75
    ld l, h                                       ; $4bdb: $6c
    ld h, c                                       ; $4bdc: $61
    ld [hl], h                                    ; $4bdd: $74
    ld l, c                                       ; $4bde: $69
    ld l, a                                       ; $4bdf: $6f
    ld l, [hl]                                    ; $4be0: $6e
    ld [hl], e                                    ; $4be1: $73
    jr nz, jr_01b_4c53                            ; $4be2: $20 $6f

    ld l, [hl]                                    ; $4be4: $6e
    ld bc, $6c70                                  ; $4be5: $01 $70 $6c
    ld h, c                                       ; $4be8: $61
    ld h, e                                       ; $4be9: $63
    ld l, c                                       ; $4bea: $69
    ld l, [hl]                                    ; $4beb: $6e
    ld h, a                                       ; $4bec: $67
    jr nz, jr_01b_4c58                            ; $4bed: $20 $69

    ld l, [hl]                                    ; $4bef: $6e
    jr nz, jr_01b_4c3e                            ; $4bf0: $20 $4c

    ld l, c                                       ; $4bf2: $69
    ld l, [hl]                                    ; $4bf3: $6e
    ld l, e                                       ; $4bf4: $6b
    ld [hl], e                                    ; $4bf5: $73
    daa                                           ; $4bf6: $27
    ld bc, $6c43                                  ; $4bf7: $01 $43 $6c

jr_01b_4bfa:
    ld [hl], l                                    ; $4bfa: $75
    ld h, d                                       ; $4bfb: $62

jr_01b_4bfc:
    jr nz, jr_01b_4c52                            ; $4bfc: $20 $54

    ld l, a                                       ; $4bfe: $6f
    ld [hl], l                                    ; $4bff: $75
    ld [hl], d                                    ; $4c00: $72
    ld l, [hl]                                    ; $4c01: $6e
    ld h, c                                       ; $4c02: $61
    ld l, l                                       ; $4c03: $6d
    ld h, l                                       ; $4c04: $65
    ld l, [hl]                                    ; $4c05: $6e
    ld [hl], h                                    ; $4c06: $74
    ld hl, $5402                                  ; $4c07: $21 $02 $54
    ld l, b                                       ; $4c0a: $68

jr_01b_4c0b:
    ld l, c                                       ; $4c0b: $69
    ld [hl], e                                    ; $4c0c: $73
    jr nz, jr_01b_4c7f                            ; $4c0d: $20 $70

    ld [hl], l                                    ; $4c0f: $75
    ld [hl], h                                    ; $4c10: $74
    ld [hl], e                                    ; $4c11: $73
    jr nz, jr_01b_4c8d                            ; $4c12: $20 $79

    ld l, a                                       ; $4c14: $6f
    ld [hl], l                                    ; $4c15: $75
    jr nz, jr_01b_4c87                            ; $4c16: $20 $6f

jr_01b_4c18:
    ld l, [hl]                                    ; $4c18: $6e
    ld h, l                                       ; $4c19: $65
    ld bc, $7473                                  ; $4c1a: $01 $73 $74
    ld h, l                                       ; $4c1d: $65
    ld [hl], b                                    ; $4c1e: $70
    jr nz, @+$65                                  ; $4c1f: $20 $63

    ld l, h                                       ; $4c21: $6c

jr_01b_4c22:
    ld l, a                                       ; $4c22: $6f

jr_01b_4c23:
    ld [hl], e                                    ; $4c23: $73

jr_01b_4c24:
    ld h, l                                       ; $4c24: $65
    ld [hl], d                                    ; $4c25: $72
    jr nz, @+$76                                  ; $4c26: $20 $74

    ld l, a                                       ; $4c28: $6f
    ld bc, $6562                                  ; $4c29: $01 $62 $65
    ld l, c                                       ; $4c2c: $69
    ld l, [hl]                                    ; $4c2d: $6e
    ld h, a                                       ; $4c2e: $67
    jr nz, jr_01b_4c92                            ; $4c2f: $20 $61

    jr nz, jr_01b_4ca0                            ; $4c31: $20 $6d

    ld h, c                                       ; $4c33: $61
    ld [hl], e                                    ; $4c34: $73
    ld [hl], h                                    ; $4c35: $74
    ld h, l                                       ; $4c36: $65
    ld [hl], d                                    ; $4c37: $72
    ld hl, $0003                                  ; $4c38: $21 $03 $00

jr_01b_4c3b:
    ld e, c                                       ; $4c3b: $59
    ld l, a                                       ; $4c3c: $6f
    ld [hl], l                                    ; $4c3d: $75

jr_01b_4c3e:
    jr nz, jr_01b_4cae                            ; $4c3e: $20 $6e

    ld l, a                                       ; $4c40: $6f
    jr nz, jr_01b_4caf                            ; $4c41: $20 $6c

    ld l, a                                       ; $4c43: $6f
    ld l, [hl]                                    ; $4c44: $6e
    ld h, a                                       ; $4c45: $67
    ld h, l                                       ; $4c46: $65
    ld [hl], d                                    ; $4c47: $72
    ld bc, $656e                                  ; $4c48: $01 $6e $65
    ld h, l                                       ; $4c4b: $65
    ld h, h                                       ; $4c4c: $64
    jr nz, jr_01b_4cc3                            ; $4c4d: $20 $74

    ld l, a                                       ; $4c4f: $6f
    jr nz, jr_01b_4cb5                            ; $4c50: $20 $63

jr_01b_4c52:
    ld l, a                                       ; $4c52: $6f

jr_01b_4c53:
    ld l, l                                       ; $4c53: $6d
    ld h, l                                       ; $4c54: $65
    jr nz, jr_01b_4cb9                            ; $4c55: $20 $62

    ld h, c                                       ; $4c57: $61

jr_01b_4c58:
    ld h, e                                       ; $4c58: $63
    ld l, e                                       ; $4c59: $6b
    ld bc, $6568                                  ; $4c5a: $01 $68 $65
    ld [hl], d                                    ; $4c5d: $72
    ld h, l                                       ; $4c5e: $65
    ld hl, $0003                                  ; $4c5f: $21 $03 $00
    ld b, c                                       ; $4c62: $41
    jr nz, jr_01b_4cd3                            ; $4c63: $20 $6e

    ld h, l                                       ; $4c65: $65
    ld [hl], a                                    ; $4c66: $77
    jr nz, @+$65                                  ; $4c67: $20 $63

    ld l, b                                       ; $4c69: $68
    ld h, c                                       ; $4c6a: $61
    ld l, l                                       ; $4c6b: $6d
    ld [hl], b                                    ; $4c6c: $70
    ld l, c                                       ; $4c6d: $69
    ld l, a                                       ; $4c6e: $6f
    ld l, [hl]                                    ; $4c6f: $6e
    jr nz, jr_01b_4cda                            ; $4c70: $20 $68

    ld h, c                                       ; $4c72: $61
    ld [hl], e                                    ; $4c73: $73
    ld bc, $7061                                  ; $4c74: $01 $61 $70
    ld [hl], b                                    ; $4c77: $70
    ld h, l                                       ; $4c78: $65
    ld h, c                                       ; $4c79: $61
    ld [hl], d                                    ; $4c7a: $72
    ld h, l                                       ; $4c7b: $65
    ld h, h                                       ; $4c7c: $64
    jr nz, @+$63                                  ; $4c7d: $20 $61

jr_01b_4c7f:
    ld [hl], h                                    ; $4c7f: $74
    jr nz, jr_01b_4c8d                            ; $4c80: $20 $0b

    ld bc, $6c43                                  ; $4c82: $01 $43 $6c
    ld [hl], l                                    ; $4c85: $75
    ld h, d                                       ; $4c86: $62

jr_01b_4c87:
    jr nz, jr_01b_4cfd                            ; $4c87: $20 $74

    ld l, a                                       ; $4c89: $6f
    ld h, h                                       ; $4c8a: $64
    ld h, c                                       ; $4c8b: $61
    ld a, c                                       ; $4c8c: $79

jr_01b_4c8d:
    ld hl, $0003                                  ; $4c8d: $21 $03 $00
    ld c, c                                       ; $4c90: $49
    ld [hl], h                                    ; $4c91: $74

jr_01b_4c92:
    daa                                           ; $4c92: $27
    ld [hl], e                                    ; $4c93: $73
    jr nz, jr_01b_4c9d                            ; $4c94: $20 $07

    ld bc, $7266                                  ; $4c96: $01 $66 $72
    ld l, a                                       ; $4c99: $6f
    ld l, l                                       ; $4c9a: $6d
    jr nz, jr_01b_4cea                            ; $4c9b: $20 $4d

jr_01b_4c9d:
    ld h, c                                       ; $4c9d: $61
    ld [hl], d                                    ; $4c9e: $72
    ld l, c                                       ; $4c9f: $69

jr_01b_4ca0:
    ld l, a                                       ; $4ca0: $6f
    ld l, [hl]                                    ; $4ca1: $6e
    jr nz, jr_01b_4ce7                            ; $4ca2: $20 $43

    ld l, h                                       ; $4ca4: $6c
    ld [hl], l                                    ; $4ca5: $75
    ld h, d                                       ; $4ca6: $62
    ld hl, $0003                                  ; $4ca7: $21 $03 $00
    rlca                                          ; $4caa: $07
    ld hl, $0003                                  ; $4cab: $21 $03 $00

jr_01b_4cae:
    ld c, c                                       ; $4cae: $49

jr_01b_4caf:
    jr nz, @+$70                                  ; $4caf: $20 $6e

    ld l, a                                       ; $4cb1: $6f
    ld [hl], a                                    ; $4cb2: $77
    jr nz, jr_01b_4d25                            ; $4cb3: $20 $70

jr_01b_4cb5:
    ld [hl], d                                    ; $4cb5: $72
    ld h, l                                       ; $4cb6: $65
    ld [hl], e                                    ; $4cb7: $73
    ld h, l                                       ; $4cb8: $65

jr_01b_4cb9:
    ld l, [hl]                                    ; $4cb9: $6e
    ld [hl], h                                    ; $4cba: $74
    ld bc, $6874                                  ; $4cbb: $01 $74 $68
    ld l, c                                       ; $4cbe: $69
    ld [hl], e                                    ; $4cbf: $73
    jr nz, jr_01b_4d36                            ; $4cc0: $20 $74

    ld [hl], d                                    ; $4cc2: $72

jr_01b_4cc3:
    ld l, a                                       ; $4cc3: $6f
    ld [hl], b                                    ; $4cc4: $70
    ld l, b                                       ; $4cc5: $68
    ld a, c                                       ; $4cc6: $79
    jr nz, jr_01b_4d3d                            ; $4cc7: $20 $74

    ld l, a                                       ; $4cc9: $6f
    ld bc, $2e07                                  ; $4cca: $01 $07 $2e
    inc bc                                        ; $4ccd: $03
    nop                                           ; $4cce: $00
    ld b, e                                       ; $4ccf: $43
    ld l, a                                       ; $4cd0: $6f
    ld l, [hl]                                    ; $4cd1: $6e
    ld h, a                                       ; $4cd2: $67

jr_01b_4cd3:
    ld [hl], d                                    ; $4cd3: $72
    ld h, c                                       ; $4cd4: $61
    ld [hl], h                                    ; $4cd5: $74
    ld [hl], l                                    ; $4cd6: $75
    ld l, h                                       ; $4cd7: $6c
    ld h, c                                       ; $4cd8: $61
    ld [hl], h                                    ; $4cd9: $74

jr_01b_4cda:
    ld l, c                                       ; $4cda: $69
    ld l, a                                       ; $4cdb: $6f
    ld l, [hl]                                    ; $4cdc: $6e
    ld [hl], e                                    ; $4cdd: $73
    inc l                                         ; $4cde: $2c
    ld bc, $2e07                                  ; $4cdf: $01 $07 $2e
    inc bc                                        ; $4ce2: $03
    nop                                           ; $4ce3: $00
    ld c, c                                       ; $4ce4: $49
    jr nz, jr_01b_4d57                            ; $4ce5: $20 $70

jr_01b_4ce7:
    ld [hl], d                                    ; $4ce7: $72
    ld h, l                                       ; $4ce8: $65
    ld [hl], e                                    ; $4ce9: $73

jr_01b_4cea:
    ld h, l                                       ; $4cea: $65
    ld l, [hl]                                    ; $4ceb: $6e
    ld [hl], h                                    ; $4cec: $74
    jr nz, @+$76                                  ; $4ced: $20 $74

    ld l, b                                       ; $4cef: $68
    ld h, l                                       ; $4cf0: $65
    ld bc, $200f                                  ; $4cf1: $01 $0f $20
    ld d, b                                       ; $4cf4: $50
    ld l, h                                       ; $4cf5: $6c
    ld h, c                                       ; $4cf6: $61
    ld h, e                                       ; $4cf7: $63
    ld h, l                                       ; $4cf8: $65
    jr nz, jr_01b_4d4f                            ; $4cf9: $20 $54

    ld [hl], d                                    ; $4cfb: $72
    ld l, a                                       ; $4cfc: $6f

jr_01b_4cfd:
    ld [hl], b                                    ; $4cfd: $70
    ld l, b                                       ; $4cfe: $68
    ld a, c                                       ; $4cff: $79
    ld bc, $6f74                                  ; $4d00: $01 $74 $6f
    jr nz, jr_01b_4d0c                            ; $4d03: $20 $07

    ld l, $03                                     ; $4d05: $2e $03
    nop                                           ; $4d07: $00
    ld d, b                                       ; $4d08: $50
    ld [hl], d                                    ; $4d09: $72
    ld h, c                                       ; $4d0a: $61
    ld h, e                                       ; $4d0b: $63

jr_01b_4d0c:
    ld [hl], h                                    ; $4d0c: $74
    ld l, c                                       ; $4d0d: $69
    ld h, e                                       ; $4d0e: $63
    ld l, c                                       ; $4d0f: $69
    ld l, [hl]                                    ; $4d10: $6e
    ld h, a                                       ; $4d11: $67
    ccf                                           ; $4d12: $3f
    nop                                           ; $4d13: $00
    ld d, b                                       ; $4d14: $50
    ld [hl], d                                    ; $4d15: $72
    ld h, c                                       ; $4d16: $61
    ld h, e                                       ; $4d17: $63
    ld [hl], h                                    ; $4d18: $74
    ld l, c                                       ; $4d19: $69
    ld h, e                                       ; $4d1a: $63
    ld l, c                                       ; $4d1b: $69
    ld l, [hl]                                    ; $4d1c: $6e
    ld h, a                                       ; $4d1d: $67
    jr nz, @+$63                                  ; $4d1e: $20 $61

    ld l, h                                       ; $4d20: $6c
    ld l, a                                       ; $4d21: $6f
    ld l, [hl]                                    ; $4d22: $6e
    ld h, l                                       ; $4d23: $65
    ccf                                           ; $4d24: $3f

jr_01b_4d25:
    nop                                           ; $4d25: $00
    ld d, a                                       ; $4d26: $57
    ld l, c                                       ; $4d27: $69
    ld l, h                                       ; $4d28: $6c
    ld l, h                                       ; $4d29: $6c
    jr nz, jr_01b_4da5                            ; $4d2a: $20 $79

    ld l, a                                       ; $4d2c: $6f
    ld [hl], l                                    ; $4d2d: $75
    jr nz, jr_01b_4da0                            ; $4d2e: $20 $70

    ld [hl], d                                    ; $4d30: $72
    ld h, c                                       ; $4d31: $61
    ld h, e                                       ; $4d32: $63
    ld [hl], h                                    ; $4d33: $74
    ld l, c                                       ; $4d34: $69
    ld h, e                                       ; $4d35: $63

jr_01b_4d36:
    ld h, l                                       ; $4d36: $65
    ccf                                           ; $4d37: $3f
    nop                                           ; $4d38: $00
    ld b, h                                       ; $4d39: $44
    ld l, a                                       ; $4d3a: $6f
    jr nz, jr_01b_4db6                            ; $4d3b: $20 $79

jr_01b_4d3d:
    ld l, a                                       ; $4d3d: $6f
    ld [hl], l                                    ; $4d3e: $75
    jr nz, jr_01b_4db1                            ; $4d3f: $20 $70

    ld l, h                                       ; $4d41: $6c
    ld h, c                                       ; $4d42: $61
    ld l, [hl]                                    ; $4d43: $6e
    ld bc, $6f74                                  ; $4d44: $01 $74 $6f
    jr nz, @+$72                                  ; $4d47: $20 $70

    ld [hl], d                                    ; $4d49: $72
    ld h, c                                       ; $4d4a: $61
    ld h, e                                       ; $4d4b: $63
    ld [hl], h                                    ; $4d4c: $74
    ld l, c                                       ; $4d4d: $69
    ld h, e                                       ; $4d4e: $63

jr_01b_4d4f:
    ld h, l                                       ; $4d4f: $65
    ccf                                           ; $4d50: $3f
    nop                                           ; $4d51: $00
    ld b, c                                       ; $4d52: $41
    ld [hl], d                                    ; $4d53: $72
    ld h, l                                       ; $4d54: $65
    jr nz, jr_01b_4dd0                            ; $4d55: $20 $79

jr_01b_4d57:
    ld l, a                                       ; $4d57: $6f
    ld [hl], l                                    ; $4d58: $75
    jr nz, jr_01b_4dcc                            ; $4d59: $20 $71

    ld [hl], l                                    ; $4d5b: $75
    ld l, c                                       ; $4d5c: $69
    ld [hl], h                                    ; $4d5d: $74
    ld [hl], h                                    ; $4d5e: $74
    ld l, c                                       ; $4d5f: $69
    ld l, [hl]                                    ; $4d60: $6e
    ld h, a                                       ; $4d61: $67
    ld bc, $6874                                  ; $4d62: $01 $74 $68
    ld l, c                                       ; $4d65: $69
    ld [hl], e                                    ; $4d66: $73
    jr nz, jr_01b_4db6                            ; $4d67: $20 $4d

    ld h, c                                       ; $4d69: $61
    ld [hl], h                                    ; $4d6a: $74
    ld h, e                                       ; $4d6b: $63
    ld l, b                                       ; $4d6c: $68
    jr nz, jr_01b_4db6                            ; $4d6d: $20 $47

    ld h, c                                       ; $4d6f: $61
    ld l, l                                       ; $4d70: $6d
    ld h, l                                       ; $4d71: $65
    ccf                                           ; $4d72: $3f
    nop                                           ; $4d73: $00
    ld b, h                                       ; $4d74: $44
    ld l, c                                       ; $4d75: $69
    ld h, h                                       ; $4d76: $64
    jr nz, jr_01b_4df2                            ; $4d77: $20 $79

    ld l, a                                       ; $4d79: $6f
    ld [hl], l                                    ; $4d7a: $75
    jr nz, jr_01b_4de5                            ; $4d7b: $20 $68

    ld h, c                                       ; $4d7d: $61
    halt                                          ; $4d7e: $76
    ld h, l                                       ; $4d7f: $65
    jr nz, jr_01b_4de3                            ; $4d80: $20 $61

    ld bc, $6863                                  ; $4d82: $01 $63 $68
    ld h, c                                       ; $4d85: $61
    ld l, [hl]                                    ; $4d86: $6e
    ld h, a                                       ; $4d87: $67
    ld h, l                                       ; $4d88: $65
    jr nz, jr_01b_4dfa                            ; $4d89: $20 $6f

    ld h, [hl]                                    ; $4d8b: $66
    jr nz, jr_01b_4df6                            ; $4d8c: $20 $68

    ld h, l                                       ; $4d8e: $65
    ld h, c                                       ; $4d8f: $61
    ld [hl], d                                    ; $4d90: $72
    ld [hl], h                                    ; $4d91: $74
    ccf                                           ; $4d92: $3f
    nop                                           ; $4d93: $00
    ld d, a                                       ; $4d94: $57
    ld l, b                                       ; $4d95: $68
    ld h, c                                       ; $4d96: $61
    ld [hl], h                                    ; $4d97: $74
    ccf                                           ; $4d98: $3f
    ld hl, $203f                                  ; $4d99: $21 $3f $20
    ld b, [hl]                                    ; $4d9c: $46
    ld l, a                                       ; $4d9d: $6f
    ld [hl], d                                    ; $4d9e: $72
    ld h, a                                       ; $4d9f: $67

jr_01b_4da0:
    ld h, l                                       ; $4da0: $65
    ld [hl], h                                    ; $4da1: $74
    ld bc, $6f74                                  ; $4da2: $01 $74 $6f

jr_01b_4da5:
    jr nz, jr_01b_4e0b                            ; $4da5: $20 $64

    ld l, a                                       ; $4da7: $6f
    jr nz, jr_01b_4e1d                            ; $4da8: $20 $73

    ld l, a                                       ; $4daa: $6f
    ld l, l                                       ; $4dab: $6d
    ld h, l                                       ; $4dac: $65
    ld [hl], h                                    ; $4dad: $74
    ld l, b                                       ; $4dae: $68
    ld l, c                                       ; $4daf: $69
    ld l, [hl]                                    ; $4db0: $6e

jr_01b_4db1:
    ld h, a                                       ; $4db1: $67
    ccf                                           ; $4db2: $3f
    ld hl, $003f                                  ; $4db3: $21 $3f $00

jr_01b_4db6:
    ld c, c                                       ; $4db6: $49
    ld [hl], e                                    ; $4db7: $73
    jr nz, jr_01b_4e2e                            ; $4db8: $20 $74

    ld l, b                                       ; $4dba: $68
    ld l, c                                       ; $4dbb: $69
    ld [hl], e                                    ; $4dbc: $73
    jr nz, jr_01b_4e2c                            ; $4dbd: $20 $6d

    ld h, c                                       ; $4dbf: $61
    ld [hl], h                                    ; $4dc0: $74
    ld h, e                                       ; $4dc1: $63
    ld l, b                                       ; $4dc2: $68
    ld l, $2e                                     ; $4dc3: $2e $2e
    ld l, $01                                     ; $4dc5: $2e $01
    ld [hl], b                                    ; $4dc7: $70
    ld l, a                                       ; $4dc8: $6f
    ld [hl], e                                    ; $4dc9: $73
    ld [hl], h                                    ; $4dca: $74
    ld [hl], b                                    ; $4dcb: $70

jr_01b_4dcc:
    ld l, a                                       ; $4dcc: $6f
    ld l, [hl]                                    ; $4dcd: $6e
    ld h, l                                       ; $4dce: $65
    ld h, h                                       ; $4dcf: $64

jr_01b_4dd0:
    ccf                                           ; $4dd0: $3f
    nop                                           ; $4dd1: $00
    ld c, a                                       ; $4dd2: $4f
    ld c, e                                       ; $4dd3: $4b
    jr nz, jr_01b_4e4a                            ; $4dd4: $20 $74

    ld l, b                                       ; $4dd6: $68
    ld h, l                                       ; $4dd7: $65
    ld l, [hl]                                    ; $4dd8: $6e
    ld l, $2e                                     ; $4dd9: $2e $2e
    ld l, $01                                     ; $4ddb: $2e $01
    ld c, h                                       ; $4ddd: $4c
    ld h, l                                       ; $4dde: $65
    ld [hl], h                                    ; $4ddf: $74
    jr nz, jr_01b_4e4f                            ; $4de0: $20 $6d

    ld h, l                                       ; $4de2: $65

jr_01b_4de3:
    jr nz, jr_01b_4e50                            ; $4de3: $20 $6b

jr_01b_4de5:
    ld l, [hl]                                    ; $4de5: $6e
    ld l, a                                       ; $4de6: $6f
    ld [hl], a                                    ; $4de7: $77
    jr nz, @+$79                                  ; $4de8: $20 $77

    ld l, b                                       ; $4dea: $68
    ld h, l                                       ; $4deb: $65
    ld l, [hl]                                    ; $4dec: $6e
    ld bc, $6f79                                  ; $4ded: $01 $79 $6f
    ld [hl], l                                    ; $4df0: $75
    daa                                           ; $4df1: $27

jr_01b_4df2:
    ld [hl], d                                    ; $4df2: $72
    ld h, l                                       ; $4df3: $65
    jr nz, jr_01b_4e68                            ; $4df4: $20 $72

jr_01b_4df6:
    ld h, l                                       ; $4df6: $65
    ld h, c                                       ; $4df7: $61
    ld h, h                                       ; $4df8: $64
    ld a, c                                       ; $4df9: $79

jr_01b_4dfa:
    jr nz, jr_01b_4e62                            ; $4dfa: $20 $66

    ld l, a                                       ; $4dfc: $6f
    ld [hl], d                                    ; $4dfd: $72
    jr nz, jr_01b_4e6d                            ; $4dfe: $20 $6d

    ld h, l                                       ; $4e00: $65
    ld l, $03                                     ; $4e01: $2e $03
    nop                                           ; $4e03: $00
    ld c, c                                       ; $4e04: $49
    ld h, [hl]                                    ; $4e05: $66
    jr nz, jr_01b_4e71                            ; $4e06: $20 $69

    ld [hl], h                                    ; $4e08: $74
    daa                                           ; $4e09: $27
    ld [hl], e                                    ; $4e0a: $73

jr_01b_4e0b:
    jr nz, jr_01b_4e6e                            ; $4e0b: $20 $61

    jr nz, jr_01b_4e5c                            ; $4e0d: $20 $4d

    ld h, c                                       ; $4e0f: $61
    ld [hl], h                                    ; $4e10: $74
    ld h, e                                       ; $4e11: $63
    ld l, b                                       ; $4e12: $68
    ld bc, $6147                                  ; $4e13: $01 $47 $61
    ld l, l                                       ; $4e16: $6d
    ld h, l                                       ; $4e17: $65
    inc l                                         ; $4e18: $2c
    jr nz, jr_01b_4e64                            ; $4e19: $20 $49

    daa                                           ; $4e1b: $27
    ld l, h                                       ; $4e1c: $6c

jr_01b_4e1d:
    ld l, h                                       ; $4e1d: $6c
    jr nz, @+$72                                  ; $4e1e: $20 $70

    ld l, h                                       ; $4e20: $6c
    ld h, c                                       ; $4e21: $61
    ld a, c                                       ; $4e22: $79
    ld bc, $6f79                                  ; $4e23: $01 $79 $6f
    ld [hl], l                                    ; $4e26: $75
    jr nz, jr_01b_4e8a                            ; $4e27: $20 $61

    ld l, [hl]                                    ; $4e29: $6e
    ld a, c                                       ; $4e2a: $79
    ld [hl], h                                    ; $4e2b: $74

jr_01b_4e2c:
    ld l, c                                       ; $4e2c: $69
    ld l, l                                       ; $4e2d: $6d

jr_01b_4e2e:
    ld h, l                                       ; $4e2e: $65
    ld l, $03                                     ; $4e2f: $2e $03
    nop                                           ; $4e31: $00
    ld c, c                                       ; $4e32: $49
    daa                                           ; $4e33: $27
    halt                                          ; $4e34: $76
    ld h, l                                       ; $4e35: $65
    jr nz, jr_01b_4ea6                            ; $4e36: $20 $6e

    ld l, a                                       ; $4e38: $6f
    ld [hl], h                                    ; $4e39: $74
    ld l, b                                       ; $4e3a: $68
    ld l, c                                       ; $4e3b: $69
    ld l, [hl]                                    ; $4e3c: $6e
    ld h, a                                       ; $4e3d: $67
    jr nz, jr_01b_4eb4                            ; $4e3e: $20 $74

    ld l, a                                       ; $4e40: $6f
    ld bc, $6173                                  ; $4e41: $01 $73 $61
    ld a, c                                       ; $4e44: $79
    jr nz, jr_01b_4eb0                            ; $4e45: $20 $69

    ld h, [hl]                                    ; $4e47: $66
    jr nz, @+$7b                                  ; $4e48: $20 $79

jr_01b_4e4a:
    ld l, a                                       ; $4e4a: $6f
    ld [hl], l                                    ; $4e4b: $75
    ld bc, $6f64                                  ; $4e4c: $01 $64 $6f

jr_01b_4e4f:
    ld l, [hl]                                    ; $4e4f: $6e

jr_01b_4e50:
    daa                                           ; $4e50: $27
    ld [hl], h                                    ; $4e51: $74
    jr nz, @+$79                                  ; $4e52: $20 $77

    ld h, c                                       ; $4e54: $61
    ld l, [hl]                                    ; $4e55: $6e
    ld [hl], h                                    ; $4e56: $74
    jr nz, jr_01b_4ecd                            ; $4e57: $20 $74

    ld l, a                                       ; $4e59: $6f
    jr nz, jr_01b_4ecc                            ; $4e5a: $20 $70

jr_01b_4e5c:
    ld l, h                                       ; $4e5c: $6c
    ld h, c                                       ; $4e5d: $61
    ld a, c                                       ; $4e5e: $79
    ld hl, $0003                                  ; $4e5f: $21 $03 $00

jr_01b_4e62:
    ld c, [hl]                                    ; $4e62: $4e
    ld h, l                                       ; $4e63: $65

jr_01b_4e64:
    ld [hl], d                                    ; $4e64: $72
    halt                                          ; $4e65: $76
    ld l, a                                       ; $4e66: $6f
    ld [hl], l                                    ; $4e67: $75

jr_01b_4e68:
    ld [hl], e                                    ; $4e68: $73
    inc l                                         ; $4e69: $2c
    jr nz, jr_01b_4ecd                            ; $4e6a: $20 $61

    ld [hl], d                                    ; $4e6c: $72

jr_01b_4e6d:
    ld h, l                                       ; $4e6d: $65

jr_01b_4e6e:
    jr nz, jr_01b_4ee9                            ; $4e6e: $20 $79

    ld l, a                                       ; $4e70: $6f

jr_01b_4e71:
    ld [hl], l                                    ; $4e71: $75
    ccf                                           ; $4e72: $3f
    ld bc, $6946                                  ; $4e73: $01 $46 $69
    ld l, [hl]                                    ; $4e76: $6e
    ld h, l                                       ; $4e77: $65
    ld l, $20                                     ; $4e78: $2e $20
    ld c, c                                       ; $4e7a: $49
    daa                                           ; $4e7b: $27
    ld l, h                                       ; $4e7c: $6c
    ld l, h                                       ; $4e7d: $6c
    jr nz, jr_01b_4ef0                            ; $4e7e: $20 $70

    ld l, h                                       ; $4e80: $6c
    ld h, c                                       ; $4e81: $61
    ld a, c                                       ; $4e82: $79
    ld bc, $6877                                  ; $4e83: $01 $77 $68
    ld h, l                                       ; $4e86: $65
    ld l, [hl]                                    ; $4e87: $6e
    jr nz, jr_01b_4f03                            ; $4e88: $20 $79

jr_01b_4e8a:
    ld l, a                                       ; $4e8a: $6f
    ld [hl], l                                    ; $4e8b: $75
    daa                                           ; $4e8c: $27
    ld [hl], d                                    ; $4e8d: $72
    ld h, l                                       ; $4e8e: $65
    jr nz, jr_01b_4f03                            ; $4e8f: $20 $72

    ld h, l                                       ; $4e91: $65
    ld h, c                                       ; $4e92: $61
    ld h, h                                       ; $4e93: $64
    ld a, c                                       ; $4e94: $79
    ld l, $03                                     ; $4e95: $2e $03
    nop                                           ; $4e97: $00
    ld d, e                                       ; $4e98: $53
    ld l, a                                       ; $4e99: $6f
    ld l, l                                       ; $4e9a: $6d
    ld h, l                                       ; $4e9b: $65
    ld [hl], h                                    ; $4e9c: $74
    ld l, b                                       ; $4e9d: $68
    ld l, c                                       ; $4e9e: $69
    ld l, [hl]                                    ; $4e9f: $6e
    ld h, a                                       ; $4ea0: $67
    daa                                           ; $4ea1: $27
    ld [hl], e                                    ; $4ea2: $73
    jr nz, jr_01b_4f1c                            ; $4ea3: $20 $77

    ld [hl], d                                    ; $4ea5: $72

jr_01b_4ea6:
    ld l, a                                       ; $4ea6: $6f
    ld l, [hl]                                    ; $4ea7: $6e
    ld h, a                                       ; $4ea8: $67
    ld hl, $0003                                  ; $4ea9: $21 $03 $00
    ld d, h                                       ; $4eac: $54
    ld h, c                                       ; $4ead: $61
    ld l, e                                       ; $4eae: $6b
    ld l, c                                       ; $4eaf: $69

jr_01b_4eb0:
    ld l, [hl]                                    ; $4eb0: $6e
    ld h, a                                       ; $4eb1: $67
    jr nz, jr_01b_4f23                            ; $4eb2: $20 $6f

jr_01b_4eb4:
    ld l, [hl]                                    ; $4eb4: $6e
    jr nz, jr_01b_4f04                            ; $4eb5: $20 $4d

    ld h, c                                       ; $4eb7: $61
    ld [hl], d                                    ; $4eb8: $72
    ld l, c                                       ; $4eb9: $69
    ld l, a                                       ; $4eba: $6f
    ccf                                           ; $4ebb: $3f
    nop                                           ; $4ebc: $00
    ld b, a                                       ; $4ebd: $47
    ld l, a                                       ; $4ebe: $6f
    ld l, c                                       ; $4ebf: $69
    ld l, [hl]                                    ; $4ec0: $6e
    ld h, a                                       ; $4ec1: $67
    jr nz, @+$63                                  ; $4ec2: $20 $61

    ld h, a                                       ; $4ec4: $67
    ld h, c                                       ; $4ec5: $61
    ld l, c                                       ; $4ec6: $69
    ld l, [hl]                                    ; $4ec7: $6e
    ld [hl], e                                    ; $4ec8: $73
    ld [hl], h                                    ; $4ec9: $74
    jr nz, @+$4f                                  ; $4eca: $20 $4d

jr_01b_4ecc:
    ld h, c                                       ; $4ecc: $61

jr_01b_4ecd:
    ld [hl], d                                    ; $4ecd: $72
    ld l, c                                       ; $4ece: $69
    ld l, a                                       ; $4ecf: $6f
    ccf                                           ; $4ed0: $3f
    nop                                           ; $4ed1: $00
    ld d, b                                       ; $4ed2: $50
    ld l, h                                       ; $4ed3: $6c
    ld h, c                                       ; $4ed4: $61
    ld a, c                                       ; $4ed5: $79
    ld l, c                                       ; $4ed6: $69
    ld l, [hl]                                    ; $4ed7: $6e
    ld h, a                                       ; $4ed8: $67
    jr nz, jr_01b_4f28                            ; $4ed9: $20 $4d

    ld h, c                                       ; $4edb: $61
    ld [hl], d                                    ; $4edc: $72
    ld l, c                                       ; $4edd: $69
    ld l, a                                       ; $4ede: $6f
    ccf                                           ; $4edf: $3f
    nop                                           ; $4ee0: $00
    ld b, e                                       ; $4ee1: $43
    ld l, b                                       ; $4ee2: $68
    ld h, c                                       ; $4ee3: $61
    ld l, h                                       ; $4ee4: $6c
    ld l, h                                       ; $4ee5: $6c
    ld h, l                                       ; $4ee6: $65
    ld l, [hl]                                    ; $4ee7: $6e
    ld h, a                                       ; $4ee8: $67

jr_01b_4ee9:
    ld l, c                                       ; $4ee9: $69
    ld l, [hl]                                    ; $4eea: $6e
    ld h, a                                       ; $4eeb: $67
    jr nz, @+$4f                                  ; $4eec: $20 $4d

    ld h, c                                       ; $4eee: $61
    ld [hl], d                                    ; $4eef: $72

jr_01b_4ef0:
    ld l, c                                       ; $4ef0: $69
    ld l, a                                       ; $4ef1: $6f
    ccf                                           ; $4ef2: $3f
    nop                                           ; $4ef3: $00
    ld b, c                                       ; $4ef4: $41
    ld [hl], e                                    ; $4ef5: $73
    jr nz, jr_01b_4f3f                            ; $4ef6: $20 $47

    ld [hl], d                                    ; $4ef8: $72
    ld h, c                                       ; $4ef9: $61
    ld l, [hl]                                    ; $4efa: $6e
    ld h, h                                       ; $4efb: $64
    jr nz, jr_01b_4f41                            ; $4efc: $20 $43

    ld l, b                                       ; $4efe: $68
    ld h, c                                       ; $4eff: $61
    ld l, l                                       ; $4f00: $6d
    ld [hl], b                                    ; $4f01: $70
    ld l, c                                       ; $4f02: $69

jr_01b_4f03:
    ld l, a                                       ; $4f03: $6f

jr_01b_4f04:
    ld l, [hl]                                    ; $4f04: $6e
    inc l                                         ; $4f05: $2c
    ld bc, $616d                                  ; $4f06: $01 $6d $61
    ld l, e                                       ; $4f09: $6b
    ld h, l                                       ; $4f0a: $65
    jr nz, jr_01b_4f80                            ; $4f0b: $20 $73

    ld [hl], l                                    ; $4f0d: $75
    ld [hl], d                                    ; $4f0e: $72
    ld h, l                                       ; $4f0f: $65
    jr nz, jr_01b_4f8b                            ; $4f10: $20 $79

    ld l, a                                       ; $4f12: $6f
    ld [hl], l                                    ; $4f13: $75
    jr nz, jr_01b_4f8d                            ; $4f14: $20 $77

    ld l, c                                       ; $4f16: $69
    ld l, [hl]                                    ; $4f17: $6e
    ld hl, $0003                                  ; $4f18: $21 $03 $00
    ld d, a                                       ; $4f1b: $57

jr_01b_4f1c:
    ld l, c                                       ; $4f1c: $69
    ld [hl], h                                    ; $4f1d: $74
    ld l, b                                       ; $4f1e: $68
    jr nz, jr_01b_4f9a                            ; $4f1f: $20 $79

    ld l, a                                       ; $4f21: $6f
    ld [hl], l                                    ; $4f22: $75

jr_01b_4f23:
    ld [hl], d                                    ; $4f23: $72
    jr nz, jr_01b_4f9a                            ; $4f24: $20 $74

    ld h, l                                       ; $4f26: $65
    ld h, e                                       ; $4f27: $63

jr_01b_4f28:
    ld l, b                                       ; $4f28: $68
    ld l, [hl]                                    ; $4f29: $6e
    ld l, c                                       ; $4f2a: $69
    ld [hl], c                                    ; $4f2b: $71
    ld [hl], l                                    ; $4f2c: $75
    ld h, l                                       ; $4f2d: $65
    inc l                                         ; $4f2e: $2c
    ld bc, $6f79                                  ; $4f2f: $01 $79 $6f
    ld [hl], l                                    ; $4f32: $75
    jr nz, @+$75                                  ; $4f33: $20 $73

    ld l, b                                       ; $4f35: $68
    ld l, a                                       ; $4f36: $6f
    ld [hl], l                                    ; $4f37: $75
    ld l, h                                       ; $4f38: $6c
    ld h, h                                       ; $4f39: $64
    jr nz, jr_01b_4f9e                            ; $4f3a: $20 $62

    ld h, l                                       ; $4f3c: $65
    jr nz, jr_01b_4fa0                            ; $4f3d: $20 $61

jr_01b_4f3f:
    ld h, d                                       ; $4f3f: $62
    ld l, h                                       ; $4f40: $6c

jr_01b_4f41:
    ld h, l                                       ; $4f41: $65
    ld bc, $6f74                                  ; $4f42: $01 $74 $6f
    jr nz, jr_01b_4fa9                            ; $4f45: $20 $62

    ld h, l                                       ; $4f47: $65
    ld h, c                                       ; $4f48: $61
    ld [hl], h                                    ; $4f49: $74
    jr nz, jr_01b_4f99                            ; $4f4a: $20 $4d

    ld h, c                                       ; $4f4c: $61
    ld [hl], d                                    ; $4f4d: $72
    ld l, c                                       ; $4f4e: $69
    ld l, a                                       ; $4f4f: $6f
    ld hl, $0003                                  ; $4f50: $21 $03 $00
    ld b, a                                       ; $4f53: $47
    ld h, l                                       ; $4f54: $65
    ld [hl], h                                    ; $4f55: $74
    jr nz, jr_01b_4fbf                            ; $4f56: $20 $67

    ld l, a                                       ; $4f58: $6f
    ld l, c                                       ; $4f59: $69
    ld l, [hl]                                    ; $4f5a: $6e
    ld h, a                                       ; $4f5b: $67
    ld hl, $4120                                  ; $4f5c: $21 $20 $41
    ld l, [hl]                                    ; $4f5f: $6e
    ld h, h                                       ; $4f60: $64
    jr nz, jr_01b_4fc5                            ; $4f61: $20 $62

    ld h, l                                       ; $4f63: $65
    ld h, c                                       ; $4f64: $61
    ld [hl], h                                    ; $4f65: $74
    ld bc, $6874                                  ; $4f66: $01 $74 $68
    ld h, l                                       ; $4f69: $65
    jr nz, jr_01b_4fb3                            ; $4f6a: $20 $47

    ld [hl], d                                    ; $4f6c: $72
    ld h, l                                       ; $4f6d: $65
    ld h, c                                       ; $4f6e: $61
    ld [hl], h                                    ; $4f6f: $74
    jr nz, jr_01b_4fbf                            ; $4f70: $20 $4d

    ld h, c                                       ; $4f72: $61
    ld [hl], d                                    ; $4f73: $72
    ld l, c                                       ; $4f74: $69
    ld l, a                                       ; $4f75: $6f
    ld hl, $0003                                  ; $4f76: $21 $03 $00
    ld d, b                                       ; $4f79: $50
    ld h, l                                       ; $4f7a: $65
    ld [hl], d                                    ; $4f7b: $72
    ld l, b                                       ; $4f7c: $68
    ld h, c                                       ; $4f7d: $61
    ld [hl], b                                    ; $4f7e: $70
    ld [hl], e                                    ; $4f7f: $73

jr_01b_4f80:
    jr nz, @+$7b                                  ; $4f80: $20 $79

    ld l, a                                       ; $4f82: $6f
    ld [hl], l                                    ; $4f83: $75
    jr nz, jr_01b_4fe9                            ; $4f84: $20 $63

    ld h, c                                       ; $4f86: $61
    ld l, [hl]                                    ; $4f87: $6e
    ld bc, $6163                                  ; $4f88: $01 $63 $61

jr_01b_4f8b:
    ld [hl], e                                    ; $4f8b: $73
    ld [hl], h                                    ; $4f8c: $74

jr_01b_4f8d:
    jr nz, jr_01b_4ff3                            ; $4f8d: $20 $64

    ld l, a                                       ; $4f8f: $6f
    ld [hl], a                                    ; $4f90: $77
    ld l, [hl]                                    ; $4f91: $6e
    jr nz, @+$76                                  ; $4f92: $20 $74

    ld l, b                                       ; $4f94: $68
    ld h, l                                       ; $4f95: $65
    ld bc, $656c                                  ; $4f96: $01 $6c $65

jr_01b_4f99:
    ld h, a                                       ; $4f99: $67

jr_01b_4f9a:
    ld h, l                                       ; $4f9a: $65
    ld l, [hl]                                    ; $4f9b: $6e
    ld h, h                                       ; $4f9c: $64
    ld h, c                                       ; $4f9d: $61

jr_01b_4f9e:
    ld [hl], d                                    ; $4f9e: $72
    ld a, c                                       ; $4f9f: $79

jr_01b_4fa0:
    jr nz, jr_01b_4fef                            ; $4fa0: $20 $4d

    ld h, c                                       ; $4fa2: $61
    ld [hl], d                                    ; $4fa3: $72
    ld l, c                                       ; $4fa4: $69
    ld l, a                                       ; $4fa5: $6f
    ld hl, $0003                                  ; $4fa6: $21 $03 $00

jr_01b_4fa9:
    ld c, b                                       ; $4fa9: $48
    ld h, l                                       ; $4faa: $65
    ld a, c                                       ; $4fab: $79
    inc l                                         ; $4fac: $2c
    ld bc, $6f79                                  ; $4fad: $01 $79 $6f
    ld [hl], l                                    ; $4fb0: $75
    jr nz, @+$69                                  ; $4fb1: $20 $67

jr_01b_4fb3:
    ld l, a                                       ; $4fb3: $6f
    ld [hl], h                                    ; $4fb4: $74
    jr nz, jr_01b_5024                            ; $4fb5: $20 $6d

    ld h, l                                       ; $4fb7: $65
    ld l, $03                                     ; $4fb8: $2e $03
    nop                                           ; $4fba: $00
    ld b, c                                       ; $4fbb: $41
    ld [hl], a                                    ; $4fbc: $77
    ld [hl], a                                    ; $4fbd: $77
    inc l                                         ; $4fbe: $2c

jr_01b_4fbf:
    ld bc, $6f79                                  ; $4fbf: $01 $79 $6f
    ld [hl], l                                    ; $4fc2: $75
    jr nz, @+$68                                  ; $4fc3: $20 $66

jr_01b_4fc5:
    ld l, a                                       ; $4fc5: $6f
    ld [hl], l                                    ; $4fc6: $75
    ld l, [hl]                                    ; $4fc7: $6e
    ld h, h                                       ; $4fc8: $64
    jr nz, @+$6f                                  ; $4fc9: $20 $6d

    ld h, l                                       ; $4fcb: $65
    ld l, $03                                     ; $4fcc: $2e $03
    nop                                           ; $4fce: $00
    ld d, a                                       ; $4fcf: $57
    ld h, l                                       ; $4fd0: $65
    ld l, h                                       ; $4fd1: $6c
    ld l, h                                       ; $4fd2: $6c
    ld hl, $5901                                  ; $4fd3: $21 $01 $59
    ld l, a                                       ; $4fd6: $6f
    ld [hl], l                                    ; $4fd7: $75
    daa                                           ; $4fd8: $27
    ld [hl], d                                    ; $4fd9: $72
    ld h, l                                       ; $4fda: $65
    jr nz, jr_01b_5044                            ; $4fdb: $20 $67

    ld l, a                                       ; $4fdd: $6f
    ld l, a                                       ; $4fde: $6f
    ld h, h                                       ; $4fdf: $64
    ld l, $03                                     ; $4fe0: $2e $03
    nop                                           ; $4fe2: $00
    ld d, h                                       ; $4fe3: $54
    ld h, e                                       ; $4fe4: $63
    ld l, b                                       ; $4fe5: $68
    ld hl, $5720                                  ; $4fe6: $21 $20 $57

jr_01b_4fe9:
    ld l, b                                       ; $4fe9: $68
    ld l, a                                       ; $4fea: $6f
    jr nz, jr_01b_5061                            ; $4feb: $20 $74

    ld l, a                                       ; $4fed: $6f
    ld l, h                                       ; $4fee: $6c

jr_01b_4fef:
    ld h, h                                       ; $4fef: $64
    jr nz, jr_01b_506b                            ; $4ff0: $20 $79

    ld l, a                                       ; $4ff2: $6f

jr_01b_4ff3:
    ld [hl], l                                    ; $4ff3: $75
    ccf                                           ; $4ff4: $3f
    inc bc                                        ; $4ff5: $03
    nop                                           ; $4ff6: $00
    ld c, c                                       ; $4ff7: $49
    daa                                           ; $4ff8: $27
    ld l, l                                       ; $4ff9: $6d
    jr nz, jr_01b_506e                            ; $4ffa: $20 $72

    ld l, a                                       ; $4ffc: $6f
    ld l, a                                       ; $4ffd: $6f
    ld [hl], h                                    ; $4ffe: $74
    ld l, c                                       ; $4fff: $69
    ld l, [hl]                                    ; $5000: $6e
    ld h, a                                       ; $5001: $67
    jr nz, @+$68                                  ; $5002: $20 $66

    ld l, a                                       ; $5004: $6f
    ld [hl], d                                    ; $5005: $72
    ld bc, $6f79                                  ; $5006: $01 $79 $6f
    ld [hl], l                                    ; $5009: $75
    inc l                                         ; $500a: $2c
    jr nz, @+$09                                  ; $500b: $20 $07

    ld hl, $4701                                  ; $500d: $21 $01 $47
    ld l, a                                       ; $5010: $6f
    ld l, a                                       ; $5011: $6f
    ld h, h                                       ; $5012: $64
    jr nz, jr_01b_5081                            ; $5013: $20 $6c

    ld [hl], l                                    ; $5015: $75
    ld h, e                                       ; $5016: $63
    ld l, e                                       ; $5017: $6b
    ld hl, $0003                                  ; $5018: $21 $03 $00
    ld e, c                                       ; $501b: $59
    ld l, a                                       ; $501c: $6f
    ld [hl], l                                    ; $501d: $75
    daa                                           ; $501e: $27
    ld [hl], d                                    ; $501f: $72
    ld h, l                                       ; $5020: $65
    jr nz, jr_01b_509a                            ; $5021: $20 $77

    ld l, a                                       ; $5023: $6f

jr_01b_5024:
    ld [hl], d                                    ; $5024: $72
    ld l, e                                       ; $5025: $6b
    ld l, c                                       ; $5026: $69
    ld l, [hl]                                    ; $5027: $6e
    ld h, a                                       ; $5028: $67
    ld bc, $6168                                  ; $5029: $01 $68 $61
    ld [hl], d                                    ; $502c: $72
    ld h, h                                       ; $502d: $64
    inc l                                         ; $502e: $2c
    jr nz, @+$09                                  ; $502f: $20 $07

    ld hl, $4b02                                  ; $5031: $21 $02 $4b
    ld h, l                                       ; $5034: $65
    ld h, l                                       ; $5035: $65
    ld [hl], b                                    ; $5036: $70
    jr nz, jr_01b_50ab                            ; $5037: $20 $72

    ld l, c                                       ; $5039: $69
    ld h, a                                       ; $503a: $67
    ld l, b                                       ; $503b: $68
    ld [hl], h                                    ; $503c: $74
    jr nz, jr_01b_50ae                            ; $503d: $20 $6f

    ld l, [hl]                                    ; $503f: $6e
    ld bc, $6572                                  ; $5040: $01 $72 $65
    ld h, [hl]                                    ; $5043: $66

jr_01b_5044:
    ld l, c                                       ; $5044: $69
    ld l, [hl]                                    ; $5045: $6e
    ld l, c                                       ; $5046: $69
    ld l, [hl]                                    ; $5047: $6e
    ld h, a                                       ; $5048: $67
    jr nz, jr_01b_50c4                            ; $5049: $20 $79

    ld l, a                                       ; $504b: $6f
    ld [hl], l                                    ; $504c: $75
    ld [hl], d                                    ; $504d: $72
    ld bc, $6574                                  ; $504e: $01 $74 $65
    ld h, e                                       ; $5051: $63
    ld l, b                                       ; $5052: $68
    ld l, [hl]                                    ; $5053: $6e
    ld l, c                                       ; $5054: $69
    ld [hl], c                                    ; $5055: $71
    ld [hl], l                                    ; $5056: $75
    ld h, l                                       ; $5057: $65
    ld hl, $0003                                  ; $5058: $21 $03 $00
    ld b, c                                       ; $505b: $41
    ld [hl], d                                    ; $505c: $72
    ld h, l                                       ; $505d: $65
    jr nz, @+$7b                                  ; $505e: $20 $79

    ld l, a                                       ; $5060: $6f

jr_01b_5061:
    ld [hl], l                                    ; $5061: $75
    jr nz, @+$6a                                  ; $5062: $20 $68

    ld h, c                                       ; $5064: $61
    halt                                          ; $5065: $76
    ld l, c                                       ; $5066: $69
    ld l, [hl]                                    ; $5067: $6e
    ld h, a                                       ; $5068: $67
    jr nz, jr_01b_50d1                            ; $5069: $20 $66

jr_01b_506b:
    ld [hl], l                                    ; $506b: $75
    ld l, [hl]                                    ; $506c: $6e
    inc l                                         ; $506d: $2c

jr_01b_506e:
    ld bc, $3f07                                  ; $506e: $01 $07 $3f
    jr nz, jr_01b_50bd                            ; $5071: $20 $4a

    ld [hl], l                                    ; $5073: $75
    ld [hl], e                                    ; $5074: $73
    ld [hl], h                                    ; $5075: $74
    ld bc, $6177                                  ; $5076: $01 $77 $61
    ld [hl], h                                    ; $5079: $74
    ld h, e                                       ; $507a: $63
    ld l, b                                       ; $507b: $68
    ld l, c                                       ; $507c: $69
    ld l, [hl]                                    ; $507d: $6e
    ld h, a                                       ; $507e: $67
    jr nz, @+$7b                                  ; $507f: $20 $79

jr_01b_5081:
    ld l, a                                       ; $5081: $6f
    ld [hl], l                                    ; $5082: $75
    ld [bc], a                                    ; $5083: $02
    ld l, c                                       ; $5084: $69
    ld l, [hl]                                    ; $5085: $6e
    ld [hl], e                                    ; $5086: $73
    ld [hl], b                                    ; $5087: $70
    ld l, c                                       ; $5088: $69
    ld [hl], d                                    ; $5089: $72
    ld h, l                                       ; $508a: $65
    ld [hl], e                                    ; $508b: $73
    jr nz, @+$6f                                  ; $508c: $20 $6d

    ld h, l                                       ; $508e: $65
    jr nz, @+$76                                  ; $508f: $20 $74

    ld l, a                                       ; $5091: $6f
    ld bc, $6f77                                  ; $5092: $01 $77 $6f
    ld [hl], d                                    ; $5095: $72
    ld l, e                                       ; $5096: $6b
    jr nz, @+$6a                                  ; $5097: $20 $68

    ld h, c                                       ; $5099: $61

jr_01b_509a:
    ld [hl], d                                    ; $509a: $72
    ld h, h                                       ; $509b: $64
    ld h, l                                       ; $509c: $65
    ld [hl], d                                    ; $509d: $72
    ld l, $01                                     ; $509e: $2e $01
    ld c, c                                       ; $50a0: $49
    ld [hl], h                                    ; $50a1: $74
    jr nz, @+$74                                  ; $50a2: $20 $72

    ld h, l                                       ; $50a4: $65
    ld h, c                                       ; $50a5: $61
    ld l, h                                       ; $50a6: $6c
    ld l, h                                       ; $50a7: $6c
    ld a, c                                       ; $50a8: $79
    jr nz, @+$66                                  ; $50a9: $20 $64

jr_01b_50ab:
    ld l, a                                       ; $50ab: $6f
    ld h, l                                       ; $50ac: $65
    ld [hl], e                                    ; $50ad: $73

jr_01b_50ae:
    ld hl, $0003                                  ; $50ae: $21 $03 $00
    ld e, c                                       ; $50b1: $59
    ld l, a                                       ; $50b2: $6f
    ld hl, $0720                                  ; $50b3: $21 $20 $07
    ld hl, $4801                                  ; $50b6: $21 $01 $48
    ld l, a                                       ; $50b9: $6f
    ld [hl], a                                    ; $50ba: $77
    daa                                           ; $50bb: $27
    ld [hl], e                                    ; $50bc: $73

jr_01b_50bd:
    jr nz, @+$6b                                  ; $50bd: $20 $69

    ld [hl], h                                    ; $50bf: $74
    jr nz, @+$69                                  ; $50c0: $20 $67

    ld l, a                                       ; $50c2: $6f
    ld l, c                                       ; $50c3: $69

jr_01b_50c4:
    ld l, [hl]                                    ; $50c4: $6e
    ld h, a                                       ; $50c5: $67
    ccf                                           ; $50c6: $3f
    ld bc, $2749                                  ; $50c7: $01 $49 $27
    ld l, l                                       ; $50ca: $6d
    jr nz, @+$71                                  ; $50cb: $20 $6f

    ld l, [hl]                                    ; $50cd: $6e
    jr nz, @+$7b                                  ; $50ce: $20 $79

    ld l, a                                       ; $50d0: $6f

jr_01b_50d1:
    ld [hl], l                                    ; $50d1: $75
    ld [hl], d                                    ; $50d2: $72
    jr nz, @+$75                                  ; $50d3: $20 $73

    ld l, c                                       ; $50d5: $69
    ld h, h                                       ; $50d6: $64
    ld h, l                                       ; $50d7: $65
    ld hl, $0003                                  ; $50d8: $21 $03 $00
    rlca                                          ; $50db: $07
    jr nz, @+$69                                  ; $50dc: $20 $67

    ld l, a                                       ; $50de: $6f
    ld [hl], h                                    ; $50df: $74
    ld bc, $2061                                  ; $50e0: $01 $61 $20
    ld sp, $552d                                  ; $50e3: $31 $2d $55
    ld d, b                                       ; $50e6: $50
    jr nz, @+$4f                                  ; $50e7: $20 $4d

    ld [hl], l                                    ; $50e9: $75
    ld [hl], e                                    ; $50ea: $73
    ld l, b                                       ; $50eb: $68
    ld [hl], d                                    ; $50ec: $72
    ld l, a                                       ; $50ed: $6f
    ld l, a                                       ; $50ee: $6f
    ld l, l                                       ; $50ef: $6d
    ld hl, $0003                                  ; $50f0: $21 $03 $00

    db $50, $72, $61, $63, $74, $69, $63, $65, $20, $68, $65, $72, $65, $3f, $00, $4b
    db $65, $65, $70, $20, $70, $72, $61, $63, $74, $69, $63, $69, $6e, $67, $3f, $00
    db $07, $01, $71, $75, $69, $74, $20, $70, $72, $61, $63, $74, $69, $63, $69, $6e
    db $67, $2e, $03, $00, $48, $75, $68, $3f, $20, $59, $6f, $75, $20, $77, $61, $6e
    db $6e, $6e, $61, $20, $6b, $6e, $6f, $77, $01, $77, $68, $61, $74, $20, $49, $27
    db $6d, $20, $64, $6f, $69, $6e, $27, $3f, $00, $57, $68, $65, $6e, $20, $79, $6f
    db $75, $27, $72, $65, $20, $63, $6c, $6f, $73, $65, $20, $74, $6f, $01, $74, $68
    db $65, $20, $67, $72, $65, $65, $6e, $2c, $20, $75, $73, $65, $20, $61, $6e, $01
    db $61, $70, $70, $72, $6f, $61, $63, $68, $20, $73, $68, $6f, $74, $20, $74, $6f
    db $02, $68, $69, $74, $20, $77, $69, $74, $68, $20, $63, $6f, $6e, $74, $72, $6f
    db $6c, $2e, $20, $49, $74, $01, $63, $61, $6e, $20, $69, $6d, $70, $72, $6f, $76
    db $65, $20, $79, $6f, $75, $72, $01, $73, $63, $6f, $72, $65, $2e, $03, $00, $4c
    db $69, $65, $20, $64, $65, $74, $65, $72, $6d, $69, $6e, $65, $73, $20, $74, $68
    db $65, $01, $70, $72, $6f, $70, $65, $72, $20, $61, $70, $70, $72, $6f, $61, $63
    db $68, $01, $74, $65, $63, $68, $6e, $69, $71, $75, $65, $20, $74, $6f, $20, $75
    db $73, $65, $2e, $03, $00, $44, $6f, $20, $79, $6f, $75, $20, $6b, $6e, $6f, $77
    db $20, $74, $68, $65, $01, $70, $69, $74, $63, $68, $20, $61, $6e, $64, $20, $70
    db $75, $74, $74, $01, $74, $65, $63, $68, $6e, $69, $71, $75, $65, $3f, $00, $54
    db $68, $69, $73, $20, $73, $68, $6f, $74, $20, $69, $73, $20, $61, $20, $62, $61
    db $73, $65, $01, $66, $6f, $72, $20, $61, $70, $70, $72, $6f, $61, $63, $68, $20
    db $73, $68, $6f, $74, $73, $2e, $02, $59, $6f, $75, $20, $73, $68, $6f, $75, $6c
    db $64, $20, $74, $72, $79, $20, $69, $74, $01, $77, $69, $74, $68, $20, $61, $6c
    db $6c, $20, $79, $6f, $75, $72, $20, $63, $6c, $75, $62, $73, $2e, $03, $00, $49
    db $74, $27, $73, $20, $61, $20, $63, $68, $69, $70, $20, $73, $68, $6f, $74, $2c

    jr nz, jr_01b_52e9                            ; $5273: $20 $74

    ld l, b                                       ; $5275: $68
    ld h, l                                       ; $5276: $65
    ld bc, $6162                                  ; $5277: $01 $62 $61
    ld [hl], e                                    ; $527a: $73
    ld l, c                                       ; $527b: $69
    ld [hl], e                                    ; $527c: $73
    jr nz, jr_01b_52e5                            ; $527d: $20 $66

    ld l, a                                       ; $527f: $6f
    ld [hl], d                                    ; $5280: $72
    jr nz, jr_01b_52e4                            ; $5281: $20 $61

    ld [hl], b                                    ; $5283: $70
    ld [hl], b                                    ; $5284: $70
    ld [hl], d                                    ; $5285: $72
    ld l, a                                       ; $5286: $6f
    ld h, c                                       ; $5287: $61
    ld h, e                                       ; $5288: $63
    ld l, b                                       ; $5289: $68
    ld l, $01                                     ; $528a: $2e $01
    ld c, h                                       ; $528c: $4c
    ld h, l                                       ; $528d: $65
    ld h, c                                       ; $528e: $61
    ld [hl], d                                    ; $528f: $72
    ld l, [hl]                                    ; $5290: $6e
    ld l, c                                       ; $5291: $69
    ld l, [hl]                                    ; $5292: $6e
    ld h, a                                       ; $5293: $67
    jr nz, @+$71                                  ; $5294: $20 $6f

    ld [hl], h                                    ; $5296: $74
    ld l, b                                       ; $5297: $68
    ld h, l                                       ; $5298: $65
    ld [hl], d                                    ; $5299: $72
    ld [bc], a                                    ; $529a: $02
    ld [hl], h                                    ; $529b: $74
    ld h, l                                       ; $529c: $65
    ld h, e                                       ; $529d: $63
    ld l, b                                       ; $529e: $68
    ld l, [hl]                                    ; $529f: $6e
    ld l, c                                       ; $52a0: $69
    ld [hl], c                                    ; $52a1: $71
    ld [hl], l                                    ; $52a2: $75
    ld h, l                                       ; $52a3: $65
    ld [hl], e                                    ; $52a4: $73
    jr nz, jr_01b_5308                            ; $52a5: $20 $61

    ld h, [hl]                                    ; $52a7: $66
    ld [hl], h                                    ; $52a8: $74
    ld h, l                                       ; $52a9: $65
    ld [hl], d                                    ; $52aa: $72
    ld bc, $616d                                  ; $52ab: $01 $6d $61
    ld [hl], e                                    ; $52ae: $73
    ld [hl], h                                    ; $52af: $74
    ld h, l                                       ; $52b0: $65
    ld [hl], d                                    ; $52b1: $72
    ld l, c                                       ; $52b2: $69
    ld l, [hl]                                    ; $52b3: $6e
    ld h, a                                       ; $52b4: $67
    jr nz, @+$6b                                  ; $52b5: $20 $69

    ld [hl], h                                    ; $52b7: $74
    jr nz, jr_01b_5326                            ; $52b8: $20 $6c

    ld h, l                                       ; $52ba: $65
    ld h, c                                       ; $52bb: $61
    ld h, h                                       ; $52bc: $64
    ld [hl], e                                    ; $52bd: $73
    ld bc, $6f74                                  ; $52be: $01 $74 $6f
    jr nz, jr_01b_5336                            ; $52c1: $20 $73

    ld [hl], l                                    ; $52c3: $75
    ld h, e                                       ; $52c4: $63
    ld h, e                                       ; $52c5: $63
    ld h, l                                       ; $52c6: $65
    ld [hl], e                                    ; $52c7: $73
    ld [hl], e                                    ; $52c8: $73
    ld hl, $0003                                  ; $52c9: $21 $03 $00
    ld d, h                                       ; $52cc: $54
    ld l, b                                       ; $52cd: $68
    ld h, l                                       ; $52ce: $65
    jr nz, jr_01b_5334                            ; $52cf: $20 $63

    ld l, a                                       ; $52d1: $6f
    ld l, [hl]                                    ; $52d2: $6e
    ld h, h                                       ; $52d3: $64
    ld l, c                                       ; $52d4: $69
    ld [hl], h                                    ; $52d5: $74
    ld l, c                                       ; $52d6: $69
    ld l, a                                       ; $52d7: $6f
    ld l, [hl]                                    ; $52d8: $6e
    jr nz, jr_01b_534a                            ; $52d9: $20 $6f

    ld h, [hl]                                    ; $52db: $66
    ld bc, $6874                                  ; $52dc: $01 $74 $68
    ld h, l                                       ; $52df: $65
    jr nz, jr_01b_5344                            ; $52e0: $20 $62

    ld h, c                                       ; $52e2: $61
    ld l, h                                       ; $52e3: $6c

jr_01b_52e4:
    ld l, h                                       ; $52e4: $6c

jr_01b_52e5:
    jr nz, jr_01b_5348                            ; $52e5: $20 $61

    ld l, [hl]                                    ; $52e7: $6e
    ld h, h                                       ; $52e8: $64

jr_01b_52e9:
    jr nz, jr_01b_535f                            ; $52e9: $20 $74

    ld l, b                                       ; $52eb: $68
    ld h, l                                       ; $52ec: $65
    ld bc, $7267                                  ; $52ed: $01 $67 $72
    ld l, a                                       ; $52f0: $6f
    ld [hl], l                                    ; $52f1: $75
    ld l, [hl]                                    ; $52f2: $6e
    ld h, h                                       ; $52f3: $64
    jr nz, @+$79                                  ; $52f4: $20 $77

    ld l, c                                       ; $52f6: $69
    ld l, h                                       ; $52f7: $6c
    ld l, h                                       ; $52f8: $6c
    jr nz, jr_01b_535c                            ; $52f9: $20 $61

    ld h, [hl]                                    ; $52fb: $66
    ld h, [hl]                                    ; $52fc: $66
    ld h, l                                       ; $52fd: $65
    ld h, e                                       ; $52fe: $63
    ld [hl], h                                    ; $52ff: $74
    ld [bc], a                                    ; $5300: $02
    ld [hl], h                                    ; $5301: $74
    ld l, b                                       ; $5302: $68
    ld h, l                                       ; $5303: $65
    jr nz, jr_01b_5367                            ; $5304: $20 $61

    ld [hl], b                                    ; $5306: $70
    ld [hl], b                                    ; $5307: $70

jr_01b_5308:
    ld [hl], d                                    ; $5308: $72
    ld l, a                                       ; $5309: $6f
    ld h, c                                       ; $530a: $61
    ld h, e                                       ; $530b: $63
    ld l, b                                       ; $530c: $68
    ld l, $20                                     ; $530d: $2e $20
    ld b, e                                       ; $530f: $43
    ld l, a                                       ; $5310: $6f
    ld l, [hl]                                    ; $5311: $6e
    ld [hl], e                                    ; $5312: $73
    ld l, c                                       ; $5313: $69
    ld h, h                                       ; $5314: $64
    ld h, l                                       ; $5315: $65
    ld [hl], d                                    ; $5316: $72
    ld bc, $696c                                  ; $5317: $01 $6c $69
    ld h, l                                       ; $531a: $65
    jr nz, jr_01b_537e                            ; $531b: $20 $61

    ld l, [hl]                                    ; $531d: $6e
    ld h, h                                       ; $531e: $64
    jr nz, jr_01b_5395                            ; $531f: $20 $74

    ld l, b                                       ; $5321: $68
    ld h, l                                       ; $5322: $65
    jr nz, jr_01b_538c                            ; $5323: $20 $67

    ld [hl], d                                    ; $5325: $72

jr_01b_5326:
    ld h, l                                       ; $5326: $65
    ld h, l                                       ; $5327: $65
    ld l, [hl]                                    ; $5328: $6e
    daa                                           ; $5329: $27
    ld [hl], e                                    ; $532a: $73
    ld bc, $6c73                                  ; $532b: $01 $73 $6c
    ld l, a                                       ; $532e: $6f
    ld [hl], b                                    ; $532f: $70
    ld h, l                                       ; $5330: $65
    jr nz, jr_01b_53aa                            ; $5331: $20 $77

    ld l, b                                       ; $5333: $68

jr_01b_5334:
    ld h, l                                       ; $5334: $65
    ld l, [hl]                                    ; $5335: $6e

jr_01b_5336:
    jr nz, @+$7b                                  ; $5336: $20 $79

    ld l, a                                       ; $5338: $6f
    ld [hl], l                                    ; $5339: $75
    jr nz, @+$6a                                  ; $533a: $20 $68

    ld l, c                                       ; $533c: $69
    ld [hl], h                                    ; $533d: $74
    ld l, $03                                     ; $533e: $2e $03
    nop                                           ; $5340: $00
    ld b, h                                       ; $5341: $44
    ld l, c                                       ; $5342: $69
    ld h, h                                       ; $5343: $64

jr_01b_5344:
    jr nz, jr_01b_53bf                            ; $5344: $20 $79

    ld l, a                                       ; $5346: $6f
    ld [hl], l                                    ; $5347: $75

jr_01b_5348:
    jr nz, jr_01b_53be                            ; $5348: $20 $74

jr_01b_534a:
    ld l, b                                       ; $534a: $68
    ld l, c                                       ; $534b: $69
    ld l, [hl]                                    ; $534c: $6e
    ld l, e                                       ; $534d: $6b
    jr nz, @+$63                                  ; $534e: $20 $61

    ld [hl], b                                    ; $5350: $70
    ld [hl], b                                    ; $5351: $70
    ld [hl], d                                    ; $5352: $72
    ld l, a                                       ; $5353: $6f
    ld h, c                                       ; $5354: $61
    ld h, e                                       ; $5355: $63
    ld l, b                                       ; $5356: $68
    ld bc, $6873                                  ; $5357: $01 $73 $68
    ld l, a                                       ; $535a: $6f
    ld [hl], h                                    ; $535b: $74

jr_01b_535c:
    ld [hl], e                                    ; $535c: $73
    jr nz, jr_01b_53ce                            ; $535d: $20 $6f

jr_01b_535f:
    ld l, [hl]                                    ; $535f: $6e
    ld l, h                                       ; $5360: $6c
    ld a, c                                       ; $5361: $79
    jr nz, jr_01b_53d9                            ; $5362: $20 $75

    ld [hl], e                                    ; $5364: $73
    ld h, l                                       ; $5365: $65
    ld h, h                                       ; $5366: $64

jr_01b_5367:
    jr nz, jr_01b_53dd                            ; $5367: $20 $74

    ld l, b                                       ; $5369: $68
    ld h, l                                       ; $536a: $65
    ld bc, $5753                                  ; $536b: $01 $53 $57
    jr nz, @+$71                                  ; $536e: $20 $6f

    ld [hl], d                                    ; $5370: $72
    jr nz, jr_01b_53c3                            ; $5371: $20 $50

    ld d, a                                       ; $5373: $57
    ccf                                           ; $5374: $3f
    nop                                           ; $5375: $00
    ld d, h                                       ; $5376: $54
    ld l, b                                       ; $5377: $68
    ld h, c                                       ; $5378: $61
    ld [hl], h                                    ; $5379: $74
    daa                                           ; $537a: $27
    ld [hl], e                                    ; $537b: $73
    jr nz, jr_01b_53cd                            ; $537c: $20 $4f

jr_01b_537e:
    ld c, e                                       ; $537e: $4b
    jr nz, jr_01b_53e2                            ; $537f: $20 $61

    ld [hl], h                                    ; $5381: $74
    jr nz, jr_01b_53ea                            ; $5382: $20 $66

    ld l, c                                       ; $5384: $69
    ld [hl], d                                    ; $5385: $72
    ld [hl], e                                    ; $5386: $73
    ld [hl], h                                    ; $5387: $74
    inc l                                         ; $5388: $2c
    jr nz, jr_01b_53ed                            ; $5389: $20 $62

    ld [hl], l                                    ; $538b: $75

jr_01b_538c:
    ld [hl], h                                    ; $538c: $74
    ld bc, $6f79                                  ; $538d: $01 $79 $6f
    ld [hl], l                                    ; $5390: $75
    jr nz, @+$65                                  ; $5391: $20 $63

    ld h, c                                       ; $5393: $61
    ld l, [hl]                                    ; $5394: $6e

jr_01b_5395:
    daa                                           ; $5395: $27
    ld [hl], h                                    ; $5396: $74
    jr nz, jr_01b_53fa                            ; $5397: $20 $61

    ld [hl], h                                    ; $5399: $74
    ld [hl], h                                    ; $539a: $74
    ld h, c                                       ; $539b: $61
    ld h, e                                       ; $539c: $63
    ld l, e                                       ; $539d: $6b
    jr nz, jr_01b_5417                            ; $539e: $20 $77

    ld l, c                                       ; $53a0: $69
    ld [hl], h                                    ; $53a1: $74
    ld l, b                                       ; $53a2: $68
    ld bc, $2061                                  ; $53a3: $01 $61 $20
    ld [hl], a                                    ; $53a6: $77
    ld h, l                                       ; $53a7: $65
    ld h, h                                       ; $53a8: $64
    ld h, a                                       ; $53a9: $67

jr_01b_53aa:
    ld h, l                                       ; $53aa: $65
    ld l, $02                                     ; $53ab: $2e $02
    ld d, l                                       ; $53ad: $55
    ld [hl], e                                    ; $53ae: $73
    ld h, l                                       ; $53af: $65
    jr nz, @+$66                                  ; $53b0: $20 $64

    ld l, c                                       ; $53b2: $69
    ld h, [hl]                                    ; $53b3: $66
    ld h, [hl]                                    ; $53b4: $66
    ld h, l                                       ; $53b5: $65
    ld [hl], d                                    ; $53b6: $72
    ld h, l                                       ; $53b7: $65
    ld l, [hl]                                    ; $53b8: $6e
    ld [hl], h                                    ; $53b9: $74
    jr nz, @+$65                                  ; $53ba: $20 $63

    ld l, h                                       ; $53bc: $6c
    ld [hl], l                                    ; $53bd: $75

jr_01b_53be:
    ld h, d                                       ; $53be: $62

jr_01b_53bf:
    ld [hl], e                                    ; $53bf: $73
    ld bc, $6e61                                  ; $53c0: $01 $61 $6e

jr_01b_53c3:
    ld h, h                                       ; $53c3: $64
    jr nz, jr_01b_543a                            ; $53c4: $20 $74

    ld [hl], d                                    ; $53c6: $72
    ld a, c                                       ; $53c7: $79
    jr nz, jr_01b_543d                            ; $53c8: $20 $73

    ld l, b                                       ; $53ca: $68
    ld l, a                                       ; $53cb: $6f
    ld l, a                                       ; $53cc: $6f

jr_01b_53cd:
    ld [hl], h                                    ; $53cd: $74

jr_01b_53ce:
    ld l, c                                       ; $53ce: $69
    ld l, [hl]                                    ; $53cf: $6e
    ld h, a                                       ; $53d0: $67
    jr nz, jr_01b_5439                            ; $53d1: $20 $66

    ld l, a                                       ; $53d3: $6f
    ld [hl], d                                    ; $53d4: $72
    ld bc, $6874                                  ; $53d5: $01 $74 $68
    ld h, l                                       ; $53d8: $65

jr_01b_53d9:
    jr nz, jr_01b_544b                            ; $53d9: $20 $70

    ld l, c                                       ; $53db: $69
    ld l, [hl]                                    ; $53dc: $6e

jr_01b_53dd:
    ld hl, $0003                                  ; $53dd: $21 $03 $00
    ld c, h                                       ; $53e0: $4c
    ld h, l                                       ; $53e1: $65

jr_01b_53e2:
    ld h, c                                       ; $53e2: $61
    ld [hl], d                                    ; $53e3: $72
    ld l, [hl]                                    ; $53e4: $6e
    ld l, c                                       ; $53e5: $69
    ld l, [hl]                                    ; $53e6: $6e
    ld h, a                                       ; $53e7: $67
    jr nz, jr_01b_545e                            ; $53e8: $20 $74

jr_01b_53ea:
    ld l, b                                       ; $53ea: $68
    ld h, c                                       ; $53eb: $61
    ld [hl], h                                    ; $53ec: $74

jr_01b_53ed:
    jr nz, jr_01b_5458                            ; $53ed: $20 $69

    ld l, [hl]                                    ; $53ef: $6e
    ld bc, $7573                                  ; $53f0: $01 $73 $75
    ld h, e                                       ; $53f3: $63
    ld l, b                                       ; $53f4: $68
    jr nz, jr_01b_5458                            ; $53f5: $20 $61

    jr nz, jr_01b_546c                            ; $53f7: $20 $73

    ld l, b                                       ; $53f9: $68

jr_01b_53fa:
    ld l, a                                       ; $53fa: $6f
    ld [hl], d                                    ; $53fb: $72
    ld [hl], h                                    ; $53fc: $74
    jr nz, @+$76                                  ; $53fd: $20 $74

    ld l, c                                       ; $53ff: $69
    ld l, l                                       ; $5400: $6d
    ld h, l                                       ; $5401: $65
    ld bc, $7369                                  ; $5402: $01 $69 $73
    jr nz, jr_01b_5470                            ; $5405: $20 $69

    ld l, l                                       ; $5407: $6d
    ld [hl], b                                    ; $5408: $70
    ld [hl], d                                    ; $5409: $72
    ld h, l                                       ; $540a: $65
    ld [hl], e                                    ; $540b: $73
    ld [hl], e                                    ; $540c: $73
    ld l, c                                       ; $540d: $69
    halt                                          ; $540e: $76
    ld h, l                                       ; $540f: $65
    ld l, $03                                     ; $5410: $2e $03
    nop                                           ; $5412: $00
    ld b, h                                       ; $5413: $44
    ld l, a                                       ; $5414: $6f
    jr nz, jr_01b_5490                            ; $5415: $20 $79

jr_01b_5417:
    ld l, a                                       ; $5417: $6f
    ld [hl], l                                    ; $5418: $75
    jr nz, @+$6d                                  ; $5419: $20 $6b

    ld l, [hl]                                    ; $541b: $6e
    ld l, a                                       ; $541c: $6f
    ld [hl], a                                    ; $541d: $77
    jr nz, jr_01b_5488                            ; $541e: $20 $68

    ld l, a                                       ; $5420: $6f
    ld [hl], a                                    ; $5421: $77
    jr nz, jr_01b_5498                            ; $5422: $20 $74

    ld l, a                                       ; $5424: $6f
    ld bc, $7570                                  ; $5425: $01 $70 $75
    ld [hl], h                                    ; $5428: $74
    jr nz, jr_01b_549e                            ; $5429: $20 $73

    ld [hl], b                                    ; $542b: $70
    ld l, c                                       ; $542c: $69
    ld l, [hl]                                    ; $542d: $6e
    jr nz, jr_01b_549f                            ; $542e: $20 $6f

    ld l, [hl]                                    ; $5430: $6e
    jr nz, @+$63                                  ; $5431: $20 $61

    jr nz, jr_01b_5497                            ; $5433: $20 $62

    ld h, c                                       ; $5435: $61
    ld l, h                                       ; $5436: $6c
    ld l, h                                       ; $5437: $6c
    ccf                                           ; $5438: $3f

jr_01b_5439:
    nop                                           ; $5439: $00

jr_01b_543a:
    ld d, h                                       ; $543a: $54
    ld [hl], d                                    ; $543b: $72
    ld a, c                                       ; $543c: $79

jr_01b_543d:
    jr nz, @+$6b                                  ; $543d: $20 $69

    ld [hl], h                                    ; $543f: $74
    jr nz, jr_01b_54b1                            ; $5440: $20 $6f

    ld l, [hl]                                    ; $5442: $6e
    jr nz, jr_01b_54a6                            ; $5443: $20 $61

    ld [hl], b                                    ; $5445: $70
    ld [hl], b                                    ; $5446: $70
    ld [hl], d                                    ; $5447: $72
    ld l, a                                       ; $5448: $6f
    ld h, c                                       ; $5449: $61
    ld h, e                                       ; $544a: $63

jr_01b_544b:
    ld l, b                                       ; $544b: $68
    ld bc, $6977                                  ; $544c: $01 $77 $69
    ld [hl], h                                    ; $544f: $74
    ld l, b                                       ; $5450: $68
    jr nz, jr_01b_54c6                            ; $5451: $20 $73

    ld l, a                                       ; $5453: $6f
    ld l, l                                       ; $5454: $6d
    ld h, l                                       ; $5455: $65
    ld [hl], h                                    ; $5456: $74
    ld l, b                                       ; $5457: $68

jr_01b_5458:
    ld l, c                                       ; $5458: $69
    ld l, [hl]                                    ; $5459: $6e
    ld h, a                                       ; $545a: $67
    ld bc, $6562                                  ; $545b: $01 $62 $65

jr_01b_545e:
    ld [hl], e                                    ; $545e: $73
    ld l, c                                       ; $545f: $69
    ld h, h                                       ; $5460: $64
    ld h, l                                       ; $5461: $65
    ld [hl], e                                    ; $5462: $73
    jr nz, jr_01b_54c6                            ; $5463: $20 $61

    jr nz, @+$72                                  ; $5465: $20 $70

    ld [hl], l                                    ; $5467: $75
    ld [hl], h                                    ; $5468: $74
    ld [hl], h                                    ; $5469: $74
    ld h, l                                       ; $546a: $65
    ld [hl], d                                    ; $546b: $72

jr_01b_546c:
    ld l, $03                                     ; $546c: $2e $03
    nop                                           ; $546e: $00
    ld d, l                                       ; $546f: $55

jr_01b_5470:
    ld [hl], e                                    ; $5470: $73
    ld h, l                                       ; $5471: $65
    jr nz, jr_01b_54e8                            ; $5472: $20 $74

    ld l, b                                       ; $5474: $68
    ld h, l                                       ; $5475: $65
    jr nz, jr_01b_54a3                            ; $5476: $20 $2b

    jr nz, jr_01b_54bd                            ; $5478: $20 $43

    ld l, a                                       ; $547a: $6f
    ld l, [hl]                                    ; $547b: $6e
    ld [hl], h                                    ; $547c: $74
    ld [hl], d                                    ; $547d: $72
    ld l, a                                       ; $547e: $6f
    ld l, h                                       ; $547f: $6c
    jr nz, jr_01b_54d2                            ; $5480: $20 $50

    ld h, c                                       ; $5482: $61
    ld h, h                                       ; $5483: $64
    ld bc, $6661                                  ; $5484: $01 $61 $66
    ld [hl], h                                    ; $5487: $74

jr_01b_5488:
    ld h, l                                       ; $5488: $65
    ld [hl], d                                    ; $5489: $72
    jr nz, jr_01b_5500                            ; $548a: $20 $74

    ld l, b                                       ; $548c: $68
    ld h, l                                       ; $548d: $65
    jr nz, jr_01b_54e3                            ; $548e: $20 $53

jr_01b_5490:
    ld l, b                                       ; $5490: $68
    ld l, a                                       ; $5491: $6f
    ld [hl], h                                    ; $5492: $74
    jr nz, @+$49                                  ; $5493: $20 $47

    ld h, c                                       ; $5495: $61
    ld [hl], l                                    ; $5496: $75

jr_01b_5497:
    ld h, a                                       ; $5497: $67

jr_01b_5498:
    ld h, l                                       ; $5498: $65
    ld bc, $6562                                  ; $5499: $01 $62 $65
    ld h, a                                       ; $549c: $67
    ld l, c                                       ; $549d: $69

jr_01b_549e:
    ld l, [hl]                                    ; $549e: $6e

jr_01b_549f:
    ld [hl], e                                    ; $549f: $73
    jr nz, jr_01b_550f                            ; $54a0: $20 $6d

    ld l, a                                       ; $54a2: $6f

jr_01b_54a3:
    halt                                          ; $54a3: $76
    ld l, c                                       ; $54a4: $69
    ld l, [hl]                                    ; $54a5: $6e

jr_01b_54a6:
    ld h, a                                       ; $54a6: $67
    ld l, $02                                     ; $54a7: $2e $02
    ld d, b                                       ; $54a9: $50
    ld [hl], d                                    ; $54aa: $72
    ld h, l                                       ; $54ab: $65
    ld [hl], e                                    ; $54ac: $73
    ld [hl], e                                    ; $54ad: $73
    jr nz, @+$77                                  ; $54ae: $20 $75

    ld [hl], b                                    ; $54b0: $70

jr_01b_54b1:
    jr nz, jr_01b_5527                            ; $54b1: $20 $74

    ld l, a                                       ; $54b3: $6f
    jr nz, jr_01b_5523                            ; $54b4: $20 $6d

    ld h, c                                       ; $54b6: $61
    ld l, e                                       ; $54b7: $6b
    ld h, l                                       ; $54b8: $65
    ld bc, $6874                                  ; $54b9: $01 $74 $68
    ld h, l                                       ; $54bc: $65

jr_01b_54bd:
    jr nz, jr_01b_5521                            ; $54bd: $20 $62

    ld h, c                                       ; $54bf: $61
    ld l, h                                       ; $54c0: $6c
    ld l, h                                       ; $54c1: $6c
    jr nz, jr_01b_5536                            ; $54c2: $20 $72

    ld l, a                                       ; $54c4: $6f
    ld l, h                                       ; $54c5: $6c

jr_01b_54c6:
    ld l, h                                       ; $54c6: $6c
    ld l, $02                                     ; $54c7: $2e $02
    ld d, b                                       ; $54c9: $50
    ld [hl], d                                    ; $54ca: $72
    ld h, l                                       ; $54cb: $65
    ld [hl], e                                    ; $54cc: $73
    ld [hl], e                                    ; $54cd: $73
    jr nz, @+$66                                  ; $54ce: $20 $64

    ld l, a                                       ; $54d0: $6f
    ld [hl], a                                    ; $54d1: $77

jr_01b_54d2:
    ld l, [hl]                                    ; $54d2: $6e
    jr nz, jr_01b_5549                            ; $54d3: $20 $74

    ld l, a                                       ; $54d5: $6f
    jr nz, jr_01b_5545                            ; $54d6: $20 $6d

    ld h, c                                       ; $54d8: $61
    ld l, e                                       ; $54d9: $6b
    ld h, l                                       ; $54da: $65
    ld bc, $7469                                  ; $54db: $01 $69 $74
    jr nz, jr_01b_5553                            ; $54de: $20 $73

    ld [hl], h                                    ; $54e0: $74
    ld l, a                                       ; $54e1: $6f
    ld [hl], b                                    ; $54e2: $70

jr_01b_54e3:
    jr nz, @+$73                                  ; $54e3: $20 $71

    ld [hl], l                                    ; $54e5: $75
    ld l, c                                       ; $54e6: $69
    ld h, e                                       ; $54e7: $63

jr_01b_54e8:
    ld l, e                                       ; $54e8: $6b
    ld l, h                                       ; $54e9: $6c
    ld a, c                                       ; $54ea: $79
    ld l, $03                                     ; $54eb: $2e $03
    nop                                           ; $54ed: $00
    ld d, b                                       ; $54ee: $50
    ld [hl], l                                    ; $54ef: $75
    ld [hl], h                                    ; $54f0: $74
    ld [hl], h                                    ; $54f1: $74
    ld l, c                                       ; $54f2: $69
    ld l, [hl]                                    ; $54f3: $6e
    ld h, a                                       ; $54f4: $67
    jr nz, jr_01b_556a                            ; $54f5: $20 $73

    ld [hl], b                                    ; $54f7: $70
    ld l, c                                       ; $54f8: $69
    ld l, [hl]                                    ; $54f9: $6e
    jr nz, @+$71                                  ; $54fa: $20 $6f

    ld l, [hl]                                    ; $54fc: $6e
    ld bc, $6874                                  ; $54fd: $01 $74 $68

jr_01b_5500:
    ld h, l                                       ; $5500: $65
    jr nz, jr_01b_5565                            ; $5501: $20 $62

    ld h, c                                       ; $5503: $61
    ld l, h                                       ; $5504: $6c
    ld l, h                                       ; $5505: $6c
    jr nz, jr_01b_5575                            ; $5506: $20 $6d

    ld h, c                                       ; $5508: $61
    ld l, e                                       ; $5509: $6b
    ld h, l                                       ; $550a: $65
    ld [hl], e                                    ; $550b: $73
    ld bc, $6874                                  ; $550c: $01 $74 $68

jr_01b_550f:
    ld h, l                                       ; $550f: $65
    jr nz, jr_01b_5573                            ; $5510: $20 $61

    ld [hl], b                                    ; $5512: $70
    ld [hl], b                                    ; $5513: $70
    ld [hl], d                                    ; $5514: $72
    ld l, a                                       ; $5515: $6f
    ld h, c                                       ; $5516: $61
    ld h, e                                       ; $5517: $63
    ld l, b                                       ; $5518: $68
    jr nz, jr_01b_5581                            ; $5519: $20 $66

    ld [hl], l                                    ; $551b: $75
    ld l, [hl]                                    ; $551c: $6e
    ld l, $02                                     ; $551d: $2e $02
    ld d, l                                       ; $551f: $55
    ld [hl], e                                    ; $5520: $73

jr_01b_5521:
    ld l, c                                       ; $5521: $69
    ld l, [hl]                                    ; $5522: $6e

jr_01b_5523:
    ld h, a                                       ; $5523: $67
    jr nz, jr_01b_5588                            ; $5524: $20 $62

    ld h, c                                       ; $5526: $61

jr_01b_5527:
    ld h, e                                       ; $5527: $63
    ld l, e                                       ; $5528: $6b
    ld [hl], e                                    ; $5529: $73
    ld [hl], b                                    ; $552a: $70
    ld l, c                                       ; $552b: $69
    ld l, [hl]                                    ; $552c: $6e
    ld bc, $656d                                  ; $552d: $01 $6d $65
    ld h, c                                       ; $5530: $61
    ld l, [hl]                                    ; $5531: $6e
    ld [hl], e                                    ; $5532: $73
    jr nz, jr_01b_559e                            ; $5533: $20 $69

    ld [hl], h                                    ; $5535: $74

jr_01b_5536:
    ld [hl], e                                    ; $5536: $73
    jr nz, jr_01b_559a                            ; $5537: $20 $61

    ld l, h                                       ; $5539: $6c
    ld l, h                                       ; $553a: $6c
    jr nz, jr_01b_55b2                            ; $553b: $20 $75

    ld [hl], b                                    ; $553d: $70
    ld bc, $6f74                                  ; $553e: $01 $74 $6f
    jr nz, jr_01b_55bc                            ; $5541: $20 $79

    ld l, a                                       ; $5543: $6f
    ld [hl], l                                    ; $5544: $75

jr_01b_5545:
    ld hl, $0003                                  ; $5545: $21 $03 $00
    ld b, c                                       ; $5548: $41

jr_01b_5549:
    halt                                          ; $5549: $76
    ld l, a                                       ; $554a: $6f
    ld l, c                                       ; $554b: $69
    ld h, h                                       ; $554c: $64
    jr nz, jr_01b_55b7                            ; $554d: $20 $68

    ld h, c                                       ; $554f: $61
    ld a, d                                       ; $5550: $7a
    ld h, c                                       ; $5551: $61
    ld [hl], d                                    ; $5552: $72

jr_01b_5553:
    ld h, h                                       ; $5553: $64
    ld [hl], e                                    ; $5554: $73
    jr nz, jr_01b_55b8                            ; $5555: $20 $61

    ld [hl], e                                    ; $5557: $73
    ld bc, $6562                                  ; $5558: $01 $62 $65
    ld [hl], e                                    ; $555b: $73
    ld [hl], h                                    ; $555c: $74
    jr nz, jr_01b_55d8                            ; $555d: $20 $79

    ld l, a                                       ; $555f: $6f
    ld [hl], l                                    ; $5560: $75
    jr nz, @+$65                                  ; $5561: $20 $63

    ld h, c                                       ; $5563: $61
    ld l, [hl]                                    ; $5564: $6e

jr_01b_5565:
    ld l, $01                                     ; $5565: $2e $01
    ld b, d                                       ; $5567: $42
    ld [hl], l                                    ; $5568: $75
    ld [hl], h                                    ; $5569: $74

jr_01b_556a:
    jr nz, jr_01b_55d5                            ; $556a: $20 $69

    ld h, [hl]                                    ; $556c: $66
    jr nz, jr_01b_55e8                            ; $556d: $20 $79

    ld l, a                                       ; $556f: $6f
    ld [hl], l                                    ; $5570: $75
    jr nz, jr_01b_55d4                            ; $5571: $20 $61

jr_01b_5573:
    ld l, h                                       ; $5573: $6c
    ld [hl], a                                    ; $5574: $77

jr_01b_5575:
    ld h, c                                       ; $5575: $61
    ld a, c                                       ; $5576: $79
    ld [hl], e                                    ; $5577: $73
    ld [bc], a                                    ; $5578: $02
    ld h, c                                       ; $5579: $61
    halt                                          ; $557a: $76
    ld l, a                                       ; $557b: $6f
    ld l, c                                       ; $557c: $69
    ld h, h                                       ; $557d: $64
    jr nz, jr_01b_55f4                            ; $557e: $20 $74

    ld l, b                                       ; $5580: $68

jr_01b_5581:
    ld h, l                                       ; $5581: $65
    ld l, l                                       ; $5582: $6d
    inc l                                         ; $5583: $2c
    jr nz, @+$7b                                  ; $5584: $20 $79

    ld l, a                                       ; $5586: $6f
    ld [hl], l                                    ; $5587: $75

jr_01b_5588:
    daa                                           ; $5588: $27
    ld l, h                                       ; $5589: $6c
    ld l, h                                       ; $558a: $6c
    ld bc, $656e                                  ; $558b: $01 $6e $65
    halt                                          ; $558e: $76
    ld h, l                                       ; $558f: $65
    ld [hl], d                                    ; $5590: $72
    jr nz, jr_01b_55fa                            ; $5591: $20 $67

    ld h, l                                       ; $5593: $65
    ld [hl], h                                    ; $5594: $74
    jr nz, @+$63                                  ; $5595: $20 $61

    jr nz, jr_01b_55fb                            ; $5597: $20 $62

    ld l, c                                       ; $5599: $69

jr_01b_559a:
    ld [hl], d                                    ; $559a: $72
    ld h, h                                       ; $559b: $64
    ld l, c                                       ; $559c: $69
    ld h, l                                       ; $559d: $65

jr_01b_559e:
    inc l                                         ; $559e: $2c
    ld bc, $6f73                                  ; $559f: $01 $73 $6f
    jr nz, jr_01b_5614                            ; $55a2: $20 $70

    ld [hl], d                                    ; $55a4: $72
    ld h, c                                       ; $55a5: $61
    ld h, e                                       ; $55a6: $63
    ld [hl], h                                    ; $55a7: $74
    ld l, c                                       ; $55a8: $69
    ld h, e                                       ; $55a9: $63
    ld h, l                                       ; $55aa: $65
    jr nz, @+$77                                  ; $55ab: $20 $75

    ld [hl], b                                    ; $55ad: $70
    ld hl, $0003                                  ; $55ae: $21 $03 $00
    ld c, c                                       ; $55b1: $49

jr_01b_55b2:
    ld [hl], e                                    ; $55b2: $73
    jr nz, jr_01b_5628                            ; $55b3: $20 $73

    ld [hl], b                                    ; $55b5: $70
    ld l, c                                       ; $55b6: $69

jr_01b_55b7:
    ld l, [hl]                                    ; $55b7: $6e

jr_01b_55b8:
    jr nz, @+$6a                                  ; $55b8: $20 $68

    ld h, l                                       ; $55ba: $65
    ld l, h                                       ; $55bb: $6c

jr_01b_55bc:
    ld [hl], b                                    ; $55bc: $70
    ld l, c                                       ; $55bd: $69
    ld l, [hl]                                    ; $55be: $6e
    ld h, a                                       ; $55bf: $67
    ld bc, $6f79                                  ; $55c0: $01 $79 $6f
    ld [hl], l                                    ; $55c3: $75
    ld [hl], d                                    ; $55c4: $72
    jr nz, jr_01b_5628                            ; $55c5: $20 $61

    ld [hl], b                                    ; $55c7: $70
    ld [hl], b                                    ; $55c8: $70
    ld [hl], d                                    ; $55c9: $72
    ld l, a                                       ; $55ca: $6f
    ld h, c                                       ; $55cb: $61
    ld h, e                                       ; $55cc: $63
    ld l, b                                       ; $55cd: $68
    ccf                                           ; $55ce: $3f
    nop                                           ; $55cf: $00
    ld e, c                                       ; $55d0: $59
    ld h, l                                       ; $55d1: $65
    ld h, c                                       ; $55d2: $61
    ld l, b                                       ; $55d3: $68

jr_01b_55d4:
    inc l                                         ; $55d4: $2c

jr_01b_55d5:
    jr nz, @+$6b                                  ; $55d5: $20 $69

    ld [hl], h                                    ; $55d7: $74

jr_01b_55d8:
    jr nz, jr_01b_564c                            ; $55d8: $20 $72

    ld h, l                                       ; $55da: $65
    ld h, c                                       ; $55db: $61
    ld l, h                                       ; $55dc: $6c
    ld l, h                                       ; $55dd: $6c
    ld a, c                                       ; $55de: $79
    jr nz, jr_01b_5649                            ; $55df: $20 $68

    ld h, l                                       ; $55e1: $65
    ld l, h                                       ; $55e2: $6c
    ld [hl], b                                    ; $55e3: $70
    ld [hl], e                                    ; $55e4: $73
    ld l, $03                                     ; $55e5: $2e $03
    nop                                           ; $55e7: $00

jr_01b_55e8:
    ld d, e                                       ; $55e8: $53
    ld [hl], b                                    ; $55e9: $70
    ld l, c                                       ; $55ea: $69
    ld l, [hl]                                    ; $55eb: $6e
    jr nz, @+$75                                  ; $55ec: $20 $73

    ld l, b                                       ; $55ee: $68
    ld l, a                                       ; $55ef: $6f
    ld [hl], h                                    ; $55f0: $74
    ld [hl], e                                    ; $55f1: $73
    jr nz, jr_01b_5655                            ; $55f2: $20 $61

jr_01b_55f4:
    ld [hl], d                                    ; $55f4: $72
    ld h, l                                       ; $55f5: $65
    ld bc, $6568                                  ; $55f6: $01 $68 $65
    ld l, h                                       ; $55f9: $6c

jr_01b_55fa:
    ld [hl], b                                    ; $55fa: $70

jr_01b_55fb:
    ld h, [hl]                                    ; $55fb: $66
    ld [hl], l                                    ; $55fc: $75
    ld l, h                                       ; $55fd: $6c
    ld l, $20                                     ; $55fe: $2e $20
    ld b, e                                       ; $5600: $43
    ld h, c                                       ; $5601: $61
    ld l, [hl]                                    ; $5602: $6e
    jr nz, jr_01b_567e                            ; $5603: $20 $79

    ld l, a                                       ; $5605: $6f
    ld [hl], l                                    ; $5606: $75
    ld bc, $6f64                                  ; $5607: $01 $64 $6f
    jr nz, jr_01b_567b                            ; $560a: $20 $6f

    ld l, [hl]                                    ; $560c: $6e
    ld h, l                                       ; $560d: $65
    ccf                                           ; $560e: $3f
    nop                                           ; $560f: $00
    ld d, h                                       ; $5610: $54
    ld l, b                                       ; $5611: $68
    ld h, l                                       ; $5612: $65
    ld a, c                                       ; $5613: $79

jr_01b_5614:
    daa                                           ; $5614: $27
    ld [hl], d                                    ; $5615: $72
    ld h, l                                       ; $5616: $65
    jr nz, jr_01b_568d                            ; $5617: $20 $74

    ld l, a                                       ; $5619: $6f
    ld [hl], l                                    ; $561a: $75
    ld h, a                                       ; $561b: $67
    ld l, b                                       ; $561c: $68
    jr nz, jr_01b_5680                            ; $561d: $20 $61

    ld [hl], h                                    ; $561f: $74
    ld bc, $6966                                  ; $5620: $01 $66 $69
    ld [hl], d                                    ; $5623: $72
    ld [hl], e                                    ; $5624: $73
    ld [hl], h                                    ; $5625: $74
    ld l, $2e                                     ; $5626: $2e $2e

jr_01b_5628:
    ld l, $20                                     ; $5628: $2e $20
    ld c, c                                       ; $562a: $49
    ld [hl], h                                    ; $562b: $74
    jr nz, jr_01b_56a2                            ; $562c: $20 $74

    ld h, c                                       ; $562e: $61
    ld l, e                                       ; $562f: $6b
    ld h, l                                       ; $5630: $65
    ld [hl], e                                    ; $5631: $73
    ld bc, $6567                                  ; $5632: $01 $67 $65
    ld [hl], h                                    ; $5635: $74
    ld [hl], h                                    ; $5636: $74
    ld l, c                                       ; $5637: $69
    ld l, [hl]                                    ; $5638: $6e
    ld h, a                                       ; $5639: $67
    jr nz, jr_01b_56b1                            ; $563a: $20 $75

    ld [hl], e                                    ; $563c: $73
    ld h, l                                       ; $563d: $65
    ld h, h                                       ; $563e: $64
    jr nz, @+$76                                  ; $563f: $20 $74

    ld l, a                                       ; $5641: $6f
    ld l, $03                                     ; $5642: $2e $03
    nop                                           ; $5644: $00
    ld b, c                                       ; $5645: $41
    ld h, [hl]                                    ; $5646: $66
    ld [hl], h                                    ; $5647: $74
    ld h, l                                       ; $5648: $65

jr_01b_5649:
    ld [hl], d                                    ; $5649: $72
    jr nz, jr_01b_56c0                            ; $564a: $20 $74

jr_01b_564c:
    ld l, b                                       ; $564c: $68
    ld h, l                                       ; $564d: $65
    jr nz, jr_01b_56a3                            ; $564e: $20 $53

    ld l, b                                       ; $5650: $68
    ld l, a                                       ; $5651: $6f
    ld [hl], h                                    ; $5652: $74
    jr nz, @+$49                                  ; $5653: $20 $47

jr_01b_5655:
    ld h, c                                       ; $5655: $61
    ld [hl], l                                    ; $5656: $75
    ld h, a                                       ; $5657: $67
    ld h, l                                       ; $5658: $65
    ld bc, $7473                                  ; $5659: $01 $73 $74
    ld h, c                                       ; $565c: $61
    ld [hl], d                                    ; $565d: $72
    ld [hl], h                                    ; $565e: $74
    ld [hl], e                                    ; $565f: $73
    jr nz, jr_01b_56cf                            ; $5660: $20 $6d

    ld l, a                                       ; $5662: $6f
    halt                                          ; $5663: $76
    ld l, c                                       ; $5664: $69
    ld l, [hl]                                    ; $5665: $6e
    ld h, a                                       ; $5666: $67
    inc l                                         ; $5667: $2c
    jr nz, jr_01b_56da                            ; $5668: $20 $70

    ld [hl], d                                    ; $566a: $72
    ld h, l                                       ; $566b: $65
    ld [hl], e                                    ; $566c: $73
    ld [hl], e                                    ; $566d: $73
    ld bc, $6874                                  ; $566e: $01 $74 $68
    ld h, l                                       ; $5671: $65
    jr nz, jr_01b_569f                            ; $5672: $20 $2b

    jr nz, jr_01b_56b9                            ; $5674: $20 $43

    ld l, a                                       ; $5676: $6f
    ld l, [hl]                                    ; $5677: $6e
    ld [hl], h                                    ; $5678: $74
    ld [hl], d                                    ; $5679: $72
    ld l, a                                       ; $567a: $6f

jr_01b_567b:
    ld l, h                                       ; $567b: $6c
    jr nz, jr_01b_56ce                            ; $567c: $20 $50

jr_01b_567e:
    ld h, c                                       ; $567e: $61
    ld h, h                                       ; $567f: $64

jr_01b_5680:
    ld [bc], a                                    ; $5680: $02
    ld h, d                                       ; $5681: $62
    ld h, l                                       ; $5682: $65
    ld h, [hl]                                    ; $5683: $66
    ld l, a                                       ; $5684: $6f
    ld [hl], d                                    ; $5685: $72
    ld h, l                                       ; $5686: $65
    jr nz, jr_01b_56fd                            ; $5687: $20 $74

    ld l, b                                       ; $5689: $68
    ld h, l                                       ; $568a: $65
    jr nz, jr_01b_56f4                            ; $568b: $20 $67

jr_01b_568d:
    ld h, c                                       ; $568d: $61
    ld [hl], l                                    ; $568e: $75
    ld h, a                                       ; $568f: $67
    ld h, l                                       ; $5690: $65
    ld bc, $7473                                  ; $5691: $01 $73 $74
    ld l, a                                       ; $5694: $6f
    ld [hl], b                                    ; $5695: $70
    ld [hl], e                                    ; $5696: $73
    ld l, $20                                     ; $5697: $2e $20
    ld d, l                                       ; $5699: $55
    ld [hl], b                                    ; $569a: $70
    jr nz, @+$79                                  ; $569b: $20 $77

    ld l, c                                       ; $569d: $69
    ld l, h                                       ; $569e: $6c

jr_01b_569f:
    ld l, h                                       ; $569f: $6c
    jr nz, jr_01b_570f                            ; $56a0: $20 $6d

jr_01b_56a2:
    ld h, c                                       ; $56a2: $61

jr_01b_56a3:
    ld l, e                                       ; $56a3: $6b
    ld h, l                                       ; $56a4: $65
    ld bc, $6874                                  ; $56a5: $01 $74 $68
    ld h, l                                       ; $56a8: $65
    jr nz, jr_01b_570d                            ; $56a9: $20 $62

    ld h, c                                       ; $56ab: $61
    ld l, h                                       ; $56ac: $6c
    ld l, h                                       ; $56ad: $6c
    jr nz, jr_01b_5722                            ; $56ae: $20 $72

    ld l, a                                       ; $56b0: $6f

jr_01b_56b1:
    ld l, h                                       ; $56b1: $6c
    ld l, h                                       ; $56b2: $6c
    inc l                                         ; $56b3: $2c
    jr nz, jr_01b_5717                            ; $56b4: $20 $61

    ld l, [hl]                                    ; $56b6: $6e
    ld h, h                                       ; $56b7: $64
    ld [bc], a                                    ; $56b8: $02

jr_01b_56b9:
    ld h, h                                       ; $56b9: $64
    ld l, a                                       ; $56ba: $6f
    ld [hl], a                                    ; $56bb: $77
    ld l, [hl]                                    ; $56bc: $6e
    jr nz, @+$79                                  ; $56bd: $20 $77

    ld l, c                                       ; $56bf: $69

jr_01b_56c0:
    ld l, h                                       ; $56c0: $6c
    ld l, h                                       ; $56c1: $6c
    jr nz, jr_01b_5731                            ; $56c2: $20 $6d

    ld h, c                                       ; $56c4: $61
    ld l, e                                       ; $56c5: $6b
    ld h, l                                       ; $56c6: $65
    jr nz, jr_01b_5732                            ; $56c7: $20 $69

    ld [hl], h                                    ; $56c9: $74
    ld bc, $7473                                  ; $56ca: $01 $73 $74
    ld l, a                                       ; $56cd: $6f

jr_01b_56ce:
    ld [hl], b                                    ; $56ce: $70

jr_01b_56cf:
    jr nz, jr_01b_573e                            ; $56cf: $20 $6d

    ld l, a                                       ; $56d1: $6f
    ld [hl], d                                    ; $56d2: $72
    ld h, l                                       ; $56d3: $65
    jr nz, jr_01b_5747                            ; $56d4: $20 $71

    ld [hl], l                                    ; $56d6: $75
    ld l, c                                       ; $56d7: $69
    ld h, e                                       ; $56d8: $63
    ld l, e                                       ; $56d9: $6b

jr_01b_56da:
    ld l, h                                       ; $56da: $6c
    ld a, c                                       ; $56db: $79
    ld l, $03                                     ; $56dc: $2e $03
    nop                                           ; $56de: $00
    ld c, c                                       ; $56df: $49
    jr nz, jr_01b_574a                            ; $56e0: $20 $68

    ld h, l                                       ; $56e2: $65
    ld h, c                                       ; $56e3: $61
    ld [hl], d                                    ; $56e4: $72
    jr nz, jr_01b_575b                            ; $56e5: $20 $74

    ld l, b                                       ; $56e7: $68
    ld h, l                                       ; $56e8: $65
    ld [hl], d                                    ; $56e9: $72
    ld h, l                                       ; $56ea: $65
    daa                                           ; $56eb: $27
    ld [hl], e                                    ; $56ec: $73
    jr nz, @+$63                                  ; $56ed: $20 $61

    ld bc, $796d                                  ; $56ef: $01 $6d $79
    ld [hl], e                                    ; $56f2: $73
    ld [hl], h                                    ; $56f3: $74

jr_01b_56f4:
    ld h, l                                       ; $56f4: $65
    ld [hl], d                                    ; $56f5: $72
    ld l, c                                       ; $56f6: $69
    ld l, a                                       ; $56f7: $6f
    ld [hl], l                                    ; $56f8: $75
    ld [hl], e                                    ; $56f9: $73
    jr nz, @+$65                                  ; $56fa: $20 $63

    ld l, h                                       ; $56fc: $6c

jr_01b_56fd:
    ld [hl], l                                    ; $56fd: $75
    ld h, d                                       ; $56fe: $62
    ld bc, $616d                                  ; $56ff: $01 $6d $61
    ld l, e                                       ; $5702: $6b
    ld h, l                                       ; $5703: $65
    ld [hl], d                                    ; $5704: $72
    jr nz, @+$71                                  ; $5705: $20 $6f

    ld [hl], l                                    ; $5707: $75
    ld [hl], h                                    ; $5708: $74
    jr nz, @+$76                                  ; $5709: $20 $74

    ld l, b                                       ; $570b: $68
    ld h, l                                       ; $570c: $65

jr_01b_570d:
    ld [hl], d                                    ; $570d: $72
    ld h, l                                       ; $570e: $65

jr_01b_570f:
    ld l, $02                                     ; $570f: $2e $02
    ld c, c                                       ; $5711: $49
    ld h, [hl]                                    ; $5712: $66
    jr nz, @+$7b                                  ; $5713: $20 $79

    ld l, a                                       ; $5715: $6f
    ld [hl], l                                    ; $5716: $75

jr_01b_5717:
    jr nz, jr_01b_578c                            ; $5717: $20 $73

    ld h, l                                       ; $5719: $65
    ld h, l                                       ; $571a: $65
    jr nz, jr_01b_577e                            ; $571b: $20 $61

    ld l, [hl]                                    ; $571d: $6e
    ld a, c                                       ; $571e: $79
    jr nz, jr_01b_5790                            ; $571f: $20 $6f

    ld h, h                                       ; $5721: $64

jr_01b_5722:
    ld h, h                                       ; $5722: $64
    ld bc, $6574                                  ; $5723: $01 $74 $65
    ld [hl], d                                    ; $5726: $72
    ld [hl], d                                    ; $5727: $72
    ld h, c                                       ; $5728: $61
    ld l, c                                       ; $5729: $69
    ld l, [hl]                                    ; $572a: $6e
    inc l                                         ; $572b: $2c
    jr nz, jr_01b_5791                            ; $572c: $20 $63

    ld l, b                                       ; $572e: $68
    ld h, l                                       ; $572f: $65
    ld h, e                                       ; $5730: $63

jr_01b_5731:
    ld l, e                                       ; $5731: $6b

jr_01b_5732:
    jr nz, @+$6b                                  ; $5732: $20 $69

    ld [hl], h                                    ; $5734: $74
    jr nz, jr_01b_57a6                            ; $5735: $20 $6f

    ld [hl], l                                    ; $5737: $75
    ld [hl], h                                    ; $5738: $74
    ld l, $03                                     ; $5739: $2e $03
    nop                                           ; $573b: $00
    ld c, c                                       ; $573c: $49
    ld [hl], h                                    ; $573d: $74

jr_01b_573e:
    daa                                           ; $573e: $27
    ld [hl], e                                    ; $573f: $73
    jr nz, jr_01b_57a4                            ; $5740: $20 $62

    ld h, l                                       ; $5742: $65
    ld [hl], e                                    ; $5743: $73
    ld [hl], h                                    ; $5744: $74
    jr nz, jr_01b_57bb                            ; $5745: $20 $74

jr_01b_5747:
    ld l, a                                       ; $5747: $6f
    jr nz, @+$75                                  ; $5748: $20 $73

jr_01b_574a:
    ld l, b                                       ; $574a: $68
    ld l, a                                       ; $574b: $6f
    ld l, a                                       ; $574c: $6f
    ld [hl], h                                    ; $574d: $74
    ld bc, $6874                                  ; $574e: $01 $74 $68
    ld l, c                                       ; $5751: $69
    ld l, [hl]                                    ; $5752: $6e
    ld l, e                                       ; $5753: $6b
    ld l, c                                       ; $5754: $69
    ld l, [hl]                                    ; $5755: $6e
    ld h, a                                       ; $5756: $67
    jr nz, jr_01b_57d2                            ; $5757: $20 $79

    ld l, a                                       ; $5759: $6f
    ld [hl], l                                    ; $575a: $75

jr_01b_575b:
    daa                                           ; $575b: $27
    ld l, h                                       ; $575c: $6c
    ld l, h                                       ; $575d: $6c
    jr nz, jr_01b_57cd                            ; $575e: $20 $6d

    ld l, c                                       ; $5760: $69
    ld [hl], e                                    ; $5761: $73
    ld [hl], e                                    ; $5762: $73
    ld bc, $6874                                  ; $5763: $01 $74 $68
    ld h, l                                       ; $5766: $65
    jr nz, jr_01b_57d0                            ; $5767: $20 $67

    ld [hl], d                                    ; $5769: $72
    ld h, l                                       ; $576a: $65
    ld h, l                                       ; $576b: $65
    ld l, [hl]                                    ; $576c: $6e
    ld l, $02                                     ; $576d: $2e $02
    ld c, c                                       ; $576f: $49
    ld h, [hl]                                    ; $5770: $66
    jr nz, jr_01b_57ec                            ; $5771: $20 $79

    ld l, a                                       ; $5773: $6f
    ld [hl], l                                    ; $5774: $75
    jr nz, jr_01b_57e4                            ; $5775: $20 $6d

    ld l, c                                       ; $5777: $69
    ld [hl], e                                    ; $5778: $73
    ld [hl], e                                    ; $5779: $73
    jr nz, jr_01b_57dd                            ; $577a: $20 $61

    ld l, [hl]                                    ; $577c: $6e
    ld h, h                                       ; $577d: $64

jr_01b_577e:
    jr nz, jr_01b_57e7                            ; $577e: $20 $67

    ld h, l                                       ; $5780: $65
    ld [hl], h                                    ; $5781: $74
    ld bc, $2061                                  ; $5782: $01 $61 $20
    ld h, d                                       ; $5785: $62
    ld h, c                                       ; $5786: $61
    ld h, h                                       ; $5787: $64
    jr nz, jr_01b_57f6                            ; $5788: $20 $6c

    ld l, c                                       ; $578a: $69
    ld h, l                                       ; $578b: $65

jr_01b_578c:
    inc l                                         ; $578c: $2c
    jr nz, jr_01b_5808                            ; $578d: $20 $79

    ld l, a                                       ; $578f: $6f

jr_01b_5790:
    ld [hl], l                                    ; $5790: $75

jr_01b_5791:
    ld bc, $6163                                  ; $5791: $01 $63 $61
    ld l, [hl]                                    ; $5794: $6e
    daa                                           ; $5795: $27
    ld [hl], h                                    ; $5796: $74
    jr nz, jr_01b_580c                            ; $5797: $20 $73

    ld h, c                                       ; $5799: $61
    halt                                          ; $579a: $76
    ld h, l                                       ; $579b: $65
    jr nz, jr_01b_580e                            ; $579c: $20 $70

    ld h, c                                       ; $579e: $61
    ld [hl], d                                    ; $579f: $72
    ld l, $03                                     ; $57a0: $2e $03
    nop                                           ; $57a2: $00
    ld e, c                                       ; $57a3: $59

jr_01b_57a4:
    ld l, a                                       ; $57a4: $6f
    ld [hl], l                                    ; $57a5: $75

jr_01b_57a6:
    jr nz, @+$6f                                  ; $57a6: $20 $6d

    ld [hl], l                                    ; $57a8: $75
    ld [hl], e                                    ; $57a9: $73
    ld [hl], h                                    ; $57aa: $74
    jr nz, jr_01b_581b                            ; $57ab: $20 $6e

    ld l, a                                       ; $57ad: $6f
    ld [hl], h                                    ; $57ae: $74
    jr nz, jr_01b_5824                            ; $57af: $20 $73

    ld l, b                                       ; $57b1: $68
    ld l, a                                       ; $57b2: $6f
    ld l, a                                       ; $57b3: $6f
    ld [hl], h                                    ; $57b4: $74
    ld bc, $6e6f                                  ; $57b5: $01 $6f $6e
    jr nz, jr_01b_582e                            ; $57b8: $20 $74

    ld l, a                                       ; $57ba: $6f

jr_01b_57bb:
    ld [hl], b                                    ; $57bb: $70
    jr nz, jr_01b_582d                            ; $57bc: $20 $6f

    ld [hl], d                                    ; $57be: $72
    jr nz, jr_01b_5835                            ; $57bf: $20 $74

    ld l, a                                       ; $57c1: $6f
    jr nz, @+$76                                  ; $57c2: $20 $74

    ld l, b                                       ; $57c4: $68
    ld h, l                                       ; $57c5: $65
    ld bc, $6973                                  ; $57c6: $01 $73 $69
    ld h, h                                       ; $57c9: $64
    ld h, l                                       ; $57ca: $65
    jr nz, jr_01b_583c                            ; $57cb: $20 $6f

jr_01b_57cd:
    ld h, [hl]                                    ; $57cd: $66
    jr nz, jr_01b_5831                            ; $57ce: $20 $61

jr_01b_57d0:
    jr nz, jr_01b_583a                            ; $57d0: $20 $68

jr_01b_57d2:
    ld l, c                                       ; $57d2: $69
    ld l, h                                       ; $57d3: $6c
    ld l, h                                       ; $57d4: $6c
    ld hl, $4102                                  ; $57d5: $21 $02 $41
    jr nz, @+$76                                  ; $57d8: $20 $74

    ld l, c                                       ; $57da: $69
    ld l, [hl]                                    ; $57db: $6e
    ld a, c                                       ; $57dc: $79

jr_01b_57dd:
    jr nz, jr_01b_584f                            ; $57dd: $20 $70

    ld [hl], d                                    ; $57df: $72
    ld l, a                                       ; $57e0: $6f
    ld h, d                                       ; $57e1: $62
    ld l, h                                       ; $57e2: $6c
    ld h, l                                       ; $57e3: $65

jr_01b_57e4:
    ld l, l                                       ; $57e4: $6d
    jr nz, jr_01b_5856                            ; $57e5: $20 $6f

jr_01b_57e7:
    ld l, [hl]                                    ; $57e7: $6e
    ld bc, $2061                                  ; $57e8: $01 $61 $20
    ld [hl], h                                    ; $57eb: $74

jr_01b_57ec:
    ld l, a                                       ; $57ec: $6f
    ld [hl], l                                    ; $57ed: $75
    ld h, a                                       ; $57ee: $67
    ld l, b                                       ; $57ef: $68
    jr nz, jr_01b_5853                            ; $57f0: $20 $61

    ld [hl], b                                    ; $57f2: $70
    ld [hl], b                                    ; $57f3: $70
    ld [hl], d                                    ; $57f4: $72
    ld l, a                                       ; $57f5: $6f

jr_01b_57f6:
    ld h, c                                       ; $57f6: $61
    ld h, e                                       ; $57f7: $63
    ld l, b                                       ; $57f8: $68
    ld bc, $6163                                  ; $57f9: $01 $63 $61
    ld l, [hl]                                    ; $57fc: $6e
    jr nz, jr_01b_5864                            ; $57fd: $20 $65

    ld l, [hl]                                    ; $57ff: $6e
    ld h, h                                       ; $5800: $64
    jr nz, @+$6b                                  ; $5801: $20 $69

    ld [hl], h                                    ; $5803: $74
    ld l, $02                                     ; $5804: $2e $02
    ld b, c                                       ; $5806: $41
    ld [hl], d                                    ; $5807: $72

jr_01b_5808:
    ld h, l                                       ; $5808: $65
    jr nz, jr_01b_587e                            ; $5809: $20 $73

    ld [hl], b                                    ; $580b: $70

jr_01b_580c:
    ld l, c                                       ; $580c: $69
    ld l, [hl]                                    ; $580d: $6e

jr_01b_580e:
    jr nz, jr_01b_5883                            ; $580e: $20 $73

    ld l, b                                       ; $5810: $68
    ld l, a                                       ; $5811: $6f
    ld [hl], h                                    ; $5812: $74
    ld [hl], e                                    ; $5813: $73
    ld bc, $6361                                  ; $5814: $01 $61 $63
    ld [hl], h                                    ; $5817: $74
    ld [hl], l                                    ; $5818: $75
    ld h, c                                       ; $5819: $61
    ld l, h                                       ; $581a: $6c

jr_01b_581b:
    ld l, h                                       ; $581b: $6c
    ld a, c                                       ; $581c: $79
    jr nz, jr_01b_5887                            ; $581d: $20 $68

    ld h, l                                       ; $581f: $65
    ld l, h                                       ; $5820: $6c
    ld [hl], b                                    ; $5821: $70
    ld l, c                                       ; $5822: $69
    ld l, [hl]                                    ; $5823: $6e

jr_01b_5824:
    ld h, a                                       ; $5824: $67
    ld bc, $6f79                                  ; $5825: $01 $79 $6f
    ld [hl], l                                    ; $5828: $75
    ld [hl], d                                    ; $5829: $72
    jr nz, jr_01b_588d                            ; $582a: $20 $61

    ld [hl], b                                    ; $582c: $70

jr_01b_582d:
    ld [hl], b                                    ; $582d: $70

jr_01b_582e:
    ld [hl], d                                    ; $582e: $72
    ld l, a                                       ; $582f: $6f
    ld h, c                                       ; $5830: $61

jr_01b_5831:
    ld h, e                                       ; $5831: $63
    ld l, b                                       ; $5832: $68
    ccf                                           ; $5833: $3f
    nop                                           ; $5834: $00

jr_01b_5835:
    ld c, c                                       ; $5835: $49
    ld [hl], h                                    ; $5836: $74
    jr nz, jr_01b_58ac                            ; $5837: $20 $73

    ld [hl], l                                    ; $5839: $75

jr_01b_583a:
    ld [hl], d                                    ; $583a: $72
    ld h, l                                       ; $583b: $65

jr_01b_583c:
    jr nz, jr_01b_58a2                            ; $583c: $20 $64

    ld l, a                                       ; $583e: $6f
    ld h, l                                       ; $583f: $65
    ld [hl], e                                    ; $5840: $73
    jr nz, jr_01b_58ab                            ; $5841: $20 $68

    ld h, l                                       ; $5843: $65
    ld l, h                                       ; $5844: $6c
    ld [hl], b                                    ; $5845: $70
    ld l, $03                                     ; $5846: $2e $03
    nop                                           ; $5848: $00
    ld d, e                                       ; $5849: $53
    ld [hl], b                                    ; $584a: $70
    ld l, c                                       ; $584b: $69
    ld l, [hl]                                    ; $584c: $6e
    jr nz, jr_01b_58c2                            ; $584d: $20 $73

jr_01b_584f:
    ld l, b                                       ; $584f: $68
    ld l, a                                       ; $5850: $6f
    ld [hl], h                                    ; $5851: $74
    ld [hl], e                                    ; $5852: $73

jr_01b_5853:
    jr nz, jr_01b_58b6                            ; $5853: $20 $61

    ld [hl], d                                    ; $5855: $72

jr_01b_5856:
    ld h, l                                       ; $5856: $65
    ld bc, $6568                                  ; $5857: $01 $68 $65
    ld l, h                                       ; $585a: $6c
    ld [hl], b                                    ; $585b: $70
    ld h, [hl]                                    ; $585c: $66
    ld [hl], l                                    ; $585d: $75
    ld l, h                                       ; $585e: $6c
    ld l, $20                                     ; $585f: $2e $20
    ld b, e                                       ; $5861: $43
    ld h, c                                       ; $5862: $61
    ld l, [hl]                                    ; $5863: $6e

jr_01b_5864:
    jr nz, @+$7b                                  ; $5864: $20 $79

    ld l, a                                       ; $5866: $6f
    ld [hl], l                                    ; $5867: $75
    ld bc, $6f64                                  ; $5868: $01 $64 $6f
    jr nz, jr_01b_58dc                            ; $586b: $20 $6f

    ld l, [hl]                                    ; $586d: $6e
    ld h, l                                       ; $586e: $65
    ccf                                           ; $586f: $3f
    nop                                           ; $5870: $00
    ld d, b                                       ; $5871: $50
    ld [hl], d                                    ; $5872: $72
    ld h, l                                       ; $5873: $65
    ld [hl], e                                    ; $5874: $73
    ld [hl], e                                    ; $5875: $73
    jr nz, jr_01b_58ec                            ; $5876: $20 $74

    ld l, b                                       ; $5878: $68
    ld h, l                                       ; $5879: $65
    jr nz, jr_01b_58a7                            ; $587a: $20 $2b

    jr nz, @+$45                                  ; $587c: $20 $43

jr_01b_587e:
    ld l, a                                       ; $587e: $6f
    ld l, [hl]                                    ; $587f: $6e
    ld [hl], h                                    ; $5880: $74
    ld [hl], d                                    ; $5881: $72
    ld l, a                                       ; $5882: $6f

jr_01b_5883:
    ld l, h                                       ; $5883: $6c
    jr nz, jr_01b_5887                            ; $5884: $20 $01

    ld d, b                                       ; $5886: $50

jr_01b_5887:
    ld h, c                                       ; $5887: $61
    ld h, h                                       ; $5888: $64
    jr nz, jr_01b_5902                            ; $5889: $20 $77

    ld l, b                                       ; $588b: $68
    ld l, c                                       ; $588c: $69

jr_01b_588d:
    ld l, h                                       ; $588d: $6c
    ld h, l                                       ; $588e: $65
    jr nz, jr_01b_5905                            ; $588f: $20 $74

    ld l, b                                       ; $5891: $68
    ld h, l                                       ; $5892: $65
    jr nz, jr_01b_5908                            ; $5893: $20 $73

    ld l, b                                       ; $5895: $68
    ld l, a                                       ; $5896: $6f
    ld [hl], h                                    ; $5897: $74
    jr nz, jr_01b_589b                            ; $5898: $20 $01

    ld h, a                                       ; $589a: $67

jr_01b_589b:
    ld h, c                                       ; $589b: $61
    ld [hl], l                                    ; $589c: $75
    ld h, a                                       ; $589d: $67
    ld h, l                                       ; $589e: $65
    jr nz, jr_01b_590a                            ; $589f: $20 $69

    ld [hl], e                                    ; $58a1: $73

jr_01b_58a2:
    jr nz, jr_01b_5911                            ; $58a2: $20 $6d

    ld l, a                                       ; $58a4: $6f
    halt                                          ; $58a5: $76
    ld l, c                                       ; $58a6: $69

jr_01b_58a7:
    ld l, [hl]                                    ; $58a7: $6e
    ld h, a                                       ; $58a8: $67
    ld l, $02                                     ; $58a9: $2e $02

jr_01b_58ab:
    ld d, b                                       ; $58ab: $50

jr_01b_58ac:
    ld [hl], d                                    ; $58ac: $72
    ld h, l                                       ; $58ad: $65
    ld [hl], e                                    ; $58ae: $73
    ld [hl], e                                    ; $58af: $73
    jr nz, jr_01b_5927                            ; $58b0: $20 $75

    ld [hl], b                                    ; $58b2: $70
    jr nz, jr_01b_5929                            ; $58b3: $20 $74

    ld l, a                                       ; $58b5: $6f

jr_01b_58b6:
    jr nz, @+$6f                                  ; $58b6: $20 $6d

    ld h, c                                       ; $58b8: $61
    ld l, e                                       ; $58b9: $6b
    ld h, l                                       ; $58ba: $65
    jr nz, jr_01b_58be                            ; $58bb: $20 $01

    ld [hl], h                                    ; $58bd: $74

jr_01b_58be:
    ld l, b                                       ; $58be: $68
    ld h, l                                       ; $58bf: $65
    jr nz, jr_01b_5924                            ; $58c0: $20 $62

jr_01b_58c2:
    ld h, c                                       ; $58c2: $61
    ld l, h                                       ; $58c3: $6c
    ld l, h                                       ; $58c4: $6c
    jr nz, @+$74                                  ; $58c5: $20 $72

    ld l, a                                       ; $58c7: $6f
    ld l, h                                       ; $58c8: $6c
    ld l, h                                       ; $58c9: $6c
    ld l, $02                                     ; $58ca: $2e $02
    ld d, b                                       ; $58cc: $50
    ld [hl], d                                    ; $58cd: $72
    ld h, l                                       ; $58ce: $65
    ld [hl], e                                    ; $58cf: $73
    ld [hl], e                                    ; $58d0: $73
    jr nz, jr_01b_5937                            ; $58d1: $20 $64

    ld l, a                                       ; $58d3: $6f
    ld [hl], a                                    ; $58d4: $77
    ld l, [hl]                                    ; $58d5: $6e
    jr nz, jr_01b_594c                            ; $58d6: $20 $74

    ld l, a                                       ; $58d8: $6f
    jr nz, jr_01b_594b                            ; $58d9: $20 $70

    ld [hl], l                                    ; $58db: $75

jr_01b_58dc:
    ld [hl], h                                    ; $58dc: $74
    ld bc, $6162                                  ; $58dd: $01 $62 $61
    ld h, e                                       ; $58e0: $63
    ld l, e                                       ; $58e1: $6b
    ld [hl], e                                    ; $58e2: $73
    ld [hl], b                                    ; $58e3: $70
    ld l, c                                       ; $58e4: $69
    ld l, [hl]                                    ; $58e5: $6e
    jr nz, jr_01b_5957                            ; $58e6: $20 $6f

    ld l, [hl]                                    ; $58e8: $6e
    jr nz, @+$76                                  ; $58e9: $20 $74

    ld l, b                                       ; $58eb: $68

jr_01b_58ec:
    ld h, l                                       ; $58ec: $65
    ld bc, $6162                                  ; $58ed: $01 $62 $61
    ld l, h                                       ; $58f0: $6c
    ld l, h                                       ; $58f1: $6c
    ld l, $03                                     ; $58f2: $2e $03
    nop                                           ; $58f4: $00
    ld d, h                                       ; $58f5: $54
    ld l, b                                       ; $58f6: $68
    ld h, l                                       ; $58f7: $65
    ld a, c                                       ; $58f8: $79
    daa                                           ; $58f9: $27
    ld [hl], d                                    ; $58fa: $72
    ld h, l                                       ; $58fb: $65
    jr nz, jr_01b_5972                            ; $58fc: $20 $74

    ld l, a                                       ; $58fe: $6f
    ld [hl], l                                    ; $58ff: $75
    ld h, a                                       ; $5900: $67
    ld l, b                                       ; $5901: $68

jr_01b_5902:
    jr nz, jr_01b_5965                            ; $5902: $20 $61

    ld [hl], h                                    ; $5904: $74

jr_01b_5905:
    ld bc, $6966                                  ; $5905: $01 $66 $69

jr_01b_5908:
    ld [hl], d                                    ; $5908: $72
    ld [hl], e                                    ; $5909: $73

jr_01b_590a:
    ld [hl], h                                    ; $590a: $74
    ld l, $2e                                     ; $590b: $2e $2e
    ld l, $20                                     ; $590d: $2e $20
    ld c, c                                       ; $590f: $49
    ld [hl], h                                    ; $5910: $74

jr_01b_5911:
    jr nz, jr_01b_5987                            ; $5911: $20 $74

    ld h, c                                       ; $5913: $61
    ld l, e                                       ; $5914: $6b
    ld h, l                                       ; $5915: $65
    ld [hl], e                                    ; $5916: $73
    ld bc, $6567                                  ; $5917: $01 $67 $65
    ld [hl], h                                    ; $591a: $74
    ld [hl], h                                    ; $591b: $74
    ld l, c                                       ; $591c: $69
    ld l, [hl]                                    ; $591d: $6e
    ld h, a                                       ; $591e: $67
    jr nz, jr_01b_5996                            ; $591f: $20 $75

    ld [hl], e                                    ; $5921: $73
    ld h, l                                       ; $5922: $65
    ld h, h                                       ; $5923: $64

jr_01b_5924:
    jr nz, @+$76                                  ; $5924: $20 $74

    ld l, a                                       ; $5926: $6f

jr_01b_5927:
    ld l, $03                                     ; $5927: $2e $03

jr_01b_5929:
    nop                                           ; $5929: $00
    ld c, c                                       ; $592a: $49
    jr nz, jr_01b_5995                            ; $592b: $20 $68

    ld h, l                                       ; $592d: $65
    ld h, c                                       ; $592e: $61
    ld [hl], d                                    ; $592f: $72
    jr nz, @+$76                                  ; $5930: $20 $74

    ld l, b                                       ; $5932: $68
    ld h, l                                       ; $5933: $65
    ld [hl], d                                    ; $5934: $72
    ld h, l                                       ; $5935: $65
    daa                                           ; $5936: $27

jr_01b_5937:
    ld [hl], e                                    ; $5937: $73
    jr nz, jr_01b_599b                            ; $5938: $20 $61

    ld bc, $7473                                  ; $593a: $01 $73 $74
    ld [hl], d                                    ; $593d: $72
    ld h, c                                       ; $593e: $61
    ld l, [hl]                                    ; $593f: $6e
    ld h, a                                       ; $5940: $67
    ld h, l                                       ; $5941: $65
    jr nz, jr_01b_59a7                            ; $5942: $20 $63

    ld l, h                                       ; $5944: $6c
    ld [hl], l                                    ; $5945: $75
    ld h, d                                       ; $5946: $62
    jr nz, jr_01b_59ae                            ; $5947: $20 $65

    ld l, l                                       ; $5949: $6d
    ld [hl], b                                    ; $594a: $70

jr_01b_594b:
    ld l, h                                       ; $594b: $6c

jr_01b_594c:
    ld l, a                                       ; $594c: $6f
    ld a, c                                       ; $594d: $79
    ld h, l                                       ; $594e: $65
    ld h, l                                       ; $594f: $65
    ld bc, $756f                                  ; $5950: $01 $6f $75
    ld [hl], h                                    ; $5953: $74
    jr nz, jr_01b_59ca                            ; $5954: $20 $74

    ld l, b                                       ; $5956: $68

jr_01b_5957:
    ld h, l                                       ; $5957: $65
    ld [hl], d                                    ; $5958: $72
    ld h, l                                       ; $5959: $65
    ld l, $02                                     ; $595a: $2e $02
    ld c, c                                       ; $595c: $49
    ld h, [hl]                                    ; $595d: $66
    jr nz, jr_01b_59d9                            ; $595e: $20 $79

    ld l, a                                       ; $5960: $6f
    ld [hl], l                                    ; $5961: $75
    jr nz, jr_01b_59d7                            ; $5962: $20 $73

    ld h, l                                       ; $5964: $65

jr_01b_5965:
    ld h, l                                       ; $5965: $65
    jr nz, @+$63                                  ; $5966: $20 $61

    ld l, [hl]                                    ; $5968: $6e
    ld a, c                                       ; $5969: $79
    jr nz, jr_01b_59db                            ; $596a: $20 $6f

    ld h, h                                       ; $596c: $64
    ld h, h                                       ; $596d: $64
    ld bc, $6574                                  ; $596e: $01 $74 $65
    ld [hl], d                                    ; $5971: $72

jr_01b_5972:
    ld [hl], d                                    ; $5972: $72
    ld h, c                                       ; $5973: $61
    ld l, c                                       ; $5974: $69
    ld l, [hl]                                    ; $5975: $6e
    inc l                                         ; $5976: $2c
    jr nz, jr_01b_59dc                            ; $5977: $20 $63

    ld l, b                                       ; $5979: $68
    ld h, l                                       ; $597a: $65
    ld h, e                                       ; $597b: $63
    ld l, e                                       ; $597c: $6b
    jr nz, jr_01b_59e8                            ; $597d: $20 $69

    ld [hl], h                                    ; $597f: $74
    jr nz, jr_01b_59f1                            ; $5980: $20 $6f

    ld [hl], l                                    ; $5982: $75
    ld [hl], h                                    ; $5983: $74
    ld l, $03                                     ; $5984: $2e $03
    nop                                           ; $5986: $00

jr_01b_5987:
    ld c, c                                       ; $5987: $49
    ld [hl], h                                    ; $5988: $74
    daa                                           ; $5989: $27
    ld h, h                                       ; $598a: $64
    jr nz, jr_01b_59ef                            ; $598b: $20 $62

    ld h, l                                       ; $598d: $65
    jr nz, jr_01b_59f1                            ; $598e: $20 $61

    ld l, l                                       ; $5990: $6d
    ld h, c                                       ; $5991: $61
    ld a, d                                       ; $5992: $7a
    ld l, c                                       ; $5993: $69
    ld l, [hl]                                    ; $5994: $6e

jr_01b_5995:
    ld h, a                                       ; $5995: $67

jr_01b_5996:
    ld bc, $6669                                  ; $5996: $01 $69 $66
    jr nz, jr_01b_5a14                            ; $5999: $20 $79

jr_01b_599b:
    ld l, a                                       ; $599b: $6f
    ld [hl], l                                    ; $599c: $75
    jr nz, jr_01b_5a01                            ; $599d: $20 $62

    ld h, l                                       ; $599f: $65
    ld h, e                                       ; $59a0: $63
    ld h, c                                       ; $59a1: $61
    ld l, l                                       ; $59a2: $6d
    ld h, l                                       ; $59a3: $65
    ld bc, $7247                                  ; $59a4: $01 $47 $72

jr_01b_59a7:
    ld h, c                                       ; $59a7: $61
    ld l, [hl]                                    ; $59a8: $6e
    ld h, h                                       ; $59a9: $64
    jr nz, jr_01b_59ef                            ; $59aa: $20 $43

    ld l, b                                       ; $59ac: $68
    ld h, c                                       ; $59ad: $61

jr_01b_59ae:
    ld l, l                                       ; $59ae: $6d
    ld [hl], b                                    ; $59af: $70
    ld l, c                                       ; $59b0: $69
    ld l, a                                       ; $59b1: $6f
    ld l, [hl]                                    ; $59b2: $6e
    ld hl, $5402                                  ; $59b3: $21 $02 $54
    ld l, a                                       ; $59b6: $6f
    jr nz, jr_01b_5a1b                            ; $59b7: $20 $62

    ld h, l                                       ; $59b9: $65
    ld h, c                                       ; $59ba: $61
    ld [hl], h                                    ; $59bb: $74
    jr nz, jr_01b_5a05                            ; $59bc: $20 $47

    ld [hl], d                                    ; $59be: $72
    ld h, c                                       ; $59bf: $61
    ld l, [hl]                                    ; $59c0: $6e
    ld h, h                                       ; $59c1: $64
    ld bc, $6843                                  ; $59c2: $01 $43 $68
    ld h, c                                       ; $59c5: $61
    ld l, l                                       ; $59c6: $6d
    ld [hl], b                                    ; $59c7: $70
    jr nz, jr_01b_59d8                            ; $59c8: $20 $0e

jr_01b_59ca:
    rlca                                          ; $59ca: $07
    jr nz, jr_01b_5a36                            ; $59cb: $20 $69

    ld [hl], e                                    ; $59cd: $73
    jr nz, jr_01b_5a35                            ; $59ce: $20 $65

    halt                                          ; $59d0: $76
    ld h, l                                       ; $59d1: $65
    ld [hl], d                                    ; $59d2: $72
    ld a, c                                       ; $59d3: $79
    ld bc, $6f67                                  ; $59d4: $01 $67 $6f

jr_01b_59d7:
    ld l, h                                       ; $59d7: $6c

jr_01b_59d8:
    ld h, [hl]                                    ; $59d8: $66

jr_01b_59d9:
    ld h, l                                       ; $59d9: $65
    ld [hl], d                                    ; $59da: $72

jr_01b_59db:
    daa                                           ; $59db: $27

jr_01b_59dc:
    ld [hl], e                                    ; $59dc: $73
    jr nz, jr_01b_5a46                            ; $59dd: $20 $67

    ld l, a                                       ; $59df: $6f
    ld h, c                                       ; $59e0: $61
    ld l, h                                       ; $59e1: $6c
    ld l, $03                                     ; $59e2: $2e $03
    nop                                           ; $59e4: $00
    ld b, l                                       ; $59e5: $45
    halt                                          ; $59e6: $76
    ld h, l                                       ; $59e7: $65

jr_01b_59e8:
    ld [hl], d                                    ; $59e8: $72
    ld a, c                                       ; $59e9: $79
    ld l, a                                       ; $59ea: $6f
    ld l, [hl]                                    ; $59eb: $6e
    ld h, l                                       ; $59ec: $65
    daa                                           ; $59ed: $27
    ld [hl], e                                    ; $59ee: $73

jr_01b_59ef:
    jr nz, @+$76                                  ; $59ef: $20 $74

jr_01b_59f1:
    ld [hl], d                                    ; $59f1: $72
    ld a, c                                       ; $59f2: $79
    ld l, c                                       ; $59f3: $69
    ld l, [hl]                                    ; $59f4: $6e
    ld h, a                                       ; $59f5: $67
    jr nz, jr_01b_5a6c                            ; $59f6: $20 $74

    ld l, a                                       ; $59f8: $6f
    ld bc, $6562                                  ; $59f9: $01 $62 $65
    jr nz, jr_01b_5a6a                            ; $59fc: $20 $6c

    ld l, c                                       ; $59fe: $69
    ld l, e                                       ; $59ff: $6b
    ld h, l                                       ; $5a00: $65

jr_01b_5a01:
    jr nz, jr_01b_5a7c                            ; $5a01: $20 $79

    ld l, a                                       ; $5a03: $6f
    ld [hl], l                                    ; $5a04: $75

jr_01b_5a05:
    ld l, $02                                     ; $5a05: $2e $02
    ld d, h                                       ; $5a07: $54
    ld l, b                                       ; $5a08: $68
    ld h, c                                       ; $5a09: $61
    ld [hl], h                                    ; $5a0a: $74
    daa                                           ; $5a0b: $27
    ld [hl], e                                    ; $5a0c: $73
    jr nz, jr_01b_5a71                            ; $5a0d: $20 $62

    ld h, l                                       ; $5a0f: $65
    ld h, e                                       ; $5a10: $63
    ld h, c                                       ; $5a11: $61
    ld [hl], l                                    ; $5a12: $75
    ld [hl], e                                    ; $5a13: $73

jr_01b_5a14:
    ld h, l                                       ; $5a14: $65
    ld bc, $6f79                                  ; $5a15: $01 $79 $6f
    ld [hl], l                                    ; $5a18: $75
    jr nz, jr_01b_5a7e                            ; $5a19: $20 $63

jr_01b_5a1b:
    ld h, c                                       ; $5a1b: $61
    ld l, [hl]                                    ; $5a1c: $6e
    jr nz, jr_01b_5a84                            ; $5a1d: $20 $65

    ld l, [hl]                                    ; $5a1f: $6e
    ld [hl], h                                    ; $5a20: $74
    ld h, l                                       ; $5a21: $65
    ld [hl], d                                    ; $5a22: $72
    jr nz, jr_01b_5a99                            ; $5a23: $20 $74

    ld l, b                                       ; $5a25: $68
    ld h, l                                       ; $5a26: $65
    ld bc, $6874                                  ; $5a27: $01 $74 $68
    ld h, l                                       ; $5a2a: $65
    jr nz, @+$4e                                  ; $5a2b: $20 $4c

    ld l, c                                       ; $5a2d: $69
    ld l, [hl]                                    ; $5a2e: $6e
    ld l, e                                       ; $5a2f: $6b
    ld [hl], e                                    ; $5a30: $73
    jr nz, jr_01b_5a87                            ; $5a31: $20 $54

    ld l, a                                       ; $5a33: $6f
    ld [hl], l                                    ; $5a34: $75

jr_01b_5a35:
    ld [hl], d                                    ; $5a35: $72

jr_01b_5a36:
    ld l, [hl]                                    ; $5a36: $6e
    ld h, c                                       ; $5a37: $61
    ld l, l                                       ; $5a38: $6d
    ld h, l                                       ; $5a39: $65
    ld l, [hl]                                    ; $5a3a: $6e
    ld [hl], h                                    ; $5a3b: $74
    ld l, $03                                     ; $5a3c: $2e $03
    nop                                           ; $5a3e: $00
    ld c, c                                       ; $5a3f: $49
    ld h, [hl]                                    ; $5a40: $66
    jr nz, @+$09                                  ; $5a41: $20 $07

    inc l                                         ; $5a43: $2c
    jr nz, jr_01b_5aba                            ; $5a44: $20 $74

jr_01b_5a46:
    ld l, b                                       ; $5a46: $68
    ld h, l                                       ; $5a47: $65
    ld bc, $6f72                                  ; $5a48: $01 $72 $6f
    ld l, a                                       ; $5a4b: $6f
    ld l, e                                       ; $5a4c: $6b
    ld l, c                                       ; $5a4d: $69
    ld h, l                                       ; $5a4e: $65
    inc l                                         ; $5a4f: $2c
    jr nz, jr_01b_5ab5                            ; $5a50: $20 $63

    ld h, c                                       ; $5a52: $61
    ld l, [hl]                                    ; $5a53: $6e
    jr nz, jr_01b_5ac3                            ; $5a54: $20 $6d

    ld h, c                                       ; $5a56: $61
    ld l, e                                       ; $5a57: $6b
    ld h, l                                       ; $5a58: $65
    jr nz, jr_01b_5ac4                            ; $5a59: $20 $69

    ld [hl], h                                    ; $5a5b: $74
    inc l                                         ; $5a5c: $2c
    ld bc, $6f73                                  ; $5a5d: $01 $73 $6f
    jr nz, jr_01b_5ac5                            ; $5a60: $20 $63

    ld h, c                                       ; $5a62: $61
    ld l, [hl]                                    ; $5a63: $6e
    jr nz, jr_01b_5add                            ; $5a64: $20 $77

    ld h, l                                       ; $5a66: $65
    ld hl, $0003                                  ; $5a67: $21 $03 $00

jr_01b_5a6a:
    ld d, e                                       ; $5a6a: $53
    ld l, b                                       ; $5a6b: $68

jr_01b_5a6c:
    ld l, a                                       ; $5a6c: $6f
    ld l, a                                       ; $5a6d: $6f
    ld [hl], h                                    ; $5a6e: $74
    ld l, c                                       ; $5a6f: $69
    ld l, [hl]                                    ; $5a70: $6e

jr_01b_5a71:
    ld h, a                                       ; $5a71: $67
    jr nz, jr_01b_5ada                            ; $5a72: $20 $66

    ld l, a                                       ; $5a74: $6f
    ld [hl], d                                    ; $5a75: $72
    jr nz, @+$63                                  ; $5a76: $20 $61

    ld bc, $6f64                                  ; $5a78: $01 $64 $6f
    ld [hl], a                                    ; $5a7b: $77

jr_01b_5a7c:
    ld l, [hl]                                    ; $5a7c: $6e
    ld l, b                                       ; $5a7d: $68

jr_01b_5a7e:
    ld l, c                                       ; $5a7e: $69
    ld l, h                                       ; $5a7f: $6c
    ld l, h                                       ; $5a80: $6c
    jr nz, jr_01b_5af3                            ; $5a81: $20 $70

    ld l, c                                       ; $5a83: $69

jr_01b_5a84:
    ld l, [hl]                                    ; $5a84: $6e
    jr nz, jr_01b_5aed                            ; $5a85: $20 $66

jr_01b_5a87:
    ld [hl], d                                    ; $5a87: $72
    ld l, a                                       ; $5a88: $6f
    ld l, l                                       ; $5a89: $6d
    ld bc, $756f                                  ; $5a8a: $01 $6f $75
    ld [hl], h                                    ; $5a8d: $74
    jr nz, jr_01b_5aff                            ; $5a8e: $20 $6f

    ld h, [hl]                                    ; $5a90: $66
    jr nz, jr_01b_5b07                            ; $5a91: $20 $74

    ld l, b                                       ; $5a93: $68
    ld h, l                                       ; $5a94: $65
    jr nz, jr_01b_5b09                            ; $5a95: $20 $72

    ld l, a                                       ; $5a97: $6f
    ld [hl], l                                    ; $5a98: $75

jr_01b_5a99:
    ld h, a                                       ; $5a99: $67
    ld l, b                                       ; $5a9a: $68
    ld [bc], a                                    ; $5a9b: $02
    ld h, c                                       ; $5a9c: $61
    ld l, [hl]                                    ; $5a9d: $6e
    ld h, h                                       ; $5a9e: $64
    jr nz, jr_01b_5b03                            ; $5a9f: $20 $62

    ld h, l                                       ; $5aa1: $65
    ld l, b                                       ; $5aa2: $68
    ld l, c                                       ; $5aa3: $69
    ld l, [hl]                                    ; $5aa4: $6e
    ld h, h                                       ; $5aa5: $64
    jr nz, jr_01b_5b09                            ; $5aa6: $20 $61

    jr nz, @+$6f                                  ; $5aa8: $20 $6d

    ld l, a                                       ; $5aaa: $6f
    ld [hl], l                                    ; $5aab: $75
    ld l, [hl]                                    ; $5aac: $6e
    ld h, h                                       ; $5aad: $64
    ld bc, $7369                                  ; $5aae: $01 $69 $73
    jr nz, jr_01b_5b14                            ; $5ab1: $20 $61

    jr nz, jr_01b_5b1d                            ; $5ab3: $20 $68

jr_01b_5ab5:
    ld h, c                                       ; $5ab5: $61
    ld [hl], d                                    ; $5ab6: $72
    ld h, h                                       ; $5ab7: $64
    jr nz, jr_01b_5b1b                            ; $5ab8: $20 $61

jr_01b_5aba:
    ld [hl], b                                    ; $5aba: $70
    ld [hl], b                                    ; $5abb: $70
    ld [hl], d                                    ; $5abc: $72
    ld l, a                                       ; $5abd: $6f
    ld h, c                                       ; $5abe: $61
    ld h, e                                       ; $5abf: $63
    ld l, b                                       ; $5ac0: $68
    ld l, $02                                     ; $5ac1: $2e $02

jr_01b_5ac3:
    ld d, a                                       ; $5ac3: $57

jr_01b_5ac4:
    ld h, c                                       ; $5ac4: $61

jr_01b_5ac5:
    ld l, [hl]                                    ; $5ac5: $6e
    ld [hl], h                                    ; $5ac6: $74
    jr nz, @+$76                                  ; $5ac7: $20 $74

    ld l, a                                       ; $5ac9: $6f
    jr nz, jr_01b_5b40                            ; $5aca: $20 $74

    ld [hl], d                                    ; $5acc: $72
    ld a, c                                       ; $5acd: $79
    jr nz, @+$6f                                  ; $5ace: $20 $6d

    ld h, l                                       ; $5ad0: $65
    ccf                                           ; $5ad1: $3f
    nop                                           ; $5ad2: $00
    ld b, c                                       ; $5ad3: $41
    ld [hl], a                                    ; $5ad4: $77
    ld hl, $4920                                  ; $5ad5: $21 $20 $49
    jr nz, @+$79                                  ; $5ad8: $20 $77

jr_01b_5ada:
    ld h, c                                       ; $5ada: $61
    ld l, [hl]                                    ; $5adb: $6e
    ld [hl], h                                    ; $5adc: $74

jr_01b_5add:
    ld h, l                                       ; $5add: $65
    ld h, h                                       ; $5ade: $64
    jr nz, jr_01b_5b55                            ; $5adf: $20 $74

    ld l, a                                       ; $5ae1: $6f
    ld bc, $6c70                                  ; $5ae2: $01 $70 $6c
    ld h, c                                       ; $5ae5: $61
    ld a, c                                       ; $5ae6: $79
    jr nz, jr_01b_5b5c                            ; $5ae7: $20 $73

    ld l, a                                       ; $5ae9: $6f
    ld l, l                                       ; $5aea: $6d
    ld h, l                                       ; $5aeb: $65
    ld l, a                                       ; $5aec: $6f

jr_01b_5aed:
    ld l, [hl]                                    ; $5aed: $6e
    ld h, l                                       ; $5aee: $65
    jr nz, jr_01b_5b68                            ; $5aef: $20 $77

    ld l, b                                       ; $5af1: $68
    ld l, a                                       ; $5af2: $6f

jr_01b_5af3:
    ld bc, $6c70                                  ; $5af3: $01 $70 $6c
    ld h, c                                       ; $5af6: $61
    ld h, e                                       ; $5af7: $63
    ld h, l                                       ; $5af8: $65
    ld h, h                                       ; $5af9: $64
    jr nz, jr_01b_5b5d                            ; $5afa: $20 $61

    ld [hl], h                                    ; $5afc: $74
    jr nz, jr_01b_5b4b                            ; $5afd: $20 $4c

jr_01b_5aff:
    ld l, c                                       ; $5aff: $69
    ld l, [hl]                                    ; $5b00: $6e
    ld l, e                                       ; $5b01: $6b
    ld [hl], e                                    ; $5b02: $73

jr_01b_5b03:
    ld hl, $0003                                  ; $5b03: $21 $03 $00
    ld c, c                                       ; $5b06: $49

jr_01b_5b07:
    jr nz, jr_01b_5b6c                            ; $5b07: $20 $63

jr_01b_5b09:
    ld h, c                                       ; $5b09: $61
    ld l, [hl]                                    ; $5b0a: $6e
    jr nz, jr_01b_5b74                            ; $5b0b: $20 $67

    ld h, l                                       ; $5b0d: $65
    ld [hl], h                                    ; $5b0e: $74
    jr nz, jr_01b_5b88                            ; $5b0f: $20 $77

    ld l, c                                       ; $5b11: $69
    ld [hl], h                                    ; $5b12: $74
    ld l, b                                       ; $5b13: $68

jr_01b_5b14:
    ld l, c                                       ; $5b14: $69
    ld l, [hl]                                    ; $5b15: $6e
    ld bc, $2033                                  ; $5b16: $01 $33 $20
    ld a, c                                       ; $5b19: $79
    ld h, c                                       ; $5b1a: $61

jr_01b_5b1b:
    ld [hl], d                                    ; $5b1b: $72
    ld h, h                                       ; $5b1c: $64

jr_01b_5b1d:
    ld [hl], e                                    ; $5b1d: $73
    jr nz, jr_01b_5b57                            ; $5b1e: $20 $37

    jr nz, jr_01b_5b96                            ; $5b20: $20 $74

    ld l, c                                       ; $5b22: $69
    ld l, l                                       ; $5b23: $6d
    ld h, l                                       ; $5b24: $65
    ld [hl], e                                    ; $5b25: $73
    ld bc, $756f                                  ; $5b26: $01 $6f $75
    ld [hl], h                                    ; $5b29: $74
    jr nz, jr_01b_5b9b                            ; $5b2a: $20 $6f

    ld h, [hl]                                    ; $5b2c: $66
    jr nz, jr_01b_5b60                            ; $5b2d: $20 $31

    jr nc, @+$30                                  ; $5b2f: $30 $2e

    ld [bc], a                                    ; $5b31: $02
    ld c, c                                       ; $5b32: $49
    ld h, [hl]                                    ; $5b33: $66
    jr nz, jr_01b_5baf                            ; $5b34: $20 $79

    ld l, a                                       ; $5b36: $6f
    ld [hl], l                                    ; $5b37: $75
    jr nz, jr_01b_5ba1                            ; $5b38: $20 $67

    ld h, l                                       ; $5b3a: $65
    ld [hl], h                                    ; $5b3b: $74
    jr nz, @+$79                                  ; $5b3c: $20 $77

    ld l, c                                       ; $5b3e: $69
    ld [hl], h                                    ; $5b3f: $74

jr_01b_5b40:
    ld l, b                                       ; $5b40: $68
    ld l, c                                       ; $5b41: $69
    ld l, [hl]                                    ; $5b42: $6e
    ld bc, $2033                                  ; $5b43: $01 $33 $20
    ld a, c                                       ; $5b46: $79
    ld h, c                                       ; $5b47: $61
    ld [hl], d                                    ; $5b48: $72
    ld h, h                                       ; $5b49: $64
    ld [hl], e                                    ; $5b4a: $73

jr_01b_5b4b:
    jr nz, @+$6f                                  ; $5b4b: $20 $6d

    ld l, a                                       ; $5b4d: $6f
    ld [hl], d                                    ; $5b4e: $72
    ld h, l                                       ; $5b4f: $65
    jr nz, @+$76                                  ; $5b50: $20 $74

    ld l, b                                       ; $5b52: $68
    ld h, c                                       ; $5b53: $61
    ld l, [hl]                                    ; $5b54: $6e

jr_01b_5b55:
    jr nz, @+$39                                  ; $5b55: $20 $37

jr_01b_5b57:
    ld bc, $6974                                  ; $5b57: $01 $74 $69
    ld l, l                                       ; $5b5a: $6d
    ld h, l                                       ; $5b5b: $65

jr_01b_5b5c:
    ld [hl], e                                    ; $5b5c: $73

jr_01b_5b5d:
    inc l                                         ; $5b5d: $2c
    jr nz, jr_01b_5bd9                            ; $5b5e: $20 $79

jr_01b_5b60:
    ld l, a                                       ; $5b60: $6f
    ld [hl], l                                    ; $5b61: $75
    jr nz, @+$79                                  ; $5b62: $20 $77

    ld l, c                                       ; $5b64: $69
    ld l, [hl]                                    ; $5b65: $6e
    ld l, $03                                     ; $5b66: $2e $03

jr_01b_5b68:
    nop                                           ; $5b68: $00
    ld c, a                                       ; $5b69: $4f
    ld l, l                                       ; $5b6a: $6d
    ld l, c                                       ; $5b6b: $69

jr_01b_5b6c:
    ld h, a                                       ; $5b6c: $67
    ld l, a                                       ; $5b6d: $6f
    ld [hl], e                                    ; $5b6e: $73
    ld l, b                                       ; $5b6f: $68
    ld hl, $5920                                  ; $5b70: $21 $20 $59
    ld l, a                                       ; $5b73: $6f

jr_01b_5b74:
    ld [hl], l                                    ; $5b74: $75
    jr nz, @+$66                                  ; $5b75: $20 $64

    ld l, c                                       ; $5b77: $69
    ld h, h                                       ; $5b78: $64
    ld bc, $7469                                  ; $5b79: $01 $69 $74
    jr nz, jr_01b_5b87                            ; $5b7c: $20 $09

    jr nz, jr_01b_5bf4                            ; $5b7e: $20 $74

    ld l, c                                       ; $5b80: $69
    ld l, l                                       ; $5b81: $6d
    ld h, l                                       ; $5b82: $65
    ld [hl], e                                    ; $5b83: $73
    ld bc, $756f                                  ; $5b84: $01 $6f $75

jr_01b_5b87:
    ld [hl], h                                    ; $5b87: $74

jr_01b_5b88:
    jr nz, jr_01b_5bf9                            ; $5b88: $20 $6f

    ld h, [hl]                                    ; $5b8a: $66
    jr nz, jr_01b_5b96                            ; $5b8b: $20 $09

    ld hl, $0003                                  ; $5b8d: $21 $03 $00
    ld d, h                                       ; $5b90: $54
    ld l, a                                       ; $5b91: $6f
    ld l, a                                       ; $5b92: $6f
    jr nz, jr_01b_5bf7                            ; $5b93: $20 $62

    ld h, c                                       ; $5b95: $61

jr_01b_5b96:
    ld h, h                                       ; $5b96: $64
    ld hl, $5920                                  ; $5b97: $21 $20 $59
    ld l, a                                       ; $5b9a: $6f

jr_01b_5b9b:
    ld [hl], l                                    ; $5b9b: $75
    ld bc, $6e6f                                  ; $5b9c: $01 $6f $6e
    ld l, h                                       ; $5b9f: $6c
    ld a, c                                       ; $5ba0: $79

jr_01b_5ba1:
    jr nz, jr_01b_5c07                            ; $5ba1: $20 $64

    ld l, c                                       ; $5ba3: $69
    ld h, h                                       ; $5ba4: $64
    jr nz, jr_01b_5c10                            ; $5ba5: $20 $69

    ld [hl], h                                    ; $5ba7: $74
    jr nz, jr_01b_5bb3                            ; $5ba8: $20 $09

    jr nz, jr_01b_5c20                            ; $5baa: $20 $74

    ld l, c                                       ; $5bac: $69
    ld l, l                                       ; $5bad: $6d
    ld h, l                                       ; $5bae: $65

jr_01b_5baf:
    ld [hl], e                                    ; $5baf: $73
    ld bc, $756f                                  ; $5bb0: $01 $6f $75

jr_01b_5bb3:
    ld [hl], h                                    ; $5bb3: $74
    jr nz, @+$71                                  ; $5bb4: $20 $6f

    ld h, [hl]                                    ; $5bb6: $66
    jr nz, jr_01b_5bc2                            ; $5bb7: $20 $09

    ld l, $03                                     ; $5bb9: $2e $03
    nop                                           ; $5bbb: $00
    ld e, c                                       ; $5bbc: $59
    ld l, a                                       ; $5bbd: $6f
    ld [hl], l                                    ; $5bbe: $75
    jr nz, @+$79                                  ; $5bbf: $20 $77

    ld l, c                                       ; $5bc1: $69

jr_01b_5bc2:
    ld l, [hl]                                    ; $5bc2: $6e
    inc l                                         ; $5bc3: $2c
    ld bc, $2e07                                  ; $5bc4: $01 $07 $2e
    ld [bc], a                                    ; $5bc7: $02
    ld c, l                                       ; $5bc8: $4d
    ld a, c                                       ; $5bc9: $79
    jr nz, jr_01b_5c2d                            ; $5bca: $20 $61

    ld [hl], b                                    ; $5bcc: $70
    ld [hl], b                                    ; $5bcd: $70
    ld [hl], d                                    ; $5bce: $72
    ld l, a                                       ; $5bcf: $6f
    ld h, c                                       ; $5bd0: $61
    ld h, e                                       ; $5bd1: $63
    ld l, b                                       ; $5bd2: $68
    jr nz, jr_01b_5c3e                            ; $5bd3: $20 $69

    ld [hl], e                                    ; $5bd5: $73
    jr nz, @+$70                                  ; $5bd6: $20 $6e

    ld l, a                                       ; $5bd8: $6f

jr_01b_5bd9:
    ld bc, $616d                                  ; $5bd9: $01 $6d $61
    ld [hl], h                                    ; $5bdc: $74
    ld h, e                                       ; $5bdd: $63
    ld l, b                                       ; $5bde: $68
    jr nz, jr_01b_5c47                            ; $5bdf: $20 $66

    ld l, a                                       ; $5be1: $6f
    ld [hl], d                                    ; $5be2: $72
    jr nz, jr_01b_5c5e                            ; $5be3: $20 $79

    ld l, a                                       ; $5be5: $6f
    ld [hl], l                                    ; $5be6: $75
    ld [hl], d                                    ; $5be7: $72
    ld [hl], e                                    ; $5be8: $73
    ld l, $03                                     ; $5be9: $2e $03
    nop                                           ; $5beb: $00
    ld c, l                                       ; $5bec: $4d
    ld a, c                                       ; $5bed: $79
    jr nz, @+$63                                  ; $5bee: $20 $61

    ld [hl], b                                    ; $5bf0: $70
    ld [hl], b                                    ; $5bf1: $70
    ld [hl], d                                    ; $5bf2: $72
    ld l, a                                       ; $5bf3: $6f

jr_01b_5bf4:
    ld h, c                                       ; $5bf4: $61
    ld h, e                                       ; $5bf5: $63
    ld l, b                                       ; $5bf6: $68

jr_01b_5bf7:
    jr nz, jr_01b_5c62                            ; $5bf7: $20 $69

jr_01b_5bf9:
    ld [hl], e                                    ; $5bf9: $73
    jr nz, jr_01b_5c6a                            ; $5bfa: $20 $6e

    ld l, a                                       ; $5bfc: $6f
    ld bc, $616d                                  ; $5bfd: $01 $6d $61
    ld [hl], h                                    ; $5c00: $74
    ld h, e                                       ; $5c01: $63
    ld l, b                                       ; $5c02: $68
    jr nz, jr_01b_5c6b                            ; $5c03: $20 $66

    ld l, a                                       ; $5c05: $6f
    ld [hl], d                                    ; $5c06: $72

jr_01b_5c07:
    jr nz, jr_01b_5c82                            ; $5c07: $20 $79

    ld l, a                                       ; $5c09: $6f
    ld [hl], l                                    ; $5c0a: $75
    ld [hl], d                                    ; $5c0b: $72
    ld [hl], e                                    ; $5c0c: $73
    ld l, $03                                     ; $5c0d: $2e $03
    nop                                           ; $5c0f: $00

jr_01b_5c10:
    ld c, c                                       ; $5c10: $49
    jr nz, jr_01b_5c8a                            ; $5c11: $20 $77

    ld l, a                                       ; $5c13: $6f
    ld l, [hl]                                    ; $5c14: $6e
    ld hl, $0720                                  ; $5c15: $21 $20 $07
    inc l                                         ; $5c18: $2c
    ld bc, $6f79                                  ; $5c19: $01 $79 $6f
    ld [hl], l                                    ; $5c1c: $75
    jr nz, jr_01b_5c92                            ; $5c1d: $20 $73

    ld l, b                                       ; $5c1f: $68

jr_01b_5c20:
    ld l, a                                       ; $5c20: $6f
    ld [hl], l                                    ; $5c21: $75
    ld l, h                                       ; $5c22: $6c
    ld h, h                                       ; $5c23: $64
    jr nz, @+$72                                  ; $5c24: $20 $70

    ld [hl], d                                    ; $5c26: $72
    ld h, c                                       ; $5c27: $61
    ld h, e                                       ; $5c28: $63
    ld [hl], h                                    ; $5c29: $74
    ld l, c                                       ; $5c2a: $69
    ld h, e                                       ; $5c2b: $63
    ld h, l                                       ; $5c2c: $65

jr_01b_5c2d:
    ld hl, $0003                                  ; $5c2d: $21 $03 $00
    ld b, e                                       ; $5c30: $43
    ld [hl], l                                    ; $5c31: $75
    ld [hl], h                                    ; $5c32: $74
    ld [hl], h                                    ; $5c33: $74
    ld l, c                                       ; $5c34: $69
    ld l, [hl]                                    ; $5c35: $6e
    ld h, a                                       ; $5c36: $67
    jr nz, jr_01b_5c9a                            ; $5c37: $20 $61

    ld h, e                                       ; $5c39: $63
    ld [hl], d                                    ; $5c3a: $72
    ld l, a                                       ; $5c3b: $6f
    ld [hl], e                                    ; $5c3c: $73
    ld [hl], e                                    ; $5c3d: $73

jr_01b_5c3e:
    jr nz, jr_01b_5ca1                            ; $5c3e: $20 $61

    ld bc, $6968                                  ; $5c40: $01 $68 $69
    ld l, h                                       ; $5c43: $6c
    ld l, h                                       ; $5c44: $6c
    jr nz, jr_01b_5cb0                            ; $5c45: $20 $69

jr_01b_5c47:
    ld [hl], e                                    ; $5c47: $73
    jr nz, jr_01b_5cab                            ; $5c48: $20 $61

    jr nz, jr_01b_5cc0                            ; $5c4a: $20 $74

    ld l, a                                       ; $5c4c: $6f
    ld [hl], l                                    ; $5c4d: $75
    ld h, a                                       ; $5c4e: $67
    ld l, b                                       ; $5c4f: $68
    ld bc, $7061                                  ; $5c50: $01 $61 $70
    ld [hl], b                                    ; $5c53: $70
    ld [hl], d                                    ; $5c54: $72
    ld l, a                                       ; $5c55: $6f
    ld h, c                                       ; $5c56: $61
    ld h, e                                       ; $5c57: $63
    ld l, b                                       ; $5c58: $68
    ld l, $02                                     ; $5c59: $2e $02
    ld c, c                                       ; $5c5b: $49
    jr nz, jr_01b_5cc0                            ; $5c5c: $20 $62

jr_01b_5c5e:
    ld h, l                                       ; $5c5e: $65
    ld [hl], h                                    ; $5c5f: $74
    jr nz, jr_01b_5cab                            ; $5c60: $20 $49

jr_01b_5c62:
    jr nz, jr_01b_5cc7                            ; $5c62: $20 $63

    ld h, c                                       ; $5c64: $61
    ld l, [hl]                                    ; $5c65: $6e
    jr nz, jr_01b_5cca                            ; $5c66: $20 $62

    ld h, l                                       ; $5c68: $65
    ld h, c                                       ; $5c69: $61

jr_01b_5c6a:
    ld [hl], h                                    ; $5c6a: $74

jr_01b_5c6b:
    jr nz, jr_01b_5ce6                            ; $5c6b: $20 $79

    ld l, a                                       ; $5c6d: $6f
    ld [hl], l                                    ; $5c6e: $75
    ld bc, $7461                                  ; $5c6f: $01 $61 $74
    jr nz, @+$76                                  ; $5c72: $20 $74

    ld l, b                                       ; $5c74: $68
    ld l, c                                       ; $5c75: $69
    ld [hl], e                                    ; $5c76: $73
    jr nz, jr_01b_5cda                            ; $5c77: $20 $61

    ld [hl], b                                    ; $5c79: $70
    ld [hl], b                                    ; $5c7a: $70
    ld [hl], d                                    ; $5c7b: $72
    ld l, a                                       ; $5c7c: $6f
    ld h, c                                       ; $5c7d: $61
    ld h, e                                       ; $5c7e: $63
    ld l, b                                       ; $5c7f: $68
    ld l, $01                                     ; $5c80: $2e $01

jr_01b_5c82:
    ld c, b                                       ; $5c82: $48
    ld l, a                                       ; $5c83: $6f
    ld [hl], a                                    ; $5c84: $77
    jr nz, @+$63                                  ; $5c85: $20 $61

    ld h, d                                       ; $5c87: $62
    ld l, a                                       ; $5c88: $6f
    ld [hl], l                                    ; $5c89: $75

jr_01b_5c8a:
    ld [hl], h                                    ; $5c8a: $74
    jr nz, @+$6b                                  ; $5c8b: $20 $69

    ld [hl], h                                    ; $5c8d: $74
    ccf                                           ; $5c8e: $3f
    nop                                           ; $5c8f: $00
    ld d, a                                       ; $5c90: $57
    ld h, l                                       ; $5c91: $65

jr_01b_5c92:
    ld l, h                                       ; $5c92: $6c
    ld l, h                                       ; $5c93: $6c
    inc l                                         ; $5c94: $2c
    jr nz, @+$6b                                  ; $5c95: $20 $69

    ld h, [hl]                                    ; $5c97: $66
    jr nz, jr_01b_5d08                            ; $5c98: $20 $6e

jr_01b_5c9a:
    ld l, a                                       ; $5c9a: $6f
    ld [hl], h                                    ; $5c9b: $74
    jr nz, jr_01b_5d12                            ; $5c9c: $20 $74

    ld l, b                                       ; $5c9e: $68
    ld l, c                                       ; $5c9f: $69
    ld [hl], e                                    ; $5ca0: $73

jr_01b_5ca1:
    ld bc, $6974                                  ; $5ca1: $01 $74 $69
    ld l, l                                       ; $5ca4: $6d
    ld h, l                                       ; $5ca5: $65
    inc l                                         ; $5ca6: $2c
    jr nz, jr_01b_5d15                            ; $5ca7: $20 $6c

    ld h, l                                       ; $5ca9: $65
    ld [hl], h                                    ; $5caa: $74

jr_01b_5cab:
    daa                                           ; $5cab: $27
    ld [hl], e                                    ; $5cac: $73
    jr nz, @+$66                                  ; $5cad: $20 $64

    ld l, a                                       ; $5caf: $6f

jr_01b_5cb0:
    jr nz, @+$6b                                  ; $5cb0: $20 $69

    ld [hl], h                                    ; $5cb2: $74
    ld bc, $6e61                                  ; $5cb3: $01 $61 $6e
    ld l, a                                       ; $5cb6: $6f
    ld [hl], h                                    ; $5cb7: $74
    ld l, b                                       ; $5cb8: $68
    ld h, l                                       ; $5cb9: $65
    ld [hl], d                                    ; $5cba: $72
    jr nz, @+$76                                  ; $5cbb: $20 $74

    ld l, c                                       ; $5cbd: $69
    ld l, l                                       ; $5cbe: $6d
    ld h, l                                       ; $5cbf: $65

jr_01b_5cc0:
    ld l, $03                                     ; $5cc0: $2e $03
    nop                                           ; $5cc2: $00
    ld c, c                                       ; $5cc3: $49
    jr nz, jr_01b_5d29                            ; $5cc4: $20 $63

    ld h, c                                       ; $5cc6: $61

jr_01b_5cc7:
    ld l, [hl]                                    ; $5cc7: $6e
    jr nz, @+$69                                  ; $5cc8: $20 $67

jr_01b_5cca:
    ld h, l                                       ; $5cca: $65
    ld [hl], h                                    ; $5ccb: $74
    jr nz, jr_01b_5d45                            ; $5ccc: $20 $77

    ld l, c                                       ; $5cce: $69
    ld [hl], h                                    ; $5ccf: $74
    ld l, b                                       ; $5cd0: $68
    ld l, c                                       ; $5cd1: $69
    ld l, [hl]                                    ; $5cd2: $6e
    ld bc, $2033                                  ; $5cd3: $01 $33 $20
    ld a, c                                       ; $5cd6: $79
    ld h, c                                       ; $5cd7: $61
    ld [hl], d                                    ; $5cd8: $72
    ld h, h                                       ; $5cd9: $64

jr_01b_5cda:
    ld [hl], e                                    ; $5cda: $73
    jr nz, @+$39                                  ; $5cdb: $20 $37

    jr nz, jr_01b_5d53                            ; $5cdd: $20 $74

    ld l, c                                       ; $5cdf: $69
    ld l, l                                       ; $5ce0: $6d
    ld h, l                                       ; $5ce1: $65
    ld [hl], e                                    ; $5ce2: $73
    jr nz, jr_01b_5d54                            ; $5ce3: $20 $6f

    ld [hl], l                                    ; $5ce5: $75

jr_01b_5ce6:
    ld [hl], h                                    ; $5ce6: $74
    ld bc, $666f                                  ; $5ce7: $01 $6f $66
    jr nz, jr_01b_5d1d                            ; $5cea: $20 $31

    jr nc, jr_01b_5d1c                            ; $5cec: $30 $2e

    ld [bc], a                                    ; $5cee: $02
    ld c, c                                       ; $5cef: $49
    ld h, [hl]                                    ; $5cf0: $66
    jr nz, @+$7b                                  ; $5cf1: $20 $79

    ld l, a                                       ; $5cf3: $6f
    ld [hl], l                                    ; $5cf4: $75
    jr nz, jr_01b_5d5a                            ; $5cf5: $20 $63

    ld h, c                                       ; $5cf7: $61
    ld l, [hl]                                    ; $5cf8: $6e
    jr nz, @+$66                                  ; $5cf9: $20 $64

    ld l, a                                       ; $5cfb: $6f
    jr nz, jr_01b_5d67                            ; $5cfc: $20 $69

    ld [hl], h                                    ; $5cfe: $74
    ld bc, $6f6d                                  ; $5cff: $01 $6d $6f
    ld [hl], d                                    ; $5d02: $72
    ld h, l                                       ; $5d03: $65
    jr nz, @+$76                                  ; $5d04: $20 $74

    ld l, b                                       ; $5d06: $68
    ld h, c                                       ; $5d07: $61

jr_01b_5d08:
    ld l, [hl]                                    ; $5d08: $6e
    jr nz, jr_01b_5d42                            ; $5d09: $20 $37

    jr nz, @+$76                                  ; $5d0b: $20 $74

    ld l, c                                       ; $5d0d: $69
    ld l, l                                       ; $5d0e: $6d
    ld h, l                                       ; $5d0f: $65
    ld [hl], e                                    ; $5d10: $73
    inc l                                         ; $5d11: $2c

jr_01b_5d12:
    ld bc, $6f79                                  ; $5d12: $01 $79 $6f

jr_01b_5d15:
    ld [hl], l                                    ; $5d15: $75
    jr nz, @+$79                                  ; $5d16: $20 $77

    ld l, c                                       ; $5d18: $69
    ld l, [hl]                                    ; $5d19: $6e
    ld l, $20                                     ; $5d1a: $2e $20

jr_01b_5d1c:
    ld d, d                                       ; $5d1c: $52

jr_01b_5d1d:
    ld h, l                                       ; $5d1d: $65
    ld h, c                                       ; $5d1e: $61
    ld h, h                                       ; $5d1f: $64
    ld a, c                                       ; $5d20: $79
    ccf                                           ; $5d21: $3f
    inc bc                                        ; $5d22: $03
    nop                                           ; $5d23: $00
    ld e, c                                       ; $5d24: $59
    ld l, a                                       ; $5d25: $6f
    ld [hl], l                                    ; $5d26: $75
    daa                                           ; $5d27: $27
    ld [hl], d                                    ; $5d28: $72

jr_01b_5d29:
    ld h, l                                       ; $5d29: $65
    jr nz, jr_01b_5d93                            ; $5d2a: $20 $67

    ld l, a                                       ; $5d2c: $6f
    ld l, a                                       ; $5d2d: $6f
    ld h, h                                       ; $5d2e: $64
    inc l                                         ; $5d2f: $2c
    ld bc, $2107                                  ; $5d30: $01 $07 $21
    jr nz, @+$51                                  ; $5d33: $20 $4f

    ld [hl], l                                    ; $5d35: $75
    ld [hl], h                                    ; $5d36: $74
    jr nz, @+$71                                  ; $5d37: $20 $6f

    ld h, [hl]                                    ; $5d39: $66
    ld bc, $2009                                  ; $5d3a: $01 $09 $20
    ld [hl], h                                    ; $5d3d: $74
    ld [hl], d                                    ; $5d3e: $72
    ld l, c                                       ; $5d3f: $69
    ld h, l                                       ; $5d40: $65
    ld [hl], e                                    ; $5d41: $73

jr_01b_5d42:
    inc l                                         ; $5d42: $2c
    jr nz, jr_01b_5dbe                            ; $5d43: $20 $79

jr_01b_5d45:
    ld l, a                                       ; $5d45: $6f
    ld [hl], l                                    ; $5d46: $75
    jr nz, jr_01b_5db6                            ; $5d47: $20 $6d

    ld h, c                                       ; $5d49: $61
    ld h, h                                       ; $5d4a: $64
    ld h, l                                       ; $5d4b: $65
    jr nz, @+$0b                                  ; $5d4c: $20 $09

    ld hl, $0003                                  ; $5d4e: $21 $03 $00
    ld c, a                                       ; $5d51: $4f
    ld l, b                                       ; $5d52: $68

jr_01b_5d53:
    inc l                                         ; $5d53: $2c

jr_01b_5d54:
    jr nz, @+$09                                  ; $5d54: $20 $07

    ld hl, $4f01                                  ; $5d56: $21 $01 $4f
    ld l, [hl]                                    ; $5d59: $6e

jr_01b_5d5a:
    ld l, h                                       ; $5d5a: $6c
    ld a, c                                       ; $5d5b: $79
    jr nz, jr_01b_5d67                            ; $5d5c: $20 $09

    jr nz, @+$76                                  ; $5d5e: $20 $74

    ld l, c                                       ; $5d60: $69
    ld l, l                                       ; $5d61: $6d
    ld h, l                                       ; $5d62: $65
    ld [hl], e                                    ; $5d63: $73
    ld bc, $756f                                  ; $5d64: $01 $6f $75

jr_01b_5d67:
    ld [hl], h                                    ; $5d67: $74
    jr nz, @+$71                                  ; $5d68: $20 $6f

    ld h, [hl]                                    ; $5d6a: $66
    jr nz, jr_01b_5d76                            ; $5d6b: $20 $09

    ccf                                           ; $5d6d: $3f
    inc bc                                        ; $5d6e: $03
    nop                                           ; $5d6f: $00
    ld d, h                                       ; $5d70: $54
    ld l, b                                       ; $5d71: $68
    ld h, c                                       ; $5d72: $61
    ld [hl], h                                    ; $5d73: $74
    daa                                           ; $5d74: $27
    ld [hl], e                                    ; $5d75: $73

jr_01b_5d76:
    jr nz, jr_01b_5d7f                            ; $5d76: $20 $07

    ld bc, $6f66                                  ; $5d78: $01 $66 $6f
    ld [hl], d                                    ; $5d7b: $72
    jr nz, @+$7b                                  ; $5d7c: $20 $79

    ld l, a                                       ; $5d7e: $6f

jr_01b_5d7f:
    ld [hl], l                                    ; $5d7f: $75
    ld l, $20                                     ; $5d80: $2e $20
    ld c, c                                       ; $5d82: $49
    jr nz, jr_01b_5df1                            ; $5d83: $20 $6c

    ld l, a                                       ; $5d85: $6f
    ld [hl], e                                    ; $5d86: $73
    ld h, l                                       ; $5d87: $65
    ld l, $02                                     ; $5d88: $2e $02
    ld d, a                                       ; $5d8a: $57
    ld l, c                                       ; $5d8b: $69
    ld [hl], h                                    ; $5d8c: $74
    ld l, b                                       ; $5d8d: $68
    jr nz, jr_01b_5e09                            ; $5d8e: $20 $79

    ld l, a                                       ; $5d90: $6f
    ld [hl], l                                    ; $5d91: $75
    ld [hl], d                                    ; $5d92: $72

jr_01b_5d93:
    jr nz, @+$63                                  ; $5d93: $20 $61

    ld [hl], b                                    ; $5d95: $70
    ld [hl], b                                    ; $5d96: $70
    ld [hl], d                                    ; $5d97: $72
    ld l, a                                       ; $5d98: $6f
    ld h, c                                       ; $5d99: $61
    ld h, e                                       ; $5d9a: $63
    ld l, b                                       ; $5d9b: $68
    inc l                                         ; $5d9c: $2c
    ld bc, $2749                                  ; $5d9d: $01 $49 $27
    ld h, h                                       ; $5da0: $64
    jr nz, jr_01b_5e15                            ; $5da1: $20 $72

    ld h, l                                       ; $5da3: $65
    ld h, c                                       ; $5da4: $61
    ld h, e                                       ; $5da5: $63
    ld l, b                                       ; $5da6: $68
    jr nz, jr_01b_5e1d                            ; $5da7: $20 $74

    ld l, b                                       ; $5da9: $68
    ld h, l                                       ; $5daa: $65
    jr nz, jr_01b_5e21                            ; $5dab: $20 $74

    ld l, a                                       ; $5dad: $6f
    ld [hl], b                                    ; $5dae: $70
    ld hl, $0003                                  ; $5daf: $21 $03 $00
    ld d, a                                       ; $5db2: $57
    ld l, c                                       ; $5db3: $69
    ld [hl], h                                    ; $5db4: $74
    ld l, b                                       ; $5db5: $68

jr_01b_5db6:
    jr nz, jr_01b_5e31                            ; $5db6: $20 $79

    ld l, a                                       ; $5db8: $6f
    ld [hl], l                                    ; $5db9: $75
    ld [hl], d                                    ; $5dba: $72
    jr nz, @+$63                                  ; $5dbb: $20 $61

    ld [hl], b                                    ; $5dbd: $70

jr_01b_5dbe:
    ld [hl], b                                    ; $5dbe: $70
    ld [hl], d                                    ; $5dbf: $72
    ld l, a                                       ; $5dc0: $6f
    ld h, c                                       ; $5dc1: $61
    ld h, e                                       ; $5dc2: $63
    ld l, b                                       ; $5dc3: $68
    inc l                                         ; $5dc4: $2c
    ld bc, $2749                                  ; $5dc5: $01 $49 $27
    ld h, h                                       ; $5dc8: $64
    jr nz, jr_01b_5e3d                            ; $5dc9: $20 $72

    ld h, l                                       ; $5dcb: $65
    ld h, c                                       ; $5dcc: $61
    ld h, e                                       ; $5dcd: $63
    ld l, b                                       ; $5dce: $68
    jr nz, jr_01b_5e45                            ; $5dcf: $20 $74

    ld l, b                                       ; $5dd1: $68
    ld h, l                                       ; $5dd2: $65
    jr nz, jr_01b_5e49                            ; $5dd3: $20 $74

    ld l, a                                       ; $5dd5: $6f
    ld [hl], b                                    ; $5dd6: $70
    ld hl, $0003                                  ; $5dd7: $21 $03 $00
    ld c, c                                       ; $5dda: $49
    jr nz, jr_01b_5e54                            ; $5ddb: $20 $77

    ld l, c                                       ; $5ddd: $69
    ld l, [hl]                                    ; $5dde: $6e
    inc l                                         ; $5ddf: $2c
    jr nz, @+$09                                  ; $5de0: $20 $07

    ld l, $01                                     ; $5de2: $2e $01
    ld b, e                                       ; $5de4: $43
    ld l, a                                       ; $5de5: $6f
    ld l, l                                       ; $5de6: $6d
    ld h, l                                       ; $5de7: $65
    jr nz, jr_01b_5e5d                            ; $5de8: $20 $73

    ld h, l                                       ; $5dea: $65
    ld h, l                                       ; $5deb: $65
    jr nz, jr_01b_5e5b                            ; $5dec: $20 $6d

    ld h, l                                       ; $5dee: $65
    jr nz, @+$63                                  ; $5def: $20 $61

jr_01b_5df1:
    ld h, [hl]                                    ; $5df1: $66
    ld [hl], h                                    ; $5df2: $74
    ld h, l                                       ; $5df3: $65
    ld [hl], d                                    ; $5df4: $72
    ld bc, $2061                                  ; $5df5: $01 $61 $20
    ld l, h                                       ; $5df8: $6c
    ld l, c                                       ; $5df9: $69
    ld [hl], h                                    ; $5dfa: $74
    ld [hl], h                                    ; $5dfb: $74
    ld l, h                                       ; $5dfc: $6c
    ld h, l                                       ; $5dfd: $65
    jr nz, jr_01b_5e70                            ; $5dfe: $20 $70

    ld [hl], d                                    ; $5e00: $72
    ld h, c                                       ; $5e01: $61
    ld h, e                                       ; $5e02: $63
    ld [hl], h                                    ; $5e03: $74
    ld l, c                                       ; $5e04: $69
    ld h, e                                       ; $5e05: $63
    ld h, l                                       ; $5e06: $65
    ld l, $03                                     ; $5e07: $2e $03

jr_01b_5e09:
    nop                                           ; $5e09: $00
    ld c, h                                       ; $5e0a: $4c
    ld h, l                                       ; $5e0b: $65
    ld [hl], h                                    ; $5e0c: $74
    jr nz, @+$6f                                  ; $5e0d: $20 $6d

    ld h, l                                       ; $5e0f: $65
    jr nz, jr_01b_5e75                            ; $5e10: $20 $63

    ld l, a                                       ; $5e12: $6f
    ld l, [hl]                                    ; $5e13: $6e
    ld h, a                                       ; $5e14: $67

jr_01b_5e15:
    ld [hl], d                                    ; $5e15: $72
    ld h, c                                       ; $5e16: $61
    ld [hl], h                                    ; $5e17: $74
    ld [hl], l                                    ; $5e18: $75
    ld l, h                                       ; $5e19: $6c
    ld h, c                                       ; $5e1a: $61
    ld [hl], h                                    ; $5e1b: $74
    ld h, l                                       ; $5e1c: $65

jr_01b_5e1d:
    ld bc, $6f79                                  ; $5e1d: $01 $79 $6f
    ld [hl], l                                    ; $5e20: $75

jr_01b_5e21:
    jr nz, @+$71                                  ; $5e21: $20 $6f

    ld l, [hl]                                    ; $5e23: $6e
    jr nz, jr_01b_5e9a                            ; $5e24: $20 $74

    ld l, b                                       ; $5e26: $68
    ld h, l                                       ; $5e27: $65
    ld bc, $7247                                  ; $5e28: $01 $47 $72
    ld h, c                                       ; $5e2b: $61
    ld l, [hl]                                    ; $5e2c: $6e
    ld h, h                                       ; $5e2d: $64
    jr nz, jr_01b_5e73                            ; $5e2e: $20 $43

    ld l, b                                       ; $5e30: $68

jr_01b_5e31:
    ld h, c                                       ; $5e31: $61
    ld l, l                                       ; $5e32: $6d
    ld [hl], b                                    ; $5e33: $70
    ld l, c                                       ; $5e34: $69
    ld l, a                                       ; $5e35: $6f
    ld l, [hl]                                    ; $5e36: $6e
    ld [hl], e                                    ; $5e37: $73
    ld l, b                                       ; $5e38: $68
    ld l, c                                       ; $5e39: $69
    ld [hl], b                                    ; $5e3a: $70
    ld l, $02                                     ; $5e3b: $2e $02

jr_01b_5e3d:
    ld d, a                                       ; $5e3d: $57
    ld l, c                                       ; $5e3e: $69
    ld [hl], h                                    ; $5e3f: $74
    ld l, b                                       ; $5e40: $68
    jr nz, @+$76                                  ; $5e41: $20 $74

    ld l, b                                       ; $5e43: $68
    ld h, c                                       ; $5e44: $61

jr_01b_5e45:
    ld [hl], h                                    ; $5e45: $74
    inc l                                         ; $5e46: $2c
    jr nz, @+$4b                                  ; $5e47: $20 $49

jr_01b_5e49:
    jr nz, jr_01b_5eaf                            ; $5e49: $20 $64

    ld h, l                                       ; $5e4b: $65
    ld h, e                                       ; $5e4c: $63
    ld l, h                                       ; $5e4d: $6c
    ld h, c                                       ; $5e4e: $61
    ld [hl], d                                    ; $5e4f: $72
    ld h, l                                       ; $5e50: $65
    ld bc, $6874                                  ; $5e51: $01 $74 $68

jr_01b_5e54:
    ld h, c                                       ; $5e54: $61
    ld [hl], h                                    ; $5e55: $74
    jr nz, jr_01b_5ea1                            ; $5e56: $20 $49

    jr nz, jr_01b_5ed1                            ; $5e58: $20 $77

    ld l, c                                       ; $5e5a: $69

jr_01b_5e5b:
    ld l, h                                       ; $5e5b: $6c
    ld l, h                                       ; $5e5c: $6c

jr_01b_5e5d:
    jr nz, jr_01b_5ed3                            ; $5e5d: $20 $74

    ld h, c                                       ; $5e5f: $61
    ld l, e                                       ; $5e60: $6b
    ld h, l                                       ; $5e61: $65
    ld bc, $7469                                  ; $5e62: $01 $69 $74
    jr nz, jr_01b_5ecd                            ; $5e65: $20 $66

    ld [hl], d                                    ; $5e67: $72
    ld l, a                                       ; $5e68: $6f
    ld l, l                                       ; $5e69: $6d
    jr nz, jr_01b_5ee5                            ; $5e6a: $20 $79

    ld l, a                                       ; $5e6c: $6f
    ld [hl], l                                    ; $5e6d: $75
    ld l, $03                                     ; $5e6e: $2e $03

jr_01b_5e70:
    nop                                           ; $5e70: $00
    ld b, l                                       ; $5e71: $45
    halt                                          ; $5e72: $76

jr_01b_5e73:
    ld h, l                                       ; $5e73: $65
    ld [hl], d                                    ; $5e74: $72

jr_01b_5e75:
    ld a, c                                       ; $5e75: $79
    ld l, a                                       ; $5e76: $6f
    ld l, [hl]                                    ; $5e77: $6e
    ld h, l                                       ; $5e78: $65
    daa                                           ; $5e79: $27
    ld [hl], e                                    ; $5e7a: $73
    jr nz, jr_01b_5ee4                            ; $5e7b: $20 $67

    ld l, a                                       ; $5e7d: $6f
    ld [hl], h                                    ; $5e7e: $74
    jr nz, @+$76                                  ; $5e7f: $20 $74

    ld l, b                                       ; $5e81: $68
    ld h, l                                       ; $5e82: $65
    ld l, c                                       ; $5e83: $69
    ld [hl], d                                    ; $5e84: $72
    ld bc, $7965                                  ; $5e85: $01 $65 $79
    ld h, l                                       ; $5e88: $65
    ld [hl], e                                    ; $5e89: $73
    jr nz, jr_01b_5efb                            ; $5e8a: $20 $6f

    ld l, [hl]                                    ; $5e8c: $6e
    jr nz, jr_01b_5f08                            ; $5e8d: $20 $79

    ld l, a                                       ; $5e8f: $6f
    ld [hl], l                                    ; $5e90: $75
    ld l, $02                                     ; $5e91: $2e $02
    ld b, d                                       ; $5e93: $42
    ld h, l                                       ; $5e94: $65
    ld h, c                                       ; $5e95: $61
    ld [hl], h                                    ; $5e96: $74
    ld l, c                                       ; $5e97: $69
    ld l, [hl]                                    ; $5e98: $6e
    ld h, a                                       ; $5e99: $67

jr_01b_5e9a:
    jr nz, jr_01b_5f10                            ; $5e9a: $20 $74

    ld l, b                                       ; $5e9c: $68
    ld h, l                                       ; $5e9d: $65
    jr nz, jr_01b_5ee7                            ; $5e9e: $20 $47

    ld [hl], d                                    ; $5ea0: $72

jr_01b_5ea1:
    ld h, c                                       ; $5ea1: $61
    ld l, [hl]                                    ; $5ea2: $6e
    ld h, h                                       ; $5ea3: $64
    ld bc, $6843                                  ; $5ea4: $01 $43 $68
    ld h, c                                       ; $5ea7: $61
    ld l, l                                       ; $5ea8: $6d
    ld [hl], b                                    ; $5ea9: $70
    ld l, c                                       ; $5eaa: $69
    ld l, a                                       ; $5eab: $6f
    ld l, [hl]                                    ; $5eac: $6e
    jr nz, @+$6b                                  ; $5ead: $20 $69

jr_01b_5eaf:
    ld [hl], e                                    ; $5eaf: $73
    jr nz, @+$67                                  ; $5eb0: $20 $65

    halt                                          ; $5eb2: $76
    ld h, l                                       ; $5eb3: $65
    ld [hl], d                                    ; $5eb4: $72
    ld a, c                                       ; $5eb5: $79
    ld bc, $6f67                                  ; $5eb6: $01 $67 $6f
    ld l, h                                       ; $5eb9: $6c
    ld h, [hl]                                    ; $5eba: $66
    ld h, l                                       ; $5ebb: $65
    ld [hl], d                                    ; $5ebc: $72
    daa                                           ; $5ebd: $27
    ld [hl], e                                    ; $5ebe: $73
    jr nz, jr_01b_5f25                            ; $5ebf: $20 $64

    ld [hl], d                                    ; $5ec1: $72
    ld h, l                                       ; $5ec2: $65
    ld h, c                                       ; $5ec3: $61
    ld l, l                                       ; $5ec4: $6d
    ld hl, $0003                                  ; $5ec5: $21 $03 $00
    ld c, a                                       ; $5ec8: $4f
    ld l, [hl]                                    ; $5ec9: $6e
    ld h, l                                       ; $5eca: $65
    jr nz, @+$71                                  ; $5ecb: $20 $6f

jr_01b_5ecd:
    ld h, [hl]                                    ; $5ecd: $66
    jr nz, jr_01b_5f44                            ; $5ece: $20 $74

    ld l, b                                       ; $5ed0: $68

jr_01b_5ed1:
    ld h, l                                       ; $5ed1: $65
    ld [hl], e                                    ; $5ed2: $73

jr_01b_5ed3:
    ld h, l                                       ; $5ed3: $65
    jr nz, jr_01b_5f3a                            ; $5ed4: $20 $64

    ld h, c                                       ; $5ed6: $61
    ld a, c                                       ; $5ed7: $79
    ld [hl], e                                    ; $5ed8: $73
    inc l                                         ; $5ed9: $2c
    ld bc, $2c07                                  ; $5eda: $01 $07 $2c
    jr nz, jr_01b_5f28                            ; $5edd: $20 $49

    daa                                           ; $5edf: $27
    ld l, l                                       ; $5ee0: $6d
    ld bc, $6f67                                  ; $5ee1: $01 $67 $6f

jr_01b_5ee4:
    ld l, c                                       ; $5ee4: $69

jr_01b_5ee5:
    ld l, [hl]                                    ; $5ee5: $6e
    ld h, a                                       ; $5ee6: $67

jr_01b_5ee7:
    jr nz, jr_01b_5f5d                            ; $5ee7: $20 $74

    ld l, a                                       ; $5ee9: $6f
    jr nz, @+$64                                  ; $5eea: $20 $62

    ld h, l                                       ; $5eec: $65
    ld h, c                                       ; $5eed: $61
    ld [hl], h                                    ; $5eee: $74
    jr nz, jr_01b_5f6a                            ; $5eef: $20 $79

    ld l, a                                       ; $5ef1: $6f
    ld [hl], l                                    ; $5ef2: $75
    ld hl, $0003                                  ; $5ef3: $21 $03 $00
    ld d, e                                       ; $5ef6: $53
    ld l, b                                       ; $5ef7: $68
    ld l, a                                       ; $5ef8: $6f
    ld l, a                                       ; $5ef9: $6f
    ld [hl], h                                    ; $5efa: $74

jr_01b_5efb:
    ld l, c                                       ; $5efb: $69
    ld l, [hl]                                    ; $5efc: $6e
    ld h, a                                       ; $5efd: $67
    jr nz, jr_01b_5f66                            ; $5efe: $20 $66

    ld l, a                                       ; $5f00: $6f
    ld [hl], d                                    ; $5f01: $72
    jr nz, @+$63                                  ; $5f02: $20 $61

    ld bc, $6f64                                  ; $5f04: $01 $64 $6f
    ld [hl], a                                    ; $5f07: $77

jr_01b_5f08:
    ld l, [hl]                                    ; $5f08: $6e
    ld l, b                                       ; $5f09: $68
    ld l, c                                       ; $5f0a: $69
    ld l, h                                       ; $5f0b: $6c
    ld l, h                                       ; $5f0c: $6c
    jr nz, jr_01b_5f7f                            ; $5f0d: $20 $70

    ld l, c                                       ; $5f0f: $69

jr_01b_5f10:
    ld l, [hl]                                    ; $5f10: $6e
    jr nz, jr_01b_5f79                            ; $5f11: $20 $66

    ld [hl], d                                    ; $5f13: $72
    ld l, a                                       ; $5f14: $6f
    ld l, l                                       ; $5f15: $6d
    ld bc, $756f                                  ; $5f16: $01 $6f $75
    ld [hl], h                                    ; $5f19: $74
    jr nz, jr_01b_5f8b                            ; $5f1a: $20 $6f

    ld h, [hl]                                    ; $5f1c: $66
    jr nz, jr_01b_5f93                            ; $5f1d: $20 $74

    ld l, b                                       ; $5f1f: $68
    ld h, l                                       ; $5f20: $65
    jr nz, @+$74                                  ; $5f21: $20 $72

    ld l, a                                       ; $5f23: $6f
    ld [hl], l                                    ; $5f24: $75

jr_01b_5f25:
    ld h, a                                       ; $5f25: $67
    ld l, b                                       ; $5f26: $68
    ld [bc], a                                    ; $5f27: $02

jr_01b_5f28:
    ld h, c                                       ; $5f28: $61
    ld l, [hl]                                    ; $5f29: $6e
    ld h, h                                       ; $5f2a: $64
    jr nz, jr_01b_5f8f                            ; $5f2b: $20 $62

    ld h, l                                       ; $5f2d: $65
    ld l, b                                       ; $5f2e: $68
    ld l, c                                       ; $5f2f: $69
    ld l, [hl]                                    ; $5f30: $6e
    ld h, h                                       ; $5f31: $64
    jr nz, @+$63                                  ; $5f32: $20 $61

    jr nz, jr_01b_5fa3                            ; $5f34: $20 $6d

    ld l, a                                       ; $5f36: $6f
    ld [hl], l                                    ; $5f37: $75
    ld l, [hl]                                    ; $5f38: $6e
    ld h, h                                       ; $5f39: $64

jr_01b_5f3a:
    ld bc, $7369                                  ; $5f3a: $01 $69 $73
    jr nz, jr_01b_5fa0                            ; $5f3d: $20 $61

    jr nz, jr_01b_5fa9                            ; $5f3f: $20 $68

    ld h, c                                       ; $5f41: $61
    ld [hl], d                                    ; $5f42: $72
    ld h, h                                       ; $5f43: $64

jr_01b_5f44:
    jr nz, jr_01b_5fa7                            ; $5f44: $20 $61

    ld [hl], b                                    ; $5f46: $70
    ld [hl], b                                    ; $5f47: $70
    ld [hl], d                                    ; $5f48: $72
    ld l, a                                       ; $5f49: $6f
    ld h, c                                       ; $5f4a: $61
    ld h, e                                       ; $5f4b: $63
    ld l, b                                       ; $5f4c: $68
    ld l, $02                                     ; $5f4d: $2e $02
    ld d, a                                       ; $5f4f: $57
    ld h, c                                       ; $5f50: $61
    ld l, [hl]                                    ; $5f51: $6e
    ld [hl], h                                    ; $5f52: $74
    jr nz, jr_01b_5fc9                            ; $5f53: $20 $74

    ld l, a                                       ; $5f55: $6f
    jr nz, jr_01b_5fcc                            ; $5f56: $20 $74

    ld [hl], d                                    ; $5f58: $72
    ld a, c                                       ; $5f59: $79
    jr nz, jr_01b_5fc9                            ; $5f5a: $20 $6d

    ld h, l                                       ; $5f5c: $65

jr_01b_5f5d:
    ccf                                           ; $5f5d: $3f
    nop                                           ; $5f5e: $00
    ld b, c                                       ; $5f5f: $41
    ld [hl], a                                    ; $5f60: $77
    inc l                                         ; $5f61: $2c
    jr nz, jr_01b_5fad                            ; $5f62: $20 $49

    jr nz, jr_01b_5fdd                            ; $5f64: $20 $77

jr_01b_5f66:
    ld h, c                                       ; $5f66: $61
    ld l, [hl]                                    ; $5f67: $6e
    ld [hl], h                                    ; $5f68: $74
    ld h, l                                       ; $5f69: $65

jr_01b_5f6a:
    ld h, h                                       ; $5f6a: $64
    jr nz, jr_01b_5fe1                            ; $5f6b: $20 $74

    ld l, a                                       ; $5f6d: $6f
    jr nz, @+$75                                  ; $5f6e: $20 $73

    ld h, l                                       ; $5f70: $65
    ld h, l                                       ; $5f71: $65
    ld bc, $6877                                  ; $5f72: $01 $77 $68
    ld h, c                                       ; $5f75: $61
    ld [hl], h                                    ; $5f76: $74
    jr nz, jr_01b_5fed                            ; $5f77: $20 $74

jr_01b_5f79:
    ld l, b                                       ; $5f79: $68
    ld h, l                                       ; $5f7a: $65
    jr nz, jr_01b_5fc4                            ; $5f7b: $20 $47

    ld [hl], d                                    ; $5f7d: $72
    ld h, c                                       ; $5f7e: $61

jr_01b_5f7f:
    ld l, [hl]                                    ; $5f7f: $6e
    ld h, h                                       ; $5f80: $64
    jr nz, @+$45                                  ; $5f81: $20 $43

    ld l, b                                       ; $5f83: $68
    ld h, c                                       ; $5f84: $61
    ld l, l                                       ; $5f85: $6d
    ld [hl], b                                    ; $5f86: $70
    ld bc, $6f63                                  ; $5f87: $01 $63 $6f
    ld [hl], l                                    ; $5f8a: $75

jr_01b_5f8b:
    ld l, h                                       ; $5f8b: $6c
    ld h, h                                       ; $5f8c: $64
    jr nz, jr_01b_5ff3                            ; $5f8d: $20 $64

jr_01b_5f8f:
    ld l, a                                       ; $5f8f: $6f
    ld hl, $0003                                  ; $5f90: $21 $03 $00

jr_01b_5f93:
    ld c, c                                       ; $5f93: $49
    jr nz, jr_01b_5ff9                            ; $5f94: $20 $63

    ld h, c                                       ; $5f96: $61
    ld l, [hl]                                    ; $5f97: $6e
    jr nz, jr_01b_6001                            ; $5f98: $20 $67

    ld h, l                                       ; $5f9a: $65
    ld [hl], h                                    ; $5f9b: $74
    jr nz, jr_01b_6015                            ; $5f9c: $20 $77

    ld l, c                                       ; $5f9e: $69
    ld [hl], h                                    ; $5f9f: $74

jr_01b_5fa0:
    ld l, b                                       ; $5fa0: $68
    ld l, c                                       ; $5fa1: $69
    ld l, [hl]                                    ; $5fa2: $6e

jr_01b_5fa3:
    ld bc, $2033                                  ; $5fa3: $01 $33 $20
    ld a, c                                       ; $5fa6: $79

jr_01b_5fa7:
    ld h, c                                       ; $5fa7: $61
    ld [hl], d                                    ; $5fa8: $72

jr_01b_5fa9:
    ld h, h                                       ; $5fa9: $64
    ld [hl], e                                    ; $5faa: $73
    jr nz, jr_01b_5fe4                            ; $5fab: $20 $37

jr_01b_5fad:
    jr nz, jr_01b_6023                            ; $5fad: $20 $74

    ld l, c                                       ; $5faf: $69
    ld l, l                                       ; $5fb0: $6d
    ld h, l                                       ; $5fb1: $65
    ld [hl], e                                    ; $5fb2: $73
    ld bc, $756f                                  ; $5fb3: $01 $6f $75
    ld [hl], h                                    ; $5fb6: $74
    jr nz, jr_01b_6028                            ; $5fb7: $20 $6f

    ld h, [hl]                                    ; $5fb9: $66
    jr nz, jr_01b_5fed                            ; $5fba: $20 $31

    jr nc, @+$30                                  ; $5fbc: $30 $2e

    ld [bc], a                                    ; $5fbe: $02
    ld c, c                                       ; $5fbf: $49
    ld h, [hl]                                    ; $5fc0: $66
    jr nz, jr_01b_603c                            ; $5fc1: $20 $79

    ld l, a                                       ; $5fc3: $6f

jr_01b_5fc4:
    ld [hl], l                                    ; $5fc4: $75
    jr nz, jr_01b_602e                            ; $5fc5: $20 $67

    ld h, l                                       ; $5fc7: $65
    ld [hl], h                                    ; $5fc8: $74

jr_01b_5fc9:
    jr nz, @+$79                                  ; $5fc9: $20 $77

    ld l, c                                       ; $5fcb: $69

jr_01b_5fcc:
    ld [hl], h                                    ; $5fcc: $74
    ld l, b                                       ; $5fcd: $68
    ld l, c                                       ; $5fce: $69
    ld l, [hl]                                    ; $5fcf: $6e
    ld bc, $2033                                  ; $5fd0: $01 $33 $20
    ld a, c                                       ; $5fd3: $79
    ld h, c                                       ; $5fd4: $61
    ld [hl], d                                    ; $5fd5: $72
    ld h, h                                       ; $5fd6: $64
    ld [hl], e                                    ; $5fd7: $73
    jr nz, @+$6f                                  ; $5fd8: $20 $6d

    ld l, a                                       ; $5fda: $6f
    ld [hl], d                                    ; $5fdb: $72
    ld h, l                                       ; $5fdc: $65

jr_01b_5fdd:
    jr nz, @+$76                                  ; $5fdd: $20 $74

    ld l, b                                       ; $5fdf: $68
    ld h, c                                       ; $5fe0: $61

jr_01b_5fe1:
    ld l, [hl]                                    ; $5fe1: $6e
    jr nz, @+$39                                  ; $5fe2: $20 $37

jr_01b_5fe4:
    ld bc, $6974                                  ; $5fe4: $01 $74 $69
    ld l, l                                       ; $5fe7: $6d
    ld h, l                                       ; $5fe8: $65
    ld [hl], e                                    ; $5fe9: $73
    inc l                                         ; $5fea: $2c
    jr nz, jr_01b_6066                            ; $5feb: $20 $79

jr_01b_5fed:
    ld l, a                                       ; $5fed: $6f
    ld [hl], l                                    ; $5fee: $75
    jr nz, @+$79                                  ; $5fef: $20 $77

    ld l, c                                       ; $5ff1: $69
    ld l, [hl]                                    ; $5ff2: $6e

jr_01b_5ff3:
    ld l, $03                                     ; $5ff3: $2e $03
    nop                                           ; $5ff5: $00
    ld c, a                                       ; $5ff6: $4f
    ld l, l                                       ; $5ff7: $6d
    ld l, c                                       ; $5ff8: $69

jr_01b_5ff9:
    ld h, a                                       ; $5ff9: $67
    ld l, a                                       ; $5ffa: $6f
    ld [hl], e                                    ; $5ffb: $73
    ld l, b                                       ; $5ffc: $68
    ld hl, $5920                                  ; $5ffd: $21 $20 $59
    ld l, a                                       ; $6000: $6f

jr_01b_6001:
    ld [hl], l                                    ; $6001: $75
    jr nz, @+$66                                  ; $6002: $20 $64

    ld l, c                                       ; $6004: $69
    ld h, h                                       ; $6005: $64
    ld bc, $7469                                  ; $6006: $01 $69 $74
    jr nz, jr_01b_6014                            ; $6009: $20 $09

    jr nz, jr_01b_6081                            ; $600b: $20 $74

    ld l, c                                       ; $600d: $69
    ld l, l                                       ; $600e: $6d
    ld h, l                                       ; $600f: $65
    ld [hl], e                                    ; $6010: $73
    ld bc, $756f                                  ; $6011: $01 $6f $75

jr_01b_6014:
    ld [hl], h                                    ; $6014: $74

jr_01b_6015:
    jr nz, jr_01b_6086                            ; $6015: $20 $6f

    ld h, [hl]                                    ; $6017: $66
    jr nz, jr_01b_6023                            ; $6018: $20 $09

    ld hl, $0003                                  ; $601a: $21 $03 $00
    ld d, h                                       ; $601d: $54
    ld l, a                                       ; $601e: $6f
    ld l, a                                       ; $601f: $6f
    jr nz, @+$64                                  ; $6020: $20 $62

    ld h, c                                       ; $6022: $61

jr_01b_6023:
    ld h, h                                       ; $6023: $64
    ld hl, $5920                                  ; $6024: $21 $20 $59
    ld l, a                                       ; $6027: $6f

jr_01b_6028:
    ld [hl], l                                    ; $6028: $75
    ld bc, $6e6f                                  ; $6029: $01 $6f $6e
    ld l, h                                       ; $602c: $6c
    ld a, c                                       ; $602d: $79

jr_01b_602e:
    jr nz, jr_01b_6094                            ; $602e: $20 $64

    ld l, c                                       ; $6030: $69
    ld h, h                                       ; $6031: $64
    jr nz, jr_01b_609d                            ; $6032: $20 $69

    ld [hl], h                                    ; $6034: $74
    jr nz, jr_01b_6040                            ; $6035: $20 $09

    jr nz, jr_01b_60ad                            ; $6037: $20 $74

    ld l, c                                       ; $6039: $69
    ld l, l                                       ; $603a: $6d
    ld h, l                                       ; $603b: $65

jr_01b_603c:
    ld [hl], e                                    ; $603c: $73
    ld bc, $756f                                  ; $603d: $01 $6f $75

jr_01b_6040:
    ld [hl], h                                    ; $6040: $74
    jr nz, @+$71                                  ; $6041: $20 $6f

    ld h, [hl]                                    ; $6043: $66
    jr nz, jr_01b_604f                            ; $6044: $20 $09

    ld l, $03                                     ; $6046: $2e $03
    nop                                           ; $6048: $00
    ld e, c                                       ; $6049: $59
    ld l, a                                       ; $604a: $6f
    ld [hl], l                                    ; $604b: $75
    jr nz, jr_01b_60c5                            ; $604c: $20 $77

    ld l, c                                       ; $604e: $69

jr_01b_604f:
    ld l, [hl]                                    ; $604f: $6e
    inc l                                         ; $6050: $2c
    ld bc, $2e07                                  ; $6051: $01 $07 $2e
    ld [bc], a                                    ; $6054: $02
    ld c, l                                       ; $6055: $4d
    ld a, c                                       ; $6056: $79
    jr nz, @+$63                                  ; $6057: $20 $61

    ld [hl], b                                    ; $6059: $70
    ld [hl], b                                    ; $605a: $70
    ld [hl], d                                    ; $605b: $72
    ld l, a                                       ; $605c: $6f
    ld h, c                                       ; $605d: $61
    ld h, e                                       ; $605e: $63
    ld l, b                                       ; $605f: $68
    jr nz, jr_01b_60c5                            ; $6060: $20 $63

    ld h, c                                       ; $6062: $61
    ld l, [hl]                                    ; $6063: $6e
    daa                                           ; $6064: $27
    ld [hl], h                                    ; $6065: $74

jr_01b_6066:
    ld bc, $7665                                  ; $6066: $01 $65 $76
    ld h, l                                       ; $6069: $65
    ld l, [hl]                                    ; $606a: $6e
    jr nz, @+$65                                  ; $606b: $20 $63

    ld l, a                                       ; $606d: $6f
    ld l, l                                       ; $606e: $6d
    ld [hl], b                                    ; $606f: $70
    ld h, c                                       ; $6070: $61
    ld [hl], d                                    ; $6071: $72
    ld h, l                                       ; $6072: $65
    ld bc, $6f74                                  ; $6073: $01 $74 $6f
    jr nz, jr_01b_60f1                            ; $6076: $20 $79

    ld l, a                                       ; $6078: $6f
    ld [hl], l                                    ; $6079: $75
    ld [hl], d                                    ; $607a: $72
    ld [hl], e                                    ; $607b: $73
    ld l, $03                                     ; $607c: $2e $03
    nop                                           ; $607e: $00
    ld e, c                                       ; $607f: $59
    ld l, a                                       ; $6080: $6f

jr_01b_6081:
    ld [hl], l                                    ; $6081: $75
    ld [hl], d                                    ; $6082: $72
    jr nz, @+$63                                  ; $6083: $20 $61

    ld [hl], b                                    ; $6085: $70

jr_01b_6086:
    ld [hl], b                                    ; $6086: $70
    ld [hl], d                                    ; $6087: $72
    ld l, a                                       ; $6088: $6f
    ld h, c                                       ; $6089: $61
    ld h, e                                       ; $608a: $63
    ld l, b                                       ; $608b: $68
    ld bc, $6f64                                  ; $608c: $01 $64 $6f
    ld h, l                                       ; $608f: $65
    ld [hl], e                                    ; $6090: $73
    ld l, [hl]                                    ; $6091: $6e
    daa                                           ; $6092: $27
    ld [hl], h                                    ; $6093: $74

jr_01b_6094:
    jr nz, @+$67                                  ; $6094: $20 $65

    halt                                          ; $6096: $76
    ld h, l                                       ; $6097: $65
    ld l, [hl]                                    ; $6098: $6e
    ld bc, $6f63                                  ; $6099: $01 $63 $6f
    ld l, l                                       ; $609c: $6d

jr_01b_609d:
    ld [hl], b                                    ; $609d: $70
    ld h, c                                       ; $609e: $61
    ld [hl], d                                    ; $609f: $72
    ld h, l                                       ; $60a0: $65
    jr nz, @+$76                                  ; $60a1: $20 $74

    ld l, a                                       ; $60a3: $6f
    jr nz, jr_01b_6113                            ; $60a4: $20 $6d

    ld l, c                                       ; $60a6: $69
    ld l, [hl]                                    ; $60a7: $6e
    ld h, l                                       ; $60a8: $65
    ld l, $03                                     ; $60a9: $2e $03
    nop                                           ; $60ab: $00
    ld c, c                                       ; $60ac: $49

jr_01b_60ad:
    jr nz, jr_01b_6126                            ; $60ad: $20 $77

    ld l, a                                       ; $60af: $6f
    ld l, [hl]                                    ; $60b0: $6e
    ld hl, $0720                                  ; $60b1: $21 $20 $07
    inc l                                         ; $60b4: $2c
    ld bc, $6f79                                  ; $60b5: $01 $79 $6f
    ld [hl], l                                    ; $60b8: $75
    jr nz, jr_01b_612e                            ; $60b9: $20 $73

    ld l, b                                       ; $60bb: $68
    ld l, a                                       ; $60bc: $6f
    ld [hl], l                                    ; $60bd: $75
    ld l, h                                       ; $60be: $6c
    ld h, h                                       ; $60bf: $64
    jr nz, jr_01b_6132                            ; $60c0: $20 $70

    ld [hl], d                                    ; $60c2: $72
    ld h, c                                       ; $60c3: $61
    ld h, e                                       ; $60c4: $63

jr_01b_60c5:
    ld [hl], h                                    ; $60c5: $74
    ld l, c                                       ; $60c6: $69
    ld h, e                                       ; $60c7: $63
    ld h, l                                       ; $60c8: $65
    ld hl, $0003                                  ; $60c9: $21 $03 $00
    ld d, e                                       ; $60cc: $53
    ld h, c                                       ; $60cd: $61
    ld a, c                                       ; $60ce: $79
    jr nz, @+$6a                                  ; $60cf: $20 $68

    ld l, c                                       ; $60d1: $69
    jr nz, @+$76                                  ; $60d2: $20 $74

    ld l, a                                       ; $60d4: $6f
    jr nz, jr_01b_6127                            ; $60d5: $20 $50

    ld h, l                                       ; $60d7: $65
    ld h, c                                       ; $60d8: $61
    ld h, e                                       ; $60d9: $63
    ld l, b                                       ; $60da: $68
    ld bc, $6f66                                  ; $60db: $01 $66 $6f
    ld [hl], d                                    ; $60de: $72
    jr nz, @+$6f                                  ; $60df: $20 $6d

    ld h, l                                       ; $60e1: $65
    jr nz, jr_01b_614d                            ; $60e2: $20 $69

    ld h, [hl]                                    ; $60e4: $66
    jr nz, jr_01b_6160                            ; $60e5: $20 $79

    ld l, a                                       ; $60e7: $6f
    ld [hl], l                                    ; $60e8: $75
    jr nz, jr_01b_6152                            ; $60e9: $20 $67

    ld l, a                                       ; $60eb: $6f
    ld bc, $6f74                                  ; $60ec: $01 $74 $6f
    jr nz, jr_01b_6165                            ; $60ef: $20 $74

jr_01b_60f1:
    ld l, b                                       ; $60f1: $68
    ld h, l                                       ; $60f2: $65
    jr nz, jr_01b_6158                            ; $60f3: $20 $63

    ld h, c                                       ; $60f5: $61
    ld [hl], e                                    ; $60f6: $73
    ld [hl], h                                    ; $60f7: $74
    ld l, h                                       ; $60f8: $6c
    ld h, l                                       ; $60f9: $65
    ld l, $03                                     ; $60fa: $2e $03
    nop                                           ; $60fc: $00
    ld d, a                                       ; $60fd: $57
    ld l, c                                       ; $60fe: $69
    ld [hl], h                                    ; $60ff: $74
    ld l, b                                       ; $6100: $68
    jr nz, @+$7b                                  ; $6101: $20 $79

    ld l, a                                       ; $6103: $6f
    ld [hl], l                                    ; $6104: $75
    ld [hl], d                                    ; $6105: $72
    jr nz, jr_01b_617b                            ; $6106: $20 $73

    ld l, e                                       ; $6108: $6b
    ld l, c                                       ; $6109: $69
    ld l, h                                       ; $610a: $6c
    ld l, h                                       ; $610b: $6c
    ld [hl], e                                    ; $610c: $73
    inc l                                         ; $610d: $2c
    ld bc, $2049                                  ; $610e: $01 $49 $20
    ld h, e                                       ; $6111: $63
    ld l, a                                       ; $6112: $6f

jr_01b_6113:
    ld [hl], l                                    ; $6113: $75
    ld l, h                                       ; $6114: $6c
    ld h, h                                       ; $6115: $64
    jr nz, jr_01b_617a                            ; $6116: $20 $62

    ld h, l                                       ; $6118: $65
    ld bc, $7247                                  ; $6119: $01 $47 $72
    ld h, c                                       ; $611c: $61
    ld l, [hl]                                    ; $611d: $6e
    ld h, h                                       ; $611e: $64
    jr nz, jr_01b_6164                            ; $611f: $20 $43

    ld l, b                                       ; $6121: $68
    ld h, c                                       ; $6122: $61
    ld l, l                                       ; $6123: $6d
    ld [hl], b                                    ; $6124: $70
    ld l, c                                       ; $6125: $69

jr_01b_6126:
    ld l, a                                       ; $6126: $6f

jr_01b_6127:
    ld l, [hl]                                    ; $6127: $6e
    ld hl, $0003                                  ; $6128: $21 $03 $00
    ld c, c                                       ; $612b: $49
    jr nz, jr_01b_61a3                            ; $612c: $20 $75

jr_01b_612e:
    ld [hl], e                                    ; $612e: $73
    ld h, l                                       ; $612f: $65
    jr nz, jr_01b_61a4                            ; $6130: $20 $72

jr_01b_6132:
    ld [hl], l                                    ; $6132: $75
    ld l, [hl]                                    ; $6133: $6e
    ld l, [hl]                                    ; $6134: $6e
    ld l, c                                       ; $6135: $69
    ld l, [hl]                                    ; $6136: $6e
    ld h, a                                       ; $6137: $67
    jr nz, jr_01b_61a3                            ; $6138: $20 $69

    ld l, [hl]                                    ; $613a: $6e
    jr nz, jr_01b_61aa                            ; $613b: $20 $6d

    ld a, c                                       ; $613d: $79
    ld bc, $7061                                  ; $613e: $01 $61 $70
    ld [hl], b                                    ; $6141: $70
    ld [hl], d                                    ; $6142: $72
    ld l, a                                       ; $6143: $6f
    ld h, c                                       ; $6144: $61
    ld h, e                                       ; $6145: $63
    ld l, b                                       ; $6146: $68
    ld l, $20                                     ; $6147: $2e $20
    ld d, a                                       ; $6149: $57
    ld h, c                                       ; $614a: $61
    ld l, [hl]                                    ; $614b: $6e
    ld [hl], h                                    ; $614c: $74

jr_01b_614d:
    jr nz, jr_01b_61bc                            ; $614d: $20 $6d

    ld h, l                                       ; $614f: $65
    jr nz, jr_01b_61c6                            ; $6150: $20 $74

jr_01b_6152:
    ld l, a                                       ; $6152: $6f
    ld bc, $6574                                  ; $6153: $01 $74 $65
    ld h, c                                       ; $6156: $61
    ld h, e                                       ; $6157: $63

jr_01b_6158:
    ld l, b                                       ; $6158: $68
    jr nz, jr_01b_61d4                            ; $6159: $20 $79

    ld l, a                                       ; $615b: $6f
    ld [hl], l                                    ; $615c: $75
    ccf                                           ; $615d: $3f
    nop                                           ; $615e: $00
    ld d, h                                       ; $615f: $54

jr_01b_6160:
    ld l, b                                       ; $6160: $68
    ld h, l                                       ; $6161: $65
    jr nz, @+$6e                                  ; $6162: $20 $6c

jr_01b_6164:
    ld l, a                                       ; $6164: $6f

jr_01b_6165:
    ld [hl], a                                    ; $6165: $77
    ld h, l                                       ; $6166: $65
    ld [hl], d                                    ; $6167: $72
    jr nz, jr_01b_61de                            ; $6168: $20 $74

    ld l, b                                       ; $616a: $68
    ld h, l                                       ; $616b: $65
    jr nz, jr_01b_61d1                            ; $616c: $20 $63

    ld l, h                                       ; $616e: $6c
    ld [hl], l                                    ; $616f: $75
    ld h, d                                       ; $6170: $62
    inc l                                         ; $6171: $2c
    ld bc, $6874                                  ; $6172: $01 $74 $68
    ld h, l                                       ; $6175: $65
    jr nz, jr_01b_61e5                            ; $6176: $20 $6d

    ld l, a                                       ; $6178: $6f
    ld [hl], d                                    ; $6179: $72

jr_01b_617a:
    ld h, l                                       ; $617a: $65

jr_01b_617b:
    jr nz, jr_01b_61f1                            ; $617b: $20 $74

    ld l, b                                       ; $617d: $68
    ld h, l                                       ; $617e: $65
    jr nz, jr_01b_61e3                            ; $617f: $20 $62

    ld h, c                                       ; $6181: $61
    ld l, h                                       ; $6182: $6c
    ld l, h                                       ; $6183: $6c
    ld bc, $6f72                                  ; $6184: $01 $72 $6f
    ld l, h                                       ; $6187: $6c
    ld l, h                                       ; $6188: $6c
    ld [hl], e                                    ; $6189: $73
    ld l, $02                                     ; $618a: $2e $02
    ld d, a                                       ; $618c: $57
    ld l, b                                       ; $618d: $68
    ld h, l                                       ; $618e: $65
    ld l, [hl]                                    ; $618f: $6e
    jr nz, jr_01b_61f5                            ; $6190: $20 $63

    ld l, b                                       ; $6192: $68
    ld l, a                                       ; $6193: $6f
    ld l, a                                       ; $6194: $6f
    ld [hl], e                                    ; $6195: $73
    ld l, c                                       ; $6196: $69
    ld l, [hl]                                    ; $6197: $6e
    ld h, a                                       ; $6198: $67
    jr nz, jr_01b_61fc                            ; $6199: $20 $61

    ld bc, $6c63                                  ; $619b: $01 $63 $6c
    ld [hl], l                                    ; $619e: $75
    ld h, d                                       ; $619f: $62
    inc l                                         ; $61a0: $2c
    jr nz, jr_01b_6206                            ; $61a1: $20 $63

jr_01b_61a3:
    ld l, a                                       ; $61a3: $6f

jr_01b_61a4:
    ld l, [hl]                                    ; $61a4: $6e
    ld [hl], e                                    ; $61a5: $73
    ld l, c                                       ; $61a6: $69
    ld h, h                                       ; $61a7: $64
    ld h, l                                       ; $61a8: $65
    ld [hl], d                                    ; $61a9: $72

jr_01b_61aa:
    jr nz, @+$74                                  ; $61aa: $20 $72

    ld [hl], l                                    ; $61ac: $75
    ld l, [hl]                                    ; $61ad: $6e
    ld bc, $7266                                  ; $61ae: $01 $66 $72
    ld l, a                                       ; $61b1: $6f
    ld l, l                                       ; $61b2: $6d
    jr nz, jr_01b_6229                            ; $61b3: $20 $74

    ld l, b                                       ; $61b5: $68
    ld h, l                                       ; $61b6: $65
    jr nz, jr_01b_6220                            ; $61b7: $20 $67

    ld [hl], d                                    ; $61b9: $72
    ld h, l                                       ; $61ba: $65
    ld h, l                                       ; $61bb: $65

jr_01b_61bc:
    ld l, [hl]                                    ; $61bc: $6e
    jr nz, jr_01b_6224                            ; $61bd: $20 $65

    ld h, h                                       ; $61bf: $64
    ld h, a                                       ; $61c0: $67
    ld h, l                                       ; $61c1: $65
    ld l, $03                                     ; $61c2: $2e $03
    nop                                           ; $61c4: $00
    ld d, d                                       ; $61c5: $52

jr_01b_61c6:
    ld [hl], l                                    ; $61c6: $75
    ld l, [hl]                                    ; $61c7: $6e
    ld l, [hl]                                    ; $61c8: $6e
    ld l, c                                       ; $61c9: $69
    ld l, [hl]                                    ; $61ca: $6e
    ld h, a                                       ; $61cb: $67
    jr nz, jr_01b_6237                            ; $61cc: $20 $69

    ld [hl], e                                    ; $61ce: $73
    jr nz, jr_01b_6236                            ; $61cf: $20 $65

jr_01b_61d1:
    ld h, c                                       ; $61d1: $61
    ld [hl], e                                    ; $61d2: $73
    ld l, c                                       ; $61d3: $69

jr_01b_61d4:
    ld h, l                                       ; $61d4: $65
    ld [hl], d                                    ; $61d5: $72
    ld bc, $6877                                  ; $61d6: $01 $77 $68
    ld h, l                                       ; $61d9: $65
    ld l, [hl]                                    ; $61da: $6e
    jr nz, jr_01b_6251                            ; $61db: $20 $74

    ld l, b                                       ; $61dd: $68

jr_01b_61de:
    ld h, l                                       ; $61de: $65
    ld [hl], d                                    ; $61df: $72
    ld h, l                                       ; $61e0: $65
    jr nz, jr_01b_6244                            ; $61e1: $20 $61

jr_01b_61e3:
    ld [hl], d                                    ; $61e3: $72
    ld h, l                                       ; $61e4: $65

jr_01b_61e5:
    jr nz, jr_01b_6255                            ; $61e5: $20 $6e

    ld l, a                                       ; $61e7: $6f
    ld bc, $626f                                  ; $61e8: $01 $6f $62
    ld [hl], e                                    ; $61eb: $73
    ld [hl], h                                    ; $61ec: $74
    ld h, c                                       ; $61ed: $61
    ld h, e                                       ; $61ee: $63
    ld l, h                                       ; $61ef: $6c
    ld h, l                                       ; $61f0: $65

jr_01b_61f1:
    ld [hl], e                                    ; $61f1: $73
    jr nz, jr_01b_626b                            ; $61f2: $20 $77

    ld l, c                                       ; $61f4: $69

jr_01b_61f5:
    ld [hl], h                                    ; $61f5: $74
    ld l, b                                       ; $61f6: $68
    ld l, c                                       ; $61f7: $69
    ld l, [hl]                                    ; $61f8: $6e
    ld [bc], a                                    ; $61f9: $02
    ld [hl], $30                                  ; $61fa: $36 $30

jr_01b_61fc:
    ld e, c                                       ; $61fc: $59
    jr nz, jr_01b_626e                            ; $61fd: $20 $6f

    ld h, [hl]                                    ; $61ff: $66
    jr nz, @+$76                                  ; $6200: $20 $74

    ld l, b                                       ; $6202: $68
    ld h, l                                       ; $6203: $65
    jr nz, jr_01b_626d                            ; $6204: $20 $67

jr_01b_6206:
    ld [hl], d                                    ; $6206: $72
    ld h, l                                       ; $6207: $65
    ld h, l                                       ; $6208: $65
    ld l, [hl]                                    ; $6209: $6e
    ld l, $01                                     ; $620a: $2e $01
    ld d, l                                       ; $620c: $55
    ld [hl], e                                    ; $620d: $73
    ld h, l                                       ; $620e: $65
    jr nz, jr_01b_6272                            ; $620f: $20 $61

    jr nz, jr_01b_6246                            ; $6211: $20 $33

    ld c, c                                       ; $6213: $49
    jr nz, @+$76                                  ; $6214: $20 $74

    ld l, a                                       ; $6216: $6f
    jr nz, @+$3b                                  ; $6217: $20 $39

    ld c, c                                       ; $6219: $49
    jr nz, jr_01b_6290                            ; $621a: $20 $74

    ld l, a                                       ; $621c: $6f
    ld bc, $7061                                  ; $621d: $01 $61 $70

jr_01b_6220:
    ld [hl], b                                    ; $6220: $70
    ld [hl], d                                    ; $6221: $72
    ld l, a                                       ; $6222: $6f
    ld h, c                                       ; $6223: $61

jr_01b_6224:
    ld h, e                                       ; $6224: $63
    ld l, b                                       ; $6225: $68
    jr nz, @+$76                                  ; $6226: $20 $74

    ld l, b                                       ; $6228: $68

jr_01b_6229:
    ld h, l                                       ; $6229: $65
    jr nz, jr_01b_6293                            ; $622a: $20 $67

    ld [hl], d                                    ; $622c: $72
    ld h, l                                       ; $622d: $65
    ld h, l                                       ; $622e: $65
    ld l, [hl]                                    ; $622f: $6e
    ld hl, $0003                                  ; $6230: $21 $03 $00
    ld d, a                                       ; $6233: $57
    ld l, b                                       ; $6234: $68
    ld h, l                                       ; $6235: $65

jr_01b_6236:
    ld l, [hl]                                    ; $6236: $6e

jr_01b_6237:
    jr nz, jr_01b_629a                            ; $6237: $20 $61

    ld l, c                                       ; $6239: $69
    ld l, l                                       ; $623a: $6d
    ld l, c                                       ; $623b: $69
    ld l, [hl]                                    ; $623c: $6e
    ld h, a                                       ; $623d: $67
    jr nz, @+$68                                  ; $623e: $20 $66

    ld l, a                                       ; $6240: $6f
    ld [hl], d                                    ; $6241: $72
    jr nz, jr_01b_62b8                            ; $6242: $20 $74

jr_01b_6244:
    ld l, b                                       ; $6244: $68
    ld h, l                                       ; $6245: $65

jr_01b_6246:
    ld bc, $6970                                  ; $6246: $01 $70 $69
    ld l, [hl]                                    ; $6249: $6e
    jr nz, jr_01b_62b2                            ; $624a: $20 $66

    ld [hl], d                                    ; $624c: $72
    ld l, a                                       ; $624d: $6f
    ld l, l                                       ; $624e: $6d
    jr nz, jr_01b_62b2                            ; $624f: $20 $61

jr_01b_6251:
    jr nz, @+$65                                  ; $6251: $20 $63

    ld l, h                                       ; $6253: $6c
    ld h, l                                       ; $6254: $65

jr_01b_6255:
    ld h, c                                       ; $6255: $61
    ld [hl], d                                    ; $6256: $72
    ld bc, $7073                                  ; $6257: $01 $73 $70
    ld l, a                                       ; $625a: $6f
    ld [hl], h                                    ; $625b: $74
    inc l                                         ; $625c: $2c
    jr nz, jr_01b_62d4                            ; $625d: $20 $75

    ld [hl], e                                    ; $625f: $73
    ld h, l                                       ; $6260: $65
    jr nz, jr_01b_62d5                            ; $6261: $20 $72

    ld [hl], l                                    ; $6263: $75
    ld l, [hl]                                    ; $6264: $6e
    ld hl, $0003                                  ; $6265: $21 $03 $00
    ld b, [hl]                                    ; $6268: $46
    ld l, c                                       ; $6269: $69
    ld [hl], d                                    ; $626a: $72

jr_01b_626b:
    ld [hl], e                                    ; $626b: $73
    ld [hl], h                                    ; $626c: $74

jr_01b_626d:
    inc l                                         ; $626d: $2c

jr_01b_626e:
    jr nz, jr_01b_62d3                            ; $626e: $20 $63

    ld l, b                                       ; $6270: $68
    ld l, a                                       ; $6271: $6f

jr_01b_6272:
    ld l, a                                       ; $6272: $6f
    ld [hl], e                                    ; $6273: $73
    ld h, l                                       ; $6274: $65
    jr nz, jr_01b_62d8                            ; $6275: $20 $61

    ld l, [hl]                                    ; $6277: $6e
    ld bc, $7061                                  ; $6278: $01 $61 $70
    ld [hl], b                                    ; $627b: $70
    ld [hl], d                                    ; $627c: $72
    ld l, a                                       ; $627d: $6f
    ld h, c                                       ; $627e: $61
    ld h, e                                       ; $627f: $63
    ld l, b                                       ; $6280: $68
    inc l                                         ; $6281: $2c
    jr nz, jr_01b_6289                            ; $6282: $20 $05

    ld bc, $6874                                  ; $6284: $01 $74 $68
    ld h, l                                       ; $6287: $65
    ld l, [hl]                                    ; $6288: $6e

jr_01b_6289:
    jr nz, jr_01b_62ec                            ; $6289: $20 $61

    jr nz, jr_01b_62f0                            ; $628b: $20 $63

    ld l, h                                       ; $628d: $6c
    ld [hl], l                                    ; $628e: $75
    ld h, d                                       ; $628f: $62

jr_01b_6290:
    ld l, $03                                     ; $6290: $2e $03
    nop                                           ; $6292: $00

jr_01b_6293:
    ld d, l                                       ; $6293: $55
    ld [hl], e                                    ; $6294: $73
    ld h, l                                       ; $6295: $65
    jr nz, @+$63                                  ; $6296: $20 $61

    jr nz, jr_01b_62cf                            ; $6298: $20 $35

jr_01b_629a:
    ld c, c                                       ; $629a: $49
    jr nz, jr_01b_6311                            ; $629b: $20 $74

    ld l, a                                       ; $629d: $6f
    jr nz, jr_01b_6303                            ; $629e: $20 $63

    ld h, c                                       ; $62a0: $61
    ld [hl], d                                    ; $62a1: $72
    ld [hl], d                                    ; $62a2: $72
    ld a, c                                       ; $62a3: $79
    ld bc, $6874                                  ; $62a4: $01 $74 $68
    ld h, l                                       ; $62a7: $65
    jr nz, jr_01b_630c                            ; $62a8: $20 $62

    ld h, c                                       ; $62aa: $61
    ld l, h                                       ; $62ab: $6c
    ld l, h                                       ; $62ac: $6c
    jr nz, jr_01b_6323                            ; $62ad: $20 $74

    ld l, a                                       ; $62af: $6f
    jr nz, jr_01b_6326                            ; $62b0: $20 $74

jr_01b_62b2:
    ld l, b                                       ; $62b2: $68
    ld h, l                                       ; $62b3: $65
    ld bc, $7267                                  ; $62b4: $01 $67 $72
    ld h, l                                       ; $62b7: $65

jr_01b_62b8:
    ld h, l                                       ; $62b8: $65
    ld l, [hl]                                    ; $62b9: $6e
    jr nz, jr_01b_631d                            ; $62ba: $20 $61

    ld l, [hl]                                    ; $62bc: $6e
    ld h, h                                       ; $62bd: $64
    jr nz, jr_01b_6332                            ; $62be: $20 $72

    ld l, a                                       ; $62c0: $6f
    ld l, h                                       ; $62c1: $6c
    ld l, h                                       ; $62c2: $6c
    jr nz, jr_01b_632e                            ; $62c3: $20 $69

    ld [hl], h                                    ; $62c5: $74
    jr nz, jr_01b_6331                            ; $62c6: $20 $69

    ld l, [hl]                                    ; $62c8: $6e
    ld l, $03                                     ; $62c9: $2e $03
    nop                                           ; $62cb: $00
    ld d, e                                       ; $62cc: $53
    ld h, l                                       ; $62cd: $65
    ld h, l                                       ; $62ce: $65

jr_01b_62cf:
    ccf                                           ; $62cf: $3f
    jr nz, @+$4b                                  ; $62d0: $20 $49

    ld [hl], h                                    ; $62d2: $74

jr_01b_62d3:
    daa                                           ; $62d3: $27

jr_01b_62d4:
    ld [hl], e                                    ; $62d4: $73

jr_01b_62d5:
    jr nz, jr_01b_634a                            ; $62d5: $20 $73

    ld l, c                                       ; $62d7: $69

jr_01b_62d8:
    ld l, l                                       ; $62d8: $6d
    ld [hl], b                                    ; $62d9: $70
    ld l, h                                       ; $62da: $6c
    ld h, l                                       ; $62db: $65
    ld hl, $5701                                  ; $62dc: $21 $01 $57
    ld h, c                                       ; $62df: $61
    ld l, [hl]                                    ; $62e0: $6e
    ld [hl], h                                    ; $62e1: $74
    jr nz, jr_01b_6358                            ; $62e2: $20 $74

    ld l, a                                       ; $62e4: $6f
    jr nz, jr_01b_635b                            ; $62e5: $20 $74

    ld [hl], d                                    ; $62e7: $72
    ld a, c                                       ; $62e8: $79
    ccf                                           ; $62e9: $3f
    nop                                           ; $62ea: $00
    ld b, [hl]                                    ; $62eb: $46

jr_01b_62ec:
    ld l, c                                       ; $62ec: $69
    ld [hl], d                                    ; $62ed: $72
    ld [hl], e                                    ; $62ee: $73
    ld [hl], h                                    ; $62ef: $74

jr_01b_62f0:
    inc l                                         ; $62f0: $2c
    jr nz, @+$65                                  ; $62f1: $20 $63

    ld l, b                                       ; $62f3: $68
    ld l, a                                       ; $62f4: $6f
    ld l, a                                       ; $62f5: $6f
    ld [hl], e                                    ; $62f6: $73
    ld h, l                                       ; $62f7: $65
    ld bc, $6e61                                  ; $62f8: $01 $61 $6e
    jr nz, jr_01b_635e                            ; $62fb: $20 $61

    ld [hl], b                                    ; $62fd: $70
    ld [hl], b                                    ; $62fe: $70
    ld [hl], d                                    ; $62ff: $72
    ld l, a                                       ; $6300: $6f
    ld h, c                                       ; $6301: $61
    ld h, e                                       ; $6302: $63

jr_01b_6303:
    ld l, b                                       ; $6303: $68
    ld l, $03                                     ; $6304: $2e $03
    nop                                           ; $6306: $00
    ld c, [hl]                                    ; $6307: $4e
    ld h, l                                       ; $6308: $65
    ld a, b                                       ; $6309: $78
    ld [hl], h                                    ; $630a: $74
    inc l                                         ; $630b: $2c

jr_01b_630c:
    jr nz, @+$65                                  ; $630c: $20 $63

    ld l, b                                       ; $630e: $68
    ld l, a                                       ; $630f: $6f
    ld l, a                                       ; $6310: $6f

jr_01b_6311:
    ld [hl], e                                    ; $6311: $73
    ld h, l                                       ; $6312: $65
    ld bc, $2061                                  ; $6313: $01 $61 $20
    ld h, e                                       ; $6316: $63
    ld l, h                                       ; $6317: $6c
    ld [hl], l                                    ; $6318: $75
    ld h, d                                       ; $6319: $62
    ld l, $03                                     ; $631a: $2e $03
    nop                                           ; $631c: $00

jr_01b_631d:
    ld c, a                                       ; $631d: $4f
    ld c, e                                       ; $631e: $4b
    ld l, $20                                     ; $631f: $2e $20
    ld c, [hl]                                    ; $6321: $4e
    ld l, a                                       ; $6322: $6f

jr_01b_6323:
    ld [hl], a                                    ; $6323: $77
    jr nz, jr_01b_6399                            ; $6324: $20 $73

jr_01b_6326:
    ld l, b                                       ; $6326: $68
    ld l, a                                       ; $6327: $6f
    ld l, a                                       ; $6328: $6f
    ld [hl], h                                    ; $6329: $74
    ld hl, $0003                                  ; $632a: $21 $03 $00
    ld b, c                                       ; $632d: $41

jr_01b_632e:
    ld [hl], h                                    ; $632e: $74
    jr nz, @+$68                                  ; $632f: $20 $66

jr_01b_6331:
    ld l, c                                       ; $6331: $69

jr_01b_6332:
    ld [hl], d                                    ; $6332: $72
    ld [hl], e                                    ; $6333: $73
    ld [hl], h                                    ; $6334: $74
    jr nz, jr_01b_63a0                            ; $6335: $20 $69

    ld [hl], h                                    ; $6337: $74
    daa                                           ; $6338: $27
    ld [hl], e                                    ; $6339: $73
    ld bc, $6f74                                  ; $633a: $01 $74 $6f
    ld [hl], l                                    ; $633d: $75
    ld h, a                                       ; $633e: $67
    ld l, b                                       ; $633f: $68
    ld l, $20                                     ; $6340: $2e $20
    ld b, d                                       ; $6342: $42
    ld [hl], l                                    ; $6343: $75
    ld [hl], h                                    ; $6344: $74
    jr nz, jr_01b_63b0                            ; $6345: $20 $69

    ld [hl], h                                    ; $6347: $74
    daa                                           ; $6348: $27
    ld [hl], e                                    ; $6349: $73

jr_01b_634a:
    jr nz, jr_01b_63c1                            ; $634a: $20 $75

    ld [hl], e                                    ; $634c: $73
    ld h, l                                       ; $634d: $65
    ld h, [hl]                                    ; $634e: $66
    ld [hl], l                                    ; $634f: $75
    ld l, h                                       ; $6350: $6c
    inc l                                         ; $6351: $2c
    ld bc, $6f73                                  ; $6352: $01 $73 $6f
    jr nz, jr_01b_63c7                            ; $6355: $20 $70

    ld [hl], d                                    ; $6357: $72

jr_01b_6358:
    ld h, c                                       ; $6358: $61
    ld h, e                                       ; $6359: $63
    ld [hl], h                                    ; $635a: $74

jr_01b_635b:
    ld l, c                                       ; $635b: $69
    ld h, e                                       ; $635c: $63
    ld h, l                                       ; $635d: $65

jr_01b_635e:
    jr nz, jr_01b_63c8                            ; $635e: $20 $68

    ld h, c                                       ; $6360: $61
    ld [hl], d                                    ; $6361: $72
    ld h, h                                       ; $6362: $64
    ld hl, $0003                                  ; $6363: $21 $03 $00
    ld e, c                                       ; $6366: $59
    ld l, a                                       ; $6367: $6f
    ld [hl], l                                    ; $6368: $75
    daa                                           ; $6369: $27
    halt                                          ; $636a: $76
    ld h, l                                       ; $636b: $65
    jr nz, jr_01b_63d5                            ; $636c: $20 $67

    ld l, a                                       ; $636e: $6f
    ld [hl], h                                    ; $636f: $74
    jr nz, jr_01b_63e6                            ; $6370: $20 $74

    ld l, b                                       ; $6372: $68
    ld h, l                                       ; $6373: $65
    ld bc, $6469                                  ; $6374: $01 $69 $64
    ld h, l                                       ; $6377: $65
    ld h, c                                       ; $6378: $61
    ld l, $20                                     ; $6379: $2e $20
    ld d, h                                       ; $637b: $54
    ld [hl], d                                    ; $637c: $72
    ld a, c                                       ; $637d: $79
    jr nz, jr_01b_63f0                            ; $637e: $20 $70

    ld [hl], l                                    ; $6380: $75
    ld [hl], h                                    ; $6381: $74
    ld [hl], h                                    ; $6382: $74
    ld l, c                                       ; $6383: $69
    ld l, [hl]                                    ; $6384: $6e
    ld h, a                                       ; $6385: $67
    ld bc, $7073                                  ; $6386: $01 $73 $70
    ld l, c                                       ; $6389: $69
    ld l, [hl]                                    ; $638a: $6e
    jr nz, jr_01b_63fc                            ; $638b: $20 $6f

    ld l, [hl]                                    ; $638d: $6e
    jr nz, jr_01b_63f9                            ; $638e: $20 $69

    ld [hl], h                                    ; $6390: $74
    inc l                                         ; $6391: $2c
    jr nz, @+$76                                  ; $6392: $20 $74

    ld l, a                                       ; $6394: $6f
    ld l, a                                       ; $6395: $6f
    ld l, $03                                     ; $6396: $2e $03
    nop                                           ; $6398: $00

jr_01b_6399:
    ld d, h                                       ; $6399: $54
    ld l, a                                       ; $639a: $6f
    jr nz, jr_01b_640d                            ; $639b: $20 $70

    ld [hl], d                                    ; $639d: $72
    ld h, c                                       ; $639e: $61
    ld h, e                                       ; $639f: $63

jr_01b_63a0:
    ld [hl], h                                    ; $63a0: $74
    ld l, c                                       ; $63a1: $69
    ld h, e                                       ; $63a2: $63
    ld h, l                                       ; $63a3: $65
    jr nz, jr_01b_6415                            ; $63a4: $20 $6f

    ld l, [hl]                                    ; $63a6: $6e
    ld bc, $6f79                                  ; $63a7: $01 $79 $6f
    ld [hl], l                                    ; $63aa: $75
    ld [hl], d                                    ; $63ab: $72
    jr nz, jr_01b_641d                            ; $63ac: $20 $6f

    ld [hl], a                                    ; $63ae: $77
    ld l, [hl]                                    ; $63af: $6e

jr_01b_63b0:
    inc l                                         ; $63b0: $2c
    jr nz, jr_01b_641d                            ; $63b1: $20 $6a

    ld [hl], l                                    ; $63b3: $75
    ld [hl], e                                    ; $63b4: $73
    ld [hl], h                                    ; $63b5: $74
    ld bc, $6970                                  ; $63b6: $01 $70 $69
    ld h, e                                       ; $63b9: $63
    ld l, e                                       ; $63ba: $6b
    jr nz, jr_01b_641e                            ; $63bb: $20 $61

    jr nz, @+$75                                  ; $63bd: $20 $73

    ld [hl], b                                    ; $63bf: $70
    ld l, a                                       ; $63c0: $6f

jr_01b_63c1:
    ld [hl], h                                    ; $63c1: $74
    ld l, $03                                     ; $63c2: $2e $03
    nop                                           ; $63c4: $00
    ld d, a                                       ; $63c5: $57
    ld l, b                                       ; $63c6: $68

jr_01b_63c7:
    ld h, c                                       ; $63c7: $61

jr_01b_63c8:
    ld [hl], h                                    ; $63c8: $74
    jr nz, jr_01b_642f                            ; $63c9: $20 $64

    ld l, a                                       ; $63cb: $6f
    jr nz, jr_01b_6447                            ; $63cc: $20 $79

    ld l, a                                       ; $63ce: $6f
    ld [hl], l                                    ; $63cf: $75
    jr nz, jr_01b_643d                            ; $63d0: $20 $6b

    ld l, [hl]                                    ; $63d2: $6e
    ld l, a                                       ; $63d3: $6f
    ld [hl], a                                    ; $63d4: $77

jr_01b_63d5:
    ld hl, $213f                                  ; $63d5: $21 $3f $21
    ld bc, $7355                                  ; $63d8: $01 $55 $73
    ld l, c                                       ; $63db: $69
    ld l, [hl]                                    ; $63dc: $6e
    ld h, a                                       ; $63dd: $67
    jr nz, jr_01b_6441                            ; $63de: $20 $61

    jr nz, jr_01b_6452                            ; $63e0: $20 $70

    ld [hl], l                                    ; $63e2: $75
    ld [hl], h                                    ; $63e3: $74
    ld [hl], h                                    ; $63e4: $74
    ld h, l                                       ; $63e5: $65

jr_01b_63e6:
    ld [hl], d                                    ; $63e6: $72
    jr nz, jr_01b_645d                            ; $63e7: $20 $74

    ld l, a                                       ; $63e9: $6f
    ld bc, $7061                                  ; $63ea: $01 $61 $70
    ld [hl], b                                    ; $63ed: $70
    ld [hl], d                                    ; $63ee: $72
    ld l, a                                       ; $63ef: $6f

jr_01b_63f0:
    ld h, c                                       ; $63f0: $61
    ld h, e                                       ; $63f1: $63
    ld l, b                                       ; $63f2: $68
    ld hl, $0003                                  ; $63f3: $21 $03 $00
    ld c, c                                       ; $63f6: $49
    daa                                           ; $63f7: $27
    ld l, l                                       ; $63f8: $6d

jr_01b_63f9:
    jr nz, jr_01b_6470                            ; $63f9: $20 $75

    ld [hl], e                                    ; $63fb: $73

jr_01b_63fc:
    ld l, c                                       ; $63fc: $69
    ld l, [hl]                                    ; $63fd: $6e
    ld h, a                                       ; $63fe: $67
    jr nz, jr_01b_6462                            ; $63ff: $20 $61

    jr nz, jr_01b_6466                            ; $6401: $20 $63

    ld l, b                                       ; $6403: $68
    ld l, c                                       ; $6404: $69
    ld [hl], b                                    ; $6405: $70
    ld bc, $7061                                  ; $6406: $01 $61 $70
    ld [hl], b                                    ; $6409: $70
    ld [hl], d                                    ; $640a: $72
    ld l, a                                       ; $640b: $6f
    ld h, c                                       ; $640c: $61

jr_01b_640d:
    ld h, e                                       ; $640d: $63
    ld l, b                                       ; $640e: $68
    ld l, $20                                     ; $640f: $2e $20
    ld d, a                                       ; $6411: $57
    ld h, c                                       ; $6412: $61
    ld l, [hl]                                    ; $6413: $6e
    ld [hl], h                                    ; $6414: $74

jr_01b_6415:
    jr nz, jr_01b_648b                            ; $6415: $20 $74

    ld l, a                                       ; $6417: $6f
    ld bc, $656c                                  ; $6418: $01 $6c $65
    ld h, c                                       ; $641b: $61
    ld [hl], d                                    ; $641c: $72

jr_01b_641d:
    ld l, [hl]                                    ; $641d: $6e

jr_01b_641e:
    jr nz, jr_01b_6489                            ; $641e: $20 $69

    ld [hl], h                                    ; $6420: $74
    ccf                                           ; $6421: $3f
    nop                                           ; $6422: $00
    ld b, e                                       ; $6423: $43
    ld l, b                                       ; $6424: $68
    ld l, c                                       ; $6425: $69
    ld [hl], b                                    ; $6426: $70
    jr nz, jr_01b_649c                            ; $6427: $20 $73

    ld l, b                                       ; $6429: $68
    ld l, a                                       ; $642a: $6f
    ld [hl], h                                    ; $642b: $74
    ld [hl], e                                    ; $642c: $73
    jr nz, jr_01b_64a4                            ; $642d: $20 $75

jr_01b_642f:
    ld [hl], e                                    ; $642f: $73
    ld h, l                                       ; $6430: $65
    ld bc, $6163                                  ; $6431: $01 $63 $61
    ld [hl], d                                    ; $6434: $72
    ld [hl], d                                    ; $6435: $72
    ld a, c                                       ; $6436: $79
    jr nz, @+$63                                  ; $6437: $20 $61

    ld l, [hl]                                    ; $6439: $6e
    ld h, h                                       ; $643a: $64
    jr nz, jr_01b_64af                            ; $643b: $20 $72

jr_01b_643d:
    ld [hl], l                                    ; $643d: $75
    ld l, [hl]                                    ; $643e: $6e
    jr nz, jr_01b_64b5                            ; $643f: $20 $74

jr_01b_6441:
    ld l, a                                       ; $6441: $6f
    ld bc, $7061                                  ; $6442: $01 $61 $70
    ld [hl], b                                    ; $6445: $70
    ld [hl], d                                    ; $6446: $72

jr_01b_6447:
    ld l, a                                       ; $6447: $6f
    ld h, c                                       ; $6448: $61
    ld h, e                                       ; $6449: $63
    ld l, b                                       ; $644a: $68
    ld l, $02                                     ; $644b: $2e $02
    ld d, h                                       ; $644d: $54
    ld l, b                                       ; $644e: $68
    ld h, l                                       ; $644f: $65
    jr nz, jr_01b_64c6                            ; $6450: $20 $74

jr_01b_6452:
    ld l, b                                       ; $6452: $68
    ld h, l                                       ; $6453: $65
    ld l, a                                       ; $6454: $6f
    ld [hl], d                                    ; $6455: $72
    ld a, c                                       ; $6456: $79
    jr nz, @+$6b                                  ; $6457: $20 $69

    ld [hl], e                                    ; $6459: $73
    jr nz, jr_01b_64d0                            ; $645a: $20 $74

    ld l, a                                       ; $645c: $6f

jr_01b_645d:
    ld bc, $7461                                  ; $645d: $01 $61 $74
    ld [hl], h                                    ; $6460: $74
    ld h, c                                       ; $6461: $61

jr_01b_6462:
    ld h, e                                       ; $6462: $63
    ld l, e                                       ; $6463: $6b
    jr nz, @+$77                                  ; $6464: $20 $75

jr_01b_6466:
    ld [hl], e                                    ; $6466: $73
    ld l, c                                       ; $6467: $69
    ld l, [hl]                                    ; $6468: $6e
    ld h, a                                       ; $6469: $67
    jr nz, jr_01b_64cf                            ; $646a: $20 $63

    ld h, c                                       ; $646c: $61
    ld [hl], d                                    ; $646d: $72
    ld [hl], d                                    ; $646e: $72
    ld a, c                                       ; $646f: $79

jr_01b_6470:
    ld bc, $6e61                                  ; $6470: $01 $61 $6e
    ld h, h                                       ; $6473: $64
    jr nz, jr_01b_64e8                            ; $6474: $20 $72

    ld [hl], l                                    ; $6476: $75
    ld l, [hl]                                    ; $6477: $6e
    ld l, $03                                     ; $6478: $2e $03
    nop                                           ; $647a: $00
    ld c, c                                       ; $647b: $49
    ld h, [hl]                                    ; $647c: $66
    jr nz, jr_01b_64ee                            ; $647d: $20 $6f

    ld h, d                                       ; $647f: $62
    ld [hl], e                                    ; $6480: $73
    ld [hl], h                                    ; $6481: $74
    ld h, c                                       ; $6482: $61
    ld h, e                                       ; $6483: $63
    ld l, h                                       ; $6484: $6c
    ld h, l                                       ; $6485: $65
    ld [hl], e                                    ; $6486: $73
    jr nz, @+$63                                  ; $6487: $20 $61

jr_01b_6489:
    ld [hl], d                                    ; $6489: $72
    ld h, l                                       ; $648a: $65

jr_01b_648b:
    ld bc, $6977                                  ; $648b: $01 $77 $69
    ld [hl], h                                    ; $648e: $74
    ld l, b                                       ; $648f: $68
    ld l, c                                       ; $6490: $69
    ld l, [hl]                                    ; $6491: $6e
    jr nz, @+$38                                  ; $6492: $20 $36

    jr nc, jr_01b_64ef                            ; $6494: $30 $59

    jr nz, @+$71                                  ; $6496: $20 $6f

    ld h, [hl]                                    ; $6498: $66
    jr nz, jr_01b_650f                            ; $6499: $20 $74

    ld l, b                                       ; $649b: $68

jr_01b_649c:
    ld h, l                                       ; $649c: $65
    ld bc, $7267                                  ; $649d: $01 $67 $72
    ld h, l                                       ; $64a0: $65
    ld h, l                                       ; $64a1: $65
    ld l, [hl]                                    ; $64a2: $6e
    inc l                                         ; $64a3: $2c

jr_01b_64a4:
    jr nz, jr_01b_651f                            ; $64a4: $20 $79

    ld l, a                                       ; $64a6: $6f
    ld [hl], l                                    ; $64a7: $75
    jr nz, jr_01b_650d                            ; $64a8: $20 $63

    ld h, c                                       ; $64aa: $61
    ld l, [hl]                                    ; $64ab: $6e
    daa                                           ; $64ac: $27
    ld [hl], h                                    ; $64ad: $74
    ld [bc], a                                    ; $64ae: $02

jr_01b_64af:
    ld [hl], d                                    ; $64af: $72
    ld l, a                                       ; $64b0: $6f
    ld l, h                                       ; $64b1: $6c
    ld l, h                                       ; $64b2: $6c
    jr nz, jr_01b_6524                            ; $64b3: $20 $6f

jr_01b_64b5:
    ld l, [hl]                                    ; $64b5: $6e
    ld l, $20                                     ; $64b6: $2e $20
    ld c, c                                       ; $64b8: $49
    ld l, [hl]                                    ; $64b9: $6e
    ld [hl], e                                    ; $64ba: $73
    ld [hl], h                                    ; $64bb: $74
    ld h, l                                       ; $64bc: $65
    ld h, c                                       ; $64bd: $61
    ld h, h                                       ; $64be: $64
    inc l                                         ; $64bf: $2c
    ld bc, $6163                                  ; $64c0: $01 $63 $61
    ld [hl], d                                    ; $64c3: $72
    ld [hl], d                                    ; $64c4: $72
    ld a, c                                       ; $64c5: $79

jr_01b_64c6:
    jr nz, @+$6b                                  ; $64c6: $20 $69

    ld [hl], h                                    ; $64c8: $74
    jr nz, jr_01b_653f                            ; $64c9: $20 $74

    ld l, a                                       ; $64cb: $6f
    jr nz, @+$76                                  ; $64cc: $20 $74

    ld l, b                                       ; $64ce: $68

jr_01b_64cf:
    ld h, l                                       ; $64cf: $65

jr_01b_64d0:
    ld bc, $7267                                  ; $64d0: $01 $67 $72
    ld h, l                                       ; $64d3: $65
    ld h, l                                       ; $64d4: $65
    ld l, [hl]                                    ; $64d5: $6e
    jr nz, @+$63                                  ; $64d6: $20 $61

    ld l, [hl]                                    ; $64d8: $6e
    ld h, h                                       ; $64d9: $64
    jr nz, jr_01b_6550                            ; $64da: $20 $74

    ld l, b                                       ; $64dc: $68
    ld h, l                                       ; $64dd: $65
    ld l, [hl]                                    ; $64de: $6e
    jr nz, @+$74                                  ; $64df: $20 $72

    ld l, a                                       ; $64e1: $6f
    ld l, h                                       ; $64e2: $6c
    ld l, h                                       ; $64e3: $6c
    ld l, $03                                     ; $64e4: $2e $03
    nop                                           ; $64e6: $00
    ld c, c                                       ; $64e7: $49

jr_01b_64e8:
    ld l, [hl]                                    ; $64e8: $6e
    jr nz, @+$76                                  ; $64e9: $20 $74

    ld l, b                                       ; $64eb: $68
    ld h, l                                       ; $64ec: $65
    ld [hl], e                                    ; $64ed: $73

jr_01b_64ee:
    ld h, l                                       ; $64ee: $65

jr_01b_64ef:
    jr nz, jr_01b_6554                            ; $64ef: $20 $63

    ld l, a                                       ; $64f1: $6f
    ld l, [hl]                                    ; $64f2: $6e
    ld h, h                                       ; $64f3: $64
    ld l, c                                       ; $64f4: $69
    ld [hl], h                                    ; $64f5: $74
    ld l, c                                       ; $64f6: $69
    ld l, a                                       ; $64f7: $6f
    ld l, [hl]                                    ; $64f8: $6e
    ld [hl], e                                    ; $64f9: $73
    inc l                                         ; $64fa: $2c
    ld bc, $7375                                  ; $64fb: $01 $75 $73
    ld h, l                                       ; $64fe: $65
    jr nz, @+$63                                  ; $64ff: $20 $61

    jr nz, @+$65                                  ; $6501: $20 $63

    ld l, b                                       ; $6503: $68
    ld l, c                                       ; $6504: $69
    ld [hl], b                                    ; $6505: $70
    jr nz, jr_01b_657b                            ; $6506: $20 $73

    ld l, b                                       ; $6508: $68
    ld l, a                                       ; $6509: $6f
    ld [hl], h                                    ; $650a: $74
    ld l, $02                                     ; $650b: $2e $02

jr_01b_650d:
    ld e, c                                       ; $650d: $59
    ld l, a                                       ; $650e: $6f

jr_01b_650f:
    ld [hl], l                                    ; $650f: $75
    jr nz, jr_01b_6580                            ; $6510: $20 $6e

    ld h, l                                       ; $6512: $65
    ld h, l                                       ; $6513: $65
    ld h, h                                       ; $6514: $64
    jr nz, jr_01b_6578                            ; $6515: $20 $61

    jr nz, @+$34                                  ; $6517: $20 $32

    jr nc, jr_01b_6574                            ; $6519: $30 $59

    ld bc, $6163                                  ; $651b: $01 $63 $61
    ld [hl], d                                    ; $651e: $72

jr_01b_651f:
    ld [hl], d                                    ; $651f: $72
    ld a, c                                       ; $6520: $79
    jr nz, jr_01b_6597                            ; $6521: $20 $74

    ld l, a                                       ; $6523: $6f

jr_01b_6524:
    jr nz, jr_01b_658d                            ; $6524: $20 $67

    ld h, l                                       ; $6526: $65
    ld [hl], h                                    ; $6527: $74
    jr nz, jr_01b_655b                            ; $6528: $20 $31

    jr nz, @+$72                                  ; $652a: $20 $70

    ld [hl], l                                    ; $652c: $75
    ld [hl], h                                    ; $652d: $74
    ld [hl], h                                    ; $652e: $74
    ld bc, $7761                                  ; $652f: $01 $61 $77
    ld h, c                                       ; $6532: $61
    ld a, c                                       ; $6533: $79
    jr nz, jr_01b_6597                            ; $6534: $20 $61

    ld l, [hl]                                    ; $6536: $6e
    ld h, h                                       ; $6537: $64
    jr nz, jr_01b_65ad                            ; $6538: $20 $73

    ld h, c                                       ; $653a: $61
    halt                                          ; $653b: $76
    ld h, l                                       ; $653c: $65
    jr nz, jr_01b_65af                            ; $653d: $20 $70

jr_01b_653f:
    ld h, c                                       ; $653f: $61
    ld [hl], d                                    ; $6540: $72
    ld l, $03                                     ; $6541: $2e $03
    nop                                           ; $6543: $00
    ld b, [hl]                                    ; $6544: $46
    ld l, c                                       ; $6545: $69
    ld [hl], d                                    ; $6546: $72
    ld [hl], e                                    ; $6547: $73
    ld [hl], h                                    ; $6548: $74
    inc l                                         ; $6549: $2c
    jr nz, jr_01b_65af                            ; $654a: $20 $63

    ld l, b                                       ; $654c: $68
    ld l, a                                       ; $654d: $6f
    ld l, a                                       ; $654e: $6f
    ld [hl], e                                    ; $654f: $73

jr_01b_6550:
    ld h, l                                       ; $6550: $65
    ld bc, $6e61                                  ; $6551: $01 $61 $6e

jr_01b_6554:
    jr nz, jr_01b_65b7                            ; $6554: $20 $61

    ld [hl], b                                    ; $6556: $70
    ld [hl], b                                    ; $6557: $70
    ld [hl], d                                    ; $6558: $72
    ld l, a                                       ; $6559: $6f
    ld h, c                                       ; $655a: $61

jr_01b_655b:
    ld h, e                                       ; $655b: $63
    ld l, b                                       ; $655c: $68
    inc l                                         ; $655d: $2c
    jr nz, jr_01b_6565                            ; $655e: $20 $05

    ld bc, $6874                                  ; $6560: $01 $74 $68
    ld h, l                                       ; $6563: $65
    ld l, [hl]                                    ; $6564: $6e

jr_01b_6565:
    jr nz, jr_01b_65c8                            ; $6565: $20 $61

    jr nz, jr_01b_65cc                            ; $6567: $20 $63

    ld l, h                                       ; $6569: $6c
    ld [hl], l                                    ; $656a: $75
    ld h, d                                       ; $656b: $62
    ld l, $03                                     ; $656c: $2e $03
    nop                                           ; $656e: $00
    ld c, c                                       ; $656f: $49
    daa                                           ; $6570: $27
    ld l, l                                       ; $6571: $6d
    jr nz, jr_01b_65db                            ; $6572: $20 $67

jr_01b_6574:
    ld l, a                                       ; $6574: $6f
    ld l, [hl]                                    ; $6575: $6e
    ld l, [hl]                                    ; $6576: $6e
    ld h, c                                       ; $6577: $61

jr_01b_6578:
    jr nz, jr_01b_65ef                            ; $6578: $20 $75

    ld [hl], e                                    ; $657a: $73

jr_01b_657b:
    ld h, l                                       ; $657b: $65
    ld bc, $2061                                  ; $657c: $01 $61 $20
    ld [hl], b                                    ; $657f: $70

jr_01b_6580:
    ld l, c                                       ; $6580: $69
    ld [hl], h                                    ; $6581: $74
    ld h, e                                       ; $6582: $63
    ld l, b                                       ; $6583: $68
    ld l, c                                       ; $6584: $69
    ld l, [hl]                                    ; $6585: $6e
    ld h, a                                       ; $6586: $67
    jr nz, jr_01b_6600                            ; $6587: $20 $77

    ld h, l                                       ; $6589: $65
    ld h, h                                       ; $658a: $64
    ld h, a                                       ; $658b: $67
    ld h, l                                       ; $658c: $65

jr_01b_658d:
    ld l, $03                                     ; $658d: $2e $03
    nop                                           ; $658f: $00
    ld b, h                                       ; $6590: $44
    ld l, c                                       ; $6591: $69
    ld h, h                                       ; $6592: $64
    jr nz, @+$7b                                  ; $6593: $20 $79

    ld l, a                                       ; $6595: $6f
    ld [hl], l                                    ; $6596: $75

jr_01b_6597:
    jr nz, jr_01b_6600                            ; $6597: $20 $67

    ld h, l                                       ; $6599: $65
    ld [hl], h                                    ; $659a: $74
    jr nz, jr_01b_6611                            ; $659b: $20 $74

    ld l, b                                       ; $659d: $68
    ld h, c                                       ; $659e: $61
    ld [hl], h                                    ; $659f: $74
    ccf                                           ; $65a0: $3f
    ld bc, $6157                                  ; $65a1: $01 $57 $61
    ld l, [hl]                                    ; $65a4: $6e
    ld [hl], h                                    ; $65a5: $74
    jr nz, jr_01b_661c                            ; $65a6: $20 $74

    ld l, a                                       ; $65a8: $6f
    jr nz, @+$76                                  ; $65a9: $20 $74

    ld [hl], d                                    ; $65ab: $72
    ld a, c                                       ; $65ac: $79

jr_01b_65ad:
    ccf                                           ; $65ad: $3f
    nop                                           ; $65ae: $00

jr_01b_65af:
    ld b, [hl]                                    ; $65af: $46
    ld l, c                                       ; $65b0: $69
    ld [hl], d                                    ; $65b1: $72
    ld [hl], e                                    ; $65b2: $73
    ld [hl], h                                    ; $65b3: $74
    inc l                                         ; $65b4: $2c
    jr nz, jr_01b_661a                            ; $65b5: $20 $63

jr_01b_65b7:
    ld l, b                                       ; $65b7: $68
    ld l, a                                       ; $65b8: $6f
    ld l, a                                       ; $65b9: $6f
    ld [hl], e                                    ; $65ba: $73
    ld h, l                                       ; $65bb: $65
    ld bc, $6e61                                  ; $65bc: $01 $61 $6e
    jr nz, jr_01b_6622                            ; $65bf: $20 $61

    ld [hl], b                                    ; $65c1: $70
    ld [hl], b                                    ; $65c2: $70
    ld [hl], d                                    ; $65c3: $72
    ld l, a                                       ; $65c4: $6f
    ld h, c                                       ; $65c5: $61
    ld h, e                                       ; $65c6: $63
    ld l, b                                       ; $65c7: $68

jr_01b_65c8:
    ld l, $03                                     ; $65c8: $2e $03
    nop                                           ; $65ca: $00
    ld c, [hl]                                    ; $65cb: $4e

jr_01b_65cc:
    ld h, l                                       ; $65cc: $65
    ld a, b                                       ; $65cd: $78
    ld [hl], h                                    ; $65ce: $74
    inc l                                         ; $65cf: $2c
    jr nz, jr_01b_6635                            ; $65d0: $20 $63

    ld l, b                                       ; $65d2: $68
    ld l, a                                       ; $65d3: $6f
    ld l, a                                       ; $65d4: $6f
    ld [hl], e                                    ; $65d5: $73
    ld h, l                                       ; $65d6: $65
    ld bc, $2061                                  ; $65d7: $01 $61 $20
    ld h, e                                       ; $65da: $63

jr_01b_65db:
    ld l, h                                       ; $65db: $6c
    ld [hl], l                                    ; $65dc: $75
    ld h, d                                       ; $65dd: $62
    ld l, $03                                     ; $65de: $2e $03
    nop                                           ; $65e0: $00
    ld c, a                                       ; $65e1: $4f
    ld c, e                                       ; $65e2: $4b
    inc l                                         ; $65e3: $2c
    jr nz, jr_01b_6659                            ; $65e4: $20 $73

    ld l, b                                       ; $65e6: $68
    ld l, a                                       ; $65e7: $6f
    ld l, a                                       ; $65e8: $6f
    ld [hl], h                                    ; $65e9: $74
    ld hl, $0003                                  ; $65ea: $21 $03 $00
    ld c, c                                       ; $65ed: $49
    ld [hl], h                                    ; $65ee: $74

jr_01b_65ef:
    daa                                           ; $65ef: $27
    ld [hl], e                                    ; $65f0: $73
    jr nz, jr_01b_6667                            ; $65f1: $20 $74

    ld l, a                                       ; $65f3: $6f
    ld [hl], l                                    ; $65f4: $75
    ld h, a                                       ; $65f5: $67
    ld l, b                                       ; $65f6: $68
    ld l, $20                                     ; $65f7: $2e $20
    ld b, c                                       ; $65f9: $41
    ld bc, $6573                                  ; $65fa: $01 $73 $65
    ld l, [hl]                                    ; $65fd: $6e
    ld [hl], e                                    ; $65fe: $73
    ld h, l                                       ; $65ff: $65

jr_01b_6600:
    jr nz, @+$71                                  ; $6600: $20 $6f

    ld h, [hl]                                    ; $6602: $66
    jr nz, jr_01b_6669                            ; $6603: $20 $64

    ld l, c                                       ; $6605: $69
    ld [hl], e                                    ; $6606: $73
    ld [hl], h                                    ; $6607: $74
    ld h, c                                       ; $6608: $61
    ld l, [hl]                                    ; $6609: $6e
    ld h, e                                       ; $660a: $63
    ld h, l                                       ; $660b: $65
    ld bc, $7369                                  ; $660c: $01 $69 $73
    jr nz, @+$76                                  ; $660f: $20 $74

jr_01b_6611:
    ld l, b                                       ; $6611: $68
    ld h, l                                       ; $6612: $65
    jr nz, jr_01b_6680                            ; $6613: $20 $6b

    ld h, l                                       ; $6615: $65
    ld a, c                                       ; $6616: $79
    ld hl, $0003                                  ; $6617: $21 $03 $00

jr_01b_661a:
    ld b, a                                       ; $661a: $47
    ld l, a                                       ; $661b: $6f

jr_01b_661c:
    ld l, a                                       ; $661c: $6f
    ld h, h                                       ; $661d: $64
    jr nz, jr_01b_668a                            ; $661e: $20 $6a

    ld l, a                                       ; $6620: $6f
    ld h, d                                       ; $6621: $62

jr_01b_6622:
    ld hl, $4901                                  ; $6622: $21 $01 $49
    jr nz, jr_01b_668f                            ; $6625: $20 $68

    ld h, c                                       ; $6627: $61
    halt                                          ; $6628: $76
    ld h, l                                       ; $6629: $65
    jr nz, jr_01b_66a0                            ; $662a: $20 $74

    ld l, a                                       ; $662c: $6f
    jr nz, @+$72                                  ; $662d: $20 $70

    ld [hl], d                                    ; $662f: $72
    ld h, c                                       ; $6630: $61
    ld h, e                                       ; $6631: $63
    ld [hl], h                                    ; $6632: $74
    ld l, c                                       ; $6633: $69
    ld h, e                                       ; $6634: $63

jr_01b_6635:
    ld h, l                                       ; $6635: $65
    jr nz, jr_01b_6639                            ; $6636: $20 $01

    ld [hl], h                                    ; $6638: $74

jr_01b_6639:
    ld l, a                                       ; $6639: $6f
    jr nz, @+$6d                                  ; $663a: $20 $6b

    ld h, l                                       ; $663c: $65
    ld h, l                                       ; $663d: $65
    ld [hl], b                                    ; $663e: $70
    jr nz, @+$77                                  ; $663f: $20 $75

    ld [hl], b                                    ; $6641: $70
    ld hl, $0003                                  ; $6642: $21 $03 $00
    ld c, c                                       ; $6645: $49
    jr nz, @+$66                                  ; $6646: $20 $64

    ld l, a                                       ; $6648: $6f
    ld l, [hl]                                    ; $6649: $6e
    daa                                           ; $664a: $27
    ld [hl], h                                    ; $664b: $74
    jr nz, jr_01b_66c2                            ; $664c: $20 $74

    ld l, b                                       ; $664e: $68
    ld l, c                                       ; $664f: $69
    ld l, [hl]                                    ; $6650: $6e
    ld l, e                                       ; $6651: $6b
    jr nz, jr_01b_66b5                            ; $6652: $20 $61

    ld l, [hl]                                    ; $6654: $6e
    ld a, c                                       ; $6655: $79
    ld bc, $6873                                  ; $6656: $01 $73 $68

jr_01b_6659:
    ld l, a                                       ; $6659: $6f
    ld [hl], h                                    ; $665a: $74
    daa                                           ; $665b: $27
    ld [hl], e                                    ; $665c: $73
    jr nz, @+$67                                  ; $665d: $20 $65

    ld h, c                                       ; $665f: $61
    ld [hl], e                                    ; $6660: $73
    ld a, c                                       ; $6661: $79
    jr nz, jr_01b_66c5                            ; $6662: $20 $61

    ld [hl], h                                    ; $6664: $74
    jr nz, jr_01b_66cd                            ; $6665: $20 $66

jr_01b_6667:
    ld l, c                                       ; $6667: $69
    ld [hl], d                                    ; $6668: $72

jr_01b_6669:
    ld [hl], e                                    ; $6669: $73
    ld [hl], h                                    ; $666a: $74
    ld l, $01                                     ; $666b: $2e $01
    ld d, h                                       ; $666d: $54
    ld [hl], d                                    ; $666e: $72
    ld a, c                                       ; $666f: $79
    jr nz, jr_01b_66da                            ; $6670: $20 $68

    ld h, c                                       ; $6672: $61
    ld [hl], d                                    ; $6673: $72
    ld h, h                                       ; $6674: $64
    ld hl, $5902                                  ; $6675: $21 $02 $59
    ld l, a                                       ; $6678: $6f
    ld [hl], l                                    ; $6679: $75
    daa                                           ; $667a: $27
    ld [hl], d                                    ; $667b: $72
    ld h, l                                       ; $667c: $65
    jr nz, jr_01b_66eb                            ; $667d: $20 $6c

    ld l, c                                       ; $667f: $69

jr_01b_6680:
    ld l, e                                       ; $6680: $6b
    ld h, l                                       ; $6681: $65
    ld l, h                                       ; $6682: $6c
    ld a, c                                       ; $6683: $79
    jr nz, jr_01b_66fa                            ; $6684: $20 $74

    ld l, a                                       ; $6686: $6f
    jr nz, jr_01b_66fe                            ; $6687: $20 $75

    ld [hl], e                                    ; $6689: $73

jr_01b_668a:
    ld h, l                                       ; $668a: $65
    ld bc, $6874                                  ; $668b: $01 $74 $68
    ld h, l                                       ; $668e: $65

jr_01b_668f:
    jr nz, @+$65                                  ; $668f: $20 $63

    ld l, b                                       ; $6691: $68
    ld l, c                                       ; $6692: $69
    ld [hl], b                                    ; $6693: $70
    jr nz, @+$75                                  ; $6694: $20 $73

    ld l, b                                       ; $6696: $68
    ld l, a                                       ; $6697: $6f
    ld [hl], h                                    ; $6698: $74
    inc l                                         ; $6699: $2c
    jr nz, jr_01b_670f                            ; $669a: $20 $73

    ld l, a                                       ; $669c: $6f
    ld bc, $7270                                  ; $669d: $01 $70 $72

jr_01b_66a0:
    ld h, c                                       ; $66a0: $61
    ld h, e                                       ; $66a1: $63
    ld [hl], h                                    ; $66a2: $74
    ld l, c                                       ; $66a3: $69
    ld h, e                                       ; $66a4: $63
    ld h, l                                       ; $66a5: $65
    jr nz, jr_01b_6711                            ; $66a6: $20 $69

    ld [hl], h                                    ; $66a8: $74
    jr nz, jr_01b_670c                            ; $66a9: $20 $61

    jr nz, jr_01b_6719                            ; $66ab: $20 $6c

    ld l, a                                       ; $66ad: $6f
    ld [hl], h                                    ; $66ae: $74
    ld l, $03                                     ; $66af: $2e $03
    nop                                           ; $66b1: $00
    ld c, c                                       ; $66b2: $49
    daa                                           ; $66b3: $27
    ld l, l                                       ; $66b4: $6d

jr_01b_66b5:
    jr nz, jr_01b_6727                            ; $66b5: $20 $70

    ld [hl], d                                    ; $66b7: $72
    ld h, c                                       ; $66b8: $61
    ld h, e                                       ; $66b9: $63
    ld [hl], h                                    ; $66ba: $74
    ld l, c                                       ; $66bb: $69
    ld h, e                                       ; $66bc: $63
    ld l, c                                       ; $66bd: $69
    ld l, [hl]                                    ; $66be: $6e
    ld h, a                                       ; $66bf: $67
    jr nz, jr_01b_6723                            ; $66c0: $20 $61

jr_01b_66c2:
    ld bc, $7562                                  ; $66c2: $01 $62 $75

jr_01b_66c5:
    ld l, [hl]                                    ; $66c5: $6e
    ld l, e                                       ; $66c6: $6b
    ld h, l                                       ; $66c7: $65
    ld [hl], d                                    ; $66c8: $72
    jr nz, jr_01b_673e                            ; $66c9: $20 $73

    ld l, b                                       ; $66cb: $68
    ld l, a                                       ; $66cc: $6f

jr_01b_66cd:
    ld [hl], h                                    ; $66cd: $74
    ld l, $01                                     ; $66ce: $2e $01
    ld c, c                                       ; $66d0: $49
    ld l, [hl]                                    ; $66d1: $6e
    ld [hl], h                                    ; $66d2: $74
    ld h, l                                       ; $66d3: $65
    ld [hl], d                                    ; $66d4: $72
    ld h, l                                       ; $66d5: $65
    ld [hl], e                                    ; $66d6: $73
    ld [hl], h                                    ; $66d7: $74
    ld h, l                                       ; $66d8: $65
    ld h, h                                       ; $66d9: $64

jr_01b_66da:
    ccf                                           ; $66da: $3f
    nop                                           ; $66db: $00
    ld d, a                                       ; $66dc: $57
    ld l, c                                       ; $66dd: $69
    ld [hl], h                                    ; $66de: $74
    ld l, b                                       ; $66df: $68
    jr nz, jr_01b_6743                            ; $66e0: $20 $61

    jr nz, jr_01b_6746                            ; $66e2: $20 $62

    ld [hl], l                                    ; $66e4: $75
    ld l, [hl]                                    ; $66e5: $6e
    ld l, e                                       ; $66e6: $6b
    ld h, l                                       ; $66e7: $65
    ld [hl], d                                    ; $66e8: $72
    jr nz, @+$75                                  ; $66e9: $20 $73

jr_01b_66eb:
    ld l, b                                       ; $66eb: $68
    ld l, a                                       ; $66ec: $6f
    ld [hl], h                                    ; $66ed: $74
    inc l                                         ; $66ee: $2c
    ld bc, $6f79                                  ; $66ef: $01 $79 $6f
    ld [hl], l                                    ; $66f2: $75
    jr nz, jr_01b_675a                            ; $66f3: $20 $65

    ld a, b                                       ; $66f5: $78
    ld [hl], b                                    ; $66f6: $70
    ld l, h                                       ; $66f7: $6c
    ld l, a                                       ; $66f8: $6f
    ld h, h                                       ; $66f9: $64

jr_01b_66fa:
    ld h, l                                       ; $66fa: $65
    jr nz, jr_01b_6770                            ; $66fb: $20 $73

    ld h, c                                       ; $66fd: $61

jr_01b_66fe:
    ld l, [hl]                                    ; $66fe: $6e
    ld h, h                                       ; $66ff: $64
    jr nz, jr_01b_6776                            ; $6700: $20 $74

    ld l, a                                       ; $6702: $6f
    ld bc, $7266                                  ; $6703: $01 $66 $72
    ld h, l                                       ; $6706: $65
    ld h, l                                       ; $6707: $65
    jr nz, jr_01b_677e                            ; $6708: $20 $74

    ld l, b                                       ; $670a: $68
    ld h, l                                       ; $670b: $65

jr_01b_670c:
    jr nz, jr_01b_6770                            ; $670c: $20 $62

    ld h, c                                       ; $670e: $61

jr_01b_670f:
    ld l, h                                       ; $670f: $6c
    ld l, h                                       ; $6710: $6c

jr_01b_6711:
    ld l, $02                                     ; $6711: $2e $02
    ld d, h                                       ; $6713: $54
    ld l, b                                       ; $6714: $68
    ld h, c                                       ; $6715: $61
    ld [hl], h                                    ; $6716: $74
    jr nz, jr_01b_678d                            ; $6717: $20 $74

jr_01b_6719:
    ld h, l                                       ; $6719: $65
    ld h, e                                       ; $671a: $63
    ld l, b                                       ; $671b: $68
    ld l, [hl]                                    ; $671c: $6e
    ld l, c                                       ; $671d: $69
    ld [hl], c                                    ; $671e: $71
    ld [hl], l                                    ; $671f: $75
    ld h, l                                       ; $6720: $65
    jr nz, @+$6b                                  ; $6721: $20 $69

jr_01b_6723:
    ld [hl], e                                    ; $6723: $73
    ld bc, $6163                                  ; $6724: $01 $63 $61

jr_01b_6727:
    ld l, h                                       ; $6727: $6c
    ld l, h                                       ; $6728: $6c
    ld h, l                                       ; $6729: $65
    ld h, h                                       ; $672a: $64
    jr nz, jr_01b_678e                            ; $672b: $20 $61

    ld l, [hl]                                    ; $672d: $6e
    jr nz, jr_01b_6795                            ; $672e: $20 $65

    ld a, b                                       ; $6730: $78
    ld [hl], b                                    ; $6731: $70
    ld l, h                                       ; $6732: $6c
    ld l, a                                       ; $6733: $6f
    ld [hl], e                                    ; $6734: $73
    ld l, c                                       ; $6735: $69
    ld l, a                                       ; $6736: $6f
    ld l, [hl]                                    ; $6737: $6e
    ld l, $03                                     ; $6738: $2e $03
    nop                                           ; $673a: $00
    ld e, c                                       ; $673b: $59
    ld l, a                                       ; $673c: $6f
    ld [hl], l                                    ; $673d: $75

jr_01b_673e:
    jr nz, @+$70                                  ; $673e: $20 $6e

    ld h, l                                       ; $6740: $65
    ld h, l                                       ; $6741: $65
    ld h, h                                       ; $6742: $64

jr_01b_6743:
    jr nz, jr_01b_67b9                            ; $6743: $20 $74

    ld l, b                                       ; $6745: $68

jr_01b_6746:
    ld h, l                                       ; $6746: $65
    jr nz, @+$74                                  ; $6747: $20 $72

    ld l, c                                       ; $6749: $69
    ld h, a                                       ; $674a: $67
    ld l, b                                       ; $674b: $68
    ld [hl], h                                    ; $674c: $74
    ld bc, $6c63                                  ; $674d: $01 $63 $6c
    ld [hl], l                                    ; $6750: $75
    ld h, d                                       ; $6751: $62
    jr nz, jr_01b_67c8                            ; $6752: $20 $74

    ld l, a                                       ; $6754: $6f
    jr nz, jr_01b_67bc                            ; $6755: $20 $65

    ld a, b                                       ; $6757: $78
    ld [hl], b                                    ; $6758: $70
    ld l, h                                       ; $6759: $6c

jr_01b_675a:
    ld l, a                                       ; $675a: $6f
    ld h, h                                       ; $675b: $64
    ld h, l                                       ; $675c: $65
    ld bc, $6173                                  ; $675d: $01 $73 $61
    ld l, [hl]                                    ; $6760: $6e
    ld h, h                                       ; $6761: $64
    jr nz, jr_01b_67c5                            ; $6762: $20 $61

    ld l, [hl]                                    ; $6764: $6e
    ld h, h                                       ; $6765: $64
    jr nz, jr_01b_67ce                            ; $6766: $20 $66

    ld [hl], d                                    ; $6768: $72
    ld h, l                                       ; $6769: $65
    ld h, l                                       ; $676a: $65
    jr nz, @+$76                                  ; $676b: $20 $74

    ld l, b                                       ; $676d: $68
    ld h, l                                       ; $676e: $65
    ld [bc], a                                    ; $676f: $02

jr_01b_6770:
    ld h, d                                       ; $6770: $62
    ld h, c                                       ; $6771: $61
    ld l, h                                       ; $6772: $6c
    ld l, h                                       ; $6773: $6c
    ld l, $20                                     ; $6774: $2e $20

jr_01b_6776:
    ld b, [hl]                                    ; $6776: $46
    ld l, a                                       ; $6777: $6f
    ld [hl], d                                    ; $6778: $72
    jr nz, @+$63                                  ; $6779: $20 $61

    jr nz, jr_01b_67df                            ; $677b: $20 $62

    ld [hl], l                                    ; $677d: $75

jr_01b_677e:
    ld l, [hl]                                    ; $677e: $6e
    ld l, e                                       ; $677f: $6b
    ld h, l                                       ; $6780: $65
    ld [hl], d                                    ; $6781: $72
    ld bc, $7567                                  ; $6782: $01 $67 $75
    ld h, c                                       ; $6785: $61
    ld [hl], d                                    ; $6786: $72
    ld h, h                                       ; $6787: $64
    ld l, c                                       ; $6788: $69
    ld l, [hl]                                    ; $6789: $6e
    ld h, a                                       ; $678a: $67
    jr nz, jr_01b_6801                            ; $678b: $20 $74

jr_01b_678d:
    ld l, b                                       ; $678d: $68

jr_01b_678e:
    ld h, l                                       ; $678e: $65
    jr nz, jr_01b_67f8                            ; $678f: $20 $67

    ld [hl], d                                    ; $6791: $72
    ld h, l                                       ; $6792: $65
    ld h, l                                       ; $6793: $65
    ld l, [hl]                                    ; $6794: $6e

jr_01b_6795:
    inc l                                         ; $6795: $2c
    ld bc, $7375                                  ; $6796: $01 $75 $73
    ld h, l                                       ; $6799: $65
    jr nz, jr_01b_6815                            ; $679a: $20 $79

    ld l, a                                       ; $679c: $6f
    ld [hl], l                                    ; $679d: $75
    ld [hl], d                                    ; $679e: $72
    jr nz, jr_01b_67f4                            ; $679f: $20 $53

    ld d, a                                       ; $67a1: $57
    ld l, $03                                     ; $67a2: $2e $03
    nop                                           ; $67a4: $00
    ld b, c                                       ; $67a5: $41
    jr nz, jr_01b_680a                            ; $67a6: $20 $62

    ld [hl], l                                    ; $67a8: $75
    ld l, [hl]                                    ; $67a9: $6e
    ld l, e                                       ; $67aa: $6b
    ld h, l                                       ; $67ab: $65
    ld [hl], d                                    ; $67ac: $72
    jr nz, jr_01b_6823                            ; $67ad: $20 $74

    ld l, b                                       ; $67af: $68
    ld h, c                                       ; $67b0: $61
    ld [hl], h                                    ; $67b1: $74
    jr nz, jr_01b_681b                            ; $67b2: $20 $67

    ld [hl], l                                    ; $67b4: $75
    ld h, c                                       ; $67b5: $61
    ld [hl], d                                    ; $67b6: $72
    ld h, h                                       ; $67b7: $64
    ld [hl], e                                    ; $67b8: $73

jr_01b_67b9:
    ld bc, $6874                                  ; $67b9: $01 $74 $68

jr_01b_67bc:
    ld h, l                                       ; $67bc: $65
    jr nz, jr_01b_6826                            ; $67bd: $20 $67

    ld [hl], d                                    ; $67bf: $72
    ld h, l                                       ; $67c0: $65
    ld h, l                                       ; $67c1: $65
    ld l, [hl]                                    ; $67c2: $6e
    jr nz, jr_01b_682e                            ; $67c3: $20 $69

jr_01b_67c5:
    ld [hl], e                                    ; $67c5: $73
    jr nz, jr_01b_6829                            ; $67c6: $20 $61

jr_01b_67c8:
    jr nz, jr_01b_6831                            ; $67c8: $20 $67

    ld [hl], l                                    ; $67ca: $75
    ld h, c                                       ; $67cb: $61
    ld [hl], d                                    ; $67cc: $72
    ld h, h                                       ; $67cd: $64

jr_01b_67ce:
    ld bc, $7562                                  ; $67ce: $01 $62 $75
    ld l, [hl]                                    ; $67d1: $6e
    ld l, e                                       ; $67d2: $6b
    ld h, l                                       ; $67d3: $65
    ld [hl], d                                    ; $67d4: $72
    ld l, $02                                     ; $67d5: $2e $02
    ld b, [hl]                                    ; $67d7: $46
    ld [hl], d                                    ; $67d8: $72
    ld l, a                                       ; $67d9: $6f
    ld l, l                                       ; $67da: $6d
    jr nz, jr_01b_683f                            ; $67db: $20 $62

    ld h, c                                       ; $67dd: $61
    ld l, h                                       ; $67de: $6c

jr_01b_67df:
    ld l, h                                       ; $67df: $6c
    jr nz, @+$76                                  ; $67e0: $20 $74

    ld l, a                                       ; $67e2: $6f
    jr nz, jr_01b_6855                            ; $67e3: $20 $70

    ld l, c                                       ; $67e5: $69
    ld l, [hl]                                    ; $67e6: $6e
    inc l                                         ; $67e7: $2c
    ld bc, $2749                                  ; $67e8: $01 $49 $27
    ld h, h                                       ; $67eb: $64
    jr nz, jr_01b_6861                            ; $67ec: $20 $73

    ld h, c                                       ; $67ee: $61
    ld a, c                                       ; $67ef: $79
    jr nz, jr_01b_685b                            ; $67f0: $20 $69

    ld [hl], h                                    ; $67f2: $74
    daa                                           ; $67f3: $27

jr_01b_67f4:
    ld [hl], e                                    ; $67f4: $73
    jr nz, jr_01b_6858                            ; $67f5: $20 $61

    ld h, d                                       ; $67f7: $62

jr_01b_67f8:
    ld l, a                                       ; $67f8: $6f
    ld [hl], l                                    ; $67f9: $75
    ld [hl], h                                    ; $67fa: $74
    ld bc, $3032                                  ; $67fb: $01 $32 $30
    ld e, c                                       ; $67fe: $59
    ld l, $03                                     ; $67ff: $2e $03

jr_01b_6801:
    nop                                           ; $6801: $00
    ld b, [hl]                                    ; $6802: $46
    ld l, c                                       ; $6803: $69
    ld [hl], d                                    ; $6804: $72
    ld [hl], e                                    ; $6805: $73
    ld [hl], h                                    ; $6806: $74
    inc l                                         ; $6807: $2c
    jr nz, jr_01b_686d                            ; $6808: $20 $63

jr_01b_680a:
    ld l, b                                       ; $680a: $68
    ld l, a                                       ; $680b: $6f
    ld l, a                                       ; $680c: $6f
    ld [hl], e                                    ; $680d: $73
    ld h, l                                       ; $680e: $65
    ld bc, $6e61                                  ; $680f: $01 $61 $6e
    jr nz, jr_01b_6875                            ; $6812: $20 $61

    ld [hl], b                                    ; $6814: $70

jr_01b_6815:
    ld [hl], b                                    ; $6815: $70
    ld [hl], d                                    ; $6816: $72
    ld l, a                                       ; $6817: $6f
    ld h, c                                       ; $6818: $61
    ld h, e                                       ; $6819: $63
    ld l, b                                       ; $681a: $68

jr_01b_681b:
    ld l, $03                                     ; $681b: $2e $03
    nop                                           ; $681d: $00
    ld c, [hl]                                    ; $681e: $4e
    ld h, l                                       ; $681f: $65
    ld a, b                                       ; $6820: $78
    ld [hl], h                                    ; $6821: $74
    inc l                                         ; $6822: $2c

jr_01b_6823:
    jr nz, jr_01b_6888                            ; $6823: $20 $63

    ld l, b                                       ; $6825: $68

jr_01b_6826:
    ld l, a                                       ; $6826: $6f
    ld l, a                                       ; $6827: $6f
    ld [hl], e                                    ; $6828: $73

jr_01b_6829:
    ld h, l                                       ; $6829: $65
    ld bc, $2061                                  ; $682a: $01 $61 $20
    ld h, e                                       ; $682d: $63

jr_01b_682e:
    ld l, h                                       ; $682e: $6c
    ld [hl], l                                    ; $682f: $75
    ld h, d                                       ; $6830: $62

jr_01b_6831:
    ld l, $03                                     ; $6831: $2e $03
    nop                                           ; $6833: $00
    ld b, e                                       ; $6834: $43
    ld h, c                                       ; $6835: $61
    ld [hl], d                                    ; $6836: $72
    ld [hl], d                                    ; $6837: $72
    ld a, c                                       ; $6838: $79
    jr nz, jr_01b_68a4                            ; $6839: $20 $69

    ld [hl], h                                    ; $683b: $74
    jr nz, jr_01b_686f                            ; $683c: $20 $31

    dec [hl]                                      ; $683e: $35

jr_01b_683f:
    ld e, c                                       ; $683f: $59
    jr nz, jr_01b_68a3                            ; $6840: $20 $61

    ld l, [hl]                                    ; $6842: $6e
    ld h, h                                       ; $6843: $64
    ld bc, $6f72                                  ; $6844: $01 $72 $6f
    ld l, h                                       ; $6847: $6c
    ld l, h                                       ; $6848: $6c
    jr nz, jr_01b_68b4                            ; $6849: $20 $69

    ld [hl], h                                    ; $684b: $74
    jr nz, @+$37                                  ; $684c: $20 $35

    ld e, c                                       ; $684e: $59
    ld l, $20                                     ; $684f: $2e $20
    ld c, c                                       ; $6851: $49
    daa                                           ; $6852: $27
    ld l, h                                       ; $6853: $6c
    ld l, h                                       ; $6854: $6c

jr_01b_6855:
    ld bc, $7274                                  ; $6855: $01 $74 $72

jr_01b_6858:
    ld a, c                                       ; $6858: $79
    jr nz, @+$6b                                  ; $6859: $20 $69

jr_01b_685b:
    ld [hl], h                                    ; $685b: $74
    jr nz, jr_01b_68d5                            ; $685c: $20 $77

    ld l, c                                       ; $685e: $69
    ld [hl], h                                    ; $685f: $74
    ld l, b                                       ; $6860: $68

jr_01b_6861:
    jr nz, @+$63                                  ; $6861: $20 $61

    jr nz, @+$55                                  ; $6863: $20 $53

    ld d, a                                       ; $6865: $57
    ld l, $03                                     ; $6866: $2e $03
    nop                                           ; $6868: $00
    ld d, e                                       ; $6869: $53
    ld h, l                                       ; $686a: $65
    ld h, l                                       ; $686b: $65
    ccf                                           ; $686c: $3f

jr_01b_686d:
    jr nz, @+$4b                                  ; $686d: $20 $49

jr_01b_686f:
    ld [hl], h                                    ; $686f: $74
    daa                                           ; $6870: $27
    ld [hl], e                                    ; $6871: $73
    jr nz, jr_01b_68e7                            ; $6872: $20 $73

    ld l, c                                       ; $6874: $69

jr_01b_6875:
    ld l, l                                       ; $6875: $6d
    ld [hl], b                                    ; $6876: $70
    ld l, h                                       ; $6877: $6c
    ld h, l                                       ; $6878: $65
    ld l, $01                                     ; $6879: $2e $01
    ld d, a                                       ; $687b: $57
    ld h, c                                       ; $687c: $61
    ld l, [hl]                                    ; $687d: $6e
    ld [hl], h                                    ; $687e: $74
    jr nz, @+$76                                  ; $687f: $20 $74

    ld l, a                                       ; $6881: $6f
    jr nz, jr_01b_68f8                            ; $6882: $20 $74

    ld [hl], d                                    ; $6884: $72
    ld a, c                                       ; $6885: $79
    ccf                                           ; $6886: $3f
    nop                                           ; $6887: $00

jr_01b_6888:
    ld b, [hl]                                    ; $6888: $46
    ld l, c                                       ; $6889: $69
    ld [hl], d                                    ; $688a: $72
    ld [hl], e                                    ; $688b: $73
    ld [hl], h                                    ; $688c: $74
    inc l                                         ; $688d: $2c
    jr nz, @+$75                                  ; $688e: $20 $73

    ld h, l                                       ; $6890: $65
    ld l, h                                       ; $6891: $6c
    ld h, l                                       ; $6892: $65
    ld h, e                                       ; $6893: $63
    ld [hl], h                                    ; $6894: $74
    ld bc, $6e61                                  ; $6895: $01 $61 $6e
    jr nz, jr_01b_68fb                            ; $6898: $20 $61

    ld [hl], b                                    ; $689a: $70
    ld [hl], b                                    ; $689b: $70
    ld [hl], d                                    ; $689c: $72
    ld l, a                                       ; $689d: $6f
    ld h, c                                       ; $689e: $61
    ld h, e                                       ; $689f: $63
    ld l, b                                       ; $68a0: $68
    ld l, $03                                     ; $68a1: $2e $03

jr_01b_68a3:
    nop                                           ; $68a3: $00

jr_01b_68a4:
    ld d, h                                       ; $68a4: $54
    ld l, b                                       ; $68a5: $68
    ld h, l                                       ; $68a6: $65
    ld l, [hl]                                    ; $68a7: $6e
    inc l                                         ; $68a8: $2c
    jr nz, jr_01b_690e                            ; $68a9: $20 $63

    ld l, b                                       ; $68ab: $68
    ld l, a                                       ; $68ac: $6f
    ld l, a                                       ; $68ad: $6f
    ld [hl], e                                    ; $68ae: $73
    ld h, l                                       ; $68af: $65
    ld bc, $2061                                  ; $68b0: $01 $61 $20
    ld h, e                                       ; $68b3: $63

jr_01b_68b4:
    ld l, h                                       ; $68b4: $6c
    ld [hl], l                                    ; $68b5: $75
    ld h, d                                       ; $68b6: $62
    ld l, $03                                     ; $68b7: $2e $03
    nop                                           ; $68b9: $00
    ld c, a                                       ; $68ba: $4f
    ld c, e                                       ; $68bb: $4b
    inc l                                         ; $68bc: $2c
    jr nz, @+$75                                  ; $68bd: $20 $73

    ld l, b                                       ; $68bf: $68
    ld l, a                                       ; $68c0: $6f
    ld l, a                                       ; $68c1: $6f
    ld [hl], h                                    ; $68c2: $74
    ld hl, $0003                                  ; $68c3: $21 $03 $00
    ld c, c                                       ; $68c6: $49
    ld [hl], h                                    ; $68c7: $74
    daa                                           ; $68c8: $27
    ld [hl], e                                    ; $68c9: $73
    jr nz, jr_01b_6934                            ; $68ca: $20 $68

    ld h, c                                       ; $68cc: $61
    ld [hl], d                                    ; $68cd: $72
    ld h, h                                       ; $68ce: $64
    jr nz, @+$63                                  ; $68cf: $20 $61

    ld [hl], h                                    ; $68d1: $74
    ld bc, $6966                                  ; $68d2: $01 $66 $69

jr_01b_68d5:
    ld [hl], d                                    ; $68d5: $72
    ld [hl], e                                    ; $68d6: $73
    ld [hl], h                                    ; $68d7: $74
    inc l                                         ; $68d8: $2c
    jr nz, jr_01b_694e                            ; $68d9: $20 $73

    ld l, a                                       ; $68db: $6f
    jr nz, @+$6d                                  ; $68dc: $20 $6b

    ld h, l                                       ; $68de: $65
    ld h, l                                       ; $68df: $65
    ld [hl], b                                    ; $68e0: $70
    ld bc, $7270                                  ; $68e1: $01 $70 $72
    ld h, c                                       ; $68e4: $61
    ld h, e                                       ; $68e5: $63
    ld [hl], h                                    ; $68e6: $74

jr_01b_68e7:
    ld l, c                                       ; $68e7: $69
    ld h, e                                       ; $68e8: $63
    ld l, c                                       ; $68e9: $69
    ld l, [hl]                                    ; $68ea: $6e
    ld h, a                                       ; $68eb: $67
    ld l, $03                                     ; $68ec: $2e $03
    nop                                           ; $68ee: $00
    ld e, c                                       ; $68ef: $59
    ld h, l                                       ; $68f0: $65
    ld h, c                                       ; $68f1: $61
    ld l, b                                       ; $68f2: $68
    inc l                                         ; $68f3: $2c
    jr nz, jr_01b_696f                            ; $68f4: $20 $79

    ld l, a                                       ; $68f6: $6f
    ld [hl], l                                    ; $68f7: $75

jr_01b_68f8:
    daa                                           ; $68f8: $27
    halt                                          ; $68f9: $76
    ld h, l                                       ; $68fa: $65

jr_01b_68fb:
    jr nz, jr_01b_6964                            ; $68fb: $20 $67

    ld l, a                                       ; $68fd: $6f
    ld [hl], h                                    ; $68fe: $74
    ld bc, $7469                                  ; $68ff: $01 $69 $74
    ld l, $20                                     ; $6902: $2e $20
    ld d, h                                       ; $6904: $54
    ld [hl], d                                    ; $6905: $72
    ld a, c                                       ; $6906: $79
    jr nz, jr_01b_6979                            ; $6907: $20 $70

    ld [hl], l                                    ; $6909: $75
    ld [hl], h                                    ; $690a: $74
    ld [hl], h                                    ; $690b: $74
    ld l, c                                       ; $690c: $69
    ld l, [hl]                                    ; $690d: $6e

jr_01b_690e:
    ld h, a                                       ; $690e: $67
    ld bc, $7073                                  ; $690f: $01 $73 $70
    ld l, c                                       ; $6912: $69
    ld l, [hl]                                    ; $6913: $6e
    jr nz, jr_01b_6985                            ; $6914: $20 $6f

    ld l, [hl]                                    ; $6916: $6e
    jr nz, jr_01b_6982                            ; $6917: $20 $69

    ld [hl], h                                    ; $6919: $74
    inc l                                         ; $691a: $2c
    jr nz, jr_01b_6991                            ; $691b: $20 $74

    ld l, a                                       ; $691d: $6f
    ld l, a                                       ; $691e: $6f
    ld l, $03                                     ; $691f: $2e $03
    nop                                           ; $6921: $00
    ld d, h                                       ; $6922: $54
    ld l, a                                       ; $6923: $6f
    jr nz, jr_01b_6996                            ; $6924: $20 $70

    ld [hl], d                                    ; $6926: $72
    ld h, c                                       ; $6927: $61
    ld h, e                                       ; $6928: $63
    ld [hl], h                                    ; $6929: $74
    ld l, c                                       ; $692a: $69
    ld h, e                                       ; $692b: $63
    ld h, l                                       ; $692c: $65
    jr nz, jr_01b_699e                            ; $692d: $20 $6f

    ld l, [hl]                                    ; $692f: $6e
    ld bc, $6f79                                  ; $6930: $01 $79 $6f
    ld [hl], l                                    ; $6933: $75

jr_01b_6934:
    ld [hl], d                                    ; $6934: $72
    jr nz, jr_01b_69a6                            ; $6935: $20 $6f

    ld [hl], a                                    ; $6937: $77
    ld l, [hl]                                    ; $6938: $6e
    inc l                                         ; $6939: $2c
    jr nz, jr_01b_699f                            ; $693a: $20 $63

    ld l, b                                       ; $693c: $68
    ld l, a                                       ; $693d: $6f
    ld l, a                                       ; $693e: $6f
    ld [hl], e                                    ; $693f: $73
    ld h, l                                       ; $6940: $65
    ld bc, $2061                                  ; $6941: $01 $61 $20
    ld [hl], e                                    ; $6944: $73
    ld [hl], b                                    ; $6945: $70
    ld l, a                                       ; $6946: $6f
    ld [hl], h                                    ; $6947: $74
    jr nz, jr_01b_69ab                            ; $6948: $20 $61

    ld l, [hl]                                    ; $694a: $6e
    ld h, h                                       ; $694b: $64
    jr nz, jr_01b_69c1                            ; $694c: $20 $73

jr_01b_694e:
    ld [hl], a                                    ; $694e: $77
    ld l, c                                       ; $694f: $69
    ld l, [hl]                                    ; $6950: $6e
    ld h, a                                       ; $6951: $67
    ld hl, $0003                                  ; $6952: $21 $03 $00
    ld c, c                                       ; $6955: $49
    daa                                           ; $6956: $27
    ld l, l                                       ; $6957: $6d
    jr nz, @+$76                                  ; $6958: $20 $74

    ld [hl], d                                    ; $695a: $72
    ld a, c                                       ; $695b: $79
    ld l, c                                       ; $695c: $69
    ld l, [hl]                                    ; $695d: $6e
    ld h, a                                       ; $695e: $67
    jr nz, jr_01b_69d3                            ; $695f: $20 $72

    ld [hl], l                                    ; $6961: $75
    ld l, [hl]                                    ; $6962: $6e
    ld l, [hl]                                    ; $6963: $6e

jr_01b_6964:
    ld l, c                                       ; $6964: $69
    ld l, [hl]                                    ; $6965: $6e
    ld h, a                                       ; $6966: $67
    ld bc, $7061                                  ; $6967: $01 $61 $70
    ld [hl], b                                    ; $696a: $70
    ld [hl], d                                    ; $696b: $72
    ld l, a                                       ; $696c: $6f
    ld h, c                                       ; $696d: $61
    ld h, e                                       ; $696e: $63

jr_01b_696f:
    ld l, b                                       ; $696f: $68
    ld h, l                                       ; $6970: $65
    ld [hl], e                                    ; $6971: $73
    jr nz, jr_01b_69e3                            ; $6972: $20 $6f

    ld l, [hl]                                    ; $6974: $6e
    ld bc, $6c73                                  ; $6975: $01 $73 $6c
    ld l, a                                       ; $6978: $6f

jr_01b_6979:
    ld [hl], b                                    ; $6979: $70
    ld h, l                                       ; $697a: $65
    ld h, h                                       ; $697b: $64
    jr nz, @+$69                                  ; $697c: $20 $67

    ld [hl], d                                    ; $697e: $72
    ld h, l                                       ; $697f: $65
    ld h, l                                       ; $6980: $65
    ld l, [hl]                                    ; $6981: $6e

jr_01b_6982:
    ld [hl], e                                    ; $6982: $73
    ld l, $02                                     ; $6983: $2e $02

jr_01b_6985:
    ld b, a                                       ; $6985: $47
    ld h, l                                       ; $6986: $65
    ld [hl], h                                    ; $6987: $74
    ld [hl], h                                    ; $6988: $74
    ld l, c                                       ; $6989: $69
    ld l, [hl]                                    ; $698a: $6e
    ld h, a                                       ; $698b: $67
    jr nz, jr_01b_69ef                            ; $698c: $20 $61

    jr nz, @+$75                                  ; $698e: $20 $73

    ld h, l                                       ; $6990: $65

jr_01b_6991:
    ld l, [hl]                                    ; $6991: $6e
    ld [hl], e                                    ; $6992: $73
    ld h, l                                       ; $6993: $65
    jr nz, jr_01b_6a05                            ; $6994: $20 $6f

jr_01b_6996:
    ld h, [hl]                                    ; $6996: $66
    ld bc, $6964                                  ; $6997: $01 $64 $69
    ld [hl], e                                    ; $699a: $73
    ld [hl], h                                    ; $699b: $74
    ld h, c                                       ; $699c: $61
    ld l, [hl]                                    ; $699d: $6e

jr_01b_699e:
    ld h, e                                       ; $699e: $63

jr_01b_699f:
    ld h, l                                       ; $699f: $65
    jr nz, jr_01b_6a0b                            ; $69a0: $20 $69

    ld [hl], e                                    ; $69a2: $73
    jr nz, jr_01b_6a0d                            ; $69a3: $20 $68

    ld h, c                                       ; $69a5: $61

jr_01b_69a6:
    ld [hl], d                                    ; $69a6: $72
    ld h, h                                       ; $69a7: $64
    ld l, $01                                     ; $69a8: $2e $01
    ld d, a                                       ; $69aa: $57

jr_01b_69ab:
    ld h, c                                       ; $69ab: $61
    ld l, [hl]                                    ; $69ac: $6e
    ld [hl], h                                    ; $69ad: $74
    jr nz, jr_01b_6a24                            ; $69ae: $20 $74

    ld l, a                                       ; $69b0: $6f
    jr nz, @+$76                                  ; $69b1: $20 $74

    ld [hl], d                                    ; $69b3: $72
    ld a, c                                       ; $69b4: $79
    ccf                                           ; $69b5: $3f
    nop                                           ; $69b6: $00
    ld b, e                                       ; $69b7: $43
    ld l, b                                       ; $69b8: $68
    ld l, a                                       ; $69b9: $6f
    ld l, a                                       ; $69ba: $6f
    ld [hl], e                                    ; $69bb: $73
    ld h, l                                       ; $69bc: $65
    jr nz, @+$63                                  ; $69bd: $20 $61

    jr nz, jr_01b_6a24                            ; $69bf: $20 $63

jr_01b_69c1:
    ld l, h                                       ; $69c1: $6c
    ld [hl], l                                    ; $69c2: $75
    ld h, d                                       ; $69c3: $62
    jr nz, jr_01b_6a3a                            ; $69c4: $20 $74

    ld l, a                                       ; $69c6: $6f
    ld bc, $616d                                  ; $69c7: $01 $6d $61
    ld [hl], h                                    ; $69ca: $74
    ld h, e                                       ; $69cb: $63
    ld l, b                                       ; $69cc: $68
    jr nz, @+$76                                  ; $69cd: $20 $74

    ld l, b                                       ; $69cf: $68
    ld h, l                                       ; $69d0: $65
    jr nz, jr_01b_6a37                            ; $69d1: $20 $64

jr_01b_69d3:
    ld l, c                                       ; $69d3: $69
    ld [hl], e                                    ; $69d4: $73
    ld [hl], h                                    ; $69d5: $74
    ld h, c                                       ; $69d6: $61
    ld l, [hl]                                    ; $69d7: $6e
    ld h, e                                       ; $69d8: $63
    ld h, l                                       ; $69d9: $65
    ld bc, $7266                                  ; $69da: $01 $66 $72
    ld l, a                                       ; $69dd: $6f
    ld l, l                                       ; $69de: $6d
    jr nz, @+$64                                  ; $69df: $20 $62

    ld h, c                                       ; $69e1: $61
    ld l, h                                       ; $69e2: $6c

jr_01b_69e3:
    ld l, h                                       ; $69e3: $6c
    jr nz, jr_01b_6a5a                            ; $69e4: $20 $74

    ld l, a                                       ; $69e6: $6f
    jr nz, @+$69                                  ; $69e7: $20 $67

    ld [hl], d                                    ; $69e9: $72
    ld h, l                                       ; $69ea: $65
    ld h, l                                       ; $69eb: $65
    ld l, [hl]                                    ; $69ec: $6e
    ld l, $02                                     ; $69ed: $2e $02

jr_01b_69ef:
    ld c, c                                       ; $69ef: $49
    ld [hl], h                                    ; $69f0: $74
    daa                                           ; $69f1: $27
    ld l, h                                       ; $69f2: $6c
    ld l, h                                       ; $69f3: $6c
    jr nz, jr_01b_6a5e                            ; $69f4: $20 $68

    ld h, l                                       ; $69f6: $65
    ld l, h                                       ; $69f7: $6c
    ld [hl], b                                    ; $69f8: $70
    jr nz, jr_01b_6a74                            ; $69f9: $20 $79

    ld l, a                                       ; $69fb: $6f
    ld [hl], l                                    ; $69fc: $75
    jr nz, jr_01b_6a66                            ; $69fd: $20 $67

    ld h, l                                       ; $69ff: $65
    ld [hl], h                                    ; $6a00: $74
    ld bc, $2061                                  ; $6a01: $01 $61 $20
    ld [hl], e                                    ; $6a04: $73

jr_01b_6a05:
    ld h, l                                       ; $6a05: $65
    ld l, [hl]                                    ; $6a06: $6e
    ld [hl], e                                    ; $6a07: $73
    ld h, l                                       ; $6a08: $65
    jr nz, jr_01b_6a71                            ; $6a09: $20 $66

jr_01b_6a0b:
    ld l, a                                       ; $6a0b: $6f
    ld [hl], d                                    ; $6a0c: $72

jr_01b_6a0d:
    jr nz, jr_01b_6a7f                            ; $6a0d: $20 $70

    ld [hl], l                                    ; $6a0f: $75
    ld [hl], h                                    ; $6a10: $74
    ld [hl], h                                    ; $6a11: $74
    ld l, c                                       ; $6a12: $69
    ld l, [hl]                                    ; $6a13: $6e
    ld h, a                                       ; $6a14: $67
    ld bc, $6e6f                                  ; $6a15: $01 $6f $6e
    jr nz, jr_01b_6a8d                            ; $6a18: $20 $73

    ld l, h                                       ; $6a1a: $6c
    ld l, a                                       ; $6a1b: $6f
    ld [hl], b                                    ; $6a1c: $70
    ld h, l                                       ; $6a1d: $65
    ld h, h                                       ; $6a1e: $64
    jr nz, jr_01b_6a88                            ; $6a1f: $20 $67

    ld [hl], d                                    ; $6a21: $72
    ld h, l                                       ; $6a22: $65
    ld h, l                                       ; $6a23: $65

jr_01b_6a24:
    ld l, [hl]                                    ; $6a24: $6e
    ld [hl], e                                    ; $6a25: $73
    ld l, $03                                     ; $6a26: $2e $03
    nop                                           ; $6a28: $00
    ld c, a                                       ; $6a29: $4f
    ld l, [hl]                                    ; $6a2a: $6e
    jr nz, jr_01b_6a8e                            ; $6a2b: $20 $61

    jr nz, jr_01b_6aa2                            ; $6a2d: $20 $73

    ld l, h                                       ; $6a2f: $6c
    ld l, a                                       ; $6a30: $6f
    ld [hl], b                                    ; $6a31: $70
    ld h, l                                       ; $6a32: $65
    ld h, h                                       ; $6a33: $64
    jr nz, jr_01b_6a9d                            ; $6a34: $20 $67

    ld [hl], d                                    ; $6a36: $72

jr_01b_6a37:
    ld h, l                                       ; $6a37: $65
    ld h, l                                       ; $6a38: $65
    ld l, [hl]                                    ; $6a39: $6e

jr_01b_6a3a:
    inc l                                         ; $6a3a: $2c
    ld bc, $7274                                  ; $6a3b: $01 $74 $72
    ld a, c                                       ; $6a3e: $79
    jr nz, jr_01b_6ab5                            ; $6a3f: $20 $74

    ld l, a                                       ; $6a41: $6f
    jr nz, @+$69                                  ; $6a42: $20 $67

    ld h, l                                       ; $6a44: $65
    ld [hl], h                                    ; $6a45: $74
    jr nz, jr_01b_6aa9                            ; $6a46: $20 $61

    jr nz, @+$75                                  ; $6a48: $20 $73

    ld h, l                                       ; $6a4a: $65
    ld l, [hl]                                    ; $6a4b: $6e
    ld [hl], e                                    ; $6a4c: $73
    ld h, l                                       ; $6a4d: $65
    ld bc, $666f                                  ; $6a4e: $01 $6f $66
    jr nz, jr_01b_6ac7                            ; $6a51: $20 $74

    ld l, b                                       ; $6a53: $68
    ld h, l                                       ; $6a54: $65
    jr nz, @+$66                                  ; $6a55: $20 $64

    ld l, c                                       ; $6a57: $69
    ld [hl], e                                    ; $6a58: $73
    ld [hl], h                                    ; $6a59: $74

jr_01b_6a5a:
    ld h, c                                       ; $6a5a: $61
    ld l, [hl]                                    ; $6a5b: $6e
    ld h, e                                       ; $6a5c: $63
    ld h, l                                       ; $6a5d: $65

jr_01b_6a5e:
    jr nz, @+$76                                  ; $6a5e: $20 $74

    ld l, a                                       ; $6a60: $6f
    ld [bc], a                                    ; $6a61: $02
    ld h, d                                       ; $6a62: $62
    ld h, l                                       ; $6a63: $65
    jr nz, jr_01b_6ac9                            ; $6a64: $20 $63

jr_01b_6a66:
    ld l, h                                       ; $6a66: $6c
    ld l, c                                       ; $6a67: $69
    ld l, l                                       ; $6a68: $6d
    ld h, d                                       ; $6a69: $62
    ld h, l                                       ; $6a6a: $65
    ld h, h                                       ; $6a6b: $64
    ld l, $20                                     ; $6a6c: $2e $20
    ld b, c                                       ; $6a6e: $41
    ld l, h                                       ; $6a6f: $6c
    ld [hl], e                                    ; $6a70: $73

jr_01b_6a71:
    ld l, a                                       ; $6a71: $6f
    jr nz, jr_01b_6adf                            ; $6a72: $20 $6b

jr_01b_6a74:
    ld h, l                                       ; $6a74: $65
    ld h, l                                       ; $6a75: $65
    ld [hl], b                                    ; $6a76: $70
    ld bc, $6e69                                  ; $6a77: $01 $69 $6e
    jr nz, jr_01b_6ae9                            ; $6a7a: $20 $6d

    ld l, c                                       ; $6a7c: $69
    ld l, [hl]                                    ; $6a7d: $6e
    ld h, h                                       ; $6a7e: $64

jr_01b_6a7f:
    jr nz, jr_01b_6af5                            ; $6a7f: $20 $74

    ld l, b                                       ; $6a81: $68
    ld h, c                                       ; $6a82: $61
    ld [hl], h                                    ; $6a83: $74
    jr nz, @+$7b                                  ; $6a84: $20 $79

    ld l, a                                       ; $6a86: $6f
    ld [hl], l                                    ; $6a87: $75

jr_01b_6a88:
    ld bc, $6163                                  ; $6a88: $01 $63 $61
    ld l, [hl]                                    ; $6a8b: $6e
    daa                                           ; $6a8c: $27

jr_01b_6a8d:
    ld [hl], h                                    ; $6a8d: $74

jr_01b_6a8e:
    jr nz, jr_01b_6af3                            ; $6a8e: $20 $63

    ld h, c                                       ; $6a90: $61
    ld l, h                                       ; $6a91: $6c
    ld h, e                                       ; $6a92: $63
    ld [hl], l                                    ; $6a93: $75
    ld l, h                                       ; $6a94: $6c
    ld h, c                                       ; $6a95: $61
    ld [hl], h                                    ; $6a96: $74
    ld h, l                                       ; $6a97: $65
    jr nz, jr_01b_6b0e                            ; $6a98: $20 $74

    ld l, b                                       ; $6a9a: $68
    ld h, l                                       ; $6a9b: $65
    ld [bc], a                                    ; $6a9c: $02

jr_01b_6a9d:
    ld [hl], d                                    ; $6a9d: $72
    ld [hl], l                                    ; $6a9e: $75
    ld l, [hl]                                    ; $6a9f: $6e
    jr nz, jr_01b_6b08                            ; $6aa0: $20 $66

jr_01b_6aa2:
    ld [hl], d                                    ; $6aa2: $72
    ld l, a                                       ; $6aa3: $6f
    ld l, l                                       ; $6aa4: $6d
    jr nz, @+$76                                  ; $6aa5: $20 $74

    ld l, b                                       ; $6aa7: $68
    ld h, l                                       ; $6aa8: $65

jr_01b_6aa9:
    ld bc, $6166                                  ; $6aa9: $01 $66 $61
    ld l, c                                       ; $6aac: $69
    ld [hl], d                                    ; $6aad: $72
    ld [hl], a                                    ; $6aae: $77
    ld h, c                                       ; $6aaf: $61
    ld a, c                                       ; $6ab0: $79
    ld l, $03                                     ; $6ab1: $2e $03
    nop                                           ; $6ab3: $00
    ld d, h                                       ; $6ab4: $54

jr_01b_6ab5:
    ld l, b                                       ; $6ab5: $68
    ld h, c                                       ; $6ab6: $61
    ld [hl], h                                    ; $6ab7: $74
    daa                                           ; $6ab8: $27
    ld [hl], e                                    ; $6ab9: $73
    jr nz, jr_01b_6b1d                            ; $6aba: $20 $61

    jr nz, jr_01b_6b31                            ; $6abc: $20 $73

    ld h, l                                       ; $6abe: $65
    ld [hl], d                                    ; $6abf: $72
    ld l, c                                       ; $6ac0: $69
    ld l, a                                       ; $6ac1: $6f
    ld [hl], l                                    ; $6ac2: $75
    ld [hl], e                                    ; $6ac3: $73
    ld bc, $6c63                                  ; $6ac4: $01 $63 $6c

jr_01b_6ac7:
    ld l, c                                       ; $6ac7: $69
    ld l, l                                       ; $6ac8: $6d

jr_01b_6ac9:
    ld h, d                                       ; $6ac9: $62
    jr nz, jr_01b_6b32                            ; $6aca: $20 $66

    ld [hl], d                                    ; $6acc: $72
    ld l, a                                       ; $6acd: $6f
    ld l, l                                       ; $6ace: $6d
    jr nz, jr_01b_6b45                            ; $6acf: $20 $74

    ld l, b                                       ; $6ad1: $68
    ld h, l                                       ; $6ad2: $65
    ld bc, $6162                                  ; $6ad3: $01 $62 $61
    ld l, h                                       ; $6ad6: $6c
    ld l, h                                       ; $6ad7: $6c
    jr nz, jr_01b_6b4e                            ; $6ad8: $20 $74

    ld l, a                                       ; $6ada: $6f
    jr nz, jr_01b_6b51                            ; $6adb: $20 $74

    ld l, b                                       ; $6add: $68
    ld h, l                                       ; $6ade: $65

jr_01b_6adf:
    jr nz, jr_01b_6b51                            ; $6adf: $20 $70

    ld l, c                                       ; $6ae1: $69
    ld l, [hl]                                    ; $6ae2: $6e
    ld l, $02                                     ; $6ae3: $2e $02
    ld c, c                                       ; $6ae5: $49
    ld h, [hl]                                    ; $6ae6: $66
    jr nz, jr_01b_6b32                            ; $6ae7: $20 $49

jr_01b_6ae9:
    jr nz, jr_01b_6b4f                            ; $6ae9: $20 $64

    ld l, a                                       ; $6aeb: $6f
    ld l, [hl]                                    ; $6aec: $6e
    daa                                           ; $6aed: $27
    ld [hl], h                                    ; $6aee: $74
    jr nz, @+$69                                  ; $6aef: $20 $67

    ld h, l                                       ; $6af1: $65
    ld [hl], h                                    ; $6af2: $74

jr_01b_6af3:
    jr nz, @+$6f                                  ; $6af3: $20 $6d

jr_01b_6af5:
    ld a, c                                       ; $6af5: $79
    ld bc, $6162                                  ; $6af6: $01 $62 $61
    ld l, h                                       ; $6af9: $6c
    ld l, h                                       ; $6afa: $6c
    jr nz, @+$77                                  ; $6afb: $20 $75

    ld [hl], b                                    ; $6afd: $70
    jr nz, jr_01b_6b74                            ; $6afe: $20 $74

    ld l, b                                       ; $6b00: $68
    ld h, c                                       ; $6b01: $61
    ld [hl], h                                    ; $6b02: $74
    jr nz, jr_01b_6b6d                            ; $6b03: $20 $68

    ld l, c                                       ; $6b05: $69
    ld l, h                                       ; $6b06: $6c
    ld l, h                                       ; $6b07: $6c

jr_01b_6b08:
    inc l                                         ; $6b08: $2c
    ld bc, $2049                                  ; $6b09: $01 $49 $20
    ld [hl], a                                    ; $6b0c: $77
    ld l, a                                       ; $6b0d: $6f

jr_01b_6b0e:
    ld l, [hl]                                    ; $6b0e: $6e
    daa                                           ; $6b0f: $27
    ld [hl], h                                    ; $6b10: $74
    jr nz, jr_01b_6b80                            ; $6b11: $20 $6d

    ld h, c                                       ; $6b13: $61
    ld l, e                                       ; $6b14: $6b
    ld h, l                                       ; $6b15: $65
    jr nz, jr_01b_6b88                            ; $6b16: $20 $70

    ld h, c                                       ; $6b18: $61
    ld [hl], d                                    ; $6b19: $72
    ld l, $03                                     ; $6b1a: $2e $03
    nop                                           ; $6b1c: $00

jr_01b_6b1d:
    ld b, [hl]                                    ; $6b1d: $46
    ld l, c                                       ; $6b1e: $69
    ld [hl], d                                    ; $6b1f: $72
    ld [hl], e                                    ; $6b20: $73
    ld [hl], h                                    ; $6b21: $74
    inc l                                         ; $6b22: $2c
    jr nz, jr_01b_6b88                            ; $6b23: $20 $63

    ld l, b                                       ; $6b25: $68
    ld h, l                                       ; $6b26: $65
    ld h, e                                       ; $6b27: $63
    ld l, e                                       ; $6b28: $6b
    jr nz, jr_01b_6b9f                            ; $6b29: $20 $74

    ld l, b                                       ; $6b2b: $68
    ld h, l                                       ; $6b2c: $65
    ld bc, $6964                                  ; $6b2d: $01 $64 $69
    ld [hl], e                                    ; $6b30: $73

jr_01b_6b31:
    ld [hl], h                                    ; $6b31: $74

jr_01b_6b32:
    ld h, c                                       ; $6b32: $61
    ld l, [hl]                                    ; $6b33: $6e
    ld h, e                                       ; $6b34: $63
    ld h, l                                       ; $6b35: $65
    ld l, $03                                     ; $6b36: $2e $03
    nop                                           ; $6b38: $00
    ld d, h                                       ; $6b39: $54
    ld l, b                                       ; $6b3a: $68
    ld h, l                                       ; $6b3b: $65
    ld l, [hl]                                    ; $6b3c: $6e
    jr nz, jr_01b_6ba0                            ; $6b3d: $20 $61

    jr nz, jr_01b_6ba4                            ; $6b3f: $20 $63

    ld l, h                                       ; $6b41: $6c
    ld [hl], l                                    ; $6b42: $75
    ld h, d                                       ; $6b43: $62
    inc l                                         ; $6b44: $2c

jr_01b_6b45:
    jr nz, jr_01b_6ba9                            ; $6b45: $20 $62

    ld [hl], l                                    ; $6b47: $75
    ld [hl], h                                    ; $6b48: $74
    ld l, $2e                                     ; $6b49: $2e $2e
    ld l, $03                                     ; $6b4b: $2e $03
    nop                                           ; $6b4d: $00

jr_01b_6b4e:
    ld c, c                                       ; $6b4e: $49

jr_01b_6b4f:
    ld [hl], h                                    ; $6b4f: $74
    daa                                           ; $6b50: $27

jr_01b_6b51:
    ld [hl], e                                    ; $6b51: $73
    jr nz, @+$71                                  ; $6b52: $20 $6f

    ld l, [hl]                                    ; $6b54: $6e
    ld l, h                                       ; $6b55: $6c
    ld a, c                                       ; $6b56: $79
    jr nz, jr_01b_6b8b                            ; $6b57: $20 $32

    ld e, c                                       ; $6b59: $59
    jr nz, jr_01b_6bd0                            ; $6b5a: $20 $74

    ld l, a                                       ; $6b5c: $6f
    ld bc, $6874                                  ; $6b5d: $01 $74 $68
    ld h, l                                       ; $6b60: $65
    jr nz, @+$69                                  ; $6b61: $20 $67

    ld [hl], d                                    ; $6b63: $72
    ld h, l                                       ; $6b64: $65
    ld h, l                                       ; $6b65: $65
    ld l, [hl]                                    ; $6b66: $6e
    jr nz, jr_01b_6bce                            ; $6b67: $20 $65

    ld h, h                                       ; $6b69: $64
    ld h, a                                       ; $6b6a: $67
    ld h, l                                       ; $6b6b: $65
    inc l                                         ; $6b6c: $2c

jr_01b_6b6d:
    jr nz, jr_01b_6be2                            ; $6b6d: $20 $73

    ld l, a                                       ; $6b6f: $6f
    ld bc, $2749                                  ; $6b70: $01 $49 $27
    ld l, h                                       ; $6b73: $6c

jr_01b_6b74:
    ld l, h                                       ; $6b74: $6c
    jr nz, @+$77                                  ; $6b75: $20 $75

    ld [hl], e                                    ; $6b77: $73
    ld h, l                                       ; $6b78: $65
    jr nz, jr_01b_6bdc                            ; $6b79: $20 $61

    jr nz, jr_01b_6bed                            ; $6b7b: $20 $70

    ld [hl], l                                    ; $6b7d: $75
    ld [hl], h                                    ; $6b7e: $74
    ld [hl], h                                    ; $6b7f: $74

jr_01b_6b80:
    ld h, l                                       ; $6b80: $65
    ld [hl], d                                    ; $6b81: $72
    ld l, $03                                     ; $6b82: $2e $03
    nop                                           ; $6b84: $00
    ld b, a                                       ; $6b85: $47
    ld l, a                                       ; $6b86: $6f
    ld [hl], h                                    ; $6b87: $74

jr_01b_6b88:
    jr nz, jr_01b_6bf3                            ; $6b88: $20 $69

    ld [hl], h                                    ; $6b8a: $74

jr_01b_6b8b:
    ccf                                           ; $6b8b: $3f
    jr nz, jr_01b_6bd2                            ; $6b8c: $20 $44

    ld l, a                                       ; $6b8e: $6f
    jr nz, jr_01b_6c0a                            ; $6b8f: $20 $79

    ld l, a                                       ; $6b91: $6f
    ld [hl], l                                    ; $6b92: $75
    ld bc, $6177                                  ; $6b93: $01 $77 $61
    ld l, [hl]                                    ; $6b96: $6e
    ld [hl], h                                    ; $6b97: $74
    jr nz, jr_01b_6c0e                            ; $6b98: $20 $74

    ld l, a                                       ; $6b9a: $6f
    jr nz, jr_01b_6c11                            ; $6b9b: $20 $74

    ld [hl], d                                    ; $6b9d: $72
    ld a, c                                       ; $6b9e: $79

jr_01b_6b9f:
    ccf                                           ; $6b9f: $3f

jr_01b_6ba0:
    nop                                           ; $6ba0: $00
    ld b, [hl]                                    ; $6ba1: $46
    ld l, c                                       ; $6ba2: $69
    ld [hl], d                                    ; $6ba3: $72

jr_01b_6ba4:
    ld [hl], e                                    ; $6ba4: $73
    ld [hl], h                                    ; $6ba5: $74
    inc l                                         ; $6ba6: $2c
    jr nz, @+$65                                  ; $6ba7: $20 $63

jr_01b_6ba9:
    ld l, b                                       ; $6ba9: $68
    ld h, l                                       ; $6baa: $65
    ld h, e                                       ; $6bab: $63
    ld l, e                                       ; $6bac: $6b
    jr nz, jr_01b_6c23                            ; $6bad: $20 $74

    ld l, b                                       ; $6baf: $68
    ld h, l                                       ; $6bb0: $65
    ld bc, $6964                                  ; $6bb1: $01 $64 $69
    ld [hl], e                                    ; $6bb4: $73
    ld [hl], h                                    ; $6bb5: $74
    ld h, c                                       ; $6bb6: $61
    ld l, [hl]                                    ; $6bb7: $6e
    ld h, e                                       ; $6bb8: $63
    ld h, l                                       ; $6bb9: $65
    ld l, $03                                     ; $6bba: $2e $03
    nop                                           ; $6bbc: $00
    ld d, h                                       ; $6bbd: $54
    ld l, b                                       ; $6bbe: $68
    ld h, l                                       ; $6bbf: $65
    ld l, [hl]                                    ; $6bc0: $6e
    inc l                                         ; $6bc1: $2c
    jr nz, @+$65                                  ; $6bc2: $20 $63

    ld l, b                                       ; $6bc4: $68
    ld l, a                                       ; $6bc5: $6f
    ld l, a                                       ; $6bc6: $6f
    ld [hl], e                                    ; $6bc7: $73
    ld h, l                                       ; $6bc8: $65
    ld bc, $2061                                  ; $6bc9: $01 $61 $20
    ld h, e                                       ; $6bcc: $63
    ld l, h                                       ; $6bcd: $6c

jr_01b_6bce:
    ld [hl], l                                    ; $6bce: $75
    ld h, d                                       ; $6bcf: $62

jr_01b_6bd0:
    ld l, $03                                     ; $6bd0: $2e $03

jr_01b_6bd2:
    nop                                           ; $6bd2: $00
    ld c, a                                       ; $6bd3: $4f
    ld c, e                                       ; $6bd4: $4b
    ld l, $20                                     ; $6bd5: $2e $20
    ld d, e                                       ; $6bd7: $53
    ld l, b                                       ; $6bd8: $68
    ld l, a                                       ; $6bd9: $6f
    ld l, a                                       ; $6bda: $6f
    ld [hl], h                                    ; $6bdb: $74

jr_01b_6bdc:
    ld hl, $0003                                  ; $6bdc: $21 $03 $00
    ld c, c                                       ; $6bdf: $49
    jr nz, @+$69                                  ; $6be0: $20 $67

jr_01b_6be2:
    ld [hl], l                                    ; $6be2: $75
    ld h, l                                       ; $6be3: $65
    ld [hl], e                                    ; $6be4: $73
    ld [hl], e                                    ; $6be5: $73
    jr nz, jr_01b_6c51                            ; $6be6: $20 $69

    ld [hl], h                                    ; $6be8: $74
    daa                                           ; $6be9: $27
    ld [hl], e                                    ; $6bea: $73
    jr nz, jr_01b_6c55                            ; $6beb: $20 $68

jr_01b_6bed:
    ld h, c                                       ; $6bed: $61
    ld [hl], d                                    ; $6bee: $72
    ld h, h                                       ; $6bef: $64
    ld l, $01                                     ; $6bf0: $2e $01
    ld b, c                                       ; $6bf2: $41

jr_01b_6bf3:
    jr nz, jr_01b_6c68                            ; $6bf3: $20 $73

    ld h, l                                       ; $6bf5: $65
    ld l, [hl]                                    ; $6bf6: $6e
    ld [hl], e                                    ; $6bf7: $73
    ld h, l                                       ; $6bf8: $65
    jr nz, jr_01b_6c61                            ; $6bf9: $20 $66

    ld l, a                                       ; $6bfb: $6f
    ld [hl], d                                    ; $6bfc: $72
    jr nz, jr_01b_6c63                            ; $6bfd: $20 $64

    ld l, c                                       ; $6bff: $69
    ld [hl], e                                    ; $6c00: $73
    dec l                                         ; $6c01: $2d
    ld bc, $6174                                  ; $6c02: $01 $74 $61
    ld l, [hl]                                    ; $6c05: $6e
    ld h, e                                       ; $6c06: $63
    ld h, l                                       ; $6c07: $65
    jr nz, jr_01b_6c73                            ; $6c08: $20 $69

jr_01b_6c0a:
    ld [hl], e                                    ; $6c0a: $73
    jr nz, jr_01b_6c81                            ; $6c0b: $20 $74

    ld l, b                                       ; $6c0d: $68

jr_01b_6c0e:
    ld h, l                                       ; $6c0e: $65
    jr nz, jr_01b_6c7c                            ; $6c0f: $20 $6b

jr_01b_6c11:
    ld h, l                                       ; $6c11: $65
    ld a, c                                       ; $6c12: $79
    ld l, $03                                     ; $6c13: $2e $03
    nop                                           ; $6c15: $00
    ld c, b                                       ; $6c16: $48
    ld h, l                                       ; $6c17: $65
    ld a, c                                       ; $6c18: $79
    inc l                                         ; $6c19: $2c
    jr nz, jr_01b_6c95                            ; $6c1a: $20 $79

    ld l, a                                       ; $6c1c: $6f
    ld [hl], l                                    ; $6c1d: $75
    daa                                           ; $6c1e: $27
    ld [hl], d                                    ; $6c1f: $72
    ld h, l                                       ; $6c20: $65
    jr nz, jr_01b_6c8a                            ; $6c21: $20 $67

jr_01b_6c23:
    ld l, a                                       ; $6c23: $6f
    ld l, a                                       ; $6c24: $6f
    ld h, h                                       ; $6c25: $64
    ld hl, $4901                                  ; $6c26: $21 $01 $49
    daa                                           ; $6c29: $27
    ld l, l                                       ; $6c2a: $6d
    jr nz, jr_01b_6c94                            ; $6c2b: $20 $67

    ld l, a                                       ; $6c2d: $6f
    ld l, [hl]                                    ; $6c2e: $6e
    ld l, [hl]                                    ; $6c2f: $6e
    ld h, c                                       ; $6c30: $61
    jr nz, @+$76                                  ; $6c31: $20 $74

    ld [hl], d                                    ; $6c33: $72
    ld h, c                                       ; $6c34: $61
    ld l, c                                       ; $6c35: $69
    ld l, [hl]                                    ; $6c36: $6e
    inc l                                         ; $6c37: $2c
    ld bc, $6f73                                  ; $6c38: $01 $73 $6f
    jr nz, jr_01b_6c86                            ; $6c3b: $20 $49

    jr nz, @+$79                                  ; $6c3d: $20 $77

    ld l, a                                       ; $6c3f: $6f
    ld l, [hl]                                    ; $6c40: $6e
    daa                                           ; $6c41: $27
    ld [hl], h                                    ; $6c42: $74
    jr nz, jr_01b_6cb1                            ; $6c43: $20 $6c

    ld l, a                                       ; $6c45: $6f
    ld [hl], e                                    ; $6c46: $73
    ld h, l                                       ; $6c47: $65
    ld hl, $0003                                  ; $6c48: $21 $03 $00
    ld c, a                                       ; $6c4b: $4f
    ld l, [hl]                                    ; $6c4c: $6e
    jr nz, jr_01b_6cb0                            ; $6c4d: $20 $61

    jr nz, jr_01b_6cc4                            ; $6c4f: $20 $73

jr_01b_6c51:
    ld l, h                                       ; $6c51: $6c
    ld l, a                                       ; $6c52: $6f
    ld [hl], b                                    ; $6c53: $70
    ld h, l                                       ; $6c54: $65

jr_01b_6c55:
    ld h, h                                       ; $6c55: $64
    jr nz, @+$69                                  ; $6c56: $20 $67

    ld [hl], d                                    ; $6c58: $72
    ld h, l                                       ; $6c59: $65
    ld h, l                                       ; $6c5a: $65
    ld l, [hl]                                    ; $6c5b: $6e
    inc l                                         ; $6c5c: $2c
    ld bc, $6567                                  ; $6c5d: $01 $67 $65
    ld [hl], h                                    ; $6c60: $74

jr_01b_6c61:
    ld [hl], h                                    ; $6c61: $74
    ld l, c                                       ; $6c62: $69

jr_01b_6c63:
    ld l, [hl]                                    ; $6c63: $6e
    ld h, a                                       ; $6c64: $67
    jr nz, jr_01b_6cdb                            ; $6c65: $20 $74

    ld l, b                                       ; $6c67: $68

jr_01b_6c68:
    ld h, l                                       ; $6c68: $65
    jr nz, jr_01b_6ccd                            ; $6c69: $20 $62

    ld h, c                                       ; $6c6b: $61
    ld l, h                                       ; $6c6c: $6c
    ld l, h                                       ; $6c6d: $6c
    ld bc, $6f74                                  ; $6c6e: $01 $74 $6f
    jr nz, jr_01b_6ce7                            ; $6c71: $20 $74

jr_01b_6c73:
    ld l, b                                       ; $6c73: $68
    ld h, l                                       ; $6c74: $65
    jr nz, jr_01b_6cea                            ; $6c75: $20 $73

    ld h, c                                       ; $6c77: $61
    ld l, l                                       ; $6c78: $6d
    ld h, l                                       ; $6c79: $65
    jr nz, jr_01b_6ce8                            ; $6c7a: $20 $6c

jr_01b_6c7c:
    ld h, l                                       ; $6c7c: $65
    halt                                          ; $6c7d: $76
    ld h, l                                       ; $6c7e: $65
    ld l, h                                       ; $6c7f: $6c
    ld [bc], a                                    ; $6c80: $02

jr_01b_6c81:
    ld h, c                                       ; $6c81: $61
    ld [hl], e                                    ; $6c82: $73
    jr nz, jr_01b_6cf9                            ; $6c83: $20 $74

    ld l, b                                       ; $6c85: $68

jr_01b_6c86:
    ld h, l                                       ; $6c86: $65
    jr nz, jr_01b_6cf9                            ; $6c87: $20 $70

    ld l, c                                       ; $6c89: $69

jr_01b_6c8a:
    ld l, [hl]                                    ; $6c8a: $6e
    jr nz, jr_01b_6cf6                            ; $6c8b: $20 $69

    ld [hl], e                                    ; $6c8d: $73
    jr nz, jr_01b_6cf1                            ; $6c8e: $20 $61

    ld bc, $7573                                  ; $6c90: $01 $73 $75
    ld h, e                                       ; $6c93: $63

jr_01b_6c94:
    ld h, e                                       ; $6c94: $63

jr_01b_6c95:
    ld h, l                                       ; $6c95: $65
    ld [hl], e                                    ; $6c96: $73
    ld [hl], e                                    ; $6c97: $73
    ld h, [hl]                                    ; $6c98: $66
    ld [hl], l                                    ; $6c99: $75
    ld l, h                                       ; $6c9a: $6c
    jr nz, @+$72                                  ; $6c9b: $20 $70

    ld [hl], l                                    ; $6c9d: $75
    ld [hl], h                                    ; $6c9e: $74
    ld [hl], h                                    ; $6c9f: $74
    ld l, $03                                     ; $6ca0: $2e $03
    nop                                           ; $6ca2: $00
    ld e, c                                       ; $6ca3: $59
    ld l, a                                       ; $6ca4: $6f
    ld [hl], l                                    ; $6ca5: $75
    jr nz, jr_01b_6d0b                            ; $6ca6: $20 $63

    ld h, c                                       ; $6ca8: $61
    ld l, [hl]                                    ; $6ca9: $6e
    daa                                           ; $6caa: $27
    ld [hl], h                                    ; $6cab: $74
    jr nz, jr_01b_6d0f                            ; $6cac: $20 $61

    ld [hl], b                                    ; $6cae: $70
    ld [hl], b                                    ; $6caf: $70

jr_01b_6cb0:
    ld [hl], d                                    ; $6cb0: $72

jr_01b_6cb1:
    ld l, a                                       ; $6cb1: $6f
    ld h, c                                       ; $6cb2: $61
    ld h, e                                       ; $6cb3: $63
    ld l, b                                       ; $6cb4: $68
    ld bc, $2061                                  ; $6cb5: $01 $61 $20
    ld [hl], b                                    ; $6cb8: $70
    ld l, c                                       ; $6cb9: $69
    ld l, [hl]                                    ; $6cba: $6e
    jr nz, jr_01b_6d1e                            ; $6cbb: $20 $61

    ld [hl], h                                    ; $6cbd: $74
    jr nz, jr_01b_6d34                            ; $6cbe: $20 $74

    ld l, b                                       ; $6cc0: $68
    ld h, l                                       ; $6cc1: $65
    jr nz, jr_01b_6d32                            ; $6cc2: $20 $6e

jr_01b_6cc4:
    ld h, l                                       ; $6cc4: $65
    ld h, c                                       ; $6cc5: $61
    ld [hl], d                                    ; $6cc6: $72
    ld bc, $6e65                                  ; $6cc7: $01 $65 $6e
    ld h, h                                       ; $6cca: $64
    jr nz, jr_01b_6d3c                            ; $6ccb: $20 $6f

jr_01b_6ccd:
    ld h, [hl]                                    ; $6ccd: $66
    jr nz, jr_01b_6d31                            ; $6cce: $20 $61

    jr nz, jr_01b_6d39                            ; $6cd0: $20 $67

    ld [hl], d                                    ; $6cd2: $72
    ld h, l                                       ; $6cd3: $65
    ld h, l                                       ; $6cd4: $65
    ld l, [hl]                                    ; $6cd5: $6e
    jr nz, jr_01b_6d4c                            ; $6cd6: $20 $74

    ld l, b                                       ; $6cd8: $68
    ld h, c                                       ; $6cd9: $61
    ld [hl], h                                    ; $6cda: $74

jr_01b_6cdb:
    daa                                           ; $6cdb: $27
    ld [hl], e                                    ; $6cdc: $73
    ld [bc], a                                    ; $6cdd: $02
    ld h, a                                       ; $6cde: $67
    ld [hl], l                                    ; $6cdf: $75
    ld h, c                                       ; $6ce0: $61
    ld [hl], d                                    ; $6ce1: $72
    ld h, h                                       ; $6ce2: $64
    ld h, l                                       ; $6ce3: $65
    ld h, h                                       ; $6ce4: $64
    jr nz, jr_01b_6d49                            ; $6ce5: $20 $62

jr_01b_6ce7:
    ld a, c                                       ; $6ce7: $79

jr_01b_6ce8:
    jr nz, @+$63                                  ; $6ce8: $20 $61

jr_01b_6cea:
    ld bc, $6168                                  ; $6cea: $01 $68 $61
    ld a, d                                       ; $6ced: $7a
    ld h, c                                       ; $6cee: $61
    ld [hl], d                                    ; $6cef: $72
    ld h, h                                       ; $6cf0: $64

jr_01b_6cf1:
    inc l                                         ; $6cf1: $2c
    jr nz, @+$74                                  ; $6cf2: $20 $72

    ld l, c                                       ; $6cf4: $69
    ld h, a                                       ; $6cf5: $67

jr_01b_6cf6:
    ld l, b                                       ; $6cf6: $68
    ld [hl], h                                    ; $6cf7: $74
    ccf                                           ; $6cf8: $3f

jr_01b_6cf9:
    nop                                           ; $6cf9: $00
    ld c, b                                       ; $6cfa: $48
    ld [hl], l                                    ; $6cfb: $75
    ld l, b                                       ; $6cfc: $68
    ccf                                           ; $6cfd: $3f
    jr nz, @+$45                                  ; $6cfe: $20 $43

    ld h, c                                       ; $6d00: $61
    ld l, [hl]                                    ; $6d01: $6e
    jr nz, @+$7b                                  ; $6d02: $20 $79

    ld l, a                                       ; $6d04: $6f
    ld [hl], l                                    ; $6d05: $75
    jr nz, @+$66                                  ; $6d06: $20 $64

    ld l, a                                       ; $6d08: $6f
    jr nz, @+$63                                  ; $6d09: $20 $61

jr_01b_6d0b:
    ld bc, $6f6c                                  ; $6d0b: $01 $6c $6f
    ld h, d                                       ; $6d0e: $62

jr_01b_6d0f:
    jr nz, jr_01b_6d84                            ; $6d0f: $20 $73

    ld l, b                                       ; $6d11: $68
    ld l, a                                       ; $6d12: $6f
    ld [hl], h                                    ; $6d13: $74
    inc l                                         ; $6d14: $2c
    jr nz, jr_01b_6d1e                            ; $6d15: $20 $07

    ccf                                           ; $6d17: $3f
    ld [bc], a                                    ; $6d18: $02
    ld e, c                                       ; $6d19: $59
    ld h, l                                       ; $6d1a: $65
    ld h, c                                       ; $6d1b: $61
    ld l, b                                       ; $6d1c: $68
    inc l                                         ; $6d1d: $2c

jr_01b_6d1e:
    jr nz, @+$4b                                  ; $6d1e: $20 $49

    jr nz, jr_01b_6d90                            ; $6d20: $20 $6e

    ld h, l                                       ; $6d22: $65
    ld h, l                                       ; $6d23: $65
    ld h, h                                       ; $6d24: $64
    jr nz, jr_01b_6d9b                            ; $6d25: $20 $74

    ld l, a                                       ; $6d27: $6f
    ld bc, $616d                                  ; $6d28: $01 $6d $61
    ld [hl], e                                    ; $6d2b: $73
    ld [hl], h                                    ; $6d2c: $74
    ld h, l                                       ; $6d2d: $65
    ld [hl], d                                    ; $6d2e: $72
    jr nz, jr_01b_6da5                            ; $6d2f: $20 $74

jr_01b_6d31:
    ld l, b                                       ; $6d31: $68

jr_01b_6d32:
    ld h, c                                       ; $6d32: $61
    ld [hl], h                                    ; $6d33: $74

jr_01b_6d34:
    inc l                                         ; $6d34: $2c
    jr nz, jr_01b_6dab                            ; $6d35: $20 $74

    ld l, a                                       ; $6d37: $6f
    ld l, a                                       ; $6d38: $6f

jr_01b_6d39:
    ld l, $03                                     ; $6d39: $2e $03
    nop                                           ; $6d3b: $00

jr_01b_6d3c:
    ld c, c                                       ; $6d3c: $49
    jr nz, jr_01b_6db6                            ; $6d3d: $20 $77

    ld l, c                                       ; $6d3f: $69
    ld [hl], e                                    ; $6d40: $73
    ld l, b                                       ; $6d41: $68
    jr nz, @+$4b                                  ; $6d42: $20 $49

    jr nz, jr_01b_6da9                            ; $6d44: $20 $63

    ld l, a                                       ; $6d46: $6f
    ld [hl], l                                    ; $6d47: $75
    ld l, h                                       ; $6d48: $6c

jr_01b_6d49:
    ld h, h                                       ; $6d49: $64
    jr nz, jr_01b_6db3                            ; $6d4a: $20 $67

jr_01b_6d4c:
    ld h, l                                       ; $6d4c: $65
    ld [hl], h                                    ; $6d4d: $74
    ld bc, $6874                                  ; $6d4e: $01 $74 $68
    ld h, l                                       ; $6d51: $65
    jr nz, jr_01b_6db6                            ; $6d52: $20 $62

    ld h, c                                       ; $6d54: $61
    ld l, h                                       ; $6d55: $6c
    ld l, h                                       ; $6d56: $6c
    jr nz, jr_01b_6dcb                            ; $6d57: $20 $72

    ld l, c                                       ; $6d59: $69
    ld h, a                                       ; $6d5a: $67
    ld l, b                                       ; $6d5b: $68
    ld [hl], h                                    ; $6d5c: $74
    jr nz, jr_01b_6dd3                            ; $6d5d: $20 $74

    ld l, a                                       ; $6d5f: $6f
    jr nz, jr_01b_6dd6                            ; $6d60: $20 $74

    ld l, b                                       ; $6d62: $68
    ld h, l                                       ; $6d63: $65
    ld bc, $6970                                  ; $6d64: $01 $70 $69
    ld l, [hl]                                    ; $6d67: $6e
    jr nz, @+$71                                  ; $6d68: $20 $6f

    ld l, [hl]                                    ; $6d6a: $6e
    jr nz, jr_01b_6de1                            ; $6d6b: $20 $74

    ld l, b                                       ; $6d6d: $68
    ld l, a                                       ; $6d6e: $6f
    ld [hl], e                                    ; $6d6f: $73
    ld h, l                                       ; $6d70: $65
    jr nz, jr_01b_6de6                            ; $6d71: $20 $73

    ld l, b                                       ; $6d73: $68
    ld l, a                                       ; $6d74: $6f
    ld [hl], h                                    ; $6d75: $74
    ld [hl], e                                    ; $6d76: $73
    ld l, $02                                     ; $6d77: $2e $02
    ld e, c                                       ; $6d79: $59
    ld l, a                                       ; $6d7a: $6f
    ld [hl], l                                    ; $6d7b: $75
    jr nz, jr_01b_6de1                            ; $6d7c: $20 $63

    ld h, c                                       ; $6d7e: $61
    ld l, [hl]                                    ; $6d7f: $6e
    jr nz, jr_01b_6df9                            ; $6d80: $20 $77

    ld l, c                                       ; $6d82: $69
    ld [hl], h                                    ; $6d83: $74

jr_01b_6d84:
    ld l, b                                       ; $6d84: $68
    jr nz, @+$63                                  ; $6d85: $20 $61

    jr nz, jr_01b_6d8a                            ; $6d87: $20 $01

    ld l, h                                       ; $6d89: $6c

jr_01b_6d8a:
    ld l, a                                       ; $6d8a: $6f
    ld h, d                                       ; $6d8b: $62
    jr nz, jr_01b_6e01                            ; $6d8c: $20 $73

    ld l, b                                       ; $6d8e: $68
    ld l, a                                       ; $6d8f: $6f

jr_01b_6d90:
    ld [hl], h                                    ; $6d90: $74
    ld l, $03                                     ; $6d91: $2e $03
    nop                                           ; $6d93: $00
    ld b, c                                       ; $6d94: $41
    ld [hl], b                                    ; $6d95: $70
    ld [hl], b                                    ; $6d96: $70
    ld [hl], d                                    ; $6d97: $72
    ld l, a                                       ; $6d98: $6f
    ld h, c                                       ; $6d99: $61
    ld h, e                                       ; $6d9a: $63

jr_01b_6d9b:
    ld l, b                                       ; $6d9b: $68
    ld l, c                                       ; $6d9c: $69
    ld l, [hl]                                    ; $6d9d: $6e
    ld h, a                                       ; $6d9e: $67
    jr nz, jr_01b_6e02                            ; $6d9f: $20 $61

    jr nz, jr_01b_6e13                            ; $6da1: $20 $70

    ld l, c                                       ; $6da3: $69
    ld l, [hl]                                    ; $6da4: $6e

jr_01b_6da5:
    ld bc, $6874                                  ; $6da5: $01 $74 $68
    ld h, c                                       ; $6da8: $61

jr_01b_6da9:
    ld [hl], h                                    ; $6da9: $74
    daa                                           ; $6daa: $27

jr_01b_6dab:
    ld [hl], e                                    ; $6dab: $73
    jr nz, @+$37                                  ; $6dac: $20 $35

    ld e, c                                       ; $6dae: $59
    jr nz, jr_01b_6e17                            ; $6daf: $20 $66

    ld [hl], d                                    ; $6db1: $72
    ld l, a                                       ; $6db2: $6f

jr_01b_6db3:
    ld l, l                                       ; $6db3: $6d
    jr nz, jr_01b_6e17                            ; $6db4: $20 $61

jr_01b_6db6:
    ld bc, $7567                                  ; $6db6: $01 $67 $75
    ld h, c                                       ; $6db9: $61
    ld [hl], d                                    ; $6dba: $72
    ld h, h                                       ; $6dbb: $64
    jr nz, jr_01b_6e20                            ; $6dbc: $20 $62

    ld [hl], l                                    ; $6dbe: $75
    ld l, [hl]                                    ; $6dbf: $6e
    ld l, e                                       ; $6dc0: $6b
    ld h, l                                       ; $6dc1: $65
    ld [hl], d                                    ; $6dc2: $72
    jr nz, jr_01b_6e2e                            ; $6dc3: $20 $69

    ld [hl], e                                    ; $6dc5: $73
    jr nz, @+$63                                  ; $6dc6: $20 $61

    ld [bc], a                                    ; $6dc8: $02
    ld [hl], h                                    ; $6dc9: $74
    ld l, a                                       ; $6dca: $6f

jr_01b_6dcb:
    ld [hl], l                                    ; $6dcb: $75
    ld h, a                                       ; $6dcc: $67
    ld l, b                                       ; $6dcd: $68
    jr nz, jr_01b_6e43                            ; $6dce: $20 $73

    ld l, b                                       ; $6dd0: $68
    ld l, a                                       ; $6dd1: $6f
    ld [hl], h                                    ; $6dd2: $74

jr_01b_6dd3:
    inc l                                         ; $6dd3: $2c
    jr nz, @+$64                                  ; $6dd4: $20 $62

jr_01b_6dd6:
    ld [hl], l                                    ; $6dd6: $75
    ld [hl], h                                    ; $6dd7: $74
    jr nz, jr_01b_6e3b                            ; $6dd8: $20 $61

    ld bc, $3032                                  ; $6dda: $01 $32 $30
    ld e, c                                       ; $6ddd: $59
    jr nz, jr_01b_6e4c                            ; $6dde: $20 $6c

    ld l, a                                       ; $6de0: $6f

jr_01b_6de1:
    ld h, d                                       ; $6de1: $62
    jr nz, @+$75                                  ; $6de2: $20 $73

    ld l, b                                       ; $6de4: $68
    ld l, a                                       ; $6de5: $6f

jr_01b_6de6:
    ld [hl], h                                    ; $6de6: $74
    jr nz, jr_01b_6e59                            ; $6de7: $20 $70

    ld [hl], l                                    ; $6de9: $75
    ld [hl], h                                    ; $6dea: $74
    ld [hl], e                                    ; $6deb: $73
    ld bc, $6f79                                  ; $6dec: $01 $79 $6f
    ld [hl], l                                    ; $6def: $75
    jr nz, jr_01b_6e64                            ; $6df0: $20 $72

    ld l, c                                       ; $6df2: $69
    ld h, a                                       ; $6df3: $67
    ld l, b                                       ; $6df4: $68
    ld [hl], h                                    ; $6df5: $74
    jr nz, @+$76                                  ; $6df6: $20 $74

    ld l, b                                       ; $6df8: $68

jr_01b_6df9:
    ld h, l                                       ; $6df9: $65
    ld [hl], d                                    ; $6dfa: $72
    ld h, l                                       ; $6dfb: $65
    ld hl, $0003                                  ; $6dfc: $21 $03 $00
    ld b, [hl]                                    ; $6dff: $46
    ld l, c                                       ; $6e00: $69

jr_01b_6e01:
    ld [hl], d                                    ; $6e01: $72

jr_01b_6e02:
    ld [hl], e                                    ; $6e02: $73
    ld [hl], h                                    ; $6e03: $74
    inc l                                         ; $6e04: $2c
    jr nz, @+$75                                  ; $6e05: $20 $73

    ld h, l                                       ; $6e07: $65
    ld l, h                                       ; $6e08: $6c
    ld h, l                                       ; $6e09: $65
    ld h, e                                       ; $6e0a: $63
    ld [hl], h                                    ; $6e0b: $74
    ld bc, $6e61                                  ; $6e0c: $01 $61 $6e
    jr nz, jr_01b_6e72                            ; $6e0f: $20 $61

    ld [hl], b                                    ; $6e11: $70
    ld [hl], b                                    ; $6e12: $70

jr_01b_6e13:
    ld [hl], d                                    ; $6e13: $72
    ld l, a                                       ; $6e14: $6f
    ld h, c                                       ; $6e15: $61
    ld h, e                                       ; $6e16: $63

jr_01b_6e17:
    ld l, b                                       ; $6e17: $68
    ld l, $03                                     ; $6e18: $2e $03
    nop                                           ; $6e1a: $00
    ld c, [hl]                                    ; $6e1b: $4e
    ld h, l                                       ; $6e1c: $65
    ld a, b                                       ; $6e1d: $78
    ld [hl], h                                    ; $6e1e: $74
    inc l                                         ; $6e1f: $2c

jr_01b_6e20:
    jr nz, jr_01b_6e85                            ; $6e20: $20 $63

    ld l, b                                       ; $6e22: $68
    ld l, a                                       ; $6e23: $6f
    ld l, a                                       ; $6e24: $6f
    ld [hl], e                                    ; $6e25: $73
    ld h, l                                       ; $6e26: $65
    ld bc, $2061                                  ; $6e27: $01 $61 $20
    ld h, e                                       ; $6e2a: $63
    ld l, h                                       ; $6e2b: $6c
    ld [hl], l                                    ; $6e2c: $75
    ld h, d                                       ; $6e2d: $62

jr_01b_6e2e:
    ld l, $03                                     ; $6e2e: $2e $03
    nop                                           ; $6e30: $00
    ld c, c                                       ; $6e31: $49
    jr nz, jr_01b_6eab                            ; $6e32: $20 $77

    ld h, c                                       ; $6e34: $61
    ld l, [hl]                                    ; $6e35: $6e
    ld [hl], h                                    ; $6e36: $74
    jr nz, jr_01b_6e9a                            ; $6e37: $20 $61

    jr nz, jr_01b_6e6d                            ; $6e39: $20 $32

jr_01b_6e3b:
    jr nc, jr_01b_6e96                            ; $6e3b: $30 $59

    jr nz, jr_01b_6ea2                            ; $6e3d: $20 $63

    ld h, c                                       ; $6e3f: $61
    ld [hl], d                                    ; $6e40: $72
    ld [hl], d                                    ; $6e41: $72
    ld a, c                                       ; $6e42: $79

jr_01b_6e43:
    ld bc, $6e61                                  ; $6e43: $01 $61 $6e
    ld h, h                                       ; $6e46: $64
    jr nz, jr_01b_6eaa                            ; $6e47: $20 $61

    jr nz, jr_01b_6e80                            ; $6e49: $20 $35

    ld e, c                                       ; $6e4b: $59

jr_01b_6e4c:
    jr nz, jr_01b_6ec0                            ; $6e4c: $20 $72

    ld [hl], l                                    ; $6e4e: $75
    ld l, [hl]                                    ; $6e4f: $6e
    ld l, $20                                     ; $6e50: $2e $20
    ld c, c                                       ; $6e52: $49
    daa                                           ; $6e53: $27
    ld l, h                                       ; $6e54: $6c
    ld l, h                                       ; $6e55: $6c
    ld bc, $7375                                  ; $6e56: $01 $75 $73

jr_01b_6e59:
    ld h, l                                       ; $6e59: $65
    jr nz, jr_01b_6ec9                            ; $6e5a: $20 $6d

    ld a, c                                       ; $6e5c: $79
    jr nz, jr_01b_6eb2                            ; $6e5d: $20 $53

    ld d, a                                       ; $6e5f: $57
    ld l, $20                                     ; $6e60: $2e $20
    ld d, e                                       ; $6e62: $53
    ld [hl], h                                    ; $6e63: $74

jr_01b_6e64:
    ld h, c                                       ; $6e64: $61
    ld [hl], d                                    ; $6e65: $72
    ld [hl], h                                    ; $6e66: $74
    ld [bc], a                                    ; $6e67: $02
    ld [hl], h                                    ; $6e68: $74
    ld l, b                                       ; $6e69: $68
    ld h, l                                       ; $6e6a: $65
    jr nz, jr_01b_6ed0                            ; $6e6b: $20 $63

jr_01b_6e6d:
    ld [hl], l                                    ; $6e6d: $75
    ld [hl], d                                    ; $6e6e: $72
    ld [hl], e                                    ; $6e6f: $73
    ld l, a                                       ; $6e70: $6f
    ld [hl], d                                    ; $6e71: $72

jr_01b_6e72:
    inc l                                         ; $6e72: $2c
    jr nz, jr_01b_6ee9                            ; $6e73: $20 $74

    ld l, b                                       ; $6e75: $68
    ld h, l                                       ; $6e76: $65
    ld l, [hl]                                    ; $6e77: $6e
    ld bc, $7270                                  ; $6e78: $01 $70 $72
    ld h, l                                       ; $6e7b: $65
    ld [hl], e                                    ; $6e7c: $73
    ld [hl], e                                    ; $6e7d: $73
    jr nz, jr_01b_6ee4                            ; $6e7e: $20 $64

jr_01b_6e80:
    ld l, a                                       ; $6e80: $6f
    ld [hl], a                                    ; $6e81: $77
    ld l, [hl]                                    ; $6e82: $6e
    jr nz, jr_01b_6ef4                            ; $6e83: $20 $6f

jr_01b_6e85:
    ld l, [hl]                                    ; $6e85: $6e
    jr nz, jr_01b_6efc                            ; $6e86: $20 $74

    ld l, b                                       ; $6e88: $68
    ld h, l                                       ; $6e89: $65
    ld bc, $202b                                  ; $6e8a: $01 $2b $20
    ld b, e                                       ; $6e8d: $43
    ld l, a                                       ; $6e8e: $6f
    ld l, [hl]                                    ; $6e8f: $6e
    ld [hl], h                                    ; $6e90: $74
    ld [hl], d                                    ; $6e91: $72
    ld l, a                                       ; $6e92: $6f
    ld l, h                                       ; $6e93: $6c
    jr nz, jr_01b_6ee6                            ; $6e94: $20 $50

jr_01b_6e96:
    ld h, c                                       ; $6e96: $61
    ld h, h                                       ; $6e97: $64
    ld [bc], a                                    ; $6e98: $02
    ld h, [hl]                                    ; $6e99: $66

jr_01b_6e9a:
    ld l, a                                       ; $6e9a: $6f
    ld [hl], d                                    ; $6e9b: $72
    jr nz, jr_01b_6f00                            ; $6e9c: $20 $62

    ld h, c                                       ; $6e9e: $61
    ld h, e                                       ; $6e9f: $63
    ld l, e                                       ; $6ea0: $6b
    ld [hl], e                                    ; $6ea1: $73

jr_01b_6ea2:
    ld [hl], b                                    ; $6ea2: $70
    ld l, c                                       ; $6ea3: $69
    ld l, [hl]                                    ; $6ea4: $6e
    ld l, $03                                     ; $6ea5: $2e $03
    nop                                           ; $6ea7: $00
    ld c, b                                       ; $6ea8: $48
    ld l, l                                       ; $6ea9: $6d

jr_01b_6eaa:
    ld l, l                                       ; $6eaa: $6d

jr_01b_6eab:
    inc l                                         ; $6eab: $2c
    jr nz, jr_01b_6f1c                            ; $6eac: $20 $6e

    ld l, a                                       ; $6eae: $6f
    ld [hl], h                                    ; $6eaf: $74
    jr nz, jr_01b_6f14                            ; $6eb0: $20 $62

jr_01b_6eb2:
    ld h, c                                       ; $6eb2: $61
    ld h, h                                       ; $6eb3: $64
    ld hl, $5701                                  ; $6eb4: $21 $01 $57
    ld h, c                                       ; $6eb7: $61
    ld l, [hl]                                    ; $6eb8: $6e
    ld [hl], h                                    ; $6eb9: $74
    jr nz, jr_01b_6f30                            ; $6eba: $20 $74

    ld l, a                                       ; $6ebc: $6f
    jr nz, jr_01b_6f33                            ; $6ebd: $20 $74

    ld [hl], d                                    ; $6ebf: $72

jr_01b_6ec0:
    ld a, c                                       ; $6ec0: $79
    ccf                                           ; $6ec1: $3f
    nop                                           ; $6ec2: $00
    ld b, [hl]                                    ; $6ec3: $46
    ld l, c                                       ; $6ec4: $69
    ld [hl], d                                    ; $6ec5: $72
    ld [hl], e                                    ; $6ec6: $73
    ld [hl], h                                    ; $6ec7: $74
    inc l                                         ; $6ec8: $2c

jr_01b_6ec9:
    jr nz, jr_01b_6f3e                            ; $6ec9: $20 $73

    ld h, l                                       ; $6ecb: $65
    ld l, h                                       ; $6ecc: $6c
    ld h, l                                       ; $6ecd: $65
    ld h, e                                       ; $6ece: $63
    ld [hl], h                                    ; $6ecf: $74

jr_01b_6ed0:
    ld bc, $6e61                                  ; $6ed0: $01 $61 $6e
    jr nz, @+$63                                  ; $6ed3: $20 $61

    ld [hl], b                                    ; $6ed5: $70
    ld [hl], b                                    ; $6ed6: $70
    ld [hl], d                                    ; $6ed7: $72
    ld l, a                                       ; $6ed8: $6f
    ld h, c                                       ; $6ed9: $61
    ld h, e                                       ; $6eda: $63
    ld l, b                                       ; $6edb: $68
    ld l, $03                                     ; $6edc: $2e $03
    nop                                           ; $6ede: $00
    ld c, [hl]                                    ; $6edf: $4e
    ld h, l                                       ; $6ee0: $65
    ld a, b                                       ; $6ee1: $78
    ld [hl], h                                    ; $6ee2: $74
    inc l                                         ; $6ee3: $2c

jr_01b_6ee4:
    jr nz, jr_01b_6f49                            ; $6ee4: $20 $63

jr_01b_6ee6:
    ld l, b                                       ; $6ee6: $68
    ld l, a                                       ; $6ee7: $6f
    ld l, a                                       ; $6ee8: $6f

jr_01b_6ee9:
    ld [hl], e                                    ; $6ee9: $73
    ld h, l                                       ; $6eea: $65
    ld bc, $2061                                  ; $6eeb: $01 $61 $20
    ld h, e                                       ; $6eee: $63
    ld l, h                                       ; $6eef: $6c
    ld [hl], l                                    ; $6ef0: $75
    ld h, d                                       ; $6ef1: $62
    ld l, $03                                     ; $6ef2: $2e $03

jr_01b_6ef4:
    nop                                           ; $6ef4: $00
    ld c, a                                       ; $6ef5: $4f
    ld c, e                                       ; $6ef6: $4b
    ld l, $20                                     ; $6ef7: $2e $20
    ld b, a                                       ; $6ef9: $47
    ld l, c                                       ; $6efa: $69
    halt                                          ; $6efb: $76

jr_01b_6efc:
    ld h, l                                       ; $6efc: $65
    jr nz, jr_01b_6f68                            ; $6efd: $20 $69

    ld [hl], h                                    ; $6eff: $74

jr_01b_6f00:
    jr nz, jr_01b_6f63                            ; $6f00: $20 $61

    jr nz, jr_01b_6f78                            ; $6f02: $20 $74

    ld [hl], d                                    ; $6f04: $72
    ld a, c                                       ; $6f05: $79
    ld hl, $0003                                  ; $6f06: $21 $03 $00
    ld c, c                                       ; $6f09: $49
    ld [hl], h                                    ; $6f0a: $74
    daa                                           ; $6f0b: $27
    ld [hl], e                                    ; $6f0c: $73
    jr nz, jr_01b_6f70                            ; $6f0d: $20 $61

    jr nz, jr_01b_6f85                            ; $6f0f: $20 $74

    ld l, a                                       ; $6f11: $6f
    ld [hl], l                                    ; $6f12: $75
    ld h, a                                       ; $6f13: $67

jr_01b_6f14:
    ld l, b                                       ; $6f14: $68
    jr nz, jr_01b_6f79                            ; $6f15: $20 $62

    ld [hl], l                                    ; $6f17: $75
    ld [hl], h                                    ; $6f18: $74
    ld bc, $656e                                  ; $6f19: $01 $6e $65

jr_01b_6f1c:
    ld h, e                                       ; $6f1c: $63
    ld h, l                                       ; $6f1d: $65
    ld [hl], e                                    ; $6f1e: $73
    ld [hl], e                                    ; $6f1f: $73
    ld h, c                                       ; $6f20: $61
    ld [hl], d                                    ; $6f21: $72
    ld a, c                                       ; $6f22: $79
    jr nz, jr_01b_6f98                            ; $6f23: $20 $73

    ld l, b                                       ; $6f25: $68
    ld l, a                                       ; $6f26: $6f
    ld [hl], h                                    ; $6f27: $74
    inc l                                         ; $6f28: $2c
    jr nz, jr_01b_6f9e                            ; $6f29: $20 $73

    ld l, a                                       ; $6f2b: $6f
    ld bc, $7270                                  ; $6f2c: $01 $70 $72
    ld h, c                                       ; $6f2f: $61

jr_01b_6f30:
    ld h, e                                       ; $6f30: $63
    ld [hl], h                                    ; $6f31: $74
    ld l, c                                       ; $6f32: $69

jr_01b_6f33:
    ld h, e                                       ; $6f33: $63
    ld h, l                                       ; $6f34: $65
    jr nz, jr_01b_6fac                            ; $6f35: $20 $75

    ld [hl], b                                    ; $6f37: $70
    ld hl, $0003                                  ; $6f38: $21 $03 $00
    ld e, c                                       ; $6f3b: $59
    ld l, a                                       ; $6f3c: $6f
    ld [hl], l                                    ; $6f3d: $75

jr_01b_6f3e:
    jr nz, jr_01b_6fad                            ; $6f3e: $20 $6d

    ld l, c                                       ; $6f40: $69
    ld [hl], e                                    ; $6f41: $73
    ld [hl], e                                    ; $6f42: $73
    ld h, l                                       ; $6f43: $65
    ld h, h                                       ; $6f44: $64
    jr nz, jr_01b_6f6e                            ; $6f45: $20 $27

    ld h, e                                       ; $6f47: $63
    ld h, c                                       ; $6f48: $61

jr_01b_6f49:
    ld [hl], l                                    ; $6f49: $75
    ld [hl], e                                    ; $6f4a: $73
    ld h, l                                       ; $6f4b: $65
    ld bc, $6f79                                  ; $6f4c: $01 $79 $6f
    ld [hl], l                                    ; $6f4f: $75
    jr nz, jr_01b_6fb6                            ; $6f50: $20 $64

    ld l, c                                       ; $6f52: $69
    ld h, h                                       ; $6f53: $64
    ld l, [hl]                                    ; $6f54: $6e
    daa                                           ; $6f55: $27
    ld [hl], h                                    ; $6f56: $74
    jr nz, jr_01b_6fce                            ; $6f57: $20 $75

    ld [hl], e                                    ; $6f59: $73
    ld h, l                                       ; $6f5a: $65
    ld bc, $6162                                  ; $6f5b: $01 $62 $61
    ld h, e                                       ; $6f5e: $63
    ld l, e                                       ; $6f5f: $6b
    ld [hl], e                                    ; $6f60: $73
    ld [hl], b                                    ; $6f61: $70
    ld l, c                                       ; $6f62: $69

jr_01b_6f63:
    ld l, [hl]                                    ; $6f63: $6e
    ld l, $02                                     ; $6f64: $2e $02
    ld e, c                                       ; $6f66: $59
    ld l, a                                       ; $6f67: $6f

jr_01b_6f68:
    ld [hl], l                                    ; $6f68: $75
    jr nz, @+$75                                  ; $6f69: $20 $73

    ld l, b                                       ; $6f6b: $68
    ld l, a                                       ; $6f6c: $6f
    ld [hl], l                                    ; $6f6d: $75

jr_01b_6f6e:
    ld l, h                                       ; $6f6e: $6c
    ld h, h                                       ; $6f6f: $64

jr_01b_6f70:
    jr nz, jr_01b_6fe2                            ; $6f70: $20 $70

    ld [hl], d                                    ; $6f72: $72
    ld h, c                                       ; $6f73: $61
    ld h, e                                       ; $6f74: $63
    ld [hl], h                                    ; $6f75: $74
    ld l, c                                       ; $6f76: $69
    ld h, e                                       ; $6f77: $63

jr_01b_6f78:
    ld h, l                                       ; $6f78: $65

jr_01b_6f79:
    ld bc, $7570                                  ; $6f79: $01 $70 $75
    ld [hl], h                                    ; $6f7c: $74
    ld [hl], h                                    ; $6f7d: $74
    ld l, c                                       ; $6f7e: $69
    ld l, [hl]                                    ; $6f7f: $6e
    ld h, a                                       ; $6f80: $67
    jr nz, jr_01b_6ff6                            ; $6f81: $20 $73

    ld [hl], b                                    ; $6f83: $70
    ld l, c                                       ; $6f84: $69

jr_01b_6f85:
    ld l, [hl]                                    ; $6f85: $6e
    jr nz, @+$71                                  ; $6f86: $20 $6f

    ld l, [hl]                                    ; $6f88: $6e
    ld bc, $6874                                  ; $6f89: $01 $74 $68
    ld h, l                                       ; $6f8c: $65
    jr nz, jr_01b_6ff1                            ; $6f8d: $20 $62

    ld h, c                                       ; $6f8f: $61
    ld l, h                                       ; $6f90: $6c
    ld l, h                                       ; $6f91: $6c
    ld l, $03                                     ; $6f92: $2e $03
    nop                                           ; $6f94: $00
    ld e, c                                       ; $6f95: $59
    ld l, a                                       ; $6f96: $6f
    ld [hl], l                                    ; $6f97: $75

jr_01b_6f98:
    jr nz, jr_01b_6ffe                            ; $6f98: $20 $64

    ld l, c                                       ; $6f9a: $69
    ld h, h                                       ; $6f9b: $64
    jr nz, jr_01b_7007                            ; $6f9c: $20 $69

jr_01b_6f9e:
    ld [hl], h                                    ; $6f9e: $74
    ld hl, $5920                                  ; $6f9f: $21 $20 $59
    ld l, a                                       ; $6fa2: $6f
    ld [hl], l                                    ; $6fa3: $75
    daa                                           ; $6fa4: $27
    ld [hl], d                                    ; $6fa5: $72
    ld h, l                                       ; $6fa6: $65
    ld bc, $2061                                  ; $6fa7: $01 $61 $20
    ld [hl], c                                    ; $6faa: $71
    ld [hl], l                                    ; $6fab: $75

jr_01b_6fac:
    ld l, c                                       ; $6fac: $69

jr_01b_6fad:
    ld h, e                                       ; $6fad: $63
    ld l, e                                       ; $6fae: $6b
    jr nz, jr_01b_701d                            ; $6faf: $20 $6c

    ld h, l                                       ; $6fb1: $65
    ld h, c                                       ; $6fb2: $61
    ld [hl], d                                    ; $6fb3: $72
    ld l, [hl]                                    ; $6fb4: $6e
    ld h, l                                       ; $6fb5: $65

jr_01b_6fb6:
    ld [hl], d                                    ; $6fb6: $72
    ld hl, $0003                                  ; $6fb7: $21 $03 $00
    ld d, l                                       ; $6fba: $55
    ld [hl], e                                    ; $6fbb: $73
    ld h, l                                       ; $6fbc: $65
    jr nz, jr_01b_7033                            ; $6fbd: $20 $74

    ld l, b                                       ; $6fbf: $68
    ld h, l                                       ; $6fc0: $65
    jr nz, jr_01b_7036                            ; $6fc1: $20 $73

    ld [hl], b                                    ; $6fc3: $70
    ld l, a                                       ; $6fc4: $6f
    ld [hl], h                                    ; $6fc5: $74
    jr nz, jr_01b_7037                            ; $6fc6: $20 $6f

    halt                                          ; $6fc8: $76
    ld h, l                                       ; $6fc9: $65
    ld [hl], d                                    ; $6fca: $72
    ld bc, $6874                                  ; $6fcb: $01 $74 $68

jr_01b_6fce:
    ld h, l                                       ; $6fce: $65
    ld [hl], d                                    ; $6fcf: $72
    ld h, l                                       ; $6fd0: $65
    jr nz, @+$76                                  ; $6fd1: $20 $74

    ld l, a                                       ; $6fd3: $6f
    jr nz, jr_01b_7046                            ; $6fd4: $20 $70

    ld [hl], d                                    ; $6fd6: $72
    ld h, c                                       ; $6fd7: $61
    ld h, e                                       ; $6fd8: $63
    ld [hl], h                                    ; $6fd9: $74
    ld l, c                                       ; $6fda: $69
    ld h, e                                       ; $6fdb: $63
    ld h, l                                       ; $6fdc: $65
    ld bc, $6e6f                                  ; $6fdd: $01 $6f $6e
    jr nz, @+$7b                                  ; $6fe0: $20 $79

jr_01b_6fe2:
    ld l, a                                       ; $6fe2: $6f
    ld [hl], l                                    ; $6fe3: $75
    ld [hl], d                                    ; $6fe4: $72
    jr nz, jr_01b_7056                            ; $6fe5: $20 $6f

    ld [hl], a                                    ; $6fe7: $77
    ld l, [hl]                                    ; $6fe8: $6e
    ld l, $03                                     ; $6fe9: $2e $03
    nop                                           ; $6feb: $00
    ld b, c                                       ; $6fec: $41
    ld l, c                                       ; $6fed: $69
    ld l, l                                       ; $6fee: $6d
    ld l, c                                       ; $6fef: $69
    ld l, [hl]                                    ; $6ff0: $6e

jr_01b_6ff1:
    ld h, a                                       ; $6ff1: $67
    jr nz, jr_01b_705a                            ; $6ff2: $20 $66

    ld l, a                                       ; $6ff4: $6f
    ld [hl], d                                    ; $6ff5: $72

jr_01b_6ff6:
    jr nz, @+$76                                  ; $6ff6: $20 $74

    ld l, b                                       ; $6ff8: $68
    ld h, l                                       ; $6ff9: $65
    jr nz, @+$72                                  ; $6ffa: $20 $70

    ld l, c                                       ; $6ffc: $69
    ld l, [hl]                                    ; $6ffd: $6e

jr_01b_6ffe:
    ld bc, $7266                                  ; $6ffe: $01 $66 $72
    ld l, a                                       ; $7001: $6f
    ld l, l                                       ; $7002: $6d
    jr nz, @+$64                                  ; $7003: $20 $62

    ld h, l                                       ; $7005: $65
    ld l, h                                       ; $7006: $6c

jr_01b_7007:
    ld l, a                                       ; $7007: $6f
    ld [hl], a                                    ; $7008: $77
    jr nz, @+$63                                  ; $7009: $20 $61

    jr nz, jr_01b_7080                            ; $700b: $20 $73

    ld [hl], h                                    ; $700d: $74
    ld h, l                                       ; $700e: $65
    ld h, l                                       ; $700f: $65
    ld [hl], b                                    ; $7010: $70
    ld bc, $6c63                                  ; $7011: $01 $63 $6c
    ld l, c                                       ; $7014: $69
    ld l, l                                       ; $7015: $6d
    ld h, d                                       ; $7016: $62
    jr nz, jr_01b_708d                            ; $7017: $20 $74

    ld l, a                                       ; $7019: $6f
    jr nz, jr_01b_7090                            ; $701a: $20 $74

    ld l, b                                       ; $701c: $68

jr_01b_701d:
    ld h, l                                       ; $701d: $65
    jr nz, jr_01b_7087                            ; $701e: $20 $67

    ld [hl], d                                    ; $7020: $72
    ld h, l                                       ; $7021: $65
    ld h, l                                       ; $7022: $65
    ld l, [hl]                                    ; $7023: $6e
    ld [bc], a                                    ; $7024: $02
    ld l, c                                       ; $7025: $69
    ld [hl], e                                    ; $7026: $73
    jr nz, jr_01b_7091                            ; $7027: $20 $68

    ld h, c                                       ; $7029: $61
    ld [hl], d                                    ; $702a: $72
    ld h, h                                       ; $702b: $64
    ld l, $20                                     ; $702c: $2e $20
    ld e, c                                       ; $702e: $59
    ld l, a                                       ; $702f: $6f
    ld [hl], l                                    ; $7030: $75
    jr nz, jr_01b_7096                            ; $7031: $20 $63

jr_01b_7033:
    ld h, c                                       ; $7033: $61
    ld l, [hl]                                    ; $7034: $6e
    daa                                           ; $7035: $27

jr_01b_7036:
    ld [hl], h                                    ; $7036: $74

jr_01b_7037:
    ld bc, $6173                                  ; $7037: $01 $73 $61
    halt                                          ; $703a: $76
    ld h, l                                       ; $703b: $65
    jr nz, jr_01b_70ae                            ; $703c: $20 $70

    ld h, c                                       ; $703e: $61
    ld [hl], d                                    ; $703f: $72
    jr nz, jr_01b_70b6                            ; $7040: $20 $74

    ld l, b                                       ; $7042: $68
    ld h, l                                       ; $7043: $65
    ld l, [hl]                                    ; $7044: $6e
    inc l                                         ; $7045: $2c

jr_01b_7046:
    jr nz, @+$74                                  ; $7046: $20 $72

    ld l, c                                       ; $7048: $69
    ld h, a                                       ; $7049: $67
    ld l, b                                       ; $704a: $68
    ld [hl], h                                    ; $704b: $74
    ccf                                           ; $704c: $3f
    nop                                           ; $704d: $00
    ld c, c                                       ; $704e: $49
    ld h, [hl]                                    ; $704f: $66
    jr nz, jr_01b_70cb                            ; $7050: $20 $79

    ld l, a                                       ; $7052: $6f
    ld [hl], l                                    ; $7053: $75
    jr nz, @+$66                                  ; $7054: $20 $64

jr_01b_7056:
    ld l, a                                       ; $7056: $6f
    ld l, [hl]                                    ; $7057: $6e
    daa                                           ; $7058: $27
    ld [hl], h                                    ; $7059: $74

jr_01b_705a:
    jr nz, jr_01b_70d0                            ; $705a: $20 $74

    ld l, b                                       ; $705c: $68
    ld l, c                                       ; $705d: $69
    ld l, [hl]                                    ; $705e: $6e
    ld l, e                                       ; $705f: $6b
    jr nz, jr_01b_70cb                            ; $7060: $20 $69

    ld [hl], h                                    ; $7062: $74
    daa                                           ; $7063: $27
    ld [hl], e                                    ; $7064: $73
    ld bc, $6168                                  ; $7065: $01 $68 $61
    ld [hl], d                                    ; $7068: $72
    ld h, h                                       ; $7069: $64
    inc l                                         ; $706a: $2c
    jr nz, @+$7b                                  ; $706b: $20 $79

    ld l, a                                       ; $706d: $6f
    ld [hl], l                                    ; $706e: $75
    jr nz, jr_01b_70de                            ; $706f: $20 $6d

    ld [hl], l                                    ; $7071: $75
    ld [hl], e                                    ; $7072: $73
    ld [hl], h                                    ; $7073: $74
    jr nz, jr_01b_70d8                            ; $7074: $20 $62

    ld h, l                                       ; $7076: $65
    jr nz, jr_01b_70e0                            ; $7077: $20 $67

    ld l, a                                       ; $7079: $6f
    ld l, a                                       ; $707a: $6f
    ld h, h                                       ; $707b: $64
    ld l, $03                                     ; $707c: $2e $03
    nop                                           ; $707e: $00
    ld d, h                                       ; $707f: $54

jr_01b_7080:
    ld l, a                                       ; $7080: $6f
    jr nz, jr_01b_70e4                            ; $7081: $20 $61

    ld [hl], h                                    ; $7083: $74
    ld [hl], h                                    ; $7084: $74
    ld h, c                                       ; $7085: $61
    ld h, e                                       ; $7086: $63

jr_01b_7087:
    ld l, e                                       ; $7087: $6b
    inc l                                         ; $7088: $2c
    jr nz, @+$74                                  ; $7089: $20 $72

    ld l, a                                       ; $708b: $6f
    ld l, h                                       ; $708c: $6c

jr_01b_708d:
    ld l, h                                       ; $708d: $6c
    jr nz, jr_01b_7104                            ; $708e: $20 $74

jr_01b_7090:
    ld l, b                                       ; $7090: $68

jr_01b_7091:
    ld h, l                                       ; $7091: $65
    ld bc, $6162                                  ; $7092: $01 $62 $61
    ld l, h                                       ; $7095: $6c

jr_01b_7096:
    ld l, h                                       ; $7096: $6c
    jr nz, jr_01b_710d                            ; $7097: $20 $74

    ld l, a                                       ; $7099: $6f
    jr nz, @+$76                                  ; $709a: $20 $74

    ld l, b                                       ; $709c: $68
    ld h, l                                       ; $709d: $65
    jr nz, @+$72                                  ; $709e: $20 $70

    ld l, c                                       ; $70a0: $69
    ld l, [hl]                                    ; $70a1: $6e
    ld l, $02                                     ; $70a2: $2e $02
    ld d, l                                       ; $70a4: $55
    ld [hl], e                                    ; $70a5: $73
    ld h, l                                       ; $70a6: $65
    jr nz, @+$63                                  ; $70a7: $20 $61

    jr nz, jr_01b_7113                            ; $70a9: $20 $68

    ld l, c                                       ; $70ab: $69
    ld h, a                                       ; $70ac: $67
    ld l, b                                       ; $70ad: $68

jr_01b_70ae:
    jr nz, jr_01b_7112                            ; $70ae: $20 $62

    ld h, c                                       ; $70b0: $61
    ld l, h                                       ; $70b1: $6c
    ld l, h                                       ; $70b2: $6c
    inc l                                         ; $70b3: $2c
    jr nz, jr_01b_7117                            ; $70b4: $20 $61

jr_01b_70b6:
    ld l, [hl]                                    ; $70b6: $6e
    ld h, h                                       ; $70b7: $64
    ld bc, $6f79                                  ; $70b8: $01 $79 $6f
    ld [hl], l                                    ; $70bb: $75
    daa                                           ; $70bc: $27
    ld l, h                                       ; $70bd: $6c
    ld l, h                                       ; $70be: $6c
    jr nz, jr_01b_7126                            ; $70bf: $20 $65

    ld l, [hl]                                    ; $70c1: $6e
    ld h, h                                       ; $70c2: $64
    jr nz, @+$77                                  ; $70c3: $20 $75

    ld [hl], b                                    ; $70c5: $70
    jr nz, jr_01b_713f                            ; $70c6: $20 $77

    ld l, c                                       ; $70c8: $69
    ld [hl], h                                    ; $70c9: $74
    ld l, b                                       ; $70ca: $68

jr_01b_70cb:
    jr nz, jr_01b_712e                            ; $70cb: $20 $61

    ld bc, $6962                                  ; $70cd: $01 $62 $69

jr_01b_70d0:
    ld h, a                                       ; $70d0: $67
    jr nz, jr_01b_7140                            ; $70d1: $20 $6d

    ld l, c                                       ; $70d3: $69
    ld [hl], e                                    ; $70d4: $73
    ld [hl], e                                    ; $70d5: $73
    ld l, $03                                     ; $70d6: $2e $03

jr_01b_70d8:
    nop                                           ; $70d8: $00
    ld d, h                                       ; $70d9: $54
    ld l, b                                       ; $70da: $68
    ld h, l                                       ; $70db: $65
    jr nz, jr_01b_710f                            ; $70dc: $20 $31

jr_01b_70de:
    jr nc, jr_01b_7139                            ; $70de: $30 $59

jr_01b_70e0:
    jr nz, @+$68                                  ; $70e0: $20 $66

    ld [hl], d                                    ; $70e2: $72
    ld l, a                                       ; $70e3: $6f

jr_01b_70e4:
    ld l, l                                       ; $70e4: $6d
    jr nz, jr_01b_7149                            ; $70e5: $20 $62

    ld h, c                                       ; $70e7: $61
    ld l, h                                       ; $70e8: $6c
    ld l, h                                       ; $70e9: $6c
    ld bc, $6f74                                  ; $70ea: $01 $74 $6f
    jr nz, jr_01b_7156                            ; $70ed: $20 $67

    ld [hl], d                                    ; $70ef: $72
    ld h, l                                       ; $70f0: $65
    ld h, l                                       ; $70f1: $65
    ld l, [hl]                                    ; $70f2: $6e
    jr nz, jr_01b_715e                            ; $70f3: $20 $69

    ld [hl], e                                    ; $70f5: $73
    jr nz, jr_01b_715e                            ; $70f6: $20 $66

    ld l, h                                       ; $70f8: $6c
    ld h, c                                       ; $70f9: $61
    ld [hl], h                                    ; $70fa: $74
    inc l                                         ; $70fb: $2c
    ld bc, $7562                                  ; $70fc: $01 $62 $75
    ld [hl], h                                    ; $70ff: $74
    jr nz, jr_01b_7176                            ; $7100: $20 $74

    ld l, b                                       ; $7102: $68
    ld h, l                                       ; $7103: $65

jr_01b_7104:
    jr nz, @+$70                                  ; $7104: $20 $6e

    ld h, l                                       ; $7106: $65
    ld a, b                                       ; $7107: $78
    ld [hl], h                                    ; $7108: $74
    jr nz, jr_01b_713c                            ; $7109: $20 $31

    jr nc, jr_01b_7166                            ; $710b: $30 $59

jr_01b_710d:
    ld l, $2e                                     ; $710d: $2e $2e

jr_01b_710f:
    ld l, $02                                     ; $710f: $2e $02
    ld c, c                                       ; $7111: $49

jr_01b_7112:
    ld [hl], h                                    ; $7112: $74

jr_01b_7113:
    daa                                           ; $7113: $27
    ld [hl], e                                    ; $7114: $73
    jr nz, jr_01b_714c                            ; $7115: $20 $35

jr_01b_7117:
    ld e, c                                       ; $7117: $59
    jr nz, jr_01b_7180                            ; $7118: $20 $66

    ld [hl], d                                    ; $711a: $72
    ld l, a                                       ; $711b: $6f
    ld l, l                                       ; $711c: $6d
    jr nz, jr_01b_7193                            ; $711d: $20 $74

    ld l, b                                       ; $711f: $68
    ld h, l                                       ; $7120: $65
    ld [hl], d                                    ; $7121: $72
    ld h, l                                       ; $7122: $65
    ld bc, $6f74                                  ; $7123: $01 $74 $6f

jr_01b_7126:
    jr nz, jr_01b_719c                            ; $7126: $20 $74

    ld l, b                                       ; $7128: $68
    ld h, l                                       ; $7129: $65
    jr nz, jr_01b_719c                            ; $712a: $20 $70

    ld l, c                                       ; $712c: $69
    ld l, [hl]                                    ; $712d: $6e

jr_01b_712e:
    inc l                                         ; $712e: $2c
    jr nz, @+$75                                  ; $712f: $20 $73

    ld l, a                                       ; $7131: $6f
    jr nz, jr_01b_719d                            ; $7132: $20 $69

    ld [hl], h                                    ; $7134: $74
    ld bc, $6168                                  ; $7135: $01 $68 $61
    ld [hl], e                                    ; $7138: $73

jr_01b_7139:
    jr nz, @+$76                                  ; $7139: $20 $74

    ld l, a                                       ; $713b: $6f

jr_01b_713c:
    jr nz, jr_01b_71b1                            ; $713c: $20 $73

    ld [hl], h                                    ; $713e: $74

jr_01b_713f:
    ld l, a                                       ; $713f: $6f

jr_01b_7140:
    ld [hl], b                                    ; $7140: $70
    jr nz, @+$76                                  ; $7141: $20 $74

    ld l, b                                       ; $7143: $68
    ld h, l                                       ; $7144: $65
    ld [hl], d                                    ; $7145: $72
    ld h, l                                       ; $7146: $65
    ld l, $03                                     ; $7147: $2e $03

jr_01b_7149:
    nop                                           ; $7149: $00
    ld b, [hl]                                    ; $714a: $46
    ld l, c                                       ; $714b: $69

jr_01b_714c:
    ld [hl], d                                    ; $714c: $72
    ld [hl], e                                    ; $714d: $73
    ld [hl], h                                    ; $714e: $74
    inc l                                         ; $714f: $2c
    jr nz, @+$75                                  ; $7150: $20 $73

    ld h, l                                       ; $7152: $65
    ld l, h                                       ; $7153: $6c
    ld h, l                                       ; $7154: $65
    ld h, e                                       ; $7155: $63

jr_01b_7156:
    ld [hl], h                                    ; $7156: $74
    ld bc, $6e61                                  ; $7157: $01 $61 $6e
    jr nz, jr_01b_71bd                            ; $715a: $20 $61

    ld [hl], b                                    ; $715c: $70
    ld [hl], b                                    ; $715d: $70

jr_01b_715e:
    ld [hl], d                                    ; $715e: $72
    ld l, a                                       ; $715f: $6f
    ld h, c                                       ; $7160: $61
    ld h, e                                       ; $7161: $63
    ld l, b                                       ; $7162: $68
    ld l, $03                                     ; $7163: $2e $03
    nop                                           ; $7165: $00

jr_01b_7166:
    ld c, [hl]                                    ; $7166: $4e
    ld h, l                                       ; $7167: $65
    ld a, b                                       ; $7168: $78
    ld [hl], h                                    ; $7169: $74
    inc l                                         ; $716a: $2c
    jr nz, jr_01b_71d0                            ; $716b: $20 $63

    ld l, b                                       ; $716d: $68
    ld l, a                                       ; $716e: $6f
    ld l, a                                       ; $716f: $6f
    ld [hl], e                                    ; $7170: $73
    ld h, l                                       ; $7171: $65
    ld bc, $2061                                  ; $7172: $01 $61 $20
    ld h, e                                       ; $7175: $63

jr_01b_7176:
    ld l, h                                       ; $7176: $6c
    ld [hl], l                                    ; $7177: $75
    ld h, d                                       ; $7178: $62
    ld l, $03                                     ; $7179: $2e $03
    nop                                           ; $717b: $00
    ld c, c                                       ; $717c: $49
    jr nz, jr_01b_71e2                            ; $717d: $20 $63

    ld h, c                                       ; $717f: $61

jr_01b_7180:
    ld l, [hl]                                    ; $7180: $6e
    daa                                           ; $7181: $27
    ld [hl], h                                    ; $7182: $74
    jr nz, jr_01b_71ef                            ; $7183: $20 $6a

    ld [hl], l                                    ; $7185: $75
    ld h, h                                       ; $7186: $64
    ld h, a                                       ; $7187: $67
    ld h, l                                       ; $7188: $65
    jr nz, jr_01b_71f3                            ; $7189: $20 $68

    ld l, a                                       ; $718b: $6f
    ld [hl], a                                    ; $718c: $77
    ld bc, $6874                                  ; $718d: $01 $74 $68
    ld h, l                                       ; $7190: $65
    jr nz, @+$68                                  ; $7191: $20 $66

jr_01b_7193:
    ld h, c                                       ; $7193: $61
    ld l, c                                       ; $7194: $69
    ld [hl], d                                    ; $7195: $72
    ld [hl], a                                    ; $7196: $77
    ld h, c                                       ; $7197: $61
    ld a, c                                       ; $7198: $79
    jr nz, jr_01b_720d                            ; $7199: $20 $72

    ld l, a                                       ; $719b: $6f

jr_01b_719c:
    ld l, h                                       ; $719c: $6c

jr_01b_719d:
    ld l, h                                       ; $719d: $6c
    ld [hl], e                                    ; $719e: $73
    inc l                                         ; $719f: $2c
    ld bc, $6f73                                  ; $71a0: $01 $73 $6f
    jr nz, jr_01b_7206                            ; $71a3: $20 $61

    ld l, [hl]                                    ; $71a5: $6e
    jr nz, jr_01b_7211                            ; $71a6: $20 $69

    ld [hl], d                                    ; $71a8: $72
    ld l, a                                       ; $71a9: $6f
    ld l, [hl]                                    ; $71aa: $6e
    jr nz, jr_01b_7216                            ; $71ab: $20 $69

    ld [hl], e                                    ; $71ad: $73
    jr nz, jr_01b_7212                            ; $71ae: $20 $62

    ld h, l                                       ; $71b0: $65

jr_01b_71b1:
    ld [hl], e                                    ; $71b1: $73
    ld [hl], h                                    ; $71b2: $74
    ld l, $02                                     ; $71b3: $2e $02
    ld b, c                                       ; $71b5: $41
    jr nz, jr_01b_71ef                            ; $71b6: $20 $37

    ld c, c                                       ; $71b8: $49
    daa                                           ; $71b9: $27
    ld [hl], e                                    ; $71ba: $73
    jr nz, jr_01b_7229                            ; $71bb: $20 $6c

jr_01b_71bd:
    ld l, a                                       ; $71bd: $6f
    ld [hl], a                                    ; $71be: $77
    jr nz, jr_01b_7234                            ; $71bf: $20 $73

    ld l, b                                       ; $71c1: $68
    ld l, a                                       ; $71c2: $6f
    ld [hl], h                                    ; $71c3: $74
    jr nz, jr_01b_7229                            ; $71c4: $20 $63

    ld h, c                                       ; $71c6: $61
    ld l, [hl]                                    ; $71c7: $6e
    ld bc, $6163                                  ; $71c8: $01 $63 $61
    ld [hl], d                                    ; $71cb: $72
    ld [hl], d                                    ; $71cc: $72
    ld a, c                                       ; $71cd: $79
    jr nz, jr_01b_7239                            ; $71ce: $20 $69

jr_01b_71d0:
    ld [hl], h                                    ; $71d0: $74
    jr nz, jr_01b_7234                            ; $71d1: $20 $61

    ld l, [hl]                                    ; $71d3: $6e
    ld h, h                                       ; $71d4: $64
    jr nz, @+$74                                  ; $71d5: $20 $72

    ld l, a                                       ; $71d7: $6f
    ld l, h                                       ; $71d8: $6c
    ld l, h                                       ; $71d9: $6c
    ld bc, $7469                                  ; $71da: $01 $69 $74
    jr nz, @+$77                                  ; $71dd: $20 $75

    ld [hl], b                                    ; $71df: $70
    jr nz, jr_01b_7256                            ; $71e0: $20 $74

jr_01b_71e2:
    ld l, b                                       ; $71e2: $68
    ld h, l                                       ; $71e3: $65
    jr nz, jr_01b_724d                            ; $71e4: $20 $67

    ld [hl], d                                    ; $71e6: $72
    ld h, l                                       ; $71e7: $65
    ld h, l                                       ; $71e8: $65
    ld l, [hl]                                    ; $71e9: $6e
    ld l, $03                                     ; $71ea: $2e $03
    nop                                           ; $71ec: $00
    ld b, h                                       ; $71ed: $44
    ld l, c                                       ; $71ee: $69

jr_01b_71ef:
    ld h, h                                       ; $71ef: $64
    jr nz, jr_01b_726b                            ; $71f0: $20 $79

    ld l, a                                       ; $71f2: $6f

jr_01b_71f3:
    ld [hl], l                                    ; $71f3: $75
    jr nz, @+$69                                  ; $71f4: $20 $67

    ld h, l                                       ; $71f6: $65
    ld [hl], h                                    ; $71f7: $74
    jr nz, jr_01b_726e                            ; $71f8: $20 $74

    ld l, b                                       ; $71fa: $68
    ld h, c                                       ; $71fb: $61
    ld [hl], h                                    ; $71fc: $74
    ccf                                           ; $71fd: $3f
    ld bc, $6157                                  ; $71fe: $01 $57 $61
    ld l, [hl]                                    ; $7201: $6e
    ld [hl], h                                    ; $7202: $74
    jr nz, jr_01b_7279                            ; $7203: $20 $74

    ld l, a                                       ; $7205: $6f

jr_01b_7206:
    jr nz, jr_01b_727c                            ; $7206: $20 $74

    ld [hl], d                                    ; $7208: $72
    ld a, c                                       ; $7209: $79
    ccf                                           ; $720a: $3f
    nop                                           ; $720b: $00
    ld b, [hl]                                    ; $720c: $46

jr_01b_720d:
    ld l, c                                       ; $720d: $69
    ld [hl], d                                    ; $720e: $72
    ld [hl], e                                    ; $720f: $73
    ld [hl], h                                    ; $7210: $74

jr_01b_7211:
    inc l                                         ; $7211: $2c

jr_01b_7212:
    jr nz, jr_01b_7287                            ; $7212: $20 $73

    ld h, l                                       ; $7214: $65
    ld l, h                                       ; $7215: $6c

jr_01b_7216:
    ld h, l                                       ; $7216: $65
    ld h, e                                       ; $7217: $63
    ld [hl], h                                    ; $7218: $74
    ld bc, $6e61                                  ; $7219: $01 $61 $6e
    jr nz, @+$63                                  ; $721c: $20 $61

    ld [hl], b                                    ; $721e: $70
    ld [hl], b                                    ; $721f: $70
    ld [hl], d                                    ; $7220: $72
    ld l, a                                       ; $7221: $6f
    ld h, c                                       ; $7222: $61
    ld h, e                                       ; $7223: $63
    ld l, b                                       ; $7224: $68
    ld l, $03                                     ; $7225: $2e $03
    nop                                           ; $7227: $00
    ld c, [hl]                                    ; $7228: $4e

jr_01b_7229:
    ld h, l                                       ; $7229: $65
    ld a, b                                       ; $722a: $78
    ld [hl], h                                    ; $722b: $74
    inc l                                         ; $722c: $2c
    jr nz, jr_01b_72a2                            ; $722d: $20 $73

    ld h, l                                       ; $722f: $65
    ld l, h                                       ; $7230: $6c
    ld h, l                                       ; $7231: $65
    ld h, e                                       ; $7232: $63
    ld [hl], h                                    ; $7233: $74

jr_01b_7234:
    jr nz, jr_01b_7297                            ; $7234: $20 $61

    jr nz, jr_01b_729b                            ; $7236: $20 $63

    ld l, h                                       ; $7238: $6c

jr_01b_7239:
    ld [hl], l                                    ; $7239: $75
    ld h, d                                       ; $723a: $62
    ld l, $03                                     ; $723b: $2e $03
    nop                                           ; $723d: $00
    ld c, a                                       ; $723e: $4f
    ld c, e                                       ; $723f: $4b
    ld l, $20                                     ; $7240: $2e $20
    ld d, e                                       ; $7242: $53
    ld l, b                                       ; $7243: $68
    ld l, a                                       ; $7244: $6f
    ld l, a                                       ; $7245: $6f
    ld [hl], h                                    ; $7246: $74
    ld hl, $0003                                  ; $7247: $21 $03 $00
    ld c, c                                       ; $724a: $49
    ld [hl], h                                    ; $724b: $74
    daa                                           ; $724c: $27

jr_01b_724d:
    ld [hl], e                                    ; $724d: $73
    jr nz, jr_01b_72b8                            ; $724e: $20 $68

    ld h, c                                       ; $7250: $61
    ld [hl], d                                    ; $7251: $72
    ld h, h                                       ; $7252: $64
    ld l, $20                                     ; $7253: $2e $20
    ld b, c                                       ; $7255: $41

jr_01b_7256:
    jr nz, jr_01b_72cb                            ; $7256: $20 $73

    ld h, l                                       ; $7258: $65
    ld l, [hl]                                    ; $7259: $6e
    ld [hl], e                                    ; $725a: $73
    ld h, l                                       ; $725b: $65
    ld bc, $666f                                  ; $725c: $01 $6f $66
    jr nz, @+$66                                  ; $725f: $20 $64

    ld l, c                                       ; $7261: $69
    ld [hl], e                                    ; $7262: $73
    ld [hl], h                                    ; $7263: $74
    ld h, c                                       ; $7264: $61
    ld l, [hl]                                    ; $7265: $6e
    ld h, e                                       ; $7266: $63
    ld h, l                                       ; $7267: $65
    jr nz, jr_01b_72d3                            ; $7268: $20 $69

    ld [hl], e                                    ; $726a: $73

jr_01b_726b:
    ld bc, $6874                                  ; $726b: $01 $74 $68

jr_01b_726e:
    ld h, l                                       ; $726e: $65
    jr nz, @+$6d                                  ; $726f: $20 $6b

    ld h, l                                       ; $7271: $65
    ld a, c                                       ; $7272: $79
    ld l, $03                                     ; $7273: $2e $03
    nop                                           ; $7275: $00
    ld c, [hl]                                    ; $7276: $4e
    ld l, c                                       ; $7277: $69
    ld h, e                                       ; $7278: $63

jr_01b_7279:
    ld h, l                                       ; $7279: $65
    jr nz, jr_01b_72e6                            ; $727a: $20 $6a

jr_01b_727c:
    ld l, a                                       ; $727c: $6f
    ld h, d                                       ; $727d: $62
    ld hl, $5420                                  ; $727e: $21 $20 $54
    ld [hl], d                                    ; $7281: $72
    ld a, c                                       ; $7282: $79
    ld bc, $6874                                  ; $7283: $01 $74 $68
    ld l, c                                       ; $7286: $69

jr_01b_7287:
    ld [hl], e                                    ; $7287: $73
    jr nz, jr_01b_72fd                            ; $7288: $20 $73

    ld l, b                                       ; $728a: $68
    ld l, a                                       ; $728b: $6f
    ld [hl], h                                    ; $728c: $74
    jr nz, jr_01b_7306                            ; $728d: $20 $77

    ld l, c                                       ; $728f: $69
    ld [hl], h                                    ; $7290: $74
    ld l, b                                       ; $7291: $68
    ld bc, $6f74                                  ; $7292: $01 $74 $6f
    ld [hl], b                                    ; $7295: $70
    ld [hl], e                                    ; $7296: $73

jr_01b_7297:
    ld [hl], b                                    ; $7297: $70
    ld l, c                                       ; $7298: $69
    ld l, [hl]                                    ; $7299: $6e
    inc l                                         ; $729a: $2c

jr_01b_729b:
    jr nz, jr_01b_7311                            ; $729b: $20 $74

    ld l, a                                       ; $729d: $6f
    ld l, a                                       ; $729e: $6f
    ld l, $03                                     ; $729f: $2e $03
    nop                                           ; $72a1: $00

jr_01b_72a2:
    ld c, a                                       ; $72a2: $4f
    ld l, [hl]                                    ; $72a3: $6e
    jr nz, jr_01b_7319                            ; $72a4: $20 $73

    ld l, h                                       ; $72a6: $6c
    ld l, a                                       ; $72a7: $6f
    ld [hl], b                                    ; $72a8: $70
    ld h, l                                       ; $72a9: $65
    ld h, h                                       ; $72aa: $64
    jr nz, @+$69                                  ; $72ab: $20 $67

    ld [hl], d                                    ; $72ad: $72
    ld h, l                                       ; $72ae: $65
    ld h, l                                       ; $72af: $65
    ld l, [hl]                                    ; $72b0: $6e
    ld [hl], e                                    ; $72b1: $73
    inc l                                         ; $72b2: $2c
    ld bc, $756a                                  ; $72b3: $01 $6a $75
    ld [hl], e                                    ; $72b6: $73
    ld [hl], h                                    ; $72b7: $74

jr_01b_72b8:
    jr nz, jr_01b_7328                            ; $72b8: $20 $6e

    ld h, l                                       ; $72ba: $65
    ld h, c                                       ; $72bb: $61
    ld [hl], d                                    ; $72bc: $72
    ld l, c                                       ; $72bd: $69
    ld l, [hl]                                    ; $72be: $6e
    ld h, a                                       ; $72bf: $67
    jr nz, jr_01b_7336                            ; $72c0: $20 $74

    ld l, b                                       ; $72c2: $68
    ld h, l                                       ; $72c3: $65
    jr nz, jr_01b_7336                            ; $72c4: $20 $70

    ld l, c                                       ; $72c6: $69
    ld l, [hl]                                    ; $72c7: $6e
    ld bc, $7369                                  ; $72c8: $01 $69 $73

jr_01b_72cb:
    jr nz, jr_01b_7333                            ; $72cb: $20 $66

    ld l, c                                       ; $72cd: $69
    ld l, [hl]                                    ; $72ce: $6e
    ld h, l                                       ; $72cf: $65
    ld l, $03                                     ; $72d0: $2e $03
    nop                                           ; $72d2: $00

jr_01b_72d3:
    ld c, b                                       ; $72d3: $48
    ld h, l                                       ; $72d4: $65
    ld a, c                                       ; $72d5: $79
    ld hl, $5920                                  ; $72d6: $21 $20 $59
    ld l, a                                       ; $72d9: $6f
    ld [hl], l                                    ; $72da: $75
    jr nz, jr_01b_7341                            ; $72db: $20 $64

    ld l, c                                       ; $72dd: $69
    ld h, h                                       ; $72de: $64
    jr nz, jr_01b_734a                            ; $72df: $20 $69

    ld [hl], h                                    ; $72e1: $74
    ld hl, $4101                                  ; $72e2: $21 $01 $41
    ld l, [hl]                                    ; $72e5: $6e

jr_01b_72e6:
    ld h, h                                       ; $72e6: $64
    jr nz, jr_01b_7360                            ; $72e7: $20 $77

    ld l, c                                       ; $72e9: $69
    ld [hl], h                                    ; $72ea: $74
    ld l, b                                       ; $72eb: $68
    jr nz, jr_01b_734f                            ; $72ec: $20 $61

    jr nz, jr_01b_7360                            ; $72ee: $20 $70

    ld [hl], l                                    ; $72f0: $75
    ld [hl], h                                    ; $72f1: $74
    ld [hl], h                                    ; $72f2: $74
    ld h, l                                       ; $72f3: $65
    ld [hl], d                                    ; $72f4: $72
    ld hl, $5901                                  ; $72f5: $21 $01 $59
    ld l, a                                       ; $72f8: $6f
    ld [hl], l                                    ; $72f9: $75
    jr nz, jr_01b_7360                            ; $72fa: $20 $64

    ld l, c                                       ; $72fc: $69

jr_01b_72fd:
    ld h, h                                       ; $72fd: $64
    jr nz, jr_01b_7374                            ; $72fe: $20 $74

    ld l, b                                       ; $7300: $68
    ld h, c                                       ; $7301: $61
    ld [hl], h                                    ; $7302: $74
    ld [bc], a                                    ; $7303: $02
    daa                                           ; $7304: $27
    ld h, e                                       ; $7305: $63

jr_01b_7306:
    ld h, c                                       ; $7306: $61
    ld [hl], l                                    ; $7307: $75
    ld [hl], e                                    ; $7308: $73
    ld h, l                                       ; $7309: $65
    jr nz, jr_01b_7355                            ; $730a: $20 $49

    jr nz, @+$75                                  ; $730c: $20 $73

    ld h, c                                       ; $730e: $61
    ld l, c                                       ; $730f: $69
    ld h, h                                       ; $7310: $64

jr_01b_7311:
    jr nz, jr_01b_735c                            ; $7311: $20 $49

    ld bc, $656e                                  ; $7313: $01 $6e $65
    ld h, l                                       ; $7316: $65
    ld h, h                                       ; $7317: $64
    ld h, l                                       ; $7318: $65

jr_01b_7319:
    ld h, h                                       ; $7319: $64
    jr nz, jr_01b_737d                            ; $731a: $20 $61

    ld l, [hl]                                    ; $731c: $6e
    jr nz, jr_01b_7388                            ; $731d: $20 $69

    ld [hl], d                                    ; $731f: $72
    ld l, a                                       ; $7320: $6f
    ld l, [hl]                                    ; $7321: $6e
    inc l                                         ; $7322: $2c
    ld bc, $6964                                  ; $7323: $01 $64 $69
    ld h, h                                       ; $7326: $64
    ld l, [hl]                                    ; $7327: $6e

jr_01b_7328:
    daa                                           ; $7328: $27
    ld [hl], h                                    ; $7329: $74
    jr nz, @+$7b                                  ; $732a: $20 $79

    ld l, a                                       ; $732c: $6f
    ld [hl], l                                    ; $732d: $75
    ccf                                           ; $732e: $3f
    inc bc                                        ; $732f: $03
    nop                                           ; $7330: $00
    ld b, a                                       ; $7331: $47
    ld l, a                                       ; $7332: $6f

jr_01b_7333:
    ld l, c                                       ; $7333: $69
    ld l, [hl]                                    ; $7334: $6e
    ld h, a                                       ; $7335: $67

jr_01b_7336:
    jr nz, jr_01b_73a7                            ; $7336: $20 $6f

    halt                                          ; $7338: $76
    ld h, l                                       ; $7339: $65
    ld [hl], d                                    ; $733a: $72
    jr nz, jr_01b_739e                            ; $733b: $20 $61

    jr nz, jr_01b_73ac                            ; $733d: $20 $6d

    ld l, a                                       ; $733f: $6f
    ld [hl], l                                    ; $7340: $75

jr_01b_7341:
    ld l, [hl]                                    ; $7341: $6e
    ld h, h                                       ; $7342: $64
    ld bc, $7266                                  ; $7343: $01 $66 $72
    ld l, a                                       ; $7346: $6f
    ld l, l                                       ; $7347: $6d
    jr nz, jr_01b_73be                            ; $7348: $20 $74

jr_01b_734a:
    ld l, b                                       ; $734a: $68
    ld h, l                                       ; $734b: $65
    jr nz, @+$74                                  ; $734c: $20 $72

    ld l, a                                       ; $734e: $6f

jr_01b_734f:
    ld [hl], l                                    ; $734f: $75
    ld h, a                                       ; $7350: $67
    ld l, b                                       ; $7351: $68
    jr nz, jr_01b_73c8                            ; $7352: $20 $74

    ld l, a                                       ; $7354: $6f

jr_01b_7355:
    ld bc, $2061                                  ; $7355: $01 $61 $20
    ld h, h                                       ; $7358: $64
    ld l, a                                       ; $7359: $6f
    ld [hl], a                                    ; $735a: $77
    ld l, [hl]                                    ; $735b: $6e

jr_01b_735c:
    ld l, b                                       ; $735c: $68
    ld l, c                                       ; $735d: $69
    ld l, h                                       ; $735e: $6c
    ld l, h                                       ; $735f: $6c

jr_01b_7360:
    jr nz, jr_01b_73d2                            ; $7360: $20 $70

    ld l, c                                       ; $7362: $69
    ld l, [hl]                                    ; $7363: $6e
    jr nz, @+$6b                                  ; $7364: $20 $69

    ld [hl], e                                    ; $7366: $73
    ld [bc], a                                    ; $7367: $02
    ld l, b                                       ; $7368: $68
    ld h, c                                       ; $7369: $61
    ld [hl], d                                    ; $736a: $72
    ld h, h                                       ; $736b: $64
    ld l, $20                                     ; $736c: $2e $20
    ld c, c                                       ; $736e: $49
    ld h, [hl]                                    ; $736f: $66
    jr nz, @+$76                                  ; $7370: $20 $74

    ld l, b                                       ; $7372: $68
    ld h, l                                       ; $7373: $65

jr_01b_7374:
    jr nz, @+$72                                  ; $7374: $20 $70

    ld l, c                                       ; $7376: $69
    ld l, [hl]                                    ; $7377: $6e
    daa                                           ; $7378: $27
    ld [hl], e                                    ; $7379: $73
    ld bc, $6c63                                  ; $737a: $01 $63 $6c

jr_01b_737d:
    ld l, a                                       ; $737d: $6f
    ld [hl], e                                    ; $737e: $73
    ld h, l                                       ; $737f: $65
    jr nz, jr_01b_73f1                            ; $7380: $20 $6f

    ld l, [hl]                                    ; $7382: $6e
    jr nz, @+$63                                  ; $7383: $20 $61

    ld l, [hl]                                    ; $7385: $6e
    jr nz, jr_01b_73e9                            ; $7386: $20 $61

jr_01b_7388:
    ld l, [hl]                                    ; $7388: $6e
    ld h, a                                       ; $7389: $67
    ld l, h                                       ; $738a: $6c
    ld h, l                                       ; $738b: $65
    ld h, h                                       ; $738c: $64
    ld bc, $696c                                  ; $738d: $01 $6c $69
    ld l, [hl]                                    ; $7390: $6e
    ld h, l                                       ; $7391: $65
    ld l, $2e                                     ; $7392: $2e $2e
    ld l, $4e                                     ; $7394: $2e $4e
    ld l, a                                       ; $7396: $6f
    jr nz, jr_01b_7410                            ; $7397: $20 $77

    ld h, c                                       ; $7399: $61
    ld a, c                                       ; $739a: $79
    inc l                                         ; $739b: $2c
    jr nz, jr_01b_7403                            ; $739c: $20 $65

jr_01b_739e:
    ld l, b                                       ; $739e: $68
    ccf                                           ; $739f: $3f
    jr nz, jr_01b_73a2                            ; $73a0: $20 $00

jr_01b_73a2:
    ld c, c                                       ; $73a2: $49
    ld h, [hl]                                    ; $73a3: $66
    jr nz, jr_01b_741f                            ; $73a4: $20 $79

    ld l, a                                       ; $73a6: $6f

jr_01b_73a7:
    ld [hl], l                                    ; $73a7: $75
    jr nz, jr_01b_740d                            ; $73a8: $20 $63

    ld h, c                                       ; $73aa: $61
    ld l, [hl]                                    ; $73ab: $6e

jr_01b_73ac:
    jr nz, jr_01b_741b                            ; $73ac: $20 $6d

    ld h, c                                       ; $73ae: $61
    ld l, e                                       ; $73af: $6b
    ld h, l                                       ; $73b0: $65
    ld bc, $6874                                  ; $73b1: $01 $74 $68
    ld h, c                                       ; $73b4: $61
    ld [hl], h                                    ; $73b5: $74
    inc l                                         ; $73b6: $2c
    jr nz, jr_01b_7432                            ; $73b7: $20 $79

    ld l, a                                       ; $73b9: $6f
    ld [hl], l                                    ; $73ba: $75
    jr nz, jr_01b_7420                            ; $73bb: $20 $63

    ld h, c                                       ; $73bd: $61

jr_01b_73be:
    ld l, [hl]                                    ; $73be: $6e
    ld bc, $616d                                  ; $73bf: $01 $6d $61
    ld l, e                                       ; $73c2: $6b
    ld h, l                                       ; $73c3: $65
    jr nz, jr_01b_7427                            ; $73c4: $20 $61

    ld l, [hl]                                    ; $73c6: $6e
    ld a, c                                       ; $73c7: $79

jr_01b_73c8:
    ld [hl], h                                    ; $73c8: $74
    ld l, b                                       ; $73c9: $68
    ld l, c                                       ; $73ca: $69
    ld l, [hl]                                    ; $73cb: $6e
    ld h, a                                       ; $73cc: $67
    ld hl, $0003                                  ; $73cd: $21 $03 $00
    ld b, h                                       ; $73d0: $44
    ld l, a                                       ; $73d1: $6f

jr_01b_73d2:
    ld l, [hl]                                    ; $73d2: $6e
    daa                                           ; $73d3: $27
    ld [hl], h                                    ; $73d4: $74
    jr nz, @+$64                                  ; $73d5: $20 $62

    ld h, l                                       ; $73d7: $65
    jr nz, jr_01b_744a                            ; $73d8: $20 $70

    ld [hl], d                                    ; $73da: $72
    ld h, l                                       ; $73db: $65
    ld [hl], e                                    ; $73dc: $73
    ld [hl], e                                    ; $73dd: $73
    ld [hl], l                                    ; $73de: $75
    ld [hl], d                                    ; $73df: $72
    ld h, l                                       ; $73e0: $65
    ld h, h                                       ; $73e1: $64
    ld bc, $7962                                  ; $73e2: $01 $62 $79
    jr nz, @+$6a                                  ; $73e5: $20 $68

    ld h, c                                       ; $73e7: $61
    ld [hl], d                                    ; $73e8: $72

jr_01b_73e9:
    ld h, h                                       ; $73e9: $64
    jr nz, jr_01b_744d                            ; $73ea: $20 $61

    ld [hl], b                                    ; $73ec: $70
    ld [hl], b                                    ; $73ed: $70
    ld [hl], d                                    ; $73ee: $72
    ld l, a                                       ; $73ef: $6f
    ld h, c                                       ; $73f0: $61

jr_01b_73f1:
    ld h, e                                       ; $73f1: $63
    ld l, b                                       ; $73f2: $68
    ld h, l                                       ; $73f3: $65
    ld [hl], e                                    ; $73f4: $73
    inc l                                         ; $73f5: $2c
    ld bc, $7562                                  ; $73f6: $01 $62 $75
    ld [hl], h                                    ; $73f9: $74
    jr nz, jr_01b_745d                            ; $73fa: $20 $61

    ld [hl], b                                    ; $73fc: $70
    ld [hl], b                                    ; $73fd: $70
    ld [hl], d                                    ; $73fe: $72
    ld l, a                                       ; $73ff: $6f
    ld h, c                                       ; $7400: $61
    ld h, e                                       ; $7401: $63
    ld l, b                                       ; $7402: $68

jr_01b_7403:
    jr nz, jr_01b_7478                            ; $7403: $20 $73

    ld l, a                                       ; $7405: $6f
    ld [bc], a                                    ; $7406: $02
    ld a, c                                       ; $7407: $79
    ld l, a                                       ; $7408: $6f
    ld [hl], l                                    ; $7409: $75
    jr nz, jr_01b_746f                            ; $740a: $20 $63

    ld h, c                                       ; $740c: $61

jr_01b_740d:
    ld l, [hl]                                    ; $740d: $6e
    jr nz, jr_01b_7483                            ; $740e: $20 $73

jr_01b_7410:
    ld [hl], h                                    ; $7410: $74
    ld l, c                                       ; $7411: $69
    ld l, h                                       ; $7412: $6c
    ld l, h                                       ; $7413: $6c
    jr nz, jr_01b_748a                            ; $7414: $20 $74

    ld [hl], d                                    ; $7416: $72
    ld a, c                                       ; $7417: $79
    ld bc, $6e61                                  ; $7418: $01 $61 $6e

jr_01b_741b:
    jr nz, jr_01b_7492                            ; $741b: $20 $75

    ld [hl], b                                    ; $741d: $70
    ld l, b                                       ; $741e: $68

jr_01b_741f:
    ld l, c                                       ; $741f: $69

jr_01b_7420:
    ld l, h                                       ; $7420: $6c
    ld l, h                                       ; $7421: $6c
    jr nz, jr_01b_7494                            ; $7422: $20 $70

    ld [hl], l                                    ; $7424: $75
    ld [hl], h                                    ; $7425: $74
    ld [hl], h                                    ; $7426: $74

jr_01b_7427:
    ld bc, $7665                                  ; $7427: $01 $65 $76
    ld h, l                                       ; $742a: $65
    ld l, [hl]                                    ; $742b: $6e
    jr nz, jr_01b_7497                            ; $742c: $20 $69

    ld h, [hl]                                    ; $742e: $66
    jr nz, jr_01b_74aa                            ; $742f: $20 $79

    ld l, a                                       ; $7431: $6f

jr_01b_7432:
    ld [hl], l                                    ; $7432: $75
    jr nz, jr_01b_74a2                            ; $7433: $20 $6d

    ld l, c                                       ; $7435: $69
    ld [hl], e                                    ; $7436: $73
    ld [hl], e                                    ; $7437: $73
    ld l, $03                                     ; $7438: $2e $03
    nop                                           ; $743a: $00
    ld c, c                                       ; $743b: $49
    ld [hl], h                                    ; $743c: $74
    daa                                           ; $743d: $27
    ld [hl], e                                    ; $743e: $73
    jr nz, jr_01b_74a2                            ; $743f: $20 $61

    ld l, h                                       ; $7441: $6c
    ld l, l                                       ; $7442: $6d
    ld l, a                                       ; $7443: $6f
    ld [hl], e                                    ; $7444: $73
    ld [hl], h                                    ; $7445: $74
    jr nz, jr_01b_74b1                            ; $7446: $20 $69

    ld l, l                                       ; $7448: $6d
    ld [hl], b                                    ; $7449: $70

jr_01b_744a:
    ld l, a                                       ; $744a: $6f
    ld [hl], e                                    ; $744b: $73
    dec l                                         ; $744c: $2d

jr_01b_744d:
    ld bc, $6973                                  ; $744d: $01 $73 $69
    ld h, d                                       ; $7450: $62
    ld l, h                                       ; $7451: $6c
    ld h, l                                       ; $7452: $65
    jr nz, @+$76                                  ; $7453: $20 $74

    ld l, a                                       ; $7455: $6f
    jr nz, jr_01b_74bf                            ; $7456: $20 $67

    ld h, l                                       ; $7458: $65
    ld [hl], h                                    ; $7459: $74
    jr nz, jr_01b_74d0                            ; $745a: $20 $74

    ld l, a                                       ; $745c: $6f

jr_01b_745d:
    ld bc, $6874                                  ; $745d: $01 $74 $68
    ld h, l                                       ; $7460: $65
    jr nz, jr_01b_74d3                            ; $7461: $20 $70

    ld l, c                                       ; $7463: $69
    ld l, [hl]                                    ; $7464: $6e
    inc l                                         ; $7465: $2c
    jr nz, jr_01b_74ca                            ; $7466: $20 $62

    ld [hl], l                                    ; $7468: $75
    ld [hl], h                                    ; $7469: $74
    jr nz, jr_01b_74b5                            ; $746a: $20 $49

    daa                                           ; $746c: $27
    ld l, h                                       ; $746d: $6c
    ld l, h                                       ; $746e: $6c

jr_01b_746f:
    ld [bc], a                                    ; $746f: $02
    ld [hl], h                                    ; $7470: $74
    ld [hl], d                                    ; $7471: $72
    ld a, c                                       ; $7472: $79
    ld l, $20                                     ; $7473: $2e $20
    ld b, [hl]                                    ; $7475: $46
    ld l, c                                       ; $7476: $69
    ld l, [hl]                                    ; $7477: $6e

jr_01b_7478:
    ld h, h                                       ; $7478: $64
    jr nz, jr_01b_74ef                            ; $7479: $20 $74

    ld l, b                                       ; $747b: $68
    ld h, l                                       ; $747c: $65
    jr nz, @+$6e                                  ; $747d: $20 $6c

    ld l, c                                       ; $747f: $69
    ld l, [hl]                                    ; $7480: $6e
    ld h, l                                       ; $7481: $65
    inc l                                         ; $7482: $2c

jr_01b_7483:
    ld bc, $6e61                                  ; $7483: $01 $61 $6e
    ld h, h                                       ; $7486: $64
    jr nz, jr_01b_74f1                            ; $7487: $20 $68

    ld l, c                                       ; $7489: $69

jr_01b_748a:
    ld [hl], h                                    ; $748a: $74
    jr nz, jr_01b_74ee                            ; $748b: $20 $61

    jr nz, jr_01b_7502                            ; $748d: $20 $73

    ld l, a                                       ; $748f: $6f
    ld h, [hl]                                    ; $7490: $66
    ld [hl], h                                    ; $7491: $74

jr_01b_7492:
    jr nz, jr_01b_74f6                            ; $7492: $20 $62

jr_01b_7494:
    ld h, c                                       ; $7494: $61
    ld l, h                                       ; $7495: $6c
    ld l, h                                       ; $7496: $6c

jr_01b_7497:
    jr nz, jr_01b_750d                            ; $7497: $20 $74

    ld l, a                                       ; $7499: $6f
    ld bc, $7473                                  ; $749a: $01 $73 $74
    ld l, a                                       ; $749d: $6f
    ld [hl], b                                    ; $749e: $70
    jr nz, jr_01b_750f                            ; $749f: $20 $6e

    ld h, l                                       ; $74a1: $65

jr_01b_74a2:
    ld h, c                                       ; $74a2: $61
    ld [hl], d                                    ; $74a3: $72
    jr nz, @+$76                                  ; $74a4: $20 $74

    ld l, b                                       ; $74a6: $68
    ld h, l                                       ; $74a7: $65
    jr nz, @+$72                                  ; $74a8: $20 $70

jr_01b_74aa:
    ld l, c                                       ; $74aa: $69
    ld l, [hl]                                    ; $74ab: $6e
    ld l, $03                                     ; $74ac: $2e $03
    nop                                           ; $74ae: $00
    ld b, [hl]                                    ; $74af: $46
    ld l, c                                       ; $74b0: $69

jr_01b_74b1:
    ld [hl], d                                    ; $74b1: $72
    ld [hl], e                                    ; $74b2: $73
    ld [hl], h                                    ; $74b3: $74
    inc l                                         ; $74b4: $2c

jr_01b_74b5:
    jr nz, @+$65                                  ; $74b5: $20 $63

    ld l, b                                       ; $74b7: $68
    ld l, a                                       ; $74b8: $6f
    ld l, a                                       ; $74b9: $6f
    ld [hl], e                                    ; $74ba: $73
    ld h, l                                       ; $74bb: $65
    ld bc, $6e61                                  ; $74bc: $01 $61 $6e

jr_01b_74bf:
    jr nz, jr_01b_7522                            ; $74bf: $20 $61

    ld [hl], b                                    ; $74c1: $70
    ld [hl], b                                    ; $74c2: $70
    ld [hl], d                                    ; $74c3: $72
    ld l, a                                       ; $74c4: $6f
    ld h, c                                       ; $74c5: $61
    ld h, e                                       ; $74c6: $63
    ld l, b                                       ; $74c7: $68
    ld l, $03                                     ; $74c8: $2e $03

jr_01b_74ca:
    nop                                           ; $74ca: $00
    ld c, [hl]                                    ; $74cb: $4e
    ld h, l                                       ; $74cc: $65
    ld a, b                                       ; $74cd: $78
    ld [hl], h                                    ; $74ce: $74
    inc l                                         ; $74cf: $2c

jr_01b_74d0:
    jr nz, @+$65                                  ; $74d0: $20 $63

    ld l, b                                       ; $74d2: $68

jr_01b_74d3:
    ld l, a                                       ; $74d3: $6f
    ld l, a                                       ; $74d4: $6f
    ld [hl], e                                    ; $74d5: $73
    ld h, l                                       ; $74d6: $65
    ld bc, $2061                                  ; $74d7: $01 $61 $20
    ld h, e                                       ; $74da: $63
    ld l, h                                       ; $74db: $6c
    ld [hl], l                                    ; $74dc: $75
    ld h, d                                       ; $74dd: $62
    ld l, $03                                     ; $74de: $2e $03
    nop                                           ; $74e0: $00
    ld b, e                                       ; $74e1: $43
    ld h, c                                       ; $74e2: $61
    ld [hl], d                                    ; $74e3: $72
    ld [hl], d                                    ; $74e4: $72
    ld a, c                                       ; $74e5: $79
    jr nz, jr_01b_755c                            ; $74e6: $20 $74

    ld l, b                                       ; $74e8: $68
    ld h, l                                       ; $74e9: $65
    jr nz, jr_01b_754e                            ; $74ea: $20 $62

    ld h, c                                       ; $74ec: $61
    ld l, h                                       ; $74ed: $6c

jr_01b_74ee:
    ld l, h                                       ; $74ee: $6c

jr_01b_74ef:
    jr nz, jr_01b_7566                            ; $74ef: $20 $75

jr_01b_74f1:
    ld [hl], b                                    ; $74f1: $70
    ld bc, $6874                                  ; $74f2: $01 $74 $68
    ld h, l                                       ; $74f5: $65

jr_01b_74f6:
    jr nz, jr_01b_7565                            ; $74f6: $20 $6d

    ld l, a                                       ; $74f8: $6f
    ld [hl], l                                    ; $74f9: $75
    ld l, [hl]                                    ; $74fa: $6e
    ld h, h                                       ; $74fb: $64
    jr nz, @+$63                                  ; $74fc: $20 $61

    ld l, [hl]                                    ; $74fe: $6e
    ld h, h                                       ; $74ff: $64
    jr nz, jr_01b_7574                            ; $7500: $20 $72

jr_01b_7502:
    ld l, a                                       ; $7502: $6f
    ld l, h                                       ; $7503: $6c
    ld l, h                                       ; $7504: $6c
    ld bc, $7469                                  ; $7505: $01 $69 $74
    jr nz, jr_01b_757e                            ; $7508: $20 $74

    ld l, a                                       ; $750a: $6f
    jr nz, jr_01b_756e                            ; $750b: $20 $61

jr_01b_750d:
    ld [hl], b                                    ; $750d: $70
    ld [hl], b                                    ; $750e: $70

jr_01b_750f:
    ld [hl], d                                    ; $750f: $72
    ld l, a                                       ; $7510: $6f
    ld h, c                                       ; $7511: $61
    ld h, e                                       ; $7512: $63
    ld l, b                                       ; $7513: $68
    ld l, $02                                     ; $7514: $2e $02
    ld d, l                                       ; $7516: $55
    ld [hl], e                                    ; $7517: $73
    ld h, l                                       ; $7518: $65
    jr nz, jr_01b_758f                            ; $7519: $20 $74

    ld l, b                                       ; $751b: $68
    ld h, l                                       ; $751c: $65
    jr nz, jr_01b_756f                            ; $751d: $20 $50

    ld d, a                                       ; $751f: $57
    jr nz, @+$63                                  ; $7520: $20 $61

jr_01b_7522:
    ld l, [hl]                                    ; $7522: $6e
    ld h, h                                       ; $7523: $64
    ld bc, $7570                                  ; $7524: $01 $70 $75
    ld [hl], h                                    ; $7527: $74
    jr nz, @+$64                                  ; $7528: $20 $62

    ld h, c                                       ; $752a: $61
    ld h, e                                       ; $752b: $63
    ld l, e                                       ; $752c: $6b
    ld [hl], e                                    ; $752d: $73
    ld [hl], b                                    ; $752e: $70
    ld l, c                                       ; $752f: $69
    ld l, [hl]                                    ; $7530: $6e
    jr nz, @+$71                                  ; $7531: $20 $6f

    ld l, [hl]                                    ; $7533: $6e
    ld bc, $6874                                  ; $7534: $01 $74 $68
    ld h, l                                       ; $7537: $65
    jr nz, @+$64                                  ; $7538: $20 $62

    ld h, c                                       ; $753a: $61
    ld l, h                                       ; $753b: $6c
    ld l, h                                       ; $753c: $6c
    ld l, $03                                     ; $753d: $2e $03
    nop                                           ; $753f: $00
    ld d, h                                       ; $7540: $54
    ld l, b                                       ; $7541: $68
    ld h, l                                       ; $7542: $65
    ld [hl], d                                    ; $7543: $72
    ld h, l                                       ; $7544: $65
    ld hl, $4e20                                  ; $7545: $21 $20 $4e
    ld l, a                                       ; $7548: $6f
    ld [hl], a                                    ; $7549: $77
    jr nz, jr_01b_7595                            ; $754a: $20 $49

    jr nz, jr_01b_75b1                            ; $754c: $20 $63

jr_01b_754e:
    ld h, c                                       ; $754e: $61
    ld l, [hl]                                    ; $754f: $6e
    ld bc, $6f68                                  ; $7550: $01 $68 $6f
    ld l, h                                       ; $7553: $6c
    ld h, l                                       ; $7554: $65
    jr nz, jr_01b_75c6                            ; $7555: $20 $6f

    ld [hl], l                                    ; $7557: $75
    ld [hl], h                                    ; $7558: $74
    jr nz, @+$6b                                  ; $7559: $20 $69

    ld l, [hl]                                    ; $755b: $6e

jr_01b_755c:
    jr nz, jr_01b_758f                            ; $755c: $20 $31

    jr nz, jr_01b_75d0                            ; $755e: $20 $70

    ld [hl], l                                    ; $7560: $75
    ld [hl], h                                    ; $7561: $74
    ld [hl], h                                    ; $7562: $74
    ld l, $01                                     ; $7563: $2e $01

jr_01b_7565:
    ld d, a                                       ; $7565: $57

jr_01b_7566:
    ld h, c                                       ; $7566: $61
    ld l, [hl]                                    ; $7567: $6e
    ld [hl], h                                    ; $7568: $74
    jr nz, jr_01b_75df                            ; $7569: $20 $74

    ld l, a                                       ; $756b: $6f
    jr nz, @+$76                                  ; $756c: $20 $74

jr_01b_756e:
    ld [hl], d                                    ; $756e: $72

jr_01b_756f:
    ld a, c                                       ; $756f: $79
    ccf                                           ; $7570: $3f
    nop                                           ; $7571: $00
    ld b, [hl]                                    ; $7572: $46
    ld l, c                                       ; $7573: $69

jr_01b_7574:
    ld [hl], d                                    ; $7574: $72
    ld [hl], e                                    ; $7575: $73
    ld [hl], h                                    ; $7576: $74
    inc l                                         ; $7577: $2c
    jr nz, jr_01b_75ed                            ; $7578: $20 $73

    ld h, l                                       ; $757a: $65
    ld l, h                                       ; $757b: $6c
    ld h, l                                       ; $757c: $65
    ld h, e                                       ; $757d: $63

jr_01b_757e:
    ld [hl], h                                    ; $757e: $74
    ld bc, $6e61                                  ; $757f: $01 $61 $6e
    jr nz, jr_01b_75e5                            ; $7582: $20 $61

    ld [hl], b                                    ; $7584: $70
    ld [hl], b                                    ; $7585: $70
    ld [hl], d                                    ; $7586: $72
    ld l, a                                       ; $7587: $6f
    ld h, c                                       ; $7588: $61
    ld h, e                                       ; $7589: $63
    ld l, b                                       ; $758a: $68
    ld l, $03                                     ; $758b: $2e $03
    nop                                           ; $758d: $00
    ld c, [hl]                                    ; $758e: $4e

jr_01b_758f:
    ld h, l                                       ; $758f: $65
    ld a, b                                       ; $7590: $78
    ld [hl], h                                    ; $7591: $74
    inc l                                         ; $7592: $2c
    jr nz, jr_01b_75f8                            ; $7593: $20 $63

jr_01b_7595:
    ld l, b                                       ; $7595: $68
    ld l, a                                       ; $7596: $6f
    ld l, a                                       ; $7597: $6f
    ld [hl], e                                    ; $7598: $73
    ld h, l                                       ; $7599: $65
    ld bc, $2061                                  ; $759a: $01 $61 $20
    ld h, e                                       ; $759d: $63
    ld l, h                                       ; $759e: $6c
    ld [hl], l                                    ; $759f: $75
    ld h, d                                       ; $75a0: $62
    ld l, $03                                     ; $75a1: $2e $03
    nop                                           ; $75a3: $00
    ld c, a                                       ; $75a4: $4f
    ld c, e                                       ; $75a5: $4b
    ld l, $20                                     ; $75a6: $2e $20
    ld b, a                                       ; $75a8: $47
    ld l, c                                       ; $75a9: $69
    halt                                          ; $75aa: $76
    ld h, l                                       ; $75ab: $65
    jr nz, jr_01b_7617                            ; $75ac: $20 $69

    ld [hl], h                                    ; $75ae: $74
    jr nz, @+$63                                  ; $75af: $20 $61

jr_01b_75b1:
    jr nz, jr_01b_7627                            ; $75b1: $20 $74

    ld [hl], d                                    ; $75b3: $72
    ld a, c                                       ; $75b4: $79
    ld l, $03                                     ; $75b5: $2e $03
    nop                                           ; $75b7: $00
    ld c, c                                       ; $75b8: $49
    ld [hl], h                                    ; $75b9: $74
    daa                                           ; $75ba: $27
    ld [hl], e                                    ; $75bb: $73
    jr nz, jr_01b_761f                            ; $75bc: $20 $61

    jr nz, jr_01b_7632                            ; $75be: $20 $72

    ld h, l                                       ; $75c0: $65
    ld h, c                                       ; $75c1: $61
    ld l, h                                       ; $75c2: $6c
    ld bc, $6564                                  ; $75c3: $01 $64 $65

jr_01b_75c6:
    ld l, h                                       ; $75c6: $6c
    ld l, c                                       ; $75c7: $69
    ld h, e                                       ; $75c8: $63
    ld h, c                                       ; $75c9: $61
    ld [hl], h                                    ; $75ca: $74
    ld h, l                                       ; $75cb: $65
    jr nz, jr_01b_7641                            ; $75cc: $20 $73

    ld l, b                                       ; $75ce: $68
    ld l, a                                       ; $75cf: $6f

jr_01b_75d0:
    ld [hl], h                                    ; $75d0: $74
    inc l                                         ; $75d1: $2c
    ld bc, $6f73                                  ; $75d2: $01 $73 $6f
    jr nz, jr_01b_7642                            ; $75d5: $20 $6b

    ld h, l                                       ; $75d7: $65
    ld h, l                                       ; $75d8: $65
    ld [hl], b                                    ; $75d9: $70
    jr nz, jr_01b_7650                            ; $75da: $20 $74

    ld [hl], d                                    ; $75dc: $72
    ld a, c                                       ; $75dd: $79
    ld l, c                                       ; $75de: $69

jr_01b_75df:
    ld l, [hl]                                    ; $75df: $6e
    ld h, a                                       ; $75e0: $67
    ld l, $03                                     ; $75e1: $2e $03
    nop                                           ; $75e3: $00
    ld c, c                                       ; $75e4: $49

jr_01b_75e5:
    ld [hl], h                                    ; $75e5: $74
    jr nz, jr_01b_764c                            ; $75e6: $20 $64

    ld l, c                                       ; $75e8: $69
    ld h, h                                       ; $75e9: $64
    ld l, [hl]                                    ; $75ea: $6e
    daa                                           ; $75eb: $27
    ld [hl], h                                    ; $75ec: $74

jr_01b_75ed:
    jr nz, @+$79                                  ; $75ed: $20 $77

    ld l, a                                       ; $75ef: $6f
    ld [hl], d                                    ; $75f0: $72
    ld l, e                                       ; $75f1: $6b
    ld bc, $6327                                  ; $75f2: $01 $27 $63
    ld h, c                                       ; $75f5: $61
    ld [hl], l                                    ; $75f6: $75
    ld [hl], e                                    ; $75f7: $73

jr_01b_75f8:
    ld h, l                                       ; $75f8: $65
    jr nz, jr_01b_7674                            ; $75f9: $20 $79

    ld l, a                                       ; $75fb: $6f
    ld [hl], l                                    ; $75fc: $75
    jr nz, jr_01b_7663                            ; $75fd: $20 $64

    ld l, c                                       ; $75ff: $69
    ld h, h                                       ; $7600: $64
    ld l, [hl]                                    ; $7601: $6e
    daa                                           ; $7602: $27
    ld [hl], h                                    ; $7603: $74
    ld bc, $7375                                  ; $7604: $01 $75 $73
    ld h, l                                       ; $7607: $65
    jr nz, @+$64                                  ; $7608: $20 $62

    ld h, c                                       ; $760a: $61
    ld h, e                                       ; $760b: $63
    ld l, e                                       ; $760c: $6b
    ld [hl], e                                    ; $760d: $73
    ld [hl], b                                    ; $760e: $70
    ld l, c                                       ; $760f: $69
    ld l, [hl]                                    ; $7610: $6e
    ld l, $02                                     ; $7611: $2e $02
    ld d, b                                       ; $7613: $50
    ld [hl], d                                    ; $7614: $72
    ld h, c                                       ; $7615: $61
    ld h, e                                       ; $7616: $63

jr_01b_7617:
    ld [hl], h                                    ; $7617: $74
    ld l, c                                       ; $7618: $69
    ld h, e                                       ; $7619: $63
    ld h, l                                       ; $761a: $65
    jr nz, jr_01b_768d                            ; $761b: $20 $70

    ld [hl], l                                    ; $761d: $75
    ld [hl], h                                    ; $761e: $74

jr_01b_761f:
    ld [hl], h                                    ; $761f: $74
    ld l, c                                       ; $7620: $69
    ld l, [hl]                                    ; $7621: $6e
    ld h, a                                       ; $7622: $67
    ld bc, $7073                                  ; $7623: $01 $73 $70
    ld l, c                                       ; $7626: $69

jr_01b_7627:
    ld l, [hl]                                    ; $7627: $6e
    jr nz, jr_01b_7699                            ; $7628: $20 $6f

    ld l, [hl]                                    ; $762a: $6e
    jr nz, jr_01b_76a1                            ; $762b: $20 $74

    ld l, b                                       ; $762d: $68
    ld h, l                                       ; $762e: $65
    jr nz, jr_01b_7693                            ; $762f: $20 $62

    ld h, c                                       ; $7631: $61

jr_01b_7632:
    ld l, h                                       ; $7632: $6c
    ld l, h                                       ; $7633: $6c
    ld l, $03                                     ; $7634: $2e $03
    nop                                           ; $7636: $00
    ld d, a                                       ; $7637: $57
    ld l, a                                       ; $7638: $6f
    ld [hl], a                                    ; $7639: $77
    ld hl, $5920                                  ; $763a: $21 $20 $59
    ld l, a                                       ; $763d: $6f
    ld [hl], l                                    ; $763e: $75
    jr nz, jr_01b_76a5                            ; $763f: $20 $64

jr_01b_7641:
    ld l, c                                       ; $7641: $69

jr_01b_7642:
    ld h, h                                       ; $7642: $64
    jr nz, jr_01b_76ae                            ; $7643: $20 $69

    ld [hl], h                                    ; $7645: $74
    ld hl, $5901                                  ; $7646: $21 $01 $59
    ld l, a                                       ; $7649: $6f
    ld [hl], l                                    ; $764a: $75
    daa                                           ; $764b: $27

jr_01b_764c:
    halt                                          ; $764c: $76
    ld h, l                                       ; $764d: $65
    jr nz, jr_01b_76b7                            ; $764e: $20 $67

jr_01b_7650:
    ld l, a                                       ; $7650: $6f
    ld [hl], h                                    ; $7651: $74
    jr nz, jr_01b_76bd                            ; $7652: $20 $69

    ld [hl], h                                    ; $7654: $74
    ld hl, $0003                                  ; $7655: $21 $03 $00
    ld d, l                                       ; $7658: $55
    ld [hl], e                                    ; $7659: $73
    ld h, l                                       ; $765a: $65
    jr nz, jr_01b_76d1                            ; $765b: $20 $74

    ld l, b                                       ; $765d: $68
    ld h, c                                       ; $765e: $61
    ld [hl], h                                    ; $765f: $74
    jr nz, jr_01b_76d5                            ; $7660: $20 $73

    ld [hl], b                                    ; $7662: $70

jr_01b_7663:
    ld l, a                                       ; $7663: $6f
    ld [hl], h                                    ; $7664: $74
    jr nz, jr_01b_76db                            ; $7665: $20 $74

    ld l, b                                       ; $7667: $68
    ld h, l                                       ; $7668: $65
    ld [hl], d                                    ; $7669: $72
    ld h, l                                       ; $766a: $65
    ld bc, $6f74                                  ; $766b: $01 $74 $6f
    jr nz, jr_01b_76e0                            ; $766e: $20 $70

    ld [hl], d                                    ; $7670: $72
    ld h, c                                       ; $7671: $61
    ld h, e                                       ; $7672: $63
    ld [hl], h                                    ; $7673: $74

jr_01b_7674:
    ld l, c                                       ; $7674: $69
    ld h, e                                       ; $7675: $63
    ld h, l                                       ; $7676: $65
    jr nz, @+$71                                  ; $7677: $20 $6f

    ld l, [hl]                                    ; $7679: $6e
    ld bc, $6f79                                  ; $767a: $01 $79 $6f
    ld [hl], l                                    ; $767d: $75
    ld [hl], d                                    ; $767e: $72
    jr nz, jr_01b_76f0                            ; $767f: $20 $6f

    ld [hl], a                                    ; $7681: $77
    ld l, [hl]                                    ; $7682: $6e
    ld l, $03                                     ; $7683: $2e $03
    nop                                           ; $7685: $00
    ld b, e                                       ; $7686: $43
    ld [hl], l                                    ; $7687: $75
    ld [hl], h                                    ; $7688: $74
    ld [hl], h                                    ; $7689: $74
    ld l, c                                       ; $768a: $69
    ld l, [hl]                                    ; $768b: $6e
    ld h, a                                       ; $768c: $67

jr_01b_768d:
    jr nz, jr_01b_76f0                            ; $768d: $20 $61

    ld h, e                                       ; $768f: $63
    ld [hl], d                                    ; $7690: $72
    ld l, a                                       ; $7691: $6f
    ld [hl], e                                    ; $7692: $73

jr_01b_7693:
    ld [hl], e                                    ; $7693: $73
    jr nz, jr_01b_76f7                            ; $7694: $20 $61

    ld bc, $7473                                  ; $7696: $01 $73 $74

jr_01b_7699:
    ld h, l                                       ; $7699: $65
    ld h, l                                       ; $769a: $65
    ld [hl], b                                    ; $769b: $70
    jr nz, @+$75                                  ; $769c: $20 $73

    ld l, h                                       ; $769e: $6c
    ld l, a                                       ; $769f: $6f
    ld [hl], b                                    ; $76a0: $70

jr_01b_76a1:
    ld h, l                                       ; $76a1: $65
    jr nz, jr_01b_770d                            ; $76a2: $20 $69

    ld [hl], e                                    ; $76a4: $73

jr_01b_76a5:
    jr nz, jr_01b_770f                            ; $76a5: $20 $68

    ld h, c                                       ; $76a7: $61
    ld [hl], d                                    ; $76a8: $72
    ld h, h                                       ; $76a9: $64
    inc l                                         ; $76aa: $2c
    ld bc, $6f64                                  ; $76ab: $01 $64 $6f

jr_01b_76ae:
    ld l, [hl]                                    ; $76ae: $6e
    daa                                           ; $76af: $27
    ld [hl], h                                    ; $76b0: $74
    jr nz, jr_01b_772c                            ; $76b1: $20 $79

    ld h, c                                       ; $76b3: $61
    jr nz, @+$76                                  ; $76b4: $20 $74

    ld l, b                                       ; $76b6: $68

jr_01b_76b7:
    ld l, c                                       ; $76b7: $69
    ld l, [hl]                                    ; $76b8: $6e
    ld l, e                                       ; $76b9: $6b
    ccf                                           ; $76ba: $3f
    nop                                           ; $76bb: $00
    ld c, c                                       ; $76bc: $49

jr_01b_76bd:
    ld [hl], h                                    ; $76bd: $74
    jr nz, jr_01b_7734                            ; $76be: $20 $74

    ld h, c                                       ; $76c0: $61
    ld l, e                                       ; $76c1: $6b
    ld h, l                                       ; $76c2: $65
    ld [hl], e                                    ; $76c3: $73
    jr nz, jr_01b_7727                            ; $76c4: $20 $61

    ld l, [hl]                                    ; $76c6: $6e
    jr nz, jr_01b_772e                            ; $76c7: $20 $65

    ld a, c                                       ; $76c9: $79
    ld h, l                                       ; $76ca: $65
    jr nz, jr_01b_7741                            ; $76cb: $20 $74

    ld l, a                                       ; $76cd: $6f
    ld bc, $6572                                  ; $76ce: $01 $72 $65

jr_01b_76d1:
    ld h, c                                       ; $76d1: $61
    ld h, h                                       ; $76d2: $64
    jr nz, jr_01b_7741                            ; $76d3: $20 $6c

jr_01b_76d5:
    ld l, c                                       ; $76d5: $69
    ld l, [hl]                                    ; $76d6: $6e
    ld h, l                                       ; $76d7: $65
    ld [hl], e                                    ; $76d8: $73
    ld l, $2e                                     ; $76d9: $2e $2e

jr_01b_76db:
    ld l, $01                                     ; $76db: $2e $01
    ld e, c                                       ; $76dd: $59
    ld l, a                                       ; $76de: $6f
    ld [hl], l                                    ; $76df: $75

jr_01b_76e0:
    daa                                           ; $76e0: $27
    halt                                          ; $76e1: $76
    ld h, l                                       ; $76e2: $65
    jr nz, @+$69                                  ; $76e3: $20 $67

    ld l, a                                       ; $76e5: $6f
    ld [hl], h                                    ; $76e6: $74
    jr nz, jr_01b_7752                            ; $76e7: $20 $69

    ld [hl], h                                    ; $76e9: $74
    ld hl, $0003                                  ; $76ea: $21 $03 $00
    ld d, d                                       ; $76ed: $52
    ld h, l                                       ; $76ee: $65
    ld h, c                                       ; $76ef: $61

jr_01b_76f0:
    ld h, h                                       ; $76f0: $64
    ld l, c                                       ; $76f1: $69
    ld l, [hl]                                    ; $76f2: $6e
    ld h, a                                       ; $76f3: $67
    jr nz, jr_01b_776a                            ; $76f4: $20 $74

    ld l, b                                       ; $76f6: $68

jr_01b_76f7:
    ld h, l                                       ; $76f7: $65
    jr nz, jr_01b_775c                            ; $76f8: $20 $62

    ld h, c                                       ; $76fa: $61
    ld l, h                                       ; $76fb: $6c
    ld l, h                                       ; $76fc: $6c
    daa                                           ; $76fd: $27
    ld [hl], e                                    ; $76fe: $73
    ld bc, $696c                                  ; $76ff: $01 $6c $69
    ld l, [hl]                                    ; $7702: $6e
    ld h, l                                       ; $7703: $65
    jr nz, jr_01b_776f                            ; $7704: $20 $69

    ld [hl], e                                    ; $7706: $73
    jr nz, jr_01b_777d                            ; $7707: $20 $74

    ld l, b                                       ; $7709: $68
    ld h, l                                       ; $770a: $65
    jr nz, jr_01b_7778                            ; $770b: $20 $6b

jr_01b_770d:
    ld h, l                                       ; $770d: $65
    ld a, c                                       ; $770e: $79

jr_01b_770f:
    ld bc, $6f74                                  ; $770f: $01 $74 $6f
    jr nz, @+$76                                  ; $7712: $20 $74

    ld l, b                                       ; $7714: $68
    ld h, c                                       ; $7715: $61
    ld [hl], h                                    ; $7716: $74
    jr nz, jr_01b_778c                            ; $7717: $20 $73

    ld l, b                                       ; $7719: $68
    ld l, a                                       ; $771a: $6f
    ld [hl], h                                    ; $771b: $74
    ld l, $03                                     ; $771c: $2e $03
    nop                                           ; $771e: $00
    ld c, b                                       ; $771f: $48
    ld l, c                                       ; $7720: $69
    ld h, a                                       ; $7721: $67
    ld l, b                                       ; $7722: $68
    jr nz, jr_01b_7798                            ; $7723: $20 $73

    ld l, b                                       ; $7725: $68
    ld l, a                                       ; $7726: $6f

jr_01b_7727:
    ld [hl], h                                    ; $7727: $74
    ld [hl], e                                    ; $7728: $73
    jr nz, jr_01b_7799                            ; $7729: $20 $6e

    ld h, l                                       ; $772b: $65

jr_01b_772c:
    ld h, l                                       ; $772c: $65
    ld h, h                                       ; $772d: $64

jr_01b_772e:
    ld bc, $6562                                  ; $772e: $01 $62 $65
    ld [hl], h                                    ; $7731: $74
    ld [hl], h                                    ; $7732: $74
    ld h, l                                       ; $7733: $65

jr_01b_7734:
    ld [hl], d                                    ; $7734: $72
    jr nz, jr_01b_7798                            ; $7735: $20 $61

    ld l, c                                       ; $7737: $69
    ld l, l                                       ; $7738: $6d
    inc l                                         ; $7739: $2c
    jr nz, jr_01b_77af                            ; $773a: $20 $73

    ld l, a                                       ; $773c: $6f
    ld bc, $6874                                  ; $773d: $01 $74 $68
    ld h, l                                       ; $7740: $65

jr_01b_7741:
    ld a, c                                       ; $7741: $79
    daa                                           ; $7742: $27
    ld [hl], d                                    ; $7743: $72
    ld h, l                                       ; $7744: $65
    jr nz, jr_01b_77bb                            ; $7745: $20 $74

    ld l, a                                       ; $7747: $6f
    ld [hl], l                                    ; $7748: $75
    ld h, a                                       ; $7749: $67
    ld l, b                                       ; $774a: $68
    ld l, $02                                     ; $774b: $2e $02
    ld d, e                                       ; $774d: $53
    ld l, a                                       ; $774e: $6f
    inc l                                         ; $774f: $2c
    jr nz, jr_01b_77b5                            ; $7750: $20 $63

jr_01b_7752:
    ld h, c                                       ; $7752: $61
    ld [hl], d                                    ; $7753: $72
    ld [hl], d                                    ; $7754: $72
    ld a, c                                       ; $7755: $79
    jr nz, jr_01b_77c1                            ; $7756: $20 $69

    ld [hl], h                                    ; $7758: $74
    jr nz, jr_01b_77cf                            ; $7759: $20 $74

    ld l, a                                       ; $775b: $6f

jr_01b_775c:
    ld bc, $6874                                  ; $775c: $01 $74 $68
    ld h, l                                       ; $775f: $65
    jr nz, jr_01b_77c9                            ; $7760: $20 $67

    ld [hl], d                                    ; $7762: $72
    ld h, l                                       ; $7763: $65
    ld h, l                                       ; $7764: $65
    ld l, [hl]                                    ; $7765: $6e
    jr nz, jr_01b_77c9                            ; $7766: $20 $61

    ld l, [hl]                                    ; $7768: $6e
    ld h, h                                       ; $7769: $64

jr_01b_776a:
    jr nz, jr_01b_77de                            ; $776a: $20 $72

    ld l, a                                       ; $776c: $6f
    ld l, h                                       ; $776d: $6c
    ld l, h                                       ; $776e: $6c

jr_01b_776f:
    ld bc, $6977                                  ; $776f: $01 $77 $69
    ld [hl], h                                    ; $7772: $74
    ld l, b                                       ; $7773: $68
    jr nz, @+$76                                  ; $7774: $20 $74

    ld l, b                                       ; $7776: $68
    ld h, l                                       ; $7777: $65

jr_01b_7778:
    jr nz, @+$75                                  ; $7778: $20 $73

    ld l, h                                       ; $777a: $6c
    ld l, a                                       ; $777b: $6f
    ld [hl], b                                    ; $777c: $70

jr_01b_777d:
    ld h, l                                       ; $777d: $65
    ld hl, $0003                                  ; $777e: $21 $03 $00
    ld b, [hl]                                    ; $7781: $46
    ld l, c                                       ; $7782: $69
    ld [hl], d                                    ; $7783: $72
    ld [hl], e                                    ; $7784: $73
    ld [hl], h                                    ; $7785: $74
    inc l                                         ; $7786: $2c
    jr nz, jr_01b_77fc                            ; $7787: $20 $73

    ld h, l                                       ; $7789: $65
    ld l, h                                       ; $778a: $6c
    ld h, l                                       ; $778b: $65

jr_01b_778c:
    ld h, e                                       ; $778c: $63
    ld [hl], h                                    ; $778d: $74
    ld bc, $6e61                                  ; $778e: $01 $61 $6e
    jr nz, jr_01b_77f4                            ; $7791: $20 $61

    ld [hl], b                                    ; $7793: $70
    ld [hl], b                                    ; $7794: $70
    ld [hl], d                                    ; $7795: $72
    ld l, a                                       ; $7796: $6f
    ld h, c                                       ; $7797: $61

jr_01b_7798:
    ld h, e                                       ; $7798: $63

jr_01b_7799:
    ld l, b                                       ; $7799: $68
    ld l, $03                                     ; $779a: $2e $03
    nop                                           ; $779c: $00
    ld d, h                                       ; $779d: $54
    ld l, b                                       ; $779e: $68
    ld h, l                                       ; $779f: $65
    ld l, [hl]                                    ; $77a0: $6e
    inc l                                         ; $77a1: $2c
    jr nz, jr_01b_7807                            ; $77a2: $20 $63

    ld l, b                                       ; $77a4: $68
    ld l, a                                       ; $77a5: $6f
    ld l, a                                       ; $77a6: $6f
    ld [hl], e                                    ; $77a7: $73
    ld h, l                                       ; $77a8: $65
    ld bc, $2061                                  ; $77a9: $01 $61 $20
    ld h, e                                       ; $77ac: $63
    ld l, h                                       ; $77ad: $6c
    ld [hl], l                                    ; $77ae: $75

jr_01b_77af:
    ld h, d                                       ; $77af: $62
    ld l, $03                                     ; $77b0: $2e $03
    nop                                           ; $77b2: $00
    ld e, c                                       ; $77b3: $59
    ld l, a                                       ; $77b4: $6f

jr_01b_77b5:
    ld [hl], l                                    ; $77b5: $75
    jr nz, jr_01b_782f                            ; $77b6: $20 $77

    ld h, c                                       ; $77b8: $61
    ld l, [hl]                                    ; $77b9: $6e
    ld [hl], h                                    ; $77ba: $74

jr_01b_77bb:
    jr nz, @+$65                                  ; $77bb: $20 $63

    ld h, c                                       ; $77bd: $61
    ld [hl], d                                    ; $77be: $72
    ld [hl], d                                    ; $77bf: $72
    ld a, c                                       ; $77c0: $79

jr_01b_77c1:
    jr nz, jr_01b_7824                            ; $77c1: $20 $61

    ld l, [hl]                                    ; $77c3: $6e
    ld h, h                                       ; $77c4: $64
    ld bc, $7572                                  ; $77c5: $01 $72 $75
    ld l, [hl]                                    ; $77c8: $6e

jr_01b_77c9:
    jr nz, jr_01b_783f                            ; $77c9: $20 $74

    ld l, a                                       ; $77cb: $6f
    jr nz, @+$64                                  ; $77cc: $20 $62

    ld h, l                                       ; $77ce: $65

jr_01b_77cf:
    jr nz, jr_01b_7832                            ; $77cf: $20 $61

    ld h, d                                       ; $77d1: $62
    ld l, a                                       ; $77d2: $6f
    ld [hl], l                                    ; $77d3: $75
    ld [hl], h                                    ; $77d4: $74
    ld bc, $6874                                  ; $77d5: $01 $74 $68
    ld h, l                                       ; $77d8: $65
    jr nz, jr_01b_784e                            ; $77d9: $20 $73

    ld h, c                                       ; $77db: $61
    ld l, l                                       ; $77dc: $6d
    ld h, l                                       ; $77dd: $65

jr_01b_77de:
    ld l, $02                                     ; $77de: $2e $02
    ld c, c                                       ; $77e0: $49
    jr nz, jr_01b_7857                            ; $77e1: $20 $74

    ld l, b                                       ; $77e3: $68
    ld l, c                                       ; $77e4: $69
    ld l, [hl]                                    ; $77e5: $6e
    ld l, e                                       ; $77e6: $6b
    jr nz, @+$63                                  ; $77e7: $20 $61

    jr nz, @+$37                                  ; $77e9: $20 $35

    ld c, c                                       ; $77eb: $49
    jr nz, @+$79                                  ; $77ec: $20 $77

    ld l, c                                       ; $77ee: $69
    ld [hl], h                                    ; $77ef: $74
    ld l, b                                       ; $77f0: $68
    ld bc, $6f6e                                  ; $77f1: $01 $6e $6f

jr_01b_77f4:
    jr nz, jr_01b_7869                            ; $77f4: $20 $73

    ld [hl], b                                    ; $77f6: $70
    ld l, c                                       ; $77f7: $69
    ld l, [hl]                                    ; $77f8: $6e
    jr nz, jr_01b_786e                            ; $77f9: $20 $73

    ld l, b                                       ; $77fb: $68

jr_01b_77fc:
    ld l, a                                       ; $77fc: $6f
    ld [hl], l                                    ; $77fd: $75
    ld l, h                                       ; $77fe: $6c
    ld h, h                                       ; $77ff: $64
    ld bc, $6f77                                  ; $7800: $01 $77 $6f
    ld [hl], d                                    ; $7803: $72
    ld l, e                                       ; $7804: $6b
    jr nz, jr_01b_787e                            ; $7805: $20 $77

jr_01b_7807:
    ld h, l                                       ; $7807: $65
    ld l, h                                       ; $7808: $6c
    ld l, h                                       ; $7809: $6c
    ld l, $03                                     ; $780a: $2e $03
    nop                                           ; $780c: $00
    ld c, c                                       ; $780d: $49
    jr nz, @+$76                                  ; $780e: $20 $74

    ld l, b                                       ; $7810: $68
    ld l, c                                       ; $7811: $69
    ld l, [hl]                                    ; $7812: $6e
    ld l, e                                       ; $7813: $6b
    jr nz, jr_01b_785f                            ; $7814: $20 $49

    jr nz, @+$65                                  ; $7816: $20 $63

    ld h, c                                       ; $7818: $61
    ld l, [hl]                                    ; $7819: $6e
    jr nz, @+$6f                                  ; $781a: $20 $6d

    ld h, c                                       ; $781c: $61
    ld l, e                                       ; $781d: $6b
    ld h, l                                       ; $781e: $65
    ld bc, $6874                                  ; $781f: $01 $74 $68
    ld h, c                                       ; $7822: $61
    ld [hl], h                                    ; $7823: $74

jr_01b_7824:
    jr nz, jr_01b_7899                            ; $7824: $20 $73

    ld l, h                                       ; $7826: $6c
    ld l, a                                       ; $7827: $6f
    ld [hl], b                                    ; $7828: $70
    ld h, l                                       ; $7829: $65
    jr nz, jr_01b_7895                            ; $782a: $20 $69

    ld l, [hl]                                    ; $782c: $6e
    jr nz, jr_01b_7860                            ; $782d: $20 $31

jr_01b_782f:
    ld bc, $7570                                  ; $782f: $01 $70 $75

jr_01b_7832:
    ld [hl], h                                    ; $7832: $74
    ld [hl], h                                    ; $7833: $74
    ld l, $20                                     ; $7834: $2e $20
    ld d, a                                       ; $7836: $57
    ld h, c                                       ; $7837: $61
    ld l, [hl]                                    ; $7838: $6e
    ld [hl], h                                    ; $7839: $74
    jr nz, @+$76                                  ; $783a: $20 $74

    ld l, a                                       ; $783c: $6f
    jr nz, jr_01b_78b3                            ; $783d: $20 $74

jr_01b_783f:
    ld [hl], d                                    ; $783f: $72
    ld a, c                                       ; $7840: $79
    ccf                                           ; $7841: $3f
    nop                                           ; $7842: $00
    ld b, [hl]                                    ; $7843: $46
    ld l, c                                       ; $7844: $69
    ld [hl], d                                    ; $7845: $72
    ld [hl], e                                    ; $7846: $73
    ld [hl], h                                    ; $7847: $74
    inc l                                         ; $7848: $2c
    jr nz, jr_01b_78ae                            ; $7849: $20 $63

    ld l, b                                       ; $784b: $68
    ld l, a                                       ; $784c: $6f
    ld l, a                                       ; $784d: $6f

jr_01b_784e:
    ld [hl], e                                    ; $784e: $73
    ld h, l                                       ; $784f: $65
    ld bc, $6e61                                  ; $7850: $01 $61 $6e
    jr nz, jr_01b_78b6                            ; $7853: $20 $61

    ld [hl], b                                    ; $7855: $70
    ld [hl], b                                    ; $7856: $70

jr_01b_7857:
    ld [hl], d                                    ; $7857: $72
    ld l, a                                       ; $7858: $6f
    ld h, c                                       ; $7859: $61
    ld h, e                                       ; $785a: $63
    ld l, b                                       ; $785b: $68
    ld l, $03                                     ; $785c: $2e $03
    nop                                           ; $785e: $00

jr_01b_785f:
    ld c, [hl]                                    ; $785f: $4e

jr_01b_7860:
    ld h, l                                       ; $7860: $65
    ld a, b                                       ; $7861: $78
    ld [hl], h                                    ; $7862: $74
    inc l                                         ; $7863: $2c
    jr nz, jr_01b_78c9                            ; $7864: $20 $63

    ld l, b                                       ; $7866: $68
    ld l, a                                       ; $7867: $6f
    ld l, a                                       ; $7868: $6f

jr_01b_7869:
    ld [hl], e                                    ; $7869: $73
    ld h, l                                       ; $786a: $65
    ld bc, $6f79                                  ; $786b: $01 $79 $6f

jr_01b_786e:
    ld [hl], l                                    ; $786e: $75
    ld [hl], d                                    ; $786f: $72
    jr nz, jr_01b_78d5                            ; $7870: $20 $63

    ld l, h                                       ; $7872: $6c
    ld [hl], l                                    ; $7873: $75
    ld h, d                                       ; $7874: $62
    ld l, $03                                     ; $7875: $2e $03
    nop                                           ; $7877: $00
    ld c, a                                       ; $7878: $4f
    ld c, e                                       ; $7879: $4b
    ld l, $20                                     ; $787a: $2e $20
    ld c, b                                       ; $787c: $48
    ld l, c                                       ; $787d: $69

jr_01b_787e:
    ld [hl], h                                    ; $787e: $74
    jr nz, @+$76                                  ; $787f: $20 $74

    ld l, b                                       ; $7881: $68
    ld h, l                                       ; $7882: $65
    jr nz, jr_01b_78e7                            ; $7883: $20 $62

    ld h, c                                       ; $7885: $61
    ld l, h                                       ; $7886: $6c
    ld l, h                                       ; $7887: $6c
    ld l, $03                                     ; $7888: $2e $03
    nop                                           ; $788a: $00
    ld e, c                                       ; $788b: $59
    ld h, l                                       ; $788c: $65
    ld h, c                                       ; $788d: $61
    ld l, b                                       ; $788e: $68
    inc l                                         ; $788f: $2c
    jr nz, jr_01b_78fb                            ; $7890: $20 $69

    ld [hl], h                                    ; $7892: $74
    daa                                           ; $7893: $27
    ld [hl], e                                    ; $7894: $73

jr_01b_7895:
    jr nz, jr_01b_790b                            ; $7895: $20 $74

    ld l, a                                       ; $7897: $6f
    ld [hl], l                                    ; $7898: $75

jr_01b_7899:
    ld h, a                                       ; $7899: $67
    ld l, b                                       ; $789a: $68
    ld l, $01                                     ; $789b: $2e $01
    ld e, c                                       ; $789d: $59
    ld l, a                                       ; $789e: $6f
    ld [hl], l                                    ; $789f: $75
    ld [hl], d                                    ; $78a0: $72
    jr nz, @+$72                                  ; $78a1: $20 $70

    ld l, a                                       ; $78a3: $6f
    ld [hl], a                                    ; $78a4: $77
    ld h, l                                       ; $78a5: $65
    ld [hl], d                                    ; $78a6: $72
    jr nz, jr_01b_790a                            ; $78a7: $20 $61

    ld l, [hl]                                    ; $78a9: $6e
    ld h, h                                       ; $78aa: $64
    jr nz, jr_01b_7921                            ; $78ab: $20 $74

    ld l, b                                       ; $78ad: $68

jr_01b_78ae:
    ld h, l                                       ; $78ae: $65
    ld bc, $696c                                  ; $78af: $01 $6c $69
    ld l, [hl]                                    ; $78b2: $6e

jr_01b_78b3:
    ld h, l                                       ; $78b3: $65
    jr nz, jr_01b_7917                            ; $78b4: $20 $61

jr_01b_78b6:
    ld [hl], d                                    ; $78b6: $72
    ld h, l                                       ; $78b7: $65
    jr nz, jr_01b_7925                            ; $78b8: $20 $6b

    ld h, l                                       ; $78ba: $65
    ld a, c                                       ; $78bb: $79
    ld l, $03                                     ; $78bc: $2e $03
    nop                                           ; $78be: $00
    ld c, b                                       ; $78bf: $48
    ld h, l                                       ; $78c0: $65
    ld a, c                                       ; $78c1: $79
    dec l                                         ; $78c2: $2d
    ld l, b                                       ; $78c3: $68
    ld h, l                                       ; $78c4: $65
    ld a, c                                       ; $78c5: $79
    ld hl, $4e20                                  ; $78c6: $21 $20 $4e

jr_01b_78c9:
    ld l, c                                       ; $78c9: $69
    ld h, e                                       ; $78ca: $63
    ld h, l                                       ; $78cb: $65
    jr nz, jr_01b_7945                            ; $78cc: $20 $77

    ld l, a                                       ; $78ce: $6f
    ld [hl], d                                    ; $78cf: $72
    ld l, e                                       ; $78d0: $6b
    ld hl, $5401                                  ; $78d1: $21 $01 $54
    ld [hl], d                                    ; $78d4: $72

jr_01b_78d5:
    ld a, c                                       ; $78d5: $79
    jr nz, @+$6b                                  ; $78d6: $20 $69

    ld [hl], h                                    ; $78d8: $74
    jr nz, jr_01b_7952                            ; $78d9: $20 $77

    ld l, c                                       ; $78db: $69
    ld [hl], h                                    ; $78dc: $74
    ld l, b                                       ; $78dd: $68
    ld bc, $6f74                                  ; $78de: $01 $74 $6f
    ld [hl], b                                    ; $78e1: $70
    ld [hl], e                                    ; $78e2: $73
    ld [hl], b                                    ; $78e3: $70
    ld l, c                                       ; $78e4: $69
    ld l, [hl]                                    ; $78e5: $6e
    inc l                                         ; $78e6: $2c

jr_01b_78e7:
    jr nz, jr_01b_795d                            ; $78e7: $20 $74

    ld l, a                                       ; $78e9: $6f
    ld l, a                                       ; $78ea: $6f
    ld l, $03                                     ; $78eb: $2e $03
    nop                                           ; $78ed: $00
    ld c, c                                       ; $78ee: $49
    ld h, [hl]                                    ; $78ef: $66
    jr nz, jr_01b_796b                            ; $78f0: $20 $79

    ld l, a                                       ; $78f2: $6f
    ld [hl], l                                    ; $78f3: $75
    jr nz, jr_01b_7959                            ; $78f4: $20 $63

    ld h, c                                       ; $78f6: $61
    ld l, [hl]                                    ; $78f7: $6e
    jr nz, jr_01b_7961                            ; $78f8: $20 $67

    ld h, l                                       ; $78fa: $65

jr_01b_78fb:
    ld [hl], h                                    ; $78fb: $74
    ld bc, $6562                                  ; $78fc: $01 $62 $65
    ld l, h                                       ; $78ff: $6c
    ld l, a                                       ; $7900: $6f
    ld [hl], a                                    ; $7901: $77
    jr nz, jr_01b_7978                            ; $7902: $20 $74

    ld l, b                                       ; $7904: $68
    ld h, l                                       ; $7905: $65
    jr nz, jr_01b_7978                            ; $7906: $20 $70

    ld l, c                                       ; $7908: $69
    ld l, [hl]                                    ; $7909: $6e

jr_01b_790a:
    inc l                                         ; $790a: $2c

jr_01b_790b:
    ld bc, $6874                                  ; $790b: $01 $74 $68
    ld h, c                                       ; $790e: $61
    ld [hl], h                                    ; $790f: $74
    daa                                           ; $7910: $27
    ld [hl], e                                    ; $7911: $73
    jr nz, jr_01b_797b                            ; $7912: $20 $67

    ld [hl], d                                    ; $7914: $72
    ld h, l                                       ; $7915: $65
    ld h, c                                       ; $7916: $61

jr_01b_7917:
    ld [hl], h                                    ; $7917: $74
    ld hl, $0003                                  ; $7918: $21 $03 $00
    ld d, h                                       ; $791b: $54
    ld [hl], d                                    ; $791c: $72
    ld a, c                                       ; $791d: $79
    jr nz, jr_01b_7981                            ; $791e: $20 $61

    ld h, a                                       ; $7920: $67

jr_01b_7921:
    ld h, c                                       ; $7921: $61
    ld l, c                                       ; $7922: $69
    ld l, [hl]                                    ; $7923: $6e
    ccf                                           ; $7924: $3f

jr_01b_7925:
    nop                                           ; $7925: $00
    ld d, a                                       ; $7926: $57
    ld h, c                                       ; $7927: $61
    ld l, [hl]                                    ; $7928: $6e
    ld [hl], h                                    ; $7929: $74
    jr nz, jr_01b_79a0                            ; $792a: $20 $74

    ld l, a                                       ; $792c: $6f
    jr nz, jr_01b_79a3                            ; $792d: $20 $74

    ld [hl], d                                    ; $792f: $72
    ld a, c                                       ; $7930: $79
    jr nz, @+$63                                  ; $7931: $20 $61

    ld h, a                                       ; $7933: $67
    ld h, c                                       ; $7934: $61
    ld l, c                                       ; $7935: $69
    ld l, [hl]                                    ; $7936: $6e
    ccf                                           ; $7937: $3f
    nop                                           ; $7938: $00
    ld d, a                                       ; $7939: $57
    ld h, c                                       ; $793a: $61
    ld l, [hl]                                    ; $793b: $6e
    ld [hl], h                                    ; $793c: $74
    jr nz, jr_01b_79b3                            ; $793d: $20 $74

    ld l, a                                       ; $793f: $6f
    ld bc, $7270                                  ; $7940: $01 $70 $72
    ld h, c                                       ; $7943: $61
    ld h, e                                       ; $7944: $63

jr_01b_7945:
    ld [hl], h                                    ; $7945: $74
    ld l, c                                       ; $7946: $69
    ld h, e                                       ; $7947: $63
    ld h, l                                       ; $7948: $65
    jr nz, jr_01b_79b3                            ; $7949: $20 $68

    ld h, l                                       ; $794b: $65
    ld [hl], d                                    ; $794c: $72
    ld h, l                                       ; $794d: $65
    ccf                                           ; $794e: $3f
    nop                                           ; $794f: $00
    ld c, e                                       ; $7950: $4b
    ld h, l                                       ; $7951: $65

jr_01b_7952:
    ld h, l                                       ; $7952: $65
    ld [hl], b                                    ; $7953: $70
    jr nz, @+$72                                  ; $7954: $20 $70

    ld [hl], d                                    ; $7956: $72
    ld h, c                                       ; $7957: $61
    ld h, e                                       ; $7958: $63

jr_01b_7959:
    ld [hl], h                                    ; $7959: $74
    ld l, c                                       ; $795a: $69
    ld h, e                                       ; $795b: $63
    ld l, c                                       ; $795c: $69

jr_01b_795d:
    ld l, [hl]                                    ; $795d: $6e
    ld h, a                                       ; $795e: $67
    ccf                                           ; $795f: $3f
    nop                                           ; $7960: $00

jr_01b_7961:
    rlca                                          ; $7961: $07
    jr nz, jr_01b_79d5                            ; $7962: $20 $71

    ld [hl], l                                    ; $7964: $75
    ld l, c                                       ; $7965: $69
    ld [hl], h                                    ; $7966: $74
    ld bc, $7270                                  ; $7967: $01 $70 $72
    ld h, c                                       ; $796a: $61

jr_01b_796b:
    ld h, e                                       ; $796b: $63
    ld [hl], h                                    ; $796c: $74
    ld l, c                                       ; $796d: $69
    ld h, e                                       ; $796e: $63
    ld l, c                                       ; $796f: $69
    ld l, [hl]                                    ; $7970: $6e
    ld h, a                                       ; $7971: $67
    ld l, $03                                     ; $7972: $2e $03
    nop                                           ; $7974: $00
    ld c, h                                       ; $7975: $4c
    ld h, l                                       ; $7976: $65
    ld [hl], e                                    ; $7977: $73

jr_01b_7978:
    ld [hl], e                                    ; $7978: $73
    ld l, a                                       ; $7979: $6f
    ld l, [hl]                                    ; $797a: $6e

jr_01b_797b:
    jr nz, @+$65                                  ; $797b: $20 $63

    ld l, b                                       ; $797d: $68
    ld h, c                                       ; $797e: $61
    ld [hl], d                                    ; $797f: $72
    ld h, c                                       ; $7980: $61

jr_01b_7981:
    ld h, e                                       ; $7981: $63
    ld [hl], h                                    ; $7982: $74
    ld h, l                                       ; $7983: $65
    ld [hl], d                                    ; $7984: $72
    ld l, $03                                     ; $7985: $2e $03
    nop                                           ; $7987: $00
    ld b, h                                       ; $7988: $44
    ld l, a                                       ; $7989: $6f
    jr nz, jr_01b_7a05                            ; $798a: $20 $79

    ld l, a                                       ; $798c: $6f
    ld [hl], l                                    ; $798d: $75
    jr nz, jr_01b_79fb                            ; $798e: $20 $6b

    ld l, [hl]                                    ; $7990: $6e
    ld l, a                                       ; $7991: $6f
    ld [hl], a                                    ; $7992: $77
    jr nz, jr_01b_7a0c                            ; $7993: $20 $77

    ld l, b                                       ; $7995: $68
    ld h, c                                       ; $7996: $61
    ld [hl], h                                    ; $7997: $74
    ld bc, $6f79                                  ; $7998: $01 $79 $6f
    ld [hl], l                                    ; $799b: $75
    jr nz, jr_01b_7a0c                            ; $799c: $20 $6e

    ld h, l                                       ; $799e: $65
    ld h, l                                       ; $799f: $65

jr_01b_79a0:
    ld h, h                                       ; $79a0: $64
    jr nz, @+$68                                  ; $79a1: $20 $66

jr_01b_79a3:
    ld l, a                                       ; $79a3: $6f
    ld [hl], d                                    ; $79a4: $72
    jr nz, jr_01b_7a08                            ; $79a5: $20 $61

    ld bc, $6f67                                  ; $79a7: $01 $67 $6f
    ld l, a                                       ; $79aa: $6f
    ld h, h                                       ; $79ab: $64
    jr nz, jr_01b_7a21                            ; $79ac: $20 $73

    ld l, b                                       ; $79ae: $68
    ld l, a                                       ; $79af: $6f
    ld [hl], h                                    ; $79b0: $74
    ccf                                           ; $79b1: $3f
    nop                                           ; $79b2: $00

jr_01b_79b3:
    ld e, c                                       ; $79b3: $59
    ld l, a                                       ; $79b4: $6f
    ld [hl], l                                    ; $79b5: $75
    jr nz, jr_01b_7a20                            ; $79b6: $20 $68

    ld h, c                                       ; $79b8: $61
    halt                                          ; $79b9: $76
    ld h, l                                       ; $79ba: $65
    jr nz, jr_01b_7a31                            ; $79bb: $20 $74

    ld l, a                                       ; $79bd: $6f
    jr nz, jr_01b_7a21                            ; $79be: $20 $61

    ld h, h                                       ; $79c0: $64
    ld l, d                                       ; $79c1: $6a
    ld [hl], l                                    ; $79c2: $75
    ld [hl], e                                    ; $79c3: $73
    ld [hl], h                                    ; $79c4: $74
    ld bc, $6f79                                  ; $79c5: $01 $79 $6f
    ld [hl], l                                    ; $79c8: $75
    ld [hl], d                                    ; $79c9: $72
    jr nz, jr_01b_7a2d                            ; $79ca: $20 $61

    ld l, c                                       ; $79cc: $69
    ld l, l                                       ; $79cd: $6d
    jr nz, jr_01b_7a31                            ; $79ce: $20 $61

    ld h, e                                       ; $79d0: $63
    ld h, e                                       ; $79d1: $63
    ld l, a                                       ; $79d2: $6f
    ld [hl], d                                    ; $79d3: $72
    ld h, h                                       ; $79d4: $64

jr_01b_79d5:
    ld l, c                                       ; $79d5: $69
    ld l, [hl]                                    ; $79d6: $6e
    ld h, a                                       ; $79d7: $67
    jr nz, jr_01b_7a4e                            ; $79d8: $20 $74

    ld l, a                                       ; $79da: $6f
    ld bc, $6874                                  ; $79db: $01 $74 $68
    ld h, l                                       ; $79de: $65
    jr nz, jr_01b_7a43                            ; $79df: $20 $62

    ld h, c                                       ; $79e1: $61
    ld l, h                                       ; $79e2: $6c
    ld l, h                                       ; $79e3: $6c
    daa                                           ; $79e4: $27
    ld [hl], e                                    ; $79e5: $73
    jr nz, jr_01b_7a54                            ; $79e6: $20 $6c

    ld l, c                                       ; $79e8: $69
    ld h, l                                       ; $79e9: $65
    ld l, $03                                     ; $79ea: $2e $03
    nop                                           ; $79ec: $00
    ld b, h                                       ; $79ed: $44
    ld l, c                                       ; $79ee: $69
    ld [hl], e                                    ; $79ef: $73
    ld [hl], h                                    ; $79f0: $74
    ld h, c                                       ; $79f1: $61
    ld l, [hl]                                    ; $79f2: $6e
    ld h, e                                       ; $79f3: $63
    ld h, l                                       ; $79f4: $65
    jr nz, jr_01b_7a60                            ; $79f5: $20 $69

    ld [hl], e                                    ; $79f7: $73
    ld l, [hl]                                    ; $79f8: $6e
    daa                                           ; $79f9: $27
    ld [hl], h                                    ; $79fa: $74

jr_01b_79fb:
    ld bc, $6e65                                  ; $79fb: $01 $65 $6e
    ld l, a                                       ; $79fe: $6f
    ld [hl], l                                    ; $79ff: $75
    ld h, a                                       ; $7a00: $67
    ld l, b                                       ; $7a01: $68
    jr nz, @+$68                                  ; $7a02: $20 $66

    ld l, a                                       ; $7a04: $6f

jr_01b_7a05:
    ld [hl], d                                    ; $7a05: $72
    jr nz, jr_01b_7a69                            ; $7a06: $20 $61

jr_01b_7a08:
    ld bc, $6f67                                  ; $7a08: $01 $67 $6f
    ld l, a                                       ; $7a0b: $6f

jr_01b_7a0c:
    ld h, h                                       ; $7a0c: $64
    jr nz, jr_01b_7a82                            ; $7a0d: $20 $73

    ld l, b                                       ; $7a0f: $68
    ld l, a                                       ; $7a10: $6f
    ld [hl], h                                    ; $7a11: $74
    ld l, $02                                     ; $7a12: $2e $02
    ld b, c                                       ; $7a14: $41
    jr nz, jr_01b_7a87                            ; $7a15: $20 $70

    ld l, h                                       ; $7a17: $6c
    ld h, c                                       ; $7a18: $61
    ld l, [hl]                                    ; $7a19: $6e
    jr nz, @+$71                                  ; $7a1a: $20 $6f

    ld h, [hl]                                    ; $7a1c: $66
    jr nz, jr_01b_7a80                            ; $7a1d: $20 $61

    ld [hl], h                                    ; $7a1f: $74

jr_01b_7a20:
    ld [hl], h                                    ; $7a20: $74

jr_01b_7a21:
    ld h, c                                       ; $7a21: $61
    ld h, e                                       ; $7a22: $63
    ld l, e                                       ; $7a23: $6b
    jr nz, @+$68                                  ; $7a24: $20 $66

    ld l, a                                       ; $7a26: $6f
    ld [hl], d                                    ; $7a27: $72
    ld bc, $6165                                  ; $7a28: $01 $65 $61
    ld h, e                                       ; $7a2b: $63
    ld l, b                                       ; $7a2c: $68

jr_01b_7a2d:
    jr nz, jr_01b_7a97                            ; $7a2d: $20 $68

    ld l, a                                       ; $7a2f: $6f
    ld l, h                                       ; $7a30: $6c

jr_01b_7a31:
    ld h, l                                       ; $7a31: $65
    jr nz, @+$63                                  ; $7a32: $20 $61

    ld l, [hl]                                    ; $7a34: $6e
    ld h, h                                       ; $7a35: $64
    jr nz, @+$69                                  ; $7a36: $20 $67

    ld l, a                                       ; $7a38: $6f
    ld l, a                                       ; $7a39: $6f
    ld h, h                                       ; $7a3a: $64
    ld bc, $6873                                  ; $7a3b: $01 $73 $68
    ld l, a                                       ; $7a3e: $6f
    ld [hl], h                                    ; $7a3f: $74
    ld [hl], e                                    ; $7a40: $73
    jr nz, jr_01b_7aa4                            ; $7a41: $20 $61

jr_01b_7a43:
    ld [hl], d                                    ; $7a43: $72
    ld h, l                                       ; $7a44: $65
    jr nz, jr_01b_7ab2                            ; $7a45: $20 $6b

    ld h, l                                       ; $7a47: $65
    ld a, c                                       ; $7a48: $79
    ld hl, $0003                                  ; $7a49: $21 $03 $00
    ld d, e                                       ; $7a4c: $53
    ld l, a                                       ; $7a4d: $6f

jr_01b_7a4e:
    ld l, l                                       ; $7a4e: $6d
    ld h, l                                       ; $7a4f: $65
    ld [hl], h                                    ; $7a50: $74
    ld l, c                                       ; $7a51: $69
    ld l, l                                       ; $7a52: $6d
    ld h, l                                       ; $7a53: $65

jr_01b_7a54:
    ld [hl], e                                    ; $7a54: $73
    inc l                                         ; $7a55: $2c
    jr nz, jr_01b_7ad1                            ; $7a56: $20 $79

    ld l, a                                       ; $7a58: $6f
    ld [hl], l                                    ; $7a59: $75
    ld bc, $6163                                  ; $7a5a: $01 $63 $61
    ld l, [hl]                                    ; $7a5d: $6e
    daa                                           ; $7a5e: $27
    ld [hl], h                                    ; $7a5f: $74

jr_01b_7a60:
    jr nz, @+$77                                  ; $7a60: $20 $75

    ld [hl], e                                    ; $7a62: $73
    ld h, l                                       ; $7a63: $65
    jr nz, @+$63                                  ; $7a64: $20 $61

    jr nz, jr_01b_7a99                            ; $7a66: $20 $31

    ld d, a                                       ; $7a68: $57

jr_01b_7a69:
    ld bc, $6327                                  ; $7a69: $01 $27 $63
    ld h, c                                       ; $7a6c: $61
    ld [hl], l                                    ; $7a6d: $75
    ld [hl], e                                    ; $7a6e: $73
    ld h, l                                       ; $7a6f: $65
    jr nz, jr_01b_7ae1                            ; $7a70: $20 $6f

    ld h, [hl]                                    ; $7a72: $66
    jr nz, jr_01b_7ae9                            ; $7a73: $20 $74

    ld [hl], d                                    ; $7a75: $72
    ld h, l                                       ; $7a76: $65
    ld h, l                                       ; $7a77: $65
    ld [hl], e                                    ; $7a78: $73
    ld [bc], a                                    ; $7a79: $02
    ld h, c                                       ; $7a7a: $61
    ld l, [hl]                                    ; $7a7b: $6e
    ld h, h                                       ; $7a7c: $64
    jr nz, jr_01b_7ae7                            ; $7a7d: $20 $68

    ld h, c                                       ; $7a7f: $61

jr_01b_7a80:
    ld a, d                                       ; $7a80: $7a
    ld h, c                                       ; $7a81: $61

jr_01b_7a82:
    ld [hl], d                                    ; $7a82: $72
    ld h, h                                       ; $7a83: $64
    ld [hl], e                                    ; $7a84: $73
    ld l, $20                                     ; $7a85: $2e $20

jr_01b_7a87:
    ld e, c                                       ; $7a87: $59
    ld l, a                                       ; $7a88: $6f
    ld [hl], l                                    ; $7a89: $75
    ld bc, $756a                                  ; $7a8a: $01 $6a $75
    ld [hl], e                                    ; $7a8d: $73
    ld [hl], h                                    ; $7a8e: $74
    jr nz, jr_01b_7af9                            ; $7a8f: $20 $68

    ld h, c                                       ; $7a91: $61
    halt                                          ; $7a92: $76
    ld h, l                                       ; $7a93: $65
    jr nz, jr_01b_7b0a                            ; $7a94: $20 $74

    ld l, a                                       ; $7a96: $6f

jr_01b_7a97:
    jr nz, jr_01b_7afd                            ; $7a97: $20 $64

jr_01b_7a99:
    ld l, a                                       ; $7a99: $6f
    jr nz, jr_01b_7b05                            ; $7a9a: $20 $69

    ld [hl], h                                    ; $7a9c: $74
    ld bc, $6977                                  ; $7a9d: $01 $77 $69
    ld [hl], h                                    ; $7aa0: $74
    ld l, b                                       ; $7aa1: $68
    jr nz, jr_01b_7b05                            ; $7aa2: $20 $61

jr_01b_7aa4:
    jr nz, jr_01b_7b19                            ; $7aa4: $20 $73

    ld l, b                                       ; $7aa6: $68
    ld l, a                                       ; $7aa7: $6f
    ld [hl], d                                    ; $7aa8: $72
    ld [hl], h                                    ; $7aa9: $74
    jr nz, jr_01b_7b0f                            ; $7aaa: $20 $63

    ld l, h                                       ; $7aac: $6c
    ld [hl], l                                    ; $7aad: $75
    ld h, d                                       ; $7aae: $62
    ld l, $03                                     ; $7aaf: $2e $03
    nop                                           ; $7ab1: $00

jr_01b_7ab2:
    ld c, c                                       ; $7ab2: $49
    ld [hl], h                                    ; $7ab3: $74
    daa                                           ; $7ab4: $27
    ld [hl], e                                    ; $7ab5: $73
    jr nz, jr_01b_7b19                            ; $7ab6: $20 $61

    jr nz, jr_01b_7b21                            ; $7ab8: $20 $67

    ld l, a                                       ; $7aba: $6f
    ld l, a                                       ; $7abb: $6f
    ld h, h                                       ; $7abc: $64
    jr nz, jr_01b_7b28                            ; $7abd: $20 $69

    ld h, h                                       ; $7abf: $64
    ld h, l                                       ; $7ac0: $65
    ld h, c                                       ; $7ac1: $61
    jr nz, jr_01b_7b38                            ; $7ac2: $20 $74

    ld l, a                                       ; $7ac4: $6f
    ld bc, $656c                                  ; $7ac5: $01 $6c $65
    ld h, c                                       ; $7ac8: $61
    ld [hl], d                                    ; $7ac9: $72
    ld l, [hl]                                    ; $7aca: $6e
    jr nz, jr_01b_7b41                            ; $7acb: $20 $74

    ld h, l                                       ; $7acd: $65
    ld [hl], d                                    ; $7ace: $72
    ld l, l                                       ; $7acf: $6d
    ld [hl], e                                    ; $7ad0: $73

jr_01b_7ad1:
    jr nz, @+$68                                  ; $7ad1: $20 $66

    ld l, a                                       ; $7ad3: $6f
    ld [hl], d                                    ; $7ad4: $72
    ld bc, $6964                                  ; $7ad5: $01 $64 $69
    ld h, [hl]                                    ; $7ad8: $66
    ld h, [hl]                                    ; $7ad9: $66
    ld h, l                                       ; $7ada: $65
    ld [hl], d                                    ; $7adb: $72
    ld h, l                                       ; $7adc: $65
    ld l, [hl]                                    ; $7add: $6e
    ld [hl], h                                    ; $7ade: $74
    jr nz, jr_01b_7b54                            ; $7adf: $20 $73

jr_01b_7ae1:
    ld l, b                                       ; $7ae1: $68
    ld l, a                                       ; $7ae2: $6f
    ld [hl], h                                    ; $7ae3: $74
    ld [hl], e                                    ; $7ae4: $73
    ld l, $02                                     ; $7ae5: $2e $02

jr_01b_7ae7:
    ld b, [hl]                                    ; $7ae7: $46
    ld l, a                                       ; $7ae8: $6f

jr_01b_7ae9:
    ld [hl], d                                    ; $7ae9: $72
    jr nz, @+$63                                  ; $7aea: $20 $61

    jr nz, @+$74                                  ; $7aec: $20 $72

    ld l, c                                       ; $7aee: $69
    ld h, a                                       ; $7aef: $67
    ld l, b                                       ; $7af0: $68
    ld [hl], h                                    ; $7af1: $74
    ld l, c                                       ; $7af2: $69
    ld h, l                                       ; $7af3: $65
    inc l                                         ; $7af4: $2c
    jr nz, jr_01b_7b5a                            ; $7af5: $20 $63

    ld [hl], l                                    ; $7af7: $75
    ld [hl], d                                    ; $7af8: $72

jr_01b_7af9:
    halt                                          ; $7af9: $76
    ld l, c                                       ; $7afa: $69
    ld l, [hl]                                    ; $7afb: $6e
    ld h, a                                       ; $7afc: $67

jr_01b_7afd:
    ld bc, $656c                                  ; $7afd: $01 $6c $65
    ld h, [hl]                                    ; $7b00: $66
    ld [hl], h                                    ; $7b01: $74
    jr nz, jr_01b_7b6d                            ; $7b02: $20 $69

    ld [hl], e                                    ; $7b04: $73

jr_01b_7b05:
    jr nz, jr_01b_7b68                            ; $7b05: $20 $61

    jr nz, @+$6a                                  ; $7b07: $20 $68

    ld l, a                                       ; $7b09: $6f

jr_01b_7b0a:
    ld l, a                                       ; $7b0a: $6f
    ld l, e                                       ; $7b0b: $6b
    inc l                                         ; $7b0c: $2c
    jr nz, jr_01b_7b86                            ; $7b0d: $20 $77

jr_01b_7b0f:
    ld l, b                                       ; $7b0f: $68
    ld l, c                                       ; $7b10: $69
    ld l, h                                       ; $7b11: $6c
    ld h, l                                       ; $7b12: $65
    ld bc, $6972                                  ; $7b13: $01 $72 $69
    ld h, a                                       ; $7b16: $67
    ld l, b                                       ; $7b17: $68
    ld [hl], h                                    ; $7b18: $74

jr_01b_7b19:
    jr nz, jr_01b_7b84                            ; $7b19: $20 $69

    ld [hl], e                                    ; $7b1b: $73
    jr nz, @+$63                                  ; $7b1c: $20 $61

    jr nz, jr_01b_7b93                            ; $7b1e: $20 $73

    ld l, h                                       ; $7b20: $6c

jr_01b_7b21:
    ld l, c                                       ; $7b21: $69
    ld h, e                                       ; $7b22: $63
    ld h, l                                       ; $7b23: $65
    ld l, $03                                     ; $7b24: $2e $03
    nop                                           ; $7b26: $00
    ld e, c                                       ; $7b27: $59

jr_01b_7b28:
    ld l, a                                       ; $7b28: $6f
    ld [hl], l                                    ; $7b29: $75
    jr nz, jr_01b_7ba3                            ; $7b2a: $20 $77

    ld h, c                                       ; $7b2c: $61
    ld l, [hl]                                    ; $7b2d: $6e
    ld [hl], h                                    ; $7b2e: $74
    jr nz, jr_01b_7ba5                            ; $7b2f: $20 $74

    ld l, a                                       ; $7b31: $6f
    jr nz, jr_01b_7b98                            ; $7b32: $20 $64

    ld [hl], d                                    ; $7b34: $72
    ld l, c                                       ; $7b35: $69
    halt                                          ; $7b36: $76
    ld h, l                                       ; $7b37: $65

jr_01b_7b38:
    ld bc, $6874                                  ; $7b38: $01 $74 $68
    ld h, l                                       ; $7b3b: $65
    jr nz, jr_01b_7ba0                            ; $7b3c: $20 $62

    ld h, c                                       ; $7b3e: $61
    ld l, h                                       ; $7b3f: $6c
    ld l, h                                       ; $7b40: $6c

jr_01b_7b41:
    jr nz, jr_01b_7ba9                            ; $7b41: $20 $66

    ld h, c                                       ; $7b43: $61
    ld [hl], d                                    ; $7b44: $72
    ld [hl], h                                    ; $7b45: $74
    ld l, b                                       ; $7b46: $68
    ld h, l                                       ; $7b47: $65
    ld [hl], d                                    ; $7b48: $72
    ccf                                           ; $7b49: $3f
    nop                                           ; $7b4a: $00

    push af                                       ; $7b4b: $f5
    ld a, $00                                     ; $7b4c: $3e $00
    call Call_01b_7b5b                            ; $7b4e: $cd $5b $7b
    pop af                                        ; $7b51: $f1
    ret                                           ; $7b52: $c9


    push af                                       ; $7b53: $f5

jr_01b_7b54:
    ld a, $01                                     ; $7b54: $3e $01
    call Call_01b_7b5b                            ; $7b56: $cd $5b $7b
    pop af                                        ; $7b59: $f1

jr_01b_7b5a:
    ret                                           ; $7b5a: $c9


Call_01b_7b5b:
    push bc                                       ; $7b5b: $c5
    push de                                       ; $7b5c: $d5
    push hl                                       ; $7b5d: $e5
    ld hl, $4004                                  ; $7b5e: $21 $04 $40
    sla e                                         ; $7b61: $cb $23
    rl d                                          ; $7b63: $cb $12
    add hl, de                                    ; $7b65: $19
    ld e, [hl]                                    ; $7b66: $5e
    inc hl                                        ; $7b67: $23

jr_01b_7b68:
    ld d, [hl]                                    ; $7b68: $56
    ld hl, $423e                                  ; $7b69: $21 $3e $42
    add hl, de                                    ; $7b6c: $19

jr_01b_7b6d:
    or a                                          ; $7b6d: $b7
    jr nz, jr_01b_7b78                            ; $7b6e: $20 $08

    ld de, $c600                                  ; $7b70: $11 $00 $c6
    ld bc, $0180                                  ; $7b73: $01 $80 $01
    jr jr_01b_7b7e                                ; $7b76: $18 $06

jr_01b_7b78:
    ld de, $d880                                  ; $7b78: $11 $80 $d8
    ld bc, $0020                                  ; $7b7b: $01 $20 $00

jr_01b_7b7e:
    call Call_000_03d3                            ; $7b7e: $cd $d3 $03
    pop hl                                        ; $7b81: $e1
    pop de                                        ; $7b82: $d1
    pop bc                                        ; $7b83: $c1

jr_01b_7b84:
    ret                                           ; $7b84: $c9


    rst $38                                       ; $7b85: $ff

jr_01b_7b86:
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

jr_01b_7b93:
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff

jr_01b_7b98:
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff

jr_01b_7ba0:
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff

jr_01b_7ba3:
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff

jr_01b_7ba5:
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff

jr_01b_7ba9:
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
